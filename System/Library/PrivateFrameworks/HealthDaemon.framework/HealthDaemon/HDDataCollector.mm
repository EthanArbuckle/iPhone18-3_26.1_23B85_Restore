@interface HDDataCollector
+ (BOOL)_primaryContextExistsForDomain:(id)a3 profile:(id)a4;
+ (Class)sensorDatumClass;
+ (id)_lastReceivedSensorDatumForProfile:(id)a3;
+ (id)_retrieveContextForKey:(void *)a3 domain:(void *)a4 profile:;
+ (id)_sensorDatumFromContext:(id)a3;
+ (id)domain;
+ (id)observedType;
+ (id)secondaryContextClasses;
- (BOOL)disabled;
- (HDDataCollector)initWithProfile:(id)a3;
- (double)collectionInterval;
- (id)_retrieveContextForKey:(uint64_t)a1;
- (id)dataCollectorDiagnosticDescription;
- (void)_performAsync:(id)a3;
- (void)_performSync:(id)a3;
- (void)_persistContext:(void *)a3 forKey:;
- (void)_queue_transitionToFailure;
- (void)_queue_transitionToStreaming;
- (void)_queue_updateCollectionInterval:(uint64_t)a1;
- (void)collectionStartedForType:(id)a3 collectionInterval:(double)a4;
- (void)collectionStoppedForType:(id)a3;
- (void)setCollectionInterval:(double)a3;
- (void)setDisabled:(BOOL)a3;
- (void)stopPerformingUpdatesWithErrorEncountered:(BOOL)a3;
- (void)updateCollectionInterval:(double)a3 forType:(id)a4;
@end

@implementation HDDataCollector

- (void)_queue_transitionToStreaming
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEBUG))
    {
      v4 = v2;
      v5 = objc_opt_class();
      v6 = *(a1 + 40);
      v8 = 138543618;
      v9 = v5;
      v10 = 2048;
      v11 = v6;
      v7 = v5;
      _os_log_debug_impl(&dword_228986000, v4, OS_LOG_TYPE_DEBUG, "%{public}@: Transitioning to Streaming. Previous state %ld", &v8, 0x16u);
    }

    *(a1 + 40) = 2;
  }

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)secondaryContextClasses
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:3];
  v4 = [v2 setWithArray:{v3, v7, v8}];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (HDDataCollector)initWithProfile:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HDDataCollector;
  v5 = [(HDDataCollector *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeWeak(&v6->_primaryProfile, v4);
    }

    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = [objc_opt_class() observedType];
    observedType = v6->_observedType;
    v6->_observedType = v9;

    v6->_state = 1;
    [objc_opt_class() defaultCollectionInterval];
    v6->_collectionInterval = v11;
  }

  return v6;
}

- (void)_performAsync:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__HDDataCollector__performAsync___block_invoke;
  block[3] = &unk_278613658;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

- (void)_performSync:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HDDataCollector__performSync___block_invoke;
  block[3] = &unk_278613658;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, block);
}

- (void)_persistContext:(void *)a3 forKey:
{
  v21 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v7 = [objc_opt_class() domain];
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v16 = 0;
    v9 = [(HDKeyValueEntity *)HDUnprotectedKeyValueEntity setData:v6 forKey:v5 domain:v7 category:0 profile:WeakRetained error:&v16];

    v10 = v16;
    if (!v9)
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC298];
      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
      {
        v13 = v11;
        v14 = objc_opt_class();
        *buf = 138543618;
        v18 = v14;
        v19 = 2114;
        v20 = v10;
        v15 = v14;
        _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Error persisting context: %{public}@", buf, 0x16u);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_retrieveContextForKey:(uint64_t)a1
{
  v3 = a2;
  v4 = [objc_opt_class() domain];
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  v6 = [HDDataCollector _retrieveContextForKey:v3 domain:v4 profile:WeakRetained];

  return v6;
}

+ (id)_retrieveContextForKey:(void *)a3 domain:(void *)a4 profile:
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = a2;
  objc_opt_self();
  v17 = 0;
  v9 = [(HDKeyValueEntity *)HDUnprotectedKeyValueEntity dataForKey:v8 domain:v7 category:0 profile:v6 entity:0 error:&v17];

  v10 = v17;
  if (v10)
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
    {
      v14 = v11;
      v15 = objc_opt_class();
      *buf = 138543618;
      v19 = v15;
      v20 = 2114;
      v21 = v10;
      v16 = v15;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Error retrieving context: %{public}@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)_sensorDatumFromContext:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v14 = 0;
    v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_msgSend(a1 fromData:"sensorDatumClass") error:{v5, &v14}];
    v7 = v14;
    if (!v6)
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC298];
      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
      {
        v12 = v8;
        v13 = [v5 length];
        *buf = 138543874;
        v16 = a1;
        v17 = 2048;
        v18 = v13;
        v19 = 2114;
        v20 = v7;
        _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "%{public}@: Error decoding context (%lu bytes) %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = a1;
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Asked to decode empty context (%{public}@), returning nil", buf, 0x16u);
    }

    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (BOOL)_primaryContextExistsForDomain:(id)a3 profile:(id)a4
{
  v4 = [(HDDataCollector *)a1 _retrieveContextForKey:a3 domain:a4 profile:?];
  v5 = v4 != 0;

  return v5;
}

