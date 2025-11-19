@interface IDSTrafficMonitor
+ (id)sharedInstance;
- (BOOL)_noteActionType:(id)a3 forService:(id)a4 serviceType:(unsigned int)a5 requestor:(id)a6;
- (IDSTrafficMonitor)init;
- (void)_dailyTimerHandler;
- (void)_setDailyTimer;
- (void)_setHourlyTimer;
- (void)dealloc;
- (void)logState;
@end

@implementation IDSTrafficMonitor

+ (id)sharedInstance
{
  if (qword_100CBD1F0 != -1)
  {
    sub_10001A8FC();
  }

  v3 = qword_100CBD1F8;

  return v3;
}

- (IDSTrafficMonitor)init
{
  v6.receiver = self;
  v6.super_class = IDSTrafficMonitor;
  v2 = [(IDSTrafficMonitor *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSRecursiveLock);
    lock = v2->_lock;
    v2->_lock = v3;

    [(IDSTrafficMonitor *)v2 _setDailyTimer];
    [(IDSTrafficMonitor *)v2 _setHourlyTimer];
  }

  return v2;
}

- (void)dealloc
{
  hourlyTimer = self->_hourlyTimer;
  if (hourlyTimer)
  {
    [(IMDispatchTimer *)hourlyTimer invalidate];
    v4 = self->_hourlyTimer;
    self->_hourlyTimer = 0;
  }

  dailyTimer = self->_dailyTimer;
  if (dailyTimer)
  {
    [(IMDispatchTimer *)dailyTimer invalidate];
    v6 = self->_dailyTimer;
    self->_dailyTimer = 0;
  }

  [(NSRecursiveLock *)self->_lock lock];
  traffic = self->_traffic;
  self->_traffic = 0;

  [(NSRecursiveLock *)self->_lock unlock];
  v8.receiver = self;
  v8.super_class = IDSTrafficMonitor;
  [(IDSTrafficMonitor *)&v8 dealloc];
}

- (void)_dailyTimerHandler
{
  [(IDSTrafficMonitor *)self logState];
  [(NSRecursiveLock *)self->_lock lock];
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** Clearing traffic ***", v5, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  traffic = self->_traffic;
  self->_traffic = 0;

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)_setDailyTimer
{
  v3 = [IMDispatchTimer alloc];
  v4 = im_primary_queue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003F3028;
  v7[3] = &unk_100BD9268;
  v7[4] = self;
  v5 = [v3 initWithQueue:v4 interval:86400 repeats:1 handlerBlock:v7];
  dailyTimer = self->_dailyTimer;
  self->_dailyTimer = v5;
}

- (void)_setHourlyTimer
{
  v3 = [IMDispatchTimer alloc];
  v4 = im_primary_queue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003F30EC;
  v7[3] = &unk_100BD9268;
  v7[4] = self;
  v5 = [v3 initWithQueue:v4 interval:3600 repeats:1 handlerBlock:v7];
  hourlyTimer = self->_hourlyTimer;
  self->_hourlyTimer = v5;
}

