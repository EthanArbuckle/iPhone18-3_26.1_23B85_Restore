@interface DBAppDockViewController
- (BOOL)_mayShowCommunicationAppCategory;
- (DBAppDockViewController)initWithAppHistory:(id)history iconProvider:(id)provider environmentConfiguration:(id)configuration;
- (DBAppDockViewControllerDelegate)appDockViewControllerDelegate;
- (DBIconProviding)iconProvider;
- (id)_appDockButtons;
- (id)_buttonSizeConstraintsForButton:(id)button;
- (id)_generateOrderedAppItems;
- (id)otherAppCategories;
- (id)preferredFocusEnvironments;
- (void)_dockButtonPressed:(id)pressed;
- (void)_refreshAppDock;
- (void)_updateAppDockButtonForBundleIdentifier:(id)identifier animated:(BOOL)animated;
- (void)_updateAppDockButtonsTraits;
- (void)_updateAudioButtonSizeConstraints;
- (void)_updateCommunicationButtonSizeConstraints;
- (void)_updateNavigationBundleIdentifier:(BOOL)identifier;
- (void)_updateNavigationButtonSizeConstraints;
- (void)_updateNowPlayingBundleIdentifier:(BOOL)identifier;
- (void)_updateOtherButtonSizeConstraints;
- (void)activeIntentWithBundleId:(id)id;
- (void)dealloc;
- (void)navigationStateProvider:(id)provider navigatingIdentifiersDidChange:(id)change;
- (void)nowPlayingObserver:(id)observer didChangeNowPlayingApplication:(id)application;
- (void)nowPlayingObserver:(id)observer didUpdatePlaybackState:(BOOL)state inApplication:(id)application;
- (void)setActiveBundleIdentifier:(id)identifier animated:(BOOL)animated;
- (void)setDockEnabled:(BOOL)enabled;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DBAppDockViewController

- (DBAppDockViewControllerDelegate)appDockViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_appDockViewControllerDelegate);

  return WeakRetained;
}

- (DBIconProviding)iconProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_iconProvider);

  return WeakRetained;
}

- (id)otherAppCategories
{
  if ([(DBAppDockViewController *)self showCommunicationApp])
  {
    v2 = &unk_285AA49D0;
  }

  else
  {
    v2 = &unk_285AA49E8;
  }

  return v2;
}

- (DBAppDockViewController)initWithAppHistory:(id)history iconProvider:(id)provider environmentConfiguration:(id)configuration
{
  v26[2] = *MEMORY[0x277D85DE8];
  historyCopy = history;
  providerCopy = provider;
  configurationCopy = configuration;
  v25.receiver = self;
  v25.super_class = DBAppDockViewController;
  v12 = [(DBAppDockViewController *)&v25 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_environmentConfiguration, configuration);
    objc_storeStrong(&v13->_appHistory, history);
    v14 = [[DBNowPlayingObserver alloc] initWithEnvironmentConfiguration:configurationCopy];
    nowPlayingObserver = v13->_nowPlayingObserver;
    v13->_nowPlayingObserver = v14;

    nowPlayingObserver = [(DBAppDockViewController *)v13 nowPlayingObserver];
    [nowPlayingObserver setDelegate:v13];

    objc_storeWeak(&v13->_iconProvider, providerCopy);
    navigationStateProvider = [configurationCopy navigationStateProvider];
    [navigationStateProvider addObserver:v13];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v13, _appDockRefreshAppsCallBack, @"com.apple.CarPlay.internal.refreshApps", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel__refreshAppDock name:@"CARRefreshAppDockNotification" object:0];

    v20 = objc_opt_self();
    v26[0] = v20;
    v21 = objc_opt_self();
    v26[1] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    v23 = [(DBAppDockViewController *)v13 registerForTraitChanges:v22 withTarget:v13 action:sel__updateAppDockButtonsTraits];
  }

  return v13;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = DBAppDockViewController;
  [(DBAppDockViewController *)&v5 dealloc];
}

- (void)viewWillLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = DBAppDockViewController;
  [(DBAppDockViewController *)&v10 viewWillLayoutSubviews];
  environmentConfiguration = [(DBAppDockViewController *)self environmentConfiguration];
  hasDualStatusBar = [environmentConfiguration hasDualStatusBar];

  if (hasDualStatusBar)
  {
    v5 = 1;
  }

  else
  {
    environmentConfiguration2 = [(DBAppDockViewController *)self environmentConfiguration];
    if ([environmentConfiguration2 currentStatusBarEdge] == 1)
    {

      v5 = 0;
    }

    else
    {
      environmentConfiguration3 = [(DBAppDockViewController *)self environmentConfiguration];
      v5 = [environmentConfiguration3 currentStatusBarEdge] != 3;
    }
  }

  dockItemStackView = [(DBAppDockViewController *)self dockItemStackView];
  [dockItemStackView setAxis:v5];

  LODWORD(dockItemStackView) = [(DBAppDockViewController *)self showCommunicationApp];
  if (dockItemStackView != [(DBAppDockViewController *)self _mayShowCommunicationAppCategory])
  {
    [(DBAppDockViewController *)self setShowCommunicationApp:[(DBAppDockViewController *)self _mayShowCommunicationAppCategory]];
    _generateOrderedAppItems = [(DBAppDockViewController *)self _generateOrderedAppItems];
    [(DBAppDockViewController *)self setOrderedAppItems:_generateOrderedAppItems];
  }

  [(DBAppDockViewController *)self _updateNavigationButtonSizeConstraints];
  [(DBAppDockViewController *)self _updateAudioButtonSizeConstraints];
  [(DBAppDockViewController *)self _updateCommunicationButtonSizeConstraints];
  [(DBAppDockViewController *)self _updateOtherButtonSizeConstraints];
}

