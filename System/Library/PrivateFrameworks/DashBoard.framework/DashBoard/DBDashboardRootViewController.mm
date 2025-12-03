@interface DBDashboardRootViewController
- ($E1FBA45956547A31D86368594325CA17)primaryDockWindowFrameWithCornerMask;
- ($E1FBA45956547A31D86368594325CA17)secondaryDockWindowFrameWithCornerMask;
- (BOOL)_isDualStatusBarLayout;
- (BOOL)_shouldConsiderHomeScreenActive;
- (CGRect)primaryDockWindowFrame;
- (CGRect)secondaryDockWindowFrame;
- (CRSWidgetLayoutVehicleDataProviding)widgetLayoutDataProvider;
- (DBDashboardRootViewController)initWithEnvironment:(id)environment windowScene:(id)scene layoutEngine:(id)engine;
- (DBEnvironment)environment;
- (UIView)stackedPrimaryDockBackgroundView;
- (UIView)stackedSecondaryDockBackgroundView;
- (id)_createCornerRadiusView;
- (id)_createMaskView;
- (id)preferredFocusEnvironments;
- (void)_dismissBaseViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)_dismissStackedViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)_dismissViewController:(id)controller andPresentBaseViewController:(id)viewController animated:(BOOL)animated completion:(id)completion;
- (void)_presentBaseViewController:(id)controller animated:(BOOL)animated launchSource:(unint64_t)source completion:(id)completion;
- (void)_presentStackedViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)_updateCurrentViewState;
- (void)_updateHomeConstraints;
- (void)_updateHomeScreenLayoutElementIfNeeded;
- (void)_updateHomeVCForegroundAndActive;
- (void)_updateHomeViewControllerVisible:(BOOL)visible;
- (void)addViewStateObserver:(id)observer;
- (void)dismissBaseViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)dockDidChangeInterfaceStyle:(int64_t)style colorVariant:(int64_t)variant isSiriPresentation:(BOOL)presentation;
- (void)handleEvent:(id)event;
- (void)invalidate;
- (void)loadView;
- (void)presentBaseViewController:(id)controller animated:(BOOL)animated launchSource:(unint64_t)source completion:(id)completion;
- (void)presentStackedViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)removeViewStateObserver:(id)observer;
- (void)setAlwaysDarkInterface:(BOOL)interface;
- (void)setContentCornerRadius:(double)radius;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAppearanceForWallpaper;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DBDashboardRootViewController

- (UIView)stackedPrimaryDockBackgroundView
{
  stackedPrimaryGlassDockBackgroundView = self->_stackedPrimaryGlassDockBackgroundView;
  if (!stackedPrimaryGlassDockBackgroundView)
  {
    stackedPrimaryGlassDockBackgroundView = self->_stackedPrimaryMaterialDockBackgroundView;
  }

  return stackedPrimaryGlassDockBackgroundView;
}

- (DBEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (void)_updateCurrentViewState
{
  v18 = *MEMORY[0x277D85DE8];
  currentStackedViewController = [(DBDashboardRootViewController *)self currentStackedViewController];
  entity = [currentStackedViewController entity];
  isOEMPunchthroughEntity = [entity isOEMPunchthroughEntity];

  if (isOEMPunchthroughEntity)
  {
    v6 = 2;
  }

  else
  {
    currentStackedViewController2 = [(DBDashboardRootViewController *)self currentStackedViewController];
    if (currentStackedViewController2 && (v8 = currentStackedViewController2, -[DBDashboardRootViewController currentStackedViewController](self, "currentStackedViewController"), v9 = objc_claimAutoreleasedReturnValue(), [v9 entity], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isSiriEntity"), v10, v9, v8, !v11))
    {
      v6 = 1;
    }

    else
    {
      currentBaseViewController = [(DBDashboardRootViewController *)self currentBaseViewController];
      v6 = currentBaseViewController != 0;
    }
  }

  [(DBDashboardRootViewController *)self setCurrentViewState:v6];
  v13 = DBLogForCategory(8uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = off_278F03720[v6];
    v16 = 138412290;
    v17 = v14;
    _os_log_impl(&dword_248146000, v13, OS_LOG_TYPE_DEFAULT, "Updating to view state: %@", &v16, 0xCu);
  }

  viewStateObservers = [(DBDashboardRootViewController *)self viewStateObservers];
  [viewStateObservers dashboardRootViewController:self didChangeToViewState:v6];
}

- (void)_updateHomeScreenLayoutElementIfNeeded
{
  _shouldConsiderHomeScreenActive = [(DBDashboardRootViewController *)self _shouldConsiderHomeScreenActive];
  if ([(DBDashboardRootViewController *)self invalidated]|| !_shouldConsiderHomeScreenActive || ([(DBDashboardRootViewController *)self homeScreenElementAssertion], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    if (!_shouldConsiderHomeScreenActive)
    {
      homeScreenElementAssertion = [(DBDashboardRootViewController *)self homeScreenElementAssertion];

      if (homeScreenElementAssertion)
      {
        v6 = DBLogForCategory(8uLL);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Invalidating home screen layout element", v14, 2u);
        }

        homeScreenElementAssertion2 = [(DBDashboardRootViewController *)self homeScreenElementAssertion];
        [homeScreenElementAssertion2 invalidate];

        [(DBDashboardRootViewController *)self setHomeScreenElementAssertion:0];
      }
    }
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277D0AD00]) initWithIdentifier:@"com.apple.CarPlayApp.home-screen"];
    [v8 setLevel:0];
    [v8 setFillsDisplayBounds:1];
    v9 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "Activating home screen layout element", buf, 2u);
    }

    environment = [(DBDashboardRootViewController *)self environment];
    environmentConfiguration = [environment environmentConfiguration];
    displayLayoutPublisher = [environmentConfiguration displayLayoutPublisher];
    v13 = [displayLayoutPublisher addElement:v8];
    [(DBDashboardRootViewController *)self setHomeScreenElementAssertion:v13];
  }

  [(DBDashboardRootViewController *)self _updateHomeVCForegroundAndActive];
}

- (void)viewWillLayoutSubviews
{
  v23.receiver = self;
  v23.super_class = DBDashboardRootViewController;
  [(DBDashboardRootViewController *)&v23 viewWillLayoutSubviews];
  [(DBDashboardRootViewController *)self additionalSafeAreaInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(DBDashboardRootViewController *)self setAdditionalSafeAreaInsets:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  [(DBDashboardRootViewController *)self setAdditionalSafeAreaInsets:v4, v6, v8, v10];
  [(DBDashboardRootViewController *)self _updateHomeConstraints];
  stackedPrimaryDockBackgroundView = [(DBDashboardRootViewController *)self stackedPrimaryDockBackgroundView];
  [(DBDashboardRootViewController *)self primaryDockWindowFrame];
  [stackedPrimaryDockBackgroundView setFrame:?];

  stackedSecondaryDockBackgroundView = [(DBDashboardRootViewController *)self stackedSecondaryDockBackgroundView];
  [(DBDashboardRootViewController *)self secondaryDockWindowFrame];
  [stackedSecondaryDockBackgroundView setFrame:?];

  if ([(DBDashboardRootViewController *)self _isDualStatusBarLayout])
  {
    layoutEngine = [(DBDashboardRootViewController *)self layoutEngine];
    primaryDockVariant = [layoutEngine primaryDockVariant];

    if (!primaryDockVariant)
    {
      [(DBDashboardRootViewController *)self primaryDockWindowFrameWithCornerMask];
      stackedPrimaryDockBackgroundView2 = [(DBDashboardRootViewController *)self stackedPrimaryDockBackgroundView];
      [stackedPrimaryDockBackgroundView2 setFrame:{0, 0}];

      stackedPrimaryCornerRadiusView = [(DBDashboardRootViewController *)self stackedPrimaryCornerRadiusView];
      [stackedPrimaryCornerRadiusView setFrame:{0, 0}];

      stackedPrimaryMaskView = [(DBDashboardRootViewController *)self stackedPrimaryMaskView];
      [stackedPrimaryMaskView setFrame:{0, 0}];
    }

    layoutEngine2 = [(DBDashboardRootViewController *)self layoutEngine];
    secondaryDockVariant = [layoutEngine2 secondaryDockVariant];

    if (!secondaryDockVariant)
    {
      [(DBDashboardRootViewController *)self secondaryDockWindowFrameWithCornerMask];
      stackedSecondaryDockBackgroundView2 = [(DBDashboardRootViewController *)self stackedSecondaryDockBackgroundView];
      [stackedSecondaryDockBackgroundView2 setFrame:{0, 0}];

      stackedSecondaryCornerRadiusView = [(DBDashboardRootViewController *)self stackedSecondaryCornerRadiusView];
      [stackedSecondaryCornerRadiusView setFrame:{0, 0}];

      stackedSecondaryMaskView = [(DBDashboardRootViewController *)self stackedSecondaryMaskView];
      [stackedSecondaryMaskView setFrame:{0, 0}];
    }
  }
}

- (void)_updateHomeConstraints
{
  v39[4] = *MEMORY[0x277D85DE8];
  homeViewConstraints = [(DBDashboardRootViewController *)self homeViewConstraints];

  if (homeViewConstraints)
  {
    v4 = MEMORY[0x277CCAAD0];
    homeViewConstraints2 = [(DBDashboardRootViewController *)self homeViewConstraints];
    [v4 deactivateConstraints:homeViewConstraints2];
  }

  homeViewController = [(DBDashboardRootViewController *)self homeViewController];
  view = [homeViewController view];

  layoutEngine = [(DBDashboardRootViewController *)self layoutEngine];
  [layoutEngine homeViewControllerInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  leftAnchor = [view leftAnchor];
  view2 = [(DBDashboardRootViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  leftAnchor2 = [safeAreaLayoutGuide leftAnchor];
  v34 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v12];
  v39[0] = v34;
  rightAnchor = [view rightAnchor];
  view3 = [(DBDashboardRootViewController *)self view];
  safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
  rightAnchor2 = [safeAreaLayoutGuide2 rightAnchor];
  v28 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-v16];
  v39[1] = v28;
  v32 = view;
  topAnchor = [view topAnchor];
  view4 = [(DBDashboardRootViewController *)self view];
  safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v10];
  v39[2] = v19;
  bottomAnchor = [view bottomAnchor];
  view5 = [(DBDashboardRootViewController *)self view];
  safeAreaLayoutGuide4 = [view5 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
  v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v14];
  v39[3] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v25];
  [(DBDashboardRootViewController *)self setHomeViewConstraints:v25];
}

