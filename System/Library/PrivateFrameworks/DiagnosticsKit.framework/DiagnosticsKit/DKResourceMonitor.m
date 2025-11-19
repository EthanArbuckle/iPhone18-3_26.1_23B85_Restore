@interface DKResourceMonitor
- (BOOL)canProceedWithResources:(id)a3;
- (BOOL)reserveIfAvailable:(id)a3;
- (DKResourceMonitor)init;
- (void)cancelAndResetReservations;
- (void)executeWhenSafe:(id)a3 withCompletion:(id)a4;
- (void)proceedWithAllSafeExectuions;
- (void)releaseResources:(id)a3;
- (void)reserveResources:(id)a3;
@end

@implementation DKResourceMonitor

- (DKResourceMonitor)init
{
  v8.receiver = self;
  v8.super_class = DKResourceMonitor;
  v2 = [(DKResourceMonitor *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    resourceUsage = v2->_resourceUsage;
    v2->_resourceUsage = v3;

    v5 = [MEMORY[0x277CBEB18] array];
    executionQueue = v2->_executionQueue;
    v2->_executionQueue = v5;

    v2->_isExecutingBlocks = 0;
  }

  return v2;
}

- (BOOL)canProceedWithResources:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(DKResourceMonitor *)self resourceUsage];
        v11 = [v10 objectForKey:v9];

        if (v11 && ([v11 BOOLValue] & 1) != 0)
        {

          v12 = 0;
          goto LABEL_12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_12:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)reserveResources:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [(DKResourceMonitor *)self resourceUsage];
        v11 = [MEMORY[0x277CCABB0] numberWithBool:1];
        [v10 setValue:v11 forKey:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)reserveIfAvailable:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DKResourceMonitor *)self resourceUsage];
  objc_sync_enter(v5);
  v6 = [(DKResourceMonitor *)self canProceedWithResources:v4];
  if (v6)
  {
    v7 = DiagnosticsKitLogHandleForCategory(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_248B9D000, v7, OS_LOG_TYPE_DEFAULT, "Reserving these component resources %@", &v10, 0xCu);
    }

    [(DKResourceMonitor *)self reserveResources:v4];
  }

  objc_sync_exit(v5);

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)releaseResources:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DKResourceMonitor *)self resourceUsage];
  objc_sync_enter(v5);
  v6 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v4;
    _os_log_impl(&dword_248B9D000, v6, OS_LOG_TYPE_DEFAULT, "Releasing these resources: %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = [(DKResourceMonitor *)self resourceUsage];
        v13 = [MEMORY[0x277CCABB0] numberWithBool:0];
        [v12 setValue:v13 forKey:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  objc_sync_exit(v5);
  [(DKResourceMonitor *)self proceedWithAllSafeExectuions];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)proceedWithAllSafeExectuions
{
  v24 = *MEMORY[0x277D85DE8];
  obj = [(DKResourceMonitor *)self executionQueue];
  objc_sync_enter(obj);
  if (![(DKResourceMonitor *)self isExecutingBlocks])
  {
    [(DKResourceMonitor *)self setIsExecutingBlocks:1];
    v3 = [MEMORY[0x277CBEB18] array];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = [(DKResourceMonitor *)self executionQueue];
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v5)
    {
      v6 = *v18;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          v9 = [v8 resources];
          v10 = [(DKResourceMonitor *)self reserveIfAvailable:v9];

          if (v10)
          {
            v11 = DiagnosticsKitLogHandleForCategory(1);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = [v8 resources];
              *buf = 138412290;
              v22 = v12;
              _os_log_impl(&dword_248B9D000, v11, OS_LOG_TYPE_DEFAULT, "Calling resource reservation callback for %@", buf, 0xCu);
            }

            v13 = [v8 completion];
            v13[2](v13, 0);

            [v8 setCompletion:0];
            [v3 addObject:v8];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v5);
    }

    v14 = [(DKResourceMonitor *)self executionQueue];
    [v14 removeObjectsInArray:v3];

    [(DKResourceMonitor *)self setIsExecutingBlocks:0];
  }

  objc_sync_exit(obj);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)executeWhenSafe:(id)a3 withCompletion:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(DKResourceMonitor *)self executionQueue];
  objc_sync_enter(v8);
  v9 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v6;
    _os_log_impl(&dword_248B9D000, v9, OS_LOG_TYPE_DEFAULT, "Queue %@ for execution", &v14, 0xCu);
  }

  v10 = objc_opt_new();
  [v10 setResources:v6];
  v11 = [v7 copy];
  [v10 setCompletion:v11];

  v12 = [(DKResourceMonitor *)self executionQueue];
  [v12 addObject:v10];

  objc_sync_exit(v8);
  [(DKResourceMonitor *)self proceedWithAllSafeExectuions];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)cancelAndResetReservations
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [(DKResourceMonitor *)self executionQueue];
  objc_sync_enter(v2);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(DKResourceMonitor *)self executionQueue];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DKResourceUsageMonitor" code:0 userInfo:0];
        v9 = [v7 completion];
        (v9)[2](v9, v8);

        [v7 setCompletion:0];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v10 = [MEMORY[0x277CBEB18] array];
  [(DKResourceMonitor *)self setExecutionQueue:v10];

  objc_sync_exit(v2);
  v11 = [(DKResourceMonitor *)self resourceUsage];
  objc_sync_enter(v11);
  v12 = [MEMORY[0x277CBEB38] dictionary];
  [(DKResourceMonitor *)self setResourceUsage:v12];

  objc_sync_exit(v11);
  v13 = *MEMORY[0x277D85DE8];
}

@end