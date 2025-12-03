@interface BLDownloadPipeline
- (BLBookInstallManager)installManager;
- (BLDatabaseManager)databaseManager;
- (BLDownloadPipeline)initWithDatabaseManager:(id)manager downloadPolicyManager:(id)policyManager transactionCoordinator:(id)coordinator installManager:(id)installManager progressSender:(id)sender;
- (BLDownloadPolicyManager)downloadPolicyManager;
- (BLOSTransactionCoordinating)transactionCoordinator;
- (BOOL)_allowsCellularDownload:(id)download;
- (BOOL)dq_setSessionTaskPriorityToHighForDownloadID:(id)d;
- (id)dq_getTaskStateFromDownloadID:(id)d;
- (void)URLSession:(id)session _willRetryBackgroundDataTask:(id)task withError:(id)error;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task _willSendRequestForEstablishedConnection:(id)connection completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)_addDownloads:(id)downloads completion:(id)completion;
- (void)dealloc;
- (void)doq_performDownloadOperation:(id)operation completion:(id)completion;
- (void)dq_cancelProgressTimer;
- (void)dq_clearIsLocalServerCacheForDownloadID:(id)d completion:(id)completion;
- (void)dq_commitProgress;
- (void)dq_logDownloadEvent:(id)event forTaskWithState:(id)state;
- (void)dq_notifyServerOfDownloadCancelledWithAccountID:(id)d downloadID:(id)iD storeID:(id)storeID transactionID:(id)transactionID cancelDownloadURL:(id)l completion:(id)completion;
- (void)dq_notifyServerOfDownloadCancelledWithTaskState:(id)state;
- (void)dq_prepareDownloadsForDownloads:(id)downloads filtersExistingTasks:(BOOL)tasks completion:(id)completion;
- (void)dq_processCompletedDownloadWithTaskState:(id)state postProgress:(BOOL)progress;
- (void)dq_processDownloadFailureWithTaskState:(id)state task:(id)task cancelReason:(int64_t)reason;
- (void)dq_pumpDownloadsWithCompletion:(id)completion;
- (void)dq_removeDownloadFromPipelineQueue:(id)queue;
- (void)dq_saveState:(int64_t)state forDownloadID:(id)d completion:(id)completion;
- (void)dq_scheduleReconnect;
- (void)dq_setDownloadState:(int64_t)state forDownloadIdentifier:(id)identifier completion:(id)completion;
- (void)dq_startProgressTimer;
- (void)installManager:(id)manager didFinishInstallForOperation:(id)operation;
- (void)installManager:(id)manager didStartInstallWithOperation:(id)operation forDownloadID:(id)d;
- (void)installManager:(id)manager updatedProgress:(id)progress forInstallOperation:(id)operation;
- (void)installManager:(id)manager willRestartInstallForDownload:(id)download;
- (void)notifyServerForFailedDownloadsWithCompletion:(id)completion;
- (void)prioritizeDownloadWithIdentifier:(id)identifier completion:(id)completion;
- (void)pumpDownloadsWithCompletion:(id)completion;
- (void)reconnectWithURLSessionTasks;
- (void)restartDownloadsWithIdentifiers:(id)identifiers completion:(id)completion;
- (void)retryDownloadWithIdentifier:(id)identifier completion:(id)completion;
- (void)startupDownloadsWithCompletion:(id)completion;
- (void)stopDownloadsWithIdentifiers:(id)identifiers reason:(int64_t)reason completion:(id)completion;
@end

@implementation BLDownloadPipeline

