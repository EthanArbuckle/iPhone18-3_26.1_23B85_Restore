@interface DBDashboard
+ (id)_stateChangeApplications;
- (BOOL)_isDockScene:(id)scene;
- (BOOL)_isPunchThroughPresented;
- (BOOL)_supportsDisplayingPunchthroughWithIdentifier:(id)identifier;
- (BOOL)handleACHomeUp:(unint64_t)up;
- (BOOL)hasActiveCall;
- (BOOL)shouldDisableFiveRowKeyboards;
- (BSAnimationSettings)alwaysDarkAnimationSettings;
- (CGRect)_rectForFocusedRectDictionary:(id)dictionary;
- (CGRect)sceneFrameForApplication:(id)application;
- (CGRect)sceneFrameForApplication:(id)application proxyApplication:(id)proxyApplication;
- (CRSIconLayoutVehicleDataProviding)iconLayoutDataProvider;
- (CRSUIStatusBarStyleAssertion)alwaysDarkStatusBarStyleAssertion;
- (CRSWidgetLayoutVehicleDataProviding)widgetLayoutDataProvider;
- (DBDashboard)initWithRootScene:(id)scene environmentConfiguration:(id)configuration defaultSceneWorkspaceIdentifier:(id)identifier;
- (DBScreenshotManager)screenshotManager;
- (FBSDisplayConfiguration)displayConfiguration;
- (FBSDisplayIdentity)displayIdentity;
- (FBScene)siriScene;
- (UIEdgeInsets)safeAreaInsetsForApplication:(id)application;
- (UIEdgeInsets)safeAreaInsetsForApplication:(id)application proxyApplication:(id)proxyApplication;
- (UIEdgeInsets)statusBarInsets;
- (id)_diagnosticsActiveBundleIdentifier;
- (id)_homeScreenStyleTraitOverrides;
- (id)_newResizeAnimationWindow;
- (id)_nowRecordingBundleIdentifier;
- (id)_takeSnapshotOfFrame:(CGRect)frame;
- (id)focusWindow;
- (id)scene:(id)scene handleActions:(id)actions;
- (id)sceneIdentifierForApplication:(id)application;
- (id)wallpaperViewForLockOutController:(id)controller;
- (int64_t)_sceneInterfaceStyleForScene:(id)scene;
- (int64_t)sceneInterfaceStyleForApplication:(id)application proxyApplication:(id)proxyApplication;
- (int64_t)sceneMapInterfaceStyleForApplication:(id)application proxyApplication:(id)proxyApplication;
- (unint64_t)_adjustedHeadingForHorizontalClimateOverlay:(unint64_t)overlay;
- (unint64_t)_adjustedHeadingForVerticalClimateOverlay:(unint64_t)overlay direction:(unint64_t)direction;
- (unint64_t)_directionWithHorizontalClimateOverlayWithHeading:(unint64_t)heading isClimateOverlaySceneHidden:(BOOL)hidden isClimateScene:(BOOL)scene isDockScene:(BOOL)dockScene action:(id)action;
- (unint64_t)_directionWithVerticalClimateOverlayWithHeading:(unint64_t)heading isClimateOverlaySceneHidden:(BOOL)hidden isClimateScene:(BOOL)scene isDockScene:(BOOL)dockScene action:(id)action;
- (void)_animateClearLockoutWindow;
- (void)_animateStartupFromScaledMainWindow;
- (void)_animateStartupToHomeScreen;
- (void)_animateStartupToIcons;
- (void)_attemptFocusTransferForAction:(id)action fromScene:(id)scene heading:(unint64_t)heading;
- (void)_backLongPressed:(id)pressed;
- (void)_collectMemgraphsForTapToRadarWithCompletion:(id)completion;
- (void)_dismissFloatingSiriIfNecessary;
- (void)_dismissPunchthroughWithIdentifier:(id)identifier;
- (void)_displayRecordingAlert;
- (void)_dropDockFocusAssertionForAction:(id)action;
- (void)_focusStatusUpdated:(id)updated;
- (void)_goToPageContainingBundleIdentifier:(id)identifier completion:(id)completion;
- (void)_handleAppSchemeURL:(id)l activationSettings:(id)settings;
- (void)_handleAutoSettingsURL:(id)l;
- (void)_handleBackgroundURLDeliveryForLaunchInfo:(id)info;
- (void)_handleCarPlayUIReady;
- (void)_handleHomeEvent:(id)event;
- (void)_handleInputStreamURL:(id)l;
- (void)_handleInterruptPunchthroughEvent:(id)event;
- (void)_handleOEMNotificationURL:(id)l;
- (void)_handleOpenApplicationEvent:(id)event;
- (void)_handleReturnToHomeScreenEvent:(id)event;
- (void)_handleSessionURL:(id)l;
- (void)_handleSiriButtonDownWithTimestamp:(double)timestamp;
- (void)_handleSiriButtonUpWithTimestamp:(double)timestamp;
- (void)_handleSiriPrewarmWithTimestamp:(double)timestamp;
- (void)_handleSmartStackConfigurationEvent:(id)event;
- (void)_handleTapToRadarEvent;
- (void)_homeTapped:(id)tapped;
- (void)_initializeWallpaper;
- (void)_launchAppWithInfo:(id)info forURL:(id)l;
- (void)_notifyAccessoryIfNeededWithUIContext:(id)context;
- (void)_notifyClimateOverlayPunchthroughIsPresented:(BOOL)presented;
- (void)_presentPrivacyDisclosureAlertForApplication:(id)application;
- (void)_presentPunchthroughWithIdentifier:(id)identifier;
- (void)_publishInitialFocusState;
- (void)_screenDidBecomeAvailable:(id)available;
- (void)_screenDidBecomeUnavailable:(id)unavailable;
- (void)_setDidFinishWelcomeIfNeeded;
- (void)_setInitialFocusOwner;
- (void)_setupCameraOverlayController;
- (void)_setupClimateOverlayControllerIfNeeded;
- (void)_setupDNDStateService;
- (void)_setupDock;
- (void)_setupVoiceControlOverlayController;
- (void)_takeClimateFocusAssertionForAction:(id)action heading:(unint64_t)heading;
- (void)_takeDockFocusAssertionForAction:(id)action;
- (void)_takeDockFocusAssertionForAction:(id)action heading:(unint64_t)heading;
- (void)_updateAppScenesViewArea;
- (void)_updateAudioNotificationBlocker;
- (void)_updateCornerRadiusVisibility;
- (void)_updatePasscodeLockToken;
- (void)_updateTraitOverridesForTraitOverrides:(id)overrides withHomeScreenStyleData:(id)data userInterfaceStyle:(int64_t)style;
- (void)_updateTraitOverridesWithWallpaperTraits:(id)traits;
- (void)_updateUserInterfaceStyle;
- (void)_updateWallpaperWithAnimationDuration:(double)duration delay:(double)delay;
- (void)_updateWindowFrames;
- (void)alertServer:(id)server wantsAppDismissalForAlert:(id)alert bundleID:(id)d;
- (void)alertServer:(id)server wantsAppPresentationForAlert:(id)alert bundleID:(id)d;
- (void)alertServer:(id)server wantsSystemDismissalForViewController:(id)controller;
- (void)alertServer:(id)server wantsSystemPresentationForViewController:(id)controller;
- (void)carManager:(id)manager didUpdateAccessories:(id)accessories;
- (void)carManager:(id)manager didUpdateCar:(id)car;
- (void)client:(int64_t)client didUpdateElements:(id)elements;
- (void)dealloc;
- (void)didDismissAlertingLiveActivityWithActivityIdentifier:(id)identifier;
- (void)didDismissLiveActivityWithActivityIdentifier:(id)identifier;
- (void)didDismissPresentable:(id)presentable forNotificationViewController:(id)controller;
- (void)didUpdateAlertingLiveActivityWithActivityDescriptor:(id)descriptor;
- (void)environmentConfiguration:(double)configuration viewAreaDidChangeFromViewAreaFrame:(double)frame safeAreaInsets:(double)insets toViewAreaFrame:(double)areaFrame safeAreaInsets:(double)areaInsets duration:(double)duration transitionControlType:(double)type;
- (void)environmentConfiguration:(id)configuration appearancePreferenceDidChange:(int64_t)change;
- (void)environmentConfiguration:(id)configuration appearanceStyleDidChange:(int64_t)change;
- (void)environmentConfiguration:(id)configuration canvasOverrideSizeDidChange:(CGSize)change;
- (void)environmentConfiguration:(id)configuration homeScreenStyleDidChange:(id)change;
- (void)environmentConfiguration:(id)configuration nightModeDidChange:(BOOL)change;
- (void)handleAllAssetsForegrounded;
- (void)handleConnect;
- (void)handleEvent:(id)event;
- (void)handleFocusMovementAction:(id)action fromScene:(id)scene;
- (void)handleLongBackPress;
- (void)handleMainAssetForegrounded;
- (void)inCallAssertionService:(id)service didSetBannersEnabled:(BOOL)enabled;
- (void)inCallAssertionServiceDidDismiss:(id)dismiss;
- (void)inCallAssertionServiceDidPresent:(id)present;
- (void)invalidate;
- (void)lockOutController:(id)controller didChangeFromLockoutMode:(int64_t)mode toLockOutMode:(int64_t)outMode animated:(BOOL)animated takeScreen:(BOOL)screen;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)presentSmartStackConfiguratorWithConfiguration:(id)configuration;
- (void)runLaunchTestForApplication:(id)application;
- (void)session:(id)session handleSiriRequestEvent:(int64_t)event withPayload:(id)payload;
- (void)session:(id)session isPlayingVideoFromApp:(id)app;
- (void)session:(id)session openURL:(id)l;
- (void)session:(id)session receivedUnhandledRemoteEvent:(id)event withPayload:(id)payload;
- (void)setAlertFocusAssertion:(id)assertion;
- (void)setAlwaysDarkInterfaceActive:(BOOL)active;
- (void)setClimateFocusAssertion:(id)assertion;
- (void)setHomeFocusAssertion:(id)assertion;
- (void)setLockOutFocusAssertion:(id)assertion;
- (void)setNotificationFocusAssertion:(id)assertion;
- (void)setOEMFocusAssertion:(id)assertion;
- (void)stateService:(id)service didReceiveDoNotDisturbStateUpdate:(id)update;
- (void)volumeNotificationServiceUpdated:(id)updated;
- (void)willPresentPresentable:(id)presentable forNotificationViewController:(id)controller;
- (void)willUpdateThemeData:(id)data withDuration:(double)duration delay:(double)delay;
- (void)workspace:(id)workspace stateDidChangeFromState:(id)state toState:(id)toState;
@end

@implementation DBDashboard

- (void)_updateCornerRadiusVisibility
{
  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  currentViewAreaSupportsUIOutsideSafeArea = [environmentConfiguration currentViewAreaSupportsUIOutsideSafeArea];

  cornerRadiusWindow = [(DBScreenController *)self cornerRadiusWindow];
  v6 = cornerRadiusWindow;
  if (currentViewAreaSupportsUIOutsideSafeArea)
  {
    [cornerRadiusWindow setHidden:1];

    dockController = [(DBDashboard *)self dockController];
    [(DBDashboard *)self currentCornerRadius];
    [dockController setCornerRadius:?];

    notificationWindow = [(DBDashboard *)self notificationWindow];
    layer = [notificationWindow layer];
    [(DBDashboard *)self currentCornerRadius];
    layer2 = layer;
  }

  else
  {
    screenInfo = [(DBScreenController *)self screenInfo];
    [v6 setHidden:{objc_msgSend(screenInfo, "wantsCornerMasks")}];

    dockController2 = [(DBDashboard *)self dockController];
    [dockController2 setCornerRadius:0.0];

    notificationWindow = [(DBDashboard *)self notificationWindow];
    layer2 = [notificationWindow layer];
    layer = layer2;
    v9 = 0.0;
  }

  [layer2 setCornerRadius:v9];
}

- (void)_updateAudioNotificationBlocker
{
  workspace = [(DBDashboard *)self workspace];
  state = [workspace state];
  activeBundleIdentifier = [state activeBundleIdentifier];

  volumeNotificationService = [(DBDashboard *)self volumeNotificationService];
  v6 = [volumeNotificationService isNotificationBlockedForBundleIdentifier:activeBundleIdentifier];

  audioNotificationManager = [(DBDashboard *)self audioNotificationManager];
  [audioNotificationManager setShouldSuspendNotification:v6];
}

- (id)focusWindow
{
  focusController = [(DBDashboard *)self focusController];
  focusWindow = [focusController focusWindow];

  return focusWindow;
}

- (FBSDisplayConfiguration)displayConfiguration
{
  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  displayConfiguration = [environmentConfiguration displayConfiguration];

  return displayConfiguration;
}

- (UIEdgeInsets)statusBarInsets
{
  layoutEngine = [(DBDashboard *)self layoutEngine];
  [layoutEngine statusBarInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (FBSDisplayIdentity)displayIdentity
{
  displayConfiguration = [(DBDashboard *)self displayConfiguration];
  identity = [displayConfiguration identity];

  return identity;
}

- (BOOL)shouldDisableFiveRowKeyboards
{
  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  session = [environmentConfiguration session];
  configuration = [session configuration];
  screens = [configuration screens];
  firstObject = [screens firstObject];
  [firstObject physicalSize];
  v9 = v8;
  v11 = v10;

  environmentConfiguration2 = [(DBScreenController *)self environmentConfiguration];
  displayConfiguration = [environmentConfiguration2 displayConfiguration];
  [displayConfiguration pixelSize];
  v15 = v14;
  v17 = v16;

  environmentConfiguration3 = [(DBScreenController *)self environmentConfiguration];
  [environmentConfiguration3 screenScale];
  v20 = v19;

  return DBFiveRowKeyboardKeySizeTooSmall(v9, v11, v15, v17, v20);
}

- (DBDashboard)initWithRootScene:(id)scene environmentConfiguration:(id)configuration defaultSceneWorkspaceIdentifier:(id)identifier
{
  v143[2] = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  configurationCopy = configuration;
  v135.receiver = self;
  v135.super_class = DBDashboard;
  v132 = sceneCopy;
  v10 = [(DBScreenController *)&v135 initWithRootScene:sceneCopy environmentConfiguration:configurationCopy defaultSceneWorkspaceIdentifier:identifier];
  if (v10)
  {
    v11 = [[DBSplashScreenAlert alloc] initWithEnvironmentConfiguration:configurationCopy];
    splashScreenAlert = v10->_splashScreenAlert;
    v10->_splashScreenAlert = v11;

    displayConfiguration = [configurationCopy displayConfiguration];
    [configurationCopy addObserver:v10];
    v14 = [[DBDashboardLayoutEngine alloc] initWithEnvironmentConfiguration:configurationCopy];
    layoutEngine = v10->_layoutEngine;
    v10->_layoutEngine = v14;

    session = [configurationCopy session];
    [session addObserver:v10];
    v10->_lock._os_unfair_lock_opaque = 0;
    v133 = displayConfiguration;
    hardwareIdentifier = [displayConfiguration hardwareIdentifier];
    v130 = hardwareIdentifier;
    if (hardwareIdentifier)
    {
      v17 = MEMORY[0x277CBEB98];
      v18 = [MEMORY[0x277CF0698] displayWithHardwareIdentifier:hardwareIdentifier];
      v19 = [v17 setWithObject:v18];

      defaultSystemPredicate = [MEMORY[0x277CF0750] defaultSystemPredicate];
      [defaultSystemPredicate setDisplays:v19];
      v20 = MEMORY[0x277CF0688];
      systemTarget = [MEMORY[0x277CF0690] systemTarget];
      v128 = [v20 ruleForDispatchingDiscreteEventsMatchingPredicate:defaultSystemPredicate toTarget:systemTarget];

      defaultFocusPredicate = [MEMORY[0x277CF0750] defaultFocusPredicate];
      [defaultFocusPredicate setDisplays:v19];
      v22 = MEMORY[0x277CF0688];
      keyboardFocusTarget = [MEMORY[0x277CF0690] keyboardFocusTarget];
      v129 = [v22 ruleForDispatchingDiscreteEventsMatchingPredicate:defaultFocusPredicate toTarget:keyboardFocusTarget];

      v24 = objc_alloc_init(MEMORY[0x277CF0750]);
      v25 = MEMORY[0x277CBEB98];
      v26 = [MEMORY[0x277CF0680] descriptorWithEventType:17];
      v122 = [v25 setWithObject:v26];

      [v24 setDescriptors:v122];
      v121 = v24;
      [v24 setDisplays:v19];
      v27 = MEMORY[0x277CF0688];
      systemTarget2 = [MEMORY[0x277CF0690] systemTarget];
      v127 = [v27 ruleForDispatchingDiscreteEventsMatchingPredicate:v24 toTarget:systemTarget2];

      v29 = objc_alloc_init(MEMORY[0x277CF0750]);
      v30 = MEMORY[0x277CBEB98];
      v31 = [MEMORY[0x277CF06B8] descriptorWithPage:12 usage:548];
      v120 = [v30 setWithObject:v31];

      [v29 setDescriptors:v120];
      v119 = v29;
      [v29 setDisplays:v19];
      v32 = MEMORY[0x277CF0688];
      systemTarget3 = [MEMORY[0x277CF0690] systemTarget];
      v126 = [v32 ruleForDispatchingDiscreteEventsMatchingPredicate:v29 toTarget:systemTarget3];

      v34 = objc_alloc_init(MEMORY[0x277CF0750]);
      v35 = MEMORY[0x277CBEB98];
      v36 = [MEMORY[0x277CF06B8] descriptorWithPage:12 usage:547];
      v118 = [v35 setWithObject:v36];

      [v34 setDescriptors:v118];
      v116 = v19;
      v117 = v34;
      [v34 setDisplays:v19];
      v37 = MEMORY[0x277CF0688];
      systemTarget4 = [MEMORY[0x277CF0690] systemTarget];
      v125 = [v37 ruleForDispatchingDiscreteEventsMatchingPredicate:v34 toTarget:systemTarget4];

      v39 = objc_alloc_init(MEMORY[0x277CF0750]);
      v40 = MEMORY[0x277CBEB98];
      v41 = [MEMORY[0x277CF06B8] descriptorWithPage:11 usage:38];
      v115 = [v40 setWithObject:v41];

      [v39 setDescriptors:v115];
      v114 = v39;
      [v39 setDisplays:v19];
      v42 = MEMORY[0x277CF0688];
      systemTarget5 = [MEMORY[0x277CF0690] systemTarget];
      v110 = [v42 ruleForDispatchingDiscreteEventsMatchingPredicate:v39 toTarget:systemTarget5];

      v44 = objc_alloc_init(MEMORY[0x277CF0750]);
      v45 = MEMORY[0x277CBEB98];
      v46 = [MEMORY[0x277CF06B8] descriptorWithPage:11 usage:46];
      v113 = [v45 setWithObject:v46];

      [v44 setDescriptors:v113];
      v112 = v44;
      [v44 setDisplays:0];
      v47 = MEMORY[0x277CF0688];
      systemTarget6 = [MEMORY[0x277CF0690] systemTarget];
      v111 = [v47 ruleForDispatchingDiscreteEventsMatchingPredicate:v44 toTarget:systemTarget6];

      mEMORY[0x277CF0668] = [MEMORY[0x277CF0668] sharedInstance];
      v50 = MEMORY[0x277CCACA8];
      identity = [v133 identity];
      v52 = [v50 stringWithFormat:@"DashBoard-%@", identity];
      v143[0] = v128;
      v143[1] = v129;
      v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v143 count:2];
      v54 = [mEMORY[0x277CF0668] dispatchDiscreteEventsForReason:v52 withRules:v53];
      dispatchingAssertion = v10->_dispatchingAssertion;
      v10->_dispatchingAssertion = v54;

      mEMORY[0x277CF0668]2 = [MEMORY[0x277CF0668] sharedInstance];
      v57 = MEMORY[0x277CCACA8];
      identity2 = [v133 identity];
      v59 = [v57 stringWithFormat:@"DashBoardACSelect-%@", identity2];
      v142 = v127;
      v60 = [MEMORY[0x277CBEA60] arrayWithObjects:&v142 count:1];
      v61 = [mEMORY[0x277CF0668]2 dispatchDiscreteEventsForReason:v59 withRules:v60];
      dispatchingAssertionACSelect = v10->_dispatchingAssertionACSelect;
      v10->_dispatchingAssertionACSelect = v61;

      mEMORY[0x277CF0668]3 = [MEMORY[0x277CF0668] sharedInstance];
      v64 = MEMORY[0x277CCACA8];
      identity3 = [v133 identity];
      v66 = [v64 stringWithFormat:@"DashBoardACBack-%@", identity3];
      v141 = v126;
      v67 = [MEMORY[0x277CBEA60] arrayWithObjects:&v141 count:1];
      v68 = [mEMORY[0x277CF0668]3 dispatchDiscreteEventsForReason:v66 withRules:v67];
      dispatchingAssertionACBack = v10->_dispatchingAssertionACBack;
      v10->_dispatchingAssertionACBack = v68;

      mEMORY[0x277CF0668]4 = [MEMORY[0x277CF0668] sharedInstance];
      v71 = MEMORY[0x277CCACA8];
      identity4 = [v133 identity];
      v73 = [v71 stringWithFormat:@"DashBoardACHome-%@", identity4];
      v140 = v125;
      v74 = [MEMORY[0x277CBEA60] arrayWithObjects:&v140 count:1];
      v75 = [mEMORY[0x277CF0668]4 dispatchDiscreteEventsForReason:v73 withRules:v74];
      dispatchingAssertionACHome = v10->_dispatchingAssertionACHome;
      v10->_dispatchingAssertionACHome = v75;

      mEMORY[0x277CF0668]5 = [MEMORY[0x277CF0668] sharedInstance];
      v78 = MEMORY[0x277CCACA8];
      identity5 = [v133 identity];
      v80 = [v78 stringWithFormat:@"DashBoardTelephonyDrop-%@", identity5];
      v139 = v110;
      v81 = [MEMORY[0x277CBEA60] arrayWithObjects:&v139 count:1];
      v82 = [mEMORY[0x277CF0668]5 dispatchDiscreteEventsForReason:v80 withRules:v81];
      dispatchingAssertionTelephonyDrop = v10->_dispatchingAssertionTelephonyDrop;
      v10->_dispatchingAssertionTelephonyDrop = v82;

      mEMORY[0x277CF0668]6 = [MEMORY[0x277CF0668] sharedInstance];
      v85 = MEMORY[0x277CCACA8];
      identity6 = [v133 identity];
      v87 = [v85 stringWithFormat:@"DashBoardRinger-%@", identity6];
      v138 = v111;
      v88 = [MEMORY[0x277CBEA60] arrayWithObjects:&v138 count:1];
      v89 = [mEMORY[0x277CF0668]6 dispatchDiscreteEventsForReason:v87 withRules:v88];
      dispatchingAssertionRinger = v10->_dispatchingAssertionRinger;
      v10->_dispatchingAssertionRinger = v89;

      v91 = [DBFocusController alloc];
      environmentConfiguration = [(DBScreenController *)v10 environmentConfiguration];
      v93 = [(DBFocusController *)v91 initWithEnvironmentConfiguration:environmentConfiguration rootScene:v132];
      focusController = v10->_focusController;
      v10->_focusController = v93;

      v95 = [[DBFocusMovementManager alloc] initWithEnvironmentConfiguration:configurationCopy];
      focusMovementManager = v10->_focusMovementManager;
      v10->_focusMovementManager = v95;

      v97 = v116;
    }

    else
    {
      v134 = displayConfiguration;
      v98 = BSLogAddStateCaptureBlockWithTitle();
      v99 = DBLogForCategory(8uLL);
      if (os_log_type_enabled(v99, OS_LOG_TYPE_FAULT))
      {
        [DBDashboard initWithRootScene:environmentConfiguration:defaultSceneWorkspaceIdentifier:];
      }

      v97 = v134;
    }

    v10->_siriPrewarmTimestamp = -1.0;
    wallpaperPreferences = [configurationCopy wallpaperPreferences];
    session2 = [configurationCopy session];
    configuration = [session2 configuration];
    [wallpaperPreferences updateHasGaugeClusterScreen:{objc_msgSend(configuration, "hasGaugeClusterScreen")}];

    v103 = NSStringFromSettingsCategory();
    v136[0] = v103;
    v137[0] = @"com.apple.AutoSettings";
    v104 = NSStringFromSettingsCategory();
    v136[1] = v104;
    v137[1] = @"com.apple.CarRadio";
    v105 = NSStringFromSettingsCategory();
    v136[2] = v105;
    v137[2] = @"com.apple.CarRadio";
    v106 = NSStringFromSettingsCategory();
    v136[3] = v106;
    v137[3] = @"com.apple.CarClimate";
    v107 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v137 forKeys:v136 count:4];
    settingsCategoryToBundleID = v10->_settingsCategoryToBundleID;
    v10->_settingsCategoryToBundleID = v107;
  }

  return v10;
}

