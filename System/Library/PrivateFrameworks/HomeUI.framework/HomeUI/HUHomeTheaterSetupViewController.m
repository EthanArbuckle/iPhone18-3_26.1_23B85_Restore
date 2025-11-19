@interface HUHomeTheaterSetupViewController
- (HUConfigurationViewControllerDelegate)delegate;
- (HUHomeTheaterAudioItemModule)tableViewControllerModule;
- (HUHomeTheaterSetupViewController)initWithAppleTVAccessory:(id)a3 inHome:(id)a4;
- (HUHomeTheaterSetupViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (HUHomeTheaterSetupViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (UIEdgeInsets)contentInsets;
- (id)hu_preloadContent;
- (void)_activateHomeTheater:(id)a3;
- (void)_doNotActivateHomeTheater:(id)a3;
- (void)_updateHeightConstraints;
- (void)homeTheaterItemModuleDidChangeSelectedDestination:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateViewConstraints;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation HUHomeTheaterSetupViewController

- (HUHomeTheaterSetupViewController)initWithAppleTVAccessory:(id)a3 inHome:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 hf_displayName];
  v16 = HULocalizedStringWithFormat(@"HUHomeTheaterSetup_Title", @"%@", v10, v11, v12, v13, v14, v15, v9);

  v17 = _HULocalizedStringWithDefaultValue(@"HUHomeTheaterSetup_Detail", @"HUHomeTheaterSetup_Detail", 1);
  v20.receiver = self;
  v20.super_class = HUHomeTheaterSetupViewController;
  v18 = [(HUHomeTheaterSetupViewController *)&v20 initWithTitle:v16 detailText:v17 icon:0 contentLayout:2];

  if (v18)
  {
    objc_storeStrong(v18 + 154, a3);
    objc_storeStrong(v18 + 155, a4);
    *(v18 + 1304) = xmmword_20D5CAA60;
    *(v18 + 1320) = xmmword_20D5CAA60;
  }

  return v18;
}

- (HUHomeTheaterSetupViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithAppleTVAccessory_inHome_);
  [v8 handleFailureInMethod:a2 object:self file:@"HUHomeTheaterSetupViewController.m" lineNumber:62 description:{@"%s is unavailable; use %@ instead", "-[HUHomeTheaterSetupViewController initWithTitle:detailText:symbolName:contentLayout:]", v9}];

  return 0;
}

- (HUHomeTheaterSetupViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithAppleTVAccessory_inHome_);
  [v8 handleFailureInMethod:a2 object:self file:@"HUHomeTheaterSetupViewController.m" lineNumber:67 description:{@"%s is unavailable; use %@ instead", "-[HUHomeTheaterSetupViewController initWithTitle:detailText:icon:contentLayout:]", v9}];

  return 0;
}

