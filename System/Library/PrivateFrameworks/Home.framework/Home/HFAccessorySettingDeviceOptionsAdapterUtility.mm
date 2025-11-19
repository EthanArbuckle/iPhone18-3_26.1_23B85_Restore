@interface HFAccessorySettingDeviceOptionsAdapterUtility
- (HFAccessorySettingDeviceOptionsAdapterUtility)initWithHomeKitSettingsVendor:(id)a3 mode:(unint64_t)a4 groupedAccessory:(BOOL)a5 delegate:(id)a6;
- (HFAccessorySettingDeviceOptionsAdapterUtilityDelegate)delegate;
- (id)_reachableDevices:(id)a3;
- (id)_sendRapportMessageToAccessoriesWithRequestID:(id)a3 request:(id)a4 options:(id)a5;
- (id)_sendRapportMessageToAccessoryWithRequestID:(id)a3 request:(id)a4 options:(id)a5;
- (id)_sendRapportMessageToDevice:(id)a3 requestID:(id)a4 request:(id)a5 options:(id)a6;
- (id)extractWiFiInfo;
- (id)identifyAccessory;
- (id)requestAirDrop:(id)a3;
- (id)resetAccessory;
- (id)restartAccessories;
- (id)restartAccessory;
- (void)_resetRapportClientWithInvalidation:(BOOL)a3;
- (void)_setupRapportClient;
- (void)_updateRapportReachable;
- (void)dealloc;
@end

@implementation HFAccessorySettingDeviceOptionsAdapterUtility

- (HFAccessorySettingDeviceOptionsAdapterUtility)initWithHomeKitSettingsVendor:(id)a3 mode:(unint64_t)a4 groupedAccessory:(BOOL)a5 delegate:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a6;
  if (a4)
  {
    v11 = 0;
  }

  else
  {
    v21.receiver = self;
    v21.super_class = HFAccessorySettingDeviceOptionsAdapterUtility;
    v12 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)&v21 init];
    if (v12)
    {
      v13 = v9;
      v14 = &unk_282584A38;
      if ([v13 conformsToProtocol:v14])
      {
        v15 = v13;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      mediaProfileContainer = v12->_mediaProfileContainer;
      v12->_mediaProfileContainer = v16;

      objc_storeWeak(&v12->_delegate, v10);
      v18 = HFLogForCategory(0x3CuLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v23 = v12;
        v24 = 2080;
        v25 = "[HFAccessorySettingDeviceOptionsAdapterUtility initWithHomeKitSettingsVendor:mode:groupedAccessory:delegate:]";
        v26 = 2112;
        v27 = v13;
        _os_log_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_DEFAULT, "%@:%s Instantiated utility class, about to reset rapport client, with media profile container %@", buf, 0x20u);
      }

      [(HFAccessorySettingDeviceOptionsAdapterUtility *)v12 _resetRapportClientWithInvalidation:1];
    }

    self = v12;
    v11 = self;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)dealloc
{
  v3 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self discoveryLink];

  if (v3)
  {
    v4 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self discoveryLink];
    [v4 setDeviceFoundHandler:0];

    v5 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self discoveryLink];
    [v5 setDeviceLostHandler:0];

    v6 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self discoveryLink];
    [v6 setInterruptionHandler:0];

    v7 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self discoveryLink];
    [v7 setInvalidationHandler:0];

    v8 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self discoveryLink];
    [v8 invalidate];
  }

  v9.receiver = self;
  v9.super_class = HFAccessorySettingDeviceOptionsAdapterUtility;
  [(HFAccessorySettingDeviceOptionsAdapterUtility *)&v9 dealloc];
}

