@interface MBCKRestoreFilePrefetchEngine
- (BOOL)_updateCacheWithFile:(id)file;
- (BOOL)setUpWithError:(id *)error;
- (MBCKRestoreEngine)parentEngine;
- (MBCKRestoreFilePrefetchEngine)initWithRestoreEngine:(id)engine;
- (void)_prefetchBatch;
- (void)dealloc;
- (void)prefetchRecord:(id)record;
- (void)waitForPrefetchCompletion;
@end

@implementation MBCKRestoreFilePrefetchEngine

- (MBCKRestoreFilePrefetchEngine)initWithRestoreEngine:(id)engine
{
  engineCopy = engine;
  if (!engineCopy)
  {
    __assert_rtn("[MBCKRestoreFilePrefetchEngine initWithRestoreEngine:]", "MBCKRestoreFilePrefetchEngine.m", 41, "engine");
  }

  v5 = engineCopy;
  ckOperationTracker = [engineCopy ckOperationTracker];
  if (!ckOperationTracker)
  {
    __assert_rtn("[MBCKRestoreFilePrefetchEngine initWithRestoreEngine:]", "MBCKRestoreFilePrefetchEngine.m", 43, "tracker");
  }

  v7 = ckOperationTracker;
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

    domainManager = [v5 domainManager];
    domainManager = v9->_domainManager;
    v9->_domainManager = domainManager;

    device = [v5 device];
    device = v9->_device;
    v9->_device = device;

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

- (BOOL)setUpWithError:(id *)error
{
  parentEngine = [(MBCKRestoreFilePrefetchEngine *)self parentEngine];
  if (!parentEngine)
  {
    __assert_rtn("[MBCKRestoreFilePrefetchEngine setUpWithError:]", "MBCKRestoreFilePrefetchEngine.m", 65, "parentEngine");
  }

  v6 = parentEngine;
  serviceAccount = [parentEngine serviceAccount];
  if (!serviceAccount)
  {
    __assert_rtn("[MBCKRestoreFilePrefetchEngine setUpWithError:]", "MBCKRestoreFilePrefetchEngine.m", 67, "account");
  }

  v8 = serviceAccount;
  v9 = +[MBCKManager sharedInstance];
  v10 = [v9 openCacheWithAccount:v8 accessType:1 error:error];
  cache = self->_cache;
  self->_cache = v10;

  v12 = self->_cache != 0;
  return v12;
}

- (void)prefetchRecord:(id)record
{
  recordCopy = record;
  if ([recordCopy downloaded])
  {
    stashedAssetPath = [recordCopy stashedAssetPath];
    if (stashedAssetPath)
    {
    }

    else
    {
      stashedResourcePath = [recordCopy stashedResourcePath];

      if (!stashedResourcePath)
      {
        goto LABEL_32;
      }
    }
  }

  if ([recordCopy downloaded])
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      stashedAssetPath2 = [recordCopy stashedAssetPath];
      *buf = 138412802;
      v33 = recordCopy;
      if ([recordCopy stashedAssetIsDecrypted])
      {
        v9 = "YES";
      }

      else
      {
        v9 = "NO";
      }

      v34 = 2112;
      v35 = stashedAssetPath2;
      v36 = 2080;
      v37 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Prefetch: Attempting to prefetch a file(%@) already downloaded, stashedAssetPath:%@, stashedAssetIsDecrypted:%s", buf, 0x20u);

      stashedAssetPath3 = [recordCopy stashedAssetPath];
      if ([recordCopy stashedAssetIsDecrypted])
      {
        v11 = "YES";
      }

      else
      {
        v11 = "NO";
      }

      v30 = stashedAssetPath3;
      v31 = v11;
      v28 = recordCopy;
      _MBLog();
    }
  }

  v12 = self->_batchRecordIDs;
  objc_sync_enter(v12);
  if (-[NSMutableArray count](self->_batchRecordIDs, "count") + 1 > self->_maxBatchCount || (batchSize = self->_batchSize, v14 = [recordCopy size], objc_msgSend(recordCopy, "resourcesSize") + v14 + batchSize >= self->_maxBatchAssetSize))
  {
    [(MBCKRestoreFilePrefetchEngine *)self _prefetchBatch:v28];
  }

  if ([recordCopy resourcesSize])
  {
    goto LABEL_35;
  }

  cache = self->_cache;
  signature = [recordCopy signature];
  v23 = -[MBCKCache fileAssetMetadataForSignature:volumeType:](cache, "fileAssetMetadataForSignature:volumeType:", signature, [recordCopy volumeType]);
  LOBYTE(cache) = v23 == 0;

  if (cache)
  {
LABEL_35:
    if (_os_feature_enabled_impl())
    {
      signature2 = [recordCopy signature];
      if (!signature2 && [recordCopy size])
      {
        v16 = MBGetDefaultLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v33 = recordCopy;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "Prefetch: Found a file with non-zero size and no signature: %@", buf, 0xCu);
          v29 = recordCopy;
          _MBLog();
        }
      }
    }

    v17 = [recordCopy size];
    v18 = &v17[[recordCopy resourcesSize]];
    batchRecordIDs = self->_batchRecordIDs;
    self->_batchSize += v18;
    recordIDString = [recordCopy recordIDString];
    [(NSMutableArray *)batchRecordIDs addObject:recordIDString];
  }

  else
  {
    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = recordCopy;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Prefetch: Skipping prefetch of file(%@) because a previous batch already stashed file contents for this file", buf, 0xCu);
      _MBLog();
    }

    [(MBCKRestoreFilePrefetchEngine *)self _updateCacheWithFile:recordCopy];
    recordIDString = [(MBCKRestoreFilePrefetchEngine *)self parentEngine];
    v25 = [recordCopy size];
    resourcesSize = [recordCopy resourcesSize];
    progressModel = [recordIDString progressModel];
    [progressModel finishedTransferringItem:recordCopy size:&v25[resourcesSize]];
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
  ckOperationTracker = [(MBCKRestoreFilePrefetchEngine *)self ckOperationTracker];
  v32 = ckOperationTracker;
  if (!ckOperationTracker)
  {
    __assert_rtn("[MBCKRestoreFilePrefetchEngine _prefetchBatch]", "MBCKRestoreFilePrefetchEngine.m", 121, "tracker");
  }

  account = [ckOperationTracker account];
  if (!account)
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
  defaultZoneID = [v32 defaultZoneID];
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

        v10 = [[CKRecordID alloc] initWithRecordName:*(*(&v44 + 1) + 8 * i) zoneID:defaultZoneID];
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
  [v15 setZoneID:defaultZoneID];
  persona = [account persona];
  LODWORD(v13) = [persona shouldRestoreFilesSparse];

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
  parentEngine = [(MBCKRestoreFilePrefetchEngine *)self parentEngine];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100201E00;
  v36[3] = &unk_1003C1910;
  v41 = v42;
  v20 = v27;
  v37 = v20;
  selfCopy = self;
  v31 = account;
  v39 = v31;
  v21 = parentEngine;
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
      operationID = [v15 operationID];
      *buf = 138543874;
      v49 = operationID;
      v50 = 2048;
      v51 = v29;
      v52 = 2048;
      v53 = batchSize;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Prefetch: Starting operation:%{public}@, records:%lu, size:%llu", buf, 0x20u);
    }

    operationID2 = [v15 operationID];
    _MBLog();
  }

  dispatch_group_enter(self->_group);
  [v32 addDatabaseOperation:v15];
  objc_destroyWeak(v35);

  _Block_object_dispose(v42, 8);
  objc_destroyWeak(&location);
}

- (BOOL)_updateCacheWithFile:(id)file
{
  fileCopy = file;
  cache = [(MBCKRestoreFilePrefetchEngine *)self cache];
  signature = [fileCopy signature];
  v7 = [cache fileAssetMetadataForSignature:signature volumeType:{objc_msgSend(fileCopy, "volumeType")}];

  stashedAssetPath = [v7 stashedAssetPath];
  if (stashedAssetPath)
  {
    [fileCopy setStashedAssetPath:stashedAssetPath];
  }

  if ([fileCopy stashedAssetIsDecrypted])
  {
    stashedAssetIsDecrypted = 1;
  }

  else
  {
    stashedAssetIsDecrypted = [v7 stashedAssetIsDecrypted];
  }

  [fileCopy setStashedAssetIsDecrypted:stashedAssetIsDecrypted];
  decodedAssetPath = [v7 decodedAssetPath];
  if (decodedAssetPath)
  {
    [fileCopy setDecodedAssetPath:decodedAssetPath];
  }

  if (stashedAssetPath || ([fileCopy stashedResourcePath], v11 = objc_claimAutoreleasedReturnValue(), v12 = decodedAssetPath | v11, v11, v12))
  {
    v13 = [cache updateFile:fileCopy];
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