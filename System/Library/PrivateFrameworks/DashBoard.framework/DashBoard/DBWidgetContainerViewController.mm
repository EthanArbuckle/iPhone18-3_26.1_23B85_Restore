@interface DBWidgetContainerViewController
- (BOOL)_canChangeSmartWidgetVisible;
- (BOOL)_smartWidgetShouldBeHidden;
- (CGSize)predictedSmartWidgetSize;
- (DBEnvironment)environment;
- (DBWidgetContainerViewController)initWithEnvironment:(id)environment animationManager:(id)manager nowPlayingWidgetScene:(id)scene;
- (NSArray)landscapePortraitConstraints;
- (NSArray)squareConstraints;
- (id)linearFocusItems;
- (void)_callStatusChanged:(id)changed;
- (void)_reloadConstraints;
- (void)_setupConstraints;
- (void)_smartWidgetHiddenDefaultChanged;
- (void)_updateMapWidgetSizes;
- (void)_updateSmartWidgetVisibleIfNecessary;
- (void)_updateStackViewsWithUpdates:(id)updates completion:(id)completion;
- (void)animateSmartWidget:(id)widget withOldUserInterfaceStyle:(int64_t)style newUserInterfaceStyle:(int64_t)interfaceStyle completion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)invalidateConstraints;
- (void)setInCallWidgetHidden:(BOOL)hidden;
- (void)setLayoutType:(unint64_t)type;
- (void)setSceneWidgetsActive:(BOOL)active;
- (void)setSceneWidgetsEnabled:(BOOL)enabled;
- (void)setSceneWidgetsForeground:(BOOL)foreground;
- (void)setSmartWidgetCanChangeVisibilityDisabled:(BOOL)disabled forRequester:(id)requester;
- (void)setSmartWidgetHidden:(BOOL)hidden;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation DBWidgetContainerViewController

- (DBEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (BOOL)_canChangeSmartWidgetVisible
{
  smartWidgetChangeVisibilityDisabledRequesters = [(DBWidgetContainerViewController *)self smartWidgetChangeVisibilityDisabledRequesters];
  v3 = [smartWidgetChangeVisibilityDisabledRequesters count] == 0;

  return v3;
}

- (BOOL)_smartWidgetShouldBeHidden
{
  v28 = *MEMORY[0x277D85DE8];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"CARSmartWidgetHidden"];

  smartWidgetController = [(DBWidgetContainerViewController *)self smartWidgetController];
  wantsToShowPrediction = [smartWidgetController wantsToShowPrediction];

  smartWidgetController2 = [(DBWidgetContainerViewController *)self smartWidgetController];
  readyToShowPrediction = [smartWidgetController2 readyToShowPrediction];

  if ([(DBWidgetContainerViewController *)self isInCallWidgetHidden])
  {
    v9 = 0;
  }

  else
  {
    layoutType = [(DBWidgetContainerViewController *)self layoutType];
    view = [(DBWidgetContainerViewController *)self view];
    [view bounds];
    Width = CGRectGetWidth(v29);

    v9 = 0;
    if (layoutType == 1 && Width < 265.0)
    {
      smartWidgetController3 = [(DBWidgetContainerViewController *)self smartWidgetController];
      v9 = [smartWidgetController3 isHighPriority] ^ 1;
    }
  }

  v14 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v16 = @"NO";
    if (v4)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    if (wantsToShowPrediction)
    {
      v18 = @"NO";
    }

    else
    {
      v18 = @"YES";
    }

    v20 = 138413058;
    v21 = v17;
    if (v9)
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    v22 = 2112;
    v23 = v18;
    v24 = 2112;
    v25 = v19;
    if (!readyToShowPrediction)
    {
      v16 = @"YES";
    }

    v26 = 2112;
    v27 = v16;
    _os_log_debug_impl(&dword_248146000, v14, OS_LOG_TYPE_DEBUG, "Smart widget should be hidden? smartWidgetHiddenOverride=%@ noPredictions=%@ hiddenForActiveCall=%@ notReadyToShowPredictions=%@", &v20, 0x2Au);
  }

  return v4 & 1 | ((wantsToShowPrediction & 1) == 0) | v9 & 1 | ((readyToShowPrediction & 1) == 0);
}

- (void)_updateMapWidgetSizes
{
  v26[1] = *MEMORY[0x277D85DE8];
  layoutType = [(DBWidgetContainerViewController *)self layoutType];
  if (layoutType == 1 || layoutType == 3)
  {
    primaryWidgetStackViewController = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
    view = [primaryWidgetStackViewController view];
    [view bounds];
    v17 = v16;
    v19 = v18;

    primaryWidgetStackViewController2 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
    visibleCount = [primaryWidgetStackViewController2 visibleCount];

    if (visibleCount == 3)
    {
      v12 = [MEMORY[0x277CCAE60] valueWithCGSize:{v17, (v19 + 4.0 * -2.0) * 0.5}];
      v25 = v12;
      v13 = &v25;
    }

    else
    {
      v12 = [MEMORY[0x277CCAE60] valueWithCGSize:{v17, (v19 - 4.0 + v19 - 4.0) / 3.0}];
      v24 = v12;
      v13 = &v24;
    }

    goto LABEL_10;
  }

  if (layoutType == 2)
  {
    secondaryWidgetStackViewController = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
    view2 = [secondaryWidgetStackViewController view];
    [view2 bounds];
    v7 = v6;
    v9 = v8;

    secondaryWidgetStackViewController2 = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
    visibleCount2 = [secondaryWidgetStackViewController2 visibleCount];

    if (visibleCount2 == 2)
    {
      v12 = [MEMORY[0x277CCAE60] valueWithCGSize:{v7, (v9 - 4.0 + v9 - 4.0) / 3.0}];
      v26[0] = v12;
      v13 = v26;
LABEL_10:
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:{1, v24, v25, v26[0]}];

      goto LABEL_11;
    }
  }

  v22 = MEMORY[0x277CBEBF8];
