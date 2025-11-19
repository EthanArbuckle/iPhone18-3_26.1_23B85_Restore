@interface CPSMapTemplateViewController
- (BOOL)_isAutoHideEnabled;
- (BOOL)_trailingMapButtonsVisible;
- (BOOL)canAnimateNavigationAlert;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)shouldForwardEventForWindow:(id)a3 eventType:(int64_t)a4;
- (BOOL)shouldUpdateFocusInContext:(id)a3;
- (CGPoint)lastPanGesturePoint;
- (CGPoint)safeAreaCenterPoint;
- (CPMapTemplate)mapTemplate;
- (CPSApplicationStateMonitor)applicationStateMonitor;
- (CPSMapTemplateViewController)initWithMapTemplate:(id)a3 templateDelegate:(id)a4 safeAreaDelegate:(id)a5 applicationStateMonitor:(id)a6 templateEnvironment:(id)a7;
- (CPSNavigatorObserving)navigatorObserver;
- (CPSSafeAreaDelegate)safeAreaDelegate;
- (UIEdgeInsets)_cardViewEdgeInsets;
- (UIEdgeInsets)_mapButtonsEdgeInsets;
- (UIEdgeInsets)_navBarInsets;
- (UIEdgeInsets)_navigationAlertInsets;
- (UIEdgeInsets)_previewEdgeInsets;
- (UIFocusItem)itemFocusedBeforeNavAlert;
- (UIFocusItem)lastFocusedItem;
- (UIFocusItem)lastNavigationBarFocusedItem;
- (double)_widthForNavigationAlert;
- (id)_buttonForIdentifier:(id)a3;
- (id)_linearFocusItems;
- (id)_tripDidBegin:(id)a3 withEstimates:(id)a4 forIdentifier:(id)a5;
- (id)preferredFocusEnvironments;
- (void)_addPanControllerAsChild;
- (void)_calculateAndUpdateCardWidthConstraint;
- (void)_checkNavigationCardHelperViewForETAFit;
- (void)_createNavigationCardViewController;
- (void)_createNavigationCardViewLayoutHelperView;
- (void)_handleFocusHolderSelect;
- (void)_handleOneFingerDoubleTapGesture:(id)a3;
- (void)_handlePanGesture:(id)a3;
- (void)_handlePinchGesture:(id)a3;
- (void)_handleRotationGesture:(id)a3;
- (void)_handleSwipeGesture:(id)a3;
- (void)_handleTapGesture:(id)a3;
- (void)_handleTwoFingerTapGesture:(id)a3;
- (void)_hideBar:(id)a3;
- (void)_nightModeChanged:(id)a3;
- (void)_performAlertSizingForAlert:(id)a3 animated:(BOOL)a4;
- (void)_reloadPreviewsView;
- (void)_removePanController;
- (void)_resetAutoHideTimerAndShowBarAnimated:(BOOL)a3 allowFocusDeferral:(BOOL)a4;
- (void)_setAutoHideDisabled:(BOOL)a3 forRequester:(id)a4;
- (void)_setButtonsHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)_setETAViewHidden:(BOOL)a3 forRequester:(id)a4 animated:(BOOL)a5;
- (void)_setFocusHoldersEnabled:(BOOL)a3;
- (void)_setMaximumVisibleMapButtons:(unint64_t)a3;
- (void)_setNavigationAlertView:(id)a3 visible:(BOOL)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)_setPanInterfaceVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)_showBarAnimated:(BOOL)a3 allowFocusDeferral:(BOOL)a4;
- (void)_updateETAViewHidden;
- (void)_updateInterestingArea;
- (void)_updateMapButtonVisibility;
- (void)_updateMapButtonsWithButtons:(id)a3;
- (void)_updatePanGestureForHiFiTouch;
- (void)_updateSafeArea;
- (void)_viewDidLoad;
- (void)applicationStateMonitor:(id)a3 didBecomeActive:(BOOL)a4;
- (void)dealloc;
- (void)didChangeLayout:(id)a3;
- (void)didSelectButton:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)dismissNavigationAlertAnimated:(BOOL)a3 completion:(id)a4;
- (void)hostPanInterfaceVisible:(id)a3;
- (void)hostSetMapButton:(id)a3 imageSet:(id)a4;
- (void)hostSetMapButtons:(id)a3;
- (void)hostSetPanInterfaceVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)hostStartNavigationSessionForTrip:(id)a3 reply:(id)a4;
- (void)hostUpdateTravelEstimates:(id)a3 forTripIdentifier:(id)a4;
- (void)invalidate;
- (void)navigationAlertQueue:(id)a3 shouldDisplayAlertView:(id)a4 animated:(BOOL)a5;
- (void)navigationAlertQueue:(id)a3 shouldRemoveAlertView:(id)a4 animated:(BOOL)a5 dismissalContext:(unint64_t)a6 completion:(id)a7;
- (void)navigationOwnershipChangedToOwner:(unint64_t)a3;
- (void)navigator:(id)a3 didEndTrip:(BOOL)a4;
- (void)navigator:(id)a3 pausedTripForReason:(unint64_t)a4 description:(id)a5 usingColor:(id)a6;
- (void)observerDeliveryPolicyDidChange:(id)a3;
- (void)panBeganWithDirection:(int64_t)a3;
- (void)panEndedWithDirection:(int64_t)a3;
- (void)panWithDirection:(int64_t)a3;
- (void)sessionDidConnect:(id)a3;
- (void)setControl:(id)a3 enabled:(BOOL)a4;
- (void)setGuidanceBackgroundColor:(id)a3;
- (void)setHostAutoHidesNavigationBar:(BOOL)a3;
- (void)setHostGuidanceBackgroundColor:(id)a3;
- (void)setHostHidesButtonsWithNavigationBar:(BOOL)a3;
- (void)setHostTripEstimateStyle:(unint64_t)a3;
- (void)setHostTripPreviews:(id)a3 textConfiguration:(id)a4 previewOnlyRouteChoices:(BOOL)a5 selectedIndex:(unint64_t)a6;
- (void)setMapButton:(id)a3 focusedImage:(id)a4;
- (void)setMapButton:(id)a3 hidden:(BOOL)a4;
- (void)setPreviewsView:(id)a3;
- (void)setTripEstimateStyle:(unint64_t)a3;
- (void)showManeuvers:(id)a3 usingDisplayStyles:(id)a4;
- (void)showNavigationAlert:(id)a3 animated:(BOOL)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)tripView:(id)a3 selectedTrip:(id)a4 routeChoice:(id)a5;
- (void)tripView:(id)a3 startedTrip:(id)a4 routeChoice:(id)a5;
- (void)updateEstimates:(id)a3 forManeuver:(id)a4;
- (void)updateNavigationAlert:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CPSMapTemplateViewController

- (CPSMapTemplateViewController)initWithMapTemplate:(id)a3 templateDelegate:(id)a4 safeAreaDelegate:(id)a5 applicationStateMonitor:(id)a6 templateEnvironment:(id)a7
{
  v51 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v49 = 0;
  objc_storeStrong(&v49, a4);
  v48 = 0;
  objc_storeStrong(&v48, a5);
  v47 = 0;
  objc_storeStrong(&v47, a6);
  v46 = 0;
  objc_storeStrong(&v46, a7);
  v7 = v51;
  v51 = 0;
  v45.receiver = v7;
  v45.super_class = CPSMapTemplateViewController;
  v42 = [(CPSBaseTemplateViewController *)&v45 initWithTemplate:location[0] templateDelegate:v49 templateEnvironment:v46];
  v51 = v42;
  objc_storeStrong(&v51, v42);
  if (v42)
  {
    v8 = objc_alloc_init(MEMORY[0x277CF0678]);
    eventDeliveryPolicyObserver = v51->_eventDeliveryPolicyObserver;
    v51->_eventDeliveryPolicyObserver = v8;
    *&v10 = MEMORY[0x277D82BD8](eventDeliveryPolicyObserver).n128_u64[0];
    v34 = v51->_eventDeliveryPolicyObserver;
    v35 = [MEMORY[0x277CF0628] keyboardFocusEnvironment];
    [(BKSHIDEventDeliveryPolicyObserver *)v34 setDeferringEnvironment:?];
    *&v11 = MEMORY[0x277D82BD8](v35).n128_u64[0];
    [(BKSHIDEventDeliveryPolicyObserver *)v51->_eventDeliveryPolicyObserver addObserver:v51, v11];
    v36 = [v46 sessionStatus];
    [v36 addSessionObserver:v51];
    MEMORY[0x277D82BD8](v36);
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mapButtons = v51->_mapButtons;
    v51->_mapButtons = v12;
    *&v14 = MEMORY[0x277D82BD8](mapButtons).n128_u64[0];
    v51->_maximumMapButtonCount = 4;
    v15 = [MEMORY[0x277CBEB38] dictionary];
    lastTravelEstimatesByTrip = v51->_lastTravelEstimatesByTrip;
    v51->_lastTravelEstimatesByTrip = v15;
    *&v17 = MEMORY[0x277D82BD8](lastTravelEstimatesByTrip).n128_u64[0];
    v18 = [location[0] automaticallyHidesNavigationBar];
    v51->_autoHidesNavigationBar = v18;
    v19 = [location[0] hidesButtonsWithNavigationBar];
    v51->_hidesButtonsWithNavigationBar = v19;
    v20 = [location[0] hidesButtonsWithNavigationBar];
    v51->_hidesButtonsWithNavigationBar = v20;
    objc_storeStrong(&v51->_tripPreviews, 0);
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"0-Demo Auto Hide Timer Disabled", @"com.apple.internal.Neatline", &keyExistsAndHasValidFormat);
    v37 = 0;
    if (keyExistsAndHasValidFormat)
    {
      v37 = AppBooleanValue != 0;
    }

    v51->_demoAutoHideTimerDisabled = v37;
    v21 = [CPSNavigationAlertQueue alloc];
    v22 = [(CPSNavigationAlertQueue *)v21 initWithDelegate:v51 applicationStateMonitor:v47];
    navigationAlertQueue = v51->_navigationAlertQueue;
    v51->_navigationAlertQueue = v22;
    MEMORY[0x277D82BD8](navigationAlertQueue);
    objc_storeWeak(&v51->_safeAreaDelegate, v48);
    v24 = [v46 rightHandDrive];
    v51->_rightHandDrive = v24;
    v51->_applicationIsFrontmost = 1;
    objc_storeWeak(&v51->_applicationStateMonitor, v47);
    [v47 addApplicationStateObserver:v51];
    v32 = v47;
    v33 = [(CPSMapTemplateViewController *)v51 navigationAlertQueue];
    [v32 addApplicationStateObserver:?];
    *&v25 = MEMORY[0x277D82BD8](v33).n128_u64[0];
    v26 = [location[0] guidanceBackgroundColor];
    guidanceBackgroundColor = v51->_guidanceBackgroundColor;
    v51->_guidanceBackgroundColor = v26;
    *&v28 = MEMORY[0x277D82BD8](guidanceBackgroundColor).n128_u64[0];
    v29 = [location[0] tripEstimateStyle];
    v51->_tripEstimateStyle = v29;
  }

  v31 = MEMORY[0x277D82BE0](v51);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v51, 0);
  return v31;
}

- (void)invalidate
{
  v12 = self;
  v11 = a2;
  v4 = [(CPSMapTemplateViewController *)self navigatorObserver];
  v3 = [(CPSMapTemplateViewController *)v12 navigator];
  [(CPSNavigatorObserving *)v4 willInvalidateNavigator:?];
  MEMORY[0x277D82BD8](v3);
  v5 = [(CPSMapTemplateViewController *)v12 navigator];
  [(CPSNavigator *)v5 invalidate];
  v6 = [(CPSMapTemplateViewController *)v12 applicationStateMonitor];
  [(CPSApplicationStateMonitor *)v6 removeApplicationStateObserver:v12];
  v8 = [(CPSMapTemplateViewController *)v12 applicationStateMonitor];
  v7 = [(CPSMapTemplateViewController *)v12 navigationAlertQueue];
  [(CPSApplicationStateMonitor *)v8 removeApplicationStateObserver:?];
  MEMORY[0x277D82BD8](v7);
  v9 = [(CPSMapTemplateViewController *)v12 eventDeliveryPolicyObserver];
  [(BKSHIDEventDeliveryPolicyObserver *)v9 removeObserver:v12];
  *&v2 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v10.receiver = v12;
  v10.super_class = CPSMapTemplateViewController;
  [(CPSBaseTemplateViewController *)&v10 invalidate];
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(CPSMapTemplateViewController *)self invalidate];
  v2.receiver = v4;
  v2.super_class = CPSMapTemplateViewController;
  [(CPSBaseTemplateViewController *)&v2 dealloc];
}

- (void)setGuidanceBackgroundColor:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v5->_guidanceBackgroundColor != location[0])
  {
    objc_storeStrong(&v5->_guidanceBackgroundColor, location[0]);
    v3 = [(CPSMapTemplateViewController *)v5 navigationCardViewController];
    [(CPSNavigationCardViewController *)v3 setGuidanceBackgroundColor:v5->_guidanceBackgroundColor];
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(location, 0);
}

- (void)traitCollectionDidChange:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10.receiver = v12;
  v10.super_class = CPSMapTemplateViewController;
  [(CPSMapTemplateViewController *)&v10 traitCollectionDidChange:location[0]];
  v8 = 0;
  v7 = 0;
  if (![(CPSMapTemplateViewController *)v12 hasSetTripEstimateStyle])
  {
    v9 = [(CPSMapTemplateViewController *)v12 navigationETAView];
    v8 = 1;
    v7 = v9 != 0;
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  if (v7)
  {
    v5 = [(CPSMapTemplateViewController *)v12 traitCollection];
    v6 = [v5 userInterfaceStyle];
    *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
    v4 = [(CPSMapTemplateViewController *)v12 navigationETAView];
    [(CPSNavigationETAView *)v4 setTripEstimateStyle:v6 != 1];
    MEMORY[0x277D82BD8](v4);
  }

  [(CPSMapTemplateViewController *)v12 _updatePanGestureForHiFiTouch];
  objc_storeStrong(location, 0);
}

- (void)setTripEstimateStyle:(unint64_t)a3
{
  [(CPSMapTemplateViewController *)self setHasSetTripEstimateStyle:1];
  if (self->_tripEstimateStyle != a3)
  {
    self->_tripEstimateStyle = a3;
    v5 = [(CPSMapTemplateViewController *)self navigationETAView];
    *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
    if (v5)
    {
      v4 = [(CPSMapTemplateViewController *)self navigationETAView];
      [(CPSNavigationETAView *)v4 setTripEstimateStyle:self->_tripEstimateStyle];
      MEMORY[0x277D82BD8](v4);
    }
  }
}

- (CPMapTemplate)mapTemplate
{
  v3 = objc_opt_class();
  v4 = [(CPSBaseTemplateViewController *)self associatedTemplate];
  v5 = CPSSafeCast_22(v3, v4);
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (void)_viewDidLoad
{
  v180[3] = *MEMORY[0x277D85DE8];
  v177 = self;
  v176 = a2;
  v175.receiver = self;
  v175.super_class = CPSMapTemplateViewController;
  [(CPSBaseTemplateViewController *)&v175 _viewDidLoad];
  v174 = [(CPSMapTemplateViewController *)v177 view];
  v2 = objc_alloc(MEMORY[0x277D75A68]);
  v173 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v173 setAxis:1];
  [v173 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v173 setSpacing:8.0];
  [v174 addSubview:v173];
  [(CPSMapTemplateViewController *)v177 setTrailingBottomStackView:v173];
  v142 = v177;
  v144 = [(CPSMapTemplateViewController *)v177 mapTemplate];
  v143 = [(CPMapTemplate *)v144 mapButtons];
  [(CPSMapTemplateViewController *)v142 _updateMapButtonsWithButtons:?];
  MEMORY[0x277D82BD8](v143);
  *&v3 = MEMORY[0x277D82BD8](v144).n128_u64[0];
  v170 = 0;
  v168 = 0;
  v166 = 0;
  v164 = 0;
  if ([(CPSMapTemplateViewController *)v177 rightHandDrive])
  {
    v171 = [v174 safeAreaLayoutGuide];
    v170 = 1;
    v169 = [v171 leftAnchor];
    v168 = 1;
    v4 = MEMORY[0x277D82BE0](v169);
  }

  else
  {
    v167 = [v174 safeAreaLayoutGuide];
    v166 = 1;
    v165 = [v167 rightAnchor];
    v164 = 1;
    v4 = MEMORY[0x277D82BE0](v165);
  }

  v172 = v4;
  if (v164)
  {
    MEMORY[0x277D82BD8](v165);
  }

  if (v166)
  {
    MEMORY[0x277D82BD8](v167);
  }

  if (v168)
  {
    MEMORY[0x277D82BD8](v169);
  }

  if (v170)
  {
    MEMORY[0x277D82BD8](v171);
  }

  v161 = 0;
  v159 = 0;
  if ([(CPSMapTemplateViewController *)v177 rightHandDrive])
  {
    v162 = [v173 leftAnchor];
    v161 = 1;
    v5 = MEMORY[0x277D82BE0](v162);
  }

  else
  {
    v160 = [v173 rightAnchor];
    v159 = 1;
    v5 = MEMORY[0x277D82BE0](v160);
  }

  v163 = v5;
  if (v159)
  {
    MEMORY[0x277D82BD8](v160);
  }

  if (v161)
  {
    MEMORY[0x277D82BD8](v162);
  }

  if ([(CPSMapTemplateViewController *)v177 rightHandDrive])
  {
    v6 = _UISolariumEnabled();
    v7 = 4.0;
    if ((v6 & 1) == 0)
    {
      v7 = 8.0;
    }

    v141 = -v7;
  }

  else
  {
    v8 = _UISolariumEnabled();
    v9 = 4.0;
    if ((v8 & 1) == 0)
    {
      v9 = 8.0;
    }

    v141 = v9;
  }

  v158[1] = *&v141;
  v43 = [v172 constraintEqualToAnchor:v163 constant:v141];
  v180[0] = v43;
  v42 = [v174 safeAreaLayoutGuide];
  v41 = [v42 bottomAnchor];
  v40 = [v173 bottomAnchor];
  v10 = _UISolariumEnabled();
  v11 = 4.0;
  if ((v10 & 1) == 0)
  {
    v11 = 8.0;
  }

  v39 = [v41 constraintEqualToAnchor:v40 constant:v11];
  v180[1] = v39;
  v38 = [v173 widthAnchor];
  v37 = [v38 constraintEqualToConstant:36.0];
  v180[2] = v37;
  v158[0] = [MEMORY[0x277CBEA60] arrayWithObjects:v180 count:3];
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  *&v12 = MEMORY[0x277D82BD8](v43).n128_u64[0];
  [MEMORY[0x277CCAAD0] activateConstraints:{v158[0], v12}];
  [(CPSMapTemplateViewController *)v177 _reloadPreviewsView];
  v13 = objc_alloc(MEMORY[0x277D75B80]);
  v157 = [v13 initWithTarget:v177 action:sel__handleTapGesture_];
  [v157 setNumberOfTapsRequired:?];
  [v157 setDelegate:v177];
  [v174 addGestureRecognizer:v157];
  [(CPSMapTemplateViewController *)v177 setHideTapGestureRecognizer:v157];
  v14 = objc_alloc(MEMORY[0x277D75B80]);
  v156 = [v14 initWithTarget:v177 action:?];
  [v156 setNumberOfTapsRequired:1];
  [v156 setDelegate:v177];
  v45 = [(CPSMapTemplateViewController *)v177 navigationController];
  v44 = [v45 navigationBar];
  [v44 addGestureRecognizer:v156];
  MEMORY[0x277D82BD8](v44);
  *&v15 = MEMORY[0x277D82BD8](v45).n128_u64[0];
  [(CPSMapTemplateViewController *)v177 setNavBarHideTapGestureRecognizer:v156, v15];
  [(CPSMapTemplateViewController *)v177 _updatePanGestureForHiFiTouch];
  v16 = objc_alloc(MEMORY[0x277D75848]);
  v155 = [v16 initWithTarget:v177 action:sel__handlePinchGesture_];
  [v155 setDelegate:v177];
  [v174 addGestureRecognizer:v155];
  [(CPSMapTemplateViewController *)v177 setPinchGestureRecognizer:v155];
  v17 = objc_alloc(MEMORY[0x277D75B80]);
  v154 = [v17 initWithTarget:v177 action:sel__handleTwoFingerTapGesture_];
  [v154 setNumberOfTapsRequired:1];
  [v154 setNumberOfTouchesRequired:?];
  [v154 setDelegate:v177];
  [v174 addGestureRecognizer:v154];
  [(CPSMapTemplateViewController *)v177 setTwoFingerTapGestureRecognizer:v154];
  v18 = objc_alloc(MEMORY[0x277D75B80]);
  v153 = [v18 initWithTarget:v177 action:sel__handleOneFingerDoubleTapGesture_];
  [v153 setNumberOfTapsRequired:2];
  [v153 setNumberOfTouchesRequired:1];
  [v153 setDelegate:v177];
  [v174 addGestureRecognizer:v153];
  [(CPSMapTemplateViewController *)v177 setOneFingerDoubleTapGestureRecognizer:v153];
  v47 = [(CPSMapTemplateViewController *)v177 hideTapGestureRecognizer];
  v46 = [(CPSMapTemplateViewController *)v177 oneFingerDoubleTapGestureRecognizer];
  [(UITapGestureRecognizer *)v47 requireGestureRecognizerToFail:?];
  MEMORY[0x277D82BD8](v46);
  *&v19 = MEMORY[0x277D82BD8](v47).n128_u64[0];
  v49 = [(CPSMapTemplateViewController *)v177 navBarHideTapGestureRecognizer];
  v48 = [(CPSMapTemplateViewController *)v177 oneFingerDoubleTapGestureRecognizer];
  [(UITapGestureRecognizer *)v49 requireGestureRecognizerToFail:?];
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BD8](v49);
  v20 = objc_alloc(MEMORY[0x277D75938]);
  v152 = [v20 initWithTarget:v177 action:sel__handleRotationGesture_];
  [v152 setDelegate:v177];
  [v174 addGestureRecognizer:v152];
  [(CPSMapTemplateViewController *)v177 setRotationGestureRecognizer:v152];
  v21 = objc_alloc(MEMORY[0x277D757F8]);
  v151 = [v21 initWithTarget:v177 action:sel__handleSwipeGesture_];
  [v151 setDelegate:v177];
  [v151 setMinimumNumberOfTouches:2];
  [v174 addGestureRecognizer:v151];
  [(CPSMapTemplateViewController *)v177 setPanForPitchGestureRecognizer:v151];
  v50 = [MEMORY[0x277CCAB98] defaultCenter];
  [v50 addObserver:v177 selector:sel__nightModeChanged_ name:*MEMORY[0x277CF8930] object:0];
  *&v22 = MEMORY[0x277D82BD8](v50).n128_u64[0];
  [(CPSMapTemplateViewController *)v177 _resetAutoHideTimerAndShowBarAnimated:1 allowFocusDeferral:1, v22];
  v51 = [CPSPanViewController alloc];
  v52 = [(CPSBaseTemplateViewController *)v177 templateEnvironment];
  v150 = [(CPSPanViewController *)v51 initWithEnvironment:?];
  *&v23 = MEMORY[0x277D82BD8](v52).n128_u64[0];
  [(CPSPanViewController *)v150 setPanDelegate:v177, v23];
  [(CPSMapTemplateViewController *)v177 setPanViewController:v150];
  v24 = objc_alloc(MEMORY[0x277D75D18]);
  v149 = [v24 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v149 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v149 setHidden:1];
  [v174 insertSubview:v149 belowSubview:v173];
  v55 = [v149 leftAnchor];
  v54 = [v174 leftAnchor];
  [v174 safeAreaInsets];
  v148[5] = v25;
  v148[6] = v26;
  v148[7] = v27;
  v148[8] = v28;
  v53 = [v55 constraintEqualToAnchor:v54 constant:*&v26];
  [(CPSMapTemplateViewController *)v177 setPanContainerLeftConstraint:?];
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BD8](v54);
  *&v29 = MEMORY[0x277D82BD8](v55).n128_u64[0];
  v58 = [v149 rightAnchor];
  v57 = [v174 rightAnchor];
  [v174 safeAreaInsets];
  v148[1] = v30;
  v148[2] = v31;
  v148[3] = v32;
  v148[4] = v33;
  v56 = [v58 constraintEqualToAnchor:v57 constant:*&v33];
  [(CPSMapTemplateViewController *)v177 setPanContainerRightConstraint:?];
  MEMORY[0x277D82BD8](v56);
  MEMORY[0x277D82BD8](v57);
  *&v34 = MEMORY[0x277D82BD8](v58).n128_u64[0];
  v59 = v174;
  v70 = [(CPSMapTemplateViewController *)v177 panContainerLeftConstraint];
  v179[0] = v70;
  v69 = [v149 topAnchor];
  v68 = [v174 safeAreaLayoutGuide];
  v67 = [v68 topAnchor];
  v66 = [v69 constraintEqualToAnchor:?];
  v179[1] = v66;
  v65 = [(CPSMapTemplateViewController *)v177 panContainerRightConstraint];
  v179[2] = v65;
  v64 = [v149 bottomAnchor];
  v63 = [v174 safeAreaLayoutGuide];
  v62 = [v63 bottomAnchor];
  v61 = [v64 constraintEqualToAnchor:?];
  v179[3] = v61;
  v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v179 count:4];
  [v59 addConstraints:?];
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
  *&v35 = MEMORY[0x277D82BD8](v70).n128_u64[0];
  [(CPSMapTemplateViewController *)v177 setPanContainerView:v149, v35];
  v148[0] = [_CPSFocusHoldingButton buttonWithType:0];
  [v148[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v148[0] setEnabled:0];
  [v148[0] addTarget:v177 action:sel__handleFocusHolderSelect forControlEvents:0x2000];
  [v174 addSubview:v148[0]];
  [(CPSMapTemplateViewController *)v177 setFocusHoldingButton:v148[0]];
  v147 = objc_alloc_init(MEMORY[0x277D75500]);
  [v174 addLayoutGuide:v147];
  [v147 setEnabled:0];
  [(CPSMapTemplateViewController *)v177 setFocusHolderLeftFocusGuide:v147];
  v146 = objc_alloc_init(MEMORY[0x277D75500]);
  [v174 addLayoutGuide:v146];
  [v146 setEnabled:0];
  [(CPSMapTemplateViewController *)v177 setFocusHolderRightFocusGuide:v146];
  v145 = objc_alloc_init(MEMORY[0x277D754F8]);
  [v174 addLayoutGuide:v145];
  v71 = MEMORY[0x277CCAAD0];
  v140 = [(CPSMapTemplateViewController *)v177 focusHolderLeftFocusGuide];
  v139 = [(UIFocusGuide *)v140 widthAnchor];
  v138 = [v139 constraintEqualToConstant:?];
  v178[0] = v138;
  v137 = [(CPSMapTemplateViewController *)v177 focusHolderLeftFocusGuide];
  v136 = [(UIFocusGuide *)v137 rightAnchor];
  v135 = [(CPSMapTemplateViewController *)v177 focusHoldingButton];
  v134 = [(_CPSFocusHoldingButton *)v135 leftAnchor];
  v133 = [v136 constraintEqualToAnchor:?];
  v178[1] = v133;
  v132 = [(CPSMapTemplateViewController *)v177 focusHolderLeftFocusGuide];
  v131 = [(UIFocusGuide *)v132 bottomAnchor];
  v130 = [(CPSMapTemplateViewController *)v177 focusHoldingButton];
  v129 = [(_CPSFocusHoldingButton *)v130 bottomAnchor];
  v128 = [v131 constraintEqualToAnchor:?];
  v178[2] = v128;
  v127 = [(CPSMapTemplateViewController *)v177 focusHolderLeftFocusGuide];
  v126 = [(UIFocusGuide *)v127 topAnchor];
  v125 = [(CPSMapTemplateViewController *)v177 focusHoldingButton];
  v124 = [(_CPSFocusHoldingButton *)v125 topAnchor];
  v123 = [v126 constraintEqualToAnchor:?];
  v178[3] = v123;
  v122 = [(CPSMapTemplateViewController *)v177 focusHolderRightFocusGuide];
  v121 = [(UIFocusGuide *)v122 widthAnchor];
  v120 = [v121 constraintEqualToConstant:1.0];
  v178[4] = v120;
  v119 = [(CPSMapTemplateViewController *)v177 focusHolderRightFocusGuide];
  v118 = [(UIFocusGuide *)v119 leftAnchor];
  v117 = [(CPSMapTemplateViewController *)v177 focusHoldingButton];
  v116 = [(_CPSFocusHoldingButton *)v117 rightAnchor];
  v115 = [v118 constraintEqualToAnchor:?];
  v178[5] = v115;
  v114 = [(CPSMapTemplateViewController *)v177 focusHolderRightFocusGuide];
  v113 = [(UIFocusGuide *)v114 bottomAnchor];
  v112 = [(CPSMapTemplateViewController *)v177 focusHoldingButton];
  v111 = [(_CPSFocusHoldingButton *)v112 bottomAnchor];
  v110 = [v113 constraintEqualToAnchor:?];
  v178[6] = v110;
  v109 = [(CPSMapTemplateViewController *)v177 focusHolderRightFocusGuide];
  v108 = [(UIFocusGuide *)v109 topAnchor];
  v107 = [(CPSMapTemplateViewController *)v177 focusHoldingButton];
  v106 = [(_CPSFocusHoldingButton *)v107 topAnchor];
  v105 = [v108 constraintEqualToAnchor:?];
  v178[7] = v105;
  v104 = [(CPSMapTemplateViewController *)v177 focusHoldingButton];
  v103 = [(_CPSFocusHoldingButton *)v104 widthAnchor];
  v102 = [v103 constraintEqualToConstant:1.0];
  v178[8] = v102;
  v101 = [(CPSMapTemplateViewController *)v177 focusHoldingButton];
  v100 = [(_CPSFocusHoldingButton *)v101 heightAnchor];
  v99 = [v100 constraintEqualToConstant:1.0];
  v178[9] = v99;
  v98 = [(CPSMapTemplateViewController *)v177 focusHoldingButton];
  v97 = [(_CPSFocusHoldingButton *)v98 topAnchor];
  v96 = [v174 safeAreaLayoutGuide];
  v95 = [v96 topAnchor];
  v94 = [v97 constraintEqualToAnchor:?];
  v178[10] = v94;
  v93 = [(CPSMapTemplateViewController *)v177 focusHoldingButton];
  v92 = [(_CPSFocusHoldingButton *)v93 leftAnchor];
  v91 = [v174 safeAreaLayoutGuide];
  v90 = [v91 leftAnchor];
  v89 = [v92 constraintEqualToAnchor:?];
  v178[11] = v89;
  v88 = [v145 topAnchor];
  v87 = [v174 safeAreaLayoutGuide];
  v86 = [v87 topAnchor];
  v85 = [v88 constraintEqualToAnchor:?];
  v178[12] = v85;
  v84 = [v145 bottomAnchor];
  v83 = [v174 safeAreaLayoutGuide];
  v82 = [v83 bottomAnchor];
  v81 = [v84 constraintEqualToAnchor:?];
  v178[13] = v81;
  v80 = [v145 leftAnchor];
  v79 = [v174 safeAreaLayoutGuide];
  v78 = [v79 leftAnchor];
  v77 = [v80 constraintEqualToAnchor:?];
  v178[14] = v77;
  v76 = [v145 rightAnchor];
  v75 = [v174 safeAreaLayoutGuide];
  v74 = [v75 rightAnchor];
  v73 = [v76 constraintEqualToAnchor:?];
  v178[15] = v73;
  v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v178 count:16];
  [v71 activateConstraints:?];
  MEMORY[0x277D82BD8](v72);
  MEMORY[0x277D82BD8](v73);
  MEMORY[0x277D82BD8](v74);
  MEMORY[0x277D82BD8](v75);
  MEMORY[0x277D82BD8](v76);
  MEMORY[0x277D82BD8](v77);
  MEMORY[0x277D82BD8](v78);
  MEMORY[0x277D82BD8](v79);
  MEMORY[0x277D82BD8](v80);
  MEMORY[0x277D82BD8](v81);
  MEMORY[0x277D82BD8](v82);
  MEMORY[0x277D82BD8](v83);
  MEMORY[0x277D82BD8](v84);
  MEMORY[0x277D82BD8](v85);
  MEMORY[0x277D82BD8](v86);
  MEMORY[0x277D82BD8](v87);
  MEMORY[0x277D82BD8](v88);
  MEMORY[0x277D82BD8](v89);
  MEMORY[0x277D82BD8](v90);
  MEMORY[0x277D82BD8](v91);
  MEMORY[0x277D82BD8](v92);
  MEMORY[0x277D82BD8](v93);
  MEMORY[0x277D82BD8](v94);
  MEMORY[0x277D82BD8](v95);
  MEMORY[0x277D82BD8](v96);
  MEMORY[0x277D82BD8](v97);
  MEMORY[0x277D82BD8](v98);
  MEMORY[0x277D82BD8](v99);
  MEMORY[0x277D82BD8](v100);
  MEMORY[0x277D82BD8](v101);
  MEMORY[0x277D82BD8](v102);
  MEMORY[0x277D82BD8](v103);
  MEMORY[0x277D82BD8](v104);
  MEMORY[0x277D82BD8](v105);
  MEMORY[0x277D82BD8](v106);
  MEMORY[0x277D82BD8](v107);
  MEMORY[0x277D82BD8](v108);
  MEMORY[0x277D82BD8](v109);
  MEMORY[0x277D82BD8](v110);
  MEMORY[0x277D82BD8](v111);
  MEMORY[0x277D82BD8](v112);
  MEMORY[0x277D82BD8](v113);
  MEMORY[0x277D82BD8](v114);
  MEMORY[0x277D82BD8](v115);
  MEMORY[0x277D82BD8](v116);
  MEMORY[0x277D82BD8](v117);
  MEMORY[0x277D82BD8](v118);
  MEMORY[0x277D82BD8](v119);
  MEMORY[0x277D82BD8](v120);
  MEMORY[0x277D82BD8](v121);
  MEMORY[0x277D82BD8](v122);
  MEMORY[0x277D82BD8](v123);
  MEMORY[0x277D82BD8](v124);
  MEMORY[0x277D82BD8](v125);
  MEMORY[0x277D82BD8](v126);
  MEMORY[0x277D82BD8](v127);
  MEMORY[0x277D82BD8](v128);
  MEMORY[0x277D82BD8](v129);
  MEMORY[0x277D82BD8](v130);
  MEMORY[0x277D82BD8](v131);
  MEMORY[0x277D82BD8](v132);
  MEMORY[0x277D82BD8](v133);
  MEMORY[0x277D82BD8](v134);
  MEMORY[0x277D82BD8](v135);
  MEMORY[0x277D82BD8](v136);
  MEMORY[0x277D82BD8](v137);
  MEMORY[0x277D82BD8](v138);
  MEMORY[0x277D82BD8](v139);
  *&v36 = MEMORY[0x277D82BD8](v140).n128_u64[0];
  [(CPSMapTemplateViewController *)v177 _createNavigationCardViewController];
  [(CPSMapTemplateViewController *)v177 _createNavigationCardViewLayoutHelperView];
  [(CPSMapTemplateViewController *)v177 _updateSafeArea];
  objc_storeStrong(&v145, 0);
  objc_storeStrong(&v146, 0);
  objc_storeStrong(&v147, 0);
  objc_storeStrong(v148, 0);
  objc_storeStrong(&v149, 0);
  objc_storeStrong(&v150, 0);
  objc_storeStrong(&v151, 0);
  objc_storeStrong(&v152, 0);
  objc_storeStrong(&v153, 0);
  objc_storeStrong(&v154, 0);
  objc_storeStrong(&v155, 0);
  objc_storeStrong(&v156, 0);
  objc_storeStrong(&v157, 0);
  objc_storeStrong(v158, 0);
  objc_storeStrong(&v163, 0);
  objc_storeStrong(&v172, 0);
  objc_storeStrong(&v173, 0);
  objc_storeStrong(&v174, 0);
}

