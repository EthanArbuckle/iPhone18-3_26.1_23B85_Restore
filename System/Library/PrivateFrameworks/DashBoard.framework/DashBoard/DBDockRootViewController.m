@interface DBDockRootViewController
- (BOOL)_isDualStatusBarLayout;
- (BOOL)_useRoundedCorners;
- (BOOL)isHomeButtonFocused;
- (DBDockRootViewController)initWithEnvironment:(id)a3 iconProvider:(id)a4 audioNotificationViewController:(id)a5 stateProvider:(id)a6 dataBroadcaster:(id)a7 layout:(unint64_t)a8 layoutEngine:(id)a9;
- (DBDockRootViewControllerDelegate)delegate;
- (DBEnvironment)environment;
- (UIEdgeInsets)extraSafeAreaInsets;
- (UIView)backgroundView;
- (UIView)screenResizeButton;
- (double)_appDockPrimaryAxisLength:(BOOL)a3;
- (id)_appDockConstraintsWithStatusBarEdge:(unint64_t)a3;
- (id)_dualStatusBarBackgroundConstraints;
- (id)_focusHighlightColor;
- (id)_homeButtonConstraintsWithStatusBarEdge:(unint64_t)a3;
- (id)_keylineViewConstraintsWithStatusBarEdge:(unint64_t)a3;
- (id)contentView;
- (unint64_t)dockVariant;
- (void)_handleBackPressGesture:(id)a3;
- (void)_handleLongPressActivation;
- (void)_resizeButtonPressed:(id)a3;
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
- (void)addDockObserver:(id)a3;
- (void)appDockViewController:(id)a3 didSelectBundleID:(id)a4;
- (void)climateOverlayDidRequestHideFocusGuides:(BOOL)a3;
- (void)dashboardRootViewController:(id)a3 didUpdateActiveBundleIdentifier:(id)a4 animated:(BOOL)a5;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)hideBackgroundIfNeeded;
- (void)homeButtonCancel:(id)a3;
- (void)homeButtonDown:(id)a3;
- (void)homeButtonStateManager:(id)a3 didChangeToDisplayState:(unint64_t)a4;
- (void)homeButtonUp:(id)a3;
- (void)removeDockObserver:(id)a3;
- (void)setAudioNotificationViewController:(id)a3;
- (void)setExtraSafeAreaInsets:(UIEdgeInsets)a3;
- (void)setTransitionControlType:(unint64_t)a3;
- (void)statusBarStyleServiceUpdatedOverride:(id)a3 animationSettings:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateAppearanceForWallpaper;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)workspace:(id)a3 stateDidChangeFromState:(id)a4 toState:(id)a5;
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
      v3 = 1;
LABEL_7:
      if ([(DBDockRootViewController *)self _isTopStatusBarLayout])
      {
        v7 = [(DBDockRootViewController *)self gradientBlurBackgroundView];
        v5 = [(DBDockRootViewController *)self isBackgroundDisabled];
        v6 = v7;
      }

      else
      {
        v6 = [(DBDockRootViewController *)self backgroundView];
        v7 = v6;
        v5 = v3;
      }

      [v6 setHidden:v5];
      goto LABEL_13;
    }
  }

  else
  {
    v3 = [(DBDockRootViewController *)self isSiriPresentationActive];
    if (![(DBDockRootViewController *)self useGlassDock])
    {
      goto LABEL_7;
    }

    if (!v3)
    {
      v4 = [(DBDockRootViewController *)self dockVariant]!= 2;
      goto LABEL_12;
    }
  }

  v4 = 0;
LABEL_12:
  v7 = [(DBDockRootViewController *)self glassDockView];
  [v7 setIsTranslucent:v4];
LABEL_13:
}

- (unint64_t)dockVariant
{
  v3 = DBIsPrimaryStatusBar([(DBDockRootViewController *)self layout]);
  v4 = [(DBDockRootViewController *)self layoutEngine];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 primaryDockVariant];
  }

  else
  {
    v6 = [v4 secondaryDockVariant];
  }

  v7 = v6;

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

  v4 = [(DBDockRootViewController *)self materialDockView];
  v5 = [(DBDockRootViewController *)self traitCollection];
  [v4 updateMaterialForStyle:{objc_msgSend(v5, "userInterfaceStyle")}];

  v6 = [(DBDockRootViewController *)self environment];
  v7 = [v6 environmentConfiguration];

  v8 = [v7 wallpaperPreferences];
  v9 = [v8 currentWallpaper];

  v10 = [(DBDockRootViewController *)self colorVariantOverride];
  v11 = [(DBDockRootViewController *)self colorVariantOverride];
  v12 = [(DBDockRootViewController *)self environment];
  v13 = [v12 environmentConfiguration];
  v14 = [v13 currentViewAreaSupportsUIOutsideSafeArea];

  v15 = 0.0;
  if (![(DBDockRootViewController *)self isStandByScreenActive])
  {
    v16 = [(DBDockRootViewController *)self _isDualStatusBarLayout];
    v17 = !v11 || v16;
    v18 = (v17 | v14) & 1;
    v15 = v18 ? 0.0 : 1.0;
    if (!v18 && v10 != 1)
    {
      v19 = [v9 traits];
      v15 = 0.0;
      if ([v19 isBlack])
      {
        v20 = [(DBDockRootViewController *)self traitCollection];
        if ([v20 userInterfaceStyle] == 2)
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

  v21 = [(DBDockRootViewController *)self keylineView];
  [v21 setAlpha:v15];
}

- (BOOL)_isDualStatusBarLayout
{
  v3 = [(DBDockRootViewController *)self layout];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(DBDockRootViewController *)self layout]== 2;
  }

  return v3;
}

- (id)_focusHighlightColor
{
  v3 = [(DBDockRootViewController *)self environment];
  v4 = [v3 environmentConfiguration];
  v5 = [v4 wallpaperPreferences];
  v6 = [v5 currentWallpaper];

  v7 = [(DBDockRootViewController *)self environment];
  v8 = [v7 workspace];
  v9 = [v8 state];
  v10 = [v9 activeBundleIdentifier];

  if (v10)
  {
    v11 = [v10 isEqualToString:@"com.apple.CarPlay.dashboard"];
  }

  else
  {
    v11 = 1;
  }

  v12 = [v6 traits];
  v13 = [v12 supportsDashboardPlatterMaterials];

  if (v11 && v13)
  {
    v14 = [MEMORY[0x277D75348] _carSystemPrimaryColor];
  }

  else
  {
    v14 = [MEMORY[0x277D75348] _carSystemFocusColor];
  }

  v15 = v14;

  return v15;
}

- (void)viewWillLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = DBDockRootViewController;
  [(DBDockRootViewController *)&v10 viewWillLayoutSubviews];
  v3 = [(DBDockRootViewController *)self currentStatusBarEdge];
  v4 = [(DBDockRootViewController *)self environment];
  v5 = [v4 environmentConfiguration];
  v6 = [v5 currentStatusBarEdge];

  if (v3 != v6)
  {
    v7 = [(DBDockRootViewController *)self environment];
    v8 = [v7 environmentConfiguration];
    -[DBDockRootViewController setCurrentStatusBarEdge:](self, "setCurrentStatusBarEdge:", [v8 currentStatusBarEdge]);

    [(DBDockRootViewController *)self _updateBackgroundConstraints];
    v9 = [(DBDockRootViewController *)self statusBarViewController];
    [v9 statusBarEdgeUpdated];

    [(DBDockRootViewController *)self _updateAdditionalSafeAreaInsets];
    [(DBDockRootViewController *)self _setupClimateFocusGuides];
  }

  [(DBDockRootViewController *)self _updateConstraintsForStatusBar];
  [(DBDockRootViewController *)self hideBackgroundIfNeeded];
}

