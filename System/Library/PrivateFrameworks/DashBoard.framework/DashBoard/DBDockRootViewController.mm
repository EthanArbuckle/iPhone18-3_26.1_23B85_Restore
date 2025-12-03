@interface DBDockRootViewController
- (BOOL)_isDualStatusBarLayout;
- (BOOL)_useRoundedCorners;
- (BOOL)isHomeButtonFocused;
- (DBDockRootViewController)initWithEnvironment:(id)environment iconProvider:(id)provider audioNotificationViewController:(id)controller stateProvider:(id)stateProvider dataBroadcaster:(id)broadcaster layout:(unint64_t)layout layoutEngine:(id)engine;
- (DBDockRootViewControllerDelegate)delegate;
- (DBEnvironment)environment;
- (UIEdgeInsets)extraSafeAreaInsets;
- (UIView)backgroundView;
- (UIView)screenResizeButton;
- (double)_appDockPrimaryAxisLength:(BOOL)length;
- (id)_appDockConstraintsWithStatusBarEdge:(unint64_t)edge;
- (id)_dualStatusBarBackgroundConstraints;
- (id)_focusHighlightColor;
- (id)_homeButtonConstraintsWithStatusBarEdge:(unint64_t)edge;
- (id)_keylineViewConstraintsWithStatusBarEdge:(unint64_t)edge;
- (id)contentView;
- (unint64_t)dockVariant;
- (void)_handleBackPressGesture:(id)gesture;
- (void)_handleLongPressActivation;
- (void)_resizeButtonPressed:(id)pressed;
- (void)_setDualStatusBarCornerRadius;
- (void)_setupAppDockViewController;
- (void)_setupClimateFocusGuides;
- (void)_setupClimateHorizontalFocusGuides;
- (void)_setupClimateVerticalFocusGuides;
- (void)_setupHomeButton;
- (void)_setupStatusBarViewController;
- (void)_updateAdditionalSafeAreaInsets;
- (void)_updateBackgroundConstraints;
- (void)_updateConstraintsForStatusBar;
- (void)_updateScreenResizeButton;
- (void)addDockObserver:(id)observer;
- (void)appDockViewController:(id)controller didSelectBundleID:(id)d;
- (void)climateOverlayDidRequestHideFocusGuides:(BOOL)guides;
- (void)dashboardRootViewController:(id)controller didUpdateActiveBundleIdentifier:(id)identifier animated:(BOOL)animated;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)hideBackgroundIfNeeded;
- (void)homeButtonCancel:(id)cancel;
- (void)homeButtonDown:(id)down;
- (void)homeButtonStateManager:(id)manager didChangeToDisplayState:(unint64_t)state;
- (void)homeButtonUp:(id)up;
- (void)removeDockObserver:(id)observer;
- (void)setAudioNotificationViewController:(id)controller;
- (void)setExtraSafeAreaInsets:(UIEdgeInsets)insets;
- (void)setTransitionControlType:(unint64_t)type;
- (void)statusBarStyleServiceUpdatedOverride:(id)override animationSettings:(id)settings;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAppearanceForWallpaper;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)workspace:(id)workspace stateDidChangeFromState:(id)state toState:(id)toState;
@end

@implementation DBDockRootViewController