LABEL_11:
  navigationInstructionWidgetViewController = [(DBWidgetContainerViewController *)self navigationInstructionWidgetViewController];
  [navigationInstructionWidgetViewController setAvailableWidgetSizes:v22];
}

- (DBWidgetContainerViewController)initWithEnvironment:(id)environment animationManager:(id)manager nowPlayingWidgetScene:(id)scene
{
  v30[2] = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  managerCopy = manager;
  sceneCopy = scene;
  v29.receiver = self;
  v29.super_class = DBWidgetContainerViewController;
  v11 = [(DBWidgetContainerViewController *)&v29 init];
  if (v11)
  {
    v12 = [[DBSmartWidgetEngine alloc] initWithEnvironment:environmentCopy];
    engine = v11->_engine;
    v11->_engine = v12;

    objc_storeWeak(&v11->_environment, environmentCopy);
    objc_storeStrong(&v11->_nowPlayingWidgetScene, scene);
    v14 = [[DBNavigationInstructionWidgetViewController alloc] initWithEnvironment:environmentCopy animationManager:managerCopy widgetSizeManager:v11];
    navigationInstructionWidgetViewController = v11->_navigationInstructionWidgetViewController;
    v11->_navigationInstructionWidgetViewController = v14;

    v16 = [[DBNowPlayingWidgetViewController alloc] initWithEnvironment:environmentCopy animationManager:managerCopy widgetSizeManager:0];
    nowPlayingWidgetController = v11->_nowPlayingWidgetController;
    v11->_nowPlayingWidgetController = v16;

    v18 = [(DBWidgetViewController *)[DBInCallWidgetViewController alloc] initWithEnvironment:environmentCopy];
    inCallWidgetController = v11->_inCallWidgetController;
    v11->_inCallWidgetController = v18;

    [(DBInCallWidgetViewController *)v11->_inCallWidgetController setHidden:1];
    v20 = [[DBSmartWidgetViewController alloc] initWithEnvironment:environmentCopy engine:v11->_engine animationDelegate:v11];
    smartWidgetController = v11->_smartWidgetController;
    v11->_smartWidgetController = v20;

    [(DBWidgetViewController *)v11->_smartWidgetController setHidden:1];
    v22 = objc_alloc_init(DBWidgetStackViewController);
    primaryWidgetStackViewController = v11->_primaryWidgetStackViewController;
    v11->_primaryWidgetStackViewController = v22;

    v24 = objc_alloc_init(DBWidgetStackViewController);
    secondaryWidgetStackViewController = v11->_secondaryWidgetStackViewController;
    v11->_secondaryWidgetStackViewController = v24;

    v30[0] = v11->_nowPlayingWidgetController;
    v30[1] = v11->_navigationInstructionWidgetViewController;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    sceneWidgetControllers = v11->_sceneWidgetControllers;
    v11->_sceneWidgetControllers = v26;

    v11->_smartWidgetHidden = 1;
    v11->_inCallWidgetHidden = 1;
  }

  return v11;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = DBWidgetContainerViewController;
  [(DBWidgetContainerViewController *)&v4 dealloc];
}

- (void)setLayoutType:(unint64_t)type
{
  if (self->_layoutType != type)
  {
    self->_layoutType = type;
    [(DBWidgetContainerViewController *)self _reloadConstraints];
  }
}

- (void)setInCallWidgetHidden:(BOOL)hidden
{
  if (self->_inCallWidgetHidden != hidden)
  {
    hiddenCopy = hidden;
    self->_inCallWidgetHidden = hidden;
    environment = [(DBWidgetContainerViewController *)self environment];
    environmentConfiguration = [environment environmentConfiguration];
    analytics = [environmentConfiguration analytics];
    v9 = analytics;
    v10 = MEMORY[0x277CF8FC8];
    if (!hiddenCopy)
    {
      v10 = DBMobilePhoneBundleIdentifier;
    }

    [analytics dashboardAudioWidgetDidChangeToBundleIdentifier:*v10];

    if ([(DBWidgetContainerViewController *)self _canChangeSmartWidgetVisible])
    {
      [(DBWidgetContainerViewController *)self setSmartWidgetHidden:[(DBWidgetContainerViewController *)self _smartWidgetShouldBeHidden]];
    }

    [(DBWidgetContainerViewController *)self _updateStackViewsWithUpdates:0 completion:0];
  }
}

- (void)setSceneWidgetsEnabled:(BOOL)enabled
{
  self->_sceneWidgetsEnabled = enabled;
  sceneWidgetControllers = [(DBWidgetContainerViewController *)self sceneWidgetControllers];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__DBWidgetContainerViewController_setSceneWidgetsEnabled___block_invoke;
  v5[3] = &__block_descriptor_33_e44_v32__0__DBSceneWidgetViewController_8Q16_B24l;
  enabledCopy = enabled;
  [sceneWidgetControllers enumerateObjectsUsingBlock:v5];
}

