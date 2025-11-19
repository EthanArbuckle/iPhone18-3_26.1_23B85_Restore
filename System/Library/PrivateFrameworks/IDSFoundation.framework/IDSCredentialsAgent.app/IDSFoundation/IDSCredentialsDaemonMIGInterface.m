@interface IDSCredentialsDaemonMIGInterface
+ (id)sharedInstance;
- (void)__setupServer;
- (void)acceptIncomingGrantRequests;
- (void)denyIncomingGrantRequests;
@end

@implementation IDSCredentialsDaemonMIGInterface

+ (id)sharedInstance
{
  if (qword_1000154F0 != -1)
  {
    sub_1000084E4();
  }

  v3 = qword_1000154F8;

  return v3;
}

- (void)__setupServer
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Accepting Incoming Grant Requests", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100007468;
  v11[3] = &unk_1000106C8;
  v11[4] = self;
  v4 = objc_retainBlock(v11);
  v5 = kIDSRemoteCredentialDaemonAuthGrantPortName;
  [kIDSRemoteCredentialDaemonAuthGrantPortName UTF8String];
  v6 = dispatch_get_global_queue(2, 0);
  v7 = IMXPCCreateServerConnection();
  server = self->_server;
  p_server = &self->_server;
  *p_server = v7;

  if (!*p_server)
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "IDSRemoteURLConnectionDaemonMIGInterface: Could not create server with name: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    exit(-1);
  }

  xpc_connection_resume(*p_server);
}

- (void)acceptIncomingGrantRequests
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007C70;
  block[3] = &unk_1000106C8;
  block[4] = self;
  if (qword_100015500 != -1)
  {
    dispatch_once(&qword_100015500, block);
  }
}

- (void)denyIncomingGrantRequests
{
  self->_shuttingDown = 1;
  server = self->_server;
  if (server)
  {
    xpc_connection_cancel(server);
    v4 = self->_server;
    self->_server = 0;
  }
}

@end