- (void)viewDidLoad
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = DBAppDockViewController;
  [(DBAppDockViewController *)&v17 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x277D75A68]);
  v4 = objc_opt_new();
  [v3 _setBackground:v4];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setAlignment:3];
  [v3 setAccessibilityLabel:@"CARAppDockStackView"];
  [v3 setAccessibilityIdentifier:@"CARAppDockStackView"];
  view = [(DBAppDockViewController *)self view];
  [view addSubview:v3];

  v15 = MEMORY[0x277CCAAD0];
  view2 = [(DBAppDockViewController *)self view];
  centerYAnchor = [view2 centerYAnchor];
  centerYAnchor2 = [v3 centerYAnchor];
  v8 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v18[0] = v8;
  view3 = [(DBAppDockViewController *)self view];
  widthAnchor = [view3 widthAnchor];
  widthAnchor2 = [v3 widthAnchor];
  v12 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v18[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  [v15 activateConstraints:v13];

  [(DBAppDockViewController *)self setDockItemStackView:v3];
  _generateOrderedAppItems = [(DBAppDockViewController *)self _generateOrderedAppItems];
  [(DBAppDockViewController *)self setOrderedAppItems:_generateOrderedAppItems];

  [(DBAppDockViewController *)self setDockEnabled:1];
}

- (void)setDockEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  navigationAppButton = [(DBAppDockViewController *)self navigationAppButton];
  [navigationAppButton setEnabled:enabledCopy];

  audioAppButton = [(DBAppDockViewController *)self audioAppButton];
  [audioAppButton setEnabled:enabledCopy];

  communicationAppButton = [(DBAppDockViewController *)self communicationAppButton];
  [communicationAppButton setEnabled:enabledCopy];

  otherAppButton = [(DBAppDockViewController *)self otherAppButton];
  [otherAppButton setEnabled:enabledCopy];
}

- (id)_buttonSizeConstraintsForButton:(id)button
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = 45.0;
  buttonCopy = button;
  environmentConfiguration = [(DBAppDockViewController *)self environmentConfiguration];
  currentStatusBarEdge = [environmentConfiguration currentStatusBarEdge];

  if (currentStatusBarEdge == 2)
  {
    v8 = 45.0;
  }

  else
  {
    v8 = 37.0;
  }

  if (currentStatusBarEdge == 2)
  {
    v4 = 37.0;
  }

  widthAnchor = [buttonCopy widthAnchor];
  v10 = [widthAnchor constraintEqualToConstant:v8];
  v15[0] = v10;
  heightAnchor = [buttonCopy heightAnchor];

  v12 = [heightAnchor constraintEqualToConstant:v4];
  v15[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

  return v13;
}

- (void)_updateNavigationButtonSizeConstraints
{
  navigationAppButtonSizeConstraints = [(DBAppDockViewController *)self navigationAppButtonSizeConstraints];

  if (navigationAppButtonSizeConstraints)
  {
    v4 = MEMORY[0x277CCAAD0];
    navigationAppButtonSizeConstraints2 = [(DBAppDockViewController *)self navigationAppButtonSizeConstraints];
    [v4 deactivateConstraints:navigationAppButtonSizeConstraints2];
  }

  navigationAppButton = [(DBAppDockViewController *)self navigationAppButton];

  if (navigationAppButton)
  {
    navigationAppButton2 = [(DBAppDockViewController *)self navigationAppButton];
    v8 = [(DBAppDockViewController *)self _buttonSizeConstraintsForButton:navigationAppButton2];
    [(DBAppDockViewController *)self setNavigationAppButtonSizeConstraints:v8];

    v9 = MEMORY[0x277CCAAD0];
    navigationAppButtonSizeConstraints3 = [(DBAppDockViewController *)self navigationAppButtonSizeConstraints];
    [v9 activateConstraints:navigationAppButtonSizeConstraints3];
  }

  else
  {

    [(DBAppDockViewController *)self setNavigationAppButtonSizeConstraints:0];
  }
}

- (void)_updateAudioButtonSizeConstraints
{
  audioAppButtonSizeConstraints = [(DBAppDockViewController *)self audioAppButtonSizeConstraints];

  if (audioAppButtonSizeConstraints)
  {
    v4 = MEMORY[0x277CCAAD0];
    audioAppButtonSizeConstraints2 = [(DBAppDockViewController *)self audioAppButtonSizeConstraints];
    [v4 deactivateConstraints:audioAppButtonSizeConstraints2];
  }

  audioAppButton = [(DBAppDockViewController *)self audioAppButton];

  if (audioAppButton)
  {
    audioAppButton2 = [(DBAppDockViewController *)self audioAppButton];
    v8 = [(DBAppDockViewController *)self _buttonSizeConstraintsForButton:audioAppButton2];
    [(DBAppDockViewController *)self setAudioAppButtonSizeConstraints:v8];

    v9 = MEMORY[0x277CCAAD0];
    audioAppButtonSizeConstraints3 = [(DBAppDockViewController *)self audioAppButtonSizeConstraints];
    [v9 activateConstraints:audioAppButtonSizeConstraints3];
  }

  else
  {

    [(DBAppDockViewController *)self setAudioAppButtonSizeConstraints:0];
  }
}

- (void)_updateCommunicationButtonSizeConstraints
{
  communicationAppButtonSizeConstraints = [(DBAppDockViewController *)self communicationAppButtonSizeConstraints];

  if (communicationAppButtonSizeConstraints)
  {
    v4 = MEMORY[0x277CCAAD0];
    communicationAppButtonSizeConstraints2 = [(DBAppDockViewController *)self communicationAppButtonSizeConstraints];
    [v4 deactivateConstraints:communicationAppButtonSizeConstraints2];
  }

  communicationAppButton = [(DBAppDockViewController *)self communicationAppButton];

  if (communicationAppButton)
  {
    communicationAppButton2 = [(DBAppDockViewController *)self communicationAppButton];
    v8 = [(DBAppDockViewController *)self _buttonSizeConstraintsForButton:communicationAppButton2];
    [(DBAppDockViewController *)self setCommunicationAppButtonSizeConstraints:v8];

    v9 = MEMORY[0x277CCAAD0];
    communicationAppButtonSizeConstraints3 = [(DBAppDockViewController *)self communicationAppButtonSizeConstraints];
    [v9 activateConstraints:communicationAppButtonSizeConstraints3];
  }

  else
  {

    [(DBAppDockViewController *)self setCommunicationAppButtonSizeConstraints:0];
  }
}

