@interface DBDashboardRootViewController
- ($E1FBA45956547A31D86368594325CA17)primaryDockWindowFrameWithCornerMask;
- ($E1FBA45956547A31D86368594325CA17)secondaryDockWindowFrameWithCornerMask;
- (BOOL)_isDualStatusBarLayout;
- (BOOL)_shouldConsiderHomeScreenActive;
- (CGRect)primaryDockWindowFrame;
- (CGRect)secondaryDockWindowFrame;
- (CRSWidgetLayoutVehicleDataProviding)widgetLayoutDataProvider;
- (DBDashboardRootViewController)initWithEnvironment:(id)a3 windowScene:(id)a4 layoutEngine:(id)a5;
- (DBEnvironment)environment;
- (UIView)stackedPrimaryDockBackgroundView;
- (UIView)stackedSecondaryDockBackgroundView;
- (id)_createCornerRadiusView;
- (id)_createMaskView;
- (id)preferredFocusEnvironments;
- (void)_dismissBaseViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)_dismissStackedViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)_dismissViewController:(id)a3 andPresentBaseViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)_presentBaseViewController:(id)a3 animated:(BOOL)a4 launchSource:(unint64_t)a5 completion:(id)a6;
- (void)_presentStackedViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_updateCurrentViewState;
- (void)_updateHomeConstraints;
- (void)_updateHomeScreenLayoutElementIfNeeded;
- (void)_updateHomeVCForegroundAndActive;
- (void)_updateHomeViewControllerVisible:(BOOL)a3;
- (void)addViewStateObserver:(id)a3;
- (void)dismissBaseViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)dockDidChangeInterfaceStyle:(int64_t)a3 colorVariant:(int64_t)a4 isSiriPresentation:(BOOL)a5;
- (void)handleEvent:(id)a3;
- (void)invalidate;
- (void)loadView;
- (void)presentBaseViewController:(id)a3 animated:(BOOL)a4 launchSource:(unint64_t)a5 completion:(id)a6;
- (void)presentStackedViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)removeViewStateObserver:(id)a3;
- (void)setAlwaysDarkInterface:(BOOL)a3;
- (void)setContentCornerRadius:(double)a3;
- (void)traitCollectionDidChange:(id)a3;
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
  v3 = [(DBDashboardRootViewController *)self currentStackedViewController];
  v4 = [v3 entity];
  v5 = [v4 isOEMPunchthroughEntity];

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v7 = [(DBDashboardRootViewController *)self currentStackedViewController];
    if (v7 && (v8 = v7, -[DBDashboardRootViewController currentStackedViewController](self, "currentStackedViewController"), v9 = objc_claimAutoreleasedReturnValue(), [v9 entity], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isSiriEntity"), v10, v9, v8, !v11))
    {
      v6 = 1;
    }

    else
    {
      v12 = [(DBDashboardRootViewController *)self currentBaseViewController];
      v6 = v12 != 0;
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

  v15 = [(DBDashboardRootViewController *)self viewStateObservers];
  [v15 dashboardRootViewController:self didChangeToViewState:v6];
}

- (void)_updateHomeScreenLayoutElementIfNeeded
{
  v3 = [(DBDashboardRootViewController *)self _shouldConsiderHomeScreenActive];
  if ([(DBDashboardRootViewController *)self invalidated]|| !v3 || ([(DBDashboardRootViewController *)self homeScreenElementAssertion], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    if (!v3)
    {
      v5 = [(DBDashboardRootViewController *)self homeScreenElementAssertion];

      if (v5)
      {
        v6 = DBLogForCategory(8uLL);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Invalidating home screen layout element", v14, 2u);
        }

        v7 = [(DBDashboardRootViewController *)self homeScreenElementAssertion];
        [v7 invalidate];

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

    v10 = [(DBDashboardRootViewController *)self environment];
    v11 = [v10 environmentConfiguration];
    v12 = [v11 displayLayoutPublisher];
    v13 = [v12 addElement:v8];
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
  v11 = [(DBDashboardRootViewController *)self stackedPrimaryDockBackgroundView];
  [(DBDashboardRootViewController *)self primaryDockWindowFrame];
  [v11 setFrame:?];

  v12 = [(DBDashboardRootViewController *)self stackedSecondaryDockBackgroundView];
  [(DBDashboardRootViewController *)self secondaryDockWindowFrame];
  [v12 setFrame:?];

  if ([(DBDashboardRootViewController *)self _isDualStatusBarLayout])
  {
    v13 = [(DBDashboardRootViewController *)self layoutEngine];
    v14 = [v13 primaryDockVariant];

    if (!v14)
    {
      [(DBDashboardRootViewController *)self primaryDockWindowFrameWithCornerMask];
      v15 = [(DBDashboardRootViewController *)self stackedPrimaryDockBackgroundView];
      [v15 setFrame:{0, 0}];

      v16 = [(DBDashboardRootViewController *)self stackedPrimaryCornerRadiusView];
      [v16 setFrame:{0, 0}];

      v17 = [(DBDashboardRootViewController *)self stackedPrimaryMaskView];
      [v17 setFrame:{0, 0}];
    }

    v18 = [(DBDashboardRootViewController *)self layoutEngine];
    v19 = [v18 secondaryDockVariant];

    if (!v19)
    {
      [(DBDashboardRootViewController *)self secondaryDockWindowFrameWithCornerMask];
      v20 = [(DBDashboardRootViewController *)self stackedSecondaryDockBackgroundView];
      [v20 setFrame:{0, 0}];

      v21 = [(DBDashboardRootViewController *)self stackedSecondaryCornerRadiusView];
      [v21 setFrame:{0, 0}];

      v22 = [(DBDashboardRootViewController *)self stackedSecondaryMaskView];
      [v22 setFrame:{0, 0}];
    }
  }
}

- (void)_updateHomeConstraints
{
  v39[4] = *MEMORY[0x277D85DE8];
  v3 = [(DBDashboardRootViewController *)self homeViewConstraints];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v5 = [(DBDashboardRootViewController *)self homeViewConstraints];
    [v4 deactivateConstraints:v5];
  }

  v6 = [(DBDashboardRootViewController *)self homeViewController];
  v7 = [v6 view];

  v8 = [(DBDashboardRootViewController *)self layoutEngine];
  [v8 homeViewControllerInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v37 = [v7 leftAnchor];
  v38 = [(DBDashboardRootViewController *)self view];
  v36 = [v38 safeAreaLayoutGuide];
  v35 = [v36 leftAnchor];
  v34 = [v37 constraintEqualToAnchor:v35 constant:v12];
  v39[0] = v34;
  v31 = [v7 rightAnchor];
  v33 = [(DBDashboardRootViewController *)self view];
  v30 = [v33 safeAreaLayoutGuide];
  v29 = [v30 rightAnchor];
  v28 = [v31 constraintEqualToAnchor:v29 constant:-v16];
  v39[1] = v28;
  v32 = v7;
  v26 = [v7 topAnchor];
  v27 = [(DBDashboardRootViewController *)self view];
  v17 = [v27 safeAreaLayoutGuide];
  v18 = [v17 topAnchor];
  v19 = [v26 constraintEqualToAnchor:v18 constant:v10];
  v39[2] = v19;
  v20 = [v7 bottomAnchor];
  v21 = [(DBDashboardRootViewController *)self view];
  v22 = [v21 safeAreaLayoutGuide];
  v23 = [v22 bottomAnchor];
  v24 = [v20 constraintEqualToAnchor:v23 constant:-v14];
  v39[3] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v25];
  [(DBDashboardRootViewController *)self setHomeViewConstraints:v25];
}

- (CGRect)primaryDockWindowFrame
{
  v3 = [(DBDashboardRootViewController *)self layoutEngine];
  [v3 primaryDockWindowFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(DBDashboardRootViewController *)self layoutEngine];
  [v12 primaryDockMargins];
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
  v3 = [(DBDashboardRootViewController *)self layoutEngine];
  [v3 secondaryDockWindowFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(DBDashboardRootViewController *)self layoutEngine];
  [v12 secondaryDockMargins];
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
  v2 = [(DBDashboardRootViewController *)self environment];
  v3 = [v2 environmentConfiguration];
  v4 = [v3 hasDualStatusBar];

  return v4;
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = DBDashboardRootViewController;
  [(DBDashboardRootViewController *)&v13 viewDidLayoutSubviews];
  v3 = [(DBDashboardRootViewController *)self contentView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(DBDashboardRootViewController *)self dimmingView];
  [v12 setContentFrame:{v5, v7, v9, v11}];
}

- (void)updateAppearanceForWallpaper
{
  v3 = [(DBDashboardRootViewController *)self environment];
  v4 = [v3 environmentConfiguration];
  v5 = [v4 wallpaperPreferences];
  v6 = [v5 currentWallpaper];
  v7 = [v6 traits];
  v8 = [v7 supportsDynamicAppearance];

  v9 = [(DBDashboardRootViewController *)self dimmingView];
  [v9 setHidden:v8 ^ 1u];

  [(DBDashboardRootViewController *)self contentCornerRadius];
  if (v10 <= 0.0 || (v8 & 1) != 0)
  {
    v19 = [MEMORY[0x277D75348] clearColor];
    v20 = [v19 CGColor];
    v21 = [(DBDashboardRootViewController *)self borderView];
    v22 = [v21 layer];
    [v22 setBorderColor:v20];

    v23 = [(DBDashboardRootViewController *)self borderView];
    v24 = [v23 layer];
    [v24 setBorderWidth:0.0];

    v25 = [(DBDashboardRootViewController *)self borderView];
    v17 = [v25 layer];
    [v17 setCompositingFilter:0];
  }

  else
  {
    v11 = [MEMORY[0x277D75348] colorWithWhite:0.149019608 alpha:1.0];
    v12 = [v11 CGColor];
    v13 = [(DBDashboardRootViewController *)self borderView];
    v14 = [v13 layer];
    [v14 setBorderColor:v12];

    v15 = [(DBDashboardRootViewController *)self borderView];
    v16 = [v15 layer];
    [v16 setBorderWidth:1.0];

    v25 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA548]];
    v17 = [(DBDashboardRootViewController *)self borderView];
    v18 = [v17 layer];
    [v18 setCompositingFilter:v25];
  }
}

- (DBDashboardRootViewController)initWithEnvironment:(id)a3 windowScene:(id)a4 layoutEngine:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = DBDashboardRootViewController;
  v11 = [(DBDashboardRootViewController *)&v17 init];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285AF0150];
    viewStateObservers = v11->_viewStateObservers;
    v11->_viewStateObservers = v12;

    objc_storeWeak(&v11->_environment, v8);
    objc_storeStrong(&v11->_layoutEngine, a5);
    v14 = [[DBDashboardHomeViewController alloc] initWithEnvironment:v8 windowScene:v9 layoutEngine:v10];
    homeViewController = v11->_homeViewController;
    v11->_homeViewController = v14;
  }

  return v11;
}

