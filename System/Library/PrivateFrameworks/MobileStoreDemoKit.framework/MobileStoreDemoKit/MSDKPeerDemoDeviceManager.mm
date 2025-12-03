@interface MSDKPeerDemoDeviceManager
+ (id)sharedInstance;
- (BOOL)_setUpXPCConnectionIfNeeded;
- (BOOL)registerPeerEventsObserver:(id)observer;
- (MSDKPeerDemoDeviceManager)init;
- (MSDKPeerEventsObserverProtocol)observer;
- (NSArray)discoveredPeers;
- (id)_remoteObjectProxyWithErrorHandler:(id)handler;
- (void)_cleanUpUponXPCDisconnection;
- (void)_setUpXPCConnectionIfNeeded;
- (void)adjustVolumeOnPeer:(id)peer toValue:(float)value forCategory:(unint64_t)category withCompletion:(id)completion;
- (void)attemptPairingWithPeer:(id)peer withCompletion:(id)completion;
- (void)changeWiFiSettingsOnPeer:(id)peer newSettings:(id)settings withCompletion:(id)completion;
- (void)enumerateTestScriptsOnPeer:(id)peer withCompletion:(id)completion;
- (void)fetchDeviceInfoFromPeer:(id)peer withCompletion:(id)completion;
- (void)getAccessibiltiySettingsOnPeer:(id)peer withCompletion:(id)completion;
- (void)getIconImagesOfVisibleAppsOnPeer:(id)peer height:(float)height width:(float)width scale:(float)scale withCompletion:(id)completion;
- (void)getMuseBuddyResetValueOnPeer:(id)peer withCompletion:(id)completion;
- (void)initiateAirPlayAssistedFromPeer:(id)peer usingParameters:(id)parameters discoveryMode:(unint64_t)mode withCompletion:(id)completion;
- (void)initiateIPDResetOnPeer:(id)peer targetIPD:(double)d withCompletion:(id)completion;
- (void)invokeInputRecoveryOnPeer:(id)peer forType:(unint64_t)type withCompletion:(id)completion;
- (void)launchAppOnPeer:(id)peer appIdentifier:(id)identifier withCompletion:(id)completion;
- (void)listAppsOnPeer:(id)peer appKind:(unint64_t)kind withCompletion:(id)completion;
- (void)listAvailableEnvironmentsOnPeer:(id)peer withCompletion:(id)completion;
- (void)loadLSMeasurementsOnPeer:(id)peer withCompletion:(id)completion;
- (void)obtainGKMetricsFromPeer:(id)peer withCompletion:(id)completion;
- (void)obtainGKResultsFromPeer:(id)peer withCompletion:(id)completion;
- (void)providerDidDiscoverNewPeer:(id)peer;
- (void)providerDidLoseExistingPeerOfID:(id)d;
- (void)providerDidUpdateDeviceInfoOnPeerOfID:(id)d withNewProperties:(id)properties;
- (void)queryIPDResetStageOnPeer:(id)peer withCompletion:(id)completion;
- (void)readIPDStatusFromPeer:(id)peer withCompletion:(id)completion;
- (void)removePairedPeer:(id)peer withCompletion:(id)completion;
- (void)resetToPassThroughOnPeer:(id)peer withCompletion:(id)completion;
- (void)retrieveHSCoachingSuggestionFromPeer:(id)peer withCompletion:(id)completion;
- (void)setAccessibiltiySettingsOnPeer:(id)peer newSettings:(id)settings withCompletion:(id)completion;
- (void)setActiveEnvironmentOnPeer:(id)peer environmentID:(id)d withCompletion:(id)completion;
- (void)setImmersionLevelOnPeer:(id)peer immersionLevel:(float)level animationDuration:(float)duration withCompletion:(id)completion;
- (void)setLanguageAndRegionOnPeer:(id)peer languageCode:(id)code regionCode:(id)regionCode withCompletion:(id)completion;
- (void)skipAutoIPDAdjustmentOnPeer:(id)peer withCompletion:(id)completion;
- (void)startPeerDiscoveryWithCompletion:(id)completion;
- (void)subscribeDeviceInfoFromPeer:(id)peer withCompletion:(id)completion;
- (void)syncCurrentWiFiSettingsToPeer:(id)peer withCompletion:(id)completion;
- (void)terminateAppOnPeer:(id)peer appIdentifier:(id)identifier withCompletion:(id)completion;
- (void)unregisterPeerEventsObserver;
- (void)wipeCustomerAssetsOnPeer:(id)peer withCompletion:(id)completion;
@end

@implementation MSDKPeerDemoDeviceManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[MSDKPeerDemoDeviceManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __43__MSDKPeerDemoDeviceManager_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(MSDKPeerDemoDeviceManager);

  return MEMORY[0x2821F96F8]();
}

- (MSDKPeerDemoDeviceManager)init
{
  v5.receiver = self;
  v5.super_class = MSDKPeerDemoDeviceManager;
  v2 = [(MSDKPeerDemoDeviceManager *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
    [(MSDKPeerDemoDeviceManager *)v2 setPeers:v3];
  }

  return v2;
}

- (NSArray)discoveredPeers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  peers = [(MSDKPeerDemoDeviceManager *)selfCopy peers];
  allValues = [peers allValues];

  objc_sync_exit(selfCopy);

  return allValues;
}

