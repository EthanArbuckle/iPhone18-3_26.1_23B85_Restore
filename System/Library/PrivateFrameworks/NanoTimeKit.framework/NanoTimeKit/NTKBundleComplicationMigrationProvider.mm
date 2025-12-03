@interface NTKBundleComplicationMigrationProvider
+ (NTKBundleComplicationMigrationProvider)cachedInstance;
- (BOOL)hasTypeLookupForDevice:(id)device;
- (NTKBundleComplicationMigrationProvider)init;
- (id)_cachedLookupForDevice:(id)device;
- (id)_loadMigrationCacheForDevice:(id)device;
- (id)migratedComplicationFromType:(unint64_t)type family:(int64_t)family device:(id)device;
- (void)_fetchTypeLookupForDevice:(id)device completion:(id)completion;
- (void)_handleDeviceDidUpdate:(id)update;
- (void)_regenerateTypeLookupForDevice:(id)device completion:(id)completion;
- (void)ensureTypeLookupForDevice:(id)device completion:(id)completion;
- (void)serviceRequest:(id)request completion:(id)completion;
@end

@implementation NTKBundleComplicationMigrationProvider

+ (NTKBundleComplicationMigrationProvider)cachedInstance
{
  os_unfair_lock_lock(&cachedInstance__lock);
  v2 = cachedInstance__instance;
  if (!v2)
  {
    v2 = objc_alloc_init(NTKBundleComplicationMigrationProvider);
    v3 = cachedInstance__instance;
    cachedInstance__instance = v2;
  }

  os_unfair_lock_unlock(&cachedInstance__lock);

  return v2;
}

- (NTKBundleComplicationMigrationProvider)init
{
  v8.receiver = self;
  v8.super_class = NTKBundleComplicationMigrationProvider;
  v2 = [(NTKBundleComplicationMigrationProvider *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_cachesLock._os_unfair_lock_opaque = 0;
    v4 = objc_opt_new();
    typeMigrationCaches = v3->_typeMigrationCaches;
    v3->_typeMigrationCaches = v4;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__handleDeviceDidUpdate_ name:*MEMORY[0x277CBB640] object:0];
  }

  return v3;
}

- (void)serviceRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v7 = +[NTKBundleComplicationMigrationServiceClient sharedInstance];
  [v7 serviceRequest:requestCopy completion:completionCopy];
}

- (void)ensureTypeLookupForDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  v8 = [(NTKBundleComplicationMigrationProvider *)self _loadMigrationCacheForDevice:deviceCopy];
  if (v8)
  {
    v9 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NTKBundleComplicationMigrationProvider ensureTypeLookupForDevice:v8 completion:v9];
    }
  }

  v10 = [(NTKBundleComplicationMigrationProvider *)self _cachedLookupForDevice:deviceCopy];

  if (v10)
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v11 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "Requesting type lookup...", v12, 2u);
    }

    [(NTKBundleComplicationMigrationProvider *)self _fetchTypeLookupForDevice:deviceCopy completion:completionCopy];
  }
}

- (id)migratedComplicationFromType:(unint64_t)type family:(int64_t)family device:(id)device
{
  deviceCopy = device;
  v9 = [(NTKBundleComplicationMigrationProvider *)self _loadMigrationCacheForDevice:deviceCopy];
  v10 = [(NTKBundleComplicationMigrationProvider *)self _cachedLookupForDevice:deviceCopy];

  if (v10)
  {
    v11 = [[NTKBundleComplicationMigrationTypeLookupKey alloc] initWithComplicationType:type family:family];
    v12 = [v10 objectForKeyedSubscript:v11];
  }

  else
  {
    v13 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [NTKBundleComplicationMigrationProvider migratedComplicationFromType:v13 family:? device:?];
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)hasTypeLookupForDevice:(id)device
{
  deviceCopy = device;
  v5 = [(NTKBundleComplicationMigrationProvider *)self _cachedLookupForDevice:deviceCopy];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(NTKBundleComplicationMigrationProvider *)self _loadMigrationCacheForDevice:deviceCopy];
    v8 = [(NTKBundleComplicationMigrationProvider *)self _cachedLookupForDevice:deviceCopy];
    v6 = v8 != 0;
  }

  return v6;
}