- (void)_setMaximumVisibleMapButtons:(unint64_t)a3
{
  v3 = a3;
  if (a3 > 4)
  {
    v3 = 4;
  }

  if (v3 != [(CPSMapTemplateViewController *)self maximumMapButtonCount])
  {
    [(CPSMapTemplateViewController *)self setMaximumMapButtonCount:v3];
    [(CPSMapTemplateViewController *)self _updateMapButtonVisibility];
  }
}

- (void)_updateMapButtonVisibility
{
  v15 = self;
  v14 = a2;
  v4 = [(CPSMapTemplateViewController *)self mapButtons];
  v12 = [(NSMutableArray *)v4 count];
  v11 = [(CPSMapTemplateViewController *)v15 maximumMapButtonCount];
  if (v12 >= v11)
  {
    v3 = v11;
  }

  else
  {
    v3 = v12;
  }

  v10[2] = v3;
  v13 = v3;
  v2 = MEMORY[0x277D75D18];
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __58__CPSMapTemplateViewController__updateMapButtonVisibility__block_invoke;
  v9 = &unk_278D91E38;
  v10[0] = MEMORY[0x277D82BE0](v15);
  v10[1] = v13;
  [v2 performWithoutAnimation:&v5];
  objc_storeStrong(v10, 0);
}

unint64_t __58__CPSMapTemplateViewController__updateMapButtonVisibility__block_invoke(uint64_t a1)
{
  v12 = [*(a1 + 32) mapButtons];
  v13 = [v12 count] - *(a1 + 40);
  v1 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  for (i = 0; i < v13; ++i)
  {
    v9 = [*(a1 + 32) mapButtons];
    v10 = [v9 count];
    v1 = MEMORY[0x277D82BD8](v9).n128_u64[0];
    if (i < v10)
    {
      v8 = [*(a1 + 32) mapButtons];
      v7 = [v8 objectAtIndexedSubscript:i];
      [v7 setHidden:1];
      MEMORY[0x277D82BD8](v7);
      v1 = MEMORY[0x277D82BD8](v8).n128_u64[0];
    }
  }

  for (j = v13; ; ++j)
  {
    result = [*(a1 + 32) maximumMapButtonCount];
    if (j >= result)
    {
      break;
    }

    v5 = [*(a1 + 32) mapButtons];
    v6 = [v5 count];
    v1 = MEMORY[0x277D82BD8](v5).n128_u64[0];
    if (j < v6)
    {
      v4 = [*(a1 + 32) mapButtons];
      v3 = [v4 objectAtIndexedSubscript:j];
      [v3 setHidden:0];
      MEMORY[0x277D82BD8](v3);
      v1 = MEMORY[0x277D82BD8](v4).n128_u64[0];
    }
  }

  return result;
}

- (void)_updateMapButtonsWithButtons:(id)a3
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = [(CPSMapTemplateViewController *)v21 viewIfLoaded];
  *&v3 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  if (v12)
  {
    v7 = [(CPSMapTemplateViewController *)v21 trailingBottomStackView];
    v6 = [(UIStackView *)v7 arrangedSubviews];
    v5 = [(NSArray *)v6 copy];
    [v5 enumerateObjectsUsingBlock:&__block_literal_global_16];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    *&v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
    v8 = [(CPSMapTemplateViewController *)v21 mapButtons];
    [(NSMutableArray *)v8 removeAllObjects];
    MEMORY[0x277D82BD8](v8);
    v9 = location[0];
    v13 = MEMORY[0x277D85DD0];
    v14 = -1073741824;
    v15 = 0;
    v16 = __61__CPSMapTemplateViewController__updateMapButtonsWithButtons___block_invoke_2;
    v17 = &unk_278D94190;
    v18 = MEMORY[0x277D82BE0](v21);
    [v9 enumerateObjectsUsingBlock:&v13];
    [(CPSMapTemplateViewController *)v21 _updateMapButtonVisibility];
    [(CPSMapTemplateViewController *)v21 _updateSafeArea];
    objc_storeStrong(&v18, 0);
    v19 = 0;
  }

  else
  {
    v10 = location[0];
    v11 = [(CPSMapTemplateViewController *)v21 mapTemplate];
    [(CPMapTemplate *)v11 setMapButtons:v10];
    MEMORY[0x277D82BD8](v11);
    v19 = 1;
  }

  objc_storeStrong(location, 0);
}

void __61__CPSMapTemplateViewController__updateMapButtonsWithButtons___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] removeFromSuperview];
  objc_storeStrong(location, 0);
}

void __61__CPSMapTemplateViewController__updateMapButtonsWithButtons___block_invoke_2(id *a1, void *a2, char *a3, void *a4)
{
  v34[1] = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v27[3] = a3;
  v27[2] = a4;
  v27[1] = a1;
  v27[0] = [CPSMapButton buttonWithCPMapButton:location[0]];
  [v27[0] setDelegate:a1[4]];
  v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"CPSMapButton%lu", a3 + 1];
  [v27[0] setAccessibilityLabel:?];
  MEMORY[0x277D82BD8](v26);
  if (a3)
  {
    if (a3 == 1)
    {
      v20 = CPSLocalizedStringForKey(@"ACCESSIBILITY_SECOND_MAP_BUTTON");
      v33 = v20;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
      [v27[0] setAccessibilityUserInputLabels:?];
      MEMORY[0x277D82BD8](v19);
      v4 = MEMORY[0x277D82BD8](v20).n128_u64[0];
    }

    else if (a3 == 2)
    {
      v18 = CPSLocalizedStringForKey(@"ACCESSIBILITY_THIRD_MAP_BUTTON");
      v32 = v18;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
      [v27[0] setAccessibilityUserInputLabels:?];
      MEMORY[0x277D82BD8](v17);
      v4 = MEMORY[0x277D82BD8](v18).n128_u64[0];
    }

    else if (a3 == 3)
    {
      v16 = CPSLocalizedStringForKey(@"ACCESSIBILITY_FOURTH_MAP_BUTTON");
      v31 = v16;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
      [v27[0] setAccessibilityUserInputLabels:?];
      MEMORY[0x277D82BD8](v15);
      v4 = MEMORY[0x277D82BD8](v16).n128_u64[0];
    }

    else
    {
      v14 = CPSLocalizedStringForKey(@"ACCESSIBILITY_MAP_BUTTON");
      v30 = v14;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
      [v27[0] setAccessibilityUserInputLabels:?];
      MEMORY[0x277D82BD8](v13);
      v4 = MEMORY[0x277D82BD8](v14).n128_u64[0];
    }
  }

  else
  {
    v22 = CPSLocalizedStringForKey(@"ACCESSIBILITY_FIRST_MAP_BUTTON");
    v34[0] = v22;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
    [v27[0] setAccessibilityUserInputLabels:?];
    MEMORY[0x277D82BD8](v21);
    v4 = MEMORY[0x277D82BD8](v22).n128_u64[0];
  }

  v5 = v27[0];
  v10 = [v27[0] widthAnchor];
  v9 = [v10 constraintEqualToConstant:36.0];
  v29[0] = v9;
  v8 = [v27[0] heightAnchor];
  v7 = [v8 constraintEqualToConstant:36.0];
  v29[1] = v7;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  [v5 addConstraints:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v11 = [a1[4] trailingBottomStackView];
  [v11 addArrangedSubview:v27[0]];
  v12 = [a1[4] mapButtons];
  [v12 addObject:v27[0]];
  MEMORY[0x277D82BD8](v12);
  objc_storeStrong(v27, 0);
  objc_storeStrong(location, 0);
}

- (void)viewWillAppear:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = CPSMapTemplateViewController;
  [(CPSBaseTemplateViewController *)&v5 viewWillAppear:a3];
  if (_UISolariumEnabled())
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    v3 = [MEMORY[0x277CCABB0] numberWithBool:v6];
    [v4 postNotificationName:@"CPMapTemplateWillShowNotification" object:?];
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14.receiver = self;
  v14.super_class = CPSMapTemplateViewController;
  [(CPSBaseTemplateViewController *)&v14 viewDidAppear:a3];
  v7 = objc_opt_class();
  v9 = [(CPSMapTemplateViewController *)v17 view];
  v8 = [v9 window];
  location = CPSSafeCast_22(v7, v8);
  MEMORY[0x277D82BD8](v8);
  *&v3 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  [location addEventObserver:{v17, v3}];
  [(CPSMapTemplateViewController *)v17 _setFocusHoldersEnabled:0];
  [(CPSMapTemplateViewController *)v17 _setAutoHideDisabled:0 forRequester:@"MapTemplateRequester"];
  v10 = [(CPSMapTemplateViewController *)v17 navBarHideTapGestureRecognizer];
  [(UITapGestureRecognizer *)v10 setEnabled:1];
  *&v4 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  [(CPSMapTemplateViewController *)v17 _resetAutoHideTimerAndShowBarAnimated:1 allowFocusDeferral:1, v4];
  [(CPSMapTemplateViewController *)v17 _updateSafeArea];
  v11 = [(CPSMapTemplateViewController *)v17 navigationAlertQueue];
  v12 = [(CPSNavigationAlertQueue *)v11 currentAlert];
  MEMORY[0x277D82BD8](v12);
  *&v5 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  if (v12)
  {
    v6 = [(CPSMapTemplateViewController *)v17 navigationAlertQueue];
    [(CPSNavigationAlertQueue *)v6 beginAnimatingAlertIfPossible];
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(&location, 0);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  v12.receiver = self;
  v12.super_class = CPSMapTemplateViewController;
  [(CPSBaseTemplateViewController *)&v12 viewWillDisappear:a3];
  v6 = objc_opt_class();
  v8 = [(CPSMapTemplateViewController *)v15 view];
  v7 = [v8 window];
  v11 = CPSSafeCast_22(v6, v7);
  MEMORY[0x277D82BD8](v7);
  *&v3 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  [v11 removeEventObserver:{v15, v3}];
  [(CPSMapTemplateViewController *)v15 _setAutoHideDisabled:1 forRequester:@"MapTemplateRequester"];
  v9 = [(CPSMapTemplateViewController *)v15 navBarHideTapGestureRecognizer];
  [(UITapGestureRecognizer *)v9 setEnabled:0];
  *&v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v10 = [(CPSMapTemplateViewController *)v15 autoHideTimer];
  [(NSTimer *)v10 invalidate];
  *&v5 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  [(CPSMapTemplateViewController *)v15 setAutoHideTimer:v5];
  objc_storeStrong(&v11, 0);
}

- (void)viewDidLayoutSubviews
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSMapTemplateViewController;
  [(CPSMapTemplateViewController *)&v2 viewDidLayoutSubviews];
  [(CPSMapTemplateViewController *)v4 _calculateAndUpdateCardWidthConstraint];
}

- (void)setPreviewsView:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v5->_previewsView != location[0])
  {
    v3 = [(CPSMapTemplateViewController *)v5 previewsView];
    [(CPSTripPreviewsCardView *)v3 removeFromSuperview];
    MEMORY[0x277D82BD8](v3);
    objc_storeStrong(&v5->_previewsView, location[0]);
    if (v5->_previewsView)
    {
      [(CPSMapTemplateViewController *)v5 _setAutoHideDisabled:1 forRequester:@"PreviewCardRequester"];
    }

    else
    {
      [(CPSMapTemplateViewController *)v5 _setAutoHideDisabled:0 forRequester:@"PreviewCardRequester"];
    }
  }

  objc_storeStrong(location, 0);
}

- (void)_reloadPreviewsView
{
  v135[6] = *MEMORY[0x277D85DE8];
  v134 = self;
  location[1] = a2;
  location[0] = CarPlaySupportGeneralLogging();
  v132 = 2;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    log = location[0];
    type = v132;
    __os_log_helper_16_0_0(v131);
    _os_log_debug_impl(&dword_242FE8000, log, type, "_setupPreviewsView", v131, 2u);
  }

  objc_storeStrong(location, 0);
  v130 = 0;
  v129 = [(CPSMapTemplateViewController *)v134 tripPreviews];
  if ([v129 count] != 0)
  {
    if ([(CPSMapTemplateViewController *)v134 previewOnlyRouteChoices])
    {
      v70 = [CPSRoutePreviewsCardView alloc];
      v69 = v134;
      v71 = [(CPSMapTemplateViewController *)v134 tripPreviewTextConfiguration];
      v2 = [(CPSRoutePreviewsCardView *)v70 initWithTripDelegate:v69 trips:v129 textConfiguration:?];
      v3 = v130;
      v130 = v2;
      MEMORY[0x277D82BD8](v3);
      v4 = MEMORY[0x277D82BD8](v71).n128_u64[0];
    }

    else
    {
      v67 = [CPSPagingTripPreviewsCardView alloc];
      v66 = v134;
      v68 = [(CPSMapTemplateViewController *)v134 tripPreviewTextConfiguration];
      v5 = [(CPSPagingTripPreviewsCardView *)v67 initWithTripDelegate:v66 trips:v129 textConfiguration:?];
      v6 = v130;
      v130 = v5;
      MEMORY[0x277D82BD8](v6);
      *&v7 = MEMORY[0x277D82BD8](v68).n128_u64[0];
      [(CPSMapTemplateViewController *)v134 previewSelectedIndex];
      v65 = [v129 count];
      if (v65 > [(CPSMapTemplateViewController *)v134 previewSelectedIndex])
      {
        v64 = [v129 objectAtIndex:{-[CPSMapTemplateViewController previewSelectedIndex](v134, "previewSelectedIndex")}];
        [v130 setSelectedTrip:?];
        v4 = MEMORY[0x277D82BD8](v64).n128_u64[0];
      }
    }
  }

  else
  {
    v63 = [(CPSMapTemplateViewController *)v134 previewsView];
    *&v8 = MEMORY[0x277D82BD8](v63).n128_u64[0];
    if (v63)
    {
      v59 = [(CPSMapTemplateViewController *)v134 previewsView];
      v127 = [(CPSTripPreviewsCardView *)v59 snapshotViewAfterScreenUpdates:1];
      MEMORY[0x277D82BD8](v59);
      v125 = 0u;
      v126 = 0u;
      v60 = [(CPSMapTemplateViewController *)v134 previewsView];
      [(CPSTripPreviewsCardView *)v60 frame];
      *&v125 = v9;
      *(&v125 + 1) = v10;
      *&v126 = v11;
      *(&v126 + 1) = v12;
      *&v13 = MEMORY[0x277D82BD8](v60).n128_u64[0];
      v61 = [(CPSMapTemplateViewController *)v134 view];
      [v61 addSubview:v127];
      MEMORY[0x277D82BD8](v61);
      [v127 setFrame:{v125, v126}];
      v62 = MEMORY[0x277D75D18];
      v117 = MEMORY[0x277D85DD0];
      v118 = -1073741824;
      v119 = 0;
      v120 = __51__CPSMapTemplateViewController__reloadPreviewsView__block_invoke;
      v121 = &unk_278D91370;
      v122 = MEMORY[0x277D82BE0](v127);
      v123 = v125;
      v124 = v126;
      v110 = MEMORY[0x277D85DD0];
      v111 = -1073741824;
      v112 = 0;
      v113 = __51__CPSMapTemplateViewController__reloadPreviewsView__block_invoke_2;
      v114 = &unk_278D92F60;
      v115 = MEMORY[0x277D82BE0](v134);
      v116 = MEMORY[0x277D82BE0](v127);
      [v62 animateWithDuration:4 delay:&v117 usingSpringWithDamping:&v110 initialSpringVelocity:0.4 options:0.0 animations:10.0 completion:?];
      objc_storeStrong(&v116, 0);
      objc_storeStrong(&v115, 0);
      objc_storeStrong(&v122, 0);
      objc_storeStrong(&v127, 0);
    }

    else
    {
      v56 = [(CPSMapTemplateViewController *)v134 navigationCardViewController];
      [CPSNavigationCardViewController setNavigationCardHidden:v56 forRequester:"setNavigationCardHidden:forRequester:animated:completion:" animated:0 completion:?];
      *&v14 = MEMORY[0x277D82BD8](v56).n128_u64[0];
      [(CPSMapTemplateViewController *)v134 _setETAViewHidden:0 forRequester:@"PreviewCardRequester" animated:1, v14];
      v58 = [(CPSMapTemplateViewController *)v134 navigationAlertQueue];
      v57 = [(CPSNavigationAlertQueue *)v58 currentAlertView];
      [(CPSNavigationAlertView *)v57 setHidden:0];
      MEMORY[0x277D82BD8](v57);
      v4 = MEMORY[0x277D82BD8](v58).n128_u64[0];
    }
  }

  [(CPSMapTemplateViewController *)v134 setPreviewsView:v130, *&v4];
  if (v130)
  {
    v51 = [(CPSMapTemplateViewController *)v134 view];
    [v51 addSubview:v130];
    *&v15 = MEMORY[0x277D82BD8](v51).n128_u64[0];
    v54 = [(CPSMapTemplateViewController *)v134 view];
    v53 = [v54 safeAreaLayoutGuide];
    [v53 layoutFrame];
    rect = v136;
    Height = CGRectGetHeight(v136);
    v16 = _UISolariumEnabled();
    v17 = 8.0;
    if (v16)
    {
      v17 = 4.0;
    }

    v55 = Height + -2.0 * v17;
    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v54);
    v109 = v55;
    v105 = 0;
    v103 = 0;
    v101 = 0;
    v99 = 0;
    v97 = 0;
    v95 = 0;
    if ([(CPSMapTemplateViewController *)v134 rightHandDrive])
    {
      v106 = [(CPSMapTemplateViewController *)v134 view];
      v105 = 1;
      v104 = [v106 safeAreaLayoutGuide];
      v103 = 1;
      v102 = [v104 rightAnchor];
      v101 = 1;
      v18 = MEMORY[0x277D82BE0](v102);
    }

    else
    {
      v100 = [(CPSMapTemplateViewController *)v134 view];
      v99 = 1;
      v98 = [v100 safeAreaLayoutGuide];
      v97 = 1;
      v96 = [v98 leftAnchor];
      v95 = 1;
      v18 = MEMORY[0x277D82BE0](v96);
    }

    v107 = v18;
    if (v95)
    {
      MEMORY[0x277D82BD8](v96);
    }

    if (v97)
    {
      MEMORY[0x277D82BD8](v98);
    }

    if (v99)
    {
      MEMORY[0x277D82BD8](v100);
    }

    if (v101)
    {
      MEMORY[0x277D82BD8](v102);
    }

    if (v103)
    {
      MEMORY[0x277D82BD8](v104);
    }

    if (v105)
    {
      MEMORY[0x277D82BD8](v106);
    }

    v92 = 0;
    v90 = 0;
    if ([(CPSMapTemplateViewController *)v134 rightHandDrive])
    {
      v93 = [v130 rightAnchor];
      v92 = 1;
      v19 = MEMORY[0x277D82BE0](v93);
    }

    else
    {
      v91 = [v130 leftAnchor];
      v90 = 1;
      v19 = MEMORY[0x277D82BE0](v91);
    }

    v94 = v19;
    if (v90)
    {
      MEMORY[0x277D82BD8](v91);
    }

    if (v92)
    {
      MEMORY[0x277D82BD8](v93);
    }

    if ([(CPSMapTemplateViewController *)v134 rightHandDrive])
    {
      v20 = _UISolariumEnabled();
      v21 = 4.0;
      if ((v20 & 1) == 0)
      {
        v21 = 8.0;
      }

      v50 = -v21;
    }

    else
    {
      v22 = _UISolariumEnabled();
      v23 = 4.0;
      if ((v22 & 1) == 0)
      {
        v23 = 8.0;
      }

      v50 = v23;
    }

    v89[1] = *&v50;
    v33 = [(CPSMapTemplateViewController *)v134 view];
    v32 = [v33 safeAreaLayoutGuide];
    v89[0] = [v32 bottomAnchor];
    MEMORY[0x277D82BD8](v32);
    *&v24 = MEMORY[0x277D82BD8](v33).n128_u64[0];
    v35 = [v130 bottomAnchor];
    v34 = [(CPSMapTemplateViewController *)v134 view];
    [v34 bounds];
    v87 = v137;
    v88 = [v35 constraintEqualToAnchor:v89[0] constant:-CGRectGetHeight(v137)];
    MEMORY[0x277D82BD8](v34);
    *&v25 = MEMORY[0x277D82BD8](v35).n128_u64[0];
    v36 = [v130 widthAnchor];
    v86 = [v36 constraintGreaterThanOrEqualToConstant:172.0];
    MEMORY[0x277D82BD8](v36);
    [v86 setPriority:?];
    v37 = [v130 widthAnchor];
    v85 = [v37 constraintLessThanOrEqualToConstant:220.0];
    v26 = MEMORY[0x277D82BD8](v37);
    v26.n128_u32[0] = 1148846080;
    [v85 setPriority:v26.n128_f64[0]];
    v41 = [v130 widthAnchor];
    v40 = [(CPSMapTemplateViewController *)v134 view];
    v39 = [v40 safeAreaLayoutGuide];
    v38 = [v39 widthAnchor];
    v84 = [v41 constraintEqualToAnchor:0.45 multiplier:?];
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v40);
    v27 = MEMORY[0x277D82BD8](v41);
    v27.n128_u32[0] = 1148829696;
    [v84 setPriority:v27.n128_f64[0]];
    v42 = MEMORY[0x277CCAAD0];
    v46 = [v94 constraintEqualToAnchor:v107 constant:v50];
    v135[0] = v46;
    v135[1] = v84;
    v135[2] = v86;
    v135[3] = v85;
    v45 = [v130 heightAnchor];
    v44 = [v45 constraintEqualToConstant:v109];
    v135[4] = v44;
    v135[5] = v88;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v135 count:6];
    [v42 activateConstraints:?];
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v45);
    *&v28 = MEMORY[0x277D82BD8](v46).n128_u64[0];
    v47 = [(CPSMapTemplateViewController *)v134 view];
    [v47 layoutIfNeeded];
    MEMORY[0x277D82BD8](v47);
    v75 = MEMORY[0x277D85DD0];
    v76 = -1073741824;
    v77 = 0;
    v78 = __51__CPSMapTemplateViewController__reloadPreviewsView__block_invoke_3;
    v79 = &unk_278D926F0;
    v80 = MEMORY[0x277D82BE0](v88);
    v81 = MEMORY[0x277D82BE0](v134);
    v82 = MEMORY[0x277D82BE0](v130);
    v83 = MEMORY[0x245D2A460](&v75);
    v48 = [(CPSMapTemplateViewController *)v134 navigationCardViewController];
    v49 = [(CPSNavigationCardViewController *)v48 navigationCardHidden];
    *&v29 = MEMORY[0x277D82BD8](v48).n128_u64[0];
    if (v49)
    {
      [(CPSMapTemplateViewController *)v134 _setETAViewHidden:1 forRequester:@"PreviewCardRequester" animated:1, v29];
      (*(v83 + 2))();
    }

    else
    {
      v31 = [(CPSMapTemplateViewController *)v134 navigationCardViewController];
      v74 = MEMORY[0x277D82BE0](v83);
      [CPSNavigationCardViewController setNavigationCardHidden:v31 forRequester:"setNavigationCardHidden:forRequester:animated:completion:" animated:1 completion:?];
      *&v30 = MEMORY[0x277D82BD8](v31).n128_u64[0];
      [(CPSMapTemplateViewController *)v134 _setETAViewHidden:1 forRequester:@"PreviewCardRequester" animated:1, v30];
      objc_storeStrong(&v74, 0);
    }

    objc_storeStrong(&v83, 0);
    objc_storeStrong(&v82, 0);
    objc_storeStrong(&v81, 0);
    objc_storeStrong(&v80, 0);
    objc_storeStrong(&v84, 0);
    objc_storeStrong(&v85, 0);
    objc_storeStrong(&v86, 0);
    objc_storeStrong(&v88, 0);
    objc_storeStrong(v89, 0);
    objc_storeStrong(&v94, 0);
    objc_storeStrong(&v107, 0);
  }

  [(CPSMapTemplateViewController *)v134 _updateSafeArea];
  objc_storeStrong(&v129, 0);
  objc_storeStrong(&v130, 0);
}