- (void)_updateOtherButtonSizeConstraints
{
  otherAppButtonSizeConstraints = [(DBAppDockViewController *)self otherAppButtonSizeConstraints];

  if (otherAppButtonSizeConstraints)
  {
    v4 = MEMORY[0x277CCAAD0];
    otherAppButtonSizeConstraints2 = [(DBAppDockViewController *)self otherAppButtonSizeConstraints];
    [v4 deactivateConstraints:otherAppButtonSizeConstraints2];
  }

  otherAppButton = [(DBAppDockViewController *)self otherAppButton];

  if (otherAppButton)
  {
    otherAppButton2 = [(DBAppDockViewController *)self otherAppButton];
    v8 = [(DBAppDockViewController *)self _buttonSizeConstraintsForButton:otherAppButton2];
    [(DBAppDockViewController *)self setOtherAppButtonSizeConstraints:v8];

    v9 = MEMORY[0x277CCAAD0];
    otherAppButtonSizeConstraints3 = [(DBAppDockViewController *)self otherAppButtonSizeConstraints];
    [v9 activateConstraints:otherAppButtonSizeConstraints3];
  }

  else
  {

    [(DBAppDockViewController *)self setOtherAppButtonSizeConstraints:0];
  }
}

- (id)_generateOrderedAppItems
{
  v120 = *MEMORY[0x277D85DE8];
  v115 = objc_opt_new();
  showCommunicationApp = [(DBAppDockViewController *)self showCommunicationApp];
  appHistory = [(DBAppDockViewController *)self appHistory];
  v5 = [appHistory orderedAppsMatchingDockCategory:1];

  appHistory2 = [(DBAppDockViewController *)self appHistory];
  v7 = [appHistory2 orderedAppsMatchingDockCategory:2];

  appHistory3 = [(DBAppDockViewController *)self appHistory];
  otherAppCategories = [(DBAppDockViewController *)self otherAppCategories];
  v10 = [appHistory3 orderedAppsMatchingDockCategories:otherAppCategories defaultAppPreferenceHints:showCommunicationApp];

  if ([(DBAppDockViewController *)self showCommunicationApp])
  {
    appHistory4 = [(DBAppDockViewController *)self appHistory];
    v12 = [appHistory4 orderedAppsMatchingDockCategory:3];
  }

  else
  {
    v12 = 0;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__DBAppDockViewController__generateOrderedAppItems__block_invoke;
  aBlock[3] = &unk_278F03840;
  aBlock[4] = self;
  v13 = _Block_copy(aBlock);
  v14 = [v5 indexOfObjectPassingTest:v13];
  if (v14 == 0x7FFFFFFFFFFFFFFFLL || ([v5 objectAtIndexedSubscript:v14], (v114 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v114 = 0;
    v116 = 0;
  }

  else
  {
    v15 = DBLogForCategory(6uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier = [v114 bundleIdentifier];
      *buf = 138412290;
      v119 = bundleIdentifier;
      _os_log_impl(&dword_248146000, v15, OS_LOG_TYPE_DEFAULT, "Resolved maps app dock item to %@", buf, 0xCu);
    }

    v17 = [DBAppDockItem alloc];
    bundleIdentifier2 = [v114 bundleIdentifier];
    v19 = [(DBAppDockItem *)v17 initWithBundleIdentifier:bundleIdentifier2 category:1 active:0];

    v116 = v19;
    [v115 addObject:v19];
  }

  v20 = [v7 indexOfObjectPassingTest:v13];
  v111 = v7;
  v112 = v5;
  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v113 = 0;
    v21 = 0;
  }

  else
  {
    v21 = [v7 objectAtIndexedSubscript:v20];
    if (v21)
    {
      v22 = DBLogForCategory(6uLL);
      v113 = v21;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifier3 = [(DBAppDockItem *)v21 bundleIdentifier];
        *buf = 138412290;
        v119 = bundleIdentifier3;
        _os_log_impl(&dword_248146000, v22, OS_LOG_TYPE_DEFAULT, "Resolved audio app dock item to %@", buf, 0xCu);

        v21 = v113;
      }

      v24 = [DBAppDockItem alloc];
      bundleIdentifier4 = [(DBAppDockItem *)v21 bundleIdentifier];
      v21 = [(DBAppDockItem *)v24 initWithBundleIdentifier:bundleIdentifier4 category:2 active:0];

      [v115 addObject:v21];
    }

    else
    {
      v113 = 0;
    }
  }

  v26 = [v12 indexOfObjectPassingTest:v13];
  if (v26 == 0x7FFFFFFFFFFFFFFFLL || ([v12 objectAtIndexedSubscript:v26], (v27 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v34 = 0;
    v33 = 0;
  }

  else
  {
    v28 = v27;
    v29 = DBLogForCategory(6uLL);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier5 = [v28 bundleIdentifier];
      *buf = 138412290;
      v119 = bundleIdentifier5;
      _os_log_impl(&dword_248146000, v29, OS_LOG_TYPE_DEFAULT, "Resolved communication app dock item to %@", buf, 0xCu);
    }

    v31 = [DBAppDockItem alloc];
    bundleIdentifier6 = [v28 bundleIdentifier];
    v33 = [(DBAppDockItem *)v31 initWithBundleIdentifier:bundleIdentifier6 category:3 active:0];

    v34 = v28;
    [v115 addObject:v33];
  }

  v35 = [v10 indexOfObjectPassingTest:v13];
  v109 = v12;
  if (v35 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v36 = 0;
LABEL_29:
    v41 = 0;
    goto LABEL_30;
  }

  v36 = [v10 objectAtIndexedSubscript:v35];
  if (!v36)
  {
    goto LABEL_29;
  }

  v37 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier7 = [v36 bundleIdentifier];
    *buf = 138412290;
    v119 = bundleIdentifier7;
    _os_log_impl(&dword_248146000, v37, OS_LOG_TYPE_DEFAULT, "Resolved other app dock item to %@", buf, 0xCu);
  }

  v39 = [DBAppDockItem alloc];
  bundleIdentifier8 = [v36 bundleIdentifier];
  v41 = [(DBAppDockItem *)v39 initWithBundleIdentifier:bundleIdentifier8 category:0 active:0];

  [v115 addObject:v41];
LABEL_30:
  v110 = v10;
  traitCollection = [(DBAppDockViewController *)self traitCollection];
  [traitCollection displayScale];
  [_TtC9DashBoard11DBIconImage dockIconImageInfoForScale:?];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;

  navigationAppButton = [(DBAppDockViewController *)self navigationAppButton];
  navigationAppButton4 = navigationAppButton;
  if (v116)
  {

    if (!navigationAppButton4)
    {
      v53 = [_TtC9DashBoard15DBAppDockButton alloc];
      iconProvider = [(DBAppDockViewController *)self iconProvider];
      v55 = [(DBAppDockButton *)v53 initWithIconProvider:iconProvider iconImageInfo:v44, v46, v48, v50];

      [(DBAppDockViewController *)self _updateNavigationButtonSizeConstraints];
      v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"CARAppDockButton-Navigation"];
      [(DBAppDockButton *)v55 setAccessibilityLabel:v56];

      [(DBAppDockButton *)v55 setAccessibilityIdentifier:@"CARAppDockButton-Navigation"];
      [(DBAppDockViewController *)self setNavigationAppButton:v55];
      navigationAppButton2 = [(DBAppDockViewController *)self navigationAppButton];
      [navigationAppButton2 addTarget:self action:sel__dockButtonPressed_ forControlEvents:64];

      dockItemStackView = [(DBAppDockViewController *)self dockItemStackView];
      [dockItemStackView insertArrangedSubview:v55 atIndex:0];
    }

    navigationAppButton3 = [(DBAppDockViewController *)self navigationAppButton];
    bundleIdentifier9 = [v116 bundleIdentifier];
    [navigationAppButton3 setBundleIdentifier:bundleIdentifier9];

    navigationAppButton4 = [(DBAppDockViewController *)self navigationAppButton];
    [navigationAppButton4 setHidden:0];
    v61 = 1;
  }

  else
  {
    [navigationAppButton setHidden:1];
    v61 = 0;
  }

  if (v21)
  {
    audioAppButton = [(DBAppDockViewController *)self audioAppButton];

    if (!audioAppButton)
    {
      v63 = [_TtC9DashBoard15DBAppDockButton alloc];
      iconProvider2 = [(DBAppDockViewController *)self iconProvider];
      v65 = [(DBAppDockButton *)v63 initWithIconProvider:iconProvider2 iconImageInfo:v44, v46, v48, v50];

      [(DBAppDockViewController *)self _updateAudioButtonSizeConstraints];
      [MEMORY[0x277CCACA8] stringWithFormat:@"CARAppDockButton-Audio"];
      v66 = v41;
      v67 = v33;
      v68 = v13;
      v69 = v21;
      v71 = v70 = v36;
      [(DBAppDockButton *)v65 setAccessibilityLabel:v71];

      v36 = v70;
      v21 = v69;
      v13 = v68;
      v33 = v67;
      v41 = v66;
      [(DBAppDockButton *)v65 setAccessibilityIdentifier:@"CARAppDockButton-Audio"];
      [(DBAppDockViewController *)self setAudioAppButton:v65];
      audioAppButton2 = [(DBAppDockViewController *)self audioAppButton];
      [audioAppButton2 addTarget:self action:sel__dockButtonPressed_ forControlEvents:64];

      dockItemStackView2 = [(DBAppDockViewController *)self dockItemStackView];
      [dockItemStackView2 insertArrangedSubview:v65 atIndex:v61];
    }

    ++v61;
    audioAppButton3 = [(DBAppDockViewController *)self audioAppButton];
    bundleIdentifier10 = [(DBAppDockItem *)v21 bundleIdentifier];
    [audioAppButton3 setBundleIdentifier:bundleIdentifier10];
  }

  audioAppButton4 = [(DBAppDockViewController *)self audioAppButton];
  [audioAppButton4 setHidden:v21 == 0];

  if (v33)
  {
    communicationAppButton = [(DBAppDockViewController *)self communicationAppButton];

    if (!communicationAppButton)
    {
      v78 = [_TtC9DashBoard15DBAppDockButton alloc];
      iconProvider3 = [(DBAppDockViewController *)self iconProvider];
      v80 = [(DBAppDockButton *)v78 initWithIconProvider:iconProvider3 iconImageInfo:v44, v46, v48, v50];

      [(DBAppDockViewController *)self _updateCommunicationButtonSizeConstraints];
      [MEMORY[0x277CCACA8] stringWithFormat:@"CARAppDockButton-Communication"];
      v81 = v41;
      v82 = v33;
      v83 = v13;
      v84 = v21;
      v86 = v85 = v36;
      [(DBAppDockButton *)v80 setAccessibilityLabel:v86];

      v36 = v85;
      v21 = v84;
      v13 = v83;
      v33 = v82;
      v41 = v81;
      [(DBAppDockButton *)v80 setAccessibilityIdentifier:@"CARAppDockButton-Communication"];
      [(DBAppDockViewController *)self setCommunicationAppButton:v80];
      communicationAppButton2 = [(DBAppDockViewController *)self communicationAppButton];
      [communicationAppButton2 addTarget:self action:sel__dockButtonPressed_ forControlEvents:64];

      dockItemStackView3 = [(DBAppDockViewController *)self dockItemStackView];
      [dockItemStackView3 insertArrangedSubview:v80 atIndex:v61];
    }

    ++v61;
    communicationAppButton3 = [(DBAppDockViewController *)self communicationAppButton];
    bundleIdentifier11 = [(DBAppDockItem *)v33 bundleIdentifier];
    [communicationAppButton3 setBundleIdentifier:bundleIdentifier11];
  }

  communicationAppButton4 = [(DBAppDockViewController *)self communicationAppButton];
  [communicationAppButton4 setHidden:v33 == 0];

  if (v41)
  {
    otherAppButton = [(DBAppDockViewController *)self otherAppButton];

    if (!otherAppButton)
    {
      v93 = [_TtC9DashBoard15DBAppDockButton alloc];
      iconProvider4 = [(DBAppDockViewController *)self iconProvider];
      v95 = [(DBAppDockButton *)v93 initWithIconProvider:iconProvider4 iconImageInfo:v44, v46, v48, v50];

      [(DBAppDockViewController *)self _updateOtherButtonSizeConstraints];
      [MEMORY[0x277CCACA8] stringWithFormat:@"CARAppDockButton-Other"];
      v96 = v41;
      v97 = v33;
      v98 = v13;
      v99 = v21;
      v101 = v100 = v36;
      [(DBAppDockButton *)v95 setAccessibilityLabel:v101];

      v36 = v100;
      v21 = v99;
      v13 = v98;
      v33 = v97;
      v41 = v96;
      [(DBAppDockButton *)v95 setAccessibilityIdentifier:@"CARAppDockButton-Other"];
      [(DBAppDockViewController *)self setOtherAppButton:v95];
      otherAppButton2 = [(DBAppDockViewController *)self otherAppButton];
      [otherAppButton2 addTarget:self action:sel__dockButtonPressed_ forControlEvents:64];

      dockItemStackView4 = [(DBAppDockViewController *)self dockItemStackView];
      [dockItemStackView4 insertArrangedSubview:v95 atIndex:v61];
    }

    otherAppButton3 = [(DBAppDockViewController *)self otherAppButton];
    bundleIdentifier12 = [(DBAppDockItem *)v41 bundleIdentifier];
    [otherAppButton3 setBundleIdentifier:bundleIdentifier12];
  }

  otherAppButton4 = [(DBAppDockViewController *)self otherAppButton];
  [otherAppButton4 setHidden:v41 == 0];

  v107 = [v115 copy];

  return v107;
}

