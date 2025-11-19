@interface CSDeviceActivationXPCClient
- (CSDeviceActivationXPCClient)initWithMachServiceName:(const char *)a3;
- (id)_decodeError:(id)a3;
- (void)_handleListenerError:(id)a3;
- (void)_handleListenerEvent:(id)a3;
- (void)_sendMessage:(id)a3 connection:(id)a4 completion:(id)a5;
- (void)connect;
- (void)dealloc;
- (void)notifyActivationEvent:(id)a3 completion:(id)a4;
@end

@implementation CSDeviceActivationXPCClient

- (id)_decodeError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    string = xpc_dictionary_get_string(v3, "resultErrorDomain");
    if (string)
    {
      int64 = xpc_dictionary_get_int64(v4, "resultErrorCode");
      v7 = MEMORY[0x1E696ABC0];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
      string = [v7 errorWithDomain:v8 code:int64 userInfo:0];
    }
  }

  else
  {
    string = 0;
  }

  return string;
}

- (void)_sendMessage:(id)a3 connection:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8 && v9)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __66__CSDeviceActivationXPCClient__sendMessage_connection_completion___block_invoke;
    v13[3] = &unk_1E865CAF8;
    v13[4] = self;
    v14 = v10;
    xpc_connection_send_message_with_reply(v9, v8, 0, v13);
  }

  else if (v10)
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:1252 userInfo:0];
    (v11)[2](v11, 0, v12);
  }
}

void __66__CSDeviceActivationXPCClient__sendMessage_connection_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v8 = v3;
    v4 = xpc_dictionary_get_BOOL(v3, "result");
    v5 = [*(a1 + 32) _decodeError:v8];
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, v4, v5);
    }
  }

  else
  {
    v7 = *(a1 + 40);
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = 0;
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:1251 userInfo:0];
    (*(v7 + 16))(v7, 0, v5);
  }

  v3 = v8;
LABEL_7:
}

- (void)notifyActivationEvent:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[CSDeviceActivationXPCClient notifyActivationEvent:completion:]";
    _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__CSDeviceActivationXPCClient_notifyActivationEvent_completion___block_invoke;
  v14[3] = &unk_1E865CAB8;
  v9 = v7;
  v15 = v9;
  v10 = MEMORY[0x1E12BA300](v14);
  *buf = xmmword_1E865CAD8;
  values[0] = xpc_int64_create(2);
  values[1] = [v6 xpcObject];
  v11 = xpc_dictionary_create(buf, values, 2uLL);
  [(CSDeviceActivationXPCClient *)self _sendMessage:v11 connection:self->_xpcConnection completion:v10];

  for (i = 1; i != -1; --i)
  {
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __64__CSDeviceActivationXPCClient_notifyActivationEvent_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_handleListenerError:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v15 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v18 = 136315394;
    v19 = "[CSDeviceActivationXPCClient _handleListenerError:]";
    v20 = 2050;
    v21 = 0;
    v13 = "%s cannot handle error : error = %{public}p";
    goto LABEL_17;
  }

  v6 = MEMORY[0x1E69E9E20];
  if (v4 != MEMORY[0x1E69E9E20] && v4 != MEMORY[0x1E69E9E18])
  {
    string = xpc_dictionary_get_string(v4, *MEMORY[0x1E69E9E28]);
    v15 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v18 = 136315394;
    v19 = "[CSDeviceActivationXPCClient _handleListenerError:]";
    v20 = 2082;
    v21 = string;
    v13 = "%s connection error: %{public}s";
LABEL_17:
    _os_log_error_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_ERROR, v13, &v18, 0x16u);
    goto LABEL_15;
  }

  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315138;
    v19 = "[CSDeviceActivationXPCClient _handleListenerError:]";
    _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s Listener connection disconnected", &v18, 0xCu);
  }

  if (v5 == v6)
  {
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      xpcConnection = self->_xpcConnection;
      v11 = v9;
      v12 = xpc_connection_copy_invalidation_reason();
      v18 = 136315394;
      v19 = "[CSDeviceActivationXPCClient _handleListenerError:]";
      v20 = 2080;
      v21 = v12;
      _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s XPC Connection Invalidated for reason: %s", &v18, 0x16u);
    }
  }

LABEL_15:

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_handleListenerEvent:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (MEMORY[0x1E12BAC70](v4) == MEMORY[0x1E69E9E98])
    {
      [(CSDeviceActivationXPCClient *)self _handleListenerError:v5];
      goto LABEL_9;
    }

    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[CSDeviceActivationXPCClient _handleListenerEvent:]";
      v7 = "%s ignore unknown types of message ";
      v8 = v6;
      v9 = 12;
LABEL_7:
      _os_log_error_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_ERROR, v7, &v12, v9);
    }
  }

  else
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[CSDeviceActivationXPCClient _handleListenerEvent:]";
      v14 = 2050;
      v15 = 0;
      v7 = "%s cannot handle event : event = %{public}p";
      v8 = v10;
      v9 = 22;
      goto LABEL_7;
    }
  }

LABEL_9:

  v11 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[CSDeviceActivationXPCClient dealloc]";
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s disconnect activationXPCClient", buf, 0xCu);
      xpcConnection = self->_xpcConnection;
    }

    xpc_connection_cancel(xpcConnection);
    v5 = self->_xpcConnection;
    self->_xpcConnection = 0;
  }

  v7.receiver = self;
  v7.super_class = CSDeviceActivationXPCClient;
  [(CSDeviceActivationXPCClient *)&v7 dealloc];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)connect
{
  objc_initWeak(&location, self);
  xpcConnection = self->_xpcConnection;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__CSDeviceActivationXPCClient_connect__block_invoke;
  v4[3] = &unk_1E865CA90;
  objc_copyWeak(&v5, &location);
  xpc_connection_set_event_handler(xpcConnection, v4);
  xpc_connection_activate(self->_xpcConnection);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __38__CSDeviceActivationXPCClient_connect__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleListenerEvent:v3];
}

- (CSDeviceActivationXPCClient)initWithMachServiceName:(const char *)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = CSDeviceActivationXPCClient;
  v4 = [(CSDeviceActivationXPCClient *)&v10 init];
  if (v4)
  {
    CSLogInitIfNeededWithSubsystemType(0);
    mach_service = xpc_connection_create_mach_service(a3, 0, 0);
    xpcConnection = v4->_xpcConnection;
    v4->_xpcConnection = mach_service;

    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "[CSDeviceActivationXPCClient initWithMachServiceName:]";
      v13 = 2080;
      v14 = a3;
      _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s machServiceName : %s", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

@end