@interface MXSource
+ (id)sharedSource;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MXSource)init;
- (void)_initIvar;
- (void)_initLogHandle;
- (void)_initQueue;
- (void)_invalidateConnection;
- (void)_setupExportedInterfaceForConnection:(id)connection;
- (void)_setupHandlersForConnection:(id)connection;
- (void)_setupRemoteInterfaceForConnection:(id)connection;
- (void)_startListenClientXPC;
- (void)cleanServiceDiagnosticsDirectoriesForClient:(id)client;
- (void)deliverSamplePayloadForClient:(id)client;
- (void)metricPayloadDidCacheToSourceDirectory;
- (void)writeDiagnosticDataWithPayload:(id)payload;
- (void)writeMetricDataWithPayload:(id)payload;
@end

@implementation MXSource

+ (id)sharedSource
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__MXSource_sharedSource__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedSource_onceToken != -1)
  {
    dispatch_once(&sharedSource_onceToken, block);
  }

  v2 = sharedSource_result;

  return v2;
}

uint64_t __24__MXSource_sharedSource__block_invoke(uint64_t a1)
{
  sharedSource_result = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (MXSource)init
{
  v5.receiver = self;
  v5.super_class = MXSource;
  v2 = [(MXSource *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MXSource *)v2 _initLogHandle];
    [(MXSource *)v3 _initQueue];
    [(MXSource *)v3 _initIvar];
    [(MXSource *)v3 _startListenClientXPC];
  }

  return v3;
}

- (void)_initLogHandle
{
  v3 = os_log_create("com.apple.metrickit.source", "");
  MXSourceLogHandle = self->_MXSourceLogHandle;
  p_MXSourceLogHandle = &self->_MXSourceLogHandle;
  *p_MXSourceLogHandle = v3;

  v6 = *p_MXSourceLogHandle;
  if (!*p_MXSourceLogHandle)
  {
    objc_storeStrong(p_MXSourceLogHandle, MEMORY[0x277D86220]);
    v6 = *p_MXSourceLogHandle;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_258D6F000, v6, OS_LOG_TYPE_DEFAULT, "Initializing MXSource\n", v7, 2u);
  }
}

- (void)_initQueue
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v4 = dispatch_queue_create("com.apple.metrickit.source.requestqueue", v3);
  requestQueue = self->_requestQueue;
  self->_requestQueue = v4;

  v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v6 = dispatch_queue_create("com.apple.metrickit.source.ivarqueue", v8);
  iVarQueue = self->_iVarQueue;
  self->_iVarQueue = v6;
}

- (void)_initIvar
{
  v3 = +[MXDependencyFactory shared];
  payloadValidator = [v3 payloadValidator];
  payloadValidator = self->_payloadValidator;
  self->_payloadValidator = payloadValidator;

  v6 = +[MXDependencyFactory shared];
  bundleUtil = [v6 bundleUtil];
  bundleUtil = self->_bundleUtil;
  self->_bundleUtil = bundleUtil;

  v11 = +[MXDependencyFactory shared];
  v9 = [v11 handlerForMXSourceWithDelegate:self];
  handler = self->_handler;
  self->_handler = v9;
}

- (void)_startListenClientXPC
{
  iVarQueue = self->_iVarQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__MXSource__startListenClientXPC__block_invoke;
  block[3] = &unk_2798C6758;
  block[4] = self;
  dispatch_async(iVarQueue, block);
}

void __33__MXSource__startListenClientXPC__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) MXSourceLogHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_258D6F000, v2, OS_LOG_TYPE_DEFAULT, "Initializing XPC Listener", &v10, 2u);
  }

  v3 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.metrickitsource.xpc"];
  [*(a1 + 32) setXpcListener:v3];

  v4 = [*(a1 + 32) MXSourceLogHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) xpcListener];
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_258D6F000, v4, OS_LOG_TYPE_DEFAULT, "XPC Listener: %@", &v10, 0xCu);
  }

  v6 = *(a1 + 32);
  v7 = [v6 xpcListener];
  [v7 setDelegate:v6];

  v8 = [*(a1 + 32) xpcListener];
  [v8 resume];

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  requestQueue = self->_requestQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__MXSource_listener_shouldAcceptNewConnection___block_invoke;
  v9[3] = &unk_2798C6780;
  v9[4] = self;
  v10 = connectionCopy;
  v7 = connectionCopy;
  dispatch_async(requestQueue, v9);

  return 1;
}

