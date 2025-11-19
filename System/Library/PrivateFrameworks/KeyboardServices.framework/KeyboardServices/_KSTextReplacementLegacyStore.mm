@interface _KSTextReplacementLegacyStore
+ (id)basePersistentStoreURL;
+ (id)cachedStorePath;
+ (id)legacyImportFilePaths;
+ (id)legacyImportWordKeyPairsFromFiles:(id)a3;
+ (id)legacyStorePath;
+ (id)textReplacementEntriesFromManagedObjects:(id)a3;
- (BOOL)_mergeShortcut:(id)a3 phrase:(id)a4 fromContext:(id)a5;
- (BOOL)_shouldMergeShortcut:(id)a3 phrase:(id)a4 intoContext:(id)a5;
- (BOOL)detectAndCleanDuplicatesWithContext:(id)a3;
- (BOOL)mergeEntriesForUbiquityIdentityChangeFromURL:(id)a3 firstDelete:(BOOL)a4;
- (BOOL)mergeEntriesForUbiquityIdentityChangeIfNecessary;
- (BOOL)mergeEntriesFromAllStoresIncludeLocalVariations:(BOOL)a3;
- (BOOL)migrateEntriesFromStoreAtURL:(id)a3 error:(id *)a4;
- (BOOL)needsMaintenance;
- (BOOL)save;
- (BOOL)writeEntriesToCache:(id)a3;
- (NSManagedObjectContext)managedObjectContext;
- (NSPersistentStore)persistentStore;
- (_KSTextReplacementLegacyStore)init;
- (_KSTextReplacementLegacyStore)initWithBaseURL:(id)a3;
- (double)minimumUptimeRemaining;
- (id)_deleteTransaction:(id)a3;
- (id)currentStoreIndentity;
- (id)entityDescription;
- (id)entriesFromCache:(id *)a3;
- (id)entriesMatchingPredicate:(id)a3 sortDescriptors:(id)a4;
- (id)managedObjectModelURL;
- (id)mergeShortcutsFromContext:(id)a3;
- (id)removeEntriesWithPredicate:(id)a3;
- (id)storeURLForMergeAfterUbiquityIdentityChangeFromToken:(id)a3 toToken:(id)a4 withLastKnownToken:(id)a5 shouldDeleteFirst:(BOOL *)a6;
- (id)textReplacementEntries;
- (void)_deleteDuplicatesOfShortcut:(id)a3 phrase:(id)a4 count:(int64_t)a5 withContext:(id)a6;
- (void)addEntries:(id)a3 removeEntries:(id)a4 withCompletionHandler:(id)a5;
- (void)cleanup;
- (void)dealloc;
- (void)didMaintenance;
- (void)didMergeEntriesForNewUbiquityIdentity:(id)a3;
- (void)didMergeEntriesForOtherLocalPeers:(id)a3;
- (void)endMinimumUptime;
- (void)iCloudAccountDidChange:(id)a3;
- (void)importLegacyEntries;
- (void)importSampleShortcutsIfNecessary;
- (void)insertEntryWithValue:(id)a3;
- (void)loadMaintenancePreferencesIfNecessary;
- (void)loadPersistentStoreIfNecessary;
- (void)migrateSundanceData;
- (void)migrateTellurideData;
- (void)performMaintenanceIfNecessary;
- (void)persistentStoreCoordinatorStoresDidChange:(id)a3;
- (void)persistentStoreCoordinatorStoresWillChange:(id)a3;
- (void)persistentStoreDidImportUbiquitousContentChanges:(id)a3;
- (void)prepareForMigration;
- (void)queryTextReplacementsWithCallback:(id)a3;
- (void)queryTextReplacementsWithPredicate:(id)a3 callback:(id)a4;
- (void)removeAllEntries;
- (void)requestMinimumUptime;
- (void)requestSync:(unint64_t)a3 withCompletionBlock:(id)a4;
- (void)retirePersistentStoreAtURL:(id)a3;
- (void)runLegacyMigration;
- (void)scheduleCacheUpdate:(id)a3;
- (void)unloadPersistentStore;
@end

@implementation _KSTextReplacementLegacyStore

- (id)managedObjectModelURL
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"UserDictionary" withExtension:@"mom"];

  return v3;
}

- (void)dealloc
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = +[_KSUtilities userDefaultsSuiteName];
  v5 = [v3 initWithSuiteName:v4];

  [v5 setBool:-[_KSTextReplacementLegacyStore shouldUpdateTheCache](self forKey:{"shouldUpdateTheCache"), @"KSLSShouldUpdateCache"}];
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self];

  if (self->_suspendedForAccountChange)
  {
    v7 = [(_KSTextReplacementLegacyStore *)self workQueue];
    dispatch_resume(v7);

    self->_suspendedForAccountChange = 0;
  }

  softLinkBRDaemonConnectionInvalidate();

  v8.receiver = self;
  v8.super_class = _KSTextReplacementLegacyStore;
  [(_KSTextReplacementLegacyStore *)&v8 dealloc];
}

- (_KSTextReplacementLegacyStore)initWithBaseURL:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = _KSTextReplacementLegacyStore;
  v6 = [(_KSTextReplacementLegacyStore *)&v20 init];
  v7 = v6;
  if (v6)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49___KSTextReplacementLegacyStore_initWithBaseURL___block_invoke;
    block[3] = &unk_2797F6310;
    v8 = v6;
    v19 = v8;
    if (initWithBaseURL__onceToken != -1)
    {
      dispatch_once(&initWithBaseURL__onceToken, block);
    }

    objc_storeStrong(&v8->_workQueue, initWithBaseURL__cdWorkQueueShared);
    objc_storeStrong(&v8->_persistentStoreCoordinator, initWithBaseURL__pscShared);
    objc_storeStrong(&v8->_baseURL, a3);
    v9 = [objc_opt_class() cachedStorePath];
    cacheFilePath = v8->_cacheFilePath;
    v8->_cacheFilePath = v9;

    [(_KSTextReplacementLegacyStore *)v8 setMinimumUptimeDidExpire:1];
    v11 = [MEMORY[0x277CBEAA8] date];
    [(_KSTextReplacementLegacyStore *)v8 setPersistentStoreDidLoadTime:v11];

    v12 = objc_alloc(MEMORY[0x277CBEBD0]);
    v13 = +[_KSUtilities userDefaultsSuiteName];
    v14 = [v12 initWithSuiteName:v13];

    v8->_shouldUpdateTheCache = [v14 BOOLForKey:@"KSLSShouldUpdateCache"];
    v8->_shouldDisableCaching = [v14 BOOLForKey:@"KSShouldDisableCaching"];
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v8 selector:sel_cleanup name:@"_KSTRShouldCleanupResources" object:0];

    if (!v8->_shouldDisableCaching)
    {
      v16 = [MEMORY[0x277CCAB98] defaultCenter];
      [v16 addObserver:v8 selector:sel_iCloudAccountDidChange_ name:*MEMORY[0x277CCA7C8] object:0];
    }
  }

  return v7;
}

- (_KSTextReplacementLegacyStore)init
{
  v3 = [objc_opt_class() basePersistentStoreURL];
  v4 = [(_KSTextReplacementLegacyStore *)self initWithBaseURL:v3];

  return v4;
}

