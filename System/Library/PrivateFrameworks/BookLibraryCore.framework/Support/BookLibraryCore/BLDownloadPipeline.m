@interface BLDownloadPipeline
- (BLBookInstallManager)installManager;
- (BLDatabaseManager)databaseManager;
- (BLDownloadPipeline)initWithDatabaseManager:(id)a3 downloadPolicyManager:(id)a4 transactionCoordinator:(id)a5 installManager:(id)a6 progressSender:(id)a7;
- (BLDownloadPolicyManager)downloadPolicyManager;
- (BLOSTransactionCoordinating)transactionCoordinator;
- (BOOL)_allowsCellularDownload:(id)a3;
- (BOOL)dq_setSessionTaskPriorityToHighForDownloadID:(id)a3;
- (id)dq_getTaskStateFromDownloadID:(id)a3;
- (void)URLSession:(id)a3 _willRetryBackgroundDataTask:(id)a4 withError:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 _willSendRequestForEstablishedConnection:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)_addDownloads:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)doq_performDownloadOperation:(id)a3 completion:(id)a4;
- (void)dq_cancelProgressTimer;
- (void)dq_clearIsLocalServerCacheForDownloadID:(id)a3 completion:(id)a4;
- (void)dq_commitProgress;
- (void)dq_logDownloadEvent:(id)a3 forTaskWithState:(id)a4;
- (void)dq_notifyServerOfDownloadCancelledWithAccountID:(id)a3 downloadID:(id)a4 storeID:(id)a5 transactionID:(id)a6 cancelDownloadURL:(id)a7 completion:(id)a8;
- (void)dq_notifyServerOfDownloadCancelledWithTaskState:(id)a3;
- (void)dq_prepareDownloadsForDownloads:(id)a3 filtersExistingTasks:(BOOL)a4 completion:(id)a5;
- (void)dq_processCompletedDownloadWithTaskState:(id)a3 postProgress:(BOOL)a4;
- (void)dq_processDownloadFailureWithTaskState:(id)a3 task:(id)a4 cancelReason:(int64_t)a5;
- (void)dq_pumpDownloadsWithCompletion:(id)a3;
- (void)dq_removeDownloadFromPipelineQueue:(id)a3;
- (void)dq_saveState:(int64_t)a3 forDownloadID:(id)a4 completion:(id)a5;
- (void)dq_scheduleReconnect;
- (void)dq_setDownloadState:(int64_t)a3 forDownloadIdentifier:(id)a4 completion:(id)a5;
- (void)dq_startProgressTimer;
- (void)installManager:(id)a3 didFinishInstallForOperation:(id)a4;
- (void)installManager:(id)a3 didStartInstallWithOperation:(id)a4 forDownloadID:(id)a5;
- (void)installManager:(id)a3 updatedProgress:(id)a4 forInstallOperation:(id)a5;
- (void)installManager:(id)a3 willRestartInstallForDownload:(id)a4;
- (void)notifyServerForFailedDownloadsWithCompletion:(id)a3;
- (void)prioritizeDownloadWithIdentifier:(id)a3 completion:(id)a4;
- (void)pumpDownloadsWithCompletion:(id)a3;
- (void)reconnectWithURLSessionTasks;
- (void)restartDownloadsWithIdentifiers:(id)a3 completion:(id)a4;
- (void)retryDownloadWithIdentifier:(id)a3 completion:(id)a4;
- (void)startupDownloadsWithCompletion:(id)a3;
- (void)stopDownloadsWithIdentifiers:(id)a3 reason:(int64_t)a4 completion:(id)a5;
@end

@implementation BLDownloadPipeline

