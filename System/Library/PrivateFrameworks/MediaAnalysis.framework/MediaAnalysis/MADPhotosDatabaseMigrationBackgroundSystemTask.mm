@interface MADPhotosDatabaseMigrationBackgroundSystemTask
+ (BOOL)enabledByDefault;
+ (id)sharedTask;
- (void)executeWithSystemTask:(id)a3 cancelBlock:(id)a4 completionHandler:(id)a5;
@end

@implementation MADPhotosDatabaseMigrationBackgroundSystemTask

+ (id)sharedTask
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100111FA0;
  block[3] = &unk_100282998;
  block[4] = a1;
  if (qword_1002B83F0 != -1)
  {
    dispatch_once(&qword_1002B83F0, block);
  }

  v2 = qword_1002B83E8;

  return v2;
}

+ (BOOL)enabledByDefault
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

- (void)executeWithSystemTask:(id)a3 cancelBlock:(id)a4 completionHandler:(id)a5
{
  v34 = a3;
  v35 = a4;
  v7 = a5;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [objc_opt_class() identifier];
  v11 = [NSString stringWithFormat:@"[%@][%@]", v9, v10];

  if ([objc_opt_class() enabled])
  {
    v12 = +[VCPPhotoLibraryManager sharedManager];
    v13 = [v12 allPhotoLibraries];

    v33 = v13;
    if ([v13 count])
    {
      v31 = +[MADThroughputManager throughputManagerForTask:BGSystemTask:](MADThroughputManager, "throughputManagerForTask:BGSystemTask:", [objc_opt_class() taskID], v34);
      v30 = +[NSDate now];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v51 = 0x3032000000;
      v52 = sub_1001127FC;
      v53 = sub_10011280C;
      v14 = [objc_opt_class() identifier];
      v54 = VCPTransactionWithName(v14);

      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_100112814;
      v46[3] = &unk_1002837E8;
      v15 = v11;
      v47 = v15;
      v32 = objc_retainBlock(v46);
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_1001128E8;
      v40[3] = &unk_100286808;
      v29 = v30;
      v41 = v29;
      v16 = v15;
      v42 = v16;
      p_buf = &buf;
      v17 = v31;
      v43 = v17;
      v44 = v7;
      v18 = objc_retainBlock(v40);
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_100112AA8;
      v38[3] = &unk_1002842C8;
      v39 = v35;
      v19 = objc_retainBlock(v38);
      v20 = objc_autoreleasePoolPush();
      if (VCPIsRemoteIOSTask())
      {
        v21 = [objc_opt_class() taskID];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_100112AB8;
        v36[3] = &unk_100284038;
        v37 = v18;
        v22 = [VCPMADRemoteActivityTask taskWithActivityType:v21 andCompletionHandler:v36];
        [v22 setCancelBlock:v19];
      }

      else
      {
        v22 = [MADPhotosDatabaseMigrationProcessingTask taskWithPhotoLibraries:v13 progressHandler:v32 completionHandler:v18 cancelBlock:v19];
      }

      v25 = +[VCPMADTaskScheduler sharedInstance];
      v26 = [v25 addBackgroundTask:v22 withQoS:17] == 0;

      if (v26)
      {
        if (MediaAnalysisLogLevel() >= 4)
        {
          v28 = VCPLogToOSLogType[4];
          if (os_log_type_enabled(&_os_log_default, v28))
          {
            *v48 = 138412290;
            v49 = v16;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "%@ Failed to submit background task to task scheduler; prepare to reschedule", v48, 0xCu);
          }
        }

        (v18[2])(v18, 4294967168);
      }

      else if (MediaAnalysisLogLevel() >= 7)
      {
        v27 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v27))
        {
          *v48 = 138412290;
          v49 = v16;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "%@ Successfully submitted background task to task scheduler.", v48, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v20);
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 5)
      {
        v24 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v24))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v11;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "%@ No PhotoLibrary present; quitting background processing", &buf, 0xCu);
        }
      }

      (*(v7 + 2))(v7, 0);
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v23 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v23))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v11;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "%@ BackgroundSystemTask disabled; quitting background processing", &buf, 0xCu);
      }
    }

    (*(v7 + 2))(v7, 0);
  }
}

@end