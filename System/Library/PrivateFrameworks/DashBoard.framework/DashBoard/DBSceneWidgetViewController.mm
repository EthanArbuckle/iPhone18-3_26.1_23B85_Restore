@interface DBSceneWidgetViewController
- (BOOL)entireWidgetFocusable;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (DBSceneWidgetViewController)initWithEnvironment:(id)a3 animationManager:(id)a4 widgetSizeManager:(id)a5;
- (DBWidgetSizeManaging)widgetSizeManager;
- (id)getIconPlaceholderLayerView;
- (id)linearFocusItems;
- (id)loadingIconLayer;
- (id)preferredFocusEnvironments;
- (void)_addWidgetSceneViewControllerForApplication:(id)a3 scene:(id)a4;
- (void)_animateLoadingViewRemovalIfNecessary;
- (void)_beginTouchCancelation;
- (void)_endTouchCancelation;
- (void)_handleTapGesture:(id)a3;
- (void)_installWidgetSceneViewController:(id)a3;
- (void)_removeWidgetSceneViewController;
- (void)_scrollViewDidEndDragging:(id)a3;
- (void)_scrollViewWillBeginDragging:(id)a3;
- (void)_setTouchActionDisabled:(BOOL)a3 forRequester:(id)a4;
- (void)_updateLoadingIconLayer;
- (void)_updateTouchActionDisabled;
- (void)clientSetContentReady;
- (void)clientSetFocusableItems:(id)a3;
- (void)clientSetWantsLargeSize:(BOOL)a3 fenceHandle:(id)a4 animationSettings:(id)a5;
- (void)connectionReady;
- (void)focusableItem:(id)a3 didChangeFocused:(BOOL)a4;
- (void)focusableItem:(id)a3 didChangePressed:(BOOL)a4;
- (void)invalidate;
- (void)prepareLoadingViewAnimated:(BOOL)a3;
- (void)replaceLoadingViewWithView:(id)a3;
- (void)selectedFocusableItem:(id)a3;
- (void)setActive:(BOOL)a3;
- (void)setAvailableWidgetSizes:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setForeground:(BOOL)a3;
- (void)setScene:(id)a3 application:(id)a4;
- (void)setWantsLargeSize:(BOOL)a3;
- (void)setWidgetContextId:(unsigned int)a3;
- (void)setWidgetStyle:(unint64_t)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)updateAppearanceForWallpaper;
- (void)updateContextId:(unsigned int)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)widgetSceneHostViewController:(id)a3 sceneContentStateDidUpdate:(int64_t)a4;
- (void)widgetSceneHostViewControllerSceneWillDeactivate:(id)a3;
@end

@implementation DBSceneWidgetViewController

- (DBSceneWidgetViewController)initWithEnvironment:(id)a3 animationManager:(id)a4 widgetSizeManager:(id)a5
{
  v24[2] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = DBSceneWidgetViewController;
  v11 = [(DBWidgetViewController *)&v23 initWithEnvironment:a3];
  v12 = v11;
  if (v11)
  {
    v11->_active = 1;
    objc_storeStrong(&v11->_animationManager, a4);
    objc_storeWeak(&v12->_widgetSizeManager, v10);
    v13 = [MEMORY[0x277CCAE98] anonymousListener];
    widgetWindowServiceListener = v12->_widgetWindowServiceListener;
    v12->_widgetWindowServiceListener = v13;

    [(NSXPCListener *)v12->_widgetWindowServiceListener setDelegate:v12];
    [(NSXPCListener *)v12->_widgetWindowServiceListener resume];
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v12 selector:sel__scrollViewWillBeginDragging_ name:*MEMORY[0x277D77570] object:0];

    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    [v16 addObserver:v12 selector:sel__scrollViewDidEndDragging_ name:*MEMORY[0x277D77560] object:0];

    if (os_variant_has_internal_diagnostics())
    {
      v17 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v12->_debugSnapshotLabelEnabled = [v17 BOOLForKey:@"CAREnableSnapshotDebugLabel"];
    }

    v18 = objc_opt_self();
    v24[0] = v18;
    v19 = objc_opt_self();
    v24[1] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    v21 = [(DBSceneWidgetViewController *)v12 registerForTraitChanges:v20 withTarget:v12 action:sel__didUpdateTintTrait];
  }

  return v12;
}

- (void)setScene:(id)a3 application:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a4;
  objc_storeStrong(&self->_targetApplication, a4);
  v8 = a3;
  v9 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = 138543618;
    v13 = v11;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set target application: %{public}@", &v12, 0x16u);
  }

  [(DBSceneWidgetViewController *)self setProxySceneContentReady:0];
  [(DBSceneWidgetViewController *)self _removeWidgetSceneViewController];
  [(DBSceneWidgetViewController *)self _addWidgetSceneViewControllerForApplication:v7 scene:v8];
}

- (void)setEnabled:(BOOL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    v4 = DBLogForCategory(2uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = NSStringFromBOOL();
      v11 = 138543618;
      v12 = v6;
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Enabled: %{public}@", &v11, 0x16u);
    }

    enabled = self->_enabled;
    v9 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
    v10 = v9;
    if (enabled)
    {
      [v9 initializeSceneForeground:-[DBSceneWidgetViewController isForeground](self active:{"isForeground"), -[DBSceneWidgetViewController isActive](self, "isActive")}];
    }

    else
    {
      [v9 deactivateScene];
    }
  }
}

- (void)setForeground:(BOOL)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_foreground != a3)
  {
    v3 = a3;
    self->_foreground = a3;
    v5 = DBLogForCategory(2uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromBOOL();
      v12 = 138543618;
      v13 = v7;
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Foreground: %{public}@", &v12, 0x16u);
    }

    if (self->_enabled)
    {
      v9 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
      [v9 setForeground:v3];
    }

    else
    {
      v9 = DBLogForCategory(2uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = 138543362;
        v13 = v11;
        _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] is not enabled, skipping foreground update for scene view controller", &v12, 0xCu);
      }
    }
  }
}

