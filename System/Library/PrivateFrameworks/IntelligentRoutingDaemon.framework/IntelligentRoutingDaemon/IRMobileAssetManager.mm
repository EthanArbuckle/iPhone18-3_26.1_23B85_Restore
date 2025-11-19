@interface IRMobileAssetManager
- (IRBackgroundActivitiesManager)backgroundActivitiesManager;
- (IRMobileAssetManager)initWithBackgroundActivitiesManager:(id)a3;
- (void)_handleMobileAssetLoadXPCActivity;
- (void)_loadAvailableMobileAsset;
- (void)_loadMobileAssetAtPath:(id)a3 assetVersion:(id)a4;
@end

@implementation IRMobileAssetManager

- (IRMobileAssetManager)initWithBackgroundActivitiesManager:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = IRMobileAssetManager;
  v5 = [(IRMobileAssetManager *)&v17 init];
  if (v5)
  {
    v6 = +[IRPreferences shared];
    v7 = [v6 loadMobileAssetXPCActivityInterval];
    v8 = [v7 longLongValue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__IRMobileAssetManager_initWithBackgroundActivitiesManager___block_invoke;
    v15[3] = &unk_2797E0BA8;
    v9 = v5;
    v16 = v9;
    [v4 registerForRepeatingBackgroundXPCActivityWithIdentifier:@"com.apple.intelligentroutingd.MALoaderXPCActivityIdentifier" interval:v8 isDiskIntensive:1 isMemoryIntensive:1 handler:v15];

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.intelligentroutingd.mobileAssetLoader", v10);
    [(IRMobileAssetManager *)v9 setQueue:v11];

    [(IRMobileAssetManager *)v9 setBackgroundActivitiesManager:v4];
    v12 = objc_alloc_init(IRMobileAssetClient);
    [(IRMobileAssetManager *)v9 setMobileAssetClient:v12];

    v13 = [(IRMobileAssetManager *)v9 mobileAssetClient];

    if (v13)
    {
      [(IRMobileAssetManager *)v9 _loadAvailableMobileAsset];
    }
  }

  return v5;
}

- (void)_handleMobileAssetLoadXPCActivity
{
  v3 = [(IRMobileAssetManager *)self queue];
  IRDispatchAsyncWithStrongSelf(v3, self, &__block_literal_global_7);
}

void __57__IRMobileAssetManager__handleMobileAssetLoadXPCActivity__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = os_transaction_create();
  v4 = [v2 mobileAssetClient];

  if (!v4)
  {
    v5 = objc_alloc_init(IRMobileAssetClient);
    [v2 setMobileAssetClient:v5];
  }

  v6 = [v2 mobileAssetClient];

  if (v6)
  {
    [v2 _loadAvailableMobileAsset];
  }

  else
  {
    v7 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_INFO, "#mobile-asset-manager, Skipping MobileAsset load since MobileAsset client failed to initialize", v8, 2u);
    }
  }
}

- (void)_loadAvailableMobileAsset
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(IRMobileAssetManager *)self mobileAssetClient];
  v4 = [v3 lockAssetContent];

  if (v4)
  {
    v5 = [(IRMobileAssetManager *)self mobileAssetClient];
    v6 = [v5 getLockedAssetVersion];

    if (v6 && (+[IRPreferences shared](IRPreferences, "shared"), v7 = objc_claimAutoreleasedReturnValue(), [v7 mobileAssetVersion], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v6, "isEqual:", v8), v8, v7, (v9 & 1) == 0))
    {
      [(IRMobileAssetManager *)self _loadMobileAssetAtPath:v4 assetVersion:v6];
    }

    else
    {
      v10 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = v6;
        _os_log_impl(&dword_25543D000, v10, OS_LOG_TYPE_INFO, "#mobile-asset-manager, Locked Mobile Asset is same as current version or nil: %@. Skipping load", &v13, 0xCu);
      }
    }

    v11 = [(IRMobileAssetManager *)self mobileAssetClient];
    [v11 unlockAssetContent];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_loadMobileAssetAtPath:(id)a3 assetVersion:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = *MEMORY[0x277D21268];
  if (os_log_type_enabled(*MEMORY[0x277D21268], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v6;
    _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_DEFAULT, "#mobile-asset-manager, Loading MobileAsset. Version %@", &v14, 0xCu);
  }

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v5 stringByAppendingPathComponent:@"settings.plist"];
  if ([v8 fileExistsAtPath:v9])
  {
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v9];
    v11 = +[IRPreferences shared];
    [v11 setMobileAssetSettingsWithMobileAssetDict:v10 assetVersion:v6];
  }

  else
  {
    v12 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      [IRMobileAssetManager _loadMobileAssetAtPath:v6 assetVersion:v12];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (IRBackgroundActivitiesManager)backgroundActivitiesManager
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundActivitiesManager);

  return WeakRetained;
}

- (void)_loadMobileAssetAtPath:(uint64_t)a1 assetVersion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25543D000, a2, OS_LOG_TYPE_ERROR, "#mobile-asset-manager, [ErrorId - load MobileAsset error] Could not find content of MobileAsset version %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end