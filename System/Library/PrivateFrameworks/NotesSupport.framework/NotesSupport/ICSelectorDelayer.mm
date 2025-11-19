@interface ICSelectorDelayer
- (BOOL)isScheduledToFire;
- (ICSelectorDelayer)initWithTarget:(id)a3 selector:(SEL)a4 delay:(double)a5 maximumDelay:(double)a6 waitToFireUntilRequestsStop:(BOOL)a7 callOnMainThread:(BOOL)a8;
- (OS_dispatch_queue)backgroundQueue;
- (SEL)selector;
- (id)target;
- (void)_cancelFireRequests;
- (void)callTargetSelector;
- (void)cancelPreviousFireRequests;
- (void)dealloc;
- (void)fireImmediately;
- (void)requestFire;
- (void)setSelector:(SEL)a3;
@end

@implementation ICSelectorDelayer

- (void)requestFire
{
  v3 = [(ICSelectorDelayer *)self requestQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__ICSelectorDelayer_requestFire__block_invoke;
  block[3] = &unk_1E84848B8;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __32__ICSelectorDelayer_requestFire__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) requestFireDate];
  if (v2)
  {
    [*(a1 + 32) setRequestFireDate:v2];
  }

  else
  {
    v3 = [MEMORY[0x1E695DF00] now];
    [*(a1 + 32) setRequestFireDate:v3];
  }

  v4 = [*(a1 + 32) waitToFireUntilRequestsStop];
  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 maximumDelay];
    if (v6 == 0.0)
    {
      v12 = 0;
      v13 = 1;
    }

    else
    {
      v7 = [MEMORY[0x1E695DF00] now];
      v8 = [*(a1 + 32) requestFireDate];
      [v7 timeIntervalSinceDate:v8];
      v10 = v9;
      [*(a1 + 32) maximumDelay];
      v12 = v10 > v11;
      v13 = v10 <= v11;
    }

    v15 = [*(a1 + 32) fireBlock];

    if (v15)
    {
      [*(a1 + 32) _cancelFireRequests];
      if (v13)
      {
        goto LABEL_12;
      }

LABEL_18:
      if (!v12)
      {
        return;
      }

      goto LABEL_19;
    }

    if (!v13)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v14 = [v5 fireBlock];

    if (v14)
    {
      return;
    }

    LOBYTE(v12) = 0;
  }

LABEL_12:
  objc_initWeak(&location, *(a1 + 32));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__ICSelectorDelayer_requestFire__block_invoke_2;
  block[3] = &unk_1E84849F8;
  objc_copyWeak(&v24, &location);
  v16 = dispatch_block_create(0, block);
  [*(a1 + 32) setFireBlock:v16];

  if ([*(a1 + 32) callOnMainThread])
  {
    v17 = MEMORY[0x1E69E96A0];
    v18 = MEMORY[0x1E69E96A0];
  }

  else
  {
    v17 = [*(a1 + 32) backgroundQueue];
  }

  [*(a1 + 32) delay];
  v20 = dispatch_time(0, (v19 * 1000000000.0));
  v21 = [*(a1 + 32) fireBlock];
  dispatch_after(v20, v17, v21);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
  if (v12)
  {
LABEL_19:
    if ([*(a1 + 32) callOnMainThread])
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __32__ICSelectorDelayer_requestFire__block_invoke_4;
      v22[3] = &unk_1E84848B8;
      v22[4] = *(a1 + 32);
      dispatch_async(MEMORY[0x1E69E96A0], v22);
    }

    else
    {
      [*(a1 + 32) callTargetSelector];
    }
  }
}

