@interface DNDRemoteAppConfigurationServiceConnection
+ (id)sharedInstance;
- (DNDRemoteAppConfigurationServiceConnection)init;
- (id)_queue_remoteTarget;
- (void)_queue_createConnection;
- (void)_queue_invalidateConnection;
- (void)getCurrentAppConfigurationForActionIdentifier:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5;
- (void)invalidateAppContextForActionIdentifier:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5;
@end

@implementation DNDRemoteAppConfigurationServiceConnection

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__DNDRemoteAppConfigurationServiceConnection_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_2 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2, block);
  }

  v2 = sharedInstance_sharedInstance_1;

  return v2;
}

uint64_t __60__DNDRemoteAppConfigurationServiceConnection_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance_1 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (DNDRemoteAppConfigurationServiceConnection)init
{
  v11.receiver = self;
  v11.super_class = DNDRemoteAppConfigurationServiceConnection;
  v2 = [(DNDRemoteAppConfigurationServiceConnection *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x277CF32C8] userInitiated];
    queuePriority = v3->_queuePriority;
    v3->_queuePriority = v4;

    v6 = [MEMORY[0x277CF0C18] serial];
    v7 = [v6 serviceClass:-[BSServiceQuality serviceClass](v3->_queuePriority relativePriority:{"serviceClass"), -[BSServiceQuality relativePriority](v3->_queuePriority, "relativePriority")}];
    v8 = BSDispatchQueueCreate();
    queue = v3->_queue;
    v3->_queue = v8;
  }

  return v3;
}

- (id)_queue_remoteTarget
{
  queue = self->_queue;
  BSDispatchQueueAssert();
  v4 = [(BSServiceConnection *)self->_queue_connection remoteTarget];
  if (!v4)
  {
    [(DNDRemoteAppConfigurationServiceConnection *)self _queue_invalidateConnection];
    [(DNDRemoteAppConfigurationServiceConnection *)self _queue_createConnection];
    v4 = [(BSServiceConnection *)self->_queue_connection remoteTarget];
  }

  return v4;
}

- (void)_queue_invalidateConnection
{
  queue = self->_queue;
  BSDispatchQueueAssert();
  queue_connection = self->_queue_connection;
  if (queue_connection)
  {
    [(BSServiceConnection *)queue_connection invalidate];
    v5 = self->_queue_connection;
    self->_queue_connection = 0;
  }
}

- (void)_queue_createConnection
{
  queue = self->_queue;
  BSDispatchQueueAssert();
  v4 = DNDRemoteAppConfigurationServiceServerInterface();
  v5 = MEMORY[0x277CF3288];
  v6 = [v4 identifier];
  v7 = [v5 endpointForMachName:@"com.apple.donotdisturb.appconfiguration.service" service:v6 instance:0];

  if (v7)
  {
    v8 = [MEMORY[0x277CF3280] connectionWithEndpoint:v7];
    queue_connection = self->_queue_connection;
    self->_queue_connection = v8;

    v10 = self->_queue_connection;
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __69__DNDRemoteAppConfigurationServiceConnection__queue_createConnection__block_invoke;
    v14 = &unk_27843A9E0;
    v15 = self;
    v16 = v4;
    [(BSServiceConnection *)v10 configureConnection:&v11];
    [(BSServiceConnection *)self->_queue_connection activate:v11];
  }
}

void __69__DNDRemoteAppConfigurationServiceConnection__queue_createConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 24);
  v4 = a2;
  [v4 setServiceQuality:v3];
  [v4 setInterface:*(a1 + 40)];
  [v4 setTargetQueue:*(*(a1 + 32) + 32)];
  [v4 setInterfaceTarget:*(a1 + 32)];
  [v4 setActivationHandler:&__block_literal_global_59];
  [v4 setInterruptionHandler:&__block_literal_global_62];
  [v4 setInvalidationHandler:&__block_literal_global_65];
}

void __69__DNDRemoteAppConfigurationServiceConnection__queue_createConnection__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = DNDLogRemoteConnection;
  if (os_log_type_enabled(DNDLogRemoteConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = v2;
    _os_log_impl(&dword_22002F000, v3, OS_LOG_TYPE_DEFAULT, "XPC request connection was activated: connection=%p", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __69__DNDRemoteAppConfigurationServiceConnection__queue_createConnection__block_invoke_60(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = DNDLogRemoteConnection;
  if (os_log_type_enabled(DNDLogRemoteConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = v2;
    _os_log_impl(&dword_22002F000, v3, OS_LOG_TYPE_DEFAULT, "XPC request connection was interrupted: connection=%p", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __69__DNDRemoteAppConfigurationServiceConnection__queue_createConnection__block_invoke_63(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = DNDLogRemoteConnection;
  if (os_log_type_enabled(DNDLogRemoteConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = v2;
    _os_log_impl(&dword_22002F000, v3, OS_LOG_TYPE_DEFAULT, "XPC request connection was invalidated, cannot recover: connection=%p", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)getCurrentAppConfigurationForActionIdentifier:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __129__DNDRemoteAppConfigurationServiceConnection_getCurrentAppConfigurationForActionIdentifier_withRequestDetails_completionHandler___block_invoke;
  v15[3] = &unk_27843A728;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(queue, v15);
}

void __129__DNDRemoteAppConfigurationServiceConnection_getCurrentAppConfigurationForActionIdentifier_withRequestDetails_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_remoteTarget];
  [v2 getCurrentAppConfigurationForActionIdentifier:*(a1 + 40) withRequestDetails:*(a1 + 48) completionHandler:*(a1 + 56)];
}

- (void)invalidateAppContextForActionIdentifier:(id)a3 withRequestDetails:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __123__DNDRemoteAppConfigurationServiceConnection_invalidateAppContextForActionIdentifier_withRequestDetails_completionHandler___block_invoke;
  v15[3] = &unk_27843A728;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(queue, v15);
}

void __123__DNDRemoteAppConfigurationServiceConnection_invalidateAppContextForActionIdentifier_withRequestDetails_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_remoteTarget];
  [v2 invalidateAppContextForActionIdentifier:*(a1 + 40) withRequestDetails:*(a1 + 48) completionHandler:*(a1 + 56)];
}

@end