- (DBEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (void)hideBackgroundIfNeeded
{
  if ([(DBDockRootViewController *)self isBackgroundDisabled])
  {
    if (![(DBDockRootViewController *)self useGlassDock])
    {
      isSiriPresentationActive = 1;
LABEL_7:
      if ([(DBDockRootViewController *)self _isTopStatusBarLayout])
      {
        gradientBlurBackgroundView = [(DBDockRootViewController *)self gradientBlurBackgroundView];
        isBackgroundDisabled = [(DBDockRootViewController *)self isBackgroundDisabled];
        backgroundView = gradientBlurBackgroundView;
      }

      else
      {
        backgroundView = [(DBDockRootViewController *)self backgroundView];
        gradientBlurBackgroundView = backgroundView;
        isBackgroundDisabled = isSiriPresentationActive;
      }

      [backgroundView setHidden:isBackgroundDisabled];
      goto LABEL_13;
    }
  }

  else
  {
    isSiriPresentationActive = [(DBDockRootViewController *)self isSiriPresentationActive];
    if (![(DBDockRootViewController *)self useGlassDock])
    {
      goto LABEL_7;
    }

    if (!isSiriPresentationActive)
    {
      v4 = [(DBDockRootViewController *)self dockVariant]!= 2;
      goto LABEL_12;
    }
  }

  v4 = 0;
LABEL_12:
  gradientBlurBackgroundView = [(DBDockRootViewController *)self glassDockView];
  [gradientBlurBackgroundView setIsTranslucent:v4];
LABEL_13:
}

- (unint64_t)dockVariant
{
  v3 = DBIsPrimaryStatusBar([(DBDockRootViewController *)self layout]);
  layoutEngine = [(DBDockRootViewController *)self layoutEngine];
  v5 = layoutEngine;
  if (v3)
  {
    primaryDockVariant = [layoutEngine primaryDockVariant];
  }

  else
  {
    primaryDockVariant = [layoutEngine secondaryDockVariant];
  }

  v7 = primaryDockVariant;

  return v7;
}

- (UIView)backgroundView
{
  glassDockView = self->_glassDockView;
  if (!glassDockView)
  {
    glassDockView = self->_materialDockView;
    if (!glassDockView)
    {
      glassDockView = self->_gradientBlurBackgroundView;
    }
  }

  return glassDockView;
}

- (void)updateAppearanceForWallpaper
{
  v3 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "Updating status bar appearance for wallpaper", v22, 2u);
  }

  materialDockView = [(DBDockRootViewController *)self materialDockView];
  traitCollection = [(DBDockRootViewController *)self traitCollection];
  [materialDockView updateMaterialForStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

  environment = [(DBDockRootViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];

  wallpaperPreferences = [environmentConfiguration wallpaperPreferences];
  currentWallpaper = [wallpaperPreferences currentWallpaper];

  colorVariantOverride = [(DBDockRootViewController *)self colorVariantOverride];
  colorVariantOverride2 = [(DBDockRootViewController *)self colorVariantOverride];
  environment2 = [(DBDockRootViewController *)self environment];
  environmentConfiguration2 = [environment2 environmentConfiguration];
  currentViewAreaSupportsUIOutsideSafeArea = [environmentConfiguration2 currentViewAreaSupportsUIOutsideSafeArea];

  v15 = 0.0;
  if (![(DBDockRootViewController *)self isStandByScreenActive])
  {
    _isDualStatusBarLayout = [(DBDockRootViewController *)self _isDualStatusBarLayout];
    v17 = !colorVariantOverride2 || _isDualStatusBarLayout;
    v18 = (v17 | currentViewAreaSupportsUIOutsideSafeArea) & 1;
    v15 = v18 ? 0.0 : 1.0;
    if (!v18 && colorVariantOverride != 1)
    {
      traits = [currentWallpaper traits];
      v15 = 0.0;
      if ([traits isBlack])
      {
        traitCollection2 = [(DBDockRootViewController *)self traitCollection];
        if ([traitCollection2 userInterfaceStyle] == 2)
        {
          v15 = 1.0;
        }

        else
        {
          v15 = 0.0;
        }
      }
    }
  }

  keylineView = [(DBDockRootViewController *)self keylineView];
  [keylineView setAlpha:v15];
}

- (BOOL)_isDualStatusBarLayout
{
  layout = [(DBDockRootViewController *)self layout];
  if (layout != 1)
  {
    LOBYTE(layout) = [(DBDockRootViewController *)self layout]== 2;
  }

  return layout;
}

- (id)_focusHighlightColor
{
  environment = [(DBDockRootViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];
  wallpaperPreferences = [environmentConfiguration wallpaperPreferences];
  currentWallpaper = [wallpaperPreferences currentWallpaper];

  environment2 = [(DBDockRootViewController *)self environment];
  workspace = [environment2 workspace];
  state = [workspace state];
  activeBundleIdentifier = [state activeBundleIdentifier];

  if (activeBundleIdentifier)
  {
    v11 = [activeBundleIdentifier isEqualToString:@"com.apple.CarPlay.dashboard"];
  }

  else
  {
    v11 = 1;
  }

  traits = [currentWallpaper traits];
  supportsDashboardPlatterMaterials = [traits supportsDashboardPlatterMaterials];

  if (v11 && supportsDashboardPlatterMaterials)
  {
    _carSystemPrimaryColor = [MEMORY[0x277D75348] _carSystemPrimaryColor];
  }

  else
  {
    _carSystemPrimaryColor = [MEMORY[0x277D75348] _carSystemFocusColor];
  }

  v15 = _carSystemPrimaryColor;

  return v15;
}

- (void)viewWillLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = DBDockRootViewController;
  [(DBDockRootViewController *)&v10 viewWillLayoutSubviews];
  currentStatusBarEdge = [(DBDockRootViewController *)self currentStatusBarEdge];
  environment = [(DBDockRootViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];
  currentStatusBarEdge2 = [environmentConfiguration currentStatusBarEdge];

  if (currentStatusBarEdge != currentStatusBarEdge2)
  {
    environment2 = [(DBDockRootViewController *)self environment];
    environmentConfiguration2 = [environment2 environmentConfiguration];
    -[DBDockRootViewController setCurrentStatusBarEdge:](self, "setCurrentStatusBarEdge:", [environmentConfiguration2 currentStatusBarEdge]);

    [(DBDockRootViewController *)self _updateBackgroundConstraints];
    statusBarViewController = [(DBDockRootViewController *)self statusBarViewController];
    [statusBarViewController statusBarEdgeUpdated];

    [(DBDockRootViewController *)self _updateAdditionalSafeAreaInsets];
    [(DBDockRootViewController *)self _setupClimateFocusGuides];
  }

  [(DBDockRootViewController *)self _updateConstraintsForStatusBar];
  [(DBDockRootViewController *)self hideBackgroundIfNeeded];
}

- (DBDockRootViewController)initWithEnvironment:(id)environment iconProvider:(id)provider audioNotificationViewController:(id)controller stateProvider:(id)stateProvider dataBroadcaster:(id)broadcaster layout:(unint64_t)layout layoutEngine:(id)engine
{
  environmentCopy = environment;
  providerCopy = provider;
  controllerCopy = controller;
  stateProviderCopy = stateProvider;
  broadcasterCopy = broadcaster;
  engineCopy = engine;
  v36.receiver = self;
  v36.super_class = DBDockRootViewController;
  v21 = [(DBDockRootViewController *)&v36 init];
  v22 = v21;
  if (v21)
  {
    v35 = controllerCopy;
    objc_storeWeak(&v21->_environment, environmentCopy);
    v23 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285AEF4A0];
    dockObservers = v22->_dockObservers;
    v22->_dockObservers = v23;

    environmentConfiguration = [environmentCopy environmentConfiguration];
    v22->_layout = layout;
    objc_storeStrong(&v22->_layoutEngine, engine);
    v26 = *(MEMORY[0x277D768C8] + 16);
    *&v22->_extraSafeAreaInsets.top = *MEMORY[0x277D768C8];
    *&v22->_extraSafeAreaInsets.bottom = v26;
    objc_storeStrong(&v22->_audioNotificationViewController, controller);
    if (providerCopy)
    {
      v27 = [DBAppDockViewController alloc];
      appHistory = [environmentConfiguration appHistory];
      v29 = [(DBAppDockViewController *)v27 initWithAppHistory:appHistory iconProvider:providerCopy environmentConfiguration:environmentConfiguration];
      appDockViewController = v22->_appDockViewController;
      v22->_appDockViewController = v29;
    }

    v31 = [[DBStatusBarViewController alloc] initWithStateProvider:stateProviderCopy dataBroadcaster:broadcasterCopy layout:layout environmentConfiguration:environmentConfiguration];
    statusBarViewController = v22->_statusBarViewController;
    v22->_statusBarViewController = v31;

    v22->_colorVariantOverride = -1;
    v22->_siriPresentationActive = 0;
    workspace = [environmentCopy workspace];
    [workspace addObserver:v22];

    controllerCopy = v35;
  }

  return v22;
}

- (void)setExtraSafeAreaInsets:(UIEdgeInsets)insets
{
  self->_extraSafeAreaInsets = insets;
  [(DBDockRootViewController *)self _updateConstraintsForStatusBar];

  [(DBDockRootViewController *)self _updateAdditionalSafeAreaInsets];
}

- (void)setAudioNotificationViewController:(id)controller
{
  objc_storeStrong(&self->_audioNotificationViewController, controller);
  controllerCopy = controller;
  traitCollection = [(DBDockRootViewController *)self traitCollection];
  [controllerCopy updateInterfaceWithStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];
}

- (void)_setDualStatusBarCornerRadius
{
  v86[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CF9170]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  [(DBDockRootViewController *)self setCornerRadiusView:v8];

  cornerRadiusView = [(DBDockRootViewController *)self cornerRadiusView];
  [cornerRadiusView setTranslatesAutoresizingMaskIntoConstraints:0];

  clearColor = [MEMORY[0x277D75348] clearColor];
  cornerRadiusView2 = [(DBDockRootViewController *)self cornerRadiusView];
  [cornerRadiusView2 setBackgroundColor:clearColor];

  cornerRadiusView3 = [(DBDockRootViewController *)self cornerRadiusView];
  layer = [cornerRadiusView3 layer];
  [layer setShadowOpacity:0.0];

  cornerRadiusView4 = [(DBDockRootViewController *)self cornerRadiusView];
  layer2 = [cornerRadiusView4 layer];
  [layer2 setAllowsHitTesting:0];

  v16 = [objc_alloc(MEMORY[0x277CF9170]) initWithFrame:{v4, v5, v6, v7}];
  [(DBDockRootViewController *)self setMaskView:v16];

  maskView = [(DBDockRootViewController *)self maskView];
  [maskView setTranslatesAutoresizingMaskIntoConstraints:0];

  blackColor = [MEMORY[0x277D75348] blackColor];
  maskView2 = [(DBDockRootViewController *)self maskView];
  [maskView2 setBackgroundColor:blackColor];

  maskView3 = [(DBDockRootViewController *)self maskView];
  layer3 = [maskView3 layer];
  [layer3 setCornerRadius:22.0];

  v22 = *MEMORY[0x277CDA138];
  maskView4 = [(DBDockRootViewController *)self maskView];
  layer4 = [maskView4 layer];
  [layer4 setCornerCurve:v22];

  v25 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA310]];
  maskView5 = [(DBDockRootViewController *)self maskView];
  layer5 = [maskView5 layer];
  [layer5 setCompositingFilter:v25];

  maskView6 = [(DBDockRootViewController *)self maskView];
  layer6 = [maskView6 layer];
  [layer6 setShadowOpacity:0.0];

  maskView7 = [(DBDockRootViewController *)self maskView];
  layer7 = [maskView7 layer];
  [layer7 setAllowsHitTesting:0];

  view = [(DBDockRootViewController *)self view];
  cornerRadiusView5 = [(DBDockRootViewController *)self cornerRadiusView];
  [view addSubview:cornerRadiusView5];

  view2 = [(DBDockRootViewController *)self view];
  maskView8 = [(DBDockRootViewController *)self maskView];
  [view2 addSubview:maskView8];

  view3 = [(DBDockRootViewController *)self view];
  maskView9 = [(DBDockRootViewController *)self maskView];
  [view3 bringSubviewToFront:maskView9];

  environment = [(DBDockRootViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];
  LOBYTE(layer5) = [environmentConfiguration isRightHandDrive];

  LOBYTE(environment) = layer5 ^ ([(DBDockRootViewController *)self layout]!= 1);
  v78 = MEMORY[0x277CCAAD0];
  cornerRadiusView6 = [(DBDockRootViewController *)self cornerRadiusView];
  v82 = cornerRadiusView6;
  if (environment)
  {
    rightAnchor = [cornerRadiusView6 rightAnchor];
    view4 = [(DBDockRootViewController *)self view];
    leftAnchor = [view4 leftAnchor];
    v80 = rightAnchor;
    v44 = [rightAnchor constraintEqualToAnchor:leftAnchor];
    v85[0] = v44;
    maskView10 = [(DBDockRootViewController *)self maskView];
    rightAnchor2 = [maskView10 rightAnchor];
    view5 = [(DBDockRootViewController *)self view];
    leftAnchor2 = [view5 leftAnchor];
    v49 = [rightAnchor2 constraintEqualToAnchor:leftAnchor2];
    v85[1] = v49;
    v50 = v85;
  }

  else
  {
    leftAnchor3 = [cornerRadiusView6 leftAnchor];
    view4 = [(DBDockRootViewController *)self view];
    leftAnchor = [view4 rightAnchor];
    v80 = leftAnchor3;
    v44 = [leftAnchor3 constraintEqualToAnchor:leftAnchor];
    v86[0] = v44;
    maskView10 = [(DBDockRootViewController *)self maskView];
    rightAnchor2 = [maskView10 leftAnchor];
    view5 = [(DBDockRootViewController *)self view];
    leftAnchor2 = [view5 rightAnchor];
    v49 = [rightAnchor2 constraintEqualToAnchor:leftAnchor2];
    v86[1] = v49;
    v50 = v86;
  }

  v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
  [v78 activateConstraints:v52];

  v69 = MEMORY[0x277CCAAD0];
  cornerRadiusView7 = [(DBDockRootViewController *)self cornerRadiusView];
  topAnchor = [cornerRadiusView7 topAnchor];
  view6 = [(DBDockRootViewController *)self view];
  topAnchor2 = [view6 topAnchor];
  v76 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v84[0] = v76;
  cornerRadiusView8 = [(DBDockRootViewController *)self cornerRadiusView];
  bottomAnchor = [cornerRadiusView8 bottomAnchor];
  view7 = [(DBDockRootViewController *)self view];
  bottomAnchor2 = [view7 bottomAnchor];
  v71 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v84[1] = v71;
  cornerRadiusView9 = [(DBDockRootViewController *)self cornerRadiusView];
  widthAnchor = [cornerRadiusView9 widthAnchor];
  v67 = [widthAnchor constraintEqualToConstant:22.0];
  v84[2] = v67;
  maskView11 = [(DBDockRootViewController *)self maskView];
  topAnchor3 = [maskView11 topAnchor];
  view8 = [(DBDockRootViewController *)self view];
  topAnchor4 = [view8 topAnchor];
  v53 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v84[3] = v53;
  maskView12 = [(DBDockRootViewController *)self maskView];
  widthAnchor2 = [maskView12 widthAnchor];
  v56 = [widthAnchor2 constraintEqualToConstant:22.0 + 22.0];
  v84[4] = v56;
  maskView13 = [(DBDockRootViewController *)self maskView];
  bottomAnchor3 = [maskView13 bottomAnchor];
  view9 = [(DBDockRootViewController *)self view];
  bottomAnchor4 = [view9 bottomAnchor];
  v61 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v84[5] = v61;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:6];
  [v69 activateConstraints:v62];
}

