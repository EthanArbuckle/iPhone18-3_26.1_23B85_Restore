@interface NDContentDownloadService
+ (id)_cacheLookupQueue;
+ (id)_downloadQueue;
- (BOOL)_canRetryDownloadWithError:(id)a3;
- (BOOL)_hasReachedStorageLimits;
- (BOOL)_isFatalError:(id)a3;
- (NDContentDownloadService)initWithContentContext:(id)a3 ANFHelper:(id)a4;
- (NSXPCConnection)currentConnection;
- (id)_downloadKeyQueue;
- (id)_unfinishedRequests;
- (id)keyedOperationQueue:(id)a3 performAsyncOperationForKey:(id)a4 completion:(id)a5;
- (unint64_t)_storageUsedByDownloads;
- (void)_catchUpConsumer;
- (void)_cleanUpAVAssetDownloads;
- (void)_initMain;
- (void)_prewarmFromLastKnownRequests;
- (void)_pruneUnneededInterestTokens;
- (void)_recordWhetherTasksAreUnfinished;
- (void)_revisitDownloadQueue;
- (void)dealloc;
- (void)flushCacheLookupsWithCompletion:(id)a3;
- (void)ping;
- (void)registerDownloadConsumer:(id)a3;
- (void)setCurrentConnection:(id)a3;
- (void)setDownloadLimits:(id)a3;
- (void)setDownloadRequests:(id)a3;
@end

@implementation NDContentDownloadService

- (NDContentDownloadService)initWithContentContext:(id)a3 ANFHelper:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100052F54();
  }

  v30.receiver = self;
  v30.super_class = NDContentDownloadService;
  v9 = [(NDContentDownloadService *)&v30 init];
  if (v9)
  {
    v10 = [NDDownloadServiceStore alloc];
    v11 = [v7 contentDirectory];
    v12 = [(NDDownloadServiceStore *)v10 initWithParentDirectory:v11];
    v13 = *(v9 + 5);
    *(v9 + 5) = v12;

    objc_storeStrong(v9 + 6, a3);
    objc_storeStrong(v9 + 7, a4);
    v14 = objc_alloc_init(NSMutableSet);
    v15 = *(v9 + 16);
    *(v9 + 16) = v14;

    v16 = objc_alloc_init(NSMutableDictionary);
    v17 = *(v9 + 17);
    *(v9 + 17) = v16;

    v18 = objc_alloc_init(NSMutableDictionary);
    v19 = *(v9 + 18);
    *(v9 + 18) = v18;

    v20 = [[NDDownloadOperationFactory alloc] initWithContext:v7 ANFHelper:*(v9 + 7)];
    v21 = *(v9 + 8);
    *(v9 + 8) = v20;

    v22 = [NDContentArchiveStore alloc];
    v23 = [v7 contentDirectory];
    v24 = [(NDContentArchiveStore *)v22 initWithCacheDirectory:v23];
    v25 = *(v9 + 11);
    *(v9 + 11) = v24;

    v26 = dispatch_group_create();
    v27 = *(v9 + 9);
    *(v9 + 9) = v26;

    dispatch_group_enter(*(v9 + 9));
    v29 = v9;
    FCPerformBlockOnMainThread();
  }

  return v9;
}

- (void)_initMain
{
  +[NSThread isMainThread];
  v3 = [[FCKeyedOperationQueue alloc] initWithDelegate:self maxConcurrentOperationCount:1];
  downloadKeyedOperationQueue = self->_downloadKeyedOperationQueue;
  self->_downloadKeyedOperationQueue = v3;

  [(FCKeyedOperationQueue *)self->_downloadKeyedOperationQueue setLog:FCOfflineDownloadsLog];
  v5 = +[FCNetworkReachability sharedNetworkReachability];
  [v5 addObserver:self];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"powerStateDidChange" name:NSProcessInfoPowerStateDidChangeNotification object:0];

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100008540;
  handler[3] = &unk_100071EF0;
  handler[4] = self;
  notify_register_dispatch("com.apple.system.powersources.source", &self->_batteryStateNotificationToken, &_dispatch_main_q, handler);
  [(NDContentDownloadService *)self _prewarmFromLastKnownRequests];
}

