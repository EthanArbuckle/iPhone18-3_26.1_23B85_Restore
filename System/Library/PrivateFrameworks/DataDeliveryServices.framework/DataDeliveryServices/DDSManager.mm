@interface DDSManager
- (DDSManager)initWithProvider:(id)a3 tracker:(id)a4;
- (DDSManager)initWithProvider:(id)a3 tracker:(id)a4 dataSource:(id)a5;
- (DDSManager)initWithProvider:(id)a3 tracker:(id)a4 dataSource:(id)a5 autoAssetManager:(id)a6;
- (DDSManagingDelegate)delegate;
- (id)autoAssetQueryForAssertion:(id)a3;
- (id)catalogUpdateDateForAssetType:(id)a3;
- (int64_t)assetUpdateStatusForAssertion:(id)a3;
- (int64_t)modifyAssetUpdateStatusForAssertion:(id)a3 status:(int64_t)a4;
- (void)addAssertionForQuery:(id)a3 policy:(id)a4 assertionID:(id)a5 clientID:(id)a6;
- (void)assertionIDsForClientID:(id)a3 reply:(id)a4;
- (void)createAutoAssetAssertionForExistingAssertions;
- (void)createRemoteSyncStateForAssetType:(id)a3;
- (void)deleteV1AssetsIfNecessary;
- (void)didChangeDownloadState:(unint64_t)a3 forAsset:(id)a4;
- (void)didCompleteDownloadForAssertion:(id)a3 error:(id)a4;
- (void)didCompleteDownloadForAssertions:(id)a3 error:(id)a4;
- (void)didEndUpdateCycleWithAssetType:(id)a3 error:(id)a4;
- (void)didStartUpdateCycleForAssetType:(id)a3;
- (void)didUpdateCatalogWithAssetType:(id)a3 error:(id)a4;
- (void)fetchAssetUpdateStatusForQuery:(id)a3 callback:(id)a4;
- (void)fetchCatalogBasedAssetUpdateStatusForAssertion:(id)a3 callback:(id)a4;
- (void)handleAddedNewDescriptor:(id)a3 forAssertion:(id)a4;
- (void)handleNewAssertions:(id)a3;
- (void)handleRemovedAssertions:(id)a3;
- (void)remoteSyncStateRequestsResetForAssetType:(id)a3;
- (void)remoteSyncStateRequestsRetryForAssetType:(id)a3;
- (void)remoteSyncStateRequestsUpdateForAssetType:(id)a3;
- (void)removeAssertionWithID:(id)a3;
- (void)removeOldAssets;
- (void)serverDidUpdateAssetsWithType:(id)a3;
- (void)setCatalogUpdateDate:(id)a3 forAssetType:(id)a4;
- (void)triggerDumpWithReply:(id)a3;
- (void)triggerUpdate;
- (void)updateAssetForQuery:(id)a3 callback:(id)a4;
- (void)updateAutoAssetForAssetType:(id)a3;
- (void)updateCatalogBasedAssetForAssertion:(id)a3 callback:(id)a4;
- (void)updateCatalogForAssetType:(id)a3 withCompletion:(id)a4;
@end

@implementation DDSManager

- (DDSManager)initWithProvider:(id)a3 tracker:(id)a4 dataSource:(id)a5 autoAssetManager:(id)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v39.receiver = self;
  v39.super_class = DDSManager;
  v15 = [(DDSManager *)&v39 init];
  v16 = v15;
  if (v15)
  {
    v34 = v12;
    v15->_lock._os_unfair_lock_opaque = 0;
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingAssertionsToUpdateByAssetType = v16->_pendingAssertionsToUpdateByAssetType;
    v16->_pendingAssertionsToUpdateByAssetType = v17;

    v19 = dispatch_queue_create("com.apple.DataDeliveryServices.DDSManager", 0);
    workQueue = v16->_workQueue;
    v16->_workQueue = v19;

    objc_storeStrong(&v16->_tracker, a4);
    [(DDSAssetTracking *)v16->_tracker setDelegate:v16];
    objc_storeStrong(&v16->_provider, a3);
    [(DDSAssetProviding *)v16->_provider setDelegate:v16];
    objc_storeStrong(&v16->_dataSource, a5);
    objc_storeStrong(&v16->_autoAssetManager, a6);
    v21 = [MEMORY[0x1E695DF90] dictionary];
    remoteSyncStateByAssetType = v16->_remoteSyncStateByAssetType;
    v16->_remoteSyncStateByAssetType = v21;

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v23 = [(DDSAssetTracking *)v16->_tracker trackedAssetTypes];
    v24 = [v23 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v36;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v36 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v35 + 1) + 8 * i);
          v29 = [[DDSRemoteSyncState alloc] initWithDelegate:v16 assetType:v28];
          [(NSMutableDictionary *)v16->_remoteSyncStateByAssetType setObject:v29 forKey:v28];
          [(DDSRemoteSyncState *)v29 loadStateAndScheduleUpdate];
        }

        v25 = [v23 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v25);
    }

    v30 = objc_alloc_init(DDSAssetObserver);
    assetObserver = v16->_assetObserver;
    v16->_assetObserver = v30;

    [(DDSAssetObserving *)v16->_assetObserver setDelegate:v16];
    [(DDSAssetObserving *)v16->_assetObserver observeAssetType:@"com.apple.MobileAsset.LinguisticData"];
    [(DDSManager *)v16 removeOldAssets];
    [(DDSManager *)v16 createAutoAssetAssertionForExistingAssertions];
    v12 = v34;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v16;
}

- (DDSManager)initWithProvider:(id)a3 tracker:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(DDSManagerDataSource);
  v9 = [(DDSManager *)self initWithProvider:v7 tracker:v6 dataSource:v8];

  return v9;
}

- (DDSManager)initWithProvider:(id)a3 tracker:(id)a4 dataSource:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(DDSMAAutoAssetManager);
  v12 = [(DDSManager *)self initWithProvider:v10 tracker:v9 dataSource:v8 autoAssetManager:v11];

  return v12;
}

