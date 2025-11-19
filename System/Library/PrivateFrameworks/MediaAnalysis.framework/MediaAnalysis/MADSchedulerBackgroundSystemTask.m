@interface MADSchedulerBackgroundSystemTask
+ (id)sharedTask;
+ (void)submitPhotosTasks;
+ (void)submitTaskWithTaskClass:(Class)a3;
+ (void)updateTask;
- (void)executeWith:(id)a3 completionHandler:(id)a4;
@end

@implementation MADSchedulerBackgroundSystemTask

+ (id)sharedTask
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001092C;
  block[3] = &unk_100282998;
  block[4] = a1;
  if (qword_1002B80C8 != -1)
  {
    dispatch_once(&qword_1002B80C8, block);
  }

  v2 = qword_1002B80C0;

  return v2;
}

+ (void)updateTask
{
  if (+[VCPDeviceInformation isHomePod])
  {
    v2 = [objc_opt_class() identifier];
    if (MediaAnalysisLogLevel() >= 6)
    {
      v3 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v3))
      {
        *buf = 138412290;
        v29 = v2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[%@][HomePod] Attempting updateTask", buf, 0xCu);
      }
    }

    v4 = +[BGSystemTaskScheduler sharedScheduler];
    v5 = [v4 taskRequestForIdentifier:v2];

    if (v5)
    {
      [v5 interval];
      if (v6 >= 86400.0)
      {
        if (MediaAnalysisLogLevel() >= 6)
        {
          v23 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v23))
          {
            *buf = 138412290;
            v29 = v2;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "[%@][HomePod] Task interval already up-to-date, skipping updateTask", buf, 0xCu);
          }
        }

        v10 = 0;
        goto LABEL_30;
      }

      if (MediaAnalysisLogLevel() >= 6)
      {
        v7 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v7))
        {
          *buf = 138412290;
          v29 = v2;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[%@][HomePod] Updating interval to 24 hours", buf, 0xCu);
        }
      }

      [v5 setInterval:86400.0];
      [v5 setMinDurationBetweenInstances:70000.0];
      [objc_opt_class() updateTaskSpecificBGSystemTaskRequest:v5];
      v8 = +[BGSystemTaskScheduler sharedScheduler];
      v27 = 0;
      v9 = [v8 updateTaskRequest:v5 error:&v27];
      v10 = v27;

      if (v9)
      {
        if (MediaAnalysisLogLevel() < 6)
        {
          goto LABEL_30;
        }

        v11 = VCPLogToOSLogType[6];
        if (!os_log_type_enabled(&_os_log_default, v11))
        {
          goto LABEL_30;
        }

        *buf = 138412290;
        v29 = v2;
        v12 = "[%@][HomePod] Successfully updated task request";
        v13 = v11;
        v14 = 12;
      }

      else
      {
        if (MediaAnalysisLogLevel() < 3)
        {
          goto LABEL_30;
        }

        v25 = VCPLogToOSLogType[3];
        if (!os_log_type_enabled(&_os_log_default, v25))
        {
          goto LABEL_30;
        }

        *buf = 138412546;
        v29 = v2;
        v30 = 2112;
        v31 = v10;
        v12 = "[%@][HomePod] Failed to update task request with error: %@";
        v13 = v25;
        v14 = 22;
      }

      _os_log_impl(&_mh_execute_header, &_os_log_default, v13, v12, buf, v14);
LABEL_30:

      return;
    }

    if (MediaAnalysisLogLevel() >= 4)
    {
      v15 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v15))
      {
        *buf = 138412290;
        v29 = v2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[%@][HomePod] Scheduler task missing, submitting now", buf, 0xCu);
      }
    }

    v16 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:v2];
    [v16 setGroupName:MediaAnalysisDaemonDomain];
    [v16 setRequiresBuddyComplete:{objc_msgSend(objc_opt_class(), "buddyCheckRequired")}];
    [v16 setGroupConcurrencyLimit:1];
    [v16 setResourceIntensive:0];
    [v16 setRequiresUserInactivity:1];
    [v16 setPriority:1];
    [v16 setInterval:86400.0];
    [v16 setMinDurationBetweenInstances:70000.0];
    [objc_opt_class() updateTaskSpecificBGSystemTaskRequest:v16];
    v17 = +[BGSystemTaskScheduler sharedScheduler];
    v26 = 0;
    v18 = [v17 submitTaskRequest:v16 error:&v26];
    v10 = v26;

    if (v18)
    {
      if (MediaAnalysisLogLevel() < 6)
      {
        goto LABEL_29;
      }

      v19 = VCPLogToOSLogType[6];
      if (!os_log_type_enabled(&_os_log_default, v19))
      {
        goto LABEL_29;
      }

      *buf = 138412290;
      v29 = v2;
      v20 = "[%@][HomePod] Successfully submitted new task request";
      v21 = v19;
      v22 = 12;
    }

    else
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_29;
      }

      v24 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v24))
      {
        goto LABEL_29;
      }

      *buf = 138412546;
      v29 = v2;
      v30 = 2112;
      v31 = v10;
      v20 = "[%@][HomePod] Failed to submit new task request with error: %@";
      v21 = v24;
      v22 = 22;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v21, v20, buf, v22);
LABEL_29:
    v5 = v16;
    goto LABEL_30;
  }
}

