@interface DBWidgetContainerViewController
- (BOOL)_canChangeSmartWidgetVisible;
- (BOOL)_smartWidgetShouldBeHidden;
- (CGSize)predictedSmartWidgetSize;
- (DBEnvironment)environment;
- (DBWidgetContainerViewController)initWithEnvironment:(id)a3 animationManager:(id)a4 nowPlayingWidgetScene:(id)a5;
- (NSArray)landscapePortraitConstraints;
- (NSArray)squareConstraints;
- (id)linearFocusItems;
- (void)_callStatusChanged:(id)a3;
- (void)_reloadConstraints;
- (void)_setupConstraints;
- (void)_smartWidgetHiddenDefaultChanged;
- (void)_updateMapWidgetSizes;
- (void)_updateSmartWidgetVisibleIfNecessary;
- (void)_updateStackViewsWithUpdates:(id)a3 completion:(id)a4;
- (void)animateSmartWidget:(id)a3 withOldUserInterfaceStyle:(int64_t)a4 newUserInterfaceStyle:(int64_t)a5 completion:(id)a6;
- (void)dealloc;
- (void)invalidate;
- (void)invalidateConstraints;
- (void)setInCallWidgetHidden:(BOOL)a3;
- (void)setLayoutType:(unint64_t)a3;
- (void)setSceneWidgetsActive:(BOOL)a3;
- (void)setSceneWidgetsEnabled:(BOOL)a3;
- (void)setSceneWidgetsForeground:(BOOL)a3;
- (void)setSmartWidgetCanChangeVisibilityDisabled:(BOOL)a3 forRequester:(id)a4;
- (void)setSmartWidgetHidden:(BOOL)a3;
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
  v2 = [(DBWidgetContainerViewController *)self smartWidgetChangeVisibilityDisabledRequesters];
  v3 = [v2 count] == 0;

  return v3;
}

- (BOOL)_smartWidgetShouldBeHidden
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 BOOLForKey:@"CARSmartWidgetHidden"];

  v5 = [(DBWidgetContainerViewController *)self smartWidgetController];
  v6 = [v5 wantsToShowPrediction];

  v7 = [(DBWidgetContainerViewController *)self smartWidgetController];
  v8 = [v7 readyToShowPrediction];

  if ([(DBWidgetContainerViewController *)self isInCallWidgetHidden])
  {
    v9 = 0;
  }

  else
  {
    v10 = [(DBWidgetContainerViewController *)self layoutType];
    v11 = [(DBWidgetContainerViewController *)self view];
    [v11 bounds];
    Width = CGRectGetWidth(v29);

    v9 = 0;
    if (v10 == 1 && Width < 265.0)
    {
      v13 = [(DBWidgetContainerViewController *)self smartWidgetController];
      v9 = [v13 isHighPriority] ^ 1;
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

    if (v6)
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
    if (!v8)
    {
      v16 = @"YES";
    }

    v26 = 2112;
    v27 = v16;
    _os_log_debug_impl(&dword_248146000, v14, OS_LOG_TYPE_DEBUG, "Smart widget should be hidden? smartWidgetHiddenOverride=%@ noPredictions=%@ hiddenForActiveCall=%@ notReadyToShowPredictions=%@", &v20, 0x2Au);
  }

  return v4 & 1 | ((v6 & 1) == 0) | v9 & 1 | ((v8 & 1) == 0);
}

