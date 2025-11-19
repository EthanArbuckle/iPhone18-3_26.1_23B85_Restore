@interface IDSDaemonMIGInterface
+ (id)sharedInstance;
- (IDSDaemonMIGInterfaceDelegate)delegate;
- (void)__setupServer;
- (void)acceptIncomingGrantRequests;
- (void)denyIncomingGrantRequests;
- (void)shutDownSim2HostServer;
@end

@implementation IDSDaemonMIGInterface

+ (id)sharedInstance
{
  if (qword_100CBD358 != -1)
  {
    sub_100004630();
  }

  v3 = qword_100CBD360;

  return v3;
}

- (IDSDaemonMIGInterfaceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)__setupServer
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10043B10C;
  v13[3] = &unk_100BD6ED0;
  v13[4] = self;
  v3 = objc_retainBlock(v13);
  if (_os_feature_enabled_impl())
  {
    v4 = 0;
  }

  else
  {
    v4 = dispatch_queue_create("com.apple.identityservicesd.connection_queue", 0);
  }

  v5 = +[IDSDependencyProvider XPCAdapter];
  v6 = kIDSDaemonAuthGrantPortName;
  v7 = [v5 createServiceConnectionWithServiceName:objc_msgSend(kIDSDaemonAuthGrantPortName invalidationHandler:"UTF8String") terminationHandler:v3 peerEventHandler:v3 peerQueue:{&stru_100BDC3F8, v4}];
  server = self->_server;
  self->_server = v7;

  v9 = self->_server;
  if (!v9)
  {
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "IDSDaemonMIGInterface: Could not create server with name: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    exit(-1);
  }

  [(IDSXPCConnectionProtocol *)v9 resume];
  v10 = IMUserScopedNotification();
  notify_register_check(v10, &self->_notifyToken);
  notify_set_state(self->_notifyToken, 1uLL);
  v11 = IMUserScopedNotification();
  notify_post(v11);
}

- (void)acceptIncomingGrantRequests
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10043B2E4;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  if (qword_100CBD368 != -1)
  {
    dispatch_once(&qword_100CBD368, block);
  }
}

- (void)denyIncomingGrantRequests
{
  self->_shuttingDown = 1;
  server = self->_server;
  if (server)
  {
    [(IDSXPCConnectionProtocol *)server cancel];
    v4 = self->_server;
    self->_server = 0;
  }

  notify_set_state(self->_notifyToken, 0);
  v5 = IMUserScopedNotification();

  notify_post(v5);
}

- (void)shutDownSim2HostServer
{
  self->_shuttingDownSim2Host = 1;
  serverSim2Host = self->_serverSim2Host;
  if (serverSim2Host)
  {
    [(IDSXPCConnectionProtocol *)serverSim2Host cancel];
    v4 = self->_serverSim2Host;
    self->_serverSim2Host = 0;
  }
}

@end