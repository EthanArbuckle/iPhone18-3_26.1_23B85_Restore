@interface FMXPCNotificationsUtil
+ (id)sharedInstance;
+ (void)handleDarwinNotificationsWithHandlers:(id)handlers;
+ (void)handleDistributedNotificationsWithHandlers:(id)handlers;
- (BOOL)isHandlerRegisteredForDarwinNotification:(id)notification;
- (BOOL)isHandlerRegisteredForDistributedNotification:(id)notification;
- (FMXPCNotificationsUtil)init;
- (void)_didReceiveDarwinNotification:(id)notification;
- (void)_didReceiveDistributedNotification:(id)notification withContext:(id)context;
- (void)deregisterHandlerForDarwinNotification:(id)notification;
- (void)deregisterHandlerForDistributedNotification:(id)notification;
- (void)registerHandler:(id)handler forDarwinNotification:(id)notification;
- (void)registerHandler:(id)handler forDistributedNotification:(id)notification;
@end

@implementation FMXPCNotificationsUtil

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[FMXPCNotificationsUtil sharedInstance];
  }

  v3 = sharedInstance__instance;

  return v3;
}

uint64_t __40__FMXPCNotificationsUtil_sharedInstance__block_invoke()
{
  sharedInstance__instance = objc_alloc_init(FMXPCNotificationsUtil);

  return MEMORY[0x2821F96F8]();
}

+ (void)handleDarwinNotificationsWithHandlers:(id)handlers
{
  [handlers enumerateKeysAndObjectsUsingBlock:&__block_literal_global_3];
  v3 = MEMORY[0x277D85CD0];

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v3, &__block_literal_global_9);
}

void __64__FMXPCNotificationsUtil_handleDarwinNotificationsWithHandlers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = +[FMXPCNotificationsUtil sharedInstance];
        [v13 registerHandler:v5 forDarwinNotification:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __64__FMXPCNotificationsUtil_handleDarwinNotificationsWithHandlers___block_invoke_2(int a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, *MEMORY[0x277D86430]);
  v4 = +[FMXPCNotificationsUtil sharedInstance];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
  [v4 _didReceiveDarwinNotification:v3];
}

+ (void)handleDistributedNotificationsWithHandlers:(id)handlers
{
  [handlers enumerateKeysAndObjectsUsingBlock:&__block_literal_global_12];
  v3 = MEMORY[0x277D85CD0];

  xpc_set_event_stream_handler("com.apple.distnoted.matching", v3, &__block_literal_global_15);
}

void __69__FMXPCNotificationsUtil_handleDistributedNotificationsWithHandlers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = +[FMXPCNotificationsUtil sharedInstance];
        [v13 registerHandler:v5 forDistributedNotification:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __69__FMXPCNotificationsUtil_handleDistributedNotificationsWithHandlers___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x277D86430];
  v3 = a2;
  string = xpc_dictionary_get_string(v3, v2);
  v6 = +[FMXPCNotificationsUtil sharedInstance];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
  [v6 _didReceiveDistributedNotification:v5 withContext:v3];
}

- (FMXPCNotificationsUtil)init
{
  v10.receiver = self;
  v10.super_class = FMXPCNotificationsUtil;
  v2 = [(FMXPCNotificationsUtil *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    darwinNotificationHandlers = v2->_darwinNotificationHandlers;
    v2->_darwinNotificationHandlers = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    distributedNotificationHandlers = v2->_distributedNotificationHandlers;
    v2->_distributedNotificationHandlers = v5;

    v7 = dispatch_queue_create("com.apple.icloud.FindMyDevice.xpcNotificationsModQueue", 0);
    modificationQueue = v2->_modificationQueue;
    v2->_modificationQueue = v7;
  }

  return v2;
}

- (BOOL)isHandlerRegisteredForDarwinNotification:(id)notification
{
  notificationCopy = notification;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  modificationQueue = [(FMXPCNotificationsUtil *)self modificationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__FMXPCNotificationsUtil_isHandlerRegisteredForDarwinNotification___block_invoke;
  block[3] = &unk_278FD9B28;
  v9 = notificationCopy;
  v10 = &v11;
  block[4] = self;
  v6 = notificationCopy;
  dispatch_sync(modificationQueue, block);

  LOBYTE(notificationCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return notificationCopy;
}

void __67__FMXPCNotificationsUtil_isHandlerRegisteredForDarwinNotification___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) darwinNotificationHandlers];
  v2 = [v3 objectForKeyedSubscript:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = v2 != 0;
}

- (void)registerHandler:(id)handler forDarwinNotification:(id)notification
{
  handlerCopy = handler;
  notificationCopy = notification;
  objc_initWeak(&location, self);
  modificationQueue = [(FMXPCNotificationsUtil *)self modificationQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__FMXPCNotificationsUtil_registerHandler_forDarwinNotification___block_invoke;
  v11[3] = &unk_278FD98C0;
  objc_copyWeak(&v14, &location);
  v12 = notificationCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = notificationCopy;
  dispatch_async(modificationQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __64__FMXPCNotificationsUtil_registerHandler_forDarwinNotification___block_invoke(id *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained darwinNotificationHandlers];
  v4 = [v3 objectForKeyedSubscript:a1[4]];

  if (v4)
  {
    v5 = LogCategory_Unspecified();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = a1[4];
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_24A2EE000, v5, OS_LOG_TYPE_INFO, "Trying to register a duplicate handler for notification %@", &v10, 0xCu);
    }
  }

  else
  {
    v7 = [a1[5] copy];
    v8 = [WeakRetained darwinNotificationHandlers];
    [v8 setObject:v7 forKeyedSubscript:a1[4]];

    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v5, "Notification", [a1[4] cStringUsingEncoding:4]);
    [a1[4] cStringUsingEncoding:4];
    xpc_set_event();
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)deregisterHandlerForDarwinNotification:(id)notification
{
  notificationCopy = notification;
  objc_initWeak(&location, self);
  modificationQueue = [(FMXPCNotificationsUtil *)self modificationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__FMXPCNotificationsUtil_deregisterHandlerForDarwinNotification___block_invoke;
  block[3] = &unk_278FD9B50;
  objc_copyWeak(&v9, &location);
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(modificationQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __65__FMXPCNotificationsUtil_deregisterHandlerForDarwinNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained darwinNotificationHandlers];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 32)];

  if (v3)
  {
    v4 = [WeakRetained darwinNotificationHandlers];
    [v4 removeObjectForKey:*(a1 + 32)];
  }

  [*(a1 + 32) cStringUsingEncoding:4];
  xpc_set_event();
}

