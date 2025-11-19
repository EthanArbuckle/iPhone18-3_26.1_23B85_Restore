@interface DBLayerMetadataService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (DBLayerMetadataService)init;
- (void)invalidate;
- (void)sendLayerProperties:(id)a3;
@end

@implementation DBLayerMetadataService

- (DBLayerMetadataService)init
{
  v8.receiver = self;
  v8.super_class = DBLayerMetadataService;
  v2 = [(DBLayerMetadataService *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.carkit.layer-metadata"];
    [v3 setDelegate:v2];
    [v3 resume];
    [(DBLayerMetadataService *)v2 setLayerMetadataServiceListener:v3];
    v4 = objc_alloc(MEMORY[0x277CF89C0]);
    v5 = [v4 initWithProtocol:&unk_285B506E8 callbackQueue:MEMORY[0x277D85CD0]];
    observers = v2->_observers;
    v2->_observers = v5;
  }

  return v2;
}

- (void)sendLayerProperties:(id)a3
{
  v4 = a3;
  v5 = [(DBLayerMetadataService *)self observers];
  [v5 service:self didReceiveLayerMetadata:v4];
}

- (void)invalidate
{
  v3 = DBLogForCategory(0x15uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating layer metadata service", v6, 2u);
  }

  v4 = [(DBLayerMetadataService *)self connection];
  [v4 invalidate];

  [(DBLayerMetadataService *)self setConnection:0];
  v5 = [(DBLayerMetadataService *)self layerMetadataServiceListener];
  [v5 invalidate];

  [(DBLayerMetadataService *)self setLayerMetadataServiceListener:0];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DBLogForCategory(0x15uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v7;
    _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "Incoming connection to layer metadata service: %@", buf, 0xCu);
  }

  v9 = [v7 valueForEntitlement:@"com.apple.carkit.layer-metadata"];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285B03C70];
    [v7 setExportedInterface:v11];
    [v7 setExportedObject:self];
    objc_initWeak(&location, v7);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __61__DBLayerMetadataService_listener_shouldAcceptNewConnection___block_invoke;
    v17[3] = &unk_278F02300;
    objc_copyWeak(&v18, &location);
    [v7 setInterruptionHandler:v17];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __61__DBLayerMetadataService_listener_shouldAcceptNewConnection___block_invoke_73;
    v15[3] = &unk_278F02300;
    objc_copyWeak(&v16, &location);
    [v7 setInvalidationHandler:v15];
    v12 = DBLogForCategory(0x15uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "processIdentifier")}];
      *buf = 138412290;
      v21 = v13;
      _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "Resuming layer metadata connection from %@", buf, 0xCu);
    }

    [v7 resume];
    [(DBLayerMetadataService *)self setConnection:v7];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = DBLogForCategory(0x15uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [DBLayerMetadataService listener:v7 shouldAcceptNewConnection:v11];
    }
  }

  return v10;
}

void __61__DBLayerMetadataService_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = DBLogForCategory(0x15uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __61__DBLayerMetadataService_listener_shouldAcceptNewConnection___block_invoke_cold_1(a1);
  }
}

void __61__DBLayerMetadataService_listener_shouldAcceptNewConnection___block_invoke_73(uint64_t a1)
{
  v2 = DBLogForCategory(0x15uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __61__DBLayerMetadataService_listener_shouldAcceptNewConnection___block_invoke_73_cold_1(a1);
  }
}

- (void)listener:(uint64_t)a1 shouldAcceptNewConnection:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_248146000, a2, OS_LOG_TYPE_ERROR, "Connection not entitled: %@", &v2, 0xCu);
}

void __61__DBLayerMetadataService_listener_shouldAcceptNewConnection___block_invoke_cold_1(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  OUTLINED_FUNCTION_0_1(&dword_248146000, v2, v3, "Connection interrupted: %@", v4, v5, v6, v7, 2u);
}

void __61__DBLayerMetadataService_listener_shouldAcceptNewConnection___block_invoke_73_cold_1(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  OUTLINED_FUNCTION_0_1(&dword_248146000, v2, v3, "Connection invalidated: %@", v4, v5, v6, v7, 2u);
}

@end