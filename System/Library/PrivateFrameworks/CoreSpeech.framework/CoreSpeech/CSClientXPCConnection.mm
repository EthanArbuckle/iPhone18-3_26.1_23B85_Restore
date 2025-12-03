@interface CSClientXPCConnection
- (BOOL)_getAudioProvideWithContext:(id)context streamClientType:(unint64_t)type;
- (CSClientXPCConnection)initWithConnection:(id)connection;
- (CSClientXPCConnectionDelegate)delegate;
- (void)_handleAudioProvidingMessage:(id)message messageBody:(id)body client:(id)client;
- (void)_handleAudioProvidingRequestTypeSwitchMessage:(id)message messageBody:(id)body client:(id)client;
- (void)_handleClientError:(id)error client:(id)client;
- (void)_handleClientEvent:(id)event;
- (void)_handleClientMessage:(id)message client:(id)client;
- (void)_handlePingPongMessage:(id)message client:(id)client;
- (void)_handleSetXPCClientTypeMessage:(id)message messageBody:(id)body client:(id)client;
- (void)_notifyXPCDisconnectionToProxies;
- (void)_notifyXPCDisconnectionToProxy:(id)proxy;
- (void)activateConnection;
- (void)sendMessageToClient:(id)client;
@end

@implementation CSClientXPCConnection

- (CSClientXPCConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handlePingPongMessage:(id)message client:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[CSClientXPCConnection _handlePingPongMessage:client:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Handing PingPong message", &v9, 0xCu);
  }

  reply = xpc_dictionary_create_reply(messageCopy);
  xpc_dictionary_set_BOOL(reply, "result", 1);
  xpc_connection_send_message(clientCopy, reply);
}

- (void)_notifyXPCDisconnectionToProxy:(id)proxy
{
  proxyCopy = proxy;
  if (proxyCopy)
  {
    v5 = proxyCopy;
    if (objc_opt_respondsToSelector())
    {
      [v5 CSClientXPCConnectionReceivedClientError:self clientError:0 client:0];
    }
  }

  _objc_release_x2();
}

- (void)_notifyXPCDisconnectionToProxies
{
  if ([(CSClientXPCConnection *)self clientType]== 1)
  {
    [(CSClientXPCConnection *)self _notifyXPCDisconnectionToProxy:self->_audioSessionProvidingProxy];
    [(CSClientXPCConnection *)self _notifyXPCDisconnectionToProxy:self->_audioStreamProvidingProxy];
    [(CSClientXPCConnection *)self _notifyXPCDisconnectionToProxy:self->_audioAlertProvidingProxy];
    [(CSClientXPCConnection *)self _notifyXPCDisconnectionToProxy:self->_audioMeterProvidingProxy];
    [(CSClientXPCConnection *)self _notifyXPCDisconnectionToProxy:self->_audioMetricProvidingProxy];
  }

  if ([(CSClientXPCConnection *)self clientType]== 2)
  {
    audioSessionInfoProvidingProxy = self->_audioSessionInfoProvidingProxy;

    [(CSClientXPCConnection *)self _notifyXPCDisconnectionToProxy:audioSessionInfoProvidingProxy];
  }
}

- (void)_handleClientError:(id)error client:(id)client
{
  errorCopy = error;
  clientCopy = client;
  v8 = clientCopy;
  if (errorCopy && clientCopy)
  {
    if (errorCopy == &_xpc_error_connection_invalid || errorCopy == &_xpc_error_connection_interrupted)
    {
      v10 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315394;
        v20 = "[CSClientXPCConnection _handleClientError:client:]";
        v21 = 2050;
        v22 = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Client %{public}p connection disconnected, noticing xpc listener", &v19, 0x16u);
      }

      [(CSClientXPCConnection *)self _notifyXPCDisconnectionToProxies];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (WeakRetained)
      {
        v12 = WeakRetained;
        v13 = objc_loadWeakRetained(&self->_delegate);
        v14 = objc_opt_respondsToSelector();

        if (v14)
        {
          v15 = objc_loadWeakRetained(&self->_delegate);
          [v15 CSClientXPCConnectionReceivedClientError:self clientError:errorCopy client:v8];
        }
      }
    }

    else
    {
      string = xpc_dictionary_get_string(errorCopy, _xpc_error_key_description);
      v17 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v19 = 136315394;
        v20 = "[CSClientXPCConnection _handleClientError:client:]";
        v21 = 2082;
        v22 = string;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s connection error: %{public}s", &v19, 0x16u);
      }
    }
  }
}

