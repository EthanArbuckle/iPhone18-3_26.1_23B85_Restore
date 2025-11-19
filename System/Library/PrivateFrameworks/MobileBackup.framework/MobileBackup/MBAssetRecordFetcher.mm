@interface MBAssetRecordFetcher
+ (id)assetFetcherWithTracker:(id)a3 device:(id)a4 error:(id *)a5;
- (BOOL)begin:(id *)a3;
- (BOOL)disposeWithError:(id *)a3;
- (BOOL)finishWithError:(id *)a3;
- (BOOL)requestAsset:(id)a3 error:(id *)a4;
- (MBAssetReceiver)delegate;
- (id)_initWithTracker:(id)a3 device:(id)a4;
- (void)_handleAssetFetchResponseFor:(id)a3 record:(id)a4 withFetchError:(id)a5;
- (void)_trackFetchError:(id)a3;
- (void)dealloc;
@end

@implementation MBAssetRecordFetcher

+ (id)assetFetcherWithTracker:(id)a3 device:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    __assert_rtn("+[MBAssetRecordFetcher assetFetcherWithTracker:device:error:]", "MBAssetRecordFetcher.m", 37, "tracker");
  }

  v8 = v7;
  if (!v7)
  {
    __assert_rtn("+[MBAssetRecordFetcher assetFetcherWithTracker:device:error:]", "MBAssetRecordFetcher.m", 38, "device");
  }

  v9 = [[MBAssetRecordFetcher alloc] _initWithTracker:v6 device:v7];

  return v9;
}

- (id)_initWithTracker:(id)a3 device:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    __assert_rtn("[MBAssetRecordFetcher _initWithTracker:device:]", "MBAssetRecordFetcher.m", 44, "tracker");
  }

  v9 = v8;
  if (!v8)
  {
    __assert_rtn("[MBAssetRecordFetcher _initWithTracker:device:]", "MBAssetRecordFetcher.m", 45, "device");
  }

  v10 = [v8 assetIDPrefix];
  if (!v10)
  {
    __assert_rtn("[MBAssetRecordFetcher _initWithTracker:device:]", "MBAssetRecordFetcher.m", 48, "assetIDPrefix");
  }

  v11 = v10;
  v23.receiver = self;
  v23.super_class = MBAssetRecordFetcher;
  v12 = [(MBAssetRecordFetcher *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_tracker, a3);
    objc_storeStrong(&v13->_assetIDPrefix, v11);
    v14 = objc_alloc_init(MBAssetFetchSummary);
    summary = v13->_summary;
    v13->_summary = v14;

    v16 = +[NSMutableArray array];
    errors = v13->_errors;
    v13->_errors = v16;

    atomic_store(0, &v13->_errorCount);
    v18 = +[MBBehaviorOptions sharedOptions];
    v19 = [v18 restoreAssetIDsToFailFetchingRegex];
    v20 = [MBErrorInjector errorInjectorForRegex:v19 maxFailureCount:0];
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
      v7 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "=asset-fetch= %@ was not disposed before dealloc", buf, 0xCu);
      v4 = self;
      _MBLog();
    }
  }

  v5.receiver = self;
  v5.super_class = MBAssetRecordFetcher;
  [(MBAssetRecordFetcher *)&v5 dealloc];
}

