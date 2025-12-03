@interface DBEnvironmentConfiguration
+ (id)_stringForStatusBarEdge:(unint64_t)edge;
- (BOOL)_prefersDarkMapsAppearance;
- (BOOL)currentViewAreaSupportsUIOutsideSafeArea;
- (BOOL)hasDualStatusBar;
- (BOOL)hasPhysicalControlBars;
- (BOOL)hasTopStatusBar;
- (BOOL)isAmbientBrightnessNighttime;
- (BOOL)showsInstruments;
- (CGRect)_safeAreaFrameForViewArea:(id)area;
- (CGRect)_unadjustedSafeAreaFrameForViewArea:(id)area;
- (CGRect)_viewAreaFrameForViewArea:(id)area;
- (CGRect)currentSafeViewAreaFrame;
- (CGRect)currentStatusBarInsetSafeViewAreaFrame;
- (CGRect)currentUnadjustedSafeViewAreaFrame;
- (CGRect)currentViewAreaFrame;
- (CRHomeScreenStyleData)homeScreenStyleData;
- (DBAnalytics)analytics;
- (DBAnalyticsProvider)analyticsProvider;
- (DBEnvironmentConfiguration)initWithDisplayConfiguration:(id)configuration layoutPublisher:(id)publisher iconBadgeController:(id)controller session:(id)session supportedFeatures:(unint64_t)features processMonitor:(id)monitor thermalMonitor:(id)thermalMonitor vehicle:(id)self0 themeController:(id)self1 navigationStateProvider:(id)self2 analyticsProvider:(id)self3;
- (DBUISyncSessionEventDelegate)uisyncSessionEventDelegate;
- (SBHIconImageAppearance)iconImageAppearance;
- (UIEdgeInsets)_safeAreaInsetsForViewArea:(id)area;
- (UIEdgeInsets)currentViewAreaSafeAreaInsets;
- (id)_screenInfo;
- (id)statusBarInsetViewAreas;
- (int64_t)carUserInterfaceStyle;
- (int64_t)effectiveMapsUserInterfaceStyle;
- (int64_t)effectiveVehicleAppearancePreference;
- (int64_t)nightModeUserInterfaceStyle;
- (int64_t)resolvedUserInterfaceStyle;
- (unint64_t)_statusBarEdgeForViewArea:(id)area;
- (unint64_t)iconColumnCount;
- (unint64_t)iconRowCount;
- (void)_computeStatusBarEdgesForViewAreas:(id)areas;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)effectiveVehicleAppearancePreference;
- (void)fetchEnhancedIntegrationStatusWithCompletion:(id)completion;
- (void)removeObserver:(id)observer;
- (void)resolvedUserInterfaceStyle;
- (void)session:(id)session didSetViewArea:(id)area forScreenID:(id)d withDuration:(double)duration transitionControlType:(unint64_t)type;
- (void)session:(id)session didUpdateAppearanceStyle:(int64_t)style forScreenUUID:(id)d;
- (void)session:(id)session didUpdateMapAppearanceStyle:(int64_t)style forScreenUUID:(id)d;
- (void)session:(id)session didUpdateNightMode:(BOOL)mode;
- (void)sessionController:(id)controller didUpdateVehicle:(id)vehicle;
- (void)sessionDidUpdateCarCapabilities:(id)capabilities;
- (void)updateDisplayScaleIfNeeded:(id)needed;
@end

@implementation DBEnvironmentConfiguration

- (BOOL)currentViewAreaSupportsUIOutsideSafeArea
{
  selfCopy = self;
  systemUILayout = [(DBEnvironmentConfiguration *)self systemUILayout];

  if (systemUILayout)
  {
    systemUILayout2 = [(DBEnvironmentConfiguration *)selfCopy systemUILayout];
    [systemUILayout2 primaryContentFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(DBEnvironmentConfiguration *)selfCopy currentViewAreaFrame];
    v20.origin.x = v13;
    v20.origin.y = v14;
    v20.size.width = v15;
    v20.size.height = v16;
    v19.origin.x = v6;
    v19.origin.y = v8;
    v19.size.width = v10;
    v19.size.height = v12;
    LODWORD(selfCopy) = !CGRectEqualToRect(v19, v20);
  }

  else
  {
    systemUILayout2 = [(DBEnvironmentConfiguration *)selfCopy _screenInfo];
    currentViewArea = [systemUILayout2 currentViewArea];
    LOBYTE(selfCopy) = [currentViewArea supportsUIOutsideSafeArea];
  }

  return selfCopy;
}

- (id)_screenInfo
{
  session = [(DBEnvironmentConfiguration *)self session];
  configuration = [session configuration];
  screens = [configuration screens];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__DBEnvironmentConfiguration__screenInfo__block_invoke;
  v8[3] = &unk_278F01870;
  v8[4] = self;
  v6 = [screens bs_firstObjectPassingTest:v8];

  return v6;
}

uint64_t __41__DBEnvironmentConfiguration__screenInfo__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) displayConfiguration];
  v5 = [v4 hardwareIdentifier];
  v6 = [v3 isEqualToString:v5];

  return v6;
}

- (CGRect)currentViewAreaFrame
{
  x = self->_currentViewAreaFrame.origin.x;
  y = self->_currentViewAreaFrame.origin.y;
  width = self->_currentViewAreaFrame.size.width;
  height = self->_currentViewAreaFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)hasDualStatusBar
{
  systemUILayout = [(DBEnvironmentConfiguration *)self systemUILayout];

  if (!systemUILayout)
  {
    return 0;
  }

  systemUILayout2 = [(DBEnvironmentConfiguration *)self systemUILayout];
  hasDualStatusBar = [systemUILayout2 hasDualStatusBar];

  return hasDualStatusBar;
}

- (BOOL)hasTopStatusBar
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"ForceSplitStatusBar"];

  if (v4)
  {
    return 1;
  }

  systemUILayout = [(DBEnvironmentConfiguration *)self systemUILayout];

  if (!systemUILayout)
  {
    return 0;
  }

  systemUILayout2 = [(DBEnvironmentConfiguration *)self systemUILayout];
  hasTopStatusBar = [systemUILayout2 hasTopStatusBar];

  return hasTopStatusBar;
}

- (CGRect)currentSafeViewAreaFrame
{
  systemUILayout = [(DBEnvironmentConfiguration *)self systemUILayout];

  if (systemUILayout)
  {
    systemUILayout2 = [(DBEnvironmentConfiguration *)self systemUILayout];
    [systemUILayout2 primaryContentFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    [(DBEnvironmentConfiguration *)self currentViewAreaFrame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [(DBEnvironmentConfiguration *)self currentViewAreaSafeAreaInsets];
    v6 = v14 + v21;
    v8 = v16 + v22;
    v10 = v18 - (v21 + v23);
    v12 = v20 - (v22 + v24);
  }

  v25 = v6;
  v26 = v8;
  v27 = v10;
  v28 = v12;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (UIEdgeInsets)currentViewAreaSafeAreaInsets
{
  top = self->_currentViewAreaSafeAreaInsets.top;
  left = self->_currentViewAreaSafeAreaInsets.left;
  bottom = self->_currentViewAreaSafeAreaInsets.bottom;
  right = self->_currentViewAreaSafeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (DBAnalytics)analytics
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsProvider);
  currentAnalytics = [WeakRetained currentAnalytics];

  return currentAnalytics;
}

- (int64_t)carUserInterfaceStyle
{
  session = self->_session;
  hardwareIdentifier = [(FBSDisplayConfiguration *)self->_displayConfiguration hardwareIdentifier];
  v4 = [(CARSession *)session userInterfaceStyleForScreenUUID:hardwareIdentifier];

  return v4;
}

- (BOOL)_prefersDarkMapsAppearance
{
  v18 = *MEMORY[0x277D85DE8];
  vehicle = [(DBEnvironmentConfiguration *)self vehicle];
  v3 = vehicle;
  if (vehicle)
  {
    mapsAppearancePreference = [vehicle mapsAppearancePreference];
    v5 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134349056;
      v17 = mapsAppearancePreference;
      _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Vehicle map style preference: %{public}ld", &v16, 0xCu);
    }

    v6 = mapsAppearancePreference == 2;
  }

  else
  {
    v7 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(DBEnvironmentConfiguration *)v7 _prefersDarkMapsAppearance:v8];
    }

    v6 = 0;
  }

  return v6;
}