void __72__DDSManager_beginUpdateCycleForAssetType_forced_discretionaryDownload___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_initWeak(&location, v4);

  if (v4)
  {
    if (v3)
    {
      v6 = objc_loadWeakRetained(&location);
      v7 = [v6 workQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __72__DDSManager_beginUpdateCycleForAssetType_forced_discretionaryDownload___block_invoke_2;
      block[3] = &unk_1E86C5B18;
      objc_copyWeak(&v29, &location);
      v28 = *(a1 + 40);
      dispatch_sync(v7, block);

      objc_destroyWeak(&v29);
    }

    else
    {
      v21 = 0;
      v22 = &v21;
      v23 = 0x3032000000;
      v24 = __Block_byref_object_copy__4;
      v25 = __Block_byref_object_dispose__4;
      v26 = 0;
      v9 = objc_loadWeakRetained(&location);
      v10 = [v9 workQueue];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __72__DDSManager_beginUpdateCycleForAssetType_forced_discretionaryDownload___block_invoke_293;
      v16[3] = &unk_1E86C6680;
      objc_copyWeak(&v19, &location);
      v11 = *(a1 + 40);
      v20 = *(a1 + 48);
      v17 = v11;
      v18 = &v21;
      dispatch_sync(v10, v16);

      v12 = [v22[5] count];
      v13 = objc_loadWeakRetained(&location);
      v14 = v13;
      if (v12)
      {
        v15 = [v13 provider];
        [v15 beginDownloadForAssertions:v22[5] discretionaryDownload:*(a1 + 49)];
      }

      else
      {
        [v13 didEndUpdateCycleWithAssetType:*(a1 + 40) error:0];
      }

      objc_destroyWeak(&v19);
      _Block_object_dispose(&v21, 8);
    }
  }

  else
  {
    v8 = UpdateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __72__DDSManager_beginUpdateCycleForAssetType_forced_discretionaryDownload___block_invoke_cold_1(v8);
    }
  }

  objc_destroyWeak(&location);
}

void __72__DDSManager_beginUpdateCycleForAssetType_forced_discretionaryDownload___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained pendingAssertionsToUpdateByAssetType];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v2 setObject:v3 forKey:*(a1 + 32)];
}

void __72__DDSManager_beginUpdateCycleForAssetType_forced_discretionaryDownload___block_invoke_293(uint64_t a1)
{
  v66 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained pendingAssertionsToUpdateByAssetType];
  v4 = [v3 objectForKey:*(a1 + 32)];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  v7 = v6;

  if (*(a1 + 56) == 1)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v11 = objc_loadWeakRetained((a1 + 48));
    v12 = [v11 tracker];
    v13 = [v12 allAssertions];

    v14 = [v13 countByEnumeratingWithState:&v56 objects:v65 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v57;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v57 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v56 + 1) + 8 * i);
          v19 = [v18 query];
          v20 = [v19 assetType];
          v21 = [v20 isEqualToString:*(a1 + 32)];

          if (v21)
          {
            [*(*(*(a1 + 40) + 8) + 40) addObject:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v56 objects:v65 count:16];
      }

      while (v15);
    }

    v22 = UpdateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 32);
      v24 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138543618;
      v62 = v24;
      v63 = 2114;
      v64 = v23;
      v25 = "Cycle will force update all assertions: %{public}@ for asset type: %{public}@";
LABEL_30:
      _os_log_impl(&dword_1DF7C6000, v22, OS_LOG_TYPE_DEFAULT, v25, buf, 0x16u);
    }
  }

  else if ([v7 count])
  {
    v26 = [v7 mutableCopy];
    v27 = *(*(a1 + 40) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;

    v29 = objc_loadWeakRetained((a1 + 48));
    v30 = [v29 pendingAssertionsToUpdateByAssetType];
    v31 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [v30 setObject:v31 forKey:*(a1 + 32)];

    v22 = UpdateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(a1 + 32);
      v33 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138543618;
      v62 = v33;
      v63 = 2114;
      v64 = v32;
      v25 = "Cycle will update pending assertions: %{public}@ for asset type: %{public}@";
      goto LABEL_30;
    }
  }

  else
  {
    v34 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v35 = *(*(a1 + 40) + 8);
    v36 = *(v35 + 40);
    *(v35 + 40) = v34;

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v37 = objc_loadWeakRetained((a1 + 48));
    v38 = [v37 tracker];
    v39 = [MEMORY[0x1E695DF00] date];
    v40 = [v38 assertionDueForUpdateSinceDate:v39];

    v41 = [v40 countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v53;
      do
      {
        for (j = 0; j != v42; ++j)
        {
          if (*v53 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v52 + 1) + 8 * j);
          v46 = [v45 query];
          v47 = [v46 assetType];
          v48 = [v47 isEqualToString:*(a1 + 32)];

          if (v48)
          {
            [*(*(*(a1 + 40) + 8) + 40) addObject:v45];
          }
        }

        v42 = [v40 countByEnumeratingWithState:&v52 objects:v60 count:16];
      }

      while (v42);
    }

    v22 = UpdateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v49 = *(a1 + 32);
      v50 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138543618;
      v62 = v50;
      v63 = 2114;
      v64 = v49;
      v25 = "Cycle will update time eligible assertions: %{public}@ for asset type: %{public}@";
      goto LABEL_30;
    }
  }

  v51 = *MEMORY[0x1E69E9840];
}

- (void)addAssertionForQuery:(id)a3 policy:(id)a4 assertionID:(id)a5 clientID:(id)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = UpdateLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138544130;
    v20 = v10;
    v21 = 2114;
    v22 = v11;
    v23 = 2114;
    v24 = v12;
    v25 = 2114;
    v26 = v13;
    _os_log_impl(&dword_1DF7C6000, v14, OS_LOG_TYPE_DEFAULT, "Add assertion for query: %{public}@ policy: (%{public}@) assertionID: (%{public}@) clientID: (%{public}@)", &v19, 0x2Au);
  }

  v15 = [(DDSManager *)self assetObserver];
  v16 = [v10 assetType];
  [v15 observeAssetType:v16];

  v17 = [(DDSManager *)self tracker];
  [v17 addAssertionForQuery:v10 policy:v11 assertionID:v12 clientID:v13];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)removeAssertionWithID:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = UpdateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Remove assertion with ID: (%{public}@)", &v8, 0xCu);
  }

  v6 = [(DDSManager *)self tracker];
  [v6 removeAssertionWithID:v4];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)assertionIDsForClientID:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DDSManager *)self tracker];
  v9 = [v8 assertionIDsForClientID:v6];

  v10 = DefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [DDSManager assertionIDsForClientID:reply:];
  }

  v7[2](v7, v9);
}

