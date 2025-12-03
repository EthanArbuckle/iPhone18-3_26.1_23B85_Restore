@interface DBSceneWidgetViewController
- (BOOL)entireWidgetFocusable;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (DBSceneWidgetViewController)initWithEnvironment:(id)environment animationManager:(id)manager widgetSizeManager:(id)sizeManager;
- (DBWidgetSizeManaging)widgetSizeManager;
- (id)getIconPlaceholderLayerView;
- (id)linearFocusItems;
- (id)loadingIconLayer;
- (id)preferredFocusEnvironments;
- (void)_addWidgetSceneViewControllerForApplication:(id)application scene:(id)scene;
- (void)_animateLoadingViewRemovalIfNecessary;
- (void)_beginTouchCancelation;
- (void)_endTouchCancelation;
- (void)_handleTapGesture:(id)gesture;
- (void)_installWidgetSceneViewController:(id)controller;
- (void)_removeWidgetSceneViewController;
- (void)_scrollViewDidEndDragging:(id)dragging;
- (void)_scrollViewWillBeginDragging:(id)dragging;
- (void)_setTouchActionDisabled:(BOOL)disabled forRequester:(id)requester;
- (void)_updateLoadingIconLayer;
- (void)_updateTouchActionDisabled;
- (void)clientSetContentReady;
- (void)clientSetFocusableItems:(id)items;
- (void)clientSetWantsLargeSize:(BOOL)size fenceHandle:(id)handle animationSettings:(id)settings;
- (void)connectionReady;
- (void)focusableItem:(id)item didChangeFocused:(BOOL)focused;
- (void)focusableItem:(id)item didChangePressed:(BOOL)pressed;
- (void)invalidate;
- (void)prepareLoadingViewAnimated:(BOOL)animated;
- (void)replaceLoadingViewWithView:(id)view;
- (void)selectedFocusableItem:(id)item;
- (void)setActive:(BOOL)active;
- (void)setAvailableWidgetSizes:(id)sizes;
- (void)setEnabled:(BOOL)enabled;
- (void)setForeground:(BOOL)foreground;
- (void)setScene:(id)scene application:(id)application;
- (void)setWantsLargeSize:(BOOL)size;
- (void)setWidgetContextId:(unsigned int)id;
- (void)setWidgetStyle:(unint64_t)style;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)updateAppearanceForWallpaper;
- (void)updateContextId:(unsigned int)id;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)widgetSceneHostViewController:(id)controller sceneContentStateDidUpdate:(int64_t)update;
- (void)widgetSceneHostViewControllerSceneWillDeactivate:(id)deactivate;
@end

@implementation DBSceneWidgetViewController

- (DBSceneWidgetViewController)initWithEnvironment:(id)environment animationManager:(id)manager widgetSizeManager:(id)sizeManager
{
  v24[2] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  sizeManagerCopy = sizeManager;
  v23.receiver = self;
  v23.super_class = DBSceneWidgetViewController;
  v11 = [(DBWidgetViewController *)&v23 initWithEnvironment:environment];
  v12 = v11;
  if (v11)
  {
    v11->_active = 1;
    objc_storeStrong(&v11->_animationManager, manager);
    objc_storeWeak(&v12->_widgetSizeManager, sizeManagerCopy);
    anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
    widgetWindowServiceListener = v12->_widgetWindowServiceListener;
    v12->_widgetWindowServiceListener = anonymousListener;

    [(NSXPCListener *)v12->_widgetWindowServiceListener setDelegate:v12];
    [(NSXPCListener *)v12->_widgetWindowServiceListener resume];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v12 selector:sel__scrollViewWillBeginDragging_ name:*MEMORY[0x277D77570] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v12 selector:sel__scrollViewDidEndDragging_ name:*MEMORY[0x277D77560] object:0];

    if (os_variant_has_internal_diagnostics())
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v12->_debugSnapshotLabelEnabled = [standardUserDefaults BOOLForKey:@"CAREnableSnapshotDebugLabel"];
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

- (void)setScene:(id)scene application:(id)application
{
  v16 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  objc_storeStrong(&self->_targetApplication, application);
  sceneCopy = scene;
  v9 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = 138543618;
    v13 = v11;
    v14 = 2114;
    v15 = applicationCopy;
    _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set target application: %{public}@", &v12, 0x16u);
  }

  [(DBSceneWidgetViewController *)self setProxySceneContentReady:0];
  [(DBSceneWidgetViewController *)self _removeWidgetSceneViewController];
  [(DBSceneWidgetViewController *)self _addWidgetSceneViewControllerForApplication:applicationCopy scene:sceneCopy];
}

- (void)setEnabled:(BOOL)enabled
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
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
    widgetSceneViewController = [(DBSceneWidgetViewController *)self widgetSceneViewController];
    v10 = widgetSceneViewController;
    if (enabled)
    {
      [widgetSceneViewController initializeSceneForeground:-[DBSceneWidgetViewController isForeground](self active:{"isForeground"), -[DBSceneWidgetViewController isActive](self, "isActive")}];
    }

    else
    {
      [widgetSceneViewController deactivateScene];
    }
  }
}

