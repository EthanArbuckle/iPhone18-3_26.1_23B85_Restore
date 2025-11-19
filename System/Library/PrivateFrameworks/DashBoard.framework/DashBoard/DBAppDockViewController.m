@interface DBAppDockViewController
- (BOOL)_mayShowCommunicationAppCategory;
- (DBAppDockViewController)initWithAppHistory:(id)a3 iconProvider:(id)a4 environmentConfiguration:(id)a5;
- (DBAppDockViewControllerDelegate)appDockViewControllerDelegate;
- (DBIconProviding)iconProvider;
- (id)_appDockButtons;
- (id)_buttonSizeConstraintsForButton:(id)a3;
- (id)_generateOrderedAppItems;
- (id)otherAppCategories;
- (id)preferredFocusEnvironments;
- (void)_dockButtonPressed:(id)a3;
- (void)_refreshAppDock;
- (void)_updateAppDockButtonForBundleIdentifier:(id)a3 animated:(BOOL)a4;
- (void)_updateAppDockButtonsTraits;
- (void)_updateAudioButtonSizeConstraints;
- (void)_updateCommunicationButtonSizeConstraints;
- (void)_updateNavigationBundleIdentifier:(BOOL)a3;
- (void)_updateNavigationButtonSizeConstraints;
- (void)_updateNowPlayingBundleIdentifier:(BOOL)a3;
- (void)_updateOtherButtonSizeConstraints;
- (void)activeIntentWithBundleId:(id)a3;
- (void)dealloc;
- (void)navigationStateProvider:(id)a3 navigatingIdentifiersDidChange:(id)a4;
- (void)nowPlayingObserver:(id)a3 didChangeNowPlayingApplication:(id)a4;
- (void)nowPlayingObserver:(id)a3 didUpdatePlaybackState:(BOOL)a4 inApplication:(id)a5;
- (void)setActiveBundleIdentifier:(id)a3 animated:(BOOL)a4;
- (void)setDockEnabled:(BOOL)a3;
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

