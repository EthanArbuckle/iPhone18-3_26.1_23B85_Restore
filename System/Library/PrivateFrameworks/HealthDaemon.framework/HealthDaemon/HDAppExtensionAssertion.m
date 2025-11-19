@interface HDAppExtensionAssertion
- (BOOL)_unitTest_invalidated;
- (BOOL)shouldAssert;
- (HDAppExtensionAssertion)init;
- (HDAppExtensionAssertion)initWithBundleIdentifier:(id)a3 profile:(id)a4 queue:(id)a5;
- (HDAppExtensionAssertionDelegate)delegate;
- (NSObject)_newTimerWithDuration:(double)a3 handler:;
- (double)_unitTest_lastAssertionAttempt;
- (double)nextAssertionAttempt;
- (id)_unitTest_pendingDataTypeCodesToAnchors;
- (int64_t)_unitTest_connectionErrorCount;
- (unint64_t)_unitTest_pendingAssertionCompletionsCount;
- (void)_incrementErrorCount;
- (void)_invalidate;
- (void)_lock_cancelTimeoutTimers;
- (void)assertAndUpdateWithCompletion:(id)a3;
- (void)extendForDataType:(int64_t)a3 anchor:(id)a4 completion:(id)a5;
- (void)extension;
- (void)invalidateForDataType:(int64_t)a3 anchor:(id)a4;
@end

@implementation HDAppExtensionAssertion

- (HDAppExtensionAssertion)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDAppExtensionAssertion)initWithBundleIdentifier:(id)a3 profile:(id)a4 queue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = HDAppExtensionAssertion;
  v12 = [(HDAppExtensionAssertion *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_profile, v10);
    v13->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v13->_queue, a5);
    objc_storeStrong(&v13->_bundleIdentifier, a3);
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingDataTypeCodesToAnchors = v13->_pendingDataTypeCodesToAnchors;
    v13->_pendingDataTypeCodesToAnchors = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingAssertionCompletions = v13->_pendingAssertionCompletions;
    v13->_pendingAssertionCompletions = v16;
  }

  return v13;
}

- (void)extendForDataType:(int64_t)a3 anchor:(id)a4 completion:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  os_unfair_lock_lock(&self->_lock);
  if (!self->_invalidated)
  {
    v10 = [(HDAppExtensionAssertion *)&self->super.isa extension];

    if (v10)
    {
      if (!v8)
      {
        v8 = &unk_283CB2148;
      }

      pendingDataTypeCodesToAnchors = self->_pendingDataTypeCodesToAnchors;
      v12 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      v13 = [(NSMutableDictionary *)pendingDataTypeCodesToAnchors objectForKeyedSubscript:v12];
      v14 = [v13 compare:v8];

      if (v14 == 1)
      {
        _HKInitializeLogging();
        v15 = *MEMORY[0x277CCC288];
        if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_ERROR))
        {
          v23 = 134218242;
          v24 = a3;
          v25 = 2114;
          v26 = v8;
          _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "Ignoring attempt to set '%lu' to lower anchor '%{public}@'", &v23, 0x16u);
        }
      }

      else
      {
        v16 = self->_pendingDataTypeCodesToAnchors;
        v17 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
        [(NSMutableDictionary *)v16 setObject:v8 forKeyedSubscript:v17];
      }

      v18 = [v9 copy];
      v19 = _Block_copy(v18);
      pendingAssertionCompletions = self->_pendingAssertionCompletions;
      v21 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      [(NSMutableDictionary *)pendingAssertionCompletions setObject:v19 forKeyedSubscript:v21];
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  v22 = *MEMORY[0x277D85DE8];
}

- (void)extension
{
  v1 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v3 = [WeakRetained daemon];
    v4 = [v3 extensionManager];
    v1 = [v4 extensionForBundleIdentifier:v1[3] error:0];
  }

  return v1;
}