- (id)_cachedLookupForDevice:(id)device
{
  deviceCopy = device;
  os_unfair_lock_lock(&self->_cachesLock);
  typeMigrationCaches = self->_typeMigrationCaches;
  descriptor = [deviceCopy descriptor];

  v7 = [(NSMutableDictionary *)typeMigrationCaches objectForKeyedSubscript:descriptor];

  os_unfair_lock_unlock(&self->_cachesLock);

  return v7;
}

- (id)_loadMigrationCacheForDevice:(id)device
{
  v42 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = [(NTKBundleComplicationMigrationProvider *)self _cachedLookupForDevice:deviceCopy];

  if (v5)
  {
    v6 = 0;
    goto LABEL_34;
  }

  v7 = NTKBundleComplicationMigrationServiceLookupPathForDevice(deviceCopy);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [defaultManager fileExistsAtPath:v7];

  if (v9)
  {
    v10 = NTKBundleComplicationMigrationServiceGetLookupVersion(deviceCopy);
    if (v10)
    {
      v11 = NTKBundleComplicationMigrationCurrentVersion();
      v12 = [v10 isEqualToString:v11];

      if (v12)
      {
        v39 = 0;
        v13 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v7 options:0 error:&v39];
        v14 = v39;
        v15 = v14;
        if (v13)
        {
          v16 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
          v17 = os_signpost_id_generate(v16);
          v18 = v16;
          v19 = v18;
          if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_22D9C5000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "load migration cache", "", buf, 2u);
          }

          v37 = v13;
          v38 = v15;
          v20 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v13 error:&v38];
          v21 = v38;

          v22 = v19;
          v23 = v22;
          if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_22D9C5000, v23, OS_SIGNPOST_INTERVAL_END, v17, "load migration cache", "", buf, 2u);
          }

          v24 = v20;
          if (v20)
          {
            v36 = v23;
            buildVersion = [v20 buildVersion];
            v26 = NTKBundleComplicationMigrationCurrentVersion();
            v27 = [buildVersion isEqual:v26];

            v13 = v37;
            if (v27)
            {
              os_unfair_lock_lock(&self->_cachesLock);
              dictionary = [v24 dictionary];
              typeMigrationCaches = self->_typeMigrationCaches;
              descriptor = [deviceCopy descriptor];
              [(NSMutableDictionary *)typeMigrationCaches setObject:dictionary forKeyedSubscript:descriptor];

              os_unfair_lock_unlock(&self->_cachesLock);
              v31 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                dictionary2 = [v24 dictionary];
                v33 = [dictionary2 count];
                *buf = 134217984;
                v41 = v33;
                _os_log_impl(&dword_22D9C5000, v31, OS_LOG_TYPE_DEFAULT, "Loaded type migration cache with %lu entries", buf, 0xCu);
              }
            }

            else
            {
              v31 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_22D9C5000, v31, OS_LOG_TYPE_DEFAULT, "Loaded lookup from a different version", buf, 2u);
              }
            }

            v6 = 0;
            v23 = v36;
          }

          else
          {
            v34 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
            v13 = v37;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_22D9C5000, v34, OS_LOG_TYPE_DEFAULT, "Failed to decode type lookup container", buf, 2u);
            }

            v6 = v21;
          }
        }

        else
        {
          v21 = v14;
          v6 = v21;
        }

        goto LABEL_32;
      }

      v21 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v41 = "[NTKBundleComplicationMigrationProvider _loadMigrationCacheForDevice:]";
        _os_log_impl(&dword_22D9C5000, v21, OS_LOG_TYPE_DEFAULT, "%s: xattr build version mismatched, not loading cache", buf, 0xCu);
      }
    }

    else
    {
      v21 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [NTKBundleComplicationMigrationProvider _loadMigrationCacheForDevice:v21];
      }
    }

    v6 = 0;