uint64_t __51__CPSMapTemplateViewController__reloadPreviewsView__block_invoke(uint64_t a1)
{
  v4 = *(a1 + 32);
  v1 = -CGRectGetHeight(*(a1 + 40)) - 44.0;
  v5 = CGRectOffset(*(a1 + 40), 0.0, v1);
  return [v4 setFrame:{v5.origin.x, v5.origin.y, v5.size.width, v5.size.height}];
}

uint64_t __51__CPSMapTemplateViewController__reloadPreviewsView__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationCardViewController];
  [v2 setNavigationCardHidden:0 forRequester:? animated:? completion:?];
  [*(a1 + 32) _setETAViewHidden:0 forRequester:@"PreviewCardRequester" animated:{1, MEMORY[0x277D82BD8](v2).n128_f64[0]}];
  v4 = [*(a1 + 32) navigationAlertQueue];
  v3 = [v4 currentAlertView];
  [v3 setHidden:0];
  MEMORY[0x277D82BD8](v3);
  return [*(a1 + 40) removeFromSuperview];
}

void __51__CPSMapTemplateViewController__reloadPreviewsView__block_invoke_3(uint64_t a1)
{
  v12[2] = a1;
  v12[1] = a1;
  v1 = _UISolariumEnabled();
  v2 = 4.0;
  if ((v1 & 1) == 0)
  {
    v2 = 8.0;
  }

  [*(a1 + 32) setConstant:-v2];
  v4 = MEMORY[0x277D75D18];
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __51__CPSMapTemplateViewController__reloadPreviewsView__block_invoke_4;
  v11 = &unk_278D913E8;
  v12[0] = MEMORY[0x277D82BE0](*(a1 + 40));
  v5 = MEMORY[0x277D82BE0](*(a1 + 40));
  v6 = MEMORY[0x277D82BE0](*(a1 + 48));
  [v4 animateWithDuration:4 delay:&v7 usingSpringWithDamping:0.4 initialSpringVelocity:0.0 options:10.0 animations:? completion:?];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(v12, 0);
}

double __51__CPSMapTemplateViewController__reloadPreviewsView__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

uint64_t __51__CPSMapTemplateViewController__reloadPreviewsView__block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setLastFocusedItem:*(a1 + 40)];
  v3 = [*(a1 + 32) navigationAlertQueue];
  v2 = [v3 currentAlertView];
  [v2 setHidden:1];
  MEMORY[0x277D82BD8](v2);
  return [*(a1 + 32) setNeedsFocusUpdate];
}

- (void)_updatePanGestureForHiFiTouch
{
  v14 = self;
  v13[1] = a2;
  v11 = [(CPSMapTemplateViewController *)self traitCollection];
  v12 = [v11 touchLevel];
  *&v2 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  if (v12)
  {
    v7 = [(CPSMapTemplateViewController *)v14 panGestureRecognizer];
    *&v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
    if (v7)
    {
      v6 = [(CPSMapTemplateViewController *)v14 view];
      v5 = [(CPSMapTemplateViewController *)v14 panGestureRecognizer];
      [v6 removeGestureRecognizer:?];
      MEMORY[0x277D82BD8](v5);
      [(CPSMapTemplateViewController *)v14 setPanGestureRecognizer:0, MEMORY[0x277D82BD8](v6).n128_f64[0]];
    }
  }

  else
  {
    v10 = [(CPSMapTemplateViewController *)v14 panGestureRecognizer];
    MEMORY[0x277D82BD8](v10);
    if (!v10)
    {
      v13[0] = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:v14 action:sel__handlePanGesture_];
      [v13[0] setDelegate:v14];
      [v13[0] setAllowedTouchTypes:&unk_2855C5078];
      [v13[0] setDelaysTouchesEnded:0];
      v8 = [(CPSMapTemplateViewController *)v14 view];
      [v8 addGestureRecognizer:v13[0]];
      *&v3 = MEMORY[0x277D82BD8](v8).n128_u64[0];
      [(CPSMapTemplateViewController *)v14 setPanGestureRecognizer:v13[0], v3];
      v9 = [(CPSMapTemplateViewController *)v14 hideTapGestureRecognizer];
      [(UITapGestureRecognizer *)v9 requireGestureRecognizerToFail:v13[0]];
      MEMORY[0x277D82BD8](v9);
      objc_storeStrong(v13, 0);
    }
  }
}

- (void)showNavigationAlert:(id)a3 animated:(BOOL)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = a4;
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __61__CPSMapTemplateViewController_showNavigationAlert_animated___block_invoke;
  v12 = &unk_278D92318;
  v13 = MEMORY[0x277D82BE0](location[0]);
  v14 = MEMORY[0x277D82BE0](v18);
  v15 = v16;
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __61__CPSMapTemplateViewController_showNavigationAlert_animated___block_invoke(uint64_t a1)
{
  v21[2] = a1;
  v21[1] = a1;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__CPSMapTemplateViewController_showNavigationAlert_animated___block_invoke_2;
  v17[3] = &unk_278D92318;
  v18 = MEMORY[0x277D82BE0](*(a1 + 32));
  v19 = MEMORY[0x277D82BE0](*(a1 + 40));
  v20 = *(a1 + 48) & 1;
  v21[0] = MEMORY[0x245D2A460](v17);
  v6 = [*(a1 + 40) navigationAlertQueue];
  v7 = [v6 isDisplayingAlert];
  v1 = MEMORY[0x277D82BD8](v6);
  if (v7)
  {
    location = CarPlaySupportGeneralLogging();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v15;
      __os_log_helper_16_0_0(v14);
      _os_log_impl(&dword_242FE8000, log, type, "Alert already displayed, dismissing", v14, 2u);
    }

    objc_storeStrong(&location, 0);
    v2 = *(a1 + 40);
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __61__CPSMapTemplateViewController_showNavigationAlert_animated___block_invoke_199;
    v12 = &unk_278D92F10;
    v13 = MEMORY[0x277D82BE0](v21[0]);
    [v2 dismissNavigationAlertAnimated:1 completion:&v8];
    objc_storeStrong(&v13, 0);
  }

  else
  {
    (*(v21[0] + 2))(v1);
  }

  objc_storeStrong(v21, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
}

double __61__CPSMapTemplateViewController_showNavigationAlert_animated___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  location[0] = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_1_8_64(v7, *(a1 + 32));
    _os_log_impl(&dword_242FE8000, location[0], OS_LOG_TYPE_INFO, "Presenting navigation alert %@", v7, 0xCu);
  }

  objc_storeStrong(location, 0);
  v4 = [*(a1 + 40) navigationAlertQueue];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) templateDelegate];
  [v4 prepareNavigationAlert:v2 templateDelegate:? animated:?];
  MEMORY[0x277D82BD8](v3);
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

- (void)dismissNavigationAlertAnimated:(BOOL)a3 completion:(id)a4
{
  v18 = self;
  v17 = a2;
  v16 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v5 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v5;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __74__CPSMapTemplateViewController_dismissNavigationAlertAnimated_completion___block_invoke;
  v11 = &unk_278D941B8;
  v12 = MEMORY[0x277D82BE0](v18);
  v14 = v16;
  v13 = MEMORY[0x277D82BE0](location);
  dispatch_async(queue, &v7);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
}

void __74__CPSMapTemplateViewController_dismissNavigationAlertAnimated_completion___block_invoke(uint64_t a1)
{
  v14[2] = a1;
  v14[1] = a1;
  v4 = [*(a1 + 32) navigationAlertQueue];
  v14[0] = [v4 currentAlert];
  v6 = [*(a1 + 32) navigationAlertQueue];
  v13 = [v6 currentAlertView];
  v1 = MEMORY[0x277D82BD8](v6);
  if (v14[0] && v13)
  {
    v3 = [*(a1 + 32) navigationAlertQueue];
    v2 = *(a1 + 48);
    v7 = MEMORY[0x277D85DD0];
    v8 = -1073741824;
    v9 = 0;
    v10 = __74__CPSMapTemplateViewController_dismissNavigationAlertAnimated_completion___block_invoke_2;
    v11 = &unk_278D935E8;
    v12 = MEMORY[0x277D82BE0](*(a1 + 40));
    [v3 dismissCurrentNavigationAlertAnimated:v2 & 1 context:2 completion:&v7];
    MEMORY[0x277D82BD8](v3);
    objc_storeStrong(&v12, 0);
  }

  else
  {
    (*(*(a1 + 40) + 16))(v1);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(v14, 0);
}

- (double)_widthForNavigationAlert
{
  v5 = [(CPSMapTemplateViewController *)self view];
  v4 = [v5 safeAreaLayoutGuide];
  [v4 layoutFrame];
  v6 = v2 * 0.45;
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  v7 = v6;
  if (v6 < 172.0)
  {
    return 172.0;
  }

  if (v6 > 220.0)
  {
    return 220.0;
  }

  return v7;
}

- (void)_performAlertSizingForAlert:(id)a3 animated:(BOOL)a4
{
  v61[3] = *MEMORY[0x277D85DE8];
  v60 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v58 = a4;
  [(CPSMapTemplateViewController *)v60 _widthForNavigationAlert];
  v57 = v4;
  v27 = location[0];
  v28 = [(CPSMapTemplateViewController *)v60 view];
  [v28 bounds];
  v52 = v62;
  CGRectGetHeight(v62);
  CGSizeMake_14();
  v53 = v5;
  v54 = v6;
  [v27 sizeThatFits:{v5, v6}];
  v55 = v7;
  v56 = v8;
  v29 = [(CPSMapTemplateViewController *)v60 navigationAlertBottomConstraint];
  [(NSLayoutConstraint *)v29 setActive:0];
  v30 = [location[0] bottomAnchor];
  v31 = [(CPSMapTemplateViewController *)v60 view];
  v32 = [v31 safeAreaLayoutGuide];
  v33 = [v32 bottomAnchor];
  if (a4)
  {
    v25 = v56;
  }

  else
  {
    v9 = _UISolariumEnabled();
    v10 = 4.0;
    if ((v9 & 1) == 0)
    {
      v10 = 8.0;
    }

    v25 = -v10;
  }

  v24 = [v30 constraintEqualToAnchor:v33 constant:v25];
  [(CPSMapTemplateViewController *)v60 setNavigationAlertBottomConstraint:?];
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v31);
  v49 = 0;
  v47 = 0;
  if ([(CPSMapTemplateViewController *)v60 rightHandDrive])
  {
    v50 = [location[0] rightAnchor];
    v49 = 1;
    v11 = MEMORY[0x277D82BE0](v50);
  }

  else
  {
    v48 = [location[0] leftAnchor];
    v47 = 1;
    v11 = MEMORY[0x277D82BE0](v48);
  }

  v51 = v11;
  if (v47)
  {
    MEMORY[0x277D82BD8](v48);
  }

  if (v49)
  {
    MEMORY[0x277D82BD8](v50);
  }

  v44 = 0;
  v42 = 0;
  v40 = 0;
  v38 = 0;
  v36 = 0;
  v34 = 0;
  if ([(CPSMapTemplateViewController *)v60 rightHandDrive])
  {
    v45 = [(CPSMapTemplateViewController *)v60 view];
    v44 = 1;
    v43 = [v45 safeAreaLayoutGuide];
    v42 = 1;
    v41 = [v43 rightAnchor];
    v40 = 1;
    v12 = MEMORY[0x277D82BE0](v41);
  }

  else
  {
    v39 = [(CPSMapTemplateViewController *)v60 view];
    v38 = 1;
    v37 = [v39 safeAreaLayoutGuide];
    v36 = 1;
    v35 = [v37 leftAnchor];
    v34 = 1;
    v12 = MEMORY[0x277D82BE0](v35);
  }

  v46 = v12;
  if (v34)
  {
    MEMORY[0x277D82BD8](v35);
  }

  if (v36)
  {
    MEMORY[0x277D82BD8](v37);
  }

  if (v38)
  {
    MEMORY[0x277D82BD8](v39);
  }

  if (v40)
  {
    MEMORY[0x277D82BD8](v41);
  }

  if (v42)
  {
    MEMORY[0x277D82BD8](v43);
  }

  if (v44)
  {
    MEMORY[0x277D82BD8](v45);
  }

  v22 = MEMORY[0x277CCAAD0];
  v23 = [(CPSMapTemplateViewController *)v60 navigationAlertBottomConstraint];
  v61[0] = v23;
  if ([(CPSMapTemplateViewController *)v60 rightHandDrive])
  {
    v13 = _UISolariumEnabled();
    v14 = 4.0;
    if ((v13 & 1) == 0)
    {
      v14 = 8.0;
    }

    v21 = -v14;
  }

  else
  {
    v15 = _UISolariumEnabled();
    v16 = 4.0;
    if ((v15 & 1) == 0)
    {
      v16 = 8.0;
    }

    v21 = v16;
  }

  v20 = [v51 constraintEqualToAnchor:v46 constant:v21];
  v61[1] = v20;
  v19 = [location[0] widthAnchor];
  v18 = [v19 constraintEqualToConstant:v57];
  v61[2] = v18;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:3];
  [v22 activateConstraints:?];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  [location[0] setNeedsLayout];
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(location, 0);
}

- (void)updateNavigationAlert:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __54__CPSMapTemplateViewController_updateNavigationAlert___block_invoke;
  v10 = &unk_278D910D8;
  v11 = MEMORY[0x277D82BE0](v14);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __54__CPSMapTemplateViewController_updateNavigationAlert___block_invoke(uint64_t a1)
{
  v13[2] = a1;
  v13[1] = a1;
  v5 = [*(a1 + 32) navigationAlertQueue];
  v13[0] = [v5 currentAlertView];
  *&v1 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if (v13[0])
  {
    [v13[0] updateNavigationAlert:{*(a1 + 40), v1}];
    [*(a1 + 32) _performAlertSizingForAlert:v13[0] animated:0];
    v3 = MEMORY[0x277D75D18];
    v2 = *MEMORY[0x277D76DA0];
    v6 = MEMORY[0x277D85DD0];
    v7 = -1073741824;
    v8 = 0;
    v9 = __54__CPSMapTemplateViewController_updateNavigationAlert___block_invoke_2;
    v10 = &unk_278D913E8;
    v11 = MEMORY[0x277D82BE0](*(a1 + 32));
    [v3 animateWithDuration:4 delay:&v6 usingSpringWithDamping:v2 initialSpringVelocity:0.0 options:4.0 animations:20.0 completion:?];
    objc_storeStrong(&v11, 0);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  objc_storeStrong(v13, 0);
}

double __54__CPSMapTemplateViewController_updateNavigationAlert___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

- (void)_setNavigationAlertView:(id)a3 visible:(BOOL)a4 animated:(BOOL)a5 completion:(id)a6
{
  v108[1] = *MEMORY[0x277D85DE8];
  v104 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v102 = a4;
  v101 = a5;
  v100 = 0;
  objc_storeStrong(&v100, a6);
  if (v102)
  {
    v40 = [(CPSMapTemplateViewController *)v104 view];
    [v40 addSubview:location[0]];
    *&v6 = MEMORY[0x277D82BD8](v40).n128_u64[0];
    [(CPSMapTemplateViewController *)v104 _performAlertSizingForAlert:location[0] animated:v101, v6];
    v41 = [(CPSMapTemplateViewController *)v104 view];
    [v41 layoutIfNeeded];
    *&v7 = MEMORY[0x277D82BD8](v41).n128_u64[0];
    [(CPSMapTemplateViewController *)v104 _performAlertSizingForAlert:location[0] animated:v101, v7];
    v42 = MEMORY[0x277CCAAD0];
    v44 = [(CPSMapTemplateViewController *)v104 navigationCardViewLayoutViewBottomConstraint];
    v108[0] = v44;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:?];
    [v42 deactivateConstraints:?];
    MEMORY[0x277D82BD8](v43);
    *&v8 = MEMORY[0x277D82BD8](v44).n128_u64[0];
    v48 = [(CPSMapTemplateViewController *)v104 navigationCardViewLayoutHelperView];
    v47 = [(CPSLayoutHelperView *)v48 bottomAnchor];
    v46 = [location[0] topAnchor];
    v9 = _UISolariumEnabled();
    v10 = 4.0;
    if ((v9 & 1) == 0)
    {
      v10 = 8.0;
    }

    v45 = [v47 constraintEqualToAnchor:v46 constant:-v10];
    [(CPSMapTemplateViewController *)v104 setNavigationCardViewLayoutViewBottomConstraint:?];
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v47);
    *&v11 = MEMORY[0x277D82BD8](v48).n128_u64[0];
    v49 = [(CPSMapTemplateViewController *)v104 navigationCardViewLayoutViewBottomConstraint];
    LODWORD(v12) = 1148846080;
    [(NSLayoutConstraint *)v49 setPriority:v12];
    *&v13 = MEMORY[0x277D82BD8](v49).n128_u64[0];
    v50 = MEMORY[0x277CCAAD0];
    v52 = [(CPSMapTemplateViewController *)v104 navigationCardViewLayoutViewBottomConstraint];
    v107 = v52;
    v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v107 count:1];
    [v50 activateConstraints:?];
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v52);
    v93 = MEMORY[0x277D85DD0];
    v94 = -1073741824;
    v95 = 0;
    v96 = __84__CPSMapTemplateViewController__setNavigationAlertView_visible_animated_completion___block_invoke;
    v97 = &unk_278D913E8;
    v98 = MEMORY[0x277D82BE0](v104);
    v99 = MEMORY[0x245D2A460](&v93);
    v84 = MEMORY[0x277D85DD0];
    v85 = -1073741824;
    v86 = 0;
    v87 = __84__CPSMapTemplateViewController__setNavigationAlertView_visible_animated_completion___block_invoke_2;
    v88 = &unk_278D91D48;
    v89 = MEMORY[0x277D82BE0](v104);
    v91 = MEMORY[0x277D82BE0](v100);
    v90 = MEMORY[0x277D82BE0](location[0]);
    v92 = MEMORY[0x245D2A460](&v84);
    if (v101)
    {
      v39 = MEMORY[0x277D75D18];
      v37 = *MEMORY[0x277D76DA0];
      v38 = v99;
      v78 = MEMORY[0x277D85DD0];
      v79 = -1073741824;
      v80 = 0;
      v81 = __84__CPSMapTemplateViewController__setNavigationAlertView_visible_animated_completion___block_invoke_3;
      v82 = &unk_278D92F10;
      v83 = MEMORY[0x277D82BE0](v92);
      [v39 animateWithDuration:4 delay:v38 usingSpringWithDamping:&v78 initialSpringVelocity:v37 options:0.0 animations:4.0 completion:20.0];
      objc_storeStrong(&v83, 0);
    }

    else
    {
      (*(v99 + 2))();
      (*(v92 + 2))();
    }

    objc_storeStrong(&v92, 0);
    objc_storeStrong(&v90, 0);
    objc_storeStrong(&v91, 0);
    objc_storeStrong(&v89, 0);
    objc_storeStrong(&v99, 0);
    objc_storeStrong(&v98, 0);
  }

  else
  {
    v71 = MEMORY[0x277D85DD0];
    v72 = -1073741824;
    v73 = 0;
    v74 = __84__CPSMapTemplateViewController__setNavigationAlertView_visible_animated_completion___block_invoke_4;
    v75 = &unk_278D913E8;
    v76 = MEMORY[0x277D82BE0](v104);
    v77 = MEMORY[0x245D2A460](&v71);
    v62 = MEMORY[0x277D85DD0];
    v63 = -1073741824;
    v64 = 0;
    v65 = __84__CPSMapTemplateViewController__setNavigationAlertView_visible_animated_completion___block_invoke_5;
    v66 = &unk_278D91DC0;
    v67 = MEMORY[0x277D82BE0](location[0]);
    v68 = MEMORY[0x277D82BE0](v104);
    v69 = MEMORY[0x277D82BE0](v100);
    v70 = MEMORY[0x245D2A460](&v62);
    [location[0] setUserInteractionEnabled:0];
    v24 = MEMORY[0x277CCAAD0];
    v26 = [(CPSMapTemplateViewController *)v104 navigationCardViewLayoutViewBottomConstraint];
    v106 = v26;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v106 count:?];
    [v24 deactivateConstraints:?];
    MEMORY[0x277D82BD8](v25);
    *&v14 = MEMORY[0x277D82BD8](v26).n128_u64[0];
    v32 = [(CPSMapTemplateViewController *)v104 navigationCardViewLayoutHelperView];
    v31 = [(CPSLayoutHelperView *)v32 bottomAnchor];
    v30 = [(CPSMapTemplateViewController *)v104 view];
    v29 = [v30 safeAreaLayoutGuide];
    v28 = [v29 bottomAnchor];
    v15 = _UISolariumEnabled();
    v16 = 4.0;
    if ((v15 & 1) == 0)
    {
      v16 = 8.0;
    }

    v27 = [v31 constraintEqualToAnchor:v28 constant:-v16];
    [(CPSMapTemplateViewController *)v104 setNavigationCardViewLayoutViewBottomConstraint:?];
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    *&v17 = MEMORY[0x277D82BD8](v32).n128_u64[0];
    v33 = [(CPSMapTemplateViewController *)v104 navigationCardViewLayoutViewBottomConstraint];
    LODWORD(v18) = 1148846080;
    [(NSLayoutConstraint *)v33 setPriority:v18];
    *&v19 = MEMORY[0x277D82BD8](v33).n128_u64[0];
    v34 = MEMORY[0x277CCAAD0];
    v36 = [(CPSMapTemplateViewController *)v104 navigationCardViewLayoutViewBottomConstraint];
    v105 = v36;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v105 count:1];
    [v34 activateConstraints:?];
    MEMORY[0x277D82BD8](v35);
    v20 = MEMORY[0x277D82BD8](v36);
    if (v101)
    {
      [location[0] setNeedsLayout];
      v23 = MEMORY[0x277D75D18];
      v21 = *MEMORY[0x277D76DA0];
      v22 = v77;
      v56 = MEMORY[0x277D85DD0];
      v57 = -1073741824;
      v58 = 0;
      v59 = __84__CPSMapTemplateViewController__setNavigationAlertView_visible_animated_completion___block_invoke_6;
      v60 = &unk_278D92F10;
      v61 = MEMORY[0x277D82BE0](v70);
      [v23 animateWithDuration:0x10000 delay:v22 options:&v56 animations:v21 completion:0.0];
      objc_storeStrong(&v61, 0);
    }

    else
    {
      (*(v77 + 2))(v20);
      (*(v70 + 2))();
    }

    objc_storeStrong(&v70, 0);
    objc_storeStrong(&v69, 0);
    objc_storeStrong(&v68, 0);
    objc_storeStrong(&v67, 0);
    objc_storeStrong(&v77, 0);
    objc_storeStrong(&v76, 0);
  }

  objc_storeStrong(&v100, 0);
  objc_storeStrong(location, 0);
}