- (void)_updateMapWidgetSizes
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = [(DBWidgetContainerViewController *)self layoutType];
  if (v3 == 1 || v3 == 3)
  {
    v14 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
    v15 = [v14 view];
    [v15 bounds];
    v17 = v16;
    v19 = v18;

    v20 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
    v21 = [v20 visibleCount];

    if (v21 == 3)
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

  if (v3 == 2)
  {
    v4 = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
    v5 = [v4 view];
    [v5 bounds];
    v7 = v6;
    v9 = v8;

    v10 = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
    v11 = [v10 visibleCount];

    if (v11 == 2)
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
  v23 = [(DBWidgetContainerViewController *)self navigationInstructionWidgetViewController];
  [v23 setAvailableWidgetSizes:v22];
}

- (DBWidgetContainerViewController)initWithEnvironment:(id)a3 animationManager:(id)a4 nowPlayingWidgetScene:(id)a5
{
  v30[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v29.receiver = self;
  v29.super_class = DBWidgetContainerViewController;
  v11 = [(DBWidgetContainerViewController *)&v29 init];
  if (v11)
  {
    v12 = [[DBSmartWidgetEngine alloc] initWithEnvironment:v8];
    engine = v11->_engine;
    v11->_engine = v12;

    objc_storeWeak(&v11->_environment, v8);
    objc_storeStrong(&v11->_nowPlayingWidgetScene, a5);
    v14 = [[DBNavigationInstructionWidgetViewController alloc] initWithEnvironment:v8 animationManager:v9 widgetSizeManager:v11];
    navigationInstructionWidgetViewController = v11->_navigationInstructionWidgetViewController;
    v11->_navigationInstructionWidgetViewController = v14;

    v16 = [[DBNowPlayingWidgetViewController alloc] initWithEnvironment:v8 animationManager:v9 widgetSizeManager:0];
    nowPlayingWidgetController = v11->_nowPlayingWidgetController;
    v11->_nowPlayingWidgetController = v16;

    v18 = [(DBWidgetViewController *)[DBInCallWidgetViewController alloc] initWithEnvironment:v8];
    inCallWidgetController = v11->_inCallWidgetController;
    v11->_inCallWidgetController = v18;

    [(DBInCallWidgetViewController *)v11->_inCallWidgetController setHidden:1];
    v20 = [[DBSmartWidgetViewController alloc] initWithEnvironment:v8 engine:v11->_engine animationDelegate:v11];
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

- (void)setLayoutType:(unint64_t)a3
{
  if (self->_layoutType != a3)
  {
    self->_layoutType = a3;
    [(DBWidgetContainerViewController *)self _reloadConstraints];
  }
}

- (void)setInCallWidgetHidden:(BOOL)a3
{
  if (self->_inCallWidgetHidden != a3)
  {
    v4 = a3;
    self->_inCallWidgetHidden = a3;
    v6 = [(DBWidgetContainerViewController *)self environment];
    v7 = [v6 environmentConfiguration];
    v8 = [v7 analytics];
    v9 = v8;
    v10 = MEMORY[0x277CF8FC8];
    if (!v4)
    {
      v10 = DBMobilePhoneBundleIdentifier;
    }

    [v8 dashboardAudioWidgetDidChangeToBundleIdentifier:*v10];

    if ([(DBWidgetContainerViewController *)self _canChangeSmartWidgetVisible])
    {
      [(DBWidgetContainerViewController *)self setSmartWidgetHidden:[(DBWidgetContainerViewController *)self _smartWidgetShouldBeHidden]];
    }

    [(DBWidgetContainerViewController *)self _updateStackViewsWithUpdates:0 completion:0];
  }
}

- (void)setSceneWidgetsEnabled:(BOOL)a3
{
  self->_sceneWidgetsEnabled = a3;
  v4 = [(DBWidgetContainerViewController *)self sceneWidgetControllers];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__DBWidgetContainerViewController_setSceneWidgetsEnabled___block_invoke;
  v5[3] = &__block_descriptor_33_e44_v32__0__DBSceneWidgetViewController_8Q16_B24l;
  v6 = a3;
  [v4 enumerateObjectsUsingBlock:v5];
}

- (void)setSceneWidgetsForeground:(BOOL)a3
{
  v3 = a3;
  self->_sceneWidgetsForeground = a3;
  v5 = [(DBWidgetContainerViewController *)self smartWidgetController];
  v6 = v5;
  v7 = v3 && !self->_smartWidgetHidden;
  [v5 setSmartWidgetForeground:v7];

  v8 = [(DBWidgetContainerViewController *)self sceneWidgetControllers];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__DBWidgetContainerViewController_setSceneWidgetsForeground___block_invoke;
  v9[3] = &__block_descriptor_33_e44_v32__0__DBSceneWidgetViewController_8Q16_B24l;
  v10 = v3;
  [v8 enumerateObjectsUsingBlock:v9];
}

- (void)setSceneWidgetsActive:(BOOL)a3
{
  self->_sceneWidgetsActive = a3;
  v4 = [(DBWidgetContainerViewController *)self sceneWidgetControllers];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__DBWidgetContainerViewController_setSceneWidgetsActive___block_invoke;
  v5[3] = &__block_descriptor_33_e44_v32__0__DBSceneWidgetViewController_8Q16_B24l;
  v6 = a3;
  [v4 enumerateObjectsUsingBlock:v5];
}

- (void)setSmartWidgetCanChangeVisibilityDisabled:(BOOL)a3 forRequester:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(DBWidgetContainerViewController *)self smartWidgetChangeVisibilityDisabledRequesters];
  v8 = v7;
  if (v4)
  {

    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [(DBWidgetContainerViewController *)self setSmartWidgetChangeVisibilityDisabledRequesters:v9];
    }

    v8 = [(DBWidgetContainerViewController *)self smartWidgetChangeVisibilityDisabledRequesters];
    [v8 addObject:v6];
  }

  else
  {
    [v7 removeObject:v6];
  }

  [(DBWidgetContainerViewController *)self _updateSmartWidgetVisibleIfNecessary];
}

- (id)linearFocusItems
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(DBWidgetContainerViewController *)self environment];
  v5 = [v4 environmentConfiguration];
  v6 = [v5 isRightHandDrive];

  v7 = [(DBWidgetContainerViewController *)self traitCollection];
  v8 = [v7 layoutDirection];

  v9 = [MEMORY[0x277CF89C8] flipDashboardLayout];
  v10 = [v9 valueBool];

  v11 = v6 ^ (v8 != 1) ^ v10;
  if ([(DBWidgetContainerViewController *)self layoutType]!= 2 || v11)
  {
    v12 = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
    v13 = [v12 linearFocusItems];
    [v3 addObjectsFromArray:v13];
  }

  v14 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
  v15 = [v14 linearFocusItems];
  [v3 addObjectsFromArray:v15];

  if (!(([(DBWidgetContainerViewController *)self layoutType]!= 2) | v11 & 1))
  {
    v16 = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
    v17 = [v16 linearFocusItems];
    [v3 addObjectsFromArray:v17];
  }

  return v3;
}