- (DBAppDockViewController)initWithAppHistory:(id)a3 iconProvider:(id)a4 environmentConfiguration:(id)a5
{
  v26[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v25.receiver = self;
  v25.super_class = DBAppDockViewController;
  v12 = [(DBAppDockViewController *)&v25 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_environmentConfiguration, a5);
    objc_storeStrong(&v13->_appHistory, a3);
    v14 = [[DBNowPlayingObserver alloc] initWithEnvironmentConfiguration:v11];
    nowPlayingObserver = v13->_nowPlayingObserver;
    v13->_nowPlayingObserver = v14;

    v16 = [(DBAppDockViewController *)v13 nowPlayingObserver];
    [v16 setDelegate:v13];

    objc_storeWeak(&v13->_iconProvider, v10);
    v17 = [v11 navigationStateProvider];
    [v17 addObserver:v13];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v13, _appDockRefreshAppsCallBack, @"com.apple.CarPlay.internal.refreshApps", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v19 = [MEMORY[0x277CCAB98] defaultCenter];
    [v19 addObserver:v13 selector:sel__refreshAppDock name:@"CARRefreshAppDockNotification" object:0];

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
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = DBAppDockViewController;
  [(DBAppDockViewController *)&v5 dealloc];
}

- (void)viewWillLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = DBAppDockViewController;
  [(DBAppDockViewController *)&v10 viewWillLayoutSubviews];
  v3 = [(DBAppDockViewController *)self environmentConfiguration];
  v4 = [v3 hasDualStatusBar];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(DBAppDockViewController *)self environmentConfiguration];
    if ([v6 currentStatusBarEdge] == 1)
    {

      v5 = 0;
    }

    else
    {
      v7 = [(DBAppDockViewController *)self environmentConfiguration];
      v5 = [v7 currentStatusBarEdge] != 3;
    }
  }

  v8 = [(DBAppDockViewController *)self dockItemStackView];
  [v8 setAxis:v5];

  LODWORD(v8) = [(DBAppDockViewController *)self showCommunicationApp];
  if (v8 != [(DBAppDockViewController *)self _mayShowCommunicationAppCategory])
  {
    [(DBAppDockViewController *)self setShowCommunicationApp:[(DBAppDockViewController *)self _mayShowCommunicationAppCategory]];
    v9 = [(DBAppDockViewController *)self _generateOrderedAppItems];
    [(DBAppDockViewController *)self setOrderedAppItems:v9];
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
  v5 = [(DBAppDockViewController *)self view];
  [v5 addSubview:v3];

  v15 = MEMORY[0x277CCAAD0];
  v16 = [(DBAppDockViewController *)self view];
  v6 = [v16 centerYAnchor];
  v7 = [v3 centerYAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v18[0] = v8;
  v9 = [(DBAppDockViewController *)self view];
  v10 = [v9 widthAnchor];
  v11 = [v3 widthAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v18[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  [v15 activateConstraints:v13];

  [(DBAppDockViewController *)self setDockItemStackView:v3];
  v14 = [(DBAppDockViewController *)self _generateOrderedAppItems];
  [(DBAppDockViewController *)self setOrderedAppItems:v14];

  [(DBAppDockViewController *)self setDockEnabled:1];
}

- (void)setDockEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(DBAppDockViewController *)self navigationAppButton];
  [v5 setEnabled:v3];

  v6 = [(DBAppDockViewController *)self audioAppButton];
  [v6 setEnabled:v3];

  v7 = [(DBAppDockViewController *)self communicationAppButton];
  [v7 setEnabled:v3];

  v8 = [(DBAppDockViewController *)self otherAppButton];
  [v8 setEnabled:v3];
}

- (id)_buttonSizeConstraintsForButton:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = 45.0;
  v5 = a3;
  v6 = [(DBAppDockViewController *)self environmentConfiguration];
  v7 = [v6 currentStatusBarEdge];

  if (v7 == 2)
  {
    v8 = 45.0;
  }

  else
  {
    v8 = 37.0;
  }

  if (v7 == 2)
  {
    v4 = 37.0;
  }

  v9 = [v5 widthAnchor];
  v10 = [v9 constraintEqualToConstant:v8];
  v15[0] = v10;
  v11 = [v5 heightAnchor];

  v12 = [v11 constraintEqualToConstant:v4];
  v15[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

  return v13;
}

- (void)_updateNavigationButtonSizeConstraints
{
  v3 = [(DBAppDockViewController *)self navigationAppButtonSizeConstraints];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v5 = [(DBAppDockViewController *)self navigationAppButtonSizeConstraints];
    [v4 deactivateConstraints:v5];
  }

  v6 = [(DBAppDockViewController *)self navigationAppButton];

  if (v6)
  {
    v7 = [(DBAppDockViewController *)self navigationAppButton];
    v8 = [(DBAppDockViewController *)self _buttonSizeConstraintsForButton:v7];
    [(DBAppDockViewController *)self setNavigationAppButtonSizeConstraints:v8];

    v9 = MEMORY[0x277CCAAD0];
    v10 = [(DBAppDockViewController *)self navigationAppButtonSizeConstraints];
    [v9 activateConstraints:v10];
  }

  else
  {

    [(DBAppDockViewController *)self setNavigationAppButtonSizeConstraints:0];
  }
}

- (void)_updateAudioButtonSizeConstraints
{
  v3 = [(DBAppDockViewController *)self audioAppButtonSizeConstraints];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v5 = [(DBAppDockViewController *)self audioAppButtonSizeConstraints];
    [v4 deactivateConstraints:v5];
  }

  v6 = [(DBAppDockViewController *)self audioAppButton];

  if (v6)
  {
    v7 = [(DBAppDockViewController *)self audioAppButton];
    v8 = [(DBAppDockViewController *)self _buttonSizeConstraintsForButton:v7];
    [(DBAppDockViewController *)self setAudioAppButtonSizeConstraints:v8];

    v9 = MEMORY[0x277CCAAD0];
    v10 = [(DBAppDockViewController *)self audioAppButtonSizeConstraints];
    [v9 activateConstraints:v10];
  }

  else
  {

    [(DBAppDockViewController *)self setAudioAppButtonSizeConstraints:0];
  }
}

