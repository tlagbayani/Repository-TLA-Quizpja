class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    Player.create(player_params)
    redirect_to root_path
  end


  private

  def player_params
    params.require(:player).permit(:name, :team, :position)
  end

end