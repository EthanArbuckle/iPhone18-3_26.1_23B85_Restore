@interface DBTodayViewController
+ (BOOL)isEnabledAndSupportedForIconProvider:(id)a3;
- (DBEnvironment)environment;
- (DBTodayViewController)initWithEnvironment:(id)a3 layoutEngine:(id)a4;
- (NSArray)landscapeConstraints;
- (NSArray)portraitConstraints;
- (NSArray)squareConstraints;
- (NSString)navigationWidgetBundleIdentifier;
- (id)linearFocusItems;
- (id)preferredFocusEnvironments;
- (unint64_t)_layout;
- (void)_updateNavigationWidgetScenesForApplication:(id)a3;
- (void)_updateNavigationWidgetsForIdentifier:(id)a3;
- (void)_updateSceneTraits;
- (void)didChangeLayout:(id)a3;
- (void)environmentConfiguration:(id)a3 appearanceStyleDidChange:(int64_t)a4;
- (void)environmentConfiguration:(id)a3 mapsAppearanceStyleDidChange:(int64_t)a4;
- (void)invalidate;
- (void)navigationStateProvider:(id)a3 frontmostIdentifierDidChange:(id)a4;
- (void)navigationStateProvider:(id)a3 navigatingIdentifiersDidChange:(id)a4;
- (void)reloadConstraints;
- (void)setActive:(BOOL)a3;
- (void)setForeground:(BOOL)a3;
- (void)setSceneWidgetsDisabled:(BOOL)a3 forRequester:(id)a4;
- (void)setSmartWidgetCanChangeVisibilityDisabled:(BOOL)a3 forRequester:(id)a4;
- (void)thermalMonitorLevelDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DBTodayViewController

- (NSString)navigationWidgetBundleIdentifier
{
  v3 = [MEMORY[0x277CF89D0] useNightModeTester];
  v4 = [v3 valueBool];

  if (v4)
  {
    p_navigationWidgetBundleIdentifier = DBNightModeTesterBundleIdentifier;
  }

  else
  {
    p_navigationWidgetBundleIdentifier = &self->_navigationWidgetBundleIdentifier;
  }

  v6 = *p_navigationWidgetBundleIdentifier;

  return v6;
}

- (DBTodayViewController)initWithEnvironment:(id)a3 layoutEngine:(id)a4
{
  v27[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = DBTodayViewController;
  v8 = [(DBTodayViewController *)&v26 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_environment, v6);
    v10 = objc_alloc_init(DBTodayViewSynchronizedAnimationManager);
    animationManager = v9->_animationManager;
    v9->_animationManager = v10;

    objc_storeStrong(&v9->_layoutEngine, a4);
    v12 = [[DBSceneWorkspace alloc] initWithIdentifier:@"com.apple.DashBoard.scene-workspace.dashboard"];
    widgetSceneWorkspace = v9->_widgetSceneWorkspace;
    v9->_widgetSceneWorkspace = v12;

    WeakRetained = objc_loadWeakRetained(&v9->_environment);
    v15 = [WeakRetained environmentConfiguration];
    [v15 addObserver:v9];

    v16 = objc_loadWeakRetained(&v9->_environment);
    v17 = [v16 environmentConfiguration];
    v18 = [v17 thermalMonitor];
    [v18 addObserver:v9];

    [(DBTodayViewController *)v9 setSmartWidgetCanChangeVisibilityDisabled:1 forRequester:@"DBTodayViewSetupRequester"];
    v19 = [v6 environmentConfiguration];
    v20 = [v19 navigationStateProvider];

    [v20 addObserver:v9];
    v9->_contentVisibility = 0;
    v21 = objc_opt_self();
    v27[0] = v21;
    v22 = objc_opt_self();
    v27[1] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v24 = [(DBTodayViewController *)v9 registerForTraitChanges:v23 withTarget:v9 action:sel__updateSceneTraits];
  }

  return v9;
}

+ (BOOL)isEnabledAndSupportedForIconProvider:(id)a3
{
  v3 = a3;
  if (DBIsInternalInstall_onceToken_3 != -1)
  {
    +[DBTodayViewController isEnabledAndSupportedForIconProvider:];
  }

  if (DBIsInternalInstall_isInternal_3 != 1 || ([MEMORY[0x277CBEBD0] standardUserDefaults], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "BOOLForKey:", @"CARDisableDashboard"), v4, !v5))
  {
    v8 = +[DBApplicationController sharedInstance];
    v6 = [v8 mapsApplication];

    v9 = [MEMORY[0x277D0EB00] sharedConfiguration];
    v10 = [v9 currentCountrySupportsCarIntegration];
    v11 = DBLogForCategory(0);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, "Geo services are supported.", buf, 2u);
      }

      if (v6)
      {
        v13 = [v6 bundleIdentifier];
        v14 = [v3 isIconVisibleForIdentifier:v13];

        if (v14)
        {
          v7 = 1;
          goto LABEL_18;
        }
      }
    }

    else
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, "Geo services are not supported in this country.", buf, 2u);
      }
    }

    *buf = 0;
    v22 = buf;
    v23 = 0x2020000000;
    v24 = 0;
    v15 = +[DBApplicationController sharedInstance];
    v16 = [v15 allApplications];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __62__DBTodayViewController_isEnabledAndSupportedForIconProvider___block_invoke;
    v18[3] = &unk_278F04648;
    v19 = v3;
    v20 = buf;
    [v16 enumerateObjectsUsingBlock:v18];

    v7 = v22[24];
    _Block_object_dispose(buf, 8);
    goto LABEL_18;
  }

  v6 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Dashboard has been disabled with user default", buf, 2u);
  }

  v7 = 0;
LABEL_18:

  return v7 & 1;
}

