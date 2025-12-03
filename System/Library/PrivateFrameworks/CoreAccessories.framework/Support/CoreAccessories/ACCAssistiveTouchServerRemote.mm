@interface ACCAssistiveTouchServerRemote
- (ACCAssistiveTouchServerRemote)initWithXPCConnection:(id)connection;
- (void)initConnection:(id)connection;
- (void)notifyEnabledState:(BOOL)state provider:(id)provider;
@end

@implementation ACCAssistiveTouchServerRemote

- (ACCAssistiveTouchServerRemote)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 5;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v8 = &_os_log_default;
    v7 = &_os_log_default;
  }

  else
  {
    v8 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = [connectionCopy hash];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "assistiveTouch initWithXPCConnection: XPCConnection=%lu", buf, 0xCu);
  }

  v12.receiver = self;
  v12.super_class = ACCAssistiveTouchServerRemote;
  v9 = [(ACCAssistiveTouchServerRemote *)&v12 init];
  v10 = v9;
  if (v9)
  {
    if (connectionCopy)
    {
      objc_storeStrong(&v9->_XPCConnection, connection);
    }

    else
    {

      v10 = 0;
    }
  }

  return v10;
}

- (void)initConnection:(id)connection
{
  connectionCopy = connection;
  v5 = +[ACCAssistiveTouchServer sharedServer];
  if (objc_opt_respondsToSelector())
  {
    xPCConnection = [(ACCAssistiveTouchServerRemote *)self XPCConnection];
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
      platform_connectionInfo_configStreamGetCategories_cold_2();
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
    LOWORD(v14[0]) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "assistiveTouch Client has called initConnection method!", v14, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 5)
  {
    v11 = *(gLogObjects + 32);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v11 = &_os_log_default;
    v12 = &_os_log_default;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109120;
    v14[1] = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "assistiveTouch shouldStayConnected: %d", v14, 8u);
  }

  if (v7)
  {
    v13 = +[ACCAssistiveTouchServer sharedServer];
    [v13 sendUpdatedSubscriberList];
  }

  connectionCopy[2](connectionCopy, v7);
}

- (void)notifyEnabledState:(BOOL)state provider:(id)provider
{
  stateCopy = state;
  providerCopy = provider;
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 5;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v8 = &_os_log_default;
    v7 = &_os_log_default;
  }

  else
  {
    v8 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = providerCopy;
    v14 = 1024;
    v15 = stateCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "assistiveTouch Received notifyEnabledState %@ enabled=%d", buf, 0x12u);
  }

  v9 = +[ACCAssistiveTouchServer sharedServer];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __61__ACCAssistiveTouchServerRemote_notifyEnabledState_provider___block_invoke;
  v10[3] = &__block_descriptor_33_e22_v24__0__NSString_8_B16l;
  v11 = stateCopy;
  [v9 iterateAttachedConnectionsSync:v10];
}

@end