id __90__DBDashboard_initWithRootScene_environmentConfiguration_defaultSceneWorkspaceIdentifier___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"Display Configuration";
  v2 = [*(a1 + 32) debugDescription];
  v7[1] = @"CADisplay";
  v8[0] = v2;
  v3 = [*(a1 + 32) CADisplay];
  v4 = [v3 debugDescription];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (void)handleConnect
{
  v219 = *MEMORY[0x277D85DE8];
  v3 = [[DBDashboardStateProvider alloc] initWithDashboard:self];
  dashboardStateProvider = self->_dashboardStateProvider;
  self->_dashboardStateProvider = v3;

  v5 = self->_dashboardStateProvider;
  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  analytics = [environmentConfiguration analytics];
  [(DBDashboardStateProvider *)v5 addObserver:analytics];

  [(DBDashboard *)self _setupDNDStateService];
  v8 = [[DBSceneWorkspace alloc] initWithIdentifier:@"com.apple.DashBoard.scene-workspace.local"];
  localSceneWorkspace = self->_localSceneWorkspace;
  self->_localSceneWorkspace = v8;

  v10 = [[DBSceneWorkspace alloc] initWithIdentifier:@"com.apple.DashBoard.scene-workspace.overlay"];
  overlaySceneWorkspace = self->_overlaySceneWorkspace;
  self->_overlaySceneWorkspace = v10;

  environmentConfiguration2 = [(DBScreenController *)self environmentConfiguration];
  resolvedUserInterfaceStyle = [environmentConfiguration2 resolvedUserInterfaceStyle];

  windowScene = [(DBScreenController *)self windowScene];
  traitOverrides = [windowScene traitOverrides];
  [traitOverrides setNSIntegerValue:resolvedUserInterfaceStyle forTrait:objc_opt_class()];

  environmentConfiguration3 = [(DBScreenController *)self environmentConfiguration];
  liveActivityMonitor = [environmentConfiguration3 liveActivityMonitor];
  [liveActivityMonitor addObserver:self];

  environmentConfiguration4 = [(DBScreenController *)self environmentConfiguration];
  appHistory = [environmentConfiguration4 appHistory];
  environmentConfiguration5 = [(DBScreenController *)self environmentConfiguration];
  navigationStateProvider = [environmentConfiguration5 navigationStateProvider];
  [appHistory addObserver:navigationStateProvider];

  environmentConfiguration6 = [(DBScreenController *)self environmentConfiguration];
  navigationStateProvider2 = [environmentConfiguration6 navigationStateProvider];
  environmentConfiguration7 = [(DBScreenController *)self environmentConfiguration];
  appHistory2 = [environmentConfiguration7 appHistory];
  [navigationStateProvider2 setAppHistoryAppDockProvider:appHistory2];

  [(DBDashboard *)self _updatePasscodeLockToken];
  environmentConfiguration8 = [(DBScreenController *)self environmentConfiguration];
  LODWORD(navigationStateProvider2) = [environmentConfiguration8 supportsGaugeCluster];

  v214 = navigationStateProvider2;
  if (navigationStateProvider2)
  {
    displayInfo = [(DBScreenController *)self displayInfo];
    if (![(DBUISyncSession *)displayInfo supportsDDPContent])
    {
LABEL_5:

      goto LABEL_6;
    }

    environmentConfiguration9 = [(DBScreenController *)self environmentConfiguration];
    uisyncChannel = [environmentConfiguration9 uisyncChannel];

    if (uisyncChannel)
    {
      v30 = [_TtC9DashBoard15DBUISyncSession alloc];
      environmentConfiguration10 = [(DBScreenController *)self environmentConfiguration];
      uisyncChannel2 = [environmentConfiguration10 uisyncChannel];
      environmentConfiguration11 = [(DBScreenController *)self environmentConfiguration];
      vehicleID = [environmentConfiguration11 vehicleID];
      displayInfo2 = [(DBScreenController *)self displayInfo];
      identifier = [displayInfo2 identifier];
      displayInfo = [(DBUISyncSession *)v30 initWithChannel:uisyncChannel2 vehicleID:vehicleID displayID:identifier];

      v37 = [[_TtC9DashBoard30DBDefaultUISyncSessionDelegate alloc] initWithUISyncSession:displayInfo];
      [(DBDashboard *)self setUisyncSessionDelegate:v37];

      environmentConfiguration12 = [(DBScreenController *)self environmentConfiguration];
      uisyncSessionEventDelegate = [environmentConfiguration12 uisyncSessionEventDelegate];
      uisyncSessionDelegate = [(DBDashboard *)self uisyncSessionDelegate];
      [uisyncSessionDelegate setEventDelegate:uisyncSessionEventDelegate];

      environmentConfiguration13 = [(DBScreenController *)self environmentConfiguration];
      [environmentConfiguration13 setUisyncSession:displayInfo];

      goto LABEL_5;
    }
  }

LABEL_6:
  environmentConfiguration14 = [(DBScreenController *)self environmentConfiguration];
  vehicle = [environmentConfiguration14 vehicle];

  if (!vehicle || ([vehicle finishedWelcome], v44 = objc_claimAutoreleasedReturnValue(), v44, !v44))
  {
    v45 = DBLogForCategory(0);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v45, OS_LOG_TYPE_DEFAULT, "Clear start application bundle ID", buf, 2u);
    }

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults removeObjectForKey:@"CARStartApplicationBundleID"];
  }

  v215 = vehicle;
  interestingWindow = [(DBScreenController *)self interestingWindow];
  layoutEngine = [(DBDashboard *)self layoutEngine];
  [layoutEngine areaOfInterestFrameForApplication:0];
  [interestingWindow setFrame:?];

  v49 = [_TtC9DashBoard21DBDashboardMainWindow alloc];
  windowScene2 = [(DBScreenController *)self windowScene];
  layoutEngine2 = [(DBDashboard *)self layoutEngine];
  [layoutEngine2 mainWindowFrame];
  v52 = [(DBDashboardMainWindow *)v49 initWithWindowScene:windowScene2 frame:?];
  mainWindow = self->_mainWindow;
  self->_mainWindow = v52;

  v54 = DBLogForCategory(0);
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    v55 = self->_mainWindow;
    *buf = 138412290;
    v218 = v55;
    _os_log_impl(&dword_248146000, v54, OS_LOG_TYPE_DEFAULT, "Creating new main window: %@", buf, 0xCu);
  }

  v56 = [DBDashboardRootViewController alloc];
  windowScene3 = [(DBScreenController *)self windowScene];
  layoutEngine3 = [(DBDashboard *)self layoutEngine];
  v59 = [(DBDashboardRootViewController *)v56 initWithEnvironment:self windowScene:windowScene3 layoutEngine:layoutEngine3];

  layoutEngine4 = [(DBDashboard *)self layoutEngine];
  [layoutEngine4 rootViewControllerContentInsets];
  [(DBDashboardRootViewController *)v59 setAdditionalSafeAreaInsets:?];

  [(DBDashboardMainWindow *)self->_mainWindow setRootViewController:v59];
  v216 = v59;
  objc_storeStrong(&self->_rootViewController, v59);
  [(DBDashboardMainWindow *)self->_mainWindow setHidden:0];
  v61 = [[DBSiriViewController alloc] initWithEnvironment:self layoutEngine:self->_layoutEngine];
  siriViewController = self->_siriViewController;
  self->_siriViewController = v61;

  [(DBSiriViewController *)self->_siriViewController setFocusMovementActionHandler:self];
  v63 = [MEMORY[0x277D551F8] longPressButtonForIdentifier:6];
  siriButtonSource = self->_siriButtonSource;
  self->_siriButtonSource = v63;

  v65 = objc_alloc_init(MEMORY[0x277D551E8]);
  siriDirectActionSource = self->_siriDirectActionSource;
  self->_siriDirectActionSource = v65;

  v67 = objc_alloc_init(MEMORY[0x277D55220]);
  siriSimpleActivationSource = self->_siriSimpleActivationSource;
  self->_siriSimpleActivationSource = v67;

  self->_currentCornerRadius = 22.0;
  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults2 addObserver:self forKeyPath:@"CARCornerRadius" options:1 context:0];
  v70 = [standardUserDefaults2 objectForKey:@"CARCornerRadius"];

  if (v70)
  {
    [standardUserDefaults2 floatForKey:@"CARCornerRadius"];
    self->_currentCornerRadius = v71;
  }

  v213 = standardUserDefaults2;
  environmentConfiguration15 = [(DBScreenController *)self environmentConfiguration];
  currentViewAreaSupportsUIOutsideSafeArea = [environmentConfiguration15 currentViewAreaSupportsUIOutsideSafeArea];

  if (currentViewAreaSupportsUIOutsideSafeArea)
  {
    [(DBDashboardRootViewController *)self->_rootViewController setContentCornerRadius:self->_currentCornerRadius];
  }

  cornerRadiusWindow = [(DBScreenController *)self cornerRadiusWindow];
  layoutEngine5 = [(DBDashboard *)self layoutEngine];
  [layoutEngine5 cornerRadiusWindowFrame];
  [cornerRadiusWindow setFrame:?];

  cornerRadiusWindow2 = [(DBScreenController *)self cornerRadiusWindow];
  [cornerRadiusWindow2 setCornerRadius:self->_currentCornerRadius];

  layer = [(DBDashboardMainWindow *)self->_mainWindow layer];
  [layer setCornerCurve:*MEMORY[0x277CDA138]];

  [(DBDashboardMainWindow *)self->_mainWindow setClipsToBounds:1];
  [(DBDashboard *)self _initializeWallpaper];
  environmentConfiguration16 = [(DBScreenController *)self environmentConfiguration];
  themeController = [environmentConfiguration16 themeController];
  [themeController addObserver:self];

  v80 = objc_alloc_init(DBDashboardWorkspaceStateResolver);
  v81 = [DBDashboardWorkspaceOwner alloc];
  defaultSceneWorkspaceIdentifier = [(DBScreenController *)self defaultSceneWorkspaceIdentifier];
  v212 = v80;
  v83 = [(DBDashboardWorkspaceOwner *)v81 initWithStateResolver:v80 environment:self sceneWorkspaceIdentifier:defaultSceneWorkspaceIdentifier rootViewController:v59 siriViewController:self->_siriViewController];
  workspaceOwner = self->_workspaceOwner;
  self->_workspaceOwner = v83;

  v85 = [[DBWorkspace alloc] initWithOwner:self->_workspaceOwner];
  workspace = self->_workspace;
  self->_workspace = v85;

  [(DBDashboardWorkspaceOwner *)self->_workspaceOwner setWorkspace:self->_workspace];
  [(DBDashboardWorkspaceOwner *)self->_workspaceOwner setFocusMovementActionHandler:self];
  v87 = self->_workspace;
  environmentConfiguration17 = [(DBScreenController *)self environmentConfiguration];
  appHistory3 = [environmentConfiguration17 appHistory];
  [(DBWorkspace *)v87 addObserver:appHistory3];

  [(DBWorkspace *)self->_workspace addObserver:self];
  [(DBDashboard *)self _setupDock];
  [(DBDashboard *)self _updateCornerRadiusVisibility];
  dockController = [(DBDashboard *)self dockController];
  [dockController addDockObserver:self->_rootViewController];

  v91 = self->_siriViewController;
  dockController2 = [(DBDashboard *)self dockController];
  [(DBSiriViewController *)v91 setIntentDelegate:dockController2];

  homeViewController = [(DBDashboardRootViewController *)v59 homeViewController];
  dockController3 = [(DBDashboard *)self dockController];
  [homeViewController addPageChangeObserver:dockController3];

  dockController4 = [(DBDashboard *)self dockController];
  [(DBDashboardRootViewController *)v59 addViewStateObserver:dockController4];

  homeViewController2 = [(DBDashboardRootViewController *)v59 homeViewController];
  [homeViewController2 addPageChangeObserver:self->_dashboardStateProvider];

  v97 = self->_workspace;
  homeViewController3 = [(DBDashboardRootViewController *)v59 homeViewController];
  [(DBWorkspace *)v97 addObserver:homeViewController3];

  v99 = [DBLockOutController alloc];
  windowScene4 = [(DBScreenController *)self windowScene];
  environmentConfiguration18 = [(DBScreenController *)self environmentConfiguration];
  v102 = [(DBLockOutController *)v99 initWithWindowScene:windowScene4 environmentConfiguration:environmentConfiguration18 dashboardStateProvider:self->_dashboardStateProvider delegate:self];
  lockOutController = self->_lockOutController;
  self->_lockOutController = v102;

  v104 = [_TtC9DashBoard20DBNotificationWindow alloc];
  windowScene5 = [(DBScreenController *)self windowScene];
  layoutEngine6 = [(DBDashboard *)self layoutEngine];
  [layoutEngine6 notificationWindowFrame];
  v107 = [(DBNotificationWindow *)v104 initWithWindowScene:windowScene5 frame:?];
  notificationWindow = self->_notificationWindow;
  self->_notificationWindow = v107;

  layer2 = [(DBNotificationWindow *)self->_notificationWindow layer];
  [layer2 setMasksToBounds:1];

  [(DBDashboard *)self _setupVoiceControlOverlayController];
  v110 = [DBNotificationViewController alloc];
  layoutEngine7 = [(DBDashboard *)self layoutEngine];
  v112 = [(DBNotificationViewController *)v110 initWithEnvironment:self layoutEngine:layoutEngine7 delegate:self];
  notificationViewController = self->_notificationViewController;
  self->_notificationViewController = v112;

  [(DBNotificationWindow *)self->_notificationWindow setRootViewController:self->_notificationViewController];
  [(DBDashboardWorkspaceOwner *)self->_workspaceOwner setNotificationSuspender:self->_notificationViewController];
  environmentConfiguration19 = [(DBScreenController *)self environmentConfiguration];
  systemUILayout = [environmentConfiguration19 systemUILayout];

  if (systemUILayout)
  {
    environmentConfiguration20 = [(DBScreenController *)self environmentConfiguration];
    systemUILayout2 = [environmentConfiguration20 systemUILayout];

    if ([systemUILayout2 hasSecondaryContent])
    {
      [systemUILayout2 secondaryContentFrame];
      if (!CGRectEqualToRect(v220, *MEMORY[0x277CBF3A0]))
      {
        [systemUILayout2 secondaryContentFrame];
        v119 = v118;
        v121 = v120;
        v123 = v122;
        v125 = v124;
        v126 = [_TtC9DashBoard26DBDynamicContentController alloc];
        windowScene6 = [(DBScreenController *)self windowScene];
        layoutEngine8 = [(DBDashboard *)self layoutEngine];
        v125 = [(DBDynamicContentController *)v126 initWithWindowScene:windowScene6 windowFrame:layoutEngine8 layoutEngine:self environment:v119, v121, v123, v125];
        dynamicContentController = self->_dynamicContentController;
        self->_dynamicContentController = v125;

        [(DBDynamicContentController *)self->_dynamicContentController setCornerRadius:self->_currentCornerRadius];
      }
    }

    environmentConfiguration21 = [(DBScreenController *)self environmentConfiguration];
    systemUILayout3 = [environmentConfiguration21 systemUILayout];
    persistentElements = [systemUILayout3 persistentElements];

    if (persistentElements)
    {
      v134 = objc_alloc_init(_TtC9DashBoard27DBPersistentElementsManager);
      persistentElementsManager = self->_persistentElementsManager;
      self->_persistentElementsManager = v134;

      persistentElementsManager = [(DBDashboard *)self persistentElementsManager];
      [persistentElementsManager setDelegate:self];

      persistentElementsManager2 = [(DBDashboard *)self persistentElementsManager];
      environmentConfiguration22 = [(DBScreenController *)self environmentConfiguration];
      systemUILayout4 = [environmentConfiguration22 systemUILayout];
      persistentElements2 = [systemUILayout4 persistentElements];
      [persistentElementsManager2 updateWithPersistentElements:persistentElements2];

      dockController5 = [(DBDashboard *)self dockController];
      persistentElementsManager3 = [(DBDashboard *)self persistentElementsManager];
      [dockController5 setPersistentElementsManager:persistentElementsManager3];
    }
  }

  [(DBDashboard *)self _setInitialFocusOwner];
  environmentConfiguration23 = [(DBScreenController *)self environmentConfiguration];
  session = [environmentConfiguration23 session];

  environmentConfiguration24 = [(DBScreenController *)self environmentConfiguration];
  appHistory4 = [environmentConfiguration24 appHistory];
  environmentConfiguration25 = [(DBScreenController *)self environmentConfiguration];
  [appHistory4 _sessionDidConnect:session environmentConfiguration:environmentConfiguration25];

  v148 = [DBNowPlayingObserver alloc];
  environmentConfiguration26 = [(DBScreenController *)self environmentConfiguration];
  v150 = [(DBNowPlayingObserver *)v148 initWithEnvironmentConfiguration:environmentConfiguration26];
  nowPlayingObserver = self->_nowPlayingObserver;
  self->_nowPlayingObserver = v150;

  [(DBNotificationWindow *)self->_notificationWindow setHidden:0];
  v152 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__homeTapped_];
  [v152 setAllowedPressTypes:&unk_285AA48F8];
  mEMORY[0x277D76330] = [MEMORY[0x277D76330] sharedInstance];
  displayConfiguration = [(DBDashboard *)self displayConfiguration];
  identity = [displayConfiguration identity];
  v211 = v152;
  [mEMORY[0x277D76330] addGestureRecognizer:v152 toDisplayWithIdentity:identity];

  v156 = [[_DBLongPressGestureRecognizer alloc] initWithTarget:self action:sel__backLongPressed_];
  [(_DBLongPressGestureRecognizer *)v156 setAllowedPressTypes:&unk_285AA4910];
  mEMORY[0x277D76330]2 = [MEMORY[0x277D76330] sharedInstance];
  displayConfiguration2 = [(DBDashboard *)self displayConfiguration];
  identity2 = [displayConfiguration2 identity];
  [mEMORY[0x277D76330]2 addGestureRecognizer:v156 toDisplayWithIdentity:identity2];

  v160 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__pointerSelectionPressed_];
  [v160 setAllowedPressTypes:&unk_285AA4928];
  mEMORY[0x277D76330]3 = [MEMORY[0x277D76330] sharedInstance];
  displayConfiguration3 = [(DBDashboard *)self displayConfiguration];
  identity3 = [displayConfiguration3 identity];
  [mEMORY[0x277D76330]3 addGestureRecognizer:v160 toDisplayWithIdentity:identity3];

  v164 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__acBackPressed_];
  [v164 setAllowedPressTypes:&unk_285AA4940];
  mEMORY[0x277D76330]4 = [MEMORY[0x277D76330] sharedInstance];
  displayConfiguration4 = [(DBDashboard *)self displayConfiguration];
  identity4 = [displayConfiguration4 identity];
  [mEMORY[0x277D76330]4 addGestureRecognizer:v164 toDisplayWithIdentity:identity4];

  mEMORY[0x277CF9020] = [MEMORY[0x277CF9020] sharedInstance];
  [mEMORY[0x277CF9020] addObserver:self notifyIfNeeded:1];

  v169 = [DBUserAlertServer alloc];
  [(DBDashboard *)self statusBarInsets];
  v171 = v170;
  v173 = v172;
  v175 = v174;
  v177 = v176;
  environmentConfiguration27 = [(DBScreenController *)self environmentConfiguration];
  v177 = [(DBUserAlertServer *)v169 initWithSafeAreaInsets:environmentConfiguration27 environmentConfiguration:v171, v173, v175, v177];
  userAlertServer = self->_userAlertServer;
  self->_userAlertServer = v177;

  userAlertServer = [(DBDashboard *)self userAlertServer];
  [userAlertServer setSystemPresenter:self];

  userAlertServer2 = [(DBDashboard *)self userAlertServer];
  [userAlertServer2 setAppPresenter:self];

  userAlertServer3 = [(DBDashboard *)self userAlertServer];
  workspaceOwner = [(DBDashboard *)self workspaceOwner];
  [workspaceOwner setUserAlertServer:userAlertServer3];

  if (v214)
  {
    displayInfo3 = [(DBScreenController *)self displayInfo];
    supportsDDPContent = [displayInfo3 supportsDDPContent];

    if (supportsDDPContent)
    {
      v187 = [objc_alloc(MEMORY[0x277CF9330]) initWithDelegate:self];
      punchThroughService = self->_punchThroughService;
      self->_punchThroughService = v187;

      v189 = [MEMORY[0x277CF32D0] activateManualDomain:@"com.apple.CarPlay.PunchThrough"];
      punchThroughServiceDomainActivationToken = self->_punchThroughServiceDomainActivationToken;
      self->_punchThroughServiceDomainActivationToken = v189;
    }
  }

  v191 = DBLogForCategory(0);
  if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248146000, v191, OS_LOG_TYPE_DEFAULT, "Taking preventSpuriousScreenUndimToken", buf, 2u);
  }

  v192 = objc_alloc_init(MEMORY[0x277D66B30]);
  v193 = [v192 preventSpuriousScreenUndimWithReason:@"CarPlay Active"];
  [(DBDashboard *)self setPreventSpuriousScreenUndimToken:v193];

  [v192 invalidate];
  self->_connectedNotifyToken = -1;
  notify_register_check("com.apple.carplay.connected", &self->_connectedNotifyToken);
  connectedNotifyToken = self->_connectedNotifyToken;
  if (connectedNotifyToken != -1)
  {
    notify_set_state(connectedNotifyToken, 1uLL);
    notify_post("com.apple.carplay.connected");
  }

  [(DBDashboard *)self _updateUserInterfaceStyle];
  environmentConfiguration28 = [(DBScreenController *)self environmentConfiguration];
  wallpaperPreferences = [environmentConfiguration28 wallpaperPreferences];
  currentWallpaper = [wallpaperPreferences currentWallpaper];
  traits = [currentWallpaper traits];
  [(DBDashboard *)self _updateTraitOverridesWithWallpaperTraits:traits];

  dockController6 = [(DBDashboard *)self dockController];
  [dockController6 updateAppearanceForWallpaper];

  kdebug_trace();
  environmentConfiguration29 = [(DBScreenController *)self environmentConfiguration];
  LODWORD(environmentConfiguration28) = [environmentConfiguration29 isVehicleDataSession];

  if (environmentConfiguration28)
  {
    [(DBDashboard *)self _setupCameraOverlayController];
    v201 = objc_alloc_init(_TtC9DashBoard15DBCAFCarManager);
    carManager = self->_carManager;
    self->_carManager = v201;

    [(DBCAFCarManager *)self->_carManager setDelegate:self];
  }

  v203 = objc_alloc_init(MEMORY[0x277CF9388]);
  volumeNotificationService = self->_volumeNotificationService;
  self->_volumeNotificationService = v203;

  [(CRSUIVolumeNotificationService *)self->_volumeNotificationService addObserver:self];
  v205 = [MEMORY[0x277CF32D0] activateManualDomain:@"com.apple.CarPlay.VolumeNotification"];
  volumeNotificationServiceDomainActivationToken = self->_volumeNotificationServiceDomainActivationToken;
  self->_volumeNotificationServiceDomainActivationToken = v205;

  [(DBLockOutController *)self->_lockOutController updateLockOutModeAnimated:1 takeScreen:1];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__updateWallpaper name:*MEMORY[0x277CF91E8] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__screenDidBecomeUnavailable_ name:*MEMORY[0x277CF8948] object:session];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__screenDidBecomeAvailable_ name:*MEMORY[0x277CF8940] object:session];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, ResetCarPlayUSB, @"ResetUSBHostToDeviceModeConnectionDarwinNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  [(DBDashboardStateProvider *)self->_dashboardStateProvider setConnectionReady:1];
  [(DBDashboard *)self _setDidFinishWelcomeIfNeeded];
  os_unfair_lock_lock(&self->_lock);
  self->_lock_hasHandledConnect = 1;
  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  preventPasscodeLockToken = [(DBDashboard *)self preventPasscodeLockToken];

  if (preventPasscodeLockToken)
  {
    v4 = DBLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [DBDashboard dealloc];
    }

    preventPasscodeLockToken2 = [(DBDashboard *)self preventPasscodeLockToken];
    [preventPasscodeLockToken2 invalidate];
  }

  preventSpuriousScreenUndimToken = [(DBDashboard *)self preventSpuriousScreenUndimToken];

  if (preventSpuriousScreenUndimToken)
  {
    v7 = DBLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [DBDashboard dealloc];
    }

    preventSpuriousScreenUndimToken2 = [(DBDashboard *)self preventSpuriousScreenUndimToken];
    [preventSpuriousScreenUndimToken2 invalidate];
  }

  oemScreenLayoutElementAssertion = [(DBDashboard *)self oemScreenLayoutElementAssertion];

  if (oemScreenLayoutElementAssertion)
  {
    v10 = DBLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [DBDashboard dealloc];
    }

    oemScreenLayoutElementAssertion2 = [(DBDashboard *)self oemScreenLayoutElementAssertion];
    [oemScreenLayoutElementAssertion2 invalidate];
  }

  v12.receiver = self;
  v12.super_class = DBDashboard;
  [(DBDashboard *)&v12 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"CARCornerRadius"])
  {
    v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];

    [v13 floatValue];
    self->_currentCornerRadius = v14;

    cornerRadiusWindow = [(DBScreenController *)self cornerRadiusWindow];
    [cornerRadiusWindow setCornerRadius:self->_currentCornerRadius];

    [(DBDashboard *)self _updateCornerRadiusVisibility];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = DBDashboard;
    [(DBDashboard *)&v16 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (BOOL)handleACHomeUp:(unint64_t)up
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:up];
  v5 = [DBEvent eventWithType:1 context:v4];
  [(DBDashboard *)self _handleHomeEvent:v5];

  return 1;
}

- (void)handleLongBackPress
{
  v3 = [DBEvent eventWithType:1 context:&unk_285AA4658];
  [(DBDashboard *)self _handleHomeEvent:v3];
}

- (void)handleMainAssetForegrounded
{
  lockOutController = [(DBDashboard *)self lockOutController];
  [lockOutController handleMainAssetForegrounded];
}

- (void)handleAllAssetsForegrounded
{
  lockOutController = [(DBDashboard *)self lockOutController];
  [lockOutController handleAllAssetsForegrounded];
}

- (void)_setupDNDStateService
{
  dndStateService = [(DBDashboard *)self dndStateService];

  if (!dndStateService)
  {
    v4 = [MEMORY[0x277D05AB0] serviceForClientIdentifier:@"com.apple.carplayapp"];
    dndStateService = self->_dndStateService;
    self->_dndStateService = v4;

    [(DNDStateService *)self->_dndStateService addStateUpdateListener:self withCompletionHandler:&__block_literal_global_5];

    [(DBDashboard *)self _publishInitialFocusState];
  }
}

void __36__DBDashboard__setupDNDStateService__block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if (v4 || (a2 & 1) == 0)
  {
    v5 = DBLogForCategory(5uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __36__DBDashboard__setupDNDStateService__block_invoke_cold_1();
    }
  }
}

- (void)_publishInitialFocusState
{
  dndStateService = self->_dndStateService;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__DBDashboard__publishInitialFocusState__block_invoke;
  v3[3] = &unk_278F01FA8;
  v3[4] = self;
  [(DNDStateService *)dndStateService queryCurrentStateWithCompletionHandler:v3];
}

void __40__DBDashboard__publishInitialFocusState__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = DBLogForCategory(5uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __40__DBDashboard__publishInitialFocusState__block_invoke_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) _focusStatusUpdated:a2];
  }
}

- (void)_focusStatusUpdated:(id)updated
{
  dockController = self->_dockController;
  updatedCopy = updated;
  [(DBDockController *)dockController focusStatusUpdatedWithState:updatedCopy];
  activeModeIdentifier = [updatedCopy activeModeIdentifier];

  v7 = DBLogForCategory(5uLL);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (activeModeIdentifier)
  {
    if (v8)
    {
      v12 = 0;
      v9 = "DND is active.";
      v10 = &v12;
LABEL_6:
      _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    }
  }

  else if (v8)
  {
    v11 = 0;
    v9 = "DND is inactive.";
    v10 = &v11;
    goto LABEL_6;
  }

  [(DBDashboard *)self setDndActive:activeModeIdentifier != 0];
}

- (void)stateService:(id)service didReceiveDoNotDisturbStateUpdate:(id)update
{
  state = [update state];
  [(DBDashboard *)self _focusStatusUpdated:state];
}

- (void)_setupDock
{
  v3 = MEMORY[0x277CCACA8];
  displayIdentity = [(DBDashboard *)self displayIdentity];
  v5 = [v3 stringWithFormat:@"Dock-%@", displayIdentity];

  localSceneWorkspace = [(DBDashboard *)self localSceneWorkspace];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __25__DBDashboard__setupDock__block_invoke;
  v19[3] = &unk_278F01E30;
  v7 = v5;
  v20 = v7;
  v8 = [localSceneWorkspace createScene:v19];

  if (v8)
  {
    [(DBDashboard *)self setDockLocalScene:v8];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __25__DBDashboard__setupDock__block_invoke_2;
    v18[3] = &unk_278F01FF8;
    v18[4] = self;
    [v8 configureParameters:v18];
    [v8 addObserver:self];
    v9 = [_TtC9DashBoard16DBDockController alloc];
    windowScene = [(DBScreenController *)self windowScene];
    layoutEngine = [(DBDashboard *)self layoutEngine];
    rootViewController = [(DBDashboard *)self rootViewController];
    homeViewController = [rootViewController homeViewController];
    v14 = [(DBDockController *)v9 initWithWindowScene:windowScene dockLocalScene:v8 layoutEngine:layoutEngine iconProvider:homeViewController environment:self];
    dockController = self->_dockController;
    self->_dockController = v14;

    dockController = [(DBDashboard *)self dockController];
    [dockController updateLayoutForCurrentViewArea];

    climateOverlayController = [(DBDashboard *)self climateOverlayController];
    [climateOverlayController updateLayoutForCurrentViewArea];
  }

  else
  {
    climateOverlayController = DBLogForCategory(0);
    if (os_log_type_enabled(climateOverlayController, OS_LOG_TYPE_FAULT))
    {
      [DBDashboard _setupDock];
    }
  }

  [(DBDashboard *)self _publishInitialFocusState];
}

void __25__DBDashboard__setupDock__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setIdentifier:v2];
  v4 = [MEMORY[0x277D0ADA8] localIdentity];
  [v3 setClientIdentity:v4];

  v5 = [MEMORY[0x277D751A0] specification];
  [v3 setSpecification:v5];
}

uint64_t __25__DBDashboard__setupDock__block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __25__DBDashboard__setupDock__block_invoke_3;
  v3[3] = &unk_278F01FD0;
  v3[4] = *(a1 + 32);
  return [a2 updateSettingsWithBlock:v3];
}

void __25__DBDashboard__setupDock__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 displayConfiguration];
  [v6 setDisplayConfiguration:v4];

  v5 = [*(a1 + 32) layoutEngine];
  [v5 dockHostSceneFrame];
  [v6 setFrame:?];

  [v6 setInterfaceOrientation:1];
  [v6 setStatusBarDisabled:1];
  [v6 setForeground:1];
}

- (void)_handleInterruptPunchthroughEvent:(id)event
{
  v21 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  workspace = [(DBDashboard *)self workspace];
  state = [workspace state];
  stackedEntity = [state stackedEntity];

  workspaceOwner = [(DBDashboard *)self workspaceOwner];
  [workspaceOwner handleEvent:eventCopy];

  v9 = objc_opt_class();
  if ([v9 isEqual:objc_opt_class()])
  {
    v10 = +[_TtC9DashBoard14DBAssetLibrary shared];
    identifier = [stackedEntity identifier];
    v12 = [v10 shouldUseRequestTemporaryContentWithIdentifier:identifier];

    if (v12)
    {
      v13 = DBLogForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [stackedEntity identifier];
        v19 = 138543362;
        v20 = identifier2;
        _os_log_impl(&dword_248146000, v13, OS_LOG_TYPE_DEFAULT, "Set interrupted PT identifier to nil. Using request temporary content for: %{public}@", &v19, 0xCu);
      }

      interruptedPunchthroughIdentifier = self->_interruptedPunchthroughIdentifier;
      self->_interruptedPunchthroughIdentifier = 0;
    }

    else
    {
      identifier3 = [stackedEntity identifier];
      v17 = self->_interruptedPunchthroughIdentifier;
      self->_interruptedPunchthroughIdentifier = identifier3;

      interruptedPunchthroughIdentifier = DBLogForCategory(0);
      if (os_log_type_enabled(interruptedPunchthroughIdentifier, OS_LOG_TYPE_DEFAULT))
      {
        v18 = self->_interruptedPunchthroughIdentifier;
        v19 = 138543362;
        v20 = v18;
        _os_log_impl(&dword_248146000, interruptedPunchthroughIdentifier, OS_LOG_TYPE_DEFAULT, "PT Interrupted. Identifier of interrupted PT: %{public}@", &v19, 0xCu);
      }
    }
  }
}

- (void)_handleSmartStackConfigurationEvent:(id)event
{
  context = [event context];
  [(DBDashboard *)self presentSmartStackConfiguratorWithConfiguration:context];
}

- (void)presentSmartStackConfiguratorWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  alertTitle = [configurationCopy alertTitle];
  alertSubtitle = [configurationCopy alertSubtitle];
  v7 = [MEMORY[0x277D75110] alertControllerWithTitle:alertTitle message:alertSubtitle preferredStyle:0];
  objc_initWeak(&location, self);
  v8 = MEMORY[0x277D750F8];
  actionTitle = [configurationCopy actionTitle];
  v24 = alertTitle;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __62__DBDashboard_presentSmartStackConfiguratorWithConfiguration___block_invoke;
  v27[3] = &unk_278F02020;
  objc_copyWeak(&v29, &location);
  v10 = configurationCopy;
  v28 = v10;
  v11 = [v8 actionWithTitle:actionTitle style:0 handler:v27];

  v12 = MEMORY[0x277D750F8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
  v14 = [v13 localizedStringForKey:@"SMARTSTACK_ACTIONSHEET_CANCEL" value:&stru_285A57218 table:@"CarPlayApp"];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __62__DBDashboard_presentSmartStackConfiguratorWithConfiguration___block_invoke_2;
  v25[3] = &unk_278F02048;
  objc_copyWeak(&v26, &location);
  v15 = [v12 actionWithTitle:v14 style:1 handler:v25];

  [v7 addAction:v11];
  [v7 addAction:v15];
  notificationViewController = [(DBDashboard *)self notificationViewController];
  [notificationViewController setSuspended:1 forReason:@"DBNotificationSuspensionReasonLiveActivityConfigurator"];

  notificationViewController2 = [(DBDashboard *)self notificationViewController];
  [notificationViewController2 presentViewController:v7 animated:1 completion:0];

  focusController = [(DBDashboard *)self focusController];
  notificationWindow = [(DBDashboard *)self notificationWindow];
  v20 = [focusController deferFocusToWindow:notificationWindow priority:5 reason:@"notification"];

  [(DBDashboard *)self setNotificationFocusAssertion:v20];
  v21 = MEMORY[0x277D75518];
  notificationWindow2 = [(DBDashboard *)self notificationWindow];
  v23 = [v21 focusSystemForEnvironment:notificationWindow2];
  [v23 setNeedsFocusUpdate];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

void __62__DBDashboard_presentSmartStackConfiguratorWithConfiguration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) action];
  v2[2]();

  [WeakRetained setNotificationFocusAssertion:0];
  v3 = [WeakRetained notificationViewController];
  [v3 setSuspended:0 forReason:@"DBNotificationSuspensionReasonLiveActivityConfigurator"];
}

void __62__DBDashboard_presentSmartStackConfiguratorWithConfiguration___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNotificationFocusAssertion:0];
  v1 = [WeakRetained notificationViewController];
  [v1 setSuspended:0 forReason:@"DBNotificationSuspensionReasonLiveActivityConfigurator"];
}

- (void)_handleHomeEvent:(id)event
{
  eventCopy = event;
  notificationViewController = [(DBDashboard *)self notificationViewController];
  handleHomeEvent = [notificationViewController handleHomeEvent];

  if ((handleHomeEvent & 1) == 0)
  {
    workspaceOwner = [(DBDashboard *)self workspaceOwner];
    [workspaceOwner handleEvent:eventCopy];
  }
}

- (void)_handleReturnToHomeScreenEvent:(id)event
{
  v4 = DBLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "Sending return to home screen event", v6, 2u);
  }

  v5 = objc_alloc_init(DBMutableWorkspaceStateChangeRequest);
  [(DBMutableWorkspaceStateChangeRequest *)v5 activateHomeScreen];
  [(DBWorkspace *)self->_workspace requestStateChange:v5];
}

- (void)_handleOpenApplicationEvent:(id)event
{
  v54[2] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  objc_opt_class();
  context = [eventCopy context];
  if (context && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = context;
  }

  else
  {
    v6 = 0;
  }

  application = [v6 application];
  activationSettings = [v6 activationSettings];
  activationSettings2 = [v6 activationSettings];
  launchSource = [activationSettings2 launchSource];

  appPolicy = [application appPolicy];
  v12 = +[DBApplicationController sharedInstance];
  v13 = [v12 preflightRequiredForApplication:application];

  if (v13)
  {
    IsUserInitiated = DBLaunchSourceIsUserInitiated(launchSource);
    v15 = DBLogForCategory(0);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (IsUserInitiated)
    {
      if (v16)
      {
        [DBDashboard _handleOpenApplicationEvent:application];
      }

      [(DBDashboard *)self _presentPrivacyDisclosureAlertForApplication:application];
      v17 = DBLogForCategory(0);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        goto LABEL_27;
      }

      *buf = 0;
      v18 = "Taking screen for alert";
    }

    else
    {
      if (v16)
      {
        [(DBDashboard *)application _handleOpenApplicationEvent:launchSource];
      }

      v17 = DBLogForCategory(0);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        goto LABEL_27;
      }

      *buf = 0;
      v18 = "Taking screen for ignored open application request";
    }

    _os_log_impl(&dword_248146000, v17, OS_LOG_TYPE_INFO, v18, buf, 2u);
LABEL_27:

    v23 = objc_alloc_init(DBMutableWorkspaceStateChangeRequest);
    [(DBWorkspace *)self->_workspace requestStateChange:v23];
    environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
    session = [environmentConfiguration session];
    [session takeScreenForClient:@"com.apple.CarPlayApp" reason:@"User activated app"];

    goto LABEL_28;
  }

  if (application && [application isLockedOrHidden])
  {
    v19 = DBLogForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(DBDashboard *)application _handleOpenApplicationEvent:launchSource];
    }

    v20 = DBLogForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v20, OS_LOG_TYPE_INFO, "Taking screen for ignored open application request", buf, 2u);
    }

    environmentConfiguration2 = [(DBScreenController *)self environmentConfiguration];
    session2 = [environmentConfiguration2 session];
    [session2 takeScreenForClient:@"com.apple.CarPlayApp" reason:@"User activated app"];
  }

  else if ([appPolicy launchUsingSiri] && (objc_msgSend(appPolicy, "canDisplayOnCarScreen") & 1) == 0)
  {
    v53[0] = @"__bundleId";
    bundleIdentifier = [application bundleIdentifier];
    v53[1] = @"__supportsCarFullScreen";
    v54[0] = bundleIdentifier;
    v33 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(appPolicy, "canDisplayOnCarScreen")}];
    v54[1] = v33;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];

    siriActivationOptions = [appPolicy siriActivationOptions];
    v36 = siriActivationOptions;
    if (siriActivationOptions)
    {
      v37 = [siriActivationOptions mutableCopy];
      [v37 addEntriesFromDictionary:v34];
    }

    else
    {
      v37 = v34;
    }

    v39 = DBLogForCategory(0);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier2 = [application bundleIdentifier];
      *buf = 138543362;
      v52 = bundleIdentifier2;
      _os_log_impl(&dword_248146000, v39, OS_LOG_TYPE_DEFAULT, "Sending Siri direct action for app: %{public}@", buf, 0xCu);
    }

    v41 = DBLogForCategory(0);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v52 = v37;
      _os_log_impl(&dword_248146000, v41, OS_LOG_TYPE_INFO, "Direct action context payload: %@", buf, 0xCu);
    }

    v42 = [objc_alloc(MEMORY[0x277D551E0]) initWithPayload:v37];
    siriDirectActionSource = [(DBDashboard *)self siriDirectActionSource];
    [siriDirectActionSource activateWithContext:v42];
  }

  else if ([application requiresBackgroundURLDelivery])
  {
    [(DBDashboard *)self _handleBackgroundURLDeliveryForLaunchInfo:v6];
  }

  else if (application)
  {
    rootViewController = [(DBDashboard *)self rootViewController];
    homeViewController = [rootViewController homeViewController];

    if (launchSource == 7 && homeViewController && ([application bundleIdentifier], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(homeViewController, "isIconVisibleForIdentifier:", v27), v27, (v28 & 1) == 0))
    {
      v29 = DBLogForCategory(0);
      if (os_log_type_enabled(&v29->super.super, OS_LOG_TYPE_ERROR))
      {
        [DBDashboard _handleOpenApplicationEvent:];
      }
    }

    else
    {
      v29 = objc_alloc_init(DBMutableWorkspaceStateChangeRequest);
      [(DBMutableWorkspaceStateChangeRequest *)v29 activateApplication:application withSettings:activationSettings];
      objc_initWeak(buf, self);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __43__DBDashboard__handleOpenApplicationEvent___block_invoke;
      aBlock[3] = &unk_278F02070;
      objc_copyWeak(&v50, buf);
      v30 = activationSettings;
      v49 = v30;
      v31 = _Block_copy(aBlock);
      if ([(DBDashboard *)self isScreenAvailable])
      {
        v31[2](v31);
      }

      else
      {
        [(DBWorkspaceStateChangeRequest *)v29 setCompletionHandler:v31];
      }

      [(DBWorkspace *)self->_workspace requestStateChange:v29];
      if ([v30 launchSource] == 2)
      {
        environmentConfiguration3 = [(DBScreenController *)self environmentConfiguration];
        appHistory = [environmentConfiguration3 appHistory];
        [appHistory nowPlayingIconTapped];
      }

      v46 = +[DBAppHistory contextForApplicationCategory:](DBAppHistory, "contextForApplicationCategory:", [appPolicy applicationCategory]);
      if (v46)
      {
        [(DBDashboard *)self _notifyAccessoryIfNeededWithUIContext:v46];
      }

      objc_destroyWeak(&v50);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v38 = DBLogForCategory(0);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [DBDashboard _handleOpenApplicationEvent:];
    }
  }

LABEL_28:
}

void __43__DBDashboard__handleOpenApplicationEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) takeScreen];
  v4 = DBLogForCategory(0);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_INFO, "Taking screen for app launch", buf, 2u);
    }

    v4 = [WeakRetained environmentConfiguration];
    v6 = [v4 session];
    [v6 takeScreenForClient:@"com.apple.CarPlayApp" reason:@"User activated app"];
  }

  else if (v5)
  {
    *v7 = 0;
    _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_INFO, "Not taking screen for app launch", v7, 2u);
  }
}

- (void)_handleBackgroundURLDeliveryForLaunchInfo:(id)info
{
  v30 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v4 = DBLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    application = [infoCopy application];
    *buf = 138412290;
    v29 = application;
    _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "Starting background launch for app: %@", buf, 0xCu);
  }

  activationSettings = [infoCopy activationSettings];
  v7 = [activationSettings url];

  v8 = DBLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v29 = v7;
    _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_INFO, "Launch URL: %@", buf, 0xCu);
  }

  activationSettings2 = [infoCopy activationSettings];
  actions = [activationSettings2 actions];

  v11 = DBLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v29 = actions;
    _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_INFO, "Launch actions: %@", buf, 0xCu);
  }

  v12 = MEMORY[0x277D46F60];
  application2 = [infoCopy application];
  info = [application2 info];
  applicationIdentity = [info applicationIdentity];
  v16 = [v12 identityForLSApplicationIdentity:applicationIdentity];

  v17 = [objc_alloc(MEMORY[0x277D0AA70]) initWithProcessIdentity:v16 executionContextProvider:&__block_literal_global_466];
  objc_initWeak(buf, v17);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __57__DBDashboard__handleBackgroundURLDeliveryForLaunchInfo___block_invoke_2;
  v22[3] = &unk_278F02108;
  objc_copyWeak(&v27, buf);
  v18 = v7;
  v23 = v18;
  v19 = infoCopy;
  v24 = v19;
  v20 = actions;
  v25 = v20;
  v21 = v16;
  v26 = v21;
  [v17 setCompletionBlock:v22];
  [v17 begin];

  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);
}

id __57__DBDashboard__handleBackgroundURLDeliveryForLaunchInfo___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277D0AAA8]);
  [v0 setLaunchIntent:2];

  return v0;
}

