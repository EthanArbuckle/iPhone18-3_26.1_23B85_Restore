@interface CKVXPCServiceBridge
- (CKVXPCServiceBridge)init;
- (CKVXPCServiceBridge)initWithServiceProtocol:(id)a3 machServiceName:(id)a4;
- (id)_getOrCreateXPCServiceConnection;
- (id)service;
- (void)_clearXPCServiceConnection;
- (void)dealloc;
@end

@implementation CKVXPCServiceBridge

- (void)dealloc
{
  [(CKVXPCServiceBridge *)self _clearXPCServiceConnection];
  v3.receiver = self;
  v3.super_class = CKVXPCServiceBridge;
  [(CKVXPCServiceBridge *)&v3 dealloc];
}

- (id)service
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__CKVXPCServiceBridge_service__block_invoke;
  block[3] = &unk_1E831E828;
  block[4] = self;
  dispatch_sync(queue, block);
  return self->_remoteObjectProxy;
}

void __30__CKVXPCServiceBridge_service__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[7])
  {
    v6 = [v2 _getOrCreateXPCServiceConnection];
    v3 = [v6 remoteObjectProxy];
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    *(v4 + 56) = v3;
  }
}

- (void)_clearXPCServiceConnection
{
  queue = self->_queue;
  if (queue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__CKVXPCServiceBridge__clearXPCServiceConnection__block_invoke;
    block[3] = &unk_1E831E828;
    block[4] = self;
    dispatch_sync(queue, block);
  }
}

void __49__CKVXPCServiceBridge__clearXPCServiceConnection__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  *(v4 + 56) = 0;
}

- (id)_getOrCreateXPCServiceConnection
{
  v22 = *MEMORY[0x1E69E9840];
  serviceConnection = self->_serviceConnection;
  if (!serviceConnection)
  {
    objc_initWeak(&location, self);
    v4 = CKLogContextVocabulary;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromProtocol(self->_serviceProtocol);
      *buf = 136315394;
      v19 = "[CKVXPCServiceBridge _getOrCreateXPCServiceConnection]";
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_1C8683000, v4, OS_LOG_TYPE_INFO, "%s Connecting to XPC service with interface: %@", buf, 0x16u);
    }

    v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:self->_machServiceName options:self->_options];
    v7 = self->_serviceConnection;
    self->_serviceConnection = v6;

    [(NSXPCConnection *)self->_serviceConnection setRemoteObjectInterface:self->_serviceInterface];
    objc_initWeak(buf, self->_serviceConnection);
    v8 = self->_serviceConnection;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __55__CKVXPCServiceBridge__getOrCreateXPCServiceConnection__block_invoke;
    v14[3] = &unk_1E831E588;
    objc_copyWeak(&v15, &location);
    objc_copyWeak(&v16, buf);
    [(NSXPCConnection *)v8 setInterruptionHandler:v14];
    v9 = self->_serviceConnection;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __55__CKVXPCServiceBridge__getOrCreateXPCServiceConnection__block_invoke_5;
    v11[3] = &unk_1E831E588;
    objc_copyWeak(&v12, &location);
    objc_copyWeak(&v13, buf);
    [(NSXPCConnection *)v9 setInvalidationHandler:v11];
    [(NSXPCConnection *)self->_serviceConnection resume];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
    objc_destroyWeak(&location);
    serviceConnection = self->_serviceConnection;
  }

  return serviceConnection;
}

void __55__CKVXPCServiceBridge__getOrCreateXPCServiceConnection__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
  {
    v5 = 136315650;
    v6 = "[CKVXPCServiceBridge _getOrCreateXPCServiceConnection]_block_invoke";
    v7 = 2112;
    v8 = v3;
    v9 = 2112;
    v10 = WeakRetained;
    _os_log_impl(&dword_1C8683000, v4, OS_LOG_TYPE_INFO, "%s service connection %@ by %@ was interrupted", &v5, 0x20u);
  }
}

void __55__CKVXPCServiceBridge__getOrCreateXPCServiceConnection__block_invoke_5(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
  {
    v5 = 136315650;
    v6 = "[CKVXPCServiceBridge _getOrCreateXPCServiceConnection]_block_invoke";
    v7 = 2112;
    v8 = v3;
    v9 = 2112;
    v10 = WeakRetained;
    _os_log_impl(&dword_1C8683000, v4, OS_LOG_TYPE_INFO, "%s service connection %@ by %@ was invalidated", &v5, 0x20u);
  }

  [WeakRetained _clearXPCServiceConnection];
}

- (CKVXPCServiceBridge)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"You must use - initWithServiceProtocol" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CKVXPCServiceBridge)initWithServiceProtocol:(id)a3 machServiceName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = CKVXPCServiceBridge;
  v9 = [(CKVXPCServiceBridge *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceProtocol, a3);
    if (!v10->_serviceProtocol || (v11 = [v8 copy], machServiceName = v10->_machServiceName, v10->_machServiceName = v11, machServiceName, (v13 = v10->_machServiceName) == 0) || !-[NSString length](v13, "length"))
    {
      v19 = 0;
      goto LABEL_8;
    }

    v14 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:v10->_serviceProtocol];
    serviceInterface = v10->_serviceInterface;
    v10->_serviceInterface = v14;

    v10->_options = 0;
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("CKVXPCConnectionQueue", v16);
    queue = v10->_queue;
    v10->_queue = v17;
  }

  v19 = v10;
LABEL_8:

  return v19;
}

@end