- (CRSWidgetLayoutVehicleDataProviding)widgetLayoutDataProvider
{
  v2 = [(DBDashboardRootViewController *)self homeViewController];
  v3 = [v2 widgetLayoutDataProvider];

  return v3;
}

- (void)presentBaseViewController:(id)a3 animated:(BOOL)a4 launchSource:(unint64_t)a5 completion:(id)a6
{
  v8 = a4;
  v13 = a3;
  v10 = a6;
  v11 = [(DBDashboardRootViewController *)self currentBaseViewController];

  if (v11)
  {
    v12 = [(DBDashboardRootViewController *)self currentBaseViewController];
    [(DBDashboardRootViewController *)self _dismissViewController:v12 andPresentBaseViewController:v13 animated:v8 completion:v10];
  }

  else
  {
    [(DBDashboardRootViewController *)self _presentBaseViewController:v13 animated:v8 launchSource:a5 completion:v10];
  }
}

- (void)dismissBaseViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(DBDashboardRootViewController *)self currentBaseViewController];

  if (v7)
  {
    [(DBDashboardRootViewController *)self _dismissBaseViewControllerAnimated:v4 completion:v6];
  }

  else if (v6)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__DBDashboardRootViewController_dismissBaseViewControllerAnimated_completion___block_invoke;
    block[3] = &unk_278F02678;
    v9 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)presentStackedViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(DBDashboardRootViewController *)self currentStackedViewController];

  if (v10)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __82__DBDashboardRootViewController_presentStackedViewController_animated_completion___block_invoke;
    v11[3] = &unk_278F034D0;
    v11[4] = self;
    v12 = v8;
    v14 = v6;
    v13 = v9;
    [(DBDashboardRootViewController *)self _dismissStackedViewControllerAnimated:v6 completion:v11];
  }

  else
  {
    [(DBDashboardRootViewController *)self _presentStackedViewController:v8 animated:v6 completion:v9];
  }
}

- (void)addViewStateObserver:(id)a3
{
  v5 = a3;
  v4 = [(DBDashboardRootViewController *)self viewStateObservers];
  [v4 addObserver:v5];

  if (objc_opt_respondsToSelector())
  {
    [v5 dashboardRootViewController:self didChangeToViewState:{-[DBDashboardRootViewController currentViewState](self, "currentViewState")}];
  }
}

- (void)removeViewStateObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBDashboardRootViewController *)self viewStateObservers];
  [v5 removeObserver:v4];
}

- (void)setContentCornerRadius:(double)a3
{
  self->_contentCornerRadius = a3;
  v5 = [(DBDashboardRootViewController *)self contentView];
  v6 = [v5 layer];
  [v6 setCornerRadius:a3];

  v7 = [(DBDashboardRootViewController *)self baseContainerView];
  v8 = [v7 layer];
  [v8 setCornerRadius:a3];

  v9 = [(DBDashboardRootViewController *)self dimmingView];
  [v9 setCornerRadius:a3];

  v10 = [(DBDashboardRootViewController *)self borderView];
  v11 = [v10 layer];
  [v11 setCornerRadius:a3];

  v13 = [(DBDashboardRootViewController *)self backgroundBlurView];
  v12 = [v13 layer];
  [v12 setCornerRadius:a3];
}

