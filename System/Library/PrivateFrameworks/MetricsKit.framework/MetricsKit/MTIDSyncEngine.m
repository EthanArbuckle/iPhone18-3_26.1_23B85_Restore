@interface MTIDSyncEngine
- (MTIDSyncEngine)initWithContainerIdentifier:(id)a3 zoneID:(id)a4 queue:(id)a5 delegate:(id)a6;
- (MTIDSyncEngineDelegate)delegate;
- (NSMutableArray)transactions;
- (id)fetchRecordWithIDs:(id)a3;
- (void)_beginTransaction;
- (void)_endTransaction;
- (void)accountDidChange:(id)a3;
- (void)addPendingRecordID:(id)a3;
- (void)addRecordIDsToSave:(id)a3 recordIDsToDelete:(id)a4 qualityOfService:(int64_t)a5;
- (void)commit;
- (void)fetchAllRecords;
- (void)fetchRecordWithID:(id)a3;
- (void)handleDeletedRecordID:(id)a3 error:(id)a4;
- (void)handleEngineStartedWithError:(id)a3;
- (void)handleFetchedRecords:(id)a3 error:(id)a4;
- (void)handleSavedRecord:(id)a3 error:(id)a4;
- (void)handleUserRecordID:(id)a3;
- (void)removePendingRecordID:(id)a3;
- (void)saveRecordsWithIDs:(id)a3 qualityOfService:(int64_t)a4;
- (void)setState:(int64_t)a3;
- (void)setupContainerWithIdentifier:(id)a3;
- (void)startEngine;
@end

@implementation MTIDSyncEngine

- (MTIDSyncEngine)initWithContainerIdentifier:(id)a3 zoneID:(id)a4 queue:(id)a5 delegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = MTIDSyncEngine;
  v14 = [(MTIDSyncEngine *)&v19 init];
  v15 = v14;
  if (v14)
  {
    [(MTIDSyncEngine *)v14 setQueue:v12];
    [(MTIDSyncEngine *)v15 setDelegate:v13];
    [(MTIDSyncEngine *)v15 setZoneID:v11];
    v16 = [MEMORY[0x277CBEB58] set];
    [(MTIDSyncEngine *)v15 setQueuedRecordIDs:v16];

    v17 = [MEMORY[0x277CBEB58] set];
    [(MTIDSyncEngine *)v15 setPendingRecordIDs:v17];

    [(MTIDSyncEngine *)v15 setupContainerWithIdentifier:v10];
    [(MTIDSyncEngine *)v15 setQualityOfService:17];
  }

  return v15;
}

- (void)setupContainerWithIdentifier:(id)a3
{
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v6 = [v4 defaultCenter];
  [v6 addObserver:self selector:sel_accountDidChange_ name:*MEMORY[0x277CBBF00] object:0];

  v7 = +[MTFrameworkEnvironment sharedEnvironment];
  if ([v7 useCloudKitSandbox])
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = [objc_alloc(MEMORY[0x277CBC220]) initWithContainerIdentifier:v5 environment:v8];
  v10 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v9];
  [(MTIDSyncEngine *)self setContainer:v10];

  v11 = [(MTIDSyncEngine *)self container];
  v12 = [v11 containerID];
  v13 = [v12 environment];

  if (v13 == 2)
  {
    v14 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *v15 = 0;
      _os_log_impl(&dword_258F4B000, v14, OS_LOG_TYPE_DEBUG, "MetricsKit: AMPIDService is using iCloud container in the sandbox environment", v15, 2u);
    }
  }
}

- (void)accountDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([(MTIDSyncEngine *)v5 state]== 2)
  {
    v6 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&dword_258F4B000, v6, OS_LOG_TYPE_DEBUG, "MetricsKit: Restarting ID sync engine because account has changed", v7, 2u);
    }

    [(MTIDSyncEngine *)v5 setState:0];
    [(MTIDSyncEngine *)v5 startEngine];
  }

  objc_sync_exit(v5);
}

- (void)setState:(int64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_state = a3;
  if (!a3)
  {
    v4 = [(MTIDSyncEngine *)obj pendingRecordIDs];
    [v4 removeAllObjects];

    v5 = [(MTIDSyncEngine *)obj queuedRecordIDs];
    [v5 removeAllObjects];

    [(MTIDSyncEngine *)obj _endTransaction];
  }

  objc_sync_exit(obj);
}

