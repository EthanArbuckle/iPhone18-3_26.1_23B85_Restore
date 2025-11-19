@interface DBEnvironmentConfiguration
+ (id)_stringForStatusBarEdge:(unint64_t)a3;
- (BOOL)_prefersDarkMapsAppearance;
- (BOOL)currentViewAreaSupportsUIOutsideSafeArea;
- (BOOL)hasDualStatusBar;
- (BOOL)hasPhysicalControlBars;
- (BOOL)hasTopStatusBar;
- (BOOL)isAmbientBrightnessNighttime;
- (BOOL)showsInstruments;
- (CGRect)_safeAreaFrameForViewArea:(id)a3;
- (CGRect)_unadjustedSafeAreaFrameForViewArea:(id)a3;
- (CGRect)_viewAreaFrameForViewArea:(id)a3;
- (CGRect)currentSafeViewAreaFrame;
- (CGRect)currentStatusBarInsetSafeViewAreaFrame;
- (CGRect)currentUnadjustedSafeViewAreaFrame;
- (CGRect)currentViewAreaFrame;
- (CRHomeScreenStyleData)homeScreenStyleData;
- (DBAnalytics)analytics;
- (DBAnalyticsProvider)analyticsProvider;
- (DBEnvironmentConfiguration)initWithDisplayConfiguration:(id)a3 layoutPublisher:(id)a4 iconBadgeController:(id)a5 session:(id)a6 supportedFeatures:(unint64_t)a7 processMonitor:(id)a8 thermalMonitor:(id)a9 vehicle:(id)a10 themeController:(id)a11 navigationStateProvider:(id)a12 analyticsProvider:(id)a13;
- (DBUISyncSessionEventDelegate)uisyncSessionEventDelegate;
- (SBHIconImageAppearance)iconImageAppearance;
- (UIEdgeInsets)_safeAreaInsetsForViewArea:(id)a3;
- (UIEdgeInsets)currentViewAreaSafeAreaInsets;
- (id)_screenInfo;
- (id)statusBarInsetViewAreas;
- (int64_t)carUserInterfaceStyle;
- (int64_t)effectiveMapsUserInterfaceStyle;
- (int64_t)effectiveVehicleAppearancePreference;
- (int64_t)nightModeUserInterfaceStyle;
- (int64_t)resolvedUserInterfaceStyle;
- (unint64_t)_statusBarEdgeForViewArea:(id)a3;
- (unint64_t)iconColumnCount;
- (unint64_t)iconRowCount;
- (void)_computeStatusBarEdgesForViewAreas:(id)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)effectiveVehicleAppearancePreference;
- (void)fetchEnhancedIntegrationStatusWithCompletion:(id)a3;
- (void)removeObserver:(id)a3;
- (void)resolvedUserInterfaceStyle;
- (void)session:(id)a3 didSetViewArea:(id)a4 forScreenID:(id)a5 withDuration:(double)a6 transitionControlType:(unint64_t)a7;
- (void)session:(id)a3 didUpdateAppearanceStyle:(int64_t)a4 forScreenUUID:(id)a5;
- (void)session:(id)a3 didUpdateMapAppearanceStyle:(int64_t)a4 forScreenUUID:(id)a5;
- (void)session:(id)a3 didUpdateNightMode:(BOOL)a4;
- (void)sessionController:(id)a3 didUpdateVehicle:(id)a4;
- (void)sessionDidUpdateCarCapabilities:(id)a3;
- (void)updateDisplayScaleIfNeeded:(id)a3;
@end

@implementation DBEnvironmentConfiguration

- (BOOL)currentViewAreaSupportsUIOutsideSafeArea
{
  v2 = self;
  v3 = [(DBEnvironmentConfiguration *)self systemUILayout];

  if (v3)
  {
    v4 = [(DBEnvironmentConfiguration *)v2 systemUILayout];
    [v4 primaryContentFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(DBEnvironmentConfiguration *)v2 currentViewAreaFrame];
    v20.origin.x = v13;
    v20.origin.y = v14;
    v20.size.width = v15;
    v20.size.height = v16;
    v19.origin.x = v6;
    v19.origin.y = v8;
    v19.size.width = v10;
    v19.size.height = v12;
    LODWORD(v2) = !CGRectEqualToRect(v19, v20);
  }

  else
  {
    v4 = [(DBEnvironmentConfiguration *)v2 _screenInfo];
    v17 = [v4 currentViewArea];
    LOBYTE(v2) = [v17 supportsUIOutsideSafeArea];
  }

  return v2;
}

