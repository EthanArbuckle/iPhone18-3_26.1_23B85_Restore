@interface BLTSyncSupportedAppList
- (BLTSyncSupportedAppList)init;
- (BLTSyncSupportedAppListDelegate)delegate;
- (BOOL)_handleAppListInstalled:(id)installed removed:(id)removed;
- (NSDictionary)installed;
- (NSSet)removed;
- (id)_syncSupportedAppListStoreURL;
- (id)supportedBundleIDsFromRecords:(id)records nonSyncSupportedBundleIDs:(id *)ds;
- (void)applicationIconDidChange:(id)change;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)dealloc;
- (void)init;
- (void)updateStoreWithInstalled:(id)installed removed:(id)removed;
@end

@implementation BLTSyncSupportedAppList

- (BLTSyncSupportedAppList)init
{
  v56 = *MEMORY[0x277D85DE8];
  v53.receiver = self;
  v53.super_class = BLTSyncSupportedAppList;
  v2 = [(BLTSyncSupportedAppList *)&v53 init];
  if (!v2)
  {
    goto LABEL_23;
  }

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.private.bulletindistributor.siriActionAppListQueue", v3);
  appListQueue = v2->_appListQueue;
  v2->_appListQueue = v4;

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  installed = v2->_installed;
  v2->_installed = v6;

  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  removed = v2->_removed;
  v2->_removed = v8;

  CFPreferencesAppSynchronize(@"com.apple.bulletindistributor");
  keyExistsAndHasValidFormat = 0;
  CFPreferencesGetAppIntegerValue(@"BLTSiriActionAppListVersion", @"com.apple.bulletindistributor", &keyExistsAndHasValidFormat);
  _syncSupportedAppListStoreURL = [(BLTSyncSupportedAppList *)v2 _syncSupportedAppListStoreURL];
  v11 = _syncSupportedAppListStoreURL;
  v12 = 0x277CBE000uLL;
  v43 = _syncSupportedAppListStoreURL;
  if (keyExistsAndHasValidFormat)
  {
    v13 = MEMORY[0x277CBEB58];
    v50 = 0;
    v14 = [MEMORY[0x277CBEA60] arrayWithContentsOfURL:_syncSupportedAppListStoreURL error:&v50];
    v15 = v50;
    v16 = [v13 setWithArray:v14];
    appListStore = v2->_appListStore;
    v2->_appListStore = v16;

    if (v15)
    {
      v18 = blt_general_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(BLTSyncSupportedAppList *)v11 init];
      }
    }
  }

  else
  {
    if (_syncSupportedAppListStoreURL)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      path = [v11 path];
      v21 = [defaultManager fileExistsAtPath:path];

      if (v21)
      {
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        v51 = 0;
        v23 = [defaultManager2 removeItemAtURL:v11 error:&v51];
        v24 = v51;

        if (!v23)
        {
          v42 = blt_general_log();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            [(BLTSyncSupportedAppList *)v24 init];
          }

          goto LABEL_13;
        }
      }
    }

    CFPreferencesSetAppValue(@"BLTSiriActionAppListVersion", &unk_28544B568, @"com.apple.bulletindistributor");
    CFPreferencesAppSynchronize(@"com.apple.bulletindistributor");
  }

LABEL_13:
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace addObserver:v2];

  v26 = [MEMORY[0x277CBEB58] set];
  [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v49 = 0u;
  v27 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v47;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v47 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v46 + 1) + 8 * i);
        v32 = objc_autoreleasePoolPush();
        bundleIdentifier = [v31 bundleIdentifier];
        [v26 addObject:bundleIdentifier];

        v54 = v31;
        v34 = [*(v12 + 2656) arrayWithObjects:&v54 count:1];
        v45 = 0;
        v35 = [(BLTSyncSupportedAppList *)v2 supportedBundleIDsFromRecords:v34 nonSyncSupportedBundleIDs:&v45];
        v36 = v12;
        v37 = v45;

        [(BLTSyncSupportedAppList *)v2 _handleAppListInstalled:v35 removed:v37];
        v12 = v36;

        objc_autoreleasePoolPop(v32);
      }

      v28 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v28);
  }

  v38 = [(NSMutableSet *)v2->_appListStore mutableCopy];
  [v38 minusSet:v26];
  if ([v38 count])
  {
    allObjects = [v38 allObjects];
    [(BLTSyncSupportedAppList *)v2 _handleAppListInstalled:0 removed:allObjects];
  }