- (void)setSceneWidgetsForeground:(BOOL)foreground
{
  foregroundCopy = foreground;
  self->_sceneWidgetsForeground = foreground;
  smartWidgetController = [(DBWidgetContainerViewController *)self smartWidgetController];
  v6 = smartWidgetController;
  v7 = foregroundCopy && !self->_smartWidgetHidden;
  [smartWidgetController setSmartWidgetForeground:v7];

  sceneWidgetControllers = [(DBWidgetContainerViewController *)self sceneWidgetControllers];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__DBWidgetContainerViewController_setSceneWidgetsForeground___block_invoke;
  v9[3] = &__block_descriptor_33_e44_v32__0__DBSceneWidgetViewController_8Q16_B24l;
  v10 = foregroundCopy;
  [sceneWidgetControllers enumerateObjectsUsingBlock:v9];
}

- (void)setSceneWidgetsActive:(BOOL)active
{
  self->_sceneWidgetsActive = active;
  sceneWidgetControllers = [(DBWidgetContainerViewController *)self sceneWidgetControllers];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__DBWidgetContainerViewController_setSceneWidgetsActive___block_invoke;
  v5[3] = &__block_descriptor_33_e44_v32__0__DBSceneWidgetViewController_8Q16_B24l;
  activeCopy = active;
  [sceneWidgetControllers enumerateObjectsUsingBlock:v5];
}

- (void)setSmartWidgetCanChangeVisibilityDisabled:(BOOL)disabled forRequester:(id)requester
{
  disabledCopy = disabled;
  requesterCopy = requester;
  smartWidgetChangeVisibilityDisabledRequesters = [(DBWidgetContainerViewController *)self smartWidgetChangeVisibilityDisabledRequesters];
  smartWidgetChangeVisibilityDisabledRequesters2 = smartWidgetChangeVisibilityDisabledRequesters;
  if (disabledCopy)
  {

    if (!smartWidgetChangeVisibilityDisabledRequesters2)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [(DBWidgetContainerViewController *)self setSmartWidgetChangeVisibilityDisabledRequesters:v9];
    }

    smartWidgetChangeVisibilityDisabledRequesters2 = [(DBWidgetContainerViewController *)self smartWidgetChangeVisibilityDisabledRequesters];
    [smartWidgetChangeVisibilityDisabledRequesters2 addObject:requesterCopy];
  }

  else
  {
    [smartWidgetChangeVisibilityDisabledRequesters removeObject:requesterCopy];
  }

  [(DBWidgetContainerViewController *)self _updateSmartWidgetVisibleIfNecessary];
}