- (void)setActive:(BOOL)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_active != a3)
  {
    v3 = a3;
    self->_active = a3;
    v5 = DBLogForCategory(2uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromBOOL();
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Active: %{public}@", &v10, 0x16u);
    }

    v9 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
    [v9 setActive:v3];
  }
}

- (void)setWidgetStyle:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_widgetStyle != a3)
  {
    self->_widgetStyle = a3;
    v5 = DBLogForCategory(2uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      widgetStyle = self->_widgetStyle;
      v10 = 138543618;
      v11 = v7;
      v12 = 2050;
      v13 = widgetStyle;
      _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Widget style: %{public}ld", &v10, 0x16u);
    }

    v9 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
    [v9 setWidgetStyle:a3];
  }
}

- (void)setAvailableWidgetSizes:(id)a3
{
  v8 = a3;
  v5 = [(DBSceneWidgetViewController *)self widgetSizeManager];

  if (v5 && (BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_availableWidgetSizes, a3);
    v6 = [(DBSceneWidgetViewController *)self widgetWindowServiceConnection];
    v7 = [v6 remoteObjectProxy];
    [v7 hostSetWidgetSizes:v8];
  }
}

- (void)prepareLoadingViewAnimated:(BOOL)a3
{
  v73 = a3;
  v80[3] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(DBWidgetViewController *)self contentView];
  [v5 addSubview:v4];

  v6 = [(DBSceneWidgetViewController *)self targetApplication];
  v7 = [v6 bundleIdentifier];
  v8 = 0x277CCA000uLL;
  v74 = self;
  v75 = v4;
  if ([v7 isEqualToString:@"com.apple.Maps"])
  {
    v9 = [(DBSceneWidgetViewController *)self wantsBlurredMapBackground];

    if (v9)
    {
      v10 = objc_alloc_init(MEMORY[0x277D755E8]);
      [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
      v11 = MEMORY[0x277D755B8];
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
      v13 = [(DBWidgetViewController *)self contentView];
      v14 = [v13 traitCollection];
      v15 = [v11 imageNamed:@"MapsNavigationWidgetBackgroundImage" inBundle:v12 compatibleWithTraitCollection:v14];
      [v10 setImage:v15];

      [v10 setContentMode:2];
      [v4 addSubview:v10];
      v16 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5B0]];
      [v16 setName:@"multiplyColor"];
      v17 = [MEMORY[0x277D75348] colorWithRed:0.654901961 green:0.654901961 blue:0.654901961 alpha:1.0];
      v71 = v16;
      [v16 setValue:objc_msgSend(v17 forKey:{"CGColor"), @"inputColor"}];

      v18 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2D0]];
      [v18 setName:@"saturation"];
      v19 = v18;
      v69 = v18;
      [v18 setValue:&unk_285AA4B48 forKey:@"inputAmount"];
      v20 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
      [v20 setName:@"gaussianBlur"];
      [v20 setValue:&unk_285AA4B58 forKey:@"inputRadius"];
      v21 = MEMORY[0x277CBEC38];
      [v20 setValue:MEMORY[0x277CBEC38] forKey:@"inputHardEdges"];
      [v20 setValue:v21 forKey:@"inputNormalizeEdges"];
      [v20 setValue:v21 forKey:@"inputDither"];
      v22 = [v10 layer];
      v80[0] = v16;
      v80[1] = v19;
      v80[2] = v20;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:3];
      [v22 setFilters:v23];

      v57 = MEMORY[0x277CCAAD0];
      v67 = [v4 topAnchor];
      v65 = [v10 topAnchor];
      v63 = [v67 constraintEqualToAnchor:v65];
      v79[0] = v63;
      v61 = [v4 bottomAnchor];
      v59 = [v10 bottomAnchor];
      v24 = [v61 constraintEqualToAnchor:v59];
      v79[1] = v24;
      v25 = [v4 leftAnchor];
      v26 = [v10 leftAnchor];
      v27 = [v25 constraintEqualToAnchor:v26];
      v79[2] = v27;
      v28 = [v4 rightAnchor];
      v29 = [v10 rightAnchor];
      v30 = [v28 constraintEqualToAnchor:v29];
      v79[3] = v30;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:4];
      [v57 activateConstraints:v31];

      v4 = v75;
      self = v74;

      v8 = 0x277CCA000;
    }
  }

  else
  {
  }

  v32 = [(DBSceneWidgetViewController *)self getIconPlaceholderLayerView];
  [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 addSubview:v32];
  v51 = *(v8 + 2768);
  v68 = [v4 topAnchor];
  v70 = [(DBWidgetViewController *)self contentView];
  v66 = [v70 topAnchor];
  v64 = [v68 constraintEqualToAnchor:v66];
  v78[0] = v64;
  v60 = [v4 bottomAnchor];
  v62 = [(DBWidgetViewController *)self contentView];
  v58 = [v62 bottomAnchor];
  v56 = [v60 constraintEqualToAnchor:v58];
  v78[1] = v56;
  v54 = [v4 leftAnchor];
  v55 = [(DBWidgetViewController *)self contentView];
  v53 = [v55 leftAnchor];
  v52 = [v54 constraintEqualToAnchor:v53];
  v78[2] = v52;
  v49 = [v4 rightAnchor];
  v50 = [(DBWidgetViewController *)self contentView];
  v48 = [v50 rightAnchor];
  v47 = [v49 constraintEqualToAnchor:v48];
  v78[3] = v47;
  v45 = [v32 centerXAnchor];
  v46 = [(DBWidgetViewController *)self contentView];
  v44 = [v46 centerXAnchor];
  v33 = [v45 constraintEqualToAnchor:v44];
  v78[4] = v33;
  v34 = [v32 centerYAnchor];
  v35 = [(DBWidgetViewController *)self contentView];
  v36 = [v35 centerYAnchor];
  v37 = [v34 constraintEqualToAnchor:v36];
  v78[5] = v37;
  v38 = [v32 widthAnchor];
  v39 = [v38 constraintEqualToConstant:40.0];
  v78[6] = v39;
  v72 = v32;
  v40 = [v32 heightAnchor];
  v41 = [v40 constraintEqualToConstant:40.0];
  v78[7] = v41;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:8];
  [v51 activateConstraints:v42];

  [(DBSceneWidgetViewController *)v74 replaceLoadingViewWithView:v75];
  if (v73)
  {
    [v75 setAlpha:0.0];
    v43 = MEMORY[0x277D75D18];
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __58__DBSceneWidgetViewController_prepareLoadingViewAnimated___block_invoke;
    v76[3] = &unk_278F01580;
    v77 = v75;
    [v43 animateWithDuration:v76 animations:0.25];
  }
}

