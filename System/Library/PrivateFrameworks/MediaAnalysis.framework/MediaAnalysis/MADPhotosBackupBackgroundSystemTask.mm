@interface MADPhotosBackupBackgroundSystemTask
+ (id)sharedTask;
- (void)executeWithSystemTask:(id)task cancelBlock:(id)block completionHandler:(id)handler;
- (void)submitTask:(id *)task;
@end

@implementation MADPhotosBackupBackgroundSystemTask

+ (id)sharedTask
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010375C;
  block[3] = &unk_100282998;
  block[4] = self;
  if (qword_1002B83E0 != -1)
  {
    dispatch_once(&qword_1002B83E0, block);
  }

  v2 = qword_1002B83D8;

  return v2;
}

- (void)executeWithSystemTask:(id)task cancelBlock:(id)block completionHandler:(id)handler
{
  taskCopy = task;
  blockCopy = block;
  handlerCopy = handler;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  identifier = [objc_opt_class() identifier];
  v35 = [NSString stringWithFormat:@"[%@][%@]", v10, identifier];

  v12 = +[VCPPhotoLibraryManager sharedManager];
  allPhotoLibraries = [v12 allPhotoLibraries];

  if ([allPhotoLibraries count])
  {
    +[NSDate now];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100103E44;
    v49[3] = &unk_100282F50;
    v14 = v49[4] = self;
    v50 = v14;
    v31 = [VCPTimer timerWithIntervalSeconds:60 isOneShot:0 andBlock:v49];
    v15 = +[MADThroughputManager throughputManagerForTask:BGSystemTask:](MADThroughputManager, "throughputManagerForTask:BGSystemTask:", [objc_opt_class() taskID], taskCopy);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v54 = 0x3032000000;
    v55 = sub_100103EE0;
    v56 = sub_100103EF0;
    identifier2 = [objc_opt_class() identifier];
    v57 = VCPTransactionWithName(identifier2);

    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_100103EF8;
    v47[3] = &unk_1002828A8;
    v17 = v35;
    v48 = v17;
    v32 = objc_retainBlock(v47);
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100103FCC;
    v40[3] = &unk_100285840;
    v30 = v14;
    v41 = v30;
    v18 = v17;
    v42 = v18;
    selfCopy = self;
    v19 = v15;
    v44 = v19;
    p_buf = &buf;
    v45 = handlerCopy;
    v20 = objc_retainBlock(v40);
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100104178;
    v38[3] = &unk_100282A08;
    v39 = blockCopy;
    v21 = objc_retainBlock(v38);
    v22 = objc_autoreleasePoolPush();
    if (VCPIsRemoteIOSTask())
    {
      taskID = [objc_opt_class() taskID];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100104188;
      v36[3] = &unk_100282858;
      v37 = v20;
      v24 = [VCPMADRemoteActivityTask taskWithActivityType:taskID andCompletionHandler:v36];
      [v24 setCancelBlock:v21];
    }

    else
    {
      v24 = [MADPhotosBackupProcessingTask taskWithPhotoLibraries:allPhotoLibraries andProgressHandler:v32 andCompletionHandler:v20 andCancelBlock:v21];
    }

    v26 = +[VCPMADTaskScheduler sharedInstance];
    v27 = [v26 addBackgroundTask:v24 withQoS:17] == 0;

    if (v27)
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v29 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v29))
        {
          *v51 = 138412290;
          v52 = v18;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v29, "%@ Failed to submit background task to task scheduler; prepare to reschedule", v51, 0xCu);
        }
      }

      (v20[2])(v20, 4294967168);
    }

    else if (MediaAnalysisLogLevel() >= 7)
    {
      v28 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v28))
      {
        *v51 = 138412290;
        v52 = v18;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "%@ Successfully submitted background task to task scheduler.", v51, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v22);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v25 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v25))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v35;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "%@ No PhotoLibrary present; quitting background processing", &buf, 0xCu);
      }
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)submitTask:(id *)task
{
  v4 = objc_autoreleasePoolPush();
  identifier = [objc_opt_class() identifier];
  if (MediaAnalysisLogLevel() >= 7)
  {
    v6 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      *buf = 138412290;
      v23 = identifier;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[%@] Try submit the repeating BGST task", buf, 0xCu);
    }
  }

  v7 = +[BGSystemTaskScheduler sharedScheduler];
  v8 = [v7 taskRequestForIdentifier:identifier];

  if (v8)
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v9 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v9))
      {
        *buf = 138412290;
        v23 = identifier;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[%@] the repeating BGST task already existed, bailing out.", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v4);
    v10 = 0;
    goto LABEL_24;
  }

  v11 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:identifier];
  [v11 setGroupName:MediaAnalysisDaemonDomain];
  [v11 setRequiresBuddyComplete:{objc_msgSend(objc_opt_class(), "buddyCheckRequired")}];
  [v11 setGroupConcurrencyLimit:1];
  [v11 setResourceIntensive:{objc_msgSend(objc_opt_class(), "resourceIntensive")}];
  [v11 setRequiresUserInactivity:1];
  [v11 setPriority:1];
  [v11 setInterval:86400.0];
  if ([v11 resourceIntensive])
  {
    [objc_opt_class() expectedDuration];
    [v11 setExpectedDuration:?];
  }

  [v11 setRequiresInexpensiveNetworkConnectivity:{objc_msgSend(objc_opt_class(), "inexpensiveNetworkConnectivityRequired")}];
  [v11 setRequiresNetworkConnectivity:{objc_msgSend(objc_opt_class(), "networkConnectivityRequired")}];
  rateLimitConfigurationName = [objc_opt_class() rateLimitConfigurationName];
  if (rateLimitConfigurationName)
  {
    [v11 setRateLimitConfigurationName:rateLimitConfigurationName];
  }

  [v11 setRequiresExternalPower:{objc_msgSend(objc_opt_class(), "externalPowerRequired")}];
  [v11 setPowerNap:1];
  [v11 setRequiresExternalPower:{objc_msgSend(objc_opt_class(), "externalPowerRequired")}];
  [v11 setBacklogged:0];
  v13 = +[BGSystemTaskScheduler sharedScheduler];
  v21 = 0;
  v14 = [v13 submitTaskRequest:v11 error:&v21];
  v10 = v21;

  v15 = MediaAnalysisLogLevel();
  if (v14)
  {
    if (v15 >= 7)
    {
      v16 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v16))
      {
        *buf = 138412290;
        v23 = identifier;
        v17 = "[%@] Submitted repeating BGST task successfully.";
        v18 = v16;
        v19 = 12;
LABEL_20:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v18, v17, buf, v19);
      }
    }
  }

  else if (v15 >= 3)
  {
    v20 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v20))
    {
      *buf = 138412546;
      v23 = identifier;
      v24 = 2112;
      v25 = v10;
      v17 = "[%@] Failed to submit the repeating BGST task with error: %@";
      v18 = v20;
      v19 = 22;
      goto LABEL_20;
    }
  }

  objc_autoreleasePoolPop(v4);
  if (task && v10)
  {
    *task = [v10 copy];
  }

LABEL_24:
}

@end