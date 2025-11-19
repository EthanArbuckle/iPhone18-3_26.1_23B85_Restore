@interface OITSUDelayTimer
- (OITSUDelayTimer)initWithTargetSerialQueue:(id)a3;
- (void)_reallyCancel;
- (void)afterDelay:(double)a3 processBlock:(id)a4;
- (void)cancel;
- (void)dealloc;
@end

@implementation OITSUDelayTimer

- (OITSUDelayTimer)initWithTargetSerialQueue:(id)a3
{
  v12.receiver = self;
  v12.super_class = OITSUDelayTimer;
  v4 = [(OITSUDelayTimer *)&v12 init];
  v5 = v4;
  if (v4)
  {
    if (a3)
    {
      [(OITSUDelayTimer *)v4 _setDispatchQueue:a3];
    }

    else
    {
      v6 = objc_alloc(MEMORY[0x277CCACA8]);
      v7 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
      v8 = objc_opt_class();
      v9 = [v6 initWithFormat:@"%@.%@.TimerQueue", v7, NSStringFromClass(v8)];
      v10 = dispatch_queue_create([v9 UTF8String], 0);

      [(OITSUDelayTimer *)v5 _setDispatchQueue:v10];
      if (v10)
      {
        dispatch_release(v10);
      }
    }
  }

  return v5;
}

- (void)dealloc
{
  [(OITSUDelayTimer *)self _reallyCancel];
  [(OITSUDelayTimer *)self _setDispatchQueue:0];
  v3.receiver = self;
  v3.super_class = OITSUDelayTimer;
  [(OITSUDelayTimer *)&v3 dealloc];
}

- (void)afterDelay:(double)a3 processBlock:(id)a4
{
  [(OITSUDelayTimer *)self _setCancelled:0];
  v7 = [(OITSUDelayTimer *)self _dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__OITSUDelayTimer_afterDelay_processBlock___block_invoke;
  block[3] = &unk_2799C6750;
  *&block[6] = a3;
  block[4] = self;
  block[5] = a4;
  dispatch_async(v7, block);
}

void __43__OITSUDelayTimer_afterDelay_processBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _isCancelled];
  if ([*(a1 + 32) _dispatchTimer])
  {
    v3 = [*(a1 + 32) automaticallyCancelPendingBlockUponSchedulingNewBlock];
    v4 = *(a1 + 32);
    if (!v3)
    {
      NSLog(@"[warning]: %@: Ignoring block scheduled for execution %.2f seconds from now.", v4, *(a1 + 48));
      return;
    }

    [v4 _reallyCancel];
  }

  if ((v2 & 1) == 0)
  {
    v5 = [*(a1 + 32) _dispatchQueue];
    v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v5);
    v7 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __43__OITSUDelayTimer_afterDelay_processBlock___block_invoke_2;
    handler[3] = &unk_2799C6728;
    v9 = *(a1 + 32);
    dispatch_source_set_event_handler(v6, handler);
    dispatch_resume(v6);
    [*(a1 + 32) _setDispatchTimer:v6];
    dispatch_release(v6);
  }
}

uint64_t __43__OITSUDelayTimer_afterDelay_processBlock___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _reallyCancel];
}

- (void)_reallyCancel
{
  v3 = [(OITSUDelayTimer *)self _dispatchTimer];
  if (v3)
  {
    dispatch_source_cancel(v3);

    [(OITSUDelayTimer *)self _setDispatchTimer:0];
  }
}

- (void)cancel
{
  [(OITSUDelayTimer *)self _setCancelled:1];
  v3 = [(OITSUDelayTimer *)self _dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__OITSUDelayTimer_cancel__block_invoke;
  block[3] = &unk_2799C60B0;
  block[4] = self;
  dispatch_async(v3, block);
}

@end