@interface MBCKRestoreFilePrefetchEngine
- (BOOL)_updateCacheWithFile:(id)a3;
- (BOOL)setUpWithError:(id *)a3;
- (MBCKRestoreEngine)parentEngine;
- (MBCKRestoreFilePrefetchEngine)initWithRestoreEngine:(id)a3;
- (void)_prefetchBatch;
- (void)dealloc;
- (void)prefetchRecord:(id)a3;
- (void)waitForPrefetchCompletion;
@end

@implementation MBCKRestoreFilePrefetchEngine

- (MBCKRestoreFilePrefetchEngine)initWithRestoreEngine:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    __assert_rtn("[MBCKRestoreFilePrefetchEngine initWithRestoreEngine:]", "MBCKRestoreFilePrefetchEngine.m", 41, "engine");
  }

  v5 = v4;
  v6 = [v4 ckOperationTracker];
  if (!v6)
  {
    __assert_rtn("[MBCKRestoreFilePrefetchEngine initWithRestoreEngine:]", "MBCKRestoreFilePrefetchEngine.m", 43, "tracker");
  }

  v7 = v6;
  v24.receiver = self;
  v24.super_class = MBCKRestoreFilePrefetchEngine;
  v8 = [(MBCKRestoreFilePrefetchEngine *)&v24 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_ckOperationTracker, v7);
    objc_storeWeak(&v9->_parentEngine, v5);
    v10 = objc_alloc_init(NSMutableArray);
    batchRecordIDs = v9->_batchRecordIDs;
    v9->_batchRecordIDs = v10;

    v12 = dispatch_group_create();
    group = v9->_group;
    v9->_group = v12;

    if ([v5 isForegroundRestore])
    {
      v14 = 4;
    }

    else
    {
      v14 = 1;
    }

    v9->_concurrencyLimit = v14;
    v15 = dispatch_semaphore_create(v14);
    concurrencySemaphore = v9->_concurrencySemaphore;
    v9->_concurrencySemaphore = v15;

    v17 = [v5 domainManager];
    domainManager = v9->_domainManager;
    v9->_domainManager = v17;

    v19 = [v5 device];
    device = v9->_device;
    v9->_device = v19;

    v21 = +[MBBehaviorOptions sharedOptions];
    v9->_maxBatchCount = [v21 maxBatchCount];

    v22 = +[MBBehaviorOptions sharedOptions];
    v9->_maxBatchAssetSize = [v22 maxBatchFetchAssetSize];
  }

  return v9;
}

- (void)dealloc
{
  [(MBCKCache *)self->_cache close];
  v3.receiver = self;
  v3.super_class = MBCKRestoreFilePrefetchEngine;
  [(MBCKRestoreFilePrefetchEngine *)&v3 dealloc];
}

- (BOOL)setUpWithError:(id *)a3
{
  v5 = [(MBCKRestoreFilePrefetchEngine *)self parentEngine];
  if (!v5)
  {
    __assert_rtn("[MBCKRestoreFilePrefetchEngine setUpWithError:]", "MBCKRestoreFilePrefetchEngine.m", 65, "parentEngine");
  }

  v6 = v5;
  v7 = [v5 serviceAccount];
  if (!v7)
  {
    __assert_rtn("[MBCKRestoreFilePrefetchEngine setUpWithError:]", "MBCKRestoreFilePrefetchEngine.m", 67, "account");
  }

  v8 = v7;
  v9 = +[MBCKManager sharedInstance];
  v10 = [v9 openCacheWithAccount:v8 accessType:1 error:a3];
  cache = self->_cache;
  self->_cache = v10;

  v12 = self->_cache != 0;
  return v12;
}