uint64_t __47__MXSource_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) MXSourceLogHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 40) processIdentifier];
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_258D6F000, v2, OS_LOG_TYPE_DEFAULT, "Received connection request from %d\n", v6, 8u);
  }

  [*(a1 + 32) _setupExportedInterfaceForConnection:*(a1 + 40)];
  [*(a1 + 32) _setupRemoteInterfaceForConnection:*(a1 + 40)];
  [*(a1 + 32) _setupHandlersForConnection:*(a1 + 40)];
  result = [*(a1 + 40) resume];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_setupExportedInterfaceForConnection:(id)connection
{
  v3 = MEMORY[0x277CCAE90];
  connectionCopy = connection;
  v5 = [v3 interfaceWithProtocol:&unk_286A1EF08];
  [connectionCopy setExportedInterface:v5];

  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v23 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  exportedInterface = [connectionCopy exportedInterface];
  [exportedInterface setClasses:v23 forSelector:sel_writeMetricDataWithPayload_ argumentIndex:0 ofReply:0];

  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = [v13 setWithObjects:{v14, v15, v16, v17, v18, v19, objc_opt_class(), 0}];
  exportedInterface2 = [connectionCopy exportedInterface];
  [exportedInterface2 setClasses:v20 forSelector:sel_writeDiagnosticDataWithPayload_ argumentIndex:0 ofReply:0];

  [connectionCopy setExportedObject:self];
}

- (void)_setupRemoteInterfaceForConnection:(id)connection
{
  v3 = MEMORY[0x277CCAE90];
  connectionCopy = connection;
  v5 = [v3 interfaceWithProtocol:&unk_286A21F90];
  [connectionCopy setRemoteObjectInterface:v5];
}

- (void)_setupHandlersForConnection:(id)connection
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__MXSource__setupHandlersForConnection___block_invoke;
  v6[3] = &unk_2798C6758;
  v6[4] = self;
  connectionCopy = connection;
  [connectionCopy setInterruptionHandler:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__MXSource__setupHandlersForConnection___block_invoke_28;
  v5[3] = &unk_2798C6758;
  v5[4] = self;
  [connectionCopy setInvalidationHandler:v5];
}

void __40__MXSource__setupHandlersForConnection___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) MXSourceLogHandle];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v2 = [MEMORY[0x277CCAE80] currentConnection];
    v4[0] = 67109120;
    v4[1] = [v2 processIdentifier];
    _os_log_impl(&dword_258D6F000, v1, OS_LOG_TYPE_INFO, "Connection to %d interrupted\n", v4, 8u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __40__MXSource__setupHandlersForConnection___block_invoke_28(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) MXSourceLogHandle];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v2 = [MEMORY[0x277CCAE80] currentConnection];
    v4[0] = 67109120;
    v4[1] = [v2 processIdentifier];
    _os_log_impl(&dword_258D6F000, v1, OS_LOG_TYPE_INFO, "Connection to %d invalidated\n", v4, 8u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)writeMetricDataWithPayload:(id)payload
{
  payloadCopy = payload;
  if ([(MXPayloadValidator *)self->_payloadValidator validatePayload:payloadCopy])
  {
    mXSourceLogHandle = [(MXSource *)self MXSourceLogHandle];
    if (os_log_type_enabled(mXSourceLogHandle, OS_LOG_TYPE_DEBUG))
    {
      [MXSource writeMetricDataWithPayload:payloadCopy];
    }

    iVarQueue = self->_iVarQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__MXSource_writeMetricDataWithPayload___block_invoke;
    v7[3] = &unk_2798C6780;
    v7[4] = self;
    v8 = payloadCopy;
    dispatch_async(iVarQueue, v7);
  }
}