- (int64_t)resolvedUserInterfaceStyle
{
  v32 = *MEMORY[0x277D85DE8];
  _screenInfo = [(DBEnvironmentConfiguration *)self _screenInfo];
  session = [(DBEnvironmentConfiguration *)self session];
  configuration = [session configuration];
  v6 = [configuration db_displayInfoForScreenInfo:_screenInfo];

  identifier = [v6 identifier];
  vehicle = [(DBEnvironmentConfiguration *)self vehicle];
  if (!vehicle)
  {
    v9 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(DBEnvironmentConfiguration *)v9 resolvedUserInterfaceStyle:v10];
    }
  }

  appearanceModePreference = [vehicle appearanceModePreference];
  if (appearanceModePreference == -1)
  {
    session2 = [(DBEnvironmentConfiguration *)self session];
    configuration2 = [session2 configuration];
    appearanceModePreference = [configuration2 userInterfaceStyle];

    v20 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(DBEnvironmentConfiguration *)appearanceModePreference resolvedUserInterfaceStyle];
    }
  }

  v21 = DBLogForCategory(0x13uLL);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [MEMORY[0x277CF89F0] descriptionForUserInterfaceStyle:appearanceModePreference];
    v30 = 138412290;
    v31 = v22;
    _os_log_impl(&dword_248146000, v21, OS_LOG_TYPE_DEFAULT, "InterfaceStylePreference is: %@", &v30, 0xCu);
  }

  themeController = [(DBEnvironmentConfiguration *)self themeController];
  v24 = [themeController requiresDarkAppearanceForDisplayID:identifier];

  if (v24)
  {
    v25 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v30) = 0;
      v26 = "Theme controller requires dark appearance";
LABEL_17:
      carUserInterfaceStyle = 2;
      _os_log_impl(&dword_248146000, v25, OS_LOG_TYPE_DEFAULT, v26, &v30, 2u);
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (appearanceModePreference == 2)
  {
    v25 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v30) = 0;
      v26 = "Always dark enabled, returning dark style";
      goto LABEL_17;
    }

LABEL_18:
    carUserInterfaceStyle = 2;
    goto LABEL_21;
  }

  carUserInterfaceStyle = [(DBEnvironmentConfiguration *)self carUserInterfaceStyle];
  v25 = DBLogForCategory(0x13uLL);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v28 = CPUIDescriptionForUserInterfaceStyle();
    v30 = 138412290;
    v31 = v28;
    _os_log_impl(&dword_248146000, v25, OS_LOG_TYPE_DEFAULT, "Using car user interface style: %@", &v30, 0xCu);
  }

LABEL_21:

  return carUserInterfaceStyle;
}

- (int64_t)effectiveMapsUserInterfaceStyle
{
  v16 = *MEMORY[0x277D85DE8];
  effectiveVehicleAppearancePreference = [(DBEnvironmentConfiguration *)self effectiveVehicleAppearancePreference];
  _prefersDarkMapsAppearance = [(DBEnvironmentConfiguration *)self _prefersDarkMapsAppearance];
  v5 = DBLogForCategory(0x13uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromBOOL();
    v7 = NSStringFromBOOL();
    v12 = 138543618;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Determining effective map style. Always dark appearance: %{public}@, prefers dark maps: %{public}@", &v12, 0x16u);
  }

  if (effectiveVehicleAppearancePreference == 2 && _prefersDarkMapsAppearance)
  {
    v8 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      mapsUserInterfaceStyle = 2;
      _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "Using map style dark", &v12, 2u);
    }

    else
    {
      mapsUserInterfaceStyle = 2;
    }
  }

  else
  {
    mapsUserInterfaceStyle = [(DBEnvironmentConfiguration *)self mapsUserInterfaceStyle];
    v8 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = CPUIDescriptionForUserInterfaceStyle();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "Using environment map style: %{public}@", &v12, 0xCu);
    }
  }

  return mapsUserInterfaceStyle;
}

- (int64_t)effectiveVehicleAppearancePreference
{
  vehicle = [(DBEnvironmentConfiguration *)self vehicle];
  if (!vehicle)
  {
    v4 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(DBEnvironmentConfiguration *)v4 resolvedUserInterfaceStyle:v5];
    }
  }

  appearanceModePreference = [vehicle appearanceModePreference];
  if (appearanceModePreference == -1)
  {
    session = [(DBEnvironmentConfiguration *)self session];
    configuration = [session configuration];
    appearanceModePreference = [configuration userInterfaceStyle];

    v15 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(DBEnvironmentConfiguration *)appearanceModePreference effectiveVehicleAppearancePreference];
    }
  }

  return appearanceModePreference;
}