- (BLDownloadPipeline)initWithDatabaseManager:(id)manager downloadPolicyManager:(id)policyManager transactionCoordinator:(id)coordinator installManager:(id)installManager progressSender:(id)sender
{
  managerCopy = manager;
  policyManagerCopy = policyManager;
  coordinatorCopy = coordinator;
  installManagerCopy = installManager;
  senderCopy = sender;
  v49.receiver = self;
  v49.super_class = BLDownloadPipeline;
  v17 = [(BLDownloadPipeline *)&v49 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_databaseManager, managerCopy);
    objc_storeWeak(&v18->_installManager, installManagerCopy);
    objc_storeWeak(&v18->_transactionCoordinator, coordinatorCopy);
    objc_storeWeak(&v18->_downloadPolicyManager, policyManagerCopy);
    objc_storeStrong(&v18->_progressSender, sender);
    newOperationQueue = [(BLDownloadPipeline *)v18 newOperationQueue];
    backgroundOperationQueue = v18->_backgroundOperationQueue;
    v18->_backgroundOperationQueue = newOperationQueue;

    [(BLOperationQueueProtocol *)v18->_backgroundOperationQueue setMaxConcurrentOperationCount:1];
    [(BLOperationQueueProtocol *)v18->_backgroundOperationQueue setName:@"com.apple.bookassetd.BLDownloadPipeline.background"];
    newOperationQueue2 = [(BLDownloadPipeline *)v18 newOperationQueue];
    preparationOperationQueue = v18->_preparationOperationQueue;
    v18->_preparationOperationQueue = newOperationQueue2;

    [(BLOperationQueueProtocol *)v18->_preparationOperationQueue setMaxConcurrentOperationCount:1];
    [(BLOperationQueueProtocol *)v18->_preparationOperationQueue setName:@"com.apple.bookassetd.BLDownloadPipeline.prepare"];
    newOperationQueue3 = [(BLDownloadPipeline *)v18 newOperationQueue];
    processingOperationQueue = v18->_processingOperationQueue;
    v18->_processingOperationQueue = newOperationQueue3;

    [(BLOperationQueueProtocol *)v18->_processingOperationQueue setMaxConcurrentOperationCount:3];
    [(BLOperationQueueProtocol *)v18->_processingOperationQueue setName:@"com.apple.bookassetd.BLDownloadPipeline.processing"];
    newOperationQueue4 = [(BLDownloadPipeline *)v18 newOperationQueue];
    sampleDownloadOperationQueue = v18->_sampleDownloadOperationQueue;
    v18->_sampleDownloadOperationQueue = newOperationQueue4;

    [(BLOperationQueueProtocol *)v18->_sampleDownloadOperationQueue setMaxConcurrentOperationCount:1];
    [(BLOperationQueueProtocol *)v18->_sampleDownloadOperationQueue setName:@"com.apple.bookassetd.BLDownloadPipeline.sampleDownloads"];
    newOperationQueue5 = [(BLDownloadPipeline *)v18 newOperationQueue];
    cellularDownloadOperationQueue = v18->_cellularDownloadOperationQueue;
    v18->_cellularDownloadOperationQueue = newOperationQueue5;

    [(BLOperationQueueProtocol *)v18->_cellularDownloadOperationQueue setMaxConcurrentOperationCount:3];
    [(BLOperationQueueProtocol *)v18->_cellularDownloadOperationQueue setName:@"com.apple.bookassetd.BLDownloadPipeline.cellularDownloads"];
    newOperationQueue6 = [(BLDownloadPipeline *)v18 newOperationQueue];
    discretionaryDownloadOperationQueue = v18->_discretionaryDownloadOperationQueue;
    v18->_discretionaryDownloadOperationQueue = newOperationQueue6;

    [(BLOperationQueueProtocol *)v18->_discretionaryDownloadOperationQueue setMaxConcurrentOperationCount:3];
    [(BLOperationQueueProtocol *)v18->_discretionaryDownloadOperationQueue setName:@"com.apple.bookassetd.BLDownloadPipeline.discretionaryDownloads"];
    newOperationQueue7 = [(BLDownloadPipeline *)v18 newOperationQueue];
    nonDiscretionaryDownloadOperationQueue = v18->_nonDiscretionaryDownloadOperationQueue;
    v18->_nonDiscretionaryDownloadOperationQueue = newOperationQueue7;

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

- (void)pumpDownloadsWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008B4B4;
  v7[3] = &unk_10011D430;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)reconnectWithURLSessionTasks
{
  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008B548;
  block[3] = &unk_10011CFE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)prioritizeDownloadWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008B810;
  block[3] = &unk_10011DB00;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)startupDownloadsWithCompletion:(id)completion
{
  completionCopy = completion;
  transactionCoordinator = [(BLDownloadPipeline *)self transactionCoordinator];
  [transactionCoordinator willStartTransactionWithIdentifier:@"com.apple.bookassetd.restart-downloads-at-startup"];

  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008BAE8;
  v8[3] = &unk_10011D430;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(dispatchQueue, v8);
}

- (void)restartDownloadsWithIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008BFD4;
  block[3] = &unk_10011DB00;
  v12 = identifiersCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = identifiersCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)retryDownloadWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  objc_initWeak(&location, self);
  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008C36C;
  block[3] = &unk_10011DE80;
  block[4] = self;
  v12 = identifierCopy;
  v9 = identifierCopy;
  objc_copyWeak(&v14, &location);
  v13 = completionCopy;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)stopDownloadsWithIdentifiers:(id)identifiers reason:(int64_t)reason completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008C62C;
  v13[3] = &unk_10011DED0;
  v13[4] = self;
  v14 = identifiersCopy;
  v15 = completionCopy;
  reasonCopy = reason;
  v11 = completionCopy;
  v12 = identifiersCopy;
  dispatch_async(dispatchQueue, v13);
}

- (id)dq_getTaskStateFromDownloadID:(id)d
{
  dCopy = d;
  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  activeTaskStates = [(BLDownloadPipeline *)self activeTaskStates];
  objectEnumerator = [activeTaskStates objectEnumerator];

  nextObject = 0;
  do
  {
    v9 = nextObject;
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    downloadIdentifier = [nextObject downloadIdentifier];
    v11 = [downloadIdentifier isEqualToString:dCopy];
  }

  while (!v11);

  return nextObject;
}

- (void)installManager:(id)manager willRestartInstallForDownload:(id)download
{
  downloadCopy = download;
  transactionCoordinator = [(BLDownloadPipeline *)self transactionCoordinator];
  downloadID = [downloadCopy downloadID];
  [transactionCoordinator willStartTransactionWithIdentifier:downloadID];

  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008CEE8;
  v10[3] = &unk_10011D1A8;
  v11 = downloadCopy;
  selfCopy = self;
  v9 = downloadCopy;
  dispatch_async(dispatchQueue, v10);
}

