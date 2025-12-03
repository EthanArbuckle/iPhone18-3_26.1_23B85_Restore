@interface NTKBundleComplicationMigrationCompanionDevicePrewarmer
+ (void)run;
- (NTKBundleComplicationMigrationCompanionDevicePrewarmer)init;
- (id)_nextDeviceToPrewarm;
- (unint64_t)_failureCountForDevice:(id)device;
- (void)_handlePairedNotification;
- (void)_handleUnpairedNotification;
- (void)_incrementFailureCountForDevice:(id)device;
- (void)_purgeCaches;
- (void)_queue_prewarmIfNeeded;
@end

@implementation NTKBundleComplicationMigrationCompanionDevicePrewarmer

+ (void)run
{
  if (run_onceToken != -1)
  {
    +[NTKBundleComplicationMigrationCompanionDevicePrewarmer run];
  }
}

void __61__NTKBundleComplicationMigrationCompanionDevicePrewarmer_run__block_invoke()
{
  v0 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_22D9C5000, v0, OS_LOG_TYPE_DEFAULT, "CompanionDevicePrewarmer: Starting", v3, 2u);
  }

  v1 = objc_opt_new();
  v2 = run_prewarmer;
  run_prewarmer = v1;
}

- (NTKBundleComplicationMigrationCompanionDevicePrewarmer)init
{
  v14.receiver = self;
  v14.super_class = NTKBundleComplicationMigrationCompanionDevicePrewarmer;
  v2 = [(NTKBundleComplicationMigrationCompanionDevicePrewarmer *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.NanoTimeKit.NTKBundleComplicationMigrationCompanionDevicePrewarmer", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_opt_new();
    queue_failureCount = v2->_queue_failureCount;
    v2->_queue_failureCount = v6;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handlePairedNotification name:*MEMORY[0x277D37C18] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__handleUnpairedNotification name:*MEMORY[0x277D37C20] object:0];

    v10 = v2->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__NTKBundleComplicationMigrationCompanionDevicePrewarmer_init__block_invoke;
    block[3] = &unk_27877DB10;
    v13 = v2;
    dispatch_async(v10, block);
  }

  return v2;
}

uint64_t __62__NTKBundleComplicationMigrationCompanionDevicePrewarmer_init__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _purgeCaches];
  v2 = *(a1 + 32);

  return [v2 _queue_prewarmIfNeeded];
}

- (void)_queue_prewarmIfNeeded
{
  v12 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_queue_servicing)
  {
    _nextDeviceToPrewarm = [(NTKBundleComplicationMigrationCompanionDevicePrewarmer *)self _nextDeviceToPrewarm];
    if (_nextDeviceToPrewarm)
    {
      self->_queue_servicing = 1;
      v4 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        pairingID = [_nextDeviceToPrewarm pairingID];
        *buf = 138412290;
        v11 = pairingID;
        _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "CompanionDevicePrewarmer: Prewarming %@ migration lookup", buf, 0xCu);
      }

      v6 = +[NTKBundleComplicationMigrationProvider cachedInstance];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __80__NTKBundleComplicationMigrationCompanionDevicePrewarmer__queue_prewarmIfNeeded__block_invoke;
      v8[3] = &unk_278786660;
      v8[4] = self;
      v9 = _nextDeviceToPrewarm;
      [v6 ensureTypeLookupForDevice:v9 completion:v8];
    }

    else
    {
      v7 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "CompanionDevicePrewarmer: Nothing to service", buf, 2u);
      }
    }
  }
}

void __80__NTKBundleComplicationMigrationCompanionDevicePrewarmer__queue_prewarmIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__NTKBundleComplicationMigrationCompanionDevicePrewarmer__queue_prewarmIfNeeded__block_invoke_2;
  block[3] = &unk_27877E238;
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t __80__NTKBundleComplicationMigrationCompanionDevicePrewarmer__queue_prewarmIfNeeded__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = +[NTKBundleComplicationMigrationProvider cachedInstance];
  v3 = [v2 hasTypeLookupForDevice:*(a1 + 32)];

  v4 = *(a1 + 40);
  v5 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
  v6 = v5;
  if (v4 || (v3 & 1) == 0)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __80__NTKBundleComplicationMigrationCompanionDevicePrewarmer__queue_prewarmIfNeeded__block_invoke_2_cold_1((a1 + 32), (a1 + 40), v6);
    }

    [*(a1 + 48) _incrementFailureCountForDevice:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) pairingID];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "CompanionDevicePrewarmer: Finished prewarming %@", &v9, 0xCu);
    }
  }

  *(*(a1 + 48) + 24) = 0;
  return [*(a1 + 48) _queue_prewarmIfNeeded];
}