- (BOOL)registerPeerEventsObserver:(id)observer
{
  v25 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  v5 = defaultLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[MSDKPeerDemoDeviceManager registerPeerEventsObserver:]";
    _os_log_impl(&dword_259B7D000, v5, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  v6 = [observerCopy conformsToProtocol:&unk_286AE9918];
  if (v6)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(MSDKPeerDemoDeviceManager *)selfCopy setObserver:observerCopy];
    peers = [(MSDKPeerDemoDeviceManager *)selfCopy peers];
    allValues = [peers allValues];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = allValues;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v18 + 1) + 8 * v13);
          observer = [(MSDKPeerDemoDeviceManager *)selfCopy observer];
          [observer managerDidFindPeer:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [MSDKPeerDemoDeviceManager registerPeerEventsObserver:];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)unregisterPeerEventsObserver
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = defaultLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[MSDKPeerDemoDeviceManager unregisterPeerEventsObserver]";
    _os_log_impl(&dword_259B7D000, v3, OS_LOG_TYPE_DEFAULT, "%s: called.", &v6, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MSDKPeerDemoDeviceManager *)selfCopy setObserver:0];
  objc_sync_exit(selfCopy);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)startPeerDiscoveryWithCompletion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = defaultLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[MSDKPeerDemoDeviceManager startPeerDiscoveryWithCompletion:]";
    _os_log_impl(&dword_259B7D000, v5, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__MSDKPeerDemoDeviceManager_startPeerDiscoveryWithCompletion___block_invoke;
    v17[3] = &unk_2798EF628;
    v7 = completionCopy;
    v18 = v7;
    v8 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v17];
    [v8 startPeerDiscoveryWithCompletion:v7];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super startPeerDiscoveryWithCompletion:v9, v10, v11, v12, v13, v14, v15];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)attemptPairingWithPeer:(id)peer withCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[MSDKPeerDemoDeviceManager attemptPairingWithPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __67__MSDKPeerDemoDeviceManager_attemptPairingWithPeer_withCompletion___block_invoke;
    v23[3] = &unk_2798EF628;
    v10 = completionCopy;
    v24 = v10;
    v11 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v23];
    identifier = [peerCopy identifier];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __67__MSDKPeerDemoDeviceManager_attemptPairingWithPeer_withCompletion___block_invoke_2;
    v21[3] = &unk_2798EF628;
    v22 = v10;
    [v11 attemptPairingWithPeerOfID:identifier withCompletion:v21];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super attemptPairingWithPeer:v13 withCompletion:v14, v15, v16, v17, v18, v19];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)subscribeDeviceInfoFromPeer:(id)peer withCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[MSDKPeerDemoDeviceManager subscribeDeviceInfoFromPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __72__MSDKPeerDemoDeviceManager_subscribeDeviceInfoFromPeer_withCompletion___block_invoke;
    v23[3] = &unk_2798EF628;
    v10 = completionCopy;
    v24 = v10;
    v11 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v23];
    identifier = [peerCopy identifier];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __72__MSDKPeerDemoDeviceManager_subscribeDeviceInfoFromPeer_withCompletion___block_invoke_2;
    v21[3] = &unk_2798EF628;
    v22 = v10;
    [v11 subscribeDeviceInfoFromPeerOfID:identifier withCompletion:v21];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super subscribeDeviceInfoFromPeer:v13 withCompletion:v14, v15, v16, v17, v18, v19];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)fetchDeviceInfoFromPeer:(id)peer withCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[MSDKPeerDemoDeviceManager fetchDeviceInfoFromPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __68__MSDKPeerDemoDeviceManager_fetchDeviceInfoFromPeer_withCompletion___block_invoke;
    v23[3] = &unk_2798EF628;
    v10 = completionCopy;
    v24 = v10;
    v11 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v23];
    identifier = [peerCopy identifier];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __68__MSDKPeerDemoDeviceManager_fetchDeviceInfoFromPeer_withCompletion___block_invoke_2;
    v21[3] = &unk_2798EF628;
    v22 = v10;
    [v11 fetchDeviceInfoFromPeerOfID:identifier withCompletion:v21];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super fetchDeviceInfoFromPeer:v13 withCompletion:v14, v15, v16, v17, v18, v19];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)initiateAirPlayAssistedFromPeer:(id)peer usingParameters:(id)parameters discoveryMode:(unint64_t)mode withCompletion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  parametersCopy = parameters;
  completionCopy = completion;
  v13 = defaultLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v31 = "[MSDKPeerDemoDeviceManager initiateAirPlayAssistedFromPeer:usingParameters:discoveryMode:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v13, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __106__MSDKPeerDemoDeviceManager_initiateAirPlayAssistedFromPeer_usingParameters_discoveryMode_withCompletion___block_invoke;
    v28[3] = &unk_2798EF628;
    v15 = completionCopy;
    v29 = v15;
    v16 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v28];
    identifier = [peerCopy identifier];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __106__MSDKPeerDemoDeviceManager_initiateAirPlayAssistedFromPeer_usingParameters_discoveryMode_withCompletion___block_invoke_2;
    v26[3] = &unk_2798EF628;
    v27 = v15;
    [v16 initiateAirPlayAssistedFromPeerOfID:identifier usingParameters:parametersCopy discoveryMode:mode withCompletion:v26];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super initiateAirPlayAssistedFromPeer:v18 usingParameters:v19 discoveryMode:v20 withCompletion:v21, v22, v23, v24];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)invokeInputRecoveryOnPeer:(id)peer forType:(unint64_t)type withCompletion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v10 = defaultLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v28 = "[MSDKPeerDemoDeviceManager invokeInputRecoveryOnPeer:forType:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v10, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __78__MSDKPeerDemoDeviceManager_invokeInputRecoveryOnPeer_forType_withCompletion___block_invoke;
    v25[3] = &unk_2798EF628;
    v12 = completionCopy;
    v26 = v12;
    v13 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v25];
    identifier = [peerCopy identifier];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __78__MSDKPeerDemoDeviceManager_invokeInputRecoveryOnPeer_forType_withCompletion___block_invoke_2;
    v23[3] = &unk_2798EF628;
    v24 = v12;
    [v13 invokeInputRecoveryOnPeerOfID:identifier forType:type withCompletion:v23];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super invokeInputRecoveryOnPeer:v15 forType:v16 withCompletion:v17, v18, v19, v20, v21];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)adjustVolumeOnPeer:(id)peer toValue:(float)value forCategory:(unint64_t)category withCompletion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v12 = defaultLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v31 = "[MSDKPeerDemoDeviceManager adjustVolumeOnPeer:toValue:forCategory:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v12, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __83__MSDKPeerDemoDeviceManager_adjustVolumeOnPeer_toValue_forCategory_withCompletion___block_invoke;
    v28[3] = &unk_2798EF628;
    v14 = completionCopy;
    v29 = v14;
    v15 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v28];
    identifier = [peerCopy identifier];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __83__MSDKPeerDemoDeviceManager_adjustVolumeOnPeer_toValue_forCategory_withCompletion___block_invoke_2;
    v26[3] = &unk_2798EF628;
    v27 = v14;
    *&v17 = value;
    [v15 adjustVolumeOnPeerOfID:identifier toValue:category forCategory:v26 withCompletion:v17];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super adjustVolumeOnPeer:v18 toValue:v19 forCategory:v20 withCompletion:v21, v22, v23, v24];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)listAppsOnPeer:(id)peer appKind:(unint64_t)kind withCompletion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v10 = defaultLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v28 = "[MSDKPeerDemoDeviceManager listAppsOnPeer:appKind:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v10, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __67__MSDKPeerDemoDeviceManager_listAppsOnPeer_appKind_withCompletion___block_invoke;
    v25[3] = &unk_2798EF628;
    v12 = completionCopy;
    v26 = v12;
    v13 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v25];
    identifier = [peerCopy identifier];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __67__MSDKPeerDemoDeviceManager_listAppsOnPeer_appKind_withCompletion___block_invoke_2;
    v23[3] = &unk_2798EF650;
    v24 = v12;
    [v13 listAppsOnPeerOfID:identifier appKind:kind withCompletion:v23];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super listAppsOnPeer:v15 appKind:v16 withCompletion:v17, v18, v19, v20, v21];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)getIconImagesOfVisibleAppsOnPeer:(id)peer height:(float)height width:(float)width scale:(float)scale withCompletion:(id)completion
{
  v36 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v14 = defaultLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v35 = "[MSDKPeerDemoDeviceManager getIconImagesOfVisibleAppsOnPeer:height:width:scale:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v14, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __96__MSDKPeerDemoDeviceManager_getIconImagesOfVisibleAppsOnPeer_height_width_scale_withCompletion___block_invoke;
    v32[3] = &unk_2798EF628;
    v16 = completionCopy;
    v33 = v16;
    v17 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v32];
    identifier = [peerCopy identifier];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __96__MSDKPeerDemoDeviceManager_getIconImagesOfVisibleAppsOnPeer_height_width_scale_withCompletion___block_invoke_2;
    v30[3] = &unk_2798EF678;
    v31 = v16;
    *&v19 = height;
    *&v20 = width;
    *&v21 = scale;
    [v17 getIconImagesOfVisibleAppsOnPeerOfID:identifier height:v30 width:v19 scale:v20 withCompletion:v21];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super getIconImagesOfVisibleAppsOnPeer:v22 height:v23 width:v24 scale:v25 withCompletion:v26, v27, v28];
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)launchAppOnPeer:(id)peer appIdentifier:(id)identifier withCompletion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  identifierCopy = identifier;
  completionCopy = completion;
  v11 = defaultLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v29 = "[MSDKPeerDemoDeviceManager launchAppOnPeer:appIdentifier:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v11, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __74__MSDKPeerDemoDeviceManager_launchAppOnPeer_appIdentifier_withCompletion___block_invoke;
    v26[3] = &unk_2798EF628;
    v13 = completionCopy;
    v27 = v13;
    v14 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v26];
    identifier = [peerCopy identifier];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __74__MSDKPeerDemoDeviceManager_launchAppOnPeer_appIdentifier_withCompletion___block_invoke_2;
    v24[3] = &unk_2798EF628;
    v25 = v13;
    [v14 launchAppOnPeerOfID:identifier appIdentifier:identifierCopy withCompletion:v24];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super launchAppOnPeer:v16 appIdentifier:v17 withCompletion:v18, v19, v20, v21, v22];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)terminateAppOnPeer:(id)peer appIdentifier:(id)identifier withCompletion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  identifierCopy = identifier;
  completionCopy = completion;
  v11 = defaultLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v29 = "[MSDKPeerDemoDeviceManager terminateAppOnPeer:appIdentifier:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v11, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __77__MSDKPeerDemoDeviceManager_terminateAppOnPeer_appIdentifier_withCompletion___block_invoke;
    v26[3] = &unk_2798EF628;
    v13 = completionCopy;
    v27 = v13;
    v14 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v26];
    identifier = [peerCopy identifier];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __77__MSDKPeerDemoDeviceManager_terminateAppOnPeer_appIdentifier_withCompletion___block_invoke_2;
    v24[3] = &unk_2798EF628;
    v25 = v13;
    [v14 terminateAppOnPeerOfID:identifier appIdentifier:identifierCopy withCompletion:v24];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super terminateAppOnPeer:v16 appIdentifier:v17 withCompletion:v18, v19, v20, v21, v22];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)listAvailableEnvironmentsOnPeer:(id)peer withCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[MSDKPeerDemoDeviceManager listAvailableEnvironmentsOnPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __76__MSDKPeerDemoDeviceManager_listAvailableEnvironmentsOnPeer_withCompletion___block_invoke;
    v23[3] = &unk_2798EF628;
    v10 = completionCopy;
    v24 = v10;
    v11 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v23];
    identifier = [peerCopy identifier];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __76__MSDKPeerDemoDeviceManager_listAvailableEnvironmentsOnPeer_withCompletion___block_invoke_2;
    v21[3] = &unk_2798EF650;
    v22 = v10;
    [v11 listAvailableEnvironmentsOnPeerOfID:identifier withCompletion:v21];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super listAvailableEnvironmentsOnPeer:v13 withCompletion:v14, v15, v16, v17, v18, v19];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)setActiveEnvironmentOnPeer:(id)peer environmentID:(id)d withCompletion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  dCopy = d;
  completionCopy = completion;
  v11 = defaultLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v29 = "[MSDKPeerDemoDeviceManager setActiveEnvironmentOnPeer:environmentID:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v11, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __85__MSDKPeerDemoDeviceManager_setActiveEnvironmentOnPeer_environmentID_withCompletion___block_invoke;
    v26[3] = &unk_2798EF628;
    v13 = completionCopy;
    v27 = v13;
    v14 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v26];
    identifier = [peerCopy identifier];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __85__MSDKPeerDemoDeviceManager_setActiveEnvironmentOnPeer_environmentID_withCompletion___block_invoke_2;
    v24[3] = &unk_2798EF628;
    v25 = v13;
    [v14 setActiveEnvironmentOnPeerOfID:identifier environmentID:dCopy withCompletion:v24];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super setActiveEnvironmentOnPeer:v16 environmentID:v17 withCompletion:v18, v19, v20, v21, v22];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)setImmersionLevelOnPeer:(id)peer immersionLevel:(float)level animationDuration:(float)duration withCompletion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v12 = defaultLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v32 = "[MSDKPeerDemoDeviceManager setImmersionLevelOnPeer:immersionLevel:animationDuration:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v12, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __101__MSDKPeerDemoDeviceManager_setImmersionLevelOnPeer_immersionLevel_animationDuration_withCompletion___block_invoke;
    v29[3] = &unk_2798EF628;
    v14 = completionCopy;
    v30 = v14;
    v15 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v29];
    identifier = [peerCopy identifier];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __101__MSDKPeerDemoDeviceManager_setImmersionLevelOnPeer_immersionLevel_animationDuration_withCompletion___block_invoke_2;
    v27[3] = &unk_2798EF628;
    v28 = v14;
    *&v17 = level;
    *&v18 = duration;
    [v15 seImmersionLevelOnPeerOfID:identifier immersionLevel:v27 animationDuration:v17 withCompletion:v18];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super setImmersionLevelOnPeer:v19 immersionLevel:v20 animationDuration:v21 withCompletion:v22, v23, v24, v25];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)resetToPassThroughOnPeer:(id)peer withCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[MSDKPeerDemoDeviceManager resetToPassThroughOnPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __69__MSDKPeerDemoDeviceManager_resetToPassThroughOnPeer_withCompletion___block_invoke;
    v23[3] = &unk_2798EF628;
    v10 = completionCopy;
    v24 = v10;
    v11 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v23];
    identifier = [peerCopy identifier];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __69__MSDKPeerDemoDeviceManager_resetToPassThroughOnPeer_withCompletion___block_invoke_2;
    v21[3] = &unk_2798EF628;
    v22 = v10;
    [v11 resetToPassThroughOnPeerOfID:identifier withCompletion:v21];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super resetToPassThroughOnPeer:v13 withCompletion:v14, v15, v16, v17, v18, v19];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)enumerateTestScriptsOnPeer:(id)peer withCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[MSDKPeerDemoDeviceManager enumerateTestScriptsOnPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __71__MSDKPeerDemoDeviceManager_enumerateTestScriptsOnPeer_withCompletion___block_invoke;
    v23[3] = &unk_2798EF628;
    v10 = completionCopy;
    v24 = v10;
    v11 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v23];
    identifier = [peerCopy identifier];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __71__MSDKPeerDemoDeviceManager_enumerateTestScriptsOnPeer_withCompletion___block_invoke_2;
    v21[3] = &unk_2798EF650;
    v22 = v10;
    [v11 enumerateTestScriptsOnPeerOfID:identifier withCompletion:v21];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super enumerateTestScriptsOnPeer:v13 withCompletion:v14, v15, v16, v17, v18, v19];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)obtainGKResultsFromPeer:(id)peer withCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[MSDKPeerDemoDeviceManager obtainGKResultsFromPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __68__MSDKPeerDemoDeviceManager_obtainGKResultsFromPeer_withCompletion___block_invoke;
    v23[3] = &unk_2798EF628;
    v10 = completionCopy;
    v24 = v10;
    v11 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v23];
    identifier = [peerCopy identifier];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __68__MSDKPeerDemoDeviceManager_obtainGKResultsFromPeer_withCompletion___block_invoke_2;
    v21[3] = &unk_2798EF6A0;
    v22 = v10;
    [v11 obtainGKResultsOnPeerOfID:identifier withCompletion:v21];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super obtainGKResultsFromPeer:v13 withCompletion:v14, v15, v16, v17, v18, v19];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)obtainGKMetricsFromPeer:(id)peer withCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[MSDKPeerDemoDeviceManager obtainGKMetricsFromPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __68__MSDKPeerDemoDeviceManager_obtainGKMetricsFromPeer_withCompletion___block_invoke;
    v23[3] = &unk_2798EF628;
    v10 = completionCopy;
    v24 = v10;
    v11 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v23];
    identifier = [peerCopy identifier];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __68__MSDKPeerDemoDeviceManager_obtainGKMetricsFromPeer_withCompletion___block_invoke_2;
    v21[3] = &unk_2798EF6C8;
    v22 = v10;
    [v11 obtainGKMetricsOnPeerOfID:identifier withCompletion:v21];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super obtainGKMetricsFromPeer:v13 withCompletion:v14, v15, v16, v17, v18, v19];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)loadLSMeasurementsOnPeer:(id)peer withCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[MSDKPeerDemoDeviceManager loadLSMeasurementsOnPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __69__MSDKPeerDemoDeviceManager_loadLSMeasurementsOnPeer_withCompletion___block_invoke;
    v23[3] = &unk_2798EF628;
    v10 = completionCopy;
    v24 = v10;
    v11 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v23];
    identifier = [peerCopy identifier];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __69__MSDKPeerDemoDeviceManager_loadLSMeasurementsOnPeer_withCompletion___block_invoke_2;
    v21[3] = &unk_2798EF6F0;
    v22 = v10;
    [v11 loadLSMeasurementsOnPeerOfID:identifier withCompletion:v21];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super loadLSMeasurementsOnPeer:v13 withCompletion:v14, v15, v16, v17, v18, v19];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)retrieveHSCoachingSuggestionFromPeer:(id)peer withCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[MSDKPeerDemoDeviceManager retrieveHSCoachingSuggestionFromPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __81__MSDKPeerDemoDeviceManager_retrieveHSCoachingSuggestionFromPeer_withCompletion___block_invoke;
    v23[3] = &unk_2798EF628;
    v10 = completionCopy;
    v24 = v10;
    v11 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v23];
    identifier = [peerCopy identifier];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __81__MSDKPeerDemoDeviceManager_retrieveHSCoachingSuggestionFromPeer_withCompletion___block_invoke_2;
    v21[3] = &unk_2798EF718;
    v22 = v10;
    [v11 retrieveHSCoachingSuggestionFromPeer:identifier withCompletion:v21];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super retrieveHSCoachingSuggestionFromPeer:v13 withCompletion:v14, v15, v16, v17, v18, v19];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)readIPDStatusFromPeer:(id)peer withCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[MSDKPeerDemoDeviceManager readIPDStatusFromPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __66__MSDKPeerDemoDeviceManager_readIPDStatusFromPeer_withCompletion___block_invoke;
    v23[3] = &unk_2798EF628;
    v10 = completionCopy;
    v24 = v10;
    v11 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v23];
    identifier = [peerCopy identifier];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __66__MSDKPeerDemoDeviceManager_readIPDStatusFromPeer_withCompletion___block_invoke_2;
    v21[3] = &unk_2798EF740;
    v22 = v10;
    [v11 readIPDStatusFromPeer:identifier withCompletion:v21];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super readIPDStatusFromPeer:v13 withCompletion:v14, v15, v16, v17, v18, v19];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)skipAutoIPDAdjustmentOnPeer:(id)peer withCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[MSDKPeerDemoDeviceManager skipAutoIPDAdjustmentOnPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __72__MSDKPeerDemoDeviceManager_skipAutoIPDAdjustmentOnPeer_withCompletion___block_invoke;
    v23[3] = &unk_2798EF628;
    v10 = completionCopy;
    v24 = v10;
    v11 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v23];
    identifier = [peerCopy identifier];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __72__MSDKPeerDemoDeviceManager_skipAutoIPDAdjustmentOnPeer_withCompletion___block_invoke_2;
    v21[3] = &unk_2798EF628;
    v22 = v10;
    [v11 skipAutoIPDAdjustmentFromPeer:identifier withCompletion:v21];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super skipAutoIPDAdjustmentOnPeer:v13 withCompletion:v14, v15, v16, v17, v18, v19];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)initiateIPDResetOnPeer:(id)peer targetIPD:(double)d withCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v10 = defaultLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[MSDKPeerDemoDeviceManager initiateIPDResetOnPeer:targetIPD:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v10, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __77__MSDKPeerDemoDeviceManager_initiateIPDResetOnPeer_targetIPD_withCompletion___block_invoke;
    v23[3] = &unk_2798EF628;
    v12 = completionCopy;
    v24 = v12;
    v13 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v23];
    identifier = [peerCopy identifier];
    [v13 initiateIPDResetOnPeer:identifier targetIPD:v12 withCompletion:d];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super initiateIPDResetOnPeer:v15 targetIPD:v16 withCompletion:v17, v18, v19, v20, v21];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)queryIPDResetStageOnPeer:(id)peer withCompletion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[MSDKPeerDemoDeviceManager queryIPDResetStageOnPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __69__MSDKPeerDemoDeviceManager_queryIPDResetStageOnPeer_withCompletion___block_invoke;
    v21[3] = &unk_2798EF628;
    v10 = completionCopy;
    v22 = v10;
    v11 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v21];
    identifier = [peerCopy identifier];
    [v11 queryIPDResetStageOnPeer:identifier withCompletion:v10];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super queryIPDResetStageOnPeer:v13 withCompletion:v14, v15, v16, v17, v18, v19];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)getAccessibiltiySettingsOnPeer:(id)peer withCompletion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[MSDKPeerDemoDeviceManager getAccessibiltiySettingsOnPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __75__MSDKPeerDemoDeviceManager_getAccessibiltiySettingsOnPeer_withCompletion___block_invoke;
    v21[3] = &unk_2798EF628;
    v10 = completionCopy;
    v22 = v10;
    v11 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v21];
    identifier = [peerCopy identifier];
    [v11 getAccessibiltiySettingsOnPeer:identifier withCompletion:v10];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super getAccessibiltiySettingsOnPeer:v13 withCompletion:v14, v15, v16, v17, v18, v19];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)setAccessibiltiySettingsOnPeer:(id)peer newSettings:(id)settings withCompletion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  settingsCopy = settings;
  completionCopy = completion;
  v11 = defaultLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[MSDKPeerDemoDeviceManager setAccessibiltiySettingsOnPeer:newSettings:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v11, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __87__MSDKPeerDemoDeviceManager_setAccessibiltiySettingsOnPeer_newSettings_withCompletion___block_invoke;
    v24[3] = &unk_2798EF628;
    v13 = completionCopy;
    v25 = v13;
    v14 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v24];
    identifier = [peerCopy identifier];
    [v14 setAccessibiltiySettingsOnPeer:identifier newSettings:settingsCopy withCompletion:v13];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super setAccessibiltiySettingsOnPeer:v16 newSettings:v17 withCompletion:v18, v19, v20, v21, v22];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)wipeCustomerAssetsOnPeer:(id)peer withCompletion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[MSDKPeerDemoDeviceManager wipeCustomerAssetsOnPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __69__MSDKPeerDemoDeviceManager_wipeCustomerAssetsOnPeer_withCompletion___block_invoke;
    v21[3] = &unk_2798EF628;
    v10 = completionCopy;
    v22 = v10;
    v11 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v21];
    identifier = [peerCopy identifier];
    [v11 wipeCustomerAssetsOnPeer:identifier withCompletion:v10];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super wipeCustomerAssetsOnPeer:v13 withCompletion:v14, v15, v16, v17, v18, v19];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)syncCurrentWiFiSettingsToPeer:(id)peer withCompletion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[MSDKPeerDemoDeviceManager syncCurrentWiFiSettingsToPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __74__MSDKPeerDemoDeviceManager_syncCurrentWiFiSettingsToPeer_withCompletion___block_invoke;
    v21[3] = &unk_2798EF628;
    v10 = completionCopy;
    v22 = v10;
    v11 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v21];
    identifier = [peerCopy identifier];
    [v11 syncCurrentWiFiSettingsToPeer:identifier withCompletion:v10];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super syncCurrentWiFiSettingsToPeer:v13 withCompletion:v14, v15, v16, v17, v18, v19];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)changeWiFiSettingsOnPeer:(id)peer newSettings:(id)settings withCompletion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  settingsCopy = settings;
  completionCopy = completion;
  v11 = defaultLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[MSDKPeerDemoDeviceManager changeWiFiSettingsOnPeer:newSettings:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v11, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __81__MSDKPeerDemoDeviceManager_changeWiFiSettingsOnPeer_newSettings_withCompletion___block_invoke;
    v24[3] = &unk_2798EF628;
    v13 = completionCopy;
    v25 = v13;
    v14 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v24];
    identifier = [peerCopy identifier];
    [v14 changeWiFiSettingsOnPeer:identifier newSettings:settingsCopy withCompletion:v13];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super changeWiFiSettingsOnPeer:v16 newSettings:v17 withCompletion:v18, v19, v20, v21, v22];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)removePairedPeer:(id)peer withCompletion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[MSDKPeerDemoDeviceManager removePairedPeer:withCompletion:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called.", buf, 0xCu);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __61__MSDKPeerDemoDeviceManager_removePairedPeer_withCompletion___block_invoke;
    v21[3] = &unk_2798EF628;
    v10 = completionCopy;
    v22 = v10;
    v11 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v21];
    identifier = [peerCopy identifier];
    [v11 removePairedPeer:identifier withCompletion:v10];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super removePairedPeer:v13 withCompletion:v14, v15, v16, v17, v18, v19];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)setLanguageAndRegionOnPeer:(id)peer languageCode:(id)code regionCode:(id)regionCode withCompletion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  codeCopy = code;
  regionCodeCopy = regionCode;
  completionCopy = completion;
  v14 = defaultLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v30 = "[MSDKPeerDemoDeviceManager setLanguageAndRegionOnPeer:languageCode:regionCode:withCompletion:]";
    v31 = 2114;
    v32 = codeCopy;
    v33 = 2114;
    v34 = regionCodeCopy;
    _os_log_impl(&dword_259B7D000, v14, OS_LOG_TYPE_DEFAULT, "%s: called:  languageCode: %{public}@ - regionCode: %{public}@", buf, 0x20u);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __95__MSDKPeerDemoDeviceManager_setLanguageAndRegionOnPeer_languageCode_regionCode_withCompletion___block_invoke;
    v27[3] = &unk_2798EF628;
    v16 = completionCopy;
    v28 = v16;
    v17 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v27];
    identifier = [peerCopy identifier];
    [v17 setLanguageAndRegionOnPeer:identifier languageCode:codeCopy regionCode:regionCodeCopy withCompletion:v16];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super setLanguageAndRegionOnPeer:v19 languageCode:v20 regionCode:v21 withCompletion:v22, v23, v24, v25];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)getMuseBuddyResetValueOnPeer:(id)peer withCompletion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  completionCopy = completion;
  v8 = defaultLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [peerCopy identifier];
    *buf = 136315394;
    v25 = "[MSDKPeerDemoDeviceManager getMuseBuddyResetValueOnPeer:withCompletion:]";
    v26 = 2114;
    v27 = identifier;
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "%s: called - Peer ID: %{public}@", buf, 0x16u);
  }

  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __73__MSDKPeerDemoDeviceManager_getMuseBuddyResetValueOnPeer_withCompletion___block_invoke;
    v22[3] = &unk_2798EF628;
    v11 = completionCopy;
    v23 = v11;
    v12 = [(MSDKPeerDemoDeviceManager *)selfCopy _remoteObjectProxyWithErrorHandler:v22];
    identifier2 = [peerCopy identifier];
    [v12 getMuseBuddyResetValueOnPeer:identifier2 withCompletion:v11];

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = defaultLogHandle();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)&selfCopy->super getMuseBuddyResetValueOnPeer:v14 withCompletion:v15, v16, v17, v18, v19, v20];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)_setUpXPCConnectionIfNeeded
{
  xpcConnection = [(MSDKPeerDemoDeviceManager *)self xpcConnection];

  if (xpcConnection)
  {
    return 1;
  }

  v5 = defaultLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_259B7D000, v5, OS_LOG_TYPE_DEFAULT, "MSDKPeerDemoDeviceManager: Setting up XPC connection.", buf, 2u);
  }

  v6 = +[MSDKManagedDevice sharedInstance];
  retrieveXPCConnectionToPeerService = [v6 retrieveXPCConnectionToPeerService];
  [(MSDKPeerDemoDeviceManager *)self setXpcConnection:retrieveXPCConnectionToPeerService];

  xpcConnection2 = [(MSDKPeerDemoDeviceManager *)self xpcConnection];
  v4 = xpcConnection2 != 0;

  if (xpcConnection2)
  {
    v51 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286AE44D0];
    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286AE9978];
    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
    [v9 setClasses:v13 forSelector:sel_listAppsOnPeerOfID_appKind_withCompletion_ argumentIndex:0 ofReply:1];

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v14 setWithObjects:{v15, v16, objc_opt_class(), 0}];
    [v9 setClasses:v17 forSelector:sel_listAvailableEnvironmentsOnPeerOfID_withCompletion_ argumentIndex:0 ofReply:1];

    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = [v18 setWithObjects:{v19, v20, objc_opt_class(), 0}];
    [v9 setClasses:v21 forSelector:sel_enumerateTestScriptsOnPeerOfID_withCompletion_ argumentIndex:0 ofReply:1];

    v22 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v50 = objc_opt_class();
    v25 = v51;
    v26 = [v22 setWithObjects:{v23, v24, v50, objc_opt_class(), 0}];
    [v9 setClasses:v26 forSelector:sel_obtainGKMetricsOnPeerOfID_withCompletion_ argumentIndex:0 ofReply:1];

    v27 = MEMORY[0x277CBEB98];
    v28 = objc_opt_class();
    v29 = objc_opt_class();
    v30 = [v27 setWithObjects:{v28, v29, objc_opt_class(), 0}];
    [v9 setClasses:v30 forSelector:sel_obtainGKResultsOnPeerOfID_withCompletion_ argumentIndex:0 ofReply:1];

    v31 = MEMORY[0x277CBEB98];
    v32 = objc_opt_class();
    v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
    [v9 setClasses:v33 forSelector:sel_readIPDStatusFromPeer_withCompletion_ argumentIndex:0 ofReply:1];

    v34 = MEMORY[0x277CBEB98];
    v35 = objc_opt_class();
    v36 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];
    [v9 setClasses:v36 forSelector:sel_getAccessibiltiySettingsOnPeer_withCompletion_ argumentIndex:0 ofReply:1];

    v37 = MEMORY[0x277CBEB98];
    v38 = objc_opt_class();
    v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
    [v9 setClasses:v39 forSelector:sel_setAccessibiltiySettingsOnPeer_newSettings_withCompletion_ argumentIndex:0 ofReply:1];

    v40 = MEMORY[0x277CBEB98];
    v41 = objc_opt_class();
    v42 = [v40 setWithObjects:{v41, objc_opt_class(), 0}];
    [v9 setClasses:v42 forSelector:sel_changeWiFiSettingsOnPeer_newSettings_withCompletion_ argumentIndex:0 ofReply:1];

    objc_initWeak(buf, self);
    xpcConnection3 = [(MSDKPeerDemoDeviceManager *)self xpcConnection];
    [xpcConnection3 setExportedInterface:v51];

    xpcConnection4 = [(MSDKPeerDemoDeviceManager *)self xpcConnection];
    [xpcConnection4 setExportedObject:self];

    xpcConnection5 = [(MSDKPeerDemoDeviceManager *)self xpcConnection];
    [xpcConnection5 setRemoteObjectInterface:v9];

    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __56__MSDKPeerDemoDeviceManager__setUpXPCConnectionIfNeeded__block_invoke;
    v54[3] = &unk_2798EF768;
    objc_copyWeak(&v55, buf);
    xpcConnection6 = [(MSDKPeerDemoDeviceManager *)self xpcConnection];
    [xpcConnection6 setInterruptionHandler:v54];

    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __56__MSDKPeerDemoDeviceManager__setUpXPCConnectionIfNeeded__block_invoke_159;
    v52[3] = &unk_2798EF768;
    objc_copyWeak(&v53, buf);
    xpcConnection7 = [(MSDKPeerDemoDeviceManager *)self xpcConnection];
    [xpcConnection7 setInvalidationHandler:v52];

    xpcConnection8 = [(MSDKPeerDemoDeviceManager *)self xpcConnection];
    [xpcConnection8 activate];

    objc_destroyWeak(&v53);
    objc_destroyWeak(&v55);
    objc_destroyWeak(buf);
  }

  else
  {
    v25 = defaultLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [MSDKPeerDemoDeviceManager _setUpXPCConnectionIfNeeded];
    }
  }

  return v4;
}