- (CGRect)primaryDockWindowFrame
{
  layoutEngine = [(DBDashboardRootViewController *)self layoutEngine];
  [layoutEngine primaryDockWindowFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  layoutEngine2 = [(DBDashboardRootViewController *)self layoutEngine];
  [layoutEngine2 primaryDockMargins];
  v14 = v5 + v13;
  v16 = v7 + v15;
  v18 = v9 - (v13 + v17);
  v20 = v11 - (v15 + v19);

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (UIView)stackedSecondaryDockBackgroundView
{
  stackedSecondaryGlassDockBackgroundView = self->_stackedSecondaryGlassDockBackgroundView;
  if (!stackedSecondaryGlassDockBackgroundView)
  {
    stackedSecondaryGlassDockBackgroundView = self->_stackedSecondaryMaterialDockBackgroundView;
  }

  return stackedSecondaryGlassDockBackgroundView;
}

- (CGRect)secondaryDockWindowFrame
{
  layoutEngine = [(DBDashboardRootViewController *)self layoutEngine];
  [layoutEngine secondaryDockWindowFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  layoutEngine2 = [(DBDashboardRootViewController *)self layoutEngine];
  [layoutEngine2 secondaryDockMargins];
  v14 = v5 + v13;
  v16 = v7 + v15;
  v18 = v9 - (v13 + v17);
  v20 = v11 - (v15 + v19);

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (BOOL)_isDualStatusBarLayout
{
  environment = [(DBDashboardRootViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];
  hasDualStatusBar = [environmentConfiguration hasDualStatusBar];

  return hasDualStatusBar;
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = DBDashboardRootViewController;
  [(DBDashboardRootViewController *)&v13 viewDidLayoutSubviews];
  contentView = [(DBDashboardRootViewController *)self contentView];
  [contentView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  dimmingView = [(DBDashboardRootViewController *)self dimmingView];
  [dimmingView setContentFrame:{v5, v7, v9, v11}];
}

- (void)updateAppearanceForWallpaper
{
  environment = [(DBDashboardRootViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];
  wallpaperPreferences = [environmentConfiguration wallpaperPreferences];
  currentWallpaper = [wallpaperPreferences currentWallpaper];
  traits = [currentWallpaper traits];
  supportsDynamicAppearance = [traits supportsDynamicAppearance];

  dimmingView = [(DBDashboardRootViewController *)self dimmingView];
  [dimmingView setHidden:supportsDynamicAppearance ^ 1u];

  [(DBDashboardRootViewController *)self contentCornerRadius];
  if (v10 <= 0.0 || (supportsDynamicAppearance & 1) != 0)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    cGColor = [clearColor CGColor];
    borderView = [(DBDashboardRootViewController *)self borderView];
    layer = [borderView layer];
    [layer setBorderColor:cGColor];

    borderView2 = [(DBDashboardRootViewController *)self borderView];
    layer2 = [borderView2 layer];
    [layer2 setBorderWidth:0.0];

    borderView3 = [(DBDashboardRootViewController *)self borderView];
    layer3 = [borderView3 layer];
    [layer3 setCompositingFilter:0];
  }

  else
  {
    v11 = [MEMORY[0x277D75348] colorWithWhite:0.149019608 alpha:1.0];
    cGColor2 = [v11 CGColor];
    borderView4 = [(DBDashboardRootViewController *)self borderView];
    layer4 = [borderView4 layer];
    [layer4 setBorderColor:cGColor2];

    borderView5 = [(DBDashboardRootViewController *)self borderView];
    layer5 = [borderView5 layer];
    [layer5 setBorderWidth:1.0];

    borderView3 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA548]];
    layer3 = [(DBDashboardRootViewController *)self borderView];
    v17Layer = [layer3 layer];
    [v17Layer setCompositingFilter:borderView3];
  }
}

- (DBDashboardRootViewController)initWithEnvironment:(id)environment windowScene:(id)scene layoutEngine:(id)engine
{
  environmentCopy = environment;
  sceneCopy = scene;
  engineCopy = engine;
  v17.receiver = self;
  v17.super_class = DBDashboardRootViewController;
  v11 = [(DBDashboardRootViewController *)&v17 init];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285AF0150];
    viewStateObservers = v11->_viewStateObservers;
    v11->_viewStateObservers = v12;

    objc_storeWeak(&v11->_environment, environmentCopy);
    objc_storeStrong(&v11->_layoutEngine, engine);
    v14 = [[DBDashboardHomeViewController alloc] initWithEnvironment:environmentCopy windowScene:sceneCopy layoutEngine:engineCopy];
    homeViewController = v11->_homeViewController;
    v11->_homeViewController = v14;
  }

  return v11;
}

- (CRSWidgetLayoutVehicleDataProviding)widgetLayoutDataProvider
{
  homeViewController = [(DBDashboardRootViewController *)self homeViewController];
  widgetLayoutDataProvider = [homeViewController widgetLayoutDataProvider];

  return widgetLayoutDataProvider;
}

- (void)presentBaseViewController:(id)controller animated:(BOOL)animated launchSource:(unint64_t)source completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  currentBaseViewController = [(DBDashboardRootViewController *)self currentBaseViewController];

  if (currentBaseViewController)
  {
    currentBaseViewController2 = [(DBDashboardRootViewController *)self currentBaseViewController];
    [(DBDashboardRootViewController *)self _dismissViewController:currentBaseViewController2 andPresentBaseViewController:controllerCopy animated:animatedCopy completion:completionCopy];
  }

  else
  {
    [(DBDashboardRootViewController *)self _presentBaseViewController:controllerCopy animated:animatedCopy launchSource:source completion:completionCopy];
  }
}

- (void)dismissBaseViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  currentBaseViewController = [(DBDashboardRootViewController *)self currentBaseViewController];

  if (currentBaseViewController)
  {
    [(DBDashboardRootViewController *)self _dismissBaseViewControllerAnimated:animatedCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__DBDashboardRootViewController_dismissBaseViewControllerAnimated_completion___block_invoke;
    block[3] = &unk_278F02678;
    v9 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)presentStackedViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  currentStackedViewController = [(DBDashboardRootViewController *)self currentStackedViewController];

  if (currentStackedViewController)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __82__DBDashboardRootViewController_presentStackedViewController_animated_completion___block_invoke;
    v11[3] = &unk_278F034D0;
    v11[4] = self;
    v12 = controllerCopy;
    v14 = animatedCopy;
    v13 = completionCopy;
    [(DBDashboardRootViewController *)self _dismissStackedViewControllerAnimated:animatedCopy completion:v11];
  }

  else
  {
    [(DBDashboardRootViewController *)self _presentStackedViewController:controllerCopy animated:animatedCopy completion:completionCopy];
  }
}

- (void)addViewStateObserver:(id)observer
{
  observerCopy = observer;
  viewStateObservers = [(DBDashboardRootViewController *)self viewStateObservers];
  [viewStateObservers addObserver:observerCopy];

  if (objc_opt_respondsToSelector())
  {
    [observerCopy dashboardRootViewController:self didChangeToViewState:{-[DBDashboardRootViewController currentViewState](self, "currentViewState")}];
  }
}

- (void)removeViewStateObserver:(id)observer
{
  observerCopy = observer;
  viewStateObservers = [(DBDashboardRootViewController *)self viewStateObservers];
  [viewStateObservers removeObserver:observerCopy];
}

- (void)setContentCornerRadius:(double)radius
{
  self->_contentCornerRadius = radius;
  contentView = [(DBDashboardRootViewController *)self contentView];
  layer = [contentView layer];
  [layer setCornerRadius:radius];

  baseContainerView = [(DBDashboardRootViewController *)self baseContainerView];
  layer2 = [baseContainerView layer];
  [layer2 setCornerRadius:radius];

  dimmingView = [(DBDashboardRootViewController *)self dimmingView];
  [dimmingView setCornerRadius:radius];

  borderView = [(DBDashboardRootViewController *)self borderView];
  layer3 = [borderView layer];
  [layer3 setCornerRadius:radius];

  backgroundBlurView = [(DBDashboardRootViewController *)self backgroundBlurView];
  layer4 = [backgroundBlurView layer];
  [layer4 setCornerRadius:radius];
}

- (void)setAlwaysDarkInterface:(BOOL)interface
{
  interfaceCopy = interface;
  backgroundBlurView = [(DBDashboardRootViewController *)self backgroundBlurView];
  v6 = backgroundBlurView;
  if (interfaceCopy)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  [backgroundBlurView setOverrideUserInterfaceStyle:v5];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v8 = [v3 initWithFrame:?];

  layer = [v8 layer];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [layer setName:v7];

  [v8 setAutoresizingMask:18];
  [v8 setAutoresizesSubviews:1];
  [(DBDashboardRootViewController *)self setView:v8];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = DBDashboardRootViewController;
  [(DBDashboardRootViewController *)&v4 traitCollectionDidChange:change];
  [(DBDashboardRootViewController *)self updateAppearanceForWallpaper];
}