- (void)startEngine
{
  obj = self;
  objc_sync_enter(obj);
  if ([(MTIDSyncEngine *)obj state])
  {
    objc_sync_exit(obj);
  }

  else
  {
    [(MTIDSyncEngine *)obj setState:1];
    objc_sync_exit(obj);

    objc_initWeak(&location, obj);
    v2 = [(MTIDSyncEngine *)obj container];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __29__MTIDSyncEngine_startEngine__block_invoke;
    v4[3] = &unk_2798CE9D8;
    objc_copyWeak(&v5, &location);
    [v2 fetchUserRecordIDWithCompletionHandler:v4];

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __29__MTIDSyncEngine_startEngine__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained handleUserRecordID:v5];

    v12 = objc_loadWeakRetained((a1 + 32));
    v13 = [v12 container];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __29__MTIDSyncEngine_startEngine__block_invoke_2;
    v14[3] = &unk_2798CE9B0;
    objc_copyWeak(&v15, (a1 + 32));
    [v13 accountInfoWithCompletionHandler:v14];

    objc_destroyWeak(&v15);
    goto LABEL_8;
  }

  v8 = [v6 domain];
  if (![v8 isEqual:*MEMORY[0x277CBBF50]])
  {
    goto LABEL_5;
  }

  v9 = [v7 code];

  if (v9 == 9)
  {
    v8 = objc_loadWeakRetained((a1 + 32));
    [v8 handleUserRecordID:0];
LABEL_5:
  }

  v10 = objc_loadWeakRetained((a1 + 32));
  [v10 handleEngineStartedWithError:v7];

LABEL_8:
}

void __29__MTIDSyncEngine_startEngine__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
LABEL_8:
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained handleEngineStartedWithError:v8];

    goto LABEL_9;
  }

  if ([v5 accountStatus] == 1)
  {
    if (([v5 supportsDeviceToDeviceEncryption] & 1) == 0)
    {
      v9 = objc_loadWeakRetained((a1 + 32));
      v10 = [v9 container];
      v11 = [v10 containerIdentifier];
      v8 = MTError(702, @"iCloud account for container %@ doesn't support device to device encryption", v12, v13, v14, v15, v16, v17, v11);

      if (v8)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    v23 = [v5 accountStatus];
    v8 = MTError(701, @"iCloud account is not available. Account status: %ld", v24, v25, v26, v27, v28, v29, v23);
    if (v8)
    {
      goto LABEL_8;
    }
  }

  v18 = objc_loadWeakRetained((a1 + 32));
  v19 = [v18 zoneID];

  v20 = objc_loadWeakRetained((a1 + 32));
  v21 = [v20 container];
  v22 = [v21 privateCloudDatabase];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __29__MTIDSyncEngine_startEngine__block_invoke_3;
  v31[3] = &unk_2798CE988;
  v8 = v19;
  v32 = v8;
  objc_copyWeak(&v33, (a1 + 32));
  [v22 fetchRecordZoneWithID:v8 completionHandler:v31];

  objc_destroyWeak(&v33);
LABEL_9:
}

void __29__MTIDSyncEngine_startEngine__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 domain];
  if (![v7 isEqual:*MEMORY[0x277CBBF50]])
  {

    goto LABEL_7;
  }

  v8 = [v6 code];

  if (v8 != 26)
  {
LABEL_7:
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained handleEngineStartedWithError:v6];

    goto LABEL_8;
  }

  v9 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 32);
    *buf = 138412290;
    v20 = v10;
    _os_log_impl(&dword_258F4B000, v9, OS_LOG_TYPE_DEBUG, "MetricsKit: Creating new zone with ID %@", buf, 0xCu);
  }

  v11 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:*(a1 + 32)];
  v12 = objc_loadWeakRetained((a1 + 40));
  v13 = [v12 container];
  v14 = [v13 privateCloudDatabase];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __29__MTIDSyncEngine_startEngine__block_invoke_11;
  v17[3] = &unk_2798CE960;
  objc_copyWeak(&v18, (a1 + 40));
  [v14 saveRecordZone:v11 completionHandler:v17];

  objc_destroyWeak(&v18);
