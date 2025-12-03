@interface CMFXPCService
- (BOOL)_connect;
- (BOOL)_disconnect;
- (CMFXPCService)init;
- (id)sendSynchronousXPCRequest:(id)request;
- (void)_disconnected;
- (void)_sendXPCRequest:(id)request completionBlock:(id)block;
- (void)dealloc;
@end

@implementation CMFXPCService

- (CMFXPCService)init
{
  v6.receiver = self;
  v6.super_class = CMFXPCService;
  v2 = [(CMFXPCService *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.cmfxpcservice", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    xpc_connection_cancel(connection);
    v4 = self->_connection;
    self->_connection = 0;
  }

  v5.receiver = self;
  v5.super_class = CMFXPCService;
  [(CMFXPCService *)&v5 dealloc];
}

- (id)sendSynchronousXPCRequest:(id)request
{
  requestCopy = request;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__CMFXPCService_sendSynchronousXPCRequest___block_invoke;
  v8[3] = &unk_278DE6E60;
  v8[4] = &v9;
  v5 = MEMORY[0x245D4C7E0](v8);
  self->_retries = 0;
  [(CMFXPCService *)self _sendXPCRequest:requestCopy completionBlock:v5];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)_sendXPCRequest:(id)request completionBlock:(id)block
{
  requestCopy = request;
  blockCopy = block;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__CMFXPCService__sendXPCRequest_completionBlock___block_invoke;
  block[3] = &unk_278DE6E88;
  block[4] = self;
  v12 = requestCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = requestCopy;
  dispatch_sync(queue, block);
}

void __49__CMFXPCService__sendXPCRequest_completionBlock___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) _connect])
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D191A8] code:-1 userInfo:0];
    v4 = 0;
    goto LABEL_22;
  }

  v2 = xpc_connection_send_message_with_reply_sync(*(*(a1 + 32) + 8), *(a1 + 40));
  v3 = MEMORY[0x245D4C900]();
  if (v3 != MEMORY[0x277D86480])
  {
    if (v3 == MEMORY[0x277D86468])
    {
      v7 = CMFDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v14 = 134217984;
        v15 = v8;
        _os_log_impl(&dword_243BDE000, v7, OS_LOG_TYPE_DEFAULT, "Result back for request (%p)", &v14, 0xCu);
      }

      v5 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
      v4 = IMGetXPCDictionaryFromDictionary();
      v9 = CMFDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v4 allKeys];
        v14 = 138412290;
        v15 = v10;
        _os_log_impl(&dword_243BDE000, v9, OS_LOG_TYPE_DEFAULT, "Response: %@", &v14, 0xCu);
      }

      v11 = CMFDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 134217984;
        v15 = v5;
        _os_log_impl(&dword_243BDE000, v11, OS_LOG_TYPE_DEFAULT, "Error: %p", &v14, 0xCu);
      }
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    goto LABEL_21;
  }

  if (v2 == MEMORY[0x277D863F8])
  {
    v6 = CMFDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __49__CMFXPCService__sendXPCRequest_completionBlock___block_invoke_cold_2(v6);
    }

    goto LABEL_19;
  }

  if (v2 == MEMORY[0x277D863F0])
  {
    v6 = CMFDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __49__CMFXPCService__sendXPCRequest_completionBlock___block_invoke_cold_1(v6);
    }

LABEL_19:
  }

  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D191A8] code:-1 userInfo:0];
  v4 = 0;
LABEL_21:

LABEL_22:
  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, v4, v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_connect
{
  if (self->_connection)
  {
    return 1;
  }

  v11 = v2;
  v12 = v3;
  v6 = CMFDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_243BDE000, v6, OS_LOG_TYPE_DEFAULT, "Connecting to CMFSync Agent", v10, 2u);
  }

  v7 = IMXPCCreateConnectionForServiceWithQueue();
  connection = self->_connection;
  self->_connection = v7;

  v9 = self->_connection;
  IMXPCConfigureConnection();
  return self->_connection != 0;
}

uint64_t __25__CMFXPCService__connect__block_invoke(uint64_t a1)
{
  v2 = CMFDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_243BDE000, v2, OS_LOG_TYPE_DEFAULT, "com.apple.cmfsyncagent", v4, 2u);
  }

  return [*(a1 + 32) _disconnected];
}

- (BOOL)_disconnect
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__CMFXPCService__disconnect__block_invoke;
  block[3] = &unk_278DE6EB0;
  block[4] = self;
  dispatch_async(queue, block);
  return 1;
}

void __28__CMFXPCService__disconnect__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 8))
  {
    v2 = CMFDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_243BDE000, v2, OS_LOG_TYPE_DEFAULT, "Forcing a disconnect, terminating connection", v5, 2u);
    }

    xpc_connection_cancel(*(*(a1 + 32) + 8));
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    *(v3 + 8) = 0;
  }
}

- (void)_disconnected
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__CMFXPCService__disconnected__block_invoke;
  block[3] = &unk_278DE6EB0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __30__CMFXPCService__disconnected__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 8))
  {
    v2 = CMFDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_243BDE000, v2, OS_LOG_TYPE_DEFAULT, "Clearing out _connection, we're disconnected", v5, 2u);
    }

    xpc_connection_cancel(*(*(a1 + 32) + 8));
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    *(v3 + 8) = 0;
  }
}

@end