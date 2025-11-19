@interface NTSTimerTimer
+ (id)sharedTimerTimer;
- (NTSTimerTimer)init;
- (id)startTimerUpdatesWithHandler:(id)a3;
- (void)_appBackgrounded:(id)a3;
- (void)_appForegrounded:(id)a3;
- (void)_endRequestWithError:(id)a3;
- (void)_invokeHandlers;
- (void)_modelStateReset:(id)a3;
- (void)_performPendingRequest;
- (void)_performRetry;
- (void)_startObserving;
- (void)_stopObserving;
- (void)_updateTimerForRetry:(BOOL)a3;
- (void)_withTimerLock:(id)a3;
- (void)dealloc;
- (void)stopTimerUpdatesForToken:(id)a3;
@end

@implementation NTSTimerTimer

+ (id)sharedTimerTimer
{
  if (sharedTimerTimer_onceToken != -1)
  {
    +[NTSTimerTimer sharedTimerTimer];
  }

  v3 = sharedTimerTimer_sharedTimerTimer;

  return v3;
}

uint64_t __33__NTSTimerTimer_sharedTimerTimer__block_invoke()
{
  sharedTimerTimer_sharedTimerTimer = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (NTSTimerTimer)init
{
  v11.receiver = self;
  v11.super_class = NTSTimerTimer;
  v2 = [(NTSTimerTimer *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_timerLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x277D29740]);
    timerManager = v3->_timerManager;
    v3->_timerManager = v4;

    v6 = objc_opt_new();
    handlers = v3->_handlers;
    v3->_handlers = v6;

    v3->_isObserving = 0;
    v3->_updateErrorCount = 0;
    *&v3->_requestPending = 0;
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v3 selector:sel__modelStateReset_ name:*MEMORY[0x277D29690] object:v3->_timerManager];
    [v8 addObserver:v3 selector:sel__appBackgrounded_ name:*MEMORY[0x277D76660] object:0];
    [v8 addObserver:v3 selector:sel__appForegrounded_ name:*MEMORY[0x277D76758] object:0];
    v9 = [MEMORY[0x277D75128] sharedApplication];
    v3->_appInForeground = [v9 applicationState] != 2;
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = NTSTimerTimer;
  [(NTSTimerTimer *)&v4 dealloc];
}

- (void)_withTimerLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_timerLock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_timerLock);
}

- (void)_startObserving
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __32__NTSTimerTimer__startObserving__block_invoke;
  v2[3] = &unk_279919630;
  v2[4] = self;
  [(NTSTimerTimer *)self _withTimerLock:v2];
}

void __32__NTSTimerTimer__startObserving__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) count];
  v3 = *(a1 + 32);
  if ((*(v3 + 48) & 1) == 0 && v2)
  {
    *(v3 + 48) = 1;
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:*(a1 + 32) selector:sel__modelStateChanged_ name:*MEMORY[0x277D29668] object:*(*(a1 + 32) + 40)];
    [v4 addObserver:*(a1 + 32) selector:sel__modelStateChanged_ name:*MEMORY[0x277D296A8] object:*(*(a1 + 32) + 40)];
  }
}

- (void)_stopObserving
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __31__NTSTimerTimer__stopObserving__block_invoke;
  v2[3] = &unk_279919630;
  v2[4] = self;
  [(NTSTimerTimer *)self _withTimerLock:v2];
}

void __31__NTSTimerTimer__stopObserving__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) count];
  v3 = *(a1 + 32);
  if (*(v3 + 48) == 1 && v2 == 0)
  {
    *(v3 + 48) = 0;
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 removeObserver:*(a1 + 32) name:*MEMORY[0x277D29668] object:*(*(a1 + 32) + 40)];
    [v5 removeObserver:*(a1 + 32) name:*MEMORY[0x277D296A8] object:*(*(a1 + 32) + 40)];
  }
}