- (void)viewDidLoad
{
  v275[1] = *MEMORY[0x277D85DE8];
  v272.receiver = self;
  v272.super_class = DBDashboardRootViewController;
  [(DBDashboardRootViewController *)&v272 viewDidLoad];
  v3 = [MEMORY[0x277D75210] effectWithStyle:6];
  v4 = objc_alloc_init(MEMORY[0x277D75D68]);
  backgroundBlurView = self->_backgroundBlurView;
  self->_backgroundBlurView = v4;

  v270 = v3;
  v275[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v275 count:1];
  [(UIVisualEffectView *)self->_backgroundBlurView setBackgroundEffects:v6];

  [(UIVisualEffectView *)self->_backgroundBlurView setTranslatesAutoresizingMaskIntoConstraints:0];
  layer = [(UIVisualEffectView *)self->_backgroundBlurView layer];
  [layer setMasksToBounds:1];

  [(UIVisualEffectView *)self->_backgroundBlurView setHidden:1];
  view = [(DBDashboardRootViewController *)self view];
  [view addSubview:self->_backgroundBlurView];

  v9 = objc_opt_new();
  [(DBDashboardRootViewController *)self setBackgroundView:v9];

  backgroundView = [(DBDashboardRootViewController *)self backgroundView];
  [backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];

  backgroundView2 = [(DBDashboardRootViewController *)self backgroundView];
  [backgroundView2 setUserInteractionEnabled:0];

  view2 = [(DBDashboardRootViewController *)self view];
  backgroundView3 = [(DBDashboardRootViewController *)self backgroundView];
  [view2 addSubview:backgroundView3];

  v14 = [_TtC9DashBoard22DBDashboardDimmingView alloc];
  v15 = *MEMORY[0x277CBF3A0];
  v16 = *(MEMORY[0x277CBF3A0] + 8);
  v17 = *(MEMORY[0x277CBF3A0] + 16);
  v18 = *(MEMORY[0x277CBF3A0] + 24);
  v19 = [(DBDashboardDimmingView *)v14 initWithFrame:*MEMORY[0x277CBF3A0], v16, v17, v18];
  [(DBDashboardRootViewController *)self setDimmingView:v19];

  dimmingView = [(DBDashboardRootViewController *)self dimmingView];
  [dimmingView setTranslatesAutoresizingMaskIntoConstraints:0];

  dimmingView2 = [(DBDashboardRootViewController *)self dimmingView];
  [dimmingView2 setUserInteractionEnabled:0];

  view3 = [(DBDashboardRootViewController *)self view];
  dimmingView3 = [(DBDashboardRootViewController *)self dimmingView];
  [view3 addSubview:dimmingView3];

  v24 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v15, v16, v17, v18}];
  [(DBDashboardRootViewController *)self setWidgetDimmingView:v24];

  widgetDimmingView = [(DBDashboardRootViewController *)self widgetDimmingView];
  [widgetDimmingView setTranslatesAutoresizingMaskIntoConstraints:0];

  widgetDimmingView2 = [(DBDashboardRootViewController *)self widgetDimmingView];
  [widgetDimmingView2 setUserInteractionEnabled:0];

  widgetDimmingView3 = [(DBDashboardRootViewController *)self widgetDimmingView];
  [widgetDimmingView3 setHidden:1];

  blackColor = [MEMORY[0x277D75348] blackColor];
  widgetDimmingView4 = [(DBDashboardRootViewController *)self widgetDimmingView];
  [widgetDimmingView4 setBackgroundColor:blackColor];

  widgetDimmingView5 = [(DBDashboardRootViewController *)self widgetDimmingView];
  homeViewController = [(DBDashboardRootViewController *)self homeViewController];
  [homeViewController setWidgetDimmingView:widgetDimmingView5];

  view4 = [(DBDashboardRootViewController *)self view];
  widgetDimmingView6 = [(DBDashboardRootViewController *)self widgetDimmingView];
  [view4 addSubview:widgetDimmingView6];

  v34 = objc_opt_new();
  [(DBDashboardRootViewController *)self setContentView:v34];

  v35 = *MEMORY[0x277CDA138];
  contentView = [(DBDashboardRootViewController *)self contentView];
  layer2 = [contentView layer];
  [layer2 setCornerCurve:v35];

  contentView2 = [(DBDashboardRootViewController *)self contentView];
  layer3 = [contentView2 layer];
  [layer3 setMasksToBounds:1];

  contentView3 = [(DBDashboardRootViewController *)self contentView];
  [contentView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view5 = [(DBDashboardRootViewController *)self view];
  contentView4 = [(DBDashboardRootViewController *)self contentView];
  [view5 addSubview:contentView4];

  homeViewController2 = [(DBDashboardRootViewController *)self homeViewController];
  contentView5 = [(DBDashboardRootViewController *)self contentView];
  v271[0] = MEMORY[0x277D85DD0];
  v271[1] = 3221225472;
  v271[2] = __44__DBDashboardRootViewController_viewDidLoad__block_invoke;
  v271[3] = &unk_278F034F8;
  v271[4] = self;
  [(DBDashboardRootViewController *)self bs_addChildViewController:homeViewController2 withSuperview:contentView5 animated:0 transitionBlock:v271];

  v45 = objc_opt_new();
  [(DBDashboardRootViewController *)self setBaseContainerView:v45];

  baseContainerView = [(DBDashboardRootViewController *)self baseContainerView];
  [baseContainerView setHidden:1];

  baseContainerView2 = [(DBDashboardRootViewController *)self baseContainerView];
  [baseContainerView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView6 = [(DBDashboardRootViewController *)self contentView];
  baseContainerView3 = [(DBDashboardRootViewController *)self baseContainerView];
  [contentView6 addSubview:baseContainerView3];

  environment = [(DBDashboardRootViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];
  hasDualStatusBar = [environmentConfiguration hasDualStatusBar];

  layoutEngine = [(DBDashboardRootViewController *)self layoutEngine];
  primaryDockVariant = [layoutEngine primaryDockVariant];

  if (primaryDockVariant)
  {
    v55 = +[_TtC9DashBoard20DBDashboardGlassView createWithDockConfiguration];
    stackedPrimaryGlassDockBackgroundView = self->_stackedPrimaryGlassDockBackgroundView;
    self->_stackedPrimaryGlassDockBackgroundView = v55;

    layoutEngine2 = [(DBDashboardRootViewController *)self layoutEngine];
    -[DBDashboardGlassView setIsTranslucent:](self->_stackedPrimaryGlassDockBackgroundView, "setIsTranslucent:", [layoutEngine2 primaryDockVariant] == 1);
  }

  else
  {
    v58 = [DBDockBackgroundView alloc];
    environment2 = [(DBDashboardRootViewController *)self environment];
    v60 = [(DBDockBackgroundView *)v58 initWithEnvironment:environment2 layout:hasDualStatusBar];
    stackedPrimaryMaterialDockBackgroundView = self->_stackedPrimaryMaterialDockBackgroundView;
    self->_stackedPrimaryMaterialDockBackgroundView = v60;

    _createCornerRadiusView = [(DBDashboardRootViewController *)self _createCornerRadiusView];
    [(DBDashboardRootViewController *)self setStackedPrimaryCornerRadiusView:_createCornerRadiusView];

    stackedPrimaryDockBackgroundView = [(DBDashboardRootViewController *)self stackedPrimaryDockBackgroundView];
    stackedPrimaryCornerRadiusView = [(DBDashboardRootViewController *)self stackedPrimaryCornerRadiusView];
    [stackedPrimaryDockBackgroundView addSubview:stackedPrimaryCornerRadiusView];

    _createMaskView = [(DBDashboardRootViewController *)self _createMaskView];
    [(DBDashboardRootViewController *)self setStackedPrimaryMaskView:_createMaskView];

    layoutEngine2 = [(DBDashboardRootViewController *)self stackedPrimaryDockBackgroundView];
    stackedPrimaryMaskView = [(DBDashboardRootViewController *)self stackedPrimaryMaskView];
    [layoutEngine2 addSubview:stackedPrimaryMaskView];
  }

  contentView7 = [(DBDashboardRootViewController *)self contentView];
  stackedPrimaryDockBackgroundView2 = [(DBDashboardRootViewController *)self stackedPrimaryDockBackgroundView];
  [contentView7 addSubview:stackedPrimaryDockBackgroundView2];

  stackedPrimaryDockBackgroundView3 = [(DBDashboardRootViewController *)self stackedPrimaryDockBackgroundView];
  [stackedPrimaryDockBackgroundView3 setHidden:1];

  stackedPrimaryDockBackgroundView4 = [(DBDashboardRootViewController *)self stackedPrimaryDockBackgroundView];
  [(DBDashboardRootViewController *)self primaryDockWindowFrame];
  [stackedPrimaryDockBackgroundView4 setFrame:?];

  if (hasDualStatusBar)
  {
    layoutEngine3 = [(DBDashboardRootViewController *)self layoutEngine];
    secondaryDockVariant = [layoutEngine3 secondaryDockVariant];

    if (secondaryDockVariant)
    {
      v73 = +[_TtC9DashBoard20DBDashboardGlassView createWithDockConfiguration];
      stackedSecondaryGlassDockBackgroundView = self->_stackedSecondaryGlassDockBackgroundView;
      self->_stackedSecondaryGlassDockBackgroundView = v73;

      layoutEngine4 = [(DBDashboardRootViewController *)self layoutEngine];
      -[DBDashboardGlassView setIsTranslucent:](self->_stackedSecondaryGlassDockBackgroundView, "setIsTranslucent:", [layoutEngine4 secondaryDockVariant] == 1);
    }

    else
    {
      v76 = [DBDockBackgroundView alloc];
      environment3 = [(DBDashboardRootViewController *)self environment];
      v78 = [(DBDockBackgroundView *)v76 initWithEnvironment:environment3 layout:2];
      stackedSecondaryMaterialDockBackgroundView = self->_stackedSecondaryMaterialDockBackgroundView;
      self->_stackedSecondaryMaterialDockBackgroundView = v78;

      _createCornerRadiusView2 = [(DBDashboardRootViewController *)self _createCornerRadiusView];
      [(DBDashboardRootViewController *)self setStackedSecondaryCornerRadiusView:_createCornerRadiusView2];

      stackedSecondaryDockBackgroundView = [(DBDashboardRootViewController *)self stackedSecondaryDockBackgroundView];
      stackedSecondaryCornerRadiusView = [(DBDashboardRootViewController *)self stackedSecondaryCornerRadiusView];
      [stackedSecondaryDockBackgroundView addSubview:stackedSecondaryCornerRadiusView];

      _createMaskView2 = [(DBDashboardRootViewController *)self _createMaskView];
      [(DBDashboardRootViewController *)self setStackedSecondaryMaskView:_createMaskView2];

      layoutEngine4 = [(DBDashboardRootViewController *)self stackedSecondaryDockBackgroundView];
      stackedSecondaryMaskView = [(DBDashboardRootViewController *)self stackedSecondaryMaskView];
      [layoutEngine4 addSubview:stackedSecondaryMaskView];
    }

    stackedSecondaryDockBackgroundView2 = [(DBDashboardRootViewController *)self stackedSecondaryDockBackgroundView];
    [stackedSecondaryDockBackgroundView2 setHidden:1];

    stackedSecondaryDockBackgroundView3 = [(DBDashboardRootViewController *)self stackedSecondaryDockBackgroundView];
    [(DBDashboardRootViewController *)self secondaryDockWindowFrame];
    [stackedSecondaryDockBackgroundView3 setFrame:?];

    contentView8 = [(DBDashboardRootViewController *)self contentView];
    stackedSecondaryDockBackgroundView4 = [(DBDashboardRootViewController *)self stackedSecondaryDockBackgroundView];
    [contentView8 addSubview:stackedSecondaryDockBackgroundView4];
  }

  v89 = objc_opt_new();
  [(DBDashboardRootViewController *)self setStackedContainerView:v89];

  stackedContainerView = [(DBDashboardRootViewController *)self stackedContainerView];
  [stackedContainerView setHidden:1];

  stackedContainerView2 = [(DBDashboardRootViewController *)self stackedContainerView];
  [stackedContainerView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView9 = [(DBDashboardRootViewController *)self contentView];
  stackedContainerView3 = [(DBDashboardRootViewController *)self stackedContainerView];
  [contentView9 addSubview:stackedContainerView3];

  v94 = objc_opt_new();
  [(DBDashboardRootViewController *)self setBorderView:v94];

  borderView = [(DBDashboardRootViewController *)self borderView];
  layer4 = [borderView layer];
  [layer4 setCornerCurve:v35];

  borderView2 = [(DBDashboardRootViewController *)self borderView];
  layer5 = [borderView2 layer];
  [layer5 setMasksToBounds:1];

  borderView3 = [(DBDashboardRootViewController *)self borderView];
  [borderView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view6 = [(DBDashboardRootViewController *)self view];
  borderView4 = [(DBDashboardRootViewController *)self borderView];
  [view6 addSubview:borderView4];

  v250 = MEMORY[0x277CCAAD0];
  backgroundBlurView = [(DBDashboardRootViewController *)self backgroundBlurView];
  leadingAnchor = [backgroundBlurView leadingAnchor];
  contentView10 = [(DBDashboardRootViewController *)self contentView];
  leadingAnchor2 = [contentView10 leadingAnchor];
  v260 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v274[0] = v260;
  backgroundBlurView2 = [(DBDashboardRootViewController *)self backgroundBlurView];
  trailingAnchor = [backgroundBlurView2 trailingAnchor];
  contentView11 = [(DBDashboardRootViewController *)self contentView];
  trailingAnchor2 = [contentView11 trailingAnchor];
  v248 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v274[1] = v248;
  backgroundBlurView3 = [(DBDashboardRootViewController *)self backgroundBlurView];
  topAnchor = [backgroundBlurView3 topAnchor];
  contentView12 = [(DBDashboardRootViewController *)self contentView];
  topAnchor2 = [contentView12 topAnchor];
  v104 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v274[2] = v104;
  backgroundBlurView4 = [(DBDashboardRootViewController *)self backgroundBlurView];
  bottomAnchor = [backgroundBlurView4 bottomAnchor];
  contentView13 = [(DBDashboardRootViewController *)self contentView];
  bottomAnchor2 = [contentView13 bottomAnchor];
  v109 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v274[3] = v109;
  v110 = [MEMORY[0x277CBEA60] arrayWithObjects:v274 count:4];
  [v250 activateConstraints:v110];

  v195 = MEMORY[0x277CCAAD0];
  dimmingView4 = [(DBDashboardRootViewController *)self dimmingView];
  leadingAnchor3 = [dimmingView4 leadingAnchor];
  view7 = [(DBDashboardRootViewController *)self view];
  leadingAnchor4 = [view7 leadingAnchor];
  v261 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v273[0] = v261;
  dimmingView5 = [(DBDashboardRootViewController *)self dimmingView];
  trailingAnchor3 = [dimmingView5 trailingAnchor];
  view8 = [(DBDashboardRootViewController *)self view];
  trailingAnchor4 = [view8 trailingAnchor];
  v251 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v273[1] = v251;
  dimmingView6 = [(DBDashboardRootViewController *)self dimmingView];
  topAnchor3 = [dimmingView6 topAnchor];
  view9 = [(DBDashboardRootViewController *)self view];
  topAnchor4 = [view9 topAnchor];
  v242 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v273[2] = v242;
  dimmingView7 = [(DBDashboardRootViewController *)self dimmingView];
  bottomAnchor3 = [dimmingView7 bottomAnchor];
  view10 = [(DBDashboardRootViewController *)self view];
  bottomAnchor4 = [view10 bottomAnchor];
  v237 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v273[3] = v237;
  widgetDimmingView7 = [(DBDashboardRootViewController *)self widgetDimmingView];
  leadingAnchor5 = [widgetDimmingView7 leadingAnchor];
  view11 = [(DBDashboardRootViewController *)self view];
  leadingAnchor6 = [view11 leadingAnchor];
  v232 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v273[4] = v232;
  widgetDimmingView8 = [(DBDashboardRootViewController *)self widgetDimmingView];
  trailingAnchor5 = [widgetDimmingView8 trailingAnchor];
  view12 = [(DBDashboardRootViewController *)self view];
  trailingAnchor6 = [view12 trailingAnchor];
  v227 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v273[5] = v227;
  widgetDimmingView9 = [(DBDashboardRootViewController *)self widgetDimmingView];
  topAnchor5 = [widgetDimmingView9 topAnchor];
  view13 = [(DBDashboardRootViewController *)self view];
  topAnchor6 = [view13 topAnchor];
  v222 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v273[6] = v222;
  widgetDimmingView10 = [(DBDashboardRootViewController *)self widgetDimmingView];
  bottomAnchor5 = [widgetDimmingView10 bottomAnchor];
  view14 = [(DBDashboardRootViewController *)self view];
  bottomAnchor6 = [view14 bottomAnchor];
  v217 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v273[7] = v217;
  backgroundView4 = [(DBDashboardRootViewController *)self backgroundView];
  leadingAnchor7 = [backgroundView4 leadingAnchor];
  view15 = [(DBDashboardRootViewController *)self view];
  leadingAnchor8 = [view15 leadingAnchor];
  v212 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v273[8] = v212;
  backgroundView5 = [(DBDashboardRootViewController *)self backgroundView];
  trailingAnchor7 = [backgroundView5 trailingAnchor];
  view16 = [(DBDashboardRootViewController *)self view];
  trailingAnchor8 = [view16 trailingAnchor];
  v207 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v273[9] = v207;
  backgroundView6 = [(DBDashboardRootViewController *)self backgroundView];
  topAnchor7 = [backgroundView6 topAnchor];
  view17 = [(DBDashboardRootViewController *)self view];
  topAnchor8 = [view17 topAnchor];
  v202 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
  v273[10] = v202;
  backgroundView7 = [(DBDashboardRootViewController *)self backgroundView];
  bottomAnchor7 = [backgroundView7 bottomAnchor];
  view18 = [(DBDashboardRootViewController *)self view];
  bottomAnchor8 = [view18 bottomAnchor];
  v197 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
  v273[11] = v197;
  contentView14 = [(DBDashboardRootViewController *)self contentView];
  leadingAnchor9 = [contentView14 leadingAnchor];
  view19 = [(DBDashboardRootViewController *)self view];
  safeAreaLayoutGuide = [view19 safeAreaLayoutGuide];
  leadingAnchor10 = [safeAreaLayoutGuide leadingAnchor];
  v190 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  v273[12] = v190;
  contentView15 = [(DBDashboardRootViewController *)self contentView];
  trailingAnchor9 = [contentView15 trailingAnchor];
  view20 = [(DBDashboardRootViewController *)self view];
  safeAreaLayoutGuide2 = [view20 safeAreaLayoutGuide];
  trailingAnchor10 = [safeAreaLayoutGuide2 trailingAnchor];
  v184 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  v273[13] = v184;
  contentView16 = [(DBDashboardRootViewController *)self contentView];
  topAnchor9 = [contentView16 topAnchor];
  view21 = [(DBDashboardRootViewController *)self view];
  safeAreaLayoutGuide3 = [view21 safeAreaLayoutGuide];
  topAnchor10 = [safeAreaLayoutGuide3 topAnchor];
  v178 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
  v273[14] = v178;
  contentView17 = [(DBDashboardRootViewController *)self contentView];
  bottomAnchor9 = [contentView17 bottomAnchor];
  view22 = [(DBDashboardRootViewController *)self view];
  safeAreaLayoutGuide4 = [view22 safeAreaLayoutGuide];
  bottomAnchor10 = [safeAreaLayoutGuide4 bottomAnchor];
  v172 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10];
  v273[15] = v172;
  baseContainerView4 = [(DBDashboardRootViewController *)self baseContainerView];
  leadingAnchor11 = [baseContainerView4 leadingAnchor];
  contentView18 = [(DBDashboardRootViewController *)self contentView];
  leadingAnchor12 = [contentView18 leadingAnchor];
  v167 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
  v273[16] = v167;
  baseContainerView5 = [(DBDashboardRootViewController *)self baseContainerView];
  trailingAnchor11 = [baseContainerView5 trailingAnchor];
  contentView19 = [(DBDashboardRootViewController *)self contentView];
  trailingAnchor12 = [contentView19 trailingAnchor];
  v162 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
  v273[17] = v162;
  baseContainerView6 = [(DBDashboardRootViewController *)self baseContainerView];
  topAnchor11 = [baseContainerView6 topAnchor];
  contentView20 = [(DBDashboardRootViewController *)self contentView];
  topAnchor12 = [contentView20 topAnchor];
  v157 = [topAnchor11 constraintEqualToAnchor:topAnchor12];
  v273[18] = v157;
  baseContainerView7 = [(DBDashboardRootViewController *)self baseContainerView];
  bottomAnchor11 = [baseContainerView7 bottomAnchor];
  contentView21 = [(DBDashboardRootViewController *)self contentView];
  bottomAnchor12 = [contentView21 bottomAnchor];
  v152 = [bottomAnchor11 constraintEqualToAnchor:bottomAnchor12];
  v273[19] = v152;
  stackedContainerView4 = [(DBDashboardRootViewController *)self stackedContainerView];
  leadingAnchor13 = [stackedContainerView4 leadingAnchor];
  contentView22 = [(DBDashboardRootViewController *)self contentView];
  leadingAnchor14 = [contentView22 leadingAnchor];
  v147 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14];
  v273[20] = v147;
  stackedContainerView5 = [(DBDashboardRootViewController *)self stackedContainerView];
  trailingAnchor13 = [stackedContainerView5 trailingAnchor];
  contentView23 = [(DBDashboardRootViewController *)self contentView];
  trailingAnchor14 = [contentView23 trailingAnchor];
  v142 = [trailingAnchor13 constraintEqualToAnchor:trailingAnchor14];
  v273[21] = v142;
  stackedContainerView6 = [(DBDashboardRootViewController *)self stackedContainerView];
  topAnchor13 = [stackedContainerView6 topAnchor];
  contentView24 = [(DBDashboardRootViewController *)self contentView];
  topAnchor14 = [contentView24 topAnchor];
  v137 = [topAnchor13 constraintEqualToAnchor:topAnchor14];
  v273[22] = v137;
  stackedContainerView7 = [(DBDashboardRootViewController *)self stackedContainerView];
  bottomAnchor13 = [stackedContainerView7 bottomAnchor];
  contentView25 = [(DBDashboardRootViewController *)self contentView];
  bottomAnchor14 = [contentView25 bottomAnchor];
  v132 = [bottomAnchor13 constraintEqualToAnchor:bottomAnchor14];
  v273[23] = v132;
  borderView5 = [(DBDashboardRootViewController *)self borderView];
  leadingAnchor15 = [borderView5 leadingAnchor];
  contentView26 = [(DBDashboardRootViewController *)self contentView];
  leadingAnchor16 = [contentView26 leadingAnchor];
  v127 = [leadingAnchor15 constraintEqualToAnchor:leadingAnchor16];
  v273[24] = v127;
  borderView6 = [(DBDashboardRootViewController *)self borderView];
  trailingAnchor15 = [borderView6 trailingAnchor];
  contentView27 = [(DBDashboardRootViewController *)self contentView];
  trailingAnchor16 = [contentView27 trailingAnchor];
  v122 = [trailingAnchor15 constraintEqualToAnchor:trailingAnchor16];
  v273[25] = v122;
  borderView7 = [(DBDashboardRootViewController *)self borderView];
  topAnchor15 = [borderView7 topAnchor];
  contentView28 = [(DBDashboardRootViewController *)self contentView];
  topAnchor16 = [contentView28 topAnchor];
  v113 = [topAnchor15 constraintEqualToAnchor:topAnchor16];
  v273[26] = v113;
  borderView8 = [(DBDashboardRootViewController *)self borderView];
  bottomAnchor15 = [borderView8 bottomAnchor];
  contentView29 = [(DBDashboardRootViewController *)self contentView];
  bottomAnchor16 = [contentView29 bottomAnchor];
  v118 = [bottomAnchor15 constraintEqualToAnchor:bottomAnchor16];
  v273[27] = v118;
  v119 = [MEMORY[0x277CBEA60] arrayWithObjects:v273 count:28];
  [v195 activateConstraints:v119];

  [(DBDashboardRootViewController *)self _updateHomeScreenLayoutElementIfNeeded];
}

void __44__DBDashboardRootViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 homeViewController];
  v5 = [v4 view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  [*(a1 + 32) _updateHomeConstraints];
  v6[2]();
}

- (void)handleEvent:(id)event
{
  eventCopy = event;
  currentStackedViewController = [(DBDashboardRootViewController *)self currentStackedViewController];

  if (currentStackedViewController)
  {
    currentStackedViewController2 = [(DBDashboardRootViewController *)self currentStackedViewController];
  }

  else
  {
    currentBaseViewController = [(DBDashboardRootViewController *)self currentBaseViewController];

    if (currentBaseViewController)
    {
      currentStackedViewController2 = [(DBDashboardRootViewController *)self currentBaseViewController];
    }

    else
    {
      if ([eventCopy type] == 10)
      {
        goto LABEL_8;
      }

      currentStackedViewController2 = [(DBDashboardRootViewController *)self homeViewController];
    }
  }

  v7 = currentStackedViewController2;
  [currentStackedViewController2 handleEvent:eventCopy];

LABEL_8:
}

- (void)dockDidChangeInterfaceStyle:(int64_t)style colorVariant:(int64_t)variant isSiriPresentation:(BOOL)presentation
{
  presentationCopy = presentation;
  stackedPrimaryDockBackgroundView = [(DBDashboardRootViewController *)self stackedPrimaryDockBackgroundView];
  [stackedPrimaryDockBackgroundView setHidden:!presentationCopy];

  stackedSecondaryDockBackgroundView = [(DBDashboardRootViewController *)self stackedSecondaryDockBackgroundView];
  [stackedSecondaryDockBackgroundView setHidden:!presentationCopy];

  stackedPrimaryDockBackgroundView2 = [(DBDashboardRootViewController *)self stackedPrimaryDockBackgroundView];
  [stackedPrimaryDockBackgroundView2 setOverrideUserInterfaceStyle:style];

  stackedSecondaryDockBackgroundView2 = [(DBDashboardRootViewController *)self stackedSecondaryDockBackgroundView];
  [stackedSecondaryDockBackgroundView2 setOverrideUserInterfaceStyle:style];

  stackedPrimaryMaterialDockBackgroundView = [(DBDashboardRootViewController *)self stackedPrimaryMaterialDockBackgroundView];
  [stackedPrimaryMaterialDockBackgroundView setColorVariantOverride:variant];

  stackedSecondaryMaterialDockBackgroundView = [(DBDashboardRootViewController *)self stackedSecondaryMaterialDockBackgroundView];
  [stackedSecondaryMaterialDockBackgroundView setColorVariantOverride:variant];
}

- ($E1FBA45956547A31D86368594325CA17)primaryDockWindowFrameWithCornerMask
{
  [(DBDashboardRootViewController *)self primaryDockWindowFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  layoutEngine = [(DBDashboardRootViewController *)self layoutEngine];
  [layoutEngine dockShortAxisLength];
  v15 = v14;

  environment = [(DBDashboardRootViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];
  isRightHandDrive = [environmentConfiguration isRightHandDrive];

  v20 = v6 - 22.0;
  v21 = -22.0;
  if (!isRightHandDrive)
  {
    v21 = v15;
    v20 = v6;
  }

  v22 = 0.0;
  if (!isRightHandDrive)
  {
    v22 = v15;
  }

  retstr->var0.origin.x = v20;
  retstr->var0.origin.y = v8;
  retstr->var0.size.width = v10 + 22.0;
  retstr->var0.size.height = v12;
  retstr->var1.origin.x = v22;
  retstr->var1.origin.y = 0.0;
  retstr->var1.size.width = 22.0;
  retstr->var1.size.height = v12;
  retstr->var2.origin.x = v21;
  retstr->var2.origin.y = 0.0;
  retstr->var2.size.width = 22.0 + 22.0;
  retstr->var2.size.height = v12;
  return result;
}

- ($E1FBA45956547A31D86368594325CA17)secondaryDockWindowFrameWithCornerMask
{
  [(DBDashboardRootViewController *)self secondaryDockWindowFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  layoutEngine = [(DBDashboardRootViewController *)self layoutEngine];
  [layoutEngine dockShortAxisLength];
  v15 = v14;

  environment = [(DBDashboardRootViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];
  isRightHandDrive = [environmentConfiguration isRightHandDrive];

  v20 = v6 - 22.0;
  v21 = -22.0;
  if (isRightHandDrive)
  {
    v21 = v15;
    v20 = v6;
  }

  v22 = 0.0;
  if (isRightHandDrive)
  {
    v22 = v15;
  }

  retstr->var0.origin.x = v20;
  retstr->var0.origin.y = v8;
  retstr->var0.size.width = v10 + 22.0;
  retstr->var0.size.height = v12;
  retstr->var1.origin.x = v22;
  retstr->var1.origin.y = 0.0;
  retstr->var1.size.width = 22.0;
  retstr->var1.size.height = v12;
  retstr->var2.origin.x = v21;
  retstr->var2.origin.y = 0.0;
  retstr->var2.size.width = 22.0 + 22.0;
  retstr->var2.size.height = v12;
  return result;
}

- (void)_updateHomeViewControllerVisible:(BOOL)visible
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __66__DBDashboardRootViewController__updateHomeViewControllerVisible___block_invoke;
  v3[3] = &unk_278F017F8;
  v3[4] = self;
  visibleCopy = visible;
  [MEMORY[0x277D75D18] animateWithDuration:v3 animations:0.25];
}

void __66__DBDashboardRootViewController__updateHomeViewControllerVisible___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) homeViewController];
  v2 = [v5 view];
  v3 = v2;
  v4 = 0.0;
  if (*(a1 + 40))
  {
    v4 = 1.0;
  }

  [v2 setAlpha:v4];
}

- (BOOL)_shouldConsiderHomeScreenActive
{
  currentBaseViewController = [(DBDashboardRootViewController *)self currentBaseViewController];
  if (currentBaseViewController)
  {
    v4 = 0;
  }

  else
  {
    currentStackedViewController = [(DBDashboardRootViewController *)self currentStackedViewController];
    v4 = currentStackedViewController == 0;
  }

  return v4;
}

- (void)_updateHomeVCForegroundAndActive
{
  currentBaseViewController = [(DBDashboardRootViewController *)self currentBaseViewController];
  v4 = currentBaseViewController == 0;

  homeViewController = [(DBDashboardRootViewController *)self homeViewController];
  [homeViewController setForeground:v4];

  homeViewController2 = [(DBDashboardRootViewController *)self homeViewController];
  [homeViewController2 setActive:v4];

  homeViewController3 = [(DBDashboardRootViewController *)self homeViewController];
  [homeViewController3 setAccessibilityElementsActive:{-[DBDashboardRootViewController _shouldConsiderHomeScreenActive](self, "_shouldConsiderHomeScreenActive")}];
}

- (void)_presentBaseViewController:(id)controller animated:(BOOL)animated launchSource:(unint64_t)source completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__DBDashboardRootViewController__presentBaseViewController_animated_launchSource_completion___block_invoke;
  aBlock[3] = &unk_278F02D40;
  aBlock[4] = self;
  v11 = completionCopy;
  v109 = v11;
  v12 = _Block_copy(aBlock);
  [(DBDashboardRootViewController *)self setCurrentBaseViewController:controllerCopy];
  baseContainerView = [(DBDashboardRootViewController *)self baseContainerView];
  [baseContainerView setHidden:0];

  [(DBDashboardRootViewController *)self _updateCurrentViewState];
  view = [controllerCopy view];
  environment = [(DBDashboardRootViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];

  presentsUnderStatusBar = [controllerCopy presentsUnderStatusBar];
  presentsFullScreen = [controllerCopy presentsFullScreen];
  v19 = 0.0;
  if ((presentsFullScreen & 1) == 0 && (presentsUnderStatusBar & 1) == 0)
  {
    if ([environmentConfiguration isStatusBarDriveSide])
    {
      isRightHandDrive = [environmentConfiguration isRightHandDrive];
      [(DBDashboardRootViewController *)self layoutEngine];
      v20 = v11;
      v21 = controllerCopy;
      v22 = animatedCopy;
      v23 = presentsUnderStatusBar;
      v25 = v24 = environmentConfiguration;
      [v25 dockShortAxisLength];
      v19 = v26;

      environmentConfiguration = v24;
      presentsUnderStatusBar = v23;
      animatedCopy = v22;
      controllerCopy = v21;
      v11 = v20;
      if (isRightHandDrive)
      {
        v19 = 0.0;
      }
    }
  }

  if (presentsFullScreen)
  {
    [(DBDashboardRootViewController *)self view];
  }

  else
  {
    [(DBDashboardRootViewController *)self baseContainerView];
  }
  v27 = ;
  v102 = MEMORY[0x277D85DD0];
  v103 = 3221225472;
  v104 = __93__DBDashboardRootViewController__presentBaseViewController_animated_launchSource_completion___block_invoke_2;
  v105 = &unk_278F03520;
  v28 = view;
  v106 = v28;
  v107 = v27;
  v90 = v107;
  [DBDashboardRootViewController bs_addChildViewController:"bs_addChildViewController:withSuperview:animated:transitionBlock:" withSuperview:controllerCopy animated:? transitionBlock:?];
  if (!animatedCopy)
  {
    [(DBDashboardRootViewController *)self _updateHomeViewControllerVisible:0];
    backgroundBlurView = [(DBDashboardRootViewController *)self backgroundBlurView];
    [backgroundBlurView setHidden:0];

    viewStateObservers = [(DBDashboardRootViewController *)self viewStateObservers];
    identifier = [controllerCopy identifier];
    [viewStateObservers dashboardRootViewController:self didUpdateActiveBundleIdentifier:identifier animated:0];

    v12[2](v12);
    goto LABEL_36;
  }

  v85 = v12;
  v29 = [controllerCopy presentationViewWithIdentifier:@"kCARHomeToAppAnimationIdentifier"];
  if (!v29)
  {
    v30 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [(DBDashboardRootViewController *)v30 _presentBaseViewController:v31 animated:v32 launchSource:v33 completion:v34, v35, v36, v37];
    }

    v29 = objc_alloc_init(MEMORY[0x277D75D18]);
  }

  v86 = v11;
  homeViewController = [(DBDashboardRootViewController *)self homeViewController];
  view2 = [homeViewController view];

  v39 = objc_alloc_init(MEMORY[0x277D75D18]);
  if (presentsFullScreen)
  {
    view3 = [(DBDashboardRootViewController *)self view];
    [view3 addSubview:v39];

    view4 = [(DBDashboardRootViewController *)self view];
LABEL_19:
    contentView2 = view4;
    [view4 bounds];
    v19 = v48;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    goto LABEL_27;
  }

  contentView = [(DBDashboardRootViewController *)self contentView];
  stackedPrimaryDockBackgroundView = [(DBDashboardRootViewController *)self stackedPrimaryDockBackgroundView];
  [contentView insertSubview:v39 belowSubview:stackedPrimaryDockBackgroundView];

  if (presentsUnderStatusBar)
  {
    view4 = [(DBDashboardRootViewController *)self contentView];
    goto LABEL_19;
  }

  layoutEngine = [(DBDashboardRootViewController *)self layoutEngine];
  [layoutEngine dockShortAxisLength];
  v57 = v56;

  if ([environmentConfiguration isStatusBarDriveSide])
  {
    contentView2 = [(DBDashboardRootViewController *)self contentView];
    [contentView2 bounds];
    v52 = v58 - v57;
    contentView3 = [(DBDashboardRootViewController *)self contentView];
    [contentView3 bounds];
    v54 = v60;
    v50 = 0.0;
  }

  else
  {
    if ([environmentConfiguration currentStatusBarEdge] == 3)
    {
      v50 = v57;
    }

    else
    {
      v50 = 0.0;
    }

    contentView2 = [(DBDashboardRootViewController *)self contentView];
    [contentView2 bounds];
    v52 = v61;
    contentView3 = [(DBDashboardRootViewController *)self contentView];
    [contentView3 bounds];
    v54 = v62 - v57;
  }

LABEL_27:
  [v39 setFrame:{v19, v50, v52, v54}];
  identifier2 = [controllerCopy identifier];
  v83 = v28;
  if (source == 3)
  {
    homeViewController2 = [(DBDashboardRootViewController *)self homeViewController];
    v65 = homeViewController2;
    v66 = identifier2;
  }

  else
  {
    if (source != 2)
    {
      v67 = 0;
      goto LABEL_33;
    }

    homeViewController2 = [(DBDashboardRootViewController *)self homeViewController];
    v65 = homeViewController2;
    v66 = *MEMORY[0x277CF8FC8];
  }

  v67 = [homeViewController2 visibleIconViewForIdentifier:{v66, view2}];

LABEL_33:
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v67 iconImageInfo];
  v70 = v69;
  v71 = [standardUserDefaults objectForKey:@"CARCornerRadius"];

  v84 = environmentConfiguration;
  if (v71)
  {
    [standardUserDefaults floatForKey:@"CARCornerRadius"];
    v70 = v72;
  }

  viewStateObservers2 = [(DBDashboardRootViewController *)self viewStateObservers];
  [viewStateObservers2 dashboardRootViewController:self didUpdateActiveBundleIdentifier:identifier2 animated:1];

  v95[0] = MEMORY[0x277D85DD0];
  v95[1] = 3221225472;
  v95[2] = __93__DBDashboardRootViewController__presentBaseViewController_animated_launchSource_completion___block_invoke_303;
  v95[3] = &unk_278F03548;
  v96 = v67;
  v97 = v29;
  v74 = v39;
  v98 = v74;
  v99 = v82;
  selfCopy = self;
  v101 = v70;
  v88 = v82;
  v75 = v29;
  v76 = v67;
  v77 = [_TtC9DashBoard20DBHomeToAppAnimation animationWithSettings:v95];
  [controllerCopy view];
  v79 = v78 = identifier2;
  [v79 setHidden:1];

  [(DBDashboardRootViewController *)self _updateHomeViewControllerVisible:0];
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 3221225472;
  v91[2] = __93__DBDashboardRootViewController__presentBaseViewController_animated_launchSource_completion___block_invoke_2_305;
  v91[3] = &unk_278F03570;
  v12 = v85;
  v94 = v85;
  v91[4] = self;
  v92 = controllerCopy;
  v93 = v74;
  v80 = v74;
  [v77 startAnimationWithCompletion:v91];

  v11 = v86;
  v28 = v83;
  environmentConfiguration = v84;