- (void)dealloc
{
  notify_cancel(self->_batteryStateNotificationToken);
  v3.receiver = self;
  v3.super_class = NDContentDownloadService;
  [(NDContentDownloadService *)&v3 dealloc];
}

- (void)setCurrentConnection:(id)a3
{
  v4 = a3;
  v5 = [(NDContentDownloadService *)self currentConsumer];

  if (v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100053040();
  }

  objc_storeWeak(&self->_currentConnection, v4);
}

- (void)registerDownloadConsumer:(id)a3
{
  v4 = a3;
  +[NSThread isMainThread];
  v5 = os_transaction_create();
  v6 = [(NDContentDownloadService *)self prewarmGroup];
  IsEmpty = FCDispatchGroupIsEmpty();

  if (IsEmpty)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100008798;
    v18[3] = &unk_100071E78;
    v8 = &v19;
    v18[4] = self;
    v19 = v4;
    v9 = &v20;
    v20 = v5;
    v10 = v5;
    v11 = v4;
    sub_100008798(v18);
  }

  else
  {
    v12 = [(NDContentDownloadService *)self prewarmGroup];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000088FC;
    v15[3] = &unk_100071E78;
    v8 = &v16;
    v15[4] = self;
    v16 = v4;
    v9 = &v17;
    v17 = v5;
    v13 = v5;
    v14 = v4;
    dispatch_group_notify(v12, &_dispatch_main_q, v15);
  }
}

- (void)setDownloadRequests:(id)a3
{
  v4 = a3;
  +[NSThread isMainThread];
  v5 = os_transaction_create();
  v6 = [(NDContentDownloadService *)self prewarmGroup];
  IsEmpty = FCDispatchGroupIsEmpty();

  if (IsEmpty)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100008BE4;
    v18[3] = &unk_100071E78;
    v8 = &v19;
    v18[4] = self;
    v19 = v4;
    v9 = &v20;
    v20 = v5;
    v10 = v5;
    v11 = v4;
    sub_100008BE4(v18);
  }

  else
  {
    v12 = [(NDContentDownloadService *)self prewarmGroup];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100008D2C;
    v15[3] = &unk_100071E78;
    v8 = &v16;
    v15[4] = self;
    v16 = v4;
    v9 = &v17;
    v17 = v5;
    v13 = v5;
    v14 = v4;
    dispatch_group_notify(v12, &_dispatch_main_q, v15);
  }
}

- (void)setDownloadLimits:(id)a3
{
  v4 = a3;
  +[NSThread isMainThread];
  v5 = os_transaction_create();
  v6 = [(NDContentDownloadService *)self prewarmGroup];
  IsEmpty = FCDispatchGroupIsEmpty();

  if (IsEmpty)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100008FF8;
    v18[3] = &unk_100071E78;
    v8 = v19;
    v19[0] = v4;
    v19[1] = self;
    v9 = &v20;
    v20 = v5;
    v10 = v5;
    v11 = v4;
    sub_100008FF8(v18);
  }

  else
  {
    v12 = [(NDContentDownloadService *)self prewarmGroup];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000090C8;
    v15[3] = &unk_100071E78;
    v8 = v16;
    v16[0] = v4;
    v16[1] = self;
    v9 = &v17;
    v17 = v5;
    v13 = v5;
    v14 = v4;
    dispatch_group_notify(v12, &_dispatch_main_q, v15);
  }
}

- (void)flushCacheLookupsWithCompletion:(id)a3
{
  v4 = a3;
  +[NSThread isMainThread];
  v5 = os_transaction_create();
  v6 = [(NDContentDownloadService *)self prewarmGroup];
  IsEmpty = FCDispatchGroupIsEmpty();

  if (IsEmpty)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100009324;
    v18[3] = &unk_100071F40;
    v8 = &v20;
    v19 = v5;
    v20 = v4;
    v9 = &v19;
    v18[4] = self;
    v10 = v5;
    v11 = v4;
    sub_100009324(v18);
  }

  else
  {
    v12 = [(NDContentDownloadService *)self prewarmGroup];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000094A8;
    v15[3] = &unk_100071F40;
    v8 = &v17;
    v16 = v5;
    v17 = v4;
    v9 = &v16;
    v15[4] = self;
    v13 = v5;
    v14 = v4;
    dispatch_group_notify(v12, &_dispatch_main_q, v15);
  }
}