double __84__CPSMapTemplateViewController__setNavigationAlertView_visible_animated_completion___block_invoke(uint64_t a1)
{
  v1 = _UISolariumEnabled();
  v2 = 4.0;
  if ((v1 & 1) == 0)
  {
    v2 = 8.0;
  }

  v4 = -v2;
  v5 = [*(a1 + 32) navigationAlertBottomConstraint];
  [v5 setConstant:v4];
  [*(a1 + 32) _setETAViewHidden:1 forRequester:@"NavigationAlertRequester" animated:{0, MEMORY[0x277D82BD8](v5).n128_f64[0]}];
  v7 = [*(a1 + 32) view];
  [v7 layoutIfNeeded];
  *&result = MEMORY[0x277D82BD8](v7).n128_u64[0];
  return result;
}

uint64_t __84__CPSMapTemplateViewController__setNavigationAlertView_visible_animated_completion___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) navigationAlertQueue];
  [v4 beginAnimatingAlertIfPossible];
  v1 = MEMORY[0x277D82BD8](v4);
  if (*(a1 + 48))
  {
    (*(*(a1 + 48) + 16))(v1);
  }

  [*(a1 + 32) _updateSafeArea];
  v3 = [*(a1 + 32) lastFocusedItem];
  [*(a1 + 32) setItemFocusedBeforeNavAlert:?];
  [*(a1 + 32) setLastFocusedItem:{*(a1 + 40), MEMORY[0x277D82BD8](v3).n128_f64[0]}];
  [*(a1 + 32) setShouldRestoreFocusToNavigationBar:0];
  return [*(a1 + 32) setNeedsFocusUpdate];
}

double __84__CPSMapTemplateViewController__setNavigationAlertView_visible_animated_completion___block_invoke_4(uint64_t a1)
{
  v4 = [*(a1 + 32) view];
  [v4 bounds];
  Height = CGRectGetHeight(v7);
  v3 = [*(a1 + 32) navigationAlertBottomConstraint];
  [v3 setConstant:Height];
  MEMORY[0x277D82BD8](v3);
  v6 = [*(a1 + 32) view];
  [v6 layoutIfNeeded];
  *&result = MEMORY[0x277D82BD8](v6).n128_u64[0];
  return result;
}

uint64_t __84__CPSMapTemplateViewController__setNavigationAlertView_visible_animated_completion___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) _setETAViewHidden:0 forRequester:@"NavigationAlertRequester" animated:1];
  (*(*(a1 + 48) + 16))();
  return [*(a1 + 40) _updateSafeArea];
}

- (void)navigationAlertQueue:(id)a3 shouldDisplayAlertView:(id)a4 animated:(BOOL)a5
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = 0;
  objc_storeStrong(&v24, a4);
  v23 = a5;
  v13 = [(CPSMapTemplateViewController *)v26 mapTemplateDelegate];
  v14 = [(CPMapClientTemplateDelegate *)v13 conformsToProtocol:&unk_285632EF8];
  *&v5 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  if (v14)
  {
    v10 = [(CPSMapTemplateViewController *)v26 mapTemplateDelegate];
    v9 = [v24 navigationAlert];
    [(CPMapClientTemplateDelegate *)v10 clientNavigationAlertWillAppear:?];
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
  }

  objc_initWeak(&v22, v26);
  v8 = v26;
  v6 = v24;
  v7 = v23;
  v15 = MEMORY[0x277D85DD0];
  v16 = -1073741824;
  v17 = 0;
  v18 = __85__CPSMapTemplateViewController_navigationAlertQueue_shouldDisplayAlertView_animated___block_invoke;
  v19 = &unk_278D92A90;
  objc_copyWeak(&v21, &v22);
  v20 = MEMORY[0x277D82BE0](v24);
  [(CPSMapTemplateViewController *)v8 _setNavigationAlertView:v6 visible:1 animated:v7 completion:&v15];
  objc_storeStrong(&v20, 0);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v22);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

void __85__CPSMapTemplateViewController_navigationAlertQueue_shouldDisplayAlertView_animated___block_invoke(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 5);
  v5 = [location[0] mapTemplateDelegate];
  v6 = [v5 conformsToProtocol:&unk_285632EF8];
  *&v1 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if (v6)
  {
    v3 = [location[0] mapTemplateDelegate];
    v2 = [a1[4] navigationAlert];
    [v3 clientNavigationAlertDidAppear:?];
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(location, 0);
}

- (void)navigationAlertQueue:(id)a3 shouldRemoveAlertView:(id)a4 animated:(BOOL)a5 dismissalContext:(unint64_t)a6 completion:(id)a7
{
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = 0;
  objc_storeStrong(&v31, a4);
  v30 = a5;
  v29 = a6;
  v28 = 0;
  objc_storeStrong(&v28, a7);
  v17 = [(CPSMapTemplateViewController *)v33 mapTemplateDelegate];
  v18 = [(CPMapClientTemplateDelegate *)v17 conformsToProtocol:&unk_285632EF8];
  *&v7 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  if (v18)
  {
    v12 = [(CPSMapTemplateViewController *)v33 mapTemplateDelegate];
    v11 = [v31 navigationAlert];
    [CPMapClientTemplateDelegate clientNavigationAlertWillDisappear:v12 context:"clientNavigationAlertWillDisappear:context:"];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
  }

  objc_initWeak(&v27, v33);
  v10 = v33;
  v8 = v31;
  v9 = v30;
  v19 = MEMORY[0x277D85DD0];
  v20 = -1073741824;
  v21 = 0;
  v22 = __112__CPSMapTemplateViewController_navigationAlertQueue_shouldRemoveAlertView_animated_dismissalContext_completion___block_invoke;
  v23 = &unk_278D941E0;
  objc_copyWeak(v26, &v27);
  v24 = MEMORY[0x277D82BE0](v31);
  v26[1] = v29;
  v25 = MEMORY[0x277D82BE0](v28);
  [(CPSMapTemplateViewController *)v10 _setNavigationAlertView:v8 visible:0 animated:v9 completion:&v19];
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v24, 0);
  objc_destroyWeak(v26);
  objc_destroyWeak(&v27);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

void __112__CPSMapTemplateViewController_navigationAlertQueue_shouldRemoveAlertView_animated_dismissalContext_completion___block_invoke(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 48));
  v11 = [location[0] mapTemplateDelegate];
  v12 = [v11 conformsToProtocol:&unk_285632EF8];
  v1 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  if (v12)
  {
    v9 = [location[0] mapTemplateDelegate];
    v8 = [*(a1 + 32) navigationAlert];
    [v9 clientNavigationAlertDidDisappear:? context:?];
    MEMORY[0x277D82BD8](v8);
    v1 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  }

  v3 = [location[0] itemFocusedBeforeNavAlert];
  [location[0] setLastFocusedItem:?];
  v4 = [location[0] navigationController];
  v5 = [v4 navigationBar];
  v6 = [location[0] lastFocusedItem];
  v13 = 0;
  isKindOfClass = 1;
  if (([v5 containsView:?] & 1) == 0)
  {
    v14 = [location[0] lastFocusedItem];
    v13 = 1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](v14);
  }

  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v5);
  *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (isKindOfClass)
  {
    [location[0] setShouldRestoreFocusToNavigationBar:{1, v2}];
  }

  [location[0] setItemFocusedBeforeNavAlert:{0, v2}];
  [location[0] setNeedsFocusUpdate];
  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(location, 0);
}

- (BOOL)canAnimateNavigationAlert
{
  v4 = [(CPSMapTemplateViewController *)self navigationController];
  v2 = [v4 visibleViewController];
  v5 = v2 == self;
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v4);
  return v5;
}

- (id)_tripDidBegin:(id)a3 withEstimates:(id)a4 forIdentifier:(id)a5
{
  v104[6] = *MEMORY[0x277D85DE8];
  v103 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v101 = 0;
  objc_storeStrong(&v101, a4);
  v100 = 0;
  objc_storeStrong(&v100, a5);
  v97 = 0;
  v95 = 0;
  v93 = 0;
  v91 = 0;
  v89 = 0;
  v87 = 0;
  if ([(CPSMapTemplateViewController *)v103 rightHandDrive])
  {
    v98 = [(CPSMapTemplateViewController *)v103 view];
    v97 = 1;
    v96 = [v98 safeAreaLayoutGuide];
    v95 = 1;
    v94 = [v96 rightAnchor];
    v93 = 1;
    v5 = MEMORY[0x277D82BE0](v94);
  }

  else
  {
    v92 = [(CPSMapTemplateViewController *)v103 view];
    v91 = 1;
    v90 = [v92 safeAreaLayoutGuide];
    v89 = 1;
    v88 = [v90 leftAnchor];
    v87 = 1;
    v5 = MEMORY[0x277D82BE0](v88);
  }

  v99 = v5;
  if (v87)
  {
    MEMORY[0x277D82BD8](v88);
  }

  if (v89)
  {
    MEMORY[0x277D82BD8](v90);
  }

  if (v91)
  {
    MEMORY[0x277D82BD8](v92);
  }

  if (v93)
  {
    MEMORY[0x277D82BD8](v94);
  }

  if (v95)
  {
    MEMORY[0x277D82BD8](v96);
  }

  if (v97)
  {
    MEMORY[0x277D82BD8](v98);
  }

  if ([(CPSMapTemplateViewController *)v103 rightHandDrive])
  {
    v6 = _UISolariumEnabled();
    v7 = 4.0;
    if ((v6 & 1) == 0)
    {
      v7 = 8.0;
    }

    v61 = -v7;
  }

  else
  {
    v8 = _UISolariumEnabled();
    v9 = 4.0;
    if ((v8 & 1) == 0)
    {
      v9 = 8.0;
    }

    v61 = v9;
  }

  v86 = v61;
  v51 = [(CPSMapTemplateViewController *)v103 navigationCardViewController];
  [(CPSNavigationCardViewController *)v51 setNavigatingBundleIdentifier:v100];
  MEMORY[0x277D82BD8](v51);
  v53 = [CPSNavigator alloc];
  v52 = v100;
  v56 = [(CPSBaseTemplateViewController *)v103 templateEnvironment];
  v55 = [(CPSTemplateEnvironment *)v56 sessionStatus];
  v54 = [(CARSessionStatus *)v55 currentSession];
  v85 = [CPSNavigator initWithIdentifier:v53 currentSession:"initWithIdentifier:currentSession:forTrip:" forTrip:v52];
  MEMORY[0x277D82BD8](v54);
  MEMORY[0x277D82BD8](v55);
  *&v10 = MEMORY[0x277D82BD8](v56).n128_u64[0];
  v57 = [(CPSMapTemplateViewController *)v103 navigatorObserver];
  [(CPSNavigatorObserving *)v57 didCreateNavigator:v85];
  *&v11 = MEMORY[0x277D82BD8](v57).n128_u64[0];
  [(CPSNavigator *)v85 setNavigationOwnershipDelegate:v103, v11];
  [(CPSNavigator *)v85 addDisplayDelegate:v103];
  v58 = v103;
  v59 = [(CPSMapTemplateViewController *)v103 navigationCardViewLayoutHelperView];
  [(CPSMapTemplateViewController *)v58 didChangeLayout:?];
  *&v12 = MEMORY[0x277D82BD8](v59).n128_u64[0];
  v60 = [(CPSMapTemplateViewController *)v103 navigationETAView];
  [(CPSNavigationETAView *)v60 removeFromSuperview];
  *&v13 = MEMORY[0x277D82BD8](v60).n128_u64[0];
  if (![(CPSMapTemplateViewController *)v103 hasSetTripEstimateStyle])
  {
    v49 = [(CPSMapTemplateViewController *)v103 traitCollection];
    v50 = [v49 userInterfaceStyle];
    *&v14 = MEMORY[0x277D82BD8](v49).n128_u64[0];
    v84 = v50 != 1;
    [(CPSMapTemplateViewController *)v103 setTripEstimateStyle:v84, v14];
  }

  v41 = [CPSNavigationETAView alloc];
  v83 = [(CPSNavigationETAView *)v41 initWithTrip:location[0] style:[(CPSMapTemplateViewController *)v103 tripEstimateStyle]];
  [(CPSNavigationETAView *)v83 updateEstimates:v101 forManeuver:0];
  [(CPSMapTemplateViewController *)v103 setNavigationETAView:v83];
  v43 = [(CPSMapTemplateViewController *)v103 view];
  v42 = [(CPSMapTemplateViewController *)v103 navigationETAView];
  [v43 addSubview:?];
  MEMORY[0x277D82BD8](v42);
  v48 = [(CPSNavigationETAView *)v83 bottomAnchor];
  v47 = [(CPSMapTemplateViewController *)v103 view];
  v46 = [v47 safeAreaLayoutGuide];
  v45 = [v46 bottomAnchor];
  v44 = [v48 constraintEqualToAnchor:44.0 constant:?];
  [(CPSMapTemplateViewController *)v103 setNavigationETAViewBottomConstraint:?];
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](v46);
  MEMORY[0x277D82BD8](v47);
  *&v15 = MEMORY[0x277D82BD8](v48).n128_u64[0];
  v80 = 0;
  v78 = 0;
  v76 = 0;
  v74 = 0;
  if ([(CPSMapTemplateViewController *)v103 rightHandDrive])
  {
    v81 = [(CPSMapTemplateViewController *)v103 navigationETAView];
    v80 = 1;
    v79 = [(CPSNavigationETAView *)v81 rightAnchor];
    v78 = 1;
    v16 = MEMORY[0x277D82BE0](v79);
  }

  else
  {
    v77 = [(CPSMapTemplateViewController *)v103 navigationETAView];
    v76 = 1;
    v75 = [(CPSNavigationETAView *)v77 leftAnchor];
    v74 = 1;
    v16 = MEMORY[0x277D82BE0](v75);
  }

  v82 = v16;
  if (v74)
  {
    MEMORY[0x277D82BD8](v75);
  }

  if (v76)
  {
    MEMORY[0x277D82BD8](v77);
  }

  if (v78)
  {
    MEMORY[0x277D82BD8](v79);
  }

  if (v80)
  {
    MEMORY[0x277D82BD8](v81);
  }

  v24 = [(CPSNavigationETAView *)v83 heightAnchor];
  v73 = [v24 constraintEqualToConstant:44.0];
  MEMORY[0x277D82BD8](v24);
  [v73 setPriority:?];
  v25 = [(CPSNavigationETAView *)v83 widthAnchor];
  v72 = [v25 constraintLessThanOrEqualToConstant:220.0];
  v17 = MEMORY[0x277D82BD8](v25);
  v17.n128_u32[0] = 1148846080;
  [v72 setPriority:v17.n128_f64[0]];
  v26 = [(CPSNavigationETAView *)v83 widthAnchor];
  v71 = [v26 constraintGreaterThanOrEqualToConstant:172.0];
  v18 = MEMORY[0x277D82BD8](v26);
  v18.n128_u32[0] = 1148846080;
  [v71 setPriority:v18.n128_f64[0]];
  v30 = [(CPSNavigationETAView *)v83 widthAnchor];
  v29 = [(CPSMapTemplateViewController *)v103 view];
  v28 = [v29 safeAreaLayoutGuide];
  v27 = [v28 widthAnchor];
  v70 = [v30 constraintEqualToAnchor:0.45 multiplier:?];
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  v19 = MEMORY[0x277D82BD8](v30);
  v19.n128_u32[0] = 1148829696;
  [v70 setPriority:v19.n128_f64[0]];
  v31 = MEMORY[0x277CCAAD0];
  v34 = [v82 constraintEqualToAnchor:v99 constant:v86];
  v104[0] = v34;
  v33 = [(CPSMapTemplateViewController *)v103 navigationETAViewBottomConstraint];
  v104[1] = v33;
  v104[2] = v73;
  v104[3] = v70;
  v104[4] = v72;
  v104[5] = v71;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:6];
  [v31 activateConstraints:?];
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  *&v20 = MEMORY[0x277D82BD8](v34).n128_u64[0];
  [(CPSMapTemplateViewController *)v103 setNavigator:v85, v20];
  [(CPSNavigationETAView *)v83 layoutIfNeeded];
  v35 = [(CPSMapTemplateViewController *)v103 view];
  [v35 layoutIfNeeded];
  *&v21 = MEMORY[0x277D82BD8](v35).n128_u64[0];
  [(CPSMapTemplateViewController *)v103 _setETAViewHidden:1 forRequester:@"InitialTripRequester" animated:0, v21];
  [CPSMapTemplateViewController _setETAViewHidden:v103 forRequester:"_setETAViewHidden:forRequester:animated:" animated:0];
  v36 = [(CPSMapTemplateViewController *)v103 navigationCardViewController];
  [(CPSNavigationCardViewController *)v36 setNavigationCardHidden:0 forRequester:@"TripEndedRequester" animated:1 completion:?];
  MEMORY[0x277D82BD8](v36);
  when = dispatch_time(0, 1000000000);
  v37 = MEMORY[0x277D85CD0];
  v22 = MEMORY[0x277D85CD0];
  queue = v37;
  v64 = MEMORY[0x277D85DD0];
  v65 = -1073741824;
  v66 = 0;
  v67 = __74__CPSMapTemplateViewController__tripDidBegin_withEstimates_forIdentifier___block_invoke;
  v68 = &unk_278D913E8;
  v69 = MEMORY[0x277D82BE0](v103);
  dispatch_after(when, queue, &v64);
  MEMORY[0x277D82BD8](queue);
  v40 = MEMORY[0x277D82BE0](v85);
  objc_storeStrong(&v69, 0);
  objc_storeStrong(&v70, 0);
  objc_storeStrong(&v71, 0);
  objc_storeStrong(&v72, 0);
  objc_storeStrong(&v73, 0);
  objc_storeStrong(&v82, 0);
  objc_storeStrong(&v83, 0);
  objc_storeStrong(&v85, 0);
  objc_storeStrong(&v99, 0);
  objc_storeStrong(&v100, 0);
  objc_storeStrong(&v101, 0);
  objc_storeStrong(location, 0);

  return v40;
}

- (void)viewSafeAreaInsetsDidChange
{
  v9[2] = self;
  v9[1] = a2;
  v3 = MEMORY[0x277D75D18];
  v2 = *MEMORY[0x277D76DA0];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __59__CPSMapTemplateViewController_viewSafeAreaInsetsDidChange__block_invoke;
  v8 = &unk_278D913E8;
  v9[0] = MEMORY[0x277D82BE0](self);
  [v3 animateWithDuration:v2 animations:?];
  objc_storeStrong(v9, 0);
}

double __59__CPSMapTemplateViewController_viewSafeAreaInsetsDidChange__block_invoke(uint64_t a1)
{
  v6 = a1;
  v5 = a1;
  v4.receiver = *(a1 + 32);
  v4.super_class = CPSMapTemplateViewController;
  objc_msgSendSuper2(&v4, sel_viewSafeAreaInsetsDidChange);
  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

- (void)navigator:(id)a3 didEndTrip:(BOOL)a4
{
  v50 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v48 = a4;
  v27 = [(CPSMapTemplateViewController *)v50 navigationCardViewController];
  [(CPSNavigationCardViewController *)v27 navigator:location[0] didEndTrip:a4];
  *&v4 = MEMORY[0x277D82BD8](v27).n128_u64[0];
  v47 = 0;
  v28 = [(CPSMapTemplateViewController *)v50 previewsView];
  *&v5 = MEMORY[0x277D82BD8](v28).n128_u64[0];
  if (v28)
  {
    v21 = [(CPSMapTemplateViewController *)v50 previewsView];
    v6 = [(CPSTripPreviewsCardView *)v21 snapshotViewAfterScreenUpdates:0];
    v7 = v47;
    v47 = v6;
    MEMORY[0x277D82BD8](v7);
    *&v8 = MEMORY[0x277D82BD8](v21).n128_u64[0];
    v22 = [(CPSMapTemplateViewController *)v50 view];
    [v22 addSubview:v47];
    MEMORY[0x277D82BD8](v22);
    v23 = [(CPSMapTemplateViewController *)v50 previewsView];
    [(CPSTripPreviewsCardView *)v23 frame];
    *&v45 = v9;
    *(&v45 + 1) = v10;
    *&v46 = v11;
    *(&v46 + 1) = v12;
    MEMORY[0x277D82BD8](v23);
    [v47 setFrame:{v45, v46}];
    v25 = MEMORY[0x277D75D18];
    v24 = *MEMORY[0x277D76DA0];
    v36 = MEMORY[0x277D85DD0];
    v37 = -1073741824;
    v38 = 0;
    v39 = __53__CPSMapTemplateViewController_navigator_didEndTrip___block_invoke;
    v40 = &unk_278D93DD8;
    v41 = MEMORY[0x277D82BE0](v47);
    v43 = v45;
    v44 = v46;
    v42 = MEMORY[0x277D82BE0](v50);
    v29 = MEMORY[0x277D85DD0];
    v30 = -1073741824;
    v31 = 0;
    v32 = __53__CPSMapTemplateViewController_navigator_didEndTrip___block_invoke_2;
    v33 = &unk_278D92F60;
    v34 = MEMORY[0x277D82BE0](v47);
    v35 = MEMORY[0x277D82BE0](v50);
    [v25 animateWithDuration:65540 delay:&v36 options:&v29 animations:v24 completion:0.0];
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v42, 0);
    objc_storeStrong(&v41, 0);
  }

  else
  {
    [(CPSMapTemplateViewController *)v50 _updateSafeArea];
  }

  v16 = [(CPSMapTemplateViewController *)v50 previewsView];
  [(CPSTripPreviewsCardView *)v16 setHidden:1];
  *&v13 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  v18 = [(CPSMapTemplateViewController *)v50 navigatorObserver];
  v17 = [(CPSMapTemplateViewController *)v50 navigator];
  [(CPSNavigatorObserving *)v18 willInvalidateNavigator:?];
  MEMORY[0x277D82BD8](v17);
  *&v14 = MEMORY[0x277D82BD8](v18).n128_u64[0];
  v19 = [(CPSMapTemplateViewController *)v50 navigator];
  [(CPSNavigator *)v19 invalidate];
  *&v15 = MEMORY[0x277D82BD8](v19).n128_u64[0];
  [(CPSMapTemplateViewController *)v50 setNavigator:v15];
  [CPSMapTemplateViewController _setETAViewHidden:v50 forRequester:"_setETAViewHidden:forRequester:animated:" animated:1];
  v20 = [(CPSMapTemplateViewController *)v50 navigationCardViewController];
  [(CPSNavigationCardViewController *)v20 setNavigationCardHidden:1 forRequester:@"TripEndedRequester" animated:1 completion:0];
  MEMORY[0x277D82BD8](v20);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(location, 0);
}

double __53__CPSMapTemplateViewController_navigator_didEndTrip___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v1 = -CGRectGetHeight(*(a1 + 48)) - 44.0;
  v6 = CGRectOffset(*(a1 + 48), 0.0, v1);
  [v3 setFrame:{v6.origin.x, v6.origin.y, v6.size.width, v6.size.height}];
  v5 = [*(a1 + 40) view];
  [v5 layoutIfNeeded];
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

- (void)showManeuvers:(id)a3 usingDisplayStyles:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  [(CPSMapTemplateViewController *)v25 _setETAViewHidden:0 forRequester:@"InitialTripRequester" animated:1];
  v15 = v25;
  v16 = [(CPSMapTemplateViewController *)v25 navigationCardViewLayoutHelperView];
  [(CPSMapTemplateViewController *)v15 didChangeLayout:?];
  MEMORY[0x277D82BD8](v16);
  memset(__b, 0, sizeof(__b));
  v17 = MEMORY[0x277D82BE0](location[0]);
  v18 = [v17 countByEnumeratingWithState:__b objects:v26 count:16];
  if (v18)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v18;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(__b[1] + 8 * v12);
      v8 = [v22 cardBackgroundColor];
      v19 = 0;
      v9 = 0;
      if (!v8)
      {
        v20 = [(CPSMapTemplateViewController *)v25 guidanceBackgroundColor];
        v19 = 1;
        v9 = v20 != 0;
      }

      if (v19)
      {
        MEMORY[0x277D82BD8](v20);
      }

      v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
      if (v9)
      {
        v7 = [(CPSMapTemplateViewController *)v25 guidanceBackgroundColor];
        [v22 setCardBackgroundColor:?];
        v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
      }

      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [v17 countByEnumeratingWithState:__b objects:v26 count:{16, *&v4}];
        if (!v13)
        {
          break;
        }
      }
    }
  }

  *&v5 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  v6 = [(CPSMapTemplateViewController *)v25 navigationCardViewController];
  [(CPSNavigationCardViewController *)v6 showManeuvers:location[0] usingDisplayStyles:v23];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

