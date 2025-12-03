@interface CPSMapTemplateViewController
- (BOOL)_isAutoHideEnabled;
- (BOOL)_trailingMapButtonsVisible;
- (BOOL)canAnimateNavigationAlert;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)shouldForwardEventForWindow:(id)window eventType:(int64_t)type;
- (BOOL)shouldUpdateFocusInContext:(id)context;
- (CGPoint)lastPanGesturePoint;
- (CGPoint)safeAreaCenterPoint;
- (CPMapTemplate)mapTemplate;
- (CPSApplicationStateMonitor)applicationStateMonitor;
- (CPSMapTemplateViewController)initWithMapTemplate:(id)template templateDelegate:(id)delegate safeAreaDelegate:(id)areaDelegate applicationStateMonitor:(id)monitor templateEnvironment:(id)environment;
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
- (id)_buttonForIdentifier:(id)identifier;
- (id)_linearFocusItems;
- (id)_tripDidBegin:(id)begin withEstimates:(id)estimates forIdentifier:(id)identifier;
- (id)preferredFocusEnvironments;
- (void)_addPanControllerAsChild;
- (void)_calculateAndUpdateCardWidthConstraint;
- (void)_checkNavigationCardHelperViewForETAFit;
- (void)_createNavigationCardViewController;
- (void)_createNavigationCardViewLayoutHelperView;
- (void)_handleFocusHolderSelect;
- (void)_handleOneFingerDoubleTapGesture:(id)gesture;
- (void)_handlePanGesture:(id)gesture;
- (void)_handlePinchGesture:(id)gesture;
- (void)_handleRotationGesture:(id)gesture;
- (void)_handleSwipeGesture:(id)gesture;
- (void)_handleTapGesture:(id)gesture;
- (void)_handleTwoFingerTapGesture:(id)gesture;
- (void)_hideBar:(id)bar;
- (void)_nightModeChanged:(id)changed;
- (void)_performAlertSizingForAlert:(id)alert animated:(BOOL)animated;
- (void)_reloadPreviewsView;
- (void)_removePanController;
- (void)_resetAutoHideTimerAndShowBarAnimated:(BOOL)animated allowFocusDeferral:(BOOL)deferral;
- (void)_setAutoHideDisabled:(BOOL)disabled forRequester:(id)requester;
- (void)_setButtonsHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)_setETAViewHidden:(BOOL)hidden forRequester:(id)requester animated:(BOOL)animated;
- (void)_setFocusHoldersEnabled:(BOOL)enabled;
- (void)_setMaximumVisibleMapButtons:(unint64_t)buttons;
- (void)_setNavigationAlertView:(id)view visible:(BOOL)visible animated:(BOOL)animated completion:(id)completion;
- (void)_setPanInterfaceVisible:(BOOL)visible animated:(BOOL)animated;
- (void)_showBarAnimated:(BOOL)animated allowFocusDeferral:(BOOL)deferral;
- (void)_updateETAViewHidden;
- (void)_updateInterestingArea;
- (void)_updateMapButtonVisibility;
- (void)_updateMapButtonsWithButtons:(id)buttons;
- (void)_updatePanGestureForHiFiTouch;
- (void)_updateSafeArea;
- (void)_viewDidLoad;
- (void)applicationStateMonitor:(id)monitor didBecomeActive:(BOOL)active;
- (void)dealloc;
- (void)didChangeLayout:(id)layout;
- (void)didSelectButton:(id)button;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)dismissNavigationAlertAnimated:(BOOL)animated completion:(id)completion;
- (void)hostPanInterfaceVisible:(id)visible;
- (void)hostSetMapButton:(id)button imageSet:(id)set;
- (void)hostSetMapButtons:(id)buttons;
- (void)hostSetPanInterfaceVisible:(BOOL)visible animated:(BOOL)animated;
- (void)hostStartNavigationSessionForTrip:(id)trip reply:(id)reply;
- (void)hostUpdateTravelEstimates:(id)estimates forTripIdentifier:(id)identifier;
- (void)invalidate;
- (void)navigationAlertQueue:(id)queue shouldDisplayAlertView:(id)view animated:(BOOL)animated;
- (void)navigationAlertQueue:(id)queue shouldRemoveAlertView:(id)view animated:(BOOL)animated dismissalContext:(unint64_t)context completion:(id)completion;
- (void)navigationOwnershipChangedToOwner:(unint64_t)owner;
- (void)navigator:(id)navigator didEndTrip:(BOOL)trip;
- (void)navigator:(id)navigator pausedTripForReason:(unint64_t)reason description:(id)description usingColor:(id)color;
- (void)observerDeliveryPolicyDidChange:(id)change;
- (void)panBeganWithDirection:(int64_t)direction;
- (void)panEndedWithDirection:(int64_t)direction;
- (void)panWithDirection:(int64_t)direction;
- (void)sessionDidConnect:(id)connect;
- (void)setControl:(id)control enabled:(BOOL)enabled;
- (void)setGuidanceBackgroundColor:(id)color;
- (void)setHostAutoHidesNavigationBar:(BOOL)bar;
- (void)setHostGuidanceBackgroundColor:(id)color;
- (void)setHostHidesButtonsWithNavigationBar:(BOOL)bar;
- (void)setHostTripEstimateStyle:(unint64_t)style;
- (void)setHostTripPreviews:(id)previews textConfiguration:(id)configuration previewOnlyRouteChoices:(BOOL)choices selectedIndex:(unint64_t)index;
- (void)setMapButton:(id)button focusedImage:(id)image;
- (void)setMapButton:(id)button hidden:(BOOL)hidden;
- (void)setPreviewsView:(id)view;
- (void)setTripEstimateStyle:(unint64_t)style;
- (void)showManeuvers:(id)maneuvers usingDisplayStyles:(id)styles;
- (void)showNavigationAlert:(id)alert animated:(BOOL)animated;
- (void)traitCollectionDidChange:(id)change;
- (void)tripView:(id)view selectedTrip:(id)trip routeChoice:(id)choice;
- (void)tripView:(id)view startedTrip:(id)trip routeChoice:(id)choice;
- (void)updateEstimates:(id)estimates forManeuver:(id)maneuver;
- (void)updateNavigationAlert:(id)alert;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CPSMapTemplateViewController

- (CPSMapTemplateViewController)initWithMapTemplate:(id)template templateDelegate:(id)delegate safeAreaDelegate:(id)areaDelegate applicationStateMonitor:(id)monitor templateEnvironment:(id)environment
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, template);
  v49 = 0;
  objc_storeStrong(&v49, delegate);
  v48 = 0;
  objc_storeStrong(&v48, areaDelegate);
  v47 = 0;
  objc_storeStrong(&v47, monitor);
  v46 = 0;
  objc_storeStrong(&v46, environment);
  v7 = selfCopy;
  selfCopy = 0;
  v45.receiver = v7;
  v45.super_class = CPSMapTemplateViewController;
  v42 = [(CPSBaseTemplateViewController *)&v45 initWithTemplate:location[0] templateDelegate:v49 templateEnvironment:v46];
  selfCopy = v42;
  objc_storeStrong(&selfCopy, v42);
  if (v42)
  {
    v8 = objc_alloc_init(MEMORY[0x277CF0678]);
    eventDeliveryPolicyObserver = selfCopy->_eventDeliveryPolicyObserver;
    selfCopy->_eventDeliveryPolicyObserver = v8;
    *&v10 = MEMORY[0x277D82BD8](eventDeliveryPolicyObserver).n128_u64[0];
    v34 = selfCopy->_eventDeliveryPolicyObserver;
    keyboardFocusEnvironment = [MEMORY[0x277CF0628] keyboardFocusEnvironment];
    [(BKSHIDEventDeliveryPolicyObserver *)v34 setDeferringEnvironment:?];
    *&v11 = MEMORY[0x277D82BD8](keyboardFocusEnvironment).n128_u64[0];
    [(BKSHIDEventDeliveryPolicyObserver *)selfCopy->_eventDeliveryPolicyObserver addObserver:selfCopy, v11];
    sessionStatus = [v46 sessionStatus];
    [sessionStatus addSessionObserver:selfCopy];
    MEMORY[0x277D82BD8](sessionStatus);
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mapButtons = selfCopy->_mapButtons;
    selfCopy->_mapButtons = v12;
    *&v14 = MEMORY[0x277D82BD8](mapButtons).n128_u64[0];
    selfCopy->_maximumMapButtonCount = 4;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    lastTravelEstimatesByTrip = selfCopy->_lastTravelEstimatesByTrip;
    selfCopy->_lastTravelEstimatesByTrip = dictionary;
    *&v17 = MEMORY[0x277D82BD8](lastTravelEstimatesByTrip).n128_u64[0];
    automaticallyHidesNavigationBar = [location[0] automaticallyHidesNavigationBar];
    selfCopy->_autoHidesNavigationBar = automaticallyHidesNavigationBar;
    hidesButtonsWithNavigationBar = [location[0] hidesButtonsWithNavigationBar];
    selfCopy->_hidesButtonsWithNavigationBar = hidesButtonsWithNavigationBar;
    hidesButtonsWithNavigationBar2 = [location[0] hidesButtonsWithNavigationBar];
    selfCopy->_hidesButtonsWithNavigationBar = hidesButtonsWithNavigationBar2;
    objc_storeStrong(&selfCopy->_tripPreviews, 0);
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"0-Demo Auto Hide Timer Disabled", @"com.apple.internal.Neatline", &keyExistsAndHasValidFormat);
    v37 = 0;
    if (keyExistsAndHasValidFormat)
    {
      v37 = AppBooleanValue != 0;
    }

    selfCopy->_demoAutoHideTimerDisabled = v37;
    v21 = [CPSNavigationAlertQueue alloc];
    v22 = [(CPSNavigationAlertQueue *)v21 initWithDelegate:selfCopy applicationStateMonitor:v47];
    navigationAlertQueue = selfCopy->_navigationAlertQueue;
    selfCopy->_navigationAlertQueue = v22;
    MEMORY[0x277D82BD8](navigationAlertQueue);
    objc_storeWeak(&selfCopy->_safeAreaDelegate, v48);
    rightHandDrive = [v46 rightHandDrive];
    selfCopy->_rightHandDrive = rightHandDrive;
    selfCopy->_applicationIsFrontmost = 1;
    objc_storeWeak(&selfCopy->_applicationStateMonitor, v47);
    [v47 addApplicationStateObserver:selfCopy];
    v32 = v47;
    navigationAlertQueue = [(CPSMapTemplateViewController *)selfCopy navigationAlertQueue];
    [v32 addApplicationStateObserver:?];
    *&v25 = MEMORY[0x277D82BD8](navigationAlertQueue).n128_u64[0];
    guidanceBackgroundColor = [location[0] guidanceBackgroundColor];
    guidanceBackgroundColor = selfCopy->_guidanceBackgroundColor;
    selfCopy->_guidanceBackgroundColor = guidanceBackgroundColor;
    *&v28 = MEMORY[0x277D82BD8](guidanceBackgroundColor).n128_u64[0];
    tripEstimateStyle = [location[0] tripEstimateStyle];
    selfCopy->_tripEstimateStyle = tripEstimateStyle;
  }

  v31 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v31;
}

- (void)invalidate
{
  selfCopy = self;
  v11 = a2;
  navigatorObserver = [(CPSMapTemplateViewController *)self navigatorObserver];
  navigator = [(CPSMapTemplateViewController *)selfCopy navigator];
  [(CPSNavigatorObserving *)navigatorObserver willInvalidateNavigator:?];
  MEMORY[0x277D82BD8](navigator);
  navigator2 = [(CPSMapTemplateViewController *)selfCopy navigator];
  [(CPSNavigator *)navigator2 invalidate];
  applicationStateMonitor = [(CPSMapTemplateViewController *)selfCopy applicationStateMonitor];
  [(CPSApplicationStateMonitor *)applicationStateMonitor removeApplicationStateObserver:selfCopy];
  applicationStateMonitor2 = [(CPSMapTemplateViewController *)selfCopy applicationStateMonitor];
  navigationAlertQueue = [(CPSMapTemplateViewController *)selfCopy navigationAlertQueue];
  [(CPSApplicationStateMonitor *)applicationStateMonitor2 removeApplicationStateObserver:?];
  MEMORY[0x277D82BD8](navigationAlertQueue);
  eventDeliveryPolicyObserver = [(CPSMapTemplateViewController *)selfCopy eventDeliveryPolicyObserver];
  [(BKSHIDEventDeliveryPolicyObserver *)eventDeliveryPolicyObserver removeObserver:selfCopy];
  *&v2 = MEMORY[0x277D82BD8](eventDeliveryPolicyObserver).n128_u64[0];
  v10.receiver = selfCopy;
  v10.super_class = CPSMapTemplateViewController;
  [(CPSBaseTemplateViewController *)&v10 invalidate];
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(CPSMapTemplateViewController *)self invalidate];
  v2.receiver = selfCopy;
  v2.super_class = CPSMapTemplateViewController;
  [(CPSBaseTemplateViewController *)&v2 dealloc];
}

- (void)setGuidanceBackgroundColor:(id)color
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, color);
  if (selfCopy->_guidanceBackgroundColor != location[0])
  {
    objc_storeStrong(&selfCopy->_guidanceBackgroundColor, location[0]);
    navigationCardViewController = [(CPSMapTemplateViewController *)selfCopy navigationCardViewController];
    [(CPSNavigationCardViewController *)navigationCardViewController setGuidanceBackgroundColor:selfCopy->_guidanceBackgroundColor];
    MEMORY[0x277D82BD8](navigationCardViewController);
  }

  objc_storeStrong(location, 0);
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v10.receiver = selfCopy;
  v10.super_class = CPSMapTemplateViewController;
  [(CPSMapTemplateViewController *)&v10 traitCollectionDidChange:location[0]];
  v8 = 0;
  v7 = 0;
  if (![(CPSMapTemplateViewController *)selfCopy hasSetTripEstimateStyle])
  {
    navigationETAView = [(CPSMapTemplateViewController *)selfCopy navigationETAView];
    v8 = 1;
    v7 = navigationETAView != 0;
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](navigationETAView);
  }

  if (v7)
  {
    traitCollection = [(CPSMapTemplateViewController *)selfCopy traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];
    *&v3 = MEMORY[0x277D82BD8](traitCollection).n128_u64[0];
    navigationETAView2 = [(CPSMapTemplateViewController *)selfCopy navigationETAView];
    [(CPSNavigationETAView *)navigationETAView2 setTripEstimateStyle:userInterfaceStyle != 1];
    MEMORY[0x277D82BD8](navigationETAView2);
  }

  [(CPSMapTemplateViewController *)selfCopy _updatePanGestureForHiFiTouch];
  objc_storeStrong(location, 0);
}

- (void)setTripEstimateStyle:(unint64_t)style
{
  [(CPSMapTemplateViewController *)self setHasSetTripEstimateStyle:1];
  if (self->_tripEstimateStyle != style)
  {
    self->_tripEstimateStyle = style;
    navigationETAView = [(CPSMapTemplateViewController *)self navigationETAView];
    *&v3 = MEMORY[0x277D82BD8](navigationETAView).n128_u64[0];
    if (navigationETAView)
    {
      navigationETAView2 = [(CPSMapTemplateViewController *)self navigationETAView];
      [(CPSNavigationETAView *)navigationETAView2 setTripEstimateStyle:self->_tripEstimateStyle];
      MEMORY[0x277D82BD8](navigationETAView2);
    }
  }
}

- (CPMapTemplate)mapTemplate
{
  v3 = objc_opt_class();
  associatedTemplate = [(CPSBaseTemplateViewController *)self associatedTemplate];
  v5 = CPSSafeCast_22(v3, associatedTemplate);
  MEMORY[0x277D82BD8](associatedTemplate);

  return v5;
}

