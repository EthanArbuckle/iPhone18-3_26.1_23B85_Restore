@interface NTKPigmentEditOptionStore
+ (NTKPigmentEditOptionStore)sharedInstance;
- (BOOL)hasAddableCollectionsForDomain:(id)a3 bundle:(id)a4 slot:(id)a5;
- (BOOL)isCacheRussiaLocaleStateChanged;
- (BOOL)shouldClearPersistanceStoreCache;
- (BOOL)shouldForceResetingPersistentCache;
- (NSDictionary)sharedCollections;
- (NTKPigmentEditOptionStore)init;
- (id)_companion_loadPigmentSetForDomain:(id)a3 bundle:(id)a4;
- (id)_loadPigmentSetForDomain:(id)a3 bundle:(id)a4;
- (id)_migratedOptionForInvalidOption:(id)a3 collection:(id)a4;
- (id)_normalizeOptionForOption:(id)a3 domain:(id)a4 bundle:(id)a5 slot:(id)a6;
- (id)_threadunsafe_sharedCollections;
- (id)_watch_loadPigmentSetForDomain:(id)a3 bundle:(id)a4;
- (id)colorOptionsForDomain:(id)a3 bundle:(id)a4 slot:(id)a5;
- (id)defaultColorOptionForDomain:(id)a3 bundle:(id)a4 slot:(id)a5;
- (id)defaultGalleryColorsForDomain:(id)a3 bundle:(id)a4;
- (id)fulfilledOptionForOption:(id)a3 domain:(id)a4 bundle:(id)a5 slot:(id)a6;
- (id)migratedOptionForInvalidOption:(id)a3 domain:(id)a4 bundle:(id)a5 slot:(id)a6;
- (id)optionAtIndex:(unint64_t)a3 domain:(id)a4 bundle:(id)a5 slot:(id)a6;
- (id)pigmentSetForDomain:(id)a3 bundle:(id)a4;
- (unint64_t)indexOfOption:(id)a3 domain:(id)a4 bundle:(id)a5 slot:(id)a6;
- (unint64_t)numberOfOptionsForDomain:(id)a3 bundle:(id)a4 slot:(id)a5;
- (void)_autoSelectPigmentsForSharedCollections:(id)a3;
- (void)_autoSelectPigmentsFromFacePigmentSet:(id)a3;
- (void)_companion_setupPersistentStorage;
- (void)_setupPlistLoader;
- (void)_threadunsafe_resetCache;
- (void)addListener:(id)a3 forDomain:(id)a4;
- (void)colorBundleContentChanged;
- (void)faceBundlesUpdated;
- (void)handleActiveDeviceChangedNotification;
- (void)notifyListenersStoreContentChanged;
- (void)removeListener:(id)a3 forDomain:(id)a4;
- (void)resetCacheAndNotifyListeners;
- (void)savePersistentCacheVersion;
- (void)sensitiveUIStateChanged;
- (void)setIgnoreSensitiveUIItems:(BOOL)a3;
- (void)setIncludesAllDeviceSpecificColors:(BOOL)a3;
- (void)setPersistenceCacheEnabled:(BOOL)a3;
@end

@implementation NTKPigmentEditOptionStore

+ (NTKPigmentEditOptionStore)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__NTKPigmentEditOptionStore_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_9 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_9, block);
  }

  v2 = sharedInstance_sharedInstance_0;

  return v2;
}

void __43__NTKPigmentEditOptionStore_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_0;
  sharedInstance_sharedInstance_0 = v1;
}