- (id)_dualStatusBarBackgroundConstraints
{
  v20[2] = *MEMORY[0x277D85DE8];
  environment = [(DBDockRootViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];
  isRightHandDrive = [environmentConfiguration isRightHandDrive];

  LOBYTE(environment) = isRightHandDrive ^ ([(DBDockRootViewController *)self layout]!= 1);
  backgroundView = [(DBDockRootViewController *)self backgroundView];
  leftAnchor = [backgroundView leftAnchor];
  if (environment)
  {
    cornerRadiusView = [(DBDockRootViewController *)self cornerRadiusView];
    leftAnchor2 = [cornerRadiusView leftAnchor];
    v9 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v19 = v9;
    backgroundView2 = [(DBDockRootViewController *)self backgroundView];
    rightAnchor = [backgroundView2 rightAnchor];
    view = [(DBDockRootViewController *)self view];
    v13 = &v19;
  }

  else
  {
    cornerRadiusView = [(DBDockRootViewController *)self view];
    leftAnchor2 = [cornerRadiusView leftAnchor];
    v9 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v20[0] = v9;
    backgroundView2 = [(DBDockRootViewController *)self backgroundView];
    rightAnchor = [backgroundView2 rightAnchor];
    view = [(DBDockRootViewController *)self cornerRadiusView];
    v13 = v20;
  }

  rightAnchor2 = [view rightAnchor];
  v15 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v13[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  return v16;
}

- (void)dealloc
{
  homeButtonSource = [(DBDockRootViewController *)self homeButtonSource];
  [homeButtonSource invalidate];

  v4.receiver = self;
  v4.super_class = DBDockRootViewController;
  [(DBDockRootViewController *)&v4 dealloc];
}

- (void)_updateAdditionalSafeAreaInsets
{
  if ([(DBDockRootViewController *)self _isDualStatusBarLayout]|| [(DBDockRootViewController *)self _isTopStatusBarLayout])
  {
    return;
  }

  screenResizeButton = [(DBDockRootViewController *)self screenResizeButton];
  if (screenResizeButton)
  {
    screenResizeButton2 = [(DBDockRootViewController *)self screenResizeButton];
    v5 = [screenResizeButton2 isHidden] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  environment = [(DBDockRootViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];
  if ([environmentConfiguration currentStatusBarEdge] == 1)
  {

LABEL_10:
    if (v5)
    {
      v11 = 74.0;
    }

    else
    {
      v11 = 41.0;
    }

    environment2 = [(DBDockRootViewController *)self environment];
    environmentConfiguration2 = [environment2 environmentConfiguration];
    isRightHandDrive = [environmentConfiguration2 isRightHandDrive];

    v15 = 0.0;
    v16 = self->_extraSafeAreaInsets.top + 0.0;
    if (isRightHandDrive)
    {
      v17 = 0.0;
    }

    else
    {
      v17 = v11;
    }

    v18 = v17 + self->_extraSafeAreaInsets.left;
    v19 = self->_extraSafeAreaInsets.bottom + 0.0;
    if (isRightHandDrive)
    {
      v15 = v11;
    }

    v20 = v15 + self->_extraSafeAreaInsets.right;
    goto LABEL_23;
  }

  environment3 = [(DBDockRootViewController *)self environment];
  environmentConfiguration3 = [environment3 environmentConfiguration];
  currentStatusBarEdge = [environmentConfiguration3 currentStatusBarEdge];

  if (currentStatusBarEdge == 3)
  {
    goto LABEL_10;
  }

  if (v5)
  {
    v16 = 29.0;
  }

  else
  {
    v16 = 8.0;
  }

  v19 = 27.0;
  v18 = 0.0;
  v20 = 0.0;
LABEL_23:
  statusBarViewController = [(DBDockRootViewController *)self statusBarViewController];
  [statusBarViewController setAdditionalSafeAreaInsets:{v16, v18, v19, v20}];
}

- (void)_updateConstraintsForStatusBar
{
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  activeConstraints = [(DBDockRootViewController *)self activeConstraints];

  if (activeConstraints)
  {
    v4 = MEMORY[0x277CCAAD0];
    activeConstraints2 = [(DBDockRootViewController *)self activeConstraints];
    [v4 deactivateConstraints:activeConstraints2];
  }

  environment = [(DBDockRootViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];
  currentStatusBarEdge = [environmentConfiguration currentStatusBarEdge];

  appDockViewController = [(DBDockRootViewController *)self appDockViewController];

  if (appDockViewController)
  {
    v10 = [(DBDockRootViewController *)self _appDockConstraintsWithStatusBarEdge:currentStatusBarEdge];
    [v16 addObjectsFromArray:v10];
  }

  homeButton = [(DBDockRootViewController *)self homeButton];

  if (homeButton)
  {
    v12 = [(DBDockRootViewController *)self _homeButtonConstraintsWithStatusBarEdge:currentStatusBarEdge];
    [v16 addObjectsFromArray:v12];
  }

  keylineView = [(DBDockRootViewController *)self keylineView];

  if (keylineView)
  {
    v14 = [(DBDockRootViewController *)self _keylineViewConstraintsWithStatusBarEdge:currentStatusBarEdge];
    [v16 addObjectsFromArray:v14];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:v16];
  v15 = [v16 copy];
  [(DBDockRootViewController *)self setActiveConstraints:v15];
}

- (id)_appDockConstraintsWithStatusBarEdge:(unint64_t)edge
{
  v47[4] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  appDockViewController = [(DBDockRootViewController *)self appDockViewController];
  view = [appDockViewController view];

  statusBarViewController = [(DBDockRootViewController *)self statusBarViewController];
  appDockLayoutGuide = [statusBarViewController appDockLayoutGuide];

  v44 = appDockLayoutGuide;
  if (appDockLayoutGuide)
  {
    leadingAnchor = [appDockLayoutGuide leadingAnchor];
    leadingAnchor2 = [view leadingAnchor];
    v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v47[0] = v34;
    trailingAnchor = [appDockLayoutGuide trailingAnchor];
    trailingAnchor2 = [view trailingAnchor];
    v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v47[1] = v10;
    [appDockLayoutGuide topAnchor];
    selfCopy = self;
    v12 = v11 = v5;
    [view topAnchor];
    v13 = v42 = edge;
    v14 = [v12 constraintEqualToAnchor:v13];
    v47[2] = v14;
    bottomAnchor = [appDockLayoutGuide bottomAnchor];
    bottomAnchor2 = [view bottomAnchor];
    v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v47[3] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:4];
    [v11 addObjectsFromArray:v18];

    edge = v42;
    v5 = v11;
    self = selfCopy;
  }

  contentView = [(DBDockRootViewController *)self contentView];
  widthAnchor = [view widthAnchor];
  v43 = widthAnchor;
  if ((edge & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    [(DBDockRootViewController *)self _appDockPrimaryAxisLength:0];
    widthAnchor2 = [widthAnchor constraintEqualToConstant:?];
    v46[0] = widthAnchor2;
    centerXAnchor = [view centerXAnchor];
    centerXAnchor2 = [contentView centerXAnchor];
    v39 = centerXAnchor;
    centerXAnchor4 = [centerXAnchor constraintEqualToAnchor:?];
    v46[1] = centerXAnchor4;
    centerYAnchor = [view centerYAnchor];
    centerYAnchor2 = [contentView centerYAnchor];
    centerYAnchor3 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v46[2] = centerYAnchor3;
    heightAnchor = [view heightAnchor];
    heightAnchor2 = [contentView heightAnchor];
    v27 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v46[3] = v27;
    v28 = v46;
  }

  else
  {
    widthAnchor2 = [contentView widthAnchor];
    v39 = [widthAnchor constraintEqualToAnchor:?];
    v45[0] = v39;
    centerXAnchor3 = [view centerXAnchor];
    centerXAnchor4 = [contentView centerXAnchor];
    centerXAnchor2 = centerXAnchor3;
    centerYAnchor = [centerXAnchor3 constraintEqualToAnchor:?];
    v45[1] = centerYAnchor;
    centerYAnchor2 = [view centerYAnchor];
    centerYAnchor3 = [contentView centerYAnchor];
    heightAnchor = [centerYAnchor2 constraintEqualToAnchor:centerYAnchor3];
    v45[2] = heightAnchor;
    heightAnchor2 = [view heightAnchor];
    [(DBDockRootViewController *)self _appDockPrimaryAxisLength:1];
    v27 = [heightAnchor2 constraintEqualToConstant:?];
    v45[3] = v27;
    v28 = v45;
  }

  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  [v5 addObjectsFromArray:v30];

  return v5;
}

- (double)_appDockPrimaryAxisLength:(BOOL)length
{
  lengthCopy = length;
  environment = [(DBDockRootViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];
  [environmentConfiguration currentSafeViewAreaFrame];
  v8 = v7;
  v10 = v9;

  screenResizeButton = [(DBDockRootViewController *)self screenResizeButton];
  if (screenResizeButton)
  {
    v12 = screenResizeButton;
    screenResizeButton2 = [(DBDockRootViewController *)self screenResizeButton];
    isHidden = [screenResizeButton2 isHidden];

    v15 = 37.0;
    if (lengthCopy)
    {
      v15 = 21.0;
    }

    if (isHidden)
    {
      v15 = 0.0;
    }
  }

  else
  {
    v15 = 0.0;
  }

  v16 = 370.0;
  if (lengthCopy)
  {
    v16 = 300.0;
    v17 = v10;
  }

  else
  {
    v17 = v8;
  }

  return dbl_24839BEC0[v17 > v15 + v16];
}

- (id)_homeButtonConstraintsWithStatusBarEdge:(unint64_t)edge
{
  v41[4] = *MEMORY[0x277D85DE8];
  if (edge == 2)
  {
    homeButton = [(DBDockRootViewController *)self homeButton];
    leadingAnchor = [homeButton leadingAnchor];
    contentView = [(DBDockRootViewController *)self contentView];
    leadingAnchor2 = [contentView leadingAnchor];
    v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v41[0] = v38;
    homeButton2 = [(DBDockRootViewController *)self homeButton];
    trailingAnchor = [homeButton2 trailingAnchor];
    contentView2 = [(DBDockRootViewController *)self contentView];
    [contentView2 trailingAnchor];
    contentView5 = imageView = trailingAnchor;
    v33 = [trailingAnchor constraintEqualToAnchor:?];
    v41[1] = v33;
    homeButton3 = [(DBDockRootViewController *)self homeButton];
    bottomAnchor = [homeButton3 bottomAnchor];
    contentView3 = [(DBDockRootViewController *)self contentView];
    bottomAnchor2 = [contentView3 bottomAnchor];
    widthAnchor2 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v41[2] = widthAnchor2;
    homeButton4 = [(DBDockRootViewController *)self homeButton];
    heightAnchor = [homeButton4 heightAnchor];
    homeButton5 = [(DBDockRootViewController *)self homeButton];
    widthAnchor = [homeButton5 widthAnchor];
    v13 = [heightAnchor constraintEqualToAnchor:widthAnchor multiplier:1.0];
    v41[3] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];

    rightAnchor = leadingAnchor;
    v16 = homeButton;

    rightAnchor2 = leadingAnchor2;
    contentView4 = contentView;
  }

  else
  {
    environment = [(DBDockRootViewController *)self environment];
    environmentConfiguration = [environment environmentConfiguration];
    isRightHandDrive = [environmentConfiguration isRightHandDrive];

    homeButton6 = [(DBDockRootViewController *)self homeButton];
    v16 = homeButton6;
    if (isRightHandDrive)
    {
      rightAnchor = [homeButton6 rightAnchor];
      contentView4 = [(DBDockRootViewController *)self contentView];
      rightAnchor2 = [contentView4 rightAnchor];
      v38 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-self->_extraSafeAreaInsets.right];
      v40[0] = v38;
      homeButton2 = [(DBDockRootViewController *)self homeButton];
      imageView = [homeButton2 imageView];
      centerYAnchor = [imageView centerYAnchor];
      contentView5 = [(DBDockRootViewController *)self contentView];
      [contentView5 centerYAnchor];
      v33 = contentView2 = centerYAnchor;
      homeButton3 = [centerYAnchor constraintEqualToAnchor:?];
      v40[1] = homeButton3;
      bottomAnchor = [(DBDockRootViewController *)self homeButton];
      contentView3 = [bottomAnchor heightAnchor];
      bottomAnchor2 = [(DBDockRootViewController *)self homeButton];
      widthAnchor2 = [bottomAnchor2 widthAnchor];
      homeButton4 = [contentView3 constraintEqualToAnchor:widthAnchor2 multiplier:1.0];
      v40[2] = homeButton4;
      v24 = MEMORY[0x277CBEA60];
      v25 = v40;
    }

    else
    {
      rightAnchor = [homeButton6 leftAnchor];
      contentView4 = [(DBDockRootViewController *)self contentView];
      rightAnchor2 = [contentView4 leftAnchor];
      v38 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:self->_extraSafeAreaInsets.left];
      v39[0] = v38;
      homeButton2 = [(DBDockRootViewController *)self homeButton];
      imageView = [homeButton2 imageView];
      centerYAnchor2 = [imageView centerYAnchor];
      contentView5 = [(DBDockRootViewController *)self contentView];
      [contentView5 centerYAnchor];
      v33 = contentView2 = centerYAnchor2;
      homeButton3 = [centerYAnchor2 constraintEqualToAnchor:?];
      v39[1] = homeButton3;
      bottomAnchor = [(DBDockRootViewController *)self homeButton];
      contentView3 = [bottomAnchor heightAnchor];
      bottomAnchor2 = [(DBDockRootViewController *)self homeButton];
      widthAnchor2 = [bottomAnchor2 widthAnchor];
      homeButton4 = [contentView3 constraintEqualToAnchor:widthAnchor2 multiplier:1.0];
      v39[2] = homeButton4;
      v24 = MEMORY[0x277CBEA60];
      v25 = v39;
    }

    v14 = [v24 arrayWithObjects:v25 count:3];
  }

  return v14;
}

- (id)_keylineViewConstraintsWithStatusBarEdge:(unint64_t)edge
{
  v41[4] = *MEMORY[0x277D85DE8];
  traitCollection = [(DBDockRootViewController *)self traitCollection];
  [traitCollection displayScale];
  v7 = 1.0 / v6;

  if (edge == 1)
  {
    keylineView = [(DBDockRootViewController *)self keylineView];
    bottomAnchor = [keylineView bottomAnchor];
    view = [(DBDockRootViewController *)self view];
    topAnchor = [view topAnchor];
  }

  else
  {
    if (edge != 3)
    {
      environment = [(DBDockRootViewController *)self environment];
      environmentConfiguration = [environment environmentConfiguration];
      isRightHandDrive = [environmentConfiguration isRightHandDrive];

      keylineView2 = [(DBDockRootViewController *)self keylineView];
      v28 = keylineView2;
      if (isRightHandDrive)
      {
        rightAnchor = [keylineView2 rightAnchor];
        view2 = [(DBDockRootViewController *)self view];
        [view2 leftAnchor];
      }

      else
      {
        rightAnchor = [keylineView2 leftAnchor];
        view2 = [(DBDockRootViewController *)self view];
        [view2 rightAnchor];
      }
      v31 = ;
      v32 = [rightAnchor constraintEqualToAnchor:v31];

      v39 = v32;
      v40[0] = v32;
      keylineView3 = [(DBDockRootViewController *)self keylineView];
      widthAnchor = [keylineView3 widthAnchor];
      v36 = [widthAnchor constraintEqualToConstant:v7];
      v40[1] = v36;
      keylineView4 = [(DBDockRootViewController *)self keylineView];
      topAnchor2 = [keylineView4 topAnchor];
      view3 = [(DBDockRootViewController *)self view];
      topAnchor3 = [view3 topAnchor];
      v17 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
      v40[2] = v17;
      keylineView5 = [(DBDockRootViewController *)self keylineView];
      bottomAnchor2 = [keylineView5 bottomAnchor];
      view4 = [(DBDockRootViewController *)self view];
      bottomAnchor3 = [view4 bottomAnchor];
      v22 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
      v40[3] = v22;
      v23 = v40;
      goto LABEL_10;
    }

    keylineView = [(DBDockRootViewController *)self keylineView];
    bottomAnchor = [keylineView topAnchor];
    view = [(DBDockRootViewController *)self view];
    topAnchor = [view bottomAnchor];
  }

  v12 = topAnchor;
  v13 = [bottomAnchor constraintEqualToAnchor:topAnchor];

  v39 = v13;
  v41[0] = v13;
  keylineView3 = [(DBDockRootViewController *)self keylineView];
  widthAnchor = [keylineView3 heightAnchor];
  v36 = [widthAnchor constraintEqualToConstant:v7];
  v41[1] = v36;
  keylineView4 = [(DBDockRootViewController *)self keylineView];
  topAnchor2 = [keylineView4 leftAnchor];
  view3 = [(DBDockRootViewController *)self view];
  topAnchor3 = [view3 leftAnchor];
  v17 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
  v41[2] = v17;
  keylineView5 = [(DBDockRootViewController *)self keylineView];
  bottomAnchor2 = [keylineView5 rightAnchor];
  view4 = [(DBDockRootViewController *)self view];
  bottomAnchor3 = [view4 rightAnchor];
  v22 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v41[3] = v22;
  v23 = v41;
LABEL_10:
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];

  return v33;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = DBDockRootViewController;
  [(DBDockRootViewController *)&v12 viewDidLoad];
  view = [(DBDockRootViewController *)self view];
  layer = [view layer];
  [layer setHitTestsAsOpaque:1];

  if ([(DBDockRootViewController *)self useGlassDock])
  {
    environment = +[_TtC9DashBoard20DBDashboardGlassView createWithDockConfiguration];
    [(DBDockRootViewController *)self setGlassDockView:environment];
  }

  else if ([(DBDockRootViewController *)self _isTopStatusBarLayout])
  {
    v6 = [_TtC9DashBoard32DBDockGradientBlurBackgroundView alloc];
    [view bounds];
    environment = [(DBDockGradientBlurBackgroundView *)v6 initWithFrame:?];
    [(DBDockRootViewController *)self setGradientBlurBackgroundView:environment];
  }

  else
  {
    v7 = [DBDockBackgroundView alloc];
    environment = [(DBDockRootViewController *)self environment];
    v8 = [(DBDockBackgroundView *)v7 initWithEnvironment:environment layout:[(DBDockRootViewController *)self layout]];
    [(DBDockRootViewController *)self setMaterialDockView:v8];
  }

  backgroundView = [(DBDockRootViewController *)self backgroundView];
  [backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];

  [(DBDockRootViewController *)self hideBackgroundIfNeeded];
  backgroundView2 = [(DBDockRootViewController *)self backgroundView];
  [view addSubview:backgroundView2];

  if ([(DBDockRootViewController *)self _useRoundedCorners])
  {
    [(DBDockRootViewController *)self _setDualStatusBarCornerRadius];
  }

  [(DBDockRootViewController *)self _updateBackgroundConstraints];
  if ([(DBDockRootViewController *)self _isDualStatusBarLayout])
  {
    [(DBDockRootViewController *)self _setupStatusBarViewController];
    if ([(DBDockRootViewController *)self layout]!= 1)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  _isTopStatusBarLayout = [(DBDockRootViewController *)self _isTopStatusBarLayout];
  [(DBDockRootViewController *)self _setupStatusBarViewController];
  if (!_isTopStatusBarLayout)
  {
LABEL_12:
    [(DBDockRootViewController *)self _setupAppDockViewController];
    [(DBDockRootViewController *)self _setupHomeButton];
  }

LABEL_13:
  [(DBDockRootViewController *)self _updateConstraintsForStatusBar];
  [(DBDockRootViewController *)self _setupClimateFocusGuides];
}

- (void)_updateBackgroundConstraints
{
  v44[2] = *MEMORY[0x277D85DE8];
  backgroundViewConstraints = [(DBDockRootViewController *)self backgroundViewConstraints];

  if (backgroundViewConstraints)
  {
    v4 = MEMORY[0x277CCAAD0];
    backgroundViewConstraints2 = [(DBDockRootViewController *)self backgroundViewConstraints];
    [v4 deactivateConstraints:backgroundViewConstraints2];
  }

  v6 = DBIsPrimaryStatusBar([(DBDockRootViewController *)self layout]);
  layoutEngine = [(DBDockRootViewController *)self layoutEngine];
  v8 = layoutEngine;
  if (v6)
  {
    [layoutEngine primaryDockMargins];
  }

  else
  {
    [layoutEngine secondaryDockMargins];
  }

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;

  if ([(DBDockRootViewController *)self _useRoundedCorners])
  {
    _dualStatusBarBackgroundConstraints = [(DBDockRootViewController *)self _dualStatusBarBackgroundConstraints];
  }

  else
  {
    backgroundView = [(DBDockRootViewController *)self backgroundView];
    leftAnchor = [backgroundView leftAnchor];
    view = [(DBDockRootViewController *)self view];
    leftAnchor2 = [view leftAnchor];
    v19 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v14];
    v44[0] = v19;
    backgroundView2 = [(DBDockRootViewController *)self backgroundView];
    rightAnchor = [backgroundView2 rightAnchor];
    view2 = [(DBDockRootViewController *)self view];
    rightAnchor2 = [view2 rightAnchor];
    v24 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-v16];
    v44[1] = v24;
    _dualStatusBarBackgroundConstraints = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
  }

  backgroundView3 = [(DBDockRootViewController *)self backgroundView];
  topAnchor = [backgroundView3 topAnchor];
  view3 = [(DBDockRootViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v13];
  v43[0] = v25;
  backgroundView4 = [(DBDockRootViewController *)self backgroundView];
  bottomAnchor = [backgroundView4 bottomAnchor];
  view4 = [(DBDockRootViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v15];
  v43[1] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
  v32 = _dualStatusBarBackgroundConstraints;
  v33 = [_dualStatusBarBackgroundConstraints arrayByAddingObjectsFromArray:v31];
  [(DBDockRootViewController *)self setBackgroundViewConstraints:v33];

  v34 = MEMORY[0x277CCAAD0];
  backgroundViewConstraints3 = [(DBDockRootViewController *)self backgroundViewConstraints];
  [v34 activateConstraints:backgroundViewConstraints3];
}

- (void)_setupClimateVerticalFocusGuides
{
  v58[1] = *MEMORY[0x277D85DE8];
  if ([(DBDockRootViewController *)self layout]== 1)
  {
    homeToClimateFocusGuide = [(DBDockRootViewController *)self homeToClimateFocusGuide];

    if (homeToClimateFocusGuide)
    {
      view = [(DBDockRootViewController *)self view];
      homeToClimateFocusGuide2 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
      [view removeLayoutGuide:homeToClimateFocusGuide2];
    }

    dockToClimateFocusGuide = [(DBDockRootViewController *)self dockToClimateFocusGuide];

    if (dockToClimateFocusGuide)
    {
      view2 = [(DBDockRootViewController *)self view];
      dockToClimateFocusGuide2 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
      [view2 removeLayoutGuide:dockToClimateFocusGuide2];
    }

    v9 = objc_alloc_init(DBFocusGuide);
    [(DBDockRootViewController *)self setHomeToClimateFocusGuide:v9];

    objc_initWeak(&location, self);
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __60__DBDockRootViewController__setupClimateVerticalFocusGuides__block_invoke;
    v54[3] = &unk_278F02300;
    objc_copyWeak(&v55, &location);
    homeToClimateFocusGuide3 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
    [homeToClimateFocusGuide3 setFocusUpdateHandler:v54];

    homeButton = [(DBDockRootViewController *)self homeButton];
    v58[0] = homeButton;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:1];
    homeToClimateFocusGuide4 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
    [homeToClimateFocusGuide4 setPreferredFocusEnvironments:v12];

    view3 = [(DBDockRootViewController *)self view];
    homeToClimateFocusGuide5 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
    [view3 addLayoutGuide:homeToClimateFocusGuide5];

    appDockViewController = [(DBDockRootViewController *)self appDockViewController];
    view4 = [appDockViewController view];

    v17 = objc_alloc_init(DBFocusGuide);
    [(DBDockRootViewController *)self setDockToClimateFocusGuide:v17];

    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __60__DBDockRootViewController__setupClimateVerticalFocusGuides__block_invoke_2;
    v52[3] = &unk_278F02300;
    objc_copyWeak(&v53, &location);
    dockToClimateFocusGuide3 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
    [dockToClimateFocusGuide3 setFocusUpdateHandler:v52];

    view5 = [(DBDockRootViewController *)self view];
    dockToClimateFocusGuide4 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
    [view5 addLayoutGuide:dockToClimateFocusGuide4];

    v33 = MEMORY[0x277CCAAD0];
    dockToClimateFocusGuide5 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
    widthAnchor = [dockToClimateFocusGuide5 widthAnchor];
    view6 = [(DBDockRootViewController *)self view];
    widthAnchor2 = [view6 widthAnchor];
    v46 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v57[0] = v46;
    dockToClimateFocusGuide6 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
    heightAnchor = [dockToClimateFocusGuide6 heightAnchor];
    v43 = [heightAnchor constraintEqualToConstant:1.0];
    v57[1] = v43;
    dockToClimateFocusGuide7 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
    bottomAnchor = [dockToClimateFocusGuide7 bottomAnchor];
    bottomAnchor2 = [view4 bottomAnchor];
    v39 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v57[2] = v39;
    homeToClimateFocusGuide6 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
    widthAnchor3 = [homeToClimateFocusGuide6 widthAnchor];
    view7 = [(DBDockRootViewController *)self view];
    widthAnchor4 = [view7 widthAnchor];
    v34 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
    v57[3] = v34;
    homeToClimateFocusGuide7 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
    heightAnchor2 = [homeToClimateFocusGuide7 heightAnchor];
    v23 = [heightAnchor2 constraintEqualToConstant:1.0];
    v57[4] = v23;
    homeToClimateFocusGuide8 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
    bottomAnchor3 = [homeToClimateFocusGuide8 bottomAnchor];
    homeButton2 = [(DBDockRootViewController *)self homeButton];
    topAnchor = [homeButton2 topAnchor];
    v28 = [bottomAnchor3 constraintEqualToAnchor:topAnchor];
    v57[5] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:6];
    [v33 activateConstraints:v29];

    environment = [(DBDockRootViewController *)self environment];
    environmentConfiguration = [environment environmentConfiguration];
    LODWORD(heightAnchor2) = [environmentConfiguration hasDualStatusBar];

    if (heightAnchor2)
    {
      dockToClimateFocusGuide8 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
      [dockToClimateFocusGuide8 setEnabled:0];
    }

    objc_destroyWeak(&v53);

    objc_destroyWeak(&v55);
    objc_destroyWeak(&location);
  }
}

void __60__DBDockRootViewController__setupClimateVerticalFocusGuides__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _responderWindow];
  [v1 frame];
  v3 = v2;
  v4 = [WeakRetained homeButton];
  [v4 frame];
  v6 = v3 + v5;

  v7 = [WeakRetained homeButton];
  [v7 frame];
  v9 = v8;
  v10 = [WeakRetained homeButton];
  [v10 frame];
  v12 = v11;
  v13 = [WeakRetained homeButton];
  [v13 frame];
  v15 = v14;

  v16 = [MEMORY[0x277D75F90] _movementWithHeading:1 isInitial:0 fallbackMovementOriginatingFrame:{v6, v9, v12, v15}];
  v17 = objc_alloc(MEMORY[0x277D75510]);
  v18 = [MEMORY[0x277D75F80] infoWithSenderID:0];
  v19 = [v17 initWithFocusMovementInfo:v16 inputDeviceInfo:v18 shouldPerformHapticFeedback:0 focusedFrameInSceneCoordinateSpace:{v6, v9, v12, v15}];

  v20 = [WeakRetained delegate];
  [v20 dockRootViewController:WeakRetained requestFocusUpdate:v19];
}

