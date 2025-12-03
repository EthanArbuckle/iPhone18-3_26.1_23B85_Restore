@interface HUHomeTheaterSetupViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUHomeTheaterAudioItemModule)tableViewControllerModule;
- (HUHomeTheaterSetupViewController)initWithAppleTVAccessory:(id)accessory inHome:(id)home;
- (HUHomeTheaterSetupViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (HUHomeTheaterSetupViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (UIEdgeInsets)contentInsets;
- (id)hu_preloadContent;
- (void)_activateHomeTheater:(id)theater;
- (void)_doNotActivateHomeTheater:(id)theater;
- (void)_updateHeightConstraints;
- (void)homeTheaterItemModuleDidChangeSelectedDestination:(id)destination;
- (void)traitCollectionDidChange:(id)change;
- (void)updateViewConstraints;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation HUHomeTheaterSetupViewController

- (HUHomeTheaterSetupViewController)initWithAppleTVAccessory:(id)accessory inHome:(id)home
{
  accessoryCopy = accessory;
  homeCopy = home;
  hf_displayName = [accessoryCopy hf_displayName];
  v16 = HULocalizedStringWithFormat(@"HUHomeTheaterSetup_Title", @"%@", v10, v11, v12, v13, v14, v15, hf_displayName);

  v17 = _HULocalizedStringWithDefaultValue(@"HUHomeTheaterSetup_Detail", @"HUHomeTheaterSetup_Detail", 1);
  v20.receiver = self;
  v20.super_class = HUHomeTheaterSetupViewController;
  v18 = [(HUHomeTheaterSetupViewController *)&v20 initWithTitle:v16 detailText:v17 icon:0 contentLayout:2];

  if (v18)
  {
    objc_storeStrong(v18 + 154, accessory);
    objc_storeStrong(v18 + 155, home);
    *(v18 + 1304) = xmmword_20D5CAA60;
    *(v18 + 1320) = xmmword_20D5CAA60;
  }

  return v18;
}

- (HUHomeTheaterSetupViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithAppleTVAccessory_inHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUHomeTheaterSetupViewController.m" lineNumber:62 description:{@"%s is unavailable; use %@ instead", "-[HUHomeTheaterSetupViewController initWithTitle:detailText:symbolName:contentLayout:]", v9}];

  return 0;
}

- (HUHomeTheaterSetupViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithAppleTVAccessory_inHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUHomeTheaterSetupViewController.m" lineNumber:67 description:{@"%s is unavailable; use %@ instead", "-[HUHomeTheaterSetupViewController initWithTitle:detailText:icon:contentLayout:]", v9}];

  return 0;
}

- (void)viewDidLoad
{
  v148[12] = *MEMORY[0x277D85DE8];
  v143.receiver = self;
  v143.super_class = HUHomeTheaterSetupViewController;
  [(OBBaseWelcomeController *)&v143 viewDidLoad];
  headerView = [(HUHomeTheaterSetupViewController *)self headerView];
  subviews = [headerView subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:subviews withIDDictionary:&unk_282493170];

  boldButton = [MEMORY[0x277D37618] boldButton];
  [(HUHomeTheaterSetupViewController *)self setUseHomeTheaterButton:boldButton];

  useHomeTheaterButton = [(HUHomeTheaterSetupViewController *)self useHomeTheaterButton];
  [useHomeTheaterButton setTranslatesAutoresizingMaskIntoConstraints:0];

  useHomeTheaterButton2 = [(HUHomeTheaterSetupViewController *)self useHomeTheaterButton];
  v8 = _HULocalizedStringWithDefaultValue(@"HUHomeTheaterSetup_UseHomeTheaterButton", @"HUHomeTheaterSetup_UseHomeTheaterButton", 1);
  [useHomeTheaterButton2 setTitle:v8 forState:0];

  useHomeTheaterButton3 = [(HUHomeTheaterSetupViewController *)self useHomeTheaterButton];
  [useHomeTheaterButton3 setAccessibilityIdentifier:@"Home.OnboardingView.HomeTheater.SetUp.UseHomeTheaterButton"];

  useHomeTheaterButton4 = [(HUHomeTheaterSetupViewController *)self useHomeTheaterButton];
  [useHomeTheaterButton4 addTarget:self action:sel__activateHomeTheater_ forControlEvents:64];

  buttonTray = [(HUHomeTheaterSetupViewController *)self buttonTray];
  useHomeTheaterButton5 = [(HUHomeTheaterSetupViewController *)self useHomeTheaterButton];
  [buttonTray addButton:useHomeTheaterButton5];

  linkButton = [MEMORY[0x277D37650] linkButton];
  [(HUHomeTheaterSetupViewController *)self setNotNowButton:linkButton];

  notNowButton = [(HUHomeTheaterSetupViewController *)self notNowButton];
  [notNowButton setTranslatesAutoresizingMaskIntoConstraints:0];

  notNowButton2 = [(HUHomeTheaterSetupViewController *)self notNowButton];
  v16 = _HULocalizedStringWithDefaultValue(@"HUHomeTheaterSetup_NotNowButton", @"HUHomeTheaterSetup_NotNowButton", 1);
  [notNowButton2 setTitle:v16 forState:0];

  notNowButton3 = [(HUHomeTheaterSetupViewController *)self notNowButton];
  [notNowButton3 setAccessibilityIdentifier:@"Home.OnboardingView.HomeTheater.SetUp.NotNowButton"];

  notNowButton4 = [(HUHomeTheaterSetupViewController *)self notNowButton];
  [notNowButton4 addTarget:self action:sel__doNotActivateHomeTheater_ forControlEvents:64];

  buttonTray2 = [(HUHomeTheaterSetupViewController *)self buttonTray];
  notNowButton5 = [(HUHomeTheaterSetupViewController *)self notNowButton];
  [buttonTray2 addButton:notNowButton5];

  [(HUHomeTheaterSetupViewController *)self setModalInPresentation:1];
  v21 = objc_alloc(MEMORY[0x277D755E8]);
  v22 = HUImageNamed(@"Onboarding-HomeTheater");
  v23 = [v21 initWithImage:v22];
  [(HUHomeTheaterSetupViewController *)self setContentImageView:v23];

  contentImageView = [(HUHomeTheaterSetupViewController *)self contentImageView];
  [contentImageView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentImageView2 = [(HUHomeTheaterSetupViewController *)self contentImageView];
  [contentImageView2 setContentMode:1];

  contentView = [(HUHomeTheaterSetupViewController *)self contentView];
  contentImageView3 = [(HUHomeTheaterSetupViewController *)self contentImageView];
  [contentView addSubview:contentImageView3];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__HUHomeTheaterSetupViewController_viewDidLoad__block_invoke;
  aBlock[3] = &unk_277DB9F78;
  aBlock[4] = self;
  v141 = _Block_copy(aBlock);
  v28 = [[HUSimpleItemModuleTableViewController alloc] initWithTableViewStyle:1 moduleCreator:v141 moduleControllerBuilder:&__block_literal_global_225];
  [(HUHomeTheaterSetupViewController *)self setTableViewController:v28];

  clearColor = [MEMORY[0x277D75348] clearColor];
  tableViewController = [(HUHomeTheaterSetupViewController *)self tableViewController];
  view = [tableViewController view];
  [view setBackgroundColor:clearColor];

  tableViewController2 = [(HUHomeTheaterSetupViewController *)self tableViewController];
  tableView = [tableViewController2 tableView];
  [tableView setScrollEnabled:0];

  traitCollection = [(HUHomeTheaterSetupViewController *)self traitCollection];
  v35 = [traitCollection userInterfaceStyle] != 2;
  tableViewController3 = [(HUHomeTheaterSetupViewController *)self tableViewController];
  [tableViewController3 setShouldUseAlternateCellColor:v35];

  tableViewController4 = [(HUHomeTheaterSetupViewController *)self tableViewController];
  [tableViewController4 setWantsPreferredContentSize:1];

  tableViewController5 = [(HUHomeTheaterSetupViewController *)self tableViewController];
  view2 = [tableViewController5 view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

  tableViewController6 = [(HUHomeTheaterSetupViewController *)self tableViewController];
  tableView2 = [tableViewController6 tableView];
  [tableView2 setLayoutMargins:{0.0, 1.0, 0.0, 1.0}];

  tableViewController7 = [(HUHomeTheaterSetupViewController *)self tableViewController];
  [tableViewController7 setSectionContentInsetFollowsLayoutMargins:1];

  tableViewController8 = [(HUHomeTheaterSetupViewController *)self tableViewController];
  [(HUHomeTheaterSetupViewController *)self addChildViewController:tableViewController8];

  contentView2 = [(HUHomeTheaterSetupViewController *)self contentView];
  tableViewController9 = [(HUHomeTheaterSetupViewController *)self tableViewController];
  view3 = [tableViewController9 view];
  [contentView2 addSubview:view3];

  tableViewController10 = [(HUHomeTheaterSetupViewController *)self tableViewController];
  view4 = [tableViewController10 view];
  heightAnchor = [view4 heightAnchor];
  v50 = [heightAnchor constraintEqualToConstant:1.0];
  tableViewHeightConstraint = self->_tableViewHeightConstraint;
  self->_tableViewHeightConstraint = v50;

  contentView3 = [(HUHomeTheaterSetupViewController *)self contentView];
  heightAnchor2 = [contentView3 heightAnchor];
  v54 = [heightAnchor2 constraintLessThanOrEqualToConstant:1.0];
  LODWORD(v55) = 1148829696;
  v56 = [v54 hu_constraintWithPriority:v55];
  contentViewHeightConstraint = self->_contentViewHeightConstraint;
  self->_contentViewHeightConstraint = v56;

  contentImageView4 = [(HUHomeTheaterSetupViewController *)self contentImageView];
  widthAnchor = [contentImageView4 widthAnchor];
  contentView4 = [(HUHomeTheaterSetupViewController *)self contentView];
  layoutMarginsGuide = [contentView4 layoutMarginsGuide];
  widthAnchor2 = [layoutMarginsGuide widthAnchor];
  [(HUHomeTheaterSetupViewController *)self contentInsets];
  v64 = -v63;
  [(HUHomeTheaterSetupViewController *)self contentInsets];
  v66 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2 constant:v64 - v65];

  LODWORD(v67) = 1148846080;
  [v66 setPriority:v67];
  contentImageView5 = [(HUHomeTheaterSetupViewController *)self contentImageView];
  image = [contentImageView5 image];
  [image size];
  v71 = v70;
  contentImageView6 = [(HUHomeTheaterSetupViewController *)self contentImageView];
  image2 = [contentImageView6 image];
  [image2 size];
  v75 = v71 / v74;

  v117 = MEMORY[0x277CCAAD0];
  contentImageView7 = [(HUHomeTheaterSetupViewController *)self contentImageView];
  topAnchor = [contentImageView7 topAnchor];
  contentView5 = [(HUHomeTheaterSetupViewController *)self contentView];
  layoutMarginsGuide2 = [contentView5 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide2 topAnchor];
  [(HUHomeTheaterSetupViewController *)self contentInsets];
  v134 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  v148[0] = v134;
  contentImageView8 = [(HUHomeTheaterSetupViewController *)self contentImageView];
  centerXAnchor = [contentImageView8 centerXAnchor];
  contentView6 = [(HUHomeTheaterSetupViewController *)self contentView];
  layoutMarginsGuide3 = [contentView6 layoutMarginsGuide];
  centerXAnchor2 = [layoutMarginsGuide3 centerXAnchor];
  v128 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v148[1] = v128;
  contentImageView9 = [(HUHomeTheaterSetupViewController *)self contentImageView];
  widthAnchor3 = [contentImageView9 widthAnchor];
  contentImageView10 = [(HUHomeTheaterSetupViewController *)self contentImageView];
  image3 = [contentImageView10 image];
  [image3 size];
  v123 = [widthAnchor3 constraintLessThanOrEqualToConstant:?];
  LODWORD(v76) = 1148846080;
  v122 = [v123 hu_constraintWithPriority:v76];
  v148[2] = v122;
  contentImageView11 = [(HUHomeTheaterSetupViewController *)self contentImageView];
  heightAnchor3 = [contentImageView11 heightAnchor];
  v119 = [heightAnchor3 constraintGreaterThanOrEqualToConstant:150.0];
  LODWORD(v77) = 1148846080;
  v118 = [v119 hu_constraintWithPriority:v77];
  v148[3] = v118;
  contentImageView12 = [(HUHomeTheaterSetupViewController *)self contentImageView];
  heightAnchor4 = [contentImageView12 heightAnchor];
  contentImageView13 = [(HUHomeTheaterSetupViewController *)self contentImageView];
  widthAnchor4 = [contentImageView13 widthAnchor];
  v112 = [heightAnchor4 constraintEqualToAnchor:widthAnchor4 multiplier:v75];
  LODWORD(v78) = 1148846080;
  v111 = [v112 hu_constraintWithPriority:v78];
  v148[4] = v111;
  tableViewController11 = [(HUHomeTheaterSetupViewController *)self tableViewController];
  view5 = [tableViewController11 view];
  topAnchor3 = [view5 topAnchor];
  contentImageView14 = [(HUHomeTheaterSetupViewController *)self contentImageView];
  bottomAnchor = [contentImageView14 bottomAnchor];
  v105 = [topAnchor3 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor multiplier:1.0];
  v148[5] = v105;
  tableViewController12 = [(HUHomeTheaterSetupViewController *)self tableViewController];
  view6 = [tableViewController12 view];
  leadingAnchor = [view6 leadingAnchor];
  contentView7 = [(HUHomeTheaterSetupViewController *)self contentView];
  leadingAnchor2 = [contentView7 leadingAnchor];
  v99 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v148[6] = v99;
  tableViewController13 = [(HUHomeTheaterSetupViewController *)self tableViewController];
  view7 = [tableViewController13 view];
  trailingAnchor = [view7 trailingAnchor];
  contentView8 = [(HUHomeTheaterSetupViewController *)self contentView];
  trailingAnchor2 = [contentView8 trailingAnchor];
  v93 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v148[7] = v93;
  tableViewController14 = [(HUHomeTheaterSetupViewController *)self tableViewController];
  view8 = [tableViewController14 view];
  bottomAnchor2 = [view8 bottomAnchor];
  contentView9 = [(HUHomeTheaterSetupViewController *)self contentView];
  layoutMarginsGuide4 = [contentView9 layoutMarginsGuide];
  bottomAnchor3 = [layoutMarginsGuide4 bottomAnchor];
  [(HUHomeTheaterSetupViewController *)self contentInsets];
  v85 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:v84];
  v148[8] = v85;
  v148[9] = v66;
  v140 = v66;
  contentViewHeightConstraint = [(HUHomeTheaterSetupViewController *)self contentViewHeightConstraint];
  v148[10] = contentViewHeightConstraint;
  tableViewHeightConstraint = [(HUHomeTheaterSetupViewController *)self tableViewHeightConstraint];
  v148[11] = tableViewHeightConstraint;
  v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v148 count:12];
  [v117 activateConstraints:v88];

  [(HUHomeTheaterSetupViewController *)self updateViewConstraints];
  v89 = HFLogForCategory();
  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
  {
    v90 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v146 = 2112;
    v147 = v90;
    _os_log_impl(&dword_20CEB6000, v89, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: HTSVC", buf, 0x16u);
  }
}

id __47__HUHomeTheaterSetupViewController_viewDidLoad__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [HUHomeTheaterAudioItemModule alloc];
  v6 = [*(a1 + 32) accessory];
  v7 = [v6 mediaProfile];
  v8 = [(HUHomeTheaterAudioItemModule *)v5 initWithItemUpdater:v4 mediaProfileContainer:v7 includeLocalDestinations:0];

  [(HUHomeTheaterAudioItemModule *)v8 setDisableAutomaticCommit:1];
  [(HUHomeTheaterAudioItemModule *)v8 setOnboardingDelegate:*(a1 + 32)];
  [*(a1 + 32) setTableViewControllerModule:v8];
  [*(a1 + 32) homeTheaterItemModuleDidChangeSelectedDestination:v8];
  v11[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  return v9;
}

HUHomeTheaterAudioItemModuleController *__47__HUHomeTheaterSetupViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(HUItemModuleController *)[HUHomeTheaterAudioItemModuleController alloc] initWithModule:v2];

  return v3;
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = HUHomeTheaterSetupViewController;
  [(HUHomeTheaterSetupViewController *)&v7 traitCollectionDidChange:change];
  traitCollection = [(HUHomeTheaterSetupViewController *)self traitCollection];
  v5 = [traitCollection userInterfaceStyle] != 2;
  tableViewController = [(HUHomeTheaterSetupViewController *)self tableViewController];
  [tableViewController setShouldUseAlternateCellColor:v5];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HUHomeTheaterSetupViewController;
  [(HUHomeTheaterSetupViewController *)&v3 viewWillLayoutSubviews];
  [(HUHomeTheaterSetupViewController *)self _updateHeightConstraints];
}