- (void)navigator:(id)a3 pausedTripForReason:(unint64_t)a4 description:(id)a5 usingColor:(id)a6
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = a4;
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v13 = 0;
  objc_storeStrong(&v13, a6);
  [(CPSMapTemplateViewController *)v17 _setETAViewHidden:0 forRequester:@"InitialTripRequester" animated:1];
  v10 = v17;
  v11 = [(CPSMapTemplateViewController *)v17 navigationCardViewLayoutHelperView];
  [(CPSMapTemplateViewController *)v10 didChangeLayout:?];
  *&v6 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  v12 = [(CPSMapTemplateViewController *)v17 navigationCardViewController];
  [(CPSNavigationCardViewController *)v12 navigator:location[0] pausedTripForReason:v15 description:v14 usingColor:v13];
  MEMORY[0x277D82BD8](v12);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)updateEstimates:(id)a3 forManeuver:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [(CPSMapTemplateViewController *)v8 navigationCardViewController];
  [(CPSNavigationCardViewController *)v5 updateEstimates:location[0] forManeuver:v6];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)didSelectButton:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = [location[0] identifier];
  oslog = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v11, v10, v8);
    _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEFAULT, "%@: button selected with UUID: %@", v11, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v5 = [(CPSBaseTemplateViewController *)v10 templateDelegate];
  v6 = [(CPTemplateDelegate *)v5 conformsToProtocol:&unk_28562C040];
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if (v6)
  {
    v4 = [(CPSBaseTemplateViewController *)v10 templateDelegate];
    [(CPTemplateDelegate *)v4 handleActionForControlIdentifier:v8];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (id)_buttonForIdentifier:(id)a3
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  v13 = &v12;
  v14 = 838860800;
  v15 = 48;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  v5 = [(CPSMapTemplateViewController *)v20 _buttons];
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __53__CPSMapTemplateViewController__buttonForIdentifier___block_invoke;
  v10 = &unk_278D94208;
  v11[0] = MEMORY[0x277D82BE0](location[0]);
  v11[1] = &v12;
  [v5 enumerateObjectsUsingBlock:&v6];
  MEMORY[0x277D82BD8](v5);
  v4 = MEMORY[0x277D82BE0](v13[5]);
  objc_storeStrong(v11, 0);
  _Block_object_dispose(&v12, 8);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);

  return v4;
}

void __53__CPSMapTemplateViewController__buttonForIdentifier___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = [location[0] identifier];
  v7 = [v6 isEqual:a1[4]];
  MEMORY[0x277D82BD8](v6);
  if (v7)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), location[0]);
    *a4 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)tripView:(id)a3 selectedTrip:(id)a4 routeChoice:(id)a5
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  objc_storeStrong(&v10, a5);
  v9 = [(CPSBaseTemplateViewController *)v13 templateDelegate];
  v8 = [v11 identifier];
  v7 = [v10 identifier];
  [(CPTemplateDelegate *)v9 previewTripIdentifier:v8 usingRouteIdentifier:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)tripView:(id)a3 startedTrip:(id)a4 routeChoice:(id)a5
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  objc_storeStrong(&v10, a5);
  v9 = [(CPSBaseTemplateViewController *)v13 templateDelegate];
  v8 = [v11 identifier];
  v7 = [v10 identifier];
  [(CPTemplateDelegate *)v9 startTripIdentifier:v8 usingRouteIdentifier:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)sessionDidConnect:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)_nightModeChanged:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)setControl:(id)a3 enabled:(BOOL)a4
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = a4;
  v16.receiver = v19;
  v16.super_class = CPSMapTemplateViewController;
  [(CPSBaseTemplateViewController *)&v16 setControl:location[0] enabled:a4];
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __51__CPSMapTemplateViewController_setControl_enabled___block_invoke;
  v12 = &unk_278D92318;
  v13 = MEMORY[0x277D82BE0](v19);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = v17;
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __51__CPSMapTemplateViewController_setControl_enabled___block_invoke(uint64_t a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = [*(a1 + 32) _buttonForIdentifier:*(a1 + 40)];
  [v2[0] setEnabled:*(a1 + 48) & 1];
  objc_storeStrong(v2, 0);
}

- (void)setHostGuidanceBackgroundColor:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __63__CPSMapTemplateViewController_setHostGuidanceBackgroundColor___block_invoke;
  v10 = &unk_278D910D8;
  v11 = MEMORY[0x277D82BE0](location[0]);
  v12 = MEMORY[0x277D82BE0](v14);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __63__CPSMapTemplateViewController_setHostGuidanceBackgroundColor___block_invoke(uint64_t a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = MEMORY[0x277D82BE0](*(a1 + 32));
  [*(a1 + 40) setGuidanceBackgroundColor:v2[0]];
  objc_storeStrong(v2, 0);
}

- (void)setHostTripEstimateStyle:(unint64_t)a3
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __57__CPSMapTemplateViewController_setHostTripEstimateStyle___block_invoke;
  v10 = &unk_278D91E38;
  v11[0] = MEMORY[0x277D82BE0](v14);
  v11[1] = v12;
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v11, 0);
}

- (void)setHostAutoHidesNavigationBar:(BOOL)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = self;
  v17 = a2;
  v16 = a3;
  location = CarPlaySupportGeneralLogging();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:v16];
    __os_log_helper_16_2_1_8_64(v19, v6);
    _os_log_impl(&dword_242FE8000, location, v14, "setHostAutoHidesNavigationBar %@", v19, 0xCu);
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(&location, 0);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __62__CPSMapTemplateViewController_setHostAutoHidesNavigationBar___block_invoke;
  v11 = &unk_278D91CA8;
  v12 = MEMORY[0x277D82BE0](v18);
  v13 = v16;
  dispatch_async(queue, &v7);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
}

uint64_t __62__CPSMapTemplateViewController_setHostAutoHidesNavigationBar___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) autoHidesNavigationBar];
  if (result != (*(a1 + 40) & 1))
  {
    [*(a1 + 32) setAutoHidesNavigationBar:*(a1 + 40) & 1];
    return [*(a1 + 32) _resetAutoHideTimerAndShowBarAnimated:1 allowFocusDeferral:1];
  }

  return result;
}

- (void)setHostHidesButtonsWithNavigationBar:(BOOL)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = self;
  v17 = a2;
  v16 = a3;
  location = CarPlaySupportGeneralLogging();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:v16];
    __os_log_helper_16_2_1_8_64(v19, v6);
    _os_log_impl(&dword_242FE8000, location, v14, "setHostHidesButtonsWithNavigationBar %@", v19, 0xCu);
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(&location, 0);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __69__CPSMapTemplateViewController_setHostHidesButtonsWithNavigationBar___block_invoke;
  v11 = &unk_278D91CA8;
  v12 = MEMORY[0x277D82BE0](v18);
  v13 = v16;
  dispatch_async(queue, &v7);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
}

uint64_t __69__CPSMapTemplateViewController_setHostHidesButtonsWithNavigationBar___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) hidesButtonsWithNavigationBar];
  if (result != (*(a1 + 40) & 1))
  {
    [*(a1 + 32) setHidesButtonsWithNavigationBar:*(a1 + 40) & 1];
    return [*(a1 + 32) _resetAutoHideTimerAndShowBarAnimated:1 allowFocusDeferral:1];
  }

  return result;
}

- (void)setHostTripPreviews:(id)a3 textConfiguration:(id)a4 previewOnlyRouteChoices:(BOOL)a5 selectedIndex:(unint64_t)a6
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  v22 = a5;
  v21 = a6;
  v10 = MEMORY[0x277D85CD0];
  v6 = MEMORY[0x277D85CD0];
  queue = v10;
  v12 = MEMORY[0x277D85DD0];
  v13 = -1073741824;
  v14 = 0;
  v15 = __108__CPSMapTemplateViewController_setHostTripPreviews_textConfiguration_previewOnlyRouteChoices_selectedIndex___block_invoke;
  v16 = &unk_278D94230;
  v17 = MEMORY[0x277D82BE0](location[0]);
  v18 = MEMORY[0x277D82BE0](v25);
  v19[0] = MEMORY[0x277D82BE0](v23);
  v20 = v22;
  v19[1] = v21;
  dispatch_async(queue, &v12);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

void __108__CPSMapTemplateViewController_setHostTripPreviews_textConfiguration_previewOnlyRouteChoices_selectedIndex___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = CarPlaySupportGeneralLogging();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v9, *(a1 + 32));
    _os_log_debug_impl(&dword_242FE8000, oslog[0], type, "setHostTripPreviews %@", v9, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  v6 = MEMORY[0x277D82BE0](*(a1 + 32));
  if ([*(a1 + 32) count] > 0xC)
  {
    v2 = *(a1 + 32);
    oslog[4] = 0;
    oslog[3] = 12;
    oslog[5] = 0;
    oslog[6] = 12;
    v3 = [v2 subarrayWithRange:{0, 12}];
    v4 = v6;
    v6 = v3;
    *&v1 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  }

  [*(a1 + 40) setTripPreviews:{v6, v1}];
  [*(a1 + 40) setTripPreviewTextConfiguration:*(a1 + 48)];
  [*(a1 + 40) setPreviewOnlyRouteChoices:*(a1 + 64) & 1];
  [*(a1 + 40) setPreviewSelectedIndex:*(a1 + 56)];
  [*(a1 + 40) _reloadPreviewsView];
  objc_storeStrong(&v6, 0);
}

- (void)hostUpdateTravelEstimates:(id)a3 forTripIdentifier:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __76__CPSMapTemplateViewController_hostUpdateTravelEstimates_forTripIdentifier___block_invoke;
  v12 = &unk_278D926F0;
  v13 = MEMORY[0x277D82BE0](v16);
  v14 = MEMORY[0x277D82BE0](v18);
  v15 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

double __76__CPSMapTemplateViewController_hostUpdateTravelEstimates_forTripIdentifier___block_invoke(uint64_t a1, double result)
{
  if (*(a1 + 32))
  {
    v9 = *(a1 + 48);
    v10 = [*(a1 + 40) lastTravelEstimatesByTrip];
    [v10 setObject:v9 forKeyedSubscript:*(a1 + 32)];
    v11 = [*(a1 + 40) previewsView];
    [v11 updateEstimates:*(a1 + 48) forTripIdentifier:*(a1 + 32)];
    v14 = [*(a1 + 40) navigationETAView];
    v13 = [v14 trip];
    v12 = [v13 identifier];
    v15 = [v12 isEqual:*(a1 + 32)];
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    v2 = MEMORY[0x277D82BD8](v14).n128_u64[0];
    if (v15)
    {
      v8 = [*(a1 + 40) navigationETAView];
      [v8 updateEstimates:*(a1 + 48) forManeuver:0];
      v2 = MEMORY[0x277D82BD8](v8).n128_u64[0];
    }

    v6 = [*(a1 + 40) navigator];
    v5 = [v6 trip];
    v4 = [v5 identifier];
    v7 = [v4 isEqual:*(a1 + 32)];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    *&result = MEMORY[0x277D82BD8](v6).n128_u64[0];
    if (v7)
    {
      v3 = [*(a1 + 40) navigator];
      [v3 updateTripTravelEstimates:*(a1 + 48)];
      *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
    }
  }

  return result;
}

- (void)hostStartNavigationSessionForTrip:(id)a3 reply:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v39 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v37 = 0;
  objc_storeStrong(&v37, a4);
  v14 = [(CPSMapTemplateViewController *)v39 navigator];
  *&v4 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  if (v14)
  {
    v13 = [(CPSMapTemplateViewController *)v39 mapTemplateDelegate];
    [(CPMapClientTemplateDelegate *)v13 clientTripAlreadyStartedException];
    MEMORY[0x277D82BD8](v13);
    v36 = 1;
  }

  else
  {
    v12 = [MEMORY[0x277CCAE80] currentConnection];
    v35 = [v12 cp_bundleIdentifier];
    v5 = MEMORY[0x277D82BD8](v12).n128_u64[0];
    if (v35)
    {
      v11 = +[CPSAnalytics sharedInstance];
      [(CPSAnalytics *)v11 navigationStartedWithBundleIdentifier:v35];
      v5 = MEMORY[0x277D82BD8](v11).n128_u64[0];
    }

    if ([(NSArray *)v39->_tripPreviews count])
    {
      v34 = CarPlaySupportGeneralLogging();
      v33 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v40, location[0]);
        _os_log_debug_impl(&dword_242FE8000, v34, v33, "Dismissing trip preview cards for trip: %@.", v40, 0xCu);
      }

      objc_storeStrong(&v34, 0);
      [(CPSMapTemplateViewController *)v39 setHostTripPreviews:MEMORY[0x277CBEBF8] textConfiguration:0 previewOnlyRouteChoices:0 selectedIndex:0];
    }

    v32 = CarPlaySupportGeneralLogging();
    v31 = 2;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v9 = v32;
      v10 = v31;
      __os_log_helper_16_0_0(v30);
      _os_log_debug_impl(&dword_242FE8000, v9, v10, "navigation session provider requested", v30, 2u);
    }

    objc_storeStrong(&v32, 0);
    v24[0] = 0;
    v24[1] = v24;
    v25 = 838860800;
    v26 = 48;
    v27 = __Block_byref_object_copy__5;
    v28 = __Block_byref_object_dispose__5;
    v29 = 0;
    v6 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    v16 = MEMORY[0x277D85DD0];
    v17 = -1073741824;
    v18 = 0;
    v19 = __72__CPSMapTemplateViewController_hostStartNavigationSessionForTrip_reply___block_invoke;
    v20 = &unk_278D94258;
    v23[1] = v24;
    v21 = MEMORY[0x277D82BE0](v39);
    v22 = MEMORY[0x277D82BE0](location[0]);
    v23[0] = MEMORY[0x277D82BE0](v35);
    dispatch_sync(queue, &v16);
    v7 = MEMORY[0x277D82BD8](queue);
    (*(v37 + 2))(v7);
    objc_storeStrong(v23, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    _Block_object_dispose(v24, 8);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v35, 0);
    v36 = 0;
  }

  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
}

double __72__CPSMapTemplateViewController_hostStartNavigationSessionForTrip_reply___block_invoke(uint64_t a1)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = [v6 lastTravelEstimatesByTrip];
  v8 = [*(a1 + 40) identifier];
  v7 = [v9 objectForKeyedSubscript:?];
  v1 = [v6 _tripDidBegin:v5 withEstimates:? forIdentifier:?];
  v2 = *(*(a1 + 56) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v11 = [*(a1 + 32) lastTravelEstimatesByTrip];
  [v11 removeAllObjects];
  *&result = MEMORY[0x277D82BD8](v11).n128_u64[0];
  return result;
}

- (void)setMapButton:(id)a3 hidden:(BOOL)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = a4;
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __52__CPSMapTemplateViewController_setMapButton_hidden___block_invoke;
  v12 = &unk_278D92318;
  v13 = MEMORY[0x277D82BE0](v18);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = v16;
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

double __52__CPSMapTemplateViewController_setMapButton_hidden___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _buttonForIdentifier:*(a1 + 40)];
  [v3 setHidden:*(a1 + 48) & 1];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

- (void)hostSetMapButton:(id)a3 imageSet:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __58__CPSMapTemplateViewController_hostSetMapButton_imageSet___block_invoke;
  v12 = &unk_278D926F0;
  v13 = MEMORY[0x277D82BE0](v18);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = MEMORY[0x277D82BE0](v16);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __58__CPSMapTemplateViewController_hostSetMapButton_imageSet___block_invoke(uint64_t a1)
{
  v5[2] = a1;
  v5[1] = a1;
  v1 = objc_opt_class();
  v2 = [*(a1 + 32) _buttonForIdentifier:*(a1 + 40)];
  v5[0] = CPSSafeCast_22(v1, v2);
  v4 = [*(a1 + 48) image];
  [v5[0] setButtonImage:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(v5, 0);
}

- (void)setMapButton:(id)a3 focusedImage:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __58__CPSMapTemplateViewController_setMapButton_focusedImage___block_invoke;
  v12 = &unk_278D926F0;
  v13 = MEMORY[0x277D82BE0](v18);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = MEMORY[0x277D82BE0](v16);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __58__CPSMapTemplateViewController_setMapButton_focusedImage___block_invoke(uint64_t a1)
{
  v5[2] = a1;
  v5[1] = a1;
  v2 = objc_opt_class();
  v3 = [*(a1 + 32) _buttonForIdentifier:*(a1 + 40)];
  v5[0] = CPSSafeCast_22(v2, v3);
  *&v1 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  [v5[0] setButtonFocusedImage:{*(a1 + 48), v1}];
  objc_storeStrong(v5, 0);
}

- (void)hostSetPanInterfaceVisible:(BOOL)a3 animated:(BOOL)a4
{
  v18 = self;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v5 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v5;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __68__CPSMapTemplateViewController_hostSetPanInterfaceVisible_animated___block_invoke;
  v11 = &unk_278D94280;
  v12 = MEMORY[0x277D82BE0](v18);
  v13 = v16;
  v14 = v15;
  dispatch_async(queue, &v7);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
}

- (void)hostSetMapButtons:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __50__CPSMapTemplateViewController_hostSetMapButtons___block_invoke;
  v10 = &unk_278D910D8;
  v11 = MEMORY[0x277D82BE0](v14);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)hostPanInterfaceVisible:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __56__CPSMapTemplateViewController_hostPanInterfaceVisible___block_invoke;
  v10 = &unk_278D91D20;
  v12 = MEMORY[0x277D82BE0](location[0]);
  v11 = MEMORY[0x277D82BE0](v14);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

double __56__CPSMapTemplateViewController_hostPanInterfaceVisible___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) panContainerView];
  (*(v2 + 16))(v2, [v3 isHidden] ^ 1);
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

- (BOOL)_isAutoHideEnabled
{
  v3 = [(CPSMapTemplateViewController *)self autoHideDisabledReasons];
  v4 = 0;
  if (![(NSMutableSet *)v3 count])
  {
    v4 = [(CPSMapTemplateViewController *)self autoHidesNavigationBar];
  }

  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (void)_setAutoHideDisabled:(BOOL)a3 forRequester:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v18 = self;
  v17 = a2;
  v16 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  if (v16)
  {
    v11 = [(CPSMapTemplateViewController *)v18 autoHideDisabledReasons];
    v4 = MEMORY[0x277D82BD8](v11).n128_u64[0];
    if (!v11)
    {
      v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
      [(CPSMapTemplateViewController *)v18 setAutoHideDisabledReasons:?];
      v4 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    }

    v9 = [(CPSMapTemplateViewController *)v18 autoHideDisabledReasons];
    [(NSMutableSet *)v9 addObject:location];
    MEMORY[0x277D82BD8](v9);
    v14 = CarPlaySupportGeneralLogging();
    v13 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_66(v20, location);
      _os_log_debug_impl(&dword_242FE8000, v14, v13, "Disabling auto hide for requester: %{public}@", v20, 0xCu);
    }

    objc_storeStrong(&v14, 0);
  }

  else
  {
    v7 = [(CPSMapTemplateViewController *)v18 autoHideDisabledReasons];
    v8 = [(NSMutableSet *)v7 containsObject:location];
    *&v5 = MEMORY[0x277D82BD8](v7).n128_u64[0];
    if (v8)
    {
      v6 = [(CPSMapTemplateViewController *)v18 autoHideDisabledReasons];
      [(NSMutableSet *)v6 removeObject:location];
      MEMORY[0x277D82BD8](v6);
      v12 = CarPlaySupportGeneralLogging();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_66(v19, location);
        _os_log_debug_impl(&dword_242FE8000, v12, OS_LOG_TYPE_DEBUG, "Enabling auto hide for requester: %{public}@", v19, 0xCu);
      }

      objc_storeStrong(&v12, 0);
    }
  }

  [(CPSMapTemplateViewController *)v18 _resetAutoHideTimerAndShowBarAnimated:1 allowFocusDeferral:1];
  objc_storeStrong(&location, 0);
}

- (void)_resetAutoHideTimerAndShowBarAnimated:(BOOL)a3 allowFocusDeferral:(BOOL)a4
{
  [(CPSMapTemplateViewController *)self _showBarAnimated:a3 allowFocusDeferral:a4];
  v5 = [(CPSMapTemplateViewController *)self autoHideTimer];
  [(NSTimer *)v5 invalidate];
  if ([(CPSMapTemplateViewController *)self _isAutoHideEnabled]&& ![(CPSMapTemplateViewController *)self demoAutoHideTimerDisabled])
  {
    v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__hideBar_ selector:0 userInfo:0 repeats:5.0];
    [(CPSMapTemplateViewController *)self setAutoHideTimer:?];
    MEMORY[0x277D82BD8](v4);
  }
}

- (void)_setButtonsHidden:(BOOL)a3 animated:(BOOL)a4
{
  v24 = self;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v4 = 0.0;
  if (!a3)
  {
    v4 = 1.0;
  }

  v20 = v4;
  if (v21)
  {
    v7 = MEMORY[0x277D75D18];
    v6 = *MEMORY[0x277D76DA0];
    v14 = MEMORY[0x277D85DD0];
    v15 = -1073741824;
    v16 = 0;
    v17 = __59__CPSMapTemplateViewController__setButtonsHidden_animated___block_invoke;
    v18 = &unk_278D91E38;
    v19[0] = MEMORY[0x277D82BE0](v24);
    v19[1] = *&v20;
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __59__CPSMapTemplateViewController__setButtonsHidden_animated___block_invoke_2;
    v12 = &unk_278D91398;
    v13 = MEMORY[0x277D82BE0](v24);
    [v7 animateWithDuration:&v14 animations:&v8 completion:v6];
    objc_storeStrong(&v13, 0);
    objc_storeStrong(v19, 0);
  }

  else
  {
    v5 = [(CPSMapTemplateViewController *)v24 trailingBottomStackView];
    [(UIStackView *)v5 setAlpha:v20];
    MEMORY[0x277D82BD8](v5);
  }

  [(CPSMapTemplateViewController *)v24 _updateSafeArea];
}

double __59__CPSMapTemplateViewController__setButtonsHidden_animated___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) trailingBottomStackView];
  [v3 setAlpha:*(a1 + 40)];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

- (void)_setFocusHoldersEnabled:(BOOL)a3
{
  v3 = [(CPSMapTemplateViewController *)self focusHolderLeftFocusGuide];
  [(UIFocusGuide *)v3 setEnabled:a3];
  v4 = [(CPSMapTemplateViewController *)self focusHolderRightFocusGuide];
  [(UIFocusGuide *)v4 setEnabled:a3];
  v5 = [(CPSMapTemplateViewController *)self focusHoldingButton];
  [(_CPSFocusHoldingButton *)v5 setEnabled:a3];
  MEMORY[0x277D82BD8](v5);
}

- (void)_showBarAnimated:(BOOL)a3 allowFocusDeferral:(BOOL)a4
{
  v23 = self;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v10 = [(CPSMapTemplateViewController *)self navigationController];
  v11 = [v10 isNavigationBarHidden];
  *&v4 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (v11)
  {
    [(CPSMapTemplateViewController *)v23 _setFocusHoldersEnabled:0, v4];
    v8 = MEMORY[0x277CD9FF0];
    v14 = MEMORY[0x277D85DD0];
    v15 = -1073741824;
    v16 = 0;
    v17 = __68__CPSMapTemplateViewController__showBarAnimated_allowFocusDeferral___block_invoke;
    v18 = &unk_278D913E8;
    v19 = MEMORY[0x277D82BE0](v23);
    [v8 setCompletionBlock:&v14];
    [MEMORY[0x277CD9FF0] begin];
    v9 = [(CPSMapTemplateViewController *)v23 navigationController];
    [v9 setNavigationBarHidden:0 animated:v21];
    [MEMORY[0x277CD9FF0] commit];
    [(CPSMapTemplateViewController *)v23 _setButtonsHidden:0 animated:v21];
    if ([(CPSMapTemplateViewController *)v23 shouldRestoreFocusToNavigationBar])
    {
      [(CPSMapTemplateViewController *)v23 setShouldRestoreFocusToNavigationBar:0];
      v7 = [(CPSMapTemplateViewController *)v23 navigationController];
      v6 = [v7 navigationBar];
      [(CPSMapTemplateViewController *)v23 setLastFocusedItem:?];
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v7);
      v5 = objc_alloc(MEMORY[0x277D75F98]);
      v13 = [v5 initWithEnvironment:v23];
      [v13 setAllowsDeferral:v20];
      v12 = [MEMORY[0x277D75518] focusSystemForEnvironment:v23];
      [v12 _requestFocusUpdate:v13];
      objc_storeStrong(&v12, 0);
      objc_storeStrong(&v13, 0);
    }

    objc_storeStrong(&v19, 0);
  }
}

void __68__CPSMapTemplateViewController__showBarAnimated_allowFocusDeferral___block_invoke(void *a1)
{
  v10[2] = a1;
  v10[1] = a1;
  v2 = MEMORY[0x277D85CD0];
  v1 = MEMORY[0x277D85CD0];
  queue = v2;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __68__CPSMapTemplateViewController__showBarAnimated_allowFocusDeferral___block_invoke_2;
  v9 = &unk_278D913E8;
  v10[0] = MEMORY[0x277D82BE0](a1[4]);
  dispatch_async(queue, &v5);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v10, 0);
}

- (void)_hideBar:(id)a3
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(CPSMapTemplateViewController *)v23 _isAutoHideEnabled])
  {
    v6 = [(CPSMapTemplateViewController *)v23 autoHideTimer];
    [(NSTimer *)v6 invalidate];
    *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
    [(CPSMapTemplateViewController *)v23 _setFocusHoldersEnabled:1, v3];
    v21 = [MEMORY[0x277D75518] focusSystemForEnvironment:v23];
    v7 = objc_opt_class();
    v8 = [v21 focusedItem];
    v20 = CPSSafeCast_22(v7, v8);
    *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
    v10 = [(CPSMapTemplateViewController *)v23 navigationController];
    v9 = [v10 navigationBar];
    v5 = [v20 isDescendantOfView:?];
    [(CPSMapTemplateViewController *)v23 setShouldRestoreFocusToNavigationBar:v5];
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    v11 = MEMORY[0x277CD9FF0];
    v13 = MEMORY[0x277D85DD0];
    v14 = -1073741824;
    v15 = 0;
    v16 = __41__CPSMapTemplateViewController__hideBar___block_invoke;
    v17 = &unk_278D910D8;
    v18 = MEMORY[0x277D82BE0](v23);
    v19 = MEMORY[0x277D82BE0](v21);
    [v11 setCompletionBlock:&v13];
    [MEMORY[0x277CD9FF0] begin];
    v12 = [(CPSMapTemplateViewController *)v23 navigationController];
    [v12 setNavigationBarHidden:1 animated:1];
    [MEMORY[0x277CD9FF0] commit];
    if ([(CPSMapTemplateViewController *)v23 hidesButtonsWithNavigationBar])
    {
      [(CPSMapTemplateViewController *)v23 _setButtonsHidden:1 animated:1];
    }

    [(CPSMapTemplateViewController *)v23 _updateSafeArea];
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
  }

  objc_storeStrong(location, 0);
}

void __41__CPSMapTemplateViewController__hideBar___block_invoke(void *a1)
{
  v11[2] = a1;
  v11[1] = a1;
  v2 = MEMORY[0x277D85CD0];
  v1 = MEMORY[0x277D85CD0];
  queue = v2;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __41__CPSMapTemplateViewController__hideBar___block_invoke_2;
  v9 = &unk_278D910D8;
  v10 = MEMORY[0x277D82BE0](a1[4]);
  v11[0] = MEMORY[0x277D82BE0](a1[5]);
  dispatch_async(queue, &v5);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v11, 0);
  objc_storeStrong(&v10, 0);
}