- (void)_handleSetXPCClientTypeMessage:(id)message messageBody:(id)body client:(id)client
{
  messageCopy = message;
  bodyCopy = body;
  clientCopy = client;
  v11 = clientCopy;
  if (messageCopy && bodyCopy && clientCopy)
  {
    int64 = xpc_dictionary_get_int64(bodyCopy, "xpcClientType");
    v13 = int64;
    self->_clientType = int64;
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315394;
      v17 = "[CSClientXPCConnection _handleSetXPCClientTypeMessage:messageBody:client:]";
      v18 = 1026;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Setting XPCClientType to %{public}d", &v16, 0x12u);
    }
  }

  else
  {
    v15 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315138;
      v17 = "[CSClientXPCConnection _handleSetXPCClientTypeMessage:messageBody:client:]";
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Cannot handle audio providing message", &v16, 0xCu);
    }
  }
}

- (void)_handleAudioProvidingRequestTypeSwitchMessage:(id)message messageBody:(id)body client:(id)client
{
  bodyCopy = body;
  clientCopy = client;
  reply = xpc_dictionary_create_reply(message);
  v11 = xpc_dictionary_get_dictionary(bodyCopy, "context");
  if (v11)
  {
    uint64 = xpc_dictionary_get_uint64(bodyCopy, "clientType");
    v13 = [[CSAudioRecordContext alloc] initWithXPCObject:v11];
    xpc_dictionary_set_BOOL(reply, "result", [(CSClientXPCConnection *)self _getAudioProvideWithContext:v13 streamClientType:uint64]);
  }

  else
  {
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = "[CSClientXPCConnection _handleAudioProvidingRequestTypeSwitchMessage:messageBody:client:]";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Unable to handle audio providing switch message : context is nil", &v15, 0xCu);
    }

    xpc_dictionary_set_BOOL(reply, "result", 0);
  }

  xpc_connection_send_message(clientCopy, reply);
}

- (void)_handleAudioProvidingMessage:(id)message messageBody:(id)body client:(id)client
{
  messageCopy = message;
  bodyCopy = body;
  clientCopy = client;
  v11 = clientCopy;
  if (!messageCopy || !bodyCopy || !clientCopy)
  {
    v14 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v19 = 136315138;
    v20 = "[CSClientXPCConnection _handleAudioProvidingMessage:messageBody:client:]";
    v15 = "%s Cannot handle audio providing message";
    v16 = v14;
    v17 = 12;
LABEL_13:
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v15, &v19, v17);
    goto LABEL_11;
  }

  int64 = xpc_dictionary_get_int64(bodyCopy, "type");
  v13 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315394;
    v20 = "[CSClientXPCConnection _handleAudioProvidingMessage:messageBody:client:]";
    v21 = 2050;
    v22 = int64;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s Audio Providing Request Message has arrived : %{public}lld", &v19, 0x16u);
  }

  if (int64 != 1)
  {
    v18 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v19 = 136315394;
    v20 = "[CSClientXPCConnection _handleAudioProvidingMessage:messageBody:client:]";
    v21 = 2050;
    v22 = int64;
    v15 = "%s Unexpected XPC Metric providing request : %{public}lld";
    v16 = v18;
    v17 = 22;
    goto LABEL_13;
  }

  [(CSClientXPCConnection *)self _handleAudioProvidingRequestTypeSwitchMessage:messageCopy messageBody:bodyCopy client:v11];
LABEL_11:
}