LABEL_8:

  v16 = *MEMORY[0x277D85DE8];
}

void __29__MTIDSyncEngine_startEngine__block_invoke_11(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleEngineStartedWithError:v4];
}

- (id)fetchRecordWithIDs:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MTPromise);
  v6 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_258F4B000, v6, OS_LOG_TYPE_DEBUG, "MetricsKit: Started fetching record with IDs", buf, 2u);
  }

  v7 = [objc_alloc(MEMORY[0x277CBC3E0]) initWithRecordIDs:v4];
  v8 = [(MTIDSyncEngine *)self applicationBundleIdentifierOverrideForNetworkAttribution];
  v9 = [v7 configuration];
  [v9 setApplicationBundleIdentifierOverrideForNetworkAttribution:v8];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __37__MTIDSyncEngine_fetchRecordWithIDs___block_invoke;
  v14[3] = &unk_2798CDF48;
  v10 = v5;
  v15 = v10;
  [v7 setFetchRecordsCompletionBlock:v14];
  v11 = [(MTIDSyncEngine *)self container];
  v12 = [v11 privateCloudDatabase];
  [v12 addOperation:v7];

  return v10;
}

void __37__MTIDSyncEngine_fetchRecordWithIDs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if (v6)
  {
    v8 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_258F4B000, v8, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to fetch records with ID. error %@", &v10, 0xCu);
    }

    v7 = 0;
  }

  [*(a1 + 32) finishWithResult:v7 error:v6];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)fetchRecordWithID:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([(MTIDSyncEngine *)v5 state]== 2)
  {
    objc_sync_exit(v5);

    v6 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [v4 recordName];
      *buf = 138412290;
      v21 = v7;
      _os_log_impl(&dword_258F4B000, v6, OS_LOG_TYPE_DEBUG, "MetricsKit: Started fetching record with ID %@", buf, 0xCu);
    }

    [(MTIDSyncEngine *)v5 addPendingRecordID:v4];
    v8 = objc_alloc(MEMORY[0x277CBC3E0]);
    v19 = v4;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    v10 = [v8 initWithRecordIDs:v9];

    v11 = [(MTIDSyncEngine *)v5 applicationBundleIdentifierOverrideForNetworkAttribution];
    v12 = [v10 configuration];
    [v12 setApplicationBundleIdentifierOverrideForNetworkAttribution:v11];

    objc_initWeak(buf, v5);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __36__MTIDSyncEngine_fetchRecordWithID___block_invoke;
    v16[3] = &unk_2798CEA00;
    v17 = v4;
    objc_copyWeak(&v18, buf);
    [v10 setFetchRecordsCompletionBlock:v16];
    v13 = [(MTIDSyncEngine *)v5 container];
    v14 = [v13 privateCloudDatabase];
    [v14 addOperation:v10];

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  else
  {
    [(MTIDSyncEngine *)v5 startEngine];
    objc_sync_exit(v5);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __36__MTIDSyncEngine_fetchRecordWithID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 objectForKeyedSubscript:v5];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (v7)
  {
    v13[0] = v7;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    [v9 handleFetchedRecords:v10 error:v6];
  }

  else
  {
    [WeakRetained handleFetchedRecords:0 error:v6];
  }

  v11 = objc_loadWeakRetained((a1 + 40));
  [v11 removePendingRecordID:*(a1 + 32)];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)fetchAllRecords
{
  v26[1] = *MEMORY[0x277D85DE8];
  obj = self;
  objc_sync_enter(obj);
  if ([(MTIDSyncEngine *)obj state]== 2)
  {
    objc_sync_exit(obj);

    v2 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_258F4B000, v2, OS_LOG_TYPE_DEBUG, "MetricsKit: Started fetching all record changes", buf, 2u);
    }

    v3 = objc_alloc_init(MEMORY[0x277CBC3A0]);
    v4 = [(MTIDSyncEngine *)obj zoneID];
    v25 = v4;
    v26[0] = v3;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];

    v6 = objc_alloc(MEMORY[0x277CBC3B8]);
    v7 = [(MTIDSyncEngine *)obj zoneID];
    v24 = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    v9 = [v6 initWithRecordZoneIDs:v8 configurationsByRecordZoneID:v5];

    v10 = [(MTIDSyncEngine *)obj applicationBundleIdentifierOverrideForNetworkAttribution];
    v11 = [v9 configuration];
    [v11 setApplicationBundleIdentifierOverrideForNetworkAttribution:v10];

    objc_initWeak(buf, obj);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __33__MTIDSyncEngine_fetchAllRecords__block_invoke;
    v21[3] = &unk_2798CEA28;
    objc_copyWeak(&v22, buf);
    [v9 setRecordChangedBlock:v21];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __33__MTIDSyncEngine_fetchAllRecords__block_invoke_2;
    v19[3] = &unk_2798CEA50;
    objc_copyWeak(&v20, buf);
    [v9 setRecordWithIDWasDeletedBlock:v19];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __33__MTIDSyncEngine_fetchAllRecords__block_invoke_3;
    v17[3] = &unk_2798CEA78;
    objc_copyWeak(&v18, buf);
    [v9 setRecordZoneFetchCompletionBlock:v17];
    [(MTIDSyncEngine *)obj _beginTransaction];
    v12 = [(MTIDSyncEngine *)obj container];
    v13 = [v12 privateCloudDatabase];
    [v13 addOperation:v9];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);

    v14 = *MEMORY[0x277D85DE8];
  }

  else
  {
    [(MTIDSyncEngine *)obj startEngine];
    objc_sync_exit(obj);
    v15 = *MEMORY[0x277D85DE8];
  }
}

