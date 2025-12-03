@interface HKOrganDonationDeleteSuccessViewController
- (id)bodyString;
- (id)bottomAnchoredButtons;
- (id)titleImage;
- (id)titleString;
- (void)buttonAtIndexTapped:(int64_t)tapped;
- (void)viewDidLoad;
@end

@implementation HKOrganDonationDeleteSuccessViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HKOrganDonationDeleteSuccessViewController;
  [(HKTitledBuddyViewController *)&v4 viewDidLoad];
  navigationItem = [(HKOrganDonationDeleteSuccessViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1 animated:0];
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
  v3 = [v2 localizedStringForKey:@"OD_DELETE_SUCCESS_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)bodyString
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"OD_DELETE_SUCCESS_BODY" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)bottomAnchoredButtons
{
  v7[1] = *MEMORY[0x1E69E9840];
  completionButtonTitle = [(HKOrganDonationBaseViewController *)self completionButtonTitle];
  v4 = completionButtonTitle;
  if (!completionButtonTitle)
  {
    v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v4 = [v2 localizedStringForKey:@"OD_DONE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  }

  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  if (!completionButtonTitle)
  {
  }

  return v5;
}

- (void)buttonAtIndexTapped:(int64_t)tapped
{
  registrationCompletionHandler = [(HKOrganDonationBaseViewController *)self registrationCompletionHandler];

  if (registrationCompletionHandler)
  {
    registrationCompletionHandler2 = [(HKOrganDonationBaseViewController *)self registrationCompletionHandler];
    registrationCompletionHandler2[2](registrationCompletionHandler2, 0);
  }

  else
  {
    registrationCompletionHandler2 = [(HKOrganDonationDeleteSuccessViewController *)self navigationController];
    [registrationCompletionHandler2 dismissViewControllerAnimated:1 completion:0];
  }
}

@end