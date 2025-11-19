@interface CRSInCallAssertionService
+ (id)sharedInstance;
- (id)_init;
- (void)_connectionQueue_addConnection:(id)a3;
- (void)_connectionQueue_removeConnection:(id)a3;
- (void)addObserver:(id)a3 notifyIfNeeded:(BOOL)a4;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)presentInCallService;
- (void)removeObserver:(id)a3;
- (void)setAllowsBanners:(id)a3;
@end

@implementation CRSInCallAssertionService

- (void)presentInCallService
{
  v3 = [(CRSInCallAssertionService *)self connectionQueue];
  BSDispatchQueueAssert();

  v4 = [(CRSInCallAssertionService *)self connections];
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 instance];
  v7 = [v4 objectForKey:v6];

  v8 = [(CRSInCallAssertionService *)self activatedConnections];
  [v8 addObject:v7];

  v9 = [(CRSInCallAssertionService *)self bannersAllowedConnections];
  v10 = [v9 count];
  v11 = [(CRSInCallAssertionService *)self connections];
  v12 = [v11 count];

  v13 = CRSLogForCategory(2uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242FB5000, v13, OS_LOG_TYPE_DEFAULT, "Received presentation request!", buf, 2u);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__CRSInCallAssertionService_presentInCallService__block_invoke;
  v14[3] = &unk_278D8DFB8;
  v14[4] = self;
  v15 = v10 == v12;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

void __49__CRSInCallAssertionService_presentInCallService__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 inCallAssertionServiceDidPresent:*(a1 + 32)];

  v3 = [*(a1 + 32) observers];
  [v3 inCallAssertionService:*(a1 + 32) didSetBannersEnabled:*(a1 + 40)];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CRSInCallAssertionService sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

uint64_t __43__CRSInCallAssertionService_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance = [[CRSInCallAssertionService alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v25 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = CRSInCallAssertionService;
  v2 = [(CRSInCallAssertionService *)&v22 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CF0C18] serial];
    v4 = BSDispatchQueueCreate();
    connectionQueue = v2->_connectionQueue;
    v2->_connectionQueue = v4;

    v6 = objc_opt_new();
    connections = v2->_connections;
    v2->_connections = v6;

    v8 = [MEMORY[0x277CCAA50] hashTableWithOptions:512];
    activatedConnections = v2->_activatedConnections;
    v2->_activatedConnections = v8;

    v10 = [MEMORY[0x277CCAA50] hashTableWithOptions:512];
    bannersAllowedConnections = v2->_bannersAllowedConnections;
    v2->_bannersAllowedConnections = v10;

    v12 = MEMORY[0x277CF32A0];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __34__CRSInCallAssertionService__init__block_invoke;
    v20[3] = &unk_278D8E008;
    v13 = v2;
    v21 = v13;
    v14 = [v12 listenerWithConfigurator:v20];
    v15 = v13[2];
    v13[2] = v14;

    v16 = CRSLogForCategory(2uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = v13[2];
      *buf = 138412290;
      v24 = v17;
      _os_log_impl(&dword_242FB5000, v16, OS_LOG_TYPE_INFO, "Activating listener! %@", buf, 0xCu);
    }

    [v13[2] activate];
  }

  v18 = *MEMORY[0x277D85DE8];
  return v2;
}

void __34__CRSInCallAssertionService__init__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.CarPlay.non-launching"];
  v3 = +[CRSInCallAssertionSpecification identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (void)addObserver:(id)a3 notifyIfNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    observers = self->_observers;
    if (!observers)
    {
      v8 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_2855A71F8];
      v9 = self->_observers;
      self->_observers = v8;

      observers = self->_observers;
    }

    [(CARObserverHashTable *)observers addObserver:v6];
  }

  if (v4)
  {
    v10 = [(CRSInCallAssertionService *)self activatedConnections];
    v11 = [v10 count];

    if (v11)
    {
      v12 = CRSLogForCategory(2uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_242FB5000, v12, OS_LOG_TYPE_INFO, "Notifying new observer of activation request!", v13, 2u);
      }

      [v6 inCallAssertionServiceDidPresent:self];
    }
  }
}

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    [(CARObserverHashTable *)self->_observers removeObserver:?];
  }
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = CRSLogForCategory(2uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v6 instance];
    *buf = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_242FB5000, v7, OS_LOG_TYPE_INFO, "Received connection! %@, reason: %@", buf, 0x16u);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__CRSInCallAssertionService_listener_didReceiveConnection_withContext___block_invoke;
  v15[3] = &unk_278D8E1A8;
  v15[4] = self;
  [v6 configureConnection:v15];
  v9 = CRSLogForCategory(2uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&dword_242FB5000, v9, OS_LOG_TYPE_INFO, "Activating connection... %@", buf, 0xCu);
  }

  v10 = [(CRSInCallAssertionService *)self connectionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__CRSInCallAssertionService_listener_didReceiveConnection_withContext___block_invoke_83;
  block[3] = &unk_278D8E3D0;
  block[4] = self;
  v14 = v6;
  v11 = v6;
  dispatch_async(v10, block);

  [v11 activate];
  v12 = *MEMORY[0x277D85DE8];
}

