@interface DBSessionController
- (CRPairedVehicleManager)pairedVehicleManager;
- (DBSessionController)init;
- (DBSessionControllerDelegate)delegate;
- (id)_sync_pairedVehicle;
- (id)assetBaseURL;
- (id)clusterThemeDisplays;
- (id)extraAssetsURL;
- (id)getURLForAssetWithIdentifier:(id)a3 displayID:(id)a4;
- (id)themeData;
- (unint64_t)assetVersion;
- (void)_applyAXPreferences;
- (void)_handleSessionConnectRequiringThemeAssetWithCompletion:(id)a3;
- (void)_handleSessionConnectWithThemeAsset:(id)a3;
- (void)_pairedVehiclesDidChange:(id)a3;
- (void)_restoreAXPreferences;
- (void)_updateLayerMetadataService;
- (void)_updateVehicleAppearancePreferenceIfNecessary;
- (void)_updateVehicleInfo:(id)a3 completion:(id)a4;
- (void)_updateVehicleInfoSync;
- (void)_updateVehicleInfoWithCompletion:(id)a3;
- (void)addSessionObserver:(id)a3;
- (void)removeSessionObserver:(id)a3;
- (void)session:(id)a3 showUIForScreenInfo:(id)a4 withURL:(id)a5;
- (void)session:(id)a3 stopUIForScreenInfo:(id)a4;
- (void)sessionDidConnect:(id)a3;
- (void)sessionDidDisconnect:(id)a3;
- (void)setNeedsLayerMetadataService:(BOOL)a3 forDisplayIdentity:(id)a4;
- (void)themeAssetLibrary:(id)a3 attemptingDownloadOfAssetWithVersion:(id)a4;
- (void)themeAssetLibrary:(id)a3 completedDownloadOfAsset:(id)a4;
- (void)themeAssetLibrary:(id)a3 didUpdateFromAsset:(id)a4 toAsset:(id)a5;
- (void)themeAssetLibrary:(id)a3 failedDownloadOfAssetWithVersion:(id)a4 error:(id)a5;
@end

@implementation DBSessionController

- (DBSessionController)init
{
  v17.receiver = self;
  v17.super_class = DBSessionController;
  v2 = [(DBSessionController *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CF89C0]);
    v4 = [v3 initWithProtocol:&unk_285AB59E0 callbackQueue:MEMORY[0x277D85CD0]];
    observers = v2->_observers;
    v2->_observers = v4;

    v6 = [objc_alloc(MEMORY[0x277CF89F8]) initForCarPlayShell];
    sessionStatus = v2->_sessionStatus;
    v2->_sessionStatus = v6;

    [(CARSessionStatus *)v2->_sessionStatus addSessionObserver:v2];
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v9 = dispatch_queue_create("com.apple.CarPlay.SessionController", v8);
    vehicleUpdateQueue = v2->_vehicleUpdateQueue;
    v2->_vehicleUpdateQueue = v9;

    v11 = [objc_alloc(MEMORY[0x277D3F038]) initWithResourceType:3 andState:0];
    powerResourceHint = v2->_powerResourceHint;
    v2->_powerResourceHint = v11;

    v13 = objc_alloc_init(MEMORY[0x277CF8A58]);
    featureAvailability = v2->_featureAvailability;
    v2->_featureAvailability = v13;

    v15 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v15 addObserver:v2 selector:sel__pairedVehiclesDidChange_ name:*MEMORY[0x277CF8970] object:0];
  }

  return v2;
}

- (void)setNeedsLayerMetadataService:(BOOL)a3 forDisplayIdentity:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(DBSessionController *)self layerMetadataServiceRequesters];
  v8 = v7;
  if (v4)
  {

    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [(DBSessionController *)self setLayerMetadataServiceRequesters:v9];
    }

    v8 = [(DBSessionController *)self layerMetadataServiceRequesters];
    [v8 addObject:v6];
  }

  else
  {
    [v7 removeObject:v6];
  }

  [(DBSessionController *)self _updateLayerMetadataService];
}

- (void)addSessionObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBSessionController *)self observers];
  [v5 addObserver:v4];
}

- (void)removeSessionObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBSessionController *)self observers];
  [v5 removeObserver:v4];
}

- (void)session:(id)a3 showUIForScreenInfo:(id)a4 withURL:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a5;
  v8 = DBLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 identifier];
    v16 = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "[DBSessionController] Saving showUI URL to defaults: %@ for identifier: %@", &v16, 0x16u);
  }

  v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v11 = [v10 dictionaryForKey:@"DBSessionPreviousShowUIURLDictionary"];
  v12 = [v11 mutableCopy];

  if (!v12)
  {
    v12 = objc_opt_new();
  }

  v13 = [v7 absoluteString];
  v14 = [v6 identifier];
  [v12 setObject:v13 forKeyedSubscript:v14];

  v15 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v15 setObject:v12 forKey:@"DBSessionPreviousShowUIURLDictionary"];
}