- (void)connectionReady
{
  v3 = [(DBWidgetViewController *)self environment];
  v4 = [v3 environmentConfiguration];
  v5 = [v4 wallpaperPreferences];
  v10 = [v5 currentWallpaper];

  v6 = [v10 traits];
  v7 = [v6 supportsDashboardPlatterMaterials];

  v8 = [(DBSceneWidgetViewController *)self widgetWindowServiceConnection];
  v9 = [v8 remoteObjectProxy];
  [v9 hostSetUseSystemPrimaryFocusColor:v7];
}

- (void)replaceLoadingViewWithView:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543618;
    v15 = v7;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting loading view: %@", buf, 0x16u);
  }

  v8 = [(DBSceneWidgetViewController *)self loadingView];
  [v8 removeFromSuperview];

  [(DBSceneWidgetViewController *)self setLoadingView:v4];
  objc_initWeak(buf, self);
  v9 = [(DBSceneWidgetViewController *)self animationManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__DBSceneWidgetViewController_replaceLoadingViewWithView___block_invoke;
  v11[3] = &unk_278F02070;
  objc_copyWeak(&v13, buf);
  v10 = v4;
  v12 = v10;
  [v9 registerAnimation:@"DBWidgetSceneSplashScreenAnimationIdentifier" client:self animation:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __58__DBSceneWidgetViewController_replaceLoadingViewWithView___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained loadingView];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    [WeakRetained setLoadingView:0];
  }

  v5 = [*(a1 + 32) superview];

  v6 = DBLogForCategory(2uLL);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = *(a1 + 32);
      *buf = 138543618;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Animating out loading view: %@", buf, 0x16u);
    }

    v11 = MEMORY[0x277D75D18];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __58__DBSceneWidgetViewController_replaceLoadingViewWithView___block_invoke_236;
    v17[3] = &unk_278F014B8;
    v18 = *(a1 + 32);
    v19 = WeakRetained;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __58__DBSceneWidgetViewController_replaceLoadingViewWithView___block_invoke_2;
    v15[3] = &unk_278F01690;
    v16 = *(a1 + 32);
    [v11 animateWithDuration:544 delay:v17 options:v15 animations:0.25 completion:0.0];

    v6 = v18;
  }

  else if (v7)
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = *(a1 + 32);
    *buf = 138543618;
    v21 = v13;
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Loading view: %@ is not in hierarchy, skipping animation", buf, 0x16u);
  }
}

void __58__DBSceneWidgetViewController_replaceLoadingViewWithView___block_invoke_236(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v3 = [*(a1 + 40) widgetSceneViewController];
  v2 = [v3 view];
  [v2 setAlpha:1.0];
}

- (id)loadingIconLayer
{
  v3 = [(DBSceneWidgetViewController *)self targetApplication];
  v4 = [v3 bundleIdentifier];

  v5 = [(DBSceneWidgetViewController *)self traitCollection];
  [v5 displayScale];
  [_TtC9DashBoard11DBIconImage iconImageInfoForScale:?];
  v6 = [(DBSceneWidgetViewController *)self traitCollection];
  v7 = SBHGetApplicationIconLayerWithTraitCollection();

  return v7;
}

- (id)getIconPlaceholderLayerView
{
  v3 = [(DBSceneWidgetViewController *)self iconPlaceholderLayerView];

  if (!v3)
  {
    v4 = objc_alloc_init(_TtC9DashBoard15DBIconLayerView);
    [(DBSceneWidgetViewController *)self setIconPlaceholderLayerView:v4];
  }

  return [(DBSceneWidgetViewController *)self iconPlaceholderLayerView];
}

- (void)_updateLoadingIconLayer
{
  v3 = [(DBSceneWidgetViewController *)self iconPlaceholderLayerView];

  if (v3)
  {
    [(DBSceneWidgetViewController *)self updateTraitsIfNeeded];
    v5 = [(DBSceneWidgetViewController *)self iconPlaceholderLayerView];
    v4 = [(DBSceneWidgetViewController *)self loadingIconLayer];
    [v5 setIconLayer:v4 animated:1];
  }
}