- (void)setForeground:(BOOL)foreground
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_foreground != foreground)
  {
    foregroundCopy = foreground;
    self->_foreground = foreground;
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
      widgetSceneViewController = [(DBSceneWidgetViewController *)self widgetSceneViewController];
      [widgetSceneViewController setForeground:foregroundCopy];
    }

    else
    {
      widgetSceneViewController = DBLogForCategory(2uLL);
      if (os_log_type_enabled(widgetSceneViewController, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = 138543362;
        v13 = v11;
        _os_log_impl(&dword_248146000, widgetSceneViewController, OS_LOG_TYPE_DEFAULT, "[%{public}@] is not enabled, skipping foreground update for scene view controller", &v12, 0xCu);
      }
    }
  }
}

- (void)setActive:(BOOL)active
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_active != active)
  {
    activeCopy = active;
    self->_active = active;
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

    widgetSceneViewController = [(DBSceneWidgetViewController *)self widgetSceneViewController];
    [widgetSceneViewController setActive:activeCopy];
  }
}

- (void)setWidgetStyle:(unint64_t)style
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_widgetStyle != style)
  {
    self->_widgetStyle = style;
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

    widgetSceneViewController = [(DBSceneWidgetViewController *)self widgetSceneViewController];
    [widgetSceneViewController setWidgetStyle:style];
  }
}

- (void)setAvailableWidgetSizes:(id)sizes
{
  sizesCopy = sizes;
  widgetSizeManager = [(DBSceneWidgetViewController *)self widgetSizeManager];

  if (widgetSizeManager && (BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_availableWidgetSizes, sizes);
    widgetWindowServiceConnection = [(DBSceneWidgetViewController *)self widgetWindowServiceConnection];
    remoteObjectProxy = [widgetWindowServiceConnection remoteObjectProxy];
    [remoteObjectProxy hostSetWidgetSizes:sizesCopy];
  }
}

- (void)prepareLoadingViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v80[3] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(DBWidgetViewController *)self contentView];
  [contentView addSubview:v4];

  targetApplication = [(DBSceneWidgetViewController *)self targetApplication];
  bundleIdentifier = [targetApplication bundleIdentifier];
  v8 = 0x277CCA000uLL;
  selfCopy = self;
  v75 = v4;
  if ([bundleIdentifier isEqualToString:@"com.apple.Maps"])
  {
    wantsBlurredMapBackground = [(DBSceneWidgetViewController *)self wantsBlurredMapBackground];

    if (wantsBlurredMapBackground)
    {
      v10 = objc_alloc_init(MEMORY[0x277D755E8]);
      [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
      v11 = MEMORY[0x277D755B8];
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
      contentView2 = [(DBWidgetViewController *)self contentView];
      traitCollection = [contentView2 traitCollection];
      v15 = [v11 imageNamed:@"MapsNavigationWidgetBackgroundImage" inBundle:v12 compatibleWithTraitCollection:traitCollection];
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
      layer = [v10 layer];
      v80[0] = v16;
      v80[1] = v19;
      v80[2] = v20;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:3];
      [layer setFilters:v23];

      v57 = MEMORY[0x277CCAAD0];
      topAnchor = [v4 topAnchor];
      topAnchor2 = [v10 topAnchor];
      v63 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v79[0] = v63;
      bottomAnchor = [v4 bottomAnchor];
      bottomAnchor2 = [v10 bottomAnchor];
      v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v79[1] = v24;
      leftAnchor = [v4 leftAnchor];
      leftAnchor2 = [v10 leftAnchor];
      v27 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      v79[2] = v27;
      rightAnchor = [v4 rightAnchor];
      rightAnchor2 = [v10 rightAnchor];
      v30 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
      v79[3] = v30;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:4];
      [v57 activateConstraints:v31];

      v4 = v75;
      self = selfCopy;

      v8 = 0x277CCA000;
    }
  }

  else
  {
  }

  getIconPlaceholderLayerView = [(DBSceneWidgetViewController *)self getIconPlaceholderLayerView];
  [getIconPlaceholderLayerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 addSubview:getIconPlaceholderLayerView];
  v51 = *(v8 + 2768);
  topAnchor3 = [v4 topAnchor];
  contentView3 = [(DBWidgetViewController *)self contentView];
  topAnchor4 = [contentView3 topAnchor];
  v64 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v78[0] = v64;
  bottomAnchor3 = [v4 bottomAnchor];
  contentView4 = [(DBWidgetViewController *)self contentView];
  bottomAnchor4 = [contentView4 bottomAnchor];
  v56 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v78[1] = v56;
  leftAnchor3 = [v4 leftAnchor];
  contentView5 = [(DBWidgetViewController *)self contentView];
  leftAnchor4 = [contentView5 leftAnchor];
  v52 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
  v78[2] = v52;
  rightAnchor3 = [v4 rightAnchor];
  contentView6 = [(DBWidgetViewController *)self contentView];
  rightAnchor4 = [contentView6 rightAnchor];
  v47 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
  v78[3] = v47;
  centerXAnchor = [getIconPlaceholderLayerView centerXAnchor];
  contentView7 = [(DBWidgetViewController *)self contentView];
  centerXAnchor2 = [contentView7 centerXAnchor];
  v33 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v78[4] = v33;
  centerYAnchor = [getIconPlaceholderLayerView centerYAnchor];
  contentView8 = [(DBWidgetViewController *)self contentView];
  centerYAnchor2 = [contentView8 centerYAnchor];
  v37 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v78[5] = v37;
  widthAnchor = [getIconPlaceholderLayerView widthAnchor];
  v39 = [widthAnchor constraintEqualToConstant:40.0];
  v78[6] = v39;
  v72 = getIconPlaceholderLayerView;
  heightAnchor = [getIconPlaceholderLayerView heightAnchor];
  v41 = [heightAnchor constraintEqualToConstant:40.0];
  v78[7] = v41;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:8];
  [v51 activateConstraints:v42];

  [(DBSceneWidgetViewController *)selfCopy replaceLoadingViewWithView:v75];
  if (animatedCopy)
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
  environment = [(DBWidgetViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];
  wallpaperPreferences = [environmentConfiguration wallpaperPreferences];
  currentWallpaper = [wallpaperPreferences currentWallpaper];

  traits = [currentWallpaper traits];
  supportsDashboardPlatterMaterials = [traits supportsDashboardPlatterMaterials];

  widgetWindowServiceConnection = [(DBSceneWidgetViewController *)self widgetWindowServiceConnection];
  remoteObjectProxy = [widgetWindowServiceConnection remoteObjectProxy];
  [remoteObjectProxy hostSetUseSystemPrimaryFocusColor:supportsDashboardPlatterMaterials];
}