void __62__DBTodayViewController_isEnabledAndSupportedForIconProvider___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([v8 supportsDashboardNavigation])
  {
    v6 = *(a1 + 32);
    v7 = [v8 bundleIdentifier];
    LODWORD(v6) = [v6 isIconVisibleForIdentifier:v7];

    if (v6)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

- (void)setSceneWidgetsDisabled:(BOOL)a3 forRequester:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(DBTodayViewController *)self sceneWidgetsDisabledRequesters];
  v8 = v7;
  if (v4)
  {

    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [(DBTodayViewController *)self setSceneWidgetsDisabledRequesters:v9];
    }

    v8 = [(DBTodayViewController *)self sceneWidgetsDisabledRequesters];
    [v8 addObject:v6];
  }

  else
  {
    [v7 removeObject:v6];
  }

  v10 = [(DBTodayViewController *)self sceneWidgetsDisabledRequesters];
  v11 = [v10 count] == 0;

  v12 = [(DBTodayViewController *)self navigationMapWidgetViewController];
  [v12 setEnabled:v11];

  v13 = [(DBTodayViewController *)self widgetContainerViewController];
  [v13 setSceneWidgetsEnabled:v11];
}

- (void)setSmartWidgetCanChangeVisibilityDisabled:(BOOL)a3 forRequester:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(DBTodayViewController *)self widgetContainerViewController];
  [v7 setSmartWidgetCanChangeVisibilityDisabled:v4 forRequester:v6];
}

- (void)setForeground:(BOOL)a3
{
  v3 = a3;
  v5 = [(DBTodayViewController *)self navigationMapWidgetViewController];
  [v5 setForeground:v3];

  v6 = [(DBTodayViewController *)self widgetContainerViewController];
  [v6 setSceneWidgetsForeground:v3];
}

- (void)setActive:(BOOL)a3
{
  v3 = a3;
  v5 = [(DBTodayViewController *)self navigationMapWidgetViewController];
  [v5 setActive:v3];

  v6 = [(DBTodayViewController *)self widgetContainerViewController];
  [v6 setSceneWidgetsActive:v3];
}

- (void)viewDidLoad
{
  v54.receiver = self;
  v54.super_class = DBTodayViewController;
  [(DBTodayViewController *)&v54 viewDidLoad];
  v3 = objc_opt_new();
  v4 = [(DBTodayViewController *)self view];
  [v4 _setBackground:v3];

  v5 = objc_alloc_init(DBLayoutHelperView);
  [(DBLayoutHelperView *)v5 setLayoutDelegate:self];
  v6 = [(DBTodayViewController *)self view];
  [v6 addSubview:v5];

  [(DBTodayViewController *)self setLayoutHelperView:v5];
  v7 = [DBNavigationMapWidgetViewController alloc];
  v8 = [(DBTodayViewController *)self environment];
  v9 = [(DBTodayViewController *)self animationManager];
  v10 = [(DBSceneWidgetViewController *)v7 initWithEnvironment:v8 animationManager:v9 widgetSizeManager:0];
  [(DBTodayViewController *)self setNavigationMapWidgetViewController:v10];

  v11 = [(DBTodayViewController *)self navigationMapWidgetViewController];
  [(DBTodayViewController *)self addChildViewController:v11];

  v12 = [(DBTodayViewController *)self view];
  v13 = [(DBTodayViewController *)self navigationMapWidgetViewController];
  v14 = [v13 view];
  [v12 addSubview:v14];

  v15 = [(DBTodayViewController *)self navigationMapWidgetViewController];
  [v15 didMoveToParentViewController:self];

  v16 = [(DBTodayViewController *)self navigationMapWidgetViewController];
  v17 = [v16 view];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

  v18 = [(DBTodayViewController *)self navigationMapWidgetViewController];
  v19 = [v18 view];
  [v19 setAccessibilityIdentifier:@"CARAppTodayViewMapView"];

  v20 = +[DBApplicationController sharedInstance];
  v21 = [v20 applicationWithBundleIdentifier:@"com.apple.CarRadio"];

  v22 = [(DBTodayViewController *)self environment];
  v23 = [v22 displayIdentity];

  v24 = MEMORY[0x277CCACA8];
  v25 = [v21 bundleIdentifier];
  v26 = [v24 stringWithFormat:@"%@:%@%@", v23, v25, @":widget"];

  v27 = [(DBTodayViewController *)self widgetSceneWorkspace];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __36__DBTodayViewController_viewDidLoad__block_invoke;
  v51[3] = &unk_278F021D0;
  v28 = v26;
  v52 = v28;
  v29 = v21;
  v53 = v29;
  v30 = [v27 createScene:v51];

  [(DBTodayViewController *)self setNowPlayingWidgetScene:v30];
  v31 = [DBWidgetContainerViewController alloc];
  v32 = [(DBTodayViewController *)self environment];
  v33 = [(DBTodayViewController *)self animationManager];
  v34 = [(DBTodayViewController *)self nowPlayingWidgetScene];
  v35 = [(DBWidgetContainerViewController *)v31 initWithEnvironment:v32 animationManager:v33 nowPlayingWidgetScene:v34];
  [(DBTodayViewController *)self setWidgetContainerViewController:v35];

  v36 = [(DBTodayViewController *)self widgetContainerViewController];
  [(DBTodayViewController *)self addChildViewController:v36];

  v37 = [(DBTodayViewController *)self view];
  v38 = [(DBTodayViewController *)self widgetContainerViewController];
  v39 = [v38 view];
  [v37 addSubview:v39];

  v40 = [(DBTodayViewController *)self widgetContainerViewController];
  [v40 didMoveToParentViewController:self];

  v41 = [(DBTodayViewController *)self widgetContainerViewController];
  v42 = [v41 view];
  [v42 setTranslatesAutoresizingMaskIntoConstraints:0];

  v43 = [(DBTodayViewController *)self widgetContainerViewController];
  v44 = [v43 view];
  [v44 setAccessibilityIdentifier:@"CARAppTodayViewWidgetContainer"];

  v45 = [(DBTodayViewController *)self environment];
  v46 = [v45 environmentConfiguration];
  v47 = [v46 navigationStateProvider];

  if (DBIsInternalInstall_onceToken_3 != -1)
  {
    [DBTodayViewController viewDidLoad];
  }

  if (DBIsInternalInstall_isInternal_3 != 1 || ([MEMORY[0x277CBEBD0] standardUserDefaults], v48 = objc_claimAutoreleasedReturnValue(), v49 = objc_msgSend(v48, "BOOLForKey:", @"CARDisableAutoLaunchNavigation"), v48, (v49 & 1) == 0))
  {
    v50 = [v47 navigatingIdentifiers];
    [(DBTodayViewController *)self navigationStateProvider:v47 navigatingIdentifiersDidChange:v50];
  }

  [(DBTodayViewController *)self _updateSceneTraits];
}

