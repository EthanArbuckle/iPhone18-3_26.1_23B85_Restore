@interface IDSRemoteURLConnectionDaemon
+ (id)sharedInstance;
- (IDSRemoteURLConnectionDaemon)init;
- (id)urlLoaderForUniqueID:(id)a3;
- (void)_pidSuspended:(int)a3;
- (void)_terminate;
- (void)addURLLoader:(id)a3;
- (void)dealloc;
- (void)removeURLLoaderForUniqueID:(id)a3;
- (void)removeURLLoadersForUniqueIDs:(id)a3;
- (void)shutdown;
@end

@implementation IDSRemoteURLConnectionDaemon

+ (id)sharedInstance
{
  if (qword_100015650 != -1)
  {
    sub_1000078F8();
  }

  v3 = qword_100015658;

  return v3;
}

- (IDSRemoteURLConnectionDaemon)init
{
  v3 = +[IMSystemMonitor sharedInstance];
  v4 = [v3 systemIsShuttingDown];

  if (v4)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = @"IDSRemoteURLConnectionDaemon";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@ System is shutting down, not creating daemon", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    v6 = 0;
  }

  else
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Building daemon", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v23.receiver = self;
    v23.super_class = IDSRemoteURLConnectionDaemon;
    v8 = [(IDSRemoteURLConnectionDaemon *)&v23 init];
    if (v8)
    {
      v9 = objc_alloc_init(BKSApplicationStateMonitor);
      stateMonitor = v8->_stateMonitor;
      v8->_stateMonitor = v9;

      objc_initWeak(buf, v8);
      v11 = v8->_stateMonitor;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000015BC;
      v21[3] = &unk_100010608;
      objc_copyWeak(&v22, buf);
      [v11 setHandler:v21];
      v12 = objc_alloc_init(NSMutableDictionary);
      uniqueIDToURLLoaderMap = v8->_uniqueIDToURLLoaderMap;
      v8->_uniqueIDToURLLoaderMap = v12;

      v14 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Opening up the grant MIG port", v20, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v15 = +[IDSRemoteURLConnectionDaemonMIGInterface sharedInstance];
      [v15 acceptIncomingGrantRequests];
      v16 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Now accepting grants, setup complete", v20, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v17 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Opening up the IDS interface", v20, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v18 = +[IDSRemoteURLConnectionDaemonIDSInterface sharedInstance];

      objc_destroyWeak(&v22);
      objc_destroyWeak(buf);
    }

    self = v8;
    v6 = self;
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[IMMobileNetworkManager sharedInstance];
  [v3 removeFastDormancyDisableToken:@"IDSRemoteURLConnectionDaemon"];

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_terminate" object:0];
  v4.receiver = self;
  v4.super_class = IDSRemoteURLConnectionDaemon;
  [(IDSRemoteURLConnectionDaemon *)&v4 dealloc];
}

- (void)_terminate
{
  v2 = +[IDSRemoteURLConnectionDaemonMIGInterface sharedInstance];
  [v2 denyIncomingGrantRequests];

  IMSyncronizeAppPreferences();
  exit(0);
}

- (void)shutdown
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Shutting down", v4, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  [(IDSRemoteURLConnectionDaemon *)self _terminate];
}

- (void)addURLLoader:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [(NSMutableDictionary *)v4 uniqueID];
    if ([v6 length])
    {
      v7 = [(NSMutableDictionary *)self->_uniqueIDToURLLoaderMap objectForKey:v6];

      if (!v7)
      {
        [(NSMutableDictionary *)self->_uniqueIDToURLLoaderMap setObject:v5 forKey:v6];
        v8 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v14 = v5;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Adding Loader %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v12 = v5;
          _IDSLogV();
        }

        v9 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          uniqueIDToURLLoaderMap = self->_uniqueIDToURLLoaderMap;
          *buf = 138412290;
          v14 = uniqueIDToURLLoaderMap;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "New map %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v12 = self->_uniqueIDToURLLoaderMap;
          _IDSLogV();
        }

        v11 = +[IMMobileNetworkManager sharedInstance];
        [v11 addFastDormancyDisableToken:@"IDSRemoteURLConnectionDaemon"];
      }
    }
  }
}

- (void)removeURLLoaderForUniqueID:(id)a3
{
  v5 = a3;
  if ([v5 length])
  {
    v4 = [NSSet setWithObject:v5];
    [(IDSRemoteURLConnectionDaemon *)self removeURLLoadersForUniqueIDs:v4];
  }
}

- (void)removeURLLoadersForUniqueIDs:(id)a3
{
  v4 = a3;
  if ([(NSMutableDictionary *)v4 count])
  {
    uniqueIDToURLLoaderMap = self->_uniqueIDToURLLoaderMap;
    v6 = [(NSMutableDictionary *)v4 allObjects];
    [(NSMutableDictionary *)uniqueIDToURLLoaderMap removeObjectsForKeys:v6];

    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Removing Loaders for uniqueIDs %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v13 = v4;
      _IDSLogV();
    }

    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = self->_uniqueIDToURLLoaderMap;
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "New map %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v13 = self->_uniqueIDToURLLoaderMap;
      _IDSLogV();
    }

    v10 = [(NSMutableDictionary *)self->_uniqueIDToURLLoaderMap allKeys];
    v11 = [v10 count] == 0;

    if (v11)
    {
      v12 = +[IMMobileNetworkManager sharedInstance];
      [v12 removeFastDormancyDisableToken:@"IDSRemoteURLConnectionDaemon"];
    }

    [(IDSRemoteURLConnectionDaemon *)self _terminateAfterDelayIfIdle];
  }
}

- (id)urlLoaderForUniqueID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(NSMutableDictionary *)self->_uniqueIDToURLLoaderMap objectForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_pidSuspended:(int)a3
{
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v6 = a3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PID: %d was suspended", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

@end