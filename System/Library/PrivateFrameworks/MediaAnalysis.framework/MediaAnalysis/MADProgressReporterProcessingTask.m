@interface MADProgressReporterProcessingTask
+ (id)taskWithCancelBlock:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5;
- (BOOL)run:(id *)a3;
- (MADProgressReporterProcessingTask)initWithCancelBlock:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5;
@end

@implementation MADProgressReporterProcessingTask

- (MADProgressReporterProcessingTask)initWithCancelBlock:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = MADProgressReporterProcessingTask;
  v11 = [(MADProgressReporterProcessingTask *)&v18 initWithCompletionHandler:v10];
  v12 = v11;
  if (v11)
  {
    reportingTaskIDs = v11->_reportingTaskIDs;
    v11->_reportingTaskIDs = &off_1002961A0;

    if (v9)
    {
      v14 = v9;
    }

    else
    {
      v14 = &stru_100285D90;
    }

    v15 = objc_retainBlock(v14);
    progressHandler = v12->_progressHandler;
    v12->_progressHandler = v15;

    [(MADProgressReporterProcessingTask *)v12 setCancelBlock:v8];
  }

  return v12;
}

+ (id)taskWithCancelBlock:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[a1 alloc] initWithCancelBlock:v8 progressHandler:v9 completionHandler:v10];

  return v11;
}

- (BOOL)run:(id *)a3
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v6 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      *buf = 138412290;
      v50 = @"[ProgressReport]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "%@ Running MADProgressReporterProcessingTask ... ", buf, 0xCu);
    }
  }

  v7 = +[VCPPhotoLibraryManager sharedManager];
  v8 = [v7 allPhotoLibraries];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v9 = v8;
  v29 = v9;
  v31 = [v9 countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v31)
  {
    v30 = *v42;
    while (2)
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v42 != v30)
        {
          objc_enumerationMutation(v9);
        }

        v10 = *(*(&v41 + 1) + 8 * i);
        if ([v10 isSystemPhotoLibrary])
        {
          if ([(MADProgressReporterProcessingTask *)self isCanceled])
          {
            v21 = [NSString stringWithFormat:@"%@ Processed canceled", @"[ProgressReport]"];
            if (MediaAnalysisLogLevel() >= 5)
            {
              v22 = VCPLogToOSLogType[5];
              if (os_log_type_enabled(&_os_log_default, v22))
              {
                *buf = 138412290;
                v50 = v21;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "%@", buf, 0xCu);
              }
            }

            if (a3)
            {
              v46 = NSLocalizedDescriptionKey;
              v23 = [NSString stringWithFormat:@"%@", v21];
              v47 = v23;
              v24 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
              v25 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v24];
              v26 = *a3;
              *a3 = v25;
            }

            v20 = 0;
            v19 = v29;
            goto LABEL_37;
          }

          v11 = +[VCPWatchdog sharedWatchdog];
          [v11 pet];

          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_1000D45B8;
          v40[3] = &unk_100283000;
          v40[4] = self;
          v32 = objc_retainBlock(v40);
          [MADProgressManager updateProgressIfRequestedForTasks:self->_reportingTaskIDs photoLibrary:v10 reuseCachedValue:0 cancelOrExtendTimeoutBlock:v32];
          if (([(MADProgressReporterProcessingTask *)self isCanceled]& 1) == 0)
          {
            v35 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v10];
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v12 = [&off_1002961B8 countByEnumeratingWithState:&v36 objects:v45 count:16];
            if (v12)
            {
              v13 = *v37;
              do
              {
                for (j = 0; j != v12; j = j + 1)
                {
                  if (*v37 != v13)
                  {
                    objc_enumerationMutation(&off_1002961B8);
                  }

                  [*(*(&v36 + 1) + 8 * j) unsignedIntegerValue];
                  v15 = VCPRequestBGSTProgressReportKeyForTask();
                  if (v15)
                  {
                    v16 = +[MADManagedKeyValueStore isMACDReadEnabled];
                    if (v16)
                    {
                      v4 = [v10 mad_fetchRequest];
                      v17 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v4 dataStoreValueForKey:v15]);
                      v3 = v17;
                    }

                    else
                    {
                      v17 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v35 valueForKey:v15]);
                      v5 = v17;
                    }

                    [0 setObject:v17 forKeyedSubscript:v15];
                    v18 = v5;
                    if (v16)
                    {

                      v18 = v4;
                    }
                  }
                }

                v12 = [&off_1002961B8 countByEnumeratingWithState:&v36 objects:v45 count:16];
              }

              while (v12);
            }

            [0 count];
          }

          MediaAnalysisDaemonReleaseSharedDataStores(v10);

          v9 = v29;
        }
      }

      v31 = [v9 countByEnumeratingWithState:&v41 objects:v48 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

  v19 = [(MADProgressReporterProcessingTask *)self completionHandler];
  v19[2](v19, 0, 0);
  v20 = 1;
LABEL_37:

  return v20;
}

@end