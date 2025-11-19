@interface NTKCompanionAppLibrary
+ (id)sharedAppLibrary;
- (BOOL)isRemovedSystemApp:(id)a3;
- (BOOL)isRestrictedSystemApp:(id)a3;
- (NSArray)allApps;
- (NSArray)thirdPartyApps;
- (NTKCompanionAppLibrary)init;
- (id)disabledComplicationTypes;
- (void)_load;
- (void)_loadApps;
- (void)_loadWatchApps;
- (void)_notifyAppAdded:(id)a3;
- (void)_notifyAppIconUpdated:(id)a3;
- (void)_notifyAppRemoved:(id)a3;
- (void)_notifyAppUpdated:(id)a3;
- (void)_queue_loadApps;
- (void)addObserver:(id)a3;
- (void)applicationDatabaseResyncedForDeviceWithPairingID:(id)a3;
- (void)applicationsInstalled:(id)a3 onDeviceWithPairingID:(id)a4;
- (void)applicationsUninstalled:(id)a3 onDeviceWithPairingID:(id)a4;
- (void)applicationsUpdated:(id)a3 onDeviceWithPairingID:(id)a4;
- (void)dealloc;
- (void)prewarmCompanionDaemonWithCompletion:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation NTKCompanionAppLibrary

+ (id)sharedAppLibrary
{
  if (sharedAppLibrary_onceToken != -1)
  {
    +[NTKCompanionAppLibrary sharedAppLibrary];
  }

  v3 = sharedAppLibrary_appLibrary;

  return v3;
}

void __42__NTKCompanionAppLibrary_sharedAppLibrary__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedAppLibrary_appLibrary;
  sharedAppLibrary_appLibrary = v0;
}

- (NTKCompanionAppLibrary)init
{
  v14.receiver = self;
  v14.super_class = NTKCompanionAppLibrary;
  v2 = [(NTKCompanionAppLibrary *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAC60]);
    [(NTKCompanionAppLibrary *)v2 setInternalLock:v3];

    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
    v5 = dispatch_queue_create("com.apple.ntk.companionapplibrary.updates", v4);
    [(NTKCompanionAppLibrary *)v2 setUpdateProcessingQueue:v5];

    v6 = dispatch_queue_create("com.apple.ntk.companionapplibrary.observercallback", v4);
    [(NTKCompanionAppLibrary *)v2 setObserverCallbackQueue:v6];

    v7 = dispatch_queue_create("com.apple.ntk.companionapplibrary.appconduit", v4);
    [(NTKCompanionAppLibrary *)v2 setAppProcessingQueue:v7];

    v8 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    [(NTKCompanionAppLibrary *)v2 setChangeObservers:v8];

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:v2 selector:sel__activeDeviceChanged name:*MEMORY[0x277CBB640] object:0];

    [(NTKCompanionAppLibrary *)v2 _load];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _handleAppConduitApplicationsChangedNotification_0, *MEMORY[0x277CEAF60], v2, 0);
    v11 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v11 addObserver:v2];

    v12 = [MEMORY[0x277CEAF80] sharedDeviceConnection];
    [v12 addObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277CBB640] object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277CEAF60], self);
  v5 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v5 removeObserver:self];

  v6 = [MEMORY[0x277CEAF80] sharedDeviceConnection];
  [v6 removeObserver:self];

  v7.receiver = self;
  v7.super_class = NTKCompanionAppLibrary;
  [(NTKCompanionAppLibrary *)&v7 dealloc];
}

- (NSArray)thirdPartyApps
{
  [(NSRecursiveLock *)self->_internalLock lock];
  v3 = self->_thirdPartyApps;
  [(NSRecursiveLock *)self->_internalLock unlock];

  return v3;
}

