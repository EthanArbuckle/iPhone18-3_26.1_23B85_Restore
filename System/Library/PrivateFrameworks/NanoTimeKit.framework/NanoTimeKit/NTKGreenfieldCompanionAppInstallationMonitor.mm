@interface NTKGreenfieldCompanionAppInstallationMonitor
+ (id)sharedMonitor;
- (NTKGreenfieldCompanionAppInstallationMonitor)init;
- (id)_existingPlaceholderItemIds;
- (id)_queue_calculatePendingRemovalItemIdsWithExistingPlaceholderIds:(id)a3;
- (id)_queue_fetchInstalledWatchAppsItemIds;
- (id)_queue_fetchNotInstalledWatchAppStatus;
- (void)_reloadInstallingAppsOnPhoneAndWatch;
- (void)_removePlaceholderComplicationWithItemIds:(id)a3;
- (void)_toggleObserving;
- (void)applicationInstallsDidCancel:(id)a3;
- (void)applicationInstallsDidStart:(id)a3;
- (void)applicationsDidFailToInstall:(id)a3;
- (void)applicationsDidInstall:(id)a3;
- (void)dealloc;
- (void)fetchInstalledAppsOnWatchWithCompletionBlock:(id)a3;
- (void)handleAddFaceManagerDidUpdateFaceLibrary;
- (void)start;
@end

@implementation NTKGreenfieldCompanionAppInstallationMonitor

void __61__NTKGreenfieldCompanionAppInstallationMonitor_sharedMonitor__block_invoke()
{
  v0 = objc_alloc_init(NTKGreenfieldCompanionAppInstallationMonitor);
  v1 = sharedMonitor_monitor;
  sharedMonitor_monitor = v0;
}

+ (id)sharedMonitor
{
  if (sharedMonitor_onceToken != -1)
  {
    +[NTKGreenfieldCompanionAppInstallationMonitor sharedMonitor];
  }

  v3 = sharedMonitor_monitor;

  return v3;
}

- (NTKGreenfieldCompanionAppInstallationMonitor)init
{
  v6.receiver = self;
  v6.super_class = NTKGreenfieldCompanionAppInstallationMonitor;
  v2 = [(NTKGreenfieldCompanionAppInstallationMonitor *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.nanotimekit.NTKGreenfieldCompanionAppInstallationMonitor", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v3;
  }

  return v2;
}

- (void)start
{
  if (!self->_isRunning)
  {
    v3 = [MEMORY[0x277CBBAE8] currentDevice];
    v4 = +[NTKCompanionFaceCollectionsManager sharedInstance];
    v5 = [v4 sharedFaceCollectionForDevice:v3 forCollectionIdentifier:@"LibraryFaces"];
    library = self->_library;
    self->_library = v5;

    if ([(NTKFaceCollection *)self->_library hasLoaded])
    {
      [(NTKGreenfieldCompanionAppInstallationMonitor *)self _toggleObserving];
    }

    else
    {
      [(NTKFaceCollection *)self->_library addObserver:self];
    }

    self->_isRunning = 1;
    v7 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "NTKGreenfieldCompanionAppInstallationMonitor: started", v8, 2u);
    }
  }
}

- (void)dealloc
{
  [(NTKFaceCollection *)self->_library removeObserver:self];
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v3 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v5.receiver = self;
  v5.super_class = NTKGreenfieldCompanionAppInstallationMonitor;
  [(NTKGreenfieldCompanionAppInstallationMonitor *)&v5 dealloc];
}

- (void)fetchInstalledAppsOnWatchWithCompletionBlock:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__NTKGreenfieldCompanionAppInstallationMonitor_fetchInstalledAppsOnWatchWithCompletionBlock___block_invoke;
  block[3] = &unk_27877E960;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, block);
}