uint64_t __51__DBAppDockViewController__generateOrderedAppItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 iconProvider];
  v6 = [v4 bundleIdentifier];

  v7 = [v5 iconForIdentifier:v6];

  v8 = [*(a1 + 32) iconProvider];
  v9 = [v8 isIconVisible:v7];

  return v9;
}

- (void)_dockButtonPressed:(id)pressed
{
  v11 = *MEMORY[0x277D85DE8];
  pressedCopy = pressed;
  v5 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [pressedCopy bundleIdentifier];
    v9 = 138412290;
    v10 = bundleIdentifier;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Selected app dock item for bundle identifier %@", &v9, 0xCu);
  }

  appDockViewControllerDelegate = [(DBAppDockViewController *)self appDockViewControllerDelegate];
  bundleIdentifier2 = [pressedCopy bundleIdentifier];
  [appDockViewControllerDelegate appDockViewController:self didSelectBundleID:bundleIdentifier2];
}

- (void)_updateAppDockButtonForBundleIdentifier:(id)identifier animated:(BOOL)animated
{
  animatedCopy = animated;
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  appHistory = [(DBAppDockViewController *)self appHistory];
  v8 = [appHistory appDockCategoryForBundleIdentifier:identifierCopy];

  otherAppCategories = [(DBAppDockViewController *)self otherAppCategories];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v11 = [otherAppCategories containsObject:v10];

  v12 = 0;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = v8;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v18 = DBLogForCategory(6uLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = identifierCopy;
        _os_log_impl(&dword_248146000, v18, OS_LOG_TYPE_DEFAULT, "Updating audio bundle identifier in dock to %@", &v19, 0xCu);
      }

      audioAppButton = [(DBAppDockViewController *)self audioAppButton];
      goto LABEL_21;
    }

    if (v13 == 3)
    {
      v16 = DBLogForCategory(6uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = identifierCopy;
        _os_log_impl(&dword_248146000, v16, OS_LOG_TYPE_DEFAULT, "Updating communication bundle identifier in dock to %@", &v19, 0xCu);
      }

      audioAppButton = [(DBAppDockViewController *)self communicationAppButton];
      goto LABEL_21;
    }
  }

  else
  {
    if (!v13)
    {
      v17 = DBLogForCategory(6uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = identifierCopy;
        _os_log_impl(&dword_248146000, v17, OS_LOG_TYPE_DEFAULT, "Updating other bundle identifier in dock to %@", &v19, 0xCu);
      }

      audioAppButton = [(DBAppDockViewController *)self otherAppButton];
      goto LABEL_21;
    }

    if (v13 == 1)
    {
      v14 = DBLogForCategory(6uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = identifierCopy;
        _os_log_impl(&dword_248146000, v14, OS_LOG_TYPE_DEFAULT, "Updating navigation bundle identifier in dock to %@", &v19, 0xCu);
      }

      audioAppButton = [(DBAppDockViewController *)self navigationAppButton];
LABEL_21:
      v12 = audioAppButton;
    }
  }

  [v12 setBundleIdentifier:identifierCopy animated:animatedCopy];
}

