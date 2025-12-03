@interface HDHAHealthAppPluginHostConnection
- (HDHAHealthAppPluginHostConnection)init;
- (id)proxy;
- (id)synchronousProxy;
- (void)dealloc;
- (void)resumeIfNecessary;
@end

@implementation HDHAHealthAppPluginHostConnection

- (HDHAHealthAppPluginHostConnection)init
{
  v10.receiver = self;
  v10.super_class = HDHAHealthAppPluginHostConnection;
  v2 = [(HDHAHealthAppPluginHostConnection *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.healthappd" options:0];
    connection = v3->_connection;
    v3->_connection = v4;

    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283CC3E60];
    [(NSXPCConnection *)v3->_connection setRemoteObjectInterface:v6];

    remoteObjectInterface = [(NSXPCConnection *)v3->_connection remoteObjectInterface];
    v8 = [remoteObjectInterface hk_setArrayOfClass:objc_opt_class() forSelector:sel_handleJournaledSharingEntries_completion_ argumentIndex:0 ofReply:0];
  }

  return v3;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = HDHAHealthAppPluginHostConnection;
  [(HDHAHealthAppPluginHostConnection *)&v3 dealloc];
}

- (void)resumeIfNecessary
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_resumed)
  {
    self->_resumed = 1;
    [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_2];
    [(NSXPCConnection *)self->_connection setInvalidationHandler:&__block_literal_global_307];
    [(NSXPCConnection *)self->_connection resume];
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __54__HDHAHealthAppPluginHostConnection_resumeIfNecessary__block_invoke()
{
  _HKInitializeLogging();
  v0 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_22939E000, v0, OS_LOG_TYPE_DEFAULT, "HDHAHealthAppPluginHostConnection remote proxy interrupted", v1, 2u);
  }
}

void __54__HDHAHealthAppPluginHostConnection_resumeIfNecessary__block_invoke_305()
{
  _HKInitializeLogging();
  v0 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_22939E000, v0, OS_LOG_TYPE_DEFAULT, "HDHAHealthAppPluginHostConnection remote proxy invalidated", v1, 2u);
  }
}

- (id)proxy
{
  [(HDHAHealthAppPluginHostConnection *)self resumeIfNecessary];
  connection = self->_connection;

  return [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:&__block_literal_global_310];
}

void __42__HDHAHealthAppPluginHostConnection_proxy__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  _HKInitializeLogging();
  v3 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_22939E000, v3, OS_LOG_TYPE_DEFAULT, "HDHAHealthAppPluginHostConnection error: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)synchronousProxy
{
  [(HDHAHealthAppPluginHostConnection *)self resumeIfNecessary];
  connection = self->_connection;

  return [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_312];
}

void __53__HDHAHealthAppPluginHostConnection_synchronousProxy__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  _HKInitializeLogging();
  v3 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_22939E000, v3, OS_LOG_TYPE_DEFAULT, "HDHAHealthAppPluginHostConnection error: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

@end