@interface NTKHeartRateQueryManager
+ (id)sharedInstance;
- (BOOL)_alreadyObserving;
- (BOOL)_haveObservers;
- (BOOL)canUseFutureSamples;
- (HKHeartRateSummary)latestHeartRateSummary;
- (HKQuantitySample)latestHeartRateSample;
- (id)_init;
- (void)_enumerateObserversUsingBlock:(id)a3;
- (void)_findLatestHeartRateSample:(id)a3;
- (void)_handleDeviceLockChange;
- (void)_notifyObserversOfLatestSample;
- (void)_notifyObserversOfLatestSummary;
- (void)_queue_clearHeartRateSampleQueryWithError:(id)a3;
- (void)_queue_clearHeartRateSummaryQueryWithError:(id)a3;
- (void)_queue_retrieveLatestHeartRateOnce;
- (void)_queue_startObservingHeartRate;
- (void)_queue_startObservingHeartRateSummary;
- (void)_queue_stopObservingHeartRate;
- (void)_queue_stopObservingHeartRateSummary;
- (void)_startObserving;
- (void)_stopObserving;
- (void)_stopObservingIfNeeded;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)removeObserver:(id)a3;
- (void)setLatestHeartRateSample:(id)a3;
- (void)setLatestHeartRateSummary:(id)a3;
- (void)startObservingIfNeeded;
@end

@implementation NTKHeartRateQueryManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_20 != -1)
  {
    +[NTKHeartRateQueryManager sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_6;

  return v3;
}

void __42__NTKHeartRateQueryManager_sharedInstance__block_invoke()
{
  v0 = [[NTKHeartRateQueryManager alloc] _init];
  v1 = sharedInstance___sharedInstance_6;
  sharedInstance___sharedInstance_6 = v0;
}

- (id)_init
{
  v15.receiver = self;
  v15.super_class = NTKHeartRateQueryManager;
  v2 = [(NTKHeartRateQueryManager *)&v15 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBBAE8] currentDevice];
    v2->_deviceIsLocked = [v3 isLocked];

    v4 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v4;

    v2->_observersLock._os_unfair_lock_opaque = 0;
    v6 = dispatch_queue_create("com.apple.nanotimekit.heart-rate.healthQueue", 0);
    healthQueue = v2->_healthQueue;
    v2->_healthQueue = v6;

    v8 = dispatch_queue_create("com.apple.nanotimekit.heart-rate.sampleQueue", MEMORY[0x277D85CD8]);
    sampleQueue = v2->_sampleQueue;
    v2->_sampleQueue = v8;

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v2 selector:sel__handleDeviceLockChange name:*MEMORY[0x277CBB690] object:0];

    v11 = v2->_healthQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__NTKHeartRateQueryManager__init__block_invoke;
    block[3] = &unk_27877DB10;
    v14 = v2;
    dispatch_async(v11, block);
  }

  return v2;
}

void __33__NTKHeartRateQueryManager__init__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCD4D8] fiui_sharedHealthStoreForCarousel];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  os_unfair_lock_lock(&self->_observersLock);
  [(NSHashTable *)self->_observers removeAllObjects];
  os_unfair_lock_unlock(&self->_observersLock);
  if (self->_heartRateQuery)
  {
    [(HKHealthStore *)self->_healthStore stopQuery:?];
    heartRateQuery = self->_heartRateQuery;
    self->_heartRateQuery = 0;
  }

  if (self->_heartRateSummaryQuery)
  {
    [(HKHealthStore *)self->_healthStore stopQuery:?];
    heartRateSummaryQuery = self->_heartRateSummaryQuery;
    self->_heartRateSummaryQuery = 0;
  }

  v6.receiver = self;
  v6.super_class = NTKHeartRateQueryManager;
  [(NTKHeartRateQueryManager *)&v6 dealloc];
}

- (void)_handleDeviceLockChange
{
  v3 = _NTKLoggingObjectForDomain(38, "NTKLoggingDomainHeartRate");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "NTKHeartRateQueryManager: received CLKDeviceLockStateChangedNotification", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__NTKHeartRateQueryManager__handleDeviceLockChange__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __51__NTKHeartRateQueryManager__handleDeviceLockChange__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBBAE8] currentDevice];
  v3 = [v2 isLocked];

  *(*(a1 + 32) + 8) = v3;
  if ((v3 & 1) == 0)
  {
    [*(a1 + 32) startObservingIfNeeded];
    [*(a1 + 32) _notifyObserversOfLatestSample];
    v4 = *(a1 + 32);

    [v4 _notifyObserversOfLatestSummary];
  }
}