- (NTKPigmentEditOptionStore)init
{
  v17.receiver = self;
  v17.super_class = NTKPigmentEditOptionStore;
  v2 = [(NTKPigmentEditOptionStore *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x277CBBB68] sharedRenderingContext];
    v5 = [v4 device];
    device = v3->_device;
    v3->_device = v5;

    v7 = [MEMORY[0x277CBEB38] dictionary];
    listenersByDomain = v3->_listenersByDomain;
    v3->_listenersByDomain = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEA78]);
    cache = v3->_cache;
    v3->_cache = v9;

    v11 = dispatch_queue_create("com.apple.NanoTimeKit.NTKPigmentEditOptionStore", 0);
    privateQueue = v3->_privateQueue;
    v3->_privateQueue = v11;

    v13 = objc_alloc_init(NTKPigmentPreferenceManager);
    preferenceManager = v3->_preferenceManager;
    v3->_preferenceManager = v13;

    [(NTKPigmentPreferenceManager *)v3->_preferenceManager setDelegate:v3];
    v3->_persistenceCacheEnabled = CLKIsClockFaceApp();
    [(NTKPigmentEditOptionStore *)v3 _setupPlistLoader];
    [(NTKPigmentEditOptionStore *)v3 _companion_setupPersistentStorage];
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v3 selector:sel_colorBundleContentChanged name:@"NTKColorBundleContentChangedNotificationName" object:0];
  }

  return v3;
}

- (void)_setupPlistLoader
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(NTKPlistPigmentEditOptionLoader);
  plistLoader = self->_plistLoader;
  self->_plistLoader = v3;

  v5 = [MEMORY[0x277CBBB70] sharedMonitor];
  -[NTKPlistPigmentEditOptionLoader setIgnoreSensitiveUIItems:](self->_plistLoader, "setIgnoreSensitiveUIItems:", [v5 isSensitiveUIEnabled] ^ 1);

  v6 = [MEMORY[0x277CBBB70] sharedMonitor];
  [v6 addSensitiveUIObserver:self];

  v7 = [(CLKDevice *)self->_device deviceBrand];
  v8 = v7;
  if (v7 && [v7 integerValue])
  {
    [(NTKPlistPigmentEditOptionLoader *)self->_plistLoader setSku:v8];
    v9 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(NTKPlistPigmentEditOptionLoader *)self->_plistLoader sku];
      v23 = 138543362;
      v24 = v10;
      _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "#store Plist loader configured with deviceBrand %{public}@", &v23, 0xCu);
    }
  }

  v11 = [(CLKDevice *)self->_device materialType];
  if (v11)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
    [(NTKPlistPigmentEditOptionLoader *)self->_plistLoader setClhs:v12];

    v13 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(NTKPlistPigmentEditOptionLoader *)self->_plistLoader clhs];
      v23 = 138543362;
      v24 = v14;
      _os_log_impl(&dword_22D9C5000, v13, OS_LOG_TYPE_DEFAULT, "#store Plist loader configured with material %{public}@", &v23, 0xCu);
    }
  }

  v15 = [(CLKDevice *)self->_device productFamilyType];
  if (v15 != -1)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
    [(NTKPlistPigmentEditOptionLoader *)self->_plistLoader setFamily:v16];

    v17 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(NTKPlistPigmentEditOptionLoader *)self->_plistLoader family];
      v23 = 138543362;
      v24 = v18;
      _os_log_impl(&dword_22D9C5000, v17, OS_LOG_TYPE_DEFAULT, "#store Plist loader configured with family %{public}@", &v23, 0xCu);
    }
  }

  [(NTKPlistPigmentEditOptionLoader *)self->_plistLoader setIncludesAllDeviceSpecificColors:NTKShowHardwareSpecificFaces()];
  v19 = +[NTKColorBundleLoader sharedInstance];
  v20 = [v19 loadColorBundles];
  [(NTKPlistPigmentEditOptionLoader *)self->_plistLoader setAdditionalBundles:v20];

  v21 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [(NTKPlistPigmentEditOptionLoader *)self->_plistLoader additionalBundles];
    v23 = 138543362;
    v24 = v22;
    _os_log_impl(&dword_22D9C5000, v21, OS_LOG_TYPE_DEFAULT, "#store Additional color bundles loaded: %{public}@", &v23, 0xCu);
  }
}

- (void)setIncludesAllDeviceSpecificColors:(BOOL)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__NTKPigmentEditOptionStore_setIncludesAllDeviceSpecificColors___block_invoke;
  v4[3] = &unk_27877F7E8;
  v4[4] = self;
  v5 = a3;
  _executeWithLock(&self->_lock, v4);
  [(NTKPigmentEditOptionStore *)self resetCacheAndNotifyListeners];
}

