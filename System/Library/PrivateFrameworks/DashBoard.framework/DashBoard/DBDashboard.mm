@interface DBDashboard
+ (id)_stateChangeApplications;
- (BOOL)_isDockScene:(id)a3;
- (BOOL)_isPunchThroughPresented;
- (BOOL)_supportsDisplayingPunchthroughWithIdentifier:(id)a3;
- (BOOL)handleACHomeUp:(unint64_t)a3;
- (BOOL)hasActiveCall;
- (BOOL)shouldDisableFiveRowKeyboards;
- (BSAnimationSettings)alwaysDarkAnimationSettings;
- (CGRect)_rectForFocusedRectDictionary:(id)a3;
- (CGRect)sceneFrameForApplication:(id)a3;
- (CGRect)sceneFrameForApplication:(id)a3 proxyApplication:(id)a4;
- (CRSIconLayoutVehicleDataProviding)iconLayoutDataProvider;
- (CRSUIStatusBarStyleAssertion)alwaysDarkStatusBarStyleAssertion;
- (CRSWidgetLayoutVehicleDataProviding)widgetLayoutDataProvider;
- (DBDashboard)initWithRootScene:(id)a3 environmentConfiguration:(id)a4 defaultSceneWorkspaceIdentifier:(id)a5;
- (DBScreenshotManager)screenshotManager;
- (FBSDisplayConfiguration)displayConfiguration;
- (FBSDisplayIdentity)displayIdentity;
- (FBScene)siriScene;
- (UIEdgeInsets)safeAreaInsetsForApplication:(id)a3;
- (UIEdgeInsets)safeAreaInsetsForApplication:(id)a3 proxyApplication:(id)a4;
- (UIEdgeInsets)statusBarInsets;
- (id)_diagnosticsActiveBundleIdentifier;
- (id)_homeScreenStyleTraitOverrides;
- (id)_newResizeAnimationWindow;
- (id)_nowRecordingBundleIdentifier;
- (id)_takeSnapshotOfFrame:(CGRect)a3;
- (id)focusWindow;
- (id)scene:(id)a3 handleActions:(id)a4;
- (id)sceneIdentifierForApplication:(id)a3;
- (id)wallpaperViewForLockOutController:(id)a3;
- (int64_t)_sceneInterfaceStyleForScene:(id)a3;
- (int64_t)sceneInterfaceStyleForApplication:(id)a3 proxyApplication:(id)a4;
- (int64_t)sceneMapInterfaceStyleForApplication:(id)a3 proxyApplication:(id)a4;
- (unint64_t)_adjustedHeadingForHorizontalClimateOverlay:(unint64_t)a3;
- (unint64_t)_adjustedHeadingForVerticalClimateOverlay:(unint64_t)a3 direction:(unint64_t)a4;
- (unint64_t)_directionWithHorizontalClimateOverlayWithHeading:(unint64_t)a3 isClimateOverlaySceneHidden:(BOOL)a4 isClimateScene:(BOOL)a5 isDockScene:(BOOL)a6 action:(id)a7;
- (unint64_t)_directionWithVerticalClimateOverlayWithHeading:(unint64_t)a3 isClimateOverlaySceneHidden:(BOOL)a4 isClimateScene:(BOOL)a5 isDockScene:(BOOL)a6 action:(id)a7;
- (void)_animateClearLockoutWindow;
- (void)_animateStartupFromScaledMainWindow;
- (void)_animateStartupToHomeScreen;
- (void)_animateStartupToIcons;
- (void)_attemptFocusTransferForAction:(id)a3 fromScene:(id)a4 heading:(unint64_t)a5;
- (void)_backLongPressed:(id)a3;
- (void)_collectMemgraphsForTapToRadarWithCompletion:(id)a3;
- (void)_dismissFloatingSiriIfNecessary;
- (void)_dismissPunchthroughWithIdentifier:(id)a3;
- (void)_displayRecordingAlert;
- (void)_dropDockFocusAssertionForAction:(id)a3;
- (void)_focusStatusUpdated:(id)a3;
- (void)_goToPageContainingBundleIdentifier:(id)a3 completion:(id)a4;
- (void)_handleAppSchemeURL:(id)a3 activationSettings:(id)a4;
- (void)_handleAutoSettingsURL:(id)a3;
- (void)_handleBackgroundURLDeliveryForLaunchInfo:(id)a3;
- (void)_handleCarPlayUIReady;
- (void)_handleHomeEvent:(id)a3;
- (void)_handleInputStreamURL:(id)a3;
- (void)_handleInterruptPunchthroughEvent:(id)a3;
- (void)_handleOEMNotificationURL:(id)a3;
- (void)_handleOpenApplicationEvent:(id)a3;
- (void)_handleReturnToHomeScreenEvent:(id)a3;
- (void)_handleSessionURL:(id)a3;
- (void)_handleSiriButtonDownWithTimestamp:(double)a3;
- (void)_handleSiriButtonUpWithTimestamp:(double)a3;
- (void)_handleSiriPrewarmWithTimestamp:(double)a3;
- (void)_handleSmartStackConfigurationEvent:(id)a3;
- (void)_handleTapToRadarEvent;
- (void)_homeTapped:(id)a3;
- (void)_initializeWallpaper;
- (void)_launchAppWithInfo:(id)a3 forURL:(id)a4;
- (void)_notifyAccessoryIfNeededWithUIContext:(id)a3;
- (void)_notifyClimateOverlayPunchthroughIsPresented:(BOOL)a3;
- (void)_presentPrivacyDisclosureAlertForApplication:(id)a3;
- (void)_presentPunchthroughWithIdentifier:(id)a3;
- (void)_publishInitialFocusState;
- (void)_screenDidBecomeAvailable:(id)a3;
- (void)_screenDidBecomeUnavailable:(id)a3;
- (void)_setDidFinishWelcomeIfNeeded;
- (void)_setInitialFocusOwner;
- (void)_setupCameraOverlayController;
- (void)_setupClimateOverlayControllerIfNeeded;
- (void)_setupDNDStateService;
- (void)_setupDock;
- (void)_setupVoiceControlOverlayController;
- (void)_takeClimateFocusAssertionForAction:(id)a3 heading:(unint64_t)a4;
- (void)_takeDockFocusAssertionForAction:(id)a3;
- (void)_takeDockFocusAssertionForAction:(id)a3 heading:(unint64_t)a4;
- (void)_updateAppScenesViewArea;
- (void)_updateAudioNotificationBlocker;
- (void)_updateCornerRadiusVisibility;
- (void)_updatePasscodeLockToken;
- (void)_updateTraitOverridesForTraitOverrides:(id)a3 withHomeScreenStyleData:(id)a4 userInterfaceStyle:(int64_t)a5;
- (void)_updateTraitOverridesWithWallpaperTraits:(id)a3;
- (void)_updateUserInterfaceStyle;
- (void)_updateWallpaperWithAnimationDuration:(double)a3 delay:(double)a4;
- (void)_updateWindowFrames;
- (void)alertServer:(id)a3 wantsAppDismissalForAlert:(id)a4 bundleID:(id)a5;
- (void)alertServer:(id)a3 wantsAppPresentationForAlert:(id)a4 bundleID:(id)a5;
- (void)alertServer:(id)a3 wantsSystemDismissalForViewController:(id)a4;
- (void)alertServer:(id)a3 wantsSystemPresentationForViewController:(id)a4;
- (void)carManager:(id)a3 didUpdateAccessories:(id)a4;
- (void)carManager:(id)a3 didUpdateCar:(id)a4;
- (void)client:(int64_t)a3 didUpdateElements:(id)a4;
- (void)dealloc;
- (void)didDismissAlertingLiveActivityWithActivityIdentifier:(id)a3;
- (void)didDismissLiveActivityWithActivityIdentifier:(id)a3;
- (void)didDismissPresentable:(id)a3 forNotificationViewController:(id)a4;
- (void)didUpdateAlertingLiveActivityWithActivityDescriptor:(id)a3;
- (void)environmentConfiguration:(double)a3 viewAreaDidChangeFromViewAreaFrame:(double)a4 safeAreaInsets:(double)a5 toViewAreaFrame:(double)a6 safeAreaInsets:(double)a7 duration:(double)a8 transitionControlType:(double)a9;
- (void)environmentConfiguration:(id)a3 appearancePreferenceDidChange:(int64_t)a4;
- (void)environmentConfiguration:(id)a3 appearanceStyleDidChange:(int64_t)a4;
- (void)environmentConfiguration:(id)a3 canvasOverrideSizeDidChange:(CGSize)a4;
- (void)environmentConfiguration:(id)a3 homeScreenStyleDidChange:(id)a4;
- (void)environmentConfiguration:(id)a3 nightModeDidChange:(BOOL)a4;
- (void)handleAllAssetsForegrounded;
- (void)handleConnect;
- (void)handleEvent:(id)a3;
- (void)handleFocusMovementAction:(id)a3 fromScene:(id)a4;
- (void)handleLongBackPress;
- (void)handleMainAssetForegrounded;
- (void)inCallAssertionService:(id)a3 didSetBannersEnabled:(BOOL)a4;
- (void)inCallAssertionServiceDidDismiss:(id)a3;
- (void)inCallAssertionServiceDidPresent:(id)a3;
- (void)invalidate;
- (void)lockOutController:(id)a3 didChangeFromLockoutMode:(int64_t)a4 toLockOutMode:(int64_t)a5 animated:(BOOL)a6 takeScreen:(BOOL)a7;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)presentSmartStackConfiguratorWithConfiguration:(id)a3;
- (void)runLaunchTestForApplication:(id)a3;
- (void)session:(id)a3 handleSiriRequestEvent:(int64_t)a4 withPayload:(id)a5;
- (void)session:(id)a3 isPlayingVideoFromApp:(id)a4;
- (void)session:(id)a3 openURL:(id)a4;
- (void)session:(id)a3 receivedUnhandledRemoteEvent:(id)a4 withPayload:(id)a5;
- (void)setAlertFocusAssertion:(id)a3;
- (void)setAlwaysDarkInterfaceActive:(BOOL)a3;
- (void)setClimateFocusAssertion:(id)a3;
- (void)setHomeFocusAssertion:(id)a3;
- (void)setLockOutFocusAssertion:(id)a3;
- (void)setNotificationFocusAssertion:(id)a3;
- (void)setOEMFocusAssertion:(id)a3;
- (void)stateService:(id)a3 didReceiveDoNotDisturbStateUpdate:(id)a4;
- (void)volumeNotificationServiceUpdated:(id)a3;
- (void)willPresentPresentable:(id)a3 forNotificationViewController:(id)a4;
- (void)willUpdateThemeData:(id)a3 withDuration:(double)a4 delay:(double)a5;
- (void)workspace:(id)a3 stateDidChangeFromState:(id)a4 toState:(id)a5;
@end

@implementation DBDashboard

- (void)_updateCornerRadiusVisibility
{
  v3 = [(DBScreenController *)self environmentConfiguration];
  v4 = [v3 currentViewAreaSupportsUIOutsideSafeArea];

  v5 = [(DBScreenController *)self cornerRadiusWindow];
  v6 = v5;
  if (v4)
  {
    [v5 setHidden:1];

    v7 = [(DBDashboard *)self dockController];
    [(DBDashboard *)self currentCornerRadius];
    [v7 setCornerRadius:?];

    v13 = [(DBDashboard *)self notificationWindow];
    v8 = [v13 layer];
    [(DBDashboard *)self currentCornerRadius];
    v10 = v8;
  }

  else
  {
    v11 = [(DBScreenController *)self screenInfo];
    [v6 setHidden:{objc_msgSend(v11, "wantsCornerMasks")}];

    v12 = [(DBDashboard *)self dockController];
    [v12 setCornerRadius:0.0];

    v13 = [(DBDashboard *)self notificationWindow];
    v10 = [v13 layer];
    v8 = v10;
    v9 = 0.0;
  }

  [v10 setCornerRadius:v9];
}

- (void)_updateAudioNotificationBlocker
{
  v3 = [(DBDashboard *)self workspace];
  v4 = [v3 state];
  v8 = [v4 activeBundleIdentifier];

  v5 = [(DBDashboard *)self volumeNotificationService];
  v6 = [v5 isNotificationBlockedForBundleIdentifier:v8];

  v7 = [(DBDashboard *)self audioNotificationManager];
  [v7 setShouldSuspendNotification:v6];
}

- (id)focusWindow
{
  v2 = [(DBDashboard *)self focusController];
  v3 = [v2 focusWindow];

  return v3;
}

- (FBSDisplayConfiguration)displayConfiguration
{
  v2 = [(DBScreenController *)self environmentConfiguration];
  v3 = [v2 displayConfiguration];

  return v3;
}

- (UIEdgeInsets)statusBarInsets
{
  v2 = [(DBDashboard *)self layoutEngine];
  [v2 statusBarInsets];
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
  v2 = [(DBDashboard *)self displayConfiguration];
  v3 = [v2 identity];

  return v3;
}

- (BOOL)shouldDisableFiveRowKeyboards
{
  v3 = [(DBScreenController *)self environmentConfiguration];
  v4 = [v3 session];
  v5 = [v4 configuration];
  v6 = [v5 screens];
  v7 = [v6 firstObject];
  [v7 physicalSize];
  v9 = v8;
  v11 = v10;

  v12 = [(DBScreenController *)self environmentConfiguration];
  v13 = [v12 displayConfiguration];
  [v13 pixelSize];
  v15 = v14;
  v17 = v16;

  v18 = [(DBScreenController *)self environmentConfiguration];
  [v18 screenScale];
  v20 = v19;

  return DBFiveRowKeyboardKeySizeTooSmall(v9, v11, v15, v17, v20);
}