- (void)session:(id)a3 stopUIForScreenInfo:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [v5 dictionaryForKey:@"DBSessionPreviousShowUIURLDictionary"];
  v7 = [v6 mutableCopy];

  if (v7)
  {
    v8 = DBLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 identifier];
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "[DBSessionController] Removing showUI URL from defaults for identifier: %@", &v12, 0xCu);
    }

    v10 = [v4 identifier];
    [v7 removeObjectForKey:v10];

    v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v11 setObject:v7 forKey:@"DBSessionPreviousShowUIURLDictionary"];
  }
}

- (void)sessionDidConnect:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__DBSessionController_sessionDidConnect___block_invoke;
  v6[3] = &unk_278F014B8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __41__DBSessionController_sessionDidConnect___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = DBLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v23 = v3;
    _os_log_impl(&dword_248146000, v2, OS_LOG_TYPE_DEFAULT, "[DBSessionController] Session did connect: %@", buf, 0xCu);
  }

  [*(a1 + 32) addObserver:*(a1 + 40)];
  [*(a1 + 40) _updateVehicleInfoSync];
  [*(a1 + 40) _updateVehicleAppearancePreferenceIfNecessary];
  v4 = [*(a1 + 40) featureAvailability];
  [*(a1 + 40) setCurrentSupportedFeatures:{objc_msgSend(v4, "supportedCarPlayFeaturesForSession:", *(a1 + 32))}];

  v5 = [*(a1 + 40) powerResourceHint];
  [v5 updateState:1];

  v6 = DBLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 40) powerResourceHint];
    v8 = [v7 uuid];
    *buf = 138543362;
    v23 = v8;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "[DBSessionController] holding power resource %{public}@", buf, 0xCu);
  }

  v9 = [*(a1 + 40) currentVehicle];
  v10 = [v9 clusterAssetIdentifier];
  if (v10 && ([*(a1 + 40) currentSupportedFeatures] & 8) != 0)
  {
    v13 = [*(a1 + 32) configuration];
    v14 = [v13 hasGaugeClusterScreen];

    if (v14)
    {
      objc_initWeak(buf, *(a1 + 40));
      v15 = *(a1 + 40);
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __41__DBSessionController_sessionDidConnect___block_invoke_319;
      v19 = &unk_278F02070;
      objc_copyWeak(&v21, buf);
      v20 = *(a1 + 32);
      [v15 _handleSessionConnectRequiringThemeAssetWithCompletion:&v16];

      objc_destroyWeak(&v21);
      objc_destroyWeak(buf);
      return [*(a1 + 40) _applyAXPreferences];
    }
  }

  else
  {
  }

  [*(a1 + 40) setCurrentSession:*(a1 + 32)];
  v11 = [*(a1 + 40) delegate];
  [v11 sessionController:*(a1 + 40) didConnectSession:*(a1 + 32)];

  return [*(a1 + 40) _applyAXPreferences];
}

void __41__DBSessionController_sessionDidConnect___block_invoke_319(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = DBLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [WeakRetained currentThemeAsset];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "[DBSessionController] Notifying session did connect with theme asset: %@", &v6, 0xCu);
  }

  [WeakRetained setCurrentSession:*(a1 + 32)];
  v5 = [WeakRetained delegate];
  [v5 sessionController:WeakRetained didConnectSession:*(a1 + 32)];
}

- (void)sessionDidDisconnect:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__DBSessionController_sessionDidDisconnect___block_invoke;
  v6[3] = &unk_278F014B8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __44__DBSessionController_sessionDidDisconnect___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) removeObserver:*(a1 + 40)];
  v2 = DBLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v17 = 138412290;
    v18 = v3;
    _os_log_impl(&dword_248146000, v2, OS_LOG_TYPE_DEFAULT, "[DBSessionController] Session did disconnect: %@", &v17, 0xCu);
  }

  [*(a1 + 40) setCurrentVehicle:0];
  [*(a1 + 40) setCurrentSession:0];
  [*(a1 + 40) setCurrentSupportedFeatures:0];
  v4 = [*(a1 + 40) delegate];
  [v4 sessionController:*(a1 + 40) didDisconnectSession:*(a1 + 32)];

  v5 = [*(a1 + 40) powerResourceHint];
  [v5 updateState:0];

  v6 = DBLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 40) powerResourceHint];
    v8 = [v7 uuid];
    v17 = 138543362;
    v18 = v8;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "[DBSessionController] released power resource %{public}@", &v17, 0xCu);
  }

  CFPreferencesSetAppValue(@"UISyncChannelDisabled", 0, @"com.apple.carplay.internal");
  v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v10 = [v9 objectForKey:@"DBSessionPreviousShowUIURLDictionary"];

  if (v10)
  {
    v11 = DBLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, "[DBSessionController] Removing showUI Dictionary from defaults", &v17, 2u);
    }

    v12 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v12 removeObjectForKey:@"DBSessionPreviousShowUIURLDictionary"];
  }

  v13 = [*(a1 + 40) themeAssetLibrary];
  [v13 invalidate];

  [*(a1 + 40) setThemeAssetLibrary:0];
  [*(a1 + 40) setPendingConnectCompletion:0];
  [*(a1 + 40) setCurrentThemeAsset:0];
  [*(a1 + 40) setThemeController:0];
  v14 = [*(a1 + 40) clusterThemeServiceDomainActivationToken];
  [v14 invalidate];

  [*(a1 + 40) setClusterThemeServiceDomainActivationToken:0];
  v15 = [*(a1 + 40) clusterThemeService];
  [v15 invalidate];

  [*(a1 + 40) setClusterThemeService:0];
  return [*(a1 + 40) _restoreAXPreferences];
}

