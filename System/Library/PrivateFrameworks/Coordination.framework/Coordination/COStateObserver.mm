@interface COStateObserver
- (COStateObserver)initWithDispatchQueue:(id)queue predicate:(id)predicate block:(id)block;
- (id)description;
- (void)notify:(id)notify;
@end

@implementation COStateObserver

- (COStateObserver)initWithDispatchQueue:(id)queue predicate:(id)predicate block:(id)block
{
  queueCopy = queue;
  predicateCopy = predicate;
  blockCopy = block;
  v19.receiver = self;
  v19.super_class = COStateObserver;
  v12 = [(COStateObserver *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dispatchQueue, queue);
    v14 = MEMORY[0x245D5F6A0](blockCopy);
    block = v13->_block;
    v13->_block = v14;

    objc_storeStrong(&v13->_predicate, predicate);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    lastChanges = v13->_lastChanges;
    v13->_lastChanges = dictionary;
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  predicate = [(COStateObserver *)self predicate];
  v5 = [v3 stringWithFormat:@"<COStateObserver: %p Predicate: %@>", self, predicate];

  return v5;
}

- (void)notify:(id)notify
{
  notifyCopy = notify;
  objc_initWeak(&location, self);
  dispatchQueue = [(COStateObserver *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__COStateObserver_notify___block_invoke;
  block[3] = &unk_278E12878;
  objc_copyWeak(&v9, &location);
  v8 = notifyCopy;
  v6 = notifyCopy;
  dispatch_async(dispatchQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __26__COStateObserver_notify___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v39 = [MEMORY[0x277CBEB58] set];
    v4 = [*(a1 + 32) objectForKeyedSubscript:@"COStateManagerChangesCluster"];
    v5 = [*(a1 + 32) objectForKeyedSubscript:@"COStateManagerChangesUpdatedKeyPaths"];
    v36 = [*(a1 + 32) objectForKeyedSubscript:@"COStateManagerChangesRemovedKeyPaths"];
    v6 = COLogForCategory(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __26__COStateObserver_notify___block_invoke_cold_1();
    }

    v38 = v4;

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v44 objects:v57 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v45;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v45 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v44 + 1) + 8 * i);
          v13 = [WeakRetained predicate];
          v14 = [v12 absoluteString];
          v15 = [v13 evaluateWithObject:v14];

          if (v15)
          {
            v16 = [WeakRetained[4] objectForKeyedSubscript:v38];
            v17 = [v16 objectForKey:v12];

            v18 = [v7 objectForKeyedSubscript:v12];
            if (([v17 isEqual:v18] & 1) == 0)
            {
              [v3 setObject:v18 forKey:v12];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v44 objects:v57 count:16];
      }

      while (v9);
    }

    v37 = v3;

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v19 = v36;
    v20 = [v19 countByEnumeratingWithState:&v40 objects:v56 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v41;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v41 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v40 + 1) + 8 * j);
          v25 = [WeakRetained predicate];
          v26 = [v24 absoluteString];
          v27 = [v25 evaluateWithObject:v26];

          if (v27)
          {
            [v39 addObject:v24];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v40 objects:v56 count:16];
      }

      while (v21);
    }

    if ([v37 count] || objc_msgSend(v39, "count"))
    {
      v54[0] = @"COStateManagerChangesCluster";
      v54[1] = @"COStateManagerChangesUpdatedKeyPaths";
      v55[0] = v38;
      v55[1] = v37;
      v54[2] = @"COStateManagerChangesRemovedKeyPaths";
      v55[2] = v39;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:{3, v36}];
      v29 = [WeakRetained[4] objectForKeyedSubscript:v38];
      if (v29)
      {
        v30 = [WeakRetained[4] objectForKeyedSubscript:v38];
        v31 = [v30 mutableCopy];
      }

      else
      {
        v31 = [MEMORY[0x277CBEB38] dictionary];
      }

      if ([v37 count])
      {
        [v31 addEntriesFromDictionary:v37];
      }

      if ([v19 count])
      {
        v32 = [v39 allObjects];
        [v31 removeObjectsForKeys:v32];
      }

      [WeakRetained[4] setObject:v31 forKey:v38];
      v33 = COLogForCategory(4);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v49 = WeakRetained;
        v50 = 2112;
        v51 = v28;
        v52 = 2112;
        v53 = v38;
        _os_log_impl(&dword_244328000, v33, OS_LOG_TYPE_DEFAULT, "Observer %@ informing client of changes %@ for cluster %@", buf, 0x20u);
      }

      v34 = [WeakRetained block];
      (v34)[2](v34, v28);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __26__COStateObserver_notify___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5(&dword_244328000, v0, v1, "Observer %@ got changes from the service for cluster %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end