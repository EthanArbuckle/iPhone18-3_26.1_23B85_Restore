@interface MADProgressReporterBackgroundSystemTask
+ (id)producedResultIdentifiers;
+ (id)sharedTask;
- (void)executeWithSystemTask:(id)a3 cancelBlock:(id)a4 completionHandler:(id)a5;
@end

@implementation MADProgressReporterBackgroundSystemTask

+ (id)sharedTask
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A6890;
  block[3] = &unk_100282998;
  block[4] = a1;
  if (qword_1002B8518 != -1)
  {
    dispatch_once(&qword_1002B8518, block);
  }

  v2 = qword_1002B8510;

  return v2;
}

+ (id)producedResultIdentifiers
{
  v2 = [NSSet setWithArray:&off_100296668];

  return v2;
}

- (void)executeWithSystemTask:(id)a3 cancelBlock:(id)a4 completionHandler:(id)a5
{
  v26 = a3;
  v30 = a4;
  v28 = a5;
  v25 = [objc_opt_class() identifier];
  v27 = [NSString stringWithFormat:@"[ReportProgress][%@][ExecuteTask]", v25];
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_1001A70D4;
  v47 = sub_1001A70E4;
  v48 = objc_alloc_init(VCPTimeMeasurement);
  [v44[5] start];
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = sub_1001A70D4;
  v41[4] = sub_1001A70E4;
  v7 = [objc_opt_class() identifier];
  v42 = VCPTransactionWithName(v7);

  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v40[3] = 0;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1001A70EC;
  v37[3] = &unk_1002854A0;
  v8 = v27;
  v38 = v8;
  v39 = v40;
  v29 = objc_retainBlock(v37);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1001A71CC;
  v31[3] = &unk_1002885F0;
  v9 = v8;
  v32 = v9;
  v10 = v26;
  v33 = v10;
  v35 = &v43;
  v36 = v41;
  v11 = v28;
  v34 = v11;
  v12 = objc_retainBlock(v31);
  v13 = objc_autoreleasePoolPush();
  if (MediaAnalysisLogLevel() >= 5)
  {
    v14 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v14))
    {
      *buf = 138412290;
      v54 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "%@ start processing task ...", buf, 0xCu);
    }
  }

  if (VCPIsRemoteIOSTask())
  {
    +[VCPMADRemoteActivityTask taskWithActivityType:andCompletionHandler:](VCPMADRemoteActivityTask, "taskWithActivityType:andCompletionHandler:", [objc_opt_class() taskID], v12);
  }

  else
  {
    [MADProgressReporterProcessingTask taskWithCancelBlock:v30 progressHandler:v29 completionHandler:v12];
  }
  v15 = ;
  if (v15)
  {
    v16 = +[VCPMADTaskScheduler sharedInstance];
    if ([v16 addBackgroundTask:v15 withQoS:9])
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v17 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v17))
        {
          *buf = 138412290;
          v54 = v9;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "%@ Submitted background task to task scheduler", buf, 0xCu);
        }
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v21 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v21))
        {
          *buf = 138412290;
          v54 = v9;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "%@ Failed to submit background task to task scheduler; prepare to reschedule", buf, 0xCu);
        }
      }

      v51 = NSLocalizedDescriptionKey;
      v22 = [NSString stringWithFormat:@"%@ Cancelled", v9];
      v52 = v22;
      v23 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      v24 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v23];

      (v12[2])(v12, 0, v24);
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v18 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v18))
      {
        *buf = 138412290;
        v54 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "%@ Failed to create processing task", buf, 0xCu);
      }
    }

    v49 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithFormat:@"%@ Failed to create processing task", v9];
    v50 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v16 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v20];

    (v12[2])(v12, 0, v16);
  }

  objc_autoreleasePoolPop(v13);
  _Block_object_dispose(v40, 8);
  _Block_object_dispose(v41, 8);

  _Block_object_dispose(&v43, 8);
}

@end