- (double)minimumUptimeRemaining
{
  v3 = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_not_V2(v3);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [(_KSTextReplacementLegacyStore *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55___KSTextReplacementLegacyStore_minimumUptimeRemaining__block_invoke;
  v7[3] = &unk_2797F6F70;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)cleanup
{
  v3 = [(_KSTextReplacementLegacyStore *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40___KSTextReplacementLegacyStore_cleanup__block_invoke;
  block[3] = &unk_2797F6310;
  block[4] = self;
  dispatch_async(v3, block);
}

- (NSManagedObjectContext)managedObjectContext
{
  v3 = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(v3);

  managedObjectContext = self->_managedObjectContext;
  if (!managedObjectContext)
  {
    v5 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
    v6 = self->_managedObjectContext;
    self->_managedObjectContext = v5;

    [(NSManagedObjectContext *)self->_managedObjectContext _setDelegate:self];
    v7 = self->_managedObjectContext;
    v8 = [(_KSTextReplacementLegacyStore *)self persistentStoreCoordinator];
    [(NSManagedObjectContext *)v7 setPersistentStoreCoordinator:v8];

    [(NSManagedObjectContext *)self->_managedObjectContext setMergePolicy:*MEMORY[0x277CBE1C8]];
    managedObjectContext = self->_managedObjectContext;
  }

  v9 = managedObjectContext;

  return v9;
}

- (void)loadPersistentStoreIfNecessary
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136315650;
  v5 = "[_KSTextReplacementLegacyStore loadPersistentStoreIfNecessary]";
  v6 = 2112;
  v7 = a1;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_2557E2000, log, OS_LOG_TYPE_ERROR, "%s  couldn't load persistent store at url: %@, error: %@", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)unloadPersistentStore
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(_KSTextReplacementLegacyStore *)self persistentStoreCoordinator];
  v4 = [(_KSTextReplacementLegacyStore *)self persistentStore];
  v8 = 0;
  [v3 removePersistentStore:v4 error:&v8];
  v5 = v8;

  [(_KSTextReplacementLegacyStore *)self setUbiquityStoreLoaded:0];
  if (v5)
  {
    v6 = KSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v10 = "[_KSTextReplacementLegacyStore unloadPersistentStore]";
      _os_log_impl(&dword_2557E2000, v6, OS_LOG_TYPE_INFO, "%s  ERROR: failed to unload PSC store", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)requestMinimumUptime
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = KSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v13 = "[_KSTextReplacementLegacyStore requestMinimumUptime]";
    _os_log_impl(&dword_2557E2000, v3, OS_LOG_TYPE_INFO, "%s  persistentstore loaded, requesting minimum uptime", buf, 0xCu);
  }

  v4 = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(v4);

  if ([(_KSTextReplacementLegacyStore *)self minimumUptimeDidExpire])
  {
    v5 = os_transaction_create();
    uptimeTransaction = self->_uptimeTransaction;
    self->_uptimeTransaction = v5;

    [(_KSTextReplacementLegacyStore *)self setMinimumUptimeDidExpire:0];
    v7 = [MEMORY[0x277CBEAA8] date];
    [(_KSTextReplacementLegacyStore *)self setPersistentStoreDidLoadTime:v7];

    v8 = dispatch_time(0, 180000000000);
    v9 = [(_KSTextReplacementLegacyStore *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53___KSTextReplacementLegacyStore_requestMinimumUptime__block_invoke;
    block[3] = &unk_2797F6310;
    block[4] = self;
    dispatch_after(v8, v9, block);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)endMinimumUptime
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(v3);

  if (![(_KSTextReplacementLegacyStore *)self minimumUptimeDidExpire])
  {
    uptimeTransaction = self->_uptimeTransaction;
    self->_uptimeTransaction = 0;

    [(_KSTextReplacementLegacyStore *)self setMinimumUptimeDidExpire:1];
    v5 = KSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[_KSTextReplacementLegacyStore endMinimumUptime]";
      _os_log_impl(&dword_2557E2000, v5, OS_LOG_TYPE_INFO, "%s  Ending minimum uptime", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (NSPersistentStore)persistentStore
{
  v2 = [(_KSTextReplacementLegacyStore *)self persistentStoreCoordinator];
  v3 = [v2 persistentStores];
  v4 = [v3 firstObject];

  return v4;
}

- (void)importSampleShortcutsIfNecessary
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = KSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v20 = "[_KSTextReplacementLegacyStore importSampleShortcutsIfNecessary]";
    _os_log_impl(&dword_2557E2000, v4, OS_LOG_TYPE_INFO, "%s  importing sample shortcut", buf, 0xCu);
  }

  objc_initWeak(&location, self);
  if (![(_KSTextReplacementLegacyStore *)self pendingSampleShortcutImport])
  {
    v5 = objc_alloc(MEMORY[0x277CBEBD0]);
    v6 = +[_KSUtilities userDefaultsSuiteName];
    v7 = [v5 initWithSuiteName:v6];

    v8 = [v7 stringForKey:@"kDidInsertSampleShortcutForPeer"];
    v9 = [(_KSTextReplacementLegacyStore *)self currentStoreIndentity];
    if ([v8 isEqualToString:v9])
    {
      v10 = KSCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v20 = "[_KSTextReplacementLegacyStore importSampleShortcutsIfNecessary]";
        _os_log_impl(&dword_2557E2000, v10, OS_LOG_TYPE_INFO, "%s  already imported sample shortcut", buf, 0xCu);
      }
    }

    else
    {
      [(_KSTextReplacementLegacyStore *)self setPendingSampleShortcutImport:1];
      v10 = +[_KSTextReplacementHelper sampleShortcut];
      v18 = v10;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __65___KSTextReplacementLegacyStore_importSampleShortcutsIfNecessary__block_invoke;
      v13[3] = &unk_2797F73A0;
      objc_copyWeak(&v16, &location);
      v14 = v7;
      v15 = v9;
      [(_KSTextReplacementLegacyStore *)self addEntries:v11 removeEntries:0 withCompletionHandler:v13];

      objc_destroyWeak(&v16);
    }
  }

  objc_destroyWeak(&location);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)prepareForMigration
{
  v3 = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_not_V2(v3);

  v4 = dispatch_semaphore_create(0);
  v5 = [(_KSTextReplacementLegacyStore *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52___KSTextReplacementLegacyStore_prepareForMigration__block_invoke;
  v8[3] = &unk_2797F71B8;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  dispatch_async(v5, v8);

  v7 = dispatch_time(0, 180000000000);
  dispatch_semaphore_wait(v6, v7);
}

- (void)addEntries:(id)a3 removeEntries:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [(_KSTextReplacementLegacyStore *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80___KSTextReplacementLegacyStore_addEntries_removeEntries_withCompletionHandler___block_invoke;
  v15[3] = &unk_2797F73C8;
  objc_copyWeak(&v20, &location);
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)requestSync:(unint64_t)a3 withCompletionBlock:(id)a4
{
  v6 = a4;
  v7 = [(_KSTextReplacementLegacyStore *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65___KSTextReplacementLegacyStore_requestSync_withCompletionBlock___block_invoke;
  block[3] = &unk_2797F6750;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)removeAllEntries
{
  v3 = [(_KSTextReplacementLegacyStore *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49___KSTextReplacementLegacyStore_removeAllEntries__block_invoke;
  block[3] = &unk_2797F6310;
  block[4] = self;
  dispatch_async(v3, block);
}

- (id)removeEntriesWithPredicate:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__4;
  v23 = __Block_byref_object_dispose__4;
  v24 = 0;
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:1 selector:sel_compare_];
  v25[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];

  v8 = [(_KSTextReplacementLegacyStore *)self entriesMatchingPredicate:v4 sortDescriptors:v7];
  v9 = [(_KSTextReplacementLegacyStore *)self managedObjectContext];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60___KSTextReplacementLegacyStore_removeEntriesWithPredicate___block_invoke;
  v15[3] = &unk_2797F6338;
  v10 = v8;
  v16 = v10;
  v11 = v9;
  v17 = v11;
  v18 = &v19;
  [v11 performBlockAndWait:v15];

  objc_autoreleasePoolPop(v5);
  v12 = v20[5];
  _Block_object_dispose(&v19, 8);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_deleteTransaction:(id)a3
{
  v4 = a3;
  v5 = [v4 valueToDelete];

  if (v5)
  {
    v6 = MEMORY[0x277CCAC30];
    v7 = [v4 valueToDelete];
    v8 = [v7 phrase];
    v9 = [v4 valueToDelete];
    v10 = [v9 shortcut];
    v11 = [v6 predicateWithFormat:@"phrase == %@ AND shortcut == %@", v8, v10];

    v12 = [(_KSTextReplacementLegacyStore *)self removeEntriesWithPredicate:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)textReplacementEntries
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  v3 = [(_KSTextReplacementLegacyStore *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55___KSTextReplacementLegacyStore_textReplacementEntries__block_invoke;
  v6[3] = &unk_2797F6F70;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = [objc_opt_class() textReplacementEntriesFromManagedObjects:v8[5]];
  _Block_object_dispose(&v7, 8);

  return v4;
}

+ (id)textReplacementEntriesFromManagedObjects:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v10 phrase];
        if ([(_KSTextReplacementEntry *)v11 length])
        {
          v12 = [v10 shortcut];
          v13 = [v12 length];

          if (!v13)
          {
            continue;
          }

          v11 = objc_alloc_init(_KSTextReplacementEntry);
          v14 = [v10 phrase];
          [(_KSTextReplacementEntry *)v11 setPhrase:v14];

          v15 = [v10 shortcut];
          [(_KSTextReplacementEntry *)v11 setShortcut:v15];

          v16 = MEMORY[0x277CBEAA8];
          v17 = [v10 timestamp];
          v18 = [v16 dateWithTimeIntervalSince1970:{objc_msgSend(v17, "integerValue")}];
          [(_KSTextReplacementEntry *)v11 setTimestamp:v18];

          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)queryTextReplacementsWithCallback:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"TRUEPREDICATE"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67___KSTextReplacementLegacyStore_queryTextReplacementsWithCallback___block_invoke;
  v7[3] = &unk_2797F7058;
  v8 = v4;
  v6 = v4;
  [(_KSTextReplacementLegacyStore *)self queryTextReplacementsWithPredicate:v5 callback:v7];
}

- (void)queryTextReplacementsWithPredicate:(id)a3 callback:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:1 selector:sel_compare_];
  v19[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];

  v10 = [(_KSTextReplacementLegacyStore *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77___KSTextReplacementLegacyStore_queryTextReplacementsWithPredicate_callback___block_invoke;
  v15[3] = &unk_2797F6D48;
  v15[4] = self;
  v16 = v6;
  v17 = v9;
  v18 = v7;
  v11 = v7;
  v12 = v9;
  v13 = v6;
  dispatch_async(v10, v15);

  v14 = *MEMORY[0x277D85DE8];
}

- (id)entriesFromCache:(id *)a3
{
  v4 = MEMORY[0x277CBEA90];
  v5 = [(_KSTextReplacementLegacyStore *)self cacheFilePath];
  v6 = [v4 dataWithContentsOfFile:v5];

  if (v6)
  {
    v7 = MEMORY[0x277CCAAC8];
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v7 unarchivedObjectOfClasses:v10 fromData:v6 error:a3];
  }

  else
  {
    [_KSTextReplacementHelper errorWithCode:13 description:@"Couldn't decode cache"];
    *a3 = v11 = 0;
  }

  return v11;
}

- (void)scheduleCacheUpdate:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if (![(_KSTextReplacementLegacyStore *)self didScheduleCacheUpdate])
  {
    v6 = KSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v17 = "[_KSTextReplacementLegacyStore scheduleCacheUpdate:]";
      _os_log_impl(&dword_2557E2000, v6, OS_LOG_TYPE_INFO, "%s  Scheduling cache update", buf, 0xCu);
    }

    v7 = dispatch_time(0, 500000000);
    v8 = [(_KSTextReplacementLegacyStore *)self workQueue];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __53___KSTextReplacementLegacyStore_scheduleCacheUpdate___block_invoke;
    v13 = &unk_2797F71B8;
    v14 = self;
    v15 = v4;
    dispatch_after(v7, v8, &v10);

    [(_KSTextReplacementLegacyStore *)self setDidScheduleCacheUpdate:1, v10, v11, v12, v13, v14];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)writeEntriesToCache:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v15];
  v5 = v15;
  if (v5)
  {
    v6 = v5;
    v7 = KSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v6 description];
      *buf = 136315394;
      v17 = "[_KSTextReplacementLegacyStore writeEntriesToCache:]";
      v18 = 2112;
      v19 = v8;
      v9 = "%s  ERROR: Couldn't create data from TR entries: %@";
LABEL_7:
      _os_log_impl(&dword_2557E2000, v7, OS_LOG_TYPE_INFO, v9, buf, 0x16u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v10 = [(_KSTextReplacementLegacyStore *)self cacheFilePath];
  v14 = 0;
  v11 = 1;
  [v4 writeToFile:v10 options:1 error:&v14];
  v6 = v14;

  if (v6)
  {
    v7 = KSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v6 description];
      *buf = 136315394;
      v17 = "[_KSTextReplacementLegacyStore writeEntriesToCache:]";
      v18 = 2112;
      v19 = v8;
      v9 = "%s  could not save TR cache: %@";
      goto LABEL_7;
    }

LABEL_8:

    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)iCloudAccountDidChange:(id)a3
{
  v4 = [(_KSTextReplacementLegacyStore *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56___KSTextReplacementLegacyStore_iCloudAccountDidChange___block_invoke;
  block[3] = &unk_2797F6310;
  block[4] = self;
  dispatch_async(v4, block);
}

- (id)entityDescription
{
  v2 = [(_KSTextReplacementLegacyStore *)self persistentStoreCoordinator];
  v3 = [v2 managedObjectModel];
  v4 = [v3 entities];
  v5 = [v4 lastObject];

  return v5;
}

- (void)insertEntryWithValue:(id)a3
{
  v4 = a3;
  v5 = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(_KSTextReplacementLegacyStore *)self managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54___KSTextReplacementLegacyStore_insertEntryWithValue___block_invoke;
  v9[3] = &unk_2797F71B8;
  v10 = v6;
  v11 = v4;
  v7 = v4;
  v8 = v6;
  [v8 performBlockAndWait:v9];
}

- (BOOL)save
{
  v3 = [(_KSTextReplacementLegacyStore *)self persistentStore];

  if (v3)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 1;
    v4 = [(_KSTextReplacementLegacyStore *)self managedObjectContext];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37___KSTextReplacementLegacyStore_save__block_invoke;
    v7[3] = &unk_2797F70F0;
    v5 = v4;
    v8 = v5;
    v9 = &v10;
    [v5 performBlockAndWait:v7];
    LOBYTE(v3) = *(v11 + 24);

    _Block_object_dispose(&v10, 8);
  }

  return v3 & 1;
}

- (id)entriesMatchingPredicate:(id)a3 sortDescriptors:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__4;
  v24 = __Block_byref_object_dispose__4;
  v25 = 0;
  v9 = [(_KSTextReplacementLegacyStore *)self managedObjectContext];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74___KSTextReplacementLegacyStore_entriesMatchingPredicate_sortDescriptors___block_invoke;
  v15[3] = &unk_2797F73F0;
  v15[4] = self;
  v10 = v6;
  v16 = v10;
  v11 = v7;
  v17 = v11;
  v19 = &v20;
  v12 = v9;
  v18 = v12;
  [v12 performWithOptions:4 andBlock:v15];
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

- (void)persistentStoreDidImportUbiquitousContentChanges:(id)a3
{
  v4 = a3;
  v5 = [(_KSTextReplacementLegacyStore *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82___KSTextReplacementLegacyStore_persistentStoreDidImportUbiquitousContentChanges___block_invoke;
  v7[3] = &unk_2797F71B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (id)mergeShortcutsFromContext:(id)a3
{
  v63[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  objc_initWeak(&location, self);
  NSLog(&cfstr_MergingShortcu.isa);
  v7 = [v4 persistentStoreCoordinator];
  v8 = [v7 managedObjectModel];
  v9 = [v8 entities];
  v10 = [v9 lastObject];

  v11 = MEMORY[0x277CBE428];
  v12 = [v10 name];
  v13 = [v11 fetchRequestWithEntityName:v12];

  v14 = [v10 propertiesByName];
  v15 = [v14 objectForKey:@"shortcut"];

  v16 = [v10 propertiesByName];
  v17 = [v16 objectForKey:@"phrase"];

  v63[0] = v15;
  v63[1] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:2];
  [v13 setPropertiesToFetch:v18];

  v62[0] = v15;
  v62[1] = v17;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:2];
  [v13 setPropertiesToGroupBy:v19];

  [v13 setResultType:2];
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__4;
  v59 = __Block_byref_object_dispose__4;
  v60 = 0;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x3032000000;
  v53[3] = __Block_byref_object_copy__4;
  v53[4] = __Block_byref_object_dispose__4;
  v54 = 0;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __59___KSTextReplacementLegacyStore_mergeShortcutsFromContext___block_invoke;
  v48[3] = &unk_2797F7418;
  v51 = v53;
  v20 = v4;
  v49 = v20;
  v21 = v13;
  v50 = v21;
  v52 = &v55;
  [v20 performBlockAndWait:v48];
  if (v56[5])
  {
    NSLog(&cfstr_ErrorFetchingS.isa);
    v22 = v56[5];
  }

  else
  {
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    v23 = [(_KSTextReplacementLegacyStore *)self managedObjectContext];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __59___KSTextReplacementLegacyStore_mergeShortcutsFromContext___block_invoke_2;
    v38[3] = &unk_2797F7468;
    v41 = v53;
    v24 = v23;
    v39 = v24;
    objc_copyWeak(&v43, &location);
    v40 = v20;
    v42 = &v44;
    [v40 performBlockAndWait:v38];
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x2020000000;
    v37 = 0;
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __59___KSTextReplacementLegacyStore_mergeShortcutsFromContext___block_invoke_4;
    v31 = &unk_2797F7490;
    v33 = v36;
    v34 = &v44;
    v25 = v24;
    v32 = v25;
    v35 = &v55;
    [v25 performBlockAndWait:&v28];
    NSLog(&cfstr_CompletedMerge.isa, v45[3], v28, v29, v30, v31);
    v22 = v56[5];

    _Block_object_dispose(v36, 8);
    objc_destroyWeak(&v43);

    _Block_object_dispose(&v44, 8);
  }

  _Block_object_dispose(v53, 8);
  _Block_object_dispose(&v55, 8);

  objc_destroyWeak(&location);
  objc_autoreleasePoolPop(v6);

  v26 = *MEMORY[0x277D85DE8];

  return v22;
}

- (BOOL)_shouldMergeShortcut:(id)a3 phrase:(id)a4 intoContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x277CBE428];
  v11 = a5;
  v12 = [(_KSTextReplacementLegacyStore *)self entityDescription];
  v13 = [v12 name];
  v14 = [v10 fetchRequestWithEntityName:v13];

  v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"shortcut == %@ && phrase == %@", v8, v9];
  [v14 setPredicate:v15];
  [v14 setFetchLimit:1];
  [v14 setResultType:1];
  v22 = 0;
  v16 = [v11 executeFetchRequest:v14 error:&v22];

  v17 = v22;
  v18 = v17;
  if (v17)
  {
    NSLog(&cfstr_ErrorWhileFetc.isa, v17);
  }

  v19 = [v16 count] == 0;
  v20 = [MEMORY[0x277CCABB0] numberWithBool:v19];
  NSLog(&cfstr_ShouldMergeSho.isa, v8, v9, v20);

  LOBYTE(v20) = [v16 count] == 0;
  return v20;
}

- (BOOL)_mergeShortcut:(id)a3 phrase:(id)a4 fromContext:(id)a5
{
  v40[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  NSLog(&cfstr_MergeShortcut.isa, v8, v9);
  context = objc_autoreleasePoolPush();
  v11 = [v10 persistentStoreCoordinator];
  v12 = [v11 managedObjectModel];
  v13 = [v12 entities];
  v14 = [v13 lastObject];

  v15 = MEMORY[0x277CBE428];
  v36 = v14;
  v16 = [v14 name];
  v17 = [v15 fetchRequestWithEntityName:v16];

  v38 = v9;
  v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"shortcut == %@ && phrase == %@", v8, v9];
  v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:0 selector:sel_compare_];
  v40[0] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];

  [v17 setPredicate:v18];
  [v17 setSortDescriptors:v20];
  [v17 setFetchLimit:1];
  v39 = 0;
  v21 = [v10 executeFetchRequest:v17 error:&v39];
  v22 = v39;
  v23 = v22;
  if (v22)
  {
    NSLog(&cfstr_ErrorFetchingS_0.isa, v22);
    v24 = 0;
  }

  else
  {
    v25 = self;
    v26 = [v21 firstObject];
    v24 = v26 != 0;
    if (v26)
    {
      v33 = objc_alloc(MEMORY[0x277CBE438]);
      [(_KSTextReplacementLegacyStore *)v25 entityDescription];
      v27 = v35 = v8;
      v28 = [(_KSTextReplacementLegacyStore *)v25 managedObjectContext];
      v29 = [v33 initWithEntity:v27 insertIntoManagedObjectContext:v28];
      v34 = v10;
      v30 = v29;

      v8 = v35;
      [v30 _copyAttributeValuesFromObject:v26];

      v10 = v34;
    }
  }

  objc_autoreleasePoolPop(context);
  if (!v24)
  {
    NSLog(&cfstr_UnableToMigrat.isa);
  }

  v31 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BOOL)migrateEntriesFromStoreAtURL:(id)a3 error:(id *)a4
{
  v29[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(_KSTextReplacementLegacyStore *)self persistentStore];
  v9 = [v8 URL];
  v10 = [v6 isEqual:v9];

  if ((v10 & 1) == 0)
  {
    NSLog(&cfstr_AttemptingShor.isa, v6);
    v12 = objc_alloc(MEMORY[0x277CBE450]);
    v13 = [(_KSTextReplacementLegacyStore *)self managedObjectModelURL];
    v14 = [v12 initWithContentsOfURL:v13];

    v15 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:v14];
    v16 = *MEMORY[0x277CBE2E8];
    v17 = *MEMORY[0x277CBE2B0];
    v28 = *MEMORY[0x277CBE2B0];
    v29[0] = MEMORY[0x277CBEC38];
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v19 = [v15 addPersistentStoreWithType:v16 configuration:0 URL:v6 options:v18 error:a4];

    v20 = *a4;
    if (v19)
    {
      if ([v20 code] != 257)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v21 = [v20 localizedDescription];
      NSLog(&cfstr_CouldNotOpenSt.isa, v6, v21);

      if ([*a4 code] != 257)
      {
        LOBYTE(v11) = 0;
LABEL_12:

        goto LABEL_13;
      }
    }

    NSLog(&cfstr_LooksLikeWeTri.isa, v6);
    NSLog(&cfstr_TryingAgainWit.isa);
    v26 = v17;
    v27 = MEMORY[0x277CBEC28];
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v11 = [v15 addPersistentStoreWithType:v16 configuration:0 URL:v6 options:v22 error:a4];

    if (!v11)
    {
      v23 = [*a4 localizedDescription];
      NSLog(&cfstr_StillCouldNotO.isa, v6, v23);
      goto LABEL_11;
    }

LABEL_8:
    LOBYTE(v11) = 1;
    v23 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
    [v23 setPersistentStoreCoordinator:v15];
    *a4 = [(_KSTextReplacementLegacyStore *)self mergeShortcutsFromContext:v23];
    NSLog(&cfstr_ShortcutMerge.isa, @"success", v6);
LABEL_11:

    goto LABEL_12;
  }

  LOBYTE(v11) = 0;
LABEL_13:

  v24 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)retirePersistentStoreAtURL:(id)a3
{
  v27[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_KSTextReplacementLegacyStore *)self persistentStore];
  v6 = [v5 URL];
  v7 = [v4 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    v8 = KSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v21 = "[_KSTextReplacementLegacyStore retirePersistentStoreAtURL:]";
      v22 = 2112;
      v23 = v4;
      _os_log_impl(&dword_2557E2000, v8, OS_LOG_TYPE_INFO, "%s  Retiring store at %@", buf, 0x16u);
    }

    v9 = objc_alloc(MEMORY[0x277CBE450]);
    v10 = [(_KSTextReplacementLegacyStore *)self managedObjectModelURL];
    v11 = [v9 initWithContentsOfURL:v10];

    v12 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:v11];
    v26 = *MEMORY[0x277CCA1B0];
    v27[0] = *MEMORY[0x277CCA1A0];
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v14 = *MEMORY[0x277CBE2E8];
    v19 = 0;
    v15 = [v12 destroyPersistentStoreAtURL:v4 withType:v14 options:v13 error:&v19];
    v16 = v19;
    if ((v15 & 1) == 0)
    {
      v17 = KSCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v21 = "[_KSTextReplacementLegacyStore retirePersistentStoreAtURL:]";
        v22 = 2112;
        v23 = v4;
        v24 = 2112;
        v25 = v16;
        _os_log_impl(&dword_2557E2000, v17, OS_LOG_TYPE_INFO, "%s  Could not retire store at %@: %@", buf, 0x20u);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)storeURLForMergeAfterUbiquityIdentityChangeFromToken:(id)a3 toToken:(id)a4 withLastKnownToken:(id)a5 shouldDeleteFirst:(BOOL *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v10 || !v11)
  {
    v14 = 0;
    if (v10 && !v11)
    {
      if (a6)
      {
        *a6 = 1;
      }

      NSLog(&cfstr_UbiquityContai_1.isa);
      goto LABEL_11;
    }
  }

  else
  {
    if (!v12 || ([v11 isEqual:v12] & 1) != 0)
    {
      NSLog(&cfstr_UbiquityContai.isa);
LABEL_11:
      v15 = MEMORY[0x277CBE4D8];
      v16 = [(_KSTextReplacementLegacyStore *)self baseURL];
      v14 = [v15 ubiquityStoreURLForStoreURL:v16 ubiquityIdentityToken:v10 ubiquityName:@"UserDictionary"];

      goto LABEL_13;
    }

    NSLog(&cfstr_UbiquityContai_0.isa);
    v14 = 0;
  }

LABEL_13:

  return v14;
}

- (BOOL)mergeEntriesForUbiquityIdentityChangeFromURL:(id)a3 firstDelete:(BOOL)a4
{
  v4 = a4;
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v4)
  {
    [(_KSTextReplacementLegacyStore *)self removeAllEntries];
  }

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v6 path];
  v9 = [v7 fileExistsAtPath:v8];

  if ((v9 & 1) == 0)
  {
    v13 = KSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "[_KSTextReplacementLegacyStore mergeEntriesForUbiquityIdentityChangeFromURL:firstDelete:]";
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_2557E2000, v13, OS_LOG_TYPE_INFO, "%s  file to merge does not exist: %@", buf, 0x16u);
    }

    v11 = 0;
    goto LABEL_9;
  }

  v20 = 0;
  v10 = [(_KSTextReplacementLegacyStore *)self migrateEntriesFromStoreAtURL:v6 error:&v20];
  v11 = v20;
  if (!v10)
  {
LABEL_9:
    NSLog(&cfstr_FailedMergeAft.isa);
    v14 = [(_KSTextReplacementLegacyStore *)self managedObjectContext];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __90___KSTextReplacementLegacyStore_mergeEntriesForUbiquityIdentityChangeFromURL_firstDelete___block_invoke;
    v18[3] = &unk_2797F6310;
    v19 = v14;
    v15 = v14;
    [v15 performBlockAndWait:v18];

    v12 = 0;
    goto LABEL_10;
  }

  NSLog(&cfstr_MergeSuccessfu.isa);
  v12 = 1;