LABEL_23:
  v40 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)supportedBundleIDsFromRecords:(id)records nonSyncSupportedBundleIDs:(id *)ds
{
  v33 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = recordsCopy;
  v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * v10);
        v12 = [MEMORY[0x277CD3A68] appInfoWithApplicationRecord:v11];
        supportedActions = [v12 supportedActions];
        if ([supportedActions count])
        {

LABEL_9:
          localizedName = [v11 localizedName];
          v17 = localizedName;
          if (!localizedName)
          {
            null = [MEMORY[0x277CBEB68] null];
            v17 = null;
          }

          bundleIdentifier = [v11 bundleIdentifier];
          [dictionary setObject:v17 forKeyedSubscript:bundleIdentifier];

          if (!localizedName)
          {
          }

LABEL_13:

          goto LABEL_14;
        }

        supportedActionsByExtensions = [v12 supportedActionsByExtensions];
        v15 = [supportedActionsByExtensions count];

        if (v15)
        {
          goto LABEL_9;
        }

        if ([v11 supportsLiveActivities])
        {
          localizedName = [v11 localizedName];
          null2 = localizedName;
          if (!localizedName)
          {
            null2 = [MEMORY[0x277CBEB68] null];
            v25 = null2;
          }

          bundleIdentifier2 = [v11 bundleIdentifier];
          [dictionary setObject:null2 forKeyedSubscript:bundleIdentifier2];

          if (!localizedName)
          {
          }

          goto LABEL_13;
        }

        if (ds)
        {
          array = *ds;
          if (!*ds)
          {
            array = [MEMORY[0x277CBEB18] array];
            *ds = array;
          }

          localizedName = [v11 bundleIdentifier];
          [array addObject:localizedName];
          goto LABEL_13;
        }

LABEL_14:

        ++v10;
      }

      while (v8 != v10);
      v22 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      v8 = v22;
    }

    while (v22);
  }

  v23 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)_syncSupportedAppListStoreURL
{
  syncSupportedAppListStoreURL = self->_syncSupportedAppListStoreURL;
  if (!syncSupportedAppListStoreURL)
  {
    v4 = BLTFileURLInPairingPath(@"siriActionAppListStore.plist");
    v5 = self->_syncSupportedAppListStoreURL;
    self->_syncSupportedAppListStoreURL = v4;

    syncSupportedAppListStoreURL = self->_syncSupportedAppListStoreURL;
  }

  return syncSupportedAppListStoreURL;
}

- (void)dealloc
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace removeObserver:self];

  v4.receiver = self;
  v4.super_class = BLTSyncSupportedAppList;
  [(BLTSyncSupportedAppList *)&v4 dealloc];
}

- (NSDictionary)installed
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  appListQueue = self->_appListQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__BLTSyncSupportedAppList_installed__block_invoke;
  v5[3] = &unk_278D31650;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(appListQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __36__BLTSyncSupportedAppList_installed__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSSet)removed
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  appListQueue = self->_appListQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__BLTSyncSupportedAppList_removed__block_invoke;
  v5[3] = &unk_278D31650;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(appListQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __34__BLTSyncSupportedAppList_removed__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)_handleAppListInstalled:(id)installed removed:(id)removed
{
  installedCopy = installed;
  removedCopy = removed;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  appListQueue = self->_appListQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__BLTSyncSupportedAppList__handleAppListInstalled_removed___block_invoke;
  v12[3] = &unk_278D31E38;
  v13 = installedCopy;
  selfCopy = self;
  v15 = removedCopy;
  v16 = &v17;
  v9 = removedCopy;
  v10 = installedCopy;
  dispatch_sync(appListQueue, v12);
  LOBYTE(appListQueue) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return appListQueue;
}

void __59__BLTSyncSupportedAppList__handleAppListInstalled_removed___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 32) allKeys];
    v3 = [MEMORY[0x277CBEB58] setWithArray:v2];
    v4 = [v3 mutableCopy];
    [v3 minusSet:*(*(a1 + 40) + 40)];
    if ([v3 count])
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      v5 = *(a1 + 32);
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __59__BLTSyncSupportedAppList__handleAppListInstalled_removed___block_invoke_2;
      v18 = &unk_278D31E10;
      v6 = v3;
      v7 = *(a1 + 40);
      v19 = v6;
      v20 = v7;
      [v5 enumerateKeysAndObjectsUsingBlock:&v15];
    }

    [v4 intersectSet:{*(*(a1 + 40) + 16), v15, v16, v17, v18}];
    if ([v4 count])
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      [*(*(a1 + 40) + 16) minusSet:v4];
    }
  }

  if ([*(a1 + 48) count])
  {
    v8 = [MEMORY[0x277CBEB58] setWithArray:*(a1 + 48)];
    v9 = [v8 mutableCopy];
    [v8 intersectSet:*(*(a1 + 40) + 40)];
    if ([v8 count])
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      [*(*(a1 + 40) + 16) unionSet:v8];
    }

    v10 = MEMORY[0x277CBEB98];
    v11 = [*(*(a1 + 40) + 8) allKeys];
    v12 = [v10 setWithArray:v11];
    [v9 intersectSet:v12];

    if ([v9 count])
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      v13 = *(*(a1 + 40) + 8);
      v14 = [v9 allObjects];
      [v13 removeObjectsForKeys:v14];
    }
  }
}