- (void)_viewDidLoad
{
  v180[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v176 = a2;
  v175.receiver = self;
  v175.super_class = CPSMapTemplateViewController;
  [(CPSBaseTemplateViewController *)&v175 _viewDidLoad];
  view = [(CPSMapTemplateViewController *)selfCopy view];
  v2 = objc_alloc(MEMORY[0x277D75A68]);
  v173 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v173 setAxis:1];
  [v173 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v173 setSpacing:8.0];
  [view addSubview:v173];
  [(CPSMapTemplateViewController *)selfCopy setTrailingBottomStackView:v173];
  v142 = selfCopy;
  mapTemplate = [(CPSMapTemplateViewController *)selfCopy mapTemplate];
  mapButtons = [(CPMapTemplate *)mapTemplate mapButtons];
  [(CPSMapTemplateViewController *)v142 _updateMapButtonsWithButtons:?];
  MEMORY[0x277D82BD8](mapButtons);
  *&v3 = MEMORY[0x277D82BD8](mapTemplate).n128_u64[0];
  v170 = 0;
  v168 = 0;
  v166 = 0;
  v164 = 0;
  if ([(CPSMapTemplateViewController *)selfCopy rightHandDrive])
  {
    safeAreaLayoutGuide = [view safeAreaLayoutGuide];
    v170 = 1;
    leftAnchor = [safeAreaLayoutGuide leftAnchor];
    v168 = 1;
    v4 = MEMORY[0x277D82BE0](leftAnchor);
  }

  else
  {
    safeAreaLayoutGuide2 = [view safeAreaLayoutGuide];
    v166 = 1;
    rightAnchor = [safeAreaLayoutGuide2 rightAnchor];
    v164 = 1;
    v4 = MEMORY[0x277D82BE0](rightAnchor);
  }

  v172 = v4;
  if (v164)
  {
    MEMORY[0x277D82BD8](rightAnchor);
  }

  if (v166)
  {
    MEMORY[0x277D82BD8](safeAreaLayoutGuide2);
  }

  if (v168)
  {
    MEMORY[0x277D82BD8](leftAnchor);
  }

  if (v170)
  {
    MEMORY[0x277D82BD8](safeAreaLayoutGuide);
  }

  v161 = 0;
  v159 = 0;
  if ([(CPSMapTemplateViewController *)selfCopy rightHandDrive])
  {
    leftAnchor2 = [v173 leftAnchor];
    v161 = 1;
    v5 = MEMORY[0x277D82BE0](leftAnchor2);
  }

  else
  {
    rightAnchor2 = [v173 rightAnchor];
    v159 = 1;
    v5 = MEMORY[0x277D82BE0](rightAnchor2);
  }

  v163 = v5;
  if (v159)
  {
    MEMORY[0x277D82BD8](rightAnchor2);
  }

  if (v161)
  {
    MEMORY[0x277D82BD8](leftAnchor2);
  }

  if ([(CPSMapTemplateViewController *)selfCopy rightHandDrive])
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
  safeAreaLayoutGuide3 = [view safeAreaLayoutGuide];
  bottomAnchor = [safeAreaLayoutGuide3 bottomAnchor];
  bottomAnchor2 = [v173 bottomAnchor];
  v10 = _UISolariumEnabled();
  v11 = 4.0;
  if ((v10 & 1) == 0)
  {
    v11 = 8.0;
  }

  v39 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v11];
  v180[1] = v39;
  widthAnchor = [v173 widthAnchor];
  v37 = [widthAnchor constraintEqualToConstant:36.0];
  v180[2] = v37;
  v158[0] = [MEMORY[0x277CBEA60] arrayWithObjects:v180 count:3];
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](widthAnchor);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide3);
  *&v12 = MEMORY[0x277D82BD8](v43).n128_u64[0];
  [MEMORY[0x277CCAAD0] activateConstraints:{v158[0], v12}];
  [(CPSMapTemplateViewController *)selfCopy _reloadPreviewsView];
  v13 = objc_alloc(MEMORY[0x277D75B80]);
  v157 = [v13 initWithTarget:selfCopy action:sel__handleTapGesture_];
  [v157 setNumberOfTapsRequired:?];
  [v157 setDelegate:selfCopy];
  [view addGestureRecognizer:v157];
  [(CPSMapTemplateViewController *)selfCopy setHideTapGestureRecognizer:v157];
  v14 = objc_alloc(MEMORY[0x277D75B80]);
  v156 = [v14 initWithTarget:selfCopy action:?];
  [v156 setNumberOfTapsRequired:1];
  [v156 setDelegate:selfCopy];
  navigationController = [(CPSMapTemplateViewController *)selfCopy navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar addGestureRecognizer:v156];
  MEMORY[0x277D82BD8](navigationBar);
  *&v15 = MEMORY[0x277D82BD8](navigationController).n128_u64[0];
  [(CPSMapTemplateViewController *)selfCopy setNavBarHideTapGestureRecognizer:v156, v15];
  [(CPSMapTemplateViewController *)selfCopy _updatePanGestureForHiFiTouch];
  v16 = objc_alloc(MEMORY[0x277D75848]);
  v155 = [v16 initWithTarget:selfCopy action:sel__handlePinchGesture_];
  [v155 setDelegate:selfCopy];
  [view addGestureRecognizer:v155];
  [(CPSMapTemplateViewController *)selfCopy setPinchGestureRecognizer:v155];
  v17 = objc_alloc(MEMORY[0x277D75B80]);
  v154 = [v17 initWithTarget:selfCopy action:sel__handleTwoFingerTapGesture_];
  [v154 setNumberOfTapsRequired:1];
  [v154 setNumberOfTouchesRequired:?];
  [v154 setDelegate:selfCopy];
  [view addGestureRecognizer:v154];
  [(CPSMapTemplateViewController *)selfCopy setTwoFingerTapGestureRecognizer:v154];
  v18 = objc_alloc(MEMORY[0x277D75B80]);
  v153 = [v18 initWithTarget:selfCopy action:sel__handleOneFingerDoubleTapGesture_];
  [v153 setNumberOfTapsRequired:2];
  [v153 setNumberOfTouchesRequired:1];
  [v153 setDelegate:selfCopy];
  [view addGestureRecognizer:v153];
  [(CPSMapTemplateViewController *)selfCopy setOneFingerDoubleTapGestureRecognizer:v153];
  hideTapGestureRecognizer = [(CPSMapTemplateViewController *)selfCopy hideTapGestureRecognizer];
  oneFingerDoubleTapGestureRecognizer = [(CPSMapTemplateViewController *)selfCopy oneFingerDoubleTapGestureRecognizer];
  [(UITapGestureRecognizer *)hideTapGestureRecognizer requireGestureRecognizerToFail:?];
  MEMORY[0x277D82BD8](oneFingerDoubleTapGestureRecognizer);
  *&v19 = MEMORY[0x277D82BD8](hideTapGestureRecognizer).n128_u64[0];
  navBarHideTapGestureRecognizer = [(CPSMapTemplateViewController *)selfCopy navBarHideTapGestureRecognizer];
  oneFingerDoubleTapGestureRecognizer2 = [(CPSMapTemplateViewController *)selfCopy oneFingerDoubleTapGestureRecognizer];
  [(UITapGestureRecognizer *)navBarHideTapGestureRecognizer requireGestureRecognizerToFail:?];
  MEMORY[0x277D82BD8](oneFingerDoubleTapGestureRecognizer2);
  MEMORY[0x277D82BD8](navBarHideTapGestureRecognizer);
  v20 = objc_alloc(MEMORY[0x277D75938]);
  v152 = [v20 initWithTarget:selfCopy action:sel__handleRotationGesture_];
  [v152 setDelegate:selfCopy];
  [view addGestureRecognizer:v152];
  [(CPSMapTemplateViewController *)selfCopy setRotationGestureRecognizer:v152];
  v21 = objc_alloc(MEMORY[0x277D757F8]);
  v151 = [v21 initWithTarget:selfCopy action:sel__handleSwipeGesture_];
  [v151 setDelegate:selfCopy];
  [v151 setMinimumNumberOfTouches:2];
  [view addGestureRecognizer:v151];
  [(CPSMapTemplateViewController *)selfCopy setPanForPitchGestureRecognizer:v151];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:selfCopy selector:sel__nightModeChanged_ name:*MEMORY[0x277CF8930] object:0];
  *&v22 = MEMORY[0x277D82BD8](defaultCenter).n128_u64[0];
  [(CPSMapTemplateViewController *)selfCopy _resetAutoHideTimerAndShowBarAnimated:1 allowFocusDeferral:1, v22];
  v51 = [CPSPanViewController alloc];
  templateEnvironment = [(CPSBaseTemplateViewController *)selfCopy templateEnvironment];
  v150 = [(CPSPanViewController *)v51 initWithEnvironment:?];
  *&v23 = MEMORY[0x277D82BD8](templateEnvironment).n128_u64[0];
  [(CPSPanViewController *)v150 setPanDelegate:selfCopy, v23];
  [(CPSMapTemplateViewController *)selfCopy setPanViewController:v150];
  v24 = objc_alloc(MEMORY[0x277D75D18]);
  v149 = [v24 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v149 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v149 setHidden:1];
  [view insertSubview:v149 belowSubview:v173];
  leftAnchor3 = [v149 leftAnchor];
  leftAnchor4 = [view leftAnchor];
  [view safeAreaInsets];
  v148[5] = v25;
  v148[6] = v26;
  v148[7] = v27;
  v148[8] = v28;
  v53 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4 constant:*&v26];
  [(CPSMapTemplateViewController *)selfCopy setPanContainerLeftConstraint:?];
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BD8](leftAnchor4);
  *&v29 = MEMORY[0x277D82BD8](leftAnchor3).n128_u64[0];
  rightAnchor3 = [v149 rightAnchor];
  rightAnchor4 = [view rightAnchor];
  [view safeAreaInsets];
  v148[1] = v30;
  v148[2] = v31;
  v148[3] = v32;
  v148[4] = v33;
  v56 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4 constant:*&v33];
  [(CPSMapTemplateViewController *)selfCopy setPanContainerRightConstraint:?];
  MEMORY[0x277D82BD8](v56);
  MEMORY[0x277D82BD8](rightAnchor4);
  *&v34 = MEMORY[0x277D82BD8](rightAnchor3).n128_u64[0];
  v59 = view;
  panContainerLeftConstraint = [(CPSMapTemplateViewController *)selfCopy panContainerLeftConstraint];
  v179[0] = panContainerLeftConstraint;
  topAnchor = [v149 topAnchor];
  safeAreaLayoutGuide4 = [view safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide4 topAnchor];
  v66 = [topAnchor constraintEqualToAnchor:?];
  v179[1] = v66;
  panContainerRightConstraint = [(CPSMapTemplateViewController *)selfCopy panContainerRightConstraint];
  v179[2] = panContainerRightConstraint;
  bottomAnchor3 = [v149 bottomAnchor];
  safeAreaLayoutGuide5 = [view safeAreaLayoutGuide];
  bottomAnchor4 = [safeAreaLayoutGuide5 bottomAnchor];
  v61 = [bottomAnchor3 constraintEqualToAnchor:?];
  v179[3] = v61;
  v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v179 count:4];
  [v59 addConstraints:?];
  MEMORY[0x277D82BD8](v60);
  MEMORY[0x277D82BD8](v61);
  MEMORY[0x277D82BD8](bottomAnchor4);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide5);
  MEMORY[0x277D82BD8](bottomAnchor3);
  MEMORY[0x277D82BD8](panContainerRightConstraint);
  MEMORY[0x277D82BD8](v66);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide4);
  MEMORY[0x277D82BD8](topAnchor);
  *&v35 = MEMORY[0x277D82BD8](panContainerLeftConstraint).n128_u64[0];
  [(CPSMapTemplateViewController *)selfCopy setPanContainerView:v149, v35];
  v148[0] = [_CPSFocusHoldingButton buttonWithType:0];
  [v148[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v148[0] setEnabled:0];
  [v148[0] addTarget:selfCopy action:sel__handleFocusHolderSelect forControlEvents:0x2000];
  [view addSubview:v148[0]];
  [(CPSMapTemplateViewController *)selfCopy setFocusHoldingButton:v148[0]];
  v147 = objc_alloc_init(MEMORY[0x277D75500]);
  [view addLayoutGuide:v147];
  [v147 setEnabled:0];
  [(CPSMapTemplateViewController *)selfCopy setFocusHolderLeftFocusGuide:v147];
  v146 = objc_alloc_init(MEMORY[0x277D75500]);
  [view addLayoutGuide:v146];
  [v146 setEnabled:0];
  [(CPSMapTemplateViewController *)selfCopy setFocusHolderRightFocusGuide:v146];
  v145 = objc_alloc_init(MEMORY[0x277D754F8]);
  [view addLayoutGuide:v145];
  v71 = MEMORY[0x277CCAAD0];
  focusHolderLeftFocusGuide = [(CPSMapTemplateViewController *)selfCopy focusHolderLeftFocusGuide];
  widthAnchor2 = [(UIFocusGuide *)focusHolderLeftFocusGuide widthAnchor];
  v138 = [widthAnchor2 constraintEqualToConstant:?];
  v178[0] = v138;
  focusHolderLeftFocusGuide2 = [(CPSMapTemplateViewController *)selfCopy focusHolderLeftFocusGuide];
  rightAnchor5 = [(UIFocusGuide *)focusHolderLeftFocusGuide2 rightAnchor];
  focusHoldingButton = [(CPSMapTemplateViewController *)selfCopy focusHoldingButton];
  leftAnchor5 = [(_CPSFocusHoldingButton *)focusHoldingButton leftAnchor];
  v133 = [rightAnchor5 constraintEqualToAnchor:?];
  v178[1] = v133;
  focusHolderLeftFocusGuide3 = [(CPSMapTemplateViewController *)selfCopy focusHolderLeftFocusGuide];
  bottomAnchor5 = [(UIFocusGuide *)focusHolderLeftFocusGuide3 bottomAnchor];
  focusHoldingButton2 = [(CPSMapTemplateViewController *)selfCopy focusHoldingButton];
  bottomAnchor6 = [(_CPSFocusHoldingButton *)focusHoldingButton2 bottomAnchor];
  v128 = [bottomAnchor5 constraintEqualToAnchor:?];
  v178[2] = v128;
  focusHolderLeftFocusGuide4 = [(CPSMapTemplateViewController *)selfCopy focusHolderLeftFocusGuide];
  topAnchor3 = [(UIFocusGuide *)focusHolderLeftFocusGuide4 topAnchor];
  focusHoldingButton3 = [(CPSMapTemplateViewController *)selfCopy focusHoldingButton];
  topAnchor4 = [(_CPSFocusHoldingButton *)focusHoldingButton3 topAnchor];
  v123 = [topAnchor3 constraintEqualToAnchor:?];
  v178[3] = v123;
  focusHolderRightFocusGuide = [(CPSMapTemplateViewController *)selfCopy focusHolderRightFocusGuide];
  widthAnchor3 = [(UIFocusGuide *)focusHolderRightFocusGuide widthAnchor];
  v120 = [widthAnchor3 constraintEqualToConstant:1.0];
  v178[4] = v120;
  focusHolderRightFocusGuide2 = [(CPSMapTemplateViewController *)selfCopy focusHolderRightFocusGuide];
  leftAnchor6 = [(UIFocusGuide *)focusHolderRightFocusGuide2 leftAnchor];
  focusHoldingButton4 = [(CPSMapTemplateViewController *)selfCopy focusHoldingButton];
  rightAnchor6 = [(_CPSFocusHoldingButton *)focusHoldingButton4 rightAnchor];
  v115 = [leftAnchor6 constraintEqualToAnchor:?];
  v178[5] = v115;
  focusHolderRightFocusGuide3 = [(CPSMapTemplateViewController *)selfCopy focusHolderRightFocusGuide];
  bottomAnchor7 = [(UIFocusGuide *)focusHolderRightFocusGuide3 bottomAnchor];
  focusHoldingButton5 = [(CPSMapTemplateViewController *)selfCopy focusHoldingButton];
  bottomAnchor8 = [(_CPSFocusHoldingButton *)focusHoldingButton5 bottomAnchor];
  v110 = [bottomAnchor7 constraintEqualToAnchor:?];
  v178[6] = v110;
  focusHolderRightFocusGuide4 = [(CPSMapTemplateViewController *)selfCopy focusHolderRightFocusGuide];
  topAnchor5 = [(UIFocusGuide *)focusHolderRightFocusGuide4 topAnchor];
  focusHoldingButton6 = [(CPSMapTemplateViewController *)selfCopy focusHoldingButton];
  topAnchor6 = [(_CPSFocusHoldingButton *)focusHoldingButton6 topAnchor];
  v105 = [topAnchor5 constraintEqualToAnchor:?];
  v178[7] = v105;
  focusHoldingButton7 = [(CPSMapTemplateViewController *)selfCopy focusHoldingButton];
  widthAnchor4 = [(_CPSFocusHoldingButton *)focusHoldingButton7 widthAnchor];
  v102 = [widthAnchor4 constraintEqualToConstant:1.0];
  v178[8] = v102;
  focusHoldingButton8 = [(CPSMapTemplateViewController *)selfCopy focusHoldingButton];
  heightAnchor = [(_CPSFocusHoldingButton *)focusHoldingButton8 heightAnchor];
  v99 = [heightAnchor constraintEqualToConstant:1.0];
  v178[9] = v99;
  focusHoldingButton9 = [(CPSMapTemplateViewController *)selfCopy focusHoldingButton];
  topAnchor7 = [(_CPSFocusHoldingButton *)focusHoldingButton9 topAnchor];
  safeAreaLayoutGuide6 = [view safeAreaLayoutGuide];
  topAnchor8 = [safeAreaLayoutGuide6 topAnchor];
  v94 = [topAnchor7 constraintEqualToAnchor:?];
  v178[10] = v94;
  focusHoldingButton10 = [(CPSMapTemplateViewController *)selfCopy focusHoldingButton];
  leftAnchor7 = [(_CPSFocusHoldingButton *)focusHoldingButton10 leftAnchor];
  safeAreaLayoutGuide7 = [view safeAreaLayoutGuide];
  leftAnchor8 = [safeAreaLayoutGuide7 leftAnchor];
  v89 = [leftAnchor7 constraintEqualToAnchor:?];
  v178[11] = v89;
  topAnchor9 = [v145 topAnchor];
  safeAreaLayoutGuide8 = [view safeAreaLayoutGuide];
  topAnchor10 = [safeAreaLayoutGuide8 topAnchor];
  v85 = [topAnchor9 constraintEqualToAnchor:?];
  v178[12] = v85;
  bottomAnchor9 = [v145 bottomAnchor];
  safeAreaLayoutGuide9 = [view safeAreaLayoutGuide];
  bottomAnchor10 = [safeAreaLayoutGuide9 bottomAnchor];
  v81 = [bottomAnchor9 constraintEqualToAnchor:?];
  v178[13] = v81;
  leftAnchor9 = [v145 leftAnchor];
  safeAreaLayoutGuide10 = [view safeAreaLayoutGuide];
  leftAnchor10 = [safeAreaLayoutGuide10 leftAnchor];
  v77 = [leftAnchor9 constraintEqualToAnchor:?];
  v178[14] = v77;
  rightAnchor7 = [v145 rightAnchor];
  safeAreaLayoutGuide11 = [view safeAreaLayoutGuide];
  rightAnchor8 = [safeAreaLayoutGuide11 rightAnchor];
  v73 = [rightAnchor7 constraintEqualToAnchor:?];
  v178[15] = v73;
  v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v178 count:16];
  [v71 activateConstraints:?];
  MEMORY[0x277D82BD8](v72);
  MEMORY[0x277D82BD8](v73);
  MEMORY[0x277D82BD8](rightAnchor8);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide11);
  MEMORY[0x277D82BD8](rightAnchor7);
  MEMORY[0x277D82BD8](v77);
  MEMORY[0x277D82BD8](leftAnchor10);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide10);
  MEMORY[0x277D82BD8](leftAnchor9);
  MEMORY[0x277D82BD8](v81);
  MEMORY[0x277D82BD8](bottomAnchor10);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide9);
  MEMORY[0x277D82BD8](bottomAnchor9);
  MEMORY[0x277D82BD8](v85);
  MEMORY[0x277D82BD8](topAnchor10);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide8);
  MEMORY[0x277D82BD8](topAnchor9);
  MEMORY[0x277D82BD8](v89);
  MEMORY[0x277D82BD8](leftAnchor8);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide7);
  MEMORY[0x277D82BD8](leftAnchor7);
  MEMORY[0x277D82BD8](focusHoldingButton10);
  MEMORY[0x277D82BD8](v94);
  MEMORY[0x277D82BD8](topAnchor8);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide6);
  MEMORY[0x277D82BD8](topAnchor7);
  MEMORY[0x277D82BD8](focusHoldingButton9);
  MEMORY[0x277D82BD8](v99);
  MEMORY[0x277D82BD8](heightAnchor);
  MEMORY[0x277D82BD8](focusHoldingButton8);
  MEMORY[0x277D82BD8](v102);
  MEMORY[0x277D82BD8](widthAnchor4);
  MEMORY[0x277D82BD8](focusHoldingButton7);
  MEMORY[0x277D82BD8](v105);
  MEMORY[0x277D82BD8](topAnchor6);
  MEMORY[0x277D82BD8](focusHoldingButton6);
  MEMORY[0x277D82BD8](topAnchor5);
  MEMORY[0x277D82BD8](focusHolderRightFocusGuide4);
  MEMORY[0x277D82BD8](v110);
  MEMORY[0x277D82BD8](bottomAnchor8);
  MEMORY[0x277D82BD8](focusHoldingButton5);
  MEMORY[0x277D82BD8](bottomAnchor7);
  MEMORY[0x277D82BD8](focusHolderRightFocusGuide3);
  MEMORY[0x277D82BD8](v115);
  MEMORY[0x277D82BD8](rightAnchor6);
  MEMORY[0x277D82BD8](focusHoldingButton4);
  MEMORY[0x277D82BD8](leftAnchor6);
  MEMORY[0x277D82BD8](focusHolderRightFocusGuide2);
  MEMORY[0x277D82BD8](v120);
  MEMORY[0x277D82BD8](widthAnchor3);
  MEMORY[0x277D82BD8](focusHolderRightFocusGuide);
  MEMORY[0x277D82BD8](v123);
  MEMORY[0x277D82BD8](topAnchor4);
  MEMORY[0x277D82BD8](focusHoldingButton3);
  MEMORY[0x277D82BD8](topAnchor3);
  MEMORY[0x277D82BD8](focusHolderLeftFocusGuide4);
  MEMORY[0x277D82BD8](v128);
  MEMORY[0x277D82BD8](bottomAnchor6);
  MEMORY[0x277D82BD8](focusHoldingButton2);
  MEMORY[0x277D82BD8](bottomAnchor5);
  MEMORY[0x277D82BD8](focusHolderLeftFocusGuide3);
  MEMORY[0x277D82BD8](v133);
  MEMORY[0x277D82BD8](leftAnchor5);
  MEMORY[0x277D82BD8](focusHoldingButton);
  MEMORY[0x277D82BD8](rightAnchor5);
  MEMORY[0x277D82BD8](focusHolderLeftFocusGuide2);
  MEMORY[0x277D82BD8](v138);
  MEMORY[0x277D82BD8](widthAnchor2);
  *&v36 = MEMORY[0x277D82BD8](focusHolderLeftFocusGuide).n128_u64[0];
  [(CPSMapTemplateViewController *)selfCopy _createNavigationCardViewController];
  [(CPSMapTemplateViewController *)selfCopy _createNavigationCardViewLayoutHelperView];
  [(CPSMapTemplateViewController *)selfCopy _updateSafeArea];
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
  objc_storeStrong(&view, 0);
}

- (void)_setMaximumVisibleMapButtons:(unint64_t)buttons
{
  buttonsCopy = buttons;
  if (buttons > 4)
  {
    buttonsCopy = 4;
  }

  if (buttonsCopy != [(CPSMapTemplateViewController *)self maximumMapButtonCount])
  {
    [(CPSMapTemplateViewController *)self setMaximumMapButtonCount:buttonsCopy];
    [(CPSMapTemplateViewController *)self _updateMapButtonVisibility];
  }
}

- (void)_updateMapButtonVisibility
{
  selfCopy = self;
  v14 = a2;
  mapButtons = [(CPSMapTemplateViewController *)self mapButtons];
  v12 = [(NSMutableArray *)mapButtons count];
  maximumMapButtonCount = [(CPSMapTemplateViewController *)selfCopy maximumMapButtonCount];
  if (v12 >= maximumMapButtonCount)
  {
    v3 = maximumMapButtonCount;
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
  v10[0] = MEMORY[0x277D82BE0](selfCopy);
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

- (void)_updateMapButtonsWithButtons:(id)buttons
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, buttons);
  viewIfLoaded = [(CPSMapTemplateViewController *)selfCopy viewIfLoaded];
  *&v3 = MEMORY[0x277D82BD8](viewIfLoaded).n128_u64[0];
  if (viewIfLoaded)
  {
    trailingBottomStackView = [(CPSMapTemplateViewController *)selfCopy trailingBottomStackView];
    arrangedSubviews = [(UIStackView *)trailingBottomStackView arrangedSubviews];
    v5 = [(NSArray *)arrangedSubviews copy];
    [v5 enumerateObjectsUsingBlock:&__block_literal_global_16];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](arrangedSubviews);
    *&v4 = MEMORY[0x277D82BD8](trailingBottomStackView).n128_u64[0];
    mapButtons = [(CPSMapTemplateViewController *)selfCopy mapButtons];
    [(NSMutableArray *)mapButtons removeAllObjects];
    MEMORY[0x277D82BD8](mapButtons);
    v9 = location[0];
    v13 = MEMORY[0x277D85DD0];
    v14 = -1073741824;
    v15 = 0;
    v16 = __61__CPSMapTemplateViewController__updateMapButtonsWithButtons___block_invoke_2;
    v17 = &unk_278D94190;
    v18 = MEMORY[0x277D82BE0](selfCopy);
    [v9 enumerateObjectsUsingBlock:&v13];
    [(CPSMapTemplateViewController *)selfCopy _updateMapButtonVisibility];
    [(CPSMapTemplateViewController *)selfCopy _updateSafeArea];
    objc_storeStrong(&v18, 0);
    v19 = 0;
  }

  else
  {
    v10 = location[0];
    mapTemplate = [(CPSMapTemplateViewController *)selfCopy mapTemplate];
    [(CPMapTemplate *)mapTemplate setMapButtons:v10];
    MEMORY[0x277D82BD8](mapTemplate);
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

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v7 = a2;
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = CPSMapTemplateViewController;
  [(CPSBaseTemplateViewController *)&v5 viewWillAppear:appear];
  if (_UISolariumEnabled())
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v3 = [MEMORY[0x277CCABB0] numberWithBool:appearCopy];
    [defaultCenter postNotificationName:@"CPMapTemplateWillShowNotification" object:?];
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](defaultCenter);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v16 = a2;
  appearCopy = appear;
  v14.receiver = self;
  v14.super_class = CPSMapTemplateViewController;
  [(CPSBaseTemplateViewController *)&v14 viewDidAppear:appear];
  v7 = objc_opt_class();
  view = [(CPSMapTemplateViewController *)selfCopy view];
  window = [view window];
  location = CPSSafeCast_22(v7, window);
  MEMORY[0x277D82BD8](window);
  *&v3 = MEMORY[0x277D82BD8](view).n128_u64[0];
  [location addEventObserver:{selfCopy, v3}];
  [(CPSMapTemplateViewController *)selfCopy _setFocusHoldersEnabled:0];
  [(CPSMapTemplateViewController *)selfCopy _setAutoHideDisabled:0 forRequester:@"MapTemplateRequester"];
  navBarHideTapGestureRecognizer = [(CPSMapTemplateViewController *)selfCopy navBarHideTapGestureRecognizer];
  [(UITapGestureRecognizer *)navBarHideTapGestureRecognizer setEnabled:1];
  *&v4 = MEMORY[0x277D82BD8](navBarHideTapGestureRecognizer).n128_u64[0];
  [(CPSMapTemplateViewController *)selfCopy _resetAutoHideTimerAndShowBarAnimated:1 allowFocusDeferral:1, v4];
  [(CPSMapTemplateViewController *)selfCopy _updateSafeArea];
  navigationAlertQueue = [(CPSMapTemplateViewController *)selfCopy navigationAlertQueue];
  currentAlert = [(CPSNavigationAlertQueue *)navigationAlertQueue currentAlert];
  MEMORY[0x277D82BD8](currentAlert);
  *&v5 = MEMORY[0x277D82BD8](navigationAlertQueue).n128_u64[0];
  if (currentAlert)
  {
    navigationAlertQueue2 = [(CPSMapTemplateViewController *)selfCopy navigationAlertQueue];
    [(CPSNavigationAlertQueue *)navigationAlertQueue2 beginAnimatingAlertIfPossible];
    MEMORY[0x277D82BD8](navigationAlertQueue2);
  }

  objc_storeStrong(&location, 0);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v14 = a2;
  disappearCopy = disappear;
  v12.receiver = self;
  v12.super_class = CPSMapTemplateViewController;
  [(CPSBaseTemplateViewController *)&v12 viewWillDisappear:disappear];
  v6 = objc_opt_class();
  view = [(CPSMapTemplateViewController *)selfCopy view];
  window = [view window];
  v11 = CPSSafeCast_22(v6, window);
  MEMORY[0x277D82BD8](window);
  *&v3 = MEMORY[0x277D82BD8](view).n128_u64[0];
  [v11 removeEventObserver:{selfCopy, v3}];
  [(CPSMapTemplateViewController *)selfCopy _setAutoHideDisabled:1 forRequester:@"MapTemplateRequester"];
  navBarHideTapGestureRecognizer = [(CPSMapTemplateViewController *)selfCopy navBarHideTapGestureRecognizer];
  [(UITapGestureRecognizer *)navBarHideTapGestureRecognizer setEnabled:0];
  *&v4 = MEMORY[0x277D82BD8](navBarHideTapGestureRecognizer).n128_u64[0];
  autoHideTimer = [(CPSMapTemplateViewController *)selfCopy autoHideTimer];
  [(NSTimer *)autoHideTimer invalidate];
  *&v5 = MEMORY[0x277D82BD8](autoHideTimer).n128_u64[0];
  [(CPSMapTemplateViewController *)selfCopy setAutoHideTimer:v5];
  objc_storeStrong(&v11, 0);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSMapTemplateViewController;
  [(CPSMapTemplateViewController *)&v2 viewDidLayoutSubviews];
  [(CPSMapTemplateViewController *)selfCopy _calculateAndUpdateCardWidthConstraint];
}

- (void)setPreviewsView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  if (selfCopy->_previewsView != location[0])
  {
    previewsView = [(CPSMapTemplateViewController *)selfCopy previewsView];
    [(CPSTripPreviewsCardView *)previewsView removeFromSuperview];
    MEMORY[0x277D82BD8](previewsView);
    objc_storeStrong(&selfCopy->_previewsView, location[0]);
    if (selfCopy->_previewsView)
    {
      [(CPSMapTemplateViewController *)selfCopy _setAutoHideDisabled:1 forRequester:@"PreviewCardRequester"];
    }

    else
    {
      [(CPSMapTemplateViewController *)selfCopy _setAutoHideDisabled:0 forRequester:@"PreviewCardRequester"];
    }
  }

  objc_storeStrong(location, 0);
}