- (void)viewDidLoad
{
  v148[12] = *MEMORY[0x277D85DE8];
  v143.receiver = self;
  v143.super_class = HUHomeTheaterSetupViewController;
  [(OBBaseWelcomeController *)&v143 viewDidLoad];
  v3 = [(HUHomeTheaterSetupViewController *)self headerView];
  v4 = [v3 subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:v4 withIDDictionary:&unk_282493170];

  v5 = [MEMORY[0x277D37618] boldButton];
  [(HUHomeTheaterSetupViewController *)self setUseHomeTheaterButton:v5];

  v6 = [(HUHomeTheaterSetupViewController *)self useHomeTheaterButton];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(HUHomeTheaterSetupViewController *)self useHomeTheaterButton];
  v8 = _HULocalizedStringWithDefaultValue(@"HUHomeTheaterSetup_UseHomeTheaterButton", @"HUHomeTheaterSetup_UseHomeTheaterButton", 1);
  [v7 setTitle:v8 forState:0];

  v9 = [(HUHomeTheaterSetupViewController *)self useHomeTheaterButton];
  [v9 setAccessibilityIdentifier:@"Home.OnboardingView.HomeTheater.SetUp.UseHomeTheaterButton"];

  v10 = [(HUHomeTheaterSetupViewController *)self useHomeTheaterButton];
  [v10 addTarget:self action:sel__activateHomeTheater_ forControlEvents:64];

  v11 = [(HUHomeTheaterSetupViewController *)self buttonTray];
  v12 = [(HUHomeTheaterSetupViewController *)self useHomeTheaterButton];
  [v11 addButton:v12];

  v13 = [MEMORY[0x277D37650] linkButton];
  [(HUHomeTheaterSetupViewController *)self setNotNowButton:v13];

  v14 = [(HUHomeTheaterSetupViewController *)self notNowButton];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [(HUHomeTheaterSetupViewController *)self notNowButton];
  v16 = _HULocalizedStringWithDefaultValue(@"HUHomeTheaterSetup_NotNowButton", @"HUHomeTheaterSetup_NotNowButton", 1);
  [v15 setTitle:v16 forState:0];

  v17 = [(HUHomeTheaterSetupViewController *)self notNowButton];
  [v17 setAccessibilityIdentifier:@"Home.OnboardingView.HomeTheater.SetUp.NotNowButton"];

  v18 = [(HUHomeTheaterSetupViewController *)self notNowButton];
  [v18 addTarget:self action:sel__doNotActivateHomeTheater_ forControlEvents:64];

  v19 = [(HUHomeTheaterSetupViewController *)self buttonTray];
  v20 = [(HUHomeTheaterSetupViewController *)self notNowButton];
  [v19 addButton:v20];

  [(HUHomeTheaterSetupViewController *)self setModalInPresentation:1];
  v21 = objc_alloc(MEMORY[0x277D755E8]);
  v22 = HUImageNamed(@"Onboarding-HomeTheater");
  v23 = [v21 initWithImage:v22];
  [(HUHomeTheaterSetupViewController *)self setContentImageView:v23];

  v24 = [(HUHomeTheaterSetupViewController *)self contentImageView];
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

  v25 = [(HUHomeTheaterSetupViewController *)self contentImageView];
  [v25 setContentMode:1];

  v26 = [(HUHomeTheaterSetupViewController *)self contentView];
  v27 = [(HUHomeTheaterSetupViewController *)self contentImageView];
  [v26 addSubview:v27];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__HUHomeTheaterSetupViewController_viewDidLoad__block_invoke;
  aBlock[3] = &unk_277DB9F78;
  aBlock[4] = self;
  v141 = _Block_copy(aBlock);
  v28 = [[HUSimpleItemModuleTableViewController alloc] initWithTableViewStyle:1 moduleCreator:v141 moduleControllerBuilder:&__block_literal_global_225];
  [(HUHomeTheaterSetupViewController *)self setTableViewController:v28];

  v29 = [MEMORY[0x277D75348] clearColor];
  v30 = [(HUHomeTheaterSetupViewController *)self tableViewController];
  v31 = [v30 view];
  [v31 setBackgroundColor:v29];

  v32 = [(HUHomeTheaterSetupViewController *)self tableViewController];
  v33 = [v32 tableView];
  [v33 setScrollEnabled:0];

  v34 = [(HUHomeTheaterSetupViewController *)self traitCollection];
  v35 = [v34 userInterfaceStyle] != 2;
  v36 = [(HUHomeTheaterSetupViewController *)self tableViewController];
  [v36 setShouldUseAlternateCellColor:v35];

  v37 = [(HUHomeTheaterSetupViewController *)self tableViewController];
  [v37 setWantsPreferredContentSize:1];

  v38 = [(HUHomeTheaterSetupViewController *)self tableViewController];
  v39 = [v38 view];
  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];

  v40 = [(HUHomeTheaterSetupViewController *)self tableViewController];
  v41 = [v40 tableView];
  [v41 setLayoutMargins:{0.0, 1.0, 0.0, 1.0}];

  v42 = [(HUHomeTheaterSetupViewController *)self tableViewController];
  [v42 setSectionContentInsetFollowsLayoutMargins:1];

  v43 = [(HUHomeTheaterSetupViewController *)self tableViewController];
  [(HUHomeTheaterSetupViewController *)self addChildViewController:v43];

  v44 = [(HUHomeTheaterSetupViewController *)self contentView];
  v45 = [(HUHomeTheaterSetupViewController *)self tableViewController];
  v46 = [v45 view];
  [v44 addSubview:v46];

  v47 = [(HUHomeTheaterSetupViewController *)self tableViewController];
  v48 = [v47 view];
  v49 = [v48 heightAnchor];
  v50 = [v49 constraintEqualToConstant:1.0];
  tableViewHeightConstraint = self->_tableViewHeightConstraint;
  self->_tableViewHeightConstraint = v50;

  v52 = [(HUHomeTheaterSetupViewController *)self contentView];
  v53 = [v52 heightAnchor];
  v54 = [v53 constraintLessThanOrEqualToConstant:1.0];
  LODWORD(v55) = 1148829696;
  v56 = [v54 hu_constraintWithPriority:v55];
  contentViewHeightConstraint = self->_contentViewHeightConstraint;
  self->_contentViewHeightConstraint = v56;

  v58 = [(HUHomeTheaterSetupViewController *)self contentImageView];
  v59 = [v58 widthAnchor];
  v60 = [(HUHomeTheaterSetupViewController *)self contentView];
  v61 = [v60 layoutMarginsGuide];
  v62 = [v61 widthAnchor];
  [(HUHomeTheaterSetupViewController *)self contentInsets];
  v64 = -v63;
  [(HUHomeTheaterSetupViewController *)self contentInsets];
  v66 = [v59 constraintLessThanOrEqualToAnchor:v62 constant:v64 - v65];

  LODWORD(v67) = 1148846080;
  [v66 setPriority:v67];
  v68 = [(HUHomeTheaterSetupViewController *)self contentImageView];
  v69 = [v68 image];
  [v69 size];
  v71 = v70;
  v72 = [(HUHomeTheaterSetupViewController *)self contentImageView];
  v73 = [v72 image];
  [v73 size];
  v75 = v71 / v74;

  v117 = MEMORY[0x277CCAAD0];
  v139 = [(HUHomeTheaterSetupViewController *)self contentImageView];
  v136 = [v139 topAnchor];
  v138 = [(HUHomeTheaterSetupViewController *)self contentView];
  v137 = [v138 layoutMarginsGuide];
  v135 = [v137 topAnchor];
  [(HUHomeTheaterSetupViewController *)self contentInsets];
  v134 = [v136 constraintEqualToAnchor:v135 constant:?];
  v148[0] = v134;
  v133 = [(HUHomeTheaterSetupViewController *)self contentImageView];
  v131 = [v133 centerXAnchor];
  v132 = [(HUHomeTheaterSetupViewController *)self contentView];
  v130 = [v132 layoutMarginsGuide];
  v129 = [v130 centerXAnchor];
  v128 = [v131 constraintEqualToAnchor:v129];
  v148[1] = v128;
  v127 = [(HUHomeTheaterSetupViewController *)self contentImageView];
  v125 = [v127 widthAnchor];
  v126 = [(HUHomeTheaterSetupViewController *)self contentImageView];
  v124 = [v126 image];
  [v124 size];
  v123 = [v125 constraintLessThanOrEqualToConstant:?];
  LODWORD(v76) = 1148846080;
  v122 = [v123 hu_constraintWithPriority:v76];
  v148[2] = v122;
  v121 = [(HUHomeTheaterSetupViewController *)self contentImageView];
  v120 = [v121 heightAnchor];
  v119 = [v120 constraintGreaterThanOrEqualToConstant:150.0];
  LODWORD(v77) = 1148846080;
  v118 = [v119 hu_constraintWithPriority:v77];
  v148[3] = v118;
  v116 = [(HUHomeTheaterSetupViewController *)self contentImageView];
  v114 = [v116 heightAnchor];
  v115 = [(HUHomeTheaterSetupViewController *)self contentImageView];
  v113 = [v115 widthAnchor];
  v112 = [v114 constraintEqualToAnchor:v113 multiplier:v75];
  LODWORD(v78) = 1148846080;
  v111 = [v112 hu_constraintWithPriority:v78];
  v148[4] = v111;
  v110 = [(HUHomeTheaterSetupViewController *)self tableViewController];
  v109 = [v110 view];
  v107 = [v109 topAnchor];
  v108 = [(HUHomeTheaterSetupViewController *)self contentImageView];
  v106 = [v108 bottomAnchor];
  v105 = [v107 constraintEqualToSystemSpacingBelowAnchor:v106 multiplier:1.0];
  v148[5] = v105;
  v104 = [(HUHomeTheaterSetupViewController *)self tableViewController];
  v103 = [v104 view];
  v101 = [v103 leadingAnchor];
  v102 = [(HUHomeTheaterSetupViewController *)self contentView];
  v100 = [v102 leadingAnchor];
  v99 = [v101 constraintEqualToAnchor:v100];
  v148[6] = v99;
  v98 = [(HUHomeTheaterSetupViewController *)self tableViewController];
  v97 = [v98 view];
  v95 = [v97 trailingAnchor];
  v96 = [(HUHomeTheaterSetupViewController *)self contentView];
  v94 = [v96 trailingAnchor];
  v93 = [v95 constraintEqualToAnchor:v94];
  v148[7] = v93;
  v92 = [(HUHomeTheaterSetupViewController *)self tableViewController];
  v79 = [v92 view];
  v80 = [v79 bottomAnchor];
  v81 = [(HUHomeTheaterSetupViewController *)self contentView];
  v82 = [v81 layoutMarginsGuide];
  v83 = [v82 bottomAnchor];
  [(HUHomeTheaterSetupViewController *)self contentInsets];
  v85 = [v80 constraintEqualToAnchor:v83 constant:v84];
  v148[8] = v85;
  v148[9] = v66;
  v140 = v66;
  v86 = [(HUHomeTheaterSetupViewController *)self contentViewHeightConstraint];
  v148[10] = v86;
  v87 = [(HUHomeTheaterSetupViewController *)self tableViewHeightConstraint];
  v148[11] = v87;
  v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v148 count:12];
  [v117 activateConstraints:v88];

  [(HUHomeTheaterSetupViewController *)self updateViewConstraints];
  v89 = HFLogForCategory();
  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
  {
    v90 = NSStringFromSelector(a2);
    *buf = 138412546;
    v145 = self;
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

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = HUHomeTheaterSetupViewController;
  [(HUHomeTheaterSetupViewController *)&v7 traitCollectionDidChange:a3];
  v4 = [(HUHomeTheaterSetupViewController *)self traitCollection];
  v5 = [v4 userInterfaceStyle] != 2;
  v6 = [(HUHomeTheaterSetupViewController *)self tableViewController];
  [v6 setShouldUseAlternateCellColor:v5];
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
  v2 = [(HUHomeTheaterSetupViewController *)self tableViewController];
  v3 = [v2 hu_preloadContent];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v6 = v5;

  return v6;
}