- (DBDockRootViewController)initWithEnvironment:(id)a3 iconProvider:(id)a4 audioNotificationViewController:(id)a5 stateProvider:(id)a6 dataBroadcaster:(id)a7 layout:(unint64_t)a8 layoutEngine:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  v36.receiver = self;
  v36.super_class = DBDockRootViewController;
  v21 = [(DBDockRootViewController *)&v36 init];
  v22 = v21;
  if (v21)
  {
    v35 = v17;
    objc_storeWeak(&v21->_environment, v15);
    v23 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285AEF4A0];
    dockObservers = v22->_dockObservers;
    v22->_dockObservers = v23;

    v25 = [v15 environmentConfiguration];
    v22->_layout = a8;
    objc_storeStrong(&v22->_layoutEngine, a9);
    v26 = *(MEMORY[0x277D768C8] + 16);
    *&v22->_extraSafeAreaInsets.top = *MEMORY[0x277D768C8];
    *&v22->_extraSafeAreaInsets.bottom = v26;
    objc_storeStrong(&v22->_audioNotificationViewController, a5);
    if (v16)
    {
      v27 = [DBAppDockViewController alloc];
      v28 = [v25 appHistory];
      v29 = [(DBAppDockViewController *)v27 initWithAppHistory:v28 iconProvider:v16 environmentConfiguration:v25];
      appDockViewController = v22->_appDockViewController;
      v22->_appDockViewController = v29;
    }

    v31 = [[DBStatusBarViewController alloc] initWithStateProvider:v18 dataBroadcaster:v19 layout:a8 environmentConfiguration:v25];
    statusBarViewController = v22->_statusBarViewController;
    v22->_statusBarViewController = v31;

    v22->_colorVariantOverride = -1;
    v22->_siriPresentationActive = 0;
    v33 = [v15 workspace];
    [v33 addObserver:v22];

    v17 = v35;
  }

  return v22;
}

- (void)setExtraSafeAreaInsets:(UIEdgeInsets)a3
{
  self->_extraSafeAreaInsets = a3;
  [(DBDockRootViewController *)self _updateConstraintsForStatusBar];

  [(DBDockRootViewController *)self _updateAdditionalSafeAreaInsets];
}

- (void)setAudioNotificationViewController:(id)a3
{
  objc_storeStrong(&self->_audioNotificationViewController, a3);
  v5 = a3;
  v6 = [(DBDockRootViewController *)self traitCollection];
  [v5 updateInterfaceWithStyle:{objc_msgSend(v6, "userInterfaceStyle")}];
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

  v9 = [(DBDockRootViewController *)self cornerRadiusView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [MEMORY[0x277D75348] clearColor];
  v11 = [(DBDockRootViewController *)self cornerRadiusView];
  [v11 setBackgroundColor:v10];

  v12 = [(DBDockRootViewController *)self cornerRadiusView];
  v13 = [v12 layer];
  [v13 setShadowOpacity:0.0];

  v14 = [(DBDockRootViewController *)self cornerRadiusView];
  v15 = [v14 layer];
  [v15 setAllowsHitTesting:0];

  v16 = [objc_alloc(MEMORY[0x277CF9170]) initWithFrame:{v4, v5, v6, v7}];
  [(DBDockRootViewController *)self setMaskView:v16];

  v17 = [(DBDockRootViewController *)self maskView];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

  v18 = [MEMORY[0x277D75348] blackColor];
  v19 = [(DBDockRootViewController *)self maskView];
  [v19 setBackgroundColor:v18];

  v20 = [(DBDockRootViewController *)self maskView];
  v21 = [v20 layer];
  [v21 setCornerRadius:22.0];

  v22 = *MEMORY[0x277CDA138];
  v23 = [(DBDockRootViewController *)self maskView];
  v24 = [v23 layer];
  [v24 setCornerCurve:v22];

  v25 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA310]];
  v26 = [(DBDockRootViewController *)self maskView];
  v27 = [v26 layer];
  [v27 setCompositingFilter:v25];

  v28 = [(DBDockRootViewController *)self maskView];
  v29 = [v28 layer];
  [v29 setShadowOpacity:0.0];

  v30 = [(DBDockRootViewController *)self maskView];
  v31 = [v30 layer];
  [v31 setAllowsHitTesting:0];

  v32 = [(DBDockRootViewController *)self view];
  v33 = [(DBDockRootViewController *)self cornerRadiusView];
  [v32 addSubview:v33];

  v34 = [(DBDockRootViewController *)self view];
  v35 = [(DBDockRootViewController *)self maskView];
  [v34 addSubview:v35];

  v36 = [(DBDockRootViewController *)self view];
  v37 = [(DBDockRootViewController *)self maskView];
  [v36 bringSubviewToFront:v37];

  v38 = [(DBDockRootViewController *)self environment];
  v39 = [v38 environmentConfiguration];
  LOBYTE(v27) = [v39 isRightHandDrive];

  LOBYTE(v38) = v27 ^ ([(DBDockRootViewController *)self layout]!= 1);
  v78 = MEMORY[0x277CCAAD0];
  v40 = [(DBDockRootViewController *)self cornerRadiusView];
  v82 = v40;
  if (v38)
  {
    v41 = [v40 rightAnchor];
    v42 = [(DBDockRootViewController *)self view];
    v43 = [v42 leftAnchor];
    v80 = v41;
    v44 = [v41 constraintEqualToAnchor:v43];
    v85[0] = v44;
    v45 = [(DBDockRootViewController *)self maskView];
    v46 = [v45 rightAnchor];
    v47 = [(DBDockRootViewController *)self view];
    v48 = [v47 leftAnchor];
    v49 = [v46 constraintEqualToAnchor:v48];
    v85[1] = v49;
    v50 = v85;
  }

  else
  {
    v51 = [v40 leftAnchor];
    v42 = [(DBDockRootViewController *)self view];
    v43 = [v42 rightAnchor];
    v80 = v51;
    v44 = [v51 constraintEqualToAnchor:v43];
    v86[0] = v44;
    v45 = [(DBDockRootViewController *)self maskView];
    v46 = [v45 leftAnchor];
    v47 = [(DBDockRootViewController *)self view];
    v48 = [v47 rightAnchor];
    v49 = [v46 constraintEqualToAnchor:v48];
    v86[1] = v49;
    v50 = v86;
  }

  v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
  [v78 activateConstraints:v52];

  v69 = MEMORY[0x277CCAAD0];
  v83 = [(DBDockRootViewController *)self cornerRadiusView];
  v79 = [v83 topAnchor];
  v81 = [(DBDockRootViewController *)self view];
  v77 = [v81 topAnchor];
  v76 = [v79 constraintEqualToAnchor:v77];
  v84[0] = v76;
  v75 = [(DBDockRootViewController *)self cornerRadiusView];
  v73 = [v75 bottomAnchor];
  v74 = [(DBDockRootViewController *)self view];
  v72 = [v74 bottomAnchor];
  v71 = [v73 constraintEqualToAnchor:v72];
  v84[1] = v71;
  v70 = [(DBDockRootViewController *)self cornerRadiusView];
  v68 = [v70 widthAnchor];
  v67 = [v68 constraintEqualToConstant:22.0];
  v84[2] = v67;
  v66 = [(DBDockRootViewController *)self maskView];
  v64 = [v66 topAnchor];
  v65 = [(DBDockRootViewController *)self view];
  v63 = [v65 topAnchor];
  v53 = [v64 constraintEqualToAnchor:v63];
  v84[3] = v53;
  v54 = [(DBDockRootViewController *)self maskView];
  v55 = [v54 widthAnchor];
  v56 = [v55 constraintEqualToConstant:22.0 + 22.0];
  v84[4] = v56;
  v57 = [(DBDockRootViewController *)self maskView];
  v58 = [v57 bottomAnchor];
  v59 = [(DBDockRootViewController *)self view];
  v60 = [v59 bottomAnchor];
  v61 = [v58 constraintEqualToAnchor:v60];
  v84[5] = v61;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:6];
  [v69 activateConstraints:v62];
}

