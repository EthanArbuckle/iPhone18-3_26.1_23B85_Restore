@interface CSAudioSessionProvidingProxy
- (CSAudioSessionProvidingProxy)initWithXPCConnection:(id)connection;
- (CSClientXPCConnection)xpcConnection;
- (void)CSClientXPCConnectionReceivedClientError:(id)error clientError:(id)clientError client:(id)client;
- (void)_handleSessionProvidingRequestTypeActivateMessage:(id)message messageBody:(id)body client:(id)client;
- (void)_handleSessionProvidingRequestTypeDeactivateMessage:(id)message messageBody:(id)body client:(id)client;
- (void)_handleSessionProvidingRequestTypeDuckAudioDevice:(id)device messageBody:(id)body client:(id)client;
- (void)_handleSessionProvidingRequestTypeDuckDefaultOutputAudioDevice:(id)device messageBody:(id)body client:(id)client;
- (void)_handleSessionProvidingRequestTypeEnableMiniDucking:(id)ducking messageBody:(id)body client:(id)client;
- (void)_handleSessionProvidingRequestTypeEnableSmartRoutingConsideration:(id)consideration messageBody:(id)body client:(id)client;
- (void)_handleSessionProvidingRequestTypePrewarmMessage:(id)message client:(id)client;
- (void)_handleSessionProvidingRequestTypeSetDuckOthersOption:(id)option messageBody:(id)body client:(id)client;
- (void)_sendDelegateMessageToClient:(id)client;
- (void)_sendReplyMessageWithResult:(BOOL)result error:(id)error event:(id)event client:(id)client;
- (void)audioSessionProvider:(id)provider didChangeContext:(BOOL)context;
- (void)audioSessionProvider:(id)provider didReceiveAudioSessionInterruptionNotificationWithUserInfo:(id)info;
- (void)audioSessionProvider:(id)provider didReceiveAudioSessionMediaServicesWereLostNotificationWithUserInfo:(id)info;
- (void)audioSessionProvider:(id)provider didReceiveAudioSessionMediaServicesWereResetNotificationWithUserInfo:(id)info;
- (void)audioSessionProvider:(id)provider didReceiveAudioSessionRouteChangeNotificationWithUserInfo:(id)info;
- (void)audioSessionProvider:(id)provider didSetAudioSessionActive:(BOOL)active;
- (void)audioSessionProvider:(id)provider providerInvalidated:(BOOL)invalidated;
- (void)audioSessionProvider:(id)provider willSetAudioSessionActive:(BOOL)active;
- (void)audioSessionProviderBeginInterruption:(id)interruption;
- (void)audioSessionProviderBeginInterruption:(id)interruption withContext:(id)context;
- (void)audioSessionProviderEndInterruption:(id)interruption;
- (void)dealloc;
- (void)handleXPCMessage:(id)message messageBody:(id)body client:(id)client;
@end

@implementation CSAudioSessionProvidingProxy

- (CSClientXPCConnection)xpcConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);

  return WeakRetained;
}

- (void)_sendDelegateMessageToClient:(id)client
{
  clientCopy = client;
  *keys = *off_100252E40;
  v9[0] = xpc_int64_create(3);
  v5 = clientCopy;
  v9[1] = v5;
  v6 = xpc_dictionary_create(keys, v9, 2uLL);
  xpcConnection = [(CSAudioSessionProvidingProxy *)self xpcConnection];
  [xpcConnection sendMessageToClient:v6];

  for (i = 1; i != -1; --i)
  {
  }
}

- (void)audioSessionProvider:(id)provider didChangeContext:(BOOL)context
{
  keys = "type";
  values = xpc_int64_create(11);
  v6 = xpc_dictionary_create(&keys, &values, 1uLL);
  xpc_dictionary_set_BOOL(v6, "didChangeContextFlag", context);
  [(CSAudioSessionProvidingProxy *)self _sendDelegateMessageToClient:v6];
}