- (void)_queue_clearHeartRateSampleQueryWithError:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_healthQueue);
  v5 = _NTKLoggingObjectForDomain(38, "NTKLoggingDomainHeartRate");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [NTKHeartRateQueryManager _queue_clearHeartRateSampleQueryWithError:];
  }

  heartRateQuery = self->_heartRateQuery;
  self->_heartRateQuery = 0;
}

- (void)_queue_clearHeartRateSummaryQueryWithError:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_healthQueue);
  v5 = _NTKLoggingObjectForDomain(38, "NTKLoggingDomainHeartRate");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [NTKHeartRateQueryManager _queue_clearHeartRateSummaryQueryWithError:];
  }

  heartRateSummaryQuery = self->_heartRateSummaryQuery;
  self->_heartRateSummaryQuery = 0;
}

- (void)_queue_startObservingHeartRateSummary
{
  v3 = _NTKLoggingObjectForDomain(38, "NTKLoggingDomainHeartRate");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "NTKHeartRateQueryManager: start observing heart rate summary query", buf, 2u);
  }

  dispatch_assert_queue_V2(self->_healthQueue);
  if (self->_heartRateSummaryQuery)
  {
    v4 = _NTKLoggingObjectForDomain(38, "NTKLoggingDomainHeartRate");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [NTKHeartRateQueryManager _queue_startObservingHeartRateSummary];
    }
  }

  else
  {
    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __65__NTKHeartRateQueryManager__queue_startObservingHeartRateSummary__block_invoke;
    aBlock[3] = &unk_2787860F0;
    objc_copyWeak(&v9, buf);
    v5 = _Block_copy(aBlock);
    v6 = [objc_alloc(MEMORY[0x277CCD508]) initWithUpdateHandler:v5];
    heartRateSummaryQuery = self->_heartRateSummaryQuery;
    self->_heartRateSummaryQuery = v6;

    [(HKHealthStore *)self->_healthStore executeQuery:self->_heartRateSummaryQuery];
    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }
}

void __65__NTKHeartRateQueryManager__queue_startObservingHeartRateSummary__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v7)
    {
      v10 = WeakRetained[2];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __65__NTKHeartRateQueryManager__queue_startObservingHeartRateSummary__block_invoke_2;
      v17[3] = &unk_27877E438;
      v17[4] = WeakRetained;
      v18 = v7;
      dispatch_sync(v10, v17);
    }

    else
    {
      v11 = _NTKLoggingObjectForDomain(38, "NTKLoggingDomainHeartRate");
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (v12)
        {
          v13 = [v6 heartRateDateInterval];
          v14 = [v13 startDate];
          v15 = [v6 heartRateDateInterval];
          v16 = [v15 endDate];
          *buf = 138543618;
          v20 = v14;
          v21 = 2114;
          v22 = v16;
          _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "NTKHeartRateQueryManager: Updated with latest heart rate summary for %{public}@ to %{public}@", buf, 0x16u);
        }

        [v9 setLatestHeartRateSummary:v6];
        [v9 _notifyObserversOfLatestSummary];
      }

      else
      {
        if (v12)
        {
          *buf = 0;
          _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "NTKHeartRateQueryManager: Updated with nil heart rate summary.", buf, 2u);
        }
      }
    }
  }
}

- (void)_queue_stopObservingHeartRateSummary
{
  v3 = _NTKLoggingObjectForDomain(38, "NTKLoggingDomainHeartRate");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "NTKHeartRateQueryManager: stop observering heart rate summary query", buf, 2u);
  }

  dispatch_assert_queue_V2(self->_healthQueue);
  if (self->_heartRateSummaryQuery)
  {
    [(HKHealthStore *)self->_healthStore stopQuery:?];
    heartRateSummaryQuery = self->_heartRateSummaryQuery;
    self->_heartRateSummaryQuery = 0;

    v5 = _NTKLoggingObjectForDomain(14, "NTKLoggingDomainDebug");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "NTKHeartRateQueryManager: stopped heart rate summary query", v6, 2u);
    }
  }

  else
  {
    v5 = _NTKLoggingObjectForDomain(38, "NTKLoggingDomainHeartRate");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [NTKHeartRateQueryManager _queue_stopObservingHeartRateSummary];
    }
  }
}

