@interface ESADefaultStorageProvider
+ (id)activityLogFile;
+ (id)containerBaseURL;
- (id)readStoredLog;
- (void)storeLog:(id)a3;
@end

@implementation ESADefaultStorageProvider

+ (id)containerBaseURL
{
  if (qword_100084A68 != -1)
  {
    sub_100048348();
  }

  if (qword_100084A60)
  {
    v2 = qword_100084A60;
  }

  else
  {
    v3 = NSTemporaryDirectory();
    v2 = [NSURL fileURLWithPath:v3];
  }

  return v2;
}

+ (id)activityLogFile
{
  v2 = [a1 containerBaseURL];
  v3 = [v2 URLByAppendingPathComponent:@"sbd-operation-log.plist"];

  return v3;
}

- (id)readStoredLog
{
  v2 = +[ESADefaultStorageProvider activityLogFile];
  v3 = CloudServicesLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v18 = objc_opt_class();
    v19 = 2112;
    v20 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@: Attempting to load activity log at %@", buf, 0x16u);
  }

  v16 = 0;
  v4 = [NSData dataWithContentsOfURL:v2 options:0 error:&v16];
  v5 = v16;
  if (v4)
  {
    v15 = v5;
    v6 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v15];
    v7 = v15;

    v8 = CloudServicesLog();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10004845C();
      }

      v10 = 0;
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = [v6 activities];
        v13 = [v12 count];
        *buf = 138412546;
        v18 = v11;
        v19 = 2048;
        v20 = v13;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@: Unarchived %lu activity logs", buf, 0x16u);
      }

      v6 = v6;
      v10 = v6;
    }
  }

  else
  {
    v6 = CloudServicesLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000484DC();
    }

    v10 = 0;
    v7 = v5;
  }

  return v10;
}

- (void)storeLog:(id)a3
{
  v3 = a3;
  v4 = +[ESADefaultStorageProvider activityLogFile];
  v5 = CloudServicesLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = [v3 activities];
    *buf = 138412802;
    v21 = v6;
    v22 = 2048;
    v23 = [v7 count];
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@: Attempting to write %lu activity logs to %@", buf, 0x20u);
  }

  v19 = 0;
  v8 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v19];
  v9 = v19;
  v10 = v9;
  if (v8)
  {
    v18 = v9;
    v11 = [v8 writeToURL:v4 options:1 error:&v18];
    v12 = v18;

    v13 = CloudServicesLog();
    v14 = v13;
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = objc_opt_class();
        v16 = [v3 activities];
        v17 = [v16 count];
        *buf = 138412546;
        v21 = v15;
        v22 = 2048;
        v23 = v17;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%@: Wrote %lu activity logs to disk", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10004855C();
    }

    v10 = v12;
  }

  else
  {
    v14 = CloudServicesLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000485DC();
    }
  }
}

@end