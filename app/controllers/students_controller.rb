class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    new_student = Student.create(:first_name => params[:first_name])
    new_student.last_name = params[:last_name]
    new_student.save
    redirect_to students_path
  end

end