LABEL_36:
}

uint64_t __93__DBDashboardRootViewController__presentBaseViewController_animated_launchSource_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateHomeScreenLayoutElementIfNeeded];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __93__DBDashboardRootViewController__presentBaseViewController_animated_launchSource_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v18 = a2;
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = MEMORY[0x277CCAAD0];
  v17 = [*(a1 + 32) leftAnchor];
  v16 = [*(a1 + 40) leftAnchor];
  v15 = [v17 constraintEqualToAnchor:v16];
  v19[0] = v15;
  v4 = [*(a1 + 32) rightAnchor];
  v5 = [*(a1 + 40) rightAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];
  v19[1] = v6;
  v7 = [*(a1 + 32) topAnchor];
  v8 = [*(a1 + 40) topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v19[2] = v9;
  v10 = [*(a1 + 32) bottomAnchor];
  v11 = [*(a1 + 40) bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v19[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];
  [v14 activateConstraints:v13];

  v18[2]();
}

void __93__DBDashboardRootViewController__presentBaseViewController_animated_launchSource_completion___block_invoke_303(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setIconView:v3];
  [v5 setToView:*(a1 + 40)];
  [v5 setToTransitionContainerView:*(a1 + 48)];
  [v5 setFromView:*(a1 + 56)];
  [v5 setFromTransitionContainerView:0];
  v4 = [*(a1 + 64) backgroundView];
  [v5 setRootContainerView:v4];

  [v5 setDbCornerRadius:*(a1 + 72)];
}

