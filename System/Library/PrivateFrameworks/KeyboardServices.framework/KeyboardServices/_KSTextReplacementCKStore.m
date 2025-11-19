@interface _KSTextReplacementCKStore
- (BOOL)isAccountAvailable;
- (_KSTextReplacementCKStore)initWithDirectoryPath:(id)a3;
- (id)cloudEntriesFromLocalEntries:(id)a3;
- (id)cloudRecordIDsForLocalEntries:(id)a3;
- (id)localEntriesFromCloudEntries:(id)a3;
- (id)queryDeletedEntries;
- (id)queryUpdatedLocalEntries;
- (id)textReplacementEntries;
- (unint64_t)countLocalEntriesToBeSynced;
- (unint64_t)decayedSyncCountForTime:(id)a3;
- (unint64_t)getSyncCount;
- (unint64_t)getSyncCountThresholdHalfLifeHours;
- (unint64_t)getSyncCountThrottleThreshold;
- (void)_requestSync:(unint64_t)a3 completionBlock:(id)a4;
- (void)_updateSyncCount:(unint64_t)a3 success:(BOOL)a4;
- (void)accountDidChange:(id)a3;
- (void)addEntries:(id)a3 removeEntries:(id)a4 withCompletionHandler:(id)a5;
- (void)dealloc;
- (void)importSampleShortcutsIfNecessary;
- (void)pullRemoteDataWithPriority:(unint64_t)a3 completionHandler:(id)a4;
- (void)pushAllLocalData;
- (void)pushLocalChangesWithPriority:(unint64_t)a3 completionHandler:(id)a4;
- (void)queryCloudIfFirstPullOrAccountChanged:(BOOL)a3;
- (void)queryMigrationStatusOnCloudWithCallback:(id)a3;
- (void)queryTextReplacementsWithCallback:(id)a3;
- (void)queryTextReplacementsWithPredicate:(id)a3 callback:(id)a4;
- (void)recordSyncStatus;
- (void)removeAllEntries;
- (void)removeAllEntriesWithCompletionHandler:(id)a3;
- (void)requestSync:(unint64_t)a3 withCompletionBlock:(id)a4;
- (void)userDidDeleteRecordZone:(id)a3;
@end

@implementation _KSTextReplacementCKStore

- (void)importSampleShortcutsIfNecessary
{
  dataQueue = self->_dataQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61___KSTextReplacementCKStore_importSampleShortcutsIfNecessary__block_invoke;
  block[3] = &unk_2797F6310;
  block[4] = self;
  dispatch_async(dataQueue, block);
}

- (_KSTextReplacementCKStore)initWithDirectoryPath:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = _KSTextReplacementCKStore;
  v5 = [(_KSTextReplacementCKStore *)&v20 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_UTILITY, 0);

    v8 = dispatch_queue_create("com.apple.keyboardServices.ckStore.syncWork", v7);
    syncQueue = v5->_syncQueue;
    v5->_syncQueue = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.keyboardServices.ckStore.dataQueue", v10);
    dataQueue = v5->_dataQueue;
    v5->_dataQueue = v11;

    v13 = [[_KSTextReplacementCoreDataStore alloc] initWithDirectoryPath:v4];
    coreDataStore = v5->_coreDataStore;
    v5->_coreDataStore = v13;

    [(_KSTextReplacementCKStore *)v5 importSampleShortcutsIfNecessary];
    v15 = [[_KSCloudKitManager alloc] initWithRecordZoneName:@"TextReplacements"];
    cloudKitManager = v5->_cloudKitManager;
    v5->_cloudKitManager = v15;

    [(_KSCloudKitManager *)v5->_cloudKitManager setDelegate:v5];
    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    [v17 addObserver:v5 selector:sel_accountDidChange_ name:@"KSCloudKitAccountDidChange" object:v5->_cloudKitManager];

    [(_KSTextReplacementCKStore *)v5 queryCloudIfFirstPullOrAccountChanged:0];
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = _KSTextReplacementCKStore;
  [(_KSTextReplacementCKStore *)&v4 dealloc];
}