void __57__DBDashboard__handleBackgroundURLDeliveryForLaunchInfo___block_invoke_2(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = DBLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromBOOL();
    *buf = 138412290;
    v49 = v3;
    _os_log_impl(&dword_248146000, v2, OS_LOG_TYPE_DEFAULT, "Launch transaction completed with success: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = [WeakRetained process];

  if (v5)
  {
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    if (*(a1 + 32))
    {
      v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v9 = [v8 BOOLForKey:@"SendOriginatingProcessWithURLAction"];

      v10 = [MEMORY[0x277CF0CD0] processHandle];
      if (v9)
      {
        objc_opt_class();
        v11 = [*(a1 + 40) activationSettings];
        v12 = [v11 clientProcess];
        if (v12 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v14 = [v13 handle];

        v10 = v14;
      }

      v15 = [objc_alloc(MEMORY[0x277D757D0]) initWithURL:*(a1 + 32) workspaceOriginatingProcess:v10];
      v16 = DBLogForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v15;
        _os_log_impl(&dword_248146000, v16, OS_LOG_TYPE_DEFAULT, "Creating open url action: %@", buf, 0xCu);
      }

      [v6 addObject:v15];
    }

    v17 = *(a1 + 48);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __57__DBDashboard__handleBackgroundURLDeliveryForLaunchInfo___block_invoke_475;
    v45[3] = &unk_278F020B8;
    v18 = v6;
    v46 = v18;
    v19 = v7;
    v47 = v19;
    [v17 enumerateObjectsUsingBlock:v45];
    if ([v18 count])
    {
      v20 = [v5 workspace];
      if (v20)
      {
        v21 = DBLogForCategory(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v18 count];
          *buf = 134217984;
          v49 = v22;
          _os_log_impl(&dword_248146000, v21, OS_LOG_TYPE_DEFAULT, "Sending %lu actions to the workspace", buf, 0xCu);
        }

        [v20 sendActions:v18];
      }
    }

    if (![v19 count])
    {
      goto LABEL_32;
    }

    v23 = [MEMORY[0x277D0AAD8] sharedInstance];
    v24 = [v23 sceneWithIdentifier:@"com.apple.CarPlayApp.url-delivery"];

    if (v24)
    {
      v25 = [v24 clientProcess];
      v26 = [v25 identity];
      v27 = [v26 isEqual:*(a1 + 56)];

      if ((v27 & 1) == 0)
      {
        v28 = DBLogForCategory(0);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [v24 clientProcess];
          v30 = [v29 identity];
          *buf = 138543362;
          v49 = v30;
          _os_log_impl(&dword_248146000, v28, OS_LOG_TYPE_DEFAULT, "Destroying existing throwaway scene for non-matching process identity: %{public}@", buf, 0xCu);
        }

        v31 = [MEMORY[0x277D0AAD8] sharedInstance];
        [v31 destroyScene:@"com.apple.CarPlayApp.url-delivery" withTransitionContext:0];
      }
    }

    else
    {
      v32 = objc_alloc_init(MEMORY[0x277D75180]);
      v33 = objc_alloc_init([v32 settingsClass]);
      v34 = [v33 mutableCopy];

      v35 = [MEMORY[0x277D0AA90] mainConfiguration];
      [v34 setDisplayConfiguration:v35];

      v36 = [MEMORY[0x277D0AA90] mainConfiguration];
      [v36 bounds];
      [v34 setFrame:?];

      [v34 setLevel:1.0];
      [v34 setInterfaceOrientation:1];
      v37 = [MEMORY[0x277D0AD50] parametersForSpecification:v32];
      [v37 setSettings:v34];
      v38 = DBLogForCategory(0);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_248146000, v38, OS_LOG_TYPE_DEFAULT, "Creating throwaway scene for action delivery", buf, 2u);
      }

      v39 = [MEMORY[0x277D0AAD8] sharedInstance];
      v40 = [v5 workspace];
      v24 = [v39 createSceneWithIdentifier:@"com.apple.CarPlayApp.url-delivery" parameters:v37 clientProvider:v40 transitionContext:0];

      if (!v24)
      {
        goto LABEL_32;
      }
    }

    v41 = DBLogForCategory(0);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = [*(a1 + 48) count];
      *buf = 134217984;
      v49 = v42;
      _os_log_impl(&dword_248146000, v41, OS_LOG_TYPE_DEFAULT, "Sending %lu non-workspace actions via throwaway scene", buf, 0xCu);
    }

    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __57__DBDashboard__handleBackgroundURLDeliveryForLaunchInfo___block_invoke_482;
    v43[3] = &unk_278F020E0;
    v44 = v19;
    [v24 updateSettingsWithTransitionBlock:v43];

LABEL_32:
  }
}

void __57__DBDashboard__handleBackgroundURLDeliveryForLaunchInfo___block_invoke_475(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = 40;
  if (isKindOfClass)
  {
    v4 = 32;
  }

  [*(a1 + v4) addObject:v5];
}

id __57__DBDashboard__handleBackgroundURLDeliveryForLaunchInfo___block_invoke_482(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D75188]);
  v3 = [*(a1 + 32) copy];
  [v2 setActions:v3];

  v4 = [MEMORY[0x277CF0CD0] processHandle];
  [v2 setOriginatingProcess:v4];

  return v2;
}

- (id)_diagnosticsActiveBundleIdentifier
{
  siriScene = [(DBDashboard *)self siriScene];

  if (siriScene)
  {
    v4 = @"com.apple.siri";
  }

  else
  {
    workspace = [(DBDashboard *)self workspace];
    state = [workspace state];
    activeBundleIdentifier = [state activeBundleIdentifier];

    if ([activeBundleIdentifier isEqualToString:@"com.apple.CarPlay.dashboard"] && (-[DBDashboard dashboardStateProvider](self, "dashboardStateProvider"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "pageType"), v8, v9 != 1))
    {
      v4 = 0;
    }

    else
    {
      v4 = activeBundleIdentifier;
    }
  }

  return v4;
}

- (void)_handleTapToRadarEvent
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = DBLogForCategory(0xEuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [DBDashboard _handleTapToRadarEvent];
  }

  v4 = MEMORY[0x277CBEB98];
  mainIdentity = [MEMORY[0x277D0AA90] mainIdentity];
  v11[0] = mainIdentity;
  displayIdentity = [(DBDashboard *)self displayIdentity];
  v11[1] = displayIdentity;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v4 setWithArray:v7];

  screenshotManager = [(DBDashboard *)self screenshotManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37__DBDashboard__handleTapToRadarEvent__block_invoke;
  v10[3] = &unk_278F021A8;
  v10[4] = self;
  [screenshotManager saveScreenshotsForDisplayIdentifiers:v8 completion:v10];
}

void __37__DBDashboard__handleTapToRadarEvent__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D0AA90];
  v4 = a2;
  v5 = [v3 mainIdentity];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [*(a1 + 32) displayIdentity];
  v8 = [v4 objectForKeyedSubscript:v7];

  v9 = objc_opt_new();
  v10 = dispatch_get_global_queue(17, 0);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __37__DBDashboard__handleTapToRadarEvent__block_invoke_2;
  v14[3] = &unk_278F02180;
  v14[4] = *(a1 + 32);
  v15 = v9;
  v16 = v6;
  v17 = v8;
  v11 = v8;
  v12 = v6;
  v13 = v9;
  dispatch_async(v10, v14);
}

void __37__DBDashboard__handleTapToRadarEvent__block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__DBDashboard__handleTapToRadarEvent__block_invoke_3;
  v8[3] = &unk_278F02158;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  *&v6 = *(a1 + 56);
  *(&v6 + 1) = *v2;
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v3 _collectMemgraphsForTapToRadarWithCompletion:v8];
}

void __37__DBDashboard__handleTapToRadarEvent__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__DBDashboard__handleTapToRadarEvent__block_invoke_4;
  block[3] = &unk_278F02130;
  v10 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = *(a1 + 56);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v11 = v7;
  v12 = v6;
  v8 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __37__DBDashboard__handleTapToRadarEvent__block_invoke_4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) addObject:?];
  }

  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:*MEMORY[0x277D76F00] object:0];

  v3 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "CarPlay diagnostics started.", v5, 2u);
  }

  v4 = [*(a1 + 64) _diagnosticsActiveBundleIdentifier];
  CRCollectCarPlayDiagnostics();
}

void __37__DBDashboard__handleTapToRadarEvent__block_invoke_2_490()
{
  v0 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_248146000, v0, OS_LOG_TYPE_DEFAULT, "CarPlay diagnostics ended.", v2, 2u);
  }

  v1 = [MEMORY[0x277CCAB98] defaultCenter];
  [v1 postNotificationName:*MEMORY[0x277D76EF8] object:0];
}

- (void)_collectMemgraphsForTapToRadarWithCompletion:(id)completion
{
  v43 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v3 = MEMORY[0x277CCACA8];
  v4 = [&unk_285AA4958 componentsJoinedByString:@"|"];
  v5 = [v3 stringWithFormat:@"_(%@)_.*memgraph$", v4];

  v28 = v5;
  v32 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v5 options:1 error:0];
  v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [MEMORY[0x277D82268] getLogPathsSortedByTime];
  v6 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v37;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        v13 = [v32 firstMatchInString:v12 options:0 range:{0, objc_msgSend(v12, "length")}];

        if (v13)
        {
          v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12];
          if (!v9)
          {
            defaultManager = [MEMORY[0x277CCAA00] defaultManager];
            v35 = 0;
            v9 = [defaultManager URLForDirectory:99 inDomain:1 appropriateForURL:v14 create:1 error:&v35];
            v16 = v35;

            if (v16)
            {
              v17 = DBLogForCategory(0);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v41 = v16;
                _os_log_error_impl(&dword_248146000, v17, OS_LOG_TYPE_ERROR, "Error creating temporary directory for CarPlay memgraphs: %@", buf, 0xCu);
              }
            }
          }

          if (v9 && !v8)
          {
            v8 = [v9 URLByAppendingPathComponent:@"CarPlayMemoryExceptions" isDirectory:1];
            defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
            v34 = 0;
            [defaultManager2 createDirectoryAtURL:v8 withIntermediateDirectories:0 attributes:0 error:&v34];
            v19 = v34;

            if (v19)
            {
              v20 = DBLogForCategory(0);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v41 = v19;
                _os_log_error_impl(&dword_248146000, v20, OS_LOG_TYPE_ERROR, "Error creating CarPlayMemoryExceptions directory: %@", buf, 0xCu);
              }
            }
          }

          lastPathComponent = [v14 lastPathComponent];
          if (lastPathComponent)
          {
            v22 = v8 == 0;
          }

          else
          {
            v22 = 1;
          }

          if (!v22)
          {
            v23 = [v8 URLByAppendingPathComponent:lastPathComponent];
            defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
            v33 = 0;
            [defaultManager3 copyItemAtURL:v14 toURL:v23 error:&v33];
            v25 = v33;

            if (v25)
            {
              v26 = DBLogForCategory(0);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v41 = v25;
                _os_log_error_impl(&dword_248146000, v26, OS_LOG_TYPE_ERROR, "Error copying memgraph to temporary CarPlayMemoryExceptions directory: %@", buf, 0xCu);
              }
            }

            else
            {
              [v30 addObject:v23];
            }
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  if ([v30 count])
  {
    v27 = v8;
  }

  else
  {
    v27 = 0;
  }

  (completionCopy)[2](completionCopy, v27);
}

- (void)_setupVoiceControlOverlayController
{
  v3 = +[DBApplicationController sharedInstance];
  voiceControlApplication = [v3 voiceControlApplication];

  if (voiceControlApplication)
  {
    overlaySceneWorkspace = [(DBDashboard *)self overlaySceneWorkspace];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __50__DBDashboard__setupVoiceControlOverlayController__block_invoke;
    v17 = &unk_278F021D0;
    selfCopy = self;
    v19 = voiceControlApplication;
    v6 = [overlaySceneWorkspace createScene:&v14];

    if (v6)
    {
      [(DBDashboard *)self setVoiceControlScene:v6, v14, v15, v16, v17, selfCopy];
      v7 = [_TtC9DashBoard31DBVoiceControlOverlayController alloc];
      windowScene = [(DBScreenController *)self windowScene];
      layoutEngine = [(DBDashboard *)self layoutEngine];
      [layoutEngine mainWindowFrame];
      v10 = [(DBVoiceControlOverlayController *)v7 initWithWindowScene:windowScene windowFrame:v6 voiceControlScene:self environment:?];
      voiceControlOverlayController = self->_voiceControlOverlayController;
      self->_voiceControlOverlayController = v10;

      dashboardStateProvider = [(DBDashboard *)self dashboardStateProvider];
      [dashboardStateProvider addObserver:self->_voiceControlOverlayController];
    }

    else
    {
      dashboardStateProvider = DBLogForCategory(0);
      if (os_log_type_enabled(dashboardStateProvider, OS_LOG_TYPE_ERROR))
      {
        [DBDashboard _setupVoiceControlOverlayController];
      }
    }
  }

  else
  {
    v13 = DBLogForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [DBDashboard _setupVoiceControlOverlayController];
    }
  }
}

void __50__DBDashboard__setupVoiceControlOverlayController__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 sceneIdentifierForApplication:v3];
  [v4 setIdentifier:v5];

  v6 = MEMORY[0x277D0ADA8];
  v7 = [MEMORY[0x277D46F60] identityForDaemonJobLabel:@"com.apple.commandandcontrol"];
  v8 = [v6 defaultIdentityForProcessIdentity:v7];
  [v4 setClientIdentity:v8];

  v9 = [MEMORY[0x277D751A0] specification];
  [v4 setSpecification:v9];
}

- (BOOL)hasActiveCall
{
  dockController = [(DBDashboard *)self dockController];
  isInCallServiceActive = [dockController isInCallServiceActive];

  return isInCallServiceActive;
}

- (id)_newResizeAnimationWindow
{
  v3 = [_TtC9DashBoard14DBResizeWindow alloc];
  windowScene = [(DBScreenController *)self windowScene];
  layoutEngine = [(DBDashboard *)self layoutEngine];
  [layoutEngine resizeAnimationWindowFrame];
  v6 = [(DBResizeWindow *)v3 initWithWindowScene:windowScene frame:?];

  [(DBResizeWindow *)v6 setHidden:0];
  return v6;
}

- (id)_takeSnapshotOfFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  rootScene = [(DBScreenController *)self rootScene];
  snapshotContext = [rootScene snapshotContext];
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  resizeWindow = [(DBDashboard *)self resizeWindow];

  if (resizeWindow)
  {
    layerManager = [rootScene layerManager];
    resizeWindow2 = [(DBDashboard *)self resizeWindow];
    v14 = [layerManager layerWithContextID:{objc_msgSend(resizeWindow2, "_contextId")}];
    [v10 addObject:v14];
  }

  cornerRadiusWindow = [(DBScreenController *)self cornerRadiusWindow];

  if (cornerRadiusWindow)
  {
    layerManager2 = [rootScene layerManager];
    cornerRadiusWindow2 = [(DBScreenController *)self cornerRadiusWindow];
    v18 = [layerManager2 layerWithContextID:{objc_msgSend(cornerRadiusWindow2, "_contextId")}];

    if (v18)
    {
      [v10 addObject:v18];
    }
  }

  [snapshotContext setLayersToExclude:v10];
  [snapshotContext setFrame:{x, y, width, height}];
  v19 = [rootScene createSnapshotWithContext:snapshotContext];
  [v19 capture];
  uiPresentationManager = [rootScene uiPresentationManager];
  v21 = [uiPresentationManager snapshotPresentationForSnapshot:v19];

  return v21;
}

- (void)_homeTapped:(id)tapped
{
  v4 = DBLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "home button triggered", v5, 2u);
  }

  [(DBDashboard *)self handleACHomeUp:1];
}

- (void)_dismissFloatingSiriIfNecessary
{
  siriViewController = [(DBDashboard *)self siriViewController];
  isDismissed = [siriViewController isDismissed];

  if ((isDismissed & 1) == 0)
  {
    siriScene = [(DBDashboard *)self siriScene];
    objc_opt_class();
    settings = [siriScene settings];
    if (settings && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = settings;
    }

    else
    {
      v7 = 0;
    }

    if (v7 && [v7 deactivationReasons])
    {
      v8 = DBLogForCategory(3uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "Dismissing floating Siri", v10, 2u);
      }

      siriViewController2 = [(DBDashboard *)self siriViewController];
      [siriViewController2 backgroundSceneWithCompletion:0];
    }
  }
}

- (void)_backLongPressed:(id)pressed
{
  pressedCopy = pressed;
  v5 = DBLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "long back press triggered", v6, 2u);
  }

  [(DBDashboard *)self handleLongBackPress];
  [pressedCopy lastSenderID];

  BKSHIDServicesCancelButtonEventsFromSenderID();
}

- (id)_nowRecordingBundleIdentifier
{
  dockController = [(DBDashboard *)self dockController];
  nowRecordingBundleIdentifier = [dockController nowRecordingBundleIdentifier];

  return nowRecordingBundleIdentifier;
}

- (void)_displayRecordingAlert
{
  v27 = *MEMORY[0x277D85DE8];
  _nowRecordingBundleIdentifier = [(DBDashboard *)self _nowRecordingBundleIdentifier];
  if (_nowRecordingBundleIdentifier)
  {
    v4 = [MEMORY[0x277CC1E88] bundleProxyForIdentifier:_nowRecordingBundleIdentifier];
    v5 = DBLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier = [v4 bundleIdentifier];
      *buf = 138543362;
      v26 = bundleIdentifier;
      _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Displaying recording alert for %{public}@", buf, 0xCu);
    }

    v7 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
    v8 = [v7 localizedStringForKey:@"APP_USING_MIC_OK" value:&stru_285A57218 table:@"CarPlayApp"];

    v9 = MEMORY[0x277CCACA8];
    localizedName = [v4 localizedName];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
    v12 = [v11 localizedStringForKey:@"APP_USING_MIC_MESSAGE" value:&stru_285A57218 table:@"CarPlayApp"];
    v13 = [v9 stringWithFormat:@"%@ %@", localizedName, v12];

    v14 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:v13 preferredStyle:1];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __37__DBDashboard__displayRecordingAlert__block_invoke;
    v24[3] = &unk_278F01C50;
    v24[4] = self;
    v15 = [MEMORY[0x277D750F8] actionWithTitle:v8 style:0 handler:v24];
    [v14 addAction:v15];
    notificationViewController = [(DBDashboard *)self notificationViewController];
    [notificationViewController setSuspended:1 forReason:@"DBNotificationSuspensionReasonRecordingAlert"];

    notificationViewController2 = [(DBDashboard *)self notificationViewController];
    [notificationViewController2 presentViewController:v14 animated:1 completion:0];

    focusController = [(DBDashboard *)self focusController];
    notificationWindow = [(DBDashboard *)self notificationWindow];
    v20 = [focusController deferFocusToWindow:notificationWindow priority:6 reason:@"alertSheetFocus"];

    [(DBDashboard *)self setAlertFocusAssertion:v20];
    v21 = MEMORY[0x277D75518];
    notificationWindow2 = [(DBDashboard *)self notificationWindow];
    v23 = [v21 focusSystemForEnvironment:notificationWindow2];
    [v23 setNeedsFocusUpdate];
  }
}

void __37__DBDashboard__displayRecordingAlert__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlertFocusAssertion:0];
  v2 = [*(a1 + 32) notificationViewController];
  [v2 setSuspended:0 forReason:@"DBNotificationSuspensionReasonRecordingAlert"];
}

- (void)_presentPrivacyDisclosureAlertForApplication:(id)application
{
  v30 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  v5 = DBLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [applicationCopy bundleIdentifier];
    *buf = 138543362;
    v29 = bundleIdentifier;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Displaying privacy disclosure alert for %{public}@", buf, 0xCu);
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
  v9 = [v8 localizedStringForKey:@"PRIVACY_DISCLOSURE_ALERT_BODY_%@" value:&stru_285A57218 table:@"CarPlayApp"];
  displayName = [applicationCopy displayName];
  v11 = [v7 stringWithFormat:v9, displayName];

  v12 = MEMORY[0x277D75110];
  displayName2 = [applicationCopy displayName];
  v14 = [v12 alertControllerWithTitle:displayName2 message:v11 preferredStyle:1];

  v15 = MEMORY[0x277D750F8];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
  v17 = [v16 localizedStringForKey:@"PRIVACY_DISCLOSURE_ALERT_OK" value:&stru_285A57218 table:@"CarPlayApp"];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __60__DBDashboard__presentPrivacyDisclosureAlertForApplication___block_invoke;
  v27[3] = &unk_278F01C50;
  v27[4] = self;
  v18 = [v15 actionWithTitle:v17 style:0 handler:v27];

  [v14 addAction:v18];
  notificationViewController = [(DBDashboard *)self notificationViewController];
  [notificationViewController setSuspended:1 forReason:@"DBNotificationSuspensionReasonPrivacyAlert"];

  notificationViewController2 = [(DBDashboard *)self notificationViewController];
  [notificationViewController2 presentViewController:v14 animated:1 completion:0];

  focusController = [(DBDashboard *)self focusController];
  notificationWindow = [(DBDashboard *)self notificationWindow];
  v23 = [focusController deferFocusToWindow:notificationWindow priority:6 reason:@"alertSheetFocus"];

  [(DBDashboard *)self setAlertFocusAssertion:v23];
  v24 = MEMORY[0x277D75518];
  notificationWindow2 = [(DBDashboard *)self notificationWindow];
  v26 = [v24 focusSystemForEnvironment:notificationWindow2];
  [v26 setNeedsFocusUpdate];
}

void __60__DBDashboard__presentPrivacyDisclosureAlertForApplication___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlertFocusAssertion:0];
  v2 = [*(a1 + 32) notificationViewController];
  [v2 setSuspended:0 forReason:@"DBNotificationSuspensionReasonPrivacyAlert"];
}

- (void)_notifyAccessoryIfNeededWithUIContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  appHistory = [environmentConfiguration appHistory];
  v7 = [appHistory currentOwnerForContext:contextCopy];

  if (v7)
  {
    v8 = DBLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = contextCopy;
      v9 = "Accessory is not context owner for %{public}@, not notifying.";
LABEL_8:
      _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  environmentConfiguration2 = [(DBScreenController *)self environmentConfiguration];
  appHistory2 = [environmentConfiguration2 appHistory];
  sessionAppContextURLs = [appHistory2 sessionAppContextURLs];
  v13 = [sessionAppContextURLs containsObject:contextCopy];

  if ((v13 & 1) == 0)
  {
    v8 = DBLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = contextCopy;
      v9 = "Accessory does not declare session support for context %{public}@; not notifying.";
      goto LABEL_8;
    }

LABEL_9:

    goto LABEL_10;
  }

  environmentConfiguration3 = [(DBScreenController *)self environmentConfiguration];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__DBDashboard__notifyAccessoryIfNeededWithUIContext___block_invoke;
  v15[3] = &unk_278F021F8;
  v15[4] = self;
  v16 = contextCopy;
  [environmentConfiguration3 fetchEnhancedIntegrationStatusWithCompletion:v15];

LABEL_10:
}

void __53__DBDashboard__notifyAccessoryIfNeededWithUIContext___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __53__DBDashboard__notifyAccessoryIfNeededWithUIContext___block_invoke_554;
    v4[3] = &unk_278F014B8;
    v2 = *(a1 + 40);
    v4[4] = *(a1 + 32);
    v5 = v2;
    dispatch_async(MEMORY[0x277D85CD0], v4);
  }

  else
  {
    v3 = DBLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "Enhanced Integration is not enabled; leaving context owner as Accessory.", buf, 2u);
    }
  }
}

void __53__DBDashboard__notifyAccessoryIfNeededWithUIContext___block_invoke_554(uint64_t a1)
{
  v2 = [*(a1 + 32) environmentConfiguration];
  v3 = [v2 appHistory];
  [v3 updateOwner:1 forContext:*(a1 + 40)];

  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObject:*(a1 + 40) forKey:@"url"];
  v4 = [*(a1 + 32) environmentConfiguration];
  v5 = [v4 session];
  [v5 sendCommand:@"changeUIContext" withParameters:v6];
}

- (void)_screenDidBecomeUnavailable:(id)unavailable
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__DBDashboard__screenDidBecomeUnavailable___block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __43__DBDashboard__screenDidBecomeUnavailable___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setScreenAvailable:0];
  v2 = [*(a1 + 32) oemScreenLayoutElementAssertion];

  if (!v2)
  {
    v3 = DBLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "Activating layout element for OEM screen", v8, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x277D0AD00]) initWithIdentifier:@"com.apple.carplay.oem"];
    [v4 setLevel:3];
    [v4 setFillsDisplayBounds:1];
    v5 = [*(a1 + 32) environmentConfiguration];
    v6 = [v5 displayLayoutPublisher];
    v7 = [v6 addElement:v4];
    [*(a1 + 32) setOemScreenLayoutElementAssertion:v7];
  }
}

- (void)_screenDidBecomeAvailable:(id)available
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__DBDashboard__screenDidBecomeAvailable___block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __41__DBDashboard__screenDidBecomeAvailable___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setScreenAvailable:1];
  v2 = [*(a1 + 32) oemScreenLayoutElementAssertion];

  if (v2)
  {
    v3 = DBLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating layout element for OEM screen", v12, 2u);
    }

    v4 = [*(a1 + 32) oemScreenLayoutElementAssertion];
    [v4 invalidate];

    [*(a1 + 32) setOemScreenLayoutElementAssertion:0];
  }

  v5 = [*(a1 + 32) workspace];
  v6 = [v5 state];
  v7 = [v6 activeBundleIdentifier];

  if (v7)
  {
    v8 = +[DBApplicationController sharedInstance];
    v9 = [v8 applicationWithBundleIdentifier:v7];

    if (v9)
    {
      v10 = [v9 appPolicy];
      v11 = +[DBAppHistory contextForApplicationCategory:](DBAppHistory, "contextForApplicationCategory:", [v10 applicationCategory]);
      if (v11)
      {
        [*(a1 + 32) _notifyAccessoryIfNeededWithUIContext:v11];
      }
    }
  }
}

- (void)_updateWallpaperWithAnimationDuration:(double)duration delay:(double)delay
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = DBLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Updating #wallpaper", buf, 2u);
  }

  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  wallpaperPreferences = [environmentConfiguration wallpaperPreferences];

  v10 = DBLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = wallpaperPreferences;
    _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_DEFAULT, "#wallpaper wallpaperPrefs: %@", buf, 0xCu);
  }

  currentWallpaper = [wallpaperPreferences currentWallpaper];
  v12 = DBLogForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    currentWallpaper2 = [wallpaperPreferences currentWallpaper];
    *buf = 138412290;
    v38 = currentWallpaper2;
    _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "#wallpaper newWallpaper: %@", buf, 0xCu);
  }

  environmentConfiguration2 = [(DBScreenController *)self environmentConfiguration];
  vehicle = [environmentConfiguration2 vehicle];
  appearanceModePreference = [vehicle appearanceModePreference];

  if (!appearanceModePreference)
  {
    traits = [currentWallpaper traits];
    supportsDynamicAppearance = [traits supportsDynamicAppearance];

    if ((supportsDynamicAppearance & 1) == 0)
    {
      v19 = DBLogForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [DBDashboard _updateWallpaperWithAnimationDuration:delay:];
      }

      [wallpaperPreferences updateWallpaperToSupportDynamicAppearance];
      currentWallpaper3 = [wallpaperPreferences currentWallpaper];

      currentWallpaper = currentWallpaper3;
    }
  }

  wallpaperRootViewController = [(DBDashboard *)self wallpaperRootViewController];
  currentWallpaper4 = [wallpaperRootViewController currentWallpaper];
  v23 = [currentWallpaper4 isEqual:currentWallpaper];

  v24 = DBLogForCategory(0);
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (v23)
  {
    if (v25)
    {
      wallpaperRootViewController2 = [(DBDashboard *)self wallpaperRootViewController];
      currentWallpaper5 = [wallpaperRootViewController2 currentWallpaper];
      *buf = 138412546;
      v38 = currentWallpaper5;
      v39 = 2112;
      v40 = currentWallpaper;
      _os_log_impl(&dword_248146000, v24, OS_LOG_TYPE_DEFAULT, "#wallpaper wallpapers are equal so returning early. current: %@, new: %@", buf, 0x16u);
    }
  }

  else
  {
    if (v25)
    {
      *buf = 138543362;
      v38 = currentWallpaper;
      _os_log_impl(&dword_248146000, v24, OS_LOG_TYPE_DEFAULT, "Applying #wallpaper %{public}@", buf, 0xCu);
    }

    v31 = MEMORY[0x277D85DD0];
    v32 = 3221225472;
    v33 = __59__DBDashboard__updateWallpaperWithAnimationDuration_delay___block_invoke;
    v34 = &unk_278F014B8;
    v28 = currentWallpaper;
    v35 = v28;
    selfCopy = self;
    v29 = _Block_copy(&v31);
    v30 = [(DBDashboard *)self wallpaperRootViewController:v31];
    [v30 setWallpaper:v28 duration:v29 delay:duration updates:delay];

    v24 = v35;
  }
}

void __59__DBDashboard__updateWallpaperWithAnimationDuration_delay___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) traits];
  if ([v2 isBlack])
  {
    v3 = [MEMORY[0x277D75C80] currentTraitCollection];
    v4 = [v3 userInterfaceStyle] == 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 40) dockLocalScene];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __59__DBDashboard__updateWallpaperWithAnimationDuration_delay___block_invoke_2;
  v18[3] = &__block_descriptor_33_e50_v16__0__UIMutableCarPlayApplicationSceneSettings_8l;
  v19 = v4;
  [v5 updateSettings:v18];

  v6 = [*(a1 + 40) wallpaperLocalScene];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__DBDashboard__updateWallpaperWithAnimationDuration_delay___block_invoke_3;
  v16[3] = &__block_descriptor_33_e50_v16__0__UIMutableCarPlayApplicationSceneSettings_8l;
  v17 = v4;
  [v6 updateSettings:v16];

  v7 = [*(a1 + 40) environmentConfiguration];
  if ([v7 currentViewAreaSupportsUIOutsideSafeArea])
  {
    v8 = 1;
  }

  else
  {
    v9 = [*(a1 + 32) traits];
    if ([v9 hideRoundedCorners])
    {
      v8 = 1;
    }

    else
    {
      v10 = [*(a1 + 40) screenInfo];
      v8 = [v10 wantsCornerMasks];
    }
  }

  v11 = [*(a1 + 40) cornerRadiusWindow];
  [v11 setHidden:v8];

  v12 = *(a1 + 40);
  v13 = [*(a1 + 32) traits];
  [v12 _updateTraitOverridesWithWallpaperTraits:v13];

  v14 = [*(a1 + 40) dockController];
  [v14 updateAppearanceForWallpaper];

  v15 = [*(a1 + 40) rootViewController];
  [v15 updateAppearanceForWallpaper];
}

- (void)_updateTraitOverridesWithWallpaperTraits:(id)traits
{
  if ([traits supportsDashboardPlatterMaterials])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  windowScene = [(DBScreenController *)self windowScene];
  traitOverrides = [windowScene traitOverrides];
  [traitOverrides setNSIntegerValue:v4 forTrait:objc_opt_class()];
}

- (void)_updateUserInterfaceStyle
{
  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  resolvedUserInterfaceStyle = [environmentConfiguration resolvedUserInterfaceStyle];

  rootScene = [(DBScreenController *)self rootScene];
  uiSettings = [rootScene uiSettings];
  userInterfaceStyle = [uiSettings userInterfaceStyle];

  if (userInterfaceStyle != resolvedUserInterfaceStyle)
  {
    rootScene2 = [(DBScreenController *)self rootScene];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __40__DBDashboard__updateUserInterfaceStyle__block_invoke;
    v27[3] = &unk_278F02220;
    v27[4] = self;
    v27[5] = resolvedUserInterfaceStyle;
    [rootScene2 updateUISettingsWithBlock:v27];

    windowScene = [(DBScreenController *)self windowScene];
    traitOverrides = [windowScene traitOverrides];
    [traitOverrides setNSIntegerValue:resolvedUserInterfaceStyle forTrait:objc_opt_class()];
  }

  dockLocalScene = [(DBDashboard *)self dockLocalScene];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __40__DBDashboard__updateUserInterfaceStyle__block_invoke_564;
  v25[3] = &unk_278F02248;
  v25[4] = self;
  v26 = dockLocalScene;
  v12 = dockLocalScene;
  [v12 updateSettings:v25];
  wallpaperLocalScene = [(DBDashboard *)self wallpaperLocalScene];
  wallpaperLocalScene2 = [(DBDashboard *)self wallpaperLocalScene];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __40__DBDashboard__updateUserInterfaceStyle__block_invoke_565;
  v22 = &unk_278F02248;
  selfCopy = self;
  v24 = wallpaperLocalScene;
  v15 = wallpaperLocalScene;
  [wallpaperLocalScene2 updateSettings:&v19];

  [(DBDashboard *)self _updateWallpaper:v19];
  _homeScreenStyleTraitOverrides = [(DBDashboard *)self _homeScreenStyleTraitOverrides];
  environmentConfiguration2 = [(DBScreenController *)self environmentConfiguration];
  homeScreenStyleData = [environmentConfiguration2 homeScreenStyleData];
  [(DBDashboard *)self _updateTraitOverridesForTraitOverrides:_homeScreenStyleTraitOverrides withHomeScreenStyleData:homeScreenStyleData userInterfaceStyle:resolvedUserInterfaceStyle];
}

void __40__DBDashboard__updateUserInterfaceStyle__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DBLogForCategory(0x13uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = CPUIDescriptionForUserInterfaceStyle();
    v6 = [*(a1 + 32) rootScene];
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "DBDashboard updating rootScene user interface style to %@; rootScene: %@", &v7, 0x16u);
  }

  [v3 setUserInterfaceStyle:*(a1 + 40)];
}

void __40__DBDashboard__updateUserInterfaceStyle__block_invoke_564(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 _sceneInterfaceStyleForScene:v4];
  v7 = DBLogForCategory(0x13uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = CPUIDescriptionForUserInterfaceStyle();
    v9 = *(a1 + 40);
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Updating user interface style to %@ for scene: %@", &v10, 0x16u);
  }

  [v5 setUserInterfaceStyle:v6];
}

void __40__DBDashboard__updateUserInterfaceStyle__block_invoke_565(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 _sceneInterfaceStyleForScene:v4];
  v7 = DBLogForCategory(0x13uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = CPUIDescriptionForUserInterfaceStyle();
    v9 = *(a1 + 40);
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Updating user interface style to %@ for scene: %@", &v10, 0x16u);
  }

  [v5 setUserInterfaceStyle:v6];
}