void __36__DBTodayViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setIdentifier:v3];
  v5 = MEMORY[0x277D0ADA8];
  v6 = [*(a1 + 40) info];
  v7 = [v6 processIdentity];
  v8 = [v5 defaultIdentityForProcessIdentity:v7];
  [v4 setClientIdentity:v8];

  v9 = [MEMORY[0x277CF92B0] specification];
  [v4 setSpecification:v9];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = DBTodayViewController;
  [(DBTodayViewController *)&v4 viewWillLayoutSubviews];
  [(DBTodayViewController *)self setAdditionalSafeAreaInsets:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  v3 = [(DBTodayViewController *)self layoutEngine];
  [v3 todayViewAdditionalInsets];
  [(DBTodayViewController *)self setAdditionalSafeAreaInsets:?];
}

- (id)linearFocusItems
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(DBTodayViewController *)self environment];
  v5 = [v4 environmentConfiguration];
  v6 = [v5 isRightHandDrive];

  v7 = [(DBTodayViewController *)self traitCollection];
  v8 = [v7 layoutDirection];

  v9 = [MEMORY[0x277CF89C8] flipDashboardLayout];
  v10 = [v9 valueBool];

  v11 = v6 ^ (v8 != 1) ^ v10;
  if ([(DBTodayViewController *)self _layout]!= 1 || v11)
  {
    v12 = [(DBTodayViewController *)self navigationMapWidgetViewController];
    v13 = [v12 viewIfLoaded];

    if (v13)
    {
      v14 = [(DBTodayViewController *)self navigationMapWidgetViewController];
      v15 = [v14 linearFocusItems];
      [v3 addObjectsFromArray:v15];
    }
  }

  v16 = [(DBTodayViewController *)self widgetContainerViewController];
  v17 = [v16 linearFocusItems];
  [v3 addObjectsFromArray:v17];

  if (!(([(DBTodayViewController *)self _layout]!= 1) | v11 & 1))
  {
    v18 = [(DBTodayViewController *)self navigationMapWidgetViewController];
    v19 = [v18 viewIfLoaded];

    if (v19)
    {
      v20 = [(DBTodayViewController *)self navigationMapWidgetViewController];
      v21 = [v20 linearFocusItems];
      [v3 addObjectsFromArray:v21];
    }
  }

  return v3;
}

- (id)preferredFocusEnvironments
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [(DBTodayViewController *)self linearFocusItems];
  if ([v3 count])
  {
    if ([(DBTodayViewController *)self preferredFocusHeading]== 1)
    {
      v4 = [v3 lastObject];
      v9[0] = v4;
      v5 = v9;
    }

    else
    {
      v4 = [v3 firstObject];
      v8 = v4;
      v5 = &v8;
    }

    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = DBTodayViewController;
  [(DBTodayViewController *)&v4 viewDidAppear:a3];
  [(DBTodayViewController *)self reloadConstraints];
}

- (NSArray)portraitConstraints
{
  portraitConstraints = self->_portraitConstraints;
  if (!portraitConstraints)
  {
    v4 = objc_opt_new();
    v5 = [(DBTodayViewController *)self navigationMapWidgetViewController];
    v6 = [v5 view];

    v7 = [(DBTodayViewController *)self widgetContainerViewController];
    v8 = [v7 view];

    v9 = [v6 leadingAnchor];
    v10 = [(DBTodayViewController *)self view];
    v11 = [v10 safeAreaLayoutGuide];
    v12 = [v11 leadingAnchor];
    v13 = [v9 constraintEqualToAnchor:v12 constant:4.0];
    [(NSArray *)v4 addObject:v13];

    v14 = [(DBTodayViewController *)self view];
    v15 = [v14 safeAreaLayoutGuide];
    v16 = [v15 trailingAnchor];
    v17 = [v6 trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:4.0];
    [(NSArray *)v4 addObject:v18];

    v19 = [v6 topAnchor];
    v20 = [(DBTodayViewController *)self view];
    v21 = [v20 safeAreaLayoutGuide];
    v22 = [v21 topAnchor];
    v23 = [v19 constraintEqualToAnchor:v22 constant:4.0];
    [(NSArray *)v4 addObject:v23];

    v24 = [v8 leadingAnchor];
    v25 = [(DBTodayViewController *)self view];
    v26 = [v25 safeAreaLayoutGuide];
    v27 = [v26 leadingAnchor];
    v28 = [v24 constraintEqualToAnchor:v27 constant:4.0];
    [(NSArray *)v4 addObject:v28];

    v29 = [(DBTodayViewController *)self view];
    v30 = [v29 safeAreaLayoutGuide];
    v31 = [v30 trailingAnchor];
    v32 = [v8 trailingAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:4.0];
    [(NSArray *)v4 addObject:v33];

    v34 = [v8 topAnchor];
    v35 = [v6 bottomAnchor];
    v36 = [v34 constraintEqualToAnchor:v35 constant:4.0];
    [(NSArray *)v4 addObject:v36];

    v37 = [(DBTodayViewController *)self view];
    v38 = [v37 safeAreaLayoutGuide];
    v39 = [v38 bottomAnchor];
    v40 = [v8 bottomAnchor];
    v41 = [v39 constraintEqualToAnchor:v40 constant:4.0];
    [(NSArray *)v4 addObject:v41];

    v42 = [v8 heightAnchor];
    v43 = [v42 constraintGreaterThanOrEqualToConstant:166.0];

    LODWORD(v44) = 1148846080;
    [v8 setContentHuggingPriority:1 forAxis:v44];
    [(NSArray *)v4 addObject:v43];
    v45 = [v6 heightAnchor];
    v46 = [(DBTodayViewController *)self view];
    v47 = [v46 safeAreaLayoutGuide];
    v48 = [v47 heightAnchor];
    v49 = [v45 constraintEqualToAnchor:v48 multiplier:0.5 constant:4.0 * -3.0];

    LODWORD(v50) = 1148829696;
    [v49 setPriority:v50];
    [(NSArray *)v4 addObject:v49];
    v51 = self->_portraitConstraints;
    self->_portraitConstraints = v4;

    portraitConstraints = self->_portraitConstraints;
  }

  return portraitConstraints;
}