- (void)viewDidLoad
{
  v55[4] = *MEMORY[0x277D85DE8];
  v53.receiver = self;
  v53.super_class = DBSceneWidgetViewController;
  [(DBSceneWidgetViewController *)&v53 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x277D754F8]);
  v4 = [(DBSceneWidgetViewController *)self view];
  [v4 addLayoutGuide:v3];

  v36 = MEMORY[0x277CCAAD0];
  v48 = [v3 topAnchor];
  v50 = [(DBSceneWidgetViewController *)self view];
  v46 = [v50 topAnchor];
  v44 = [v48 constraintEqualToAnchor:v46];
  v55[0] = v44;
  v40 = [v3 bottomAnchor];
  v42 = [(DBSceneWidgetViewController *)self view];
  v38 = [v42 bottomAnchor];
  v34 = [v40 constraintEqualToAnchor:v38];
  v55[1] = v34;
  v5 = [v3 leftAnchor];
  v6 = [(DBSceneWidgetViewController *)self view];
  v7 = [v6 leftAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];
  v55[2] = v8;
  v52 = v3;
  v9 = [v3 rightAnchor];
  v10 = [(DBSceneWidgetViewController *)self view];
  v11 = [v10 rightAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v55[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:4];
  [v36 activateConstraints:v13];

  if ([(DBSceneWidgetViewController *)self shouldInstallTapGestureRecognizers])
  {
    v14 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [v14 layer];
    [v15 setHitTestsAsOpaque:1];

    v16 = [(DBSceneWidgetViewController *)self view];
    [v16 addSubview:v14];

    [(DBSceneWidgetViewController *)self setTouchActionView:v14];
    v37 = MEMORY[0x277CCAAD0];
    v49 = [v14 topAnchor];
    v51 = [(DBSceneWidgetViewController *)self view];
    v47 = [v51 topAnchor];
    v45 = [v49 constraintEqualToAnchor:v47];
    v54[0] = v45;
    v41 = [v14 bottomAnchor];
    v43 = [(DBSceneWidgetViewController *)self view];
    v39 = [v43 bottomAnchor];
    v35 = [v41 constraintEqualToAnchor:v39];
    v54[1] = v35;
    v33 = [v14 leftAnchor];
    v17 = [(DBSceneWidgetViewController *)self view];
    v18 = [v17 leftAnchor];
    v19 = [v33 constraintEqualToAnchor:v18];
    v54[2] = v19;
    v20 = [v14 rightAnchor];
    v21 = [(DBSceneWidgetViewController *)self view];
    v22 = [v21 rightAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];
    v54[3] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:4];
    [v37 activateConstraints:v24];

    v25 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleTapGesture_];
    [v25 setAllowedTouchTypes:&unk_285AA49A0];
    [v14 addGestureRecognizer:v25];
    [(DBSceneWidgetViewController *)self setTouchTapGestureRecognizer:v25];
    v26 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleTapGesture_];
    [v26 setAllowedPressTypes:&unk_285AA49B8];
    v27 = [(DBSceneWidgetViewController *)self view];
    [v27 addGestureRecognizer:v26];

    [(DBSceneWidgetViewController *)self setSelectTapGestureRecognizer:v26];
  }

  else
  {
    [(DBSceneWidgetViewController *)self _setTouchActionDisabled:0 forRequester:@"FocusItems"];
  }

  v28 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
  if (v28)
  {
    v29 = v28;
    v30 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
    v31 = [v30 parentViewController];

    if (!v31)
    {
      v32 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
      [(DBSceneWidgetViewController *)self _installWidgetSceneViewController:v32];
      goto LABEL_9;
    }
  }

  if ([(DBSceneWidgetViewController *)self isEnabled])
  {
    v32 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
    [v32 initializeSceneForeground:-[DBSceneWidgetViewController isForeground](self active:{"isForeground"), -[DBSceneWidgetViewController isActive](self, "isActive")}];
LABEL_9:
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = DBSceneWidgetViewController;
  [(DBSceneWidgetViewController *)&v8 viewWillAppear:a3];
  v4 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  v6 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
  if ([v6 sceneContentState] == 2)
  {

    return;
  }

  v7 = [(DBSceneWidgetViewController *)self loadingView];

  if (!v7)
  {
LABEL_5:
    [(DBSceneWidgetViewController *)self prepareLoadingViewAnimated:0];
  }
}

- (void)viewDidLayoutSubviews
{
  v13 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = DBSceneWidgetViewController;
  [(DBSceneWidgetViewController *)&v10 viewDidLayoutSubviews];
  v3 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543362;
    v12 = v5;
    _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] viewDidLayoutSubviews", buf, 0xCu);
  }

  v6 = [(DBSceneWidgetViewController *)self pendingWidgetResizeFenceHandle];
  v7 = [(DBSceneWidgetViewController *)self pendingWidgetResizeAnimationSettings];
  [(DBSceneWidgetViewController *)self setPendingWidgetResizeFenceHandle:0];
  [(DBSceneWidgetViewController *)self setPendingWidgetResizeAnimationSettings:0];
  v8 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
  v9 = [(DBSceneWidgetViewController *)self view];
  [v9 frame];
  [v8 updateSceneFrame:v7 animationSettings:v6 fenceHandle:?];
}

- (id)preferredFocusEnvironments
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(DBSceneWidgetViewController *)self focusableItemViews];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(DBSceneWidgetViewController *)self focusableItemViews];
    [v3 addObjectsFromArray:v6];
  }

  [v3 addObject:self];

  return v3;
}

- (BOOL)entireWidgetFocusable
{
  v2 = [(DBSceneWidgetViewController *)self focusableItemViews];
  v3 = [v2 count] == 0;

  return v3;
}

- (id)linearFocusItems
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [(DBSceneWidgetViewController *)self focusableItemViews];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(DBSceneWidgetViewController *)self focusableItemViews];
  }

  else
  {
    v6 = [(DBSceneWidgetViewController *)self view];
    v8[0] = v6;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  return v5;
}

- (void)updateAppearanceForWallpaper
{
  v11.receiver = self;
  v11.super_class = DBSceneWidgetViewController;
  [(DBWidgetViewController *)&v11 updateAppearanceForWallpaper];
  v3 = [(DBWidgetViewController *)self environment];
  v4 = [v3 environmentConfiguration];
  v5 = [v4 wallpaperPreferences];
  v6 = [v5 currentWallpaper];

  v7 = [v6 traits];
  v8 = [v7 supportsDashboardPlatterMaterials];

  v9 = [(DBSceneWidgetViewController *)self widgetWindowServiceConnection];
  v10 = [v9 remoteObjectProxy];
  [v10 hostSetUseSystemPrimaryFocusColor:v8];
}

- (void)setWantsLargeSize:(BOOL)a3
{
  v3 = a3;
  if ([(DBWidgetViewController *)self wantsLargeSize]!= a3)
  {
    v6.receiver = self;
    v6.super_class = DBSceneWidgetViewController;
    [(DBWidgetViewController *)&v6 setWantsLargeSize:v3];
    v5 = [(DBSceneWidgetViewController *)self widgetSizeManager];
    [v5 requestSizeChange];
  }
}

- (void)invalidate
{
  [(DBSceneWidgetViewController *)self setInvalidated:1];
  v3 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
  [v3 invalidate];

  v4 = [(DBSceneWidgetViewController *)self widgetWindowServiceListener];
  [v4 invalidate];

  [(DBSceneWidgetViewController *)self setWidgetWindowServiceListener:0];
}

