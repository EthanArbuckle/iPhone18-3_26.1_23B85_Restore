@interface CSVoiceTriggerXPCConnection
- (CSVoiceTriggerXPCConnection)initWithConnection:(id)connection;
- (CSVoiceTriggerXPCConnectionDelegate)delegate;
- (void)_handleClientError:(id)error client:(id)client;
- (void)_handleClientEvent:(id)event;
- (void)_handleClientMessage:(id)message client:(id)client;
- (void)_handleEnableVoiceTriggerWithSiriAssertionRequest:(id)request;
- (void)_handlePhraseSpotterBypassRequest:(id)request;
- (void)_handleRaiseToSpeakBypassRequest:(id)request;
- (void)_handleVoiceTriggerStatsFetchEvent:(id)event client:(id)client;
- (void)_handleVoiceTriggerXPCServiceMessage:(id)message client:(id)client;
- (void)_handleVoiceTriggeredSiriSessionCancelled;
- (void)_sendReply:(id)reply client:(id)client result:(BOOL)result error:(id)error;
- (void)activateConnection;
@end

@implementation CSVoiceTriggerXPCConnection

- (CSVoiceTriggerXPCConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleVoiceTriggerStatsFetchEvent:(id)event client:(id)client
{
  clientCopy = client;
  eventCopy = event;
  v7 = +[CSVoiceTriggerXPCServiceProxy sharedInstance];
  fetchVoiceTriggerStats = [v7 fetchVoiceTriggerStats];

  reply = xpc_dictionary_create_reply(eventCopy);
  xpc_dictionary_set_BOOL(reply, "result", fetchVoiceTriggerStats != 0);
  _cs_xpcObject = [fetchVoiceTriggerStats _cs_xpcObject];
  xpc_dictionary_set_value(reply, "triggerStats", _cs_xpcObject);

  xpc_connection_send_message(clientCopy, reply);
}

- (void)_handleEnableVoiceTriggerWithSiriAssertionRequest:(id)request
{
  requestCopy = request;
  v4 = xpc_dictionary_get_BOOL(requestCopy, "enable");
  v7 = [NSString stringWithUTF8String:xpc_dictionary_get_string(requestCopy, "assertion")];
  v5 = xpc_dictionary_get_double(requestCopy, "timestamp");

  v6 = +[CSVoiceTriggerXPCServiceProxy sharedInstance];
  [v6 enableVoiceTrigger:v4 withAssertion:v7 timestamp:v5];
}

- (void)_handleVoiceTriggeredSiriSessionCancelled
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSVoiceTriggerXPCConnection _handleVoiceTriggeredSiriSessionCancelled]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Received Siri Session did cancelled", &v4, 0xCu);
  }

  v3 = +[CSVoiceTriggerXPCServiceProxy sharedInstance];
  [v3 notifyVoiceTriggeredSiriSessionCancelled];
}

- (void)_handleRaiseToSpeakBypassRequest:(id)request
{
  requestCopy = request;
  v4 = xpc_dictionary_get_BOOL(requestCopy, "raiseToSpeakBypass");
  v5 = xpc_dictionary_get_double(requestCopy, "bypassTimeout");

  v6 = +[CSVoiceTriggerXPCServiceProxy sharedInstance];
  [v6 setRaiseToSpeakBypassing:v4 timeout:v5];
}

- (void)_handlePhraseSpotterBypassRequest:(id)request
{
  requestCopy = request;
  v4 = xpc_dictionary_get_BOOL(requestCopy, "phraseSpotterBypass");
  v5 = xpc_dictionary_get_double(requestCopy, "bypassTimeout");

  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[CSVoiceTriggerXPCConnection _handlePhraseSpotterBypassRequest:]";
    v10 = 1026;
    v11 = v4;
    v12 = 2050;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Request to bypass PhraseSpotter : %{public}d with timeout %{public}lf seconds", &v8, 0x1Cu);
  }

  v7 = +[CSVoiceTriggerXPCServiceProxy sharedInstance];
  [v7 setPhraseSpotterBypassing:v4 timeout:v5];
}