- (DBDashboard)initWithRootScene:(id)a3 environmentConfiguration:(id)a4 defaultSceneWorkspaceIdentifier:(id)a5
{
  v143[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v135.receiver = self;
  v135.super_class = DBDashboard;
  v132 = v8;
  v10 = [(DBScreenController *)&v135 initWithRootScene:v8 environmentConfiguration:v9 defaultSceneWorkspaceIdentifier:a5];
  if (v10)
  {
    v11 = [[DBSplashScreenAlert alloc] initWithEnvironmentConfiguration:v9];
    splashScreenAlert = v10->_splashScreenAlert;
    v10->_splashScreenAlert = v11;

    v13 = [v9 displayConfiguration];
    [v9 addObserver:v10];
    v14 = [[DBDashboardLayoutEngine alloc] initWithEnvironmentConfiguration:v9];
    layoutEngine = v10->_layoutEngine;
    v10->_layoutEngine = v14;

    v131 = [v9 session];
    [v131 addObserver:v10];
    v10->_lock._os_unfair_lock_opaque = 0;
    v133 = v13;
    v16 = [v13 hardwareIdentifier];
    v130 = v16;
    if (v16)
    {
      v17 = MEMORY[0x277CBEB98];
      v18 = [MEMORY[0x277CF0698] displayWithHardwareIdentifier:v16];
      v19 = [v17 setWithObject:v18];

      v124 = [MEMORY[0x277CF0750] defaultSystemPredicate];
      [v124 setDisplays:v19];
      v20 = MEMORY[0x277CF0688];
      v21 = [MEMORY[0x277CF0690] systemTarget];
      v128 = [v20 ruleForDispatchingDiscreteEventsMatchingPredicate:v124 toTarget:v21];

      v123 = [MEMORY[0x277CF0750] defaultFocusPredicate];
      [v123 setDisplays:v19];
      v22 = MEMORY[0x277CF0688];
      v23 = [MEMORY[0x277CF0690] keyboardFocusTarget];
      v129 = [v22 ruleForDispatchingDiscreteEventsMatchingPredicate:v123 toTarget:v23];

      v24 = objc_alloc_init(MEMORY[0x277CF0750]);
      v25 = MEMORY[0x277CBEB98];
      v26 = [MEMORY[0x277CF0680] descriptorWithEventType:17];
      v122 = [v25 setWithObject:v26];

      [v24 setDescriptors:v122];
      v121 = v24;
      [v24 setDisplays:v19];
      v27 = MEMORY[0x277CF0688];
      v28 = [MEMORY[0x277CF0690] systemTarget];
      v127 = [v27 ruleForDispatchingDiscreteEventsMatchingPredicate:v24 toTarget:v28];

      v29 = objc_alloc_init(MEMORY[0x277CF0750]);
      v30 = MEMORY[0x277CBEB98];
      v31 = [MEMORY[0x277CF06B8] descriptorWithPage:12 usage:548];
      v120 = [v30 setWithObject:v31];

      [v29 setDescriptors:v120];
      v119 = v29;
      [v29 setDisplays:v19];
      v32 = MEMORY[0x277CF0688];
      v33 = [MEMORY[0x277CF0690] systemTarget];
      v126 = [v32 ruleForDispatchingDiscreteEventsMatchingPredicate:v29 toTarget:v33];

      v34 = objc_alloc_init(MEMORY[0x277CF0750]);
      v35 = MEMORY[0x277CBEB98];
      v36 = [MEMORY[0x277CF06B8] descriptorWithPage:12 usage:547];
      v118 = [v35 setWithObject:v36];

      [v34 setDescriptors:v118];
      v116 = v19;
      v117 = v34;
      [v34 setDisplays:v19];
      v37 = MEMORY[0x277CF0688];
      v38 = [MEMORY[0x277CF0690] systemTarget];
      v125 = [v37 ruleForDispatchingDiscreteEventsMatchingPredicate:v34 toTarget:v38];

      v39 = objc_alloc_init(MEMORY[0x277CF0750]);
      v40 = MEMORY[0x277CBEB98];
      v41 = [MEMORY[0x277CF06B8] descriptorWithPage:11 usage:38];
      v115 = [v40 setWithObject:v41];

      [v39 setDescriptors:v115];
      v114 = v39;
      [v39 setDisplays:v19];
      v42 = MEMORY[0x277CF0688];
      v43 = [MEMORY[0x277CF0690] systemTarget];
      v110 = [v42 ruleForDispatchingDiscreteEventsMatchingPredicate:v39 toTarget:v43];

      v44 = objc_alloc_init(MEMORY[0x277CF0750]);
      v45 = MEMORY[0x277CBEB98];
      v46 = [MEMORY[0x277CF06B8] descriptorWithPage:11 usage:46];
      v113 = [v45 setWithObject:v46];

      [v44 setDescriptors:v113];
      v112 = v44;
      [v44 setDisplays:0];
      v47 = MEMORY[0x277CF0688];
      v48 = [MEMORY[0x277CF0690] systemTarget];
      v111 = [v47 ruleForDispatchingDiscreteEventsMatchingPredicate:v44 toTarget:v48];

      v49 = [MEMORY[0x277CF0668] sharedInstance];
      v50 = MEMORY[0x277CCACA8];
      v51 = [v133 identity];
      v52 = [v50 stringWithFormat:@"DashBoard-%@", v51];
      v143[0] = v128;
      v143[1] = v129;
      v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v143 count:2];
      v54 = [v49 dispatchDiscreteEventsForReason:v52 withRules:v53];
      dispatchingAssertion = v10->_dispatchingAssertion;
      v10->_dispatchingAssertion = v54;

      v56 = [MEMORY[0x277CF0668] sharedInstance];
      v57 = MEMORY[0x277CCACA8];
      v58 = [v133 identity];
      v59 = [v57 stringWithFormat:@"DashBoardACSelect-%@", v58];
      v142 = v127;
      v60 = [MEMORY[0x277CBEA60] arrayWithObjects:&v142 count:1];
      v61 = [v56 dispatchDiscreteEventsForReason:v59 withRules:v60];
      dispatchingAssertionACSelect = v10->_dispatchingAssertionACSelect;
      v10->_dispatchingAssertionACSelect = v61;

      v63 = [MEMORY[0x277CF0668] sharedInstance];
      v64 = MEMORY[0x277CCACA8];
      v65 = [v133 identity];
      v66 = [v64 stringWithFormat:@"DashBoardACBack-%@", v65];
      v141 = v126;
      v67 = [MEMORY[0x277CBEA60] arrayWithObjects:&v141 count:1];
      v68 = [v63 dispatchDiscreteEventsForReason:v66 withRules:v67];
      dispatchingAssertionACBack = v10->_dispatchingAssertionACBack;
      v10->_dispatchingAssertionACBack = v68;

      v70 = [MEMORY[0x277CF0668] sharedInstance];
      v71 = MEMORY[0x277CCACA8];
      v72 = [v133 identity];
      v73 = [v71 stringWithFormat:@"DashBoardACHome-%@", v72];
      v140 = v125;
      v74 = [MEMORY[0x277CBEA60] arrayWithObjects:&v140 count:1];
      v75 = [v70 dispatchDiscreteEventsForReason:v73 withRules:v74];
      dispatchingAssertionACHome = v10->_dispatchingAssertionACHome;
      v10->_dispatchingAssertionACHome = v75;

      v77 = [MEMORY[0x277CF0668] sharedInstance];
      v78 = MEMORY[0x277CCACA8];
      v79 = [v133 identity];
      v80 = [v78 stringWithFormat:@"DashBoardTelephonyDrop-%@", v79];
      v139 = v110;
      v81 = [MEMORY[0x277CBEA60] arrayWithObjects:&v139 count:1];
      v82 = [v77 dispatchDiscreteEventsForReason:v80 withRules:v81];
      dispatchingAssertionTelephonyDrop = v10->_dispatchingAssertionTelephonyDrop;
      v10->_dispatchingAssertionTelephonyDrop = v82;

      v84 = [MEMORY[0x277CF0668] sharedInstance];
      v85 = MEMORY[0x277CCACA8];
      v86 = [v133 identity];
      v87 = [v85 stringWithFormat:@"DashBoardRinger-%@", v86];
      v138 = v111;
      v88 = [MEMORY[0x277CBEA60] arrayWithObjects:&v138 count:1];
      v89 = [v84 dispatchDiscreteEventsForReason:v87 withRules:v88];
      dispatchingAssertionRinger = v10->_dispatchingAssertionRinger;
      v10->_dispatchingAssertionRinger = v89;

      v91 = [DBFocusController alloc];
      v92 = [(DBScreenController *)v10 environmentConfiguration];
      v93 = [(DBFocusController *)v91 initWithEnvironmentConfiguration:v92 rootScene:v132];
      focusController = v10->_focusController;
      v10->_focusController = v93;

      v95 = [[DBFocusMovementManager alloc] initWithEnvironmentConfiguration:v9];
      focusMovementManager = v10->_focusMovementManager;
      v10->_focusMovementManager = v95;

      v97 = v116;
    }

    else
    {
      v134 = v13;
      v98 = BSLogAddStateCaptureBlockWithTitle();
      v99 = DBLogForCategory(8uLL);
      if (os_log_type_enabled(v99, OS_LOG_TYPE_FAULT))
      {
        [DBDashboard initWithRootScene:environmentConfiguration:defaultSceneWorkspaceIdentifier:];
      }

      v97 = v134;
    }

    v10->_siriPrewarmTimestamp = -1.0;
    v100 = [v9 wallpaperPreferences];
    v101 = [v9 session];
    v102 = [v101 configuration];
    [v100 updateHasGaugeClusterScreen:{objc_msgSend(v102, "hasGaugeClusterScreen")}];

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
  v6 = [(DBScreenController *)self environmentConfiguration];
  v7 = [v6 analytics];
  [(DBDashboardStateProvider *)v5 addObserver:v7];

  [(DBDashboard *)self _setupDNDStateService];
  v8 = [[DBSceneWorkspace alloc] initWithIdentifier:@"com.apple.DashBoard.scene-workspace.local"];
  localSceneWorkspace = self->_localSceneWorkspace;
  self->_localSceneWorkspace = v8;

  v10 = [[DBSceneWorkspace alloc] initWithIdentifier:@"com.apple.DashBoard.scene-workspace.overlay"];
  overlaySceneWorkspace = self->_overlaySceneWorkspace;
  self->_overlaySceneWorkspace = v10;

  v12 = [(DBScreenController *)self environmentConfiguration];
  v13 = [v12 resolvedUserInterfaceStyle];

  v14 = [(DBScreenController *)self windowScene];
  v15 = [v14 traitOverrides];
  [v15 setNSIntegerValue:v13 forTrait:objc_opt_class()];

  v16 = [(DBScreenController *)self environmentConfiguration];
  v17 = [v16 liveActivityMonitor];
  [v17 addObserver:self];

  v18 = [(DBScreenController *)self environmentConfiguration];
  v19 = [v18 appHistory];
  v20 = [(DBScreenController *)self environmentConfiguration];
  v21 = [v20 navigationStateProvider];
  [v19 addObserver:v21];

  v22 = [(DBScreenController *)self environmentConfiguration];
  v23 = [v22 navigationStateProvider];
  v24 = [(DBScreenController *)self environmentConfiguration];
  v25 = [v24 appHistory];
  [v23 setAppHistoryAppDockProvider:v25];

  [(DBDashboard *)self _updatePasscodeLockToken];
  v26 = [(DBScreenController *)self environmentConfiguration];
  LODWORD(v23) = [v26 supportsGaugeCluster];

  v214 = v23;
  if (v23)
  {
    v27 = [(DBScreenController *)self displayInfo];
    if (![(DBUISyncSession *)v27 supportsDDPContent])
    {
LABEL_5:

      goto LABEL_6;
    }

    v28 = [(DBScreenController *)self environmentConfiguration];
    v29 = [v28 uisyncChannel];

    if (v29)
    {
      v30 = [_TtC9DashBoard15DBUISyncSession alloc];
      v31 = [(DBScreenController *)self environmentConfiguration];
      v32 = [v31 uisyncChannel];
      v33 = [(DBScreenController *)self environmentConfiguration];
      v34 = [v33 vehicleID];
      v35 = [(DBScreenController *)self displayInfo];
      v36 = [v35 identifier];
      v27 = [(DBUISyncSession *)v30 initWithChannel:v32 vehicleID:v34 displayID:v36];

      v37 = [[_TtC9DashBoard30DBDefaultUISyncSessionDelegate alloc] initWithUISyncSession:v27];
      [(DBDashboard *)self setUisyncSessionDelegate:v37];

      v38 = [(DBScreenController *)self environmentConfiguration];
      v39 = [v38 uisyncSessionEventDelegate];
      v40 = [(DBDashboard *)self uisyncSessionDelegate];
      [v40 setEventDelegate:v39];

      v41 = [(DBScreenController *)self environmentConfiguration];
      [v41 setUisyncSession:v27];

      goto LABEL_5;
    }
  }

LABEL_6:
  v42 = [(DBScreenController *)self environmentConfiguration];
  v43 = [v42 vehicle];

  if (!v43 || ([v43 finishedWelcome], v44 = objc_claimAutoreleasedReturnValue(), v44, !v44))
  {
    v45 = DBLogForCategory(0);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v45, OS_LOG_TYPE_DEFAULT, "Clear start application bundle ID", buf, 2u);
    }

    v46 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v46 removeObjectForKey:@"CARStartApplicationBundleID"];
  }

  v215 = v43;
  v47 = [(DBScreenController *)self interestingWindow];
  v48 = [(DBDashboard *)self layoutEngine];
  [v48 areaOfInterestFrameForApplication:0];
  [v47 setFrame:?];

  v49 = [_TtC9DashBoard21DBDashboardMainWindow alloc];
  v50 = [(DBScreenController *)self windowScene];
  v51 = [(DBDashboard *)self layoutEngine];
  [v51 mainWindowFrame];
  v52 = [(DBDashboardMainWindow *)v49 initWithWindowScene:v50 frame:?];
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
  v57 = [(DBScreenController *)self windowScene];
  v58 = [(DBDashboard *)self layoutEngine];
  v59 = [(DBDashboardRootViewController *)v56 initWithEnvironment:self windowScene:v57 layoutEngine:v58];

  v60 = [(DBDashboard *)self layoutEngine];
  [v60 rootViewControllerContentInsets];
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
  v69 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v69 addObserver:self forKeyPath:@"CARCornerRadius" options:1 context:0];
  v70 = [v69 objectForKey:@"CARCornerRadius"];

  if (v70)
  {
    [v69 floatForKey:@"CARCornerRadius"];
    self->_currentCornerRadius = v71;
  }

  v213 = v69;
  v72 = [(DBScreenController *)self environmentConfiguration];
  v73 = [v72 currentViewAreaSupportsUIOutsideSafeArea];

  if (v73)
  {
    [(DBDashboardRootViewController *)self->_rootViewController setContentCornerRadius:self->_currentCornerRadius];
  }

  v74 = [(DBScreenController *)self cornerRadiusWindow];
  v75 = [(DBDashboard *)self layoutEngine];
  [v75 cornerRadiusWindowFrame];
  [v74 setFrame:?];

  v76 = [(DBScreenController *)self cornerRadiusWindow];
  [v76 setCornerRadius:self->_currentCornerRadius];

  v77 = [(DBDashboardMainWindow *)self->_mainWindow layer];
  [v77 setCornerCurve:*MEMORY[0x277CDA138]];

  [(DBDashboardMainWindow *)self->_mainWindow setClipsToBounds:1];
  [(DBDashboard *)self _initializeWallpaper];
  v78 = [(DBScreenController *)self environmentConfiguration];
  v79 = [v78 themeController];
  [v79 addObserver:self];

  v80 = objc_alloc_init(DBDashboardWorkspaceStateResolver);
  v81 = [DBDashboardWorkspaceOwner alloc];
  v82 = [(DBScreenController *)self defaultSceneWorkspaceIdentifier];
  v212 = v80;
  v83 = [(DBDashboardWorkspaceOwner *)v81 initWithStateResolver:v80 environment:self sceneWorkspaceIdentifier:v82 rootViewController:v59 siriViewController:self->_siriViewController];
  workspaceOwner = self->_workspaceOwner;
  self->_workspaceOwner = v83;

  v85 = [[DBWorkspace alloc] initWithOwner:self->_workspaceOwner];
  workspace = self->_workspace;
  self->_workspace = v85;

  [(DBDashboardWorkspaceOwner *)self->_workspaceOwner setWorkspace:self->_workspace];
  [(DBDashboardWorkspaceOwner *)self->_workspaceOwner setFocusMovementActionHandler:self];
  v87 = self->_workspace;
  v88 = [(DBScreenController *)self environmentConfiguration];
  v89 = [v88 appHistory];
  [(DBWorkspace *)v87 addObserver:v89];

  [(DBWorkspace *)self->_workspace addObserver:self];
  [(DBDashboard *)self _setupDock];
  [(DBDashboard *)self _updateCornerRadiusVisibility];
  v90 = [(DBDashboard *)self dockController];
  [v90 addDockObserver:self->_rootViewController];

  v91 = self->_siriViewController;
  v92 = [(DBDashboard *)self dockController];
  [(DBSiriViewController *)v91 setIntentDelegate:v92];

  v93 = [(DBDashboardRootViewController *)v59 homeViewController];
  v94 = [(DBDashboard *)self dockController];
  [v93 addPageChangeObserver:v94];

  v95 = [(DBDashboard *)self dockController];
  [(DBDashboardRootViewController *)v59 addViewStateObserver:v95];

  v96 = [(DBDashboardRootViewController *)v59 homeViewController];
  [v96 addPageChangeObserver:self->_dashboardStateProvider];

  v97 = self->_workspace;
  v98 = [(DBDashboardRootViewController *)v59 homeViewController];
  [(DBWorkspace *)v97 addObserver:v98];

  v99 = [DBLockOutController alloc];
  v100 = [(DBScreenController *)self windowScene];
  v101 = [(DBScreenController *)self environmentConfiguration];
  v102 = [(DBLockOutController *)v99 initWithWindowScene:v100 environmentConfiguration:v101 dashboardStateProvider:self->_dashboardStateProvider delegate:self];
  lockOutController = self->_lockOutController;
  self->_lockOutController = v102;

  v104 = [_TtC9DashBoard20DBNotificationWindow alloc];
  v105 = [(DBScreenController *)self windowScene];
  v106 = [(DBDashboard *)self layoutEngine];
  [v106 notificationWindowFrame];
  v107 = [(DBNotificationWindow *)v104 initWithWindowScene:v105 frame:?];
  notificationWindow = self->_notificationWindow;
  self->_notificationWindow = v107;

  v109 = [(DBNotificationWindow *)self->_notificationWindow layer];
  [v109 setMasksToBounds:1];

  [(DBDashboard *)self _setupVoiceControlOverlayController];
  v110 = [DBNotificationViewController alloc];
  v111 = [(DBDashboard *)self layoutEngine];
  v112 = [(DBNotificationViewController *)v110 initWithEnvironment:self layoutEngine:v111 delegate:self];
  notificationViewController = self->_notificationViewController;
  self->_notificationViewController = v112;

  [(DBNotificationWindow *)self->_notificationWindow setRootViewController:self->_notificationViewController];
  [(DBDashboardWorkspaceOwner *)self->_workspaceOwner setNotificationSuspender:self->_notificationViewController];
  v114 = [(DBScreenController *)self environmentConfiguration];
  v115 = [v114 systemUILayout];

  if (v115)
  {
    v116 = [(DBScreenController *)self environmentConfiguration];
    v117 = [v116 systemUILayout];

    if ([v117 hasSecondaryContent])
    {
      [v117 secondaryContentFrame];
      if (!CGRectEqualToRect(v220, *MEMORY[0x277CBF3A0]))
      {
        [v117 secondaryContentFrame];
        v119 = v118;
        v121 = v120;
        v123 = v122;
        v125 = v124;
        v126 = [_TtC9DashBoard26DBDynamicContentController alloc];
        v127 = [(DBScreenController *)self windowScene];
        v128 = [(DBDashboard *)self layoutEngine];
        v129 = [(DBDynamicContentController *)v126 initWithWindowScene:v127 windowFrame:v128 layoutEngine:self environment:v119, v121, v123, v125];
        dynamicContentController = self->_dynamicContentController;
        self->_dynamicContentController = v129;

        [(DBDynamicContentController *)self->_dynamicContentController setCornerRadius:self->_currentCornerRadius];
      }
    }

    v131 = [(DBScreenController *)self environmentConfiguration];
    v132 = [v131 systemUILayout];
    v133 = [v132 persistentElements];

    if (v133)
    {
      v134 = objc_alloc_init(_TtC9DashBoard27DBPersistentElementsManager);
      persistentElementsManager = self->_persistentElementsManager;
      self->_persistentElementsManager = v134;

      v136 = [(DBDashboard *)self persistentElementsManager];
      [v136 setDelegate:self];

      v137 = [(DBDashboard *)self persistentElementsManager];
      v138 = [(DBScreenController *)self environmentConfiguration];
      v139 = [v138 systemUILayout];
      v140 = [v139 persistentElements];
      [v137 updateWithPersistentElements:v140];

      v141 = [(DBDashboard *)self dockController];
      v142 = [(DBDashboard *)self persistentElementsManager];
      [v141 setPersistentElementsManager:v142];
    }
  }

  [(DBDashboard *)self _setInitialFocusOwner];
  v143 = [(DBScreenController *)self environmentConfiguration];
  v144 = [v143 session];

  v145 = [(DBScreenController *)self environmentConfiguration];
  v146 = [v145 appHistory];
  v147 = [(DBScreenController *)self environmentConfiguration];
  [v146 _sessionDidConnect:v144 environmentConfiguration:v147];

  v148 = [DBNowPlayingObserver alloc];
  v149 = [(DBScreenController *)self environmentConfiguration];
  v150 = [(DBNowPlayingObserver *)v148 initWithEnvironmentConfiguration:v149];
  nowPlayingObserver = self->_nowPlayingObserver;
  self->_nowPlayingObserver = v150;

  [(DBNotificationWindow *)self->_notificationWindow setHidden:0];
  v152 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__homeTapped_];
  [v152 setAllowedPressTypes:&unk_285AA48F8];
  v153 = [MEMORY[0x277D76330] sharedInstance];
  v154 = [(DBDashboard *)self displayConfiguration];
  v155 = [v154 identity];
  v211 = v152;
  [v153 addGestureRecognizer:v152 toDisplayWithIdentity:v155];

  v156 = [[_DBLongPressGestureRecognizer alloc] initWithTarget:self action:sel__backLongPressed_];
  [(_DBLongPressGestureRecognizer *)v156 setAllowedPressTypes:&unk_285AA4910];
  v157 = [MEMORY[0x277D76330] sharedInstance];
  v158 = [(DBDashboard *)self displayConfiguration];
  v159 = [v158 identity];
  [v157 addGestureRecognizer:v156 toDisplayWithIdentity:v159];

  v160 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__pointerSelectionPressed_];
  [v160 setAllowedPressTypes:&unk_285AA4928];
  v161 = [MEMORY[0x277D76330] sharedInstance];
  v162 = [(DBDashboard *)self displayConfiguration];
  v163 = [v162 identity];
  [v161 addGestureRecognizer:v160 toDisplayWithIdentity:v163];

  v164 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__acBackPressed_];
  [v164 setAllowedPressTypes:&unk_285AA4940];
  v165 = [MEMORY[0x277D76330] sharedInstance];
  v166 = [(DBDashboard *)self displayConfiguration];
  v167 = [v166 identity];
  [v165 addGestureRecognizer:v164 toDisplayWithIdentity:v167];

  v168 = [MEMORY[0x277CF9020] sharedInstance];
  [v168 addObserver:self notifyIfNeeded:1];

  v169 = [DBUserAlertServer alloc];
  [(DBDashboard *)self statusBarInsets];
  v171 = v170;
  v173 = v172;
  v175 = v174;
  v177 = v176;
  v178 = [(DBScreenController *)self environmentConfiguration];
  v179 = [(DBUserAlertServer *)v169 initWithSafeAreaInsets:v178 environmentConfiguration:v171, v173, v175, v177];
  userAlertServer = self->_userAlertServer;
  self->_userAlertServer = v179;

  v181 = [(DBDashboard *)self userAlertServer];
  [v181 setSystemPresenter:self];

  v182 = [(DBDashboard *)self userAlertServer];
  [v182 setAppPresenter:self];

  v183 = [(DBDashboard *)self userAlertServer];
  v184 = [(DBDashboard *)self workspaceOwner];
  [v184 setUserAlertServer:v183];

  if (v214)
  {
    v185 = [(DBScreenController *)self displayInfo];
    v186 = [v185 supportsDDPContent];

    if (v186)
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
  v195 = [(DBScreenController *)self environmentConfiguration];
  v196 = [v195 wallpaperPreferences];
  v197 = [v196 currentWallpaper];
  v198 = [v197 traits];
  [(DBDashboard *)self _updateTraitOverridesWithWallpaperTraits:v198];

  v199 = [(DBDashboard *)self dockController];
  [v199 updateAppearanceForWallpaper];

  kdebug_trace();
  v200 = [(DBScreenController *)self environmentConfiguration];
  LODWORD(v195) = [v200 isVehicleDataSession];

  if (v195)
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
  v207 = [MEMORY[0x277CCAB98] defaultCenter];
  [v207 addObserver:self selector:sel__updateWallpaper name:*MEMORY[0x277CF91E8] object:0];

  v208 = [MEMORY[0x277CCAB98] defaultCenter];
  [v208 addObserver:self selector:sel__screenDidBecomeUnavailable_ name:*MEMORY[0x277CF8948] object:v144];

  v209 = [MEMORY[0x277CCAB98] defaultCenter];
  [v209 addObserver:self selector:sel__screenDidBecomeAvailable_ name:*MEMORY[0x277CF8940] object:v144];

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
  v3 = [(DBDashboard *)self preventPasscodeLockToken];

  if (v3)
  {
    v4 = DBLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [DBDashboard dealloc];
    }

    v5 = [(DBDashboard *)self preventPasscodeLockToken];
    [v5 invalidate];
  }

  v6 = [(DBDashboard *)self preventSpuriousScreenUndimToken];

  if (v6)
  {
    v7 = DBLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [DBDashboard dealloc];
    }

    v8 = [(DBDashboard *)self preventSpuriousScreenUndimToken];
    [v8 invalidate];
  }

  v9 = [(DBDashboard *)self oemScreenLayoutElementAssertion];

  if (v9)
  {
    v10 = DBLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [DBDashboard dealloc];
    }

    v11 = [(DBDashboard *)self oemScreenLayoutElementAssertion];
    [v11 invalidate];
  }

  v12.receiver = self;
  v12.super_class = DBDashboard;
  [(DBDashboard *)&v12 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:@"CARCornerRadius"])
  {
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];

    [v13 floatValue];
    self->_currentCornerRadius = v14;

    v15 = [(DBScreenController *)self cornerRadiusWindow];
    [v15 setCornerRadius:self->_currentCornerRadius];

    [(DBDashboard *)self _updateCornerRadiusVisibility];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = DBDashboard;
    [(DBDashboard *)&v16 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (BOOL)handleACHomeUp:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
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
  v2 = [(DBDashboard *)self lockOutController];
  [v2 handleMainAssetForegrounded];
}

- (void)handleAllAssetsForegrounded
{
  v2 = [(DBDashboard *)self lockOutController];
  [v2 handleAllAssetsForegrounded];
}