- (void)installManager:(id)manager didStartInstallWithOperation:(id)operation forDownloadID:(id)d
{
  operationCopy = operation;
  dCopy = d;
  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008D05C;
  block[3] = &unk_10011D0C8;
  block[4] = self;
  v13 = dCopy;
  v14 = operationCopy;
  v10 = operationCopy;
  v11 = dCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)installManager:(id)manager updatedProgress:(id)progress forInstallOperation:(id)operation
{
  progressCopy = progress;
  operationCopy = operation;
  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008D38C;
  block[3] = &unk_10011D0C8;
  block[4] = self;
  v13 = operationCopy;
  v14 = progressCopy;
  v10 = progressCopy;
  v11 = operationCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)installManager:(id)manager didFinishInstallForOperation:(id)operation
{
  operationCopy = operation;
  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008D4F8;
  v8[3] = &unk_10011D1A8;
  v8[4] = self;
  v9 = operationCopy;
  v7 = operationCopy;
  dispatch_async(dispatchQueue, v8);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  taskCopy = task;
  dataCopy = data;
  bl_dataConsumer = [taskCopy bl_dataConsumer];
  v21 = 0;
  v10 = [bl_dataConsumer consumeData:dataCopy error:&v21];

  v11 = v21;
  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10008D864;
  v16[3] = &unk_10011DEF8;
  v20 = v10;
  v16[4] = self;
  v17 = taskCopy;
  v18 = v11;
  v19 = bl_dataConsumer;
  v13 = bl_dataConsumer;
  v14 = v11;
  v15 = taskCopy;
  dispatch_async(dispatchQueue, v16);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  taskCopy = task;
  responseCopy = response;
  handlerCopy = handler;
  bl_statusCode = [responseCopy bl_statusCode];
  if (bl_statusCode <= 399)
  {
    bl_dataConsumer = [taskCopy bl_dataConsumer];
    resumptionOffset = [bl_dataConsumer resumptionOffset];
    if (bl_statusCode != 206 && resumptionOffset)
    {
      v14 = BLServiceDownloadPipelineLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 134217984;
        taskIdentifier = [taskCopy taskIdentifier];
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[Download]: Did not receive partial content response for task: %lu", &v25, 0xCu);
      }

      [bl_dataConsumer truncate];
    }

    handlerCopy[2](handlerCopy, 1);

    goto LABEL_27;
  }

  v15 = BLServiceDownloadPipelineLog();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (bl_statusCode == 416)
  {
    if (v16)
    {
      v25 = 134217984;
      taskIdentifier = [taskCopy taskIdentifier];
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[Download]: Truncate and restart task: %lu after 416 response", &v25, 0xCu);
    }

    bl_dataConsumer2 = [taskCopy bl_dataConsumer];
    [bl_dataConsumer2 truncate];

    goto LABEL_16;
  }

  if (bl_statusCode == 408)
  {
    if (v16)
    {
      v25 = 134217984;
      taskIdentifier = [taskCopy taskIdentifier];
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[Download]: Restart task: %lu after 408 response", &v25, 0xCu);
    }

LABEL_16:
    [taskCopy bl_cancelWithReason:5 error:0];
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_27;
  }

  if (v16)
  {
    v25 = 134218240;
    taskIdentifier = [taskCopy taskIdentifier];
    v27 = 2048;
    v28 = bl_statusCode;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[Download]: Cancel download task: %lu for invalid HTTP status code: %ld", &v25, 0x16u);
  }

  v18 = objc_alloc_init(NSMutableDictionary);
  v19 = [NSNumber numberWithInteger:bl_statusCode];
  [v18 setObject:v19 forKeyedSubscript:@"BLKeyHTTPResponseCode"];

  bl_allHeaderFields = [responseCopy bl_allHeaderFields];
  v21 = sub_100083F70(bl_allHeaderFields, @"X-Apple-JADownloadQueue-Token");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v18 setObject:v21 forKeyedSubscript:BLDownloadErrorKeyJADownloadQueueToken];
  }

  v22 = sub_100083F70(bl_allHeaderFields, @"Retry-After");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v18 setObject:v22 forKeyedSubscript:BLDownloadErrorKeyRetryInterval];
  }

  v23 = [v18 copy];
  if (bl_statusCode == 403)
  {
    [NSError errorWithDomain:NSURLErrorDomain code:-1102 userInfo:v23];
  }

  else
  {
    sub_1000A905C(3, 0, 0, v23);
  }
  v24 = ;

  [taskCopy bl_cancelWithReason:1 error:v24];
  handlerCopy[2](handlerCopy, 0);