- (void)_handleVoiceTriggerXPCServiceMessage:(id)message client:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v8 = xpc_dictionary_get_dictionary(messageCopy, "body");
  v9 = v8;
  if (!clientCopy || !messageCopy || !v8)
  {
    v12 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v17 = 136315138;
    v18 = "[CSVoiceTriggerXPCConnection _handleVoiceTriggerXPCServiceMessage:client:]";
    v14 = "%s Cannot handle audio providing message";
    v15 = v12;
    v16 = 12;
LABEL_20:
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v14, &v17, v16);
    goto LABEL_10;
  }

  int64 = xpc_dictionary_get_int64(v8, "type");
  v11 = int64;
  if (int64 <= 2)
  {
    if (int64 == 1)
    {
      [(CSVoiceTriggerXPCConnection *)self _handlePhraseSpotterBypassRequest:v9];
      goto LABEL_10;
    }

    if (int64 == 2)
    {
      [(CSVoiceTriggerXPCConnection *)self _handleVoiceTriggeredSiriSessionCancelled];
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  if (int64 == 3)
  {
    [(CSVoiceTriggerXPCConnection *)self _handleEnableVoiceTriggerWithSiriAssertionRequest:v9];
    goto LABEL_10;
  }

  if (int64 == 4)
  {
    [(CSVoiceTriggerXPCConnection *)self _handleRaiseToSpeakBypassRequest:v9];
    goto LABEL_10;
  }

  if (int64 != 5)
  {
LABEL_17:
    v13 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v17 = 136315394;
    v18 = "[CSVoiceTriggerXPCConnection _handleVoiceTriggerXPCServiceMessage:client:]";
    v19 = 2050;
    v20 = v11;
    v14 = "%s Unexpected XPC Metric providing request : %{public}lld";
    v15 = v13;
    v16 = 22;
    goto LABEL_20;
  }

  [(CSVoiceTriggerXPCConnection *)self _handleVoiceTriggerStatsFetchEvent:messageCopy client:clientCopy];
LABEL_10:
}

- (void)_sendReply:(id)reply client:(id)client result:(BOOL)result error:(id)error
{
  clientCopy = client;
  message = xpc_dictionary_create_reply(reply);
  xpc_dictionary_set_BOOL(message, "result", result);
  xpc_connection_send_message(clientCopy, message);
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
        v20 = "[CSVoiceTriggerXPCConnection _handleClientError:client:]";
        v21 = 2050;
        v22 = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Client %{public}p connection disconnected, noticing xpc listener", &v19, 0x16u);
      }

      [(CSVoiceTriggerXPCConnection *)self _handleServiceConnectionLostIfNeeded];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (WeakRetained)
      {
        v12 = WeakRetained;
        v13 = objc_loadWeakRetained(&self->_delegate);
        v14 = objc_opt_respondsToSelector();

        if (v14)
        {
          v15 = objc_loadWeakRetained(&self->_delegate);
          [v15 CSVoiceTriggerXPCConnectionReceivedClientError:self clientError:errorCopy client:v8];
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
        v20 = "[CSVoiceTriggerXPCConnection _handleClientError:client:]";
        v21 = 2082;
        v22 = string;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s connection error: %{public}s", &v19, 0x16u);
      }
    }
  }
}

- (void)_handleClientMessage:(id)message client:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v8 = clientCopy;
  if (!messageCopy || !clientCopy)
  {
    v9 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v14 = 136315650;
    v15 = "[CSVoiceTriggerXPCConnection _handleClientMessage:client:]";
    v16 = 2050;
    v17 = messageCopy;
    v18 = 2050;
    v19 = v8;
    v10 = "%s message = %{public}p, client = %{public}p, cannot handle message";
    v11 = v9;
    v12 = 32;
LABEL_10:
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v10, &v14, v12);
    goto LABEL_8;
  }

  if (xpc_dictionary_get_int64(messageCopy, "type") != 2)
  {
    v13 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v14 = 136315138;
    v15 = "[CSVoiceTriggerXPCConnection _handleClientMessage:client:]";
    v10 = "%s Cannot handle wrong message type";
    v11 = v13;
    v12 = 12;
    goto LABEL_10;
  }

  [(CSVoiceTriggerXPCConnection *)self _handleVoiceTriggerXPCServiceMessage:messageCopy client:v8];
LABEL_8:
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
      [(CSVoiceTriggerXPCConnection *)self _handleClientMessage:v5 client:self->_connection];
      goto LABEL_12;
    }

    if (type == &_xpc_type_error)
    {
      [(CSVoiceTriggerXPCConnection *)self _handleClientError:v5 client:self->_connection];
      goto LABEL_12;
    }

    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = "[CSVoiceTriggerXPCConnection _handleClientEvent:]";
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
      v14 = "[CSVoiceTriggerXPCConnection _handleClientEvent:]";
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

- (void)activateConnection
{
  objc_initWeak(&location, self);
  connection = self->_connection;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001520B8;
  v4[3] = &unk_100252EC8;
  objc_copyWeak(&v5, &location);
  xpc_connection_set_event_handler(connection, v4);
  xpc_connection_activate(self->_connection);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (CSVoiceTriggerXPCConnection)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v13.receiver = self;
  v13.super_class = CSVoiceTriggerXPCConnection;
  v6 = [(CSVoiceTriggerXPCConnection *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
    v8 = dispatch_queue_create("voicetrigger xpc service connection client queue", 0);
    queue = v7->_queue;
    v7->_queue = v8;

    v10 = v7->_queue;
    v11 = dispatch_get_global_queue(33, 0);
    dispatch_set_target_queue(v10, v11);

    xpc_connection_set_target_queue(v7->_connection, v7->_queue);
  }

  return v7;
}

@end