- (void)_pairedVehiclesDidChange:(id)a3
{
  v4 = a3;
  v5 = DBLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "[DBSessionController] Paired vehicles did change", buf, 2u);
  }

  objc_initWeak(buf, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__DBSessionController__pairedVehiclesDidChange___block_invoke;
  v6[3] = &unk_278F02300;
  objc_copyWeak(&v7, buf);
  [(DBSessionController *)self _updateVehicleInfoWithCompletion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __48__DBSessionController__pairedVehiclesDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateVehicleAppearancePreferenceIfNecessary];
  v2 = DBLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_248146000, v2, OS_LOG_TYPE_DEFAULT, "[DBSessionController] Notifying observers current vehicle did change", v5, 2u);
  }

  v3 = [WeakRetained observers];
  v4 = [WeakRetained currentVehicle];
  [v3 sessionController:WeakRetained didUpdateVehicle:v4];
}

- (void)_updateVehicleAppearancePreferenceIfNecessary
{
  v3 = [(DBSessionController *)self currentSession];
  v4 = [(DBSessionController *)self currentVehicle];
  v5 = v4;
  if (v4 && v3)
  {
    v6 = [v3 configuration];
    v7 = [v6 screens];
    v8 = [v7 firstObject];
    v9 = [v8 supportsAppearanceMode];

    v10 = [v5 appearanceModePreference];
    v11 = DBLogForCategory(0x13uLL);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10 != -1)
    {
      if (v12)
      {
        *v24 = 0;
        v13 = "Appearance preference already stored for this vehicle";
LABEL_14:
        _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, v13, v24, 2u);
        goto LABEL_32;
      }

      goto LABEL_32;
    }

    if (v12)
    {
      *v24 = 0;
      _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, "No appearance preference stored for this vehicle", v24, 2u);
    }

    if (v9)
    {
      v15 = DBLogForCategory(0x13uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        _os_log_impl(&dword_248146000, v15, OS_LOG_TYPE_DEFAULT, "Main display supports UIAppearance, setting preference to automatic", v24, 2u);
      }

      v16 = v5;
      v17 = 0;
    }

    else
    {
      v18 = [v3 configuration];
      v19 = [v18 defaultUserInterfaceStyle];

      v20 = DBLogForCategory(0x13uLL);
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (v19 != -1)
      {
        if (v21)
        {
          *v24 = 0;
          _os_log_impl(&dword_248146000, v20, OS_LOG_TYPE_DEFAULT, "Car supports default appearance, setting preference to provided value", v24, 2u);
        }

        v22 = [v3 configuration];
        [v5 setAppearanceModePreference:{objc_msgSend(v22, "defaultUserInterfaceStyle")}];

        goto LABEL_29;
      }

      if (v21)
      {
        *v24 = 0;
        _os_log_impl(&dword_248146000, v20, OS_LOG_TYPE_DEFAULT, "Main display does not support appearance, setting preference to always dark", v24, 2u);
      }

      v16 = v5;
      v17 = 2;
    }

    [v16 setAppearanceModePreference:v17];
LABEL_29:
    v23 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_248146000, v23, OS_LOG_TYPE_DEFAULT, "Saving updated vehicle", v24, 2u);
    }

    v11 = [(DBSessionController *)self pairedVehicleManager];
    [v11 saveVehicle:v5 completion:&__block_literal_global_39];
    goto LABEL_32;
  }

  if (v3)
  {
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v14 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_248146000, v14, OS_LOG_TYPE_DEFAULT, "Current session not available, not updating appearance preference", v24, 2u);
    }

    if (!v5)
    {
LABEL_12:
      v11 = DBLogForCategory(0x13uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        v13 = "Current session not available, not updating appearance preference";
        goto LABEL_14;
      }

LABEL_32:
    }
  }
}

void __68__DBSessionController__updateVehicleAppearancePreferenceIfNecessary__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __68__DBSessionController__updateVehicleAppearancePreferenceIfNecessary__block_invoke_cold_1();
    }
  }
}

