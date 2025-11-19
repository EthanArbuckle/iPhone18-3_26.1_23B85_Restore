@interface MADSpotlightMovieProcessingTask
+ (id)taskWithCancelBlock:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5;
- (BOOL)run:(id *)a3;
- (MADSpotlightMovieProcessingTask)initWithCancelBlock:(id)a3 progressHandler:(id)a4 andCompletionHandler:(id)a5;
- (int)_processAssets;
- (int)_processAssetsInBatch:(id)a3;
@end

@implementation MADSpotlightMovieProcessingTask

- (MADSpotlightMovieProcessingTask)initWithCancelBlock:(id)a3 progressHandler:(id)a4 andCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10018AEE4;
  v25[3] = &unk_100284038;
  v10 = a5;
  v26 = v10;
  v24.receiver = self;
  v24.super_class = MADSpotlightMovieProcessingTask;
  v11 = [(MADSpotlightMovieProcessingTask *)&v24 initWithCompletionHandler:v25];
  if (v11)
  {
    v12 = objc_retainBlock(v9);
    progressHandler = v11->_progressHandler;
    v11->_progressHandler = v12;

    v14 = dispatch_group_create();
    publishGroup = v11->_publishGroup;
    v11->_publishGroup = v14;

    v16 = dispatch_queue_create("MADSpotlightMovieProcessingTask.publish", 0);
    publishQueue = v11->_publishQueue;
    v11->_publishQueue = v16;

    [(MADSpotlightMovieProcessingTask *)v11 setCancelBlock:v8];
    v23 = 0;
    v18 = [MADManagedSpotlightEntry countForMediaType:2 error:&v23];
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

+ (id)taskWithCancelBlock:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[a1 alloc] initWithCancelBlock:v8 progressHandler:v9 andCompletionHandler:v10];

  return v11;
}

- (int)_processAssetsInBatch:(id)a3
{
  v4 = a3;
  v5 = [v4 prepare];
  if (v5)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v6 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v6))
      {
        *buf = 138412290;
        v16 = v4;
        v7 = "Failed to prepare batch: %@";
LABEL_5:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v6, v7, buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = [v4 process];
    v5 = v8;
    if (v8 != -128 && v8)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v6 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v6))
        {
          *buf = 138412290;
          v16 = v4;
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
        v12[2] = sub_10018B208;
        v12[3] = &unk_100282BC8;
        v13 = v4;
        v14 = self;
        dispatch_group_async(publishGroup, publishQueue, v12);
      }
    }
  }

  return v5;
}

- (int)_processAssets
{
  v3 = [(MADSpotlightMovieProcessingTask *)self isCanceled];
  v4 = MediaAnalysisLogLevel();
  if (v3)
  {
    if (v4 >= 3)
    {
      v6 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v6))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[Spotlight|Movie] Analysis canceled", buf, 2u);
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
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[Spotlight|Movie] Analyze all movie assets", buf, 2u);
    }

    *&v5 = 67109120;
    v21 = v5;
    while (1)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = +[VCPWatchdog sharedWatchdog];
      [v9 pet];

      if ([(MADSpotlightMovieProcessingTask *)self isCanceled])
      {
        objc_autoreleasePoolPop(v8);
        return -128;
      }

      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v7))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[Spotlight|Movie] Fetching asset", buf, 2u);
      }

      v26 = 0;
      v10 = [MADManagedSpotlightEntry fetchEntriesWithMediaType:2 fetchLimit:5 error:&v26, v21];
      v11 = v26;
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v7))
      {
        v12 = [v10 count];
        *buf = v21;
        v29 = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[Spotlight|Movie] Fetched %d asset", buf, 8u);
      }

      if (![v10 count])
      {
        break;
      }

      v13 = [(MADSpotlightMovieProcessingTask *)self cancelBlock];
      v14 = [MADSpotlightMovieAssetBatch batchWithCancelBlock:v13];

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

      v19 = [(MADSpotlightMovieProcessingTask *)self _processAssetsInBatch:v14];
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

- (BOOL)run:(id *)a3
{
  (*(self->_progressHandler + 2))(0.0);
  v5 = VCPSignPostLog();
  v6 = os_signpost_id_generate(v5);

  v7 = VCPSignPostLog();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "MADSpotlightMovieProcessingTask", "", buf, 2u);
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v9 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[Spotlight|Movie] Processing movie assets", buf, 2u);
    }
  }

  publishError = [(MADSpotlightMovieProcessingTask *)self _processAssets];
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
      _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[Spotlight|Movie] Error: %d", buf, 8u);
    }
  }

  v12 = VCPSignPostLog();
  v13 = v12;
  if (v6 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v6, "MADSpotlightMovieProcessingTask", "", buf, 2u);
  }

  if (!publishError)
  {
    v15 = [(MADSpotlightMovieProcessingTask *)self completionHandler];
    v15[2](v15, 0, 0);
LABEL_21:

    return publishError == 0;
  }

  if (a3)
  {
    v20 = NSLocalizedDescriptionKey;
    v14 = "failed";
    if (publishError == -128)
    {
      v14 = "canceled";
    }

    v15 = [NSString stringWithFormat:@"[Spotlight|Movie] Processing %s", v14];
    v21 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v17 = [NSError errorWithDomain:NSOSStatusErrorDomain code:publishError userInfo:v16];
    v18 = *a3;
    *a3 = v17;

    goto LABEL_21;
  }

  return publishError == 0;
}

@end