void __33__MTIDSyncEngine_fetchAllRecords__block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  [WeakRetained handleFetchedRecords:v5 error:0];
  v6 = *MEMORY[0x277D85DE8];
}

void __33__MTIDSyncEngine_fetchAllRecords__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleDeletedRecordID:v3 error:0];
}

void __33__MTIDSyncEngine_fetchAllRecords__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained pendingRecordIDs];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 _endTransaction];
  }
}

- (void)saveRecordsWithIDs:(id)a3 qualityOfService:(int64_t)a4
{
  v6 = a3;
  if ([v6 count])
  {
    v7 = self;
    objc_sync_enter(v7);
    if ([(MTIDSyncEngine *)v7 qualityOfService]< a4)
    {
      [(MTIDSyncEngine *)v7 setQualityOfService:a4];
    }

    if ([(MTIDSyncEngine *)v7 state]== 2)
    {
      v8 = [(MTIDSyncEngine *)v7 queuedRecordIDs];
      v9 = [v8 count];

      v10 = [(MTIDSyncEngine *)v7 queuedRecordIDs];
      [v10 addObjectsFromArray:v6];

      if (!v9)
      {
        v11 = [(MTIDSyncEngine *)v7 queuedRecordIDs];
        v12 = [v11 count];

        if (v12)
        {
          v13 = dispatch_time(0, 1000000000);
          v14 = [(MTIDSyncEngine *)v7 queue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __54__MTIDSyncEngine_saveRecordsWithIDs_qualityOfService___block_invoke;
          block[3] = &unk_2798CD868;
          block[4] = v7;
          dispatch_after(v13, v14, block);
        }
      }
    }

    else
    {
      [(MTIDSyncEngine *)v7 startEngine];
    }

    objc_sync_exit(v7);
  }
}

- (void)commit
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MTIDSyncEngine *)v2 queuedRecordIDs];
  v4 = [v3 allObjects];

  v5 = [(MTIDSyncEngine *)v2 qualityOfService];
  v6 = [(MTIDSyncEngine *)v2 queuedRecordIDs];
  [v6 removeAllObjects];

  [(MTIDSyncEngine *)v2 setQualityOfService:17];
  objc_sync_exit(v2);

  if ([v4 count])
  {
    v7 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = 134218240;
      v10 = [v4 count];
      v11 = 2048;
      v12 = v5;
      _os_log_impl(&dword_258F4B000, v7, OS_LOG_TYPE_DEBUG, "MetricsKit: Started saving %ld records with qos %ld", &v9, 0x16u);
    }

    [(MTIDSyncEngine *)v2 addRecordIDsToSave:v4 recordIDsToDelete:0 qualityOfService:v5];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)addRecordIDsToSave:(id)a3 recordIDsToDelete:(id)a4 qualityOfService:(int64_t)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v27 = a4;
  v9 = self;
  objc_sync_enter(v9);
  if ([(MTIDSyncEngine *)v9 state]== 2)
  {
    v26 = a5;
    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v12)
    {
      v13 = *v35;
      do
      {
        v14 = 0;
        do
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v34 + 1) + 8 * v14);
          v16 = [(MTIDSyncEngine *)v9 delegate];
          v17 = [v16 recordWithID:v15];

          if (v17)
          {
            [(MTIDSyncEngine *)v9 addPendingRecordID:v15];
            [v10 addObject:v17];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v12);
    }

    objc_initWeak(&location, v9);
    v18 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:v10 recordIDsToDelete:v27];
    v19 = [v18 configuration];
    [v19 setQualityOfService:v26];

    v20 = [(MTIDSyncEngine *)v9 applicationBundleIdentifierOverrideForNetworkAttribution];
    v21 = [v18 configuration];
    [v21 setApplicationBundleIdentifierOverrideForNetworkAttribution:v20];

    [v18 setSavePolicy:0];
    [v18 setAtomic:0];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __72__MTIDSyncEngine_addRecordIDsToSave_recordIDsToDelete_qualityOfService___block_invoke;
    v31[3] = &unk_2798CEAA0;
    objc_copyWeak(&v32, &location);
    [v18 setPerRecordCompletionBlock:v31];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __72__MTIDSyncEngine_addRecordIDsToSave_recordIDsToDelete_qualityOfService___block_invoke_2;
    v28[3] = &unk_2798CEAC8;
    v22 = v10;
    v29 = v22;
    objc_copyWeak(&v30, &location);
    [v18 setCompletionBlock:v28];
    v23 = [(MTIDSyncEngine *)v9 container];
    v24 = [v23 privateCloudDatabase];
    [v24 addOperation:v18];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v32);

    objc_destroyWeak(&location);
  }

  else
  {
    [(MTIDSyncEngine *)v9 startEngine];
  }

  objc_sync_exit(v9);

  v25 = *MEMORY[0x277D85DE8];
}