- (id)linearFocusItems
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  environment = [(DBWidgetContainerViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];
  isRightHandDrive = [environmentConfiguration isRightHandDrive];

  traitCollection = [(DBWidgetContainerViewController *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  flipDashboardLayout = [MEMORY[0x277CF89C8] flipDashboardLayout];
  valueBool = [flipDashboardLayout valueBool];

  v11 = isRightHandDrive ^ (layoutDirection != 1) ^ valueBool;
  if ([(DBWidgetContainerViewController *)self layoutType]!= 2 || v11)
  {
    secondaryWidgetStackViewController = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
    linearFocusItems = [secondaryWidgetStackViewController linearFocusItems];
    [v3 addObjectsFromArray:linearFocusItems];
  }

  primaryWidgetStackViewController = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
  linearFocusItems2 = [primaryWidgetStackViewController linearFocusItems];
  [v3 addObjectsFromArray:linearFocusItems2];

  if (!(([(DBWidgetContainerViewController *)self layoutType]!= 2) | v11 & 1))
  {
    secondaryWidgetStackViewController2 = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
    linearFocusItems3 = [secondaryWidgetStackViewController2 linearFocusItems];
    [v3 addObjectsFromArray:linearFocusItems3];
  }

  return v3;
}

- (void)invalidateConstraints
{
  nowPlayingWidgetController = [(DBWidgetContainerViewController *)self nowPlayingWidgetController];
  [nowPlayingWidgetController invalidateConstraints];

  view = [(DBWidgetContainerViewController *)self view];
  [view invalidateIntrinsicContentSize];

  [(DBWidgetContainerViewController *)self _reloadConstraints];
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = DBWidgetContainerViewController;
  [(DBWidgetContainerViewController *)&v21 viewDidLoad];
  secondaryWidgetStackViewController = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
  [(DBWidgetContainerViewController *)self addChildViewController:secondaryWidgetStackViewController];

  view = [(DBWidgetContainerViewController *)self view];
  secondaryWidgetStackViewController2 = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
  view2 = [secondaryWidgetStackViewController2 view];
  [view addSubview:view2];

  secondaryWidgetStackViewController3 = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
  [secondaryWidgetStackViewController3 didMoveToParentViewController:self];

  primaryWidgetStackViewController = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
  [(DBWidgetContainerViewController *)self addChildViewController:primaryWidgetStackViewController];

  view3 = [(DBWidgetContainerViewController *)self view];
  primaryWidgetStackViewController2 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
  view4 = [primaryWidgetStackViewController2 view];
  [view3 addSubview:view4];

  primaryWidgetStackViewController3 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
  [primaryWidgetStackViewController3 didMoveToParentViewController:self];

  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  displayedAudioAndVideoCalls = [mEMORY[0x277D6EDF8] displayedAudioAndVideoCalls];

  if ([displayedAudioAndVideoCalls count])
  {
    [(DBWidgetContainerViewController *)self setInCallWidgetHidden:0];
  }

  else
  {
    [(DBWidgetContainerViewController *)self _updateSmartWidgetVisibleIfNecessary];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__callStatusChanged_ name:*MEMORY[0x277D6EFF0] object:0];
  [defaultCenter addObserver:self selector:sel__callStatusChanged_ name:*MEMORY[0x277D6F038] object:0];
  [defaultCenter addObserver:self selector:sel__callStatusChanged_ name:*MEMORY[0x277D6F0B0] object:0];
  [defaultCenter addObserver:self selector:sel__callStatusChanged_ name:*MEMORY[0x277D6F000] object:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, DBSmartWidgetHiddenChangedHandler, @"CARSmartWidgetHiddenDefaultChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v17 = +[DBApplicationController sharedInstance];
  v18 = [v17 applicationWithBundleIdentifier:@"com.apple.CarRadio"];

  nowPlayingWidgetController = [(DBWidgetContainerViewController *)self nowPlayingWidgetController];
  nowPlayingWidgetScene = [(DBWidgetContainerViewController *)self nowPlayingWidgetScene];
  [nowPlayingWidgetController setScene:nowPlayingWidgetScene application:v18];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = DBWidgetContainerViewController;
  [(DBWidgetContainerViewController *)&v3 viewDidLayoutSubviews];
  [(DBWidgetContainerViewController *)self _setupConstraints];
  [(DBWidgetContainerViewController *)self _updateMapWidgetSizes];
}

- (void)invalidate
{
  sceneWidgetControllers = [(DBWidgetContainerViewController *)self sceneWidgetControllers];
  [sceneWidgetControllers enumerateObjectsUsingBlock:&__block_literal_global_46];

  inCallWidgetController = [(DBWidgetContainerViewController *)self inCallWidgetController];
  [inCallWidgetController invalidate];

  engine = [(DBWidgetContainerViewController *)self engine];
  [engine invalidate];

  [(DBWidgetContainerViewController *)self setEngine:0];
}

- (void)animateSmartWidget:(id)widget withOldUserInterfaceStyle:(int64_t)style newUserInterfaceStyle:(int64_t)interfaceStyle completion:(id)completion
{
  widgetCopy = widget;
  completionCopy = completion;
  _smartWidgetShouldBeHidden = [(DBWidgetContainerViewController *)self _smartWidgetShouldBeHidden];
  v13 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [DBWidgetContainerViewController animateSmartWidget:_smartWidgetShouldBeHidden withOldUserInterfaceStyle:self newUserInterfaceStyle:v13 completion:?];
  }

  if (_smartWidgetShouldBeHidden == [(DBWidgetContainerViewController *)self isSmartWidgetHidden])
  {
    if ([(DBWidgetContainerViewController *)self isSmartWidgetHidden])
    {
      if (widgetCopy)
      {
        widgetCopy[2](widgetCopy);
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }
    }

    else
    {
      if ([(DBWidgetContainerViewController *)self layoutType]== 2)
      {
        [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
      }

      else
      {
        [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
      }
      v14 = ;
      smartWidgetController = [(DBWidgetContainerViewController *)self smartWidgetController];
      [v14 animateUpdateForWidgetViewController:smartWidgetController withOldUserInterfaceStyle:style newUserInterfaceStyle:interfaceStyle updateBlock:widgetCopy completion:completionCopy];
    }
  }

  else
  {
    [(DBWidgetContainerViewController *)self setSmartWidgetHidden:_smartWidgetShouldBeHidden];
    [(DBWidgetContainerViewController *)self _updateStackViewsWithUpdates:widgetCopy completion:completionCopy];
  }
}

- (CGSize)predictedSmartWidgetSize
{
  v66 = *MEMORY[0x277D85DE8];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  primaryWidgetStackViewController = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
  widgetViewControllers = [primaryWidgetStackViewController widgetViewControllers];

  v5 = [(__CFString *)widgetViewControllers countByEnumeratingWithState:&v53 objects:v65 count:16];
  v6 = 0.0;
  if (v5)
  {
    v7 = v5;
    v8 = *v54;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v54 != v8)
      {
        objc_enumerationMutation(widgetViewControllers);
      }

      v10 = *(*(&v53 + 1) + 8 * v9);
      objc_opt_class();
      v11 = v10;
      if (v11)
      {
        if (objc_opt_isKindOfClass())
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [(__CFString *)widgetViewControllers countByEnumeratingWithState:&v53 objects:v65 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    [v11 minimumHeight];
    v13 = v14;
    [v11 maximumHeight];
    v12 = v15;
    if (([v11 isHidden]& 1) != 0)
    {

      goto LABEL_13;
    }

    v34 = DBLogForCategory(2uLL);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = MEMORY[0x277CCAE60];
      view = [v11 view];
      [view frame];
      v52[0] = v37;
      v52[1] = v38;
      v39 = [v35 valueWithBytes:v52 objCType:"{CGSize=dd}"];
      *buf = 138412290;
      v58 = v39;
      _os_log_impl(&dword_248146000, v34, OS_LOG_TYPE_DEFAULT, "[Smart stack size prediction] smart stack visible with size %@", buf, 0xCu);
    }

    view2 = [v11 view];
    [view2 frame];
    v6 = v41;
    v12 = v42;
    goto LABEL_38;
  }

LABEL_10:
  v12 = 1.79769313e308;
  v13 = 0.0;
LABEL_13:

  primaryWidgetStackViewController2 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
  visibleCount = [primaryWidgetStackViewController2 visibleCount];

  layoutType = [(DBWidgetContainerViewController *)self layoutType];
  if (layoutType == 1 || layoutType == 3)
  {
    primaryWidgetStackViewController3 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
    view3 = [primaryWidgetStackViewController3 view];
    [view3 bounds];
    v6 = v28;
    v23 = v29;

    v30 = MEMORY[0x277CCACA8];
    *v50 = v6;
    *&v50[1] = v23;
    v31 = [MEMORY[0x277CCAE60] valueWithBytes:v50 objCType:"{CGSize=dd}"];
    widgetViewControllers = [v30 stringWithFormat:@"Primary stack height: %@", v31];

    if (visibleCount == 1)
    {
      goto LABEL_24;
    }

    if (visibleCount != 2)
    {
      if (visibleCount != 3)
      {
        goto LABEL_28;
      }

      v32 = v23 + 4.0 * -3.0;
      v33 = 0.25;
      goto LABEL_25;
    }

    v23 = (v23 + 4.0 * -2.0) / 3.0;
  }

  else
  {
    if (layoutType == 2)
    {
      secondaryWidgetStackViewController = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
      view4 = [secondaryWidgetStackViewController view];
      [view4 bounds];
      v6 = v21;
      v23 = v22;

      v24 = MEMORY[0x277CCACA8];
      *v51 = v6;
      *&v51[1] = v23;
      v25 = [MEMORY[0x277CCAE60] valueWithBytes:v51 objCType:"{CGSize=dd}"];
      widgetViewControllers = [v24 stringWithFormat:@"Secondary stack height: %@", v25];

LABEL_24:
      v32 = v23 - 4.0;
      v33 = 0.5;
LABEL_25:
      v23 = v32 * v33;
      goto LABEL_28;
    }

    widgetViewControllers = &stru_285A57218;
    v23 = 0.0;
  }

LABEL_28:
  if (v23 >= v13)
  {
    v43 = v23;
  }

  else
  {
    v43 = v13;
  }

  if (v43 <= v12)
  {
    v12 = v43;
  }

  v11 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v44 = visibleCount + 1;
    layoutType2 = [(DBWidgetContainerViewController *)self layoutType];
    if (layoutType2 > 3)
    {
      v46 = @"Unknown";
    }

    else
    {
      v46 = off_278F045D8[layoutType2];
    }

    *v49 = v6;
    *&v49[1] = v12;
    view2 = [MEMORY[0x277CCAE60] valueWithBytes:v49 objCType:"{CGSize=dd}"];
    *buf = 138413058;
    v58 = v46;
    v59 = 2112;
    v60 = view2;
    v61 = 2048;
    v62 = v44;
    v63 = 2112;
    v64 = widgetViewControllers;
    _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, "[Smart stack size prediction] predicted size %@ for layout: %@. Visible count with widget: %lu. %@", buf, 0x2Au);
LABEL_38:
  }

  v47 = v6;
  v48 = v12;
  result.height = v48;
  result.width = v47;
  return result;
}

- (void)_setupConstraints
{
  if (![(DBWidgetContainerViewController *)self initialConstraintsSetup])
  {
    [(DBWidgetContainerViewController *)self setInitialConstraintsSetup:1];
    primaryWidgetStackViewController = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
    view = [primaryWidgetStackViewController view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];

    secondaryWidgetStackViewController = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
    view2 = [secondaryWidgetStackViewController view];
    [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  }
}

- (void)_reloadConstraints
{
  v48[4] = *MEMORY[0x277D85DE8];
  currentConstraints = [(DBWidgetContainerViewController *)self currentConstraints];

  if (currentConstraints)
  {
    v4 = MEMORY[0x277CCAAD0];
    currentConstraints2 = [(DBWidgetContainerViewController *)self currentConstraints];
    [v4 deactivateConstraints:currentConstraints2];

    [(DBWidgetContainerViewController *)self setCurrentConstraints:0];
  }

  primaryWidgetStackViewController = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
  v7 = MEMORY[0x277CBEBF8];
  [primaryWidgetStackViewController setWidgetViewControllers:MEMORY[0x277CBEBF8]];

  secondaryWidgetStackViewController = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
  [secondaryWidgetStackViewController setWidgetViewControllers:v7];

  layoutType = [(DBWidgetContainerViewController *)self layoutType];
  if (layoutType == 3)
  {
    if ([(DBWidgetContainerViewController *)self isSmartWidgetHidden])
    {
      v23 = [(DBWidgetContainerViewController *)self hasActiveNavigation]^ 1;
    }

    else
    {
      v23 = 0;
    }

    nowPlayingWidgetController = [(DBWidgetContainerViewController *)self nowPlayingWidgetController];
    [nowPlayingWidgetController setWantsLargeSize:v23];

    secondaryWidgetStackViewController2 = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
    [secondaryWidgetStackViewController2 setWidgetViewControllers:MEMORY[0x277CBEBF8]];

    secondaryWidgetStackViewController3 = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
    view = [secondaryWidgetStackViewController3 view];
    v22 = 1;
    [view setHidden:1];

    navigationInstructionWidgetViewController = [(DBWidgetContainerViewController *)self navigationInstructionWidgetViewController];
    v45[0] = navigationInstructionWidgetViewController;
    inCallWidgetController = [(DBWidgetContainerViewController *)self inCallWidgetController];
    v45[1] = inCallWidgetController;
    nowPlayingWidgetController2 = [(DBWidgetContainerViewController *)self nowPlayingWidgetController];
    v45[2] = nowPlayingWidgetController2;
    smartWidgetController = [(DBWidgetContainerViewController *)self smartWidgetController];
    v45[3] = smartWidgetController;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];
    primaryWidgetStackViewController2 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
    [primaryWidgetStackViewController2 setWidgetViewControllers:v32];

    landscapePortraitConstraints = [(DBWidgetContainerViewController *)self landscapePortraitConstraints];
    if (!landscapePortraitConstraints)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (layoutType == 2)
  {
    navigationInstructionWidgetViewController2 = [(DBWidgetContainerViewController *)self navigationInstructionWidgetViewController];
    v47[0] = navigationInstructionWidgetViewController2;
    smartWidgetController2 = [(DBWidgetContainerViewController *)self smartWidgetController];
    v47[1] = smartWidgetController2;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
    secondaryWidgetStackViewController4 = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
    [secondaryWidgetStackViewController4 setWidgetViewControllers:v13];

    secondaryWidgetStackViewController5 = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
    view2 = [secondaryWidgetStackViewController5 view];
    [view2 setHidden:0];

    inCallWidgetController2 = [(DBWidgetContainerViewController *)self inCallWidgetController];
    v46[0] = inCallWidgetController2;
    nowPlayingWidgetController3 = [(DBWidgetContainerViewController *)self nowPlayingWidgetController];
    v46[1] = nowPlayingWidgetController3;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
    primaryWidgetStackViewController3 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
    [primaryWidgetStackViewController3 setWidgetViewControllers:v19];

    landscapePortraitConstraints = [(DBWidgetContainerViewController *)self squareConstraints];
    if ([(DBWidgetContainerViewController *)self isSmartWidgetHidden])
    {
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }

    if (!landscapePortraitConstraints)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (layoutType != 1)
  {
    return;
  }

  if ([(DBWidgetContainerViewController *)self isSmartWidgetHidden])
  {
    v10 = [(DBWidgetContainerViewController *)self hasActiveNavigation]^ 1;
  }

  else
  {
    v10 = 0;
  }

  nowPlayingWidgetController4 = [(DBWidgetContainerViewController *)self nowPlayingWidgetController];
  [nowPlayingWidgetController4 setWantsLargeSize:v10];

  secondaryWidgetStackViewController6 = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
  [secondaryWidgetStackViewController6 setWidgetViewControllers:MEMORY[0x277CBEBF8]];

  secondaryWidgetStackViewController7 = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
  view3 = [secondaryWidgetStackViewController7 view];
  [view3 setHidden:1];

  navigationInstructionWidgetViewController3 = [(DBWidgetContainerViewController *)self navigationInstructionWidgetViewController];
  v48[0] = navigationInstructionWidgetViewController3;
  inCallWidgetController3 = [(DBWidgetContainerViewController *)self inCallWidgetController];
  v48[1] = inCallWidgetController3;
  nowPlayingWidgetController5 = [(DBWidgetContainerViewController *)self nowPlayingWidgetController];
  v48[2] = nowPlayingWidgetController5;
  smartWidgetController3 = [(DBWidgetContainerViewController *)self smartWidgetController];
  v48[3] = smartWidgetController3;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:4];
  primaryWidgetStackViewController4 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
  [primaryWidgetStackViewController4 setWidgetViewControllers:v43];

  landscapePortraitConstraints = [(DBWidgetContainerViewController *)self landscapePortraitConstraints];
  if ([(DBWidgetContainerViewController *)self isSmartWidgetHidden])
  {
    v22 = 2;
  }

  else
  {
    v22 = 1;
  }

  if (landscapePortraitConstraints)
  {
LABEL_17:
    [MEMORY[0x277CCAAD0] activateConstraints:landscapePortraitConstraints];
    [(DBWidgetContainerViewController *)self setCurrentConstraints:landscapePortraitConstraints];
  }

LABEL_18:
  navigationInstructionWidgetViewController4 = [(DBWidgetContainerViewController *)self navigationInstructionWidgetViewController];
  [navigationInstructionWidgetViewController4 setWidgetStyle:v22];
}

- (NSArray)landscapePortraitConstraints
{
  v32[4] = *MEMORY[0x277D85DE8];
  if (!self->_landscapePortraitConstraints)
  {
    primaryWidgetStackViewController = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
    view = [primaryWidgetStackViewController view];
    leadingAnchor = [view leadingAnchor];
    view2 = [(DBWidgetContainerViewController *)self view];
    leadingAnchor2 = [view2 leadingAnchor];
    v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v32[0] = v26;
    primaryWidgetStackViewController2 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
    view3 = [primaryWidgetStackViewController2 view];
    trailingAnchor = [view3 trailingAnchor];
    view4 = [(DBWidgetContainerViewController *)self view];
    trailingAnchor2 = [view4 trailingAnchor];
    v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v32[1] = v20;
    primaryWidgetStackViewController3 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
    view5 = [primaryWidgetStackViewController3 view];
    topAnchor = [view5 topAnchor];
    view6 = [(DBWidgetContainerViewController *)self view];
    topAnchor2 = [view6 topAnchor];
    v4 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v32[2] = v4;
    primaryWidgetStackViewController4 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
    view7 = [primaryWidgetStackViewController4 view];
    bottomAnchor = [view7 bottomAnchor];
    view8 = [(DBWidgetContainerViewController *)self view];
    bottomAnchor2 = [view8 bottomAnchor];
    v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v32[3] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:4];
    landscapePortraitConstraints = self->_landscapePortraitConstraints;
    self->_landscapePortraitConstraints = v11;
  }

  view9 = [(DBWidgetContainerViewController *)self view];
  [view9 setAccessibilityValue:@"Landscape Layout"];

  v14 = self->_landscapePortraitConstraints;

  return v14;
}

- (NSArray)squareConstraints
{
  v51[8] = *MEMORY[0x277D85DE8];
  squareConstraints = self->_squareConstraints;
  if (!squareConstraints)
  {
    environment = [(DBWidgetContainerViewController *)self environment];
    environmentConfiguration = [environment environmentConfiguration];
    isRightHandDrive = [environmentConfiguration isRightHandDrive];

    flipDashboardLayout = [MEMORY[0x277CF89C8] flipDashboardLayout];
    LODWORD(environmentConfiguration) = [flipDashboardLayout valueBool];

    if (isRightHandDrive == environmentConfiguration)
    {
      secondaryWidgetStackViewController = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
      view = [secondaryWidgetStackViewController view];

      [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
    }

    else
    {
      primaryWidgetStackViewController = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
      view = [primaryWidgetStackViewController view];

      [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
    }
    v11 = ;
    v35 = view;
    view2 = [v11 view];

    view3 = [(DBWidgetContainerViewController *)self view];
    [view3 setAccessibilityValue:@"Square Layout"];

    [view setAccessibilityIdentifier:@"CARDashboardWidgetLeftStack"];
    [view2 setAccessibilityIdentifier:@"CARDashboardWidgetRightStack;"];
    leftAnchor = [view leftAnchor];
    view4 = [(DBWidgetContainerViewController *)self view];
    leftAnchor2 = [view4 leftAnchor];
    v47 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v51[0] = v47;
    rightAnchor = [view rightAnchor];
    view5 = [(DBWidgetContainerViewController *)self view];
    centerXAnchor = [view5 centerXAnchor];
    v43 = [rightAnchor constraintEqualToAnchor:centerXAnchor constant:4.0 * -0.5];
    v51[1] = v43;
    topAnchor = [view topAnchor];
    view6 = [(DBWidgetContainerViewController *)self view];
    topAnchor2 = [view6 topAnchor];
    v39 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v51[2] = v39;
    bottomAnchor = [view bottomAnchor];
    view7 = [(DBWidgetContainerViewController *)self view];
    bottomAnchor2 = [view7 bottomAnchor];
    v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v51[3] = v34;
    leftAnchor3 = [view2 leftAnchor];
    view8 = [(DBWidgetContainerViewController *)self view];
    centerXAnchor2 = [view8 centerXAnchor];
    v29 = [leftAnchor3 constraintEqualToAnchor:centerXAnchor2 constant:4.0 * 0.5];
    v51[4] = v29;
    rightAnchor2 = [view2 rightAnchor];
    view9 = [(DBWidgetContainerViewController *)self view];
    rightAnchor3 = [view9 rightAnchor];
    v14 = [rightAnchor2 constraintEqualToAnchor:rightAnchor3];
    v51[5] = v14;
    v33 = view2;
    topAnchor3 = [view2 topAnchor];
    view10 = [(DBWidgetContainerViewController *)self view];
    topAnchor4 = [view10 topAnchor];
    v18 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v51[6] = v18;
    bottomAnchor3 = [view2 bottomAnchor];
    view11 = [(DBWidgetContainerViewController *)self view];
    bottomAnchor4 = [view11 bottomAnchor];
    v22 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v51[7] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:8];
    v24 = self->_squareConstraints;
    self->_squareConstraints = v23;

    squareConstraints = self->_squareConstraints;
  }

  return squareConstraints;
}

- (void)_updateSmartWidgetVisibleIfNecessary
{
  if ([(DBWidgetContainerViewController *)self _canChangeSmartWidgetVisible])
  {
    _smartWidgetShouldBeHidden = [(DBWidgetContainerViewController *)self _smartWidgetShouldBeHidden];
    if (_smartWidgetShouldBeHidden != [(DBWidgetContainerViewController *)self isSmartWidgetHidden])
    {
      [(DBWidgetContainerViewController *)self setSmartWidgetHidden:_smartWidgetShouldBeHidden];

      [(DBWidgetContainerViewController *)self _updateStackViewsWithUpdates:0 completion:0];
    }
  }
}

- (void)setSmartWidgetHidden:(BOOL)hidden
{
  if (self->_smartWidgetHidden != hidden)
  {
    self->_smartWidgetHidden = hidden;
    if (!hidden)
    {
      smartWidgetController = [(DBWidgetContainerViewController *)self smartWidgetController];
      [smartWidgetController setSmartWidgetForeground:self->_sceneWidgetsForeground];
    }
  }
}

- (void)_smartWidgetHiddenDefaultChanged
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults BOOLForKey:@"CARSmartWidgetHidden"];
    v5 = NSStringFromBOOL();
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "Smart widget hidden default changed: %@", &v6, 0xCu);
  }

  [(DBWidgetContainerViewController *)self _updateSmartWidgetVisibleIfNecessary];
}

