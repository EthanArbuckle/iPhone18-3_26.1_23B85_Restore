@interface CPSInstrumentClusterCardViewController
- (CGRect)lastKnownSafeArea;
- (CGRect)lastKnownViewArea;
- (CPSInstrumentClusterCardViewController)init;
- (CPSSafeAreaDelegate)safeAreaDelegate;
- (UIEdgeInsets)_layoutGuideForClient;
- (UIEdgeInsets)currentClientInsets;
- (id)initForMapContent;
- (void)_evaluateLayout;
- (void)_setupConstraintsForETACard;
- (void)_setupConstraintsForPauseCard;
- (void)_setupConstraintsForPlatterView;
- (void)_setupConstraintsForTurnCard;
- (void)_transitionFromViews:(id)views inView:(id)view horizontalSlideAnimation:(BOOL)animation;
- (void)_updateClientSafeArea;
- (void)_updateClientSafeAreaWithInsets:(UIEdgeInsets)insets;
- (void)navigator:(id)navigator didEndTrip:(BOOL)trip;
- (void)navigator:(id)navigator pausedTripForReason:(unint64_t)reason description:(id)description usingColor:(id)color;
- (void)setCARScreenInfo:(id)info isRightHandDrive:(BOOL)drive supportsVehicleData:(BOOL)data;
- (void)setLayout:(id)layout;
- (void)setLayoutOverride:(unint64_t)override;
- (void)setSafeAreaDelegate:(id)delegate;
- (void)setShowETA:(BOOL)a;
- (void)showManeuvers:(id)maneuvers usingDisplayStyles:(id)styles;
- (void)updateEstimates:(id)estimates forManeuver:(id)maneuver;
- (void)updateTripEstimates:(id)estimates;
- (void)viewController:(id)controller didUpdateSafeAreaInsets:(UIEdgeInsets)insets;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CPSInstrumentClusterCardViewController

- (CPSInstrumentClusterCardViewController)init
{
  v10 = a2;
  v11 = 0;
  v9.receiver = self;
  v9.super_class = CPSInstrumentClusterCardViewController;
  v11 = [(CPSInstrumentClusterCardViewController *)&v9 init];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    v11->_layoutOverride = 0;
    v2 = objc_alloc_init(MEMORY[0x277D75D28]);
    platterViewController = v11->_platterViewController;
    v11->_platterViewController = v2;
    MEMORY[0x277D82BD8](platterViewController);
    v4 = objc_alloc_init(CPSClusterEstimatesViewController);
    estimatesViewController = v11->_estimatesViewController;
    v11->_estimatesViewController = v4;
    *&v6 = MEMORY[0x277D82BD8](estimatesViewController).n128_u64[0];
    [(CPSDashboardEstimatesViewController *)v11->_estimatesViewController setSafeAreaDelegate:v11, v6];
    v11->_shouldUpdateContent = 0;
    v11->_isMapContentOnly = 0;
  }

  v8 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v11, 0);
  return v8;
}

- (id)initForMapContent
{
  v4 = 0;
  v4 = [(CPSInstrumentClusterCardViewController *)self init];
  objc_storeStrong(&v4, v4);
  if (v4)
  {
    v4->_isMapContentOnly = 1;
  }

  v3 = MEMORY[0x277D82BE0](v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSInstrumentClusterCardViewController;
  [(CPSInstrumentClusterCardViewController *)&v2 viewDidLoad];
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v5 = a2;
  appearCopy = appear;
  v3.receiver = self;
  v3.super_class = CPSInstrumentClusterCardViewController;
  [(CPSInstrumentClusterCardViewController *)&v3 viewDidAppear:appear];
  selfCopy->_shouldUpdateContent = 1;
  [(CPSInstrumentClusterCardViewController *)selfCopy _evaluateLayout];
  [(CPSInstrumentClusterCardViewController *)selfCopy _updateClientSafeArea];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v5 = a2;
  disappearCopy = disappear;
  v3.receiver = self;
  v3.super_class = CPSInstrumentClusterCardViewController;
  [(CPSInstrumentClusterCardViewController *)&v3 viewDidDisappear:disappear];
  [(CPSInstrumentClusterCardViewController *)selfCopy _updateClientSafeAreaWithInsets:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  selfCopy->_shouldUpdateContent = 0;
}

- (void)viewDidLayoutSubviews
{
  v32 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v28 = a2;
  v27.receiver = self;
  v27.super_class = CPSInstrumentClusterCardViewController;
  [(CPSInstrumentClusterCardViewController *)&v27 viewDidLayoutSubviews];
  v25 = 0;
  v17 = 0;
  if ([(CPSInstrumentClusterCardViewController *)selfCopy layoutOverride])
  {
    layout = [(CPSInstrumentClusterCardViewController *)selfCopy layout];
    v25 = 1;
    layoutForCard = [(CPSInstrumentClusterCardLayout *)layout layoutForCard];
    v17 = layoutForCard != [(CPSInstrumentClusterCardViewController *)selfCopy layoutOverride];
  }

  if (v25)
  {
    MEMORY[0x277D82BD8](layout);
  }

  if (v17)
  {
    location = CarPlaySupportGeneralLogging();
    v23 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(location, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_64(v31, selfCopy);
      _os_log_impl(&dword_242FE8000, location, v23, "%@: layout override changed on viewDidLayoutSubviews. Reevaluating Layout.", v31, 0xCu);
    }

    objc_storeStrong(&location, 0);
    v15 = [[CPSInstrumentClusterCardLayout alloc] initWithLayout:[(CPSInstrumentClusterCardViewController *)selfCopy layoutOverride]];
    [(CPSInstrumentClusterCardViewController *)selfCopy setLayout:?];
    MEMORY[0x277D82BD8](v15);
  }

  else
  {
    p_lastKnownSafeArea = &selfCopy->_lastKnownSafeArea;
    view = [(CPSInstrumentClusterCardViewController *)selfCopy view];
    safeAreaLayoutGuide = [view safeAreaLayoutGuide];
    [safeAreaLayoutGuide layoutFrame];
    v22.origin.x = v2;
    v22.origin.y = v3;
    v22.size.width = v4;
    v22.size.height = v5;
    v33 = *p_lastKnownSafeArea;
    v19 = 0;
    LOBYTE(v14) = 1;
    if (CGRectEqualToRect(v33, v22))
    {
      p_lastKnownViewArea = &selfCopy->_lastKnownViewArea;
      view2 = [(CPSInstrumentClusterCardViewController *)selfCopy view];
      v19 = 1;
      [view2 frame];
      rect2.origin.x = v6;
      rect2.origin.y = v7;
      rect2.size.width = v8;
      rect2.size.height = v9;
      v14 = !CGRectEqualToRect(*p_lastKnownViewArea, rect2);
    }

    if (v19)
    {
      MEMORY[0x277D82BD8](view2);
    }

    MEMORY[0x277D82BD8](safeAreaLayoutGuide);
    MEMORY[0x277D82BD8](view);
    if (v14)
    {
      oslog = CarPlaySupportGeneralLogging();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_64(v30, selfCopy);
        _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_INFO, "%@: view area or safe area changed on viewDidLayoutSubviews. Reevaluating Layout.", v30, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      [(CPSInstrumentClusterCardViewController *)selfCopy _evaluateLayout];
    }
  }
}

- (void)setLayout:(id)layout
{
  v39 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, layout);
  v22 = selfCopy;
  view = [(CPSInstrumentClusterCardViewController *)selfCopy view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  v34.x = v3;
  v34.y = v4;
  v35.width = v5;
  v35.height = v6;
  v22->_lastKnownSafeArea.origin = v34;
  v22->_lastKnownSafeArea.size = v35;
  MEMORY[0x277D82BD8](safeAreaLayoutGuide);
  *&v7 = MEMORY[0x277D82BD8](view).n128_u64[0];
  v25 = selfCopy;
  view2 = [(CPSInstrumentClusterCardViewController *)selfCopy view];
  [view2 frame];
  v32.x = v8;
  v32.y = v9;
  v33.width = v10;
  v33.height = v11;
  v25->_lastKnownViewArea.origin = v32;
  v25->_lastKnownViewArea.size = v33;
  MEMORY[0x277D82BD8](view2);
  objc_storeStrong(&selfCopy->_layout, location[0]);
  v31 = CarPlaySupportGeneralLogging();
  v30 = 1;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    log = v31;
    type = v30;
    v16 = selfCopy;
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(location[0], "layoutForCard")}];
    v29[0] = selfCopy->_lastKnownViewArea.origin;
    v29[1] = selfCopy->_lastKnownViewArea.size;
    v20 = [MEMORY[0x277CCAE60] valueWithBytes:v29 objCType:?];
    v28[0] = selfCopy->_lastKnownSafeArea.origin;
    v28[1] = selfCopy->_lastKnownSafeArea.size;
    v19 = [MEMORY[0x277CCAE60] valueWithBytes:v28 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    __os_log_helper_16_2_4_8_64_8_64_8_64_8_64(v38, v16, v21, v20, v19);
    _os_log_impl(&dword_242FE8000, log, type, "%@: Setting Layout: %@ with viewArea: %@ safeArea: %@", v38, 0x2Au);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
  }

  objc_storeStrong(&v31, 0);
  [(CPSInstrumentClusterCardViewController *)selfCopy _setupConstraintsForPlatterView];
  [(CPSInstrumentClusterCardViewController *)selfCopy _setupConstraintsForETACard];
  currentManeuversCardView = [(CPSInstrumentClusterCardViewController *)selfCopy currentManeuversCardView];
  *&v12 = MEMORY[0x277D82BD8](currentManeuversCardView).n128_u64[0];
  if (currentManeuversCardView)
  {
    currentManeuversCardView2 = [(CPSInstrumentClusterCardViewController *)selfCopy currentManeuversCardView];
    maneuvers = [(CPSManeuversCardView *)currentManeuversCardView2 maneuvers];
    v27 = [(NSArray *)maneuvers copy];
    MEMORY[0x277D82BD8](maneuvers);
    MEMORY[0x277D82BD8](currentManeuversCardView2);
    objc_storeStrong(&selfCopy->_currentManeuversCardView, 0);
    [(CPSInstrumentClusterCardViewController *)selfCopy showManeuvers:v27 usingDisplayStyles:MEMORY[0x277CBEBF8]];
    objc_storeStrong(&v27, 0);
  }

  [(CPSInstrumentClusterCardViewController *)selfCopy _setupConstraintsForPauseCard];
  [(CPSInstrumentClusterCardViewController *)selfCopy _updateClientSafeArea];
  objc_storeStrong(location, 0);
}

