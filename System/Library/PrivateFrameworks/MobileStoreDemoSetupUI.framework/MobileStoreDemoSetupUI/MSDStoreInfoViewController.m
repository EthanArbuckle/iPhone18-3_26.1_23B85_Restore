@interface MSDStoreInfoViewController
- (MSDStoreInfoViewController)initWithStoreInfo:(id)a3 andDelegate:(id)a4;
- (id)_boldConfiguration;
- (id)_stackedCancelButton;
- (id)_stackedLabelWithTitle:(id)a3 andDescription:(id)a4;
- (id)_stackedStoreName:(id)a3 withIcon:(id)a4 andIconColor:(id)a5;
- (void)_close:(id)a3;
- (void)_confirm:(id)a3;
- (void)_showConfirmationAlert;
- (void)_showStoreConfirmationAlertWithCode:(id)a3;
- (void)viewDidLoad;
@end

@implementation MSDStoreInfoViewController

- (MSDStoreInfoViewController)initWithStoreInfo:(id)a3 andDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MSDStoreInfoViewController;
  v8 = [(MSDStoreInfoViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MSDStoreInfoViewController *)v8 setDelegate:v7];
    [(MSDStoreInfoViewController *)v9 setStoreInfo:v6];
  }

  return v9;
}

- (void)viewDidLoad
{
  v58[4] = *MEMORY[0x277D85DE8];
  v56.receiver = self;
  v56.super_class = MSDStoreInfoViewController;
  [(MSDStoreInfoViewController *)&v56 viewDidLoad];
  v3 = [(MSDStoreInfoViewController *)self navigationItem];
  [v3 setHidesBackButton:1];

  v4 = [MEMORY[0x277D75348] systemBackgroundColor];
  v5 = [(MSDStoreInfoViewController *)self view];
  [v5 setBackgroundColor:v4];

  v6 = objc_alloc(MEMORY[0x277D75A68]);
  v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setAxis:1];
  [v7 setDistribution:3];
  [v7 setLayoutMargins:{0.0, 20.0, 20.0, 20.0}];
  [v7 setLayoutMarginsRelativeArrangement:1];
  v8 = [(MSDStoreInfoViewController *)self view];
  [v8 addSubview:v7];

  v51 = [v7 topAnchor];
  v53 = [(MSDStoreInfoViewController *)self view];
  v49 = [v53 safeAreaLayoutGuide];
  v48 = [v49 topAnchor];
  v47 = [v51 constraintEqualToAnchor:v48];
  v58[0] = v47;
  v45 = [v7 bottomAnchor];
  v46 = [(MSDStoreInfoViewController *)self view];
  v44 = [v46 safeAreaLayoutGuide];
  v43 = [v44 bottomAnchor];
  v42 = [v45 constraintEqualToAnchor:v43];
  v58[1] = v42;
  v40 = [v7 leadingAnchor];
  v41 = [(MSDStoreInfoViewController *)self view];
  v9 = [v41 safeAreaLayoutGuide];
  v10 = [v9 leadingAnchor];
  v11 = [v40 constraintEqualToAnchor:v10];
  v58[2] = v11;
  v12 = [v7 trailingAnchor];
  v13 = [(MSDStoreInfoViewController *)self view];
  v14 = [v13 safeAreaLayoutGuide];
  v15 = [v14 trailingAnchor];
  v16 = [v12 constraintEqualToAnchor:v15];
  v58[3] = v16;
  v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v55];
  v54 = [(MSDStoreInfoViewController *)self _stackedCancelButton];
  [v7 addArrangedSubview:?];
  v17 = [(MSDStoreInfoViewController *)self storeInfo];
  LODWORD(v14) = [v17 isHQ];

  v18 = [(MSDStoreInfoViewController *)self storeInfo];
  v19 = v18;
  if (v14)
  {
    v20 = [v18 companyName];
    v21 = @"building.2.crop.circle.fill";
  }

  else
  {
    v20 = [v18 storeName];
    v21 = @"mappin.circle.fill";
  }

  v50 = v20;

  v52 = [MEMORY[0x277D755B8] systemImageNamed:v21];
  v22 = [MEMORY[0x277D75348] systemRedColor];
  v23 = [(MSDStoreInfoViewController *)self _stackedStoreName:v20 withIcon:v52 andIconColor:v22];
  [v7 addArrangedSubview:v23];
  v24 = [MSDSetupUILocalization localizedStringForKey:@"APPLE_ID_TITLE"];
  v25 = [(MSDStoreInfoViewController *)self storeInfo];
  v26 = [v25 appleID];
  v27 = [(MSDStoreInfoViewController *)self _stackedLabelWithTitle:v24 andDescription:v26];

  [v7 addArrangedSubview:v27];
  v28 = [MSDSetupUILocalization localizedStringForKey:@"ADDRESS_TITLE"];
  v29 = [(MSDStoreInfoViewController *)self storeInfo];
  v30 = [v29 fullAddress];
  v31 = [(MSDStoreInfoViewController *)self _stackedLabelWithTitle:v28 andDescription:v30];

  [v7 addArrangedSubview:v31];
  v32 = [MEMORY[0x277D75220] buttonWithType:0];
  v33 = [(MSDStoreInfoViewController *)self _boldConfiguration];
  [v32 setConfiguration:v33];

  v34 = [MEMORY[0x277D75348] systemBlueColor];
  [v32 setTintColor:v34];

  v35 = [MSDSetupUILocalization localizedStringForKey:@"ASSIGN_TO_STORE_BUTTON"];
  [v32 setTitle:v35 forState:0];

  [v32 addTarget:self action:sel__confirm_ forControlEvents:64];
  v36 = [v32 heightAnchor];
  v37 = [v36 constraintEqualToConstant:50.0];
  v57 = v37;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];

  [MEMORY[0x277CCAAD0] activateConstraints:v38];
  [v7 addArrangedSubview:v32];

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_close:(id)a3
{
  v4 = [(MSDStoreInfoViewController *)self navigationController];
  v3 = [v4 popViewControllerAnimated:1];
}

