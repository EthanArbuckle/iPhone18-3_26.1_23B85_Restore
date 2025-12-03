@interface DBLayerMetadataService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (DBLayerMetadataService)init;
- (void)invalidate;
- (void)sendLayerProperties:(id)properties;
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

- (void)sendLayerProperties:(id)properties
{
  propertiesCopy = properties;
  observers = [(DBLayerMetadataService *)self observers];
  [observers service:self didReceiveLayerMetadata:propertiesCopy];
}

- (void)invalidate
{
  v3 = DBLogForCategory(0x15uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating layer metadata service", v6, 2u);
  }

  connection = [(DBLayerMetadataService *)self connection];
  [connection invalidate];

  [(DBLayerMetadataService *)self setConnection:0];
  layerMetadataServiceListener = [(DBLayerMetadataService *)self layerMetadataServiceListener];
  [layerMetadataServiceListener invalidate];

  [(DBLayerMetadataService *)self setLayerMetadataServiceListener:0];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v22 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = DBLogForCategory(0x15uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = connectionCopy;
    _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "Incoming connection to layer metadata service: %@", buf, 0xCu);
  }

  v9 = [connectionCopy valueForEntitlement:@"com.apple.carkit.layer-metadata"];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285B03C70];
    [connectionCopy setExportedInterface:v11];
    [connectionCopy setExportedObject:self];
    objc_initWeak(&location, connectionCopy);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __61__DBLayerMetadataService_listener_shouldAcceptNewConnection___block_invoke;
    v17[3] = &unk_278F02300;
    objc_copyWeak(&v18, &location);
    [connectionCopy setInterruptionHandler:v17];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __61__DBLayerMetadataService_listener_shouldAcceptNewConnection___block_invoke_73;
    v15[3] = &unk_278F02300;
    objc_copyWeak(&v16, &location);
    [connectionCopy setInvalidationHandler:v15];
    v12 = DBLogForCategory(0x15uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(connectionCopy, "processIdentifier")}];
      *buf = 138412290;
      v21 = v13;
      _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "Resuming layer metadata connection from %@", buf, 0xCu);
    }

    [connectionCopy resume];
    [(DBLayerMetadataService *)self setConnection:connectionCopy];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = DBLogForCategory(0x15uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [DBLayerMetadataService listener:connectionCopy shouldAcceptNewConnection:v11];
    }
  }

  return bOOLValue;
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