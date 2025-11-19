@interface NTKSystemAppStateCache
+ (id)sharedInstance;
- (BOOL)isRemovedSystemApp:(id)a3;
- (BOOL)isRestrictedSystemApp:(id)a3;
- (NTKSystemAppStateCache)init;
- (id)_queue_cachedAppStateBundleId;
- (id)_queue_removedSystemApps;
- (id)_queue_restrictedSystemApps;
- (id)removedSystemApps;
- (id)restrictedSystemApps;
- (void)_deviceDidPair;
- (void)_queue_applicationsDidChange:(id)a3 state:(unint64_t)a4;
- (void)_queue_deviceDidPair;
- (void)_queue_initializeRemovedSystemApps;
- (void)_queue_initializeRestrictedSystemApps;
- (void)_queue_tinCanSettingsChanged;
- (void)_queue_verifyStateForAppBundleId:(id)a3;
- (void)_tinCanSettingsChanged;
- (void)applicationInstallsDidStart:(id)a3;
- (void)applicationStateDidChange:(id)a3;
- (void)applicationsDidInstall:(id)a3;
- (void)applicationsDidUninstall:(id)a3;
- (void)dealloc;
- (void)prewarmGizmoDaemon;
@end

@implementation NTKSystemAppStateCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_15 != -1)
  {
    +[NTKSystemAppStateCache sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_4;

  return v3;
}

void __40__NTKSystemAppStateCache_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(NTKSystemAppStateCache);
  v1 = sharedInstance___sharedInstance_4;
  sharedInstance___sharedInstance_4 = v0;
}

- (NTKSystemAppStateCache)init
{
  v10.receiver = self;
  v10.super_class = NTKSystemAppStateCache;
  v2 = [(NTKSystemAppStateCache *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.nanotimekit.systemappstatecache.internalqueue", 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v3;

    v5 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v5 addObserver:v2];

    tinCanBundleID = v2->_tinCanBundleID;
    v2->_tinCanBundleID = @"com.apple.facetime";

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v2 selector:sel__tinCanSettingsChanged name:@"NTKCTinCanSettingsChangedNotification" object:0];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v2 selector:sel__deviceDidPair name:*MEMORY[0x277D37C18] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v3 removeObserver:self];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:@"NTKCTinCanSettingsChangedNotification" object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self name:*MEMORY[0x277D37C18] object:0];

  v6.receiver = self;
  v6.super_class = NTKSystemAppStateCache;
  [(NTKSystemAppStateCache *)&v6 dealloc];
}

- (void)prewarmGizmoDaemon
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__NTKSystemAppStateCache_prewarmGizmoDaemon__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __44__NTKSystemAppStateCache_prewarmGizmoDaemon__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _queue_removedSystemApps];
  v3 = [*(a1 + 32) _queue_restrictedSystemApps];
  v4 = MEMORY[0x277CBEB98];
  v5 = CFPreferencesCopyAppValue(@"SystemAppCacheRemovedApps", @"com.apple.NanoTimeKit.daemon");
  v6 = [v4 setWithArray:v5];

  v7 = MEMORY[0x277CBEB98];
  v8 = CFPreferencesCopyAppValue(@"SystemAppCacheRestrictedApps", @"com.apple.NanoTimeKit.daemon");
  v9 = [v7 setWithArray:v8];

  if ([v2 isEqualToSet:v6])
  {
    if ([v3 isEqualToSet:v9])
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_22D9C5000, v10, OS_LOG_TYPE_DEFAULT, "removed system apps changed while daemon was not running, previous set: %@", &v13, 0xCu);
    }

    CFPreferencesSetAppValue(@"SystemAppCacheRemovedApps", [v2 allObjects], @"com.apple.NanoTimeKit.daemon");
    if ([v3 isEqualToSet:v9])
    {
      goto LABEL_10;
    }
  }

  v11 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v9;
    _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "restricted system apps changed while daemon was not running, previous set: %@", &v13, 0xCu);
  }

  CFPreferencesSetAppValue(@"SystemAppCacheRestrictedApps", [v3 allObjects], @"com.apple.NanoTimeKit.daemon");
LABEL_10:
  CFPreferencesAppSynchronize(@"com.apple.NanoTimeKit.daemon");
  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 postNotificationName:@"NTKSystemAppStateChangedWhileDaemonNotRunningNotification" object:*(a1 + 32)];

LABEL_11:
  xpc_set_event_stream_handler("com.apple.distnoted.matching", 0, &__block_literal_global_320);
}

