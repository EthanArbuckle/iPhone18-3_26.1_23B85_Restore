@interface HKOrganDonationConfirmationViewController
- (HKOrganDonationConfirmationViewController)initWithRegistrant:(id)a3 medicalIDData:(id)a4 connectionManager:(id)a5;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_createTableFooterView;
- (id)_createTableHeaderView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)confirmSubmissionIfNecessaryWithConfirmHandler:(id)a3 andCancelHandler:(id)a4;
- (void)submitButtonTapped:(id)a3;
- (void)titledBuddyHeaderViewDidTapLinkButton:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HKOrganDonationConfirmationViewController

- (HKOrganDonationConfirmationViewController)initWithRegistrant:(id)a3 medicalIDData:(id)a4 connectionManager:(id)a5
{
  v7 = a3;
  v8 = a5;
  v14.receiver = self;
  v14.super_class = HKOrganDonationConfirmationViewController;
  v9 = [(HKOrganDonationConfirmationViewController *)&v14 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connectionManager, a5);
    v11 = [v7 copy];
    registrant = v10->_registrant;
    v10->_registrant = v11;
  }

  return v10;
}

- (void)viewDidLoad
{
  v33.receiver = self;
  v33.super_class = HKOrganDonationConfirmationViewController;
  [(HKOrganDonationConfirmationViewController *)&v33 viewDidLoad];
  v3 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  bodyFont = self->_bodyFont;
  self->_bodyFont = v3;

  v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  loadingIndicator = self->_loadingIndicator;
  self->_loadingIndicator = v5;

  [(UIActivityIndicatorView *)self->_loadingIndicator setHidesWhenStopped:1];
  v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:self->_loadingIndicator];
  loadingIndicatorBarButtonItem = self->_loadingIndicatorBarButtonItem;
  self->_loadingIndicatorBarButtonItem = v7;

  [(UIBarButtonItem *)self->_loadingIndicatorBarButtonItem setHidden:1];
  v9 = [(HKOrganDonationConfirmationViewController *)self navigationItem];
  [v9 setRightBarButtonItem:self->_loadingIndicatorBarButtonItem];

  v10 = objc_alloc(MEMORY[0x1E69DD020]);
  v11 = [(HKOrganDonationConfirmationViewController *)self view];
  [v11 bounds];
  v12 = [v10 initWithFrame:2 style:?];

  [v12 setAutoresizingMask:18];
  [v12 setDataSource:self];
  [v12 setDelegate:self];
  [(HKOrganDonationConfirmationViewController *)self setTableView:v12];
  v13 = [(HKOrganDonationConfirmationViewController *)self view];
  [v13 addSubview:v12];

  v14 = [(HKOrganDonationConfirmationViewController *)self tableView];
  v15 = [(HKOrganDonationConfirmationViewController *)self _createTableHeaderView];
  [v14 setTableHeaderView:v15];

  v16 = [(HKOrganDonationConfirmationViewController *)self _createTableFooterView];
  footerView = self->_footerView;
  self->_footerView = v16;

  v18 = [(HKOrganDonationConfirmationViewController *)self view];
  [v18 addSubview:self->_footerView];

  v19 = [(UIVisualEffectView *)self->_footerView leadingAnchor];
  v20 = [(HKOrganDonationConfirmationViewController *)self view];
  v21 = [v20 leadingAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  [v22 setActive:1];

  v23 = [(UIVisualEffectView *)self->_footerView trailingAnchor];
  v24 = [(HKOrganDonationConfirmationViewController *)self view];
  v25 = [v24 trailingAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];
  [v26 setActive:1];

  v27 = [(UIVisualEffectView *)self->_footerView bottomAnchor];
  v28 = [(HKOrganDonationConfirmationViewController *)self view];
  v29 = [v28 bottomAnchor];
  v30 = [v27 constraintEqualToAnchor:v29];
  [v30 setActive:1];

  v31 = [(HKOrganDonationRegistrant *)self->_registrant dataEntryItemsValidOnly:1];
  dataEntryItems = self->_dataEntryItems;
  self->_dataEntryItems = v31;
}

