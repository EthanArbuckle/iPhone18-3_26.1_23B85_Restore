@interface VCPCPUMonitor
+ (id)sharedCPUMonitor;
- (VCPCPUMonitor)init;
- (int)disableWithTimeoutSeconds:(int)seconds;
- (void)cancelRequest:(int)request;
- (void)dealloc;
@end

@implementation VCPCPUMonitor

- (VCPCPUMonitor)init
{
  v6.receiver = self;
  v6.super_class = VCPCPUMonitor;
  v2 = [(VCPCPUMonitor *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    requests = v2->_requests;
    v2->_requests = v3;

    v2->_requestID = 0;
  }

  return v2;
}

+ (id)sharedCPUMonitor
{
  if (qword_1002B8118 != -1)
  {
    sub_10001B0B8();
  }

  v3 = qword_1002B8110;

  return v3;
}

- (void)dealloc
{
  getpid();
  if (proc_set_cpumon_defaults())
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v3 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v3))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "Failed to restore default CPU limits", buf, 2u);
      }
    }
  }

  v4.receiver = self;
  v4.super_class = VCPCPUMonitor;
  [(VCPCPUMonitor *)&v4 dealloc];
}

- (int)disableWithTimeoutSeconds:(int)seconds
{
  if (seconds <= 0)
  {
    LODWORD(requestID) = -1;
  }

  else
  {
    v5 = self->_requests;
    objc_sync_enter(v5);
    v19 = +[NSDate date];
    v6 = [v19 dateByAddingTimeInterval:seconds];
    v7 = +[NSDate distantPast];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    allValues = [(NSMutableDictionary *)self->_requests allValues];
    v9 = [allValues countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v9)
    {
      v10 = *v21;
      do
      {
        v11 = 0;
        v12 = v7;
        do
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(allValues);
          }

          v7 = [v12 laterDate:*(*(&v20 + 1) + 8 * v11)];

          v11 = v11 + 1;
          v12 = v7;
        }

        while (v9 != v11);
        v9 = [allValues countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v9);
    }

    if ([v7 compare:v6] != -1)
    {
      goto LABEL_10;
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v16 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v16))
      {
        *buf = 138412290;
        v25 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "Increasing CPU limits until %@", buf, 0xCu);
      }
    }

    getpid();
    if (proc_set_cpumon_params())
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v17 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v17))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "Failed to increase CPU limits", buf, 2u);
        }
      }

      LODWORD(requestID) = -1;
    }

    else
    {
LABEL_10:
      requestID = self->_requestID;
      self->_requestID = requestID + 1;
      requests = self->_requests;
      v15 = [NSNumber numberWithInt:requestID];
      [(NSMutableDictionary *)requests setObject:v6 forKeyedSubscript:v15];
    }

    objc_sync_exit(v5);
  }

  return requestID;
}

- (void)cancelRequest:(int)request
{
  v3 = *&request;
  v5 = self->_requests;
  objc_sync_enter(v5);
  requests = self->_requests;
  v7 = [NSNumber numberWithInt:v3];
  v8 = [(NSMutableDictionary *)requests objectForKey:v7];

  if (v8)
  {
    v9 = self->_requests;
    v10 = [NSNumber numberWithInt:v3];
    [(NSMutableDictionary *)v9 removeObjectForKey:v10];

    v11 = +[NSDate distantPast];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    allValues = [(NSMutableDictionary *)self->_requests allValues];
    v13 = [allValues countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v13)
    {
      v14 = *v24;
      do
      {
        v15 = 0;
        v16 = v11;
        do
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(allValues);
          }

          v11 = [v16 laterDate:*(*(&v23 + 1) + 8 * v15)];

          v15 = v15 + 1;
          v16 = v11;
        }

        while (v13 != v15);
        v13 = [allValues countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v13);
    }

    if ([v11 compare:v8] != -1)
    {
      goto LABEL_30;
    }

    v17 = +[NSDate date];
    if ([v17 compare:v11] == -1)
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v22 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v22))
        {
          *buf = 138412290;
          v28 = v11;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "Updating CPU limits timeout to %@", buf, 0xCu);
        }
      }

      [v11 timeIntervalSinceDate:v17];
      getpid();
      if (!proc_set_cpumon_params())
      {
        goto LABEL_29;
      }

      if (MediaAnalysisLogLevel() < 4)
      {
        goto LABEL_29;
      }

      v19 = VCPLogToOSLogType[4];
      if (!os_log_type_enabled(&_os_log_default, v19))
      {
        goto LABEL_29;
      }

      *buf = 0;
      v20 = "Failed to update CPU limits timeout";
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v18 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v18))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "Restoring default CPU limits", buf, 2u);
        }
      }

      getpid();
      if (!proc_set_cpumon_defaults())
      {
        goto LABEL_29;
      }

      if (MediaAnalysisLogLevel() < 4)
      {
        goto LABEL_29;
      }

      v19 = VCPLogToOSLogType[4];
      if (!os_log_type_enabled(&_os_log_default, v19))
      {
        goto LABEL_29;
      }

      *buf = 0;
      v20 = "Failed to restore default CPU limits";
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v19, v20, buf, 2u);
LABEL_29:

LABEL_30:
    goto LABEL_31;
  }

  if (MediaAnalysisLogLevel() >= 4)
  {
    v21 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v21))
    {
      *buf = 67109120;
      LODWORD(v28) = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "Invalid CPU monitor request specified (%d)", buf, 8u);
    }
  }

LABEL_31:

  objc_sync_exit(v5);
}

@end