@interface HKOrganDonationAlreadyDonorViewController
- (id)bodyString;
- (id)bottomAnchoredButtons;
- (id)linkButtonTitle;
- (id)titleImage;
- (id)titleString;
- (void)buttonAtIndexTapped:(int64_t)tapped;
- (void)notNowButtonTapped:(id)tapped;
- (void)signupButtonTapped:(id)tapped;
@end

@implementation HKOrganDonationAlreadyDonorViewController

- (id)titleImage
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = HKHealthUIFrameworkBundle();
  v4 = [v2 imageNamed:@"donate_life_logo" inBundle:v3];

  return v4;
}

- (id)titleString
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"OD_REGISTERED_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)bodyString
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"OD_REGISTERED_BODY" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)linkButtonTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"OD_LEARN_MORE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)bottomAnchoredButtons
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"OD_SIGN_UP" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v8[0] = v3;
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:@"OD_NOT_NOW" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v8[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  return v6;
}

- (void)buttonAtIndexTapped:(int64_t)tapped
{
  if (tapped == 1)
  {
    [(HKOrganDonationAlreadyDonorViewController *)self notNowButtonTapped:0];
  }

  else if (!tapped)
  {
    [(HKOrganDonationAlreadyDonorViewController *)self signupButtonTapped:?];
  }
}

- (void)signupButtonTapped:(id)tapped
{
  v8 = objc_alloc_init(HKOrganDonationRegisterViewController);
  medicalIDData = [(HKOrganDonationBaseViewController *)self medicalIDData];
  [(HKOrganDonationRegisterViewController *)v8 setMedicalIDData:medicalIDData];

  completionButtonTitle = [(HKOrganDonationBaseViewController *)self completionButtonTitle];
  [(HKOrganDonationRegisterViewController *)v8 setCompletionButtonTitle:completionButtonTitle];

  registrationCompletionHandler = [(HKOrganDonationBaseViewController *)self registrationCompletionHandler];
  [(HKOrganDonationRegisterViewController *)v8 setRegistrationCompletionHandler:registrationCompletionHandler];

  navigationController = [(HKOrganDonationAlreadyDonorViewController *)self navigationController];
  [navigationController pushViewController:v8 animated:1];
}

- (void)notNowButtonTapped:(id)tapped
{
  registrationCompletionHandler = [(HKOrganDonationBaseViewController *)self registrationCompletionHandler];

  if (registrationCompletionHandler)
  {
    registrationCompletionHandler2 = [(HKOrganDonationBaseViewController *)self registrationCompletionHandler];
    registrationCompletionHandler2[2](registrationCompletionHandler2, 0);
  }

  [(HKOrganDonationAlreadyDonorViewController *)self dismissViewControllerAnimated:1 completion:0];
}

@end