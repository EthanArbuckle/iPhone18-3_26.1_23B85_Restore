@interface HKSampleTypeUpdateController
- (BOOL)_isHighFrequencyDataType:(id)a3;
- (HKSampleTypeUpdateController)initWithHealthStore:(id)a3;
- (id)_failedQuerySampleTypes;
- (id)_findThrottledUpdateData:(id)a3;
- (id)_observersForType:(id)a3;
- (int64_t)_queryStateForType:(id)a3;
- (void)_callObservers:(id)a3 withType:(id)a4 samplesAdded:(id)a5 objectsRemoved:(id)a6 recoveringFromError:(BOOL)a7;
- (void)_createQueryForType:(id)a3;
- (void)_drainAllThrottledDataIfNecessary;
- (void)_drainThrottledDataIfNecessary:(id)a3 recoveringFromError:(BOOL)a4;
- (void)_errorRecoveryCallbacksForType:(id)a3;
- (void)_handleHighFrequencyObserverCallbacksForType:(id)a3;
- (void)_handleQueryCallbackForType:(id)a3 samplesAdded:(id)a4 objectsDeleted:(id)a5 error:(id)a6;
- (void)_handleQueryErrorForType:(id)a3 error:(id)a4;
- (void)_handleQuerySuccessForType:(id)a3 samplesAdded:(id)a4 objectsRemoved:(id)a5;
- (void)_installThrottlingTimer;
- (void)_removeQueryForType:(id)a3 queryState:(int64_t)a4;
- (void)_removeThrottlingTimer;
- (void)_resumeFailedQueries;
- (void)_sendThrottledUpdatesToObservers:(id)a3 recoveringFromError:(BOOL)a4;
- (void)_setQueryState:(int64_t)a3 forType:(id)a4;
- (void)addObserver:(id)a3 forType:(id)a4;
- (void)removeObserver:(id)a3 forType:(id)a4;
@end

@implementation HKSampleTypeUpdateController

- (void)_resumeFailedQueries
{
  v22 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(HKSampleTypeUpdateController *)self _failedQuerySampleTypes];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        _HKInitializeLogging();
        v9 = HKLogWellnessDashboard();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = objc_opt_class();
          v11 = v10;
          v12 = [v8 identifier];
          *buf = 138543619;
          v18 = v10;
          v19 = 2113;
          v20 = v12;
          _os_log_error_impl(&dword_1C3942000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Resuming failed query from background (%{private}@)", buf, 0x16u);
        }

        [(HKSampleTypeUpdateController *)self _errorRecoveryCallbacksForType:v8];
        [(HKSampleTypeUpdateController *)self _createQueryForType:v8];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v5);
  }
}

- (id)_failedQuerySampleTypes
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_queryStatesByType;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_queryStatesByType objectForKeyedSubscript:v9, v13];
        v11 = v10;
        if (v10 && [v10 integerValue] == 3)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (HKSampleTypeUpdateController)initWithHealthStore:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = HKSampleTypeUpdateController;
  v6 = [(HKSampleTypeUpdateController *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    outstandingQueriesByType = v7->_outstandingQueriesByType;
    v7->_outstandingQueriesByType = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    queryStatesByType = v7->_queryStatesByType;
    v7->_queryStatesByType = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    observersByType = v7->_observersByType;
    v7->_observersByType = v12;

    v7->_applicationIsInBackground = 0;
    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:v7 selector:sel__applicationMovingToForeground_ name:*MEMORY[0x1E69DDBC0] object:0];

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v7 selector:sel__applicationMovingToBackground_ name:*MEMORY[0x1E69DDAC8] object:0];

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    throttledDataBySampleType = v7->_throttledDataBySampleType;
    v7->_throttledDataBySampleType = v16;

    throttlePollTimer = v7->_throttlePollTimer;
    v7->_throttlePollTimer = 0;
  }

  return v7;
}

- (void)_installThrottlingTimer
{
  if (!self->_throttlePollTimer)
  {
    objc_initWeak(&location, self);
    v3 = MEMORY[0x1E695DFF0];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__HKSampleTypeUpdateController__installThrottlingTimer__block_invoke;
    v6[3] = &unk_1E81B5F30;
    objc_copyWeak(&v7, &location);
    v4 = [v3 scheduledTimerWithTimeInterval:1 repeats:v6 block:1.0];
    throttlePollTimer = self->_throttlePollTimer;
    self->_throttlePollTimer = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __55__HKSampleTypeUpdateController__installThrottlingTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _drainAllThrottledDataIfNecessary];
}

- (void)_removeThrottlingTimer
{
  throttlePollTimer = self->_throttlePollTimer;
  if (throttlePollTimer)
  {
    [(NSTimer *)throttlePollTimer invalidate];
    v4 = self->_throttlePollTimer;
    self->_throttlePollTimer = 0;
  }
}