void __72__MTIDSyncEngine_addRecordIDsToSave_recordIDsToDelete_qualityOfService___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleSavedRecord:v6 error:v5];
}

void __72__MTIDSyncEngine_addRecordIDsToSave_recordIDsToDelete_qualityOfService___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        v9 = [v7 recordID];
        [WeakRetained removePendingRecordID:v9];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addPendingRecordID:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(MTIDSyncEngine *)v4 pendingRecordIDs];
  [v5 addObject:v6];

  [(MTIDSyncEngine *)v4 _beginTransaction];
  objc_sync_exit(v4);
}

- (void)removePendingRecordID:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(MTIDSyncEngine *)v4 pendingRecordIDs];
  [v5 removeObject:v8];

  v6 = [(MTIDSyncEngine *)v4 pendingRecordIDs];
  v7 = [v6 count];

  if (!v7)
  {
    [(MTIDSyncEngine *)v4 _endTransaction];
  }

  objc_sync_exit(v4);
}

- (void)_beginTransaction
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = [(MTIDSyncEngine *)self transactions];
  v3 = v12[5];
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    v5 = v12[5];
    v12[5] = v4;

    [(MTIDSyncEngine *)self setTransactions:v12[5]];
    v3 = v12[5];
  }

  if (![v3 count])
  {
    v6 = v12[5];
    v7 = os_transaction_create();
    [v6 addObject:v7];
  }

  +[MTIDSyncEngine transactionTimeout];
  v9 = dispatch_time(0, (v8 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__MTIDSyncEngine__beginTransaction__block_invoke;
  block[3] = &unk_2798CEAF0;
  block[4] = &v11;
  dispatch_after(v9, MEMORY[0x277D85CD0], block);
  _Block_object_dispose(&v11, 8);
}

void __35__MTIDSyncEngine__beginTransaction__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (void)_endTransaction
{
  v2 = [(MTIDSyncEngine *)self transactions];
  [v2 removeAllObjects];
}

- (void)handleUserRecordID:(id)a3
{
  v4 = a3;
  v5 = [(MTIDSyncEngine *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__MTIDSyncEngine_handleUserRecordID___block_invoke;
  v7[3] = &unk_2798CE050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __37__MTIDSyncEngine_handleUserRecordID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accountDidChangeWithUserRecordID:*(a1 + 40)];
}

- (void)handleEngineStartedWithError:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [(MTIDSyncEngine *)v5 setState:2 * (v4 == 0)];
  objc_sync_exit(v5);

  v6 = [(MTIDSyncEngine *)v5 queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__MTIDSyncEngine_handleEngineStartedWithError___block_invoke;
  v8[3] = &unk_2798CE050;
  v8[4] = v5;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void __47__MTIDSyncEngine_handleEngineStartedWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 syncEngineDidStartWithError:*(a1 + 40)];
}

- (void)handleSavedRecord:(id)a3 error:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 domain];
  v9 = *MEMORY[0x277CBBF50];
  if ([v8 isEqual:*MEMORY[0x277CBBF50]])
  {
    v10 = [v7 code];

    if (v10 == 14)
    {
      v11 = [v7 userInfo];
      v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CBBFE8]];

      if (v12)
      {
        v13 = MTMetricsKitOSLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = [v6 recordID];
          v15 = [v14 recordName];
          *buf = 138412290;
          v29 = v15;
          _os_log_impl(&dword_258F4B000, v13, OS_LOG_TYPE_DEBUG, "MetricsKit: Server has a newer version of record with ID %@, use server record instead", buf, 0xCu);
        }

        v16 = v12;
        v7 = 0;
        v6 = v16;
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  v17 = [v7 domain];
  if (![v17 isEqual:v9])
  {

    goto LABEL_13;
  }

  v18 = [v7 code];

  if (v18 == 11)
  {
    v12 = [(MTIDSyncEngine *)self delegate];
    v19 = [v6 recordID];
    [v12 recordWasDeleted:v19];

LABEL_11:
  }