- (void)setCARScreenInfo:(id)info isRightHandDrive:(BOOL)drive supportsVehicleData:(BOOL)data
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  objc_storeStrong(&selfCopy->_carScreenInfo, location[0]);
  selfCopy->_isRightHandDrive = drive;
  selfCopy->_supportsVehicleData = data;
  [(CPSInstrumentClusterCardViewController *)selfCopy _evaluateLayout];
  objc_storeStrong(location, 0);
}

- (void)setSafeAreaDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_safeAreaDelegate);
  v3 = location[0];
  MEMORY[0x277D82BD8](WeakRetained);
  if (WeakRetained != v3)
  {
    objc_storeWeak(&selfCopy->_safeAreaDelegate, location[0]);
    [(CPSInstrumentClusterCardViewController *)selfCopy _updateClientSafeArea];
  }

  objc_storeStrong(location, 0);
}

- (void)_evaluateLayout
{
  v81 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = CarPlaySupportGeneralLogging();
  v76 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_1_8_64(v80, selfCopy);
    _os_log_impl(&dword_242FE8000, location[0], v76, "%@: Evaluating Layout", v80, 0xCu);
  }

  objc_storeStrong(location, 0);
  if ([(CPSInstrumentClusterCardViewController *)selfCopy supportsVehicleData])
  {
    v75 = CarPlaySupportGeneralLogging();
    v74 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_64(v79, selfCopy);
      _os_log_impl(&dword_242FE8000, v75, v74, "%@: Supports vehicle data", v79, 0xCu);
    }

    objc_storeStrong(&v75, 0);
    view = [(CPSInstrumentClusterCardViewController *)selfCopy view];
    [view frame];
    v70 = v2;
    v71 = v3;
    v72 = v4;
    v73 = v5;
    MEMORY[0x277D82BD8](view);
    view2 = [(CPSInstrumentClusterCardViewController *)selfCopy view];
    safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
    [safeAreaLayoutGuide layoutFrame];
    v66 = v6;
    v67 = v7;
    v68 = v8;
    v69 = v9;
    MEMORY[0x277D82BD8](safeAreaLayoutGuide);
    *&v10 = MEMORY[0x277D82BD8](view2).n128_u64[0];
    view3 = [(CPSInstrumentClusterCardViewController *)selfCopy view];
    window = [view3 window];
    screen = [window screen];
    displayConfiguration = [screen displayConfiguration];
    [displayConfiguration pointScale];
    v41 = v11;
    MEMORY[0x277D82BD8](displayConfiguration);
    MEMORY[0x277D82BD8](screen);
    MEMORY[0x277D82BD8](window);
    MEMORY[0x277D82BD8](view3);
    v65 = v41;
    carScreenInfo = [(CPSInstrumentClusterCardViewController *)selfCopy carScreenInfo];
    [(CARScreenInfo *)carScreenInfo physicalSize];
    v62 = v12;
    v63 = v13;
    v43 = v12;
    carScreenInfo2 = [(CPSInstrumentClusterCardViewController *)selfCopy carScreenInfo];
    [(CARScreenInfo *)carScreenInfo2 pixelSize];
    v60 = v14;
    v61 = v15;
    v45 = v43 / v14;
    MEMORY[0x277D82BD8](carScreenInfo2);
    MEMORY[0x277D82BD8](carScreenInfo);
    v64 = v45;
    CGSizeMake_13();
    v58 = v16;
    v59 = v17;
    CGSizeMake_13();
    v56 = v18;
    v57 = v19;
    v55 = (v66 - v70) * v41;
    v54 = (v67 - v71) * v41;
    CGPointMake();
    v52 = v20;
    v53 = v21;
    CGRectMake_4();
    *&v50 = v22;
    *(&v50 + 1) = v23;
    *&v51 = v24;
    *(&v51 + 1) = v25;
    CGRectMake_4();
    *&v48 = v26;
    *(&v48 + 1) = v27;
    *&v49 = v28;
    *(&v49 + 1) = v29;
    v30 = [CPSInstrumentClusterCardLayout alloc];
    v47 = [(CPSInstrumentClusterCardLayout *)v30 initWithSafeAreaFrame:selfCopy->_isRightHandDrive viewAreaFrame:v50 displayFrame:v51 physicalPixelWidth:v48 isRightHandDrive:v49, v48, v49, *&v45];
    [(CPSInstrumentClusterCardViewController *)selfCopy setLayout:v47];
    objc_storeStrong(&v47, 0);
  }

  else
  {
    v32 = [CPSInstrumentClusterCardLayout alloc];
    carScreenInfo3 = [(CPSInstrumentClusterCardViewController *)selfCopy carScreenInfo];
    v46 = [(CPSInstrumentClusterCardLayout *)v32 initWithCarScreenInfo:carScreenInfo3 isRightHandDrive:[(CPSInstrumentClusterCardViewController *)selfCopy isRightHandDrive]];
    *&v31 = MEMORY[0x277D82BD8](carScreenInfo3).n128_u64[0];
    [(CPSInstrumentClusterCardViewController *)selfCopy setLayout:v46, v31];
    objc_storeStrong(&v46, 0);
  }
}