- (BOOL)_noteActionType:(id)a3 forService:(id)a4 serviceType:(unsigned int)a5 requestor:(id)a6
{
  v7 = *&a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([(__CFString *)v10 length]&& [(__CFString *)v11 length])
  {
    v75 = v12;
    [(NSRecursiveLock *)self->_lock lock];
    traffic = self->_traffic;
    if (!traffic)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v15 = self->_traffic;
      self->_traffic = Mutable;

      traffic = self->_traffic;
    }

    v16 = [(NSMutableDictionary *)traffic objectForKey:v11];
    if (!v16)
    {
      v16 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      [(NSMutableDictionary *)self->_traffic setObject:v16 forKey:v11];
    }

    v76 = v16;
    v17 = [v16 objectForKey:v10];
    v78 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v17 longLongValue] + 1);

    [v16 setObject:v78 forKey:v10];
    if (v7 == -1)
    {
      v22 = 0;
      v20 = 0;
    }

    else
    {
      v18 = [NSString stringWithFormat:@"global-%u", v7];
      v19 = [(NSMutableDictionary *)self->_traffic objectForKey:v18];
      if (!v19)
      {
        v19 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        [(NSMutableDictionary *)self->_traffic setObject:v19 forKey:v18];
      }

      v20 = v19;
      v21 = [v19 objectForKey:v18];
      v22 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v21 longLongValue] + 1);

      [v19 setObject:v22 forKey:v18];
    }

    v74 = v20;
    v24 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413570;
      v80 = v10;
      v81 = 2112;
      v82 = v11;
      v83 = 2112;
      v84 = v75;
      v85 = 1024;
      v86 = [(__CFString *)v78 intValue];
      v87 = 1024;
      v88 = v7;
      v89 = 2112;
      v90 = v22;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "  == Incrementing %@ for service: %@   Requestor: %@  (Count: %d, GlobalCountForAdhocType%u: %@)", buf, 0x36u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v72 = v7;
      v73 = v22;
      v69 = v75;
      v71 = [(__CFString *)v78 intValue];
      v63 = v10;
      v66 = v11;
      _IDSLogV();
    }

    if (([(__CFString *)v10 isEqualToIgnoringCase:@"outgoing-messages", v63, v66, v69, v71, v72, v73]& 1) == 0 && ![(__CFString *)v10 isEqualToIgnoringCase:@"outgoing-fallback-messages"])
    {
      if ([(__CFString *)v10 isEqualToIgnoringCase:@"outgoing-server-messages"])
      {
        v77 = [NSString stringWithFormat:@"server-message-budget-daily-%@", v11];
        v36 = [IDSServerBag sharedInstanceForBagType:1];
        v27 = [v36 objectForKey:v77];

        v37 = [(__CFString *)v27 intValue];
        v23 = v37 < 1;
        if (v37 < 1)
        {
          v59 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "     No budget specified", buf, 2u);
          }

          if (!os_log_shim_legacy_logging_enabled() || (_IDSShouldLog() & 1) == 0)
          {
            goto LABEL_138;
          }
        }

        else
        {
          v38 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v80 = v27;
            v81 = 2112;
            v82 = v78;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "     Server daily budget is: %@   Current count is: %@", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v64 = v27;
            v67 = v78;
            _IDSLogV();
          }

          v39 = [(__CFString *)v78 unsignedLongLongValue:v64];
          if (v39 <= [(__CFString *)v27 unsignedLongLongValue])
          {
            goto LABEL_138;
          }

          v40 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "     **** we are over budget", buf, 2u);
          }

          if (!os_log_shim_legacy_logging_enabled() || (_IDSShouldLog() & 1) == 0)
          {
            goto LABEL_114;
          }
        }
      }

      else if ([(__CFString *)v10 isEqualToIgnoringCase:@"query-requests"])
      {
        v77 = [NSString stringWithFormat:@"query-ui-budget-daily-%@", v11];
        v47 = [IDSServerBag sharedInstanceForBagType:1];
        v27 = [v47 objectForKey:v77];

        v48 = [(__CFString *)v27 intValue];
        v23 = v48 < 1;
        if (v48 < 1)
        {
          v60 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "     No budget specified", buf, 2u);
          }

          if (!os_log_shim_legacy_logging_enabled() || (_IDSShouldLog() & 1) == 0)
          {
            goto LABEL_138;
          }
        }

        else
        {
          v49 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v80 = v27;
            v81 = 2112;
            v82 = v78;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "     Server daily budget is: %@   Current count is: %@", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v64 = v27;
            v67 = v78;
            _IDSLogV();
          }

          v50 = [(__CFString *)v78 unsignedLongLongValue:v64];
          if (v50 <= [(__CFString *)v27 unsignedLongLongValue])
          {
            goto LABEL_138;
          }

          v51 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "     **** we are over budget", buf, 2u);
          }

          if (!os_log_shim_legacy_logging_enabled() || (_IDSShouldLog() & 1) == 0)
          {
            goto LABEL_114;
          }
        }
      }

      else
      {
        if (![(__CFString *)v10 isEqualToIgnoringCase:@"queries"])
        {
          v23 = 1;
LABEL_140:
          [(NSRecursiveLock *)self->_lock unlock:v64];

          v12 = v75;
          goto LABEL_141;
        }

        v77 = [NSString stringWithFormat:@"query-budget-daily-%@", v11];
        v53 = [IDSServerBag sharedInstanceForBagType:1];
        v27 = [v53 objectForKey:v77];

        v54 = [(__CFString *)v27 intValue];
        v23 = v54 < 1;
        if (v54 < 1)
        {
          v61 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "     No budget specified", buf, 2u);
          }

          if (!os_log_shim_legacy_logging_enabled() || (_IDSShouldLog() & 1) == 0)
          {
            goto LABEL_138;
          }
        }

        else
        {
          v55 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v80 = v27;
            v81 = 2112;
            v82 = v78;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "     Server daily budget is: %@   Current count is: %@", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v64 = v27;
            v67 = v78;
            _IDSLogV();
          }

          v56 = [(__CFString *)v78 unsignedLongLongValue:v64];
          if (v56 <= [(__CFString *)v27 unsignedLongLongValue])
          {
            goto LABEL_138;
          }

          v57 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "     **** we are over budget", buf, 2u);
          }

          if (!os_log_shim_legacy_logging_enabled() || (_IDSShouldLog() & 1) == 0)
          {
            goto LABEL_114;
          }
        }
      }

      _IDSLogV();
      goto LABEL_139;
    }

    if ([(__CFString *)v10 isEqualToIgnoringCase:@"outgoing-messages"])
    {
      v25 = &stru_100C06028;
    }

    else
    {
      v25 = @"-fallback";
    }

    if (v22)
    {
      v77 = [NSString stringWithFormat:@"peer%@-message-budget-global-daily-%u", v25, v7];
      v26 = [IDSServerBag sharedInstanceForBagType:1];
      v27 = [v26 objectForKey:v77];

      if ([(__CFString *)v27 intValue]>= 1)
      {
        v28 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v80 = v25;
          v81 = 2112;
          v82 = v27;
          v83 = 2112;
          v84 = v22;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "     Server daily global%@ budget is: %@   Current count is: %@", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v68 = v27;
          v70 = v22;
          v65 = v25;
          _IDSLogV();
        }

        v29 = [(__CFString *)v22 unsignedLongLongValue:v65];
        if (v29 > [(__CFString *)v27 unsignedLongLongValue])
        {
          v30 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "     **** we are over budget", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            _IDSLogV();
          }

          v31 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v80 = v27;
            v81 = 2112;
            v82 = v22;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "     **** We are over budget - Server daily global budget is: %@   Current count is: %@", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v64 = v27;
              v67 = v22;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v64 = v27;
                v67 = v22;
                _IDSLogV();
              }
            }
          }

