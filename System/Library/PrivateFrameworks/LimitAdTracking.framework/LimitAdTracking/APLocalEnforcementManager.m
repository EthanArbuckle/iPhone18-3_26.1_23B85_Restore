@interface APLocalEnforcementManager
- (BOOL)adServicesEnabled:(id)a3;
- (BOOL)deviceRegionStorefrontEnabled;
- (BOOL)isU13MAIDEDU;
- (BOOL)shouldShowTCCWithAds;
- (id)accountStorefront;
- (id)appTrackingXPCConnection:(id)a3 withInvalidation:(id)a4;
- (id)disabledReasons;
@end

@implementation APLocalEnforcementManager

- (id)disabledReasons
{
  v2 = objc_alloc_init(ADTrackingTransparency);
  v3 = [(ADTrackingTransparency *)v2 adSwitchDisabledReasons];
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:1];
  v6 = [v3 containsObject:v5];

  if (v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    [v4 addObject:v7];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v9 = [v3 containsObject:v8];

  if (v9)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:3];
    [v4 addObject:v10];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:4];
  v12 = [v3 containsObject:v11];

  if (v12)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:4];
    [v4 addObject:v13];
  }

  v14 = [v4 copy];

  return v14;
}

- (BOOL)adServicesEnabled:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = [(APLocalEnforcementManager *)self appTrackingXPCConnection:&__block_literal_global_0 withInvalidation:&__block_literal_global_9];
  if (!v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to create connection for adServicesEnabled()", buf, 2u);
  }

  v6 = [(APLocalEnforcementManager *)self appTrackingServiceProxy:v5];
  if (!v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "The remote proxy is nil. Unable to get adServicesEnabled", buf, 2u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Starting synchronous remote call to localAdServicesEnabled()", buf, 2u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__APLocalEnforcementManager_adServicesEnabled___block_invoke_10;
  v10[3] = &unk_279817778;
  v10[4] = self;
  v7 = v4;
  v11 = v7;
  v12 = &v14;
  [v6 localAdServicesEnabled:v10];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Returned from synchronous remote call to iTunesAccountStorefront()", buf, 2u);
  }

  [v5 invalidate];
  v8 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v8;
}

void __47__APLocalEnforcementManager_adServicesEnabled___block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "The remote service was interrupted", v0, 2u);
  }
}

void __47__APLocalEnforcementManager_adServicesEnabled___block_invoke_7()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Connection invalidated before completing", v0, 2u);
  }
}

void __47__APLocalEnforcementManager_adServicesEnabled___block_invoke_10(void *a1, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    v8 = objc_opt_class();
    v9 = @"not enabled";
    if (a2)
    {
      v9 = @"enabled";
    }

    v15 = 138412546;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    v10 = v8;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] The localAdServicesEnabled flag is %{public}@.", &v15, 0x16u);
  }

  if (a2)
  {
    v11 = (*(a1[5] + 16))(a1[5], v4, v5, v6);
    v12 = [v11 lowercaseString];
    v13 = [v12 hasPrefix:@"us"];

    *(*(a1[6] + 8) + 24) = v13;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)deviceRegionStorefrontEnabled
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = [(APLocalEnforcementManager *)self appTrackingXPCConnection:&__block_literal_global_19 withInvalidation:&__block_literal_global_22_0];
  if (!v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to create connection for deviceRegionEnabledPerStorefront", buf, 2u);
  }

  v4 = [(APLocalEnforcementManager *)self appTrackingServiceProxy:v3];
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "The remote proxy is nil. Unable to get deviceRegionStorefrontEnabled", buf, 2u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Starting synchronous remote call to deviceRegionEnabledPerStorefront()", buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__APLocalEnforcementManager_deviceRegionStorefrontEnabled__block_invoke_23;
  v7[3] = &unk_2798177A0;
  v7[4] = self;
  v7[5] = &v9;
  [v4 deviceRegionEnabledPerStorefront:v7];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Returned from synchronous remote call to deviceRegionEnabledPerStorefront()", buf, 2u);
  }

  [v3 invalidate];
  v5 = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v5;
}

void __58__APLocalEnforcementManager_deviceRegionStorefrontEnabled__block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "The remote service was interrupted", v0, 2u);
  }
}

void __58__APLocalEnforcementManager_deviceRegionStorefrontEnabled__block_invoke_20()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Connection invalidated before completing", v0, 2u);
  }
}

