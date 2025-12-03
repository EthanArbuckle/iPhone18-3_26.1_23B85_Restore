@interface MBAssetRecordFetcher
+ (id)assetFetcherWithTracker:(id)tracker device:(id)device error:(id *)error;
- (BOOL)begin:(id *)begin;
- (BOOL)disposeWithError:(id *)error;
- (BOOL)finishWithError:(id *)error;
- (BOOL)requestAsset:(id)asset error:(id *)error;
- (MBAssetReceiver)delegate;
- (id)_initWithTracker:(id)tracker device:(id)device;
- (void)_handleAssetFetchResponseFor:(id)for record:(id)record withFetchError:(id)error;
- (void)_trackFetchError:(id)error;
- (void)dealloc;
@end

@implementation MBAssetRecordFetcher

+ (id)assetFetcherWithTracker:(id)tracker device:(id)device error:(id *)error
{
  trackerCopy = tracker;
  deviceCopy = device;
  if (!trackerCopy)
  {
    __assert_rtn("+[MBAssetRecordFetcher assetFetcherWithTracker:device:error:]", "MBAssetRecordFetcher.m", 37, "tracker");
  }

  v8 = deviceCopy;
  if (!deviceCopy)
  {
    __assert_rtn("+[MBAssetRecordFetcher assetFetcherWithTracker:device:error:]", "MBAssetRecordFetcher.m", 38, "device");
  }

  v9 = [[MBAssetRecordFetcher alloc] _initWithTracker:trackerCopy device:deviceCopy];

  return v9;
}

- (id)_initWithTracker:(id)tracker device:(id)device
{
  trackerCopy = tracker;
  deviceCopy = device;
  if (!trackerCopy)
  {
    __assert_rtn("[MBAssetRecordFetcher _initWithTracker:device:]", "MBAssetRecordFetcher.m", 44, "tracker");
  }

  v9 = deviceCopy;
  if (!deviceCopy)
  {
    __assert_rtn("[MBAssetRecordFetcher _initWithTracker:device:]", "MBAssetRecordFetcher.m", 45, "device");
  }

  assetIDPrefix = [deviceCopy assetIDPrefix];
  if (!assetIDPrefix)
  {
    __assert_rtn("[MBAssetRecordFetcher _initWithTracker:device:]", "MBAssetRecordFetcher.m", 48, "assetIDPrefix");
  }

  v11 = assetIDPrefix;
  v23.receiver = self;
  v23.super_class = MBAssetRecordFetcher;
  v12 = [(MBAssetRecordFetcher *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_tracker, tracker);
    objc_storeStrong(&v13->_assetIDPrefix, v11);
    v14 = objc_alloc_init(MBAssetFetchSummary);
    summary = v13->_summary;
    v13->_summary = v14;

    v16 = +[NSMutableArray array];
    errors = v13->_errors;
    v13->_errors = v16;

    atomic_store(0, &v13->_errorCount);
    v18 = +[MBBehaviorOptions sharedOptions];
    restoreAssetIDsToFailFetchingRegex = [v18 restoreAssetIDsToFailFetchingRegex];
    v20 = [MBErrorInjector errorInjectorForRegex:restoreAssetIDsToFailFetchingRegex maxFailureCount:0];
    errorInjector = v13->_errorInjector;
    v13->_errorInjector = v20;
  }

  return v13;
}

- (void)dealloc
{
  if (!self->_disposed)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "=asset-fetch= %@ was not disposed before dealloc", buf, 0xCu);
      selfCopy2 = self;
      _MBLog();
    }
  }

  v5.receiver = self;
  v5.super_class = MBAssetRecordFetcher;
  [(MBAssetRecordFetcher *)&v5 dealloc];
}

- (BOOL)begin:(id *)begin
{
  if (!begin)
  {
    __assert_rtn("[MBAssetRecordFetcher begin:]", "MBAssetRecordFetcher.m", 74, "error");
  }

  disposed = self->_disposed;
  if (disposed)
  {
    *begin = [MBError errorWithCode:1 format:@"Fetcher already disposed"];
  }

  else
  {
    v6 = +[NSDate now];
    [(MBAssetFetchSummary *)self->_summary setStart:v6];

    atomic_store(0, &self->_registeredAssetCount);
    atomic_store(0, &self->_bytesFetched);
    v7 = objc_opt_new();
    errors = self->_errors;
    self->_errors = v7;

    atomic_store(0, &self->_errorCount);
    v9 = [[MBCKBatchFetch alloc] initWithOperationTracker:self->_tracker];
    batchFetch = self->_batchFetch;
    self->_batchFetch = v9;

    [(MBCKBatchFetch *)self->_batchFetch setUsePrivilegedBatchRecordFetch:1];
    [(MBCKBatchFetch *)self->_batchFetch setUseGlobalThreadLimit:0];
  }

  return !disposed;
}

- (BOOL)disposeWithError:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBAssetRecordFetcher disposeWithError:]", "MBAssetRecordFetcher.m", 96, "error");
  }

  disposed = self->_disposed;
  if (disposed)
  {
    *error = [MBError errorWithCode:1 format:@"Fetcher already disposed"];
  }

  else
  {
    self->_disposed = 1;
    [(MBCKBatchFetch *)self->_batchFetch cancel];
    [(MBAssetRecordFetcher *)self setDelegate:0];
  }

  return !disposed;
}

