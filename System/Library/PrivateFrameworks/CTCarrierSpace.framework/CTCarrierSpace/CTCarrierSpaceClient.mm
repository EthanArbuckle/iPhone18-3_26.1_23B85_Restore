@interface CTCarrierSpaceClient
- (CTCarrierSpaceClient)initWithQueue:(dispatch_queue_s *)queue;
- (CTCarrierSpaceClient)initWithQueue:(dispatch_queue_s *)queue andListenerEndpoint:(id)endpoint;
- (CTCarrierSpaceClientDelegate)delegate;
- (id).cxx_construct;
- (id)_proxyWithErrorHandler:(id)handler;
- (void)_connect_sync;
- (void)_ensureConnected_sync;
- (void)authenticationDidComplete:(id)complete completion:(id)completion;
- (void)authenticationDidFail:(id)fail completion:(id)completion;
- (void)dealloc;
- (void)fetchDataPlanMetrics:(id)metrics;
- (void)getAuthenticationContext:(id)context;
- (void)getCapabilities:(id)capabilities;
- (void)getUserConsentFlowInfo:(id)info;
- (void)invalidate;
- (void)ping:(id)ping;
- (void)purchasePlan:(id)plan authInfo:(id)info completion:(id)completion;
- (void)purchasePlan:(id)plan completion:(id)completion;
- (void)refreshAllInfo:(id)info;
- (void)refreshAppsInfo:(id)info;
- (void)refreshPlansInfo:(id)info;
- (void)refreshUsageInfo:(id)info;
- (void)setDelegate:(id)delegate;
@end

@implementation CTCarrierSpaceClient

- (void)_connect_sync
{
  endpoint = self->_endpoint;
  v4 = objc_alloc(MEMORY[0x277CCAE80]);
  if (endpoint)
  {
    v5 = [v4 initWithListenerEndpoint:self->_endpoint];
  }

  else
  {
    v5 = [v4 initWithMachServiceName:@"com.apple.commcenter.carrierspace.xpc" options:4096];
  }

  connection = self->_connection;
  self->_connection = v5;

  v7 = objc_alloc_init(CTCarrierSpaceClientDelegateProxy);
  delegateProxy = self->_delegateProxy;
  self->_delegateProxy = v7;

  v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2855011B0];
  [(NSXPCConnection *)self->_connection setExportedInterface:v9];

  [(NSXPCConnection *)self->_connection setExportedObject:self->_delegateProxy];
  v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285502130];
  [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v10];

  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __37__CTCarrierSpaceClient__connect_sync__block_invoke;
  v17[3] = &unk_278D64680;
  objc_copyWeak(&v18, &location);
  [(NSXPCConnection *)self->_connection setInvalidationHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __37__CTCarrierSpaceClient__connect_sync__block_invoke_59;
  v15[3] = &unk_278D64680;
  objc_copyWeak(&v16, &location);
  [(NSXPCConnection *)self->_connection setInterruptionHandler:v15];
  v11 = self->_connection;
  if (self->_callbackQueue.fObj.fObj)
  {
    [(NSXPCConnection *)v11 _setQueue:?];
  }

  else
  {
    _queue = [(NSXPCConnection *)v11 _queue];
    v13 = _queue;
    if (_queue)
    {
      dispatch_retain(_queue);
    }

    fObj = self->_callbackQueue.fObj.fObj;
    self->_callbackQueue.fObj.fObj = v13;
    if (fObj)
    {
      dispatch_release(fObj);
    }
  }

  [(NSXPCConnection *)self->_connection resume];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __37__CTCarrierSpaceClient__connect_sync__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__CTCarrierSpaceClient__connect_sync__block_invoke_2;
    block[3] = &unk_278D64658;
    v4 = WeakRetained;
    dispatch_async(v2[2], block);
  }
}

void __37__CTCarrierSpaceClient__connect_sync__block_invoke_2(uint64_t a1)
{
  v2 = _CTCarrierSpaceLogDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2426DB000, v2, OS_LOG_TYPE_DEFAULT, "Connection has been invalidated", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = 0;
}

void __37__CTCarrierSpaceClient__connect_sync__block_invoke_59(uint64_t a1)
{
  v2 = _CTCarrierSpaceLogDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2426DB000, v2, OS_LOG_TYPE_DEFAULT, "Connection interrupted. Attempting to reestablish connection", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained ping:&__block_literal_global];
}

void __37__CTCarrierSpaceClient__connect_sync__block_invoke_60(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _CTCarrierSpaceLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __37__CTCarrierSpaceClient__connect_sync__block_invoke_60_cold_1(v2, v3);
    }
  }

  else
  {
    v4 = _CTCarrierSpaceLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_2426DB000, v4, OS_LOG_TYPE_DEFAULT, "Successfully reestablished connection", v5, 2u);
    }
  }
}