void __39__MXSource_writeMetricDataWithPayload___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];
  [v2 handleMetricDataWithPayload:*(a1 + 40)];
}

- (void)writeDiagnosticDataWithPayload:(id)payload
{
  payloadCopy = payload;
  if ([(MXPayloadValidator *)self->_payloadValidator validatePayload:payloadCopy])
  {
    mXSourceLogHandle = [(MXSource *)self MXSourceLogHandle];
    if (os_log_type_enabled(mXSourceLogHandle, OS_LOG_TYPE_DEBUG))
    {
      [MXSource writeDiagnosticDataWithPayload:payloadCopy];
    }

    iVarQueue = self->_iVarQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __43__MXSource_writeDiagnosticDataWithPayload___block_invoke;
    v7[3] = &unk_2798C6780;
    v7[4] = self;
    v8 = payloadCopy;
    dispatch_async(iVarQueue, v7);
  }
}

void __43__MXSource_writeDiagnosticDataWithPayload___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];
  [v2 handleDiagnosticDataWithPayload:*(a1 + 40)];
}

- (void)cleanServiceDiagnosticsDirectoriesForClient:(id)client
{
  clientCopy = client;
  iVarQueue = self->_iVarQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__MXSource_cleanServiceDiagnosticsDirectoriesForClient___block_invoke;
  v7[3] = &unk_2798C6780;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(iVarQueue, v7);
}

void __56__MXSource_cleanServiceDiagnosticsDirectoriesForClient___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];
  [v2 cleanServiceDiagnosticsDirectoriesForClient:*(a1 + 40)];
}

- (void)metricPayloadDidCacheToSourceDirectory
{
  [(MXSource *)self _invalidateConnection];
  v2 = +[MXCore sharedCore];
  [v2 performDataActivity];
}

- (void)_invalidateConnection
{
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if (currentConnection)
  {
    v3 = currentConnection;
    [currentConnection invalidate];
    currentConnection = v3;
  }
}

- (void)deliverSamplePayloadForClient:(id)client
{
  clientCopy = client;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  iVarQueue = self->_iVarQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__MXSource_deliverSamplePayloadForClient___block_invoke;
  block[3] = &unk_2798C67A8;
  block[4] = self;
  v10 = currentConnection;
  v11 = clientCopy;
  v7 = clientCopy;
  v8 = currentConnection;
  dispatch_async(iVarQueue, block);
}

void __42__MXSource_deliverSamplePayloadForClient___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) MXSourceLogHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __42__MXSource_deliverSamplePayloadForClient___block_invoke_cold_1(v2, a1);
  }

  v4 = [*(*(a1 + 32) + 16) bundleIDFromPid:{objc_msgSend(*(a1 + 40), "processIdentifier")}];
  v5 = [v4 isEqualToString:@"com.apple.dt.instruments.DVTInstrumentsFoundation"];

  v6 = [*(a1 + 32) MXSourceLogHandle];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      __42__MXSource_deliverSamplePayloadForClient___block_invoke_cold_3(a1, v6);
    }

    v8 = +[MXCore sharedCore];
    [v8 deliverSamplePayloadForXcodeClient:*(a1 + 48)];
  }

  else
  {
    if (v7)
    {
      __42__MXSource_deliverSamplePayloadForClient___block_invoke_cold_2(v6);
    }

    [*(a1 + 40) invalidate];
  }
}

- (void)writeMetricDataWithPayload:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a1 sourceIDString];
  v3 = [a1 metrics];
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)writeDiagnosticDataWithPayload:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a1 sourceIDString];
  v3 = [a1 metrics];
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __42__MXSource_deliverSamplePayloadForClient___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = [*(*a1 + 16) bundleIDFromPid:{objc_msgSend(*(a2 + 40), "processIdentifier")}];
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __42__MXSource_deliverSamplePayloadForClient___block_invoke_cold_3(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_258D6F000, a2, OS_LOG_TYPE_DEBUG, "Commencing sample delivery per request from DTServiceHub for: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end