+ (id)_lastReceivedSensorDatumForProfile:(id)a3
{
  v4 = a3;
  v5 = [a1 domain];
  v6 = [(HDDataCollector *)a1 _retrieveContextForKey:v5 domain:v4 profile:?];

  v7 = [a1 _sensorDatumFromContext:v6];

  return v7;
}

- (double)collectionInterval
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__HDDataCollector_collectionInterval__block_invoke;
  v4[3] = &unk_278613990;
  v4[4] = self;
  v4[5] = &v5;
  [(HDDataCollector *)self _performSync:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

double __37__HDDataCollector_collectionInterval__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setCollectionInterval:(double)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__HDDataCollector_setCollectionInterval___block_invoke;
  v3[3] = &unk_2786138F8;
  v3[4] = self;
  *&v3[5] = a3;
  [(HDDataCollector *)self _performAsync:v3];
}

double __41__HDDataCollector_setCollectionInterval___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 32) = result;
  return result;
}

- (BOOL)disabled
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__HDDataCollector_disabled__block_invoke;
  v4[3] = &unk_278613990;
  v4[4] = self;
  v4[5] = &v5;
  [(HDDataCollector *)self _performSync:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __27__HDDataCollector_disabled__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 72);
  }

  *(*(*(result + 40) + 8) + 24) = v1 & 1;
  return result;
}

- (void)setDisabled:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __31__HDDataCollector_setDisabled___block_invoke;
  v3[3] = &unk_278618990;
  v4 = a3;
  v3[4] = self;
  [(HDDataCollector *)self _performAsync:v3];
}

uint64_t __31__HDDataCollector_setDisabled___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  v3 = *(v2 + 72);
  *(v2 + 72) = v1;
  if (v1 != v3)
  {
    v4 = *(result + 32);
    if (*(v4 + 72) == 1)
    {
      v5 = *(result + 32);

      return [v5 stopPerformingUpdatesWithErrorEncountered:0];
    }

    else if ((*(v4 + 40) - 1) >= 2)
    {
      [(HDDataCollector *)*(result + 32) _queue_transitionToStreaming];

      return [v4 _queue_beginStreaming];
    }
  }

  return result;
}