- (void)updateContextId:(unsigned int)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543618;
    v11 = v7;
    v12 = 1024;
    v13 = a3;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_INFO, "[%{public}@ Context id updated: %x", buf, 0x12u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__DBSceneWidgetViewController_updateContextId___block_invoke;
  v8[3] = &unk_278F02F18;
  v8[4] = self;
  v9 = a3;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

- (void)clientSetFocusableItems:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__DBSceneWidgetViewController_clientSetFocusableItems___block_invoke;
  v6[3] = &unk_278F014B8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __55__DBSceneWidgetViewController_clientSetFocusableItems___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [*(a1 + 32) targetApplication];
    v6 = *(a1 + 40);
    *buf = 138543874;
    v16 = v4;
    v17 = 2114;
    v18 = v5;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&dword_248146000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] New focusable items for client: %{public}@, items: %{public}@", buf, 0x20u);
  }

  v7 = [*(a1 + 32) focusableItemViews];
  [v7 enumerateObjectsUsingBlock:&__block_literal_global_14];

  [*(a1 + 32) setFocusableItemViews:0];
  v8 = [*(a1 + 40) count];
  v9 = *(a1 + 32);
  if (v8)
  {
    [v9 _setTouchActionDisabled:1 forRequester:@"FocusItems"];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __55__DBSceneWidgetViewController_clientSetFocusableItems___block_invoke_2;
    v14[3] = &unk_278F02F60;
    v10 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v11 = [v10 bs_map:v14];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55__DBSceneWidgetViewController_clientSetFocusableItems___block_invoke_3;
    v13[3] = &unk_278F02F88;
    v13[4] = *(a1 + 32);
    [v11 enumerateObjectsUsingBlock:v13];
    [*(a1 + 32) setFocusableItemViews:v11];
  }

  else
  {
    [v9 _setTouchActionDisabled:0 forRequester:@"FocusItems"];
  }

  return [*(a1 + 32) setNeedsFocusUpdate];
}

DBWidgetFocusableView *__55__DBSceneWidgetViewController_clientSetFocusableItems___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(DBWidgetFocusableView);
  [(DBWidgetFocusableView *)v4 setFocusableItem:v3];
  [(DBWidgetFocusableView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 frameInWindow];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(DBWidgetFocusableView *)v4 setFrame:v6, v8, v10, v12];
  [(DBWidgetFocusableView *)v4 setDelegate:*(a1 + 32)];

  return v4;
}

void __55__DBSceneWidgetViewController_clientSetFocusableItems___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 contentView];
  [v4 addSubview:v3];
}

- (void)clientSetWantsLargeSize:(BOOL)a3 fenceHandle:(id)a4 animationSettings:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__DBSceneWidgetViewController_clientSetWantsLargeSize_fenceHandle_animationSettings___block_invoke;
  v12[3] = &unk_278F02FB0;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v15 = a3;
  v10 = v9;
  v11 = v8;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

uint64_t __85__DBSceneWidgetViewController_clientSetWantsLargeSize_fenceHandle_animationSettings___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPendingWidgetResizeFenceHandle:*(a1 + 40)];
  [*(a1 + 32) setPendingWidgetResizeAnimationSettings:*(a1 + 48)];
  [MEMORY[0x277D75DA8] _synchronizeDrawingWithFence:*(a1 + 40)];
  v2 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __85__DBSceneWidgetViewController_clientSetWantsLargeSize_fenceHandle_animationSettings___block_invoke_2;
  v4[3] = &unk_278F017F8;
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 56);
  return [MEMORY[0x277CF0D38] animateWithSettings:v2 actions:v4];
}

- (void)clientSetContentReady
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__DBSceneWidgetViewController_clientSetContentReady__block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __52__DBSceneWidgetViewController_clientSetContentReady__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setProxySceneContentReady:1];
  v2 = *(a1 + 32);

  return [v2 _animateLoadingViewRemovalIfNecessary];
}

- (void)focusableItem:(id)a3 didChangePressed:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v8 = [(DBSceneWidgetViewController *)self widgetWindowServiceConnection];
  v7 = [v8 remoteObjectProxy];
  [v7 hostFocusableItem:v6 pressed:v4];
}

- (void)focusableItem:(id)a3 didChangeFocused:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v8 = [(DBSceneWidgetViewController *)self widgetWindowServiceConnection];
  v7 = [v8 remoteObjectProxy];
  [v7 hostFocusableItem:v6 focused:v4];
}

- (void)selectedFocusableItem:(id)a3
{
  v4 = a3;
  v6 = [(DBSceneWidgetViewController *)self widgetWindowServiceConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 hostSelectedFocusableItem:v4];
}

- (void)widgetSceneHostViewController:(id)a3 sceneContentStateDidUpdate:(int64_t)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(DBSceneWidgetViewController *)self widgetSceneViewController];

  if (v7 != v6)
  {
    v8 = DBLogForCategory(2uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v29 = 138543362;
      v30 = v10;
      _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring delegate call from stale widget scene host view controller", &v29, 0xCu);
    }

LABEL_4:

    return;
  }

  v11 = DBLogForCategory(2uLL);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (a4 == 2)
  {
    if (v12)
    {
      v29 = 138543362;
      v30 = self;
      _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Widget scene content ready", &v29, 0xCu);
    }

    [(DBSceneWidgetViewController *)self _animateLoadingViewRemovalIfNecessary];
  }

  else
  {
    if (v12)
    {
      v29 = 138543362;
      v30 = self;
      _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Widget scene content not ready", &v29, 0xCu);
    }

    v13 = [(DBSceneWidgetViewController *)self loadingView];

    if (!v13)
    {
      v14 = DBLogForCategory(2uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v29 = 138543362;
        v30 = v16;
        _os_log_impl(&dword_248146000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Taking snapshot", &v29, 0xCu);
      }

      v17 = [(DBWidgetViewController *)self contentView];
      v8 = [v17 snapshotViewAfterScreenUpdates:0];

      v18 = [(DBWidgetViewController *)self contentView];
      [v18 addSubview:v8];

      [(DBSceneWidgetViewController *)self replaceLoadingViewWithView:v8];
      if ([(DBSceneWidgetViewController *)self debugSnapshotLabelEnabled])
      {
        v19 = DBLogForCategory(2uLL);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          v29 = 138543362;
          v30 = v21;
          _os_log_impl(&dword_248146000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Displaying snapshot debug label", &v29, 0xCu);
        }

        v22 = objc_alloc_init(MEMORY[0x277D756B8]);
        [v22 setText:@"Snapshot placeholder..."];
        v23 = [MEMORY[0x277D75348] redColor];
        [v22 setTextColor:v23];

        v24 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
        [v22 setFont:v24];

        [v22 sizeToFit];
        v25 = [(DBSceneWidgetViewController *)self loadingView];
        [v25 addSubview:v22];
      }

      v26 = DBLogForCategory(2uLL);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        v29 = 138543618;
        v30 = v28;
        v31 = 2112;
        v32 = v8;
        _os_log_impl(&dword_248146000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] Using snapshot view: %@", &v29, 0x16u);
      }

      goto LABEL_4;
    }
  }
}

