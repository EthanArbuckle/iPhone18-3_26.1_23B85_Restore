@interface HAP2AccessoryServerDiscoveryBonjourLegacy
+ (id)new;
- (BOOL)isDiscovering;
- (CUBonjourBrowser)browser;
- (HAP2AccessoryServerDiscoveryBonjourLegacy)init;
- (HAP2AccessoryServerDiscoveryBonjourLegacy)initWithServiceType:(id)a3 domain:(id)a4;
- (HAP2AccessoryServerDiscoveryDelegate)delegate;
- (void)_handleBrowserStopped:(id)a3;
- (void)_handleDeviceFoundOrChanged:(id)a3;
- (void)_handleDeviceLost:(id)a3;
- (void)_reconfirmAccessory:(id)a3;
- (void)_startBrowser;
- (void)_startDiscovering;
- (void)_stopBrowser;
- (void)_stopDiscovering;
- (void)dealloc;
- (void)reconfirmAccessory:(id)a3;
- (void)setBrowser:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setDiscovering:(BOOL)a3;
- (void)startDiscovering;
- (void)stopDiscovering;
@end

@implementation HAP2AccessoryServerDiscoveryBonjourLegacy

- (void)_handleBrowserStopped:(id)a3
{
  v4 = a3;
  v5 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self browser];

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v7 = hap2Log_browser;
  if (v6 == v4)
  {
    if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "Failed to start browser", buf, 2u);
    }

    v8 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self setBrowser:0];
  }

  else
  {
    if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEFAULT, "No longer discovering", buf, 2u);
    }

    v8 = 0;
  }

  [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self setDiscovering:0];
  v9 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__HAP2AccessoryServerDiscoveryBonjourLegacy__handleBrowserStopped___block_invoke;
    block[3] = &unk_2786D7078;
    v12 = v9;
    v13 = self;
    v14 = v8;
    dispatch_async(v10, block);
  }
}

- (void)_handleDeviceLost:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if ([(HAP2AccessoryServerDiscoveryBonjourLegacy *)self isDiscovering])
  {
    v6 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self delegate];
    if (v6)
    {
      v7 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self type];
      v8 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self domain];
      v9 = accessoryInfoForBonjourDevice(v4, v7, v8);

      if (v9)
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v10 = hap2Log_browser;
        if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v10;
          v12 = [v9 rawDiscoveryInfo];
          v13 = [v12 objectForKeyedSubscript:@"bonjourServiceName"];
          v14 = [v9 rawDiscoveryInfo];
          v15 = [v14 objectForKeyedSubscript:@"bonjourServiceType"];
          v16 = [v9 deviceID];
          v19 = 138478339;
          v20 = v13;
          v21 = 2112;
          v22 = v15;
          v23 = 2112;
          v24 = v16;
          _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_DEFAULT, "Lost accessory: %{private}@.%@: %@", &v19, 0x20u);
        }

        if (objc_opt_respondsToSelector())
        {
          [v6 discovery:self didLoseAccessory:v9 error:0];
        }
      }
    }
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v17 = hap2Log_browser;
    if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_INFO, "Ignoring lost event while not discovering", &v19, 2u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_handleDeviceFoundOrChanged:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if ([(HAP2AccessoryServerDiscoveryBonjourLegacy *)self isDiscovering])
  {
    v6 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self delegate];
    if (v6)
    {
      v7 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self type];
      v8 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self domain];
      v9 = accessoryInfoForBonjourDevice(v4, v7, v8);

      if (v9)
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v10 = hap2Log_browser;
        if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v10;
          v12 = [v9 rawDiscoveryInfo];
          v13 = [v12 objectForKeyedSubscript:@"bonjourServiceName"];
          v14 = [v9 rawDiscoveryInfo];
          v15 = [v14 objectForKeyedSubscript:@"bonjourServiceType"];
          v16 = [v9 deviceID];
          v19 = 138478339;
          v20 = v13;
          v21 = 2112;
          v22 = v15;
          v23 = 2112;
          v24 = v16;
          _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_DEFAULT, "Found accessory: %{private}@.%@: %@", &v19, 0x20u);
        }

        [v6 discovery:self didDiscoverAccessory:v9];
      }
    }
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v17 = hap2Log_browser;
    if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_INFO, "Ignoring found/changed event while not discovering", &v19, 2u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_stopBrowser
{
  v3 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self browser];
  [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self setBrowser:0];
  [v4 invalidate];
}