- (void)setAlwaysDarkInterface:(BOOL)a3
{
  v3 = a3;
  v4 = [(DBDashboardRootViewController *)self backgroundBlurView];
  v6 = v4;
  if (v3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  [v4 setOverrideUserInterfaceStyle:v5];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 bounds];
  v8 = [v3 initWithFrame:?];

  v5 = [v8 layer];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 setName:v7];

  [v8 setAutoresizingMask:18];
  [v8 setAutoresizesSubviews:1];
  [(DBDashboardRootViewController *)self setView:v8];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = DBDashboardRootViewController;
  [(DBDashboardRootViewController *)&v4 traitCollectionDidChange:a3];
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
  v7 = [(UIVisualEffectView *)self->_backgroundBlurView layer];
  [v7 setMasksToBounds:1];

  [(UIVisualEffectView *)self->_backgroundBlurView setHidden:1];
  v8 = [(DBDashboardRootViewController *)self view];
  [v8 addSubview:self->_backgroundBlurView];

  v9 = objc_opt_new();
  [(DBDashboardRootViewController *)self setBackgroundView:v9];

  v10 = [(DBDashboardRootViewController *)self backgroundView];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(DBDashboardRootViewController *)self backgroundView];
  [v11 setUserInteractionEnabled:0];

  v12 = [(DBDashboardRootViewController *)self view];
  v13 = [(DBDashboardRootViewController *)self backgroundView];
  [v12 addSubview:v13];

  v14 = [_TtC9DashBoard22DBDashboardDimmingView alloc];
  v15 = *MEMORY[0x277CBF3A0];
  v16 = *(MEMORY[0x277CBF3A0] + 8);
  v17 = *(MEMORY[0x277CBF3A0] + 16);
  v18 = *(MEMORY[0x277CBF3A0] + 24);
  v19 = [(DBDashboardDimmingView *)v14 initWithFrame:*MEMORY[0x277CBF3A0], v16, v17, v18];
  [(DBDashboardRootViewController *)self setDimmingView:v19];

  v20 = [(DBDashboardRootViewController *)self dimmingView];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

  v21 = [(DBDashboardRootViewController *)self dimmingView];
  [v21 setUserInteractionEnabled:0];

  v22 = [(DBDashboardRootViewController *)self view];
  v23 = [(DBDashboardRootViewController *)self dimmingView];
  [v22 addSubview:v23];

  v24 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v15, v16, v17, v18}];
  [(DBDashboardRootViewController *)self setWidgetDimmingView:v24];

  v25 = [(DBDashboardRootViewController *)self widgetDimmingView];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

  v26 = [(DBDashboardRootViewController *)self widgetDimmingView];
  [v26 setUserInteractionEnabled:0];

  v27 = [(DBDashboardRootViewController *)self widgetDimmingView];
  [v27 setHidden:1];

  v28 = [MEMORY[0x277D75348] blackColor];
  v29 = [(DBDashboardRootViewController *)self widgetDimmingView];
  [v29 setBackgroundColor:v28];

  v30 = [(DBDashboardRootViewController *)self widgetDimmingView];
  v31 = [(DBDashboardRootViewController *)self homeViewController];
  [v31 setWidgetDimmingView:v30];

  v32 = [(DBDashboardRootViewController *)self view];
  v33 = [(DBDashboardRootViewController *)self widgetDimmingView];
  [v32 addSubview:v33];

  v34 = objc_opt_new();
  [(DBDashboardRootViewController *)self setContentView:v34];

  v35 = *MEMORY[0x277CDA138];
  v36 = [(DBDashboardRootViewController *)self contentView];
  v37 = [v36 layer];
  [v37 setCornerCurve:v35];

  v38 = [(DBDashboardRootViewController *)self contentView];
  v39 = [v38 layer];
  [v39 setMasksToBounds:1];

  v40 = [(DBDashboardRootViewController *)self contentView];
  [v40 setTranslatesAutoresizingMaskIntoConstraints:0];

  v41 = [(DBDashboardRootViewController *)self view];
  v42 = [(DBDashboardRootViewController *)self contentView];
  [v41 addSubview:v42];

  v43 = [(DBDashboardRootViewController *)self homeViewController];
  v44 = [(DBDashboardRootViewController *)self contentView];
  v271[0] = MEMORY[0x277D85DD0];
  v271[1] = 3221225472;
  v271[2] = __44__DBDashboardRootViewController_viewDidLoad__block_invoke;
  v271[3] = &unk_278F034F8;
  v271[4] = self;
  [(DBDashboardRootViewController *)self bs_addChildViewController:v43 withSuperview:v44 animated:0 transitionBlock:v271];

  v45 = objc_opt_new();
  [(DBDashboardRootViewController *)self setBaseContainerView:v45];

  v46 = [(DBDashboardRootViewController *)self baseContainerView];
  [v46 setHidden:1];

  v47 = [(DBDashboardRootViewController *)self baseContainerView];
  [v47 setTranslatesAutoresizingMaskIntoConstraints:0];

  v48 = [(DBDashboardRootViewController *)self contentView];
  v49 = [(DBDashboardRootViewController *)self baseContainerView];
  [v48 addSubview:v49];

  v50 = [(DBDashboardRootViewController *)self environment];
  v51 = [v50 environmentConfiguration];
  v52 = [v51 hasDualStatusBar];

  v53 = [(DBDashboardRootViewController *)self layoutEngine];
  v54 = [v53 primaryDockVariant];

  if (v54)
  {
    v55 = +[_TtC9DashBoard20DBDashboardGlassView createWithDockConfiguration];
    stackedPrimaryGlassDockBackgroundView = self->_stackedPrimaryGlassDockBackgroundView;
    self->_stackedPrimaryGlassDockBackgroundView = v55;

    v57 = [(DBDashboardRootViewController *)self layoutEngine];
    -[DBDashboardGlassView setIsTranslucent:](self->_stackedPrimaryGlassDockBackgroundView, "setIsTranslucent:", [v57 primaryDockVariant] == 1);
  }

  else
  {
    v58 = [DBDockBackgroundView alloc];
    v59 = [(DBDashboardRootViewController *)self environment];
    v60 = [(DBDockBackgroundView *)v58 initWithEnvironment:v59 layout:v52];
    stackedPrimaryMaterialDockBackgroundView = self->_stackedPrimaryMaterialDockBackgroundView;
    self->_stackedPrimaryMaterialDockBackgroundView = v60;

    v62 = [(DBDashboardRootViewController *)self _createCornerRadiusView];
    [(DBDashboardRootViewController *)self setStackedPrimaryCornerRadiusView:v62];

    v63 = [(DBDashboardRootViewController *)self stackedPrimaryDockBackgroundView];
    v64 = [(DBDashboardRootViewController *)self stackedPrimaryCornerRadiusView];
    [v63 addSubview:v64];

    v65 = [(DBDashboardRootViewController *)self _createMaskView];
    [(DBDashboardRootViewController *)self setStackedPrimaryMaskView:v65];

    v57 = [(DBDashboardRootViewController *)self stackedPrimaryDockBackgroundView];
    v66 = [(DBDashboardRootViewController *)self stackedPrimaryMaskView];
    [v57 addSubview:v66];
  }

  v67 = [(DBDashboardRootViewController *)self contentView];
  v68 = [(DBDashboardRootViewController *)self stackedPrimaryDockBackgroundView];
  [v67 addSubview:v68];

  v69 = [(DBDashboardRootViewController *)self stackedPrimaryDockBackgroundView];
  [v69 setHidden:1];

  v70 = [(DBDashboardRootViewController *)self stackedPrimaryDockBackgroundView];
  [(DBDashboardRootViewController *)self primaryDockWindowFrame];
  [v70 setFrame:?];

  if (v52)
  {
    v71 = [(DBDashboardRootViewController *)self layoutEngine];
    v72 = [v71 secondaryDockVariant];

    if (v72)
    {
      v73 = +[_TtC9DashBoard20DBDashboardGlassView createWithDockConfiguration];
      stackedSecondaryGlassDockBackgroundView = self->_stackedSecondaryGlassDockBackgroundView;
      self->_stackedSecondaryGlassDockBackgroundView = v73;

      v75 = [(DBDashboardRootViewController *)self layoutEngine];
      -[DBDashboardGlassView setIsTranslucent:](self->_stackedSecondaryGlassDockBackgroundView, "setIsTranslucent:", [v75 secondaryDockVariant] == 1);
    }

    else
    {
      v76 = [DBDockBackgroundView alloc];
      v77 = [(DBDashboardRootViewController *)self environment];
      v78 = [(DBDockBackgroundView *)v76 initWithEnvironment:v77 layout:2];
      stackedSecondaryMaterialDockBackgroundView = self->_stackedSecondaryMaterialDockBackgroundView;
      self->_stackedSecondaryMaterialDockBackgroundView = v78;

      v80 = [(DBDashboardRootViewController *)self _createCornerRadiusView];
      [(DBDashboardRootViewController *)self setStackedSecondaryCornerRadiusView:v80];

      v81 = [(DBDashboardRootViewController *)self stackedSecondaryDockBackgroundView];
      v82 = [(DBDashboardRootViewController *)self stackedSecondaryCornerRadiusView];
      [v81 addSubview:v82];

      v83 = [(DBDashboardRootViewController *)self _createMaskView];
      [(DBDashboardRootViewController *)self setStackedSecondaryMaskView:v83];

      v75 = [(DBDashboardRootViewController *)self stackedSecondaryDockBackgroundView];
      v84 = [(DBDashboardRootViewController *)self stackedSecondaryMaskView];
      [v75 addSubview:v84];
    }

    v85 = [(DBDashboardRootViewController *)self stackedSecondaryDockBackgroundView];
    [v85 setHidden:1];

    v86 = [(DBDashboardRootViewController *)self stackedSecondaryDockBackgroundView];
    [(DBDashboardRootViewController *)self secondaryDockWindowFrame];
    [v86 setFrame:?];

    v87 = [(DBDashboardRootViewController *)self contentView];
    v88 = [(DBDashboardRootViewController *)self stackedSecondaryDockBackgroundView];
    [v87 addSubview:v88];
  }

  v89 = objc_opt_new();
  [(DBDashboardRootViewController *)self setStackedContainerView:v89];

  v90 = [(DBDashboardRootViewController *)self stackedContainerView];
  [v90 setHidden:1];

  v91 = [(DBDashboardRootViewController *)self stackedContainerView];
  [v91 setTranslatesAutoresizingMaskIntoConstraints:0];

  v92 = [(DBDashboardRootViewController *)self contentView];
  v93 = [(DBDashboardRootViewController *)self stackedContainerView];
  [v92 addSubview:v93];

  v94 = objc_opt_new();
  [(DBDashboardRootViewController *)self setBorderView:v94];

  v95 = [(DBDashboardRootViewController *)self borderView];
  v96 = [v95 layer];
  [v96 setCornerCurve:v35];

  v97 = [(DBDashboardRootViewController *)self borderView];
  v98 = [v97 layer];
  [v98 setMasksToBounds:1];

  v99 = [(DBDashboardRootViewController *)self borderView];
  [v99 setTranslatesAutoresizingMaskIntoConstraints:0];

  v100 = [(DBDashboardRootViewController *)self view];
  v101 = [(DBDashboardRootViewController *)self borderView];
  [v100 addSubview:v101];

  v250 = MEMORY[0x277CCAAD0];
  v268 = [(DBDashboardRootViewController *)self backgroundBlurView];
  v264 = [v268 leadingAnchor];
  v266 = [(DBDashboardRootViewController *)self contentView];
  v262 = [v266 leadingAnchor];
  v260 = [v264 constraintEqualToAnchor:v262];
  v274[0] = v260;
  v258 = [(DBDashboardRootViewController *)self backgroundBlurView];
  v254 = [v258 trailingAnchor];
  v256 = [(DBDashboardRootViewController *)self contentView];
  v252 = [v256 trailingAnchor];
  v248 = [v254 constraintEqualToAnchor:v252];
  v274[1] = v248;
  v246 = [(DBDashboardRootViewController *)self backgroundBlurView];
  v244 = [v246 topAnchor];
  v102 = [(DBDashboardRootViewController *)self contentView];
  v103 = [v102 topAnchor];
  v104 = [v244 constraintEqualToAnchor:v103];
  v274[2] = v104;
  v105 = [(DBDashboardRootViewController *)self backgroundBlurView];
  v106 = [v105 bottomAnchor];
  v107 = [(DBDashboardRootViewController *)self contentView];
  v108 = [v107 bottomAnchor];
  v109 = [v106 constraintEqualToAnchor:v108];
  v274[3] = v109;
  v110 = [MEMORY[0x277CBEA60] arrayWithObjects:v274 count:4];
  [v250 activateConstraints:v110];

  v195 = MEMORY[0x277CCAAD0];
  v269 = [(DBDashboardRootViewController *)self dimmingView];
  v265 = [v269 leadingAnchor];
  v267 = [(DBDashboardRootViewController *)self view];
  v263 = [v267 leadingAnchor];
  v261 = [v265 constraintEqualToAnchor:v263];
  v273[0] = v261;
  v259 = [(DBDashboardRootViewController *)self dimmingView];
  v255 = [v259 trailingAnchor];
  v257 = [(DBDashboardRootViewController *)self view];
  v253 = [v257 trailingAnchor];
  v251 = [v255 constraintEqualToAnchor:v253];
  v273[1] = v251;
  v249 = [(DBDashboardRootViewController *)self dimmingView];
  v245 = [v249 topAnchor];
  v247 = [(DBDashboardRootViewController *)self view];
  v243 = [v247 topAnchor];
  v242 = [v245 constraintEqualToAnchor:v243];
  v273[2] = v242;
  v241 = [(DBDashboardRootViewController *)self dimmingView];
  v239 = [v241 bottomAnchor];
  v240 = [(DBDashboardRootViewController *)self view];
  v238 = [v240 bottomAnchor];
  v237 = [v239 constraintEqualToAnchor:v238];
  v273[3] = v237;
  v236 = [(DBDashboardRootViewController *)self widgetDimmingView];
  v234 = [v236 leadingAnchor];
  v235 = [(DBDashboardRootViewController *)self view];
  v233 = [v235 leadingAnchor];
  v232 = [v234 constraintEqualToAnchor:v233];
  v273[4] = v232;
  v231 = [(DBDashboardRootViewController *)self widgetDimmingView];
  v229 = [v231 trailingAnchor];
  v230 = [(DBDashboardRootViewController *)self view];
  v228 = [v230 trailingAnchor];
  v227 = [v229 constraintEqualToAnchor:v228];
  v273[5] = v227;
  v226 = [(DBDashboardRootViewController *)self widgetDimmingView];
  v224 = [v226 topAnchor];
  v225 = [(DBDashboardRootViewController *)self view];
  v223 = [v225 topAnchor];
  v222 = [v224 constraintEqualToAnchor:v223];
  v273[6] = v222;
  v221 = [(DBDashboardRootViewController *)self widgetDimmingView];
  v219 = [v221 bottomAnchor];
  v220 = [(DBDashboardRootViewController *)self view];
  v218 = [v220 bottomAnchor];
  v217 = [v219 constraintEqualToAnchor:v218];
  v273[7] = v217;
  v216 = [(DBDashboardRootViewController *)self backgroundView];
  v214 = [v216 leadingAnchor];
  v215 = [(DBDashboardRootViewController *)self view];
  v213 = [v215 leadingAnchor];
  v212 = [v214 constraintEqualToAnchor:v213];
  v273[8] = v212;
  v211 = [(DBDashboardRootViewController *)self backgroundView];
  v209 = [v211 trailingAnchor];
  v210 = [(DBDashboardRootViewController *)self view];
  v208 = [v210 trailingAnchor];
  v207 = [v209 constraintEqualToAnchor:v208];
  v273[9] = v207;
  v206 = [(DBDashboardRootViewController *)self backgroundView];
  v204 = [v206 topAnchor];
  v205 = [(DBDashboardRootViewController *)self view];
  v203 = [v205 topAnchor];
  v202 = [v204 constraintEqualToAnchor:v203];
  v273[10] = v202;
  v201 = [(DBDashboardRootViewController *)self backgroundView];
  v199 = [v201 bottomAnchor];
  v200 = [(DBDashboardRootViewController *)self view];
  v198 = [v200 bottomAnchor];
  v197 = [v199 constraintEqualToAnchor:v198];
  v273[11] = v197;
  v196 = [(DBDashboardRootViewController *)self contentView];
  v193 = [v196 leadingAnchor];
  v194 = [(DBDashboardRootViewController *)self view];
  v192 = [v194 safeAreaLayoutGuide];
  v191 = [v192 leadingAnchor];
  v190 = [v193 constraintEqualToAnchor:v191];
  v273[12] = v190;
  v189 = [(DBDashboardRootViewController *)self contentView];
  v187 = [v189 trailingAnchor];
  v188 = [(DBDashboardRootViewController *)self view];
  v186 = [v188 safeAreaLayoutGuide];
  v185 = [v186 trailingAnchor];
  v184 = [v187 constraintEqualToAnchor:v185];
  v273[13] = v184;
  v183 = [(DBDashboardRootViewController *)self contentView];
  v181 = [v183 topAnchor];
  v182 = [(DBDashboardRootViewController *)self view];
  v180 = [v182 safeAreaLayoutGuide];
  v179 = [v180 topAnchor];
  v178 = [v181 constraintEqualToAnchor:v179];
  v273[14] = v178;
  v177 = [(DBDashboardRootViewController *)self contentView];
  v175 = [v177 bottomAnchor];
  v176 = [(DBDashboardRootViewController *)self view];
  v174 = [v176 safeAreaLayoutGuide];
  v173 = [v174 bottomAnchor];
  v172 = [v175 constraintEqualToAnchor:v173];
  v273[15] = v172;
  v171 = [(DBDashboardRootViewController *)self baseContainerView];
  v169 = [v171 leadingAnchor];
  v170 = [(DBDashboardRootViewController *)self contentView];
  v168 = [v170 leadingAnchor];
  v167 = [v169 constraintEqualToAnchor:v168];
  v273[16] = v167;
  v166 = [(DBDashboardRootViewController *)self baseContainerView];
  v164 = [v166 trailingAnchor];
  v165 = [(DBDashboardRootViewController *)self contentView];
  v163 = [v165 trailingAnchor];
  v162 = [v164 constraintEqualToAnchor:v163];
  v273[17] = v162;
  v161 = [(DBDashboardRootViewController *)self baseContainerView];
  v159 = [v161 topAnchor];
  v160 = [(DBDashboardRootViewController *)self contentView];
  v158 = [v160 topAnchor];
  v157 = [v159 constraintEqualToAnchor:v158];
  v273[18] = v157;
  v156 = [(DBDashboardRootViewController *)self baseContainerView];
  v154 = [v156 bottomAnchor];
  v155 = [(DBDashboardRootViewController *)self contentView];
  v153 = [v155 bottomAnchor];
  v152 = [v154 constraintEqualToAnchor:v153];
  v273[19] = v152;
  v151 = [(DBDashboardRootViewController *)self stackedContainerView];
  v149 = [v151 leadingAnchor];
  v150 = [(DBDashboardRootViewController *)self contentView];
  v148 = [v150 leadingAnchor];
  v147 = [v149 constraintEqualToAnchor:v148];
  v273[20] = v147;
  v146 = [(DBDashboardRootViewController *)self stackedContainerView];
  v144 = [v146 trailingAnchor];
  v145 = [(DBDashboardRootViewController *)self contentView];
  v143 = [v145 trailingAnchor];
  v142 = [v144 constraintEqualToAnchor:v143];
  v273[21] = v142;
  v141 = [(DBDashboardRootViewController *)self stackedContainerView];
  v139 = [v141 topAnchor];
  v140 = [(DBDashboardRootViewController *)self contentView];
  v138 = [v140 topAnchor];
  v137 = [v139 constraintEqualToAnchor:v138];
  v273[22] = v137;
  v136 = [(DBDashboardRootViewController *)self stackedContainerView];
  v134 = [v136 bottomAnchor];
  v135 = [(DBDashboardRootViewController *)self contentView];
  v133 = [v135 bottomAnchor];
  v132 = [v134 constraintEqualToAnchor:v133];
  v273[23] = v132;
  v131 = [(DBDashboardRootViewController *)self borderView];
  v129 = [v131 leadingAnchor];
  v130 = [(DBDashboardRootViewController *)self contentView];
  v128 = [v130 leadingAnchor];
  v127 = [v129 constraintEqualToAnchor:v128];
  v273[24] = v127;
  v126 = [(DBDashboardRootViewController *)self borderView];
  v124 = [v126 trailingAnchor];
  v125 = [(DBDashboardRootViewController *)self contentView];
  v123 = [v125 trailingAnchor];
  v122 = [v124 constraintEqualToAnchor:v123];
  v273[25] = v122;
  v121 = [(DBDashboardRootViewController *)self borderView];
  v120 = [v121 topAnchor];
  v111 = [(DBDashboardRootViewController *)self contentView];
  v112 = [v111 topAnchor];
  v113 = [v120 constraintEqualToAnchor:v112];
  v273[26] = v113;
  v114 = [(DBDashboardRootViewController *)self borderView];
  v115 = [v114 bottomAnchor];
  v116 = [(DBDashboardRootViewController *)self contentView];
  v117 = [v116 bottomAnchor];
  v118 = [v115 constraintEqualToAnchor:v117];
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

