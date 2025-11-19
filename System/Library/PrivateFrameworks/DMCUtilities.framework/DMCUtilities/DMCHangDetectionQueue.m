@interface DMCHangDetectionQueue
- (BOOL)shouldDumpStackshot;
- (BOOL)verboseLogEnabled;
- (DMCHangDetectionQueue)initWithQoS:(int64_t)a3 hangThreshold:(double)a4 owner:(id)a5;
- (unsigned)_qosClassFromNSQualityOfService:(int64_t)a3;
- (void)queueBlock:(id)a3;
- (void)queueBlock:(id)a3 afterDelay:(double)a4;
- (void)setShouldDumpStackshot:(BOOL)a3;
- (void)setVerboseLogEnabled:(BOOL)a3;
- (void)waitUntilAllBlocksAreFinished;
@end

@implementation DMCHangDetectionQueue

- (DMCHangDetectionQueue)initWithQoS:(int64_t)a3 hangThreshold:(double)a4 owner:(id)a5
{
  v8 = a5;
  v22.receiver = self;
  v22.super_class = DMCHangDetectionQueue;
  v9 = [(DMCHangDetectionQueue *)&v22 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, -1);
    v11 = objc_opt_new();
    workerQueue = v9->_workerQueue;
    v9->_workerQueue = v11;

    [(NSOperationQueue *)v9->_workerQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v9->_workerQueue setQualityOfService:a3];
    v13 = [v8 stringByAppendingString:@"_hang_detection_worker_queue"];
    [(NSOperationQueue *)v9->_workerQueue setName:v13];

    v14 = [v8 stringByAppendingString:@"_hang_detection_log_queue"];
    v15 = dispatch_queue_create([v14 UTF8String], v10);
    logQueue = v9->_logQueue;
    v9->_logQueue = v15;

    v9->_threshold = a4;
    v17 = [v8 copy];
    owner = v9->_owner;
    v9->_owner = v17;

    v19 = objc_opt_new();
    logger = v9->_logger;
    v9->_logger = v19;

    v9->_shouldDumpStackshot = 1;
    v9->_lastExecutedJob = -1;
    atomic_store(0xFFFFFFFF, &v9->_blockNum);
  }

  return v9;
}

- (void)queueBlock:(id)a3 afterDelay:(double)a4
{
  v6 = a3;
  v7 = dispatch_time(0, (a4 * 1000000000.0));
  v8 = dispatch_get_global_queue([(DMCHangDetectionQueue *)self _qosClassFromNSQualityOfService:[(NSOperationQueue *)self->_workerQueue qualityOfService]], 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__DMCHangDetectionQueue_queueBlock_afterDelay___block_invoke;
  v10[3] = &unk_1E7ADC950;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  dispatch_after(v7, v8, v10);
}

- (void)queueBlock:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  atomic_fetch_add(&self->_blockNum, 1u);
  v5 = atomic_load(&self->_blockNum);
  if (queueBlock__onceToken != -1)
  {
    [DMCHangDetectionQueue queueBlock:];
  }

  v6 = queueBlock__isInternal;
  v7 = [(DMCHangDetectionQueue *)self shouldDumpStackshot]& v6;
  v8 = [(DMCHangDetectionQueue *)self verboseLogEnabled];
  v9 = v8;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 0;
  if ((v7 & 1) != 0 || (v10 = 0, v8))
  {
    v10 = +[DMCBacktraceLogger callerOfCurrentMethod];
    if (v9)
    {
      v11 = *DMCLogObjects();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = [(DMCHangDetectionQueue *)self owner];
        *buf = 138543874;
        v35 = v12;
        v36 = 1024;
        v37 = v5;
        v38 = 2114;
        v39 = v10;
        _os_log_impl(&dword_1B1630000, v11, OS_LOG_TYPE_DEBUG, "DMCHangDetectionQueue (%{public}@) queueing task %d from: %{public}@", buf, 0x1Cu);
      }
    }

    if (v7)
    {
      [(DMCHangDetectionQueue *)self threshold];
      if (v13 > 0.0)
      {
        [(DMCHangDetectionQueue *)self threshold];
        v15 = dispatch_time(0, (v14 * 1000000000.0));
        v16 = [(DMCHangDetectionQueue *)self logQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __36__DMCHangDetectionQueue_queueBlock___block_invoke_10;
        block[3] = &unk_1E7ADC978;
        v30 = v32;
        block[4] = self;
        v31 = v5;
        v10 = v10;
        v29 = v10;
        dispatch_after(v15, v16, block);
      }
    }
  }

  v17 = [(DMCHangDetectionQueue *)self workerQueue];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __36__DMCHangDetectionQueue_queueBlock___block_invoke_17;
  v21[3] = &unk_1E7ADC9C8;
  v26 = v7;
  v21[4] = self;
  v18 = v4;
  v23 = v18;
  v27 = v9;
  v25 = v5;
  v19 = v10;
  v22 = v19;
  v24 = v32;
  [v17 addOperationWithBlock:v21];

  _Block_object_dispose(v32, 8);
  v20 = *MEMORY[0x1E69E9840];
}

BOOL __36__DMCHangDetectionQueue_queueBlock___block_invoke()
{
  result = +[DMCFeatureFlags isAppleInternal];
  queueBlock__isInternal = result;
  return result;
}

