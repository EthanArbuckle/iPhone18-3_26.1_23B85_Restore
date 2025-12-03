@interface MCAddressCorrector
- (MCAddressCorrector)init;
- (void)_finishProcessing;
- (void)_sendUpdateRequest:(id)request;
- (void)_startAddressCorrectionWithToken:(id)token personId:(id)id;
- (void)startProcessingWithCompletionQueue:(id)queue completionBlock:(id)block;
@end

@implementation MCAddressCorrector

- (MCAddressCorrector)init
{
  v9.receiver = self;
  v9.super_class = MCAddressCorrector;
  v2 = [(MCAddressCorrector *)&v9 init];
  if (v2)
  {
    GEOConfigGetDouble();
    v2->_lastRunTime = v3;
    v2->_daysToNextRun = GEOConfigGetInteger();
    v4 = objc_alloc_init(NSLock);
    processingLock = v2->_processingLock;
    v2->_processingLock = v4;

    v6 = geo_dispatch_queue_create_with_qos();
    workQueue = v2->_workQueue;
    v2->_workQueue = v6;
  }

  return v2;
}

- (void)startProcessingWithCompletionQueue:(id)queue completionBlock:(id)block
{
  queueCopy = queue;
  processingLock = self->_processingLock;
  blockCopy = block;
  if ([(NSLock *)processingLock tryLock])
  {
    objc_storeStrong(&self->_completionQueue, queue);
    v10 = [blockCopy copy];

    completionBlock = self->_completionBlock;
    self->_completionBlock = v10;

    blockCopy = +[MCPolarisUtils sharedUtils];
    if ([blockCopy hasSufficientLocationAuth])
    {
      if (![blockCopy isMultiUserMode])
      {
        if ([blockCopy isManagedAppleAccount])
        {
          v12 = GEOFindOrCreateLog();
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_13;
          }

          *buf = 0;
          v13 = "startProcessing - failed. Not available for managed Apple Accounts.";
        }

        else if ([blockCopy isUserOptedIn])
        {
          if ([blockCopy isAddressCorrectionAdministrativelyDisabled])
          {
            v12 = GEOFindOrCreateLog();
            if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_13;
            }

            *buf = 0;
            v13 = "startProcessing - failed. Address correction not supported in current country";
          }

          else
          {
            Current = CFAbsoluteTimeGetCurrent();
            lastRunTime = self->_lastRunTime;
            if (lastRunTime > 0.0)
            {
              v19 = lastRunTime + self->_daysToNextRun * 86400.0;
              if (Current < v19)
              {
                v12 = GEOFindOrCreateLog();
                if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_13;
                }

                v20 = self->_lastRunTime;
                *buf = 134218496;
                v29 = v20;
                v30 = 2048;
                v31 = Current;
                v32 = 2048;
                v33 = v19;
                v13 = "startProcessing - failed. Too early. LastRunTime %f CurrentTime %f shouldRunAfter %f";
                v15 = v12;
                v16 = 32;
                goto LABEL_12;
              }
            }

            if ([blockCopy hasPrimaryAppleAccount])
            {
              appleAccountMapsToken = [blockCopy appleAccountMapsToken];

              if (appleAccountMapsToken)
              {
                v22 = objc_alloc_init(MCRoutineHelper);
                routineHelper = self->_routineHelper;
                self->_routineHelper = v22;

                v24 = self->_routineHelper;
                workQueue = self->_workQueue;
                v26[0] = _NSConcreteStackBlock;
                v26[1] = 3221225472;
                v26[2] = sub_10000347C;
                v26[3] = &unk_10001C7A8;
                v26[4] = self;
                blockCopy = blockCopy;
                v27 = blockCopy;
                [(MCRoutineHelper *)v24 findSignificantLocationWithCompletionQueue:workQueue completionHandler:v26];

                goto LABEL_14;
              }

              v12 = GEOFindOrCreateLog();
              if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_13;
              }

              *buf = 0;
              v13 = "startProcessing - failed. Do not have an auth token";
            }

            else
            {
              v12 = GEOFindOrCreateLog();
              if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_13;
              }

              *buf = 0;
              v13 = "startProcessing - failed. There is no primary account on the device";
            }
          }
        }

        else
        {
          v12 = GEOFindOrCreateLog();
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_13;
          }

          *buf = 0;
          v13 = "startProcessing - failed. Not authorized";
        }

LABEL_11:
        v15 = v12;
        v16 = 2;
LABEL_12:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, v13, buf, v16);
        goto LABEL_13;
      }

      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v13 = "startProcessing - failed. Not available in multi-user mode.";
        goto LABEL_11;
      }
    }

    else
    {
      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v13 = "startProcessing - failed. No location auth.";
        goto LABEL_11;
      }
    }

LABEL_13:

    [(MCAddressCorrector *)self _finishProcessing];
    goto LABEL_14;
  }

  v14 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "startProcessing called but already processing", buf, 2u);
  }

  dispatch_async(queueCopy, blockCopy);
LABEL_14:
}

- (void)_finishProcessing
{
  routineHelper = self->_routineHelper;
  self->_routineHelper = 0;

  completionBlock = self->_completionBlock;
  v5 = self->_completionQueue;
  block = objc_retainBlock(completionBlock);
  completionQueue = self->_completionQueue;
  self->_completionQueue = 0;

  v7 = self->_completionBlock;
  self->_completionBlock = 0;

  dispatch_async(v5, block);
  [(NSLock *)self->_processingLock unlock];
}

- (void)_startAddressCorrectionWithToken:(id)token personId:(id)id
{
  idCopy = id;
  tokenCopy = token;
  v8 = objc_alloc_init(GEOAddressCorrectionInitRequest);
  [v8 setPersonID:idCopy];

  [v8 setToken:tokenCopy];
  [v8 setSupportsMultipleAddresses:1];
  [v8 setSupportsCollectionByRegion:1];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100003818;
  v14[3] = &unk_10001C7F8;
  v14[4] = self;
  v9 = objc_retainBlock(v14);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100003E5C;
  v13[3] = &unk_10001C820;
  v13[4] = self;
  v10 = objc_retainBlock(v13);
  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "_startAddressCorrection Request : %{private}@", buf, 0xCu);
  }

  v12 = +[GEOAddressCorrectionRequester sharedRequester];
  [v12 startAddressCorrectionInitRequest:v8 finished:v9 error:v10];
}

- (void)_sendUpdateRequest:(id)request
{
  requestCopy = request;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000040D4;
  v10[3] = &unk_10001C848;
  v10[4] = self;
  v5 = objc_retainBlock(v10);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000427C;
  v9[3] = &unk_10001C820;
  v9[4] = self;
  v6 = objc_retainBlock(v9);
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v12 = requestCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "_sendUpdateResponse updateRequest : %{private}@", buf, 0xCu);
  }

  v8 = +[GEOAddressCorrectionRequester sharedRequester];
  [v8 startAddressCorrectionUpdateRequest:requestCopy finished:v5 error:v6];
}

@end