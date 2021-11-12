Feature: Login functional in linkedin
  As a User
  I want to login to my linkedin account
  So i can see my timeline in linkedin

  #TC_8 Positif case with apple account
  Scenario: login with apple account
    Given user is on login page
    When user click button login dengan apple
         And enter testos as valid appleid
         And user enter password as valid password appleid
         And click button login apple account
    Then user should be able to login with apple accound
         And user should be redirected to their timeline

  #TC_7 Negatif case
  Scenario: login with empty email and password
    Given user is on login page
    When user click button login
    Then user failed to login
         And show alert message

  #TC_6 Negatif case
  Scenario: login with empty email and valid password
    Given user is on login page
    When user enter kagaada98 as valid password
         And user click button login
    Then user failed to login
         And show alert message

  #TC_5 Negatif case
  Scenario: login with valid email and empty password
    Given user is on login page
    When user enter wahyunusantaraazis5@gmail.com as valid email
         And user click button login
    Then user failed to login
         And show alert message

  #TC_4 Negatif case
  Scenario: login with invalid email and password
    Given user is on login page
    When user enter wahyunusantara@gmail.com as invalid email
         And user enter kagaadasamasekali as invalid password
         And user click button login
    Then user failed to login
         And show alert message

  #TC_3 Negatif case
  Scenario: login with invalid email and valid password
    Given user is on login page
    When user enter wahyunusantara@gmail.com as invalid email
         And user enter kagaada98 as valid password
         And user click button login
    Then user failed to login
         And show alert message

  #TC_2 Negatif case
  Scenario: login with valid email and invalid password
    Given user is on login page
    When user enter wahyunusantaraazis5@gmail.com as valid email
         And user enter kagaadasamasekali as invalid password
         And user click button login
    Then user failed to login
         And show alert message

  # TC_1 Positif case
  Scenario: login with valid email and password
    Given user is on login page
    When user enter wahyunusantaraazis5@gmail.com as valid email
         And user enter kagaada98 as valid password
         And user click button login
    Then user should be able to login
         And user should be redirected to their timeline