@interface HDAssertionManager
+ (id)_sharedBudgetTimerQueue;
- (BOOL)hasActiveAssertion:(id)a3;
- (BOOL)hasActiveAssertionForIdentifier:(id)a3;
- (BOOL)hasActiveOrPendingAssertions;
- (BOOL)takeAssertion:(id)a3 preNotificationBlock:(id)a4;
- (HDAssertionManager)init;
- (id)activeAssertionsForIdentifier:(id)a3;
- (id)allAssertionsForIdentifier:(id)a3;
- (id)ownerIdentifiersForAssertionIdentifier:(id)a3;
- (void)_budgetConsumptionTimerDidFire;
- (void)_lock_consumeBudgetsThenResetTimerWithIntermediateBlock:(uint64_t)a1;
- (void)_lock_consumeBudgetsThroughTime:(uint64_t)a1;
- (void)_lock_enumerateActiveAssertionsWithIdentifier:(void *)a3 handler:;
- (void)_lock_releaseAssertion:(uint64_t)a1;
- (void)_lock_resumeBudgetConsumption;
- (void)_lock_setBudgetConsumptionTimerWithStartTime:(uint64_t)a1;
- (void)_lock_suspendBudgetConsumption;
- (void)_postNotification:(void *)a3 forAssertion:;
- (void)_releaseAssertion:(id)a3;
- (void)addObserver:(id)a3 forAssertionIdentifier:(id)a4 queue:(id)a5;
- (void)dealloc;
- (void)invalidate;
- (void)removeObserver:(id)a3;
- (void)removeObserver:(id)a3 forAssertionIdentifier:(id)a4;
- (void)resumeBudgetConsumption;
- (void)suspendBudgetConsumption;
@end

@implementation HDAssertionManager

- (void)suspendBudgetConsumption
{
  os_unfair_lock_lock(&self->_lock);
  [(HDAssertionManager *)self _lock_suspendBudgetConsumption];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_suspendBudgetConsumption
{
  if (a1)
  {
    v2 = OUTLINED_FUNCTION_5(a1);
    os_unfair_lock_assert_owner(v2);
    if (*(v1 + 41))
    {
      *(v1 + 41) = 0;
      HKMachAbsoluteTimeGetCurrent();

      [(HDAssertionManager *)v1 _lock_consumeBudgetsThroughTime:v3];
    }
  }
}

- (HDAssertionManager)init
{
  v11.receiver = self;
  v11.super_class = HDAssertionManager;
  v2 = [(HDAssertionManager *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = HKCreateSerialDispatchQueue();
    notificationQueue = v3->_notificationQueue;
    v3->_notificationQueue = v4;

    v6 = +[HDAssertionManager _sharedBudgetTimerQueue];
    budgetTimerQueue = v3->_budgetTimerQueue;
    v3->_budgetTimerQueue = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    observerSetsByAssertionIdentifier = v3->_observerSetsByAssertionIdentifier;
    v3->_observerSetsByAssertionIdentifier = v8;

    v3->_consumeBudgets = 0;
  }

  return v3;
}

+ (id)_sharedBudgetTimerQueue
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HDAssertionManager__sharedBudgetTimerQueue__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v0;
  if (_sharedBudgetTimerQueue_onceToken != -1)
  {
    dispatch_once(&_sharedBudgetTimerQueue_onceToken, block);
  }

  v1 = _sharedBudgetTimerQueue_queue;

  return v1;
}

- (void)dealloc
{
  [(HDAssertionManager *)self invalidate];
  v3.receiver = self;
  v3.super_class = HDAssertionManager;
  [(HDAssertionManager *)&v3 dealloc];
}

- (BOOL)hasActiveOrPendingAssertions
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_assertionRecordsByIdentifier != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

uint64_t __45__HDAssertionManager__sharedBudgetTimerQueue__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  _sharedBudgetTimerQueue_queue = HKCreateSerialDispatchQueue();

  return MEMORY[0x2821F96F8]();
}

- (BOOL)hasActiveAssertionForIdentifier:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  os_unfair_lock_lock(&self->_lock);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__HDAssertionManager_hasActiveAssertionForIdentifier___block_invoke;
  v6[3] = &unk_2796BDBF0;
  v6[4] = &v7;
  [(HDAssertionManager *)self _lock_enumerateActiveAssertionsWithIdentifier:v4 handler:v6];
  os_unfair_lock_unlock(&self->_lock);
  LOBYTE(self) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return self;
}