- (void)_updateCommunicationButtonSizeConstraints
{
  v3 = [(DBAppDockViewController *)self communicationAppButtonSizeConstraints];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v5 = [(DBAppDockViewController *)self communicationAppButtonSizeConstraints];
    [v4 deactivateConstraints:v5];
  }

  v6 = [(DBAppDockViewController *)self communicationAppButton];

  if (v6)
  {
    v7 = [(DBAppDockViewController *)self communicationAppButton];
    v8 = [(DBAppDockViewController *)self _buttonSizeConstraintsForButton:v7];
    [(DBAppDockViewController *)self setCommunicationAppButtonSizeConstraints:v8];

    v9 = MEMORY[0x277CCAAD0];
    v10 = [(DBAppDockViewController *)self communicationAppButtonSizeConstraints];
    [v9 activateConstraints:v10];
  }

  else
  {

    [(DBAppDockViewController *)self setCommunicationAppButtonSizeConstraints:0];
  }
}

- (void)_updateOtherButtonSizeConstraints
{
  v3 = [(DBAppDockViewController *)self otherAppButtonSizeConstraints];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v5 = [(DBAppDockViewController *)self otherAppButtonSizeConstraints];
    [v4 deactivateConstraints:v5];
  }

  v6 = [(DBAppDockViewController *)self otherAppButton];

  if (v6)
  {
    v7 = [(DBAppDockViewController *)self otherAppButton];
    v8 = [(DBAppDockViewController *)self _buttonSizeConstraintsForButton:v7];
    [(DBAppDockViewController *)self setOtherAppButtonSizeConstraints:v8];

    v9 = MEMORY[0x277CCAAD0];
    v10 = [(DBAppDockViewController *)self otherAppButtonSizeConstraints];
    [v9 activateConstraints:v10];
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
  v3 = [(DBAppDockViewController *)self showCommunicationApp];
  v4 = [(DBAppDockViewController *)self appHistory];
  v5 = [v4 orderedAppsMatchingDockCategory:1];

  v6 = [(DBAppDockViewController *)self appHistory];
  v7 = [v6 orderedAppsMatchingDockCategory:2];

  v8 = [(DBAppDockViewController *)self appHistory];
  v9 = [(DBAppDockViewController *)self otherAppCategories];
  v10 = [v8 orderedAppsMatchingDockCategories:v9 defaultAppPreferenceHints:v3];

  if ([(DBAppDockViewController *)self showCommunicationApp])
  {
    v11 = [(DBAppDockViewController *)self appHistory];
    v12 = [v11 orderedAppsMatchingDockCategory:3];
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
      v16 = [v114 bundleIdentifier];
      *buf = 138412290;
      v119 = v16;
      _os_log_impl(&dword_248146000, v15, OS_LOG_TYPE_DEFAULT, "Resolved maps app dock item to %@", buf, 0xCu);
    }

    v17 = [DBAppDockItem alloc];
    v18 = [v114 bundleIdentifier];
    v19 = [(DBAppDockItem *)v17 initWithBundleIdentifier:v18 category:1 active:0];

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
        v23 = [(DBAppDockItem *)v21 bundleIdentifier];
        *buf = 138412290;
        v119 = v23;
        _os_log_impl(&dword_248146000, v22, OS_LOG_TYPE_DEFAULT, "Resolved audio app dock item to %@", buf, 0xCu);

        v21 = v113;
      }

      v24 = [DBAppDockItem alloc];
      v25 = [(DBAppDockItem *)v21 bundleIdentifier];
      v21 = [(DBAppDockItem *)v24 initWithBundleIdentifier:v25 category:2 active:0];

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
      v30 = [v28 bundleIdentifier];
      *buf = 138412290;
      v119 = v30;
      _os_log_impl(&dword_248146000, v29, OS_LOG_TYPE_DEFAULT, "Resolved communication app dock item to %@", buf, 0xCu);
    }

    v31 = [DBAppDockItem alloc];
    v32 = [v28 bundleIdentifier];
    v33 = [(DBAppDockItem *)v31 initWithBundleIdentifier:v32 category:3 active:0];

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
    v38 = [v36 bundleIdentifier];
    *buf = 138412290;
    v119 = v38;
    _os_log_impl(&dword_248146000, v37, OS_LOG_TYPE_DEFAULT, "Resolved other app dock item to %@", buf, 0xCu);
  }

  v39 = [DBAppDockItem alloc];
  v40 = [v36 bundleIdentifier];
  v41 = [(DBAppDockItem *)v39 initWithBundleIdentifier:v40 category:0 active:0];

  [v115 addObject:v41];
