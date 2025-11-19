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
- (void)_transitionFromViews:(id)a3 inView:(id)a4 horizontalSlideAnimation:(BOOL)a5;
- (void)_updateClientSafeArea;
- (void)_updateClientSafeAreaWithInsets:(UIEdgeInsets)a3;
- (void)navigator:(id)a3 didEndTrip:(BOOL)a4;
- (void)navigator:(id)a3 pausedTripForReason:(unint64_t)a4 description:(id)a5 usingColor:(id)a6;
- (void)setCARScreenInfo:(id)a3 isRightHandDrive:(BOOL)a4 supportsVehicleData:(BOOL)a5;
- (void)setLayout:(id)a3;
- (void)setLayoutOverride:(unint64_t)a3;
- (void)setSafeAreaDelegate:(id)a3;
- (void)setShowETA:(BOOL)a3;
- (void)showManeuvers:(id)a3 usingDisplayStyles:(id)a4;
- (void)updateEstimates:(id)a3 forManeuver:(id)a4;
- (void)updateTripEstimates:(id)a3;
- (void)viewController:(id)a3 didUpdateSafeAreaInsets:(UIEdgeInsets)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
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
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSInstrumentClusterCardViewController;
  [(CPSInstrumentClusterCardViewController *)&v2 viewDidLoad];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = CPSInstrumentClusterCardViewController;
  [(CPSInstrumentClusterCardViewController *)&v3 viewDidAppear:a3];
  v6->_shouldUpdateContent = 1;
  [(CPSInstrumentClusterCardViewController *)v6 _evaluateLayout];
  [(CPSInstrumentClusterCardViewController *)v6 _updateClientSafeArea];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = CPSInstrumentClusterCardViewController;
  [(CPSInstrumentClusterCardViewController *)&v3 viewDidDisappear:a3];
  [(CPSInstrumentClusterCardViewController *)v6 _updateClientSafeAreaWithInsets:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  v6->_shouldUpdateContent = 0;
}

- (void)viewDidLayoutSubviews
{
  v32 = *MEMORY[0x277D85DE8];
  v29 = self;
  v28 = a2;
  v27.receiver = self;
  v27.super_class = CPSInstrumentClusterCardViewController;
  [(CPSInstrumentClusterCardViewController *)&v27 viewDidLayoutSubviews];
  v25 = 0;
  v17 = 0;
  if ([(CPSInstrumentClusterCardViewController *)v29 layoutOverride])
  {
    v26 = [(CPSInstrumentClusterCardViewController *)v29 layout];
    v25 = 1;
    v16 = [(CPSInstrumentClusterCardLayout *)v26 layoutForCard];
    v17 = v16 != [(CPSInstrumentClusterCardViewController *)v29 layoutOverride];
  }

  if (v25)
  {
    MEMORY[0x277D82BD8](v26);
  }

  if (v17)
  {
    location = CarPlaySupportGeneralLogging();
    v23 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(location, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_64(v31, v29);
      _os_log_impl(&dword_242FE8000, location, v23, "%@: layout override changed on viewDidLayoutSubviews. Reevaluating Layout.", v31, 0xCu);
    }

    objc_storeStrong(&location, 0);
    v15 = [[CPSInstrumentClusterCardLayout alloc] initWithLayout:[(CPSInstrumentClusterCardViewController *)v29 layoutOverride]];
    [(CPSInstrumentClusterCardViewController *)v29 setLayout:?];
    MEMORY[0x277D82BD8](v15);
  }

  else
  {
    p_lastKnownSafeArea = &v29->_lastKnownSafeArea;
    v11 = [(CPSInstrumentClusterCardViewController *)v29 view];
    v12 = [v11 safeAreaLayoutGuide];
    [v12 layoutFrame];
    v22.origin.x = v2;
    v22.origin.y = v3;
    v22.size.width = v4;
    v22.size.height = v5;
    v33 = *p_lastKnownSafeArea;
    v19 = 0;
    LOBYTE(v14) = 1;
    if (CGRectEqualToRect(v33, v22))
    {
      p_lastKnownViewArea = &v29->_lastKnownViewArea;
      v20 = [(CPSInstrumentClusterCardViewController *)v29 view];
      v19 = 1;
      [v20 frame];
      rect2.origin.x = v6;
      rect2.origin.y = v7;
      rect2.size.width = v8;
      rect2.size.height = v9;
      v14 = !CGRectEqualToRect(*p_lastKnownViewArea, rect2);
    }

    if (v19)
    {
      MEMORY[0x277D82BD8](v20);
    }

    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v11);
    if (v14)
    {
      oslog = CarPlaySupportGeneralLogging();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_64(v30, v29);
        _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_INFO, "%@: view area or safe area changed on viewDidLayoutSubviews. Reevaluating Layout.", v30, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      [(CPSInstrumentClusterCardViewController *)v29 _evaluateLayout];
    }
  }
}