- (void)assertAndUpdateWithCompletion:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_pendingAssertion)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_pendingAssertion = 1;
    os_unfair_lock_unlock(&self->_lock);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__HDAppExtensionAssertion_assertAndUpdateWithCompletion___block_invoke;
    aBlock[3] = &unk_278620608;
    aBlock[4] = self;
    v26 = v4;
    v4 = _Block_copy(aBlock);
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v6 = [WeakRetained daemon];
    v7 = [v6 extensionManager];
    bundleIdentifier = self->_bundleIdentifier;
    v24 = 0;
    v9 = [v7 extensionForBundleIdentifier:bundleIdentifier error:&v24];
    v10 = v24;

    if (v9)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __57__HDAppExtensionAssertion_assertAndUpdateWithCompletion___block_invoke_300;
      v20[3] = &unk_278613150;
      v21 = v9;
      v22 = self;
      v23 = v4;
      [v21 connectWithCompletionHandler:v20];
    }

    else
    {
      [(HDAppExtensionAssertion *)self _incrementErrorCount];
      v11 = [MEMORY[0x277CC1E80] defaultWorkspace];
      v12 = [v11 applicationIsInstalled:self->_bundleIdentifier];

      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC288];
      v14 = *MEMORY[0x277CCC288];
      if (v12)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v19 = self->_bundleIdentifier;
          *buf = 138543618;
          v28 = v19;
          v29 = 2114;
          v30 = v10;
          _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "Failed to assert app extension: '%{public}@' with error: %{public}@", buf, 0x16u);
        }

        (*(v4 + 2))(v4, 0, 1);
      }

      else
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = self->_bundleIdentifier;
          *buf = 138543362;
          v28 = v15;
          _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "Failed to assert app extesnion: '%{public}@' since the app has been uninstalled.", buf, 0xCu);
        }

        v16 = objc_loadWeakRetained(&self->_profile);
        v17 = [v16 appSubscriptionManager];
        [v17 removeBundleID:self->_bundleIdentifier];

        (*(v4 + 2))(v4, 0, 0);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __57__HDAppExtensionAssertion_assertAndUpdateWithCompletion___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  *(*(a1 + 32) + 9) = 0;
  *(*(a1 + 32) + 96) = CFAbsoluteTimeGetCurrent();
  os_unfair_lock_unlock((*(a1 + 32) + 12));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_incrementErrorCount
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 12));
    ++*(a1 + 104);
    os_unfair_lock_unlock((a1 + 12));
    v2 = _Block_copy(*(a1 + 32));
    if (v2)
    {
      v3 = v2;
      v2[2]();
      v2 = v3;
    }
  }
}

void __57__HDAppExtensionAssertion_assertAndUpdateWithCompletion___block_invoke_300(uint64_t a1, int a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC288];
  v7 = *MEMORY[0x277CCC288];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = v6;
      v10 = [v8 extensionIdentifier];
      *buf = 138543362;
      v36 = v10;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_INFO, "Connected to app extension: '%{public}@'", buf, 0xCu);
    }

    v11 = (a1 + 40);
    objc_initWeak(buf, *(a1 + 40));
    os_unfair_lock_lock((*(a1 + 40) + 12));
    [(HDAppExtensionAssertion *)*(a1 + 40) _lock_cancelTimeoutTimers];
    v12 = *(a1 + 40);
    if (*(v12 + 8))
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 14.0;
    }

    if (*(*(a1 + 40) + 8))
    {
      v14 = 1.0;
    }

    else
    {
      v14 = 15.0;
    }

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __57__HDAppExtensionAssertion_assertAndUpdateWithCompletion___block_invoke_301;
    v33[3] = &unk_278616F38;
    objc_copyWeak(&v34, buf);
    v15 = [(HDAppExtensionAssertion *)v12 _newTimerWithDuration:v33 handler:v13];
    v16 = *(*v11 + 80);
    *(*v11 + 80) = v15;

    v17 = *v11;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __57__HDAppExtensionAssertion_assertAndUpdateWithCompletion___block_invoke_2;
    v30[3] = &unk_2786177F8;
    v31 = *(a1 + 32);
    objc_copyWeak(&v32, buf);
    v18 = [(HDAppExtensionAssertion *)v17 _newTimerWithDuration:v30 handler:v14];
    v19 = *(*v11 + 72);
    *(*v11 + 72) = v18;

    v20 = [*(*v11 + 56) copy];
    [*(*(a1 + 40) + 56) removeAllObjects];
    *(*(a1 + 40) + 104) = 0;
    os_unfair_lock_unlock((*(a1 + 40) + 12));
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __57__HDAppExtensionAssertion_assertAndUpdateWithCompletion___block_invoke_303;
    v27[3] = &unk_278620630;
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    v28 = v21;
    v29 = v22;
    [v20 enumerateKeysAndObjectsUsingBlock:v27];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&v34);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 32);
      v25 = v6;
      v26 = [v24 extensionIdentifier];
      *buf = 138543618;
      v36 = v26;
      v37 = 2114;
      v38 = v5;
      _os_log_error_impl(&dword_228986000, v25, OS_LOG_TYPE_ERROR, "Failed to connect to app extension: '%{public}@' with error: %{public}@", buf, 0x16u);
    }

    [(HDAppExtensionAssertion *)*(a1 + 40) _incrementErrorCount];
  }

  (*(*(a1 + 48) + 16))();

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_lock_cancelTimeoutTimers
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 12));
    v2 = *(a1 + 72);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(a1 + 72);
      *(a1 + 72) = 0;
    }

    v4 = *(a1 + 80);
    if (v4)
    {
      dispatch_source_cancel(v4);
      v5 = *(a1 + 80);
      *(a1 + 80) = 0;
    }
  }
}