- (DBEnvironmentConfiguration)initWithDisplayConfiguration:(id)configuration layoutPublisher:(id)publisher iconBadgeController:(id)controller session:(id)session supportedFeatures:(unint64_t)features processMonitor:(id)monitor thermalMonitor:(id)thermalMonitor vehicle:(id)self0 themeController:(id)self1 navigationStateProvider:(id)self2 analyticsProvider:(id)self3
{
  v130 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  publisherCopy = publisher;
  publisherCopy2 = publisher;
  monitorCopy = monitor;
  v113 = publisherCopy2;
  controllerCopy = controller;
  sessionCopy = session;
  monitorCopy2 = monitor;
  thermalMonitorCopy = thermalMonitor;
  vehicleCopy = vehicle;
  themeControllerCopy = themeController;
  providerCopy = provider;
  analyticsProviderCopy = analyticsProvider;
  v123.receiver = self;
  v123.super_class = DBEnvironmentConfiguration;
  v21 = [(DBEnvironmentConfiguration *)&v123 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_iconBadgeController, controller);
    objc_storeStrong(&v22->_session, session);
    v22->_supportedFeatures = features;
    objc_storeStrong(&v22->_processMonitor, monitorCopy);
    objc_storeStrong(&v22->_thermalMonitor, thermalMonitor);
    objc_storeStrong(&v22->_navigationStateProvider, provider);
    objc_storeWeak(&v22->_analyticsProvider, analyticsProviderCopy);
    configuration = [(CARSession *)v22->_session configuration];
    liveActivitiesMode = [configuration liveActivitiesMode];

    if ([configurationCopy isCarDisplay] && _os_feature_enabled_impl() && liveActivitiesMode != 1)
    {
      v25 = objc_alloc_init(_TtC9DashBoard21DBLiveActivityMonitor);
      liveActivityMonitor = v22->_liveActivityMonitor;
      v22->_liveActivityMonitor = v25;
    }

    useSceneInterfaceStyle = [MEMORY[0x277CF89D0] useSceneInterfaceStyle];
    [useSceneInterfaceStyle setState:1];

    screens = [MEMORY[0x277D759A0] screens];
    v121[0] = MEMORY[0x277D85DD0];
    v121[1] = 3221225472;
    v121[2] = __217__DBEnvironmentConfiguration_initWithDisplayConfiguration_layoutPublisher_iconBadgeController_session_supportedFeatures_processMonitor_thermalMonitor_vehicle_themeController_navigationStateProvider_analyticsProvider___block_invoke;
    v121[3] = &unk_278F01730;
    v107 = configurationCopy;
    v29 = configurationCopy;
    v122 = v29;
    v30 = [screens db_firstObjectPassingTest:v121];

    configuration2 = [sessionCopy configuration];
    rightHandDrive = [configuration2 rightHandDrive];
    v22->_rightHandDrive = rightHandDrive;
    v22->_layoutJustification = rightHandDrive;
    objc_storeStrong(&v22->_displayConfiguration, configuration);
    objc_storeStrong(&v22->_screen, v30);
    if (_os_feature_enabled_impl())
    {
      CRDisplayScaleAdjustedPointScale();
      v22->_screenScale = v33;
      v34 = DBLogForCategory(0x1BuLL);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = MEMORY[0x277CCABB0];
        [v29 pointScale];
        v36 = [v35 numberWithDouble:?];
        v37 = [MEMORY[0x277CCABB0] numberWithDouble:v22->_screenScale];
        *buf = 138543874;
        v125 = v29;
        v126 = 2114;
        v127 = v36;
        v128 = 2114;
        v129 = v37;
        _os_log_impl(&dword_248146000, v34, OS_LOG_TYPE_INFO, "Display: %{public}@; \nOld scale: %{public}@; new scale: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      [v29 pointScale];
      v22->_screenScale = v38;
    }

    [v29 pointScale];
    v22->_pointScale = v39;
    traitCollection = [v30 traitCollection];
    v41 = [traitCollection copy];
    traitCollection = v22->_traitCollection;
    v22->_traitCollection = v41;

    v43 = v22->_screen;
    v44 = [(UIScreen *)v43 _capabilityForKey:*MEMORY[0x277D77538]];
    v45 = v44;
    if (v44)
    {
      integerValue = [v44 integerValue];
      v47 = (integerValue >> 1) & 1;
      if (integerValue)
      {
        v48 = [(UIScreen *)v43 _capabilityForKey:*MEMORY[0x277D77540]];
        integerValue2 = [v48 integerValue];
        if (integerValue2 == 1)
        {
          v47 |= 2uLL;
        }

        else if (!integerValue2)
        {
          v47 |= 4uLL;
        }
      }
    }

    else
    {
      v47 = 0;
    }

    v22->_interactionAffordances = v47;
    v22->_screenSupportsFocus = [(UIScreen *)v22->_screen supportsFocus];
    objc_storeStrong(&v22->_displayLayoutPublisher, publisherCopy);
    [(FBSDisplayLayoutPublisher *)v22->_displayLayoutPublisher setDisplayConfiguration:v29];
    [(FBSDisplayLayoutPublisher *)v22->_displayLayoutPublisher setInterfaceOrientation:1];
    v22->_connectedWirelessly = [configuration2 transportType] == 3;
    v22->_acBackSupported = [configuration2 supportsACBack];
    v50 = +[DBApplicationController sharedInstance];
    _appPolicyEvaluator = [v50 _appPolicyEvaluator];
    v22->_geoSupported = [_appPolicyEvaluator isGeoSupported];

    v52 = objc_alloc_init(DBAppHistory);
    appHistory = v22->_appHistory;
    v22->_appHistory = v52;

    v54 = objc_alloc(MEMORY[0x277CF89C0]);
    v55 = [v54 initWithProtocol:&unk_285AB40A0 callbackQueue:MEMORY[0x277D85CD0]];
    observers = v22->_observers;
    v22->_observers = v55;

    displays = [configuration2 displays];
    v119[0] = MEMORY[0x277D85DD0];
    v119[1] = 3221225472;
    v119[2] = __217__DBEnvironmentConfiguration_initWithDisplayConfiguration_layoutPublisher_iconBadgeController_session_supportedFeatures_processMonitor_thermalMonitor_vehicle_themeController_navigationStateProvider_analyticsProvider___block_invoke_273;
    v119[3] = &unk_278F01780;
    v58 = v29;
    v120 = v58;
    v59 = [displays bs_firstObjectPassingTest:v119];

    v22->_OEMIconVisible = [configuration2 manufacturerIconVisible];
    objc_storeStrong(&v22->_themeController, themeController);
    v60 = DBLogForCategory(0);
    v61 = os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT);
    v102 = analyticsProviderCopy;
    if (themeControllerCopy)
    {
      v62 = sessionCopy;
      if (v61)
      {
        *buf = 138412290;
        v125 = themeControllerCopy;
        _os_log_impl(&dword_248146000, v60, OS_LOG_TYPE_DEFAULT, "Theme Controller found: %@", buf, 0xCu);
      }

      v63 = [_TtC9DashBoard28DBAssetWallpaperDataProvider alloc];
      themeAssetDocument = [themeControllerCopy themeAssetDocument];
      identifier = [v59 identifier];
      v66 = [(DBAssetWallpaperDataProvider *)v63 initWithThemeAssetDocument:themeAssetDocument displayID:identifier];

      if ([configuration2 manufacturerIconVisible])
      {
        identifier2 = [v59 identifier];
        v22->_OEMIconVisible = [themeControllerCopy allowsOEMIconForDisplayID:identifier2];
      }

      else
      {
        v22->_OEMIconVisible = 0;
      }
    }

    else
    {
      v62 = sessionCopy;
      if (v61)
      {
        *buf = 0;
        _os_log_impl(&dword_248146000, v60, OS_LOG_TYPE_DEFAULT, "Theme Controller not found", buf, 2u);
      }

      v66 = objc_alloc_init(MEMORY[0x277CF9358]);
    }

    v68 = [objc_alloc(MEMORY[0x277CF9390]) initWithDataProvider:v66];
    wallpaperPreferences = v22->_wallpaperPreferences;
    v22->_wallpaperPreferences = v68;

    objc_storeStrong(&v22->_vehicle, vehicle);
    vehicle = v22->_vehicle;
    if (vehicle)
    {
      pairingStatus = [(CRVehicle *)vehicle pairingStatus];
      v72 = DBLogForCategory(0);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v125 = pairingStatus;
        _os_log_impl(&dword_248146000, v72, OS_LOG_TYPE_DEFAULT, "Vehicle pairing status: %ld", buf, 0xCu);
      }

      [(DBEnvironmentConfiguration *)v22 setKnownVehicle:pairingStatus != 0];
      [(DBEnvironmentConfiguration *)v22 setPairedVehicle:pairingStatus == 2];
      identifier3 = [(CRVehicle *)v22->_vehicle identifier];
      uUIDString = [identifier3 UUIDString];
      [(DBEnvironmentConfiguration *)v22 setVehicleID:uUIDString];

      v75 = DBLogForCategory(0);
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        v76 = v22->_vehicle;
        *buf = 138412290;
        v125 = v76;
        _os_log_impl(&dword_248146000, v75, OS_LOG_TYPE_DEFAULT, "Assigning vehicle to wallpaper preferences: %@", buf, 0xCu);
      }

      [(CRSUIWallpaperPreferences *)v22->_wallpaperPreferences setVehicle:v22->_vehicle];
    }

    [v62 addObserver:v22];
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    viewAreaToStatusBarEdgeMap = v22->_viewAreaToStatusBarEdgeMap;
    v22->_viewAreaToStatusBarEdgeMap = strongToStrongObjectsMapTable;

    manufacturerIconLabel = [configuration2 manufacturerIconLabel];
    v80 = [manufacturerIconLabel copy];
    OEMIconLabel = v22->_OEMIconLabel;
    v22->_OEMIconLabel = v80;

    v22->_supportsDisplayPlugin = [v59 supportsDDPContent];
    if (v22->_themeController)
    {
      v82 = [DBSystemUILayout alloc];
      themeAssetDocument2 = [(DBThemeController *)v22->_themeController themeAssetDocument];
      identifier4 = [v59 identifier];
      v85 = [(DBSystemUILayout *)v82 initWithThemeAssetDocument:themeAssetDocument2 displayID:identifier4 environmentConfiguration:v22];
      systemUILayout = v22->_systemUILayout;
      v22->_systemUILayout = v85;
    }

    screens2 = [configuration2 screens];
    v116[0] = MEMORY[0x277D85DD0];
    v116[1] = 3221225472;
    v116[2] = __217__DBEnvironmentConfiguration_initWithDisplayConfiguration_layoutPublisher_iconBadgeController_session_supportedFeatures_processMonitor_thermalMonitor_vehicle_themeController_navigationStateProvider_analyticsProvider___block_invoke_281;
    v116[3] = &unk_278F017A8;
    v88 = v58;
    v117 = v88;
    v89 = v22;
    v118 = v89;
    [screens2 enumerateObjectsUsingBlock:v116];

    hardwareIdentifier = [v88 hardwareIdentifier];
    v89->_mapsUserInterfaceStyle = [v62 mapInterfaceStyleForScreenUUID:hardwareIdentifier];

    if (([(DBEnvironmentConfiguration *)v89 supportedFeatures]& 0x10) != 0)
    {
      configuration3 = [v62 configuration];
      v89->_vehicleDataSession = [configuration3 supportsVehicleData];
    }

    else
    {
      v89->_vehicleDataSession = 0;
    }

    v92 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      vehicle = [(DBEnvironmentConfiguration *)v89 vehicle];
      appearanceModePreference = [vehicle appearanceModePreference];
      *buf = 134217984;
      v125 = appearanceModePreference;
      _os_log_impl(&dword_248146000, v92, OS_LOG_TYPE_DEFAULT, "Env vehicle appearance mode preference: %lu", buf, 0xCu);
    }

    v95 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
    {
      carUserInterfaceStyle = [(DBEnvironmentConfiguration *)v89 carUserInterfaceStyle];
      *buf = 134217984;
      v125 = carUserInterfaceStyle;
      _os_log_impl(&dword_248146000, v95, OS_LOG_TYPE_DEFAULT, "Env ui style is: %ld", buf, 0xCu);
    }

    v97 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      mapsUserInterfaceStyle = v89->_mapsUserInterfaceStyle;
      *buf = 134217984;
      v125 = mapsUserInterfaceStyle;
      _os_log_impl(&dword_248146000, v97, OS_LOG_TYPE_DEFAULT, "Env map style is: %ld", buf, 0xCu);
    }

    clearColor = [MEMORY[0x277D75348] clearColor];
    effectiveSceneBackgroundColor = v89->_effectiveSceneBackgroundColor;
    v89->_effectiveSceneBackgroundColor = clearColor;

    configurationCopy = v107;
    analyticsProviderCopy = v102;
  }

  return v22;
}

