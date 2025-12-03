@interface NTKCompanionRemoteComplicationManager
+ (id)sharedInstance;
- (BOOL)isComplicationAvailable:(id)available forFamilies:(id)families;
- (BOOL)vendorExistsWithClientIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier;
- (NTKCompanionRemoteComplicationManager)init;
- (id)_safeComplications;
- (id)_safeInstalledComplications;
- (id)itemIdForVendorWithClientIdentifier:(id)identifier;
- (id)localizedAppNameForClientIdentifier:(id)identifier;
- (void)_fetchInstalledApps;
- (void)_load;
- (void)_queryInstalledApps;
- (void)_queue_reloadApps;
- (void)_reloadApps;
- (void)dealloc;
- (void)enumerateComplicationDescriptorsForClientIdentifier:(id)identifier family:(int64_t)family withBlock:(id)block;
- (void)enumerateComplicationDescriptorsForClientIdentifier:(id)identifier withBlock:(id)block;
- (void)enumerateEnabledVendorsForComplicationFamily:(int64_t)family withBlock:(id)block;
@end

@implementation NTKCompanionRemoteComplicationManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[NTKCompanionRemoteComplicationManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __55__NTKCompanionRemoteComplicationManager_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;
}

- (NTKCompanionRemoteComplicationManager)init
{
  v8.receiver = self;
  v8.super_class = NTKCompanionRemoteComplicationManager;
  v2 = [(NTKCompanionRemoteComplicationManager *)&v8 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_installedComplicationsLock._os_unfair_lock_opaque = 0;
    v2->_remoteComplicationsLock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_create("com.apple.ntk.companionremotecomplicationmanager.updates", 0);
    [(NTKCompanionRemoteComplicationManager *)v3 setSerialQueue:v4];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__activeDeviceChanged name:*MEMORY[0x277CBB640] object:0];
    [defaultCenter addObserver:v3 selector:sel__appStartedInstall name:@"NTKCompanion3rdPartyAppInstallStartedNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel__fetchInstalledApps name:@"NTKSystemAppStateChangedNotification" object:0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, _handleAppConduitApplicationsChangedNotification, *MEMORY[0x277CEAF60], v3, 0);
    [(NTKCompanionRemoteComplicationManager *)v3 _load];
  }

  return v3;
}

- (void)_load
{
  os_unfair_lock_lock(&self->_remoteComplicationsLock);
  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  [(NTKCompanionRemoteComplicationManager *)self setDevice:currentDevice];

  [(NTKComplicationCollection *)self->_remoteComplications removeObserver:self];
  currentDevice2 = [MEMORY[0x277CBBAE8] currentDevice];
  v5 = [NTKCompanionComplicationCollectionManager sharedComplicationCollectionForDevice:currentDevice2];
  [(NTKCompanionRemoteComplicationManager *)self setRemoteComplications:v5];

  [(NTKComplicationCollection *)self->_remoteComplications addObserver:self];
  os_unfair_lock_unlock(&self->_remoteComplicationsLock);

  [(NTKCompanionRemoteComplicationManager *)self _fetchInstalledApps];
}

- (void)_fetchInstalledApps
{
  v8 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_remoteComplicationsLock);
  remoteComplications = [(NTKCompanionRemoteComplicationManager *)self remoteComplications];
  hasLoaded = [remoteComplications hasLoaded];

  os_unfair_lock_unlock(&self->_remoteComplicationsLock);
  if (hasLoaded)
  {
    os_unfair_lock_lock(&self->_remoteComplicationsLock);
    if (self->_fetchingApps)
    {
      v5 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        wantsAppFetch = self->_wantsAppFetch;
        v7[0] = 67109120;
        v7[1] = wantsAppFetch;
        _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "NTKCompanionRemoteComplicationManager: Attempted to fetch installed apps while already retrieving installed apps! Deferring until after the first operation completes... (previously defered=%d)", v7, 8u);
      }

      self->_wantsAppFetch = 1;
      os_unfair_lock_unlock(&self->_remoteComplicationsLock);
    }

    else
    {
      os_unfair_lock_unlock(&self->_remoteComplicationsLock);

      [(NTKCompanionRemoteComplicationManager *)self _queryInstalledApps];
    }
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBB640] object:0];
  [defaultCenter removeObserver:self name:@"NTKCompanion3rdPartyAppInstallStartedNotification" object:0];
  [defaultCenter removeObserver:self name:@"NTKSystemAppStateChangedNotification" object:0];
  [(NTKComplicationCollection *)self->_remoteComplications removeObserver:self];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277CEAF60], self);

  v5.receiver = self;
  v5.super_class = NTKCompanionRemoteComplicationManager;
  [(NTKCompanionRemoteComplicationManager *)&v5 dealloc];
}