- (void)ping
{
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "received ping from another process", v3, 2u);
  }
}

- (id)keyedOperationQueue:(id)a3 performAsyncOperationForKey:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  +[NSThread isMainThread];
  v11 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v9 description];
    *buf = 138543362;
    v37 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "will handle next request in queue, request=%{public}@", buf, 0xCu);
  }

  [(NDContentDownloadService *)self setActiveDownloadRequest:v9];
  v14 = [(NDContentDownloadService *)self contentArchiveStore];
  v15 = [v9 contentID];
  v16 = [v14 interestTokenForContentID:v15];

  v17 = [(NDContentDownloadService *)self contentArchiveStore];
  v18 = [v9 contentID];
  [v17 prepareForContentID:v18];

  v19 = [(NDContentDownloadService *)self operationFactory];
  v20 = [v19 operationForRequest:v9];

  if (v20)
  {
    v21 = v20;
    [v21 setCachedOnly:0];
    [v21 setRelativePriority:-1];
    [v21 setQualityOfService:9];
    [v21 setArchiveQueue:&_dispatch_main_q];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100009AD4;
    v34[3] = &unk_100071F68;
    v34[4] = self;
    v22 = v9;
    v35 = v22;
    [v21 setArchiveHandler:v34];
    [v21 setProgressQueue:&_dispatch_main_q];

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100009C3C;
    v32[3] = &unk_100071F90;
    v32[4] = self;
    v23 = v22;
    v33 = v23;
    [v21 setProgressHandler:v32];
    objc_initWeak(buf, v21);
    [v21 setFetchCompletionQueue:&_dispatch_main_q];

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100009CDC;
    v26[3] = &unk_100071FE0;
    objc_copyWeak(&v31, buf);
    v27 = v23;
    v30 = v10;
    v28 = self;
    v29 = v16;
    [v21 setFetchCompletionHandler:v26];
    v24 = [objc_opt_class() _downloadQueue];
    [v24 addOperation:v21];

    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
  }

  else
  {
    [NSException raise:NSGenericException format:@"Failed to create operation for download request"];
  }

  return v20;
}

- (void)_prewarmFromLastKnownRequests
{
  +[NSThread isMainThread];
  v33 = os_transaction_create();
  v3 = [(NDContentDownloadService *)self store];
  v4 = [v3 lastKnownRequests];
  downloadRequests = self->_downloadRequests;
  self->_downloadRequests = v4;

  v6 = [(NDContentDownloadService *)self store];
  v7 = [v6 lastKnownLimits];
  downloadLimits = self->_downloadLimits;
  self->_downloadLimits = v7;

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [(NDContentDownloadService *)self downloadRequests];
  v36 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v36)
  {
    v35 = *v42;
    do
    {
      v9 = 0;
      do
      {
        if (*v42 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v41 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = +[NSMutableArray array];
        v13 = [(NDContentDownloadService *)self contentArchiveStore];
        v14 = [v10 contentID];
        v15 = [v13 interestTokenForContentID:v14];

        [v12 addObject:v15];
        v16 = [(NDContentDownloadService *)self contentArchiveStore];
        v17 = [v10 contentID];
        v18 = [v16 manifestForContentID:v17];

        if (v18)
        {
          v19 = [v18 copyWithAssetsOnly];
          v20 = [(NDContentDownloadService *)self contentContext];
          v21 = [v20 interestTokenForContentManifest:v19];

          [v12 addObject:v21];
        }

        v22 = [(NDContentDownloadService *)self interestTokensByContentID];
        v23 = [v10 contentID];
        [v22 setObject:v12 forKey:v23];

        v24 = [(NDContentDownloadService *)self contentArchiveStore];
        v25 = [v10 contentID];
        v26 = [v24 isContentIDComplete:v25];

        if (v26)
        {
          v27 = [(NDContentDownloadService *)self downloadedContentIDs];
          v28 = [v10 contentID];
          [v27 addObject:v28];
        }

        objc_autoreleasePoolPop(v11);
        v9 = v9 + 1;
      }

      while (v36 != v9);
      v36 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v36);
  }

  v29 = [objc_opt_class() _cacheLookupQueue];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10000A914;
  v40[3] = &unk_100071D20;
  v40[4] = self;
  [v29 fc_addMainThreadOperationWithBlock:v40];

  v30 = [objc_opt_class() _cacheLookupQueue];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10000A980;
  v39[3] = &unk_100071D20;
  v39[4] = self;
  [v30 fc_addMainThreadOperationWithBlock:v39];

  v31 = [objc_opt_class() _cacheLookupQueue];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10000A988;
  v37[3] = &unk_100071DB0;
  v37[4] = self;
  v38 = v33;
  v32 = v33;
  [v31 addOperationWithBlock:v37];
}