- (void)_reloadPreviewsView
{
  v135[6] = *MEMORY[0x277D85DE8];
  selfCopy = self;
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
  tripPreviews = [(CPSMapTemplateViewController *)selfCopy tripPreviews];
  if ([tripPreviews count] != 0)
  {
    if ([(CPSMapTemplateViewController *)selfCopy previewOnlyRouteChoices])
    {
      v70 = [CPSRoutePreviewsCardView alloc];
      v69 = selfCopy;
      tripPreviewTextConfiguration = [(CPSMapTemplateViewController *)selfCopy tripPreviewTextConfiguration];
      v2 = [(CPSRoutePreviewsCardView *)v70 initWithTripDelegate:v69 trips:tripPreviews textConfiguration:?];
      v3 = v130;
      v130 = v2;
      MEMORY[0x277D82BD8](v3);
      v4 = MEMORY[0x277D82BD8](tripPreviewTextConfiguration).n128_u64[0];
    }

    else
    {
      v67 = [CPSPagingTripPreviewsCardView alloc];
      v66 = selfCopy;
      tripPreviewTextConfiguration2 = [(CPSMapTemplateViewController *)selfCopy tripPreviewTextConfiguration];
      v5 = [(CPSPagingTripPreviewsCardView *)v67 initWithTripDelegate:v66 trips:tripPreviews textConfiguration:?];
      v6 = v130;
      v130 = v5;
      MEMORY[0x277D82BD8](v6);
      *&v7 = MEMORY[0x277D82BD8](tripPreviewTextConfiguration2).n128_u64[0];
      [(CPSMapTemplateViewController *)selfCopy previewSelectedIndex];
      v65 = [tripPreviews count];
      if (v65 > [(CPSMapTemplateViewController *)selfCopy previewSelectedIndex])
      {
        v64 = [tripPreviews objectAtIndex:{-[CPSMapTemplateViewController previewSelectedIndex](selfCopy, "previewSelectedIndex")}];
        [v130 setSelectedTrip:?];
        v4 = MEMORY[0x277D82BD8](v64).n128_u64[0];
      }
    }
  }

  else
  {
    previewsView = [(CPSMapTemplateViewController *)selfCopy previewsView];
    *&v8 = MEMORY[0x277D82BD8](previewsView).n128_u64[0];
    if (previewsView)
    {
      previewsView2 = [(CPSMapTemplateViewController *)selfCopy previewsView];
      v127 = [(CPSTripPreviewsCardView *)previewsView2 snapshotViewAfterScreenUpdates:1];
      MEMORY[0x277D82BD8](previewsView2);
      v125 = 0u;
      v126 = 0u;
      previewsView3 = [(CPSMapTemplateViewController *)selfCopy previewsView];
      [(CPSTripPreviewsCardView *)previewsView3 frame];
      *&v125 = v9;
      *(&v125 + 1) = v10;
      *&v126 = v11;
      *(&v126 + 1) = v12;
      *&v13 = MEMORY[0x277D82BD8](previewsView3).n128_u64[0];
      view = [(CPSMapTemplateViewController *)selfCopy view];
      [view addSubview:v127];
      MEMORY[0x277D82BD8](view);
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
      v115 = MEMORY[0x277D82BE0](selfCopy);
      v116 = MEMORY[0x277D82BE0](v127);
      [v62 animateWithDuration:4 delay:&v117 usingSpringWithDamping:&v110 initialSpringVelocity:0.4 options:0.0 animations:10.0 completion:?];
      objc_storeStrong(&v116, 0);
      objc_storeStrong(&v115, 0);
      objc_storeStrong(&v122, 0);
      objc_storeStrong(&v127, 0);
    }

    else
    {
      navigationCardViewController = [(CPSMapTemplateViewController *)selfCopy navigationCardViewController];
      [CPSNavigationCardViewController setNavigationCardHidden:navigationCardViewController forRequester:"setNavigationCardHidden:forRequester:animated:completion:" animated:0 completion:?];
      *&v14 = MEMORY[0x277D82BD8](navigationCardViewController).n128_u64[0];
      [(CPSMapTemplateViewController *)selfCopy _setETAViewHidden:0 forRequester:@"PreviewCardRequester" animated:1, v14];
      navigationAlertQueue = [(CPSMapTemplateViewController *)selfCopy navigationAlertQueue];
      currentAlertView = [(CPSNavigationAlertQueue *)navigationAlertQueue currentAlertView];
      [(CPSNavigationAlertView *)currentAlertView setHidden:0];
      MEMORY[0x277D82BD8](currentAlertView);
      v4 = MEMORY[0x277D82BD8](navigationAlertQueue).n128_u64[0];
    }
  }

  [(CPSMapTemplateViewController *)selfCopy setPreviewsView:v130, *&v4];
  if (v130)
  {
    view2 = [(CPSMapTemplateViewController *)selfCopy view];
    [view2 addSubview:v130];
    *&v15 = MEMORY[0x277D82BD8](view2).n128_u64[0];
    view3 = [(CPSMapTemplateViewController *)selfCopy view];
    safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
    [safeAreaLayoutGuide layoutFrame];
    rect = v136;
    Height = CGRectGetHeight(v136);
    v16 = _UISolariumEnabled();
    v17 = 8.0;
    if (v16)
    {
      v17 = 4.0;
    }

    v55 = Height + -2.0 * v17;
    MEMORY[0x277D82BD8](safeAreaLayoutGuide);
    MEMORY[0x277D82BD8](view3);
    v109 = v55;
    v105 = 0;
    v103 = 0;
    v101 = 0;
    v99 = 0;
    v97 = 0;
    v95 = 0;
    if ([(CPSMapTemplateViewController *)selfCopy rightHandDrive])
    {
      view4 = [(CPSMapTemplateViewController *)selfCopy view];
      v105 = 1;
      safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
      v103 = 1;
      rightAnchor = [safeAreaLayoutGuide2 rightAnchor];
      v101 = 1;
      v18 = MEMORY[0x277D82BE0](rightAnchor);
    }

    else
    {
      view5 = [(CPSMapTemplateViewController *)selfCopy view];
      v99 = 1;
      safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
      v97 = 1;
      leftAnchor = [safeAreaLayoutGuide3 leftAnchor];
      v95 = 1;
      v18 = MEMORY[0x277D82BE0](leftAnchor);
    }

    v107 = v18;
    if (v95)
    {
      MEMORY[0x277D82BD8](leftAnchor);
    }

    if (v97)
    {
      MEMORY[0x277D82BD8](safeAreaLayoutGuide3);
    }

    if (v99)
    {
      MEMORY[0x277D82BD8](view5);
    }

    if (v101)
    {
      MEMORY[0x277D82BD8](rightAnchor);
    }

    if (v103)
    {
      MEMORY[0x277D82BD8](safeAreaLayoutGuide2);
    }

    if (v105)
    {
      MEMORY[0x277D82BD8](view4);
    }

    v92 = 0;
    v90 = 0;
    if ([(CPSMapTemplateViewController *)selfCopy rightHandDrive])
    {
      rightAnchor2 = [v130 rightAnchor];
      v92 = 1;
      v19 = MEMORY[0x277D82BE0](rightAnchor2);
    }

    else
    {
      leftAnchor2 = [v130 leftAnchor];
      v90 = 1;
      v19 = MEMORY[0x277D82BE0](leftAnchor2);
    }

    v94 = v19;
    if (v90)
    {
      MEMORY[0x277D82BD8](leftAnchor2);
    }

    if (v92)
    {
      MEMORY[0x277D82BD8](rightAnchor2);
    }

    if ([(CPSMapTemplateViewController *)selfCopy rightHandDrive])
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
    view6 = [(CPSMapTemplateViewController *)selfCopy view];
    safeAreaLayoutGuide4 = [view6 safeAreaLayoutGuide];
    v89[0] = [safeAreaLayoutGuide4 bottomAnchor];
    MEMORY[0x277D82BD8](safeAreaLayoutGuide4);
    *&v24 = MEMORY[0x277D82BD8](view6).n128_u64[0];
    bottomAnchor = [v130 bottomAnchor];
    view7 = [(CPSMapTemplateViewController *)selfCopy view];
    [view7 bounds];
    v87 = v137;
    v88 = [bottomAnchor constraintEqualToAnchor:v89[0] constant:-CGRectGetHeight(v137)];
    MEMORY[0x277D82BD8](view7);
    *&v25 = MEMORY[0x277D82BD8](bottomAnchor).n128_u64[0];
    widthAnchor = [v130 widthAnchor];
    v86 = [widthAnchor constraintGreaterThanOrEqualToConstant:172.0];
    MEMORY[0x277D82BD8](widthAnchor);
    [v86 setPriority:?];
    widthAnchor2 = [v130 widthAnchor];
    v85 = [widthAnchor2 constraintLessThanOrEqualToConstant:220.0];
    v26 = MEMORY[0x277D82BD8](widthAnchor2);
    v26.n128_u32[0] = 1148846080;
    [v85 setPriority:v26.n128_f64[0]];
    widthAnchor3 = [v130 widthAnchor];
    view8 = [(CPSMapTemplateViewController *)selfCopy view];
    safeAreaLayoutGuide5 = [view8 safeAreaLayoutGuide];
    widthAnchor4 = [safeAreaLayoutGuide5 widthAnchor];
    v84 = [widthAnchor3 constraintEqualToAnchor:0.45 multiplier:?];
    MEMORY[0x277D82BD8](widthAnchor4);
    MEMORY[0x277D82BD8](safeAreaLayoutGuide5);
    MEMORY[0x277D82BD8](view8);
    v27 = MEMORY[0x277D82BD8](widthAnchor3);
    v27.n128_u32[0] = 1148829696;
    [v84 setPriority:v27.n128_f64[0]];
    v42 = MEMORY[0x277CCAAD0];
    v46 = [v94 constraintEqualToAnchor:v107 constant:v50];
    v135[0] = v46;
    v135[1] = v84;
    v135[2] = v86;
    v135[3] = v85;
    heightAnchor = [v130 heightAnchor];
    v44 = [heightAnchor constraintEqualToConstant:v109];
    v135[4] = v44;
    v135[5] = v88;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v135 count:6];
    [v42 activateConstraints:?];
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](heightAnchor);
    *&v28 = MEMORY[0x277D82BD8](v46).n128_u64[0];
    view9 = [(CPSMapTemplateViewController *)selfCopy view];
    [view9 layoutIfNeeded];
    MEMORY[0x277D82BD8](view9);
    v75 = MEMORY[0x277D85DD0];
    v76 = -1073741824;
    v77 = 0;
    v78 = __51__CPSMapTemplateViewController__reloadPreviewsView__block_invoke_3;
    v79 = &unk_278D926F0;
    v80 = MEMORY[0x277D82BE0](v88);
    v81 = MEMORY[0x277D82BE0](selfCopy);
    v82 = MEMORY[0x277D82BE0](v130);
    v83 = MEMORY[0x245D2A460](&v75);
    navigationCardViewController2 = [(CPSMapTemplateViewController *)selfCopy navigationCardViewController];
    navigationCardHidden = [(CPSNavigationCardViewController *)navigationCardViewController2 navigationCardHidden];
    *&v29 = MEMORY[0x277D82BD8](navigationCardViewController2).n128_u64[0];
    if (navigationCardHidden)
    {
      [(CPSMapTemplateViewController *)selfCopy _setETAViewHidden:1 forRequester:@"PreviewCardRequester" animated:1, v29];
      (*(v83 + 2))();
    }

    else
    {
      navigationCardViewController3 = [(CPSMapTemplateViewController *)selfCopy navigationCardViewController];
      v74 = MEMORY[0x277D82BE0](v83);
      [CPSNavigationCardViewController setNavigationCardHidden:navigationCardViewController3 forRequester:"setNavigationCardHidden:forRequester:animated:completion:" animated:1 completion:?];
      *&v30 = MEMORY[0x277D82BD8](navigationCardViewController3).n128_u64[0];
      [(CPSMapTemplateViewController *)selfCopy _setETAViewHidden:1 forRequester:@"PreviewCardRequester" animated:1, v30];
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

  [(CPSMapTemplateViewController *)selfCopy _updateSafeArea];
  objc_storeStrong(&tripPreviews, 0);
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
  selfCopy = self;
  v13[1] = a2;
  traitCollection = [(CPSMapTemplateViewController *)self traitCollection];
  touchLevel = [traitCollection touchLevel];
  *&v2 = MEMORY[0x277D82BD8](traitCollection).n128_u64[0];
  if (touchLevel)
  {
    panGestureRecognizer = [(CPSMapTemplateViewController *)selfCopy panGestureRecognizer];
    *&v4 = MEMORY[0x277D82BD8](panGestureRecognizer).n128_u64[0];
    if (panGestureRecognizer)
    {
      view = [(CPSMapTemplateViewController *)selfCopy view];
      panGestureRecognizer2 = [(CPSMapTemplateViewController *)selfCopy panGestureRecognizer];
      [view removeGestureRecognizer:?];
      MEMORY[0x277D82BD8](panGestureRecognizer2);
      [(CPSMapTemplateViewController *)selfCopy setPanGestureRecognizer:0, MEMORY[0x277D82BD8](view).n128_f64[0]];
    }
  }

  else
  {
    panGestureRecognizer3 = [(CPSMapTemplateViewController *)selfCopy panGestureRecognizer];
    MEMORY[0x277D82BD8](panGestureRecognizer3);
    if (!panGestureRecognizer3)
    {
      v13[0] = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:selfCopy action:sel__handlePanGesture_];
      [v13[0] setDelegate:selfCopy];
      [v13[0] setAllowedTouchTypes:&unk_2855C5078];
      [v13[0] setDelaysTouchesEnded:0];
      view2 = [(CPSMapTemplateViewController *)selfCopy view];
      [view2 addGestureRecognizer:v13[0]];
      *&v3 = MEMORY[0x277D82BD8](view2).n128_u64[0];
      [(CPSMapTemplateViewController *)selfCopy setPanGestureRecognizer:v13[0], v3];
      hideTapGestureRecognizer = [(CPSMapTemplateViewController *)selfCopy hideTapGestureRecognizer];
      [(UITapGestureRecognizer *)hideTapGestureRecognizer requireGestureRecognizerToFail:v13[0]];
      MEMORY[0x277D82BD8](hideTapGestureRecognizer);
      objc_storeStrong(v13, 0);
    }
  }
}

- (void)showNavigationAlert:(id)alert animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  animatedCopy = animated;
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __61__CPSMapTemplateViewController_showNavigationAlert_animated___block_invoke;
  v12 = &unk_278D92318;
  v13 = MEMORY[0x277D82BE0](location[0]);
  v14 = MEMORY[0x277D82BE0](selfCopy);
  v15 = animatedCopy;
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

- (void)dismissNavigationAlertAnimated:(BOOL)animated completion:(id)completion
{
  selfCopy = self;
  v17 = a2;
  animatedCopy = animated;
  location = 0;
  objc_storeStrong(&location, completion);
  v5 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v5;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __74__CPSMapTemplateViewController_dismissNavigationAlertAnimated_completion___block_invoke;
  v11 = &unk_278D941B8;
  v12 = MEMORY[0x277D82BE0](selfCopy);
  v14 = animatedCopy;
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
  view = [(CPSMapTemplateViewController *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  v6 = v2 * 0.45;
  MEMORY[0x277D82BD8](safeAreaLayoutGuide);
  MEMORY[0x277D82BD8](view);
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

- (void)_performAlertSizingForAlert:(id)alert animated:(BOOL)animated
{
  v61[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  animatedCopy = animated;
  [(CPSMapTemplateViewController *)selfCopy _widthForNavigationAlert];
  v57 = v4;
  v27 = location[0];
  view = [(CPSMapTemplateViewController *)selfCopy view];
  [view bounds];
  v52 = v62;
  CGRectGetHeight(v62);
  CGSizeMake_14();
  v53 = v5;
  v54 = v6;
  [v27 sizeThatFits:{v5, v6}];
  v55 = v7;
  v56 = v8;
  navigationAlertBottomConstraint = [(CPSMapTemplateViewController *)selfCopy navigationAlertBottomConstraint];
  [(NSLayoutConstraint *)navigationAlertBottomConstraint setActive:0];
  bottomAnchor = [location[0] bottomAnchor];
  view2 = [(CPSMapTemplateViewController *)selfCopy view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  if (animated)
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

  v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v25];
  [(CPSMapTemplateViewController *)selfCopy setNavigationAlertBottomConstraint:?];
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide);
  MEMORY[0x277D82BD8](view2);
  v49 = 0;
  v47 = 0;
  if ([(CPSMapTemplateViewController *)selfCopy rightHandDrive])
  {
    rightAnchor = [location[0] rightAnchor];
    v49 = 1;
    v11 = MEMORY[0x277D82BE0](rightAnchor);
  }

  else
  {
    leftAnchor = [location[0] leftAnchor];
    v47 = 1;
    v11 = MEMORY[0x277D82BE0](leftAnchor);
  }

  v51 = v11;
  if (v47)
  {
    MEMORY[0x277D82BD8](leftAnchor);
  }

  if (v49)
  {
    MEMORY[0x277D82BD8](rightAnchor);
  }

  v44 = 0;
  v42 = 0;
  v40 = 0;
  v38 = 0;
  v36 = 0;
  v34 = 0;
  if ([(CPSMapTemplateViewController *)selfCopy rightHandDrive])
  {
    view3 = [(CPSMapTemplateViewController *)selfCopy view];
    v44 = 1;
    safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
    v42 = 1;
    rightAnchor2 = [safeAreaLayoutGuide2 rightAnchor];
    v40 = 1;
    v12 = MEMORY[0x277D82BE0](rightAnchor2);
  }

  else
  {
    view4 = [(CPSMapTemplateViewController *)selfCopy view];
    v38 = 1;
    safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
    v36 = 1;
    leftAnchor2 = [safeAreaLayoutGuide3 leftAnchor];
    v34 = 1;
    v12 = MEMORY[0x277D82BE0](leftAnchor2);
  }

  v46 = v12;
  if (v34)
  {
    MEMORY[0x277D82BD8](leftAnchor2);
  }

  if (v36)
  {
    MEMORY[0x277D82BD8](safeAreaLayoutGuide3);
  }

  if (v38)
  {
    MEMORY[0x277D82BD8](view4);
  }

  if (v40)
  {
    MEMORY[0x277D82BD8](rightAnchor2);
  }

  if (v42)
  {
    MEMORY[0x277D82BD8](safeAreaLayoutGuide2);
  }

  if (v44)
  {
    MEMORY[0x277D82BD8](view3);
  }

  v22 = MEMORY[0x277CCAAD0];
  navigationAlertBottomConstraint2 = [(CPSMapTemplateViewController *)selfCopy navigationAlertBottomConstraint];
  v61[0] = navigationAlertBottomConstraint2;
  if ([(CPSMapTemplateViewController *)selfCopy rightHandDrive])
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
  widthAnchor = [location[0] widthAnchor];
  v18 = [widthAnchor constraintEqualToConstant:v57];
  v61[2] = v18;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:3];
  [v22 activateConstraints:?];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](widthAnchor);
  MEMORY[0x277D82BD8](v20);
  [location[0] setNeedsLayout];
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(location, 0);
}

- (void)updateNavigationAlert:(id)alert
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __54__CPSMapTemplateViewController_updateNavigationAlert___block_invoke;
  v10 = &unk_278D910D8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)_setNavigationAlertView:(id)view visible:(BOOL)visible animated:(BOOL)animated completion:(id)completion
{
  v108[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  visibleCopy = visible;
  animatedCopy = animated;
  v100 = 0;
  objc_storeStrong(&v100, completion);
  if (visibleCopy)
  {
    view = [(CPSMapTemplateViewController *)selfCopy view];
    [view addSubview:location[0]];
    *&v6 = MEMORY[0x277D82BD8](view).n128_u64[0];
    [(CPSMapTemplateViewController *)selfCopy _performAlertSizingForAlert:location[0] animated:animatedCopy, v6];
    view2 = [(CPSMapTemplateViewController *)selfCopy view];
    [view2 layoutIfNeeded];
    *&v7 = MEMORY[0x277D82BD8](view2).n128_u64[0];
    [(CPSMapTemplateViewController *)selfCopy _performAlertSizingForAlert:location[0] animated:animatedCopy, v7];
    v42 = MEMORY[0x277CCAAD0];
    navigationCardViewLayoutViewBottomConstraint = [(CPSMapTemplateViewController *)selfCopy navigationCardViewLayoutViewBottomConstraint];
    v108[0] = navigationCardViewLayoutViewBottomConstraint;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:?];
    [v42 deactivateConstraints:?];
    MEMORY[0x277D82BD8](v43);
    *&v8 = MEMORY[0x277D82BD8](navigationCardViewLayoutViewBottomConstraint).n128_u64[0];
    navigationCardViewLayoutHelperView = [(CPSMapTemplateViewController *)selfCopy navigationCardViewLayoutHelperView];
    bottomAnchor = [(CPSLayoutHelperView *)navigationCardViewLayoutHelperView bottomAnchor];
    topAnchor = [location[0] topAnchor];
    v9 = _UISolariumEnabled();
    v10 = 4.0;
    if ((v9 & 1) == 0)
    {
      v10 = 8.0;
    }

    v45 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:-v10];
    [(CPSMapTemplateViewController *)selfCopy setNavigationCardViewLayoutViewBottomConstraint:?];
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](topAnchor);
    MEMORY[0x277D82BD8](bottomAnchor);
    *&v11 = MEMORY[0x277D82BD8](navigationCardViewLayoutHelperView).n128_u64[0];
    navigationCardViewLayoutViewBottomConstraint2 = [(CPSMapTemplateViewController *)selfCopy navigationCardViewLayoutViewBottomConstraint];
    LODWORD(v12) = 1148846080;
    [(NSLayoutConstraint *)navigationCardViewLayoutViewBottomConstraint2 setPriority:v12];
    *&v13 = MEMORY[0x277D82BD8](navigationCardViewLayoutViewBottomConstraint2).n128_u64[0];
    v50 = MEMORY[0x277CCAAD0];
    navigationCardViewLayoutViewBottomConstraint3 = [(CPSMapTemplateViewController *)selfCopy navigationCardViewLayoutViewBottomConstraint];
    v107 = navigationCardViewLayoutViewBottomConstraint3;
    v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v107 count:1];
    [v50 activateConstraints:?];
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](navigationCardViewLayoutViewBottomConstraint3);
    v93 = MEMORY[0x277D85DD0];
    v94 = -1073741824;
    v95 = 0;
    v96 = __84__CPSMapTemplateViewController__setNavigationAlertView_visible_animated_completion___block_invoke;
    v97 = &unk_278D913E8;
    v98 = MEMORY[0x277D82BE0](selfCopy);
    v99 = MEMORY[0x245D2A460](&v93);
    v84 = MEMORY[0x277D85DD0];
    v85 = -1073741824;
    v86 = 0;
    v87 = __84__CPSMapTemplateViewController__setNavigationAlertView_visible_animated_completion___block_invoke_2;
    v88 = &unk_278D91D48;
    v89 = MEMORY[0x277D82BE0](selfCopy);
    v91 = MEMORY[0x277D82BE0](v100);
    v90 = MEMORY[0x277D82BE0](location[0]);
    v92 = MEMORY[0x245D2A460](&v84);
    if (animatedCopy)
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
    v76 = MEMORY[0x277D82BE0](selfCopy);
    v77 = MEMORY[0x245D2A460](&v71);
    v62 = MEMORY[0x277D85DD0];
    v63 = -1073741824;
    v64 = 0;
    v65 = __84__CPSMapTemplateViewController__setNavigationAlertView_visible_animated_completion___block_invoke_5;
    v66 = &unk_278D91DC0;
    v67 = MEMORY[0x277D82BE0](location[0]);
    v68 = MEMORY[0x277D82BE0](selfCopy);
    v69 = MEMORY[0x277D82BE0](v100);
    v70 = MEMORY[0x245D2A460](&v62);
    [location[0] setUserInteractionEnabled:0];
    v24 = MEMORY[0x277CCAAD0];
    navigationCardViewLayoutViewBottomConstraint4 = [(CPSMapTemplateViewController *)selfCopy navigationCardViewLayoutViewBottomConstraint];
    v106 = navigationCardViewLayoutViewBottomConstraint4;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v106 count:?];
    [v24 deactivateConstraints:?];
    MEMORY[0x277D82BD8](v25);
    *&v14 = MEMORY[0x277D82BD8](navigationCardViewLayoutViewBottomConstraint4).n128_u64[0];
    navigationCardViewLayoutHelperView2 = [(CPSMapTemplateViewController *)selfCopy navigationCardViewLayoutHelperView];
    bottomAnchor2 = [(CPSLayoutHelperView *)navigationCardViewLayoutHelperView2 bottomAnchor];
    view3 = [(CPSMapTemplateViewController *)selfCopy view];
    safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
    bottomAnchor3 = [safeAreaLayoutGuide bottomAnchor];
    v15 = _UISolariumEnabled();
    v16 = 4.0;
    if ((v15 & 1) == 0)
    {
      v16 = 8.0;
    }

    v27 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-v16];
    [(CPSMapTemplateViewController *)selfCopy setNavigationCardViewLayoutViewBottomConstraint:?];
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](bottomAnchor3);
    MEMORY[0x277D82BD8](safeAreaLayoutGuide);
    MEMORY[0x277D82BD8](view3);
    MEMORY[0x277D82BD8](bottomAnchor2);
    *&v17 = MEMORY[0x277D82BD8](navigationCardViewLayoutHelperView2).n128_u64[0];
    navigationCardViewLayoutViewBottomConstraint5 = [(CPSMapTemplateViewController *)selfCopy navigationCardViewLayoutViewBottomConstraint];
    LODWORD(v18) = 1148846080;
    [(NSLayoutConstraint *)navigationCardViewLayoutViewBottomConstraint5 setPriority:v18];
    *&v19 = MEMORY[0x277D82BD8](navigationCardViewLayoutViewBottomConstraint5).n128_u64[0];
    v34 = MEMORY[0x277CCAAD0];
    navigationCardViewLayoutViewBottomConstraint6 = [(CPSMapTemplateViewController *)selfCopy navigationCardViewLayoutViewBottomConstraint];
    v105 = navigationCardViewLayoutViewBottomConstraint6;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v105 count:1];
    [v34 activateConstraints:?];
    MEMORY[0x277D82BD8](v35);
    v20 = MEMORY[0x277D82BD8](navigationCardViewLayoutViewBottomConstraint6);
    if (animatedCopy)
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