LABEL_10:

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)currentStoreIndentity
{
  v2 = [(_KSTextReplacementLegacyStore *)self persistentStore];
  v3 = [v2 URL];

  v4 = [v3 pathComponents];
  v5 = [v4 indexOfObject:@"CoreDataUbiquitySupport"];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL || [v4 count] <= (v5 + 1))
  {
    v9 = 0;
  }

  else
  {
    v6 = [v4 objectAtIndex:?];
    v7 = [v4 indexOfObject:@"UserDictionary"];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL || [v4 count] <= (v7 + 1))
    {
      v8 = &stru_286796E30;
    }

    else
    {
      v8 = [v4 objectAtIndex:?];
    }

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v6, v8];
  }

  return v9;
}

- (BOOL)mergeEntriesFromAllStoresIncludeLocalVariations:(BOOL)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(_KSTextReplacementLegacyStore *)self persistentStore];
  v7 = [v6 URL];

  v8 = [v7 pathComponents];
  v9 = [v8 indexOfObject:@"CoreDataUbiquitySupport"];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL || (v10 = v9, v11 = v9 + 1, [v8 count] <= (v9 + 1)))
  {
    v16 = 1;
    goto LABEL_37;
  }

  v12 = [v8 subarrayWithRange:{0, v10}];
  v13 = [v8 objectAtIndex:v11];
  v14 = CFPreferencesCopyAppValue(@"UserDictionaryLocalPeerIdentityCurrent", @"com.apple.Preferences");
  v15 = [v13 isEqualToString:v14];
  if (!a3 && v15)
  {
    v16 = 1;
    goto LABEL_36;
  }

  v44 = v15;
  v39 = v14;
  v40 = v13;
  v41 = v12;
  v42 = v8;
  v17 = [MEMORY[0x277CCACA8] pathWithComponents:v12];
  v18 = [_KSUtilities findAllDbsInDirectory:v17];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (!v20)
  {
    v16 = 1;
    goto LABEL_30;
  }

  v21 = v20;
  v22 = *v47;
  v43 = *MEMORY[0x277CBE2C8];
  v16 = 1;
  do
  {
    v23 = 0;
    do
    {
      if (*v47 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v24 = *(*(&v46 + 1) + 8 * v23);
      v25 = [v7 path];
      v26 = [v25 isEqualToString:v24];

      if ((v26 & 1) == 0)
      {
        v27 = [MEMORY[0x277CBEBC0] fileURLWithPath:v24];
        v45 = 0;
        v28 = [(_KSTextReplacementLegacyStore *)self migrateEntriesFromStoreAtURL:v27 error:&v45];
        v29 = v45;

        v30 = KSCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v51 = "[_KSTextReplacementLegacyStore mergeEntriesFromAllStoresIncludeLocalVariations:]";
          v52 = 2112;
          v53 = v24;
          v54 = 2112;
          v55 = v29;
          _os_log_impl(&dword_2557E2000, v30, OS_LOG_TYPE_INFO, "%s  merged entries from db: %@, error: %@", buf, 0x20u);
        }

        if (v28 || [v29 code] == 134080)
        {
          if ((v44 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v32 = [v29 domain];
          v33 = v32 != v43;

          if (((v33 | v44) & 1) == 0)
          {
LABEL_18:
            v31 = [MEMORY[0x277CBEBC0] fileURLWithPath:v24];
            [(_KSTextReplacementLegacyStore *)self retirePersistentStoreAtURL:v31];
          }
        }

        if (v29)
        {
          v16 = 0;
        }

        else
        {
          v16 = v28;
        }
      }

      ++v23;
    }

    while (v21 != v23);
    v34 = [v19 countByEnumeratingWithState:&v46 objects:v56 count:16];
    v21 = v34;
  }

  while (v34);
LABEL_30:

  v13 = v40;
  if ((v44 & 1) == 0)
  {
    if (v16)
    {
      v35 = v40;
    }

    else
    {
      v35 = 0;
    }

    [(_KSTextReplacementLegacyStore *)self didMergeEntriesForOtherLocalPeers:v35];
  }

  v36 = [MEMORY[0x277CCAB98] defaultCenter];
  [v36 postNotificationName:@"_KSTRLegacyStoreDidImportChangesNotification" object:0];

  v12 = v41;
  v8 = v42;
  v14 = v39;
LABEL_36:

LABEL_37:
  v37 = *MEMORY[0x277D85DE8];
  return v16 & 1;
}

- (void)didMergeEntriesForOtherLocalPeers:(id)a3
{
  v3 = a3;
  NSLog(&cfstr_SavingObserved.isa, @"com.apple.Preferences");
  CFPreferencesSetAppValue(@"UserDictionaryLocalPeerIdentityCurrent", v3, @"com.apple.Preferences");

  CFPreferencesAppSynchronize(@"com.apple.Preferences");
}

- (BOOL)mergeEntriesForUbiquityIdentityChangeIfNecessary
{
  v3 = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = CFPreferencesCopyAppValue(@"UserDictionaryUbiquityIdentityTokenLastKnown", @"com.apple.Preferences");
  v5 = CFPreferencesCopyAppValue(@"UserDictionaryUbiquityIdentityTokenCurrent", @"com.apple.Preferences");
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 ubiquityIdentityToken];

  v11 = 0;
  v8 = [(_KSTextReplacementLegacyStore *)self storeURLForMergeAfterUbiquityIdentityChangeFromToken:v5 toToken:v7 withLastKnownToken:v4 shouldDeleteFirst:&v11];
  if (v8)
  {
    v9 = [(_KSTextReplacementLegacyStore *)self mergeEntriesForUbiquityIdentityChangeFromURL:v8 firstDelete:v11];
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  if (v7 != v5 && ([v7 isEqual:v5] & 1) == 0)
  {
    [(_KSTextReplacementLegacyStore *)self didMergeEntriesForNewUbiquityIdentity:v7];
  }

LABEL_8:

  return v9;
}

- (void)didMergeEntriesForNewUbiquityIdentity:(id)a3
{
  value = a3;
  NSLog(&cfstr_SavingObserved_0.isa, @"com.apple.Preferences");
  CFPreferencesSetAppValue(@"UserDictionaryUbiquityIdentityTokenCurrent", value, @"com.apple.Preferences");
  if (value)
  {
    CFPreferencesSetAppValue(@"UserDictionaryUbiquityIdentityTokenLastKnown", value, @"com.apple.Preferences");
  }

  CFPreferencesAppSynchronize(@"com.apple.Preferences");
}

- (void)performMaintenanceIfNecessary
{
  v3 = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(v3);

  [(_KSTextReplacementLegacyStore *)self save];
  if ([(_KSTextReplacementLegacyStore *)self needsMaintenance])
  {
    v4 = [(_KSTextReplacementLegacyStore *)self managedObjectContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62___KSTextReplacementLegacyStore_performMaintenanceIfNecessary__block_invoke;
    v10[3] = &unk_2797F6310;
    v5 = v4;
    v11 = v5;
    [v5 performBlockAndWait:v10];
    v6 = [(_KSTextReplacementLegacyStore *)self managedObjectContext];
    [(_KSTextReplacementLegacyStore *)self detectAndCleanDuplicatesWithContext:v6];

    [(_KSTextReplacementLegacyStore *)self didMaintenance];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62___KSTextReplacementLegacyStore_performMaintenanceIfNecessary__block_invoke_2;
    v8[3] = &unk_2797F6310;
    v9 = v5;
    v7 = v5;
    [v7 performBlockAndWait:v8];
  }
}

- (BOOL)needsMaintenance
{
  v3 = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(v3);

  [(_KSTextReplacementLegacyStore *)self loadMaintenancePreferencesIfNecessary];
  if ([(_KSTextReplacementLegacyStore *)self forceMaintenance])
  {
    return 1;
  }

  v4 = [(_KSTextReplacementLegacyStore *)self lastMaintenanceDate];
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  v6 = [(_KSTextReplacementLegacyStore *)self lastMaintenanceDate];
  [v6 timeIntervalSinceNow];
  v8 = v7;

  if (v8 < 0.0)
  {
    v8 = -v8;
  }

  return v8 > 1209600.0 || [(_KSTextReplacementLegacyStore *)self importedSinceMaintenance]> 20;
}

- (void)loadMaintenancePreferencesIfNecessary
{
  v3 = [(_KSTextReplacementLegacyStore *)self lastMaintenanceDate];

  if (!v3)
  {
    v6 = CFPreferencesCopyAppValue(@"UserDictionaryLastMaintenanceDate", @"com.apple.Preferences");
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(_KSTextReplacementLegacyStore *)self setLastMaintenanceDate:v6];
      }
    }

    v4 = [(_KSTextReplacementLegacyStore *)self lastMaintenanceDate];

    if (!v4)
    {
      v5 = [MEMORY[0x277CBEAA8] distantPast];
      [(_KSTextReplacementLegacyStore *)self setLastMaintenanceDate:v5];
    }

    [(_KSTextReplacementLegacyStore *)self setImportedSinceMaintenance:CFPreferencesGetAppIntegerValue(@"UserDictionaryImportedSinceMaintenance", @"com.apple.Preferences", 0)];
  }
}

