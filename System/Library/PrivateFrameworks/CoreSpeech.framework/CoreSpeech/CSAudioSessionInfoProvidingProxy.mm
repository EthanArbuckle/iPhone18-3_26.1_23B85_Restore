@interface CSAudioSessionInfoProvidingProxy
- (CSAudioSessionInfoProviding)audioSessionInfoProvider;
- (CSAudioSessionInfoProvidingProxy)initWithXPCConnection:(id)connection;
- (CSClientXPCConnection)xpcConnection;
- (void)_handleSessionIDRequestMessage:(id)message messageBody:(id)body client:(id)client;
- (void)_sendDelegateMessageToClient:(id)client;
- (void)audioSessionInfoProvider:(id)provider didReceiveAudioSessionInterruptionNotificationWithUserInfo:(id)info;
- (void)audioSessionInfoProvider:(id)provider didReceiveAudioSessionMediaServicesWereLostNotificationWithUserInfo:(id)info;
- (void)audioSessionInfoProvider:(id)provider didReceiveAudioSessionMediaServicesWereResetNotificationWithUserInfo:(id)info;
- (void)audioSessionInfoProvider:(id)provider didReceiveAudioSessionRouteChangeNotificationWithUserInfo:(id)info;
- (void)handleXPCMessage:(id)message messageBody:(id)body client:(id)client;
@end

@implementation CSAudioSessionInfoProvidingProxy

- (CSClientXPCConnection)xpcConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);

  return WeakRetained;
}

- (CSAudioSessionInfoProviding)audioSessionInfoProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_audioSessionInfoProvider);

  return WeakRetained;
}

- (void)_sendDelegateMessageToClient:(id)client
{
  clientCopy = client;
  *keys = *off_100252E40;
  v9[0] = xpc_int64_create(11);
  v5 = clientCopy;
  v9[1] = v5;
  v6 = xpc_dictionary_create(keys, v9, 2uLL);
  xpcConnection = [(CSAudioSessionInfoProvidingProxy *)self xpcConnection];
  [xpcConnection sendMessageToClient:v6];

  for (i = 1; i != -1; --i)
  {
  }
}

- (void)audioSessionInfoProvider:(id)provider didReceiveAudioSessionMediaServicesWereResetNotificationWithUserInfo:(id)info
{
  keys = "type";
  infoCopy = info;
  values = xpc_int64_create(4);
  v6 = xpc_dictionary_create(&keys, &values, 1uLL);
  _cs_xpcObject = [infoCopy _cs_xpcObject];

  xpc_dictionary_set_value(v6, "notificationInfo", _cs_xpcObject);
  [(CSAudioSessionInfoProvidingProxy *)self _sendDelegateMessageToClient:v6];
}

- (void)audioSessionInfoProvider:(id)provider didReceiveAudioSessionMediaServicesWereLostNotificationWithUserInfo:(id)info
{
  keys = "type";
  infoCopy = info;
  values = xpc_int64_create(3);
  v6 = xpc_dictionary_create(&keys, &values, 1uLL);
  _cs_xpcObject = [infoCopy _cs_xpcObject];

  xpc_dictionary_set_value(v6, "notificationInfo", _cs_xpcObject);
  [(CSAudioSessionInfoProvidingProxy *)self _sendDelegateMessageToClient:v6];
}

- (void)audioSessionInfoProvider:(id)provider didReceiveAudioSessionRouteChangeNotificationWithUserInfo:(id)info
{
  keys = "type";
  infoCopy = info;
  values = xpc_int64_create(2);
  v6 = xpc_dictionary_create(&keys, &values, 1uLL);
  _cs_xpcObject = [infoCopy _cs_xpcObject];

  xpc_dictionary_set_value(v6, "notificationInfo", _cs_xpcObject);
  [(CSAudioSessionInfoProvidingProxy *)self _sendDelegateMessageToClient:v6];
}

- (void)audioSessionInfoProvider:(id)provider didReceiveAudioSessionInterruptionNotificationWithUserInfo:(id)info
{
  keys = "type";
  infoCopy = info;
  values = xpc_int64_create(1);
  v6 = xpc_dictionary_create(&keys, &values, 1uLL);
  _cs_xpcObject = [infoCopy _cs_xpcObject];

  xpc_dictionary_set_value(v6, "notificationInfo", _cs_xpcObject);
  [(CSAudioSessionInfoProvidingProxy *)self _sendDelegateMessageToClient:v6];
}

- (void)_handleSessionIDRequestMessage:(id)message messageBody:(id)body client:(id)client
{
  bodyCopy = body;
  clientCopy = client;
  reply = xpc_dictionary_create_reply(message);
  WeakRetained = objc_loadWeakRetained(&self->_audioSessionInfoProvider);

  if (WeakRetained)
  {
    string = xpc_dictionary_get_string(bodyCopy, "deviceID");
    if (string)
    {
      v13 = [NSString stringWithUTF8String:string];
    }

    else
    {
      v13 = 0;
    }

    v15 = objc_loadWeakRetained(&self->_audioSessionInfoProvider);
    v16 = [v15 audioSessionIdForDeviceId:v13];

    v17 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315650;
      v19 = "[CSAudioSessionInfoProvidingProxy _handleSessionIDRequestMessage:messageBody:client:]";
      v20 = 2114;
      v21 = v13;
      v22 = 2050;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s sessionID(for deviceId %{public}@ = %{public}llu", &v18, 0x20u);
    }

    xpc_dictionary_set_BOOL(reply, "result", 1);
    xpc_dictionary_set_uint64(reply, "sessionID", v16);
  }

  else
  {
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315138;
      v19 = "[CSAudioSessionInfoProvidingProxy _handleSessionIDRequestMessage:messageBody:client:]";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Trying to get sessionID when audioSessionInfoProvider is nil", &v18, 0xCu);
    }

    xpc_dictionary_set_BOOL(reply, "result", 0);
  }

  xpc_connection_send_message(clientCopy, reply);
}

- (void)handleXPCMessage:(id)message messageBody:(id)body client:(id)client
{
  messageCopy = message;
  bodyCopy = body;
  clientCopy = client;
  int64 = xpc_dictionary_get_int64(bodyCopy, "type");
  if (int64 == 1)
  {
    [(CSAudioSessionInfoProvidingProxy *)self _handleSessionIDRequestMessage:messageCopy messageBody:bodyCopy client:clientCopy];
  }

  else
  {
    v12 = int64;
    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[CSAudioSessionInfoProvidingProxy handleXPCMessage:messageBody:client:]";
      v16 = 2048;
      v17 = v12;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Cannot handle unexpected message type : %lld", &v14, 0x16u);
    }
  }
}

- (CSAudioSessionInfoProvidingProxy)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v8.receiver = self;
  v8.super_class = CSAudioSessionInfoProvidingProxy;
  v5 = [(CSAudioSessionInfoProvidingProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CSAudioSessionInfoProvidingProxy *)v5 setXpcConnection:connectionCopy];
  }

  return v6;
}

@end