- (void)_notifyObserversOfLatestSummary
{
  v3 = [(NTKHeartRateQueryManager *)self latestHeartRateSummary];
  v4 = v3;
  if (v3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __59__NTKHeartRateQueryManager__notifyObserversOfLatestSummary__block_invoke;
    v5[3] = &unk_27877E438;
    v5[4] = self;
    v6 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

void __59__NTKHeartRateQueryManager__notifyObserversOfLatestSummary__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __59__NTKHeartRateQueryManager__notifyObserversOfLatestSummary__block_invoke_2;
  v2[3] = &unk_278786118;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _enumerateObserversUsingBlock:v2];
}

void __59__NTKHeartRateQueryManager__notifyObserversOfLatestSummary__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 manager:*(a1 + 32) receivedLatestHeartRateSummary:*(a1 + 40)];
  }
}

- (void)_enumerateObserversUsingBlock:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_observersLock);
  v5 = [(NSHashTable *)self->_observers allObjects];
  os_unfair_lock_unlock(&self->_observersLock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v13 + 1) + 8 * v10);
      v12 = 0;
      v4[2](v4, v11, &v12);
      if (v12)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)startObservingIfNeeded
{
  if ([(NTKHeartRateQueryManager *)self _alreadyObserving])
  {
    v3 = _NTKLoggingObjectForDomain(38, "NTKLoggingDomainHeartRate");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 0;
      v4 = "NTKHeartRateQueryManager: attempted to start observing but we're already observing";
      v5 = &v8;
LABEL_10:
      _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (![(NTKHeartRateQueryManager *)self _haveObservers])
  {
    v3 = _NTKLoggingObjectForDomain(38, "NTKLoggingDomainHeartRate");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "NTKHeartRateQueryManager: attempted to start observing but don't have any observers to notify";
      v5 = buf;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (self->_deviceIsLocked)
  {
    v3 = _NTKLoggingObjectForDomain(38, "NTKLoggingDomainHeartRate");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 0;
      v4 = "NTKHeartRateQueryManager: attempted to start observing but the device is locked— waiting for unlock";
      v5 = &v6;
      goto LABEL_10;
    }

LABEL_11:

    return;
  }

  [(NTKHeartRateQueryManager *)self _startObserving];
}

- (void)_stopObservingIfNeeded
{
  if ([(NTKHeartRateQueryManager *)self _alreadyObserving])
  {

    [(NTKHeartRateQueryManager *)self _stopObserving];
  }

  else
  {
    v3 = _NTKLoggingObjectForDomain(38, "NTKLoggingDomainHeartRate");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "NTKHeartRateQueryManager: attempted to stop observing but we weren't observing", v4, 2u);
    }
  }
}

- (void)_startObserving
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v7 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__NTKHeartRateQueryManager__startObserving__block_invoke;
  v5[3] = &unk_278786140;
  v5[4] = v6;
  [(NTKHeartRateQueryManager *)self _enumerateObserversUsingBlock:v5];
  healthQueue = self->_healthQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__NTKHeartRateQueryManager__startObserving__block_invoke_2;
  block[3] = &unk_278786168;
  block[4] = self;
  block[5] = v6;
  dispatch_async(healthQueue, block);
  _Block_object_dispose(v6, 8);
}

uint64_t __43__NTKHeartRateQueryManager__startObserving__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void __43__NTKHeartRateQueryManager__startObserving__block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2[5])
  {
    [v2 _queue_startObservingHeartRate];
    v2 = *(a1 + 32);
  }

  [v2 _queue_retrieveLatestHeartRateOnce];
  v3 = _NTKLoggingObjectForDomain(38, "NTKLoggingDomainHeartRate");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(*(a1 + 40) + 8) + 24);
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "NTKHeartRateQueryManager: shouldStartQueryingSummary? %d", v6, 8u);
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v5 = *(a1 + 32);
    if (!v5[6])
    {
      [v5 _queue_startObservingHeartRateSummary];
    }
  }
}

- (void)_stopObserving
{
  healthQueue = self->_healthQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__NTKHeartRateQueryManager__stopObserving__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(healthQueue, block);
}