- (id)_dualStatusBarBackgroundConstraints
{
  v20[2] = *MEMORY[0x277D85DE8];
  v3 = [(DBDockRootViewController *)self environment];
  v4 = [v3 environmentConfiguration];
  v5 = [v4 isRightHandDrive];

  LOBYTE(v3) = v5 ^ ([(DBDockRootViewController *)self layout]!= 1);
  v18 = [(DBDockRootViewController *)self backgroundView];
  v6 = [v18 leftAnchor];
  if (v3)
  {
    v7 = [(DBDockRootViewController *)self cornerRadiusView];
    v8 = [v7 leftAnchor];
    v9 = [v6 constraintEqualToAnchor:v8];
    v19 = v9;
    v10 = [(DBDockRootViewController *)self backgroundView];
    v11 = [v10 rightAnchor];
    v12 = [(DBDockRootViewController *)self view];
    v13 = &v19;
  }

  else
  {
    v7 = [(DBDockRootViewController *)self view];
    v8 = [v7 leftAnchor];
    v9 = [v6 constraintEqualToAnchor:v8];
    v20[0] = v9;
    v10 = [(DBDockRootViewController *)self backgroundView];
    v11 = [v10 rightAnchor];
    v12 = [(DBDockRootViewController *)self cornerRadiusView];
    v13 = v20;
  }

  v14 = [v12 rightAnchor];
  v15 = [v11 constraintEqualToAnchor:v14];
  v13[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  return v16;
}

- (void)dealloc
{
  v3 = [(DBDockRootViewController *)self homeButtonSource];
  [v3 invalidate];

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

  v3 = [(DBDockRootViewController *)self screenResizeButton];
  if (v3)
  {
    v4 = [(DBDockRootViewController *)self screenResizeButton];
    v5 = [v4 isHidden] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(DBDockRootViewController *)self environment];
  v7 = [v6 environmentConfiguration];
  if ([v7 currentStatusBarEdge] == 1)
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

    v12 = [(DBDockRootViewController *)self environment];
    v13 = [v12 environmentConfiguration];
    v14 = [v13 isRightHandDrive];

    v15 = 0.0;
    v16 = self->_extraSafeAreaInsets.top + 0.0;
    if (v14)
    {
      v17 = 0.0;
    }

    else
    {
      v17 = v11;
    }

    v18 = v17 + self->_extraSafeAreaInsets.left;
    v19 = self->_extraSafeAreaInsets.bottom + 0.0;
    if (v14)
    {
      v15 = v11;
    }

    v20 = v15 + self->_extraSafeAreaInsets.right;
    goto LABEL_23;
  }

  v8 = [(DBDockRootViewController *)self environment];
  v9 = [v8 environmentConfiguration];
  v10 = [v9 currentStatusBarEdge];

  if (v10 == 3)
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
  v21 = [(DBDockRootViewController *)self statusBarViewController];
  [v21 setAdditionalSafeAreaInsets:{v16, v18, v19, v20}];
}

- (void)_updateConstraintsForStatusBar
{
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = [(DBDockRootViewController *)self activeConstraints];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v5 = [(DBDockRootViewController *)self activeConstraints];
    [v4 deactivateConstraints:v5];
  }

  v6 = [(DBDockRootViewController *)self environment];
  v7 = [v6 environmentConfiguration];
  v8 = [v7 currentStatusBarEdge];

  v9 = [(DBDockRootViewController *)self appDockViewController];

  if (v9)
  {
    v10 = [(DBDockRootViewController *)self _appDockConstraintsWithStatusBarEdge:v8];
    [v16 addObjectsFromArray:v10];
  }

  v11 = [(DBDockRootViewController *)self homeButton];

  if (v11)
  {
    v12 = [(DBDockRootViewController *)self _homeButtonConstraintsWithStatusBarEdge:v8];
    [v16 addObjectsFromArray:v12];
  }

  v13 = [(DBDockRootViewController *)self keylineView];

  if (v13)
  {
    v14 = [(DBDockRootViewController *)self _keylineViewConstraintsWithStatusBarEdge:v8];
    [v16 addObjectsFromArray:v14];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:v16];
  v15 = [v16 copy];
  [(DBDockRootViewController *)self setActiveConstraints:v15];
}