void __93__NTKGreenfieldCompanionAppInstallationMonitor_fetchInstalledAppsOnWatchWithCompletionBlock___block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__26;
  v58 = __Block_byref_object_dispose__26;
  v59 = 0;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x3032000000;
  v52[3] = __Block_byref_object_copy__26;
  v52[4] = __Block_byref_object_dispose__26;
  v53 = [MEMORY[0x277CBEB58] set];
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__26;
  v50 = __Block_byref_object_dispose__26;
  v51 = [MEMORY[0x277CBEB58] set];
  v2 = [MEMORY[0x277CBBAE8] currentDevice];
  v3 = [v2 pdrDevice];
  v4 = [v3 pairingID];

  v5 = [MEMORY[0x277CEAF80] sharedDeviceConnection];
  v6 = dispatch_semaphore_create(0);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __93__NTKGreenfieldCompanionAppInstallationMonitor_fetchInstalledAppsOnWatchWithCompletionBlock___block_invoke_10;
  v41[3] = &unk_278781C00;
  v7 = v6;
  v42 = v7;
  v43 = &v54;
  v44 = v52;
  v45 = &v46;
  [v5 enumerateInstalledApplicationsOnDeviceWithPairingID:v4 withBlock:v41];
  v8 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v7, v8);
  if (!v55[5])
  {
    if ([v47[5] count])
    {
      v10 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v47[5];
        *buf = 138412290;
        v61 = v11;
        _os_log_impl(&dword_22D9C5000, v10, OS_LOG_TYPE_DEFAULT, "(NTKGreenfieldCompanionAppInstallationMonitor) Started SAD ItemID lookup %@:", buf, 0xCu);
      }

      v12 = dispatch_semaphore_create(0);
      v13 = MEMORY[0x277CEC338];
      v14 = [v47[5] allObjects];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __93__NTKGreenfieldCompanionAppInstallationMonitor_fetchInstalledAppsOnWatchWithCompletionBlock___block_invoke_14;
      v33[3] = &unk_278781C28;
      v35 = &v54;
      v36 = v52;
      v37 = &v46;
      v7 = v12;
      v34 = v7;
      [v13 lookupItemIDsForDeletableSystemAppsForWatchWithBundleIDs:v14 withResultHandler:v33];

      dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
      if (v55[5])
      {
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __93__NTKGreenfieldCompanionAppInstallationMonitor_fetchInstalledAppsOnWatchWithCompletionBlock___block_invoke_16;
        v30[3] = &unk_278780F80;
        v31 = *(a1 + 32);
        v32 = &v54;
        dispatch_async(MEMORY[0x277D85CD0], v30);

        v9 = v34;
        goto LABEL_3;
      }
    }

    if ([v47[5] count])
    {
      v15 = dispatch_semaphore_create(0);

      v16 = MEMORY[0x277CEC340];
      v17 = [v47[5] allObjects];
      v9 = [v16 queryForBundleIDs:v17];

      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __93__NTKGreenfieldCompanionAppInstallationMonitor_fetchInstalledAppsOnWatchWithCompletionBlock___block_invoke_2;
      v26[3] = &unk_278781C50;
      v28 = &v54;
      v29 = v52;
      v7 = v15;
      v27 = v7;
      [v9 executeQueryWithResultHandler:v26];
      v18 = dispatch_time(0, 5000000000);
      dispatch_semaphore_wait(v7, v18);
      if (v55[5])
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __93__NTKGreenfieldCompanionAppInstallationMonitor_fetchInstalledAppsOnWatchWithCompletionBlock___block_invoke_3;
        v23[3] = &unk_278780F80;
        v24 = *(a1 + 32);
        v25 = &v54;
        dispatch_async(MEMORY[0x277D85CD0], v23);

        goto LABEL_3;
      }
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __93__NTKGreenfieldCompanionAppInstallationMonitor_fetchInstalledAppsOnWatchWithCompletionBlock___block_invoke_4;
    v19[3] = &unk_278781C78;
    v20 = *(a1 + 32);
    v21 = v52;
    v22 = &v46;
    dispatch_async(MEMORY[0x277D85CD0], v19);
    v9 = v20;
    goto LABEL_3;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__NTKGreenfieldCompanionAppInstallationMonitor_fetchInstalledAppsOnWatchWithCompletionBlock___block_invoke_12;
  block[3] = &unk_278780F80;
  v39 = *(a1 + 32);
  v40 = &v54;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v9 = v39;