- (void)_setupDNDStateService
{
  v3 = [(DBDashboard *)self dndStateService];

  if (!v3)
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

- (void)_focusStatusUpdated:(id)a3
{
  dockController = self->_dockController;
  v5 = a3;
  [(DBDockController *)dockController focusStatusUpdatedWithState:v5];
  v6 = [v5 activeModeIdentifier];

  v7 = DBLogForCategory(5uLL);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
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

  [(DBDashboard *)self setDndActive:v6 != 0];
}

- (void)stateService:(id)a3 didReceiveDoNotDisturbStateUpdate:(id)a4
{
  v5 = [a4 state];
  [(DBDashboard *)self _focusStatusUpdated:v5];
}

- (void)_setupDock
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(DBDashboard *)self displayIdentity];
  v5 = [v3 stringWithFormat:@"Dock-%@", v4];

  v6 = [(DBDashboard *)self localSceneWorkspace];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __25__DBDashboard__setupDock__block_invoke;
  v19[3] = &unk_278F01E30;
  v7 = v5;
  v20 = v7;
  v8 = [v6 createScene:v19];

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
    v10 = [(DBScreenController *)self windowScene];
    v11 = [(DBDashboard *)self layoutEngine];
    v12 = [(DBDashboard *)self rootViewController];
    v13 = [v12 homeViewController];
    v14 = [(DBDockController *)v9 initWithWindowScene:v10 dockLocalScene:v8 layoutEngine:v11 iconProvider:v13 environment:self];
    dockController = self->_dockController;
    self->_dockController = v14;

    v16 = [(DBDashboard *)self dockController];
    [v16 updateLayoutForCurrentViewArea];

    v17 = [(DBDashboard *)self climateOverlayController];
    [v17 updateLayoutForCurrentViewArea];
  }

  else
  {
    v17 = DBLogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
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

- (void)_handleInterruptPunchthroughEvent:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DBDashboard *)self workspace];
  v6 = [v5 state];
  v7 = [v6 stackedEntity];

  v8 = [(DBDashboard *)self workspaceOwner];
  [v8 handleEvent:v4];

  v9 = objc_opt_class();
  if ([v9 isEqual:objc_opt_class()])
  {
    v10 = +[_TtC9DashBoard14DBAssetLibrary shared];
    v11 = [v7 identifier];
    v12 = [v10 shouldUseRequestTemporaryContentWithIdentifier:v11];

    if (v12)
    {
      v13 = DBLogForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v7 identifier];
        v19 = 138543362;
        v20 = v14;
        _os_log_impl(&dword_248146000, v13, OS_LOG_TYPE_DEFAULT, "Set interrupted PT identifier to nil. Using request temporary content for: %{public}@", &v19, 0xCu);
      }

      interruptedPunchthroughIdentifier = self->_interruptedPunchthroughIdentifier;
      self->_interruptedPunchthroughIdentifier = 0;
    }

    else
    {
      v16 = [v7 identifier];
      v17 = self->_interruptedPunchthroughIdentifier;
      self->_interruptedPunchthroughIdentifier = v16;

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

- (void)_handleSmartStackConfigurationEvent:(id)a3
{
  v4 = [a3 context];
  [(DBDashboard *)self presentSmartStackConfiguratorWithConfiguration:v4];
}

- (void)presentSmartStackConfiguratorWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 alertTitle];
  v6 = [v4 alertSubtitle];
  v7 = [MEMORY[0x277D75110] alertControllerWithTitle:v5 message:v6 preferredStyle:0];
  objc_initWeak(&location, self);
  v8 = MEMORY[0x277D750F8];
  v9 = [v4 actionTitle];
  v24 = v5;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __62__DBDashboard_presentSmartStackConfiguratorWithConfiguration___block_invoke;
  v27[3] = &unk_278F02020;
  objc_copyWeak(&v29, &location);
  v10 = v4;
  v28 = v10;
  v11 = [v8 actionWithTitle:v9 style:0 handler:v27];

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
  v16 = [(DBDashboard *)self notificationViewController];
  [v16 setSuspended:1 forReason:@"DBNotificationSuspensionReasonLiveActivityConfigurator"];

  v17 = [(DBDashboard *)self notificationViewController];
  [v17 presentViewController:v7 animated:1 completion:0];

  v18 = [(DBDashboard *)self focusController];
  v19 = [(DBDashboard *)self notificationWindow];
  v20 = [v18 deferFocusToWindow:v19 priority:5 reason:@"notification"];

  [(DBDashboard *)self setNotificationFocusAssertion:v20];
  v21 = MEMORY[0x277D75518];
  v22 = [(DBDashboard *)self notificationWindow];
  v23 = [v21 focusSystemForEnvironment:v22];
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

- (void)_handleHomeEvent:(id)a3
{
  v7 = a3;
  v4 = [(DBDashboard *)self notificationViewController];
  v5 = [v4 handleHomeEvent];

  if ((v5 & 1) == 0)
  {
    v6 = [(DBDashboard *)self workspaceOwner];
    [v6 handleEvent:v7];
  }
}

- (void)_handleReturnToHomeScreenEvent:(id)a3
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

- (void)_handleOpenApplicationEvent:(id)a3
{
  v54[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  v5 = [v4 context];
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 application];
  v8 = [v6 activationSettings];
  v9 = [v6 activationSettings];
  v10 = [v9 launchSource];

  v11 = [v7 appPolicy];
  v12 = +[DBApplicationController sharedInstance];
  v13 = [v12 preflightRequiredForApplication:v7];

  if (v13)
  {
    IsUserInitiated = DBLaunchSourceIsUserInitiated(v10);
    v15 = DBLogForCategory(0);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (IsUserInitiated)
    {
      if (v16)
      {
        [DBDashboard _handleOpenApplicationEvent:v7];
      }

      [(DBDashboard *)self _presentPrivacyDisclosureAlertForApplication:v7];
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
        [(DBDashboard *)v7 _handleOpenApplicationEvent:v10];
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
    v24 = [(DBScreenController *)self environmentConfiguration];
    v25 = [v24 session];
    [v25 takeScreenForClient:@"com.apple.CarPlayApp" reason:@"User activated app"];

    goto LABEL_28;
  }

  if (v7 && [v7 isLockedOrHidden])
  {
    v19 = DBLogForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(DBDashboard *)v7 _handleOpenApplicationEvent:v10];
    }

    v20 = DBLogForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v20, OS_LOG_TYPE_INFO, "Taking screen for ignored open application request", buf, 2u);
    }

    v21 = [(DBScreenController *)self environmentConfiguration];
    v22 = [v21 session];
    [v22 takeScreenForClient:@"com.apple.CarPlayApp" reason:@"User activated app"];
  }

  else if ([v11 launchUsingSiri] && (objc_msgSend(v11, "canDisplayOnCarScreen") & 1) == 0)
  {
    v53[0] = @"__bundleId";
    v32 = [v7 bundleIdentifier];
    v53[1] = @"__supportsCarFullScreen";
    v54[0] = v32;
    v33 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "canDisplayOnCarScreen")}];
    v54[1] = v33;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];

    v35 = [v11 siriActivationOptions];
    v36 = v35;
    if (v35)
    {
      v37 = [v35 mutableCopy];
      [v37 addEntriesFromDictionary:v34];
    }

    else
    {
      v37 = v34;
    }

    v39 = DBLogForCategory(0);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [v7 bundleIdentifier];
      *buf = 138543362;
      v52 = v40;
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
    v43 = [(DBDashboard *)self siriDirectActionSource];
    [v43 activateWithContext:v42];
  }

  else if ([v7 requiresBackgroundURLDelivery])
  {
    [(DBDashboard *)self _handleBackgroundURLDeliveryForLaunchInfo:v6];
  }

  else if (v7)
  {
    v26 = [(DBDashboard *)self rootViewController];
    v47 = [v26 homeViewController];

    if (v10 == 7 && v47 && ([v7 bundleIdentifier], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v47, "isIconVisibleForIdentifier:", v27), v27, (v28 & 1) == 0))
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
      [(DBMutableWorkspaceStateChangeRequest *)v29 activateApplication:v7 withSettings:v8];
      objc_initWeak(buf, self);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __43__DBDashboard__handleOpenApplicationEvent___block_invoke;
      aBlock[3] = &unk_278F02070;
      objc_copyWeak(&v50, buf);
      v30 = v8;
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
        v44 = [(DBScreenController *)self environmentConfiguration];
        v45 = [v44 appHistory];
        [v45 nowPlayingIconTapped];
      }

      v46 = +[DBAppHistory contextForApplicationCategory:](DBAppHistory, "contextForApplicationCategory:", [v11 applicationCategory]);
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

- (void)_handleBackgroundURLDeliveryForLaunchInfo:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = DBLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 application];
    *buf = 138412290;
    v29 = v5;
    _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "Starting background launch for app: %@", buf, 0xCu);
  }

  v6 = [v3 activationSettings];
  v7 = [v6 url];

  v8 = DBLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v29 = v7;
    _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_INFO, "Launch URL: %@", buf, 0xCu);
  }

  v9 = [v3 activationSettings];
  v10 = [v9 actions];

  v11 = DBLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v29 = v10;
    _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_INFO, "Launch actions: %@", buf, 0xCu);
  }

  v12 = MEMORY[0x277D46F60];
  v13 = [v3 application];
  v14 = [v13 info];
  v15 = [v14 applicationIdentity];
  v16 = [v12 identityForLSApplicationIdentity:v15];

  v17 = [objc_alloc(MEMORY[0x277D0AA70]) initWithProcessIdentity:v16 executionContextProvider:&__block_literal_global_466];
  objc_initWeak(buf, v17);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __57__DBDashboard__handleBackgroundURLDeliveryForLaunchInfo___block_invoke_2;
  v22[3] = &unk_278F02108;
  objc_copyWeak(&v27, buf);
  v18 = v7;
  v23 = v18;
  v19 = v3;
  v24 = v19;
  v20 = v10;
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
  v3 = [(DBDashboard *)self siriScene];

  if (v3)
  {
    v4 = @"com.apple.siri";
  }

  else
  {
    v5 = [(DBDashboard *)self workspace];
    v6 = [v5 state];
    v7 = [v6 activeBundleIdentifier];

    if ([v7 isEqualToString:@"com.apple.CarPlay.dashboard"] && (-[DBDashboard dashboardStateProvider](self, "dashboardStateProvider"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "pageType"), v8, v9 != 1))
    {
      v4 = 0;
    }

    else
    {
      v4 = v7;
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
  v5 = [MEMORY[0x277D0AA90] mainIdentity];
  v11[0] = v5;
  v6 = [(DBDashboard *)self displayIdentity];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v4 setWithArray:v7];

  v9 = [(DBDashboard *)self screenshotManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37__DBDashboard__handleTapToRadarEvent__block_invoke;
  v10[3] = &unk_278F021A8;
  v10[4] = self;
  [v9 saveScreenshotsForDisplayIdentifiers:v8 completion:v10];
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

- (void)_collectMemgraphsForTapToRadarWithCompletion:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v29 = a3;
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
            v15 = [MEMORY[0x277CCAA00] defaultManager];
            v35 = 0;
            v9 = [v15 URLForDirectory:99 inDomain:1 appropriateForURL:v14 create:1 error:&v35];
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
            v18 = [MEMORY[0x277CCAA00] defaultManager];
            v34 = 0;
            [v18 createDirectoryAtURL:v8 withIntermediateDirectories:0 attributes:0 error:&v34];
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

          v21 = [v14 lastPathComponent];
          if (v21)
          {
            v22 = v8 == 0;
          }

          else
          {
            v22 = 1;
          }

          if (!v22)
          {
            v23 = [v8 URLByAppendingPathComponent:v21];
            v24 = [MEMORY[0x277CCAA00] defaultManager];
            v33 = 0;
            [v24 copyItemAtURL:v14 toURL:v23 error:&v33];
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

  (v29)[2](v29, v27);
}

- (void)_setupVoiceControlOverlayController
{
  v3 = +[DBApplicationController sharedInstance];
  v4 = [v3 voiceControlApplication];

  if (v4)
  {
    v5 = [(DBDashboard *)self overlaySceneWorkspace];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __50__DBDashboard__setupVoiceControlOverlayController__block_invoke;
    v17 = &unk_278F021D0;
    v18 = self;
    v19 = v4;
    v6 = [v5 createScene:&v14];

    if (v6)
    {
      [(DBDashboard *)self setVoiceControlScene:v6, v14, v15, v16, v17, v18];
      v7 = [_TtC9DashBoard31DBVoiceControlOverlayController alloc];
      v8 = [(DBScreenController *)self windowScene];
      v9 = [(DBDashboard *)self layoutEngine];
      [v9 mainWindowFrame];
      v10 = [(DBVoiceControlOverlayController *)v7 initWithWindowScene:v8 windowFrame:v6 voiceControlScene:self environment:?];
      voiceControlOverlayController = self->_voiceControlOverlayController;
      self->_voiceControlOverlayController = v10;

      v12 = [(DBDashboard *)self dashboardStateProvider];
      [v12 addObserver:self->_voiceControlOverlayController];
    }

    else
    {
      v12 = DBLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
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
  v2 = [(DBDashboard *)self dockController];
  v3 = [v2 isInCallServiceActive];

  return v3;
}

- (id)_newResizeAnimationWindow
{
  v3 = [_TtC9DashBoard14DBResizeWindow alloc];
  v4 = [(DBScreenController *)self windowScene];
  v5 = [(DBDashboard *)self layoutEngine];
  [v5 resizeAnimationWindowFrame];
  v6 = [(DBResizeWindow *)v3 initWithWindowScene:v4 frame:?];

  [(DBResizeWindow *)v6 setHidden:0];
  return v6;
}

- (id)_takeSnapshotOfFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(DBScreenController *)self rootScene];
  v9 = [v8 snapshotContext];
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v11 = [(DBDashboard *)self resizeWindow];

  if (v11)
  {
    v12 = [v8 layerManager];
    v13 = [(DBDashboard *)self resizeWindow];
    v14 = [v12 layerWithContextID:{objc_msgSend(v13, "_contextId")}];
    [v10 addObject:v14];
  }

  v15 = [(DBScreenController *)self cornerRadiusWindow];

  if (v15)
  {
    v16 = [v8 layerManager];
    v17 = [(DBScreenController *)self cornerRadiusWindow];
    v18 = [v16 layerWithContextID:{objc_msgSend(v17, "_contextId")}];

    if (v18)
    {
      [v10 addObject:v18];
    }
  }

  [v9 setLayersToExclude:v10];
  [v9 setFrame:{x, y, width, height}];
  v19 = [v8 createSnapshotWithContext:v9];
  [v19 capture];
  v20 = [v8 uiPresentationManager];
  v21 = [v20 snapshotPresentationForSnapshot:v19];

  return v21;
}

- (void)_homeTapped:(id)a3
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
  v3 = [(DBDashboard *)self siriViewController];
  v4 = [v3 isDismissed];

  if ((v4 & 1) == 0)
  {
    v5 = [(DBDashboard *)self siriScene];
    objc_opt_class();
    v6 = [v5 settings];
    if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;
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

      v9 = [(DBDashboard *)self siriViewController];
      [v9 backgroundSceneWithCompletion:0];
    }
  }
}

- (void)_backLongPressed:(id)a3
{
  v4 = a3;
  v5 = DBLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "long back press triggered", v6, 2u);
  }

  [(DBDashboard *)self handleLongBackPress];
  [v4 lastSenderID];

  BKSHIDServicesCancelButtonEventsFromSenderID();
}

- (id)_nowRecordingBundleIdentifier
{
  v2 = [(DBDashboard *)self dockController];
  v3 = [v2 nowRecordingBundleIdentifier];

  return v3;
}

- (void)_displayRecordingAlert
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(DBDashboard *)self _nowRecordingBundleIdentifier];
  if (v3)
  {
    v4 = [MEMORY[0x277CC1E88] bundleProxyForIdentifier:v3];
    v5 = DBLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 bundleIdentifier];
      *buf = 138543362;
      v26 = v6;
      _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Displaying recording alert for %{public}@", buf, 0xCu);
    }

    v7 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
    v8 = [v7 localizedStringForKey:@"APP_USING_MIC_OK" value:&stru_285A57218 table:@"CarPlayApp"];

    v9 = MEMORY[0x277CCACA8];
    v10 = [v4 localizedName];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
    v12 = [v11 localizedStringForKey:@"APP_USING_MIC_MESSAGE" value:&stru_285A57218 table:@"CarPlayApp"];
    v13 = [v9 stringWithFormat:@"%@ %@", v10, v12];

    v14 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:v13 preferredStyle:1];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __37__DBDashboard__displayRecordingAlert__block_invoke;
    v24[3] = &unk_278F01C50;
    v24[4] = self;
    v15 = [MEMORY[0x277D750F8] actionWithTitle:v8 style:0 handler:v24];
    [v14 addAction:v15];
    v16 = [(DBDashboard *)self notificationViewController];
    [v16 setSuspended:1 forReason:@"DBNotificationSuspensionReasonRecordingAlert"];

    v17 = [(DBDashboard *)self notificationViewController];
    [v17 presentViewController:v14 animated:1 completion:0];

    v18 = [(DBDashboard *)self focusController];
    v19 = [(DBDashboard *)self notificationWindow];
    v20 = [v18 deferFocusToWindow:v19 priority:6 reason:@"alertSheetFocus"];

    [(DBDashboard *)self setAlertFocusAssertion:v20];
    v21 = MEMORY[0x277D75518];
    v22 = [(DBDashboard *)self notificationWindow];
    v23 = [v21 focusSystemForEnvironment:v22];
    [v23 setNeedsFocusUpdate];
  }
}

void __37__DBDashboard__displayRecordingAlert__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlertFocusAssertion:0];
  v2 = [*(a1 + 32) notificationViewController];
  [v2 setSuspended:0 forReason:@"DBNotificationSuspensionReasonRecordingAlert"];
}

- (void)_presentPrivacyDisclosureAlertForApplication:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DBLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 bundleIdentifier];
    *buf = 138543362;
    v29 = v6;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Displaying privacy disclosure alert for %{public}@", buf, 0xCu);
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
  v9 = [v8 localizedStringForKey:@"PRIVACY_DISCLOSURE_ALERT_BODY_%@" value:&stru_285A57218 table:@"CarPlayApp"];
  v10 = [v4 displayName];
  v11 = [v7 stringWithFormat:v9, v10];

  v12 = MEMORY[0x277D75110];
  v13 = [v4 displayName];
  v14 = [v12 alertControllerWithTitle:v13 message:v11 preferredStyle:1];

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
  v19 = [(DBDashboard *)self notificationViewController];
  [v19 setSuspended:1 forReason:@"DBNotificationSuspensionReasonPrivacyAlert"];

  v20 = [(DBDashboard *)self notificationViewController];
  [v20 presentViewController:v14 animated:1 completion:0];

  v21 = [(DBDashboard *)self focusController];
  v22 = [(DBDashboard *)self notificationWindow];
  v23 = [v21 deferFocusToWindow:v22 priority:6 reason:@"alertSheetFocus"];

  [(DBDashboard *)self setAlertFocusAssertion:v23];
  v24 = MEMORY[0x277D75518];
  v25 = [(DBDashboard *)self notificationWindow];
  v26 = [v24 focusSystemForEnvironment:v25];
  [v26 setNeedsFocusUpdate];
}

void __60__DBDashboard__presentPrivacyDisclosureAlertForApplication___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlertFocusAssertion:0];
  v2 = [*(a1 + 32) notificationViewController];
  [v2 setSuspended:0 forReason:@"DBNotificationSuspensionReasonPrivacyAlert"];
}

- (void)_notifyAccessoryIfNeededWithUIContext:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DBScreenController *)self environmentConfiguration];
  v6 = [v5 appHistory];
  v7 = [v6 currentOwnerForContext:v4];

  if (v7)
  {
    v8 = DBLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v4;
      v9 = "Accessory is not context owner for %{public}@, not notifying.";
LABEL_8:
      _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v10 = [(DBScreenController *)self environmentConfiguration];
  v11 = [v10 appHistory];
  v12 = [v11 sessionAppContextURLs];
  v13 = [v12 containsObject:v4];

  if ((v13 & 1) == 0)
  {
    v8 = DBLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v4;
      v9 = "Accessory does not declare session support for context %{public}@; not notifying.";
      goto LABEL_8;
    }

LABEL_9:

    goto LABEL_10;
  }

  v14 = [(DBScreenController *)self environmentConfiguration];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__DBDashboard__notifyAccessoryIfNeededWithUIContext___block_invoke;
  v15[3] = &unk_278F021F8;
  v15[4] = self;
  v16 = v4;
  [v14 fetchEnhancedIntegrationStatusWithCompletion:v15];

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

- (void)_screenDidBecomeUnavailable:(id)a3
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

- (void)_screenDidBecomeAvailable:(id)a3
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