uint64_t __41__CPSMapTemplateViewController__hideBar___block_invoke_2(id *a1)
{
  v4[2] = a1;
  v4[1] = a1;
  if ([a1[4] shouldRestoreFocusToNavigationBar])
  {
    v2 = [a1[4] focusHoldingButton];
    [a1[4] setLastFocusedItem:?];
    MEMORY[0x277D82BD8](v2);
    v4[0] = [objc_alloc(MEMORY[0x277D75F98]) initWithEnvironment:a1[4]];
    [v4[0] setAllowsDeferral:0];
    [a1[5] _requestFocusUpdate:v4[0]];
    objc_storeStrong(v4, 0);
  }

  return [a1[4] _updateSafeArea];
}

- (void)_handleTapGesture:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(CPSMapTemplateViewController *)v12 autoHidesNavigationBar])
  {
    v6 = [(CPSMapTemplateViewController *)v12 navigationController];
    v7 = [v6 isNavigationBarHidden];
    *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
    if (v7)
    {
      v10 = CarPlaySupportGeneralLogging();
      v9 = 2;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        log = v10;
        type = v9;
        __os_log_helper_16_0_0(v8);
        _os_log_debug_impl(&dword_242FE8000, log, type, "Showing navigation bar with reason: tap gesture", v8, 2u);
      }

      objc_storeStrong(&v10, 0);
      [(CPSMapTemplateViewController *)v12 _resetAutoHideTimerAndShowBarAnimated:1 allowFocusDeferral:1];
    }

    else
    {
      [(CPSMapTemplateViewController *)v12 _hideBar:0, v3];
    }
  }

  objc_storeStrong(location, 0);
}

- (void)_handlePanGesture:(id)a3
{
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = location[0];
  v20 = [(CPSMapTemplateViewController *)v27 view];
  [v19 locationInView:?];
  v24 = v3;
  v25 = v4;
  *&v5 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  v21 = [location[0] state];
  switch(v21)
  {
    case 1:
      [(CPSMapTemplateViewController *)v27 setLastPanGesturePoint:v24, v25];
      v18 = [(CPSMapTemplateViewController *)v27 mapTemplateDelegate];
      [(CPMapClientTemplateDelegate *)v18 clientPanGestureBegan];
      MEMORY[0x277D82BD8](v18);
      break;
    case 2:
      [(CPSMapTemplateViewController *)v27 lastPanGesturePoint];
      [(CPSMapTemplateViewController *)v27 lastPanGesturePoint];
      CGPointMake_0();
      v22 = v6;
      v23 = v7;
      v17 = [(CPSMapTemplateViewController *)v27 mapTemplateDelegate];
      v15 = location[0];
      v16 = [(CPSMapTemplateViewController *)v27 view];
      [v15 velocityInView:?];
      [(CPMapClientTemplateDelegate *)v17 clientPanGestureWithDeltaPoint:v22 velocity:v23, v8, v9];
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      [(CPSMapTemplateViewController *)v27 setLastPanGesturePoint:v24, v25];
      break;
    case 3:
      v14 = [(CPSMapTemplateViewController *)v27 mapTemplateDelegate];
      v12 = location[0];
      v13 = [(CPSMapTemplateViewController *)v27 view];
      [v12 velocityInView:?];
      [(CPMapClientTemplateDelegate *)v14 clientPanGestureEndedWithVelocity:v10, v11];
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      break;
  }

  objc_storeStrong(location, 0);
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v11 = location[0];
  v12 = [(CPSMapTemplateViewController *)v21 pinchGestureRecognizer];
  v17 = 0;
  v15 = 0;
  v13 = 0;
  if (v11 != v12 || (v8 = v19, v18 = [(CPSMapTemplateViewController *)v21 rotationGestureRecognizer], v17 = 1, v9 = 1, v8 != v18))
  {
    v6 = location[0];
    v16 = [(CPSMapTemplateViewController *)v21 rotationGestureRecognizer];
    v15 = 1;
    v7 = 0;
    if (v6 == v16)
    {
      v5 = v19;
      v14 = [(CPSMapTemplateViewController *)v21 pinchGestureRecognizer];
      v13 = 1;
      v7 = v5 == v14;
    }

    v9 = v7;
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](v14);
  }

  if (v15)
  {
    MEMORY[0x277D82BD8](v16);
  }

  if (v17)
  {
    MEMORY[0x277D82BD8](v18);
  }

  MEMORY[0x277D82BD8](v12);
  v22 = (v9 & 1) != 0;
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  return v22;
}

- (void)_handlePinchGesture:(id)a3
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = [location[0] state];
  switch(v17)
  {
    case 1:
      v16 = [(CPSMapTemplateViewController *)v21 mapTemplateDelegate];
      [(CPMapClientTemplateDelegate *)v16 clientZoomGestureBegan];
      MEMORY[0x277D82BD8](v16);
      break;
    case 2:
      [(CPSMapTemplateViewController *)v21 gestureDelay];
      if (v3 <= 0.0 || ([MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate], v15 = v4, -[CPSMapTemplateViewController gestureDelay](v21, "gestureDelay"), v15 - v5 >= 0.03))
      {
        v14 = [(CPSMapTemplateViewController *)v21 mapTemplateDelegate];
        v11 = location[0];
        v13 = [(CPSMapTemplateViewController *)v21 view];
        [v11 locationInView:?];
        v18 = v6;
        v19 = v7;
        [location[0] scale];
        v12 = v8;
        [location[0] velocity];
        [(CPMapClientTemplateDelegate *)v14 clientZoomGestureWithCenterPoint:v18 scale:v19 velocity:v12, v9];
        MEMORY[0x277D82BD8](v13);
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        [(CPSMapTemplateViewController *)v21 setGestureDelay:?];
      }

      break;
    case 3:
      v10 = [(CPSMapTemplateViewController *)v21 mapTemplateDelegate];
      [location[0] velocity];
      [(CPMapClientTemplateDelegate *)v10 clientZoomGestureEndedWithVelocity:?];
      MEMORY[0x277D82BD8](v10);
      break;
  }

  objc_storeStrong(location, 0);
}

- (CGPoint)safeAreaCenterPoint
{
  v41 = [(CPSMapTemplateViewController *)self view];
  [v41 safeAreaInsets];
  v50 = v2;
  v51 = v3;
  v53 = v4;
  v54 = v5;
  MEMORY[0x277D82BD8](v41);
  [(CPSMapTemplateViewController *)self _cardViewEdgeInsets];
  v48 = v6;
  v49 = v7;
  [(CPSMapTemplateViewController *)self _mapButtonsEdgeInsets];
  v46 = v8;
  v47 = v9;
  [(CPSMapTemplateViewController *)self _previewEdgeInsets];
  if ([(CPSMapTemplateViewController *)self rightHandDrive])
  {
    v52 = v51 + CPSMaxCGFloat(5uLL, v10, v11, v12, v13, v14, v15, v16, v46);
    v55 = v54 + CPSMaxCGFloat(5uLL, v17, v18, v19, v20, v21, v22, v23, v49);
  }

  else
  {
    v52 = v51 + CPSMaxCGFloat(5uLL, v10, v11, v12, v13, v14, v15, v16, v48);
    v55 = v54 + CPSMaxCGFloat(5uLL, v24, v25, v26, v27, v28, v29, v30, v47);
  }

  v38 = [(CPSMapTemplateViewController *)self view];
  v37 = [v38 safeAreaLayoutGuide];
  [v37 layoutFrame];
  v44 = v31;
  v45 = v32;
  MEMORY[0x277D82BD8](v37);
  v40 = [(CPSMapTemplateViewController *)self view];
  v39 = [v40 safeAreaLayoutGuide];
  [v39 layoutFrame];
  v42 = v33;
  v43 = v34;
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](v40);
  v36 = v43 + v52 + (v44 - v52 - v55) / 2.0;
  v35 = v42 + v50 + (v45 - v50 - v53) / 2.0;
  result.y = v36;
  result.x = v35;
  return result;
}

- (void)_handleTwoFingerTapGesture:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(CPSMapTemplateViewController *)v7 mapTemplateDelegate];
  [(CPSMapTemplateViewController *)v7 safeAreaCenterPoint];
  [(CPMapClientTemplateDelegate *)v5 clientZoomGestureWithCenterPoint:v3 scale:v4 velocity:1.0, -1.0];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);
}

- (void)_handleOneFingerDoubleTapGesture:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(CPSMapTemplateViewController *)v7 mapTemplateDelegate];
  [(CPSMapTemplateViewController *)v7 safeAreaCenterPoint];
  [(CPMapClientTemplateDelegate *)v5 clientZoomGestureWithCenterPoint:v3 scale:v4 velocity:1.0];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);
}

- (void)_handleRotationGesture:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = [location[0] state];
  switch(v13)
  {
    case 1:
      v12 = [(CPSMapTemplateViewController *)v17 mapTemplateDelegate];
      [(CPMapClientTemplateDelegate *)v12 clientRotationGestureBegan];
      MEMORY[0x277D82BD8](v12);
      break;
    case 2:
      v11 = [(CPSMapTemplateViewController *)v17 mapTemplateDelegate];
      v8 = location[0];
      v10 = [(CPSMapTemplateViewController *)v17 view];
      [v8 locationInView:?];
      v14 = v3;
      v15 = v4;
      [location[0] rotation];
      v9 = v5;
      [location[0] velocity];
      [(CPMapClientTemplateDelegate *)v11 clientRotationGestureWithCenterPoint:v14 rotation:v15 velocity:v9, v6];
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
      break;
    case 3:
      v7 = [(CPSMapTemplateViewController *)v17 mapTemplateDelegate];
      [location[0] velocity];
      [(CPMapClientTemplateDelegate *)v7 clientRotationGestureEndedWithVelocity:?];
      MEMORY[0x277D82BD8](v7);
      break;
  }

  objc_storeStrong(location, 0);
}

- (void)_handleSwipeGesture:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = [location[0] state];
  switch(v14)
  {
    case 1:
      v13 = [(CPSMapTemplateViewController *)v16 mapTemplateDelegate];
      [(CPMapClientTemplateDelegate *)v13 clientPitchGestureBegan];
      MEMORY[0x277D82BD8](v13);
      break;
    case 2:
      v12 = [(CPSMapTemplateViewController *)v16 mapTemplateDelegate];
      v10 = location[0];
      v11 = [(CPSMapTemplateViewController *)v16 view];
      [v10 locationInView:?];
      [(CPMapClientTemplateDelegate *)v12 clientPitchGestureWithCenterPoint:v3, v4];
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      break;
    case 3:
      v9 = [(CPSMapTemplateViewController *)v16 mapTemplateDelegate];
      v7 = location[0];
      v8 = [(CPSMapTemplateViewController *)v16 view];
      [v7 locationInView:?];
      [(CPMapClientTemplateDelegate *)v9 clientPitchGestureEndedWithCenterPoint:v5, v6];
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
      break;
  }

  objc_storeStrong(location, 0);
}

- (void)_handleFocusHolderSelect
{
  v7 = self;
  location[1] = a2;
  location[0] = CarPlaySupportGeneralLogging();
  v5 = 2;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    log = location[0];
    type = v5;
    __os_log_helper_16_0_0(v4);
    _os_log_debug_impl(&dword_242FE8000, log, type, "Showing navigation bar with reason: focus holding button select press", v4, 2u);
  }

  objc_storeStrong(location, 0);
  [(CPSMapTemplateViewController *)v7 _resetAutoHideTimerAndShowBarAnimated:1 allowFocusDeferral:1];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v14 = 0;
  LOBYTE(v10) = 0;
  if ([(CPSMapTemplateViewController *)v18 autoHidesNavigationBar])
  {
    v15 = [(CPSMapTemplateViewController *)v18 navigationController];
    v14 = 1;
    v10 = [v15 isNavigationBarHidden] ^ 1;
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](v15);
  }

  if (v10)
  {
    v13 = CarPlaySupportGeneralLogging();
    v12 = 2;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      log = v13;
      type = v12;
      __os_log_helper_16_0_0(v11);
      _os_log_debug_impl(&dword_242FE8000, log, type, "Showing navigation bar with reason: gesture recognized touch", v11, 2u);
    }

    objc_storeStrong(&v13, 0);
    [(CPSMapTemplateViewController *)v18 _resetAutoHideTimerAndShowBarAnimated:1 allowFocusDeferral:1];
  }

  v6 = location[0];
  v5 = [(CPSMapTemplateViewController *)v18 navBarHideTapGestureRecognizer];
  MEMORY[0x277D82BD8](v5);
  v19 = v6 != v5;
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  return v19;
}

- (void)_setPanInterfaceVisible:(BOOL)a3 animated:(BOOL)a4
{
  v56 = self;
  v55 = a2;
  v54 = a3;
  v53 = a4;
  if (a3)
  {
    [(CPSMapTemplateViewController *)v56 _addPanControllerAsChild];
    v14 = [(CPSMapTemplateViewController *)v56 navBarHideTapGestureRecognizer];
    [(UITapGestureRecognizer *)v14 setEnabled:0];
    [(CPSMapTemplateViewController *)v56 _setAutoHideDisabled:1 forRequester:@"PanModeRequester", MEMORY[0x277D82BD8](v14).n128_f64[0]];
    v46 = MEMORY[0x277D85DD0];
    v47 = -1073741824;
    v48 = 0;
    v49 = __65__CPSMapTemplateViewController__setPanInterfaceVisible_animated___block_invoke;
    v50 = &unk_278D913E8;
    v51 = MEMORY[0x277D82BE0](v56);
    v52 = MEMORY[0x245D2A460](&v46);
    if (v53)
    {
      v11 = [(CPSMapTemplateViewController *)v56 panContainerView];
      [(UIView *)v11 setAlpha:0.0];
      *&v4 = MEMORY[0x277D82BD8](v11).n128_u64[0];
      v12 = [(CPSMapTemplateViewController *)v56 panContainerView];
      [(UIView *)v12 setHidden:0];
      MEMORY[0x277D82BD8](v12);
      v13 = MEMORY[0x277D75D18];
      v40 = MEMORY[0x277D85DD0];
      v41 = -1073741824;
      v42 = 0;
      v43 = __65__CPSMapTemplateViewController__setPanInterfaceVisible_animated___block_invoke_2;
      v44 = &unk_278D913E8;
      v45 = MEMORY[0x277D82BE0](v56);
      v34 = MEMORY[0x277D85DD0];
      v35 = -1073741824;
      v36 = 0;
      v37 = __65__CPSMapTemplateViewController__setPanInterfaceVisible_animated___block_invoke_3;
      v38 = &unk_278D92F10;
      v39 = MEMORY[0x277D82BE0](v52);
      [v13 animateWithDuration:&v40 animations:&v34 completion:0.35];
      objc_storeStrong(&v39, 0);
      objc_storeStrong(&v45, 0);
    }

    else
    {
      v9 = [(CPSMapTemplateViewController *)v56 panContainerView];
      [(UIView *)v9 setAlpha:1.0];
      *&v5 = MEMORY[0x277D82BD8](v9).n128_u64[0];
      v10 = [(CPSMapTemplateViewController *)v56 panContainerView];
      [(UIView *)v10 setHidden:0];
      *&v6 = MEMORY[0x277D82BD8](v10).n128_u64[0];
      [(CPSMapTemplateViewController *)v56 _setMaximumVisibleMapButtons:2, v6];
      (*(v52 + 2))();
    }

    objc_storeStrong(&v52, 0);
    objc_storeStrong(&v51, 0);
  }

  else
  {
    v8 = [(CPSMapTemplateViewController *)v56 mapTemplateDelegate];
    [(CPMapClientTemplateDelegate *)v8 clientPanViewWillDisappear];
    MEMORY[0x277D82BD8](v8);
    v27 = MEMORY[0x277D85DD0];
    v28 = -1073741824;
    v29 = 0;
    v30 = __65__CPSMapTemplateViewController__setPanInterfaceVisible_animated___block_invoke_4;
    v31 = &unk_278D913E8;
    v32 = MEMORY[0x277D82BE0](v56);
    v33 = MEMORY[0x245D2A460](&v27);
    if (v53)
    {
      v7 = MEMORY[0x277D75D18];
      v21 = MEMORY[0x277D85DD0];
      v22 = -1073741824;
      v23 = 0;
      v24 = __65__CPSMapTemplateViewController__setPanInterfaceVisible_animated___block_invoke_5;
      v25 = &unk_278D913E8;
      v26 = MEMORY[0x277D82BE0](v56);
      v15 = MEMORY[0x277D85DD0];
      v16 = -1073741824;
      v17 = 0;
      v18 = __65__CPSMapTemplateViewController__setPanInterfaceVisible_animated___block_invoke_6;
      v19 = &unk_278D92F10;
      v20 = MEMORY[0x277D82BE0](v33);
      [v7 animateWithDuration:&v21 animations:&v15 completion:0.35];
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v26, 0);
    }

    else
    {
      [(CPSMapTemplateViewController *)v56 _setMaximumVisibleMapButtons:4];
      (*(v33 + 2))();
    }

    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v32, 0);
  }

  [(CPSMapTemplateViewController *)v56 setNeedsFocusUpdate];
}

uint64_t __65__CPSMapTemplateViewController__setPanInterfaceVisible_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapTemplateDelegate];
  [v2 clientPanViewDidAppear];
  [*(a1 + 32) _updateInterestingArea];
  [*(a1 + 32) setLastFocusedItem:0];
  return [*(a1 + 32) setNeedsFocusUpdate];
}

uint64_t __65__CPSMapTemplateViewController__setPanInterfaceVisible_animated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) panContainerView];
  [v2 setAlpha:1.0];
  return [*(a1 + 32) _setMaximumVisibleMapButtons:{2, MEMORY[0x277D82BD8](v2).n128_f64[0]}];
}

uint64_t __65__CPSMapTemplateViewController__setPanInterfaceVisible_animated___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _removePanController];
  [*(a1 + 32) _setAutoHideDisabled:0 forRequester:@"PanModeRequester"];
  v2 = [*(a1 + 32) navBarHideTapGestureRecognizer];
  [v2 setEnabled:1];
  v3 = [*(a1 + 32) mapTemplateDelegate];
  [v3 clientPanViewDidDisappear];
  return [*(a1 + 32) _updateInterestingArea];
}

uint64_t __65__CPSMapTemplateViewController__setPanInterfaceVisible_animated___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) panContainerView];
  [v2 setAlpha:0.0];
  return [*(a1 + 32) _setMaximumVisibleMapButtons:{4, MEMORY[0x277D82BD8](v2).n128_f64[0]}];
}

- (void)_addPanControllerAsChild
{
  v35[4] = *MEMORY[0x277D85DE8];
  v2 = [(CPSMapTemplateViewController *)self panViewController];
  [(CPSPanViewController *)v2 willMoveToParentViewController:self];
  v3 = [(CPSMapTemplateViewController *)self panViewController];
  [(CPSMapTemplateViewController *)self addChildViewController:?];
  v6 = [(CPSMapTemplateViewController *)self panContainerView];
  v5 = [(CPSMapTemplateViewController *)self panViewController];
  v4 = [(CPSPanViewController *)v5 view];
  [(UIView *)v6 addSubview:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  v32 = [(CPSMapTemplateViewController *)self panContainerView];
  v31 = [(CPSMapTemplateViewController *)self panViewController];
  v30 = [(CPSPanViewController *)v31 view];
  v29 = [v30 topAnchor];
  v28 = [(CPSMapTemplateViewController *)self panContainerView];
  v27 = [(UIView *)v28 topAnchor];
  v26 = [v29 constraintEqualToAnchor:?];
  v35[0] = v26;
  v25 = [(CPSMapTemplateViewController *)self panViewController];
  v24 = [(CPSPanViewController *)v25 view];
  v23 = [v24 bottomAnchor];
  v22 = [(CPSMapTemplateViewController *)self panContainerView];
  v21 = [(UIView *)v22 bottomAnchor];
  v20 = [v23 constraintEqualToAnchor:?];
  v35[1] = v20;
  v19 = [(CPSMapTemplateViewController *)self panViewController];
  v18 = [(CPSPanViewController *)v19 view];
  v17 = [v18 leftAnchor];
  v16 = [(CPSMapTemplateViewController *)self panContainerView];
  v15 = [(UIView *)v16 leftAnchor];
  v14 = [v17 constraintEqualToAnchor:?];
  v35[2] = v14;
  v13 = [(CPSMapTemplateViewController *)self panViewController];
  v12 = [(CPSPanViewController *)v13 view];
  v11 = [v12 rightAnchor];
  v10 = [(CPSMapTemplateViewController *)self panContainerView];
  v9 = [(UIView *)v10 rightAnchor];
  v8 = [v11 constraintEqualToAnchor:?];
  v35[3] = v8;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
  [(UIView *)v32 addConstraints:?];
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
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  v33 = [(CPSMapTemplateViewController *)self panViewController];
  [(CPSPanViewController *)v33 didMoveToParentViewController:self];
  MEMORY[0x277D82BD8](v33);
}

- (void)_removePanController
{
  v2 = [(CPSMapTemplateViewController *)self panContainerView];
  [(UIView *)v2 setHidden:1];
  v3 = [(CPSMapTemplateViewController *)self panViewController];
  [(CPSPanViewController *)v3 willMoveToParentViewController:0];
  v5 = [(CPSMapTemplateViewController *)self panViewController];
  v4 = [(CPSPanViewController *)v5 view];
  [v4 removeFromSuperview];
  MEMORY[0x277D82BD8](v4);
  v6 = [(CPSMapTemplateViewController *)self panViewController];
  [(CPSPanViewController *)v6 removeFromParentViewController];
  MEMORY[0x277D82BD8](v6);
}

- (void)panWithDirection:(int64_t)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = self;
  v7 = a2;
  v6 = a3;
  oslog = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    __os_log_helper_16_2_2_8_64_8_64(v9, v8, v4);
    _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEFAULT, "%@: Pan button pressed with direction: %@", v9, 0x16u);
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&oslog, 0);
  v3 = [(CPSMapTemplateViewController *)v8 mapTemplateDelegate];
  [(CPMapClientTemplateDelegate *)v3 clientPanWithDirection:v6];
  MEMORY[0x277D82BD8](v3);
}

- (void)panBeganWithDirection:(int64_t)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = self;
  v7 = a2;
  v6 = a3;
  oslog = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    __os_log_helper_16_2_2_8_64_8_64(v9, v8, v4);
    _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEFAULT, "%@: Pan began with direction: %@", v9, 0x16u);
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&oslog, 0);
  v3 = [(CPSMapTemplateViewController *)v8 mapTemplateDelegate];
  [(CPMapClientTemplateDelegate *)v3 clientPanBeganWithDirection:v6];
  MEMORY[0x277D82BD8](v3);
}

- (void)panEndedWithDirection:(int64_t)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = self;
  v7 = a2;
  v6 = a3;
  oslog = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    __os_log_helper_16_2_2_8_64_8_64(v9, v8, v4);
    _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEFAULT, "%@: Pan ended with direction: %@", v9, 0x16u);
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&oslog, 0);
  v3 = [(CPSMapTemplateViewController *)v8 mapTemplateDelegate];
  [(CPMapClientTemplateDelegate *)v3 clientPanEndedWithDirection:v6];
  MEMORY[0x277D82BD8](v3);
}

- (void)navigationOwnershipChangedToOwner:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = self;
  v12 = a2;
  v11 = a3;
  v10 = CarPlaySupportGeneralLogging();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    log = v10;
    type = v9;
    v6 = NSStringFromNavigationOwner_1(v11);
    v8 = MEMORY[0x277D82BE0](v6);
    __os_log_helper_16_2_2_8_64_8_64(v15, v13, v8);
    _os_log_impl(&dword_242FE8000, log, type, "%@: Navigation ownership changed to %@", v15, 0x16u);
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(&v10, 0);
  if (v11 == 2)
  {
    oslog = CarPlaySupportGeneralLogging();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v14, v13);
      _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEFAULT, "%@: car owns navigation, requesting client cancel trip", v14, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v3 = [(CPSMapTemplateViewController *)v13 mapTemplateDelegate];
    [(CPMapClientTemplateDelegate *)v3 clientTripCanceledByExternalNavigation];
    MEMORY[0x277D82BD8](v3);
  }
}

- (void)_updateInterestingArea
{
  [(CPSMapTemplateViewController *)self _navBarInsets];
  v57 = v2;
  [(CPSMapTemplateViewController *)self _mapButtonsEdgeInsets];
  v55 = v3;
  v56 = v4;
  UIEdgeInsetsMake_5();
  if ([(CPSMapTemplateViewController *)self rightHandDrive])
  {
    if ([(CPSMapTemplateViewController *)self _trailingMapButtonsVisible])
    {
      v47 = [(CPSMapTemplateViewController *)self view];
      [v47 safeAreaInsets];
      v46 = v5;
      v6 = _UISolariumEnabled();
      v7 = 4.0;
      if ((v6 & 1) == 0)
      {
        v7 = 8.0;
      }

      v53 = v46 + v7;
      v52 = [(CPSMapTemplateViewController *)self view];
      [v52 bounds];
      v49 = v8;
      v51 = [(CPSMapTemplateViewController *)self trailingBottomStackView];
      [(UIStackView *)v51 frame];
      v50 = v9;
      v48 = [(CPSMapTemplateViewController *)self trailingBottomStackView];
      [(UIStackView *)v48 bounds];
      v54 = v49 - (v50 + v10);
      MEMORY[0x277D82BD8](v48);
      MEMORY[0x277D82BD8](v51);
      v11 = MEMORY[0x277D82BD8](v52).n128_u64[0];
    }

    else
    {
      v41 = [(CPSMapTemplateViewController *)self view];
      [v41 safeAreaInsets];
      v40 = v12;
      v13 = _UISolariumEnabled();
      v14 = 4.0;
      if ((v13 & 1) == 0)
      {
        v14 = 8.0;
      }

      v53 = v40 + v14;
      v45 = [(CPSMapTemplateViewController *)self view];
      [v45 bounds];
      v42 = v15;
      v44 = [(CPSMapTemplateViewController *)self view];
      [v44 safeAreaInsets];
      v43 = v42 - v16;
      v17 = _UISolariumEnabled();
      v18 = 4.0;
      if ((v17 & 1) == 0)
      {
        v18 = 8.0;
      }

      v54 = v43 - (v18 + 36.0);
      MEMORY[0x277D82BD8](v44);
      v11 = MEMORY[0x277D82BD8](v45).n128_u64[0];
    }
  }

  else if ([(CPSMapTemplateViewController *)self _trailingMapButtonsVisible])
  {
    v38 = [(CPSMapTemplateViewController *)self view];
    [v38 safeAreaInsets];
    v37 = v19;
    v20 = _UISolariumEnabled();
    v21 = 4.0;
    if ((v20 & 1) == 0)
    {
      v21 = 8.0;
    }

    v54 = v37 + v21;
    v39 = [(CPSMapTemplateViewController *)self view];
    [v39 bounds];
    v53 = v22 - v56;
    v11 = MEMORY[0x277D82BD8](v39).n128_u64[0];
  }

  else
  {
    v32 = [(CPSMapTemplateViewController *)self view];
    [v32 safeAreaInsets];
    v31 = v23;
    v24 = _UISolariumEnabled();
    v25 = 4.0;
    if ((v24 & 1) == 0)
    {
      v25 = 8.0;
    }

    v54 = v31 + v25;
    v36 = [(CPSMapTemplateViewController *)self view];
    [v36 bounds];
    v33 = v26;
    v35 = [(CPSMapTemplateViewController *)self view];
    [v35 safeAreaInsets];
    v34 = v33 - v27;
    v28 = _UISolariumEnabled();
    v29 = 4.0;
    if ((v28 & 1) == 0)
    {
      v29 = 8.0;
    }

    v53 = v34 - (v29 + 36.0);
    MEMORY[0x277D82BD8](v35);
    v11 = MEMORY[0x277D82BD8](v36).n128_u64[0];
  }

  v30 = [(CPSMapTemplateViewController *)self safeAreaDelegate];
  [(CPSSafeAreaDelegate *)v30 updateInterestingInsets:v57, v53, v55, v54];
  MEMORY[0x277D82BD8](v30);
}