- (void)audioSessionProvider:(id)provider providerInvalidated:(BOOL)invalidated
{
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[CSAudioSessionProvidingProxy audioSessionProvider:providerInvalidated:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  *buf = "type";
  values = xpc_int64_create(10);
  v7 = xpc_dictionary_create(buf, &values, 1uLL);
  xpc_dictionary_set_BOOL(v7, "streamHandleIdInvalidationflag", invalidated);
  [(CSAudioSessionProvidingProxy *)self _sendDelegateMessageToClient:v7];
}

- (void)audioSessionProvider:(id)provider didReceiveAudioSessionMediaServicesWereResetNotificationWithUserInfo:(id)info
{
  keys = "type";
  infoCopy = info;
  values = xpc_int64_create(9);
  v6 = xpc_dictionary_create(&keys, &values, 1uLL);
  _cs_xpcObject = [infoCopy _cs_xpcObject];

  xpc_dictionary_set_value(v6, "notificationInfo", _cs_xpcObject);
  [(CSAudioSessionProvidingProxy *)self _sendDelegateMessageToClient:v6];
}

- (void)audioSessionProvider:(id)provider didReceiveAudioSessionMediaServicesWereLostNotificationWithUserInfo:(id)info
{
  keys = "type";
  infoCopy = info;
  values = xpc_int64_create(8);
  v6 = xpc_dictionary_create(&keys, &values, 1uLL);
  _cs_xpcObject = [infoCopy _cs_xpcObject];

  xpc_dictionary_set_value(v6, "notificationInfo", _cs_xpcObject);
  [(CSAudioSessionProvidingProxy *)self _sendDelegateMessageToClient:v6];
}

- (void)audioSessionProvider:(id)provider didReceiveAudioSessionRouteChangeNotificationWithUserInfo:(id)info
{
  keys = "type";
  infoCopy = info;
  values = xpc_int64_create(7);
  v6 = xpc_dictionary_create(&keys, &values, 1uLL);
  _cs_xpcObject = [infoCopy _cs_xpcObject];

  xpc_dictionary_set_value(v6, "notificationInfo", _cs_xpcObject);
  [(CSAudioSessionProvidingProxy *)self _sendDelegateMessageToClient:v6];
}

- (void)audioSessionProvider:(id)provider didReceiveAudioSessionInterruptionNotificationWithUserInfo:(id)info
{
  keys = "type";
  infoCopy = info;
  values = xpc_int64_create(6);
  v6 = xpc_dictionary_create(&keys, &values, 1uLL);
  _cs_xpcObject = [infoCopy _cs_xpcObject];

  xpc_dictionary_set_value(v6, "notificationInfo", _cs_xpcObject);
  [(CSAudioSessionProvidingProxy *)self _sendDelegateMessageToClient:v6];
}

- (void)audioSessionProvider:(id)provider didSetAudioSessionActive:(BOOL)active
{
  providerCopy = provider;
  *keys = *&off_100252BC8;
  v9[0] = xpc_int64_create(5);
  v9[1] = xpc_BOOL_create(active);
  v7 = xpc_dictionary_create(keys, v9, 2uLL);
  [(CSAudioSessionProvidingProxy *)self _sendDelegateMessageToClient:v7, v9[0]];

  for (i = 1; i != -1; --i)
  {
  }
}

- (void)audioSessionProvider:(id)provider willSetAudioSessionActive:(BOOL)active
{
  providerCopy = provider;
  *keys = *&off_100252BB8;
  v9[0] = xpc_int64_create(1);
  v9[1] = xpc_BOOL_create(active);
  v7 = xpc_dictionary_create(keys, v9, 2uLL);
  [(CSAudioSessionProvidingProxy *)self _sendDelegateMessageToClient:v7, v9[0]];

  for (i = 1; i != -1; --i)
  {
  }
}

- (void)audioSessionProviderEndInterruption:(id)interruption
{
  keys = "type";
  values = xpc_int64_create(4);
  v4 = xpc_dictionary_create(&keys, &values, 1uLL);
  [(CSAudioSessionProvidingProxy *)self _sendDelegateMessageToClient:v4];
}

- (void)audioSessionProviderBeginInterruption:(id)interruption withContext:(id)context
{
  keys = "type";
  contextCopy = context;
  values = xpc_int64_create(3);
  v6 = xpc_dictionary_create(&keys, &values, 1uLL);
  _cs_xpcObject = [contextCopy _cs_xpcObject];

  xpc_dictionary_set_value(v6, "interruptionContext", _cs_xpcObject);
  [(CSAudioSessionProvidingProxy *)self _sendDelegateMessageToClient:v6];
}

- (void)audioSessionProviderBeginInterruption:(id)interruption
{
  keys = "type";
  values = xpc_int64_create(2);
  v4 = xpc_dictionary_create(&keys, &values, 1uLL);
  [(CSAudioSessionProvidingProxy *)self _sendDelegateMessageToClient:v4];
}

- (void)_sendReplyMessageWithResult:(BOOL)result error:(id)error event:(id)event client:(id)client
{
  errorCopy = error;
  clientCopy = client;
  reply = xpc_dictionary_create_reply(event);
  xpc_dictionary_set_BOOL(reply, "result", result);
  if (errorCopy)
  {
    domain = [errorCopy domain];
    xpc_dictionary_set_string(reply, "resultErrorDomain", [domain UTF8String]);

    xpc_dictionary_set_int64(reply, "resultErrorCode", [errorCopy code]);
  }

  xpc_connection_send_message(clientCopy, reply);
}

- (void)_handleSessionProvidingRequestTypeEnableSmartRoutingConsideration:(id)consideration messageBody:(id)body client:(id)client
{
  v6 = xpc_dictionary_get_BOOL(body, "enableSmartRoutingConsideration");
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"DISABLE";
    if (v6)
    {
      v8 = @"ENABLE";
    }

    v11 = 136315394;
    v12 = "[CSAudioSessionProvidingProxy _handleSessionProvidingRequestTypeEnableSmartRoutingConsideration:messageBody:client:]";
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Session %{public}@ smart routing consideration", &v11, 0x16u);
  }

  audioSessionProvider = self->_audioSessionProvider;
  if (audioSessionProvider)
  {
    [(CSAudioSessionProviding *)audioSessionProvider enableSmartRoutingConsideration:v6];
  }

  else
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[CSAudioSessionProvidingProxy _handleSessionProvidingRequestTypeEnableSmartRoutingConsideration:messageBody:client:]";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Trying to enable smart routing consideration when audioSessionProvider is nil", &v11, 0xCu);
    }
  }
}