- (void)_catchUpConsumer
{
  +[NSThread isMainThread];
  v3 = [(NDContentDownloadService *)self downloadRequests];
  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_10000B0EC;
  v74[3] = &unk_100072008;
  v74[4] = self;
  v4 = [v3 fc_arrayOfObjectsPassingTest:v74];

  v5 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(NDContentDownloadService *)self currentConsumer];
    v8 = [v4 fc_arrayByTransformingWithBlock:&stru_100072048];
    *buf = 134218242;
    v78 = v7;
    v79 = 2114;
    v80 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "will catch up consumer %p on downloaded contentIDs=%{public}@", buf, 0x16u);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v4;
  v9 = [obj countByEnumeratingWithState:&v70 objects:v83 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v71;
    do
    {
      v12 = 0;
      v60 = v10;
      do
      {
        if (*v71 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v70 + 1) + 8 * v12);
        v14 = [(NDContentDownloadService *)self contentArchiveStore];
        v15 = [v13 contentID];
        v16 = [v14 isContentIDComplete:v15];

        if (v16)
        {
          v17 = [(NDContentDownloadService *)self contentArchiveStore];
          v18 = [v13 contentID];
          v19 = [v17 archivesForContentID:v18];

          v20 = FCOperationLog;
          if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
          {
            v21 = v20;
            v22 = [v19 count];
            v23 = [v13 contentID];
            *buf = 134218242;
            v78 = v22;
            v79 = 2114;
            v80 = v23;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "will send %lu content archives to consumer for contentID=%{public}@", buf, 0x16u);
          }

          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v24 = v19;
          v25 = [v24 countByEnumeratingWithState:&v66 objects:v76 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v67;
            do
            {
              for (i = 0; i != v26; i = i + 1)
              {
                if (*v67 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = *(*(&v66 + 1) + 8 * i);
                v30 = [(NDContentDownloadService *)self currentConsumer];
                [v30 downloadProgressedForRequest:v13 contentArchive:v29];
              }

              v26 = [v24 countByEnumeratingWithState:&v66 objects:v76 count:16];
            }

            while (v26);
          }

          v31 = [(NDContentDownloadService *)self currentConsumer];
          [v31 downloadFinishedForRequest:v13 error:0];

          v10 = v60;
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v32 = [NSString alloc];
          v33 = [v13 contentID];
          v34 = [v32 initWithFormat:@"download is finished but archives are missing for contentID=%@", v33];
          *buf = 136315906;
          v78 = "[NDContentDownloadService _catchUpConsumer]";
          v79 = 2080;
          v80 = "NDContentDownloadService.m";
          v81 = 1024;
          LODWORD(v82[0]) = 407;
          WORD2(v82[0]) = 2114;
          *(v82 + 6) = v34;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

        v12 = v12 + 1;
      }

      while (v12 != v10);
      v10 = [obj countByEnumeratingWithState:&v70 objects:v83 count:16];
    }

    while (v10);
  }

  v35 = [(NDContentDownloadService *)self activeDownloadRequest];
  if (v35)
  {
    v36 = v35;
    v37 = [(NDContentDownloadService *)self downloadRequests];
    v38 = [(NDContentDownloadService *)self activeDownloadRequest];
    v39 = [v37 containsObject:v38];

    if (v39)
    {
      v40 = FCOfflineDownloadsLog;
      if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
      {
        v41 = v40;
        v42 = [(NDContentDownloadService *)self currentConsumer];
        v43 = [(NDContentDownloadService *)self activeDownloadRequest];
        v44 = [v43 contentID];
        [(NDContentDownloadService *)self activeDownloadProgress];
        *buf = 134218498;
        v78 = v42;
        v79 = 2114;
        v80 = v44;
        v81 = 2048;
        v82[0] = v45;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "will catch up consumer %p on active download id=%{public}@, progress=%.2f", buf, 0x20u);
      }

      v46 = [(NDContentDownloadService *)self currentConsumer];
      v47 = [(NDContentDownloadService *)self activeDownloadRequest];
      [(NDContentDownloadService *)self activeDownloadProgress];
      [v46 downloadProgressedForRequest:v47 progress:?];

      v48 = [(NDContentDownloadService *)self contentArchiveStore];
      v49 = [(NDContentDownloadService *)self activeDownloadRequest];
      v50 = [v49 contentID];
      v51 = [v48 archivesForContentID:v50];

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v52 = v51;
      v53 = [v52 countByEnumeratingWithState:&v62 objects:v75 count:16];
      if (v53)
      {
        v54 = v53;
        v55 = *v63;
        do
        {
          for (j = 0; j != v54; j = j + 1)
          {
            if (*v63 != v55)
            {
              objc_enumerationMutation(v52);
            }

            v57 = *(*(&v62 + 1) + 8 * j);
            v58 = [(NDContentDownloadService *)self currentConsumer];
            v59 = [(NDContentDownloadService *)self activeDownloadRequest];
            [v58 downloadProgressedForRequest:v59 contentArchive:v57];
          }

          v54 = [v52 countByEnumeratingWithState:&v62 objects:v75 count:16];
        }

        while (v54);
      }
    }
  }
}

