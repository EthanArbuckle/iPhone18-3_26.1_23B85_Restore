@interface MTIDSyncEngine
- (MTIDSyncEngine)initWithContainerIdentifier:(id)identifier zoneID:(id)d queue:(id)queue delegate:(id)delegate;
- (MTIDSyncEngineDelegate)delegate;
- (NSMutableArray)transactions;
- (id)fetchRecordWithIDs:(id)ds;
- (void)_beginTransaction;
- (void)_endTransaction;
- (void)accountDidChange:(id)change;
- (void)addPendingRecordID:(id)d;
- (void)addRecordIDsToSave:(id)save recordIDsToDelete:(id)delete qualityOfService:(int64_t)service;
- (void)commit;
- (void)fetchAllRecords;
- (void)fetchRecordWithID:(id)d;
- (void)handleDeletedRecordID:(id)d error:(id)error;
- (void)handleEngineStartedWithError:(id)error;
- (void)handleFetchedRecords:(id)records error:(id)error;
- (void)handleSavedRecord:(id)record error:(id)error;
- (void)handleUserRecordID:(id)d;
- (void)removePendingRecordID:(id)d;
- (void)saveRecordsWithIDs:(id)ds qualityOfService:(int64_t)service;
- (void)setState:(int64_t)state;
- (void)setupContainerWithIdentifier:(id)identifier;
- (void)startEngine;
@end

@implementation MTIDSyncEngine

- (MTIDSyncEngine)initWithContainerIdentifier:(id)identifier zoneID:(id)d queue:(id)queue delegate:(id)delegate
{
  identifierCopy = identifier;
  dCopy = d;
  queueCopy = queue;
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = MTIDSyncEngine;
  v14 = [(MTIDSyncEngine *)&v19 init];
  v15 = v14;
  if (v14)
  {
    [(MTIDSyncEngine *)v14 setQueue:queueCopy];
    [(MTIDSyncEngine *)v15 setDelegate:delegateCopy];
    [(MTIDSyncEngine *)v15 setZoneID:dCopy];
    v16 = [MEMORY[0x277CBEB58] set];
    [(MTIDSyncEngine *)v15 setQueuedRecordIDs:v16];

    v17 = [MEMORY[0x277CBEB58] set];
    [(MTIDSyncEngine *)v15 setPendingRecordIDs:v17];

    [(MTIDSyncEngine *)v15 setupContainerWithIdentifier:identifierCopy];
    [(MTIDSyncEngine *)v15 setQualityOfService:17];
  }

  return v15;
}

- (void)setupContainerWithIdentifier:(id)identifier
{
  v4 = MEMORY[0x277CCAB98];
  identifierCopy = identifier;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter addObserver:self selector:sel_accountDidChange_ name:*MEMORY[0x277CBBF00] object:0];

  v7 = +[MTFrameworkEnvironment sharedEnvironment];
  if ([v7 useCloudKitSandbox])
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = [objc_alloc(MEMORY[0x277CBC220]) initWithContainerIdentifier:identifierCopy environment:v8];
  v10 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v9];
  [(MTIDSyncEngine *)self setContainer:v10];

  container = [(MTIDSyncEngine *)self container];
  containerID = [container containerID];
  environment = [containerID environment];

  if (environment == 2)
  {
    v14 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *v15 = 0;
      _os_log_impl(&dword_258F4B000, v14, OS_LOG_TYPE_DEBUG, "MetricsKit: AMPIDService is using iCloud container in the sandbox environment", v15, 2u);
    }
  }
}

- (void)accountDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MTIDSyncEngine *)selfCopy state]== 2)
  {
    v6 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&dword_258F4B000, v6, OS_LOG_TYPE_DEBUG, "MetricsKit: Restarting ID sync engine because account has changed", v7, 2u);
    }

    [(MTIDSyncEngine *)selfCopy setState:0];
    [(MTIDSyncEngine *)selfCopy startEngine];
  }

  objc_sync_exit(selfCopy);
}