uint64_t __217__DBEnvironmentConfiguration_initWithDisplayConfiguration_layoutPublisher_iconBadgeController_session_supportedFeatures_processMonitor_thermalMonitor_vehicle_themeController_navigationStateProvider_analyticsProvider___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identity];
  v5 = [v3 displayIdentity];

  v6 = [v4 isEqual:v5];
  return v6;
}

uint64_t __217__DBEnvironmentConfiguration_initWithDisplayConfiguration_layoutPublisher_iconBadgeController_session_supportedFeatures_processMonitor_thermalMonitor_vehicle_themeController_navigationStateProvider_analyticsProvider___block_invoke_273(uint64_t a1, void *a2)
{
  v3 = [a2 streams];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __217__DBEnvironmentConfiguration_initWithDisplayConfiguration_layoutPublisher_iconBadgeController_session_supportedFeatures_processMonitor_thermalMonitor_vehicle_themeController_navigationStateProvider_analyticsProvider___block_invoke_2;
  v6[3] = &unk_278F01758;
  v7 = *(a1 + 32);
  v4 = [v3 bs_containsObjectPassingTest:v6];

  return v4;
}

uint64_t __217__DBEnvironmentConfiguration_initWithDisplayConfiguration_layoutPublisher_iconBadgeController_session_supportedFeatures_processMonitor_thermalMonitor_vehicle_themeController_navigationStateProvider_analyticsProvider___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 hardwareIdentifier];
  v5 = [v3 identifier];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

void __217__DBEnvironmentConfiguration_initWithDisplayConfiguration_layoutPublisher_iconBadgeController_session_supportedFeatures_processMonitor_thermalMonitor_vehicle_themeController_navigationStateProvider_analyticsProvider___block_invoke_281(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v27 = a2;
  v6 = [v27 identifier];
  v7 = [*(a1 + 32) hardwareIdentifier];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = *(a1 + 40);
    v10 = [v27 viewAreas];
    [v9 _computeStatusBarEdgesForViewAreas:v10];

    v11 = [v27 currentViewArea];
    v12 = *(a1 + 40);
    [v12 _viewAreaFrameForViewArea:v11];
    v12[37] = v13;
    v12[38] = v14;
    v12[39] = v15;
    v12[40] = v16;
    v17 = *(a1 + 40);
    [v17 _safeAreaInsetsForViewArea:v11];
    v17[45] = v18;
    v17[46] = v19;
    v17[47] = v20;
    v17[48] = v21;
    v22 = *(a1 + 40);
    [v22 _unadjustedSafeAreaFrameForViewArea:v11];
    v22[41] = v23;
    v22[42] = v24;
    v22[43] = v25;
    v22[44] = v26;
    *(*(a1 + 40) + 120) = [v27 currentViewAreaTransitionControlType];
    *(*(a1 + 40) + 128) = [*(a1 + 40) _statusBarEdgeForViewArea:v11];
    *(*(a1 + 40) + 9) = [v11 supportsFocusTransfer];
    *a4 = 1;
  }
}

- (int64_t)nightModeUserInterfaceStyle
{
  if ([(DBEnvironmentConfiguration *)self isAmbientBrightnessNighttime])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = DBEnvironmentConfiguration;
  [(DBEnvironmentConfiguration *)&v4 dealloc];
}

