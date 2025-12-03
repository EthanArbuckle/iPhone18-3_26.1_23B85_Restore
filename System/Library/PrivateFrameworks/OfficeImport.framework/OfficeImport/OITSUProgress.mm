@interface OITSUProgress
- (BOOL)protected_hasProgressObservers;
- (OITSUProgress)init;
- (double)protected_minProgressObserverValueInterval;
- (id)addProgressObserverWithValueInterval:(double)interval queue:(id)queue handler:(id)handler;
- (void)dealloc;
- (void)protected_progressDidChange;
- (void)removeProgressObserver:(id)observer;
@end

@implementation OITSUProgress

- (OITSUProgress)init
{
  v5.receiver = self;
  v5.super_class = OITSUProgress;
  v2 = [(OITSUProgress *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_class();
    if (v3 == objc_opt_class())
    {

      return 0;
    }

    else
    {
      v2->mProgressObservers = objc_alloc_init(MEMORY[0x277CBEB58]);
      v2->mProgressObserversQueue = dispatch_queue_create("com.apple.iWork.TSUProgress", 0);
    }
  }

  return v2;
}

- (void)dealloc
{
  mProgressObserversQueue = self->mProgressObserversQueue;
  if (mProgressObserversQueue)
  {
    dispatch_release(mProgressObserversQueue);
  }

  v4.receiver = self;
  v4.super_class = OITSUProgress;
  [(OITSUProgress *)&v4 dealloc];
}

- (id)addProgressObserverWithValueInterval:(double)interval queue:(id)queue handler:(id)handler
{
  v5 = 0;
  if (queue && handler)
  {
    v5 = [[OITSUProgressObserver alloc] initWithValueInterval:queue queue:handler handler:interval];
    mProgressObserversQueue = self->mProgressObserversQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__OITSUProgress_addProgressObserverWithValueInterval_queue_handler___block_invoke;
    v9[3] = &unk_2799C6660;
    v9[4] = self;
    v9[5] = v5;
    dispatch_async(mProgressObserversQueue, v9);
  }

  return v5;
}

- (void)removeProgressObserver:(id)observer
{
  if (observer)
  {
    mProgressObserversQueue = self->mProgressObserversQueue;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __40__OITSUProgress_removeProgressObserver___block_invoke;
    v4[3] = &unk_2799C6660;
    v4[4] = self;
    v4[5] = observer;
    dispatch_async(mProgressObserversQueue, v4);
  }
}

- (void)protected_progressDidChange
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__OITSUProgress_protected_progressDidChange__block_invoke;
  block[3] = &unk_2799C60B0;
  block[4] = self;
  dispatch_async(global_queue, block);
}

void __44__OITSUProgress_protected_progressDidChange__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) value];
  v4 = v3;
  [*(a1 + 32) maxValue];
  v6 = v5;
  v7 = [*(a1 + 32) isIndeterminate];
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__OITSUProgress_protected_progressDidChange__block_invoke_2;
  v10[3] = &unk_2799C6688;
  v10[4] = v8;
  v10[5] = v4;
  v10[6] = v6;
  v11 = v7;
  dispatch_async(v9, v10);
  objc_autoreleasePoolPop(v2);
}

void __44__OITSUProgress_protected_progressDidChange__block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(*(a1 + 32) + 8);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * i) handleValue:*(a1 + 56) maxValue:*(a1 + 40) isIndeterminate:*(a1 + 48)];
      }

      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(v2);
}

- (BOOL)protected_hasProgressObservers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  mProgressObserversQueue = self->mProgressObserversQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__OITSUProgress_protected_hasProgressObservers__block_invoke;
  v5[3] = &unk_2799C65E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mProgressObserversQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __47__OITSUProgress_protected_hasProgressObservers__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

- (double)protected_minProgressObserverValueInterval
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0x7FF0000000000000;
  mProgressObserversQueue = self->mProgressObserversQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__OITSUProgress_protected_minProgressObserverValueInterval__block_invoke;
  v5[3] = &unk_2799C66B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mProgressObserversQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __59__OITSUProgress_protected_minProgressObserverValueInterval__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 8);
  result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6) valueInterval];
        *(*(*(a1 + 40) + 8) + 24) = fmin(v7, *(*(*(a1 + 40) + 8) + 24));
        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

@end