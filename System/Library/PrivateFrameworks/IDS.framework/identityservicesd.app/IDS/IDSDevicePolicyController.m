@interface IDSDevicePolicyController
+ (id)sharedInstance;
- (BOOL)shouldBlackOutDeviceWithCbuuid:(id)a3;
- (IDSDevicePolicyController)init;
- (void)endFairplayAuthenticationForDeviceWithCbuuid:(id)a3;
- (void)startFairplayAuthenticationForDeviceWithCbuuid:(id)a3;
@end

@implementation IDSDevicePolicyController

+ (id)sharedInstance
{
  if (qword_100CBF580 != -1)
  {
    sub_100019E20();
  }

  v3 = qword_100CBF588;

  return v3;
}

- (IDSDevicePolicyController)init
{
  v7.receiver = self;
  v7.super_class = IDSDevicePolicyController;
  v2 = [(IDSDevicePolicyController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(NSMutableDictionary);
    devices = v3->_devices;
    v3->_devices = v4;
  }

  return v3;
}

- (void)startFairplayAuthenticationForDeviceWithCbuuid:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_devices objectForKey:v4];
  v6 = [v5 objectForKey:@"start-count"];
  v7 = [v6 integerValue];

  devices = self->_devices;
  v18[0] = @"start-count";
  v9 = [NSNumber numberWithInteger:v7 + 1];
  v18[1] = @"start-time";
  v19[0] = v9;
  ids_monotonic_time();
  v10 = [NSNumber numberWithDouble:?];
  v19[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  [(NSMutableDictionary *)devices setObject:v11 forKey:v4];

  v12 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = self->_devices;
    *buf = 138412546;
    v15 = v4;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "started policy for %@, devices: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)endFairplayAuthenticationForDeviceWithCbuuid:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_devices removeObjectForKey:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)shouldBlackOutDeviceWithCbuuid:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    devices = self->_devices;
    *buf = 138412290;
    v22 = *&devices;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "checking blackout for %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v20 = self->_devices;
    _IDSLogV();
  }

  v7 = [(NSMutableDictionary *)self->_devices objectForKey:v4, v20];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_22;
  }

  v9 = [v7 objectForKey:@"start-time"];
  [v9 doubleValue];
  v11 = v10;

  ids_monotonic_time();
  v13 = v12 - v11;
  if (v13 >= 10800.0)
  {
    [(NSMutableDictionary *)self->_devices removeObjectForKey:v4];
    v18 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v22 = v13;
      v23 = 1024;
      v24 = 10800;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "repeated fairplay failure blackout lifted (elapse %0.6lf > window %0.1d)", buf, 0x12u);
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

    goto LABEL_22;
  }

  v14 = [v8 objectForKey:@"start-count"];
  v15 = [v14 integerValue];

  if (v15 < 5)
  {
LABEL_22:
    v17 = 0;
    goto LABEL_23;
  }

  v16 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v22 = 10800.0 - v13;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "blackout due to repeated fairplay failure (blackout ending in %0.6lf seconds)", buf, 0xCu);
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

  v17 = 1;
LABEL_23:

  os_unfair_lock_unlock(&self->_lock);
  return v17;
}

@end