- (BLDownloadPipeline)initWithDatabaseManager:(id)a3 downloadPolicyManager:(id)a4 transactionCoordinator:(id)a5 installManager:(id)a6 progressSender:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v49.receiver = self;
  v49.super_class = BLDownloadPipeline;
  v17 = [(BLDownloadPipeline *)&v49 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_databaseManager, v12);
    objc_storeWeak(&v18->_installManager, v15);
    objc_storeWeak(&v18->_transactionCoordinator, v14);
    objc_storeWeak(&v18->_downloadPolicyManager, v13);
    objc_storeStrong(&v18->_progressSender, a7);
    v19 = [(BLDownloadPipeline *)v18 newOperationQueue];
    backgroundOperationQueue = v18->_backgroundOperationQueue;
    v18->_backgroundOperationQueue = v19;

    [(BLOperationQueueProtocol *)v18->_backgroundOperationQueue setMaxConcurrentOperationCount:1];
    [(BLOperationQueueProtocol *)v18->_backgroundOperationQueue setName:@"com.apple.bookassetd.BLDownloadPipeline.background"];
    v21 = [(BLDownloadPipeline *)v18 newOperationQueue];
    preparationOperationQueue = v18->_preparationOperationQueue;
    v18->_preparationOperationQueue = v21;

    [(BLOperationQueueProtocol *)v18->_preparationOperationQueue setMaxConcurrentOperationCount:1];
    [(BLOperationQueueProtocol *)v18->_preparationOperationQueue setName:@"com.apple.bookassetd.BLDownloadPipeline.prepare"];
    v23 = [(BLDownloadPipeline *)v18 newOperationQueue];
    processingOperationQueue = v18->_processingOperationQueue;
    v18->_processingOperationQueue = v23;

    [(BLOperationQueueProtocol *)v18->_processingOperationQueue setMaxConcurrentOperationCount:3];
    [(BLOperationQueueProtocol *)v18->_processingOperationQueue setName:@"com.apple.bookassetd.BLDownloadPipeline.processing"];
    v25 = [(BLDownloadPipeline *)v18 newOperationQueue];
    sampleDownloadOperationQueue = v18->_sampleDownloadOperationQueue;
    v18->_sampleDownloadOperationQueue = v25;

    [(BLOperationQueueProtocol *)v18->_sampleDownloadOperationQueue setMaxConcurrentOperationCount:1];
    [(BLOperationQueueProtocol *)v18->_sampleDownloadOperationQueue setName:@"com.apple.bookassetd.BLDownloadPipeline.sampleDownloads"];
    v27 = [(BLDownloadPipeline *)v18 newOperationQueue];
    cellularDownloadOperationQueue = v18->_cellularDownloadOperationQueue;
    v18->_cellularDownloadOperationQueue = v27;

    [(BLOperationQueueProtocol *)v18->_cellularDownloadOperationQueue setMaxConcurrentOperationCount:3];
    [(BLOperationQueueProtocol *)v18->_cellularDownloadOperationQueue setName:@"com.apple.bookassetd.BLDownloadPipeline.cellularDownloads"];
    v29 = [(BLDownloadPipeline *)v18 newOperationQueue];
    discretionaryDownloadOperationQueue = v18->_discretionaryDownloadOperationQueue;
    v18->_discretionaryDownloadOperationQueue = v29;

    [(BLOperationQueueProtocol *)v18->_discretionaryDownloadOperationQueue setMaxConcurrentOperationCount:3];
    [(BLOperationQueueProtocol *)v18->_discretionaryDownloadOperationQueue setName:@"com.apple.bookassetd.BLDownloadPipeline.discretionaryDownloads"];
    v31 = [(BLDownloadPipeline *)v18 newOperationQueue];
    nonDiscretionaryDownloadOperationQueue = v18->_nonDiscretionaryDownloadOperationQueue;
    v18->_nonDiscretionaryDownloadOperationQueue = v31;

    [(BLOperationQueueProtocol *)v18->_nonDiscretionaryDownloadOperationQueue setMaxConcurrentOperationCount:3];
    [(BLOperationQueueProtocol *)v18->_nonDiscretionaryDownloadOperationQueue setName:@"com.apple.bookassetd.BLDownloadPipeline.nonDiscretionaryDownloads"];
    v33 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v34 = dispatch_queue_create("com.apple.bookassetd.BLDownloadPipeline", v33);
    dispatchQueue = v18->_dispatchQueue;
    v18->_dispatchQueue = v34;

    v36 = [[BLDownloadPipelineQueue alloc] initWithQueue:v18->_dispatchQueue];
    downloadPipelineQueue = v18->_downloadPipelineQueue;
    v18->_downloadPipelineQueue = v36;

    v38 = objc_alloc_init(NSMutableSet);
    dirtyTaskStates = v18->_dirtyTaskStates;
    v18->_dirtyTaskStates = v38;

    v40 = objc_alloc_init(NSMutableSet);
    activeTaskStates = v18->_activeTaskStates;
    v18->_activeTaskStates = v40;

    v42 = objc_alloc_init(NSMutableOrderedSet);
    preparationDownloadIDs = v18->_preparationDownloadIDs;
    v18->_preparationDownloadIDs = v42;

    v44 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:0];
    taskStates = v18->_taskStates;
    v18->_taskStates = v44;

    v46 = objc_alloc_init(NSMutableDictionary);
    urlSessions = v18->_urlSessions;
    v18->_urlSessions = v46;
  }

  return v18;
}

- (void)dealloc
{
  progressTimer = self->_progressTimer;
  if (progressTimer)
  {
    dispatch_source_cancel(progressTimer);
    v4 = self->_progressTimer;
    self->_progressTimer = 0;
  }

  reconnectTimer = self->_reconnectTimer;
  if (reconnectTimer)
  {
    dispatch_source_cancel(reconnectTimer);
    v6 = self->_reconnectTimer;
    self->_reconnectTimer = 0;
  }

  v7.receiver = self;
  v7.super_class = BLDownloadPipeline;
  [(BLDownloadPipeline *)&v7 dealloc];
}

- (void)pumpDownloadsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BLDownloadPipeline *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008B4B4;
  v7[3] = &unk_10011D430;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)reconnectWithURLSessionTasks
{
  v3 = [(BLDownloadPipeline *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008B548;
  block[3] = &unk_10011CFE8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)prioritizeDownloadWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BLDownloadPipeline *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008B810;
  block[3] = &unk_10011DB00;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)startupDownloadsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BLDownloadPipeline *)self transactionCoordinator];
  [v5 willStartTransactionWithIdentifier:@"com.apple.bookassetd.restart-downloads-at-startup"];

  v6 = [(BLDownloadPipeline *)self dispatchQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008BAE8;
  v8[3] = &unk_10011D430;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)restartDownloadsWithIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BLDownloadPipeline *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008BFD4;
  block[3] = &unk_10011DB00;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)retryDownloadWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(BLDownloadPipeline *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008C36C;
  block[3] = &unk_10011DE80;
  block[4] = self;
  v12 = v6;
  v9 = v6;
  objc_copyWeak(&v14, &location);
  v13 = v7;
  v10 = v7;
  dispatch_async(v8, block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)stopDownloadsWithIdentifiers:(id)a3 reason:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(BLDownloadPipeline *)self dispatchQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008C62C;
  v13[3] = &unk_10011DED0;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (id)dq_getTaskStateFromDownloadID:(id)a3
{
  v4 = a3;
  v5 = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(BLDownloadPipeline *)self activeTaskStates];
  v7 = [v6 objectEnumerator];

  v8 = 0;
  do
  {
    v9 = v8;
    v8 = [v7 nextObject];

    if (!v8)
    {
      break;
    }

    v10 = [v8 downloadIdentifier];
    v11 = [v10 isEqualToString:v4];
  }

  while (!v11);

  return v8;
}