void __56__MSDKPeerDemoDeviceManager__setUpXPCConnectionIfNeeded__block_invoke(uint64_t a1)
{
  v2 = defaultLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __56__MSDKPeerDemoDeviceManager__setUpXPCConnectionIfNeeded__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_sync_enter(WeakRetained);
  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 _cleanUpUponXPCDisconnection];

  objc_sync_exit(WeakRetained);
}

void __56__MSDKPeerDemoDeviceManager__setUpXPCConnectionIfNeeded__block_invoke_159(uint64_t a1)
{
  v2 = defaultLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __56__MSDKPeerDemoDeviceManager__setUpXPCConnectionIfNeeded__block_invoke_159_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_sync_enter(WeakRetained);
  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 _cleanUpUponXPCDisconnection];

  objc_sync_exit(WeakRetained);
}

- (void)_cleanUpUponXPCDisconnection
{
  v22 = *MEMORY[0x277D85DE8];
  [(MSDKPeerDemoDeviceManager *)self setXpcConnection:0];
  v3 = MEMORY[0x277CBEA60];
  peers = [(MSDKPeerDemoDeviceManager *)self peers];
  allValues = [peers allValues];
  v6 = [v3 arrayWithArray:allValues];

  peers2 = [(MSDKPeerDemoDeviceManager *)self peers];
  [peers2 removeAllObjects];

  observer = [(MSDKPeerDemoDeviceManager *)self observer];

  if (observer)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * v13);
          observer2 = [(MSDKPeerDemoDeviceManager *)self observer];
          [observer2 managerDidLosePeer:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  if ([(MSDKPeerDemoDeviceManager *)self _setUpXPCConnectionIfNeeded])
  {
    xpcConnection = [(MSDKPeerDemoDeviceManager *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__MSDKPeerDemoDeviceManager__remoteObjectProxyWithErrorHandler___block_invoke;
    v9[3] = &unk_2798EF628;
    v10 = handlerCopy;
    v6 = [xpcConnection remoteObjectProxyWithErrorHandler:v9];
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorDomainMSDWithCode:3727741186 message:@"Failed to establish xpc connection to demod."];
    (*(handlerCopy + 2))(handlerCopy, v7);

    v6 = 0;
  }

  return v6;
}

void __64__MSDKPeerDemoDeviceManager__remoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = [a2 localizedDescription];
  v5 = [v3 errorDomainMSDWithCode:3727741186 message:@"Failed to establish xpc connection to demod." reason:v4];

  (*(*(a1 + 32) + 16))();
}