- (NSArray)squareConstraints
{
  squareConstraints = self->_squareConstraints;
  if (!squareConstraints)
  {
    v4 = objc_opt_new();
    v5 = [(DBTodayViewController *)self navigationMapWidgetViewController];
    v6 = [v5 view];

    v7 = [(DBTodayViewController *)self widgetContainerViewController];
    v8 = [v7 view];

    v9 = [v6 leadingAnchor];
    v10 = [(DBTodayViewController *)self view];
    v11 = [v10 safeAreaLayoutGuide];
    v12 = [v11 leadingAnchor];
    v13 = [v9 constraintEqualToAnchor:v12 constant:4.0];
    [(NSArray *)v4 addObject:v13];

    v14 = [(DBTodayViewController *)self view];
    v15 = [v14 safeAreaLayoutGuide];
    v16 = [v15 trailingAnchor];
    v17 = [v6 trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:4.0];
    [(NSArray *)v4 addObject:v18];

    v19 = [v6 topAnchor];
    v20 = [(DBTodayViewController *)self view];
    v21 = [v20 safeAreaLayoutGuide];
    v22 = [v21 topAnchor];
    v23 = [v19 constraintEqualToAnchor:v22 constant:4.0];
    [(NSArray *)v4 addObject:v23];

    v24 = [v8 leadingAnchor];
    v25 = [(DBTodayViewController *)self view];
    v26 = [v25 safeAreaLayoutGuide];
    v27 = [v26 leadingAnchor];
    v28 = [v24 constraintEqualToAnchor:v27 constant:4.0];
    [(NSArray *)v4 addObject:v28];

    v29 = [(DBTodayViewController *)self view];
    v30 = [v29 safeAreaLayoutGuide];
    v31 = [v30 trailingAnchor];
    v32 = [v8 trailingAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:4.0];
    [(NSArray *)v4 addObject:v33];

    v34 = [v8 topAnchor];
    v35 = [v6 bottomAnchor];
    v36 = [v34 constraintEqualToAnchor:v35 constant:4.0];
    [(NSArray *)v4 addObject:v36];

    v37 = [(DBTodayViewController *)self view];
    v38 = [v37 safeAreaLayoutGuide];
    v39 = [v38 bottomAnchor];
    v40 = [v8 bottomAnchor];
    v41 = [v39 constraintEqualToAnchor:v40 constant:4.0];
    [(NSArray *)v4 addObject:v41];

    v42 = [v8 heightAnchor];
    v43 = [v42 constraintEqualToConstant:0.0];
    [(DBTodayViewController *)self setSquareContainerHeightConstraint:v43];

    v44 = [(DBTodayViewController *)self squareContainerHeightConstraint];
    LODWORD(v45) = 1148846080;
    [v44 setPriority:v45];

    v46 = [(DBTodayViewController *)self squareContainerHeightConstraint];
    [(NSArray *)v4 addObject:v46];

    v47 = self->_squareConstraints;
    self->_squareConstraints = v4;

    squareConstraints = self->_squareConstraints;
  }

  return squareConstraints;
}

- (NSArray)landscapeConstraints
{
  v70[6] = *MEMORY[0x277D85DE8];
  landscapeConstraints = self->_landscapeConstraints;
  if (!landscapeConstraints)
  {
    v4 = [(DBTodayViewController *)self navigationMapWidgetViewController];
    v5 = [v4 view];

    v6 = [(DBTodayViewController *)self widgetContainerViewController];
    v7 = [v6 view];

    v8 = [(DBTodayViewController *)self environment];
    v9 = [v8 environmentConfiguration];
    v10 = [v9 isRightHandDrive];

    v11 = [MEMORY[0x277CF89C8] flipDashboardLayout];
    v12 = [v11 valueBool];

    if (v10 != v12)
    {
      v13 = v7;
    }

    else
    {
      v13 = v5;
    }

    v64 = v5;
    if (v10 != v12)
    {
      v14 = v5;
    }

    else
    {
      v14 = v7;
    }

    v15 = v13;
    v16 = v14;
    v63 = v7;
    v17 = [v7 widthAnchor];
    v18 = [v17 constraintEqualToConstant:0.0];
    [(DBTodayViewController *)self setLandscapeContainerWidthConstraint:v18];

    v65 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v59 = [v15 topAnchor];
    v61 = [(DBTodayViewController *)self view];
    v57 = [v61 safeAreaLayoutGuide];
    v56 = [v57 topAnchor];
    v55 = [v59 constraintEqualToAnchor:v56 constant:4.0];
    v70[0] = v55;
    v54 = [(DBTodayViewController *)self view];
    v53 = [v54 safeAreaLayoutGuide];
    v52 = [v53 bottomAnchor];
    v51 = [v15 bottomAnchor];
    v50 = [v52 constraintEqualToAnchor:v51 constant:4.0];
    v70[1] = v50;
    v48 = [v16 topAnchor];
    v49 = [(DBTodayViewController *)self view];
    v47 = [v49 safeAreaLayoutGuide];
    v46 = [v47 topAnchor];
    v45 = [v48 constraintEqualToAnchor:v46 constant:4.0];
    v70[2] = v45;
    v44 = [(DBTodayViewController *)self view];
    v19 = [v44 safeAreaLayoutGuide];
    v20 = [v19 bottomAnchor];
    v21 = [v16 bottomAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 constant:4.0];
    v70[3] = v22;
    v66 = v16;
    v23 = [v16 leftAnchor];
    v67 = v15;
    v24 = [v15 rightAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:4.0];
    v70[4] = v25;
    v26 = [(DBTodayViewController *)self landscapeContainerWidthConstraint];
    v70[5] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:6];
    [v65 addObjectsFromArray:v27];

    WeakRetained = objc_loadWeakRetained(&self->_environment);
    v29 = [WeakRetained environmentConfiguration];
    LODWORD(v19) = [v29 hasDualStatusBar];

    if (v19)
    {
      v30 = [v67 leftAnchor];
      v60 = [(DBTodayViewController *)self view];
      v58 = [v60 safeAreaLayoutGuide];
      v31 = [v58 leftAnchor];
      v62 = v30;
      v32 = [v30 constraintEqualToAnchor:v31];
      v69[0] = v32;
      v33 = [v66 rightAnchor];
      v34 = [(DBTodayViewController *)self view];
      v35 = [v34 safeAreaLayoutGuide];
      v36 = [v35 rightAnchor];
      v37 = [v33 constraintEqualToAnchor:v36];
      v69[1] = v37;
      v38 = v69;
    }

    else
    {
      v62 = [(DBTodayViewController *)self view];
      v60 = [v62 safeAreaLayoutGuide];
      v39 = [v60 rightAnchor];
      v31 = [v66 rightAnchor];
      v58 = v39;
      v32 = [v39 constraintEqualToAnchor:v31 constant:4.0];
      v68[0] = v32;
      v33 = [v67 leftAnchor];
      v34 = [(DBTodayViewController *)self view];
      v35 = [v34 safeAreaLayoutGuide];
      v36 = [v35 leftAnchor];
      v37 = [v33 constraintEqualToAnchor:v36 constant:4.0];
      v68[1] = v37;
      v38 = v68;
    }

    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
    [v65 addObjectsFromArray:v40];

    v41 = [v65 copy];
    v42 = self->_landscapeConstraints;
    self->_landscapeConstraints = v41;

    landscapeConstraints = self->_landscapeConstraints;
  }

  return landscapeConstraints;
}