- (void)updateViewConstraints
{
  v3.receiver = self;
  v3.super_class = HUHomeTheaterSetupViewController;
  [(HUHomeTheaterSetupViewController *)&v3 updateViewConstraints];
  [(HUHomeTheaterSetupViewController *)self _updateHeightConstraints];
}

- (id)hu_preloadContent
{
  tableViewController = [(HUHomeTheaterSetupViewController *)self tableViewController];
  hu_preloadContent = [tableViewController hu_preloadContent];
  v4 = hu_preloadContent;
  if (hu_preloadContent)
  {
    futureWithNoResult = hu_preloadContent;
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v6 = futureWithNoResult;

  return v6;
}

- (void)homeTheaterItemModuleDidChangeSelectedDestination:(id)destination
{
  destinationCopy = destination;
  useHomeTheaterButton = [(HUHomeTheaterSetupViewController *)self useHomeTheaterButton];
  tappedDestinationIdentifier = [destinationCopy tappedDestinationIdentifier];
  if (tappedDestinationIdentifier)
  {
    [useHomeTheaterButton setEnabled:1];
  }

  else
  {
    selectedUncommittedItem = [destinationCopy selectedUncommittedItem];
    [useHomeTheaterButton setEnabled:selectedUncommittedItem != 0];
  }
}

- (void)_updateHeightConstraints
{
  tableViewController = [(HUHomeTheaterSetupViewController *)self tableViewController];
  [tableViewController preferredContentSize];
  v5 = v4;
  tableViewHeightConstraint = [(HUHomeTheaterSetupViewController *)self tableViewHeightConstraint];
  [tableViewHeightConstraint setConstant:v5];

  headerView = [(HUHomeTheaterSetupViewController *)self headerView];
  [headerView frame];
  v9 = v8;

  headerView2 = [(HUHomeTheaterSetupViewController *)self headerView];
  [headerView2 frame];
  v12 = v11;
  contentView = [(HUHomeTheaterSetupViewController *)self contentView];
  [contentView frame];
  v15 = v14;
  headerView3 = [(HUHomeTheaterSetupViewController *)self headerView];
  [headerView3 frame];
  v17 = v12 + v15 - CGRectGetMaxY(v27);

  buttonTray = [(HUHomeTheaterSetupViewController *)self buttonTray];
  [buttonTray frame];
  v20 = v19;

  scrollView = [(HUHomeTheaterSetupViewController *)self scrollView];
  [scrollView frame];
  MaxY = CGRectGetMaxY(v28);
  buttonTray2 = [(HUHomeTheaterSetupViewController *)self buttonTray];
  [buttonTray2 frame];
  v24 = MaxY - CGRectGetMaxY(v29);

  contentViewHeightConstraint = [(HUHomeTheaterSetupViewController *)self contentViewHeightConstraint];
  [contentViewHeightConstraint setConstant:-v9 - v17 - v20 - v24];
}

- (void)_activateHomeTheater:(id)theater
{
  v25 = *MEMORY[0x277D85DE8];
  theaterCopy = theater;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 138412290;
    selfCopy = v9;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: Setting Up Home Theater", buf, 0xCu);
  }

  tableViewControllerModule = [(HUHomeTheaterSetupViewController *)self tableViewControllerModule];
  commitConfiguration = [tableViewControllerModule commitConfiguration];

  useHomeTheaterButton = [(HUHomeTheaterSetupViewController *)self useHomeTheaterButton];
  activityIndicator = [useHomeTheaterButton activityIndicator];
  [activityIndicator startAnimating];

  [theaterCopy setEnabled:0];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __57__HUHomeTheaterSetupViewController__activateHomeTheater___block_invoke;
  v20[3] = &unk_277DBA338;
  v20[4] = self;
  v14 = [commitConfiguration addSuccessBlock:v20];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __57__HUHomeTheaterSetupViewController__activateHomeTheater___block_invoke_72;
  v17[3] = &unk_277DBEFD8;
  v18 = theaterCopy;
  v19 = a2;
  v17[4] = self;
  v15 = theaterCopy;
  v16 = [v14 addFailureBlock:v17];
}

