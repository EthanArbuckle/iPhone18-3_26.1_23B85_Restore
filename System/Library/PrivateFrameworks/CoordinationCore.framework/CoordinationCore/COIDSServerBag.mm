@interface COIDSServerBag
- (COIDSServerBag)init;
- (COIDSServerBagDelegate)delegate;
- (NSNumber)isFastFoldEnabled;
- (NSNumber)isIPDiffingEnabled;
- (id)_onqueue_serverBagNumberValueForKey:(id)a3;
- (id)_onqueue_serverBagValueForKey:(id)a3;
- (void)_onqueue_configureTimer;
- (void)_onqueue_timerFired;
- (void)_onqueue_updateCachedValuesWithServerValues;
- (void)_withLock:(id)a3;
- (void)configure;
- (void)setFastFoldEnabled:(id)a3;
- (void)setIpDiffing:(id)a3;
@end

@implementation COIDSServerBag

- (COIDSServerBag)init
{
  v20 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = COIDSServerBag;
  v2 = [(COIDSServerBag *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x277D18A10] sharedInstanceForBagType:0];
    objc_storeStrong(&v3->_idsServerBag, v4);
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("COIDSServerBag", v5);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v6;

    v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3->_dispatchQueue);
    refreshTimer = v3->_refreshTimer;
    v3->_refreshTimer = v8;

    v3->_currentTimerDelay = 30;
    if (IsAppleInternalBuild())
    {
      v10 = @"-internal";
    }

    else
    {
      v10 = &stru_2857B54A8;
    }

    v11 = v10;
    objc_storeStrong(&v3->_keySuffix, v10);
    v12 = COCoreLogForCategory(21);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = v11;
      v18 = 2048;
      v19 = 0x403E000000000000;
      _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "Initializing using key suffix %@ with initial timer interval of %fs", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)configure
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__COIDSServerBag_configure__block_invoke;
  block[3] = &unk_278E15AB8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __27__COIDSServerBag_configure__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _onqueue_configureTimer];
  v2 = *(a1 + 32);

  return [v2 _onqueue_updateCachedValuesWithServerValues];
}

- (void)_onqueue_updateCachedValuesWithServerValues
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(COIDSServerBag *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(COIDSServerBag *)self _onqueue_serverBagNumberValueForKey:@"co-fastFold-enabled"];
  v5 = [(COIDSServerBag *)self isFastFoldEnabled];
  if (v4 && ([v4 isEqual:v5] & 1) == 0)
  {
    v7 = COCoreLogForCategory(21);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134218498;
      v15 = self;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%p Updating fast fold enabled from %@ to %@", &v14, 0x20u);
    }

    [(COIDSServerBag *)self setFastFoldEnabled:v4];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v8 = [(COIDSServerBag *)self _onqueue_serverBagNumberValueForKey:@"co-ipDiffing-enabled"];
  v9 = [(COIDSServerBag *)self isIPDiffingEnabled];
  if (v8 && ([v8 isEqual:v9] & 1) == 0)
  {
    v10 = COCoreLogForCategory(21);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134218498;
      v15 = self;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_244378000, v10, OS_LOG_TYPE_DEFAULT, "%p Updating ip diffing enabled from %@ to %@", &v14, 0x20u);
    }

    [(COIDSServerBag *)self setIpDiffing:v8];
  }

  else if (!v6)
  {
    goto LABEL_19;
  }

  v11 = COCoreLogForCategory(21);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    v15 = self;
    _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p Notifying delegate of server bag update", &v14, 0xCu);
  }

  v12 = [(COIDSServerBag *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v12 idsServerBagDidUpdate:self];
  }

LABEL_19:
  v13 = *MEMORY[0x277D85DE8];
}

- (id)_onqueue_serverBagNumberValueForKey:(id)a3
{
  v4 = a3;
  v5 = [(COIDSServerBag *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(COIDSServerBag *)self _onqueue_serverBagValueForKey:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_onqueue_serverBagValueForKey:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(COIDSServerBag *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(COIDSServerBag *)self keySuffix];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [(COIDSServerBag *)self keySuffix];
    v9 = [v4 stringByAppendingString:v8];

    v10 = [(COIDSServerBag *)self idsServerBag];
    v7 = [v10 objectForKey:v9];
  }

  else
  {
    v9 = 0;
  }

  v11 = COCoreLogForCategory(21);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134218498;
    v15 = self;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p serverBagValueForKey %@ returned %@", &v14, 0x20u);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_onqueue_configureTimer
{
  v3 = [(COIDSServerBag *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = 1000000000 * [(COIDSServerBag *)self currentTimerDelay];
  v5 = [(COIDSServerBag *)self refreshTimer];
  v6 = dispatch_time(0, v4);
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

  objc_initWeak(&location, self);
  v7 = [(COIDSServerBag *)self refreshTimer];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __41__COIDSServerBag__onqueue_configureTimer__block_invoke;
  v12 = &unk_278E15B10;
  objc_copyWeak(&v13, &location);
  dispatch_source_set_event_handler(v7, &v9);

  v8 = [(COIDSServerBag *)self refreshTimer:v9];
  dispatch_activate(v8);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __41__COIDSServerBag__onqueue_configureTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _onqueue_timerFired];
    WeakRetained = v2;
  }
}

- (void)_onqueue_timerFired
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(COIDSServerBag *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = COCoreLogForCategory(21);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = self;
    _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%p Server bag refresh timer fired", &v11, 0xCu);
  }

  [(COIDSServerBag *)self _onqueue_updateCachedValuesWithServerValues];
  v5 = [(COIDSServerBag *)self currentTimerDelay];
  if (v5 >= 3600)
  {
    v6 = 7200;
  }

  else
  {
    v6 = 2 * v5;
  }

  [(COIDSServerBag *)self setCurrentTimerDelay:v6];
  v7 = 1000000000 * [(COIDSServerBag *)self currentTimerDelay];
  v8 = [(COIDSServerBag *)self refreshTimer];
  v9 = dispatch_time(0, v7);
  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setFastFoldEnabled:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__COIDSServerBag_setFastFoldEnabled___block_invoke;
  v6[3] = &unk_278E156B0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(COIDSServerBag *)self _withLock:v6];
}

- (void)setIpDiffing:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__COIDSServerBag_setIpDiffing___block_invoke;
  v6[3] = &unk_278E156B0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(COIDSServerBag *)self _withLock:v6];
}

- (NSNumber)isFastFoldEnabled
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__2;
  v9 = __Block_byref_object_dispose__2;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__COIDSServerBag_isFastFoldEnabled__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COIDSServerBag *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSNumber)isIPDiffingEnabled
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__2;
  v9 = __Block_byref_object_dispose__2;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__COIDSServerBag_isIPDiffingEnabled__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COIDSServerBag *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (COIDSServerBagDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end