- (void)triggerDumpWithReply:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v34 = a3;
  v4 = DefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [DDSManager triggerDumpWithReply:v4];
  }

  v35 = [MEMORY[0x1E695DF70] array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v5 = [(DDSManager *)self tracker];
  v6 = [v5 trackedAssetTypes];

  v7 = [v6 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v42;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v42 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v41 + 1) + 8 * v10);
      v12 = [DDSAssetQuery alloc];
      v13 = +[DDSAttributeFilter attributeFilter];
      v14 = [(DDSAssetQuery *)v12 initWithAssetType:v11 filter:v13];

      [(DDSAssetQuery *)v14 setInstalledOnly:1];
      [(DDSAssetQuery *)v14 setLatestOnly:0];
      [(DDSAssetQuery *)v14 setLocalOnly:1];
      v15 = [(DDSManager *)self provider];
      v40 = 0;
      v16 = [v15 assetsForQuery:v14 errorPtr:&v40];
      v17 = v40;

      [v35 addObjectsFromArray:v16];
      if (v17)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v41 objects:v46 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v17 = 0;
  }

  v18 = [MEMORY[0x1E695DFA8] set];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v19 = [(DDSManager *)self tracker];
  v20 = [v19 allAssertions];

  v21 = [v20 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v37;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [(DDSManager *)self autoAssetQueryForAssertion:*(*(&v36 + 1) + 8 * i), v34];
        if (v25)
        {
          v26 = [(DDSManager *)self autoAssetManager];
          v27 = [v26 assetsForQuery:v25];

          [v18 addObjectsFromArray:v27];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v22);
  }

  v28 = [v18 allObjects];
  [v35 addObjectsFromArray:v28];

  if (v17)
  {
    v29 = DefaultLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [DDSManager triggerDumpWithReply:];
    }

    v30 = @"Error occurred!!!";
  }

  else
  {
    v29 = +[DDSAnalytics sharedInstance];
    v31 = [(DDSManager *)self tracker];
    v32 = [v31 allAssertions];
    v30 = [v29 dumpAssetLogWithAssertions:v32 installedAssets:v35];
  }

  v34[2](v34, v30);
  v33 = *MEMORY[0x1E69E9840];
}

- (void)triggerUpdate
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = DefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF7C6000, v3, OS_LOG_TYPE_DEFAULT, "Asset update requested via ddsutil", buf, 2u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [(DDSManager *)self tracker];
  v5 = [v4 trackedAssetTypes];

  v6 = [v5 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(DDSManager *)self beginUpdateCycleForAssetType:*(*(&v25 + 1) + 8 * v9++) forced:1 discretionaryDownload:0];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v7);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [(DDSManager *)self tracker];
  v11 = [v10 allAssertions];

  v12 = [v11 countByEnumeratingWithState:&v21 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      v15 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(DDSManager *)self autoAssetQueryForAssertion:*(*(&v21 + 1) + 8 * v15)];
        if (v16)
        {
          v17 = [(DDSManager *)self autoAssetManager];
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __27__DDSManager_triggerUpdate__block_invoke;
          v19[3] = &unk_1E86C66D0;
          v20 = v16;
          [v17 updateAssetForQuery:v20 callback:v19];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v21 objects:v30 count:16];
    }

    while (v13);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __27__DDSManager_triggerUpdate__block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = DefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __27__DDSManager_triggerUpdate__block_invoke_cold_1(a1);
    }
  }
}

- (id)autoAssetQueryForAssertion:(id)a3
{
  v4 = a3;
  v5 = [v4 query];
  v6 = [v5 assetType];
  v7 = [DDSMAAutoAssetManager isAutoAssetType:v6];

  if (v7)
  {
    v8 = [v4 query];
  }

  else
  {
    v9 = [(DDSManager *)self autoAssetManager];
    v10 = [v4 query];
    v11 = [v10 assetType];
    v12 = [v9 autoAssetTypeForAsserType:v11];

    if (v12)
    {
      v13 = [DDSAssetQuery alloc];
      v14 = [v4 query];
      v15 = [v14 filter];
      v8 = [(DDSAssetQuery *)v13 initWithAssetType:v12 filter:v15];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)handleNewAssertions:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = UpdateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Handle new assertions: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__4;
  v26 = __Block_byref_object_dispose__4;
  v27 = [MEMORY[0x1E695DFA8] set];
  v6 = [(DDSManager *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__DDSManager_handleNewAssertions___block_invoke;
  block[3] = &unk_1E86C65A8;
  v7 = v4;
  v19 = v7;
  v20 = self;
  p_buf = &buf;
  dispatch_sync(v6, block);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = *(*(&buf + 1) + 40);
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        [(DDSManager *)self createRemoteSyncStateForAssetType:v12, v14];
        [(DDSManager *)self beginUpdateCycleForAssetType:v12 forced:0 discretionaryDownload:0];
      }

      v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v9);
  }

  _Block_object_dispose(&buf, 8);
  v13 = *MEMORY[0x1E69E9840];
}