LABEL_30:
  v110 = v10;
  v42 = [(DBAppDockViewController *)self traitCollection];
  [v42 displayScale];
  [_TtC9DashBoard11DBIconImage dockIconImageInfoForScale:?];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;

  v51 = [(DBAppDockViewController *)self navigationAppButton];
  v52 = v51;
  if (v116)
  {

    if (!v52)
    {
      v53 = [_TtC9DashBoard15DBAppDockButton alloc];
      v54 = [(DBAppDockViewController *)self iconProvider];
      v55 = [(DBAppDockButton *)v53 initWithIconProvider:v54 iconImageInfo:v44, v46, v48, v50];

      [(DBAppDockViewController *)self _updateNavigationButtonSizeConstraints];
      v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"CARAppDockButton-Navigation"];
      [(DBAppDockButton *)v55 setAccessibilityLabel:v56];

      [(DBAppDockButton *)v55 setAccessibilityIdentifier:@"CARAppDockButton-Navigation"];
      [(DBAppDockViewController *)self setNavigationAppButton:v55];
      v57 = [(DBAppDockViewController *)self navigationAppButton];
      [v57 addTarget:self action:sel__dockButtonPressed_ forControlEvents:64];

      v58 = [(DBAppDockViewController *)self dockItemStackView];
      [v58 insertArrangedSubview:v55 atIndex:0];
    }

    v59 = [(DBAppDockViewController *)self navigationAppButton];
    v60 = [v116 bundleIdentifier];
    [v59 setBundleIdentifier:v60];

    v52 = [(DBAppDockViewController *)self navigationAppButton];
    [v52 setHidden:0];
    v61 = 1;
  }

  else
  {
    [v51 setHidden:1];
    v61 = 0;
  }

  if (v21)
  {
    v62 = [(DBAppDockViewController *)self audioAppButton];

    if (!v62)
    {
      v63 = [_TtC9DashBoard15DBAppDockButton alloc];
      v64 = [(DBAppDockViewController *)self iconProvider];
      v65 = [(DBAppDockButton *)v63 initWithIconProvider:v64 iconImageInfo:v44, v46, v48, v50];

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
      v72 = [(DBAppDockViewController *)self audioAppButton];
      [v72 addTarget:self action:sel__dockButtonPressed_ forControlEvents:64];

      v73 = [(DBAppDockViewController *)self dockItemStackView];
      [v73 insertArrangedSubview:v65 atIndex:v61];
    }

    ++v61;
    v74 = [(DBAppDockViewController *)self audioAppButton];
    v75 = [(DBAppDockItem *)v21 bundleIdentifier];
    [v74 setBundleIdentifier:v75];
  }

  v76 = [(DBAppDockViewController *)self audioAppButton];
  [v76 setHidden:v21 == 0];

  if (v33)
  {
    v77 = [(DBAppDockViewController *)self communicationAppButton];

    if (!v77)
    {
      v78 = [_TtC9DashBoard15DBAppDockButton alloc];
      v79 = [(DBAppDockViewController *)self iconProvider];
      v80 = [(DBAppDockButton *)v78 initWithIconProvider:v79 iconImageInfo:v44, v46, v48, v50];

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
      v87 = [(DBAppDockViewController *)self communicationAppButton];
      [v87 addTarget:self action:sel__dockButtonPressed_ forControlEvents:64];

      v88 = [(DBAppDockViewController *)self dockItemStackView];
      [v88 insertArrangedSubview:v80 atIndex:v61];
    }

    ++v61;
    v89 = [(DBAppDockViewController *)self communicationAppButton];
    v90 = [(DBAppDockItem *)v33 bundleIdentifier];
    [v89 setBundleIdentifier:v90];
  }

  v91 = [(DBAppDockViewController *)self communicationAppButton];
  [v91 setHidden:v33 == 0];

  if (v41)
  {
    v92 = [(DBAppDockViewController *)self otherAppButton];

    if (!v92)
    {
      v93 = [_TtC9DashBoard15DBAppDockButton alloc];
      v94 = [(DBAppDockViewController *)self iconProvider];
      v95 = [(DBAppDockButton *)v93 initWithIconProvider:v94 iconImageInfo:v44, v46, v48, v50];

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
      v102 = [(DBAppDockViewController *)self otherAppButton];
      [v102 addTarget:self action:sel__dockButtonPressed_ forControlEvents:64];

      v103 = [(DBAppDockViewController *)self dockItemStackView];
      [v103 insertArrangedSubview:v95 atIndex:v61];
    }

    v104 = [(DBAppDockViewController *)self otherAppButton];
    v105 = [(DBAppDockItem *)v41 bundleIdentifier];
    [v104 setBundleIdentifier:v105];
  }

  v106 = [(DBAppDockViewController *)self otherAppButton];
  [v106 setHidden:v41 == 0];

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