void __58__APLocalEnforcementManager_deviceRegionStorefrontEnabled__block_invoke_23(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    v6 = @"not enabled";
    if (a2)
    {
      v6 = @"enabled";
    }

    v9 = 138412546;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    v7 = v5;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] The deviceRegionStorefrontEnabled flag is %{public}@.", &v9, 0x16u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isU13MAIDEDU
{
  v2 = objc_alloc_init(ADTrackingTransparency);
  v3 = [(ADTrackingTransparency *)v2 adSwitchDisabledReasons];
  v4 = 1;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:1];
  v6 = [v3 containsObject:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:4];
    v8 = [v3 containsObject:v7];

    if (v8)
    {
      v4 = 1;
    }

    else
    {
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:3];
      v4 = [v3 containsObject:v9];
    }
  }

  return v4;
}

- (id)accountStorefront
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = @"NONE";
  v3 = [(APLocalEnforcementManager *)self appTrackingXPCConnection:&__block_literal_global_28 withInvalidation:&__block_literal_global_31];
  if (!v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to create connection for accountStorefront()", buf, 2u);
  }

  v4 = [(APLocalEnforcementManager *)self appTrackingServiceProxy:v3];
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "The remote proxy is nil. Unable to get accountStorefront", buf, 2u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Starting synchronous remote call to iTunesAccountStorefront()", buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__APLocalEnforcementManager_accountStorefront__block_invoke_32;
  v7[3] = &unk_2798177C8;
  v7[4] = self;
  v7[5] = &v9;
  [v4 iTunesAccountStorefront:v7];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Returned from synchronous remote call to iTunesAccountStorefront()", buf, 2u);
  }

  [v3 invalidate];
  v5 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v5;
}

void __46__APLocalEnforcementManager_accountStorefront__block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "The remote service was interrupted", v0, 2u);
  }
}

void __46__APLocalEnforcementManager_accountStorefront__block_invoke_29()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Connection invalidated before completing", v0, 2u);
  }
}

void __46__APLocalEnforcementManager_accountStorefront__block_invoke_32(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v9 = 138412546;
    v10 = objc_opt_class();
    v11 = 2114;
    v12 = v3;
    v5 = v10;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] The account storefront is %{public}@.", &v9, 0x16u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x277D85DE8];
}

- (id)appTrackingXPCConnection:(id)a3 withInvalidation:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.ap.adprivacyd.opt-out" options:4096];
  if (v7)
  {
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2868090D0];
    [v7 setRemoteObjectInterface:v8];

    [v7 setInvalidationHandler:v6];
    [v7 setInterruptionHandler:v5];
    [v7 resume];
    v9 = v7;
  }

  return v7;
}

void __53__APLocalEnforcementManager_appTrackingServiceProxy___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = a2;
    v4 = [v3 code];
    v5 = [v3 localizedDescription];

    v7 = 134218242;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Received error code %ld from remote call: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldShowTCCWithAds
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = [(APLocalEnforcementManager *)self appTrackingXPCConnection:&__block_literal_global_55 withInvalidation:&__block_literal_global_58];
  if (!v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to create connection for shouldShowTCCWithAds()", buf, 2u);
  }

  v4 = [(APLocalEnforcementManager *)self appTrackingServiceProxy:v3];
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "The remote proxy is nil. Unable to get shouldShowTCCWithAds", buf, 2u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Starting synchronous remote call to iTunesAccountStorefront()", buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__APLocalEnforcementManager_shouldShowTCCWithAds__block_invoke_59;
  v7[3] = &unk_2798177C8;
  v7[4] = self;
  v7[5] = &v9;
  [v4 iTunesAccountStorefront:v7];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Returned from synchronous remote call to iTunesAccountStorefront()", buf, 2u);
  }

  [v3 invalidate];
  v5 = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v5;
}

void __49__APLocalEnforcementManager_shouldShowTCCWithAds__block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "The remote service was interrupted", v0, 2u);
  }
}

void __49__APLocalEnforcementManager_shouldShowTCCWithAds__block_invoke_56()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Connection invalidated before completing", v0, 2u);
  }
}

void __49__APLocalEnforcementManager_shouldShowTCCWithAds__block_invoke_59(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *v7 = 138412546;
    *&v7[4] = objc_opt_class();
    *&v7[12] = 2114;
    *&v7[14] = v3;
    v5 = *&v7[4];
    _os_log_impl(&dword_255F62000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] The account storefront is %{public}@.", v7, 0x16u);
  }

  if ([v3 containsString:{@"143441", *v7, *&v7[16], v8}])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end