- (void)prefetchRecord:(id)a3
{
  v4 = a3;
  if ([v4 downloaded])
  {
    v5 = [v4 stashedAssetPath];
    if (v5)
    {
    }

    else
    {
      v6 = [v4 stashedResourcePath];

      if (!v6)
      {
        goto LABEL_32;
      }
    }
  }

  if ([v4 downloaded])
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 stashedAssetPath];
      *buf = 138412802;
      v33 = v4;
      if ([v4 stashedAssetIsDecrypted])
      {
        v9 = "YES";
      }

      else
      {
        v9 = "NO";
      }

      v34 = 2112;
      v35 = v8;
      v36 = 2080;
      v37 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Prefetch: Attempting to prefetch a file(%@) already downloaded, stashedAssetPath:%@, stashedAssetIsDecrypted:%s", buf, 0x20u);

      v10 = [v4 stashedAssetPath];
      if ([v4 stashedAssetIsDecrypted])
      {
        v11 = "YES";
      }

      else
      {
        v11 = "NO";
      }

      v30 = v10;
      v31 = v11;
      v28 = v4;
      _MBLog();
    }
  }

  v12 = self->_batchRecordIDs;
  objc_sync_enter(v12);
  if (-[NSMutableArray count](self->_batchRecordIDs, "count") + 1 > self->_maxBatchCount || (batchSize = self->_batchSize, v14 = [v4 size], objc_msgSend(v4, "resourcesSize") + v14 + batchSize >= self->_maxBatchAssetSize))
  {
    [(MBCKRestoreFilePrefetchEngine *)self _prefetchBatch:v28];
  }

  if ([v4 resourcesSize])
  {
    goto LABEL_35;
  }

  cache = self->_cache;
  v22 = [v4 signature];
  v23 = -[MBCKCache fileAssetMetadataForSignature:volumeType:](cache, "fileAssetMetadataForSignature:volumeType:", v22, [v4 volumeType]);
  LOBYTE(cache) = v23 == 0;

  if (cache)
  {
LABEL_35:
    if (_os_feature_enabled_impl())
    {
      v15 = [v4 signature];
      if (!v15 && [v4 size])
      {
        v16 = MBGetDefaultLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v33 = v4;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "Prefetch: Found a file with non-zero size and no signature: %@", buf, 0xCu);
          v29 = v4;
          _MBLog();
        }
      }
    }

    v17 = [v4 size];
    v18 = &v17[[v4 resourcesSize]];
    batchRecordIDs = self->_batchRecordIDs;
    self->_batchSize += v18;
    v20 = [v4 recordIDString];
    [(NSMutableArray *)batchRecordIDs addObject:v20];
  }

  else
  {
    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v4;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Prefetch: Skipping prefetch of file(%@) because a previous batch already stashed file contents for this file", buf, 0xCu);
      _MBLog();
    }

    [(MBCKRestoreFilePrefetchEngine *)self _updateCacheWithFile:v4];
    v20 = [(MBCKRestoreFilePrefetchEngine *)self parentEngine];
    v25 = [v4 size];
    v26 = [v4 resourcesSize];
    v27 = [v20 progressModel];
    [v27 finishedTransferringItem:v4 size:&v25[v26]];
  }

  objc_sync_exit(v12);
LABEL_32:
}

- (void)waitForPrefetchCompletion
{
  v3 = self->_batchRecordIDs;
  objc_sync_enter(v3);
  if ([(NSMutableArray *)self->_batchRecordIDs count])
  {
    [(MBCKRestoreFilePrefetchEngine *)self _prefetchBatch];
  }

  objc_sync_exit(v3);

  dispatch_group_wait(self->_group, 0xFFFFFFFFFFFFFFFFLL);
  cache = self->_cache;

  [(MBCKCache *)cache flush];
}