- (void)widgetSceneHostViewControllerSceneWillDeactivate:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DBSceneWidgetViewController *)self widgetSceneViewController];

  if (v5 != v4)
  {
    v6 = DBLogForCategory(2uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v19 = 138543362;
      v20 = v8;
      _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring delegate call from stale widget scene host view controller", &v19, 0xCu);
    }

    goto LABEL_4;
  }

  v9 = [v4 application];
  v10 = [(DBSceneWidgetViewController *)self targetApplication];
  v11 = [v9 isEqual:v10];

  v12 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = NSStringFromBOOL();
    v19 = 138543618;
    v20 = v14;
    v21 = 2114;
    v22 = v15;
    _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Widget scene will deactivate, same target: %{public}@", &v19, 0x16u);
  }

  [(DBSceneWidgetViewController *)self setProxySceneContentReady:0];
  v16 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
  v17 = [v16 view];
  [v17 setAlpha:0.0];

  [(DBSceneWidgetViewController *)self clientSetFocusableItems:MEMORY[0x277CBEBF8]];
  if (![(DBSceneWidgetViewController *)self isInvalidated]&& ((v11 ^ 1) & 1) == 0)
  {
    v18 = [(DBSceneWidgetViewController *)self loadingView];

    if (!v18)
    {
      v6 = [(DBSceneWidgetViewController *)self view];
      [(DBSceneWidgetViewController *)self prepareLoadingViewAnimated:[v6 isHidden]^ 1];
LABEL_4:
    }
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(DBSceneWidgetViewController *)self widgetWindowServiceConnection];

  if (v6)
  {
    v7 = [(DBSceneWidgetViewController *)self widgetWindowServiceConnection];
    [v7 invalidate];

    [(DBSceneWidgetViewController *)self setWidgetWindowServiceConnection:0];
  }

  v8 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138543362;
    v24 = v10;
    _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_INFO, "[%{public}@] Incoming connection for widget window service", buf, 0xCu);
  }

  v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285AE5FE0];
  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  [v11 setClasses:v14 forSelector:sel_clientSetFocusableItems_ argumentIndex:0 ofReply:0];

  [v5 setExportedInterface:v11];
  [v5 setExportedObject:self];
  v15 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285B71CE8];
  v16 = MEMORY[0x277CBEB98];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v18 = [v16 setWithArray:v17];
  [v15 setClasses:v18 forSelector:sel_hostSetWidgetSizes_ argumentIndex:0 ofReply:0];

  [v5 setRemoteObjectInterface:v15];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __66__DBSceneWidgetViewController_listener_shouldAcceptNewConnection___block_invoke;
  v21[3] = &unk_278F01580;
  v21[4] = self;
  [v5 setInterruptionHandler:v21];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __66__DBSceneWidgetViewController_listener_shouldAcceptNewConnection___block_invoke_342;
  v20[3] = &unk_278F01580;
  v20[4] = self;
  [v5 setInvalidationHandler:v20];
  [v5 resume];
  [(DBSceneWidgetViewController *)self setWidgetWindowServiceConnection:v5];

  [(DBSceneWidgetViewController *)self connectionReady];
  return 1;
}

void __66__DBSceneWidgetViewController_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __66__DBSceneWidgetViewController_listener_shouldAcceptNewConnection___block_invoke_cold_1();
  }
}

void __66__DBSceneWidgetViewController_listener_shouldAcceptNewConnection___block_invoke_342()
{
  v0 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __66__DBSceneWidgetViewController_listener_shouldAcceptNewConnection___block_invoke_342_cold_1();
  }
}

- (void)_addWidgetSceneViewControllerForApplication:(id)a3 scene:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(DBSceneWidgetViewController *)self isInvalidated])
  {
    v8 = DBLogForCategory(2uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v19 = 138543362;
      v20 = v10;
      _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Widget is invalidated, not creating widget scene.", &v19, 0xCu);
    }
  }

  else
  {
    v8 = [v6 appPolicy];
    if ([v8 launchUsingTemplateUI])
    {
      v11 = +[DBApplicationController sharedInstance];
      v12 = [v11 templateUIHostApplication];
    }

    else
    {
      v12 = 0;
    }

    v13 = [DBWidgetSceneHostViewController alloc];
    v14 = [(DBWidgetViewController *)self environment];
    v15 = [(DBSceneHostViewController *)v13 initWithScene:v7 application:v6 proxyApplication:v12 environment:v14];

    [(DBWidgetSceneHostViewController *)v15 setDelegate:self];
    v16 = [(DBSceneWidgetViewController *)self widgetWindowServiceListener];
    v17 = [v16 endpoint];
    v18 = [v17 _endpoint];
    [(DBWidgetSceneHostViewController *)v15 setWidgetWindowServiceEndpoint:v18];

    [(DBWidgetSceneHostViewController *)v15 setWidgetStyle:[(DBSceneWidgetViewController *)self widgetStyle]];
    [(DBSceneWidgetViewController *)self _installWidgetSceneViewController:v15];
    [(DBSceneWidgetViewController *)self setWidgetSceneViewController:v15];
  }
}