- (void)_updateWallpaperWithAnimationDuration:(double)a3 delay:(double)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = DBLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Updating #wallpaper", buf, 2u);
  }

  v8 = [(DBScreenController *)self environmentConfiguration];
  v9 = [v8 wallpaperPreferences];

  v10 = DBLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v9;
    _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_DEFAULT, "#wallpaper wallpaperPrefs: %@", buf, 0xCu);
  }

  v11 = [v9 currentWallpaper];
  v12 = DBLogForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v9 currentWallpaper];
    *buf = 138412290;
    v38 = v13;
    _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "#wallpaper newWallpaper: %@", buf, 0xCu);
  }

  v14 = [(DBScreenController *)self environmentConfiguration];
  v15 = [v14 vehicle];
  v16 = [v15 appearanceModePreference];

  if (!v16)
  {
    v17 = [v11 traits];
    v18 = [v17 supportsDynamicAppearance];

    if ((v18 & 1) == 0)
    {
      v19 = DBLogForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [DBDashboard _updateWallpaperWithAnimationDuration:delay:];
      }

      [v9 updateWallpaperToSupportDynamicAppearance];
      v20 = [v9 currentWallpaper];

      v11 = v20;
    }
  }

  v21 = [(DBDashboard *)self wallpaperRootViewController];
  v22 = [v21 currentWallpaper];
  v23 = [v22 isEqual:v11];

  v24 = DBLogForCategory(0);
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (v23)
  {
    if (v25)
    {
      v26 = [(DBDashboard *)self wallpaperRootViewController];
      v27 = [v26 currentWallpaper];
      *buf = 138412546;
      v38 = v27;
      v39 = 2112;
      v40 = v11;
      _os_log_impl(&dword_248146000, v24, OS_LOG_TYPE_DEFAULT, "#wallpaper wallpapers are equal so returning early. current: %@, new: %@", buf, 0x16u);
    }
  }

  else
  {
    if (v25)
    {
      *buf = 138543362;
      v38 = v11;
      _os_log_impl(&dword_248146000, v24, OS_LOG_TYPE_DEFAULT, "Applying #wallpaper %{public}@", buf, 0xCu);
    }

    v31 = MEMORY[0x277D85DD0];
    v32 = 3221225472;
    v33 = __59__DBDashboard__updateWallpaperWithAnimationDuration_delay___block_invoke;
    v34 = &unk_278F014B8;
    v28 = v11;
    v35 = v28;
    v36 = self;
    v29 = _Block_copy(&v31);
    v30 = [(DBDashboard *)self wallpaperRootViewController:v31];
    [v30 setWallpaper:v28 duration:v29 delay:a3 updates:a4];

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

- (void)_updateTraitOverridesWithWallpaperTraits:(id)a3
{
  if ([a3 supportsDashboardPlatterMaterials])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v6 = [(DBScreenController *)self windowScene];
  v5 = [v6 traitOverrides];
  [v5 setNSIntegerValue:v4 forTrait:objc_opt_class()];
}

- (void)_updateUserInterfaceStyle
{
  v3 = [(DBScreenController *)self environmentConfiguration];
  v4 = [v3 resolvedUserInterfaceStyle];

  v5 = [(DBScreenController *)self rootScene];
  v6 = [v5 uiSettings];
  v7 = [v6 userInterfaceStyle];

  if (v7 != v4)
  {
    v8 = [(DBScreenController *)self rootScene];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __40__DBDashboard__updateUserInterfaceStyle__block_invoke;
    v27[3] = &unk_278F02220;
    v27[4] = self;
    v27[5] = v4;
    [v8 updateUISettingsWithBlock:v27];

    v9 = [(DBScreenController *)self windowScene];
    v10 = [v9 traitOverrides];
    [v10 setNSIntegerValue:v4 forTrait:objc_opt_class()];
  }

  v11 = [(DBDashboard *)self dockLocalScene];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __40__DBDashboard__updateUserInterfaceStyle__block_invoke_564;
  v25[3] = &unk_278F02248;
  v25[4] = self;
  v26 = v11;
  v12 = v11;
  [v12 updateSettings:v25];
  v13 = [(DBDashboard *)self wallpaperLocalScene];
  v14 = [(DBDashboard *)self wallpaperLocalScene];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __40__DBDashboard__updateUserInterfaceStyle__block_invoke_565;
  v22 = &unk_278F02248;
  v23 = self;
  v24 = v13;
  v15 = v13;
  [v14 updateSettings:&v19];

  [(DBDashboard *)self _updateWallpaper:v19];
  v16 = [(DBDashboard *)self _homeScreenStyleTraitOverrides];
  v17 = [(DBScreenController *)self environmentConfiguration];
  v18 = [v17 homeScreenStyleData];
  [(DBDashboard *)self _updateTraitOverridesForTraitOverrides:v16 withHomeScreenStyleData:v18 userInterfaceStyle:v4];
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

- (int64_t)_sceneInterfaceStyleForScene:(id)a3
{
  v4 = a3;
  v5 = [v4 definition];
  v6 = [v5 clientIdentity];
  v7 = [v6 processIdentity];
  v8 = [v7 embeddedApplicationIdentifier];

  v9 = +[DBApplicationController sharedInstance];
  v10 = [v9 applicationWithBundleIdentifier:v8];

  objc_opt_class();
  v11 = [v4 settings];

  v12 = v11;
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
    v15 = [v13 proxiedApplicationBundleIdentifier];
    v16 = [v14 applicationWithBundleIdentifier:v15];

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
  v3 = [(DBScreenController *)self environmentConfiguration];
  v4 = [v3 session];
  v5 = [v4 configuration];
  v6 = [v5 screens];
  v13 = [v6 bs_firstObjectPassingTest:&__block_literal_global_569];

  v7 = [(DBScreenController *)self rootScene];
  v8 = [(DBDashboard *)self focusController];
  v9 = [v8 deferFocusToWindow:self->_mainWindow priority:0 reason:@"launcher"];

  [(DBDashboard *)self setHomeFocusAssertion:v9];
  v10 = [(DBScreenController *)self environmentConfiguration];
  if ([v10 currentViewAreaSupportsFocusTransfer])
  {
    v11 = [v13 initialFocusOwner];

    if (v11)
    {
      goto LABEL_5;
    }

    v12 = [(DBDashboard *)self focusController];
    v10 = [v12 suspendFocusWithPriority:9 reason:@"oemFocus"];

    [(DBDashboard *)self setOEMFocusAssertion:v10];
  }

LABEL_5:
}

- (void)_initializeWallpaper
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(DBDashboard *)self displayIdentity];
  v5 = [v3 stringWithFormat:@"wallpaper-%@", v4];

  v6 = [(DBDashboard *)self localSceneWorkspace];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __35__DBDashboard__initializeWallpaper__block_invoke;
  v25[3] = &unk_278F01E30;
  v7 = v5;
  v26 = v7;
  v8 = [v6 createScene:v25];

  if (v8)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __35__DBDashboard__initializeWallpaper__block_invoke_2;
    v24[3] = &unk_278F01FF8;
    v24[4] = self;
    [v8 configureParameters:v24];
    v9 = [_TtC9DashBoard21DBWallpaperHostWindow alloc];
    v10 = [(DBScreenController *)self windowScene];
    v11 = [(DBDashboard *)self layoutEngine];
    [v11 wallpaperHostWindowFrame];
    v12 = [(DBWallpaperHostWindow *)v9 initWithLocalScene:v8 windowScene:v10 frame:?];
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
  v16 = [(DBLocalSceneHostWindow *)self->_wallpaperHostWindow clientScene];
  v17 = [v15 _sceneForFBSScene:v16];

  v18 = [_TtC9DashBoard17DBWallpaperWindow alloc];
  v19 = [(DBDashboard *)self layoutEngine];
  [v19 wallpaperWindowFrame];
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

- (BOOL)_supportsDisplayingPunchthroughWithIdentifier:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DBScreenController *)self displayInfo];
  v6 = [v5 supportsDDPContent];

  if (v6)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v9 = [(DBScreenController *)self displayInfo];
    v7 = [v9 oemPunchThroughs];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__DBDashboard__supportsDisplayingPunchthroughWithIdentifier___block_invoke;
    v12[3] = &unk_278F02290;
    v8 = v4;
    v13 = v8;
    v14 = &v15;
    [v7 enumerateObjectsUsingBlock:v12];

    LODWORD(v9) = *(v16 + 24);
    if (v9 == 1)
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
    v9 = DBLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DBDashboard _supportsDisplayingPunchthroughWithIdentifier:];
    }

    LOBYTE(v9) = 0;
  }

  return v9;
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

- (void)_presentPunchthroughWithIdentifier:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DBScreenController *)self environmentConfiguration];
  v6 = [v5 supportsGaugeCluster];

  if (v6 && [(DBDashboard *)self _supportsDisplayingPunchthroughWithIdentifier:v4])
  {
    v7 = DBLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Activating punch through with id: %@", &v10, 0xCu);
    }

    v8 = objc_alloc_init(DBMutableWorkspaceStateChangeRequest);
    [(DBMutableWorkspaceStateChangeRequest *)v8 activateOEMPunchthrough:v4];
    v9 = [(DBDashboard *)self workspace];
    [v9 requestStateChange:v8];
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

- (void)_dismissPunchthroughWithIdentifier:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DBLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Dismissing punch through with id: %@", buf, 0xCu);
  }

  v6 = objc_alloc_init(DBMutableWorkspaceStateChangeRequest);
  [(DBMutableWorkspaceStateChangeRequest *)v6 deactivateOEMPunchthrough:v4];
  objc_initWeak(buf, self);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __50__DBDashboard__dismissPunchthroughWithIdentifier___block_invoke;
  v12 = &unk_278F02070;
  objc_copyWeak(&v14, buf);
  v7 = v4;
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

- (void)_notifyClimateOverlayPunchthroughIsPresented:(BOOL)a3
{
  v3 = a3;
  v4 = [(DBDashboard *)self climateOverlayController];
  [v4 setIsDeactivated:v3];
}

- (void)_handleOEMNotificationURL:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DBLogForCategory(0);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v4;
      _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Handling OEM notification URL: %{public}@", &v9, 0xCu);
    }

    v6 = [MEMORY[0x277CCACE0] componentsWithURL:v4 resolvingAgainstBaseURL:0];
    v7 = [v6 scheme];
    if ([v7 isEqualToString:@"inputStream"])
    {
      [(DBDashboard *)self _handleInputStreamURL:v6];
    }

    else if ([v7 isEqualToString:@"settings"])
    {
      [(DBDashboard *)self _handleAutoSettingsURL:v4];
    }

    else
    {
      v8 = objc_alloc_init(DBActivationSettings);
      [(DBActivationSettings *)v8 setUrl:v4];
      [(DBDashboard *)self _handleAppSchemeURL:v4 activationSettings:v8];
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [DBDashboard _handleOEMNotificationURL:];
  }
}

- (void)_handleInputStreamURL:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  v5 = [v4 queryItems];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__DBDashboard__handleInputStreamURL___block_invoke;
  v7[3] = &unk_278F022B8;
  v7[4] = &v8;
  [v5 enumerateObjectsUsingBlock:v7];

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

- (void)_handleAutoSettingsURL:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DBLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Handling Auto Settings URL: %{public}@", &buf, 0xCu);
  }

  v6 = [MEMORY[0x277CCACE0] componentsWithURL:v4 resolvingAgainstBaseURL:0];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  v7 = [v6 queryItems];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __38__DBDashboard__handleAutoSettingsURL___block_invoke;
  v15[3] = &unk_278F022B8;
  v15[4] = &buf;
  [v7 enumerateObjectsUsingBlock:v15];

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
    [(DBActivationSettings *)v12 setUrl:v4];
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

