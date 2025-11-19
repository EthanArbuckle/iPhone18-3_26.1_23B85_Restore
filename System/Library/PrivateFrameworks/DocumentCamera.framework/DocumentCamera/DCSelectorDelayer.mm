@interface DCSelectorDelayer
- (BOOL)isScheduledToFire;
- (DCSelectorDelayer)initWithTarget:(id)a3 selector:(SEL)a4 delay:(double)a5 waitToFireUntilRequestsStop:(BOOL)a6 callOnMainThread:(BOOL)a7;
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

@implementation DCSelectorDelayer

- (DCSelectorDelayer)initWithTarget:(id)a3 selector:(SEL)a4 delay:(double)a5 waitToFireUntilRequestsStop:(BOOL)a6 callOnMainThread:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v12 = a3;
  v18.receiver = self;
  v18.super_class = DCSelectorDelayer;
  v13 = [(DCSelectorDelayer *)&v18 init];
  v14 = v13;
  if (v13)
  {
    [(DCSelectorDelayer *)v13 setTarget:v12];
    [(DCSelectorDelayer *)v14 setSelector:a4];
    [(DCSelectorDelayer *)v14 setDelay:a5];
    [(DCSelectorDelayer *)v14 setWaitToFireUntilRequestsStop:v8];
    [(DCSelectorDelayer *)v14 setCallOnMainThread:v7];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.notes.coalescer.requests", v15);
    [(DCSelectorDelayer *)v14 setRequestQueue:v16];
  }

  return v14;
}

- (void)dealloc
{
  v3 = [(DCSelectorDelayer *)self requestQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__DCSelectorDelayer_dealloc__block_invoke;
  block[3] = &unk_278F92C70;
  block[4] = self;
  dispatch_sync(v3, block);

  v4.receiver = self;
  v4.super_class = DCSelectorDelayer;
  [(DCSelectorDelayer *)&v4 dealloc];
}

- (void)requestFire
{
  v3 = [(DCSelectorDelayer *)self requestQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__DCSelectorDelayer_requestFire__block_invoke;
  block[3] = &unk_278F92C70;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __32__DCSelectorDelayer_requestFire__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) waitToFireUntilRequestsStop];
  v3 = [*(a1 + 32) fireBlock];
  v4 = v3;
  if (v2)
  {

    if (v4)
    {
      [*(a1 + 32) _cancelFireRequests];
    }
  }

  else
  {

    if (v4)
    {
      return;
    }
  }

  objc_initWeak(&location, *(a1 + 32));
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __32__DCSelectorDelayer_requestFire__block_invoke_2;
  v14 = &unk_278F92ED8;
  objc_copyWeak(&v15, &location);
  v5 = dispatch_block_create(0, &v11);
  [*(a1 + 32) setFireBlock:{v5, v11, v12, v13, v14}];

  if ([*(a1 + 32) callOnMainThread])
  {
    v6 = MEMORY[0x277D85CD0];
    v7 = MEMORY[0x277D85CD0];
  }

  else
  {
    v6 = dispatch_get_global_queue(0, 0);
  }

  [*(a1 + 32) delay];
  v9 = dispatch_time(0, (v8 * 1000000000.0));
  v10 = [*(a1 + 32) fireBlock];
  dispatch_after(v9, v6, v10);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __32__DCSelectorDelayer_requestFire__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained requestQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__DCSelectorDelayer_requestFire__block_invoke_3;
    block[3] = &unk_278F92C70;
    v4 = v2;
    v6 = v4;
    dispatch_sync(v3, block);

    [v4 callTargetSelector];
  }
}

- (void)fireImmediately
{
  v3 = [(DCSelectorDelayer *)self requestQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__DCSelectorDelayer_fireImmediately__block_invoke;
  block[3] = &unk_278F92C70;
  block[4] = self;
  dispatch_sync(v3, block);

  if ([(DCSelectorDelayer *)self callOnMainThread])
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __36__DCSelectorDelayer_fireImmediately__block_invoke_2;
    v4[3] = &unk_278F92C70;
    v4[4] = self;
    dc_performBlockOnMainThread(v4);
  }

  else
  {
    [(DCSelectorDelayer *)self callTargetSelector];
  }
}

- (void)callTargetSelector
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "imp";
  _os_log_error_impl(&dword_249253000, log, OS_LOG_TYPE_ERROR, "invalid nil value for '%s'", &v1, 0xCu);
}

- (BOOL)isScheduledToFire
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(DCSelectorDelayer *)self requestQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__DCSelectorDelayer_isScheduledToFire__block_invoke;
  v5[3] = &unk_278F930D8;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __38__DCSelectorDelayer_isScheduledToFire__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fireBlock];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

- (void)cancelPreviousFireRequests
{
  v3 = [(DCSelectorDelayer *)self requestQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__DCSelectorDelayer_cancelPreviousFireRequests__block_invoke;
  block[3] = &unk_278F92C70;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)_cancelFireRequests
{
  v3 = [(DCSelectorDelayer *)self fireBlock];

  if (v3)
  {
    v4 = [(DCSelectorDelayer *)self fireBlock];
    dispatch_block_cancel(v4);

    [(DCSelectorDelayer *)self setFireBlock:0];
  }
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