- (void)_queryInstalledApps
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  os_unfair_lock_lock(&self->_remoteComplicationsLock);
  *&self->_fetchingApps = 1;
  os_unfair_lock_unlock(&self->_remoteComplicationsLock);
  v4 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "NTKCompanionRemoteComplicationManager: Fetching installed apps for remote complication manager...", buf, 2u);
  }

  objc_initWeak(buf, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__NTKCompanionRemoteComplicationManager__queryInstalledApps__block_invoke;
  aBlock[3] = &unk_27877F668;
  objc_copyWeak(&v23, buf);
  aBlock[4] = self;
  v5 = dictionary;
  v22 = v5;
  v6 = _Block_copy(aBlock);
  os_unfair_lock_lock(&self->_remoteComplicationsLock);
  isRunningGraceOrLater = [(CLKDevice *)self->_device isRunningGraceOrLater];
  pdrDevice = [(CLKDevice *)self->_device pdrDevice];
  os_unfair_lock_unlock(&self->_remoteComplicationsLock);
  pairingID = [pdrDevice pairingID];
  if (pdrDevice)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __60__NTKCompanionRemoteComplicationManager__queryInstalledApps__block_invoke_2_17;
    v19[3] = &unk_27877F690;
    v19[4] = self;
    v20 = v5;
    v10 = _Block_copy(v19);
    v11 = dispatch_group_create();
    dispatch_group_enter(v11);
    dispatch_group_notify(v11, self->_serialQueue, v6);
    dispatch_group_enter(v11);
    mEMORY[0x277CEAF80] = [MEMORY[0x277CEAF80] sharedDeviceConnection];
    if (isRunningGraceOrLater)
    {
      v13 = v17;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __60__NTKCompanionRemoteComplicationManager__queryInstalledApps__block_invoke_2_22;
      v17[3] = &unk_27877F6B8;
      v18 = isRunningGraceOrLater;
      v14 = pairingID;
      v17[4] = v14;
      v17[5] = v11;
      v17[6] = v10;
      [mEMORY[0x277CEAF80] enumerateInstalledApplicationsOnDeviceWithPairingID:v14 withBlock:v17];
    }

    else
    {
      v13 = v16;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __60__NTKCompanionRemoteComplicationManager__queryInstalledApps__block_invoke_24;
      v16[3] = &unk_27877F708;
      v15 = pairingID;
      v16[4] = v15;
      v16[5] = v11;
      v16[6] = v10;
      [mEMORY[0x277CEAF80] enumerateLocallyAvailableApplicationsForDeviceWithPairingID:v15 options:3 withBlock:v16];
    }

    dispatch_group_leave(v11);
  }

  else
  {
    v6[2](v6);
  }

  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);
}

void __60__NTKCompanionRemoteComplicationManager__queryInstalledApps__block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    os_unfair_lock_lock(a1[4] + 4);
    v3 = [a1[5] copy];
    [a1[4] setInstalledComplications:v3];

    os_unfair_lock_unlock(a1[4] + 4);
    [a1[4] _queue_reloadApps];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__NTKCompanionRemoteComplicationManager__queryInstalledApps__block_invoke_2;
    block[3] = &unk_27877DB10;
    block[4] = a1[4];
    dispatch_async(MEMORY[0x277D85CD0], block);
    os_unfair_lock_lock(WeakRetained + 4);
    if (WeakRetained[10])
    {
      os_unfair_lock_unlock(WeakRetained + 4);
      v4 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "NTKCompanionRemoteComplicationManager: Finished fetching apps, but beginning a backlogged refresh", buf, 2u);
      }

      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __60__NTKCompanionRemoteComplicationManager__queryInstalledApps__block_invoke_16;
      v7[3] = &unk_27877DB10;
      v7[4] = WeakRetained;
      v5 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v7);
    }

    else
    {
      v6 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "NTKCompanionRemoteComplicationManager: Finished fetching apps", buf, 2u);
      }

      *(WeakRetained + 9) = 0;
      os_unfair_lock_unlock(WeakRetained + 4);
    }
  }
}

