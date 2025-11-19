@interface MFNanoServerFullMessageLoader
- (BOOL)_isProtectedDataAvailable;
- (MFNanoServerFullMessageLoader)initWithCallbackQueue:(id)a3;
- (double)_exponentialBackoff;
- (id)_dequeueMessageIdsFromFirstRequestAvailable:(id *)a3;
- (id)_libraryMessagesKeyedByStore:(id)a3;
- (id)_loadFullMessageForMessageIds:(id)a3 isProtectedMessage:(BOOL *)a4 deletedMessagesIds:(id *)a5;
- (void)_dispatchOperation;
- (void)_enqueueMessageIds:(id)a3 forRequest:(id)a4;
- (void)_handleResultsAdded:(id)a3 deleted:(id)a4 forRequest:(id)a5 isProtectedMessage:(BOOL)a6;
- (void)_libraryAvailabilityChanged;
- (void)_networkStatusChanged;
- (void)_processPendingRequests;
- (void)_registerForLibraryAvailabilityNotifications;
- (void)_scheduleRetryForFailedMessageIds:(id)a3 failedRequest:(id)a4;
- (void)_setupNetworkObserver;
- (void)_suspendOrResumeOperationQueue;
- (void)attemptToCancelFullMessageLoadForMessageIds:(id)a3;
- (void)cancelAllPendingOperations;
- (void)dealloc;
- (void)loadFullMessagesForMessageIds:(id)a3 completion:(id)a4;
- (void)start;
@end

@implementation MFNanoServerFullMessageLoader

- (MFNanoServerFullMessageLoader)initWithCallbackQueue:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = MFNanoServerFullMessageLoader;
  v6 = [(MFNanoServerFullMessageLoader *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callbackQueue, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.MobileMail.NanoServerFullMessageLoader", v8);
    privateQueue = v7->_privateQueue;
    v7->_privateQueue = v9;

    v11 = objc_alloc_init(NSMutableArray);
    requests = v7->_requests;
    v7->_requests = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    failedMessageIdsByRequest = v7->_failedMessageIdsByRequest;
    v7->_failedMessageIdsByRequest = v13;

    v15 = objc_alloc_init(NSOperationQueue);
    operationQueue = v7->_operationQueue;
    v7->_operationQueue = v15;

    [(NSOperationQueue *)v7->_operationQueue setQualityOfService:25];
    [(NSOperationQueue *)v7->_operationQueue setMaxConcurrentOperationCount:1];
    v7->_currentBackoff = -1.0;
    v17 = +[MFMailMessageLibrary defaultInstance];
    v7->_isProtectedDataAvailable = [v17 protectedDataAvailability] == 0;

    [(MFNanoServerFullMessageLoader *)v7 _suspendOrResumeOperationQueue];
    [(MFNanoServerFullMessageLoader *)v7 _setupNetworkObserver];
    [(MFNanoServerFullMessageLoader *)v7 _registerForLibraryAvailabilityNotifications];
  }

  return v7;
}

- (void)_registerForLibraryAvailabilityNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_libraryAvailabilityChanged" name:MailMessageLibraryDidBecomeAvailable object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_libraryAvailabilityChanged" name:MailMessageLibraryWillBecomeUnavailable object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_libraryAvailabilityChanged" name:MailMessageLibraryDidFinishReconciliation object:0];
}

- (void)_setupNetworkObserver
{
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100089FFC;
  v5[3] = &unk_1001567F0;
  objc_copyWeak(&v6, &location);
  v3 = [MFNetworkController addNetworkObserverBlock:v5 queue:self->_privateQueue];
  networkObserverId = self->_networkObserverId;
  self->_networkObserverId = v3;

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  [MFNetworkController removeNetworkObserver:self->_networkObserverId];
  v3.receiver = self;
  v3.super_class = MFNanoServerFullMessageLoader;
  [(MFNanoServerFullMessageLoader *)&v3 dealloc];
}

