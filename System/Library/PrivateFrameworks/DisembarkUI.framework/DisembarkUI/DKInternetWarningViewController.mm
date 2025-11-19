@interface DKInternetWarningViewController
+ (id)advancedDataProtectionConfiguration;
+ (id)standardConfiguration;
- (DKInternetWarningViewController)initWithConfiguration:(id)a3;
- (id)_createNotableUserDataCardForFindMy:(BOOL)a3;
- (void)_continueWithoutInternetTapped:(id)a3;
- (void)_requireInternetTapped:(id)a3;
- (void)showAvailable;
- (void)showBusy;
- (void)viewDidLoad;
@end

@implementation DKInternetWarningViewController

+ (id)standardConfiguration
{
  v2 = objc_alloc_init(DKInternetWarningStandardConfiguration);

  return v2;
}

+ (id)advancedDataProtectionConfiguration
{
  v2 = objc_alloc_init(DKInternetWarningAdvancedDataProtectionConfiguration);

  return v2;
}

- (DKInternetWarningViewController)initWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 imageName];

  if (v5)
  {
    v6 = MEMORY[0x277D755B8];
    v7 = [v4 imageName];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v6 imageNamed:v7 inBundle:v8 withConfiguration:0];
  }

  v9 = [v4 title];
  v12.receiver = self;
  v12.super_class = DKInternetWarningViewController;
  v10 = [(DKInternetWarningViewController *)&v12 initWithTitle:v9 detailText:0 icon:v5 contentLayout:2];

  if (v10)
  {
    [(DKInternetWarningViewController *)v10 setConfiguration:v4];
  }

  return v10;
}

- (void)viewDidLoad
{
  v59[4] = *MEMORY[0x277D85DE8];
  v58.receiver = self;
  v58.super_class = DKInternetWarningViewController;
  [(OBBaseWelcomeController *)&v58 viewDidLoad];
  v3 = [(DKInternetWarningViewController *)self configuration];
  v4 = [v3 showNotableUserDataCardForFindMy];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D75A68]);
    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v9 = *(MEMORY[0x277CBF3A0] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], v7, v8, v9}];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setAxis:1];
    [v10 setSpacing:10.0];
    v11 = [(DKInternetWarningViewController *)self notableUserData];
    v12 = -[DKInternetWarningViewController _createNotableUserDataCardForFindMy:](self, "_createNotableUserDataCardForFindMy:", [v11 findMyEnabled]);
    [v10 addArrangedSubview:v12];

    v13 = [v10 arrangedSubviews];
    v56 = [v13 lastObject];

    [v10 setCustomSpacing:v56 afterView:20.0];
    v14 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v6, v7, v8, v9}];
    v15 = [(DKInternetWarningViewController *)self configuration];
    v16 = [v15 detail];
    [v14 setText:v16];

    [v14 setTextAlignment:1];
    v17 = MEMORY[0x277D74300];
    v18 = MEMORY[0x277D74310];
    v19 = *MEMORY[0x277D76918];
    v20 = [(DKInternetWarningViewController *)self traitCollection];
    v21 = [v18 preferredFontDescriptorWithTextStyle:v19 compatibleWithTraitCollection:v20];
    v22 = [v17 fontWithDescriptor:v21 size:0.0];
    [v14 setFont:v22];

    v23 = [MEMORY[0x277D75348] labelColor];
    [v14 setTextColor:v23];

    [v14 setNumberOfLines:0];
    [v10 addArrangedSubview:v14];
    v24 = [(DKInternetWarningViewController *)self contentView];
    [v24 addSubview:v10];

    v57 = [(DKInternetWarningViewController *)self contentView];
    v55 = [(DKInternetWarningViewController *)self contentView];
    v54 = [v55 topAnchor];
    v53 = [v10 topAnchor];
    v52 = [v54 constraintEqualToAnchor:v53];
    v59[0] = v52;
    v51 = [(DKInternetWarningViewController *)self contentView];
    v50 = [v51 leadingAnchor];
    v49 = [v10 leadingAnchor];
    v48 = [v50 constraintEqualToAnchor:v49];
    v59[1] = v48;
    v47 = [(DKInternetWarningViewController *)self contentView];
    v46 = [v47 trailingAnchor];
    v25 = [v10 trailingAnchor];
    v26 = [v46 constraintEqualToAnchor:v25];
    v59[2] = v26;
    v27 = [(DKInternetWarningViewController *)self contentView];
    v28 = [v27 bottomAnchor];
    v29 = [v10 bottomAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    v59[3] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:4];
    [v57 addConstraints:v31];

    v32 = v56;
  }

  else
  {
    v10 = [(DKInternetWarningViewController *)self configuration];
    v32 = [v10 detail];
    v14 = [(DKInternetWarningViewController *)self headerView];
    [v14 setDetailText:v32];
  }

  v33 = [MEMORY[0x277D37618] boldButton];
  v34 = [(DKInternetWarningViewController *)self configuration];
  v35 = [v34 requireInternetButtonTitle];
  [v33 setTitle:v35 forState:0];

  [v33 addTarget:self action:sel__requireInternetTapped_ forControlEvents:64];
  v36 = [(DKInternetWarningViewController *)self buttonTray];
  [v36 addButton:v33];

  v37 = [MEMORY[0x277D37650] linkButton];
  v38 = [(DKInternetWarningViewController *)self configuration];
  v39 = [v38 continueWithoutInternetButtonTitle];
  [v37 setTitle:v39 forState:0];

  v40 = [(DKInternetWarningViewController *)self configuration];
  v41 = [v40 continueWithoutInternetButtonTintColor];

  if (v41)
  {
    v42 = [(DKInternetWarningViewController *)self configuration];
    v43 = [v42 continueWithoutInternetButtonTintColor];
    [v37 setTintColor:v43];
  }

  [v37 addTarget:self action:sel__continueWithoutInternetTapped_ forControlEvents:64];
  v44 = [(DKInternetWarningViewController *)self buttonTray];
  [v44 addButton:v37];

  v45 = *MEMORY[0x277D85DE8];
}