- (void)replaceLoadingViewWithView:(id)view
{
  v18 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v5 = DBLogForCategory(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543618;
    v15 = v7;
    v16 = 2112;
    v17 = viewCopy;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting loading view: %@", buf, 0x16u);
  }

  loadingView = [(DBSceneWidgetViewController *)self loadingView];
  [loadingView removeFromSuperview];

  [(DBSceneWidgetViewController *)self setLoadingView:viewCopy];
  objc_initWeak(buf, self);
  animationManager = [(DBSceneWidgetViewController *)self animationManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__DBSceneWidgetViewController_replaceLoadingViewWithView___block_invoke;
  v11[3] = &unk_278F02070;
  objc_copyWeak(&v13, buf);
  v10 = viewCopy;
  v12 = v10;
  [animationManager registerAnimation:@"DBWidgetSceneSplashScreenAnimationIdentifier" client:self animation:v11];

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
  targetApplication = [(DBSceneWidgetViewController *)self targetApplication];
  bundleIdentifier = [targetApplication bundleIdentifier];

  traitCollection = [(DBSceneWidgetViewController *)self traitCollection];
  [traitCollection displayScale];
  [_TtC9DashBoard11DBIconImage iconImageInfoForScale:?];
  traitCollection2 = [(DBSceneWidgetViewController *)self traitCollection];
  v7 = SBHGetApplicationIconLayerWithTraitCollection();

  return v7;
}

- (id)getIconPlaceholderLayerView
{
  iconPlaceholderLayerView = [(DBSceneWidgetViewController *)self iconPlaceholderLayerView];

  if (!iconPlaceholderLayerView)
  {
    v4 = objc_alloc_init(_TtC9DashBoard15DBIconLayerView);
    [(DBSceneWidgetViewController *)self setIconPlaceholderLayerView:v4];
  }

  return [(DBSceneWidgetViewController *)self iconPlaceholderLayerView];
}

- (void)_updateLoadingIconLayer
{
  iconPlaceholderLayerView = [(DBSceneWidgetViewController *)self iconPlaceholderLayerView];

  if (iconPlaceholderLayerView)
  {
    [(DBSceneWidgetViewController *)self updateTraitsIfNeeded];
    iconPlaceholderLayerView2 = [(DBSceneWidgetViewController *)self iconPlaceholderLayerView];
    loadingIconLayer = [(DBSceneWidgetViewController *)self loadingIconLayer];
    [iconPlaceholderLayerView2 setIconLayer:loadingIconLayer animated:1];
  }
}

- (void)viewDidLoad
{
  v55[4] = *MEMORY[0x277D85DE8];
  v53.receiver = self;
  v53.super_class = DBSceneWidgetViewController;
  [(DBSceneWidgetViewController *)&v53 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x277D754F8]);
  view = [(DBSceneWidgetViewController *)self view];
  [view addLayoutGuide:v3];

  v36 = MEMORY[0x277CCAAD0];
  topAnchor = [v3 topAnchor];
  view2 = [(DBSceneWidgetViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  v44 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v55[0] = v44;
  bottomAnchor = [v3 bottomAnchor];
  view3 = [(DBSceneWidgetViewController *)self view];
  bottomAnchor2 = [view3 bottomAnchor];
  v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v55[1] = v34;
  leftAnchor = [v3 leftAnchor];
  view4 = [(DBSceneWidgetViewController *)self view];
  leftAnchor2 = [view4 leftAnchor];
  v8 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v55[2] = v8;
  v52 = v3;
  rightAnchor = [v3 rightAnchor];
  view5 = [(DBSceneWidgetViewController *)self view];
  rightAnchor2 = [view5 rightAnchor];
  v12 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v55[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:4];
  [v36 activateConstraints:v13];

  if ([(DBSceneWidgetViewController *)self shouldInstallTapGestureRecognizers])
  {
    v14 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [v14 layer];
    [layer setHitTestsAsOpaque:1];

    view6 = [(DBSceneWidgetViewController *)self view];
    [view6 addSubview:v14];

    [(DBSceneWidgetViewController *)self setTouchActionView:v14];
    v37 = MEMORY[0x277CCAAD0];
    topAnchor3 = [v14 topAnchor];
    view7 = [(DBSceneWidgetViewController *)self view];
    topAnchor4 = [view7 topAnchor];
    v45 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v54[0] = v45;
    bottomAnchor3 = [v14 bottomAnchor];
    view8 = [(DBSceneWidgetViewController *)self view];
    bottomAnchor4 = [view8 bottomAnchor];
    v35 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v54[1] = v35;
    leftAnchor3 = [v14 leftAnchor];
    view9 = [(DBSceneWidgetViewController *)self view];
    leftAnchor4 = [view9 leftAnchor];
    v19 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
    v54[2] = v19;
    rightAnchor3 = [v14 rightAnchor];
    view10 = [(DBSceneWidgetViewController *)self view];
    rightAnchor4 = [view10 rightAnchor];
    v23 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
    v54[3] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:4];
    [v37 activateConstraints:v24];

    v25 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleTapGesture_];
    [v25 setAllowedTouchTypes:&unk_285AA49A0];
    [v14 addGestureRecognizer:v25];
    [(DBSceneWidgetViewController *)self setTouchTapGestureRecognizer:v25];
    v26 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleTapGesture_];
    [v26 setAllowedPressTypes:&unk_285AA49B8];
    view11 = [(DBSceneWidgetViewController *)self view];
    [view11 addGestureRecognizer:v26];

    [(DBSceneWidgetViewController *)self setSelectTapGestureRecognizer:v26];
  }

  else
  {
    [(DBSceneWidgetViewController *)self _setTouchActionDisabled:0 forRequester:@"FocusItems"];
  }

  widgetSceneViewController = [(DBSceneWidgetViewController *)self widgetSceneViewController];
  if (widgetSceneViewController)
  {
    v29 = widgetSceneViewController;
    widgetSceneViewController2 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
    parentViewController = [widgetSceneViewController2 parentViewController];

    if (!parentViewController)
    {
      widgetSceneViewController3 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
      [(DBSceneWidgetViewController *)self _installWidgetSceneViewController:widgetSceneViewController3];
      goto LABEL_9;
    }
  }

  if ([(DBSceneWidgetViewController *)self isEnabled])
  {
    widgetSceneViewController3 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
    [widgetSceneViewController3 initializeSceneForeground:-[DBSceneWidgetViewController isForeground](self active:{"isForeground"), -[DBSceneWidgetViewController isActive](self, "isActive")}];
LABEL_9:
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = DBSceneWidgetViewController;
  [(DBSceneWidgetViewController *)&v8 viewWillAppear:appear];
  widgetSceneViewController = [(DBSceneWidgetViewController *)self widgetSceneViewController];
  if (!widgetSceneViewController)
  {
    goto LABEL_5;
  }

  v5 = widgetSceneViewController;
  widgetSceneViewController2 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
  if ([widgetSceneViewController2 sceneContentState] == 2)
  {

    return;
  }

  loadingView = [(DBSceneWidgetViewController *)self loadingView];

  if (!loadingView)
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

  pendingWidgetResizeFenceHandle = [(DBSceneWidgetViewController *)self pendingWidgetResizeFenceHandle];
  pendingWidgetResizeAnimationSettings = [(DBSceneWidgetViewController *)self pendingWidgetResizeAnimationSettings];
  [(DBSceneWidgetViewController *)self setPendingWidgetResizeFenceHandle:0];
  [(DBSceneWidgetViewController *)self setPendingWidgetResizeAnimationSettings:0];
  widgetSceneViewController = [(DBSceneWidgetViewController *)self widgetSceneViewController];
  view = [(DBSceneWidgetViewController *)self view];
  [view frame];
  [widgetSceneViewController updateSceneFrame:pendingWidgetResizeAnimationSettings animationSettings:pendingWidgetResizeFenceHandle fenceHandle:?];
}