- (void)setLayout:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v37 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = v37;
  v24 = [(CPSInstrumentClusterCardViewController *)v37 view];
  v23 = [v24 safeAreaLayoutGuide];
  [v23 layoutFrame];
  v34.x = v3;
  v34.y = v4;
  v35.width = v5;
  v35.height = v6;
  v22->_lastKnownSafeArea.origin = v34;
  v22->_lastKnownSafeArea.size = v35;
  MEMORY[0x277D82BD8](v23);
  *&v7 = MEMORY[0x277D82BD8](v24).n128_u64[0];
  v25 = v37;
  v26 = [(CPSInstrumentClusterCardViewController *)v37 view];
  [v26 frame];
  v32.x = v8;
  v32.y = v9;
  v33.width = v10;
  v33.height = v11;
  v25->_lastKnownViewArea.origin = v32;
  v25->_lastKnownViewArea.size = v33;
  MEMORY[0x277D82BD8](v26);
  objc_storeStrong(&v37->_layout, location[0]);
  v31 = CarPlaySupportGeneralLogging();
  v30 = 1;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    log = v31;
    type = v30;
    v16 = v37;
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(location[0], "layoutForCard")}];
    v29[0] = v37->_lastKnownViewArea.origin;
    v29[1] = v37->_lastKnownViewArea.size;
    v20 = [MEMORY[0x277CCAE60] valueWithBytes:v29 objCType:?];
    v28[0] = v37->_lastKnownSafeArea.origin;
    v28[1] = v37->_lastKnownSafeArea.size;
    v19 = [MEMORY[0x277CCAE60] valueWithBytes:v28 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    __os_log_helper_16_2_4_8_64_8_64_8_64_8_64(v38, v16, v21, v20, v19);
    _os_log_impl(&dword_242FE8000, log, type, "%@: Setting Layout: %@ with viewArea: %@ safeArea: %@", v38, 0x2Au);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
  }

  objc_storeStrong(&v31, 0);
  [(CPSInstrumentClusterCardViewController *)v37 _setupConstraintsForPlatterView];
  [(CPSInstrumentClusterCardViewController *)v37 _setupConstraintsForETACard];
  v15 = [(CPSInstrumentClusterCardViewController *)v37 currentManeuversCardView];
  *&v12 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  if (v15)
  {
    v14 = [(CPSInstrumentClusterCardViewController *)v37 currentManeuversCardView];
    v13 = [(CPSManeuversCardView *)v14 maneuvers];
    v27 = [(NSArray *)v13 copy];
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    objc_storeStrong(&v37->_currentManeuversCardView, 0);
    [(CPSInstrumentClusterCardViewController *)v37 showManeuvers:v27 usingDisplayStyles:MEMORY[0x277CBEBF8]];
    objc_storeStrong(&v27, 0);
  }

  [(CPSInstrumentClusterCardViewController *)v37 _setupConstraintsForPauseCard];
  [(CPSInstrumentClusterCardViewController *)v37 _updateClientSafeArea];
  objc_storeStrong(location, 0);
}

- (void)setCARScreenInfo:(id)a3 isRightHandDrive:(BOOL)a4 supportsVehicleData:(BOOL)a5
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v8->_carScreenInfo, location[0]);
  v8->_isRightHandDrive = a4;
  v8->_supportsVehicleData = a5;
  [(CPSInstrumentClusterCardViewController *)v8 _evaluateLayout];
  objc_storeStrong(location, 0);
}

- (void)setSafeAreaDelegate:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  WeakRetained = objc_loadWeakRetained(&v6->_safeAreaDelegate);
  v3 = location[0];
  MEMORY[0x277D82BD8](WeakRetained);
  if (WeakRetained != v3)
  {
    objc_storeWeak(&v6->_safeAreaDelegate, location[0]);
    [(CPSInstrumentClusterCardViewController *)v6 _updateClientSafeArea];
  }

  objc_storeStrong(location, 0);
}

- (void)_evaluateLayout
{
  v81 = *MEMORY[0x277D85DE8];
  v78 = self;
  location[1] = a2;
  location[0] = CarPlaySupportGeneralLogging();
  v76 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_1_8_64(v80, v78);
    _os_log_impl(&dword_242FE8000, location[0], v76, "%@: Evaluating Layout", v80, 0xCu);
  }

  objc_storeStrong(location, 0);
  if ([(CPSInstrumentClusterCardViewController *)v78 supportsVehicleData])
  {
    v75 = CarPlaySupportGeneralLogging();
    v74 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_64(v79, v78);
      _os_log_impl(&dword_242FE8000, v75, v74, "%@: Supports vehicle data", v79, 0xCu);
    }

    objc_storeStrong(&v75, 0);
    v34 = [(CPSInstrumentClusterCardViewController *)v78 view];
    [v34 frame];
    v70 = v2;
    v71 = v3;
    v72 = v4;
    v73 = v5;
    MEMORY[0x277D82BD8](v34);
    v36 = [(CPSInstrumentClusterCardViewController *)v78 view];
    v35 = [v36 safeAreaLayoutGuide];
    [v35 layoutFrame];
    v66 = v6;
    v67 = v7;
    v68 = v8;
    v69 = v9;
    MEMORY[0x277D82BD8](v35);
    *&v10 = MEMORY[0x277D82BD8](v36).n128_u64[0];
    v40 = [(CPSInstrumentClusterCardViewController *)v78 view];
    v39 = [v40 window];
    v38 = [v39 screen];
    v37 = [v38 displayConfiguration];
    [v37 pointScale];
    v41 = v11;
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v40);
    v65 = v41;
    v44 = [(CPSInstrumentClusterCardViewController *)v78 carScreenInfo];
    [(CARScreenInfo *)v44 physicalSize];
    v62 = v12;
    v63 = v13;
    v43 = v12;
    v42 = [(CPSInstrumentClusterCardViewController *)v78 carScreenInfo];
    [(CARScreenInfo *)v42 pixelSize];
    v60 = v14;
    v61 = v15;
    v45 = v43 / v14;
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v44);
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
    v47 = [(CPSInstrumentClusterCardLayout *)v30 initWithSafeAreaFrame:v78->_isRightHandDrive viewAreaFrame:v50 displayFrame:v51 physicalPixelWidth:v48 isRightHandDrive:v49, v48, v49, *&v45];
    [(CPSInstrumentClusterCardViewController *)v78 setLayout:v47];
    objc_storeStrong(&v47, 0);
  }

  else
  {
    v32 = [CPSInstrumentClusterCardLayout alloc];
    v33 = [(CPSInstrumentClusterCardViewController *)v78 carScreenInfo];
    v46 = [(CPSInstrumentClusterCardLayout *)v32 initWithCarScreenInfo:v33 isRightHandDrive:[(CPSInstrumentClusterCardViewController *)v78 isRightHandDrive]];
    *&v31 = MEMORY[0x277D82BD8](v33).n128_u64[0];
    [(CPSInstrumentClusterCardViewController *)v78 setLayout:v46, v31];
    objc_storeStrong(&v46, 0);
  }
}

