@interface HKOrganDonationIntroductionViewController
- (id)bodyString;
- (id)bottomAnchoredButtons;
- (id)linkButtonTitle;
- (id)titleImage;
- (id)titleString;
- (void)alreadyButtonTapped:(id)tapped;
- (void)buttonAtIndexTapped:(int64_t)tapped;
- (void)notNowButtonTapped:(id)tapped;
- (void)setUpRegistrationViewController;
- (void)signupButtonTapped:(id)tapped;
- (void)viewDidLoad;
@end

@implementation HKOrganDonationIntroductionViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HKOrganDonationIntroductionViewController;
  [(HKTitledBuddyViewController *)&v3 viewDidLoad];
  [(HKOrganDonationIntroductionViewController *)self setUpRegistrationViewController];
  [(HKOrganDonationRegisterViewController *)self->_registrationViewController submitOrganDonationFlowImpressionEvent:1];
}

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
  v3 = [v2 localizedStringForKey:@"OD_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)bodyString
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"OD_BODY" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

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
  v10[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"OD_SIGN_UP" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:{@"com.apple.HealthUI", v3}];
  v5 = [v4 localizedStringForKey:@"OD_ALREADY_DONOR" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v10[1] = v5;
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"OD_NOT_NOW" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v10[2] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];

  return v8;
}

- (void)buttonAtIndexTapped:(int64_t)tapped
{
  switch(tapped)
  {
    case 2:
      [(HKOrganDonationIntroductionViewController *)self notNowButtonTapped:0];
      break;
    case 1:
      [(HKOrganDonationIntroductionViewController *)self alreadyButtonTapped:0];
      break;
    case 0:
      [(HKOrganDonationIntroductionViewController *)self signupButtonTapped:?];
      break;
  }
}

- (void)setUpRegistrationViewController
{
  if (!self->_registrationViewController)
  {
    v3 = objc_alloc_init(HKOrganDonationRegisterViewController);
    medicalIDData = [(HKOrganDonationBaseViewController *)self medicalIDData];
    [(HKOrganDonationRegisterViewController *)v3 setMedicalIDData:medicalIDData];

    completionButtonTitle = [(HKOrganDonationBaseViewController *)self completionButtonTitle];
    [(HKOrganDonationRegisterViewController *)v3 setCompletionButtonTitle:completionButtonTitle];

    registrationCompletionHandler = [(HKOrganDonationBaseViewController *)self registrationCompletionHandler];
    [(HKOrganDonationRegisterViewController *)v3 setRegistrationCompletionHandler:registrationCompletionHandler];

    registrationViewController = self->_registrationViewController;
    self->_registrationViewController = v3;
  }
}

- (void)signupButtonTapped:(id)tapped
{
  navigationController = [(HKOrganDonationIntroductionViewController *)self navigationController];
  [navigationController pushViewController:self->_registrationViewController animated:1];
}

- (void)alreadyButtonTapped:(id)tapped
{
  v8 = [(HKOrganDonationBaseViewController *)[HKOrganDonationAlreadyDonorViewController alloc] initWithMedicalIDData:0];
  medicalIDData = [(HKOrganDonationBaseViewController *)self medicalIDData];
  [(HKOrganDonationBaseViewController *)v8 setMedicalIDData:medicalIDData];

  completionButtonTitle = [(HKOrganDonationBaseViewController *)self completionButtonTitle];
  [(HKOrganDonationBaseViewController *)v8 setCompletionButtonTitle:completionButtonTitle];

  registrationCompletionHandler = [(HKOrganDonationBaseViewController *)self registrationCompletionHandler];
  [(HKOrganDonationBaseViewController *)v8 setRegistrationCompletionHandler:registrationCompletionHandler];

  navigationController = [(HKOrganDonationIntroductionViewController *)self navigationController];
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

  [(HKOrganDonationIntroductionViewController *)self dismissViewControllerAnimated:1 completion:0];
}

@end