- (BOOL)_isDockScene:(id)a3
{
  v4 = a3;
  v5 = [(DBDashboard *)self dockLocalScene];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (void)handleFocusMovementAction:(id)a3 fromScene:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v49 = [v6 focusMovementInfo];
  v8 = [v49 heading];
  v47 = [v6 inputDeviceInfo];
  v44 = [v6 shouldPerformHapticFeedback];
  v9 = [(DBDashboard *)self climateOverlayScene];

  v10 = [(DBDashboard *)self _isDockScene:v7];
  v11 = [(DBScreenController *)self environmentConfiguration];
  v45 = [v11 isRightHandDrive];

  v12 = [(DBDashboard *)self mainWindow];
  v13 = [v12 traitCollection];
  v46 = [v13 layoutDirection];

  v14 = [(DBDashboard *)self climateOverlayScene];
  v43 = [v7 isEqual:v14];

  v15 = [(DBDashboard *)self climateOverlayController];
  v48 = [v15 isHidden];

  v16 = [(DBDashboard *)self dockController];
  [v16 climateOverlayDidRequestHideFocusGuides:v48];

  if (v9)
  {
    v17 = [(DBScreenController *)self environmentConfiguration];
    v18 = [v17 hasDualStatusBar];

    if (v18)
    {
      v19 = [(DBDashboard *)self _directionWithVerticalClimateOverlayWithHeading:v8 isClimateOverlaySceneHidden:v48 isClimateScene:v43 isDockScene:v10 action:v6];
      v8 = [(DBDashboard *)self _adjustedHeadingForVerticalClimateOverlay:v8 direction:v19];
    }

    else
    {
      v8 = [(DBDashboard *)self _adjustedHeadingForHorizontalClimateOverlay:v8];
      v19 = [(DBDashboard *)self _directionWithHorizontalClimateOverlayWithHeading:v8 isClimateOverlaySceneHidden:v48 isClimateScene:v43 isDockScene:v10 action:v6];
    }
  }

  else
  {
    v19 = [(DBDashboard *)self _isDockScene:v7];
  }

  v20 = DBLogForCategory(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      v21 = [MEMORY[0x277CCAB68] string];
      v50[0] = 0;
      v50[1] = v50;
      v50[2] = 0x2020000000;
      v51 = 0;
      *aBlock = MEMORY[0x277D85DD0];
      *&aBlock[8] = 3221225472;
      *&aBlock[16] = ___DBStringFromFocusHeading_block_invoke;
      v53 = &unk_278F026C0;
      v22 = v21;
      v54 = v22;
      v55 = v50;
      v23 = _Block_copy(aBlock);
      v24 = v23;
      if (v8)
      {
        (*(v23 + 2))(v23, @"Up");
      }

      if ((v8 & 2) != 0)
      {
        (v24)[2](v24, @"Down");
      }

      if ((v8 & 4) != 0)
      {
        (v24)[2](v24, @"Left");
      }

      if ((v8 & 8) != 0)
      {
        (v24)[2](v24, @"Right");
      }

      if ((v8 & 0x20) != 0)
      {
        (v24)[2](v24, @"Previous");
      }

      if ((v8 & 0x10) != 0)
      {
        (v24)[2](v24, @"Next");
      }

      if ((v8 & 0x100) != 0)
      {
        (v24)[2](v24, @"First");
      }

      if ((v8 & 0x200) != 0)
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

  v29 = [(DBScreenController *)self environmentConfiguration];
  v30 = +[DBFocusMovementManager isMovementAllowedForHeading:direction:isRTL:isLeftHandDrive:statusBarEdge:supportsClimateOverlayFocus:](DBFocusMovementManager, "isMovementAllowedForHeading:direction:isRTL:isLeftHandDrive:statusBarEdge:supportsClimateOverlayFocus:", v8, v19, v46 == 1, v45 ^ 1u, [v29 currentStatusBarEdge], v9 != 0);

  if (v30)
  {
    v31 = DBLogForCategory(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *aBlock = 0;
      _os_log_impl(&dword_248146000, v31, OS_LOG_TYPE_DEFAULT, "Focus movement in direction is allowed", aBlock, 2u);
    }

    if (v9)
    {
      v32 = [(DBScreenController *)self environmentConfiguration];
      v33 = [v32 hasDualStatusBar];

      v34 = v8;
      if ((v33 & 1) == 0)
      {
        if (v8 == 16)
        {
          v35 = 8;
          v36 = 4;
        }

        else
        {
          v35 = 4;
          v36 = 8;
        }

        if (v46 == 1)
        {
          v34 = v36;
        }

        else
        {
          v34 = v35;
        }
      }

      if ([(DBDashboard *)self _isDockScene:v7])
      {
        [(DBDashboard *)self _dropDockFocusAssertionForAction:v6];
      }

      if ((v43 | v48))
      {
        v40 = [(DBDashboard *)self climateFocusAssertion];
        [v6 focusedFrame];
        [v40 invalidateWithHeading:v34 focusedFrame:?];

        [(DBDashboard *)self setClimateFocusAssertion:0];
      }

      if (v19)
      {
        if (v19 != 2)
        {
          v41 = [(DBDashboard *)self _isPunchThroughPresented];
          if (v19 == 1 && v41)
          {
            [(DBDashboard *)self _attemptFocusTransferForAction:v6 fromScene:v7 heading:v8];
          }

          goto LABEL_64;
        }

        [(DBDashboard *)self _takeClimateFocusAssertionForAction:v6 heading:v34];
      }

      else
      {
        [(DBDashboard *)self _takeDockFocusAssertionForAction:v6 heading:v34];
      }

      [(DBDashboard *)self _isPunchThroughPresented];
    }

    else if ([(DBDashboard *)self _isDockScene:v7])
    {
      [(DBDashboard *)self _dropDockFocusAssertionForAction:v6];
    }

    else
    {
      [(DBDashboard *)self _takeDockFocusAssertionForAction:v6];
    }

LABEL_64:
    if (v44)
    {
      -[DBFocusMovementManager performHapticFeedbackForSenderID:](self->_focusMovementManager, "performHapticFeedbackForSenderID:", [v47 senderID]);
    }

    goto LABEL_66;
  }

  v37 = [(DBScreenController *)self environmentConfiguration];
  if ([v37 currentViewAreaSupportsFocusTransfer])
  {
    v38 = [(DBDashboard *)self _isPunchThroughPresented];

    if (!v38)
    {
      [(DBDashboard *)self _attemptFocusTransferForAction:v6 fromScene:v7 heading:v8];
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

- (unint64_t)_adjustedHeadingForVerticalClimateOverlay:(unint64_t)a3 direction:(unint64_t)a4
{
  v7 = [(DBDashboard *)self mainWindow];
  v8 = [v7 traitCollection];
  v9 = [v8 layoutDirection];

  v10 = [(DBScreenController *)self environmentConfiguration];
  v11 = [v10 isRightHandDrive];

  if ((a4 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v12 = 8;
    if (v9 == 1)
    {
      v12 = 4;
    }

    if (a3 == 16 || v12 == a3)
    {
      if ((v9 == 1) != v11)
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
      if (v9 == 1)
      {
        v13 = 8;
      }

      if (a3 == 32 || v13 == a3)
      {
        if ((v9 == 1) != v11)
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

  return a3;
}

- (unint64_t)_adjustedHeadingForHorizontalClimateOverlay:(unint64_t)a3
{
  v4 = [(DBDashboard *)self mainWindow];
  v5 = [v4 traitCollection];
  v6 = [v5 layoutDirection];

  v7 = 16;
  if (v6 == 1)
  {
    v7 = 32;
  }

  v8 = 32;
  if (v6 == 1)
  {
    v8 = 16;
  }

  if (a3 != 4)
  {
    v8 = a3;
  }

  if (a3 == 8)
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

- (unint64_t)_directionWithHorizontalClimateOverlayWithHeading:(unint64_t)a3 isClimateOverlaySceneHidden:(BOOL)a4 isClimateScene:(BOOL)a5 isDockScene:(BOOL)a6 action:(id)a7
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v12 = a7;
  v13 = [(DBScreenController *)self environmentConfiguration];
  v14 = [v13 isRightHandDrive];

  v15 = [(DBDashboard *)self mainWindow];
  v16 = [v15 traitCollection];
  v17 = [v16 layoutDirection];

  if (a3 == 8)
  {
    v18 = 1;
  }

  else if (a3 == 16)
  {
    v18 = v17 != 1;
  }

  else
  {
    v18 = a3 == 32 && v17 == 1;
    if (a3 == 1)
    {
      v20 = 1;
      goto LABEL_46;
    }
  }

  if (v8)
  {
    [v12 focusedFrame];
    v22 = v21;
    v23 = [(DBDashboard *)self climateOverlayController];
    v24 = [v23 climateWindow];
    [v24 frame];
    v26 = v25 * 0.5;

    if (v22 >= v26)
    {
      v27 = (v14 ^ 1) & v18;
    }

    else
    {
      v27 = v14 & !v18;
    }

    v20 = v27;
  }

  else
  {
    if (!v7)
    {
      if (v14)
      {
        if (v17 != 1)
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
        if (v9)
        {
          v31 = 0;
        }

        v32 = !v18;
        v33 = 3;
      }

      else
      {
        v31 = 2;
        if (v9)
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

        v32 = v17 == 1;
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

    v28 = [(DBDashboard *)self dockController];
    v29 = [v28 isHomeButtonFocused];

    if (v29)
    {
      v30 = !v18;
      if (!v14)
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
      v30 = !v9;
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

- (unint64_t)_directionWithVerticalClimateOverlayWithHeading:(unint64_t)a3 isClimateOverlaySceneHidden:(BOOL)a4 isClimateScene:(BOOL)a5 isDockScene:(BOOL)a6 action:(id)a7
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v12 = a7;
  v13 = [(DBScreenController *)self environmentConfiguration];
  v14 = [v13 isRightHandDrive];

  v15 = [(DBDashboard *)self mainWindow];
  v16 = [v15 traitCollection];
  v17 = [v16 layoutDirection];

  v18 = 32;
  if (v17 == 1)
  {
    v19 = 16;
  }

  else
  {
    v19 = 32;
  }

  if (v17 != 1)
  {
    v18 = 16;
  }

  v21 = a3 == 4 || v19 == a3;
  v23 = a3 == 8 || v18 == a3;
  if (!v14)
  {
    v23 = v21;
  }

  v24 = a3 == 2 || v23;
  if (v8)
  {
    [v12 focusedFrame];
    v26 = v25;
    v27 = [(DBDashboard *)self climateOverlayController];
    v28 = [v27 climateWindow];
    [v28 frame];
    v30 = v29 * 0.5;

    if (v26 <= v30)
    {
      v31 = v24 ^ 1u;
    }

    else
    {
      v31 = ((a3 - 4) & 0xFFFFFFFFFFFFFFFBLL) == 0;
    }
  }

  else if (v7)
  {
    v31 = 1;
    if (a3 != 4 && a3 != 8)
    {
      v32 = [(DBDashboard *)self dockController];
      v33 = [v32 isHomeButtonFocused];

      if (v33)
      {
        v34 = v24 == 0;
      }

      else
      {
        v34 = !v9;
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
    if (v9)
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
  v2 = [(DBDashboard *)self workspace];
  v3 = [v2 state];
  v4 = [v3 stackedEntity];

  v5 = objc_opt_class();
  LOBYTE(v5) = [v5 isEqual:objc_opt_class()];

  return v5;
}

- (void)_takeClimateFocusAssertionForAction:(id)a3 heading:(unint64_t)a4
{
  v6 = a3;
  v7 = DBLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Taking climate focus assertion", v19, 2u);
  }

  v8 = [(DBDashboard *)self focusController];
  v9 = [(DBDashboard *)self climateOverlayScene];
  [v6 focusedFrame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [v8 deferFocusToScene:v9 priority:4 reason:@"climate" heading:a4 focusedFrame:{v11, v13, v15, v17}];

  [(DBDashboard *)self setClimateFocusAssertion:v18];
}

- (void)_attemptFocusTransferForAction:(id)a3 fromScene:(id)a4 heading:(unint64_t)a5
{
  v53[5] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = DBLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v51.a) = 0;
    _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_DEFAULT, "Attempting focus transfer to OEM UI", &v51, 2u);
  }

  v11 = [(DBScreenController *)self rootScene];

  if (v11 == v9)
  {
    v32 = [(DBScreenController *)self environmentConfiguration];
    [v32 screenScale];
    v34 = v33;

    [v8 focusedFrame];
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
    [v8 focusedFrame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [(DBDashboard *)self rootViewController];
    v21 = [v20 contentView];
    v22 = [(DBDashboard *)self mainWindow];
    v23 = [v22 screen];
    [DBFocusMovementManager convertRect:v21 fromView:v23 toScreen:v13, v15, v17, v19];
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
  v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v53[4] = v47;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:5];

  v49 = [(DBScreenController *)self environmentConfiguration];
  v50 = [v49 session];
  [v50 sendCommand:@"deviceOfferFocus" withParameters:v48];
}

- (void)_dropDockFocusAssertionForAction:(id)a3
{
  v4 = a3;
  v5 = [v4 focusMovementInfo];
  v6 = [v5 heading];

  v7 = DBLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Dropping dock focus assertion", v17, 2u);
  }

  v8 = [(DBDashboard *)self dockController];
  [v4 focusedFrame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v8 relinquishFocusWithHeading:v6 focusedFrame:{v10, v12, v14, v16}];
}

- (void)_takeDockFocusAssertionForAction:(id)a3 heading:(unint64_t)a4
{
  v6 = a3;
  v7 = DBLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Taking dock focus assertion", v17, 2u);
  }

  v8 = [(DBDashboard *)self dockController];
  [v6 focusedFrame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v8 acquireFocusWithHeading:a4 focusedFrame:{v10, v12, v14, v16}];
}

- (void)_takeDockFocusAssertionForAction:(id)a3
{
  v6 = a3;
  v4 = [v6 focusMovementInfo];
  v5 = [v4 heading];

  [(DBDashboard *)self _takeDockFocusAssertionForAction:v6 heading:v5];
}

- (void)setAlertFocusAssertion:(id)a3
{
  v5 = a3;
  alertFocusAssertion = self->_alertFocusAssertion;
  if (alertFocusAssertion != v5)
  {
    [(DBFocusAssertion *)alertFocusAssertion invalidate];
    objc_storeStrong(&self->_alertFocusAssertion, a3);
  }

  MEMORY[0x2821F96F8]();
}

- (void)setHomeFocusAssertion:(id)a3
{
  v5 = a3;
  homeFocusAssertion = self->_homeFocusAssertion;
  if (homeFocusAssertion != v5)
  {
    [(DBFocusAssertion *)homeFocusAssertion invalidate];
    objc_storeStrong(&self->_homeFocusAssertion, a3);
  }

  MEMORY[0x2821F96F8]();
}

- (void)setLockOutFocusAssertion:(id)a3
{
  v5 = a3;
  lockOutFocusAssertion = self->_lockOutFocusAssertion;
  if (lockOutFocusAssertion != v5)
  {
    [(DBFocusAssertion *)lockOutFocusAssertion invalidate];
    objc_storeStrong(&self->_lockOutFocusAssertion, a3);
  }

  MEMORY[0x2821F96F8]();
}

- (void)setNotificationFocusAssertion:(id)a3
{
  v5 = a3;
  notificationFocusAssertion = self->_notificationFocusAssertion;
  if (notificationFocusAssertion != v5)
  {
    [(DBFocusAssertion *)notificationFocusAssertion invalidate];
    objc_storeStrong(&self->_notificationFocusAssertion, a3);
  }

  MEMORY[0x2821F96F8]();
}

- (void)setOEMFocusAssertion:(id)a3
{
  v5 = a3;
  oemFocusAssertion = self->_oemFocusAssertion;
  if (oemFocusAssertion != v5)
  {
    [(DBFocusAssertion *)oemFocusAssertion invalidate];
    objc_storeStrong(&self->_oemFocusAssertion, a3);
  }

  MEMORY[0x2821F96F8]();
}

- (void)setClimateFocusAssertion:(id)a3
{
  v5 = a3;
  climateFocusAssertion = self->_climateFocusAssertion;
  if (climateFocusAssertion != v5)
  {
    [(DBFocusAssertion *)climateFocusAssertion invalidate];
    objc_storeStrong(&self->_climateFocusAssertion, a3);
  }

  MEMORY[0x2821F96F8]();
}

- (DBScreenshotManager)screenshotManager
{
  screenshotManager = self->_screenshotManager;
  if (!screenshotManager)
  {
    v4 = [DBScreenshotManager alloc];
    v5 = [(DBScreenController *)self windowScene];
    v6 = [(DBScreenshotManager *)v4 initWithWindowScene:v5];
    v7 = self->_screenshotManager;
    self->_screenshotManager = v6;

    screenshotManager = self->_screenshotManager;
  }

  return screenshotManager;
}

- (FBScene)siriScene
{
  v2 = [(DBDashboard *)self siriViewController];
  v3 = [v2 scene];

  return v3;
}

- (id)scene:(id)a3 handleActions:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v6;
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
        v14 = [v13 UIActionType];
        if (v14 == 7)
        {
          v21 = v5;
          v22 = DBLogForCategory(0);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_248146000, v22, OS_LOG_TYPE_DEFAULT, "Tap received from status bar", buf, 2u);
          }

          v23 = v13;
          v24 = [v23 statusBarStyleOverride];
          if (v24 != 0x2000)
          {
            if (v24 == 4)
            {
              v31 = DBLogForCategory(0);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_248146000, v31, OS_LOG_TYPE_DEFAULT, "Current override is recording", buf, 2u);
              }

              v32 = [(DBDashboard *)self _nowRecordingBundleIdentifier];
              if (!v32)
              {
LABEL_35:

                v5 = v21;
                v7 = v45;
                continue;
              }

              v33 = v32;
              v34 = +[DBApplicationController sharedInstance];
              v35 = [v34 applicationWithBundleIdentifier:v33];

              v36 = [v35 appPolicy];
              v37 = v36;
              if (v35 && [v36 canDisplayOnCarScreen])
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
              if (v24 != 1)
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
              v27 = [v26 inCallServiceApplication];

              v28 = objc_alloc_init(DBActivationSettings);
              v29 = [MEMORY[0x277CBEBC0] faceTimeShowCarPlayInCallUIURL];
              [(DBActivationSettings *)v28 setUrl:v29];

              v30 = [DBApplicationLaunchInfo launchInfoForApplication:v27 withActivationSettings:v28];
              [(DBDashboard *)self _handleBackgroundURLDeliveryForLaunchInfo:v30];

LABEL_39:
            }

            v5 = v21;
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

          v27 = [DBEvent eventWithType:6 context:0];
          [(DBDashboard *)self handleEvent:v27];
          goto LABEL_39;
        }

        if (v14 == 24)
        {
          v20 = DBLogForCategory(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_248146000, v20, OS_LOG_TYPE_DEFAULT, "Focus movement action received", buf, 2u);
          }

          [(DBDashboard *)self handleFocusMovementAction:v13 fromScene:v5];
          goto LABEL_45;
        }

        if (v14 != 13)
        {
          continue;
        }

        v15 = [v5 clientProcess];
        v16 = [v15 pid];
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

- (void)carManager:(id)a3 didUpdateCar:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 audioSettings];
  v7 = [v6 receivedAllValues];

  if (v7)
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

      [(DBAudioNotificationManager *)self->_audioNotificationManager updateObserversForCar:v5];
    }

    else
    {
      if (v10)
      {
        LOWORD(v34) = 0;
        _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "Setup audio notification", &v34, 2u);
      }

      v12 = [_TtC9DashBoard13DBAudioWindow alloc];
      v13 = [(DBScreenController *)self windowScene];
      v14 = [(DBDashboard *)self layoutEngine];
      [v14 notificationWindowFrame];
      v15 = [(DBAudioWindow *)v12 initWithWindowScene:v13 frame:?];
      audioWindow = self->_audioWindow;
      self->_audioWindow = v15;

      v17 = [[_TtC9DashBoard33DBAudioNotificationViewController alloc] initWithEnvironment:self];
      audioViewController = self->_audioViewController;
      self->_audioViewController = v17;

      v19 = [(DBDashboard *)self dockController];
      [v19 addDockObserver:self->_audioViewController];

      [(DBAudioWindow *)self->_audioWindow setRootViewController:self->_audioViewController];
      [(DBAudioWindow *)self->_audioWindow setHidden:1];
      v20 = [[DBAudioNotificationManager alloc] initWithWindow:self->_audioWindow viewController:self->_audioViewController car:v5];
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

  if ([v5 hasAccessoryType:*MEMORY[0x277CF80B0]])
  {
    [(DBDashboard *)self _setupClimateOverlayControllerIfNeeded];
  }

  v22 = [(DBDashboard *)self cameraOverlayController];
  [v22 setCar:v5];

  if (!self->_requestContentPTManager)
  {
    v23 = [DBRequestContentPunchThroughManager alloc];
    v24 = [(DBScreenController *)self environmentConfiguration];
    v25 = [(DBRequestContentPunchThroughManager *)v23 initWithEnvironmentConfiguration:v24];
    [(DBDashboard *)self setRequestContentPTManager:v25];

    v26 = [(DBDashboard *)self requestContentPTManager];
    [v26 registerObserver:self];

    v27 = DBLogForCategory(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [(DBDashboard *)self requestContentPTManager];
      v34 = 138412290;
      v35 = v28;
      _os_log_impl(&dword_248146000, v27, OS_LOG_TYPE_DEFAULT, "DBRequestContentPunchThroughManager requestContentPTManager init DONE: %@", &v34, 0xCu);
    }

    workspace = self->_workspace;
    v30 = [(DBDashboard *)self requestContentPTManager];
    [(DBWorkspace *)workspace addObserver:v30];
  }

  v31 = DBLogForCategory(0);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [(DBDashboard *)self requestContentPTManager];
    v34 = 138412546;
    v35 = v32;
    v36 = 2112;
    v37 = v5;
    _os_log_impl(&dword_248146000, v31, OS_LOG_TYPE_DEFAULT, "DBRequestContentPunchThroughManager setCar: %@, %@", &v34, 0x16u);
  }

  v33 = [(DBDashboard *)self requestContentPTManager];
  [v33 setCar:v5];
}

- (void)carManager:(id)a3 didUpdateAccessories:(id)a4
{
  v5 = a4;
  v6 = [(DBDashboard *)self cameraOverlayController];
  [v6 setCar:v5];

  v7 = [(DBDashboard *)self requestContentPTManager];
  [v7 setCar:v5];
}

- (void)_setupClimateOverlayControllerIfNeeded
{
  os_unfair_lock_lock(&self->_lock);
  lock_invalidated = self->_lock_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  if (!self->_climateOverlayController && !lock_invalidated)
  {
    v4 = +[DBApplicationController sharedInstance];
    v5 = [v4 climateApplication];

    if (v5)
    {
      v6 = [(DBDashboard *)self overlaySceneWorkspace];
      v28 = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = __53__DBDashboard__setupClimateOverlayControllerIfNeeded__block_invoke;
      v31 = &unk_278F021D0;
      v32 = self;
      v33 = v5;
      v7 = [v6 createScene:&v28];

      if (v7)
      {
        [(DBDashboard *)self setClimateOverlayScene:v7, v28, v29, v30, v31, v32];
        v8 = [_TtC9DashBoard26DBClimateOverlayController alloc];
        v9 = [(DBScreenController *)self windowScene];
        v10 = [(DBDashboard *)self layoutEngine];
        [v10 climateWindowFrame];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v19 = [(DBDashboard *)self layoutEngine];
        v20 = [(DBClimateOverlayController *)v8 initWithWindowScene:v9 windowFrame:v7 climateScene:v19 layoutEngine:self environment:v12, v14, v16, v18];
        climateOverlayController = self->_climateOverlayController;
        self->_climateOverlayController = v20;

        v22 = self->_climateOverlayController;
        v23 = [(DBDashboard *)self dockController];
        [(DBClimateOverlayController *)v22 setDelegate:v23];

        v24 = [(DBDashboard *)self persistentElementsManager];
        [(DBClimateOverlayController *)self->_climateOverlayController setPersistentElementsManager:v24];

        v25 = [(DBDashboard *)self dockController];
        [v25 addDockObserver:self->_climateOverlayController];

        v26 = [(DBDashboard *)self climateOverlayScene];
        [v26 addObserver:self];
      }

      else
      {
        v26 = DBLogForCategory(0);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
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
  v4 = [v3 carCameraApplication];

  if (v4)
  {
    v5 = [(DBDashboard *)self overlaySceneWorkspace];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __44__DBDashboard__setupCameraOverlayController__block_invoke;
    v16 = &unk_278F021D0;
    v17 = self;
    v18 = v4;
    v6 = [v5 createScene:&v13];

    if (v6)
    {
      [(DBDashboard *)self setCameraScene:v6, v13, v14, v15, v16, v17];
      v7 = [_TtC9DashBoard25DBCameraOverlayController alloc];
      v8 = [(DBScreenController *)self windowScene];
      v9 = [(DBDashboard *)self layoutEngine];
      [v9 cameraWindowFrame];
      v10 = [(DBCameraOverlayController *)v7 initWithWindowScene:v8 windowFrame:v6 cameraScene:self environment:?];
      cameraOverlayController = self->_cameraOverlayController;
      self->_cameraOverlayController = v10;
    }

    else
    {
      v8 = DBLogForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
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

- (void)volumeNotificationServiceUpdated:(id)a3
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
  v2 = [(DBDashboard *)self rootViewController];
  v3 = [v2 iconLayoutDataProvider];

  return v3;
}

- (CRSWidgetLayoutVehicleDataProviding)widgetLayoutDataProvider
{
  v2 = [(DBDashboard *)self rootViewController];
  v3 = [v2 widgetLayoutDataProvider];

  return v3;
}

- (id)sceneIdentifierForApplication:(id)a3
{
  v4 = a3;
  v5 = [v4 appPolicy];
  if ([v5 launchUsingTemplateUI])
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [(DBDashboard *)self displayIdentity];
    v8 = DBTemplateUIHostBundleIdentifier;
LABEL_5:
    v9 = *v8;
    v10 = [v4 bundleIdentifier];
    [v6 stringWithFormat:@"%@:%@:%@", v7, v9, v10];
    goto LABEL_6;
  }

  if (([v5 launchUsingMusicUIService] & 1) != 0 || (objc_msgSend(v5, "isCarPlaySupported") & 1) == 0 && (objc_msgSend(v4, "info"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "supportsBackgroundMode:", *MEMORY[0x277D76778]), v13, v14))
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [(DBDashboard *)self displayIdentity];
    v8 = DBMusicUIServiceBundleIdentifier;
    goto LABEL_5;
  }

  v15 = MEMORY[0x277CCACA8];
  v7 = [(DBDashboard *)self displayIdentity];
  v10 = [v4 bundleIdentifier];
  [v15 stringWithFormat:@"%@:%@", v7, v10, v16];
  v11 = LABEL_6:;

  return v11;
}

- (CGRect)sceneFrameForApplication:(id)a3 proxyApplication:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[DBApplicationController sharedInstance];
  v9 = [v8 templateUIHostApplication];

  if (v7)
  {
    v10 = v9 == v7;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
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

- (CGRect)sceneFrameForApplication:(id)a3
{
  v4 = a3;
  v5 = [v4 bundleIdentifier];
  v6 = [v5 isEqualToString:@"com.apple.CarPlayWallpaper"];

  v7 = [(DBDashboard *)self layoutEngine];
  v8 = v7;
  if (v6)
  {
    [v7 wallpaperWindowFrame];
  }

  else
  {
    [v7 sceneFrameForApplication:v4];
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

- (UIEdgeInsets)safeAreaInsetsForApplication:(id)a3 proxyApplication:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[DBApplicationController sharedInstance];
  v9 = [v8 musicUIServiceApplication];

  if (v9 == v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
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

- (UIEdgeInsets)safeAreaInsetsForApplication:(id)a3
{
  v4 = a3;
  v5 = [(DBDashboard *)self layoutEngine];
  [v5 safeAreaInsetsForApplication:v4];
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

- (int64_t)sceneInterfaceStyleForApplication:(id)a3 proxyApplication:(id)a4
{
  v4 = [(DBScreenController *)self environmentConfiguration:a3];
  v5 = [v4 resolvedUserInterfaceStyle];

  return v5;
}

- (int64_t)sceneMapInterfaceStyleForApplication:(id)a3 proxyApplication:(id)a4
{
  v4 = [(DBScreenController *)self environmentConfiguration:a3];
  v5 = [v4 effectiveMapsUserInterfaceStyle];

  return v5;
}

- (void)invalidate
{
  v75 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_invalidated = self->_lock_invalidated;
  self->_lock_invalidated = 1;
  os_unfair_lock_unlock(&self->_lock);
  v4 = DBLogForCategory(0);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (lock_invalidated)
  {
    if (v5)
    {
      *buf = 134217984;
      v74 = self;
      _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "Already invalidated DBDashboard<%p>", buf, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 134217984;
      v74 = self;
      _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "Invalidating DBDashboard<%p>", buf, 0xCu);
    }

    v6 = [(DBDashboard *)self splashScreenAlert];
    [v6 invalidate];

    v7 = [(DBDashboard *)self rootViewController];
    [v7 invalidate];

    v8 = [(DBDashboard *)self wallpaperRootViewController];
    [v8 invalidate];

    v9 = [(DBDashboard *)self volumeNotificationService];
    [v9 removeObserver:self];

    v10 = [(DBDashboard *)self volumeNotificationServiceDomainActivationToken];
    [v10 invalidate];

    v11 = [(DBDashboard *)self volumeNotificationService];
    [v11 invalidate];

    [(DBDashboard *)self setVolumeNotificationServiceDomainActivationToken:0];
    v12 = [(DBDashboard *)self requestContentPTManager];
    [v12 unregisterObserver:self];

    workspace = self->_workspace;
    v14 = [(DBDashboard *)self requestContentPTManager];
    [(DBWorkspace *)workspace removeObserver:v14];

    v15 = [(DBDashboard *)self dockController];
    [v15 invalidate];

    v16 = [(DBDashboard *)self climateOverlayController];
    [v16 invalidate];

    v17 = [(DBDashboard *)self cameraOverlayController];
    [v17 invalidate];

    v18 = [(DBDashboard *)self voiceControlOverlayController];
    [v18 invalidate];

    v19 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v19 removeObserver:self forKeyPath:@"CARCornerRadius"];

    v20 = [MEMORY[0x277CCAB98] defaultCenter];
    [v20 removeObserver:self];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
    v22 = [(DBScreenController *)self environmentConfiguration];
    v23 = [v22 session];
    [v23 removeObserver:self];

    v24 = [(DBScreenController *)self environmentConfiguration];
    v25 = [v24 appHistory];
    [v25 _sessionDidDisconnect];

    v26 = [(DBScreenController *)self environmentConfiguration];
    v27 = [v26 analytics];
    [v27 invalidate];

    v28 = [(DBDashboard *)self userAlertServer];
    [v28 invalidate];

    v29 = [(DBDashboard *)self punchThroughServiceDomainActivationToken];
    [v29 invalidate];

    [(DBDashboard *)self setPunchThroughServiceDomainActivationToken:0];
    v30 = [(DBDashboard *)self punchThroughService];
    [v30 invalidate];

    [(DBDashboard *)self setPunchThroughService:0];
    v31 = [(DBDashboardWorkspaceOwner *)self->_workspaceOwner activeBaseApplicationBundleID];

    if (v31)
    {
      v32 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v33 = [(DBDashboardWorkspaceOwner *)self->_workspaceOwner activeBaseApplicationBundleID];
      [v32 setObject:v33 forKey:@"CARStartApplicationBundleID"];
    }

    if ([(DBNowPlayingObserver *)self->_nowPlayingObserver isPlaying])
    {
      v34 = [(DBNowPlayingObserver *)self->_nowPlayingObserver nowPlayingApplication];
      v35 = [v34 bundleIdentifier];
      v36 = v35;
      v37 = &stru_285A57218;
      if (v35)
      {
        v37 = v35;
      }

      v38 = v37;

      v39 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [v39 setObject:v38 forKey:@"CARPlayingAudioOnDisconnectApplicationBundleID"];
    }

    else
    {
      v39 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [v39 removeObjectForKey:@"CARPlayingAudioOnDisconnectApplicationBundleID"];
    }

    v40 = self->_workspace;
    v41 = [(DBScreenController *)self environmentConfiguration];
    v42 = [v41 appHistory];
    [(DBWorkspace *)v40 removeObserver:v42];

    dashboardStateProvider = self->_dashboardStateProvider;
    v44 = [(DBScreenController *)self environmentConfiguration];
    v45 = [v44 analytics];
    [(DBDashboardStateProvider *)dashboardStateProvider removeObserver:v45];

    v46 = [(DBDashboard *)self dashboardStateProvider];
    v47 = [(DBDashboard *)self voiceControlOverlayController];
    [v46 removeObserver:v47];

    [(DBDashboardWorkspaceOwner *)self->_workspaceOwner invalidate];
    [(DBNotificationViewController *)self->_notificationViewController invalidate];
    notificationViewController = self->_notificationViewController;
    self->_notificationViewController = 0;

    [(DBDynamicContentController *)self->_dynamicContentController invalidate];
    v4 = [MEMORY[0x277D0AAD8] sharedInstance];
    v49 = [v4 sceneWithIdentifier:@"com.apple.CarPlayApp.url-delivery"];

    if (v49)
    {
      [v4 destroyScene:@"com.apple.CarPlayApp.url-delivery" withTransitionContext:0];
    }

    v50 = [(DBDashboard *)self dockLocalScene];
    [v50 invalidate];

    v51 = [(DBDashboard *)self wallpaperLocalScene];
    [v51 invalidate];

    v52 = [(DBDashboard *)self localSceneWorkspace];
    [v52 invalidate];

    v53 = [(DBDashboard *)self climateOverlayScene];
    [v53 removeObserver:self];

    v54 = [(DBDashboard *)self climateOverlayScene];
    [v54 invalidate];

    v55 = [(DBDashboard *)self cameraScene];
    [v55 invalidate];

    v56 = [(DBDashboard *)self voiceControlScene];
    [v56 invalidate];

    v57 = [(DBDashboard *)self overlaySceneWorkspace];
    [v57 invalidate];

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
    v63 = [(DBDashboard *)self focusController];
    [v63 invalidate];

    [(BSInvalidatable *)self->_dispatchingAssertion invalidate];
    [(BSInvalidatable *)self->_dispatchingAssertionACBack invalidate];
    [(BSInvalidatable *)self->_dispatchingAssertionACHome invalidate];
    [(BSInvalidatable *)self->_dispatchingAssertionACSelect invalidate];
    [(BSInvalidatable *)self->_dispatchingAssertionTelephonyDrop invalidate];
    [(BSInvalidatable *)self->_dispatchingAssertionRinger invalidate];
    v64 = [MEMORY[0x277CF9020] sharedInstance];
    [v64 removeObserver:self];

    v65 = DBLogForCategory(0);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v65, OS_LOG_TYPE_DEFAULT, "Invalidating preventPasscodeLockToken", buf, 2u);
    }

    v66 = [(DBDashboard *)self preventPasscodeLockToken];
    [v66 invalidate];

    [(DBDashboard *)self setPreventPasscodeLockToken:0];
    v67 = DBLogForCategory(0);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v67, OS_LOG_TYPE_DEFAULT, "Invalidating preventSpuriousScreenUndimToken", buf, 2u);
    }

    v68 = [(DBDashboard *)self preventSpuriousScreenUndimToken];
    [v68 invalidate];

    [(DBDashboard *)self setPreventSpuriousScreenUndimToken:0];
    v69 = DBLogForCategory(0);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v69, OS_LOG_TYPE_DEFAULT, "Invalidating OEM layout element", buf, 2u);
    }

    v70 = [(DBDashboard *)self oemScreenLayoutElementAssertion];
    [v70 invalidate];

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

- (void)handleEvent:(id)a3
{
  v27[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 type];
  if (v5 <= 6)
  {
    if (v5 <= 3)
    {
      if (v5 == 1)
      {
        v11 = DBLogForCategory(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *v26 = 0;
          _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_INFO, "Taking screen for home event", v26, 2u);
        }

        v12 = [(DBScreenController *)self environmentConfiguration];
        v13 = [v12 session];
        [v13 takeScreenForClient:@"com.apple.CarPlayApp" reason:@"User activated home"];

        [(DBDashboard *)self _handleHomeEvent:v4];
      }

      else if (v5 == 3)
      {
        v10 = [(DBDashboard *)self dockController];
        [v10 relinquishFocus];

        [(DBDashboard *)self setClimateFocusAssertion:0];
      }
    }

    else if (v5 == 4)
    {
      [(DBDashboard *)self _handleOpenApplicationEvent:v4];
    }

    else
    {
      if (v5 == 5)
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

  if (v5 > 9)
  {
    if (v5 == 10)
    {
      [(DBDashboard *)self _handleInterruptPunchthroughEvent:v4];
      goto LABEL_45;
    }

    if (v5 != 11)
    {
      if (v5 == 12)
      {
        [(DBDashboard *)self _handleSmartStackConfigurationEvent:v4];
      }

      goto LABEL_45;
    }

    v15 = [(DBDashboard *)self nowPlayingObserver];
    v9 = [v15 nowPlayingLaunchInfoWithSource:0];

    v16 = [v4 context];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v4 context];
      v18 = [v17 isEqualToNumber:&unk_285AA4670];

      if (!v18)
      {
LABEL_32:
        v19 = [DBEvent eventWithType:4 context:v9];
        [(DBDashboard *)self _handleOpenApplicationEvent:v19];

LABEL_44:
        goto LABEL_45;
      }

      v16 = [(DBMutableWorkspaceStateChangeRequest *)v9 activationSettings];
      [v16 setLaunchSource:4];
    }

    goto LABEL_32;
  }

  if (v5 == 7)
  {
    v20 = DBLogForCategory(6uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&dword_248146000, v20, OS_LOG_TYPE_DEFAULT, "CarPlay radar item long-pressed, gathering screenshots.", v26, 2u);
    }

    v21 = MEMORY[0x277CBEB98];
    v22 = [MEMORY[0x277D0AA90] mainIdentity];
    v27[0] = v22;
    v23 = [(DBDashboard *)self displayIdentity];
    v27[1] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v9 = [v21 setWithArray:v24];

    v25 = [(DBDashboard *)self screenshotManager];
    [v25 saveScreenshotsForDisplayIdentifiers:v9 completion:&__block_literal_global_612];
    goto LABEL_43;
  }

  if (v5 != 8)
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
    v8 = [v4 context];
    if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v9 = v8;
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

    v25 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [DBDashboard handleEvent:];
    }

LABEL_43:

    goto LABEL_44;
  }

  [(DBDashboard *)self _handleReturnToHomeScreenEvent:v4];
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

- (void)didDismissAlertingLiveActivityWithActivityIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DBDashboard *)self notificationViewController];
  [v5 liveActivityRequestsDismissing:v4];
}