- (void)_queue_transitionToFailure
{
  v24 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    _HKInitializeLogging();
    v2 = MEMORY[0x277CCC298];
    v3 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = objc_opt_class();
      v6 = a1[5];
      v20 = 138543618;
      v21 = v5;
      v22 = 2048;
      v23 = v6;
      v7 = v5;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Transitioning to Failure. Previous state %ld", &v20, 0x16u);
    }

    if (a1[5] != 1)
    {
      [a1 stopPerformingUpdatesWithErrorEncountered:1];
      a1[5] = 3;
      v8 = a1[8];
      _HKInitializeLogging();
      v9 = *v2;
      v10 = os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT);
      if (v8 > 2)
      {
        if (v10)
        {
          v15 = v9;
          v16 = objc_opt_class();
          v17 = a1[8];
          v20 = 138543618;
          v21 = v16;
          v22 = 2048;
          v23 = v17;
          v18 = v16;
          _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Retrying count limit reached (%ld), not retrying", &v20, 0x16u);
        }

        a1[8] = 0;
      }

      else
      {
        if (v10)
        {
          v11 = v9;
          v12 = objc_opt_class();
          v13 = a1[8];
          v20 = 138543618;
          v21 = v12;
          v22 = 2048;
          v23 = v13;
          v14 = v12;
          _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Retrying from failure (%ld)", &v20, 0x16u);
        }

        ++a1[8];
        if (a1[5] != 2)
        {
          [(HDDataCollector *)a1 _queue_transitionToStreaming];
          [a1 _queue_beginStreaming];
        }
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_queue_updateCollectionInterval:(uint64_t)a1
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (*(a1 + 32) != a2)
    {
      _HKInitializeLogging();
      v4 = *MEMORY[0x277CCC298];
      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
      {
        v5 = v4;
        v8 = 138543618;
        v9 = objc_opt_class();
        v10 = 2048;
        v11 = a2;
        v6 = v9;
        _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating collection period to %lf", &v8, 0x16u);
      }
    }

    *(a1 + 32) = a2;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)collectionStartedForType:(id)a3 collectionInterval:(double)a4
{
  if ([(HKObjectType *)self->_observedType isEqual:a3])
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __63__HDDataCollector_collectionStartedForType_collectionInterval___block_invoke;
    v7[3] = &unk_2786138F8;
    v7[4] = self;
    *&v7[5] = a4;
    dispatch_async(queue, v7);
  }
}

void __63__HDDataCollector_collectionStartedForType_collectionInterval___block_invoke(uint64_t a1)
{
  [(HDDataCollector *)*(a1 + 32) _queue_updateCollectionInterval:?];
  v2 = *(a1 + 32);
  if (v2 && v2[5] != 2)
  {
    [(HDDataCollector *)v2 _queue_transitionToStreaming];

    [v2 _queue_beginStreaming];
  }
}

- (void)updateCollectionInterval:(double)a3 forType:(id)a4
{
  if ([a4 isEqual:self->_observedType])
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __52__HDDataCollector_updateCollectionInterval_forType___block_invoke;
    v7[3] = &unk_2786138F8;
    v7[4] = self;
    *&v7[5] = a3;
    dispatch_async(queue, v7);
  }
}

- (void)collectionStoppedForType:(id)a3
{
  if ([(HKObjectType *)self->_observedType isEqual:a3])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__HDDataCollector_collectionStoppedForType___block_invoke;
    block[3] = &unk_278613968;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

void __44__HDDataCollector_collectionStoppedForType___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = MEMORY[0x277CCC298];
  v3 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = v3;
    *v14 = 138543362;
    *&v14[4] = objc_opt_class();
    v9 = *&v14[4];
    _os_log_debug_impl(&dword_228986000, v8, OS_LOG_TYPE_DEBUG, "%{public}@: Stopping data collection", v14, 0xCu);
  }

  [*(a1 + 32) stopPerformingUpdatesWithErrorEncountered:{0, *v14}];
  v4 = *(a1 + 32);
  if (v4)
  {
    _HKInitializeLogging();
    v5 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
    {
      v10 = v5;
      v11 = objc_opt_class();
      v12 = *(v4 + 40);
      *v14 = 138543618;
      *&v14[4] = v11;
      *&v14[12] = 2048;
      *&v14[14] = v12;
      v13 = v11;
      _os_log_debug_impl(&dword_228986000, v10, OS_LOG_TYPE_DEBUG, "%{public}@: Transitioning to Idle. Previous state %ld", v14, 0x16u);
    }

    *(v4 + 40) = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)dataCollectorDiagnosticDescription
{
  v3 = [objc_opt_class() observedType];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_collectionInterval];
  v7 = self->_state - 1;
  if (v7 >= 3)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown <%ld>", self->_state];
  }

  else
  {
    v8 = off_278628920[v7];
  }

  v9 = [v4 stringWithFormat:@"%@ (%@): %@, %@", v5, v3, v6, v8];

  return v9;
}

+ (id)observedType
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (id)domain
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (Class)sensorDatumClass
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)stopPerformingUpdatesWithErrorEncountered:(BOOL)a3
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end