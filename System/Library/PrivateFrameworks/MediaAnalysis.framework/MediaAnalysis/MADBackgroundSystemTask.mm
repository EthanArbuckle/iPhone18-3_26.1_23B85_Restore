@interface MADBackgroundSystemTask
+ (BOOL)networkConnectivityRequired;
+ (unint64_t)getBGSTTimeoutInTicks;
+ (void)notImplementedException:(id)exception;
- (void)executeWith:(id)with completionHandler:(id)handler;
- (void)executeWithCancelBlock:(id)block progressHandler:(id)handler completionHandler:(id)completionHandler;
- (void)registerTask;
- (void)submitTask:(id *)task;
@end

@implementation MADBackgroundSystemTask

+ (void)notImplementedException:(id)exception
{
  exception = [NSString stringWithFormat:@"[%@ %@]", objc_opt_class(), exception];
  v4 = [NSException exceptionWithName:@"NotImplementedException" reason:exception userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

+ (BOOL)networkConnectivityRequired
{
  v2 = objc_opt_class();

  return [v2 inexpensiveNetworkConnectivityRequired];
}

- (void)submitTask:(id *)task
{
  activityDelayInSeconds = [objc_opt_class() activityDelayInSeconds];
  activityGracePeriodInSeconds = [objc_opt_class() activityGracePeriodInSeconds];
  v6 = objc_autoreleasePoolPush();
  identifier = [objc_opt_class() identifier];
  if (MediaAnalysisLogLevel() >= 7)
  {
    v8 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      *buf = 138412290;
      v24 = identifier;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[%@] Try submit the BGST task", buf, 0xCu);
    }
  }

  v9 = +[BGSystemTaskScheduler sharedScheduler];
  v10 = [v9 taskRequestForIdentifier:identifier];

  if (!v10)
  {
    v13 = [[BGNonRepeatingSystemTaskRequest alloc] initWithIdentifier:identifier];
    [v13 setGroupName:MediaAnalysisDaemonDomain];
    [v13 setGroupConcurrencyLimit:1];
    [v13 setResourceIntensive:{objc_msgSend(objc_opt_class(), "resourceIntensive")}];
    [v13 setRequiresUserInactivity:1];
    [v13 setPriority:1];
    [v13 setScheduleAfter:activityDelayInSeconds];
    [v13 setTrySchedulingBefore:(activityDelayInSeconds + activityGracePeriodInSeconds)];
    [v13 setRequiresBuddyComplete:{objc_msgSend(objc_opt_class(), "buddyCheckRequired")}];
    if ([v13 resourceIntensive])
    {
      [objc_opt_class() expectedDuration];
      [v13 setExpectedDuration:?];
    }

    [v13 setRequiresInexpensiveNetworkConnectivity:{objc_msgSend(objc_opt_class(), "inexpensiveNetworkConnectivityRequired")}];
    [v13 setRequiresNetworkConnectivity:{objc_msgSend(objc_opt_class(), "networkConnectivityRequired")}];
    rateLimitConfigurationName = [objc_opt_class() rateLimitConfigurationName];
    if (rateLimitConfigurationName)
    {
      [v13 setRateLimitConfigurationName:rateLimitConfigurationName];
    }

    [v13 setRequiresExternalPower:{objc_msgSend(objc_opt_class(), "externalPowerRequired")}];
    [v13 setPowerNap:1];
    [v13 setRequiresExternalPower:{objc_msgSend(objc_opt_class(), "externalPowerRequired")}];
    [v13 setBacklogged:1];
    producedResultIdentifiers = [objc_opt_class() producedResultIdentifiers];
    [v13 setProducedResultIdentifiers:producedResultIdentifiers];

    [objc_opt_class() updateTaskSpecificBGSystemTaskRequest:v13];
    v16 = +[BGSystemTaskScheduler sharedScheduler];
    v22 = 0;
    LOBYTE(producedResultIdentifiers) = [v16 submitTaskRequest:v13 error:&v22];
    v12 = v22;

    if (producedResultIdentifiers)
    {
      if (MediaAnalysisLogLevel() < 7)
      {
        goto LABEL_21;
      }

      v17 = VCPLogToOSLogType[7];
      if (!os_log_type_enabled(&_os_log_default, v17))
      {
        goto LABEL_21;
      }

      *buf = 138412290;
      v24 = identifier;
      v18 = "[%@] Submitted BGST task successfully.";
      v19 = v17;
      v20 = 12;
    }

    else
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_21;
      }

      v21 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v21))
      {
        goto LABEL_21;
      }

      *buf = 138412546;
      v24 = identifier;
      v25 = 2112;
      v26 = v12;
      v18 = "[%@] Failed to submit the BGST task with error: %@";
      v19 = v21;
      v20 = 22;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v19, v18, buf, v20);
LABEL_21:

    goto LABEL_22;
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v11 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v11))
    {
      *buf = 138412290;
      v24 = identifier;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[%@] the BGST task already existed, bailing out.", buf, 0xCu);
    }
  }

  v12 = 0;
LABEL_22:

  objc_autoreleasePoolPop(v6);
  if (!v10 && task && v12)
  {
    *task = [v12 copy];
  }
}

- (void)executeWith:(id)with completionHandler:(id)handler
{
  v4 = objc_opt_class();

  [v4 notImplementedException:@"executeWith:completionHandler:"];
}

- (void)executeWithCancelBlock:(id)block progressHandler:(id)handler completionHandler:(id)completionHandler
{
  v5 = objc_opt_class();

  [v5 notImplementedException:@"executeWithCancelBlock:progressHandler:completionHandler:"];
}

- (void)registerTask
{
  identifier = [objc_opt_class() identifier];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [NSString stringWithFormat:@"[%@][%@]", v5, identifier];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100019794;
  v18[3] = &unk_100283050;
  v7 = v6;
  v19 = v7;
  selfCopy = self;
  v8 = identifier;
  v21 = v8;
  v9 = objc_retainBlock(v18);
  if (v8)
  {
    v10 = +[BGSystemTaskScheduler sharedScheduler];
    v11 = [v10 registerForTaskWithIdentifier:v8 usingQueue:0 launchHandler:v9];

    if (v11)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v12 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v12))
        {
          *buf = 138412290;
          v23 = v7;
          v13 = "%@ Successfully registered";
LABEL_12:
          v16 = v12;
          v17 = 12;
          goto LABEL_13;
        }
      }
    }

    else if (MediaAnalysisLogLevel() >= 4)
    {
      v12 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v12))
      {
        *buf = 138412290;
        v23 = v7;
        v13 = "%@ identifier already registerred; ignore re-registering";
        goto LABEL_12;
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 3)
  {
    v14 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v14))
    {
      taskID = [objc_opt_class() taskID];
      *buf = 138412546;
      v23 = v7;
      v24 = 1024;
      v25 = taskID;
      v13 = "%@ Invalid identifier for task %u";
      v16 = v14;
      v17 = 18;
LABEL_13:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v16, v13, buf, v17);
    }
  }
}

+ (unint64_t)getBGSTTimeoutInTicks
{
  if (qword_1002B80F8 != -1)
  {
    sub_10001A6FC();
  }

  return qword_1002B8108;
}

@end