- (id)disabledComplicationTypes
{
  v3 = [(NTKCompanionAppLibrary *)self device];
  [(NSRecursiveLock *)self->_internalLock lock];
  v4 = self->_disabledComplicationTypesCache;
  if (!v4)
  {
    v4 = _NTKDisabledComplicationTypesForDevice(v3);
    v5 = [(NSIndexSet *)v4 copy];
    disabledComplicationTypesCache = self->_disabledComplicationTypesCache;
    self->_disabledComplicationTypesCache = v5;
  }

  [(NSRecursiveLock *)self->_internalLock unlock];

  return v4;
}

- (void)prewarmCompanionDaemonWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13 = v4;
    v5 = [(NTKCompanionAppLibrary *)self device];
    v6 = [v5 pdrDevice];

    if (v6)
    {
      [(NSRecursiveLock *)self->_internalLock lock];
      v7 = self->_allApps;
      prewarmCallbacks = self->_prewarmCallbacks;
      if (!prewarmCallbacks)
      {
        v9 = [MEMORY[0x277CBEB18] array];
        v10 = self->_prewarmCallbacks;
        self->_prewarmCallbacks = v9;

        prewarmCallbacks = self->_prewarmCallbacks;
      }

      v11 = [v13 copy];
      v12 = _Block_copy(v11);
      [(NSMutableArray *)prewarmCallbacks addObject:v12];

      [(NSRecursiveLock *)self->_internalLock unlock];
      if (v7)
      {
        v13[2]();
      }
    }

    else
    {
      v13[2]();
    }

    v4 = v13;
  }
}

- (void)_load
{
  v3 = [MEMORY[0x277CBBAE8] currentDevice];
  [(NTKCompanionAppLibrary *)self setDevice:v3];

  [(NTKCompanionAppLibrary *)self _loadApps];
}

- (BOOL)isRestrictedSystemApp:(id)a3
{
  v4 = a3;
  if (([(CLKDevice *)self->_device isRunningGraceOrLater]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v6 = +[NTKSystemAppStateCache sharedInstance];
    v5 = [v6 isRestrictedSystemApp:v4];
  }

  return v5;
}

- (BOOL)isRemovedSystemApp:(id)a3
{
  v4 = a3;
  if ([(CLKDevice *)self->_device isRunningGraceOrLater])
  {
    device = self->_device;
    if (!device || ([(CLKDevice *)device pdrDevice], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
    {
      LOBYTE(v9) = 0;
      goto LABEL_9;
    }

    [(NSRecursiveLock *)self->_internalLock lock];
    v7 = self->_installedSystemApplicationIdentifiers;
    appConduitLoaded = self->_appConduitLoaded;
    [(NSRecursiveLock *)self->_internalLock unlock];
    if (appConduitLoaded)
    {
      v9 = ![(NSSet *)v7 containsObject:v4];
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    v7 = +[NTKSystemAppStateCache sharedInstance];
    LOBYTE(v9) = [(NSSet *)v7 isRemovedSystemApp:v4];
  }

LABEL_9:
  return v9;
}

- (void)applicationsInstalled:(id)a3 onDeviceWithPairingID:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  device = self->_device;
  v8 = a4;
  v9 = [(CLKDevice *)device pdrDevice];
  v10 = [v9 pairingID];
  v11 = [v10 isEqual:v8];

  if (v11)
  {
    [(NTKCompanionAppLibrary *)self _loadApps];
  }

  v12 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v6 description];
    v14 = 138412290;
    v15 = v13;
    _os_log_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_DEFAULT, "NTKCompanionAppLibrary: ACXDeviceConnnectionDelegate: Received installed applications: %@", &v14, 0xCu);
  }
}

- (void)applicationsUpdated:(id)a3 onDeviceWithPairingID:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  device = self->_device;
  v8 = a4;
  v9 = [(CLKDevice *)device pdrDevice];
  v10 = [v9 pairingID];
  v11 = [v10 isEqual:v8];

  if (v11)
  {
    [(NTKCompanionAppLibrary *)self _loadApps];
  }

  v12 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v6 description];
    v14 = 138412290;
    v15 = v13;
    _os_log_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_DEFAULT, "NTKCompanionAppLibrary: ACXDeviceConnnectionDelegate: Received updated applications: %@", &v14, 0xCu);
  }
}