- (void)handleEvent:(id)a3
{
  v8 = a3;
  v4 = [(DBDashboardRootViewController *)self currentStackedViewController];

  if (v4)
  {
    v5 = [(DBDashboardRootViewController *)self currentStackedViewController];
  }

  else
  {
    v6 = [(DBDashboardRootViewController *)self currentBaseViewController];

    if (v6)
    {
      v5 = [(DBDashboardRootViewController *)self currentBaseViewController];
    }

    else
    {
      if ([v8 type] == 10)
      {
        goto LABEL_8;
      }

      v5 = [(DBDashboardRootViewController *)self homeViewController];
    }
  }

  v7 = v5;
  [v5 handleEvent:v8];

LABEL_8:
}

- (void)dockDidChangeInterfaceStyle:(int64_t)a3 colorVariant:(int64_t)a4 isSiriPresentation:(BOOL)a5
{
  v5 = a5;
  v9 = [(DBDashboardRootViewController *)self stackedPrimaryDockBackgroundView];
  [v9 setHidden:!v5];

  v10 = [(DBDashboardRootViewController *)self stackedSecondaryDockBackgroundView];
  [v10 setHidden:!v5];

  v11 = [(DBDashboardRootViewController *)self stackedPrimaryDockBackgroundView];
  [v11 setOverrideUserInterfaceStyle:a3];

  v12 = [(DBDashboardRootViewController *)self stackedSecondaryDockBackgroundView];
  [v12 setOverrideUserInterfaceStyle:a3];

  v13 = [(DBDashboardRootViewController *)self stackedPrimaryMaterialDockBackgroundView];
  [v13 setColorVariantOverride:a4];

  v14 = [(DBDashboardRootViewController *)self stackedSecondaryMaterialDockBackgroundView];
  [v14 setColorVariantOverride:a4];
}