- (void)_updateClientSafeArea
{
  if (self->_shouldUpdateContent)
  {
    currentPausedCardView = [(CPSInstrumentClusterCardViewController *)self currentPausedCardView];
    v18 = 0;
    v16 = 0;
    v14 = 0;
    LOBYTE(v13) = 1;
    if (!currentPausedCardView)
    {
      currentManeuversCardView = [(CPSInstrumentClusterCardViewController *)self currentManeuversCardView];
      v18 = 1;
      LOBYTE(v13) = 1;
      if (!currentManeuversCardView)
      {
        estimatesViewController = [(CPSInstrumentClusterCardViewController *)self estimatesViewController];
        v16 = 1;
        contentView = [(CPSDashboardEstimatesViewController *)estimatesViewController contentView];
        v14 = 1;
        v13 = ![(UIView *)contentView isHidden];
      }
    }

    if (v14)
    {
      MEMORY[0x277D82BD8](contentView);
    }

    if (v16)
    {
      MEMORY[0x277D82BD8](estimatesViewController);
    }

    if (v18)
    {
      MEMORY[0x277D82BD8](currentManeuversCardView);
    }

    *&v2 = MEMORY[0x277D82BD8](currentPausedCardView).n128_u64[0];
    if (v13)
    {
      [(CPSInstrumentClusterCardViewController *)self _layoutGuideForClient];
      [(CPSInstrumentClusterCardViewController *)self _updateClientSafeAreaWithInsets:v3, v4, v5, v6];
    }

    else
    {
      view = [(CPSInstrumentClusterCardViewController *)self view];
      [view safeAreaInsets];
      [(CPSInstrumentClusterCardViewController *)self _updateClientSafeAreaWithInsets:v7, v8, v9, v10];
      MEMORY[0x277D82BD8](view);
    }
  }
}

