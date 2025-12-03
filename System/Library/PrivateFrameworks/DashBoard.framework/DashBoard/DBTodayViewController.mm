@interface DBTodayViewController
+ (BOOL)isEnabledAndSupportedForIconProvider:(id)provider;
- (DBEnvironment)environment;
- (DBTodayViewController)initWithEnvironment:(id)environment layoutEngine:(id)engine;
- (NSArray)landscapeConstraints;
- (NSArray)portraitConstraints;
- (NSArray)squareConstraints;
- (NSString)navigationWidgetBundleIdentifier;
- (id)linearFocusItems;
- (id)preferredFocusEnvironments;
- (unint64_t)_layout;
- (void)_updateNavigationWidgetScenesForApplication:(id)application;
- (void)_updateNavigationWidgetsForIdentifier:(id)identifier;
- (void)_updateSceneTraits;
- (void)didChangeLayout:(id)layout;
- (void)environmentConfiguration:(id)configuration appearanceStyleDidChange:(int64_t)change;
- (void)environmentConfiguration:(id)configuration mapsAppearanceStyleDidChange:(int64_t)change;
- (void)invalidate;
- (void)navigationStateProvider:(id)provider frontmostIdentifierDidChange:(id)change;
- (void)navigationStateProvider:(id)provider navigatingIdentifiersDidChange:(id)change;
- (void)reloadConstraints;
- (void)setActive:(BOOL)active;
- (void)setForeground:(BOOL)foreground;
- (void)setSceneWidgetsDisabled:(BOOL)disabled forRequester:(id)requester;
- (void)setSmartWidgetCanChangeVisibilityDisabled:(BOOL)disabled forRequester:(id)requester;
- (void)thermalMonitorLevelDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DBTodayViewController