- (id)_screenInfo
{
  v3 = [(DBEnvironmentConfiguration *)self session];
  v4 = [v3 configuration];
  v5 = [v4 screens];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__DBEnvironmentConfiguration__screenInfo__block_invoke;
  v8[3] = &unk_278F01870;
  v8[4] = self;
  v6 = [v5 bs_firstObjectPassingTest:v8];

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
  v3 = [(DBEnvironmentConfiguration *)self systemUILayout];

  if (!v3)
  {
    return 0;
  }

  v4 = [(DBEnvironmentConfiguration *)self systemUILayout];
  v5 = [v4 hasDualStatusBar];

  return v5;
}

- (BOOL)hasTopStatusBar
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 BOOLForKey:@"ForceSplitStatusBar"];

  if (v4)
  {
    return 1;
  }

  v6 = [(DBEnvironmentConfiguration *)self systemUILayout];

  if (!v6)
  {
    return 0;
  }

  v7 = [(DBEnvironmentConfiguration *)self systemUILayout];
  v8 = [v7 hasTopStatusBar];

  return v8;
}

- (CGRect)currentSafeViewAreaFrame
{
  v3 = [(DBEnvironmentConfiguration *)self systemUILayout];

  if (v3)
  {
    v4 = [(DBEnvironmentConfiguration *)self systemUILayout];
    [v4 primaryContentFrame];
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
  v3 = [WeakRetained currentAnalytics];

  return v3;
}

- (int64_t)carUserInterfaceStyle
{
  session = self->_session;
  v3 = [(FBSDisplayConfiguration *)self->_displayConfiguration hardwareIdentifier];
  v4 = [(CARSession *)session userInterfaceStyleForScreenUUID:v3];

  return v4;
}

- (BOOL)_prefersDarkMapsAppearance
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [(DBEnvironmentConfiguration *)self vehicle];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 mapsAppearancePreference];
    v5 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134349056;
      v17 = v4;
      _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Vehicle map style preference: %{public}ld", &v16, 0xCu);
    }

    v6 = v4 == 2;
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
  v3 = [(DBEnvironmentConfiguration *)self _screenInfo];
  v4 = [(DBEnvironmentConfiguration *)self session];
  v5 = [v4 configuration];
  v6 = [v5 db_displayInfoForScreenInfo:v3];

  v7 = [v6 identifier];
  v8 = [(DBEnvironmentConfiguration *)self vehicle];
  if (!v8)
  {
    v9 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(DBEnvironmentConfiguration *)v9 resolvedUserInterfaceStyle:v10];
    }
  }

  v17 = [v8 appearanceModePreference];
  if (v17 == -1)
  {
    v18 = [(DBEnvironmentConfiguration *)self session];
    v19 = [v18 configuration];
    v17 = [v19 userInterfaceStyle];

    v20 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(DBEnvironmentConfiguration *)v17 resolvedUserInterfaceStyle];
    }
  }

  v21 = DBLogForCategory(0x13uLL);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [MEMORY[0x277CF89F0] descriptionForUserInterfaceStyle:v17];
    v30 = 138412290;
    v31 = v22;
    _os_log_impl(&dword_248146000, v21, OS_LOG_TYPE_DEFAULT, "InterfaceStylePreference is: %@", &v30, 0xCu);
  }

  v23 = [(DBEnvironmentConfiguration *)self themeController];
  v24 = [v23 requiresDarkAppearanceForDisplayID:v7];

  if (v24)
  {
    v25 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v30) = 0;
      v26 = "Theme controller requires dark appearance";