- (id)identifyAccessory
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x3CuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[HFAccessorySettingDeviceOptionsAdapterUtility identifyAccessory]";
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  v4 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self _sendRapportMessageToAccessoryWithRequestID:@"com.apple.identify" request:0 options:0];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)restartAccessory
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x3CuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[HFAccessorySettingDeviceOptionsAdapterUtility restartAccessory]";
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  v4 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self _sendRapportMessageToAccessoryWithRequestID:@"com.apple.SoundBoard.RebootDeviceRequest" request:0 options:0];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)restartAccessories
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x3CuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[HFAccessorySettingDeviceOptionsAdapterUtility restartAccessories]";
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  v4 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self _sendRapportMessageToAccessoriesWithRequestID:@"com.apple.SoundBoard.RebootDeviceRequest" request:0 options:0];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)resetAccessory
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x3CuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[HFAccessorySettingDeviceOptionsAdapterUtility resetAccessory]";
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  v4 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self _sendRapportMessageToAccessoryWithRequestID:@"com.apple.SoundBoard.ObliterateRequest" request:0 options:0];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)requestAirDrop:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x3CuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v4;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Sending AirDrop request for results: %@", buf, 0xCu);
  }

  v6 = [v4 objectForKeyedSubscript:@"sysdiagnosePath"];
  if ([v6 length])
  {
    v7 = +[HFUtilities deviceAirDropIdentifier];
    if ([v7 length])
    {
      v21[0] = v7;
      v8 = MEMORY[0x277CCABB0];
      v9 = [MEMORY[0x277CBEAA8] date];
      [v9 timeIntervalSince1970];
      v10 = [v8 numberWithDouble:?];
      v20[2] = @"sysdiagnosePath";
      v21[1] = v10;
      v21[2] = v6;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];

      v12 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self _sendRapportMessageToAccessoryWithRequestID:@"com.apple.homepod.AirDropFile" request:v11 options:0];
    }

    else
    {
      v16 = HFLogForCategory(0x3CuLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_ERROR, "Invalid (Empty) airDropID", buf, 2u);
      }

      v17 = MEMORY[0x277D2C900];
      v11 = [MEMORY[0x277CCA9B8] hf_errorWithCode:25 operation:@"Invalid AirDrop ID" options:0];
      v12 = [v17 futureWithError:v11];
    }

    v15 = v12;
  }

  else
  {
    v13 = HFLogForCategory(0x3CuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_ERROR, "Invalid (Empty) Sysdiagnose Path", buf, 2u);
    }

    v14 = MEMORY[0x277D2C900];
    v7 = [MEMORY[0x277CCA9B8] hf_errorWithCode:25 operation:@"Invalid Sysdiagnose Path" options:0];
    v15 = [v14 futureWithError:v7];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)extractWiFiInfo
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x3CuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[HFAccessorySettingDeviceOptionsAdapterUtility extractWiFiInfo]";
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  v4 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self _sendRapportMessageToAccessoryWithRequestID:@"com.apple.SoundBoard.ExtractWiFiInfo" request:0 options:0];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_setupRapportClient
{
  v3 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self discoveryLink];

  if (!v3)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc_init(MEMORY[0x277D44160]);
    [v4 setControlFlags:2054];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__HFAccessorySettingDeviceOptionsAdapterUtility__setupRapportClient__block_invoke;
    v16[3] = &unk_277DF4460;
    objc_copyWeak(&v17, &location);
    [v4 setInvalidationHandler:v16];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68__HFAccessorySettingDeviceOptionsAdapterUtility__setupRapportClient__block_invoke_290;
    v14[3] = &unk_277DF4460;
    objc_copyWeak(&v15, &location);
    [v4 setInterruptionHandler:v14];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__HFAccessorySettingDeviceOptionsAdapterUtility__setupRapportClient__block_invoke_291;
    v12[3] = &unk_277DFAD98;
    objc_copyWeak(&v13, &location);
    [v4 setDeviceFoundHandler:v12];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __68__HFAccessorySettingDeviceOptionsAdapterUtility__setupRapportClient__block_invoke_293;
    v10[3] = &unk_277DFAD98;
    objc_copyWeak(&v11, &location);
    [v4 setDeviceLostHandler:v10];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__HFAccessorySettingDeviceOptionsAdapterUtility__setupRapportClient__block_invoke_294;
    v9[3] = &unk_277DFADC0;
    v9[4] = self;
    [v4 setDeviceChangedHandler:v9];
    v5 = HFLogForCategory(0x3CuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Now Activating RPCompanionLinkClient...", buf, 2u);
    }

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __68__HFAccessorySettingDeviceOptionsAdapterUtility__setupRapportClient__block_invoke_296;
    v6[3] = &unk_277DF3860;
    objc_copyWeak(&v7, &location);
    [v4 activateWithCompletion:v6];
    [(HFAccessorySettingDeviceOptionsAdapterUtility *)self setDiscoveryLink:v4];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);

    objc_destroyWeak(&location);
  }
}

