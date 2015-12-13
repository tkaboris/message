class Listener < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :listeners_speakers, class_name: 'ListenersSpeakers'
  has_many :speakers, through: :listeners_speakers

  validates_presence_of :time_zone
end