LABEL_17:
      v27 = 2;
      _os_log_impl(&dword_248146000, v25, OS_LOG_TYPE_DEFAULT, v26, &v30, 2u);
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v17 == 2)
  {
    v25 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v30) = 0;
      v26 = "Always dark enabled, returning dark style";
      goto LABEL_17;
    }

LABEL_18:
    v27 = 2;
    goto LABEL_21;
  }

  v27 = [(DBEnvironmentConfiguration *)self carUserInterfaceStyle];
  v25 = DBLogForCategory(0x13uLL);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v28 = CPUIDescriptionForUserInterfaceStyle();
    v30 = 138412290;
    v31 = v28;
    _os_log_impl(&dword_248146000, v25, OS_LOG_TYPE_DEFAULT, "Using car user interface style: %@", &v30, 0xCu);
  }

LABEL_21:

  return v27;
}

- (int64_t)effectiveMapsUserInterfaceStyle
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(DBEnvironmentConfiguration *)self effectiveVehicleAppearancePreference];
  v4 = [(DBEnvironmentConfiguration *)self _prefersDarkMapsAppearance];
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

  if (v3 == 2 && v4)
  {
    v8 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      v9 = 2;
      _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "Using map style dark", &v12, 2u);
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = [(DBEnvironmentConfiguration *)self mapsUserInterfaceStyle];
    v8 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = CPUIDescriptionForUserInterfaceStyle();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "Using environment map style: %{public}@", &v12, 0xCu);
    }
  }

  return v9;
}

- (int64_t)effectiveVehicleAppearancePreference
{
  v3 = [(DBEnvironmentConfiguration *)self vehicle];
  if (!v3)
  {
    v4 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(DBEnvironmentConfiguration *)v4 resolvedUserInterfaceStyle:v5];
    }
  }

  v12 = [v3 appearanceModePreference];
  if (v12 == -1)
  {
    v13 = [(DBEnvironmentConfiguration *)self session];
    v14 = [v13 configuration];
    v12 = [v14 userInterfaceStyle];

    v15 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(DBEnvironmentConfiguration *)v12 effectiveVehicleAppearancePreference];
    }
  }

  return v12;
}