- (void)_confirm:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = defaultLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(MSDStoreInfoViewController *)self storeInfo];
    v6 = [v5 appleID];
    v7 = [(MSDStoreInfoViewController *)self storeInfo];
    v8 = [v7 confirmStoreSelection];
    v9 = [(MSDStoreInfoViewController *)self storeInfo];
    v10 = [v9 confirmationCode];
    v16 = 138543874;
    v17 = v6;
    v18 = 1024;
    v19 = v8;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_259BCA000, v4, OS_LOG_TYPE_DEFAULT, "User selected store %{public}@, confirmStoreSelection=%d, confirmationCode=%@", &v16, 0x1Cu);
  }

  v11 = [(MSDStoreInfoViewController *)self storeInfo];
  v12 = [v11 confirmStoreSelection];

  if (v12)
  {
    v13 = [(MSDStoreInfoViewController *)self storeInfo];
    v14 = [v13 confirmationCode];
    [(MSDStoreInfoViewController *)self _showStoreConfirmationAlertWithCode:v14];
  }

  else
  {
    [(MSDStoreInfoViewController *)self _showConfirmationAlert];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_stackedCancelButton
{
  v3 = objc_alloc(MEMORY[0x277D75A68]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v4 setAxis:1];
  [v4 setAlignment:4];
  [v4 setLayoutMarginsRelativeArrangement:1];
  [v4 setDirectionalLayoutMargins:{15.0, 0.0, 0.0, 0.0}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [MEMORY[0x277D75220] buttonWithType:1];
  v6 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark"];
  [v5 setImage:v6 forState:0];
  v7 = [MEMORY[0x277D75348] systemGrayColor];
  [v5 setTintColor:v7];

  [v5 addTarget:self action:sel__close_ forControlEvents:64];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 addArrangedSubview:v5];

  return v4;
}

- (id)_stackedStoreName:(id)a3 withIcon:(id)a4 andIconColor:(id)a5
{
  v37[2] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277D75A68];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 alloc];
  v13 = *MEMORY[0x277CBF3A0];
  v14 = *(MEMORY[0x277CBF3A0] + 8);
  v15 = *(MEMORY[0x277CBF3A0] + 16);
  v16 = *(MEMORY[0x277CBF3A0] + 24);
  v17 = [v12 initWithFrame:{*MEMORY[0x277CBF3A0], v14, v15, v16}];
  [v17 setAxis:0];
  [v17 setAlignment:1];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v17 setSpacing:10.0];
  v18 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v10];

  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v18 setTintColor:v9];

  [v18 setContentMode:1];
  v19 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v13, v14, v15, v16}];
  [v19 setNumberOfLines:0];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v19 setText:v11];

  v20 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
  [v19 setFont:v20];

  [v17 addArrangedSubview:v18];
  [v17 addArrangedSubview:v19];
  v21 = [(MSDStoreInfoViewController *)self view];
  [v21 bounds];
  v23 = v22 * 0.4 / 6.0;

  if (v23 > 60.0)
  {
    v23 = 60.0;
  }

  v24 = [v18 heightAnchor];
  v25 = [v24 constraintEqualToConstant:v23];
  v37[0] = v25;
  v26 = [v18 widthAnchor];
  v27 = [v18 heightAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 multiplier:1.0];
  v37[1] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];

  [MEMORY[0x277CCAAD0] activateConstraints:v29];
  v30 = [v19 centerYAnchor];
  v31 = [v18 centerYAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];
  v36 = v32;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];

  [MEMORY[0x277CCAAD0] activateConstraints:v33];
  v34 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_stackedLabelWithTitle:(id)a3 andDescription:(id)a4
{
  v5 = MEMORY[0x277D75A68];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v9 = *MEMORY[0x277CBF3A0];
  v10 = *(MEMORY[0x277CBF3A0] + 8);
  v11 = *(MEMORY[0x277CBF3A0] + 16);
  v12 = *(MEMORY[0x277CBF3A0] + 24);
  v13 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], v10, v11, v12}];
  [v13 setAxis:1];
  [v13 setAlignment:1];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v9, v10, v11, v12}];
  [v14 setNumberOfLines:0];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v14 setText:v7];

  v15 = [MEMORY[0x277D74300] boldSystemFontOfSize:14.0];
  [v14 setFont:v15];

  v16 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v9, v10, v11, v12}];
  [v16 setNumberOfLines:0];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 setText:v6];

  v17 = [MEMORY[0x277D75348] systemGrayColor];
  [v16 setTintColor:v17];

  [v16 setAdjustsFontSizeToFitWidth:1];
  [v13 addArrangedSubview:v14];
  [v13 addArrangedSubview:v16];

  return v13;
}