- (void)dealloc
{
  v3 = [(ICSelectorDelayer *)self requestQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__ICSelectorDelayer_dealloc__block_invoke;
  block[3] = &unk_1E84848B8;
  block[4] = self;
  dispatch_sync(v3, block);

  v4.receiver = self;
  v4.super_class = ICSelectorDelayer;
  [(ICSelectorDelayer *)&v4 dealloc];
}

- (void)_cancelFireRequests
{
  v3 = [(ICSelectorDelayer *)self fireBlock];

  if (v3)
  {
    v4 = [(ICSelectorDelayer *)self fireBlock];
    dispatch_block_cancel(v4);

    [(ICSelectorDelayer *)self setFireBlock:0];
  }
}

- (BOOL)isScheduledToFire
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(ICSelectorDelayer *)self requestQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__ICSelectorDelayer_isScheduledToFire__block_invoke;
  v5[3] = &unk_1E8484848;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __38__ICSelectorDelayer_isScheduledToFire__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fireBlock];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

- (OS_dispatch_queue)backgroundQueue
{
  backgroundQueue = self->_backgroundQueue;
  if (backgroundQueue)
  {
    v3 = backgroundQueue;
  }

  else
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_DEFAULT, 0);

    v7 = dispatch_queue_create("com.apple.notes.selector-delayer-background", v6);
    v8 = self->_backgroundQueue;
    self->_backgroundQueue = v7;

    v3 = self->_backgroundQueue;
  }

  return v3;
}

- (ICSelectorDelayer)initWithTarget:(id)a3 selector:(SEL)a4 delay:(double)a5 maximumDelay:(double)a6 waitToFireUntilRequestsStop:(BOOL)a7 callOnMainThread:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v14 = a3;
  v20.receiver = self;
  v20.super_class = ICSelectorDelayer;
  v15 = [(ICSelectorDelayer *)&v20 init];
  v16 = v15;
  if (v15)
  {
    [(ICSelectorDelayer *)v15 setTarget:v14];
    [(ICSelectorDelayer *)v16 setSelector:a4];
    [(ICSelectorDelayer *)v16 setDelay:a5];
    [(ICSelectorDelayer *)v16 setMaximumDelay:a6];
    [(ICSelectorDelayer *)v16 setWaitToFireUntilRequestsStop:v9];
    [(ICSelectorDelayer *)v16 setCallOnMainThread:v8];
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.notes.coalescer.requests", v17);
    [(ICSelectorDelayer *)v16 setRequestQueue:v18];
  }

  return v16;
}

void __32__ICSelectorDelayer_requestFire__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained requestQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__ICSelectorDelayer_requestFire__block_invoke_3;
    block[3] = &unk_1E84848B8;
    v4 = v2;
    v6 = v4;
    dispatch_sync(v3, block);

    [v4 callTargetSelector];
  }
}

- (void)fireImmediately
{
  v3 = [(ICSelectorDelayer *)self requestQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__ICSelectorDelayer_fireImmediately__block_invoke;
  block[3] = &unk_1E84848B8;
  block[4] = self;
  dispatch_sync(v3, block);

  if (-[ICSelectorDelayer callOnMainThread](self, "callOnMainThread") && ([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __36__ICSelectorDelayer_fireImmediately__block_invoke_2;
    v4[3] = &unk_1E84848B8;
    v4[4] = self;
    dispatch_sync(MEMORY[0x1E69E96A0], v4);
  }

  else
  {
    [(ICSelectorDelayer *)self callTargetSelector];
  }
}

- (void)callTargetSelector
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = NSStringFromSelector([a1 selector]);
  v5 = [a1 target];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1D4576000, a2, OS_LOG_TYPE_ERROR, "Could not get method for selector %@ on target %@", &v6, 0x16u);
}

- (void)cancelPreviousFireRequests
{
  v3 = [(ICSelectorDelayer *)self requestQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__ICSelectorDelayer_cancelPreviousFireRequests__block_invoke;
  block[3] = &unk_1E84848B8;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (SEL)selector
{
  if (self->_selector)
  {
    return self->_selector;
  }

  else
  {
    return 0;
  }
}

- (void)setSelector:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_selector = v3;
}

@end