- (BOOL)isHandlerRegisteredForDistributedNotification:(id)notification
{
  notificationCopy = notification;
  distributedNotificationHandlers = [(FMXPCNotificationsUtil *)self distributedNotificationHandlers];
  v6 = [distributedNotificationHandlers objectForKeyedSubscript:notificationCopy];

  return v6 != 0;
}

- (void)registerHandler:(id)handler forDistributedNotification:(id)notification
{
  handlerCopy = handler;
  notificationCopy = notification;
  objc_initWeak(&location, self);
  modificationQueue = [(FMXPCNotificationsUtil *)self modificationQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__FMXPCNotificationsUtil_registerHandler_forDistributedNotification___block_invoke;
  v11[3] = &unk_278FD98C0;
  objc_copyWeak(&v14, &location);
  v12 = notificationCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = notificationCopy;
  dispatch_async(modificationQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __69__FMXPCNotificationsUtil_registerHandler_forDistributedNotification___block_invoke(id *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained distributedNotificationHandlers];
  v4 = [v3 objectForKeyedSubscript:a1[4]];

  if (v4)
  {
    v5 = LogCategory_Unspecified();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = a1[4];
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_24A2EE000, v5, OS_LOG_TYPE_INFO, "Trying to register a duplicate handler for notification %@", &v10, 0xCu);
    }
  }

  else
  {
    v7 = [a1[5] copy];
    v8 = [WeakRetained distributedNotificationHandlers];
    [v8 setObject:v7 forKeyedSubscript:a1[4]];

    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v5, "Name", [a1[4] cStringUsingEncoding:4]);
    [a1[4] cStringUsingEncoding:4];
    xpc_set_event();
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)deregisterHandlerForDistributedNotification:(id)notification
{
  notificationCopy = notification;
  objc_initWeak(&location, self);
  modificationQueue = [(FMXPCNotificationsUtil *)self modificationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__FMXPCNotificationsUtil_deregisterHandlerForDistributedNotification___block_invoke;
  block[3] = &unk_278FD9B50;
  objc_copyWeak(&v9, &location);
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(modificationQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __70__FMXPCNotificationsUtil_deregisterHandlerForDistributedNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained distributedNotificationHandlers];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 32)];

  if (v3)
  {
    v4 = [WeakRetained distributedNotificationHandlers];
    [v4 removeObjectForKey:*(a1 + 32)];
  }

  [*(a1 + 32) cStringUsingEncoding:4];
  xpc_set_event();
}

- (void)_didReceiveDarwinNotification:(id)notification
{
  notificationCopy = notification;
  objc_initWeak(&location, self);
  modificationQueue = [(FMXPCNotificationsUtil *)self modificationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__FMXPCNotificationsUtil__didReceiveDarwinNotification___block_invoke;
  block[3] = &unk_278FD9B50;
  objc_copyWeak(&v9, &location);
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(modificationQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __56__FMXPCNotificationsUtil__didReceiveDarwinNotification___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained darwinNotificationHandlers];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];

  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__FMXPCNotificationsUtil__didReceiveDarwinNotification___block_invoke_2;
    block[3] = &unk_278FD9B78;
    v10 = v4;
    dispatch_async(v5, block);

    v6 = v10;
  }

  else
  {
    v6 = LogCategory_Unspecified();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&dword_24A2EE000, v6, OS_LOG_TYPE_INFO, "Received darwin notification %@ but no handler found", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_didReceiveDistributedNotification:(id)notification withContext:(id)context
{
  notificationCopy = notification;
  contextCopy = context;
  objc_initWeak(&location, self);
  modificationQueue = [(FMXPCNotificationsUtil *)self modificationQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__FMXPCNotificationsUtil__didReceiveDistributedNotification_withContext___block_invoke;
  v11[3] = &unk_278FD9BA0;
  objc_copyWeak(&v14, &location);
  v12 = notificationCopy;
  v13 = contextCopy;
  v9 = contextCopy;
  v10 = notificationCopy;
  dispatch_async(modificationQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __73__FMXPCNotificationsUtil__didReceiveDistributedNotification_withContext___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained distributedNotificationHandlers];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];

  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __73__FMXPCNotificationsUtil__didReceiveDistributedNotification_withContext___block_invoke_2;
    v9[3] = &unk_278FD97D0;
    v11 = v4;
    v10 = *(a1 + 40);
    dispatch_async(v5, v9);

    v6 = v11;
  }

  else
  {
    v6 = LogCategory_Unspecified();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&dword_24A2EE000, v6, OS_LOG_TYPE_INFO, "Received distributed notification %@ but no handler found", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end