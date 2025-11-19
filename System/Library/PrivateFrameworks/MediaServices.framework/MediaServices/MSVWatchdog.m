@interface MSVWatchdog
- (MSVWatchdog)init;
- (void)_cancelTimeout;
- (void)_invokeCallback;
- (void)_scheduleTest;
- (void)_scheduleTimeout;
- (void)resume;
- (void)scheduleInDispatchQueue:(id)a3;
- (void)scheduleInOperationQueue:(id)a3;
- (void)scheduleInRunLoop:(id)a3;
- (void)suspend;
@end

@implementation MSVWatchdog

- (void)scheduleInRunLoop:(id)a3
{
  v7 = a3;
  if ([(MSVWatchdog *)self running])
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"MSVWatchdog.m" lineNumber:146 description:@"Watchdog is already running"];
  }

  if ([(MSVWatchdog *)self scheduled])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"MSVWatchdog.m" lineNumber:147 description:@"Watchdog has already been scheduled"];
  }

  [(MSVWatchdog *)self setRunLoop:v7];
  [(MSVWatchdog *)self setRunning:1];
  [(MSVWatchdog *)self setScheduled:1];
  [(MSVWatchdog *)self _scheduleTest];
}

- (void)scheduleInDispatchQueue:(id)a3
{
  v7 = a3;
  if ([(MSVWatchdog *)self running])
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"MSVWatchdog.m" lineNumber:136 description:@"Watchdog is already running"];
  }

  if ([(MSVWatchdog *)self scheduled])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"MSVWatchdog.m" lineNumber:137 description:@"Watchdog has already been scheduled"];
  }

  [(MSVWatchdog *)self setDispatchQueue:v7];
  [(MSVWatchdog *)self setRunning:1];
  [(MSVWatchdog *)self setScheduled:1];
  [(MSVWatchdog *)self _scheduleTest];
}

- (void)scheduleInOperationQueue:(id)a3
{
  v7 = a3;
  if ([(MSVWatchdog *)self running])
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"MSVWatchdog.m" lineNumber:126 description:@"Watchdog is already running"];
  }

  if ([(MSVWatchdog *)self scheduled])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"MSVWatchdog.m" lineNumber:127 description:@"Watchdog has already been scheduled"];
  }

  [(MSVWatchdog *)self setOperationQueue:v7];
  [(MSVWatchdog *)self setRunning:1];
  [(MSVWatchdog *)self setScheduled:1];
  [(MSVWatchdog *)self _scheduleTest];
}

- (void)_scheduleTest
{
  [(MSVWatchdog *)self interval];
  v4 = dispatch_time(0, (v3 * 1000000000.0));
  v5 = [(MSVWatchdog *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__MSVWatchdog__scheduleTest__block_invoke;
  block[3] = &unk_1E7982988;
  block[4] = self;
  dispatch_after(v4, v5, block);
}

void __28__MSVWatchdog__scheduleTest__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) running])
  {
    [*(a1 + 32) _scheduleTimeout];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __28__MSVWatchdog__scheduleTest__block_invoke_2;
    v12[3] = &unk_1E7982988;
    v12[4] = *(a1 + 32);
    v2 = MEMORY[0x1B26EC6C0](v12);
    v3 = [*(a1 + 32) operationQueue];

    if (v3)
    {
      v4 = [MEMORY[0x1E696AAE0] blockOperationWithBlock:v2];
      v5 = [*(a1 + 32) operationQueue];
      [v5 addOperation:v4];
    }

    else
    {
      v6 = [*(a1 + 32) dispatchQueue];

      v7 = *(a1 + 32);
      if (v6)
      {
        v4 = [v7 dispatchQueue];
        dispatch_async(v4, v2);
      }

      else
      {
        v8 = [v7 runLoop];

        if (!v8)
        {
LABEL_9:

          return;
        }

        v9 = [*(a1 + 32) runLoop];
        v10 = [v9 getCFRunLoop];
        v11 = [*(a1 + 32) mode];
        CFRunLoopPerformBlock(v10, v11, v2);

        v4 = [*(a1 + 32) runLoop];
        CFRunLoopWakeUp([v4 getCFRunLoop]);
      }
    }

    goto LABEL_9;
  }
}