- (void)_updateClientSafeArea
{
  if (self->_shouldUpdateContent)
  {
    v12 = [(CPSInstrumentClusterCardViewController *)self currentPausedCardView];
    v18 = 0;
    v16 = 0;
    v14 = 0;
    LOBYTE(v13) = 1;
    if (!v12)
    {
      v19 = [(CPSInstrumentClusterCardViewController *)self currentManeuversCardView];
      v18 = 1;
      LOBYTE(v13) = 1;
      if (!v19)
      {
        v17 = [(CPSInstrumentClusterCardViewController *)self estimatesViewController];
        v16 = 1;
        v15 = [(CPSDashboardEstimatesViewController *)v17 contentView];
        v14 = 1;
        v13 = ![(UIView *)v15 isHidden];
      }
    }

    if (v14)
    {
      MEMORY[0x277D82BD8](v15);
    }

    if (v16)
    {
      MEMORY[0x277D82BD8](v17);
    }

    if (v18)
    {
      MEMORY[0x277D82BD8](v19);
    }

    *&v2 = MEMORY[0x277D82BD8](v12).n128_u64[0];
    if (v13)
    {
      [(CPSInstrumentClusterCardViewController *)self _layoutGuideForClient];
      [(CPSInstrumentClusterCardViewController *)self _updateClientSafeAreaWithInsets:v3, v4, v5, v6];
    }

    else
    {
      v11 = [(CPSInstrumentClusterCardViewController *)self view];
      [v11 safeAreaInsets];
      [(CPSInstrumentClusterCardViewController *)self _updateClientSafeAreaWithInsets:v7, v8, v9, v10];
      MEMORY[0x277D82BD8](v11);
    }
  }
}

