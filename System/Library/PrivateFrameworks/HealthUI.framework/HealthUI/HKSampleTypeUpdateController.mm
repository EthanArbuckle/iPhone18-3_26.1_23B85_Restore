@interface HKSampleTypeUpdateController
- (BOOL)_isHighFrequencyDataType:(id)type;
- (HKSampleTypeUpdateController)initWithHealthStore:(id)store;
- (id)_failedQuerySampleTypes;
- (id)_findThrottledUpdateData:(id)data;
- (id)_observersForType:(id)type;
- (int64_t)_queryStateForType:(id)type;
- (void)_callObservers:(id)observers withType:(id)type samplesAdded:(id)added objectsRemoved:(id)removed recoveringFromError:(BOOL)error;
- (void)_createQueryForType:(id)type;
- (void)_drainAllThrottledDataIfNecessary;
- (void)_drainThrottledDataIfNecessary:(id)necessary recoveringFromError:(BOOL)error;
- (void)_errorRecoveryCallbacksForType:(id)type;
- (void)_handleHighFrequencyObserverCallbacksForType:(id)type;
- (void)_handleQueryCallbackForType:(id)type samplesAdded:(id)added objectsDeleted:(id)deleted error:(id)error;
- (void)_handleQueryErrorForType:(id)type error:(id)error;
- (void)_handleQuerySuccessForType:(id)type samplesAdded:(id)added objectsRemoved:(id)removed;
- (void)_installThrottlingTimer;
- (void)_removeQueryForType:(id)type queryState:(int64_t)state;
- (void)_removeThrottlingTimer;
- (void)_resumeFailedQueries;
- (void)_sendThrottledUpdatesToObservers:(id)observers recoveringFromError:(BOOL)error;
- (void)_setQueryState:(int64_t)state forType:(id)type;
- (void)addObserver:(id)observer forType:(id)type;
- (void)removeObserver:(id)observer forType:(id)type;
@end

@implementation HKSampleTypeUpdateController

- (void)_resumeFailedQueries
{
  v22 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _failedQuerySampleTypes = [(HKSampleTypeUpdateController *)self _failedQuerySampleTypes];
  v4 = [_failedQuerySampleTypes countByEnumeratingWithState:&v13 objects:v21 count:16];
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
          objc_enumerationMutation(_failedQuerySampleTypes);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        _HKInitializeLogging();
        v9 = HKLogWellnessDashboard();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = objc_opt_class();
          v11 = v10;
          identifier = [v8 identifier];
          *buf = 138543619;
          v18 = v10;
          v19 = 2113;
          v20 = identifier;
          _os_log_error_impl(&dword_1C3942000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Resuming failed query from background (%{private}@)", buf, 0x16u);
        }

        [(HKSampleTypeUpdateController *)self _errorRecoveryCallbacksForType:v8];
        [(HKSampleTypeUpdateController *)self _createQueryForType:v8];
        ++v7;
      }

      while (v5 != v7);
      v5 = [_failedQuerySampleTypes countByEnumeratingWithState:&v13 objects:v21 count:16];
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