uint64_t __93__DBDashboardRootViewController__presentBaseViewController_animated_launchSource_completion___block_invoke_2_305(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  v2 = [*(a1 + 32) backgroundBlurView];
  [v2 setHidden:0];

  v3 = [*(a1 + 40) view];
  [v3 setHidden:0];

  [*(a1 + 40) invalidatePresentationViewForIdentifier:@"kCARHomeToAppAnimationIdentifier"];
  v4 = *(a1 + 48);

  return [v4 removeFromSuperview];
}

- (void)_dismissViewController:(id)controller andPresentBaseViewController:(id)viewController animated:(BOOL)animated completion:(id)completion
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  completionCopy = completion;
  v11 = controllerCopy;
  environment = [(DBDashboardRootViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];

  [(DBDashboardRootViewController *)self setCurrentBaseViewController:viewControllerCopy];
  baseContainerView = [(DBDashboardRootViewController *)self baseContainerView];
  [baseContainerView setHidden:0];

  view = [viewControllerCopy view];
  presentsUnderStatusBar = [viewControllerCopy presentsUnderStatusBar];
  v17 = 0.0;
  if ((presentsUnderStatusBar & 1) == 0)
  {
    if ([environmentConfiguration isStatusBarDriveSide])
    {
      isRightHandDrive = [environmentConfiguration isRightHandDrive];
      layoutEngine = [(DBDashboardRootViewController *)self layoutEngine];
      [layoutEngine dockShortAxisLength];
      v17 = v20;

      if (isRightHandDrive)
      {
        v17 = 0.0;
      }
    }
  }

  baseContainerView2 = [(DBDashboardRootViewController *)self baseContainerView];
  v103[0] = MEMORY[0x277D85DD0];
  v103[1] = 3221225472;
  v103[2] = __105__DBDashboardRootViewController__dismissViewController_andPresentBaseViewController_animated_completion___block_invoke;
  v103[3] = &unk_278F03520;
  v89 = view;
  v104 = v89;
  selfCopy = self;
  [(DBDashboardRootViewController *)self bs_addChildViewController:viewControllerCopy withSuperview:baseContainerView2 animated:0 transitionBlock:v103];

  view2 = [viewControllerCopy view];
  [view2 setHidden:1];

  v23 = [v11 presentationViewWithIdentifier:@"kCARAppToAppAnimationIdentifier"];
  if (!v23)
  {
    v24 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(DBDashboardRootViewController *)v24 _dismissViewController:v25 andPresentBaseViewController:v26 animated:v27 completion:v28, v29, v30, v31];
    }

    v23 = objc_alloc_init(MEMORY[0x277D75D18]);
  }

  v32 = [viewControllerCopy presentationViewWithIdentifier:@"kCARAppToAppAnimationIdentifier"];
  if (!v32)
  {
    v33 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [(DBDashboardRootViewController *)v33 _dismissViewController:v34 andPresentBaseViewController:v35 animated:v36 completion:v37, v38, v39, v40];
    }

    v32 = objc_alloc_init(MEMORY[0x277D75D18]);
  }

  v41 = objc_alloc_init(MEMORY[0x277D75D18]);
  contentView = [(DBDashboardRootViewController *)self contentView];
  stackedPrimaryDockBackgroundView = [(DBDashboardRootViewController *)self stackedPrimaryDockBackgroundView];
  [contentView insertSubview:v41 belowSubview:stackedPrimaryDockBackgroundView];

  layoutEngine2 = [(DBDashboardRootViewController *)self layoutEngine];
  [layoutEngine2 dockShortAxisLength];
  v46 = v45;

  if (presentsUnderStatusBar)
  {
    contentView2 = [(DBDashboardRootViewController *)self contentView];
    [contentView2 bounds];
    v17 = v48;
    v50 = v49;
    v52 = v51;
    v54 = v53;
  }

  else
  {
    if ([environmentConfiguration isStatusBarDriveSide])
    {
      contentView2 = [(DBDashboardRootViewController *)self contentView];
      [contentView2 bounds];
      v52 = v55 - v46;
      contentView3 = [(DBDashboardRootViewController *)self contentView];
      [contentView3 bounds];
      v54 = v57;
      v50 = 0.0;
    }

    else
    {
      if ([environmentConfiguration currentStatusBarEdge] == 3)
      {
        v50 = v46;
      }

      else
      {
        v50 = 0.0;
      }

      contentView2 = [(DBDashboardRootViewController *)self contentView];
      [contentView2 bounds];
      v52 = v58;
      contentView3 = [(DBDashboardRootViewController *)self contentView];
      [contentView3 bounds];
      v54 = v59 - v46;
    }
  }

  [v41 setFrame:{v17, v50, v52, v54}];
  if ([v11 presentsUnderStatusBar])
  {
    contentView4 = [(DBDashboardRootViewController *)self contentView];
    [contentView4 bounds];
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;
  }

  else
  {
    v62 = 0.0;
    if (([environmentConfiguration isRightHandDrive] & 1) == 0)
    {
      if ([environmentConfiguration isStatusBarDriveSide])
      {
        v62 = v46;
      }

      else
      {
        v62 = 0.0;
      }
    }

    if ([environmentConfiguration isStatusBarDriveSide])
    {
      contentView4 = [(DBDashboardRootViewController *)self contentView];
      [contentView4 bounds];
      v66 = v69 - v46;
      contentView5 = [(DBDashboardRootViewController *)self contentView];
      [contentView5 bounds];
      v68 = v71;
      v64 = 0.0;
    }

    else
    {
      if ([environmentConfiguration currentStatusBarEdge] == 3)
      {
        v64 = v46;
      }

      else
      {
        v64 = 0.0;
      }

      contentView4 = [(DBDashboardRootViewController *)self contentView];
      [contentView4 bounds];
      v66 = v72;
      contentView5 = [(DBDashboardRootViewController *)self contentView];
      [contentView5 bounds];
      v68 = v73 - v46;
    }
  }

  v74 = objc_alloc_init(MEMORY[0x277D75D18]);
  contentView6 = [(DBDashboardRootViewController *)self contentView];
  stackedPrimaryDockBackgroundView2 = [(DBDashboardRootViewController *)self stackedPrimaryDockBackgroundView];
  [contentView6 insertSubview:v74 belowSubview:stackedPrimaryDockBackgroundView2];

  [v74 setFrame:{v62, v64, v66, v68}];
  viewStateObservers = [(DBDashboardRootViewController *)self viewStateObservers];
  identifier = [viewControllerCopy identifier];
  [viewStateObservers dashboardRootViewController:self didUpdateActiveBundleIdentifier:identifier animated:1];

  v97[0] = MEMORY[0x277D85DD0];
  v97[1] = 3221225472;
  v97[2] = __105__DBDashboardRootViewController__dismissViewController_andPresentBaseViewController_animated_completion___block_invoke_307;
  v97[3] = &unk_278F03598;
  v98 = v32;
  v79 = v41;
  v99 = v79;
  v100 = v23;
  v80 = v74;
  v101 = v80;
  selfCopy2 = self;
  v81 = v23;
  v82 = v32;
  v83 = [_TtC9DashBoard19DBAppToAppAnimation animationWithSettings:v97];
  [(DBDashboardRootViewController *)self _updateCurrentViewState];
  [v11 deactivateSceneWithReasonMask:32];
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 3221225472;
  v91[2] = __105__DBDashboardRootViewController__dismissViewController_andPresentBaseViewController_animated_completion___block_invoke_2;
  v91[3] = &unk_278F035C0;
  v91[4] = self;
  v92 = v11;
  v93 = viewControllerCopy;
  v94 = v79;
  v95 = v80;
  v96 = completionCopy;
  v84 = completionCopy;
  v85 = v80;
  v86 = v79;
  v87 = viewControllerCopy;
  v88 = v11;
  [v83 startAnimationWithCompletion:v91];
}