void __64__NTKPigmentEditOptionStore_setIncludesAllDeviceSpecificColors___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) plistLoader];
  [v2 setIncludesAllDeviceSpecificColors:v1];
}

- (void)setIgnoreSensitiveUIItems:(BOOL)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__NTKPigmentEditOptionStore_setIgnoreSensitiveUIItems___block_invoke;
  v4[3] = &unk_27877F7E8;
  v4[4] = self;
  v5 = a3;
  _executeWithLock(&self->_lock, v4);
  [(NTKPigmentEditOptionStore *)self resetCacheAndNotifyListeners];
}

void __55__NTKPigmentEditOptionStore_setIgnoreSensitiveUIItems___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) plistLoader];
  [v2 setIgnoreSensitiveUIItems:v1];
}

- (void)setPersistenceCacheEnabled:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__NTKPigmentEditOptionStore_setPersistenceCacheEnabled___block_invoke;
  v3[3] = &unk_27877F7E8;
  v3[4] = self;
  v4 = a3;
  _executeWithLock(&self->_lock, v3);
}

- (BOOL)isCacheRussiaLocaleStateChanged
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 objectForKey:@"NTKPigmentEditOptionStoreLocaleRussia"];

  v5 = NTKGizmoOrCompanionAreRussian(self->_device);
  if (v4)
  {
    v6 = v5 ^ [v4 BOOLValue];
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (BOOL)shouldClearPersistanceStoreCache
{
  v22 = *MEMORY[0x277D85DE8];
  if (self->_persistenceCacheEnabled)
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [v3 objectForKey:@"NTKPigmentEditOptionStoreBuildVersion"];

    v5 = NTKBuildVersion();
    v6 = [v4 isEqualToString:v5] ^ 1;
    v7 = [(NTKPigmentEditOptionStore *)self shouldForceResetingPersistentCache];
    v8 = [(NTKPigmentEditOptionStore *)self isCacheRussiaLocaleStateChanged];
    v9 = v6 | (v7 || v8);
    if (v9)
    {
      v10 = v8;
      if (v7)
      {
        [(NTKPigmentEditOptionStore *)self savePersistentCacheVersion];
      }

      v11 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v16 = 134218496;
        v17 = v6;
        v18 = 2048;
        v19 = v7;
        v20 = 2048;
        v21 = v10;
        _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_INFO, "#store It should clear persistent cache. versionChanged: %lu, force: %lu, LocaleChanged: %lu", &v16, 0x20u);
      }

      v12 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [v12 setObject:v5 forKey:@"NTKPigmentEditOptionStoreBuildVersion"];

      if (!v10)
      {
        v9 = 1;
        goto LABEL_14;
      }

      v13 = [MEMORY[0x277CCABB0] numberWithBool:NTKGizmoOrCompanionAreRussian(self->_device)];
      v14 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [v14 setObject:v13 forKey:@"NTKPigmentEditOptionStoreLocaleRussia"];
    }

    else
    {
      v13 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_22D9C5000, v13, OS_LOG_TYPE_INFO, "#store Persistent pigment cache won't be reset.", &v16, 2u);
      }
    }

LABEL_14:
    return v9 & 1;
  }

  v9 = 0;
  return v9 & 1;
}

- (void)savePersistentCacheVersion
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:0];
  [v3 setObject:v2 forKey:@"NTKPigmentPersistentCacheVersionKey"];
}

- (BOOL)shouldForceResetingPersistentCache
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"NTKPigmentPersistentCacheVersionKey"];
  v4 = [v3 integerValue];

  if (v4)
  {
    return 1;
  }

  return NTKShowHardwareSpecificFaces();
}

- (void)_companion_setupPersistentStorage
{
  v3 = objc_alloc_init(NTKPigmentPersistentStorageController);
  storageController = self->_storageController;
  self->_storageController = v3;

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel_handleActiveDeviceChangedNotification name:*MEMORY[0x277CBB640] object:0];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:self selector:sel_faceBundlesUpdated name:@"NTKFaceBundleManagerDidUpdateBundlesNotificationName" object:0];

  objc_initWeak(&location, self);
  v7 = +[NTKDarwinNotificationCenter defaultCenter];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__NTKPigmentEditOptionStore__companion_setupPersistentStorage__block_invoke;
  v8[3] = &unk_27877DC58;
  objc_copyWeak(&v9, &location);
  [v7 addObserver:self notificationName:@"NTKColorSyncDataUpdatedNotificationName" usingBlock:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __62__NTKPigmentEditOptionStore__companion_setupPersistentStorage__block_invoke(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_INFO, "#store received darwin notification pigment sync data updated from daemon.", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained resetCache];
  }
}

