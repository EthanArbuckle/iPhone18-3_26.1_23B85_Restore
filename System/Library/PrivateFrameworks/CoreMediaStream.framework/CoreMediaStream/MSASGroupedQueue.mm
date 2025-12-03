@interface MSASGroupedQueue
- (BOOL)isAssertingBusyAssertion;
- (MSASGroupedQueue)init;
- (MSASServerSideModel)model;
- (double)maxGroupedCallbackEventIdleInterval;
- (double)maxGroupedCallbackEventStaleness;
- (int)maxGroupedCallbackEventBatchCount;
- (void)assertBusyAssertion;
- (void)deassertBusyAssertion;
- (void)flushQueueCompletionBlock:(id)block;
- (void)setMaxGroupedCallbackEventBatchCount:(int)count;
- (void)setMaxGroupedCallbackEventIdleInterval:(double)interval;
- (void)setMaxGroupedCallbackEventStaleness:(double)staleness;
- (void)setModel:(id)model;
- (void)shutDownFlush:(BOOL)flush completionBlock:(id)block;
- (void)workQueueAssertBusyAssertion;
- (void)workQueueClearIdleTimer;
- (void)workQueueClearStalenessTimer;
- (void)workQueueDeassertBusyAssertion;
- (void)workQueueDidEnqueueFirstItem;
- (void)workQueueDidEnqueueSubsequentItem;
- (void)workQueueRestartIdleTimer;
- (void)workQueueRestartStalenessTimer;
@end

@implementation MSASGroupedQueue

- (MSASServerSideModel)model
{
  WeakRetained = objc_loadWeakRetained(&self->_model);

  return WeakRetained;
}

- (void)workQueueDidEnqueueSubsequentItem
{
  v6 = *MEMORY[0x277D85DE8];
  if ([(MSASGroupedQueue *)self isShuttingDown])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v4 = 138543362;
      selfCopy2 = self;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Not enqueueing subsequent item because we're shutting down.", &v4, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v4 = 138543362;
      selfCopy2 = self;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Enqueueing subsequent item.", &v4, 0xCu);
    }

    [(MSASGroupedQueue *)self workQueueRestartIdleTimer];
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)workQueueDidEnqueueFirstItem
{
  v6 = *MEMORY[0x277D85DE8];
  if ([(MSASGroupedQueue *)self isShuttingDown])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v4 = 138543362;
      selfCopy2 = self;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Not enqueueing first item because we're shutting down.", &v4, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v4 = 138543362;
      selfCopy2 = self;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Enqueueing first item.", &v4, 0xCu);
    }

    [(MSASGroupedQueue *)self workQueueAssertBusyAssertion];
    [(MSASGroupedQueue *)self workQueueRestartStalenessTimer];
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)workQueueClearStalenessTimer
{
  stalenessTimerGate = [(MSASGroupedQueue *)self stalenessTimerGate];

  if (stalenessTimerGate)
  {
    stalenessTimerGate2 = [(MSASGroupedQueue *)self stalenessTimerGate];
    [stalenessTimerGate2 disable];

    [(MSASGroupedQueue *)self setStalenessTimerGate:0];
  }
}

- (void)workQueueRestartStalenessTimer
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Restarting staleness timer.", buf, 0xCu);
  }

  stalenessTimerGate = [(MSASGroupedQueue *)self stalenessTimerGate];

  if (stalenessTimerGate)
  {
    stalenessTimerGate2 = [(MSASGroupedQueue *)self stalenessTimerGate];
    [stalenessTimerGate2 disable];
  }

  v5 = objc_alloc_init(MSTimerGate);
  [(MSASGroupedQueue *)self setStalenessTimerGate:v5];
  [(MSASGroupedQueue *)self maxGroupedCallbackEventStaleness];
  v7 = dispatch_time(0, (v6 * 1000000000.0));
  workQueue = [(MSASGroupedQueue *)self workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__MSASGroupedQueue_workQueueRestartStalenessTimer__block_invoke;
  v11[3] = &unk_278E927C8;
  v12 = v5;
  selfCopy2 = self;
  v9 = v5;
  dispatch_after(v7, workQueue, v11);

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __50__MSASGroupedQueue_workQueueRestartStalenessTimer__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) enabled];
  if (result)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 40);
      v5 = 138543362;
      v6 = v4;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Staleness timer fired.", &v5, 0xCu);
    }

    [*(a1 + 40) assertBusyAssertion];
    [*(a1 + 40) workQueueFlushQueue];
    result = [*(a1 + 40) deassertBusyAssertion];
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)workQueueClearIdleTimer
{
  idleTimerGate = [(MSASGroupedQueue *)self idleTimerGate];

  if (idleTimerGate)
  {
    idleTimerGate2 = [(MSASGroupedQueue *)self idleTimerGate];
    [idleTimerGate2 disable];

    [(MSASGroupedQueue *)self setIdleTimerGate:0];
  }
}