- (void)_updateStackViewsWithUpdates:(id)updates completion:(id)completion
{
  updatesCopy = updates;
  completionCopy = completion;
  if ([(DBWidgetContainerViewController *)self layoutType]== 2)
  {
    secondaryWidgetStackViewController = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __75__DBWidgetContainerViewController__updateStackViewsWithUpdates_completion___block_invoke;
    v17[3] = &unk_278F02D68;
    v9 = &v18;
    v17[4] = self;
    v18 = updatesCopy;
    v10 = updatesCopy;
    [secondaryWidgetStackViewController animateWithUpdates:v17 completion:completionCopy];

    primaryWidgetStackViewController = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __75__DBWidgetContainerViewController__updateStackViewsWithUpdates_completion___block_invoke_2;
    v16[3] = &unk_278F01580;
    v16[4] = self;
    [primaryWidgetStackViewController animateWithUpdates:v16 completion:0];
  }

  else
  {
    primaryWidgetStackViewController2 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __75__DBWidgetContainerViewController__updateStackViewsWithUpdates_completion___block_invoke_3;
    v14[3] = &unk_278F02D68;
    v9 = &v15;
    v14[4] = self;
    v15 = updatesCopy;
    v13 = updatesCopy;
    [primaryWidgetStackViewController2 animateWithUpdates:v14 completion:completionCopy];
  }

  [(DBWidgetContainerViewController *)self _updateMapWidgetSizes];
}