void __105__DBDashboardRootViewController__dismissViewController_andPresentBaseViewController_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v22 = a2;
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = MEMORY[0x277CCAAD0];
  v20 = [*(a1 + 32) leftAnchor];
  v21 = [*(a1 + 40) baseContainerView];
  v19 = [v21 leftAnchor];
  v18 = [v20 constraintEqualToAnchor:v19];
  v23[0] = v18;
  v16 = [*(a1 + 32) rightAnchor];
  v17 = [*(a1 + 40) baseContainerView];
  v15 = [v17 rightAnchor];
  v4 = [v16 constraintEqualToAnchor:v15];
  v23[1] = v4;
  v5 = [*(a1 + 32) topAnchor];
  v6 = [*(a1 + 40) baseContainerView];
  v7 = [v6 topAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];
  v23[2] = v8;
  v9 = [*(a1 + 32) bottomAnchor];
  v10 = [*(a1 + 40) baseContainerView];
  v11 = [v10 bottomAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v23[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  [v14 activateConstraints:v13];

  v22[2]();
}

void __105__DBDashboardRootViewController__dismissViewController_andPresentBaseViewController_animated_completion___block_invoke_307(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setToView:v3];
  [v4 setToTransitionContainerView:*(a1 + 40)];
  [v4 setFromView:*(a1 + 48)];
  [v4 setFromTransitionContainerView:*(a1 + 56)];
  v5 = [*(a1 + 64) backgroundView];
  [v4 setRootContainerView:v5];
}