uint64_t __54__HDAssertionManager_hasActiveAssertionForIdentifier___block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

- (BOOL)hasActiveAssertion:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 assertionIdentifier];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__HDAssertionManager_hasActiveAssertion___block_invoke;
  v8[3] = &unk_2796BDC18;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  [(HDAssertionManager *)self _lock_enumerateActiveAssertionsWithIdentifier:v5 handler:v8];

  os_unfair_lock_unlock(&self->_lock);
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

void __41__HDAssertionManager_hasActiveAssertion___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v13 = a2;
  v5 = [*(a1 + 32) ownerIdentifier];
  v6 = [v13 ownerIdentifier];
  v7 = v6;
  if (v5 == v6)
  {

    goto LABEL_6;
  }

  v8 = [v13 ownerIdentifier];
  if (!v8)
  {

    goto LABEL_8;
  }

  v9 = v8;
  v10 = [*(a1 + 32) ownerIdentifier];
  v11 = [v13 ownerIdentifier];
  v12 = [v10 isEqualToString:v11];

  if (v12)
  {
LABEL_6:
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

LABEL_8:
}

void __61__HDAssertionManager_ownerIdentifiersForAssertionIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 ownerIdentifier];
  [v2 addObject:v3];
}

- (BOOL)takeAssertion:(id)a3 preNotificationBlock:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  if (!self->_invalidated)
  {
    if (!self->_assertionRecordsByIdentifier)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      assertionRecordsByIdentifier = self->_assertionRecordsByIdentifier;
      self->_assertionRecordsByIdentifier = v9;
    }

    v11 = [v6 assertionIdentifier];
    v12 = [v6 _takeWithManager:self];
    if (v12 == 3)
    {
      _HKInitializeLogging();
      v22 = HKLogAssertions();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);

      if (!v23)
      {
LABEL_23:
        os_unfair_lock_unlock(&self->_lock);
        v8 = 0;
LABEL_24:

        goto LABEL_25;
      }

      v24 = HKLogAssertions();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v38 = v11;
        v39 = 2114;
        v40 = v6;
        _os_log_impl(&dword_25156C000, v24, OS_LOG_TYPE_INFO, "%{public}@: Cannot retake invalidated assertion %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v13 = v12;
      if (v12 == 2)
      {
        v14 = [(NSMutableDictionary *)self->_assertionRecordsByIdentifier objectForKeyedSubscript:v11];
        if (v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = [[_HDAssertionRecord alloc] initWithAssertionIdentifier:v11];
          v27 = self->_assertionRecordsByIdentifier;
          v28 = [v6 assertionIdentifier];
          [(NSMutableDictionary *)v27 setObject:v15 forKeyedSubscript:v28];

          if (!v15)
          {
            v16 = 0;
LABEL_10:
            v17 = [v16 containsObject:v6];
            v18 = v17;
            if (v17)
            {
              _HKInitializeLogging();
              v19 = HKLogAssertions();
              v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);

              if (!v20)
              {
LABEL_15:

                os_unfair_lock_unlock(&self->_lock);
                if ((v18 & 1) == 0)
                {
                  if (v7)
                  {
                    v7[2](v7);
                  }

                  [(HDAssertionManager *)self _postNotification:v11 forAssertion:?];
                }

                v8 = 1;
                goto LABEL_24;
              }

              v21 = HKLogAssertions();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                *buf = 138543618;
                v38 = v11;
                v39 = 2114;
                v40 = v6;
                _os_log_impl(&dword_25156C000, v21, OS_LOG_TYPE_INFO, "%{public}@: Assertion %{public}@ already taken", buf, 0x16u);
              }
            }

            else
            {
              v34[0] = MEMORY[0x277D85DD0];
              v34[1] = 3221225472;
              v34[2] = __57__HDAssertionManager_takeAssertion_preNotificationBlock___block_invoke;
              v34[3] = &unk_2796BDA28;
              v35 = v15;
              v29 = v6;
              v36 = v29;
              [(HDAssertionManager *)self _lock_consumeBudgetsThenResetTimerWithIntermediateBlock:v34];
              v30 = [(NSMutableDictionary *)self->_observerSetsByAssertionIdentifier objectForKeyedSubscript:v11];
              v31[0] = MEMORY[0x277D85DD0];
              v31[1] = 3221225472;
              v31[2] = __57__HDAssertionManager_takeAssertion_preNotificationBlock___block_invoke_2;
              v31[3] = &unk_2796BDC68;
              v33 = sel_assertionManager_assertionTaken_;
              v31[4] = self;
              v32 = v29;
              [v30 notifyObservers:v31];

              v21 = v35;
            }

            goto LABEL_15;
          }
        }

        v16 = v15[2];
        goto LABEL_10;
      }

      _HKInitializeLogging();
      v24 = HKLogAssertions();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v38 = v11;
        v39 = 2114;
        v40 = v6;
        v41 = 2048;
        v42 = v13;
        _os_log_error_impl(&dword_25156C000, v24, OS_LOG_TYPE_ERROR, "%{public}@: Unexpected state for assertion %{public}@: %ld", buf, 0x20u);
      }
    }

    goto LABEL_23;
  }

  os_unfair_lock_unlock(&self->_lock);
  v8 = 0;