- (void)_applyAXPreferences
{
  v3 = [(DBSessionController *)self currentVehicle];
  v4 = [(DBSessionController *)self currentSession];
  v5 = v4;
  if (v3 && v4)
  {
    v6 = objc_opt_new();
    if (_AXSCommandAndControlEnabled())
    {
      v7 = @"true";
    }

    else
    {
      v7 = @"false";
    }

    v8 = v7;
    if (_AXSCommandAndControlCarPlayEnabled())
    {
      v9 = @"true";
    }

    else
    {
      v9 = @"false";
    }

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"phone:%@, car:%@", v8, v9];
    [v6 setObject:v10 forKeyedSubscript:@"voiceControl"];

    v11 = [v3 boldTextPreference] == 1;
    if (_AXSCarPlayEnhanceTextLegibilityEnabled() != v11)
    {
      _AXSSetCarPlayEnhanceTextLegibilityEnabled();
    }

    if (_AXSEnhanceTextLegibilityEnabled())
    {
      v12 = @"true";
    }

    else
    {
      v12 = @"false";
    }

    v13 = v12;
    if (_AXSCarPlayEnhanceTextLegibilityEnabled())
    {
      v14 = @"true";
    }

    else
    {
      v14 = @"false";
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"phone:%@, car:%@", v13, v14];
    [v6 setObject:v15 forKeyedSubscript:@"boldText"];

    MAPreferencesSetDomainOverride();
    v16 = +[DBAnalytics _axPhoneColorFiltersAnalyticsString];
    v17 = [v3 _axColorFiltersAnalyticsString];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"phone:%@, car:%@", v16, v17];
    [v6 setObject:v18 forKeyedSubscript:@"colorFilters"];

    MAPreferencesSetDomainOverride();
    MADisplayFilterPrefResetAll();
    if ([v3 colorFilterPreference])
    {
      v19 = [v3 colorFilterPreference] != 1;
    }

    else
    {
      v19 = 0;
    }

    if (MADisplayFilterPrefGetCategoryEnabled() != v19)
    {
      MADisplayFilterPrefSetCategoryEnabled();
    }

    if (v19)
    {
      [v3 colorFilterPreference];
      MADisplayFilterPrefSetType();
    }

    v62 = [v3 colorFilterIntensityPreference];
    [v62 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_340];
    if (CPUIDeviceSupportsSoundRecognition())
    {
      [(DBSessionController *)self setCachedSoundRecognitionPreference:0];
      v21 = [MEMORY[0x277CE6F98] sharedInstance];
      -[DBSessionController setCachedSoundRecognitionState:](self, "setCachedSoundRecognitionState:", [v21 soundDetectionState]);

      if ((self->_cachedSoundRecognitionState - 1) <= 1)
      {
        [(DBSessionController *)self setCachedSoundRecognitionPreference:[(DBSessionController *)self cachedSoundRecognitionPreference]| 1];
        v22 = [MEMORY[0x277CE6F98] sharedInstance];
        v23 = [v22 enabledSoundDetectionTypes];
        v24 = MEMORY[0x277CE6F18];
        v25 = [v23 containsObject:*MEMORY[0x277CE6F18]];

        if (v25)
        {
          [(DBSessionController *)self setCachedSoundRecognitionPreference:[(DBSessionController *)self cachedSoundRecognitionPreference]| 2];
        }

        v26 = [MEMORY[0x277CE6F98] sharedInstance];
        v27 = [v26 enabledSoundDetectionTypes];
        v28 = [v27 containsObject:*MEMORY[0x277CE6F80]];

        if (v28)
        {
          [(DBSessionController *)self setCachedSoundRecognitionPreference:[(DBSessionController *)self cachedSoundRecognitionPreference]| 4];
        }

        v29 = [MEMORY[0x277CE6F98] sharedInstance];
        v30 = [v29 enabledSoundDetectionTypes];
        v31 = [v30 containsObject:*MEMORY[0x277CE6F30]];

        if (v31)
        {
          [(DBSessionController *)self setCachedSoundRecognitionPreference:[(DBSessionController *)self cachedSoundRecognitionPreference]| 8];
        }

        v32 = [v3 soundRecognitionPreference];
        v33 = [MEMORY[0x277CE6F98] sharedInstance];
        v34 = v33;
        v35 = *v24;
        if ((v32 & 2) != 0)
        {
          [v33 addSoundDetectionType:v35];
        }

        else
        {
          [v33 removeSoundDetectionType:v35];
        }

        v36 = [MEMORY[0x277CE6F98] sharedInstance];
        v37 = v36;
        v38 = *MEMORY[0x277CE6F80];
        if ((v32 & 4) != 0)
        {
          [v36 addSoundDetectionType:v38];
        }

        else
        {
          [v36 removeSoundDetectionType:v38];
        }

        v39 = [MEMORY[0x277CE6F98] sharedInstance];
        v40 = v39;
        v41 = *MEMORY[0x277CE6F30];
        if ((v32 & 8) != 0)
        {
          [v39 addSoundDetectionType:v41];
        }

        else
        {
          [v39 removeSoundDetectionType:v41];
        }

        v42 = (v32 & 8) >> 2;
        if ((v32 & 4) != 0)
        {
          v42 = 2;
        }

        if ((v32 & 3) == 1)
        {
          v43 = v42;
        }

        else
        {
          v43 = 2 * (v32 & 1);
        }

        v44 = [MEMORY[0x277CE6F98] sharedInstance];
        [v44 setSoundDetectionState:v43];
      }
    }

    if ([v3 voiceControlPreference])
    {
      [v3 voiceControlPreference];
      _AXSCommandAndControlCarPlaySetEnabled();
    }

    else
    {
      if (_AXSCommandAndControlEnabled())
      {
        v45 = 1;
      }

      else
      {
        v45 = 2;
      }

      [v3 setVoiceControlPreference:v45];
      [v3 voiceControlPreference];
      _AXSCommandAndControlCarPlaySetEnabled();
      v46 = [(DBSessionController *)self pairedVehicleManager];
      [v46 saveVehicle:v3 completion:&__block_literal_global_347];
    }

    v47 = [v3 _axSoundRecognitionAnalyticsString];
    v48 = [DBAnalytics _axPhoneSoundRecognitionAnalyticsString:[(DBSessionController *)self cachedSoundRecognitionPreference]];
    v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"phone:%@, car:%@", v48, v47];
    [v6 setObject:v49 forKeyedSubscript:@"soundRecognition"];

    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    v51 = @"true";
    if (!IsReduceMotionEnabled)
    {
      v51 = @"false";
    }

    v52 = v51;
    v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"phone:%@, car:%@", v52, v52];
    [v6 setObject:v53 forKeyedSubscript:@"reduceMotion"];

    v54 = *MEMORY[0x277D76838];
    v55 = [v3 textSizePreference] - 2;
    if (v55 <= 2)
    {
      v56 = **(&unk_278F03E00 + v55);

      v54 = v56;
    }

    v57 = [MEMORY[0x277CF89D0] contentSize];
    v58 = [v57 value];
    v59 = [v54 isEqualToString:v58];

    if ((v59 & 1) == 0)
    {
      v60 = [MEMORY[0x277CF89D0] contentSize];
      [v60 setValue:v54];
    }

    if (+[DBAnalytics shouldSendAnalyticsEvents])
    {
      v61 = [v5 analytics_dictionaryRepresentationWithVehicle:v3];
      [v6 addEntriesFromDictionary:v61];
      [v6 setObject:0 forKeyedSubscript:@"supportsDestinationSharing"];
      [v6 setObject:0 forKeyedSubscript:@"systemNightMode"];
      [v6 setObject:0 forKeyedSubscript:@"transports"];
      AnalyticsSendEvent();
    }

