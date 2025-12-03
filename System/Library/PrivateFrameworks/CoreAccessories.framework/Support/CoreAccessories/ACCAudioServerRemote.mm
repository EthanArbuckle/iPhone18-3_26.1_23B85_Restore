@interface ACCAudioServerRemote
- (ACCAudioServerRemote)initWithXPCConnection:(id)connection;
- (void)allowBackgroundAudioForClient:(id)client withReply:(id)reply;
- (void)deviceAudioStatesWithReply:(id)reply;
- (void)initConnectionToServer:(id)server;
- (void)supportedDigitalAudioSampleRatesWithReply:(id)reply;
@end

@implementation ACCAudioServerRemote

- (ACCAudioServerRemote)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = ACCAudioServerRemote;
  v6 = [(ACCAudioServerRemote *)&v9 init];
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

- (void)initConnectionToServer:(id)server
{
  serverCopy = server;
  v5 = +[ACCAudioServer sharedServer];
  if (objc_opt_respondsToSelector())
  {
    xPCConnection = [(ACCAudioServerRemote *)self XPCConnection];
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
    LOWORD(v13[0]) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[#Audio] Client has called initConnection method!", v13, 2u);
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
    v13[0] = 67109120;
    v13[1] = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[#Audio] shouldStayConnected: %d", v13, 8u);
  }

  serverCopy[2](serverCopy, v7);
}

- (void)supportedDigitalAudioSampleRatesWithReply:(id)reply
{
  replyCopy = reply;
  v4 = platform_digitalAudio_copySupportedSampleRates();
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 5;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v7 = &_os_log_default;
    v6 = &_os_log_default;
  }

  else
  {
    v7 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[#Audio] sampleRatesArray: %@", &v8, 0xCu);
  }

  replyCopy[2](replyCopy, v4);
}

- (void)deviceAudioStatesWithReply:(id)reply
{
  replyCopy = reply;
  v4 = platform_digitalAudio_copyDeviceAudioStates();
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 5;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v7 = &_os_log_default;
    v6 = &_os_log_default;
  }

  else
  {
    v7 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[#Audio] audioStates: %@", &v8, 0xCu);
  }

  replyCopy[2](replyCopy, v4);
}

- (void)allowBackgroundAudioForClient:(id)client withReply:(id)reply
{
  clientCopy = client;
  replyCopy = reply;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 5;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v9 = &_os_log_default;
    v8 = &_os_log_default;
  }

  else
  {
    v9 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[#Audio] allowBackgroundAudioForClient?", &v13, 2u);
  }

  v10 = platform_externalAccessory_clientHasOpenEASession(clientCopy);
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

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = 138412546;
    v14 = clientCopy;
    v15 = 1024;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[#Audio] clientBundleID: %@ shouldAllowBackgroundAudio: %d", &v13, 0x12u);
  }

  replyCopy[2](replyCopy, v10);
}

@end