uint64_t __105__DBDashboardRootViewController__dismissViewController_andPresentBaseViewController_animated_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) bs_removeChildViewController:*(a1 + 40) animated:0 transitionBlock:0];
  [*(a1 + 40) invalidatePresentationViewForIdentifier:@"kCARAppToAppAnimationIdentifier"];
  v2 = [*(a1 + 48) view];
  [v2 setHidden:0];

  [*(a1 + 48) invalidatePresentationViewForIdentifier:@"kCARAppToAppAnimationIdentifier"];
  [*(a1 + 56) removeFromSuperview];
  [*(a1 + 64) removeFromSuperview];
  [*(a1 + 40) backgroundSceneWithCompletion:*(a1 + 72)];
  v3 = *(a1 + 40);

  return [v3 deactivateSceneWithReasonMask:0];
}

- (void)_dismissBaseViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  currentBaseViewController = [(DBDashboardRootViewController *)self currentBaseViewController];
  homeViewController = [(DBDashboardRootViewController *)self homeViewController];
  folderController = [homeViewController folderController];
  contentView = [folderController contentView];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__DBDashboardRootViewController__dismissBaseViewControllerAnimated_completion___block_invoke;
  aBlock[3] = &unk_278F035E8;
  aBlock[4] = self;
  v11 = currentBaseViewController;
  v98 = v11;
  v12 = completionCopy;
  v100 = v12;
  v13 = contentView;
  v99 = v13;
  v14 = _Block_copy(aBlock);
  [(DBDashboardRootViewController *)self setCurrentBaseViewController:0];
  [(DBDashboardRootViewController *)self _updateCurrentViewState];
  currentStackedViewController = [(DBDashboardRootViewController *)self currentStackedViewController];

  if (!currentStackedViewController)
  {
    [(DBDashboardRootViewController *)self _updateHomeViewControllerVisible:1];
    backgroundBlurView = [(DBDashboardRootViewController *)self backgroundBlurView];
    [backgroundBlurView setHidden:1];
  }

  if (animatedCopy)
  {
    environment = [(DBDashboardRootViewController *)self environment];
    environmentConfiguration = [environment environmentConfiguration];

    v19 = [v11 presentationViewWithIdentifier:@"kCARAppToHomeAnimationIdentifier"];
    if (!v19)
    {
      v20 = DBLogForCategory(8uLL);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(DBDashboardRootViewController *)v20 _dismissBaseViewControllerAnimated:v21 completion:v22, v23, v24, v25, v26, v27];
      }

      v19 = objc_alloc_init(MEMORY[0x277D75D18]);
    }

    homeViewController2 = [(DBDashboardRootViewController *)self homeViewController];
    view = [homeViewController2 view];

    v29 = objc_alloc_init(MEMORY[0x277D75D18]);
    contentView2 = [(DBDashboardRootViewController *)self contentView];
    [contentView2 addSubview:v29];

    v76 = environmentConfiguration;
    v77 = v12;
    if ([v11 presentsUnderStatusBar])
    {
      contentView3 = [(DBDashboardRootViewController *)self contentView];
      [contentView3 bounds];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;
    }

    else
    {
      layoutEngine = [(DBDashboardRootViewController *)self layoutEngine];
      [layoutEngine dockShortAxisLength];
      v43 = v42;

      v33 = 0.0;
      if ([environmentConfiguration isStatusBarDriveSide])
      {
        if ([environmentConfiguration isRightHandDrive])
        {
          v33 = 0.0;
        }

        else
        {
          v33 = v43;
        }
      }

      if ([environmentConfiguration isStatusBarDriveSide])
      {
        contentView3 = [(DBDashboardRootViewController *)self contentView];
        [contentView3 bounds];
        v37 = v44 - v43;
        contentView4 = [(DBDashboardRootViewController *)self contentView];
        [contentView4 bounds];
        v39 = v46;
        v35 = 0.0;
      }

      else
      {
        if ([environmentConfiguration currentStatusBarEdge] == 3)
        {
          v35 = v43;
        }

        else
        {
          v35 = 0.0;
        }

        contentView3 = [(DBDashboardRootViewController *)self contentView];
        [contentView3 bounds];
        v37 = v47;
        contentView4 = [(DBDashboardRootViewController *)self contentView];
        [contentView4 bounds];
        v39 = v48 - v43;
      }
    }

    [v29 setFrame:{v33, v35, v37, v39}];
    homeViewController3 = [(DBDashboardRootViewController *)self homeViewController];
    identifier = [v11 identifier];
    v51 = [homeViewController3 visibleIconViewForIdentifier:identifier];

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v53 = [standardUserDefaults objectForKey:@"CARCornerRadius"];

    if (v53)
    {
      [standardUserDefaults floatForKey:@"CARCornerRadius"];
      v55 = v54;
    }

    else
    {
      v55 = 13.0;
    }

    viewStateObservers = [(DBDashboardRootViewController *)self viewStateObservers];
    [viewStateObservers dashboardRootViewController:self didUpdateActiveBundleIdentifier:0 animated:1];

    v90[0] = MEMORY[0x277D85DD0];
    v90[1] = 3221225472;
    v90[2] = __79__DBDashboardRootViewController__dismissBaseViewControllerAnimated_completion___block_invoke_310;
    v90[3] = &unk_278F03610;
    v91 = v51;
    v57 = v29;
    v92 = v57;
    v93 = view;
    v94 = v19;
    selfCopy = self;
    v96 = v55;
    v73 = v19;
    v75 = view;
    v58 = v51;
    v59 = [_TtC9DashBoard20DBAppToHomeAnimation animationWithSettings:v90];
    view2 = [v11 view];
    [view2 setHidden:1];

    [v11 deactivateSceneWithReasonMask:32];
    homeViewController4 = [(DBDashboardRootViewController *)self homeViewController];
    folderController2 = [homeViewController4 folderController];
    [v13 _scrollOffsetForPageAtIndex:{objc_msgSend(folderController2, "currentPageIndex")}];
    v64 = v63;
    v66 = v65;

    [v57 frame];
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __79__DBDashboardRootViewController__dismissBaseViewControllerAnimated_completion___block_invoke_2;
    v82[3] = &unk_278F03638;
    v84 = v64;
    v85 = v66;
    v86 = v67;
    v87 = v68;
    v88 = v69;
    v89 = v70;
    v71 = v57;
    v83 = v71;
    [v13 setDidScrollHandler:v82];
    [(DBDashboardRootViewController *)self _updateHomeVCForegroundAndActive];
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __79__DBDashboardRootViewController__dismissBaseViewControllerAnimated_completion___block_invoke_3;
    v78[3] = &unk_278F03660;
    v81 = v14;
    v79 = v11;
    v80 = v71;
    v72 = v71;
    [v59 startAnimationWithCompletion:v78];

    v12 = v77;
  }

  else
  {
    viewStateObservers2 = [(DBDashboardRootViewController *)self viewStateObservers];
    [viewStateObservers2 dashboardRootViewController:self didUpdateActiveBundleIdentifier:0 animated:0];

    v14[2](v14);
  }
}

uint64_t __79__DBDashboardRootViewController__dismissBaseViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) bs_removeChildViewController:*(a1 + 40) animated:0 transitionBlock:0];
  v2 = [*(a1 + 32) baseContainerView];
  [v2 setHidden:1];

  [*(a1 + 32) _updateHomeScreenLayoutElementIfNeeded];
  [*(a1 + 40) backgroundSceneWithCompletion:*(a1 + 56)];
  v3 = *(a1 + 48);

  return [v3 setDidScrollHandler:0];
}

void __79__DBDashboardRootViewController__dismissBaseViewControllerAnimated_completion___block_invoke_310(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setIconView:v3];
  [v5 setFromTransitionContainerView:*(a1 + 40)];
  [v5 setToView:*(a1 + 48)];
  [v5 setFromView:*(a1 + 56)];
  [v5 setToTransitionContainerView:0];
  v4 = [*(a1 + 64) backgroundView];
  [v5 setRootContainerView:v4];

  [v5 setDbCornerRadius:*(a1 + 72)];
}

uint64_t __79__DBDashboardRootViewController__dismissBaseViewControllerAnimated_completion___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) deactivateSceneWithReasonMask:0];
  [*(a1 + 32) invalidatePresentationViewForIdentifier:@"kCARAppToHomeAnimationIdentifier"];
  v2 = *(a1 + 40);

  return [v2 removeFromSuperview];
}