- (id)_nextDeviceToPrewarm
{
  v24 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  mEMORY[0x277D37B50] = [MEMORY[0x277D37B50] sharedInstance];
  v17 = objc_opt_new();
  devices = [mEMORY[0x277D37B50] devices];
  paired = [devices paired];
  v5 = [paired all];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x277CBBAE8] deviceForPDRDevice:*(*(&v19 + 1) + 8 * i)];
        v12 = +[NTKBundleComplicationMigrationProvider cachedInstance];
        v13 = [v12 hasTypeLookupForDevice:v11];

        if ((v13 & 1) == 0 && [(NTKBundleComplicationMigrationCompanionDevicePrewarmer *)self _failureCountForDevice:v11]<= 2)
        {
          [v17 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  if ([v17 count])
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __78__NTKBundleComplicationMigrationCompanionDevicePrewarmer__nextDeviceToPrewarm__block_invoke;
    v18[3] = &unk_278786688;
    v18[4] = self;
    [v17 sortUsingComparator:v18];
    firstObject = [v17 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

uint64_t __78__NTKBundleComplicationMigrationCompanionDevicePrewarmer__nextDeviceToPrewarm__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isBridgeActive] && !objc_msgSend(v6, "isBridgeActive"))
  {
    v7 = -1;
  }

  else if (([v5 isBridgeActive] & 1) != 0 || (objc_msgSend(v6, "isBridgeActive") & 1) == 0)
  {
    v8 = [*(a1 + 32) _failureCountForDevice:v5];
    if (v8 >= [*(a1 + 32) _failureCountForDevice:v6])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (unint64_t)_failureCountForDevice:(id)device
{
  queue = self->_queue;
  deviceCopy = device;
  dispatch_assert_queue_V2(queue);
  queue_failureCount = self->_queue_failureCount;
  pairingID = [deviceCopy pairingID];

  v8 = [(NSMutableDictionary *)queue_failureCount objectForKey:pairingID];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)_incrementFailureCountForDevice:(id)device
{
  queue = self->_queue;
  deviceCopy = device;
  dispatch_assert_queue_V2(queue);
  queue_failureCount = self->_queue_failureCount;
  pairingID = [deviceCopy pairingID];
  v8 = [(NSMutableDictionary *)queue_failureCount objectForKey:pairingID];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue + 1];
  v10 = self->_queue_failureCount;
  pairingID2 = [deviceCopy pairingID];

  [(NSMutableDictionary *)v10 setObject:v12 forKeyedSubscript:pairingID2];
}

- (void)_purgeCaches
{
  v54 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  mEMORY[0x277D37B50] = [MEMORY[0x277D37B50] sharedInstance];
  devices = [mEMORY[0x277D37B50] devices];
  paired = [devices paired];
  v6 = [paired all];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v45;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(v7);
        }

        pairingID = [*(*(&v44 + 1) + 8 * i) pairingID];
        uUIDString = [pairingID UUIDString];
        [v2 addObject:uUIDString];
      }

      v9 = [v7 countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v9);
  }

  v35 = v7;

  v14 = 0x277CCA000uLL;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v16 = NTKBundleComplicationMigrationServiceLookupDirectory();
  v17 = [defaultManager enumeratorAtPath:v16];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v41;
    v36 = v18;
    v37 = v2;
    do
    {
      v22 = 0;
      do
      {
        if (*v41 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v40 + 1) + 8 * v22);
        v39 = 0;
        defaultManager2 = [*(v14 + 2560) defaultManager];
        [defaultManager2 fileExistsAtPath:v23 isDirectory:&v39];

        if ((v39 & 1) == 0)
        {
          lastPathComponent = [v23 lastPathComponent];
          stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

          if (([v2 containsObject:stringByDeletingPathExtension] & 1) == 0)
          {
            v27 = NTKBundleComplicationMigrationServiceLookupDirectory();
            v28 = [v27 stringByAppendingPathComponent:v23];

            v29 = v14;
            defaultManager3 = [*(v14 + 2560) defaultManager];
            v38 = 0;
            v31 = [defaultManager3 removeItemAtPath:v28 error:&v38];
            v32 = v38;

            v33 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
            v34 = v33;
            if (v31)
            {
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v49 = v23;
                _os_log_impl(&dword_22D9C5000, v34, OS_LOG_TYPE_DEFAULT, "CompanionDevicePrewarmer: Purged %@", buf, 0xCu);
              }
            }

            else if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v49 = v23;
              v50 = 2112;
              v51 = v32;
              _os_log_error_impl(&dword_22D9C5000, v34, OS_LOG_TYPE_ERROR, "CompanionDevicePrewarmer: Error purging %@: %@", buf, 0x16u);
            }

            v14 = v29;
            v18 = v36;
            v2 = v37;
          }
        }

        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v20);
  }
}

- (void)_handlePairedNotification
{
  v3 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "CompanionDevicePrewarmer: Received paired notification", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__NTKBundleComplicationMigrationCompanionDevicePrewarmer__handlePairedNotification__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_handleUnpairedNotification
{
  v3 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "CompanionDevicePrewarmer: Received unpaired notification", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__NTKBundleComplicationMigrationCompanionDevicePrewarmer__handleUnpairedNotification__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(queue, block);
}

void __80__NTKBundleComplicationMigrationCompanionDevicePrewarmer__queue_prewarmIfNeeded__block_invoke_2_cold_1(id *a1, uint64_t *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [*a1 pairingID];
  v6 = *a2;
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_22D9C5000, a3, OS_LOG_TYPE_ERROR, "CompanionDevicePrewarmer: Error prewarming for %@: %@", &v7, 0x16u);
}

@end