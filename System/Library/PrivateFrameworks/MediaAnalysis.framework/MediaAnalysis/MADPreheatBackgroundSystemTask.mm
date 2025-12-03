@interface MADPreheatBackgroundSystemTask
+ (id)sharedTask;
+ (void)updateTaskSpecificBGSystemTaskRequest:(id)request;
- (void)executeWith:(id)with completionHandler:(id)handler;
@end

@implementation MADPreheatBackgroundSystemTask

+ (id)sharedTask
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100057400;
  block[3] = &unk_100282998;
  block[4] = self;
  if (qword_1002B81E8 != -1)
  {
    dispatch_once(&qword_1002B81E8, block);
  }

  v2 = qword_1002B81E0;

  return v2;
}

+ (void)updateTaskSpecificBGSystemTaskRequest:(id)request
{
  requestCopy = request;
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MADPreheatBackgroundSystemTask;
  objc_msgSendSuper2(&v5, "updateTaskSpecificBGSystemTaskRequest:", requestCopy);
  [requestCopy setPreventsDeviceSleep:1];
}

- (void)executeWith:(id)with completionHandler:(id)handler
{
  withCopy = with;
  handlerCopy = handler;
  if ((DeviceHasANE() & 1) == 0)
  {
    if (MediaAnalysisLogLevel() < 5)
    {
      goto LABEL_13;
    }

    v11 = VCPLogToOSLogType[5];
    if (!os_log_type_enabled(&_os_log_default, v11))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v12 = "Device does not require model pre-warming; skipping";
    goto LABEL_12;
  }

  if ([objc_opt_class() enabled])
  {
    v7 = +[NSUserDefaults standardUserDefaults];
    v8 = [v7 persistentDomainForName:MediaAnalysisDaemonDomain];
    v9 = [v8 objectForKey:@"PreheatLastRun"];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
        goto LABEL_18;
      }

      if (MediaAnalysisLogLevel() >= 3)
      {
        v13 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v13))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[Preheat] Last run date malformed; dropping", buf, 2u);
        }
      }
    }

    v10 = 0;
LABEL_18:
    v14 = +[NSProcessInfo processInfo];
    [v14 systemUptime];
    v16 = v15;

    if (v10)
    {
      [v10 timeIntervalSinceNow];
      if (v16 > -v17)
      {
        v18 = [v8 objectForKey:@"PreheatAttempts"];
        v19 = v18;
        if (v18)
        {
          unsignedIntValue = [v18 unsignedIntValue];

          v21 = unsignedIntValue + 1;
          if (unsignedIntValue >= 2)
          {
            if (MediaAnalysisLogLevel() >= 4)
            {
              v22 = VCPLogToOSLogType[4];
              if (os_log_type_enabled(&_os_log_default, v22))
              {
                *buf = 134217984;
                *v34 = unsignedIntValue + 1;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "Preheat attempted for %lu times, not allowed to retry", buf, 0xCu);
              }
            }

            handlerCopy[2](handlerCopy, 4294967278);
LABEL_37:

            goto LABEL_38;
          }
        }

        else
        {
          v21 = 1;
        }

LABEL_30:
        v24 = +[NSDate now];
        [v7 setObject:v24 forKey:@"PreheatLastRun"];

        v25 = [NSNumber numberWithUnsignedInteger:v21];
        [v7 setObject:v25 forKey:@"PreheatAttempts"];

        if (MediaAnalysisLogLevel() >= 5)
        {
          v26 = VCPLogToOSLogType[5];
          if (os_log_type_enabled(&_os_log_default, v26))
          {
            *buf = 67109632;
            *v34 = v16;
            *&v34[4] = 2048;
            *&v34[6] = v21;
            v35 = 2048;
            v36 = 3;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "Preheating critical models (%d sec since boot, %lu previous attempts this boot, max allowed: %lu)", buf, 0x1Cu);
          }
        }

        if (VCPIsRemoteIOSTask())
        {
          taskID = [objc_opt_class() taskID];
          v28 = v32;
          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_100057B4C;
          v32[3] = &unk_100284038;
          v32[4] = handlerCopy;
          v29 = [VCPMADRemoteActivityTask taskWithActivityType:taskID andCompletionHandler:v32];
          [v29 setCancelBlock:withCopy];
        }

        else
        {
          v28 = v31;
          v31[0] = _NSConcreteStackBlock;
          v31[1] = 3221225472;
          v31[2] = sub_100057B60;
          v31[3] = &unk_100284038;
          v31[4] = handlerCopy;
          v29 = [MADPreheatingTask taskWithCancelBlock:withCopy progressHandler:0 completionHandler:v31];
        }

        v30 = objc_alloc_init(MADScopedWatchdog);
        [v29 run];

        goto LABEL_37;
      }
    }

    else if (MediaAnalysisLogLevel() >= 4)
    {
      v23 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v23))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "No last preheat run time recorded, clearing attempts to 0", buf, 2u);
      }
    }

    v21 = 0;
    goto LABEL_30;
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v11 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v11))
    {
      *buf = 0;
      v12 = "[Preheat] BackgroundSystemTask disabled; skipping";
LABEL_12:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v11, v12, buf, 2u);
    }
  }

LABEL_13:
  handlerCopy[2](handlerCopy, 4294967278);
LABEL_38:
}

@end