- (UIEdgeInsets)_layoutGuideForClient
{
  platterViewController = [(CPSInstrumentClusterCardViewController *)self platterViewController];
  view = [(UIViewController *)platterViewController view];
  [(UIView *)view layoutIfNeeded];
  MEMORY[0x277D82BD8](view);
  MEMORY[0x277D82BD8](platterViewController);
  view2 = [(CPSInstrumentClusterCardViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  MEMORY[0x277D82BD8](safeAreaLayoutGuide);
  MEMORY[0x277D82BD8](view2);
  view3 = [(CPSInstrumentClusterCardViewController *)self view];
  [view3 safeAreaInsets];
  MEMORY[0x277D82BD8](view3);
  if (self->_showETA && [(CPSInstrumentClusterCardLayout *)self->_layout layoutForCard]!= 1)
  {
    [(CPSInstrumentClusterCardViewController *)self isMapContentOnly];
  }

  if ([(CPSInstrumentClusterCardLayout *)self->_layout layoutForCard]== 1)
  {
    [(CPSInstrumentClusterCardViewController *)self isMapContentOnly];
  }

  else if ([(CPSInstrumentClusterCardLayout *)self->_layout layoutForCard]== 2)
  {
    platterViewController2 = [(CPSInstrumentClusterCardViewController *)self platterViewController];
    view4 = [(UIViewController *)platterViewController2 view];
    [(UIView *)view4 bounds];
    MEMORY[0x277D82BD8](view4);
    MEMORY[0x277D82BD8](platterViewController2);
  }

  else if ([(CPSInstrumentClusterCardLayout *)self->_layout layoutForCard]== 3)
  {
    view5 = [(UIViewController *)self->_platterViewController view];
    [(UIView *)view5 bounds];
    MEMORY[0x277D82BD8](view5);
  }

  UIEdgeInsetsMake_4();
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_updateClientSafeAreaWithInsets:(UIEdgeInsets)insets
{
  if (self->_shouldUpdateContent)
  {
    [(CPSInstrumentClusterCardViewController *)self currentClientInsets];
    if (!UIEdgeInsetsEqualToEdgeInsets_0(insets.top, insets.left, insets.bottom, insets.right, v3, v4, v5, v6))
    {
      [(CPSInstrumentClusterCardViewController *)self setCurrentClientInsets:insets.top, insets.left, insets.bottom, insets.right];
      WeakRetained = objc_loadWeakRetained(&self->_safeAreaDelegate);
      [(CPSInstrumentClusterCardViewController *)self currentClientInsets];
      [WeakRetained viewController:self didUpdateSafeAreaInsets:{v7, v8, v9, v10}];
      MEMORY[0x277D82BD8](WeakRetained);
    }
  }
}

- (void)_setupConstraintsForPlatterView
{
  v134 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = CarPlaySupportGeneralLogging();
  type = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_INFO))
  {
    v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CPSInstrumentClusterCardLayout layoutForCard](selfCopy->_layout, "layoutForCard")}];
    __os_log_helper_16_2_2_8_64_8_64(v133, selfCopy, v81);
    _os_log_impl(&dword_242FE8000, oslog[0], type, "%@ Setting constraints for platter view with layout: %@", v133, 0x16u);
    MEMORY[0x277D82BD8](v81);
  }

  objc_storeStrong(oslog, 0);
  v103 = objc_alloc_init(MEMORY[0x277D75D18]);
  view = [(CPSInstrumentClusterCardViewController *)selfCopy view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  v100[1] = v2;
  v100[2] = v3;
  v101 = v4;
  v102 = v5;
  MEMORY[0x277D82BD8](safeAreaLayoutGuide);
  *&v6 = MEMORY[0x277D82BD8](view).n128_u64[0];
  [(UIViewController *)selfCopy->_platterViewController setView:v103, v6];
  [(UIViewController *)selfCopy->_platterViewController willMoveToParentViewController:selfCopy];
  [(CPSInstrumentClusterCardViewController *)selfCopy addChildViewController:selfCopy->_platterViewController];
  view2 = [(CPSInstrumentClusterCardViewController *)selfCopy view];
  view3 = [(UIViewController *)selfCopy->_platterViewController view];
  [view2 addSubview:?];
  MEMORY[0x277D82BD8](view3);
  *&v7 = MEMORY[0x277D82BD8](view2).n128_u64[0];
  [(UIViewController *)selfCopy->_platterViewController didMoveToParentViewController:selfCopy, v7];
  view4 = [(UIViewController *)selfCopy->_platterViewController view];
  [(UIView *)view4 setClipsToBounds:0];
  *&v8 = MEMORY[0x277D82BD8](view4).n128_u64[0];
  v100[0] = [(UIViewController *)selfCopy->_platterViewController view];
  [v100[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  if (v101 >= 165.0)
  {
    *&v75 = 165.0;
  }

  else
  {
    *&v75 = v101;
  }

  v99 = *&v75;
  if (v101 >= 213.0)
  {
    *&v74 = 213.0;
  }

  else
  {
    *&v74 = v101;
  }

  v98 = *&v74;
  view5 = [(CPSInstrumentClusterCardViewController *)selfCopy view];
  safeAreaLayoutGuide2 = [view5 safeAreaLayoutGuide];
  [safeAreaLayoutGuide2 layoutFrame];
  v94 = v9;
  v95 = v10;
  v96 = v11;
  v97 = v12;
  MEMORY[0x277D82BD8](safeAreaLayoutGuide2);
  MEMORY[0x277D82BD8](view5);
  view6 = [(CPSInstrumentClusterCardViewController *)selfCopy view];
  [view6 frame];
  v90 = v13;
  v91 = v14;
  v92 = v15;
  v93 = v16;
  MEMORY[0x277D82BD8](view6);
  v89 = v101 * 0.4;
  if ([(CPSInstrumentClusterCardLayout *)selfCopy->_layout layoutForCard]== 1 && selfCopy->_layout)
  {
    if (v101 >= 300.0)
    {
      *&v70 = 300.0;
    }

    else
    {
      *&v70 = v101;
    }

    v98 = *&v70;
    v89 = v101;
    v127 = v94;
    v126 = v94;
    v125 = v90;
    if (vabdd_f64(v94, v90) <= COERCE_DOUBLE(0x20000000))
    {
      v124 = v96;
      v123 = v96;
      v122 = v92;
      if (vabdd_f64(v96, v92) <= COERCE_DOUBLE(0x20000000))
      {
        v17 = _UISolariumEnabled();
        v18 = 8.0;
        if (v17)
        {
          v18 = 4.0;
        }

        v89 = v89 + -2.0 * v18;
      }
    }

    v58 = MEMORY[0x277CCAAD0];
    centerXAnchor = [v100[0] centerXAnchor];
    view7 = [(CPSInstrumentClusterCardViewController *)selfCopy view];
    safeAreaLayoutGuide3 = [view7 safeAreaLayoutGuide];
    centerXAnchor2 = [safeAreaLayoutGuide3 centerXAnchor];
    v65 = [centerXAnchor constraintEqualToAnchor:?];
    v132[0] = v65;
    centerYAnchor = [v100[0] centerYAnchor];
    view8 = [(CPSInstrumentClusterCardViewController *)selfCopy view];
    safeAreaLayoutGuide4 = [view8 safeAreaLayoutGuide];
    centerYAnchor2 = [safeAreaLayoutGuide4 centerYAnchor];
    v60 = [centerYAnchor constraintEqualToAnchor:?];
    v132[1] = v60;
    v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v132 count:2];
    [v58 activateConstraints:?];
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v60);
    MEMORY[0x277D82BD8](centerYAnchor2);
    MEMORY[0x277D82BD8](safeAreaLayoutGuide4);
    MEMORY[0x277D82BD8](view8);
    MEMORY[0x277D82BD8](centerYAnchor);
    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](centerXAnchor2);
    MEMORY[0x277D82BD8](safeAreaLayoutGuide3);
    MEMORY[0x277D82BD8](view7);
    MEMORY[0x277D82BD8](centerXAnchor);
  }

  else if ([(CPSInstrumentClusterCardLayout *)selfCopy->_layout layoutForCard]== 2)
  {
    v88 = 0.0;
    v121 = v94;
    v120 = v94;
    v119 = v90;
    if (vabdd_f64(v94, v90) <= COERCE_DOUBLE(0x20000000))
    {
      v19 = _UISolariumEnabled();
      v20 = 4.0;
      if ((v19 & 1) == 0)
      {
        v20 = 8.0;
      }

      v88 = v20;
    }

    v51 = MEMORY[0x277CCAAD0];
    leftAnchor = [v100[0] leftAnchor];
    view9 = [(CPSInstrumentClusterCardViewController *)selfCopy view];
    safeAreaLayoutGuide5 = [view9 safeAreaLayoutGuide];
    leftAnchor2 = [safeAreaLayoutGuide5 leftAnchor];
    v53 = [leftAnchor constraintEqualToAnchor:v88 constant:?];
    v131 = v53;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v131 count:1];
    [v51 activateConstraints:?];
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](leftAnchor2);
    MEMORY[0x277D82BD8](safeAreaLayoutGuide5);
    MEMORY[0x277D82BD8](view9);
    MEMORY[0x277D82BD8](leftAnchor);
  }

  else if ([(CPSInstrumentClusterCardLayout *)selfCopy->_layout layoutForCard]== 3)
  {
    v87 = 0.0;
    v118 = v94;
    v117 = v94;
    v116 = v90;
    if (vabdd_f64(v94, v90) <= COERCE_DOUBLE(0x20000000))
    {
      v115 = v96;
      v114 = v96;
      v113 = v92;
      if (vabdd_f64(v96, v92) <= COERCE_DOUBLE(0x20000000))
      {
        v21 = _UISolariumEnabled();
        v22 = 4.0;
        if ((v21 & 1) == 0)
        {
          v22 = 8.0;
        }

        v87 = -v22;
      }
    }

    v44 = MEMORY[0x277CCAAD0];
    rightAnchor = [v100[0] rightAnchor];
    view10 = [(CPSInstrumentClusterCardViewController *)selfCopy view];
    safeAreaLayoutGuide6 = [view10 safeAreaLayoutGuide];
    rightAnchor2 = [safeAreaLayoutGuide6 rightAnchor];
    v46 = [rightAnchor constraintEqualToAnchor:v87 constant:?];
    v130 = v46;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v130 count:1];
    [v44 activateConstraints:?];
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](rightAnchor2);
    MEMORY[0x277D82BD8](safeAreaLayoutGuide6);
    MEMORY[0x277D82BD8](view10);
    MEMORY[0x277D82BD8](rightAnchor);
  }

  else if (![(CPSInstrumentClusterCardLayout *)selfCopy->_layout layoutForCard])
  {
    v86 = CarPlaySupportGeneralLogging();
    v85 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      v42 = selfCopy;
      v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CPSInstrumentClusterCardLayout layoutForCard](selfCopy->_layout, "layoutForCard")}];
      __os_log_helper_16_2_2_8_64_8_64(v129, v42, v43);
      _os_log_error_impl(&dword_242FE8000, v86, v85, "%@ Setting constraints for ETA Card with layout: %@", v129, 0x16u);
      MEMORY[0x277D82BD8](v43);
    }

    objc_storeStrong(&v86, 0);
    [v100[0] setHidden:1];
  }

  if (v89 >= v99)
  {
    if (v89 <= v98)
    {
      v40 = v89;
    }

    else
    {
      v40 = v98;
    }

    v41 = v40;
  }

  else
  {
    v41 = v99;
  }

  v84[1] = *&v41;
  widthAnchor = [v100[0] widthAnchor];
  v84[0] = [widthAnchor constraintEqualToConstant:v41];
  MEMORY[0x277D82BD8](widthAnchor);
  v83 = 0.0;
  v112 = v95;
  v111 = v95;
  v110 = v91;
  if (vabdd_f64(v95, v91) <= COERCE_DOUBLE(0x20000000))
  {
    v23 = _UISolariumEnabled();
    v24 = 4.0;
    if ((v23 & 1) == 0)
    {
      v24 = 8.0;
    }

    v83 = v24;
  }

  v82 = 0.0;
  v109 = v97;
  v108 = v97;
  v107 = v93;
  if (vabdd_f64(v97, v93) <= COERCE_DOUBLE(0x20000000))
  {
    v25 = _UISolariumEnabled();
    v26 = 4.0;
    if ((v25 & 1) == 0)
    {
      v26 = 8.0;
    }

    v82 = -v26;
  }

  v27 = MEMORY[0x277CCAAD0];
  v128[0] = v84[0];
  bottomAnchor = [v100[0] bottomAnchor];
  view11 = [(CPSInstrumentClusterCardViewController *)selfCopy view];
  safeAreaLayoutGuide7 = [view11 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide7 bottomAnchor];
  v34 = [bottomAnchor constraintEqualToAnchor:v82 constant:?];
  v128[1] = v34;
  topAnchor = [v100[0] topAnchor];
  view12 = [(CPSInstrumentClusterCardViewController *)selfCopy view];
  safeAreaLayoutGuide8 = [view12 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide8 topAnchor];
  v29 = [topAnchor constraintEqualToAnchor:v83 constant:?];
  v128[2] = v29;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v128 count:3];
  [v27 activateConstraints:?];
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide8);
  MEMORY[0x277D82BD8](view12);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide7);
  MEMORY[0x277D82BD8](view11);
  MEMORY[0x277D82BD8](bottomAnchor);
  objc_storeStrong(v84, 0);
  objc_storeStrong(v100, 0);
  objc_storeStrong(&v103, 0);
}