- (void)_handleSessionProvidingRequestTypeEnableMiniDucking:(id)ducking messageBody:(id)body client:(id)client
{
  v6 = xpc_dictionary_get_BOOL(body, "enableMiniDucking");
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"DISABLE";
    if (v6)
    {
      v8 = @"ENABLE";
    }

    v11 = 136315394;
    v12 = "[CSAudioSessionProvidingProxy _handleSessionProvidingRequestTypeEnableMiniDucking:messageBody:client:]";
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Session %{public}@ mini ducking", &v11, 0x16u);
  }

  audioSessionProvider = self->_audioSessionProvider;
  if (audioSessionProvider)
  {
    [(CSAudioSessionProviding *)audioSessionProvider enableMiniDucking:v6];
  }

  else
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[CSAudioSessionProvidingProxy _handleSessionProvidingRequestTypeEnableMiniDucking:messageBody:client:]";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Trying to enalbe mini ducking when audioSessionProvider is nil", &v11, 0xCu);
    }
  }
}

- (void)_handleSessionProvidingRequestTypeDuckDefaultOutputAudioDevice:(id)device messageBody:(id)body client:(id)client
{
  deviceCopy = device;
  bodyCopy = body;
  clientCopy = client;
  if (self->_manualDuckingHandler)
  {
    v11 = xpc_dictionary_get_double(bodyCopy, "duckLevel");
    v12 = xpc_dictionary_get_double(bodyCopy, "rampDuration");
    *&v13 = v12;
    *&v12 = v11;
    [(CSManualDuckingHandler *)self->_manualDuckingHandler duckDefaultOutputAudioDeviceWithDuckedLevel:v12 rampDuration:v13];
  }

  else
  {
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = "[CSAudioSessionProvidingProxy _handleSessionProvidingRequestTypeDuckDefaultOutputAudioDevice:messageBody:client:]";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Manual ducking handler not supported!", &v15, 0xCu);
    }
  }
}