- (unint64_t)_layout
{
  v2 = [(DBTodayViewController *)self view];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v13.origin.x = v4;
  v13.origin.y = v6;
  v13.size.width = v8;
  v13.size.height = v10;
  if (CGRectEqualToRect(v13, *MEMORY[0x277CBF3A0]))
  {
    return 0;
  }

  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  Width = CGRectGetWidth(v14);
  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  if (Width / CGRectGetHeight(v15) > 1.3)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)reloadConstraints
{
  v3 = [(DBTodayViewController *)self _layout];
  if (v3 == [(DBTodayViewController *)self currentLayoutType])
  {
    return;
  }

  [(DBTodayViewController *)self setCurrentLayoutType:v3];
  v4 = [(DBTodayViewController *)self layoutEngine];
  [v4 todayViewAdditionalInsets];
  [(DBTodayViewController *)self setAdditionalSafeAreaInsets:?];

  switch(v3)
  {
    case 1uLL:
      v5 = [(DBTodayViewController *)self landscapeConstraints];
      break;
    case 2uLL:
      v5 = [(DBTodayViewController *)self squareConstraints];
      break;
    case 3uLL:
      v5 = [(DBTodayViewController *)self portraitConstraints];
      break;
    default:
      v12 = 0;
      goto LABEL_10;
  }

  v12 = v5;
LABEL_10:
  v6 = [(DBTodayViewController *)self currentConstraints];

  if (v6)
  {
    v7 = MEMORY[0x277CCAAD0];
    v8 = [(DBTodayViewController *)self currentConstraints];
    [v7 deactivateConstraints:v8];

    [(DBTodayViewController *)self setCurrentConstraints:0];
  }

  v9 = [(DBTodayViewController *)self widgetContainerViewController];
  [v9 setLayoutType:v3];

  v10 = [(DBTodayViewController *)self widgetContainerViewController];
  [v10 invalidateConstraints];

  v11 = v12;
  if (v12)
  {
    [MEMORY[0x277CCAAD0] activateConstraints:v12];
    [(DBTodayViewController *)self setCurrentConstraints:v12];
    v11 = v12;
  }
}

- (void)invalidate
{
  v3 = [(DBTodayViewController *)self navigationWidgetBundleIdentifier];

  if (v3)
  {
    v4 = [(DBTodayViewController *)self environment];
    v5 = [v4 environmentConfiguration];
    v6 = [v5 appHistory];
    v7 = [(DBTodayViewController *)self navigationWidgetBundleIdentifier];
    [v6 setDashboardAppOnDisconnect:v7];
  }

  v8 = [(DBTodayViewController *)self navigationMapWidgetScene];
  [v8 invalidate];

  v9 = [(DBTodayViewController *)self navigationInstructionWidgetScene];
  [v9 invalidate];

  v10 = [(DBTodayViewController *)self nowPlayingWidgetScene];
  [v10 invalidate];

  v11 = [(DBTodayViewController *)self navigationMapWidgetViewController];
  [v11 invalidate];

  v12 = [(DBTodayViewController *)self widgetContainerViewController];
  [v12 invalidate];

  v13 = [(DBTodayViewController *)self animationManager];
  [v13 invalidate];

  v14 = [(DBTodayViewController *)self widgetSceneWorkspace];
  [v14 invalidate];

  [(DBTodayViewController *)self setWidgetSceneWorkspace:0];
  v15 = [(DBTodayViewController *)self environment];
  v16 = [v15 environmentConfiguration];
  [v16 removeObserver:self];

  v17 = [(DBTodayViewController *)self environment];
  v18 = [v17 environmentConfiguration];
  v19 = [v18 thermalMonitor];
  [v19 removeObserver:self];

  v22 = [(DBTodayViewController *)self environment];
  v20 = [v22 environmentConfiguration];
  v21 = [v20 navigationStateProvider];
  [v21 removeObserver:self];
}