- (void)_setupConstraintsForETACard
{
  v29 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = CarPlaySupportGeneralLogging();
  v24 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_INFO))
  {
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CPSInstrumentClusterCardLayout layoutForCard](selfCopy->_layout, "layoutForCard")}];
    __os_log_helper_16_2_2_8_64_8_64(v28, selfCopy, v22);
    _os_log_impl(&dword_242FE8000, location[0], v24, "%@ Setting constraints for ETA Card with layout: %@", v28, 0x16u);
    MEMORY[0x277D82BD8](v22);
  }

  objc_storeStrong(location, 0);
  [(CPSClusterEstimatesViewController *)selfCopy->_estimatesViewController willMoveToParentViewController:selfCopy->_platterViewController];
  [(UIViewController *)selfCopy->_platterViewController addChildViewController:selfCopy->_estimatesViewController];
  view = [(UIViewController *)selfCopy->_platterViewController view];
  view2 = [(CPSClusterEstimatesViewController *)selfCopy->_estimatesViewController view];
  [(UIView *)view addSubview:?];
  MEMORY[0x277D82BD8](view2);
  *&v2 = MEMORY[0x277D82BD8](view).n128_u64[0];
  [(CPSClusterEstimatesViewController *)selfCopy->_estimatesViewController didMoveToParentViewController:selfCopy->_platterViewController, v2];
  view3 = [(CPSClusterEstimatesViewController *)selfCopy->_estimatesViewController view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = MEMORY[0x277CCAAD0];
  leftAnchor = [view3 leftAnchor];
  platterViewController = [(CPSInstrumentClusterCardViewController *)selfCopy platterViewController];
  view4 = [(UIViewController *)platterViewController view];
  leftAnchor2 = [(UIView *)view4 leftAnchor];
  v17 = [leftAnchor constraintEqualToAnchor:?];
  v27[0] = v17;
  rightAnchor = [view3 rightAnchor];
  platterViewController2 = [(CPSInstrumentClusterCardViewController *)selfCopy platterViewController];
  view5 = [(UIViewController *)platterViewController2 view];
  rightAnchor2 = [(UIView *)view5 rightAnchor];
  v12 = [rightAnchor constraintEqualToAnchor:?];
  v27[1] = v12;
  bottomAnchor = [view3 bottomAnchor];
  platterViewController3 = [(CPSInstrumentClusterCardViewController *)selfCopy platterViewController];
  view6 = [(UIViewController *)platterViewController3 view];
  bottomAnchor2 = [(UIView *)view6 bottomAnchor];
  v7 = [bottomAnchor constraintEqualToAnchor:?];
  v27[2] = v7;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
  [v5 activateConstraints:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](view6);
  MEMORY[0x277D82BD8](platterViewController3);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](rightAnchor2);
  MEMORY[0x277D82BD8](view5);
  MEMORY[0x277D82BD8](platterViewController2);
  MEMORY[0x277D82BD8](rightAnchor);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](leftAnchor2);
  MEMORY[0x277D82BD8](view4);
  MEMORY[0x277D82BD8](platterViewController);
  MEMORY[0x277D82BD8](leftAnchor);
  objc_storeStrong(&view3, 0);
}

- (void)_setupConstraintsForTurnCard
{
  v39[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  if (self->_currentManeuversCardView && selfCopy->_shouldUpdateContent && !selfCopy->_isMapContentOnly)
  {
    location[0] = MEMORY[0x277D82BE0](selfCopy->_currentManeuversCardView);
    view = [(UIViewController *)selfCopy->_platterViewController view];
    [(UIView *)view addSubview:selfCopy->_currentManeuversCardView];
    *&v2 = MEMORY[0x277D82BD8](view).n128_u64[0];
    v18 = MEMORY[0x277CCAAD0];
    leftAnchor = [location[0] leftAnchor];
    platterViewController = [(CPSInstrumentClusterCardViewController *)selfCopy platterViewController];
    view2 = [(UIViewController *)platterViewController view];
    leftAnchor2 = [(UIView *)view2 leftAnchor];
    v30 = [leftAnchor constraintEqualToAnchor:?];
    v39[0] = v30;
    topAnchor = [location[0] topAnchor];
    platterViewController2 = [(CPSInstrumentClusterCardViewController *)selfCopy platterViewController];
    view3 = [(UIViewController *)platterViewController2 view];
    topAnchor2 = [(UIView *)view3 topAnchor];
    v25 = [topAnchor constraintEqualToAnchor:?];
    v39[1] = v25;
    widthAnchor = [location[0] widthAnchor];
    platterViewController3 = [(CPSInstrumentClusterCardViewController *)selfCopy platterViewController];
    view4 = [(UIViewController *)platterViewController3 view];
    widthAnchor2 = [(UIView *)view4 widthAnchor];
    v20 = [widthAnchor constraintEqualToAnchor:?];
    v39[2] = v20;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:3];
    [v18 activateConstraints:?];
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](widthAnchor2);
    MEMORY[0x277D82BD8](view4);
    MEMORY[0x277D82BD8](platterViewController3);
    MEMORY[0x277D82BD8](widthAnchor);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](view3);
    MEMORY[0x277D82BD8](platterViewController2);
    MEMORY[0x277D82BD8](topAnchor);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](leftAnchor2);
    MEMORY[0x277D82BD8](view2);
    MEMORY[0x277D82BD8](platterViewController);
    if ([(CPSInstrumentClusterCardLayout *)selfCopy->_layout layoutForCard]== 1)
    {
      v10 = MEMORY[0x277CCAAD0];
      heightAnchor = [location[0] heightAnchor];
      view5 = [(CPSInstrumentClusterCardViewController *)selfCopy view];
      safeAreaLayoutGuide = [view5 safeAreaLayoutGuide];
      heightAnchor2 = [safeAreaLayoutGuide heightAnchor];
      v12 = [heightAnchor constraintEqualToAnchor:0.41 multiplier:?];
      v38 = v12;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
      [v10 activateConstraints:?];
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](heightAnchor2);
      MEMORY[0x277D82BD8](safeAreaLayoutGuide);
      MEMORY[0x277D82BD8](view5);
      MEMORY[0x277D82BD8](heightAnchor);
    }

    else
    {
      v3 = MEMORY[0x277CCAAD0];
      heightAnchor3 = [location[0] heightAnchor];
      view6 = [(CPSInstrumentClusterCardViewController *)selfCopy view];
      safeAreaLayoutGuide2 = [view6 safeAreaLayoutGuide];
      heightAnchor4 = [safeAreaLayoutGuide2 heightAnchor];
      v5 = [heightAnchor3 constraintEqualToAnchor:-42.0 constant:?];
      v37 = v5;
      v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
      [v3 activateConstraints:?];
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](heightAnchor4);
      MEMORY[0x277D82BD8](safeAreaLayoutGuide2);
      MEMORY[0x277D82BD8](view6);
      MEMORY[0x277D82BD8](heightAnchor3);
    }

    objc_storeStrong(location, 0);
  }
}

- (void)_setupConstraintsForPauseCard
{
  v28[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v26[1] = a2;
  if (self->_currentPausedCardView && selfCopy->_shouldUpdateContent && !selfCopy->_isMapContentOnly)
  {
    v26[0] = MEMORY[0x277D82BE0](selfCopy->_currentPausedCardView);
    view = [(UIViewController *)selfCopy->_platterViewController view];
    [(UIView *)view addSubview:selfCopy->_currentPausedCardView];
    *&v2 = MEMORY[0x277D82BD8](view).n128_u64[0];
    v4 = MEMORY[0x277CCAAD0];
    leftAnchor = [v26[0] leftAnchor];
    platterViewController = [(CPSInstrumentClusterCardViewController *)selfCopy platterViewController];
    view2 = [(UIViewController *)platterViewController view];
    leftAnchor2 = [(UIView *)view2 leftAnchor];
    v21 = [leftAnchor constraintEqualToAnchor:?];
    v28[0] = v21;
    topAnchor = [v26[0] topAnchor];
    platterViewController2 = [(CPSInstrumentClusterCardViewController *)selfCopy platterViewController];
    view3 = [(UIViewController *)platterViewController2 view];
    topAnchor2 = [(UIView *)view3 topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:?];
    v28[1] = v16;
    widthAnchor = [v26[0] widthAnchor];
    platterViewController3 = [(CPSInstrumentClusterCardViewController *)selfCopy platterViewController];
    view4 = [(UIViewController *)platterViewController3 view];
    widthAnchor2 = [(UIView *)view4 widthAnchor];
    v11 = [widthAnchor constraintEqualToAnchor:?];
    v28[2] = v11;
    heightAnchor = [v26[0] heightAnchor];
    view5 = [(CPSInstrumentClusterCardViewController *)selfCopy view];
    safeAreaLayoutGuide = [view5 safeAreaLayoutGuide];
    heightAnchor2 = [safeAreaLayoutGuide heightAnchor];
    v6 = [heightAnchor constraintEqualToAnchor:0.41 multiplier:?];
    v28[3] = v6;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
    [v4 activateConstraints:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](heightAnchor2);
    MEMORY[0x277D82BD8](safeAreaLayoutGuide);
    MEMORY[0x277D82BD8](view5);
    MEMORY[0x277D82BD8](heightAnchor);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](widthAnchor2);
    MEMORY[0x277D82BD8](view4);
    MEMORY[0x277D82BD8](platterViewController3);
    MEMORY[0x277D82BD8](widthAnchor);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](view3);
    MEMORY[0x277D82BD8](platterViewController2);
    MEMORY[0x277D82BD8](topAnchor);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](leftAnchor2);
    MEMORY[0x277D82BD8](view2);
    MEMORY[0x277D82BD8](platterViewController);
    MEMORY[0x277D82BD8](leftAnchor);
    objc_storeStrong(v26, 0);
  }
}