LABEL_27:
}

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  taskCopy = task;
  metricsCopy = metrics;
  v9 = BLServiceDownloadPipelineLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v17 = taskCopy;
    v18 = 2112;
    v19 = metricsCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[Download] URLSession finish collecting metrics. task=%@, metrics=%@", buf, 0x16u);
  }

  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008E058;
  v13[3] = &unk_10011D1A8;
  v14 = taskCopy;
  v15 = metricsCopy;
  v11 = metricsCopy;
  v12 = taskCopy;
  dispatch_async(dispatchQueue, v13);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  v9 = BLServiceDownloadPipelineLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v18 = taskCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[Download] URLSession task complete. task=%@", buf, 0xCu);
  }

  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008E1B8;
  block[3] = &unk_10011D0C8;
  v14 = taskCopy;
  v15 = errorCopy;
  selfCopy = self;
  v11 = errorCopy;
  v12 = taskCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  handlerCopy = handler;
  protectionSpace = [challenge protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  if ([authenticationMethod isEqualToString:NSURLAuthenticationMethodClientCertificate])
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

  if ([authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust])
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

      handlerCopy[2](handlerCopy, 1, 0);
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

    v13 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [protectionSpace serverTrust]);
    (handlerCopy)[2](handlerCopy, 0, v13);
  }

  else
  {
    v14 = [authenticationMethod isEqualToString:NSURLAuthenticationMethodHTTPBasic];
    v15 = BLServiceDownloadPipelineLog();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (v14)
    {
      if (v16)
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Basic authentication is not supported by bookassetd", &v17, 2u);
      }

      handlerCopy[2](handlerCopy, 2, 0);
    }

    else
    {
      if (v16)
      {
        v17 = 138543362;
        *v18 = authenticationMethod;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "This authentication method %{public}@ is not supported by bookassetd ... try the next protection space", &v17, 0xCu);
      }

      handlerCopy[2](handlerCopy, 3, 0);
    }
  }

LABEL_19:
}

- (void)URLSession:(id)session _willRetryBackgroundDataTask:(id)task withError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008ECC8;
  block[3] = &unk_10011D0C8;
  block[4] = self;
  v13 = taskCopy;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = taskCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)URLSession:(id)session task:(id)task _willSendRequestForEstablishedConnection:(id)connection completionHandler:(id)handler
{
  taskCopy = task;
  connectionCopy = connection;
  handlerCopy = handler;
  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10008EF90;
  v16[3] = &unk_10011DAD8;
  v17 = connectionCopy;
  v18 = taskCopy;
  selfCopy = self;
  v20 = handlerCopy;
  v13 = handlerCopy;
  v14 = taskCopy;
  v15 = connectionCopy;
  dispatch_async(dispatchQueue, v16);
}

