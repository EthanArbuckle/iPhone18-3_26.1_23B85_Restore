@interface MSClientSidePauseContext
- (MSClientSidePauseContext)initWithServer:(id)server;
- (void)resume;
- (void)timerQueuePing;
- (void)timerQueueTimerFired;
@end

@implementation MSClientSidePauseContext

- (void)timerQueuePing
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    selfCopy = self;
    _os_log_debug_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Pause context %p pinging server.", &v6, 0xCu);
  }

  server = [(MSClientSidePauseContext *)self server];
  remoteObjectProxy = [server remoteObjectProxy];
  [remoteObjectProxy pauseForUUID:self->_UUID];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)timerQueueTimerFired
{
  gate = [(MSClientSidePauseContext *)self gate];
  enabled = [gate enabled];

  if (enabled)
  {
    [(MSClientSidePauseContext *)self timerQueuePing];
    v5 = dispatch_time(0, 5000000000);
    timerQueue = self->_timerQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__MSClientSidePauseContext_timerQueueTimerFired__block_invoke;
    block[3] = &unk_2798A5010;
    block[4] = self;
    dispatch_after(v5, timerQueue, block);
  }
}

void __48__MSClientSidePauseContext_timerQueueTimerFired__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) timerQueueTimerFired];

  objc_autoreleasePoolPop(v2);
}

- (void)resume
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_debug_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Pause context %p ended.", buf, 0xCu);
  }

  timerQueue = self->_timerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__MSClientSidePauseContext_resume__block_invoke;
  block[3] = &unk_2798A5010;
  block[4] = self;
  dispatch_async(timerQueue, block);
  v4 = *MEMORY[0x277D85DE8];
}

void __34__MSClientSidePauseContext_resume__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) disable];
  v2 = [*(a1 + 32) server];
  v3 = [v2 remoteObjectProxy];
  [v3 unpauseForUUID:*(*(a1 + 32) + 8)];

  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;
}

- (MSClientSidePauseContext)initWithServer:(id)server
{
  v28 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  v25.receiver = self;
  v25.super_class = MSClientSidePauseContext;
  v6 = [(MSClientSidePauseContext *)&v25 init];
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v27 = v6;
      _os_log_debug_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Pause context %p started.", buf, 0xCu);
    }

    objc_storeStrong(&v6->_server, server);
    mSMakeUUID = [MEMORY[0x277CCACA8] MSMakeUUID];
    UUID = v6->_UUID;
    v6->_UUID = mSMakeUUID;

    v9 = dispatch_queue_create("MSClientSidePauseContext timer queue", 0);
    timerQueue = v6->_timerQueue;
    v6->_timerQueue = v9;

    v11 = objc_alloc_init(MEMORY[0x277CFFFE0]);
    gate = v6->_gate;
    v6->_gate = v11;

    v13 = v6->_timerQueue;
    v14 = dispatch_get_global_queue(-2, 0);
    dispatch_set_target_queue(v13, v14);

    v15 = dispatch_time(0, 5000000000);
    v16 = v6->_timerQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__MSClientSidePauseContext_initWithServer___block_invoke;
    block[3] = &unk_2798A5010;
    v17 = v6;
    v24 = v17;
    dispatch_after(v15, v16, block);
    v18 = v6->_timerQueue;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __43__MSClientSidePauseContext_initWithServer___block_invoke_2;
    v21[3] = &unk_2798A5010;
    v22 = v17;
    dispatch_async(v18, v21);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v6;
}

void __43__MSClientSidePauseContext_initWithServer___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) timerQueueTimerFired];

  objc_autoreleasePoolPop(v2);
}

void __43__MSClientSidePauseContext_initWithServer___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) timerQueuePing];

  objc_autoreleasePoolPop(v2);
}

@end