- (void)installManager:(id)a3 willRestartInstallForDownload:(id)a4
{
  v5 = a4;
  v6 = [(BLDownloadPipeline *)self transactionCoordinator];
  v7 = [v5 downloadID];
  [v6 willStartTransactionWithIdentifier:v7];

  v8 = [(BLDownloadPipeline *)self dispatchQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008CEE8;
  v10[3] = &unk_10011D1A8;
  v11 = v5;
  v12 = self;
  v9 = v5;
  dispatch_async(v8, v10);
}

- (void)installManager:(id)a3 didStartInstallWithOperation:(id)a4 forDownloadID:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(BLDownloadPipeline *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008D05C;
  block[3] = &unk_10011D0C8;
  block[4] = self;
  v13 = v8;
  v14 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, block);
}

- (void)installManager:(id)a3 updatedProgress:(id)a4 forInstallOperation:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(BLDownloadPipeline *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008D38C;
  block[3] = &unk_10011D0C8;
  block[4] = self;
  v13 = v8;
  v14 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, block);
}

- (void)installManager:(id)a3 didFinishInstallForOperation:(id)a4
{
  v5 = a4;
  v6 = [(BLDownloadPipeline *)self dispatchQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008D4F8;
  v8[3] = &unk_10011D1A8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 bl_dataConsumer];
  v21 = 0;
  v10 = [v9 consumeData:v8 error:&v21];

  v11 = v21;
  v12 = [(BLDownloadPipeline *)self dispatchQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10008D864;
  v16[3] = &unk_10011DEF8;
  v20 = v10;
  v16[4] = self;
  v17 = v7;
  v18 = v11;
  v19 = v9;
  v13 = v9;
  v14 = v11;
  v15 = v7;
  dispatch_async(v12, v16);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [v9 bl_statusCode];
  if (v11 <= 399)
  {
    v12 = [v8 bl_dataConsumer];
    v13 = [v12 resumptionOffset];
    if (v11 != 206 && v13)
    {
      v14 = BLServiceDownloadPipelineLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 134217984;
        v26 = [v8 taskIdentifier];
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[Download]: Did not receive partial content response for task: %lu", &v25, 0xCu);
      }

      [v12 truncate];
    }

    v10[2](v10, 1);

    goto LABEL_27;
  }

  v15 = BLServiceDownloadPipelineLog();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v11 == 416)
  {
    if (v16)
    {
      v25 = 134217984;
      v26 = [v8 taskIdentifier];
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[Download]: Truncate and restart task: %lu after 416 response", &v25, 0xCu);
    }

    v17 = [v8 bl_dataConsumer];
    [v17 truncate];

    goto LABEL_16;
  }

  if (v11 == 408)
  {
    if (v16)
    {
      v25 = 134217984;
      v26 = [v8 taskIdentifier];
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[Download]: Restart task: %lu after 408 response", &v25, 0xCu);
    }

LABEL_16:
    [v8 bl_cancelWithReason:5 error:0];
    v10[2](v10, 0);
    goto LABEL_27;
  }

  if (v16)
  {
    v25 = 134218240;
    v26 = [v8 taskIdentifier];
    v27 = 2048;
    v28 = v11;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[Download]: Cancel download task: %lu for invalid HTTP status code: %ld", &v25, 0x16u);
  }

  v18 = objc_alloc_init(NSMutableDictionary);
  v19 = [NSNumber numberWithInteger:v11];
  [v18 setObject:v19 forKeyedSubscript:@"BLKeyHTTPResponseCode"];

  v20 = [v9 bl_allHeaderFields];
  v21 = sub_100083F70(v20, @"X-Apple-JADownloadQueue-Token");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v18 setObject:v21 forKeyedSubscript:BLDownloadErrorKeyJADownloadQueueToken];
  }

  v22 = sub_100083F70(v20, @"Retry-After");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v18 setObject:v22 forKeyedSubscript:BLDownloadErrorKeyRetryInterval];
  }

  v23 = [v18 copy];
  if (v11 == 403)
  {
    [NSError errorWithDomain:NSURLErrorDomain code:-1102 userInfo:v23];
  }

  else
  {
    sub_1000A905C(3, 0, 0, v23);
  }
  v24 = ;

  [v8 bl_cancelWithReason:1 error:v24];
  v10[2](v10, 0);

LABEL_27:
}

- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = BLServiceDownloadPipelineLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[Download] URLSession finish collecting metrics. task=%@, metrics=%@", buf, 0x16u);
  }

  v10 = [(BLDownloadPipeline *)self dispatchQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008E058;
  v13[3] = &unk_10011D1A8;
  v14 = v7;
  v15 = v8;
  v11 = v8;
  v12 = v7;
  dispatch_async(v10, v13);
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = BLServiceDownloadPipelineLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[Download] URLSession task complete. task=%@", buf, 0xCu);
  }

  v10 = [(BLDownloadPipeline *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008E1B8;
  block[3] = &unk_10011D0C8;
  v14 = v7;
  v15 = v8;
  v16 = self;
  v11 = v8;
  v12 = v7;
  dispatch_async(v10, block);
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v7 = a6;
  v8 = [a5 protectionSpace];
  v9 = [v8 authenticationMethod];
  if ([v9 isEqualToString:NSURLAuthenticationMethodClientCertificate])
  {
    v10 = BLServiceDownloadPipelineLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      v11 = "Asked to use client certificate authentication";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, &v17, 2u);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if ([v9 isEqualToString:NSURLAuthenticationMethodServerTrust])
  {
    if (!MGGetBoolAnswer() || (+[AMSDefaults QAMode](AMSDefaults, "QAMode") & 1) == 0 && !+[AMSDefaults ignoreServerTrustEvaluation])
    {
      v10 = BLServiceDownloadPipelineLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        v11 = "Asked to perform server trust authentication";
        goto LABEL_17;
      }

LABEL_18:

      v7[2](v7, 1, 0);
      goto LABEL_19;
    }

    v12 = BLServiceDownloadPipelineLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 67109632;
      *v18 = 1;
      *&v18[4] = 1024;
      *&v18[6] = +[AMSDefaults QAMode];
      v19 = 1024;
      v20 = +[AMSDefaults ignoreServerTrustEvaluation];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Ignoring server trust!! (internalBuild:%d, QAMode:%d, ignoreServerTrustEvaluation: %d)", &v17, 0x14u);
    }

    v13 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [v8 serverTrust]);
    (v7)[2](v7, 0, v13);
  }

  else
  {
    v14 = [v9 isEqualToString:NSURLAuthenticationMethodHTTPBasic];
    v15 = BLServiceDownloadPipelineLog();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (v14)
    {
      if (v16)
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Basic authentication is not supported by bookassetd", &v17, 2u);
      }

      v7[2](v7, 2, 0);
    }

    else
    {
      if (v16)
      {
        v17 = 138543362;
        *v18 = v9;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "This authentication method %{public}@ is not supported by bookassetd ... try the next protection space", &v17, 0xCu);
      }

      v7[2](v7, 3, 0);
    }
  }

LABEL_19:
}

- (void)URLSession:(id)a3 _willRetryBackgroundDataTask:(id)a4 withError:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(BLDownloadPipeline *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008ECC8;
  block[3] = &unk_10011D0C8;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

- (void)URLSession:(id)a3 task:(id)a4 _willSendRequestForEstablishedConnection:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(BLDownloadPipeline *)self dispatchQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10008EF90;
  v16[3] = &unk_10011DAD8;
  v17 = v10;
  v18 = v9;
  v19 = self;
  v20 = v11;
  v13 = v11;
  v14 = v9;
  v15 = v10;
  dispatch_async(v12, v16);
}