- (void)_prefetchBatch
{
  v2 = [(MBCKRestoreFilePrefetchEngine *)self ckOperationTracker];
  v32 = v2;
  if (!v2)
  {
    __assert_rtn("[MBCKRestoreFilePrefetchEngine _prefetchBatch]", "MBCKRestoreFilePrefetchEngine.m", 121, "tracker");
  }

  v30 = [v2 account];
  if (!v30)
  {
    __assert_rtn("[MBCKRestoreFilePrefetchEngine _prefetchBatch]", "MBCKRestoreFilePrefetchEngine.m", 123, "serviceAccount");
  }

  v3 = self->_cache;
  if (!v3)
  {
    __assert_rtn("[MBCKRestoreFilePrefetchEngine _prefetchBatch]", "MBCKRestoreFilePrefetchEngine.m", 125, "cache");
  }

  v27 = v3;
  dispatch_semaphore_wait(self->_concurrencySemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v29 = [(NSMutableArray *)self->_batchRecordIDs count];
  batchSize = self->_batchSize;
  v4 = [v32 defaultZoneID];
  v5 = [[NSMutableArray alloc] initWithCapacity:v29];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v6 = self->_batchRecordIDs;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v44 objects:v56 count:16];
  if (v7)
  {
    v8 = *v45;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v45 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [[CKRecordID alloc] initWithRecordName:*(*(&v44 + 1) + 8 * i) zoneID:v4];
        v11 = [[CKReference alloc] initWithRecordID:v10 action:0];
        [v5 addObject:v11];
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v44 objects:v56 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_batchRecordIDs removeAllObjects];
  self->_batchSize = 0;
  v12 = [NSPredicate predicateWithFormat:@"recordID IN %@", v5];
  v13 = [CKQuery alloc];
  v14 = +[(MBCKModel *)MBCKFile];
  v28 = [v13 initWithRecordType:v14 predicate:v12];

  v15 = [[CKQueryOperation alloc] initWithQuery:v28];
  [v15 setZoneID:v4];
  v16 = [v30 persona];
  LODWORD(v13) = [v16 shouldRestoreFilesSparse];

  if (v13)
  {
    v17 = objc_opt_new();
    [v17 setSparseAware:&__kCFBooleanTrue];
    v54 = @"contents";
    v55 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    [v15 setAssetTransferOptionsByKey:v18];
  }

  objc_initWeak(&location, v15);
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v42[3] = 0;
  v19 = [(MBCKRestoreFilePrefetchEngine *)self parentEngine];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100201E00;
  v36[3] = &unk_1003C1910;
  v41 = v42;
  v20 = v27;
  v37 = v20;
  v38 = self;
  v31 = v30;
  v39 = v31;
  v21 = v19;
  v40 = v21;
  [v15 setRecordFetchedBlock:v36];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10020253C;
  v34[3] = &unk_1003C1938;
  objc_copyWeak(v35, &location);
  v35[1] = v29;
  v34[5] = v42;
  v34[4] = self;
  [v15 setQueryCompletionBlock:v34];
  v22 = MBGetDefaultLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = v22;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [v15 operationID];
      *buf = 138543874;
      v49 = v24;
      v50 = 2048;
      v51 = v29;
      v52 = 2048;
      v53 = batchSize;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Prefetch: Starting operation:%{public}@, records:%lu, size:%llu", buf, 0x20u);
    }

    v25 = [v15 operationID];
    _MBLog();
  }

  dispatch_group_enter(self->_group);
  [v32 addDatabaseOperation:v15];
  objc_destroyWeak(v35);

  _Block_object_dispose(v42, 8);
  objc_destroyWeak(&location);
}

- (BOOL)_updateCacheWithFile:(id)a3
{
  v4 = a3;
  v5 = [(MBCKRestoreFilePrefetchEngine *)self cache];
  v6 = [v4 signature];
  v7 = [v5 fileAssetMetadataForSignature:v6 volumeType:{objc_msgSend(v4, "volumeType")}];

  v8 = [v7 stashedAssetPath];
  if (v8)
  {
    [v4 setStashedAssetPath:v8];
  }

  if ([v4 stashedAssetIsDecrypted])
  {
    v9 = 1;
  }

  else
  {
    v9 = [v7 stashedAssetIsDecrypted];
  }

  [v4 setStashedAssetIsDecrypted:v9];
  v10 = [v7 decodedAssetPath];
  if (v10)
  {
    [v4 setDecodedAssetPath:v10];
  }

  if (v8 || ([v4 stashedResourcePath], v11 = objc_claimAutoreleasedReturnValue(), v12 = v10 | v11, v11, v12))
  {
    v13 = [v5 updateFile:v4];
    LOBYTE(v12) = v13 == 0;
  }

  return v12;
}

- (MBCKRestoreEngine)parentEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_parentEngine);

  return WeakRetained;
}

@end