@interface MADSpotlightImageProcessingTask
+ (id)taskWithCancelBlock:(id)block progressHandler:(id)handler completionHandler:(id)completionHandler;
- (BOOL)run:(id *)run;
- (MADSpotlightImageProcessingTask)initWithCancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (int)_processAssets;
- (int)_processAssetsInBatch:(id)batch;
@end

@implementation MADSpotlightImageProcessingTask

- (MADSpotlightImageProcessingTask)initWithCancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  blockCopy = block;
  handlerCopy = handler;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10009B51C;
  v25[3] = &unk_100284038;
  completionHandlerCopy = completionHandler;
  v26 = completionHandlerCopy;
  v24.receiver = self;
  v24.super_class = MADSpotlightImageProcessingTask;
  v11 = [(MADSpotlightImageProcessingTask *)&v24 initWithCompletionHandler:v25];
  if (v11)
  {
    v12 = objc_retainBlock(handlerCopy);
    progressHandler = v11->_progressHandler;
    v11->_progressHandler = v12;

    v14 = dispatch_group_create();
    publishGroup = v11->_publishGroup;
    v11->_publishGroup = v14;

    v16 = dispatch_queue_create("MADSpotlightImageProcessingTask.publish", 0);
    publishQueue = v11->_publishQueue;
    v11->_publishQueue = v16;

    [(MADSpotlightImageProcessingTask *)v11 setCancelBlock:blockCopy];
    v23 = 0;
    v18 = [MADManagedSpotlightEntry countForMediaType:1 error:&v23];
    v19 = v23;
    v11->_totalCount = v18;
    if (v19)
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v20 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v20))
        {
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "[Spotlight|Image] Failed to query count; progress will not be accurate", v22, 2u);
        }
      }
    }
  }

  return v11;
}

+ (id)taskWithCancelBlock:(id)block progressHandler:(id)handler completionHandler:(id)completionHandler
{
  blockCopy = block;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v11 = [[self alloc] initWithCancelBlock:blockCopy progressHandler:handlerCopy andCompletionHandler:completionHandlerCopy];

  return v11;
}

- (int)_processAssetsInBatch:(id)batch
{
  batchCopy = batch;
  prepare = [batchCopy prepare];
  if (prepare)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v6 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v6))
      {
        *buf = 138412290;
        v16 = batchCopy;
        v7 = "Failed to prepare batch: %@";
LABEL_5:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v6, v7, buf, 0xCu);
      }
    }
  }

  else
  {
    process = [batchCopy process];
    prepare = process;
    if (process != -128 && process)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v6 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v6))
        {
          *buf = 138412290;
          v16 = batchCopy;
          v7 = "Failed to process batch: %@";
          goto LABEL_5;
        }
      }
    }

    else
    {
      dispatch_group_wait(self->_publishGroup, 0xFFFFFFFFFFFFFFFFLL);
      if (!self->_publishError)
      {
        publishGroup = self->_publishGroup;
        publishQueue = self->_publishQueue;
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_10009B840;
        v12[3] = &unk_100282BC8;
        v13 = batchCopy;
        selfCopy = self;
        dispatch_group_async(publishGroup, publishQueue, v12);
      }
    }
  }

  return prepare;
}

- (int)_processAssets
{
  isCanceled = [(MADSpotlightImageProcessingTask *)self isCanceled];
  v4 = MediaAnalysisLogLevel();
  if (isCanceled)
  {
    if (v4 >= 3)
    {
      v6 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v6))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[Spotlight|Image] Analysis canceled", buf, 2u);
      }
    }

    return -128;
  }

  else
  {
    v7 = VCPLogToOSLogType[5];
    if (v4 >= 5 && os_log_type_enabled(&_os_log_default, VCPLogToOSLogType[5]))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[Spotlight|Image] Analyze all image/keyframe assets", buf, 2u);
    }

    *&v5 = 67109120;
    v21 = v5;
    while (1)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = +[VCPWatchdog sharedWatchdog];
      [v9 pet];

      if ([(MADSpotlightImageProcessingTask *)self isCanceled])
      {
        objc_autoreleasePoolPop(v8);
        return -128;
      }

      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v7))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[Spotlight|Image] Fetching asset", buf, 2u);
      }

      v26 = 0;
      v10 = [MADManagedSpotlightEntry fetchEntriesWithMediaType:1 fetchLimit:100 error:&v26, v21];
      v11 = v26;
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v7))
      {
        v12 = [v10 count];
        *buf = v21;
        v29 = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[Spotlight|Image] Fetched %d asset", buf, 8u);
      }

      if (![v10 count])
      {
        break;
      }

      cancelBlock = [(MADSpotlightImageProcessingTask *)self cancelBlock];
      v14 = [MADSpotlightImageAssetBatch batchWithCancelBlock:cancelBlock];

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v15 = v10;
      v16 = [v15 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v16)
      {
        v17 = *v23;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v23 != v17)
            {
              objc_enumerationMutation(v15);
            }

            [v14 addAsset:*(*(&v22 + 1) + 8 * i)];
          }

          v16 = [v15 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v16);
      }

      v19 = [(MADSpotlightImageProcessingTask *)self _processAssetsInBatch:v14];
      objc_autoreleasePoolPop(v8);
      if (v19)
      {
        return v19;
      }
    }

    objc_autoreleasePoolPop(v8);
    return 0;
  }
}

- (BOOL)run:(id *)run
{
  (*(self->_progressHandler + 2))(0.0);
  v5 = VCPSignPostLog();
  v6 = os_signpost_id_generate(v5);

  v7 = VCPSignPostLog();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "MADSpotlightImageProcessingTask", "", buf, 2u);
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v9 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[Spotlight|Image] Processing image/keyframe assets", buf, 2u);
    }
  }

  publishError = [(MADSpotlightImageProcessingTask *)self _processAssets];
  dispatch_group_wait(self->_publishGroup, 0xFFFFFFFFFFFFFFFFLL);
  if (!publishError)
  {
    publishError = self->_publishError;
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v11 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v11))
    {
      *buf = 67109120;
      v23 = publishError;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[Spotlight|Image] Error: %d", buf, 8u);
    }
  }

  v12 = VCPSignPostLog();
  v13 = v12;
  if (v6 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v6, "MADSpotlightImageProcessingTask", "", buf, 2u);
  }

  if (!publishError)
  {
    completionHandler = [(MADSpotlightImageProcessingTask *)self completionHandler];
    completionHandler[2](completionHandler, 0, 0);
LABEL_21:

    return publishError == 0;
  }

  if (run)
  {
    v20 = NSLocalizedDescriptionKey;
    v14 = "failed";
    if (publishError == -128)
    {
      v14 = "canceled";
    }

    completionHandler = [NSString stringWithFormat:@"[Spotlight|Image] Processing %s", v14];
    v21 = completionHandler;
    v16 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v17 = [NSError errorWithDomain:NSOSStatusErrorDomain code:publishError userInfo:v16];
    v18 = *run;
    *run = v17;

    goto LABEL_21;
  }

  return publishError == 0;
}

@end