- (void)viewDidLayoutSubviews
{
  v16.receiver = self;
  v16.super_class = HKOrganDonationConfirmationViewController;
  [(HKOrganDonationConfirmationViewController *)&v16 viewDidLayoutSubviews];
  v3 = [(HKOrganDonationConfirmationViewController *)self tableView];
  [v3 contentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  [(UIVisualEffectView *)self->_footerView frame];
  Height = CGRectGetHeight(v17);
  v11 = [(HKOrganDonationConfirmationViewController *)self tableView];
  [v11 safeAreaInsets];
  v13 = Height - v12;

  v14 = [(HKOrganDonationConfirmationViewController *)self tableView];
  [v14 setContentInset:{v5, v7, v13, v9}];

  v15 = [(HKOrganDonationConfirmationViewController *)self tableView];
  [v15 setScrollIndicatorInsets:{v5, v7, v13, v9}];
}

- (id)_createTableHeaderView
{
  v3 = [(HKOrganDonationConfirmationViewController *)self view];
  [v3 frame];
  CGRectGetHeight(v21);
  v4 = [(HKOrganDonationConfirmationViewController *)self view];
  UIRoundToViewScale();
  v6 = v5;

  v7 = [(HKOrganDonationConfirmationViewController *)self tableView];
  [v7 frame];
  Width = CGRectGetWidth(v22);

  v9 = [HKTitledBuddyHeaderView alloc];
  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v11 = [v10 localizedStringForKey:@"OD_MORE_ABOUT_PRIVACY_BUTTON" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v12 = [(HKTitledBuddyHeaderView *)v9 initWithTopInset:v11 linkButtonTitle:v6];

  [(HKTitledBuddyHeaderView *)v12 setDelegate:self];
  v13 = [(HKTitledBuddyHeaderView *)v12 widthAnchor];
  v14 = [v13 constraintEqualToConstant:Width];
  [v14 setActive:1];

  v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v16 = [v15 localizedStringForKey:@"OD_YOUR_GIFT_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(HKTitledBuddyHeaderView *)v12 setTitleText:v16];

  v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v18 = [v17 localizedStringForKey:@"OD_YOUR_GIFT_BODY" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(HKTitledBuddyHeaderView *)v12 setBodyText:v18];

  [(HKTitledBuddyHeaderView *)v12 layoutIfNeeded];

  return v12;
}

- (id)_createTableFooterView
{
  v3 = MEMORY[0x1E69DC738];
  v4 = HKHealthKeyColor();
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"OD_COMPLETE_REGISTRATION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v7 = [v3 hk_multiLineRoundRectButtonTintedWithColor:v4 title:v6 target:self action:sel_submitButtonTapped_];

  v8 = [MEMORY[0x1E69DC730] effectWithStyle:1];
  v9 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v8];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [v9 contentView];
  [v10 addSubview:v7];

  v11 = [v7 topAnchor];
  v12 = [v9 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:32.0];
  [v13 setActive:1];

  v14 = [v7 bottomAnchor];
  v15 = [v9 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:-24.0];
  [v16 setActive:1];

  v17 = [v7 centerXAnchor];
  v18 = [v9 centerXAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  [v19 setActive:1];

  return v9;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(HKOrganDonationConfirmationViewController *)self dataEntryItems];
  v7 = [v5 row];

  v8 = [v6 objectAtIndex:v7];

  v9 = [v8 cell];
  [v9 setEditDisabled:1];

  return v9;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  bodyFont = self->_bodyFont;
  IsUsingAccessibilityContentSizeCategory = HKUIApplicationIsUsingAccessibilityContentSizeCategory();
  v6 = 52.0;
  if (IsUsingAccessibilityContentSizeCategory)
  {
    v6 = 60.0;
  }

  [(UIFont *)bodyFont _scaledValueForValue:v6];
  return result;
}

- (void)submitButtonTapped:(id)a3
{
  v4 = a3;
  [v4 setEnabled:0];
  v5 = [(HKOrganDonationConfirmationViewController *)self navigationItem];
  [v5 setHidesBackButton:1 animated:1];

  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__HKOrganDonationConfirmationViewController_submitButtonTapped___block_invoke;
  v11[3] = &unk_1E81B80C0;
  v11[4] = self;
  objc_copyWeak(&v13, &location);
  v6 = v4;
  v12 = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__HKOrganDonationConfirmationViewController_submitButtonTapped___block_invoke_4;
  v8[3] = &unk_1E81B6F28;
  objc_copyWeak(&v10, &location);
  v7 = v6;
  v9 = v7;
  [(HKOrganDonationConfirmationViewController *)self confirmSubmissionIfNecessaryWithConfirmHandler:v11 andCancelHandler:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __64__HKOrganDonationConfirmationViewController_submitButtonTapped___block_invoke(id *a1)
{
  v2 = [a1[4] loadingIndicator];
  [v2 startAnimating];

  v3 = [a1[4] loadingIndicatorBarButtonItem];
  [v3 setHidden:0];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__HKOrganDonationConfirmationViewController_submitButtonTapped___block_invoke_2;
  aBlock[3] = &unk_1E81BA590;
  objc_copyWeak(&v10, a1 + 6);
  v4 = a1[5];
  v5 = a1[4];
  v8 = v4;
  v9 = v5;
  v6 = _Block_copy(aBlock);
  [*(a1[4] + 124) submitRegistrant:*(a1[4] + 125) completion:v6];

  objc_destroyWeak(&v10);
}

void __64__HKOrganDonationConfirmationViewController_submitButtonTapped___block_invoke_2(id *a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    [a1[4] setEnabled:1];
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
      v11 = [v10 localizedStringForKey:@"OD_SIGNUP_FAILURE_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v13 = [v12 localizedStringForKey:@"OD_SIGNUP_FAILURE_BODY" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v14 = [v9 alertControllerWithTitle:v11 message:v13 preferredStyle:1];

      v15 = MEMORY[0x1E69DC648];
      v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v17 = [v16 localizedStringForKey:@"OD_ALERT_OK" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __64__HKOrganDonationConfirmationViewController_submitButtonTapped___block_invoke_3;
      v25[3] = &unk_1E81B6048;
      v25[4] = WeakRetained;
      v18 = [v15 actionWithTitle:v17 style:0 handler:v25];
      [v14 addAction:v18];

      [WeakRetained presentViewController:v14 animated:1 completion:0];
    }

    else
    {
      v19 = [HKOrganDonationThankYouViewController alloc];
      v20 = [a1[5] medicalIDData];
      v21 = [(HKOrganDonationBaseViewController *)v19 initWithMedicalIDData:v20];

      v22 = [a1[5] registrationCompletionHandler];
      [(HKOrganDonationBaseViewController *)v21 setRegistrationCompletionHandler:v22];

      v23 = [a1[5] completionButtonTitle];
      [(HKOrganDonationBaseViewController *)v21 setCompletionButtonTitle:v23];

      v24 = [WeakRetained navigationController];
      [v24 pushViewController:v21 animated:1];
    }
  }
}

void __64__HKOrganDonationConfirmationViewController_submitButtonTapped___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popViewControllerAnimated:1];
}

void __64__HKOrganDonationConfirmationViewController_submitButtonTapped___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained navigationItem];
    [v3 setHidesBackButton:0 animated:1];

    [*(a1 + 32) setEnabled:1];
    WeakRetained = v4;
  }
}