- (BOOL)isAmbientBrightnessNighttime
{
  nightMode = [(CARSession *)self->_session nightMode];
  bOOLValue = [nightMode BOOLValue];

  return bOOLValue;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBEnvironmentConfiguration *)self observers];
  [observers addObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  v9 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  v5 = DBLogForCategory(0x13uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = observerCopy;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Removing observer: %@", &v7, 0xCu);
  }

  observers = [(DBEnvironmentConfiguration *)self observers];
  [observers removeObserver:observerCopy];
}

- (CGRect)currentStatusBarInsetSafeViewAreaFrame
{
  [(DBEnvironmentConfiguration *)self currentSafeViewAreaFrame];
  [DBDashboardLayoutEngine insetsForViewArea:[(DBEnvironmentConfiguration *)self currentStatusBarEdge] statusBarEdge:self environmentConfiguration:v3, v4, v5, v6];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(DBEnvironmentConfiguration *)self currentSafeViewAreaFrame];
  v16 = v10 + v15;
  v18 = v8 + v17;
  v20 = v19 - (v10 + v14);
  v22 = v21 - (v8 + v12);
  result.size.height = v22;
  result.size.width = v20;
  result.origin.y = v18;
  result.origin.x = v16;
  return result;
}

- (void)fetchEnhancedIntegrationStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  session = [(DBEnvironmentConfiguration *)self session];
  mFiCertificateSerialNumber = [session MFiCertificateSerialNumber];

  CRIsEnhancedIntegrationEnabledWithCertificateSerialNumber();
}

- (CGRect)_viewAreaFrameForViewArea:(id)area
{
  areaCopy = area;
  [(DBEnvironmentConfiguration *)self screenScale];
  v6 = v5;
  [areaCopy visibleFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  CGAffineTransformMakeScale(&v15, 1.0 / v6, 1.0 / v6);
  v16.origin.x = v8;
  v16.origin.y = v10;
  v16.size.width = v12;
  v16.size.height = v14;
  return CGRectApplyAffineTransform(v16, &v15);
}

- (CGRect)_safeAreaFrameForViewArea:(id)area
{
  areaCopy = area;
  [(DBEnvironmentConfiguration *)self screenScale];
  v6 = v5;
  [areaCopy safeFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  CGAffineTransformMakeScale(&v15, 1.0 / v6, 1.0 / v6);
  v16.origin.x = v8;
  v16.origin.y = v10;
  v16.size.width = v12;
  v16.size.height = v14;
  return CGRectApplyAffineTransform(v16, &v15);
}

- (UIEdgeInsets)_safeAreaInsetsForViewArea:(id)area
{
  areaCopy = area;
  [(DBEnvironmentConfiguration *)self screenScale];
  v6 = v5;
  [(DBEnvironmentConfiguration *)self _viewAreaFrameForViewArea:areaCopy];
  v8 = v7;
  v10 = v9;
  v28 = v11;
  v13 = v12;
  [areaCopy safeFrame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  CGAffineTransformMakeScale(&v29, 1.0 / v6, 1.0 / v6);
  v30.origin.x = v15;
  v30.origin.y = v17;
  v30.size.width = v19;
  v30.size.height = v21;
  v31 = CGRectApplyAffineTransform(v30, &v29);
  v22 = v31.origin.x - v8;
  v23 = v31.origin.y - v10;
  v24 = v13 - (v31.origin.y - v10) - v31.size.height;
  v25 = v28 - v22 - v31.size.width;
  v26 = v22;
  v27 = v24;
  result.right = v25;
  result.bottom = v27;
  result.left = v26;
  result.top = v23;
  return result;
}

- (CGRect)_unadjustedSafeAreaFrameForViewArea:(id)area
{
  areaCopy = area;
  [(DBEnvironmentConfiguration *)self screenScale];
  v6 = v5;
  [areaCopy unadjustedSafeFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  CGAffineTransformMakeScale(&v15, 1.0 / v6, 1.0 / v6);
  v16.origin.x = v8;
  v16.origin.y = v10;
  v16.size.width = v12;
  v16.size.height = v14;
  return CGRectApplyAffineTransform(v16, &v15);
}

- (unint64_t)iconRowCount
{
  [(DBEnvironmentConfiguration *)self currentSafeViewAreaFrame];
  Height = CGRectGetHeight(v12);
  [(DBEnvironmentConfiguration *)self screenScale];
  [_TtC9DashBoard11DBIconImage iconImageInfoForScale:?];
  v5 = v4;
  v7 = v6;
  currentStatusBarEdge = [(DBEnvironmentConfiguration *)self currentStatusBarEdge];
  interactionAffordances = [(DBEnvironmentConfiguration *)self interactionAffordances];

  return [DBIconListView iconRowsForScreenHeight:currentStatusBarEdge iconImageSize:interactionAffordances statusBarEdge:Height interactionAffordances:v5, v7];
}

- (unint64_t)iconColumnCount
{
  [(DBEnvironmentConfiguration *)self currentSafeViewAreaFrame];
  Width = CGRectGetWidth(v11);
  [(DBEnvironmentConfiguration *)self screenScale];
  [_TtC9DashBoard11DBIconImage iconImageInfoForScale:?];
  v5 = v4;
  v7 = v6;
  currentStatusBarEdge = [(DBEnvironmentConfiguration *)self currentStatusBarEdge];

  return [DBIconListView iconColumnsForScreenWidth:currentStatusBarEdge iconImageSize:Width statusBarEdge:v5, v7];
}

- (CRHomeScreenStyleData)homeScreenStyleData
{
  vehicle = [(DBEnvironmentConfiguration *)self vehicle];
  v3 = [vehicle homeScreenStyleDataForDisplayWithID:0];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CF8A60]) initWithStyleType:2 styleVariant:2];
  }

  v6 = v5;

  return v6;
}

- (SBHIconImageAppearance)iconImageAppearance
{
  homeScreenStyleData = [(DBEnvironmentConfiguration *)self homeScreenStyleData];
  resolvedUserInterfaceStyle = [(DBEnvironmentConfiguration *)self resolvedUserInterfaceStyle];
  v5 = [objc_alloc(MEMORY[0x277D661C8]) initWithHomeScreenStyleData:homeScreenStyleData userInterfaceStyle:resolvedUserInterfaceStyle];

  return v5;
}

- (BOOL)hasPhysicalControlBars
{
  systemUILayout = [(DBEnvironmentConfiguration *)self systemUILayout];

  if (!systemUILayout)
  {
    return 0;
  }

  systemUILayout2 = [(DBEnvironmentConfiguration *)self systemUILayout];
  hasPhysicalControlBars = [systemUILayout2 hasPhysicalControlBars];

  return hasPhysicalControlBars;
}

- (BOOL)showsInstruments
{
  vehicle = [(DBEnvironmentConfiguration *)self vehicle];
  displayThemeData = [vehicle displayThemeData];
  if (displayThemeData)
  {
    v5 = displayThemeData;
    _screenInfo = [(DBEnvironmentConfiguration *)self _screenInfo];
    physicalDisplay = [_screenInfo physicalDisplay];
    identifier = [physicalDisplay identifier];
    v9 = [identifier isEqualToString:@"Cluster_Display"];

    if (v9)
    {
      return 1;
    }
  }

  else
  {
  }

  _screenInfo2 = [(DBEnvironmentConfiguration *)self _screenInfo];
  physicalDisplay2 = [_screenInfo2 physicalDisplay];
  showsInstruments = [physicalDisplay2 showsInstruments];

  return showsInstruments;
}

