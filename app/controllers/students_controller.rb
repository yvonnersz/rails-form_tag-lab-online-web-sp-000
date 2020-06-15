class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    Student.create(params)
    redirect_to students_path
  end

  def new
  end

end