- (void)_revisitDownloadQueue
{
  +[NSThread isMainThread];
  v3 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(NDContentDownloadService *)self downloadRequests];
    v6 = [(NDContentDownloadService *)self downloadedContentIDs];
    v7 = [(NDContentDownloadService *)self errorsByContentID];
    *buf = 138543874;
    v21 = v5;
    v22 = 2114;
    v23 = v6;
    v24 = 2114;
    v25 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "will revisit queues with requests=%{public}@, downloadFinished=%{public}@, errors=%{public}@", buf, 0x20u);
  }

  v8 = [(NDContentDownloadService *)self _downloadKeyQueue];
  v9 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v8 array];
    v12 = [v11 fc_arrayByTransformingWithBlock:&stru_100072068];
    *buf = 138543362;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "will perform downloads with queue=%{public}@", buf, 0xCu);
  }

  v13 = [(NDContentDownloadService *)self downloadKeyedOperationQueue];
  [v13 setKeyQueue:v8];

  [(NDContentDownloadService *)self _recordWhetherTasksAreUnfinished];
  v14 = [(NDContentDownloadService *)self ANFHelper];
  [v14 pushInterest];

  v15 = os_transaction_create();
  v16 = [(NDContentDownloadService *)self downloadKeyedOperationQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000B3E4;
  v18[3] = &unk_100071DB0;
  v18[4] = self;
  v19 = v15;
  v17 = v15;
  [v16 notifyWhenAllOperationsAreFinishedUsingBlock:v18];
}