- (void)session:(id)session didSetViewArea:(id)area forScreenID:(id)d withDuration:(double)duration transitionControlType:(unint64_t)type
{
  areaCopy = area;
  dCopy = d;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__DBEnvironmentConfiguration_session_didSetViewArea_forScreenID_withDuration_transitionControlType___block_invoke;
  block[3] = &unk_278F017D0;
  block[4] = self;
  v16 = dCopy;
  v17 = areaCopy;
  typeCopy = type;
  durationCopy = duration;
  v13 = areaCopy;
  v14 = dCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __100__DBEnvironmentConfiguration_session_didSetViewArea_forScreenID_withDuration_transitionControlType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) session];
  v3 = [v2 configuration];
  v60 = [v3 screenInfoForScreenID:*(a1 + 40)];

  v4 = [v60 identifier];
  v5 = [*(a1 + 32) displayConfiguration];
  v6 = [v5 hardwareIdentifier];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    [*(a1 + 32) _viewAreaFrameForViewArea:*(a1 + 48)];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [*(a1 + 32) _safeAreaInsetsForViewArea:*(a1 + 48)];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = [*(a1 + 32) _statusBarEdgeForViewArea:*(a1 + 48)];
    [*(a1 + 32) currentViewAreaFrame];
    v63.origin.x = v9;
    v63.origin.y = v11;
    v63.size.width = v13;
    v63.size.height = v15;
    if (!CGRectEqualToRect(v62, v63) || ([*(a1 + 32) currentViewAreaSafeAreaInsets], v28 != v19) || v25 != v17 || v27 != v23 || v26 != v21 || objc_msgSend(*(a1 + 32), "currentViewAreaTransitionControlType") != *(a1 + 56) || objc_msgSend(*(a1 + 32), "currentStatusBarEdge") != v24 || (v29 = objc_msgSend(*(a1 + 32), "currentViewAreaSupportsFocusTransfer"), v29 != objc_msgSend(*(a1 + 48), "supportsFocusTransfer")))
    {
      [*(a1 + 32) currentViewAreaFrame];
      v58 = v31;
      v59 = v30;
      v56 = v33;
      v57 = v32;
      [*(a1 + 32) currentViewAreaSafeAreaInsets];
      v54 = v35;
      v55 = v34;
      v52 = v37;
      v53 = v36;
      [*(a1 + 32) setCurrentViewAreaFrame:{v9, v11, v13, v15}];
      [*(a1 + 32) setCurrentViewAreaSafeAreaInsets:{v17, v19, v21, v23}];
      [*(a1 + 32) setCurrentViewAreaTransitionControlType:*(a1 + 56)];
      [*(a1 + 32) setCurrentStatusBarEdge:v24];
      [*(a1 + 32) setCurrentViewAreaSupportsFocusTransfer:{objc_msgSend(*(a1 + 48), "supportsFocusTransfer")}];
      v38 = [*(a1 + 32) observers];
      v39 = *(a1 + 32);
      [v39 currentViewAreaFrame];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;
      [*(a1 + 32) currentViewAreaSafeAreaInsets];
      [v38 environmentConfiguration:v39 viewAreaDidChangeFromViewAreaFrame:*(a1 + 56) safeAreaInsets:v59 toViewAreaFrame:v58 safeAreaInsets:v57 duration:v56 transitionControlType:{v55, v54, v53, v52, v41, v43, v45, v47, v48, v49, v50, v51, *(a1 + 64)}];
    }
  }
}

- (void)session:(id)session didUpdateNightMode:(BOOL)mode
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__DBEnvironmentConfiguration_session_didUpdateNightMode___block_invoke;
  v4[3] = &unk_278F017F8;
  v4[4] = self;
  modeCopy = mode;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

void __57__DBEnvironmentConfiguration_session_didUpdateNightMode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 environmentConfiguration:*(a1 + 32) nightModeDidChange:*(a1 + 40)];
}

- (void)session:(id)session didUpdateAppearanceStyle:(int64_t)style forScreenUUID:(id)d
{
  dCopy = d;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__DBEnvironmentConfiguration_session_didUpdateAppearanceStyle_forScreenUUID___block_invoke;
  block[3] = &unk_278F01820;
  selfCopy = self;
  styleCopy = style;
  v10 = dCopy;
  v8 = dCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __77__DBEnvironmentConfiguration_session_didUpdateAppearanceStyle_forScreenUUID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 40) displayConfiguration];
  v5 = [v4 hardwareIdentifier];
  LODWORD(v2) = [v2 isEqualToString:v5];

  if (v2)
  {
    v6 = [*(a1 + 40) observers];
    [v6 environmentConfiguration:*(a1 + 40) appearanceStyleDidChange:v3];
  }
}

- (void)session:(id)session didUpdateMapAppearanceStyle:(int64_t)style forScreenUUID:(id)d
{
  dCopy = d;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__DBEnvironmentConfiguration_session_didUpdateMapAppearanceStyle_forScreenUUID___block_invoke;
  block[3] = &unk_278F01820;
  selfCopy = self;
  styleCopy = style;
  v10 = dCopy;
  v8 = dCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __80__DBEnvironmentConfiguration_session_didUpdateMapAppearanceStyle_forScreenUUID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 40) displayConfiguration];
  v5 = [v4 hardwareIdentifier];
  LODWORD(v2) = [v2 isEqualToString:v5];

  if (v2)
  {
    *(*(a1 + 40) + 272) = v3;
    v6 = [*(a1 + 40) observers];
    [v6 environmentConfiguration:*(a1 + 40) mapsAppearanceStyleDidChange:{objc_msgSend(*(a1 + 40), "effectiveMapsUserInterfaceStyle")}];
  }
}

- (void)sessionDidUpdateCarCapabilities:(id)capabilities
{
  v4 = DBLogForCategory(0x13uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "CarCapabilities updated, kicking off a style update", v7, 2u);
  }

  observers = [(DBEnvironmentConfiguration *)self observers];
  [observers environmentConfiguration:self appearanceStyleDidChange:{-[DBEnvironmentConfiguration carUserInterfaceStyle](self, "carUserInterfaceStyle")}];

  observers2 = [(DBEnvironmentConfiguration *)self observers];
  [observers2 environmentConfiguration:self mapsAppearanceStyleDidChange:{-[DBEnvironmentConfiguration effectiveMapsUserInterfaceStyle](self, "effectiveMapsUserInterfaceStyle")}];
}

