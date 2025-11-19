@interface C2MultipeerClientContext
- (BOOL)hadFailedToDiscover;
- (C2MultipeerClientContext)init;
- (void)resetTimerForChunkData;
- (void)resetTimerForDiscovery;
- (void)startTimerOnQueue:(id)a3;
- (void)stopTimer;
@end

@implementation C2MultipeerClientContext

- (C2MultipeerClientContext)init
{
  v10.receiver = self;
  v10.super_class = C2MultipeerClientContext;
  v2 = [(C2MultipeerClientContext *)&v10 init];
  if (v2)
  {
    v3 = _os_activity_create(&dword_242158000, "c2-chunk-client", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    osActivity = v2->_osActivity;
    v2->_osActivity = v3;

    v2->_startTimestamp = mach_continuous_time();
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    discoveryPeers = v2->_discoveryPeers;
    v2->_discoveryPeers = v5;

    chunkDataRequestedFromPeer = v2->_chunkDataRequestedFromPeer;
    v2->_chunkDataRequestedFromPeer = 0;

    chunkDataCallback = v2->_chunkDataCallback;
    v2->_chunkDataCallback = 0;
  }

  return v2;
}

- (void)startTimerOnQueue:(id)a3
{
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, a3);
  timeoutTrigger = self->_timeoutTrigger;
  self->_timeoutTrigger = v4;

  v6 = self->_timeoutTrigger;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __46__C2MultipeerClientContext_startTimerOnQueue___block_invoke;
  handler[3] = &unk_278D400A0;
  handler[4] = self;
  dispatch_source_set_event_handler(v6, handler);
  v7 = self->_timeoutTrigger;
  v8 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_resume(self->_timeoutTrigger);
}

void __46__C2MultipeerClientContext_startTimerOnQueue___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 40))
  {
    if (C2_MULTIPEER_LOG_BLOCK != -1)
    {
      __46__C2MultipeerClientContext_startTimerOnQueue___block_invoke_cold_1();
    }

    v2 = C2_MULTIPEER_LOG_INTERNAL;
    if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_242158000, v2, OS_LOG_TYPE_INFO, "timeout triggered while waiting for chunk data response.", v12, 2u);
    }

    v3 = *(*(a1 + 32) + 56);
    if (v3)
    {
      v4 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CCA450];
      v16[0] = @"timeout triggered while waiting for chunk data response.";
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v6 = v4;
      v7 = 201;
LABEL_14:
      v10 = [v6 errorWithDomain:@"C2MultipeerErrorDomain" code:v7 userInfo:v5];
      (*(v3 + 16))(v3, 0, v10);
    }
  }

  else
  {
    if (C2_MULTIPEER_LOG_BLOCK != -1)
    {
      __46__C2MultipeerClientContext_startTimerOnQueue___block_invoke_cold_2();
    }

    v8 = C2_MULTIPEER_LOG_INTERNAL;
    if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_242158000, v8, OS_LOG_TYPE_INFO, "timeout triggered while waiting for discovery response.", v12, 2u);
    }

    v3 = *(*(a1 + 32) + 56);
    if (v3)
    {
      v9 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277CCA450];
      v14 = @"timeout triggered while waiting for discovery response.";
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      v6 = v9;
      v7 = 200;
      goto LABEL_14;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __46__C2MultipeerClientContext_startTimerOnQueue___block_invoke_2()
{
  C2_MULTIPEER_LOG_INTERNAL = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __46__C2MultipeerClientContext_startTimerOnQueue___block_invoke_9()
{
  C2_MULTIPEER_LOG_INTERNAL = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

- (void)resetTimerForDiscovery
{
  timeoutTrigger = self->_timeoutTrigger;
  v3 = dispatch_time(0, 200000000);

  dispatch_source_set_timer(timeoutTrigger, v3, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (void)resetTimerForChunkData
{
  timeoutTrigger = self->_timeoutTrigger;
  v3 = dispatch_time(0, 5000000000);

  dispatch_source_set_timer(timeoutTrigger, v3, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (void)stopTimer
{
  timeoutTrigger = self->_timeoutTrigger;
  if (timeoutTrigger)
  {
    dispatch_source_cancel(timeoutTrigger);
  }
}

- (BOOL)hadFailedToDiscover
{
  v11[1] = *MEMORY[0x277D85DE8];
  if ([(NSMutableSet *)self->_discoveryPeers count]|| self->_chunkDataRequestedFromPeer)
  {
    v3 = 0;
  }

  else
  {
    chunkDataCallback = self->_chunkDataCallback;
    if (chunkDataCallback)
    {
      v7 = MEMORY[0x277CCA9B8];
      v10 = *MEMORY[0x277CCA450];
      v11[0] = @"no peers had requested chunk data.";
      v3 = 1;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      v9 = [v7 errorWithDomain:@"C2MultipeerErrorDomain" code:101 userInfo:v8];
      chunkDataCallback[2](chunkDataCallback, 0, v9);
    }

    else
    {
      v3 = 1;
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

@end