- (id)_appDockConstraintsWithStatusBarEdge:(unint64_t)a3
{
  v47[4] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(DBDockRootViewController *)self appDockViewController];
  v7 = [v6 view];

  v8 = [(DBDockRootViewController *)self statusBarViewController];
  v9 = [v8 appDockLayoutGuide];

  v44 = v9;
  if (v9)
  {
    v38 = [v9 leadingAnchor];
    v36 = [v7 leadingAnchor];
    v34 = [v38 constraintEqualToAnchor:v36];
    v47[0] = v34;
    v33 = [v9 trailingAnchor];
    v32 = [v7 trailingAnchor];
    v10 = [v33 constraintEqualToAnchor:v32];
    v47[1] = v10;
    [v9 topAnchor];
    v40 = self;
    v12 = v11 = v5;
    [v7 topAnchor];
    v13 = v42 = a3;
    v14 = [v12 constraintEqualToAnchor:v13];
    v47[2] = v14;
    v15 = [v9 bottomAnchor];
    v16 = [v7 bottomAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    v47[3] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:4];
    [v11 addObjectsFromArray:v18];

    a3 = v42;
    v5 = v11;
    self = v40;
  }

  v19 = [(DBDockRootViewController *)self contentView];
  v20 = [v7 widthAnchor];
  v43 = v20;
  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    [(DBDockRootViewController *)self _appDockPrimaryAxisLength:0];
    v41 = [v20 constraintEqualToConstant:?];
    v46[0] = v41;
    v21 = [v7 centerXAnchor];
    v37 = [v19 centerXAnchor];
    v39 = v21;
    v35 = [v21 constraintEqualToAnchor:?];
    v46[1] = v35;
    v22 = [v7 centerYAnchor];
    v23 = [v19 centerYAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    v46[2] = v24;
    v25 = [v7 heightAnchor];
    v26 = [v19 heightAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    v46[3] = v27;
    v28 = v46;
  }

  else
  {
    v41 = [v19 widthAnchor];
    v39 = [v20 constraintEqualToAnchor:?];
    v45[0] = v39;
    v29 = [v7 centerXAnchor];
    v35 = [v19 centerXAnchor];
    v37 = v29;
    v22 = [v29 constraintEqualToAnchor:?];
    v45[1] = v22;
    v23 = [v7 centerYAnchor];
    v24 = [v19 centerYAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    v45[2] = v25;
    v26 = [v7 heightAnchor];
    [(DBDockRootViewController *)self _appDockPrimaryAxisLength:1];
    v27 = [v26 constraintEqualToConstant:?];
    v45[3] = v27;
    v28 = v45;
  }

  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  [v5 addObjectsFromArray:v30];

  return v5;
}

- (double)_appDockPrimaryAxisLength:(BOOL)a3
{
  v3 = a3;
  v5 = [(DBDockRootViewController *)self environment];
  v6 = [v5 environmentConfiguration];
  [v6 currentSafeViewAreaFrame];
  v8 = v7;
  v10 = v9;

  v11 = [(DBDockRootViewController *)self screenResizeButton];
  if (v11)
  {
    v12 = v11;
    v13 = [(DBDockRootViewController *)self screenResizeButton];
    v14 = [v13 isHidden];

    v15 = 37.0;
    if (v3)
    {
      v15 = 21.0;
    }

    if (v14)
    {
      v15 = 0.0;
    }
  }

  else
  {
    v15 = 0.0;
  }

  v16 = 370.0;
  if (v3)
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

- (id)_homeButtonConstraintsWithStatusBarEdge:(unint64_t)a3
{
  v41[4] = *MEMORY[0x277D85DE8];
  if (a3 == 2)
  {
    v31 = [(DBDockRootViewController *)self homeButton];
    v28 = [v31 leadingAnchor];
    v30 = [(DBDockRootViewController *)self contentView];
    v29 = [v30 leadingAnchor];
    v38 = [v28 constraintEqualToAnchor:v29];
    v41[0] = v38;
    v37 = [(DBDockRootViewController *)self homeButton];
    v4 = [v37 trailingAnchor];
    v35 = [(DBDockRootViewController *)self contentView];
    [v35 trailingAnchor];
    v34 = v36 = v4;
    v33 = [v4 constraintEqualToAnchor:?];
    v41[1] = v33;
    v32 = [(DBDockRootViewController *)self homeButton];
    v5 = [v32 bottomAnchor];
    v6 = [(DBDockRootViewController *)self contentView];
    v7 = [v6 bottomAnchor];
    v8 = [v5 constraintEqualToAnchor:v7];
    v41[2] = v8;
    v9 = [(DBDockRootViewController *)self homeButton];
    v10 = [v9 heightAnchor];
    v11 = [(DBDockRootViewController *)self homeButton];
    v12 = [v11 widthAnchor];
    v13 = [v10 constraintEqualToAnchor:v12 multiplier:1.0];
    v41[3] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];

    v15 = v28;
    v16 = v31;

    v17 = v29;
    v18 = v30;
  }

  else
  {
    v19 = [(DBDockRootViewController *)self environment];
    v20 = [v19 environmentConfiguration];
    v21 = [v20 isRightHandDrive];

    v22 = [(DBDockRootViewController *)self homeButton];
    v16 = v22;
    if (v21)
    {
      v15 = [v22 rightAnchor];
      v18 = [(DBDockRootViewController *)self contentView];
      v17 = [v18 rightAnchor];
      v38 = [v15 constraintEqualToAnchor:v17 constant:-self->_extraSafeAreaInsets.right];
      v40[0] = v38;
      v37 = [(DBDockRootViewController *)self homeButton];
      v36 = [v37 imageView];
      v23 = [v36 centerYAnchor];
      v34 = [(DBDockRootViewController *)self contentView];
      [v34 centerYAnchor];
      v33 = v35 = v23;
      v32 = [v23 constraintEqualToAnchor:?];
      v40[1] = v32;
      v5 = [(DBDockRootViewController *)self homeButton];
      v6 = [v5 heightAnchor];
      v7 = [(DBDockRootViewController *)self homeButton];
      v8 = [v7 widthAnchor];
      v9 = [v6 constraintEqualToAnchor:v8 multiplier:1.0];
      v40[2] = v9;
      v24 = MEMORY[0x277CBEA60];
      v25 = v40;
    }

    else
    {
      v15 = [v22 leftAnchor];
      v18 = [(DBDockRootViewController *)self contentView];
      v17 = [v18 leftAnchor];
      v38 = [v15 constraintEqualToAnchor:v17 constant:self->_extraSafeAreaInsets.left];
      v39[0] = v38;
      v37 = [(DBDockRootViewController *)self homeButton];
      v36 = [v37 imageView];
      v26 = [v36 centerYAnchor];
      v34 = [(DBDockRootViewController *)self contentView];
      [v34 centerYAnchor];
      v33 = v35 = v26;
      v32 = [v26 constraintEqualToAnchor:?];
      v39[1] = v32;
      v5 = [(DBDockRootViewController *)self homeButton];
      v6 = [v5 heightAnchor];
      v7 = [(DBDockRootViewController *)self homeButton];
      v8 = [v7 widthAnchor];
      v9 = [v6 constraintEqualToAnchor:v8 multiplier:1.0];
      v39[2] = v9;
      v24 = MEMORY[0x277CBEA60];
      v25 = v39;
    }

    v14 = [v24 arrayWithObjects:v25 count:3];
  }

  return v14;
}

- (id)_keylineViewConstraintsWithStatusBarEdge:(unint64_t)a3
{
  v41[4] = *MEMORY[0x277D85DE8];
  v5 = [(DBDockRootViewController *)self traitCollection];
  [v5 displayScale];
  v7 = 1.0 / v6;

  if (a3 == 1)
  {
    v8 = [(DBDockRootViewController *)self keylineView];
    v9 = [v8 bottomAnchor];
    v10 = [(DBDockRootViewController *)self view];
    v11 = [v10 topAnchor];
  }

  else
  {
    if (a3 != 3)
    {
      v24 = [(DBDockRootViewController *)self environment];
      v25 = [v24 environmentConfiguration];
      v26 = [v25 isRightHandDrive];

      v27 = [(DBDockRootViewController *)self keylineView];
      v28 = v27;
      if (v26)
      {
        v29 = [v27 rightAnchor];
        v30 = [(DBDockRootViewController *)self view];
        [v30 leftAnchor];
      }

      else
      {
        v29 = [v27 leftAnchor];
        v30 = [(DBDockRootViewController *)self view];
        [v30 rightAnchor];
      }
      v31 = ;
      v32 = [v29 constraintEqualToAnchor:v31];

      v39 = v32;
      v40[0] = v32;
      v38 = [(DBDockRootViewController *)self keylineView];
      v37 = [v38 widthAnchor];
      v36 = [v37 constraintEqualToConstant:v7];
      v40[1] = v36;
      v35 = [(DBDockRootViewController *)self keylineView];
      v14 = [v35 topAnchor];
      v15 = [(DBDockRootViewController *)self view];
      v16 = [v15 topAnchor];
      v17 = [v14 constraintEqualToAnchor:v16];
      v40[2] = v17;
      v18 = [(DBDockRootViewController *)self keylineView];
      v19 = [v18 bottomAnchor];
      v20 = [(DBDockRootViewController *)self view];
      v21 = [v20 bottomAnchor];
      v22 = [v19 constraintEqualToAnchor:v21];
      v40[3] = v22;
      v23 = v40;
      goto LABEL_10;
    }

    v8 = [(DBDockRootViewController *)self keylineView];
    v9 = [v8 topAnchor];
    v10 = [(DBDockRootViewController *)self view];
    v11 = [v10 bottomAnchor];
  }

  v12 = v11;
  v13 = [v9 constraintEqualToAnchor:v11];

  v39 = v13;
  v41[0] = v13;
  v38 = [(DBDockRootViewController *)self keylineView];
  v37 = [v38 heightAnchor];
  v36 = [v37 constraintEqualToConstant:v7];
  v41[1] = v36;
  v35 = [(DBDockRootViewController *)self keylineView];
  v14 = [v35 leftAnchor];
  v15 = [(DBDockRootViewController *)self view];
  v16 = [v15 leftAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  v41[2] = v17;
  v18 = [(DBDockRootViewController *)self keylineView];
  v19 = [v18 rightAnchor];
  v20 = [(DBDockRootViewController *)self view];
  v21 = [v20 rightAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
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
  v3 = [(DBDockRootViewController *)self view];
  v4 = [v3 layer];
  [v4 setHitTestsAsOpaque:1];

  if ([(DBDockRootViewController *)self useGlassDock])
  {
    v5 = +[_TtC9DashBoard20DBDashboardGlassView createWithDockConfiguration];
    [(DBDockRootViewController *)self setGlassDockView:v5];
  }

  else if ([(DBDockRootViewController *)self _isTopStatusBarLayout])
  {
    v6 = [_TtC9DashBoard32DBDockGradientBlurBackgroundView alloc];
    [v3 bounds];
    v5 = [(DBDockGradientBlurBackgroundView *)v6 initWithFrame:?];
    [(DBDockRootViewController *)self setGradientBlurBackgroundView:v5];
  }

  else
  {
    v7 = [DBDockBackgroundView alloc];
    v5 = [(DBDockRootViewController *)self environment];
    v8 = [(DBDockBackgroundView *)v7 initWithEnvironment:v5 layout:[(DBDockRootViewController *)self layout]];
    [(DBDockRootViewController *)self setMaterialDockView:v8];
  }

  v9 = [(DBDockRootViewController *)self backgroundView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(DBDockRootViewController *)self hideBackgroundIfNeeded];
  v10 = [(DBDockRootViewController *)self backgroundView];
  [v3 addSubview:v10];

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

  v11 = [(DBDockRootViewController *)self _isTopStatusBarLayout];
  [(DBDockRootViewController *)self _setupStatusBarViewController];
  if (!v11)
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
  v3 = [(DBDockRootViewController *)self backgroundViewConstraints];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v5 = [(DBDockRootViewController *)self backgroundViewConstraints];
    [v4 deactivateConstraints:v5];
  }

  v6 = DBIsPrimaryStatusBar([(DBDockRootViewController *)self layout]);
  v7 = [(DBDockRootViewController *)self layoutEngine];
  v8 = v7;
  if (v6)
  {
    [v7 primaryDockMargins];
  }

  else
  {
    [v7 secondaryDockMargins];
  }

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;

  if ([(DBDockRootViewController *)self _useRoundedCorners])
  {
    v17 = [(DBDockRootViewController *)self _dualStatusBarBackgroundConstraints];
  }

  else
  {
    v41 = [(DBDockRootViewController *)self backgroundView];
    v37 = [v41 leftAnchor];
    v39 = [(DBDockRootViewController *)self view];
    v18 = [v39 leftAnchor];
    v19 = [v37 constraintEqualToAnchor:v18 constant:v14];
    v44[0] = v19;
    v20 = [(DBDockRootViewController *)self backgroundView];
    v21 = [v20 rightAnchor];
    v22 = [(DBDockRootViewController *)self view];
    v23 = [v22 rightAnchor];
    v24 = [v21 constraintEqualToAnchor:v23 constant:-v16];
    v44[1] = v24;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
  }

  v42 = [(DBDockRootViewController *)self backgroundView];
  v38 = [v42 topAnchor];
  v40 = [(DBDockRootViewController *)self view];
  v36 = [v40 topAnchor];
  v25 = [v38 constraintEqualToAnchor:v36 constant:v13];
  v43[0] = v25;
  v26 = [(DBDockRootViewController *)self backgroundView];
  v27 = [v26 bottomAnchor];
  v28 = [(DBDockRootViewController *)self view];
  v29 = [v28 bottomAnchor];
  v30 = [v27 constraintEqualToAnchor:v29 constant:-v15];
  v43[1] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
  v32 = v17;
  v33 = [v17 arrayByAddingObjectsFromArray:v31];
  [(DBDockRootViewController *)self setBackgroundViewConstraints:v33];

  v34 = MEMORY[0x277CCAAD0];
  v35 = [(DBDockRootViewController *)self backgroundViewConstraints];
  [v34 activateConstraints:v35];
}

- (void)_setupClimateVerticalFocusGuides
{
  v58[1] = *MEMORY[0x277D85DE8];
  if ([(DBDockRootViewController *)self layout]== 1)
  {
    v3 = [(DBDockRootViewController *)self homeToClimateFocusGuide];

    if (v3)
    {
      v4 = [(DBDockRootViewController *)self view];
      v5 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
      [v4 removeLayoutGuide:v5];
    }

    v6 = [(DBDockRootViewController *)self dockToClimateFocusGuide];

    if (v6)
    {
      v7 = [(DBDockRootViewController *)self view];
      v8 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
      [v7 removeLayoutGuide:v8];
    }

    v9 = objc_alloc_init(DBFocusGuide);
    [(DBDockRootViewController *)self setHomeToClimateFocusGuide:v9];

    objc_initWeak(&location, self);
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __60__DBDockRootViewController__setupClimateVerticalFocusGuides__block_invoke;
    v54[3] = &unk_278F02300;
    objc_copyWeak(&v55, &location);
    v10 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
    [v10 setFocusUpdateHandler:v54];

    v11 = [(DBDockRootViewController *)self homeButton];
    v58[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:1];
    v13 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
    [v13 setPreferredFocusEnvironments:v12];

    v14 = [(DBDockRootViewController *)self view];
    v15 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
    [v14 addLayoutGuide:v15];

    v16 = [(DBDockRootViewController *)self appDockViewController];
    v47 = [v16 view];

    v17 = objc_alloc_init(DBFocusGuide);
    [(DBDockRootViewController *)self setDockToClimateFocusGuide:v17];

    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __60__DBDockRootViewController__setupClimateVerticalFocusGuides__block_invoke_2;
    v52[3] = &unk_278F02300;
    objc_copyWeak(&v53, &location);
    v18 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
    [v18 setFocusUpdateHandler:v52];

    v19 = [(DBDockRootViewController *)self view];
    v20 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
    [v19 addLayoutGuide:v20];

    v33 = MEMORY[0x277CCAAD0];
    v51 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
    v49 = [v51 widthAnchor];
    v50 = [(DBDockRootViewController *)self view];
    v48 = [v50 widthAnchor];
    v46 = [v49 constraintEqualToAnchor:v48];
    v57[0] = v46;
    v45 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
    v44 = [v45 heightAnchor];
    v43 = [v44 constraintEqualToConstant:1.0];
    v57[1] = v43;
    v42 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
    v41 = [v42 bottomAnchor];
    v40 = [v47 bottomAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v57[2] = v39;
    v38 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
    v36 = [v38 widthAnchor];
    v37 = [(DBDockRootViewController *)self view];
    v35 = [v37 widthAnchor];
    v34 = [v36 constraintEqualToAnchor:v35];
    v57[3] = v34;
    v21 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
    v22 = [v21 heightAnchor];
    v23 = [v22 constraintEqualToConstant:1.0];
    v57[4] = v23;
    v24 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
    v25 = [v24 bottomAnchor];
    v26 = [(DBDockRootViewController *)self homeButton];
    v27 = [v26 topAnchor];
    v28 = [v25 constraintEqualToAnchor:v27];
    v57[5] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:6];
    [v33 activateConstraints:v29];

    v30 = [(DBDockRootViewController *)self environment];
    v31 = [v30 environmentConfiguration];
    LODWORD(v22) = [v31 hasDualStatusBar];

    if (v22)
    {
      v32 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
      [v32 setEnabled:0];
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
  v3 = [(DBDockRootViewController *)self homeToClimateFocusGuide];

  if (v3)
  {
    v4 = [(DBDockRootViewController *)self view];
    v5 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
    [v4 removeLayoutGuide:v5];
  }

  v6 = [(DBDockRootViewController *)self dockToClimateFocusGuide];

  if (v6)
  {
    v7 = [(DBDockRootViewController *)self view];
    v8 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
    [v7 removeLayoutGuide:v8];
  }

  v9 = objc_alloc_init(DBFocusGuide);
  [(DBDockRootViewController *)self setHomeToClimateFocusGuide:v9];

  objc_initWeak(&location, self);
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __62__DBDockRootViewController__setupClimateHorizontalFocusGuides__block_invoke;
  v65[3] = &unk_278F02300;
  objc_copyWeak(&v66, &location);
  v10 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
  [v10 setFocusUpdateHandler:v65];

  v11 = [(DBDockRootViewController *)self homeButton];
  v71[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:1];
  v13 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
  [v13 setPreferredFocusEnvironments:v12];

  v14 = [(DBDockRootViewController *)self view];
  v15 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
  [v14 addLayoutGuide:v15];

  v16 = [(DBDockRootViewController *)self appDockViewController];
  v43 = [v16 view];

  v17 = objc_alloc_init(DBFocusGuide);
  [(DBDockRootViewController *)self setDockToClimateFocusGuide:v17];

  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __62__DBDockRootViewController__setupClimateHorizontalFocusGuides__block_invoke_2;
  v63[3] = &unk_278F02300;
  objc_copyWeak(&v64, &location);
  v18 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
  [v18 setFocusUpdateHandler:v63];

  v19 = [(DBDockRootViewController *)self view];
  v20 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
  [v19 addLayoutGuide:v20];

  v42 = MEMORY[0x277CCAAD0];
  v61 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
  v60 = [v61 widthAnchor];
  v59 = [v60 constraintEqualToConstant:1.0];
  v70[0] = v59;
  v58 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
  v56 = [v58 bottomAnchor];
  v57 = [(DBDockRootViewController *)self view];
  v55 = [v57 bottomAnchor];
  v54 = [v56 constraintEqualToAnchor:v55];
  v70[1] = v54;
  v53 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
  v51 = [v53 topAnchor];
  v52 = [(DBDockRootViewController *)self view];
  v50 = [v52 topAnchor];
  v49 = [v51 constraintEqualToAnchor:v50];
  v70[2] = v49;
  v48 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
  v47 = [v48 widthAnchor];
  v46 = [v47 constraintEqualToConstant:1.0];
  v70[3] = v46;
  v45 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
  v44 = [v45 bottomAnchor];
  v21 = [(DBDockRootViewController *)self view];
  v22 = [v21 bottomAnchor];
  v23 = [v44 constraintEqualToAnchor:v22];
  v70[4] = v23;
  v24 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
  v25 = [v24 topAnchor];
  v26 = [(DBDockRootViewController *)self view];
  v27 = [v26 topAnchor];
  v28 = [v25 constraintEqualToAnchor:v27];
  v70[5] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:6];
  [v42 activateConstraints:v29];

  v30 = [(DBDockRootViewController *)self environment];
  v31 = [v30 environmentConfiguration];
  LODWORD(v21) = [v31 isRightHandDrive];

  v62 = MEMORY[0x277CCAAD0];
  v32 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
  if (v21)
  {
    v33 = [v32 rightAnchor];
    v34 = [(DBDockRootViewController *)self homeButton];
    v35 = [v34 leftAnchor];
    v36 = [v33 constraintEqualToAnchor:v35];
    v69[0] = v36;
    v37 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
    v38 = [v37 leftAnchor];
    v39 = [v43 rightAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    v69[1] = v40;
    [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:2];
  }

  else
  {
    v33 = [v32 leftAnchor];
    v34 = [(DBDockRootViewController *)self homeButton];
    v35 = [v34 rightAnchor];
    v36 = [v33 constraintEqualToAnchor:v35];
    v68[0] = v36;
    v37 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
    v38 = [v37 rightAnchor];
    v39 = [v43 leftAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
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
  v8 = [(DBDockRootViewController *)self environment];
  v3 = [v8 environmentConfiguration];
  if ([v3 isVehicleDataSession])
  {
    v4 = [(DBDockRootViewController *)self _isTopStatusBarLayout];

    if (!v4)
    {
      if ([(DBDockRootViewController *)self _isDualStatusBarLayout])
      {

        [(DBDockRootViewController *)self _setupClimateVerticalFocusGuides];
      }

      else
      {
        v5 = [(DBDockRootViewController *)self environment];
        v6 = [v5 environmentConfiguration];
        v7 = [v6 currentStatusBarEdge];

        if (v7 == 1)
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

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v27.receiver = self;
  v27.super_class = DBDockRootViewController;
  [(DBDockRootViewController *)&v27 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  if (![(DBDockRootViewController *)self isClimateFocusGuidesDisabled])
  {
    v7 = [(DBDockRootViewController *)self environment];
    v8 = [v7 environmentConfiguration];
    v9 = [v8 hasDualStatusBar];

    if (v9)
    {
      v10 = [v6 previouslyFocusedView];
      v11 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
      [v11 setEnabled:v10 != 0];
    }

    v12 = [v6 nextFocusedItem];
    v13 = v12 != 0;

    v14 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
    [v14 setEnabled:v13];

    v15 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
    [v15 setEnabled:v13];

    v16 = [(DBDockRootViewController *)self environment];
    v17 = [v16 environmentConfiguration];
    v18 = [(DBHomeButton *)v17 hasDualStatusBar];

    if (v18)
    {
      v19 = [v6 previouslyFocusedView];
      homeButton = self->_homeButton;
      if (v19 == homeButton)
      {
        v21 = 1;
      }

      else
      {
        v17 = [v6 nextFocusedView];
        v21 = v17 == self->_homeButton;
      }

      v22 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
      [v22 setEnabled:v21];

      if (v19 != homeButton)
      {
      }
    }

    v23 = [v6 nextFocusedItem];

    if (v23)
    {
      v24 = [v6 nextFocusedItem];
      v28[0] = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
      v26 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
      [v26 setPreferredFocusEnvironments:v25];
    }
  }
}

- (void)_setupAppDockViewController
{
  v6 = [(DBDockRootViewController *)self appDockViewController];
  [v6 setAppDockViewControllerDelegate:self];
  [v6 willMoveToParentViewController:self];
  [(DBDockRootViewController *)self addChildViewController:v6];
  v3 = [v6 view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(DBDockRootViewController *)self contentView];
  v5 = [v6 view];
  [v4 addSubview:v5];

  [v6 didMoveToParentViewController:self];
}

- (void)_setupHomeButton
{
  v3 = [DBHomeButton alloc];
  v8 = [(DBHomeButton *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(DBHomeButton *)v8 addTarget:self action:sel_homeButtonDown_ forControlEvents:16777217];
  [(DBHomeButton *)v8 addTarget:self action:sel_homeButtonUp_ forControlEvents:33554496];
  [(DBHomeButton *)v8 addTarget:self action:sel_homeButtonCancel_ forControlEvents:384];
  [(DBHomeButton *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(DBDockRootViewController *)self contentView];
  [v4 addSubview:v8];

  [(DBDockRootViewController *)self setHomeButton:v8];
  v5 = [MEMORY[0x277D551F8] longPressButtonForIdentifier:5];
  [(DBDockRootViewController *)self setHomeButtonSource:v5];

  [(DBDockRootViewController *)self _updateAdditionalSafeAreaInsets];
  v6 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleBackPressGesture_];
  [v6 setAllowedPressTypes:&unk_285AA4A48];
  v7 = [(DBDockRootViewController *)self view];
  [v7 addGestureRecognizer:v6];

  [(DBDockRootViewController *)self setBackPressGestureRecognizer:v6];
}

- (void)_setupStatusBarViewController
{
  v33[4] = *MEMORY[0x277D85DE8];
  v3 = [(DBDockRootViewController *)self statusBarViewController];
  [v3 willMoveToParentViewController:self];
  [(DBDockRootViewController *)self addChildViewController:v3];
  v4 = [v3 view];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(DBDockRootViewController *)self contentView];
  v6 = [v3 view];
  [v5 addSubview:v6];

  v21 = MEMORY[0x277CCAAD0];
  v32 = [v3 view];
  v30 = [v32 topAnchor];
  v31 = [(DBDockRootViewController *)self contentView];
  v29 = [v31 safeAreaLayoutGuide];
  v28 = [v29 topAnchor];
  v27 = [v30 constraintEqualToAnchor:v28];
  v33[0] = v27;
  v26 = [v3 view];
  v24 = [v26 bottomAnchor];
  v25 = [(DBDockRootViewController *)self contentView];
  v23 = [v25 safeAreaLayoutGuide];
  v22 = [v23 bottomAnchor];
  v20 = [v24 constraintEqualToAnchor:v22];
  v33[1] = v20;
  v19 = [v3 view];
  v17 = [v19 leftAnchor];
  v18 = [(DBDockRootViewController *)self contentView];
  v16 = [v18 safeAreaLayoutGuide];
  v7 = [v16 leftAnchor];
  v8 = [v17 constraintEqualToAnchor:v7];
  v33[2] = v8;
  v9 = [v3 view];
  v10 = [v9 rightAnchor];
  v11 = [(DBDockRootViewController *)self contentView];
  v12 = [v11 safeAreaLayoutGuide];
  v13 = [v12 rightAnchor];
  v14 = [v10 constraintEqualToAnchor:v13];
  v33[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
  [v21 activateConstraints:v15];
}

- (void)_handleBackPressGesture:(id)a3
{
  if ([a3 state] == 3)
  {
    v5 = [(DBDockRootViewController *)self environment];
    v4 = [DBEvent eventWithType:3 context:0];
    [v5 handleEvent:v4];
  }
}

- (void)addDockObserver:(id)a3
{
  v9 = a3;
  v4 = [(DBDockRootViewController *)self dockObservers];
  [v4 registerObserver:v9];

  if (objc_opt_respondsToSelector())
  {
    v5 = [(DBDockRootViewController *)self traitCollection];
    v6 = [v5 valueForNSIntegerTrait:objc_opt_class()];

    v7 = [(DBDockRootViewController *)self isSiriPresentationActive];
    v8 = [(DBDockRootViewController *)self traitCollection];
    [v9 dockDidChangeInterfaceStyle:objc_msgSend(v8 colorVariant:"userInterfaceStyle") isSiriPresentation:{v6, v7}];
  }
}

- (void)removeDockObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBDockRootViewController *)self dockObservers];
  [v5 unregisterObserver:v4];
}

- (BOOL)isHomeButtonFocused
{
  v2 = [(DBDockRootViewController *)self homeButton];
  v3 = [v2 isFocused];

  return v3;
}

- (void)workspace:(id)a3 stateDidChangeFromState:(id)a4 toState:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = [(DBDockRootViewController *)self appDockViewController];
  [v7 setDockEnabled:1];

  v8 = [v6 activeBundleIdentifier];

  v9 = +[DBApplicationController sharedInstance];
  v10 = [v9 applicationWithBundleIdentifier:v8];

  if ([(DBDockRootViewController *)self _isTopStatusBarLayout])
  {
    v11 = [v10 appPolicy];
    v12 = [v11 applicationCategory];

    v13 = DBLogForCategory(6uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412546;
      v19 = v8;
      v20 = 1024;
      v21 = v12 == 8;
      _os_log_impl(&dword_248146000, v13, OS_LOG_TYPE_DEFAULT, "Changing top status bar visibility for active identifier: %@, to: %d", &v18, 0x12u);
    }

    [(DBDockRootViewController *)self setBackgroundDisabled:v12 != 8];
  }

  v14 = [v10 presentsFullScreen];
  if (v14)
  {
    v15 = DBLogForCategory(6uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v8;
      _os_log_impl(&dword_248146000, v15, OS_LOG_TYPE_DEFAULT, "Hiding status bar for active identifier: %@", &v18, 0xCu);
    }
  }

  v16 = [(DBDockRootViewController *)self view];
  [v16 setHidden:v14];

  v17 = [(DBDockRootViewController *)self dockObservers];
  [v17 dockDidUpdateHidden:v14];
}

- (void)appDockViewController:(id)a3 didSelectBundleID:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = v5;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_INFO, "Dock icon selected for ID: %@", &v14, 0xCu);
  }

  v7 = [(DBDockRootViewController *)self appDockViewController];
  [v7 setDockEnabled:0];

  v8 = +[DBApplicationController sharedInstance];
  v9 = [v8 applicationWithBundleIdentifier:v5];

  v10 = objc_alloc_init(DBActivationSettings);
  [(DBActivationSettings *)v10 setLaunchSource:1];
  v11 = [DBApplicationLaunchInfo launchInfoForApplication:v9 withActivationSettings:v10];
  v12 = [(DBDockRootViewController *)self environment];
  v13 = [DBEvent eventWithType:4 context:v11];
  [v12 handleEvent:v13];
}

- (void)climateOverlayDidRequestHideFocusGuides:(BOOL)a3
{
  v3 = a3;
  if ([(DBDockRootViewController *)self isClimateFocusGuidesDisabled]!= a3)
  {
    [(DBDockRootViewController *)self setIsClimateFocusGuidesDisabled:v3];
    v5 = [(DBDockRootViewController *)self homeToClimateFocusGuide];
    [v5 setEnabled:v3 ^ 1];

    v6 = [(DBDockRootViewController *)self dockToClimateFocusGuide];
    [v6 setEnabled:v3 ^ 1];
  }
}

- (void)dashboardRootViewController:(id)a3 didUpdateActiveBundleIdentifier:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [(DBDockRootViewController *)self appDockViewController];
  [v8 setActiveBundleIdentifier:v7 animated:v5];
}

- (void)homeButtonDown:(id)a3
{
  v4 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "Soft home button down", buf, 2u);
  }

  [(DBDockRootViewController *)self setLastHomeButtonDownTime:CFAbsoluteTimeGetCurrent()];
  v5 = [(DBDockRootViewController *)self homeButton];
  v6 = [v5 displayState];

  if (v6 == 2)
  {
    v7 = DBLogForCategory(6uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Soft home button skipping siri prewarm, in close state.", v18, 2u);
    }
  }

  else
  {
    v8 = [(DBDockRootViewController *)self homeButtonAssertion];

    if (v8)
    {
      v9 = DBLogForCategory(3uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [DBDockRootViewController homeButtonDown:v9];
      }

      [(DBDockRootViewController *)self setHomeButtonAssertion:0];
      [(DBDockRootViewController *)self setSiriPrewarmAssertion:0];
    }

    v10 = [(DBDockRootViewController *)self homeButtonSource];
    v11 = [v10 speechInteractionActivityWithTimestamp:CFAbsoluteTimeGetCurrent()];
    [(DBDockRootViewController *)self setHomeButtonAssertion:v11];

    v12 = [(DBDockRootViewController *)self homeButtonSource];
    v13 = [v12 prepareForActivationWithTimestamp:CFAbsoluteTimeGetCurrent()];
    [(DBDockRootViewController *)self setSiriPrewarmAssertion:v13];

    v14 = [(DBDockRootViewController *)self homeButtonTimer];

    if (v14)
    {
      v15 = [(DBDockRootViewController *)self homeButtonTimer];
      [v15 invalidate];

      [(DBDockRootViewController *)self setHomeButtonTimer:0];
    }

    v16 = MEMORY[0x277CBEBB8];
    v7 = [(DBDockRootViewController *)self homeButtonSource];
    [v7 longPressInterval];
    v17 = [v16 scheduledTimerWithTimeInterval:self target:sel__handleLongPressActivation selector:0 userInfo:0 repeats:?];
    [(DBDockRootViewController *)self setHomeButtonTimer:v17];
  }
}

- (void)homeButtonUp:(id)a3
{
  v4 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "Soft home button up", buf, 2u);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v6 = [(DBDockRootViewController *)self homeButtonTimer];

  if (v6)
  {
    v7 = [(DBDockRootViewController *)self homeButtonTimer];
    [v7 invalidate];

    [(DBDockRootViewController *)self setHomeButtonTimer:0];
  }

  v8 = [(DBDockRootViewController *)self homeButtonAssertion];
  [v8 invalidatedAtTimestamp:Current];

  v9 = [(DBDockRootViewController *)self siriPrewarmAssertion];
  [v9 invalidatedAtTimestamp:Current];

  [(DBDockRootViewController *)self lastHomeButtonDownTime];
  v11 = Current - v10;
  v12 = [(DBDockRootViewController *)self homeButtonSource];
  [v12 longPressInterval];
  v14 = v13;

  v15 = [(DBDockRootViewController *)self homeButton];
  v16 = [v15 displayState];

  if (v11 < v14 || v16 == 2)
  {
    v17 = DBLogForCategory(6uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_248146000, v17, OS_LOG_TYPE_DEFAULT, "Soft home button tapped", v21, 2u);
    }

    v18 = [(DBDockRootViewController *)self homeButtonSource];
    [v18 didRecognizeButtonSinglePressUp];

    v19 = [(DBDockRootViewController *)self environment];
    v20 = [DBEvent eventWithType:1 context:&unk_285AA4778];
    [v19 handleEvent:v20];
  }

  [(DBDockRootViewController *)self setHomeButtonAssertion:0];
  [(DBDockRootViewController *)self setSiriPrewarmAssertion:0];
}