- (void)didMaintenance
{
  v3 = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(v3);

  [(_KSTextReplacementLegacyStore *)self setForceMaintenance:0];
  value = objc_alloc_init(MEMORY[0x277CBEAA8]);
  [(_KSTextReplacementLegacyStore *)self setLastMaintenanceDate:value];
  CFPreferencesSetAppValue(@"UserDictionaryLastMaintenanceDate", value, @"com.apple.Preferences");
  [(_KSTextReplacementLegacyStore *)self setImportedSinceMaintenance:0];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[_KSTextReplacementLegacyStore importedSinceMaintenance](self, "importedSinceMaintenance")}];
  CFPreferencesSetAppValue(@"UserDictionaryImportedSinceMaintenance", v4, @"com.apple.Preferences");

  CFPreferencesAppSynchronize(@"com.apple.Preferences");
}

- (BOOL)detectAndCleanDuplicatesWithContext:(id)a3
{
  v43[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(v5);

  NSLog(&cfstr_DetectAndClean.isa);
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v41[3] = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy__4;
  v35[4] = __Block_byref_object_dispose__4;
  v36 = 0;
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277CBE428];
  v7 = [(_KSTextReplacementLegacyStore *)self entityDescription];
  v8 = [v7 name];
  v9 = [v6 fetchRequestWithEntityName:v8];

  [v9 setIncludesPendingChanges:0];
  v10 = [MEMORY[0x277CCA9C0] expressionWithFormat:@"count:(shortcut)"];
  v11 = objc_alloc_init(MEMORY[0x277CBE410]);
  [v11 setName:@"count"];
  [v11 setExpression:v10];
  [v11 setExpressionResultType:300];
  v12 = [(_KSTextReplacementLegacyStore *)self entityDescription];
  v13 = [v12 propertiesByName];
  v14 = [v13 objectForKey:@"shortcut"];

  v15 = [(_KSTextReplacementLegacyStore *)self entityDescription];
  v16 = [v15 propertiesByName];
  v17 = [v16 objectForKey:@"phrase"];

  v43[0] = v14;
  v43[1] = v17;
  v43[2] = v11;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:3];
  [v9 setPropertiesToFetch:v18];

  v42[0] = v14;
  v42[1] = v17;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
  [v9 setPropertiesToGroupBy:v19];

  [v9 setResultType:2];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__4;
  v32[4] = __Block_byref_object_dispose__4;
  v33 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __69___KSTextReplacementLegacyStore_detectAndCleanDuplicatesWithContext___block_invoke;
  v24[3] = &unk_2797F74B8;
  v27 = v32;
  v20 = v4;
  v25 = v20;
  v21 = v9;
  v26 = v21;
  v28 = v35;
  v29 = &v37;
  objc_copyWeak(&v31, &location);
  v30 = v41;
  [v20 performBlockAndWait:v24];
  LOBYTE(v19) = *(v38 + 24);
  objc_destroyWeak(&v31);

  _Block_object_dispose(v32, 8);
  objc_destroyWeak(&location);
  _Block_object_dispose(v35, 8);

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(v41, 8);

  v22 = *MEMORY[0x277D85DE8];
  return v19 & 1;
}