- (void)_handleSessionProvidingRequestTypeDuckAudioDevice:(id)device messageBody:(id)body client:(id)client
{
  deviceCopy = device;
  bodyCopy = body;
  clientCopy = client;
  if (self->_manualDuckingHandler)
  {
    uint64 = xpc_dictionary_get_uint64(bodyCopy, "audioDeviceID");
    v12 = xpc_dictionary_get_double(bodyCopy, "duckLevel");
    v13 = xpc_dictionary_get_double(bodyCopy, "rampDuration");
    *&v14 = v13;
    *&v13 = v12;
    [(CSManualDuckingHandler *)self->_manualDuckingHandler duckAudioDeviceWithDeviceID:uint64 duckedLevel:v13 rampDuration:v14];
  }

  else
  {
    v15 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315138;
      v17 = "[CSAudioSessionProvidingProxy _handleSessionProvidingRequestTypeDuckAudioDevice:messageBody:client:]";
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Manual ducking handler not supported!", &v16, 0xCu);
    }
  }
}

- (void)_handleSessionProvidingRequestTypeSetDuckOthersOption:(id)option messageBody:(id)body client:(id)client
{
  v6 = xpc_dictionary_get_BOOL(body, "setDuckOthersOption");
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[CSAudioSessionProvidingProxy _handleSessionProvidingRequestTypeSetDuckOthersOption:messageBody:client:]";
    v12 = 1026;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Session set duck others option : %{public}d", &v10, 0x12u);
  }

  audioSessionProvider = self->_audioSessionProvider;
  if (audioSessionProvider)
  {
    [(CSAudioSessionProviding *)audioSessionProvider setDuckOthersOption:v6];
  }

  else
  {
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[CSAudioSessionProvidingProxy _handleSessionProvidingRequestTypeSetDuckOthersOption:messageBody:client:]";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Trying to set duck others option when audioSessionProvider is nil", &v10, 0xCu);
    }
  }
}

- (void)_handleSessionProvidingRequestTypeDeactivateMessage:(id)message messageBody:(id)body client:(id)client
{
  messageCopy = message;
  clientCopy = client;
  int64 = xpc_dictionary_get_int64(body, "deactivateOption");
  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[CSAudioSessionProvidingProxy _handleSessionProvidingRequestTypeDeactivateMessage:messageBody:client:]";
    v22 = 1026;
    LODWORD(v23) = int64;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Session activate reason : %{public}u", buf, 0x12u);
  }

  audioSessionProvider = self->_audioSessionProvider;
  if (audioSessionProvider)
  {
    v19 = 0;
    v13 = [(CSAudioSessionProviding *)audioSessionProvider deactivateAudioSession:int64 error:&v19];
    v14 = v19;
    if ((v13 & 1) == 0)
    {
      v15 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v17 = v15;
        localizedDescription = [v14 localizedDescription];
        *buf = 136315394;
        v21 = "[CSAudioSessionProvidingProxy _handleSessionProvidingRequestTypeDeactivateMessage:messageBody:client:]";
        v22 = 2114;
        v23 = localizedDescription;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Failed to deactivate audio session, error : %{public}@", buf, 0x16u);
      }
    }

    [(CSAudioSessionProvidingProxy *)self _sendReplyMessageWithResult:v13 error:v14 event:messageCopy client:clientCopy];
    v16 = +[CSSiriClientBehaviorMonitor sharedInstance];
    [v16 notifyReleaseAudioSession];
  }

  else
  {
    v14 = [NSError errorWithDomain:CSErrorDomain code:1351 userInfo:0];
    [(CSAudioSessionProvidingProxy *)self _sendReplyMessageWithResult:0 error:v14 event:messageCopy client:clientCopy];
  }
}