- (void)setState:(int64_t)state
{
  obj = self;
  objc_sync_enter(obj);
  obj->_state = state;
  if (!state)
  {
    pendingRecordIDs = [(MTIDSyncEngine *)obj pendingRecordIDs];
    [pendingRecordIDs removeAllObjects];

    queuedRecordIDs = [(MTIDSyncEngine *)obj queuedRecordIDs];
    [queuedRecordIDs removeAllObjects];

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
    container = [(MTIDSyncEngine *)obj container];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __29__MTIDSyncEngine_startEngine__block_invoke;
    v4[3] = &unk_2798CE9D8;
    objc_copyWeak(&v5, &location);
    [container fetchUserRecordIDWithCompletionHandler:v4];

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

- (id)fetchRecordWithIDs:(id)ds
{
  dsCopy = ds;
  v5 = objc_alloc_init(MTPromise);
  v6 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_258F4B000, v6, OS_LOG_TYPE_DEBUG, "MetricsKit: Started fetching record with IDs", buf, 2u);
  }

  v7 = [objc_alloc(MEMORY[0x277CBC3E0]) initWithRecordIDs:dsCopy];
  applicationBundleIdentifierOverrideForNetworkAttribution = [(MTIDSyncEngine *)self applicationBundleIdentifierOverrideForNetworkAttribution];
  configuration = [v7 configuration];
  [configuration setApplicationBundleIdentifierOverrideForNetworkAttribution:applicationBundleIdentifierOverrideForNetworkAttribution];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __37__MTIDSyncEngine_fetchRecordWithIDs___block_invoke;
  v14[3] = &unk_2798CDF48;
  v10 = v5;
  v15 = v10;
  [v7 setFetchRecordsCompletionBlock:v14];
  container = [(MTIDSyncEngine *)self container];
  privateCloudDatabase = [container privateCloudDatabase];
  [privateCloudDatabase addOperation:v7];

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

- (void)fetchRecordWithID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MTIDSyncEngine *)selfCopy state]== 2)
  {
    objc_sync_exit(selfCopy);

    v6 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      recordName = [dCopy recordName];
      *buf = 138412290;
      v21 = recordName;
      _os_log_impl(&dword_258F4B000, v6, OS_LOG_TYPE_DEBUG, "MetricsKit: Started fetching record with ID %@", buf, 0xCu);
    }

    [(MTIDSyncEngine *)selfCopy addPendingRecordID:dCopy];
    v8 = objc_alloc(MEMORY[0x277CBC3E0]);
    v19 = dCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    v10 = [v8 initWithRecordIDs:v9];

    applicationBundleIdentifierOverrideForNetworkAttribution = [(MTIDSyncEngine *)selfCopy applicationBundleIdentifierOverrideForNetworkAttribution];
    configuration = [v10 configuration];
    [configuration setApplicationBundleIdentifierOverrideForNetworkAttribution:applicationBundleIdentifierOverrideForNetworkAttribution];

    objc_initWeak(buf, selfCopy);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __36__MTIDSyncEngine_fetchRecordWithID___block_invoke;
    v16[3] = &unk_2798CEA00;
    v17 = dCopy;
    objc_copyWeak(&v18, buf);
    [v10 setFetchRecordsCompletionBlock:v16];
    container = [(MTIDSyncEngine *)selfCopy container];
    privateCloudDatabase = [container privateCloudDatabase];
    [privateCloudDatabase addOperation:v10];

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  else
  {
    [(MTIDSyncEngine *)selfCopy startEngine];
    objc_sync_exit(selfCopy);
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
    zoneID = [(MTIDSyncEngine *)obj zoneID];
    v25 = zoneID;
    v26[0] = v3;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];

    v6 = objc_alloc(MEMORY[0x277CBC3B8]);
    zoneID2 = [(MTIDSyncEngine *)obj zoneID];
    v24 = zoneID2;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    v9 = [v6 initWithRecordZoneIDs:v8 configurationsByRecordZoneID:v5];

    applicationBundleIdentifierOverrideForNetworkAttribution = [(MTIDSyncEngine *)obj applicationBundleIdentifierOverrideForNetworkAttribution];
    configuration = [v9 configuration];
    [configuration setApplicationBundleIdentifierOverrideForNetworkAttribution:applicationBundleIdentifierOverrideForNetworkAttribution];

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
    container = [(MTIDSyncEngine *)obj container];
    privateCloudDatabase = [container privateCloudDatabase];
    [privateCloudDatabase addOperation:v9];

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