LABEL_25:

  v25 = *MEMORY[0x277D85DE8];
  return v8;
}

void __57__HDAssertionManager_takeAssertion_preNotificationBlock___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[6];
  v5 = v3;
  if (objc_opt_respondsToSelector())
  {
    [v5 assertionManager:a1[4] assertionTaken:a1[5]];
  }
}

- (void)resumeBudgetConsumption
{
  os_unfair_lock_lock(&self->_lock);
  [(HDAssertionManager *)self _lock_resumeBudgetConsumption];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addObserver:(id)a3 forAssertionIdentifier:(id)a4 queue:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  os_unfair_lock_lock(&self->_lock);
  if (!self->_invalidated)
  {
    v10 = [(NSMutableDictionary *)self->_observerSetsByAssertionIdentifier objectForKeyedSubscript:v8];
    if (!v10)
    {
      v11 = objc_alloc(MEMORY[0x277CCD738]);
      v12 = HKLogAssertions();
      v10 = [v11 initWithName:v8 loggingCategory:v12];

      [(NSMutableDictionary *)self->_observerSetsByAssertionIdentifier setObject:v10 forKeyedSubscript:v8];
    }

    [v10 registerObserver:v13 queue:v9];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)a3 forAssertionIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_observerSetsByAssertionIdentifier objectForKeyedSubscript:v6];

  [v8 unregisterObserver:v7];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_observerSetsByAssertionIdentifier;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMutableDictionary *)self->_observerSetsByAssertionIdentifier objectForKeyedSubscript:*(*(&v12 + 1) + 8 * v9), v12];
        [v10 unregisterObserver:v4];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  os_unfair_lock_lock(&self->_lock);
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v4 = [(NSMutableDictionary *)self->_assertionRecordsByIdentifier allValues];
    v5 = [v4 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v36;
      do
      {
        v8 = 0;
        do
        {
          if (*v36 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v35 + 1) + 8 * v8);
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          if (v9)
          {
            v10 = *(v9 + 16);
          }

          else
          {
            v10 = 0;
          }

          v11 = [v10 objectEnumerator];
          v12 = [v11 countByEnumeratingWithState:&v31 objects:v40 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v32;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v32 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                [v3 addObject:*(*(&v31 + 1) + 8 * i)];
              }

              v13 = [v11 countByEnumeratingWithState:&v31 objects:v40 count:16];
            }

            while (v13);
          }

          ++v8;
        }

        while (v8 != v6);
        v16 = [v4 countByEnumeratingWithState:&v35 objects:v41 count:16];
        v6 = v16;
      }

      while (v16);
    }

    assertionRecordsByIdentifier = self->_assertionRecordsByIdentifier;
    self->_assertionRecordsByIdentifier = 0;

    observerSetsByAssertionIdentifier = self->_observerSetsByAssertionIdentifier;
    self->_observerSetsByAssertionIdentifier = 0;

    budgetConsumptionTimer = self->_budgetConsumptionTimer;
    if (budgetConsumptionTimer)
    {
      dispatch_source_cancel(budgetConsumptionTimer);
      v20 = self->_budgetConsumptionTimer;
      self->_budgetConsumptionTimer = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v21 = v3;
  v22 = [v21 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v28;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [*(*(&v27 + 1) + 8 * j) _invalidateAndRelease:{0, v27}];
      }

      v23 = [v21 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v23);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_releaseAssertion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(HDAssertionManager *)self _lock_releaseAssertion:v4];

  os_unfair_lock_unlock(&self->_lock);
}