- (NSString)navigationWidgetBundleIdentifier
{
  useNightModeTester = [MEMORY[0x277CF89D0] useNightModeTester];
  valueBool = [useNightModeTester valueBool];

  if (valueBool)
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

- (DBTodayViewController)initWithEnvironment:(id)environment layoutEngine:(id)engine
{
  v27[2] = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  engineCopy = engine;
  v26.receiver = self;
  v26.super_class = DBTodayViewController;
  v8 = [(DBTodayViewController *)&v26 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_environment, environmentCopy);
    v10 = objc_alloc_init(DBTodayViewSynchronizedAnimationManager);
    animationManager = v9->_animationManager;
    v9->_animationManager = v10;

    objc_storeStrong(&v9->_layoutEngine, engine);
    v12 = [[DBSceneWorkspace alloc] initWithIdentifier:@"com.apple.DashBoard.scene-workspace.dashboard"];
    widgetSceneWorkspace = v9->_widgetSceneWorkspace;
    v9->_widgetSceneWorkspace = v12;

    WeakRetained = objc_loadWeakRetained(&v9->_environment);
    environmentConfiguration = [WeakRetained environmentConfiguration];
    [environmentConfiguration addObserver:v9];

    v16 = objc_loadWeakRetained(&v9->_environment);
    environmentConfiguration2 = [v16 environmentConfiguration];
    thermalMonitor = [environmentConfiguration2 thermalMonitor];
    [thermalMonitor addObserver:v9];

    [(DBTodayViewController *)v9 setSmartWidgetCanChangeVisibilityDisabled:1 forRequester:@"DBTodayViewSetupRequester"];
    environmentConfiguration3 = [environmentCopy environmentConfiguration];
    navigationStateProvider = [environmentConfiguration3 navigationStateProvider];

    [navigationStateProvider addObserver:v9];
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

+ (BOOL)isEnabledAndSupportedForIconProvider:(id)provider
{
  providerCopy = provider;
  if (DBIsInternalInstall_onceToken_3 != -1)
  {
    +[DBTodayViewController isEnabledAndSupportedForIconProvider:];
  }

  if (DBIsInternalInstall_isInternal_3 != 1 || ([MEMORY[0x277CBEBD0] standardUserDefaults], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "BOOLForKey:", @"CARDisableDashboard"), v4, !v5))
  {
    v8 = +[DBApplicationController sharedInstance];
    mapsApplication = [v8 mapsApplication];

    mEMORY[0x277D0EB00] = [MEMORY[0x277D0EB00] sharedConfiguration];
    currentCountrySupportsCarIntegration = [mEMORY[0x277D0EB00] currentCountrySupportsCarIntegration];
    v11 = DBLogForCategory(0);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (currentCountrySupportsCarIntegration)
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, "Geo services are supported.", buf, 2u);
      }

      if (mapsApplication)
      {
        bundleIdentifier = [mapsApplication bundleIdentifier];
        v14 = [providerCopy isIconVisibleForIdentifier:bundleIdentifier];

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
    allApplications = [v15 allApplications];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __62__DBTodayViewController_isEnabledAndSupportedForIconProvider___block_invoke;
    v18[3] = &unk_278F04648;
    v19 = providerCopy;
    v20 = buf;
    [allApplications enumerateObjectsUsingBlock:v18];

    v7 = v22[24];
    _Block_object_dispose(buf, 8);
    goto LABEL_18;
  }

  mapsApplication = DBLogForCategory(2uLL);
  if (os_log_type_enabled(mapsApplication, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248146000, mapsApplication, OS_LOG_TYPE_DEFAULT, "Dashboard has been disabled with user default", buf, 2u);
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

- (void)setSceneWidgetsDisabled:(BOOL)disabled forRequester:(id)requester
{
  disabledCopy = disabled;
  requesterCopy = requester;
  sceneWidgetsDisabledRequesters = [(DBTodayViewController *)self sceneWidgetsDisabledRequesters];
  sceneWidgetsDisabledRequesters2 = sceneWidgetsDisabledRequesters;
  if (disabledCopy)
  {

    if (!sceneWidgetsDisabledRequesters2)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [(DBTodayViewController *)self setSceneWidgetsDisabledRequesters:v9];
    }

    sceneWidgetsDisabledRequesters2 = [(DBTodayViewController *)self sceneWidgetsDisabledRequesters];
    [sceneWidgetsDisabledRequesters2 addObject:requesterCopy];
  }

  else
  {
    [sceneWidgetsDisabledRequesters removeObject:requesterCopy];
  }

  sceneWidgetsDisabledRequesters3 = [(DBTodayViewController *)self sceneWidgetsDisabledRequesters];
  v11 = [sceneWidgetsDisabledRequesters3 count] == 0;

  navigationMapWidgetViewController = [(DBTodayViewController *)self navigationMapWidgetViewController];
  [navigationMapWidgetViewController setEnabled:v11];

  widgetContainerViewController = [(DBTodayViewController *)self widgetContainerViewController];
  [widgetContainerViewController setSceneWidgetsEnabled:v11];
}

- (void)setSmartWidgetCanChangeVisibilityDisabled:(BOOL)disabled forRequester:(id)requester
{
  disabledCopy = disabled;
  requesterCopy = requester;
  widgetContainerViewController = [(DBTodayViewController *)self widgetContainerViewController];
  [widgetContainerViewController setSmartWidgetCanChangeVisibilityDisabled:disabledCopy forRequester:requesterCopy];
}

- (void)setForeground:(BOOL)foreground
{
  foregroundCopy = foreground;
  navigationMapWidgetViewController = [(DBTodayViewController *)self navigationMapWidgetViewController];
  [navigationMapWidgetViewController setForeground:foregroundCopy];

  widgetContainerViewController = [(DBTodayViewController *)self widgetContainerViewController];
  [widgetContainerViewController setSceneWidgetsForeground:foregroundCopy];
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  navigationMapWidgetViewController = [(DBTodayViewController *)self navigationMapWidgetViewController];
  [navigationMapWidgetViewController setActive:activeCopy];

  widgetContainerViewController = [(DBTodayViewController *)self widgetContainerViewController];
  [widgetContainerViewController setSceneWidgetsActive:activeCopy];
}

- (void)viewDidLoad
{
  v54.receiver = self;
  v54.super_class = DBTodayViewController;
  [(DBTodayViewController *)&v54 viewDidLoad];
  v3 = objc_opt_new();
  view = [(DBTodayViewController *)self view];
  [view _setBackground:v3];

  v5 = objc_alloc_init(DBLayoutHelperView);
  [(DBLayoutHelperView *)v5 setLayoutDelegate:self];
  view2 = [(DBTodayViewController *)self view];
  [view2 addSubview:v5];

  [(DBTodayViewController *)self setLayoutHelperView:v5];
  v7 = [DBNavigationMapWidgetViewController alloc];
  environment = [(DBTodayViewController *)self environment];
  animationManager = [(DBTodayViewController *)self animationManager];
  v10 = [(DBSceneWidgetViewController *)v7 initWithEnvironment:environment animationManager:animationManager widgetSizeManager:0];
  [(DBTodayViewController *)self setNavigationMapWidgetViewController:v10];

  navigationMapWidgetViewController = [(DBTodayViewController *)self navigationMapWidgetViewController];
  [(DBTodayViewController *)self addChildViewController:navigationMapWidgetViewController];

  view3 = [(DBTodayViewController *)self view];
  navigationMapWidgetViewController2 = [(DBTodayViewController *)self navigationMapWidgetViewController];
  view4 = [navigationMapWidgetViewController2 view];
  [view3 addSubview:view4];

  navigationMapWidgetViewController3 = [(DBTodayViewController *)self navigationMapWidgetViewController];
  [navigationMapWidgetViewController3 didMoveToParentViewController:self];

  navigationMapWidgetViewController4 = [(DBTodayViewController *)self navigationMapWidgetViewController];
  view5 = [navigationMapWidgetViewController4 view];
  [view5 setTranslatesAutoresizingMaskIntoConstraints:0];

  navigationMapWidgetViewController5 = [(DBTodayViewController *)self navigationMapWidgetViewController];
  view6 = [navigationMapWidgetViewController5 view];
  [view6 setAccessibilityIdentifier:@"CARAppTodayViewMapView"];

  v20 = +[DBApplicationController sharedInstance];
  v21 = [v20 applicationWithBundleIdentifier:@"com.apple.CarRadio"];

  environment2 = [(DBTodayViewController *)self environment];
  displayIdentity = [environment2 displayIdentity];

  v24 = MEMORY[0x277CCACA8];
  bundleIdentifier = [v21 bundleIdentifier];
  v26 = [v24 stringWithFormat:@"%@:%@%@", displayIdentity, bundleIdentifier, @":widget"];

  widgetSceneWorkspace = [(DBTodayViewController *)self widgetSceneWorkspace];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __36__DBTodayViewController_viewDidLoad__block_invoke;
  v51[3] = &unk_278F021D0;
  v28 = v26;
  v52 = v28;
  v29 = v21;
  v53 = v29;
  v30 = [widgetSceneWorkspace createScene:v51];

  [(DBTodayViewController *)self setNowPlayingWidgetScene:v30];
  v31 = [DBWidgetContainerViewController alloc];
  environment3 = [(DBTodayViewController *)self environment];
  animationManager2 = [(DBTodayViewController *)self animationManager];
  nowPlayingWidgetScene = [(DBTodayViewController *)self nowPlayingWidgetScene];
  v35 = [(DBWidgetContainerViewController *)v31 initWithEnvironment:environment3 animationManager:animationManager2 nowPlayingWidgetScene:nowPlayingWidgetScene];
  [(DBTodayViewController *)self setWidgetContainerViewController:v35];

  widgetContainerViewController = [(DBTodayViewController *)self widgetContainerViewController];
  [(DBTodayViewController *)self addChildViewController:widgetContainerViewController];

  view7 = [(DBTodayViewController *)self view];
  widgetContainerViewController2 = [(DBTodayViewController *)self widgetContainerViewController];
  view8 = [widgetContainerViewController2 view];
  [view7 addSubview:view8];

  widgetContainerViewController3 = [(DBTodayViewController *)self widgetContainerViewController];
  [widgetContainerViewController3 didMoveToParentViewController:self];

  widgetContainerViewController4 = [(DBTodayViewController *)self widgetContainerViewController];
  view9 = [widgetContainerViewController4 view];
  [view9 setTranslatesAutoresizingMaskIntoConstraints:0];

  widgetContainerViewController5 = [(DBTodayViewController *)self widgetContainerViewController];
  view10 = [widgetContainerViewController5 view];
  [view10 setAccessibilityIdentifier:@"CARAppTodayViewWidgetContainer"];

  environment4 = [(DBTodayViewController *)self environment];
  environmentConfiguration = [environment4 environmentConfiguration];
  navigationStateProvider = [environmentConfiguration navigationStateProvider];

  if (DBIsInternalInstall_onceToken_3 != -1)
  {
    [DBTodayViewController viewDidLoad];
  }

  if (DBIsInternalInstall_isInternal_3 != 1 || ([MEMORY[0x277CBEBD0] standardUserDefaults], v48 = objc_claimAutoreleasedReturnValue(), v49 = objc_msgSend(v48, "BOOLForKey:", @"CARDisableAutoLaunchNavigation"), v48, (v49 & 1) == 0))
  {
    navigatingIdentifiers = [navigationStateProvider navigatingIdentifiers];
    [(DBTodayViewController *)self navigationStateProvider:navigationStateProvider navigatingIdentifiersDidChange:navigatingIdentifiers];
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
  layoutEngine = [(DBTodayViewController *)self layoutEngine];
  [layoutEngine todayViewAdditionalInsets];
  [(DBTodayViewController *)self setAdditionalSafeAreaInsets:?];
}

- (id)linearFocusItems
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  environment = [(DBTodayViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];
  isRightHandDrive = [environmentConfiguration isRightHandDrive];

  traitCollection = [(DBTodayViewController *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  flipDashboardLayout = [MEMORY[0x277CF89C8] flipDashboardLayout];
  valueBool = [flipDashboardLayout valueBool];

  v11 = isRightHandDrive ^ (layoutDirection != 1) ^ valueBool;
  if ([(DBTodayViewController *)self _layout]!= 1 || v11)
  {
    navigationMapWidgetViewController = [(DBTodayViewController *)self navigationMapWidgetViewController];
    viewIfLoaded = [navigationMapWidgetViewController viewIfLoaded];

    if (viewIfLoaded)
    {
      navigationMapWidgetViewController2 = [(DBTodayViewController *)self navigationMapWidgetViewController];
      linearFocusItems = [navigationMapWidgetViewController2 linearFocusItems];
      [v3 addObjectsFromArray:linearFocusItems];
    }
  }

  widgetContainerViewController = [(DBTodayViewController *)self widgetContainerViewController];
  linearFocusItems2 = [widgetContainerViewController linearFocusItems];
  [v3 addObjectsFromArray:linearFocusItems2];

  if (!(([(DBTodayViewController *)self _layout]!= 1) | v11 & 1))
  {
    navigationMapWidgetViewController3 = [(DBTodayViewController *)self navigationMapWidgetViewController];
    viewIfLoaded2 = [navigationMapWidgetViewController3 viewIfLoaded];

    if (viewIfLoaded2)
    {
      navigationMapWidgetViewController4 = [(DBTodayViewController *)self navigationMapWidgetViewController];
      linearFocusItems3 = [navigationMapWidgetViewController4 linearFocusItems];
      [v3 addObjectsFromArray:linearFocusItems3];
    }
  }

  return v3;
}

- (id)preferredFocusEnvironments
{
  v9[1] = *MEMORY[0x277D85DE8];
  linearFocusItems = [(DBTodayViewController *)self linearFocusItems];
  if ([linearFocusItems count])
  {
    if ([(DBTodayViewController *)self preferredFocusHeading]== 1)
    {
      lastObject = [linearFocusItems lastObject];
      v9[0] = lastObject;
      v5 = v9;
    }

    else
    {
      lastObject = [linearFocusItems firstObject];
      v8 = lastObject;
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

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = DBTodayViewController;
  [(DBTodayViewController *)&v4 viewDidAppear:appear];
  [(DBTodayViewController *)self reloadConstraints];
}

- (NSArray)portraitConstraints
{
  portraitConstraints = self->_portraitConstraints;
  if (!portraitConstraints)
  {
    v4 = objc_opt_new();
    navigationMapWidgetViewController = [(DBTodayViewController *)self navigationMapWidgetViewController];
    view = [navigationMapWidgetViewController view];

    widgetContainerViewController = [(DBTodayViewController *)self widgetContainerViewController];
    view2 = [widgetContainerViewController view];

    leadingAnchor = [view leadingAnchor];
    view3 = [(DBTodayViewController *)self view];
    safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:4.0];
    [(NSArray *)v4 addObject:v13];

    view4 = [(DBTodayViewController *)self view];
    safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
    trailingAnchor = [safeAreaLayoutGuide2 trailingAnchor];
    trailingAnchor2 = [view trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:4.0];
    [(NSArray *)v4 addObject:v18];

    topAnchor = [view topAnchor];
    view5 = [(DBTodayViewController *)self view];
    safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
    v23 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:4.0];
    [(NSArray *)v4 addObject:v23];

    leadingAnchor3 = [view2 leadingAnchor];
    view6 = [(DBTodayViewController *)self view];
    safeAreaLayoutGuide4 = [view6 safeAreaLayoutGuide];
    leadingAnchor4 = [safeAreaLayoutGuide4 leadingAnchor];
    v28 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:4.0];
    [(NSArray *)v4 addObject:v28];

    view7 = [(DBTodayViewController *)self view];
    safeAreaLayoutGuide5 = [view7 safeAreaLayoutGuide];
    trailingAnchor3 = [safeAreaLayoutGuide5 trailingAnchor];
    trailingAnchor4 = [view2 trailingAnchor];
    v33 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:4.0];
    [(NSArray *)v4 addObject:v33];

    topAnchor3 = [view2 topAnchor];
    bottomAnchor = [view bottomAnchor];
    v36 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:4.0];
    [(NSArray *)v4 addObject:v36];

    view8 = [(DBTodayViewController *)self view];
    safeAreaLayoutGuide6 = [view8 safeAreaLayoutGuide];
    bottomAnchor2 = [safeAreaLayoutGuide6 bottomAnchor];
    bottomAnchor3 = [view2 bottomAnchor];
    v41 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:4.0];
    [(NSArray *)v4 addObject:v41];

    heightAnchor = [view2 heightAnchor];
    v43 = [heightAnchor constraintGreaterThanOrEqualToConstant:166.0];

    LODWORD(v44) = 1148846080;
    [view2 setContentHuggingPriority:1 forAxis:v44];
    [(NSArray *)v4 addObject:v43];
    heightAnchor2 = [view heightAnchor];
    view9 = [(DBTodayViewController *)self view];
    safeAreaLayoutGuide7 = [view9 safeAreaLayoutGuide];
    heightAnchor3 = [safeAreaLayoutGuide7 heightAnchor];
    v49 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3 multiplier:0.5 constant:4.0 * -3.0];

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
    navigationMapWidgetViewController = [(DBTodayViewController *)self navigationMapWidgetViewController];
    view = [navigationMapWidgetViewController view];

    widgetContainerViewController = [(DBTodayViewController *)self widgetContainerViewController];
    view2 = [widgetContainerViewController view];

    leadingAnchor = [view leadingAnchor];
    view3 = [(DBTodayViewController *)self view];
    safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:4.0];
    [(NSArray *)v4 addObject:v13];

    view4 = [(DBTodayViewController *)self view];
    safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
    trailingAnchor = [safeAreaLayoutGuide2 trailingAnchor];
    trailingAnchor2 = [view trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:4.0];
    [(NSArray *)v4 addObject:v18];

    topAnchor = [view topAnchor];
    view5 = [(DBTodayViewController *)self view];
    safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
    v23 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:4.0];
    [(NSArray *)v4 addObject:v23];

    leadingAnchor3 = [view2 leadingAnchor];
    view6 = [(DBTodayViewController *)self view];
    safeAreaLayoutGuide4 = [view6 safeAreaLayoutGuide];
    leadingAnchor4 = [safeAreaLayoutGuide4 leadingAnchor];
    v28 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:4.0];
    [(NSArray *)v4 addObject:v28];

    view7 = [(DBTodayViewController *)self view];
    safeAreaLayoutGuide5 = [view7 safeAreaLayoutGuide];
    trailingAnchor3 = [safeAreaLayoutGuide5 trailingAnchor];
    trailingAnchor4 = [view2 trailingAnchor];
    v33 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:4.0];
    [(NSArray *)v4 addObject:v33];

    topAnchor3 = [view2 topAnchor];
    bottomAnchor = [view bottomAnchor];
    v36 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:4.0];
    [(NSArray *)v4 addObject:v36];

    view8 = [(DBTodayViewController *)self view];
    safeAreaLayoutGuide6 = [view8 safeAreaLayoutGuide];
    bottomAnchor2 = [safeAreaLayoutGuide6 bottomAnchor];
    bottomAnchor3 = [view2 bottomAnchor];
    v41 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:4.0];
    [(NSArray *)v4 addObject:v41];

    heightAnchor = [view2 heightAnchor];
    v43 = [heightAnchor constraintEqualToConstant:0.0];
    [(DBTodayViewController *)self setSquareContainerHeightConstraint:v43];

    squareContainerHeightConstraint = [(DBTodayViewController *)self squareContainerHeightConstraint];
    LODWORD(v45) = 1148846080;
    [squareContainerHeightConstraint setPriority:v45];

    squareContainerHeightConstraint2 = [(DBTodayViewController *)self squareContainerHeightConstraint];
    [(NSArray *)v4 addObject:squareContainerHeightConstraint2];

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
    navigationMapWidgetViewController = [(DBTodayViewController *)self navigationMapWidgetViewController];
    view = [navigationMapWidgetViewController view];

    widgetContainerViewController = [(DBTodayViewController *)self widgetContainerViewController];
    view2 = [widgetContainerViewController view];

    environment = [(DBTodayViewController *)self environment];
    environmentConfiguration = [environment environmentConfiguration];
    isRightHandDrive = [environmentConfiguration isRightHandDrive];

    flipDashboardLayout = [MEMORY[0x277CF89C8] flipDashboardLayout];
    valueBool = [flipDashboardLayout valueBool];

    if (isRightHandDrive != valueBool)
    {
      v13 = view2;
    }

    else
    {
      v13 = view;
    }

    v64 = view;
    if (isRightHandDrive != valueBool)
    {
      v14 = view;
    }

    else
    {
      v14 = view2;
    }

    v15 = v13;
    v16 = v14;
    v63 = view2;
    widthAnchor = [view2 widthAnchor];
    v18 = [widthAnchor constraintEqualToConstant:0.0];
    [(DBTodayViewController *)self setLandscapeContainerWidthConstraint:v18];

    v65 = objc_alloc_init(MEMORY[0x277CBEB18]);
    topAnchor = [v15 topAnchor];
    view3 = [(DBTodayViewController *)self view];
    safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v55 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:4.0];
    v70[0] = v55;
    view4 = [(DBTodayViewController *)self view];
    safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
    bottomAnchor = [safeAreaLayoutGuide2 bottomAnchor];
    bottomAnchor2 = [v15 bottomAnchor];
    v50 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:4.0];
    v70[1] = v50;
    topAnchor3 = [v16 topAnchor];
    view5 = [(DBTodayViewController *)self view];
    safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
    topAnchor4 = [safeAreaLayoutGuide3 topAnchor];
    v45 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:4.0];
    v70[2] = v45;
    view6 = [(DBTodayViewController *)self view];
    safeAreaLayoutGuide4 = [view6 safeAreaLayoutGuide];
    bottomAnchor3 = [safeAreaLayoutGuide4 bottomAnchor];
    bottomAnchor4 = [v16 bottomAnchor];
    v22 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:4.0];
    v70[3] = v22;
    v66 = v16;
    leftAnchor = [v16 leftAnchor];
    v67 = v15;
    rightAnchor = [v15 rightAnchor];
    v25 = [leftAnchor constraintEqualToAnchor:rightAnchor constant:4.0];
    v70[4] = v25;
    landscapeContainerWidthConstraint = [(DBTodayViewController *)self landscapeContainerWidthConstraint];
    v70[5] = landscapeContainerWidthConstraint;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:6];
    [v65 addObjectsFromArray:v27];

    WeakRetained = objc_loadWeakRetained(&self->_environment);
    environmentConfiguration2 = [WeakRetained environmentConfiguration];
    LODWORD(safeAreaLayoutGuide4) = [environmentConfiguration2 hasDualStatusBar];

    if (safeAreaLayoutGuide4)
    {
      leftAnchor2 = [v67 leftAnchor];
      view7 = [(DBTodayViewController *)self view];
      safeAreaLayoutGuide5 = [view7 safeAreaLayoutGuide];
      leftAnchor3 = [safeAreaLayoutGuide5 leftAnchor];
      view9 = leftAnchor2;
      v32 = [leftAnchor2 constraintEqualToAnchor:leftAnchor3];
      v69[0] = v32;
      rightAnchor2 = [v66 rightAnchor];
      view8 = [(DBTodayViewController *)self view];
      safeAreaLayoutGuide6 = [view8 safeAreaLayoutGuide];
      rightAnchor3 = [safeAreaLayoutGuide6 rightAnchor];
      v37 = [rightAnchor2 constraintEqualToAnchor:rightAnchor3];
      v69[1] = v37;
      v38 = v69;
    }

    else
    {
      view9 = [(DBTodayViewController *)self view];
      view7 = [view9 safeAreaLayoutGuide];
      rightAnchor4 = [view7 rightAnchor];
      leftAnchor3 = [v66 rightAnchor];
      safeAreaLayoutGuide5 = rightAnchor4;
      v32 = [rightAnchor4 constraintEqualToAnchor:leftAnchor3 constant:4.0];
      v68[0] = v32;
      rightAnchor2 = [v67 leftAnchor];
      view8 = [(DBTodayViewController *)self view];
      safeAreaLayoutGuide6 = [view8 safeAreaLayoutGuide];
      rightAnchor3 = [safeAreaLayoutGuide6 leftAnchor];
      v37 = [rightAnchor2 constraintEqualToAnchor:rightAnchor3 constant:4.0];
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
  view = [(DBTodayViewController *)self view];
  [view bounds];
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
  _layout = [(DBTodayViewController *)self _layout];
  if (_layout == [(DBTodayViewController *)self currentLayoutType])
  {
    return;
  }

  [(DBTodayViewController *)self setCurrentLayoutType:_layout];
  layoutEngine = [(DBTodayViewController *)self layoutEngine];
  [layoutEngine todayViewAdditionalInsets];
  [(DBTodayViewController *)self setAdditionalSafeAreaInsets:?];

  switch(_layout)
  {
    case 1uLL:
      landscapeConstraints = [(DBTodayViewController *)self landscapeConstraints];
      break;
    case 2uLL:
      landscapeConstraints = [(DBTodayViewController *)self squareConstraints];
      break;
    case 3uLL:
      landscapeConstraints = [(DBTodayViewController *)self portraitConstraints];
      break;
    default:
      v12 = 0;
      goto LABEL_10;
  }

  v12 = landscapeConstraints;
LABEL_10:
  currentConstraints = [(DBTodayViewController *)self currentConstraints];

  if (currentConstraints)
  {
    v7 = MEMORY[0x277CCAAD0];
    currentConstraints2 = [(DBTodayViewController *)self currentConstraints];
    [v7 deactivateConstraints:currentConstraints2];

    [(DBTodayViewController *)self setCurrentConstraints:0];
  }

  widgetContainerViewController = [(DBTodayViewController *)self widgetContainerViewController];
  [widgetContainerViewController setLayoutType:_layout];

  widgetContainerViewController2 = [(DBTodayViewController *)self widgetContainerViewController];
  [widgetContainerViewController2 invalidateConstraints];

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
  navigationWidgetBundleIdentifier = [(DBTodayViewController *)self navigationWidgetBundleIdentifier];

  if (navigationWidgetBundleIdentifier)
  {
    environment = [(DBTodayViewController *)self environment];
    environmentConfiguration = [environment environmentConfiguration];
    appHistory = [environmentConfiguration appHistory];
    navigationWidgetBundleIdentifier2 = [(DBTodayViewController *)self navigationWidgetBundleIdentifier];
    [appHistory setDashboardAppOnDisconnect:navigationWidgetBundleIdentifier2];
  }

  navigationMapWidgetScene = [(DBTodayViewController *)self navigationMapWidgetScene];
  [navigationMapWidgetScene invalidate];

  navigationInstructionWidgetScene = [(DBTodayViewController *)self navigationInstructionWidgetScene];
  [navigationInstructionWidgetScene invalidate];

  nowPlayingWidgetScene = [(DBTodayViewController *)self nowPlayingWidgetScene];
  [nowPlayingWidgetScene invalidate];

  navigationMapWidgetViewController = [(DBTodayViewController *)self navigationMapWidgetViewController];
  [navigationMapWidgetViewController invalidate];

  widgetContainerViewController = [(DBTodayViewController *)self widgetContainerViewController];
  [widgetContainerViewController invalidate];

  animationManager = [(DBTodayViewController *)self animationManager];
  [animationManager invalidate];

  widgetSceneWorkspace = [(DBTodayViewController *)self widgetSceneWorkspace];
  [widgetSceneWorkspace invalidate];

  [(DBTodayViewController *)self setWidgetSceneWorkspace:0];
  environment2 = [(DBTodayViewController *)self environment];
  environmentConfiguration2 = [environment2 environmentConfiguration];
  [environmentConfiguration2 removeObserver:self];

  environment3 = [(DBTodayViewController *)self environment];
  environmentConfiguration3 = [environment3 environmentConfiguration];
  thermalMonitor = [environmentConfiguration3 thermalMonitor];
  [thermalMonitor removeObserver:self];

  environment4 = [(DBTodayViewController *)self environment];
  environmentConfiguration4 = [environment4 environmentConfiguration];
  navigationStateProvider = [environmentConfiguration4 navigationStateProvider];
  [navigationStateProvider removeObserver:self];
}