- (id)pigmentSetForDomain:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__23;
    v21 = __Block_byref_object_dispose__23;
    v22 = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__NTKPigmentEditOptionStore_pigmentSetForDomain_bundle___block_invoke;
    v14[3] = &unk_278780498;
    v16 = &v17;
    v14[4] = self;
    v8 = v6;
    v15 = v8;
    _executeWithLock(&self->_lock, v14);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = 0;
    }

    else
    {
      v10 = v18[5];
      if (!v10)
      {
        v11 = [(NTKPigmentEditOptionStore *)self _loadPigmentSetForDomain:v8 bundle:v7];
        v12 = v18[5];
        v18[5] = v11;

        v10 = v18[5];
      }

      v9 = v10;
    }

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __56__NTKPigmentEditOptionStore_pigmentSetForDomain_bundle___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 40) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)colorOptionsForDomain:(id)a3 bundle:(id)a4 slot:(id)a5
{
  v8 = a5;
  v9 = [(NTKPigmentEditOptionStore *)self pigmentSetForDomain:a3 bundle:a4];
  v10 = [v9 collectionForSlot:v8];

  v11 = [v10 allItems];

  return v11;
}

- (NSDictionary)sharedCollections
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__23;
  v9 = __Block_byref_object_dispose__23;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__NTKPigmentEditOptionStore_sharedCollections__block_invoke;
  v4[3] = &unk_278780D18;
  v4[4] = self;
  v4[5] = &v5;
  _executeWithLock(&self->_lock, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __46__NTKPigmentEditOptionStore_sharedCollections__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _threadunsafe_sharedCollections];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_threadunsafe_sharedCollections
{
  sharedCollections = self->_sharedCollections;
  if (!sharedCollections)
  {
    v4 = [(NTKPigmentPersistentStorageController *)self->_storageController sharedCollections];
    if (!v4)
    {
      v5 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(NTKPigmentEditOptionStore *)v5 _threadunsafe_sharedCollections];
      }

      v6 = [(NTKPigmentEditOptionStore *)self plistLoader];
      v4 = [v6 loadSharedCollections];
    }

    v7 = self->_sharedCollections;
    self->_sharedCollections = v4;

    sharedCollections = self->_sharedCollections;
  }

  return sharedCollections;
}

- (id)_loadPigmentSetForDomain:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = [(NTKPigmentEditOptionStore *)self _companion_loadPigmentSetForDomain:v6 bundle:a4];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__NTKPigmentEditOptionStore__loadPigmentSetForDomain_bundle___block_invoke;
  v13[3] = &unk_27877E238;
  v8 = v7;
  v14 = v8;
  v15 = self;
  v16 = v6;
  v9 = v6;
  _executeWithLock(&self->_lock, v13);
  v10 = v16;
  v11 = v8;

  return v8;
}

void __61__NTKPigmentEditOptionStore__loadPigmentSetForDomain_bundle___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(v2 + 40);
  if (a1[4])
  {
    v4 = *(v2 + 40);

    [v4 setObject:? forKey:?];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB68] null];
    [v3 setObject:v5 forKey:a1[6]];
  }
}

- (id)_watch_loadPigmentSetForDomain:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NTKPigmentEditOptionStore *)self sharedCollections];
  v9 = [(NTKPigmentPersistentStorageController *)self->_storageController facePigmentSetForDomain:v6 sharedCollections:v8];
  if (!v9)
  {
    v10 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [NTKPigmentEditOptionStore _watch_loadPigmentSetForDomain:v6 bundle:v10];
    }

    v9 = [(NTKPlistPigmentEditOptionLoader *)self->_plistLoader parseColorOptionsForDomain:v6 bundle:v7 sharedCollections:v8];
    if (self->_persistenceCacheEnabled)
    {
      privateQueue = self->_privateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __67__NTKPigmentEditOptionStore__watch_loadPigmentSetForDomain_bundle___block_invoke;
      block[3] = &unk_27877E238;
      v14 = v6;
      v15 = self;
      v9 = v9;
      v16 = v9;
      dispatch_async(privateQueue, block);
    }
  }

  return v9;
}