- (void)environmentConfiguration:(id)a3 appearanceStyleDidChange:(int64_t)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Appearance style changed for environment, updating user interface style", buf, 2u);
  }

  v6 = +[DBApplicationController sharedInstance];
  v7 = [(DBTodayViewController *)self navigationWidgetBundleIdentifier];
  v8 = [v6 applicationWithBundleIdentifier:v7];

  v9 = [(DBTodayViewController *)self environment];
  v10 = [v9 sceneInterfaceStyleForApplication:v8 proxyApplication:0];

  v11 = [(DBTodayViewController *)self navigationMapWidgetScene];

  if (v11)
  {
    v12 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = CPUIDescriptionForUserInterfaceStyle();
      v14 = [(DBTodayViewController *)self navigationMapWidgetScene];
      *buf = 138412546;
      v30 = v13;
      v31 = 2112;
      v32 = v14;
      _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "Updating user interface style to %@ for scene: %@", buf, 0x16u);
    }

    v15 = [(DBTodayViewController *)self navigationMapWidgetScene];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __75__DBTodayViewController_environmentConfiguration_appearanceStyleDidChange___block_invoke;
    v28[3] = &__block_descriptor_40_e43_v16__0__UIMutableApplicationSceneSettings_8l;
    v28[4] = v10;
    [v15 updateSettings:v28];
  }

  v16 = [(DBTodayViewController *)self nowPlayingWidgetScene];

  if (v16)
  {
    v17 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = CPUIDescriptionForUserInterfaceStyle();
      v19 = [(DBTodayViewController *)self nowPlayingWidgetScene];
      *buf = 138412546;
      v30 = v18;
      v31 = 2112;
      v32 = v19;
      _os_log_impl(&dword_248146000, v17, OS_LOG_TYPE_DEFAULT, "Updating user interface style to %@ for scene: %@", buf, 0x16u);
    }

    v20 = [(DBTodayViewController *)self nowPlayingWidgetScene];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __75__DBTodayViewController_environmentConfiguration_appearanceStyleDidChange___block_invoke_243;
    v27[3] = &__block_descriptor_40_e43_v16__0__UIMutableApplicationSceneSettings_8l;
    v27[4] = v10;
    [v20 updateSettings:v27];
  }

  v21 = [(DBTodayViewController *)self navigationInstructionWidgetScene];

  if (v21)
  {
    v22 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = CPUIDescriptionForUserInterfaceStyle();
      v24 = [(DBTodayViewController *)self navigationInstructionWidgetScene];
      *buf = 138412546;
      v30 = v23;
      v31 = 2112;
      v32 = v24;
      _os_log_impl(&dword_248146000, v22, OS_LOG_TYPE_DEFAULT, "Updating user interface style to %@ for scene: %@", buf, 0x16u);
    }

    v25 = [(DBTodayViewController *)self navigationInstructionWidgetScene];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __75__DBTodayViewController_environmentConfiguration_appearanceStyleDidChange___block_invoke_244;
    v26[3] = &__block_descriptor_40_e43_v16__0__UIMutableApplicationSceneSettings_8l;
    v26[4] = v10;
    [v25 updateSettings:v26];
  }
}

- (void)environmentConfiguration:(id)a3 mapsAppearanceStyleDidChange:(int64_t)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Maps appearance style changed for environment, updating maps appearance style", buf, 2u);
  }

  v7 = [(DBTodayViewController *)self navigationMapWidgetScene];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 settings];
    v10 = [v9 conformsToProtocol:&unk_285B71FF0];

    if (v10)
    {
      v11 = DBLogForCategory(0x13uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = CPUIDescriptionForUserInterfaceStyle();
        *buf = 138412546;
        v22 = v12;
        v23 = 2112;
        v24 = v8;
        _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, "Updating map style to %@ for scene: %@", buf, 0x16u);
      }

      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __79__DBTodayViewController_environmentConfiguration_mapsAppearanceStyleDidChange___block_invoke;
      v20[3] = &__block_descriptor_40_e43_v16__0__UIMutableApplicationSceneSettings_8l;
      v20[4] = a4;
      [v8 updateSettings:v20];
    }
  }

  v13 = [(DBTodayViewController *)self navigationInstructionWidgetScene];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 settings];
    v16 = [v15 conformsToProtocol:&unk_285B71FF0];

    if (v16)
    {
      v17 = DBLogForCategory(0x13uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = CPUIDescriptionForUserInterfaceStyle();
        *buf = 138412546;
        v22 = v18;
        v23 = 2112;
        v24 = v14;
        _os_log_impl(&dword_248146000, v17, OS_LOG_TYPE_DEFAULT, "Updating map style to %@ for scene: %@", buf, 0x16u);
      }

      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __79__DBTodayViewController_environmentConfiguration_mapsAppearanceStyleDidChange___block_invoke_295;
      v19[3] = &__block_descriptor_40_e43_v16__0__UIMutableApplicationSceneSettings_8l;
      v19[4] = a4;
      [v14 updateSettings:v19];
    }
  }
}

void __79__DBTodayViewController_environmentConfiguration_mapsAppearanceStyleDidChange___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 conformsToProtocol:&unk_285B71E40])
  {
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  [v3 setMapStyle:*(a1 + 32)];
}

void __79__DBTodayViewController_environmentConfiguration_mapsAppearanceStyleDidChange___block_invoke_295(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 conformsToProtocol:&unk_285B71E40])
  {
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  [v3 setMapStyle:*(a1 + 32)];
}

- (void)didChangeLayout:(id)a3
{
  [(DBTodayViewController *)self reloadConstraints];
  v4 = [(DBTodayViewController *)self view];
  v5 = [v4 safeAreaLayoutGuide];
  [v5 layoutFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(DBTodayViewController *)self currentLayoutType];
  v15 = v7;
  v16 = v9;
  v17 = v11;
  v18 = v13;
  if (v14 == 2)
  {
    v19 = fmin((CGRectGetHeight(*&v15) + 4.0 * -3.0) * 0.5, 160.0);
    [(DBTodayViewController *)self squareContainerHeightConstraint];
  }

  else
  {
    v20 = CGRectGetWidth(*&v15) + 4.0 * -3.0;
    v21 = [(DBTodayViewController *)self layoutEngine];
    [v21 dualStatusBarTotalHorizontalWidth];
    v23 = v20 - v22;

    v19 = fmin(v23 * 0.5, 240.0);
    [(DBTodayViewController *)self landscapeContainerWidthConstraint];
  }
  v24 = ;
  [v24 setConstant:v19];
}