LABEL_70:
    goto LABEL_71;
  }

  if (v4)
  {
    if (!v3)
    {
LABEL_25:
      v6 = DBLogForCategory(0x13uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 0;
        _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Current session not available, not updating ax appearance preference", v63, 2u);
      }

      goto LABEL_70;
    }
  }

  else
  {
    v20 = DBLogForCategory(0x13uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v20, OS_LOG_TYPE_DEFAULT, "Current session not available, not updating ax appearance preference", buf, 2u);
    }

    if (!v3)
    {
      goto LABEL_25;
    }
  }

LABEL_71:
}

void __42__DBSessionController__applyAXPreferences__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (([v4 isEqualToNumber:&unk_285AA47D8] & 1) == 0)
  {
    [v4 isEqualToNumber:&unk_285AA47F0];
  }

  if ([v5 isEqualToString:@"CARColorFilterIntensityGrayscaleKey"])
  {
    MADisplayFilterPrefSetGrayscaleCorrectionIntensity();
  }

  else if ([v5 isEqualToString:@"CARColorFilterIntensityRedGreenKey"])
  {
    MADisplayFilterPrefSetRedColorCorrectionIntensity();
  }

  else if ([v5 isEqualToString:@"CARColorFilterIntensityGreenRedKey"])
  {
    MADisplayFilterPrefSetGreenColorCorrectionIntensity();
  }

  else if ([v5 isEqualToString:@"CARColorFilterIntensityBlueYellowKey"])
  {
    MADisplayFilterPrefSetBlueColorCorrectionIntensity();
  }
}

void __42__DBSessionController__applyAXPreferences__block_invoke_345(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = DBLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __42__DBSessionController__applyAXPreferences__block_invoke_345_cold_1();
    }
  }
}

- (void)_restoreAXPreferences
{
  if (CPUIDeviceSupportsSoundRecognition())
  {
    v3 = [MEMORY[0x277CE6F98] sharedInstance];
    v4 = [v3 soundDetectionState];

    if (self->_cachedSoundRecognitionState != v4)
    {
      v5 = [MEMORY[0x277CE6F98] sharedInstance];
      [v5 setSoundDetectionState:self->_cachedSoundRecognitionState];
    }

    v6 = [(DBSessionController *)self cachedSoundRecognitionPreference]& 2;
    v7 = [MEMORY[0x277CE6F98] sharedInstance];
    v8 = [v7 enabledSoundDetectionTypes];
    v9 = MEMORY[0x277CE6F18];
    v10 = [v8 containsObject:*MEMORY[0x277CE6F18]];

    if (v10 != v6 >> 1)
    {
      v11 = [MEMORY[0x277CE6F98] sharedInstance];
      v12 = v11;
      v13 = *v9;
      if (v6)
      {
        [v11 addSoundDetectionType:v13];
      }

      else
      {
        [v11 removeSoundDetectionType:v13];
      }
    }

    v14 = [(DBSessionController *)self cachedSoundRecognitionPreference]& 4;
    v15 = [MEMORY[0x277CE6F98] sharedInstance];
    v16 = [v15 enabledSoundDetectionTypes];
    v17 = MEMORY[0x277CE6F80];
    v18 = [v16 containsObject:*MEMORY[0x277CE6F80]];

    if (v18 != v14 >> 2)
    {
      v19 = [MEMORY[0x277CE6F98] sharedInstance];
      v20 = v19;
      v21 = *v17;
      if (v14)
      {
        [v19 addSoundDetectionType:v21];
      }

      else
      {
        [v19 removeSoundDetectionType:v21];
      }
    }

    v22 = [(DBSessionController *)self cachedSoundRecognitionPreference]& 8;
    v23 = [MEMORY[0x277CE6F98] sharedInstance];
    v24 = [v23 enabledSoundDetectionTypes];
    v25 = MEMORY[0x277CE6F30];
    v26 = [v24 containsObject:*MEMORY[0x277CE6F30]];

    if (v26 != v22 >> 3)
    {
      v27 = [MEMORY[0x277CE6F98] sharedInstance];
      v28 = v27;
      v29 = *v25;
      if (v22)
      {
        [v27 addSoundDetectionType:v29];
      }

      else
      {
        [v27 removeSoundDetectionType:v29];
      }
    }
  }

  if (_AXSCommandAndControlCarPlayEnabled())
  {

    _AXSCommandAndControlCarPlaySetEnabled();
  }
}