- (void)navigationAlertQueue:(id)queue shouldDisplayAlertView:(id)view animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, queue);
  v24 = 0;
  objc_storeStrong(&v24, view);
  animatedCopy = animated;
  mapTemplateDelegate = [(CPSMapTemplateViewController *)selfCopy mapTemplateDelegate];
  v14 = [(CPMapClientTemplateDelegate *)mapTemplateDelegate conformsToProtocol:&unk_285632EF8];
  *&v5 = MEMORY[0x277D82BD8](mapTemplateDelegate).n128_u64[0];
  if (v14)
  {
    mapTemplateDelegate2 = [(CPSMapTemplateViewController *)selfCopy mapTemplateDelegate];
    navigationAlert = [v24 navigationAlert];
    [(CPMapClientTemplateDelegate *)mapTemplateDelegate2 clientNavigationAlertWillAppear:?];
    MEMORY[0x277D82BD8](navigationAlert);
    MEMORY[0x277D82BD8](mapTemplateDelegate2);
  }

  objc_initWeak(&v22, selfCopy);
  v8 = selfCopy;
  v6 = v24;
  v7 = animatedCopy;
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

- (void)navigationAlertQueue:(id)queue shouldRemoveAlertView:(id)view animated:(BOOL)animated dismissalContext:(unint64_t)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, queue);
  v31 = 0;
  objc_storeStrong(&v31, view);
  animatedCopy = animated;
  contextCopy = context;
  v28 = 0;
  objc_storeStrong(&v28, completion);
  mapTemplateDelegate = [(CPSMapTemplateViewController *)selfCopy mapTemplateDelegate];
  v18 = [(CPMapClientTemplateDelegate *)mapTemplateDelegate conformsToProtocol:&unk_285632EF8];
  *&v7 = MEMORY[0x277D82BD8](mapTemplateDelegate).n128_u64[0];
  if (v18)
  {
    mapTemplateDelegate2 = [(CPSMapTemplateViewController *)selfCopy mapTemplateDelegate];
    navigationAlert = [v31 navigationAlert];
    [CPMapClientTemplateDelegate clientNavigationAlertWillDisappear:mapTemplateDelegate2 context:"clientNavigationAlertWillDisappear:context:"];
    MEMORY[0x277D82BD8](navigationAlert);
    MEMORY[0x277D82BD8](mapTemplateDelegate2);
  }

  objc_initWeak(&v27, selfCopy);
  v10 = selfCopy;
  v8 = v31;
  v9 = animatedCopy;
  v19 = MEMORY[0x277D85DD0];
  v20 = -1073741824;
  v21 = 0;
  v22 = __112__CPSMapTemplateViewController_navigationAlertQueue_shouldRemoveAlertView_animated_dismissalContext_completion___block_invoke;
  v23 = &unk_278D941E0;
  objc_copyWeak(v26, &v27);
  v24 = MEMORY[0x277D82BE0](v31);
  v26[1] = contextCopy;
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
  navigationController = [(CPSMapTemplateViewController *)self navigationController];
  visibleViewController = [navigationController visibleViewController];
  v5 = visibleViewController == self;
  MEMORY[0x277D82BD8](visibleViewController);
  MEMORY[0x277D82BD8](navigationController);
  return v5;
}

- (id)_tripDidBegin:(id)begin withEstimates:(id)estimates forIdentifier:(id)identifier
{
  v104[6] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, begin);
  v101 = 0;
  objc_storeStrong(&v101, estimates);
  v100 = 0;
  objc_storeStrong(&v100, identifier);
  v97 = 0;
  v95 = 0;
  v93 = 0;
  v91 = 0;
  v89 = 0;
  v87 = 0;
  if ([(CPSMapTemplateViewController *)selfCopy rightHandDrive])
  {
    view = [(CPSMapTemplateViewController *)selfCopy view];
    v97 = 1;
    safeAreaLayoutGuide = [view safeAreaLayoutGuide];
    v95 = 1;
    rightAnchor = [safeAreaLayoutGuide rightAnchor];
    v93 = 1;
    v5 = MEMORY[0x277D82BE0](rightAnchor);
  }

  else
  {
    view2 = [(CPSMapTemplateViewController *)selfCopy view];
    v91 = 1;
    safeAreaLayoutGuide2 = [view2 safeAreaLayoutGuide];
    v89 = 1;
    leftAnchor = [safeAreaLayoutGuide2 leftAnchor];
    v87 = 1;
    v5 = MEMORY[0x277D82BE0](leftAnchor);
  }

  v99 = v5;
  if (v87)
  {
    MEMORY[0x277D82BD8](leftAnchor);
  }

  if (v89)
  {
    MEMORY[0x277D82BD8](safeAreaLayoutGuide2);
  }

  if (v91)
  {
    MEMORY[0x277D82BD8](view2);
  }

  if (v93)
  {
    MEMORY[0x277D82BD8](rightAnchor);
  }

  if (v95)
  {
    MEMORY[0x277D82BD8](safeAreaLayoutGuide);
  }

  if (v97)
  {
    MEMORY[0x277D82BD8](view);
  }

  if ([(CPSMapTemplateViewController *)selfCopy rightHandDrive])
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
  navigationCardViewController = [(CPSMapTemplateViewController *)selfCopy navigationCardViewController];
  [(CPSNavigationCardViewController *)navigationCardViewController setNavigatingBundleIdentifier:v100];
  MEMORY[0x277D82BD8](navigationCardViewController);
  v53 = [CPSNavigator alloc];
  v52 = v100;
  templateEnvironment = [(CPSBaseTemplateViewController *)selfCopy templateEnvironment];
  sessionStatus = [(CPSTemplateEnvironment *)templateEnvironment sessionStatus];
  currentSession = [(CARSessionStatus *)sessionStatus currentSession];
  v85 = [CPSNavigator initWithIdentifier:v53 currentSession:"initWithIdentifier:currentSession:forTrip:" forTrip:v52];
  MEMORY[0x277D82BD8](currentSession);
  MEMORY[0x277D82BD8](sessionStatus);
  *&v10 = MEMORY[0x277D82BD8](templateEnvironment).n128_u64[0];
  navigatorObserver = [(CPSMapTemplateViewController *)selfCopy navigatorObserver];
  [(CPSNavigatorObserving *)navigatorObserver didCreateNavigator:v85];
  *&v11 = MEMORY[0x277D82BD8](navigatorObserver).n128_u64[0];
  [(CPSNavigator *)v85 setNavigationOwnershipDelegate:selfCopy, v11];
  [(CPSNavigator *)v85 addDisplayDelegate:selfCopy];
  v58 = selfCopy;
  navigationCardViewLayoutHelperView = [(CPSMapTemplateViewController *)selfCopy navigationCardViewLayoutHelperView];
  [(CPSMapTemplateViewController *)v58 didChangeLayout:?];
  *&v12 = MEMORY[0x277D82BD8](navigationCardViewLayoutHelperView).n128_u64[0];
  navigationETAView = [(CPSMapTemplateViewController *)selfCopy navigationETAView];
  [(CPSNavigationETAView *)navigationETAView removeFromSuperview];
  *&v13 = MEMORY[0x277D82BD8](navigationETAView).n128_u64[0];
  if (![(CPSMapTemplateViewController *)selfCopy hasSetTripEstimateStyle])
  {
    traitCollection = [(CPSMapTemplateViewController *)selfCopy traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];
    *&v14 = MEMORY[0x277D82BD8](traitCollection).n128_u64[0];
    v84 = userInterfaceStyle != 1;
    [(CPSMapTemplateViewController *)selfCopy setTripEstimateStyle:v84, v14];
  }

  v41 = [CPSNavigationETAView alloc];
  v83 = [(CPSNavigationETAView *)v41 initWithTrip:location[0] style:[(CPSMapTemplateViewController *)selfCopy tripEstimateStyle]];
  [(CPSNavigationETAView *)v83 updateEstimates:v101 forManeuver:0];
  [(CPSMapTemplateViewController *)selfCopy setNavigationETAView:v83];
  view3 = [(CPSMapTemplateViewController *)selfCopy view];
  navigationETAView2 = [(CPSMapTemplateViewController *)selfCopy navigationETAView];
  [view3 addSubview:?];
  MEMORY[0x277D82BD8](navigationETAView2);
  bottomAnchor = [(CPSNavigationETAView *)v83 bottomAnchor];
  view4 = [(CPSMapTemplateViewController *)selfCopy view];
  safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide3 bottomAnchor];
  v44 = [bottomAnchor constraintEqualToAnchor:44.0 constant:?];
  [(CPSMapTemplateViewController *)selfCopy setNavigationETAViewBottomConstraint:?];
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide3);
  MEMORY[0x277D82BD8](view4);
  *&v15 = MEMORY[0x277D82BD8](bottomAnchor).n128_u64[0];
  v80 = 0;
  v78 = 0;
  v76 = 0;
  v74 = 0;
  if ([(CPSMapTemplateViewController *)selfCopy rightHandDrive])
  {
    navigationETAView3 = [(CPSMapTemplateViewController *)selfCopy navigationETAView];
    v80 = 1;
    rightAnchor2 = [(CPSNavigationETAView *)navigationETAView3 rightAnchor];
    v78 = 1;
    v16 = MEMORY[0x277D82BE0](rightAnchor2);
  }

  else
  {
    navigationETAView4 = [(CPSMapTemplateViewController *)selfCopy navigationETAView];
    v76 = 1;
    leftAnchor2 = [(CPSNavigationETAView *)navigationETAView4 leftAnchor];
    v74 = 1;
    v16 = MEMORY[0x277D82BE0](leftAnchor2);
  }

  v82 = v16;
  if (v74)
  {
    MEMORY[0x277D82BD8](leftAnchor2);
  }

  if (v76)
  {
    MEMORY[0x277D82BD8](navigationETAView4);
  }

  if (v78)
  {
    MEMORY[0x277D82BD8](rightAnchor2);
  }

  if (v80)
  {
    MEMORY[0x277D82BD8](navigationETAView3);
  }

  heightAnchor = [(CPSNavigationETAView *)v83 heightAnchor];
  v73 = [heightAnchor constraintEqualToConstant:44.0];
  MEMORY[0x277D82BD8](heightAnchor);
  [v73 setPriority:?];
  widthAnchor = [(CPSNavigationETAView *)v83 widthAnchor];
  v72 = [widthAnchor constraintLessThanOrEqualToConstant:220.0];
  v17 = MEMORY[0x277D82BD8](widthAnchor);
  v17.n128_u32[0] = 1148846080;
  [v72 setPriority:v17.n128_f64[0]];
  widthAnchor2 = [(CPSNavigationETAView *)v83 widthAnchor];
  v71 = [widthAnchor2 constraintGreaterThanOrEqualToConstant:172.0];
  v18 = MEMORY[0x277D82BD8](widthAnchor2);
  v18.n128_u32[0] = 1148846080;
  [v71 setPriority:v18.n128_f64[0]];
  widthAnchor3 = [(CPSNavigationETAView *)v83 widthAnchor];
  view5 = [(CPSMapTemplateViewController *)selfCopy view];
  safeAreaLayoutGuide4 = [view5 safeAreaLayoutGuide];
  widthAnchor4 = [safeAreaLayoutGuide4 widthAnchor];
  v70 = [widthAnchor3 constraintEqualToAnchor:0.45 multiplier:?];
  MEMORY[0x277D82BD8](widthAnchor4);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide4);
  MEMORY[0x277D82BD8](view5);
  v19 = MEMORY[0x277D82BD8](widthAnchor3);
  v19.n128_u32[0] = 1148829696;
  [v70 setPriority:v19.n128_f64[0]];
  v31 = MEMORY[0x277CCAAD0];
  v34 = [v82 constraintEqualToAnchor:v99 constant:v86];
  v104[0] = v34;
  navigationETAViewBottomConstraint = [(CPSMapTemplateViewController *)selfCopy navigationETAViewBottomConstraint];
  v104[1] = navigationETAViewBottomConstraint;
  v104[2] = v73;
  v104[3] = v70;
  v104[4] = v72;
  v104[5] = v71;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:6];
  [v31 activateConstraints:?];
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](navigationETAViewBottomConstraint);
  *&v20 = MEMORY[0x277D82BD8](v34).n128_u64[0];
  [(CPSMapTemplateViewController *)selfCopy setNavigator:v85, v20];
  [(CPSNavigationETAView *)v83 layoutIfNeeded];
  view6 = [(CPSMapTemplateViewController *)selfCopy view];
  [view6 layoutIfNeeded];
  *&v21 = MEMORY[0x277D82BD8](view6).n128_u64[0];
  [(CPSMapTemplateViewController *)selfCopy _setETAViewHidden:1 forRequester:@"InitialTripRequester" animated:0, v21];
  [CPSMapTemplateViewController _setETAViewHidden:selfCopy forRequester:"_setETAViewHidden:forRequester:animated:" animated:0];
  navigationCardViewController2 = [(CPSMapTemplateViewController *)selfCopy navigationCardViewController];
  [(CPSNavigationCardViewController *)navigationCardViewController2 setNavigationCardHidden:0 forRequester:@"TripEndedRequester" animated:1 completion:?];
  MEMORY[0x277D82BD8](navigationCardViewController2);
  when = dispatch_time(0, 1000000000);
  v37 = MEMORY[0x277D85CD0];
  v22 = MEMORY[0x277D85CD0];
  queue = v37;
  v64 = MEMORY[0x277D85DD0];
  v65 = -1073741824;
  v66 = 0;
  v67 = __74__CPSMapTemplateViewController__tripDidBegin_withEstimates_forIdentifier___block_invoke;
  v68 = &unk_278D913E8;
  v69 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)navigator:(id)navigator didEndTrip:(BOOL)trip
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, navigator);
  tripCopy = trip;
  navigationCardViewController = [(CPSMapTemplateViewController *)selfCopy navigationCardViewController];
  [(CPSNavigationCardViewController *)navigationCardViewController navigator:location[0] didEndTrip:trip];
  *&v4 = MEMORY[0x277D82BD8](navigationCardViewController).n128_u64[0];
  v47 = 0;
  previewsView = [(CPSMapTemplateViewController *)selfCopy previewsView];
  *&v5 = MEMORY[0x277D82BD8](previewsView).n128_u64[0];
  if (previewsView)
  {
    previewsView2 = [(CPSMapTemplateViewController *)selfCopy previewsView];
    v6 = [(CPSTripPreviewsCardView *)previewsView2 snapshotViewAfterScreenUpdates:0];
    v7 = v47;
    v47 = v6;
    MEMORY[0x277D82BD8](v7);
    *&v8 = MEMORY[0x277D82BD8](previewsView2).n128_u64[0];
    view = [(CPSMapTemplateViewController *)selfCopy view];
    [view addSubview:v47];
    MEMORY[0x277D82BD8](view);
    previewsView3 = [(CPSMapTemplateViewController *)selfCopy previewsView];
    [(CPSTripPreviewsCardView *)previewsView3 frame];
    *&v45 = v9;
    *(&v45 + 1) = v10;
    *&v46 = v11;
    *(&v46 + 1) = v12;
    MEMORY[0x277D82BD8](previewsView3);
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
    v42 = MEMORY[0x277D82BE0](selfCopy);
    v29 = MEMORY[0x277D85DD0];
    v30 = -1073741824;
    v31 = 0;
    v32 = __53__CPSMapTemplateViewController_navigator_didEndTrip___block_invoke_2;
    v33 = &unk_278D92F60;
    v34 = MEMORY[0x277D82BE0](v47);
    v35 = MEMORY[0x277D82BE0](selfCopy);
    [v25 animateWithDuration:65540 delay:&v36 options:&v29 animations:v24 completion:0.0];
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v42, 0);
    objc_storeStrong(&v41, 0);
  }

  else
  {
    [(CPSMapTemplateViewController *)selfCopy _updateSafeArea];
  }

  previewsView4 = [(CPSMapTemplateViewController *)selfCopy previewsView];
  [(CPSTripPreviewsCardView *)previewsView4 setHidden:1];
  *&v13 = MEMORY[0x277D82BD8](previewsView4).n128_u64[0];
  navigatorObserver = [(CPSMapTemplateViewController *)selfCopy navigatorObserver];
  navigator = [(CPSMapTemplateViewController *)selfCopy navigator];
  [(CPSNavigatorObserving *)navigatorObserver willInvalidateNavigator:?];
  MEMORY[0x277D82BD8](navigator);
  *&v14 = MEMORY[0x277D82BD8](navigatorObserver).n128_u64[0];
  navigator2 = [(CPSMapTemplateViewController *)selfCopy navigator];
  [(CPSNavigator *)navigator2 invalidate];
  *&v15 = MEMORY[0x277D82BD8](navigator2).n128_u64[0];
  [(CPSMapTemplateViewController *)selfCopy setNavigator:v15];
  [CPSMapTemplateViewController _setETAViewHidden:selfCopy forRequester:"_setETAViewHidden:forRequester:animated:" animated:1];
  navigationCardViewController2 = [(CPSMapTemplateViewController *)selfCopy navigationCardViewController];
  [(CPSNavigationCardViewController *)navigationCardViewController2 setNavigationCardHidden:1 forRequester:@"TripEndedRequester" animated:1 completion:0];
  MEMORY[0x277D82BD8](navigationCardViewController2);
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

- (void)showManeuvers:(id)maneuvers usingDisplayStyles:(id)styles
{
  v27 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, maneuvers);
  v23 = 0;
  objc_storeStrong(&v23, styles);
  [(CPSMapTemplateViewController *)selfCopy _setETAViewHidden:0 forRequester:@"InitialTripRequester" animated:1];
  v15 = selfCopy;
  navigationCardViewLayoutHelperView = [(CPSMapTemplateViewController *)selfCopy navigationCardViewLayoutHelperView];
  [(CPSMapTemplateViewController *)v15 didChangeLayout:?];
  MEMORY[0x277D82BD8](navigationCardViewLayoutHelperView);
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
      cardBackgroundColor = [v22 cardBackgroundColor];
      v19 = 0;
      v9 = 0;
      if (!cardBackgroundColor)
      {
        guidanceBackgroundColor = [(CPSMapTemplateViewController *)selfCopy guidanceBackgroundColor];
        v19 = 1;
        v9 = guidanceBackgroundColor != 0;
      }

      if (v19)
      {
        MEMORY[0x277D82BD8](guidanceBackgroundColor);
      }

      v4 = MEMORY[0x277D82BD8](cardBackgroundColor).n128_u64[0];
      if (v9)
      {
        guidanceBackgroundColor2 = [(CPSMapTemplateViewController *)selfCopy guidanceBackgroundColor];
        [v22 setCardBackgroundColor:?];
        v4 = MEMORY[0x277D82BD8](guidanceBackgroundColor2).n128_u64[0];
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
  navigationCardViewController = [(CPSMapTemplateViewController *)selfCopy navigationCardViewController];
  [(CPSNavigationCardViewController *)navigationCardViewController showManeuvers:location[0] usingDisplayStyles:v23];
  MEMORY[0x277D82BD8](navigationCardViewController);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

- (void)navigator:(id)navigator pausedTripForReason:(unint64_t)reason description:(id)description usingColor:(id)color
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, navigator);
  reasonCopy = reason;
  v14 = 0;
  objc_storeStrong(&v14, description);
  v13 = 0;
  objc_storeStrong(&v13, color);
  [(CPSMapTemplateViewController *)selfCopy _setETAViewHidden:0 forRequester:@"InitialTripRequester" animated:1];
  v10 = selfCopy;
  navigationCardViewLayoutHelperView = [(CPSMapTemplateViewController *)selfCopy navigationCardViewLayoutHelperView];
  [(CPSMapTemplateViewController *)v10 didChangeLayout:?];
  *&v6 = MEMORY[0x277D82BD8](navigationCardViewLayoutHelperView).n128_u64[0];
  navigationCardViewController = [(CPSMapTemplateViewController *)selfCopy navigationCardViewController];
  [(CPSNavigationCardViewController *)navigationCardViewController navigator:location[0] pausedTripForReason:reasonCopy description:v14 usingColor:v13];
  MEMORY[0x277D82BD8](navigationCardViewController);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)updateEstimates:(id)estimates forManeuver:(id)maneuver
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, estimates);
  v6 = 0;
  objc_storeStrong(&v6, maneuver);
  navigationCardViewController = [(CPSMapTemplateViewController *)selfCopy navigationCardViewController];
  [(CPSNavigationCardViewController *)navigationCardViewController updateEstimates:location[0] forManeuver:v6];
  MEMORY[0x277D82BD8](navigationCardViewController);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)didSelectButton:(id)button
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  identifier = [location[0] identifier];
  oslog = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v11, selfCopy, identifier);
    _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEFAULT, "%@: button selected with UUID: %@", v11, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  templateDelegate = [(CPSBaseTemplateViewController *)selfCopy templateDelegate];
  v6 = [(CPTemplateDelegate *)templateDelegate conformsToProtocol:&unk_28562C040];
  *&v3 = MEMORY[0x277D82BD8](templateDelegate).n128_u64[0];
  if (v6)
  {
    templateDelegate2 = [(CPSBaseTemplateViewController *)selfCopy templateDelegate];
    [(CPTemplateDelegate *)templateDelegate2 handleActionForControlIdentifier:identifier];
    MEMORY[0x277D82BD8](templateDelegate2);
  }

  objc_storeStrong(&identifier, 0);
  objc_storeStrong(location, 0);
}

- (id)_buttonForIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v12 = 0;
  v13 = &v12;
  v14 = 838860800;
  v15 = 48;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  _buttons = [(CPSMapTemplateViewController *)selfCopy _buttons];
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __53__CPSMapTemplateViewController__buttonForIdentifier___block_invoke;
  v10 = &unk_278D94208;
  v11[0] = MEMORY[0x277D82BE0](location[0]);
  v11[1] = &v12;
  [_buttons enumerateObjectsUsingBlock:&v6];
  MEMORY[0x277D82BD8](_buttons);
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

- (void)tripView:(id)view selectedTrip:(id)trip routeChoice:(id)choice
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v11 = 0;
  objc_storeStrong(&v11, trip);
  v10 = 0;
  objc_storeStrong(&v10, choice);
  templateDelegate = [(CPSBaseTemplateViewController *)selfCopy templateDelegate];
  identifier = [v11 identifier];
  identifier2 = [v10 identifier];
  [(CPTemplateDelegate *)templateDelegate previewTripIdentifier:identifier usingRouteIdentifier:?];
  MEMORY[0x277D82BD8](identifier2);
  MEMORY[0x277D82BD8](identifier);
  MEMORY[0x277D82BD8](templateDelegate);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)tripView:(id)view startedTrip:(id)trip routeChoice:(id)choice
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v11 = 0;
  objc_storeStrong(&v11, trip);
  v10 = 0;
  objc_storeStrong(&v10, choice);
  templateDelegate = [(CPSBaseTemplateViewController *)selfCopy templateDelegate];
  identifier = [v11 identifier];
  identifier2 = [v10 identifier];
  [(CPTemplateDelegate *)templateDelegate startTripIdentifier:identifier usingRouteIdentifier:?];
  MEMORY[0x277D82BD8](identifier2);
  MEMORY[0x277D82BD8](identifier);
  MEMORY[0x277D82BD8](templateDelegate);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)sessionDidConnect:(id)connect
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, connect);
  objc_storeStrong(location, 0);
}