void __57__HDAppExtensionAssertion_assertAndUpdateWithCompletion___block_invoke_301(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [(HDAppExtensionAssertion *)WeakRetained extension];
    [v2 notifyExtensionOfUpcomingTimeout];

    v3 = _Block_copy(v5[5]);
    v4 = v3;
    if (v3)
    {
      (*(v3 + 2))(v3);
    }

    WeakRetained = v5;
  }
}

- (NSObject)_newTimerWithDuration:(double)a3 handler:
{
  if (!a1)
  {
    return 0;
  }

  v4 = *(a1 + 88);
  v5 = a2;
  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v4);
  v7 = dispatch_time(0, (a3 * 1000000000.0));
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  dispatch_source_set_event_handler(v6, v5);

  dispatch_resume(v6);
  return v6;
}

void __57__HDAppExtensionAssertion_assertAndUpdateWithCompletion___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC288];
  if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 extensionIdentifier];
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_INFO, "Invalidating app extension assertion due to timeout for '%{public}@'", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(HDAppExtensionAssertion *)WeakRetained _invalidate];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_invalidate
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 12));
    if (*(a1 + 10))
    {

      os_unfair_lock_unlock((a1 + 12));
    }

    else
    {
      *(a1 + 9) = 256;
      [(HDAppExtensionAssertion *)a1 _lock_cancelTimeoutTimers];
      os_unfair_lock_unlock((a1 + 12));
      v2 = [(HDAppExtensionAssertion *)a1 extension];
      [v2 disconnect];

      v3 = [a1 delegate];
      [v3 appExtensionAssertionDidInvalidate:a1];
    }
  }
}

void __57__HDAppExtensionAssertion_assertAndUpdateWithCompletion___block_invoke_303(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  (*(a3 + 16))(a3);
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC288];
  if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 extensionIdentifier];
    *v18 = 138543618;
    *&v18[4] = v9;
    *&v18[12] = 2114;
    *&v18[14] = v5;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_INFO, "Updating app extension: '%{public}@' for data type code: '%{public}@'", v18, 0x16u);
  }

  v10 = *(a1 + 40);
  v11 = [v5 integerValue];
  if (v10)
  {
    v12 = v11;
    v13 = [MEMORY[0x277CCD8D8] dataTypeWithCode:v11];
    if (v13)
    {
      v14 = [(HDAppExtensionAssertion *)v10 extension];
      v15 = v14;
      if (v14)
      {
        *v18 = MEMORY[0x277D85DD0];
        *&v18[8] = 3221225472;
        *&v18[16] = __58__HDAppExtensionAssertion__notifyAppExtensionForDataType___block_invoke;
        v19 = &unk_278620658;
        v20 = v10;
        v23 = v12;
        v16 = v14;
        v21 = v16;
        v22 = v13;
        [v16 notifyExtensionOfUpdateForSampleType:v22 completionHandler:v18];
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)invalidateForDataType:(int64_t)a3 anchor:(id)a4
{
  v11 = a4;
  if (!v11)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HDAppExtensionAssertion.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"anchor != nil"}];
  }

  os_unfair_lock_lock(&self->_lock);
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v8 = [(NSMutableDictionary *)self->_pendingDataTypeCodesToAnchors objectForKeyedSubscript:v7];
  if ([v8 compare:v11] != 1)
  {
    [(NSMutableDictionary *)self->_pendingDataTypeCodesToAnchors removeObjectForKey:v7];
    [(NSMutableDictionary *)self->_pendingAssertionCompletions removeObjectForKey:v7];
  }

  if (self->_invalidated)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v9 = [(NSMutableDictionary *)self->_pendingDataTypeCodesToAnchors count];
    os_unfair_lock_unlock(&self->_lock);
    if (!v9)
    {
      [(HDAppExtensionAssertion *)self _invalidate];
    }
  }
}