- (int64_t)_sceneInterfaceStyleForScene:(id)scene
{
  sceneCopy = scene;
  definition = [sceneCopy definition];
  clientIdentity = [definition clientIdentity];
  processIdentity = [clientIdentity processIdentity];
  embeddedApplicationIdentifier = [processIdentity embeddedApplicationIdentifier];

  v9 = +[DBApplicationController sharedInstance];
  v10 = [v9 applicationWithBundleIdentifier:embeddedApplicationIdentifier];

  objc_opt_class();
  settings = [sceneCopy settings];

  v12 = settings;
  if (v12 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = +[DBApplicationController sharedInstance];
    proxiedApplicationBundleIdentifier = [v13 proxiedApplicationBundleIdentifier];
    v16 = [v14 applicationWithBundleIdentifier:proxiedApplicationBundleIdentifier];

    v17 = v10;
    v10 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = [(DBDashboard *)self sceneInterfaceStyleForApplication:v10 proxyApplication:v17];

  return v18;
}

- (void)_setInitialFocusOwner
{
  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  session = [environmentConfiguration session];
  configuration = [session configuration];
  screens = [configuration screens];
  v13 = [screens bs_firstObjectPassingTest:&__block_literal_global_569];

  rootScene = [(DBScreenController *)self rootScene];
  focusController = [(DBDashboard *)self focusController];
  v9 = [focusController deferFocusToWindow:self->_mainWindow priority:0 reason:@"launcher"];

  [(DBDashboard *)self setHomeFocusAssertion:v9];
  environmentConfiguration2 = [(DBScreenController *)self environmentConfiguration];
  if ([environmentConfiguration2 currentViewAreaSupportsFocusTransfer])
  {
    initialFocusOwner = [v13 initialFocusOwner];

    if (initialFocusOwner)
    {
      goto LABEL_5;
    }

    focusController2 = [(DBDashboard *)self focusController];
    environmentConfiguration2 = [focusController2 suspendFocusWithPriority:9 reason:@"oemFocus"];

    [(DBDashboard *)self setOEMFocusAssertion:environmentConfiguration2];
  }

LABEL_5:
}

- (void)_initializeWallpaper
{
  v3 = MEMORY[0x277CCACA8];
  displayIdentity = [(DBDashboard *)self displayIdentity];
  v5 = [v3 stringWithFormat:@"wallpaper-%@", displayIdentity];

  localSceneWorkspace = [(DBDashboard *)self localSceneWorkspace];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __35__DBDashboard__initializeWallpaper__block_invoke;
  v25[3] = &unk_278F01E30;
  v7 = v5;
  v26 = v7;
  v8 = [localSceneWorkspace createScene:v25];

  if (v8)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __35__DBDashboard__initializeWallpaper__block_invoke_2;
    v24[3] = &unk_278F01FF8;
    v24[4] = self;
    [v8 configureParameters:v24];
    v9 = [_TtC9DashBoard21DBWallpaperHostWindow alloc];
    windowScene = [(DBScreenController *)self windowScene];
    layoutEngine = [(DBDashboard *)self layoutEngine];
    [layoutEngine wallpaperHostWindowFrame];
    v12 = [(DBWallpaperHostWindow *)v9 initWithLocalScene:v8 windowScene:windowScene frame:?];
    wallpaperHostWindow = self->_wallpaperHostWindow;
    self->_wallpaperHostWindow = v12;

    [(DBDashboard *)self setWallpaperLocalScene:v8];
    [v8 addObserver:self];
  }

  else
  {
    v14 = DBLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [DBDashboard _setupDock];
    }
  }

  [(DBWallpaperHostWindow *)self->_wallpaperHostWindow setHidden:1];
  v15 = MEMORY[0x277D75DA8];
  clientScene = [(DBLocalSceneHostWindow *)self->_wallpaperHostWindow clientScene];
  v17 = [v15 _sceneForFBSScene:clientScene];

  v18 = [_TtC9DashBoard17DBWallpaperWindow alloc];
  layoutEngine2 = [(DBDashboard *)self layoutEngine];
  [layoutEngine2 wallpaperWindowFrame];
  v20 = [(DBWallpaperWindow *)v18 initWithWindowScene:v17 frame:?];
  wallpaperWindow = self->_wallpaperWindow;
  self->_wallpaperWindow = v20;

  v22 = [[_TtC9DashBoard29DBWallpaperRootViewController alloc] initWithEnvironment:self];
  wallpaperRootViewController = self->_wallpaperRootViewController;
  self->_wallpaperRootViewController = v22;

  [(DBWallpaperWindow *)self->_wallpaperWindow setRootViewController:self->_wallpaperRootViewController];
  [(DBWallpaperWindow *)self->_wallpaperWindow setClipsToBounds:1];
  [(DBWallpaperWindow *)self->_wallpaperWindow setHidden:0];
}

void __35__DBDashboard__initializeWallpaper__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setIdentifier:v2];
  v4 = [MEMORY[0x277D0ADA8] localIdentity];
  [v3 setClientIdentity:v4];

  v5 = [MEMORY[0x277D751A0] specification];
  [v3 setSpecification:v5];
}

uint64_t __35__DBDashboard__initializeWallpaper__block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35__DBDashboard__initializeWallpaper__block_invoke_3;
  v3[3] = &unk_278F01FD0;
  v3[4] = *(a1 + 32);
  return [a2 updateSettingsWithBlock:v3];
}

void __35__DBDashboard__initializeWallpaper__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 displayConfiguration];
  [v6 setDisplayConfiguration:v4];

  v5 = [*(a1 + 32) layoutEngine];
  [v5 wallpaperHostSceneFrame];
  [v6 setFrame:?];

  [v6 setInterfaceOrientation:1];
  [v6 setStatusBarDisabled:1];
  [v6 setForeground:1];
}

- (BOOL)_supportsDisplayingPunchthroughWithIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  displayInfo = [(DBScreenController *)self displayInfo];
  supportsDDPContent = [displayInfo supportsDDPContent];

  if (supportsDDPContent)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    displayInfo2 = [(DBScreenController *)self displayInfo];
    oemPunchThroughs = [displayInfo2 oemPunchThroughs];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__DBDashboard__supportsDisplayingPunchthroughWithIdentifier___block_invoke;
    v12[3] = &unk_278F02290;
    v8 = identifierCopy;
    v13 = v8;
    v14 = &v15;
    [oemPunchThroughs enumerateObjectsUsingBlock:v12];

    LODWORD(displayInfo2) = *(v16 + 24);
    if (displayInfo2 == 1)
    {
      v10 = DBLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v8;
        _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_DEFAULT, "Display does support punchthrough with identifier: %@", buf, 0xCu);
      }
    }

    else
    {
      v10 = DBLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [DBDashboard _supportsDisplayingPunchthroughWithIdentifier:];
      }
    }

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    displayInfo2 = DBLogForCategory(0);
    if (os_log_type_enabled(displayInfo2, OS_LOG_TYPE_ERROR))
    {
      [DBDashboard _supportsDisplayingPunchthroughWithIdentifier:];
    }

    LOBYTE(displayInfo2) = 0;
  }

  return displayInfo2;
}

void __61__DBDashboard__supportsDisplayingPunchthroughWithIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 identifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)_presentPunchthroughWithIdentifier:(id)identifier
{
  v12 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  supportsGaugeCluster = [environmentConfiguration supportsGaugeCluster];

  if (supportsGaugeCluster && [(DBDashboard *)self _supportsDisplayingPunchthroughWithIdentifier:identifierCopy])
  {
    v7 = DBLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = identifierCopy;
      _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Activating punch through with id: %@", &v10, 0xCu);
    }

    v8 = objc_alloc_init(DBMutableWorkspaceStateChangeRequest);
    [(DBMutableWorkspaceStateChangeRequest *)v8 activateOEMPunchthrough:identifierCopy];
    workspace = [(DBDashboard *)self workspace];
    [workspace requestStateChange:v8];
  }

  else
  {
    v8 = DBLogForCategory(0);
    if (os_log_type_enabled(&v8->super.super, OS_LOG_TYPE_ERROR))
    {
      [DBDashboard _presentPunchthroughWithIdentifier:];
    }
  }
}

- (void)_dismissPunchthroughWithIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = DBLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = identifierCopy;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Dismissing punch through with id: %@", buf, 0xCu);
  }

  v6 = objc_alloc_init(DBMutableWorkspaceStateChangeRequest);
  [(DBMutableWorkspaceStateChangeRequest *)v6 deactivateOEMPunchthrough:identifierCopy];
  objc_initWeak(buf, self);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __50__DBDashboard__dismissPunchthroughWithIdentifier___block_invoke;
  v12 = &unk_278F02070;
  objc_copyWeak(&v14, buf);
  v7 = identifierCopy;
  v13 = v7;
  [(DBWorkspaceStateChangeRequest *)v6 setCompletionHandler:&v9];
  v8 = [(DBDashboard *)self workspace:v9];
  [v8 requestStateChange:v6];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

void __50__DBDashboard__dismissPunchthroughWithIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained punchThroughService];
  [v2 punchThroughIdentifierDidDismiss:*(a1 + 32)];
}

- (void)_notifyClimateOverlayPunchthroughIsPresented:(BOOL)presented
{
  presentedCopy = presented;
  climateOverlayController = [(DBDashboard *)self climateOverlayController];
  [climateOverlayController setIsDeactivated:presentedCopy];
}

- (void)_handleOEMNotificationURL:(id)l
{
  v11 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = DBLogForCategory(0);
  v6 = v5;
  if (lCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = lCopy;
      _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Handling OEM notification URL: %{public}@", &v9, 0xCu);
    }

    v6 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:0];
    scheme = [v6 scheme];
    if ([scheme isEqualToString:@"inputStream"])
    {
      [(DBDashboard *)self _handleInputStreamURL:v6];
    }

    else if ([scheme isEqualToString:@"settings"])
    {
      [(DBDashboard *)self _handleAutoSettingsURL:lCopy];
    }

    else
    {
      v8 = objc_alloc_init(DBActivationSettings);
      [(DBActivationSettings *)v8 setUrl:lCopy];
      [(DBDashboard *)self _handleAppSchemeURL:lCopy activationSettings:v8];
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [DBDashboard _handleOEMNotificationURL:];
  }
}

- (void)_handleInputStreamURL:(id)l
{
  lCopy = l;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  queryItems = [lCopy queryItems];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__DBDashboard__handleInputStreamURL___block_invoke;
  v7[3] = &unk_278F022B8;
  v7[4] = &v8;
  [queryItems enumerateObjectsUsingBlock:v7];

  if (v9[5])
  {
    [(DBDashboard *)self _presentPunchthroughWithIdentifier:?];
  }

  else
  {
    v6 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [DBDashboard _handleInputStreamURL:];
    }
  }

  _Block_object_dispose(&v8, 8);
}

void __37__DBDashboard__handleInputStreamURL___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 name];
  v7 = [v6 isEqualToString:@"identifier"];

  if (v7)
  {
    v8 = [v11 value];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

- (void)_handleAutoSettingsURL:(id)l
{
  v21 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = DBLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = lCopy;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Handling Auto Settings URL: %{public}@", &buf, 0xCu);
  }

  v6 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:0];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  queryItems = [v6 queryItems];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __38__DBDashboard__handleAutoSettingsURL___block_invoke;
  v15[3] = &unk_278F022B8;
  v15[4] = &buf;
  [queryItems enumerateObjectsUsingBlock:v15];

  v8 = [(NSDictionary *)self->_settingsCategoryToBundleID objectForKeyedSubscript:*(*(&buf + 1) + 40)];
  if (!v8)
  {
    v9 = DBLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "Valid category not found. Defaulting to auto settings.", v14, 2u);
    }

    v8 = @"com.apple.AutoSettings";
  }

  v10 = +[DBApplicationController sharedInstance];
  v11 = [v10 applicationWithBundleIdentifier:v8];

  if (v11)
  {
    v12 = objc_alloc_init(DBActivationSettings);
    [(DBActivationSettings *)v12 setUrl:lCopy];
    v13 = objc_alloc_init(DBMutableWorkspaceStateChangeRequest);
    [(DBMutableWorkspaceStateChangeRequest *)v13 activateApplication:v11 withSettings:v12];
    [(DBWorkspace *)self->_workspace requestStateChange:v13];
  }

  else
  {
    v12 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(&v12->super, OS_LOG_TYPE_ERROR))
    {
      [DBDashboard _handleAutoSettingsURL:];
    }
  }

  _Block_object_dispose(&buf, 8);
}

void __38__DBDashboard__handleAutoSettingsURL___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 name];
  v7 = [v6 isEqualToString:@"category"];

  if (v7)
  {
    v8 = [v11 value];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

- (BOOL)_isDockScene:(id)scene
{
  sceneCopy = scene;
  dockLocalScene = [(DBDashboard *)self dockLocalScene];
  v6 = [sceneCopy isEqual:dockLocalScene];

  return v6;
}

- (void)handleFocusMovementAction:(id)action fromScene:(id)scene
{
  v56 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  sceneCopy = scene;
  focusMovementInfo = [actionCopy focusMovementInfo];
  heading = [focusMovementInfo heading];
  inputDeviceInfo = [actionCopy inputDeviceInfo];
  shouldPerformHapticFeedback = [actionCopy shouldPerformHapticFeedback];
  climateOverlayScene = [(DBDashboard *)self climateOverlayScene];

  v10 = [(DBDashboard *)self _isDockScene:sceneCopy];
  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  isRightHandDrive = [environmentConfiguration isRightHandDrive];

  mainWindow = [(DBDashboard *)self mainWindow];
  traitCollection = [mainWindow traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  climateOverlayScene2 = [(DBDashboard *)self climateOverlayScene];
  v43 = [sceneCopy isEqual:climateOverlayScene2];

  climateOverlayController = [(DBDashboard *)self climateOverlayController];
  isHidden = [climateOverlayController isHidden];

  dockController = [(DBDashboard *)self dockController];
  [dockController climateOverlayDidRequestHideFocusGuides:isHidden];

  if (climateOverlayScene)
  {
    environmentConfiguration2 = [(DBScreenController *)self environmentConfiguration];
    hasDualStatusBar = [environmentConfiguration2 hasDualStatusBar];

    if (hasDualStatusBar)
    {
      v19 = [(DBDashboard *)self _directionWithVerticalClimateOverlayWithHeading:heading isClimateOverlaySceneHidden:isHidden isClimateScene:v43 isDockScene:v10 action:actionCopy];
      heading = [(DBDashboard *)self _adjustedHeadingForVerticalClimateOverlay:heading direction:v19];
    }

    else
    {
      heading = [(DBDashboard *)self _adjustedHeadingForHorizontalClimateOverlay:heading];
      v19 = [(DBDashboard *)self _directionWithHorizontalClimateOverlayWithHeading:heading isClimateOverlaySceneHidden:isHidden isClimateScene:v43 isDockScene:v10 action:actionCopy];
    }
  }

  else
  {
    v19 = [(DBDashboard *)self _isDockScene:sceneCopy];
  }

  v20 = DBLogForCategory(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    if (heading)
    {
      string = [MEMORY[0x277CCAB68] string];
      v50[0] = 0;
      v50[1] = v50;
      v50[2] = 0x2020000000;
      v51 = 0;
      *aBlock = MEMORY[0x277D85DD0];
      *&aBlock[8] = 3221225472;
      *&aBlock[16] = ___DBStringFromFocusHeading_block_invoke;
      v53 = &unk_278F026C0;
      v22 = string;
      v54 = v22;
      v55 = v50;
      v23 = _Block_copy(aBlock);
      v24 = v23;
      if (heading)
      {
        (*(v23 + 2))(v23, @"Up");
      }

      if ((heading & 2) != 0)
      {
        (v24)[2](v24, @"Down");
      }

      if ((heading & 4) != 0)
      {
        (v24)[2](v24, @"Left");
      }

      if ((heading & 8) != 0)
      {
        (v24)[2](v24, @"Right");
      }

      if ((heading & 0x20) != 0)
      {
        (v24)[2](v24, @"Previous");
      }

      if ((heading & 0x10) != 0)
      {
        (v24)[2](v24, @"Next");
      }

      if ((heading & 0x100) != 0)
      {
        (v24)[2](v24, @"First");
      }

      if ((heading & 0x200) != 0)
      {
        (v24)[2](v24, @"Last");
      }

      v25 = v22;

      _Block_object_dispose(v50, 8);
    }

    else
    {
      v25 = @"None";
    }

    v26 = NSStringFromBOOL();
    v27 = v26;
    v28 = @"to dock";
    *aBlock = 138412802;
    *&aBlock[4] = v25;
    *&aBlock[12] = 2112;
    if (v19 == 1)
    {
      v28 = @"from dock";
    }

    *&aBlock[14] = v26;
    *&aBlock[22] = 2112;
    v53 = v28;
    _os_log_impl(&dword_248146000, v20, OS_LOG_TYPE_DEFAULT, "Handling focus movement action with heading: %@, shouldPerformHaptic: %@, direction: %@", aBlock, 0x20u);
  }

  environmentConfiguration3 = [(DBScreenController *)self environmentConfiguration];
  v30 = +[DBFocusMovementManager isMovementAllowedForHeading:direction:isRTL:isLeftHandDrive:statusBarEdge:supportsClimateOverlayFocus:](DBFocusMovementManager, "isMovementAllowedForHeading:direction:isRTL:isLeftHandDrive:statusBarEdge:supportsClimateOverlayFocus:", heading, v19, layoutDirection == 1, isRightHandDrive ^ 1u, [environmentConfiguration3 currentStatusBarEdge], climateOverlayScene != 0);

  if (v30)
  {
    v31 = DBLogForCategory(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *aBlock = 0;
      _os_log_impl(&dword_248146000, v31, OS_LOG_TYPE_DEFAULT, "Focus movement in direction is allowed", aBlock, 2u);
    }

    if (climateOverlayScene)
    {
      environmentConfiguration4 = [(DBScreenController *)self environmentConfiguration];
      hasDualStatusBar2 = [environmentConfiguration4 hasDualStatusBar];

      v34 = heading;
      if ((hasDualStatusBar2 & 1) == 0)
      {
        if (heading == 16)
        {
          v35 = 8;
          v36 = 4;
        }

        else
        {
          v35 = 4;
          v36 = 8;
        }

        if (layoutDirection == 1)
        {
          v34 = v36;
        }

        else
        {
          v34 = v35;
        }
      }

      if ([(DBDashboard *)self _isDockScene:sceneCopy])
      {
        [(DBDashboard *)self _dropDockFocusAssertionForAction:actionCopy];
      }

      if ((v43 | isHidden))
      {
        climateFocusAssertion = [(DBDashboard *)self climateFocusAssertion];
        [actionCopy focusedFrame];
        [climateFocusAssertion invalidateWithHeading:v34 focusedFrame:?];

        [(DBDashboard *)self setClimateFocusAssertion:0];
      }

      if (v19)
      {
        if (v19 != 2)
        {
          _isPunchThroughPresented = [(DBDashboard *)self _isPunchThroughPresented];
          if (v19 == 1 && _isPunchThroughPresented)
          {
            [(DBDashboard *)self _attemptFocusTransferForAction:actionCopy fromScene:sceneCopy heading:heading];
          }

          goto LABEL_64;
        }

        [(DBDashboard *)self _takeClimateFocusAssertionForAction:actionCopy heading:v34];
      }

      else
      {
        [(DBDashboard *)self _takeDockFocusAssertionForAction:actionCopy heading:v34];
      }

      [(DBDashboard *)self _isPunchThroughPresented];
    }

    else if ([(DBDashboard *)self _isDockScene:sceneCopy])
    {
      [(DBDashboard *)self _dropDockFocusAssertionForAction:actionCopy];
    }

    else
    {
      [(DBDashboard *)self _takeDockFocusAssertionForAction:actionCopy];
    }

LABEL_64:
    if (shouldPerformHapticFeedback)
    {
      -[DBFocusMovementManager performHapticFeedbackForSenderID:](self->_focusMovementManager, "performHapticFeedbackForSenderID:", [inputDeviceInfo senderID]);
    }

    goto LABEL_66;
  }

  environmentConfiguration5 = [(DBScreenController *)self environmentConfiguration];
  if ([environmentConfiguration5 currentViewAreaSupportsFocusTransfer])
  {
    _isPunchThroughPresented2 = [(DBDashboard *)self _isPunchThroughPresented];

    if (!_isPunchThroughPresented2)
    {
      [(DBDashboard *)self _attemptFocusTransferForAction:actionCopy fromScene:sceneCopy heading:heading];
      goto LABEL_66;
    }
  }

  else
  {
  }

  v39 = DBLogForCategory(0);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *aBlock = 0;
    _os_log_impl(&dword_248146000, v39, OS_LOG_TYPE_DEFAULT, "Focus movement in direction is not allowed", aBlock, 2u);
  }

LABEL_66:
}

- (unint64_t)_adjustedHeadingForVerticalClimateOverlay:(unint64_t)overlay direction:(unint64_t)direction
{
  mainWindow = [(DBDashboard *)self mainWindow];
  traitCollection = [mainWindow traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  isRightHandDrive = [environmentConfiguration isRightHandDrive];

  if ((direction & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v12 = 8;
    if (layoutDirection == 1)
    {
      v12 = 4;
    }

    if (overlay == 16 || v12 == overlay)
    {
      if ((layoutDirection == 1) != isRightHandDrive)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      v13 = 4;
      if (layoutDirection == 1)
      {
        v13 = 8;
      }

      if (overlay == 32 || v13 == overlay)
      {
        if ((layoutDirection == 1) != isRightHandDrive)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }
    }
  }

  return overlay;
}

- (unint64_t)_adjustedHeadingForHorizontalClimateOverlay:(unint64_t)overlay
{
  mainWindow = [(DBDashboard *)self mainWindow];
  traitCollection = [mainWindow traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  v7 = 16;
  if (layoutDirection == 1)
  {
    v7 = 32;
  }

  overlayCopy = 32;
  if (layoutDirection == 1)
  {
    overlayCopy = 16;
  }

  if (overlay != 4)
  {
    overlayCopy = overlay;
  }

  if (overlay == 8)
  {
    return v7;
  }

  else
  {
    return overlayCopy;
  }
}

- (unint64_t)_directionWithHorizontalClimateOverlayWithHeading:(unint64_t)heading isClimateOverlaySceneHidden:(BOOL)hidden isClimateScene:(BOOL)scene isDockScene:(BOOL)dockScene action:(id)action
{
  dockSceneCopy = dockScene;
  sceneCopy = scene;
  hiddenCopy = hidden;
  actionCopy = action;
  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  isRightHandDrive = [environmentConfiguration isRightHandDrive];

  mainWindow = [(DBDashboard *)self mainWindow];
  traitCollection = [mainWindow traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  if (heading == 8)
  {
    v18 = 1;
  }

  else if (heading == 16)
  {
    v18 = layoutDirection != 1;
  }

  else
  {
    v18 = heading == 32 && layoutDirection == 1;
    if (heading == 1)
    {
      v20 = 1;
      goto LABEL_46;
    }
  }

  if (sceneCopy)
  {
    [actionCopy focusedFrame];
    v22 = v21;
    climateOverlayController = [(DBDashboard *)self climateOverlayController];
    climateWindow = [climateOverlayController climateWindow];
    [climateWindow frame];
    v26 = v25 * 0.5;

    if (v22 >= v26)
    {
      v27 = (isRightHandDrive ^ 1) & v18;
    }

    else
    {
      v27 = isRightHandDrive & !v18;
    }

    v20 = v27;
  }

  else
  {
    if (!dockSceneCopy)
    {
      if (isRightHandDrive)
      {
        if (layoutDirection != 1)
        {
          if (v18)
          {
            v20 = 3;
          }

          else
          {
            v20 = 0;
          }

          goto LABEL_46;
        }

        v31 = 2;
        if (hiddenCopy)
        {
          v31 = 0;
        }

        v32 = !v18;
        v33 = 3;
      }

      else
      {
        v31 = 2;
        if (hiddenCopy)
        {
          v31 = 0;
        }

        if (v18)
        {
          v31 = 3;
        }

        v33 = 3;
        if (v18)
        {
          v33 = 0;
        }

        v32 = layoutDirection == 1;
      }

      if (v32)
      {
        v20 = v33;
      }

      else
      {
        v20 = v31;
      }

      goto LABEL_46;
    }

    dockController = [(DBDashboard *)self dockController];
    isHomeButtonFocused = [dockController isHomeButtonFocused];

    if (isHomeButtonFocused)
    {
      v30 = !v18;
      if (!isRightHandDrive)
      {
        if (v18)
        {
          v20 = 2;
        }

        else
        {
          v20 = 1;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v30 = !hiddenCopy;
    }

    if (v30)
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }
  }

LABEL_46:

  return v20;
}

- (unint64_t)_directionWithVerticalClimateOverlayWithHeading:(unint64_t)heading isClimateOverlaySceneHidden:(BOOL)hidden isClimateScene:(BOOL)scene isDockScene:(BOOL)dockScene action:(id)action
{
  dockSceneCopy = dockScene;
  sceneCopy = scene;
  hiddenCopy = hidden;
  actionCopy = action;
  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  isRightHandDrive = [environmentConfiguration isRightHandDrive];

  mainWindow = [(DBDashboard *)self mainWindow];
  traitCollection = [mainWindow traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  v18 = 32;
  if (layoutDirection == 1)
  {
    v19 = 16;
  }

  else
  {
    v19 = 32;
  }

  if (layoutDirection != 1)
  {
    v18 = 16;
  }

  v21 = heading == 4 || v19 == heading;
  v23 = heading == 8 || v18 == heading;
  if (!isRightHandDrive)
  {
    v23 = v21;
  }

  v24 = heading == 2 || v23;
  if (sceneCopy)
  {
    [actionCopy focusedFrame];
    v26 = v25;
    climateOverlayController = [(DBDashboard *)self climateOverlayController];
    climateWindow = [climateOverlayController climateWindow];
    [climateWindow frame];
    v30 = v29 * 0.5;

    if (v26 <= v30)
    {
      v31 = v24 ^ 1u;
    }

    else
    {
      v31 = ((heading - 4) & 0xFFFFFFFFFFFFFFFBLL) == 0;
    }
  }

  else if (dockSceneCopy)
  {
    v31 = 1;
    if (heading != 4 && heading != 8)
    {
      dockController = [(DBDashboard *)self dockController];
      isHomeButtonFocused = [dockController isHomeButtonFocused];

      if (isHomeButtonFocused)
      {
        v34 = v24 == 0;
      }

      else
      {
        v34 = !hiddenCopy;
      }

      if (v34)
      {
        v31 = 2;
      }

      else
      {
        v31 = 1;
      }
    }
  }

  else
  {
    v35 = 2;
    if (hiddenCopy)
    {
      v35 = 0;
    }

    if (v24)
    {
      v31 = v35;
    }

    else
    {
      v31 = 3;
    }
  }

  return v31;
}

- (BOOL)_isPunchThroughPresented
{
  workspace = [(DBDashboard *)self workspace];
  state = [workspace state];
  stackedEntity = [state stackedEntity];

  v5 = objc_opt_class();
  LOBYTE(v5) = [v5 isEqual:objc_opt_class()];

  return v5;
}

- (void)_takeClimateFocusAssertionForAction:(id)action heading:(unint64_t)heading
{
  actionCopy = action;
  v7 = DBLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Taking climate focus assertion", v19, 2u);
  }

  focusController = [(DBDashboard *)self focusController];
  climateOverlayScene = [(DBDashboard *)self climateOverlayScene];
  [actionCopy focusedFrame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [focusController deferFocusToScene:climateOverlayScene priority:4 reason:@"climate" heading:heading focusedFrame:{v11, v13, v15, v17}];

  [(DBDashboard *)self setClimateFocusAssertion:v18];
}

- (void)_attemptFocusTransferForAction:(id)action fromScene:(id)scene heading:(unint64_t)heading
{
  v53[5] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  sceneCopy = scene;
  v10 = DBLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v51.a) = 0;
    _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_DEFAULT, "Attempting focus transfer to OEM UI", &v51, 2u);
  }

  rootScene = [(DBScreenController *)self rootScene];

  if (rootScene == sceneCopy)
  {
    environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
    [environmentConfiguration screenScale];
    v34 = v33;

    [actionCopy focusedFrame];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    CGAffineTransformMakeScale(&v51, v34, v34);
    v54.origin.x = v36;
    v54.origin.y = v38;
    v54.size.width = v40;
    v54.size.height = v42;
    v55 = CGRectApplyAffineTransform(v54, &v51);
    x = v55.origin.x;
    y = v55.origin.y;
    width = v55.size.width;
    height = v55.size.height;
  }

  else
  {
    [actionCopy focusedFrame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    rootViewController = [(DBDashboard *)self rootViewController];
    contentView = [rootViewController contentView];
    mainWindow = [(DBDashboard *)self mainWindow];
    screen = [mainWindow screen];
    [DBFocusMovementManager convertRect:contentView fromView:screen toScreen:v13, v15, v17, v19];
    x = v24;
    y = v26;
    width = v28;
    height = v30;
  }

  v52[0] = @"originXPixels";
  v43 = [MEMORY[0x277CCABB0] numberWithDouble:x];
  v53[0] = v43;
  v52[1] = @"originYPixels";
  v44 = [MEMORY[0x277CCABB0] numberWithDouble:y];
  v53[1] = v44;
  v52[2] = @"widthPixels";
  v45 = [MEMORY[0x277CCABB0] numberWithDouble:width];
  v53[2] = v45;
  v52[3] = @"heightPixels";
  v46 = [MEMORY[0x277CCABB0] numberWithDouble:height];
  v53[3] = v46;
  v52[4] = @"focusHeading";
  v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:heading];
  v53[4] = v47;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:5];

  environmentConfiguration2 = [(DBScreenController *)self environmentConfiguration];
  session = [environmentConfiguration2 session];
  [session sendCommand:@"deviceOfferFocus" withParameters:v48];
}

- (void)_dropDockFocusAssertionForAction:(id)action
{
  actionCopy = action;
  focusMovementInfo = [actionCopy focusMovementInfo];
  heading = [focusMovementInfo heading];

  v7 = DBLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Dropping dock focus assertion", v17, 2u);
  }

  dockController = [(DBDashboard *)self dockController];
  [actionCopy focusedFrame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [dockController relinquishFocusWithHeading:heading focusedFrame:{v10, v12, v14, v16}];
}

- (void)_takeDockFocusAssertionForAction:(id)action heading:(unint64_t)heading
{
  actionCopy = action;
  v7 = DBLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Taking dock focus assertion", v17, 2u);
  }

  dockController = [(DBDashboard *)self dockController];
  [actionCopy focusedFrame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [dockController acquireFocusWithHeading:heading focusedFrame:{v10, v12, v14, v16}];
}

- (void)_takeDockFocusAssertionForAction:(id)action
{
  actionCopy = action;
  focusMovementInfo = [actionCopy focusMovementInfo];
  heading = [focusMovementInfo heading];

  [(DBDashboard *)self _takeDockFocusAssertionForAction:actionCopy heading:heading];
}

- (void)setAlertFocusAssertion:(id)assertion
{
  assertionCopy = assertion;
  alertFocusAssertion = self->_alertFocusAssertion;
  if (alertFocusAssertion != assertionCopy)
  {
    [(DBFocusAssertion *)alertFocusAssertion invalidate];
    objc_storeStrong(&self->_alertFocusAssertion, assertion);
  }

  MEMORY[0x2821F96F8]();
}

- (void)setHomeFocusAssertion:(id)assertion
{
  assertionCopy = assertion;
  homeFocusAssertion = self->_homeFocusAssertion;
  if (homeFocusAssertion != assertionCopy)
  {
    [(DBFocusAssertion *)homeFocusAssertion invalidate];
    objc_storeStrong(&self->_homeFocusAssertion, assertion);
  }

  MEMORY[0x2821F96F8]();
}

- (void)setLockOutFocusAssertion:(id)assertion
{
  assertionCopy = assertion;
  lockOutFocusAssertion = self->_lockOutFocusAssertion;
  if (lockOutFocusAssertion != assertionCopy)
  {
    [(DBFocusAssertion *)lockOutFocusAssertion invalidate];
    objc_storeStrong(&self->_lockOutFocusAssertion, assertion);
  }

  MEMORY[0x2821F96F8]();
}

- (void)setNotificationFocusAssertion:(id)assertion
{
  assertionCopy = assertion;
  notificationFocusAssertion = self->_notificationFocusAssertion;
  if (notificationFocusAssertion != assertionCopy)
  {
    [(DBFocusAssertion *)notificationFocusAssertion invalidate];
    objc_storeStrong(&self->_notificationFocusAssertion, assertion);
  }

  MEMORY[0x2821F96F8]();
}

- (void)setOEMFocusAssertion:(id)assertion
{
  assertionCopy = assertion;
  oemFocusAssertion = self->_oemFocusAssertion;
  if (oemFocusAssertion != assertionCopy)
  {
    [(DBFocusAssertion *)oemFocusAssertion invalidate];
    objc_storeStrong(&self->_oemFocusAssertion, assertion);
  }

  MEMORY[0x2821F96F8]();
}

- (void)setClimateFocusAssertion:(id)assertion
{
  assertionCopy = assertion;
  climateFocusAssertion = self->_climateFocusAssertion;
  if (climateFocusAssertion != assertionCopy)
  {
    [(DBFocusAssertion *)climateFocusAssertion invalidate];
    objc_storeStrong(&self->_climateFocusAssertion, assertion);
  }

  MEMORY[0x2821F96F8]();
}

- (DBScreenshotManager)screenshotManager
{
  screenshotManager = self->_screenshotManager;
  if (!screenshotManager)
  {
    v4 = [DBScreenshotManager alloc];
    windowScene = [(DBScreenController *)self windowScene];
    v6 = [(DBScreenshotManager *)v4 initWithWindowScene:windowScene];
    v7 = self->_screenshotManager;
    self->_screenshotManager = v6;

    screenshotManager = self->_screenshotManager;
  }

  return screenshotManager;
}

- (FBScene)siriScene
{
  siriViewController = [(DBDashboard *)self siriViewController];
  scene = [siriViewController scene];

  return scene;
}

- (id)scene:(id)scene handleActions:(id)actions
{
  v55 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  actionsCopy = actions;
  v7 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(actionsCopy, "count")}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = actionsCopy;
  v8 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v49;
    *&v9 = 138543362;
    v44 = v9;
    v45 = v7;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v49 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v48 + 1) + 8 * i);
        uIActionType = [v13 UIActionType];
        if (uIActionType == 7)
        {
          v21 = sceneCopy;
          v22 = DBLogForCategory(0);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_248146000, v22, OS_LOG_TYPE_DEFAULT, "Tap received from status bar", buf, 2u);
          }

          v23 = v13;
          statusBarStyleOverride = [v23 statusBarStyleOverride];
          if (statusBarStyleOverride != 0x2000)
          {
            if (statusBarStyleOverride == 4)
            {
              v31 = DBLogForCategory(0);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_248146000, v31, OS_LOG_TYPE_DEFAULT, "Current override is recording", buf, 2u);
              }

              _nowRecordingBundleIdentifier = [(DBDashboard *)self _nowRecordingBundleIdentifier];
              if (!_nowRecordingBundleIdentifier)
              {
LABEL_35:

                sceneCopy = v21;
                v7 = v45;
                continue;
              }

              v33 = _nowRecordingBundleIdentifier;
              v34 = +[DBApplicationController sharedInstance];
              v35 = [v34 applicationWithBundleIdentifier:v33];

              appPolicy = [v35 appPolicy];
              v37 = appPolicy;
              if (v35 && [appPolicy canDisplayOnCarScreen])
              {
                v38 = DBLogForCategory(0);
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v44;
                  v53 = v35;
                  _os_log_impl(&dword_248146000, v38, OS_LOG_TYPE_DEFAULT, "Recording app is CarPlay app, activating: %{public}@", buf, 0xCu);
                }

                v39 = objc_alloc_init(DBMutableWorkspaceStateChangeRequest);
                [(DBMutableWorkspaceStateChangeRequest *)v39 activateApplication:v35];
                [(DBWorkspace *)self->_workspace requestStateChange:v39];
              }

              else
              {
                v41 = DBLogForCategory(0);
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_248146000, v41, OS_LOG_TYPE_DEFAULT, "Recording app is not a CarPlay app, displaying alert", buf, 2u);
                }

                [(DBDashboard *)self _displayRecordingAlert];
              }
            }

            else
            {
              if (statusBarStyleOverride != 1)
              {
                goto LABEL_35;
              }

              v25 = DBLogForCategory(0);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_248146000, v25, OS_LOG_TYPE_DEFAULT, "Current override is in call, activating InCallService", buf, 2u);
              }

              v26 = +[DBApplicationController sharedInstance];
              inCallServiceApplication = [v26 inCallServiceApplication];

              v28 = objc_alloc_init(DBActivationSettings);
              faceTimeShowCarPlayInCallUIURL = [MEMORY[0x277CBEBC0] faceTimeShowCarPlayInCallUIURL];
              [(DBActivationSettings *)v28 setUrl:faceTimeShowCarPlayInCallUIURL];

              v30 = [DBApplicationLaunchInfo launchInfoForApplication:inCallServiceApplication withActivationSettings:v28];
              [(DBDashboard *)self _handleBackgroundURLDeliveryForLaunchInfo:v30];

