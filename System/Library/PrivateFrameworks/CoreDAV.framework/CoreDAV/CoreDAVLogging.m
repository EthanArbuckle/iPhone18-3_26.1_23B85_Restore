@interface CoreDAVLogging
+ (id)sharedLogging;
- (BOOL)_shouldOutputAtLevel:(int64_t)a3 forAccountInfoProvider:(id)a4;
- (BOOL)shouldLogAtLevel:(int64_t)a3 forAccountInfoProvider:(id)a4;
- (CoreDAVLogging)init;
- (id)_delegatesToLogForProvider:(id)a3;
- (id)delegatesToLogTransmittedDataForAccountInfoProvider:(id)a3;
- (id)logHandleForAccountInfoProvider:(id)a3;
- (void)addLogDelegate:(id)a3 forAccountInfoProvider:(id)a4;
- (void)logDiagnosticForProvider:(id)a3 withLevel:(int64_t)a4 format:(id)a5 args:(char *)a6;
- (void)removeLogDelegate:(id)a3 forAccountInfoProvider:(id)a4;
@end

@implementation CoreDAVLogging

+ (id)sharedLogging
{
  if (sharedLogging_onceToken != -1)
  {
    +[CoreDAVLogging sharedLogging];
  }

  v3 = sharedLogging___sharedLogging;

  return v3;
}

uint64_t __31__CoreDAVLogging_sharedLogging__block_invoke()
{
  v0 = objc_alloc_init(CoreDAVLogging);
  v1 = sharedLogging___sharedLogging;
  sharedLogging___sharedLogging = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (CoreDAVLogging)init
{
  v10.receiver = self;
  v10.super_class = CoreDAVLogging;
  v2 = [(CoreDAVLogging *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    logDelegates = v2->_logDelegates;
    v2->_logDelegates = v3;

    v5 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    primaryLogDelegate = v2->_primaryLogDelegate;
    v2->_primaryLogDelegate = v5;

    v7 = dispatch_queue_create("com.apple.coredav.logdelegate", 0);
    delegateMuckingQueue = v2->_delegateMuckingQueue;
    v2->_delegateMuckingQueue = v7;
  }

  return v2;
}

- (void)addLogDelegate:(id)a3 forAccountInfoProvider:(id)a4
{
  v6 = a3;
  v7 = [a4 accountID];
  v8 = v7;
  v9 = @"GenericDelegate";
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  if ((objc_opt_respondsToSelector() & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [CoreDAVLogging addLogDelegate:forAccountInfoProvider:];
  }

  delegateMuckingQueue = self->_delegateMuckingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__CoreDAVLogging_addLogDelegate_forAccountInfoProvider___block_invoke;
  block[3] = &unk_278E30FB8;
  block[4] = self;
  v15 = v10;
  v16 = v6;
  v12 = v6;
  v13 = v10;
  dispatch_sync(delegateMuckingQueue, block);
}

void __56__CoreDAVLogging_addLogDelegate_forAccountInfoProvider___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  if (!v2)
  {
    v5 = [MEMORY[0x277CCAA50] hashTableWithOptions:5];
    [*(a1[4] + 8) setObject:v5 forKeyedSubscript:a1[5]];
    v2 = v5;
  }

  v6 = v2;
  [v2 addObject:a1[6]];
  v3 = [*(a1[4] + 16) objectForKey:a1[5]];
  if (v3)
  {
  }

  else
  {
    v4 = a1[6];
    if (objc_opt_respondsToSelector())
    {
      [*(a1[4] + 16) setObject:a1[6] forKey:a1[5]];
    }
  }
}

- (void)removeLogDelegate:(id)a3 forAccountInfoProvider:(id)a4
{
  v6 = a3;
  v7 = [a4 accountID];
  v8 = v7;
  v9 = @"GenericDelegate";
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  delegateMuckingQueue = self->_delegateMuckingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CoreDAVLogging_removeLogDelegate_forAccountInfoProvider___block_invoke;
  block[3] = &unk_278E30FB8;
  block[4] = self;
  v15 = v10;
  v16 = v6;
  v12 = v6;
  v13 = v10;
  dispatch_sync(delegateMuckingQueue, block);
}

void __59__CoreDAVLogging_removeLogDelegate_forAccountInfoProvider___block_invoke(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v3 = v2;
  if (v2)
  {
    [v2 removeObject:a1[6]];
    if (![v3 count])
    {
      [*(a1[4] + 8) removeObjectForKey:a1[5]];
    }
  }

  v4 = [*(a1[4] + 16) objectForKey:a1[5]];
  v5 = a1[6];

  if (v4 == v5)
  {
    [*(a1[4] + 16) removeObjectForKey:a1[5]];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [*(a1[4] + 16) setObject:v11 forKey:{a1[5], v13}];
            goto LABEL_15;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_delegatesToLogForProvider:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  delegateMuckingQueue = self->_delegateMuckingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__CoreDAVLogging__delegatesToLogForProvider___block_invoke;
  block[3] = &unk_278E31090;
  v11 = self;
  v12 = &v13;
  v10 = v4;
  v6 = v4;
  dispatch_sync(delegateMuckingQueue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __45__CoreDAVLogging__delegatesToLogForProvider___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(v3 + 8);
  if (v2)
  {
    v5 = [v2 accountID];
    v6 = [v4 objectForKeyedSubscript:v5];
    v7 = [v6 setRepresentation];
    v8 = a1 + 6;
    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v7;

    if ([*(*(a1[6] + 8) + 40) count])
    {
      return;
    }

    v14 = [*(a1[5] + 8) objectForKeyedSubscript:@"GenericDelegate"];
    v11 = [v14 setRepresentation];
  }

  else
  {
    v14 = [*(v3 + 8) objectForKeyedSubscript:@"GenericDelegate"];
    v11 = [v14 setRepresentation];
    v8 = a1 + 6;
  }

  v12 = *(*v8 + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

- (BOOL)shouldLogAtLevel:(int64_t)a3 forAccountInfoProvider:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  [(CoreDAVLogging *)self _delegatesToLogForProvider:a4];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) != 0 && [v10 coreDAVLogLevel] >= a3)
        {
          v11 = 1;
          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_12:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)_shouldOutputAtLevel:(int64_t)a3 forAccountInfoProvider:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  [(CoreDAVLogging *)self _delegatesToLogForProvider:a4];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) != 0 && [v10 coreDAVOutputLevel] >= a3)
        {
          v11 = 1;
          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_12:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)delegatesToLogTransmittedDataForAccountInfoProvider:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  delegateMuckingQueue = self->_delegateMuckingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__CoreDAVLogging_delegatesToLogTransmittedDataForAccountInfoProvider___block_invoke;
  block[3] = &unk_278E31090;
  v11 = self;
  v12 = &v13;
  v10 = v4;
  v6 = v4;
  dispatch_sync(delegateMuckingQueue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __70__CoreDAVLogging_delegatesToLogTransmittedDataForAccountInfoProvider___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accountID];
  v3 = *(*(a1 + 40) + 8);
  v11 = v2;
  if (v2)
  {
    v4 = [*(a1 + 32) accountID];
    v5 = [v3 objectForKeyedSubscript:v4];
    v6 = [v5 setRepresentation];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v4 = [v3 objectForKeyedSubscript:@"GenericDelegate"];
    v9 = [v4 setRepresentation];
    v10 = *(*(a1 + 48) + 8);
    v5 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

- (id)logHandleForAccountInfoProvider:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v5 = [v4 accountID];
  v6 = v5;
  v7 = @"GenericDelegate";
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  delegateMuckingQueue = self->_delegateMuckingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__CoreDAVLogging_logHandleForAccountInfoProvider___block_invoke;
  block[3] = &unk_278E310B8;
  v15 = &v16;
  block[4] = self;
  v10 = v8;
  v14 = v10;
  dispatch_sync(delegateMuckingQueue, block);
  v11 = [v17[5] logHandle];

  _Block_object_dispose(&v16, 8);

  return v11;
}

void __50__CoreDAVLogging_logHandleForAccountInfoProvider___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(*(a1[6] + 8) + 40) logHandle];

  if (!v5)
  {
    v6 = [*(a1[4] + 16) objectForKey:@"GenericDelegate"];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    MEMORY[0x2821F96F8](v6, v8);
  }
}