void __34__DDSManager_handleNewAssertions___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v38;
    v6 = 0x1E86C5000uLL;
    *&v3 = 138543618;
    v34 = v3;
    do
    {
      v7 = 0;
      v35 = v4;
      do
      {
        if (*v38 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v37 + 1) + 8 * v7);
        v9 = *(v6 + 2240);
        v10 = [v8 query];
        v11 = [v10 assetType];
        LODWORD(v9) = [v9 isAutoAssetType:v11];

        if (v9)
        {
          v12 = AutoAssetLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v42 = v8;
            _os_log_impl(&dword_1DF7C6000, v12, OS_LOG_TYPE_DEFAULT, "Handle new assertion for auto asset: %{public}@", buf, 0xCu);
          }

          v13 = [*(a1 + 40) autoAssetManager];
          v14 = [v8 query];
          [v13 registerInterestInContentForQuery:v14];
        }

        else
        {
          v15 = [*(a1 + 40) autoAssetManager];
          v16 = [v8 query];
          v17 = [v16 assetType];
          v13 = [v15 autoAssetTypeForAsserType:v17];

          if (v13)
          {
            v18 = AutoAssetLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v34;
              v42 = v13;
              v43 = 2114;
              v44 = v8;
              _os_log_impl(&dword_1DF7C6000, v18, OS_LOG_TYPE_DEFAULT, "Handle new assertion for auto asset with override asset type: %{public}@, assertion: %{public}@", buf, 0x16u);
            }

            v19 = [DDSAssetQuery alloc];
            v20 = [v8 query];
            v21 = [v20 filter];
            v22 = [(DDSAssetQuery *)v19 initWithAssetType:v13 filter:v21];

            v23 = [*(a1 + 40) autoAssetManager];
            [v23 registerInterestInContentForQuery:v22];
          }

          v24 = v5;
          v25 = v6;
          v26 = [v8 query];
          v14 = [v26 assetType];

          [*(*(*(a1 + 48) + 8) + 40) addObject:v14];
          v27 = [*(a1 + 40) pendingAssertionsToUpdateByAssetType];
          v28 = [v27 objectForKey:v14];
          v29 = v28;
          if (v28)
          {
            v30 = v28;
          }

          else
          {
            v30 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          }

          v31 = v30;

          [v31 addObject:v8];
          v32 = [*(a1 + 40) pendingAssertionsToUpdateByAssetType];
          [v32 setObject:v31 forKey:v14];

          v6 = v25;
          v5 = v24;
          v4 = v35;
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v4);
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)handleAddedNewDescriptor:(id)a3 forAssertion:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = DefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_1DF7C6000, v7, OS_LOG_TYPE_DEFAULT, "New descriptor : %{public}@ added for assertion: %{public}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)handleRemovedAssertions:(id)a3
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = UpdateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v63 = v4;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Asked to remove assertions: %{public}@, will let garbage collection collect.", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E695DF70] array];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v54 objects:v61 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v55;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v55 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(DDSManager *)self autoAssetQueryForAssertion:*(*(&v54 + 1) + 8 * i)];
        if (v12)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v54 objects:v61 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    v36 = v7;
    v13 = AutoAssetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF7C6000, v13, OS_LOG_TYPE_DEFAULT, "Asked to remove assertions for auto asset", buf, 2u);
    }

    v14 = [MEMORY[0x1E695DFA8] set];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v15 = [(DDSManager *)self tracker];
    v16 = [v15 allAssertions];

    v17 = [v16 countByEnumeratingWithState:&v50 objects:v60 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v51;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v51 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [(DDSManager *)self autoAssetQueryForAssertion:*(*(&v50 + 1) + 8 * j), v36];
          if (v21)
          {
            v22 = [(DDSManager *)self autoAssetManager];
            v23 = [v22 autoAssetSelectorsForQuery:v21];

            [v14 addObjectsFromArray:v23];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v50 objects:v60 count:16];
      }

      while (v18);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v37 = v6;
    obj = v6;
    v40 = [obj countByEnumeratingWithState:&v46 objects:v59 count:16];
    if (v40)
    {
      v39 = *v47;
      do
      {
        v24 = 0;
        do
        {
          if (*v47 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v41 = v24;
          v25 = *(*(&v46 + 1) + 8 * v24);
          v26 = [(DDSManager *)self autoAssetManager];
          v27 = [v26 autoAssetSelectorsForQuery:v25];

          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v28 = v27;
          v29 = [v28 countByEnumeratingWithState:&v42 objects:v58 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v43;
            do
            {
              for (k = 0; k != v30; ++k)
              {
                if (*v43 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                v33 = *(*(&v42 + 1) + 8 * k);
                if ([v14 containsObject:v33])
                {
                  v34 = AutoAssetLog();
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543362;
                    v63 = v33;
                    _os_log_impl(&dword_1DF7C6000, v34, OS_LOG_TYPE_DEFAULT, "Cannot eliminate interest in content for asset selector: %{public}@", buf, 0xCu);
                  }
                }

                else
                {
                  v34 = [(DDSManager *)self autoAssetManager];
                  [v34 unregisterInterestInContentForAssetSelector:v33];
                }
              }

              v30 = [v28 countByEnumeratingWithState:&v42 objects:v58 count:16];
            }

            while (v30);
          }

          v24 = v41 + 1;
        }

        while (v41 + 1 != v40);
        v40 = [obj countByEnumeratingWithState:&v46 objects:v59 count:16];
      }

      while (v40);
    }

    v7 = v36;
    v6 = v37;
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (void)didChangeDownloadState:(unint64_t)a3 forAsset:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = DefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 debuggingID];
    v12 = 134349314;
    v13 = a3;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_1DF7C6000, v6, OS_LOG_TYPE_DEFAULT, "Download state: %{public}lu for asset: %{public}@", &v12, 0x16u);
  }

  if (a3 > 9)
  {
    if (a3 == 10)
    {
      v9 = +[DDSAnalytics sharedInstance];
      [v9 cancelRecordingForAsset:v5];
      goto LABEL_13;
    }

    if (a3 == 11)
    {
      v8 = +[DDSAnalytics sharedInstance];
      v9 = v8;
      v10 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (a3 == 1)
    {
      v8 = +[DDSAnalytics sharedInstance];
      v9 = v8;
      v10 = 1;
      goto LABEL_11;
    }

    if (a3 == 9)
    {
      v8 = +[DDSAnalytics sharedInstance];
      v9 = v8;
      v10 = 3;
LABEL_11:
      [v8 recordAssetAction:v10 forAsset:v5];
LABEL_13:
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)didCompleteDownloadForAssertion:(id)a3 error:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = UpdateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_1DF7C6000, v8, OS_LOG_TYPE_DEFAULT, "Completed download for assertion (%{public}@) with error: %{public}@", &v12, 0x16u);
  }

  if (!v7)
  {
    v9 = [(DDSManager *)self tracker];
    v10 = [MEMORY[0x1E695DF00] now];
    [v9 didUpdateAssertion:v6 atDate:v10];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)didCompleteDownloadForAssertions:(id)a3 error:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = UpdateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v35 = v6;
    v36 = 2114;
    v37 = v7;
    _os_log_impl(&dword_1DF7C6000, v8, OS_LOG_TYPE_DEFAULT, "Completed download for assertions (%{public}@) with error: %{public}@", buf, 0x16u);
  }

  v9 = UpdateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF7C6000, v9, OS_LOG_TYPE_DEFAULT, "Calling didEndUpdateCycle", buf, 2u);
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v28 + 1) + 8 * v15) query];
        v17 = [v16 assetType];
        [v10 addObject:v17];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v13);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = v10;
  v19 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      v22 = 0;
      do
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(DDSManager *)self didEndUpdateCycleWithAssetType:*(*(&v24 + 1) + 8 * v22++) error:v7, v24];
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v20);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)didUpdateCatalogWithAssetType:(id)a3 error:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = UpdateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_1DF7C6000, v8, OS_LOG_TYPE_DEFAULT, "didUpdateCatalogWithAssetType for asset type: %{public}@ with error: %{public}@", &v12, 0x16u);
  }

  if (v7)
  {
    [(DDSManager *)self didEndUpdateCycleWithAssetType:v6 error:v7];
  }

  else
  {
    v9 = [(DDSManager *)self dataSource];
    v10 = [v9 date];
    [(DDSManager *)self setCatalogUpdateDate:v10 forAssetType:v6];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)createRemoteSyncStateForAssetType:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = [(DDSManager *)self remoteSyncStateByAssetType];
  v5 = [v4 objectForKey:v7];

  if (!v5)
  {
    v5 = [[DDSRemoteSyncState alloc] initWithDelegate:self assetType:v7];
    v6 = [(DDSManager *)self remoteSyncStateByAssetType];
    [v6 setObject:v5 forKey:v7];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateAutoAssetForAssetType:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = UpdateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v4;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Begin update cycle for auto asset corresponding to asset type %@ ...", buf, 0xCu);
  }

  v15 = v4;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(DDSManager *)self tracker];
  v7 = [v6 allAssertions];

  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(DDSManager *)self autoAssetQueryForAssertion:*(*(&v18 + 1) + 8 * v11), v15];
        if (v12)
        {
          v13 = [(DDSManager *)self autoAssetManager];
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __42__DDSManager_updateAutoAssetForAssetType___block_invoke;
          v16[3] = &unk_1E86C66D0;
          v17 = v12;
          [v13 updateAssetForQuery:v17 callback:v16];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __42__DDSManager_updateAutoAssetForAssetType___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = AutoAssetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_1DF7C6000, v7, OS_LOG_TYPE_DEFAULT, "Auto asset update for query: %{public}@ completed successfully", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __42__DDSManager_updateAutoAssetForAssetType___block_invoke_cold_1(a1);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)remoteSyncStateRequestsUpdateForAssetType:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = UpdateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Begin update cycle requested for %@ ...", &v7, 0xCu);
  }

  [(DDSManager *)self updateAutoAssetForAssetType:v4];
  [(DDSManager *)self beginUpdateCycleForAssetType:v4 forced:0 discretionaryDownload:1];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)remoteSyncStateRequestsRetryForAssetType:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = UpdateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Retry update cycle requested for %@ ...", &v7, 0xCu);
  }

  [(DDSManager *)self willRetryUpdateCycle];
  [(DDSManager *)self beginUpdateCycleForAssetType:v4 forced:0 discretionaryDownload:0];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)remoteSyncStateRequestsResetForAssetType:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = UpdateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "DDS assertion reset requested, initiating forced update for %@", &v8, 0xCu);
  }

  [(DDSManager *)self updateAutoAssetForAssetType:v4];
  v6 = [(DDSManager *)self tracker];
  [v6 resetAssertionDueDatesForAssetType:v4];

  [(DDSManager *)self beginUpdateCycleForAssetType:v4 forced:1 discretionaryDownload:0];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)didStartUpdateCycleForAssetType:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(DDSManager *)self remoteSyncStateByAssetType];
  v6 = [v5 objectForKey:v4];

  os_unfair_lock_unlock(&self->_lock);
  [v6 beganUpdateCycle];
}