void __60__DBDockRootViewController__setupClimateVerticalFocusGuides__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _responderWindow];
  [v1 frame];
  v3 = v2;
  v4 = [WeakRetained appDockViewController];
  v5 = [v4 view];
  [v5 frame];
  v7 = v3 + v6;

  v8 = [WeakRetained appDockViewController];
  v9 = [v8 view];
  [v9 frame];
  v11 = v10;
  v12 = [WeakRetained appDockViewController];
  v13 = [v12 view];
  [v13 frame];
  v15 = v14;
  v16 = [WeakRetained appDockViewController];
  v17 = [v16 view];
  [v17 frame];
  v19 = v18;

  v20 = MEMORY[0x277D75F90];
  v21 = [WeakRetained appDockViewController];
  v22 = [v21 view];
  [v22 frame];
  v23 = [v20 _movementWithHeading:2 isInitial:0 fallbackMovementOriginatingFrame:?];

  v24 = objc_alloc(MEMORY[0x277D75510]);
  v25 = [MEMORY[0x277D75F80] infoWithSenderID:0];
  v26 = [v24 initWithFocusMovementInfo:v23 inputDeviceInfo:v25 shouldPerformHapticFeedback:0 focusedFrameInSceneCoordinateSpace:{v7, v11, v15, v19}];

  v27 = [WeakRetained delegate];
  [v27 dockRootViewController:WeakRetained requestFocusUpdate:v26];
}