- (void)providerDidDiscoverNewPeer:(id)peer
{
  peerCopy = peer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  identifier = [peerCopy identifier];
  peers = [(MSDKPeerDemoDeviceManager *)selfCopy peers];
  v8 = [peers objectForKey:identifier];

  if (v8)
  {
    observer2 = defaultLogHandle();
    if (os_log_type_enabled(observer2, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)peerCopy providerDidDiscoverNewPeer:observer2, v10, v11, v12, v13, v14, v15];
    }

    goto LABEL_6;
  }

  peers2 = [(MSDKPeerDemoDeviceManager *)selfCopy peers];
  [peers2 setObject:peerCopy forKey:identifier];

  observer = [(MSDKPeerDemoDeviceManager *)selfCopy observer];

  if (observer)
  {
    observer2 = [(MSDKPeerDemoDeviceManager *)selfCopy observer];
    [observer2 managerDidFindPeer:peerCopy];
LABEL_6:
  }

  objc_sync_exit(selfCopy);
}

- (void)providerDidLoseExistingPeerOfID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  peers = [(MSDKPeerDemoDeviceManager *)selfCopy peers];
  v7 = [peers objectForKey:dCopy];

  if (!v7)
  {
    observer2 = defaultLogHandle();
    if (os_log_type_enabled(observer2, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)dCopy providerDidLoseExistingPeerOfID:observer2, v12, v13, v14, v15, v16, v17];
    }

    goto LABEL_8;
  }

  peers2 = [(MSDKPeerDemoDeviceManager *)selfCopy peers];
  [peers2 removeObjectForKey:dCopy];

  v9 = defaultLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(MSDKPeerDemoDeviceManager *)dCopy providerDidLoseExistingPeerOfID:v9];
  }

  observer = [(MSDKPeerDemoDeviceManager *)selfCopy observer];

  if (observer)
  {
    observer2 = [(MSDKPeerDemoDeviceManager *)selfCopy observer];
    [observer2 managerDidLosePeer:v7];
LABEL_8:
  }

  objc_sync_exit(selfCopy);
}