- (void)_dockButtonPressed:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 bundleIdentifier];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Selected app dock item for bundle identifier %@", &v9, 0xCu);
  }

  v7 = [(DBAppDockViewController *)self appDockViewControllerDelegate];
  v8 = [v4 bundleIdentifier];
  [v7 appDockViewController:self didSelectBundleID:v8];
}

- (void)_updateAppDockButtonForBundleIdentifier:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(DBAppDockViewController *)self appHistory];
  v8 = [v7 appDockCategoryForBundleIdentifier:v6];

  v9 = [(DBAppDockViewController *)self otherAppCategories];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v11 = [v9 containsObject:v10];

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
        v20 = v6;
        _os_log_impl(&dword_248146000, v18, OS_LOG_TYPE_DEFAULT, "Updating audio bundle identifier in dock to %@", &v19, 0xCu);
      }

      v15 = [(DBAppDockViewController *)self audioAppButton];
      goto LABEL_21;
    }

    if (v13 == 3)
    {
      v16 = DBLogForCategory(6uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v6;
        _os_log_impl(&dword_248146000, v16, OS_LOG_TYPE_DEFAULT, "Updating communication bundle identifier in dock to %@", &v19, 0xCu);
      }

      v15 = [(DBAppDockViewController *)self communicationAppButton];
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
        v20 = v6;
        _os_log_impl(&dword_248146000, v17, OS_LOG_TYPE_DEFAULT, "Updating other bundle identifier in dock to %@", &v19, 0xCu);
      }

      v15 = [(DBAppDockViewController *)self otherAppButton];
      goto LABEL_21;
    }

    if (v13 == 1)
    {
      v14 = DBLogForCategory(6uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v6;
        _os_log_impl(&dword_248146000, v14, OS_LOG_TYPE_DEFAULT, "Updating navigation bundle identifier in dock to %@", &v19, 0xCu);
      }

      v15 = [(DBAppDockViewController *)self navigationAppButton];
LABEL_21:
      v12 = v15;
    }
  }

  [v12 setBundleIdentifier:v6 animated:v4];
}