- (void)_drainAllThrottledDataIfNecessary
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_throttledDataBySampleType;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v4)
  {

LABEL_11:
    [(HKSampleTypeUpdateController *)self _removeThrottlingTimer];
    return;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v11;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v11 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = [(NSMutableDictionary *)self->_throttledDataBySampleType objectForKeyedSubscript:*(*(&v10 + 1) + 8 * i), v10];
      [(HKSampleTypeUpdateController *)self _drainThrottledDataIfNecessary:v9 recoveringFromError:0];
      v6 |= [v9 incomingUpdateCountSinceLastDrain] > 2;
    }

    v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v5);

  if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }
}

- (void)_sendThrottledUpdatesToObservers:(id)a3 recoveringFromError:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [v6 throttledObservers];
  v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = [v6 throttledSampleType];
        v13 = [v6 throttledSamplesAdded];
        v14 = [v6 throttledDeletedObjects];
        [v11 updateController:self didReceiveUpdateForType:v12 samplesAdded:v13 objectsRemoved:v14 recoveringFromError:v4];

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

- (void)_drainThrottledDataIfNecessary:(id)a3 recoveringFromError:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  if ([v11 incomingUpdateCountSinceLastDrain])
  {
    v6 = [v11 throttledObservers];
    v7 = [v6 count];

    if (v7)
    {
      if ([v11 incomingUpdateCountSinceLastDrain] > 2)
      {
        [(HKSampleTypeUpdateController *)self _installThrottlingTimer];
        v8 = CACurrentMediaTime();
        if (v4 || (v9 = v8, [v11 lastDrainTime], v8 = v9 - v10, v8 >= 1.0))
        {
          [(HKSampleTypeUpdateController *)self _sendThrottledUpdatesToObservers:v11 recoveringFromError:v4, v8];
          [v11 clearThrottlingData];
          [v11 updateDrainTime];
        }
      }

      else
      {
        [(HKSampleTypeUpdateController *)self _sendThrottledUpdatesToObservers:v11 recoveringFromError:v4];
        [v11 clearThrottlingData];
      }
    }
  }
}

- (void)addObserver:(id)a3 forType:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(HKSampleTypeUpdateController *)self _observersForType:v6];
  [v7 addObject:v8];
  if ([(HKSampleTypeUpdateController *)self _typeRequiresNewQuery:v6])
  {
    [(HKSampleTypeUpdateController *)self _createQueryForType:v6];
  }

  else
  {
    [v8 updateController:self didReceiveUpdateForType:v6 samplesAdded:MEMORY[0x1E695E0F0] objectsRemoved:MEMORY[0x1E695E0F0] recoveringFromError:0];
  }
}

- (void)removeObserver:(id)a3 forType:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v22[0] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  }

  else
  {
    v9 = [(HKSampleTypeUpdateController *)self _allObservedTypes];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        v16 = [(HKSampleTypeUpdateController *)self _observersForType:v15, v17];
        [v16 removeObject:v6];
        if (![v16 count])
        {
          [(HKSampleTypeUpdateController *)self _removeQueryForType:v15 queryState:0];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }
}

- (id)_observersForType:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_observersByType objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [MEMORY[0x1E696AC70] hashTableWithOptions:5];
    [(NSMutableDictionary *)self->_observersByType setObject:v5 forKeyedSubscript:v4];
  }

  return v5;
}

- (id)_findThrottledUpdateData:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_throttledDataBySampleType objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [[HKThrottledUpdateData alloc] initWithSampleType:v4];
    [(NSMutableDictionary *)self->_throttledDataBySampleType setObject:v5 forKeyedSubscript:v4];
  }

  return v5;
}

- (void)_callObservers:(id)a3 withType:(id)a4 samplesAdded:(id)a5 objectsRemoved:(id)a6 recoveringFromError:(BOOL)a7
{
  v7 = a7;
  v18 = a4;
  v13 = MEMORY[0x1E696AF00];
  v14 = a6;
  v15 = a5;
  v16 = a3;
  if (([v13 isMainThread] & 1) == 0)
  {
    [HKSampleTypeUpdateController _callObservers:a2 withType:self samplesAdded:? objectsRemoved:? recoveringFromError:?];
  }

  v17 = [(HKSampleTypeUpdateController *)self _findThrottledUpdateData:v18];
  [v17 addThrottledObservers:v16 samplesAdded:v15 objectsRemoved:v14];

  [(HKSampleTypeUpdateController *)self _drainThrottledDataIfNecessary:v17 recoveringFromError:v7];
}

- (int64_t)_queryStateForType:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_queryStatesByType objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setQueryState:(int64_t)a3 forType:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithInteger:a3];
  [(NSMutableDictionary *)self->_queryStatesByType setObject:v8 forKeyedSubscript:v7];
}

