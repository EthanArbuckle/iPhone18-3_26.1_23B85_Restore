@interface IDSDaemonMIGQueryInterface
+ (id)sharedInstance;
- (IDSDaemonMIGQueryInterfaceDelegate)delegate;
- (void)__setupServer;
- (void)acceptIncomingGrantRequests;
- (void)denyIncomingGrantRequests;
@end

@implementation IDSDaemonMIGQueryInterface

+ (id)sharedInstance
{
  if (qword_100CBF338 != -1)
  {
    sub_10092D84C();
  }

  v3 = qword_100CBF340;

  return v3;
}

- (void)__setupServer
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Accepting Incoming Grant Query Requests", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    MarcoLogMadridLevel();
    IMLogString();
    if (_IMWillLog())
    {
      _IMAlwaysLog();
    }
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100614274;
  v13[3] = &unk_100BD6ED0;
  v13[4] = self;
  v4 = objc_retainBlock(v13);
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create(0, v5);

  v7 = +[IDSDependencyProvider XPCAdapter];
  v8 = kIDSDaemonQueryAuthGrantPortName;
  v9 = [v7 createServiceConnectionWithServiceName:objc_msgSend(kIDSDaemonQueryAuthGrantPortName invalidationHandler:"UTF8String") terminationHandler:v4 peerEventHandler:v4 peerQueue:{&stru_100BE2488, v6}];
  server = self->_server;
  p_server = &self->_server;
  *p_server = v9;

  if (!*p_server)
  {
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "IDSDaemonMIGQueryInterface: Could not create server with name: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      MarcoLogMadridLevel();
      IMLogString();
      _IMWarn();
    }

    exit(-1);
  }

  [*p_server resume];
}

- (void)acceptIncomingGrantRequests
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10061445C;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  if (qword_100CBF348 != -1)
  {
    dispatch_once(&qword_100CBF348, block);
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
}

- (IDSDaemonMIGQueryInterfaceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end