- (void)didEndUpdateCycleWithAssetType:(id)a3 error:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = UpdateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_1DF7C6000, v8, OS_LOG_TYPE_DEFAULT, "Update cycled ended with error: %{public}@", &buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  v9 = [(DDSManager *)self remoteSyncStateByAssetType];
  v10 = [v9 objectForKey:v6];

  os_unfair_lock_unlock(&self->_lock);
  [v10 completedUpdateCycleWithError:v7];
  if (v7)
  {
    v11 = [(DDSManager *)self workQueue];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __51__DDSManager_didEndUpdateCycleWithAssetType_error___block_invoke_304;
    v20 = &unk_1E86C5C70;
    v21 = self;
    v22 = v6;
    dispatch_sync(v11, &v17);

    [v10 syncStatus];
  }

  else
  {
    v12 = [(DDSManager *)self assetObserver];
    [v12 notifyObserversAssetsUpdatedForType:v6];

    *&buf = 0;
    *(&buf + 1) = &buf;
    v28 = 0x2020000000;
    v29 = 0;
    v13 = [(DDSManager *)self workQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__DDSManager_didEndUpdateCycleWithAssetType_error___block_invoke;
    block[3] = &unk_1E86C65A8;
    block[4] = self;
    v14 = v6;
    v25 = v14;
    p_buf = &buf;
    dispatch_sync(v13, block);

    if (*(*(&buf + 1) + 24) == 1)
    {
      v15 = UpdateLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&dword_1DF7C6000, v15, OS_LOG_TYPE_DEFAULT, "Begin cycle for missed/remaining pending assertions...", v23, 2u);
      }

      [(DDSManager *)self beginUpdateCycleForAssetType:v14 forced:0 discretionaryDownload:1];
    }

    _Block_object_dispose(&buf, 8);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __51__DDSManager_didEndUpdateCycleWithAssetType_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingAssertionsToUpdateByAssetType];
  v3 = [v2 objectForKey:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  v6 = v5;

  *(*(*(a1 + 48) + 8) + 24) = [v6 count] != 0;
}

void __51__DDSManager_didEndUpdateCycleWithAssetType_error___block_invoke_304(uint64_t a1)
{
  v3 = [*(a1 + 32) pendingAssertionsToUpdateByAssetType];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v3 setObject:v2 forKey:*(a1 + 40)];
}

- (void)serverDidUpdateAssetsWithType:(id)a3
{
  v4 = a3;
  v5 = [(DDSManager *)self provider];
  [v5 serverDidUpdateAssetsWithType:v4];
}

- (void)deleteV1AssetsIfNecessary
{
  v2 = [(DDSManager *)self workQueue];
  dispatch_assert_queue_V2(v2);

  v3 = DefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF7C6000, v3, OS_LOG_TYPE_DEFAULT, "Requesting clean v1 LinguisticData repository", buf, 2u);
  }

  MEMORY[0x1E12DF220](@"com.apple.MobileAsset.LinguisticData");
  v4 = DefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1DF7C6000, v4, OS_LOG_TYPE_DEFAULT, "Finished clean v1 LinguisticData repository", v5, 2u);
  }
}