- (void)showManeuvers:(id)maneuvers usingDisplayStyles:(id)styles
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, maneuvers);
  v33 = 0;
  objc_storeStrong(&v33, styles);
  if (([(CPSInstrumentClusterCardViewController *)selfCopy isViewLoaded]& 1) != 0 && !selfCopy->_isMapContentOnly)
  {
    currentManeuversCardView = [(CPSInstrumentClusterCardViewController *)selfCopy currentManeuversCardView];
    v29 = 0;
    v27 = 0;
    v23 = 0;
    if (currentManeuversCardView)
    {
      currentManeuversCardView2 = [(CPSInstrumentClusterCardViewController *)selfCopy currentManeuversCardView];
      v29 = 1;
      maneuvers = [(CPSManeuversCardView *)currentManeuversCardView2 maneuvers];
      v27 = 1;
      v23 = BSEqualObjects();
    }

    if (v27)
    {
      MEMORY[0x277D82BD8](maneuvers);
    }

    if (v29)
    {
      MEMORY[0x277D82BD8](currentManeuversCardView2);
    }

    MEMORY[0x277D82BD8](currentManeuversCardView);
    v31 = v23 & 1;
    if (v23)
    {
      v32 = 1;
    }

    else
    {
      v26 = 0;
      v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
      currentManeuversCardView3 = [(CPSInstrumentClusterCardViewController *)selfCopy currentManeuversCardView];
      v4 = MEMORY[0x277D82BD8](currentManeuversCardView3).n128_u64[0];
      if (currentManeuversCardView3)
      {
        currentManeuversCardView4 = [(CPSInstrumentClusterCardViewController *)selfCopy currentManeuversCardView];
        [v25 addObject:?];
        v4 = MEMORY[0x277D82BD8](currentManeuversCardView4).n128_u64[0];
      }

      currentPausedCardView = [(CPSInstrumentClusterCardViewController *)selfCopy currentPausedCardView];
      v5 = MEMORY[0x277D82BD8](currentPausedCardView).n128_u64[0];
      if (currentPausedCardView)
      {
        currentPausedCardView2 = [(CPSInstrumentClusterCardViewController *)selfCopy currentPausedCardView];
        [v25 addObject:?];
        v5 = MEMORY[0x277D82BD8](currentPausedCardView2).n128_u64[0];
      }

      [(CPSInstrumentClusterCardViewController *)selfCopy setCurrentManeuversCardView:*&v5];
      [(CPSInstrumentClusterCardViewController *)selfCopy setCurrentPausedCardView:0];
      if ([location[0] count])
      {
        v6 = [CPSClusterManeuversCardView alloc];
        v7 = [(CPSClusterManeuversCardView *)v6 initWithManeuvers:location[0]];
        v8 = v26;
        v26 = v7;
        [(CPSManeuversCardView *)v7 setUsesCustomBackgroundColor:1, MEMORY[0x277D82BD8](v8).n128_f64[0]];
        if ([(CPSManeuversCardView *)v26 usesCustomBackgroundColor])
        {
          firstObject = [location[0] firstObject];
          cardBackgroundColor = [firstObject cardBackgroundColor];
          MEMORY[0x277D82BD8](cardBackgroundColor);
          *&v9 = MEMORY[0x277D82BD8](firstObject).n128_u64[0];
          if (cardBackgroundColor)
          {
            firstObject2 = [location[0] firstObject];
            cardBackgroundColor2 = [firstObject2 cardBackgroundColor];
            [(UIView *)v26 overrideUserInterfaceStyleBasedOnBackgroundColor:?];
            MEMORY[0x277D82BD8](cardBackgroundColor2);
            *&v10 = MEMORY[0x277D82BD8](firstObject2).n128_u64[0];
            firstObject3 = [location[0] firstObject];
            cardBackgroundColor3 = [firstObject3 cardBackgroundColor];
            contentView = [(CPSManeuversCardView *)v26 contentView];
            [(UIView *)contentView setBackgroundColor:cardBackgroundColor3];
            MEMORY[0x277D82BD8](contentView);
            MEMORY[0x277D82BD8](cardBackgroundColor3);
            MEMORY[0x277D82BD8](firstObject3);
          }
        }

        [(CPSInstrumentClusterCardViewController *)selfCopy setCurrentManeuversCardView:v26];
        [(CPSInstrumentClusterCardViewController *)selfCopy _setupConstraintsForTurnCard];
      }

      [(CPSInstrumentClusterCardViewController *)selfCopy _transitionFromViews:v25 inView:v26 horizontalSlideAnimation:0];
      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v26, 0);
      v32 = 0;
    }
  }

  else
  {
    v32 = 1;
  }

  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