- (void)setActiveBundleIdentifier:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 138412290;
    v30 = v6;
    _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Evaluating active dock bundle identifier %@", &v29, 0xCu);
  }

  if ([(NSString *)v6 isEqualToString:@"com.apple.InCallService"])
  {
    v8 = [MEMORY[0x277D6EDF8] sharedInstance];
    v9 = [v8 displayedAudioAndVideoCalls];

    if ([v9 count] < 2)
    {
      [v9 firstObject];
    }

    else
    {
      [v9 bs_firstObjectPassingTest:&__block_literal_global_24];
    }
    v10 = ;
    v11 = [v10 provider];
    v12 = [v11 displayAppBundleIdentifier];

    v6 = v12;
  }

  if (!v6 || (-[DBAppDockViewController appHistory](self, "appHistory"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 isBundleIdentifierValidForDock:v6], v13, (v14 & 1) != 0))
  {
    v15 = [(DBAppDockViewController *)self iconProvider];
    v16 = [v15 iconForIdentifier:v6];

    if (!v6 || v16 && (-[DBAppDockViewController iconProvider](self, "iconProvider"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 isIconVisible:v16], v17, (v18 & 1) != 0))
    {
      if (self->_activeBundleIdentifier != v6)
      {
        v19 = [(NSString *)v6 copy];
        activeBundleIdentifier = self->_activeBundleIdentifier;
        self->_activeBundleIdentifier = v19;

        v21 = [(DBAppDockViewController *)self nowPlayingObserver];
        v22 = [v21 isPlaying];

        v23 = [(DBAppDockViewController *)self environmentConfiguration];
        v24 = [v23 navigationStateProvider];
        v25 = [v24 navigatingIdentifiers];
        v26 = [v25 count];

        if (v6)
        {
          [(DBAppDockViewController *)self _updateAppDockButtonForBundleIdentifier:v6 animated:v4];
          [(DBAppDockViewController *)self _updateNowPlayingBundleIdentifier:v4];
        }

        if (v22)
        {
          [(DBAppDockViewController *)self _updateNowPlayingBundleIdentifier:v4];
        }

        if (v26)
        {
          [(DBAppDockViewController *)self _updateNavigationBundleIdentifier:v4];
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

- (void)_updateNavigationBundleIdentifier:(BOOL)a3
{
  v3 = a3;
  v30 = *MEMORY[0x277D85DE8];
  v5 = [(DBAppDockViewController *)self activeBundleIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = [(DBAppDockViewController *)self appHistory];
    v8 = [(DBAppDockViewController *)self activeBundleIdentifier];
    v9 = [v7 appDockCategoryForBundleIdentifier:v8];

    if (v9 == 1)
    {
      v10 = DBLogForCategory(6uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(DBAppDockViewController *)self activeBundleIdentifier];
        v28 = 138543362;
        v29 = v11;
        _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_DEFAULT, "Active bundle identifier is a maps app; not updating app dock. %{public}@", &v28, 0xCu);
      }

      goto LABEL_19;
    }
  }

  v12 = [(DBAppDockViewController *)self activeBundleIdentifier];
  if (!v12 || (v13 = v12, -[DBAppDockViewController appHistory](self, "appHistory"), v14 = objc_claimAutoreleasedReturnValue(), -[DBAppDockViewController activeBundleIdentifier](self, "activeBundleIdentifier"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v14 appDockCategoryForBundleIdentifier:v15], v15, v14, v13, v16 != 1))
  {
    v17 = [(DBAppDockViewController *)self environmentConfiguration];
    v18 = [v17 navigationStateProvider];
    v10 = [v18 mostRecentDashboardNavigatingApp];

    if (!v10)
    {
      v19 = [(DBAppDockViewController *)self environmentConfiguration];
      v20 = [v19 navigationStateProvider];
      v10 = [v20 mostRecentNavigatingApp];

      if (!v10)
      {
        v10 = DBLogForCategory(6uLL);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v28) = 0;
          _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_DEFAULT, "No available navigation application; not updating app dock.", &v28, 2u);
        }

        goto LABEL_19;
      }
    }

    v21 = [(DBAppDockViewController *)self iconProvider];
    v22 = [v21 iconForIdentifier:v10];

    if (v22)
    {
      v23 = [(DBAppDockViewController *)self iconProvider];
      if ([v23 isIconVisible:v22])
      {
        v24 = [(DBAppDockViewController *)self appHistory];
        v25 = [v24 isBundleIdentifierValidForDock:v10];

        if (v25)
        {
          v26 = DBLogForCategory(6uLL);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v28 = 138412290;
            v29 = v10;
            _os_log_impl(&dword_248146000, v26, OS_LOG_TYPE_DEFAULT, "Updating navigation app dock bundle identifier to %@", &v28, 0xCu);
          }

          v27 = [(DBAppDockViewController *)self navigationAppButton];
          [v27 setBundleIdentifier:v10 animated:v3];
LABEL_18:

LABEL_19:
          return;
        }
      }

      else
      {
      }
    }

    v27 = DBLogForCategory(6uLL);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_248146000, v27, OS_LOG_TYPE_DEFAULT, "Unable to update navigation bundle identifier.", &v28, 2u);
    }

    goto LABEL_18;
  }
}

