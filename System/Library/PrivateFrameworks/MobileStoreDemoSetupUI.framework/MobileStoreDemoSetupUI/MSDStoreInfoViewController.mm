@interface MSDStoreInfoViewController
- (MSDStoreInfoViewController)initWithStoreInfo:(id)info andDelegate:(id)delegate;
- (id)_boldConfiguration;
- (id)_stackedCancelButton;
- (id)_stackedLabelWithTitle:(id)title andDescription:(id)description;
- (id)_stackedStoreName:(id)name withIcon:(id)icon andIconColor:(id)color;
- (void)_close:(id)_close;
- (void)_confirm:(id)_confirm;
- (void)_showConfirmationAlert;
- (void)_showStoreConfirmationAlertWithCode:(id)code;
- (void)viewDidLoad;
@end

@implementation MSDStoreInfoViewController

- (MSDStoreInfoViewController)initWithStoreInfo:(id)info andDelegate:(id)delegate
{
  infoCopy = info;
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = MSDStoreInfoViewController;
  v8 = [(MSDStoreInfoViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MSDStoreInfoViewController *)v8 setDelegate:delegateCopy];
    [(MSDStoreInfoViewController *)v9 setStoreInfo:infoCopy];
  }

  return v9;
}

- (void)viewDidLoad
{
  v58[4] = *MEMORY[0x277D85DE8];
  v56.receiver = self;
  v56.super_class = MSDStoreInfoViewController;
  [(MSDStoreInfoViewController *)&v56 viewDidLoad];
  navigationItem = [(MSDStoreInfoViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];

  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(MSDStoreInfoViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  v6 = objc_alloc(MEMORY[0x277D75A68]);
  v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setAxis:1];
  [v7 setDistribution:3];
  [v7 setLayoutMargins:{0.0, 20.0, 20.0, 20.0}];
  [v7 setLayoutMarginsRelativeArrangement:1];
  view2 = [(MSDStoreInfoViewController *)self view];
  [view2 addSubview:v7];

  topAnchor = [v7 topAnchor];
  view3 = [(MSDStoreInfoViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v47 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v58[0] = v47;
  bottomAnchor = [v7 bottomAnchor];
  view4 = [(MSDStoreInfoViewController *)self view];
  safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
  v42 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v58[1] = v42;
  leadingAnchor = [v7 leadingAnchor];
  view5 = [(MSDStoreInfoViewController *)self view];
  safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide3 leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v58[2] = v11;
  trailingAnchor = [v7 trailingAnchor];
  view6 = [(MSDStoreInfoViewController *)self view];
  safeAreaLayoutGuide4 = [view6 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide4 trailingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v58[3] = v16;
  v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v55];
  _stackedCancelButton = [(MSDStoreInfoViewController *)self _stackedCancelButton];
  [v7 addArrangedSubview:?];
  storeInfo = [(MSDStoreInfoViewController *)self storeInfo];
  LODWORD(safeAreaLayoutGuide4) = [storeInfo isHQ];

  storeInfo2 = [(MSDStoreInfoViewController *)self storeInfo];
  v19 = storeInfo2;
  if (safeAreaLayoutGuide4)
  {
    companyName = [storeInfo2 companyName];
    v21 = @"building.2.crop.circle.fill";
  }

  else
  {
    companyName = [storeInfo2 storeName];
    v21 = @"mappin.circle.fill";
  }

  v50 = companyName;

  v52 = [MEMORY[0x277D755B8] systemImageNamed:v21];
  systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  v23 = [(MSDStoreInfoViewController *)self _stackedStoreName:companyName withIcon:v52 andIconColor:systemRedColor];
  [v7 addArrangedSubview:v23];
  v24 = [MSDSetupUILocalization localizedStringForKey:@"APPLE_ID_TITLE"];
  storeInfo3 = [(MSDStoreInfoViewController *)self storeInfo];
  appleID = [storeInfo3 appleID];
  v27 = [(MSDStoreInfoViewController *)self _stackedLabelWithTitle:v24 andDescription:appleID];

  [v7 addArrangedSubview:v27];
  v28 = [MSDSetupUILocalization localizedStringForKey:@"ADDRESS_TITLE"];
  storeInfo4 = [(MSDStoreInfoViewController *)self storeInfo];
  fullAddress = [storeInfo4 fullAddress];
  v31 = [(MSDStoreInfoViewController *)self _stackedLabelWithTitle:v28 andDescription:fullAddress];

  [v7 addArrangedSubview:v31];
  v32 = [MEMORY[0x277D75220] buttonWithType:0];
  _boldConfiguration = [(MSDStoreInfoViewController *)self _boldConfiguration];
  [v32 setConfiguration:_boldConfiguration];

  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  [v32 setTintColor:systemBlueColor];

  v35 = [MSDSetupUILocalization localizedStringForKey:@"ASSIGN_TO_STORE_BUTTON"];
  [v32 setTitle:v35 forState:0];

  [v32 addTarget:self action:sel__confirm_ forControlEvents:64];
  heightAnchor = [v32 heightAnchor];
  v37 = [heightAnchor constraintEqualToConstant:50.0];
  v57 = v37;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];

  [MEMORY[0x277CCAAD0] activateConstraints:v38];
  [v7 addArrangedSubview:v32];

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_close:(id)_close
{
  navigationController = [(MSDStoreInfoViewController *)self navigationController];
  v3 = [navigationController popViewControllerAnimated:1];
}

- (void)_confirm:(id)_confirm
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = defaultLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    storeInfo = [(MSDStoreInfoViewController *)self storeInfo];
    appleID = [storeInfo appleID];
    storeInfo2 = [(MSDStoreInfoViewController *)self storeInfo];
    confirmStoreSelection = [storeInfo2 confirmStoreSelection];
    storeInfo3 = [(MSDStoreInfoViewController *)self storeInfo];
    confirmationCode = [storeInfo3 confirmationCode];
    v16 = 138543874;
    v17 = appleID;
    v18 = 1024;
    v19 = confirmStoreSelection;
    v20 = 2112;
    v21 = confirmationCode;
    _os_log_impl(&dword_259BCA000, v4, OS_LOG_TYPE_DEFAULT, "User selected store %{public}@, confirmStoreSelection=%d, confirmationCode=%@", &v16, 0x1Cu);
  }

  storeInfo4 = [(MSDStoreInfoViewController *)self storeInfo];
  confirmStoreSelection2 = [storeInfo4 confirmStoreSelection];

  if (confirmStoreSelection2)
  {
    storeInfo5 = [(MSDStoreInfoViewController *)self storeInfo];
    confirmationCode2 = [storeInfo5 confirmationCode];
    [(MSDStoreInfoViewController *)self _showStoreConfirmationAlertWithCode:confirmationCode2];
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
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [v5 setTintColor:systemGrayColor];

  [v5 addTarget:self action:sel__close_ forControlEvents:64];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 addArrangedSubview:v5];

  return v4;
}

- (id)_stackedStoreName:(id)name withIcon:(id)icon andIconColor:(id)color
{
  v37[2] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277D75A68];
  colorCopy = color;
  iconCopy = icon;
  nameCopy = name;
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
  v18 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:iconCopy];

  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v18 setTintColor:colorCopy];

  [v18 setContentMode:1];
  v19 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v13, v14, v15, v16}];
  [v19 setNumberOfLines:0];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v19 setText:nameCopy];

  v20 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
  [v19 setFont:v20];

  [v17 addArrangedSubview:v18];
  [v17 addArrangedSubview:v19];
  view = [(MSDStoreInfoViewController *)self view];
  [view bounds];
  v23 = v22 * 0.4 / 6.0;

  if (v23 > 60.0)
  {
    v23 = 60.0;
  }

  heightAnchor = [v18 heightAnchor];
  v25 = [heightAnchor constraintEqualToConstant:v23];
  v37[0] = v25;
  widthAnchor = [v18 widthAnchor];
  heightAnchor2 = [v18 heightAnchor];
  v28 = [widthAnchor constraintEqualToAnchor:heightAnchor2 multiplier:1.0];
  v37[1] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];

  [MEMORY[0x277CCAAD0] activateConstraints:v29];
  centerYAnchor = [v19 centerYAnchor];
  centerYAnchor2 = [v18 centerYAnchor];
  v32 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v36 = v32;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];

  [MEMORY[0x277CCAAD0] activateConstraints:v33];
  v34 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_stackedLabelWithTitle:(id)title andDescription:(id)description
{
  v5 = MEMORY[0x277D75A68];
  descriptionCopy = description;
  titleCopy = title;
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
  [v14 setText:titleCopy];

  v15 = [MEMORY[0x277D74300] boldSystemFontOfSize:14.0];
  [v14 setFont:v15];

  v16 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v9, v10, v11, v12}];
  [v16 setNumberOfLines:0];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 setText:descriptionCopy];

  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [v16 setTintColor:systemGrayColor];

  [v16 setAdjustsFontSizeToFitWidth:1];
  [v13 addArrangedSubview:v14];
  [v13 addArrangedSubview:v16];

  return v13;
}

- (id)_boldConfiguration
{
  filledButtonConfiguration = [MEMORY[0x277D75230] filledButtonConfiguration];
  [filledButtonConfiguration setButtonSize:3];
  background = [filledButtonConfiguration background];
  [background setCornerRadius:14.0];

  return filledButtonConfiguration;
}

- (void)_showStoreConfirmationAlertWithCode:(id)code
{
  codeCopy = code;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__MSDStoreInfoViewController__showStoreConfirmationAlertWithCode___block_invoke;
  v6[3] = &unk_2798F1D60;
  v7 = codeCopy;
  selfCopy = self;
  v5 = codeCopy;
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