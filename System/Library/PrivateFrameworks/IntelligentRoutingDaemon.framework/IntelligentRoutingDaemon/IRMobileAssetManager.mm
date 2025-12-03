@interface IRMobileAssetManager
- (IRBackgroundActivitiesManager)backgroundActivitiesManager;
- (IRMobileAssetManager)initWithBackgroundActivitiesManager:(id)manager;
- (void)_handleMobileAssetLoadXPCActivity;
- (void)_loadAvailableMobileAsset;
- (void)_loadMobileAssetAtPath:(id)path assetVersion:(id)version;
@end

@implementation IRMobileAssetManager

- (IRMobileAssetManager)initWithBackgroundActivitiesManager:(id)manager
{
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = IRMobileAssetManager;
  v5 = [(IRMobileAssetManager *)&v17 init];
  if (v5)
  {
    v6 = +[IRPreferences shared];
    loadMobileAssetXPCActivityInterval = [v6 loadMobileAssetXPCActivityInterval];
    longLongValue = [loadMobileAssetXPCActivityInterval longLongValue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__IRMobileAssetManager_initWithBackgroundActivitiesManager___block_invoke;
    v15[3] = &unk_2797E0BA8;
    v9 = v5;
    v16 = v9;
    [managerCopy registerForRepeatingBackgroundXPCActivityWithIdentifier:@"com.apple.intelligentroutingd.MALoaderXPCActivityIdentifier" interval:longLongValue isDiskIntensive:1 isMemoryIntensive:1 handler:v15];

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.intelligentroutingd.mobileAssetLoader", v10);
    [(IRMobileAssetManager *)v9 setQueue:v11];

    [(IRMobileAssetManager *)v9 setBackgroundActivitiesManager:managerCopy];
    v12 = objc_alloc_init(IRMobileAssetClient);
    [(IRMobileAssetManager *)v9 setMobileAssetClient:v12];

    mobileAssetClient = [(IRMobileAssetManager *)v9 mobileAssetClient];

    if (mobileAssetClient)
    {
      [(IRMobileAssetManager *)v9 _loadAvailableMobileAsset];
    }
  }

  return v5;
}

- (void)_handleMobileAssetLoadXPCActivity
{
  queue = [(IRMobileAssetManager *)self queue];
  IRDispatchAsyncWithStrongSelf(queue, self, &__block_literal_global_7);
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
  mobileAssetClient = [(IRMobileAssetManager *)self mobileAssetClient];
  lockAssetContent = [mobileAssetClient lockAssetContent];

  if (lockAssetContent)
  {
    mobileAssetClient2 = [(IRMobileAssetManager *)self mobileAssetClient];
    getLockedAssetVersion = [mobileAssetClient2 getLockedAssetVersion];

    if (getLockedAssetVersion && (+[IRPreferences shared](IRPreferences, "shared"), v7 = objc_claimAutoreleasedReturnValue(), [v7 mobileAssetVersion], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(getLockedAssetVersion, "isEqual:", v8), v8, v7, (v9 & 1) == 0))
    {
      [(IRMobileAssetManager *)self _loadMobileAssetAtPath:lockAssetContent assetVersion:getLockedAssetVersion];
    }

    else
    {
      v10 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = getLockedAssetVersion;
        _os_log_impl(&dword_25543D000, v10, OS_LOG_TYPE_INFO, "#mobile-asset-manager, Locked Mobile Asset is same as current version or nil: %@. Skipping load", &v13, 0xCu);
      }
    }

    mobileAssetClient3 = [(IRMobileAssetManager *)self mobileAssetClient];
    [mobileAssetClient3 unlockAssetContent];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_loadMobileAssetAtPath:(id)path assetVersion:(id)version
{
  v16 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  versionCopy = version;
  v7 = *MEMORY[0x277D21268];
  if (os_log_type_enabled(*MEMORY[0x277D21268], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = versionCopy;
    _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_DEFAULT, "#mobile-asset-manager, Loading MobileAsset. Version %@", &v14, 0xCu);
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [pathCopy stringByAppendingPathComponent:@"settings.plist"];
  if ([defaultManager fileExistsAtPath:v9])
  {
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v9];
    v11 = +[IRPreferences shared];
    [v11 setMobileAssetSettingsWithMobileAssetDict:v10 assetVersion:versionCopy];
  }

  else
  {
    v12 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      [IRMobileAssetManager _loadMobileAssetAtPath:versionCopy assetVersion:v12];
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