- ($E1FBA45956547A31D86368594325CA17)primaryDockWindowFrameWithCornerMask
{
  [(DBDashboardRootViewController *)self primaryDockWindowFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(DBDashboardRootViewController *)self layoutEngine];
  [v13 dockShortAxisLength];
  v15 = v14;

  v16 = [(DBDashboardRootViewController *)self environment];
  v17 = [v16 environmentConfiguration];
  v18 = [v17 isRightHandDrive];

  v20 = v6 - 22.0;
  v21 = -22.0;
  if (!v18)
  {
    v21 = v15;
    v20 = v6;
  }

  v22 = 0.0;
  if (!v18)
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
  v13 = [(DBDashboardRootViewController *)self layoutEngine];
  [v13 dockShortAxisLength];
  v15 = v14;

  v16 = [(DBDashboardRootViewController *)self environment];
  v17 = [v16 environmentConfiguration];
  v18 = [v17 isRightHandDrive];

  v20 = v6 - 22.0;
  v21 = -22.0;
  if (v18)
  {
    v21 = v15;
    v20 = v6;
  }

  v22 = 0.0;
  if (v18)
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

- (void)_updateHomeViewControllerVisible:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __66__DBDashboardRootViewController__updateHomeViewControllerVisible___block_invoke;
  v3[3] = &unk_278F017F8;
  v3[4] = self;
  v4 = a3;
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
  v3 = [(DBDashboardRootViewController *)self currentBaseViewController];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(DBDashboardRootViewController *)self currentStackedViewController];
    v4 = v5 == 0;
  }

  return v4;
}

- (void)_updateHomeVCForegroundAndActive
{
  v3 = [(DBDashboardRootViewController *)self currentBaseViewController];
  v4 = v3 == 0;

  v5 = [(DBDashboardRootViewController *)self homeViewController];
  [v5 setForeground:v4];

  v6 = [(DBDashboardRootViewController *)self homeViewController];
  [v6 setActive:v4];

  v7 = [(DBDashboardRootViewController *)self homeViewController];
  [v7 setAccessibilityElementsActive:{-[DBDashboardRootViewController _shouldConsiderHomeScreenActive](self, "_shouldConsiderHomeScreenActive")}];
}