- (BOOL)shouldAssert
{
  os_unfair_lock_lock(&self->_lock);
  v3 = !self->_pendingAssertion;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (double)nextAssertionAttempt
{
  os_unfair_lock_lock(&self->_lock);
  lastAssertionAttempt = self->_lastAssertionAttempt;
  v4 = lastAssertionAttempt + exp2(self->_connectionErrorCount) * 15.0;
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

void __58__HDAppExtensionAssertion__notifyAppExtensionForDataType___block_invoke(void *a1, int a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a1[4];
  if (a2)
  {
    os_unfair_lock_lock(v6 + 3);
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:a1[7]];
    v8 = [*(a1[4] + 64) objectForKeyedSubscript:v7];
    [*(a1[4] + 64) removeObjectForKey:v7];
    os_unfair_lock_unlock((a1[4] + 12));
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC288];
    if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_INFO))
    {
      v10 = a1[5];
      v11 = v9;
      v12 = [v10 extensionIdentifier];
      *buf = 138543874;
      v24 = v12;
      v25 = 2114;
      v26 = v7;
      v27 = 2114;
      v28 = v8;
      _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_INFO, "Updated app extension: '%{public}@' with data type code: %{public}@ and anchor: %{public}@", buf, 0x20u);
    }

    v13 = [objc_alloc(MEMORY[0x277CCD858]) initWithDataAnchor:v8 associationAnchor:0];
    WeakRetained = objc_loadWeakRetained((a1[4] + 48));
    v15 = [WeakRetained appSubscriptionManager];
    v16 = *(a1[4] + 24);
    v17 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{a1[6], 0}];
    v18 = [MEMORY[0x277CCABB0] numberWithLong:time(0)];
    [v15 ackForBundleID:v16 dataTypes:v17 anchor:v13 ackTime:v18];
  }

  else
  {
    [(HDAppExtensionAssertion *)v6 _incrementErrorCount];
    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC288];
    if (!os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v21 = a1[5];
    v7 = v19;
    v22 = [v21 extensionIdentifier];
    *buf = 138543618;
    v24 = v22;
    v25 = 2114;
    v26 = v5;
    _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "Failed to update app extension: '%{public}@' with error: %{public}@", buf, 0x16u);
  }

LABEL_7:
  v20 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_unitTest_pendingAssertionCompletionsCount
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_pendingAssertionCompletions count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (id)_unitTest_pendingDataTypeCodesToAnchors
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_pendingDataTypeCodesToAnchors copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (int64_t)_unitTest_connectionErrorCount
{
  os_unfair_lock_lock(&self->_lock);
  connectionErrorCount = self->_connectionErrorCount;
  os_unfair_lock_unlock(&self->_lock);
  return connectionErrorCount;
}

- (double)_unitTest_lastAssertionAttempt
{
  os_unfair_lock_lock(&self->_lock);
  lastAssertionAttempt = self->_lastAssertionAttempt;
  os_unfair_lock_unlock(&self->_lock);
  return lastAssertionAttempt;
}

- (BOOL)_unitTest_invalidated
{
  os_unfair_lock_lock(&self->_lock);
  invalidated = self->_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  return invalidated;
}

- (HDAppExtensionAssertionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end