- (void)applicationsUninstalled:(id)a3 onDeviceWithPairingID:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  device = self->_device;
  v8 = a4;
  v9 = [(CLKDevice *)device pdrDevice];
  v10 = [v9 pairingID];
  v11 = [v10 isEqual:v8];

  if (v11)
  {
    [(NTKCompanionAppLibrary *)self _loadApps];
  }

  v12 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v6 description];
    v14 = 138412290;
    v15 = v13;
    _os_log_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_DEFAULT, "NTKCompanionAppLibrary: ACXDeviceConnnectionDelegate: Received uninstalled applications: %@", &v14, 0xCu);
  }
}

- (void)applicationDatabaseResyncedForDeviceWithPairingID:(id)a3
{
  device = self->_device;
  v5 = a3;
  v6 = [(CLKDevice *)device pdrDevice];
  v7 = [v6 pairingID];
  v8 = [v7 isEqual:v5];

  if (v8)
  {
    [(NTKCompanionAppLibrary *)self _loadApps];
  }

  v9 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "NTKCompanionAppLibrary: ACXDeviceConnnectionDelegate: Application database did resync", v10, 2u);
  }
}

- (void)addObserver:(id)a3
{
  internalLock = self->_internalLock;
  v5 = a3;
  [(NSRecursiveLock *)internalLock lock];
  [(NSHashTable *)self->_changeObservers addObject:v5];

  v6 = self->_internalLock;

  [(NSRecursiveLock *)v6 unlock];
}

- (void)removeObserver:(id)a3
{
  internalLock = self->_internalLock;
  v5 = a3;
  [(NSRecursiveLock *)internalLock lock];
  [(NSHashTable *)self->_changeObservers removeObject:v5];

  v6 = self->_internalLock;

  [(NSRecursiveLock *)v6 unlock];
}

- (void)_notifyAppAdded:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSRecursiveLock *)self->_internalLock lock];
  v5 = [(NSHashTable *)self->_changeObservers copy];
  [(NSRecursiveLock *)self->_internalLock unlock];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          observerCallbackQueue = self->_observerCallbackQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __42__NTKCompanionAppLibrary__notifyAppAdded___block_invoke;
          block[3] = &unk_27877E238;
          block[4] = v11;
          block[5] = self;
          v14 = v4;
          dispatch_async(observerCallbackQueue, block);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)_notifyAppUpdated:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSRecursiveLock *)self->_internalLock lock];
  v5 = [(NSHashTable *)self->_changeObservers copy];
  [(NSRecursiveLock *)self->_internalLock unlock];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          observerCallbackQueue = self->_observerCallbackQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __44__NTKCompanionAppLibrary__notifyAppUpdated___block_invoke;
          block[3] = &unk_27877E238;
          block[4] = v11;
          block[5] = self;
          v14 = v4;
          dispatch_async(observerCallbackQueue, block);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)_notifyAppRemoved:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSRecursiveLock *)self->_internalLock lock];
  v5 = [(NSHashTable *)self->_changeObservers copy];
  [(NSRecursiveLock *)self->_internalLock unlock];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          observerCallbackQueue = self->_observerCallbackQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __44__NTKCompanionAppLibrary__notifyAppRemoved___block_invoke;
          block[3] = &unk_27877E238;
          block[4] = v11;
          block[5] = self;
          v14 = v4;
          dispatch_async(observerCallbackQueue, block);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)_notifyAppIconUpdated:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSRecursiveLock *)self->_internalLock lock];
  v5 = [(NSHashTable *)self->_changeObservers copy];
  [(NSRecursiveLock *)self->_internalLock unlock];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          observerCallbackQueue = self->_observerCallbackQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __48__NTKCompanionAppLibrary__notifyAppIconUpdated___block_invoke;
          block[3] = &unk_27877E238;
          block[4] = v11;
          block[5] = self;
          v14 = v4;
          dispatch_async(observerCallbackQueue, block);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)_loadApps
{
  updateProcessingQueue = self->_updateProcessingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__NTKCompanionAppLibrary__loadApps__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(updateProcessingQueue, block);
}