- (void)_setupClimateHorizontalFocusGuides
{
  v71[1] = *MEMORY[0x277D85DE8];
  homeToClimateFocusGuide = [(DBDockRootViewController *)self homeToClimateFocusGuide];

  if (homeToClimateFocusGuide)
  {
    view = [(DBDockRootViewController *)self view];
    homeToClimateFocusGuide2 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
    [view removeLayoutGuide:homeToClimateFocusGuide2];
  }

  dockToClimateFocusGuide = [(DBDockRootViewController *)self dockToClimateFocusGuide];

  if (dockToClimateFocusGuide)
  {
    view2 = [(DBDockRootViewController *)self view];
    dockToClimateFocusGuide2 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
    [view2 removeLayoutGuide:dockToClimateFocusGuide2];
  }

  v9 = objc_alloc_init(DBFocusGuide);
  [(DBDockRootViewController *)self setHomeToClimateFocusGuide:v9];

  objc_initWeak(&location, self);
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __62__DBDockRootViewController__setupClimateHorizontalFocusGuides__block_invoke;
  v65[3] = &unk_278F02300;
  objc_copyWeak(&v66, &location);
  homeToClimateFocusGuide3 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
  [homeToClimateFocusGuide3 setFocusUpdateHandler:v65];

  homeButton = [(DBDockRootViewController *)self homeButton];
  v71[0] = homeButton;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:1];
  homeToClimateFocusGuide4 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
  [homeToClimateFocusGuide4 setPreferredFocusEnvironments:v12];

  view3 = [(DBDockRootViewController *)self view];
  homeToClimateFocusGuide5 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
  [view3 addLayoutGuide:homeToClimateFocusGuide5];

  appDockViewController = [(DBDockRootViewController *)self appDockViewController];
  view4 = [appDockViewController view];

  v17 = objc_alloc_init(DBFocusGuide);
  [(DBDockRootViewController *)self setDockToClimateFocusGuide:v17];

  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __62__DBDockRootViewController__setupClimateHorizontalFocusGuides__block_invoke_2;
  v63[3] = &unk_278F02300;
  objc_copyWeak(&v64, &location);
  dockToClimateFocusGuide3 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
  [dockToClimateFocusGuide3 setFocusUpdateHandler:v63];

  view5 = [(DBDockRootViewController *)self view];
  dockToClimateFocusGuide4 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
  [view5 addLayoutGuide:dockToClimateFocusGuide4];

  v42 = MEMORY[0x277CCAAD0];
  homeToClimateFocusGuide6 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
  widthAnchor = [homeToClimateFocusGuide6 widthAnchor];
  v59 = [widthAnchor constraintEqualToConstant:1.0];
  v70[0] = v59;
  homeToClimateFocusGuide7 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
  bottomAnchor = [homeToClimateFocusGuide7 bottomAnchor];
  view6 = [(DBDockRootViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v54 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v70[1] = v54;
  homeToClimateFocusGuide8 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
  topAnchor = [homeToClimateFocusGuide8 topAnchor];
  view7 = [(DBDockRootViewController *)self view];
  topAnchor2 = [view7 topAnchor];
  v49 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v70[2] = v49;
  dockToClimateFocusGuide5 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
  widthAnchor2 = [dockToClimateFocusGuide5 widthAnchor];
  v46 = [widthAnchor2 constraintEqualToConstant:1.0];
  v70[3] = v46;
  dockToClimateFocusGuide6 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
  bottomAnchor3 = [dockToClimateFocusGuide6 bottomAnchor];
  view8 = [(DBDockRootViewController *)self view];
  bottomAnchor4 = [view8 bottomAnchor];
  v23 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v70[4] = v23;
  dockToClimateFocusGuide7 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
  topAnchor3 = [dockToClimateFocusGuide7 topAnchor];
  view9 = [(DBDockRootViewController *)self view];
  topAnchor4 = [view9 topAnchor];
  v28 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v70[5] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:6];
  [v42 activateConstraints:v29];

  environment = [(DBDockRootViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];
  LODWORD(view8) = [environmentConfiguration isRightHandDrive];

  v62 = MEMORY[0x277CCAAD0];
  homeToClimateFocusGuide9 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
  if (view8)
  {
    rightAnchor = [homeToClimateFocusGuide9 rightAnchor];
    homeButton2 = [(DBDockRootViewController *)self homeButton];
    leftAnchor = [homeButton2 leftAnchor];
    v36 = [rightAnchor constraintEqualToAnchor:leftAnchor];
    v69[0] = v36;
    dockToClimateFocusGuide8 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
    leftAnchor2 = [dockToClimateFocusGuide8 leftAnchor];
    rightAnchor2 = [view4 rightAnchor];
    v40 = [leftAnchor2 constraintEqualToAnchor:rightAnchor2];
    v69[1] = v40;
    [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:2];
  }

  else
  {
    rightAnchor = [homeToClimateFocusGuide9 leftAnchor];
    homeButton2 = [(DBDockRootViewController *)self homeButton];
    leftAnchor = [homeButton2 rightAnchor];
    v36 = [rightAnchor constraintEqualToAnchor:leftAnchor];
    v68[0] = v36;
    dockToClimateFocusGuide8 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
    leftAnchor2 = [dockToClimateFocusGuide8 rightAnchor];
    rightAnchor2 = [view4 leftAnchor];
    v40 = [leftAnchor2 constraintEqualToAnchor:rightAnchor2];
    v68[1] = v40;
    [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
  }
  v41 = ;
  [v62 activateConstraints:v41];

  objc_destroyWeak(&v64);
  objc_destroyWeak(&v66);
  objc_destroyWeak(&location);
}

void __62__DBDockRootViewController__setupClimateHorizontalFocusGuides__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained environment];
  v2 = [v1 environmentConfiguration];
  v3 = [v2 isRightHandDrive];

  v4 = [WeakRetained traitCollection];
  LODWORD(v2) = [v4 layoutDirection] == 1;

  if (v3 != v2)
  {
    v5 = 32;
  }

  else
  {
    v5 = 16;
  }

  v6 = MEMORY[0x277D75F90];
  v7 = [WeakRetained homeButton];
  [v7 frame];
  v8 = [v6 _movementWithHeading:v5 isInitial:0 fallbackMovementOriginatingFrame:?];

  v9 = objc_alloc(MEMORY[0x277D75510]);
  v10 = [MEMORY[0x277D75F80] infoWithSenderID:0];
  v11 = [WeakRetained homeButton];
  [v11 frame];
  v12 = [v9 initWithFocusMovementInfo:v8 inputDeviceInfo:v10 shouldPerformHapticFeedback:0 focusedFrameInSceneCoordinateSpace:?];

  v13 = [WeakRetained delegate];
  [v13 dockRootViewController:WeakRetained requestFocusUpdate:v12];
}