- (BOOL)begin:(id *)a3
{
  if (!a3)
  {
    __assert_rtn("[MBAssetRecordFetcher begin:]", "MBAssetRecordFetcher.m", 74, "error");
  }

  disposed = self->_disposed;
  if (disposed)
  {
    *a3 = [MBError errorWithCode:1 format:@"Fetcher already disposed"];
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

- (BOOL)disposeWithError:(id *)a3
{
  if (!a3)
  {
    __assert_rtn("[MBAssetRecordFetcher disposeWithError:]", "MBAssetRecordFetcher.m", 96, "error");
  }

  disposed = self->_disposed;
  if (disposed)
  {
    *a3 = [MBError errorWithCode:1 format:@"Fetcher already disposed"];
  }

  else
  {
    self->_disposed = 1;
    [(MBCKBatchFetch *)self->_batchFetch cancel];
    [(MBAssetRecordFetcher *)self setDelegate:0];
  }

  return !disposed;
}

- (BOOL)finishWithError:(id *)a3
{
  if (!a3)
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
  *a3 = v13;
LABEL_7:

  _Block_object_dispose(&v22, 8);
  return v14;
}

- (BOOL)requestAsset:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    __assert_rtn("[MBAssetRecordFetcher requestAsset:error:]", "MBAssetRecordFetcher.m", 140, "asset");
  }

  if (!a4)
  {
    __assert_rtn("[MBAssetRecordFetcher requestAsset:error:]", "MBAssetRecordFetcher.m", 141, "error");
  }

  if (!self->_batchFetch)
  {
    __assert_rtn("[MBAssetRecordFetcher requestAsset:error:]", "MBAssetRecordFetcher.m", 142, "_batchFetch");
  }

  v7 = v6;
  v8 = atomic_load(&self->_errorCount);
  if (v8)
  {
    v9 = self;
    objc_sync_enter(v9);
    v10 = [(NSMutableArray *)v9->_errors lastObject];
    objc_sync_exit(v9);

    v11 = v10;
    *a4 = v10;
  }

  else
  {
    assetIDPrefix = self->_assetIDPrefix;
    v13 = [v6 metadata];
    v14 = [v13 recordIDSuffix];
    v15 = [MBAssetRecord recordIDFromAssetIDPrefix:assetIDPrefix recordIDSuffix:v14];

    objc_initWeak(&location, self);
    batchFetch = self->_batchFetch;
    v17 = [v7 metadata];
    v18 = [v17 assetSize];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10004CDE0;
    v20[3] = &unk_1003BC228;
    objc_copyWeak(&v22, &location);
    v21 = v7;
    [(MBCKBatchFetch *)batchFetch fetchRecordWithID:v15 assetSize:v18 completion:v20];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v8 == 0;
}

- (void)_trackFetchError:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  atomic_fetch_add(&v4->_errorCount, 1uLL);
  [(NSMutableArray *)v4->_errors addObject:v5];
  objc_sync_exit(v4);
}

- (void)_handleAssetFetchResponseFor:(id)a3 record:(id)a4 withFetchError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    __assert_rtn("[MBAssetRecordFetcher _handleAssetFetchResponseFor:record:withFetchError:]", "MBAssetRecordFetcher.m", 174, "asset");
  }

  v11 = v10;
  v12 = [(MBAssetRecordFetcher *)self delegate];
  if (v12)
  {
    if (!v11)
    {
      errorInjector = self->_errorInjector;
      if (errorInjector)
      {
        v14 = [v9 recordID];
        v15 = [v14 recordName];
        v11 = [(MBErrorInjector *)errorInjector errorIfMatches:v15];
      }
    }

    if (v11)
    {
      [(MBAssetRecordFetcher *)self _trackFetchError:v11];
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v30 = v8;
        v31 = 2112;
        v32 = v11;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=asset-fetch= Failed fetching asset record for asset %@: %@", buf, 0x16u);
        _MBLog();
      }

      [v12 fetcher:self failedFetchingAsset:v8 withFetchError:v11];
    }

    else
    {
      v17 = [MBAssetRecord assetRecordFromCKRecord:v9];
      v18 = [v17 recordID];
      v19 = [v18 recordName];

      v20 = [v17 contents];
      v21 = [v20 fileURL];
      v22 = [v21 path];

      if (!v20 || v22)
      {
        v24 = MBGetDefaultLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v30 = v19;
          v31 = 2048;
          v32 = [v8 originalInode];
          v33 = 2112;
          v34 = v22;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "=asset-fetch= Fetched asset record %@ for ino: %llu at %@", buf, 0x20u);
          [v8 originalInode];
          _MBLog();
        }

        v28 = 0;
        v25 = [v12 fetcher:self didReceiveAsset:v8 path:v22 error:&v28];
        v23 = v28;
        if (v25)
        {
          atomic_fetch_add_explicit(&self->_registeredAssetCount, 1uLL, memory_order_relaxed);
          p_bytesFetched = &self->_bytesFetched;
          v27 = [v17 contents];
          atomic_fetch_add_explicit(p_bytesFetched, [v27 size], memory_order_relaxed);
        }

        else
        {
          [(MBAssetRecordFetcher *)self _trackFetchError:v23];
        }
      }

      else
      {
        v23 = [MBError errorWithCode:302 format:@"Nil fileURL for fetched asset %@", v8];
        [(MBAssetRecordFetcher *)self _trackFetchError:v23];
        [v12 fetcher:self failedFetchingAsset:v8 withFetchError:v23];
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