- (void)_installWidgetSceneViewController:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([(DBSceneWidgetViewController *)self isViewLoaded]& 1) != 0)
  {
    [(DBSceneWidgetViewController *)self addChildViewController:v4];
    v5 = [(DBWidgetViewController *)self contentView];
    v6 = [v4 view];
    [v5 insertSubview:v6 atIndex:0];

    [v4 didMoveToParentViewController:self];
    v7 = [v4 view];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = [v4 view];
    [v8 setAlpha:0.0];

    v9 = DBLogForCategory(2uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [(DBWidgetViewController *)self contentView];
      [v12 bounds];
      v13 = NSStringFromCGRect(v56);
      *buf = 138543618;
      v52 = v11;
      v53 = 2114;
      v54 = v13;
      _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Adding widget scene view controller, frame: %{public}@", buf, 0x16u);
    }

    v14 = [(DBWidgetViewController *)self contentView];
    [v14 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = [v4 view];
    [v23 setFrame:{v16, v18, v20, v22}];

    v40 = MEMORY[0x277CCAAD0];
    v49 = [v4 view];
    v47 = [v49 leadingAnchor];
    v48 = [(DBWidgetViewController *)self contentView];
    v46 = [v48 leadingAnchor];
    v45 = [v47 constraintEqualToAnchor:v46];
    v50[0] = v45;
    v44 = [v4 view];
    v42 = [v44 trailingAnchor];
    v43 = [(DBWidgetViewController *)self contentView];
    v41 = [v43 trailingAnchor];
    v39 = [v42 constraintEqualToAnchor:v41];
    v50[1] = v39;
    v38 = [v4 view];
    v36 = [v38 topAnchor];
    v37 = [(DBWidgetViewController *)self contentView];
    v24 = [v37 topAnchor];
    v25 = [v36 constraintEqualToAnchor:v24];
    v50[2] = v25;
    v26 = [v4 view];
    v27 = [v26 bottomAnchor];
    v28 = [(DBWidgetViewController *)self contentView];
    v29 = [v28 bottomAnchor];
    v30 = [v27 constraintEqualToAnchor:v29];
    v50[3] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:4];
    [v40 activateConstraints:v31];

    v32 = [(DBWidgetViewController *)self contentView];
    [v32 layoutIfNeeded];

    if ([(DBSceneWidgetViewController *)self isEnabled])
    {
      [v4 initializeSceneForeground:-[DBSceneWidgetViewController isForeground](self active:{"isForeground"), -[DBSceneWidgetViewController isActive](self, "isActive")}];
      [(DBSceneWidgetViewController *)self setWidgetSceneViewController:v4];
    }
  }

  else
  {
    v33 = DBLogForCategory(2uLL);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      *buf = 138543362;
      v52 = v35;
      _os_log_impl(&dword_248146000, v33, OS_LOG_TYPE_DEFAULT, "[%{public}@] Widget view is not loaded, not creating widget scene.", buf, 0xCu);
    }
  }
}

- (void)_removeWidgetSceneViewController
{
  v3 = [(DBSceneWidgetViewController *)self widgetSceneViewController];

  if (v3)
  {
    v4 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
    [v4 setDelegate:0];

    v5 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
    [v5 invalidate];

    v6 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
    [v6 willMoveToParentViewController:0];

    v7 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
    v8 = [v7 view];
    [v8 removeFromSuperview];

    v9 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
    [v9 removeFromParentViewController];

    [(DBSceneWidgetViewController *)self setWidgetSceneViewController:0];
  }
}

- (void)_handleTapGesture:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v12 = 138543362;
    v13 = v6;
    _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_INFO, "[%{public}@] Scene widget selected", &v12, 0xCu);
  }

  v7 = objc_alloc_init(DBActivationSettings);
  [(DBActivationSettings *)v7 setLaunchSource:5];
  v8 = [(DBSceneWidgetViewController *)self targetApplication];
  v9 = [DBApplicationLaunchInfo launchInfoForApplication:v8 withActivationSettings:v7];

  v10 = [(DBWidgetViewController *)self environment];
  v11 = [DBEvent eventWithType:4 context:v9];
  [v10 handleEvent:v11];
}

- (void)_animateLoadingViewRemovalIfNecessary
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
  v4 = [v3 sceneContentState];

  v5 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
  v6 = [v5 proxyApplication];

  if (v4 == 2 && v6)
  {
    if (![(DBSceneWidgetViewController *)self proxySceneContentReady])
    {
      goto LABEL_4;
    }
  }

  else if (v4 != 2)
  {
LABEL_4:
    v7 = DBLogForCategory(2uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromBOOL();
      v9 = NSStringFromBOOL();
      [(DBSceneWidgetViewController *)self proxySceneContentReady];
      v10 = NSStringFromBOOL();
      v11 = [(DBSceneWidgetViewController *)self loadingView];
      v21 = 138544386;
      v22 = self;
      v23 = 2114;
      v24 = v8;
      v25 = 2114;
      v26 = v9;
      v27 = 2114;
      v28 = v10;
      v29 = 2114;
      v30 = v11;
      _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Scene not ready yet. Content state ready: %{public}@, proxied: %{public}@, proxy scene content ready: %{public}@, loading view: %{public}@", &v21, 0x34u);
    }

    goto LABEL_15;
  }

  v12 = [(DBSceneWidgetViewController *)self loadingView];

  if (v12)
  {
    v13 = DBLogForCategory(2uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(DBSceneWidgetViewController *)self loadingView];
      v21 = 138543618;
      v22 = self;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_248146000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Loading view present, will attempt animating removal: %@", &v21, 0x16u);
    }

    v7 = [(DBSceneWidgetViewController *)self animationManager];
    [v7 runAnimationIfPossible:@"DBWidgetSceneSplashScreenAnimationIdentifier" client:self];
  }

  else
  {
    v15 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
    v16 = [v15 view];
    [v16 alpha];
    v18 = v17;

    if (v18 >= 1.0)
    {
      return;
    }

    v19 = DBLogForCategory(2uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138543362;
      v22 = self;
      _os_log_impl(&dword_248146000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Loading view NOT present, will set alpha on widgetSceneViewController", &v21, 0xCu);
    }

    v7 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
    v20 = [v7 view];
    [v20 setAlpha:1.0];
  }

LABEL_15:
}