- (BOOL)finishWithError:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBAssetRecordFetcher finishWithError:]", "MBAssetRecordFetcher.m", 111, "error");
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10004CB24;
  v26 = sub_10004CB34;
  v27 = 0;
  v5 = dispatch_semaphore_create(0);
  batchFetch = self->_batchFetch;
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10004CB3C;
  v19 = &unk_1003BC160;
  v21 = &v22;
  v7 = v5;
  v20 = v7;
  [(MBCKBatchFetch *)batchFetch fetchRecordsWithCompletion:&v16];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = self->_batchFetch;
  self->_batchFetch = 0;

  v9 = [NSDate now:v16];
  [(MBAssetFetchSummary *)self->_summary setEnd:v9];

  v10 = atomic_load(&self->_registeredAssetCount);
  [(MBAssetFetchSummary *)self->_summary setFetchedAssetCount:v10];
  v11 = atomic_load(&self->_bytesFetched);
  [(MBAssetFetchSummary *)self->_summary setFetchedAssetBytes:v11];
  v12 = v23[5];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    if (![(NSMutableArray *)self->_errors count])
    {
      v14 = 1;
      goto LABEL_7;
    }

    v13 = [MBError errorWithErrors:self->_errors];
  }

  v14 = 0;
  *error = v13;
LABEL_7:

  _Block_object_dispose(&v22, 8);
  return v14;
}

- (BOOL)requestAsset:(id)asset error:(id *)error
{
  assetCopy = asset;
  if (!assetCopy)
  {
    __assert_rtn("[MBAssetRecordFetcher requestAsset:error:]", "MBAssetRecordFetcher.m", 140, "asset");
  }

  if (!error)
  {
    __assert_rtn("[MBAssetRecordFetcher requestAsset:error:]", "MBAssetRecordFetcher.m", 141, "error");
  }

  if (!self->_batchFetch)
  {
    __assert_rtn("[MBAssetRecordFetcher requestAsset:error:]", "MBAssetRecordFetcher.m", 142, "_batchFetch");
  }

  v7 = assetCopy;
  v8 = atomic_load(&self->_errorCount);
  if (v8)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    lastObject = [(NSMutableArray *)selfCopy->_errors lastObject];
    objc_sync_exit(selfCopy);

    v11 = lastObject;
    *error = lastObject;
  }

  else
  {
    assetIDPrefix = self->_assetIDPrefix;
    metadata = [assetCopy metadata];
    recordIDSuffix = [metadata recordIDSuffix];
    v15 = [MBAssetRecord recordIDFromAssetIDPrefix:assetIDPrefix recordIDSuffix:recordIDSuffix];

    objc_initWeak(&location, self);
    batchFetch = self->_batchFetch;
    metadata2 = [v7 metadata];
    assetSize = [metadata2 assetSize];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10004CDE0;
    v20[3] = &unk_1003BC228;
    objc_copyWeak(&v22, &location);
    v21 = v7;
    [(MBCKBatchFetch *)batchFetch fetchRecordWithID:v15 assetSize:assetSize completion:v20];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v8 == 0;
}

- (void)_trackFetchError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  atomic_fetch_add(&selfCopy->_errorCount, 1uLL);
  [(NSMutableArray *)selfCopy->_errors addObject:errorCopy];
  objc_sync_exit(selfCopy);
}

- (void)_handleAssetFetchResponseFor:(id)for record:(id)record withFetchError:(id)error
{
  forCopy = for;
  recordCopy = record;
  errorCopy = error;
  if (!forCopy)
  {
    __assert_rtn("[MBAssetRecordFetcher _handleAssetFetchResponseFor:record:withFetchError:]", "MBAssetRecordFetcher.m", 174, "asset");
  }

  v11 = errorCopy;
  delegate = [(MBAssetRecordFetcher *)self delegate];
  if (delegate)
  {
    if (!v11)
    {
      errorInjector = self->_errorInjector;
      if (errorInjector)
      {
        recordID = [recordCopy recordID];
        recordName = [recordID recordName];
        v11 = [(MBErrorInjector *)errorInjector errorIfMatches:recordName];
      }
    }

    if (v11)
    {
      [(MBAssetRecordFetcher *)self _trackFetchError:v11];
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v30 = forCopy;
        v31 = 2112;
        originalInode = v11;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=asset-fetch= Failed fetching asset record for asset %@: %@", buf, 0x16u);
        _MBLog();
      }

      [delegate fetcher:self failedFetchingAsset:forCopy withFetchError:v11];
    }

    else
    {
      v17 = [MBAssetRecord assetRecordFromCKRecord:recordCopy];
      recordID2 = [v17 recordID];
      recordName2 = [recordID2 recordName];

      contents = [v17 contents];
      fileURL = [contents fileURL];
      path = [fileURL path];

      if (!contents || path)
      {
        v24 = MBGetDefaultLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v30 = recordName2;
          v31 = 2048;
          originalInode = [forCopy originalInode];
          v33 = 2112;
          v34 = path;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "=asset-fetch= Fetched asset record %@ for ino: %llu at %@", buf, 0x20u);
          [forCopy originalInode];
          _MBLog();
        }

        v28 = 0;
        v25 = [delegate fetcher:self didReceiveAsset:forCopy path:path error:&v28];
        forCopy = v28;
        if (v25)
        {
          atomic_fetch_add_explicit(&self->_registeredAssetCount, 1uLL, memory_order_relaxed);
          p_bytesFetched = &self->_bytesFetched;
          contents2 = [v17 contents];
          atomic_fetch_add_explicit(p_bytesFetched, [contents2 size], memory_order_relaxed);
        }

        else
        {
          [(MBAssetRecordFetcher *)self _trackFetchError:forCopy];
        }
      }

      else
      {
        forCopy = [MBError errorWithCode:302 format:@"Nil fileURL for fetched asset %@", forCopy];
        [(MBAssetRecordFetcher *)self _trackFetchError:forCopy];
        [delegate fetcher:self failedFetchingAsset:forCopy withFetchError:forCopy];
      }

      v11 = 0;
    }
  }
}

- (MBAssetReceiver)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end