- (void)_deleteDuplicatesOfShortcut:(id)a3 phrase:(id)a4 count:(int64_t)a5 withContext:(id)a6
{
  v42[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = v10;
  v13 = v11;
  v14 = a6;
  v39 = v13;
  NSLog(&cfstr_FoundDuplicate.isa, v12, v13, a5);
  v15 = 0;
  v16 = a5;
  v17 = self;
  v37 = self;
  v38 = v12;
  do
  {
    v18 = objc_autoreleasePoolPush();
    [v14 setMergePolicy:*MEMORY[0x277CBE1C8]];
    v19 = MEMORY[0x277CBE428];
    v20 = [(_KSTextReplacementLegacyStore *)v17 entityDescription];
    v21 = [v20 name];
    v22 = [v19 fetchRequestWithEntityName:v21];

    v23 = [MEMORY[0x277CCAC30] predicateWithFormat:@"shortcut == %@ && phrase == %@", v12, v39];
    v24 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:0 selector:sel_compare_];
    v42[0] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];

    [v22 setPredicate:v23];
    [v22 setSortDescriptors:v25];
    [v22 setFetchBatchSize:1000];
    [v22 setFetchLimit:10000];
    [v22 setResultType:1];
    v41 = 0;
    v26 = [v14 executeFetchRequest:v22 error:&v41];
    v27 = v41;
    if (v27)
    {
      v28 = v27;
      NSLog(&cfstr_ErrorWhileFetc_0.isa, v27);
    }

    else
    {
      if ([v26 count] >= 2)
      {
        v29 = 1;
        do
        {
          v30 = [v26 objectAtIndex:v29];
          v31 = [v14 objectWithID:v30];
          [v14 deleteObject:v31];

          ++v29;
        }

        while (v29 < [v26 count]);
      }

      v40 = 0;
      v32 = [v14 save:&v40];
      v33 = v40;
      v28 = v33;
      if ((v32 & 1) != 0 || !v33)
      {
        [v14 reset];
      }

      else
      {
        NSLog(&cfstr_ErrorWhileDele.isa, v33);
        v34 = [v28 userInfo];
        NSLog(&cfstr_ErrorUserinfo.isa, v34);
      }

      v17 = v37;
      v12 = v38;
    }

    objc_autoreleasePoolPop(v18);
  }

  while (v15++ != v16 / 0x2710);

  v36 = *MEMORY[0x277D85DE8];
}