- (void)_presentStackedViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__DBDashboardRootViewController__presentStackedViewController_animated_completion___block_invoke;
  aBlock[3] = &unk_278F02D40;
  aBlock[4] = self;
  v10 = completionCopy;
  v90 = v10;
  v72 = _Block_copy(aBlock);
  stackedContainerView = [(DBDashboardRootViewController *)self stackedContainerView];
  [stackedContainerView setHidden:0];

  view = [controllerCopy view];
  environment = [(DBDashboardRootViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];

  presentsUnderStatusBar = [controllerCopy presentsUnderStatusBar];
  layoutEngine = [(DBDashboardRootViewController *)self layoutEngine];
  [layoutEngine dockShortAxisLength];
  v18 = v17;

  v19 = 0.0;
  if (presentsUnderStatusBar)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = 0.0;
    if ([environmentConfiguration isStatusBarDriveSide])
    {
      isRightHandDrive = [environmentConfiguration isRightHandDrive];
      if (isRightHandDrive)
      {
        v19 = -v18;
      }

      else
      {
        v19 = 0.0;
      }

      if (isRightHandDrive)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = v18;
      }
    }
  }

  stackedContainerView2 = [(DBDashboardRootViewController *)self stackedContainerView];
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __83__DBDashboardRootViewController__presentStackedViewController_animated_completion___block_invoke_2;
  v84[3] = &unk_278F03688;
  v23 = view;
  v85 = v23;
  selfCopy = self;
  v87 = v20;
  v88 = v19;
  [(DBDashboardRootViewController *)self bs_addChildViewController:controllerCopy withSuperview:stackedContainerView2 animated:0 transitionBlock:v84];

  [(DBDashboardRootViewController *)self setCurrentStackedViewController:controllerCopy];
  [(DBDashboardRootViewController *)self _updateCurrentViewState];
  entity = [controllerCopy entity];
  isSiriEntity = [entity isSiriEntity];

  entity2 = [controllerCopy entity];
  isOEMPunchthroughEntity = [entity2 isOEMPunchthroughEntity];

  v73 = environmentConfiguration;
  if (isOEMPunchthroughEntity)
  {
    objc_opt_class();
    v28 = controllerCopy;
    if (v28 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v29 = +[_TtC9DashBoard14DBAssetLibrary shared];
      [v28 oemPunchthroughIdentifier];
      v71 = presentsUnderStatusBar;
      v30 = isSiriEntity;
      v31 = animatedCopy;
      v32 = v23;
      v34 = v33 = v10;
      v35 = [v29 shouldHideBackgroundWithIdentifier:v34];

      v10 = v33;
      v23 = v32;
      animatedCopy = v31;
      LOBYTE(v31) = v30;
      presentsUnderStatusBar = v71;

      isSiriEntity = v35 | v31;
      environmentConfiguration = v73;
    }
  }

  if (animatedCopy)
  {
    v36 = [controllerCopy presentationViewWithIdentifier:@"kCARToStackedAppAnimationIdentifier"];
    if (!v36)
    {
      v37 = DBLogForCategory(8uLL);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [(DBDashboardRootViewController *)v37 _presentStackedViewController:v38 animated:v39 completion:v40, v41, v42, v43, v44];
      }

      v36 = objc_alloc_init(MEMORY[0x277D75D18]);
    }

    v45 = objc_alloc_init(MEMORY[0x277D75D18]);
    contentView = [(DBDashboardRootViewController *)self contentView];
    [contentView addSubview:v45];

    if (presentsUnderStatusBar)
    {
      contentView2 = [(DBDashboardRootViewController *)self contentView];
      [contentView2 bounds];
      v20 = v48;
      v50 = v49;
      v52 = v51;
      v54 = v53;
    }

    else
    {
      if ([environmentConfiguration isStatusBarDriveSide])
      {
        contentView2 = [(DBDashboardRootViewController *)self contentView];
        [contentView2 bounds];
        v52 = v59 - v18;
        contentView3 = [(DBDashboardRootViewController *)self contentView];
        [contentView3 bounds];
        v54 = v61;
        v50 = 0.0;
      }

      else
      {
        if ([environmentConfiguration currentStatusBarEdge] == 3)
        {
          v50 = v18;
        }

        else
        {
          v50 = 0.0;
        }

        contentView2 = [(DBDashboardRootViewController *)self contentView];
        [contentView2 bounds];
        v52 = v62;
        contentView3 = [(DBDashboardRootViewController *)self contentView];
        [contentView3 bounds];
        v54 = v63 - v18;
      }
    }

    [v45 setFrame:{v20, v50, v52, v54}];
    viewStateObservers = [(DBDashboardRootViewController *)self viewStateObservers];
    identifier = [controllerCopy identifier];
    [viewStateObservers dashboardRootViewController:self didUpdateActiveBundleIdentifier:identifier animated:1];

    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __83__DBDashboardRootViewController__presentStackedViewController_animated_completion___block_invoke_316;
    v80[3] = &unk_278F036B0;
    v66 = v45;
    v81 = v66;
    v82 = v36;
    selfCopy2 = self;
    v67 = v36;
    v68 = [_TtC9DashBoard23DBToStackedAppAnimation animationWithSettings:v80];
    view2 = [controllerCopy view];
    [view2 setHidden:1];

    if ((isSiriEntity & 1) == 0)
    {
      [(DBDashboardRootViewController *)self _updateHomeViewControllerVisible:0];
    }

    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __83__DBDashboardRootViewController__presentStackedViewController_animated_completion___block_invoke_2_318;
    v74[3] = &unk_278F036D8;
    v75 = controllerCopy;
    v76 = v66;
    v79 = (isSiriEntity ^ 1) & 1;
    selfCopy3 = self;
    v58 = v72;
    v78 = v72;
    v70 = v66;
    [v68 startAnimationWithCompletion:v74];
  }

  else
  {
    if ((isSiriEntity & 1) == 0)
    {
      [(DBDashboardRootViewController *)self _updateHomeViewControllerVisible:0];
      backgroundBlurView = [(DBDashboardRootViewController *)self backgroundBlurView];
      [backgroundBlurView setHidden:0];
    }

    viewStateObservers2 = [(DBDashboardRootViewController *)self viewStateObservers];
    identifier2 = [controllerCopy identifier];
    [viewStateObservers2 dashboardRootViewController:self didUpdateActiveBundleIdentifier:identifier2 animated:0];

    v58 = v72;
    v72[2](v72);
  }
}

uint64_t __83__DBDashboardRootViewController__presentStackedViewController_animated_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateHomeScreenLayoutElementIfNeeded];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __83__DBDashboardRootViewController__presentStackedViewController_animated_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v22 = a2;
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = MEMORY[0x277CCAAD0];
  v20 = [*(a1 + 32) leftAnchor];
  v21 = [*(a1 + 40) stackedContainerView];
  v19 = [v21 leftAnchor];
  v18 = [v20 constraintEqualToAnchor:v19 constant:*(a1 + 48)];
  v23[0] = v18;
  v16 = [*(a1 + 32) rightAnchor];
  v17 = [*(a1 + 40) stackedContainerView];
  v14 = [v17 rightAnchor];
  v4 = [v16 constraintEqualToAnchor:v14 constant:*(a1 + 56)];
  v23[1] = v4;
  v5 = [*(a1 + 32) topAnchor];
  v6 = [*(a1 + 40) stackedContainerView];
  v7 = [v6 topAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];
  v23[2] = v8;
  v9 = [*(a1 + 32) bottomAnchor];
  v10 = [*(a1 + 40) stackedContainerView];
  v11 = [v10 bottomAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v23[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  [v15 activateConstraints:v13];

  v22[2]();
}

void __83__DBDashboardRootViewController__presentStackedViewController_animated_completion___block_invoke_316(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setToTransitionContainerView:v3];
  [v4 setToView:*(a1 + 40)];
  v5 = [*(a1 + 48) backgroundView];
  [v4 setRootContainerView:v5];
}

uint64_t __83__DBDashboardRootViewController__presentStackedViewController_animated_completion___block_invoke_2_318(uint64_t a1)
{
  [*(a1 + 32) invalidatePresentationViewForIdentifier:@"kCARToStackedAppAnimationIdentifier"];
  [*(a1 + 40) removeFromSuperview];
  if (*(a1 + 64) == 1)
  {
    v2 = [*(a1 + 48) backgroundBlurView];
    [v2 setHidden:0];
  }

  v3 = [*(a1 + 32) view];
  [v3 setHidden:0];

  v4 = *(*(a1 + 56) + 16);

  return v4();
}

- (void)_dismissStackedViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  currentBaseViewController = [(DBDashboardRootViewController *)self currentBaseViewController];

  if (currentBaseViewController)
  {
    currentBaseViewController2 = [(DBDashboardRootViewController *)self currentBaseViewController];
    [currentBaseViewController2 activateSceneWithSettings:0 completion:&__block_literal_global_22];
  }

  else
  {
    [(DBDashboardRootViewController *)self _updateHomeViewControllerVisible:1];
    currentBaseViewController2 = [(DBDashboardRootViewController *)self backgroundBlurView];
    [currentBaseViewController2 setHidden:1];
  }

  currentStackedViewController = [(DBDashboardRootViewController *)self currentStackedViewController];
  [(DBDashboardRootViewController *)self setCurrentStackedViewController:0];
  [(DBDashboardRootViewController *)self _updateCurrentViewState];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__DBDashboardRootViewController__dismissStackedViewControllerAnimated_completion___block_invoke_2;
  aBlock[3] = &unk_278F02D90;
  aBlock[4] = self;
  v10 = currentStackedViewController;
  v42 = v10;
  v11 = completionCopy;
  v43 = v11;
  v12 = _Block_copy(aBlock);
  if (animatedCopy)
  {
    v13 = [v10 presentationViewWithIdentifier:@"kCARFromStackedAppAnimationIdentifier"];
    if (!v13)
    {
      v14 = DBLogForCategory(8uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(DBDashboardRootViewController *)v14 _dismissStackedViewControllerAnimated:v15 completion:v16, v17, v18, v19, v20, v21];
      }

      v13 = objc_alloc_init(MEMORY[0x277D75D18]);
    }

    v22 = objc_alloc_init(MEMORY[0x277D75D18]);
    contentView = [(DBDashboardRootViewController *)self contentView];
    [contentView addSubview:v22];

    viewStateObservers = [(DBDashboardRootViewController *)self viewStateObservers];
    currentBaseViewController3 = [(DBDashboardRootViewController *)self currentBaseViewController];
    identifier = [currentBaseViewController3 identifier];
    [viewStateObservers dashboardRootViewController:self didUpdateActiveBundleIdentifier:identifier animated:1];

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __82__DBDashboardRootViewController__dismissStackedViewControllerAnimated_completion___block_invoke_320;
    v37[3] = &unk_278F03700;
    v38 = v13;
    v39 = v22;
    selfCopy = self;
    v27 = v22;
    v28 = v13;
    v29 = [_TtC9DashBoard25DBFromStackedAppAnimation animationWithSettings:v37];
    view = [v10 view];
    [view setHidden:1];

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __82__DBDashboardRootViewController__dismissStackedViewControllerAnimated_completion___block_invoke_2_322;
    v34[3] = &unk_278F02D40;
    v35 = v10;
    v36 = v12;
    [v29 startAnimationWithCompletion:v34];
  }

  else
  {
    viewStateObservers2 = [(DBDashboardRootViewController *)self viewStateObservers];
    currentBaseViewController4 = [(DBDashboardRootViewController *)self currentBaseViewController];
    identifier2 = [currentBaseViewController4 identifier];
    [viewStateObservers2 dashboardRootViewController:self didUpdateActiveBundleIdentifier:identifier2 animated:0];

    v12[2](v12);
  }
}

uint64_t __82__DBDashboardRootViewController__dismissStackedViewControllerAnimated_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) bs_removeChildViewController:*(a1 + 40) animated:0 transitionBlock:0];
  v2 = [*(a1 + 32) stackedContainerView];
  [v2 setHidden:1];

  [*(a1 + 32) _updateHomeScreenLayoutElementIfNeeded];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v3 backgroundSceneWithCompletion:v4];
}

void __82__DBDashboardRootViewController__dismissStackedViewControllerAnimated_completion___block_invoke_320(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setFromView:v3];
  [v4 setFromTransitionContainerView:*(a1 + 40)];
  v5 = [*(a1 + 48) backgroundView];
  [v4 setRootContainerView:v5];
}

uint64_t __82__DBDashboardRootViewController__dismissStackedViewControllerAnimated_completion___block_invoke_2_322(uint64_t a1)
{
  [*(a1 + 32) invalidatePresentationViewForIdentifier:@"kCARFromStackedAppAnimationIdentifier"];
  v2 = [*(a1 + 32) view];
  [v2 setHidden:0];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)invalidate
{
  homeViewController = [(DBDashboardRootViewController *)self homeViewController];
  [homeViewController invalidate];

  homeScreenElementAssertion = [(DBDashboardRootViewController *)self homeScreenElementAssertion];

  if (homeScreenElementAssertion)
  {
    v5 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Invalidating home screen layout element", v7, 2u);
    }

    homeScreenElementAssertion2 = [(DBDashboardRootViewController *)self homeScreenElementAssertion];
    [homeScreenElementAssertion2 invalidate];

    [(DBDashboardRootViewController *)self setHomeScreenElementAssertion:0];
  }

  [(DBDashboardRootViewController *)self setInvalidated:1];
}

- (id)preferredFocusEnvironments
{
  v5[1] = *MEMORY[0x277D85DE8];
  homeViewController = [(DBDashboardRootViewController *)self homeViewController];
  v5[0] = homeViewController;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)_createCornerRadiusView
{
  v2 = objc_alloc(MEMORY[0x277CF9170]);
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:clearColor];

  layer = [v3 layer];
  [layer setShadowOpacity:0.0];

  layer2 = [v3 layer];
  [layer2 setAllowsHitTesting:0];

  return v3;
}

- (id)_createMaskView
{
  v2 = objc_alloc(MEMORY[0x277CF9170]);
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [v3 setBackgroundColor:blackColor];

  layer = [v3 layer];
  [layer setCornerRadius:22.0];

  v6 = *MEMORY[0x277CDA138];
  layer2 = [v3 layer];
  [layer2 setCornerCurve:v6];

  v8 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA310]];
  layer3 = [v3 layer];
  [layer3 setCompositingFilter:v8];

  layer4 = [v3 layer];
  [layer4 setShadowOpacity:0.0];

  layer5 = [v3 layer];
  [layer5 setAllowsHitTesting:0];

  return v3;
}

@end