- (void)queryCloudIfFirstPullOrAccountChanged:(BOOL)a3
{
  objc_initWeak(&location, self);
  dataQueue = self->_dataQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67___KSTextReplacementCKStore_queryCloudIfFirstPullOrAccountChanged___block_invoke;
  v6[3] = &unk_2797F6CD8;
  objc_copyWeak(&v7, &location);
  v8 = a3;
  v6[4] = self;
  dispatch_async(dataQueue, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)accountDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"KSCloudKitAccountDidChangeStatusKey"];
  v7 = [v6 integerValue];

  v8 = [v4 userInfo];

  v9 = [v8 objectForKeyedSubscript:@"KSCloudKitAccountDidChangeUserChangedKey"];
  LOBYTE(v6) = [v9 BOOLValue];

  dataQueue = self->_dataQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46___KSTextReplacementCKStore_accountDidChange___block_invoke;
  block[3] = &unk_2797F6D00;
  v12 = v6;
  block[4] = self;
  block[5] = v7;
  dispatch_async(dataQueue, block);
}

- (void)pushAllLocalData
{
  v3 = [(_KSTextReplacementCKStore *)self textReplacementEntries];
  [(_KSTextReplacementCKStore *)self addEntries:v3 removeEntries:MEMORY[0x277CBEBF8] withCompletionHandler:&__block_literal_global_69];
}

- (void)addEntries:(id)a3 removeEntries:(id)a4 withCompletionHandler:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  context = objc_autoreleasePoolPush();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        [v15 setNeedsSaveToCloud:1];
        v16 = [v15 timestamp];

        if (!v16)
        {
          v17 = [MEMORY[0x277CBEAA8] date];
          [v15 setTimestamp:v17];
        }
      }

      v12 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v12);
  }

  dataQueue = self->_dataQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76___KSTextReplacementCKStore_addEntries_removeEntries_withCompletionHandler___block_invoke;
  block[3] = &unk_2797F6D48;
  block[4] = self;
  v19 = v9;
  v25 = v19;
  v20 = v8;
  v26 = v20;
  v21 = v10;
  v27 = v21;
  dispatch_async(dataQueue, block);

  objc_autoreleasePoolPop(context);
  v22 = *MEMORY[0x277D85DE8];
}

- (void)removeAllEntries
{
  dataQueue = self->_dataQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45___KSTextReplacementCKStore_removeAllEntries__block_invoke;
  block[3] = &unk_2797F6310;
  block[4] = self;
  dispatch_async(dataQueue, block);
}

- (void)removeAllEntriesWithCompletionHandler:(id)a3
{
  v4 = a3;
  dataQueue = self->_dataQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67___KSTextReplacementCKStore_removeAllEntriesWithCompletionHandler___block_invoke;
  v7[3] = &unk_2797F66D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dataQueue, v7);
}

- (id)textReplacementEntries
{
  dispatch_assert_queue_not_V2(self->_dataQueue);
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"wasDeleted == %@ || wasDeleted == nil", MEMORY[0x277CBEC28]];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = MEMORY[0x277CBEBF8];
  dataQueue = self->_dataQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51___KSTextReplacementCKStore_textReplacementEntries__block_invoke;
  block[3] = &unk_2797F6D70;
  v9 = v3;
  v10 = &v11;
  block[4] = self;
  v5 = v3;
  dispatch_sync(dataQueue, block);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)queryTextReplacementsWithCallback:(id)a3
{
  v4 = a3;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__0;
  v10[4] = __Block_byref_object_dispose__0;
  v11 = 0;
  dataQueue = self->_dataQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63___KSTextReplacementCKStore_queryTextReplacementsWithCallback___block_invoke;
  block[3] = &unk_2797F6D98;
  v8 = v4;
  v9 = v10;
  block[4] = self;
  v6 = v4;
  dispatch_async(dataQueue, block);

  _Block_object_dispose(v10, 8);
}

