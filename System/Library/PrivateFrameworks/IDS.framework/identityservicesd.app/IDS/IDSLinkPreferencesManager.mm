@interface IDSLinkPreferencesManager
+ (id)sharedInstance;
- (BOOL)_validatePreferences:(id)a3 forService:(id)a4;
- (IDSLinkPreferencesManager)init;
- (id)accumulativePreferencesForAllServices;
- (id)preferencesForService:(id)a3;
- (void)_logRequestInPowerDictionaryForService:(id)a3 preferences:(id)a4;
- (void)dealloc;
- (void)resetPreferencesForAllServices;
- (void)updateService:(id)a3 withPreferences:(id)a4;
@end

@implementation IDSLinkPreferencesManager

+ (id)sharedInstance
{
  if (qword_100CBD370 != -1)
  {
    sub_100015714();
  }

  v3 = qword_100CBD378;

  return v3;
}

- (IDSLinkPreferencesManager)init
{
  v10.receiver = self;
  v10.super_class = IDSLinkPreferencesManager;
  v2 = [(IDSLinkPreferencesManager *)&v10 init];
  v3 = v2;
  if (v2)
  {
    pthread_mutex_init(&v2->_preferencesLock, 0);
    v4 = objc_alloc_init(NSMutableDictionary);
    servicesWithPreferences = v3->_servicesWithPreferences;
    v3->_servicesWithPreferences = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("IDSPowerLogQueue", v6);
    power_log_queue = v3->_power_log_queue;
    v3->_power_log_queue = v7;
  }

  return v3;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_preferencesLock);
  servicesWithPreferences = self->_servicesWithPreferences;
  self->_servicesWithPreferences = 0;

  power_log_queue = self->_power_log_queue;
  self->_power_log_queue = 0;

  v5.receiver = self;
  v5.super_class = IDSLinkPreferencesManager;
  [(IDSLinkPreferencesManager *)&v5 dealloc];
}

- (void)updateService:(id)a3 withPreferences:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(IDSLinkPreferencesManager *)self _validatePreferences:v7 forService:v6])
  {
    v8 = [v7 mutableCopy];
    v9 = +[NSDate date];
    [v8 setObject:v9 forKey:@"Timestamp"];
    v10 = [NSDictionary dictionaryWithDictionary:v8];

    pthread_mutex_lock(&self->_preferencesLock);
    [(NSMutableDictionary *)self->_servicesWithPreferences setObject:v10 forKey:v6];
    pthread_mutex_unlock(&self->_preferencesLock);
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v15 = v6;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "updateService: %{public}@, withPreferences: %{public}@.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v12 = v6;
      v13 = v10;
      _IDSLogV();
    }

    [(IDSLinkPreferencesManager *)self _logRequestInPowerDictionaryForService:v6 preferences:v8, v12, v13];
  }

  else
  {
    v10 = v7;
  }
}

- (void)resetPreferencesForAllServices
{
  pthread_mutex_lock(&self->_preferencesLock);
  v3 = [(NSMutableDictionary *)self->_servicesWithPreferences mutableCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v5)
  {
    v15 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v15)
        {
          objc_enumerationMutation(v4);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = [v4 objectForKey:v7];
        v9 = [v8 mutableCopy];
        [v9 setObject:&off_100C3C6D0 forKey:@"PacketsPerSecond"];
        [v9 setObject:&off_100C3C6D0 forKey:@"InputBytesPerSecond"];
        [v9 setObject:&off_100C3C6D0 forKey:@"OutputBytesPerSecond"];
        [v9 removeObjectForKey:@"Intent"];
        v10 = +[NSDate date];
        [v9 setObject:v10 forKey:@"Timestamp"];
        v11 = [NSDictionary dictionaryWithDictionary:v9];

        v12 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v21 = v7;
          v22 = 2114;
          v23 = v10;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Resetting preferences to 0 for service: %{public}@, at time: %{public}@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v13 = v7;
          v14 = v10;
          _IDSLogV();
        }

        [(NSMutableDictionary *)self->_servicesWithPreferences setObject:v11 forKey:v7, v13, v14];
        [(IDSLinkPreferencesManager *)self _logRequestInPowerDictionaryForService:v7 preferences:v9];
      }

      v5 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v5);
  }

  pthread_mutex_unlock(&self->_preferencesLock);
}

