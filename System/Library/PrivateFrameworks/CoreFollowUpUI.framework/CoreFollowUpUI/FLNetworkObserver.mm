@interface FLNetworkObserver
+ (id)sharedNetworkObserver;
- (BOOL)_isWiFiEnabled;
- (BOOL)isAirplaneModeActiveWithoutWiFi;
- (BOOL)isNetworkReachable;
- (FLNetworkObserver)init;
- (id)_init;
- (id)addNetworkReachableBlock:(id)a3;
- (void)_networkReachabilityDidChange;
- (void)_startPathMonitor;
- (void)_stopPathMonitor;
- (void)addNetworkReachableObserver:(id)a3 selector:(SEL)a4;
- (void)dealloc;
- (void)disableAirplaneMode;
- (void)removeNetworkReachableObserver:(id)a3;
@end

@implementation FLNetworkObserver

- (FLNetworkObserver)init
{
  [(FLNetworkObserver *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = FLNetworkObserver;
  v2 = [(FLNetworkObserver *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.CoreFollowUpUI.FLNetworkObserver", 0);
    observerQueue = v2->_observerQueue;
    v2->_observerQueue = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    invocationByObserver = v2->_invocationByObserver;
    v2->_invocationByObserver = v5;

    [(FLNetworkObserver *)v2 _startPathMonitor];
  }

  return v2;
}

- (void)dealloc
{
  [(FLNetworkObserver *)self _stopPathMonitor];
  invocationByObserver = self->_invocationByObserver;
  self->_invocationByObserver = 0;

  v4.receiver = self;
  v4.super_class = FLNetworkObserver;
  [(FLNetworkObserver *)&v4 dealloc];
}

+ (id)sharedNetworkObserver
{
  if (sharedNetworkObserver_onceToken != -1)
  {
    +[FLNetworkObserver sharedNetworkObserver];
  }

  v3 = sharedNetworkObserver_networkObserver;

  return v3;
}

uint64_t __42__FLNetworkObserver_sharedNetworkObserver__block_invoke()
{
  sharedNetworkObserver_networkObserver = [[FLNetworkObserver alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (void)disableAirplaneMode
{
  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_245383000, v3, OS_LOG_TYPE_DEFAULT, "Disabling airplane mode and waiting for network change.", v5, 2u);
  }

  v4 = [objc_alloc(MEMORY[0x277CEC5D0]) initWithQueue:self->_observerQueue];
  [v4 setAirplaneMode:0];
}

- (BOOL)isAirplaneModeActiveWithoutWiFi
{
  v3 = [objc_alloc(MEMORY[0x277CEC5D0]) initWithQueue:self->_observerQueue];
  v4 = [v3 airplaneMode] && !-[FLNetworkObserver _isWiFiEnabled](self, "_isWiFiEnabled");

  return v4;
}

- (void)_startPathMonitor
{
  pathMonitor = self->_pathMonitor;
  if (!pathMonitor)
  {
    v4 = nw_path_monitor_create();
    v5 = self->_pathMonitor;
    self->_pathMonitor = v4;

    pathMonitor = self->_pathMonitor;
  }

  nw_path_monitor_set_queue(pathMonitor, self->_observerQueue);
  objc_initWeak(&location, self);
  v6 = self->_pathMonitor;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__FLNetworkObserver__startPathMonitor__block_invoke;
  v7[3] = &unk_278E35AA8;
  objc_copyWeak(&v8, &location);
  nw_path_monitor_set_update_handler(v6, v7);
  nw_path_monitor_start(self->_pathMonitor);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __38__FLNetworkObserver__startPathMonitor__block_invoke(uint64_t a1, void *a2)
{
  path = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = (nw_path_get_status(path) & 0xFFFFFFFD) == 1 && nw_path_has_dns(path);
    v5 = WeakRetained[32];
    WeakRetained[32] = v4;
    WeakRetained[33] = MEMORY[0x245D69630](path, 1);
    if (v5 != v4)
    {
      [WeakRetained _networkReachabilityDidChange];
    }
  }
}

- (void)_stopPathMonitor
{
  pathMonitor = self->_pathMonitor;
  if (pathMonitor)
  {
    nw_path_monitor_cancel(pathMonitor);
    v4 = self->_pathMonitor;
    self->_pathMonitor = 0;
  }
}

- (void)_networkReachabilityDidChange
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(NSMutableDictionary *)self->_invocationByObserver allValues];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = MEMORY[0x277D85CD0];
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __50__FLNetworkObserver__networkReachabilityDidChange__block_invoke;
        block[3] = &unk_278E35920;
        block[4] = v8;
        dispatch_async(v6, block);
        ++v7;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)isNetworkReachable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  observerQueue = self->_observerQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__FLNetworkObserver_isNetworkReachable__block_invoke;
  v5[3] = &unk_278E35AD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(observerQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_isWiFiEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  observerQueue = self->_observerQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__FLNetworkObserver__isWiFiEnabled__block_invoke;
  v5[3] = &unk_278E35AD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(observerQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)addNetworkReachableObserver:(id)a3 selector:(SEL)a4
{
  v6 = a3;
  v7 = [v6 methodSignatureForSelector:a4];
  v8 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v7];
  [v8 setSelector:a4];
  [v8 setTarget:v6];
  v9 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v6];

  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__FLNetworkObserver_addNetworkReachableObserver_selector___block_invoke;
  block[3] = &unk_278E35AF8;
  block[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_sync(observerQueue, block);
}

- (id)addNetworkReachableBlock:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [_FLNetworkObserverBlock alloc];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__FLNetworkObserver_addNetworkReachableBlock___block_invoke;
  v9[3] = &unk_278E35B20;
  objc_copyWeak(&v11, &location);
  v6 = v4;
  v10 = v6;
  v7 = [(_FLNetworkObserverBlock *)v5 _initWithBlock:v9 networkObserver:self];
  [(FLNetworkObserver *)self addNetworkReachableObserver:v7 selector:sel_executeBlock];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

void __46__FLNetworkObserver_addNetworkReachableBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))(*(a1 + 32), [WeakRetained isNetworkReachable]);
    WeakRetained = v3;
  }
}

- (void)removeNetworkReachableObserver:(id)a3
{
  v4 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:a3];
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__FLNetworkObserver_removeNetworkReachableObserver___block_invoke;
  v7[3] = &unk_278E35970;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(observerQueue, v7);
}

@end