- (void)updateEstimates:(id)estimates forManeuver:(id)maneuver
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, estimates);
  v8 = 0;
  objc_storeStrong(&v8, maneuver);
  currentManeuversCardView = [(CPSInstrumentClusterCardViewController *)selfCopy currentManeuversCardView];
  *&v4 = MEMORY[0x277D82BD8](currentManeuversCardView).n128_u64[0];
  if (currentManeuversCardView)
  {
    currentManeuversCardView2 = [(CPSInstrumentClusterCardViewController *)selfCopy currentManeuversCardView];
    [(CPSManeuversCardView *)currentManeuversCardView2 updateEstimates:location[0] forManeuver:v8];
    MEMORY[0x277D82BD8](currentManeuversCardView2);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)navigator:(id)navigator pausedTripForReason:(unint64_t)reason description:(id)description usingColor:(id)color
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, navigator);
  reasonCopy = reason;
  v29 = 0;
  objc_storeStrong(&v29, description);
  v28 = 0;
  objc_storeStrong(&v28, color);
  if (([(CPSInstrumentClusterCardViewController *)selfCopy isViewLoaded]& 1) != 0 && !selfCopy->_isMapContentOnly)
  {
    v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
    currentManeuversCardView = [(CPSInstrumentClusterCardViewController *)selfCopy currentManeuversCardView];
    v6 = MEMORY[0x277D82BD8](currentManeuversCardView).n128_u64[0];
    if (currentManeuversCardView)
    {
      currentManeuversCardView2 = [(CPSInstrumentClusterCardViewController *)selfCopy currentManeuversCardView];
      [v26 addObject:?];
      v6 = MEMORY[0x277D82BD8](currentManeuversCardView2).n128_u64[0];
    }

    currentPausedCardView = [(CPSInstrumentClusterCardViewController *)selfCopy currentPausedCardView];
    v7 = MEMORY[0x277D82BD8](currentPausedCardView).n128_u64[0];
    if (currentPausedCardView)
    {
      currentPausedCardView2 = [(CPSInstrumentClusterCardViewController *)selfCopy currentPausedCardView];
      [v26 addObject:?];
      v7 = MEMORY[0x277D82BD8](currentPausedCardView2).n128_u64[0];
    }

    [(CPSInstrumentClusterCardViewController *)selfCopy setCurrentManeuversCardView:*&v7];
    [(CPSInstrumentClusterCardViewController *)selfCopy setCurrentPausedCardView:0];
    v14 = [CPSClusterPausedCardView alloc];
    v15 = reasonCopy;
    v16 = v29;
    v24 = 0;
    if (v28)
    {
      v13 = v28;
    }

    else
    {
      tableBackgroundColor = [MEMORY[0x277D75348] tableBackgroundColor];
      v24 = 1;
      v13 = tableBackgroundColor;
    }

    v12 = [(CPSPausedCardView *)v14 initWithReason:v15 title:v16 backgroundColor:v13];
    [(CPSInstrumentClusterCardViewController *)selfCopy setCurrentPausedCardView:?];
    v8 = MEMORY[0x277D82BD8](v12).n128_u64[0];
    if (v24)
    {
      v8 = MEMORY[0x277D82BD8](tableBackgroundColor).n128_u64[0];
    }

    [(CPSInstrumentClusterCardViewController *)selfCopy _setupConstraintsForPauseCard];
    v10 = selfCopy;
    v9 = v26;
    currentPausedCardView3 = [(CPSInstrumentClusterCardViewController *)selfCopy currentPausedCardView];
    [CPSInstrumentClusterCardViewController _transitionFromViews:v10 inView:"_transitionFromViews:inView:horizontalSlideAnimation:" horizontalSlideAnimation:v9];
    MEMORY[0x277D82BD8](currentPausedCardView3);
    objc_storeStrong(&v26, 0);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

- (void)updateTripEstimates:(id)estimates
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, estimates);
  [(CPSInstrumentClusterCardViewController *)selfCopy _updateClientSafeArea];
  if (objc_opt_respondsToSelector())
  {
    [(CPSDashboardEstimatesViewController *)selfCopy->_estimatesViewController updateTripEstimates:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)navigator:(id)navigator didEndTrip:(BOOL)trip
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, navigator);
  [(CPSDashboardEstimatesViewController *)selfCopy->_estimatesViewController navigator:location[0] didEndTrip:trip];
  currentManeuversCardView = [(CPSInstrumentClusterCardViewController *)selfCopy currentManeuversCardView];
  [(CPSClusterManeuversCardView *)currentManeuversCardView removeFromSuperview];
  *&v4 = MEMORY[0x277D82BD8](currentManeuversCardView).n128_u64[0];
  currentPausedCardView = [(CPSInstrumentClusterCardViewController *)selfCopy currentPausedCardView];
  [(CPSClusterPausedCardView *)currentPausedCardView removeFromSuperview];
  *&v5 = MEMORY[0x277D82BD8](currentPausedCardView).n128_u64[0];
  [(CPSInstrumentClusterCardViewController *)selfCopy setCurrentManeuversCardView:0, v5];
  [(CPSInstrumentClusterCardViewController *)selfCopy setCurrentPausedCardView:0];
  [(CPSInstrumentClusterCardViewController *)selfCopy _updateClientSafeArea];
  objc_storeStrong(location, 0);
}

- (void)setShowETA:(BOOL)a
{
  v30 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v27 = a2;
  aCopy = a;
  v23 = 0;
  v21 = 0;
  v19 = 0;
  v17 = 0;
  if (a)
  {
    v16 = 1;
    if (!selfCopy->_isMapContentOnly)
    {
      layout = [(CPSInstrumentClusterCardViewController *)selfCopy layout];
      v23 = 1;
      v16 = 1;
      if (![(CPSInstrumentClusterCardLayout *)layout showETAWithTurnCard])
      {
        v15 = 0;
        if ([(CPSInstrumentClusterCardViewController *)selfCopy layoutOverride])
        {
          view = [(CPSInstrumentClusterCardViewController *)selfCopy view];
          v21 = 1;
          safeAreaLayoutGuide = [view safeAreaLayoutGuide];
          v19 = 1;
          [safeAreaLayoutGuide layoutFrame];
          oslog[1] = v3;
          oslog[2] = v4;
          oslog[3] = v5;
          oslog[4] = v6;
          v15 = *&v6 > 202.0;
        }

        v16 = v15;
      }
    }

    v17 = v16;
  }

  if (v19)
  {
    MEMORY[0x277D82BD8](safeAreaLayoutGuide);
  }

  if (v21)
  {
    MEMORY[0x277D82BD8](view);
  }

  if (v23)
  {
    MEMORY[0x277D82BD8](layout);
  }

  v25 = v17;
  oslog[0] = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_INFO))
  {
    v14 = [MEMORY[0x277CCABB0] numberWithBool:aCopy];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:selfCopy->_isMapContentOnly];
    v9 = MEMORY[0x277CCABB0];
    layout2 = [(CPSInstrumentClusterCardViewController *)selfCopy layout];
    v11 = [v9 numberWithBool:{-[CPSInstrumentClusterCardLayout showETAWithTurnCard](layout2, "showETAWithTurnCard")}];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v25 & 1];
    __os_log_helper_16_2_5_8_64_8_64_8_64_8_64_8_64(v29, selfCopy, v14, v13, v11, v10);
    _os_log_impl(&dword_242FE8000, oslog[0], OS_LOG_TYPE_INFO, "%@: showETA %@, mapOnly: %@, layout specified show ETA: %@, shouldShowETA: %@", v29, 0x34u);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](layout2);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
  }

  objc_storeStrong(oslog, 0);
  selfCopy->_showETA = v25 & 1;
  view2 = [(CPSClusterEstimatesViewController *)selfCopy->_estimatesViewController view];
  [view2 setHidden:(v25 ^ 1) & 1];
  *&v7 = MEMORY[0x277D82BD8](view2).n128_u64[0];
  [(CPSInstrumentClusterCardViewController *)selfCopy _updateClientSafeArea];
}