void __42__NTKHeartRateQueryManager__stopObserving__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) _haveObservers] & 1) == 0)
  {
    [*(a1 + 32) _queue_stopObservingHeartRate];
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 1;
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__NTKHeartRateQueryManager__stopObserving__block_invoke_2;
  v3[3] = &unk_278786140;
  v3[4] = &v4;
  [v2 _enumerateObserversUsingBlock:v3];
  if (*(v5 + 24) == 1)
  {
    [*(a1 + 32) _queue_stopObservingHeartRateSummary];
  }

  _Block_object_dispose(&v4, 8);
}

uint64_t __42__NTKHeartRateQueryManager__stopObserving__block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

- (BOOL)_alreadyObserving
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  healthQueue = self->_healthQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__NTKHeartRateQueryManager__alreadyObserving__block_invoke;
  v5[3] = &unk_278780D18;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(healthQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __45__NTKHeartRateQueryManager__alreadyObserving__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 40) != 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__NTKHeartRateQueryManager__alreadyObserving__block_invoke_2;
  v5[3] = &unk_278786140;
  v5[4] = &v6;
  [v2 _enumerateObserversUsingBlock:v5];
  if (*(v7 + 24) == 1)
  {
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 24) == 1 && *(*(a1 + 32) + 48) != 0;
    *(v3 + 24) = v4;
  }

  _Block_object_dispose(&v6, 8);
}

uint64_t __45__NTKHeartRateQueryManager__alreadyObserving__block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (void)addObserver:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_observersLock);
    if ([(NSHashTable *)self->_observers containsObject:v4])
    {
      os_unfair_lock_unlock(&self->_observersLock);
    }

    else
    {
      v5 = _NTKLoggingObjectForDomain(38, "NTKLoggingDomainHeartRate");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 138543362;
        *&v7[4] = objc_opt_class();
        v6 = *&v7[4];
        _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "NTKHeartRateQueryManager: Adding observer %{public}@", v7, 0xCu);
      }

      [(NSHashTable *)self->_observers addObject:v4];
      os_unfair_lock_unlock(&self->_observersLock);
      [(NTKHeartRateQueryManager *)self _notifyObserversOfLatestSample];
      [(NTKHeartRateQueryManager *)self _notifyObserversOfLatestSummary];
    }

    [(NTKHeartRateQueryManager *)self startObservingIfNeeded];
  }
}

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock(&self->_observersLock);
    [(NSHashTable *)self->_observers removeObject:v4];

    os_unfair_lock_unlock(&self->_observersLock);

    [(NTKHeartRateQueryManager *)self _stopObservingIfNeeded];
  }
}

- (BOOL)_haveObservers
{
  os_unfair_lock_lock(&self->_observersLock);
  v3 = [(NSHashTable *)self->_observers count]!= 0;
  os_unfair_lock_unlock(&self->_observersLock);
  return v3;
}

- (void)_notifyObserversOfLatestSample
{
  v3 = [(NTKHeartRateQueryManager *)self latestHeartRateSample];
  v4 = v3;
  if (v3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __58__NTKHeartRateQueryManager__notifyObserversOfLatestSample__block_invoke;
    v5[3] = &unk_27877E438;
    v5[4] = self;
    v6 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

void __58__NTKHeartRateQueryManager__notifyObserversOfLatestSample__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __58__NTKHeartRateQueryManager__notifyObserversOfLatestSample__block_invoke_2;
  v2[3] = &unk_278786118;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _enumerateObserversUsingBlock:v2];
}

- (void)_queue_startObservingHeartRate
{
  v27[2] = *MEMORY[0x277D85DE8];
  v3 = _NTKLoggingObjectForDomain(38, "NTKLoggingDomainHeartRate");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "NTKHeartRateQueryManager: start observing heart rate query", &buf, 2u);
  }

  dispatch_assert_queue_V2(self->_healthQueue);
  if (!self->_heartRateQuery)
  {
    objc_initWeak(&buf, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__NTKHeartRateQueryManager__queue_startObservingHeartRate__block_invoke;
    aBlock[3] = &unk_278786190;
    objc_copyWeak(&v24, &buf);
    v4 = _Block_copy(aBlock);
    v5 = MEMORY[0x277CCAC30];
    v6 = [MEMORY[0x277CBEAA8] date];
    v7 = [v5 predicateWithFormat:@"%K >= %@", *MEMORY[0x277CCC6C8], v6];

    v8 = [MEMORY[0x277CCD838] _predicateForObjectsFromAppleWatches];
    v9 = MEMORY[0x277CCD838];
    v10 = [MEMORY[0x277CCDA00] _blePeripheralSource];
    v11 = [v9 predicateForObjectsFromSource:v10];

    v12 = MEMORY[0x277CCA920];
    v27[0] = v8;
    v27[1] = v11;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v14 = [v12 orPredicateWithSubpredicates:v13];

    v15 = MEMORY[0x277CCA920];
    v26[0] = v14;
    v26[1] = v7;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    v17 = [v15 andPredicateWithSubpredicates:v16];

    v18 = objc_alloc(MEMORY[0x277CCCFF0]);
    v19 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
    v20 = [MEMORY[0x277CCD840] latestAnchor];
    v21 = [v18 initWithType:v19 predicate:v17 anchor:v20 limit:0 resultsHandler:v4];
    heartRateQuery = self->_heartRateQuery;
    self->_heartRateQuery = v21;

    [(HKAnchoredObjectQuery *)self->_heartRateQuery setShouldSuppressDataCollection:1];
    [(HKAnchoredObjectQuery *)self->_heartRateQuery setUpdateHandler:v4];
    [(HKHealthStore *)self->_healthStore executeQuery:self->_heartRateQuery];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&buf);
  }
}