- (void)invalidateConstraints
{
  v3 = [(DBWidgetContainerViewController *)self nowPlayingWidgetController];
  [v3 invalidateConstraints];

  v4 = [(DBWidgetContainerViewController *)self view];
  [v4 invalidateIntrinsicContentSize];

  [(DBWidgetContainerViewController *)self _reloadConstraints];
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = DBWidgetContainerViewController;
  [(DBWidgetContainerViewController *)&v21 viewDidLoad];
  v3 = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
  [(DBWidgetContainerViewController *)self addChildViewController:v3];

  v4 = [(DBWidgetContainerViewController *)self view];
  v5 = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
  v6 = [v5 view];
  [v4 addSubview:v6];

  v7 = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
  [v7 didMoveToParentViewController:self];

  v8 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
  [(DBWidgetContainerViewController *)self addChildViewController:v8];

  v9 = [(DBWidgetContainerViewController *)self view];
  v10 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
  v11 = [v10 view];
  [v9 addSubview:v11];

  v12 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
  [v12 didMoveToParentViewController:self];

  v13 = [MEMORY[0x277D6EDF8] sharedInstance];
  v14 = [v13 displayedAudioAndVideoCalls];

  if ([v14 count])
  {
    [(DBWidgetContainerViewController *)self setInCallWidgetHidden:0];
  }

  else
  {
    [(DBWidgetContainerViewController *)self _updateSmartWidgetVisibleIfNecessary];
  }

  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  [v15 addObserver:self selector:sel__callStatusChanged_ name:*MEMORY[0x277D6EFF0] object:0];
  [v15 addObserver:self selector:sel__callStatusChanged_ name:*MEMORY[0x277D6F038] object:0];
  [v15 addObserver:self selector:sel__callStatusChanged_ name:*MEMORY[0x277D6F0B0] object:0];
  [v15 addObserver:self selector:sel__callStatusChanged_ name:*MEMORY[0x277D6F000] object:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, DBSmartWidgetHiddenChangedHandler, @"CARSmartWidgetHiddenDefaultChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v17 = +[DBApplicationController sharedInstance];
  v18 = [v17 applicationWithBundleIdentifier:@"com.apple.CarRadio"];

  v19 = [(DBWidgetContainerViewController *)self nowPlayingWidgetController];
  v20 = [(DBWidgetContainerViewController *)self nowPlayingWidgetScene];
  [v19 setScene:v20 application:v18];
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
  v3 = [(DBWidgetContainerViewController *)self sceneWidgetControllers];
  [v3 enumerateObjectsUsingBlock:&__block_literal_global_46];

  v4 = [(DBWidgetContainerViewController *)self inCallWidgetController];
  [v4 invalidate];

  v5 = [(DBWidgetContainerViewController *)self engine];
  [v5 invalidate];

  [(DBWidgetContainerViewController *)self setEngine:0];
}

- (void)animateSmartWidget:(id)a3 withOldUserInterfaceStyle:(int64_t)a4 newUserInterfaceStyle:(int64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(DBWidgetContainerViewController *)self _smartWidgetShouldBeHidden];
  v13 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [DBWidgetContainerViewController animateSmartWidget:v12 withOldUserInterfaceStyle:self newUserInterfaceStyle:v13 completion:?];
  }

  if (v12 == [(DBWidgetContainerViewController *)self isSmartWidgetHidden])
  {
    if ([(DBWidgetContainerViewController *)self isSmartWidgetHidden])
    {
      if (v10)
      {
        v10[2](v10);
      }

      if (v11)
      {
        v11[2](v11);
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
      v15 = [(DBWidgetContainerViewController *)self smartWidgetController];
      [v14 animateUpdateForWidgetViewController:v15 withOldUserInterfaceStyle:a4 newUserInterfaceStyle:a5 updateBlock:v10 completion:v11];
    }
  }

  else
  {
    [(DBWidgetContainerViewController *)self setSmartWidgetHidden:v12];
    [(DBWidgetContainerViewController *)self _updateStackViewsWithUpdates:v10 completion:v11];
  }
}