- (void)didUpdateAlertingLiveActivityWithActivityDescriptor:(id)a3
{
  v4 = a3;
  if ([(DBDashboard *)self dndActive])
  {
    v5 = DBLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [DBDashboard didUpdateAlertingLiveActivityWithActivityDescriptor:];
    }

    goto LABEL_6;
  }

  v6 = [(DBDashboard *)self dashboardStateProvider];
  v7 = [v6 pageType];

  if (v7 != 1)
  {
    v5 = [(DBDashboard *)self notificationViewController];
    [v5 liveActivityRequestsPresenting:v4];
LABEL_6:
  }
}

- (void)didDismissLiveActivityWithActivityIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DBDashboard *)self notificationViewController];
  [v5 liveActivityRequestsDismissing:v4];
}

- (void)inCallAssertionServiceDidPresent:(id)a3
{
  v4 = [(DBDashboard *)self lockOutController];
  v5 = [v4 isLockedOut];

  if (v5)
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
    v8 = [v7 inCallServiceApplication];

    v9 = objc_alloc_init(DBMutableWorkspaceStateChangeRequest);
    v10 = v9;
    if (v8)
    {
      [(DBMutableWorkspaceStateChangeRequest *)v9 activateStackedApplication:v8];
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

    v13 = [(DBDashboard *)self activeCallScreenBorrowToken];

    if (v13)
    {
      v14 = DBLogForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_248146000, v14, OS_LOG_TYPE_DEFAULT, "Using existing screen borrow token for InCall", v18, 2u);
      }
    }

    else
    {
      v14 = [(DBScreenController *)self environmentConfiguration];
      v15 = [v14 session];
      v16 = [v15 borrowScreenForClient:@"CarPlayApp" reason:@"InCall"];
      [(DBDashboard *)self setActiveCallScreenBorrowToken:v16];
    }
  }
}

- (void)inCallAssertionServiceDidDismiss:(id)a3
{
  v4 = +[DBApplicationController sharedInstance];
  v5 = [v4 inCallServiceApplication];

  v6 = objc_alloc_init(DBMutableWorkspaceStateChangeRequest);
  v7 = v6;
  if (v5)
  {
    [(DBMutableWorkspaceStateChangeRequest *)v6 deactivateApplication:v5];
  }

  [(DBWorkspace *)self->_workspace requestStateChange:v7];
  v8 = [(DBDashboard *)self activeCallScreenBorrowToken];

  if (v8)
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

- (void)inCallAssertionService:(id)a3 didSetBannersEnabled:(BOOL)a4
{
  v4 = a4;
  v11 = *MEMORY[0x277D85DE8];
  v6 = DBLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"DISABLED";
    if (v4)
    {
      v7 = @"ENABLED";
    }

    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Setting banners %@ for InCallService", &v9, 0xCu);
  }

  v8 = [(DBDashboard *)self notificationViewController];
  [v8 setSuspended:!v4 forReason:@"InCallService"];
}

- (id)wallpaperViewForLockOutController:(id)a3
{
  v3 = [(DBDashboard *)self wallpaperHostWindow];
  v4 = [v3 createAdditionalPresentationView];

  return v4;
}

- (void)lockOutController:(id)a3 didChangeFromLockoutMode:(int64_t)a4 toLockOutMode:(int64_t)a5 animated:(BOOL)a6 takeScreen:(BOOL)a7
{
  v98 = a7;
  v7 = a6;
  v114 = *MEMORY[0x277D85DE8];
  v97 = a3;
  v10 = [(DBDashboard *)self lockOutController];
  v11 = [v10 isLockedOut];

  if (a5 == 10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  v13 = [(DBDashboard *)self siriViewController];
  [v13 setPaired:v11 ^ 1];

  v14 = [(DBDashboard *)self persistentElementsManager];

  if (!v14)
  {
    goto LABEL_10;
  }

  if (a5 == 1)
  {
    if (a4 == 9)
    {
      goto LABEL_10;
    }

    v15 = [(DBDashboard *)self persistentElementsManager];
    [v15 clearPersistentElements];
  }

  else
  {
    v15 = [(DBDashboard *)self persistentElementsManager];
    v16 = [(DBScreenController *)self environmentConfiguration];
    v17 = [v16 systemUILayout];
    v18 = [v17 persistentElements];
    [v15 updateWithPersistentElements:v18];
  }

LABEL_10:
  v19 = [(DBDashboard *)self climateOverlayController];
  v20 = v19;
  if (v12)
  {
    v21 = [(DBDashboard *)self persistentElementsManager];
    [v20 setHidden:{objc_msgSend(v21, "hasPersistentElementsForClient:", 0) ^ 1}];
  }

  else
  {
    [v19 setHidden:0];
  }

  v22 = [(DBDashboard *)self persistentElementsManager];
  if (v22)
  {
    v23 = [(DBDashboard *)self persistentElementsManager];
    v24 = [v23 hasPersistentElementsForClient:1];

    if ((v24 & 1) == 0)
    {
      v25 = [(DBDashboard *)self dockController];
      [v25 setHidden:v12];
    }
  }

  v26 = [(DBDashboard *)self mainWindow];
  [v26 setHidden:v12];

  v27 = [(DBDashboard *)self notificationWindow];
  [v27 setHidden:v11];

  v28 = [(DBDashboard *)self notificationViewController];
  [v28 setSuspended:v11 forReason:@"Locked out"];

  v29 = [(DBDashboard *)self audioWindow];
  [v29 setHidden:a5 == 9];

  v30 = [(DBDashboard *)self dynamicContentController];
  [v30 setHidden:v11];

  os_unfair_lock_lock(&self->_lock);
  lock_hasPendingRequestUITake = self->_lock_hasPendingRequestUITake;
  self->_lock_hasPendingRequestUITake = 0;
  os_unfair_lock_unlock(&self->_lock);
  v31 = [(DBScreenController *)self environmentConfiguration];
  v32 = [v31 session];

  if (!v11)
  {
    [(DBDashboard *)self setLockOutFocusAssertion:0];
    v35 = [(DBDashboard *)self rootViewController];
    v36 = [v35 homeViewController];
    v37 = [v36 todayViewController];
    [v37 setSmartWidgetCanChangeVisibilityDisabled:1 forRequester:@"DBConnectAnimationRequester"];

    v38 = [(DBDashboard *)self rootViewController];
    v39 = [v38 homeViewController];
    v40 = [v39 todayViewController];
    [v40 setSceneWidgetsDisabled:1 forRequester:@"DBConnectAnimationRequester"];

    v41 = [(DBDashboard *)self rootViewController];
    v42 = [v41 homeViewController];
    v43 = [v42 todayViewController];
    [v43 setSmartWidgetCanChangeVisibilityDisabled:0 forRequester:@"DBTodayViewSetupRequester"];

    v44 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v45 = [v44 objectForKey:@"CARStartApplicationBundleID"];

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

    v49 = [(DBDashboard *)self rootViewController];
    v94 = [v49 homeViewController];

    v93 = [v94 iconForIdentifier:v45];
    if (v93)
    {
      v50 = [v94 isIconVisible:?] ^ 1;
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

      v64 = [(DBDashboard *)self rootViewController];
      v65 = [(DBActivationSettings *)v64 homeViewController];
      [v65 setCurrentPageType:1 animated:0];
LABEL_44:
      v59 = 0;
      v60 = 0;
LABEL_45:

LABEL_46:
      v66 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [v66 removeObjectForKey:@"CARStartApplicationBundleID"];

      if (![(DBDashboard *)self pendingInCallServiceActivation])
      {
        v70 = 0;
LABEL_51:
        [(DBDashboard *)self setPendingInCallServiceActivation:0];
        if (v60)
        {
          objc_initWeak(buf, self);
          v71 = [(DBDashboard *)self mainWindow];
          [v71 setHidden:1];

          v72 = [(DBDashboard *)self dockController];
          [v72 setHidden:1];

          v99[0] = MEMORY[0x277D85DD0];
          v99[1] = 3221225472;
          v99[2] = __92__DBDashboard_lockOutController_didChangeFromLockoutMode_toLockOutMode_animated_takeScreen___block_invoke_629;
          v99[3] = &unk_278F02328;
          objc_copyWeak(&v101, buf);
          v102 = v98;
          v103 = lock_hasPendingRequestUITake;
          v100 = v32;
          v104 = v70;
          [(DBWorkspaceStateChangeRequest *)v60 setCompletionHandler:v99];
          kdebug_trace();
          v73 = [(DBDashboard *)self workspace];
          [v73 requestStateChange:v60];

          objc_destroyWeak(&v101);
          objc_destroyWeak(buf);

LABEL_64:
          goto LABEL_65;
        }

LABEL_53:
        if (v98)
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

            [v32 takeScreenForClient:@"com.apple.CarPlayApp" reason:@"iOS UI requested"];
          }

          else
          {
            if (v75)
            {
              *buf = 0;
              _os_log_impl(&dword_248146000, v74, OS_LOG_TYPE_DEFAULT, "Taking screen for connection, animating to home screen", buf, 2u);
            }

            [v32 takeScreenForConnection];
          }
        }

        if (a4 == 10)
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
        v69 = [v68 inCallServiceApplication];

        [(DBMutableWorkspaceStateChangeRequest *)v60 activateStackedApplication:v69 withSettings:v67];
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

    v76 = [(DBScreenController *)self environmentConfiguration];
    v77 = [v76 appHistory];
    if ([v77 appDockCategoryForBundleIdentifier:v45] == 2)
    {
      v78 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v79 = [v78 objectForKey:?];
      v80 = [v45 isEqualToString:v79];

      if ((v80 & 1) == 0)
      {
        v81 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        v64 = [v81 objectForKey:@"CARPlayingAudioOnDisconnectApplicationBundleID"];

        v82 = DBLogForCategory(8uLL);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v111 = v45;
          v112 = 2114;
          v113 = v64;
          _os_log_impl(&dword_248146000, v82, OS_LOG_TYPE_DEFAULT, "Requested previous session app %{public}@ is an audio app that was not playing audio on disconnect (last playing app: %{public}@); ignoring.", buf, 0x16u);
        }

        v65 = [(DBDashboard *)self rootViewController];
        v83 = [v65 homeViewController];
        [v83 setCurrentPageType:1 animated:0];

        goto LABEL_44;
      }
    }

    else
    {
    }

    v64 = objc_alloc_init(DBActivationSettings);
    [(DBActivationSettings *)v64 setAnimated:0];
    [(DBActivationSettings *)v64 setWaitForCommit:1];
    [(DBActivationSettings *)v64 setFailInterval:3.5];
    v60 = objc_alloc_init(DBMutableWorkspaceStateChangeRequest);
    [(DBMutableWorkspaceStateChangeRequest *)v60 activateApplication:v48 withSettings:v64];
    v65 = [v48 appPolicy];
    v59 = +[DBAppHistory contextForApplicationCategory:](DBAppHistory, "contextForApplicationCategory:", [v65 applicationCategory]);
    if (v59)
    {
      v91 = [(DBScreenController *)self environmentConfiguration];
      v90 = [v91 appHistory];
      v84 = [v90 sessionAppContextURLs];
      v89 = [v84 containsObject:v59];

      if (v89)
      {
        v92 = [(DBScreenController *)self environmentConfiguration];
        v105[0] = MEMORY[0x277D85DD0];
        v105[1] = 3221225472;
        v105[2] = __92__DBDashboard_lockOutController_didChangeFromLockoutMode_toLockOutMode_animated_takeScreen___block_invoke_628;
        v105[3] = &unk_278F021F8;
        v106 = v59;
        v107 = v32;
        [v92 fetchEnhancedIntegrationStatusWithCompletion:v105];

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

  if (v98)
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

      [v32 takeScreenForClient:@"CarPlayApp" reason:@"iOS UI requested"];
    }

    else
    {
      if (v34)
      {
        *buf = 0;
        _os_log_impl(&dword_248146000, v33, OS_LOG_TYPE_DEFAULT, "Taking screen for connection, to lockout", buf, 2u);
      }

      [v32 takeScreenForConnection];
    }
  }

  v51 = [(DBDashboard *)self lockOutController];
  v52 = [v51 lockOutWindow];
  [v52 setHidden:0];

  objc_initWeak(buf, self);
  v53 = [(DBDashboard *)self lockOutController];
  v54 = [v53 lockOutViewController];
  v108[0] = MEMORY[0x277D85DD0];
  v108[1] = 3221225472;
  v108[2] = __92__DBDashboard_lockOutController_didChangeFromLockoutMode_toLockOutMode_animated_takeScreen___block_invoke;
  v108[3] = &unk_278F02300;
  objc_copyWeak(&v109, buf);
  [v54 setLockOutMode:a5 animated:v7 completion:v108];

  v55 = [(DBDashboard *)self focusController];
  v56 = [(DBDashboard *)self lockOutController];
  v57 = [v56 lockOutWindow];
  v58 = [v55 deferFocusToWindow:v57 priority:7 reason:@"lockout"];

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

- (void)_handleSiriPrewarmWithTimestamp:(double)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(DBDashboard *)self lockOutController];
  v6 = [v5 isLockedOut];

  if (v6)
  {
    v7 = DBLogForCategory(3uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [DBDashboard _handleSiriPrewarmWithTimestamp:?];
    }
  }

  else
  {
    v8 = [(DBDashboard *)self siriPrewarmAssertion];

    if (v8)
    {
      v9 = DBLogForCategory(3uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [DBDashboard _handleSiriPrewarmWithTimestamp:];
      }

      v10 = [(DBDashboard *)self siriPrewarmAssertion];
      [v10 invalidate];

      [(DBDashboard *)self setSiriPrewarmAssertion:0];
      [(DBDashboard *)self setSiriPrewarmTimestamp:-1.0];
    }

    v11 = DBLogForCategory(3uLL);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (a3 <= -1.0)
    {
      if (v12)
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, "Received Siri prewarm action", &v16, 2u);
      }

      v13 = [(DBDashboard *)self siriButtonSource];
      v14 = [v13 prepareForActivation];
    }

    else
    {
      if (v12)
      {
        v16 = 134217984;
        v17 = a3;
        _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, "Received Siri prewarm action, sending accessory timestamp: %f", &v16, 0xCu);
      }

      v13 = [(DBDashboard *)self siriButtonSource];
      v14 = [v13 prepareForActivationWithTimestamp:a3];
    }

    v15 = v14;
    [(DBDashboard *)self setSiriPrewarmAssertion:v14];

    [(DBDashboard *)self setSiriPrewarmTimestamp:a3];
  }
}

- (void)_handleSiriButtonDownWithTimestamp:(double)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [(DBDashboard *)self lockOutController];
  v6 = [v5 isLockedOut];

  v7 = DBLogForCategory(3uLL);
  v8 = v7;
  if (v6)
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
    _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "Received external Siri button down action", v23, 2u);
  }

  v9 = [(DBDashboard *)self siriButtonAssertion];

  if (v9)
  {
    v10 = DBLogForCategory(3uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [DBDashboard _handleSiriButtonDownWithTimestamp:];
    }

    v11 = [(DBDashboard *)self siriButtonAssertion];
    [v11 invalidate];

    [(DBDashboard *)self setSiriButtonAssertion:0];
  }

  Current = CFAbsoluteTimeGetCurrent();
  [(DBDashboard *)self siriPrewarmTimestamp];
  if (v13 > -1.0)
  {
    [(DBDashboard *)self siriPrewarmTimestamp];
    a3 = v14;
    v15 = DBLogForCategory(3uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 134217984;
      *&v23[4] = a3;
      v16 = "Using prewarm timestamp: %f";
LABEL_16:
      _os_log_impl(&dword_248146000, v15, OS_LOG_TYPE_DEFAULT, v16, v23, 0xCu);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if (a3 > -1.0)
  {
    v15 = DBLogForCategory(3uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 134217984;
      *&v23[4] = a3;
      v16 = "Using button down timestamp from accessory: %f";
      goto LABEL_16;
    }

LABEL_17:

    Current = a3;
  }

  v17 = [(DBDashboard *)self siriButtonSource];
  v18 = [v17 speechInteractionActivityWithTimestamp:Current];
  [(DBDashboard *)self setSiriButtonAssertion:v18];

  v19 = [(DBDashboard *)self siriPrewarmAssertion];

  if (v19)
  {
    v20 = DBLogForCategory(3uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_248146000, v20, OS_LOG_TYPE_DEFAULT, "Invalidating Siri prewarm assertion", v23, 2u);
    }

    v21 = [(DBDashboard *)self siriPrewarmAssertion];
    [v21 invalidate];

    [(DBDashboard *)self setSiriPrewarmAssertion:0];
  }

  v22 = DBLogForCategory(3uLL);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&dword_248146000, v22, OS_LOG_TYPE_DEFAULT, "Sending Siri long press event", v23, 2u);
  }

  v8 = [(DBDashboard *)self siriButtonSource];
  [v8 didRecognizeLongPress];