- (void)_updateVehicleInfoSync
{
  BSDispatchQueueAssertMain();
  v3 = [(DBSessionController *)self _sync_pairedVehicle];
  [(DBSessionController *)self _updateVehicleInfo:v3 completion:0];
}

- (void)_updateVehicleInfoWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(DBSessionController *)self sessionStatus];
  v6 = [v5 currentSession];

  if (v6)
  {
    v7 = [(DBSessionController *)self vehicleUpdateQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__DBSessionController__updateVehicleInfoWithCompletion___block_invoke;
    v9[3] = &unk_278F02D40;
    v9[4] = self;
    v10 = v4;
    dispatch_async(v7, v9);
  }

  else
  {
    v8 = DBLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "[DBSessionController] No session available to perform paired-vehicle update!", buf, 2u);
    }
  }
}

void __56__DBSessionController__updateVehicleInfoWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _sync_pairedVehicle];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DBSessionController__updateVehicleInfoWithCompletion___block_invoke_2;
  block[3] = &unk_278F02D90;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_updateVehicleInfo:(id)a3 completion:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  BSDispatchQueueAssertMain();
  if (!v6)
  {
    v8 = [(DBSessionController *)self sessionStatus];
    v9 = [v8 currentSession];

    v10 = DBLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_DEFAULT, "[DBSessionController] Failed to find a matching vehicle for session %@", &v11, 0xCu);
    }
  }

  [(DBSessionController *)self setCurrentVehicle:v6];
  if (v7)
  {
    v7[2](v7);
  }
}

- (CRPairedVehicleManager)pairedVehicleManager
{
  pairedVehicleManager = self->_pairedVehicleManager;
  if (!pairedVehicleManager)
  {
    v4 = objc_alloc_init(MEMORY[0x277CF8A68]);
    v5 = self->_pairedVehicleManager;
    self->_pairedVehicleManager = v4;

    pairedVehicleManager = self->_pairedVehicleManager;
  }

  return pairedVehicleManager;
}

- (id)_sync_pairedVehicle
{
  v3 = [(DBSessionController *)self sessionStatus];
  v4 = [v3 currentSession];

  if (v4)
  {
    v5 = [v4 MFiCertificateSerialNumber];
    if (v5)
    {
      v6 = [(DBSessionController *)self pairedVehicleManager];
      v7 = [v6 vehicleForCertificateSerial:v5];

      goto LABEL_10;
    }

    v8 = DBLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "[DBSessionController] Failed to find paired vehicle - no certificate serial", v10, 2u);
    }
  }

  else
  {
    v5 = DBLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "[DBSessionController] Failed to find paired vehicle - no current session", buf, 2u);
    }
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (void)_handleSessionConnectRequiringThemeAssetWithCompletion:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DBSessionController *)self themeAssetLibrary];

  if (v5)
  {
    v6 = DBLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [DBSessionController _handleSessionConnectRequiringThemeAssetWithCompletion:];
    }

    v7 = [(DBSessionController *)self themeAssetLibrary];
    [v7 invalidate];

    [(DBSessionController *)self setThemeAssetLibrary:0];
  }

  v8 = objc_alloc(MEMORY[0x277CF8A00]);
  v9 = [(DBSessionController *)self currentVehicle];
  v10 = [v8 initWithVehicle:v9];
  themeAssetLibrary = self->_themeAssetLibrary;
  self->_themeAssetLibrary = v10;

  [(CARThemeAssetLibrary *)self->_themeAssetLibrary addObserver:self];
  [(DBSessionController *)self setPendingConnectCompletion:v4];

  v12 = DBLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(DBSessionController *)self currentVehicle];
    *buf = 138412290;
    v17 = v13;
    _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "[DBSessionController] Fetching theme asset for current vehicle: %@", buf, 0xCu);
  }

  v14 = self->_themeAssetLibrary;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__DBSessionController__handleSessionConnectRequiringThemeAssetWithCompletion___block_invoke;
  v15[3] = &unk_278F03DE0;
  v15[4] = self;
  [(CARThemeAssetLibrary *)v14 findCurrentAssetWithCompletion:v15];
}

void __78__DBSessionController__handleSessionConnectRequiringThemeAssetWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__DBSessionController__handleSessionConnectRequiringThemeAssetWithCompletion___block_invoke_2;
  v6[3] = &unk_278F014B8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __78__DBSessionController__handleSessionConnectRequiringThemeAssetWithCompletion___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = DBLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_248146000, v2, OS_LOG_TYPE_INFO, "[DBSessionController] Received theme asset %@", &v5, 0xCu);
  }

  if (*(a1 + 32))
  {
    [*(a1 + 40) _handleSessionConnectWithThemeAsset:?];
  }

  else
  {
    v4 = DBLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5) = 0;
      _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "[DBSessionController] Theme asset not ready yet.", &v5, 2u);
    }
  }
}

