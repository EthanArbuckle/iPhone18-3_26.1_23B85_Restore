@interface CSDeviceActivationXPCConnection
- (CSDeviceActivateXPCConnectionDelegate)delegate;
- (CSDeviceActivationXPCConnection)initWithConnection:(id)a3;
- (void)_handleActivateEventMesssage:(id)a3 client:(id)a4;
- (void)_handleClientError:(id)a3 client:(id)a4;
- (void)_handleClientEvent:(id)a3;
- (void)_handleClientMessage:(id)a3 client:(id)a4;
- (void)_sendReply:(id)a3 client:(id)a4 result:(BOOL)a5 error:(id)a6;
- (void)activateConnection;
@end

@implementation CSDeviceActivationXPCConnection

- (CSDeviceActivateXPCConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleActivateEventMesssage:(id)a3 client:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = xpc_dictionary_get_dictionary(v6, "event");
  if (v8)
  {
    v9 = [[CSDeviceActivationEvent alloc] initWithXPCObject:v8];
    v10 = +[CSDeviceActivationEventNotificationHandler sharedInstance];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __71__CSDeviceActivationXPCConnection__handleActivateEventMesssage_client___block_invoke;
    v13[3] = &unk_1E865AEA0;
    v13[4] = self;
    v14 = v6;
    v15 = v7;
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

    [(CSDeviceActivationXPCConnection *)self _sendReply:v6 client:v7 result:0 error:0];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_sendReply:(id)a3 client:(id)a4 result:(BOOL)a5 error:(id)a6
{
  connection = a4;
  v9 = a6;
  reply = xpc_dictionary_create_reply(a3);
  v11 = reply;
  if (reply)
  {
    xpc_dictionary_set_BOOL(reply, "result", a5);
    if (v9)
    {
      v12 = [v9 domain];
      xpc_dictionary_set_string(v11, "resultErrorDomain", [v12 UTF8String]);

      xpc_dictionary_set_int64(v11, "resultErrorCode", [v9 code]);
    }

    xpc_connection_send_message(connection, v11);
  }
}

- (void)_handleClientError:(id)a3 client:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    if (v6 == MEMORY[0x1E69E9E20] || v6 == MEMORY[0x1E69E9E18])
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
          [v15 CSActivationXPCConnectionReceivedClientError:self clientError:v6 client:v8];
        }
      }
    }

    else
    {
      string = xpc_dictionary_get_string(v6, *MEMORY[0x1E69E9E28]);
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

- (void)_handleClientMessage:(id)a3 client:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6 || !v7)
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v17 = 136315650;
    v18 = "[CSDeviceActivationXPCConnection _handleClientMessage:client:]";
    v19 = 2050;
    v20 = v6;
    v21 = 2050;
    v22 = v8;
    v12 = "%s message = %{public}p, client = %{public}p, cannot handle message";
    v13 = v11;
    v14 = 32;
LABEL_12:
    _os_log_error_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_ERROR, v12, &v17, v14);
    goto LABEL_10;
  }

  int64 = xpc_dictionary_get_int64(v6, "type");
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

  [(CSDeviceActivationXPCConnection *)self _handleActivateEventMesssage:v6 client:v8];
LABEL_10:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_handleClientEvent:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && self->_connection)
  {
    v6 = MEMORY[0x1E12BAC70](v4);
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

- (CSDeviceActivationXPCConnection)initWithConnection:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = CSDeviceActivationXPCConnection;
  v6 = [(CSDeviceActivationXPCConnection *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
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