- (void)sessionController:(id)controller didUpdateVehicle:(id)vehicle
{
  v23 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  vehicleCopy = vehicle;
  v8 = vehicleCopy;
  if (vehicleCopy)
  {
    pairingStatus = [vehicleCopy pairingStatus];
    v10 = DBLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 134217984;
      v22 = pairingStatus;
      _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_DEFAULT, "Vehicle pairing status: %ld", &v21, 0xCu);
    }

    [(DBEnvironmentConfiguration *)self setKnownVehicle:pairingStatus != 0];
    [(DBEnvironmentConfiguration *)self setPairedVehicle:pairingStatus == 2];
    identifier = [v8 identifier];
    uUIDString = [identifier UUIDString];
    [(DBEnvironmentConfiguration *)self setVehicleID:uUIDString];

    [(DBEnvironmentConfiguration *)self updateDisplayScaleIfNeeded:v8];
  }

  objc_storeStrong(&self->_vehicle, vehicle);
  v13 = DBLogForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v8;
    _os_log_impl(&dword_248146000, v13, OS_LOG_TYPE_DEFAULT, "Assigning vehicle to wallpaper preferences: %@", &v21, 0xCu);
  }

  wallpaperPreferences = [(DBEnvironmentConfiguration *)self wallpaperPreferences];
  [wallpaperPreferences setVehicle:v8];

  observers = [(DBEnvironmentConfiguration *)self observers];
  [observers environmentConfiguration:self appearancePreferenceDidChange:{objc_msgSend(v8, "appearanceModePreference")}];

  observers2 = [(DBEnvironmentConfiguration *)self observers];
  [observers2 environmentConfiguration:self appearanceStyleDidChange:{-[DBEnvironmentConfiguration carUserInterfaceStyle](self, "carUserInterfaceStyle")}];

  observers3 = [(DBEnvironmentConfiguration *)self observers];
  [observers3 environmentConfiguration:self mapsAppearanceStyleDidChange:{-[DBEnvironmentConfiguration effectiveMapsUserInterfaceStyle](self, "effectiveMapsUserInterfaceStyle")}];

  observers4 = [(DBEnvironmentConfiguration *)self observers];
  [observers4 environmentConfigurationPairedVehiclesDidChange:self];

  observers5 = [(DBEnvironmentConfiguration *)self observers];
  v20 = [v8 homeScreenStyleDataForDisplayWithID:0];
  [observers5 environmentConfiguration:self homeScreenStyleDidChange:v20];
}

- (void)updateDisplayScaleIfNeeded:(id)needed
{
  v27 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  if (_os_feature_enabled_impl())
  {
    displayScaleMode = [neededCopy displayScaleMode];
    vehicle = [(DBEnvironmentConfiguration *)self vehicle];
    displayScaleMode2 = [vehicle displayScaleMode];

    if (displayScaleMode != displayScaleMode2)
    {
      _screenInfo = [(DBEnvironmentConfiguration *)self _screenInfo];
      [_screenInfo canvasPixelSizeForDisplayScaleMode:{objc_msgSend(neededCopy, "displayScaleMode")}];
      v10 = v9;
      v12 = v11;

      _screenInfo2 = [(DBEnvironmentConfiguration *)self _screenInfo];
      displayConfiguration = [(DBEnvironmentConfiguration *)self displayConfiguration];
      [displayConfiguration bounds];
      v17 = [_screenInfo2 displayScaleModesForCanvasPixelSize:{v15, v16}];

      v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(neededCopy, "displayScaleMode")}];
      LODWORD(displayConfiguration) = [v17 containsObject:v18];

      if (displayConfiguration)
      {
        v19 = DBLogForCategory(0x1BuLL);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          displayConfiguration2 = [(DBEnvironmentConfiguration *)self displayConfiguration];
          v28.width = v10;
          v28.height = v12;
          v21 = NSStringFromCGSize(v28);
          *buf = 138543618;
          v24 = displayConfiguration2;
          v25 = 2114;
          v26 = v21;
          _os_log_impl(&dword_248146000, v19, OS_LOG_TYPE_INFO, "Display scaled correctly, ignoring change request. Config: %{public}@; New size: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __57__DBEnvironmentConfiguration_updateDisplayScaleIfNeeded___block_invoke;
        block[3] = &unk_278F01848;
        block[4] = self;
        *&block[5] = v10;
        *&block[6] = v12;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }
  }
}

void __57__DBEnvironmentConfiguration_updateDisplayScaleIfNeeded___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 environmentConfiguration:*(a1 + 32) canvasOverrideSizeDidChange:{*(a1 + 40), *(a1 + 48)}];
}

- (unint64_t)_statusBarEdgeForViewArea:(id)area
{
  areaCopy = area;
  if (_os_feature_enabled_impl() && [(DBEnvironmentConfiguration *)self hasDualStatusBar])
  {
    integerValue = 2;
  }

  else
  {
    viewAreaToStatusBarEdgeMap = [(DBEnvironmentConfiguration *)self viewAreaToStatusBarEdgeMap];
    v7 = [viewAreaToStatusBarEdgeMap objectForKey:areaCopy];

    integerValue = [v7 integerValue];
  }

  return integerValue;
}

