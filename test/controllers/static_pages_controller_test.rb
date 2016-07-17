require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  # 「Homeページのテスト。GETリクエストをhomeアクションに対して発行 (=送信) せよ。そうすれば、リクエストに対するレスポンスは[成功]になるはず。」
  
  def setup
    @subtitle = "Ruby on Rails Tutorial Sample App"
  end
  
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "#{@subtitle}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | #{@subtitle}"
  end
  
  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | #{@subtitle}"
  end
  
 test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | #{@subtitle}"
  end

end