- (void)_addDownloads:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BLDownloadPipeline *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008F3CC;
  block[3] = &unk_10011DB00;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)dq_startProgressTimer
{
  v3 = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(BLDownloadPipeline *)self progressTimer];

  if (!v4)
  {
    objc_initWeak(&location, self);
    v5 = [(BLDownloadPipeline *)self dispatchQueue];
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v5);
    [(BLDownloadPipeline *)self setProgressTimer:v6];

    v7 = [(BLDownloadPipeline *)self progressTimer];
    v8 = dispatch_time(0, 500000000);
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);

    v9 = [(BLDownloadPipeline *)self progressTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10008F880;
    handler[3] = &unk_10011DF70;
    handler[4] = self;
    objc_copyWeak(&v12, &location);
    dispatch_source_set_event_handler(v9, handler);

    v10 = [(BLDownloadPipeline *)self progressTimer];
    dispatch_resume(v10);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)dq_commitProgress
{
  v3 = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(BLDownloadPipeline *)self dirtyTaskStates];
  v5 = [v4 count];

  if (v5)
  {
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    obj = [(BLDownloadPipeline *)self dirtyTaskStates];
    v80 = [obj countByEnumeratingWithState:&v81 objects:v91 count:16];
    if (v80)
    {
      v79 = *v82;
      v78 = BLDownloadQueuePropertyBytesDownloaded;
      v77 = BLDownloadQueuePropertyBytesTotal;
      v76 = BLDownloadQueuePropertyEstimatedTimeRemaining;
      v75 = BLDownloadQueuePropertyPercentComplete;
      v74 = BLDownloadQueuePropertyStoreItemIdentifier;
      v73 = BLDownloadQueuePropertyStorePlaylistIdentifier;
      v72 = BLDownloadQueuePropertyDownloadIdentifier;
      v71 = BLDownloadQueuePropertyArtistName;
      v70 = BLDownloadQueuePropertyTitle;
      v69 = BLDownloadQueuePropertySubTitle;
      v68 = BLDownloadQueuePropertyCollectionArtistName;
      v67 = BLDownloadQueuePropertyCollectionTitle;
      v66 = BLDownloadQueuePropertyGenre;
      v65 = BLDownloadQueuePropertyKind;
      v64 = BLDownloadQueuePropertyThumbnailImageURL;
      v63 = BLDownloadQueuePropertyPermLink;
      v62 = BLDownloadQueuePropertyDownloadPhase;
      v61 = BLDownloadKindAudiobook;
      v60 = BLDownloadQueuePropertyIsAudiobook;
      v59 = BLDownloadQueuePropertyIsRestore;
      v58 = BLDownloadQueuePropertyIsSample;
      v57 = BLDownloadQueuePropertyIsPurchase;
      v56 = BLDownloadQueuePropertyPurchaseDate;
      v55 = BLDownloadQueuePropertyPersistentIdentifier;
      *&v6 = 138543874;
      v52 = v6;
      v54 = BLDownloadQueuePropertyStoreAccountIdentifier;
      do
      {
        v7 = 0;
        do
        {
          if (*v82 != v79)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v81 + 1) + 8 * v7);
          v9 = objc_autoreleasePoolPush();
          v10 = [v8 downloadIdentifier];
          v11 = [v8 overallProgress];
          [v11 snapshot];
          v12 = [v11 currentValue];
          v13 = v12 / [v11 maxValue];
          v14 = objc_opt_new();
          v15 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v8 transferBytesWritten]);
          [v14 setObject:v15 forKeyedSubscript:v78];

          v16 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v8 transferBytesExpected]);
          [v14 setObject:v16 forKeyedSubscript:v77];

          [v11 estimatedTimeRemaining];
          v17 = [NSNumber numberWithDouble:?];
          [v14 setObject:v17 forKeyedSubscript:v76];

          v18 = [NSNumber numberWithDouble:v13];
          [v14 setObject:v18 forKeyedSubscript:v75];

          v19 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v8 assetIdentifier]);
          [v14 setObject:v19 forKeyedSubscript:v74];

          v20 = [v8 playlistIdentifier];
          [v14 setObject:v20 forKeyedSubscript:v73];

          [v14 setObject:v10 forKeyedSubscript:v72];
          v21 = [v8 artistName];
          [v14 setObject:v21 forKeyedSubscript:v71];

          v22 = [v8 title];
          [v14 setObject:v22 forKeyedSubscript:v70];

          v23 = [v8 subtitle];
          [v14 setObject:v23 forKeyedSubscript:v69];

          v24 = [v8 collectionArtistName];
          [v14 setObject:v24 forKeyedSubscript:v68];

          v25 = [v8 collectionTitle];
          [v14 setObject:v25 forKeyedSubscript:v67];

          v26 = [v8 genre];
          [v14 setObject:v26 forKeyedSubscript:v66];

          v27 = [v8 kind];
          [v14 setObject:v27 forKeyedSubscript:v65];

          v28 = [v8 thumbnailImageURL];
          [v14 setObject:v28 forKeyedSubscript:v64];

          v29 = [v8 permLink];
          [v14 setObject:v29 forKeyedSubscript:v63];

          v30 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 downloadPhase]);
          [v14 setObject:v30 forKeyedSubscript:v62];

          v31 = [v8 kind];
          v32 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v61 isEqualToString:v31]);
          [v14 setObject:v32 forKeyedSubscript:v60];

          v33 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 isRestore]);
          [v14 setObject:v33 forKeyedSubscript:v59];

          v34 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 isSample]);
          [v14 setObject:v34 forKeyedSubscript:v58];

          v35 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 isPurchase]);
          [v14 setObject:v35 forKeyedSubscript:v57];

          v36 = [v8 purchaseDate];
          [v14 setObject:v36 forKeyedSubscript:v56];

          v37 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v8 persistentIdentifier]);
          [v14 setObject:v37 forKeyedSubscript:v55];

          v38 = [v8 storeAccountIdentifier];
          [v14 setObject:v38 forKeyedSubscript:v54];

          if (v14)
          {
            if ([v8 downloadPhase] == 5 || objc_msgSend(v8, "downloadPhase") == 4)
            {
              v39 = BLServiceDownloadPipelineLog();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v86 = v10;
                v87 = 2048;
                v88 = *&v8;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download]: Posting the BLDownloadQueueDownloadFailedNotification, taskState: %p", buf, 0x16u);
              }

              v40 = [(BLDownloadPipeline *)self progressSender];
              [v40 sendDidFailNotificatonWithUserInfo:v14];
            }

            else
            {
              v44 = [v8 downloadPhase];
              v45 = BLServiceDownloadPipelineLog();
              v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
              if (v44 == 8)
              {
                if (v46)
                {
                  *buf = 138543618;
                  v86 = v10;
                  v87 = 2048;
                  v88 = *&v8;
                  _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download]: Posting the DownloadCompleteNotification, taskState: %p", buf, 0x16u);
                }

                v47 = [(BLDownloadPipeline *)self progressSender];
                [v47 sendDownloadCompleteWithUserInfo:v14];

                v40 = _os_activity_create(&_mh_execute_header, "Posting PlistChanged to itunesstored", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);
                os_activity_apply(v40, &stru_10011DF90);
              }

              else
              {
                if (v46)
                {
                  if ([v8 transferBytesExpected] < 1)
                  {
                    v49 = 0.0;
                  }

                  else
                  {
                    v48 = [v8 transferBytesWritten];
                    v49 = v48 / [v8 transferBytesExpected];
                  }

                  *buf = v52;
                  v86 = v10;
                  v87 = 2048;
                  v88 = v49;
                  v89 = 2048;
                  v90 = v8;
                  _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download]: Posting download/install progress for download [%.2f%% complete], taskState: %p", buf, 0x20u);
                }

                v40 = [(BLDownloadPipeline *)self progressSender];
                [v40 sendProgressNotificationWithUserInfo:v14];
              }
            }

            if ([v8 downloadPhase] == 3 || objc_msgSend(v8, "downloadPhase") == 5 || objc_msgSend(v8, "downloadPhase") == 8 || objc_msgSend(v8, "downloadPhase") == 4)
            {
              v41 = BLServiceDownloadPipelineLog();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                v86 = v10;
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "(dID=%{public}@) [Download]: Sending the didFinishTransactionWithIdenfifier", buf, 0xCu);
              }

              [(BLDownloadPipeline *)self dq_removeDownloadFromPipelineQueue:v10];
              v42 = BLServiceDownloadPipelineLog();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v86 = v10;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download]: dq_commitProgress is going to call dq_pumpDownloadsWithCompletion", buf, 0xCu);
              }

              [(BLDownloadPipeline *)self dq_pumpDownloadsWithCompletion:0];
              v43 = [(BLDownloadPipeline *)self transactionCoordinator];
              [v43 didFinishTransactionWithIdenfifier:v10];
            }
          }

          objc_autoreleasePoolPop(v9);
          v7 = v7 + 1;
        }

        while (v80 != v7);
        v50 = [obj countByEnumeratingWithState:&v81 objects:v91 count:16];
        v80 = v50;
      }

      while (v50);
    }

    v51 = [(BLDownloadPipeline *)self dirtyTaskStates];
    [v51 removeAllObjects];
  }

  [(BLDownloadPipeline *)self dq_cancelProgressTimer];
}

