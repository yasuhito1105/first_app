class PostsController < ApplicationController
  def index
    @posts = Post.all 
  end

  def new
    @posts = Post.new
    redirect_to root_path
  end

  def create
    Post.create(memo: params[:memo])
    redirect_to "/posts"
  end
end
