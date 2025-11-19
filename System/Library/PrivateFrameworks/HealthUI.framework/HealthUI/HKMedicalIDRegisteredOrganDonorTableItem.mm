@interface HKMedicalIDRegisteredOrganDonorTableItem
- (HKMedicalIDRegisteredOrganDonorTableItemDelegate)delegate;
- (UIEdgeInsets)separatorInset;
- (id)initInEditMode:(BOOL)a3 organDonationOrganization:(int64_t)a4;
- (id)organizationLogo;
- (id)tableView:(id)a3 cellForRowAtIndex:(int64_t)a4;
- (id)title;
- (id)titleForFooter;
- (void)presentDonateLifeRegistrationSequence;
@end

@implementation HKMedicalIDRegisteredOrganDonorTableItem

- (id)initInEditMode:(BOOL)a3 organDonationOrganization:(int64_t)a4
{
  v5 = a3;
  if (a3)
  {
    [HKMedicalIDRegisteredOrganDonorTableItem initInEditMode:a2 organDonationOrganization:self];
  }

  v8.receiver = self;
  v8.super_class = HKMedicalIDRegisteredOrganDonorTableItem;
  result = [(HKEmergencyCardTableItem *)&v8 initInEditMode:v5];
  if (result)
  {
    *(result + 5) = a4;
  }

  return result;
}

- (id)title
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"OD_REGISTRY" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)organizationLogo
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = HKHealthUIFrameworkBundle();
  v4 = [v2 imageNamed:@"donate_life_logo" inBundle:v3];

  return v4;
}

- (UIEdgeInsets)separatorInset
{
  if (+[HKOrganDonationConnectionManager hasStoredRegistrant](HKOrganDonationConnectionManager, "hasStoredRegistrant") || +[HKOrganDonationConnectionManager shouldShowStoreDemoOrganDonation])
  {
    v7.receiver = self;
    v7.super_class = HKMedicalIDRegisteredOrganDonorTableItem;
    [(HKEmergencyCardTableItem *)&v7 separatorInset];
  }

  else
  {
    v3 = 0.0;
    v4 = 999.0;
    v5 = 0.0;
    v6 = 0.0;
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndex:(int64_t)a4
{
  v5 = a3;
  if (+[HKOrganDonationConnectionManager hasStoredRegistrant](HKOrganDonationConnectionManager, "hasStoredRegistrant") || +[HKOrganDonationConnectionManager shouldShowStoreDemoOrganDonation])
  {
    v6 = +[HKIDRegisteredReviewCell defaultReuseIdentifier];
    v7 = [v5 dequeueReusableCellWithIdentifier:v6];
  }

  else
  {
    v8 = +[HKOrganDonationCallToActionTableViewCell defaultReuseIdentifier];
    v7 = [v5 dequeueReusableCellWithIdentifier:v8];

    v6 = [v7 actionButton];
    [v6 addTarget:self action:sel_presentDonateLifeRegistrationSequence forControlEvents:64];
  }

  return v7;
}

- (void)presentDonateLifeRegistrationSequence
{
  v6 = objc_alloc_init(HKOrganDonationRegisterViewController);
  v3 = [(HKEmergencyCardTableItem *)self data];
  [(HKOrganDonationRegisterViewController *)v6 setMedicalIDData:v3];

  v4 = [[HKNavigationController alloc] initWithRootViewController:v6];
  v5 = [(HKEmergencyCardTableItem *)self owningViewController];
  [v5 presentViewController:v4 animated:1 completion:0];

  [(HKOrganDonationRegisterViewController *)v6 submitOrganDonationFlowImpressionEvent:1];
}

- (id)titleForFooter
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"OD_PERSONAL_INFO_DISCLAIMER" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (HKMedicalIDRegisteredOrganDonorTableItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initInEditMode:(uint64_t)a1 organDonationOrganization:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicalIDRegisteredOrganDonorTableItem.m" lineNumber:33 description:@"HKMedicalIDRegisteredOrganDonorTableItem doesn't support edit mode"];
}

@end