- (void)navigationStateProvider:(id)a3 frontmostIdentifierDidChange:(id)a4
{
  v7 = [a3 mostRecentDashboardNavigatingApp];
  v5 = [(DBTodayViewController *)self navigationWidgetBundleIdentifier];
  v6 = [v7 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    [(DBTodayViewController *)self _updateNavigationWidgetsForIdentifier:v7];
  }
}

- (void)navigationStateProvider:(id)a3 navigatingIdentifiersDidChange:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "Active navigation identifiers changed", &v23, 2u);
  }

  v9 = [(DBTodayViewController *)self navigationWidgetBundleIdentifier];
  v10 = [v7 containsObject:v9];

  if ((v10 & 1) == 0)
  {
    v11 = [(DBTodayViewController *)self widgetContainerViewController];
    v12 = [v11 navigationInstructionWidgetViewController];
    [v12 setWantsLargeSize:0];
  }

  v13 = [v6 mostRecentDashboardNavigatingApp];
  v14 = [v7 containsObject:v13];
  v15 = [(DBTodayViewController *)self widgetContainerViewController];
  [v15 setHasActiveNavigation:v14];

  v16 = [(DBTodayViewController *)self widgetContainerViewController];
  [v16 requestSizeChange];

  v17 = DBLogForCategory(2uLL);
  v18 = v17;
  if (v13)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(DBTodayViewController *)self navigationWidgetBundleIdentifier];
      v23 = 138543618;
      v24 = v13;
      v25 = 2114;
      v26 = v19;
      _os_log_impl(&dword_248146000, v18, OS_LOG_TYPE_DEFAULT, "Resolved target dashboard identifier is %{public}@, current identifier is: %{public}@", &v23, 0x16u);
    }

    v20 = [(DBTodayViewController *)self navigationWidgetBundleIdentifier];
    v21 = [v13 isEqualToString:v20];

    if ((v21 & 1) == 0)
    {
      v22 = DBLogForCategory(2uLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_248146000, v22, OS_LOG_TYPE_DEFAULT, "Updating navigation widgets to new identifier", &v23, 2u);
      }

      [(DBTodayViewController *)self _updateNavigationWidgetsForIdentifier:v13];
    }
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [DBTodayViewController navigationStateProvider:v18 navigatingIdentifiersDidChange:?];
    }
  }
}

- (void)_updateNavigationWidgetsForIdentifier:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DBTodayViewController *)self isViewLoaded];
  v6 = DBLogForCategory(2uLL);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = [(DBTodayViewController *)self navigationWidgetBundleIdentifier];
      v16 = 138543618;
      v17 = v8;
      v18 = 2114;
      v19 = v4;
      _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Active widget navigation identifier changed from %{public}@ to %{public}@", &v16, 0x16u);
    }

    v9 = +[DBApplicationController sharedInstance];
    v6 = [v9 applicationWithBundleIdentifier:v4];

    [(DBTodayViewController *)self _updateNavigationWidgetScenesForApplication:v6];
    v10 = [v4 copy];
    [(DBTodayViewController *)self setNavigationWidgetBundleIdentifier:v10];

    v11 = [(DBTodayViewController *)self environment];
    v12 = [v11 environmentConfiguration];
    v13 = [v12 analytics];
    v14 = [(DBTodayViewController *)self navigationWidgetBundleIdentifier];
    [v13 dashboardNavigationDidChangeToBundleIdentifier:v14];
  }

  else if (v7)
  {
    v15 = [(DBTodayViewController *)self navigationWidgetBundleIdentifier];
    v16 = 138543618;
    v17 = v15;
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "View not yet loaded, unable to set active widget navigation identifier %{public}@ to %{public}@", &v16, 0x16u);
  }
}

- (void)_updateNavigationWidgetScenesForApplication:(id)a3
{
  v4 = a3;
  v5 = [v4 bundleIdentifier];
  v6 = [(DBTodayViewController *)self navigationWidgetBundleIdentifier];
  v7 = [v5 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [(DBTodayViewController *)self navigationMapWidgetScene];
    [v8 invalidate];

    [(DBTodayViewController *)self setNavigationMapWidgetScene:0];
    v9 = [(DBTodayViewController *)self navigationInstructionWidgetScene];
    [v9 invalidate];

    [(DBTodayViewController *)self setNavigationInstructionWidgetScene:0];
    if (v4)
    {
      v10 = [(DBTodayViewController *)self widgetSceneWorkspace];

      if (v10)
      {
        v11 = [(DBTodayViewController *)self environment];
        v12 = [v11 displayIdentity];

        v45 = [v4 appPolicy];
        v46 = v12;
        if ([v45 launchUsingTemplateUI])
        {
          v13 = +[DBApplicationController sharedInstance];
          v14 = [v13 templateUIHostApplication];

          v15 = MEMORY[0x277CCACA8];
          v16 = [v14 bundleIdentifier];
          v17 = [v4 bundleIdentifier];
          v18 = [v15 stringWithFormat:@"%@:%@:%@%@", v12, v16, v17, @":dashboard"];

          v19 = MEMORY[0x277CCACA8];
          v20 = [v14 bundleIdentifier];
          v21 = [v4 bundleIdentifier];
          v22 = v12;
          v23 = v21;
          v24 = [v19 stringWithFormat:@"%@:%@:%@%@", v22, v20, v21, @":widget"];

          v25 = 0x277CF9368;
        }

        else
        {
          v26 = MEMORY[0x277CCACA8];
          v27 = [v4 bundleIdentifier];
          v18 = [v26 stringWithFormat:@"%@:%@%@", v12, v27, @":dashboard"];

          v28 = MEMORY[0x277CCACA8];
          v20 = [v4 bundleIdentifier];
          v24 = [v28 stringWithFormat:@"%@:%@%@", v12, v20, @":widget"];
          v14 = 0;
          v25 = 0x277CF92B0;
        }

        v29 = [*v25 specification];
        if (v14)
        {
          v30 = v14;
        }

        else
        {
          v30 = v4;
        }

        v31 = v30;
        v32 = [(DBTodayViewController *)self widgetSceneWorkspace];
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __69__DBTodayViewController__updateNavigationWidgetScenesForApplication___block_invoke;
        v51[3] = &unk_278F04670;
        v52 = v18;
        v33 = v31;
        v53 = v33;
        v34 = v29;
        v54 = v34;
        v35 = v18;
        v36 = [v32 createScene:v51];

        [(DBTodayViewController *)self setNavigationMapWidgetScene:v36];
        v37 = [(DBTodayViewController *)self widgetSceneWorkspace];
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __69__DBTodayViewController__updateNavigationWidgetScenesForApplication___block_invoke_2;
        v47[3] = &unk_278F04670;
        v48 = v24;
        v49 = v33;
        v50 = v34;
        v38 = v34;
        v39 = v33;
        v40 = v24;
        v41 = [v37 createScene:v47];

        [(DBTodayViewController *)self setNavigationInstructionWidgetScene:v41];
        v42 = [(DBTodayViewController *)self navigationMapWidgetViewController];
        [v42 setScene:v36 application:v4];

        v43 = [(DBTodayViewController *)self widgetContainerViewController];
        v44 = [v43 navigationInstructionWidgetViewController];
        [v44 setScene:v41 application:v4];
      }
    }
  }
}

