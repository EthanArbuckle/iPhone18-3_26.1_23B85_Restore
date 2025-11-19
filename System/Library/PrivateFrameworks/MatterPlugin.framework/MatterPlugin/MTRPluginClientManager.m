@interface MTRPluginClientManager
+ (id)sharedInstance;
- (BOOL)isPluginClientLowestHash:(id)a3;
- (BOOL)removeClientForXPCConnection:(id)a3;
- (MTRPluginClientManager)init;
- (id)_findClientForXPCConnection:(id)a3 remove:(BOOL)a4;
- (id)addClientForXPCConnection:(id)a3 sessionID:(id)a4 queue:(id)a5;
- (id)clientForXPCConnection:(id)a3;
- (void)_scheduleNextStateLog;
- (void)_startStateLoggingIfNeeded;
- (void)logState;
@end

@implementation MTRPluginClientManager

+ (id)sharedInstance
{
  if (sharedInstance_creation_2 != -1)
  {
    +[MTRPluginClientManager sharedInstance];
  }

  v3 = sharedInstance_sInstance_2;

  return v3;
}

uint64_t __40__MTRPluginClientManager_sharedInstance__block_invoke()
{
  sharedInstance_sInstance_2 = objc_alloc_init(MTRPluginClientManager);

  return MEMORY[0x2821F96F8]();
}

- (MTRPluginClientManager)init
{
  v6.receiver = self;
  v6.super_class = MTRPluginClientManager;
  v2 = [(MTRPluginClientManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    [(MTRPluginClientManager *)v2 setClients:v3];

    v4 = v2;
  }

  return v2;
}

- (void)_scheduleNextStateLog
{
  [(MTRPluginClientManager *)self repeatStateLoggingInterval];
  v4 = dispatch_time(0, (v3 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__MTRPluginClientManager__scheduleNextStateLog__block_invoke;
  block[3] = &unk_279893AA0;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

- (void)_startStateLoggingIfNeeded
{
  [(MTRPluginClientManager *)self repeatStateLoggingInterval];
  if (v3 == 0.0)
  {
    [(MTRPluginClientManager *)self setRepeatStateLoggingInterval:300.0];

    [(MTRPluginClientManager *)self _scheduleNextStateLog];
  }
}

- (id)_findClientForXPCConnection:(id)a3 remove:(BOOL)a4
{
  v22 = a4;
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [(MTRPluginClientManager *)self clients];
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [v12 xpcConnection];
        v14 = [v13 isEqual:v5];

        if (v14)
        {
          v15 = v12;

          v9 = v15;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  if (v22)
  {
    v16 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = self;
      v29 = 2112;
      v30 = v9;
      _os_log_impl(&dword_25830F000, v16, OS_LOG_TYPE_DEFAULT, "%@ => Removing tracked client %@", buf, 0x16u);
    }

    v17 = [(MTRPluginClientManager *)self clients];
    [v17 removeObject:v9];
  }

  v18 = [(MTRPluginClientManager *)self clients];
  v19 = [v18 count];

  if (v19)
  {
    [(MTRPluginClientManager *)self _startStateLoggingIfNeeded];
  }

  else
  {
    [(MTRPluginClientManager *)self _stopStateLogging];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)addClientForXPCConnection:(id)a3 sessionID:(id)a4 queue:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  v12 = [(MTRPluginClientManager *)v11 _findClientForXPCConnection:v8 remove:0];

  if (v12)
  {
    v13 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412546;
      v20 = v11;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_25830F000, v13, OS_LOG_TYPE_DEFAULT, "%@ Cannot add client for same xpc connection %@", &v19, 0x16u);
    }

    v14 = 0;
  }

  else
  {
    v14 = [[MTRPluginClient alloc] initWithXPCConnection:v8 sessionID:v9 queue:v10];
    v15 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138413058;
      v20 = v11;
      v21 = 2112;
      v22 = v14;
      v23 = 2112;
      v24 = v8;
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&dword_25830F000, v15, OS_LOG_TYPE_DEFAULT, "%@ Adding Client %@ for xpc connection %@ queue: %@", &v19, 0x2Au);
    }

    v16 = [(MTRPluginClientManager *)v11 clients];
    [v16 addObject:v14];

    [(MTRPluginClientManager *)v11 _startStateLoggingIfNeeded];
  }

  objc_sync_exit(v11);

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)removeClientForXPCConnection:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MTRPluginClientManager *)v5 _findClientForXPCConnection:v4 remove:1];
  v7 = matterPluginLog_default;
  v8 = os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v11 = 138412802;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_25830F000, v7, OS_LOG_TYPE_DEFAULT, "%@ Removing client %@  for xpc connection: %@", &v11, 0x20u);
    }

    [v6 invalidate];
  }

  else if (v8)
  {
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_25830F000, v7, OS_LOG_TYPE_DEFAULT, "%@ Cannot find and remove client for xpc connection %@", &v11, 0x16u);
  }

  objc_sync_exit(v5);
  v9 = *MEMORY[0x277D85DE8];
  return v6 != 0;
}

- (id)clientForXPCConnection:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MTRPluginClientManager *)v5 _findClientForXPCConnection:v4 remove:0];
  if (!v6)
  {
    v7 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = v5;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_25830F000, v7, OS_LOG_TYPE_DEFAULT, "%@ Cannot find client for xpc connection %@", &v10, 0x16u);
    }
  }

  objc_sync_exit(v5);

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)isPluginClientLowestHash:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 hash];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(MTRPluginClientManager *)v5 clients];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v14 + 1) + 8 * i) hash] < v6)
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  objc_sync_exit(v5);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)logState
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MTRPluginClientManager *)v2 clients];
    v5 = [v4 count];
    v6 = [(MTRPluginClientManager *)v2 clients];
    v9 = 138412802;
    v10 = v2;
    v11 = 2048;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "%@ MTRPlugin active clients: %lu (%@)", &v9, 0x20u);
  }

  [(MTRPluginClientManager *)v2 repeatStateLoggingInterval];
  if (v7 > 0.0)
  {
    [(MTRPluginClientManager *)v2 _scheduleNextStateLog];
  }

  objc_sync_exit(v2);

  v8 = *MEMORY[0x277D85DE8];
}

@end