LABEL_39:
            }

            sceneCopy = v21;
            v7 = v45;
LABEL_45:
            [v7 addObject:v13];
            continue;
          }

          v40 = DBLogForCategory(0);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_248146000, v40, OS_LOG_TYPE_DEFAULT, "Current override is sysdiagnose, sending TTR event", buf, 2u);
          }

          inCallServiceApplication = [DBEvent eventWithType:6 context:0];
          [(DBDashboard *)self handleEvent:inCallServiceApplication];
          goto LABEL_39;
        }

        if (uIActionType == 24)
        {
          v20 = DBLogForCategory(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_248146000, v20, OS_LOG_TYPE_DEFAULT, "Focus movement action received", buf, 2u);
          }

          [(DBDashboard *)self handleFocusMovementAction:v13 fromScene:sceneCopy];
          goto LABEL_45;
        }

        if (uIActionType != 13)
        {
          continue;
        }

        clientProcess = [sceneCopy clientProcess];
        v16 = [clientProcess pid];
        v17 = getpid();

        v18 = DBLogForCategory(0);
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
        if (v16 != v17)
        {
          if (v19)
          {
            *buf = 0;
            _os_log_impl(&dword_248146000, v18, OS_LOG_TYPE_INFO, "Handling unhandled back action", buf, 2u);
          }

          [(DBDashboard *)self handleACHomeUp:2];
          goto LABEL_45;
        }

        if (v19)
        {
          *buf = 0;
          _os_log_impl(&dword_248146000, v18, OS_LOG_TYPE_INFO, "Received unhandled back from CarPlay.app, not handling", buf, 2u);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v10);
  }

  v42 = [v7 copy];

  return v42;
}

- (void)carManager:(id)manager didUpdateCar:(id)car
{
  v38 = *MEMORY[0x277D85DE8];
  carCopy = car;
  audioSettings = [carCopy audioSettings];
  receivedAllValues = [audioSettings receivedAllValues];

  if (receivedAllValues)
  {
    audioNotificationManager = self->_audioNotificationManager;
    v9 = DBLogForCategory(0);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (audioNotificationManager)
    {
      if (v10)
      {
        LOWORD(v34) = 0;
        _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "Update audio observers", &v34, 2u);
      }

      [(DBAudioNotificationManager *)self->_audioNotificationManager updateObserversForCar:carCopy];
    }

    else
    {
      if (v10)
      {
        LOWORD(v34) = 0;
        _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "Setup audio notification", &v34, 2u);
      }

      v12 = [_TtC9DashBoard13DBAudioWindow alloc];
      windowScene = [(DBScreenController *)self windowScene];
      layoutEngine = [(DBDashboard *)self layoutEngine];
      [layoutEngine notificationWindowFrame];
      v15 = [(DBAudioWindow *)v12 initWithWindowScene:windowScene frame:?];
      audioWindow = self->_audioWindow;
      self->_audioWindow = v15;

      v17 = [[_TtC9DashBoard33DBAudioNotificationViewController alloc] initWithEnvironment:self];
      audioViewController = self->_audioViewController;
      self->_audioViewController = v17;

      dockController = [(DBDashboard *)self dockController];
      [dockController addDockObserver:self->_audioViewController];

      [(DBAudioWindow *)self->_audioWindow setRootViewController:self->_audioViewController];
      [(DBAudioWindow *)self->_audioWindow setHidden:1];
      v20 = [[DBAudioNotificationManager alloc] initWithWindow:self->_audioWindow viewController:self->_audioViewController car:carCopy];
      v21 = self->_audioNotificationManager;
      self->_audioNotificationManager = v20;
    }
  }

  else
  {
    v11 = DBLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v34) = 0;
      _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, "Car not ready for audio notification manager", &v34, 2u);
    }
  }

  if ([carCopy hasAccessoryType:*MEMORY[0x277CF80B0]])
  {
    [(DBDashboard *)self _setupClimateOverlayControllerIfNeeded];
  }

  cameraOverlayController = [(DBDashboard *)self cameraOverlayController];
  [cameraOverlayController setCar:carCopy];

  if (!self->_requestContentPTManager)
  {
    v23 = [DBRequestContentPunchThroughManager alloc];
    environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
    v25 = [(DBRequestContentPunchThroughManager *)v23 initWithEnvironmentConfiguration:environmentConfiguration];
    [(DBDashboard *)self setRequestContentPTManager:v25];

    requestContentPTManager = [(DBDashboard *)self requestContentPTManager];
    [requestContentPTManager registerObserver:self];

    v27 = DBLogForCategory(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      requestContentPTManager2 = [(DBDashboard *)self requestContentPTManager];
      v34 = 138412290;
      v35 = requestContentPTManager2;
      _os_log_impl(&dword_248146000, v27, OS_LOG_TYPE_DEFAULT, "DBRequestContentPunchThroughManager requestContentPTManager init DONE: %@", &v34, 0xCu);
    }

    workspace = self->_workspace;
    requestContentPTManager3 = [(DBDashboard *)self requestContentPTManager];
    [(DBWorkspace *)workspace addObserver:requestContentPTManager3];
  }

  v31 = DBLogForCategory(0);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    requestContentPTManager4 = [(DBDashboard *)self requestContentPTManager];
    v34 = 138412546;
    v35 = requestContentPTManager4;
    v36 = 2112;
    v37 = carCopy;
    _os_log_impl(&dword_248146000, v31, OS_LOG_TYPE_DEFAULT, "DBRequestContentPunchThroughManager setCar: %@, %@", &v34, 0x16u);
  }

  requestContentPTManager5 = [(DBDashboard *)self requestContentPTManager];
  [requestContentPTManager5 setCar:carCopy];
}

- (void)carManager:(id)manager didUpdateAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  cameraOverlayController = [(DBDashboard *)self cameraOverlayController];
  [cameraOverlayController setCar:accessoriesCopy];

  requestContentPTManager = [(DBDashboard *)self requestContentPTManager];
  [requestContentPTManager setCar:accessoriesCopy];
}

- (void)_setupClimateOverlayControllerIfNeeded
{
  os_unfair_lock_lock(&self->_lock);
  lock_invalidated = self->_lock_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  if (!self->_climateOverlayController && !lock_invalidated)
  {
    v4 = +[DBApplicationController sharedInstance];
    climateApplication = [v4 climateApplication];

    if (climateApplication)
    {
      overlaySceneWorkspace = [(DBDashboard *)self overlaySceneWorkspace];
      v28 = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = __53__DBDashboard__setupClimateOverlayControllerIfNeeded__block_invoke;
      v31 = &unk_278F021D0;
      selfCopy = self;
      v33 = climateApplication;
      v7 = [overlaySceneWorkspace createScene:&v28];

      if (v7)
      {
        [(DBDashboard *)self setClimateOverlayScene:v7, v28, v29, v30, v31, selfCopy];
        v8 = [_TtC9DashBoard26DBClimateOverlayController alloc];
        windowScene = [(DBScreenController *)self windowScene];
        layoutEngine = [(DBDashboard *)self layoutEngine];
        [layoutEngine climateWindowFrame];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        layoutEngine2 = [(DBDashboard *)self layoutEngine];
        v20 = [(DBClimateOverlayController *)v8 initWithWindowScene:windowScene windowFrame:v7 climateScene:layoutEngine2 layoutEngine:self environment:v12, v14, v16, v18];
        climateOverlayController = self->_climateOverlayController;
        self->_climateOverlayController = v20;

        v22 = self->_climateOverlayController;
        dockController = [(DBDashboard *)self dockController];
        [(DBClimateOverlayController *)v22 setDelegate:dockController];

        persistentElementsManager = [(DBDashboard *)self persistentElementsManager];
        [(DBClimateOverlayController *)self->_climateOverlayController setPersistentElementsManager:persistentElementsManager];

        dockController2 = [(DBDashboard *)self dockController];
        [dockController2 addDockObserver:self->_climateOverlayController];

        climateOverlayScene = [(DBDashboard *)self climateOverlayScene];
        [climateOverlayScene addObserver:self];
      }

      else
      {
        climateOverlayScene = DBLogForCategory(0);
        if (os_log_type_enabled(climateOverlayScene, OS_LOG_TYPE_ERROR))
        {
          [DBDashboard _setupClimateOverlayControllerIfNeeded];
        }
      }
    }

    else
    {
      v27 = DBLogForCategory(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [DBDashboard _setupClimateOverlayControllerIfNeeded];
      }
    }
  }
}

void __53__DBDashboard__setupClimateOverlayControllerIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 sceneIdentifierForApplication:v4];
  v7 = [@"climateOverlay-" stringByAppendingString:v6];
  [v5 setIdentifier:v7];

  v8 = MEMORY[0x277D0ADA8];
  v9 = [*(a1 + 40) info];
  v10 = [v9 processIdentity];
  v11 = [v8 defaultIdentityForProcessIdentity:v10];
  [v5 setClientIdentity:v11];

  v12 = [MEMORY[0x277CF9218] specification];
  [v5 setSpecification:v12];
}

- (void)_setupCameraOverlayController
{
  v3 = +[DBApplicationController sharedInstance];
  carCameraApplication = [v3 carCameraApplication];

  if (carCameraApplication)
  {
    overlaySceneWorkspace = [(DBDashboard *)self overlaySceneWorkspace];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __44__DBDashboard__setupCameraOverlayController__block_invoke;
    v16 = &unk_278F021D0;
    selfCopy = self;
    v18 = carCameraApplication;
    v6 = [overlaySceneWorkspace createScene:&v13];

    if (v6)
    {
      [(DBDashboard *)self setCameraScene:v6, v13, v14, v15, v16, selfCopy];
      v7 = [_TtC9DashBoard25DBCameraOverlayController alloc];
      windowScene = [(DBScreenController *)self windowScene];
      layoutEngine = [(DBDashboard *)self layoutEngine];
      [layoutEngine cameraWindowFrame];
      v10 = [(DBCameraOverlayController *)v7 initWithWindowScene:windowScene windowFrame:v6 cameraScene:self environment:?];
      cameraOverlayController = self->_cameraOverlayController;
      self->_cameraOverlayController = v10;
    }

    else
    {
      windowScene = DBLogForCategory(0);
      if (os_log_type_enabled(windowScene, OS_LOG_TYPE_ERROR))
      {
        [DBDashboard _setupCameraOverlayController];
      }
    }
  }

  else
  {
    v12 = DBLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [DBDashboard _setupCameraOverlayController];
    }
  }
}

void __44__DBDashboard__setupCameraOverlayController__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 sceneIdentifierForApplication:v4];
  [v5 setIdentifier:v6];

  v7 = MEMORY[0x277D0ADA8];
  v8 = [*(a1 + 40) info];
  v9 = [v8 processIdentity];
  v10 = [v7 defaultIdentityForProcessIdentity:v9];
  [v5 setClientIdentity:v10];

  v11 = [MEMORY[0x277D751A0] specification];
  [v5 setSpecification:v11];
}

- (void)volumeNotificationServiceUpdated:(id)updated
{
  v4 = DBLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "Volume notification service updated", v5, 2u);
  }

  [(DBDashboard *)self _updateAudioNotificationBlocker];
}

- (CRSIconLayoutVehicleDataProviding)iconLayoutDataProvider
{
  rootViewController = [(DBDashboard *)self rootViewController];
  iconLayoutDataProvider = [rootViewController iconLayoutDataProvider];

  return iconLayoutDataProvider;
}

- (CRSWidgetLayoutVehicleDataProviding)widgetLayoutDataProvider
{
  rootViewController = [(DBDashboard *)self rootViewController];
  widgetLayoutDataProvider = [rootViewController widgetLayoutDataProvider];

  return widgetLayoutDataProvider;
}

- (id)sceneIdentifierForApplication:(id)application
{
  applicationCopy = application;
  appPolicy = [applicationCopy appPolicy];
  if ([appPolicy launchUsingTemplateUI])
  {
    v6 = MEMORY[0x277CCACA8];
    displayIdentity = [(DBDashboard *)self displayIdentity];
    v8 = DBTemplateUIHostBundleIdentifier;
LABEL_5:
    v9 = *v8;
    bundleIdentifier = [applicationCopy bundleIdentifier];
    [v6 stringWithFormat:@"%@:%@:%@", displayIdentity, v9, bundleIdentifier];
    goto LABEL_6;
  }

  if (([appPolicy launchUsingMusicUIService] & 1) != 0 || (objc_msgSend(appPolicy, "isCarPlaySupported") & 1) == 0 && (objc_msgSend(applicationCopy, "info"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "supportsBackgroundMode:", *MEMORY[0x277D76778]), v13, v14))
  {
    v6 = MEMORY[0x277CCACA8];
    displayIdentity = [(DBDashboard *)self displayIdentity];
    v8 = DBMusicUIServiceBundleIdentifier;
    goto LABEL_5;
  }

  v15 = MEMORY[0x277CCACA8];
  displayIdentity = [(DBDashboard *)self displayIdentity];
  bundleIdentifier = [applicationCopy bundleIdentifier];
  [v15 stringWithFormat:@"%@:%@", displayIdentity, bundleIdentifier, v16];
  v11 = LABEL_6:;

  return v11;
}

- (CGRect)sceneFrameForApplication:(id)application proxyApplication:(id)proxyApplication
{
  applicationCopy = application;
  proxyApplicationCopy = proxyApplication;
  v8 = +[DBApplicationController sharedInstance];
  templateUIHostApplication = [v8 templateUIHostApplication];

  if (proxyApplicationCopy)
  {
    v10 = templateUIHostApplication == proxyApplicationCopy;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = applicationCopy;
  }

  else
  {
    v11 = proxyApplicationCopy;
  }

  [(DBDashboard *)self sceneFrameForApplication:v11];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)sceneFrameForApplication:(id)application
{
  applicationCopy = application;
  bundleIdentifier = [applicationCopy bundleIdentifier];
  v6 = [bundleIdentifier isEqualToString:@"com.apple.CarPlayWallpaper"];

  layoutEngine = [(DBDashboard *)self layoutEngine];
  v8 = layoutEngine;
  if (v6)
  {
    [layoutEngine wallpaperWindowFrame];
  }

  else
  {
    [layoutEngine sceneFrameForApplication:applicationCopy];
  }

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;

  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (UIEdgeInsets)safeAreaInsetsForApplication:(id)application proxyApplication:(id)proxyApplication
{
  applicationCopy = application;
  proxyApplicationCopy = proxyApplication;
  v8 = +[DBApplicationController sharedInstance];
  musicUIServiceApplication = [v8 musicUIServiceApplication];

  if (musicUIServiceApplication == proxyApplicationCopy)
  {
    v10 = proxyApplicationCopy;
  }

  else
  {
    v10 = applicationCopy;
  }

  [(DBDashboard *)self safeAreaInsetsForApplication:v10];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.right = v22;
  result.bottom = v21;
  result.left = v20;
  result.top = v19;
  return result;
}

- (UIEdgeInsets)safeAreaInsetsForApplication:(id)application
{
  applicationCopy = application;
  layoutEngine = [(DBDashboard *)self layoutEngine];
  [layoutEngine safeAreaInsetsForApplication:applicationCopy];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (int64_t)sceneInterfaceStyleForApplication:(id)application proxyApplication:(id)proxyApplication
{
  v4 = [(DBScreenController *)self environmentConfiguration:application];
  resolvedUserInterfaceStyle = [v4 resolvedUserInterfaceStyle];

  return resolvedUserInterfaceStyle;
}

- (int64_t)sceneMapInterfaceStyleForApplication:(id)application proxyApplication:(id)proxyApplication
{
  v4 = [(DBScreenController *)self environmentConfiguration:application];
  effectiveMapsUserInterfaceStyle = [v4 effectiveMapsUserInterfaceStyle];

  return effectiveMapsUserInterfaceStyle;
}

- (void)invalidate
{
  v75 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_invalidated = self->_lock_invalidated;
  self->_lock_invalidated = 1;
  os_unfair_lock_unlock(&self->_lock);
  mEMORY[0x277D0AAD8] = DBLogForCategory(0);
  v5 = os_log_type_enabled(mEMORY[0x277D0AAD8], OS_LOG_TYPE_DEFAULT);
  if (lock_invalidated)
  {
    if (v5)
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_248146000, mEMORY[0x277D0AAD8], OS_LOG_TYPE_DEFAULT, "Already invalidated DBDashboard<%p>", buf, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_248146000, mEMORY[0x277D0AAD8], OS_LOG_TYPE_DEFAULT, "Invalidating DBDashboard<%p>", buf, 0xCu);
    }

    splashScreenAlert = [(DBDashboard *)self splashScreenAlert];
    [splashScreenAlert invalidate];

    rootViewController = [(DBDashboard *)self rootViewController];
    [rootViewController invalidate];

    wallpaperRootViewController = [(DBDashboard *)self wallpaperRootViewController];
    [wallpaperRootViewController invalidate];

    volumeNotificationService = [(DBDashboard *)self volumeNotificationService];
    [volumeNotificationService removeObserver:self];

    volumeNotificationServiceDomainActivationToken = [(DBDashboard *)self volumeNotificationServiceDomainActivationToken];
    [volumeNotificationServiceDomainActivationToken invalidate];

    volumeNotificationService2 = [(DBDashboard *)self volumeNotificationService];
    [volumeNotificationService2 invalidate];

    [(DBDashboard *)self setVolumeNotificationServiceDomainActivationToken:0];
    requestContentPTManager = [(DBDashboard *)self requestContentPTManager];
    [requestContentPTManager unregisterObserver:self];

    workspace = self->_workspace;
    requestContentPTManager2 = [(DBDashboard *)self requestContentPTManager];
    [(DBWorkspace *)workspace removeObserver:requestContentPTManager2];

    dockController = [(DBDashboard *)self dockController];
    [dockController invalidate];

    climateOverlayController = [(DBDashboard *)self climateOverlayController];
    [climateOverlayController invalidate];

    cameraOverlayController = [(DBDashboard *)self cameraOverlayController];
    [cameraOverlayController invalidate];

    voiceControlOverlayController = [(DBDashboard *)self voiceControlOverlayController];
    [voiceControlOverlayController invalidate];

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults removeObserver:self forKeyPath:@"CARCornerRadius"];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
    environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
    session = [environmentConfiguration session];
    [session removeObserver:self];

    environmentConfiguration2 = [(DBScreenController *)self environmentConfiguration];
    appHistory = [environmentConfiguration2 appHistory];
    [appHistory _sessionDidDisconnect];

    environmentConfiguration3 = [(DBScreenController *)self environmentConfiguration];
    analytics = [environmentConfiguration3 analytics];
    [analytics invalidate];

    userAlertServer = [(DBDashboard *)self userAlertServer];
    [userAlertServer invalidate];

    punchThroughServiceDomainActivationToken = [(DBDashboard *)self punchThroughServiceDomainActivationToken];
    [punchThroughServiceDomainActivationToken invalidate];

    [(DBDashboard *)self setPunchThroughServiceDomainActivationToken:0];
    punchThroughService = [(DBDashboard *)self punchThroughService];
    [punchThroughService invalidate];

    [(DBDashboard *)self setPunchThroughService:0];
    activeBaseApplicationBundleID = [(DBDashboardWorkspaceOwner *)self->_workspaceOwner activeBaseApplicationBundleID];

    if (activeBaseApplicationBundleID)
    {
      standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      activeBaseApplicationBundleID2 = [(DBDashboardWorkspaceOwner *)self->_workspaceOwner activeBaseApplicationBundleID];
      [standardUserDefaults2 setObject:activeBaseApplicationBundleID2 forKey:@"CARStartApplicationBundleID"];
    }

    if ([(DBNowPlayingObserver *)self->_nowPlayingObserver isPlaying])
    {
      nowPlayingApplication = [(DBNowPlayingObserver *)self->_nowPlayingObserver nowPlayingApplication];
      bundleIdentifier = [nowPlayingApplication bundleIdentifier];
      v36 = bundleIdentifier;
      v37 = &stru_285A57218;
      if (bundleIdentifier)
      {
        v37 = bundleIdentifier;
      }

      v38 = v37;

      standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [standardUserDefaults3 setObject:v38 forKey:@"CARPlayingAudioOnDisconnectApplicationBundleID"];
    }

    else
    {
      standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [standardUserDefaults3 removeObjectForKey:@"CARPlayingAudioOnDisconnectApplicationBundleID"];
    }

    v40 = self->_workspace;
    environmentConfiguration4 = [(DBScreenController *)self environmentConfiguration];
    appHistory2 = [environmentConfiguration4 appHistory];
    [(DBWorkspace *)v40 removeObserver:appHistory2];

    dashboardStateProvider = self->_dashboardStateProvider;
    environmentConfiguration5 = [(DBScreenController *)self environmentConfiguration];
    analytics2 = [environmentConfiguration5 analytics];
    [(DBDashboardStateProvider *)dashboardStateProvider removeObserver:analytics2];

    dashboardStateProvider = [(DBDashboard *)self dashboardStateProvider];
    voiceControlOverlayController2 = [(DBDashboard *)self voiceControlOverlayController];
    [dashboardStateProvider removeObserver:voiceControlOverlayController2];

    [(DBDashboardWorkspaceOwner *)self->_workspaceOwner invalidate];
    [(DBNotificationViewController *)self->_notificationViewController invalidate];
    notificationViewController = self->_notificationViewController;
    self->_notificationViewController = 0;

    [(DBDynamicContentController *)self->_dynamicContentController invalidate];
    mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
    v49 = [mEMORY[0x277D0AAD8] sceneWithIdentifier:@"com.apple.CarPlayApp.url-delivery"];

    if (v49)
    {
      [mEMORY[0x277D0AAD8] destroyScene:@"com.apple.CarPlayApp.url-delivery" withTransitionContext:0];
    }

    dockLocalScene = [(DBDashboard *)self dockLocalScene];
    [dockLocalScene invalidate];

    wallpaperLocalScene = [(DBDashboard *)self wallpaperLocalScene];
    [wallpaperLocalScene invalidate];

    localSceneWorkspace = [(DBDashboard *)self localSceneWorkspace];
    [localSceneWorkspace invalidate];

    climateOverlayScene = [(DBDashboard *)self climateOverlayScene];
    [climateOverlayScene removeObserver:self];

    climateOverlayScene2 = [(DBDashboard *)self climateOverlayScene];
    [climateOverlayScene2 invalidate];

    cameraScene = [(DBDashboard *)self cameraScene];
    [cameraScene invalidate];

    voiceControlScene = [(DBDashboard *)self voiceControlScene];
    [voiceControlScene invalidate];

    overlaySceneWorkspace = [(DBDashboard *)self overlaySceneWorkspace];
    [overlaySceneWorkspace invalidate];

    [(DBDashboardMainWindow *)self->_mainWindow setHidden:1];
    mainWindow = self->_mainWindow;
    self->_mainWindow = 0;

    [(DBLocalSceneHostWindow *)self->_wallpaperHostWindow invalidate];
    [(DBWallpaperHostWindow *)self->_wallpaperHostWindow setHidden:1];
    wallpaperHostWindow = self->_wallpaperHostWindow;
    self->_wallpaperHostWindow = 0;

    [(DBWallpaperWindow *)self->_wallpaperWindow setHidden:1];
    wallpaperWindow = self->_wallpaperWindow;
    self->_wallpaperWindow = 0;

    [(DBLockOutController *)self->_lockOutController invalidate];
    lockOutController = self->_lockOutController;
    self->_lockOutController = 0;

    [(DBNotificationWindow *)self->_notificationWindow setHidden:1];
    notificationWindow = self->_notificationWindow;
    self->_notificationWindow = 0;

    [(DBSiriViewController *)self->_siriViewController setPaired:0];
    [(SiriLongPressButtonSource *)self->_siriButtonSource invalidate];
    [(SiriDirectActionSource *)self->_siriDirectActionSource invalidate];
    [(SiriSimpleActivationSource *)self->_siriSimpleActivationSource invalidate];
    focusController = [(DBDashboard *)self focusController];
    [focusController invalidate];

    [(BSInvalidatable *)self->_dispatchingAssertion invalidate];
    [(BSInvalidatable *)self->_dispatchingAssertionACBack invalidate];
    [(BSInvalidatable *)self->_dispatchingAssertionACHome invalidate];
    [(BSInvalidatable *)self->_dispatchingAssertionACSelect invalidate];
    [(BSInvalidatable *)self->_dispatchingAssertionTelephonyDrop invalidate];
    [(BSInvalidatable *)self->_dispatchingAssertionRinger invalidate];
    mEMORY[0x277CF9020] = [MEMORY[0x277CF9020] sharedInstance];
    [mEMORY[0x277CF9020] removeObserver:self];

    v65 = DBLogForCategory(0);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v65, OS_LOG_TYPE_DEFAULT, "Invalidating preventPasscodeLockToken", buf, 2u);
    }

    preventPasscodeLockToken = [(DBDashboard *)self preventPasscodeLockToken];
    [preventPasscodeLockToken invalidate];

    [(DBDashboard *)self setPreventPasscodeLockToken:0];
    v67 = DBLogForCategory(0);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v67, OS_LOG_TYPE_DEFAULT, "Invalidating preventSpuriousScreenUndimToken", buf, 2u);
    }

    preventSpuriousScreenUndimToken = [(DBDashboard *)self preventSpuriousScreenUndimToken];
    [preventSpuriousScreenUndimToken invalidate];

    [(DBDashboard *)self setPreventSpuriousScreenUndimToken:0];
    v69 = DBLogForCategory(0);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v69, OS_LOG_TYPE_DEFAULT, "Invalidating OEM layout element", buf, 2u);
    }

    oemScreenLayoutElementAssertion = [(DBDashboard *)self oemScreenLayoutElementAssertion];
    [oemScreenLayoutElementAssertion invalidate];

    [(DBDashboard *)self setOemScreenLayoutElementAssertion:0];
    connectedNotifyToken = self->_connectedNotifyToken;
    if (connectedNotifyToken != -1)
    {
      notify_set_state(connectedNotifyToken, 0);
      notify_post("com.apple.carplay.connected");
    }

    self->_connectedNotifyToken = -1;
    v72.receiver = self;
    v72.super_class = DBDashboard;
    [(DBScreenController *)&v72 invalidate];
  }
}

- (void)handleEvent:(id)event
{
  v27[2] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  type = [eventCopy type];
  if (type <= 6)
  {
    if (type <= 3)
    {
      if (type == 1)
      {
        v11 = DBLogForCategory(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *v26 = 0;
          _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_INFO, "Taking screen for home event", v26, 2u);
        }

        environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
        session = [environmentConfiguration session];
        [session takeScreenForClient:@"com.apple.CarPlayApp" reason:@"User activated home"];

        [(DBDashboard *)self _handleHomeEvent:eventCopy];
      }

      else if (type == 3)
      {
        dockController = [(DBDashboard *)self dockController];
        [dockController relinquishFocus];

        [(DBDashboard *)self setClimateFocusAssertion:0];
      }
    }

    else if (type == 4)
    {
      [(DBDashboard *)self _handleOpenApplicationEvent:eventCopy];
    }

    else
    {
      if (type == 5)
      {
        v9 = objc_alloc_init(DBMutableWorkspaceStateChangeRequest);
        [(DBMutableWorkspaceStateChangeRequest *)v9 activateSiri];
        v14 = DBLogForCategory(8uLL);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v26 = 0;
          _os_log_impl(&dword_248146000, v14, OS_LOG_TYPE_DEFAULT, "Requesting Siri activation", v26, 2u);
        }

        [(DBWorkspace *)self->_workspace requestStateChange:v9];
        goto LABEL_44;
      }

      [(DBDashboard *)self _handleTapToRadarEvent];
    }

    goto LABEL_45;
  }

  if (type > 9)
  {
    if (type == 10)
    {
      [(DBDashboard *)self _handleInterruptPunchthroughEvent:eventCopy];
      goto LABEL_45;
    }

    if (type != 11)
    {
      if (type == 12)
      {
        [(DBDashboard *)self _handleSmartStackConfigurationEvent:eventCopy];
      }

      goto LABEL_45;
    }

    nowPlayingObserver = [(DBDashboard *)self nowPlayingObserver];
    v9 = [nowPlayingObserver nowPlayingLaunchInfoWithSource:0];

    context = [eventCopy context];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      context2 = [eventCopy context];
      v18 = [context2 isEqualToNumber:&unk_285AA4670];

      if (!v18)
      {
LABEL_32:
        v19 = [DBEvent eventWithType:4 context:v9];
        [(DBDashboard *)self _handleOpenApplicationEvent:v19];

LABEL_44:
        goto LABEL_45;
      }

      context = [(DBMutableWorkspaceStateChangeRequest *)v9 activationSettings];
      [context setLaunchSource:4];
    }

    goto LABEL_32;
  }

  if (type == 7)
  {
    v20 = DBLogForCategory(6uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&dword_248146000, v20, OS_LOG_TYPE_DEFAULT, "CarPlay radar item long-pressed, gathering screenshots.", v26, 2u);
    }

    v21 = MEMORY[0x277CBEB98];
    mainIdentity = [MEMORY[0x277D0AA90] mainIdentity];
    v27[0] = mainIdentity;
    displayIdentity = [(DBDashboard *)self displayIdentity];
    v27[1] = displayIdentity;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v9 = [v21 setWithArray:v24];

    screenshotManager = [(DBDashboard *)self screenshotManager];
    [screenshotManager saveScreenshotsForDisplayIdentifiers:v9 completion:&__block_literal_global_612];
    goto LABEL_43;
  }

  if (type != 8)
  {
    v6 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Handling OEM notification activation", v26, 2u);
    }

    interruptedPunchthroughIdentifier = self->_interruptedPunchthroughIdentifier;
    self->_interruptedPunchthroughIdentifier = 0;

    objc_opt_class();
    context3 = [eventCopy context];
    if (context3 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v9 = context3;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      [(DBDashboard *)self _handleOEMNotificationURL:v9];
      goto LABEL_44;
    }

    screenshotManager = DBLogForCategory(8uLL);
    if (os_log_type_enabled(screenshotManager, OS_LOG_TYPE_ERROR))
    {
      [DBDashboard handleEvent:];
    }

LABEL_43:

    goto LABEL_44;
  }

  [(DBDashboard *)self _handleReturnToHomeScreenEvent:eventCopy];
LABEL_45:
}

void __27__DBDashboard_handleEvent___block_invoke()
{
  v0 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_248146000, v0, OS_LOG_TYPE_DEFAULT, "Finished saving screenshots.", v1, 2u);
  }
}

- (void)didDismissAlertingLiveActivityWithActivityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  notificationViewController = [(DBDashboard *)self notificationViewController];
  [notificationViewController liveActivityRequestsDismissing:identifierCopy];
}

- (void)didUpdateAlertingLiveActivityWithActivityDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if ([(DBDashboard *)self dndActive])
  {
    notificationViewController = DBLogForCategory(0);
    if (os_log_type_enabled(notificationViewController, OS_LOG_TYPE_ERROR))
    {
      [DBDashboard didUpdateAlertingLiveActivityWithActivityDescriptor:];
    }

    goto LABEL_6;
  }

  dashboardStateProvider = [(DBDashboard *)self dashboardStateProvider];
  pageType = [dashboardStateProvider pageType];

  if (pageType != 1)
  {
    notificationViewController = [(DBDashboard *)self notificationViewController];
    [notificationViewController liveActivityRequestsPresenting:descriptorCopy];
LABEL_6:
  }
}

- (void)didDismissLiveActivityWithActivityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  notificationViewController = [(DBDashboard *)self notificationViewController];
  [notificationViewController liveActivityRequestsDismissing:identifierCopy];
}

- (void)inCallAssertionServiceDidPresent:(id)present
{
  lockOutController = [(DBDashboard *)self lockOutController];
  isLockedOut = [lockOutController isLockedOut];

  if (isLockedOut)
  {
    v6 = DBLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Pending InCall activation until after lock out", v17, 2u);
    }

    [(DBDashboard *)self setPendingInCallServiceActivation:1];
  }

  else
  {
    v7 = +[DBApplicationController sharedInstance];
    inCallServiceApplication = [v7 inCallServiceApplication];

    v9 = objc_alloc_init(DBMutableWorkspaceStateChangeRequest);
    v10 = v9;
    if (inCallServiceApplication)
    {
      [(DBMutableWorkspaceStateChangeRequest *)v9 activateStackedApplication:inCallServiceApplication];
    }

    else
    {
      v11 = DBLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [DBDashboard inCallAssertionServiceDidPresent:];
      }
    }

    [(DBWorkspace *)self->_workspace requestStateChange:v10];
    v12 = DBLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "Borrowing screen for InCall", buf, 2u);
    }

    activeCallScreenBorrowToken = [(DBDashboard *)self activeCallScreenBorrowToken];

    if (activeCallScreenBorrowToken)
    {
      environmentConfiguration = DBLogForCategory(0);
      if (os_log_type_enabled(environmentConfiguration, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_248146000, environmentConfiguration, OS_LOG_TYPE_DEFAULT, "Using existing screen borrow token for InCall", v18, 2u);
      }
    }

    else
    {
      environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
      session = [environmentConfiguration session];
      v16 = [session borrowScreenForClient:@"CarPlayApp" reason:@"InCall"];
      [(DBDashboard *)self setActiveCallScreenBorrowToken:v16];
    }
  }
}

- (void)inCallAssertionServiceDidDismiss:(id)dismiss
{
  v4 = +[DBApplicationController sharedInstance];
  inCallServiceApplication = [v4 inCallServiceApplication];

  v6 = objc_alloc_init(DBMutableWorkspaceStateChangeRequest);
  v7 = v6;
  if (inCallServiceApplication)
  {
    [(DBMutableWorkspaceStateChangeRequest *)v6 deactivateApplication:inCallServiceApplication];
  }

  [(DBWorkspace *)self->_workspace requestStateChange:v7];
  activeCallScreenBorrowToken = [(DBDashboard *)self activeCallScreenBorrowToken];

  if (activeCallScreenBorrowToken)
  {
    v9 = DBLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "Unborrowing screen for InCall", v10, 2u);
    }

    [(DBDashboard *)self setActiveCallScreenBorrowToken:0];
  }
}

- (void)inCallAssertionService:(id)service didSetBannersEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v11 = *MEMORY[0x277D85DE8];
  v6 = DBLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"DISABLED";
    if (enabledCopy)
    {
      v7 = @"ENABLED";
    }

    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Setting banners %@ for InCallService", &v9, 0xCu);
  }

  notificationViewController = [(DBDashboard *)self notificationViewController];
  [notificationViewController setSuspended:!enabledCopy forReason:@"InCallService"];
}

