@interface DNDRemoteAvailabilityServiceConnection
+ (id)sharedInstance;
- (DNDRemoteAvailabilityServiceConnection)init;
- (id)_queue_remoteTarget;
- (void)_queue_createConnection;
- (void)_queue_invalidateConnection;
- (void)getIsLocalUserAvailableWithRequestDetails:(id)details completionHandler:(id)handler;
@end

@implementation DNDRemoteAvailabilityServiceConnection

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DNDRemoteAvailabilityServiceConnection_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __56__DNDRemoteAvailabilityServiceConnection_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (DNDRemoteAvailabilityServiceConnection)init
{
  v11.receiver = self;
  v11.super_class = DNDRemoteAvailabilityServiceConnection;
  v2 = [(DNDRemoteAvailabilityServiceConnection *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    userInitiated = [MEMORY[0x277CF32C8] userInitiated];
    queuePriority = v3->_queuePriority;
    v3->_queuePriority = userInitiated;

    serial = [MEMORY[0x277CF0C18] serial];
    v7 = [serial serviceClass:-[BSServiceQuality serviceClass](v3->_queuePriority relativePriority:{"serviceClass"), -[BSServiceQuality relativePriority](v3->_queuePriority, "relativePriority")}];
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
  remoteTarget = [(BSServiceConnection *)self->_queue_connection remoteTarget];
  if (!remoteTarget)
  {
    [(DNDRemoteAvailabilityServiceConnection *)self _queue_invalidateConnection];
    [(DNDRemoteAvailabilityServiceConnection *)self _queue_createConnection];
    remoteTarget = [(BSServiceConnection *)self->_queue_connection remoteTarget];
  }

  return remoteTarget;
}

- (void)_queue_createConnection
{
  queue = self->_queue;
  BSDispatchQueueAssert();
  v4 = DNDRemoteAvailabilityServiceServerInterface();
  v5 = MEMORY[0x277CF3288];
  identifier = [v4 identifier];
  v7 = [v5 endpointForMachName:@"com.apple.donotdisturb.availability.service" service:identifier instance:0];

  if (v7)
  {
    v8 = [MEMORY[0x277CF3280] connectionWithEndpoint:v7];
    queue_connection = self->_queue_connection;
    self->_queue_connection = v8;

    v10 = self->_queue_connection;
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __65__DNDRemoteAvailabilityServiceConnection__queue_createConnection__block_invoke;
    v14 = &unk_27843A9E0;
    selfCopy = self;
    v16 = v4;
    [(BSServiceConnection *)v10 configureConnection:&v11];
    [(BSServiceConnection *)self->_queue_connection activate:v11];
  }
}

void __65__DNDRemoteAvailabilityServiceConnection__queue_createConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 24);
  v4 = a2;
  [v4 setServiceQuality:v3];
  [v4 setInterface:*(a1 + 40)];
  [v4 setTargetQueue:*(*(a1 + 32) + 32)];
  [v4 setInterfaceTarget:*(a1 + 32)];
  [v4 setActivationHandler:&__block_literal_global_57];
  [v4 setInterruptionHandler:&__block_literal_global_60];
  [v4 setInvalidationHandler:&__block_literal_global_63];
}

void __65__DNDRemoteAvailabilityServiceConnection__queue_createConnection__block_invoke_2(uint64_t a1, void *a2)
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

void __65__DNDRemoteAvailabilityServiceConnection__queue_createConnection__block_invoke_58(uint64_t a1, void *a2)
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

void __65__DNDRemoteAvailabilityServiceConnection__queue_createConnection__block_invoke_61(uint64_t a1, void *a2)
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

- (void)getIsLocalUserAvailableWithRequestDetails:(id)details completionHandler:(id)handler
{
  detailsCopy = details;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__DNDRemoteAvailabilityServiceConnection_getIsLocalUserAvailableWithRequestDetails_completionHandler___block_invoke;
  block[3] = &unk_27843A198;
  block[4] = self;
  v12 = detailsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = detailsCopy;
  dispatch_sync(queue, block);
}

void __102__DNDRemoteAvailabilityServiceConnection_getIsLocalUserAvailableWithRequestDetails_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_remoteTarget];
  [v2 getIsLocalUserAvailableWithRequestDetails:*(a1 + 40) completionHandler:*(a1 + 48)];
}

@end