- (DBEnvironmentConfiguration)initWithDisplayConfiguration:(id)a3 layoutPublisher:(id)a4 iconBadgeController:(id)a5 session:(id)a6 supportedFeatures:(unint64_t)a7 processMonitor:(id)a8 thermalMonitor:(id)a9 vehicle:(id)a10 themeController:(id)a11 navigationStateProvider:(id)a12 analyticsProvider:(id)a13
{
  v130 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v105 = a4;
  v18 = a4;
  v19 = a8;
  v113 = v18;
  v112 = a5;
  v115 = a6;
  v111 = a8;
  v110 = a9;
  v109 = a10;
  v114 = a11;
  v108 = a12;
  v20 = a13;
  v123.receiver = self;
  v123.super_class = DBEnvironmentConfiguration;
  v21 = [(DBEnvironmentConfiguration *)&v123 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_iconBadgeController, a5);
    objc_storeStrong(&v22->_session, a6);
    v22->_supportedFeatures = a7;
    objc_storeStrong(&v22->_processMonitor, v19);
    objc_storeStrong(&v22->_thermalMonitor, a9);
    objc_storeStrong(&v22->_navigationStateProvider, a12);
    objc_storeWeak(&v22->_analyticsProvider, v20);
    v23 = [(CARSession *)v22->_session configuration];
    v24 = [v23 liveActivitiesMode];

    if ([v17 isCarDisplay] && _os_feature_enabled_impl() && v24 != 1)
    {
      v25 = objc_alloc_init(_TtC9DashBoard21DBLiveActivityMonitor);
      liveActivityMonitor = v22->_liveActivityMonitor;
      v22->_liveActivityMonitor = v25;
    }

    v27 = [MEMORY[0x277CF89D0] useSceneInterfaceStyle];
    [v27 setState:1];

    v28 = [MEMORY[0x277D759A0] screens];
    v121[0] = MEMORY[0x277D85DD0];
    v121[1] = 3221225472;
    v121[2] = __217__DBEnvironmentConfiguration_initWithDisplayConfiguration_layoutPublisher_iconBadgeController_session_supportedFeatures_processMonitor_thermalMonitor_vehicle_themeController_navigationStateProvider_analyticsProvider___block_invoke;
    v121[3] = &unk_278F01730;
    v107 = v17;
    v29 = v17;
    v122 = v29;
    v30 = [v28 db_firstObjectPassingTest:v121];

    v31 = [v115 configuration];
    v32 = [v31 rightHandDrive];
    v22->_rightHandDrive = v32;
    v22->_layoutJustification = v32;
    objc_storeStrong(&v22->_displayConfiguration, a3);
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
    v40 = [v30 traitCollection];
    v41 = [v40 copy];
    traitCollection = v22->_traitCollection;
    v22->_traitCollection = v41;

    v43 = v22->_screen;
    v44 = [(UIScreen *)v43 _capabilityForKey:*MEMORY[0x277D77538]];
    v45 = v44;
    if (v44)
    {
      v46 = [v44 integerValue];
      v47 = (v46 >> 1) & 1;
      if (v46)
      {
        v48 = [(UIScreen *)v43 _capabilityForKey:*MEMORY[0x277D77540]];
        v49 = [v48 integerValue];
        if (v49 == 1)
        {
          v47 |= 2uLL;
        }

        else if (!v49)
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
    objc_storeStrong(&v22->_displayLayoutPublisher, v105);
    [(FBSDisplayLayoutPublisher *)v22->_displayLayoutPublisher setDisplayConfiguration:v29];
    [(FBSDisplayLayoutPublisher *)v22->_displayLayoutPublisher setInterfaceOrientation:1];
    v22->_connectedWirelessly = [v31 transportType] == 3;
    v22->_acBackSupported = [v31 supportsACBack];
    v50 = +[DBApplicationController sharedInstance];
    v51 = [v50 _appPolicyEvaluator];
    v22->_geoSupported = [v51 isGeoSupported];

    v52 = objc_alloc_init(DBAppHistory);
    appHistory = v22->_appHistory;
    v22->_appHistory = v52;

    v54 = objc_alloc(MEMORY[0x277CF89C0]);
    v55 = [v54 initWithProtocol:&unk_285AB40A0 callbackQueue:MEMORY[0x277D85CD0]];
    observers = v22->_observers;
    v22->_observers = v55;

    v57 = [v31 displays];
    v119[0] = MEMORY[0x277D85DD0];
    v119[1] = 3221225472;
    v119[2] = __217__DBEnvironmentConfiguration_initWithDisplayConfiguration_layoutPublisher_iconBadgeController_session_supportedFeatures_processMonitor_thermalMonitor_vehicle_themeController_navigationStateProvider_analyticsProvider___block_invoke_273;
    v119[3] = &unk_278F01780;
    v58 = v29;
    v120 = v58;
    v59 = [v57 bs_firstObjectPassingTest:v119];

    v22->_OEMIconVisible = [v31 manufacturerIconVisible];
    objc_storeStrong(&v22->_themeController, a11);
    v60 = DBLogForCategory(0);
    v61 = os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT);
    v102 = v20;
    if (v114)
    {
      v62 = v115;
      if (v61)
      {
        *buf = 138412290;
        v125 = v114;
        _os_log_impl(&dword_248146000, v60, OS_LOG_TYPE_DEFAULT, "Theme Controller found: %@", buf, 0xCu);
      }

      v63 = [_TtC9DashBoard28DBAssetWallpaperDataProvider alloc];
      v64 = [v114 themeAssetDocument];
      v65 = [v59 identifier];
      v66 = [(DBAssetWallpaperDataProvider *)v63 initWithThemeAssetDocument:v64 displayID:v65];

      if ([v31 manufacturerIconVisible])
      {
        v67 = [v59 identifier];
        v22->_OEMIconVisible = [v114 allowsOEMIconForDisplayID:v67];
      }

      else
      {
        v22->_OEMIconVisible = 0;
      }
    }

    else
    {
      v62 = v115;
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

    objc_storeStrong(&v22->_vehicle, a10);
    vehicle = v22->_vehicle;
    if (vehicle)
    {
      v71 = [(CRVehicle *)vehicle pairingStatus];
      v72 = DBLogForCategory(0);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v125 = v71;
        _os_log_impl(&dword_248146000, v72, OS_LOG_TYPE_DEFAULT, "Vehicle pairing status: %ld", buf, 0xCu);
      }

      [(DBEnvironmentConfiguration *)v22 setKnownVehicle:v71 != 0];
      [(DBEnvironmentConfiguration *)v22 setPairedVehicle:v71 == 2];
      v73 = [(CRVehicle *)v22->_vehicle identifier];
      v74 = [v73 UUIDString];
      [(DBEnvironmentConfiguration *)v22 setVehicleID:v74];

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
    v77 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    viewAreaToStatusBarEdgeMap = v22->_viewAreaToStatusBarEdgeMap;
    v22->_viewAreaToStatusBarEdgeMap = v77;

    v79 = [v31 manufacturerIconLabel];
    v80 = [v79 copy];
    OEMIconLabel = v22->_OEMIconLabel;
    v22->_OEMIconLabel = v80;

    v22->_supportsDisplayPlugin = [v59 supportsDDPContent];
    if (v22->_themeController)
    {
      v82 = [DBSystemUILayout alloc];
      v83 = [(DBThemeController *)v22->_themeController themeAssetDocument];
      v84 = [v59 identifier];
      v85 = [(DBSystemUILayout *)v82 initWithThemeAssetDocument:v83 displayID:v84 environmentConfiguration:v22];
      systemUILayout = v22->_systemUILayout;
      v22->_systemUILayout = v85;
    }

    v87 = [v31 screens];
    v116[0] = MEMORY[0x277D85DD0];
    v116[1] = 3221225472;
    v116[2] = __217__DBEnvironmentConfiguration_initWithDisplayConfiguration_layoutPublisher_iconBadgeController_session_supportedFeatures_processMonitor_thermalMonitor_vehicle_themeController_navigationStateProvider_analyticsProvider___block_invoke_281;
    v116[3] = &unk_278F017A8;
    v88 = v58;
    v117 = v88;
    v89 = v22;
    v118 = v89;
    [v87 enumerateObjectsUsingBlock:v116];

    v90 = [v88 hardwareIdentifier];
    v89->_mapsUserInterfaceStyle = [v62 mapInterfaceStyleForScreenUUID:v90];

    if (([(DBEnvironmentConfiguration *)v89 supportedFeatures]& 0x10) != 0)
    {
      v91 = [v62 configuration];
      v89->_vehicleDataSession = [v91 supportsVehicleData];
    }

    else
    {
      v89->_vehicleDataSession = 0;
    }

    v92 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      v93 = [(DBEnvironmentConfiguration *)v89 vehicle];
      v94 = [v93 appearanceModePreference];
      *buf = 134217984;
      v125 = v94;
      _os_log_impl(&dword_248146000, v92, OS_LOG_TYPE_DEFAULT, "Env vehicle appearance mode preference: %lu", buf, 0xCu);
    }

    v95 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
    {
      v96 = [(DBEnvironmentConfiguration *)v89 carUserInterfaceStyle];
      *buf = 134217984;
      v125 = v96;
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

    v99 = [MEMORY[0x277D75348] clearColor];
    effectiveSceneBackgroundColor = v89->_effectiveSceneBackgroundColor;
    v89->_effectiveSceneBackgroundColor = v99;

    v17 = v107;
    v20 = v102;
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
  v3 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = DBEnvironmentConfiguration;
  [(DBEnvironmentConfiguration *)&v4 dealloc];
}

- (BOOL)isAmbientBrightnessNighttime
{
  v2 = [(CARSession *)self->_session nightMode];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBEnvironmentConfiguration *)self observers];
  [v5 addObserver:v4];
}

