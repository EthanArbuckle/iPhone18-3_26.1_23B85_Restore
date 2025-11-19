@interface MADMomentsDeferredBackgroundSystemTask
+ (id)sharedTask;
+ (int64_t)taskGracePeriod;
+ (int64_t)taskPriority;
- (void)executeWithCancelBlock:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5;
- (void)submitTask:(id *)a3;
@end

@implementation MADMomentsDeferredBackgroundSystemTask

+ (id)sharedTask
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100187A80;
  block[3] = &unk_100282998;
  block[4] = a1;
  if (qword_1002B84A8 != -1)
  {
    dispatch_once(&qword_1002B84A8, block);
  }

  v2 = qword_1002B84A0;

  return v2;
}

+ (int64_t)taskGracePeriod
{
  if (qword_1002B84B0 != -1)
  {
    sub_10018821C();
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v2 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      v3 = [objc_opt_class() identifier];
      v5 = 138412546;
      v6 = v3;
      v7 = 2048;
      v8 = 3600;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[%@] grace period %lld seconds", &v5, 0x16u);
    }
  }

  return 3600;
}

+ (int64_t)taskPriority
{
  if (qword_1002B84C0 != -1)
  {
    sub_100188230();
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v2 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      v3 = [objc_opt_class() identifier];
      v5 = 138412546;
      v6 = v3;
      v7 = 1024;
      v8 = byte_1002B84B8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[%@] priority: %d", &v5, 0x12u);
    }
  }

  return byte_1002B84B8;
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
      v17 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[%@] Try submit the BGST task", buf, 0xCu);
    }
  }

  v7 = +[BGSystemTaskScheduler sharedScheduler];
  v8 = [v7 taskRequestForIdentifier:v5];

  if (v8)
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v9 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v9))
      {
        *buf = 138412290;
        v17 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[%@] the BGST task already existed, bailing out.", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v4);
    v10 = 0;
  }

  else
  {
    v11 = [[BGNonRepeatingSystemTaskRequest alloc] initWithIdentifier:v5];
    [v11 setGroupName:MediaAnalysisDaemonDomain];
    [v11 setRequiresBuddyComplete:{objc_msgSend(objc_opt_class(), "buddyCheckRequired")}];
    [v11 setGroupConcurrencyLimit:1];
    [v11 setRequiresUserInactivity:1];
    [v11 setRequiresExternalPower:0];
    [v11 setPriority:{objc_msgSend(objc_opt_class(), "taskPriority")}];
    [v11 setScheduleAfter:10.0];
    [v11 setTrySchedulingBefore:{(objc_msgSend(objc_opt_class(), "taskGracePeriod") + 10)}];
    [objc_opt_class() updateTaskSpecificBGSystemTaskRequest:v11];
    v12 = +[BGSystemTaskScheduler sharedScheduler];
    v15 = 0;
    v13 = [v12 submitTaskRequest:v11 error:&v15];
    v10 = v15;

    if ((v13 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
    {
      v14 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        *buf = 138412546;
        v17 = v5;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[%@] Failed to submit the BGST task with error: %@", buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v4);
    if (a3 && v10)
    {
      *a3 = [v10 copy];
    }
  }
}

- (void)executeWithCancelBlock:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [objc_opt_class() identifier];
  v13 = [NSString stringWithFormat:@"[%@][%@]", v11, v12];

  v14 = [MADMomentsDeferredProcessingTask taskWithCancelBlock:v9 progressHandler:v8 andCompletionHandler:v7];

  v15 = +[VCPMADTaskScheduler sharedInstance];
  v16 = [v15 addBackgroundTask:v14 withQoS:17];

  v17 = MediaAnalysisLogLevel();
  if (v16)
  {
    if (v17 >= 7)
    {
      v18 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v18))
      {
        *buf = 138412290;
        v21 = v13;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "%@ Successfully submitted background task to task scheduler.", buf, 0xCu);
      }
    }
  }

  else
  {
    if (v17 >= 4)
    {
      v19 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v19))
      {
        *buf = 138412290;
        v21 = v13;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "%@ Failed to submit background task to task scheduler; prepare to reschedule", buf, 0xCu);
      }
    }

    v7[2](v7, 4294967168);
  }
}

@end