- (void)_ensureConnected_sync
{
  if (!self->_connection)
  {
    [(CTCarrierSpaceClient *)self _connect_sync];
  }
}

- (id)_proxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__CTCarrierSpaceClient__proxyWithErrorHandler___block_invoke;
  v9[3] = &unk_278D646F0;
  v9[4] = self;
  v10 = handlerCopy;
  v5 = handlerCopy;
  v11 = MEMORY[0x245D166C0](v9);
  fObj = self->_queue.fObj.fObj;
  v13 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN8dispatch9sync_implIU8__strongU13block_pointerFP11objc_objectvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS6_17integral_constantIbLb0EEE_block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = &v13;
  block[5] = &v11;
  dispatch_sync(fObj, block);
  v7 = v13;

  return v7;
}

id __47__CTCarrierSpaceClient__proxyWithErrorHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureConnected_sync];
  v2 = *(*(a1 + 32) + 8);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__CTCarrierSpaceClient__proxyWithErrorHandler___block_invoke_2;
  v5[3] = &unk_278D646C8;
  v6 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v5];

  return v3;
}

void __47__CTCarrierSpaceClient__proxyWithErrorHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CTCarrierSpaceLogDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47__CTCarrierSpaceClient__proxyWithErrorHandler___block_invoke_2_cold_1(v3, v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  [(CTCarrierSpaceClient *)self _ensureConnected_sync];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__CTCarrierSpaceClient_setDelegate___block_invoke;
  v7[3] = &unk_278D64718;
  v7[4] = self;
  v8 = delegateCopy;
  fObj = self->_callbackQueue.fObj.fObj;
  v6 = delegateCopy;
  dispatch_async(fObj, v7);
}

void __36__CTCarrierSpaceClient_setDelegate___block_invoke(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 48), *(a1 + 40));
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [*(*(a1 + 32) + 40) setDelegate:?];
}

- (CTCarrierSpaceClient)initWithQueue:(dispatch_queue_s *)queue
{
  v13.receiver = self;
  v13.super_class = CTCarrierSpaceClient;
  v4 = [(CTCarrierSpaceClient *)&v13 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("com.apple.CTCarrierSpaceClient", v5);
    v7 = *(v4 + 2);
    *(v4 + 2) = v6;
    if (v7)
    {
      dispatch_release(v7);
    }

    if (queue)
    {
      dispatch_retain(queue);
    }

    v8 = *(v4 + 3);
    *(v4 + 3) = queue;
    if (v8)
    {
      dispatch_release(v8);
      queue = *(v4 + 3);
    }

    if (!queue)
    {
      global_queue = dispatch_get_global_queue(0, 0);
      v11 = global_queue;
      if (global_queue)
      {
        dispatch_retain(global_queue);
        v12 = *(v4 + 3);
        *(v4 + 3) = v11;
        if (v12)
        {
          dispatch_release(v12);
        }
      }

      else
      {
        *(v4 + 3) = 0;
      }
    }

    [v4 _ensureConnected_sync];
  }

  return v4;
}

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection invalidate];
  }

  v4.receiver = self;
  v4.super_class = CTCarrierSpaceClient;
  [(CTCarrierSpaceClient *)&v4 dealloc];
}

- (CTCarrierSpaceClient)initWithQueue:(dispatch_queue_s *)queue andListenerEndpoint:(id)endpoint
{
  objc_storeStrong(&self->_endpoint, endpoint);

  return [(CTCarrierSpaceClient *)self initWithQueue:queue];
}

- (void)ping:(id)ping
{
  pingCopy = ping;
  v4 = [(CTCarrierSpaceClient *)self _proxyWithErrorHandler:?];
  [v4 ping:pingCopy];
}

- (void)invalidate
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__CTCarrierSpaceClient_invalidate__block_invoke;
  block[3] = &unk_278D64658;
  block[4] = self;
  dispatch_async(self->_queue.fObj.fObj, block);
}

- (void)refreshUsageInfo:(id)info
{
  infoCopy = info;
  v4 = [(CTCarrierSpaceClient *)self _proxyWithErrorHandler:?];
  [v4 refreshUsageInfo:infoCopy];
}

- (void)refreshPlansInfo:(id)info
{
  infoCopy = info;
  v4 = [(CTCarrierSpaceClient *)self _proxyWithErrorHandler:?];
  [v4 refreshPlansInfo:infoCopy];
}

- (void)refreshAppsInfo:(id)info
{
  infoCopy = info;
  v4 = [(CTCarrierSpaceClient *)self _proxyWithErrorHandler:?];
  [v4 refreshAppsInfo:infoCopy];
}

