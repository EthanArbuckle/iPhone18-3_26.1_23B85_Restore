@interface CSDeviceActivationXPCListener
- (CSDeviceActivationXPCListener)initWithMachServiceName:(const char *)a3;
- (void)CSActivationXPCConnectionReceivedClientError:(id)a3 clientError:(id)a4 client:(id)a5;
- (void)_handleListenerError:(id)a3;
- (void)_handleListenerEvent:(id)a3;
- (void)_handleNewRemoteConnection:(id)a3;
- (void)listen;
@end

@implementation CSDeviceActivationXPCListener

- (void)listen
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[CSDeviceActivationXPCListener listen]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s CSActivationXPCListener start listening", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  listener = self->_listener;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __39__CSDeviceActivationXPCListener_listen__block_invoke;
  handler[3] = &unk_1E865CA90;
  objc_copyWeak(&v7, buf);
  xpc_connection_set_event_handler(listener, handler);
  xpc_connection_activate(self->_listener);
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)CSActivationXPCConnectionReceivedClientError:(id)a3 clientError:(id)a4 client:(id)a5
{
  v7 = a3;
  v8 = a5;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__CSDeviceActivationXPCListener_CSActivationXPCConnectionReceivedClientError_clientError_client___block_invoke;
  block[3] = &unk_1E865C778;
  v13 = v8;
  v14 = v7;
  v15 = self;
  v10 = v7;
  v11 = v8;
  dispatch_async(queue, block);
}

void __97__CSDeviceActivationXPCListener_CSActivationXPCConnectionReceivedClientError_clientError_client___block_invoke(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v5 = 136315394;
    v6 = "[CSDeviceActivationXPCListener CSActivationXPCConnectionReceivedClientError:clientError:client:]_block_invoke";
    v7 = 2050;
    v8 = v3;
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Client connection disconnected, removing %{public}p from client connection pool", &v5, 0x16u);
  }

  if (a1[5])
  {
    [*(a1[6] + 24) removeObject:?];
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_handleNewRemoteConnection:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (v4)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CSDeviceActivationXPCListener _handleNewRemoteConnection:]";
      v10 = 2050;
      v11 = v4;
      _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Getting new client connection : %{public}p", &v8, 0x16u);
    }

    if ([CSUtils machXPCConnection:v4 hasEntitlement:@"corespeechd.activation"])
    {
      v6 = [[CSDeviceActivationXPCConnection alloc] initWithConnection:v4];
      [(CSDeviceActivationXPCConnection *)v6 activateConnection];
      [(CSDeviceActivationXPCConnection *)v6 setDelegate:self];
      if (v6)
      {
        [(NSMutableArray *)self->_connections addObject:v6];
      }
    }
  }

  else if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315138;
    v9 = "[CSDeviceActivationXPCListener _handleNewRemoteConnection:]";
    _os_log_error_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_ERROR, "%s Connection request is nil", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_handleListenerError:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v6 = *MEMORY[0x1E69E9E28];
    v7 = v4;
    v8 = 136315394;
    v9 = "[CSDeviceActivationXPCListener _handleListenerError:]";
    v10 = 2082;
    string = xpc_dictionary_get_string(a3, v6);
    _os_log_error_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_ERROR, "%s Error = %{public}s", &v8, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_handleListenerEvent:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[CSDeviceActivationXPCListener _handleListenerEvent:]";
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Received new remote control connection request", &v8, 0xCu);
  }

  if (v4)
  {
    if (MEMORY[0x1E12BAC70](v4) == MEMORY[0x1E69E9E98])
    {
      [(CSDeviceActivationXPCListener *)self _handleListenerError:v4];
    }

    else
    {
      [(CSDeviceActivationXPCListener *)self _handleNewRemoteConnection:v4];
    }
  }

  else
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[CSDeviceActivationXPCListener _handleListenerEvent:]";
      _os_log_error_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_ERROR, "%s Connection request is nil", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __39__CSDeviceActivationXPCListener_listen__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleListenerEvent:v3];
}

- (CSDeviceActivationXPCListener)initWithMachServiceName:(const char *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = CSDeviceActivationXPCListener;
  v4 = [(CSDeviceActivationXPCListener *)&v14 init];
  if (v4)
  {
    v5 = [CSUtils getSerialQueue:@"CSActivationXPCListener" qualityOfService:33];
    v6 = *(v4 + 1);
    *(v4 + 1) = v5;

    mach_service = xpc_connection_create_mach_service(a3, *(v4 + 1), 1uLL);
    v8 = *(v4 + 2);
    *(v4 + 2) = mach_service;

    v9 = [MEMORY[0x1E695DF70] array];
    v10 = *(v4 + 3);
    *(v4 + 3) = v9;
  }

  CSLogInitIfNeededWithSubsystemType(0);
  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[CSDeviceActivationXPCListener initWithMachServiceName:]";
    v17 = 2080;
    v18 = a3;
    _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s machServiceName: %s", buf, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v4;
}

@end