- (void)_presentBaseViewController:(id)a3 animated:(BOOL)a4 launchSource:(unint64_t)a5 completion:(id)a6
{
  v7 = a4;
  v9 = a3;
  v10 = a6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__DBDashboardRootViewController__presentBaseViewController_animated_launchSource_completion___block_invoke;
  aBlock[3] = &unk_278F02D40;
  aBlock[4] = self;
  v11 = v10;
  v109 = v11;
  v12 = _Block_copy(aBlock);
  [(DBDashboardRootViewController *)self setCurrentBaseViewController:v9];
  v13 = [(DBDashboardRootViewController *)self baseContainerView];
  [v13 setHidden:0];

  [(DBDashboardRootViewController *)self _updateCurrentViewState];
  v14 = [v9 view];
  v15 = [(DBDashboardRootViewController *)self environment];
  v16 = [v15 environmentConfiguration];

  v17 = [v9 presentsUnderStatusBar];
  v18 = [v9 presentsFullScreen];
  v19 = 0.0;
  if ((v18 & 1) == 0 && (v17 & 1) == 0)
  {
    if ([v16 isStatusBarDriveSide])
    {
      v89 = [v16 isRightHandDrive];
      [(DBDashboardRootViewController *)self layoutEngine];
      v20 = v11;
      v21 = v9;
      v22 = v7;
      v23 = v17;
      v25 = v24 = v16;
      [v25 dockShortAxisLength];
      v19 = v26;

      v16 = v24;
      v17 = v23;
      v7 = v22;
      v9 = v21;
      v11 = v20;
      if (v89)
      {
        v19 = 0.0;
      }
    }
  }

  if (v18)
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
  v28 = v14;
  v106 = v28;
  v107 = v27;
  v90 = v107;
  [DBDashboardRootViewController bs_addChildViewController:"bs_addChildViewController:withSuperview:animated:transitionBlock:" withSuperview:v9 animated:? transitionBlock:?];
  if (!v7)
  {
    [(DBDashboardRootViewController *)self _updateHomeViewControllerVisible:0];
    v42 = [(DBDashboardRootViewController *)self backgroundBlurView];
    [v42 setHidden:0];

    v43 = [(DBDashboardRootViewController *)self viewStateObservers];
    v44 = [v9 identifier];
    [v43 dashboardRootViewController:self didUpdateActiveBundleIdentifier:v44 animated:0];

    v12[2](v12);
    goto LABEL_36;
  }

  v85 = v12;
  v29 = [v9 presentationViewWithIdentifier:@"kCARHomeToAppAnimationIdentifier"];
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
  v38 = [(DBDashboardRootViewController *)self homeViewController];
  v81 = [v38 view];

  v39 = objc_alloc_init(MEMORY[0x277D75D18]);
  if (v18)
  {
    v40 = [(DBDashboardRootViewController *)self view];
    [v40 addSubview:v39];

    v41 = [(DBDashboardRootViewController *)self view];
LABEL_19:
    v47 = v41;
    [v41 bounds];
    v19 = v48;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    goto LABEL_27;
  }

  v45 = [(DBDashboardRootViewController *)self contentView];
  v46 = [(DBDashboardRootViewController *)self stackedPrimaryDockBackgroundView];
  [v45 insertSubview:v39 belowSubview:v46];

  if (v17)
  {
    v41 = [(DBDashboardRootViewController *)self contentView];
    goto LABEL_19;
  }

  v55 = [(DBDashboardRootViewController *)self layoutEngine];
  [v55 dockShortAxisLength];
  v57 = v56;

  if ([v16 isStatusBarDriveSide])
  {
    v47 = [(DBDashboardRootViewController *)self contentView];
    [v47 bounds];
    v52 = v58 - v57;
    v59 = [(DBDashboardRootViewController *)self contentView];
    [v59 bounds];
    v54 = v60;
    v50 = 0.0;
  }

  else
  {
    if ([v16 currentStatusBarEdge] == 3)
    {
      v50 = v57;
    }

    else
    {
      v50 = 0.0;
    }

    v47 = [(DBDashboardRootViewController *)self contentView];
    [v47 bounds];
    v52 = v61;
    v59 = [(DBDashboardRootViewController *)self contentView];
    [v59 bounds];
    v54 = v62 - v57;
  }

LABEL_27:
  [v39 setFrame:{v19, v50, v52, v54}];
  v63 = [v9 identifier];
  v83 = v28;
  if (a5 == 3)
  {
    v64 = [(DBDashboardRootViewController *)self homeViewController];
    v65 = v64;
    v66 = v63;
  }

  else
  {
    if (a5 != 2)
    {
      v67 = 0;
      goto LABEL_33;
    }

    v64 = [(DBDashboardRootViewController *)self homeViewController];
    v65 = v64;
    v66 = *MEMORY[0x277CF8FC8];
  }

  v67 = [v64 visibleIconViewForIdentifier:{v66, v81}];

LABEL_33:
  v68 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v67 iconImageInfo];
  v70 = v69;
  v71 = [v68 objectForKey:@"CARCornerRadius"];

  v84 = v16;
  if (v71)
  {
    [v68 floatForKey:@"CARCornerRadius"];
    v70 = v72;
  }

  v73 = [(DBDashboardRootViewController *)self viewStateObservers];
  [v73 dashboardRootViewController:self didUpdateActiveBundleIdentifier:v63 animated:1];

  v95[0] = MEMORY[0x277D85DD0];
  v95[1] = 3221225472;
  v95[2] = __93__DBDashboardRootViewController__presentBaseViewController_animated_launchSource_completion___block_invoke_303;
  v95[3] = &unk_278F03548;
  v96 = v67;
  v97 = v29;
  v74 = v39;
  v98 = v74;
  v99 = v82;
  v100 = self;
  v101 = v70;
  v88 = v82;
  v75 = v29;
  v76 = v67;
  v77 = [_TtC9DashBoard20DBHomeToAppAnimation animationWithSettings:v95];
  [v9 view];
  v79 = v78 = v63;
  [v79 setHidden:1];

  [(DBDashboardRootViewController *)self _updateHomeViewControllerVisible:0];
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 3221225472;
  v91[2] = __93__DBDashboardRootViewController__presentBaseViewController_animated_launchSource_completion___block_invoke_2_305;
  v91[3] = &unk_278F03570;
  v12 = v85;
  v94 = v85;
  v91[4] = self;
  v92 = v9;
  v93 = v74;
  v80 = v74;
  [v77 startAnimationWithCompletion:v91];

  v11 = v86;
  v28 = v83;
  v16 = v84;
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