- (void)confirmSubmissionIfNecessaryWithConfirmHandler:(id)a3 andCancelHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[HKOrganDonationConnectionManager registrationSubmissionHostConfiguration]== 2)
  {
    if (v6)
    {
      v6[2](v6);
    }
  }

  else
  {
    v8 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Attention" message:@"This is a test. Proceeding with this registration will send your information to a staging environment preferredStyle:{which will NOT sign you up as an organ donor. To use the production environment instead, please choose the production server from the Health internal setting and relaunch Health.", 1}];
    v9 = MEMORY[0x1E69DC648];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __109__HKOrganDonationConfirmationViewController_confirmSubmissionIfNecessaryWithConfirmHandler_andCancelHandler___block_invoke;
    v18[3] = &unk_1E81B8440;
    v19 = v7;
    v10 = [v9 actionWithTitle:@"Cancel" style:1 handler:v18];
    [v8 addAction:v10];

    v11 = MEMORY[0x1E69DC648];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __109__HKOrganDonationConfirmationViewController_confirmSubmissionIfNecessaryWithConfirmHandler_andCancelHandler___block_invoke_2;
    v16 = &unk_1E81B8440;
    v17 = v6;
    v12 = [v11 actionWithTitle:@"Submit" style:0 handler:&v13];
    [v8 addAction:{v12, v13, v14, v15, v16}];

    [(HKOrganDonationConfirmationViewController *)self presentViewController:v8 animated:1 completion:0];
  }
}

uint64_t __109__HKOrganDonationConfirmationViewController_confirmSubmissionIfNecessaryWithConfirmHandler_andCancelHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __109__HKOrganDonationConfirmationViewController_confirmSubmissionIfNecessaryWithConfirmHandler_andCancelHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)titledBuddyHeaderViewDidTapLinkButton:(id)a3
{
  v6 = objc_alloc_init(HKOrganDonationMoreAboutPrivacyViewController);
  v4 = [[HKNavigationController alloc] initWithRootViewController:v6];
  v5 = [(HKOrganDonationConfirmationViewController *)self navigationController];
  [v5 presentViewController:v4 animated:1 completion:0];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HKOrganDonationConfirmationViewController;
  [(HKOrganDonationConfirmationViewController *)&v12 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(HKOrganDonationConfirmationViewController *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      bodyFont = self->_bodyFont;
      self->_bodyFont = v9;

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __70__HKOrganDonationConfirmationViewController_traitCollectionDidChange___block_invoke;
      block[3] = &unk_1E81B55A8;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __70__HKOrganDonationConfirmationViewController_traitCollectionDidChange___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 reloadData];
}

@end