uint64_t __67__NTKPigmentEditOptionStore__watch_loadPigmentSetForDomain_bundle___block_invoke(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __67__NTKPigmentEditOptionStore__watch_loadPigmentSetForDomain_bundle___block_invoke_cold_1(a1, v2);
  }

  [*(a1 + 40) _autoSelectPigmentsFromFacePigmentSet:*(a1 + 48)];
  return [*(*(a1 + 40) + 64) persistFacePigmentSet:*(a1 + 48) deviceUUID:0];
}

- (id)_companion_loadPigmentSetForDomain:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NTKPigmentEditOptionStore *)self sharedCollections];
  v9 = [(NTKPigmentPersistentStorageController *)self->_storageController facePigmentSetForDomain:v6 sharedCollections:v8];
  v10 = v9;
  if (!v9 || ![v9 numberOfItemsForAllSlots])
  {
    if ([(CLKDevice *)self->_device isPaired])
    {
      v11 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [NTKPigmentEditOptionStore _companion_loadPigmentSetForDomain:v6 bundle:v11];
      }
    }

    v12 = [(NTKPlistPigmentEditOptionLoader *)self->_plistLoader parseColorOptionsForDomain:v6 bundle:v7 sharedCollections:v8];

    v10 = v12;
  }

  return v10;
}

- (void)_autoSelectPigmentsFromFacePigmentSet:(id)a3
{
  v7 = a3;
  if (CLKIsClockFaceApp())
  {
    v4 = [v7 pigmentsFromMostRecentAddableCollectionForSlot:0];
    preferenceManager = self->_preferenceManager;
    v6 = [v7 domain];
    [(NTKPigmentPreferenceManager *)preferenceManager setAutoSelectedPigments:v4 forCollectionName:v6];
  }
}

- (void)_autoSelectPigmentsForSharedCollections:(id)a3
{
  v4 = a3;
  if (CLKIsClockFaceApp())
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __69__NTKPigmentEditOptionStore__autoSelectPigmentsForSharedCollections___block_invoke;
    v5[3] = &unk_278781A98;
    v5[4] = self;
    [v4 enumerateKeysAndObjectsUsingBlock:v5];
  }
}

void __69__NTKPigmentEditOptionStore__autoSelectPigmentsForSharedCollections___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if ([v7 isRootCollection])
  {
    v4 = [v7 pigmentsFromMostRecentAddableCollection];
    v5 = *(*(a1 + 32) + 72);
    v6 = [v7 collectionName];
    [v5 setAutoSelectedPigments:v4 forCollectionName:v6];
  }
}

- (id)defaultColorOptionForDomain:(id)a3 bundle:(id)a4 slot:(id)a5
{
  v8 = a5;
  v9 = [(NTKPigmentEditOptionStore *)self pigmentSetForDomain:a3 bundle:a4];
  v10 = [v9 collectionForSlot:v8];

  v11 = [v10 defaultOption];

  return v11;
}

- (unint64_t)numberOfOptionsForDomain:(id)a3 bundle:(id)a4 slot:(id)a5
{
  v8 = a5;
  v9 = [(NTKPigmentEditOptionStore *)self pigmentSetForDomain:a3 bundle:a4];
  v10 = [v9 collectionForSlot:v8];

  v11 = [v10 count];
  return v11;
}

- (unint64_t)indexOfOption:(id)a3 domain:(id)a4 bundle:(id)a5 slot:(id)a6
{
  v10 = a3;
  v11 = [(NTKPigmentEditOptionStore *)self colorOptionsForDomain:a4 bundle:a5 slot:a6];
  v12 = [v11 indexOfObject:v10];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    +[NTKPigmentEditOption defaultFraction];
    v13 = [v10 copyWithColorFraction:?];
    v12 = [v11 indexOfObject:v13];
  }

  return v12;
}