- (void)removeOldAssets
{
  v3 = [(DDSManager *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__DDSManager_removeOldAssets__block_invoke;
  block[3] = &unk_1E86C5AF0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __29__DDSManager_removeOldAssets__block_invoke(uint64_t a1)
{
  [*(a1 + 32) deleteV1AssetsIfNecessary];
  v6 = [*(a1 + 32) provider];
  v2 = MEMORY[0x1E695DFD8];
  v3 = [*(a1 + 32) tracker];
  v4 = [v3 allAssertions];
  v5 = [v2 setWithArray:v4];
  [v6 removeOldAssetsForAssertions:v5];
}

- (void)createAutoAssetAssertionForExistingAssertions
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = DefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF7C6000, v3, OS_LOG_TYPE_DEFAULT, "Create auto asset assertions for existing assertions", buf, 2u);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [(DDSManager *)self tracker];
  v5 = [v4 allAssertions];

  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        v11 = [(DDSManager *)self autoAssetManager];
        v12 = [v10 query];
        v13 = [v12 assetType];
        v14 = [v11 autoAssetTypeForAsserType:v13];

        if (v14)
        {
          v15 = [DDSAssetQuery alloc];
          v16 = [v10 query];
          v17 = [v16 filter];
          v18 = [(DDSAssetQuery *)v15 initWithAssetType:v14 filter:v17];

          v19 = [(DDSManager *)self autoAssetManager];
          [v19 registerInterestInContentForQuery:v18];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (int64_t)assetUpdateStatusForAssertion:(id)a3
{
  v4 = a3;
  v5 = [(DDSManager *)self provider];
  v6 = [v5 updatableAssetsForAssertion:v4];

  v7 = [v6 count] != 0;
  v8 = DefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(DDSManager *)v4 assetUpdateStatusForAssertion:v7, v8];
  }

  return v7;
}

- (void)updateCatalogForAssetType:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DDSManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_alloc_init(MEMORY[0x1E69B1948]);
  [v9 setAllowsCellularAccess:1];
  [v9 setAllowsExpensiveAccess:1];
  [v9 setDiscretionary:0];
  v10 = [(DDSManager *)self provider];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__DDSManager_updateCatalogForAssetType_withCompletion___block_invoke;
  v12[3] = &unk_1E86C6410;
  v13 = v6;
  v11 = v6;
  [v10 startCatalogDownloadForAssetType:v7 withDownloadOptions:v9 withCompletion:v12];
}

- (void)setCatalogUpdateDate:(id)a3 forAssetType:(id)a4
{
  v6 = a3;
  v8 = [DDSManager updateCatalogMetadataKeyForAssetType:a4];
  v7 = [(DDSManager *)self dataSource];
  [v7 setDate:v6 forPreferenceKey:v8];
}

- (id)catalogUpdateDateForAssetType:(id)a3
{
  v4 = a3;
  v5 = [(DDSManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [DDSManager updateCatalogMetadataKeyForAssetType:v4];

  v7 = [(DDSManager *)self dataSource];
  v8 = [v7 dateForPreferenceKey:v6];

  return v8;
}

- (int64_t)modifyAssetUpdateStatusForAssertion:(id)a3 status:(int64_t)a4
{
  v6 = a3;
  v7 = [(DDSManager *)self tracker];
  v8 = [v7 updateStatusForAssertion:v6];

  if (v8 == 2)
  {
    a4 = 2;
  }

  else
  {
    v9 = [(DDSManager *)self tracker];
    [v9 modifyUpdateStatusForAssertion:v6 toStatus:a4];
  }

  return a4;
}

- (void)fetchCatalogBasedAssetUpdateStatusForAssertion:(id)a3 callback:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 query];
  v9 = [v8 assetType];
  v10 = [(DDSManager *)self catalogUpdateDateForAssetType:v9];

  if (v10 && ([v10 timeIntervalSinceNow], v11 > -86400.0))
  {
    v12 = DefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v6 query];
      v14 = [v13 assetType];
      *buf = 138412546;
      v27 = v14;
      v28 = 2112;
      v29 = v10;
      _os_log_impl(&dword_1DF7C6000, v12, OS_LOG_TYPE_DEFAULT, "Catalog is already updated for asset type: %@ at %@, hence skip updating it again", buf, 0x16u);
    }

    v15 = [(DDSManager *)self assetUpdateStatusForAssertion:v6];
    v16 = [(DDSManager *)self tracker];
    [v16 modifyUpdateStatusForAssertion:v6 toStatus:v15];

    v7[2](v7, v15, 0);
  }

  else
  {
    v17 = [v6 query];
    v18 = [v17 assetType];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __70__DDSManager_fetchCatalogBasedAssetUpdateStatusForAssertion_callback___block_invoke;
    v21[3] = &unk_1E86C66F8;
    v22 = v17;
    v23 = self;
    v24 = v6;
    v25 = v7;
    v19 = v17;
    [(DDSManager *)self updateCatalogForAssetType:v18 withCompletion:v21];
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __70__DDSManager_fetchCatalogBasedAssetUpdateStatusForAssertion_callback___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = DefaultLog();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __70__DDSManager_fetchCatalogBasedAssetUpdateStatusForAssertion_callback___block_invoke_cold_1(v5);
    }

    v6 = DDSAssetDownloadUIError(1);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) assetType];
      v13 = 138543362;
      v14 = v7;
      _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Catalog updated successfully for asset type: (%{public}@)", &v13, 0xCu);
    }

    v8 = *(a1 + 40);
    v9 = [v8 dataSource];
    v10 = [v9 date];
    v11 = [*(a1 + 32) assetType];
    [v8 setCatalogUpdateDate:v10 forAssetType:v11];

    [*(a1 + 40) assetUpdateStatusForAssertion:*(a1 + 48)];
    v6 = 0;
  }

  (*(*(a1 + 56) + 16))();

  v12 = *MEMORY[0x1E69E9840];
}

