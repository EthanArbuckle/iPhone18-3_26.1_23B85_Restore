@interface IDSDeviceConnectionAWDMetrics
+ (id)sharedInstance;
- (BOOL)_canReportMetric:(id)metric;
- (IDSDeviceConnectionAWDMetrics)init;
- (id)_currentMetrics;
- (id)awdMetricsForConnectionUUID:(id)d;
- (void)_reportAndRemoveForConnectionUUID:(id)d;
- (void)_setCreatedAt:(id)at forConnectionUUID:(id)d;
- (void)setClientInitTime:(double)time forConnectionUUID:(id)d;
- (void)setClientOpenSocketCompletionTime:(double)time forConnectionUUID:(id)d;
- (void)setConnectionInitTime:(double)time forConnectionUUID:(id)d;
- (void)setDaemonOpenSocketCompletionTime:(double)time forConnectionUUID:(id)d;
- (void)setDaemonOpenSocketTime:(double)time forConnectionUUID:(id)d;
- (void)setFirstPacketReceiveTime:(double)time forConnectionUUID:(id)d;
- (void)setServiceName:(id)name forConnectionUUID:(id)d;
- (void)setSuccess:(BOOL)success forConnectionUUID:(id)d;
@end

@implementation IDSDeviceConnectionAWDMetrics

+ (id)sharedInstance
{
  if (qword_100CBF498 != -1)
  {
    sub_10093101C();
  }

  if (qword_100CBF4A0 != -1)
  {
    sub_100931030();
  }

  if (qword_100CBF4A8 != -1)
  {
    sub_100931044();
  }

  v2 = qword_100CBF4B0;

  return v2;
}

- (IDSDeviceConnectionAWDMetrics)init
{
  v6.receiver = self;
  v6.super_class = IDSDeviceConnectionAWDMetrics;
  v2 = [(IDSDeviceConnectionAWDMetrics *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    metrics = v2->_metrics;
    v2->_metrics = v3;

    v2->_writeLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (id)awdMetricsForConnectionUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_writeLock);
  v5 = [(NSMutableDictionary *)self->_metrics objectForKeyedSubscript:dCopy];
  if (!v5)
  {
    v5 = +[NSMutableDictionary dictionary];
    v6 = [dCopy copy];
    [v5 setObject:v6 forKeyedSubscript:IDSDeviceConnectionAWDMetricsConnectionUUIDKey];

    ids_monotonic_time();
    v7 = [NSNumber numberWithDouble:?];
    [v5 setObject:v7 forKeyedSubscript:IDSDeviceConnectionAWDMetricsCreatedAtKey];

    [(NSMutableDictionary *)self->_metrics setObject:v5 forKeyedSubscript:dCopy];
  }

  v8 = [(NSMutableDictionary *)self->_metrics objectForKeyedSubscript:dCopy];
  v9 = [v8 mutableCopy];

  os_unfair_lock_unlock(&self->_writeLock);

  return v9;
}

- (void)_reportAndRemoveForConnectionUUID:(id)d
{
  dCopy = d;
  ids_monotonic_time();
  v6 = v5;
  v7 = +[NSMutableArray array];
  os_unfair_lock_lock(&self->_writeLock);
  metrics = self->_metrics;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1006AE470;
  v14[3] = &unk_100BE42F0;
  v16 = v6;
  v9 = v7;
  v15 = v9;
  [(NSMutableDictionary *)metrics enumerateKeysAndObjectsUsingBlock:v14];
  v10 = [(NSMutableDictionary *)self->_metrics objectForKeyedSubscript:dCopy];

  if (v10)
  {
    v11 = [(NSMutableDictionary *)self->_metrics objectForKeyedSubscript:dCopy];
    [v9 addObject:v11];
  }

  else
  {
    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = dCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Can't find AWD metrics for %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }

  os_unfair_lock_unlock(&self->_writeLock);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1006AE504;
  v13[3] = &unk_100BD8A48;
  v13[4] = self;
  [v9 enumerateObjectsUsingBlock:v13];
}

- (void)setServiceName:(id)name forConnectionUUID:(id)d
{
  nameCopy = name;
  dCopy = d;
  os_unfair_lock_lock(&self->_writeLock);
  v8 = [(NSMutableDictionary *)self->_metrics objectForKeyedSubscript:dCopy];
  if (v8)
  {
    v9 = [nameCopy copy];
    [v8 setObject:v9 forKeyedSubscript:IDSDeviceConnectionAWDMetricsServiceNameKey];

    os_unfair_lock_unlock(&self->_writeLock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_writeLock);
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v12 = dCopy;
      v13 = 2112;
      v14 = IDSDeviceConnectionAWDMetricsServiceNameKey;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "There is no metric dictionary for %@, %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }
}

- (void)setClientInitTime:(double)time forConnectionUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_writeLock);
  v7 = [(NSMutableDictionary *)self->_metrics objectForKeyedSubscript:dCopy];
  if (v7)
  {
    v8 = [NSNumber numberWithDouble:time];
    [v7 setObject:v8 forKeyedSubscript:IDSDeviceConnectionAWDMetricsClientInitKey];

    os_unfair_lock_unlock(&self->_writeLock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_writeLock);
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v11 = dCopy;
      v12 = 2112;
      v13 = IDSDeviceConnectionAWDMetricsClientInitKey;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "There is no metric dictionary for %@, %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }
}

- (void)setConnectionInitTime:(double)time forConnectionUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_writeLock);
  v7 = [(NSMutableDictionary *)self->_metrics objectForKeyedSubscript:dCopy];
  if (v7)
  {
    v8 = [NSNumber numberWithDouble:time];
    [v7 setObject:v8 forKeyedSubscript:IDSDeviceConnectionAWDMetricsConnectionInitKey];

    os_unfair_lock_unlock(&self->_writeLock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_writeLock);
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v11 = dCopy;
      v12 = 2112;
      v13 = IDSDeviceConnectionAWDMetricsConnectionInitKey;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "There is no metric dictionary for %@, %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }
}

- (void)setDaemonOpenSocketTime:(double)time forConnectionUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_writeLock);
  v7 = [(NSMutableDictionary *)self->_metrics objectForKeyedSubscript:dCopy];
  if (v7)
  {
    v8 = [NSNumber numberWithDouble:time];
    [v7 setObject:v8 forKeyedSubscript:IDSDeviceConnectionAWDMetricsDaemonOpenSocketKey];
  }

  os_unfair_lock_unlock(&self->_writeLock);
  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = dCopy;
    v12 = 2112;
    v13 = IDSDeviceConnectionAWDMetricsDaemonOpenSocketKey;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "There is no metric dictionary for %@, %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }
}