- (BOOL)_isHighFrequencyDataType:(id)a3
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *MEMORY[0x1E696BD08];
    v9[0] = *MEMORY[0x1E696BD28];
    v9[1] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
    v6 = [v3 identifier];
    v7 = [v5 containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_createQueryForType:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(HKSampleTypeUpdateController *)self _setQueryState:1 forType:v4];
  v5 = [MEMORY[0x1E695DF70] array];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__HKSampleTypeUpdateController__createQueryForType___block_invoke;
  aBlock[3] = &unk_1E81B8F00;
  aBlock[4] = self;
  v6 = v4;
  v38 = v6;
  v7 = _Block_copy(aBlock);
  v8 = objc_alloc(MEMORY[0x1E696BF08]);
  v9 = [MEMORY[0x1E696C380] latestAnchor];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __52__HKSampleTypeUpdateController__createQueryForType___block_invoke_3;
  v35[3] = &unk_1E81B8F28;
  v10 = v7;
  v36 = v10;
  v11 = [v8 initWithType:v6 predicate:0 anchor:v9 limit:0 resultsHandler:v35];

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __52__HKSampleTypeUpdateController__createQueryForType___block_invoke_4;
  v33[3] = &unk_1E81B8F28;
  v12 = v10;
  v34 = v12;
  [v11 setUpdateHandler:v33];
  [v5 addObject:v11];
  if ([(HKSampleTypeUpdateController *)self _isHighFrequencyDataType:v6])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v41 = __Block_byref_object_copy__12;
    v42 = __Block_byref_object_dispose__12;
    v43 = v6;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __52__HKSampleTypeUpdateController__createQueryForType___block_invoke_318;
    v32[3] = &unk_1E81B8F50;
    v32[4] = self;
    v32[5] = buf;
    v13 = _Block_copy(v32);
    v14 = MEMORY[0x1E696C378];
    v15 = [MEMORY[0x1E695DF00] date];
    v16 = [v14 predicateForSamplesWithStartDate:v15 endDate:0 options:0];

    v17 = objc_alloc(MEMORY[0x1E696C2E8]);
    v18 = [v17 initWithSampleType:*(*&buf[8] + 40) predicate:v16 updateHandler:v13];
    [v18 setObserveUnfrozenSeries:1];
    [v5 addObject:v18];

    _Block_object_dispose(buf, 8);
  }

  _HKInitializeLogging();
  v19 = HKLogWellnessDashboard();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);

  if (v20)
  {
    v21 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v26 = [v5 count];
      v27 = [v6 description];
      *buf = 134218498;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = v26;
      *&buf[22] = 2112;
      v41 = v27;
      _os_log_debug_impl(&dword_1C3942000, v21, OS_LOG_TYPE_DEBUG, "HKSampleTypeUpdateController(%p): ChartDataUpdate: installing %ld queries for type %@", buf, 0x20u);
    }
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v22 = v5;
  v23 = [v22 countByEnumeratingWithState:&v28 objects:v39 count:16];
  if (v23)
  {
    v24 = *v29;
    do
    {
      v25 = 0;
      do
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(v22);
        }

        [(HKHealthStore *)self->_healthStore executeQuery:*(*(&v28 + 1) + 8 * v25++), v28];
      }

      while (v23 != v25);
      v23 = [v22 countByEnumeratingWithState:&v28 objects:v39 count:16];
    }

    while (v23);
  }

  [(NSMutableDictionary *)self->_outstandingQueriesByType setObject:v22 forKeyedSubscript:v6];
}

void __52__HKSampleTypeUpdateController__createQueryForType___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__HKSampleTypeUpdateController__createQueryForType___block_invoke_2;
  block[3] = &unk_1E81B8ED8;
  v10 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v15 = v10;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __52__HKSampleTypeUpdateController__createQueryForType___block_invoke_318(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return [*(result + 32) _handleHighFrequencyObserverCallbacksForType:*(*(*(result + 40) + 8) + 40)];
  }

  return result;
}