- (void)loadFullMessagesForMessageIds:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(MFNanoServerFullMessageLoader *)self privateQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10008A258;
    v13[3] = &unk_100158B88;
    v13[4] = self;
    v14 = v6;
    v15 = v7;
    v9 = v7;
    dispatch_async(v8, v13);

    v10 = v14;
  }

  else
  {
    v11 = [(MFNanoServerFullMessageLoader *)self callbackQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008A240;
    block[3] = &unk_1001598D0;
    v17 = v7;
    v12 = v7;
    dispatch_async(v11, block);

    v10 = v17;
  }
}

- (void)attemptToCancelFullMessageLoadForMessageIds:(id)a3
{
  v4 = a3;
  v5 = [(MFNanoServerFullMessageLoader *)self privateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008A450;
  v7[3] = &unk_1001563D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)cancelAllPendingOperations
{
  v3 = [(MFNanoServerFullMessageLoader *)self privateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008A69C;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)start
{
  v3 = +[MFNetworkController sharedInstance];
  self->_isNetworkUp = [v3 isNetworkUp];
}

- (void)_processPendingRequests
{
  v29 = 0;
  v3 = [(MFNanoServerFullMessageLoader *)self _dequeueMessageIdsFromFirstRequestAvailable:&v29];
  v22 = v29;
  if ([v3 count])
  {
    v4 = MFLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 count];
      *buf = 134218242;
      v32 = v5;
      v33 = 2112;
      v34 = v22;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#Nano MFNanoServerFullMessageLoader: Message header request started - message count: %ld - request: %@", buf, 0x16u);
    }

    v28 = 0;
    v27 = 0;
    v6 = [(MFNanoServerFullMessageLoader *)self _loadFullMessageForMessageIds:v3 isProtectedMessage:&v28 deletedMessagesIds:&v27];
    v7 = v27;
    if ([v6 count] || objc_msgSend(v7, "count"))
    {
      v8 = MFLogGeneral();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v3 count];
        v10 = [v7 count];
        *buf = 134218498;
        v32 = v9;
        v33 = 2048;
        v34 = v10;
        v35 = 2112;
        v36 = v22;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#Nano MFNanoServerFullMessageLoader: Message header requests finished successfully - message count: %ld - deleted count: %ld - request: %@", buf, 0x20u);
      }

      v11 = [v6 allValues];
      v12 = [v7 allObjects];
      [(MFNanoServerFullMessageLoader *)self _handleResultsAdded:v11 deleted:v12 forRequest:v22 isProtectedMessage:v28];
    }

    v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count") + objc_msgSend(v7, "count")}];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = v3;
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v30 count:16];
    if (v15)
    {
      v16 = *v24;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          v19 = [v6 objectForKeyedSubscript:v18];
          if (v19)
          {
          }

          else if (([v7 containsObject:v18] & 1) == 0)
          {
            [v13 addObject:v18];
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v23 objects:v30 count:16];
      }

      while (v15);
    }

    if ([v13 count])
    {
      v20 = MFLogGeneral();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = [v14 count];
        *buf = 134218498;
        v32 = v21;
        v33 = 2112;
        v34 = v22;
        v35 = 2114;
        v36 = v13;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "#Nano MFNanoServerFullMessageLoader: Message header requests failed - message count: %ld - request: %@ - messagesIds: %{public}@", buf, 0x20u);
      }

      [(MFNanoServerFullMessageLoader *)self _scheduleRetryForFailedMessageIds:v13 failedRequest:v22];
    }
  }
}