- (void)setActiveBundleIdentifier:(id)identifier animated:(BOOL)animated
{
  animatedCopy = animated;
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 138412290;
    v30 = identifierCopy;
    _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Evaluating active dock bundle identifier %@", &v29, 0xCu);
  }

  if ([(NSString *)identifierCopy isEqualToString:@"com.apple.InCallService"])
  {
    mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
    displayedAudioAndVideoCalls = [mEMORY[0x277D6EDF8] displayedAudioAndVideoCalls];

    if ([displayedAudioAndVideoCalls count] < 2)
    {
      [displayedAudioAndVideoCalls firstObject];
    }

    else
    {
      [displayedAudioAndVideoCalls bs_firstObjectPassingTest:&__block_literal_global_24];
    }
    v10 = ;
    provider = [v10 provider];
    displayAppBundleIdentifier = [provider displayAppBundleIdentifier];

    identifierCopy = displayAppBundleIdentifier;
  }

  if (!identifierCopy || (-[DBAppDockViewController appHistory](self, "appHistory"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 isBundleIdentifierValidForDock:identifierCopy], v13, (v14 & 1) != 0))
  {
    iconProvider = [(DBAppDockViewController *)self iconProvider];
    v16 = [iconProvider iconForIdentifier:identifierCopy];

    if (!identifierCopy || v16 && (-[DBAppDockViewController iconProvider](self, "iconProvider"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 isIconVisible:v16], v17, (v18 & 1) != 0))
    {
      if (self->_activeBundleIdentifier != identifierCopy)
      {
        v19 = [(NSString *)identifierCopy copy];
        activeBundleIdentifier = self->_activeBundleIdentifier;
        self->_activeBundleIdentifier = v19;

        nowPlayingObserver = [(DBAppDockViewController *)self nowPlayingObserver];
        isPlaying = [nowPlayingObserver isPlaying];

        environmentConfiguration = [(DBAppDockViewController *)self environmentConfiguration];
        navigationStateProvider = [environmentConfiguration navigationStateProvider];
        navigatingIdentifiers = [navigationStateProvider navigatingIdentifiers];
        v26 = [navigatingIdentifiers count];

        if (identifierCopy)
        {
          [(DBAppDockViewController *)self _updateAppDockButtonForBundleIdentifier:identifierCopy animated:animatedCopy];
          [(DBAppDockViewController *)self _updateNowPlayingBundleIdentifier:animatedCopy];
        }

        if (isPlaying)
        {
          [(DBAppDockViewController *)self _updateNowPlayingBundleIdentifier:animatedCopy];
        }

        if (v26)
        {
          [(DBAppDockViewController *)self _updateNavigationBundleIdentifier:animatedCopy];
        }

        goto LABEL_28;
      }

      v27 = DBLogForCategory(6uLL);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        v28 = "No need for dock bundle identifier update - already visible.";
        goto LABEL_26;
      }
    }

    else
    {
      v27 = DBLogForCategory(6uLL);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        v28 = "Bundle identifier is not visible in layout.";
LABEL_26:
        _os_log_impl(&dword_248146000, v27, OS_LOG_TYPE_DEFAULT, v28, &v29, 2u);
      }
    }

    goto LABEL_28;
  }

  v16 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v29) = 0;
    _os_log_impl(&dword_248146000, v16, OS_LOG_TYPE_DEFAULT, "Bundle identifier is not valid for dock.", &v29, 2u);
  }

