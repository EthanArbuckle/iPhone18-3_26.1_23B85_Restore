@interface DefaultGKViceroyNATObserver
+ (id)syncQueue;
- (BOOL)isValidSettings:(id)a3;
- (DefaultGKViceroyNATObserver)init;
- (void)_getNATTypeWithNATSettings:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)getNATTypeWithNATSettings:(id)a3 completionHandler:(id)a4;
- (void)performAsync:(id)a3;
- (void)teardown;
@end

@implementation DefaultGKViceroyNATObserver

- (DefaultGKViceroyNATObserver)init
{
  v8.receiver = self;
  v8.super_class = DefaultGKViceroyNATObserver;
  v2 = [(DefaultGKViceroyNATObserver *)&v8 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    natSemaphore = v2->_natSemaphore;
    v2->_natSemaphore = v3;

    v2->_natType = 0;
    v5 = objc_alloc_init(MEMORY[0x277CE5770]);
    natObserver = v2->_natObserver;
    v2->_natObserver = v5;
  }

  return v2;
}

- (void)dealloc
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    [DefaultGKViceroyNATObserver dealloc];
  }

  [(DefaultGKViceroyNATObserver *)self teardown];
  v4.receiver = self;
  v4.super_class = DefaultGKViceroyNATObserver;
  [(DefaultGKViceroyNATObserver *)&v4 dealloc];
}

+ (id)syncQueue
{
  if (syncQueue_onceToken != -1)
  {
    +[DefaultGKViceroyNATObserver syncQueue];
  }

  v3 = syncQueue_sSyncQueue;

  return v3;
}

uint64_t __40__DefaultGKViceroyNATObserver_syncQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.GameKit.GKViceroyNATObserver.sync", 0);
  v1 = syncQueue_sSyncQueue;
  syncQueue_sSyncQueue = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)performAsync:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() syncQueue];
  dispatch_async(v4, v3);
}

- (void)getNATTypeWithNATSettings:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__DefaultGKViceroyNATObserver_getNATTypeWithNATSettings_completionHandler___block_invoke;
  v10[3] = &unk_2785DE948;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(DefaultGKViceroyNATObserver *)self performAsync:v10];
}

- (BOOL)isValidSettings:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = +[GKViceroyNATConfiguration settingsKeys];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v3 objectForKey:v9];

        if (!v10)
        {
          if (!os_log_GKGeneral)
          {
            v12 = GKOSLoggers();
          }

          v13 = os_log_GKMatch;
          if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
          {
            [(DefaultGKViceroyNATObserver *)v9 isValidSettings:v13];
          }

          v11 = 0;
          goto LABEL_15;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_15:

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)_getNATTypeWithNATSettings:(id)a3 completionHandler:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(DefaultGKViceroyNATObserver *)self natType])
  {
LABEL_2:
    v7[2](v7, [(DefaultGKViceroyNATObserver *)self natType]);
    goto LABEL_20;
  }

  if (v6 && [(DefaultGKViceroyNATObserver *)self isValidSettings:v6])
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      [DefaultGKViceroyNATObserver _getNATTypeWithNATSettings:completionHandler:];
    }

    [GKViceroyNATConfiguration applySettings:v6];
    v9 = [(DefaultGKViceroyNATObserver *)self natObserver];
    [v9 setDelegate:self];

    natSemaphore = self->_natSemaphore;
    v11 = dispatch_time(0, 3000000000);
    if (!dispatch_semaphore_wait(natSemaphore, v11))
    {
      if (!os_log_GKGeneral)
      {
        v15 = GKOSLoggers();
      }

      v16 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        v17 = MEMORY[0x277CCABB0];
        v18 = v16;
        v19 = [v17 numberWithUnsignedInt:{-[DefaultGKViceroyNATObserver natType](self, "natType")}];
        v20 = 138412290;
        v21 = v19;
        _os_log_impl(&dword_227904000, v18, OS_LOG_TYPE_INFO, "[GKViceroyNATObserver] Done waiting for valid NAT type: %@", &v20, 0xCu);
      }

      goto LABEL_2;
    }

    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      [DefaultGKViceroyNATObserver _getNATTypeWithNATSettings:completionHandler:];
    }

    v7[2](v7, 0);
    [(DefaultGKViceroyNATObserver *)self teardown];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      [DefaultGKViceroyNATObserver _getNATTypeWithNATSettings:completionHandler:];
    }

    v7[2](v7, 0);
  }

LABEL_20:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)teardown
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    [DefaultGKViceroyNATObserver teardown];
  }

  self->_natType = 0;
  v4 = [(DefaultGKViceroyNATObserver *)self natObserver];

  if (v4)
  {
    v5 = [(DefaultGKViceroyNATObserver *)self natObserver];
    [v5 setDelegate:0];

    natObserver = self->_natObserver;
    self->_natObserver = 0;
  }
}

- (void)isValidSettings:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_227904000, a2, OS_LOG_TYPE_ERROR, "[GKViceroyNATObserver] Missing required setting: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end