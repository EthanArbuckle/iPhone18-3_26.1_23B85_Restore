@interface CRSUIVolumeNotificationService
- (BOOL)hasConnectionForBundleIdentifier:(id)identifier;
- (BOOL)isNotificationBlockedForBundleIdentifier:(id)identifier;
- (CRSUIVolumeNotificationService)init;
- (void)_connectionQueue_addConnection:(id)connection;
- (void)_connectionQueue_removeConnection:(id)connection;
- (void)addObserver:(id)observer;
- (void)clientCancelSuspension;
- (void)clientSuspendNotifications;
- (void)invalidate;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)removeObserver:(id)observer;
@end

@implementation CRSUIVolumeNotificationService

- (CRSUIVolumeNotificationService)init
{
  v25 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = CRSUIVolumeNotificationService;
  v2 = [(CRSUIVolumeNotificationService *)&v22 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285609070];
    observers = v2->_observers;
    v2->_observers = v3;

    serial = [MEMORY[0x277CF0C18] serial];
    v6 = BSDispatchQueueCreate();
    connectionQueue = v2->_connectionQueue;
    v2->_connectionQueue = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    connections = v2->_connections;
    v2->_connections = v8;

    v2->_lock._os_unfair_lock_opaque = 0;
    v10 = objc_opt_new();
    lock_assertions = v2->_lock_assertions;
    v2->_lock_assertions = v10;

    v12 = MEMORY[0x277CF32A0];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __38__CRSUIVolumeNotificationService_init__block_invoke;
    v20[3] = &unk_278DA0B08;
    v13 = v2;
    v21 = v13;
    v14 = [v12 listenerWithConfigurator:v20];
    v15 = v13[3];
    v13[3] = v14;

    v16 = CRSUILogForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v13[3];
      *buf = 138412290;
      v24 = v17;
      _os_log_impl(&dword_243218000, v16, OS_LOG_TYPE_DEFAULT, "Volume notification activating listener! %@", buf, 0xCu);
    }

    [v13[3] activate];
  }

  v18 = *MEMORY[0x277D85DE8];
  return v2;
}

void __38__CRSUIVolumeNotificationService_init__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.CarPlay.VolumeNotification"];
  v3 = +[CRSUIVolumeNotificationSpecification identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (BOOL)isNotificationBlockedForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  connections = [(CRSUIVolumeNotificationService *)self connections];
  v6 = [connections objectForKeyedSubscript:identifierCopy];

  instance = [v6 instance];
  v8 = instance;
  if (v6 && instance)
  {
    lock_assertions = self->_lock_assertions;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __75__CRSUIVolumeNotificationService_isNotificationBlockedForBundleIdentifier___block_invoke;
    v14[3] = &unk_278DA1168;
    v15 = v6;
    v10 = [(NSMutableArray *)lock_assertions indexOfObjectWithOptions:2 passingTest:v14];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      os_unfair_lock_unlock(&self->_lock);
      blockNotification = 0;
    }

    else
    {
      v12 = [(NSMutableArray *)self->_lock_assertions objectAtIndex:v10];
      blockNotification = [v12 blockNotification];
      os_unfair_lock_unlock(&self->_lock);
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    blockNotification = 0;
  }

  return blockNotification;
}

uint64_t __75__CRSUIVolumeNotificationService_isNotificationBlockedForBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) instance];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CRSUIVolumeNotificationService *)self observers];
  [observers addObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CRSUIVolumeNotificationService *)self observers];
  [observers removeObserver:observerCopy];
}

- (void)invalidate
{
  connections = [(CRSUIVolumeNotificationService *)self connections];
  [connections removeAllObjects];

  listener = [(CRSUIVolumeNotificationService *)self listener];
  [listener invalidate];
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v7 = CRSUILogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = connectionCopy;
    _os_log_impl(&dword_243218000, v7, OS_LOG_TYPE_INFO, "Volume notification received connection! %@", buf, 0xCu);
  }

  remoteProcess = [connectionCopy remoteProcess];
  v9 = [remoteProcess hasEntitlement:@"com.apple.private.CarPlayUIServices.volume-notification"];

  if (v9)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __76__CRSUIVolumeNotificationService_listener_didReceiveConnection_withContext___block_invoke;
    v17[3] = &unk_278DA10F0;
    v17[4] = self;
    [connectionCopy configureConnection:v17];
    v10 = CRSUILogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = connectionCopy;
      _os_log_impl(&dword_243218000, v10, OS_LOG_TYPE_DEFAULT, "Activating connection... %@", buf, 0xCu);
    }

    connectionQueue = [(CRSUIVolumeNotificationService *)self connectionQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__CRSUIVolumeNotificationService_listener_didReceiveConnection_withContext___block_invoke_99;
    block[3] = &unk_278DA0D18;
    block[4] = self;
    v12 = connectionCopy;
    v16 = v12;
    dispatch_async(connectionQueue, block);

    [v12 activate];
  }

  else
  {
    v13 = CRSUILogForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CRSUIStatusBarStyleService listener:connectionCopy didReceiveConnection:v13 withContext:?];
    }

    [connectionCopy invalidate];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __76__CRSUIVolumeNotificationService_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CRSUIVolumeNotificationSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[CRSUIVolumeNotificationSpecification interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__CRSUIVolumeNotificationService_listener_didReceiveConnection_withContext___block_invoke_2;
  v7[3] = &unk_278DA10C8;
  v7[4] = *(a1 + 32);
  [v3 setInvalidationHandler:v7];
  v6 = [*(a1 + 32) connectionQueue];
  [v3 setTargetQueue:v6];
}