void __69__DBTodayViewController__updateNavigationWidgetScenesForApplication___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v8 = a2;
  [v8 setIdentifier:v3];
  v4 = MEMORY[0x277D0ADA8];
  v5 = [*(a1 + 40) info];
  v6 = [v5 processIdentity];
  v7 = [v4 defaultIdentityForProcessIdentity:v6];
  [v8 setClientIdentity:v7];

  [v8 setSpecification:*(a1 + 48)];
}

void __69__DBTodayViewController__updateNavigationWidgetScenesForApplication___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v8 = a2;
  [v8 setIdentifier:v3];
  v4 = MEMORY[0x277D0ADA8];
  v5 = [*(a1 + 40) info];
  v6 = [v5 processIdentity];
  v7 = [v4 defaultIdentityForProcessIdentity:v6];
  [v8 setClientIdentity:v7];

  [v8 setSpecification:*(a1 + 48)];
}

- (void)thermalMonitorLevelDidChange:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__DBTodayViewController_thermalMonitorLevelDidChange___block_invoke;
  v6[3] = &unk_278F014B8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __54__DBTodayViewController_thermalMonitorLevelDidChange___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = NSStringFromDBThermalLevel([*(a1 + 32) level]);
    *buf = 138412290;
    v22 = v3;
    _os_log_impl(&dword_248146000, v2, OS_LOG_TYPE_INFO, "Thermal level changed to %@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) suggestedFrameRateLimit];
  v5 = [*(a1 + 40) navigationMapWidgetScene];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 settings];
    v8 = [v7 conformsToProtocol:&unk_285B720C8];

    if (v8)
    {
      v9 = DBLogForCategory(2uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v6 identity];
        *buf = 138543618;
        v22 = v4;
        v23 = 2114;
        v24 = v10;
        _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_INFO, "Updating frame rate limit to %{public}@ for scene %{public}@", buf, 0x16u);
      }

      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __54__DBTodayViewController_thermalMonitorLevelDidChange___block_invoke_305;
      v19[3] = &unk_278F02568;
      v20 = v4;
      [v6 updateSettings:v19];
    }
  }

  v11 = [*(a1 + 40) navigationInstructionWidgetScene];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 settings];
    v14 = [v13 conformsToProtocol:&unk_285B720C8];

    if (v14)
    {
      v15 = DBLogForCategory(2uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v12 identity];
        *buf = 138543618;
        v22 = v4;
        v23 = 2114;
        v24 = v16;
        _os_log_impl(&dword_248146000, v15, OS_LOG_TYPE_INFO, "Updating frame rate limit to %{public}@ for scene %{public}@", buf, 0x16u);
      }

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __54__DBTodayViewController_thermalMonitorLevelDidChange___block_invoke_312;
      v17[3] = &unk_278F02568;
      v18 = v4;
      [v12 updateSettings:v17];
    }
  }
}

void __54__DBTodayViewController_thermalMonitorLevelDidChange___block_invoke_305(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 conformsToProtocol:&unk_285B71F30])
  {
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  [v3 setFrameRateLimit:*(a1 + 32)];
}

void __54__DBTodayViewController_thermalMonitorLevelDidChange___block_invoke_312(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 conformsToProtocol:&unk_285B71F30])
  {
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  [v3 setFrameRateLimit:*(a1 + 32)];
}

- (void)_updateSceneTraits
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(DBTodayViewController *)self traitCollection];
  v4 = [v3 sbh_iconImageStyleConfiguration];

  v5 = [v4 homeScreenIconStyleConfiguration];
  v6 = [(DBTodayViewController *)self nowPlayingWidgetScene];

  if (v6)
  {
    v7 = DBLogForCategory(0x11uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(DBTodayViewController *)self nowPlayingWidgetScene];
      *buf = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Updating iconStyleConfiguration %@ for scene: %@", buf, 0x16u);
    }

    v9 = [(DBTodayViewController *)self nowPlayingWidgetScene];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__DBTodayViewController__updateSceneTraits__block_invoke;
    v10[3] = &unk_278F01FD0;
    v11 = v5;
    [v9 updateSettings:v10];
  }
}

void __43__DBTodayViewController__updateSceneTraits__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    [v4 setIconStyleConfiguration:*(a1 + 32)];
  }
}

- (DBEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (void)navigationStateProvider:(void *)a1 navigatingIdentifiersDidChange:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 navigationWidgetBundleIdentifier];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_248146000, a2, OS_LOG_TYPE_ERROR, "Target dashboard identifier is nil, keeping identifer as %{public}@", &v4, 0xCu);
}

@end