- (UIEdgeInsets)_layoutGuideForClient
{
  v10 = [(CPSInstrumentClusterCardViewController *)self platterViewController];
  v9 = [(UIViewController *)v10 view];
  [(UIView *)v9 layoutIfNeeded];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  v12 = [(CPSInstrumentClusterCardViewController *)self view];
  v11 = [v12 safeAreaLayoutGuide];
  [v11 layoutFrame];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  v13 = [(CPSInstrumentClusterCardViewController *)self view];
  [v13 safeAreaInsets];
  MEMORY[0x277D82BD8](v13);
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
    v8 = [(CPSInstrumentClusterCardViewController *)self platterViewController];
    v7 = [(UIViewController *)v8 view];
    [(UIView *)v7 bounds];
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
  }

  else if ([(CPSInstrumentClusterCardLayout *)self->_layout layoutForCard]== 3)
  {
    v6 = [(UIViewController *)self->_platterViewController view];
    [(UIView *)v6 bounds];
    MEMORY[0x277D82BD8](v6);
  }

  UIEdgeInsetsMake_4();
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_updateClientSafeAreaWithInsets:(UIEdgeInsets)a3
{
  if (self->_shouldUpdateContent)
  {
    [(CPSInstrumentClusterCardViewController *)self currentClientInsets];
    if (!UIEdgeInsetsEqualToEdgeInsets_0(a3.top, a3.left, a3.bottom, a3.right, v3, v4, v5, v6))
    {
      [(CPSInstrumentClusterCardViewController *)self setCurrentClientInsets:a3.top, a3.left, a3.bottom, a3.right];
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
  v106 = self;
  oslog[1] = a2;
  oslog[0] = CarPlaySupportGeneralLogging();
  type = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_INFO))
  {
    v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CPSInstrumentClusterCardLayout layoutForCard](v106->_layout, "layoutForCard")}];
    __os_log_helper_16_2_2_8_64_8_64(v133, v106, v81);
    _os_log_impl(&dword_242FE8000, oslog[0], type, "%@ Setting constraints for platter view with layout: %@", v133, 0x16u);
    MEMORY[0x277D82BD8](v81);
  }

  objc_storeStrong(oslog, 0);
  v103 = objc_alloc_init(MEMORY[0x277D75D18]);
  v77 = [(CPSInstrumentClusterCardViewController *)v106 view];
  v76 = [v77 safeAreaLayoutGuide];
  [v76 layoutFrame];
  v100[1] = v2;
  v100[2] = v3;
  v101 = v4;
  v102 = v5;
  MEMORY[0x277D82BD8](v76);
  *&v6 = MEMORY[0x277D82BD8](v77).n128_u64[0];
  [(UIViewController *)v106->_platterViewController setView:v103, v6];
  [(UIViewController *)v106->_platterViewController willMoveToParentViewController:v106];
  [(CPSInstrumentClusterCardViewController *)v106 addChildViewController:v106->_platterViewController];
  v79 = [(CPSInstrumentClusterCardViewController *)v106 view];
  v78 = [(UIViewController *)v106->_platterViewController view];
  [v79 addSubview:?];
  MEMORY[0x277D82BD8](v78);
  *&v7 = MEMORY[0x277D82BD8](v79).n128_u64[0];
  [(UIViewController *)v106->_platterViewController didMoveToParentViewController:v106, v7];
  v80 = [(UIViewController *)v106->_platterViewController view];
  [(UIView *)v80 setClipsToBounds:0];
  *&v8 = MEMORY[0x277D82BD8](v80).n128_u64[0];
  v100[0] = [(UIViewController *)v106->_platterViewController view];
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
  v72 = [(CPSInstrumentClusterCardViewController *)v106 view];
  v71 = [v72 safeAreaLayoutGuide];
  [v71 layoutFrame];
  v94 = v9;
  v95 = v10;
  v96 = v11;
  v97 = v12;
  MEMORY[0x277D82BD8](v71);
  MEMORY[0x277D82BD8](v72);
  v73 = [(CPSInstrumentClusterCardViewController *)v106 view];
  [v73 frame];
  v90 = v13;
  v91 = v14;
  v92 = v15;
  v93 = v16;
  MEMORY[0x277D82BD8](v73);
  v89 = v101 * 0.4;
  if ([(CPSInstrumentClusterCardLayout *)v106->_layout layoutForCard]== 1 && v106->_layout)
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
    v69 = [v100[0] centerXAnchor];
    v68 = [(CPSInstrumentClusterCardViewController *)v106 view];
    v67 = [v68 safeAreaLayoutGuide];
    v66 = [v67 centerXAnchor];
    v65 = [v69 constraintEqualToAnchor:?];
    v132[0] = v65;
    v64 = [v100[0] centerYAnchor];
    v63 = [(CPSInstrumentClusterCardViewController *)v106 view];
    v62 = [v63 safeAreaLayoutGuide];
    v61 = [v62 centerYAnchor];
    v60 = [v64 constraintEqualToAnchor:?];
    v132[1] = v60;
    v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v132 count:2];
    [v58 activateConstraints:?];
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v60);
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v66);
    MEMORY[0x277D82BD8](v67);
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v69);
  }

  else if ([(CPSInstrumentClusterCardLayout *)v106->_layout layoutForCard]== 2)
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
    v57 = [v100[0] leftAnchor];
    v56 = [(CPSInstrumentClusterCardViewController *)v106 view];
    v55 = [v56 safeAreaLayoutGuide];
    v54 = [v55 leftAnchor];
    v53 = [v57 constraintEqualToAnchor:v88 constant:?];
    v131 = v53;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v131 count:1];
    [v51 activateConstraints:?];
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v57);
  }

  else if ([(CPSInstrumentClusterCardLayout *)v106->_layout layoutForCard]== 3)
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
    v50 = [v100[0] rightAnchor];
    v49 = [(CPSInstrumentClusterCardViewController *)v106 view];
    v48 = [v49 safeAreaLayoutGuide];
    v47 = [v48 rightAnchor];
    v46 = [v50 constraintEqualToAnchor:v87 constant:?];
    v130 = v46;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v130 count:1];
    [v44 activateConstraints:?];
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v50);
  }

  else if (![(CPSInstrumentClusterCardLayout *)v106->_layout layoutForCard])
  {
    v86 = CarPlaySupportGeneralLogging();
    v85 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      v42 = v106;
      v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CPSInstrumentClusterCardLayout layoutForCard](v106->_layout, "layoutForCard")}];
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
  v39 = [v100[0] widthAnchor];
  v84[0] = [v39 constraintEqualToConstant:v41];
  MEMORY[0x277D82BD8](v39);
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
  v38 = [v100[0] bottomAnchor];
  v37 = [(CPSInstrumentClusterCardViewController *)v106 view];
  v36 = [v37 safeAreaLayoutGuide];
  v35 = [v36 bottomAnchor];
  v34 = [v38 constraintEqualToAnchor:v82 constant:?];
  v128[1] = v34;
  v33 = [v100[0] topAnchor];
  v32 = [(CPSInstrumentClusterCardViewController *)v106 view];
  v31 = [v32 safeAreaLayoutGuide];
  v30 = [v31 topAnchor];
  v29 = [v33 constraintEqualToAnchor:v83 constant:?];
  v128[2] = v29;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v128 count:3];
  [v27 activateConstraints:?];
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  objc_storeStrong(v84, 0);
  objc_storeStrong(v100, 0);
  objc_storeStrong(&v103, 0);
}