- (BOOL)isRemovedSystemApp:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__NTKSystemAppStateCache_isRemovedSystemApp___block_invoke;
  block[3] = &unk_278783A68;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

void __45__NTKSystemAppStateCache_isRemovedSystemApp___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_cachedAppStateBundleId];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    [*(a1 + 32) _queue_verifyStateForAppBundleId:*(a1 + 40)];
  }

  v4 = [*(a1 + 32) _queue_removedSystemApps];
  *(*(*(a1 + 48) + 8) + 24) = [v4 containsObject:*(a1 + 40)];
}

- (BOOL)isRestrictedSystemApp:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__NTKSystemAppStateCache_isRestrictedSystemApp___block_invoke;
  block[3] = &unk_278783A68;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

void __48__NTKSystemAppStateCache_isRestrictedSystemApp___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_cachedAppStateBundleId];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    [*(a1 + 32) _queue_verifyStateForAppBundleId:*(a1 + 40)];
  }

  v4 = [*(a1 + 32) _queue_restrictedSystemApps];
  *(*(*(a1 + 48) + 8) + 24) = [v4 containsObject:*(a1 + 40)];
}

- (id)restrictedSystemApps
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__34;
  v10 = __Block_byref_object_dispose__34;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__NTKSystemAppStateCache_restrictedSystemApps__block_invoke;
  v5[3] = &unk_278780D18;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __46__NTKSystemAppStateCache_restrictedSystemApps__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _queue_restrictedSystemApps];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)removedSystemApps
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__34;
  v10 = __Block_byref_object_dispose__34;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__NTKSystemAppStateCache_removedSystemApps__block_invoke;
  v5[3] = &unk_278780D18;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __43__NTKSystemAppStateCache_removedSystemApps__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _queue_removedSystemApps];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)applicationStateDidChange:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__NTKSystemAppStateCache_applicationStateDidChange___block_invoke;
  v7[3] = &unk_27877E438;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)applicationsDidInstall:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__NTKSystemAppStateCache_applicationsDidInstall___block_invoke;
  v7[3] = &unk_27877E438;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)applicationsDidUninstall:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__NTKSystemAppStateCache_applicationsDidUninstall___block_invoke;
  v7[3] = &unk_27877E438;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)applicationInstallsDidStart:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__NTKSystemAppStateCache_applicationInstallsDidStart___block_invoke;
  v7[3] = &unk_27877E438;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)_tinCanSettingsChanged
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__NTKSystemAppStateCache__tinCanSettingsChanged__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)_deviceDidPair
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__NTKSystemAppStateCache__deviceDidPair__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)_queue_initializeRestrictedSystemApps
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  restrictedSystemApps = self->_restrictedSystemApps;
  self->_restrictedSystemApps = v3;

  v5 = NTKBundleIDToComplicationTypesMappingForGloryDevices();
  v6 = [v5 allKeys];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__NTKSystemAppStateCache__queue_initializeRestrictedSystemApps__block_invoke;
  v9[3] = &unk_27877DED0;
  v9[4] = self;
  [v6 enumerateObjectsUsingBlock:v9];
  v7 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = self->_restrictedSystemApps;
    *buf = 138412290;
    v11 = v8;
    _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "restricted system app set initialized: %@", buf, 0xCu);
  }
}

- (void)_queue_initializeRemovedSystemApps
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  removedSystemApps = self->_removedSystemApps;
  self->_removedSystemApps = v3;

  v5 = NTKBundleIDToComplicationTypesMappingForGloryDevices();
  v6 = [v5 allKeys];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__NTKSystemAppStateCache__queue_initializeRemovedSystemApps__block_invoke;
  v9[3] = &unk_27877DED0;
  v9[4] = self;
  [v6 enumerateObjectsUsingBlock:v9];
  v7 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = self->_removedSystemApps;
    *buf = 138412290;
    v11 = v8;
    _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "removed system app set initialized: %@", buf, 0xCu);
  }
}