void __28__MSVWatchdog__scheduleTest__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__MSVWatchdog__scheduleTest__block_invoke_3;
  block[3] = &unk_1E7982988;
  block[4] = *(a1 + 32);
  dispatch_sync(v2, block);
}

void __28__MSVWatchdog__scheduleTest__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) timer];

  if (v2)
  {
    [*(a1 + 32) _cancelTimeout];
    v3 = *(a1 + 32);

    [v3 _scheduleTest];
  }
}

- (void)_scheduleTimeout
{
  v3 = [(MSVWatchdog *)self timer];

  if (v3)
  {
    source = [(MSVWatchdog *)self timer];
    [(MSVWatchdog *)self timeoutInterval];
    v5 = dispatch_time(0, (v4 * 1000000000.0));
    dispatch_source_set_timer(source, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

- (void)_invokeCallback
{
  v3 = [(MSVWatchdog *)self timeoutCallback];

  if (v3)
  {
    v4 = [(MSVWatchdog *)self timeoutCallback];
    v4[2]();
  }
}

- (void)_cancelTimeout
{
  v3 = [(MSVWatchdog *)self timer];

  if (v3)
  {
    v4 = [(MSVWatchdog *)self timer];
    dispatch_source_set_timer(v4, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  }
}

- (void)resume
{
  v3 = [(MSVWatchdog *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__MSVWatchdog_resume__block_invoke;
  block[3] = &unk_1E7982988;
  block[4] = self;
  dispatch_sync(v3, block);
}

uint64_t __21__MSVWatchdog_resume__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) scheduled] && (objc_msgSend(*(a1 + 32), "running") & 1) == 0)
  {
    [*(a1 + 32) setRunning:1];
    v4 = *(a1 + 32);

    return [v4 _scheduleTest];
  }

  else
  {
    result = [*(a1 + 32) scheduled];
    if ((result & 1) == 0)
    {
      [*(a1 + 32) setRunning:1];
      v3 = *(a1 + 32);

      return [v3 _scheduleTimeout];
    }
  }

  return result;
}

- (void)suspend
{
  v3 = [(MSVWatchdog *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__MSVWatchdog_suspend__block_invoke;
  block[3] = &unk_1E7982988;
  block[4] = self;
  dispatch_sync(v3, block);
}

uint64_t __22__MSVWatchdog_suspend__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) running];
  if (result)
  {
    [*(a1 + 32) _cancelTimeout];
    v3 = *(a1 + 32);

    return [v3 setRunning:0];
  }

  return result;
}

- (MSVWatchdog)init
{
  v16.receiver = self;
  v16.super_class = MSVWatchdog;
  v2 = [(MSVWatchdog *)&v16 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_interval = xmmword_1AC881C00;
    timeoutCallback = v2->_timeoutCallback;
    v2->_timeoutCallback = 0;

    objc_storeStrong(&v3->_mode, *MEMORY[0x1E695DA28]);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = dispatch_queue_create([v6 UTF8String], 0);
    queue = v3->_queue;
    v3->_queue = v7;

    v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v3->_queue);
    timer = v3->_timer;
    v3->_timer = v9;

    dispatch_source_set_timer(v3->_timer, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    objc_initWeak(&location, v3);
    v11 = v3->_timer;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __19__MSVWatchdog_init__block_invoke;
    v13[3] = &unk_1E7982AB0;
    objc_copyWeak(&v14, &location);
    dispatch_source_set_event_handler(v11, v13);
    dispatch_resume(v3->_timer);
    *&v3->_scheduled = 0;
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __19__MSVWatchdog_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancelTimeout];
  [WeakRetained _invokeCallback];
}

@end