- (void)authenticationDidComplete:(id)complete completion:(id)completion
{
  completeCopy = complete;
  completionCopy = completion;
  v7 = [(CTCarrierSpaceClient *)self _proxyWithErrorHandler:completionCopy];
  [v7 authenticationDidComplete:completeCopy completion:completionCopy];
}

- (void)authenticationDidFail:(id)fail completion:(id)completion
{
  failCopy = fail;
  completionCopy = completion;
  v7 = [(CTCarrierSpaceClient *)self _proxyWithErrorHandler:completionCopy];
  [v7 authenticationDidFail:failCopy completion:completionCopy];
}

- (void)getAuthenticationContext:(id)context
{
  contextCopy = context;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__CTCarrierSpaceClient_getAuthenticationContext___block_invoke;
  v7[3] = &unk_278D646C8;
  v5 = contextCopy;
  v8 = v5;
  v6 = [(CTCarrierSpaceClient *)self _proxyWithErrorHandler:v7];
  [v6 getAuthenticationContext:v5];
}

- (void)getCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__CTCarrierSpaceClient_getCapabilities___block_invoke;
  v9[3] = &unk_278D646C8;
  v5 = capabilitiesCopy;
  v10 = v5;
  v6 = [(CTCarrierSpaceClient *)self _proxyWithErrorHandler:v9];
  v7 = _CTCarrierSpaceLogDomain();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_2426DB000, v7, OS_LOG_TYPE_INFO, "Client requesting to get capabiities", v8, 2u);
  }

  [v6 getCapabilities:v5];
}

- (void)getUserConsentFlowInfo:(id)info
{
  infoCopy = info;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__CTCarrierSpaceClient_getUserConsentFlowInfo___block_invoke;
  v9[3] = &unk_278D646C8;
  v5 = infoCopy;
  v10 = v5;
  v6 = [(CTCarrierSpaceClient *)self _proxyWithErrorHandler:v9];
  if (v6)
  {
    v7 = _CTCarrierSpaceLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_2426DB000, v7, OS_LOG_TYPE_INFO, "Client requesting to get user consent flow information", v8, 2u);
    }

    [v6 getUserConsentFlowInfo:v5];
  }
}

- (void)refreshAllInfo:(id)info
{
  infoCopy = info;
  v5 = [(CTCarrierSpaceClient *)self _proxyWithErrorHandler:infoCopy];
  v6 = _CTCarrierSpaceLogDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_2426DB000, v6, OS_LOG_TYPE_INFO, "Client requesting to refresh all info", v7, 2u);
  }

  [v5 refreshAllInfo:infoCopy];
}

- (void)purchasePlan:(id)plan completion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  planCopy = plan;
  completionCopy = completion;
  v8 = [(CTCarrierSpaceClient *)self _proxyWithErrorHandler:completionCopy];
  v9 = _CTCarrierSpaceLogDomain();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = planCopy;
    _os_log_impl(&dword_2426DB000, v9, OS_LOG_TYPE_INFO, "Client requesting to purchase plan: %@", &v11, 0xCu);
  }

  [v8 purchasePlan:planCopy authInfo:0 completion:completionCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)purchasePlan:(id)plan authInfo:(id)info completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  planCopy = plan;
  infoCopy = info;
  completionCopy = completion;
  v11 = [(CTCarrierSpaceClient *)self _proxyWithErrorHandler:completionCopy];
  v12 = _CTCarrierSpaceLogDomain();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = 138412546;
    v15 = planCopy;
    v16 = 2112;
    v17 = infoCopy;
    _os_log_impl(&dword_2426DB000, v12, OS_LOG_TYPE_INFO, "Client requesting to purchase plan: %@, auth info: %@", &v14, 0x16u);
  }

  [v11 purchasePlan:planCopy authInfo:infoCopy completion:completionCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)fetchDataPlanMetrics:(id)metrics
{
  metricsCopy = metrics;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__CTCarrierSpaceClient_fetchDataPlanMetrics___block_invoke;
  v9[3] = &unk_278D646C8;
  v5 = metricsCopy;
  v10 = v5;
  v6 = [(CTCarrierSpaceClient *)self _proxyWithErrorHandler:v9];
  v7 = _CTCarrierSpaceLogDomain();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_2426DB000, v7, OS_LOG_TYPE_INFO, "Client is fetching data plan metrics", v8, 2u);
  }

  [v6 fetchDataPlanMetrics:v5];
}

- (CTCarrierSpaceClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

void __37__CTCarrierSpaceClient__connect_sync__block_invoke_60_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2426DB000, a2, OS_LOG_TYPE_ERROR, "Failed to ping connection after interruption: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __47__CTCarrierSpaceClient__proxyWithErrorHandler___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2426DB000, a2, OS_LOG_TYPE_ERROR, "Failed to create remote object proxy: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end