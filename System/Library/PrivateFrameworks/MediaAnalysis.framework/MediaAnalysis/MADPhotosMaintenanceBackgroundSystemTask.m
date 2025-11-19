@interface MADPhotosMaintenanceBackgroundSystemTask
+ (id)sharedTask;
+ (id)taskWithPhotoLibraries:(id)a3 cancelBlock:(id)a4 progressHandler:(id)a5 andCompletionHandler:(id)a6;
- (void)executeWithSystemTask:(id)a3 cancelBlock:(id)a4 completionHandler:(id)a5;
- (void)submitTask:(id *)a3;
@end

@implementation MADPhotosMaintenanceBackgroundSystemTask

+ (id)sharedTask
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C2C54;
  block[3] = &unk_100282998;
  block[4] = a1;
  if (qword_1002B82F0 != -1)
  {
    dispatch_once(&qword_1002B82F0, block);
  }

  v2 = qword_1002B82E8;

  return v2;
}

+ (id)taskWithPhotoLibraries:(id)a3 cancelBlock:(id)a4 progressHandler:(id)a5 andCompletionHandler:(id)a6
{
  v6 = [VCPPhotosMaintenanceProcessingTask taskWithPhotoLibraries:a3 andProgressHandler:a5 andCompletionHandler:a6 andCancelBlock:a4];

  return v6;
}

- (void)executeWithSystemTask:(id)a3 cancelBlock:(id)a4 completionHandler:(id)a5
{
  v33 = a3;
  v32 = a4;
  v35 = a5;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [objc_opt_class() identifier];
  v34 = [NSString stringWithFormat:@"[%@][%@]", v9, v10];

  v11 = +[VCPPhotoLibraryManager sharedManager];
  v12 = [v11 allPhotoLibraries];

  if ([v12 count])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v57 = 0x3032000000;
    v58 = sub_1000C3530;
    v59 = sub_1000C3540;
    v60 = objc_alloc_init(VCPTimeMeasurement);
    [*(*(&buf + 1) + 40) start];
    +[NSDate now];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_1000C3548;
    v52[3] = &unk_100282BC8;
    v30 = v52[4] = self;
    v53 = v30;
    v28 = [VCPTimer timerWithIntervalSeconds:60 isOneShot:0 andBlock:v52];
    v29 = +[MADThroughputManager throughputManagerForTask:BGSystemTask:](MADThroughputManager, "throughputManagerForTask:BGSystemTask:", [objc_opt_class() taskID], v33);
    v50[0] = 0;
    v50[1] = v50;
    v50[2] = 0x3032000000;
    v50[3] = sub_1000C3530;
    v50[4] = sub_1000C3540;
    v13 = [objc_opt_class() identifier];
    v51 = VCPTransactionWithName(v13);

    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1000C35E4;
    v48[3] = &unk_1002837E8;
    v14 = v34;
    v49 = v14;
    v31 = objc_retainBlock(v48);
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000C36B8;
    v40[3] = &unk_1002859A0;
    p_buf = &buf;
    v15 = v14;
    v41 = v15;
    v42 = self;
    v16 = v30;
    v43 = v16;
    v17 = v29;
    v44 = v17;
    v47 = v50;
    v45 = v35;
    v18 = objc_retainBlock(v40);
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1000C387C;
    v38[3] = &unk_1002842C8;
    v39 = v32;
    v19 = objc_retainBlock(v38);
    v20 = objc_autoreleasePoolPush();
    if (VCPIsRemoteIOSTask())
    {
      v21 = [objc_opt_class() taskID];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1000C388C;
      v36[3] = &unk_100284038;
      v37 = v18;
      v22 = [VCPMADRemoteActivityTask taskWithActivityType:v21 andCompletionHandler:v36];
      [v22 setCancelBlock:v19];
    }

    else
    {
      v22 = [VCPPhotosMaintenanceProcessingTask taskWithPhotoLibraries:v12 andProgressHandler:v31 andCompletionHandler:v18 andCancelBlock:v19];
    }

    v24 = +[VCPMADTaskScheduler sharedInstance];
    v25 = [v24 addBackgroundTask:v22 withQoS:17] == 0;

    if (v25)
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v27 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v27))
        {
          *v54 = 138412290;
          v55 = v15;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "%@ Failed to submit background task to task scheduler; prepare to reschedule", v54, 0xCu);
        }
      }

      (v18[2])(v18, 4294967168);
    }

    else if (MediaAnalysisLogLevel() >= 7)
    {
      v26 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v26))
      {
        *v54 = 138412290;
        v55 = v15;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "%@ Successfully submitted background task to task scheduler.", v54, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v20);
    _Block_object_dispose(v50, 8);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v23 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v23))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v34;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "%@ No PhotoLibrary present; quitting background processing", &buf, 0xCu);
      }
    }

    (*(v35 + 2))(v35, 0);
  }
}

- (void)submitTask:(id *)a3
{
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_opt_class() identifier];
  if (MediaAnalysisLogLevel() >= 7)
  {
    v6 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      *buf = 138412290;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[%@] Try submit the repeating BGST task", buf, 0xCu);
    }
  }

  v7 = +[BGSystemTaskScheduler sharedScheduler];
  v8 = [v7 taskRequestForIdentifier:v5];

  if (!v8)
  {
    v11 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:v5];
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
    v12 = [objc_opt_class() rateLimitConfigurationName];
    if (v12)
    {
      [v11 setRateLimitConfigurationName:v12];
    }

    [v11 setRequiresExternalPower:{objc_msgSend(objc_opt_class(), "externalPowerRequired")}];
    [v11 setPowerNap:1];
    [v11 setRequiresExternalPower:{objc_msgSend(objc_opt_class(), "externalPowerRequired")}];
    [v11 setBacklogged:0];
    [objc_opt_class() updateTaskSpecificBGSystemTaskRequest:v11];
    v13 = +[BGSystemTaskScheduler sharedScheduler];
    v20 = 0;
    v14 = [v13 submitTaskRequest:v11 error:&v20];
    v10 = v20;

    if (v14)
    {
      if (MediaAnalysisLogLevel() < 7)
      {
        goto LABEL_21;
      }

      v15 = VCPLogToOSLogType[7];
      if (!os_log_type_enabled(&_os_log_default, v15))
      {
        goto LABEL_21;
      }

      *buf = 138412290;
      v22 = v5;
      v16 = "[%@] Submitted repeating BGST task successfully.";
      v17 = v15;
      v18 = 12;
    }

    else
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_21;
      }

      v19 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v19))
      {
        goto LABEL_21;
      }

      *buf = 138412546;
      v22 = v5;
      v23 = 2112;
      v24 = v10;
      v16 = "[%@] Failed to submit the repeating BGST task with error: %@";
      v17 = v19;
      v18 = 22;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v17, v16, buf, v18);
LABEL_21:

    goto LABEL_22;
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v9 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      *buf = 138412290;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[%@] the repeating BGST task already existed, bailing out.", buf, 0xCu);
    }
  }

  v10 = 0;
LABEL_22:

  objc_autoreleasePoolPop(v4);
  if (!v8 && a3 && v10)
  {
    *a3 = [v10 copy];
  }
}

@end