void __62__DBDockRootViewController__setupClimateHorizontalFocusGuides__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained traitCollection];
  v2 = [v1 layoutDirection] == 1;

  v3 = [WeakRetained environment];
  v4 = [v3 environmentConfiguration];
  v5 = [v4 isRightHandDrive];

  if (v2 != v5)
  {
    v6 = 16;
  }

  else
  {
    v6 = 32;
  }

  v7 = MEMORY[0x277D75F90];
  v8 = [WeakRetained homeButton];
  [v8 frame];
  v9 = [v7 _movementWithHeading:v6 isInitial:0 fallbackMovementOriginatingFrame:?];

  v10 = [WeakRetained environment];
  v11 = [v10 environmentConfiguration];
  [v11 currentSafeViewAreaFrame];
  v13 = v12;
  v14 = [WeakRetained appDockViewController];
  v15 = [v14 view];
  [v15 frame];
  v17 = v13 - v16;

  v18 = objc_alloc(MEMORY[0x277D75510]);
  v19 = [MEMORY[0x277D75F80] infoWithSenderID:0];
  v20 = [WeakRetained appDockViewController];
  v21 = [v20 view];
  [v21 frame];
  v23 = v22;
  v24 = [WeakRetained appDockViewController];
  v25 = [v24 view];
  [v25 frame];
  v27 = v26;
  v28 = [WeakRetained appDockViewController];
  v29 = [v28 view];
  [v29 frame];
  v30 = [v18 initWithFocusMovementInfo:v9 inputDeviceInfo:v19 shouldPerformHapticFeedback:0 focusedFrameInSceneCoordinateSpace:{v23, v17, v27}];

  v31 = [WeakRetained delegate];
  [v31 dockRootViewController:WeakRetained requestFocusUpdate:v30];
}

- (void)_setupClimateFocusGuides
{
  environment = [(DBDockRootViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];
  if ([environmentConfiguration isVehicleDataSession])
  {
    _isTopStatusBarLayout = [(DBDockRootViewController *)self _isTopStatusBarLayout];

    if (!_isTopStatusBarLayout)
    {
      if ([(DBDockRootViewController *)self _isDualStatusBarLayout])
      {

        [(DBDockRootViewController *)self _setupClimateVerticalFocusGuides];
      }

      else
      {
        environment2 = [(DBDockRootViewController *)self environment];
        environmentConfiguration2 = [environment2 environmentConfiguration];
        currentStatusBarEdge = [environmentConfiguration2 currentStatusBarEdge];

        if (currentStatusBarEdge == 1)
        {

          [(DBDockRootViewController *)self _setupClimateHorizontalFocusGuides];
        }
      }
    }
  }

  else
  {
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v28[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v27.receiver = self;
  v27.super_class = DBDockRootViewController;
  [(DBDockRootViewController *)&v27 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  if (![(DBDockRootViewController *)self isClimateFocusGuidesDisabled])
  {
    environment = [(DBDockRootViewController *)self environment];
    environmentConfiguration = [environment environmentConfiguration];
    hasDualStatusBar = [environmentConfiguration hasDualStatusBar];

    if (hasDualStatusBar)
    {
      previouslyFocusedView = [contextCopy previouslyFocusedView];
      dockToClimateFocusGuide = [(DBDockRootViewController *)self dockToClimateFocusGuide];
      [dockToClimateFocusGuide setEnabled:previouslyFocusedView != 0];
    }

    nextFocusedItem = [contextCopy nextFocusedItem];
    v13 = nextFocusedItem != 0;

    homeToClimateFocusGuide = [(DBDockRootViewController *)self homeToClimateFocusGuide];
    [homeToClimateFocusGuide setEnabled:v13];

    dockToClimateFocusGuide2 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
    [dockToClimateFocusGuide2 setEnabled:v13];

    environment2 = [(DBDockRootViewController *)self environment];
    environmentConfiguration2 = [environment2 environmentConfiguration];
    hasDualStatusBar2 = [(DBHomeButton *)environmentConfiguration2 hasDualStatusBar];

    if (hasDualStatusBar2)
    {
      previouslyFocusedView2 = [contextCopy previouslyFocusedView];
      homeButton = self->_homeButton;
      if (previouslyFocusedView2 == homeButton)
      {
        v21 = 1;
      }

      else
      {
        environmentConfiguration2 = [contextCopy nextFocusedView];
        v21 = environmentConfiguration2 == self->_homeButton;
      }

      homeToClimateFocusGuide2 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
      [homeToClimateFocusGuide2 setEnabled:v21];

      if (previouslyFocusedView2 != homeButton)
      {
      }
    }

    nextFocusedItem2 = [contextCopy nextFocusedItem];

    if (nextFocusedItem2)
    {
      nextFocusedItem3 = [contextCopy nextFocusedItem];
      v28[0] = nextFocusedItem3;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
      dockToClimateFocusGuide3 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
      [dockToClimateFocusGuide3 setPreferredFocusEnvironments:v25];
    }
  }
}

- (void)_setupAppDockViewController
{
  appDockViewController = [(DBDockRootViewController *)self appDockViewController];
  [appDockViewController setAppDockViewControllerDelegate:self];
  [appDockViewController willMoveToParentViewController:self];
  [(DBDockRootViewController *)self addChildViewController:appDockViewController];
  view = [appDockViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(DBDockRootViewController *)self contentView];
  view2 = [appDockViewController view];
  [contentView addSubview:view2];

  [appDockViewController didMoveToParentViewController:self];
}

- (void)_setupHomeButton
{
  v3 = [DBHomeButton alloc];
  v8 = [(DBHomeButton *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(DBHomeButton *)v8 addTarget:self action:sel_homeButtonDown_ forControlEvents:16777217];
  [(DBHomeButton *)v8 addTarget:self action:sel_homeButtonUp_ forControlEvents:33554496];
  [(DBHomeButton *)v8 addTarget:self action:sel_homeButtonCancel_ forControlEvents:384];
  [(DBHomeButton *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(DBDockRootViewController *)self contentView];
  [contentView addSubview:v8];

  [(DBDockRootViewController *)self setHomeButton:v8];
  v5 = [MEMORY[0x277D551F8] longPressButtonForIdentifier:5];
  [(DBDockRootViewController *)self setHomeButtonSource:v5];

  [(DBDockRootViewController *)self _updateAdditionalSafeAreaInsets];
  v6 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleBackPressGesture_];
  [v6 setAllowedPressTypes:&unk_285AA4A48];
  view = [(DBDockRootViewController *)self view];
  [view addGestureRecognizer:v6];

  [(DBDockRootViewController *)self setBackPressGestureRecognizer:v6];
}

- (void)_setupStatusBarViewController
{
  v33[4] = *MEMORY[0x277D85DE8];
  statusBarViewController = [(DBDockRootViewController *)self statusBarViewController];
  [statusBarViewController willMoveToParentViewController:self];
  [(DBDockRootViewController *)self addChildViewController:statusBarViewController];
  view = [statusBarViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(DBDockRootViewController *)self contentView];
  view2 = [statusBarViewController view];
  [contentView addSubview:view2];

  v21 = MEMORY[0x277CCAAD0];
  view3 = [statusBarViewController view];
  topAnchor = [view3 topAnchor];
  contentView2 = [(DBDockRootViewController *)self contentView];
  safeAreaLayoutGuide = [contentView2 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v33[0] = v27;
  view4 = [statusBarViewController view];
  bottomAnchor = [view4 bottomAnchor];
  contentView3 = [(DBDockRootViewController *)self contentView];
  safeAreaLayoutGuide2 = [contentView3 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v33[1] = v20;
  view5 = [statusBarViewController view];
  leftAnchor = [view5 leftAnchor];
  contentView4 = [(DBDockRootViewController *)self contentView];
  safeAreaLayoutGuide3 = [contentView4 safeAreaLayoutGuide];
  leftAnchor2 = [safeAreaLayoutGuide3 leftAnchor];
  v8 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v33[2] = v8;
  view6 = [statusBarViewController view];
  rightAnchor = [view6 rightAnchor];
  contentView5 = [(DBDockRootViewController *)self contentView];
  safeAreaLayoutGuide4 = [contentView5 safeAreaLayoutGuide];
  rightAnchor2 = [safeAreaLayoutGuide4 rightAnchor];
  v14 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v33[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
  [v21 activateConstraints:v15];
}

- (void)_handleBackPressGesture:(id)gesture
{
  if ([gesture state] == 3)
  {
    environment = [(DBDockRootViewController *)self environment];
    v4 = [DBEvent eventWithType:3 context:0];
    [environment handleEvent:v4];
  }
}

- (void)addDockObserver:(id)observer
{
  observerCopy = observer;
  dockObservers = [(DBDockRootViewController *)self dockObservers];
  [dockObservers registerObserver:observerCopy];

  if (objc_opt_respondsToSelector())
  {
    traitCollection = [(DBDockRootViewController *)self traitCollection];
    v6 = [traitCollection valueForNSIntegerTrait:objc_opt_class()];

    isSiriPresentationActive = [(DBDockRootViewController *)self isSiriPresentationActive];
    traitCollection2 = [(DBDockRootViewController *)self traitCollection];
    [observerCopy dockDidChangeInterfaceStyle:objc_msgSend(traitCollection2 colorVariant:"userInterfaceStyle") isSiriPresentation:{v6, isSiriPresentationActive}];
  }
}

- (void)removeDockObserver:(id)observer
{
  observerCopy = observer;
  dockObservers = [(DBDockRootViewController *)self dockObservers];
  [dockObservers unregisterObserver:observerCopy];
}

- (BOOL)isHomeButtonFocused
{
  homeButton = [(DBDockRootViewController *)self homeButton];
  isFocused = [homeButton isFocused];

  return isFocused;
}

- (void)workspace:(id)workspace stateDidChangeFromState:(id)state toState:(id)toState
{
  v22 = *MEMORY[0x277D85DE8];
  toStateCopy = toState;
  appDockViewController = [(DBDockRootViewController *)self appDockViewController];
  [appDockViewController setDockEnabled:1];

  activeBundleIdentifier = [toStateCopy activeBundleIdentifier];

  v9 = +[DBApplicationController sharedInstance];
  v10 = [v9 applicationWithBundleIdentifier:activeBundleIdentifier];

  if ([(DBDockRootViewController *)self _isTopStatusBarLayout])
  {
    appPolicy = [v10 appPolicy];
    applicationCategory = [appPolicy applicationCategory];

    v13 = DBLogForCategory(6uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412546;
      v19 = activeBundleIdentifier;
      v20 = 1024;
      v21 = applicationCategory == 8;
      _os_log_impl(&dword_248146000, v13, OS_LOG_TYPE_DEFAULT, "Changing top status bar visibility for active identifier: %@, to: %d", &v18, 0x12u);
    }

    [(DBDockRootViewController *)self setBackgroundDisabled:applicationCategory != 8];
  }

  presentsFullScreen = [v10 presentsFullScreen];
  if (presentsFullScreen)
  {
    v15 = DBLogForCategory(6uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = activeBundleIdentifier;
      _os_log_impl(&dword_248146000, v15, OS_LOG_TYPE_DEFAULT, "Hiding status bar for active identifier: %@", &v18, 0xCu);
    }
  }

  view = [(DBDockRootViewController *)self view];
  [view setHidden:presentsFullScreen];

  dockObservers = [(DBDockRootViewController *)self dockObservers];
  [dockObservers dockDidUpdateHidden:presentsFullScreen];
}

- (void)appDockViewController:(id)controller didSelectBundleID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v6 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = dCopy;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_INFO, "Dock icon selected for ID: %@", &v14, 0xCu);
  }

  appDockViewController = [(DBDockRootViewController *)self appDockViewController];
  [appDockViewController setDockEnabled:0];

  v8 = +[DBApplicationController sharedInstance];
  v9 = [v8 applicationWithBundleIdentifier:dCopy];

  v10 = objc_alloc_init(DBActivationSettings);
  [(DBActivationSettings *)v10 setLaunchSource:1];
  v11 = [DBApplicationLaunchInfo launchInfoForApplication:v9 withActivationSettings:v10];
  environment = [(DBDockRootViewController *)self environment];
  v13 = [DBEvent eventWithType:4 context:v11];
  [environment handleEvent:v13];
}

- (void)climateOverlayDidRequestHideFocusGuides:(BOOL)guides
{
  guidesCopy = guides;
  if ([(DBDockRootViewController *)self isClimateFocusGuidesDisabled]!= guides)
  {
    [(DBDockRootViewController *)self setIsClimateFocusGuidesDisabled:guidesCopy];
    homeToClimateFocusGuide = [(DBDockRootViewController *)self homeToClimateFocusGuide];
    [homeToClimateFocusGuide setEnabled:guidesCopy ^ 1];

    dockToClimateFocusGuide = [(DBDockRootViewController *)self dockToClimateFocusGuide];
    [dockToClimateFocusGuide setEnabled:guidesCopy ^ 1];
  }
}

- (void)dashboardRootViewController:(id)controller didUpdateActiveBundleIdentifier:(id)identifier animated:(BOOL)animated
{
  animatedCopy = animated;
  identifierCopy = identifier;
  appDockViewController = [(DBDockRootViewController *)self appDockViewController];
  [appDockViewController setActiveBundleIdentifier:identifierCopy animated:animatedCopy];
}

- (void)homeButtonDown:(id)down
{
  v4 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "Soft home button down", buf, 2u);
  }

  [(DBDockRootViewController *)self setLastHomeButtonDownTime:CFAbsoluteTimeGetCurrent()];
  homeButton = [(DBDockRootViewController *)self homeButton];
  displayState = [homeButton displayState];

  if (displayState == 2)
  {
    homeButtonSource3 = DBLogForCategory(6uLL);
    if (os_log_type_enabled(homeButtonSource3, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_248146000, homeButtonSource3, OS_LOG_TYPE_DEFAULT, "Soft home button skipping siri prewarm, in close state.", v18, 2u);
    }
  }

  else
  {
    homeButtonAssertion = [(DBDockRootViewController *)self homeButtonAssertion];

    if (homeButtonAssertion)
    {
      v9 = DBLogForCategory(3uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [DBDockRootViewController homeButtonDown:v9];
      }

      [(DBDockRootViewController *)self setHomeButtonAssertion:0];
      [(DBDockRootViewController *)self setSiriPrewarmAssertion:0];
    }

    homeButtonSource = [(DBDockRootViewController *)self homeButtonSource];
    v11 = [homeButtonSource speechInteractionActivityWithTimestamp:CFAbsoluteTimeGetCurrent()];
    [(DBDockRootViewController *)self setHomeButtonAssertion:v11];

    homeButtonSource2 = [(DBDockRootViewController *)self homeButtonSource];
    v13 = [homeButtonSource2 prepareForActivationWithTimestamp:CFAbsoluteTimeGetCurrent()];
    [(DBDockRootViewController *)self setSiriPrewarmAssertion:v13];

    homeButtonTimer = [(DBDockRootViewController *)self homeButtonTimer];

    if (homeButtonTimer)
    {
      homeButtonTimer2 = [(DBDockRootViewController *)self homeButtonTimer];
      [homeButtonTimer2 invalidate];

      [(DBDockRootViewController *)self setHomeButtonTimer:0];
    }

    v16 = MEMORY[0x277CBEBB8];
    homeButtonSource3 = [(DBDockRootViewController *)self homeButtonSource];
    [homeButtonSource3 longPressInterval];
    v17 = [v16 scheduledTimerWithTimeInterval:self target:sel__handleLongPressActivation selector:0 userInfo:0 repeats:?];
    [(DBDockRootViewController *)self setHomeButtonTimer:v17];
  }
}

- (void)homeButtonUp:(id)up
{
  v4 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "Soft home button up", buf, 2u);
  }

  Current = CFAbsoluteTimeGetCurrent();
  homeButtonTimer = [(DBDockRootViewController *)self homeButtonTimer];

  if (homeButtonTimer)
  {
    homeButtonTimer2 = [(DBDockRootViewController *)self homeButtonTimer];
    [homeButtonTimer2 invalidate];

    [(DBDockRootViewController *)self setHomeButtonTimer:0];
  }

  homeButtonAssertion = [(DBDockRootViewController *)self homeButtonAssertion];
  [homeButtonAssertion invalidatedAtTimestamp:Current];

  siriPrewarmAssertion = [(DBDockRootViewController *)self siriPrewarmAssertion];
  [siriPrewarmAssertion invalidatedAtTimestamp:Current];

  [(DBDockRootViewController *)self lastHomeButtonDownTime];
  v11 = Current - v10;
  homeButtonSource = [(DBDockRootViewController *)self homeButtonSource];
  [homeButtonSource longPressInterval];
  v14 = v13;

  homeButton = [(DBDockRootViewController *)self homeButton];
  displayState = [homeButton displayState];

  if (v11 < v14 || displayState == 2)
  {
    v17 = DBLogForCategory(6uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_248146000, v17, OS_LOG_TYPE_DEFAULT, "Soft home button tapped", v21, 2u);
    }

    homeButtonSource2 = [(DBDockRootViewController *)self homeButtonSource];
    [homeButtonSource2 didRecognizeButtonSinglePressUp];

    environment = [(DBDockRootViewController *)self environment];
    v20 = [DBEvent eventWithType:1 context:&unk_285AA4778];
    [environment handleEvent:v20];
  }

  [(DBDockRootViewController *)self setHomeButtonAssertion:0];
  [(DBDockRootViewController *)self setSiriPrewarmAssertion:0];
}