void __58__NTKHeartRateQueryManager__queue_startObservingHeartRate__block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    if (v9)
    {
      v12 = WeakRetained[2];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __58__NTKHeartRateQueryManager__queue_startObservingHeartRate__block_invoke_2;
      v15[3] = &unk_27877E438;
      v15[4] = WeakRetained;
      v16 = v9;
      dispatch_sync(v12, v15);
    }

    else
    {
      v13 = [v8 count];
      v14 = _NTKLoggingObjectForDomain(38, "NTKLoggingDomainHeartRate");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v18 = v13;
        _os_log_impl(&dword_22D9C5000, v14, OS_LOG_TYPE_DEFAULT, "NTKHeartRateQueryManager: received %lu sample objects", buf, 0xCu);
      }

      if (v13)
      {
        [v11 setHeartRateSamples:v8];
      }
    }
  }
}

- (void)_queue_stopObservingHeartRate
{
  v3 = _NTKLoggingObjectForDomain(38, "NTKLoggingDomainHeartRate");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "NTKHeartRateQueryManager: stop observering heart rate query", buf, 2u);
  }

  dispatch_assert_queue_V2(self->_healthQueue);
  if (self->_heartRateQuery)
  {
    [(HKHealthStore *)self->_healthStore stopQuery:?];
    heartRateQuery = self->_heartRateQuery;
    self->_heartRateQuery = 0;

    v5 = _NTKLoggingObjectForDomain(14, "NTKLoggingDomainDebug");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "NTKHeartRateQueryManager: stopped heart rate query", v6, 2u);
    }
  }

  else
  {
    v5 = _NTKLoggingObjectForDomain(38, "NTKLoggingDomainHeartRate");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [NTKHeartRateQueryManager _queue_stopObservingHeartRate];
    }
  }
}

- (void)_queue_retrieveLatestHeartRateOnce
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = _NTKLoggingObjectForDomain(38, "NTKLoggingDomainHeartRate");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "NTKHeartRateQueryManager: requesting latest heart rate", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = objc_alloc(MEMORY[0x277CCD8D0]);
  v5 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
  v6 = [MEMORY[0x277CCD838] _predicateForObjectsFromAppleWatches];
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277CCCD50] ascending:0];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__NTKHeartRateQueryManager__queue_retrieveLatestHeartRateOnce__block_invoke;
  v10[3] = &unk_2787861B8;
  objc_copyWeak(&v11, buf);
  v9 = [v4 initWithSampleType:v5 predicate:v6 limit:1 sortDescriptors:v8 resultsHandler:v10];

  [(HKHealthStore *)self->_healthStore executeQuery:v9];
  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __62__NTKHeartRateQueryManager__queue_retrieveLatestHeartRateOnce__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _NTKLoggingObjectForDomain(38, "NTKLoggingDomainHeartRate");
  v11 = v10;
  if (!v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __62__NTKHeartRateQueryManager__queue_retrieveLatestHeartRateOnce__block_invoke_cold_1(v9, v11);
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = [v8 count];
    _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "NTKHeartRateQueryManager: retrieve once: received %lu sample objects", &v13, 0xCu);
  }

  if ([v8 count])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v11 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained _findLatestHeartRateSample:v8];
    }

LABEL_9:
  }
}