LABEL_28:
}

- (void)_updateNavigationBundleIdentifier:(BOOL)identifier
{
  identifierCopy = identifier;
  v30 = *MEMORY[0x277D85DE8];
  activeBundleIdentifier = [(DBAppDockViewController *)self activeBundleIdentifier];
  if (activeBundleIdentifier)
  {
    v6 = activeBundleIdentifier;
    appHistory = [(DBAppDockViewController *)self appHistory];
    activeBundleIdentifier2 = [(DBAppDockViewController *)self activeBundleIdentifier];
    v9 = [appHistory appDockCategoryForBundleIdentifier:activeBundleIdentifier2];

    if (v9 == 1)
    {
      mostRecentDashboardNavigatingApp = DBLogForCategory(6uLL);
      if (os_log_type_enabled(mostRecentDashboardNavigatingApp, OS_LOG_TYPE_DEFAULT))
      {
        activeBundleIdentifier3 = [(DBAppDockViewController *)self activeBundleIdentifier];
        v28 = 138543362;
        v29 = activeBundleIdentifier3;
        _os_log_impl(&dword_248146000, mostRecentDashboardNavigatingApp, OS_LOG_TYPE_DEFAULT, "Active bundle identifier is a maps app; not updating app dock. %{public}@", &v28, 0xCu);
      }

      goto LABEL_19;
    }
  }

  activeBundleIdentifier4 = [(DBAppDockViewController *)self activeBundleIdentifier];
  if (!activeBundleIdentifier4 || (v13 = activeBundleIdentifier4, -[DBAppDockViewController appHistory](self, "appHistory"), v14 = objc_claimAutoreleasedReturnValue(), -[DBAppDockViewController activeBundleIdentifier](self, "activeBundleIdentifier"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v14 appDockCategoryForBundleIdentifier:v15], v15, v14, v13, v16 != 1))
  {
    environmentConfiguration = [(DBAppDockViewController *)self environmentConfiguration];
    navigationStateProvider = [environmentConfiguration navigationStateProvider];
    mostRecentDashboardNavigatingApp = [navigationStateProvider mostRecentDashboardNavigatingApp];

    if (!mostRecentDashboardNavigatingApp)
    {
      environmentConfiguration2 = [(DBAppDockViewController *)self environmentConfiguration];
      navigationStateProvider2 = [environmentConfiguration2 navigationStateProvider];
      mostRecentDashboardNavigatingApp = [navigationStateProvider2 mostRecentNavigatingApp];

      if (!mostRecentDashboardNavigatingApp)
      {
        mostRecentDashboardNavigatingApp = DBLogForCategory(6uLL);
        if (os_log_type_enabled(mostRecentDashboardNavigatingApp, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v28) = 0;
          _os_log_impl(&dword_248146000, mostRecentDashboardNavigatingApp, OS_LOG_TYPE_DEFAULT, "No available navigation application; not updating app dock.", &v28, 2u);
        }

        goto LABEL_19;
      }
    }

    iconProvider = [(DBAppDockViewController *)self iconProvider];
    v22 = [iconProvider iconForIdentifier:mostRecentDashboardNavigatingApp];

    if (v22)
    {
      iconProvider2 = [(DBAppDockViewController *)self iconProvider];
      if ([iconProvider2 isIconVisible:v22])
      {
        appHistory2 = [(DBAppDockViewController *)self appHistory];
        v25 = [appHistory2 isBundleIdentifierValidForDock:mostRecentDashboardNavigatingApp];

        if (v25)
        {
          v26 = DBLogForCategory(6uLL);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v28 = 138412290;
            v29 = mostRecentDashboardNavigatingApp;
            _os_log_impl(&dword_248146000, v26, OS_LOG_TYPE_DEFAULT, "Updating navigation app dock bundle identifier to %@", &v28, 0xCu);
          }

          navigationAppButton = [(DBAppDockViewController *)self navigationAppButton];
          [navigationAppButton setBundleIdentifier:mostRecentDashboardNavigatingApp animated:identifierCopy];
LABEL_18:

LABEL_19:
          return;
        }
      }

      else
      {
      }
    }

    navigationAppButton = DBLogForCategory(6uLL);
    if (os_log_type_enabled(navigationAppButton, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_248146000, navigationAppButton, OS_LOG_TYPE_DEFAULT, "Unable to update navigation bundle identifier.", &v28, 2u);
    }

    goto LABEL_18;
  }
}