- (void)_loadWatchApps
{
  v3 = [(CLKDevice *)self->_device pdrDevice];
  v4 = [v3 pairingID];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = [MEMORY[0x277CBEB18] array];
    v8 = [(CLKDevice *)self->_device isRunningGraceOrLater];
    v9 = dispatch_semaphore_create(0);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __40__NTKCompanionAppLibrary__loadWatchApps__block_invoke_2;
    aBlock[3] = &unk_278782270;
    aBlock[4] = self;
    v24 = v6;
    v31 = v24;
    v36 = v8;
    v10 = v7;
    v32 = v10;
    v11 = v5;
    v33 = v11;
    v12 = v9;
    v34 = v12;
    v13 = v4;
    v35 = v13;
    v14 = _Block_copy(aBlock);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __40__NTKCompanionAppLibrary__loadWatchApps__block_invoke_37;
    v28[3] = &unk_278782298;
    v28[4] = self;
    v15 = v14;
    v29 = v15;
    v16 = _Block_copy(v28);
    [(NSRecursiveLock *)self->_internalLock lock];
    self->_appConduitLoaded = 0;
    disabledComplicationTypesCache = self->_disabledComplicationTypesCache;
    self->_disabledComplicationTypesCache = 0;

    [(NSRecursiveLock *)self->_internalLock unlock];
    v18 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v19)
      {
        *buf = 0;
        _os_log_impl(&dword_22D9C5000, v18, OS_LOG_TYPE_DEFAULT, "Loading apps on watch…", buf, 2u);
      }

      v20 = [MEMORY[0x277CEAF80] sharedDeviceConnection];
      [v20 enumerateInstalledApplicationsOnDeviceWithPairingID:v13 withBlock:v16];

      dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
      v21 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 0;
      v22 = "Apps on watch loaded.";
    }

    else
    {
      if (v19)
      {
        *buf = 0;
        _os_log_impl(&dword_22D9C5000, v18, OS_LOG_TYPE_DEFAULT, "Loading possible 3rd party apps from phone…", buf, 2u);
      }

      v23 = [MEMORY[0x277CEAF80] sharedDeviceConnection];
      [v23 enumerateLocallyAvailableApplicationsForDeviceWithPairingID:v13 options:3 withBlock:v16];

      dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
      v21 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 0;
      v22 = "Possible 3rd party apps on watch loaded.";
    }

    _os_log_impl(&dword_22D9C5000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 2u);
LABEL_13:

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __40__NTKCompanionAppLibrary__loadWatchApps__block_invoke_40;
    v26[3] = &unk_27877DB10;
    v26[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v26);

    goto LABEL_14;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__NTKCompanionAppLibrary__loadWatchApps__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
LABEL_14:
}

void __40__NTKCompanionAppLibrary__loadWatchApps__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NTKSystemAppStateChangedNotification" object:*(a1 + 32)];
}

