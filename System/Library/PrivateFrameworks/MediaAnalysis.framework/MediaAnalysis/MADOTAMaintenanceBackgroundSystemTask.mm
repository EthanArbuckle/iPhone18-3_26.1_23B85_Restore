@interface MADOTAMaintenanceBackgroundSystemTask
+ (id)sharedTask;
- (void)executeWith:(id)with completionHandler:(id)handler;
@end

@implementation MADOTAMaintenanceBackgroundSystemTask

+ (id)sharedTask
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100080668;
  block[3] = &unk_100282998;
  block[4] = self;
  if (qword_1002B8218 != -1)
  {
    dispatch_once(&qword_1002B8218, block);
  }

  v2 = qword_1002B8210;

  return v2;
}

- (void)executeWith:(id)with completionHandler:(id)handler
{
  withCopy = with;
  handlerCopy = handler;
  identifier = [objc_opt_class() identifier];
  [NSString stringWithFormat:@"[%@][%@]", objc_opt_class(), identifier];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_100080BF4;
  v17 = v36 = sub_100080C04;
  v37 = objc_alloc_init(VCPTimeMeasurement);
  [v33[5] start];
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = sub_100080BF4;
  v30[4] = sub_100080C04;
  v31 = VCPTransactionWithName(identifier);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100080C0C;
  v28[3] = &unk_1002837E8;
  v5 = v17;
  v29 = v5;
  v6 = objc_retainBlock(v28);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100080CE0;
  v23[3] = &unk_1002850A8;
  v26 = &v32;
  v7 = v5;
  v24 = v7;
  v27 = v30;
  v8 = handlerCopy;
  v25 = v8;
  v9 = objc_retainBlock(v23);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100080E68;
  v21[3] = &unk_1002842C8;
  v10 = withCopy;
  v22 = v10;
  v11 = objc_retainBlock(v21);
  v12 = objc_autoreleasePoolPush();
  v13 = [MADOTAMaintenanceProcessingTask taskWithCancelBlock:v11 progressHandler:v6 completionHandler:v9];
  v14 = +[VCPMADTaskScheduler sharedInstance];
  LODWORD(handler) = [v14 addBackgroundTask:v13 withQoS:17] == 0;

  if (handler)
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v16 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v16))
      {
        *buf = 138412290;
        v39 = v7;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "%@ Failed to submit background task to task scheduler; prepare to reschedule", buf, 0xCu);
      }
    }

    (*(v8 + 2))(v8, 4294967168);
  }

  else if (MediaAnalysisLogLevel() >= 7)
  {
    v15 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v15))
    {
      *buf = 138412290;
      v39 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "%@ Successfully submitted background task to task scheduler.", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v12);
  _Block_object_dispose(v30, 8);

  _Block_object_dispose(&v32, 8);
}

@end