+ (void)submitTaskWithTaskClass:(Class)a3
{
  v4 = [(objc_class *)a3 identifier];
  v5 = [(objc_class *)a3 sharedTask];
  v12 = 0;
  [v5 submitTask:&v12];
  v6 = v12;

  if (v6)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v7 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v7))
      {
        *buf = 138412546;
        v14 = v4;
        v15 = 2112;
        v16 = v6;
        v8 = "[%@] Failed to submit this BGST task with error: %@";
        v9 = v7;
        v10 = 22;
LABEL_8:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, v8, buf, v10);
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 5)
  {
    v11 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v11))
    {
      *buf = 138412290;
      v14 = v4;
      v8 = "[%@] Successfully submitted this BGST task.";
      v9 = v11;
      v10 = 12;
      goto LABEL_8;
    }
  }
}

+ (void)submitPhotosTasks
{
  if ([objc_opt_class() photosActivitiesEnabled])
  {
    v2 = +[VCPPhotoLibraryManager sharedManager];
    v3 = [v2 allPhotoLibraries];

    v28 = v3;
    if ([v3 count])
    {
      if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v4 = v3;
        v5 = [v4 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v5)
        {
          v6 = *v31;
          type = VCPLogToOSLogType[3];
          while (2)
          {
            for (i = 0; i != v5; i = i + 1)
            {
              if (*v31 != v6)
              {
                objc_enumerationMutation(v4);
              }

              v8 = *(*(&v30 + 1) + 8 * i);
              v9 = objc_autoreleasePoolPush();
              v10 = [MADPhotosDataStoreClient needsDataStoreMigrationForPhotoLibrary:v8];
              v11 = v10;
              if (v10)
              {
                if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
                {
                  v12 = objc_opt_class();
                  v13 = [v8 photoLibraryURL];
                  *buf = 138412546;
                  v35 = v12;
                  v36 = 2112;
                  v37 = v13;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@] Database migration incomplete for photo library %@", buf, 0x16u);
                }

                v14 = objc_opt_class();
                [v14 submitTaskWithTaskClass:objc_opt_class()];
              }

              objc_autoreleasePoolPop(v9);
              if (v11)
              {

                goto LABEL_28;
              }
            }

            v5 = [v4 countByEnumeratingWithState:&v30 objects:v38 count:16];
            if (v5)
            {
              continue;
            }

            break;
          }
        }
      }

      v15 = objc_opt_class();
      [v15 submitTaskWithTaskClass:objc_opt_class()];
      v16 = objc_opt_class();
      [v16 submitTaskWithTaskClass:objc_opt_class()];
      v17 = objc_opt_class();
      [v17 submitTaskWithTaskClass:objc_opt_class()];
      if (_os_feature_enabled_impl())
      {
        v18 = objc_opt_class();
        [v18 submitTaskWithTaskClass:objc_opt_class()];
        v19 = objc_opt_class();
        [v19 submitTaskWithTaskClass:objc_opt_class()];
      }

      v20 = objc_opt_class();
      [v20 submitTaskWithTaskClass:objc_opt_class()];
      v21 = objc_opt_class();
      [v21 submitTaskWithTaskClass:objc_opt_class()];
      v22 = objc_opt_class();
      [v22 submitTaskWithTaskClass:objc_opt_class()];
      v23 = objc_opt_class();
      [v23 submitTaskWithTaskClass:objc_opt_class()];
      if (_os_feature_enabled_impl())
      {
        v24 = objc_opt_class();
        [v24 submitTaskWithTaskClass:objc_opt_class()];
      }

      v25 = objc_opt_class();
      [v25 submitTaskWithTaskClass:objc_opt_class()];
    }

    else if (MediaAnalysisLogLevel() >= 5)
    {
      v26 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v26))
      {
        *buf = 138412290;
        v35 = objc_opt_class();
        v27 = v35;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "[%@] No Photo Libraries present; bypassing submission of Photos activities", buf, 0xCu);
      }
    }

LABEL_28:
  }
}

- (void)executeWith:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (MediaAnalysisLogLevel() >= 5)
  {
    v7 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      LODWORD(v20) = 138412290;
      *(&v20 + 4) = objc_opt_class();
      v8 = *(&v20 + 4);
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[%@] begin executing task.", &v20, 0xCu);
    }
  }

  if (v5 && v5[2](v5))
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v9 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v9))
      {
        v10 = objc_opt_class();
        LODWORD(v20) = 138412290;
        *(&v20 + 4) = v10;
        v11 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[%@] suspending the current task execution.", &v20, 0xCu);
      }
    }

    v6[2](v6, 4294967168);
  }

  else
  {
    if ((+[VCPDeviceInformation isHomePod]& 1) != 0)
    {
      if (MediaAnalysisLogLevel() >= 5)
      {
        v12 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v12))
        {
          v13 = objc_opt_class();
          LODWORD(v20) = 138412290;
          *(&v20 + 4) = v13;
          v14 = v13;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[%@] HomePod system; bypassing submission of core activities", &v20, 0xCu);
        }
      }
    }

    else
    {
      [objc_opt_class() submitPhotosTasks];
      v15 = objc_opt_class();
      [v15 submitTaskWithTaskClass:objc_opt_class()];
    }

    v16 = objc_opt_class();
    [v16 submitTaskWithTaskClass:objc_opt_class()];
    v6[2](v6, 0);
    if (MediaAnalysisLogLevel() >= 5)
    {
      v17 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v17))
      {
        v18 = objc_opt_class();
        LODWORD(v20) = 138412290;
        *(&v20 + 4) = v18;
        v19 = v18;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "[%@] finish executing task.", &v20, 0xCu);
      }
    }
  }
}

@end