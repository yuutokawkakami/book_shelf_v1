class BooksController < ApplicationController
  before_action :set_books, only: [:show, :edit, :update, :destroy]



  def index
    @books = Book.all
  end

  def show

  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to books_path
  end

  def edit

  end

  def update

    @book.update(book_params)
    redirect_to books_path
  end

  def destroy

    @book.destroy
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:name, :price, :publish, :publish_date)
  end

  def set_book
    @book = Book.find(params[:id])
  end

end