- (void)_removeQueryForType:(id)a3 queryState:(int64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_outstandingQueriesByType objectForKeyedSubscript:v6];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(HKHealthStore *)self->_healthStore stopQuery:*(*(&v12 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  [(NSMutableDictionary *)self->_outstandingQueriesByType removeObjectForKey:v6];
  [(HKSampleTypeUpdateController *)self _setQueryState:a4 forType:v6];
}

- (void)_handleQueryCallbackForType:(id)a3 samplesAdded:(id)a4 objectsDeleted:(id)a5 error:(id)a6
{
  if (a6)
  {
    [(HKSampleTypeUpdateController *)self _handleQueryErrorForType:a3 error:a6, a5];
  }

  else
  {
    [(HKSampleTypeUpdateController *)self _handleQuerySuccessForType:a3 samplesAdded:a4 objectsRemoved:a5];
  }
}

- (void)_handleQueryErrorForType:(id)a3 error:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  _HKInitializeLogging();
  v8 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = objc_opt_class();
    v12 = v11;
    v13 = [v6 identifier];
    *buf = 138543875;
    v17 = v11;
    v18 = 2113;
    v19 = v13;
    v20 = 2114;
    v21 = v7;
    _os_log_error_impl(&dword_1C3942000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Sample type error (%{private}@): %{public}@", buf, 0x20u);
  }

  [(HKSampleTypeUpdateController *)self _removeQueryForType:v6 queryState:3];
  if (self->_applicationIsInBackground)
  {
    _HKInitializeLogging();
    v9 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [HKSampleTypeUpdateController _handleQueryErrorForType:v9 error:?];
    }
  }

  else
  {
    v10 = dispatch_time(0, 500000000);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __63__HKSampleTypeUpdateController__handleQueryErrorForType_error___block_invoke;
    v14[3] = &unk_1E81B5AD0;
    v14[4] = self;
    v15 = v6;
    dispatch_after(v10, MEMORY[0x1E69E96A0], v14);
  }
}

uint64_t __63__HKSampleTypeUpdateController__handleQueryErrorForType_error___block_invoke(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __63__HKSampleTypeUpdateController__handleQueryErrorForType_error___block_invoke_cold_1(a1, v2);
  }

  [*(a1 + 32) _errorRecoveryCallbacksForType:*(a1 + 40)];
  return [*(a1 + 32) _createQueryForType:*(a1 + 40)];
}

- (void)_handleQuerySuccessForType:(id)a3 samplesAdded:(id)a4 objectsRemoved:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(HKSampleTypeUpdateController *)self _setQueryState:2 forType:v8];
  _HKInitializeLogging();
  v11 = HKLogWellnessDashboard();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);

  if (v12)
  {
    v13 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v16 = [v8 identifier];
      v17 = 134218755;
      v18 = self;
      v19 = 2113;
      v20 = v16;
      v21 = 2048;
      v22 = [v9 count];
      v23 = 2048;
      v24 = [v10 count];
      _os_log_debug_impl(&dword_1C3942000, v13, OS_LOG_TYPE_DEBUG, "HKSampleTypeUpdateController(%p, %{private}@): ChartDataUpdate: adding %ld objects, removing %ld objects", &v17, 0x2Au);
    }
  }

  v14 = [(HKSampleTypeUpdateController *)self _observersForType:v8];
  v15 = [v14 allObjects];
  [(HKSampleTypeUpdateController *)self _callObservers:v15 withType:v8 samplesAdded:v9 objectsRemoved:v10 recoveringFromError:0];
}

- (void)_handleHighFrequencyObserverCallbacksForType:(id)a3
{
  v4 = a3;
  v5 = [(HKSampleTypeUpdateController *)self _observersForType:v4];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__HKSampleTypeUpdateController__handleHighFrequencyObserverCallbacksForType___block_invoke;
  block[3] = &unk_1E81B5A10;
  v9 = v5;
  v10 = self;
  v11 = v4;
  v6 = v4;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __77__HKSampleTypeUpdateController__handleHighFrequencyObserverCallbacksForType___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) updateController:*(a1 + 40) didReceiveHighFrequencyUpdateForType:{*(a1 + 48), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_errorRecoveryCallbacksForType:(id)a3
{
  v6 = a3;
  v4 = [(HKSampleTypeUpdateController *)self _observersForType:v6];
  v5 = [v4 allObjects];
  [(HKSampleTypeUpdateController *)self _callObservers:v5 withType:v6 samplesAdded:MEMORY[0x1E695E0F0] objectsRemoved:MEMORY[0x1E695E0F0] recoveringFromError:1];

  if ([(HKSampleTypeUpdateController *)self _isHighFrequencyDataType:v6])
  {
    [(HKSampleTypeUpdateController *)self _handleHighFrequencyObserverCallbacksForType:v6];
  }
}

- (void)_callObservers:(uint64_t)a1 withType:(uint64_t)a2 samplesAdded:objectsRemoved:recoveringFromError:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSampleTypeUpdateController.m" lineNumber:214 description:@"HKSampleTypeUpdateController _callObservers must be delivered on main thread"];
}

- (void)_handleQueryErrorForType:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 138543362;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "%{public}@: Error occurred in background.  Query will be resumed in foreground", &v4, 0xCu);
}

void __63__HKSampleTypeUpdateController__handleQueryErrorForType_error___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v5 = *(a1 + 40);
  v6 = v4;
  v7 = [v5 identifier];
  v8 = 138543619;
  v9 = v4;
  v10 = 2113;
  v11 = v7;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "%{public}@: Resuming failed query from foreground (%{private}@)", &v8, 0x16u);
}

@end