- (CGSize)predictedSmartWidgetSize
{
  v66 = *MEMORY[0x277D85DE8];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v3 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
  v4 = [v3 widgetViewControllers];

  v5 = [(__CFString *)v4 countByEnumeratingWithState:&v53 objects:v65 count:16];
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
        objc_enumerationMutation(v4);
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
        v7 = [(__CFString *)v4 countByEnumeratingWithState:&v53 objects:v65 count:16];
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
      v36 = [v11 view];
      [v36 frame];
      v52[0] = v37;
      v52[1] = v38;
      v39 = [v35 valueWithBytes:v52 objCType:"{CGSize=dd}"];
      *buf = 138412290;
      v58 = v39;
      _os_log_impl(&dword_248146000, v34, OS_LOG_TYPE_DEFAULT, "[Smart stack size prediction] smart stack visible with size %@", buf, 0xCu);
    }

    v40 = [v11 view];
    [v40 frame];
    v6 = v41;
    v12 = v42;
    goto LABEL_38;
  }

LABEL_10:
  v12 = 1.79769313e308;
  v13 = 0.0;
LABEL_13:

  v16 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
  v17 = [v16 visibleCount];

  v18 = [(DBWidgetContainerViewController *)self layoutType];
  if (v18 == 1 || v18 == 3)
  {
    v26 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
    v27 = [v26 view];
    [v27 bounds];
    v6 = v28;
    v23 = v29;

    v30 = MEMORY[0x277CCACA8];
    *v50 = v6;
    *&v50[1] = v23;
    v31 = [MEMORY[0x277CCAE60] valueWithBytes:v50 objCType:"{CGSize=dd}"];
    v4 = [v30 stringWithFormat:@"Primary stack height: %@", v31];

    if (v17 == 1)
    {
      goto LABEL_24;
    }

    if (v17 != 2)
    {
      if (v17 != 3)
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
    if (v18 == 2)
    {
      v19 = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
      v20 = [v19 view];
      [v20 bounds];
      v6 = v21;
      v23 = v22;

      v24 = MEMORY[0x277CCACA8];
      *v51 = v6;
      *&v51[1] = v23;
      v25 = [MEMORY[0x277CCAE60] valueWithBytes:v51 objCType:"{CGSize=dd}"];
      v4 = [v24 stringWithFormat:@"Secondary stack height: %@", v25];

LABEL_24:
      v32 = v23 - 4.0;
      v33 = 0.5;
LABEL_25:
      v23 = v32 * v33;
      goto LABEL_28;
    }

    v4 = &stru_285A57218;
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
    v44 = v17 + 1;
    v45 = [(DBWidgetContainerViewController *)self layoutType];
    if (v45 > 3)
    {
      v46 = @"Unknown";
    }

    else
    {
      v46 = off_278F045D8[v45];
    }

    *v49 = v6;
    *&v49[1] = v12;
    v40 = [MEMORY[0x277CCAE60] valueWithBytes:v49 objCType:"{CGSize=dd}"];
    *buf = 138413058;
    v58 = v46;
    v59 = 2112;
    v60 = v40;
    v61 = 2048;
    v62 = v44;
    v63 = 2112;
    v64 = v4;
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
    v3 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
    v4 = [v3 view];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
    v5 = [v6 view];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  }
}