void __40__NTKCompanionAppLibrary__loadWatchApps__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 bundleIdentifier];
    if ([*(a1 + 56) containsObject:v7])
    {
      v8 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v54 = v7;
        _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "Already added app with bundleID: %@", buf, 0xCu);
      }

      goto LABEL_41;
    }

    v8 = [v5 companionAppBundleID];
    if ([v8 length])
    {
      v11 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v8 allowPlaceholder:1 error:0];
      v12 = [v11 applicationState];
      v13 = [v12 isRestricted];

      if (v13)
      {
        v14 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v54 = v7;
          v55 = 2112;
          v56 = v8;
          _os_log_impl(&dword_22D9C5000, v14, OS_LOG_TYPE_DEFAULT, "App is restricted with bundleID: %@ - %@ on companion", buf, 0x16u);
        }

        goto LABEL_40;
      }
    }

    v11 = [NTKCompanion1stPartyApp appForBundleIdentifier:v7];
    if (v11)
    {
      v29 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v54 = v7;
        _os_log_impl(&dword_22D9C5000, v29, OS_LOG_TYPE_DEFAULT, "1st party app with bundleID: %@", buf, 0xCu);
      }

      [*(a1 + 56) addObject:v7];
      [*(a1 + 48) addObject:v11];
      goto LABEL_40;
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __40__NTKCompanionAppLibrary__loadWatchApps__block_invoke_29;
    aBlock[3] = &unk_278782248;
    aBlock[4] = *(a1 + 32);
    v30 = v7;
    v50 = v30;
    v51 = *(a1 + 40);
    v52 = *(a1 + 56);
    v31 = _Block_copy(aBlock);
    if (*(a1 + 80))
    {
      v32 = [v5 complicationPrincipalClass];

      if (v32)
      {
        v33 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v54 = "[NTKCompanionAppLibrary _loadWatchApps]_block_invoke_2";
          v34 = "%s - processRemoteApplication non-nil principal class";
LABEL_37:
          _os_log_impl(&dword_22D9C5000, v33, OS_LOG_TYPE_DEFAULT, v34, buf, 0xCu);
          goto LABEL_38;
        }

        goto LABEL_38;
      }

      v39 = +[NTKBundleComplicationManager sharedManager];
      v40 = [v39 bundleComplicationExistsForAppBundleIdentifier:v30];

      if (v40)
      {
        v33 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v54 = "[NTKCompanionAppLibrary _loadWatchApps]_block_invoke";
          v34 = "%s - processRemoteApplication bundleComplicationExistsForAppBundleIdentifier";
          goto LABEL_37;
        }

LABEL_38:

        v44 = v31[2](v31, v5);
        goto LABEL_39;
      }

      v41 = [*(a1 + 32) device];
      v42 = NTKComplicationTypesForDeviceWithBundleID(v41, v30);
      v43 = [v42 count];

      if (v43)
      {
        v33 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v54 = "[NTKCompanionAppLibrary _loadWatchApps]_block_invoke";
          v34 = "%s - processRemoteApplication NTKComplicationTypesForDeviceWithBundleID > 0";
          goto LABEL_37;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v35 = dispatch_semaphore_create(0);
      v36 = [MEMORY[0x277CEAF80] sharedDeviceConnection];
      v37 = *(a1 + 72);
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __40__NTKCompanionAppLibrary__loadWatchApps__block_invoke_32;
      v45[3] = &unk_27877F6E0;
      v48 = v31;
      v46 = v5;
      v47 = v35;
      v38 = v35;
      [v36 applicationIsInstalledOnDeviceWithPairingID:v37 withBundleID:v30 completion:v45];

      dispatch_semaphore_wait(v38, 0xFFFFFFFFFFFFFFFFLL);
    }

LABEL_39:

LABEL_40:
LABEL_41:

    goto LABEL_42;
  }

  v9 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __40__NTKCompanionAppLibrary__loadWatchApps__block_invoke_2_cold_1(v6, v10);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v54 = "[NTKCompanionAppLibrary _loadWatchApps]_block_invoke";
    _os_log_impl(&dword_22D9C5000, v10, OS_LOG_TYPE_DEFAULT, "%s - processRemoteApplication non-error completion", buf, 0xCu);
  }

  [*(*(a1 + 32) + 72) lock];
  *(*(a1 + 32) + 8) = v6 == 0;
  v15 = *(a1 + 32);
  v16 = *(v15 + 56);
  *(v15 + 56) = 0;

  v17 = [*(a1 + 40) copy];
  v18 = *(a1 + 32);
  v19 = *(v18 + 24);
  *(v18 + 24) = v17;

  if (*(a1 + 80) == 1)
  {
    v20 = [*(a1 + 48) copy];
    v21 = *(a1 + 32);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    v23 = [*(a1 + 56) copy];
  }

  else
  {
    v24 = *(a1 + 32);
    v25 = *(v24 + 40);
    *(v24 + 40) = MEMORY[0x277CBEBF8];

    v23 = [MEMORY[0x277CBEB98] set];
  }

  v26 = *(a1 + 32);
  v27 = *(v26 + 48);
  *(v26 + 48) = v23;

  [*(*(a1 + 32) + 72) unlock];
  v28 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v54 = "[NTKCompanionAppLibrary _loadWatchApps]_block_invoke";
    _os_log_impl(&dword_22D9C5000, v28, OS_LOG_TYPE_DEFAULT, "%s - processRemoteApplication signaling", buf, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 64));
