@interface UARPPersonalizationManager
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)xpcConnectionHasEntitlement:(id)a3;
- (UARPPersonalizationManager)initWithMachServiceName:(id)a3 entitlement:(id)a4 delegate:(id)a5 queue:(id)a6;
- (void)dealloc;
- (void)getOutstandingPersonalizationRequests:(id)a3 reply:(id)a4;
- (void)personalizationResponse:(id)a3 updaterName:(id)a4;
@end

@implementation UARPPersonalizationManager

- (UARPPersonalizationManager)initWithMachServiceName:(id)a3 entitlement:(id)a4 delegate:(id)a5 queue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25.receiver = self;
  v25.super_class = UARPPersonalizationManager;
  v14 = [(UARPPersonalizationManager *)&v25 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_delegate, v12);
    objc_storeStrong(&v15->_queue, a6);
    v16 = [v10 copy];
    serviceName = v15->_serviceName;
    v15->_serviceName = v16;

    v18 = [v11 copy];
    entitlement = v15->_entitlement;
    v15->_entitlement = v18;

    v20 = os_log_create("com.apple.accessoryupdater.uarp", "personalization");
    log = v15->_log;
    v15->_log = v20;

    v22 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:v15->_serviceName];
    listener = v15->_listener;
    v15->_listener = v22;

    [(NSXPCListener *)v15->_listener setDelegate:v15];
    [(NSXPCListener *)v15->_listener activate];
  }

  return v15;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = UARPPersonalizationManager;
  [(UARPPersonalizationManager *)&v3 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v8 = self->_log;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v7 processIdentifier];
    *buf = 67109120;
    v23 = v9;
    _os_log_impl(&dword_247AA7000, v8, OS_LOG_TYPE_INFO, "Connection from PID %d", buf, 8u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__UARPPersonalizationManager_listener_shouldAcceptNewConnection___block_invoke;
  block[3] = &unk_278EC2480;
  block[4] = self;
  v16 = v7;
  v17 = &v18;
  v11 = v7;
  dispatch_sync(queue, block);
  v12 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  v13 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

void __65__UARPPersonalizationManager_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) xpcConnectionHasEntitlement:*(a1 + 40)])
  {
    v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2859CF7A8];
    [*(a1 + 40) setExportedInterface:v2];

    [*(a1 + 40) setExportedObject:*(a1 + 32)];
    v3 = [*(a1 + 40) processIdentifier];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __65__UARPPersonalizationManager_listener_shouldAcceptNewConnection___block_invoke_2;
    v10[3] = &unk_278EC2458;
    v4 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v3;
    [v4 setInterruptionHandler:v10];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__UARPPersonalizationManager_listener_shouldAcceptNewConnection___block_invoke_11;
    v8[3] = &unk_278EC2458;
    v5 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v3;
    [v5 setInvalidationHandler:v8];
    [*(a1 + 40) _setQueue:*(*(a1 + 32) + 16)];
    [*(a1 + 40) resume];
    v6 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v13 = v3;
      _os_log_impl(&dword_247AA7000, v6, OS_LOG_TYPE_INFO, "New connection from PID %d", buf, 8u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __65__UARPPersonalizationManager_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __65__UARPPersonalizationManager_listener_shouldAcceptNewConnection___block_invoke_2_cold_1(a1, v2);
  }
}

void __65__UARPPersonalizationManager_listener_shouldAcceptNewConnection___block_invoke_11(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_247AA7000, v2, OS_LOG_TYPE_INFO, "Connection from PID %d invalidated", v5, 8u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)xpcConnectionHasEntitlement:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    [(UARPPersonalizationManager *)log xpcConnectionHasEntitlement:v4];
  }

  v6 = [v4 valueForEntitlement:self->_entitlement];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v6 BOOLValue])
  {
    v7 = 1;
  }

  else
  {
    v8 = self->_log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(UARPPersonalizationManager *)v8 xpcConnectionHasEntitlement:v4];
    }

    v7 = 0;
  }

  return v7;
}

- (void)getOutstandingPersonalizationRequests:(id)a3 reply:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    [UARPPersonalizationManager getOutstandingPersonalizationRequests:log reply:?];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [WeakRetained personalizationHelperQueryPendingTssRequests:v6];

  v11 = self->_log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = 136315650;
    v14 = "[UARPPersonalizationManager getOutstandingPersonalizationRequests:reply:]";
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_247AA7000, v11, OS_LOG_TYPE_INFO, "%s: Updater Name %@, pending tss requests %@", &v13, 0x20u);
  }

  v7[2](v7, v10);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)personalizationResponse:(id)a3 updaterName:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    [UARPPersonalizationManager personalizationResponse:updaterName:];
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    [UARPPersonalizationManager personalizationResponse:updaterName:];
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    [UARPPersonalizationManager personalizationResponse:log updaterName:?];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained personalizationHelperTssResponse:v6 updaterName:v7];
}

void __65__UARPPersonalizationManager_listener_shouldAcceptNewConnection___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_247AA7000, a2, OS_LOG_TYPE_ERROR, "Connection to PID %d interrupted", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)xpcConnectionHasEntitlement:(void *)a1 .cold.1(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 processIdentifier];
  OUTLINED_FUNCTION_1_4();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 8u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)xpcConnectionHasEntitlement:(void *)a1 .cold.2(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 processIdentifier];
  OUTLINED_FUNCTION_1_4();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 8u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)getOutstandingPersonalizationRequests:(uint64_t)a1 reply:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_2_1(v5, v6, v7, v8, v9);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)personalizationResponse:updaterName:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 136315394;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_1(&dword_247AA7000, v0, v1, "%s: Updater Name %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)personalizationResponse:updaterName:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 136315394;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_1(&dword_247AA7000, v0, v1, "%s: TSS Response %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)personalizationResponse:(uint64_t)a1 updaterName:(void *)a2 .cold.3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_2_1(v5, v6, v7, v8, v9);

  v10 = *MEMORY[0x277D85DE8];
}

@end