- (id)startTimerUpdatesWithHandler:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__NTSTimerTimer_startTimerUpdatesWithHandler___block_invoke;
  v8[3] = &unk_279919658;
  v10 = &v11;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  [(NTSTimerTimer *)self _withTimerLock:v8];
  [(NTSTimerTimer *)self _startObserving];
  [(NTSTimerTimer *)self _updateTimer];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __46__NTSTimerTimer_startTimerUpdatesWithHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(a1 + 32) + 24)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  ++*(*(a1 + 32) + 24);
  v6 = [*(a1 + 40) copy];
  v5 = _Block_copy(v6);
  [*(*(a1 + 32) + 16) setObject:v5 forKeyedSubscript:*(*(*(a1 + 48) + 8) + 40)];
}

- (void)stopTimerUpdatesForToken:(id)a3
{
  v4 = a3;
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __42__NTSTimerTimer_stopTimerUpdatesForToken___block_invoke;
  v9 = &unk_279919680;
  v10 = self;
  v11 = v4;
  v5 = v4;
  [(NTSTimerTimer *)self _withTimerLock:&v6];
  [(NTSTimerTimer *)self _stopObserving:v6];
  [(NTSTimerTimer *)self _updateTimer];
}

- (void)_performPendingRequest
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __39__NTSTimerTimer__performPendingRequest__block_invoke;
  v2[3] = &unk_279919630;
  v2[4] = self;
  [(NTSTimerTimer *)self _withTimerLock:v2];
}

void __39__NTSTimerTimer__performPendingRequest__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (*(v3 + 64) == 1)
  {
    block[5] = v1;
    block[6] = v2;
    *(v3 + 64) = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__NTSTimerTimer__performPendingRequest__block_invoke_2;
    block[3] = &unk_279919630;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_performRetry
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__NTSTimerTimer__performRetry__block_invoke;
  v6[3] = &unk_2799196A8;
  v6[4] = self;
  v6[5] = &v7;
  v6[6] = &v11;
  [(NTSTimerTimer *)self _withTimerLock:v6];
  if (*(v12 + 24) == 1)
  {
    v3 = dispatch_time(0, (vcvts_n_f32_u64(v8[3], 1uLL) * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__NTSTimerTimer__performRetry__block_invoke_2;
    block[3] = &unk_279919630;
    block[4] = self;
    dispatch_after(v3, MEMORY[0x277D85CD0], block);
  }

  else
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __30__NTSTimerTimer__performRetry__block_invoke_3;
    v4[3] = &unk_279919630;
    v4[4] = self;
    [(NTSTimerTimer *)self _withTimerLock:v4];
    [(NTSTimerTimer *)self _performPendingRequest];
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
}

void *__30__NTSTimerTimer__performRetry__block_invoke(void *result)
{
  v1 = result[4];
  v2 = *(v1 + 56);
  if (v2 <= 4)
  {
    *(v1 + 56) = v2 + 1;
    *(*(result[5] + 8) + 24) = *(result[4] + 56);
    *(*(result[6] + 8) + 24) = 1;
  }

  return result;
}

- (void)_endRequestWithError:(id)a3
{
  if (a3)
  {

    [(NTSTimerTimer *)self _performRetry];
  }

  else
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __38__NTSTimerTimer__endRequestWithError___block_invoke;
    v4[3] = &unk_279919630;
    v4[4] = self;
    [(NTSTimerTimer *)self _withTimerLock:v4];
    [(NTSTimerTimer *)self _performPendingRequest];
  }
}

uint64_t __38__NTSTimerTimer__endRequestWithError___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 56))
  {
    *(v1 + 56) = 0;
    v1 = *(result + 32);
  }

  *(v1 + 65) = 0;
  return result;
}

- (void)_updateTimerForRetry:(BOOL)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  if (a3 || (v7[0] = MEMORY[0x277D85DD0], v7[1] = 3221225472, v7[2] = __38__NTSTimerTimer__updateTimerForRetry___block_invoke, v7[3] = &unk_2799196D0, v7[4] = self, v7[5] = &v8, [(NTSTimerTimer *)self _withTimerLock:v7], (v9[3] & 1) != 0))
  {
    v4 = [(MTTimerManager *)self->_timerManager nextTimer];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __38__NTSTimerTimer__updateTimerForRetry___block_invoke_2;
    v6[3] = &unk_279919748;
    v6[4] = self;
    v5 = [v4 addCompletionBlock:v6];
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t __38__NTSTimerTimer__updateTimerForRetry___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 65) == 1)
  {
    *(v1 + 64) = 1;
    *(*(*(result + 40) + 8) + 24) = 0;
  }

  else
  {
    *(v1 + 65) = 1;
  }

  return result;
}