LABEL_42:
}

id __40__NTKCompanionAppLibrary__loadWatchApps__block_invoke_29(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) device];
  v5 = [NTKCompanion3rdPartyApp companion3rdPartyRemoteApp:v3 device:v4];

  v6 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "Adding app with bundleID: %@", &v10, 0xCu);
    }

    v7 = *(a1 + 32);
    objc_sync_enter(v7);
    [*(a1 + 48) addObject:v5];
    objc_sync_exit(v7);
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __40__NTKCompanionAppLibrary__loadWatchApps__block_invoke_29_cold_1(v3, v7);
  }

  [*(a1 + 56) addObject:*(a1 + 40)];

  return v5;
}

intptr_t __40__NTKCompanionAppLibrary__loadWatchApps__block_invoke_32(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = (*(*(a1 + 48) + 16))();
  }

  v4 = *(a1 + 40);

  return dispatch_semaphore_signal(v4);
}

uint64_t __40__NTKCompanionAppLibrary__loadWatchApps__block_invoke_37(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[NTKCompanionAppLibrary _loadWatchApps]_block_invoke";
    _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "%s - handleRemoteApplication", buf, 0xCu);
  }

  v8 = *(*(a1 + 32) + 96);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__NTKCompanionAppLibrary__loadWatchApps__block_invoke_38;
  block[3] = &unk_27877FF88;
  v9 = *(a1 + 40);
  v15 = v6;
  v16 = v9;
  v14 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);

  return 1;
}

void __40__NTKCompanionAppLibrary__loadWatchApps__block_invoke_40(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NTKSystemAppStateChangedNotification" object:*(a1 + 32)];
}