void __68__HFAccessorySettingDeviceOptionsAdapterUtility__setupRapportClient__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setRapportClientActivationFailCount:{objc_msgSend(WeakRetained, "rapportClientActivationFailCount") + 1}];
  [WeakRetained _resetRapportClientWithInvalidation:0];
  v2 = HFLogForCategory(0x3CuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "RPCompanionLinkClient was invalidated.", v3, 2u);
  }
}

void __68__HFAccessorySettingDeviceOptionsAdapterUtility__setupRapportClient__block_invoke_290(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setRapportClientActivationFailCount:{objc_msgSend(WeakRetained, "rapportClientActivationFailCount") + 1}];
  [WeakRetained _resetRapportClientWithInvalidation:1];
  v2 = HFLogForCategory(0x3CuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "RPCompanionLinkClient was interrupted.", v3, 2u);
  }
}

void __68__HFAccessorySettingDeviceOptionsAdapterUtility__setupRapportClient__block_invoke_291(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x3CuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_debug_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEBUG, "Device Found from Rapport..%@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateRapportReachable];

  v6 = *MEMORY[0x277D85DE8];
}

void __68__HFAccessorySettingDeviceOptionsAdapterUtility__setupRapportClient__block_invoke_293(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x3CuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_debug_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEBUG, "Device lost from Rapport..%@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateRapportReachable];

  v6 = *MEMORY[0x277D85DE8];
}

void __68__HFAccessorySettingDeviceOptionsAdapterUtility__setupRapportClient__block_invoke_294(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x3CuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_debug_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEBUG, "device changed from Rapport..%@", &v6, 0xCu);
  }

  [*(a1 + 32) _updateRapportReachable];
  v5 = *MEMORY[0x277D85DE8];
}

void __68__HFAccessorySettingDeviceOptionsAdapterUtility__setupRapportClient__block_invoke_296(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = HFLogForCategory(0x3CuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "RPCompanionLinkClient failed to activate: %@", &v8, 0xCu);
    }

    [v5 setRapportClientActivationFailCount:{objc_msgSend(v5, "rapportClientActivationFailCount") + 1}];
    [v5 _resetRapportClientWithInvalidation:1];
  }

  else
  {
    [WeakRetained _updateRapportReachable];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_resetRapportClientWithInvalidation:(BOOL)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self discoveryLink];
    [v4 invalidate];
  }

  v5 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self discoveryLink];
  [v5 setDeviceFoundHandler:0];

  v6 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self discoveryLink];
  [v6 setDeviceLostHandler:0];

  v7 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self discoveryLink];
  [v7 setInterruptionHandler:0];

  v8 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self discoveryLink];
  [v8 setInvalidationHandler:0];

  [(HFAccessorySettingDeviceOptionsAdapterUtility *)self setDiscoveryLink:0];
  if ([(HFAccessorySettingDeviceOptionsAdapterUtility *)self rapportClientActivationFailCount]> 2)
  {
    v10 = HFLogForCategory(0x3CuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 134217984;
      v13 = 3;
      _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "RPCompanionLinkClient activation exceeded  (%lu) activation attempts. Seems like a bug in Rapport. Please file a bug.", &v12, 0xCu);
    }

    v11 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = *MEMORY[0x277D85DE8];

    [(HFAccessorySettingDeviceOptionsAdapterUtility *)self _setupRapportClient];
  }
}