- (id)wallpaperViewForLockOutController:(id)controller
{
  wallpaperHostWindow = [(DBDashboard *)self wallpaperHostWindow];
  createAdditionalPresentationView = [wallpaperHostWindow createAdditionalPresentationView];

  return createAdditionalPresentationView;
}

- (void)lockOutController:(id)controller didChangeFromLockoutMode:(int64_t)mode toLockOutMode:(int64_t)outMode animated:(BOOL)animated takeScreen:(BOOL)screen
{
  screenCopy = screen;
  animatedCopy = animated;
  v114 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  lockOutController = [(DBDashboard *)self lockOutController];
  isLockedOut = [lockOutController isLockedOut];

  if (outMode == 10)
  {
    v12 = 0;
  }

  else
  {
    v12 = isLockedOut;
  }

  siriViewController = [(DBDashboard *)self siriViewController];
  [siriViewController setPaired:isLockedOut ^ 1];

  persistentElementsManager = [(DBDashboard *)self persistentElementsManager];

  if (!persistentElementsManager)
  {
    goto LABEL_10;
  }

  if (outMode == 1)
  {
    if (mode == 9)
    {
      goto LABEL_10;
    }

    persistentElementsManager2 = [(DBDashboard *)self persistentElementsManager];
    [persistentElementsManager2 clearPersistentElements];
  }

  else
  {
    persistentElementsManager2 = [(DBDashboard *)self persistentElementsManager];
    environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
    systemUILayout = [environmentConfiguration systemUILayout];
    persistentElements = [systemUILayout persistentElements];
    [persistentElementsManager2 updateWithPersistentElements:persistentElements];
  }

LABEL_10:
  climateOverlayController = [(DBDashboard *)self climateOverlayController];
  v20 = climateOverlayController;
  if (v12)
  {
    persistentElementsManager3 = [(DBDashboard *)self persistentElementsManager];
    [v20 setHidden:{objc_msgSend(persistentElementsManager3, "hasPersistentElementsForClient:", 0) ^ 1}];
  }

  else
  {
    [climateOverlayController setHidden:0];
  }

  persistentElementsManager4 = [(DBDashboard *)self persistentElementsManager];
  if (persistentElementsManager4)
  {
    persistentElementsManager5 = [(DBDashboard *)self persistentElementsManager];
    v24 = [persistentElementsManager5 hasPersistentElementsForClient:1];

    if ((v24 & 1) == 0)
    {
      dockController = [(DBDashboard *)self dockController];
      [dockController setHidden:v12];
    }
  }

  mainWindow = [(DBDashboard *)self mainWindow];
  [mainWindow setHidden:v12];

  notificationWindow = [(DBDashboard *)self notificationWindow];
  [notificationWindow setHidden:isLockedOut];

  notificationViewController = [(DBDashboard *)self notificationViewController];
  [notificationViewController setSuspended:isLockedOut forReason:@"Locked out"];

  audioWindow = [(DBDashboard *)self audioWindow];
  [audioWindow setHidden:outMode == 9];

  dynamicContentController = [(DBDashboard *)self dynamicContentController];
  [dynamicContentController setHidden:isLockedOut];

  os_unfair_lock_lock(&self->_lock);
  lock_hasPendingRequestUITake = self->_lock_hasPendingRequestUITake;
  self->_lock_hasPendingRequestUITake = 0;
  os_unfair_lock_unlock(&self->_lock);
  environmentConfiguration2 = [(DBScreenController *)self environmentConfiguration];
  session = [environmentConfiguration2 session];

  if (!isLockedOut)
  {
    [(DBDashboard *)self setLockOutFocusAssertion:0];
    rootViewController = [(DBDashboard *)self rootViewController];
    homeViewController = [rootViewController homeViewController];
    todayViewController = [homeViewController todayViewController];
    [todayViewController setSmartWidgetCanChangeVisibilityDisabled:1 forRequester:@"DBConnectAnimationRequester"];

    rootViewController2 = [(DBDashboard *)self rootViewController];
    homeViewController2 = [rootViewController2 homeViewController];
    todayViewController2 = [homeViewController2 todayViewController];
    [todayViewController2 setSceneWidgetsDisabled:1 forRequester:@"DBConnectAnimationRequester"];

    rootViewController3 = [(DBDashboard *)self rootViewController];
    homeViewController3 = [rootViewController3 homeViewController];
    todayViewController3 = [homeViewController3 todayViewController];
    [todayViewController3 setSmartWidgetCanChangeVisibilityDisabled:0 forRequester:@"DBTodayViewSetupRequester"];

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v45 = [standardUserDefaults objectForKey:@"CARStartApplicationBundleID"];

    if (!v45)
    {
      if (![(DBDashboard *)self pendingInCallServiceActivation])
      {
        [(DBDashboard *)self setPendingInCallServiceActivation:0];
        goto LABEL_53;
      }

      goto LABEL_48;
    }

    v46 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v111 = v45;
      _os_log_impl(&dword_248146000, v46, OS_LOG_TYPE_INFO, "Evaluating active app %{public}@ from previous session", buf, 0xCu);
    }

    v47 = +[DBApplicationController sharedInstance];
    v48 = [v47 applicationWithBundleIdentifier:v45];

    if (!v48)
    {
      v59 = 0;
      v60 = 0;
      goto LABEL_46;
    }

    rootViewController4 = [(DBDashboard *)self rootViewController];
    homeViewController4 = [rootViewController4 homeViewController];

    v93 = [homeViewController4 iconForIdentifier:v45];
    if (v93)
    {
      v50 = [homeViewController4 isIconVisible:?] ^ 1;
    }

    else
    {
      v50 = 1;
    }

    v61 = +[DBApplicationController sharedInstance];
    v62 = [v61 preflightRequiredForApplication:v48];

    if (v62)
    {
      v63 = DBLogForCategory(8uLL);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v111 = v45;
        _os_log_impl(&dword_248146000, v63, OS_LOG_TYPE_DEFAULT, "Requested previous session app %{public}@ requires preflight; ignoring.", buf, 0xCu);
      }

LABEL_43:

      rootViewController5 = [(DBDashboard *)self rootViewController];
      homeViewController5 = [(DBActivationSettings *)rootViewController5 homeViewController];
      [homeViewController5 setCurrentPageType:1 animated:0];
LABEL_44:
      v59 = 0;
      v60 = 0;
LABEL_45:

LABEL_46:
      standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [standardUserDefaults2 removeObjectForKey:@"CARStartApplicationBundleID"];

      if (![(DBDashboard *)self pendingInCallServiceActivation])
      {
        v70 = 0;
LABEL_51:
        [(DBDashboard *)self setPendingInCallServiceActivation:0];
        if (v60)
        {
          objc_initWeak(buf, self);
          mainWindow2 = [(DBDashboard *)self mainWindow];
          [mainWindow2 setHidden:1];

          dockController2 = [(DBDashboard *)self dockController];
          [dockController2 setHidden:1];

          v99[0] = MEMORY[0x277D85DD0];
          v99[1] = 3221225472;
          v99[2] = __92__DBDashboard_lockOutController_didChangeFromLockoutMode_toLockOutMode_animated_takeScreen___block_invoke_629;
          v99[3] = &unk_278F02328;
          objc_copyWeak(&v101, buf);
          v102 = screenCopy;
          v103 = lock_hasPendingRequestUITake;
          v100 = session;
          v104 = v70;
          [(DBWorkspaceStateChangeRequest *)v60 setCompletionHandler:v99];
          kdebug_trace();
          workspace = [(DBDashboard *)self workspace];
          [workspace requestStateChange:v60];

          objc_destroyWeak(&v101);
          objc_destroyWeak(buf);

LABEL_64:
          goto LABEL_65;
        }

LABEL_53:
        if (screenCopy)
        {
          v74 = DBLogForCategory(0);
          v75 = os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT);
          if (lock_hasPendingRequestUITake)
          {
            if (v75)
            {
              *buf = 0;
              _os_log_impl(&dword_248146000, v74, OS_LOG_TYPE_DEFAULT, "Taking screen for connection (requestUI), animating to home screen", buf, 2u);
            }

            [session takeScreenForClient:@"com.apple.CarPlayApp" reason:@"iOS UI requested"];
          }

          else
          {
            if (v75)
            {
              *buf = 0;
              _os_log_impl(&dword_248146000, v74, OS_LOG_TYPE_DEFAULT, "Taking screen for connection, animating to home screen", buf, 2u);
            }

            [session takeScreenForConnection];
          }
        }

        if (mode == 10)
        {
          [(DBDashboard *)self _animateClearLockoutWindow];
        }

        else
        {
          [(DBDashboard *)self _animateStartupToHomeScreen];
        }

        goto LABEL_64;
      }

      if (v60)
      {
LABEL_49:
        v67 = objc_alloc_init(DBActivationSettings);
        [(DBActivationSettings *)v67 setAnimated:0];
        [(DBActivationSettings *)v67 setWaitForCommit:1];
        v68 = +[DBApplicationController sharedInstance];
        inCallServiceApplication = [v68 inCallServiceApplication];

        [(DBMutableWorkspaceStateChangeRequest *)v60 activateStackedApplication:inCallServiceApplication withSettings:v67];
        v70 = 1;
        goto LABEL_51;
      }

LABEL_48:
      v60 = objc_alloc_init(DBMutableWorkspaceStateChangeRequest);
      goto LABEL_49;
    }

    if (v50)
    {
      v63 = DBLogForCategory(8uLL);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v111 = v45;
        _os_log_impl(&dword_248146000, v63, OS_LOG_TYPE_DEFAULT, "Requested previous session app %@ is not valid for current session; ignoring.", buf, 0xCu);
      }

      goto LABEL_43;
    }

    environmentConfiguration3 = [(DBScreenController *)self environmentConfiguration];
    appHistory = [environmentConfiguration3 appHistory];
    if ([appHistory appDockCategoryForBundleIdentifier:v45] == 2)
    {
      standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v79 = [standardUserDefaults3 objectForKey:?];
      v80 = [v45 isEqualToString:v79];

      if ((v80 & 1) == 0)
      {
        standardUserDefaults4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        rootViewController5 = [standardUserDefaults4 objectForKey:@"CARPlayingAudioOnDisconnectApplicationBundleID"];

        v82 = DBLogForCategory(8uLL);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v111 = v45;
          v112 = 2114;
          v113 = rootViewController5;
          _os_log_impl(&dword_248146000, v82, OS_LOG_TYPE_DEFAULT, "Requested previous session app %{public}@ is an audio app that was not playing audio on disconnect (last playing app: %{public}@); ignoring.", buf, 0x16u);
        }

        homeViewController5 = [(DBDashboard *)self rootViewController];
        v65HomeViewController = [homeViewController5 homeViewController];
        [v65HomeViewController setCurrentPageType:1 animated:0];

        goto LABEL_44;
      }
    }

    else
    {
    }

    rootViewController5 = objc_alloc_init(DBActivationSettings);
    [(DBActivationSettings *)rootViewController5 setAnimated:0];
    [(DBActivationSettings *)rootViewController5 setWaitForCommit:1];
    [(DBActivationSettings *)rootViewController5 setFailInterval:3.5];
    v60 = objc_alloc_init(DBMutableWorkspaceStateChangeRequest);
    [(DBMutableWorkspaceStateChangeRequest *)v60 activateApplication:v48 withSettings:rootViewController5];
    homeViewController5 = [v48 appPolicy];
    v59 = +[DBAppHistory contextForApplicationCategory:](DBAppHistory, "contextForApplicationCategory:", [homeViewController5 applicationCategory]);
    if (v59)
    {
      environmentConfiguration4 = [(DBScreenController *)self environmentConfiguration];
      appHistory2 = [environmentConfiguration4 appHistory];
      sessionAppContextURLs = [appHistory2 sessionAppContextURLs];
      v89 = [sessionAppContextURLs containsObject:v59];

      if (v89)
      {
        environmentConfiguration5 = [(DBScreenController *)self environmentConfiguration];
        v105[0] = MEMORY[0x277D85DD0];
        v105[1] = 3221225472;
        v105[2] = __92__DBDashboard_lockOutController_didChangeFromLockoutMode_toLockOutMode_animated_takeScreen___block_invoke_628;
        v105[3] = &unk_278F021F8;
        v106 = v59;
        v107 = session;
        [environmentConfiguration5 fetchEnhancedIntegrationStatusWithCompletion:v105];

        v85 = v106;
LABEL_80:

        goto LABEL_45;
      }

      v85 = DBLogForCategory(0);
      if (!os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }

      *buf = 138543362;
      v111 = v59;
      v86 = "Accessory does not support starting UIContext %{public}@";
      v87 = v85;
      v88 = 12;
    }

    else
    {
      v85 = DBLogForCategory(0);
      if (!os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }

      *buf = 0;
      v86 = "No available UIContext for starting application.";
      v87 = v85;
      v88 = 2;
    }

    _os_log_impl(&dword_248146000, v87, OS_LOG_TYPE_DEFAULT, v86, buf, v88);
    goto LABEL_80;
  }

  if (screenCopy)
  {
    v33 = DBLogForCategory(0);
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
    if (lock_hasPendingRequestUITake)
    {
      if (v34)
      {
        *buf = 0;
        _os_log_impl(&dword_248146000, v33, OS_LOG_TYPE_DEFAULT, "Taking screen for connection (requestUI), to lockout", buf, 2u);
      }

      [session takeScreenForClient:@"CarPlayApp" reason:@"iOS UI requested"];
    }

    else
    {
      if (v34)
      {
        *buf = 0;
        _os_log_impl(&dword_248146000, v33, OS_LOG_TYPE_DEFAULT, "Taking screen for connection, to lockout", buf, 2u);
      }

      [session takeScreenForConnection];
    }
  }

  lockOutController2 = [(DBDashboard *)self lockOutController];
  lockOutWindow = [lockOutController2 lockOutWindow];
  [lockOutWindow setHidden:0];

  objc_initWeak(buf, self);
  lockOutController3 = [(DBDashboard *)self lockOutController];
  lockOutViewController = [lockOutController3 lockOutViewController];
  v108[0] = MEMORY[0x277D85DD0];
  v108[1] = 3221225472;
  v108[2] = __92__DBDashboard_lockOutController_didChangeFromLockoutMode_toLockOutMode_animated_takeScreen___block_invoke;
  v108[3] = &unk_278F02300;
  objc_copyWeak(&v109, buf);
  [lockOutViewController setLockOutMode:outMode animated:animatedCopy completion:v108];

  focusController = [(DBDashboard *)self focusController];
  lockOutController4 = [(DBDashboard *)self lockOutController];
  lockOutWindow2 = [lockOutController4 lockOutWindow];
  v58 = [focusController deferFocusToWindow:lockOutWindow2 priority:7 reason:@"lockout"];

  [(DBDashboard *)self setLockOutFocusAssertion:v58];
  objc_destroyWeak(&v109);
  objc_destroyWeak(buf);
LABEL_65:
}

void __92__DBDashboard_lockOutController_didChangeFromLockoutMode_toLockOutMode_animated_takeScreen___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained lockOutController];
  v2 = [v1 lockOutWindow];

  if (v2)
  {
    v3 = MEMORY[0x277D75518];
    v4 = [WeakRetained lockOutController];
    v5 = [v4 lockOutWindow];
    v6 = [v3 focusSystemForEnvironment:v5];
    [v6 setNeedsFocusUpdate];
  }
}

void __92__DBDashboard_lockOutController_didChangeFromLockoutMode_toLockOutMode_animated_takeScreen___block_invoke_628(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = DBLogForCategory(0);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2 == 2)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      *buf = 138543362;
      v12 = v6;
      _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "Notifying accessory about iOS ownership of starting UIContext %{public}@", buf, 0xCu);
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = @"url";
    v10 = v7;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [v8 sendCommand:@"changeUIContext" withParameters:v4];
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "No enhanced integration consent; not notifying accessory about starting context.", buf, 2u);
  }
}

void __92__DBDashboard_lockOutController_didChangeFromLockoutMode_toLockOutMode_animated_takeScreen___block_invoke_629(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 49);
    v4 = DBLogForCategory(0);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3 == 1)
    {
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "Taking screen for connection (requestUI), animating scaled", buf, 2u);
      }

      [*(a1 + 32) takeScreenForClient:@"com.apple.CarPlayApp" reason:@"iOS UI requested"];
    }

    else
    {
      if (v5)
      {
        *v9 = 0;
        _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "Taking screen for connection, animating scaled", v9, 2u);
      }

      [*(a1 + 32) takeScreenForConnection];
    }
  }

  if (*(a1 + 50) == 1)
  {
    v6 = DBLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Borrowing screen for InCall", v8, 2u);
    }

    v7 = [*(a1 + 32) borrowScreenForClient:@"CarPlayApp" reason:@"InCall"];
    [WeakRetained setActiveCallScreenBorrowToken:v7];
  }

  [WeakRetained _animateStartupFromScaledMainWindow];
}

- (void)_handleSiriPrewarmWithTimestamp:(double)timestamp
{
  v18 = *MEMORY[0x277D85DE8];
  lockOutController = [(DBDashboard *)self lockOutController];
  isLockedOut = [lockOutController isLockedOut];

  if (isLockedOut)
  {
    v7 = DBLogForCategory(3uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [DBDashboard _handleSiriPrewarmWithTimestamp:?];
    }
  }

  else
  {
    siriPrewarmAssertion = [(DBDashboard *)self siriPrewarmAssertion];

    if (siriPrewarmAssertion)
    {
      v9 = DBLogForCategory(3uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [DBDashboard _handleSiriPrewarmWithTimestamp:];
      }

      siriPrewarmAssertion2 = [(DBDashboard *)self siriPrewarmAssertion];
      [siriPrewarmAssertion2 invalidate];

      [(DBDashboard *)self setSiriPrewarmAssertion:0];
      [(DBDashboard *)self setSiriPrewarmTimestamp:-1.0];
    }

    v11 = DBLogForCategory(3uLL);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (timestamp <= -1.0)
    {
      if (v12)
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, "Received Siri prewarm action", &v16, 2u);
      }

      siriButtonSource = [(DBDashboard *)self siriButtonSource];
      prepareForActivation = [siriButtonSource prepareForActivation];
    }

    else
    {
      if (v12)
      {
        v16 = 134217984;
        timestampCopy = timestamp;
        _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, "Received Siri prewarm action, sending accessory timestamp: %f", &v16, 0xCu);
      }

      siriButtonSource = [(DBDashboard *)self siriButtonSource];
      prepareForActivation = [siriButtonSource prepareForActivationWithTimestamp:timestamp];
    }

    v15 = prepareForActivation;
    [(DBDashboard *)self setSiriPrewarmAssertion:prepareForActivation];

    [(DBDashboard *)self setSiriPrewarmTimestamp:timestamp];
  }
}

- (void)_handleSiriButtonDownWithTimestamp:(double)timestamp
{
  v24 = *MEMORY[0x277D85DE8];
  lockOutController = [(DBDashboard *)self lockOutController];
  isLockedOut = [lockOutController isLockedOut];

  v7 = DBLogForCategory(3uLL);
  siriButtonSource2 = v7;
  if (isLockedOut)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [DBDashboard _handleSiriButtonDownWithTimestamp:?];
    }

    goto LABEL_25;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&dword_248146000, siriButtonSource2, OS_LOG_TYPE_DEFAULT, "Received external Siri button down action", v23, 2u);
  }

  siriButtonAssertion = [(DBDashboard *)self siriButtonAssertion];

  if (siriButtonAssertion)
  {
    v10 = DBLogForCategory(3uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [DBDashboard _handleSiriButtonDownWithTimestamp:];
    }

    siriButtonAssertion2 = [(DBDashboard *)self siriButtonAssertion];
    [siriButtonAssertion2 invalidate];

    [(DBDashboard *)self setSiriButtonAssertion:0];
  }

  Current = CFAbsoluteTimeGetCurrent();
  [(DBDashboard *)self siriPrewarmTimestamp];
  if (v13 > -1.0)
  {
    [(DBDashboard *)self siriPrewarmTimestamp];
    timestamp = v14;
    v15 = DBLogForCategory(3uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 134217984;
      *&v23[4] = timestamp;
      v16 = "Using prewarm timestamp: %f";
LABEL_16:
      _os_log_impl(&dword_248146000, v15, OS_LOG_TYPE_DEFAULT, v16, v23, 0xCu);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if (timestamp > -1.0)
  {
    v15 = DBLogForCategory(3uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 134217984;
      *&v23[4] = timestamp;
      v16 = "Using button down timestamp from accessory: %f";
      goto LABEL_16;
    }

LABEL_17:

    Current = timestamp;
  }

  siriButtonSource = [(DBDashboard *)self siriButtonSource];
  v18 = [siriButtonSource speechInteractionActivityWithTimestamp:Current];
  [(DBDashboard *)self setSiriButtonAssertion:v18];

  siriPrewarmAssertion = [(DBDashboard *)self siriPrewarmAssertion];

  if (siriPrewarmAssertion)
  {
    v20 = DBLogForCategory(3uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_248146000, v20, OS_LOG_TYPE_DEFAULT, "Invalidating Siri prewarm assertion", v23, 2u);
    }

    siriPrewarmAssertion2 = [(DBDashboard *)self siriPrewarmAssertion];
    [siriPrewarmAssertion2 invalidate];

    [(DBDashboard *)self setSiriPrewarmAssertion:0];
  }

  v22 = DBLogForCategory(3uLL);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&dword_248146000, v22, OS_LOG_TYPE_DEFAULT, "Sending Siri long press event", v23, 2u);
  }

  siriButtonSource2 = [(DBDashboard *)self siriButtonSource];
  [siriButtonSource2 didRecognizeLongPress];
LABEL_25:
}

- (void)_handleSiriButtonUpWithTimestamp:(double)timestamp
{
  lockOutController = [(DBDashboard *)self lockOutController];
  isLockedOut = [lockOutController isLockedOut];

  v6 = DBLogForCategory(3uLL);
  v7 = v6;
  if (isLockedOut)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [DBDashboard _handleSiriButtonUpWithTimestamp:?];
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Received external Siri button up action", buf, 2u);
    }

    siriPrewarmAssertion = [(DBDashboard *)self siriPrewarmAssertion];

    if (siriPrewarmAssertion)
    {
      v9 = DBLogForCategory(3uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "Invalidating Siri prewarm assertion", v14, 2u);
      }

      siriPrewarmAssertion2 = [(DBDashboard *)self siriPrewarmAssertion];
      [siriPrewarmAssertion2 invalidate];

      [(DBDashboard *)self setSiriPrewarmAssertion:0];
    }

    v11 = DBLogForCategory(3uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_INFO, "Invalidating Siri button down assertion", v13, 2u);
    }

    siriButtonAssertion = [(DBDashboard *)self siriButtonAssertion];
    [siriButtonAssertion invalidatedAtTimestamp:CFAbsoluteTimeGetCurrent()];

    [(DBDashboard *)self setSiriButtonAssertion:0];
  }

  [(DBDashboard *)self setSiriPrewarmTimestamp:-1.0];
}

- (void)session:(id)session handleSiriRequestEvent:(int64_t)event withPayload:(id)payload
{
  v9 = [payload objectForKey:*MEMORY[0x277CC17A0]];
  v7 = objc_opt_respondsToSelector();
  v8 = -1.0;
  if (v7)
  {
    [v9 doubleValue];
  }

  switch(event)
  {
    case 3:
      [(DBDashboard *)self _handleSiriButtonUpWithTimestamp:v8];
      break;
    case 2:
      [(DBDashboard *)self _handleSiriButtonDownWithTimestamp:v8];
      break;
    case 1:
      [(DBDashboard *)self _handleSiriPrewarmWithTimestamp:v8];
      break;
  }
}

- (void)session:(id)session openURL:(id)l
{
  v13 = *MEMORY[0x277D85DE8];
  lCopy = l;
  absoluteString = [lCopy absoluteString];
  v7 = DBLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = absoluteString;
    _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Received openURL request for %@", buf, 0xCu);
  }

  if (absoluteString)
  {
    [(DBDashboard *)self _handleSessionURL:lCopy];
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    if (self->_lock_hasHandledConnect)
    {
      os_unfair_lock_unlock(&self->_lock);
      v8 = DBLogForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "Sending requestUI take immediately", buf, 2u);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __31__DBDashboard_session_openURL___block_invoke;
      block[3] = &unk_278F01580;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else
    {
      self->_lock_hasPendingRequestUITake = 1;
      os_unfair_lock_unlock(&self->_lock);
      v9 = DBLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "Deferring requestUI take until connect", buf, 2u);
      }
    }
  }
}

void __31__DBDashboard_session_openURL___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) environmentConfiguration];
  v1 = [v2 session];
  [v1 takeScreenForClient:@"com.apple.CarPlayApp" reason:@"iOS UI requested"];
}

- (void)session:(id)session isPlayingVideoFromApp:(id)app
{
  v16 = *MEMORY[0x277D85DE8];
  appCopy = app;
  v6 = DBLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = appCopy;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Received isPlayingVideoFromApp: %@", &v14, 0xCu);
  }

  if ([(__CFString *)appCopy isEqualToString:@"com.apple.WebKit.GPU"])
  {

    appCopy = @"com.apple.mobilesafari";
  }

  nowPlayingObserver = [(DBDashboard *)self nowPlayingObserver];
  [nowPlayingObserver handleVideoStartedFromBundleIdentifier:appCopy];

  v8 = objc_alloc_init(DBActivationSettings);
  [(DBActivationSettings *)v8 setTakeScreen:0];
  [(DBActivationSettings *)v8 setAnimated:0];
  [(DBActivationSettings *)v8 setWaitForCommit:1];
  [(DBActivationSettings *)v8 setLaunchSource:6];
  nowPlayingObserver2 = [(DBDashboard *)self nowPlayingObserver];
  v10 = [nowPlayingObserver2 nowPlayingLaunchInfoWithSource:0];

  if (v10)
  {
    application = [v10 application];
    v12 = [DBApplicationLaunchInfo launchInfoForApplication:application withActivationSettings:v8];

    v13 = [DBEvent eventWithType:4 context:v12];
    [(DBDashboard *)self handleEvent:v13];
  }

  else
  {
    v12 = DBLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [DBDashboard session:isPlayingVideoFromApp:];
    }
  }
}

- (void)_launchAppWithInfo:(id)info forURL:(id)l
{
  v37 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  lCopy = l;
  absoluteString = [lCopy absoluteString];
  application = [infoCopy application];
  v10 = DBLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [application bundleIdentifier];
    *buf = 138412290;
    v36 = bundleIdentifier;
    _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_DEFAULT, "Resolved URL request to %@", buf, 0xCu);
  }

  workspace = [(DBDashboard *)self workspace];
  state = [workspace state];
  activeBundleIdentifier = [state activeBundleIdentifier];

  bundleIdentifier2 = [application bundleIdentifier];
  LODWORD(state) = [activeBundleIdentifier isEqualToString:bundleIdentifier2];

  if (state)
  {
    environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
    session = [environmentConfiguration session];

    environmentConfiguration2 = [(DBScreenController *)self environmentConfiguration];
    [environmentConfiguration2 appHistory];
    v18 = application;
    v19 = lCopy;
    v21 = v20 = absoluteString;
    sessionEchoContextURLs = [v21 sessionEchoContextURLs];
    v23 = [sessionEchoContextURLs containsObject:v20];

    absoluteString = v20;
    lCopy = v19;
    application = v18;

    environmentConfiguration3 = [(DBScreenController *)self environmentConfiguration];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __41__DBDashboard__launchAppWithInfo_forURL___block_invoke;
    v28[3] = &unk_278F02350;
    v29 = infoCopy;
    v30 = session;
    v34 = v23;
    v31 = absoluteString;
    selfCopy = self;
    v33 = lCopy;
    v25 = session;
    [environmentConfiguration3 fetchEnhancedIntegrationStatusWithCompletion:v28];
  }

  v26 = [DBEvent eventWithType:4 context:infoCopy];
  [(DBDashboard *)self handleEvent:v26];
}

void __41__DBDashboard__launchAppWithInfo_forURL___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2 != 2)
  {
    v11 = DBLogForCategory(0);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    LOWORD(v18) = 0;
    v12 = "Enhanced Integration is not enabled; skipping requestUI echo.";
    v13 = v11;
    v14 = 2;
    goto LABEL_11;
  }

  if (*(a1 + 72))
  {
    v6 = [*(a1 + 56) environmentConfiguration];
    v7 = [v6 session];
    v8 = [v7 carOwnsScreen];

    v9 = DBLogForCategory(0);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "Car owns the screen, no requestUI sent.", &v18, 2u);
      }
    }

    else
    {
      if (v10)
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "Requested URL already visible on iOS. Requesting from accessory.", &v18, 2u);
      }

      [*(a1 + 40) requestCarUIForURL:*(a1 + 64)];
    }

    goto LABEL_17;
  }

  v11 = DBLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 48);
    v18 = 138543362;
    v19 = v15;
    v12 = "Received Echo Context event %{public}@ for which the accessory did not declare support; dropping.";
    v13 = v11;
    v14 = 12;
LABEL_11:
    _os_log_impl(&dword_248146000, v13, OS_LOG_TYPE_DEFAULT, v12, &v18, v14);
  }

LABEL_12:

  v16 = [*(a1 + 32) activationSettings];
  v17 = [v16 takeScreen];

  if (v17)
  {
    [*(a1 + 40) takeScreenForClient:@"com.apple.CarPlayApp" reason:@"iOS UI requested"];
  }

LABEL_17:
}

- (void)_handleSessionURL:(id)l
{
  v87 = *MEMORY[0x277D85DE8];
  lCopy = l;
  absoluteString = [lCopy absoluteString];
  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = __Block_byref_object_copy__0;
  v83 = __Block_byref_object_dispose__0;
  v84 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__0;
  v77 = __Block_byref_object_dispose__0;
  v78 = 0;
  rootViewController = [(DBDashboard *)self rootViewController];
  homeViewController = [rootViewController homeViewController];

  v7 = objc_alloc_init(DBActivationSettings);
  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  session = [environmentConfiguration session];
  -[DBActivationSettings setAnimated:](v7, "setAnimated:", [session carOwnsScreen] ^ 1);
  -[DBActivationSettings setWaitForCommit:](v7, "setWaitForCommit:", [session carOwnsScreen]);
  [(DBActivationSettings *)v7 setUrl:lCopy];
  v10 = +[DBApplicationController sharedInstance];
  if (([absoluteString hasPrefix:@"maps:"] & 1) != 0 || objc_msgSend(absoluteString, "hasPrefix:", @"maps:/car/destinations"))
  {
    navigationStateProvider = [environmentConfiguration navigationStateProvider];
    mostRecentNavigatingApp = [navigationStateProvider mostRecentNavigatingApp];

    if (mostRecentNavigatingApp)
    {
      v13 = [v10 applicationWithBundleIdentifier:mostRecentNavigatingApp];
      v14 = 0;
      v15 = v80[5];
      v80[5] = v13;
    }

    else
    {
      v15 = DBLogForCategory(0x16uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_248146000, v15, OS_LOG_TYPE_DEFAULT, "No available now-navigating app; defaulting to nav category.", buf, 2u);
      }

      v14 = 1;
    }

    goto LABEL_9;
  }

  if ([absoluteString hasPrefix:@"nowplaying:"])
  {
    nowPlayingObserver = [(DBDashboard *)self nowPlayingObserver];
    v17 = [nowPlayingObserver nowPlayingLaunchInfoWithSource:0];
    v18 = v74[5];
    v74[5] = v17;

    if (v74[5])
    {
LABEL_14:
      v14 = 0;
      goto LABEL_10;
    }

    mostRecentNavigatingApp = DBLogForCategory(0);
    if (os_log_type_enabled(mostRecentNavigatingApp, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = 2;
      _os_log_impl(&dword_248146000, mostRecentNavigatingApp, OS_LOG_TYPE_DEFAULT, "No available now playing app; defaulting to audio category.", buf, 2u);
    }

    else
    {
      v14 = 2;
    }

LABEL_9:

LABEL_10:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__DBDashboard__handleSessionURL___block_invoke_676;
    block[3] = &unk_278F02408;
    v66 = &v79;
    block[4] = self;
    v67 = &v73;
    v68 = v14;
    v64 = lCopy;
    v65 = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);

    goto LABEL_11;
  }

  if ([absoluteString hasPrefix:@"climate:"])
  {
    v19 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:lCopy resolvingAgainstBaseURL:0];
    queryItems = [v19 queryItems];
    v21 = [queryItems bs_firstObjectPassingTest:&__block_literal_global_640];

    [session takeScreenForClient:@"com.apple.CarPlayApp" reason:@"iOS UI requested"];
    climateOverlayController = [(DBDashboard *)self climateOverlayController];
    value = [v21 value];
    [climateOverlayController requestQuickControlWithZone:value];

    goto LABEL_11;
  }

  if ([absoluteString hasPrefix:@"radio"])
  {
    environmentConfiguration2 = [(DBScreenController *)self environmentConfiguration];
    isVehicleDataSession = [environmentConfiguration2 isVehicleDataSession];

    if (isVehicleDataSession)
    {
      radioApplication = [v10 radioApplication];
LABEL_20:
      v14 = 0;
      mostRecentNavigatingApp = v80[5];
      v80[5] = radioApplication;
      goto LABEL_9;
    }

    v34 = DBLogForCategory(0);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v34, OS_LOG_TYPE_DEFAULT, "Ignoring requestUI radio in a non-Ultra session.", buf, 2u);
    }