LABEL_3:

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(v52, 8);

  _Block_object_dispose(&v54, 8);
}

uint64_t __93__NTKGreenfieldCompanionAppInstallationMonitor_fetchInstalledAppsOnWatchWithCompletionBlock___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 | v6)
  {
    if (v6)
    {
      v8 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __93__NTKGreenfieldCompanionAppInstallationMonitor_fetchInstalledAppsOnWatchWithCompletionBlock___block_invoke_10_cold_1();
      }

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
      goto LABEL_6;
    }

    v11 = [v5 storeMetadata];
    v12 = [v11 itemID];

    if (v12)
    {
      [*(*(*(a1 + 48) + 8) + 40) addObject:v12];
LABEL_15:

      v9 = 1;
      goto LABEL_7;
    }

    v13 = [v5 bundleIdentifier];

    if (v13)
    {
      v14 = *(*(*(a1 + 56) + 8) + 40);
      v15 = [v5 bundleIdentifier];
    }

    else
    {
      v16 = [v5 companionAppBundleID];

      if (!v16)
      {
        goto LABEL_15;
      }

      v14 = *(*(*(a1 + 56) + 8) + 40);
      v15 = [v5 companionAppBundleID];
    }

    v17 = v15;
    [v14 addObject:v15];

    goto LABEL_15;
  }

LABEL_6:
  dispatch_semaphore_signal(*(a1 + 32));
  v9 = 0;
LABEL_7:

  return v9;
}

void __93__NTKGreenfieldCompanionAppInstallationMonitor_fetchInstalledAppsOnWatchWithCompletionBlock___block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __93__NTKGreenfieldCompanionAppInstallationMonitor_fetchInstalledAppsOnWatchWithCompletionBlock___block_invoke_14_cold_1(v6, v8);
    }

    v9 = *(*(a1 + 40) + 8);
    v10 = v6;
    v11 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v5;
      _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "(NTKGreenfieldCompanionAppInstallationMonitor) Completed SAD ItemID lookup finished with result %@:", buf, 0xCu);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = [v5 allKeys];
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v18 + 1) + 8 * i);
          v17 = [v5 objectForKeyedSubscript:v16];
          if (v17)
          {
            [*(*(*(a1 + 48) + 8) + 40) addObject:v17];
            [*(*(*(a1 + 56) + 8) + 40) removeObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __93__NTKGreenfieldCompanionAppInstallationMonitor_fetchInstalledAppsOnWatchWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if ([v11 storeItemID] >= 1)
          {
            v12 = *(*(*(a1 + 48) + 8) + 40);
            v13 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v11, "storeItemID")}];
            [v12 addObject:v13];
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)handleAddFaceManagerDidUpdateFaceLibrary
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ([(NTKFaceCollection *)self->_library hasLoaded])
  {

    [(NTKGreenfieldCompanionAppInstallationMonitor *)self _toggleObserving];
  }
}

- (void)_toggleObserving
{
  v15 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (![(NTKFaceCollection *)self->_library hasLoaded])
  {
    [NTKGreenfieldCompanionAppInstallationMonitor _toggleObserving];
  }

  v3 = [(NTKGreenfieldCompanionAppInstallationMonitor *)self _existingPlaceholderItemIds];
  v4 = [v3 count];

  v5 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109120;
    v14[1] = v4 != 0;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "NTKGreenfieldCompanionAppInstallationMonitor: _toggleObserving: %d", v14, 8u);
  }

  if (!v4)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
    if (self->_isObservingApplicationWorkspace)
    {
      v11 = [MEMORY[0x277CC1E80] defaultWorkspace];
      [v11 removeObserver:self];

      self->_isObservingApplicationWorkspace = 0;
      v12 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14[0]) = 0;
        v13 = "NTKGreenfieldCompanionAppInstallationMonitor: LSApplicationWorkspace did remove observer.";