- (void)queryTextReplacementsWithPredicate:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__0;
  v19[4] = __Block_byref_object_dispose__0;
  v20 = 0;
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"wasDeleted == %@ || wasDeleted == nil", MEMORY[0x277CBEC28]];
  dataQueue = self->_dataQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73___KSTextReplacementCKStore_queryTextReplacementsWithPredicate_callback___block_invoke;
  block[3] = &unk_2797F6DC0;
  v14 = v6;
  v15 = v8;
  v17 = v7;
  v18 = v19;
  v16 = self;
  v10 = v7;
  v11 = v8;
  v12 = v6;
  dispatch_async(dataQueue, block);

  _Block_object_dispose(v19, 8);
}

- (void)queryMigrationStatusOnCloudWithCallback:(id)a3
{
  v8 = a3;
  v4 = objc_alloc(MEMORY[0x277CBEBD0]);
  v5 = +[_KSUtilities userDefaultsSuiteName];
  v6 = [v4 initWithSuiteName:v5];

  v7 = ([v6 BOOLForKey:@"KSDidMigrateToCloudKitOnCloud"] & 1) != 0 || -[_KSTextReplacementCKStore ckMigrationStatusOnCloud](self, "ckMigrationStatusOnCloud");
  v8[2](v8, v7);
}

- (BOOL)isAccountAvailable
{
  v2 = [(_KSTextReplacementCKStore *)self cloudKitManager];
  v3 = [v2 isAccountAvailable];

  return v3;
}

- (unint64_t)getSyncCount
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = +[_KSUtilities userDefaultsSuiteName];
  v4 = [v2 initWithSuiteName:v3];

  v5 = [v4 integerForKey:@"kTRCKSyncCount"];
  v6 = v5 & ~(v5 >> 63);

  return v6;
}

- (unint64_t)getSyncCountThresholdHalfLifeHours
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = +[_KSUtilities userDefaultsSuiteName];
  v4 = [v2 initWithSuiteName:v3];

  [v4 floatForKey:@"TRCKSyncCountHalflifeInHours"];
  v6 = v5 != 0.0 && v5 <= 46.0;
  if (!v6 || v5 < 0.1)
  {
    v5 = 10.0;
  }

  v7 = v5;

  return v7;
}

- (unint64_t)getSyncCountThrottleThreshold
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = +[_KSUtilities userDefaultsSuiteName];
  v4 = [v2 initWithSuiteName:v3];

  v5 = [v4 integerForKey:@"TRCKSyncMaxCountThreshold"];
  if ((v5 - 1001) >= 0xFFFFFFFFFFFFFC1BLL)
  {
    v6 = v5;
  }

  else
  {
    v6 = 100;
  }

  return v6;
}

- (unint64_t)decayedSyncCountForTime:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBEBD0]);
  v6 = +[_KSUtilities userDefaultsSuiteName];
  v7 = [v5 initWithSuiteName:v6];

  v8 = [v7 objectForKey:@"kTRCKLastSyncTime"];
  v9 = [(_KSTextReplacementCKStore *)self getSyncCount];
  v10 = [(_KSTextReplacementCKStore *)self getSyncCountThresholdHalfLifeHours];
  if (v8)
  {
    [v8 timeIntervalSinceDate:v4];
    v12 = fabs(v11);
  }

  else
  {
    v12 = 0.0;
  }

  v13 = (exp2(v12 / (v10 * -3600.0)) * v9);

  return v13;
}