- (id)optionAtIndex:(unint64_t)a3 domain:(id)a4 bundle:(id)a5 slot:(id)a6
{
  v7 = [(NTKPigmentEditOptionStore *)self colorOptionsForDomain:a4 bundle:a5 slot:a6];
  if ([v7 count] <= a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v7 objectAtIndex:a3];
  }

  return v8;
}

- (id)defaultGalleryColorsForDomain:(id)a3 bundle:(id)a4
{
  v4 = [(NTKPigmentEditOptionStore *)self pigmentSetForDomain:a3 bundle:a4];
  v5 = [v4 defaultGalleryColors];

  return v5;
}

- (BOOL)hasAddableCollectionsForDomain:(id)a3 bundle:(id)a4 slot:(id)a5
{
  v8 = a5;
  v9 = [(NTKPigmentEditOptionStore *)self pigmentSetForDomain:a3 bundle:a4];
  v10 = [v9 collectionForSlot:v8];

  LOBYTE(self) = [v10 hasAddableCollection];
  return self;
}

- (id)fulfilledOptionForOption:(id)a3 domain:(id)a4 bundle:(id)a5 slot:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v10 isFromStore])
  {
    v14 = v10;
  }

  else
  {
    v15 = [(NTKPigmentEditOptionStore *)self indexOfOption:v10 domain:v11 bundle:v12 slot:v13];
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NTKPigmentEditOptionStore *)self _normalizeOptionForOption:v10 domain:v11 bundle:v12 slot:v13];
    }

    else
    {
      [(NTKPigmentEditOptionStore *)self optionAtIndex:v15 domain:v11 bundle:v12 slot:v13];
    }
    v16 = ;
    v14 = v16;
    if (!v16 || ([v16 colorFraction], v18 = v17, objc_msgSend(v10, "colorFraction"), v18 != v19) && (objc_msgSend(v10, "colorFraction"), v20 = objc_msgSend(v14, "copyWithColorFraction:"), v14, (v14 = v20) == 0))
    {
      v21 = [(NTKPigmentEditOptionStore *)self pigmentSetForDomain:v11 bundle:v12];
      v22 = [v21 collectionForSlot:v13];

      v23 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [NTKPigmentEditOptionStore fulfilledOptionForOption:v10 domain:v22 bundle:v23 slot:?];
      }

      v14 = v10;
    }
  }

  return v14;
}

- (id)migratedOptionForInvalidOption:(id)a3 domain:(id)a4 bundle:(id)a5 slot:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(NTKPigmentEditOptionStore *)self pigmentSetForDomain:v11 bundle:a5];
  v14 = [v13 collectionForSlot:v12];

  v15 = [(NTKPigmentEditOptionStore *)self _migratedOptionForInvalidOption:v10 collection:v14];
  v16 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  v17 = v16;
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138543874;
      v23 = v10;
      v24 = 2114;
      v25 = v15;
      v26 = 2114;
      v27 = v11;
      _os_log_impl(&dword_22D9C5000, v17, OS_LOG_TYPE_DEFAULT, "#store Pigment option migrated from %{public}@ to %{public}@ - domain %{public}@", &v22, 0x20u);
    }
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v19 = [v14 allItems];
    v20 = [v14 config];
    v21 = [v20 migration];
    v22 = 138544130;
    v23 = v10;
    v24 = 2114;
    v25 = v11;
    v26 = 2114;
    v27 = v19;
    v28 = 2114;
    v29 = v21;
    _os_log_error_impl(&dword_22D9C5000, v17, OS_LOG_TYPE_ERROR, "#store Failed to migrate pigment option %{public}@ - domain %{public}@ - items:%{public}@ - migration: %{public}@", &v22, 0x2Au);
  }

  return v15;
}