void __59__BLTSyncSupportedAppList__handleAppListInstalled_removed___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v6])
  {
    [*(*(a1 + 40) + 8) setObject:v5 forKeyedSubscript:v6];
  }
}

- (void)applicationsDidInstall:(id)install
{
  v7 = 0;
  v4 = BLTSyncSupportedBundleIDsFromProxies(install, &v7);
  v5 = v7;
  if ([(BLTSyncSupportedAppList *)self _handleAppListInstalled:v4 removed:v5])
  {
    delegate = [(BLTSyncSupportedAppList *)self delegate];
    [delegate syncSupportedAppListUpdated:self];
  }
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v7 = BLTSyncSupportedBundleIDsFromProxies(uninstall, 0);
  allKeys = [v7 allKeys];
  v5 = [(BLTSyncSupportedAppList *)self _handleAppListInstalled:0 removed:allKeys];

  if (v5)
  {
    delegate = [(BLTSyncSupportedAppList *)self delegate];
    [delegate syncSupportedAppListUpdated:self];
  }
}

- (void)applicationIconDidChange:(id)change
{
  v4 = BLTSyncSupportedBundleIDsFromProxies(change, 0);
  if ([v4 count])
  {
    appListQueue = self->_appListQueue;
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __52__BLTSyncSupportedAppList_applicationIconDidChange___block_invoke;
    v10 = &unk_278D31400;
    selfCopy = self;
    v12 = v4;
    dispatch_sync(appListQueue, &v7);
    v6 = [(BLTSyncSupportedAppList *)self delegate:v7];
    [v6 syncSupportedAppListUpdated:self];
  }
}

- (void)updateStoreWithInstalled:(id)installed removed:(id)removed
{
  installedCopy = installed;
  removedCopy = removed;
  appListQueue = self->_appListQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__BLTSyncSupportedAppList_updateStoreWithInstalled_removed___block_invoke;
  block[3] = &unk_278D316C8;
  block[4] = self;
  v12 = installedCopy;
  v13 = removedCopy;
  v9 = removedCopy;
  v10 = installedCopy;
  dispatch_sync(appListQueue, block);
}

void __60__BLTSyncSupportedAppList_updateStoreWithInstalled_removed___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) allObjects];
  [v2 removeObjectsForKeys:v3];

  [*(*(a1 + 32) + 16) minusSet:*(a1 + 48)];
  [*(*(a1 + 32) + 40) unionSet:*(a1 + 40)];
  [*(*(a1 + 32) + 40) minusSet:*(a1 + 48)];
  v4 = MEMORY[0x277CCAC58];
  v5 = [*(*(a1 + 32) + 40) allObjects];
  v6 = [v4 dataWithPropertyList:v5 format:200 options:0 error:0];

  v7 = [*(a1 + 32) _syncSupportedAppListStoreURL];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEA90] data];
    v20 = 0;
    v9 = [v8 writeToURL:v7 options:0 error:&v20];
    v10 = v20;

    if (v9)
    {
      v11 = *MEMORY[0x277CBE878];
      v19 = v10;
      v12 = [v7 setResourceValue:MEMORY[0x277CBEC38] forKey:v11 error:&v19];
      v13 = v19;

      if (v12)
      {
        v18 = v13;
        v14 = [v6 writeToURL:v7 options:0x10000000 error:&v18];
        v10 = v18;

        if (v14)
        {
          v15 = blt_general_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v17 = 0;
            _os_log_impl(&dword_241FB3000, v15, OS_LOG_TYPE_INFO, "Sync supported app list written.", &v17, 2u);
          }

          goto LABEL_11;
        }
      }

      else
      {
        v10 = v13;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v16 = [MEMORY[0x277CCAA00] defaultManager];
  [v16 removeItemAtURL:v7 error:0];

  v15 = blt_general_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    __60__BLTSyncSupportedAppList_updateStoreWithInstalled_removed___block_invoke_cold_1(v10, v7 == 0, v15);
  }

LABEL_11:
}

- (BLTSyncSupportedAppListDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)init
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "Error removing sync supported store: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __60__BLTSyncSupportedAppList_updateStoreWithInstalled_removed___block_invoke_cold_1(__CFString *a1, char a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = @"Unknown error";
  if (a2)
  {
    v3 = @"file URL is empty. Are the devices paired?";
  }

  if (a1)
  {
    v3 = a1;
  }

  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_241FB3000, log, OS_LOG_TYPE_ERROR, "Error storing sync supported app list. %@", &v5, 0xCu);
  v4 = *MEMORY[0x277D85DE8];
}

@end