- (void)_setTouchActionDisabled:(BOOL)a3 forRequester:(id)a4
{
  v4 = a3;
  v9 = a4;
  if (v4)
  {
    if (!self->_touchActionDisabledRequesters)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      touchActionDisabledRequesters = self->_touchActionDisabledRequesters;
      self->_touchActionDisabledRequesters = v6;
    }

    v8 = [(DBSceneWidgetViewController *)self touchActionDisabledRequesters];
    [v8 addObject:v9];
  }

  else
  {
    v8 = [(DBSceneWidgetViewController *)self touchActionDisabledRequesters];
    [v8 removeObject:v9];
  }

  [(DBSceneWidgetViewController *)self _updateTouchActionDisabled];
}

- (void)_updateTouchActionDisabled
{
  v3 = [(DBSceneWidgetViewController *)self touchActionDisabledRequesters];
  v4 = [v3 count] == 0;

  v5 = [(DBSceneWidgetViewController *)self touchTapGestureRecognizer];
  [v5 setEnabled:v4];

  v7 = [(DBSceneWidgetViewController *)self touchActionView];
  v6 = [v7 layer];
  [v6 setHitTestsAsOpaque:v4];
}

- (void)setWidgetContextId:(unsigned int)a3
{
  if (self->_widgetContextId != a3)
  {
    self->_widgetContextId = a3;
    v4 = [(DBSceneWidgetViewController *)self touchDeliveryPolicyAssertion];
    [v4 invalidate];

    [(DBSceneWidgetViewController *)self setTouchDeliveryPolicyAssertion:0];
    v5 = objc_alloc_init(MEMORY[0x277CF0798]);
    [(DBSceneWidgetViewController *)self setTouchDeliveryPolicyAssertion:v5];

    v6 = MEMORY[0x277CF0790];
    widgetContextId = self->_widgetContextId;
    v8 = [(DBSceneWidgetViewController *)self view];
    v9 = [v8 window];
    v10 = [v6 policyRequiringSharingOfTouchesDeliveredToChildContextId:widgetContextId withHostContextId:{objc_msgSend(v9, "_contextId")}];

    v11 = [(DBSceneWidgetViewController *)self touchDeliveryPolicyAssertion];
    v12 = [v11 endpoint];
    [v10 setAssertionEndpoint:v12];

    v13 = BKSTouchDeliveryPolicyServerGetProxyWithErrorHandler();
    v14 = v13;
    if (v13)
    {
      [v13 ipc_addPolicy:v10];
    }
  }
}

void __50__DBSceneWidgetViewController_setWidgetContextId___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __50__DBSceneWidgetViewController_setWidgetContextId___block_invoke_cold_1();
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = DBSceneWidgetViewController;
  v6 = a4;
  [(DBWidgetViewController *)&v9 touchesBegan:a3 withEvent:v6];
  [v6 _initialTouchTimestamp];
  v8 = v7;

  [(DBSceneWidgetViewController *)self setInitialTouchTimestamp:v8];
}

- (void)_scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];

  v6 = v5;
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v7 = [(DBSceneWidgetViewController *)self view];
  v8 = [v9 containsView:v7];

  if (v8)
  {
    [(DBSceneWidgetViewController *)self _beginTouchCancelation];
  }
}

- (void)_scrollViewDidEndDragging:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];

  v6 = v5;
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v7 = [(DBSceneWidgetViewController *)self view];
  v8 = [v9 containsView:v7];

  if (v8)
  {
    [(DBSceneWidgetViewController *)self _endTouchCancelation];
  }
}

- (void)_beginTouchCancelation
{
  v3 = BKSTouchDeliveryPolicyServerGetProxyWithErrorHandler();
  if (v3)
  {
    v11 = v3;
    [(DBSceneWidgetViewController *)self initialTouchTimestamp];
    v3 = v11;
    if (v4 > 0.0)
    {
      v5 = objc_alloc_init(MEMORY[0x277CF0798]);
      v6 = MEMORY[0x277CF0790];
      v7 = [(DBSceneWidgetViewController *)self widgetContextId];
      [(DBSceneWidgetViewController *)self initialTouchTimestamp];
      v8 = [v6 policyCancelingTouchesDeliveredToContextId:v7 withInitialTouchTimestamp:?];
      v9 = [v5 endpoint];
      [v8 setAssertionEndpoint:v9];

      [v11 ipc_addPolicy:v8];
      cancelTouchesInIsolatedViewAssertion = self->_cancelTouchesInIsolatedViewAssertion;
      self->_cancelTouchesInIsolatedViewAssertion = v5;

      v3 = v11;
    }
  }
}

void __53__DBSceneWidgetViewController__beginTouchCancelation__block_invoke()
{
  v0 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __53__DBSceneWidgetViewController__beginTouchCancelation__block_invoke_cold_1(v0);
  }
}

- (void)_endTouchCancelation
{
  v3 = [(DBSceneWidgetViewController *)self cancelTouchesInIsolatedViewAssertion];
  [v3 invalidate];

  cancelTouchesInIsolatedViewAssertion = self->_cancelTouchesInIsolatedViewAssertion;
  self->_cancelTouchesInIsolatedViewAssertion = 0;
}

- (DBWidgetSizeManaging)widgetSizeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_widgetSizeManager);

  return WeakRetained;
}

void __66__DBSceneWidgetViewController_listener_shouldAcceptNewConnection___block_invoke_cold_1()
{
  v0 = objc_opt_class();
  v6 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __66__DBSceneWidgetViewController_listener_shouldAcceptNewConnection___block_invoke_342_cold_1()
{
  v0 = objc_opt_class();
  v6 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __50__DBSceneWidgetViewController_setWidgetContextId___block_invoke_cold_1()
{
  v0 = objc_opt_class();
  v6 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

@end