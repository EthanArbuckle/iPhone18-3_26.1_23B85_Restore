@interface MADSpotlightImageBackgroundSystemTask
+ (id)sharedTask;
- (void)executeWithCancelBlock:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5;
- (void)submitTask:(id *)a3;
@end

@implementation MADSpotlightImageBackgroundSystemTask

+ (id)sharedTask
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100081688;
  block[3] = &unk_100282998;
  block[4] = a1;
  if (qword_1002B8228 != -1)
  {
    dispatch_once(&qword_1002B8228, block);
  }

  v2 = qword_1002B8220;

  return v2;
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
      v18 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[%@] Try submit the BGST task", buf, 0xCu);
    }
  }

  v7 = +[BGSystemTaskScheduler sharedScheduler];
  v8 = [v7 taskRequestForIdentifier:v5];

  if (v8)
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v9 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v9))
      {
        *buf = 138412290;
        v18 = v5;
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
    [v11 setRequiresExternalPower:1];
    [v11 setPriority:1];
    [v11 setScheduleAfter:10.0];
    [v11 setTrySchedulingBefore:1810.0];
    [v11 setExpectedDuration:3600.0];
    [objc_opt_class() updateTaskSpecificBGSystemTaskRequest:v11];
    v12 = +[BGSystemTaskScheduler sharedScheduler];
    v16 = 0;
    v13 = [v12 submitTaskRequest:v11 error:&v16];
    v10 = v16;

    if ((v13 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
    {
      v14 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        *buf = 138412546;
        v18 = v5;
        v19 = 2112;
        v20 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[%@] Failed to submit the BGST task with error: %@", buf, 0x16u);
      }
    }

    if (MediaAnalysisLogLevel() >= 7)
    {
      v15 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v15))
      {
        *buf = 138412290;
        v18 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[%@] Submitted BGST task successfully.", buf, 0xCu);
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
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [objc_opt_class() identifier];
  v13 = [NSString stringWithFormat:@"[%@][%@]", v11, v12];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100081CD8;
  v22[3] = &unk_100282A08;
  v14 = v7;
  v23 = v14;
  v15 = objc_retainBlock(v22);
  v16 = [MADSpotlightImageProcessingTask taskWithCancelBlock:v15 progressHandler:v9 completionHandler:v8];

  v17 = +[VCPMADTaskScheduler sharedInstance];
  v18 = [v17 addBackgroundTask:v16 withQoS:17];

  v19 = MediaAnalysisLogLevel();
  if (v18)
  {
    if (v19 >= 7)
    {
      v20 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v20))
      {
        *buf = 138412290;
        v25 = v13;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "%@ Successfully submitted background task to task scheduler.", buf, 0xCu);
      }
    }
  }

  else
  {
    if (v19 >= 4)
    {
      v21 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v21))
      {
        *buf = 138412290;
        v25 = v13;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "%@ Failed to submit background task to task scheduler; prepare to reschedule", buf, 0xCu);
      }
    }

    v8[2](v8, 4294967168);
  }
}

@end