- (void)_dismissViewController:(id)a3 andPresentBaseViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v90 = a6;
  v11 = v9;
  v12 = [(DBDashboardRootViewController *)self environment];
  v13 = [v12 environmentConfiguration];

  [(DBDashboardRootViewController *)self setCurrentBaseViewController:v10];
  v14 = [(DBDashboardRootViewController *)self baseContainerView];
  [v14 setHidden:0];

  v15 = [v10 view];
  v16 = [v10 presentsUnderStatusBar];
  v17 = 0.0;
  if ((v16 & 1) == 0)
  {
    if ([v13 isStatusBarDriveSide])
    {
      v18 = [v13 isRightHandDrive];
      v19 = [(DBDashboardRootViewController *)self layoutEngine];
      [v19 dockShortAxisLength];
      v17 = v20;

      if (v18)
      {
        v17 = 0.0;
      }
    }
  }

  v21 = [(DBDashboardRootViewController *)self baseContainerView];
  v103[0] = MEMORY[0x277D85DD0];
  v103[1] = 3221225472;
  v103[2] = __105__DBDashboardRootViewController__dismissViewController_andPresentBaseViewController_animated_completion___block_invoke;
  v103[3] = &unk_278F03520;
  v89 = v15;
  v104 = v89;
  v105 = self;
  [(DBDashboardRootViewController *)self bs_addChildViewController:v10 withSuperview:v21 animated:0 transitionBlock:v103];

  v22 = [v10 view];
  [v22 setHidden:1];

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

  v32 = [v10 presentationViewWithIdentifier:@"kCARAppToAppAnimationIdentifier"];
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
  v42 = [(DBDashboardRootViewController *)self contentView];
  v43 = [(DBDashboardRootViewController *)self stackedPrimaryDockBackgroundView];
  [v42 insertSubview:v41 belowSubview:v43];

  v44 = [(DBDashboardRootViewController *)self layoutEngine];
  [v44 dockShortAxisLength];
  v46 = v45;

  if (v16)
  {
    v47 = [(DBDashboardRootViewController *)self contentView];
    [v47 bounds];
    v17 = v48;
    v50 = v49;
    v52 = v51;
    v54 = v53;
  }

  else
  {
    if ([v13 isStatusBarDriveSide])
    {
      v47 = [(DBDashboardRootViewController *)self contentView];
      [v47 bounds];
      v52 = v55 - v46;
      v56 = [(DBDashboardRootViewController *)self contentView];
      [v56 bounds];
      v54 = v57;
      v50 = 0.0;
    }

    else
    {
      if ([v13 currentStatusBarEdge] == 3)
      {
        v50 = v46;
      }

      else
      {
        v50 = 0.0;
      }

      v47 = [(DBDashboardRootViewController *)self contentView];
      [v47 bounds];
      v52 = v58;
      v56 = [(DBDashboardRootViewController *)self contentView];
      [v56 bounds];
      v54 = v59 - v46;
    }
  }

  [v41 setFrame:{v17, v50, v52, v54}];
  if ([v11 presentsUnderStatusBar])
  {
    v60 = [(DBDashboardRootViewController *)self contentView];
    [v60 bounds];
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;
  }

  else
  {
    v62 = 0.0;
    if (([v13 isRightHandDrive] & 1) == 0)
    {
      if ([v13 isStatusBarDriveSide])
      {
        v62 = v46;
      }

      else
      {
        v62 = 0.0;
      }
    }

    if ([v13 isStatusBarDriveSide])
    {
      v60 = [(DBDashboardRootViewController *)self contentView];
      [v60 bounds];
      v66 = v69 - v46;
      v70 = [(DBDashboardRootViewController *)self contentView];
      [v70 bounds];
      v68 = v71;
      v64 = 0.0;
    }

    else
    {
      if ([v13 currentStatusBarEdge] == 3)
      {
        v64 = v46;
      }

      else
      {
        v64 = 0.0;
      }

      v60 = [(DBDashboardRootViewController *)self contentView];
      [v60 bounds];
      v66 = v72;
      v70 = [(DBDashboardRootViewController *)self contentView];
      [v70 bounds];
      v68 = v73 - v46;
    }
  }

  v74 = objc_alloc_init(MEMORY[0x277D75D18]);
  v75 = [(DBDashboardRootViewController *)self contentView];
  v76 = [(DBDashboardRootViewController *)self stackedPrimaryDockBackgroundView];
  [v75 insertSubview:v74 belowSubview:v76];

  [v74 setFrame:{v62, v64, v66, v68}];
  v77 = [(DBDashboardRootViewController *)self viewStateObservers];
  v78 = [v10 identifier];
  [v77 dashboardRootViewController:self didUpdateActiveBundleIdentifier:v78 animated:1];

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
  v102 = self;
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
  v93 = v10;
  v94 = v79;
  v95 = v80;
  v96 = v90;
  v84 = v90;
  v85 = v80;
  v86 = v79;
  v87 = v10;
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