- (void)requestSync:(unint64_t)a3 withCompletionBlock:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(_KSTextReplacementCKStore *)self cloudKitManager];
  v8 = [v7 isAccountAvailable];

  if (v8)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v26 = 0x2020000000;
    v9 = [MEMORY[0x277CBEAA8] date];
    v10 = [(_KSTextReplacementCKStore *)self decayedSyncCountForTime:v9];

    v27 = v10;
    if (a3)
    {
      v11 = *(*(&buf + 1) + 24);
      if (v11 >= [(_KSTextReplacementCKStore *)self getSyncCountThrottleThreshold])
      {
        v15 = KSCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *v23 = 136315138;
          v24 = "[_KSTextReplacementCKStore requestSync:withCompletionBlock:]";
          _os_log_impl(&dword_2557E2000, v15, OS_LOG_TYPE_INFO, "%s  Skipping syncing, reached threshold", v23, 0xCu);
        }

        if (v6)
        {
          v6[2](v6, 0);
        }

        goto LABEL_17;
      }

      if (a3 == 2)
      {
        dataQueue = self->_dataQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __61___KSTextReplacementCKStore_requestSync_withCompletionBlock___block_invoke_2;
        block[3] = &unk_2797F6E30;
        v20[2] = 2;
        block[4] = self;
        v20[1] = &buf;
        v13 = v20;
        v20[0] = v6;
        dispatch_async(dataQueue, block);
      }

      else
      {
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __61___KSTextReplacementCKStore_requestSync_withCompletionBlock___block_invoke_93;
        v17[3] = &unk_2797F6E08;
        v17[4] = self;
        v18[1] = &buf;
        v18[0] = v6;
        [(_KSTextReplacementCKStore *)self _requestSync:a3 completionBlock:v17];
        v13 = v18;
      }
    }

    else
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __61___KSTextReplacementCKStore_requestSync_withCompletionBlock___block_invoke;
      v21[3] = &unk_2797F6E08;
      v21[4] = self;
      v22[1] = &buf;
      v22[0] = v6;
      [(_KSTextReplacementCKStore *)self _requestSync:0 completionBlock:v21];
      v13 = v22;
    }

LABEL_17:
    _Block_object_dispose(&buf, 8);
    goto LABEL_18;
  }

  v14 = KSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[_KSTextReplacementCKStore requestSync:withCompletionBlock:]";
    _os_log_impl(&dword_2557E2000, v14, OS_LOG_TYPE_INFO, "%s  User is not logged in, not syncing", &buf, 0xCu);
  }

  if (v6)
  {
    v6[2](v6, 0);
  }

LABEL_18:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_updateSyncCount:(unint64_t)a3 success:(BOOL)a4
{
  v4 = a4;
  v6 = objc_alloc(MEMORY[0x277CBEBD0]);
  v7 = +[_KSUtilities userDefaultsSuiteName];
  v11 = [v6 initWithSuiteName:v7];

  if (v4)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  v9 = [MEMORY[0x277CBEAA8] date];
  [v11 setObject:v9 forKey:@"kTRCKLastSyncTime"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8 + a3];
  [v11 setObject:v10 forKey:@"kTRCKSyncCount"];
}

- (void)_requestSync:(unint64_t)a3 completionBlock:(id)a4
{
  v6 = a4;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58___KSTextReplacementCKStore__requestSync_completionBlock___block_invoke;
  block[3] = &unk_2797F6750;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(syncQueue, block);
}

- (void)pushLocalChangesWithPriority:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76___KSTextReplacementCKStore_pushLocalChangesWithPriority_completionHandler___block_invoke;
  block[3] = &unk_2797F6750;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(syncQueue, block);
}

- (void)pullRemoteDataWithPriority:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  dataQueue = self->_dataQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74___KSTextReplacementCKStore_pullRemoteDataWithPriority_completionHandler___block_invoke;
  block[3] = &unk_2797F6750;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(dataQueue, block);
}

- (void)recordSyncStatus
{
  dataQueue = self->_dataQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45___KSTextReplacementCKStore_recordSyncStatus__block_invoke;
  block[3] = &unk_2797F6310;
  block[4] = self;
  dispatch_async(dataQueue, block);
}

- (unint64_t)countLocalEntriesToBeSynced
{
  dispatch_assert_queue_V2(self->_dataQueue);
  v3 = [(_KSTextReplacementCKStore *)self coreDataStore];
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"needsSaveToCloud == TRUE OR wasDeleted == TRUE"];
  v5 = [v3 countEntriesWithPredicate:v4];

  return v5;
}