- (void)_reloadConstraints
{
  v48[4] = *MEMORY[0x277D85DE8];
  v3 = [(DBWidgetContainerViewController *)self currentConstraints];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v5 = [(DBWidgetContainerViewController *)self currentConstraints];
    [v4 deactivateConstraints:v5];

    [(DBWidgetContainerViewController *)self setCurrentConstraints:0];
  }

  v6 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
  v7 = MEMORY[0x277CBEBF8];
  [v6 setWidgetViewControllers:MEMORY[0x277CBEBF8]];

  v8 = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
  [v8 setWidgetViewControllers:v7];

  v9 = [(DBWidgetContainerViewController *)self layoutType];
  if (v9 == 3)
  {
    if ([(DBWidgetContainerViewController *)self isSmartWidgetHidden])
    {
      v23 = [(DBWidgetContainerViewController *)self hasActiveNavigation]^ 1;
    }

    else
    {
      v23 = 0;
    }

    v24 = [(DBWidgetContainerViewController *)self nowPlayingWidgetController];
    [v24 setWantsLargeSize:v23];

    v25 = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
    [v25 setWidgetViewControllers:MEMORY[0x277CBEBF8]];

    v26 = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
    v27 = [v26 view];
    v22 = 1;
    [v27 setHidden:1];

    v28 = [(DBWidgetContainerViewController *)self navigationInstructionWidgetViewController];
    v45[0] = v28;
    v29 = [(DBWidgetContainerViewController *)self inCallWidgetController];
    v45[1] = v29;
    v30 = [(DBWidgetContainerViewController *)self nowPlayingWidgetController];
    v45[2] = v30;
    v31 = [(DBWidgetContainerViewController *)self smartWidgetController];
    v45[3] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];
    v33 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
    [v33 setWidgetViewControllers:v32];

    v21 = [(DBWidgetContainerViewController *)self landscapePortraitConstraints];
    if (!v21)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v9 == 2)
  {
    v11 = [(DBWidgetContainerViewController *)self navigationInstructionWidgetViewController];
    v47[0] = v11;
    v12 = [(DBWidgetContainerViewController *)self smartWidgetController];
    v47[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
    v14 = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
    [v14 setWidgetViewControllers:v13];

    v15 = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
    v16 = [v15 view];
    [v16 setHidden:0];

    v17 = [(DBWidgetContainerViewController *)self inCallWidgetController];
    v46[0] = v17;
    v18 = [(DBWidgetContainerViewController *)self nowPlayingWidgetController];
    v46[1] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
    v20 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
    [v20 setWidgetViewControllers:v19];

    v21 = [(DBWidgetContainerViewController *)self squareConstraints];
    if ([(DBWidgetContainerViewController *)self isSmartWidgetHidden])
    {
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }

    if (!v21)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v9 != 1)
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

  v35 = [(DBWidgetContainerViewController *)self nowPlayingWidgetController];
  [v35 setWantsLargeSize:v10];

  v36 = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
  [v36 setWidgetViewControllers:MEMORY[0x277CBEBF8]];

  v37 = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
  v38 = [v37 view];
  [v38 setHidden:1];

  v39 = [(DBWidgetContainerViewController *)self navigationInstructionWidgetViewController];
  v48[0] = v39;
  v40 = [(DBWidgetContainerViewController *)self inCallWidgetController];
  v48[1] = v40;
  v41 = [(DBWidgetContainerViewController *)self nowPlayingWidgetController];
  v48[2] = v41;
  v42 = [(DBWidgetContainerViewController *)self smartWidgetController];
  v48[3] = v42;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:4];
  v44 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
  [v44 setWidgetViewControllers:v43];

  v21 = [(DBWidgetContainerViewController *)self landscapePortraitConstraints];
  if ([(DBWidgetContainerViewController *)self isSmartWidgetHidden])
  {
    v22 = 2;
  }

  else
  {
    v22 = 1;
  }

  if (v21)
  {
LABEL_17:
    [MEMORY[0x277CCAAD0] activateConstraints:v21];
    [(DBWidgetContainerViewController *)self setCurrentConstraints:v21];
  }