- (void)_updateNowPlayingBundleIdentifier:(BOOL)a3
{
  v3 = a3;
  v25 = *MEMORY[0x277D85DE8];
  if (![(DBAppDockViewController *)self isRadioActive])
  {
    v5 = [(DBAppDockViewController *)self activeBundleIdentifier];
    if (v5)
    {
      v6 = v5;
      v7 = [(DBAppDockViewController *)self appHistory];
      v8 = [(DBAppDockViewController *)self activeBundleIdentifier];
      v9 = [v7 appDockCategoryForBundleIdentifier:v8];

      if (v9 == 2)
      {
        return;
      }
    }

    v10 = [(DBAppDockViewController *)self nowPlayingObserver];
    v11 = [v10 nowPlayingApplication];
    v12 = [v11 bundleIdentifier];

    if (v12)
    {
      v13 = [(DBAppDockViewController *)self nowPlayingObserver];
      v14 = [v13 isPlaying];

      if (v14)
      {
        v15 = [(DBAppDockViewController *)self iconProvider];
        v16 = [v15 iconForIdentifier:v12];

        if (v16)
        {
          v17 = [(DBAppDockViewController *)self iconProvider];
          if ([v17 isIconVisible:v16])
          {
            v18 = [(DBAppDockViewController *)self appHistory];
            v19 = [v18 isBundleIdentifierValidForDock:v12];

            if (v19)
            {
              v20 = DBLogForCategory(6uLL);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                v23 = 138412290;
                v24 = v12;
                _os_log_impl(&dword_248146000, v20, OS_LOG_TYPE_DEFAULT, "Updating now playing app dock bundle identifier to %@", &v23, 0xCu);
              }

              [(DBAppDockViewController *)self _updateAppDockButtonForBundleIdentifier:v12 animated:v3];
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

  [(DBAppDockViewController *)self _updateAppDockButtonForBundleIdentifier:@"com.apple.CarRadio" animated:v3];
}

- (void)nowPlayingObserver:(id)a3 didChangeNowPlayingApplication:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = [v5 bundleIdentifier];
    self->_isRadioActive = [v6 isEqualToString:@"com.apple.CarRadio"];

    v7 = [v5 appPolicy];

    if ([v7 isCarPlaySupported])
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

- (void)nowPlayingObserver:(id)a3 didUpdatePlaybackState:(BOOL)a4 inApplication:(id)a5
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__DBAppDockViewController_nowPlayingObserver_didUpdatePlaybackState_inApplication___block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)navigationStateProvider:(id)a3 navigatingIdentifiersDidChange:(id)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a4;
  BSDispatchQueueAssertMain();
  v6 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Navigating identifiers did change: %{public}@", &v7, 0xCu);
  }

  [(DBAppDockViewController *)self _updateNavigationBundleIdentifier:1];
}

- (void)activeIntentWithBundleId:(id)a3
{
  v4 = a3;
  [(DBAppDockViewController *)self setActiveBundleIdentifier:v4 animated:1];
  v6 = [(DBAppDockViewController *)self environmentConfiguration];
  v5 = [v6 analytics];
  [v5 siriDidStartHostingBundleIdentifier:v4];
}

- (id)preferredFocusEnvironments
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(DBAppDockViewController *)self navigationAppButton];
  if (v4)
  {
    v5 = v4;
    v6 = [(DBAppDockViewController *)self navigationAppButton];
    if ([v6 isHidden])
    {
    }

    else
    {
      v7 = [(DBAppDockViewController *)self navigationAppButton];
      v8 = [v7 superview];

      if (!v8)
      {
        goto LABEL_7;
      }

      v5 = [(DBAppDockViewController *)self navigationAppButton];
      [v3 addObject:v5];
    }
  }

LABEL_7:
  v9 = [(DBAppDockViewController *)self audioAppButton];
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = v9;
  v11 = [(DBAppDockViewController *)self audioAppButton];
  if ([v11 isHidden])
  {
  }

  else
  {
    v12 = [(DBAppDockViewController *)self audioAppButton];
    v13 = [v12 superview];

    if (!v13)
    {
      goto LABEL_13;
    }

    v10 = [(DBAppDockViewController *)self audioAppButton];
    [v3 addObject:v10];
  }

LABEL_13:
  v14 = [(DBAppDockViewController *)self communicationAppButton];
  if (!v14)
  {
    goto LABEL_19;
  }

  v15 = v14;
  v16 = [(DBAppDockViewController *)self communicationAppButton];
  if ([v16 isHidden])
  {
  }

  else
  {
    v17 = [(DBAppDockViewController *)self communicationAppButton];
    v18 = [v17 superview];

    if (!v18)
    {
      goto LABEL_19;
    }

    v15 = [(DBAppDockViewController *)self communicationAppButton];
    [v3 addObject:v15];
  }

LABEL_19:
  v19 = [(DBAppDockViewController *)self otherAppButton];
  if (!v19)
  {
    goto LABEL_25;
  }

  v20 = v19;
  v21 = [(DBAppDockViewController *)self otherAppButton];
  if ([v21 isHidden])
  {
  }

  else
  {
    v22 = [(DBAppDockViewController *)self otherAppButton];
    v23 = [v22 superview];

    if (!v23)
    {
      goto LABEL_25;
    }

    v20 = [(DBAppDockViewController *)self otherAppButton];
    [v3 addObject:v20];
  }

LABEL_25:
  v24 = [v3 copy];
  v25 = [(DBAppDockViewController *)self environmentConfiguration];
  if ([v25 currentStatusBarEdge] == 3)
  {
  }

  else
  {
    v26 = [(DBAppDockViewController *)self environmentConfiguration];
    v27 = [v26 currentStatusBarEdge];

    if (v27 != 1)
    {
      goto LABEL_30;
    }
  }

  v28 = [(DBAppDockViewController *)self traitCollection];
  v29 = [v28 layoutDirection];
  v30 = [(DBAppDockViewController *)self environmentConfiguration];
  v31 = [v30 isRightHandDrive];

  if ((v29 != 1) != v31)
  {
    v32 = [v24 bs_reverse];
    goto LABEL_31;
  }

LABEL_30:
  v32 = v24;
LABEL_31:
  v33 = v32;

  return v33;
}