- (void)_handleSessionProvidingRequestTypeActivateMessage:(id)message messageBody:(id)body client:(id)client
{
  messageCopy = message;
  clientCopy = client;
  bodyCopy = body;
  int64 = xpc_dictionary_get_int64(bodyCopy, "activateReason");
  v12 = xpc_dictionary_get_int64(bodyCopy, "dynamicAttribute");
  string = xpc_dictionary_get_string(bodyCopy, "dictationRequestBundleId");

  if (string)
  {
    string = [NSString stringWithUTF8String:string];
  }

  v14 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v26 = "[CSAudioSessionProvidingProxy _handleSessionProvidingRequestTypeActivateMessage:messageBody:client:]";
    v27 = 1026;
    *v28 = int64;
    *&v28[4] = 1026;
    *&v28[6] = v12;
    v29 = 2114;
    v30 = string;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Session activate reason : %{public}u, dynamicAttributeType : %{public}u, bundleId: %{public}@", buf, 0x22u);
  }

  audioSessionProvider = self->_audioSessionProvider;
  if (audioSessionProvider)
  {
    v24 = 0;
    v16 = [(CSAudioSessionProviding *)audioSessionProvider activateAudioSessionWithReason:int64 dynamicAttribute:v12 bundleID:string error:&v24];
    v17 = v24;
    if (v16)
    {
      v18 = +[CSSiriClientBehaviorMonitor sharedInstance];
      [v18 notifyActivateAudioSessionWithReason:int64];
    }

    else
    {
      v21 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v22 = v21;
        localizedDescription = [v17 localizedDescription];
        *buf = 136315394;
        v26 = "[CSAudioSessionProvidingProxy _handleSessionProvidingRequestTypeActivateMessage:messageBody:client:]";
        v27 = 2114;
        *v28 = localizedDescription;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s Failed to activate audio session, error : %{public}@", buf, 0x16u);
      }
    }

    selfCopy2 = self;
    v20 = v16;
  }

  else
  {
    v17 = [NSError errorWithDomain:CSErrorDomain code:1351 userInfo:0];
    selfCopy2 = self;
    v20 = 0;
  }

  [(CSAudioSessionProvidingProxy *)selfCopy2 _sendReplyMessageWithResult:v20 error:v17 event:messageCopy client:clientCopy];
}

- (void)_handleSessionProvidingRequestTypePrewarmMessage:(id)message client:(id)client
{
  messageCopy = message;
  clientCopy = client;
  audioSessionProvider = self->_audioSessionProvider;
  if (audioSessionProvider)
  {
    v16 = 0;
    v9 = [(CSAudioSessionProviding *)audioSessionProvider prewarmAudioSessionWithError:&v16];
    v10 = v16;
    if ((v9 & 1) == 0)
    {
      v11 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v14 = v11;
        localizedDescription = [v10 localizedDescription];
        *buf = 136315394;
        v18 = "[CSAudioSessionProvidingProxy _handleSessionProvidingRequestTypePrewarmMessage:client:]";
        v19 = 2114;
        v20 = localizedDescription;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Failed to prewarm audio session, error : %{public}@", buf, 0x16u);
      }
    }

    selfCopy2 = self;
    v13 = v9;
  }

  else
  {
    v10 = [NSError errorWithDomain:CSErrorDomain code:1351 userInfo:0];
    selfCopy2 = self;
    v13 = 0;
  }

  [(CSAudioSessionProvidingProxy *)selfCopy2 _sendReplyMessageWithResult:v13 error:v10 event:messageCopy client:clientCopy];
}