- (void)_updateNowPlayingBundleIdentifier:(BOOL)identifier
{
  identifierCopy = identifier;
  v25 = *MEMORY[0x277D85DE8];
  if (![(DBAppDockViewController *)self isRadioActive])
  {
    activeBundleIdentifier = [(DBAppDockViewController *)self activeBundleIdentifier];
    if (activeBundleIdentifier)
    {
      v6 = activeBundleIdentifier;
      appHistory = [(DBAppDockViewController *)self appHistory];
      activeBundleIdentifier2 = [(DBAppDockViewController *)self activeBundleIdentifier];
      v9 = [appHistory appDockCategoryForBundleIdentifier:activeBundleIdentifier2];

      if (v9 == 2)
      {
        return;
      }
    }

    nowPlayingObserver = [(DBAppDockViewController *)self nowPlayingObserver];
    nowPlayingApplication = [nowPlayingObserver nowPlayingApplication];
    bundleIdentifier = [nowPlayingApplication bundleIdentifier];

    if (bundleIdentifier)
    {
      nowPlayingObserver2 = [(DBAppDockViewController *)self nowPlayingObserver];
      isPlaying = [nowPlayingObserver2 isPlaying];

      if (isPlaying)
      {
        iconProvider = [(DBAppDockViewController *)self iconProvider];
        v16 = [iconProvider iconForIdentifier:bundleIdentifier];

        if (v16)
        {
          iconProvider2 = [(DBAppDockViewController *)self iconProvider];
          if ([iconProvider2 isIconVisible:v16])
          {
            appHistory2 = [(DBAppDockViewController *)self appHistory];
            v19 = [appHistory2 isBundleIdentifierValidForDock:bundleIdentifier];

            if (v19)
            {
              v20 = DBLogForCategory(6uLL);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                v23 = 138412290;
                v24 = bundleIdentifier;
                _os_log_impl(&dword_248146000, v20, OS_LOG_TYPE_DEFAULT, "Updating now playing app dock bundle identifier to %@", &v23, 0xCu);
              }

              [(DBAppDockViewController *)self _updateAppDockButtonForBundleIdentifier:bundleIdentifier animated:identifierCopy];
              goto LABEL_24;
            }
          }

          else
          {
          }
        }

        v22 = DBLogForCategory(6uLL);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v23) = 0;
          _os_log_impl(&dword_248146000, v22, OS_LOG_TYPE_DEFAULT, "Unable to update now playing bundle identifier.", &v23, 2u);
        }

        goto LABEL_24;
      }

      v16 = DBLogForCategory(6uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        v21 = "Now playing app is not playing; not updating app dock.";
        goto LABEL_19;
      }
    }

    else
    {
      v16 = DBLogForCategory(6uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        v21 = "No available now playing application; not updating app dock.";
LABEL_19:
        _os_log_impl(&dword_248146000, v16, OS_LOG_TYPE_DEFAULT, v21, &v23, 2u);
      }
    }

LABEL_24:

    return;
  }

  [(DBAppDockViewController *)self _updateAppDockButtonForBundleIdentifier:@"com.apple.CarRadio" animated:identifierCopy];
}

- (void)nowPlayingObserver:(id)observer didChangeNowPlayingApplication:(id)application
{
  if (application)
  {
    applicationCopy = application;
    bundleIdentifier = [applicationCopy bundleIdentifier];
    self->_isRadioActive = [bundleIdentifier isEqualToString:@"com.apple.CarRadio"];

    appPolicy = [applicationCopy appPolicy];

    if ([appPolicy isCarPlaySupported])
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __77__DBAppDockViewController_nowPlayingObserver_didChangeNowPlayingApplication___block_invoke;
      block[3] = &unk_278F01580;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

- (void)nowPlayingObserver:(id)observer didUpdatePlaybackState:(BOOL)state inApplication:(id)application
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__DBAppDockViewController_nowPlayingObserver_didUpdatePlaybackState_inApplication___block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)navigationStateProvider:(id)provider navigatingIdentifiersDidChange:(id)change
{
  v9 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  BSDispatchQueueAssertMain();
  v6 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = changeCopy;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Navigating identifiers did change: %{public}@", &v7, 0xCu);
  }

  [(DBAppDockViewController *)self _updateNavigationBundleIdentifier:1];
}

- (void)activeIntentWithBundleId:(id)id
{
  idCopy = id;
  [(DBAppDockViewController *)self setActiveBundleIdentifier:idCopy animated:1];
  environmentConfiguration = [(DBAppDockViewController *)self environmentConfiguration];
  analytics = [environmentConfiguration analytics];
  [analytics siriDidStartHostingBundleIdentifier:idCopy];
}

- (id)preferredFocusEnvironments
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  navigationAppButton = [(DBAppDockViewController *)self navigationAppButton];
  if (navigationAppButton)
  {
    navigationAppButton4 = navigationAppButton;
    navigationAppButton2 = [(DBAppDockViewController *)self navigationAppButton];
    if ([navigationAppButton2 isHidden])
    {
    }

    else
    {
      navigationAppButton3 = [(DBAppDockViewController *)self navigationAppButton];
      superview = [navigationAppButton3 superview];

      if (!superview)
      {
        goto LABEL_7;
      }

      navigationAppButton4 = [(DBAppDockViewController *)self navigationAppButton];
      [v3 addObject:navigationAppButton4];
    }
  }

LABEL_7:
  audioAppButton = [(DBAppDockViewController *)self audioAppButton];
  if (!audioAppButton)
  {
    goto LABEL_13;
  }

  audioAppButton4 = audioAppButton;
  audioAppButton2 = [(DBAppDockViewController *)self audioAppButton];
  if ([audioAppButton2 isHidden])
  {
  }

  else
  {
    audioAppButton3 = [(DBAppDockViewController *)self audioAppButton];
    superview2 = [audioAppButton3 superview];

    if (!superview2)
    {
      goto LABEL_13;
    }

    audioAppButton4 = [(DBAppDockViewController *)self audioAppButton];
    [v3 addObject:audioAppButton4];
  }

