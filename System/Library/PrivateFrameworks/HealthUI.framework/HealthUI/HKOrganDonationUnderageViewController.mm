@interface HKOrganDonationUnderageViewController
- (id)bodyString;
- (id)bottomAnchoredButtons;
- (id)titleString;
- (void)buttonAtIndexTapped:(int64_t)a3;
@end

@implementation HKOrganDonationUnderageViewController

- (id)titleString
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"OD_UNDER_EIGHTEEN_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)bodyString
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"OD_UNDER_EIGHTEEN_BODY" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)bottomAnchoredButtons
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = [(HKOrganDonationBaseViewController *)self completionButtonTitle];
  v4 = v3;
  if (!v3)
  {
    v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v4 = [v2 localizedStringForKey:@"OD_DONE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  }

  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  if (!v3)
  {
  }

  return v5;
}

- (void)buttonAtIndexTapped:(int64_t)a3
{
  v4 = [(HKOrganDonationBaseViewController *)self registrationCompletionHandler];

  if (v4)
  {
    v5 = [(HKOrganDonationBaseViewController *)self registrationCompletionHandler];
    v5[2](v5, 0);
  }

  v6 = [(HKOrganDonationUnderageViewController *)self navigationController];
  [v6 dismissViewControllerAnimated:1 completion:0];
}

@end