- (void)_addDownloads:(id)downloads completion:(id)completion
{
  downloadsCopy = downloads;
  completionCopy = completion;
  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008F3CC;
  block[3] = &unk_10011DB00;
  v12 = downloadsCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = downloadsCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)dq_startProgressTimer
{
  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  progressTimer = [(BLDownloadPipeline *)self progressTimer];

  if (!progressTimer)
  {
    objc_initWeak(&location, self);
    dispatchQueue2 = [(BLDownloadPipeline *)self dispatchQueue];
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, dispatchQueue2);
    [(BLDownloadPipeline *)self setProgressTimer:v6];

    progressTimer2 = [(BLDownloadPipeline *)self progressTimer];
    v8 = dispatch_time(0, 500000000);
    dispatch_source_set_timer(progressTimer2, v8, 0xFFFFFFFFFFFFFFFFLL, 0);

    progressTimer3 = [(BLDownloadPipeline *)self progressTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10008F880;
    handler[3] = &unk_10011DF70;
    handler[4] = self;
    objc_copyWeak(&v12, &location);
    dispatch_source_set_event_handler(progressTimer3, handler);

    progressTimer4 = [(BLDownloadPipeline *)self progressTimer];
    dispatch_resume(progressTimer4);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)dq_commitProgress
{
  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  dirtyTaskStates = [(BLDownloadPipeline *)self dirtyTaskStates];
  v5 = [dirtyTaskStates count];

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
          downloadIdentifier = [v8 downloadIdentifier];
          overallProgress = [v8 overallProgress];
          [overallProgress snapshot];
          currentValue = [overallProgress currentValue];
          v13 = currentValue / [overallProgress maxValue];
          v14 = objc_opt_new();
          v15 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v8 transferBytesWritten]);
          [v14 setObject:v15 forKeyedSubscript:v78];

          v16 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v8 transferBytesExpected]);
          [v14 setObject:v16 forKeyedSubscript:v77];

          [overallProgress estimatedTimeRemaining];
          v17 = [NSNumber numberWithDouble:?];
          [v14 setObject:v17 forKeyedSubscript:v76];

          v18 = [NSNumber numberWithDouble:v13];
          [v14 setObject:v18 forKeyedSubscript:v75];

          v19 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v8 assetIdentifier]);
          [v14 setObject:v19 forKeyedSubscript:v74];

          playlistIdentifier = [v8 playlistIdentifier];
          [v14 setObject:playlistIdentifier forKeyedSubscript:v73];

          [v14 setObject:downloadIdentifier forKeyedSubscript:v72];
          artistName = [v8 artistName];
          [v14 setObject:artistName forKeyedSubscript:v71];

          title = [v8 title];
          [v14 setObject:title forKeyedSubscript:v70];

          subtitle = [v8 subtitle];
          [v14 setObject:subtitle forKeyedSubscript:v69];

          collectionArtistName = [v8 collectionArtistName];
          [v14 setObject:collectionArtistName forKeyedSubscript:v68];

          collectionTitle = [v8 collectionTitle];
          [v14 setObject:collectionTitle forKeyedSubscript:v67];

          genre = [v8 genre];
          [v14 setObject:genre forKeyedSubscript:v66];

          kind = [v8 kind];
          [v14 setObject:kind forKeyedSubscript:v65];

          thumbnailImageURL = [v8 thumbnailImageURL];
          [v14 setObject:thumbnailImageURL forKeyedSubscript:v64];

          permLink = [v8 permLink];
          [v14 setObject:permLink forKeyedSubscript:v63];

          v30 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 downloadPhase]);
          [v14 setObject:v30 forKeyedSubscript:v62];

          kind2 = [v8 kind];
          v32 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v61 isEqualToString:kind2]);
          [v14 setObject:v32 forKeyedSubscript:v60];

          v33 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 isRestore]);
          [v14 setObject:v33 forKeyedSubscript:v59];

          v34 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 isSample]);
          [v14 setObject:v34 forKeyedSubscript:v58];

          v35 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 isPurchase]);
          [v14 setObject:v35 forKeyedSubscript:v57];

          purchaseDate = [v8 purchaseDate];
          [v14 setObject:purchaseDate forKeyedSubscript:v56];

          v37 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v8 persistentIdentifier]);
          [v14 setObject:v37 forKeyedSubscript:v55];

          storeAccountIdentifier = [v8 storeAccountIdentifier];
          [v14 setObject:storeAccountIdentifier forKeyedSubscript:v54];

          if (v14)
          {
            if ([v8 downloadPhase] == 5 || objc_msgSend(v8, "downloadPhase") == 4)
            {
              v39 = BLServiceDownloadPipelineLog();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v86 = downloadIdentifier;
                v87 = 2048;
                v88 = *&v8;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download]: Posting the BLDownloadQueueDownloadFailedNotification, taskState: %p", buf, 0x16u);
              }

              progressSender = [(BLDownloadPipeline *)self progressSender];
              [progressSender sendDidFailNotificatonWithUserInfo:v14];
            }

            else
            {
              downloadPhase = [v8 downloadPhase];
              v45 = BLServiceDownloadPipelineLog();
              v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
              if (downloadPhase == 8)
              {
                if (v46)
                {
                  *buf = 138543618;
                  v86 = downloadIdentifier;
                  v87 = 2048;
                  v88 = *&v8;
                  _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download]: Posting the DownloadCompleteNotification, taskState: %p", buf, 0x16u);
                }

                progressSender2 = [(BLDownloadPipeline *)self progressSender];
                [progressSender2 sendDownloadCompleteWithUserInfo:v14];

                progressSender = _os_activity_create(&_mh_execute_header, "Posting PlistChanged to itunesstored", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);
                os_activity_apply(progressSender, &stru_10011DF90);
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
                    transferBytesWritten = [v8 transferBytesWritten];
                    v49 = transferBytesWritten / [v8 transferBytesExpected];
                  }

                  *buf = v52;
                  v86 = downloadIdentifier;
                  v87 = 2048;
                  v88 = v49;
                  v89 = 2048;
                  v90 = v8;
                  _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download]: Posting download/install progress for download [%.2f%% complete], taskState: %p", buf, 0x20u);
                }

                progressSender = [(BLDownloadPipeline *)self progressSender];
                [progressSender sendProgressNotificationWithUserInfo:v14];
              }
            }

            if ([v8 downloadPhase] == 3 || objc_msgSend(v8, "downloadPhase") == 5 || objc_msgSend(v8, "downloadPhase") == 8 || objc_msgSend(v8, "downloadPhase") == 4)
            {
              v41 = BLServiceDownloadPipelineLog();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                v86 = downloadIdentifier;
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "(dID=%{public}@) [Download]: Sending the didFinishTransactionWithIdenfifier", buf, 0xCu);
              }

              [(BLDownloadPipeline *)self dq_removeDownloadFromPipelineQueue:downloadIdentifier];
              v42 = BLServiceDownloadPipelineLog();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v86 = downloadIdentifier;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download]: dq_commitProgress is going to call dq_pumpDownloadsWithCompletion", buf, 0xCu);
              }

              [(BLDownloadPipeline *)self dq_pumpDownloadsWithCompletion:0];
              transactionCoordinator = [(BLDownloadPipeline *)self transactionCoordinator];
              [transactionCoordinator didFinishTransactionWithIdenfifier:downloadIdentifier];
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

    dirtyTaskStates2 = [(BLDownloadPipeline *)self dirtyTaskStates];
    [dirtyTaskStates2 removeAllObjects];
  }

  [(BLDownloadPipeline *)self dq_cancelProgressTimer];
}

- (void)dq_removeDownloadFromPipelineQueue:(id)queue
{
  queueCopy = queue;
  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  downloadPipelineQueue = [(BLDownloadPipeline *)self downloadPipelineQueue];
  [downloadPipelineQueue removeDownloadWithDownloadID:queueCopy];

  v7 = BLServiceDownloadQueueLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    downloadPipelineQueue2 = [(BLDownloadPipeline *)self downloadPipelineQueue];
    inFlightDiscretionaryDownloadIDs = [downloadPipelineQueue2 inFlightDiscretionaryDownloadIDs];
    v10 = [inFlightDiscretionaryDownloadIDs count];
    downloadPipelineQueue3 = [(BLDownloadPipeline *)self downloadPipelineQueue];
    inFlightNondiscretionaryDownloadIDs = [downloadPipelineQueue3 inFlightNondiscretionaryDownloadIDs];
    v18 = 138543874;
    v19 = queueCopy;
    v20 = 2048;
    v21 = v10;
    v22 = 2048;
    v23 = [inFlightNondiscretionaryDownloadIDs count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) Removing from inFlight lists. New discretionary count %lu, New nondiscretionary count %lu", &v18, 0x20u);
  }

  v13 = BLServiceDownloadQueueLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    downloadPipelineQueue4 = [(BLDownloadPipeline *)self downloadPipelineQueue];
    inFlightDiscretionaryDownloadIDs2 = [downloadPipelineQueue4 inFlightDiscretionaryDownloadIDs];
    downloadPipelineQueue5 = [(BLDownloadPipeline *)self downloadPipelineQueue];
    inFlightNondiscretionaryDownloadIDs2 = [downloadPipelineQueue5 inFlightNondiscretionaryDownloadIDs];
    v18 = 138543618;
    v19 = inFlightDiscretionaryDownloadIDs2;
    v20 = 2114;
    v21 = inFlightNondiscretionaryDownloadIDs2;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "In flight discretionary %{public}@\nIn flight nondiscrtionary %{public}@", &v18, 0x16u);
  }
}