void __60__NTKCompanionRemoteComplicationManager__queryInstalledApps__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 8) & 1) == 0)
  {
    *(v2 + 8) = 1;
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 postNotificationName:@"NTKCompanionRemoteComplicationManagerDidLoadNotification" object:*(a1 + 32)];
  }
}

void __60__NTKCompanionRemoteComplicationManager__queryInstalledApps__block_invoke_2_17(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 companionAppBundleID];
  if ([v4 length])
  {
    v19 = 0;
    v5 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v4 allowPlaceholder:1 error:&v19];
    v6 = v19;
    if (!v5)
    {
      v7 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __60__NTKCompanionRemoteComplicationManager__queryInstalledApps__block_invoke_2_17_cold_1(v4);
      }
    }

    v8 = [v5 applicationState];
    v9 = [v8 isRestricted];

    if (v9)
    {
      v10 = [v3 bundleIdentifier];
      v11 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v21 = v10;
        v22 = 2112;
        v23 = v4;
        _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "Complication: Restricted app with bundleID: %@ - %@ on companion", buf, 0x16u);
      }

      goto LABEL_14;
    }
  }

  v12 = [v3 watchKitAppExtensionBundleID];
  if (v12 || ([v3 bundleIdentifier], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    v14 = *(*(a1 + 32) + 56);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__NTKCompanionRemoteComplicationManager__queryInstalledApps__block_invoke_19;
    v15[3] = &unk_27877E238;
    v16 = *(a1 + 40);
    v17 = v13;
    v18 = v3;
    v6 = v13;
    dispatch_sync(v14, v15);

    v5 = v16;
LABEL_14:
  }
}

uint64_t __60__NTKCompanionRemoteComplicationManager__queryInstalledApps__block_invoke_2_22(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    (*(*(a1 + 48) + 16))();
    objc_autoreleasePoolPop(v8);
  }

  else
  {
    if (v6 && *(a1 + 56) == 1)
    {
      v9 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __60__NTKCompanionRemoteComplicationManager__queryInstalledApps__block_invoke_2_22_cold_1(a1);
      }
    }

    dispatch_group_leave(*(a1 + 40));
  }

  return 1;
}

uint64_t __60__NTKCompanionRemoteComplicationManager__queryInstalledApps__block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [v5 bundleIdentifier];
    if (v8)
    {
      dispatch_group_enter(*(a1 + 40));
      v9 = [MEMORY[0x277CEAF80] sharedDeviceConnection];
      v10 = *(a1 + 32);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __60__NTKCompanionRemoteComplicationManager__queryInstalledApps__block_invoke_25;
      v13[3] = &unk_27877F6E0;
      v16 = *(a1 + 48);
      v14 = v5;
      v15 = *(a1 + 40);
      [v9 applicationIsInstalledOnDeviceWithPairingID:v10 withBundleID:v8 completion:v13];
    }
  }

  else
  {
    if (v6)
    {
      v11 = _NTKLoggingObjectForDomain(24, "NTKLoggingDomainCompanionApp");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __60__NTKCompanionRemoteComplicationManager__queryInstalledApps__block_invoke_2_22_cold_1(a1);
      }
    }

    dispatch_group_leave(*(a1 + 40));
  }

  return 1;
}