- (void)_nightModeChanged:(id)changed
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, changed);
  objc_storeStrong(location, 0);
}

- (void)setControl:(id)control enabled:(BOOL)enabled
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, control);
  enabledCopy = enabled;
  v16.receiver = selfCopy;
  v16.super_class = CPSMapTemplateViewController;
  [(CPSBaseTemplateViewController *)&v16 setControl:location[0] enabled:enabled];
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __51__CPSMapTemplateViewController_setControl_enabled___block_invoke;
  v12 = &unk_278D92318;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = enabledCopy;
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

- (void)setHostGuidanceBackgroundColor:(id)color
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, color);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __63__CPSMapTemplateViewController_setHostGuidanceBackgroundColor___block_invoke;
  v10 = &unk_278D910D8;
  v11 = MEMORY[0x277D82BE0](location[0]);
  v12 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)setHostTripEstimateStyle:(unint64_t)style
{
  selfCopy = self;
  v13 = a2;
  styleCopy = style;
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __57__CPSMapTemplateViewController_setHostTripEstimateStyle___block_invoke;
  v10 = &unk_278D91E38;
  v11[0] = MEMORY[0x277D82BE0](selfCopy);
  v11[1] = styleCopy;
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v11, 0);
}

- (void)setHostAutoHidesNavigationBar:(BOOL)bar
{
  v20 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v17 = a2;
  barCopy = bar;
  location = CarPlaySupportGeneralLogging();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:barCopy];
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
  v12 = MEMORY[0x277D82BE0](selfCopy);
  v13 = barCopy;
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

- (void)setHostHidesButtonsWithNavigationBar:(BOOL)bar
{
  v20 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v17 = a2;
  barCopy = bar;
  location = CarPlaySupportGeneralLogging();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:barCopy];
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
  v12 = MEMORY[0x277D82BE0](selfCopy);
  v13 = barCopy;
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

- (void)setHostTripPreviews:(id)previews textConfiguration:(id)configuration previewOnlyRouteChoices:(BOOL)choices selectedIndex:(unint64_t)index
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, previews);
  v23 = 0;
  objc_storeStrong(&v23, configuration);
  choicesCopy = choices;
  indexCopy = index;
  v10 = MEMORY[0x277D85CD0];
  v6 = MEMORY[0x277D85CD0];
  queue = v10;
  v12 = MEMORY[0x277D85DD0];
  v13 = -1073741824;
  v14 = 0;
  v15 = __108__CPSMapTemplateViewController_setHostTripPreviews_textConfiguration_previewOnlyRouteChoices_selectedIndex___block_invoke;
  v16 = &unk_278D94230;
  v17 = MEMORY[0x277D82BE0](location[0]);
  v18 = MEMORY[0x277D82BE0](selfCopy);
  v19[0] = MEMORY[0x277D82BE0](v23);
  v20 = choicesCopy;
  v19[1] = indexCopy;
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

- (void)hostUpdateTravelEstimates:(id)estimates forTripIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, estimates);
  v16 = 0;
  objc_storeStrong(&v16, identifier);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __76__CPSMapTemplateViewController_hostUpdateTravelEstimates_forTripIdentifier___block_invoke;
  v12 = &unk_278D926F0;
  v13 = MEMORY[0x277D82BE0](v16);
  v14 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)hostStartNavigationSessionForTrip:(id)trip reply:(id)reply
{
  v41 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, trip);
  v37 = 0;
  objc_storeStrong(&v37, reply);
  navigator = [(CPSMapTemplateViewController *)selfCopy navigator];
  *&v4 = MEMORY[0x277D82BD8](navigator).n128_u64[0];
  if (navigator)
  {
    mapTemplateDelegate = [(CPSMapTemplateViewController *)selfCopy mapTemplateDelegate];
    [(CPMapClientTemplateDelegate *)mapTemplateDelegate clientTripAlreadyStartedException];
    MEMORY[0x277D82BD8](mapTemplateDelegate);
    v36 = 1;
  }

  else
  {
    currentConnection = [MEMORY[0x277CCAE80] currentConnection];
    cp_bundleIdentifier = [currentConnection cp_bundleIdentifier];
    v5 = MEMORY[0x277D82BD8](currentConnection).n128_u64[0];
    if (cp_bundleIdentifier)
    {
      v11 = +[CPSAnalytics sharedInstance];
      [(CPSAnalytics *)v11 navigationStartedWithBundleIdentifier:cp_bundleIdentifier];
      v5 = MEMORY[0x277D82BD8](v11).n128_u64[0];
    }

    if ([(NSArray *)selfCopy->_tripPreviews count])
    {
      v34 = CarPlaySupportGeneralLogging();
      v33 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v40, location[0]);
        _os_log_debug_impl(&dword_242FE8000, v34, v33, "Dismissing trip preview cards for trip: %@.", v40, 0xCu);
      }

      objc_storeStrong(&v34, 0);
      [(CPSMapTemplateViewController *)selfCopy setHostTripPreviews:MEMORY[0x277CBEBF8] textConfiguration:0 previewOnlyRouteChoices:0 selectedIndex:0];
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
    v21 = MEMORY[0x277D82BE0](selfCopy);
    v22 = MEMORY[0x277D82BE0](location[0]);
    v23[0] = MEMORY[0x277D82BE0](cp_bundleIdentifier);
    dispatch_sync(queue, &v16);
    v7 = MEMORY[0x277D82BD8](queue);
    (*(v37 + 2))(v7);
    objc_storeStrong(v23, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    _Block_object_dispose(v24, 8);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&cp_bundleIdentifier, 0);
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

- (void)setMapButton:(id)button hidden:(BOOL)hidden
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  hiddenCopy = hidden;
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __52__CPSMapTemplateViewController_setMapButton_hidden___block_invoke;
  v12 = &unk_278D92318;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = hiddenCopy;
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

- (void)hostSetMapButton:(id)button imageSet:(id)set
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  v16 = 0;
  objc_storeStrong(&v16, set);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __58__CPSMapTemplateViewController_hostSetMapButton_imageSet___block_invoke;
  v12 = &unk_278D926F0;
  v13 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)setMapButton:(id)button focusedImage:(id)image
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  v16 = 0;
  objc_storeStrong(&v16, image);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __58__CPSMapTemplateViewController_setMapButton_focusedImage___block_invoke;
  v12 = &unk_278D926F0;
  v13 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)hostSetPanInterfaceVisible:(BOOL)visible animated:(BOOL)animated
{
  selfCopy = self;
  v17 = a2;
  visibleCopy = visible;
  animatedCopy = animated;
  v5 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v5;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __68__CPSMapTemplateViewController_hostSetPanInterfaceVisible_animated___block_invoke;
  v11 = &unk_278D94280;
  v12 = MEMORY[0x277D82BE0](selfCopy);
  v13 = visibleCopy;
  v14 = animatedCopy;
  dispatch_async(queue, &v7);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
}

- (void)hostSetMapButtons:(id)buttons
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, buttons);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __50__CPSMapTemplateViewController_hostSetMapButtons___block_invoke;
  v10 = &unk_278D910D8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)hostPanInterfaceVisible:(id)visible
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, visible);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __56__CPSMapTemplateViewController_hostPanInterfaceVisible___block_invoke;
  v10 = &unk_278D91D20;
  v12 = MEMORY[0x277D82BE0](location[0]);
  v11 = MEMORY[0x277D82BE0](selfCopy);
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
  autoHideDisabledReasons = [(CPSMapTemplateViewController *)self autoHideDisabledReasons];
  autoHidesNavigationBar = 0;
  if (![(NSMutableSet *)autoHideDisabledReasons count])
  {
    autoHidesNavigationBar = [(CPSMapTemplateViewController *)self autoHidesNavigationBar];
  }

  MEMORY[0x277D82BD8](autoHideDisabledReasons);
  return autoHidesNavigationBar;
}

- (void)_setAutoHideDisabled:(BOOL)disabled forRequester:(id)requester
{
  v21 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v17 = a2;
  disabledCopy = disabled;
  location = 0;
  objc_storeStrong(&location, requester);
  if (disabledCopy)
  {
    autoHideDisabledReasons = [(CPSMapTemplateViewController *)selfCopy autoHideDisabledReasons];
    v4 = MEMORY[0x277D82BD8](autoHideDisabledReasons).n128_u64[0];
    if (!autoHideDisabledReasons)
    {
      v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
      [(CPSMapTemplateViewController *)selfCopy setAutoHideDisabledReasons:?];
      v4 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    }

    autoHideDisabledReasons2 = [(CPSMapTemplateViewController *)selfCopy autoHideDisabledReasons];
    [(NSMutableSet *)autoHideDisabledReasons2 addObject:location];
    MEMORY[0x277D82BD8](autoHideDisabledReasons2);
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
    autoHideDisabledReasons3 = [(CPSMapTemplateViewController *)selfCopy autoHideDisabledReasons];
    v8 = [(NSMutableSet *)autoHideDisabledReasons3 containsObject:location];
    *&v5 = MEMORY[0x277D82BD8](autoHideDisabledReasons3).n128_u64[0];
    if (v8)
    {
      autoHideDisabledReasons4 = [(CPSMapTemplateViewController *)selfCopy autoHideDisabledReasons];
      [(NSMutableSet *)autoHideDisabledReasons4 removeObject:location];
      MEMORY[0x277D82BD8](autoHideDisabledReasons4);
      v12 = CarPlaySupportGeneralLogging();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_66(v19, location);
        _os_log_debug_impl(&dword_242FE8000, v12, OS_LOG_TYPE_DEBUG, "Enabling auto hide for requester: %{public}@", v19, 0xCu);
      }

      objc_storeStrong(&v12, 0);
    }
  }

  [(CPSMapTemplateViewController *)selfCopy _resetAutoHideTimerAndShowBarAnimated:1 allowFocusDeferral:1];
  objc_storeStrong(&location, 0);
}

- (void)_resetAutoHideTimerAndShowBarAnimated:(BOOL)animated allowFocusDeferral:(BOOL)deferral
{
  [(CPSMapTemplateViewController *)self _showBarAnimated:animated allowFocusDeferral:deferral];
  autoHideTimer = [(CPSMapTemplateViewController *)self autoHideTimer];
  [(NSTimer *)autoHideTimer invalidate];
  if ([(CPSMapTemplateViewController *)self _isAutoHideEnabled]&& ![(CPSMapTemplateViewController *)self demoAutoHideTimerDisabled])
  {
    v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__hideBar_ selector:0 userInfo:0 repeats:5.0];
    [(CPSMapTemplateViewController *)self setAutoHideTimer:?];
    MEMORY[0x277D82BD8](v4);
  }
}

- (void)_setButtonsHidden:(BOOL)hidden animated:(BOOL)animated
{
  selfCopy = self;
  v23 = a2;
  hiddenCopy = hidden;
  animatedCopy = animated;
  v4 = 0.0;
  if (!hidden)
  {
    v4 = 1.0;
  }

  v20 = v4;
  if (animatedCopy)
  {
    v7 = MEMORY[0x277D75D18];
    v6 = *MEMORY[0x277D76DA0];
    v14 = MEMORY[0x277D85DD0];
    v15 = -1073741824;
    v16 = 0;
    v17 = __59__CPSMapTemplateViewController__setButtonsHidden_animated___block_invoke;
    v18 = &unk_278D91E38;
    v19[0] = MEMORY[0x277D82BE0](selfCopy);
    v19[1] = *&v20;
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __59__CPSMapTemplateViewController__setButtonsHidden_animated___block_invoke_2;
    v12 = &unk_278D91398;
    v13 = MEMORY[0x277D82BE0](selfCopy);
    [v7 animateWithDuration:&v14 animations:&v8 completion:v6];
    objc_storeStrong(&v13, 0);
    objc_storeStrong(v19, 0);
  }

  else
  {
    trailingBottomStackView = [(CPSMapTemplateViewController *)selfCopy trailingBottomStackView];
    [(UIStackView *)trailingBottomStackView setAlpha:v20];
    MEMORY[0x277D82BD8](trailingBottomStackView);
  }

  [(CPSMapTemplateViewController *)selfCopy _updateSafeArea];
}

double __59__CPSMapTemplateViewController__setButtonsHidden_animated___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) trailingBottomStackView];
  [v3 setAlpha:*(a1 + 40)];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

- (void)_setFocusHoldersEnabled:(BOOL)enabled
{
  focusHolderLeftFocusGuide = [(CPSMapTemplateViewController *)self focusHolderLeftFocusGuide];
  [(UIFocusGuide *)focusHolderLeftFocusGuide setEnabled:enabled];
  focusHolderRightFocusGuide = [(CPSMapTemplateViewController *)self focusHolderRightFocusGuide];
  [(UIFocusGuide *)focusHolderRightFocusGuide setEnabled:enabled];
  focusHoldingButton = [(CPSMapTemplateViewController *)self focusHoldingButton];
  [(_CPSFocusHoldingButton *)focusHoldingButton setEnabled:enabled];
  MEMORY[0x277D82BD8](focusHoldingButton);
}

- (void)_showBarAnimated:(BOOL)animated allowFocusDeferral:(BOOL)deferral
{
  selfCopy = self;
  v22 = a2;
  animatedCopy = animated;
  deferralCopy = deferral;
  navigationController = [(CPSMapTemplateViewController *)self navigationController];
  isNavigationBarHidden = [navigationController isNavigationBarHidden];
  *&v4 = MEMORY[0x277D82BD8](navigationController).n128_u64[0];
  if (isNavigationBarHidden)
  {
    [(CPSMapTemplateViewController *)selfCopy _setFocusHoldersEnabled:0, v4];
    v8 = MEMORY[0x277CD9FF0];
    v14 = MEMORY[0x277D85DD0];
    v15 = -1073741824;
    v16 = 0;
    v17 = __68__CPSMapTemplateViewController__showBarAnimated_allowFocusDeferral___block_invoke;
    v18 = &unk_278D913E8;
    v19 = MEMORY[0x277D82BE0](selfCopy);
    [v8 setCompletionBlock:&v14];
    [MEMORY[0x277CD9FF0] begin];
    navigationController2 = [(CPSMapTemplateViewController *)selfCopy navigationController];
    [navigationController2 setNavigationBarHidden:0 animated:animatedCopy];
    [MEMORY[0x277CD9FF0] commit];
    [(CPSMapTemplateViewController *)selfCopy _setButtonsHidden:0 animated:animatedCopy];
    if ([(CPSMapTemplateViewController *)selfCopy shouldRestoreFocusToNavigationBar])
    {
      [(CPSMapTemplateViewController *)selfCopy setShouldRestoreFocusToNavigationBar:0];
      navigationController3 = [(CPSMapTemplateViewController *)selfCopy navigationController];
      navigationBar = [navigationController3 navigationBar];
      [(CPSMapTemplateViewController *)selfCopy setLastFocusedItem:?];
      MEMORY[0x277D82BD8](navigationBar);
      MEMORY[0x277D82BD8](navigationController3);
      v5 = objc_alloc(MEMORY[0x277D75F98]);
      v13 = [v5 initWithEnvironment:selfCopy];
      [v13 setAllowsDeferral:deferralCopy];
      v12 = [MEMORY[0x277D75518] focusSystemForEnvironment:selfCopy];
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

- (void)_hideBar:(id)bar
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, bar);
  if ([(CPSMapTemplateViewController *)selfCopy _isAutoHideEnabled])
  {
    autoHideTimer = [(CPSMapTemplateViewController *)selfCopy autoHideTimer];
    [(NSTimer *)autoHideTimer invalidate];
    *&v3 = MEMORY[0x277D82BD8](autoHideTimer).n128_u64[0];
    [(CPSMapTemplateViewController *)selfCopy _setFocusHoldersEnabled:1, v3];
    v21 = [MEMORY[0x277D75518] focusSystemForEnvironment:selfCopy];
    v7 = objc_opt_class();
    focusedItem = [v21 focusedItem];
    v20 = CPSSafeCast_22(v7, focusedItem);
    *&v4 = MEMORY[0x277D82BD8](focusedItem).n128_u64[0];
    navigationController = [(CPSMapTemplateViewController *)selfCopy navigationController];
    navigationBar = [navigationController navigationBar];
    v5 = [v20 isDescendantOfView:?];
    [(CPSMapTemplateViewController *)selfCopy setShouldRestoreFocusToNavigationBar:v5];
    MEMORY[0x277D82BD8](navigationBar);
    MEMORY[0x277D82BD8](navigationController);
    v11 = MEMORY[0x277CD9FF0];
    v13 = MEMORY[0x277D85DD0];
    v14 = -1073741824;
    v15 = 0;
    v16 = __41__CPSMapTemplateViewController__hideBar___block_invoke;
    v17 = &unk_278D910D8;
    v18 = MEMORY[0x277D82BE0](selfCopy);
    v19 = MEMORY[0x277D82BE0](v21);
    [v11 setCompletionBlock:&v13];
    [MEMORY[0x277CD9FF0] begin];
    navigationController2 = [(CPSMapTemplateViewController *)selfCopy navigationController];
    [navigationController2 setNavigationBarHidden:1 animated:1];
    [MEMORY[0x277CD9FF0] commit];
    if ([(CPSMapTemplateViewController *)selfCopy hidesButtonsWithNavigationBar])
    {
      [(CPSMapTemplateViewController *)selfCopy _setButtonsHidden:1 animated:1];
    }

    [(CPSMapTemplateViewController *)selfCopy _updateSafeArea];
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

- (void)_handleTapGesture:(id)gesture
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, gesture);
  if ([(CPSMapTemplateViewController *)selfCopy autoHidesNavigationBar])
  {
    navigationController = [(CPSMapTemplateViewController *)selfCopy navigationController];
    isNavigationBarHidden = [navigationController isNavigationBarHidden];
    *&v3 = MEMORY[0x277D82BD8](navigationController).n128_u64[0];
    if (isNavigationBarHidden)
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
      [(CPSMapTemplateViewController *)selfCopy _resetAutoHideTimerAndShowBarAnimated:1 allowFocusDeferral:1];
    }

    else
    {
      [(CPSMapTemplateViewController *)selfCopy _hideBar:0, v3];
    }
  }

  objc_storeStrong(location, 0);
}

- (void)_handlePanGesture:(id)gesture
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, gesture);
  v19 = location[0];
  view = [(CPSMapTemplateViewController *)selfCopy view];
  [v19 locationInView:?];
  v24 = v3;
  v25 = v4;
  *&v5 = MEMORY[0x277D82BD8](view).n128_u64[0];
  state = [location[0] state];
  switch(state)
  {
    case 1:
      [(CPSMapTemplateViewController *)selfCopy setLastPanGesturePoint:v24, v25];
      mapTemplateDelegate = [(CPSMapTemplateViewController *)selfCopy mapTemplateDelegate];
      [(CPMapClientTemplateDelegate *)mapTemplateDelegate clientPanGestureBegan];
      MEMORY[0x277D82BD8](mapTemplateDelegate);
      break;
    case 2:
      [(CPSMapTemplateViewController *)selfCopy lastPanGesturePoint];
      [(CPSMapTemplateViewController *)selfCopy lastPanGesturePoint];
      CGPointMake_0();
      v22 = v6;
      v23 = v7;
      mapTemplateDelegate2 = [(CPSMapTemplateViewController *)selfCopy mapTemplateDelegate];
      v15 = location[0];
      view2 = [(CPSMapTemplateViewController *)selfCopy view];
      [v15 velocityInView:?];
      [(CPMapClientTemplateDelegate *)mapTemplateDelegate2 clientPanGestureWithDeltaPoint:v22 velocity:v23, v8, v9];
      MEMORY[0x277D82BD8](view2);
      MEMORY[0x277D82BD8](mapTemplateDelegate2);
      [(CPSMapTemplateViewController *)selfCopy setLastPanGesturePoint:v24, v25];
      break;
    case 3:
      mapTemplateDelegate3 = [(CPSMapTemplateViewController *)selfCopy mapTemplateDelegate];
      v12 = location[0];
      view3 = [(CPSMapTemplateViewController *)selfCopy view];
      [v12 velocityInView:?];
      [(CPMapClientTemplateDelegate *)mapTemplateDelegate3 clientPanGestureEndedWithVelocity:v10, v11];
      MEMORY[0x277D82BD8](view3);
      MEMORY[0x277D82BD8](mapTemplateDelegate3);
      break;
  }

  objc_storeStrong(location, 0);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, recognizer);
  v19 = 0;
  objc_storeStrong(&v19, gestureRecognizer);
  v11 = location[0];
  pinchGestureRecognizer = [(CPSMapTemplateViewController *)selfCopy pinchGestureRecognizer];
  v17 = 0;
  v15 = 0;
  v13 = 0;
  if (v11 != pinchGestureRecognizer || (v8 = v19, v18 = [(CPSMapTemplateViewController *)selfCopy rotationGestureRecognizer], v17 = 1, v9 = 1, v8 != v18))
  {
    v6 = location[0];
    rotationGestureRecognizer = [(CPSMapTemplateViewController *)selfCopy rotationGestureRecognizer];
    v15 = 1;
    v7 = 0;
    if (v6 == rotationGestureRecognizer)
    {
      v5 = v19;
      pinchGestureRecognizer2 = [(CPSMapTemplateViewController *)selfCopy pinchGestureRecognizer];
      v13 = 1;
      v7 = v5 == pinchGestureRecognizer2;
    }

    v9 = v7;
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](pinchGestureRecognizer2);
  }

  if (v15)
  {
    MEMORY[0x277D82BD8](rotationGestureRecognizer);
  }

  if (v17)
  {
    MEMORY[0x277D82BD8](v18);
  }

  MEMORY[0x277D82BD8](pinchGestureRecognizer);
  v22 = (v9 & 1) != 0;
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  return v22;
}

- (void)_handlePinchGesture:(id)gesture
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, gesture);
  state = [location[0] state];
  switch(state)
  {
    case 1:
      mapTemplateDelegate = [(CPSMapTemplateViewController *)selfCopy mapTemplateDelegate];
      [(CPMapClientTemplateDelegate *)mapTemplateDelegate clientZoomGestureBegan];
      MEMORY[0x277D82BD8](mapTemplateDelegate);
      break;
    case 2:
      [(CPSMapTemplateViewController *)selfCopy gestureDelay];
      if (v3 <= 0.0 || ([MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate], v15 = v4, -[CPSMapTemplateViewController gestureDelay](selfCopy, "gestureDelay"), v15 - v5 >= 0.03))
      {
        mapTemplateDelegate2 = [(CPSMapTemplateViewController *)selfCopy mapTemplateDelegate];
        v11 = location[0];
        view = [(CPSMapTemplateViewController *)selfCopy view];
        [v11 locationInView:?];
        v18 = v6;
        v19 = v7;
        [location[0] scale];
        v12 = v8;
        [location[0] velocity];
        [(CPMapClientTemplateDelegate *)mapTemplateDelegate2 clientZoomGestureWithCenterPoint:v18 scale:v19 velocity:v12, v9];
        MEMORY[0x277D82BD8](view);
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        [(CPSMapTemplateViewController *)selfCopy setGestureDelay:?];
      }

      break;
    case 3:
      mapTemplateDelegate3 = [(CPSMapTemplateViewController *)selfCopy mapTemplateDelegate];
      [location[0] velocity];
      [(CPMapClientTemplateDelegate *)mapTemplateDelegate3 clientZoomGestureEndedWithVelocity:?];
      MEMORY[0x277D82BD8](mapTemplateDelegate3);
      break;
  }

  objc_storeStrong(location, 0);
}