- (void)environmentConfiguration:(id)configuration appearanceStyleDidChange:(int64_t)change
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Appearance style changed for environment, updating user interface style", buf, 2u);
  }

  v6 = +[DBApplicationController sharedInstance];
  navigationWidgetBundleIdentifier = [(DBTodayViewController *)self navigationWidgetBundleIdentifier];
  v8 = [v6 applicationWithBundleIdentifier:navigationWidgetBundleIdentifier];

  environment = [(DBTodayViewController *)self environment];
  v10 = [environment sceneInterfaceStyleForApplication:v8 proxyApplication:0];

  navigationMapWidgetScene = [(DBTodayViewController *)self navigationMapWidgetScene];

  if (navigationMapWidgetScene)
  {
    v12 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = CPUIDescriptionForUserInterfaceStyle();
      navigationMapWidgetScene2 = [(DBTodayViewController *)self navigationMapWidgetScene];
      *buf = 138412546;
      v30 = v13;
      v31 = 2112;
      v32 = navigationMapWidgetScene2;
      _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "Updating user interface style to %@ for scene: %@", buf, 0x16u);
    }

    navigationMapWidgetScene3 = [(DBTodayViewController *)self navigationMapWidgetScene];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __75__DBTodayViewController_environmentConfiguration_appearanceStyleDidChange___block_invoke;
    v28[3] = &__block_descriptor_40_e43_v16__0__UIMutableApplicationSceneSettings_8l;
    v28[4] = v10;
    [navigationMapWidgetScene3 updateSettings:v28];
  }

  nowPlayingWidgetScene = [(DBTodayViewController *)self nowPlayingWidgetScene];

  if (nowPlayingWidgetScene)
  {
    v17 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = CPUIDescriptionForUserInterfaceStyle();
      nowPlayingWidgetScene2 = [(DBTodayViewController *)self nowPlayingWidgetScene];
      *buf = 138412546;
      v30 = v18;
      v31 = 2112;
      v32 = nowPlayingWidgetScene2;
      _os_log_impl(&dword_248146000, v17, OS_LOG_TYPE_DEFAULT, "Updating user interface style to %@ for scene: %@", buf, 0x16u);
    }

    nowPlayingWidgetScene3 = [(DBTodayViewController *)self nowPlayingWidgetScene];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __75__DBTodayViewController_environmentConfiguration_appearanceStyleDidChange___block_invoke_243;
    v27[3] = &__block_descriptor_40_e43_v16__0__UIMutableApplicationSceneSettings_8l;
    v27[4] = v10;
    [nowPlayingWidgetScene3 updateSettings:v27];
  }

  navigationInstructionWidgetScene = [(DBTodayViewController *)self navigationInstructionWidgetScene];

  if (navigationInstructionWidgetScene)
  {
    v22 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = CPUIDescriptionForUserInterfaceStyle();
      navigationInstructionWidgetScene2 = [(DBTodayViewController *)self navigationInstructionWidgetScene];
      *buf = 138412546;
      v30 = v23;
      v31 = 2112;
      v32 = navigationInstructionWidgetScene2;
      _os_log_impl(&dword_248146000, v22, OS_LOG_TYPE_DEFAULT, "Updating user interface style to %@ for scene: %@", buf, 0x16u);
    }

    navigationInstructionWidgetScene3 = [(DBTodayViewController *)self navigationInstructionWidgetScene];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __75__DBTodayViewController_environmentConfiguration_appearanceStyleDidChange___block_invoke_244;
    v26[3] = &__block_descriptor_40_e43_v16__0__UIMutableApplicationSceneSettings_8l;
    v26[4] = v10;
    [navigationInstructionWidgetScene3 updateSettings:v26];
  }
}