- (void)homeButtonCancel:(id)a3
{
  v4 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "Soft home button cancelled", v9, 2u);
  }

  v5 = [(DBDockRootViewController *)self homeButtonTimer];

  if (v5)
  {
    v6 = [(DBDockRootViewController *)self homeButtonTimer];
    [v6 invalidate];

    [(DBDockRootViewController *)self setHomeButtonTimer:0];
  }

  v7 = [(DBDockRootViewController *)self homeButtonAssertion];
  [v7 invalidatedAtTimestamp:CFAbsoluteTimeGetCurrent()];

  [(DBDockRootViewController *)self setHomeButtonAssertion:0];
  v8 = [(DBDockRootViewController *)self siriPrewarmAssertion];
  [v8 invalidatedAtTimestamp:CFAbsoluteTimeGetCurrent()];

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

  v4 = [(DBDockRootViewController *)self homeButtonSource];
  [v4 didRecognizeLongPress];

  v5 = [(DBDockRootViewController *)self homeButtonTimer];
  [v5 invalidate];

  [(DBDockRootViewController *)self setHomeButtonTimer:0];
}

- (BOOL)_useRoundedCorners
{
  v3 = [(DBDockRootViewController *)self _isDualStatusBarLayout];
  if (v3)
  {
    LOBYTE(v3) = (DBIsPrimaryStatusBar([(DBDockRootViewController *)self layout]) & 1) == 0 && [(DBDockRootViewController *)self dockVariant]== 0;
  }

  return v3;
}