- (void)dq_removeDownloadFromPipelineQueue:(id)a3
{
  v4 = a3;
  v5 = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(BLDownloadPipeline *)self downloadPipelineQueue];
  [v6 removeDownloadWithDownloadID:v4];

  v7 = BLServiceDownloadQueueLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(BLDownloadPipeline *)self downloadPipelineQueue];
    v9 = [v8 inFlightDiscretionaryDownloadIDs];
    v10 = [v9 count];
    v11 = [(BLDownloadPipeline *)self downloadPipelineQueue];
    v12 = [v11 inFlightNondiscretionaryDownloadIDs];
    v18 = 138543874;
    v19 = v4;
    v20 = 2048;
    v21 = v10;
    v22 = 2048;
    v23 = [v12 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) Removing from inFlight lists. New discretionary count %lu, New nondiscretionary count %lu", &v18, 0x20u);
  }

  v13 = BLServiceDownloadQueueLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [(BLDownloadPipeline *)self downloadPipelineQueue];
    v15 = [v14 inFlightDiscretionaryDownloadIDs];
    v16 = [(BLDownloadPipeline *)self downloadPipelineQueue];
    v17 = [v16 inFlightNondiscretionaryDownloadIDs];
    v18 = 138543618;
    v19 = v15;
    v20 = 2114;
    v21 = v17;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "In flight discretionary %{public}@\nIn flight nondiscrtionary %{public}@", &v18, 0x16u);
  }
}

- (void)dq_cancelProgressTimer
{
  v3 = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(BLDownloadPipeline *)self progressTimer];

  if (v4)
  {
    v5 = [(BLDownloadPipeline *)self progressTimer];
    dispatch_source_cancel(v5);

    [(BLDownloadPipeline *)self setProgressTimer:0];
  }
}

- (void)dq_saveState:(int64_t)a3 forDownloadID:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(v10);

  objc_initWeak(&location, self);
  v11 = [(BLDownloadPipeline *)self databaseManager];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000907B8;
  v13[3] = &unk_10011D490;
  objc_copyWeak(&v15, &location);
  v12 = v9;
  v14 = v12;
  [v11 saveDownloadStateWithId:v8 state:a3 completion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)dq_clearIsLocalServerCacheForDownloadID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(v8);

  objc_initWeak(&location, self);
  v9 = [(BLDownloadPipeline *)self databaseManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100090A1C;
  v11[3] = &unk_10011D490;
  objc_copyWeak(&v13, &location);
  v10 = v7;
  v12 = v10;
  [v9 saveIsLocalCacheServerWithId:v6 isLocal:0 completion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (BOOL)dq_setSessionTaskPriorityToHighForDownloadID:(id)a3
{
  v23 = a3;
  v4 = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(v4);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [(BLDownloadPipeline *)self taskStates];
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v22 = 0;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          v10 = BUDynamicCast();
          v11 = [(BLDownloadPipeline *)self taskStates];
          v12 = [v11 objectForKey:v10];

          v13 = [v12 downloadIdentifier];
          v14 = [v23 isEqualToString:v13];
          v15 = BLServiceDownloadPipelineLog();
          v16 = v15;
          if (v14)
          {
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v17 = [v10 taskIdentifier];
              *buf = 138543618;
              v29 = v13;
              v30 = 2048;
              v31 = v17;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download]: Reprioritizing to high task: %lu", buf, 0x16u);
            }

            v22 = 1;
            v18 = NSURLSessionTaskPriorityHigh;
          }

          else
          {
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              v19 = [v10 taskIdentifier];
              *buf = 138543618;
              v29 = v13;
              v30 = 2048;
              v31 = v19;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "(dID=%{public}@) [Download]: Reprioritizing to default task: %lu to restart download", buf, 0x16u);
            }

            v18 = NSURLSessionTaskPriorityDefault;
          }

          *&v20 = v18;
          [v10 setPriority:v20];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v7);
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