- (void)dq_cancelProgressTimer
{
  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  progressTimer = [(BLDownloadPipeline *)self progressTimer];

  if (progressTimer)
  {
    progressTimer2 = [(BLDownloadPipeline *)self progressTimer];
    dispatch_source_cancel(progressTimer2);

    [(BLDownloadPipeline *)self setProgressTimer:0];
  }
}

- (void)dq_saveState:(int64_t)state forDownloadID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  objc_initWeak(&location, self);
  databaseManager = [(BLDownloadPipeline *)self databaseManager];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000907B8;
  v13[3] = &unk_10011D490;
  objc_copyWeak(&v15, &location);
  v12 = completionCopy;
  v14 = v12;
  [databaseManager saveDownloadStateWithId:dCopy state:state completion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)dq_clearIsLocalServerCacheForDownloadID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  objc_initWeak(&location, self);
  databaseManager = [(BLDownloadPipeline *)self databaseManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100090A1C;
  v11[3] = &unk_10011D490;
  objc_copyWeak(&v13, &location);
  v10 = completionCopy;
  v12 = v10;
  [databaseManager saveIsLocalCacheServerWithId:dCopy isLocal:0 completion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (BOOL)dq_setSessionTaskPriorityToHighForDownloadID:(id)d
{
  dCopy = d;
  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  taskStates = [(BLDownloadPipeline *)self taskStates];
  v6 = [taskStates countByEnumeratingWithState:&v24 objects:v32 count:16];
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
          objc_enumerationMutation(taskStates);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          v10 = BUDynamicCast();
          taskStates2 = [(BLDownloadPipeline *)self taskStates];
          v12 = [taskStates2 objectForKey:v10];

          downloadIdentifier = [v12 downloadIdentifier];
          v14 = [dCopy isEqualToString:downloadIdentifier];
          v15 = BLServiceDownloadPipelineLog();
          v16 = v15;
          if (v14)
          {
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              taskIdentifier = [v10 taskIdentifier];
              *buf = 138543618;
              v29 = downloadIdentifier;
              v30 = 2048;
              v31 = taskIdentifier;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download]: Reprioritizing to high task: %lu", buf, 0x16u);
            }

            v22 = 1;
            v18 = NSURLSessionTaskPriorityHigh;
          }

          else
          {
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              taskIdentifier2 = [v10 taskIdentifier];
              *buf = 138543618;
              v29 = downloadIdentifier;
              v30 = 2048;
              v31 = taskIdentifier2;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "(dID=%{public}@) [Download]: Reprioritizing to default task: %lu to restart download", buf, 0x16u);
            }

            v18 = NSURLSessionTaskPriorityDefault;
          }

          *&v20 = v18;
          [v10 setPriority:v20];
        }
      }

      v7 = [taskStates countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v7);
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