LABEL_25:
}

- (void)_handleSiriButtonUpWithTimestamp:(double)a3
{
  v4 = [(DBDashboard *)self lockOutController];
  v5 = [v4 isLockedOut];

  v6 = DBLogForCategory(3uLL);
  v7 = v6;
  if (v5)
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

    v8 = [(DBDashboard *)self siriPrewarmAssertion];

    if (v8)
    {
      v9 = DBLogForCategory(3uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "Invalidating Siri prewarm assertion", v14, 2u);
      }

      v10 = [(DBDashboard *)self siriPrewarmAssertion];
      [v10 invalidate];

      [(DBDashboard *)self setSiriPrewarmAssertion:0];
    }

    v11 = DBLogForCategory(3uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_INFO, "Invalidating Siri button down assertion", v13, 2u);
    }

    v12 = [(DBDashboard *)self siriButtonAssertion];
    [v12 invalidatedAtTimestamp:CFAbsoluteTimeGetCurrent()];

    [(DBDashboard *)self setSiriButtonAssertion:0];
  }

  [(DBDashboard *)self setSiriPrewarmTimestamp:-1.0];
}

- (void)session:(id)a3 handleSiriRequestEvent:(int64_t)a4 withPayload:(id)a5
{
  v9 = [a5 objectForKey:*MEMORY[0x277CC17A0]];
  v7 = objc_opt_respondsToSelector();
  v8 = -1.0;
  if (v7)
  {
    [v9 doubleValue];
  }

  switch(a4)
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

- (void)session:(id)a3 openURL:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 absoluteString];
  v7 = DBLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Received openURL request for %@", buf, 0xCu);
  }

  if (v6)
  {
    [(DBDashboard *)self _handleSessionURL:v5];
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

- (void)session:(id)a3 isPlayingVideoFromApp:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = DBLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v5;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Received isPlayingVideoFromApp: %@", &v14, 0xCu);
  }

  if ([(__CFString *)v5 isEqualToString:@"com.apple.WebKit.GPU"])
  {

    v5 = @"com.apple.mobilesafari";
  }

  v7 = [(DBDashboard *)self nowPlayingObserver];
  [v7 handleVideoStartedFromBundleIdentifier:v5];

  v8 = objc_alloc_init(DBActivationSettings);
  [(DBActivationSettings *)v8 setTakeScreen:0];
  [(DBActivationSettings *)v8 setAnimated:0];
  [(DBActivationSettings *)v8 setWaitForCommit:1];
  [(DBActivationSettings *)v8 setLaunchSource:6];
  v9 = [(DBDashboard *)self nowPlayingObserver];
  v10 = [v9 nowPlayingLaunchInfoWithSource:0];

  if (v10)
  {
    v11 = [v10 application];
    v12 = [DBApplicationLaunchInfo launchInfoForApplication:v11 withActivationSettings:v8];

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

- (void)_launchAppWithInfo:(id)a3 forURL:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 absoluteString];
  v9 = [v6 application];
  v10 = DBLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 bundleIdentifier];
    *buf = 138412290;
    v36 = v11;
    _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_DEFAULT, "Resolved URL request to %@", buf, 0xCu);
  }

  v12 = [(DBDashboard *)self workspace];
  v13 = [v12 state];
  v14 = [v13 activeBundleIdentifier];

  v15 = [v9 bundleIdentifier];
  LODWORD(v13) = [v14 isEqualToString:v15];

  if (v13)
  {
    v16 = [(DBScreenController *)self environmentConfiguration];
    v27 = [v16 session];

    v17 = [(DBScreenController *)self environmentConfiguration];
    [v17 appHistory];
    v18 = v9;
    v19 = v7;
    v21 = v20 = v8;
    v22 = [v21 sessionEchoContextURLs];
    v23 = [v22 containsObject:v20];

    v8 = v20;
    v7 = v19;
    v9 = v18;

    v24 = [(DBScreenController *)self environmentConfiguration];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __41__DBDashboard__launchAppWithInfo_forURL___block_invoke;
    v28[3] = &unk_278F02350;
    v29 = v6;
    v30 = v27;
    v34 = v23;
    v31 = v8;
    v32 = self;
    v33 = v7;
    v25 = v27;
    [v24 fetchEnhancedIntegrationStatusWithCompletion:v28];
  }

  v26 = [DBEvent eventWithType:4 context:v6];
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

- (void)_handleSessionURL:(id)a3
{
  v87 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 absoluteString];
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
  v6 = [(DBDashboard *)self rootViewController];
  v62 = [v6 homeViewController];

  v7 = objc_alloc_init(DBActivationSettings);
  v8 = [(DBScreenController *)self environmentConfiguration];
  v9 = [v8 session];
  -[DBActivationSettings setAnimated:](v7, "setAnimated:", [v9 carOwnsScreen] ^ 1);
  -[DBActivationSettings setWaitForCommit:](v7, "setWaitForCommit:", [v9 carOwnsScreen]);
  [(DBActivationSettings *)v7 setUrl:v4];
  v10 = +[DBApplicationController sharedInstance];
  if (([v5 hasPrefix:@"maps:"] & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"maps:/car/destinations"))
  {
    v11 = [v8 navigationStateProvider];
    v12 = [v11 mostRecentNavigatingApp];

    if (v12)
    {
      v13 = [v10 applicationWithBundleIdentifier:v12];
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

  if ([v5 hasPrefix:@"nowplaying:"])
  {
    v16 = [(DBDashboard *)self nowPlayingObserver];
    v17 = [v16 nowPlayingLaunchInfoWithSource:0];
    v18 = v74[5];
    v74[5] = v17;

    if (v74[5])
    {
LABEL_14:
      v14 = 0;
      goto LABEL_10;
    }

    v12 = DBLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = 2;
      _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "No available now playing app; defaulting to audio category.", buf, 2u);
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
    v64 = v4;
    v65 = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);

    goto LABEL_11;
  }

  if ([v5 hasPrefix:@"climate:"])
  {
    v19 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v4 resolvingAgainstBaseURL:0];
    v20 = [v19 queryItems];
    v21 = [v20 bs_firstObjectPassingTest:&__block_literal_global_640];

    [v9 takeScreenForClient:@"com.apple.CarPlayApp" reason:@"iOS UI requested"];
    v22 = [(DBDashboard *)self climateOverlayController];
    v23 = [v21 value];
    [v22 requestQuickControlWithZone:v23];

    goto LABEL_11;
  }

  if ([v5 hasPrefix:@"radio"])
  {
    v24 = [(DBScreenController *)self environmentConfiguration];
    v25 = [v24 isVehicleDataSession];

    if (v25)
    {
      v26 = [v10 radioApplication];
LABEL_20:
      v14 = 0;
      v12 = v80[5];
      v80[5] = v26;
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

  if ([v5 hasPrefix:@"music:"])
  {
    v27 = [v10 musicApplication];
    v28 = v80[5];
    v80[5] = v27;

    if (v80[5])
    {
      goto LABEL_14;
    }

    v29 = [(DBScreenController *)self environmentConfiguration];
    v30 = [v29 appHistory];
    v31 = [v30 orderedAppsMatchingDockCategory:2];

    v32 = [v31 firstObject];
    v33 = v80[5];
    v80[5] = v32;

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

  if (![v5 hasPrefix:@"mobilephone:"])
  {
    if ([v5 hasPrefix:@"messages:"])
    {
      v26 = [v10 messagesApplication];
      goto LABEL_20;
    }

    if ([v5 hasPrefix:@"app:"])
    {
      v60 = [v5 stringByReplacingOccurrencesOfString:@"://" withString:@":"];

      v41 = [v60 componentsSeparatedByString:@":"];
      v58 = [v41 lastObject];

      v42 = [v10 applicationWithBundleIdentifier:v58];
      v43 = v80[5];
      v80[5] = v42;

      if (v80[5])
      {
        v44 = [(DBScreenController *)self environmentConfiguration];
        v45 = [v44 appHistory];
        v46 = [v80[5] bundleIdentifier];
        v47 = [v45 applicationVisibleInCarPlay:v46 withIconProvider:v62];

        if (v47)
        {
          v48 = [(DBScreenController *)self environmentConfiguration];
          v69[0] = MEMORY[0x277D85DD0];
          v69[1] = 3221225472;
          v69[2] = __33__DBDashboard__handleSessionURL___block_invoke_659;
          v69[3] = &unk_278F023C0;
          v69[4] = self;
          v72 = &v79;
          v70 = v7;
          v71 = v4;
          [v48 fetchEnhancedIntegrationStatusWithCompletion:v69];
        }
      }

      else
      {
        v52 = DBLogForCategory(0);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v86 = v4;
          _os_log_impl(&dword_248146000, v52, OS_LOG_TYPE_DEFAULT, "No available app for requestUI URL %{public}@", buf, 0xCu);
        }
      }

      v5 = v60;
      goto LABEL_11;
    }

    if ([v5 hasPrefix:@"search:"])
    {
      v49 = [(DBDashboard *)self siriSimpleActivationSource];
      [v49 activateFromSource:10];

      goto LABEL_11;
    }

    if (![v5 hasPrefix:@"punchthrough:"])
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
      [(DBDashboard *)self _handleAppSchemeURL:v4 activationSettings:v7];
      goto LABEL_11;
    }

    v12 = [MEMORY[0x277CCACE0] componentsWithString:v5];
    v61 = [v12 host];
    v50 = [v12 queryItems];
    v51 = [v50 indexOfObjectPassingTest:&__block_literal_global_666];

    if (v51 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v59 = @"present";
    }

    else
    {
      v57 = [v12 queryItems];
      v53 = [v57 objectAtIndex:v51];
      v54 = [v53 value];
      v59 = [v54 lowercaseString];
    }

    if ([v61 length])
    {
      if (![(__CFString *)v59 caseInsensitiveCompare:@"present"])
      {
        [(DBDashboard *)self _presentPunchthroughWithIdentifier:v61];
        goto LABEL_72;
      }

      if (![(__CFString *)v59 caseInsensitiveCompare:@"dismiss"])
      {
        [(DBDashboard *)self _dismissPunchthroughWithIdentifier:v61];
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
    v26 = [v10 phoneApplication];
    goto LABEL_20;
  }

  v35 = [v10 inCallServiceApplication];
  v36 = v80[5];
  v80[5] = v35;

  if (v80[5])
  {
    v37 = objc_alloc_init(DBActivationSettings);
    v38 = [MEMORY[0x277CBEBC0] faceTimeShowCarPlayInCallUIURL];
    [(DBActivationSettings *)v37 setUrl:v38];

    v39 = [DBApplicationLaunchInfo launchInfoForApplication:v80[5] withActivationSettings:v37];
    [(DBDashboard *)self _handleBackgroundURLDeliveryForLaunchInfo:v39];
  }

  v40 = DBLogForCategory(0);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248146000, v40, OS_LOG_TYPE_DEFAULT, "Taking screen for requestUI mobilephone, launching to in-call UI", buf, 2u);
  }

  [v9 takeScreenForClient:@"com.apple.CarPlayApp" reason:@"iOS UI requested"];
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

- (void)_handleAppSchemeURL:(id)a3 activationSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DBDashboard *)self rootViewController];
  v9 = [v8 homeViewController];

  v10 = [(DBScreenController *)self environmentConfiguration];
  v11 = [v10 appHistory];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__DBDashboard__handleAppSchemeURL_activationSettings___block_invoke;
  v13[3] = &unk_278F02430;
  v13[4] = self;
  v14 = v6;
  v12 = v6;
  [v11 openApplicationURL:v12 withIconProvider:v9 activationSettings:v7 completion:v13];
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

- (void)session:(id)a3 receivedUnhandledRemoteEvent:(id)a4 withPayload:(id)a5
{
  v7 = a4;
  v8 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__DBDashboard_session_receivedUnhandledRemoteEvent_withPayload___block_invoke;
  block[3] = &unk_278F015F8;
  v12 = v7;
  v13 = v8;
  v14 = self;
  v9 = v8;
  v10 = v7;
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

- (CGRect)_rectForFocusedRectDictionary:(id)a3
{
  v4 = a3;
  v5 = [(DBScreenController *)self environmentConfiguration];
  [v5 screenScale];
  v7 = v6;

  v8 = [v4 objectForKeyedSubscript:@"originXPixels"];
  [v8 floatValue];
  v10 = v9 / v7;
  v11 = [v4 objectForKeyedSubscript:@"originYPixels"];
  [v11 floatValue];
  v13 = v12 / v7;
  v14 = [v4 objectForKeyedSubscript:@"widthPixels"];
  [v14 floatValue];
  v16 = v15 / v7;
  v17 = [v4 objectForKeyedSubscript:@"heightPixels"];

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

- (void)alertServer:(id)a3 wantsAppPresentationForAlert:(id)a4 bundleID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DBDashboard *)self workspaceOwner];
  [v11 alertServer:v10 wantsAppPresentationForAlert:v9 bundleID:v8];
}

- (void)alertServer:(id)a3 wantsAppDismissalForAlert:(id)a4 bundleID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DBDashboard *)self workspaceOwner];
  [v11 alertServer:v10 wantsAppDismissalForAlert:v9 bundleID:v8];
}

- (void)alertServer:(id)a3 wantsSystemPresentationForViewController:(id)a4
{
  v4 = DBLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [DBDashboard alertServer:wantsSystemPresentationForViewController:];
  }
}

- (void)alertServer:(id)a3 wantsSystemDismissalForViewController:(id)a4
{
  v4 = DBLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [DBDashboard alertServer:wantsSystemPresentationForViewController:];
  }
}

- (void)willPresentPresentable:(id)a3 forNotificationViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 visibleNotificationScene];
  if (v8)
  {
    v9 = [(DBDashboard *)self dockController];
    if (!v9 || (v10 = v9, -[DBDashboard dockController](self, "dockController"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 statusBarOverrideInterfaceStyle], v11, v10, !v12))
    {
      v12 = [(DBDashboard *)self _sceneInterfaceStyleForScene:v8];
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __68__DBDashboard_willPresentPresentable_forNotificationViewController___block_invoke;
    v21[3] = &__block_descriptor_40_e43_v16__0__UIMutableApplicationSceneSettings_8l;
    v21[4] = v12;
    [v8 updateUISettingsWithBlock:v21];
    v13 = [v7 presentableIsOEMNotification:v6];
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

    v16 = [(DBDashboard *)self focusController];
    v17 = [v16 deferFocusToScene:v8 priority:v14 reason:@"notification"];

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

  [v7 notificationHeight];
  v19 = v18;
  v20 = [(DBDashboard *)self workspaceOwner];
  [v20 setBannerHeight:v19];
}

- (void)didDismissPresentable:(id)a3 forNotificationViewController:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  [(DBDashboard *)self setNotificationFocusAssertion:0];
  v8 = [(DBDashboard *)self workspaceOwner];
  [v8 setBannerHeight:0.0];

  LODWORD(v8) = [v6 presentableIsOEMNotification:v7];
  if (v8 && self->_interruptedPunchthroughIdentifier)
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

- (void)environmentConfiguration:(id)a3 appearanceStyleDidChange:(int64_t)a4
{
  v5 = DBLogForCategory(0x13uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Appearance style changed for environment, updating user interface style", v6, 2u);
  }

  [(DBDashboard *)self _updateUserInterfaceStyle];
}

- (void)environmentConfiguration:(id)a3 appearancePreferenceDidChange:(int64_t)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = DBLogForCategory(0x13uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    *buf = 138412290;
    v14 = v7;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Appearance preference changed to (%@), sending an update with UISync", buf, 0xCu);
  }

  v8 = [(DBScreenController *)self environmentConfiguration];
  v9 = [v8 uisyncSession];
  v12 = 0;
  [v9 sendAppearancePreferenceWithPreference:a4 error:&v12];
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

- (void)environmentConfiguration:(id)a3 nightModeDidChange:(BOOL)a4
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

- (void)environmentConfiguration:(double)a3 viewAreaDidChangeFromViewAreaFrame:(double)a4 safeAreaInsets:(double)a5 toViewAreaFrame:(double)a6 safeAreaInsets:(double)a7 duration:(double)a8 transitionControlType:(double)a9
{
  v181[2] = *MEMORY[0x277D85DE8];
  v29 = [a1 workspace];
  v30 = [v29 state];
  v31 = [v30 activeBundleIdentifier];

  v32 = +[DBApplicationController sharedInstance];
  v33 = [v32 applicationWithBundleIdentifier:v31];

  v34 = [a1 layoutEngine];
  [v34 areaOfInterestFrameForApplication:v33];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  v43 = [a1 rootViewController];
  if (a18 <= 0.0)
  {
    v90 = [a1 interestingWindow];
    [v90 setFrame:{v36, v38, v40, v42}];

    v91 = [a1 cornerRadiusWindow];
    v92 = [a1 layoutEngine];
    [v92 cornerRadiusWindowFrame];
    [v91 setFrame:?];

    [a1 _updateWindowFrames];
    [a1 _updateAppScenesViewArea];
    v93 = [a1 dockController];
    [v93 updateLayoutForCurrentViewArea];

    v94 = [a1 climateOverlayController];
    [v94 updateLayoutForCurrentViewArea];

    v95 = [v43 homeViewController];
    [v95 _setupIconModelWithRelayout:1];

    v96 = +[DBApplicationController sharedInstance];
    v97 = [v96 siriApplication];

    v98 = [a1 siriViewController];
    [a1 sceneFrameForApplication:v97];
    [v98 handleTransitionToFrame:?];

    v99 = [a1 notificationViewController];
    v100 = [a1 notificationWindow];
    [v100 frame];
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v108 = v107;
    v109 = [a1 layoutEngine];
    [v109 notificationWindowFrame];
    [v99 handleTransitionFromFrame:v102 toFrame:{v104, v106, v108, v110, v111, v112, v113}];

    v114 = [v43 homeViewController];
    [v114 restartPageControlTimerIfNecessary];
  }

  else
  {
    v139 = v36;
    v140 = v38;
    v141 = v33;
    v142 = v31;
    v44 = a2 + a7;
    v45 = a4 - (a7 + a9);
    v46 = [a1 _takeSnapshotOfFrame:{v44, a3 + a6, v45, a5 - (a6 + a8)}];
    [v46 setAutoresizingMask:18];
    v47 = [a1 _newResizeAnimationWindow];
    [a1 setResizeWindow:v47];
    v48 = objc_alloc(MEMORY[0x277D75D18]);
    v49 = [v48 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v49 setClipsToBounds:1];
    v150 = v47;
    [v47 addSubview:v49];
    [v49 setFrame:{v44, a3 + a6, v45, a5 - (a6 + a8)}];
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
    v54 = [(DBAnimationView *)v50 layer];
    v144 = v53;
    v146 = v52;
    v180[0] = v52;
    v180[1] = v53;
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v180 count:2];
    [v54 setFilters:v55];

    [v49 addSubview:v50];
    [v49 bounds];
    [(DBAnimationView *)v50 setFrame:?];
    [(DBAnimationView *)v50 addSubview:v46];
    [(DBAnimationView *)v50 bounds];
    v148 = v46;
    [v46 setFrame:?];
    [MEMORY[0x277CD9FF0] commit];
    [a1 _updateAppScenesViewArea];
    [a1 _updateWindowFrames];
    v56 = [a1 dockController];
    [v56 updateLayoutForCurrentViewArea];

    v57 = [a1 climateOverlayController];
    [v57 updateLayoutForCurrentViewArea];

    v58 = [a1 notificationViewController];
    v59 = [a1 notificationWindow];
    [v59 frame];
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v68 = [a1 layoutEngine];
    [v68 notificationWindowFrame];
    [v58 handleTransitionFromFrame:v61 toFrame:{v63, v65, v67, v69, v70, v71, v72}];

    v73 = +[DBApplicationController sharedInstance];
    v74 = [v73 siriApplication];

    v75 = [a1 siriViewController];
    v138 = v74;
    [a1 sceneFrameForApplication:v74];
    [v75 handleTransitionToFrame:?];

    v76 = [a1 rootViewController];
    v77 = [v76 homeViewController];
    v78 = [v77 folderController];
    v79 = [v78 folderControllers];
    v80 = [v79 firstObject];

    v81 = [v80 currentPageIndex];
    v152 = v43;
    v82 = [v43 homeViewController];
    [v82 _setupIconModelWithRelayout:1];

    v83 = [a1 rootViewController];
    v84 = [v83 homeViewController];
    v85 = [v84 folderController];
    v86 = [v85 folderControllers];
    v87 = [v86 firstObject];

    v136 = v80;
    if (v80 != v87)
    {
      if (v81 > [v87 maximumPageIndex])
      {
        v81 = [v87 maximumPageIndex];
      }

      [v87 setCurrentPageIndex:v81 animated:0];
    }

    [MEMORY[0x277CD9FF0] commit];
    v88 = [a1 _takeSnapshotOfFrame:{a10 + a15, a11 + a14, a12 - (a15 + a17), a13 - (a14 + a16)}];
    [v88 setAutoresizingMask:18];
    if (a18 >= 0.5)
    {
      v115 = objc_alloc_init(_TtC9DashBoard29DBIconLayerViewWithLegibility);
      v116 = [a1 environmentConfiguration];
      v117 = [v116 iconImageAppearance];

      v118 = [a1 environmentConfiguration];
      [v118 pointScale];
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
      v174 = v117;
      v89 = v115;
      v175 = v89;
      v128 = v117;
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
    v157 = a1;
    v165 = a13 - (a14 + a16);
    v166 = v139;
    v167 = v140;
    v168 = v40;
    v169 = v42;
    v158 = v148;
    v159 = v172;
    v43 = v152;
    v160 = v152;
    v131 = v172;
    v132 = v148;
    v133 = v49;
    v134 = v88;
    v135 = v171;
    [v130 animateWithDuration:v170 animations:v153 completion:0.25];

    v31 = v142;
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

- (void)environmentConfiguration:(id)a3 canvasOverrideSizeDidChange:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v26 = *MEMORY[0x277D85DE8];
  v7 = [_TtC9DashBoard14DBResizeWindow alloc];
  v8 = [(DBScreenController *)self windowScene];
  v9 = [(DBDashboard *)self layoutEngine];
  [v9 resizeAnimationWindowFrame];
  v10 = [(DBResizeWindow *)v7 initWithWindowScene:v8 frame:?];

  [(DBResizeWindow *)v10 setHidden:0];
  [(DBResizeWindow *)v10 setAlpha:0.0];
  [(DBDashboard *)self setDisplayScaleWindow:v10];
  v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v11 setObject:MEMORY[0x277CBEC38] forKey:@"DBReconnectingWithNewOverrideCanvasKey"];

  v12 = DBLogForCategory(0x1BuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [(DBDashboard *)self displayConfiguration];
    v27.width = width;
    v27.height = height;
    v14 = NSStringFromCGSize(v27);
    *buf = 138543618;
    v23 = v13;
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

- (void)environmentConfiguration:(id)a3 homeScreenStyleDidChange:(id)a4
{
  v5 = a4;
  v7 = [(DBDashboard *)self _homeScreenStyleTraitOverrides];
  v6 = [(DBScreenController *)self environmentConfiguration];
  -[DBDashboard _updateTraitOverridesForTraitOverrides:withHomeScreenStyleData:userInterfaceStyle:](self, "_updateTraitOverridesForTraitOverrides:withHomeScreenStyleData:userInterfaceStyle:", v7, v5, [v6 resolvedUserInterfaceStyle]);
}

- (id)_homeScreenStyleTraitOverrides
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(DBScreenController *)self windowScene];

  if (v4)
  {
    v5 = [(DBScreenController *)self windowScene];
    v6 = [v5 traitOverrides];
    [v3 addObject:v6];
  }

  v7 = [(DBDashboard *)self wallpaperWindow];

  if (v7)
  {
    v8 = [(DBDashboard *)self wallpaperWindow];
    v9 = [v8 windowScene];
    v10 = [v9 traitOverrides];
    [v3 addObject:v10];
  }

  v11 = [(DBDashboard *)self notificationWindow];

  if (v11)
  {
    v12 = [(DBDashboard *)self notificationWindow];
    v13 = [v12 windowScene];
    v14 = [v13 traitOverrides];
    [v3 addObject:v14];
  }

  v15 = [(DBDashboard *)self dockController];

  if (v15)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = [(DBDashboard *)self dockController];
    v17 = [v16 traitOverridableObjects];

    v18 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v24 + 1) + 8 * i) traitOverrides];
          [v3 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v19);
    }
  }

  return v3;
}

