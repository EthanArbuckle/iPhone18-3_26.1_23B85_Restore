@interface DKResourceMonitor
- (BOOL)canProceedWithResources:(id)resources;
- (BOOL)reserveIfAvailable:(id)available;
- (DKResourceMonitor)init;
- (void)cancelAndResetReservations;
- (void)executeWhenSafe:(id)safe withCompletion:(id)completion;
- (void)proceedWithAllSafeExectuions;
- (void)releaseResources:(id)resources;
- (void)reserveResources:(id)resources;
@end

@implementation DKResourceMonitor

- (DKResourceMonitor)init
{
  v8.receiver = self;
  v8.super_class = DKResourceMonitor;
  v2 = [(DKResourceMonitor *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    resourceUsage = v2->_resourceUsage;
    v2->_resourceUsage = dictionary;

    array = [MEMORY[0x277CBEB18] array];
    executionQueue = v2->_executionQueue;
    v2->_executionQueue = array;

    v2->_isExecutingBlocks = 0;
  }

  return v2;
}

- (BOOL)canProceedWithResources:(id)resources
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  resourcesCopy = resources;
  v5 = [resourcesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(resourcesCopy);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        resourceUsage = [(DKResourceMonitor *)self resourceUsage];
        v11 = [resourceUsage objectForKey:v9];

        if (v11 && ([v11 BOOLValue] & 1) != 0)
        {

          v12 = 0;
          goto LABEL_12;
        }
      }

      v6 = [resourcesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)reserveResources:(id)resources
{
  v18 = *MEMORY[0x277D85DE8];
  resourcesCopy = resources;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [resourcesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(resourcesCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        resourceUsage = [(DKResourceMonitor *)self resourceUsage];
        v11 = [MEMORY[0x277CCABB0] numberWithBool:1];
        [resourceUsage setValue:v11 forKey:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [resourcesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)reserveIfAvailable:(id)available
{
  v12 = *MEMORY[0x277D85DE8];
  availableCopy = available;
  resourceUsage = [(DKResourceMonitor *)self resourceUsage];
  objc_sync_enter(resourceUsage);
  v6 = [(DKResourceMonitor *)self canProceedWithResources:availableCopy];
  if (v6)
  {
    v7 = DiagnosticsKitLogHandleForCategory(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = availableCopy;
      _os_log_impl(&dword_248B9D000, v7, OS_LOG_TYPE_DEFAULT, "Reserving these component resources %@", &v10, 0xCu);
    }

    [(DKResourceMonitor *)self reserveResources:availableCopy];
  }

  objc_sync_exit(resourceUsage);

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)releaseResources:(id)resources
{
  v22 = *MEMORY[0x277D85DE8];
  resourcesCopy = resources;
  resourceUsage = [(DKResourceMonitor *)self resourceUsage];
  objc_sync_enter(resourceUsage);
  v6 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = resourcesCopy;
    _os_log_impl(&dword_248B9D000, v6, OS_LOG_TYPE_DEFAULT, "Releasing these resources: %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = resourcesCopy;
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
        resourceUsage2 = [(DKResourceMonitor *)self resourceUsage];
        v13 = [MEMORY[0x277CCABB0] numberWithBool:0];
        [resourceUsage2 setValue:v13 forKey:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  objc_sync_exit(resourceUsage);
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
    array = [MEMORY[0x277CBEB18] array];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    executionQueue = [(DKResourceMonitor *)self executionQueue];
    v5 = [executionQueue countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v5)
    {
      v6 = *v18;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(executionQueue);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          resources = [v8 resources];
          v10 = [(DKResourceMonitor *)self reserveIfAvailable:resources];

          if (v10)
          {
            v11 = DiagnosticsKitLogHandleForCategory(1);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              resources2 = [v8 resources];
              *buf = 138412290;
              v22 = resources2;
              _os_log_impl(&dword_248B9D000, v11, OS_LOG_TYPE_DEFAULT, "Calling resource reservation callback for %@", buf, 0xCu);
            }

            completion = [v8 completion];
            completion[2](completion, 0);

            [v8 setCompletion:0];
            [array addObject:v8];
          }
        }

        v5 = [executionQueue countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v5);
    }

    executionQueue2 = [(DKResourceMonitor *)self executionQueue];
    [executionQueue2 removeObjectsInArray:array];

    [(DKResourceMonitor *)self setIsExecutingBlocks:0];
  }

  objc_sync_exit(obj);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)executeWhenSafe:(id)safe withCompletion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  safeCopy = safe;
  completionCopy = completion;
  executionQueue = [(DKResourceMonitor *)self executionQueue];
  objc_sync_enter(executionQueue);
  v9 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = safeCopy;
    _os_log_impl(&dword_248B9D000, v9, OS_LOG_TYPE_DEFAULT, "Queue %@ for execution", &v14, 0xCu);
  }

  v10 = objc_opt_new();
  [v10 setResources:safeCopy];
  v11 = [completionCopy copy];
  [v10 setCompletion:v11];

  executionQueue2 = [(DKResourceMonitor *)self executionQueue];
  [executionQueue2 addObject:v10];

  objc_sync_exit(executionQueue);
  [(DKResourceMonitor *)self proceedWithAllSafeExectuions];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)cancelAndResetReservations
{
  v20 = *MEMORY[0x277D85DE8];
  executionQueue = [(DKResourceMonitor *)self executionQueue];
  objc_sync_enter(executionQueue);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  executionQueue2 = [(DKResourceMonitor *)self executionQueue];
  v4 = [executionQueue2 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(executionQueue2);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DKResourceUsageMonitor" code:0 userInfo:0];
        completion = [v7 completion];
        (completion)[2](completion, v8);

        [v7 setCompletion:0];
        ++v6;
      }

      while (v4 != v6);
      v4 = [executionQueue2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  array = [MEMORY[0x277CBEB18] array];
  [(DKResourceMonitor *)self setExecutionQueue:array];

  objc_sync_exit(executionQueue);
  resourceUsage = [(DKResourceMonitor *)self resourceUsage];
  objc_sync_enter(resourceUsage);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(DKResourceMonitor *)self setResourceUsage:dictionary];

  objc_sync_exit(resourceUsage);
  v13 = *MEMORY[0x277D85DE8];
}

@end