- (id)_boldConfiguration
{
  v2 = [MEMORY[0x277D75230] filledButtonConfiguration];
  [v2 setButtonSize:3];
  v3 = [v2 background];
  [v3 setCornerRadius:14.0];

  return v2;
}

- (void)_showStoreConfirmationAlertWithCode:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__MSDStoreInfoViewController__showStoreConfirmationAlertWithCode___block_invoke;
  v6[3] = &unk_2798F1D60;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __66__MSDStoreInfoViewController__showStoreConfirmationAlertWithCode___block_invoke(uint64_t a1)
{
  v2 = [MSDCodeEntryAlertController alloc];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__MSDStoreInfoViewController__showStoreConfirmationAlertWithCode___block_invoke_2;
  v5[3] = &unk_2798F1D88;
  v3 = *(a1 + 32);
  v5[4] = *(a1 + 40);
  v4 = [(MSDCodeEntryAlertController *)v2 initWithVerificationCode:v3 completion:v5];
  [*(a1 + 40) presentViewController:v4 animated:1 completion:0];
}

void __66__MSDStoreInfoViewController__showStoreConfirmationAlertWithCode___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = [*(a1 + 32) delegate];
    v3 = [*(a1 + 32) storeInfo];
    [v4 didConfirmStoreAssignment:v3];
  }
}

- (void)_showConfirmationAlert
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__MSDStoreInfoViewController__showConfirmationAlert__block_invoke;
  block[3] = &unk_2798F1C48;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __52__MSDStoreInfoViewController__showConfirmationAlert__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) storeInfo];
  v3 = [v2 isHQ];

  v4 = [*(a1 + 32) storeInfo];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 companyName];
    v7 = @"ASSIGN_TO_COMPANY_TITLE";
  }

  else
  {
    v6 = [v4 storeName];
    v7 = @"ASSIGN_TO_STORE_TITLE";
  }

  v8 = [MSDSetupUILocalization localizedStringForKey:v7 withStringArgument:v6];

  v9 = [MSDSetupUILocalization localizedStringForKey:@"ASSIGN_TO_STORE_BUTTON"];
  v10 = [MSDSetupUILocalization localizedStringForKey:@"CANCEL_OPTION"];
  v11 = [MEMORY[0x277D75110] alertControllerWithTitle:v8 message:0 preferredStyle:1];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__MSDStoreInfoViewController__showConfirmationAlert__block_invoke_2;
  v14[3] = &unk_2798F1D10;
  v14[4] = *(a1 + 32);
  v12 = [MEMORY[0x277D750F8] actionWithTitle:v9 style:0 handler:v14];
  v13 = [MEMORY[0x277D750F8] actionWithTitle:v10 style:1 handler:0];
  [v11 addAction:v12];
  [v11 addAction:v13];
  [*(a1 + 32) presentViewController:v11 animated:1 completion:0];
}

void __52__MSDStoreInfoViewController__showConfirmationAlert__block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 32) storeInfo];
  [v3 didConfirmStoreAssignment:v2];
}

@end