- (void)_updateSafeArea
{
  v30 = [(CPSMapTemplateViewController *)self view];
  [v30 setNeedsLayout];
  v31 = [(CPSMapTemplateViewController *)self view];
  [v31 layoutIfNeeded];
  MEMORY[0x277D82BD8](v31);
  v32 = [(CPSMapTemplateViewController *)self view];
  [v32 safeAreaInsets];
  v37 = v2;
  v38 = v3;
  v40 = v4;
  v41 = v5;
  MEMORY[0x277D82BD8](v32);
  [(CPSMapTemplateViewController *)self _cardViewEdgeInsets];
  v35 = v6;
  v36 = v7;
  [(CPSMapTemplateViewController *)self _mapButtonsEdgeInsets];
  v33 = v8;
  v34 = v9;
  [(CPSMapTemplateViewController *)self _previewEdgeInsets];
  [(CPSMapTemplateViewController *)self _navBarInsets];
  [(CPSMapTemplateViewController *)self _navigationAlertInsets];
  v39 = v38 + CPSMaxCGFloat(5uLL, v10, v11, v12, v13, v14, v15, v16, v35);
  v42 = v41 + CPSMaxCGFloat(5uLL, v17, v18, v19, v20, v21, v22, v23, v36);
  if ([(CPSMapTemplateViewController *)self rightHandDrive])
  {
    v28 = [(CPSMapTemplateViewController *)self panContainerLeftConstraint];
    [(NSLayoutConstraint *)v28 setConstant:v33];
    MEMORY[0x277D82BD8](v28);
    v29 = [(CPSMapTemplateViewController *)self panContainerRightConstraint];
    [(NSLayoutConstraint *)v29 setConstant:-v42];
    v24 = MEMORY[0x277D82BD8](v29).n128_u64[0];
  }

  else
  {
    v26 = [(CPSMapTemplateViewController *)self panContainerLeftConstraint];
    [(NSLayoutConstraint *)v26 setConstant:v39];
    MEMORY[0x277D82BD8](v26);
    v27 = [(CPSMapTemplateViewController *)self panContainerRightConstraint];
    [(NSLayoutConstraint *)v27 setConstant:-v34];
    v24 = MEMORY[0x277D82BD8](v27).n128_u64[0];
  }

  v25 = [(CPSMapTemplateViewController *)self safeAreaDelegate];
  [(CPSSafeAreaDelegate *)v25 viewController:self didUpdateSafeAreaInsets:v37, v39, v40, v42];
  [(CPSMapTemplateViewController *)self _updateInterestingArea];
}

- (BOOL)_trailingMapButtonsVisible
{
  v16 = self;
  v15 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x20000000;
  v13 = 32;
  v14 = 0;
  v7 = [(CPSMapTemplateViewController *)self mapButtons];
  [(NSMutableArray *)v7 enumerateObjectsUsingBlock:?];
  *&v2 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  v8 = 0;
  v6 = [(CPSMapTemplateViewController *)v16 trailingBottomStackView];
  v5 = 0;
  if (([(UIStackView *)v6 isHidden]& 1) == 0)
  {
    v9 = [(CPSMapTemplateViewController *)v16 trailingBottomStackView];
    v8 = 1;
    [(UIStackView *)v9 alpha];
    v5 = 0;
    if (v3 > 0.0)
    {
      v5 = *(v11 + 24);
    }
  }

  v17 = v5 & 1;
  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  MEMORY[0x277D82BD8](v6);
  _Block_object_dispose(&v10, 8);
  return v17 & 1;
}

void __58__CPSMapTemplateViewController__trailingMapButtonsVisible__block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (([location[0] isHidden] & 1) == 0)
  {
    *(*(a1[4] + 8) + 24) = 1;
    *a4 = 1;
  }

  objc_storeStrong(location, 0);
}

- (UIEdgeInsets)_mapButtonsEdgeInsets
{
  v28 = *MEMORY[0x277D768C8];
  v29 = *(MEMORY[0x277D768C8] + 16);
  if ([(CPSMapTemplateViewController *)self _trailingMapButtonsVisible])
  {
    v26 = [(CPSMapTemplateViewController *)self view];
    [v26 bounds];
    v25 = v2;
    v24 = [(CPSMapTemplateViewController *)self trailingBottomStackView];
    [(UIStackView *)v24 frame];
    *&v28 = v25 - v3;
    MEMORY[0x277D82BD8](v24);
    if ([(CPSMapTemplateViewController *)self rightHandDrive])
    {
      v23 = [(CPSMapTemplateViewController *)self trailingBottomStackView];
      [(UIStackView *)v23 frame];
      v22 = v4;
      v21 = [(CPSMapTemplateViewController *)self trailingBottomStackView];
      [(UIStackView *)v21 frame];
      *(&v28 + 1) = v22 + v5;
      MEMORY[0x277D82BD8](v21);
      MEMORY[0x277D82BD8](v23);
    }

    else
    {
      v20 = [(CPSMapTemplateViewController *)self view];
      [v20 bounds];
      v19 = v6;
      v18 = [(CPSMapTemplateViewController *)self trailingBottomStackView];
      [(UIStackView *)v18 frame];
      *(&v29 + 1) = v19 - v7;
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v20);
    }
  }

  else
  {
    v16 = [(CPSMapTemplateViewController *)self childViewControllers];
    v15 = [(CPSMapTemplateViewController *)self panViewController];
    v17 = [v16 containsObject:?];
    MEMORY[0x277D82BD8](v15);
    *&v8 = MEMORY[0x277D82BD8](v16).n128_u64[0];
    if (v17)
    {
      v14 = [(CPSMapTemplateViewController *)self panViewController];
      [(CPSPanViewController *)v14 sideButtonTopInset];
      *&v28 = v9;
      MEMORY[0x277D82BD8](v14);
    }
  }

  v11 = *(&v28 + 1);
  v10 = *&v28;
  v13 = *(&v29 + 1);
  v12 = *&v29;
  result.right = v13;
  result.bottom = v12;
  result.left = v11;
  result.top = v10;
  return result;
}

- (UIEdgeInsets)_cardViewEdgeInsets
{
  v29 = *MEMORY[0x277D768C8];
  v30 = *(MEMORY[0x277D768C8] + 16);
  v26 = [(CPSMapTemplateViewController *)self navigationCardViewController];
  v27 = [(CPSNavigationCardViewController *)v26 navigationCardHidden];
  *&v2 = MEMORY[0x277D82BD8](v26).n128_u64[0];
  if (!v27)
  {
    if ([(CPSMapTemplateViewController *)self rightHandDrive])
    {
      v25 = [(CPSMapTemplateViewController *)self view];
      [v25 bounds];
      v20 = v3;
      v24 = [(CPSMapTemplateViewController *)self navigationCardViewController];
      v23 = [(CPSNavigationCardViewController *)v24 view];
      [v23 frame];
      v22 = v20 - v4;
      v21 = [(CPSMapTemplateViewController *)self view];
      [v21 safeAreaInsets];
      *(&v30 + 1) = v22 - v5;
      MEMORY[0x277D82BD8](v21);
      MEMORY[0x277D82BD8](v23);
      MEMORY[0x277D82BD8](v24);
      MEMORY[0x277D82BD8](v25);
    }

    else
    {
      v19 = [(CPSMapTemplateViewController *)self navigationCardViewController];
      v18 = [(CPSNavigationCardViewController *)v19 view];
      [v18 frame];
      v13 = v6;
      v17 = [(CPSMapTemplateViewController *)self navigationCardViewController];
      v16 = [(CPSNavigationCardViewController *)v17 view];
      [v16 frame];
      v15 = v13 + v7;
      v14 = [(CPSMapTemplateViewController *)self view];
      [v14 safeAreaInsets];
      *(&v29 + 1) = v15 - v8;
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
    }
  }

  v10 = *(&v29 + 1);
  v9 = *&v29;
  v12 = *(&v30 + 1);
  v11 = *&v30;
  result.right = v12;
  result.bottom = v11;
  result.left = v10;
  result.top = v9;
  return result;
}

- (UIEdgeInsets)_previewEdgeInsets
{
  v31 = *MEMORY[0x277D768C8];
  v32 = *(MEMORY[0x277D768C8] + 16);
  v24 = [(CPSMapTemplateViewController *)self previewsView];
  v28 = 0;
  v26 = 0;
  v25 = 0;
  if (v24)
  {
    v29 = [(CPSMapTemplateViewController *)self previewsView];
    v28 = 1;
    v25 = 0;
    if (([(CPSTripPreviewsCardView *)v29 isHidden]& 1) == 0)
    {
      v27 = [(CPSMapTemplateViewController *)self previewsView];
      v26 = 1;
      [(CPSTripPreviewsCardView *)v27 frame];
      v25 = v2 > 0.0;
    }
  }

  if (v26)
  {
    MEMORY[0x277D82BD8](v27);
  }

  if (v28)
  {
    MEMORY[0x277D82BD8](v29);
  }

  *&v3 = MEMORY[0x277D82BD8](v24).n128_u64[0];
  if (v25)
  {
    if ([(CPSMapTemplateViewController *)self rightHandDrive])
    {
      v23 = [(CPSMapTemplateViewController *)self view];
      [v23 bounds];
      v19 = v4;
      v22 = [(CPSMapTemplateViewController *)self previewsView];
      [(CPSTripPreviewsCardView *)v22 frame];
      v21 = v19 - v5;
      v20 = [(CPSMapTemplateViewController *)self view];
      [v20 safeAreaInsets];
      *(&v32 + 1) = v21 - v6;
      MEMORY[0x277D82BD8](v20);
      MEMORY[0x277D82BD8](v22);
      MEMORY[0x277D82BD8](v23);
    }

    else
    {
      v18 = [(CPSMapTemplateViewController *)self previewsView];
      [(CPSTripPreviewsCardView *)v18 frame];
      v14 = v7;
      v17 = [(CPSMapTemplateViewController *)self previewsView];
      [(CPSTripPreviewsCardView *)v17 frame];
      v16 = v14 + v8;
      v15 = [(CPSMapTemplateViewController *)self view];
      [v15 safeAreaInsets];
      *(&v31 + 1) = v16 - v9;
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v18);
    }
  }

  v11 = *(&v31 + 1);
  v10 = *&v31;
  v13 = *(&v32 + 1);
  v12 = *&v32;
  result.right = v13;
  result.bottom = v12;
  result.left = v11;
  result.top = v10;
  return result;
}

- (UIEdgeInsets)_navBarInsets
{
  v18 = *MEMORY[0x277D768C8];
  v19 = *(MEMORY[0x277D768C8] + 16);
  v15 = [(CPSMapTemplateViewController *)self navigationController];
  v14 = [v15 navigationBar];
  v16 = [v14 isHidden];
  MEMORY[0x277D82BD8](v14);
  *&v2 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  if ((v16 & 1) == 0)
  {
    v13 = [(CPSMapTemplateViewController *)self navigationController];
    v12 = [v13 navigationBar];
    [v12 frame];
    v10 = v3;
    v11 = [(CPSMapTemplateViewController *)self navigationController];
    v9 = [v11 navigationBar];
    [v9 frame];
    *&v18 = v10 + v4;
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
  }

  v6 = *(&v18 + 1);
  v5 = *&v18;
  v8 = *(&v19 + 1);
  v7 = *&v19;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (UIEdgeInsets)_navigationAlertInsets
{
  v22 = self;
  location[1] = a2;
  v23 = 0u;
  v24 = 0u;
  v23 = *MEMORY[0x277D768C8];
  v24 = *(MEMORY[0x277D768C8] + 16);
  v20 = [(CPSMapTemplateViewController *)self navigationAlertQueue];
  location[0] = [(CPSNavigationAlertQueue *)v20 currentAlertView];
  *&v2 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  if (location[0])
  {
    if ([(CPSMapTemplateViewController *)v22 rightHandDrive])
    {
      v19 = [(CPSMapTemplateViewController *)v22 view];
      [v19 bounds];
      v16 = v3;
      [location[0] frame];
      v18 = v16 - v4;
      v17 = [(CPSMapTemplateViewController *)v22 view];
      [v17 safeAreaInsets];
      *(&v24 + 1) = v18 - v5;
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v19);
    }

    else
    {
      [location[0] frame];
      v13 = v6;
      [location[0] frame];
      v15 = v13 + v7;
      v14 = [(CPSMapTemplateViewController *)v22 view];
      [v14 safeAreaInsets];
      *(&v23 + 1) = v15 - v8;
      MEMORY[0x277D82BD8](v14);
    }
  }

  objc_storeStrong(location, 0);
  v10 = *(&v23 + 1);
  v9 = *&v23;
  v12 = *(&v24 + 1);
  v11 = *&v24;
  result.right = v12;
  result.bottom = v11;
  result.left = v10;
  result.top = v9;
  return result;
}

- (BOOL)shouldUpdateFocusInContext:(id)a3
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = [location[0] previouslyFocusedView];
  v14 = [(CPSMapTemplateViewController *)v24 navigationController];
  v13 = [v14 navigationBar];
  v16 = [v15 isDescendantOfView:?];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  *&v3 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  if (v16)
  {
    v12 = [location[0] previouslyFocusedView];
    objc_storeWeak(&v24->_lastNavigationBarFocusedItem, v12);
    v4 = MEMORY[0x277D82BD8](v12).n128_u64[0];
LABEL_12:
    v17.receiver = v24;
    v17.super_class = CPSMapTemplateViewController;
    v25 = [(CPSMapTemplateViewController *)&v17 shouldUpdateFocusInContext:location[0], *&v4];
    v18 = 1;
    goto LABEL_13;
  }

  v9 = [location[0] previouslyFocusedView];
  v8 = [(CPSMapTemplateViewController *)v24 navigationController];
  v10 = [v8 navigationBar];
  v21 = 0;
  v19 = 0;
  v11 = 0;
  if ([v9 isDescendantOfView:?])
  {
    v11 = 0;
    if ([location[0] focusHeading] == 16)
    {
      v22 = [(CPSMapTemplateViewController *)v24 _linearFocusItems];
      v21 = 1;
      v20 = [location[0] nextFocusedView];
      v19 = 1;
      v11 = [v22 indexOfObject:?] != 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  if (v19)
  {
    MEMORY[0x277D82BD8](v20);
  }

  if (v21)
  {
    MEMORY[0x277D82BD8](v22);
  }

  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v8);
  v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  if (!v11)
  {
    goto LABEL_12;
  }

  v7 = [(CPSMapTemplateViewController *)v24 _linearFocusItems];
  v6 = [location[0] nextFocusedView];
  v25 = [v7 indexOfObject:?] == 0;
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  v18 = 1;
LABEL_13:
  objc_storeStrong(location, 0);
  return v25 & 1;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v34[1] = *MEMORY[0x277D85DE8];
  v32 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v30 = 0;
  objc_storeStrong(&v30, a4);
  v18 = [location[0] nextFocusedView];
  v28 = 0;
  v26 = 0;
  v19 = 0;
  if (v18)
  {
    v29 = [location[0] nextFocusedView];
    v28 = 1;
    v27 = [(CPSMapTemplateViewController *)v32 view];
    v26 = 1;
    v19 = [v29 isDescendantOfView:?];
  }

  if (v26)
  {
    MEMORY[0x277D82BD8](v27);
  }

  if (v28)
  {
    MEMORY[0x277D82BD8](v29);
  }

  *&v4 = MEMORY[0x277D82BD8](v18).n128_u64[0];
  if (v19)
  {
    v10 = [location[0] nextFocusedItem];
    [(CPSMapTemplateViewController *)v32 setLastFocusedItem:?];
    *&v5 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    v13 = [(CPSMapTemplateViewController *)v32 focusHolderLeftFocusGuide];
    v12 = [(CPSMapTemplateViewController *)v32 lastFocusedItem];
    v34[0] = v12;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:?];
    [(UIFocusGuide *)v13 setPreferredFocusEnvironments:?];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    *&v6 = MEMORY[0x277D82BD8](v13).n128_u64[0];
    v16 = [(CPSMapTemplateViewController *)v32 focusHolderRightFocusGuide];
    v15 = [(CPSMapTemplateViewController *)v32 lastFocusedItem];
    v33 = v15;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    [(UIFocusGuide *)v16 setPreferredFocusEnvironments:?];
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
  }

  else
  {
    v8 = [location[0] nextFocusedItem];
    v24 = 0;
    v22 = 0;
    v20 = 0;
    v9 = 0;
    if (v8)
    {
      v25 = [location[0] nextFocusedView];
      v24 = 1;
      v23 = [(CPSMapTemplateViewController *)v32 parentViewController];
      v22 = 1;
      v21 = [v23 view];
      v20 = 1;
      v9 = [v25 isDescendantOfView:?];
    }

    if (v20)
    {
      MEMORY[0x277D82BD8](v21);
    }

    if (v22)
    {
      MEMORY[0x277D82BD8](v23);
    }

    if (v24)
    {
      MEMORY[0x277D82BD8](v25);
    }

    *&v7 = MEMORY[0x277D82BD8](v8).n128_u64[0];
    if (v9)
    {
      [(CPSMapTemplateViewController *)v32 setLastFocusedItem:0, v7];
    }
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

- (id)preferredFocusEnvironments
{
  v27 = self;
  v26[1] = a2;
  v26[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = [(CPSMapTemplateViewController *)v27 lastFocusedItem];
  v2 = MEMORY[0x277D82BD8](v23).n128_u64[0];
  if (v23)
  {
    v22 = [(CPSMapTemplateViewController *)v27 lastFocusedItem];
    [v26[0] addObject:?];
    v2 = MEMORY[0x277D82BD8](v22).n128_u64[0];
  }

  v21 = [(CPSMapTemplateViewController *)v27 previewsView];
  v3 = MEMORY[0x277D82BD8](v21).n128_u64[0];
  if (v21)
  {
    v20 = [(CPSMapTemplateViewController *)v27 previewsView];
    [v26[0] addObject:?];
    v3 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  }

  v18 = [(CPSMapTemplateViewController *)v27 navigationAlertQueue];
  v19 = [(CPSNavigationAlertQueue *)v18 currentAlertView];
  MEMORY[0x277D82BD8](v19);
  v4 = MEMORY[0x277D82BD8](v18).n128_u64[0];
  if (v19)
  {
    v17 = [(CPSMapTemplateViewController *)v27 navigationAlertQueue];
    v16 = [(CPSNavigationAlertQueue *)v17 currentAlertView];
    [v26[0] addObject:?];
    MEMORY[0x277D82BD8](v16);
    v4 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  }

  v14 = [(CPSMapTemplateViewController *)v27 navigationController];
  v15 = [v14 navigationBar];
  MEMORY[0x277D82BD8](v15);
  v5 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  if (v15)
  {
    v13 = [(CPSMapTemplateViewController *)v27 navigationController];
    v12 = [v13 navigationBar];
    [v26[0] addObject:?];
    MEMORY[0x277D82BD8](v12);
    v5 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  }

  v10 = [(CPSMapTemplateViewController *)v27 panViewController];
  v24 = 0;
  LOBYTE(v11) = 0;
  if (v10)
  {
    v25 = [(CPSMapTemplateViewController *)v27 panContainerView];
    v24 = 1;
    v11 = ![(UIView *)v25 isHidden];
  }

  if (v24)
  {
    MEMORY[0x277D82BD8](v25);
  }

  v6 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (v11)
  {
    v9 = [(CPSMapTemplateViewController *)v27 panViewController];
    [v26[0] addObject:?];
    v6 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  }

  v8 = [v26[0] copy];
  objc_storeStrong(v26, 0);

  return v8;
}

- (id)_linearFocusItems
{
  v82 = self;
  v81[1] = a2;
  v81[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  location = objc_alloc_init(MEMORY[0x277CBEB18]);
  v72 = [(CPSMapTemplateViewController *)v82 mapButtons];
  v73 = [(NSMutableArray *)v72 count];
  *&v2 = MEMORY[0x277D82BD8](v72).n128_u64[0];
  if (v73)
  {
    v71 = [(CPSMapTemplateViewController *)v82 mapButtons];
    v74 = MEMORY[0x277D85DD0];
    v75 = -1073741824;
    v76 = 0;
    v77 = __49__CPSMapTemplateViewController__linearFocusItems__block_invoke;
    v78 = &unk_278D942D0;
    v79 = MEMORY[0x277D82BE0](location);
    [(NSMutableArray *)v71 enumerateObjectsUsingBlock:&v74];
    MEMORY[0x277D82BD8](v71);
    objc_storeStrong(&v79, 0);
  }

  v69 = [(CPSMapTemplateViewController *)v82 panContainerView];
  v70 = [(UIView *)v69 isHidden];
  *&v3 = MEMORY[0x277D82BD8](v69).n128_u64[0];
  if (v70)
  {
    if ([(CPSMapTemplateViewController *)v82 rightHandDrive])
    {
      [v81[0] addObjectsFromArray:location];
      v68 = [(CPSMapTemplateViewController *)v82 previewsView];
      v4 = MEMORY[0x277D82BD8](v68).n128_u64[0];
      if (v68)
      {
        v65 = v81[0];
        v67 = [(CPSMapTemplateViewController *)v82 previewsView];
        v66 = [(CPSTripPreviewsCardView *)v67 _linearFocusItems];
        [v65 addObjectsFromArray:?];
        MEMORY[0x277D82BD8](v66);
        v4 = MEMORY[0x277D82BD8](v67).n128_u64[0];
      }

      v63 = [(CPSMapTemplateViewController *)v82 navigationAlertQueue];
      v64 = [(CPSNavigationAlertQueue *)v63 currentAlertView];
      MEMORY[0x277D82BD8](v64);
      *&v5 = MEMORY[0x277D82BD8](v63).n128_u64[0];
      if (v64)
      {
        v59 = v81[0];
        v62 = [(CPSMapTemplateViewController *)v82 navigationAlertQueue];
        v61 = [(CPSNavigationAlertQueue *)v62 currentAlertView];
        v60 = [(CPSNavigationAlertView *)v61 _linearFocusItems];
        [v59 addObjectsFromArray:?];
        MEMORY[0x277D82BD8](v60);
        MEMORY[0x277D82BD8](v61);
        MEMORY[0x277D82BD8](v62);
      }
    }

    else
    {
      v58 = [(CPSMapTemplateViewController *)v82 previewsView];
      v6 = MEMORY[0x277D82BD8](v58).n128_u64[0];
      if (v58)
      {
        v55 = v81[0];
        v57 = [(CPSMapTemplateViewController *)v82 previewsView];
        v56 = [(CPSTripPreviewsCardView *)v57 _linearFocusItems];
        [v55 addObjectsFromArray:?];
        MEMORY[0x277D82BD8](v56);
        v6 = MEMORY[0x277D82BD8](v57).n128_u64[0];
      }

      v53 = [(CPSMapTemplateViewController *)v82 navigationAlertQueue];
      v54 = [(CPSNavigationAlertQueue *)v53 currentAlertView];
      MEMORY[0x277D82BD8](v54);
      v7 = MEMORY[0x277D82BD8](v53).n128_u64[0];
      if (v54)
      {
        v49 = v81[0];
        v52 = [(CPSMapTemplateViewController *)v82 navigationAlertQueue];
        v51 = [(CPSNavigationAlertQueue *)v52 currentAlertView];
        v50 = [(CPSNavigationAlertView *)v51 _linearFocusItems];
        [v49 addObjectsFromArray:?];
        MEMORY[0x277D82BD8](v50);
        MEMORY[0x277D82BD8](v51);
        v7 = MEMORY[0x277D82BD8](v52).n128_u64[0];
      }

      [v81[0] addObjectsFromArray:{location, *&v7}];
    }
  }

  else if ([(CPSMapTemplateViewController *)v82 rightHandDrive])
  {
    v45 = v81[0];
    v47 = [(CPSMapTemplateViewController *)v82 panViewController];
    v46 = [(CPSPanViewController *)v47 _linearFocusItems];
    [v45 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v46);
    *&v8 = MEMORY[0x277D82BD8](v47).n128_u64[0];
    [v81[0] addObjectsFromArray:{location, v8}];
    v48 = [(CPSMapTemplateViewController *)v82 lastNavigationBarFocusedItem];
    v9 = MEMORY[0x277D82BD8](v48).n128_u64[0];
    if (v48)
    {
      v43 = v81[0];
      v44 = [(CPSMapTemplateViewController *)v82 lastNavigationBarFocusedItem];
      [v43 addObject:?];
      v9 = MEMORY[0x277D82BD8](v44).n128_u64[0];
    }

    v41 = [(CPSMapTemplateViewController *)v82 navigationAlertQueue];
    v42 = [(CPSNavigationAlertQueue *)v41 currentAlertView];
    MEMORY[0x277D82BD8](v42);
    v10 = MEMORY[0x277D82BD8](v41).n128_u64[0];
    if (v42)
    {
      v37 = v81[0];
      v40 = [(CPSMapTemplateViewController *)v82 navigationAlertQueue];
      v39 = [(CPSNavigationAlertQueue *)v40 currentAlertView];
      v38 = [(CPSNavigationAlertView *)v39 _linearFocusItems];
      [v37 addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](v39);
      v10 = MEMORY[0x277D82BD8](v40).n128_u64[0];
    }

    v36 = [(CPSMapTemplateViewController *)v82 previewsView];
    *&v11 = MEMORY[0x277D82BD8](v36).n128_u64[0];
    if (v36)
    {
      v33 = v81[0];
      v35 = [(CPSMapTemplateViewController *)v82 previewsView];
      v34 = [(CPSTripPreviewsCardView *)v35 _linearFocusItems];
      [v33 addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v34);
      MEMORY[0x277D82BD8](v35);
    }
  }

  else
  {
    v32 = [(CPSMapTemplateViewController *)v82 previewsView];
    v12 = MEMORY[0x277D82BD8](v32).n128_u64[0];
    if (v32)
    {
      v29 = v81[0];
      v31 = [(CPSMapTemplateViewController *)v82 previewsView];
      v30 = [(CPSTripPreviewsCardView *)v31 _linearFocusItems];
      [v29 addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v30);
      v12 = MEMORY[0x277D82BD8](v31).n128_u64[0];
    }

    v27 = [(CPSMapTemplateViewController *)v82 navigationAlertQueue];
    v28 = [(CPSNavigationAlertQueue *)v27 currentAlertView];
    MEMORY[0x277D82BD8](v28);
    v13 = MEMORY[0x277D82BD8](v27).n128_u64[0];
    if (v28)
    {
      v23 = v81[0];
      v26 = [(CPSMapTemplateViewController *)v82 navigationAlertQueue];
      v25 = [(CPSNavigationAlertQueue *)v26 currentAlertView];
      v24 = [(CPSNavigationAlertView *)v25 _linearFocusItems];
      [v23 addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v24);
      MEMORY[0x277D82BD8](v25);
      v13 = MEMORY[0x277D82BD8](v26).n128_u64[0];
    }

    v22 = [(CPSMapTemplateViewController *)v82 lastNavigationBarFocusedItem];
    v14 = MEMORY[0x277D82BD8](v22).n128_u64[0];
    if (v22)
    {
      v20 = v81[0];
      v21 = [(CPSMapTemplateViewController *)v82 lastNavigationBarFocusedItem];
      [v20 addObject:?];
      v14 = MEMORY[0x277D82BD8](v21).n128_u64[0];
    }

    [v81[0] addObjectsFromArray:{location, *&v14}];
    v17 = v81[0];
    v19 = [(CPSMapTemplateViewController *)v82 panViewController];
    v18 = [(CPSPanViewController *)v19 _linearFocusItems];
    [v17 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
  }

  v16 = MEMORY[0x277D82BE0](v81[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v81, 0);

  return v16;
}

void __49__CPSMapTemplateViewController__linearFocusItems__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (([location[0] isHidden] & 1) == 0)
  {
    [a1[4] addObject:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (BOOL)shouldForwardEventForWindow:(id)a3 eventType:(int64_t)a4
{
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = a4;
  v24 = 1;
  if (a4 == 7)
  {
    v13 = [(CPSMapTemplateViewController *)v27 navigationController];
    v24 = ([v13 isNavigationBarHidden] ^ 1) & 1;
    MEMORY[0x277D82BD8](v13);
    v23 = CarPlaySupportGeneralLogging();
    v22 = 2;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      log = v23;
      type = v22;
      __os_log_helper_16_0_0(v21);
      _os_log_debug_impl(&dword_242FE8000, log, type, "Showing navigation bar with reason: wheel event", v21, 2u);
    }

    objc_storeStrong(&v23, 0);
    [(CPSMapTemplateViewController *)v27 _resetAutoHideTimerAndShowBarAnimated:1 allowFocusDeferral:0];
  }

  else if (!v25)
  {
    v9 = [(CPSMapTemplateViewController *)v27 navigationAlertQueue];
    v20 = [(CPSNavigationAlertQueue *)v9 currentAlertView];
    *&v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
    v18 = 0;
    LOBYTE(v10) = 1;
    if (v20)
    {
      v19 = [(CPSMapTemplateViewController *)v27 lastFocusedItem];
      v18 = 1;
      v10 = [v20 containsView:?] ^ 1;
    }

    if (v18)
    {
      MEMORY[0x277D82BD8](v19);
    }

    if (v10)
    {
      v17 = CarPlaySupportGeneralLogging();
      v16 = 2;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v7 = v17;
        v8 = v16;
        __os_log_helper_16_0_0(v15);
        _os_log_debug_impl(&dword_242FE8000, v7, v8, "Showing navigation bar with reason: touchpad touch", v15, 2u);
      }

      objc_storeStrong(&v17, 0);
      [(CPSMapTemplateViewController *)v27 _resetAutoHideTimerAndShowBarAnimated:1 allowFocusDeferral:1];
    }

    objc_storeStrong(&v20, 0);
  }

  v6 = v24;
  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (void)applicationStateMonitor:(id)a3 didBecomeActive:(BOOL)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = a4;
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __72__CPSMapTemplateViewController_applicationStateMonitor_didBecomeActive___block_invoke;
  v12 = &unk_278D91CA8;
  v13 = MEMORY[0x277D82BE0](v17);
  v14 = v15;
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

uint64_t __72__CPSMapTemplateViewController_applicationStateMonitor_didBecomeActive___block_invoke(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  [*(a1 + 32) setApplicationIsFrontmost:*(a1 + 40) & 1];
  result = a1;
  if (*(a1 + 40))
  {
    location[0] = CarPlaySupportGeneralLogging();
    v6 = 2;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
    {
      log = location[0];
      type = v6;
      __os_log_helper_16_0_0(v5);
      _os_log_debug_impl(&dword_242FE8000, log, type, "Showing navigation bar with reason: app coming frontmost", v5, 2u);
    }

    objc_storeStrong(location, 0);
    return [*(a1 + 32) _resetAutoHideTimerAndShowBarAnimated:0 allowFocusDeferral:1];
  }

  return result;
}

- (void)didChangeLayout:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = location[0];
  v6 = [(CPSMapTemplateViewController *)v9 navigationCardViewLayoutHelperView];
  v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  if (v7 == v6)
  {
    v5 = [(CPSMapTemplateViewController *)v9 navigationCardViewController];
    [location[0] frame];
    [(CPSNavigationCardViewController *)v5 availableHeightChangedTo:v4];
    v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  }

  [(CPSMapTemplateViewController *)v9 _checkNavigationCardHelperViewForETAFit];
  objc_storeStrong(location, 0);
}

- (void)_checkNavigationCardHelperViewForETAFit
{
  v70 = *MEMORY[0x277D85DE8];
  v68 = self;
  v67 = a2;
  v34 = [(CPSMapTemplateViewController *)self view];
  v33 = [(CPSMapTemplateViewController *)v68 navigationCardViewController];
  v32 = [(CPSNavigationCardViewController *)v33 layoutHelperView];
  [(CPSLayoutHelperView *)v32 bounds];
  v59 = v2;
  v60 = v3;
  v61 = v4;
  v62 = v5;
  v31 = [(CPSMapTemplateViewController *)v68 navigationCardViewController];
  v30 = [(CPSNavigationCardViewController *)v31 layoutHelperView];
  [v34 convertRect:v59 fromView:{v60, v61, v62}];
  v63 = v6;
  v64 = v7;
  v65 = v8;
  v66 = v9;
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  *&v58 = UIRectGetMaxY_0(v63, v64, v65, v66);
  v39 = [(CPSMapTemplateViewController *)v68 view];
  v38 = [v39 safeAreaLayoutGuide];
  [v38 layoutFrame];
  v56[5] = v10;
  v56[6] = v11;
  v56[7] = v12;
  v56[8] = v13;
  MaxY_0 = UIRectGetMaxY_0(*&v10, *&v11, *&v12, *&v13);
  v37 = [(CPSMapTemplateViewController *)v68 navigationETAView];
  [(CPSNavigationETAView *)v37 frame];
  v56[1] = v14;
  v56[2] = v15;
  v56[3] = v16;
  v56[4] = v17;
  v36 = MaxY_0 - *&v17;
  v18 = _UISolariumEnabled();
  v19 = 4.0;
  if ((v18 & 1) == 0)
  {
    v19 = 8.0;
  }

  v40 = v36 - v19;
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);
  v57 = v40;
  v56[0] = CarPlaySupportGeneralLogging();
  v55 = 1;
  if (os_log_type_enabled(v56[0], OS_LOG_TYPE_INFO))
  {
    log = v56[0];
    type = v55;
    v29 = [(CPSMapTemplateViewController *)v68 view];
    [v29 bounds];
    rect = v71;
    v28 = NSStringFromCGRect(v71);
    v53 = MEMORY[0x277D82BE0](v28);
    __os_log_helper_16_2_3_8_0_8_0_8_64(v69, v58, *&v57, v53);
    _os_log_impl(&dword_242FE8000, log, type, "Navigation card max Y: %f, eta min Y: %f, view size: %@", v69, 0x20u);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    objc_storeStrong(&v53, 0);
  }

  objc_storeStrong(v56, 0);
  if (*&v58 >= v57)
  {
    v49 = CarPlaySupportGeneralLogging();
    v48 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v22 = v49;
      v23 = v48;
      __os_log_helper_16_0_0(v47);
      _os_log_impl(&dword_242FE8000, v22, v23, "Hiding ETA view if necessary", v47, 2u);
    }

    objc_storeStrong(&v49, 0);
    [(CPSMapTemplateViewController *)v68 _setETAViewHidden:1 forRequester:@"ManeuversCardRequester" animated:0];
  }

  else
  {
    oslog = CarPlaySupportGeneralLogging();
    v51 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      v24 = oslog;
      v25 = v51;
      __os_log_helper_16_0_0(v50);
      _os_log_impl(&dword_242FE8000, v24, v25, "Showing ETA view if necessary", v50, 2u);
    }

    objc_storeStrong(&oslog, 0);
    [(CPSMapTemplateViewController *)v68 _setETAViewHidden:0 forRequester:@"ManeuversCardRequester" animated:0];
  }

  v21 = MEMORY[0x277D75D18];
  v20 = *MEMORY[0x277D76DA0];
  v41 = MEMORY[0x277D85DD0];
  v42 = -1073741824;
  v43 = 0;
  v44 = __71__CPSMapTemplateViewController__checkNavigationCardHelperViewForETAFit__block_invoke;
  v45 = &unk_278D913E8;
  v46 = MEMORY[0x277D82BE0](v68);
  [v21 animateWithDuration:0 delay:&v41 options:&__block_literal_global_311 animations:v20 completion:0.0];
  objc_storeStrong(&v46, 0);
}

double __71__CPSMapTemplateViewController__checkNavigationCardHelperViewForETAFit__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

- (void)observerDeliveryPolicyDidChange:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] canReceiveEvents])
  {
    v4 = MEMORY[0x277D85CD0];
    v3 = MEMORY[0x277D85CD0];
    queue = v4;
    v6 = MEMORY[0x277D85DD0];
    v7 = -1073741824;
    v8 = 0;
    v9 = __64__CPSMapTemplateViewController_observerDeliveryPolicyDidChange___block_invoke;
    v10 = &unk_278D913E8;
    v11 = MEMORY[0x277D82BE0](v13);
    dispatch_async(queue, &v6);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(location, 0);
}