- (id)_loadFullMessageForMessageIds:(id)a3 isProtectedMessage:(BOOL *)a4 deletedMessagesIds:(id *)a5
{
  v37 = a4;
  v39 = a3;
  v56 = [(MFNanoServerFullMessageLoader *)self _isProtectedDataAvailable];
  v7 = +[MFMailMessageLibrary defaultInstance];
  v38 = [v7 libraryMessagesForMessageIds:v39 protectedDataAvailable:&v56];

  v8 = [(MFNanoServerFullMessageLoader *)self _isProtectedDataAvailable];
  v56 &= v8;
  v9 = [v38 count];
  if (v9 != [v39 count])
  {
    v10 = [[NSMutableSet alloc] initWithArray:v39];
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v11 = v38;
    v12 = [v11 countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v12)
    {
      v13 = *v53;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v53 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = [*(*(&v52 + 1) + 8 * i) messageID];
          [v10 removeObject:v15];
        }

        v12 = [v11 countByEnumeratingWithState:&v52 objects:v60 count:16];
      }

      while (v12);
    }

    if (a5)
    {
      v16 = v10;
      *a5 = v10;
    }

    v17 = MFLogGeneral();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000D4E20(v10, buf, [v10 count], v17);
    }
  }

  v41 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v39, "count")}];
  if (v56 == 1)
  {
    v18 = MFLogGeneral();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D4EBC(v18);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v19 = v38;
    v20 = [v19 countByEnumeratingWithState:&v48 objects:v58 count:16];
    if (v20)
    {
      v21 = *v49;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v49 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v48 + 1) + 8 * j);
          v24 = [v23 nanoMessage];
          v25 = [v23 nanoMessageId];
          [v41 setObject:v24 forKeyedSubscript:v25];
        }

        v20 = [v19 countByEnumeratingWithState:&v48 objects:v58 count:16];
      }

      while (v20);
    }

    *v37 = 1;
  }

  else
  {
    v26 = MFLogGeneral();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D4E78(v26);
    }

    v27 = +[MFPowerController sharedInstance];
    [v27 retainAssertionWithIdentifier:@"com.apple.mobileMail.nanoServerFullMessageLoader"];

    v28 = [(MFNanoServerFullMessageLoader *)self _libraryMessagesKeyedByStore:v38];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = [v28 allKeys];
    v29 = [obj countByEnumeratingWithState:&v44 objects:v57 count:16];
    if (v29)
    {
      v30 = *v45;
      do
      {
        for (k = 0; k != v29; k = k + 1)
        {
          if (*v45 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v44 + 1) + 8 * k);
          v33 = [v28 objectForKeyedSubscript:{v32, v37}];
          v34 = [v32 _downloadHeadersForMessages:v33];

          v42[0] = _NSConcreteStackBlock;
          v42[1] = 3221225472;
          v42[2] = sub_10008B214;
          v42[3] = &unk_1001598F8;
          v43 = v41;
          [v34 enumerateKeysAndObjectsUsingBlock:v42];
        }

        v29 = [obj countByEnumeratingWithState:&v44 objects:v57 count:16];
      }

      while (v29);
    }

    *v37 = 0;
    v35 = +[MFPowerController sharedInstance];
    [v35 releaseAssertionWithIdentifier:@"com.apple.mobileMail.nanoServerFullMessageLoader"];
  }

  return v41;
}

- (BOOL)_isProtectedDataAvailable
{
  v2 = self;
  v3 = [(MFNanoServerFullMessageLoader *)self privateQueue];
  dispatch_assert_queue_not_V2(v3);

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = [(MFNanoServerFullMessageLoader *)v2 privateQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008B3CC;
  v6[3] = &unk_1001578D0;
  v6[4] = v2;
  v6[5] = &v7;
  dispatch_sync(v4, v6);

  LOBYTE(v2) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v2;
}

- (id)_dequeueMessageIdsFromFirstRequestAvailable:(id *)a3
{
  v5 = [(MFNanoServerFullMessageLoader *)self privateQueue];
  dispatch_assert_queue_not_V2(v5);

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10008B5A4;
  v20 = sub_10008B5B4;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_10008B5A4;
  v14 = sub_10008B5B4;
  v15 = 0;
  v6 = [(MFNanoServerFullMessageLoader *)self privateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008B5BC;
  block[3] = &unk_100159920;
  block[4] = self;
  block[5] = &v16;
  block[6] = &v10;
  dispatch_sync(v6, block);

  *a3 = v11[5];
  v7 = v17[5];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v7;
}

- (void)_scheduleRetryForFailedMessageIds:(id)a3 failedRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MFNanoServerFullMessageLoader *)self privateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008B810;
  block[3] = &unk_1001573C0;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)_handleResultsAdded:(id)a3 deleted:(id)a4 forRequest:(id)a5 isProtectedMessage:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [(MFNanoServerFullMessageLoader *)self privateQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10008BDC8;
  v14[3] = &unk_100157170;
  v14[4] = self;
  v15 = v9;
  v17 = a6;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  dispatch_async(v11, v14);
}

