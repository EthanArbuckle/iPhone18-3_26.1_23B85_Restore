@interface IDSCredentialsDaemon
+ (id)sharedInstance;
- (IDSCredentialsDaemon)init;
- (id)credentialLoaderForUniqueID:(id)a3;
- (void)_pidSuspended:(int)a3;
- (void)_terminate;
- (void)addCredentialLoader:(id)a3;
- (void)dealloc;
- (void)removeCredentialLoaderForUniqueID:(id)a3;
- (void)shutdown;
@end

@implementation IDSCredentialsDaemon

+ (id)sharedInstance
{
  if (qword_1000154D8 != -1)
  {
    sub_1000084BC();
  }

  v3 = qword_1000154E0;

  return v3;
}

- (IDSCredentialsDaemon)init
{
  v3 = +[IMSystemMonitor sharedInstance];
  v4 = [v3 systemIsShuttingDown];

  if (v4)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = @"IDSCredentialsDaemon";
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
    v23.super_class = IDSCredentialsDaemon;
    v8 = [(IDSCredentialsDaemon *)&v23 init];
    if (v8)
    {
      v9 = objc_alloc_init(BKSApplicationStateMonitor);
      stateMonitor = v8->_stateMonitor;
      v8->_stateMonitor = v9;

      objc_initWeak(buf, v8);
      v11 = v8->_stateMonitor;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100000FB8;
      v21[3] = &unk_1000106A0;
      objc_copyWeak(&v22, buf);
      [v11 setHandler:v21];
      v12 = objc_alloc_init(NSMutableDictionary);
      uniqueIDToCredentialLoaderMap = v8->_uniqueIDToCredentialLoaderMap;
      v8->_uniqueIDToCredentialLoaderMap = v12;

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

      v15 = +[IDSCredentialsDaemonMIGInterface sharedInstance];
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

      v18 = +[IDSCredentialsDaemonIDSInterface sharedInstance];

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
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_terminate" object:0];
  v3.receiver = self;
  v3.super_class = IDSCredentialsDaemon;
  [(IDSCredentialsDaemon *)&v3 dealloc];
}

- (void)_terminate
{
  v2 = +[IDSCredentialsDaemonMIGInterface sharedInstance];
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

  [(IDSCredentialsDaemon *)self _terminate];
}

- (void)addCredentialLoader:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [(NSMutableDictionary *)v4 uniqueID];
    if ([v6 length])
    {
      v7 = [(NSMutableDictionary *)self->_uniqueIDToCredentialLoaderMap objectForKey:v6];

      if (!v7)
      {
        v8 = [(NSMutableDictionary *)self->_uniqueIDToCredentialLoaderMap allKeys];
        v9 = [v8 count];

        if (!v9)
        {
          v10 = +[IMMobileNetworkManager sharedInstance];
          [v10 addFastDormancyDisableToken:@"IDSCredentialsDaemon"];
        }

        [(NSMutableDictionary *)self->_uniqueIDToCredentialLoaderMap setObject:v5 forKey:v6];
        v11 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v16 = v5;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Adding Loader %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        v12 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          uniqueIDToCredentialLoaderMap = self->_uniqueIDToCredentialLoaderMap;
          *buf = 138412290;
          v16 = uniqueIDToCredentialLoaderMap;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "New map %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v14 = self->_uniqueIDToCredentialLoaderMap;
          _IDSLogV();
        }
      }
    }
  }
}

- (void)removeCredentialLoaderForUniqueID:(id)a3
{
  v4 = a3;
  if ([(NSMutableDictionary *)v4 length])
  {
    [(NSMutableDictionary *)self->_uniqueIDToCredentialLoaderMap removeObjectForKey:v4];
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Removing Loader for uniqueID %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      uniqueIDToCredentialLoaderMap = self->_uniqueIDToCredentialLoaderMap;
      *buf = 138412290;
      v10 = uniqueIDToCredentialLoaderMap;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "New map %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v8 = self->_uniqueIDToCredentialLoaderMap;
      _IDSLogV();
    }

    im_dispatch_after_primary_queue();
  }
}

- (id)credentialLoaderForUniqueID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(NSMutableDictionary *)self->_uniqueIDToCredentialLoaderMap objectForKey:v4];
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