- (void)logDiagnosticForProvider:(id)a3 withLevel:(int64_t)a4 format:(id)a5 args:(char *)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = [(CoreDAVLogging *)self shouldLogAtLevel:a4 forAccountInfoProvider:v10];
  v13 = [(CoreDAVLogging *)self _shouldOutputAtLevel:a4 forAccountInfoProvider:v10];
  v14 = v13;
  if (v12 || v13)
  {
    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v11 arguments:a6];
    v16 = v15;
    if (v14)
    {
      NSLog(&stru_28583E588.isa, v15);
    }

    if (v12)
    {
      v26 = v11;
      v27 = v10;
      v17 = [(CoreDAVLogging *)self _delegatesToLogForProvider:v10];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v18 = [v17 countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v29;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v29 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v28 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v22 coreDAVLogDiagnosticMessage:v16 atLevel:a4];
            }

            else if (objc_opt_respondsToSelector())
            {
              v23 = [v22 logHandle];
              v24 = oldLevelToOSLogLevel[a4];
              if (os_log_type_enabled(v23, v24))
              {
                *buf = 138412290;
                v33 = v16;
                _os_log_impl(&dword_2452FB000, v23, v24, "%@", buf, 0xCu);
              }
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v28 objects:v34 count:16];
        }

        while (v19);
      }

      v11 = v26;
      v10 = v27;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)addLogDelegate:forAccountInfoProvider:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v3 = 138543362;
  v4 = v1;
  _os_log_error_impl(&dword_2452FB000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Added a logging delegate (type %{public}@) that doesn't implement -logHandle. This will degrade performance and result in completely useless, entirely redacted logs. Please migrate to os_log.", &v3, 0xCu);

  v2 = *MEMORY[0x277D85DE8];
}

@end