- (void)_startBrowser
{
  v3 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_alloc_init(MEMORY[0x277D02848]);
  [v4 setBrowseFlags:0x800000000000000];
  [v4 setChangeFlags:0xFFFFFFFFLL];
  [v4 setControlFlags:1];
  v5 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self workQueue];
  [v4 setDispatchQueue:v5];

  v6 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self domain];
  [v4 setDomain:v6];

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v4 setLabel:v8];

  v9 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self type];
  [v4 setServiceType:v9];

  objc_initWeak(&location, self);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __58__HAP2AccessoryServerDiscoveryBonjourLegacy__startBrowser__block_invoke;
  v22[3] = &unk_2786D49F0;
  objc_copyWeak(&v23, &location);
  [v4 setDeviceFoundHandler:v22];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __58__HAP2AccessoryServerDiscoveryBonjourLegacy__startBrowser__block_invoke_18;
  v20[3] = &unk_2786D49F0;
  objc_copyWeak(&v21, &location);
  [v4 setDeviceLostHandler:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __58__HAP2AccessoryServerDiscoveryBonjourLegacy__startBrowser__block_invoke_19;
  v18[3] = &unk_2786D4A18;
  objc_copyWeak(&v19, &location);
  [v4 setDeviceChangedHandler:v18];
  [v4 setInterruptionHandler:&__block_literal_global_23];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __58__HAP2AccessoryServerDiscoveryBonjourLegacy__startBrowser__block_invoke_24;
  v15 = &unk_2786D6EB0;
  objc_copyWeak(&v17, &location);
  v10 = v4;
  v16 = v10;
  v11 = MEMORY[0x231885210](&v12);
  [v10 setInvalidationHandler:{v11, v12, v13, v14, v15}];
  [v10 activate];
  [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self setBrowser:v10];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __58__HAP2AccessoryServerDiscoveryBonjourLegacy__startBrowser__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleDeviceFoundOrChanged:v3];
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v6 = hap2Log_browser;
    if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "Bonjour browser found event after discovery died", v7, 2u);
    }
  }
}

void __58__HAP2AccessoryServerDiscoveryBonjourLegacy__startBrowser__block_invoke_18(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleDeviceLost:v3];
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v6 = hap2Log_browser;
    if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "Bonjour browser lost event after discovery died", v7, 2u);
    }
  }
}

void __58__HAP2AccessoryServerDiscoveryBonjourLegacy__startBrowser__block_invoke_19(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleDeviceFoundOrChanged:v3];
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v6 = hap2Log_browser;
    if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "Bonjour browser changed event after discovery died", v7, 2u);
    }
  }
}

void __58__HAP2AccessoryServerDiscoveryBonjourLegacy__startBrowser__block_invoke_24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleBrowserStopped:*(a1 + 32)];
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v4 = hap2Log_browser;
    if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "Bonjour browser invalidate event after discovery died", v5, 2u);
    }
  }

  [*(a1 + 32) setInvalidationHandler:0];
}

void __58__HAP2AccessoryServerDiscoveryBonjourLegacy__startBrowser__block_invoke_21()
{
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v0 = hap2Log_browser;
  if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_22AADC000, v0, OS_LOG_TYPE_ERROR, "Bonjour browser crashed", v1, 2u);
  }
}

- (void)_reconfirmAccessory:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if ([(HAP2AccessoryServerDiscoveryBonjourLegacy *)self isDiscovering])
  {
    v6 = [v4 deviceID];
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v7 = hap2Log_browser;
    if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to reconfirm accessory '%@'", &buf, 0xCu);
    }

    v8 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self browser];
    v9 = [v8 devices];

    *&buf = 0;
    *(&buf + 1) = &buf;
    v20 = 0x2020000000;
    v21 = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __65__HAP2AccessoryServerDiscoveryBonjourLegacy__reconfirmAccessory___block_invoke;
    v14[3] = &unk_2786D49C8;
    v10 = v6;
    v15 = v10;
    p_buf = &buf;
    [v9 hmf_enumerateWithAutoreleasePoolUsingBlock:v14];
    if ((*(*(&buf + 1) + 24) & 1) == 0)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v11 = hap2Log_browser;
      if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_ERROR))
      {
        *v17 = 138412290;
        v18 = v10;
        _os_log_error_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "Unable to reconfirm accessory '%@'", v17, 0xCu);
      }
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v12 = hap2Log_browser;
    if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_INFO, "Not discovering", &buf, 2u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __65__HAP2AccessoryServerDiscoveryBonjourLegacy__reconfirmAccessory___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [(HAPDeviceID *)v6 identifierStr];
  if (v7)
  {
    v8 = [[HAPDeviceID alloc] initWithDeviceIDString:v7];
    v9 = v8;
    if (v8)
    {
      if ([(HAPDeviceID *)v8 isEqualToDeviceID:*(a1 + 32)])
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v10 = hap2Log_browser;
        if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
        {
          v14 = 138412290;
          v15 = v9;
          _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "Reconfirming accessory '%@'", &v14, 0xCu);
        }

        [(HAPDeviceID *)v6 reconfirm];
        *(*(*(a1 + 40) + 8) + 24) = 1;
        *a4 = 1;
      }
    }

    else
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v12 = hap2Log_browser;
      if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
      {
        v14 = 138412546;
        v15 = v7;
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_INFO, "Ignoring bonjour device that has an invalid device id '%@': %@", &v14, 0x16u);
      }
    }
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v11 = hap2Log_browser;
    if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "Ignoring bonjour device that has a no device id: %@", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_stopDiscovering
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self isDiscovering];
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v5 = hap2Log_browser;
  if (v4)
  {
    if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self type];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEFAULT, "Stopping discovery of services with type '%@'", &v9, 0xCu);
    }

    [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self setDiscovering:0];
    [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self _stopBrowser];
  }

  else if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "Not discovering", &v9, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_startDiscovering
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self isDiscovering];
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v5 = hap2Log_browser;
  if (v4)
  {
    if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "Already discovering", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self type];
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEFAULT, "Starting to discover services with type '%@'", buf, 0xCu);
    }

    [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self _startBrowser];
    [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self setDiscovering:1];
    v8 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v9 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self delegateQueue];
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __62__HAP2AccessoryServerDiscoveryBonjourLegacy__startDiscovering__block_invoke;
      v15 = &unk_2786D7050;
      v16 = v8;
      v17 = self;
      dispatch_async(v9, &v12);
    }

    v10 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self workQueue:v12];
    dispatch_async(v10, &__block_literal_global_11837);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __62__HAP2AccessoryServerDiscoveryBonjourLegacy__startDiscovering__block_invoke_2()
{
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v0 = hap2Log_browser;
  if (os_log_type_enabled(hap2Log_browser, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_22AADC000, v0, OS_LOG_TYPE_DEFAULT, "Now discovering", v1, 2u);
  }
}