void __60__NTKSystemAppStateCache__queue_initializeRemovedSystemApps__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (![v5 isEqualToString:@"com.apple.Health"])
  {
    if (![v5 isEqualToString:*(*(a1 + 32) + 40)])
    {
      [*(a1 + 32) _queue_verifyStateForAppBundleId:v5];
      goto LABEL_8;
    }

    v3 = +[NTKCTinCanSettings sharedInstance];
    v4 = [v3 tinCanEnabled];

    if (v4)
    {
      goto LABEL_8;
    }

LABEL_6:
    [*(*(a1 + 32) + 16) addObject:v5];
    goto LABEL_8;
  }

  if (([MEMORY[0x277CCD530] isElectrocardiogramSupportedOnActiveWatch] & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_8:
}

- (void)_queue_verifyStateForAppBundleId:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NTKSystemAppStateCache *)self _queue_cachedAppStateBundleId];
  [v5 addObject:v4];

  v18 = 0;
  v6 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v4 allowPlaceholder:1 error:&v18];
  v7 = v18;
  if (v6)
  {
    v8 = [v6 applicationState];
    v9 = [v8 isInstalled];

    if ((v9 & 1) == 0)
    {
      v10 = [v6 applicationState];
      v11 = [v10 isPlaceholder];

      v12 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v13)
        {
          *buf = 138412290;
          v20 = v4;
          _os_log_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_DEFAULT, "found placeholder for system app (%@)", buf, 0xCu);
        }
      }

      else
      {
        if (v13)
        {
          *buf = 138412290;
          v20 = v4;
          _os_log_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_DEFAULT, "system app (%@) is not installed", buf, 0xCu);
        }

        [(NSMutableSet *)self->_removedSystemApps addObject:v4];
      }
    }

    v15 = [v6 applicationState];
    v16 = [v15 isRestricted];

    if (v16)
    {
      [(NSMutableSet *)self->_restrictedSystemApps addObject:v4];
      v17 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v4;
        _os_log_impl(&dword_22D9C5000, v17, OS_LOG_TYPE_DEFAULT, "system app (%@) is restricted", buf, 0xCu);
      }
    }
  }

  else
  {
    v14 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v4;
      _os_log_impl(&dword_22D9C5000, v14, OS_LOG_TYPE_DEFAULT, "system app (%@) does not have a record", buf, 0xCu);
    }

    [(NSMutableSet *)self->_removedSystemApps addObject:v4];
  }
}

- (void)_queue_applicationsDidChange:(id)a3 state:(unint64_t)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = a3;
  v6 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (!v6)
  {
    goto LABEL_41;
  }

  v8 = v6;
  v9 = 0;
  v10 = *v40;
  *&v7 = 138412290;
  v36 = v7;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v40 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v39 + 1) + 8 * i);
      v13 = [v12 applicationIdentifier];
      if (a4 > 1)
      {
        if (a4 == 2)
        {
          v29 = [v12 appState];
          v30 = [v29 isRestricted];

          v31 = [(NTKSystemAppStateCache *)self _queue_restrictedSystemApps];
          v32 = [v31 containsObject:v13];

          if (v30)
          {
            if (v32)
            {
              goto LABEL_37;
            }

            v33 = [(NTKSystemAppStateCache *)self _queue_restrictedSystemApps];
            [v33 addObject:v13];

            v17 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
            if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_35;
            }

            *buf = v36;
            v44 = v13;
            v18 = v17;
            v19 = "system app (%@) restricted";
          }

          else
          {
            if (!v32)
            {
              goto LABEL_37;
            }

            v35 = [(NTKSystemAppStateCache *)self _queue_restrictedSystemApps];
            [v35 removeObject:v13];

            v17 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
            if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_35;
            }

            *buf = v36;
            v44 = v13;
            v18 = v17;
            v19 = "system app (%@) un-restricted";
          }
        }

        else
        {
          if (a4 != 3)
          {
            goto LABEL_37;
          }

          v20 = [(NTKSystemAppStateCache *)self _queue_removedSystemApps];
          v21 = [v20 containsObject:v13];

          if (v21)
          {
            v22 = [(NTKSystemAppStateCache *)self _queue_removedSystemApps];
            [v22 removeObject:v13];
          }

          v23 = [(NTKSystemAppStateCache *)self _queue_restrictedSystemApps];
          v24 = [v23 containsObject:v13];

          if (v24)
          {
            v25 = [(NTKSystemAppStateCache *)self _queue_restrictedSystemApps];
            [v25 removeObject:v13];

LABEL_26:
            v34 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v36;
              v44 = v13;
              _os_log_impl(&dword_22D9C5000, v34, OS_LOG_TYPE_DEFAULT, "system app (%@) install started and was previously removed or restricted, re-evaluating", buf, 0xCu);
            }

            [(NTKSystemAppStateCache *)self _queue_verifyStateForAppBundleId:v13];
            goto LABEL_36;
          }

          if (v21)
          {
            goto LABEL_26;
          }

          v17 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_35;
          }

          *buf = v36;
          v44 = v13;
          v18 = v17;
          v19 = "system app (%@) install started";
        }