- (void)saveRecordsWithIDs:(id)ds qualityOfService:(int64_t)service
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if ([(MTIDSyncEngine *)selfCopy qualityOfService]< service)
    {
      [(MTIDSyncEngine *)selfCopy setQualityOfService:service];
    }

    if ([(MTIDSyncEngine *)selfCopy state]== 2)
    {
      queuedRecordIDs = [(MTIDSyncEngine *)selfCopy queuedRecordIDs];
      v9 = [queuedRecordIDs count];

      queuedRecordIDs2 = [(MTIDSyncEngine *)selfCopy queuedRecordIDs];
      [queuedRecordIDs2 addObjectsFromArray:dsCopy];

      if (!v9)
      {
        queuedRecordIDs3 = [(MTIDSyncEngine *)selfCopy queuedRecordIDs];
        v12 = [queuedRecordIDs3 count];

        if (v12)
        {
          v13 = dispatch_time(0, 1000000000);
          queue = [(MTIDSyncEngine *)selfCopy queue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __54__MTIDSyncEngine_saveRecordsWithIDs_qualityOfService___block_invoke;
          block[3] = &unk_2798CD868;
          block[4] = selfCopy;
          dispatch_after(v13, queue, block);
        }
      }
    }

    else
    {
      [(MTIDSyncEngine *)selfCopy startEngine];
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)commit
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  queuedRecordIDs = [(MTIDSyncEngine *)selfCopy queuedRecordIDs];
  allObjects = [queuedRecordIDs allObjects];

  qualityOfService = [(MTIDSyncEngine *)selfCopy qualityOfService];
  queuedRecordIDs2 = [(MTIDSyncEngine *)selfCopy queuedRecordIDs];
  [queuedRecordIDs2 removeAllObjects];

  [(MTIDSyncEngine *)selfCopy setQualityOfService:17];
  objc_sync_exit(selfCopy);

  if ([allObjects count])
  {
    v7 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = 134218240;
      v10 = [allObjects count];
      v11 = 2048;
      v12 = qualityOfService;
      _os_log_impl(&dword_258F4B000, v7, OS_LOG_TYPE_DEBUG, "MetricsKit: Started saving %ld records with qos %ld", &v9, 0x16u);
    }

    [(MTIDSyncEngine *)selfCopy addRecordIDsToSave:allObjects recordIDsToDelete:0 qualityOfService:qualityOfService];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)addRecordIDsToSave:(id)save recordIDsToDelete:(id)delete qualityOfService:(int64_t)service
{
  v39 = *MEMORY[0x277D85DE8];
  saveCopy = save;
  deleteCopy = delete;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MTIDSyncEngine *)selfCopy state]== 2)
  {
    serviceCopy = service;
    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(saveCopy, "count")}];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v11 = saveCopy;
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
          delegate = [(MTIDSyncEngine *)selfCopy delegate];
          v17 = [delegate recordWithID:v15];

          if (v17)
          {
            [(MTIDSyncEngine *)selfCopy addPendingRecordID:v15];
            [v10 addObject:v17];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v12);
    }

    objc_initWeak(&location, selfCopy);
    v18 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:v10 recordIDsToDelete:deleteCopy];
    configuration = [v18 configuration];
    [configuration setQualityOfService:serviceCopy];

    applicationBundleIdentifierOverrideForNetworkAttribution = [(MTIDSyncEngine *)selfCopy applicationBundleIdentifierOverrideForNetworkAttribution];
    configuration2 = [v18 configuration];
    [configuration2 setApplicationBundleIdentifierOverrideForNetworkAttribution:applicationBundleIdentifierOverrideForNetworkAttribution];

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
    container = [(MTIDSyncEngine *)selfCopy container];
    privateCloudDatabase = [container privateCloudDatabase];
    [privateCloudDatabase addOperation:v18];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v32);

    objc_destroyWeak(&location);
  }

  else
  {
    [(MTIDSyncEngine *)selfCopy startEngine];
  }

  objc_sync_exit(selfCopy);

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

- (void)addPendingRecordID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingRecordIDs = [(MTIDSyncEngine *)selfCopy pendingRecordIDs];
  [pendingRecordIDs addObject:dCopy];

  [(MTIDSyncEngine *)selfCopy _beginTransaction];
  objc_sync_exit(selfCopy);
}