void __76__CRSUIVolumeNotificationService_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CRSUILogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__CRSUIClusterThemeService_listener_didReceiveConnection_withContext___block_invoke_2_cold_1(v3, v4);
  }

  [*(a1 + 32) _connectionQueue_removeConnection:v3];
}

- (void)clientSuspendNotifications
{
  connectionQueue = [(CRSUIVolumeNotificationService *)self connectionQueue];
  BSDispatchQueueAssert();

  os_unfair_lock_lock(&self->_lock);
  v4 = CRSUILogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243218000, v4, OS_LOG_TYPE_DEFAULT, "Volume notification received override request!", buf, 2u);
  }

  currentContext = [MEMORY[0x277CF3280] currentContext];
  instance = [currentContext instance];
  v7 = instance;
  if (instance)
  {
    lock_assertions = self->_lock_assertions;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __60__CRSUIVolumeNotificationService_clientSuspendNotifications__block_invoke;
    v13[3] = &unk_278DA1168;
    v9 = instance;
    v14 = v9;
    v10 = [(NSMutableArray *)lock_assertions indexOfObjectPassingTest:v13];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_lock_assertions removeObjectAtIndex:v10];
    }

    v11 = objc_alloc_init(CRSUIVolumeNotificationAssertionData);
    [(CRSUIVolumeNotificationAssertionData *)v11 setIdentifier:v9];
    [(CRSUIVolumeNotificationAssertionData *)v11 setBlockNotification:1];
    [(NSMutableArray *)self->_lock_assertions addObject:v11];
  }

  os_unfair_lock_unlock(&self->_lock);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__CRSUIVolumeNotificationService_clientSuspendNotifications__block_invoke_2;
  v12[3] = &unk_278DA0FC8;
  v12[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

uint64_t __60__CRSUIVolumeNotificationService_clientSuspendNotifications__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __60__CRSUIVolumeNotificationService_clientSuspendNotifications__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 volumeNotificationServiceUpdated:*(a1 + 32)];
}

- (BOOL)hasConnectionForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  connections = [(CRSUIVolumeNotificationService *)self connections];
  v6 = [connections objectForKeyedSubscript:identifierCopy];

  return v6 != 0;
}

- (void)clientCancelSuspension
{
  v3 = CRSUILogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243218000, v3, OS_LOG_TYPE_DEFAULT, "Volume notification client relinquish received", buf, 2u);
  }

  connectionQueue = [(CRSUIVolumeNotificationService *)self connectionQueue];
  BSDispatchQueueAssert();

  os_unfair_lock_lock(&self->_lock);
  currentContext = [MEMORY[0x277CF3280] currentContext];
  instance = [currentContext instance];
  v7 = instance;
  if (instance)
  {
    lock_assertions = self->_lock_assertions;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__CRSUIVolumeNotificationService_clientCancelSuspension__block_invoke;
    v11[3] = &unk_278DA1168;
    v12 = instance;
    v9 = [(NSMutableArray *)lock_assertions indexOfObjectPassingTest:v11];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_lock_assertions removeObjectAtIndex:v9];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__CRSUIVolumeNotificationService_clientCancelSuspension__block_invoke_2;
  v10[3] = &unk_278DA0FC8;
  v10[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

uint64_t __56__CRSUIVolumeNotificationService_clientCancelSuspension__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __56__CRSUIVolumeNotificationService_clientCancelSuspension__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 volumeNotificationServiceUpdated:*(a1 + 32)];
}

- (void)_connectionQueue_addConnection:(id)connection
{
  connectionCopy = connection;
  connections = [(CRSUIVolumeNotificationService *)self connections];
  remoteProcess = [connectionCopy remoteProcess];
  bundleIdentifier = [remoteProcess bundleIdentifier];
  [connections setObject:connectionCopy forKeyedSubscript:bundleIdentifier];
}

- (void)_connectionQueue_removeConnection:(id)connection
{
  connectionCopy = connection;
  connections = [(CRSUIVolumeNotificationService *)self connections];
  remoteProcess = [connectionCopy remoteProcess];
  bundleIdentifier = [remoteProcess bundleIdentifier];
  [connections removeObjectForKey:bundleIdentifier];

  os_unfair_lock_lock(&self->_lock);
  instance = [connectionCopy instance];

  if (instance)
  {
    lock_assertions = self->_lock_assertions;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__CRSUIVolumeNotificationService__connectionQueue_removeConnection___block_invoke;
    v12[3] = &unk_278DA1168;
    v13 = instance;
    v10 = [(NSMutableArray *)lock_assertions indexOfObjectPassingTest:v12];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_lock_assertions removeObjectAtIndex:v10];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__CRSUIVolumeNotificationService__connectionQueue_removeConnection___block_invoke_2;
  v11[3] = &unk_278DA0FC8;
  v11[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

uint64_t __68__CRSUIVolumeNotificationService__connectionQueue_removeConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __68__CRSUIVolumeNotificationService__connectionQueue_removeConnection___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 volumeNotificationServiceUpdated:*(a1 + 32)];
}

@end