LABEL_114:
          v23 = 0;
LABEL_139:

          goto LABEL_140;
        }
      }
    }

    v77 = [NSString stringWithFormat:@"peer%@-message-budget-daily-%@", v25, v11];
    v32 = [IDSServerBag sharedInstanceForBagType:1];
    v27 = [v32 objectForKey:v77];

    if ([(__CFString *)v27 intValue]>= 1)
    {
      v33 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v80 = v25;
        v81 = 2112;
        v82 = v27;
        v83 = 2112;
        v84 = v78;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "     Server daily%@ budget is: %@   Current count is: %@", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v67 = v27;
        v70 = v78;
        v64 = v25;
        _IDSLogV();
      }

      v34 = [(__CFString *)v78 unsignedLongLongValue:v64];
      if (v34 > [(__CFString *)v27 unsignedLongLongValue])
      {
        v35 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v80 = v25;
          v81 = 2112;
          v82 = v27;
          v83 = 2112;
          v84 = v78;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "     **** We are over budget - Server service%@ budget is: %@   Current count is: %@", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v67 = v27;
            v70 = v78;
            v64 = v25;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v67 = v27;
              v70 = v78;
              v64 = v25;
              _IDSLogV();
            }
          }
        }

        goto LABEL_114;
      }

LABEL_138:
      v23 = 1;
      goto LABEL_139;
    }

    if (v7 == -1)
    {
      v52 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "     No budget specified", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      goto LABEL_138;
    }

    v41 = [NSString stringWithFormat:@"peer%@-message-budget-default-daily-%u", v25, v7];
    v42 = [IDSServerBag sharedInstanceForBagType:1];
    v43 = [v42 objectForKey:v41];

    if ([(__CFString *)v43 intValue]< 1)
    {
      v58 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "     No budget specified", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    else
    {
      v44 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v80 = v25;
        v81 = 2112;
        v82 = v43;
        v83 = 2112;
        v84 = v78;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "     Server daily%@ default budget is: %@   Current count is: %@", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v67 = v43;
        v70 = v78;
        v64 = v25;
        _IDSLogV();
      }

      v45 = [(__CFString *)v78 unsignedLongLongValue:v64];
      if (v45 > [(__CFString *)v43 unsignedLongLongValue])
      {
        v46 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v80 = v25;
          v81 = 2112;
          v82 = v43;
          v83 = 2112;
          v84 = v78;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "     **** We are over budget - Server daily%@ default budget is: %@   Current count is: %@", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v67 = v43;
            v70 = v78;
            v64 = v25;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v67 = v43;
              v70 = v78;
              v64 = v25;
              _IDSLogV();
            }
          }
        }

        v23 = 0;
        goto LABEL_121;
      }
    }

    v23 = 1;
LABEL_121:

    goto LABEL_139;
  }

  v23 = 1;
LABEL_141:

  return v23;
}

- (void)logState
{
  [(NSRecursiveLock *)self->_lock lock];
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "====== IDS Traffic Usage:", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(NSMutableDictionary *)self->_traffic allKeys];
  v20 = [obj countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v20)
  {
    v18 = *v27;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v26 + 1) + 8 * i);
        v4 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v31 = v3;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "   Service: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v15 = v3;
          _IDSLogV();
        }

        v5 = [(NSMutableDictionary *)self->_traffic objectForKey:v3, v15, v16];
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v6 = [v5 allKeys];
        v7 = [v6 countByEnumeratingWithState:&v22 objects:v34 count:16];
        if (v7)
        {
          v8 = *v23;
          do
          {
            for (j = 0; j != v7; j = j + 1)
            {
              if (*v23 != v8)
              {
                objc_enumerationMutation(v6);
              }

              v10 = *(*(&v22 + 1) + 8 * j);
              v11 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                v12 = [v5 objectForKey:v10];
                *buf = 138412546;
                v31 = v10;
                v32 = 2112;
                v33 = v12;
                _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "     %@: %@", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                [v5 objectForKey:v10];
                v16 = v15 = v10;
                _IDSLogV();
              }
            }

            v7 = [v6 countByEnumeratingWithState:&v22 objects:v34 count:16];
          }

          while (v7);
        }

        v13 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }
      }

      v20 = [obj countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v20);
  }

  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "====== Done", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

@end