void __53__HDAssertionManager__postNotification_forAssertion___block_invoke(void *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v8 = @"HDAssertionManagerAssertionKey";
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v2 postNotificationName:v3 object:v4 userInfo:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_lock_enumerateActiveAssertionsWithIdentifier:(void *)a3 handler:
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    v7 = [*(a1 + 24) objectForKeyedSubscript:v5];
    v8 = v7;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    if (v7)
    {
      v7 = v7[2];
    }

    v9 = [v7 objectEnumerator];
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
LABEL_6:
      v13 = 0;
      while (1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        if ([v14 state] == 2)
        {
          v16 = 0;
          v6[2](v6, v14, &v16);
          if (v16)
          {
            break;
          }
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v11)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)activeAssertionsForIdentifier:(id)a3
{
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  os_unfair_lock_lock(&self->_lock);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_1(v6);

  os_unfair_lock_unlock(&self->_lock);
  v7 = [v6 copy];

  return v7;
}

- (id)allAssertionsForIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_assertionRecordsByIdentifier objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = v5[2];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = MEMORY[0x277CBEB98];
  v9 = [v7 allObjects];

  v10 = [v8 setWithArray:v9];

  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (id)ownerIdentifiersForAssertionIdentifier:(id)a3
{
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = [v4 set];
  os_unfair_lock_lock(&self->_lock);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_1(v6);

  os_unfair_lock_unlock(&self->_lock);
  v7 = [v6 copy];

  return v7;
}

uint64_t __57__HDAssertionManager_takeAssertion_preNotificationBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[2];
  }

  return [v1 addObject:*(a1 + 40)];
}

- (void)_lock_consumeBudgetsThenResetTimerWithIntermediateBlock:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v7 = v3;
    os_unfair_lock_assert_owner((a1 + 8));
    HKMachAbsoluteTimeGetCurrent();
    v5 = v4;
    v6 = *(a1 + 41);
    if (v6 == 1)
    {
      [(HDAssertionManager *)a1 _lock_consumeBudgetsThroughTime:v4];
    }

    v3 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7);
      v3 = v7;
    }

    if (v6)
    {
      [(HDAssertionManager *)a1 _lock_setBudgetConsumptionTimerWithStartTime:v5];
      v3 = v7;
    }
  }
}

- (void)_postNotification:(void *)a3 forAssertion:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 16);
    OUTLINED_FUNCTION_0_3();
    v9 = 3221225472;
    v10 = __53__HDAssertionManager__postNotification_forAssertion___block_invoke;
    v11 = &unk_2796BDAC0;
    v12 = v5;
    v13 = a1;
    v14 = v6;
    dispatch_async(v7, block);
  }
}

- (void)_lock_resumeBudgetConsumption
{
  if (a1)
  {
    v2 = OUTLINED_FUNCTION_5(a1);
    os_unfair_lock_assert_owner(v2);
    if ((*(v1 + 41) & 1) == 0)
    {
      *(v1 + 41) = 1;
      HKMachAbsoluteTimeGetCurrent();

      [(HDAssertionManager *)v1 _lock_setBudgetConsumptionTimerWithStartTime:v3];
    }
  }
}