LABEL_13:
  communicationAppButton = [(DBAppDockViewController *)self communicationAppButton];
  if (!communicationAppButton)
  {
    goto LABEL_19;
  }

  communicationAppButton4 = communicationAppButton;
  communicationAppButton2 = [(DBAppDockViewController *)self communicationAppButton];
  if ([communicationAppButton2 isHidden])
  {
  }

  else
  {
    communicationAppButton3 = [(DBAppDockViewController *)self communicationAppButton];
    superview3 = [communicationAppButton3 superview];

    if (!superview3)
    {
      goto LABEL_19;
    }

    communicationAppButton4 = [(DBAppDockViewController *)self communicationAppButton];
    [v3 addObject:communicationAppButton4];
  }

LABEL_19:
  otherAppButton = [(DBAppDockViewController *)self otherAppButton];
  if (!otherAppButton)
  {
    goto LABEL_25;
  }

  otherAppButton4 = otherAppButton;
  otherAppButton2 = [(DBAppDockViewController *)self otherAppButton];
  if ([otherAppButton2 isHidden])
  {
  }

  else
  {
    otherAppButton3 = [(DBAppDockViewController *)self otherAppButton];
    superview4 = [otherAppButton3 superview];

    if (!superview4)
    {
      goto LABEL_25;
    }

    otherAppButton4 = [(DBAppDockViewController *)self otherAppButton];
    [v3 addObject:otherAppButton4];
  }

LABEL_25:
  v24 = [v3 copy];
  environmentConfiguration = [(DBAppDockViewController *)self environmentConfiguration];
  if ([environmentConfiguration currentStatusBarEdge] == 3)
  {
  }

  else
  {
    environmentConfiguration2 = [(DBAppDockViewController *)self environmentConfiguration];
    currentStatusBarEdge = [environmentConfiguration2 currentStatusBarEdge];

    if (currentStatusBarEdge != 1)
    {
      goto LABEL_30;
    }
  }

  traitCollection = [(DBAppDockViewController *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];
  environmentConfiguration3 = [(DBAppDockViewController *)self environmentConfiguration];
  isRightHandDrive = [environmentConfiguration3 isRightHandDrive];

  if ((layoutDirection != 1) != isRightHandDrive)
  {
    bs_reverse = [v24 bs_reverse];
    goto LABEL_31;
  }

LABEL_30:
  bs_reverse = v24;
LABEL_31:
  v33 = bs_reverse;

  return v33;
}

- (void)_updateAppDockButtonsTraits
{
  v25 = *MEMORY[0x277D85DE8];
  traitCollection = [(DBAppDockViewController *)self traitCollection];
  v4 = objc_opt_self();
  v5 = [traitCollection objectForTrait:v4];

  if (v5)
  {
    [v5 appearanceType];
    if (SBHIconImageAppearanceTypeIsDark())
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    dockItemStackView = [(DBAppDockViewController *)self dockItemStackView];
    traitOverrides = [dockItemStackView traitOverrides];
    v9 = objc_opt_self();
    [traitOverrides setObject:v5 forTrait:v9];

    dockItemStackView2 = [(DBAppDockViewController *)self dockItemStackView];
    traitOverrides2 = [dockItemStackView2 traitOverrides];
    [traitOverrides2 setUserInterfaceStyle:v6];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    _appDockButtons = [(DBAppDockViewController *)self _appDockButtons];
    v13 = [_appDockButtons countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(_appDockButtons);
          }

          v17 = *(*(&v20 + 1) + 8 * i);
          traitOverrides3 = [v17 traitOverrides];
          traitCollection2 = [(DBAppDockViewController *)self traitCollection];
          [traitOverrides3 setUserInterfaceStyle:{objc_msgSend(traitCollection2, "userInterfaceStyle")}];

          [v17 updateTraitsIfNeeded];
        }

        v14 = [_appDockButtons countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }
  }
}

- (id)_appDockButtons
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  navigationAppButton = [(DBAppDockViewController *)self navigationAppButton];

  if (navigationAppButton)
  {
    navigationAppButton2 = [(DBAppDockViewController *)self navigationAppButton];
    [v3 addObject:navigationAppButton2];
  }

  audioAppButton = [(DBAppDockViewController *)self audioAppButton];

  if (audioAppButton)
  {
    audioAppButton2 = [(DBAppDockViewController *)self audioAppButton];
    [v3 addObject:audioAppButton2];
  }

  communicationAppButton = [(DBAppDockViewController *)self communicationAppButton];

  if (communicationAppButton)
  {
    communicationAppButton2 = [(DBAppDockViewController *)self communicationAppButton];
    [v3 addObject:communicationAppButton2];
  }

  otherAppButton = [(DBAppDockViewController *)self otherAppButton];

  if (otherAppButton)
  {
    otherAppButton2 = [(DBAppDockViewController *)self otherAppButton];
    [v3 addObject:otherAppButton2];
  }

  return v3;
}

- (void)_refreshAppDock
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__DBAppDockViewController__refreshAppDock__block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __42__DBAppDockViewController__refreshAppDock__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _generateOrderedAppItems];
  [v1 setOrderedAppItems:v2];
}

- (BOOL)_mayShowCommunicationAppCategory
{
  if (![(DBAppDockViewController *)self isViewLoaded])
  {
    return 0;
  }

  dockItemStackView = [(DBAppDockViewController *)self dockItemStackView];
  axis = [dockItemStackView axis];

  if (axis == 1)
  {
    if (_os_feature_enabled_impl() && (-[DBAppDockViewController environmentConfiguration](self, "environmentConfiguration"), v5 = objc_claimAutoreleasedReturnValue(), [v5 systemUILayout], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "hasDefrostPersistentElement"), v6, v5, v7))
    {
      view = [(DBAppDockViewController *)self view];
      [view frame];
      v10 = v9 + -30.0;
    }

    else
    {
      view = [(DBAppDockViewController *)self view];
      [view frame];
      v10 = v12;
    }
  }

  else
  {
    view = [(DBAppDockViewController *)self view];
    [view frame];
  }

  v11 = v10 / 37.0 >= 4.0;

  return v11;
}

@end