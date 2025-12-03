@interface DKInternetWarningViewController
+ (id)advancedDataProtectionConfiguration;
+ (id)standardConfiguration;
- (DKInternetWarningViewController)initWithConfiguration:(id)configuration;
- (id)_createNotableUserDataCardForFindMy:(BOOL)my;
- (void)_continueWithoutInternetTapped:(id)tapped;
- (void)_requireInternetTapped:(id)tapped;
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

- (DKInternetWarningViewController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  imageName = [configurationCopy imageName];

  if (imageName)
  {
    v6 = MEMORY[0x277D755B8];
    imageName2 = [configurationCopy imageName];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    imageName = [v6 imageNamed:imageName2 inBundle:v8 withConfiguration:0];
  }

  title = [configurationCopy title];
  v12.receiver = self;
  v12.super_class = DKInternetWarningViewController;
  v10 = [(DKInternetWarningViewController *)&v12 initWithTitle:title detailText:0 icon:imageName contentLayout:2];

  if (v10)
  {
    [(DKInternetWarningViewController *)v10 setConfiguration:configurationCopy];
  }

  return v10;
}

- (void)viewDidLoad
{
  v59[4] = *MEMORY[0x277D85DE8];
  v58.receiver = self;
  v58.super_class = DKInternetWarningViewController;
  [(OBBaseWelcomeController *)&v58 viewDidLoad];
  configuration = [(DKInternetWarningViewController *)self configuration];
  showNotableUserDataCardForFindMy = [configuration showNotableUserDataCardForFindMy];

  if (showNotableUserDataCardForFindMy)
  {
    v5 = objc_alloc(MEMORY[0x277D75A68]);
    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v9 = *(MEMORY[0x277CBF3A0] + 24);
    configuration3 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], v7, v8, v9}];
    [configuration3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [configuration3 setAxis:1];
    [configuration3 setSpacing:10.0];
    notableUserData = [(DKInternetWarningViewController *)self notableUserData];
    v12 = -[DKInternetWarningViewController _createNotableUserDataCardForFindMy:](self, "_createNotableUserDataCardForFindMy:", [notableUserData findMyEnabled]);
    [configuration3 addArrangedSubview:v12];

    arrangedSubviews = [configuration3 arrangedSubviews];
    lastObject = [arrangedSubviews lastObject];

    [configuration3 setCustomSpacing:lastObject afterView:20.0];
    headerView = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v6, v7, v8, v9}];
    configuration2 = [(DKInternetWarningViewController *)self configuration];
    detail = [configuration2 detail];
    [headerView setText:detail];

    [headerView setTextAlignment:1];
    v17 = MEMORY[0x277D74300];
    v18 = MEMORY[0x277D74310];
    v19 = *MEMORY[0x277D76918];
    traitCollection = [(DKInternetWarningViewController *)self traitCollection];
    v21 = [v18 preferredFontDescriptorWithTextStyle:v19 compatibleWithTraitCollection:traitCollection];
    v22 = [v17 fontWithDescriptor:v21 size:0.0];
    [headerView setFont:v22];

    labelColor = [MEMORY[0x277D75348] labelColor];
    [headerView setTextColor:labelColor];

    [headerView setNumberOfLines:0];
    [configuration3 addArrangedSubview:headerView];
    contentView = [(DKInternetWarningViewController *)self contentView];
    [contentView addSubview:configuration3];

    contentView2 = [(DKInternetWarningViewController *)self contentView];
    contentView3 = [(DKInternetWarningViewController *)self contentView];
    topAnchor = [contentView3 topAnchor];
    topAnchor2 = [configuration3 topAnchor];
    v52 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v59[0] = v52;
    contentView4 = [(DKInternetWarningViewController *)self contentView];
    leadingAnchor = [contentView4 leadingAnchor];
    leadingAnchor2 = [configuration3 leadingAnchor];
    v48 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v59[1] = v48;
    contentView5 = [(DKInternetWarningViewController *)self contentView];
    trailingAnchor = [contentView5 trailingAnchor];
    trailingAnchor2 = [configuration3 trailingAnchor];
    v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v59[2] = v26;
    contentView6 = [(DKInternetWarningViewController *)self contentView];
    bottomAnchor = [contentView6 bottomAnchor];
    bottomAnchor2 = [configuration3 bottomAnchor];
    v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v59[3] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:4];
    [contentView2 addConstraints:v31];

    detail2 = lastObject;
  }

  else
  {
    configuration3 = [(DKInternetWarningViewController *)self configuration];
    detail2 = [configuration3 detail];
    headerView = [(DKInternetWarningViewController *)self headerView];
    [headerView setDetailText:detail2];
  }

  boldButton = [MEMORY[0x277D37618] boldButton];
  configuration4 = [(DKInternetWarningViewController *)self configuration];
  requireInternetButtonTitle = [configuration4 requireInternetButtonTitle];
  [boldButton setTitle:requireInternetButtonTitle forState:0];

  [boldButton addTarget:self action:sel__requireInternetTapped_ forControlEvents:64];
  buttonTray = [(DKInternetWarningViewController *)self buttonTray];
  [buttonTray addButton:boldButton];

  linkButton = [MEMORY[0x277D37650] linkButton];
  configuration5 = [(DKInternetWarningViewController *)self configuration];
  continueWithoutInternetButtonTitle = [configuration5 continueWithoutInternetButtonTitle];
  [linkButton setTitle:continueWithoutInternetButtonTitle forState:0];

  configuration6 = [(DKInternetWarningViewController *)self configuration];
  continueWithoutInternetButtonTintColor = [configuration6 continueWithoutInternetButtonTintColor];

  if (continueWithoutInternetButtonTintColor)
  {
    configuration7 = [(DKInternetWarningViewController *)self configuration];
    continueWithoutInternetButtonTintColor2 = [configuration7 continueWithoutInternetButtonTintColor];
    [linkButton setTintColor:continueWithoutInternetButtonTintColor2];
  }

  [linkButton addTarget:self action:sel__continueWithoutInternetTapped_ forControlEvents:64];
  buttonTray2 = [(DKInternetWarningViewController *)self buttonTray];
  [buttonTray2 addButton:linkButton];

  v45 = *MEMORY[0x277D85DE8];
}