void __75__DBWidgetContainerViewController__updateStackViewsWithUpdates_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) isSmartWidgetHidden];
  v4 = [*(a1 + 32) smartWidgetController];
  [v4 setHidden:v3];
}

void __75__DBWidgetContainerViewController__updateStackViewsWithUpdates_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) inCallWidgetController];
  [v2 setWantsLargeSize:0];

  v3 = [*(a1 + 32) isInCallWidgetHidden];
  v4 = [*(a1 + 32) inCallWidgetController];
  [v4 setHidden:v3];

  LODWORD(v3) = [*(a1 + 32) isInCallWidgetHidden];
  v5 = [*(a1 + 32) nowPlayingWidgetController];
  [v5 setHidden:v3 ^ 1];
}

void __75__DBWidgetContainerViewController__updateStackViewsWithUpdates_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) isSmartWidgetHidden];
  v4 = [*(a1 + 32) smartWidgetController];
  [v4 setHidden:v3];

  v5 = [*(a1 + 32) isInCallWidgetHidden];
  v6 = [*(a1 + 32) inCallWidgetController];
  [v6 setHidden:v5];

  if (([*(a1 + 32) isInCallWidgetHidden] & 1) != 0 || !objc_msgSend(*(a1 + 32), "isSmartWidgetHidden"))
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) navigationInstructionWidgetViewController];
    v7 = [v5 wantsLargeSize] ^ 1;
    v8 = 1;
  }

  v9 = [*(a1 + 32) inCallWidgetController];
  [v9 setWantsLargeSize:v7];

  if (v8)
  {
  }

  v10 = [*(a1 + 32) isInCallWidgetHidden];
  v11 = [*(a1 + 32) nowPlayingWidgetController];
  [v11 setHidden:v10 ^ 1u];

  if ([*(a1 + 32) isInCallWidgetHidden] && objc_msgSend(*(a1 + 32), "isSmartWidgetHidden"))
  {
    v15 = [*(a1 + 32) navigationInstructionWidgetViewController];
    if ([v15 wantsLargeSize])
    {
      v12 = 0;
    }

    else
    {
      v12 = [*(a1 + 32) hasActiveNavigation] ^ 1;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v14 = [*(a1 + 32) nowPlayingWidgetController];
  [v14 setWantsLargeSize:v12];

  if (v13)
  {
  }
}

- (void)_callStatusChanged:(id)changed
{
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  displayedAudioAndVideoCalls = [mEMORY[0x277D6EDF8] displayedAudioAndVideoCalls];

  v5 = [displayedAudioAndVideoCalls count];
  [(DBWidgetContainerViewController *)self setInCallWidgetHidden:v5 == 0];
  if (v5)
  {
    inCallWidgetController = [(DBWidgetContainerViewController *)self inCallWidgetController];
    [inCallWidgetController handleCallStatusChanged];
  }
}

- (void)animateSmartWidget:(NSObject *)a3 withOldUserInterfaceStyle:newUserInterfaceStyle:completion:.cold.1(char a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = @"hidden";
  }

  else
  {
    v4 = @"unhidden";
  }

  if ([a2 isSmartWidgetHidden])
  {
    v5 = @"hidden";
  }

  else
  {
    v5 = @"unhidden";
  }

  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&dword_248146000, a3, OS_LOG_TYPE_DEBUG, "[Update Prediction] Animating smart widget to be %@, currently it is %@", &v6, 0x16u);
}

@end