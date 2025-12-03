@interface CRSInCallAssertionService
+ (id)sharedInstance;
- (id)_init;
- (void)_connectionQueue_addConnection:(id)connection;
- (void)_connectionQueue_removeConnection:(id)connection;
- (void)addObserver:(id)observer notifyIfNeeded:(BOOL)needed;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)presentInCallService;
- (void)removeObserver:(id)observer;
- (void)setAllowsBanners:(id)banners;
@end

@implementation CRSInCallAssertionService

- (void)presentInCallService
{
  connectionQueue = [(CRSInCallAssertionService *)self connectionQueue];
  BSDispatchQueueAssert();

  connections = [(CRSInCallAssertionService *)self connections];
  currentContext = [MEMORY[0x277CF3280] currentContext];
  instance = [currentContext instance];
  v7 = [connections objectForKey:instance];

  activatedConnections = [(CRSInCallAssertionService *)self activatedConnections];
  [activatedConnections addObject:v7];

  bannersAllowedConnections = [(CRSInCallAssertionService *)self bannersAllowedConnections];
  v10 = [bannersAllowedConnections count];
  connections2 = [(CRSInCallAssertionService *)self connections];
  v12 = [connections2 count];

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
    serial = [MEMORY[0x277CF0C18] serial];
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

- (void)addObserver:(id)observer notifyIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  observerCopy = observer;
  if (observerCopy)
  {
    observers = self->_observers;
    if (!observers)
    {
      v8 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_2855A71F8];
      v9 = self->_observers;
      self->_observers = v8;

      observers = self->_observers;
    }

    [(CARObserverHashTable *)observers addObserver:observerCopy];
  }

  if (neededCopy)
  {
    activatedConnections = [(CRSInCallAssertionService *)self activatedConnections];
    v11 = [activatedConnections count];

    if (v11)
    {
      v12 = CRSLogForCategory(2uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_242FB5000, v12, OS_LOG_TYPE_INFO, "Notifying new observer of activation request!", v13, 2u);
      }

      [observerCopy inCallAssertionServiceDidPresent:self];
    }
  }
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    [(CARObserverHashTable *)self->_observers removeObserver:?];
  }
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v7 = CRSLogForCategory(2uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    instance = [connectionCopy instance];
    *buf = 138412546;
    v17 = connectionCopy;
    v18 = 2112;
    v19 = instance;
    _os_log_impl(&dword_242FB5000, v7, OS_LOG_TYPE_INFO, "Received connection! %@, reason: %@", buf, 0x16u);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__CRSInCallAssertionService_listener_didReceiveConnection_withContext___block_invoke;
  v15[3] = &unk_278D8E1A8;
  v15[4] = self;
  [connectionCopy configureConnection:v15];
  v9 = CRSLogForCategory(2uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v17 = connectionCopy;
    _os_log_impl(&dword_242FB5000, v9, OS_LOG_TYPE_INFO, "Activating connection... %@", buf, 0xCu);
  }

  connectionQueue = [(CRSInCallAssertionService *)self connectionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__CRSInCallAssertionService_listener_didReceiveConnection_withContext___block_invoke_83;
  block[3] = &unk_278D8E3D0;
  block[4] = self;
  v14 = connectionCopy;
  v11 = connectionCopy;
  dispatch_async(connectionQueue, block);

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

- (void)setAllowsBanners:(id)banners
{
  v29 = *MEMORY[0x277D85DE8];
  bannersCopy = banners;
  connectionQueue = [(CRSInCallAssertionService *)self connectionQueue];
  BSDispatchQueueAssert();

  bannersAllowedConnections = [(CRSInCallAssertionService *)self bannersAllowedConnections];
  v7 = [bannersAllowedConnections count];
  connections = [(CRSInCallAssertionService *)self connections];
  v9 = [connections count];

  connections2 = [(CRSInCallAssertionService *)self connections];
  currentContext = [MEMORY[0x277CF3280] currentContext];
  instance = [currentContext instance];
  v13 = [connections2 objectForKey:instance];

  LODWORD(connections2) = [bannersCopy BOOLValue];
  bannersAllowedConnections2 = [(CRSInCallAssertionService *)self bannersAllowedConnections];
  v15 = bannersAllowedConnections2;
  if (connections2)
  {
    [bannersAllowedConnections2 addObject:v13];
  }

  else
  {
    [bannersAllowedConnections2 removeObject:v13];
  }

  v16 = CRSLogForCategory(2uLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    connections3 = [(CRSInCallAssertionService *)self connections];
    v18 = [connections3 count];
    bannersAllowedConnections3 = [(CRSInCallAssertionService *)self bannersAllowedConnections];
    *buf = 134217984;
    v28 = v18 - [bannersAllowedConnections3 count];
    _os_log_impl(&dword_242FB5000, v16, OS_LOG_TYPE_DEFAULT, "Number of assertions preventing banners: %ld", buf, 0xCu);
  }

  bannersAllowedConnections4 = [(CRSInCallAssertionService *)self bannersAllowedConnections];
  v21 = [bannersAllowedConnections4 count];
  connections4 = [(CRSInCallAssertionService *)self connections];
  v23 = [connections4 count];

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

- (void)_connectionQueue_addConnection:(id)connection
{
  v13 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  connectionQueue = [(CRSInCallAssertionService *)self connectionQueue];
  BSDispatchQueueAssert();

  connections = [(CRSInCallAssertionService *)self connections];
  instance = [connectionCopy instance];
  [connections setObject:connectionCopy forKey:instance];

  v8 = CRSLogForCategory(2uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    connections2 = [(CRSInCallAssertionService *)self connections];
    v11 = 134217984;
    v12 = [connections2 count];
    _os_log_impl(&dword_242FB5000, v8, OS_LOG_TYPE_INFO, "Connection count: %ld", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_connectionQueue_removeConnection:(id)connection
{
  v23 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  connectionQueue = [(CRSInCallAssertionService *)self connectionQueue];
  BSDispatchQueueAssert();

  activatedConnections = [(CRSInCallAssertionService *)self activatedConnections];
  v7 = [activatedConnections containsObject:connectionCopy];

  if (v7)
  {
    activatedConnections2 = [(CRSInCallAssertionService *)self activatedConnections];
    [activatedConnections2 removeObject:connectionCopy];
  }

  bannersAllowedConnections = [(CRSInCallAssertionService *)self bannersAllowedConnections];
  v10 = [bannersAllowedConnections containsObject:connectionCopy];

  if (v10)
  {
    bannersAllowedConnections2 = [(CRSInCallAssertionService *)self bannersAllowedConnections];
    [bannersAllowedConnections2 removeObject:connectionCopy];
  }

  connections = [(CRSInCallAssertionService *)self connections];
  instance = [connectionCopy instance];
  [connections removeObjectForKey:instance];

  v14 = CRSLogForCategory(2uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    connections2 = [(CRSInCallAssertionService *)self connections];
    *buf = 134217984;
    v22 = [connections2 count];
    _os_log_impl(&dword_242FB5000, v14, OS_LOG_TYPE_INFO, "Connection count: %ld", buf, 0xCu);
  }

  connections3 = [(CRSInCallAssertionService *)self connections];
  v17 = [connections3 count];

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