uint64_t __64__CPSMapTemplateViewController_observerDeliveryPolicyDidChange___block_invoke(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = CarPlaySupportGeneralLogging();
  v6 = 2;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    log = location[0];
    type = v6;
    __os_log_helper_16_0_0(v5);
    _os_log_debug_impl(&dword_242FE8000, log, type, "Showing navigation bar with reason: event delivery policy changed", v5, 2u);
  }

  objc_storeStrong(location, 0);
  return [a1[4] _resetAutoHideTimerAndShowBarAnimated:1 allowFocusDeferral:0];
}

- (void)_setETAViewHidden:(BOOL)a3 forRequester:(id)a4 animated:(BOOL)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v32 = self;
  v31 = a2;
  v30 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v28 = a5;
  if (v30)
  {
    if (!v32->_etaViewHiddenRequesters)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
      etaViewHiddenRequesters = v32->_etaViewHiddenRequesters;
      v32->_etaViewHiddenRequesters = v5;
      MEMORY[0x277D82BD8](etaViewHiddenRequesters);
    }

    v27 = CarPlaySupportGeneralLogging();
    v26 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_64(v34, location);
      _os_log_impl(&dword_242FE8000, v27, v26, "Adding ETA hidden requester: %@", v34, 0xCu);
    }

    objc_storeStrong(&v27, 0);
    v10 = [(CPSMapTemplateViewController *)v32 etaViewHiddenRequesters];
    [(NSMutableSet *)v10 addObject:location];
    v7 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  }

  else
  {
    v25 = CarPlaySupportGeneralLogging();
    v24 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_64(v33, location);
      _os_log_impl(&dword_242FE8000, v25, v24, "Removing ETA hidden requester: %@", v33, 0xCu);
    }

    objc_storeStrong(&v25, 0);
    v9 = [(CPSMapTemplateViewController *)v32 etaViewHiddenRequesters];
    [(NSMutableSet *)v9 removeObject:location];
    v7 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  }

  [(CPSMapTemplateViewController *)v32 _updateETAViewHidden];
  if (v28)
  {
    v8 = MEMORY[0x277D75D18];
    v18 = MEMORY[0x277D85DD0];
    v19 = -1073741824;
    v20 = 0;
    v21 = __72__CPSMapTemplateViewController__setETAViewHidden_forRequester_animated___block_invoke;
    v22 = &unk_278D913E8;
    v23 = MEMORY[0x277D82BE0](v32);
    v12 = MEMORY[0x277D85DD0];
    v13 = -1073741824;
    v14 = 0;
    v15 = __72__CPSMapTemplateViewController__setETAViewHidden_forRequester_animated___block_invoke_2;
    v16 = &unk_278D91398;
    v17 = MEMORY[0x277D82BE0](v32);
    [v8 animateWithDuration:0 delay:&v18 usingSpringWithDamping:&v12 initialSpringVelocity:0.4 options:0.0 animations:10.0 completion:?];
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v23, 0);
  }

  objc_storeStrong(&location, 0);
}

double __72__CPSMapTemplateViewController__setETAViewHidden_forRequester_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

- (void)_updateETAViewHidden
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = self;
  location[1] = a2;
  v17 = [(CPSMapTemplateViewController *)self etaViewHiddenRequesters];
  v18 = [(NSMutableSet *)v17 count];
  *&v2 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  if (v18)
  {
    if (![(CPSMapTemplateViewController *)v24 etaViewHidden])
    {
      location[0] = CarPlaySupportGeneralLogging();
      v22 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(location[0], OS_LOG_TYPE_INFO))
      {
        v16 = [(CPSMapTemplateViewController *)v24 etaViewHiddenRequesters];
        __os_log_helper_16_2_1_8_64(v25, v16);
        _os_log_impl(&dword_242FE8000, location[0], v22, "Hiding ETA view for requesters: %@", v25, 0xCu);
        MEMORY[0x277D82BD8](v16);
      }

      objc_storeStrong(location, 0);
      [(CPSMapTemplateViewController *)v24 setEtaViewHidden:1];
      v21[5] = 0x4046000000000000;
      v15 = [(CPSMapTemplateViewController *)v24 view];
      [v15 safeAreaInsets];
      v21[1] = v3;
      v21[2] = v4;
      v21[3] = v5;
      v21[4] = v6;
      v13 = *&v5 + 44.0;
      v14 = [(CPSMapTemplateViewController *)v24 navigationETAViewBottomConstraint];
      [(NSLayoutConstraint *)v14 setConstant:v13];
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
    }
  }

  else if ([(CPSMapTemplateViewController *)v24 etaViewHidden])
  {
    v21[0] = CarPlaySupportGeneralLogging();
    v20 = 1;
    if (os_log_type_enabled(v21[0], OS_LOG_TYPE_INFO))
    {
      v11 = v21[0];
      v12 = v20;
      __os_log_helper_16_0_0(v19);
      _os_log_impl(&dword_242FE8000, v11, v12, "Showing ETA view", v19, 2u);
    }

    objc_storeStrong(v21, 0);
    [(CPSMapTemplateViewController *)v24 setEtaViewHidden:0];
    v7 = _UISolariumEnabled();
    v8 = -4.0;
    if ((v7 & 1) == 0)
    {
      v8 = -8.0;
    }

    v10 = [(CPSMapTemplateViewController *)v24 navigationETAViewBottomConstraint];
    [(NSLayoutConstraint *)v10 setConstant:v9];
    MEMORY[0x277D82BD8](v10);
  }
}

- (void)_createNavigationCardViewController
{
  v78[4] = *MEMORY[0x277D85DE8];
  v77 = self;
  v76[1] = a2;
  v76[0] = objc_alloc_init(CPSNavigationCardViewController);
  [v76[0] setGuidanceBackgroundColor:v77->_guidanceBackgroundColor];
  [(CPSMapTemplateViewController *)v77 setNavigationCardViewController:v76[0]];
  v41 = [(CPSMapTemplateViewController *)v77 navigationCardViewController];
  [(CPSNavigationCardViewController *)v41 willMoveToParentViewController:v77];
  v42 = [(CPSMapTemplateViewController *)v77 navigationCardViewController];
  [(CPSMapTemplateViewController *)v77 addChildViewController:?];
  v45 = [(CPSMapTemplateViewController *)v77 view];
  v44 = [(CPSMapTemplateViewController *)v77 navigationCardViewController];
  v43 = [(CPSNavigationCardViewController *)v44 view];
  [v45 addSubview:?];
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v44);
  v47 = [(CPSMapTemplateViewController *)v77 navigationCardViewController];
  v46 = [(CPSNavigationCardViewController *)v47 view];
  [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
  MEMORY[0x277D82BD8](v46);
  v73 = 0;
  v71 = 0;
  v69 = 0;
  v67 = 0;
  v65 = 0;
  v63 = 0;
  if ([(CPSMapTemplateViewController *)v77 rightHandDrive])
  {
    v74 = [(CPSMapTemplateViewController *)v77 view];
    v73 = 1;
    v72 = [v74 safeAreaLayoutGuide];
    v71 = 1;
    v70 = [v72 rightAnchor];
    v69 = 1;
    v2 = MEMORY[0x277D82BE0](v70);
  }

  else
  {
    v68 = [(CPSMapTemplateViewController *)v77 view];
    v67 = 1;
    v66 = [v68 safeAreaLayoutGuide];
    v65 = 1;
    v64 = [v66 leftAnchor];
    v63 = 1;
    v2 = MEMORY[0x277D82BE0](v64);
  }

  v75 = v2;
  if (v63)
  {
    MEMORY[0x277D82BD8](v64);
  }

  if (v65)
  {
    MEMORY[0x277D82BD8](v66);
  }

  if (v67)
  {
    MEMORY[0x277D82BD8](v68);
  }

  if (v69)
  {
    MEMORY[0x277D82BD8](v70);
  }

  if (v71)
  {
    MEMORY[0x277D82BD8](v72);
  }

  if (v73)
  {
    MEMORY[0x277D82BD8](v74);
  }

  v60 = 0;
  v58 = 0;
  v56 = 0;
  v54 = 0;
  v52 = 0;
  v50 = 0;
  if ([(CPSMapTemplateViewController *)v77 rightHandDrive])
  {
    v61 = [(CPSMapTemplateViewController *)v77 navigationCardViewController];
    v60 = 1;
    v59 = [(CPSNavigationCardViewController *)v61 view];
    v58 = 1;
    v57 = [v59 rightAnchor];
    v56 = 1;
    v3 = MEMORY[0x277D82BE0](v57);
  }

  else
  {
    v55 = [(CPSMapTemplateViewController *)v77 navigationCardViewController];
    v54 = 1;
    v53 = [(CPSNavigationCardViewController *)v55 view];
    v52 = 1;
    v51 = [v53 leftAnchor];
    v50 = 1;
    v3 = MEMORY[0x277D82BE0](v51);
  }

  v62 = v3;
  if (v50)
  {
    MEMORY[0x277D82BD8](v51);
  }

  if (v52)
  {
    MEMORY[0x277D82BD8](v53);
  }

  if (v54)
  {
    MEMORY[0x277D82BD8](v55);
  }

  if (v56)
  {
    MEMORY[0x277D82BD8](v57);
  }

  if (v58)
  {
    MEMORY[0x277D82BD8](v59);
  }

  if (v60)
  {
    MEMORY[0x277D82BD8](v61);
  }

  if ([(CPSMapTemplateViewController *)v77 rightHandDrive])
  {
    v4 = _UISolariumEnabled();
    v5 = 4.0;
    if ((v4 & 1) == 0)
    {
      v5 = 8.0;
    }

    v40 = -v5;
  }

  else
  {
    v6 = _UISolariumEnabled();
    v7 = 4.0;
    if ((v6 & 1) == 0)
    {
      v7 = 8.0;
    }

    v40 = v7;
  }

  v49 = v40;
  v18 = [(CPSMapTemplateViewController *)v77 navigationCardViewController];
  v17 = [(CPSNavigationCardViewController *)v18 view];
  v16 = [v17 widthAnchor];
  v48 = [v16 constraintEqualToConstant:0.0];
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  v8 = MEMORY[0x277D82BD8](v18);
  v8.n128_u32[0] = 1148846080;
  [v48 setPriority:v8.n128_f64[0]];
  [(CPSMapTemplateViewController *)v77 setCardWidthConstraint:v48];
  [(CPSMapTemplateViewController *)v77 _calculateAndUpdateCardWidthConstraint];
  v19 = MEMORY[0x277CCAAD0];
  v35 = [(CPSMapTemplateViewController *)v77 navigationCardViewController];
  v34 = [(CPSNavigationCardViewController *)v35 view];
  v33 = [v34 topAnchor];
  v32 = [(CPSMapTemplateViewController *)v77 view];
  v31 = [v32 safeAreaLayoutGuide];
  v30 = [v31 topAnchor];
  v9 = _UISolariumEnabled();
  v10 = 4.0;
  if ((v9 & 1) == 0)
  {
    v10 = 8.0;
  }

  v29 = [v33 constraintEqualToAnchor:v30 constant:v10];
  v78[0] = v29;
  v28 = [v62 constraintEqualToAnchor:v75 constant:v49];
  v78[1] = v28;
  v78[2] = v48;
  v27 = [(CPSMapTemplateViewController *)v77 navigationCardViewController];
  v26 = [(CPSNavigationCardViewController *)v27 view];
  v25 = [v26 bottomAnchor];
  v24 = [(CPSMapTemplateViewController *)v77 view];
  v23 = [v24 safeAreaLayoutGuide];
  v22 = [v23 bottomAnchor];
  v11 = _UISolariumEnabled();
  v12 = 4.0;
  if ((v11 & 1) == 0)
  {
    v12 = 8.0;
  }

  v21 = [v25 constraintEqualToAnchor:v22 constant:-v12];
  v78[3] = v21;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:4];
  [v19 activateConstraints:?];
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
  MEMORY[0x277D82BD8](v34);
  *&v13 = MEMORY[0x277D82BD8](v35).n128_u64[0];
  v36 = [(CPSMapTemplateViewController *)v77 navigationCardViewController];
  [(CPSNavigationCardViewController *)v36 didMoveToParentViewController:v77];
  *&v14 = MEMORY[0x277D82BD8](v36).n128_u64[0];
  v38 = [(CPSMapTemplateViewController *)v77 navigationCardViewController];
  v37 = [(CPSNavigationCardViewController *)v38 layoutHelperView];
  [(CPSLayoutHelperView *)v37 setLayoutDelegate:v77];
  MEMORY[0x277D82BD8](v37);
  *&v15 = MEMORY[0x277D82BD8](v38).n128_u64[0];
  v39 = [(CPSMapTemplateViewController *)v77 navigationCardViewController];
  [(CPSNavigationCardViewController *)v39 setNavigationCardHidden:1 forRequester:@"TripEndedRequester" animated:0 completion:?];
  MEMORY[0x277D82BD8](v39);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v62, 0);
  objc_storeStrong(&v75, 0);
  objc_storeStrong(v76, 0);
}

- (void)_calculateAndUpdateCardWidthConstraint
{
  v5 = [(CPSMapTemplateViewController *)self view];
  v4 = [v5 safeAreaLayoutGuide];
  [v4 layoutFrame];
  v6 = v2 * 0.45;
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  v7 = v6;
  if (v6 >= 172.0)
  {
    if (v6 > 220.0)
    {
      v7 = 220.0;
    }
  }

  else
  {
    v7 = 172.0;
  }

  v3 = [(CPSMapTemplateViewController *)self cardWidthConstraint];
  [(NSLayoutConstraint *)v3 setConstant:v7];
  MEMORY[0x277D82BD8](v3);
}

- (void)_createNavigationCardViewLayoutHelperView
{
  v25[3] = *MEMORY[0x277D85DE8];
  v24 = self;
  v23[1] = a2;
  v23[0] = objc_alloc_init(CPSLayoutHelperView);
  [v23[0] setLayoutDelegate:v24];
  v7 = [(CPSMapTemplateViewController *)v24 view];
  [v7 addSubview:v23[0]];
  [(CPSMapTemplateViewController *)v24 setNavigationCardViewLayoutHelperView:v23[0], MEMORY[0x277D82BD8](v7).n128_f64[0]];
  v12 = [v23[0] bottomAnchor];
  v11 = [(CPSMapTemplateViewController *)v24 view];
  v10 = [v11 safeAreaLayoutGuide];
  v9 = [v10 bottomAnchor];
  v2 = _UISolariumEnabled();
  v3 = 4.0;
  if ((v2 & 1) == 0)
  {
    v3 = 8.0;
  }

  v8 = [v12 constraintEqualToAnchor:v9 constant:-v3];
  [(CPSMapTemplateViewController *)v24 setNavigationCardViewLayoutViewBottomConstraint:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  *&v4 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  v13 = MEMORY[0x277CCAAD0];
  v22 = [(CPSMapTemplateViewController *)v24 navigationCardViewLayoutViewBottomConstraint];
  v25[0] = v22;
  v21 = [v23[0] topAnchor];
  v20 = [(CPSMapTemplateViewController *)v24 view];
  v19 = [v20 safeAreaLayoutGuide];
  v18 = [v19 topAnchor];
  v5 = _UISolariumEnabled();
  v6 = 4.0;
  if ((v5 & 1) == 0)
  {
    v6 = 8.0;
  }

  v17 = [v21 constraintEqualToAnchor:v18 constant:v6];
  v25[1] = v17;
  v16 = [v23[0] widthAnchor];
  v15 = [v16 constraintEqualToConstant:1.0];
  v25[2] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
  [v13 activateConstraints:?];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  objc_storeStrong(v23, 0);
}

- (CPSNavigatorObserving)navigatorObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_navigatorObserver);

  return WeakRetained;
}

- (CPSApplicationStateMonitor)applicationStateMonitor
{
  WeakRetained = objc_loadWeakRetained(&self->_applicationStateMonitor);

  return WeakRetained;
}

- (CPSSafeAreaDelegate)safeAreaDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_safeAreaDelegate);

  return WeakRetained;
}

- (UIFocusItem)lastFocusedItem
{
  WeakRetained = objc_loadWeakRetained(&self->_lastFocusedItem);

  return WeakRetained;
}

- (UIFocusItem)lastNavigationBarFocusedItem
{
  WeakRetained = objc_loadWeakRetained(&self->_lastNavigationBarFocusedItem);

  return WeakRetained;
}

- (UIFocusItem)itemFocusedBeforeNavAlert
{
  WeakRetained = objc_loadWeakRetained(&self->_itemFocusedBeforeNavAlert);

  return WeakRetained;
}

- (CGPoint)lastPanGesturePoint
{
  y = self->_lastPanGesturePoint.y;
  x = self->_lastPanGesturePoint.x;
  result.y = y;
  result.x = x;
  return result;
}

@end