- (id)queryUpdatedLocalEntries
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  dataQueue = self->_dataQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53___KSTextReplacementCKStore_queryUpdatedLocalEntries__block_invoke;
  v6[3] = &unk_2797F6F70;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(dataQueue, v6);
  v4 = [(_KSTextReplacementCKStore *)self cloudEntriesFromLocalEntries:v8[5]];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)queryDeletedEntries
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  dataQueue = self->_dataQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48___KSTextReplacementCKStore_queryDeletedEntries__block_invoke;
  v6[3] = &unk_2797F6F70;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(dataQueue, v6);
  v4 = [(_KSTextReplacementCKStore *)self cloudRecordIDsForLocalEntries:v8[5]];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)cloudEntriesFromLocalEntries:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v22 = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v25;
    *&v5 = 136315394;
    v20 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [v9 cloudData];

        v11 = [(_KSTextReplacementCKStore *)self cloudKitManager];
        v12 = [v9 cloudID];
        if (v10)
        {
          v13 = [v9 cloudData];
          v14 = [v9 unEncryptedFields];
          v15 = [v9 encryptedFields];
          v16 = [v11 recordWithName:v12 type:@"TextReplacementEntry" cloudData:v13 attributes:v14 encryptedFields:v15];
        }

        else
        {
          v13 = [v9 unEncryptedFields];
          v14 = [v9 encryptedFields];
          v16 = [v11 recordWithName:v12 type:@"TextReplacementEntry" attributes:v13 encryptedFields:v14];
        }

        if (v16)
        {
          [v22 addObject:v16];
        }

        else
        {
          v17 = KSCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = v20;
            v29 = "[_KSTextReplacementCKStore cloudEntriesFromLocalEntries:]";
            v30 = 2112;
            v31 = v9;
            _os_log_error_impl(&dword_2557E2000, v17, OS_LOG_TYPE_ERROR, "%s  >>> no CKRecord for TextreplacementEntry: %@", buf, 0x16u);
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v6);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)cloudRecordIDsForLocalEntries:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v22;
    *&v8 = 136315650;
    v20 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        v13 = [(_KSTextReplacementCKStore *)self cloudKitManager:v20];
        v14 = [v12 cloudID];
        v15 = [v13 recordIDForName:v14];

        if (v15)
        {
          [v5 addObject:v15];
        }

        else
        {
          v16 = KSCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = [v12 cloudID];
            *buf = v20;
            v26 = "[_KSTextReplacementCKStore cloudRecordIDsForLocalEntries:]";
            v27 = 2112;
            v28 = v12;
            v29 = 2112;
            v30 = v17;
            _os_log_error_impl(&dword_2557E2000, v16, OS_LOG_TYPE_ERROR, "%s  >>> ERROR couldn't create recordID for entry: %@, cloudID: %@", buf, 0x20u);
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v9);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)localEntriesFromCloudEntries:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v6)
  {
    v8 = *v28;
    *&v7 = 136315394;
    v25 = v7;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [v10 recordType];
        v12 = [v11 isEqualToString:@"TextReplacementEntry"];

        if (v12)
        {
          v13 = [_KSTextReplacementEntry localEntryFromCloudEntry:v10];
          [v4 addObject:v13];
        }

        else
        {
          v14 = [v10 recordType];
          v15 = [v14 isEqualToString:@"TextReplacementMigration"];

          if (!v15)
          {
            continue;
          }

          v13 = [v10 objectForKey:@"didMigrate"];
          v16 = [v13 BOOLValue];
          v17 = self;
          objc_sync_enter(v17);
          [(_KSTextReplacementCKStore *)v17 setCkMigrationStatusOnCloud:v16];
          objc_sync_exit(v17);

          v18 = objc_alloc(MEMORY[0x277CBEBD0]);
          v19 = +[_KSUtilities userDefaultsSuiteName];
          v20 = [v18 initWithSuiteName:v19];

          [v20 setBool:v16 forKey:@"KSDidMigrateToCloudKitOnCloud"];
          v21 = KSCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v22 = [MEMORY[0x277CCABB0] numberWithBool:v16];
            *buf = v25;
            v32 = "[_KSTextReplacementCKStore localEntriesFromCloudEntries:]";
            v33 = 2112;
            v34 = v22;
            _os_log_impl(&dword_2557E2000, v21, OS_LOG_TYPE_INFO, "%s  cloud migration status: %@", buf, 0x16u);
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v6);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)userDidDeleteRecordZone:(id)a3
{
  if ([a3 isEqualToString:@"TextReplacements"])
  {

    [(_KSTextReplacementCKStore *)self removeAllEntries];
  }
}

@end