- (void)_computeStatusBarEdgesForViewAreas:(id)areas
{
  areasCopy = areas;
  statusBarEdgeOverride = [MEMORY[0x277CF89D0] statusBarEdgeOverride];
  internalSettingsValue = [statusBarEdgeOverride internalSettingsValue];

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__DBEnvironmentConfiguration__computeStatusBarEdgesForViewAreas___block_invoke;
  v13[3] = &unk_278F01898;
  v7 = internalSettingsValue;
  v14 = v7;
  selfCopy = self;
  v16 = &v27;
  v17 = &v23;
  v18 = &v19;
  [areasCopy bs_each:v13];
  if ((v28[3] & 1) == 0 && *(v24 + 24) == 1 && *(v20 + 24) == 1)
  {
    v8 = DBLogForCategory(6uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "Applying horizontal status bar to all view areas", buf, 2u);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__DBEnvironmentConfiguration__computeStatusBarEdgesForViewAreas___block_invoke_304;
    v11[3] = &unk_278F018C0;
    v11[4] = self;
    [areasCopy bs_each:v11];
  }

  if ([(DBEnvironmentConfiguration *)self supportsGaugeCluster]&& [(DBEnvironmentConfiguration *)self supportsDisplayPlugin]&& *(v20 + 24) == 1)
  {
    v9 = DBLogForCategory(6uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "Feature enabled and connected to DP managed display, applying horizontal status bar to all view areas", buf, 2u);
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __65__DBEnvironmentConfiguration__computeStatusBarEdgesForViewAreas___block_invoke_306;
    v10[3] = &unk_278F018C0;
    v10[4] = self;
    [areasCopy bs_each:v10];
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
}

void __65__DBEnvironmentConfiguration__computeStatusBarEdgesForViewAreas___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v31 = 138543362;
    *&v31[4] = v3;
    _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "Computing effective status bar edge for view area: %{public}@", v31, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5 && [v5 integerValue])
  {
    v6 = [*(a1 + 32) integerValue];
    v7 = DBLogForCategory(6uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [objc_opt_class() _stringForStatusBarEdge:v6];
      *v31 = 138543362;
      *&v31[4] = v8;
      v9 = "Status bar override set to %{public}@";
LABEL_10:
      _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, v9, v31, 0xCu);

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if ([v3 statusBarEdge])
  {
    v6 = [v3 statusBarEdge];
    v7 = DBLogForCategory(6uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [objc_opt_class() _stringForStatusBarEdge:v6];
      *v31 = 138543362;
      *&v31[4] = v8;
      v9 = "Using view area status bar edge: %{public}@";
      goto LABEL_10;
    }

LABEL_11:

    *(*(*(a1 + 48) + 8) + 24) = 1;
    goto LABEL_12;
  }

  [v3 safeFrame];
  Width = CGRectGetWidth(v34);
  [v3 safeFrame];
  v20 = Width / CGRectGetHeight(v35);
  v21 = DBLogForCategory(6uLL);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v20 >= 1.3)
  {
    if (v22)
    {
      *v31 = 134217984;
      *&v31[4] = v20;
      v30 = "View area aspect ratio %f does not meet Dashboard portrait threshold.";
LABEL_30:
      _os_log_impl(&dword_248146000, v21, OS_LOG_TYPE_DEFAULT, v30, v31, 0xCu);
    }

LABEL_31:

    v6 = 2;
    goto LABEL_12;
  }

  if (v22)
  {
    *v31 = 134217984;
    *&v31[4] = v20;
    _os_log_impl(&dword_248146000, v21, OS_LOG_TYPE_DEFAULT, "View area aspect ratio %f meets Dashboard portrait threshold. Checking the Dashboard's aspect ratio...", v31, 0xCu);
  }

  [*(a1 + 40) currentSafeViewAreaFrame];
  +[DBDashboardLayoutEngine dockShortAxisLengthForSafeAreaSize:statusBarEdge:](DBDashboardLayoutEngine, "dockShortAxisLengthForSafeAreaSize:statusBarEdge:", [*(a1 + 40) currentStatusBarEdge], v23, v24);
  v26 = v25;
  [v3 safeFrame];
  v27 = CGRectGetWidth(v36);
  [v3 safeFrame];
  v28 = v27 / (CGRectGetHeight(v37) - v26);
  v21 = DBLogForCategory(6uLL);
  v29 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v28 >= 1.3)
  {
    if (v29)
    {
      *v31 = 134217984;
      *&v31[4] = v28;
      v30 = "Dashboard aspect ratio %f does not meet portrait threshold";
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (v29)
  {
    *v31 = 134217984;
    *&v31[4] = v28;
    _os_log_impl(&dword_248146000, v21, OS_LOG_TYPE_DEFAULT, "Dashboard aspect ratio %f also meets portrait threshold, moving status bar to bottom", v31, 0xCu);
  }

  v6 = 1;
  *(*(*(a1 + 56) + 8) + 24) = 1;
LABEL_12:
  [*(a1 + 40) screenScale];
  v11 = v10 * 273.0;
  [v3 safeFrame];
  Height = CGRectGetHeight(v33);
  v13 = DBLogForCategory(6uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @" NOT";
    if (Height >= v11)
    {
      v14 = &stru_285A57218;
    }

    *v31 = 138543362;
    *&v31[4] = v14;
    _os_log_impl(&dword_248146000, v13, OS_LOG_TYPE_DEFAULT, "View area is%{public}@ tall enough for horizontal status bar", v31, 0xCu);
  }

  v15 = *(*(a1 + 64) + 8);
  v16 = *(v15 + 24);
  if (Height < v11)
  {
    v16 = 0;
  }

  *(v15 + 24) = v16;
  v17 = [*(a1 + 40) viewAreaToStatusBarEdgeMap];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  [v17 setObject:v18 forKey:v3];
}

void __65__DBEnvironmentConfiguration__computeStatusBarEdgesForViewAreas___block_invoke_304(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 viewAreaToStatusBarEdgeMap];
  [v4 setObject:&unk_285AA45F8 forKey:v3];
}

void __65__DBEnvironmentConfiguration__computeStatusBarEdgesForViewAreas___block_invoke_306(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 viewAreaToStatusBarEdgeMap];
  [v4 setObject:&unk_285AA45F8 forKey:v3];
}

- (id)statusBarInsetViewAreas
{
  session = [(DBEnvironmentConfiguration *)self session];
  configuration = [session configuration];

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  systemUILayout = [(DBEnvironmentConfiguration *)self systemUILayout];

  if (systemUILayout)
  {
    [(DBEnvironmentConfiguration *)self currentSafeViewAreaFrame];
    [DBDashboardLayoutEngine insetsForViewArea:[(DBEnvironmentConfiguration *)self currentStatusBarEdge] statusBarEdge:self environmentConfiguration:v7, v8, v9, v10];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    systemUILayout2 = [(DBEnvironmentConfiguration *)self systemUILayout];
    [systemUILayout2 primaryContentFrame];
    v21 = v14 + v20;
    v23 = v12 + v22;
    v25 = v24 - (v14 + v18);
    v27 = v26 - (v12 + v16);

    v28 = [MEMORY[0x277CCAE60] valueWithCGRect:{v21, v23, v25, v27}];
    [v5 addObject:v28];
  }

  else
  {
    screens = [configuration screens];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __53__DBEnvironmentConfiguration_statusBarInsetViewAreas__block_invoke;
    v31[3] = &unk_278F017A8;
    v31[4] = self;
    v32 = v5;
    [screens enumerateObjectsUsingBlock:v31];
  }

  return v5;
}

void __53__DBEnvironmentConfiguration_statusBarInsetViewAreas__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (![v6 screenType])
  {
    v7 = [v6 viewAreas];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__DBEnvironmentConfiguration_statusBarInsetViewAreas__block_invoke_2;
    v9[3] = &unk_278F018E8;
    v8 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v8;
    [v7 enumerateObjectsUsingBlock:v9];
    *a4 = 1;
  }
}

void __53__DBEnvironmentConfiguration_statusBarInsetViewAreas__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _statusBarEdgeForViewArea:v4];
  [*(a1 + 32) _safeAreaFrameForViewArea:v4];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [DBDashboardLayoutEngine insetsForViewArea:v5 statusBarEdge:*(a1 + 32) environmentConfiguration:v7, v9, v11, v13];
  v18 = [MEMORY[0x277CCAE60] valueWithCGRect:{v7 + v17, v9 + v14, v11 - (v17 + v15), v13 - (v14 + v16)}];
  [*(a1 + 40) addObject:v18];
}

+ (id)_stringForStatusBarEdge:(unint64_t)edge
{
  if (edge > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_278F01908[edge];
  }
}

- (DBUISyncSessionEventDelegate)uisyncSessionEventDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_uisyncSessionEventDelegate);

  return WeakRetained;
}

- (CGRect)currentUnadjustedSafeViewAreaFrame
{
  x = self->_currentUnadjustedSafeViewAreaFrame.origin.x;
  y = self->_currentUnadjustedSafeViewAreaFrame.origin.y;
  width = self->_currentUnadjustedSafeViewAreaFrame.size.width;
  height = self->_currentUnadjustedSafeViewAreaFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (DBAnalyticsProvider)analyticsProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsProvider);

  return WeakRetained;
}

- (void)resolvedUserInterfaceStyle
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CF89F0] descriptionForUserInterfaceStyle:-1];
  v5 = [MEMORY[0x277CF89F0] descriptionForUserInterfaceStyle:self];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_248146000, a2, OS_LOG_TYPE_ERROR, "Vehicle preference is invalid: %@, using car capabilities value: %@", &v6, 0x16u);
}

- (void)effectiveVehicleAppearancePreference
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 134218240;
  v3 = -1;
  v4 = 2048;
  selfCopy = self;
  _os_log_error_impl(&dword_248146000, a2, OS_LOG_TYPE_ERROR, "Vehicle preference is invalid: %ld, using car capabilities value: %ld", &v2, 0x16u);
}

@end