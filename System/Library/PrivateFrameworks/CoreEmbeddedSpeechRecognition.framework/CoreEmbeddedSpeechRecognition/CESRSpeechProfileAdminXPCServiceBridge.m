@interface CESRSpeechProfileAdminXPCServiceBridge
- (CESRSpeechProfileAdminXPCServiceBridge)init;
- (CESRSpeechProfileAdminXPCServiceBridge)initWithServiceProtocol:(id)a3 machServiceName:(id)a4;
- (id)_getOrCreateXPCServiceConnection;
- (id)service;
- (void)_clearXPCServiceConnection;
- (void)dealloc;
@end

@implementation CESRSpeechProfileAdminXPCServiceBridge

- (void)dealloc
{
  [(CESRSpeechProfileAdminXPCServiceBridge *)self _clearXPCServiceConnection];
  v3.receiver = self;
  v3.super_class = CESRSpeechProfileAdminXPCServiceBridge;
  [(CESRSpeechProfileAdminXPCServiceBridge *)&v3 dealloc];
}

- (id)service
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__CESRSpeechProfileAdminXPCServiceBridge_service__block_invoke;
  block[3] = &unk_27857FFE8;
  block[4] = self;
  dispatch_sync(queue, block);
  return self->_remoteObjectProxy;
}

void __49__CESRSpeechProfileAdminXPCServiceBridge_service__block_invoke(uint64_t a1)
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
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__CESRSpeechProfileAdminXPCServiceBridge__clearXPCServiceConnection__block_invoke;
    block[3] = &unk_27857FFE8;
    block[4] = self;
    dispatch_sync(queue, block);
  }
}

void __68__CESRSpeechProfileAdminXPCServiceBridge__clearXPCServiceConnection__block_invoke(uint64_t a1)
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
  v23 = *MEMORY[0x277D85DE8];
  serviceConnection = self->_serviceConnection;
  if (!serviceConnection)
  {
    objc_initWeak(&location, self);
    v4 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromProtocol(self->_serviceProtocol);
      *buf = 136315394;
      v20 = "[CESRSpeechProfileAdminXPCServiceBridge _getOrCreateXPCServiceConnection]";
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_225EEB000, v4, OS_LOG_TYPE_INFO, "%s Connecting to XPC service with interface: %@", buf, 0x16u);
    }

    v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:self->_machServiceName options:self->_options];
    v7 = self->_serviceConnection;
    self->_serviceConnection = v6;

    [(NSXPCConnection *)self->_serviceConnection setRemoteObjectInterface:self->_serviceInterface];
    objc_initWeak(buf, self->_serviceConnection);
    v8 = self->_serviceConnection;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __74__CESRSpeechProfileAdminXPCServiceBridge__getOrCreateXPCServiceConnection__block_invoke;
    v15[3] = &unk_27857F3E8;
    objc_copyWeak(&v16, &location);
    objc_copyWeak(&v17, buf);
    [(NSXPCConnection *)v8 setInterruptionHandler:v15];
    v9 = self->_serviceConnection;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __74__CESRSpeechProfileAdminXPCServiceBridge__getOrCreateXPCServiceConnection__block_invoke_5;
    v12[3] = &unk_27857F3E8;
    objc_copyWeak(&v13, &location);
    objc_copyWeak(&v14, buf);
    [(NSXPCConnection *)v9 setInvalidationHandler:v12];
    [(NSXPCConnection *)self->_serviceConnection resume];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
    objc_destroyWeak(&location);
    serviceConnection = self->_serviceConnection;
  }

  v10 = *MEMORY[0x277D85DE8];

  return serviceConnection;
}

void __74__CESRSpeechProfileAdminXPCServiceBridge__getOrCreateXPCServiceConnection__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[CESRSpeechProfileAdminXPCServiceBridge _getOrCreateXPCServiceConnection]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = WeakRetained;
    _os_log_impl(&dword_225EEB000, v4, OS_LOG_TYPE_INFO, "%s service connection %@ by %@ was interrupted", &v6, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __74__CESRSpeechProfileAdminXPCServiceBridge__getOrCreateXPCServiceConnection__block_invoke_5(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[CESRSpeechProfileAdminXPCServiceBridge _getOrCreateXPCServiceConnection]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = WeakRetained;
    _os_log_impl(&dword_225EEB000, v4, OS_LOG_TYPE_INFO, "%s service connection %@ by %@ was invalidated", &v6, 0x20u);
  }

  [WeakRetained _clearXPCServiceConnection];

  v5 = *MEMORY[0x277D85DE8];
}

- (CESRSpeechProfileAdminXPCServiceBridge)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"You must use - initWithServiceProtocol" userInfo:MEMORY[0x277CBEC10]];
  objc_exception_throw(v2);
}

- (CESRSpeechProfileAdminXPCServiceBridge)initWithServiceProtocol:(id)a3 machServiceName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = CESRSpeechProfileAdminXPCServiceBridge;
  v9 = [(CESRSpeechProfileAdminXPCServiceBridge *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceProtocol, a3);
    if (!v10->_serviceProtocol || (v11 = [v8 copy], machServiceName = v10->_machServiceName, v10->_machServiceName = v11, machServiceName, (v13 = v10->_machServiceName) == 0) || !-[NSString length](v13, "length"))
    {
      v19 = 0;
      goto LABEL_8;
    }

    v14 = [MEMORY[0x277CCAE90] interfaceWithProtocol:v10->_serviceProtocol];
    serviceInterface = v10->_serviceInterface;
    v10->_serviceInterface = v14;

    v10->_options = 0;
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("CESRSpeechProfileXPCConnectionQueue", v16);
    queue = v10->_queue;
    v10->_queue = v17;
  }

  v19 = v10;
LABEL_8:

  return v19;
}

@end