LABEL_28:

    goto LABEL_11;
  }

  if ([absoluteString hasPrefix:@"music:"])
  {
    musicApplication = [v10 musicApplication];
    v28 = v80[5];
    v80[5] = musicApplication;

    if (v80[5])
    {
      goto LABEL_14;
    }

    environmentConfiguration3 = [(DBScreenController *)self environmentConfiguration];
    appHistory = [environmentConfiguration3 appHistory];
    v31 = [appHistory orderedAppsMatchingDockCategory:2];

    firstObject = [v31 firstObject];
    v33 = v80[5];
    v80[5] = firstObject;

    if (v80[5])
    {
      goto LABEL_14;
    }

    v34 = DBLogForCategory(0);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v34, OS_LOG_TYPE_DEFAULT, "No available audio app to launch from music: context.", buf, 2u);
    }

    goto LABEL_28;
  }

  if (![absoluteString hasPrefix:@"mobilephone:"])
  {
    if ([absoluteString hasPrefix:@"messages:"])
    {
      radioApplication = [v10 messagesApplication];
      goto LABEL_20;
    }

    if ([absoluteString hasPrefix:@"app:"])
    {
      v60 = [absoluteString stringByReplacingOccurrencesOfString:@"://" withString:@":"];

      v41 = [v60 componentsSeparatedByString:@":"];
      lastObject = [v41 lastObject];

      v42 = [v10 applicationWithBundleIdentifier:lastObject];
      v43 = v80[5];
      v80[5] = v42;

      if (v80[5])
      {
        environmentConfiguration4 = [(DBScreenController *)self environmentConfiguration];
        appHistory2 = [environmentConfiguration4 appHistory];
        bundleIdentifier = [v80[5] bundleIdentifier];
        v47 = [appHistory2 applicationVisibleInCarPlay:bundleIdentifier withIconProvider:homeViewController];

        if (v47)
        {
          environmentConfiguration5 = [(DBScreenController *)self environmentConfiguration];
          v69[0] = MEMORY[0x277D85DD0];
          v69[1] = 3221225472;
          v69[2] = __33__DBDashboard__handleSessionURL___block_invoke_659;
          v69[3] = &unk_278F023C0;
          v69[4] = self;
          v72 = &v79;
          v70 = v7;
          v71 = lCopy;
          [environmentConfiguration5 fetchEnhancedIntegrationStatusWithCompletion:v69];
        }
      }

      else
      {
        v52 = DBLogForCategory(0);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v86 = lCopy;
          _os_log_impl(&dword_248146000, v52, OS_LOG_TYPE_DEFAULT, "No available app for requestUI URL %{public}@", buf, 0xCu);
        }
      }

      absoluteString = v60;
      goto LABEL_11;
    }

    if ([absoluteString hasPrefix:@"search:"])
    {
      siriSimpleActivationSource = [(DBDashboard *)self siriSimpleActivationSource];
      [siriSimpleActivationSource activateFromSource:10];

      goto LABEL_11;
    }

    if (![absoluteString hasPrefix:@"punchthrough:"])
    {
      goto LABEL_55;
    }

    if (DBIsInternalInstall_onceToken_0 != -1)
    {
      [DBDashboard _handleSessionURL:];
    }

    if (DBIsInternalInstall_isInternal_0 != 1)
    {
LABEL_55:
      [(DBDashboard *)self _handleAppSchemeURL:lCopy activationSettings:v7];
      goto LABEL_11;
    }

    mostRecentNavigatingApp = [MEMORY[0x277CCACE0] componentsWithString:absoluteString];
    host = [mostRecentNavigatingApp host];
    queryItems2 = [mostRecentNavigatingApp queryItems];
    v51 = [queryItems2 indexOfObjectPassingTest:&__block_literal_global_666];

    if (v51 == 0x7FFFFFFFFFFFFFFFLL)
    {
      lowercaseString = @"present";
    }

    else
    {
      queryItems3 = [mostRecentNavigatingApp queryItems];
      v53 = [queryItems3 objectAtIndex:v51];
      value2 = [v53 value];
      lowercaseString = [value2 lowercaseString];
    }

    if ([host length])
    {
      if (![(__CFString *)lowercaseString caseInsensitiveCompare:@"present"])
      {
        [(DBDashboard *)self _presentPunchthroughWithIdentifier:host];
        goto LABEL_72;
      }

      if (![(__CFString *)lowercaseString caseInsensitiveCompare:@"dismiss"])
      {
        [(DBDashboard *)self _dismissPunchthroughWithIdentifier:host];
        goto LABEL_72;
      }

      v55 = DBLogForCategory(0);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v56 = "Invalid punch through URL action query param.";
LABEL_68:
        _os_log_impl(&dword_248146000, v55, OS_LOG_TYPE_DEFAULT, v56, buf, 2u);
      }
    }

    else
    {
      v55 = DBLogForCategory(0);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v56 = "Invalid punch through URL, missing identifier.";
        goto LABEL_68;
      }
    }

LABEL_72:
    v14 = 0;
    goto LABEL_9;
  }

  if (![(DBDashboard *)self hasActiveCall])
  {
    radioApplication = [v10 phoneApplication];
    goto LABEL_20;
  }

  inCallServiceApplication = [v10 inCallServiceApplication];
  v36 = v80[5];
  v80[5] = inCallServiceApplication;

  if (v80[5])
  {
    v37 = objc_alloc_init(DBActivationSettings);
    faceTimeShowCarPlayInCallUIURL = [MEMORY[0x277CBEBC0] faceTimeShowCarPlayInCallUIURL];
    [(DBActivationSettings *)v37 setUrl:faceTimeShowCarPlayInCallUIURL];

    v39 = [DBApplicationLaunchInfo launchInfoForApplication:v80[5] withActivationSettings:v37];
    [(DBDashboard *)self _handleBackgroundURLDeliveryForLaunchInfo:v39];
  }

  v40 = DBLogForCategory(0);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248146000, v40, OS_LOG_TYPE_DEFAULT, "Taking screen for requestUI mobilephone, launching to in-call UI", buf, 2u);
  }

  [session takeScreenForClient:@"com.apple.CarPlayApp" reason:@"iOS UI requested"];
LABEL_11:

  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v79, 8);
}

uint64_t __33__DBDashboard__handleSessionURL___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 isEqualToString:@"zone"];

  return v3;
}

void __33__DBDashboard__handleSessionURL___block_invoke_659(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__DBDashboard__handleSessionURL___block_invoke_660;
    block[3] = &unk_278F02398;
    v3 = *(a1 + 56);
    v7 = *(a1 + 32);
    v4 = *(&v7 + 1);
    *&v5 = *(a1 + 48);
    *(&v5 + 1) = v3;
    v9 = v7;
    v10 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v6 = DBLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "No user consent for launching app by URL.", buf, 2u);
    }
  }
}

void __33__DBDashboard__handleSessionURL___block_invoke_660(void *a1)
{
  v2 = a1[4];
  v3 = [DBApplicationLaunchInfo launchInfoForApplication:*(*(a1[7] + 8) + 40) withActivationSettings:a1[5]];
  [v2 _launchAppWithInfo:v3 forURL:a1[6]];
}

BOOL __33__DBDashboard__handleSessionURL___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = [a2 name];
  v6 = [v5 caseInsensitiveCompare:@"action"];

  if (a4 && !v6)
  {
    *a4 = 1;
  }

  return v6 == 0;
}

void __33__DBDashboard__handleSessionURL___block_invoke_676(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 40) || *(a1 + 72) && ([*(a1 + 32) environmentConfiguration], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "appHistory"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "orderedAppsMatchingDockCategory:", *(a1 + 72)), v8 = objc_claimAutoreleasedReturnValue(), v7, v6, objc_msgSend(v8, "firstObject"), v9 = objc_claimAutoreleasedReturnValue(), v10 = *(*(a1 + 56) + 8), v11 = *(v10 + 40), *(v10 + 40) = v9, v11, v8, *(*(*(a1 + 56) + 8) + 40)))
  {
    v2 = *(*(*(a1 + 64) + 8) + 40);
    if (!v2)
    {
      v3 = [DBApplicationLaunchInfo launchInfoForApplication:"launchInfoForApplication:withActivationSettings:" withActivationSettings:?];
      v4 = *(*(a1 + 64) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;

      v2 = *(*(*(a1 + 64) + 8) + 40);
    }

    goto LABEL_7;
  }

  v2 = *(*(*(a1 + 64) + 8) + 40);
  if (v2)
  {
LABEL_7:
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);

    [v12 _launchAppWithInfo:v2 forURL:v13];
    return;
  }

  v14 = DBLogForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __33__DBDashboard__handleSessionURL___block_invoke_676_cold_1(a1, v14);
  }
}

- (void)_handleAppSchemeURL:(id)l activationSettings:(id)settings
{
  lCopy = l;
  settingsCopy = settings;
  rootViewController = [(DBDashboard *)self rootViewController];
  homeViewController = [rootViewController homeViewController];

  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  appHistory = [environmentConfiguration appHistory];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__DBDashboard__handleAppSchemeURL_activationSettings___block_invoke;
  v13[3] = &unk_278F02430;
  v13[4] = self;
  v14 = lCopy;
  v12 = lCopy;
  [appHistory openApplicationURL:v12 withIconProvider:homeViewController activationSettings:settingsCopy completion:v13];
}

void __54__DBDashboard__handleAppSchemeURL_activationSettings___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__DBDashboard__handleAppSchemeURL_activationSettings___block_invoke_2;
    block[3] = &unk_278F015F8;
    block[4] = *(a1 + 32);
    v12 = v7;
    v13 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else if ((a2 & 1) == 0)
  {
    v9 = DBLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      *buf = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "Unable to resolve a URL request for URL %{public}@: %@", buf, 0x16u);
    }
  }
}

- (void)session:(id)session receivedUnhandledRemoteEvent:(id)event withPayload:(id)payload
{
  eventCopy = event;
  payloadCopy = payload;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__DBDashboard_session_receivedUnhandledRemoteEvent_withPayload___block_invoke;
  block[3] = &unk_278F015F8;
  v12 = eventCopy;
  v13 = payloadCopy;
  selfCopy = self;
  v9 = payloadCopy;
  v10 = eventCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __64__DBDashboard_session_receivedUnhandledRemoteEvent_withPayload___block_invoke(id *a1)
{
  v49 = *MEMORY[0x277D85DE8];
  if ([a1[4] isEqualToString:@"changeUIContext"])
  {
    v2 = [a1[5] objectForKeyedSubscript:@"url"];
    v3 = [a1[6] environmentConfiguration];
    v4 = [v3 appHistory];
    v5 = [v4 sessionAppContextURLs];
    v6 = [v5 containsObject:v2];

    v7 = DBLogForCategory(0);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *buf = 138543362;
        v48 = v2;
        _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Received UIContext event %{public}@, updating ownership to accessory.", buf, 0xCu);
      }

      v7 = [a1[6] environmentConfiguration];
      v9 = [v7 appHistory];
      [v9 updateOwner:0 forContext:v2];
    }

    else if (v8)
    {
      *buf = 138543362;
      v48 = v2;
      _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Received UIContext event %{public}@ for which the accessory did not declare support; dropping.", buf, 0xCu);
    }

LABEL_16:
    return;
  }

  if ([a1[4] isEqualToString:@"accessoryAcquireFocus"])
  {
    if ([a1[6] _isPunchThroughPresented])
    {
      v10 = [a1[6] dockController];
      [v10 relinquishFocus];

      [a1[6] setClimateFocusAssertion:0];
    }

    v11 = [a1[6] focusController];
    v46 = [v11 suspendFocusWithPriority:9 reason:@"oemFocus"];

    [a1[6] setOEMFocusAssertion:v46];
    goto LABEL_10;
  }

  if (![a1[4] isEqualToString:@"accessoryGiveFocus"])
  {
    v2 = DBLogForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v20 = a1[4];
      *buf = 138543362;
      v48 = v20;
      _os_log_impl(&dword_248146000, v2, OS_LOG_TYPE_DEFAULT, "Received unhandled remote event %{public}@; dropping.", buf, 0xCu);
    }

    goto LABEL_16;
  }

  v12 = [a1[5] objectForKey:@"focusHeading"];
  v13 = [v12 unsignedIntegerValue];

  v14 = [a1[6] environmentConfiguration];
  v15 = [v14 isRightHandDrive];
  v16 = [a1[6] environmentConfiguration];
  v17 = +[DBFocusMovementManager isOEMToiOSHeadingToStatusBar:isLeftHandDrive:statusBarEdge:](DBFocusMovementManager, "isOEMToiOSHeadingToStatusBar:isLeftHandDrive:statusBarEdge:", v13, v15 ^ 1u, [v16 currentStatusBarEdge]);

  v18 = [a1[6] dockController];
  v19 = v18;
  if (v17)
  {
    [v18 acquireFocus];
  }

  else
  {
    [v18 relinquishFocus];

    [a1[6] setClimateFocusAssertion:0];
  }

  v21 = [a1[5] objectForKey:@"originXPixels"];
  [v21 floatValue];
  v23 = v22;

  v24 = [a1[5] objectForKey:@"originYPixels"];
  [v24 floatValue];
  v26 = v25;

  v27 = [a1[5] objectForKey:@"widthPixels"];
  [v27 floatValue];
  v29 = v28;

  v30 = [a1[5] objectForKey:@"heightPixels"];
  [v30 floatValue];
  v32 = v31;

  v33 = [a1[6] rootViewController];
  v34 = [v33 contentView];
  v35 = [a1[6] mainWindow];
  v36 = [v35 screen];
  [DBFocusMovementManager convertRect:v34 toView:v36 fromScreen:v23, v26, v29, v32];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v45 = [a1[6] oemFocusAssertion];
  [v45 invalidateWithHeading:v13 focusedFrame:{v38, v40, v42, v44}];

  [a1[6] setOEMFocusAssertion:0];
  if ([a1[6] _isPunchThroughPresented])
  {
    v46 = objc_alloc_init(MEMORY[0x277D75510]);
    [a1[6] _takeClimateFocusAssertionForAction:? heading:?];
LABEL_10:
  }
}

- (CGRect)_rectForFocusedRectDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  [environmentConfiguration screenScale];
  v7 = v6;

  v8 = [dictionaryCopy objectForKeyedSubscript:@"originXPixels"];
  [v8 floatValue];
  v10 = v9 / v7;
  v11 = [dictionaryCopy objectForKeyedSubscript:@"originYPixels"];
  [v11 floatValue];
  v13 = v12 / v7;
  v14 = [dictionaryCopy objectForKeyedSubscript:@"widthPixels"];
  [v14 floatValue];
  v16 = v15 / v7;
  v17 = [dictionaryCopy objectForKeyedSubscript:@"heightPixels"];

  [v17 floatValue];
  v19 = v18 / v7;

  v20 = v10;
  v21 = v13;
  v22 = v16;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)alertServer:(id)server wantsAppPresentationForAlert:(id)alert bundleID:(id)d
{
  dCopy = d;
  alertCopy = alert;
  serverCopy = server;
  workspaceOwner = [(DBDashboard *)self workspaceOwner];
  [workspaceOwner alertServer:serverCopy wantsAppPresentationForAlert:alertCopy bundleID:dCopy];
}

- (void)alertServer:(id)server wantsAppDismissalForAlert:(id)alert bundleID:(id)d
{
  dCopy = d;
  alertCopy = alert;
  serverCopy = server;
  workspaceOwner = [(DBDashboard *)self workspaceOwner];
  [workspaceOwner alertServer:serverCopy wantsAppDismissalForAlert:alertCopy bundleID:dCopy];
}

- (void)alertServer:(id)server wantsSystemPresentationForViewController:(id)controller
{
  v4 = DBLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [DBDashboard alertServer:wantsSystemPresentationForViewController:];
  }
}

- (void)alertServer:(id)server wantsSystemDismissalForViewController:(id)controller
{
  v4 = DBLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [DBDashboard alertServer:wantsSystemPresentationForViewController:];
  }
}

- (void)willPresentPresentable:(id)presentable forNotificationViewController:(id)controller
{
  presentableCopy = presentable;
  controllerCopy = controller;
  visibleNotificationScene = [controllerCopy visibleNotificationScene];
  if (visibleNotificationScene)
  {
    dockController = [(DBDashboard *)self dockController];
    if (!dockController || (v10 = dockController, -[DBDashboard dockController](self, "dockController"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 statusBarOverrideInterfaceStyle], v11, v10, !v12))
    {
      v12 = [(DBDashboard *)self _sceneInterfaceStyleForScene:visibleNotificationScene];
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __68__DBDashboard_willPresentPresentable_forNotificationViewController___block_invoke;
    v21[3] = &__block_descriptor_40_e43_v16__0__UIMutableApplicationSceneSettings_8l;
    v21[4] = v12;
    [visibleNotificationScene updateUISettingsWithBlock:v21];
    v13 = [controllerCopy presentableIsOEMNotification:presentableCopy];
    if (v13)
    {
      v14 = 8;
    }

    else
    {
      v14 = 5;
    }

    if (v13)
    {
      v15 = [DBEvent eventWithType:10 context:0];
      [(DBDashboard *)self handleEvent:v15];
    }

    focusController = [(DBDashboard *)self focusController];
    v17 = [focusController deferFocusToScene:visibleNotificationScene priority:v14 reason:@"notification"];

    [(DBDashboard *)self setNotificationFocusAssertion:v17];
  }

  else
  {
    v17 = DBLogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [DBDashboard willPresentPresentable:forNotificationViewController:];
    }
  }

  [controllerCopy notificationHeight];
  v19 = v18;
  workspaceOwner = [(DBDashboard *)self workspaceOwner];
  [workspaceOwner setBannerHeight:v19];
}

- (void)didDismissPresentable:(id)presentable forNotificationViewController:(id)controller
{
  v14 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  presentableCopy = presentable;
  [(DBDashboard *)self setNotificationFocusAssertion:0];
  workspaceOwner = [(DBDashboard *)self workspaceOwner];
  [workspaceOwner setBannerHeight:0.0];

  LODWORD(workspaceOwner) = [controllerCopy presentableIsOEMNotification:presentableCopy];
  if (workspaceOwner && self->_interruptedPunchthroughIdentifier)
  {
    v9 = DBLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      interruptedPunchthroughIdentifier = self->_interruptedPunchthroughIdentifier;
      v12 = 138543362;
      v13 = interruptedPunchthroughIdentifier;
      _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "Dismissing OEM Notification, re-presenting interrupted PT: %{public}@", &v12, 0xCu);
    }

    [(DBDashboard *)self _presentPunchthroughWithIdentifier:self->_interruptedPunchthroughIdentifier];
    v11 = self->_interruptedPunchthroughIdentifier;
    self->_interruptedPunchthroughIdentifier = 0;
  }
}

- (void)environmentConfiguration:(id)configuration appearanceStyleDidChange:(int64_t)change
{
  v5 = DBLogForCategory(0x13uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Appearance style changed for environment, updating user interface style", v6, 2u);
  }

  [(DBDashboard *)self _updateUserInterfaceStyle];
}

- (void)environmentConfiguration:(id)configuration appearancePreferenceDidChange:(int64_t)change
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = DBLogForCategory(0x13uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:change];
    *buf = 138412290;
    v14 = v7;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Appearance preference changed to (%@), sending an update with UISync", buf, 0xCu);
  }

  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  uisyncSession = [environmentConfiguration uisyncSession];
  v12 = 0;
  [uisyncSession sendAppearancePreferenceWithPreference:change error:&v12];
  v10 = v12;

  if (v10)
  {
    v11 = DBLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [DBDashboard environmentConfiguration:appearancePreferenceDidChange:];
    }
  }
}

- (void)environmentConfiguration:(id)configuration nightModeDidChange:(BOOL)change
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = DBLogForCategory(0x13uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromBOOL();
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "Night mode changed for environment to: %{public}@", &v6, 0xCu);
  }
}

- (void)environmentConfiguration:(double)configuration viewAreaDidChangeFromViewAreaFrame:(double)frame safeAreaInsets:(double)insets toViewAreaFrame:(double)areaFrame safeAreaInsets:(double)areaInsets duration:(double)duration transitionControlType:(double)type
{
  v181[2] = *MEMORY[0x277D85DE8];
  workspace = [self workspace];
  state = [workspace state];
  activeBundleIdentifier = [state activeBundleIdentifier];

  v32 = +[DBApplicationController sharedInstance];
  v33 = [v32 applicationWithBundleIdentifier:activeBundleIdentifier];

  layoutEngine = [self layoutEngine];
  [layoutEngine areaOfInterestFrameForApplication:v33];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  rootViewController = [self rootViewController];
  if (a18 <= 0.0)
  {
    interestingWindow = [self interestingWindow];
    [interestingWindow setFrame:{v36, v38, v40, v42}];

    cornerRadiusWindow = [self cornerRadiusWindow];
    layoutEngine2 = [self layoutEngine];
    [layoutEngine2 cornerRadiusWindowFrame];
    [cornerRadiusWindow setFrame:?];

    [self _updateWindowFrames];
    [self _updateAppScenesViewArea];
    dockController = [self dockController];
    [dockController updateLayoutForCurrentViewArea];

    climateOverlayController = [self climateOverlayController];
    [climateOverlayController updateLayoutForCurrentViewArea];

    homeViewController = [rootViewController homeViewController];
    [homeViewController _setupIconModelWithRelayout:1];

    v96 = +[DBApplicationController sharedInstance];
    siriApplication = [v96 siriApplication];

    siriViewController = [self siriViewController];
    [self sceneFrameForApplication:siriApplication];
    [siriViewController handleTransitionToFrame:?];

    notificationViewController = [self notificationViewController];
    notificationWindow = [self notificationWindow];
    [notificationWindow frame];
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v108 = v107;
    layoutEngine3 = [self layoutEngine];
    [layoutEngine3 notificationWindowFrame];
    [notificationViewController handleTransitionFromFrame:v102 toFrame:{v104, v106, v108, v110, v111, v112, v113}];

    homeViewController2 = [rootViewController homeViewController];
    [homeViewController2 restartPageControlTimerIfNecessary];
  }

  else
  {
    v139 = v36;
    v140 = v38;
    v141 = v33;
    v142 = activeBundleIdentifier;
    v44 = a2 + areaInsets;
    v45 = frame - (areaInsets + type);
    v46 = [self _takeSnapshotOfFrame:{v44, configuration + areaFrame, v45, insets - (areaFrame + duration)}];
    [v46 setAutoresizingMask:18];
    _newResizeAnimationWindow = [self _newResizeAnimationWindow];
    [self setResizeWindow:_newResizeAnimationWindow];
    v48 = objc_alloc(MEMORY[0x277D75D18]);
    v49 = [v48 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v49 setClipsToBounds:1];
    v150 = _newResizeAnimationWindow;
    [_newResizeAnimationWindow addSubview:v49];
    [v49 setFrame:{v44, configuration + areaFrame, v45, insets - (areaFrame + duration)}];
    v50 = objc_alloc_init(_TtC9DashBoard15DBAnimationView);
    [(DBAnimationView *)v50 setAutoresizingMask:18];
    v181[0] = @"filters.gaussianBlur.inputRadius";
    v181[1] = @"filters.saturation.inputAmount";
    v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v181 count:2];
    [(DBAnimationView *)v50 setKeysToAnimate:v51];

    v52 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    [v52 setName:@"gaussianBlur"];
    [v52 setValue:&unk_285AA4AC8 forKey:@"inputRadius"];
    [v52 setValue:MEMORY[0x277CBEC38] forKey:@"inputHardEdges"];
    v53 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2D0]];
    [v53 setName:@"saturation"];
    [v53 setValue:&unk_285AA4AD8 forKey:@"inputAmount"];
    layer = [(DBAnimationView *)v50 layer];
    v144 = v53;
    v146 = v52;
    v180[0] = v52;
    v180[1] = v53;
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v180 count:2];
    [layer setFilters:v55];

    [v49 addSubview:v50];
    [v49 bounds];
    [(DBAnimationView *)v50 setFrame:?];
    [(DBAnimationView *)v50 addSubview:v46];
    [(DBAnimationView *)v50 bounds];
    v148 = v46;
    [v46 setFrame:?];
    [MEMORY[0x277CD9FF0] commit];
    [self _updateAppScenesViewArea];
    [self _updateWindowFrames];
    dockController2 = [self dockController];
    [dockController2 updateLayoutForCurrentViewArea];

    climateOverlayController2 = [self climateOverlayController];
    [climateOverlayController2 updateLayoutForCurrentViewArea];

    notificationViewController2 = [self notificationViewController];
    notificationWindow2 = [self notificationWindow];
    [notificationWindow2 frame];
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    layoutEngine4 = [self layoutEngine];
    [layoutEngine4 notificationWindowFrame];
    [notificationViewController2 handleTransitionFromFrame:v61 toFrame:{v63, v65, v67, v69, v70, v71, v72}];

    v73 = +[DBApplicationController sharedInstance];
    siriApplication2 = [v73 siriApplication];

    siriViewController2 = [self siriViewController];
    v138 = siriApplication2;
    [self sceneFrameForApplication:siriApplication2];
    [siriViewController2 handleTransitionToFrame:?];

    rootViewController2 = [self rootViewController];
    homeViewController3 = [rootViewController2 homeViewController];
    folderController = [homeViewController3 folderController];
    folderControllers = [folderController folderControllers];
    firstObject = [folderControllers firstObject];

    currentPageIndex = [firstObject currentPageIndex];
    v152 = rootViewController;
    homeViewController4 = [rootViewController homeViewController];
    [homeViewController4 _setupIconModelWithRelayout:1];

    rootViewController3 = [self rootViewController];
    homeViewController5 = [rootViewController3 homeViewController];
    folderController2 = [homeViewController5 folderController];
    folderControllers2 = [folderController2 folderControllers];
    firstObject2 = [folderControllers2 firstObject];

    v136 = firstObject;
    if (firstObject != firstObject2)
    {
      if (currentPageIndex > [firstObject2 maximumPageIndex])
      {
        currentPageIndex = [firstObject2 maximumPageIndex];
      }

      [firstObject2 setCurrentPageIndex:currentPageIndex animated:0];
    }

    [MEMORY[0x277CD9FF0] commit];
    v88 = [self _takeSnapshotOfFrame:{a10 + a15, a11 + a14, a12 - (a15 + a17), a13 - (a14 + a16)}];
    [v88 setAutoresizingMask:18];
    if (a18 >= 0.5)
    {
      v115 = objc_alloc_init(_TtC9DashBoard29DBIconLayerViewWithLegibility);
      environmentConfiguration = [self environmentConfiguration];
      iconImageAppearance = [environmentConfiguration iconImageAppearance];

      environmentConfiguration2 = [self environmentConfiguration];
      [environmentConfiguration2 pointScale];
      [_TtC9DashBoard11DBIconImage iconImageInfoForScale:?];
      v120 = v119;
      v122 = v121;
      v124 = v123;
      v126 = v125;

      v127 = dispatch_get_global_queue(33, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __152__DBDashboard_environmentConfiguration_viewAreaDidChangeFromViewAreaFrame_safeAreaInsets_toViewAreaFrame_safeAreaInsets_duration_transitionControlType___block_invoke;
      block[3] = &unk_278F02478;
      v176 = v120;
      v177 = v122;
      v178 = v124;
      v179 = v126;
      v174 = iconImageAppearance;
      v89 = v115;
      v175 = v89;
      v128 = iconImageAppearance;
      dispatch_async(v127, block);

      [(DBIconLayerViewWithLegibility *)v89 setContentMode:4];
      [(DBIconLayerViewWithLegibility *)v89 setAutoresizingMask:45];
      [(DBIconLayerViewWithLegibility *)v89 setBounds:0.0, 0.0, v120, v122];
      [v49 bounds];
      MidX = CGRectGetMidX(v182);
      [v49 bounds];
      [(DBIconLayerViewWithLegibility *)v89 setCenter:MidX, CGRectGetMidY(v183)];
      [(DBIconLayerViewWithLegibility *)v89 setAlpha:0.0];
      [v49 addSubview:v89];
    }

    else
    {
      v89 = 0;
    }

    v33 = v141;
    v130 = MEMORY[0x277D75D18];
    v170[0] = MEMORY[0x277D85DD0];
    v170[1] = 3221225472;
    v170[2] = __152__DBDashboard_environmentConfiguration_viewAreaDidChangeFromViewAreaFrame_safeAreaInsets_toViewAreaFrame_safeAreaInsets_duration_transitionControlType___block_invoke_3;
    v170[3] = &unk_278F014B8;
    v171 = v50;
    v172 = v89;
    v153[0] = MEMORY[0x277D85DD0];
    v153[1] = 3221225472;
    v153[2] = __152__DBDashboard_environmentConfiguration_viewAreaDidChangeFromViewAreaFrame_safeAreaInsets_toViewAreaFrame_safeAreaInsets_duration_transitionControlType___block_invoke_704;
    v153[3] = &unk_278F02518;
    v154 = v171;
    v155 = v88;
    v161 = a18;
    v162 = a10 + a15;
    v163 = a11 + a14;
    v164 = a12 - (a15 + a17);
    v156 = v49;
    selfCopy = self;
    v165 = a13 - (a14 + a16);
    v166 = v139;
    v167 = v140;
    v168 = v40;
    v169 = v42;
    v158 = v148;
    v159 = v172;
    rootViewController = v152;
    v160 = v152;
    v131 = v172;
    v132 = v148;
    v133 = v49;
    v134 = v88;
    v135 = v171;
    [v130 animateWithDuration:v170 animations:v153 completion:0.25];

    activeBundleIdentifier = v142;
  }
}

void __152__DBDashboard_environmentConfiguration_viewAreaDidChangeFromViewAreaFrame_safeAreaInsets_toViewAreaFrame_safeAreaInsets_duration_transitionControlType___block_invoke(uint64_t a1)
{
  v2 = SBHGetApplicationIconLayerWithImageAppearance();
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __152__DBDashboard_environmentConfiguration_viewAreaDidChangeFromViewAreaFrame_safeAreaInsets_toViewAreaFrame_safeAreaInsets_duration_transitionControlType___block_invoke_2;
  v4[3] = &unk_278F014B8;
  v5 = *(a1 + 40);
  v6 = v2;
  v3 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

uint64_t __152__DBDashboard_environmentConfiguration_viewAreaDidChangeFromViewAreaFrame_safeAreaInsets_toViewAreaFrame_safeAreaInsets_duration_transitionControlType___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 setValue:&unk_285AA4AE8 forKeyPath:@"filters.saturation.inputAmount"];

  v3 = [*(a1 + 32) layer];
  [v3 setValue:&unk_285AA4AF8 forKeyPath:@"filters.gaussianBlur.inputRadius"];

  v4 = *(a1 + 40);

  return [v4 setAlpha:1.0];
}

void __152__DBDashboard_environmentConfiguration_viewAreaDidChangeFromViewAreaFrame_safeAreaInsets_toViewAreaFrame_safeAreaInsets_duration_transitionControlType___block_invoke_704(uint64_t a1)
{
  [*(a1 + 32) addSubview:*(a1 + 40)];
  [*(a1 + 40) setAlpha:0.0];
  v2 = *(a1 + 40);
  [*(a1 + 32) bounds];
  [v2 setFrame:?];
  v3 = MEMORY[0x277D75D18];
  v4 = *(a1 + 88);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __152__DBDashboard_environmentConfiguration_viewAreaDidChangeFromViewAreaFrame_safeAreaInsets_toViewAreaFrame_safeAreaInsets_duration_transitionControlType___block_invoke_2_705;
  v17[3] = &unk_278F024A0;
  v18 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 112);
  v21 = *(a1 + 96);
  v22 = v6;
  v7 = *(a1 + 144);
  v23 = *(a1 + 128);
  v8 = *(a1 + 56);
  v19 = v5;
  v20 = v8;
  v24 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __152__DBDashboard_environmentConfiguration_viewAreaDidChangeFromViewAreaFrame_safeAreaInsets_toViewAreaFrame_safeAreaInsets_duration_transitionControlType___block_invoke_3_706;
  v11[3] = &unk_278F024F0;
  v12 = *(a1 + 64);
  v13 = *(a1 + 32);
  v9 = *(a1 + 72);
  v10 = *(a1 + 56);
  v14 = v9;
  v15 = v10;
  v16 = *(a1 + 80);
  [v3 animateWithDuration:0x20000 delay:v17 usingSpringWithDamping:v11 initialSpringVelocity:v4 options:0.0 animations:100.0 completion:0.0];
}

void __152__DBDashboard_environmentConfiguration_viewAreaDidChangeFromViewAreaFrame_safeAreaInsets_toViewAreaFrame_safeAreaInsets_duration_transitionControlType___block_invoke_2_705(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  [*(a1 + 40) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v2 = [*(a1 + 48) environmentConfiguration];
  v3 = [v2 currentViewAreaSupportsUIOutsideSafeArea];

  v4 = [*(a1 + 48) cornerRadiusWindow];
  v5 = v4;
  v6 = 0.0;
  if (!v3)
  {
    v6 = 1.0;
  }

  [v4 setAlpha:v6];

  v7 = [*(a1 + 48) cornerRadiusWindow];
  v8 = [*(a1 + 48) layoutEngine];
  [v8 cornerRadiusWindowFrame];
  [v7 setFrame:?];

  v9 = [*(a1 + 48) interestingWindow];
  [v9 setFrame:{*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)}];
}

void __152__DBDashboard_environmentConfiguration_viewAreaDidChangeFromViewAreaFrame_safeAreaInsets_toViewAreaFrame_safeAreaInsets_duration_transitionControlType___block_invoke_3_706(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = MEMORY[0x277D75D18];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __152__DBDashboard_environmentConfiguration_viewAreaDidChangeFromViewAreaFrame_safeAreaInsets_toViewAreaFrame_safeAreaInsets_duration_transitionControlType___block_invoke_4;
  v6[3] = &unk_278F014B8;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __152__DBDashboard_environmentConfiguration_viewAreaDidChangeFromViewAreaFrame_safeAreaInsets_toViewAreaFrame_safeAreaInsets_duration_transitionControlType___block_invoke_5;
  v4[3] = &unk_278F024C8;
  v3 = *(a1 + 64);
  v4[4] = *(a1 + 56);
  v5 = v3;
  [v2 animateWithDuration:v6 animations:v4 completion:0.25];
}

uint64_t __152__DBDashboard_environmentConfiguration_viewAreaDidChangeFromViewAreaFrame_safeAreaInsets_toViewAreaFrame_safeAreaInsets_duration_transitionControlType___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 setValue:&unk_285AA4AD8 forKeyPath:@"filters.saturation.inputAmount"];

  v3 = [*(a1 + 32) layer];
  [v3 setValue:&unk_285AA4AC8 forKeyPath:@"filters.gaussianBlur.inputRadius"];

  v4 = *(a1 + 40);

  return [v4 setAlpha:0.0];
}

void __152__DBDashboard_environmentConfiguration_viewAreaDidChangeFromViewAreaFrame_safeAreaInsets_toViewAreaFrame_safeAreaInsets_duration_transitionControlType___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setResizeWindow:0];
  [*(a1 + 32) _updateWindowFrames];
  v2 = [*(a1 + 32) dockController];
  [v2 updateLayoutForCurrentViewArea];

  v3 = [*(a1 + 32) climateOverlayController];
  [v3 updateLayoutForCurrentViewArea];

  v4 = [*(a1 + 40) homeViewController];
  [v4 restartPageControlTimerIfNecessary];
}

- (void)environmentConfiguration:(id)configuration canvasOverrideSizeDidChange:(CGSize)change
{
  height = change.height;
  width = change.width;
  v26 = *MEMORY[0x277D85DE8];
  v7 = [_TtC9DashBoard14DBResizeWindow alloc];
  windowScene = [(DBScreenController *)self windowScene];
  layoutEngine = [(DBDashboard *)self layoutEngine];
  [layoutEngine resizeAnimationWindowFrame];
  v10 = [(DBResizeWindow *)v7 initWithWindowScene:windowScene frame:?];

  [(DBResizeWindow *)v10 setHidden:0];
  [(DBResizeWindow *)v10 setAlpha:0.0];
  [(DBDashboard *)self setDisplayScaleWindow:v10];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setObject:MEMORY[0x277CBEC38] forKey:@"DBReconnectingWithNewOverrideCanvasKey"];

  v12 = DBLogForCategory(0x1BuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    displayConfiguration = [(DBDashboard *)self displayConfiguration];
    v27.width = width;
    v27.height = height;
    v14 = NSStringFromCGSize(v27);
    *buf = 138543618;
    v23 = displayConfiguration;
    v24 = 2114;
    v25 = v14;
    _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_INFO, "Vehicle udpated. Will scale the display %{public}@ to %{public}@", buf, 0x16u);
  }

  v15 = MEMORY[0x277D75D18];
  +[_TtC9DashBoard32DBDashboardStartupFadeInAnimator animationDuration];
  v17 = v16;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __68__DBDashboard_environmentConfiguration_canvasOverrideSizeDidChange___block_invoke;
  v20[3] = &unk_278F01580;
  v21 = v10;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __68__DBDashboard_environmentConfiguration_canvasOverrideSizeDidChange___block_invoke_2;
  v19[3] = &unk_278F02540;
  v19[4] = self;
  *&v19[5] = width;
  *&v19[6] = height;
  v18 = v10;
  [v15 animateWithDuration:v20 animations:v19 completion:v17];
}

