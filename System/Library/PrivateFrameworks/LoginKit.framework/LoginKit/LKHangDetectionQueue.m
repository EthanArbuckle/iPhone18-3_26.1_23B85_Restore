@interface LKHangDetectionQueue
- (LKHangDetectionQueue)initWithQoS:(unsigned int)a3 hangThreshold:(double)a4;
- (void)queueBlock:(id)a3;
@end

@implementation LKHangDetectionQueue

- (LKHangDetectionQueue)initWithQoS:(unsigned int)a3 hangThreshold:(double)a4
{
  v15.receiver = self;
  v15.super_class = LKHangDetectionQueue;
  v6 = [(LKHangDetectionQueue *)&v15 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_qos_class(0, a3, -1);
    v8 = dispatch_queue_create("lk_hang_detection_worker_queue", v7);
    workerQueue = v6->_workerQueue;
    v6->_workerQueue = v8;

    v10 = dispatch_queue_create("lk_hang_detection_log_queue", 0);
    logQueue = v6->_logQueue;
    v6->_logQueue = v10;

    v6->_threshold = a4;
    v12 = objc_opt_new();
    backtraceLogger = v6->_backtraceLogger;
    v6->_backtraceLogger = v12;
  }

  return v6;
}

- (void)queueBlock:(id)a3
{
  v4 = a3;
  v5 = +[LKPlatformSupport isInternalBuild];
  v6 = v5;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 0;
  if (v5)
  {
    [(LKHangDetectionQueue *)self threshold];
    v8 = dispatch_time(0, (v7 * 1000000000.0));
    v9 = [(LKHangDetectionQueue *)self logQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__LKHangDetectionQueue_queueBlock___block_invoke;
    block[3] = &unk_279826478;
    block[4] = self;
    block[5] = v17;
    dispatch_after(v8, v9, block);
  }

  v10 = [(LKHangDetectionQueue *)self workerQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __35__LKHangDetectionQueue_queueBlock___block_invoke_4;
  v12[3] = &unk_2798264C8;
  v15 = v6;
  v12[4] = self;
  v13 = v4;
  v14 = v17;
  v11 = v4;
  dispatch_async(v10, v12);

  _Block_object_dispose(v17, 8);
}

void __35__LKHangDetectionQueue_queueBlock___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_25618F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "LKHangDetectionQueue: task timed out", &v8, 2u);
    }

    v2 = [*(a1 + 32) backtraceLogger];
    v3 = [v2 getBacktraceFromTrackedThread];

    v4 = [*(a1 + 32) lastPrintedCallStack];
    v5 = [v3 isEqualToArray:v4];

    if ((v5 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        [*(a1 + 32) threshold];
        v8 = 134218242;
        v9 = v6;
        v10 = 2112;
        v11 = v3;
        _os_log_impl(&dword_25618F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Queue was blocked for more than %.1f seconds. Call stack:\n%@", &v8, 0x16u);
      }

      [*(a1 + 32) setLastPrintedCallStack:v3];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __35__LKHangDetectionQueue_queueBlock___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = [*(a1 + 32) logQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__LKHangDetectionQueue_queueBlock___block_invoke_2;
    block[3] = &unk_2798264A0;
    block[4] = *(a1 + 32);
    dispatch_sync(v2, block);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))();
  }

  if (*(a1 + 56) == 1)
  {
    v4 = [*(a1 + 32) logQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __35__LKHangDetectionQueue_queueBlock___block_invoke_3;
    v6[3] = &unk_279826478;
    v5 = *(a1 + 48);
    v6[4] = *(a1 + 32);
    v6[5] = v5;
    dispatch_async(v4, v6);
  }
}

void __35__LKHangDetectionQueue_queueBlock___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) backtraceLogger];
  [v1 trackCurrentThread];
}

@end