- (void)_updateRapportReachable
{
  v3 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self mediaProfileContainer];
  v4 = [v3 accessories];
  v5 = [v4 allObjects];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__HFAccessorySettingDeviceOptionsAdapterUtility__updateRapportReachable__block_invoke;
  v8[3] = &unk_277DFADE8;
  v8[4] = self;
  v6 = [v5 na_flatMap:v8];

  v7 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self delegate];
  [v7 accessoryReachableOverRapport:{objc_msgSend(v6, "count") != 0}];
}

- (id)_reachableDevices:(id)a3
{
  v4 = a3;
  v5 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self discoveryLink];
  v6 = [v5 activeDevices];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __67__HFAccessorySettingDeviceOptionsAdapterUtility__reachableDevices___block_invoke;
  v20[3] = &unk_277DFAE10;
  v7 = v4;
  v21 = v7;
  v8 = [v6 na_filter:v20];

  v9 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self discoveryLink];
  v10 = [v9 activeDevices];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __67__HFAccessorySettingDeviceOptionsAdapterUtility__reachableDevices___block_invoke_2;
  v18 = &unk_277DFAE10;
  v19 = v7;
  v11 = v7;
  v12 = [v10 na_filter:&v15];
  v13 = [v8 arrayByAddingObjectsFromArray:{v12, v15, v16, v17, v18}];

  return v13;
}

uint64_t __67__HFAccessorySettingDeviceOptionsAdapterUtility__reachableDevices___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 homeKitIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __67__HFAccessorySettingDeviceOptionsAdapterUtility__reachableDevices___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 statusFlags] & 2) != 0)
  {
    v5 = [v3 idsDeviceIdentifier];
    v6 = [*(a1 + 32) accountIdentifier];
    v7 = [v6 UUIDString];
    v4 = [v5 isEqualToString:v7];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_sendRapportMessageToAccessoryWithRequestID:(id)a3 request:(id)a4 options:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self mediaProfileContainer];
  v12 = [v11 accessories];
  v13 = [v12 anyObject];
  v14 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self _reachableDevices:v13];

  v15 = [v14 firstObject];
  v16 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self _sendRapportMessageToDevice:v15 requestID:v10 request:v9 options:v8];

  return v16;
}

- (id)_sendRapportMessageToAccessoriesWithRequestID:(id)a3 request:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HFAccessorySettingDeviceOptionsAdapterUtility *)self mediaProfileContainer];
  v12 = [v11 accessories];
  v13 = [v12 allObjects];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __111__HFAccessorySettingDeviceOptionsAdapterUtility__sendRapportMessageToAccessoriesWithRequestID_request_options___block_invoke;
  v27[3] = &unk_277DFADE8;
  v27[4] = self;
  v14 = [v13 na_map:v27];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __111__HFAccessorySettingDeviceOptionsAdapterUtility__sendRapportMessageToAccessoriesWithRequestID_request_options___block_invoke_2;
  v23[3] = &unk_277DFAE38;
  v23[4] = self;
  v24 = v8;
  v25 = v9;
  v26 = v10;
  v15 = v10;
  v16 = v9;
  v17 = v8;
  v18 = [v14 na_map:v23];

  v19 = [MEMORY[0x277D2C900] combineAllFutures:v18];
  v20 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v21 = [v19 reschedule:v20];

  return v21;
}

id __111__HFAccessorySettingDeviceOptionsAdapterUtility__sendRapportMessageToAccessoriesWithRequestID_request_options___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = [a2 firstObject];
  v5 = [v3 _sendRapportMessageToDevice:v4 requestID:a1[5] request:a1[6] options:a1[7]];

  return v5;
}