- (void)_setupConstraintsForETACard
{
  v29 = *MEMORY[0x277D85DE8];
  v26 = self;
  location[1] = a2;
  location[0] = CarPlaySupportGeneralLogging();
  v24 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_INFO))
  {
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CPSInstrumentClusterCardLayout layoutForCard](v26->_layout, "layoutForCard")}];
    __os_log_helper_16_2_2_8_64_8_64(v28, v26, v22);
    _os_log_impl(&dword_242FE8000, location[0], v24, "%@ Setting constraints for ETA Card with layout: %@", v28, 0x16u);
    MEMORY[0x277D82BD8](v22);
  }

  objc_storeStrong(location, 0);
  [(CPSClusterEstimatesViewController *)v26->_estimatesViewController willMoveToParentViewController:v26->_platterViewController];
  [(UIViewController *)v26->_platterViewController addChildViewController:v26->_estimatesViewController];
  v4 = [(UIViewController *)v26->_platterViewController view];
  v3 = [(CPSClusterEstimatesViewController *)v26->_estimatesViewController view];
  [(UIView *)v4 addSubview:?];
  MEMORY[0x277D82BD8](v3);
  *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  [(CPSClusterEstimatesViewController *)v26->_estimatesViewController didMoveToParentViewController:v26->_platterViewController, v2];
  v23 = [(CPSClusterEstimatesViewController *)v26->_estimatesViewController view];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = MEMORY[0x277CCAAD0];
  v21 = [v23 leftAnchor];
  v20 = [(CPSInstrumentClusterCardViewController *)v26 platterViewController];
  v19 = [(UIViewController *)v20 view];
  v18 = [(UIView *)v19 leftAnchor];
  v17 = [v21 constraintEqualToAnchor:?];
  v27[0] = v17;
  v16 = [v23 rightAnchor];
  v15 = [(CPSInstrumentClusterCardViewController *)v26 platterViewController];
  v14 = [(UIViewController *)v15 view];
  v13 = [(UIView *)v14 rightAnchor];
  v12 = [v16 constraintEqualToAnchor:?];
  v27[1] = v12;
  v11 = [v23 bottomAnchor];
  v10 = [(CPSInstrumentClusterCardViewController *)v26 platterViewController];
  v9 = [(UIViewController *)v10 view];
  v8 = [(UIView *)v9 bottomAnchor];
  v7 = [v11 constraintEqualToAnchor:?];
  v27[2] = v7;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
  [v5 activateConstraints:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  objc_storeStrong(&v23, 0);
}

- (void)_setupConstraintsForTurnCard
{
  v39[3] = *MEMORY[0x277D85DE8];
  v36 = self;
  location[1] = a2;
  if (self->_currentManeuversCardView && v36->_shouldUpdateContent && !v36->_isMapContentOnly)
  {
    location[0] = MEMORY[0x277D82BE0](v36->_currentManeuversCardView);
    v17 = [(UIViewController *)v36->_platterViewController view];
    [(UIView *)v17 addSubview:v36->_currentManeuversCardView];
    *&v2 = MEMORY[0x277D82BD8](v17).n128_u64[0];
    v18 = MEMORY[0x277CCAAD0];
    v34 = [location[0] leftAnchor];
    v33 = [(CPSInstrumentClusterCardViewController *)v36 platterViewController];
    v32 = [(UIViewController *)v33 view];
    v31 = [(UIView *)v32 leftAnchor];
    v30 = [v34 constraintEqualToAnchor:?];
    v39[0] = v30;
    v29 = [location[0] topAnchor];
    v28 = [(CPSInstrumentClusterCardViewController *)v36 platterViewController];
    v27 = [(UIViewController *)v28 view];
    v26 = [(UIView *)v27 topAnchor];
    v25 = [v29 constraintEqualToAnchor:?];
    v39[1] = v25;
    v24 = [location[0] widthAnchor];
    v23 = [(CPSInstrumentClusterCardViewController *)v36 platterViewController];
    v22 = [(UIViewController *)v23 view];
    v21 = [(UIView *)v22 widthAnchor];
    v20 = [v24 constraintEqualToAnchor:?];
    v39[2] = v20;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:3];
    [v18 activateConstraints:?];
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    if ([(CPSInstrumentClusterCardLayout *)v36->_layout layoutForCard]== 1)
    {
      v10 = MEMORY[0x277CCAAD0];
      v16 = [location[0] heightAnchor];
      v15 = [(CPSInstrumentClusterCardViewController *)v36 view];
      v14 = [v15 safeAreaLayoutGuide];
      v13 = [v14 heightAnchor];
      v12 = [v16 constraintEqualToAnchor:0.41 multiplier:?];
      v38 = v12;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
      [v10 activateConstraints:?];
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
    }

    else
    {
      v3 = MEMORY[0x277CCAAD0];
      v9 = [location[0] heightAnchor];
      v8 = [(CPSInstrumentClusterCardViewController *)v36 view];
      v7 = [v8 safeAreaLayoutGuide];
      v6 = [v7 heightAnchor];
      v5 = [v9 constraintEqualToAnchor:-42.0 constant:?];
      v37 = v5;
      v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
      [v3 activateConstraints:?];
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
    }

    objc_storeStrong(location, 0);
  }
}

