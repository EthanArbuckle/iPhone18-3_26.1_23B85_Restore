@interface MADFastPassBackgroundSystemTask
- (void)executeWithSystemTask:(id)task cancelBlock:(id)block completionHandler:(id)handler;
- (void)registerTask;
@end

@implementation MADFastPassBackgroundSystemTask

- (void)registerTask
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v3 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      identifier = [objc_opt_class() identifier];
      processingTaskIdentifiers = [objc_opt_class() processingTaskIdentifiers];
      *buf = 138412546;
      v8 = identifier;
      v9 = 2112;
      v10 = processingTaskIdentifiers;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "%@: Registering fast-pass background processing task for %@", buf, 0x16u);
    }
  }

  v6.receiver = self;
  v6.super_class = MADFastPassBackgroundSystemTask;
  [(MADBackgroundSystemTask *)&v6 registerTask];
}

- (void)executeWithSystemTask:(id)task cancelBlock:(id)block completionHandler:(id)handler
{
  taskCopy = task;
  blockCopy = block;
  handlerCopy = handler;
  identifier = [objc_opt_class() identifier];
  v24 = [NSString stringWithFormat:@"[BGST-FP][%@][ExecuteTask]", identifier];
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_1000A6C18;
  v45 = sub_1000A6C28;
  v46 = objc_alloc_init(VCPTimeMeasurement);
  [v42[5] start];
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = sub_1000A6C18;
  v39[4] = sub_1000A6C28;
  identifier2 = [objc_opt_class() identifier];
  v40 = VCPTransactionWithName(identifier2);

  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v38[3] = 0;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000A6C30;
  v35[3] = &unk_1002854A0;
  v9 = v24;
  v36 = v9;
  v37 = v38;
  v10 = objc_retainBlock(v35);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000A6D10;
  v27[3] = &unk_1002854C8;
  v32 = &v41;
  v11 = v9;
  v28 = v11;
  v12 = taskCopy;
  v29 = v12;
  selfCopy = self;
  v33 = v38;
  v34 = v39;
  v13 = handlerCopy;
  v31 = v13;
  v14 = objc_retainBlock(v27);
  v15 = objc_autoreleasePoolPush();
  if (MediaAnalysisLogLevel() >= 5)
  {
    v16 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v16))
    {
      *buf = 138412290;
      v48 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "%@ start processing task ...", buf, 0xCu);
    }
  }

  v17 = [(MADFastPassBackgroundSystemTask *)self processingTaskWithCancelBlock:blockCopy progressHandler:v10 completionHandler:v14];
  if (v17)
  {
    v18 = +[VCPMADTaskScheduler sharedInstance];
    if ([v18 addBackgroundTask:v17 withQoS:9])
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v19 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v19))
        {
          *buf = 138412290;
          v48 = v11;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "%@ Submitted background task to task scheduler.", buf, 0xCu);
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
          v48 = v11;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "%@ Failed to submit background task to task scheduler; prepare to reschedule", buf, 0xCu);
        }
      }

      (v14[2])(v14, 4294967168);
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v20 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v20))
      {
        *buf = 138412290;
        v48 = v11;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "%@ Failed to create processing task.", buf, 0xCu);
      }
    }

    (v14[2])(v14, 4294967278);
  }

  objc_autoreleasePoolPop(v15);
  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v39, 8);

  _Block_object_dispose(&v41, 8);
}

@end