- (void)showBusy
{
  v2 = [(DKInternetWarningViewController *)self buttonTray];
  [v2 showButtonsBusy];
}

- (void)showAvailable
{
  v2 = [(DKInternetWarningViewController *)self buttonTray];
  [v2 showButtonsAvailable];
}

- (id)_createNotableUserDataCardForFindMy:(BOOL)a3
{
  if (a3)
  {
    v3 = [DKNotableUserDataCardView alloc];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"FIND_MY" value:&stru_285BC2A70 table:@"Localizable"];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"ACTIVATION_LOCK" value:&stru_285BC2A70 table:@"Localizable"];
    v8 = [MEMORY[0x277D755B8] _systemImageNamed:@"findmy"];
    v9 = [(DKNotableUserDataCardView *)v3 initWithTitle:v5 subtitle:v7 icon:v8];

    v10 = [DKNotableUserDataCardCell alloc];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"FIND_MY_DESCRIPTION" value:&stru_285BC2A70 table:@"Localizable"];
    v13 = [(DKNotableUserDataCardCell *)v10 initWithTitle:0 subtitle:v12 accessoryView:0];

    [(DKNotableUserDataCardView *)v9 addCardCell:v13];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_requireInternetTapped:(id)a3
{
  v3 = [(DKInternetWarningViewController *)self requireInternetBlock];
  v3[2]();
}

- (void)_continueWithoutInternetTapped:(id)a3
{
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom] == 1;

  v6 = MEMORY[0x277D75110];
  v7 = [(DKInternetWarningViewController *)self configuration];
  v8 = [v7 confirmationTitle];
  v9 = [v6 alertControllerWithTitle:v8 message:0 preferredStyle:v5];

  v10 = MEMORY[0x277D750F8];
  v11 = [(DKInternetWarningViewController *)self configuration];
  v12 = [v11 confirmationContinueWithoutInternetButtonTitle];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __66__DKInternetWarningViewController__continueWithoutInternetTapped___block_invoke;
  v18[3] = &unk_278F7DBE8;
  v18[4] = self;
  v13 = [v10 actionWithTitle:v12 style:2 handler:v18];
  [v9 addAction:v13];

  v14 = MEMORY[0x277D750F8];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"CANCEL" value:&stru_285BC2A70 table:@"Localizable"];
  v17 = [v14 actionWithTitle:v16 style:1 handler:0];
  [v9 addAction:v17];

  [(DKInternetWarningViewController *)self presentViewController:v9 animated:1 completion:0];
}

void __66__DKInternetWarningViewController__continueWithoutInternetTapped___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) continueWithoutInternetBlock];
  v1[2]();
}

@end