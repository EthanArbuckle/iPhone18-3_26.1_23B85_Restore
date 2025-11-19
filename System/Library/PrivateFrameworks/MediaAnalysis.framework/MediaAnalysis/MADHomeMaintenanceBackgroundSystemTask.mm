@interface MADHomeMaintenanceBackgroundSystemTask
+ (id)sharedTask;
+ (int64_t)activityDelayInSeconds;
- (void)executeWith:(id)a3 completionHandler:(id)a4;
@end

@implementation MADHomeMaintenanceBackgroundSystemTask

+ (id)sharedTask
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000633C;
  block[3] = &unk_100282998;
  block[4] = a1;
  if (qword_1002B8098 != -1)
  {
    dispatch_once(&qword_1002B8098, block);
  }

  v2 = qword_1002B8090;

  return v2;
}

+ (int64_t)activityDelayInSeconds
{
  if (!+[VCPDeviceInformation isHomePod])
  {
    return 79200;
  }

  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___MADHomeMaintenanceBackgroundSystemTask;
  return objc_msgSendSuper2(&v4, "activityDelayInSeconds");
}

- (void)executeWith:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [objc_opt_class() identifier];
  v10 = [NSString stringWithFormat:@"[%@][%@]", v8, v9];

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_100006828;
  v35 = sub_100006838;
  v36 = objc_alloc_init(VCPTimeMeasurement);
  [v32[5] start];
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = sub_100006828;
  v29[4] = sub_100006838;
  v11 = [objc_opt_class() identifier];
  v30 = VCPTransactionWithName(v11);

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100006840;
  v24[3] = &unk_1002829C0;
  v27 = &v31;
  v12 = v10;
  v25 = v12;
  v28 = v29;
  v13 = v6;
  v26 = v13;
  v14 = objc_retainBlock(v24);
  v15 = objc_autoreleasePoolPush();
  v16 = [VCPHomeResidentMaintenanceTask taskWithOptions:&__NSDictionary0__struct extendTimeoutBlock:&stru_1002829E0 completionHandler:v14];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100006A60;
  v22[3] = &unk_100282A08;
  v17 = v5;
  v23 = v17;
  [v16 setCancelBlock:v22];
  v18 = +[VCPMADTaskScheduler sharedInstance];
  v19 = [v18 addBackgroundTask:v16 withQoS:17] == 0;

  if (v19)
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v21 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v21))
      {
        *buf = 138412290;
        v38 = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "%@ Failed to submit background task to task scheduler; prepare to reschedule", buf, 0xCu);
      }
    }

    (*(v13 + 2))(v13, 4294967168);
  }

  else if (MediaAnalysisLogLevel() >= 7)
  {
    v20 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v20))
    {
      *buf = 138412290;
      v38 = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "%@ Successfully submitted background task to task scheduler.", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v15);
  _Block_object_dispose(v29, 8);

  _Block_object_dispose(&v31, 8);
}

@end