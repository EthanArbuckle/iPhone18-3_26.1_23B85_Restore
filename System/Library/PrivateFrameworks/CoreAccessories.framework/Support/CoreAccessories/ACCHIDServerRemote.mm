@interface ACCHIDServerRemote
- (ACCHIDServerRemote)initWithXPCConnection:(id)connection;
- (void)componentUpdate:(id)update componentID:(id)d enabled:(BOOL)enabled withReply:(id)reply;
- (void)getReport:(id)report componentID:(id)d reportType:(id)type reportID:(id)iD withReply:(id)reply;
- (void)initConnection:(id)connection;
- (void)outReport:(id)report componentID:(id)d report:(id)a5 withReply:(id)reply;
@end

@implementation ACCHIDServerRemote

- (ACCHIDServerRemote)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = ACCHIDServerRemote;
  v6 = [(ACCHIDServerRemote *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (connectionCopy)
    {
      objc_storeStrong(&v6->_XPCConnection, connection);
    }

    else
    {

      v7 = 0;
    }
  }

  return v7;
}

- (void)initConnection:(id)connection
{
  connectionCopy = connection;
  v5 = +[ACCHIDServer sharedServer];
  if (objc_opt_respondsToSelector())
  {
    xPCConnection = [(ACCHIDServerRemote *)self XPCConnection];
    v7 = [v5 performSelector:"shouldAcceptXPCConnection:" withObject:xPCConnection] != 0;
  }

  else
  {
    v7 = 0;
  }

  if (gLogObjects)
  {
    v8 = gNumLogObjects < 5;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_bluetooth_copyNameForMacAddress_cold_1();
    }

    v10 = &_os_log_default;
    v9 = &_os_log_default;
  }

  else
  {
    v10 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13[0]) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[#HID] Client has called initConnection method!", v13, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 5)
  {
    v11 = *(gLogObjects + 32);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_bluetooth_copyNameForMacAddress_cold_1();
    }

    v11 = &_os_log_default;
    v12 = &_os_log_default;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109120;
    v13[1] = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[#HID] shouldStayConnected: %d", v13, 8u);
  }

  connectionCopy[2](connectionCopy, v7);
}

- (void)outReport:(id)report componentID:(id)d report:(id)a5 withReply:(id)reply
{
  replyCopy = reply;
  v9 = platform_hid_send_out_report(report, d, a5);
  v10 = replyCopy;
  if (replyCopy)
  {
    (*(replyCopy + 2))(replyCopy, v9);
    v10 = replyCopy;
  }
}

- (void)getReport:(id)report componentID:(id)d reportType:(id)type reportID:(id)iD withReply:(id)reply
{
  replyCopy = reply;
  report = platform_hid_send_get_report(report, d, type, iD);
  v12 = replyCopy;
  if (replyCopy)
  {
    (*(replyCopy + 2))(replyCopy, report);
    v12 = replyCopy;
  }
}

- (void)componentUpdate:(id)update componentID:(id)d enabled:(BOOL)enabled withReply:(id)reply
{
  replyCopy = reply;
  v9 = platform_hid_send_component_update(update, d, enabled);
  v10 = replyCopy;
  if (replyCopy)
  {
    (*(replyCopy + 2))(replyCopy, v9);
    v10 = replyCopy;
  }
}

@end