- (id)_downloadKeyQueue
{
  +[NSThread isMainThread];
  v3 = +[FCNetworkReachability sharedNetworkReachability];
  v4 = +[NSProcessInfo processInfo];
  v5 = [v3 isNetworkReachable];
  if ([v3 isNetworkOnlyReachableViaCellular])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v3 isNetworkUsageExpensive];
  }

  v7 = [v3 isLowDataModeEnabled];
  v8 = [v4 isLowPowerModeEnabled];
  v9 = IOPSDrawingUnlimitedPower();
  v10 = [(NDContentDownloadService *)self _hasReachedStorageLimits];
  v11 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"false";
    if (v5)
    {
      v13 = @"true";
    }

    else
    {
      v13 = @"false";
    }

    if (v6)
    {
      v14 = @"true";
    }

    else
    {
      v14 = @"false";
    }

    *buf = 138544642;
    v31 = v13;
    if (v7)
    {
      v15 = @"true";
    }

    else
    {
      v15 = @"false";
    }

    v32 = 2114;
    v33 = v14;
    if (v8)
    {
      v16 = @"true";
    }

    else
    {
      v16 = @"false";
    }

    v34 = 2114;
    v35 = v15;
    if (v9)
    {
      v17 = @"false";
    }

    else
    {
      v17 = @"true";
    }

    v36 = 2114;
    v37 = v16;
    if (v10)
    {
      v12 = @"true";
    }

    v38 = 2114;
    v39 = v17;
    v40 = 2114;
    v41 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "will filter download requests with networkReachable=%{public}@, expensiveNetwork=%{public}@, lowDataMode=%{public}@, lowPowerMode=%{public}@, batteryPowered=%{public}@, lowStorage=%{public}@", buf, 0x3Eu);
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10000B758;
  v24[3] = &unk_100072088;
  v25 = v6;
  v26 = v7;
  v27 = v8;
  v28 = v9 ^ 1;
  v29 = v10;
  v18 = objc_retainBlock(v24);
  v19 = [(NDContentDownloadService *)self _unfinishedRequests];
  v20 = [v19 fc_arrayOfObjectsPassingTest:v18];

  v21 = [(NDContentDownloadService *)self downloadedContentIDs];
  [v21 count];
  [v20 count];

  v22 = [NSOrderedSet orderedSetWithArray:v20];

  return v22;
}

- (id)_unfinishedRequests
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000BAB4;
  v7[3] = &unk_100072008;
  v7[4] = self;
  v3 = objc_retainBlock(v7);
  v4 = [(NDContentDownloadService *)self downloadRequests];
  v5 = [v4 fc_arrayOfObjectsPassingTest:v3];

  return v5;
}

- (BOOL)_canRetryDownloadWithError:(id)a3
{
  if ([(NDContentDownloadService *)self _isFatalError:a3])
  {
    return 0;
  }

  v4 = +[FCNetworkReachability sharedNetworkReachability];
  v5 = [v4 isNetworkReachable];

  return v5;
}

- (BOOL)_isFatalError:(id)a3
{
  v3 = a3;
  if ([v3 fc_isOfflineError] & 1) != 0 || (objc_msgSend(v3, "fc_isCancellationError"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [v3 fc_isRecoverableNetworkError] ^ 1;
  }

  return v4;
}

- (void)_pruneUnneededInterestTokens
{
  +[NSThread isMainThread];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000BD90;
  v7[3] = &unk_1000720B0;
  v7[4] = self;
  v3 = [NSSet fc_set:v7];
  v4 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "pruning interest tokens not in list=%{public}@", buf, 0xCu);
  }

  v5 = [(NDContentDownloadService *)self interestTokensByContentID];
  [v5 fc_removeObjectsForKeysNotInSet:v3];

  v6 = [(NDContentDownloadService *)self downloadedContentIDs];
  [v6 intersectSet:v3];
}

- (void)_recordWhetherTasksAreUnfinished
{
  +[NSThread isMainThread];
  v3 = [(NDContentDownloadService *)self _unfinishedRequests];
  v4 = [v3 count];
  v5 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      v6 = @"unfinished";
    }

    else
    {
      v6 = @"finished";
    }

    v7 = v5;
    v9 = 138543618;
    v10 = v6;
    v11 = 2048;
    v12 = [v3 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "recording that work is %{public}@ due to unfinished count=%lu", &v9, 0x16u);
  }

  v8 = NewsCoreUserDefaults();
  [v8 setBool:v4 != 0 forKey:NDDownloadServiceHasUnfinishedWorkKey];
}