- (void)handleXPCMessage:(id)message messageBody:(id)body client:(id)client
{
  messageCopy = message;
  bodyCopy = body;
  clientCopy = client;
  int64 = xpc_dictionary_get_int64(bodyCopy, "type");
  v12 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[CSAudioSessionProvidingProxy handleXPCMessage:messageBody:client:]";
    v16 = 2050;
    v17 = int64;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s Session Providing Request Message has arrived : %{public}lld", &v14, 0x16u);
  }

  if (int64 > 5)
  {
    if (int64 <= 7)
    {
      if (int64 == 6)
      {
        [(CSAudioSessionProvidingProxy *)self _handleSessionProvidingRequestTypeEnableMiniDucking:messageCopy messageBody:bodyCopy client:clientCopy];
      }

      else
      {
        [(CSAudioSessionProvidingProxy *)self _handleSessionProvidingRequestTypeDuckAudioDevice:messageCopy messageBody:bodyCopy client:clientCopy];
      }

      goto LABEL_23;
    }

    if (int64 == 8)
    {
      [(CSAudioSessionProvidingProxy *)self _handleSessionProvidingRequestTypeDuckDefaultOutputAudioDevice:messageCopy messageBody:bodyCopy client:clientCopy];
      goto LABEL_23;
    }

    if (int64 == 9)
    {
      [(CSAudioSessionProvidingProxy *)self _handleSessionProvidingRequestTypeEnableSmartRoutingConsideration:messageCopy messageBody:bodyCopy client:clientCopy];
      goto LABEL_23;
    }
  }

  else if (int64 > 2)
  {
    if (int64 == 3)
    {
      [(CSAudioSessionProvidingProxy *)self _handleSessionProvidingRequestTypeDeactivateMessage:messageCopy messageBody:bodyCopy client:clientCopy];
      goto LABEL_23;
    }

    if (int64 == 5)
    {
      [(CSAudioSessionProvidingProxy *)self _handleSessionProvidingRequestTypeSetDuckOthersOption:messageCopy messageBody:bodyCopy client:clientCopy];
      goto LABEL_23;
    }
  }

  else
  {
    if (int64 == 1)
    {
      [(CSAudioSessionProvidingProxy *)self _handleSessionProvidingRequestTypePrewarmMessage:messageCopy client:clientCopy];
      goto LABEL_23;
    }

    if (int64 == 2)
    {
      [(CSAudioSessionProvidingProxy *)self _handleSessionProvidingRequestTypeActivateMessage:messageCopy messageBody:bodyCopy client:clientCopy];
      goto LABEL_23;
    }
  }

  v13 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315394;
    v15 = "[CSAudioSessionProvidingProxy handleXPCMessage:messageBody:client:]";
    v16 = 2050;
    v17 = int64;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Unexpected XPC session providing request : %{public}lld", &v14, 0x16u);
  }

LABEL_23:
}

- (void)dealloc
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[CSAudioSessionProvidingProxy dealloc]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s deallocated", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CSAudioSessionProvidingProxy;
  [(CSAudioSessionProvidingProxy *)&v4 dealloc];
}

- (void)CSClientXPCConnectionReceivedClientError:(id)error clientError:(id)clientError client:(id)client
{
  errorCopy = error;
  clientErrorCopy = clientError;
  clientCopy = client;
  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    streamClientType = self->_streamClientType;
    v17 = 136315394;
    v18 = "[CSAudioSessionProvidingProxy CSClientXPCConnectionReceivedClientError:clientError:client:]";
    v19 = 1026;
    v20 = streamClientType;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s CSAudioSessionProvidingProxy has received xpc disconnection _streamClientType : %{public}d", &v17, 0x12u);
  }

  if (self->_streamClientType == 1)
  {
    audioSessionProvider = self->_audioSessionProvider;
    if (audioSessionProvider)
    {
      v14 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315138;
        v18 = "[CSAudioSessionProvidingProxy CSClientXPCConnectionReceivedClientError:clientError:client:]";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Trying to release audio stream on CSAudioSessionProvidingProxy", &v17, 0xCu);
        audioSessionProvider = self->_audioSessionProvider;
      }

      [(CSAudioSessionProviding *)audioSessionProvider deactivateAudioSession:1 error:0];
    }

    manualDuckingHandler = self->_manualDuckingHandler;
    if (manualDuckingHandler)
    {
      [(CSManualDuckingHandler *)manualDuckingHandler resetDucking];
    }
  }

  v16 = self->_audioSessionProvider;
  self->_audioSessionProvider = 0;
}

- (CSAudioSessionProvidingProxy)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v8.receiver = self;
  v8.super_class = CSAudioSessionProvidingProxy;
  v5 = [(CSAudioSessionProvidingProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CSAudioSessionProvidingProxy *)v5 setXpcConnection:connectionCopy];
  }

  return v6;
}

@end