LABEL_18:
  v34 = [(DBWidgetContainerViewController *)self navigationInstructionWidgetViewController];
  [v34 setWidgetStyle:v22];
}

- (NSArray)landscapePortraitConstraints
{
  v32[4] = *MEMORY[0x277D85DE8];
  if (!self->_landscapePortraitConstraints)
  {
    v31 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
    v30 = [v31 view];
    v28 = [v30 leadingAnchor];
    v29 = [(DBWidgetContainerViewController *)self view];
    v27 = [v29 leadingAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v32[0] = v26;
    v25 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
    v24 = [v25 view];
    v22 = [v24 trailingAnchor];
    v23 = [(DBWidgetContainerViewController *)self view];
    v21 = [v23 trailingAnchor];
    v20 = [v22 constraintEqualToAnchor:v21];
    v32[1] = v20;
    v19 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
    v18 = [v19 view];
    v16 = [v18 topAnchor];
    v17 = [(DBWidgetContainerViewController *)self view];
    v3 = [v17 topAnchor];
    v4 = [v16 constraintEqualToAnchor:v3];
    v32[2] = v4;
    v5 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
    v6 = [v5 view];
    v7 = [v6 bottomAnchor];
    v8 = [(DBWidgetContainerViewController *)self view];
    v9 = [v8 bottomAnchor];
    v10 = [v7 constraintEqualToAnchor:v9];
    v32[3] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:4];
    landscapePortraitConstraints = self->_landscapePortraitConstraints;
    self->_landscapePortraitConstraints = v11;
  }

  v13 = [(DBWidgetContainerViewController *)self view];
  [v13 setAccessibilityValue:@"Landscape Layout"];

  v14 = self->_landscapePortraitConstraints;

  return v14;
}