+ (id)legacyImportFilePaths
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = +[_KSUtilities keyboardDirectory];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"ja", @"zh-Pinyin", @"zh-Zhuyin", @"latin", 0}];
    v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [@"SerializedUserWords-" stringByAppendingString:*(*(&v16 + 1) + 8 * i)];
          v10 = [v2 stringByAppendingPathComponent:v9];

          v11 = [MEMORY[0x277CCAA00] defaultManager];
          v12 = [v11 fileExistsAtPath:v10];

          if (v12)
          {
            [v15 addObject:v10];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v15 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)legacyImportWordKeyPairsFromFiles:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x277CBEA60] arrayWithContentsOfFile:{*(*(&v13 + 1) + 8 * i), v13}];
        if (v10)
        {
          [v4 addObjectsFromArray:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)importLegacyEntries
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [objc_opt_class() legacyImportFilePaths];
  if ([v4 count])
  {
    v5 = [objc_opt_class() legacyImportWordKeyPairsFromFiles:v4];
    v6 = [v5 count];
    if ((v6 & 1) == 0)
    {
      v7 = [(_KSTextReplacementLegacyStore *)self persistentStore];

      if (v7)
      {
        if (v6)
        {
          for (i = 0; i < v6; i += 2)
          {
            v9 = objc_alloc_init(_KSTIUserDictionaryEntryValue);
            v10 = [v5 objectAtIndex:i];
            [(_KSTIUserDictionaryEntryValue *)v9 setPhrase:v10];

            v11 = [v5 objectAtIndex:i + 1];
            [(_KSTIUserDictionaryEntryValue *)v9 setShortcut:v11];

            [(_KSTextReplacementLegacyStore *)self insertEntryWithValue:v9];
          }
        }

        if ([(_KSTextReplacementLegacyStore *)self save])
        {
          v12 = [MEMORY[0x277CCAA00] defaultManager];
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v24 = v4;
          v13 = v4;
          v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v27;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v27 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v26 + 1) + 8 * j);
                if ([v12 fileExistsAtPath:v18])
                {
                  v25 = 0;
                  v19 = [v12 removeItemAtPath:v18 error:&v25];
                  v20 = v25;
                  v21 = v20;
                  if ((v19 & 1) == 0)
                  {
                    NSLog(&cfstr_S.isa, "[_KSTextReplacementLegacyStore importLegacyEntries]", v20);
                  }
                }

                else
                {
                  v21 = 0;
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
            }

            while (v15);
          }

          v22 = [MEMORY[0x277CCAB98] defaultCenter];
          [v22 postNotificationName:@"_KSTRLegacyStoreDidImportChangesNotification" object:0];

          v4 = v24;
        }
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

+ (id)legacyStorePath
{
  v2 = +[_KSUtilities keyboardDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"UserDictionary.sqlite"];

  return v3;
}

- (void)migrateTellurideData
{
  v3 = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = +[_KSUtilities userDictionaryWordKeyPairsFilePathLegacy];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  if (v6)
  {
    v7 = [MEMORY[0x277CBEA60] arrayWithContentsOfFile:v4];
    if (!v7)
    {
      NSLog(&cfstr_CouldnTReadLeg.isa, v4);
LABEL_21:

      goto LABEL_22;
    }

    NSLog(&cfstr_PerformingMigr.isa, v4);
    v8 = [objc_opt_class() legacyStorePath];
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    if ([v9 fileExistsAtPath:v8])
    {
      v10 = [MEMORY[0x277CCAA00] defaultManager];
      v27 = 0;
      v11 = [v10 removeItemAtPath:v8 error:&v27];
      v12 = v27;

      if ((v11 & 1) == 0)
      {
        NSLog(&cfstr_CouldnTRemoveL.isa, v8, v12);
LABEL_20:

        goto LABEL_21;
      }

      v13 = v12;
    }

    else
    {

      v13 = 0;
    }

    v14 = [v7 count];
    if (!v14 || (v15 = v14, (v14 & 1) != 0))
    {
LABEL_14:
      v23 = [MEMORY[0x277CCAA00] defaultManager];
      v26 = v13;
      v24 = [v23 removeItemAtPath:v4 error:&v26];
      v12 = v26;

      if ((v24 & 1) == 0)
      {
        NSLog(&cfstr_CouldnTRemoveL_0.isa, v4, v12);
      }

      v25 = [MEMORY[0x277CCAB98] defaultCenter];
      [v25 postNotificationName:@"_KSTRLegacyStoreDidImportChangesNotification" object:0];
    }

    else
    {
      for (i = 0; i < v15; i += 2)
      {
        v17 = [(_KSTextReplacementLegacyStore *)self persistentStore];

        if (!v17)
        {
          v12 = v13;
          goto LABEL_20;
        }

        v18 = objc_alloc_init(_KSTIUserDictionaryEntryValue);
        v19 = [v7 objectAtIndex:i];
        [(_KSTIUserDictionaryEntryValue *)v18 setPhrase:v19];

        v20 = [v7 objectAtIndex:i + 1];
        [(_KSTIUserDictionaryEntryValue *)v18 setShortcut:v20];

        [(_KSTextReplacementLegacyStore *)self insertEntryWithValue:v18];
        v21 = [(_KSTIUserDictionaryEntryValue *)v18 shortcut];
        v22 = [(_KSTIUserDictionaryEntryValue *)v18 phrase];
        NSLog(&cfstr_AddedShortcutF.isa, v21, v22);
      }

      if ([(_KSTextReplacementLegacyStore *)self save])
      {
        goto LABEL_14;
      }

      NSLog(&cfstr_CouldnTSaveWor.isa, v13);
      v12 = v13;
    }

    goto LABEL_20;
  }

LABEL_22:
}

- (void)migrateSundanceData
{
  v3 = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = +[_KSTextReplacementLegacyStore legacyStorePath];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    v7 = +[_KSTextReplacementLegacyStore legacyStorePath];
    v8 = [(_KSTextReplacementLegacyStore *)self persistentStore];

    if (v8)
    {
      NSLog(&cfstr_PerformingMigr_0.isa, v7);
      v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
      v16 = 0;
      v10 = [(_KSTextReplacementLegacyStore *)self migrateEntriesFromStoreAtURL:v9 error:&v16];
      v11 = v16;

      if (v10)
      {
        NSLog(&cfstr_RemovingLegacy.isa, v7);

        v12 = [MEMORY[0x277CCAA00] defaultManager];
        v15 = 0;
        v13 = [v12 removeItemAtPath:v7 error:&v15];
        v11 = v15;

        if ((v13 & 1) == 0)
        {
          NSLog(&cfstr_CouldnTRemoveL.isa, v7, v11);
        }

        v14 = [MEMORY[0x277CCAB98] defaultCenter];
        [v14 postNotificationName:@"_KSTRLegacyStoreDidImportChangesNotification" object:0];
      }
    }
  }
}

