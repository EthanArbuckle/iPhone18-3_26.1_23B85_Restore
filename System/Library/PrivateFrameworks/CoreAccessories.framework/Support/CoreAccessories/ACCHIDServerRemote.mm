@interface ACCHIDServerRemote
- (ACCHIDServerRemote)initWithXPCConnection:(id)a3;
- (void)componentUpdate:(id)a3 componentID:(id)a4 enabled:(BOOL)a5 withReply:(id)a6;
- (void)getReport:(id)a3 componentID:(id)a4 reportType:(id)a5 reportID:(id)a6 withReply:(id)a7;
- (void)initConnection:(id)a3;
- (void)outReport:(id)a3 componentID:(id)a4 report:(id)a5 withReply:(id)a6;
@end

@implementation ACCHIDServerRemote

- (ACCHIDServerRemote)initWithXPCConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ACCHIDServerRemote;
  v6 = [(ACCHIDServerRemote *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      objc_storeStrong(&v6->_XPCConnection, a3);
    }

    else
    {

      v7 = 0;
    }
  }

  return v7;
}

- (void)initConnection:(id)a3
{
  v4 = a3;
  v5 = +[ACCHIDServer sharedServer];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(ACCHIDServerRemote *)self XPCConnection];
    v7 = [v5 performSelector:"shouldAcceptXPCConnection:" withObject:v6] != 0;
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

  v4[2](v4, v7);
}

- (void)outReport:(id)a3 componentID:(id)a4 report:(id)a5 withReply:(id)a6
{
  v11 = a6;
  v9 = platform_hid_send_out_report(a3, a4, a5);
  v10 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11, v9);
    v10 = v11;
  }
}

- (void)getReport:(id)a3 componentID:(id)a4 reportType:(id)a5 reportID:(id)a6 withReply:(id)a7
{
  v13 = a7;
  report = platform_hid_send_get_report(a3, a4, a5, a6);
  v12 = v13;
  if (v13)
  {
    (*(v13 + 2))(v13, report);
    v12 = v13;
  }
}

- (void)componentUpdate:(id)a3 componentID:(id)a4 enabled:(BOOL)a5 withReply:(id)a6
{
  v11 = a6;
  v9 = platform_hid_send_component_update(a3, a4, a5);
  v10 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11, v9);
    v10 = v11;
  }
}

@end