- (void)showBusy
{
  buttonTray = [(DKInternetWarningViewController *)self buttonTray];
  [buttonTray showButtonsBusy];
}

- (void)showAvailable
{
  buttonTray = [(DKInternetWarningViewController *)self buttonTray];
  [buttonTray showButtonsAvailable];
}

- (id)_createNotableUserDataCardForFindMy:(BOOL)my
{
  if (my)
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

- (void)_requireInternetTapped:(id)tapped
{
  requireInternetBlock = [(DKInternetWarningViewController *)self requireInternetBlock];
  requireInternetBlock[2]();
}

- (void)_continueWithoutInternetTapped:(id)tapped
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v5 = [currentDevice userInterfaceIdiom] == 1;

  v6 = MEMORY[0x277D75110];
  configuration = [(DKInternetWarningViewController *)self configuration];
  confirmationTitle = [configuration confirmationTitle];
  v9 = [v6 alertControllerWithTitle:confirmationTitle message:0 preferredStyle:v5];

  v10 = MEMORY[0x277D750F8];
  configuration2 = [(DKInternetWarningViewController *)self configuration];
  confirmationContinueWithoutInternetButtonTitle = [configuration2 confirmationContinueWithoutInternetButtonTitle];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __66__DKInternetWarningViewController__continueWithoutInternetTapped___block_invoke;
  v18[3] = &unk_278F7DBE8;
  v18[4] = self;
  v13 = [v10 actionWithTitle:confirmationContinueWithoutInternetButtonTitle style:2 handler:v18];
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