- (void)dq_pumpDownloadsWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v6 = BLServiceDownloadQueueLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Pumping Downloads", buf, 2u);
  }

  downloadPipelineQueue = [(BLDownloadPipeline *)self downloadPipelineQueue];
  availableSampleDownloads = [downloadPipelineQueue availableSampleDownloads];

  downloadPipelineQueue2 = [(BLDownloadPipeline *)self downloadPipelineQueue];
  availableCellularDownloads = [downloadPipelineQueue2 availableCellularDownloads];

  downloadPipelineQueue3 = [(BLDownloadPipeline *)self downloadPipelineQueue];
  availableDiscretionaryDownloads = [downloadPipelineQueue3 availableDiscretionaryDownloads];

  downloadPipelineQueue4 = [(BLDownloadPipeline *)self downloadPipelineQueue];
  availableNondiscretionaryDownloads = [downloadPipelineQueue4 availableNondiscretionaryDownloads];

  v15 = BLServiceDownloadQueueLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    v35 = availableDiscretionaryDownloads;
    v36 = 2048;
    v37 = availableNondiscretionaryDownloads;
    v38 = 2048;
    v39 = availableSampleDownloads;
    v40 = 2048;
    v41 = availableCellularDownloads;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Available discretionary %lu, nondiscretionary %lu, sample %lu, cellular %lu", buf, 0x2Au);
  }

  v16 = BLServiceDownloadQueueLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    downloadPipelineQueue5 = [(BLDownloadPipeline *)self downloadPipelineQueue];
    inFlightDiscretionaryDownloadIDs = [downloadPipelineQueue5 inFlightDiscretionaryDownloadIDs];
    downloadPipelineQueue6 = [(BLDownloadPipeline *)self downloadPipelineQueue];
    inFlightNondiscretionaryDownloadIDs = [downloadPipelineQueue6 inFlightNondiscretionaryDownloadIDs];
    [(BLDownloadPipeline *)self downloadPipelineQueue];
    v19 = v31 = availableSampleDownloads;
    [v19 inFlightSampleDownloadIDs];
    v20 = v30 = completionCopy;
    [(BLDownloadPipeline *)self downloadPipelineQueue];
    v28 = availableNondiscretionaryDownloads;
    v22 = v21 = availableCellularDownloads;
    inFlightCellularDownloadIDs = [v22 inFlightCellularDownloadIDs];
    *buf = 138544130;
    v35 = inFlightDiscretionaryDownloadIDs;
    v36 = 2114;
    v37 = inFlightNondiscretionaryDownloadIDs;
    v38 = 2114;
    v39 = v20;
    v40 = 2114;
    v41 = inFlightCellularDownloadIDs;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "In flight discretionary %{public}@\nIn flight nondiscretionary %{public}@\nIn flight sample %{public}@\nIn flight cellular %{public}@", buf, 0x2Au);

    availableCellularDownloads = v21;
    availableNondiscretionaryDownloads = v28;

    completionCopy = v30;
    availableSampleDownloads = v31;
  }

  if (availableDiscretionaryDownloads || availableNondiscretionaryDownloads || availableSampleDownloads || availableCellularDownloads)
  {
    databaseManager = [(BLDownloadPipeline *)self databaseManager];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000911DC;
    v32[3] = &unk_10011D9C0;
    v32[4] = self;
    v33 = completionCopy;
    [databaseManager fetchListOfPendingDownloadsSortedByStartTime:v32];
  }

  else
  {
    v24 = objc_retainBlock(completionCopy);
    v25 = v24;
    if (v24)
    {
      (*(v24 + 2))(v24, 0, 0);
    }
  }
}

- (void)doq_performDownloadOperation:(id)operation completion:(id)completion
{
  operationCopy = operation;
  completionCopy = completion;
  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100091E8C;
  block[3] = &unk_10011DB00;
  v12 = operationCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = operationCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)dq_logDownloadEvent:(id)event forTaskWithState:(id)state
{
  eventCopy = event;
  stateCopy = state;
  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v9 = BLServiceDownloadPipelineLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    downloadIdentifier = [stateCopy downloadIdentifier];
    v11 = 138543618;
    v12 = downloadIdentifier;
    v13 = 2114;
    v14 = eventCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download]: logged event: %{public}@ for task", &v11, 0x16u);
  }
}

- (void)dq_prepareDownloadsForDownloads:(id)downloads filtersExistingTasks:(BOOL)tasks completion:(id)completion
{
  tasksCopy = tasks;
  downloadsCopy = downloads;
  completionCopy = completion;
  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if (tasksCopy)
  {
    v11 = objc_alloc_init(NSMutableSet);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    taskStates = [(BLDownloadPipeline *)self taskStates];
    v13 = [taskStates countByEnumeratingWithState:&v29 objects:v33 count:16];
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
            objc_enumerationMutation(taskStates);
          }

          v17 = *(*(&v29 + 1) + 8 * v16);
          taskStates2 = [(BLDownloadPipeline *)self taskStates];
          v19 = [taskStates2 objectForKey:v17];

          downloadIdentifier = [v19 downloadIdentifier];
          [v11 addObject:downloadIdentifier];

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [taskStates countByEnumeratingWithState:&v29 objects:v33 count:16];
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
  selfCopy = self;
  v28 = completionCopy;
  v21 = completionCopy;
  v22 = v11;
  v23 = objc_retainBlock(v25);
  downloadPolicyManager = [(BLDownloadPipeline *)self downloadPolicyManager];
  [BLPrepareDownloadOperation enumerateOperationsWithDownloads:downloadsCopy downloadPolicyManager:downloadPolicyManager usingBlock:v23];
}

- (BOOL)_allowsCellularDownload:(id)download
{
  downloadCopy = download;
  isRestore = [downloadCopy isRestore];
  bOOLValue = [isRestore BOOLValue];

  if (bOOLValue)
  {
    v7 = +[BLRestoreManager sharedInstance];
    isCellularAllowed = [v7 isCellularAllowed];
  }

  else
  {
    isCellularAllowed = 0;
  }

  downloadPolicyManager = [(BLDownloadPipeline *)self downloadPolicyManager];
  downloadID = [downloadCopy downloadID];
  v11 = [downloadPolicyManager downloadPolicyForID:downloadID];

  LOBYTE(downloadPolicyManager) = [BLPrepareDownloadOperation allowsCellularAccessForAsset:downloadCopy policy:v11 isCellularAllowedForRestores:isCellularAllowed];
  return downloadPolicyManager;
}

- (void)dq_processCompletedDownloadWithTaskState:(id)state postProgress:(BOOL)progress
{
  progressCopy = progress;
  stateCopy = state;
  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if (progressCopy)
  {
    [stateCopy setTransferProgress:1.0];
    dirtyTaskStates = [(BLDownloadPipeline *)self dirtyTaskStates];
    [dirtyTaskStates addObject:stateCopy];

    [(BLDownloadPipeline *)self dq_startProgressTimer];
  }

  downloadIdentifier = [stateCopy downloadIdentifier];
  [(BLDownloadPipeline *)self dq_setDownloadState:7 forDownloadIdentifier:downloadIdentifier completion:0];
}