- (void)providerDidUpdateDeviceInfoOnPeerOfID:(id)d withNewProperties:(id)properties
{
  dCopy = d;
  propertiesCopy = properties;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  peers = [(MSDKPeerDemoDeviceManager *)selfCopy peers];
  v10 = [peers objectForKey:dCopy];

  if (!v10)
  {
    observer2 = defaultLogHandle();
    if (os_log_type_enabled(observer2, OS_LOG_TYPE_ERROR))
    {
      [(MSDKPeerDemoDeviceManager *)dCopy providerDidLoseExistingPeerOfID:observer2, v13, v14, v15, v16, v17, v18];
    }

    goto LABEL_6;
  }

  [v10 refreshDevicePropertiesUsingProperties:propertiesCopy];
  observer = [(MSDKPeerDemoDeviceManager *)selfCopy observer];

  if (observer)
  {
    observer2 = [(MSDKPeerDemoDeviceManager *)selfCopy observer];
    [observer2 managerDidUpdateDeviceInfoForPeer:v10];
LABEL_6:
  }

  objc_sync_exit(selfCopy);
}

- (MSDKPeerEventsObserverProtocol)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (void)registerPeerEventsObserver:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startPeerDiscoveryWithCompletion:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)attemptPairingWithPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)subscribeDeviceInfoFromPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)fetchDeviceInfoFromPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initiateAirPlayAssistedFromPeer:(uint64_t)a3 usingParameters:(uint64_t)a4 discoveryMode:(uint64_t)a5 withCompletion:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)triggerSnapshotRevertOnPeer:(uint64_t)a3 rebootDevice:(uint64_t)a4 withCompletion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)invokeInputRecoveryOnPeer:(uint64_t)a3 forType:(uint64_t)a4 withCompletion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)adjustVolumeOnPeer:(uint64_t)a3 toValue:(uint64_t)a4 forCategory:(uint64_t)a5 withCompletion:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)listAppsOnPeer:(uint64_t)a3 appKind:(uint64_t)a4 withCompletion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)getIconImagesOfVisibleAppsOnPeer:(uint64_t)a3 height:(uint64_t)a4 width:(uint64_t)a5 scale:(uint64_t)a6 withCompletion:(uint64_t)a7 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)launchAppOnPeer:(uint64_t)a3 appIdentifier:(uint64_t)a4 withCompletion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)terminateAppOnPeer:(uint64_t)a3 appIdentifier:(uint64_t)a4 withCompletion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)listAvailableEnvironmentsOnPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setActiveEnvironmentOnPeer:(uint64_t)a3 environmentID:(uint64_t)a4 withCompletion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setImmersionLevelOnPeer:(uint64_t)a3 immersionLevel:(uint64_t)a4 animationDuration:(uint64_t)a5 withCompletion:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)resetToPassThroughOnPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)enumerateTestScriptsOnPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)launchTestScriptOnPeer:(uint64_t)a3 ofIdentifier:(uint64_t)a4 asRoot:(uint64_t)a5 withCompletion:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)obtainGKResultsFromPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)obtainGKMetricsFromPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)loadLSMeasurementsOnPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)retrieveHSCoachingSuggestionFromPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)readIPDStatusFromPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)skipAutoIPDAdjustmentOnPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initiateIPDResetOnPeer:(uint64_t)a3 targetIPD:(uint64_t)a4 withCompletion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)queryIPDResetStageOnPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)getAccessibiltiySettingsOnPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setAccessibiltiySettingsOnPeer:(uint64_t)a3 newSettings:(uint64_t)a4 withCompletion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)wipeCustomerAssetsOnPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)syncCurrentWiFiSettingsToPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)changeWiFiSettingsOnPeer:(uint64_t)a3 newSettings:(uint64_t)a4 withCompletion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)removePairedPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setLanguageAndRegionOnPeer:(uint64_t)a3 languageCode:(uint64_t)a4 regionCode:(uint64_t)a5 withCompletion:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)enableMuseBuddyResetOnPeer:(uint64_t)a3 value:(uint64_t)a4 withCompletion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)getMuseBuddyResetValueOnPeer:(uint64_t)a3 withCompletion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: No completion handler provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_setUpXPCConnectionIfNeeded
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __56__MSDKPeerDemoDeviceManager__setUpXPCConnectionIfNeeded__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __56__MSDKPeerDemoDeviceManager__setUpXPCConnectionIfNeeded__block_invoke_159_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)providerDidDiscoverNewPeer:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a2, a3, "MSDKPeerDemoDeviceManager: Received duplicated demo peer: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)providerDidLoseExistingPeerOfID:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[MSDKPeerDemoDeviceManager providerDidLoseExistingPeerOfID:]";
  v5 = 2114;
  v6 = a1;
  _os_log_debug_impl(&dword_259B7D000, a2, OS_LOG_TYPE_DEBUG, "%s - Removing peer with id:  %{public}@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)providerDidLoseExistingPeerOfID:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a2, a3, "MSDKPeerDemoDeviceManager: No demo peer found with ID: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end