- (void)workQueueRestartIdleTimer
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Restarting idle timer.", buf, 0xCu);
  }

  idleTimerGate = [(MSASGroupedQueue *)self idleTimerGate];

  if (idleTimerGate)
  {
    idleTimerGate2 = [(MSASGroupedQueue *)self idleTimerGate];
    [idleTimerGate2 disable];
  }

  v5 = objc_alloc_init(MSTimerGate);
  [(MSASGroupedQueue *)self setIdleTimerGate:v5];
  [(MSASGroupedQueue *)self maxGroupedCallbackEventIdleInterval];
  v7 = dispatch_time(0, (v6 * 1000000000.0));
  workQueue = [(MSASGroupedQueue *)self workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__MSASGroupedQueue_workQueueRestartIdleTimer__block_invoke;
  v11[3] = &unk_278E927C8;
  v12 = v5;
  selfCopy2 = self;
  v9 = v5;
  dispatch_after(v7, workQueue, v11);

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __45__MSASGroupedQueue_workQueueRestartIdleTimer__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) enabled];
  if (result)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 40);
      v5 = 138543362;
      v6 = v4;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Idle timer fired.", &v5, 0xCu);
    }

    [*(a1 + 40) assertBusyAssertion];
    [*(a1 + 40) workQueueFlushQueue];
    result = [*(a1 + 40) deassertBusyAssertion];
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)flushQueueCompletionBlock:(id)block
{
  v12 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Flushing queue.", buf, 0xCu);
  }

  [(MSASGroupedQueue *)self assertBusyAssertion];
  workQueue = [(MSASGroupedQueue *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__MSASGroupedQueue_flushQueueCompletionBlock___block_invoke;
  v8[3] = &unk_278E927A0;
  v8[4] = self;
  v9 = blockCopy;
  v6 = blockCopy;
  dispatch_async(workQueue, v8);

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __46__MSASGroupedQueue_flushQueueCompletionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) workQueueClearIdleTimer];
  [*(a1 + 32) workQueueClearStalenessTimer];
  [*(a1 + 32) workQueueFlushQueue];
  [*(a1 + 32) deassertBusyAssertion];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)shutDownFlush:(BOOL)flush completionBlock:(id)block
{
  v15 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Shutting down.", buf, 0xCu);
  }

  workQueue = [(MSASGroupedQueue *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__MSASGroupedQueue_shutDownFlush_completionBlock___block_invoke;
  block[3] = &unk_278E92778;
  flushCopy = flush;
  block[4] = self;
  v11 = blockCopy;
  v8 = blockCopy;
  dispatch_async(workQueue, block);

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __50__MSASGroupedQueue_shutDownFlush_completionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsShuttingDown:1];
  [*(a1 + 32) workQueueClearIdleTimer];
  [*(a1 + 32) workQueueClearStalenessTimer];
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) workQueueFlushQueue];
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (BOOL)isAssertingBusyAssertion
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  memberQueue = [(MSASGroupedQueue *)self memberQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__MSASGroupedQueue_isAssertingBusyAssertion__block_invoke;
  v5[3] = &unk_278E92700;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(memberQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __44__MSASGroupedQueue_isAssertingBusyAssertion__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) memberQueueIsAssertingBusyAssertion];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)workQueueDeassertBusyAssertion
{
  memberQueue = [(MSASGroupedQueue *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__MSASGroupedQueue_workQueueDeassertBusyAssertion__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_barrier_async(memberQueue, block);
}

void __50__MSASGroupedQueue_workQueueDeassertBusyAssertion__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) memberQueueIsAssertingBusyAssertion])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 32);
      v5 = 138543362;
      v6 = v4;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Deasserting busy assertion.", &v5, 0xCu);
    }

    [*(a1 + 32) memberQueueSetIsAssertingBusyAssertion:0];
    v2 = [*(a1 + 32) model];
    [v2 releaseBusy];
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)workQueueAssertBusyAssertion
{
  memberQueue = [(MSASGroupedQueue *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__MSASGroupedQueue_workQueueAssertBusyAssertion__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_barrier_async(memberQueue, block);
}

void __48__MSASGroupedQueue_workQueueAssertBusyAssertion__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) memberQueueIsAssertingBusyAssertion] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 32);
      v5 = 138543362;
      v6 = v4;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Asserting busy assertion.", &v5, 0xCu);
    }

    [*(a1 + 32) memberQueueSetIsAssertingBusyAssertion:1];
    v2 = [*(a1 + 32) model];
    [v2 retainBusy];
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)deassertBusyAssertion
{
  workQueue = [(MSASGroupedQueue *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__MSASGroupedQueue_deassertBusyAssertion__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)assertBusyAssertion
{
  workQueue = [(MSASGroupedQueue *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__MSASGroupedQueue_assertBusyAssertion__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)setMaxGroupedCallbackEventIdleInterval:(double)interval
{
  memberQueue = [(MSASGroupedQueue *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__MSASGroupedQueue_setMaxGroupedCallbackEventIdleInterval___block_invoke;
  v6[3] = &unk_278E92750;
  v6[4] = self;
  *&v6[5] = interval;
  dispatch_barrier_async(memberQueue, v6);
}

double __59__MSASGroupedQueue_setMaxGroupedCallbackEventIdleInterval___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 40) = result;
  return result;
}

- (double)maxGroupedCallbackEventIdleInterval
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  memberQueue = [(MSASGroupedQueue *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__MSASGroupedQueue_maxGroupedCallbackEventIdleInterval__block_invoke;
  v6[3] = &unk_278E92700;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(memberQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

double __55__MSASGroupedQueue_maxGroupedCallbackEventIdleInterval__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 40);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setMaxGroupedCallbackEventStaleness:(double)staleness
{
  memberQueue = [(MSASGroupedQueue *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__MSASGroupedQueue_setMaxGroupedCallbackEventStaleness___block_invoke;
  v6[3] = &unk_278E92750;
  v6[4] = self;
  *&v6[5] = staleness;
  dispatch_barrier_async(memberQueue, v6);
}

double __56__MSASGroupedQueue_setMaxGroupedCallbackEventStaleness___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 48) = result;
  return result;
}

- (double)maxGroupedCallbackEventStaleness
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  memberQueue = [(MSASGroupedQueue *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__MSASGroupedQueue_maxGroupedCallbackEventStaleness__block_invoke;
  v6[3] = &unk_278E92700;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(memberQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

double __52__MSASGroupedQueue_maxGroupedCallbackEventStaleness__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 48);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setMaxGroupedCallbackEventBatchCount:(int)count
{
  memberQueue = [(MSASGroupedQueue *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__MSASGroupedQueue_setMaxGroupedCallbackEventBatchCount___block_invoke;
  v6[3] = &unk_278E92728;
  v6[4] = self;
  countCopy = count;
  dispatch_barrier_async(memberQueue, v6);
}

- (int)maxGroupedCallbackEventBatchCount
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  memberQueue = [(MSASGroupedQueue *)self memberQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__MSASGroupedQueue_maxGroupedCallbackEventBatchCount__block_invoke;
  v5[3] = &unk_278E92700;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(memberQueue, v5);

  LODWORD(selfCopy) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)setModel:(id)model
{
  objc_storeWeak(&self->_model, model);
  if ([(MSASGroupedQueue *)self hasEnqueuedItems])
  {
    [(MSASGroupedQueue *)self assertBusyAssertion];
    workQueue = [(MSASGroupedQueue *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__MSASGroupedQueue_setModel___block_invoke;
    block[3] = &unk_278E926D8;
    block[4] = self;
    dispatch_async(workQueue, block);
  }
}

uint64_t __29__MSASGroupedQueue_setModel___block_invoke(uint64_t a1)
{
  [*(a1 + 32) workQueueFlushQueue];
  v2 = *(a1 + 32);

  return [v2 deassertBusyAssertion];
}

- (MSASGroupedQueue)init
{
  v8.receiver = self;
  v8.super_class = MSASGroupedQueue;
  v2 = [(MSASGroupedQueue *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("MSASGroupedQueue work queue", 0);
    v4 = *(v2 + 3);
    *(v2 + 3) = v3;

    v5 = dispatch_queue_create("MSASGroupedQueue member queue", MEMORY[0x277D85CD8]);
    v6 = *(v2 + 4);
    *(v2 + 4) = v5;

    *(v2 + 3) = 20;
    *(v2 + 40) = xmmword_245C64020;
  }

  return v2;
}

@end