- (void)dq_pumpDownloadsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = BLServiceDownloadQueueLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Pumping Downloads", buf, 2u);
  }

  v7 = [(BLDownloadPipeline *)self downloadPipelineQueue];
  v8 = [v7 availableSampleDownloads];

  v9 = [(BLDownloadPipeline *)self downloadPipelineQueue];
  v10 = [v9 availableCellularDownloads];

  v11 = [(BLDownloadPipeline *)self downloadPipelineQueue];
  v12 = [v11 availableDiscretionaryDownloads];

  v13 = [(BLDownloadPipeline *)self downloadPipelineQueue];
  v14 = [v13 availableNondiscretionaryDownloads];

  v15 = BLServiceDownloadQueueLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    v35 = v12;
    v36 = 2048;
    v37 = v14;
    v38 = 2048;
    v39 = v8;
    v40 = 2048;
    v41 = v10;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Available discretionary %lu, nondiscretionary %lu, sample %lu, cellular %lu", buf, 0x2Au);
  }

  v16 = BLServiceDownloadQueueLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [(BLDownloadPipeline *)self downloadPipelineQueue];
    v17 = [v29 inFlightDiscretionaryDownloadIDs];
    v27 = [(BLDownloadPipeline *)self downloadPipelineQueue];
    v18 = [v27 inFlightNondiscretionaryDownloadIDs];
    [(BLDownloadPipeline *)self downloadPipelineQueue];
    v19 = v31 = v8;
    [v19 inFlightSampleDownloadIDs];
    v20 = v30 = v4;
    [(BLDownloadPipeline *)self downloadPipelineQueue];
    v28 = v14;
    v22 = v21 = v10;
    v23 = [v22 inFlightCellularDownloadIDs];
    *buf = 138544130;
    v35 = v17;
    v36 = 2114;
    v37 = v18;
    v38 = 2114;
    v39 = v20;
    v40 = 2114;
    v41 = v23;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "In flight discretionary %{public}@\nIn flight nondiscretionary %{public}@\nIn flight sample %{public}@\nIn flight cellular %{public}@", buf, 0x2Au);

    v10 = v21;
    v14 = v28;

    v4 = v30;
    v8 = v31;
  }

  if (v12 || v14 || v8 || v10)
  {
    v26 = [(BLDownloadPipeline *)self databaseManager];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000911DC;
    v32[3] = &unk_10011D9C0;
    v32[4] = self;
    v33 = v4;
    [v26 fetchListOfPendingDownloadsSortedByStartTime:v32];
  }

  else
  {
    v24 = objc_retainBlock(v4);
    v25 = v24;
    if (v24)
    {
      (*(v24 + 2))(v24, 0, 0);
    }
  }
}

- (void)doq_performDownloadOperation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BLDownloadPipeline *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100091E8C;
  block[3] = &unk_10011DB00;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)dq_logDownloadEvent:(id)a3 forTaskWithState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(v8);

  v9 = BLServiceDownloadPipelineLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 downloadIdentifier];
    v11 = 138543618;
    v12 = v10;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download]: logged event: %{public}@ for task", &v11, 0x16u);
  }
}

- (void)dq_prepareDownloadsForDownloads:(id)a3 filtersExistingTasks:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(v10);

  if (v6)
  {
    v11 = objc_alloc_init(NSMutableSet);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v12 = [(BLDownloadPipeline *)self taskStates];
    v13 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v30;
      do
      {
        v16 = 0;
        do
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v29 + 1) + 8 * v16);
          v18 = [(BLDownloadPipeline *)self taskStates];
          v19 = [v18 objectForKey:v17];

          v20 = [v19 downloadIdentifier];
          [v11 addObject:v20];

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v11 = 0;
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100092A84;
  v25[3] = &unk_10011E058;
  v26 = v11;
  v27 = self;
  v28 = v9;
  v21 = v9;
  v22 = v11;
  v23 = objc_retainBlock(v25);
  v24 = [(BLDownloadPipeline *)self downloadPolicyManager];
  [BLPrepareDownloadOperation enumerateOperationsWithDownloads:v8 downloadPolicyManager:v24 usingBlock:v23];
}

- (BOOL)_allowsCellularDownload:(id)a3
{
  v4 = a3;
  v5 = [v4 isRestore];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = +[BLRestoreManager sharedInstance];
    v8 = [v7 isCellularAllowed];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(BLDownloadPipeline *)self downloadPolicyManager];
  v10 = [v4 downloadID];
  v11 = [v9 downloadPolicyForID:v10];

  LOBYTE(v9) = [BLPrepareDownloadOperation allowsCellularAccessForAsset:v4 policy:v11 isCellularAllowedForRestores:v8];
  return v9;
}

