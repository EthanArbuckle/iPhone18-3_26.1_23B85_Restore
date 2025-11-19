@interface IMDaemonMIGInterface
+ (id)sharedInstance;
- (void)__setupServer;
- (void)acceptIncomingGrantRequests;
- (void)denyIncomingGrantRequests;
@end

@implementation IMDaemonMIGInterface

+ (id)sharedInstance
{
  if (qword_10008B7E8 != -1)
  {
    sub_100053C24();
  }

  return qword_10008B7F0;
}

- (void)__setupServer
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Accepting Incoming Grant Requests", buf, 2u);
    }
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100028FC8;
  v8[3] = &unk_100081E70;
  v8[4] = self;
  self->_connection_queue = dispatch_queue_create("com.apple.imagent.connection_queue", 0);
  IMXPCCreateServerConnectionWithQueue = IMSharedHelperGet_IMXPCCreateServerConnectionWithQueue();
  v5 = kFZDaemonAuthGrantPortName;
  v6 = IMXPCCreateServerConnectionWithQueue([kFZDaemonAuthGrantPortName UTF8String], self->_connection_queue, v8, v8, &stru_100081EB0, self->_connection_queue);
  self->_server = v6;
  if (!v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v10 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "IMDaemonMIGInterface: Could not create server with name: %@", buf, 0xCu);
      }
    }

    exit(-1);
  }

  xpc_connection_resume(v6);
  notify_register_check("_IMDaemonRunningNotifyToken", &self->_notifyToken);
  notify_set_state(self->_notifyToken, 1uLL);
  notify_post("_IMDaemonRunningNotifyToken");
}

- (void)acceptIncomingGrantRequests
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029508;
  block[3] = &unk_100081E70;
  block[4] = self;
  if (qword_10008B7F8 != -1)
  {
    dispatch_once(&qword_10008B7F8, block);
  }
}

- (void)denyIncomingGrantRequests
{
  self->_shuttingDown = 1;
  server = self->_server;
  if (server)
  {
    xpc_connection_cancel(server);
    self->_server = 0;
  }

  connection_queue = self->_connection_queue;
  if (connection_queue)
  {
    dispatch_release(connection_queue);
    self->_connection_queue = 0;
  }

  notify_set_state(self->_notifyToken, 0);

  notify_post("_IMDaemonRunningNotifyToken");
}

@end