- (BOOL)_hasReachedStorageLimits
{
  +[NSThread isMainThread];
  v3 = [(NDContentDownloadService *)self contentContext];
  v4 = [v3 contentHostDirectoryURL];

  v5 = [v4 fc_fileSystemFreeSize];
  v6 = [(NDContentDownloadService *)self downloadLimits];
  v7 = [v6 minDeviceStorage];

  if (v5 <= v7)
  {
    v17 = FCOfflineDownloadsLog;
    if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v17;
      v13 = [NSByteCountFormatter stringFromByteCount:v5 countStyle:0];
      v14 = [(NDContentDownloadService *)self downloadLimits];
      v15 = +[NSByteCountFormatter stringFromByteCount:countStyle:](NSByteCountFormatter, "stringFromByteCount:countStyle:", [v14 minDeviceStorage], 0);
      v20 = 138543618;
      v21 = v13;
      v22 = 2114;
      v23 = v15;
      v16 = "available device storage has reached minimum, available=%{public}@, minimum=%{public}@";
      goto LABEL_7;
    }
  }

  else
  {
    v8 = [(NDContentDownloadService *)self _storageUsedByDownloads];
    v9 = [(NDContentDownloadService *)self downloadLimits];
    v10 = [v9 maxDownloadStorage];

    if (v8 <= v10)
    {
      v18 = 0;
      goto LABEL_10;
    }

    v11 = FCOfflineDownloadsLog;
    if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [NSByteCountFormatter stringFromByteCount:v8 countStyle:0];
      v14 = [(NDContentDownloadService *)self downloadLimits];
      v15 = +[NSByteCountFormatter stringFromByteCount:countStyle:](NSByteCountFormatter, "stringFromByteCount:countStyle:", [v14 maxDownloadStorage], 0);
      v20 = 138543618;
      v21 = v13;
      v22 = 2114;
      v23 = v15;
      v16 = "download storage has reached maximum, used=%{public}@, maximum=%{public}@";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v16, &v20, 0x16u);
    }
  }

  v18 = 1;
LABEL_10:

  return v18;
}

- (unint64_t)_storageUsedByDownloads
{
  v3 = [(NDContentDownloadService *)self contentContext];
  v4 = [v3 storageSize];
  v5 = [(NDContentDownloadService *)self contentArchiveStore];
  v6 = [v5 storageSize];

  return v4 + v6;
}

- (void)_cleanUpAVAssetDownloads
{
  v2 = [(NDContentDownloadService *)self downloadRequests];
  v3 = [v2 fc_containsObjectPassingTest:&stru_1000720F0];

  if ((v3 & 1) == 0)
  {
    v4 = FCOfflineDownloadsLog;
    if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "will clear AV asset downloads directory since there are no more audio download requests", buf, 2u);
    }

    v11 = 0;
    v5 = +[NSFileManager defaultManager];
    v6 = FCURLForAVAssetDownloads();
    v10 = 0;
    v7 = [v5 fc_removeContentsOfDirectoryAtURL:v6 removedItemCount:&v11 error:&v10];
    v8 = v10;

    v9 = FCOfflineDownloadsLog;
    if (v7)
    {
      if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v13 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "did clear AV asset downloads directory, count=%lu", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_ERROR))
    {
      sub_1000531B0(v8, v9);
    }
  }
}

+ (id)_cacheLookupQueue
{
  if (qword_10007F710 != -1)
  {
    sub_100053228();
  }

  v3 = qword_10007F708;

  return v3;
}

+ (id)_downloadQueue
{
  if (qword_10007F720[0] != -1)
  {
    sub_10005323C();
  }

  v3 = qword_10007F718;

  return v3;
}

- (NSXPCConnection)currentConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_currentConnection);

  return WeakRetained;
}

@end