@interface CODiscoveryManager
+ (id)managerWithDiscoveryDelay:(double)a3 delegate:(id)a4;
- (BOOL)addDiscoveryRecord:(id)a3;
- (CODiscoveryManagerDelegate)delegate;
- (id)_initWithDiscoveryDelay:(double)a3 delegate:(id)a4;
- (id)_triggerDiscovery_unsafe;
- (unint64_t)count;
- (void)_configureTimer;
- (void)_disableTimer_unsafe;
- (void)_enableTimer_unsafe;
- (void)_invokeDelegate:(id)a3;
- (void)_timerFired;
- (void)_withLock:(id)a3;
- (void)clearRecords;
- (void)dealloc;
@end

@implementation CODiscoveryManager

- (id)_initWithDiscoveryDelay:(double)a3 delegate:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = CODiscoveryManager;
  v7 = [(CODiscoveryManager *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v7->_lock._os_unfair_lock_opaque = 0;
    v7->_discoveryDelay = fabs(a3);
    objc_storeWeak(&v7->_delegate, v6);
    v9 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    envelopes = v8->_envelopes;
    v8->_envelopes = v9;

    v11 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, 0);
    timer = v8->_timer;
    v8->_timer = v11;

    [(CODiscoveryManager *)v8 _configureTimer];
  }

  return v8;
}

+ (id)managerWithDiscoveryDelay:(double)a3 delegate:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] _initWithDiscoveryDelay:v6 delegate:a3];

  return v7;
}

- (void)dealloc
{
  v3 = [(CODiscoveryManager *)self timer];
  dispatch_source_cancel(v3);

  [(CODiscoveryManager *)self setTimerEnabled:0];
  v4.receiver = self;
  v4.super_class = CODiscoveryManager;
  [(CODiscoveryManager *)&v4 dealloc];
}

- (unint64_t)count
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__CODiscoveryManager_count__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(CODiscoveryManager *)self _withLock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __27__CODiscoveryManager_count__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) envelopes];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

- (BOOL)addDiscoveryRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 IDSIdentifier];
  v6 = [CODiscoveryEnvelope envelopeWithRecord:v4];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__CODiscoveryManager_addDiscoveryRecord___block_invoke;
  v11[3] = &unk_278E15BB8;
  v7 = v4;
  v12 = v7;
  v13 = self;
  v8 = v5;
  v14 = v8;
  v9 = v6;
  v15 = v9;
  v16 = &v17;
  [(CODiscoveryManager *)self _withLock:v11];
  LOBYTE(self) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return self;
}

void __41__CODiscoveryManager_addDiscoveryRecord___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) envelopes];
  v4 = [v3 objectForKey:*(a1 + 48)];
  v5 = [v4 record];
  LOBYTE(v2) = [v2 isEqual:v5];

  if ((v2 & 1) == 0)
  {
    v6 = [*(a1 + 40) envelopes];
    v8 = [v6 mutableCopy];

    [v8 setObject:*(a1 + 56) forKey:*(a1 + 48)];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v8];
    [*(a1 + 40) setEnvelopes:v7];
    *(*(*(a1 + 64) + 8) + 24) = 1;
    [*(a1 + 40) _enableTimer_unsafe];
  }
}

- (void)clearRecords
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __34__CODiscoveryManager_clearRecords__block_invoke;
  v2[3] = &unk_278E15AB8;
  v2[4] = self;
  [(CODiscoveryManager *)self _withLock:v2];
}

uint64_t __34__CODiscoveryManager_clearRecords__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  [v2 setEnvelopes:v3];

  v4 = *(a1 + 32);

  return [v4 _disableTimer_unsafe];
}

- (void)_timerFired
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__3;
  v8 = __Block_byref_object_dispose__3;
  v9 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __33__CODiscoveryManager__timerFired__block_invoke;
  v3[3] = &unk_278E15950;
  v3[4] = self;
  v3[5] = &v4;
  [(CODiscoveryManager *)self _withLock:v3];
  if ([v5[5] count])
  {
    [(CODiscoveryManager *)self _invokeDelegate:v5[5]];
  }

  _Block_object_dispose(&v4, 8);
}

void __33__CODiscoveryManager__timerFired__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isTimerEnabled])
  {
    [*(a1 + 32) setTimerEnabled:0];
    v2 = [*(a1 + 32) _triggerDiscovery_unsafe];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    v5 = [*(a1 + 32) envelopes];
    v6 = [v5 count];

    if (v6)
    {
      v7 = *(a1 + 32);

      [v7 _enableTimer_unsafe];
    }
  }
}

- (id)_triggerDiscovery_unsafe
{
  v26 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  [(CODiscoveryManager *)self discoveryDelay];
  v4 = v3;
  v5 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [(CODiscoveryManager *)self envelopes];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = v5 - (v4 * 1000000000.0);
    v11 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [(CODiscoveryManager *)self envelopes];
        v15 = [v14 objectForKey:v13];

        if ([v15 received] <= v10)
        {
          v16 = [v15 record];
          [v20 addObject:v16];
        }

        else
        {
          [v6 setObject:v15 forKey:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v17 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v6];
  [(CODiscoveryManager *)self setEnvelopes:v17];

  v18 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)_configureTimer
{
  v3 = [(CODiscoveryManager *)self timer];
  dispatch_source_set_timer(v3, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

  [(CODiscoveryManager *)self setTimerEnabled:0];
  objc_initWeak(&location, self);
  v4 = [(CODiscoveryManager *)self timer];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __37__CODiscoveryManager__configureTimer__block_invoke;
  v9 = &unk_278E15B10;
  objc_copyWeak(&v10, &location);
  dispatch_source_set_event_handler(v4, &v6);

  v5 = [(CODiscoveryManager *)self timer:v6];
  dispatch_activate(v5);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __37__CODiscoveryManager__configureTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _timerFired];
    WeakRetained = v2;
  }
}

- (void)_enableTimer_unsafe
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (![(CODiscoveryManager *)self isTimerEnabled])
  {
    [(CODiscoveryManager *)self setTimerEnabled:1];
    [(CODiscoveryManager *)self discoveryDelay];
    v4 = (v3 * 1000000000.0);
    source = [(CODiscoveryManager *)self timer];
    v5 = dispatch_time(0, v4);
    dispatch_source_set_timer(source, v5, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  }
}

- (void)_disableTimer_unsafe
{
  os_unfair_lock_assert_owner(&self->_lock);
  if ([(CODiscoveryManager *)self isTimerEnabled])
  {
    [(CODiscoveryManager *)self setTimerEnabled:0];
    v3 = [(CODiscoveryManager *)self timer];
    dispatch_source_set_timer(v3, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  }
}

- (void)_invokeDelegate:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained discoveryManager:self didDiscoverRecords:v5];
  }
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (CODiscoveryManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end