- (id)preferredFocusEnvironments
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  focusableItemViews = [(DBSceneWidgetViewController *)self focusableItemViews];
  v5 = [focusableItemViews count];

  if (v5)
  {
    focusableItemViews2 = [(DBSceneWidgetViewController *)self focusableItemViews];
    [v3 addObjectsFromArray:focusableItemViews2];
  }

  [v3 addObject:self];

  return v3;
}

- (BOOL)entireWidgetFocusable
{
  focusableItemViews = [(DBSceneWidgetViewController *)self focusableItemViews];
  v3 = [focusableItemViews count] == 0;

  return v3;
}

- (id)linearFocusItems
{
  v8[1] = *MEMORY[0x277D85DE8];
  focusableItemViews = [(DBSceneWidgetViewController *)self focusableItemViews];
  v4 = [focusableItemViews count];

  if (v4)
  {
    focusableItemViews2 = [(DBSceneWidgetViewController *)self focusableItemViews];
  }

  else
  {
    view = [(DBSceneWidgetViewController *)self view];
    v8[0] = view;
    focusableItemViews2 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  return focusableItemViews2;
}

- (void)updateAppearanceForWallpaper
{
  v11.receiver = self;
  v11.super_class = DBSceneWidgetViewController;
  [(DBWidgetViewController *)&v11 updateAppearanceForWallpaper];
  environment = [(DBWidgetViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];
  wallpaperPreferences = [environmentConfiguration wallpaperPreferences];
  currentWallpaper = [wallpaperPreferences currentWallpaper];

  traits = [currentWallpaper traits];
  supportsDashboardPlatterMaterials = [traits supportsDashboardPlatterMaterials];

  widgetWindowServiceConnection = [(DBSceneWidgetViewController *)self widgetWindowServiceConnection];
  remoteObjectProxy = [widgetWindowServiceConnection remoteObjectProxy];
  [remoteObjectProxy hostSetUseSystemPrimaryFocusColor:supportsDashboardPlatterMaterials];
}

- (void)setWantsLargeSize:(BOOL)size
{
  sizeCopy = size;
  if ([(DBWidgetViewController *)self wantsLargeSize]!= size)
  {
    v6.receiver = self;
    v6.super_class = DBSceneWidgetViewController;
    [(DBWidgetViewController *)&v6 setWantsLargeSize:sizeCopy];
    widgetSizeManager = [(DBSceneWidgetViewController *)self widgetSizeManager];
    [widgetSizeManager requestSizeChange];
  }
}

- (void)invalidate
{
  [(DBSceneWidgetViewController *)self setInvalidated:1];
  widgetSceneViewController = [(DBSceneWidgetViewController *)self widgetSceneViewController];
  [widgetSceneViewController invalidate];

  widgetWindowServiceListener = [(DBSceneWidgetViewController *)self widgetWindowServiceListener];
  [widgetWindowServiceListener invalidate];

  [(DBSceneWidgetViewController *)self setWidgetWindowServiceListener:0];
}

- (void)updateContextId:(unsigned int)id
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
    idCopy = id;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_INFO, "[%{public}@ Context id updated: %x", buf, 0x12u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__DBSceneWidgetViewController_updateContextId___block_invoke;
  v8[3] = &unk_278F02F18;
  v8[4] = self;
  idCopy2 = id;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

- (void)clientSetFocusableItems:(id)items
{
  itemsCopy = items;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__DBSceneWidgetViewController_clientSetFocusableItems___block_invoke;
  v6[3] = &unk_278F014B8;
  v6[4] = self;
  v7 = itemsCopy;
  v5 = itemsCopy;
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

- (void)clientSetWantsLargeSize:(BOOL)size fenceHandle:(id)handle animationSettings:(id)settings
{
  handleCopy = handle;
  settingsCopy = settings;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__DBSceneWidgetViewController_clientSetWantsLargeSize_fenceHandle_animationSettings___block_invoke;
  v12[3] = &unk_278F02FB0;
  v12[4] = self;
  v13 = handleCopy;
  v14 = settingsCopy;
  sizeCopy = size;
  v10 = settingsCopy;
  v11 = handleCopy;
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

- (void)focusableItem:(id)item didChangePressed:(BOOL)pressed
{
  pressedCopy = pressed;
  itemCopy = item;
  widgetWindowServiceConnection = [(DBSceneWidgetViewController *)self widgetWindowServiceConnection];
  remoteObjectProxy = [widgetWindowServiceConnection remoteObjectProxy];
  [remoteObjectProxy hostFocusableItem:itemCopy pressed:pressedCopy];
}

- (void)focusableItem:(id)item didChangeFocused:(BOOL)focused
{
  focusedCopy = focused;
  itemCopy = item;
  widgetWindowServiceConnection = [(DBSceneWidgetViewController *)self widgetWindowServiceConnection];
  remoteObjectProxy = [widgetWindowServiceConnection remoteObjectProxy];
  [remoteObjectProxy hostFocusableItem:itemCopy focused:focusedCopy];
}

- (void)selectedFocusableItem:(id)item
{
  itemCopy = item;
  widgetWindowServiceConnection = [(DBSceneWidgetViewController *)self widgetWindowServiceConnection];
  remoteObjectProxy = [widgetWindowServiceConnection remoteObjectProxy];
  [remoteObjectProxy hostSelectedFocusableItem:itemCopy];
}

- (void)widgetSceneHostViewController:(id)controller sceneContentStateDidUpdate:(int64_t)update
{
  v33 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  widgetSceneViewController = [(DBSceneWidgetViewController *)self widgetSceneViewController];

  if (widgetSceneViewController != controllerCopy)
  {
    v8 = DBLogForCategory(2uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v29 = 138543362;
      selfCopy2 = v10;
      _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring delegate call from stale widget scene host view controller", &v29, 0xCu);
    }

LABEL_4:

    return;
  }

  v11 = DBLogForCategory(2uLL);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (update == 2)
  {
    if (v12)
    {
      v29 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Widget scene content ready", &v29, 0xCu);
    }

    [(DBSceneWidgetViewController *)self _animateLoadingViewRemovalIfNecessary];
  }

  else
  {
    if (v12)
    {
      v29 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Widget scene content not ready", &v29, 0xCu);
    }

    loadingView = [(DBSceneWidgetViewController *)self loadingView];

    if (!loadingView)
    {
      v14 = DBLogForCategory(2uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v29 = 138543362;
        selfCopy2 = v16;
        _os_log_impl(&dword_248146000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Taking snapshot", &v29, 0xCu);
      }

      contentView = [(DBWidgetViewController *)self contentView];
      v8 = [contentView snapshotViewAfterScreenUpdates:0];

      contentView2 = [(DBWidgetViewController *)self contentView];
      [contentView2 addSubview:v8];

      [(DBSceneWidgetViewController *)self replaceLoadingViewWithView:v8];
      if ([(DBSceneWidgetViewController *)self debugSnapshotLabelEnabled])
      {
        v19 = DBLogForCategory(2uLL);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          v29 = 138543362;
          selfCopy2 = v21;
          _os_log_impl(&dword_248146000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Displaying snapshot debug label", &v29, 0xCu);
        }

        v22 = objc_alloc_init(MEMORY[0x277D756B8]);
        [v22 setText:@"Snapshot placeholder..."];
        redColor = [MEMORY[0x277D75348] redColor];
        [v22 setTextColor:redColor];

        v24 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
        [v22 setFont:v24];

        [v22 sizeToFit];
        loadingView2 = [(DBSceneWidgetViewController *)self loadingView];
        [loadingView2 addSubview:v22];
      }

      v26 = DBLogForCategory(2uLL);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        v29 = 138543618;
        selfCopy2 = v28;
        v31 = 2112;
        v32 = v8;
        _os_log_impl(&dword_248146000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] Using snapshot view: %@", &v29, 0x16u);
      }

      goto LABEL_4;
    }
  }
}

- (void)widgetSceneHostViewControllerSceneWillDeactivate:(id)deactivate
{
  v23 = *MEMORY[0x277D85DE8];
  deactivateCopy = deactivate;
  widgetSceneViewController = [(DBSceneWidgetViewController *)self widgetSceneViewController];

  if (widgetSceneViewController != deactivateCopy)
  {
    view2 = DBLogForCategory(2uLL);
    if (os_log_type_enabled(view2, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v19 = 138543362;
      v20 = v8;
      _os_log_impl(&dword_248146000, view2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring delegate call from stale widget scene host view controller", &v19, 0xCu);
    }

    goto LABEL_4;
  }

  application = [deactivateCopy application];
  targetApplication = [(DBSceneWidgetViewController *)self targetApplication];
  v11 = [application isEqual:targetApplication];

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
  widgetSceneViewController2 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
  view = [widgetSceneViewController2 view];
  [view setAlpha:0.0];

  [(DBSceneWidgetViewController *)self clientSetFocusableItems:MEMORY[0x277CBEBF8]];
  if (![(DBSceneWidgetViewController *)self isInvalidated]&& ((v11 ^ 1) & 1) == 0)
  {
    loadingView = [(DBSceneWidgetViewController *)self loadingView];

    if (!loadingView)
    {
      view2 = [(DBSceneWidgetViewController *)self view];
      [(DBSceneWidgetViewController *)self prepareLoadingViewAnimated:[view2 isHidden]^ 1];
LABEL_4:
    }
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v25 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  widgetWindowServiceConnection = [(DBSceneWidgetViewController *)self widgetWindowServiceConnection];

  if (widgetWindowServiceConnection)
  {
    widgetWindowServiceConnection2 = [(DBSceneWidgetViewController *)self widgetWindowServiceConnection];
    [widgetWindowServiceConnection2 invalidate];

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

  [connectionCopy setExportedInterface:v11];
  [connectionCopy setExportedObject:self];
  v15 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285B71CE8];
  v16 = MEMORY[0x277CBEB98];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v18 = [v16 setWithArray:v17];
  [v15 setClasses:v18 forSelector:sel_hostSetWidgetSizes_ argumentIndex:0 ofReply:0];

  [connectionCopy setRemoteObjectInterface:v15];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __66__DBSceneWidgetViewController_listener_shouldAcceptNewConnection___block_invoke;
  v21[3] = &unk_278F01580;
  v21[4] = self;
  [connectionCopy setInterruptionHandler:v21];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __66__DBSceneWidgetViewController_listener_shouldAcceptNewConnection___block_invoke_342;
  v20[3] = &unk_278F01580;
  v20[4] = self;
  [connectionCopy setInvalidationHandler:v20];
  [connectionCopy resume];
  [(DBSceneWidgetViewController *)self setWidgetWindowServiceConnection:connectionCopy];

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

- (void)_addWidgetSceneViewControllerForApplication:(id)application scene:(id)scene
{
  v21 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  sceneCopy = scene;
  if ([(DBSceneWidgetViewController *)self isInvalidated])
  {
    appPolicy = DBLogForCategory(2uLL);
    if (os_log_type_enabled(appPolicy, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v19 = 138543362;
      v20 = v10;
      _os_log_impl(&dword_248146000, appPolicy, OS_LOG_TYPE_DEFAULT, "[%{public}@] Widget is invalidated, not creating widget scene.", &v19, 0xCu);
    }
  }

  else
  {
    appPolicy = [applicationCopy appPolicy];
    if ([appPolicy launchUsingTemplateUI])
    {
      v11 = +[DBApplicationController sharedInstance];
      templateUIHostApplication = [v11 templateUIHostApplication];
    }

    else
    {
      templateUIHostApplication = 0;
    }

    v13 = [DBWidgetSceneHostViewController alloc];
    environment = [(DBWidgetViewController *)self environment];
    v15 = [(DBSceneHostViewController *)v13 initWithScene:sceneCopy application:applicationCopy proxyApplication:templateUIHostApplication environment:environment];

    [(DBWidgetSceneHostViewController *)v15 setDelegate:self];
    widgetWindowServiceListener = [(DBSceneWidgetViewController *)self widgetWindowServiceListener];
    endpoint = [widgetWindowServiceListener endpoint];
    _endpoint = [endpoint _endpoint];
    [(DBWidgetSceneHostViewController *)v15 setWidgetWindowServiceEndpoint:_endpoint];

    [(DBWidgetSceneHostViewController *)v15 setWidgetStyle:[(DBSceneWidgetViewController *)self widgetStyle]];
    [(DBSceneWidgetViewController *)self _installWidgetSceneViewController:v15];
    [(DBSceneWidgetViewController *)self setWidgetSceneViewController:v15];
  }
}

- (void)_installWidgetSceneViewController:(id)controller
{
  v55 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if (([(DBSceneWidgetViewController *)self isViewLoaded]& 1) != 0)
  {
    [(DBSceneWidgetViewController *)self addChildViewController:controllerCopy];
    contentView = [(DBWidgetViewController *)self contentView];
    view = [controllerCopy view];
    [contentView insertSubview:view atIndex:0];

    [controllerCopy didMoveToParentViewController:self];
    view2 = [controllerCopy view];
    [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

    view3 = [controllerCopy view];
    [view3 setAlpha:0.0];

    v9 = DBLogForCategory(2uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      contentView2 = [(DBWidgetViewController *)self contentView];
      [contentView2 bounds];
      v13 = NSStringFromCGRect(v56);
      *buf = 138543618;
      v52 = v11;
      v53 = 2114;
      v54 = v13;
      _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Adding widget scene view controller, frame: %{public}@", buf, 0x16u);
    }

    contentView3 = [(DBWidgetViewController *)self contentView];
    [contentView3 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    view4 = [controllerCopy view];
    [view4 setFrame:{v16, v18, v20, v22}];

    v40 = MEMORY[0x277CCAAD0];
    view5 = [controllerCopy view];
    leadingAnchor = [view5 leadingAnchor];
    contentView4 = [(DBWidgetViewController *)self contentView];
    leadingAnchor2 = [contentView4 leadingAnchor];
    v45 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v50[0] = v45;
    view6 = [controllerCopy view];
    trailingAnchor = [view6 trailingAnchor];
    contentView5 = [(DBWidgetViewController *)self contentView];
    trailingAnchor2 = [contentView5 trailingAnchor];
    v39 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v50[1] = v39;
    view7 = [controllerCopy view];
    topAnchor = [view7 topAnchor];
    contentView6 = [(DBWidgetViewController *)self contentView];
    topAnchor2 = [contentView6 topAnchor];
    v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v50[2] = v25;
    view8 = [controllerCopy view];
    bottomAnchor = [view8 bottomAnchor];
    contentView7 = [(DBWidgetViewController *)self contentView];
    bottomAnchor2 = [contentView7 bottomAnchor];
    v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v50[3] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:4];
    [v40 activateConstraints:v31];

    contentView8 = [(DBWidgetViewController *)self contentView];
    [contentView8 layoutIfNeeded];

    if ([(DBSceneWidgetViewController *)self isEnabled])
    {
      [controllerCopy initializeSceneForeground:-[DBSceneWidgetViewController isForeground](self active:{"isForeground"), -[DBSceneWidgetViewController isActive](self, "isActive")}];
      [(DBSceneWidgetViewController *)self setWidgetSceneViewController:controllerCopy];
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
  widgetSceneViewController = [(DBSceneWidgetViewController *)self widgetSceneViewController];

  if (widgetSceneViewController)
  {
    widgetSceneViewController2 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
    [widgetSceneViewController2 setDelegate:0];

    widgetSceneViewController3 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
    [widgetSceneViewController3 invalidate];

    widgetSceneViewController4 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
    [widgetSceneViewController4 willMoveToParentViewController:0];

    widgetSceneViewController5 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
    view = [widgetSceneViewController5 view];
    [view removeFromSuperview];

    widgetSceneViewController6 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
    [widgetSceneViewController6 removeFromParentViewController];

    [(DBSceneWidgetViewController *)self setWidgetSceneViewController:0];
  }
}

- (void)_handleTapGesture:(id)gesture
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
  targetApplication = [(DBSceneWidgetViewController *)self targetApplication];
  v9 = [DBApplicationLaunchInfo launchInfoForApplication:targetApplication withActivationSettings:v7];

  environment = [(DBWidgetViewController *)self environment];
  v11 = [DBEvent eventWithType:4 context:v9];
  [environment handleEvent:v11];
}

- (void)_animateLoadingViewRemovalIfNecessary
{
  v31 = *MEMORY[0x277D85DE8];
  widgetSceneViewController = [(DBSceneWidgetViewController *)self widgetSceneViewController];
  sceneContentState = [widgetSceneViewController sceneContentState];

  widgetSceneViewController2 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
  proxyApplication = [widgetSceneViewController2 proxyApplication];

  if (sceneContentState == 2 && proxyApplication)
  {
    if (![(DBSceneWidgetViewController *)self proxySceneContentReady])
    {
      goto LABEL_4;
    }
  }

  else if (sceneContentState != 2)
  {
LABEL_4:
    animationManager = DBLogForCategory(2uLL);
    if (os_log_type_enabled(animationManager, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromBOOL();
      v9 = NSStringFromBOOL();
      [(DBSceneWidgetViewController *)self proxySceneContentReady];
      v10 = NSStringFromBOOL();
      loadingView = [(DBSceneWidgetViewController *)self loadingView];
      v21 = 138544386;
      selfCopy3 = self;
      v23 = 2114;
      v24 = v8;
      v25 = 2114;
      v26 = v9;
      v27 = 2114;
      v28 = v10;
      v29 = 2114;
      v30 = loadingView;
      _os_log_impl(&dword_248146000, animationManager, OS_LOG_TYPE_DEFAULT, "[%{public}@] Scene not ready yet. Content state ready: %{public}@, proxied: %{public}@, proxy scene content ready: %{public}@, loading view: %{public}@", &v21, 0x34u);
    }

    goto LABEL_15;
  }

  loadingView2 = [(DBSceneWidgetViewController *)self loadingView];

  if (loadingView2)
  {
    v13 = DBLogForCategory(2uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      loadingView3 = [(DBSceneWidgetViewController *)self loadingView];
      v21 = 138543618;
      selfCopy3 = self;
      v23 = 2112;
      v24 = loadingView3;
      _os_log_impl(&dword_248146000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Loading view present, will attempt animating removal: %@", &v21, 0x16u);
    }

    animationManager = [(DBSceneWidgetViewController *)self animationManager];
    [animationManager runAnimationIfPossible:@"DBWidgetSceneSplashScreenAnimationIdentifier" client:self];
  }

  else
  {
    widgetSceneViewController3 = [(DBSceneWidgetViewController *)self widgetSceneViewController];
    view = [widgetSceneViewController3 view];
    [view alpha];
    v18 = v17;

    if (v18 >= 1.0)
    {
      return;
    }

    v19 = DBLogForCategory(2uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138543362;
      selfCopy3 = self;
      _os_log_impl(&dword_248146000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Loading view NOT present, will set alpha on widgetSceneViewController", &v21, 0xCu);
    }

    animationManager = [(DBSceneWidgetViewController *)self widgetSceneViewController];
    view2 = [animationManager view];
    [view2 setAlpha:1.0];
  }

LABEL_15:
}

- (void)_setTouchActionDisabled:(BOOL)disabled forRequester:(id)requester
{
  disabledCopy = disabled;
  requesterCopy = requester;
  if (disabledCopy)
  {
    if (!self->_touchActionDisabledRequesters)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      touchActionDisabledRequesters = self->_touchActionDisabledRequesters;
      self->_touchActionDisabledRequesters = v6;
    }

    touchActionDisabledRequesters = [(DBSceneWidgetViewController *)self touchActionDisabledRequesters];
    [touchActionDisabledRequesters addObject:requesterCopy];
  }

  else
  {
    touchActionDisabledRequesters = [(DBSceneWidgetViewController *)self touchActionDisabledRequesters];
    [touchActionDisabledRequesters removeObject:requesterCopy];
  }

  [(DBSceneWidgetViewController *)self _updateTouchActionDisabled];
}

- (void)_updateTouchActionDisabled
{
  touchActionDisabledRequesters = [(DBSceneWidgetViewController *)self touchActionDisabledRequesters];
  v4 = [touchActionDisabledRequesters count] == 0;

  touchTapGestureRecognizer = [(DBSceneWidgetViewController *)self touchTapGestureRecognizer];
  [touchTapGestureRecognizer setEnabled:v4];

  touchActionView = [(DBSceneWidgetViewController *)self touchActionView];
  layer = [touchActionView layer];
  [layer setHitTestsAsOpaque:v4];
}

- (void)setWidgetContextId:(unsigned int)id
{
  if (self->_widgetContextId != id)
  {
    self->_widgetContextId = id;
    touchDeliveryPolicyAssertion = [(DBSceneWidgetViewController *)self touchDeliveryPolicyAssertion];
    [touchDeliveryPolicyAssertion invalidate];

    [(DBSceneWidgetViewController *)self setTouchDeliveryPolicyAssertion:0];
    v5 = objc_alloc_init(MEMORY[0x277CF0798]);
    [(DBSceneWidgetViewController *)self setTouchDeliveryPolicyAssertion:v5];

    v6 = MEMORY[0x277CF0790];
    widgetContextId = self->_widgetContextId;
    view = [(DBSceneWidgetViewController *)self view];
    window = [view window];
    v10 = [v6 policyRequiringSharingOfTouchesDeliveredToChildContextId:widgetContextId withHostContextId:{objc_msgSend(window, "_contextId")}];

    touchDeliveryPolicyAssertion2 = [(DBSceneWidgetViewController *)self touchDeliveryPolicyAssertion];
    endpoint = [touchDeliveryPolicyAssertion2 endpoint];
    [v10 setAssertionEndpoint:endpoint];

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

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = DBSceneWidgetViewController;
  eventCopy = event;
  [(DBWidgetViewController *)&v9 touchesBegan:began withEvent:eventCopy];
  [eventCopy _initialTouchTimestamp];
  v8 = v7;

  [(DBSceneWidgetViewController *)self setInitialTouchTimestamp:v8];
}

- (void)_scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  objc_opt_class();
  object = [draggingCopy object];

  v6 = object;
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  view = [(DBSceneWidgetViewController *)self view];
  v8 = [v9 containsView:view];

  if (v8)
  {
    [(DBSceneWidgetViewController *)self _beginTouchCancelation];
  }
}

- (void)_scrollViewDidEndDragging:(id)dragging
{
  draggingCopy = dragging;
  objc_opt_class();
  object = [draggingCopy object];

  v6 = object;
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  view = [(DBSceneWidgetViewController *)self view];
  v8 = [v9 containsView:view];

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
      widgetContextId = [(DBSceneWidgetViewController *)self widgetContextId];
      [(DBSceneWidgetViewController *)self initialTouchTimestamp];
      v8 = [v6 policyCancelingTouchesDeliveredToContextId:widgetContextId withInitialTouchTimestamp:?];
      endpoint = [v5 endpoint];
      [v8 setAssertionEndpoint:endpoint];

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
  cancelTouchesInIsolatedViewAssertion = [(DBSceneWidgetViewController *)self cancelTouchesInIsolatedViewAssertion];
  [cancelTouchesInIsolatedViewAssertion invalidate];

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