- (void)homeTheaterItemModuleDidChangeSelectedDestination:(id)a3
{
  v7 = a3;
  v4 = [(HUHomeTheaterSetupViewController *)self useHomeTheaterButton];
  v5 = [v7 tappedDestinationIdentifier];
  if (v5)
  {
    [v4 setEnabled:1];
  }

  else
  {
    v6 = [v7 selectedUncommittedItem];
    [v4 setEnabled:v6 != 0];
  }
}

- (void)_updateHeightConstraints
{
  v3 = [(HUHomeTheaterSetupViewController *)self tableViewController];
  [v3 preferredContentSize];
  v5 = v4;
  v6 = [(HUHomeTheaterSetupViewController *)self tableViewHeightConstraint];
  [v6 setConstant:v5];

  v7 = [(HUHomeTheaterSetupViewController *)self headerView];
  [v7 frame];
  v9 = v8;

  v10 = [(HUHomeTheaterSetupViewController *)self headerView];
  [v10 frame];
  v12 = v11;
  v13 = [(HUHomeTheaterSetupViewController *)self contentView];
  [v13 frame];
  v15 = v14;
  v16 = [(HUHomeTheaterSetupViewController *)self headerView];
  [v16 frame];
  v17 = v12 + v15 - CGRectGetMaxY(v27);

  v18 = [(HUHomeTheaterSetupViewController *)self buttonTray];
  [v18 frame];
  v20 = v19;

  v21 = [(HUHomeTheaterSetupViewController *)self scrollView];
  [v21 frame];
  MaxY = CGRectGetMaxY(v28);
  v23 = [(HUHomeTheaterSetupViewController *)self buttonTray];
  [v23 frame];
  v24 = MaxY - CGRectGetMaxY(v29);

  v25 = [(HUHomeTheaterSetupViewController *)self contentViewHeightConstraint];
  [v25 setConstant:-v9 - v17 - v20 - v24];
}

