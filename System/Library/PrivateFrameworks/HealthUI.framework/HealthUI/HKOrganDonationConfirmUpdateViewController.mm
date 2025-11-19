@interface HKOrganDonationConfirmUpdateViewController
- (HKOrganDonationConfirmUpdateViewController)initWithRegistrant:(id)a3 medicalIDData:(id)a4 connectionManager:(id)a5;
- (id)bodyString;
- (id)bottomAnchoredButtons;
- (id)titleImage;
- (id)titleString;
- (void)buttonAtIndexTapped:(int64_t)a3;
- (void)updateButtonTapped:(id)a3;
@end

@implementation HKOrganDonationConfirmUpdateViewController

- (HKOrganDonationConfirmUpdateViewController)initWithRegistrant:(id)a3 medicalIDData:(id)a4 connectionManager:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HKOrganDonationConfirmUpdateViewController;
  v11 = [(HKOrganDonationBaseViewController *)&v14 initWithMedicalIDData:a4];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_connectionManager, a5);
    objc_storeStrong(&v12->_registrant, a3);
  }

  return v12;
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
  v3 = [v2 localizedStringForKey:@"OD_UPDATE_CONFIRMATION_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)bodyString
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"OD_UPDATE_CONFIRMATION_BODY" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)bottomAnchoredButtons
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"OD_UPDATE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (void)buttonAtIndexTapped:(int64_t)a3
{
  if (!a3)
  {
    [(HKOrganDonationConfirmUpdateViewController *)self updateButtonTapped:?];
  }
}

- (void)updateButtonTapped:(id)a3
{
  v4 = a3;
  [v4 setEnabled:0];
  v5 = [(HKOrganDonationConfirmUpdateViewController *)self navigationItem];
  [v5 setHidesBackButton:1 animated:1];

  v6 = [(HKTitledBuddyViewController *)self loadingIndicator];
  [v6 startAnimating];

  v7 = [(HKTitledBuddyViewController *)self loadingIndicatorBarButtonItem];
  [v7 setHidden:0];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__HKOrganDonationConfirmUpdateViewController_updateButtonTapped___block_invoke;
  aBlock[3] = &unk_1E81B6070;
  objc_copyWeak(&v14, &location);
  v8 = v4;
  v13 = v8;
  v9 = _Block_copy(aBlock);
  connectionManager = self->_connectionManager;
  v11 = [(HKOrganDonationRegistrant *)self->_registrant jsonDictionaryRepresentation];
  [(HKOrganDonationConnectionManager *)connectionManager updateRegistrantWithParams:v11 completion:v9];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __65__HKOrganDonationConfirmUpdateViewController_updateButtonTapped___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) setEnabled:1];
    v6 = [WeakRetained navigationItem];
    [v6 setHidesBackButton:0 animated:1];

    v7 = [WeakRetained loadingIndicator];
    [v7 stopAnimating];

    v8 = [WeakRetained loadingIndicatorBarButtonItem];
    [v8 setHidden:1];

    if (a3)
    {
      v9 = MEMORY[0x1E69DC650];
      v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v11 = [v10 localizedStringForKey:@"OD_GENERIC_FAILURE_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v13 = [v12 localizedStringForKey:@"OD_GENERIC_FAILURE_BODY" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v14 = [v9 alertControllerWithTitle:v11 message:v13 preferredStyle:1];

      v15 = MEMORY[0x1E69DC648];
      v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v17 = [v16 localizedStringForKey:@"OD_ALERT_OK" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __65__HKOrganDonationConfirmUpdateViewController_updateButtonTapped___block_invoke_2;
      v24[3] = &unk_1E81B6048;
      v24[4] = WeakRetained;
      v18 = [v15 actionWithTitle:v17 style:0 handler:v24];
      [(HKOrganDonationUpdateSuccessViewController *)v14 addAction:v18];

      [WeakRetained presentViewController:v14 animated:1 completion:0];
    }

    else
    {
      v19 = [HKOrganDonationUpdateSuccessViewController alloc];
      v20 = [WeakRetained medicalIDData];
      v14 = [(HKOrganDonationBaseViewController *)v19 initWithMedicalIDData:v20];

      v21 = [WeakRetained registrationCompletionHandler];
      [(HKOrganDonationBaseViewController *)v14 setRegistrationCompletionHandler:v21];

      v22 = [WeakRetained completionButtonTitle];
      [(HKOrganDonationBaseViewController *)v14 setCompletionButtonTitle:v22];

      v23 = [WeakRetained navigationController];
      [v23 pushViewController:v14 animated:1];
    }
  }
}

void __65__HKOrganDonationConfirmUpdateViewController_updateButtonTapped___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popViewControllerAnimated:1];
}

@end