- (void)_updateAppDockButtonsTraits
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(DBAppDockViewController *)self traitCollection];
  v4 = objc_opt_self();
  v5 = [v3 objectForTrait:v4];

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

    v7 = [(DBAppDockViewController *)self dockItemStackView];
    v8 = [v7 traitOverrides];
    v9 = objc_opt_self();
    [v8 setObject:v5 forTrait:v9];

    v10 = [(DBAppDockViewController *)self dockItemStackView];
    v11 = [v10 traitOverrides];
    [v11 setUserInterfaceStyle:v6];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = [(DBAppDockViewController *)self _appDockButtons];
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v20 + 1) + 8 * i);
          v18 = [v17 traitOverrides];
          v19 = [(DBAppDockViewController *)self traitCollection];
          [v18 setUserInterfaceStyle:{objc_msgSend(v19, "userInterfaceStyle")}];

          [v17 updateTraitsIfNeeded];
        }

        v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }
  }
}

- (id)_appDockButtons
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(DBAppDockViewController *)self navigationAppButton];

  if (v4)
  {
    v5 = [(DBAppDockViewController *)self navigationAppButton];
    [v3 addObject:v5];
  }

  v6 = [(DBAppDockViewController *)self audioAppButton];

  if (v6)
  {
    v7 = [(DBAppDockViewController *)self audioAppButton];
    [v3 addObject:v7];
  }

  v8 = [(DBAppDockViewController *)self communicationAppButton];

  if (v8)
  {
    v9 = [(DBAppDockViewController *)self communicationAppButton];
    [v3 addObject:v9];
  }

  v10 = [(DBAppDockViewController *)self otherAppButton];

  if (v10)
  {
    v11 = [(DBAppDockViewController *)self otherAppButton];
    [v3 addObject:v11];
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

  v3 = [(DBAppDockViewController *)self dockItemStackView];
  v4 = [v3 axis];

  if (v4 == 1)
  {
    if (_os_feature_enabled_impl() && (-[DBAppDockViewController environmentConfiguration](self, "environmentConfiguration"), v5 = objc_claimAutoreleasedReturnValue(), [v5 systemUILayout], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "hasDefrostPersistentElement"), v6, v5, v7))
    {
      v8 = [(DBAppDockViewController *)self view];
      [v8 frame];
      v10 = v9 + -30.0;
    }

    else
    {
      v8 = [(DBAppDockViewController *)self view];
      [v8 frame];
      v10 = v12;
    }
  }

  else
  {
    v8 = [(DBAppDockViewController *)self view];
    [v8 frame];
  }

  v11 = v10 / 37.0 >= 4.0;

  return v11;
}

@end