void __60__NTKCompanionRemoteComplicationManager__queryInstalledApps__block_invoke_25(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v5 = objc_autoreleasePoolPush();
    (*(*(a1 + 48) + 16))();
    objc_autoreleasePoolPop(v5);
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)_queue_reloadApps
{
  v85 = *MEMORY[0x277D85DE8];
  _safeInstalledComplications = [(NTKCompanionRemoteComplicationManager *)self _safeInstalledComplications];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  os_unfair_lock_lock(&self->_remoteComplicationsLock);
  v4 = self->_remoteComplications;
  device = [(NTKCompanionRemoteComplicationManager *)self device];
  v56 = [device supportsPDRCapability:2817310462];

  selfCopy = self;
  os_unfair_lock_unlock(&self->_remoteComplicationsLock);
  [(NTKComplicationCollection *)v4 clients];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = v77 = 0u;
  v6 = [obj countByEnumeratingWithState:&v74 objects:v84 count:16];
  v51 = v4;
  v52 = _safeInstalledComplications;
  if (v6)
  {
    v7 = v6;
    v58 = *v75;
    do
    {
      v8 = 0;
      v54 = v7;
      do
      {
        if (*v75 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v74 + 1) + 8 * v8);
        array = [MEMORY[0x277CBEB18] array];
        v11 = [_safeInstalledComplications objectForKeyedSubscript:v9];
        if (v11)
        {
          if (v56)
          {
            v12 = [(NTKComplicationCollection *)v4 complicationDescriptorsForClientIdentifier:v9];
            v70 = 0u;
            v71 = 0u;
            v72 = 0u;
            v73 = 0u;
            v13 = [v12 countByEnumeratingWithState:&v70 objects:v83 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v71;
              do
              {
                for (i = 0; i != v14; ++i)
                {
                  if (*v71 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = [[NTKCompanionSyncedComplication alloc] initWithRemoteApplication:v11 descriptor:*(*(&v70 + 1) + 8 * i)];
                  [array addObject:v17];
                }

                v14 = [v12 countByEnumeratingWithState:&v70 objects:v83 count:16];
              }

              while (v14);
              v4 = v51;
              _safeInstalledComplications = v52;
              v7 = v54;
            }
          }

          else
          {
            legacyComplicationDescriptor = [MEMORY[0x277CBB718] legacyComplicationDescriptor];
            v19 = [(NTKComplicationCollection *)v4 supportedTemplateFamiliesForClientIdentifier:v9 descriptor:legacyComplicationDescriptor];
            v12 = [MEMORY[0x277CBB718] legacyComplicationDescriptorWithSupportedFamilies:v19];

            v20 = [[NTKCompanionSyncedComplication alloc] initWithRemoteApplication:v11 descriptor:v12];
            [array addObject:v20];

            v7 = v54;
          }

          v21 = [array copy];
          [dictionary setObject:v21 forKeyedSubscript:v9];
        }

        ++v8;
      }

      while (v8 != v7);
      v7 = [obj countByEnumeratingWithState:&v74 objects:v84 count:16];
    }

    while (v7);
  }

  if ((v56 & 1) == 0)
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    allKeys = [_safeInstalledComplications allKeys];
    v22 = [allKeys countByEnumeratingWithState:&v66 objects:v82 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v67;
      v49 = *v67;
      do
      {
        v25 = 0;
        v50 = v23;
        do
        {
          if (*v67 != v24)
          {
            objc_enumerationMutation(allKeys);
          }

          v26 = *(*(&v66 + 1) + 8 * v25);
          allKeys2 = [dictionary allKeys];
          v28 = [allKeys2 containsObject:v26];

          if ((v28 & 1) == 0)
          {
            v59 = [v52 objectForKeyedSubscript:v26];
            v29 = +[NTKCompanionAppLibrary sharedAppLibrary];
            v62 = 0u;
            v63 = 0u;
            v64 = 0u;
            v65 = 0u;
            v57 = v29;
            allApps = [v29 allApps];
            v31 = [allApps countByEnumeratingWithState:&v62 objects:v81 count:16];
            if (v31)
            {
              v32 = v31;
              v33 = *v63;
LABEL_29:
              v34 = 0;
              while (1)
              {
                if (*v63 != v33)
                {
                  objc_enumerationMutation(allApps);
                }

                v35 = *(*(&v62 + 1) + 8 * v34);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v36 = v35;
                  complicationClientIdentifier = [v36 complicationClientIdentifier];
                  v38 = [complicationClientIdentifier isEqualToString:v26];

                  if (v38)
                  {

                    v24 = v49;
                    v23 = v50;
                    v39 = v59;
                    if (!v36)
                    {
                      goto LABEL_43;
                    }

                    v40 = MEMORY[0x277CBB718];
                    supportedFamilies = [v36 supportedFamilies];
                    v42 = [v40 legacyComplicationDescriptorWithSupportedFamilies:supportedFamilies];

                    v43 = [[NTKCompanionSyncedComplication alloc] initWithRemoteApplication:v59 descriptor:v42];
                    v80 = v43;
                    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v80 count:1];
                    [dictionary setObject:v44 forKeyedSubscript:v26];

                    goto LABEL_42;
                  }
                }

                if (v32 == ++v34)
                {
                  v32 = [allApps countByEnumeratingWithState:&v62 objects:v81 count:16];
                  if (v32)
                  {
                    goto LABEL_29;
                  }

                  v36 = allApps;
                  v24 = v49;
                  v23 = v50;
                  goto LABEL_41;
                }
              }
            }

            v36 = allApps;
LABEL_41:
            v39 = v59;
LABEL_42:

LABEL_43:
          }

          ++v25;
        }

        while (v25 != v23);
        v23 = [allKeys countByEnumeratingWithState:&v66 objects:v82 count:16];
      }

      while (v23);
    }

    v4 = v51;
    _safeInstalledComplications = v52;
  }

  v45 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v79 = dictionary;
    _os_log_impl(&dword_22D9C5000, v45, OS_LOG_TYPE_DEFAULT, "Complications did change: %@", buf, 0xCu);
  }

  os_unfair_lock_lock(&selfCopy->_syncedComplicationsLock);
  v46 = [dictionary copy];
  syncedComplications = selfCopy->_syncedComplications;
  selfCopy->_syncedComplications = v46;

  os_unfair_lock_unlock(&selfCopy->_syncedComplicationsLock);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__NTKCompanionRemoteComplicationManager__queue_reloadApps__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = selfCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __58__NTKCompanionRemoteComplicationManager__queue_reloadApps__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NTKRemoteComplicationProviderComplicationsDidChange" object:*(a1 + 32)];
}