- (void)_lock_releaseAssertion:(uint64_t)a1
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    if ((*(a1 + 40) & 1) == 0)
    {
      v4 = [v3 assertionIdentifier];
      v5 = [*(a1 + 24) objectForKeyedSubscript:v4];
      if (v5)
      {
        v7 = v5;
        v8 = *(v5 + 16);
        v9 = [v8 count];
        [v8 removeObject:v3];
        v10 = [v8 count];
        if (v10 == v9)
        {
          _HKInitializeLogging();
          v11 = HKLogAssertions();
          v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);

          if (v12)
          {
            v13 = HKLogAssertions();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543618;
              v19 = v4;
              v20 = 2114;
              v21 = v3;
              _os_log_debug_impl(&dword_25156C000, v13, OS_LOG_TYPE_DEBUG, "%{public}@: Released %{public}@ was not found", buf, 0x16u);
            }
          }
        }

        if (!v10)
        {
          [*(a1 + 24) removeObjectForKey:v4];
          if (![*(a1 + 24) count])
          {
            v14 = *(a1 + 24);
            *(a1 + 24) = 0;
          }
        }

        [a1 _handleAssertionReleased:*(a1 + 24) != 0];
        v15 = [*(a1 + 32) objectForKeyedSubscript:v4];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __45__HDAssertionManager__lock_releaseAssertion___block_invoke;
        v16[3] = &unk_2796BDC90;
        v16[4] = a1;
        v17 = v3;
        [v15 notifyObservers:v16];

        [(HDAssertionManager *)a1 _postNotification:v4 forAssertion:?];
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_budgetConsumptionTimerDidFire
{
  v9 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = OUTLINED_FUNCTION_5(a1);
    os_unfair_lock_lock(v2);
    _HKInitializeLogging();
    v3 = HKLogAssertions();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);

    if (v4)
    {
      v5 = HKLogAssertions();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = 138543362;
        v8 = v1;
        _os_log_impl(&dword_25156C000, v5, OS_LOG_TYPE_INFO, "%{public}@: Budget Consumption timer fired.", &v7, 0xCu);
      }
    }

    [(HDAssertionManager *)v1 _lock_consumeBudgetsThenResetTimerWithIntermediateBlock:?];
    os_unfair_lock_unlock(v1 + 2);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_lock_setBudgetConsumptionTimerWithStartTime:(uint64_t)a1
{
  v41 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = OUTLINED_FUNCTION_5(a1);
    os_unfair_lock_assert_owner(v4);
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v5 = [*(v2 + 24) allValues];
    v6 = [v5 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v36;
      v9 = 1.79769313e308;
      do
      {
        v10 = 0;
        do
        {
          if (*v36 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v35 + 1) + 8 * v10);
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          if (v11)
          {
            v12 = *(v11 + 16);
          }

          else
          {
            v12 = 0;
          }

          v13 = [v12 objectEnumerator];
          v14 = [v13 countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v32;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v32 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v31 + 1) + 8 * i);
                [v18 remainingBudget];
                if (v9 >= v19)
                {
                  v9 = v19;
                }

                [v18 _setBudgetIntervalStartTime:a2];
              }

              v15 = [v13 countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v15);
          }

          ++v10;
        }

        while (v10 != v7);
        v20 = [v5 countByEnumeratingWithState:&v35 objects:v40 count:16];
        v7 = v20;
      }

      while (v20);

      if (v9 < 1.79769313e308)
      {
        v21 = *(v2 + 48);
        if (v21)
        {
          dispatch_source_cancel(v21);
          v22 = *(v2 + 48);
          *(v2 + 48) = 0;
        }

        v23 = dispatch_time(0, (v9 * 1000000000.0));
        v24 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v2 + 56));
        v25 = *(v2 + 48);
        *(v2 + 48) = v24;

        dispatch_source_set_timer(*(v2 + 48), v23, 0xFFFFFFFFFFFFFFFFLL, 0);
        objc_initWeak(&location, v2);
        v26 = *(v2 + 48);
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __67__HDAssertionManager__lock_setBudgetConsumptionTimerWithStartTime___block_invoke;
        v28[3] = &unk_2796BDCB8;
        objc_copyWeak(&v29, &location);
        dispatch_source_set_event_handler(v26, v28);
        dispatch_activate(*(v2 + 48));
        objc_destroyWeak(&v29);
        objc_destroyWeak(&location);
      }
    }

    else
    {
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_lock_consumeBudgetsThroughTime:(uint64_t)a1
{
  v43 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = OUTLINED_FUNCTION_5(a1);
    os_unfair_lock_assert_owner(v4);
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v26 = v2;
    obj = [*(v2 + 24) allValues];
    v5 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v37;
      do
      {
        v9 = 0;
        do
        {
          if (*v37 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v36 + 1) + 8 * v9);
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          if (v10)
          {
            v11 = *(v10 + 16);
          }

          else
          {
            v11 = 0;
          }

          v12 = [v11 objectEnumerator];
          v13 = [v12 countByEnumeratingWithState:&v32 objects:v41 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v33;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v33 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v32 + 1) + 8 * i);
                if ([v17 _consumeFromBudgetThroughTime:a2])
                {
                  if (!v7)
                  {
                    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  }

                  [v7 addObject:v17];
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v32 objects:v41 count:16];
            }

            while (v14);
          }

          ++v9;
        }

        while (v9 != v6);
        v18 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
        v6 = v18;
      }

      while (v18);
    }

    else
    {
      v7 = 0;
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = v7;
    v20 = [v19 countByEnumeratingWithState:&v28 objects:v40 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v29;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v28 + 1) + 8 * j);
          [v24 _invalidateAndRelease:0];
          [(HDAssertionManager *)v26 _lock_releaseAssertion:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v28 objects:v40 count:16];
      }

      while (v21);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __67__HDAssertionManager__lock_setBudgetConsumptionTimerWithStartTime___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDAssertionManager *)WeakRetained _budgetConsumptionTimerDidFire];
}

@end