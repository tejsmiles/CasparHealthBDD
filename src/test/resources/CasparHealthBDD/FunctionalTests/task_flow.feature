Feature: Display of Terms and Conditions and Release of Medical Information on first login
	On first Login, users must know the Terms of service.
  

  Scenario: Creating new patient from therapist dashboard, logging in with new credentials and checking terms of service on first login
    Given  Navigate to { page_link }
    And Login with the following user credentials { casparID } and { password }
    When Click “Add patient” and create a new patient
    And Use the login credentials of the patient
    And Logout the user
    And Login as the new patient on the same url like provided in step 1
    Then  TandC and release of medical information page is displayed