void __38__NTSTimerTimer__updateTimerForRetry___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    objc_initWeak(&location, *(a1 + 32));
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __38__NTSTimerTimer__updateTimerForRetry___block_invoke_3;
    v10 = &unk_279919720;
    objc_copyWeak(&v13, &location);
    v11 = *(a1 + 32);
    v12 = v5;
    dispatch_async(MEMORY[0x277D85CD0], &v7);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  [*(a1 + 32) _endRequestWithError:{v6, v7, v8, v9, v10, v11}];
}

void __38__NTSTimerTimer__updateTimerForRetry___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v3 = *(a1 + 32);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __38__NTSTimerTimer__updateTimerForRetry___block_invoke_4;
    v13 = &unk_2799196F8;
    v14 = v3;
    v4 = *(a1 + 40);
    v16 = WeakRetained;
    v17 = &v18;
    v15 = v4;
    [v3 _withTimerLock:&v10];
    v5 = WeakRetained[1];
    if (*(v19 + 24) == 1)
    {
      if (!v5)
      {
        v6 = [MEMORY[0x277CD9E48] displayLinkWithTarget:WeakRetained selector:{sel__tick_, v10, v11, v12, v13, v14}];
        v7 = WeakRetained[1];
        WeakRetained[1] = v6;

        [WeakRetained[1] setPreferredFramesPerSecond:4];
        v8 = WeakRetained[1];
        v9 = [MEMORY[0x277CBEB88] mainRunLoop];
        [v8 addToRunLoop:v9 forMode:*MEMORY[0x277CBE738]];
LABEL_7:
      }
    }

    else if (v5)
    {
      [v5 invalidate];
      v9 = WeakRetained[1];
      WeakRetained[1] = 0;
      goto LABEL_7;
    }

    _Block_object_dispose(&v18, 8);
  }
}

void __38__NTSTimerTimer__updateTimerForRetry___block_invoke_4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) count];
  v3 = *(a1 + 40);
  v4 = NAEmptyResult();
  v5 = ([v3 isEqual:v4] & 1) != 0 || *(a1 + 40) == 0;

  v6 = 0;
  v7 = *(*(a1 + 48) + 32) != 1 || v2 == 0;
  if (!v7 && !v5)
  {
    v6 = [*(a1 + 40) state] == 3;
  }

  *(*(*(a1 + 56) + 8) + 24) = v6;
}

- (void)_invokeHandlers
{
  v21 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __32__NTSTimerTimer__invokeHandlers__block_invoke;
  v13[3] = &unk_279919770;
  v13[4] = self;
  v13[5] = &v14;
  [(NTSTimerTimer *)self _withTimerLock:v13];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = v15[5];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v20 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        timerManager = self->_timerManager;
        (*(*(*(&v9 + 1) + 8 * v6) + 16))(*(*(&v9 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v20 count:16];
    }

    while (v4);
  }

  _Block_object_dispose(&v14, 8);
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __32__NTSTimerTimer__invokeHandlers__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)_appForegrounded:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__NTSTimerTimer__appForegrounded___block_invoke;
  v4[3] = &unk_279919630;
  v4[4] = self;
  [(NTSTimerTimer *)self _withTimerLock:v4];
  [(NTSTimerTimer *)self _invokeHandlers];
  [(NTSTimerTimer *)self _startObserving];
  [(MTTimerManager *)self->_timerManager checkIn];
  [(NTSTimerTimer *)self _updateTimer];
}

- (void)_appBackgrounded:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__NTSTimerTimer__appBackgrounded___block_invoke;
  v4[3] = &unk_279919630;
  v4[4] = self;
  [(NTSTimerTimer *)self _withTimerLock:v4];
  [(NTSTimerTimer *)self _stopObserving];
  [(NTSTimerTimer *)self _updateTimer];
}

- (void)_modelStateReset:(id)a3
{
  [(MTTimerManager *)self->_timerManager checkIn];

  [(NTSTimerTimer *)self _updateTimer];
}

@end