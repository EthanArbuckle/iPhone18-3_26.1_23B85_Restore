@interface CRSSessionService
- (BOOL)isActive;
- (CRSSessionService)initWithDelegate:(id)delegate;
- (CRSSessionServiceDelegate)delegate;
- (void)_connectionQueue_addConnection:(id)connection;
- (void)_connectionQueue_removeConnection:(id)connection;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation CRSSessionService

- (CRSSessionService)initWithDelegate:(id)delegate
{
  v25 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = CRSSessionService;
  v5 = [(CRSSessionService *)&v22 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    serial = [MEMORY[0x277CF0C18] serial];
    v8 = BSDispatchQueueCreate();
    connectionQueue = v6->_connectionQueue;
    v6->_connectionQueue = v8;

    v10 = [MEMORY[0x277CCAA50] hashTableWithOptions:512];
    lock_connections = v6->_lock_connections;
    v6->_lock_connections = v10;

    v12 = MEMORY[0x277CF32A0];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __38__CRSSessionService_initWithDelegate___block_invoke;
    v20[3] = &unk_278D8E008;
    v13 = v6;
    v21 = v13;
    v14 = [v12 listenerWithConfigurator:v20];
    v15 = v13[3];
    v13[3] = v14;

    v16 = CRSLogForCategory(3uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v13[3];
      *buf = 138412290;
      v24 = v17;
      _os_log_impl(&dword_242FB5000, v16, OS_LOG_TYPE_DEFAULT, "Activating listener! %@", buf, 0xCu);
    }

    [v13[3] activate];
  }

  v18 = *MEMORY[0x277D85DE8];
  return v6;
}

void __38__CRSSessionService_initWithDelegate___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.CarPlay"];
  v3 = +[CRSSessionSpecification identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (BOOL)isActive
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSHashTable *)self->_lock_connections count]!= 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v17 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v7 = CRSLogForCategory(3uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = connectionCopy;
    _os_log_impl(&dword_242FB5000, v7, OS_LOG_TYPE_DEFAULT, "Received connection! %@", buf, 0xCu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__CRSSessionService_listener_didReceiveConnection_withContext___block_invoke;
  v14[3] = &unk_278D8E1A8;
  v14[4] = self;
  [connectionCopy configureConnection:v14];
  v8 = CRSLogForCategory(3uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = connectionCopy;
    _os_log_impl(&dword_242FB5000, v8, OS_LOG_TYPE_DEFAULT, "Activating connection... %@", buf, 0xCu);
  }

  connectionQueue = [(CRSSessionService *)self connectionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__CRSSessionService_listener_didReceiveConnection_withContext___block_invoke_10;
  block[3] = &unk_278D8E3D0;
  block[4] = self;
  v13 = connectionCopy;
  v10 = connectionCopy;
  dispatch_async(connectionQueue, block);

  [v10 activate];
  v11 = *MEMORY[0x277D85DE8];
}

void __63__CRSSessionService_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CRSSessionSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[CRSSessionSpecification interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__CRSSessionService_listener_didReceiveConnection_withContext___block_invoke_2;
  v7[3] = &unk_278D8E3A8;
  v7[4] = *(a1 + 32);
  [v3 setInvalidationHandler:v7];
  v6 = [*(a1 + 32) connectionQueue];
  [v3 setTargetQueue:v6];
}

void __63__CRSSessionService_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CRSLogForCategory(3uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_242FB5000, v4, OS_LOG_TYPE_DEFAULT, "Connection invalidated! %@", &v6, 0xCu);
  }

  [*(a1 + 32) _connectionQueue_removeConnection:v3];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_connectionQueue_addConnection:(id)connection
{
  v11 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_connections addObject:connectionCopy];

  v5 = CRSLogForCategory(3uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NSHashTable *)self->_lock_connections count];
    *buf = 134217984;
    v10 = v6;
    _os_log_impl(&dword_242FB5000, v5, OS_LOG_TYPE_DEFAULT, "Connection count: %ld", buf, 0xCu);
  }

  os_unfair_lock_unlock(&self->_lock);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__CRSSessionService__connectionQueue_addConnection___block_invoke;
  block[3] = &unk_278D8E380;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v7 = *MEMORY[0x277D85DE8];
}

void __52__CRSSessionService__connectionQueue_addConnection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 sessionServiceBecameActive:*(a1 + 32)];
}

- (void)_connectionQueue_removeConnection:(id)connection
{
  v13 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_connections removeObject:connectionCopy];

  v5 = CRSLogForCategory(3uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NSHashTable *)self->_lock_connections count];
    *buf = 134217984;
    v12 = v6;
    _os_log_impl(&dword_242FB5000, v5, OS_LOG_TYPE_DEFAULT, "Connection count: %ld", buf, 0xCu);
  }

  v7 = [(NSHashTable *)self->_lock_connections count];
  os_unfair_lock_unlock(&self->_lock);
  if (!v7)
  {
    v8 = CRSLogForCategory(3uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242FB5000, v8, OS_LOG_TYPE_DEFAULT, "No more connections!", buf, 2u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__CRSSessionService__connectionQueue_removeConnection___block_invoke;
    block[3] = &unk_278D8E380;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __55__CRSSessionService__connectionQueue_removeConnection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 sessionServiceBecameInactive:*(a1 + 32)];
}

- (CRSSessionServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end