- (void)_handleClientMessage:(id)message client:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v8 = clientCopy;
  if (messageCopy && clientCopy)
  {
    int64 = xpc_dictionary_get_int64(messageCopy, "type");
    v10 = xpc_dictionary_get_dictionary(messageCopy, "body");
    if (int64 <= 8)
    {
      if (int64 <= 3)
      {
        if (int64 == 1)
        {
          [(CSClientXPCConnection *)self _handlePingPongMessage:messageCopy client:v8];
          goto LABEL_30;
        }

        if (int64 != 2)
        {
LABEL_35:
          v17 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
          {
            v19 = 136315394;
            v20 = "[CSClientXPCConnection _handleClientMessage:client:]";
            v21 = 2050;
            v22 = int64;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Unexpected message type : %{public}lld", &v19, 0x16u);
          }

          goto LABEL_30;
        }

        audioSessionProvidingProxy = self->_audioSessionProvidingProxy;
      }

      else
      {
        switch(int64)
        {
          case 4:
            audioSessionProvidingProxy = self->_audioStreamProvidingProxy;
            break;
          case 6:
            audioSessionProvidingProxy = self->_audioAlertProvidingProxy;
            break;
          case 8:
            audioSessionProvidingProxy = self->_audioMeterProvidingProxy;
            break;
          default:
            goto LABEL_35;
        }
      }
    }

    else if (int64 > 13)
    {
      if (int64 == 14)
      {
        audioStreamProvidingProxy = self->_audioStreamProvidingProxy;
        if (audioStreamProvidingProxy && ([(CSAudioStreamProvidingProxy *)audioStreamProvidingProxy audioStreamProviding], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
        {
          audioStreamProviding = [(CSAudioStreamProvidingProxy *)self->_audioStreamProvidingProxy audioStreamProviding];
          audioStreamId = [audioStreamProviding audioStreamId];
        }

        else
        {
          audioStreamId = 1;
        }

        v18 = objc_alloc_init(CSAudioTimeConversionProvidingProxy);
        [(CSAudioTimeConversionProvidingProxy *)v18 handleXPCMessage:messageCopy messageBody:v10 client:v8 audioStreamHandleId:audioStreamId];

        goto LABEL_30;
      }

      if (int64 == 15)
      {
        [(CSClientXPCConnection *)self _handleSetXPCClientTypeMessage:messageCopy messageBody:v10 client:v8];
        goto LABEL_30;
      }

      if (int64 != 17)
      {
        goto LABEL_35;
      }

      audioSessionProvidingProxy = self->_fallbackAudioSessionProvidingProxy;
    }

    else
    {
      switch(int64)
      {
        case 9:
          audioSessionProvidingProxy = self->_audioMetricProvidingProxy;
          break;
        case 10:
          audioSessionProvidingProxy = self->_audioSessionInfoProvidingProxy;
          break;
        case 13:
          [(CSClientXPCConnection *)self _handleAudioProvidingMessage:messageCopy messageBody:v10 client:v8];
LABEL_30:

          goto LABEL_31;
        default:
          goto LABEL_35;
      }
    }

    [audioSessionProvidingProxy handleXPCMessage:messageCopy messageBody:v10 client:v8];
    goto LABEL_30;
  }

  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v19 = 136315650;
    v20 = "[CSClientXPCConnection _handleClientMessage:client:]";
    v21 = 2050;
    v22 = messageCopy;
    v23 = 2050;
    v24 = v8;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s message = %{public}p, client = %{public}p, cannot handle message", &v19, 0x20u);
  }

LABEL_31:
}

- (void)_handleClientEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy && self->_connection)
  {
    type = xpc_get_type(eventCopy);
    if (type == &_xpc_type_dictionary)
    {
      [(CSClientXPCConnection *)self _handleClientMessage:v5 client:self->_connection];
      goto LABEL_12;
    }

    if (type == &_xpc_type_error)
    {
      [(CSClientXPCConnection *)self _handleClientError:v5 client:self->_connection];
      goto LABEL_12;
    }

    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = "[CSClientXPCConnection _handleClientEvent:]";
      v8 = "%s ignore unknown types of message";
      v9 = v7;
      v10 = 12;
LABEL_9:
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, &v13, v10);
    }
  }

  else
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      connection = self->_connection;
      v13 = 136315650;
      v14 = "[CSClientXPCConnection _handleClientEvent:]";
      v15 = 2050;
      v16 = v5;
      v17 = 2050;
      v18 = connection;
      v8 = "%s event = %{public}p client = %{public}p cannot handle event";
      v9 = v11;
      v10 = 32;
      goto LABEL_9;
    }
  }

LABEL_12:
}

- (void)sendMessageToClient:(id)client
{
  clientCopy = client;
  if (clientCopy)
  {
    queue = [(CSClientXPCConnection *)self queue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10013BF88;
    v7[3] = &unk_100253C48;
    v7[4] = self;
    v8 = clientCopy;
    dispatch_async(queue, v7);
  }

  else
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v10 = "[CSClientXPCConnection sendMessageToClient:]";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Cannot send nil message", buf, 0xCu);
    }
  }
}