- (void)homeButtonCancel:(id)cancel
{
  v4 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "Soft home button cancelled", v9, 2u);
  }

  homeButtonTimer = [(DBDockRootViewController *)self homeButtonTimer];

  if (homeButtonTimer)
  {
    homeButtonTimer2 = [(DBDockRootViewController *)self homeButtonTimer];
    [homeButtonTimer2 invalidate];

    [(DBDockRootViewController *)self setHomeButtonTimer:0];
  }

  homeButtonAssertion = [(DBDockRootViewController *)self homeButtonAssertion];
  [homeButtonAssertion invalidatedAtTimestamp:CFAbsoluteTimeGetCurrent()];

  [(DBDockRootViewController *)self setHomeButtonAssertion:0];
  siriPrewarmAssertion = [(DBDockRootViewController *)self siriPrewarmAssertion];
  [siriPrewarmAssertion invalidatedAtTimestamp:CFAbsoluteTimeGetCurrent()];

  [(DBDockRootViewController *)self setSiriPrewarmAssertion:0];
}

- (void)_handleLongPressActivation
{
  v3 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "Soft home button long pressed", v6, 2u);
  }

  homeButtonSource = [(DBDockRootViewController *)self homeButtonSource];
  [homeButtonSource didRecognizeLongPress];

  homeButtonTimer = [(DBDockRootViewController *)self homeButtonTimer];
  [homeButtonTimer invalidate];

  [(DBDockRootViewController *)self setHomeButtonTimer:0];
}

- (BOOL)_useRoundedCorners
{
  _isDualStatusBarLayout = [(DBDockRootViewController *)self _isDualStatusBarLayout];
  if (_isDualStatusBarLayout)
  {
    LOBYTE(_isDualStatusBarLayout) = (DBIsPrimaryStatusBar([(DBDockRootViewController *)self layout]) & 1) == 0 && [(DBDockRootViewController *)self dockVariant]== 0;
  }

  return _isDualStatusBarLayout;
}

- (void)homeButtonStateManager:(id)manager didChangeToDisplayState:(unint64_t)state
{
  homeButton = [(DBDockRootViewController *)self homeButton];
  [homeButton setDisplayState:state];

  [(DBDockRootViewController *)self updateAppearanceForWallpaper];
}