- (void)_transitionFromViews:(id)views inView:(id)view horizontalSlideAnimation:(BOOL)animation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, views);
  v79 = 0;
  objc_storeStrong(&v79, view);
  animationCopy = animation;
  if ([location[0] count] && selfCopy->_shouldUpdateContent)
  {
    v77 = v79 == 0;
    platterViewController = [(CPSInstrumentClusterCardViewController *)selfCopy platterViewController];
    view = [(UIViewController *)platterViewController view];
    MEMORY[0x277D82BD8](platterViewController);
    v26 = location[0];
    v67 = MEMORY[0x277D85DD0];
    v68 = -1073741824;
    v69 = 0;
    v70 = __95__CPSInstrumentClusterCardViewController__transitionFromViews_inView_horizontalSlideAnimation___block_invoke;
    v71 = &unk_278D94040;
    v72 = MEMORY[0x277D82BE0](view);
    v74 = v77;
    v75 = animationCopy;
    v73 = MEMORY[0x277D82BE0](selfCopy);
    [v26 enumerateObjectsUsingBlock:&v67];
    if (v79 && animationCopy)
    {
      [view layoutIfNeeded];
      [v79 frame];
      *&v65 = v5;
      *(&v65 + 1) = v6;
      *&v66 = v7;
      *(&v66 + 1) = v8;
      [v79 frame];
      *&v63 = v9;
      *(&v63 + 1) = v10;
      *&v64 = v11;
      *(&v64 + 1) = v12;
      *&v65 = *&v65 + *&v66 + 8.0;
      [v79 setFrame:{v65, v66}];
      v24 = MEMORY[0x277D75D18];
      v55 = MEMORY[0x277D85DD0];
      v56 = -1073741824;
      v57 = 0;
      v58 = __95__CPSInstrumentClusterCardViewController__transitionFromViews_inView_horizontalSlideAnimation___block_invoke_4;
      v59 = &unk_278D91370;
      v60 = MEMORY[0x277D82BE0](v79);
      v61 = v63;
      v62 = v64;
      v49 = MEMORY[0x277D85DD0];
      v50 = -1073741824;
      v51 = 0;
      v52 = __95__CPSInstrumentClusterCardViewController__transitionFromViews_inView_horizontalSlideAnimation___block_invoke_5;
      v53 = &unk_278D91398;
      v54 = MEMORY[0x277D82BE0](selfCopy);
      [v24 animateWithDuration:0 delay:&v55 options:&v49 animations:0.4 completion:0.0];
      objc_storeStrong(&v54, 0);
      objc_storeStrong(&v60, 0);
    }

    objc_storeStrong(&v73, 0);
    objc_storeStrong(&v72, 0);
    objc_storeStrong(&view, 0);
  }

  else if (v79 && selfCopy->_shouldUpdateContent)
  {
    platterViewController2 = [(CPSInstrumentClusterCardViewController *)selfCopy platterViewController];
    view2 = [(UIViewController *)platterViewController2 view];
    [(UIView *)view2 layoutIfNeeded];
    MEMORY[0x277D82BD8](view2);
    MEMORY[0x277D82BD8](platterViewController2);
    [v79 frame];
    *&v47 = v13;
    *(&v47 + 1) = v14;
    *&v48 = v15;
    *(&v48 + 1) = v16;
    [v79 frame];
    v43 = v17;
    v45 = v18;
    v46 = v19;
    v44 = v20 - v19;
    [v79 setFrame:{v17, v20 - v19, v18, v19}];
    v23 = MEMORY[0x277D75D18];
    v35 = MEMORY[0x277D85DD0];
    v36 = -1073741824;
    v37 = 0;
    v38 = __95__CPSInstrumentClusterCardViewController__transitionFromViews_inView_horizontalSlideAnimation___block_invoke_6;
    v39 = &unk_278D91370;
    v40 = MEMORY[0x277D82BE0](v79);
    v41 = v47;
    v42 = v48;
    v29 = MEMORY[0x277D85DD0];
    v30 = -1073741824;
    v31 = 0;
    v32 = __95__CPSInstrumentClusterCardViewController__transitionFromViews_inView_horizontalSlideAnimation___block_invoke_7;
    v33 = &unk_278D91398;
    v34 = MEMORY[0x277D82BE0](selfCopy);
    [v23 animateWithDuration:&v35 animations:&v29 completion:0.35];
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v40, 0);
  }

  objc_storeStrong(&v79, 0);
  objc_storeStrong(location, 0);
}

void __95__CPSInstrumentClusterCardViewController__transitionFromViews_inView_horizontalSlideAnimation___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v37[3] = a3;
  v37[2] = a4;
  v37[1] = a1;
  v37[0] = [location[0] snapshotViewAfterScreenUpdates:0];
  [*(a1 + 32) addSubview:v37[0]];
  [location[0] frame];
  v33 = v4;
  v34 = v5;
  v35 = v6;
  v36 = v7;
  [v37[0] setFrame:{v4, v5, v6, v7}];
  [location[0] removeFromSuperview];
  [v37[0] frame];
  *&v31 = v8;
  *(&v31 + 1) = v9;
  *&v32 = v10;
  *(&v32 + 1) = v11;
  if (*(a1 + 48))
  {
    *(&v31 + 1) = *(&v31 + 1) - *(&v32 + 1) - 8.0;
  }

  else
  {
    *&v31 = *&v31 - *&v32 - 8.0;
  }

  if (*(a1 + 48) & 1) != 0 || (*(a1 + 49))
  {
    v12 = MEMORY[0x277D75D18];
    v23 = MEMORY[0x277D85DD0];
    v24 = -1073741824;
    v25 = 0;
    v26 = __95__CPSInstrumentClusterCardViewController__transitionFromViews_inView_horizontalSlideAnimation___block_invoke_2;
    v27 = &unk_278D91370;
    v28 = MEMORY[0x277D82BE0](v37[0]);
    v29 = v31;
    v30 = v32;
    v16 = MEMORY[0x277D85DD0];
    v17 = -1073741824;
    v18 = 0;
    v19 = __95__CPSInstrumentClusterCardViewController__transitionFromViews_inView_horizontalSlideAnimation___block_invoke_3;
    v20 = &unk_278D92F60;
    v21 = MEMORY[0x277D82BE0](v37[0]);
    v22 = MEMORY[0x277D82BE0](*(a1 + 40));
    [v12 animateWithDuration:&v23 animations:&v16 completion:0.35];
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v28, 0);
  }

  else
  {
    [v37[0] removeFromSuperview];
    [*(a1 + 40) _updateClientSafeArea];
  }

  objc_storeStrong(v37, 0);
  objc_storeStrong(location, 0);
}

- (void)setLayoutOverride:(unint64_t)override
{
  selfCopy = self;
  v16 = a2;
  overrideCopy = override;
  self->_layoutOverride = override;
  layout = [(CPSInstrumentClusterCardViewController *)selfCopy layout];
  layoutForCard = [(CPSInstrumentClusterCardLayout *)layout layoutForCard];
  *&v3 = MEMORY[0x277D82BD8](layout).n128_u64[0];
  if (layoutForCard != overrideCopy)
  {
    if (overrideCopy)
    {
      layout2 = [(CPSInstrumentClusterCardViewController *)selfCopy layout];
      shouldUpdateContent = 0;
      if (layout2)
      {
        shouldUpdateContent = selfCopy->_shouldUpdateContent;
      }

      *&v4 = MEMORY[0x277D82BD8](layout2).n128_u64[0];
      if (shouldUpdateContent)
      {
        location = [(CPSInstrumentClusterCardViewController *)selfCopy layout];
        [location setLayoutForCard:overrideCopy];
        [(CPSInstrumentClusterCardViewController *)selfCopy setLayout:location];
        currentPausedCardView = [(CPSInstrumentClusterCardViewController *)selfCopy currentPausedCardView];
        v12 = 0;
        v7 = 1;
        if (!currentPausedCardView)
        {
          currentManeuversCardView = [(CPSInstrumentClusterCardViewController *)selfCopy currentManeuversCardView];
          v12 = 1;
          v7 = currentManeuversCardView != 0;
        }

        if (v12)
        {
          MEMORY[0x277D82BD8](currentManeuversCardView);
        }

        *&v5 = MEMORY[0x277D82BD8](currentPausedCardView).n128_u64[0];
        if (v7)
        {
          [(CPSInstrumentClusterCardViewController *)selfCopy _updateClientSafeArea];
        }

        objc_storeStrong(&location, 0);
      }
    }

    else
    {
      [(CPSInstrumentClusterCardViewController *)selfCopy _evaluateLayout];
    }
  }
}

- (void)viewController:(id)controller didUpdateSafeAreaInsets:(UIEdgeInsets)insets
{
  insetsCopy = insets;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v6 = location[0];
  estimatesViewController = [(CPSInstrumentClusterCardViewController *)selfCopy estimatesViewController];
  *&v4 = MEMORY[0x277D82BD8](estimatesViewController).n128_u64[0];
  if (v6 == estimatesViewController)
  {
    [(CPSInstrumentClusterCardViewController *)selfCopy _updateClientSafeArea];
  }

  objc_storeStrong(location, 0);
}

- (CPSSafeAreaDelegate)safeAreaDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_safeAreaDelegate);

  return WeakRetained;
}

- (UIEdgeInsets)currentClientInsets
{
  left = self->_currentClientInsets.left;
  top = self->_currentClientInsets.top;
  right = self->_currentClientInsets.right;
  bottom = self->_currentClientInsets.bottom;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)lastKnownSafeArea
{
  y = self->_lastKnownSafeArea.origin.y;
  x = self->_lastKnownSafeArea.origin.x;
  height = self->_lastKnownSafeArea.size.height;
  width = self->_lastKnownSafeArea.size.width;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)lastKnownViewArea
{
  y = self->_lastKnownViewArea.origin.y;
  x = self->_lastKnownViewArea.origin.x;
  height = self->_lastKnownViewArea.size.height;
  width = self->_lastKnownViewArea.size.width;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end