- (void)removeObserver:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DBLogForCategory(0x13uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Removing observer: %@", &v7, 0xCu);
  }

  v6 = [(DBEnvironmentConfiguration *)self observers];
  [v6 removeObserver:v4];
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

- (void)fetchEnhancedIntegrationStatusWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(DBEnvironmentConfiguration *)self session];
  v6 = [v5 MFiCertificateSerialNumber];

  CRIsEnhancedIntegrationEnabledWithCertificateSerialNumber();
}

- (CGRect)_viewAreaFrameForViewArea:(id)a3
{
  v4 = a3;
  [(DBEnvironmentConfiguration *)self screenScale];
  v6 = v5;
  [v4 visibleFrame];
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

- (CGRect)_safeAreaFrameForViewArea:(id)a3
{
  v4 = a3;
  [(DBEnvironmentConfiguration *)self screenScale];
  v6 = v5;
  [v4 safeFrame];
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

- (UIEdgeInsets)_safeAreaInsetsForViewArea:(id)a3
{
  v4 = a3;
  [(DBEnvironmentConfiguration *)self screenScale];
  v6 = v5;
  [(DBEnvironmentConfiguration *)self _viewAreaFrameForViewArea:v4];
  v8 = v7;
  v10 = v9;
  v28 = v11;
  v13 = v12;
  [v4 safeFrame];
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

- (CGRect)_unadjustedSafeAreaFrameForViewArea:(id)a3
{
  v4 = a3;
  [(DBEnvironmentConfiguration *)self screenScale];
  v6 = v5;
  [v4 unadjustedSafeFrame];
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
  v8 = [(DBEnvironmentConfiguration *)self currentStatusBarEdge];
  v9 = [(DBEnvironmentConfiguration *)self interactionAffordances];

  return [DBIconListView iconRowsForScreenHeight:v8 iconImageSize:v9 statusBarEdge:Height interactionAffordances:v5, v7];
}

- (unint64_t)iconColumnCount
{
  [(DBEnvironmentConfiguration *)self currentSafeViewAreaFrame];
  Width = CGRectGetWidth(v11);
  [(DBEnvironmentConfiguration *)self screenScale];
  [_TtC9DashBoard11DBIconImage iconImageInfoForScale:?];
  v5 = v4;
  v7 = v6;
  v8 = [(DBEnvironmentConfiguration *)self currentStatusBarEdge];

  return [DBIconListView iconColumnsForScreenWidth:v8 iconImageSize:Width statusBarEdge:v5, v7];
}

- (CRHomeScreenStyleData)homeScreenStyleData
{
  v2 = [(DBEnvironmentConfiguration *)self vehicle];
  v3 = [v2 homeScreenStyleDataForDisplayWithID:0];
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
  v3 = [(DBEnvironmentConfiguration *)self homeScreenStyleData];
  v4 = [(DBEnvironmentConfiguration *)self resolvedUserInterfaceStyle];
  v5 = [objc_alloc(MEMORY[0x277D661C8]) initWithHomeScreenStyleData:v3 userInterfaceStyle:v4];

  return v5;
}

- (BOOL)hasPhysicalControlBars
{
  v3 = [(DBEnvironmentConfiguration *)self systemUILayout];

  if (!v3)
  {
    return 0;
  }

  v4 = [(DBEnvironmentConfiguration *)self systemUILayout];
  v5 = [v4 hasPhysicalControlBars];

  return v5;
}

- (BOOL)showsInstruments
{
  v3 = [(DBEnvironmentConfiguration *)self vehicle];
  v4 = [v3 displayThemeData];
  if (v4)
  {
    v5 = v4;
    v6 = [(DBEnvironmentConfiguration *)self _screenInfo];
    v7 = [v6 physicalDisplay];
    v8 = [v7 identifier];
    v9 = [v8 isEqualToString:@"Cluster_Display"];

    if (v9)
    {
      return 1;
    }
  }

  else
  {
  }

  v11 = [(DBEnvironmentConfiguration *)self _screenInfo];
  v12 = [v11 physicalDisplay];
  v13 = [v12 showsInstruments];

  return v13;
}

- (void)session:(id)a3 didSetViewArea:(id)a4 forScreenID:(id)a5 withDuration:(double)a6 transitionControlType:(unint64_t)a7
{
  v11 = a4;
  v12 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__DBEnvironmentConfiguration_session_didSetViewArea_forScreenID_withDuration_transitionControlType___block_invoke;
  block[3] = &unk_278F017D0;
  block[4] = self;
  v16 = v12;
  v17 = v11;
  v18 = a7;
  v19 = a6;
  v13 = v11;
  v14 = v12;
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

- (void)session:(id)a3 didUpdateNightMode:(BOOL)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__DBEnvironmentConfiguration_session_didUpdateNightMode___block_invoke;
  v4[3] = &unk_278F017F8;
  v4[4] = self;
  v5 = a4;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

void __57__DBEnvironmentConfiguration_session_didUpdateNightMode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 environmentConfiguration:*(a1 + 32) nightModeDidChange:*(a1 + 40)];
}

- (void)session:(id)a3 didUpdateAppearanceStyle:(int64_t)a4 forScreenUUID:(id)a5
{
  v7 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__DBEnvironmentConfiguration_session_didUpdateAppearanceStyle_forScreenUUID___block_invoke;
  block[3] = &unk_278F01820;
  v11 = self;
  v12 = a4;
  v10 = v7;
  v8 = v7;
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

- (void)session:(id)a3 didUpdateMapAppearanceStyle:(int64_t)a4 forScreenUUID:(id)a5
{
  v7 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__DBEnvironmentConfiguration_session_didUpdateMapAppearanceStyle_forScreenUUID___block_invoke;
  block[3] = &unk_278F01820;
  v11 = self;
  v12 = a4;
  v10 = v7;
  v8 = v7;
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

- (void)sessionDidUpdateCarCapabilities:(id)a3
{
  v4 = DBLogForCategory(0x13uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "CarCapabilities updated, kicking off a style update", v7, 2u);
  }

  v5 = [(DBEnvironmentConfiguration *)self observers];
  [v5 environmentConfiguration:self appearanceStyleDidChange:{-[DBEnvironmentConfiguration carUserInterfaceStyle](self, "carUserInterfaceStyle")}];

  v6 = [(DBEnvironmentConfiguration *)self observers];
  [v6 environmentConfiguration:self mapsAppearanceStyleDidChange:{-[DBEnvironmentConfiguration effectiveMapsUserInterfaceStyle](self, "effectiveMapsUserInterfaceStyle")}];
}

- (void)sessionController:(id)a3 didUpdateVehicle:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 pairingStatus];
    v10 = DBLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 134217984;
      v22 = v9;
      _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_DEFAULT, "Vehicle pairing status: %ld", &v21, 0xCu);
    }

    [(DBEnvironmentConfiguration *)self setKnownVehicle:v9 != 0];
    [(DBEnvironmentConfiguration *)self setPairedVehicle:v9 == 2];
    v11 = [v8 identifier];
    v12 = [v11 UUIDString];
    [(DBEnvironmentConfiguration *)self setVehicleID:v12];

    [(DBEnvironmentConfiguration *)self updateDisplayScaleIfNeeded:v8];
  }

  objc_storeStrong(&self->_vehicle, a4);
  v13 = DBLogForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v8;
    _os_log_impl(&dword_248146000, v13, OS_LOG_TYPE_DEFAULT, "Assigning vehicle to wallpaper preferences: %@", &v21, 0xCu);
  }

  v14 = [(DBEnvironmentConfiguration *)self wallpaperPreferences];
  [v14 setVehicle:v8];

  v15 = [(DBEnvironmentConfiguration *)self observers];
  [v15 environmentConfiguration:self appearancePreferenceDidChange:{objc_msgSend(v8, "appearanceModePreference")}];

  v16 = [(DBEnvironmentConfiguration *)self observers];
  [v16 environmentConfiguration:self appearanceStyleDidChange:{-[DBEnvironmentConfiguration carUserInterfaceStyle](self, "carUserInterfaceStyle")}];

  v17 = [(DBEnvironmentConfiguration *)self observers];
  [v17 environmentConfiguration:self mapsAppearanceStyleDidChange:{-[DBEnvironmentConfiguration effectiveMapsUserInterfaceStyle](self, "effectiveMapsUserInterfaceStyle")}];

  v18 = [(DBEnvironmentConfiguration *)self observers];
  [v18 environmentConfigurationPairedVehiclesDidChange:self];

  v19 = [(DBEnvironmentConfiguration *)self observers];
  v20 = [v8 homeScreenStyleDataForDisplayWithID:0];
  [v19 environmentConfiguration:self homeScreenStyleDidChange:v20];
}