- (void)reconfirmAccessory:(id)a3
{
  v4 = a3;
  v5 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HAP2AccessoryServerDiscoveryBonjourLegacy_reconfirmAccessory___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)stopDiscovering
{
  v3 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HAP2AccessoryServerDiscoveryBonjourLegacy_stopDiscovering__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)startDiscovering
{
  v3 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__HAP2AccessoryServerDiscoveryBonjourLegacy_startDiscovering__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)setBrowser:(id)a3
{
  v4 = a3;
  v5 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self workQueue];
  dispatch_assert_queue_V2(v5);

  browser = self->_browser;
  self->_browser = v4;
}

- (CUBonjourBrowser)browser
{
  v3 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self workQueue];
  dispatch_assert_queue_V2(v3);

  browser = self->_browser;

  return browser;
}

- (void)setDiscovering:(BOOL)a3
{
  v5 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__HAP2AccessoryServerDiscoveryBonjourLegacy_setDiscovering___block_invoke;
  v6[3] = &unk_2786D6768;
  v6[4] = self;
  v7 = a3;
  [v5 performWritingBlock:v6];
}

- (BOOL)isDiscovering
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self propertyLock];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__HAP2AccessoryServerDiscoveryBonjourLegacy_isDiscovering__block_invoke;
  v5[3] = &unk_2786D6E60;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 performReadingBlock:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self propertyLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HAP2AccessoryServerDiscoveryBonjourLegacy_setDelegate___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performWritingBlock:v7];
}

- (HAP2AccessoryServerDiscoveryDelegate)delegate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__11841;
  v11 = __Block_byref_object_dispose__11842;
  v12 = 0;
  v3 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__HAP2AccessoryServerDiscoveryBonjourLegacy_delegate__block_invoke;
  v6[3] = &unk_2786D6E60;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performReadingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __53__HAP2AccessoryServerDiscoveryBonjourLegacy_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  browser = self->_browser;
  if (browser)
  {
    [(CUBonjourBrowser *)browser invalidate];
  }

  v4.receiver = self;
  v4.super_class = HAP2AccessoryServerDiscoveryBonjourLegacy;
  [(HAP2AccessoryServerDiscoveryBonjourLegacy *)&v4 dealloc];
}

- (HAP2AccessoryServerDiscoveryBonjourLegacy)initWithServiceType:(id)a3 domain:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = HAP2AccessoryServerDiscoveryBonjourLegacy;
  v9 = [(HAP2AccessoryServerDiscoveryBonjourLegacy *)&v18 init];
  v10 = v9;
  if (v9)
  {
    v11 = HAPDispatchQueueName(v9, @"workQueue");
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(v11, v12);
    workQueue = v10->_workQueue;
    v10->_workQueue = v13;

    v15 = [HAP2PropertyLock lockWithName:@"HAP2AccessoryServerDiscoveryBonjourLegacy.propertyLock"];
    propertyLock = v10->_propertyLock;
    v10->_propertyLock = v15;

    objc_storeStrong(&v10->_type, a3);
    objc_storeStrong(&v10->_domain, a4);
  }

  return v10;
}

- (HAP2AccessoryServerDiscoveryBonjourLegacy)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)new
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end