- (CGPoint)safeAreaCenterPoint
{
  view = [(CPSMapTemplateViewController *)self view];
  [view safeAreaInsets];
  v50 = v2;
  v51 = v3;
  v53 = v4;
  v54 = v5;
  MEMORY[0x277D82BD8](view);
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

  view2 = [(CPSMapTemplateViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  v44 = v31;
  v45 = v32;
  MEMORY[0x277D82BD8](safeAreaLayoutGuide);
  view3 = [(CPSMapTemplateViewController *)self view];
  safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
  [safeAreaLayoutGuide2 layoutFrame];
  v42 = v33;
  v43 = v34;
  MEMORY[0x277D82BD8](safeAreaLayoutGuide2);
  MEMORY[0x277D82BD8](view3);
  v36 = v43 + v52 + (v44 - v52 - v55) / 2.0;
  v35 = v42 + v50 + (v45 - v50 - v53) / 2.0;
  result.y = v36;
  result.x = v35;
  return result;
}

- (void)_handleTwoFingerTapGesture:(id)gesture
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, gesture);
  mapTemplateDelegate = [(CPSMapTemplateViewController *)selfCopy mapTemplateDelegate];
  [(CPSMapTemplateViewController *)selfCopy safeAreaCenterPoint];
  [(CPMapClientTemplateDelegate *)mapTemplateDelegate clientZoomGestureWithCenterPoint:v3 scale:v4 velocity:1.0, -1.0];
  MEMORY[0x277D82BD8](mapTemplateDelegate);
  objc_storeStrong(location, 0);
}

- (void)_handleOneFingerDoubleTapGesture:(id)gesture
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, gesture);
  mapTemplateDelegate = [(CPSMapTemplateViewController *)selfCopy mapTemplateDelegate];
  [(CPSMapTemplateViewController *)selfCopy safeAreaCenterPoint];
  [(CPMapClientTemplateDelegate *)mapTemplateDelegate clientZoomGestureWithCenterPoint:v3 scale:v4 velocity:1.0];
  MEMORY[0x277D82BD8](mapTemplateDelegate);
  objc_storeStrong(location, 0);
}

- (void)_handleRotationGesture:(id)gesture
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, gesture);
  state = [location[0] state];
  switch(state)
  {
    case 1:
      mapTemplateDelegate = [(CPSMapTemplateViewController *)selfCopy mapTemplateDelegate];
      [(CPMapClientTemplateDelegate *)mapTemplateDelegate clientRotationGestureBegan];
      MEMORY[0x277D82BD8](mapTemplateDelegate);
      break;
    case 2:
      mapTemplateDelegate2 = [(CPSMapTemplateViewController *)selfCopy mapTemplateDelegate];
      v8 = location[0];
      view = [(CPSMapTemplateViewController *)selfCopy view];
      [v8 locationInView:?];
      v14 = v3;
      v15 = v4;
      [location[0] rotation];
      v9 = v5;
      [location[0] velocity];
      [(CPMapClientTemplateDelegate *)mapTemplateDelegate2 clientRotationGestureWithCenterPoint:v14 rotation:v15 velocity:v9, v6];
      MEMORY[0x277D82BD8](view);
      MEMORY[0x277D82BD8](mapTemplateDelegate2);
      break;
    case 3:
      mapTemplateDelegate3 = [(CPSMapTemplateViewController *)selfCopy mapTemplateDelegate];
      [location[0] velocity];
      [(CPMapClientTemplateDelegate *)mapTemplateDelegate3 clientRotationGestureEndedWithVelocity:?];
      MEMORY[0x277D82BD8](mapTemplateDelegate3);
      break;
  }

  objc_storeStrong(location, 0);
}

- (void)_handleSwipeGesture:(id)gesture
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, gesture);
  state = [location[0] state];
  switch(state)
  {
    case 1:
      mapTemplateDelegate = [(CPSMapTemplateViewController *)selfCopy mapTemplateDelegate];
      [(CPMapClientTemplateDelegate *)mapTemplateDelegate clientPitchGestureBegan];
      MEMORY[0x277D82BD8](mapTemplateDelegate);
      break;
    case 2:
      mapTemplateDelegate2 = [(CPSMapTemplateViewController *)selfCopy mapTemplateDelegate];
      v10 = location[0];
      view = [(CPSMapTemplateViewController *)selfCopy view];
      [v10 locationInView:?];
      [(CPMapClientTemplateDelegate *)mapTemplateDelegate2 clientPitchGestureWithCenterPoint:v3, v4];
      MEMORY[0x277D82BD8](view);
      MEMORY[0x277D82BD8](mapTemplateDelegate2);
      break;
    case 3:
      mapTemplateDelegate3 = [(CPSMapTemplateViewController *)selfCopy mapTemplateDelegate];
      v7 = location[0];
      view2 = [(CPSMapTemplateViewController *)selfCopy view];
      [v7 locationInView:?];
      [(CPMapClientTemplateDelegate *)mapTemplateDelegate3 clientPitchGestureEndedWithCenterPoint:v5, v6];
      MEMORY[0x277D82BD8](view2);
      MEMORY[0x277D82BD8](mapTemplateDelegate3);
      break;
  }

  objc_storeStrong(location, 0);
}

- (void)_handleFocusHolderSelect
{
  selfCopy = self;
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
  [(CPSMapTemplateViewController *)selfCopy _resetAutoHideTimerAndShowBarAnimated:1 allowFocusDeferral:1];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, recognizer);
  v16 = 0;
  objc_storeStrong(&v16, touch);
  v14 = 0;
  LOBYTE(v10) = 0;
  if ([(CPSMapTemplateViewController *)selfCopy autoHidesNavigationBar])
  {
    navigationController = [(CPSMapTemplateViewController *)selfCopy navigationController];
    v14 = 1;
    v10 = [navigationController isNavigationBarHidden] ^ 1;
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](navigationController);
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
    [(CPSMapTemplateViewController *)selfCopy _resetAutoHideTimerAndShowBarAnimated:1 allowFocusDeferral:1];
  }

  v6 = location[0];
  navBarHideTapGestureRecognizer = [(CPSMapTemplateViewController *)selfCopy navBarHideTapGestureRecognizer];
  MEMORY[0x277D82BD8](navBarHideTapGestureRecognizer);
  v19 = v6 != navBarHideTapGestureRecognizer;
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  return v19;
}

- (void)_setPanInterfaceVisible:(BOOL)visible animated:(BOOL)animated
{
  selfCopy = self;
  v55 = a2;
  visibleCopy = visible;
  animatedCopy = animated;
  if (visible)
  {
    [(CPSMapTemplateViewController *)selfCopy _addPanControllerAsChild];
    navBarHideTapGestureRecognizer = [(CPSMapTemplateViewController *)selfCopy navBarHideTapGestureRecognizer];
    [(UITapGestureRecognizer *)navBarHideTapGestureRecognizer setEnabled:0];
    [(CPSMapTemplateViewController *)selfCopy _setAutoHideDisabled:1 forRequester:@"PanModeRequester", MEMORY[0x277D82BD8](navBarHideTapGestureRecognizer).n128_f64[0]];
    v46 = MEMORY[0x277D85DD0];
    v47 = -1073741824;
    v48 = 0;
    v49 = __65__CPSMapTemplateViewController__setPanInterfaceVisible_animated___block_invoke;
    v50 = &unk_278D913E8;
    v51 = MEMORY[0x277D82BE0](selfCopy);
    v52 = MEMORY[0x245D2A460](&v46);
    if (animatedCopy)
    {
      panContainerView = [(CPSMapTemplateViewController *)selfCopy panContainerView];
      [(UIView *)panContainerView setAlpha:0.0];
      *&v4 = MEMORY[0x277D82BD8](panContainerView).n128_u64[0];
      panContainerView2 = [(CPSMapTemplateViewController *)selfCopy panContainerView];
      [(UIView *)panContainerView2 setHidden:0];
      MEMORY[0x277D82BD8](panContainerView2);
      v13 = MEMORY[0x277D75D18];
      v40 = MEMORY[0x277D85DD0];
      v41 = -1073741824;
      v42 = 0;
      v43 = __65__CPSMapTemplateViewController__setPanInterfaceVisible_animated___block_invoke_2;
      v44 = &unk_278D913E8;
      v45 = MEMORY[0x277D82BE0](selfCopy);
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
      panContainerView3 = [(CPSMapTemplateViewController *)selfCopy panContainerView];
      [(UIView *)panContainerView3 setAlpha:1.0];
      *&v5 = MEMORY[0x277D82BD8](panContainerView3).n128_u64[0];
      panContainerView4 = [(CPSMapTemplateViewController *)selfCopy panContainerView];
      [(UIView *)panContainerView4 setHidden:0];
      *&v6 = MEMORY[0x277D82BD8](panContainerView4).n128_u64[0];
      [(CPSMapTemplateViewController *)selfCopy _setMaximumVisibleMapButtons:2, v6];
      (*(v52 + 2))();
    }

    objc_storeStrong(&v52, 0);
    objc_storeStrong(&v51, 0);
  }

  else
  {
    mapTemplateDelegate = [(CPSMapTemplateViewController *)selfCopy mapTemplateDelegate];
    [(CPMapClientTemplateDelegate *)mapTemplateDelegate clientPanViewWillDisappear];
    MEMORY[0x277D82BD8](mapTemplateDelegate);
    v27 = MEMORY[0x277D85DD0];
    v28 = -1073741824;
    v29 = 0;
    v30 = __65__CPSMapTemplateViewController__setPanInterfaceVisible_animated___block_invoke_4;
    v31 = &unk_278D913E8;
    v32 = MEMORY[0x277D82BE0](selfCopy);
    v33 = MEMORY[0x245D2A460](&v27);
    if (animatedCopy)
    {
      v7 = MEMORY[0x277D75D18];
      v21 = MEMORY[0x277D85DD0];
      v22 = -1073741824;
      v23 = 0;
      v24 = __65__CPSMapTemplateViewController__setPanInterfaceVisible_animated___block_invoke_5;
      v25 = &unk_278D913E8;
      v26 = MEMORY[0x277D82BE0](selfCopy);
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
      [(CPSMapTemplateViewController *)selfCopy _setMaximumVisibleMapButtons:4];
      (*(v33 + 2))();
    }

    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v32, 0);
  }

  [(CPSMapTemplateViewController *)selfCopy setNeedsFocusUpdate];
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
  panViewController = [(CPSMapTemplateViewController *)self panViewController];
  [(CPSPanViewController *)panViewController willMoveToParentViewController:self];
  panViewController2 = [(CPSMapTemplateViewController *)self panViewController];
  [(CPSMapTemplateViewController *)self addChildViewController:?];
  panContainerView = [(CPSMapTemplateViewController *)self panContainerView];
  panViewController3 = [(CPSMapTemplateViewController *)self panViewController];
  view = [(CPSPanViewController *)panViewController3 view];
  [(UIView *)panContainerView addSubview:?];
  MEMORY[0x277D82BD8](view);
  MEMORY[0x277D82BD8](panViewController3);
  panContainerView2 = [(CPSMapTemplateViewController *)self panContainerView];
  panViewController4 = [(CPSMapTemplateViewController *)self panViewController];
  view2 = [(CPSPanViewController *)panViewController4 view];
  topAnchor = [view2 topAnchor];
  panContainerView3 = [(CPSMapTemplateViewController *)self panContainerView];
  topAnchor2 = [(UIView *)panContainerView3 topAnchor];
  v26 = [topAnchor constraintEqualToAnchor:?];
  v35[0] = v26;
  panViewController5 = [(CPSMapTemplateViewController *)self panViewController];
  view3 = [(CPSPanViewController *)panViewController5 view];
  bottomAnchor = [view3 bottomAnchor];
  panContainerView4 = [(CPSMapTemplateViewController *)self panContainerView];
  bottomAnchor2 = [(UIView *)panContainerView4 bottomAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:?];
  v35[1] = v20;
  panViewController6 = [(CPSMapTemplateViewController *)self panViewController];
  view4 = [(CPSPanViewController *)panViewController6 view];
  leftAnchor = [view4 leftAnchor];
  panContainerView5 = [(CPSMapTemplateViewController *)self panContainerView];
  leftAnchor2 = [(UIView *)panContainerView5 leftAnchor];
  v14 = [leftAnchor constraintEqualToAnchor:?];
  v35[2] = v14;
  panViewController7 = [(CPSMapTemplateViewController *)self panViewController];
  view5 = [(CPSPanViewController *)panViewController7 view];
  rightAnchor = [view5 rightAnchor];
  panContainerView6 = [(CPSMapTemplateViewController *)self panContainerView];
  rightAnchor2 = [(UIView *)panContainerView6 rightAnchor];
  v8 = [rightAnchor constraintEqualToAnchor:?];
  v35[3] = v8;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
  [(UIView *)panContainerView2 addConstraints:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](rightAnchor2);
  MEMORY[0x277D82BD8](panContainerView6);
  MEMORY[0x277D82BD8](rightAnchor);
  MEMORY[0x277D82BD8](view5);
  MEMORY[0x277D82BD8](panViewController7);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](leftAnchor2);
  MEMORY[0x277D82BD8](panContainerView5);
  MEMORY[0x277D82BD8](leftAnchor);
  MEMORY[0x277D82BD8](view4);
  MEMORY[0x277D82BD8](panViewController6);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](panContainerView4);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](view3);
  MEMORY[0x277D82BD8](panViewController5);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](panContainerView3);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](view2);
  MEMORY[0x277D82BD8](panViewController4);
  panViewController8 = [(CPSMapTemplateViewController *)self panViewController];
  [(CPSPanViewController *)panViewController8 didMoveToParentViewController:self];
  MEMORY[0x277D82BD8](panViewController8);
}

- (void)_removePanController
{
  panContainerView = [(CPSMapTemplateViewController *)self panContainerView];
  [(UIView *)panContainerView setHidden:1];
  panViewController = [(CPSMapTemplateViewController *)self panViewController];
  [(CPSPanViewController *)panViewController willMoveToParentViewController:0];
  panViewController2 = [(CPSMapTemplateViewController *)self panViewController];
  view = [(CPSPanViewController *)panViewController2 view];
  [view removeFromSuperview];
  MEMORY[0x277D82BD8](view);
  panViewController3 = [(CPSMapTemplateViewController *)self panViewController];
  [(CPSPanViewController *)panViewController3 removeFromParentViewController];
  MEMORY[0x277D82BD8](panViewController3);
}

- (void)panWithDirection:(int64_t)direction
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v7 = a2;
  directionCopy = direction;
  oslog = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:directionCopy];
    __os_log_helper_16_2_2_8_64_8_64(v9, selfCopy, v4);
    _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEFAULT, "%@: Pan button pressed with direction: %@", v9, 0x16u);
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&oslog, 0);
  mapTemplateDelegate = [(CPSMapTemplateViewController *)selfCopy mapTemplateDelegate];
  [(CPMapClientTemplateDelegate *)mapTemplateDelegate clientPanWithDirection:directionCopy];
  MEMORY[0x277D82BD8](mapTemplateDelegate);
}

- (void)panBeganWithDirection:(int64_t)direction
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v7 = a2;
  directionCopy = direction;
  oslog = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:directionCopy];
    __os_log_helper_16_2_2_8_64_8_64(v9, selfCopy, v4);
    _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEFAULT, "%@: Pan began with direction: %@", v9, 0x16u);
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&oslog, 0);
  mapTemplateDelegate = [(CPSMapTemplateViewController *)selfCopy mapTemplateDelegate];
  [(CPMapClientTemplateDelegate *)mapTemplateDelegate clientPanBeganWithDirection:directionCopy];
  MEMORY[0x277D82BD8](mapTemplateDelegate);
}

- (void)panEndedWithDirection:(int64_t)direction
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v7 = a2;
  directionCopy = direction;
  oslog = CarPlaySupportGeneralLogging();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:directionCopy];
    __os_log_helper_16_2_2_8_64_8_64(v9, selfCopy, v4);
    _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEFAULT, "%@: Pan ended with direction: %@", v9, 0x16u);
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&oslog, 0);
  mapTemplateDelegate = [(CPSMapTemplateViewController *)selfCopy mapTemplateDelegate];
  [(CPMapClientTemplateDelegate *)mapTemplateDelegate clientPanEndedWithDirection:directionCopy];
  MEMORY[0x277D82BD8](mapTemplateDelegate);
}

- (void)navigationOwnershipChangedToOwner:(unint64_t)owner
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v12 = a2;
  ownerCopy = owner;
  v10 = CarPlaySupportGeneralLogging();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    log = v10;
    type = v9;
    v6 = NSStringFromNavigationOwner_1(ownerCopy);
    v8 = MEMORY[0x277D82BE0](v6);
    __os_log_helper_16_2_2_8_64_8_64(v15, selfCopy, v8);
    _os_log_impl(&dword_242FE8000, log, type, "%@: Navigation ownership changed to %@", v15, 0x16u);
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(&v10, 0);
  if (ownerCopy == 2)
  {
    oslog = CarPlaySupportGeneralLogging();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v14, selfCopy);
      _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEFAULT, "%@: car owns navigation, requesting client cancel trip", v14, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    mapTemplateDelegate = [(CPSMapTemplateViewController *)selfCopy mapTemplateDelegate];
    [(CPMapClientTemplateDelegate *)mapTemplateDelegate clientTripCanceledByExternalNavigation];
    MEMORY[0x277D82BD8](mapTemplateDelegate);
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
      view = [(CPSMapTemplateViewController *)self view];
      [view safeAreaInsets];
      v46 = v5;
      v6 = _UISolariumEnabled();
      v7 = 4.0;
      if ((v6 & 1) == 0)
      {
        v7 = 8.0;
      }

      v53 = v46 + v7;
      view2 = [(CPSMapTemplateViewController *)self view];
      [view2 bounds];
      v49 = v8;
      trailingBottomStackView = [(CPSMapTemplateViewController *)self trailingBottomStackView];
      [(UIStackView *)trailingBottomStackView frame];
      v50 = v9;
      trailingBottomStackView2 = [(CPSMapTemplateViewController *)self trailingBottomStackView];
      [(UIStackView *)trailingBottomStackView2 bounds];
      v54 = v49 - (v50 + v10);
      MEMORY[0x277D82BD8](trailingBottomStackView2);
      MEMORY[0x277D82BD8](trailingBottomStackView);
      v11 = MEMORY[0x277D82BD8](view2).n128_u64[0];
    }

    else
    {
      view3 = [(CPSMapTemplateViewController *)self view];
      [view3 safeAreaInsets];
      v40 = v12;
      v13 = _UISolariumEnabled();
      v14 = 4.0;
      if ((v13 & 1) == 0)
      {
        v14 = 8.0;
      }

      v53 = v40 + v14;
      view4 = [(CPSMapTemplateViewController *)self view];
      [view4 bounds];
      v42 = v15;
      view5 = [(CPSMapTemplateViewController *)self view];
      [view5 safeAreaInsets];
      v43 = v42 - v16;
      v17 = _UISolariumEnabled();
      v18 = 4.0;
      if ((v17 & 1) == 0)
      {
        v18 = 8.0;
      }

      v54 = v43 - (v18 + 36.0);
      MEMORY[0x277D82BD8](view5);
      v11 = MEMORY[0x277D82BD8](view4).n128_u64[0];
    }
  }

  else if ([(CPSMapTemplateViewController *)self _trailingMapButtonsVisible])
  {
    view6 = [(CPSMapTemplateViewController *)self view];
    [view6 safeAreaInsets];
    v37 = v19;
    v20 = _UISolariumEnabled();
    v21 = 4.0;
    if ((v20 & 1) == 0)
    {
      v21 = 8.0;
    }

    v54 = v37 + v21;
    view7 = [(CPSMapTemplateViewController *)self view];
    [view7 bounds];
    v53 = v22 - v56;
    v11 = MEMORY[0x277D82BD8](view7).n128_u64[0];
  }

  else
  {
    view8 = [(CPSMapTemplateViewController *)self view];
    [view8 safeAreaInsets];
    v31 = v23;
    v24 = _UISolariumEnabled();
    v25 = 4.0;
    if ((v24 & 1) == 0)
    {
      v25 = 8.0;
    }

    v54 = v31 + v25;
    view9 = [(CPSMapTemplateViewController *)self view];
    [view9 bounds];
    v33 = v26;
    view10 = [(CPSMapTemplateViewController *)self view];
    [view10 safeAreaInsets];
    v34 = v33 - v27;
    v28 = _UISolariumEnabled();
    v29 = 4.0;
    if ((v28 & 1) == 0)
    {
      v29 = 8.0;
    }

    v53 = v34 - (v29 + 36.0);
    MEMORY[0x277D82BD8](view10);
    v11 = MEMORY[0x277D82BD8](view9).n128_u64[0];
  }

  safeAreaDelegate = [(CPSMapTemplateViewController *)self safeAreaDelegate];
  [(CPSSafeAreaDelegate *)safeAreaDelegate updateInterestingInsets:v57, v53, v55, v54];
  MEMORY[0x277D82BD8](safeAreaDelegate);
}

- (void)_updateSafeArea
{
  view = [(CPSMapTemplateViewController *)self view];
  [view setNeedsLayout];
  view2 = [(CPSMapTemplateViewController *)self view];
  [view2 layoutIfNeeded];
  MEMORY[0x277D82BD8](view2);
  view3 = [(CPSMapTemplateViewController *)self view];
  [view3 safeAreaInsets];
  v37 = v2;
  v38 = v3;
  v40 = v4;
  v41 = v5;
  MEMORY[0x277D82BD8](view3);
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
    panContainerLeftConstraint = [(CPSMapTemplateViewController *)self panContainerLeftConstraint];
    [(NSLayoutConstraint *)panContainerLeftConstraint setConstant:v33];
    MEMORY[0x277D82BD8](panContainerLeftConstraint);
    panContainerRightConstraint = [(CPSMapTemplateViewController *)self panContainerRightConstraint];
    [(NSLayoutConstraint *)panContainerRightConstraint setConstant:-v42];
    v24 = MEMORY[0x277D82BD8](panContainerRightConstraint).n128_u64[0];
  }

  else
  {
    panContainerLeftConstraint2 = [(CPSMapTemplateViewController *)self panContainerLeftConstraint];
    [(NSLayoutConstraint *)panContainerLeftConstraint2 setConstant:v39];
    MEMORY[0x277D82BD8](panContainerLeftConstraint2);
    panContainerRightConstraint2 = [(CPSMapTemplateViewController *)self panContainerRightConstraint];
    [(NSLayoutConstraint *)panContainerRightConstraint2 setConstant:-v34];
    v24 = MEMORY[0x277D82BD8](panContainerRightConstraint2).n128_u64[0];
  }

  safeAreaDelegate = [(CPSMapTemplateViewController *)self safeAreaDelegate];
  [(CPSSafeAreaDelegate *)safeAreaDelegate viewController:self didUpdateSafeAreaInsets:v37, v39, v40, v42];
  [(CPSMapTemplateViewController *)self _updateInterestingArea];
}