- (void)_dispatchOperation
{
  v3 = objc_alloc_init(NSBlockOperation);
  objc_initWeak(&location, v3);
  objc_initWeak(&from, self);
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_10008C2FC;
  v7 = &unk_100159948;
  objc_copyWeak(&v8, &from);
  objc_copyWeak(&v9, &location);
  [v3 addExecutionBlock:&v4];
  [(NSOperationQueue *)self->_operationQueue addOperation:v3, v4, v5, v6, v7];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (void)_enqueueMessageIds:(id)a3 forRequest:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([v6 enqueueMessageIds:v7])
  {
    [(MFNanoServerFullMessageLoader *)self _dispatchOperation];
  }
}

- (void)_networkStatusChanged
{
  v3 = +[MFNetworkController sharedInstance];
  self->_isNetworkUp = [v3 isNetworkUp];

  [(MFNanoServerFullMessageLoader *)self _suspendOrResumeOperationQueue];
}

- (void)_suspendOrResumeOperationQueue
{
  if (self->_isNetworkUp || self->_isProtectedDataAvailable)
  {
    p_operationQueue = &self->_operationQueue;
    if (![(NSOperationQueue *)self->_operationQueue isSuspended])
    {
      return;
    }

    if (![(NSMutableArray *)self->_requests count])
    {
      v6 = 0;
      goto LABEL_16;
    }

    v4 = MFLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(NSMutableArray *)self->_requests count];
      v8 = 134217984;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#Nano MFNanoServerFullMessageLoader: OperationQueue resumed - Request count: %ld", &v8, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    p_operationQueue = &self->_operationQueue;
    if ([(NSOperationQueue *)self->_operationQueue isSuspended])
    {
      return;
    }

    if (![(NSMutableArray *)self->_requests count])
    {
      v6 = 1;
      goto LABEL_16;
    }

    v4 = MFLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(NSMutableArray *)self->_requests count];
      v8 = 134217984;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#Nano MFNanoServerFullMessageLoader: OperationQueue suspended - Request count: %ld", &v8, 0xCu);
    }

    v6 = 1;
  }

LABEL_16:
  [(NSOperationQueue *)*p_operationQueue setSuspended:v6];
}

- (double)_exponentialBackoff
{
  result = self->_currentBackoff;
  v3 = 0.0;
  if (result >= 0.0)
  {
    v3 = 10.0;
    if (result != 0.0)
    {
      if (result >= 3600.0)
      {
        return result;
      }

      v3 = fmin(result + result, 3600.0);
    }
  }

  self->_currentBackoff = v3;
  return v3;
}

- (void)_libraryAvailabilityChanged
{
  privateQueue = self->_privateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008C6C4;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_async(privateQueue, block);
}

- (id)_libraryMessagesKeyedByStore:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 mailbox];
        v11 = [v10 store];

        if (v11)
        {
          v12 = [v4 objectForKeyedSubscript:v11];
          if (!v12)
          {
            v12 = objc_alloc_init(NSMutableArray);
            [v4 setObject:v12 forKeyedSubscript:v11];
          }

          [v12 addObject:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v4;
}

@end