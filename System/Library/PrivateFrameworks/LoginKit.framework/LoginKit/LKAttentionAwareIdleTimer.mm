@interface LKAttentionAwareIdleTimer
+ (id)sharedInstance;
- (LKAttentionAwareIdleTimer)init;
- (LKAttentionAwareIdleTimerDelegate)delegate;
- (void)startMonitoringAttentionAwareIdleWithDelegate:(id)a3 timeout:(double)a4;
- (void)stopMonitoringAttentionAwareIdleWithDelegate:(id)a3 timeout:(double)a4;
@end

@implementation LKAttentionAwareIdleTimer

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[LKAttentionAwareIdleTimer sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __43__LKAttentionAwareIdleTimer_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (LKAttentionAwareIdleTimer)init
{
  v10.receiver = self;
  v10.super_class = LKAttentionAwareIdleTimer;
  v2 = [(LKAttentionAwareIdleTimer *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create([@"LKAttentionAwareIdleTimerQueue" UTF8String], 0);
    attentionAwarenessClientQueue = v2->_attentionAwarenessClientQueue;
    v2->_attentionAwarenessClientQueue = v3;

    v5 = objc_opt_new();
    timeoutDelegateMap = v2->_timeoutDelegateMap;
    v2->_timeoutDelegateMap = v5;

    v7 = dispatch_queue_create("com.apple.LoginUI.LUIAttentionAwareIdleTimer", 0);
    queue = v2->_queue;
    v2->_queue = v7;
  }

  return v2;
}

- (void)startMonitoringAttentionAwareIdleWithDelegate:(id)a3 timeout:(double)a4
{
  v6 = a3;
  v7 = [(LKAttentionAwareIdleTimer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__LKAttentionAwareIdleTimer_startMonitoringAttentionAwareIdleWithDelegate_timeout___block_invoke;
  block[3] = &unk_2798262B8;
  v12 = a4;
  v10 = v6;
  v11 = self;
  v8 = v6;
  dispatch_async(v7, block);
}

void __83__LKAttentionAwareIdleTimer_startMonitoringAttentionAwareIdleWithDelegate_timeout___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [LKAttentionAwareIdleTimerClient alloc];
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) attentionAwarenessClientQueue];
  v6 = [(LKAttentionAwareIdleTimerClient *)v2 initWithClientDelegate:v4 timeout:v5 queue:v3];

  v7 = [*(a1 + 40) timeoutDelegateMap];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (!v9)
  {
    v10 = [MEMORY[0x277CBEB18] array];
    v11 = [*(a1 + 40) timeoutDelegateMap];
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
    [v11 setObject:v10 forKeyedSubscript:v12];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = [*(a1 + 40) timeoutDelegateMap];
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v15 = [v13 objectForKeyedSubscript:v14];

  v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v26 + 1) + 8 * i);
        v21 = [v20 clientDelegate];
        v22 = *(a1 + 32);

        if (v21 == v22)
        {
          [v20 resume];
          goto LABEL_13;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  [(LKAttentionAwareIdleTimerClient *)v6 resume];
  v15 = [*(a1 + 40) timeoutDelegateMap];
  v23 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v24 = [v15 objectForKeyedSubscript:v23];
  [v24 addObject:v6];

LABEL_13:
  v25 = *MEMORY[0x277D85DE8];
}

- (void)stopMonitoringAttentionAwareIdleWithDelegate:(id)a3 timeout:(double)a4
{
  v6 = a3;
  v7 = [(LKAttentionAwareIdleTimer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__LKAttentionAwareIdleTimer_stopMonitoringAttentionAwareIdleWithDelegate_timeout___block_invoke;
  block[3] = &unk_2798262B8;
  v11 = a4;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

void __82__LKAttentionAwareIdleTimer_stopMonitoringAttentionAwareIdleWithDelegate_timeout___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) timeoutDelegateMap];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [*(a1 + 32) timeoutDelegateMap];
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
    v7 = [v5 objectForKeyedSubscript:v6];

    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = [v12 clientDelegate];
          v14 = *(a1 + 40);

          if (v13 == v14)
          {
            [v12 pause];
            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (LKAttentionAwareIdleTimerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end