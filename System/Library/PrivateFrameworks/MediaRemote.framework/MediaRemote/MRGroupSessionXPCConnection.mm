@interface MRGroupSessionXPCConnection
- (MRGroupSessionXPCConnection)initWithClientObject:(id)a3 invalidationHandler:(id)a4;
- (id)server;
- (void)dealloc;
- (void)initializeConnection;
- (void)sendMessage:(id)a3;
@end

@implementation MRGroupSessionXPCConnection

- (MRGroupSessionXPCConnection)initWithClientObject:(id)a3 invalidationHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = MRGroupSessionXPCConnection;
  v9 = [(MRGroupSessionXPCConnection *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientObject, a3);
    v11 = MEMORY[0x1A58E3570](v8);
    invalidationHandler = v10->_invalidationHandler;
    v10->_invalidationHandler = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = MRGroupSessionSubsystemGetQueue();
    v15 = dispatch_queue_create_with_target_V2("com.apple.MRDGroupSessionClient.queue", v13, v14);
    queue = v10->_queue;
    v10->_queue = v15;

    v17 = v10->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__MRGroupSessionXPCConnection_initWithClientObject_invalidationHandler___block_invoke;
    block[3] = &unk_1E769A228;
    v20 = v10;
    dispatch_async(v17, block);
  }

  return v10;
}

- (void)dealloc
{
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  [(NSXPCConnection *)self->_connection invalidate];
  v4.receiver = self;
  v4.super_class = MRGroupSessionXPCConnection;
  [(MRGroupSessionXPCConnection *)&v4 dealloc];
}

- (void)initializeConnection
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_1A2860000, a2, OS_LOG_TYPE_ERROR, "[MRGroupSessionXPCConnection] <%p> Received nil XPC endpoint. Failing.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __51__MRGroupSessionXPCConnection_initializeConnection__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _MRLogForCategory(0xCuLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      v6 = WeakRetained;
      _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "[MRGroupSessionXPCConnection] <%p> XPC interrupted.", &v5, 0xCu);
    }

    v3 = [WeakRetained connection];
    [v3 invalidate];
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __51__MRGroupSessionXPCConnection_initializeConnection__block_invoke_58(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _MRLogForCategory(0xCuLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      v6 = WeakRetained;
      _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "[MRGroupSessionXPCConnection] <%p> XPC invalidated.", &v5, 0xCu);
    }

    v3 = [WeakRetained invalidationHandler];
    v3[2]();
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (id)server
{
  v3 = [(MRGroupSessionXPCConnection *)self connection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__MRGroupSessionXPCConnection_server__block_invoke;
  v6[3] = &unk_1E769AFC0;
  v6[4] = self;
  v4 = [v3 remoteObjectProxyWithErrorHandler:v6];

  return v4;
}

void __37__MRGroupSessionXPCConnection_server__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _MRLogForCategory(0xCuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 134218242;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "[MRGroupSessionXPCConnection] <%p> Server proxy error %@.", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)sendMessage:(id)a3
{
  v4 = a3;
  v5 = [(MRGroupSessionXPCConnection *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__MRGroupSessionXPCConnection_sendMessage___block_invoke;
  v7[3] = &unk_1E769AB28;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __43__MRGroupSessionXPCConnection_sendMessage___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) server];
  (*(v1 + 16))(v1, v2);
}

@end