LABEL_20:
        _os_log_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_DEFAULT, v13, v14, 2u);
      }
    }

    else
    {
      v12 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14[0]) = 0;
        v13 = "NTKGreenfieldCompanionAppInstallationMonitor: LSApplicationWorkspace did try to remove observer.";
        goto LABEL_20;
      }
    }

    *&self->_isObservingWatchApps = 0;
    return;
  }

  if (!self->_isObservingApplicationWorkspace)
  {
    v6 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v6 addObserver:self];

    self->_isObservingApplicationWorkspace = 1;
    v7 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "NTKGreenfieldCompanionAppInstallationMonitor: _toggleObserving: observing workspace library", v14, 2u);
    }
  }

  if (!self->_isObservingWatchApps)
  {
    v8 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v8, self, _watchAppListUpdated, *MEMORY[0x277CEAF60], 0, 0);
    self->_isObservingWatchApps = 1;
    v9 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "NTKGreenfieldCompanionAppInstallationMonitor: _toggleObserving: observing watch apps", v14, 2u);
    }
  }

  if (!self->_hasReloadedSinceObserving)
  {
    [(NTKGreenfieldCompanionAppInstallationMonitor *)self _reloadInstallingAppsOnPhoneAndWatch];
    self->_hasReloadedSinceObserving = 1;
  }
}

- (void)_reloadInstallingAppsOnPhoneAndWatch
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [(NTKGreenfieldCompanionAppInstallationMonitor *)self _existingPlaceholderItemIds];
  serialQueue = self->_serialQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__NTKGreenfieldCompanionAppInstallationMonitor__reloadInstallingAppsOnPhoneAndWatch__block_invoke;
  v6[3] = &unk_27877E438;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(serialQueue, v6);
}

void __84__NTKGreenfieldCompanionAppInstallationMonitor__reloadInstallingAppsOnPhoneAndWatch__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_calculatePendingRemovalItemIdsWithExistingPlaceholderIds:*(a1 + 40)];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __84__NTKGreenfieldCompanionAppInstallationMonitor__reloadInstallingAppsOnPhoneAndWatch__block_invoke_2;
  v4[3] = &unk_27877E438;
  v4[4] = *(a1 + 32);
  v5 = v2;
  v3 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

- (id)_queue_fetchInstalledWatchAppsItemIds
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__26;
  v18 = __Block_byref_object_dispose__26;
  v19 = 0;
  v3 = dispatch_semaphore_create(0);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __85__NTKGreenfieldCompanionAppInstallationMonitor__queue_fetchInstalledWatchAppsItemIds__block_invoke;
  v11 = &unk_278781CA0;
  v13 = &v14;
  v4 = v3;
  v12 = v4;
  [(NTKGreenfieldCompanionAppInstallationMonitor *)self fetchInstalledAppsOnWatchWithCompletionBlock:&v8];
  v5 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v4, v5);
  v6 = [v15[5] copy];

  _Block_object_dispose(&v14, 8);

  return v6;
}

void __85__NTKGreenfieldCompanionAppInstallationMonitor__queue_fetchInstalledWatchAppsItemIds__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_queue_fetchNotInstalledWatchAppStatus
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277CEAF80] sharedDeviceConnection];
  v4 = dispatch_semaphore_create(0);
  v5 = [MEMORY[0x277CBBAE8] currentDevice];
  v6 = [v5 pdrDevice];
  v7 = [v6 pairingID];

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __86__NTKGreenfieldCompanionAppInstallationMonitor__queue_fetchNotInstalledWatchAppStatus__block_invoke;
  v16 = &unk_278781CC8;
  v17 = v4;
  v18 = v2;
  v8 = v2;
  v9 = v4;
  [v3 enumerateLocallyAvailableApplicationsForDeviceWithPairingID:v7 options:1 withBlock:&v13];
  v10 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v9, v10);
  v11 = [v8 copy];

  return v11;
}

