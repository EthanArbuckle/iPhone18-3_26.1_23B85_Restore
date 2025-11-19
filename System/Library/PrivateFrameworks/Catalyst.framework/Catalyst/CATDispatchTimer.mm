@interface CATDispatchTimer
- (CATDispatchTimer)initWithIdentifier:(id)a3 workQueue:(id)a4 delegateQueue:(id)a5 timeInterval:(double)a6 totalFires:(unint64_t)a7 firesForever:(BOOL)a8 fireHandler:(id)a9;
- (void)dealloc;
- (void)invalidate;
- (void)reset;
- (void)resume;
- (void)timerDidFire;
@end

@implementation CATDispatchTimer

- (void)dealloc
{
  dispatch_source_cancel(self->mTimerSource);
  v3.receiver = self;
  v3.super_class = CATDispatchTimer;
  [(CATDispatchTimer *)&v3 dealloc];
}

- (CATDispatchTimer)initWithIdentifier:(id)a3 workQueue:(id)a4 delegateQueue:(id)a5 timeInterval:(double)a6 totalFires:(unint64_t)a7 firesForever:(BOOL)a8 fireHandler:(id)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a9;
  v26.receiver = self;
  v26.super_class = CATDispatchTimer;
  v20 = [(CATDispatchTimer *)&v26 init];
  if (v20)
  {
    v21 = [v16 copy];
    mIdentifier = v20->mIdentifier;
    v20->mIdentifier = v21;

    objc_storeStrong(&v20->mWorkQueue, a4);
    objc_storeStrong(&v20->mDelegateQueue, a5);
    v20->mTimeInterval = a6;
    v20->mTotalFires = a7;
    v20->mFiresForever = a8;
    v23 = MEMORY[0x245D2F510](v19);
    mFireHandler = v20->mFireHandler;
    v20->mFireHandler = v23;
  }

  return v20;
}

- (void)resume
{
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->mWorkQueue);
  mTimerSource = self->mTimerSource;
  self->mTimerSource = v3;

  v5 = self->mTimerSource;
  v6 = dispatch_time(0, (self->mTimeInterval * 1000000000.0));
  dispatch_source_set_timer(v5, v6, (self->mTimeInterval * 1000000000.0), 0);
  objc_initWeak(&location, self);
  v7 = self->mTimerSource;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __26__CATDispatchTimer_resume__block_invoke;
  v8[3] = &unk_278DA7120;
  objc_copyWeak(&v9, &location);
  dispatch_source_set_event_handler(v7, v8);
  dispatch_resume(self->mTimerSource);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

uint64_t __26__CATDispatchTimer_resume__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    WeakRetained = dispatch_source_testcancel(*(WeakRetained + 64));
    v2 = v4;
    if (!WeakRetained)
    {
      WeakRetained = [v4 timerDidFire];
      v2 = v4;
    }
  }

  return MEMORY[0x2821F96F8](WeakRetained, v2);
}

- (void)timerDidFire
{
  CATAssertIsQueue(self->mWorkQueue);
  v3 = MEMORY[0x245D2F510](self->mFireHandler);
  if (v3)
  {
    v4 = self->mFireCount + 1;
    self->mFireCount = v4;
    if (self->mFiresForever || v4 != self->mTotalFires)
    {
      v6 = 0;
    }

    else
    {
      dispatch_source_cancel(self->mTimerSource);
      mFireHandler = self->mFireHandler;
      self->mFireHandler = 0;

      v6 = 1;
    }

    mDelegateQueue = self->mDelegateQueue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __32__CATDispatchTimer_timerDidFire__block_invoke;
    v10[3] = &unk_278DA7AB0;
    v10[4] = self;
    v11 = v3;
    v12 = v4;
    v13 = v6;
    v8 = v10;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __CATPerformBlock_block_invoke_14;
    block[3] = &unk_278DA7208;
    v15 = v8;
    v9 = mDelegateQueue;
    dispatch_async(v9, block);
  }
}

- (void)invalidate
{
  dispatch_source_cancel(self->mTimerSource);
  mWorkQueue = self->mWorkQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__CATDispatchTimer_invalidate__block_invoke;
  v6[3] = &unk_278DA72D0;
  v6[4] = self;
  v4 = v6;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_14;
  block[3] = &unk_278DA7208;
  v8 = v4;
  v5 = mWorkQueue;
  dispatch_async(v5, block);
}

void __30__CATDispatchTimer_invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  *(v1 + 56) = 0;
}

- (void)reset
{
  mWorkQueue = self->mWorkQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __25__CATDispatchTimer_reset__block_invoke;
  v5[3] = &unk_278DA72D0;
  v5[4] = self;
  v3 = v5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_14;
  block[3] = &unk_278DA7208;
  v7 = v3;
  v4 = mWorkQueue;
  dispatch_async(v4, block);
}

@end