LABEL_34:
        _os_log_impl(&dword_22D9C5000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
        goto LABEL_35;
      }

      if (!a4)
      {
        v26 = [(NTKSystemAppStateCache *)self _queue_removedSystemApps];
        v27 = [v26 containsObject:v13];

        if (!v27)
        {
          goto LABEL_37;
        }

        v28 = [(NTKSystemAppStateCache *)self _queue_removedSystemApps];
        [v28 removeObject:v13];

        v17 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_35;
        }

        *buf = v36;
        v44 = v13;
        v18 = v17;
        v19 = "system app (%@) was installed";
        goto LABEL_34;
      }

      if (a4 == 1)
      {
        v14 = [(NTKSystemAppStateCache *)self _queue_removedSystemApps];
        v15 = [v14 containsObject:v13];

        if ((v15 & 1) == 0)
        {
          v16 = [(NTKSystemAppStateCache *)self _queue_removedSystemApps];
          [v16 addObject:v13];

          v17 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v36;
            v44 = v13;
            v18 = v17;
            v19 = "system app (%@) was uninstalled";
            goto LABEL_34;
          }

LABEL_35:

LABEL_36:
          v9 = 1;
        }
      }

LABEL_37:
    }

    v8 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
  }

  while (v8);
  if (v9)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__NTKSystemAppStateCache__queue_applicationsDidChange_state___block_invoke;
    block[3] = &unk_27877DB10;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

LABEL_41:
}

void __61__NTKSystemAppStateCache__queue_applicationsDidChange_state___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NTKSystemAppStateChangedNotification" object:*(a1 + 32)];
}

- (void)_queue_tinCanSettingsChanged
{
  v3 = +[NTKCTinCanSettings sharedInstance];
  v4 = [v3 tinCanEnabled];

  v5 = [(NTKSystemAppStateCache *)self _queue_removedSystemApps];
  v6 = [v5 containsObject:self->_tinCanBundleID];
  if (v4)
  {
    if (v6)
    {
      [v5 removeObject:self->_tinCanBundleID];
LABEL_6:
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__NTKSystemAppStateCache__queue_tinCanSettingsChanged__block_invoke;
      block[3] = &unk_27877DB10;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  else if ((v6 & 1) == 0)
  {
    [v5 addObject:self->_tinCanBundleID];
    goto LABEL_6;
  }
}

void __54__NTKSystemAppStateCache__queue_tinCanSettingsChanged__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NTKSystemAppStateChangedNotification" object:*(a1 + 32)];
}

- (void)_queue_deviceDidPair
{
  if ([MEMORY[0x277CCD530] isElectrocardiogramSupportedOnActiveWatch] && -[NSMutableSet containsObject:](self->_removedSystemApps, "containsObject:", @"com.apple.Health"))
  {
    [(NSMutableSet *)self->_removedSystemApps removeObject:@"com.apple.Health"];
LABEL_7:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__NTKSystemAppStateCache__queue_deviceDidPair__block_invoke;
    block[3] = &unk_27877DB10;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    return;
  }

  if (([MEMORY[0x277CCD530] isElectrocardiogramSupportedOnActiveWatch] & 1) == 0 && (-[NSMutableSet containsObject:](self->_removedSystemApps, "containsObject:", @"com.apple.Health") & 1) == 0)
  {
    [(NSMutableSet *)self->_removedSystemApps addObject:@"com.apple.Health"];
    goto LABEL_7;
  }
}

void __46__NTKSystemAppStateCache__queue_deviceDidPair__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NTKSystemAppStateChangedNotification" object:*(a1 + 32)];
}

- (id)_queue_removedSystemApps
{
  removedSystemApps = self->_removedSystemApps;
  if (!removedSystemApps)
  {
    [(NTKSystemAppStateCache *)self _queue_initializeRemovedSystemApps];
    removedSystemApps = self->_removedSystemApps;
  }

  return removedSystemApps;
}

- (id)_queue_cachedAppStateBundleId
{
  cachedAppStateBundleId = self->_cachedAppStateBundleId;
  if (!cachedAppStateBundleId)
  {
    v4 = objc_opt_new();
    v5 = self->_cachedAppStateBundleId;
    self->_cachedAppStateBundleId = v4;

    cachedAppStateBundleId = self->_cachedAppStateBundleId;
  }

  return cachedAppStateBundleId;
}

- (id)_queue_restrictedSystemApps
{
  restrictedSystemApps = self->_restrictedSystemApps;
  if (!restrictedSystemApps)
  {
    [(NTKSystemAppStateCache *)self _queue_initializeRestrictedSystemApps];
    restrictedSystemApps = self->_restrictedSystemApps;
  }

  return restrictedSystemApps;
}

@end