void __68__DBDashboard_environmentConfiguration_canvasOverrideSizeDidChange___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__DBDashboard_environmentConfiguration_canvasOverrideSizeDidChange___block_invoke_3;
  block[3] = &unk_278F01848;
  block[4] = *(a1 + 32);
  v2 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __68__DBDashboard_environmentConfiguration_canvasOverrideSizeDidChange___block_invoke_3(uint64_t a1)
{
  v5 = [*(a1 + 32) environmentConfiguration];
  v2 = [v5 session];
  v3 = [*(a1 + 32) displayConfiguration];
  v4 = [v3 hardwareIdentifier];
  [v2 setCanvasOverrideSize:v4 forScreenID:{*(a1 + 40), *(a1 + 48)}];
}

- (void)environmentConfiguration:(id)configuration homeScreenStyleDidChange:(id)change
{
  changeCopy = change;
  _homeScreenStyleTraitOverrides = [(DBDashboard *)self _homeScreenStyleTraitOverrides];
  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  -[DBDashboard _updateTraitOverridesForTraitOverrides:withHomeScreenStyleData:userInterfaceStyle:](self, "_updateTraitOverridesForTraitOverrides:withHomeScreenStyleData:userInterfaceStyle:", _homeScreenStyleTraitOverrides, changeCopy, [environmentConfiguration resolvedUserInterfaceStyle]);
}

- (id)_homeScreenStyleTraitOverrides
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  windowScene = [(DBScreenController *)self windowScene];

  if (windowScene)
  {
    windowScene2 = [(DBScreenController *)self windowScene];
    traitOverrides = [windowScene2 traitOverrides];
    [v3 addObject:traitOverrides];
  }

  wallpaperWindow = [(DBDashboard *)self wallpaperWindow];

  if (wallpaperWindow)
  {
    wallpaperWindow2 = [(DBDashboard *)self wallpaperWindow];
    windowScene3 = [wallpaperWindow2 windowScene];
    traitOverrides2 = [windowScene3 traitOverrides];
    [v3 addObject:traitOverrides2];
  }

  notificationWindow = [(DBDashboard *)self notificationWindow];

  if (notificationWindow)
  {
    notificationWindow2 = [(DBDashboard *)self notificationWindow];
    windowScene4 = [notificationWindow2 windowScene];
    traitOverrides3 = [windowScene4 traitOverrides];
    [v3 addObject:traitOverrides3];
  }

  dockController = [(DBDashboard *)self dockController];

  if (dockController)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    dockController2 = [(DBDashboard *)self dockController];
    traitOverridableObjects = [dockController2 traitOverridableObjects];

    v18 = [traitOverridableObjects countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v25;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(traitOverridableObjects);
          }

          traitOverrides4 = [*(*(&v24 + 1) + 8 * i) traitOverrides];
          [v3 addObject:traitOverrides4];
        }

        v19 = [traitOverridableObjects countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v19);
    }
  }

  return v3;
}

- (void)_updateAppScenesViewArea
{
  workspaceOwner = [(DBDashboard *)self workspaceOwner];
  [workspaceOwner updateApplicationSceneFrames];
}

- (void)_updateWindowFrames
{
  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  [environmentConfiguration currentSafeViewAreaFrame];
  v42 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  wallpaperHostWindow = [(DBDashboard *)self wallpaperHostWindow];
  localScene = [wallpaperHostWindow localScene];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __34__DBDashboard__updateWindowFrames__block_invoke;
  v44[3] = &unk_278F02568;
  v44[4] = self;
  [localScene updateSettingsWithBlock:v44];

  layoutEngine = [(DBDashboard *)self layoutEngine];
  [layoutEngine wallpaperWindowFrame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  wallpaperWindow = [(DBDashboard *)self wallpaperWindow];
  [wallpaperWindow setFrame:{v15, v17, v19, v21}];

  environmentConfiguration2 = [(DBScreenController *)self environmentConfiguration];
  LODWORD(wallpaperWindow) = [environmentConfiguration2 currentViewAreaSupportsUIOutsideSafeArea];

  rootViewController = [(DBDashboard *)self rootViewController];
  v25 = 0.0;
  if (wallpaperWindow)
  {
    [(DBDashboard *)self currentCornerRadius];
  }

  [rootViewController setContentCornerRadius:v25];

  layoutEngine2 = [(DBDashboard *)self layoutEngine];
  [layoutEngine2 rootViewControllerContentInsets];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  rootViewController2 = [(DBDashboard *)self rootViewController];
  [rootViewController2 setAdditionalSafeAreaInsets:{v28, v30, v32, v34}];

  dockLocalScene = [(DBDashboard *)self dockLocalScene];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __34__DBDashboard__updateWindowFrames__block_invoke_2;
  v43[3] = &unk_278F02568;
  v43[4] = self;
  [dockLocalScene updateSettingsWithBlock:v43];
  notificationWindow = [(DBDashboard *)self notificationWindow];
  layoutEngine3 = [(DBDashboard *)self layoutEngine];
  [layoutEngine3 notificationWindowFrame];
  [notificationWindow setFrame:?];

  lockOutController = [(DBDashboard *)self lockOutController];
  lockOutWindow = [lockOutController lockOutWindow];
  [lockOutWindow setFrame:{v42, v6, v8, v10}];

  userAlertServer = [(DBDashboard *)self userAlertServer];
  [(DBDashboard *)self statusBarInsets];
  [userAlertServer updateAlertSceneFramesWithSafeAreaInsets:?];
}

void __34__DBDashboard__updateWindowFrames__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 layoutEngine];
  [v4 wallpaperHostSceneFrame];
  [v3 setFrame:?];
}

void __34__DBDashboard__updateWindowFrames__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 layoutEngine];
  [v4 dockHostSceneFrame];
  [v3 setFrame:?];
}

- (void)_updatePasscodeLockToken
{
  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  isPairedVehicle = [environmentConfiguration isPairedVehicle];

  if (isPairedVehicle)
  {
    v5 = DBLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Invalidating preventPasscodeLockToken", buf, 2u);
    }

    preventPasscodeLockToken = [(DBDashboard *)self preventPasscodeLockToken];
    [preventPasscodeLockToken invalidate];

    [(DBDashboard *)self setPreventPasscodeLockToken:0];
  }

  else
  {
    preventPasscodeLockToken2 = [(DBDashboard *)self preventPasscodeLockToken];
    if (preventPasscodeLockToken2)
    {
    }

    else
    {
      environmentConfiguration2 = [(DBScreenController *)self environmentConfiguration];
      isPairedVehicle2 = [environmentConfiguration2 isPairedVehicle];

      if ((isPairedVehicle2 & 1) == 0)
      {
        v10 = DBLogForCategory(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_DEFAULT, "Taking preventPasscodeLockToken", v13, 2u);
        }

        v11 = objc_alloc_init(MEMORY[0x277D66B30]);
        v12 = [v11 preventPasscodeLockWithReason:@"CarPlay Active"];
        [(DBDashboard *)self setPreventPasscodeLockToken:v12];

        [v11 invalidate];
      }
    }
  }
}

- (void)_animateStartupToHomeScreen
{
  rootViewController = [(DBDashboard *)self rootViewController];
  homeViewController = [rootViewController homeViewController];
  folderController = [homeViewController folderController];
  folderControllers = [folderController folderControllers];
  firstObject = [folderControllers firstObject];

  minimumPageIndex = [firstObject minimumPageIndex];
  if ([firstObject currentPageIndex] == minimumPageIndex && minimumPageIndex != objc_msgSend(firstObject, "firstIconPageIndex"))
  {
    [(DBDashboard *)self _animateStartupFromScaledMainWindow];
  }

  else
  {
    rootViewController2 = [(DBDashboard *)self rootViewController];
    view = [rootViewController2 view];
    [view setNeedsLayout];

    rootViewController3 = [(DBDashboard *)self rootViewController];
    view2 = [rootViewController3 view];
    [view2 layoutIfNeeded];

    [(DBDashboard *)self _animateStartupToIcons];
  }
}

- (void)_animateStartupToIcons
{
  rootViewController = [(DBDashboard *)self rootViewController];
  homeViewController = [rootViewController homeViewController];
  folderController = [homeViewController folderController];
  folderControllers = [folderController folderControllers];
  firstObject = [folderControllers firstObject];

  dockController = [(DBDashboard *)self dockController];
  [dockController setHidden:0];

  persistentElementsManager = [(DBDashboard *)self persistentElementsManager];
  if (persistentElementsManager && (v10 = persistentElementsManager, -[DBDashboard persistentElementsManager](self, "persistentElementsManager"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 hasPersistentElementsForClient:1], v11, v10, (v12 & 1) == 0))
  {
    dockController2 = [(DBDashboard *)self dockController];
    prepareForSlideAnimation = [dockController2 prepareForSlideAnimation];
  }

  else
  {
    prepareForSlideAnimation = 0;
  }

  wallpaperHostWindow = [(DBDashboard *)self wallpaperHostWindow];
  [wallpaperHostWindow setHidden:0];

  mainWindow = [(DBDashboard *)self mainWindow];
  [mainWindow setHidden:0];

  climateOverlayController = [(DBDashboard *)self climateOverlayController];
  [climateOverlayController setHidden:0];

  climateOverlayController2 = [(DBDashboard *)self climateOverlayController];
  climateWindow = [climateOverlayController2 climateWindow];

  v49 = climateWindow;
  [climateWindow setHidden:0];
  lockOutController = [(DBDashboard *)self lockOutController];
  lockOutWindow = [lockOutController lockOutWindow];

  [lockOutWindow setHidden:0];
  rootViewController2 = [(DBDashboard *)self rootViewController];
  homeViewController2 = [rootViewController2 homeViewController];

  view = [homeViewController2 view];
  [view setClipsToBounds:0];

  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  [environmentConfiguration isRightHandDrive];

  array = [MEMORY[0x277CBEB18] array];
  iconListViews = [firstObject iconListViews];
  if ([iconListViews count] >= 2)
  {
    v27 = [iconListViews objectAtIndex:1];
    [array addObject:v27];
  }

  v46 = iconListViews;
  folderController2 = [homeViewController2 folderController];
  todayViewController = [folderController2 todayViewController];

  if (todayViewController)
  {
    folderController3 = [homeViewController2 folderController];
    todayViewController2 = [folderController3 todayViewController];
    view2 = [todayViewController2 view];
    [array addObject:view2];
  }

  v48 = array;
  [array enumerateObjectsUsingBlock:&__block_literal_global_711];
  v47 = firstObject;
  v33 = [objc_alloc(MEMORY[0x277D660B0]) initWithFolderController:firstObject];
  initWithDefaultValues = [objc_alloc(MEMORY[0x277D65DD8]) initWithDefaultValues];
  [initWithDefaultValues setAnimationType:1];
  [initWithDefaultValues setMass:2.0];
  [initWithDefaultValues setStiffness:300.0];
  [initWithDefaultValues setDamping:50.0];
  [initWithDefaultValues setCurve:0x10000];
  initWithDefaultValues2 = [objc_alloc(MEMORY[0x277D66140]) initWithDefaultValues];
  [initWithDefaultValues2 setDistanceEffect:1];
  [initWithDefaultValues2 setFirstHopIncrement:2.0];
  [initWithDefaultValues2 setHopIncrementAcceleration:-1.0];
  [initWithDefaultValues2 setCentralAnimationSettings:initWithDefaultValues];
  [initWithDefaultValues2 setPreferCenterOfIconGrid:1];
  [v33 setSettings:initWithDefaultValues2];
  [v33 prepare];
  [v33 setFraction:1.0];
  objc_initWeak(location, self);
  lockOutController2 = [(DBDashboard *)self lockOutController];
  lockOutViewController = [lockOutController2 lockOutViewController];
  lockOutController3 = [(DBDashboard *)self lockOutController];
  lockOutMode = [lockOutController3 lockOutMode];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __37__DBDashboard__animateStartupToIcons__block_invoke_2;
  v52[3] = &unk_278F025D8;
  objc_copyWeak(&v60, location);
  v45 = lockOutWindow;
  v53 = v45;
  v51 = prepareForSlideAnimation;
  v54 = v51;
  v40 = initWithDefaultValues;
  v55 = v40;
  v41 = v49;
  v56 = v41;
  v42 = v33;
  v57 = v42;
  v43 = homeViewController2;
  v58 = v43;
  v44 = v48;
  v59 = v44;
  [lockOutViewController setLockOutMode:lockOutMode animated:1 completion:v52];

  objc_destroyWeak(&v60);
  objc_destroyWeak(location);
}

void __37__DBDashboard__animateStartupToIcons__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  [*(a1 + 32) setHidden:1];
  kdebug_trace();
  v3 = DBLogForCategory(0xDuLL);
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_248146000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CARPLAYAPP_SIGNPOST_CONNECT_ANIMATION_BEGIN", " enableTelemetry=YES ", buf, 2u);
  }

  v4 = [WeakRetained environmentConfiguration];
  v5 = [v4 analytics];
  [v5 firstFrameSent];

  v6 = [WeakRetained persistentElementsManager];
  [v6 clearPersistentElements];

  v7 = *(a1 + 40);
  if (v7)
  {
    [*(a1 + 48) calculatedDuration];
    v9 = v8;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __37__DBDashboard__animateStartupToIcons__block_invoke_715;
    v16[3] = &unk_278F01690;
    v17 = *(a1 + 56);
    [v7 animateWithDuration:v16 delay:v9 completion:0.2];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37__DBDashboard__animateStartupToIcons__block_invoke_3;
  v11[3] = &unk_278F025B0;
  v10 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v14 = *(a1 + 64);
  objc_copyWeak(&v15, (a1 + 88));
  [v10 animateToFraction:v11 afterDelay:0.0 withCompletion:0.0];
  objc_destroyWeak(&v15);
}

void __37__DBDashboard__animateStartupToIcons__block_invoke_715(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = MEMORY[0x277D75D18];
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __37__DBDashboard__animateStartupToIcons__block_invoke_2_716;
    v3[3] = &unk_278F01580;
    v4 = *(a1 + 32);
    [v2 animateWithDuration:v3 animations:0.15];
  }
}

void __37__DBDashboard__animateStartupToIcons__block_invoke_3(id *a1)
{
  v2 = [a1[4] view];
  [v2 setClipsToBounds:1];

  v3 = [a1[4] todayViewController];
  [v3 setSmartWidgetCanChangeVisibilityDisabled:0 forRequester:@"DBConnectAnimationRequester"];

  v4 = [a1[4] todayViewController];
  [v4 setSceneWidgetsDisabled:0 forRequester:@"DBConnectAnimationRequester"];

  [a1[5] enumerateObjectsUsingBlock:&__block_literal_global_718];
  [a1[6] cleanup];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  [WeakRetained _handleCarPlayUIReady];
}

- (void)_animateStartupFromScaledMainWindow
{
  v3 = MEMORY[0x277CBEB58];
  mainWindow = [(DBDashboard *)self mainWindow];
  wallpaperHostWindow = [(DBDashboard *)self wallpaperHostWindow];
  v6 = [v3 setWithObjects:{mainWindow, wallpaperHostWindow, 0}];

  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  if (([environmentConfiguration currentViewAreaSupportsUIOutsideSafeArea] & 1) == 0)
  {
    screenInfo = [(DBScreenController *)self screenInfo];
    wantsCornerMasks = [screenInfo wantsCornerMasks];

    if (wantsCornerMasks)
    {
      goto LABEL_5;
    }

    environmentConfiguration = [(DBScreenController *)self cornerRadiusWindow];
    [v6 addObject:environmentConfiguration];
  }

LABEL_5:
  climateOverlayController = [(DBDashboard *)self climateOverlayController];
  climateWindow = [climateOverlayController climateWindow];

  if (climateWindow)
  {
    climateOverlayController2 = [(DBDashboard *)self climateOverlayController];
    climateWindow2 = [climateOverlayController2 climateWindow];
    [v6 addObject:climateWindow2];
  }

  dockController = [(DBDashboard *)self dockController];
  [dockController setHidden:0];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v16 = [standardUserDefaults objectForKey:@"DBReconnectingWithNewOverrideCanvasKey"];
  bOOLValue = [v16 BOOLValue];

  if (bOOLValue)
  {
    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults2 removeObjectForKey:@"DBReconnectingWithNewOverrideCanvasKey"];

    v19 = [_TtC9DashBoard14DBResizeWindow alloc];
    windowScene = [(DBScreenController *)self windowScene];
    layoutEngine = [(DBDashboard *)self layoutEngine];
    [layoutEngine resizeAnimationWindowFrame];
    v22 = [(DBResizeWindow *)v19 initWithWindowScene:windowScene frame:?];

    [(DBDashboard *)self setDisplayScaleWindow:v22];
    v23 = [[_TtC9DashBoard32DBDashboardStartupFadeInAnimator alloc] initWithBlackoutWindow:v22 windows:v6];
  }

  else
  {
    v23 = [[_TtC9DashBoard31DBDashboardStartupScaleAnimator alloc] initWithWindows:v6];
  }

  dockController2 = [(DBDashboard *)self dockController];
  [dockController2 prepareForScaleAnimationWithAnimator:v23];

  [(DBDashboardStartupFadeInAnimator *)v23 prepareForAnimation];
  lockOutController = [(DBDashboard *)self lockOutController];
  lockOutWindow = [lockOutController lockOutWindow];

  rootViewController = [(DBDashboard *)self rootViewController];
  homeViewController = [rootViewController homeViewController];

  todayViewController = [homeViewController todayViewController];
  objc_initWeak(&location, self);
  lockOutController2 = [(DBDashboard *)self lockOutController];
  lockOutViewController = [lockOutController2 lockOutViewController];
  lockOutController3 = [(DBDashboard *)self lockOutController];
  lockOutMode = [lockOutController3 lockOutMode];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __50__DBDashboard__animateStartupFromScaledMainWindow__block_invoke;
  v37[3] = &unk_278F02628;
  objc_copyWeak(&v41, &location);
  v34 = lockOutWindow;
  v38 = v34;
  v35 = v23;
  v39 = v35;
  v36 = todayViewController;
  v40 = v36;
  [lockOutViewController setLockOutMode:lockOutMode animated:1 completion:v37];

  objc_destroyWeak(&v41);
  objc_destroyWeak(&location);
}

void __50__DBDashboard__animateStartupFromScaledMainWindow__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [*(a1 + 32) setHidden:1];
  kdebug_trace();
  v3 = DBLogForCategory(0xDuLL);
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_248146000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CARPLAYAPP_SIGNPOST_CONNECT_ANIMATION_BEGIN", " enableTelemetry=YES ", buf, 2u);
  }

  v4 = [WeakRetained environmentConfiguration];
  v5 = [v4 analytics];
  [v5 firstFrameSent];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__DBDashboard__animateStartupFromScaledMainWindow__block_invoke_720;
  v7[3] = &unk_278F02600;
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = WeakRetained;
  objc_copyWeak(&v10, (a1 + 56));
  [v6 performAnimationWithCompletion:v7];
  objc_destroyWeak(&v10);
}

void __50__DBDashboard__animateStartupFromScaledMainWindow__block_invoke_720(id *a1)
{
  [a1[4] setSmartWidgetCanChangeVisibilityDisabled:0 forRequester:@"DBConnectAnimationRequester"];
  [a1[4] setSceneWidgetsDisabled:0 forRequester:@"DBConnectAnimationRequester"];
  v2 = [a1[5] displayScaleWindow];
  [v2 removeFromSuperview];

  [a1[5] setDisplayScaleWindow:0];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained _handleCarPlayUIReady];
}

- (void)_animateClearLockoutWindow
{
  lockOutController = [(DBDashboard *)self lockOutController];
  lockOutWindow = [lockOutController lockOutWindow];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [lockOutWindow setBackgroundColor:clearColor];

  lockOutController2 = [(DBDashboard *)self lockOutController];
  lockOutViewController = [lockOutController2 lockOutViewController];
  lockOutController3 = [(DBDashboard *)self lockOutController];
  lockOutMode = [lockOutController3 lockOutMode];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__DBDashboard__animateClearLockoutWindow__block_invoke;
  v11[3] = &unk_278F01580;
  v12 = lockOutWindow;
  v10 = lockOutWindow;
  [lockOutViewController setLockOutMode:lockOutMode animated:1 completion:v11];
}

- (CRSUIStatusBarStyleAssertion)alwaysDarkStatusBarStyleAssertion
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__DBDashboard_alwaysDarkStatusBarStyleAssertion__block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  if (alwaysDarkStatusBarStyleAssertion_onceToken != -1)
  {
    dispatch_once(&alwaysDarkStatusBarStyleAssertion_onceToken, block);
  }

  return self->_alwaysDarkStatusBarStyleAssertion;
}

uint64_t __48__DBDashboard_alwaysDarkStatusBarStyleAssertion__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 152) = [objc_alloc(MEMORY[0x277CF9348]) initWithInterfaceStyle:2];

  return MEMORY[0x2821F96F8]();
}

- (BSAnimationSettings)alwaysDarkAnimationSettings
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__DBDashboard_alwaysDarkAnimationSettings__block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  if (alwaysDarkAnimationSettings_onceToken != -1)
  {
    dispatch_once(&alwaysDarkAnimationSettings_onceToken, block);
  }

  return self->_alwaysDarkAnimationSettings;
}

void __42__DBDashboard_alwaysDarkAnimationSettings__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CF0B70];
  v6 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  v3 = [v2 settingsWithDuration:v6 timingFunction:0.35];
  v4 = *(a1 + 32);
  v5 = *(v4 + 160);
  *(v4 + 160) = v3;
}

- (void)setAlwaysDarkInterfaceActive:(BOOL)active
{
  activeCopy = active;
  alwaysDarkStatusBarStyleAssertion = [(DBDashboard *)self alwaysDarkStatusBarStyleAssertion];
  isValid = [alwaysDarkStatusBarStyleAssertion isValid];

  if (isValid != activeCopy)
  {
    wallpaperRootViewController = [(DBDashboard *)self wallpaperRootViewController];
    v8 = wallpaperRootViewController;
    if (activeCopy)
    {
      [wallpaperRootViewController setInterfaceStyleOverride:2];

      rootViewController = [(DBDashboard *)self rootViewController];
      [rootViewController setAlwaysDarkInterface:1];

      alwaysDarkStatusBarStyleAssertion2 = [(DBDashboard *)self alwaysDarkStatusBarStyleAssertion];
      alwaysDarkAnimationSettings = [(DBDashboard *)self alwaysDarkAnimationSettings];
      [alwaysDarkStatusBarStyleAssertion2 acquireWithAnimationSettings:alwaysDarkAnimationSettings];
    }

    else
    {
      [wallpaperRootViewController setInterfaceStyleOverride:0];

      rootViewController2 = [(DBDashboard *)self rootViewController];
      [rootViewController2 setAlwaysDarkInterface:0];

      alwaysDarkStatusBarStyleAssertion2 = [(DBDashboard *)self alwaysDarkStatusBarStyleAssertion];
      alwaysDarkAnimationSettings = [(DBDashboard *)self alwaysDarkAnimationSettings];
      [alwaysDarkStatusBarStyleAssertion2 relinquishWithAnimationSettings:alwaysDarkAnimationSettings];
    }
  }
}

+ (id)_stateChangeApplications
{
  if (_stateChangeApplications_onceToken != -1)
  {
    +[DBDashboard _stateChangeApplications];
  }

  v3 = _stateChangeApplications___stateChangeApps;

  return v3;
}

void __39__DBDashboard__stateChangeApplications__block_invoke()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = +[DBApplicationController sharedInstance];
  v1 = [v0 settingsApplication];
  v6[0] = v1;
  v2 = +[DBApplicationController sharedInstance];
  v3 = [v2 autoSettingsApplication];
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v5 = _stateChangeApplications___stateChangeApps;
  _stateChangeApplications___stateChangeApps = v4;
}

- (void)_handleCarPlayUIReady
{
  bundleIdentifier = [a2 bundleIdentifier];
  *self = 138543362;
  *a3 = bundleIdentifier;
  _os_log_debug_impl(&dword_248146000, a4, OS_LOG_TYPE_DEBUG, "DashBoard requesting state change for %{public}@", self, 0xCu);
}

void __36__DBDashboard__handleCarPlayUIReady__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 appPolicy];
  if ([v3 launchUsingTemplateUI] && objc_msgSend(v3, "applicationCategory") == 8 || (+[DBApplicationController sharedInstance](DBApplicationController, "sharedInstance"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "mapsApplication"), v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5 == v10))
  {
    v6 = *(a1 + 32);
    v7 = MEMORY[0x277D46FA0];
    v8 = [v10 bundleIdentifier];
    v9 = [v7 predicateMatchingBundleIdentifier:v8];
    [v6 addObject:v9];
  }
}

- (void)workspace:(id)workspace stateDidChangeFromState:(id)state toState:(id)toState
{
  v35 = *MEMORY[0x277D85DE8];
  toStateCopy = toState;
  stateCopy = state;
  workspace = [(DBDashboard *)self workspace];
  state = [workspace state];
  activeBundleIdentifier = [state activeBundleIdentifier];

  v12 = +[DBApplicationController sharedInstance];
  v13 = [v12 applicationWithBundleIdentifier:activeBundleIdentifier];

  if ([v13 presentsFullScreen])
  {
    cornerRadiusWindow = [(DBScreenController *)self cornerRadiusWindow];
    [cornerRadiusWindow setHidden:1];
  }

  else
  {
    [(DBDashboard *)self _updateCornerRadiusVisibility];
  }

  -[DBDashboard setAlwaysDarkInterfaceActive:](self, "setAlwaysDarkInterfaceActive:", [v13 isAlwaysDarkInterface]);
  interestingWindow = [(DBScreenController *)self interestingWindow];
  layoutEngine = [(DBDashboard *)self layoutEngine];
  [layoutEngine areaOfInterestFrameForApplication:v13];
  [interestingWindow setFrame:?];

  stackedEntity = [stateCopy stackedEntity];

  stackedEntity2 = [toStateCopy stackedEntity];

  if (stackedEntity2 != stackedEntity)
  {
    identifier = [stackedEntity2 identifier];
    identifier2 = [stackedEntity identifier];
    v21 = [identifier isEqualToString:identifier2];

    if ((v21 & 1) == 0)
    {
      if (self->_interruptedPunchthroughIdentifier)
      {
        v22 = objc_opt_class();
        if ([v22 isEqual:objc_opt_class()])
        {
          v23 = DBLogForCategory(0);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v33) = 0;
            _os_log_impl(&dword_248146000, v23, OS_LOG_TYPE_DEFAULT, "No longer saving interrupted PT", &v33, 2u);
          }

LABEL_21:
          interruptedPunchthroughIdentifier = self->_interruptedPunchthroughIdentifier;
          self->_interruptedPunchthroughIdentifier = 0;
LABEL_22:

          goto LABEL_23;
        }
      }

      if (stackedEntity2)
      {
        v24 = objc_opt_class();
        if ([v24 isEqual:objc_opt_class()])
        {
          v25 = objc_opt_class();
          if (([v25 isEqual:objc_opt_class()] & 1) == 0)
          {
            identifier3 = [stackedEntity identifier];
            v27 = self->_interruptedPunchthroughIdentifier;
            self->_interruptedPunchthroughIdentifier = identifier3;

            interruptedPunchthroughIdentifier = DBLogForCategory(0);
            if (os_log_type_enabled(interruptedPunchthroughIdentifier, OS_LOG_TYPE_DEFAULT))
            {
              v29 = self->_interruptedPunchthroughIdentifier;
              v33 = 138543362;
              v34 = v29;
              _os_log_impl(&dword_248146000, interruptedPunchthroughIdentifier, OS_LOG_TYPE_DEFAULT, "Saving interrupted PT: %{public}@", &v33, 0xCu);
            }

            goto LABEL_22;
          }
        }
      }

      else if (self->_interruptedPunchthroughIdentifier)
      {
        v30 = objc_opt_class();
        if (([v30 isEqual:objc_opt_class()] & 1) == 0)
        {
          v31 = DBLogForCategory(0);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = self->_interruptedPunchthroughIdentifier;
            v33 = 138543362;
            v34 = v32;
            _os_log_impl(&dword_248146000, v31, OS_LOG_TYPE_DEFAULT, "Stacked entity dismissed without replacement, re-presenting interrupted PT: %{public}@", &v33, 0xCu);
          }

          [(DBDashboard *)self _presentPunchthroughWithIdentifier:self->_interruptedPunchthroughIdentifier];
          goto LABEL_21;
        }
      }
    }
  }

LABEL_23:
  objc_opt_class();
  [(DBDashboard *)self _notifyClimateOverlayPunchthroughIsPresented:objc_opt_isKindOfClass() & 1];
  [(DBDashboard *)self _updateAudioNotificationBlocker];
}

- (void)willUpdateThemeData:(id)data withDuration:(double)duration delay:(double)delay
{
  dataCopy = data;
  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  wallpaperPreferences = [environmentConfiguration wallpaperPreferences];

  v10 = [wallpaperPreferences wallpaperFromThemeData:dataCopy];

  currentWallpaper = [wallpaperPreferences currentWallpaper];
  v12 = [currentWallpaper isEqual:v10];

  if ((v12 & 1) == 0)
  {
    [wallpaperPreferences setStagedWallpaper:v10];
    [(DBDashboard *)self _updateWallpaperWithAnimationDuration:duration delay:delay];
  }
}

- (void)_goToPageContainingBundleIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  rootViewController = [(DBDashboard *)self rootViewController];
  homeViewController = [rootViewController homeViewController];
  folderController = [homeViewController folderController];
  folderControllers = [folderController folderControllers];
  firstObject = [folderControllers firstObject];

  iconModel = [firstObject iconModel];
  v14 = [iconModel leafIconForIdentifier:identifierCopy];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__DBDashboard__goToPageContainingBundleIdentifier_completion___block_invoke;
  v16[3] = &unk_278F02678;
  v17 = completionCopy;
  v15 = completionCopy;
  [firstObject setCurrentPageIndexToListDirectlyContainingIcon:v14 animated:0 completion:v16];
}

uint64_t __62__DBDashboard__goToPageContainingBundleIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)runLaunchTestForApplication:(id)application
{
  applicationCopy = application;
  bundleIdentifier = [applicationCopy bundleIdentifier];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__DBDashboard_runLaunchTestForApplication___block_invoke;
  v7[3] = &unk_278F014B8;
  v8 = applicationCopy;
  selfCopy = self;
  v6 = applicationCopy;
  [(DBDashboard *)self _goToPageContainingBundleIdentifier:bundleIdentifier completion:v7];
}

void __43__DBDashboard_runLaunchTestForApplication___block_invoke(uint64_t a1)
{
  v4 = objc_alloc_init(DBActivationSettings);
  [(DBActivationSettings *)v4 setLaunchSource:3];
  [(DBActivationSettings *)v4 setForTesting:1];
  v2 = [DBApplicationLaunchInfo launchInfoForApplication:*(a1 + 32) withActivationSettings:v4];
  v3 = [DBEvent eventWithType:4 context:v2];
  [*(a1 + 40) handleEvent:v3];
}

- (void)_setDidFinishWelcomeIfNeeded
{
  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  vehicle = [environmentConfiguration vehicle];

  displayThemeData = [vehicle displayThemeData];
  if (displayThemeData)
  {
    goto LABEL_2;
  }

  finishedWelcome = [vehicle finishedWelcome];

  if (!finishedWelcome)
  {
    [vehicle setFinishedWelcome:MEMORY[0x277CBEC38]];
    displayThemeData = objc_alloc_init(MEMORY[0x277CF8A68]);
    [displayThemeData saveVehicle:vehicle completion:&__block_literal_global_733];
LABEL_2:
  }
}

void __43__DBDashboard__setDidFinishWelcomeIfNeeded__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = DBLogForCategory(0);
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Marked welcome completed for standard CarPlay", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __43__DBDashboard__setDidFinishWelcomeIfNeeded__block_invoke_cold_1();
  }
}

- (void)client:(int64_t)client didUpdateElements:(id)elements
{
  elementsCopy = elements;
  if (client == 1)
  {
    v8 = elementsCopy;
    if (elementsCopy && [elementsCopy intValue] >= 1)
    {
      dockController = [(DBDashboard *)self dockController];
      [dockController setAlwaysVisibleSecondaryDockWindowLevel];
    }

    else
    {
      dockController = [(DBDashboard *)self dockController];
      [dockController resetAlwaysVisibleSecondaryDockWindowLevel];
    }
  }

  else
  {
    if (client)
    {
      goto LABEL_12;
    }

    v8 = elementsCopy;
    if (elementsCopy && [elementsCopy intValue] >= 1)
    {
      dockController = [(DBDashboard *)self climateOverlayController];
      [dockController setAlwaysVisibleClimateWindowLevel];
    }

    else
    {
      dockController = [(DBDashboard *)self climateOverlayController];
      [dockController resetAlwaysVisibleClimateWindowLevel];
    }
  }

  elementsCopy = v8;
LABEL_12:
}

- (void)_updateTraitOverridesForTraitOverrides:(id)overrides withHomeScreenStyleData:(id)data userInterfaceStyle:(int64_t)style
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91470);
  v8 = sub_248383B10();
  dataCopy = data;
  selfCopy = self;
  _sSo11DBDashboardC9DashBoardE21_updateTraitOverrides3for4with18userInterfaceStyleySaySo07UITraitF0_pG_So012CRHomeScreenK4DataCSo06UIUserjK0VtF_0(v8, dataCopy, style);
}

- (void)initWithRootScene:environmentConfiguration:defaultSceneWorkspaceIdentifier:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_248146000, v0, OS_LOG_TYPE_FAULT, "Unexpected nil hardware identifier for display configuration: %{public}@", v1, 0xCu);
}

void __36__DBDashboard__setupDNDStateService__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __40__DBDashboard__publishInitialFocusState__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_handleOpenApplicationEvent:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v3 = [a1 bundleIdentifier];
  v4 = DBDescriptionForLaunchSource(a2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)_handleOpenApplicationEvent:(void *)a1 .cold.4(void *a1, uint64_t a2)
{
  v3 = [a1 bundleIdentifier];
  v4 = DBDescriptionForLaunchSource(a2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)_handleOpenApplicationEvent:(void *)a1 .cold.5(void *a1)
{
  v1 = [a1 bundleIdentifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_updateWallpaperWithAnimationDuration:delay:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_supportsDisplayingPunchthroughWithIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_presentPunchthroughWithIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_handleSiriPrewarmWithTimestamp:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 lockOutController];
  v2 = DBDescriptionForLockOutMode([v1 lockOutMode]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)_handleSiriButtonDownWithTimestamp:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 lockOutController];
  v2 = DBDescriptionForLockOutMode([v1 lockOutMode]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)_handleSiriButtonUpWithTimestamp:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 lockOutController];
  v2 = DBDescriptionForLockOutMode([v1 lockOutMode]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)session:isPlayingVideoFromApp:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __33__DBDashboard__handleSessionURL___block_invoke_676_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&dword_248146000, a2, OS_LOG_TYPE_DEBUG, "Couldn't resolve a URL request for %{public}@ to a bundle identifier.", &v3, 0xCu);
}

- (void)environmentConfiguration:appearancePreferenceDidChange:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __43__DBDashboard__setDidFinishWelcomeIfNeeded__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end