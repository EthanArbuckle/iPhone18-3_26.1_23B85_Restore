@interface CSDeviceActivationXPCConnection
- (CSDeviceActivateXPCConnectionDelegate)delegate;
- (CSDeviceActivationXPCConnection)initWithConnection:(id)connection;
- (void)_handleActivateEventMesssage:(id)messsage client:(id)client;
- (void)_handleClientError:(id)error client:(id)client;
- (void)_handleClientEvent:(id)event;
- (void)_handleClientMessage:(id)message client:(id)client;
- (void)_sendReply:(id)reply client:(id)client result:(BOOL)result error:(id)error;
- (void)activateConnection;
@end

@implementation CSDeviceActivationXPCConnection

- (CSDeviceActivateXPCConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleActivateEventMesssage:(id)messsage client:(id)client
{
  v18 = *MEMORY[0x1E69E9840];
  messsageCopy = messsage;
  clientCopy = client;
  v8 = xpc_dictionary_get_dictionary(messsageCopy, "event");
  if (v8)
  {
    v9 = [[CSDeviceActivationEvent alloc] initWithXPCObject:v8];
    v10 = +[CSDeviceActivationEventNotificationHandler sharedInstance];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __71__CSDeviceActivationXPCConnection__handleActivateEventMesssage_client___block_invoke;
    v13[3] = &unk_1E865AEA0;
    v13[4] = self;
    v14 = messsageCopy;
    v15 = clientCopy;
    [v10 notifyActivationEvent:v9 completion:v13];
  }

  else
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "[CSDeviceActivationXPCConnection _handleActivateEventMesssage:client:]";
      _os_log_error_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_ERROR, "%s Cannot handle activateEventMessage since event is nil", buf, 0xCu);
    }

    [(CSDeviceActivationXPCConnection *)self _sendReply:messsageCopy client:clientCopy result:0 error:0];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_sendReply:(id)reply client:(id)client result:(BOOL)result error:(id)error
{
  connection = client;
  errorCopy = error;
  reply = xpc_dictionary_create_reply(reply);
  replyCopy = reply;
  if (reply)
  {
    xpc_dictionary_set_BOOL(reply, "result", result);
    if (errorCopy)
    {
      domain = [errorCopy domain];
      xpc_dictionary_set_string(replyCopy, "resultErrorDomain", [domain UTF8String]);

      xpc_dictionary_set_int64(replyCopy, "resultErrorCode", [errorCopy code]);
    }

    xpc_connection_send_message(connection, replyCopy);
  }
}

- (void)_handleClientError:(id)error client:(id)client
{
  v24 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  clientCopy = client;
  v8 = clientCopy;
  if (errorCopy && clientCopy)
  {
    if (errorCopy == MEMORY[0x1E69E9E20] || errorCopy == MEMORY[0x1E69E9E18])
    {
      v10 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136315394;
        v21 = "[CSDeviceActivationXPCConnection _handleClientError:client:]";
        v22 = 2050;
        v23 = v8;
        _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s Client %{public}p connection disconnected, noticing xpc listener", &v20, 0x16u);
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (WeakRetained)
      {
        v12 = WeakRetained;
        v13 = objc_loadWeakRetained(&self->_delegate);
        v14 = objc_opt_respondsToSelector();

        if (v14)
        {
          v15 = objc_loadWeakRetained(&self->_delegate);
          [v15 CSActivationXPCConnectionReceivedClientError:self clientError:errorCopy client:v8];
        }
      }
    }

    else
    {
      string = xpc_dictionary_get_string(errorCopy, *MEMORY[0x1E69E9E28]);
      v17 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v20 = 136315394;
        v21 = "[CSDeviceActivationXPCConnection _handleClientError:client:]";
        v22 = 2082;
        v23 = string;
        _os_log_error_impl(&dword_1DDA4B000, v17, OS_LOG_TYPE_ERROR, "%s connection error: %{public}s", &v20, 0x16u);
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_handleClientMessage:(id)message client:(id)client
{
  v23 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  clientCopy = client;
  v8 = clientCopy;
  if (!messageCopy || !clientCopy)
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v17 = 136315650;
    v18 = "[CSDeviceActivationXPCConnection _handleClientMessage:client:]";
    v19 = 2050;
    v20 = messageCopy;
    v21 = 2050;
    v22 = v8;
    v12 = "%s message = %{public}p, client = %{public}p, cannot handle message";
    v13 = v11;
    v14 = 32;
LABEL_12:
    _os_log_error_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_ERROR, v12, &v17, v14);
    goto LABEL_10;
  }

  int64 = xpc_dictionary_get_int64(messageCopy, "type");
  v10 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315394;
    v18 = "[CSDeviceActivationXPCConnection _handleClientMessage:client:]";
    v19 = 2050;
    v20 = int64;
    _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s Message type = %{public}lld", &v17, 0x16u);
  }

  if (int64 != 2)
  {
    v15 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v17 = 136315138;
    v18 = "[CSDeviceActivationXPCConnection _handleClientMessage:client:]";
    v12 = "%s Cannot handle wrong message type";
    v13 = v15;
    v14 = 12;
    goto LABEL_12;
  }

  [(CSDeviceActivationXPCConnection *)self _handleActivateEventMesssage:messageCopy client:v8];
LABEL_10:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_handleClientEvent:(id)event
{
  v20 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy && self->_connection)
  {
    v6 = MEMORY[0x1E12BAC70](eventCopy);
    if (v6 == MEMORY[0x1E69E9E80])
    {
      [(CSDeviceActivationXPCConnection *)self _handleClientMessage:v5 client:self->_connection];
      goto LABEL_12;
    }

    if (v6 == MEMORY[0x1E69E9E98])
    {
      [(CSDeviceActivationXPCConnection *)self _handleClientError:v5 client:self->_connection];
      goto LABEL_12;
    }

    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = "[CSDeviceActivationXPCConnection _handleClientEvent:]";
      v8 = "%s ignore unknown types of message";
      v9 = v7;
      v10 = 12;
LABEL_9:
      _os_log_error_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_ERROR, v8, &v14, v10);
    }
  }

  else
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      connection = self->_connection;
      v14 = 136315650;
      v15 = "[CSDeviceActivationXPCConnection _handleClientEvent:]";
      v16 = 2050;
      v17 = v5;
      v18 = 2050;
      v19 = connection;
      v8 = "%s event = %{public}p client = %{public}p cannot handle event";
      v9 = v11;
      v10 = 32;
      goto LABEL_9;
    }
  }

LABEL_12:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)activateConnection
{
  objc_initWeak(&location, self);
  connection = self->_connection;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__CSDeviceActivationXPCConnection_activateConnection__block_invoke;
  v4[3] = &unk_1E865CA90;
  objc_copyWeak(&v5, &location);
  xpc_connection_set_event_handler(connection, v4);
  xpc_connection_activate(self->_connection);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __53__CSDeviceActivationXPCConnection_activateConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleClientEvent:v3];
}

- (CSDeviceActivationXPCConnection)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v13.receiver = self;
  v13.super_class = CSDeviceActivationXPCConnection;
  v6 = [(CSDeviceActivationXPCConnection *)&v13 init];
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
  }

  return v7;
}

@end