- (void)removePendingRecordID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingRecordIDs = [(MTIDSyncEngine *)selfCopy pendingRecordIDs];
  [pendingRecordIDs removeObject:dCopy];

  pendingRecordIDs2 = [(MTIDSyncEngine *)selfCopy pendingRecordIDs];
  v7 = [pendingRecordIDs2 count];

  if (!v7)
  {
    [(MTIDSyncEngine *)selfCopy _endTransaction];
  }

  objc_sync_exit(selfCopy);
}

- (void)_beginTransaction
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  transactions = [(MTIDSyncEngine *)self transactions];
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
  transactions = [(MTIDSyncEngine *)self transactions];
  [transactions removeAllObjects];
}

- (void)handleUserRecordID:(id)d
{
  dCopy = d;
  queue = [(MTIDSyncEngine *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__MTIDSyncEngine_handleUserRecordID___block_invoke;
  v7[3] = &unk_2798CE050;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

void __37__MTIDSyncEngine_handleUserRecordID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accountDidChangeWithUserRecordID:*(a1 + 40)];
}

- (void)handleEngineStartedWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MTIDSyncEngine *)selfCopy setState:2 * (errorCopy == 0)];
  objc_sync_exit(selfCopy);

  queue = [(MTIDSyncEngine *)selfCopy queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__MTIDSyncEngine_handleEngineStartedWithError___block_invoke;
  v8[3] = &unk_2798CE050;
  v8[4] = selfCopy;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(queue, v8);
}

void __47__MTIDSyncEngine_handleEngineStartedWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 syncEngineDidStartWithError:*(a1 + 40)];
}

- (void)handleSavedRecord:(id)record error:(id)error
{
  v30 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  errorCopy = error;
  domain = [errorCopy domain];
  v9 = *MEMORY[0x277CBBF50];
  if ([domain isEqual:*MEMORY[0x277CBBF50]])
  {
    code = [errorCopy code];

    if (code == 14)
    {
      userInfo = [errorCopy userInfo];
      delegate = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFE8]];

      if (delegate)
      {
        v13 = MTMetricsKitOSLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          recordID = [recordCopy recordID];
          recordName = [recordID recordName];
          *buf = 138412290;
          v29 = recordName;
          _os_log_impl(&dword_258F4B000, v13, OS_LOG_TYPE_DEBUG, "MetricsKit: Server has a newer version of record with ID %@, use server record instead", buf, 0xCu);
        }

        v16 = delegate;
        errorCopy = 0;
        recordCopy = v16;
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  domain2 = [errorCopy domain];
  if (![domain2 isEqual:v9])
  {

    goto LABEL_13;
  }

  code2 = [errorCopy code];

  if (code2 == 11)
  {
    delegate = [(MTIDSyncEngine *)self delegate];
    recordID2 = [recordCopy recordID];
    [delegate recordWasDeleted:recordID2];

LABEL_11:
  }

LABEL_13:
  queue = [(MTIDSyncEngine *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__MTIDSyncEngine_handleSavedRecord_error___block_invoke;
  block[3] = &unk_2798CDA18;
  v25 = errorCopy;
  selfCopy = self;
  v27 = recordCopy;
  v21 = recordCopy;
  v22 = errorCopy;
  dispatch_async(queue, block);

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

- (void)handleFetchedRecords:(id)records error:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  errorCopy = error;
  if (errorCopy)
  {
    v8 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = errorCopy;
      _os_log_impl(&dword_258F4B000, v8, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to fetch records with error %@", buf, 0xCu);
    }
  }

  else
  {
    queue = [(MTIDSyncEngine *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __45__MTIDSyncEngine_handleFetchedRecords_error___block_invoke;
    v11[3] = &unk_2798CE050;
    v12 = recordsCopy;
    selfCopy = self;
    dispatch_async(queue, v11);

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

- (void)handleDeletedRecordID:(id)d error:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  errorCopy = error;
  if (errorCopy)
  {
    v8 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      recordName = [dCopy recordName];
      *buf = 138412546;
      v15 = recordName;
      v16 = 2112;
      v17 = errorCopy;
      _os_log_impl(&dword_258F4B000, v8, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to delete record with ID %@ error %@", buf, 0x16u);
    }
  }

  else
  {
    queue = [(MTIDSyncEngine *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __46__MTIDSyncEngine_handleDeletedRecordID_error___block_invoke;
    v12[3] = &unk_2798CE050;
    v12[4] = self;
    v13 = dCopy;
    dispatch_async(queue, v12);
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