- (void)_updateAppScenesViewArea
{
  v2 = [(DBDashboard *)self workspaceOwner];
  [v2 updateApplicationSceneFrames];
}

- (void)_updateWindowFrames
{
  v3 = [(DBScreenController *)self environmentConfiguration];
  [v3 currentSafeViewAreaFrame];
  v42 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [(DBDashboard *)self wallpaperHostWindow];
  v12 = [v11 localScene];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __34__DBDashboard__updateWindowFrames__block_invoke;
  v44[3] = &unk_278F02568;
  v44[4] = self;
  [v12 updateSettingsWithBlock:v44];

  v13 = [(DBDashboard *)self layoutEngine];
  [v13 wallpaperWindowFrame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [(DBDashboard *)self wallpaperWindow];
  [v22 setFrame:{v15, v17, v19, v21}];

  v23 = [(DBScreenController *)self environmentConfiguration];
  LODWORD(v22) = [v23 currentViewAreaSupportsUIOutsideSafeArea];

  v24 = [(DBDashboard *)self rootViewController];
  v25 = 0.0;
  if (v22)
  {
    [(DBDashboard *)self currentCornerRadius];
  }

  [v24 setContentCornerRadius:v25];

  v26 = [(DBDashboard *)self layoutEngine];
  [v26 rootViewControllerContentInsets];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = [(DBDashboard *)self rootViewController];
  [v35 setAdditionalSafeAreaInsets:{v28, v30, v32, v34}];

  v36 = [(DBDashboard *)self dockLocalScene];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __34__DBDashboard__updateWindowFrames__block_invoke_2;
  v43[3] = &unk_278F02568;
  v43[4] = self;
  [v36 updateSettingsWithBlock:v43];
  v37 = [(DBDashboard *)self notificationWindow];
  v38 = [(DBDashboard *)self layoutEngine];
  [v38 notificationWindowFrame];
  [v37 setFrame:?];

  v39 = [(DBDashboard *)self lockOutController];
  v40 = [v39 lockOutWindow];
  [v40 setFrame:{v42, v6, v8, v10}];

  v41 = [(DBDashboard *)self userAlertServer];
  [(DBDashboard *)self statusBarInsets];
  [v41 updateAlertSceneFramesWithSafeAreaInsets:?];
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
  v3 = [(DBScreenController *)self environmentConfiguration];
  v4 = [v3 isPairedVehicle];

  if (v4)
  {
    v5 = DBLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Invalidating preventPasscodeLockToken", buf, 2u);
    }

    v6 = [(DBDashboard *)self preventPasscodeLockToken];
    [v6 invalidate];

    [(DBDashboard *)self setPreventPasscodeLockToken:0];
  }

  else
  {
    v7 = [(DBDashboard *)self preventPasscodeLockToken];
    if (v7)
    {
    }

    else
    {
      v8 = [(DBScreenController *)self environmentConfiguration];
      v9 = [v8 isPairedVehicle];

      if ((v9 & 1) == 0)
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
  v3 = [(DBDashboard *)self rootViewController];
  v4 = [v3 homeViewController];
  v5 = [v4 folderController];
  v6 = [v5 folderControllers];
  v12 = [v6 firstObject];

  v7 = [v12 minimumPageIndex];
  if ([v12 currentPageIndex] == v7 && v7 != objc_msgSend(v12, "firstIconPageIndex"))
  {
    [(DBDashboard *)self _animateStartupFromScaledMainWindow];
  }

  else
  {
    v8 = [(DBDashboard *)self rootViewController];
    v9 = [v8 view];
    [v9 setNeedsLayout];

    v10 = [(DBDashboard *)self rootViewController];
    v11 = [v10 view];
    [v11 layoutIfNeeded];

    [(DBDashboard *)self _animateStartupToIcons];
  }
}

- (void)_animateStartupToIcons
{
  v3 = [(DBDashboard *)self rootViewController];
  v4 = [v3 homeViewController];
  v5 = [v4 folderController];
  v6 = [v5 folderControllers];
  v7 = [v6 firstObject];

  v8 = [(DBDashboard *)self dockController];
  [v8 setHidden:0];

  v9 = [(DBDashboard *)self persistentElementsManager];
  if (v9 && (v10 = v9, -[DBDashboard persistentElementsManager](self, "persistentElementsManager"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 hasPersistentElementsForClient:1], v11, v10, (v12 & 1) == 0))
  {
    v13 = [(DBDashboard *)self dockController];
    v50 = [v13 prepareForSlideAnimation];
  }

  else
  {
    v50 = 0;
  }

  v14 = [(DBDashboard *)self wallpaperHostWindow];
  [v14 setHidden:0];

  v15 = [(DBDashboard *)self mainWindow];
  [v15 setHidden:0];

  v16 = [(DBDashboard *)self climateOverlayController];
  [v16 setHidden:0];

  v17 = [(DBDashboard *)self climateOverlayController];
  v18 = [v17 climateWindow];

  v49 = v18;
  [v18 setHidden:0];
  v19 = [(DBDashboard *)self lockOutController];
  v20 = [v19 lockOutWindow];

  [v20 setHidden:0];
  v21 = [(DBDashboard *)self rootViewController];
  v22 = [v21 homeViewController];

  v23 = [v22 view];
  [v23 setClipsToBounds:0];

  v24 = [(DBScreenController *)self environmentConfiguration];
  [v24 isRightHandDrive];

  v25 = [MEMORY[0x277CBEB18] array];
  v26 = [v7 iconListViews];
  if ([v26 count] >= 2)
  {
    v27 = [v26 objectAtIndex:1];
    [v25 addObject:v27];
  }

  v46 = v26;
  v28 = [v22 folderController];
  v29 = [v28 todayViewController];

  if (v29)
  {
    v30 = [v22 folderController];
    v31 = [v30 todayViewController];
    v32 = [v31 view];
    [v25 addObject:v32];
  }

  v48 = v25;
  [v25 enumerateObjectsUsingBlock:&__block_literal_global_711];
  v47 = v7;
  v33 = [objc_alloc(MEMORY[0x277D660B0]) initWithFolderController:v7];
  v34 = [objc_alloc(MEMORY[0x277D65DD8]) initWithDefaultValues];
  [v34 setAnimationType:1];
  [v34 setMass:2.0];
  [v34 setStiffness:300.0];
  [v34 setDamping:50.0];
  [v34 setCurve:0x10000];
  v35 = [objc_alloc(MEMORY[0x277D66140]) initWithDefaultValues];
  [v35 setDistanceEffect:1];
  [v35 setFirstHopIncrement:2.0];
  [v35 setHopIncrementAcceleration:-1.0];
  [v35 setCentralAnimationSettings:v34];
  [v35 setPreferCenterOfIconGrid:1];
  [v33 setSettings:v35];
  [v33 prepare];
  [v33 setFraction:1.0];
  objc_initWeak(location, self);
  v36 = [(DBDashboard *)self lockOutController];
  v37 = [v36 lockOutViewController];
  v38 = [(DBDashboard *)self lockOutController];
  v39 = [v38 lockOutMode];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __37__DBDashboard__animateStartupToIcons__block_invoke_2;
  v52[3] = &unk_278F025D8;
  objc_copyWeak(&v60, location);
  v45 = v20;
  v53 = v45;
  v51 = v50;
  v54 = v51;
  v40 = v34;
  v55 = v40;
  v41 = v49;
  v56 = v41;
  v42 = v33;
  v57 = v42;
  v43 = v22;
  v58 = v43;
  v44 = v48;
  v59 = v44;
  [v37 setLockOutMode:v39 animated:1 completion:v52];

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
  v4 = [(DBDashboard *)self mainWindow];
  v5 = [(DBDashboard *)self wallpaperHostWindow];
  v6 = [v3 setWithObjects:{v4, v5, 0}];

  v7 = [(DBScreenController *)self environmentConfiguration];
  if (([v7 currentViewAreaSupportsUIOutsideSafeArea] & 1) == 0)
  {
    v8 = [(DBScreenController *)self screenInfo];
    v9 = [v8 wantsCornerMasks];

    if (v9)
    {
      goto LABEL_5;
    }

    v7 = [(DBScreenController *)self cornerRadiusWindow];
    [v6 addObject:v7];
  }

LABEL_5:
  v10 = [(DBDashboard *)self climateOverlayController];
  v11 = [v10 climateWindow];

  if (v11)
  {
    v12 = [(DBDashboard *)self climateOverlayController];
    v13 = [v12 climateWindow];
    [v6 addObject:v13];
  }

  v14 = [(DBDashboard *)self dockController];
  [v14 setHidden:0];

  v15 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v16 = [v15 objectForKey:@"DBReconnectingWithNewOverrideCanvasKey"];
  v17 = [v16 BOOLValue];

  if (v17)
  {
    v18 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v18 removeObjectForKey:@"DBReconnectingWithNewOverrideCanvasKey"];

    v19 = [_TtC9DashBoard14DBResizeWindow alloc];
    v20 = [(DBScreenController *)self windowScene];
    v21 = [(DBDashboard *)self layoutEngine];
    [v21 resizeAnimationWindowFrame];
    v22 = [(DBResizeWindow *)v19 initWithWindowScene:v20 frame:?];

    [(DBDashboard *)self setDisplayScaleWindow:v22];
    v23 = [[_TtC9DashBoard32DBDashboardStartupFadeInAnimator alloc] initWithBlackoutWindow:v22 windows:v6];
  }

  else
  {
    v23 = [[_TtC9DashBoard31DBDashboardStartupScaleAnimator alloc] initWithWindows:v6];
  }

  v24 = [(DBDashboard *)self dockController];
  [v24 prepareForScaleAnimationWithAnimator:v23];

  [(DBDashboardStartupFadeInAnimator *)v23 prepareForAnimation];
  v25 = [(DBDashboard *)self lockOutController];
  v26 = [v25 lockOutWindow];

  v27 = [(DBDashboard *)self rootViewController];
  v28 = [v27 homeViewController];

  v29 = [v28 todayViewController];
  objc_initWeak(&location, self);
  v30 = [(DBDashboard *)self lockOutController];
  v31 = [v30 lockOutViewController];
  v32 = [(DBDashboard *)self lockOutController];
  v33 = [v32 lockOutMode];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __50__DBDashboard__animateStartupFromScaledMainWindow__block_invoke;
  v37[3] = &unk_278F02628;
  objc_copyWeak(&v41, &location);
  v34 = v26;
  v38 = v34;
  v35 = v23;
  v39 = v35;
  v36 = v29;
  v40 = v36;
  [v31 setLockOutMode:v33 animated:1 completion:v37];

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
  v3 = [(DBDashboard *)self lockOutController];
  v4 = [v3 lockOutWindow];

  v5 = [MEMORY[0x277D75348] clearColor];
  [v4 setBackgroundColor:v5];

  v6 = [(DBDashboard *)self lockOutController];
  v7 = [v6 lockOutViewController];
  v8 = [(DBDashboard *)self lockOutController];
  v9 = [v8 lockOutMode];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__DBDashboard__animateClearLockoutWindow__block_invoke;
  v11[3] = &unk_278F01580;
  v12 = v4;
  v10 = v4;
  [v7 setLockOutMode:v9 animated:1 completion:v11];
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

- (void)setAlwaysDarkInterfaceActive:(BOOL)a3
{
  v3 = a3;
  v5 = [(DBDashboard *)self alwaysDarkStatusBarStyleAssertion];
  v6 = [v5 isValid];

  if (v6 != v3)
  {
    v7 = [(DBDashboard *)self wallpaperRootViewController];
    v8 = v7;
    if (v3)
    {
      [v7 setInterfaceStyleOverride:2];

      v9 = [(DBDashboard *)self rootViewController];
      [v9 setAlwaysDarkInterface:1];

      v12 = [(DBDashboard *)self alwaysDarkStatusBarStyleAssertion];
      v10 = [(DBDashboard *)self alwaysDarkAnimationSettings];
      [v12 acquireWithAnimationSettings:v10];
    }

    else
    {
      [v7 setInterfaceStyleOverride:0];

      v11 = [(DBDashboard *)self rootViewController];
      [v11 setAlwaysDarkInterface:0];

      v12 = [(DBDashboard *)self alwaysDarkStatusBarStyleAssertion];
      v10 = [(DBDashboard *)self alwaysDarkAnimationSettings];
      [v12 relinquishWithAnimationSettings:v10];
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
  v7 = [a2 bundleIdentifier];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_debug_impl(&dword_248146000, a4, OS_LOG_TYPE_DEBUG, "DashBoard requesting state change for %{public}@", a1, 0xCu);
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

- (void)workspace:(id)a3 stateDidChangeFromState:(id)a4 toState:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a4;
  v9 = [(DBDashboard *)self workspace];
  v10 = [v9 state];
  v11 = [v10 activeBundleIdentifier];

  v12 = +[DBApplicationController sharedInstance];
  v13 = [v12 applicationWithBundleIdentifier:v11];

  if ([v13 presentsFullScreen])
  {
    v14 = [(DBScreenController *)self cornerRadiusWindow];
    [v14 setHidden:1];
  }

  else
  {
    [(DBDashboard *)self _updateCornerRadiusVisibility];
  }

  -[DBDashboard setAlwaysDarkInterfaceActive:](self, "setAlwaysDarkInterfaceActive:", [v13 isAlwaysDarkInterface]);
  v15 = [(DBScreenController *)self interestingWindow];
  v16 = [(DBDashboard *)self layoutEngine];
  [v16 areaOfInterestFrameForApplication:v13];
  [v15 setFrame:?];

  v17 = [v8 stackedEntity];

  v18 = [v7 stackedEntity];

  if (v18 != v17)
  {
    v19 = [v18 identifier];
    v20 = [v17 identifier];
    v21 = [v19 isEqualToString:v20];

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

      if (v18)
      {
        v24 = objc_opt_class();
        if ([v24 isEqual:objc_opt_class()])
        {
          v25 = objc_opt_class();
          if (([v25 isEqual:objc_opt_class()] & 1) == 0)
          {
            v26 = [v17 identifier];
            v27 = self->_interruptedPunchthroughIdentifier;
            self->_interruptedPunchthroughIdentifier = v26;

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

- (void)willUpdateThemeData:(id)a3 withDuration:(double)a4 delay:(double)a5
{
  v8 = a3;
  v9 = [(DBScreenController *)self environmentConfiguration];
  v13 = [v9 wallpaperPreferences];

  v10 = [v13 wallpaperFromThemeData:v8];

  v11 = [v13 currentWallpaper];
  v12 = [v11 isEqual:v10];

  if ((v12 & 1) == 0)
  {
    [v13 setStagedWallpaper:v10];
    [(DBDashboard *)self _updateWallpaperWithAnimationDuration:a4 delay:a5];
  }
}

- (void)_goToPageContainingBundleIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DBDashboard *)self rootViewController];
  v9 = [v8 homeViewController];
  v10 = [v9 folderController];
  v11 = [v10 folderControllers];
  v12 = [v11 firstObject];

  v13 = [v12 iconModel];
  v14 = [v13 leafIconForIdentifier:v7];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__DBDashboard__goToPageContainingBundleIdentifier_completion___block_invoke;
  v16[3] = &unk_278F02678;
  v17 = v6;
  v15 = v6;
  [v12 setCurrentPageIndexToListDirectlyContainingIcon:v14 animated:0 completion:v16];
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

- (void)runLaunchTestForApplication:(id)a3
{
  v4 = a3;
  v5 = [v4 bundleIdentifier];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__DBDashboard_runLaunchTestForApplication___block_invoke;
  v7[3] = &unk_278F014B8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(DBDashboard *)self _goToPageContainingBundleIdentifier:v5 completion:v7];
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
  v2 = [(DBScreenController *)self environmentConfiguration];
  v5 = [v2 vehicle];

  v3 = [v5 displayThemeData];
  if (v3)
  {
    goto LABEL_2;
  }

  v4 = [v5 finishedWelcome];

  if (!v4)
  {
    [v5 setFinishedWelcome:MEMORY[0x277CBEC38]];
    v3 = objc_alloc_init(MEMORY[0x277CF8A68]);
    [v3 saveVehicle:v5 completion:&__block_literal_global_733];
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

- (void)client:(int64_t)a3 didUpdateElements:(id)a4
{
  v6 = a4;
  if (a3 == 1)
  {
    v8 = v6;
    if (v6 && [v6 intValue] >= 1)
    {
      v7 = [(DBDashboard *)self dockController];
      [v7 setAlwaysVisibleSecondaryDockWindowLevel];
    }

    else
    {
      v7 = [(DBDashboard *)self dockController];
      [v7 resetAlwaysVisibleSecondaryDockWindowLevel];
    }
  }

  else
  {
    if (a3)
    {
      goto LABEL_12;
    }

    v8 = v6;
    if (v6 && [v6 intValue] >= 1)
    {
      v7 = [(DBDashboard *)self climateOverlayController];
      [v7 setAlwaysVisibleClimateWindowLevel];
    }

    else
    {
      v7 = [(DBDashboard *)self climateOverlayController];
      [v7 resetAlwaysVisibleClimateWindowLevel];
    }
  }

  v6 = v8;
LABEL_12:
}

- (void)_updateTraitOverridesForTraitOverrides:(id)a3 withHomeScreenStyleData:(id)a4 userInterfaceStyle:(int64_t)a5
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91470);
  v8 = sub_248383B10();
  v9 = a4;
  v10 = self;
  _sSo11DBDashboardC9DashBoardE21_updateTraitOverrides3for4with18userInterfaceStyleySaySo07UITraitF0_pG_So012CRHomeScreenK4DataCSo06UIUserjK0VtF_0(v8, v9, a5);
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