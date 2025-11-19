@interface OITSUScaledProgress
- (BOOL)isIndeterminate;
- (OITSUProgress)progress;
- (OITSUScaledProgress)init;
- (double)value;
- (id)addProgressObserverWithValueInterval:(double)a3 queue:(id)a4 handler:(id)a5;
- (void)dealloc;
- (void)p_addProgressObserverToProgressInQueue;
- (void)p_removeProgressObserverFromProgressInQueue;
- (void)removeProgressObserver:(id)a3;
- (void)setMaxValue:(double)a3;
- (void)setProgress:(id)a3;
@end

@implementation OITSUScaledProgress

- (OITSUScaledProgress)init
{
  v4.receiver = self;
  v4.super_class = OITSUScaledProgress;
  v2 = [(OITSUProgress *)&v4 init];
  if (v2)
  {
    v2->mStorage = objc_alloc_init(OITSUScaledProgressStorage);
    v2->mProgressQueue = dispatch_queue_create("com.apple.iWork.TSUScaledProgress", 0);
    [(OITSUScaledProgressStorage *)v2->mStorage setMaxValue:1.0];
  }

  return v2;
}

- (void)dealloc
{
  mProgressQueue = self->mProgressQueue;
  if (mProgressQueue)
  {
    dispatch_release(mProgressQueue);
  }

  v4.receiver = self;
  v4.super_class = OITSUScaledProgress;
  [(OITSUProgress *)&v4 dealloc];
}

- (OITSUProgress)progress
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__5;
  v10 = __Block_byref_object_dispose__5;
  v11 = 0;
  mProgressQueue = self->mProgressQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__OITSUScaledProgress_progress__block_invoke;
  v5[3] = &unk_2799C65E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mProgressQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __31__OITSUScaledProgress_progress__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 40) = *(*(a1 + 32) + 40);

  objc_autoreleasePoolPop(v2);
}

- (void)setProgress:(id)a3
{
  mProgressQueue = self->mProgressQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__OITSUScaledProgress_setProgress___block_invoke;
  v4[3] = &unk_2799C6660;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(mProgressQueue, v4);
}

void __35__OITSUScaledProgress_setProgress___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3[5] != *(a1 + 40))
  {
    [v3 p_removeProgressObserverFromProgressInQueue];
    v4 = *(a1 + 40);

    *(*(a1 + 32) + 40) = *(a1 + 40);
    [*(a1 + 32) p_addProgressObserverToProgressInQueue];
    [*(a1 + 32) protected_progressDidChange];
  }

  objc_autoreleasePoolPop(v2);
}

- (double)value
{
  v3 = [(OITSUScaledProgress *)self progress];
  if (!v3)
  {
    return 0.0;
  }

  v4 = v3;
  [(OITSUProgress *)v3 value];
  v6 = v5;
  [(OITSUProgress *)v4 maxValue];
  v8 = v6 / v7;
  [(OITSUScaledProgress *)self maxValue];
  return v8 * v9;
}

- (void)setMaxValue:(double)a3
{
  [(OITSUScaledProgressStorage *)self->mStorage setMaxValue:a3];

  [(OITSUProgress *)self protected_progressDidChange];
}

- (BOOL)isIndeterminate
{
  v2 = [(OITSUScaledProgress *)self progress];
  if (!v2)
  {
    return 1;
  }

  return [(OITSUProgress *)v2 isIndeterminate];
}

- (id)addProgressObserverWithValueInterval:(double)a3 queue:(id)a4 handler:(id)a5
{
  v10.receiver = self;
  v10.super_class = OITSUScaledProgress;
  v6 = [(OITSUProgress *)&v10 addProgressObserverWithValueInterval:a4 queue:a5 handler:a3];
  mProgressQueue = self->mProgressQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__OITSUScaledProgress_addProgressObserverWithValueInterval_queue_handler___block_invoke;
  block[3] = &unk_2799C60B0;
  block[4] = self;
  dispatch_async(mProgressQueue, block);
  return v6;
}

void __74__OITSUScaledProgress_addProgressObserverWithValueInterval_queue_handler___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) p_removeProgressObserverFromProgressInQueue];
  [*(a1 + 32) p_addProgressObserverToProgressInQueue];

  objc_autoreleasePoolPop(v2);
}

- (void)removeProgressObserver:(id)a3
{
  v6.receiver = self;
  v6.super_class = OITSUScaledProgress;
  [(OITSUProgress *)&v6 removeProgressObserver:a3];
  mProgressQueue = self->mProgressQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__OITSUScaledProgress_removeProgressObserver___block_invoke;
  block[3] = &unk_2799C60B0;
  block[4] = self;
  dispatch_async(mProgressQueue, block);
}

void __46__OITSUScaledProgress_removeProgressObserver___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) p_removeProgressObserverFromProgressInQueue];
  [*(a1 + 32) p_addProgressObserverToProgressInQueue];

  objc_autoreleasePoolPop(v2);
}

- (void)p_addProgressObserverToProgressInQueue
{
  if (self->mProgress)
  {
    [(OITSUProgress *)self protected_minProgressObserverValueInterval];
    v4 = *&v3;
    if (v3 >= 0 && ((v3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (v3 - 1) <= 0xFFFFFFFFFFFFELL)
    {
      [(OITSUProgress *)self->mProgress maxValue];
      v8 = v7;
      [(OITSUScaledProgress *)self maxValue];
      mProgress = self->mProgress;
      mProgressQueue = self->mProgressQueue;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __61__OITSUScaledProgress_p_addProgressObserverToProgressInQueue__block_invoke;
      v12[3] = &unk_2799C60B0;
      v12[4] = self;
      self->mProgressObserver = [(OITSUProgress *)mProgress addProgressObserverWithValueInterval:mProgressQueue queue:v12 handler:v4 * (v8 / v9)];
    }
  }
}

- (void)p_removeProgressObserverFromProgressInQueue
{
  if (self->mProgressObserver)
  {
    [(OITSUProgress *)self->mProgress removeProgressObserver:?];

    self->mProgressObserver = 0;
  }
}

@end