- (void)environmentConfiguration:(id)configuration mapsAppearanceStyleDidChange:(int64_t)change
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Maps appearance style changed for environment, updating maps appearance style", buf, 2u);
  }

  navigationMapWidgetScene = [(DBTodayViewController *)self navigationMapWidgetScene];
  v8 = navigationMapWidgetScene;
  if (navigationMapWidgetScene)
  {
    settings = [navigationMapWidgetScene settings];
    v10 = [settings conformsToProtocol:&unk_285B71FF0];

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
      v20[4] = change;
      [v8 updateSettings:v20];
    }
  }

  navigationInstructionWidgetScene = [(DBTodayViewController *)self navigationInstructionWidgetScene];
  v14 = navigationInstructionWidgetScene;
  if (navigationInstructionWidgetScene)
  {
    settings2 = [navigationInstructionWidgetScene settings];
    v16 = [settings2 conformsToProtocol:&unk_285B71FF0];

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
      v19[4] = change;
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

- (void)didChangeLayout:(id)layout
{
  [(DBTodayViewController *)self reloadConstraints];
  view = [(DBTodayViewController *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  currentLayoutType = [(DBTodayViewController *)self currentLayoutType];
  v15 = v7;
  v16 = v9;
  v17 = v11;
  v18 = v13;
  if (currentLayoutType == 2)
  {
    v19 = fmin((CGRectGetHeight(*&v15) + 4.0 * -3.0) * 0.5, 160.0);
    [(DBTodayViewController *)self squareContainerHeightConstraint];
  }

  else
  {
    v20 = CGRectGetWidth(*&v15) + 4.0 * -3.0;
    layoutEngine = [(DBTodayViewController *)self layoutEngine];
    [layoutEngine dualStatusBarTotalHorizontalWidth];
    v23 = v20 - v22;

    v19 = fmin(v23 * 0.5, 240.0);
    [(DBTodayViewController *)self landscapeContainerWidthConstraint];
  }
  v24 = ;
  [v24 setConstant:v19];
}

- (void)navigationStateProvider:(id)provider frontmostIdentifierDidChange:(id)change
{
  mostRecentDashboardNavigatingApp = [provider mostRecentDashboardNavigatingApp];
  navigationWidgetBundleIdentifier = [(DBTodayViewController *)self navigationWidgetBundleIdentifier];
  v6 = [mostRecentDashboardNavigatingApp isEqualToString:navigationWidgetBundleIdentifier];

  if ((v6 & 1) == 0)
  {
    [(DBTodayViewController *)self _updateNavigationWidgetsForIdentifier:mostRecentDashboardNavigatingApp];
  }
}

- (void)navigationStateProvider:(id)provider navigatingIdentifiersDidChange:(id)change
{
  v27 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  changeCopy = change;
  v8 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "Active navigation identifiers changed", &v23, 2u);
  }

  navigationWidgetBundleIdentifier = [(DBTodayViewController *)self navigationWidgetBundleIdentifier];
  v10 = [changeCopy containsObject:navigationWidgetBundleIdentifier];

  if ((v10 & 1) == 0)
  {
    widgetContainerViewController = [(DBTodayViewController *)self widgetContainerViewController];
    navigationInstructionWidgetViewController = [widgetContainerViewController navigationInstructionWidgetViewController];
    [navigationInstructionWidgetViewController setWantsLargeSize:0];
  }

  mostRecentDashboardNavigatingApp = [providerCopy mostRecentDashboardNavigatingApp];
  v14 = [changeCopy containsObject:mostRecentDashboardNavigatingApp];
  widgetContainerViewController2 = [(DBTodayViewController *)self widgetContainerViewController];
  [widgetContainerViewController2 setHasActiveNavigation:v14];

  widgetContainerViewController3 = [(DBTodayViewController *)self widgetContainerViewController];
  [widgetContainerViewController3 requestSizeChange];

  v17 = DBLogForCategory(2uLL);
  v18 = v17;
  if (mostRecentDashboardNavigatingApp)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      navigationWidgetBundleIdentifier2 = [(DBTodayViewController *)self navigationWidgetBundleIdentifier];
      v23 = 138543618;
      v24 = mostRecentDashboardNavigatingApp;
      v25 = 2114;
      v26 = navigationWidgetBundleIdentifier2;
      _os_log_impl(&dword_248146000, v18, OS_LOG_TYPE_DEFAULT, "Resolved target dashboard identifier is %{public}@, current identifier is: %{public}@", &v23, 0x16u);
    }

    navigationWidgetBundleIdentifier3 = [(DBTodayViewController *)self navigationWidgetBundleIdentifier];
    v21 = [mostRecentDashboardNavigatingApp isEqualToString:navigationWidgetBundleIdentifier3];

    if ((v21 & 1) == 0)
    {
      v22 = DBLogForCategory(2uLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_248146000, v22, OS_LOG_TYPE_DEFAULT, "Updating navigation widgets to new identifier", &v23, 2u);
      }

      [(DBTodayViewController *)self _updateNavigationWidgetsForIdentifier:mostRecentDashboardNavigatingApp];
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

- (void)_updateNavigationWidgetsForIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  isViewLoaded = [(DBTodayViewController *)self isViewLoaded];
  v6 = DBLogForCategory(2uLL);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (isViewLoaded)
  {
    if (v7)
    {
      navigationWidgetBundleIdentifier = [(DBTodayViewController *)self navigationWidgetBundleIdentifier];
      v16 = 138543618;
      v17 = navigationWidgetBundleIdentifier;
      v18 = 2114;
      v19 = identifierCopy;
      _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Active widget navigation identifier changed from %{public}@ to %{public}@", &v16, 0x16u);
    }

    v9 = +[DBApplicationController sharedInstance];
    v6 = [v9 applicationWithBundleIdentifier:identifierCopy];

    [(DBTodayViewController *)self _updateNavigationWidgetScenesForApplication:v6];
    v10 = [identifierCopy copy];
    [(DBTodayViewController *)self setNavigationWidgetBundleIdentifier:v10];

    environment = [(DBTodayViewController *)self environment];
    environmentConfiguration = [environment environmentConfiguration];
    analytics = [environmentConfiguration analytics];
    navigationWidgetBundleIdentifier2 = [(DBTodayViewController *)self navigationWidgetBundleIdentifier];
    [analytics dashboardNavigationDidChangeToBundleIdentifier:navigationWidgetBundleIdentifier2];
  }

  else if (v7)
  {
    navigationWidgetBundleIdentifier3 = [(DBTodayViewController *)self navigationWidgetBundleIdentifier];
    v16 = 138543618;
    v17 = navigationWidgetBundleIdentifier3;
    v18 = 2114;
    v19 = identifierCopy;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "View not yet loaded, unable to set active widget navigation identifier %{public}@ to %{public}@", &v16, 0x16u);
  }
}