- (HKSampleTypeUpdateController)initWithHealthStore:(id)store
{
  storeCopy = store;
  v20.receiver = self;
  v20.super_class = HKSampleTypeUpdateController;
  v6 = [(HKSampleTypeUpdateController *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__applicationMovingToForeground_ name:*MEMORY[0x1E69DDBC0] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v7 selector:sel__applicationMovingToBackground_ name:*MEMORY[0x1E69DDAC8] object:0];

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

- (void)_sendThrottledUpdatesToObservers:(id)observers recoveringFromError:(BOOL)error
{
  errorCopy = error;
  v21 = *MEMORY[0x1E69E9840];
  observersCopy = observers;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [observersCopy throttledObservers];
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
        throttledSampleType = [observersCopy throttledSampleType];
        throttledSamplesAdded = [observersCopy throttledSamplesAdded];
        throttledDeletedObjects = [observersCopy throttledDeletedObjects];
        [v11 updateController:self didReceiveUpdateForType:throttledSampleType samplesAdded:throttledSamplesAdded objectsRemoved:throttledDeletedObjects recoveringFromError:errorCopy];

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

- (void)_drainThrottledDataIfNecessary:(id)necessary recoveringFromError:(BOOL)error
{
  errorCopy = error;
  necessaryCopy = necessary;
  if ([necessaryCopy incomingUpdateCountSinceLastDrain])
  {
    throttledObservers = [necessaryCopy throttledObservers];
    v7 = [throttledObservers count];

    if (v7)
    {
      if ([necessaryCopy incomingUpdateCountSinceLastDrain] > 2)
      {
        [(HKSampleTypeUpdateController *)self _installThrottlingTimer];
        v8 = CACurrentMediaTime();
        if (errorCopy || (v9 = v8, [necessaryCopy lastDrainTime], v8 = v9 - v10, v8 >= 1.0))
        {
          [(HKSampleTypeUpdateController *)self _sendThrottledUpdatesToObservers:necessaryCopy recoveringFromError:errorCopy, v8];
          [necessaryCopy clearThrottlingData];
          [necessaryCopy updateDrainTime];
        }
      }

      else
      {
        [(HKSampleTypeUpdateController *)self _sendThrottledUpdatesToObservers:necessaryCopy recoveringFromError:errorCopy];
        [necessaryCopy clearThrottlingData];
      }
    }
  }
}

- (void)addObserver:(id)observer forType:(id)type
{
  observerCopy = observer;
  typeCopy = type;
  v7 = [(HKSampleTypeUpdateController *)self _observersForType:typeCopy];
  [v7 addObject:observerCopy];
  if ([(HKSampleTypeUpdateController *)self _typeRequiresNewQuery:typeCopy])
  {
    [(HKSampleTypeUpdateController *)self _createQueryForType:typeCopy];
  }

  else
  {
    [observerCopy updateController:self didReceiveUpdateForType:typeCopy samplesAdded:MEMORY[0x1E695E0F0] objectsRemoved:MEMORY[0x1E695E0F0] recoveringFromError:0];
  }
}

- (void)removeObserver:(id)observer forType:(id)type
{
  v22[1] = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  typeCopy = type;
  v8 = typeCopy;
  if (typeCopy)
  {
    v22[0] = typeCopy;
    _allObservedTypes = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  }

  else
  {
    _allObservedTypes = [(HKSampleTypeUpdateController *)self _allObservedTypes];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = _allObservedTypes;
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
        [v16 removeObject:observerCopy];
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

- (id)_observersForType:(id)type
{
  typeCopy = type;
  v5 = [(NSMutableDictionary *)self->_observersByType objectForKeyedSubscript:typeCopy];
  if (!v5)
  {
    v5 = [MEMORY[0x1E696AC70] hashTableWithOptions:5];
    [(NSMutableDictionary *)self->_observersByType setObject:v5 forKeyedSubscript:typeCopy];
  }

  return v5;
}

- (id)_findThrottledUpdateData:(id)data
{
  dataCopy = data;
  v5 = [(NSMutableDictionary *)self->_throttledDataBySampleType objectForKeyedSubscript:dataCopy];
  if (!v5)
  {
    v5 = [[HKThrottledUpdateData alloc] initWithSampleType:dataCopy];
    [(NSMutableDictionary *)self->_throttledDataBySampleType setObject:v5 forKeyedSubscript:dataCopy];
  }

  return v5;
}

- (void)_callObservers:(id)observers withType:(id)type samplesAdded:(id)added objectsRemoved:(id)removed recoveringFromError:(BOOL)error
{
  errorCopy = error;
  typeCopy = type;
  v13 = MEMORY[0x1E696AF00];
  removedCopy = removed;
  addedCopy = added;
  observersCopy = observers;
  if (([v13 isMainThread] & 1) == 0)
  {
    [HKSampleTypeUpdateController _callObservers:a2 withType:self samplesAdded:? objectsRemoved:? recoveringFromError:?];
  }

  v17 = [(HKSampleTypeUpdateController *)self _findThrottledUpdateData:typeCopy];
  [v17 addThrottledObservers:observersCopy samplesAdded:addedCopy objectsRemoved:removedCopy];

  [(HKSampleTypeUpdateController *)self _drainThrottledDataIfNecessary:v17 recoveringFromError:errorCopy];
}

- (int64_t)_queryStateForType:(id)type
{
  v3 = [(NSMutableDictionary *)self->_queryStatesByType objectForKeyedSubscript:type];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)_setQueryState:(int64_t)state forType:(id)type
{
  v6 = MEMORY[0x1E696AD98];
  typeCopy = type;
  v8 = [v6 numberWithInteger:state];
  [(NSMutableDictionary *)self->_queryStatesByType setObject:v8 forKeyedSubscript:typeCopy];
}

- (BOOL)_isHighFrequencyDataType:(id)type
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *MEMORY[0x1E696BD08];
    v9[0] = *MEMORY[0x1E696BD28];
    v9[1] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
    identifier = [typeCopy identifier];
    v7 = [v5 containsObject:identifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_createQueryForType:(id)type
{
  v44 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  [(HKSampleTypeUpdateController *)self _setQueryState:1 forType:typeCopy];
  array = [MEMORY[0x1E695DF70] array];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__HKSampleTypeUpdateController__createQueryForType___block_invoke;
  aBlock[3] = &unk_1E81B8F00;
  aBlock[4] = self;
  v6 = typeCopy;
  v38 = v6;
  v7 = _Block_copy(aBlock);
  v8 = objc_alloc(MEMORY[0x1E696BF08]);
  latestAnchor = [MEMORY[0x1E696C380] latestAnchor];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __52__HKSampleTypeUpdateController__createQueryForType___block_invoke_3;
  v35[3] = &unk_1E81B8F28;
  v10 = v7;
  v36 = v10;
  v11 = [v8 initWithType:v6 predicate:0 anchor:latestAnchor limit:0 resultsHandler:v35];

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __52__HKSampleTypeUpdateController__createQueryForType___block_invoke_4;
  v33[3] = &unk_1E81B8F28;
  v12 = v10;
  v34 = v12;
  [v11 setUpdateHandler:v33];
  [array addObject:v11];
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
    date = [MEMORY[0x1E695DF00] date];
    v16 = [v14 predicateForSamplesWithStartDate:date endDate:0 options:0];

    v17 = objc_alloc(MEMORY[0x1E696C2E8]);
    v18 = [v17 initWithSampleType:*(*&buf[8] + 40) predicate:v16 updateHandler:v13];
    [v18 setObserveUnfrozenSeries:1];
    [array addObject:v18];

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
      v26 = [array count];
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
  v22 = array;
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

- (void)_removeQueryForType:(id)type queryState:(int64_t)state
{
  v17 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v7 = [(NSMutableDictionary *)self->_outstandingQueriesByType objectForKeyedSubscript:typeCopy];
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

  [(NSMutableDictionary *)self->_outstandingQueriesByType removeObjectForKey:typeCopy];
  [(HKSampleTypeUpdateController *)self _setQueryState:state forType:typeCopy];
}

- (void)_handleQueryCallbackForType:(id)type samplesAdded:(id)added objectsDeleted:(id)deleted error:(id)error
{
  if (error)
  {
    [(HKSampleTypeUpdateController *)self _handleQueryErrorForType:type error:error, deleted];
  }

  else
  {
    [(HKSampleTypeUpdateController *)self _handleQuerySuccessForType:type samplesAdded:added objectsRemoved:deleted];
  }
}

- (void)_handleQueryErrorForType:(id)type error:(id)error
{
  v22 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  errorCopy = error;
  _HKInitializeLogging();
  v8 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = objc_opt_class();
    v12 = v11;
    identifier = [typeCopy identifier];
    *buf = 138543875;
    v17 = v11;
    v18 = 2113;
    v19 = identifier;
    v20 = 2114;
    v21 = errorCopy;
    _os_log_error_impl(&dword_1C3942000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Sample type error (%{private}@): %{public}@", buf, 0x20u);
  }

  [(HKSampleTypeUpdateController *)self _removeQueryForType:typeCopy queryState:3];
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
    v15 = typeCopy;
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

- (void)_handleQuerySuccessForType:(id)type samplesAdded:(id)added objectsRemoved:(id)removed
{
  v25 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  addedCopy = added;
  removedCopy = removed;
  [(HKSampleTypeUpdateController *)self _setQueryState:2 forType:typeCopy];
  _HKInitializeLogging();
  v11 = HKLogWellnessDashboard();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);

  if (v12)
  {
    v13 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      identifier = [typeCopy identifier];
      v17 = 134218755;
      selfCopy = self;
      v19 = 2113;
      v20 = identifier;
      v21 = 2048;
      v22 = [addedCopy count];
      v23 = 2048;
      v24 = [removedCopy count];
      _os_log_debug_impl(&dword_1C3942000, v13, OS_LOG_TYPE_DEBUG, "HKSampleTypeUpdateController(%p, %{private}@): ChartDataUpdate: adding %ld objects, removing %ld objects", &v17, 0x2Au);
    }
  }

  v14 = [(HKSampleTypeUpdateController *)self _observersForType:typeCopy];
  allObjects = [v14 allObjects];
  [(HKSampleTypeUpdateController *)self _callObservers:allObjects withType:typeCopy samplesAdded:addedCopy objectsRemoved:removedCopy recoveringFromError:0];
}

- (void)_handleHighFrequencyObserverCallbacksForType:(id)type
{
  typeCopy = type;
  v5 = [(HKSampleTypeUpdateController *)self _observersForType:typeCopy];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__HKSampleTypeUpdateController__handleHighFrequencyObserverCallbacksForType___block_invoke;
  block[3] = &unk_1E81B5A10;
  v9 = v5;
  selfCopy = self;
  v11 = typeCopy;
  v6 = typeCopy;
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

- (void)_errorRecoveryCallbacksForType:(id)type
{
  typeCopy = type;
  v4 = [(HKSampleTypeUpdateController *)self _observersForType:typeCopy];
  allObjects = [v4 allObjects];
  [(HKSampleTypeUpdateController *)self _callObservers:allObjects withType:typeCopy samplesAdded:MEMORY[0x1E695E0F0] objectsRemoved:MEMORY[0x1E695E0F0] recoveringFromError:1];

  if ([(HKSampleTypeUpdateController *)self _isHighFrequencyDataType:typeCopy])
  {
    [(HKSampleTypeUpdateController *)self _handleHighFrequencyObserverCallbacksForType:typeCopy];
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