- (void)runLegacyMigration
{
  [(_KSTextReplacementLegacyStore *)self importLegacyEntries];
  [(_KSTextReplacementLegacyStore *)self migrateTellurideData];

  [(_KSTextReplacementLegacyStore *)self migrateSundanceData];
}

+ (id)basePersistentStoreURL
{
  if (basePersistentStoreURL_onceToken != -1)
  {
    +[_KSTextReplacementLegacyStore basePersistentStoreURL];
  }

  v3 = basePersistentStoreURL_baseURL;

  return v3;
}

+ (id)cachedStorePath
{
  v2 = +[_KSUtilities keyboardDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"textReplacements.cache"];

  return v3;
}

- (void)persistentStoreCoordinatorStoresWillChange:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = KSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[_KSTextReplacementLegacyStore persistentStoreCoordinatorStoresWillChange:]";
    _os_log_impl(&dword_2557E2000, v5, OS_LOG_TYPE_INFO, "%s  >>> persistentStoreCoordinatorStoresWillChange", buf, 0xCu);
  }

  v6 = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_not_V2(v6);

  v7 = self;
  objc_sync_enter(v7);
  if ([(_KSTextReplacementLegacyStore *)v7 suspendedForAccountChange])
  {
    objc_sync_exit(v7);
  }

  else
  {
    [(_KSTextReplacementLegacyStore *)v7 setSuspendedForAccountChange:1];
    objc_sync_exit(v7);

    v8 = [(_KSTextReplacementLegacyStore *)v7 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76___KSTextReplacementLegacyStore_persistentStoreCoordinatorStoresWillChange___block_invoke;
    block[3] = &unk_2797F6310;
    block[4] = v7;
    dispatch_sync(v8, block);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)persistentStoreCoordinatorStoresDidChange:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = KSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[_KSTextReplacementLegacyStore persistentStoreCoordinatorStoresDidChange:]";
    _os_log_impl(&dword_2557E2000, v5, OS_LOG_TYPE_INFO, "%s  >>> persistentStoreCoordinatorStoresDidChange", buf, 0xCu);
  }

  v6 = self;
  objc_sync_enter(v6);
  if ([(_KSTextReplacementLegacyStore *)v6 suspendedForAccountChange])
  {
    [(_KSTextReplacementLegacyStore *)v6 setSuspendedForAccountChange:0];
    objc_sync_exit(v6);

    v7 = [(_KSTextReplacementLegacyStore *)v6 workQueue];
    dispatch_assert_queue_not_V2(v7);

    v8 = [(_KSTextReplacementLegacyStore *)v6 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75___KSTextReplacementLegacyStore_persistentStoreCoordinatorStoresDidChange___block_invoke;
    block[3] = &unk_2797F6310;
    block[4] = v6;
    dispatch_async(v8, block);

    v9 = KSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v14 = "[_KSTextReplacementLegacyStore persistentStoreCoordinatorStoresDidChange:]";
      _os_log_impl(&dword_2557E2000, v9, OS_LOG_TYPE_INFO, "%s  Resuming user dictionary after account change.", buf, 0xCu);
    }

    v10 = [(_KSTextReplacementLegacyStore *)v6 workQueue];
    dispatch_resume(v10);
  }

  else
  {
    objc_sync_exit(v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end