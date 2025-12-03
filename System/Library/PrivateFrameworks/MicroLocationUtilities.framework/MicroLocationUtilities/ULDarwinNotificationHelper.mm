@interface ULDarwinNotificationHelper
- (ULDarwinNotificationHelper)init;
- (unint64_t)stateForNotificationName:(id)name;
- (void)_handleDarwinNotificationCallback:(id)callback;
- (void)addObserverForNotificationName:(id)name handler:(id)handler;
- (void)dealloc;
- (void)removeObserverForNotificationName:(id)name;
@end

@implementation ULDarwinNotificationHelper

- (ULDarwinNotificationHelper)init
{
  v7.receiver = self;
  v7.super_class = ULDarwinNotificationHelper;
  v2 = [(ULDarwinNotificationHelper *)&v7 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(ULDarwinNotificationHelper *)v2 setRegistrations:dictionary];

    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.milod.ULDarwinNotificationHelper", v4);
    [(ULDarwinNotificationHelper *)v2 setQueue:v5];
  }

  return v2;
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  registrations = [(ULDarwinNotificationHelper *)self registrations];
  allValues = [registrations allValues];

  v5 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        notificationName = [*(*(&v12 + 1) + 8 * v8) notificationName];
        [(ULDarwinNotificationHelper *)self removeObserverForNotificationName:notificationName];

        ++v8;
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11.receiver = self;
  v11.super_class = ULDarwinNotificationHelper;
  [(ULDarwinNotificationHelper *)&v11 dealloc];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)addObserverForNotificationName:(id)name handler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  queue = [(ULDarwinNotificationHelper *)self queue];
  dispatch_assert_queue_not_V2(queue);

  queue2 = [(ULDarwinNotificationHelper *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__ULDarwinNotificationHelper_addObserverForNotificationName_handler___block_invoke;
  block[3] = &unk_2798DA4E0;
  block[4] = self;
  v13 = nameCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = nameCopy;
  dispatch_sync(queue2, block);
}

void __69__ULDarwinNotificationHelper_addObserverForNotificationName_handler___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) registrations];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __69__ULDarwinNotificationHelper_addObserverForNotificationName_handler___block_invoke_cold_1();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
    {
      v5 = *(a1 + 40);
      *buf = 138412290;
      v33 = v5;
      _os_log_impl(&dword_2592C5000, v4, OS_LOG_TYPE_FAULT, "Registration already exists for notification name: %@, returning", buf, 0xCu);
    }
  }

  else
  {
    out_token = -1;
    objc_initWeak(&location, *(a1 + 32));
    v6 = [*(a1 + 40) UTF8String];
    v7 = [*(a1 + 32) queue];
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __69__ULDarwinNotificationHelper_addObserverForNotificationName_handler___block_invoke_30;
    v27 = &unk_2798DA4B8;
    objc_copyWeak(&v29, &location);
    v28 = *(a1 + 40);
    v8 = notify_register_dispatch(v6, &out_token, v7, &v24);

    if (v8 || out_token == -1)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        __69__ULDarwinNotificationHelper_addObserverForNotificationName_handler___block_invoke_cold_2();
      }

      v12 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 40);
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{v8, v24, v25, v26, v27}];
        v22 = [MEMORY[0x277CCABB0] numberWithInt:out_token];
        *buf = 138412802;
        v33 = v20;
        v34 = 2112;
        v35 = v21;
        v36 = 2112;
        v37 = v22;
        _os_log_impl(&dword_2592C5000, v12, OS_LOG_TYPE_ERROR, "Failed to register for darwin notification: %@, status: %@, registration token: %@", buf, 0x20u);
      }
    }

    else
    {
      v9 = [ULDarwinNotificationRecord alloc];
      v10 = *(a1 + 40);
      v11 = [MEMORY[0x277CCABB0] numberWithInt:{out_token, v24, v25, v26, v27}];
      v12 = [(ULDarwinNotificationRecord *)v9 initWithNotificationName:v10 registrationToken:v11 handler:*(a1 + 48)];

      if (v12)
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          __69__ULDarwinNotificationHelper_addObserverForNotificationName_handler___block_invoke_cold_2();
        }

        v13 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v12 notificationName];
          v15 = [v12 registrationToken];
          v16 = [v12 registrationToken];
          is_valid_token = notify_is_valid_token([v16 intValue]);
          v18 = @"NO";
          *buf = 138412802;
          v33 = v14;
          v34 = 2112;
          if (is_valid_token)
          {
            v18 = @"YES";
          }

          v35 = v15;
          v36 = 2112;
          v37 = v18;
          _os_log_impl(&dword_2592C5000, v13, OS_LOG_TYPE_DEFAULT, "Added registration for for notification name: %@, token: %@, valid: %@", buf, 0x20u);
        }

        v19 = [*(a1 + 32) registrations];
        [v19 setObject:v12 forKeyedSubscript:*(a1 + 40)];
      }
    }

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __69__ULDarwinNotificationHelper_addObserverForNotificationName_handler___block_invoke_30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _handleDarwinNotificationCallback:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)removeObserverForNotificationName:(id)name
{
  nameCopy = name;
  queue = [(ULDarwinNotificationHelper *)self queue];
  dispatch_assert_queue_not_V2(queue);

  queue2 = [(ULDarwinNotificationHelper *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__ULDarwinNotificationHelper_removeObserverForNotificationName___block_invoke;
  v8[3] = &unk_2798DA508;
  v8[4] = self;
  v9 = nameCopy;
  v7 = nameCopy;
  dispatch_sync(queue2, v8);
}

void __64__ULDarwinNotificationHelper_removeObserverForNotificationName___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) registrations];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = [v3 registrationToken];
    v5 = [v4 intValue];

    v6 = notify_cancel(v5);
    if (v6)
    {
      v7 = v6;
      if (onceToken_MicroLocation_Default != -1)
      {
        __69__ULDarwinNotificationHelper_addObserverForNotificationName_handler___block_invoke_cold_1();
      }

      v8 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        v9 = v8;
        v10 = [v3 notificationName];
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
        v18 = 138412546;
        v19 = v10;
        v20 = 2112;
        v21 = v11;
        _os_log_impl(&dword_2592C5000, v9, OS_LOG_TYPE_ERROR, "Failed to cancel registration for darwin notification: %@, status: %@", &v18, 0x16u);
      }
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        __69__ULDarwinNotificationHelper_addObserverForNotificationName_handler___block_invoke_cold_1();
      }

      v14 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 40);
        v18 = 138412290;
        v19 = v15;
        _os_log_impl(&dword_2592C5000, v14, OS_LOG_TYPE_DEFAULT, "removing registration for for notification name: %@", &v18, 0xCu);
      }

      v16 = [*(a1 + 32) registrations];
      [v16 removeObjectForKey:*(a1 + 40)];
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __69__ULDarwinNotificationHelper_addObserverForNotificationName_handler___block_invoke_cold_1();
    }

    v12 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      v18 = 138412290;
      v19 = v13;
      _os_log_impl(&dword_2592C5000, v12, OS_LOG_TYPE_ERROR, "Registration doesn't exist for notification: %@, returning", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (unint64_t)stateForNotificationName:(id)name
{
  nameCopy = name;
  queue = [(ULDarwinNotificationHelper *)self queue];
  dispatch_assert_queue_not_V2(queue);

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  queue2 = [(ULDarwinNotificationHelper *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ULDarwinNotificationHelper_stateForNotificationName___block_invoke;
  block[3] = &unk_2798DA530;
  block[4] = self;
  v11 = nameCopy;
  v12 = &v13;
  v7 = nameCopy;
  dispatch_sync(queue2, block);

  v8 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v8;
}

void __55__ULDarwinNotificationHelper_stateForNotificationName___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) registrations];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) registrations];
    v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];
    v6 = [v5 registrationToken];
    v7 = [v6 intValue];

    if (notify_get_state(v7, (*(*(a1 + 48) + 8) + 24)))
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        __69__ULDarwinNotificationHelper_addObserverForNotificationName_handler___block_invoke_cold_1();
      }

      v8 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 40);
        v11 = 138412290;
        v12 = v9;
        _os_log_impl(&dword_2592C5000, v8, OS_LOG_TYPE_ERROR, "Could not get state for: %@", &v11, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleDarwinNotificationCallback:(id)callback
{
  v15 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  queue = [(ULDarwinNotificationHelper *)self queue];
  dispatch_assert_queue_V2(queue);

  if (onceToken_MicroLocation_Default != -1)
  {
    __69__ULDarwinNotificationHelper_addObserverForNotificationName_handler___block_invoke_cold_1();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    v14 = callbackCopy;
    _os_log_impl(&dword_2592C5000, v6, OS_LOG_TYPE_DEBUG, "Darwin notification received: %@", &v13, 0xCu);
  }

  registrations = [(ULDarwinNotificationHelper *)self registrations];
  v8 = [registrations objectForKeyedSubscript:callbackCopy];

  if (v8)
  {
    handler = [v8 handler];
    v10 = handler;
    if (handler)
    {
      (*(handler + 16))(handler);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __69__ULDarwinNotificationHelper_addObserverForNotificationName_handler___block_invoke_cold_2();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_2592C5000, v11, OS_LOG_TYPE_ERROR, "Failed call darwin notification handler, record nil", &v13, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end