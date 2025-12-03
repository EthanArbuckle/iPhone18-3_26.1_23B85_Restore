@interface ASKRebootstrapCoordinator
+ (ASKRebootstrapCoordinator)sharedCoordinator;
- (ASKRebootstrapCoordinator)init;
- (id)registerCleanupHandler:(id)handler;
- (void)beginDelayingNotifications;
- (void)endDelayingNotifications;
- (void)notify;
- (void)scheduleNotification;
@end

@implementation ASKRebootstrapCoordinator

+ (ASKRebootstrapCoordinator)sharedCoordinator
{
  if (sharedCoordinator_onceToken != -1)
  {
    +[ASKRebootstrapCoordinator sharedCoordinator];
  }

  v3 = sharedCoordinator_sharedCoordinator;

  return v3;
}

void __46__ASKRebootstrapCoordinator_sharedCoordinator__block_invoke()
{
  v0 = objc_alloc_init(ASKRebootstrapCoordinator);
  v1 = sharedCoordinator_sharedCoordinator;
  sharedCoordinator_sharedCoordinator = v0;
}

- (ASKRebootstrapCoordinator)init
{
  v15.receiver = self;
  v15.super_class = ASKRebootstrapCoordinator;
  v2 = [(ASKRebootstrapCoordinator *)&v15 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = [ASKStorefrontChangeProvider alloc];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __33__ASKRebootstrapCoordinator_init__block_invoke;
    v12 = &unk_27968B5B0;
    objc_copyWeak(&v13, &location);
    v4 = [(ASKStorefrontChangeProvider *)v3 initWithBlock:&v9];
    changeObserver = v2->_changeObserver;
    v2->_changeObserver = v4;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    handlerTokens = v2->_handlerTokens;
    v2->_handlerTokens = weakObjectsHashTable;

    v2->_handlerTokensLock._os_unfair_lock_opaque = 0;
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __33__ASKRebootstrapCoordinator_init__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CEE508] ask_generalLogConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x277CEE508] sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_24E5DD000, v3, OS_LOG_TYPE_DEBUG, "Storefront change detected", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performSelectorOnMainThread:sel_scheduleNotification withObject:0 waitUntilDone:0];
}

- (void)scheduleNotification
{
  v7[1] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_notify object:0];
  if ([(ASKRebootstrapCoordinator *)self delayCount])
  {
    ask_generalLogConfig = [MEMORY[0x277CEE508] ask_generalLogConfig];
    if (!ask_generalLogConfig)
    {
      ask_generalLogConfig = [MEMORY[0x277CEE508] sharedConfig];
    }

    oSLogObject = [ask_generalLogConfig OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(&dword_24E5DD000, oSLogObject, OS_LOG_TYPE_DEBUG, "Deferring storefront change notification", v6, 2u);
    }

    [(ASKRebootstrapCoordinator *)self setHasPendingNotification:1];
  }

  else
  {
    v7[0] = *MEMORY[0x277CBE738];
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    [(ASKRebootstrapCoordinator *)self performSelector:sel_notify withObject:0 afterDelay:v5 inModes:1.0];
  }
}

- (void)notify
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_handlerTokensLock);
  handlerTokens = [(ASKRebootstrapCoordinator *)self handlerTokens];
  allObjects = [handlerTokens allObjects];
  v5 = [allObjects copy];

  os_unfair_lock_unlock(&self->_handlerTokensLock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        handler = [*(*(&v14 + 1) + 8 * v10) handler];
        handler[2]();

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  appBootstrapHandler = [(ASKRebootstrapCoordinator *)self appBootstrapHandler];

  if (appBootstrapHandler)
  {
    appBootstrapHandler2 = [(ASKRebootstrapCoordinator *)self appBootstrapHandler];
    appBootstrapHandler2[2]();
  }
}

- (void)beginDelayingNotifications
{
  v3 = [(ASKRebootstrapCoordinator *)self delayCount]+ 1;

  [(ASKRebootstrapCoordinator *)self setDelayCount:v3];
}

- (void)endDelayingNotifications
{
  if ([(ASKRebootstrapCoordinator *)self delayCount])
  {
    [(ASKRebootstrapCoordinator *)self setDelayCount:[(ASKRebootstrapCoordinator *)self delayCount]- 1];
    if (![(ASKRebootstrapCoordinator *)self delayCount])
    {
      if ([(ASKRebootstrapCoordinator *)self hasPendingNotification])
      {
        ask_generalLogConfig = [MEMORY[0x277CEE508] ask_generalLogConfig];
        if (!ask_generalLogConfig)
        {
          ask_generalLogConfig = [MEMORY[0x277CEE508] sharedConfig];
        }

        oSLogObject = [ask_generalLogConfig OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
        {
          *v5 = 0;
          _os_log_impl(&dword_24E5DD000, oSLogObject, OS_LOG_TYPE_DEBUG, "Flushing deferred storefront change notification", v5, 2u);
        }

        [(ASKRebootstrapCoordinator *)self performSelector:sel_notify withObject:0 afterDelay:0.0];
        [(ASKRebootstrapCoordinator *)self setHasPendingNotification:0];
      }
    }
  }
}

- (id)registerCleanupHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[ASKStorefrontChangeHandlerToken alloc] initWithHandler:handlerCopy];

  os_unfair_lock_lock(&self->_handlerTokensLock);
  handlerTokens = [(ASKRebootstrapCoordinator *)self handlerTokens];
  [handlerTokens addObject:v5];

  os_unfair_lock_unlock(&self->_handlerTokensLock);

  return v5;
}

@end