- (NSArray)squareConstraints
{
  v51[8] = *MEMORY[0x277D85DE8];
  squareConstraints = self->_squareConstraints;
  if (!squareConstraints)
  {
    v4 = [(DBWidgetContainerViewController *)self environment];
    v5 = [v4 environmentConfiguration];
    v6 = [v5 isRightHandDrive];

    v7 = [MEMORY[0x277CF89C8] flipDashboardLayout];
    LODWORD(v5) = [v7 valueBool];

    if (v6 == v5)
    {
      v10 = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
      v9 = [v10 view];

      [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
    }

    else
    {
      v8 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
      v9 = [v8 view];

      [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
    }
    v11 = ;
    v35 = v9;
    v12 = [v11 view];

    v13 = [(DBWidgetContainerViewController *)self view];
    [v13 setAccessibilityValue:@"Square Layout"];

    [v9 setAccessibilityIdentifier:@"CARDashboardWidgetLeftStack"];
    [v12 setAccessibilityIdentifier:@"CARDashboardWidgetRightStack;"];
    v49 = [v9 leftAnchor];
    v50 = [(DBWidgetContainerViewController *)self view];
    v48 = [v50 leftAnchor];
    v47 = [v49 constraintEqualToAnchor:v48];
    v51[0] = v47;
    v45 = [v9 rightAnchor];
    v46 = [(DBWidgetContainerViewController *)self view];
    v44 = [v46 centerXAnchor];
    v43 = [v45 constraintEqualToAnchor:v44 constant:4.0 * -0.5];
    v51[1] = v43;
    v41 = [v9 topAnchor];
    v42 = [(DBWidgetContainerViewController *)self view];
    v40 = [v42 topAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v51[2] = v39;
    v37 = [v9 bottomAnchor];
    v38 = [(DBWidgetContainerViewController *)self view];
    v36 = [v38 bottomAnchor];
    v34 = [v37 constraintEqualToAnchor:v36];
    v51[3] = v34;
    v31 = [v12 leftAnchor];
    v32 = [(DBWidgetContainerViewController *)self view];
    v30 = [v32 centerXAnchor];
    v29 = [v31 constraintEqualToAnchor:v30 constant:4.0 * 0.5];
    v51[4] = v29;
    v27 = [v12 rightAnchor];
    v28 = [(DBWidgetContainerViewController *)self view];
    v26 = [v28 rightAnchor];
    v14 = [v27 constraintEqualToAnchor:v26];
    v51[5] = v14;
    v33 = v12;
    v15 = [v12 topAnchor];
    v16 = [(DBWidgetContainerViewController *)self view];
    v17 = [v16 topAnchor];
    v18 = [v15 constraintEqualToAnchor:v17];
    v51[6] = v18;
    v19 = [v12 bottomAnchor];
    v20 = [(DBWidgetContainerViewController *)self view];
    v21 = [v20 bottomAnchor];
    v22 = [v19 constraintEqualToAnchor:v21];
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
    v3 = [(DBWidgetContainerViewController *)self _smartWidgetShouldBeHidden];
    if (v3 != [(DBWidgetContainerViewController *)self isSmartWidgetHidden])
    {
      [(DBWidgetContainerViewController *)self setSmartWidgetHidden:v3];

      [(DBWidgetContainerViewController *)self _updateStackViewsWithUpdates:0 completion:0];
    }
  }
}

- (void)setSmartWidgetHidden:(BOOL)a3
{
  if (self->_smartWidgetHidden != a3)
  {
    self->_smartWidgetHidden = a3;
    if (!a3)
    {
      v4 = [(DBWidgetContainerViewController *)self smartWidgetController];
      [v4 setSmartWidgetForeground:self->_sceneWidgetsForeground];
    }
  }
}

- (void)_smartWidgetHiddenDefaultChanged
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v4 BOOLForKey:@"CARSmartWidgetHidden"];
    v5 = NSStringFromBOOL();
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "Smart widget hidden default changed: %@", &v6, 0xCu);
  }

  [(DBWidgetContainerViewController *)self _updateSmartWidgetVisibleIfNecessary];
}

- (void)_updateStackViewsWithUpdates:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(DBWidgetContainerViewController *)self layoutType]== 2)
  {
    v8 = [(DBWidgetContainerViewController *)self secondaryWidgetStackViewController];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __75__DBWidgetContainerViewController__updateStackViewsWithUpdates_completion___block_invoke;
    v17[3] = &unk_278F02D68;
    v9 = &v18;
    v17[4] = self;
    v18 = v6;
    v10 = v6;
    [v8 animateWithUpdates:v17 completion:v7];

    v11 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __75__DBWidgetContainerViewController__updateStackViewsWithUpdates_completion___block_invoke_2;
    v16[3] = &unk_278F01580;
    v16[4] = self;
    [v11 animateWithUpdates:v16 completion:0];
  }

  else
  {
    v12 = [(DBWidgetContainerViewController *)self primaryWidgetStackViewController];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __75__DBWidgetContainerViewController__updateStackViewsWithUpdates_completion___block_invoke_3;
    v14[3] = &unk_278F02D68;
    v9 = &v15;
    v14[4] = self;
    v15 = v6;
    v13 = v6;
    [v12 animateWithUpdates:v14 completion:v7];
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

- (void)_callStatusChanged:(id)a3
{
  v4 = [MEMORY[0x277D6EDF8] sharedInstance];
  v7 = [v4 displayedAudioAndVideoCalls];

  v5 = [v7 count];
  [(DBWidgetContainerViewController *)self setInCallWidgetHidden:v5 == 0];
  if (v5)
  {
    v6 = [(DBWidgetContainerViewController *)self inCallWidgetController];
    [v6 handleCallStatusChanged];
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