LABEL_13:
  v20 = [(MTIDSyncEngine *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__MTIDSyncEngine_handleSavedRecord_error___block_invoke;
  block[3] = &unk_2798CDA18;
  v25 = v7;
  v26 = self;
  v27 = v6;
  v21 = v6;
  v22 = v7;
  dispatch_async(v20, block);

  v23 = *MEMORY[0x277D85DE8];
}

void __42__MTIDSyncEngine_handleSavedRecord_error___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = [*(a1 + 48) recordID];
      v4 = [v3 recordName];
      v5 = *(a1 + 32);
      *buf = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_258F4B000, v2, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to save record with ID %@ error %@", buf, 0x16u);
    }

    v6 = [*(a1 + 40) delegate];
    [v6 recordWasFailedToSave:*(a1 + 48)];

    v7 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = [*(a1 + 40) delegate];
    [v9 recordWasSaved:*(a1 + 48)];
    v8 = *MEMORY[0x277D85DE8];
  }
}

- (void)handleFetchedRecords:(id)a3 error:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&dword_258F4B000, v8, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to fetch records with error %@", buf, 0xCu);
    }
  }

  else
  {
    v9 = [(MTIDSyncEngine *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __45__MTIDSyncEngine_handleFetchedRecords_error___block_invoke;
    v11[3] = &unk_2798CE050;
    v12 = v6;
    v13 = self;
    dispatch_async(v9, v11);

    v8 = v12;
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __45__MTIDSyncEngine_handleFetchedRecords_error___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [*(a1 + 40) delegate];
        [v8 recordWasFetched:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleDeletedRecordID:(id)a3 error:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v6 recordName];
      *buf = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_258F4B000, v8, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to delete record with ID %@ error %@", buf, 0x16u);
    }
  }

  else
  {
    v10 = [(MTIDSyncEngine *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __46__MTIDSyncEngine_handleDeletedRecordID_error___block_invoke;
    v12[3] = &unk_2798CE050;
    v12[4] = self;
    v13 = v6;
    dispatch_async(v10, v12);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __46__MTIDSyncEngine_handleDeletedRecordID_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 recordWasDeleted:*(a1 + 40)];
}

- (MTIDSyncEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSMutableArray)transactions
{
  WeakRetained = objc_loadWeakRetained(&self->_transactions);

  return WeakRetained;
}

@end