- (id)_migratedOptionForInvalidOption:(id)a3 collection:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 migration];
  v8 = [v5 identifier];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9 || ([v5 optionName], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "objectForKeyedSubscript:", v10), v9 = objc_claimAutoreleasedReturnValue(), v10, v9) || (v33 = 0, objc_msgSend(v5, "extractEffectiveCollectionName:effectiveOptionName:", 0, &v33), v11 = v33, objc_msgSend(v7, "objectForKeyedSubscript:", v11), v9 = objc_claimAutoreleasedReturnValue(), v11, v9))
  {
    v31 = 0;
    v32 = 0;
    [NTKPigmentEditOption effectiveNamesFromName:v9 effectiveCollectionName:&v32 effectiveOptionName:&v31];
    v12 = v32;
    v13 = v31;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = [v6 allItems];
    v15 = [v14 countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (v15)
    {
      v22 = v7;
      v23 = v6;
      v24 = v5;
      v16 = *v28;
      while (2)
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v27 + 1) + 8 * i);
          v25 = 0;
          v26 = 0;
          [v18 extractEffectiveCollectionName:&v26 effectiveOptionName:&v25];
          v19 = v26;
          v20 = v25;
          if ((!v12 || [v19 isEqualToString:v12]) && objc_msgSend(v20, "isEqualToString:", v13))
          {
            v15 = v18;

            goto LABEL_16;
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v27 objects:v34 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }

LABEL_16:
      v6 = v23;
      v5 = v24;
      v7 = v22;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_normalizeOptionForOption:(id)a3 domain:(id)a4 bundle:(id)a5 slot:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = [(NTKPigmentEditOptionStore *)self pigmentSetForDomain:a4 bundle:a5];
  v13 = [v12 collectionForSlot:v10];

  v14 = [v11 fullname];

  v15 = [v13 pigmentWithFullname:v14];

  return v15;
}

- (void)addListener:(id)a3 forDomain:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__NTKPigmentEditOptionStore_addListener_forDomain___block_invoke;
  v11[3] = &unk_27877E238;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"AllDomains";
  }

  v11[4] = self;
  v12 = v8;
  v13 = v6;
  v9 = v6;
  v10 = v8;
  _executeWithLock(&self->_lock, v11);
}

void __51__NTKPigmentEditOptionStore_addListener_forDomain___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  if (!v2)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [*(a1[4] + 32) setObject:v3 forKeyedSubscript:a1[5]];
    v2 = v3;
  }

  v4 = v2;
  [v2 addObject:a1[6]];
}

- (void)removeListener:(id)a3 forDomain:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__NTKPigmentEditOptionStore_removeListener_forDomain___block_invoke;
  v11[3] = &unk_27877E238;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"AllDomains";
  }

  v11[4] = self;
  v12 = v8;
  v13 = v6;
  v9 = v6;
  v10 = v8;
  _executeWithLock(&self->_lock, v11);
}

void __54__NTKPigmentEditOptionStore_removeListener_forDomain___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
  [v2 removeObject:*(a1 + 48)];
  if (![v2 count])
  {
    v3 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      v9 = 138543362;
      v10 = v4;
      _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_INFO, "#store No more listeners for domain  %{public}@. Purging memory cache.", &v9, 0xCu);
    }

    v5 = [*(a1 + 32) cache];
    [v5 removeObjectForKey:*(a1 + 40)];
  }

  if (![*(*(a1 + 32) + 32) count])
  {
    v6 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_INFO, "#store No more listeners. Purging shared collections.", &v9, 2u);
    }

    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    *(v7 + 16) = 0;
  }
}

- (void)colorBundleContentChanged
{
  v3 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "#store Color bundles updated. Reseting Pigment Store cache", v4, 2u);
  }

  [(NTKPigmentEditOptionStore *)self resetCacheAndNotifyListeners];
}

- (void)faceBundlesUpdated
{
  v3 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "#store Face bundles updated. Reseting Pigment Store cache", v4, 2u);
  }

  [(NTKPigmentEditOptionStore *)self resetCacheAndNotifyListeners];
}

- (void)handleActiveDeviceChangedNotification
{
  v3 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "#store Active device chanced. Reseting Pigment Store cache", v4, 2u);
  }

  [(NTKPigmentPreferenceManager *)self->_preferenceManager handlePairedDeviceChanged];
  [(NTKPigmentEditOptionStore *)self resetCacheAndNotifyListeners];
}

