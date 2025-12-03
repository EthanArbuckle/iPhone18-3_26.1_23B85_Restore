@interface HearingMLHelperService
- (HearingMLHelperService)init;
- (HearingMLHelperServiceDelegate)delegate;
- (NSXPCConnection)xpcConnection;
- (id)_serviceProxy;
- (void)_destroyXPCConnection;
- (void)dealloc;
- (void)trainWithDetectorID:(id)d hallucinatorPath:(id)path pretrainedWeightsPath:(id)weightsPath resultHandler:(id)handler;
@end

@implementation HearingMLHelperService

- (HearingMLHelperService)init
{
  v6.receiver = self;
  v6.super_class = HearingMLHelperService;
  v2 = [(HearingMLHelperService *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("HearingMLHelperService Connection", 0);
    xpcConnectionQueue = v2->_xpcConnectionQueue;
    v2->_xpcConnectionQueue = v3;
  }

  return v2;
}

- (void)_destroyXPCConnection
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = 0;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = AXLogUltronKShot();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_251F67000, v3, OS_LOG_TYPE_DEFAULT, "HearingMLHelperService being deallocated: %@", buf, 0xCu);
  }

  [(HearingMLHelperService *)self _destroyXPCConnection];
  v5.receiver = self;
  v5.super_class = HearingMLHelperService;
  [(HearingMLHelperService *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (NSXPCConnection)xpcConnection
{
  objc_initWeak(&location, self);
  xpcConnectionQueue = self->_xpcConnectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__HearingMLHelperService_xpcConnection__block_invoke;
  block[3] = &unk_2796EE1A0;
  block[4] = self;
  objc_copyWeak(&v7, &location);
  dispatch_sync(xpcConnectionQueue, block);
  v4 = self->_xpcConnection;
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

void __39__HearingMLHelperService_xpcConnection__block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 24))
  {
    v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.accessibility.HearingMLHelperService"];
    v3 = HearingMLHelperServiceInterface();
    [v2 setRemoteObjectInterface:v3];

    v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286434950];
    [v2 setExportedInterface:v4];

    [v2 setExportedObject:*(a1 + 32)];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __39__HearingMLHelperService_xpcConnection__block_invoke_2;
    v12[3] = &unk_2796EE178;
    objc_copyWeak(&v13, (a1 + 40));
    [v2 setInterruptionHandler:v12];
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __39__HearingMLHelperService_xpcConnection__block_invoke_47;
    v10 = &unk_2796EE178;
    objc_copyWeak(&v11, (a1 + 40));
    [v2 setInvalidationHandler:&v7];
    [v2 resume];
    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    *(v5 + 24) = v2;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
  }
}

void __39__HearingMLHelperService_xpcConnection__block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = AXLogUltronKShot();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = WeakRetained;
    _os_log_impl(&dword_251F67000, v2, OS_LOG_TYPE_DEFAULT, "Connection to service interrupted. client: %@", &v5, 0xCu);
  }

  v3 = [WeakRetained delegate];
  [v3 hearingMLHelperService:WeakRetained eventOccurred:1];

  [WeakRetained _destroyXPCConnection];
  v4 = *MEMORY[0x277D85DE8];
}

void __39__HearingMLHelperService_xpcConnection__block_invoke_47(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = AXLogUltronKShot();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __39__HearingMLHelperService_xpcConnection__block_invoke_47_cold_1(WeakRetained, v2);
  }

  v3 = [WeakRetained delegate];
  [v3 hearingMLHelperService:WeakRetained eventOccurred:2];

  [WeakRetained _destroyXPCConnection];
}

- (id)_serviceProxy
{
  objc_initWeak(&location, self);
  xpcConnection = [(HearingMLHelperService *)self xpcConnection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__HearingMLHelperService__serviceProxy__block_invoke;
  v6[3] = &unk_2796EE1C8;
  objc_copyWeak(&v7, &location);
  v4 = [xpcConnection remoteObjectProxyWithErrorHandler:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);

  return v4;
}

void __39__HearingMLHelperService__serviceProxy__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = AXLogUltronKShot();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __39__HearingMLHelperService__serviceProxy__block_invoke_cold_1(v3, v5);
  }

  v6 = [WeakRetained delegate];
  [v6 hearingMLHelperService:WeakRetained eventOccurred:3];
}

- (void)trainWithDetectorID:(id)d hallucinatorPath:(id)path pretrainedWeightsPath:(id)weightsPath resultHandler:(id)handler
{
  handlerCopy = handler;
  weightsPathCopy = weightsPath;
  pathCopy = path;
  dCopy = d;
  _serviceProxy = [(HearingMLHelperService *)self _serviceProxy];
  [_serviceProxy trainWithDetectorID:dCopy hallucinatorPath:pathCopy pretrainedWeightsPath:weightsPathCopy resultHandler:handlerCopy];
}

- (HearingMLHelperServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __39__HearingMLHelperService_xpcConnection__block_invoke_47_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_251F67000, a2, OS_LOG_TYPE_ERROR, "Connection to service invalidated. client: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __39__HearingMLHelperService__serviceProxy__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_251F67000, a2, OS_LOG_TYPE_ERROR, "Failed to get service proxy: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end