- (void)_setupConstraintsForPauseCard
{
  v28[4] = *MEMORY[0x277D85DE8];
  v27 = self;
  v26[1] = a2;
  if (self->_currentPausedCardView && v27->_shouldUpdateContent && !v27->_isMapContentOnly)
  {
    v26[0] = MEMORY[0x277D82BE0](v27->_currentPausedCardView);
    v3 = [(UIViewController *)v27->_platterViewController view];
    [(UIView *)v3 addSubview:v27->_currentPausedCardView];
    *&v2 = MEMORY[0x277D82BD8](v3).n128_u64[0];
    v4 = MEMORY[0x277CCAAD0];
    v25 = [v26[0] leftAnchor];
    v24 = [(CPSInstrumentClusterCardViewController *)v27 platterViewController];
    v23 = [(UIViewController *)v24 view];
    v22 = [(UIView *)v23 leftAnchor];
    v21 = [v25 constraintEqualToAnchor:?];
    v28[0] = v21;
    v20 = [v26[0] topAnchor];
    v19 = [(CPSInstrumentClusterCardViewController *)v27 platterViewController];
    v18 = [(UIViewController *)v19 view];
    v17 = [(UIView *)v18 topAnchor];
    v16 = [v20 constraintEqualToAnchor:?];
    v28[1] = v16;
    v15 = [v26[0] widthAnchor];
    v14 = [(CPSInstrumentClusterCardViewController *)v27 platterViewController];
    v13 = [(UIViewController *)v14 view];
    v12 = [(UIView *)v13 widthAnchor];
    v11 = [v15 constraintEqualToAnchor:?];
    v28[2] = v11;
    v10 = [v26[0] heightAnchor];
    v9 = [(CPSInstrumentClusterCardViewController *)v27 view];
    v8 = [v9 safeAreaLayoutGuide];
    v7 = [v8 heightAnchor];
    v6 = [v10 constraintEqualToAnchor:0.41 multiplier:?];
    v28[3] = v6;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
    [v4 activateConstraints:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    objc_storeStrong(v26, 0);
  }
}

- (void)showManeuvers:(id)a3 usingDisplayStyles:(id)a4
{
  v35 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v33 = 0;
  objc_storeStrong(&v33, a4);
  if (([(CPSInstrumentClusterCardViewController *)v35 isViewLoaded]& 1) != 0 && !v35->_isMapContentOnly)
  {
    v22 = [(CPSInstrumentClusterCardViewController *)v35 currentManeuversCardView];
    v29 = 0;
    v27 = 0;
    v23 = 0;
    if (v22)
    {
      v30 = [(CPSInstrumentClusterCardViewController *)v35 currentManeuversCardView];
      v29 = 1;
      v28 = [(CPSManeuversCardView *)v30 maneuvers];
      v27 = 1;
      v23 = BSEqualObjects();
    }

    if (v27)
    {
      MEMORY[0x277D82BD8](v28);
    }

    if (v29)
    {
      MEMORY[0x277D82BD8](v30);
    }

    MEMORY[0x277D82BD8](v22);
    v31 = v23 & 1;
    if (v23)
    {
      v32 = 1;
    }

    else
    {
      v26 = 0;
      v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v21 = [(CPSInstrumentClusterCardViewController *)v35 currentManeuversCardView];
      v4 = MEMORY[0x277D82BD8](v21).n128_u64[0];
      if (v21)
      {
        v20 = [(CPSInstrumentClusterCardViewController *)v35 currentManeuversCardView];
        [v25 addObject:?];
        v4 = MEMORY[0x277D82BD8](v20).n128_u64[0];
      }

      v19 = [(CPSInstrumentClusterCardViewController *)v35 currentPausedCardView];
      v5 = MEMORY[0x277D82BD8](v19).n128_u64[0];
      if (v19)
      {
        v18 = [(CPSInstrumentClusterCardViewController *)v35 currentPausedCardView];
        [v25 addObject:?];
        v5 = MEMORY[0x277D82BD8](v18).n128_u64[0];
      }

      [(CPSInstrumentClusterCardViewController *)v35 setCurrentManeuversCardView:*&v5];
      [(CPSInstrumentClusterCardViewController *)v35 setCurrentPausedCardView:0];
      if ([location[0] count])
      {
        v6 = [CPSClusterManeuversCardView alloc];
        v7 = [(CPSClusterManeuversCardView *)v6 initWithManeuvers:location[0]];
        v8 = v26;
        v26 = v7;
        [(CPSManeuversCardView *)v7 setUsesCustomBackgroundColor:1, MEMORY[0x277D82BD8](v8).n128_f64[0]];
        if ([(CPSManeuversCardView *)v26 usesCustomBackgroundColor])
        {
          v16 = [location[0] firstObject];
          v17 = [v16 cardBackgroundColor];
          MEMORY[0x277D82BD8](v17);
          *&v9 = MEMORY[0x277D82BD8](v16).n128_u64[0];
          if (v17)
          {
            v12 = [location[0] firstObject];
            v11 = [v12 cardBackgroundColor];
            [(UIView *)v26 overrideUserInterfaceStyleBasedOnBackgroundColor:?];
            MEMORY[0x277D82BD8](v11);
            *&v10 = MEMORY[0x277D82BD8](v12).n128_u64[0];
            v15 = [location[0] firstObject];
            v14 = [v15 cardBackgroundColor];
            v13 = [(CPSManeuversCardView *)v26 contentView];
            [(UIView *)v13 setBackgroundColor:v14];
            MEMORY[0x277D82BD8](v13);
            MEMORY[0x277D82BD8](v14);
            MEMORY[0x277D82BD8](v15);
          }
        }

        [(CPSInstrumentClusterCardViewController *)v35 setCurrentManeuversCardView:v26];
        [(CPSInstrumentClusterCardViewController *)v35 _setupConstraintsForTurnCard];
      }

      [(CPSInstrumentClusterCardViewController *)v35 _transitionFromViews:v25 inView:v26 horizontalSlideAnimation:0];
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

- (void)updateEstimates:(id)a3 forManeuver:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = [(CPSInstrumentClusterCardViewController *)v10 currentManeuversCardView];
  *&v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v7)
  {
    v5 = [(CPSInstrumentClusterCardViewController *)v10 currentManeuversCardView];
    [(CPSManeuversCardView *)v5 updateEstimates:location[0] forManeuver:v8];
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)navigator:(id)a3 pausedTripForReason:(unint64_t)a4 description:(id)a5 usingColor:(id)a6
{
  v32 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v30 = a4;
  v29 = 0;
  objc_storeStrong(&v29, a5);
  v28 = 0;
  objc_storeStrong(&v28, a6);
  if (([(CPSInstrumentClusterCardViewController *)v32 isViewLoaded]& 1) != 0 && !v32->_isMapContentOnly)
  {
    v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20 = [(CPSInstrumentClusterCardViewController *)v32 currentManeuversCardView];
    v6 = MEMORY[0x277D82BD8](v20).n128_u64[0];
    if (v20)
    {
      v19 = [(CPSInstrumentClusterCardViewController *)v32 currentManeuversCardView];
      [v26 addObject:?];
      v6 = MEMORY[0x277D82BD8](v19).n128_u64[0];
    }

    v18 = [(CPSInstrumentClusterCardViewController *)v32 currentPausedCardView];
    v7 = MEMORY[0x277D82BD8](v18).n128_u64[0];
    if (v18)
    {
      v17 = [(CPSInstrumentClusterCardViewController *)v32 currentPausedCardView];
      [v26 addObject:?];
      v7 = MEMORY[0x277D82BD8](v17).n128_u64[0];
    }

    [(CPSInstrumentClusterCardViewController *)v32 setCurrentManeuversCardView:*&v7];
    [(CPSInstrumentClusterCardViewController *)v32 setCurrentPausedCardView:0];
    v14 = [CPSClusterPausedCardView alloc];
    v15 = v30;
    v16 = v29;
    v24 = 0;
    if (v28)
    {
      v13 = v28;
    }

    else
    {
      v25 = [MEMORY[0x277D75348] tableBackgroundColor];
      v24 = 1;
      v13 = v25;
    }

    v12 = [(CPSPausedCardView *)v14 initWithReason:v15 title:v16 backgroundColor:v13];
    [(CPSInstrumentClusterCardViewController *)v32 setCurrentPausedCardView:?];
    v8 = MEMORY[0x277D82BD8](v12).n128_u64[0];
    if (v24)
    {
      v8 = MEMORY[0x277D82BD8](v25).n128_u64[0];
    }

    [(CPSInstrumentClusterCardViewController *)v32 _setupConstraintsForPauseCard];
    v10 = v32;
    v9 = v26;
    v11 = [(CPSInstrumentClusterCardViewController *)v32 currentPausedCardView];
    [CPSInstrumentClusterCardViewController _transitionFromViews:v10 inView:"_transitionFromViews:inView:horizontalSlideAnimation:" horizontalSlideAnimation:v9];
    MEMORY[0x277D82BD8](v11);
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

- (void)updateTripEstimates:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(CPSInstrumentClusterCardViewController *)v4 _updateClientSafeArea];
  if (objc_opt_respondsToSelector())
  {
    [(CPSDashboardEstimatesViewController *)v4->_estimatesViewController updateTripEstimates:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)navigator:(id)a3 didEndTrip:(BOOL)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(CPSDashboardEstimatesViewController *)v10->_estimatesViewController navigator:location[0] didEndTrip:a4];
  v7 = [(CPSInstrumentClusterCardViewController *)v10 currentManeuversCardView];
  [(CPSClusterManeuversCardView *)v7 removeFromSuperview];
  *&v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  v8 = [(CPSInstrumentClusterCardViewController *)v10 currentPausedCardView];
  [(CPSClusterPausedCardView *)v8 removeFromSuperview];
  *&v5 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  [(CPSInstrumentClusterCardViewController *)v10 setCurrentManeuversCardView:0, v5];
  [(CPSInstrumentClusterCardViewController *)v10 setCurrentPausedCardView:0];
  [(CPSInstrumentClusterCardViewController *)v10 _updateClientSafeArea];
  objc_storeStrong(location, 0);
}

- (void)setShowETA:(BOOL)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v28 = self;
  v27 = a2;
  v26 = a3;
  v23 = 0;
  v21 = 0;
  v19 = 0;
  v17 = 0;
  if (a3)
  {
    v16 = 1;
    if (!v28->_isMapContentOnly)
    {
      v24 = [(CPSInstrumentClusterCardViewController *)v28 layout];
      v23 = 1;
      v16 = 1;
      if (![(CPSInstrumentClusterCardLayout *)v24 showETAWithTurnCard])
      {
        v15 = 0;
        if ([(CPSInstrumentClusterCardViewController *)v28 layoutOverride])
        {
          v22 = [(CPSInstrumentClusterCardViewController *)v28 view];
          v21 = 1;
          v20 = [v22 safeAreaLayoutGuide];
          v19 = 1;
          [v20 layoutFrame];
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
    MEMORY[0x277D82BD8](v20);
  }

  if (v21)
  {
    MEMORY[0x277D82BD8](v22);
  }

  if (v23)
  {
    MEMORY[0x277D82BD8](v24);
  }

  v25 = v17;
  oslog[0] = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_INFO))
  {
    v14 = [MEMORY[0x277CCABB0] numberWithBool:v26];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:v28->_isMapContentOnly];
    v9 = MEMORY[0x277CCABB0];
    v12 = [(CPSInstrumentClusterCardViewController *)v28 layout];
    v11 = [v9 numberWithBool:{-[CPSInstrumentClusterCardLayout showETAWithTurnCard](v12, "showETAWithTurnCard")}];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v25 & 1];
    __os_log_helper_16_2_5_8_64_8_64_8_64_8_64_8_64(v29, v28, v14, v13, v11, v10);
    _os_log_impl(&dword_242FE8000, oslog[0], OS_LOG_TYPE_INFO, "%@: showETA %@, mapOnly: %@, layout specified show ETA: %@, shouldShowETA: %@", v29, 0x34u);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
  }

  objc_storeStrong(oslog, 0);
  v28->_showETA = v25 & 1;
  v8 = [(CPSClusterEstimatesViewController *)v28->_estimatesViewController view];
  [v8 setHidden:(v25 ^ 1) & 1];
  *&v7 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  [(CPSInstrumentClusterCardViewController *)v28 _updateClientSafeArea];
}

- (void)_transitionFromViews:(id)a3 inView:(id)a4 horizontalSlideAnimation:(BOOL)a5
{
  v81 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v79 = 0;
  objc_storeStrong(&v79, a4);
  v78 = a5;
  if ([location[0] count] && v81->_shouldUpdateContent)
  {
    v77 = v79 == 0;
    v25 = [(CPSInstrumentClusterCardViewController *)v81 platterViewController];
    v76 = [(UIViewController *)v25 view];
    MEMORY[0x277D82BD8](v25);
    v26 = location[0];
    v67 = MEMORY[0x277D85DD0];
    v68 = -1073741824;
    v69 = 0;
    v70 = __95__CPSInstrumentClusterCardViewController__transitionFromViews_inView_horizontalSlideAnimation___block_invoke;
    v71 = &unk_278D94040;
    v72 = MEMORY[0x277D82BE0](v76);
    v74 = v77;
    v75 = v78;
    v73 = MEMORY[0x277D82BE0](v81);
    [v26 enumerateObjectsUsingBlock:&v67];
    if (v79 && v78)
    {
      [v76 layoutIfNeeded];
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
      v54 = MEMORY[0x277D82BE0](v81);
      [v24 animateWithDuration:0 delay:&v55 options:&v49 animations:0.4 completion:0.0];
      objc_storeStrong(&v54, 0);
      objc_storeStrong(&v60, 0);
    }

    objc_storeStrong(&v73, 0);
    objc_storeStrong(&v72, 0);
    objc_storeStrong(&v76, 0);
  }

  else if (v79 && v81->_shouldUpdateContent)
  {
    v22 = [(CPSInstrumentClusterCardViewController *)v81 platterViewController];
    v21 = [(UIViewController *)v22 view];
    [(UIView *)v21 layoutIfNeeded];
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
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
    v34 = MEMORY[0x277D82BE0](v81);
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

- (void)setLayoutOverride:(unint64_t)a3
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  self->_layoutOverride = a3;
  v10 = [(CPSInstrumentClusterCardViewController *)v17 layout];
  v11 = [(CPSInstrumentClusterCardLayout *)v10 layoutForCard];
  *&v3 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (v11 != v15)
  {
    if (v15)
    {
      v8 = [(CPSInstrumentClusterCardViewController *)v17 layout];
      shouldUpdateContent = 0;
      if (v8)
      {
        shouldUpdateContent = v17->_shouldUpdateContent;
      }

      *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
      if (shouldUpdateContent)
      {
        location = [(CPSInstrumentClusterCardViewController *)v17 layout];
        [location setLayoutForCard:v15];
        [(CPSInstrumentClusterCardViewController *)v17 setLayout:location];
        v6 = [(CPSInstrumentClusterCardViewController *)v17 currentPausedCardView];
        v12 = 0;
        v7 = 1;
        if (!v6)
        {
          v13 = [(CPSInstrumentClusterCardViewController *)v17 currentManeuversCardView];
          v12 = 1;
          v7 = v13 != 0;
        }

        if (v12)
        {
          MEMORY[0x277D82BD8](v13);
        }

        *&v5 = MEMORY[0x277D82BD8](v6).n128_u64[0];
        if (v7)
        {
          [(CPSInstrumentClusterCardViewController *)v17 _updateClientSafeArea];
        }

        objc_storeStrong(&location, 0);
      }
    }

    else
    {
      [(CPSInstrumentClusterCardViewController *)v17 _evaluateLayout];
    }
  }
}

- (void)viewController:(id)a3 didUpdateSafeAreaInsets:(UIEdgeInsets)a4
{
  v9 = a4;
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = location[0];
  v5 = [(CPSInstrumentClusterCardViewController *)v8 estimatesViewController];
  *&v4 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if (v6 == v5)
  {
    [(CPSInstrumentClusterCardViewController *)v8 _updateClientSafeArea];
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