void __36__DMCHangDetectionQueue_queueBlock___block_invoke_10(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0 && *(*(a1 + 32) + 12) + 1 == *(a1 + 56))
  {
    if (+[DMCFeatureFlags isAppleInternal])
    {
      v2 = [*(*(a1 + 32) + 56) getBacktraceFromTrackedThread];
      v3 = *DMCLogObjects();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        v4 = *(a1 + 32);
        v5 = v3;
        v6 = [v4 owner];
        [*(a1 + 32) threshold];
        v8 = *(a1 + 56);
        v9 = @"<None>";
        v10 = *(a1 + 40);
        if (v2)
        {
          v9 = v2;
        }

        v22 = 138544386;
        v23 = v6;
        v24 = 2048;
        v25 = v7;
        v26 = 1024;
        v27 = v8;
        v28 = 2114;
        v29 = v10;
        v30 = 2114;
        v31 = v9;
        _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_FAULT, "DMCHangDetectionQueue (%{public}@) was blocked for more than %.1f seconds. Queued task: %d %{public}@. Callstack: %{public}@", &v22, 0x30u);
      }
    }

    else
    {
      v11 = *DMCLogObjects();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 32);
        v13 = v11;
        v14 = [v12 owner];
        [*(a1 + 32) threshold];
        v15 = *(a1 + 56);
        v16 = *(a1 + 40);
        v22 = 138544130;
        v23 = v14;
        v24 = 2048;
        v25 = v17;
        v26 = 1024;
        v27 = v15;
        v28 = 2114;
        v29 = v16;
        _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_ERROR, "DMCHangDetectionQueue (%{public}@) was blocked for more than %.1f seconds. Queued task: %d %{public}@", &v22, 0x26u);
      }

      v2 = 0;
    }

    v18 = [*(a1 + 32) owner];
    v19 = [v18 stringByAppendingString:@"_queue_latestStackshot.ips"];

    v20 = DMCHangTracerDirectory();
    [DMCBacktraceLogger dumpStackshotToPath:v20 fileName:v19];
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __36__DMCHangDetectionQueue_queueBlock___block_invoke_17(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (+[DMCFeatureFlags isAppleInternal]&& *(a1 + 68) == 1)
  {
    [*(*(a1 + 32) + 56) trackCurrentThread];
  }

  (*(*(a1 + 48) + 16))();
  if (*(a1 + 69) == 1)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 32);
      v4 = v2;
      v5 = [v3 owner];
      v6 = *(a1 + 64);
      v7 = *(a1 + 40);
      *buf = 138543874;
      v16 = v5;
      v17 = 1024;
      v18 = v6;
      v19 = 2114;
      v20 = v7;
      _os_log_impl(&dword_1B1630000, v4, OS_LOG_TYPE_DEBUG, "DMCHangDetectionQueue (%{public}@) done executing task %d from: %{public}@", buf, 0x1Cu);
    }
  }

  v8 = [*(a1 + 32) logQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__DMCHangDetectionQueue_queueBlock___block_invoke_18;
  block[3] = &unk_1E7ADC9A0;
  v14 = *(a1 + 68);
  v9 = *(a1 + 32);
  v13 = *(a1 + 64);
  v10 = *(a1 + 56);
  block[4] = v9;
  block[5] = v10;
  dispatch_async(v8, block);

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __36__DMCHangDetectionQueue_queueBlock___block_invoke_18(uint64_t result)
{
  if (*(result + 52) == 1)
  {
    *(*(result + 32) + 12) = *(result + 48);
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)shouldDumpStackshot
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(DMCHangDetectionQueue *)self logQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__DMCHangDetectionQueue_shouldDumpStackshot__block_invoke;
  v5[3] = &unk_1E7ADC9F0;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_async_and_wait(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)setShouldDumpStackshot:(BOOL)a3
{
  v5 = [(DMCHangDetectionQueue *)self logQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__DMCHangDetectionQueue_setShouldDumpStackshot___block_invoke;
  v6[3] = &unk_1E7ADCA18;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

- (BOOL)verboseLogEnabled
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(DMCHangDetectionQueue *)self logQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__DMCHangDetectionQueue_verboseLogEnabled__block_invoke;
  v5[3] = &unk_1E7ADC9F0;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_async_and_wait(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)setVerboseLogEnabled:(BOOL)a3
{
  v5 = [(DMCHangDetectionQueue *)self logQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__DMCHangDetectionQueue_setVerboseLogEnabled___block_invoke;
  v6[3] = &unk_1E7ADCA18;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

- (void)waitUntilAllBlocksAreFinished
{
  v2 = [(DMCHangDetectionQueue *)self workerQueue];
  [v2 waitUntilAllOperationsAreFinished];
}

- (unsigned)_qosClassFromNSQualityOfService:(int64_t)a3
{
  if (a3 <= 16)
  {
    if (a3 == -1)
    {
      return 21;
    }

    if (a3 == 9)
    {
      return 9;
    }
  }

  else
  {
    switch(a3)
    {
      case 17:
        return 17;
      case 33:
        return 33;
      case 25:
        return 25;
    }
  }

  return 0;
}

@end