LABEL_32:

    goto LABEL_33;
  }

  v6 = 0;
LABEL_33:

LABEL_34:

  return v6;
}

- (void)_fetchTypeLookupForDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__NTKBundleComplicationMigrationProvider__fetchTypeLookupForDevice_completion___block_invoke;
  aBlock[3] = &unk_278782A50;
  v8 = completionCopy;
  v19 = v8;
  v9 = _Block_copy(aBlock);
  objc_initWeak(&location, self);
  v10 = +[NTKBundleComplicationMigrationServiceClient sharedInstance];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__NTKBundleComplicationMigrationProvider__fetchTypeLookupForDevice_completion___block_invoke_2;
  v13[3] = &unk_278783060;
  v11 = v9;
  v15 = v11;
  objc_copyWeak(&v16, &location);
  v12 = deviceCopy;
  v14 = v12;
  [v10 generateTypeLookupForDevice:v12 completion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __79__NTKBundleComplicationMigrationProvider__fetchTypeLookupForDevice_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v5 = [WeakRetained _loadMigrationCacheForDevice:*(a1 + 32)];

    if (v5)
    {
      v6 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        __79__NTKBundleComplicationMigrationProvider__fetchTypeLookupForDevice_completion___block_invoke_2_cold_1(v6);
      }
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)_handleDeviceDidUpdate:(id)update
{
  v12 = *MEMORY[0x277D85DE8];
  object = [update object];
  if (object)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = object;
      v6 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = v5;
        _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "Received device did update capabilities or pairing: %@", buf, 0xCu);
      }

      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __65__NTKBundleComplicationMigrationProvider__handleDeviceDidUpdate___block_invoke;
      v8[3] = &unk_27877E820;
      v9 = v5;
      v7 = v5;
      [(NTKBundleComplicationMigrationProvider *)self _regenerateTypeLookupForDevice:v7 completion:v8];
    }
  }
}

void __65__NTKBundleComplicationMigrationProvider__handleDeviceDidUpdate___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __65__NTKBundleComplicationMigrationProvider__handleDeviceDidUpdate___block_invoke_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "Finished regenerating type lookup for device: %@", &v7, 0xCu);
  }
}

- (void)_regenerateTypeLookupForDevice:(id)device completion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  completionCopy = completion;
  v8 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = deviceCopy;
    _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "Regenerating type lookup for device %@", &v11, 0xCu);
  }

  os_unfair_lock_lock(&self->_cachesLock);
  typeMigrationCaches = self->_typeMigrationCaches;
  descriptor = [deviceCopy descriptor];
  [(NSMutableDictionary *)typeMigrationCaches setObject:0 forKeyedSubscript:descriptor];

  os_unfair_lock_unlock(&self->_cachesLock);
  [(NTKBundleComplicationMigrationProvider *)self _fetchTypeLookupForDevice:deviceCopy completion:completionCopy];
}

- (void)ensureTypeLookupForDevice:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "Error loading type lookup: %@", &v2, 0xCu);
}

- (void)_loadMigrationCacheForDevice:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[NTKBundleComplicationMigrationProvider _loadMigrationCacheForDevice:]";
  _os_log_error_impl(&dword_22D9C5000, log, OS_LOG_TYPE_ERROR, "%s: file exists but no xattr build version found", &v1, 0xCu);
}

void __65__NTKBundleComplicationMigrationProvider__handleDeviceDidUpdate___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_22D9C5000, log, OS_LOG_TYPE_ERROR, "Error regenerating type lookup for device %@: %@", &v4, 0x16u);
}

@end