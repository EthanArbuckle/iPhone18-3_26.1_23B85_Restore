@interface MADPhotosPECBackgroundSystemTask
+ (id)sharedTask;
- (void)ensureTaskSubmission;
@end

@implementation MADPhotosPECBackgroundSystemTask

+ (id)sharedTask
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006B10;
  block[3] = &unk_100282998;
  block[4] = a1;
  if (qword_1002B80A8 != -1)
  {
    dispatch_once(&qword_1002B80A8, block);
  }

  v2 = qword_1002B80A0;

  return v2;
}

- (void)ensureTaskSubmission
{
  v2 = [objc_opt_class() identifier];
  v3 = +[BGSystemTaskScheduler sharedScheduler];
  v4 = [v3 taskRequestForIdentifier:v2];

  if (v4)
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v5 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v5))
      {
        v6 = 138412290;
        v7 = v2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ task already exists, no need to reschedule", &v6, 0xCu);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100006CFC(v2);
    }

    +[VCPMADPECSingleRequestProcessingTask reschedule];
  }
}

@end