- (void)_queue_loadApps
{
  v56 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_updateProcessingQueue);
  [(NSRecursiveLock *)self->_internalLock lock];
  v3 = self->_allApps;
  [(NSRecursiveLock *)self->_internalLock unlock];
  [(NTKCompanionAppLibrary *)self _loadWatchApps];
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__28;
  v53 = __Block_byref_object_dispose__28;
  v54 = 0;
  [(NSRecursiveLock *)self->_internalLock lock];
  v4 = [(NTKCompanionAppLibrary *)self device];
  v5 = [NTKCompanion1stPartyApp allAppsForDevice:v4];

  v6 = [v5 indexesOfObjectsPassingTest:&__block_literal_global_43_0];
  v7 = [v5 objectsAtIndexes:v6];
  firstPartyApps = self->_firstPartyApps;
  self->_firstPartyApps = v7;

  v9 = [(NSArray *)self->_thirdPartyApps mutableCopy];
  v10 = v50[5];
  v50[5] = v9;

  [v50[5] addObjectsFromArray:self->_firstPartyApps];
  [v50[5] addObjectsFromArray:self->_watchSystemApps];
  [(NSRecursiveLock *)self->_internalLock unlock];
  v11 = v50[5];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __41__NTKCompanionAppLibrary__queue_loadApps__block_invoke_2;
  v48[3] = &unk_2787822E0;
  v48[4] = self;
  [v11 enumerateObjectsUsingBlock:v48];
  v12 = [MEMORY[0x277CBEB18] array];
  v13 = [MEMORY[0x277CBEB18] array];
  v14 = [MEMORY[0x277CBEB18] array];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __41__NTKCompanionAppLibrary__queue_loadApps__block_invoke_3;
  v45[3] = &unk_278782308;
  v47 = &v49;
  v15 = v14;
  v46 = v15;
  [(NSArray *)v3 enumerateObjectsUsingBlock:v45];
  v16 = v50[5];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __41__NTKCompanionAppLibrary__queue_loadApps__block_invoke_4;
  v41[3] = &unk_278782330;
  v31 = v3;
  v42 = v31;
  v17 = v13;
  v43 = v17;
  v18 = v12;
  v44 = v18;
  [v16 enumerateObjectsUsingBlock:v41];
  [(NSRecursiveLock *)self->_internalLock lock];
  v19 = [v50[5] copy];
  allApps = self->_allApps;
  self->_allApps = v19;

  v21 = [(NSMutableArray *)self->_prewarmCallbacks copy];
  prewarmCallbacks = self->_prewarmCallbacks;
  self->_prewarmCallbacks = 0;

  [(NSRecursiveLock *)self->_internalLock unlock];
  v32 = v17;
  v23 = v6;
  v24 = v5;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v25 = v21;
  v26 = [v25 countByEnumeratingWithState:&v37 objects:v55 count:16];
  if (v26)
  {
    v27 = *v38;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v38 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v37 + 1) + 8 * i);
        observerCallbackQueue = self->_observerCallbackQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __41__NTKCompanionAppLibrary__queue_loadApps__block_invoke_5;
        block[3] = &unk_27877E960;
        block[4] = v29;
        dispatch_async(observerCallbackQueue, block);
      }

      v26 = [v25 countByEnumeratingWithState:&v37 objects:v55 count:{16, v31}];
    }

    while (v26);
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __41__NTKCompanionAppLibrary__queue_loadApps__block_invoke_6;
  v35[3] = &unk_2787822E0;
  v35[4] = self;
  [v15 enumerateObjectsUsingBlock:v35];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __41__NTKCompanionAppLibrary__queue_loadApps__block_invoke_7;
  v34[3] = &unk_2787822E0;
  v34[4] = self;
  [v32 enumerateObjectsUsingBlock:v34];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __41__NTKCompanionAppLibrary__queue_loadApps__block_invoke_8;
  v33[3] = &unk_2787822E0;
  v33[4] = self;
  [v18 enumerateObjectsUsingBlock:v33];

  _Block_object_dispose(&v49, 8);
}

uint64_t __41__NTKCompanionAppLibrary__queue_loadApps__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 containerApplicationIdentifier];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v2 allowPlaceholder:1 error:0];
    v4 = [v3 applicationState];
    v5 = [v4 isRestricted] ^ 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void __41__NTKCompanionAppLibrary__queue_loadApps__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(*(*(a1 + 40) + 8) + 40) containsObject:?] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __41__NTKCompanionAppLibrary__queue_loadApps__block_invoke_4(id *a1, void *a2)
{
  v8 = a2;
  v3 = [a1[4] indexOfObject:?];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL || ([a1[4] objectAtIndex:v3], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    [a1[6] addObject:v8];
  }

  else
  {
    v5 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v8;
    }

    else
    {
      v7 = 0;
    }

    if ([v7 applicationHasBeenUpdated:v6])
    {
      [a1[5] addObject:v8];
    }
  }
}

- (NSArray)allApps
{
  [(NSRecursiveLock *)self->_internalLock lock];
  v3 = self->_allApps;
  [(NSRecursiveLock *)self->_internalLock unlock];

  return v3;
}

void __40__NTKCompanionAppLibrary__loadWatchApps__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "Could not enumerate applications with complications. Third party applications may be missing from Gallery. Error: %@", &v2, 0xCu);
}

void __40__NTKCompanionAppLibrary__loadWatchApps__block_invoke_29_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 bundleIdentifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "Failed to create application object for watch application with bundleId: %@. It will not be displayed in Gallery.", &v4, 0xCu);
}

@end