- (void)dq_processDownloadFailureWithTaskState:(id)state task:(id)task cancelReason:(int64_t)reason
{
  stateCopy = state;
  taskCopy = task;
  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v11 = reason - 1;
  if ((reason - 1) > 3)
  {
    v13 = @"Download Error";
    v12 = 5;
  }

  else
  {
    v12 = qword_1000DF690[v11];
    v13 = *(&off_10011E118 + v11);
  }

  [stateCopy setDownloadPhase:v12];
  v14 = BLServiceDownloadPipelineLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    downloadIdentifier = [stateCopy downloadIdentifier];
    v19 = 138543618;
    v20 = downloadIdentifier;
    v21 = 2114;
    v22 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Download]: Download Failed reason: %{public}@", &v19, 0x16u);
  }

  if ((reason - 5) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    [stateCopy setTransferProgress:1.0];
  }

  dirtyTaskStates = [(BLDownloadPipeline *)self dirtyTaskStates];
  [dirtyTaskStates addObject:stateCopy];

  activeTaskStates = [(BLDownloadPipeline *)self activeTaskStates];
  [activeTaskStates removeObject:stateCopy];

  if (taskCopy)
  {
    taskStates = [(BLDownloadPipeline *)self taskStates];
    [taskStates removeObjectForKey:taskCopy];
  }

  [(BLDownloadPipeline *)self dq_startProgressTimer];
  if ([stateCopy downloadPhase] == 5 || objc_msgSend(stateCopy, "downloadPhase") == 4)
  {
    [(BLDownloadPipeline *)self dq_notifyServerOfDownloadCancelledWithTaskState:stateCopy];
  }
}

- (void)dq_notifyServerOfDownloadCancelledWithTaskState:(id)state
{
  stateCopy = state;
  storeAccountIdentifier = [stateCopy storeAccountIdentifier];
  downloadIdentifier = [stateCopy downloadIdentifier];
  v7 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [stateCopy assetIdentifier]);
  transactionIdentifier = [stateCopy transactionIdentifier];
  cancelDownloadURL = [stateCopy cancelDownloadURL];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100093194;
  v11[3] = &unk_10011E080;
  v12 = stateCopy;
  v10 = stateCopy;
  [(BLDownloadPipeline *)self dq_notifyServerOfDownloadCancelledWithAccountID:storeAccountIdentifier downloadID:downloadIdentifier storeID:v7 transactionID:transactionIdentifier cancelDownloadURL:cancelDownloadURL completion:v11];
}

- (void)dq_notifyServerOfDownloadCancelledWithAccountID:(id)d downloadID:(id)iD storeID:(id)storeID transactionID:(id)transactionID cancelDownloadURL:(id)l completion:(id)completion
{
  iDCopy = iD;
  completionCopy = completion;
  lCopy = l;
  transactionIDCopy = transactionID;
  storeIDCopy = storeID;
  dCopy = d;
  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v21 = BLServiceDownloadPipelineLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138543362;
    v23 = iDCopy;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download]: Marking download as [cancelled] for server.", &v22, 0xCu);
  }

  [BLServerDownloadDoneRequest notifyDownloadCancelledWithAccountID:dCopy downloadID:iDCopy storeID:storeIDCopy transactionID:transactionIDCopy cancelDownloadURL:lCopy completion:completionCopy];
}

- (void)notifyServerForFailedDownloadsWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009347C;
  v7[3] = &unk_10011D430;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)dq_scheduleReconnect
{
  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  reconnectTimer = [(BLDownloadPipeline *)self reconnectTimer];

  if (reconnectTimer)
  {
    source = [(BLDownloadPipeline *)self reconnectTimer];
    v5 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(source, v5, 0, 0);
  }

  else
  {
    dispatchQueue2 = [(BLDownloadPipeline *)self dispatchQueue];
    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, dispatchQueue2);
    [(BLDownloadPipeline *)self setReconnectTimer:v7];

    reconnectTimer2 = [(BLDownloadPipeline *)self reconnectTimer];
    v9 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(reconnectTimer2, v9, 0, 0);

    objc_initWeak(&location, self);
    reconnectTimer3 = [(BLDownloadPipeline *)self reconnectTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100093C5C;
    handler[3] = &unk_10011E0F8;
    objc_copyWeak(&v14, &location);
    dispatch_source_set_event_handler(reconnectTimer3, handler);

    reconnectTimer4 = [(BLDownloadPipeline *)self reconnectTimer];
    dispatch_resume(reconnectTimer4);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

- (void)dq_setDownloadState:(int64_t)state forDownloadIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  dispatchQueue = [(BLDownloadPipeline *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v11 = BLServiceDownloadPipelineLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = NSStringFromBLDownloadState();
    v13 = 138543618;
    v14 = identifierCopy;
    v15 = 2114;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "(dID=%{public}@) [Download]: Setting phase to %{public}@", &v13, 0x16u);
  }

  [(BLDownloadPipeline *)self dq_saveState:state forDownloadID:identifierCopy completion:completionCopy];
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