- (void)traitCollectionDidChange:(id)change
{
  traitCollection = [(DBDockRootViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  audioNotificationViewController = [(DBDockRootViewController *)self audioNotificationViewController];
  [audioNotificationViewController updateInterfaceWithStyle:userInterfaceStyle];

  traitCollection2 = [(DBDockRootViewController *)self traitCollection];
  v8 = [traitCollection2 valueForNSIntegerTrait:objc_opt_class()];

  isSiriPresentationActive = [(DBDockRootViewController *)self isSiriPresentationActive];
  dockObservers = [(DBDockRootViewController *)self dockObservers];
  [dockObservers dockDidChangeInterfaceStyle:userInterfaceStyle colorVariant:v8 isSiriPresentation:isSiriPresentationActive];
}

- (void)statusBarStyleServiceUpdatedOverride:(id)override animationSettings:(id)settings
{
  overrideCopy = override;
  settingsCopy = settings;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __83__DBDockRootViewController_statusBarStyleServiceUpdatedOverride_animationSettings___block_invoke;
  v14 = &unk_278F014B8;
  v8 = overrideCopy;
  v15 = v8;
  selfCopy = self;
  v9 = _Block_copy(&v11);
  v10 = v9;
  if (settingsCopy)
  {
    [MEMORY[0x277CF0D38] animateWithSettings:settingsCopy actions:{v9, v11, v12, v13, v14}];
  }

  else
  {
    (*(v9 + 2))(v9);
  }
}

uint64_t __83__DBDockRootViewController_statusBarStyleServiceUpdatedOverride_animationSettings___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) interfaceStyle];
  [*(a1 + 40) setColorVariantOverride:{objc_msgSend(*(a1 + 32), "colorVariant")}];
  v3 = [*(a1 + 40) materialDockView];
  [v3 setColorVariantOverride:{objc_msgSend(*(a1 + 32), "colorVariant")}];

  [*(a1 + 40) setSiriPresentationActive:{objc_msgSend(*(a1 + 32), "isSiriPresentation")}];
  [*(a1 + 40) setStandByScreenActive:{objc_msgSend(*(a1 + 32), "isStandByScreen")}];
  [*(a1 + 40) hideBackgroundIfNeeded];
  [*(a1 + 40) setOverrideUserInterfaceStyle:v2];
  v4 = [*(a1 + 40) audioNotificationViewController];
  [v4 updateInterfaceWithStyle:v2];

  v5 = [*(a1 + 40) traitCollection];
  v6 = [v5 valueForNSIntegerTrait:objc_opt_class()];

  v7 = [*(a1 + 40) isSiriPresentationActive];
  v8 = [*(a1 + 40) dockObservers];
  [v8 dockDidChangeInterfaceStyle:v2 colorVariant:v6 isSiriPresentation:v7];

  v9 = *(a1 + 40);

  return [v9 updateAppearanceForWallpaper];
}

- (void)setTransitionControlType:(unint64_t)type
{
  if (self->_transitionControlType != type)
  {
    self->_transitionControlType = type;
    [(DBDockRootViewController *)self _updateScreenResizeButton];
  }
}

- (void)_resizeButtonPressed:(id)pressed
{
  environment = [(DBDockRootViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];
  analytics = [environmentConfiguration analytics];
  [analytics userPressedTransitionControl];

  environment2 = [(DBDockRootViewController *)self environment];
  environmentConfiguration2 = [environment2 environmentConfiguration];
  session = [environmentConfiguration2 session];
  environment3 = [(DBDockRootViewController *)self environment];
  environmentConfiguration3 = [environment3 environmentConfiguration];
  displayConfiguration = [environmentConfiguration3 displayConfiguration];
  hardwareIdentifier = [displayConfiguration hardwareIdentifier];
  [session requestAdjacentViewAreaForScreenID:hardwareIdentifier];
}

- (void)_updateScreenResizeButton
{
  v51[4] = *MEMORY[0x277D85DE8];
  transitionControlType = [(DBDockRootViewController *)self transitionControlType];
  screenResizeButton = [(DBDockRootViewController *)self screenResizeButton];
  elevatedScreenResizeButton = screenResizeButton;
  if (transitionControlType)
  {

    if (!elevatedScreenResizeButton)
    {
      v6 = [[_TtC9DashBoard28DBElevatedScreenResizeButton alloc] initWithTransitionControlType:[(DBDockRootViewController *)self transitionControlType]];
      [(DBElevatedScreenResizeButton *)v6 addTarget:self action:sel__resizeButtonPressed_ forControlEvents:0x2000];
      [(DBElevatedScreenResizeButton *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
      contentView = [(DBDockRootViewController *)self contentView];
      [contentView addSubview:v6];

      elevatedScreenResizeButton = self->_elevatedScreenResizeButton;
      self->_elevatedScreenResizeButton = v6;
    }

    resizeButtonConstraints = [(DBDockRootViewController *)self resizeButtonConstraints];

    if (resizeButtonConstraints)
    {
      v10 = MEMORY[0x277CCAAD0];
      resizeButtonConstraints2 = [(DBDockRootViewController *)self resizeButtonConstraints];
      [v10 deactivateConstraints:resizeButtonConstraints2];
    }

    environment = [(DBDockRootViewController *)self environment];
    environmentConfiguration = [environment environmentConfiguration];
    if ([environmentConfiguration currentStatusBarEdge] == 1)
    {
    }

    else
    {
      environment2 = [(DBDockRootViewController *)self environment];
      environmentConfiguration2 = [environment2 environmentConfiguration];
      currentStatusBarEdge = [environmentConfiguration2 currentStatusBarEdge];

      if (currentStatusBarEdge != 3)
      {
        screenResizeButton2 = [(DBDockRootViewController *)self screenResizeButton];
        topAnchor = [screenResizeButton2 topAnchor];
        contentView2 = [(DBDockRootViewController *)self contentView];
        safeAreaLayoutGuide = [contentView2 safeAreaLayoutGuide];
        [safeAreaLayoutGuide topAnchor];
        v45 = v48 = topAnchor;
        v44 = [topAnchor constraintEqualToAnchor:8.0 constant:?];
        v49[0] = v44;
        screenResizeButton3 = [(DBDockRootViewController *)self screenResizeButton];
        heightAnchor = [screenResizeButton3 heightAnchor];
        v41 = [heightAnchor constraintEqualToConstant:17.0];
        v49[1] = v41;
        screenResizeButton4 = [(DBDockRootViewController *)self screenResizeButton];
        widthAnchor = [screenResizeButton4 widthAnchor];
        v24 = [widthAnchor constraintEqualToConstant:33.0];
        v49[2] = v24;
        screenResizeButton5 = [(DBDockRootViewController *)self screenResizeButton];
        centerXAnchor = [screenResizeButton5 centerXAnchor];
        contentView3 = [(DBDockRootViewController *)self contentView];
        safeAreaLayoutGuide2 = [contentView3 safeAreaLayoutGuide];
        centerXAnchor2 = [safeAreaLayoutGuide2 centerXAnchor];
        v32 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
        v49[3] = v32;
        v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:4];
        [(DBDockRootViewController *)self setResizeButtonConstraints:v34];

        screenResizeButton7 = screenResizeButton2;
LABEL_15:

        v35 = MEMORY[0x277CCAAD0];
        resizeButtonConstraints3 = [(DBDockRootViewController *)self resizeButtonConstraints];
        [v35 activateConstraints:resizeButtonConstraints3];

        screenResizeButton6 = [(DBDockRootViewController *)self screenResizeButton];
        [screenResizeButton6 setHidden:0];

        _screenResizeButton = [(DBDockRootViewController *)self _screenResizeButton];
        [_screenResizeButton setTransitionControlType:{-[DBDockRootViewController transitionControlType](self, "transitionControlType")}];

        elevatedScreenResizeButton = [(DBDockRootViewController *)self elevatedScreenResizeButton];
        [elevatedScreenResizeButton setTransitionControlType:{-[DBDockRootViewController transitionControlType](self, "transitionControlType")}];
        goto LABEL_16;
      }
    }

    environment3 = [(DBDockRootViewController *)self environment];
    environmentConfiguration3 = [environment3 environmentConfiguration];
    isRightHandDrive = [environmentConfiguration3 isRightHandDrive];

    screenResizeButton7 = [(DBDockRootViewController *)self screenResizeButton];
    centerYAnchor = [screenResizeButton7 centerYAnchor];
    contentView2 = [(DBDockRootViewController *)self contentView];
    safeAreaLayoutGuide = [contentView2 safeAreaLayoutGuide];
    [safeAreaLayoutGuide centerYAnchor];
    v45 = v48 = centerYAnchor;
    v22 = [centerYAnchor constraintEqualToAnchor:0.0 constant:?];
    v44 = v22;
    if (isRightHandDrive)
    {
      v51[0] = v22;
      screenResizeButton3 = [(DBDockRootViewController *)self screenResizeButton];
      heightAnchor = [screenResizeButton3 heightAnchor];
      v41 = [heightAnchor constraintEqualToConstant:17.0];
      v51[1] = v41;
      screenResizeButton4 = [(DBDockRootViewController *)self screenResizeButton];
      widthAnchor = [screenResizeButton4 widthAnchor];
      v24 = [widthAnchor constraintEqualToConstant:33.0];
      v51[2] = v24;
      screenResizeButton5 = [(DBDockRootViewController *)self screenResizeButton];
      centerXAnchor = [screenResizeButton5 rightAnchor];
      contentView3 = [(DBDockRootViewController *)self homeButton];
      safeAreaLayoutGuide2 = [contentView3 leftAnchor];
      centerXAnchor2 = [centerXAnchor constraintEqualToAnchor:safeAreaLayoutGuide2 constant:-4.0];
      v51[3] = centerXAnchor2;
      v30 = MEMORY[0x277CBEA60];
      v31 = v51;
    }

    else
    {
      v50[0] = v22;
      screenResizeButton3 = [(DBDockRootViewController *)self screenResizeButton];
      heightAnchor = [screenResizeButton3 heightAnchor];
      v41 = [heightAnchor constraintEqualToConstant:17.0];
      v50[1] = v41;
      screenResizeButton4 = [(DBDockRootViewController *)self screenResizeButton];
      widthAnchor = [screenResizeButton4 widthAnchor];
      v24 = [widthAnchor constraintEqualToConstant:33.0];
      v50[2] = v24;
      screenResizeButton5 = [(DBDockRootViewController *)self screenResizeButton];
      centerXAnchor = [screenResizeButton5 leftAnchor];
      contentView3 = [(DBDockRootViewController *)self homeButton];
      safeAreaLayoutGuide2 = [contentView3 rightAnchor];
      centerXAnchor2 = [centerXAnchor constraintEqualToAnchor:safeAreaLayoutGuide2 constant:4.0];
      v50[3] = centerXAnchor2;
      v30 = MEMORY[0x277CBEA60];
      v31 = v50;
    }

    v32 = [v30 arrayWithObjects:v31 count:4];
    [(DBDockRootViewController *)self setResizeButtonConstraints:v32];
    goto LABEL_15;
  }

  [screenResizeButton setHidden:1];
LABEL_16:

  [(DBDockRootViewController *)self _updateAdditionalSafeAreaInsets];
}

- (UIView)screenResizeButton
{
  elevatedScreenResizeButton = self->_elevatedScreenResizeButton;
  if (!elevatedScreenResizeButton)
  {
    elevatedScreenResizeButton = self->__screenResizeButton;
  }

  return elevatedScreenResizeButton;
}

- (id)contentView
{
  glassDockView = self->_glassDockView;
  if (glassDockView)
  {
    view = glassDockView;
  }

  else
  {
    view = [(DBDockRootViewController *)self view];
  }

  return view;
}

- (DBDockRootViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)extraSafeAreaInsets
{
  top = self->_extraSafeAreaInsets.top;
  left = self->_extraSafeAreaInsets.left;
  bottom = self->_extraSafeAreaInsets.bottom;
  right = self->_extraSafeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end