- (void)updateDisplayScaleIfNeeded:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [v4 displayScaleMode];
    v6 = [(DBEnvironmentConfiguration *)self vehicle];
    v7 = [v6 displayScaleMode];

    if (v5 != v7)
    {
      v8 = [(DBEnvironmentConfiguration *)self _screenInfo];
      [v8 canvasPixelSizeForDisplayScaleMode:{objc_msgSend(v4, "displayScaleMode")}];
      v10 = v9;
      v12 = v11;

      v13 = [(DBEnvironmentConfiguration *)self _screenInfo];
      v14 = [(DBEnvironmentConfiguration *)self displayConfiguration];
      [v14 bounds];
      v17 = [v13 displayScaleModesForCanvasPixelSize:{v15, v16}];

      v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "displayScaleMode")}];
      LODWORD(v14) = [v17 containsObject:v18];

      if (v14)
      {
        v19 = DBLogForCategory(0x1BuLL);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = [(DBEnvironmentConfiguration *)self displayConfiguration];
          v28.width = v10;
          v28.height = v12;
          v21 = NSStringFromCGSize(v28);
          *buf = 138543618;
          v24 = v20;
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

- (unint64_t)_statusBarEdgeForViewArea:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl() && [(DBEnvironmentConfiguration *)self hasDualStatusBar])
  {
    v5 = 2;
  }

  else
  {
    v6 = [(DBEnvironmentConfiguration *)self viewAreaToStatusBarEdgeMap];
    v7 = [v6 objectForKey:v4];

    v5 = [v7 integerValue];
  }

  return v5;
}