- (void)_reloadApps
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__NTKCompanionRemoteComplicationManager__reloadApps__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (id)_safeComplications
{
  os_unfair_lock_lock(&self->_syncedComplicationsLock);
  v3 = self->_syncedComplications;
  os_unfair_lock_unlock(&self->_syncedComplicationsLock);

  return v3;
}

- (id)_safeInstalledComplications
{
  os_unfair_lock_lock(&self->_installedComplicationsLock);
  v3 = self->_installedComplications;
  os_unfair_lock_unlock(&self->_installedComplicationsLock);

  return v3;
}

- (void)enumerateEnabledVendorsForComplicationFamily:(int64_t)family withBlock:(id)block
{
  blockCopy = block;
  _safeComplications = [(NTKCompanionRemoteComplicationManager *)self _safeComplications];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__NTKCompanionRemoteComplicationManager_enumerateEnabledVendorsForComplicationFamily_withBlock___block_invoke;
  aBlock[3] = &unk_27877F730;
  v14 = blockCopy;
  familyCopy = family;
  v8 = blockCopy;
  v9 = _Block_copy(aBlock);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __96__NTKCompanionRemoteComplicationManager_enumerateEnabledVendorsForComplicationFamily_withBlock___block_invoke_2;
  v11[3] = &unk_27877F758;
  v12 = v9;
  v10 = v9;
  [_safeComplications enumerateKeysAndObjectsUsingBlock:v11];
}

uint64_t __96__NTKCompanionRemoteComplicationManager_enumerateEnabledVendorsForComplicationFamily_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 descriptor];
  v5 = [v4 supportedFamilies];

  v12 = *(a1 + 40);
  while (1)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
    v7 = [v5 containsObject:v6];

    if (v7)
    {
      break;
    }

    if ((NTKFallbackComplicationFamilyForFamily(v12, &v12) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v8 = *(a1 + 32);
  v9 = [v3 clientIdentifier];
  v10 = [v3 appBundleIdentifier];
  (*(v8 + 16))(v8, v9, v10);

LABEL_6:
  return v7;
}

void __96__NTKCompanionRemoteComplicationManager_enumerateEnabledVendorsForComplicationFamily_withBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v10 != v7)
      {
        objc_enumerationMutation(v4);
      }

      if ((*(*(a1 + 32) + 16))(*(a1 + 32)))
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)itemIdForVendorWithClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _safeInstalledComplications = [(NTKCompanionRemoteComplicationManager *)self _safeInstalledComplications];
  v6 = [_safeInstalledComplications objectForKeyedSubscript:identifierCopy];

  storeMetadata = [v6 storeMetadata];
  itemID = [storeMetadata itemID];

  return itemID;
}