- (void)fetchAssetUpdateStatusForQuery:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DDSManager *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__DDSManager_fetchAssetUpdateStatusForQuery_callback___block_invoke;
  block[3] = &unk_1E86C5C48;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __54__DDSManager_fetchAssetUpdateStatusForQuery_callback___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = DefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1DF7C6000, v2, OS_LOG_TYPE_DEFAULT, "Fetch asset update status for query: (%{public}@)", &buf, 0xCu);
  }

  v4 = [*(a1 + 40) tracker];
  v5 = [v4 assertionForQuery:*(a1 + 32)];

  if (v5)
  {
    v6 = [*(a1 + 40) tracker];
    v7 = [v6 updateStatusForAssertion:v5];

    if (v7 == 2)
    {
      v8 = DefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v9;
        _os_log_impl(&dword_1DF7C6000, v8, OS_LOG_TYPE_DEFAULT, "Asset update is in progress for query: (%{public}@)", &buf, 0xCu);
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v34 = 0x2020000000;
      v35 = 0;
      v32[0] = 0;
      v32[1] = v32;
      v32[2] = 0x2020000000;
      v32[3] = 0;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __54__DDSManager_fetchAssetUpdateStatusForQuery_callback___block_invoke_313;
      v27[3] = &unk_1E86C6748;
      v13 = *(a1 + 48);
      v27[4] = *(a1 + 40);
      v29 = v13;
      p_buf = &buf;
      v31 = v32;
      v14 = v5;
      v28 = v14;
      v15 = MEMORY[0x1E12DF5E0](v27);
      v16 = *(a1 + 40);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __54__DDSManager_fetchAssetUpdateStatusForQuery_callback___block_invoke_3;
      v24[3] = &unk_1E86C6770;
      v25 = *(a1 + 32);
      v17 = v15;
      v26 = v17;
      [v16 fetchCatalogBasedAssetUpdateStatusForAssertion:v14 callback:v24];
      v18 = [*(a1 + 40) autoAssetQueryForAssertion:v14];
      if (v18)
      {
        v19 = [*(a1 + 40) autoAssetManager];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __54__DDSManager_fetchAssetUpdateStatusForQuery_callback___block_invoke_315;
        v21[3] = &unk_1E86C6770;
        v22 = v18;
        v23 = v17;
        [v19 fetchAssetUpdateStatusForQuery:v22 callback:v21];
      }

      else
      {
        (*(v17 + 2))(v17, 0, 0);
      }

      _Block_object_dispose(v32, 8);
      _Block_object_dispose(&buf, 8);
    }
  }

  else
  {
    v10 = DefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __54__DDSManager_fetchAssetUpdateStatusForQuery_callback___block_invoke_cold_1((a1 + 32));
    }

    v11 = *(a1 + 48);
    v12 = DDSAssetDownloadUIError(0);
    (*(v11 + 16))(v11, 0, v12);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __54__DDSManager_fetchAssetUpdateStatusForQuery_callback___block_invoke_313(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = objc_initWeak(&location, v6);

  if (v6)
  {
    v8 = objc_loadWeakRetained(&location);
    v9 = [v8 workQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__DDSManager_fetchAssetUpdateStatusForQuery_callback___block_invoke_2;
    v10[3] = &unk_1E86C6720;
    v11 = v5;
    v13 = *(a1 + 48);
    v15[1] = a2;
    v14 = *(a1 + 56);
    objc_copyWeak(v15, &location);
    v12 = *(a1 + 40);
    dispatch_async(v9, v10);

    objc_destroyWeak(v15);
  }

  objc_destroyWeak(&location);
}

uint64_t __54__DDSManager_fetchAssetUpdateStatusForQuery_callback___block_invoke_2(uint64_t result)
{
  v1 = result;
  if (*(result + 32))
  {
    v2 = *(result + 48);
    v3 = *(v1[6] + 16);
LABEL_7:

    return v3();
  }

  ++*(*(*(result + 56) + 8) + 24);
  if (*(result + 80) == 1)
  {
    *(*(*(result + 64) + 8) + 24) = 1;
  }

  if (*(*(*(result + 56) + 8) + 24) == 2)
  {
    WeakRetained = objc_loadWeakRetained((result + 72));
    [WeakRetained modifyAssetUpdateStatusForAssertion:v1[5] status:*(*(v1[8] + 8) + 24)];

    v3 = *(v1[6] + 16);
    goto LABEL_7;
  }

  return result;
}

void __54__DDSManager_fetchAssetUpdateStatusForQuery_callback___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = DefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 134218242;
    v10 = a2;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_1DF7C6000, v6, OS_LOG_TYPE_DEFAULT, "Catalog based asset update status: (%ld) for query: (%{public}@)", &v9, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

void __54__DDSManager_fetchAssetUpdateStatusForQuery_callback___block_invoke_315(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = DefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 134218242;
    v10 = a2;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_1DF7C6000, v6, OS_LOG_TYPE_DEFAULT, "Auto asset update status: (%ld) for query: (%{public}@)", &v9, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

- (void)updateCatalogBasedAssetForAssertion:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DDSManager *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__DDSManager_updateCatalogBasedAssetForAssertion_callback___block_invoke;
  block[3] = &unk_1E86C5C48;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __59__DDSManager_updateCatalogBasedAssetForAssertion_callback___block_invoke(id *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = a1 + 4;
  v14 = [a1[4] query];
  v3 = [a1[5] provider];
  v12 = [v3 updatableAssetsForAssertion:*v2];

  if ([v12 count])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__4;
    v30 = __Block_byref_object_dispose__4;
    v31 = [v12 mutableCopy];
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    v25 = 0;
    v4 = objc_alloc_init(MEMORY[0x1E69B1948]);
    [v4 setAllowsCellularAccess:1];
    [v4 setAllowsExpensiveAccess:1];
    [v4 setDiscretionary:0];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = v12;
    v5 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v5)
    {
      v6 = *v21;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v21 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v20 + 1) + 8 * i);
          v9 = [a1[5] provider];
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __59__DDSManager_updateCatalogBasedAssetForAssertion_callback___block_invoke_316;
          v15[3] = &unk_1E86C6798;
          v15[4] = a1[5];
          v15[5] = v8;
          p_buf = &buf;
          v16 = v14;
          v19 = v24;
          v17 = a1[6];
          [v9 startDownloadForAsset:v8 withOptions:v4 progress:0 handler:v15];
        }

        v5 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v5);
    }

    _Block_object_dispose(v24, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v10 = DefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_1DF7C6000, v10, OS_LOG_TYPE_DEFAULT, "Assets are already updated for query: (%{public}@)", &buf, 0xCu);
    }

    (*(a1[6] + 2))();
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __59__DDSManager_updateCatalogBasedAssetForAssertion_callback___block_invoke_316(uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = objc_initWeak(&location, v4);

  if (v4)
  {
    if (a2 <= 0x24 && ((1 << a2) & 0x1000000401) != 0)
    {
      v6 = DefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        *buf = 138543618;
        v20 = v7;
        v21 = 2048;
        v22 = a2;
        _os_log_impl(&dword_1DF7C6000, v6, OS_LOG_TYPE_DEFAULT, "Asset download completed for %{public}@, result: %ld", buf, 0x16u);
      }

      [*(*(*(a1 + 64) + 8) + 40) removeObject:*(a1 + 40)];
    }

    else
    {
      v14 = DefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __59__DDSManager_updateCatalogBasedAssetForAssertion_callback___block_invoke_316_cold_1(a1);
      }

      v15 = DefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __59__DDSManager_updateCatalogBasedAssetForAssertion_callback___block_invoke_316_cold_2(a1);
      }

      if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
      {
        v16 = *(a1 + 56);
        v17 = DDSAssetDownloadUIError(2);
        (*(v16 + 16))(v16, MEMORY[0x1E695E110], v17);

        *(*(*(a1 + 72) + 8) + 24) = 1;
      }
    }

    if (![*(*(*(a1 + 64) + 8) + 40) count])
    {
      v8 = DefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 48);
        *buf = 138543362;
        v20 = v9;
        _os_log_impl(&dword_1DF7C6000, v8, OS_LOG_TYPE_DEFAULT, "Asset update completed successfully for query: (%{public}@)", buf, 0xCu);
      }

      v10 = objc_loadWeakRetained(&location);
      v11 = [v10 assetObserver];
      v12 = [*(a1 + 48) assetType];
      [v11 notifyObserversAssetsUpdatedForType:v12];

      (*(*(a1 + 56) + 16))();
    }
  }

  objc_destroyWeak(&location);
  v13 = *MEMORY[0x1E69E9840];
}