- (void)setFirstPacketReceiveTime:(double)time forConnectionUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_writeLock);
  v7 = [(NSMutableDictionary *)self->_metrics objectForKeyedSubscript:dCopy];
  if (v7)
  {
    v8 = [NSNumber numberWithDouble:time];
    [v7 setObject:v8 forKeyedSubscript:IDSDeviceConnectionAWDMetricsFirstDataPacketReceiveKey];

    os_unfair_lock_unlock(&self->_writeLock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_writeLock);
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v11 = dCopy;
      v12 = 2112;
      v13 = IDSDeviceConnectionAWDMetricsFirstDataPacketReceiveKey;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "There is no metric dictionary for %@, %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }
}

- (void)setDaemonOpenSocketCompletionTime:(double)time forConnectionUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_writeLock);
  v7 = [(NSMutableDictionary *)self->_metrics objectForKeyedSubscript:dCopy];
  if (v7)
  {
    v8 = [NSNumber numberWithDouble:time];
    [v7 setObject:v8 forKeyedSubscript:IDSDeviceConnectionAWDMetricsDaemonCompletionHandlerKey];

    os_unfair_lock_unlock(&self->_writeLock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_writeLock);
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v11 = dCopy;
      v12 = 2112;
      v13 = IDSDeviceConnectionAWDMetricsDaemonCompletionHandlerKey;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "There is no metric dictionary for %@, %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }
}

- (void)setClientOpenSocketCompletionTime:(double)time forConnectionUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_writeLock);
  v7 = [(NSMutableDictionary *)self->_metrics objectForKeyedSubscript:dCopy];
  if (v7)
  {
    v8 = [NSNumber numberWithDouble:time];
    [v7 setObject:v8 forKeyedSubscript:IDSDeviceConnectionAWDMetricsClientOpenSocketCompletionKey];

    os_unfair_lock_unlock(&self->_writeLock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_writeLock);
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v11 = dCopy;
      v12 = 2112;
      v13 = IDSDeviceConnectionAWDMetricsClientOpenSocketCompletionKey;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "There is no metric dictionary for %@, %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }
}

- (void)setSuccess:(BOOL)success forConnectionUUID:(id)d
{
  successCopy = success;
  dCopy = d;
  os_unfair_lock_lock(&self->_writeLock);
  v7 = [(NSMutableDictionary *)self->_metrics objectForKeyedSubscript:dCopy];
  if (v7)
  {
    v8 = [NSNumber numberWithBool:successCopy];
    [v7 setObject:v8 forKeyedSubscript:IDSDeviceConnectionAWDMetricsSuccessKey];

    os_unfair_lock_unlock(&self->_writeLock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_writeLock);
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v11 = dCopy;
      v12 = 2112;
      v13 = IDSDeviceConnectionAWDMetricsSuccessKey;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "There is no metric dictionary for %@, %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }
}

- (void)_setCreatedAt:(id)at forConnectionUUID:(id)d
{
  atCopy = at;
  dCopy = d;
  os_unfair_lock_lock(&self->_writeLock);
  v8 = [(NSMutableDictionary *)self->_metrics objectForKeyedSubscript:dCopy];
  if (v8)
  {
    v9 = [atCopy copy];
    [v8 setObject:v9 forKeyedSubscript:IDSDeviceConnectionAWDMetricsCreatedAtKey];

    os_unfair_lock_unlock(&self->_writeLock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_writeLock);
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v12 = dCopy;
      v13 = 2112;
      v14 = IDSDeviceConnectionAWDMetricsCreatedAtKey;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "There is no metric dictionary for %@, %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }
}

- (BOOL)_canReportMetric:(id)metric
{
  v3 = [metric objectForKeyedSubscript:IDSDeviceConnectionAWDMetricsClientOpenSocketCompletionKey];
  v4 = v3 != 0;

  return v4;
}

- (id)_currentMetrics
{
  os_unfair_lock_lock(&self->_writeLock);
  v3 = [(NSMutableDictionary *)self->_metrics copy];
  os_unfair_lock_unlock(&self->_writeLock);

  return v3;
}

@end