- (BOOL)_trailingMapButtonsVisible
{
  selfCopy = self;
  v15 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x20000000;
  v13 = 32;
  v14 = 0;
  mapButtons = [(CPSMapTemplateViewController *)self mapButtons];
  [(NSMutableArray *)mapButtons enumerateObjectsUsingBlock:?];
  *&v2 = MEMORY[0x277D82BD8](mapButtons).n128_u64[0];
  v8 = 0;
  trailingBottomStackView = [(CPSMapTemplateViewController *)selfCopy trailingBottomStackView];
  v5 = 0;
  if (([(UIStackView *)trailingBottomStackView isHidden]& 1) == 0)
  {
    trailingBottomStackView2 = [(CPSMapTemplateViewController *)selfCopy trailingBottomStackView];
    v8 = 1;
    [(UIStackView *)trailingBottomStackView2 alpha];
    v5 = 0;
    if (v3 > 0.0)
    {
      v5 = *(v11 + 24);
    }
  }

  v17 = v5 & 1;
  if (v8)
  {
    MEMORY[0x277D82BD8](trailingBottomStackView2);
  }

  MEMORY[0x277D82BD8](trailingBottomStackView);
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
    view = [(CPSMapTemplateViewController *)self view];
    [view bounds];
    v25 = v2;
    trailingBottomStackView = [(CPSMapTemplateViewController *)self trailingBottomStackView];
    [(UIStackView *)trailingBottomStackView frame];
    *&v28 = v25 - v3;
    MEMORY[0x277D82BD8](trailingBottomStackView);
    if ([(CPSMapTemplateViewController *)self rightHandDrive])
    {
      trailingBottomStackView2 = [(CPSMapTemplateViewController *)self trailingBottomStackView];
      [(UIStackView *)trailingBottomStackView2 frame];
      v22 = v4;
      trailingBottomStackView3 = [(CPSMapTemplateViewController *)self trailingBottomStackView];
      [(UIStackView *)trailingBottomStackView3 frame];
      *(&v28 + 1) = v22 + v5;
      MEMORY[0x277D82BD8](trailingBottomStackView3);
      MEMORY[0x277D82BD8](trailingBottomStackView2);
    }

    else
    {
      view2 = [(CPSMapTemplateViewController *)self view];
      [view2 bounds];
      v19 = v6;
      trailingBottomStackView4 = [(CPSMapTemplateViewController *)self trailingBottomStackView];
      [(UIStackView *)trailingBottomStackView4 frame];
      *(&v29 + 1) = v19 - v7;
      MEMORY[0x277D82BD8](trailingBottomStackView4);
      MEMORY[0x277D82BD8](view2);
    }
  }

  else
  {
    childViewControllers = [(CPSMapTemplateViewController *)self childViewControllers];
    panViewController = [(CPSMapTemplateViewController *)self panViewController];
    v17 = [childViewControllers containsObject:?];
    MEMORY[0x277D82BD8](panViewController);
    *&v8 = MEMORY[0x277D82BD8](childViewControllers).n128_u64[0];
    if (v17)
    {
      panViewController2 = [(CPSMapTemplateViewController *)self panViewController];
      [(CPSPanViewController *)panViewController2 sideButtonTopInset];
      *&v28 = v9;
      MEMORY[0x277D82BD8](panViewController2);
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
  navigationCardViewController = [(CPSMapTemplateViewController *)self navigationCardViewController];
  navigationCardHidden = [(CPSNavigationCardViewController *)navigationCardViewController navigationCardHidden];
  *&v2 = MEMORY[0x277D82BD8](navigationCardViewController).n128_u64[0];
  if (!navigationCardHidden)
  {
    if ([(CPSMapTemplateViewController *)self rightHandDrive])
    {
      view = [(CPSMapTemplateViewController *)self view];
      [view bounds];
      v20 = v3;
      navigationCardViewController2 = [(CPSMapTemplateViewController *)self navigationCardViewController];
      view2 = [(CPSNavigationCardViewController *)navigationCardViewController2 view];
      [view2 frame];
      v22 = v20 - v4;
      view3 = [(CPSMapTemplateViewController *)self view];
      [view3 safeAreaInsets];
      *(&v30 + 1) = v22 - v5;
      MEMORY[0x277D82BD8](view3);
      MEMORY[0x277D82BD8](view2);
      MEMORY[0x277D82BD8](navigationCardViewController2);
      MEMORY[0x277D82BD8](view);
    }

    else
    {
      navigationCardViewController3 = [(CPSMapTemplateViewController *)self navigationCardViewController];
      view4 = [(CPSNavigationCardViewController *)navigationCardViewController3 view];
      [view4 frame];
      v13 = v6;
      navigationCardViewController4 = [(CPSMapTemplateViewController *)self navigationCardViewController];
      view5 = [(CPSNavigationCardViewController *)navigationCardViewController4 view];
      [view5 frame];
      v15 = v13 + v7;
      view6 = [(CPSMapTemplateViewController *)self view];
      [view6 safeAreaInsets];
      *(&v29 + 1) = v15 - v8;
      MEMORY[0x277D82BD8](view6);
      MEMORY[0x277D82BD8](view5);
      MEMORY[0x277D82BD8](navigationCardViewController4);
      MEMORY[0x277D82BD8](view4);
      MEMORY[0x277D82BD8](navigationCardViewController3);
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
  previewsView = [(CPSMapTemplateViewController *)self previewsView];
  v28 = 0;
  v26 = 0;
  v25 = 0;
  if (previewsView)
  {
    previewsView2 = [(CPSMapTemplateViewController *)self previewsView];
    v28 = 1;
    v25 = 0;
    if (([(CPSTripPreviewsCardView *)previewsView2 isHidden]& 1) == 0)
    {
      previewsView3 = [(CPSMapTemplateViewController *)self previewsView];
      v26 = 1;
      [(CPSTripPreviewsCardView *)previewsView3 frame];
      v25 = v2 > 0.0;
    }
  }

  if (v26)
  {
    MEMORY[0x277D82BD8](previewsView3);
  }

  if (v28)
  {
    MEMORY[0x277D82BD8](previewsView2);
  }

  *&v3 = MEMORY[0x277D82BD8](previewsView).n128_u64[0];
  if (v25)
  {
    if ([(CPSMapTemplateViewController *)self rightHandDrive])
    {
      view = [(CPSMapTemplateViewController *)self view];
      [view bounds];
      v19 = v4;
      previewsView4 = [(CPSMapTemplateViewController *)self previewsView];
      [(CPSTripPreviewsCardView *)previewsView4 frame];
      v21 = v19 - v5;
      view2 = [(CPSMapTemplateViewController *)self view];
      [view2 safeAreaInsets];
      *(&v32 + 1) = v21 - v6;
      MEMORY[0x277D82BD8](view2);
      MEMORY[0x277D82BD8](previewsView4);
      MEMORY[0x277D82BD8](view);
    }

    else
    {
      previewsView5 = [(CPSMapTemplateViewController *)self previewsView];
      [(CPSTripPreviewsCardView *)previewsView5 frame];
      v14 = v7;
      previewsView6 = [(CPSMapTemplateViewController *)self previewsView];
      [(CPSTripPreviewsCardView *)previewsView6 frame];
      v16 = v14 + v8;
      view3 = [(CPSMapTemplateViewController *)self view];
      [view3 safeAreaInsets];
      *(&v31 + 1) = v16 - v9;
      MEMORY[0x277D82BD8](view3);
      MEMORY[0x277D82BD8](previewsView6);
      MEMORY[0x277D82BD8](previewsView5);
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
  navigationController = [(CPSMapTemplateViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  isHidden = [navigationBar isHidden];
  MEMORY[0x277D82BD8](navigationBar);
  *&v2 = MEMORY[0x277D82BD8](navigationController).n128_u64[0];
  if ((isHidden & 1) == 0)
  {
    navigationController2 = [(CPSMapTemplateViewController *)self navigationController];
    navigationBar2 = [navigationController2 navigationBar];
    [navigationBar2 frame];
    v10 = v3;
    navigationController3 = [(CPSMapTemplateViewController *)self navigationController];
    navigationBar3 = [navigationController3 navigationBar];
    [navigationBar3 frame];
    *&v18 = v10 + v4;
    MEMORY[0x277D82BD8](navigationBar3);
    MEMORY[0x277D82BD8](navigationController3);
    MEMORY[0x277D82BD8](navigationBar2);
    MEMORY[0x277D82BD8](navigationController2);
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
  selfCopy = self;
  location[1] = a2;
  v23 = 0u;
  v24 = 0u;
  v23 = *MEMORY[0x277D768C8];
  v24 = *(MEMORY[0x277D768C8] + 16);
  navigationAlertQueue = [(CPSMapTemplateViewController *)self navigationAlertQueue];
  location[0] = [(CPSNavigationAlertQueue *)navigationAlertQueue currentAlertView];
  *&v2 = MEMORY[0x277D82BD8](navigationAlertQueue).n128_u64[0];
  if (location[0])
  {
    if ([(CPSMapTemplateViewController *)selfCopy rightHandDrive])
    {
      view = [(CPSMapTemplateViewController *)selfCopy view];
      [view bounds];
      v16 = v3;
      [location[0] frame];
      v18 = v16 - v4;
      view2 = [(CPSMapTemplateViewController *)selfCopy view];
      [view2 safeAreaInsets];
      *(&v24 + 1) = v18 - v5;
      MEMORY[0x277D82BD8](view2);
      MEMORY[0x277D82BD8](view);
    }

    else
    {
      [location[0] frame];
      v13 = v6;
      [location[0] frame];
      v15 = v13 + v7;
      view3 = [(CPSMapTemplateViewController *)selfCopy view];
      [view3 safeAreaInsets];
      *(&v23 + 1) = v15 - v8;
      MEMORY[0x277D82BD8](view3);
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

- (BOOL)shouldUpdateFocusInContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  previouslyFocusedView = [location[0] previouslyFocusedView];
  navigationController = [(CPSMapTemplateViewController *)selfCopy navigationController];
  navigationBar = [navigationController navigationBar];
  v16 = [previouslyFocusedView isDescendantOfView:?];
  MEMORY[0x277D82BD8](navigationBar);
  MEMORY[0x277D82BD8](navigationController);
  *&v3 = MEMORY[0x277D82BD8](previouslyFocusedView).n128_u64[0];
  if (v16)
  {
    previouslyFocusedView2 = [location[0] previouslyFocusedView];
    objc_storeWeak(&selfCopy->_lastNavigationBarFocusedItem, previouslyFocusedView2);
    v4 = MEMORY[0x277D82BD8](previouslyFocusedView2).n128_u64[0];
LABEL_12:
    v17.receiver = selfCopy;
    v17.super_class = CPSMapTemplateViewController;
    v25 = [(CPSMapTemplateViewController *)&v17 shouldUpdateFocusInContext:location[0], *&v4];
    v18 = 1;
    goto LABEL_13;
  }

  previouslyFocusedView3 = [location[0] previouslyFocusedView];
  navigationController2 = [(CPSMapTemplateViewController *)selfCopy navigationController];
  navigationBar2 = [navigationController2 navigationBar];
  v21 = 0;
  v19 = 0;
  v11 = 0;
  if ([previouslyFocusedView3 isDescendantOfView:?])
  {
    v11 = 0;
    if ([location[0] focusHeading] == 16)
    {
      _linearFocusItems = [(CPSMapTemplateViewController *)selfCopy _linearFocusItems];
      v21 = 1;
      nextFocusedView = [location[0] nextFocusedView];
      v19 = 1;
      v11 = [_linearFocusItems indexOfObject:?] != 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  if (v19)
  {
    MEMORY[0x277D82BD8](nextFocusedView);
  }

  if (v21)
  {
    MEMORY[0x277D82BD8](_linearFocusItems);
  }

  MEMORY[0x277D82BD8](navigationBar2);
  MEMORY[0x277D82BD8](navigationController2);
  v4 = MEMORY[0x277D82BD8](previouslyFocusedView3).n128_u64[0];
  if (!v11)
  {
    goto LABEL_12;
  }

  _linearFocusItems2 = [(CPSMapTemplateViewController *)selfCopy _linearFocusItems];
  nextFocusedView2 = [location[0] nextFocusedView];
  v25 = [_linearFocusItems2 indexOfObject:?] == 0;
  MEMORY[0x277D82BD8](nextFocusedView2);
  MEMORY[0x277D82BD8](_linearFocusItems2);
  v18 = 1;
LABEL_13:
  objc_storeStrong(location, 0);
  return v25 & 1;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v34[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v30 = 0;
  objc_storeStrong(&v30, coordinator);
  nextFocusedView = [location[0] nextFocusedView];
  v28 = 0;
  v26 = 0;
  v19 = 0;
  if (nextFocusedView)
  {
    nextFocusedView2 = [location[0] nextFocusedView];
    v28 = 1;
    view = [(CPSMapTemplateViewController *)selfCopy view];
    v26 = 1;
    v19 = [nextFocusedView2 isDescendantOfView:?];
  }

  if (v26)
  {
    MEMORY[0x277D82BD8](view);
  }

  if (v28)
  {
    MEMORY[0x277D82BD8](nextFocusedView2);
  }

  *&v4 = MEMORY[0x277D82BD8](nextFocusedView).n128_u64[0];
  if (v19)
  {
    nextFocusedItem = [location[0] nextFocusedItem];
    [(CPSMapTemplateViewController *)selfCopy setLastFocusedItem:?];
    *&v5 = MEMORY[0x277D82BD8](nextFocusedItem).n128_u64[0];
    focusHolderLeftFocusGuide = [(CPSMapTemplateViewController *)selfCopy focusHolderLeftFocusGuide];
    lastFocusedItem = [(CPSMapTemplateViewController *)selfCopy lastFocusedItem];
    v34[0] = lastFocusedItem;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:?];
    [(UIFocusGuide *)focusHolderLeftFocusGuide setPreferredFocusEnvironments:?];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](lastFocusedItem);
    *&v6 = MEMORY[0x277D82BD8](focusHolderLeftFocusGuide).n128_u64[0];
    focusHolderRightFocusGuide = [(CPSMapTemplateViewController *)selfCopy focusHolderRightFocusGuide];
    lastFocusedItem2 = [(CPSMapTemplateViewController *)selfCopy lastFocusedItem];
    v33 = lastFocusedItem2;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    [(UIFocusGuide *)focusHolderRightFocusGuide setPreferredFocusEnvironments:?];
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](lastFocusedItem2);
    MEMORY[0x277D82BD8](focusHolderRightFocusGuide);
  }

  else
  {
    nextFocusedItem2 = [location[0] nextFocusedItem];
    v24 = 0;
    v22 = 0;
    v20 = 0;
    v9 = 0;
    if (nextFocusedItem2)
    {
      nextFocusedView3 = [location[0] nextFocusedView];
      v24 = 1;
      parentViewController = [(CPSMapTemplateViewController *)selfCopy parentViewController];
      v22 = 1;
      view2 = [parentViewController view];
      v20 = 1;
      v9 = [nextFocusedView3 isDescendantOfView:?];
    }

    if (v20)
    {
      MEMORY[0x277D82BD8](view2);
    }

    if (v22)
    {
      MEMORY[0x277D82BD8](parentViewController);
    }

    if (v24)
    {
      MEMORY[0x277D82BD8](nextFocusedView3);
    }

    *&v7 = MEMORY[0x277D82BD8](nextFocusedItem2).n128_u64[0];
    if (v9)
    {
      [(CPSMapTemplateViewController *)selfCopy setLastFocusedItem:0, v7];
    }
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

- (id)preferredFocusEnvironments
{
  selfCopy = self;
  v26[1] = a2;
  v26[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  lastFocusedItem = [(CPSMapTemplateViewController *)selfCopy lastFocusedItem];
  v2 = MEMORY[0x277D82BD8](lastFocusedItem).n128_u64[0];
  if (lastFocusedItem)
  {
    lastFocusedItem2 = [(CPSMapTemplateViewController *)selfCopy lastFocusedItem];
    [v26[0] addObject:?];
    v2 = MEMORY[0x277D82BD8](lastFocusedItem2).n128_u64[0];
  }

  previewsView = [(CPSMapTemplateViewController *)selfCopy previewsView];
  v3 = MEMORY[0x277D82BD8](previewsView).n128_u64[0];
  if (previewsView)
  {
    previewsView2 = [(CPSMapTemplateViewController *)selfCopy previewsView];
    [v26[0] addObject:?];
    v3 = MEMORY[0x277D82BD8](previewsView2).n128_u64[0];
  }

  navigationAlertQueue = [(CPSMapTemplateViewController *)selfCopy navigationAlertQueue];
  currentAlertView = [(CPSNavigationAlertQueue *)navigationAlertQueue currentAlertView];
  MEMORY[0x277D82BD8](currentAlertView);
  v4 = MEMORY[0x277D82BD8](navigationAlertQueue).n128_u64[0];
  if (currentAlertView)
  {
    navigationAlertQueue2 = [(CPSMapTemplateViewController *)selfCopy navigationAlertQueue];
    currentAlertView2 = [(CPSNavigationAlertQueue *)navigationAlertQueue2 currentAlertView];
    [v26[0] addObject:?];
    MEMORY[0x277D82BD8](currentAlertView2);
    v4 = MEMORY[0x277D82BD8](navigationAlertQueue2).n128_u64[0];
  }

  navigationController = [(CPSMapTemplateViewController *)selfCopy navigationController];
  navigationBar = [navigationController navigationBar];
  MEMORY[0x277D82BD8](navigationBar);
  v5 = MEMORY[0x277D82BD8](navigationController).n128_u64[0];
  if (navigationBar)
  {
    navigationController2 = [(CPSMapTemplateViewController *)selfCopy navigationController];
    navigationBar2 = [navigationController2 navigationBar];
    [v26[0] addObject:?];
    MEMORY[0x277D82BD8](navigationBar2);
    v5 = MEMORY[0x277D82BD8](navigationController2).n128_u64[0];
  }

  panViewController = [(CPSMapTemplateViewController *)selfCopy panViewController];
  v24 = 0;
  LOBYTE(v11) = 0;
  if (panViewController)
  {
    panContainerView = [(CPSMapTemplateViewController *)selfCopy panContainerView];
    v24 = 1;
    v11 = ![(UIView *)panContainerView isHidden];
  }

  if (v24)
  {
    MEMORY[0x277D82BD8](panContainerView);
  }

  v6 = MEMORY[0x277D82BD8](panViewController).n128_u64[0];
  if (v11)
  {
    panViewController2 = [(CPSMapTemplateViewController *)selfCopy panViewController];
    [v26[0] addObject:?];
    v6 = MEMORY[0x277D82BD8](panViewController2).n128_u64[0];
  }

  v8 = [v26[0] copy];
  objc_storeStrong(v26, 0);

  return v8;
}

- (id)_linearFocusItems
{
  selfCopy = self;
  v81[1] = a2;
  v81[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  location = objc_alloc_init(MEMORY[0x277CBEB18]);
  mapButtons = [(CPSMapTemplateViewController *)selfCopy mapButtons];
  v73 = [(NSMutableArray *)mapButtons count];
  *&v2 = MEMORY[0x277D82BD8](mapButtons).n128_u64[0];
  if (v73)
  {
    mapButtons2 = [(CPSMapTemplateViewController *)selfCopy mapButtons];
    v74 = MEMORY[0x277D85DD0];
    v75 = -1073741824;
    v76 = 0;
    v77 = __49__CPSMapTemplateViewController__linearFocusItems__block_invoke;
    v78 = &unk_278D942D0;
    v79 = MEMORY[0x277D82BE0](location);
    [(NSMutableArray *)mapButtons2 enumerateObjectsUsingBlock:&v74];
    MEMORY[0x277D82BD8](mapButtons2);
    objc_storeStrong(&v79, 0);
  }

  panContainerView = [(CPSMapTemplateViewController *)selfCopy panContainerView];
  isHidden = [(UIView *)panContainerView isHidden];
  *&v3 = MEMORY[0x277D82BD8](panContainerView).n128_u64[0];
  if (isHidden)
  {
    if ([(CPSMapTemplateViewController *)selfCopy rightHandDrive])
    {
      [v81[0] addObjectsFromArray:location];
      previewsView = [(CPSMapTemplateViewController *)selfCopy previewsView];
      v4 = MEMORY[0x277D82BD8](previewsView).n128_u64[0];
      if (previewsView)
      {
        v65 = v81[0];
        previewsView2 = [(CPSMapTemplateViewController *)selfCopy previewsView];
        _linearFocusItems = [(CPSTripPreviewsCardView *)previewsView2 _linearFocusItems];
        [v65 addObjectsFromArray:?];
        MEMORY[0x277D82BD8](_linearFocusItems);
        v4 = MEMORY[0x277D82BD8](previewsView2).n128_u64[0];
      }

      navigationAlertQueue = [(CPSMapTemplateViewController *)selfCopy navigationAlertQueue];
      currentAlertView = [(CPSNavigationAlertQueue *)navigationAlertQueue currentAlertView];
      MEMORY[0x277D82BD8](currentAlertView);
      *&v5 = MEMORY[0x277D82BD8](navigationAlertQueue).n128_u64[0];
      if (currentAlertView)
      {
        v59 = v81[0];
        navigationAlertQueue2 = [(CPSMapTemplateViewController *)selfCopy navigationAlertQueue];
        currentAlertView2 = [(CPSNavigationAlertQueue *)navigationAlertQueue2 currentAlertView];
        _linearFocusItems2 = [(CPSNavigationAlertView *)currentAlertView2 _linearFocusItems];
        [v59 addObjectsFromArray:?];
        MEMORY[0x277D82BD8](_linearFocusItems2);
        MEMORY[0x277D82BD8](currentAlertView2);
        MEMORY[0x277D82BD8](navigationAlertQueue2);
      }
    }

    else
    {
      previewsView3 = [(CPSMapTemplateViewController *)selfCopy previewsView];
      v6 = MEMORY[0x277D82BD8](previewsView3).n128_u64[0];
      if (previewsView3)
      {
        v55 = v81[0];
        previewsView4 = [(CPSMapTemplateViewController *)selfCopy previewsView];
        _linearFocusItems3 = [(CPSTripPreviewsCardView *)previewsView4 _linearFocusItems];
        [v55 addObjectsFromArray:?];
        MEMORY[0x277D82BD8](_linearFocusItems3);
        v6 = MEMORY[0x277D82BD8](previewsView4).n128_u64[0];
      }

      navigationAlertQueue3 = [(CPSMapTemplateViewController *)selfCopy navigationAlertQueue];
      currentAlertView3 = [(CPSNavigationAlertQueue *)navigationAlertQueue3 currentAlertView];
      MEMORY[0x277D82BD8](currentAlertView3);
      v7 = MEMORY[0x277D82BD8](navigationAlertQueue3).n128_u64[0];
      if (currentAlertView3)
      {
        v49 = v81[0];
        navigationAlertQueue4 = [(CPSMapTemplateViewController *)selfCopy navigationAlertQueue];
        currentAlertView4 = [(CPSNavigationAlertQueue *)navigationAlertQueue4 currentAlertView];
        _linearFocusItems4 = [(CPSNavigationAlertView *)currentAlertView4 _linearFocusItems];
        [v49 addObjectsFromArray:?];
        MEMORY[0x277D82BD8](_linearFocusItems4);
        MEMORY[0x277D82BD8](currentAlertView4);
        v7 = MEMORY[0x277D82BD8](navigationAlertQueue4).n128_u64[0];
      }

      [v81[0] addObjectsFromArray:{location, *&v7}];
    }
  }

  else if ([(CPSMapTemplateViewController *)selfCopy rightHandDrive])
  {
    v45 = v81[0];
    panViewController = [(CPSMapTemplateViewController *)selfCopy panViewController];
    _linearFocusItems5 = [(CPSPanViewController *)panViewController _linearFocusItems];
    [v45 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](_linearFocusItems5);
    *&v8 = MEMORY[0x277D82BD8](panViewController).n128_u64[0];
    [v81[0] addObjectsFromArray:{location, v8}];
    lastNavigationBarFocusedItem = [(CPSMapTemplateViewController *)selfCopy lastNavigationBarFocusedItem];
    v9 = MEMORY[0x277D82BD8](lastNavigationBarFocusedItem).n128_u64[0];
    if (lastNavigationBarFocusedItem)
    {
      v43 = v81[0];
      lastNavigationBarFocusedItem2 = [(CPSMapTemplateViewController *)selfCopy lastNavigationBarFocusedItem];
      [v43 addObject:?];
      v9 = MEMORY[0x277D82BD8](lastNavigationBarFocusedItem2).n128_u64[0];
    }

    navigationAlertQueue5 = [(CPSMapTemplateViewController *)selfCopy navigationAlertQueue];
    currentAlertView5 = [(CPSNavigationAlertQueue *)navigationAlertQueue5 currentAlertView];
    MEMORY[0x277D82BD8](currentAlertView5);
    v10 = MEMORY[0x277D82BD8](navigationAlertQueue5).n128_u64[0];
    if (currentAlertView5)
    {
      v37 = v81[0];
      navigationAlertQueue6 = [(CPSMapTemplateViewController *)selfCopy navigationAlertQueue];
      currentAlertView6 = [(CPSNavigationAlertQueue *)navigationAlertQueue6 currentAlertView];
      _linearFocusItems6 = [(CPSNavigationAlertView *)currentAlertView6 _linearFocusItems];
      [v37 addObjectsFromArray:?];
      MEMORY[0x277D82BD8](_linearFocusItems6);
      MEMORY[0x277D82BD8](currentAlertView6);
      v10 = MEMORY[0x277D82BD8](navigationAlertQueue6).n128_u64[0];
    }

    previewsView5 = [(CPSMapTemplateViewController *)selfCopy previewsView];
    *&v11 = MEMORY[0x277D82BD8](previewsView5).n128_u64[0];
    if (previewsView5)
    {
      v33 = v81[0];
      previewsView6 = [(CPSMapTemplateViewController *)selfCopy previewsView];
      _linearFocusItems7 = [(CPSTripPreviewsCardView *)previewsView6 _linearFocusItems];
      [v33 addObjectsFromArray:?];
      MEMORY[0x277D82BD8](_linearFocusItems7);
      MEMORY[0x277D82BD8](previewsView6);
    }
  }

  else
  {
    previewsView7 = [(CPSMapTemplateViewController *)selfCopy previewsView];
    v12 = MEMORY[0x277D82BD8](previewsView7).n128_u64[0];
    if (previewsView7)
    {
      v29 = v81[0];
      previewsView8 = [(CPSMapTemplateViewController *)selfCopy previewsView];
      _linearFocusItems8 = [(CPSTripPreviewsCardView *)previewsView8 _linearFocusItems];
      [v29 addObjectsFromArray:?];
      MEMORY[0x277D82BD8](_linearFocusItems8);
      v12 = MEMORY[0x277D82BD8](previewsView8).n128_u64[0];
    }

    navigationAlertQueue7 = [(CPSMapTemplateViewController *)selfCopy navigationAlertQueue];
    currentAlertView7 = [(CPSNavigationAlertQueue *)navigationAlertQueue7 currentAlertView];
    MEMORY[0x277D82BD8](currentAlertView7);
    v13 = MEMORY[0x277D82BD8](navigationAlertQueue7).n128_u64[0];
    if (currentAlertView7)
    {
      v23 = v81[0];
      navigationAlertQueue8 = [(CPSMapTemplateViewController *)selfCopy navigationAlertQueue];
      currentAlertView8 = [(CPSNavigationAlertQueue *)navigationAlertQueue8 currentAlertView];
      _linearFocusItems9 = [(CPSNavigationAlertView *)currentAlertView8 _linearFocusItems];
      [v23 addObjectsFromArray:?];
      MEMORY[0x277D82BD8](_linearFocusItems9);
      MEMORY[0x277D82BD8](currentAlertView8);
      v13 = MEMORY[0x277D82BD8](navigationAlertQueue8).n128_u64[0];
    }

    lastNavigationBarFocusedItem3 = [(CPSMapTemplateViewController *)selfCopy lastNavigationBarFocusedItem];
    v14 = MEMORY[0x277D82BD8](lastNavigationBarFocusedItem3).n128_u64[0];
    if (lastNavigationBarFocusedItem3)
    {
      v20 = v81[0];
      lastNavigationBarFocusedItem4 = [(CPSMapTemplateViewController *)selfCopy lastNavigationBarFocusedItem];
      [v20 addObject:?];
      v14 = MEMORY[0x277D82BD8](lastNavigationBarFocusedItem4).n128_u64[0];
    }

    [v81[0] addObjectsFromArray:{location, *&v14}];
    v17 = v81[0];
    panViewController2 = [(CPSMapTemplateViewController *)selfCopy panViewController];
    _linearFocusItems10 = [(CPSPanViewController *)panViewController2 _linearFocusItems];
    [v17 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](_linearFocusItems10);
    MEMORY[0x277D82BD8](panViewController2);
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

- (BOOL)shouldForwardEventForWindow:(id)window eventType:(int64_t)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, window);
  typeCopy = type;
  v24 = 1;
  if (type == 7)
  {
    navigationController = [(CPSMapTemplateViewController *)selfCopy navigationController];
    v24 = ([navigationController isNavigationBarHidden] ^ 1) & 1;
    MEMORY[0x277D82BD8](navigationController);
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
    [(CPSMapTemplateViewController *)selfCopy _resetAutoHideTimerAndShowBarAnimated:1 allowFocusDeferral:0];
  }

  else if (!typeCopy)
  {
    navigationAlertQueue = [(CPSMapTemplateViewController *)selfCopy navigationAlertQueue];
    currentAlertView = [(CPSNavigationAlertQueue *)navigationAlertQueue currentAlertView];
    *&v4 = MEMORY[0x277D82BD8](navigationAlertQueue).n128_u64[0];
    v18 = 0;
    LOBYTE(v10) = 1;
    if (currentAlertView)
    {
      lastFocusedItem = [(CPSMapTemplateViewController *)selfCopy lastFocusedItem];
      v18 = 1;
      v10 = [currentAlertView containsView:?] ^ 1;
    }

    if (v18)
    {
      MEMORY[0x277D82BD8](lastFocusedItem);
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
      [(CPSMapTemplateViewController *)selfCopy _resetAutoHideTimerAndShowBarAnimated:1 allowFocusDeferral:1];
    }

    objc_storeStrong(&currentAlertView, 0);
  }

  v6 = v24;
  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (void)applicationStateMonitor:(id)monitor didBecomeActive:(BOOL)active
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, monitor);
  activeCopy = active;
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __72__CPSMapTemplateViewController_applicationStateMonitor_didBecomeActive___block_invoke;
  v12 = &unk_278D91CA8;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  v14 = activeCopy;
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

- (void)didChangeLayout:(id)layout
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, layout);
  v7 = location[0];
  navigationCardViewLayoutHelperView = [(CPSMapTemplateViewController *)selfCopy navigationCardViewLayoutHelperView];
  v3 = MEMORY[0x277D82BD8](navigationCardViewLayoutHelperView).n128_u64[0];
  if (v7 == navigationCardViewLayoutHelperView)
  {
    navigationCardViewController = [(CPSMapTemplateViewController *)selfCopy navigationCardViewController];
    [location[0] frame];
    [(CPSNavigationCardViewController *)navigationCardViewController availableHeightChangedTo:v4];
    v3 = MEMORY[0x277D82BD8](navigationCardViewController).n128_u64[0];
  }

  [(CPSMapTemplateViewController *)selfCopy _checkNavigationCardHelperViewForETAFit];
  objc_storeStrong(location, 0);
}

- (void)_checkNavigationCardHelperViewForETAFit
{
  v70 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v67 = a2;
  view = [(CPSMapTemplateViewController *)self view];
  navigationCardViewController = [(CPSMapTemplateViewController *)selfCopy navigationCardViewController];
  layoutHelperView = [(CPSNavigationCardViewController *)navigationCardViewController layoutHelperView];
  [(CPSLayoutHelperView *)layoutHelperView bounds];
  v59 = v2;
  v60 = v3;
  v61 = v4;
  v62 = v5;
  navigationCardViewController2 = [(CPSMapTemplateViewController *)selfCopy navigationCardViewController];
  layoutHelperView2 = [(CPSNavigationCardViewController *)navigationCardViewController2 layoutHelperView];
  [view convertRect:v59 fromView:{v60, v61, v62}];
  v63 = v6;
  v64 = v7;
  v65 = v8;
  v66 = v9;
  MEMORY[0x277D82BD8](layoutHelperView2);
  MEMORY[0x277D82BD8](navigationCardViewController2);
  MEMORY[0x277D82BD8](layoutHelperView);
  MEMORY[0x277D82BD8](navigationCardViewController);
  MEMORY[0x277D82BD8](view);
  *&v58 = UIRectGetMaxY_0(v63, v64, v65, v66);
  view2 = [(CPSMapTemplateViewController *)selfCopy view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  v56[5] = v10;
  v56[6] = v11;
  v56[7] = v12;
  v56[8] = v13;
  MaxY_0 = UIRectGetMaxY_0(*&v10, *&v11, *&v12, *&v13);
  navigationETAView = [(CPSMapTemplateViewController *)selfCopy navigationETAView];
  [(CPSNavigationETAView *)navigationETAView frame];
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
  MEMORY[0x277D82BD8](navigationETAView);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide);
  MEMORY[0x277D82BD8](view2);
  v57 = v40;
  v56[0] = CarPlaySupportGeneralLogging();
  v55 = 1;
  if (os_log_type_enabled(v56[0], OS_LOG_TYPE_INFO))
  {
    log = v56[0];
    type = v55;
    view3 = [(CPSMapTemplateViewController *)selfCopy view];
    [view3 bounds];
    rect = v71;
    v28 = NSStringFromCGRect(v71);
    v53 = MEMORY[0x277D82BE0](v28);
    __os_log_helper_16_2_3_8_0_8_0_8_64(v69, v58, *&v57, v53);
    _os_log_impl(&dword_242FE8000, log, type, "Navigation card max Y: %f, eta min Y: %f, view size: %@", v69, 0x20u);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](view3);
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
    [(CPSMapTemplateViewController *)selfCopy _setETAViewHidden:1 forRequester:@"ManeuversCardRequester" animated:0];
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
    [(CPSMapTemplateViewController *)selfCopy _setETAViewHidden:0 forRequester:@"ManeuversCardRequester" animated:0];
  }

  v21 = MEMORY[0x277D75D18];
  v20 = *MEMORY[0x277D76DA0];
  v41 = MEMORY[0x277D85DD0];
  v42 = -1073741824;
  v43 = 0;
  v44 = __71__CPSMapTemplateViewController__checkNavigationCardHelperViewForETAFit__block_invoke;
  v45 = &unk_278D913E8;
  v46 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)observerDeliveryPolicyDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
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
    v11 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)_setETAViewHidden:(BOOL)hidden forRequester:(id)requester animated:(BOOL)animated
{
  v35 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v31 = a2;
  hiddenCopy = hidden;
  location = 0;
  objc_storeStrong(&location, requester);
  animatedCopy = animated;
  if (hiddenCopy)
  {
    if (!selfCopy->_etaViewHiddenRequesters)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
      etaViewHiddenRequesters = selfCopy->_etaViewHiddenRequesters;
      selfCopy->_etaViewHiddenRequesters = v5;
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
    etaViewHiddenRequesters = [(CPSMapTemplateViewController *)selfCopy etaViewHiddenRequesters];
    [(NSMutableSet *)etaViewHiddenRequesters addObject:location];
    v7 = MEMORY[0x277D82BD8](etaViewHiddenRequesters).n128_u64[0];
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
    etaViewHiddenRequesters2 = [(CPSMapTemplateViewController *)selfCopy etaViewHiddenRequesters];
    [(NSMutableSet *)etaViewHiddenRequesters2 removeObject:location];
    v7 = MEMORY[0x277D82BD8](etaViewHiddenRequesters2).n128_u64[0];
  }

  [(CPSMapTemplateViewController *)selfCopy _updateETAViewHidden];
  if (animatedCopy)
  {
    v8 = MEMORY[0x277D75D18];
    v18 = MEMORY[0x277D85DD0];
    v19 = -1073741824;
    v20 = 0;
    v21 = __72__CPSMapTemplateViewController__setETAViewHidden_forRequester_animated___block_invoke;
    v22 = &unk_278D913E8;
    v23 = MEMORY[0x277D82BE0](selfCopy);
    v12 = MEMORY[0x277D85DD0];
    v13 = -1073741824;
    v14 = 0;
    v15 = __72__CPSMapTemplateViewController__setETAViewHidden_forRequester_animated___block_invoke_2;
    v16 = &unk_278D91398;
    v17 = MEMORY[0x277D82BE0](selfCopy);
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
  selfCopy = self;
  location[1] = a2;
  etaViewHiddenRequesters = [(CPSMapTemplateViewController *)self etaViewHiddenRequesters];
  v18 = [(NSMutableSet *)etaViewHiddenRequesters count];
  *&v2 = MEMORY[0x277D82BD8](etaViewHiddenRequesters).n128_u64[0];
  if (v18)
  {
    if (![(CPSMapTemplateViewController *)selfCopy etaViewHidden])
    {
      location[0] = CarPlaySupportGeneralLogging();
      v22 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(location[0], OS_LOG_TYPE_INFO))
      {
        etaViewHiddenRequesters2 = [(CPSMapTemplateViewController *)selfCopy etaViewHiddenRequesters];
        __os_log_helper_16_2_1_8_64(v25, etaViewHiddenRequesters2);
        _os_log_impl(&dword_242FE8000, location[0], v22, "Hiding ETA view for requesters: %@", v25, 0xCu);
        MEMORY[0x277D82BD8](etaViewHiddenRequesters2);
      }

      objc_storeStrong(location, 0);
      [(CPSMapTemplateViewController *)selfCopy setEtaViewHidden:1];
      v21[5] = 0x4046000000000000;
      view = [(CPSMapTemplateViewController *)selfCopy view];
      [view safeAreaInsets];
      v21[1] = v3;
      v21[2] = v4;
      v21[3] = v5;
      v21[4] = v6;
      v13 = *&v5 + 44.0;
      navigationETAViewBottomConstraint = [(CPSMapTemplateViewController *)selfCopy navigationETAViewBottomConstraint];
      [(NSLayoutConstraint *)navigationETAViewBottomConstraint setConstant:v13];
      MEMORY[0x277D82BD8](navigationETAViewBottomConstraint);
      MEMORY[0x277D82BD8](view);
    }
  }

  else if ([(CPSMapTemplateViewController *)selfCopy etaViewHidden])
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
    [(CPSMapTemplateViewController *)selfCopy setEtaViewHidden:0];
    v7 = _UISolariumEnabled();
    v8 = -4.0;
    if ((v7 & 1) == 0)
    {
      v8 = -8.0;
    }

    navigationETAViewBottomConstraint2 = [(CPSMapTemplateViewController *)selfCopy navigationETAViewBottomConstraint];
    [(NSLayoutConstraint *)navigationETAViewBottomConstraint2 setConstant:v9];
    MEMORY[0x277D82BD8](navigationETAViewBottomConstraint2);
  }
}

- (void)_createNavigationCardViewController
{
  v78[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v76[1] = a2;
  v76[0] = objc_alloc_init(CPSNavigationCardViewController);
  [v76[0] setGuidanceBackgroundColor:selfCopy->_guidanceBackgroundColor];
  [(CPSMapTemplateViewController *)selfCopy setNavigationCardViewController:v76[0]];
  navigationCardViewController = [(CPSMapTemplateViewController *)selfCopy navigationCardViewController];
  [(CPSNavigationCardViewController *)navigationCardViewController willMoveToParentViewController:selfCopy];
  navigationCardViewController2 = [(CPSMapTemplateViewController *)selfCopy navigationCardViewController];
  [(CPSMapTemplateViewController *)selfCopy addChildViewController:?];
  view = [(CPSMapTemplateViewController *)selfCopy view];
  navigationCardViewController3 = [(CPSMapTemplateViewController *)selfCopy navigationCardViewController];
  view2 = [(CPSNavigationCardViewController *)navigationCardViewController3 view];
  [view addSubview:?];
  MEMORY[0x277D82BD8](view2);
  MEMORY[0x277D82BD8](navigationCardViewController3);
  navigationCardViewController4 = [(CPSMapTemplateViewController *)selfCopy navigationCardViewController];
  view3 = [(CPSNavigationCardViewController *)navigationCardViewController4 view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];
  MEMORY[0x277D82BD8](view3);
  v73 = 0;
  v71 = 0;
  v69 = 0;
  v67 = 0;
  v65 = 0;
  v63 = 0;
  if ([(CPSMapTemplateViewController *)selfCopy rightHandDrive])
  {
    view4 = [(CPSMapTemplateViewController *)selfCopy view];
    v73 = 1;
    safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
    v71 = 1;
    rightAnchor = [safeAreaLayoutGuide rightAnchor];
    v69 = 1;
    v2 = MEMORY[0x277D82BE0](rightAnchor);
  }

  else
  {
    view5 = [(CPSMapTemplateViewController *)selfCopy view];
    v67 = 1;
    safeAreaLayoutGuide2 = [view5 safeAreaLayoutGuide];
    v65 = 1;
    leftAnchor = [safeAreaLayoutGuide2 leftAnchor];
    v63 = 1;
    v2 = MEMORY[0x277D82BE0](leftAnchor);
  }

  v75 = v2;
  if (v63)
  {
    MEMORY[0x277D82BD8](leftAnchor);
  }

  if (v65)
  {
    MEMORY[0x277D82BD8](safeAreaLayoutGuide2);
  }

  if (v67)
  {
    MEMORY[0x277D82BD8](view5);
  }

  if (v69)
  {
    MEMORY[0x277D82BD8](rightAnchor);
  }

  if (v71)
  {
    MEMORY[0x277D82BD8](safeAreaLayoutGuide);
  }

  if (v73)
  {
    MEMORY[0x277D82BD8](view4);
  }

  v60 = 0;
  v58 = 0;
  v56 = 0;
  v54 = 0;
  v52 = 0;
  v50 = 0;
  if ([(CPSMapTemplateViewController *)selfCopy rightHandDrive])
  {
    navigationCardViewController5 = [(CPSMapTemplateViewController *)selfCopy navigationCardViewController];
    v60 = 1;
    view6 = [(CPSNavigationCardViewController *)navigationCardViewController5 view];
    v58 = 1;
    rightAnchor2 = [view6 rightAnchor];
    v56 = 1;
    v3 = MEMORY[0x277D82BE0](rightAnchor2);
  }

  else
  {
    navigationCardViewController6 = [(CPSMapTemplateViewController *)selfCopy navigationCardViewController];
    v54 = 1;
    view7 = [(CPSNavigationCardViewController *)navigationCardViewController6 view];
    v52 = 1;
    leftAnchor2 = [view7 leftAnchor];
    v50 = 1;
    v3 = MEMORY[0x277D82BE0](leftAnchor2);
  }

  v62 = v3;
  if (v50)
  {
    MEMORY[0x277D82BD8](leftAnchor2);
  }

  if (v52)
  {
    MEMORY[0x277D82BD8](view7);
  }

  if (v54)
  {
    MEMORY[0x277D82BD8](navigationCardViewController6);
  }

  if (v56)
  {
    MEMORY[0x277D82BD8](rightAnchor2);
  }

  if (v58)
  {
    MEMORY[0x277D82BD8](view6);
  }

  if (v60)
  {
    MEMORY[0x277D82BD8](navigationCardViewController5);
  }

  if ([(CPSMapTemplateViewController *)selfCopy rightHandDrive])
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
  navigationCardViewController7 = [(CPSMapTemplateViewController *)selfCopy navigationCardViewController];
  view8 = [(CPSNavigationCardViewController *)navigationCardViewController7 view];
  widthAnchor = [view8 widthAnchor];
  v48 = [widthAnchor constraintEqualToConstant:0.0];
  MEMORY[0x277D82BD8](widthAnchor);
  MEMORY[0x277D82BD8](view8);
  v8 = MEMORY[0x277D82BD8](navigationCardViewController7);
  v8.n128_u32[0] = 1148846080;
  [v48 setPriority:v8.n128_f64[0]];
  [(CPSMapTemplateViewController *)selfCopy setCardWidthConstraint:v48];
  [(CPSMapTemplateViewController *)selfCopy _calculateAndUpdateCardWidthConstraint];
  v19 = MEMORY[0x277CCAAD0];
  navigationCardViewController8 = [(CPSMapTemplateViewController *)selfCopy navigationCardViewController];
  view9 = [(CPSNavigationCardViewController *)navigationCardViewController8 view];
  topAnchor = [view9 topAnchor];
  view10 = [(CPSMapTemplateViewController *)selfCopy view];
  safeAreaLayoutGuide3 = [view10 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v9 = _UISolariumEnabled();
  v10 = 4.0;
  if ((v9 & 1) == 0)
  {
    v10 = 8.0;
  }

  v29 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v10];
  v78[0] = v29;
  v28 = [v62 constraintEqualToAnchor:v75 constant:v49];
  v78[1] = v28;
  v78[2] = v48;
  navigationCardViewController9 = [(CPSMapTemplateViewController *)selfCopy navigationCardViewController];
  view11 = [(CPSNavigationCardViewController *)navigationCardViewController9 view];
  bottomAnchor = [view11 bottomAnchor];
  view12 = [(CPSMapTemplateViewController *)selfCopy view];
  safeAreaLayoutGuide4 = [view12 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
  v11 = _UISolariumEnabled();
  v12 = 4.0;
  if ((v11 & 1) == 0)
  {
    v12 = 8.0;
  }

  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v12];
  v78[3] = v21;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:4];
  [v19 activateConstraints:?];
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide4);
  MEMORY[0x277D82BD8](view12);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](view11);
  MEMORY[0x277D82BD8](navigationCardViewController9);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide3);
  MEMORY[0x277D82BD8](view10);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](view9);
  *&v13 = MEMORY[0x277D82BD8](navigationCardViewController8).n128_u64[0];
  navigationCardViewController10 = [(CPSMapTemplateViewController *)selfCopy navigationCardViewController];
  [(CPSNavigationCardViewController *)navigationCardViewController10 didMoveToParentViewController:selfCopy];
  *&v14 = MEMORY[0x277D82BD8](navigationCardViewController10).n128_u64[0];
  navigationCardViewController11 = [(CPSMapTemplateViewController *)selfCopy navigationCardViewController];
  layoutHelperView = [(CPSNavigationCardViewController *)navigationCardViewController11 layoutHelperView];
  [(CPSLayoutHelperView *)layoutHelperView setLayoutDelegate:selfCopy];
  MEMORY[0x277D82BD8](layoutHelperView);
  *&v15 = MEMORY[0x277D82BD8](navigationCardViewController11).n128_u64[0];
  navigationCardViewController12 = [(CPSMapTemplateViewController *)selfCopy navigationCardViewController];
  [(CPSNavigationCardViewController *)navigationCardViewController12 setNavigationCardHidden:1 forRequester:@"TripEndedRequester" animated:0 completion:?];
  MEMORY[0x277D82BD8](navigationCardViewController12);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v62, 0);
  objc_storeStrong(&v75, 0);
  objc_storeStrong(v76, 0);
}

- (void)_calculateAndUpdateCardWidthConstraint
{
  view = [(CPSMapTemplateViewController *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  v6 = v2 * 0.45;
  MEMORY[0x277D82BD8](safeAreaLayoutGuide);
  MEMORY[0x277D82BD8](view);
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

  cardWidthConstraint = [(CPSMapTemplateViewController *)self cardWidthConstraint];
  [(NSLayoutConstraint *)cardWidthConstraint setConstant:v7];
  MEMORY[0x277D82BD8](cardWidthConstraint);
}

- (void)_createNavigationCardViewLayoutHelperView
{
  v25[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v23[1] = a2;
  v23[0] = objc_alloc_init(CPSLayoutHelperView);
  [v23[0] setLayoutDelegate:selfCopy];
  view = [(CPSMapTemplateViewController *)selfCopy view];
  [view addSubview:v23[0]];
  [(CPSMapTemplateViewController *)selfCopy setNavigationCardViewLayoutHelperView:v23[0], MEMORY[0x277D82BD8](view).n128_f64[0]];
  bottomAnchor = [v23[0] bottomAnchor];
  view2 = [(CPSMapTemplateViewController *)selfCopy view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  v2 = _UISolariumEnabled();
  v3 = 4.0;
  if ((v2 & 1) == 0)
  {
    v3 = 8.0;
  }

  v8 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v3];
  [(CPSMapTemplateViewController *)selfCopy setNavigationCardViewLayoutViewBottomConstraint:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide);
  MEMORY[0x277D82BD8](view2);
  *&v4 = MEMORY[0x277D82BD8](bottomAnchor).n128_u64[0];
  v13 = MEMORY[0x277CCAAD0];
  navigationCardViewLayoutViewBottomConstraint = [(CPSMapTemplateViewController *)selfCopy navigationCardViewLayoutViewBottomConstraint];
  v25[0] = navigationCardViewLayoutViewBottomConstraint;
  topAnchor = [v23[0] topAnchor];
  view3 = [(CPSMapTemplateViewController *)selfCopy view];
  safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide2 topAnchor];
  v5 = _UISolariumEnabled();
  v6 = 4.0;
  if ((v5 & 1) == 0)
  {
    v6 = 8.0;
  }

  v17 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v6];
  v25[1] = v17;
  widthAnchor = [v23[0] widthAnchor];
  v15 = [widthAnchor constraintEqualToConstant:1.0];
  v25[2] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
  [v13 activateConstraints:?];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](widthAnchor);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide2);
  MEMORY[0x277D82BD8](view3);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](navigationCardViewLayoutViewBottomConstraint);
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