- (void)_activateHomeTheater:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    v22 = self;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 138412290;
    v22 = v9;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: Setting Up Home Theater", buf, 0xCu);
  }

  v10 = [(HUHomeTheaterSetupViewController *)self tableViewControllerModule];
  v11 = [v10 commitConfiguration];

  v12 = [(HUHomeTheaterSetupViewController *)self useHomeTheaterButton];
  v13 = [v12 activityIndicator];
  [v13 startAnimating];

  [v5 setEnabled:0];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __57__HUHomeTheaterSetupViewController__activateHomeTheater___block_invoke;
  v20[3] = &unk_277DBA338;
  v20[4] = self;
  v14 = [v11 addSuccessBlock:v20];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __57__HUHomeTheaterSetupViewController__activateHomeTheater___block_invoke_72;
  v17[3] = &unk_277DBEFD8;
  v18 = v5;
  v19 = a2;
  v17[4] = self;
  v15 = v5;
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

- (void)_doNotActivateHomeTheater:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    v15 = self;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  v7 = MEMORY[0x277CBEB38];
  v8 = [(HUHomeTheaterSetupViewController *)self accessory:@"HUHomeTheaterOnboardingKey_UserInput"];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:2];
  v10 = [v7 dictionaryWithDictionary:v9];

  v11 = [(HUHomeTheaterSetupViewController *)self delegate];
  [v11 viewController:self didFinishWithConfigurationResults:v10];
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