- (void)_updateNavigationWidgetScenesForApplication:(id)application
{
  applicationCopy = application;
  bundleIdentifier = [applicationCopy bundleIdentifier];
  navigationWidgetBundleIdentifier = [(DBTodayViewController *)self navigationWidgetBundleIdentifier];
  v7 = [bundleIdentifier isEqualToString:navigationWidgetBundleIdentifier];

  if ((v7 & 1) == 0)
  {
    navigationMapWidgetScene = [(DBTodayViewController *)self navigationMapWidgetScene];
    [navigationMapWidgetScene invalidate];

    [(DBTodayViewController *)self setNavigationMapWidgetScene:0];
    navigationInstructionWidgetScene = [(DBTodayViewController *)self navigationInstructionWidgetScene];
    [navigationInstructionWidgetScene invalidate];

    [(DBTodayViewController *)self setNavigationInstructionWidgetScene:0];
    if (applicationCopy)
    {
      widgetSceneWorkspace = [(DBTodayViewController *)self widgetSceneWorkspace];

      if (widgetSceneWorkspace)
      {
        environment = [(DBTodayViewController *)self environment];
        displayIdentity = [environment displayIdentity];

        appPolicy = [applicationCopy appPolicy];
        v46 = displayIdentity;
        if ([appPolicy launchUsingTemplateUI])
        {
          v13 = +[DBApplicationController sharedInstance];
          templateUIHostApplication = [v13 templateUIHostApplication];

          v15 = MEMORY[0x277CCACA8];
          bundleIdentifier2 = [templateUIHostApplication bundleIdentifier];
          bundleIdentifier3 = [applicationCopy bundleIdentifier];
          v18 = [v15 stringWithFormat:@"%@:%@:%@%@", displayIdentity, bundleIdentifier2, bundleIdentifier3, @":dashboard"];

          v19 = MEMORY[0x277CCACA8];
          bundleIdentifier4 = [templateUIHostApplication bundleIdentifier];
          bundleIdentifier5 = [applicationCopy bundleIdentifier];
          v22 = displayIdentity;
          v23 = bundleIdentifier5;
          v24 = [v19 stringWithFormat:@"%@:%@:%@%@", v22, bundleIdentifier4, bundleIdentifier5, @":widget"];

          v25 = 0x277CF9368;
        }

        else
        {
          v26 = MEMORY[0x277CCACA8];
          bundleIdentifier6 = [applicationCopy bundleIdentifier];
          v18 = [v26 stringWithFormat:@"%@:%@%@", displayIdentity, bundleIdentifier6, @":dashboard"];

          v28 = MEMORY[0x277CCACA8];
          bundleIdentifier4 = [applicationCopy bundleIdentifier];
          v24 = [v28 stringWithFormat:@"%@:%@%@", displayIdentity, bundleIdentifier4, @":widget"];
          templateUIHostApplication = 0;
          v25 = 0x277CF92B0;
        }

        specification = [*v25 specification];
        if (templateUIHostApplication)
        {
          v30 = templateUIHostApplication;
        }

        else
        {
          v30 = applicationCopy;
        }

        v31 = v30;
        widgetSceneWorkspace2 = [(DBTodayViewController *)self widgetSceneWorkspace];
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __69__DBTodayViewController__updateNavigationWidgetScenesForApplication___block_invoke;
        v51[3] = &unk_278F04670;
        v52 = v18;
        v33 = v31;
        v53 = v33;
        v34 = specification;
        v54 = v34;
        v35 = v18;
        v36 = [widgetSceneWorkspace2 createScene:v51];

        [(DBTodayViewController *)self setNavigationMapWidgetScene:v36];
        widgetSceneWorkspace3 = [(DBTodayViewController *)self widgetSceneWorkspace];
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
        v41 = [widgetSceneWorkspace3 createScene:v47];

        [(DBTodayViewController *)self setNavigationInstructionWidgetScene:v41];
        navigationMapWidgetViewController = [(DBTodayViewController *)self navigationMapWidgetViewController];
        [navigationMapWidgetViewController setScene:v36 application:applicationCopy];

        widgetContainerViewController = [(DBTodayViewController *)self widgetContainerViewController];
        navigationInstructionWidgetViewController = [widgetContainerViewController navigationInstructionWidgetViewController];
        [navigationInstructionWidgetViewController setScene:v41 application:applicationCopy];
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

- (void)thermalMonitorLevelDidChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__DBTodayViewController_thermalMonitorLevelDidChange___block_invoke;
  v6[3] = &unk_278F014B8;
  v7 = changeCopy;
  selfCopy = self;
  v5 = changeCopy;
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
  traitCollection = [(DBTodayViewController *)self traitCollection];
  sbh_iconImageStyleConfiguration = [traitCollection sbh_iconImageStyleConfiguration];

  homeScreenIconStyleConfiguration = [sbh_iconImageStyleConfiguration homeScreenIconStyleConfiguration];
  nowPlayingWidgetScene = [(DBTodayViewController *)self nowPlayingWidgetScene];

  if (nowPlayingWidgetScene)
  {
    v7 = DBLogForCategory(0x11uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      nowPlayingWidgetScene2 = [(DBTodayViewController *)self nowPlayingWidgetScene];
      *buf = 138412546;
      v13 = homeScreenIconStyleConfiguration;
      v14 = 2112;
      v15 = nowPlayingWidgetScene2;
      _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Updating iconStyleConfiguration %@ for scene: %@", buf, 0x16u);
    }

    nowPlayingWidgetScene3 = [(DBTodayViewController *)self nowPlayingWidgetScene];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__DBTodayViewController__updateSceneTraits__block_invoke;
    v10[3] = &unk_278F01FD0;
    v11 = homeScreenIconStyleConfiguration;
    [nowPlayingWidgetScene3 updateSettings:v10];
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