- (void)updateAssetForQuery:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DDSManager *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__DDSManager_updateAssetForQuery_callback___block_invoke;
  block[3] = &unk_1E86C5C48;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __43__DDSManager_updateAssetForQuery_callback___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) tracker];
  v3 = [v2 assertionForQuery:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) tracker];
    v5 = [v4 updateStatusForAssertion:v3];

    if (v5 == 2)
    {
      v6 = DefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v7;
        _os_log_impl(&dword_1DF7C6000, v6, OS_LOG_TYPE_DEFAULT, "Asset update is already in progress for query: (%{public}@)", &buf, 0xCu);
      }

      v8 = *(a1 + 48);
      v9 = DDSAssetDownloadUIError(3);
      (*(v8 + 16))(v8, MEMORY[0x1E695E110], v9);
    }

    else
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v33 = 0x2020000000;
      v34 = 0;
      v30[0] = 0;
      v30[1] = v30;
      v30[2] = 0x2020000000;
      v31 = 0;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __43__DDSManager_updateAssetForQuery_callback___block_invoke_317;
      v25[3] = &unk_1E86C67E8;
      v25[4] = *(a1 + 32);
      p_buf = &buf;
      v13 = v3;
      v26 = v13;
      v27 = *(a1 + 48);
      v29 = v30;
      v14 = MEMORY[0x1E12DF5E0](v25);
      v15 = *(a1 + 32);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __43__DDSManager_updateAssetForQuery_callback___block_invoke_3;
      v23[3] = &unk_1E86C5D10;
      v16 = v14;
      v24 = v16;
      [v15 updateCatalogBasedAssetForAssertion:v13 callback:v23];
      v17 = [*(a1 + 32) autoAssetQueryForAssertion:v13];
      if (v17)
      {
        v18 = [*(a1 + 32) autoAssetManager];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __43__DDSManager_updateAssetForQuery_callback___block_invoke_4;
        v21[3] = &unk_1E86C5D10;
        v22 = v16;
        [v18 updateAssetForQuery:v17 callback:v21];
      }

      else
      {
        (*(v16 + 2))(v16, MEMORY[0x1E695E118], 0);
      }

      v19 = [*(a1 + 32) tracker];
      [v19 modifyUpdateStatusForAssertion:v13 toStatus:2];

      _Block_object_dispose(v30, 8);
      _Block_object_dispose(&buf, 8);
    }
  }

  else
  {
    v10 = DefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __54__DDSManager_fetchAssetUpdateStatusForQuery_callback___block_invoke_cold_1((a1 + 40));
    }

    v11 = *(a1 + 48);
    v12 = DDSAssetDownloadUIError(0);
    (*(v11 + 16))(v11, MEMORY[0x1E695E110], v12);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __43__DDSManager_updateAssetForQuery_callback___block_invoke_317(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = objc_initWeak(&location, v7);

  if (v7)
  {
    v9 = objc_loadWeakRetained(&location);
    v10 = [v9 workQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__DDSManager_updateAssetForQuery_callback___block_invoke_2;
    block[3] = &unk_1E86C67C0;
    v11 = v5;
    v12 = *(a1 + 56);
    v16 = v11;
    v19 = v12;
    objc_copyWeak(&v21, &location);
    v17 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = *(a1 + 64);
    v18 = v13;
    v20 = v14;
    dispatch_async(v10, block);

    objc_destroyWeak(&v21);
  }

  objc_destroyWeak(&location);
}

void __43__DDSManager_updateAssetForQuery_callback___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isEqual:MEMORY[0x1E695E118]])
  {
    if (++*(*(*(a1 + 56) + 8) + 24) == 2)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 72));
      v3 = [WeakRetained tracker];
      [v3 modifyUpdateStatusForAssertion:*(a1 + 40) toStatus:0];

      v4 = *(a1 + 32);
      v5 = *(*(a1 + 48) + 16);

      v5();
    }
  }

  else if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v6 = objc_loadWeakRetained((a1 + 72));
    v7 = [v6 tracker];
    [v7 modifyUpdateStatusForAssertion:*(a1 + 40) toStatus:1];

    v8 = *(a1 + 48);
    v9 = DDSAssetDownloadUIError(2);
    (*(v8 + 16))(v8, MEMORY[0x1E695E110], v9);

    *(*(*(a1 + 64) + 8) + 24) = 1;
  }
}

- (DDSManagingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)beginUpdateCycleForAssetType:forced:discretionaryDownload:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1DF7C6000, v0, v1, "Unexpected error occured as remote sync state object not found for asset type: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)assertionIDsForClientID:reply:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v4 = 2114;
  v5 = v0;
  _os_log_debug_impl(&dword_1DF7C6000, v1, OS_LOG_TYPE_DEBUG, "For clientID (%{public}@), found assertion IDs (%{public}@)", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)triggerDumpWithReply:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1DF7C6000, v0, v1, "Unexpected error dumping assets: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __27__DDSManager_triggerUpdate__block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_2_0(&dword_1DF7C6000, v2, v3, "Failed to update auto asset for query: %{public}@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __42__DDSManager_updateAutoAssetForAssetType___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_0(&dword_1DF7C6000, v2, v3, "Auto asset update for query: %{public}@ completed with error: %{public}@");
  v4 = *MEMORY[0x1E69E9840];
}

- (void)assetUpdateStatusForAssertion:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 query];
  OUTLINED_FUNCTION_0();
  v8 = 2048;
  v9 = a2;
  _os_log_debug_impl(&dword_1DF7C6000, a3, OS_LOG_TYPE_DEBUG, "Assertion for query: (%{public}@), DDSAssetUpdateStatus: (%ld)", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void __54__DDSManager_fetchAssetUpdateStatusForQuery_callback___block_invoke_cold_1(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_2_0(&dword_1DF7C6000, v2, v3, "Assertion not found for query: (%{public}@)", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __59__DDSManager_updateCatalogBasedAssetForAssertion_callback___block_invoke_316_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_0(&dword_1DF7C6000, v2, v3, "Unexpected error downloading asset %{public}@, result: %ld");
  v4 = *MEMORY[0x1E69E9840];
}

void __59__DDSManager_updateCatalogBasedAssetForAssertion_callback___block_invoke_316_cold_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_2_0(&dword_1DF7C6000, v2, v3, "Asset update failed for query: (%{public}@)", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

@end