- (void)_dismissBaseViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(DBDashboardRootViewController *)self currentBaseViewController];
  v8 = [(DBDashboardRootViewController *)self homeViewController];
  v9 = [v8 folderController];
  v10 = [v9 contentView];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__DBDashboardRootViewController__dismissBaseViewControllerAnimated_completion___block_invoke;
  aBlock[3] = &unk_278F035E8;
  aBlock[4] = self;
  v11 = v7;
  v98 = v11;
  v12 = v6;
  v100 = v12;
  v13 = v10;
  v99 = v13;
  v14 = _Block_copy(aBlock);
  [(DBDashboardRootViewController *)self setCurrentBaseViewController:0];
  [(DBDashboardRootViewController *)self _updateCurrentViewState];
  v15 = [(DBDashboardRootViewController *)self currentStackedViewController];

  if (!v15)
  {
    [(DBDashboardRootViewController *)self _updateHomeViewControllerVisible:1];
    v16 = [(DBDashboardRootViewController *)self backgroundBlurView];
    [v16 setHidden:1];
  }

  if (v4)
  {
    v17 = [(DBDashboardRootViewController *)self environment];
    v18 = [v17 environmentConfiguration];

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

    v28 = [(DBDashboardRootViewController *)self homeViewController];
    v74 = [v28 view];

    v29 = objc_alloc_init(MEMORY[0x277D75D18]);
    v30 = [(DBDashboardRootViewController *)self contentView];
    [v30 addSubview:v29];

    v76 = v18;
    v77 = v12;
    if ([v11 presentsUnderStatusBar])
    {
      v31 = [(DBDashboardRootViewController *)self contentView];
      [v31 bounds];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;
    }

    else
    {
      v41 = [(DBDashboardRootViewController *)self layoutEngine];
      [v41 dockShortAxisLength];
      v43 = v42;

      v33 = 0.0;
      if ([v18 isStatusBarDriveSide])
      {
        if ([v18 isRightHandDrive])
        {
          v33 = 0.0;
        }

        else
        {
          v33 = v43;
        }
      }

      if ([v18 isStatusBarDriveSide])
      {
        v31 = [(DBDashboardRootViewController *)self contentView];
        [v31 bounds];
        v37 = v44 - v43;
        v45 = [(DBDashboardRootViewController *)self contentView];
        [v45 bounds];
        v39 = v46;
        v35 = 0.0;
      }

      else
      {
        if ([v18 currentStatusBarEdge] == 3)
        {
          v35 = v43;
        }

        else
        {
          v35 = 0.0;
        }

        v31 = [(DBDashboardRootViewController *)self contentView];
        [v31 bounds];
        v37 = v47;
        v45 = [(DBDashboardRootViewController *)self contentView];
        [v45 bounds];
        v39 = v48 - v43;
      }
    }

    [v29 setFrame:{v33, v35, v37, v39}];
    v49 = [(DBDashboardRootViewController *)self homeViewController];
    v50 = [v11 identifier];
    v51 = [v49 visibleIconViewForIdentifier:v50];

    v52 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v53 = [v52 objectForKey:@"CARCornerRadius"];

    if (v53)
    {
      [v52 floatForKey:@"CARCornerRadius"];
      v55 = v54;
    }

    else
    {
      v55 = 13.0;
    }

    v56 = [(DBDashboardRootViewController *)self viewStateObservers];
    [v56 dashboardRootViewController:self didUpdateActiveBundleIdentifier:0 animated:1];

    v90[0] = MEMORY[0x277D85DD0];
    v90[1] = 3221225472;
    v90[2] = __79__DBDashboardRootViewController__dismissBaseViewControllerAnimated_completion___block_invoke_310;
    v90[3] = &unk_278F03610;
    v91 = v51;
    v57 = v29;
    v92 = v57;
    v93 = v74;
    v94 = v19;
    v95 = self;
    v96 = v55;
    v73 = v19;
    v75 = v74;
    v58 = v51;
    v59 = [_TtC9DashBoard20DBAppToHomeAnimation animationWithSettings:v90];
    v60 = [v11 view];
    [v60 setHidden:1];

    [v11 deactivateSceneWithReasonMask:32];
    v61 = [(DBDashboardRootViewController *)self homeViewController];
    v62 = [v61 folderController];
    [v13 _scrollOffsetForPageAtIndex:{objc_msgSend(v62, "currentPageIndex")}];
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
    v40 = [(DBDashboardRootViewController *)self viewStateObservers];
    [v40 dashboardRootViewController:self didUpdateActiveBundleIdentifier:0 animated:0];

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

- (void)_presentStackedViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__DBDashboardRootViewController__presentStackedViewController_animated_completion___block_invoke;
  aBlock[3] = &unk_278F02D40;
  aBlock[4] = self;
  v10 = v9;
  v90 = v10;
  v72 = _Block_copy(aBlock);
  v11 = [(DBDashboardRootViewController *)self stackedContainerView];
  [v11 setHidden:0];

  v12 = [v8 view];
  v13 = [(DBDashboardRootViewController *)self environment];
  v14 = [v13 environmentConfiguration];

  v15 = [v8 presentsUnderStatusBar];
  v16 = [(DBDashboardRootViewController *)self layoutEngine];
  [v16 dockShortAxisLength];
  v18 = v17;

  v19 = 0.0;
  if (v15)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = 0.0;
    if ([v14 isStatusBarDriveSide])
    {
      v21 = [v14 isRightHandDrive];
      if (v21)
      {
        v19 = -v18;
      }

      else
      {
        v19 = 0.0;
      }

      if (v21)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = v18;
      }
    }
  }

  v22 = [(DBDashboardRootViewController *)self stackedContainerView];
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __83__DBDashboardRootViewController__presentStackedViewController_animated_completion___block_invoke_2;
  v84[3] = &unk_278F03688;
  v23 = v12;
  v85 = v23;
  v86 = self;
  v87 = v20;
  v88 = v19;
  [(DBDashboardRootViewController *)self bs_addChildViewController:v8 withSuperview:v22 animated:0 transitionBlock:v84];

  [(DBDashboardRootViewController *)self setCurrentStackedViewController:v8];
  [(DBDashboardRootViewController *)self _updateCurrentViewState];
  v24 = [v8 entity];
  v25 = [v24 isSiriEntity];

  v26 = [v8 entity];
  v27 = [v26 isOEMPunchthroughEntity];

  v73 = v14;
  if (v27)
  {
    objc_opt_class();
    v28 = v8;
    if (v28 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v29 = +[_TtC9DashBoard14DBAssetLibrary shared];
      [v28 oemPunchthroughIdentifier];
      v71 = v15;
      v30 = v25;
      v31 = v6;
      v32 = v23;
      v34 = v33 = v10;
      v35 = [v29 shouldHideBackgroundWithIdentifier:v34];

      v10 = v33;
      v23 = v32;
      v6 = v31;
      LOBYTE(v31) = v30;
      v15 = v71;

      v25 = v35 | v31;
      v14 = v73;
    }
  }

  if (v6)
  {
    v36 = [v8 presentationViewWithIdentifier:@"kCARToStackedAppAnimationIdentifier"];
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
    v46 = [(DBDashboardRootViewController *)self contentView];
    [v46 addSubview:v45];

    if (v15)
    {
      v47 = [(DBDashboardRootViewController *)self contentView];
      [v47 bounds];
      v20 = v48;
      v50 = v49;
      v52 = v51;
      v54 = v53;
    }

    else
    {
      if ([v14 isStatusBarDriveSide])
      {
        v47 = [(DBDashboardRootViewController *)self contentView];
        [v47 bounds];
        v52 = v59 - v18;
        v60 = [(DBDashboardRootViewController *)self contentView];
        [v60 bounds];
        v54 = v61;
        v50 = 0.0;
      }

      else
      {
        if ([v14 currentStatusBarEdge] == 3)
        {
          v50 = v18;
        }

        else
        {
          v50 = 0.0;
        }

        v47 = [(DBDashboardRootViewController *)self contentView];
        [v47 bounds];
        v52 = v62;
        v60 = [(DBDashboardRootViewController *)self contentView];
        [v60 bounds];
        v54 = v63 - v18;
      }
    }

    [v45 setFrame:{v20, v50, v52, v54}];
    v64 = [(DBDashboardRootViewController *)self viewStateObservers];
    v65 = [v8 identifier];
    [v64 dashboardRootViewController:self didUpdateActiveBundleIdentifier:v65 animated:1];

    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __83__DBDashboardRootViewController__presentStackedViewController_animated_completion___block_invoke_316;
    v80[3] = &unk_278F036B0;
    v66 = v45;
    v81 = v66;
    v82 = v36;
    v83 = self;
    v67 = v36;
    v68 = [_TtC9DashBoard23DBToStackedAppAnimation animationWithSettings:v80];
    v69 = [v8 view];
    [v69 setHidden:1];

    if ((v25 & 1) == 0)
    {
      [(DBDashboardRootViewController *)self _updateHomeViewControllerVisible:0];
    }

    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __83__DBDashboardRootViewController__presentStackedViewController_animated_completion___block_invoke_2_318;
    v74[3] = &unk_278F036D8;
    v75 = v8;
    v76 = v66;
    v79 = (v25 ^ 1) & 1;
    v77 = self;
    v58 = v72;
    v78 = v72;
    v70 = v66;
    [v68 startAnimationWithCompletion:v74];
  }

  else
  {
    if ((v25 & 1) == 0)
    {
      [(DBDashboardRootViewController *)self _updateHomeViewControllerVisible:0];
      v55 = [(DBDashboardRootViewController *)self backgroundBlurView];
      [v55 setHidden:0];
    }

    v56 = [(DBDashboardRootViewController *)self viewStateObservers];
    v57 = [v8 identifier];
    [v56 dashboardRootViewController:self didUpdateActiveBundleIdentifier:v57 animated:0];

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

- (void)_dismissStackedViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(DBDashboardRootViewController *)self currentBaseViewController];

  if (v7)
  {
    v8 = [(DBDashboardRootViewController *)self currentBaseViewController];
    [v8 activateSceneWithSettings:0 completion:&__block_literal_global_22];
  }

  else
  {
    [(DBDashboardRootViewController *)self _updateHomeViewControllerVisible:1];
    v8 = [(DBDashboardRootViewController *)self backgroundBlurView];
    [v8 setHidden:1];
  }

  v9 = [(DBDashboardRootViewController *)self currentStackedViewController];
  [(DBDashboardRootViewController *)self setCurrentStackedViewController:0];
  [(DBDashboardRootViewController *)self _updateCurrentViewState];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__DBDashboardRootViewController__dismissStackedViewControllerAnimated_completion___block_invoke_2;
  aBlock[3] = &unk_278F02D90;
  aBlock[4] = self;
  v10 = v9;
  v42 = v10;
  v11 = v6;
  v43 = v11;
  v12 = _Block_copy(aBlock);
  if (v4)
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
    v23 = [(DBDashboardRootViewController *)self contentView];
    [v23 addSubview:v22];

    v24 = [(DBDashboardRootViewController *)self viewStateObservers];
    v25 = [(DBDashboardRootViewController *)self currentBaseViewController];
    v26 = [v25 identifier];
    [v24 dashboardRootViewController:self didUpdateActiveBundleIdentifier:v26 animated:1];

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __82__DBDashboardRootViewController__dismissStackedViewControllerAnimated_completion___block_invoke_320;
    v37[3] = &unk_278F03700;
    v38 = v13;
    v39 = v22;
    v40 = self;
    v27 = v22;
    v28 = v13;
    v29 = [_TtC9DashBoard25DBFromStackedAppAnimation animationWithSettings:v37];
    v30 = [v10 view];
    [v30 setHidden:1];

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
    v31 = [(DBDashboardRootViewController *)self viewStateObservers];
    v32 = [(DBDashboardRootViewController *)self currentBaseViewController];
    v33 = [v32 identifier];
    [v31 dashboardRootViewController:self didUpdateActiveBundleIdentifier:v33 animated:0];

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
  v3 = [(DBDashboardRootViewController *)self homeViewController];
  [v3 invalidate];

  v4 = [(DBDashboardRootViewController *)self homeScreenElementAssertion];

  if (v4)
  {
    v5 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Invalidating home screen layout element", v7, 2u);
    }

    v6 = [(DBDashboardRootViewController *)self homeScreenElementAssertion];
    [v6 invalidate];

    [(DBDashboardRootViewController *)self setHomeScreenElementAssertion:0];
  }

  [(DBDashboardRootViewController *)self setInvalidated:1];
}

- (id)preferredFocusEnvironments
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [(DBDashboardRootViewController *)self homeViewController];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)_createCornerRadiusView
{
  v2 = objc_alloc(MEMORY[0x277CF9170]);
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:v4];

  v5 = [v3 layer];
  [v5 setShadowOpacity:0.0];

  v6 = [v3 layer];
  [v6 setAllowsHitTesting:0];

  return v3;
}

- (id)_createMaskView
{
  v2 = objc_alloc(MEMORY[0x277CF9170]);
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [MEMORY[0x277D75348] blackColor];
  [v3 setBackgroundColor:v4];

  v5 = [v3 layer];
  [v5 setCornerRadius:22.0];

  v6 = *MEMORY[0x277CDA138];
  v7 = [v3 layer];
  [v7 setCornerCurve:v6];

  v8 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA310]];
  v9 = [v3 layer];
  [v9 setCompositingFilter:v8];

  v10 = [v3 layer];
  [v10 setShadowOpacity:0.0];

  v11 = [v3 layer];
  [v11 setAllowsHitTesting:0];

  return v3;
}

@end