- (void)dq_processCompletedDownloadWithTaskState:(id)a3 postProgress:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(v6);

  if (v4)
  {
    [v9 setTransferProgress:1.0];
    v7 = [(BLDownloadPipeline *)self dirtyTaskStates];
    [v7 addObject:v9];

    [(BLDownloadPipeline *)self dq_startProgressTimer];
  }

  v8 = [v9 downloadIdentifier];
  [(BLDownloadPipeline *)self dq_setDownloadState:7 forDownloadIdentifier:v8 completion:0];
}

- (void)dq_processDownloadFailureWithTaskState:(id)a3 task:(id)a4 cancelReason:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(v10);

  v11 = a5 - 1;
  if ((a5 - 1) > 3)
  {
    v13 = @"Download Error";
    v12 = 5;
  }

  else
  {
    v12 = qword_1000DF690[v11];
    v13 = *(&off_10011E118 + v11);
  }

  [v8 setDownloadPhase:v12];
  v14 = BLServiceDownloadPipelineLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = [v8 downloadIdentifier];
    v19 = 138543618;
    v20 = v15;
    v21 = 2114;
    v22 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Download]: Download Failed reason: %{public}@", &v19, 0x16u);
  }

  if ((a5 - 5) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    [v8 setTransferProgress:1.0];
  }

  v16 = [(BLDownloadPipeline *)self dirtyTaskStates];
  [v16 addObject:v8];

  v17 = [(BLDownloadPipeline *)self activeTaskStates];
  [v17 removeObject:v8];

  if (v9)
  {
    v18 = [(BLDownloadPipeline *)self taskStates];
    [v18 removeObjectForKey:v9];
  }

  [(BLDownloadPipeline *)self dq_startProgressTimer];
  if ([v8 downloadPhase] == 5 || objc_msgSend(v8, "downloadPhase") == 4)
  {
    [(BLDownloadPipeline *)self dq_notifyServerOfDownloadCancelledWithTaskState:v8];
  }
}

- (void)dq_notifyServerOfDownloadCancelledWithTaskState:(id)a3
{
  v4 = a3;
  v5 = [v4 storeAccountIdentifier];
  v6 = [v4 downloadIdentifier];
  v7 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v4 assetIdentifier]);
  v8 = [v4 transactionIdentifier];
  v9 = [v4 cancelDownloadURL];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100093194;
  v11[3] = &unk_10011E080;
  v12 = v4;
  v10 = v4;
  [(BLDownloadPipeline *)self dq_notifyServerOfDownloadCancelledWithAccountID:v5 downloadID:v6 storeID:v7 transactionID:v8 cancelDownloadURL:v9 completion:v11];
}

- (void)dq_notifyServerOfDownloadCancelledWithAccountID:(id)a3 downloadID:(id)a4 storeID:(id)a5 transactionID:(id)a6 cancelDownloadURL:(id)a7 completion:(id)a8
{
  v14 = a4;
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a3;
  v20 = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(v20);

  v21 = BLServiceDownloadPipelineLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138543362;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download]: Marking download as [cancelled] for server.", &v22, 0xCu);
  }

  [BLServerDownloadDoneRequest notifyDownloadCancelledWithAccountID:v19 downloadID:v14 storeID:v18 transactionID:v17 cancelDownloadURL:v16 completion:v15];
}

- (void)notifyServerForFailedDownloadsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BLDownloadPipeline *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009347C;
  v7[3] = &unk_10011D430;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)dq_scheduleReconnect
{
  v3 = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(BLDownloadPipeline *)self reconnectTimer];

  if (v4)
  {
    source = [(BLDownloadPipeline *)self reconnectTimer];
    v5 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(source, v5, 0, 0);
  }

  else
  {
    v6 = [(BLDownloadPipeline *)self dispatchQueue];
    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v6);
    [(BLDownloadPipeline *)self setReconnectTimer:v7];

    v8 = [(BLDownloadPipeline *)self reconnectTimer];
    v9 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(v8, v9, 0, 0);

    objc_initWeak(&location, self);
    v10 = [(BLDownloadPipeline *)self reconnectTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100093C5C;
    handler[3] = &unk_10011E0F8;
    objc_copyWeak(&v14, &location);
    dispatch_source_set_event_handler(v10, handler);

    v11 = [(BLDownloadPipeline *)self reconnectTimer];
    dispatch_resume(v11);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

- (void)dq_setDownloadState:(int64_t)a3 forDownloadIdentifier:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(v10);

  v11 = BLServiceDownloadPipelineLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = NSStringFromBLDownloadState();
    v13 = 138543618;
    v14 = v8;
    v15 = 2114;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "(dID=%{public}@) [Download]: Setting phase to %{public}@", &v13, 0x16u);
  }

  [(BLDownloadPipeline *)self dq_saveState:a3 forDownloadID:v8 completion:v9];
}

- (BLDatabaseManager)databaseManager
{
  WeakRetained = objc_loadWeakRetained(&self->_databaseManager);

  return WeakRetained;
}

- (BLBookInstallManager)installManager
{
  WeakRetained = objc_loadWeakRetained(&self->_installManager);

  return WeakRetained;
}

- (BLDownloadPolicyManager)downloadPolicyManager
{
  WeakRetained = objc_loadWeakRetained(&self->_downloadPolicyManager);

  return WeakRetained;
}

- (BLOSTransactionCoordinating)transactionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_transactionCoordinator);

  return WeakRetained;
}

@end