@interface CADDatabaseConnectionPoolManager
- (CADDatabaseConnectionPoolManager)init;
- (id)poolForClient:(id)a3 options:(id)a4;
- (void)_purgeAndReschedule;
- (void)databaseChangedExternally:(id)a3;
- (void)returnPool:(id)a3 forClient:(id)a4;
- (void)schedulePurge;
@end

@implementation CADDatabaseConnectionPoolManager

- (void)schedulePurge
{
  v11 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_purgeScheduled)
  {
    v3 = *MEMORY[0x277D85DE8];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_purgeScheduled = 1;
    os_unfair_lock_unlock(&self->_lock);
    v4 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v10 = 0x4044000000000000;
      _os_log_impl(&dword_22430B000, v4, OS_LOG_TYPE_DEBUG, "Scheduling a purge for %f seconds", buf, 0xCu);
    }

    v5 = dispatch_time(0, 40000000000);
    purgeQueue = self->_purgeQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__CADDatabaseConnectionPoolManager_schedulePurge__block_invoke;
    block[3] = &unk_27851AAD8;
    block[4] = self;
    dispatch_after(v5, purgeQueue, block);
    v7 = *MEMORY[0x277D85DE8];
  }
}

- (void)_purgeAndReschedule
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = CalApproximateContinuousTime();
  v4 = CalNSTimeIntervalToContinuousInterval();
  v27 = xmmword_22438FE90;
  os_unfair_lock_lock(&self->_lock);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_pools;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v23 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = v3 - v4;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [(NSMutableDictionary *)self->_pools objectForKeyedSubscript:*(*(&v23 + 1) + 8 * v10)];
        [v11 purgeConnectionsLastUsedPriorTo:v8 stats:&v27];

        ++v10;
      }

      while (v7 != v10);
      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v23 objects:v34 count:16];
    }

    while (v7);
  }

  v12 = CalApproximateContinuousTime();
  v13 = *(&v27 + 1);
  self->_purgeScheduled = *(&v27 + 1) < v12;
  os_unfair_lock_unlock(&self->_lock);
  if (v13 >= v12)
  {
    v20 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      v29 = v27;
      v30 = 1024;
      v31 = DWORD1(v27);
      _os_log_impl(&dword_22430B000, v20, OS_LOG_TYPE_INFO, "Purged %i unused connections (%i remain.) Not scheduling another purge because no old pools remain", buf, 0xEu);
    }
  }

  else
  {
    CalContinuousIntervalToNSTimeInterval();
    v15 = 20.0 - v14 + 20.0;
    if (v15 >= 0.0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0.0;
    }

    v17 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 67109632;
      v29 = v27;
      v30 = 1024;
      v31 = DWORD1(v27);
      v32 = 2048;
      v33 = v16;
      _os_log_impl(&dword_22430B000, v17, OS_LOG_TYPE_INFO, "Purged %i unused connections (%i remain.) Scheduling another check in %f seconds", buf, 0x18u);
    }

    v18 = dispatch_time(0, (v16 * 1000000000.0));
    purgeQueue = self->_purgeQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__CADDatabaseConnectionPoolManager__purgeAndReschedule__block_invoke;
    block[3] = &unk_27851AAD8;
    block[4] = self;
    dispatch_after(v18, purgeQueue, block);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (CADDatabaseConnectionPoolManager)init
{
  v10.receiver = self;
  v10.super_class = CADDatabaseConnectionPoolManager;
  v2 = [(CADDatabaseConnectionPoolManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.calendar.db_connection_purge", v3);
    purgeQueue = v2->_purgeQueue;
    v2->_purgeQueue = v4;

    v6 = objc_opt_new();
    pools = v2->_pools;
    v2->_pools = v6;

    v2->_lock._os_unfair_lock_opaque = 0;
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v2 selector:sel_databaseChangedExternally_ name:*MEMORY[0x277CF7560] object:0];
  }

  return v2;
}

- (id)poolForClient:(id)a3 options:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (([(CADDatabasePoolKey *)v7 databaseInitOptions]& 0x20) != 0)
  {
    v9 = [[CADDatabaseSingleConnectionProvider alloc] initWithConfiguration:v7];
    v8 = v7;
  }

  else
  {
    v8 = [[CADDatabasePoolKey alloc] initWithInitializationOptions:v7];

    os_unfair_lock_lock(&self->_lock);
    v9 = [(NSMutableDictionary *)self->_pools objectForKeyedSubscript:v8];
    if (!v9)
    {
      v10 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v15 = 138412290;
        v16 = v8;
        _os_log_impl(&dword_22430B000, v10, OS_LOG_TYPE_DEBUG, "Creating a new pool for %@", &v15, 0xCu);
      }

      v11 = [CADDatabaseConnectionPool alloc];
      v12 = [(CADDatabasePoolKey *)v8 options];
      v9 = [(CADDatabaseConnectionPool *)v11 initWithOptions:v12 manager:self];

      [(NSMutableDictionary *)self->_pools setObject:v9 forKeyedSubscript:v8];
    }

    [(CADDatabaseSingleConnectionProvider *)v9 addClient:v6];
    os_unfair_lock_unlock(&self->_lock);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)databaseChangedExternally:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"path"];
  v6 = [v4 objectForKeyedSubscript:@"auxDBID"];
  v7 = [v6 intValue];

  if (([v5 hasSuffix:@"/"] & 1) == 0)
  {
    v8 = [v5 stringByAppendingString:@"/"];

    v5 = v8;
  }

  os_unfair_lock_lock(&self->_lock);
  v9 = [(NSMutableDictionary *)self->_pools allValues];
  os_unfair_lock_unlock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v16 + 1) + 8 * v14++) databaseChangedExternally:v5 auxDatabaseID:{v7, v16}];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)returnPool:(id)a3 forClient:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    [v8 removeClient:v7];
    os_unfair_lock_lock(&self->_lock);
    if (![v8 numberOfClients])
    {
      v18 = v8;
      v9 = objc_opt_new();
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = self->_pools;
      v11 = [(NSMutableDictionary *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v20;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v19 + 1) + 8 * i);
            v16 = [(NSMutableDictionary *)self->_pools objectForKeyedSubscript:v15];
            if (![v16 numberOfClients])
            {
              [v9 addObject:v15];
            }
          }

          v12 = [(NSMutableDictionary *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v12);
      }

      [(NSMutableDictionary *)self->_pools removeObjectsForKeys:v9];
      v8 = v18;
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end