- (void)_handleSessionConnectWithThemeAsset:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DBSessionController *)self currentThemeAsset];

  if (!v5)
  {
    v7 = objc_alloc_init(MEMORY[0x277CF9290]);
    clusterThemeService = self->_clusterThemeService;
    self->_clusterThemeService = v7;

    [(CRSUIClusterThemeService *)self->_clusterThemeService setThemeDataProvider:self];
    v9 = [MEMORY[0x277CF32D0] activateManualDomain:@"com.apple.CarPlay.ClusterTheme"];
    clusterThemeServiceDomainActivationToken = self->_clusterThemeServiceDomainActivationToken;
    self->_clusterThemeServiceDomainActivationToken = v9;

    [(DBSessionController *)self setCurrentThemeAsset:v4];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__DBSessionController__handleSessionConnectWithThemeAsset___block_invoke;
    aBlock[3] = &unk_278F01580;
    aBlock[4] = self;
    v6 = _Block_copy(aBlock);
    v11 = [v4 layoutURL];
    v12 = DBLogForCategory(0x1DuLL);
    v13 = v12;
    if (!v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [DBSessionController _handleSessionConnectWithThemeAsset:];
      }

      (*(v6 + 16))(v6);
      goto LABEL_19;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v11;
      _os_log_impl(&dword_248146000, v13, OS_LOG_TYPE_DEFAULT, "[DBSessionController] Theme asset layout document available at URL %@", buf, 0xCu);
    }

    kdebug_trace();
    v14 = [[DBThemeAssetDocument alloc] initWithDocumentURL:v11];
    kdebug_trace();
    if (v14)
    {
      v15 = [[_TtC9DashBoard17DBThemeController alloc] initWithThemeAssetDocument:v14];
      [(DBSessionController *)self setThemeController:v15];

      v16 = self->_clusterThemeService;
      v17 = [(DBSessionController *)self extraAssetsURL];
      [(CRSUIClusterThemeService *)v16 updateExtraAssetsURL:v17];

      v18 = [(DBSessionController *)self themeController];
      v19 = [(DBSessionController *)self currentVehicle];
      v20 = [v18 needsToUpdateThemeDataOnVehicle:v19];

      if (!v20)
      {
LABEL_18:
        (*(v6 + 16))(v6);

LABEL_19:
        goto LABEL_20;
      }

      v21 = DBLogForCategory(0x1DuLL);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_248146000, v21, OS_LOG_TYPE_DEFAULT, "Theme data failed validation, updating vehicle.", buf, 2u);
      }

      v22 = [(DBSessionController *)self currentVehicle];
      v23 = [(DBSessionController *)self themeController];
      v24 = [(DBSessionController *)self currentVehicle];
      v25 = [v24 displayThemeData];
      [v22 setAppearanceModePreference:{objc_msgSend(v23, "defaultAppearanceModePreferenceForThemeData:", v25)}];

      v26 = [(DBSessionController *)self pairedVehicleManager];
      v27 = [(DBSessionController *)self currentVehicle];
      [v26 saveVehicle:v27 completion:&__block_literal_global_379];
    }

    else
    {
      v26 = DBLogForCategory(0x1DuLL);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [DBSessionController _handleSessionConnectWithThemeAsset:];
      }
    }

    goto LABEL_18;
  }

  v6 = DBLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [DBSessionController _handleSessionConnectWithThemeAsset:];
  }

LABEL_20:
}

uint64_t __59__DBSessionController__handleSessionConnectWithThemeAsset___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingConnectCompletion];

  if (v2)
  {
    v3 = [*(a1 + 32) pendingConnectCompletion];
    v3[2]();
  }

  v4 = *(a1 + 32);

  return [v4 setPendingConnectCompletion:0];
}

void __59__DBSessionController__handleSessionConnectWithThemeAsset___block_invoke_377(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = DBLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __59__DBSessionController__handleSessionConnectWithThemeAsset___block_invoke_377_cold_1();
    }
  }
}

- (void)themeAssetLibrary:(id)a3 attemptingDownloadOfAssetWithVersion:(id)a4
{
  v4 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__DBSessionController_themeAssetLibrary_attemptingDownloadOfAssetWithVersion___block_invoke;
  block[3] = &unk_278F01580;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __78__DBSessionController_themeAssetLibrary_attemptingDownloadOfAssetWithVersion___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = DBLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_248146000, v2, OS_LOG_TYPE_INFO, "attempting download for asset version: %@", &v4, 0xCu);
  }
}

- (void)themeAssetLibrary:(id)a3 failedDownloadOfAssetWithVersion:(id)a4 error:(id)a5
{
  v6 = a4;
  v7 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__DBSessionController_themeAssetLibrary_failedDownloadOfAssetWithVersion_error___block_invoke;
  v10[3] = &unk_278F014B8;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

void __80__DBSessionController_themeAssetLibrary_failedDownloadOfAssetWithVersion_error___block_invoke()
{
  v0 = DBLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __80__DBSessionController_themeAssetLibrary_failedDownloadOfAssetWithVersion_error___block_invoke_cold_1();
  }
}