- (void)homeButtonStateManager:(id)a3 didChangeToDisplayState:(unint64_t)a4
{
  v6 = [(DBDockRootViewController *)self homeButton];
  [v6 setDisplayState:a4];

  [(DBDockRootViewController *)self updateAppearanceForWallpaper];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = [(DBDockRootViewController *)self traitCollection];
  v5 = [v4 userInterfaceStyle];

  v6 = [(DBDockRootViewController *)self audioNotificationViewController];
  [v6 updateInterfaceWithStyle:v5];

  v7 = [(DBDockRootViewController *)self traitCollection];
  v8 = [v7 valueForNSIntegerTrait:objc_opt_class()];

  v9 = [(DBDockRootViewController *)self isSiriPresentationActive];
  v10 = [(DBDockRootViewController *)self dockObservers];
  [v10 dockDidChangeInterfaceStyle:v5 colorVariant:v8 isSiriPresentation:v9];
}

- (void)statusBarStyleServiceUpdatedOverride:(id)a3 animationSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __83__DBDockRootViewController_statusBarStyleServiceUpdatedOverride_animationSettings___block_invoke;
  v14 = &unk_278F014B8;
  v8 = v6;
  v15 = v8;
  v16 = self;
  v9 = _Block_copy(&v11);
  v10 = v9;
  if (v7)
  {
    [MEMORY[0x277CF0D38] animateWithSettings:v7 actions:{v9, v11, v12, v13, v14}];
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

- (void)setTransitionControlType:(unint64_t)a3
{
  if (self->_transitionControlType != a3)
  {
    self->_transitionControlType = a3;
    [(DBDockRootViewController *)self _updateScreenResizeButton];
  }
}

- (void)_resizeButtonPressed:(id)a3
{
  v4 = [(DBDockRootViewController *)self environment];
  v5 = [v4 environmentConfiguration];
  v6 = [v5 analytics];
  [v6 userPressedTransitionControl];

  v13 = [(DBDockRootViewController *)self environment];
  v7 = [v13 environmentConfiguration];
  v8 = [v7 session];
  v9 = [(DBDockRootViewController *)self environment];
  v10 = [v9 environmentConfiguration];
  v11 = [v10 displayConfiguration];
  v12 = [v11 hardwareIdentifier];
  [v8 requestAdjacentViewAreaForScreenID:v12];
}

- (void)_updateScreenResizeButton
{
  v51[4] = *MEMORY[0x277D85DE8];
  v3 = [(DBDockRootViewController *)self transitionControlType];
  v4 = [(DBDockRootViewController *)self screenResizeButton];
  v5 = v4;
  if (v3)
  {

    if (!v5)
    {
      v6 = [[_TtC9DashBoard28DBElevatedScreenResizeButton alloc] initWithTransitionControlType:[(DBDockRootViewController *)self transitionControlType]];
      [(DBElevatedScreenResizeButton *)v6 addTarget:self action:sel__resizeButtonPressed_ forControlEvents:0x2000];
      [(DBElevatedScreenResizeButton *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
      v7 = [(DBDockRootViewController *)self contentView];
      [v7 addSubview:v6];

      elevatedScreenResizeButton = self->_elevatedScreenResizeButton;
      self->_elevatedScreenResizeButton = v6;
    }

    v9 = [(DBDockRootViewController *)self resizeButtonConstraints];

    if (v9)
    {
      v10 = MEMORY[0x277CCAAD0];
      v11 = [(DBDockRootViewController *)self resizeButtonConstraints];
      [v10 deactivateConstraints:v11];
    }

    v12 = [(DBDockRootViewController *)self environment];
    v13 = [v12 environmentConfiguration];
    if ([v13 currentStatusBarEdge] == 1)
    {
    }

    else
    {
      v14 = [(DBDockRootViewController *)self environment];
      v15 = [v14 environmentConfiguration];
      v16 = [v15 currentStatusBarEdge];

      if (v16 != 3)
      {
        v39 = [(DBDockRootViewController *)self screenResizeButton];
        v33 = [v39 topAnchor];
        v47 = [(DBDockRootViewController *)self contentView];
        v46 = [v47 safeAreaLayoutGuide];
        [v46 topAnchor];
        v45 = v48 = v33;
        v44 = [v33 constraintEqualToAnchor:8.0 constant:?];
        v49[0] = v44;
        v43 = [(DBDockRootViewController *)self screenResizeButton];
        v42 = [v43 heightAnchor];
        v41 = [v42 constraintEqualToConstant:17.0];
        v49[1] = v41;
        v40 = [(DBDockRootViewController *)self screenResizeButton];
        v23 = [v40 widthAnchor];
        v24 = [v23 constraintEqualToConstant:33.0];
        v49[2] = v24;
        v25 = [(DBDockRootViewController *)self screenResizeButton];
        v26 = [v25 centerXAnchor];
        v27 = [(DBDockRootViewController *)self contentView];
        v28 = [v27 safeAreaLayoutGuide];
        v29 = [v28 centerXAnchor];
        v32 = [v26 constraintEqualToAnchor:v29];
        v49[3] = v32;
        v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:4];
        [(DBDockRootViewController *)self setResizeButtonConstraints:v34];

        v20 = v39;
LABEL_15:

        v35 = MEMORY[0x277CCAAD0];
        v36 = [(DBDockRootViewController *)self resizeButtonConstraints];
        [v35 activateConstraints:v36];

        v37 = [(DBDockRootViewController *)self screenResizeButton];
        [v37 setHidden:0];

        v38 = [(DBDockRootViewController *)self _screenResizeButton];
        [v38 setTransitionControlType:{-[DBDockRootViewController transitionControlType](self, "transitionControlType")}];

        v5 = [(DBDockRootViewController *)self elevatedScreenResizeButton];
        [v5 setTransitionControlType:{-[DBDockRootViewController transitionControlType](self, "transitionControlType")}];
        goto LABEL_16;
      }
    }

    v17 = [(DBDockRootViewController *)self environment];
    v18 = [v17 environmentConfiguration];
    v19 = [v18 isRightHandDrive];

    v20 = [(DBDockRootViewController *)self screenResizeButton];
    v21 = [v20 centerYAnchor];
    v47 = [(DBDockRootViewController *)self contentView];
    v46 = [v47 safeAreaLayoutGuide];
    [v46 centerYAnchor];
    v45 = v48 = v21;
    v22 = [v21 constraintEqualToAnchor:0.0 constant:?];
    v44 = v22;
    if (v19)
    {
      v51[0] = v22;
      v43 = [(DBDockRootViewController *)self screenResizeButton];
      v42 = [v43 heightAnchor];
      v41 = [v42 constraintEqualToConstant:17.0];
      v51[1] = v41;
      v40 = [(DBDockRootViewController *)self screenResizeButton];
      v23 = [v40 widthAnchor];
      v24 = [v23 constraintEqualToConstant:33.0];
      v51[2] = v24;
      v25 = [(DBDockRootViewController *)self screenResizeButton];
      v26 = [v25 rightAnchor];
      v27 = [(DBDockRootViewController *)self homeButton];
      v28 = [v27 leftAnchor];
      v29 = [v26 constraintEqualToAnchor:v28 constant:-4.0];
      v51[3] = v29;
      v30 = MEMORY[0x277CBEA60];
      v31 = v51;
    }

    else
    {
      v50[0] = v22;
      v43 = [(DBDockRootViewController *)self screenResizeButton];
      v42 = [v43 heightAnchor];
      v41 = [v42 constraintEqualToConstant:17.0];
      v50[1] = v41;
      v40 = [(DBDockRootViewController *)self screenResizeButton];
      v23 = [v40 widthAnchor];
      v24 = [v23 constraintEqualToConstant:33.0];
      v50[2] = v24;
      v25 = [(DBDockRootViewController *)self screenResizeButton];
      v26 = [v25 leftAnchor];
      v27 = [(DBDockRootViewController *)self homeButton];
      v28 = [v27 rightAnchor];
      v29 = [v26 constraintEqualToAnchor:v28 constant:4.0];
      v50[3] = v29;
      v30 = MEMORY[0x277CBEA60];
      v31 = v50;
    }

    v32 = [v30 arrayWithObjects:v31 count:4];
    [(DBDockRootViewController *)self setResizeButtonConstraints:v32];
    goto LABEL_15;
  }

  [v4 setHidden:1];
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
    v3 = glassDockView;
  }

  else
  {
    v3 = [(DBDockRootViewController *)self view];
  }

  return v3;
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