- (id)_sendRapportMessageToDevice:(id)a3 requestID:(id)a4 request:(id)a5 options:(id)a6
{
  v51 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [MEMORY[0x277CCAD78] UUID];
  v14 = HFLogForCategory(0x3CuLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v48 = v13;
    v49 = 2112;
    v50 = v9;
    _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "(Request %@) Preparing to send rapport message to '%@'", buf, 0x16u);
  }

  v15 = objc_alloc_init(MEMORY[0x277D44160]);
  [v15 setDestinationDevice:v9];
  v16 = objc_opt_new();
  v17 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __103__HFAccessorySettingDeviceOptionsAdapterUtility__sendRapportMessageToDevice_requestID_request_options___block_invoke;
  v43[3] = &unk_277DF32A8;
  v18 = v16;
  v44 = v18;
  v19 = v15;
  v45 = v19;
  v20 = v13;
  v46 = v20;
  v21 = [v17 afterDelay:v43 performBlock:10.0];

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __103__HFAccessorySettingDeviceOptionsAdapterUtility__sendRapportMessageToDevice_requestID_request_options___block_invoke_303;
  v34[3] = &unk_277DFAE88;
  v35 = v21;
  v36 = v20;
  v22 = v18;
  v37 = v22;
  v38 = v19;
  v39 = v12;
  v40 = v11;
  v41 = v10;
  v42 = v9;
  v23 = v9;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v27 = v19;
  v28 = v20;
  v29 = v21;
  [v27 activateWithCompletion:v34];
  v30 = v42;
  v31 = v22;

  v32 = *MEMORY[0x277D85DE8];
  return v22;
}

void __103__HFAccessorySettingDeviceOptionsAdapterUtility__sendRapportMessageToDevice_requestID_request_options___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isFinished] & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = [MEMORY[0x277CCA9B8] na_timeoutError];
    [v2 finishWithError:v3];

    [*(a1 + 40) invalidate];
    v4 = HFLogForCategory(0x3CuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "(Request %@) Timeout trying to find send!", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __103__HFAccessorySettingDeviceOptionsAdapterUtility__sendRapportMessageToDevice_requestID_request_options___block_invoke_303(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) cancel];
  if (v3)
  {
    v4 = HFLogForCategory(0x3CuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 40);
      *buf = 138412546;
      v24 = v16;
      v25 = 2112;
      v26 = v3;
      _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "(Request %@) Companion link is invalid; error '%@'", buf, 0x16u);
    }

    [*(a1 + 48) finishWithError:v3];
    [*(a1 + 56) invalidate];
  }

  else
  {
    v5 = *(a1 + 64);
    if (!v5)
    {
      v5 = MEMORY[0x277CBEC10];
    }

    v6 = v5;
    v7 = *(a1 + 72);
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v21 = @"com.apple.Home.RapportRequest";
      v9 = MEMORY[0x277CCABB0];
      v10 = [MEMORY[0x277CBEAA8] date];
      [v10 timeIntervalSince1970];
      v11 = [v9 numberWithDouble:?];
      v22 = v11;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    }

    v12 = *(a1 + 56);
    v13 = *(a1 + 80);
    v14 = [*(a1 + 88) identifier];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __103__HFAccessorySettingDeviceOptionsAdapterUtility__sendRapportMessageToDevice_requestID_request_options___block_invoke_304;
    v17[3] = &unk_277DFAE60;
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    v20 = *(a1 + 56);
    [v12 sendRequestID:v13 request:v8 destinationID:v14 options:v6 responseHandler:v17];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __103__HFAccessorySettingDeviceOptionsAdapterUtility__sendRapportMessageToDevice_requestID_request_options___block_invoke_304(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = HFLogForCategory(0x3CuLL);
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = 138412546;
      v16 = v14;
      v17 = 2112;
      v18 = v9;
      _os_log_error_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_ERROR, "(Request %@) rapport message send failed with error: %@", &v15, 0x16u);
    }

    [*(a1 + 40) finishWithError:v9];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v15 = 138412802;
      v16 = v12;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "(Request %@) rapport message sent; response: %@ / options: %@", &v15, 0x20u);
    }

    [*(a1 + 40) finishWithResult:v7];
  }

  [*(a1 + 48) invalidate];

  v13 = *MEMORY[0x277D85DE8];
}

- (HFAccessorySettingDeviceOptionsAdapterUtilityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end