- (void)themeAssetLibrary:(id)a3 completedDownloadOfAsset:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__DBSessionController_themeAssetLibrary_completedDownloadOfAsset___block_invoke;
  v7[3] = &unk_278F014B8;
  v8 = v5;
  v9 = self;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __66__DBSessionController_themeAssetLibrary_completedDownloadOfAsset___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = DBLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_248146000, v2, OS_LOG_TYPE_DEFAULT, "Asset download completed: %@", &v5, 0xCu);
  }

  return [*(a1 + 40) _handleSessionConnectWithThemeAsset:*(a1 + 32)];
}

- (void)themeAssetLibrary:(id)a3 didUpdateFromAsset:(id)a4 toAsset:(id)a5
{
  v6 = a4;
  v7 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__DBSessionController_themeAssetLibrary_didUpdateFromAsset_toAsset___block_invoke;
  v10[3] = &unk_278F014B8;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

void __68__DBSessionController_themeAssetLibrary_didUpdateFromAsset_toAsset___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = DBLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_248146000, v2, OS_LOG_TYPE_INFO, "new asset is available: %@, previousAsset: %@", &v5, 0x16u);
  }
}

- (id)themeData
{
  v2 = [(DBSessionController *)self currentVehicle];
  v3 = [v2 displayThemeData];

  return v3;
}

- (id)clusterThemeDisplays
{
  v2 = [(DBSessionController *)self themeController];
  v3 = [v2 displays];

  return v3;
}

- (id)assetBaseURL
{
  v2 = [(DBSessionController *)self currentThemeAsset];
  v3 = [v2 layoutURL];

  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAC90]) initWithURL:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)extraAssetsURL
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = DBLogForCategory(0x1DuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(DBSessionController *)self themeController];
    v5 = [(DBSessionController *)self themeController];
    v6 = [v5 extraAssetsURL];
    v16 = 138412546;
    v17 = v4;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_INFO, "controller=%@ extraAssetsURL=%@", &v16, 0x16u);
  }

  v7 = [(DBSessionController *)self themeController];
  if (v7 && (v8 = v7, -[DBSessionController themeController](self, "themeController"), v9 = objc_claimAutoreleasedReturnValue(), [v9 extraAssetsURL], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v10))
  {
    v11 = objc_alloc(MEMORY[0x277CCAC90]);
    v12 = [(DBSessionController *)self themeController];
    v13 = [v12 extraAssetsURL];
    v14 = [v11 initWithURL:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)assetVersion
{
  v2 = [(DBSessionController *)self themeController];
  v3 = [v2 assetVersion];

  return v3;
}

- (id)getURLForAssetWithIdentifier:(id)a3 displayID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DBSessionController *)self themeController];
  v9 = [v8 urlFor:v7 displayID:v6];

  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277CCAC90]) initWithURL:v9 readonly:1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_updateLayerMetadataService
{
  v3 = [(DBSessionController *)self layerMetadataServiceRequesters];
  v4 = [v3 count];

  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"UISyncChannelDisabled", @"com.apple.carplay.internal", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v6 = AppBooleanValue == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    p_super = DBLogForCategory(0x15uLL);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_248146000, p_super, OS_LOG_TYPE_DEFAULT, "[DBSessionController] UISync is disabled, the channel will not be opened for this session", v18, 2u);
    }

    goto LABEL_18;
  }

  if (!v4)
  {
    v14 = [(DBSessionController *)self layerMetadataService];
    [v14 invalidate];

    layerMetadataService = self->_layerMetadataService;
    self->_layerMetadataService = 0;

    v16 = [(DBSessionController *)self uisyncChannel];
    [v16 invalidate];

    p_super = &self->_uisyncChannel->super;
    self->_uisyncChannel = 0;
LABEL_18:

    return;
  }

  if (self->_uisyncChannel)
  {
    goto LABEL_21;
  }

  v7 = [(DBSessionController *)self currentSession];

  if (v7)
  {
    v8 = [DBUISyncChannel alloc];
    v9 = [(DBSessionController *)self currentSession];
    v10 = [(DBUISyncChannel *)v8 initWithSession:v9];
    uisyncChannel = self->_uisyncChannel;
    self->_uisyncChannel = v10;
  }

  else
  {
    v9 = DBLogForCategory(0x15uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DBSessionController _updateLayerMetadataService];
    }
  }

  if (self->_uisyncChannel)
  {
LABEL_21:
    if (!self->_layerMetadataService)
    {
      v17 = objc_alloc_init(DBLayerMetadataService);
      p_super = &self->_layerMetadataService->super;
      self->_layerMetadataService = v17;
      goto LABEL_18;
    }
  }
}

- (DBSessionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __68__DBSessionController__updateVehicleAppearancePreferenceIfNecessary__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __42__DBSessionController__applyAXPreferences__block_invoke_345_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handleSessionConnectRequiringThemeAssetWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handleSessionConnectWithThemeAsset:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handleSessionConnectWithThemeAsset:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__DBSessionController__handleSessionConnectWithThemeAsset___block_invoke_377_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end