void __71__CRSInCallAssertionService_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CRSInCallAssertionSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[CRSInCallAssertionSpecification interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__CRSInCallAssertionService_listener_didReceiveConnection_withContext___block_invoke_2;
  v7[3] = &unk_278D8E3A8;
  v7[4] = *(a1 + 32);
  [v3 setInvalidationHandler:v7];
  v6 = [*(a1 + 32) connectionQueue];
  [v3 setTargetQueue:v6];
}

void __71__CRSInCallAssertionService_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CRSLogForCategory(2uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_242FB5000, v4, OS_LOG_TYPE_INFO, "Connection invalidated! %@", &v6, 0xCu);
  }

  [*(a1 + 32) _connectionQueue_removeConnection:v3];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setAllowsBanners:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CRSInCallAssertionService *)self connectionQueue];
  BSDispatchQueueAssert();

  v6 = [(CRSInCallAssertionService *)self bannersAllowedConnections];
  v7 = [v6 count];
  v8 = [(CRSInCallAssertionService *)self connections];
  v9 = [v8 count];

  v10 = [(CRSInCallAssertionService *)self connections];
  v11 = [MEMORY[0x277CF3280] currentContext];
  v12 = [v11 instance];
  v13 = [v10 objectForKey:v12];

  LODWORD(v10) = [v4 BOOLValue];
  v14 = [(CRSInCallAssertionService *)self bannersAllowedConnections];
  v15 = v14;
  if (v10)
  {
    [v14 addObject:v13];
  }

  else
  {
    [v14 removeObject:v13];
  }

  v16 = CRSLogForCategory(2uLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(CRSInCallAssertionService *)self connections];
    v18 = [v17 count];
    v19 = [(CRSInCallAssertionService *)self bannersAllowedConnections];
    *buf = 134217984;
    v28 = v18 - [v19 count];
    _os_log_impl(&dword_242FB5000, v16, OS_LOG_TYPE_DEFAULT, "Number of assertions preventing banners: %ld", buf, 0xCu);
  }

  v20 = [(CRSInCallAssertionService *)self bannersAllowedConnections];
  v21 = [v20 count];
  v22 = [(CRSInCallAssertionService *)self connections];
  v23 = [v22 count];

  if ((v7 != v9) == (v21 == v23))
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __46__CRSInCallAssertionService_setAllowsBanners___block_invoke;
    v25[3] = &unk_278D8DFB8;
    v25[4] = self;
    v26 = v21 == v23;
    dispatch_async(MEMORY[0x277D85CD0], v25);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __46__CRSInCallAssertionService_setAllowsBanners___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 inCallAssertionService:*(a1 + 32) didSetBannersEnabled:*(a1 + 40)];
}

- (void)_connectionQueue_addConnection:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CRSInCallAssertionService *)self connectionQueue];
  BSDispatchQueueAssert();

  v6 = [(CRSInCallAssertionService *)self connections];
  v7 = [v4 instance];
  [v6 setObject:v4 forKey:v7];

  v8 = CRSLogForCategory(2uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(CRSInCallAssertionService *)self connections];
    v11 = 134217984;
    v12 = [v9 count];
    _os_log_impl(&dword_242FB5000, v8, OS_LOG_TYPE_INFO, "Connection count: %ld", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_connectionQueue_removeConnection:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CRSInCallAssertionService *)self connectionQueue];
  BSDispatchQueueAssert();

  v6 = [(CRSInCallAssertionService *)self activatedConnections];
  v7 = [v6 containsObject:v4];

  if (v7)
  {
    v8 = [(CRSInCallAssertionService *)self activatedConnections];
    [v8 removeObject:v4];
  }

  v9 = [(CRSInCallAssertionService *)self bannersAllowedConnections];
  v10 = [v9 containsObject:v4];

  if (v10)
  {
    v11 = [(CRSInCallAssertionService *)self bannersAllowedConnections];
    [v11 removeObject:v4];
  }

  v12 = [(CRSInCallAssertionService *)self connections];
  v13 = [v4 instance];
  [v12 removeObjectForKey:v13];

  v14 = CRSLogForCategory(2uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [(CRSInCallAssertionService *)self connections];
    *buf = 134217984;
    v22 = [v15 count];
    _os_log_impl(&dword_242FB5000, v14, OS_LOG_TYPE_INFO, "Connection count: %ld", buf, 0xCu);
  }

  v16 = [(CRSInCallAssertionService *)self connections];
  v17 = [v16 count];

  if (!v17)
  {
    v18 = CRSLogForCategory(2uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242FB5000, v18, OS_LOG_TYPE_DEFAULT, "No more connections, requesting dismissal", buf, 2u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__CRSInCallAssertionService__connectionQueue_removeConnection___block_invoke;
    block[3] = &unk_278D8E380;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __63__CRSInCallAssertionService__connectionQueue_removeConnection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 inCallAssertionServiceDidDismiss:*(a1 + 32)];

  v3 = [*(a1 + 32) observers];
  [v3 inCallAssertionService:*(a1 + 32) didSetBannersEnabled:1];
}

@end