- (BOOL)_validatePreferences:(id)a3 forService:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [v5 objectForKey:@"PacketsPerSecond"];
    v8 = [v5 objectForKey:@"InputBytesPerSecond"];
    v9 = [v5 objectForKey:@"OutputBytesPerSecond"];
    if (([v7 intValue] & 0x80000000) != 0 || (objc_msgSend(v8, "intValue") & 0x80000000) != 0 || (objc_msgSend(v9, "intValue") & 0x80000000) != 0)
    {
      v11 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v14 = v6;
        v15 = 2114;
        v16 = v5;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Cannot update preferences for service: %{public}@ with negative values, preferences: %{public}@.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v10 = 0;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)preferencesForService:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_preferencesLock);
  v5 = [(NSMutableDictionary *)self->_servicesWithPreferences objectForKey:v4];

  pthread_mutex_unlock(&self->_preferencesLock);

  return v5;
}

- (id)accumulativePreferencesForAllServices
{
  v24 = objc_alloc_init(NSMutableDictionary);
  pthread_mutex_lock(&self->_preferencesLock);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v28 = self;
  obj = self->_servicesWithPreferences;
  v29 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v29)
  {
    v31 = 0;
    v30 = 0;
    LODWORD(v3) = 0;
    v26 = *v33;
    v27 = 0;
    do
    {
      for (i = 0; i != v29; i = i + 1)
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v32 + 1) + 8 * i);
        v6 = [(NSMutableDictionary *)v28->_servicesWithPreferences objectForKey:v5];
        v7 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v37 = v5;
          v38 = 2114;
          v39 = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Getting accumulativePreferencesForAllServices. Service: %{public}@, preferences: %{public}@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v22 = v5;
          v23 = v6;
          _IDSLogV();
        }

        v8 = [v6 objectForKey:{@"PacketsPerSecond", v22, v23}];
        v9 = [v6 objectForKey:@"InputBytesPerSecond"];
        v10 = [v6 objectForKey:@"OutputBytesPerSecond"];
        v11 = [v6 objectForKey:@"Intent"];
        v12 = [v8 unsignedIntValue];
        v13 = [v9 unsignedIntValue];
        v14 = [v10 unsignedIntValue];
        if ((v31 & 0x100000000) != 0)
        {
          BYTE4(v31) = 1;
        }

        else
        {
          HIDWORD(v31) = [v11 isEqualToString:@"forceBTClassic"];
          v15 = v27;
          if (HIDWORD(v31))
          {
            v15 = @"forceBTClassic";
          }

          v27 = v15;
        }

        v3 = v12 + v3;
        v30 += v13;
        LODWORD(v31) = v14 + v31;
      }

      v29 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v29);
  }

  else
  {
    v27 = 0;
    v30 = 0;
    LODWORD(v31) = 0;
    v3 = 0;
  }

  pthread_mutex_unlock(&v28->_preferencesLock);
  v16 = [NSNumber numberWithUnsignedInt:v3];
  [v24 setObject:v16 forKeyedSubscript:@"PacketsPerSecond"];

  v17 = [NSNumber numberWithUnsignedInt:v30];
  [v24 setObject:v17 forKeyedSubscript:@"InputBytesPerSecond"];

  v18 = [NSNumber numberWithUnsignedInt:v31];
  [v24 setObject:v18 forKeyedSubscript:@"OutputBytesPerSecond"];

  [v24 setObject:v27 forKeyedSubscript:@"Intent"];
  v19 = +[NSDate date];
  [v24 setObject:v19 forKeyedSubscript:@"Timestamp"];

  v20 = [NSDictionary dictionaryWithDictionary:v24];

  return v20;
}

- (void)_logRequestInPowerDictionaryForService:(id)a3 preferences:(id)a4
{
  v6 = a4;
  [v6 setObject:a3 forKey:@"ServiceName"];
  power_log_queue = self->_power_log_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10043FCE0;
  block[3] = &unk_100BD6ED0;
  v10 = v6;
  v8 = v6;
  dispatch_async(power_log_queue, block);
}

@end