uint64_t __86__NTKGreenfieldCompanionAppInstallationMonitor__queue_fetchNotInstalledWatchAppStatus__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!(v5 | v6))
  {
    dispatch_semaphore_signal(*(a1 + 32));
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  if (v6)
  {
    v8 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __93__NTKGreenfieldCompanionAppInstallationMonitor_fetchInstalledAppsOnWatchWithCompletionBlock___block_invoke_10_cold_1();
    }

    goto LABEL_7;
  }

  v11 = [v5 storeMetadata];
  v12 = [v11 itemID];

  if (v12)
  {
    v13 = [v5 deviceStatus];
    [*(a1 + 40) setObject:v13 forKeyedSubscript:v12];
  }

  v9 = 1;
LABEL_8:

  return v9;
}

- (id)_queue_calculatePendingRemovalItemIdsWithExistingPlaceholderIds:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  v5 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(NTKGreenfieldCompanionAppInstallationMonitor *)v4 _queue_calculatePendingRemovalItemIdsWithExistingPlaceholderIds:v5];
  }

  v24 = [(NTKGreenfieldCompanionAppInstallationMonitor *)self _queue_fetchInstalledWatchAppsItemIds];
  v6 = [(NTKGreenfieldCompanionAppInstallationMonitor *)self _queue_fetchNotInstalledWatchAppStatus];
  v23 = [MEMORY[0x277CBEB58] set];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v26;
    *&v8 = 138412802;
    v21 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [objc_alloc(MEMORY[0x277CC1E70]) initWithStoreItemIdentifier:objc_msgSend(v12 error:{"unsignedLongLongValue"), 0}];
        v14 = [v13 applicationState];
        v15 = [v24 containsObject:v12];
        v16 = [v6 objectForKeyedSubscript:v12];
        v17 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v21;
          v30 = v14;
          v31 = 1024;
          v32 = v15;
          v33 = 2112;
          v34 = v16;
          _os_log_impl(&dword_22D9C5000, v17, OS_LOG_TYPE_DEFAULT, "NTKGreenfieldCompanionAppInstallationMonitor: enumerateInstalledApplicationsOnPairedDevice: decision time:\n\t[phoneAppState=%@]\n\t[installedOnWatch=%d]\n\t[watchAppStatus=%@\n", buf, 0x1Cu);
        }

        if ((v15 & 1) != 0 || !(v14 | v16) || v16 && (v18 = [v16 installStatus], v18 <= 4) && v18 != 1)
        {
          [v23 addObject:{v12, v21}];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v9);
  }

  v19 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v23;
    _os_log_impl(&dword_22D9C5000, v19, OS_LOG_TYPE_DEFAULT, "NTKGreenfieldCompanionAppInstallationMonitor: calculated removal ids: %@", buf, 0xCu);
  }

  return v23;
}

- (id)_existingPlaceholderItemIds
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (![(NTKFaceCollection *)self->_library hasLoaded])
  {
    [NTKGreenfieldCompanionAppInstallationMonitor _existingPlaceholderItemIds];
  }

  v3 = [MEMORY[0x277CBEB58] set];
  if ([(NTKFaceCollection *)self->_library numberOfFaces])
  {
    v4 = 0;
    do
    {
      v5 = [(NTKFaceCollection *)self->_library faceAtIndex:v4];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __75__NTKGreenfieldCompanionAppInstallationMonitor__existingPlaceholderItemIds__block_invoke;
      v9[3] = &unk_27877F498;
      v10 = v5;
      v11 = v3;
      v6 = v5;
      [v6 enumerateComplicationSlotsWithBlock:v9];

      ++v4;
    }

    while ([(NTKFaceCollection *)self->_library numberOfFaces]> v4);
  }

  v7 = [v3 copy];

  return v7;
}