- (void)_computeStatusBarEdgesForViewAreas:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF89D0] statusBarEdgeOverride];
  v6 = [v5 internalSettingsValue];

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
  v7 = v6;
  v14 = v7;
  v15 = self;
  v16 = &v27;
  v17 = &v23;
  v18 = &v19;
  [v4 bs_each:v13];
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
    [v4 bs_each:v11];
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
    [v4 bs_each:v10];
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
  v3 = [(DBEnvironmentConfiguration *)self session];
  v4 = [v3 configuration];

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(DBEnvironmentConfiguration *)self systemUILayout];

  if (v6)
  {
    [(DBEnvironmentConfiguration *)self currentSafeViewAreaFrame];
    [DBDashboardLayoutEngine insetsForViewArea:[(DBEnvironmentConfiguration *)self currentStatusBarEdge] statusBarEdge:self environmentConfiguration:v7, v8, v9, v10];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [(DBEnvironmentConfiguration *)self systemUILayout];
    [v19 primaryContentFrame];
    v21 = v14 + v20;
    v23 = v12 + v22;
    v25 = v24 - (v14 + v18);
    v27 = v26 - (v12 + v16);

    v28 = [MEMORY[0x277CCAE60] valueWithCGRect:{v21, v23, v25, v27}];
    [v5 addObject:v28];
  }

  else
  {
    v29 = [v4 screens];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __53__DBEnvironmentConfiguration_statusBarInsetViewAreas__block_invoke;
    v31[3] = &unk_278F017A8;
    v31[4] = self;
    v32 = v5;
    [v29 enumerateObjectsUsingBlock:v31];
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

+ (id)_stringForStatusBarEdge:(unint64_t)a3
{
  if (a3 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_278F01908[a3];
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
  v5 = [MEMORY[0x277CF89F0] descriptionForUserInterfaceStyle:a1];
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
  v5 = a1;
  _os_log_error_impl(&dword_248146000, a2, OS_LOG_TYPE_ERROR, "Vehicle preference is invalid: %ld, using car capabilities value: %ld", &v2, 0x16u);
}

@end