- (void)_findLatestHeartRateSample:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain(38, "NTKLoggingDomainHeartRate");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "NTKHeartRateQueryManager: finding latest heart rate sample", buf, 2u);
  }

  v6 = [(NTKHeartRateQueryManager *)self latestHeartRateSample];
  if ([(NTKHeartRateQueryManager *)self canUseFutureSamples])
  {
    v7 = [v4 lastObject];

    v6 = v7;
    goto LABEL_22;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (!v9)
  {

    goto LABEL_24;
  }

  v10 = v9;
  v27 = self;
  v28 = v4;
  v11 = 0;
  v12 = *v30;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v30 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v29 + 1) + 8 * i);
      v15 = [v14 startDate];
      [v15 timeIntervalSinceNow];
      v17 = v16;

      if (v17 > 60.0)
      {
        v18 = _NTKLoggingObjectForDomain(38, "NTKLoggingDomainHeartRate");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = [v14 startDate];
          v20 = [v14 quantity];
          *buf = 138543618;
          v34 = v19;
          v35 = 2112;
          v36 = v20;
          _os_log_error_impl(&dword_22D9C5000, v18, OS_LOG_TYPE_ERROR, "NTKHeartRateQueryManager: ignoring heart rate with future date: %{public}@ (%@).", buf, 0x16u);
        }

LABEL_18:

        continue;
      }

      if (v6)
      {
        v21 = [v14 startDate];
        v22 = [v6 startDate];
        [v21 timeIntervalSinceDate:v22];
        v24 = v23;

        if (v24 <= 2.22044605e-16)
        {
          continue;
        }
      }

      v25 = v14;

      v18 = _NTKLoggingObjectForDomain(38, "NTKLoggingDomainHeartRate");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v25 startDate];
        *buf = 138543362;
        v34 = v26;
        _os_log_impl(&dword_22D9C5000, v18, OS_LOG_TYPE_DEFAULT, "NTKHeartRateQueryManager: updated latest heart rate sample: %{public}@", buf, 0xCu);
      }

      v11 = 1;
      v6 = v25;
      goto LABEL_18;
    }

    v10 = [v8 countByEnumeratingWithState:&v29 objects:v37 count:16];
  }

  while (v10);

  self = v27;
  v4 = v28;
  if (v11)
  {
LABEL_22:
    [(NTKHeartRateQueryManager *)self setLatestHeartRateSample:v6];
    [(NTKHeartRateQueryManager *)self _notifyObserversOfLatestSample];
  }

LABEL_24:
}

- (HKQuantitySample)latestHeartRateSample
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__43;
  v10 = __Block_byref_object_dispose__43;
  v11 = 0;
  sampleQueue = self->_sampleQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__NTKHeartRateQueryManager_latestHeartRateSample__block_invoke;
  v5[3] = &unk_278780D18;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(sampleQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setLatestHeartRateSample:(id)a3
{
  v4 = a3;
  sampleQueue = self->_sampleQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__NTKHeartRateQueryManager_setLatestHeartRateSample___block_invoke;
  v7[3] = &unk_27877E438;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(sampleQueue, v7);
}

- (HKHeartRateSummary)latestHeartRateSummary
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__43;
  v10 = __Block_byref_object_dispose__43;
  v11 = 0;
  sampleQueue = self->_sampleQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__NTKHeartRateQueryManager_latestHeartRateSummary__block_invoke;
  v5[3] = &unk_278780D18;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(sampleQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setLatestHeartRateSummary:(id)a3
{
  v4 = a3;
  sampleQueue = self->_sampleQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__NTKHeartRateQueryManager_setLatestHeartRateSummary___block_invoke;
  v7[3] = &unk_27877E438;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(sampleQueue, v7);
}

- (BOOL)canUseFutureSamples
{
  if (NTKInternalBuild(self, a2))
  {
    if (![(NTKHeartRateQueryManager *)self hasCheckedDefaults])
    {
      v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.NanoTimeKit"];
      self->_canUseFutureSamples = [v3 BOOLForKey:@"useFutureSamples"];
      [(NTKHeartRateQueryManager *)self setCheckedDefaults:1];
    }

    return self->_canUseFutureSamples;
  }

  else
  {
    return 0;
  }
}

void __62__NTKHeartRateQueryManager__queue_retrieveLatestHeartRateOnce__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "NTKHeartRateQueryManager: Error when attempting to retrieve the latest heart rate sample. %@", &v4, 0xCu);
}

@end