- (void)activateConnection
{
  objc_initWeak(&location, self);
  connection = self->_connection;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000038A0;
  v4[3] = &unk_100252EC8;
  objc_copyWeak(&v5, &location);
  xpc_connection_set_event_handler(connection, v4);
  xpc_connection_activate(self->_connection);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (BOOL)_getAudioProvideWithContext:(id)context streamClientType:(unint64_t)type
{
  contextCopy = context;
  audioSessionProvider = [(CSAudioSessionProvidingProxy *)self->_audioSessionProvidingProxy audioSessionProvider];
  [audioSessionProvider setAudioSessionDelegate:0];

  audioAlertProvider = [(CSAudioAlertProvidingProxy *)self->_audioAlertProvidingProxy audioAlertProvider];
  [audioAlertProvider setAudioAlertDelegate:0];

  v9 = +[CSSpeechManager sharedManager];
  v10 = [v9 audioProviderWithContext:contextCopy error:0];

  if (v10)
  {
    v11 = v10;
    [v11 setAudioSessionDelegate:self->_audioSessionProvidingProxy];
    [(CSAudioSessionProvidingProxy *)self->_audioSessionProvidingProxy setAudioSessionProvider:v11];
    [(CSAudioSessionProvidingProxy *)self->_audioSessionProvidingProxy setStreamClientType:type];
    v12 = v11;
    [(CSAudioStreamProvidingProxy *)self->_audioStreamProvidingProxy setAudioStreamProvidingForProxy:v12];
    [(CSAudioStreamProvidingProxy *)self->_audioStreamProvidingProxy setInitialContext:contextCopy];
    [(CSAudioStreamProvidingProxy *)self->_audioStreamProvidingProxy setTriggerInfoProviding:v12];
    [(CSAudioStreamProvidingProxy *)self->_audioStreamProvidingProxy setStreamClientType:type];
    v13 = v12;
    [v13 setAudioAlertDelegate:self->_audioAlertProvidingProxy];
    [(CSAudioAlertProvidingProxy *)self->_audioAlertProvidingProxy setAudioAlertProvider:v13];
    [(CSAudioAlertProvidingProxy *)self->_audioAlertProvidingProxy setStreamClientType:type];
    v14 = v13;
    [(CSAudioMeterProvidingProxy *)self->_audioMeterProvidingProxy setAudioMeterProvider:v14];
    [(CSAudioMeterProvidingProxy *)self->_audioMeterProvidingProxy setStreamClientType:type];
    [(CSAudioMetricProvidingProxy *)self->_audioMetricProvidingProxy setAudioMetricProvider:v14];
    [(CSAudioMetricProvidingProxy *)self->_audioMetricProvidingProxy setStreamClientType:type];
  }

  return v10 != 0;
}

- (CSClientXPCConnection)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v28.receiver = self;
  v28.super_class = CSClientXPCConnection;
  v6 = [(CSClientXPCConnection *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
    v8 = dispatch_queue_create("corespeechd xpc connection client queue", 0);
    queue = v7->_queue;
    v7->_queue = v8;

    v10 = v7->_queue;
    v11 = dispatch_get_global_queue(33, 0);
    dispatch_set_target_queue(v10, v11);

    xpc_connection_set_target_queue(v7->_connection, v7->_queue);
    v12 = [[CSAudioSessionProvidingProxy alloc] initWithXPCConnection:v7];
    audioSessionProvidingProxy = v7->_audioSessionProvidingProxy;
    v7->_audioSessionProvidingProxy = v12;

    v14 = [[CSFallbackAudioSessionReleaseProvidingProxy alloc] initWithXPCConnection:v7];
    fallbackAudioSessionProvidingProxy = v7->_fallbackAudioSessionProvidingProxy;
    v7->_fallbackAudioSessionProvidingProxy = v14;

    v16 = [[CSAudioStreamProvidingProxy alloc] initWithXPCConnection:v7];
    audioStreamProvidingProxy = v7->_audioStreamProvidingProxy;
    v7->_audioStreamProvidingProxy = v16;

    v18 = [[CSAudioAlertProvidingProxy alloc] initWithXPCConnection:v7];
    audioAlertProvidingProxy = v7->_audioAlertProvidingProxy;
    v7->_audioAlertProvidingProxy = v18;

    v20 = [[CSAudioMeterProvidingProxy alloc] initWithXPCConnection:v7];
    audioMeterProvidingProxy = v7->_audioMeterProvidingProxy;
    v7->_audioMeterProvidingProxy = v20;

    v22 = [[CSAudioMetricProvidingProxy alloc] initWithXPCConnection:v7];
    audioMetricProvidingProxy = v7->_audioMetricProvidingProxy;
    v7->_audioMetricProvidingProxy = v22;

    v24 = +[CSAudioSessionInfoProvider sharedInstance];
    v25 = [[CSAudioSessionInfoProvidingProxy alloc] initWithXPCConnection:v7];
    audioSessionInfoProvidingProxy = v7->_audioSessionInfoProvidingProxy;
    v7->_audioSessionInfoProvidingProxy = v25;

    [v24 registerObserver:v7->_audioSessionInfoProvidingProxy];
    [(CSAudioSessionInfoProvidingProxy *)v7->_audioSessionInfoProvidingProxy setAudioSessionInfoProvider:v24];
  }

  return v7;
}

@end