- (void)enumerateComplicationDescriptorsForClientIdentifier:(id)identifier withBlock:(id)block
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  blockCopy = block;
  _safeComplications = [(NTKCompanionRemoteComplicationManager *)self _safeComplications];
  v9 = [_safeComplications objectForKeyedSubscript:identifierCopy];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v19 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v18 + 1) + 8 * v14);
      v17 = 0;
      descriptor = [v15 descriptor];
      blockCopy[2](blockCopy, descriptor, &v17);

      if (v17)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateComplicationDescriptorsForClientIdentifier:(id)identifier family:(int64_t)family withBlock:(id)block
{
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  blockCopy = block;
  _safeComplications = [(NTKCompanionRemoteComplicationManager *)self _safeComplications];
  v22 = identifierCopy;
  v11 = [_safeComplications objectForKeyedSubscript:identifierCopy];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        descriptor = [v16 descriptor];
        supportedFamilies = [descriptor supportedFamilies];
        v19 = [MEMORY[0x277CCABB0] numberWithInteger:family];
        v20 = [supportedFamilies containsObject:v19];

        if (v20)
        {
          descriptor2 = [v16 descriptor];
          blockCopy[2](blockCopy, descriptor2);
        }
      }

      v13 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }
}

- (BOOL)vendorExistsWithClientIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier
{
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  _safeComplications = [(NTKCompanionRemoteComplicationManager *)self _safeComplications];
  v9 = [_safeComplications objectForKeyedSubscript:identifierCopy];

  firstObject = [v9 firstObject];

  appBundleIdentifier = [firstObject appBundleIdentifier];
  v12 = [appBundleIdentifier isEqualToString:bundleIdentifierCopy];

  return v12;
}

- (BOOL)isComplicationAvailable:(id)available forFamilies:(id)families
{
  v21 = *MEMORY[0x277D85DE8];
  availableCopy = available;
  familiesCopy = families;
  v8 = CLKLoggingObjectForDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = availableCopy;
    *&buf[12] = 2112;
    *&buf[14] = familiesCopy;
    _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "Checking if complication is available %@ for families %@", buf, 0x16u);
  }

  v9 = [MEMORY[0x277CBEB98] setWithArray:familiesCopy];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v20 = 0;
  clientIdentifier = [availableCopy clientIdentifier];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__NTKCompanionRemoteComplicationManager_isComplicationAvailable_forFamilies___block_invoke;
  v15[3] = &unk_27877F7A8;
  v11 = availableCopy;
  v16 = v11;
  v12 = v9;
  v17 = v12;
  v18 = buf;
  [(NTKCompanionRemoteComplicationManager *)self enumerateComplicationDescriptorsForClientIdentifier:clientIdentifier withBlock:v15];

  v13 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);

  return v13 & 1;
}

void __77__NTKCompanionRemoteComplicationManager_isComplicationAvailable_forFamilies___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) complicationDescriptor];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v8 = [v5 supportedFamilies];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __77__NTKCompanionRemoteComplicationManager_isComplicationAvailable_forFamilies___block_invoke_2;
    v9[3] = &unk_27877F780;
    v10 = *(a1 + 40);
    v11 = &v12;
    [v8 enumerateObjectsUsingBlock:v9];

    if (v13[3])
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      *a3 = 1;
    }

    _Block_object_dispose(&v12, 8);
  }
}

uint64_t __77__NTKCompanionRemoteComplicationManager_isComplicationAvailable_forFamilies___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) containsObject:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (id)localizedAppNameForClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _safeComplications = [(NTKCompanionRemoteComplicationManager *)self _safeComplications];
  v6 = [_safeComplications objectForKeyedSubscript:identifierCopy];
  firstObject = [v6 firstObject];

  if (!firstObject)
  {
    _safeInstalledComplications = [(NTKCompanionRemoteComplicationManager *)self _safeInstalledComplications];
    v9 = [_safeInstalledComplications objectForKeyedSubscript:identifierCopy];
    v10 = [NTKCompanionSyncedComplication alloc];
    legacyComplicationDescriptor = [MEMORY[0x277CBB718] legacyComplicationDescriptor];
    firstObject = [(NTKCompanionSyncedComplication *)v10 initWithRemoteApplication:v9 descriptor:legacyComplicationDescriptor];
  }

  localizedName = [(NTKCompanionSyncedComplication *)firstObject localizedName];

  return localizedName;
}

void __60__NTKCompanionRemoteComplicationManager__queryInstalledApps__block_invoke_2_17_cold_1(uint64_t a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = a1;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2(&dword_22D9C5000, v1, v2, "Could not check restrictions for app with bundleID: %@ - %@", v3, DWORD2(v3));
}

void __60__NTKCompanionRemoteComplicationManager__queryInstalledApps__block_invoke_2_22_cold_1(uint64_t a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2(&dword_22D9C5000, v1, v2, "Couldn't fetch apps on device %@: %@", v3, DWORD2(v3));
}

@end