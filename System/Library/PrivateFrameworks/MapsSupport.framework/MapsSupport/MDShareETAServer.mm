@interface MDShareETAServer
- (MDShareETAServer)initWithState:(id)a3;
- (void)_updateSharedETAServerState;
- (void)dealloc;
- (void)updateSharedETAServerState;
@end

@implementation MDShareETAServer

- (MDShareETAServer)initWithState:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = MDShareETAServer;
  v6 = [(MDShareETAServer *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_state, a3);
    +[MSPSharedTripServer migrateIfNeeded];
    objc_initWeak(&location, v7);
    v8 = &_dispatch_main_q;
    v16[1] = _NSConcreteStackBlock;
    v16[2] = 3221225472;
    v16[3] = sub_100011F6C;
    v16[4] = &unk_10003D0A8;
    objc_copyWeak(&v17, &location);
    v9 = GEOConfigMSPShareETAUserEnabled[1];
    v10 = _GEOConfigAddBlockListenerForKey();
    userDisabledDefaultListener = v7->_userDisabledDefaultListener;
    v7->_userDisabledDefaultListener = v10;

    objc_copyWeak(v16, &location);
    v12 = GEOConfigMSPSharedTripServerEnabled[1];
    v13 = _GEOConfigAddBlockListenerForKey();
    serverDisabledDefaultListener = v7->_serverDisabledDefaultListener;
    v7->_serverDisabledDefaultListener = v13;

    [(MDShareETAServer *)v7 _updateSharedETAServerState];
    objc_destroyWeak(v16);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (void)dealloc
{
  userDisabledDefaultListener = self->_userDisabledDefaultListener;
  GEOConfigRemoveBlockListener();
  serverDisabledDefaultListener = self->_serverDisabledDefaultListener;
  GEOConfigRemoveBlockListener();
  v5 = self->_userDisabledDefaultListener;
  self->_userDisabledDefaultListener = 0;

  v6 = self->_serverDisabledDefaultListener;
  self->_serverDisabledDefaultListener = 0;

  v7.receiver = self;
  v7.super_class = MDShareETAServer;
  [(MDShareETAServer *)&v7 dealloc];
}

- (void)updateSharedETAServerState
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "updateSharedETAServerState", buf, 2u);
  }

  updateSharedETAServerTimer = self->_updateSharedETAServerTimer;
  if (updateSharedETAServerTimer)
  {
    [(NSTimer *)updateSharedETAServerTimer invalidate];
    v5 = self->_updateSharedETAServerTimer;
    self->_updateSharedETAServerTimer = 0;
  }

  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Scheduling update of SharedTripServer in 2s", v9, 2u);
  }

  v7 = [NSTimer scheduledTimerWithTimeInterval:self target:"_updateSharedETAServerState" selector:0 userInfo:0 repeats:2.0];
  v8 = self->_updateSharedETAServerTimer;
  self->_updateSharedETAServerTimer = v7;
}

- (void)_updateSharedETAServerState
{
  [(NSTimer *)self->_updateSharedETAServerTimer invalidate];
  updateSharedETAServerTimer = self->_updateSharedETAServerTimer;
  self->_updateSharedETAServerTimer = 0;

  v4 = MSPSharedTripEnabled();
  v5 = self->_sharedTripServer;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = @"NO";
    if (v4)
    {
      v7 = @"YES";
    }

    v18 = 138412546;
    v19 = v7;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Will update SharedTripServer state if needed (enabled: %@, server: %@)", &v18, 0x16u);
  }

  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v4;
  }

  if (v8 == 1)
  {
    v9 = objc_alloc_init(MSPSharedTripServer);
    sharedTripServer = self->_sharedTripServer;
    self->_sharedTripServer = v9;

    v11 = self->_sharedTripServer;
    v12 = [(MDState *)self->_state notificationCenter];
    [(MSPSharedTripServer *)v11 _setNotificationCenter:v12];

    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = self->_sharedTripServer;
      v18 = 138412290;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Create new SharedTripServer: %@", &v18, 0xCu);
    }

LABEL_18:

    goto LABEL_19;
  }

  if (v5)
  {
    v15 = v4;
  }

  else
  {
    v15 = 1;
  }

  if ((v15 & 1) == 0)
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = self->_sharedTripServer;
      v18 = 138412290;
      v19 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Clean and nil out SharedTripServer: %@", &v18, 0xCu);
    }

    [(MSPSharedTripServer *)self->_sharedTripServer cleanConnections];
    v13 = self->_sharedTripServer;
    self->_sharedTripServer = 0;
    goto LABEL_18;
  }

LABEL_19:
}

@end