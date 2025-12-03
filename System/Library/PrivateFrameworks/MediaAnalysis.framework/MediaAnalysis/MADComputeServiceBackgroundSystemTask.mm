@interface MADComputeServiceBackgroundSystemTask
+ (id)sharedTask;
- (void)executeWithCancelBlock:(id)block progressHandler:(id)handler completionHandler:(id)completionHandler;
- (void)submitTask:(id *)task;
@end

@implementation MADComputeServiceBackgroundSystemTask

+ (id)sharedTask
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CE6F0;
  block[3] = &unk_100282998;
  block[4] = self;
  if (qword_1002B8370 != -1)
  {
    dispatch_once(&qword_1002B8370, block);
  }

  v2 = qword_1002B8368;

  return v2;
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
      v17 = identifier;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[%@] Try submit the BGST task", buf, 0xCu);
    }
  }

  v7 = +[BGSystemTaskScheduler sharedScheduler];
  v8 = [v7 taskRequestForIdentifier:identifier];

  if (v8)
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v9 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v9))
      {
        *buf = 138412290;
        v17 = identifier;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[%@] the BGST task already existed, bailing out.", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v4);
    v10 = 0;
  }

  else
  {
    v11 = [[BGNonRepeatingSystemTaskRequest alloc] initWithIdentifier:identifier];
    [v11 setGroupName:MediaAnalysisDaemonDomain];
    [v11 setRequiresBuddyComplete:{objc_msgSend(objc_opt_class(), "buddyCheckRequired")}];
    [v11 setGroupConcurrencyLimit:1];
    [v11 setRequiresUserInactivity:1];
    [v11 setRequiresExternalPower:1];
    [v11 setPriority:1];
    [v11 setScheduleAfter:0.0];
    [v11 setTrySchedulingBefore:1800.0];
    [v11 setResourceIntensive:1];
    [v11 setExpectedDuration:300.0];
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
        v17 = identifier;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[%@] Failed to submit the BGST task with error: %@", buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v4);
    if (task && v10)
    {
      *task = [v10 copy];
    }
  }
}

- (void)executeWithCancelBlock:(id)block progressHandler:(id)handler completionHandler:(id)completionHandler
{
  blockCopy = block;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  identifier = [objc_opt_class() identifier];
  v10 = [NSString stringWithFormat:@"[%@][%@]", v8, identifier];

  v11 = +[MADManagedRequest statusColumnName];
  v12 = [NSPredicate predicateWithFormat:@"%K == %lu", v11, 0];

  v68 = 0;
  v44 = v12;
  v13 = [MADManagedRequest fetchTaskScheduleWithPredicate:v12 error:&v68];
  v43 = v68;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v14 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v14))
    {
      v15 = [v13 count];
      *buf = 138412546;
      v72 = v10;
      v73 = 2048;
      v74 = v15;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "%@ Fetched %lu requests", buf, 0x16u);
    }
  }

  v16 = +[NSMutableDictionary dictionary];
  v17 = +[NSMutableArray array];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v13;
  v18 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v65;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v65 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v64 + 1) + 8 * i);
        requestID = [v22 requestID];
        v24 = [v16 objectForKeyedSubscript:requestID];

        if (!v24)
        {
          v25 = +[NSMutableArray array];
          requestID2 = [v22 requestID];
          [v16 setObject:v25 forKeyedSubscript:requestID2];

          requestID3 = [v22 requestID];
          [v17 addObject:requestID3];
        }

        requestID4 = [v22 requestID];
        v29 = [v16 objectForKeyedSubscript:requestID4];
        [v29 addObject:v22];
      }

      v19 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
    }

    while (v19);
  }

  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_1000CF0D8;
  v61[3] = &unk_100285BE8;
  v45 = v10;
  v62 = v45;
  v42 = blockCopy;
  v63 = v42;
  v52 = objc_retainBlock(v61);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v48 = v17;
  v30 = [v48 countByEnumeratingWithState:&v57 objects:v69 count:16];
  if (v30)
  {
    v31 = v30;
    v50 = *v58;
    type = VCPLogToOSLogType[7];
    v46 = VCPLogToOSLogType[4];
    do
    {
      for (j = 0; j != v31; j = j + 1)
      {
        if (*v58 != v50)
        {
          objc_enumerationMutation(v48);
        }

        v33 = *(*(&v57 + 1) + 8 * j);
        v34 = objc_autoreleasePoolPush();
        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = sub_1000CF29C;
        v55[3] = &unk_100285C10;
        v35 = completionHandlerCopy;
        v56 = v35;
        v36 = objc_retainBlock(v55);
        v37 = [v16 objectForKeyedSubscript:v33];
        v38 = [MADComputeServiceProcessingTask taskWithManagedRequests:v37 cancelBlock:v52 progressHandler:handlerCopy resultsHandler:0 completionHandler:v36];

        v39 = +[VCPMADTaskScheduler sharedInstance];
        v40 = [v39 addBackgroundTask:v38 withQoS:17];

        v41 = MediaAnalysisLogLevel();
        if (v40)
        {
          if (v41 >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v72 = v45;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Successfully submitted background task to task scheduler.", buf, 0xCu);
          }
        }

        else
        {
          if (v41 >= 4 && os_log_type_enabled(&_os_log_default, v46))
          {
            *buf = 138412290;
            v72 = v45;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v46, "%@ Failed to submit background task to task scheduler; prepare to reschedule", buf, 0xCu);
          }

          (*(completionHandlerCopy + 2))(v35, 4294967168);
        }

        objc_autoreleasePoolPop(v34);
      }

      v31 = [v48 countByEnumeratingWithState:&v57 objects:v69 count:16];
    }

    while (v31);
  }
}

@end