void __75__NTKGreenfieldCompanionAppInstallationMonitor__existingPlaceholderItemIds__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) complicationForSlot:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v4 appStoreItemId];
    [*(a1 + 40) addObject:v3];
  }
}

- (void)_removePlaceholderComplicationWithItemIds:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (![(NTKFaceCollection *)self->_library hasLoaded])
  {
    [NTKGreenfieldCompanionAppInstallationMonitor _removePlaceholderComplicationWithItemIds:];
  }

  if ([(NTKFaceCollection *)self->_library numberOfFaces])
  {
    v5 = 0;
    do
    {
      v6 = [(NTKFaceCollection *)self->_library faceAtIndex:v5];
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 0;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __90__NTKGreenfieldCompanionAppInstallationMonitor__removePlaceholderComplicationWithItemIds___block_invoke;
      v10[3] = &unk_278780C38;
      v7 = v6;
      v11 = v7;
      v12 = v4;
      v13 = &v14;
      [v7 enumerateComplicationSlotsWithBlock:v10];
      if (*(v15 + 24) == 1)
      {
        [v7 _updateComplicationTombstones];
      }

      _Block_object_dispose(&v14, 8);
      ++v5;
    }

    while ([(NTKFaceCollection *)self->_library numberOfFaces]> v5);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __90__NTKGreenfieldCompanionAppInstallationMonitor__removePlaceholderComplicationWithItemIds___block_invoke_29;
  v9[3] = &unk_27877DB10;
  v9[4] = self;
  v8 = MEMORY[0x277D85CD0];
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __90__NTKGreenfieldCompanionAppInstallationMonitor__removePlaceholderComplicationWithItemIds___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) complicationForSlot:v3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 appStoreItemId];
    if ([*(a1 + 40) containsObject:v6])
    {
      v7 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412546;
        v11 = v3;
        v12 = 2112;
        v13 = v6;
        _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "NTKGreenfieldCompanionAppInstallationMonitor: _removePlaceholderComplicationWithItemIds: need to remove: slot:%@ itemId: %@ ", &v10, 0x16u);
      }

      v8 = [v5 complication];
      v9 = [NTKComplicationTombstone tombstoneWithComplication:v8];
      [*(a1 + 32) setComplication:v9 forSlot:v3];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }
}

- (void)applicationInstallsDidStart:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "NTKGreenfieldCompanionAppInstallationMonitor: applicationInstallsDidStart: %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__NTKGreenfieldCompanionAppInstallationMonitor_applicationInstallsDidStart___block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)applicationsDidInstall:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "NTKGreenfieldCompanionAppInstallationMonitor: applicationsDidInstall: %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__NTKGreenfieldCompanionAppInstallationMonitor_applicationsDidInstall___block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)applicationsDidFailToInstall:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "NTKGreenfieldCompanionAppInstallationMonitor: applicationsDidFailToInstall: %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__NTKGreenfieldCompanionAppInstallationMonitor_applicationsDidFailToInstall___block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)applicationInstallsDidCancel:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "NTKGreenfieldCompanionAppInstallationMonitor: applicationInstallsDidCancel: %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__NTKGreenfieldCompanionAppInstallationMonitor_applicationInstallsDidCancel___block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __93__NTKGreenfieldCompanionAppInstallationMonitor_fetchInstalledAppsOnWatchWithCompletionBlock___block_invoke_14_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "(NTKGreenfieldCompanionAppInstallationMonitor) Completed SAD ItemID lookup finished with error %@:", &v2, 0xCu);
}

- (void)_queue_calculatePendingRemovalItemIdsWithExistingPlaceholderIds:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "NTKGreenfieldCompanionAppInstallationMonitor: _queue_updateWithExistingPlaceholderIds: %@", &v2, 0xCu);
}

@end