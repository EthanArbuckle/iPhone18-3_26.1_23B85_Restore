@interface MADDeferredProcessingBackgroundSystemTask
+ (unint64_t)taskID;
- (void)executeWith:(id)a3 completionHandler:(id)a4;
- (void)registerTask;
@end

@implementation MADDeferredProcessingBackgroundSystemTask

+ (unint64_t)taskID
{
  if (MediaAnalysisLogLevel() >= 4)
  {
    v2 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      v3 = [objc_opt_class() identifier];
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[%@] taskID is not implemented in subclass. Scheduling history will not be recorded", &v5, 0xCu);
    }
  }

  return 0;
}

- (void)executeWith:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() identifier];
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_10014B3C4;
  v44 = sub_10014B3D4;
  v45 = [NSDate date:v8];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_10014B3C4;
  v38 = sub_10014B3D4;
  v39 = objc_alloc_init(VCPTimeMeasurement);
  [v35[5] start];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = sub_10014B3C4;
  v32[4] = sub_10014B3D4;
  v33 = VCPTransactionWithName(v8);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10014B3DC;
  v30[3] = &unk_1002837E8;
  v9 = v8;
  v31 = v9;
  v10 = objc_retainBlock(v30);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10014B4B0;
  v23[3] = &unk_1002873F0;
  v27 = &v34;
  v11 = v9;
  v24 = v11;
  v25 = self;
  v28 = &v40;
  v29 = v32;
  v12 = v7;
  v26 = v12;
  v13 = objc_retainBlock(v23);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10014B7DC;
  v21[3] = &unk_1002842C8;
  v14 = v6;
  v22 = v14;
  v15 = objc_retainBlock(v21);
  v16 = objc_autoreleasePoolPush();
  if ([objc_opt_class() taskID])
  {
    +[PHPhotoLibrary enableMultiLibraryMode];
    if (+[MADManagedBackgroundActivitySchedule isMACDPersistEnabled])
    {
      v17 = [objc_opt_class() taskID];
      [MADManagedBackgroundActivitySchedule updateSessionLogWithTaskID:v17 startTime:v41[5] duration:0 exitStatus:-1.0];
    }

    else
    {
      v18 = +[PHPhotoLibrary vcp_defaultPhotoLibrary];
      v19 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v18];

      if (v19)
      {
        v20 = [objc_opt_class() taskID];
        [v19 storeSchedulingHistoryForActivityID:v20 andStartTime:v41[5]];
        [v19 purgeExcessiveSchedulingRecordsForActivityID:{objc_msgSend(objc_opt_class(), "taskID")}];
        [v19 commit];
      }
    }
  }

  [(MADBackgroundSystemTask *)self executeWithCancelBlock:v15 progressHandler:v10 completionHandler:v13];
  objc_autoreleasePoolPop(v16);

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(&v34, 8);

  _Block_object_dispose(&v40, 8);
}

- (void)registerTask
{
  v3 = [objc_opt_class() identifier];
  [NSString stringWithFormat:@"[%@][%@][Deferred]", objc_opt_class(), v3];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10014BA80;
  v4 = v10[3] = &unk_100287440;
  v11 = v4;
  v12 = self;
  v5 = objc_retainBlock(v10);
  if (v3)
  {
    v6 = +[BGSystemTaskScheduler sharedScheduler];
    v7 = [v6 registerForTaskWithIdentifier:v3 usingQueue:0 launchHandler:v5];

    if (v7)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v8 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v8))
        {
          *buf = 138412290;
          v14 = v4;
          v9 = "%@ Successfully registered";
LABEL_12:
          _os_log_impl(&_mh_execute_header, &_os_log_default, v8, v9, buf, 0xCu);
        }
      }
    }

    else if (MediaAnalysisLogLevel() >= 4)
    {
      v8 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        *buf = 138412290;
        v14 = v4;
        v9 = "%@ Attempt re-registering";
        goto LABEL_12;
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 3)
  {
    v8 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      *buf = 138412290;
      v14 = v4;
      v9 = "%@ Invalid identifier";
      goto LABEL_12;
    }
  }
}

@end