- (void)resetCacheAndNotifyListeners
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__NTKPigmentEditOptionStore_resetCacheAndNotifyListeners__block_invoke;
  v3[3] = &unk_27877DB10;
  v3[4] = self;
  _executeWithLock(&self->_lock, v3);
  [(NTKPigmentEditOptionStore *)self notifyListenersStoreContentChanged];
}

- (void)_threadunsafe_resetCache
{
  [(NSCache *)self->_cache removeAllObjects];
  [(NTKPigmentPersistentStorageController *)self->_storageController resetCache];
  sharedCollections = self->_sharedCollections;
  self->_sharedCollections = 0;

  self->_prewarmed = 0;
}

- (void)notifyListenersStoreContentChanged
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__NTKPigmentEditOptionStore_notifyListenersStoreContentChanged__block_invoke;
  v11[3] = &unk_27877E238;
  v11[4] = self;
  v12 = v3;
  v5 = v4;
  v13 = v5;
  v6 = v3;
  _executeWithLock(&self->_lock, v11);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__NTKPigmentEditOptionStore_notifyListenersStoreContentChanged__block_invoke_3;
  v8[3] = &unk_278781B10;
  v9 = v5;
  v10 = self;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v8];
}

void __63__NTKPigmentEditOptionStore_notifyListenersStoreContentChanged__block_invoke(id *a1)
{
  v2 = [a1[4] listenersByDomain];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__NTKPigmentEditOptionStore_notifyListenersStoreContentChanged__block_invoke_2;
  v3[3] = &unk_278781AE8;
  v4 = a1[5];
  v5 = a1[6];
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void __63__NTKPigmentEditOptionStore_notifyListenersStoreContentChanged__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [a3 objectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(a1 + 32) addObject:*(*(&v11 + 1) + 8 * v10)];
        [*(a1 + 40) addObject:v5];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

void __63__NTKPigmentEditOptionStore_notifyListenersStoreContentChanged__block_invoke_3(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = a2;
  if ([*(a1 + 32) count] > a3)
  {
    v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    if ([v5 isEqualToString:@"AllDomains"])
    {

      v5 = 0;
    }

    [v6 colorEditOptionStore:*(a1 + 40) didChangeForDomain:v5];
  }
}

- (void)sensitiveUIStateChanged
{
  [(NTKPigmentEditOptionStore *)self deletePersistenceLayerCache];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__NTKPigmentEditOptionStore_sensitiveUIStateChanged__block_invoke;
  v3[3] = &unk_27877DB10;
  v3[4] = self;
  _executeWithLock(&self->_lock, v3);
  [(NTKPigmentEditOptionStore *)self resetCacheAndNotifyListeners];
}

void __52__NTKPigmentEditOptionStore_sensitiveUIStateChanged__block_invoke(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_INFO, "#store Sensitive UI changed, resetting cache", v6, 2u);
  }

  v3 = [MEMORY[0x277CBBB70] sharedMonitor];
  v4 = [v3 isSensitiveUIEnabled];
  v5 = [*(a1 + 32) plistLoader];
  [v5 setIgnoreSensitiveUIItems:v4 ^ 1u];
}

- (void)_watch_loadPigmentSetForDomain:(uint64_t)a1 bundle:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_DEBUG, "#store Failed to loaded pigment set for domain %{public}@ from persistence layer cache", &v2, 0xCu);
}

void __67__NTKPigmentEditOptionStore__watch_loadPigmentSetForDomain_bundle___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_DEBUG, "#store Persisting pigment set for domain %{public}@", &v3, 0xCu);
}

- (void)_companion_loadPigmentSetForDomain:(uint64_t)a1 bundle:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "#store synced color data not found for domain %{public}@. Loading from color.plist file", &v2, 0xCu);
}

- (void)fulfilledOptionForOption:(os_log_t)log domain:bundle:slot:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_22D9C5000, log, OS_LOG_TYPE_ERROR, "#store Could not fulfill pigment. It may fail to localize its name. Returning original unfulfilled pigment: %{public}@ - Store Collection: %{public}@", &v3, 0x16u);
}

@end