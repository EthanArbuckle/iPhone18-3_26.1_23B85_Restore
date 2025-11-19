@interface IRMobileAssetClient
- (BOOL)_createInterestInAssetType:(id)a3 withAssetSpecifier:(id)a4;
- (IRMobileAssetClient)init;
- (id)getLockedAssetVersion;
- (id)lockAssetContent;
- (void)lockAssetContent;
- (void)unlockAssetContent;
@end

@implementation IRMobileAssetClient

- (IRMobileAssetClient)init
{
  v6.receiver = self;
  v6.super_class = IRMobileAssetClient;
  v2 = [(IRMobileAssetClient *)&v6 init];
  v3 = v2;
  if (v2 && ![(IRMobileAssetClient *)v2 _createInterestInAssetType:@"com.apple.MobileAsset.IntelligentRouting" withAssetSpecifier:@"IntelligentRoutingSettingsAsset"])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (BOOL)_createInterestInAssetType:(id)a3 withAssetSpecifier:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D289F8];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initForAssetType:v8 withAssetSpecifier:v7];

  [(IRMobileAssetClient *)self setCurrentAssetSelector:v9];
  v10 = objc_alloc(MEMORY[0x277D289E0]);
  v11 = [(IRMobileAssetClient *)self currentAssetSelector];
  v23 = 0;
  v12 = [v10 initForClientName:@"IntelligentRoutingDaemon" selectingAsset:v11 error:&v23];
  v13 = v23;

  if (v13)
  {
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      [IRMobileAssetClient _createInterestInAssetType:withAssetSpecifier:];
    }

    v14 = 0;
  }

  else
  {
    v15 = [v12 interestInContentSync:@"Adapting IntelligentRouting performance"];
    v14 = v15 == 0;
    v16 = MEMORY[0x277D21260];
    v17 = *MEMORY[0x277D21260];
    if (v15)
    {
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
      {
        [IRMobileAssetClient _createInterestInAssetType:withAssetSpecifier:];
      }
    }

    else
    {
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25543D000, v17, OS_LOG_TYPE_INFO, "#mobile-asset-client, Successfully set interest in MobileAsset content", buf, 2u);
      }

      v18 = *v16;
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_INFO))
      {
        v19 = v18;
        v20 = [v12 description];
        *buf = 138412290;
        v25 = v20;
        _os_log_impl(&dword_25543D000, v19, OS_LOG_TYPE_INFO, "#mobile-asset-client, %@", buf, 0xCu);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)lockAssetContent
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277D289F8]) initForAssetType:@"com.apple.MobileAsset.IntelligentRouting" withAssetSpecifier:@"IntelligentRoutingSettingsAsset"];
  v29 = 0;
  v4 = [objc_alloc(MEMORY[0x277D289E0]) initForClientName:@"IntelligentRoutingDaemon" selectingAsset:v3 error:&v29];
  v5 = v29;
  if (v5)
  {
    v6 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      [(IRMobileAssetClient *)v6 lockAssetContent];
    }

    v7 = 0;
  }

  else
  {
    v8 = objc_opt_new();
    v27 = 0;
    v28 = 0;
    v26 = 0;
    v9 = [v4 lockContentSync:@"Adapting IntelligentRouting performance" withUsagePolicy:v8 withTimeout:0 lockedAssetSelector:&v28 newerInProgress:&v27 error:&v26];
    v10 = v28;
    v11 = v27;
    v12 = v26;
    v13 = *MEMORY[0x277D21260];
    v14 = os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO);
    if (v12)
    {
      if (v14)
      {
        v15 = v13;
        v16 = [v12 description];
        *buf = 138412290;
        v31 = v16;
        _os_log_impl(&dword_25543D000, v15, OS_LOG_TYPE_INFO, "#mobile-asset-client, Unable to lock any version of auto-asset content: %@", buf, 0xCu);
      }

      v7 = 0;
    }

    else
    {
      v25 = v11;
      if (v14)
      {
        v17 = v13;
        v18 = [v10 assetVersion];
        *buf = 138412290;
        v31 = v18;
        _os_log_impl(&dword_25543D000, v17, OS_LOG_TYPE_INFO, "#mobile-asset-client, MobileAsset Locked. Version %@", buf, 0xCu);

        v11 = v25;
      }

      v19 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
      {
        v20 = v19;
        v21 = [v4 description];
        *buf = 138412290;
        v31 = v21;
        _os_log_impl(&dword_25543D000, v20, OS_LOG_TYPE_INFO, "#mobile-asset-client, %@", buf, 0xCu);

        v11 = v25;
      }

      if (v10)
      {
        [(IRMobileAssetClient *)self setCurrentAssetSelector:v10];
      }

      else
      {
        v22 = *MEMORY[0x277D21260];
        if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
        {
          [(IRMobileAssetClient *)v22 lockAssetContent];
        }
      }

      v7 = [v9 path];
    }
  }

  v23 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)unlockAssetContent
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_3(&dword_25543D000, v0, v1, "#mobile-asset-client, [ErrorId - AutoAsset end lock error] Failed to end asset locks: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (id)getLockedAssetVersion
{
  v2 = [(IRMobileAssetClient *)self currentAssetSelector];
  v3 = [v2 assetVersion];

  return v3;
}

- (void)_createInterestInAssetType:withAssetSpecifier:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_3(&dword_25543D000, v0, v1, "#mobile-asset-client, [ErrorId - AutoAsset init error] Unable to create auto-asset instance: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_createInterestInAssetType:withAssetSpecifier:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_3(&dword_25543D000, v0, v1, "#mobile-asset-client, [ErrorId - AutoAsset set interest error] Failed to set interest in content: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)lockAssetContent
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 description];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_25543D000, v3, OS_LOG_TYPE_ERROR, "#mobile-asset-client, [ErrorId - AutoAsset init error] Unable to create auto-asset instance for locking: %@", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end