void __57__HUHomeTheaterSetupViewController__activateHomeTheater___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB38];
  v10[0] = &unk_282491F28;
  v9[0] = @"HUHomeTheaterOnboardingKey_UserInput";
  v9[1] = @"HUHomeTheaterOnboardingKey_Accessory";
  v3 = [*(a1 + 32) accessory];
  v10[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v5 = [v2 dictionaryWithDictionary:v4];

  v6 = [*(a1 + 32) useHomeTheaterButton];
  v7 = [v6 activityIndicator];
  [v7 stopAnimating];

  v8 = [*(a1 + 32) delegate];
  [v8 viewController:*(a1 + 32) didFinishWithConfigurationResults:v5];
}

void __57__HUHomeTheaterSetupViewController__activateHomeTheater___block_invoke_72(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = NSStringFromSelector(*(a1 + 48));
    v10 = 138412802;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ completed with error: %@", &v10, 0x20u);
  }

  [*(a1 + 40) setEnabled:1];
  v7 = [*(a1 + 32) useHomeTheaterButton];
  v8 = [v7 activityIndicator];
  [v8 stopAnimating];

  v9 = [MEMORY[0x277D14640] sharedHandler];
  [v9 handleError:v3];
}

- (void)_doNotActivateHomeTheater:(id)theater
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  v7 = MEMORY[0x277CBEB38];
  v8 = [(HUHomeTheaterSetupViewController *)self accessory:@"HUHomeTheaterOnboardingKey_UserInput"];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:2];
  v10 = [v7 dictionaryWithDictionary:v9];

  delegate = [(HUHomeTheaterSetupViewController *)self delegate];
  [delegate viewController:self didFinishWithConfigurationResults:v10];
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HUHomeTheaterAudioItemModule)tableViewControllerModule
{
  WeakRetained = objc_loadWeakRetained(&self->_tableViewControllerModule);

  return WeakRetained;
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end