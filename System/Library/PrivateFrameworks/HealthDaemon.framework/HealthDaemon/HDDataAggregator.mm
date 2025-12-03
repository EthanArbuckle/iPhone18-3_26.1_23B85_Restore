@interface HDDataAggregator
- (BOOL)didPersistObjects:(id)objects lastDatum:(id)datum collector:(id)collector error:(id *)error;
- (BOOL)doesDatumPredateDatabaseObliteration:(id)obliteration;
- (BOOL)persistForCollector:(id)collector usedDatums:(id)datums source:(id)source device:(id)device error:(id *)error persistenceHandler:(id)handler;
- (BOOL)persistObjects:(id)objects usedDatums:(id)datums collector:(id)collector source:(id)source device:(id)device resolveAssociations:(BOOL)associations error:(id *)error;
- (HDDataAggregator)initWithDataCollectionManager:(id)manager;
- (HDDataAggregatorConfiguration)configuration;
- (HDDataCollectionManager)dataCollectionManager;
- (HKObjectType)objectType;
- (id)_keyValueDomain;
- (id)allCollectors;
- (id)configurationForCollector:(id)collector;
- (id)diagnosticDescription;
- (void)_considerStartingCollectors;
- (void)_startCollector:(id *)collector;
- (void)daemonReady:(id)ready;
- (void)dataCollector:(id)collector didChangeState:(id)state;
- (void)dataCollector:(id)collector didCollectSensorData:(id)data device:(id)device options:(unint64_t)options;
- (void)recomputeCollectorConfiguration;
- (void)registerDataCollector:(id)collector state:(id)state;
- (void)registerSensorDataObserver:(id)observer queue:(id)queue;
- (void)requestAggregationThroughDate:(id)date mode:(int64_t)mode options:(unint64_t)options completion:(id)completion;
- (void)resume;
- (void)setConfiguration:(id)configuration;
- (void)unregisterDataCollector:(id)collector;
@end

@implementation HDDataAggregator

- (HDDataCollectionManager)dataCollectionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_dataCollectionManager);

  return WeakRetained;
}

- (id)_keyValueDomain
{
  if (self)
  {
    v1 = MEMORY[0x277CCACA8];
    objectType = [self objectType];
    identifier = [objectType identifier];
    v4 = [v1 stringWithFormat:@"DATA_AGGREGATION-%@", identifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (HDDataAggregator)initWithDataCollectionManager:(id)manager
{
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = HDDataAggregator;
  v5 = [(HDDataAggregator *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataCollectionManager, managerCopy);
    *&v6->_lock._os_unfair_lock_opaque = 0;
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    lock_collectorRegistry = v6->_lock_collectorRegistry;
    v6->_lock_collectorRegistry = strongToStrongObjectsMapTable;

    v6->_lock_canStartCollectors = 0;
    v9 = [HDDataAggregatorConfiguration configurationWithLatency:0 interval:0 seriesDuration:0 activeWorkout:*MEMORY[0x277CCBBD8] foregroundObserver:*MEMORY[0x277CCBBD8] backgroundObserver:*MEMORY[0x277CCBBD8]];
    lock_configuration = v6->_lock_configuration;
    v6->_lock_configuration = v9;

    atomic_store(0, &v6->_hasStartedCollectors);
  }

  return v6;
}

- (void)resume
{
  WeakRetained = objc_loadWeakRetained(&self->_dataCollectionManager);
  profile = [WeakRetained profile];
  daemon = [profile daemon];
  [daemon registerDaemonReadyObserver:self queue:0];
}

- (void)requestAggregationThroughDate:(id)date mode:(int64_t)mode options:(unint64_t)options completion:(id)completion
{
  v49 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  completionCopy = completion;
  allCollectors = [(HDDataAggregator *)self allCollectors];
  if ([allCollectors count])
  {
    v9 = dispatch_group_create();
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x2020000000;
    v41 = 1;
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x3032000000;
    v38[3] = __Block_byref_object_copy__126;
    v38[4] = __Block_byref_object_dispose__126;
    v39 = 0;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = allCollectors;
    v10 = [obj countByEnumeratingWithState:&v34 objects:v48 count:16];
    if (v10)
    {
      v11 = *v35;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(obj);
          }

          collector = [*(*(&v34 + 1) + 8 * i) collector];
          if (objc_opt_respondsToSelector())
          {
            dispatch_group_enter(v9);
            _HKInitializeLogging();
            v14 = allCollectors;
            v15 = *MEMORY[0x277CCC298];
            if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              selfCopy = self;
              v44 = 2114;
              v45 = dateCopy;
              v46 = 2114;
              v47 = collector;
              _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting collection through %{public}@ from %{public}@", buf, 0x20u);
            }

            v28[0] = MEMORY[0x277D85DD0];
            v28[1] = 3221225472;
            v28[2] = __74__HDDataAggregator_requestAggregationThroughDate_mode_options_completion___block_invoke;
            v28[3] = &unk_278624FA0;
            v28[4] = self;
            v16 = dateCopy;
            v29 = v16;
            v17 = collector;
            v30 = v17;
            v32 = v40;
            v33 = v38;
            v31 = v9;
            [v17 dataAggregator:self requestsCollectionThroughDate:v16 completion:v28];
            allCollectors = v14;
          }
        }

        v10 = [obj countByEnumeratingWithState:&v34 objects:v48 count:16];
      }

      while (v10);
    }

    WeakRetained = objc_loadWeakRetained(&self->_dataCollectionManager);
    dataCollectionQueue = [WeakRetained dataCollectionQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__HDDataAggregator_requestAggregationThroughDate_mode_options_completion___block_invoke_299;
    block[3] = &unk_278624FC8;
    v25 = completionCopy;
    v26 = v40;
    v27 = v38;
    dispatch_group_notify(v9, dataCollectionQueue, block);

    _Block_object_dispose(v38, 8);
    _Block_object_dispose(v40, 8);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __74__HDDataAggregator_requestAggregationThroughDate_mode_options_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a2)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v15 = 138543874;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      v19 = 2114;
      v20 = v10;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished collection through %{public}@ for %{public}@", &v15, 0x20u);
    }
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v11 = *(*(a1 + 72) + 8);
    v13 = *(v11 + 40);
    v12 = (v11 + 40);
    if (!v13)
    {
      objc_storeStrong(v12, a3);
    }
  }

  dispatch_group_leave(*(a1 + 56));

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setConfiguration:(id)configuration
{
  v17 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  os_unfair_lock_lock(&self->_lock);
  lock_configuration = self->_lock_configuration;
  if (lock_configuration == configurationCopy || configurationCopy && [(HDDataAggregatorConfiguration *)lock_configuration isEqual:configurationCopy])
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_lock_configuration;
      v11 = 138543874;
      selfCopy = self;
      v13 = 2114;
      v14 = v7;
      v15 = 2114;
      v16 = configurationCopy;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Aggregator configuration changed from %{public}@ -> %{public}@", &v11, 0x20u);
    }

    v8 = [(HDDataAggregatorConfiguration *)configurationCopy copy];
    v9 = self->_lock_configuration;
    self->_lock_configuration = v8;

    os_unfair_lock_unlock(&self->_lock);
    [(HDDataAggregator *)self _considerStartingCollectors];
    [(HDDataAggregator *)self recomputeCollectorConfiguration];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_considerStartingCollectors
{
  v37 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    os_unfair_lock_lock((self + 8));
    if (*(self + 33))
    {
      v3 = 0;
      atomic_compare_exchange_strong((self + 32), &v3, 1u);
      if (!v3)
      {
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v4 = *(self + 16);
        v5 = [v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v28;
          do
          {
            for (i = 0; i != v6; ++i)
            {
              if (*v28 != v7)
              {
                objc_enumerationMutation(v4);
              }

              [(__CFString *)v2 addObject:*(*(&v27 + 1) + 8 * i)];
            }

            v6 = [v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
          }

          while (v6);
        }

        os_unfair_lock_unlock((self + 8));
        _HKInitializeLogging();
        v9 = *MEMORY[0x277CCC298];
        if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          selfCopy3 = self;
          v35 = 2114;
          v36 = v2;
          _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: start collectors: %{public}@", buf, 0x16u);
        }

        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v10 = v2;
        v11 = [(__CFString *)v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v24;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v24 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [(HDDataAggregator *)self _startCollector:?];
            }

            v12 = [(__CFString *)v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v12);
        }

        goto LABEL_30;
      }

      v19 = atomic_load((self + 32));
      if ((v19 & 1) == 0)
      {
        _HKInitializeLogging();
        v20 = *MEMORY[0x277CCC298];
        if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
        {
          v21 = @"NO";
          if (v3)
          {
            v21 = @"YES";
          }

          *buf = 138543618;
          selfCopy3 = self;
          v35 = 2114;
          v36 = v21;
          v16 = "%{public}@: Unable to set _hasStartedCollectors (%{public}@); not starting";
          v17 = v20;
          v18 = 22;
          goto LABEL_23;
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC298];
      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy3 = self;
        v16 = "%{public}@: Not yet starting collectors (_canStartCollectors = NO)";
        v17 = v15;
        v18 = 12;
LABEL_23:
        _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
      }
    }

    os_unfair_lock_unlock((self + 8));
LABEL_30:
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (HDDataAggregatorConfiguration)configuration
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_configuration;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)registerDataCollector:(id)collector state:(id)state
{
  v21 = *MEMORY[0x277D85DE8];
  collectorCopy = collector;
  stateCopy = state;
  v9 = stateCopy;
  if (collectorCopy)
  {
    if (stateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDataAggregator.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"collector != nil"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDDataAggregator.m" lineNumber:159 description:{@"Invalid parameter not satisfying: %@", @"state != nil"}];

LABEL_3:
  os_unfair_lock_lock(&self->_lock);
  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v17 = 2114;
    v18 = collectorCopy;
    v19 = 2114;
    v20 = v9;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Registered %{public}@ with state %{public}@", buf, 0x20u);
  }

  [(NSMapTable *)self->_lock_collectorRegistry setObject:v9 forKey:collectorCopy];
  os_unfair_lock_unlock(&self->_lock);
  [(HDDataAggregator *)self _considerStartingCollectors];
  v11 = atomic_load(&self->_hasStartedCollectors);
  if (v11)
  {
    [(HDDataAggregator *)&self->super.isa _startCollector:collectorCopy];
    [(HDDataAggregator *)self recomputeCollectorConfiguration];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_startCollector:(id *)collector
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (collector)
  {
    CanResumeFromLastSensorDatum = _HDDataCollectorCanResumeFromLastSensorDatum(v3);
    v6 = MEMORY[0x277CCC298];
    if (CanResumeFromLastSensorDatum)
    {
      v7 = [HDKeyValueDomain alloc];
      _keyValueDomain = [(HDDataAggregator *)collector _keyValueDomain];
      WeakRetained = objc_loadWeakRetained(collector + 7);
      profile = [WeakRetained profile];
      v11 = [(HDKeyValueDomain *)v7 initWithCategory:0 domainName:_keyValueDomain profile:profile];

      v12 = [v4 identifierForDataAggregator:collector];
      if (!v12)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:sel__startCollector_ object:collector file:@"HDDataAggregator.m" lineNumber:434 description:{@"%@: Unexpectedly nil collector key when starting %@", collector, v4}];
      }

      v25 = 0;
      v13 = [(HDKeyValueDomain *)v11 dataForKey:v12 error:&v25];
      v14 = v25;

      if (v13)
      {
        v15 = objc_opt_class();
        if (objc_opt_respondsToSelector())
        {
          v15 = [v4 sensorDatumClassForAggregator:collector];
        }

        else
        {
          _HKInitializeLogging();
          v18 = *v6;
          if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            collectorCopy4 = collector;
            v28 = 2114;
            v29 = v4;
            v30 = 2114;
            v31 = v15;
            _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "%{public}@: *** Collector %{public}@ does not implement sensorDatumClassForAggregator:! Please implement to silence this warning. Assuming %{public}@.", buf, 0x20u);
          }
        }

        v24 = v14;
        v16 = [MEMORY[0x277CCAAC8] hk_unarchivedObjectOfClass:v15 forKey:@"sensor_datum" data:v13 error:&v24];
        v19 = v24;

        if (!v16)
        {
          _HKInitializeLogging();
          v20 = *v6;
          if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
          {
            *buf = 138544130;
            collectorCopy4 = collector;
            v28 = 2114;
            v29 = v15;
            v30 = 2114;
            v31 = v4;
            v32 = 2114;
            v33 = v19;
            _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "%{public}@: Failed to decode sensor datum of class %{public}@ when starting %{public}@: %{public}@", buf, 0x2Au);
          }

          v16 = 0;
        }

        v14 = v19;
      }

      else
      {
        if (v14)
        {
          _HKInitializeLogging();
          v17 = *v6;
          if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            collectorCopy4 = collector;
            v28 = 2114;
            v29 = v4;
            v30 = 2114;
            v31 = v14;
            _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retrieve existing context for collector '%{public}@': %{public}@:", buf, 0x20u);
          }
        }

        v13 = 0;
        v16 = 0;
      }
    }

    else
    {
      v13 = 0;
      v16 = 0;
      v14 = 0;
    }

    _HKInitializeLogging();
    v21 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      collectorCopy4 = collector;
      v28 = 2114;
      v29 = v4;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting collector %{public}@ with last persisted datum: %@", buf, 0x20u);
    }

    [v4 beginCollectionForDataAggregator:collector lastPersistedSensorDatum:v16];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)unregisterDataCollector:(id)collector
{
  v14 = *MEMORY[0x277D85DE8];
  collectorCopy = collector;
  if (!collectorCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDataAggregator.m" lineNumber:175 description:{@"Invalid parameter not satisfying: %@", @"collector != nil"}];
  }

  os_unfair_lock_lock(&self->_lock);
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = collectorCopy;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Unregistered %{public}@", buf, 0x16u);
  }

  [(NSMapTable *)self->_lock_collectorRegistry removeObjectForKey:collectorCopy];
  os_unfair_lock_unlock(&self->_lock);
  v7 = atomic_load(&self->_hasStartedCollectors);
  if (v7)
  {
    [(HDDataAggregator *)self recomputeCollectorConfiguration];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)allCollectors
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = atomic_load(&self->_hasStartedCollectors);
  if (v2)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    os_unfair_lock_lock(&self->_lock);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_lock_collectorRegistry;
    v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = objc_alloc_init(HDDataCollectorRecord);
          [(HDDataCollectorRecord *)v11 setCollector:v10, v15];
          v12 = [(NSMapTable *)self->_lock_collectorRegistry objectForKey:v10];
          [(HDDataCollectorRecord *)v11 setState:v12];

          [v4 addObject:v11];
        }

        v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    os_unfair_lock_unlock(&self->_lock);
    [v4 sortUsingComparator:&__block_literal_global_157];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __33__HDDataAggregator_allCollectors__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 state];
  v6 = [v5 priority];

  v7 = [v4 state];

  v8 = [v7 priority];
  if (v6 <= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v6 < v8)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

- (void)dataCollector:(id)collector didChangeState:(id)state
{
  v24 = *MEMORY[0x277D85DE8];
  collectorCopy = collector;
  stateCopy = state;
  v9 = stateCopy;
  if (!collectorCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDataAggregator.m" lineNumber:221 description:{@"Invalid parameter not satisfying: %@", @"collector != nil"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_12:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDDataAggregator.m" lineNumber:222 description:{@"Invalid parameter not satisfying: %@", @"state != nil"}];

    goto LABEL_3;
  }

  if (!stateCopy)
  {
    goto LABEL_12;
  }

LABEL_3:
  os_unfair_lock_lock(&self->_lock);
  v10 = [(NSMapTable *)self->_lock_collectorRegistry objectForKey:collectorCopy];
  v11 = v10;
  if (v10 == v9 || v9 && [v10 isEqual:v9])
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      selfCopy = self;
      v18 = 2114;
      v19 = collectorCopy;
      v20 = 2114;
      v21 = v11;
      v22 = 2114;
      v23 = v9;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Collector %{public}@ changed state %{public}@ -> %{public}@", buf, 0x2Au);
    }

    [(NSMapTable *)self->_lock_collectorRegistry setObject:v9 forKey:collectorCopy];
    os_unfair_lock_unlock(&self->_lock);
    [(HDDataAggregator *)self recomputeCollectorConfiguration];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)dataCollector:(id)collector didCollectSensorData:(id)data device:(id)device options:(unint64_t)options
{
  dataCopy = data;
  deviceCopy = device;
  if (self)
  {
    sensorDataObservers = self->_sensorDataObservers;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62__HDDataAggregator__notifySensorDataObservers_device_options___block_invoke;
    v11[3] = &unk_2786250B0;
    v11[4] = self;
    v12 = dataCopy;
    v13 = deviceCopy;
    [(HKObserverSet *)sensorDataObservers notifyObservers:v11];
  }
}

- (BOOL)persistObjects:(id)objects usedDatums:(id)datums collector:(id)collector source:(id)source device:(id)device resolveAssociations:(BOOL)associations error:(id *)error
{
  objectsCopy = objects;
  datumsCopy = datums;
  collectorCopy = collector;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __96__HDDataAggregator_persistObjects_usedDatums_collector_source_device_resolveAssociations_error___block_invoke;
  v22[3] = &unk_278625010;
  v22[4] = self;
  v23 = objectsCopy;
  associationsCopy = associations;
  v24 = datumsCopy;
  v25 = collectorCopy;
  v18 = collectorCopy;
  v19 = datumsCopy;
  v20 = objectsCopy;
  LOBYTE(device) = [(HDDataAggregator *)self persistForCollector:v18 usedDatums:v19 source:source device:device error:error persistenceHandler:v22];

  return device;
}

uint64_t __96__HDDataAggregator_persistObjects_usedDatums_collector_source_device_resolveAssociations_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((v5 + 56));
  v8 = [WeakRetained databaseAssertion];
  v9 = [HDDatabaseTransactionContext contextForAccessibilityAssertion:v8];

  v10 = objc_loadWeakRetained((*(a1 + 32) + 56));
  v11 = [v10 profile];
  v12 = [v11 dataManager];
  v13 = [v12 insertDataObjects:*(a1 + 40) withProvenance:v6 creationDate:1 skipInsertionFilter:0 updateSourceOrder:*(a1 + 64) resolveAssociations:v9 transactionContext:CFAbsoluteTimeGetCurrent() error:a3];

  v14 = 0;
  if (v13)
  {
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17 = [*(a1 + 48) lastObject];
    v14 = [v15 didPersistObjects:v16 lastDatum:v17 collector:*(a1 + 56) error:a3];
  }

  return v14;
}

- (BOOL)persistForCollector:(id)collector usedDatums:(id)datums source:(id)source device:(id)device error:(id *)error persistenceHandler:(id)handler
{
  collectorCopy = collector;
  datumsCopy = datums;
  sourceCopy = source;
  deviceCopy = device;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_dataCollectionManager);
  profile = [WeakRetained profile];

  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x3032000000;
  v59[3] = __Block_byref_object_copy__126;
  v59[4] = __Block_byref_object_dispose__126;
  v60 = 0;
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x3032000000;
  v57[3] = __Block_byref_object_copy__126;
  v57[4] = __Block_byref_object_dispose__126;
  v58 = 0;
  dataCollectionManager = [profile dataCollectionManager];
  databaseAssertion = [dataCollectionManager databaseAssertion];
  v21 = [HDDatabaseTransactionContext contextForAccessibilityAssertion:databaseAssertion];

  database = [profile database];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __90__HDDataAggregator_persistForCollector_usedDatums_source_device_error_persistenceHandler___block_invoke;
  v50[3] = &unk_278625038;
  v55 = v59;
  v23 = profile;
  v51 = v23;
  v24 = sourceCopy;
  v52 = v24;
  selfCopy = self;
  v25 = deviceCopy;
  v54 = v25;
  v56 = v57;
  LOBYTE(device) = [(HDHealthEntity *)HDSourceEntity performWriteTransactionWithHealthDatabase:database context:v21 error:error block:v50];

  if (device)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __90__HDDataAggregator_persistForCollector_usedDatums_source_device_error_persistenceHandler___block_invoke_321;
    aBlock[3] = &unk_278625060;
    v26 = v23;
    v45 = v26;
    v48 = v59;
    v49 = v57;
    selfCopy2 = self;
    v47 = handlerCopy;
    v27 = _Block_copy(aBlock);
    database2 = [v26 database];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __90__HDDataAggregator_persistForCollector_usedDatums_source_device_error_persistenceHandler___block_invoke_324;
    v39[3] = &unk_2786185E8;
    v40 = collectorCopy;
    selfCopy3 = self;
    v42 = datumsCopy;
    v43 = v27;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __90__HDDataAggregator_persistForCollector_usedDatums_source_device_error_persistenceHandler___block_invoke_4;
    v34[3] = &unk_278625088;
    v29 = v43;
    v38 = v29;
    v35 = v40;
    selfCopy4 = self;
    v37 = v42;
    v30 = [(HDHealthEntity *)HDDataEntity performWriteTransactionWithHealthDatabase:database2 context:v21 error:error block:v39 inaccessibilityHandler:v34];
  }

  else
  {
    v30 = 0;
  }

  _Block_object_dispose(v57, 8);
  _Block_object_dispose(v59, 8);

  return v30;
}

uint64_t __90__HDDataAggregator_persistForCollector_usedDatums_source_device_error_persistenceHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 32) sourceManager];
  v6 = *(a1 + 40);
  v28 = 0;
  v7 = [v5 sourceEntityForClientSource:v6 createOrUpdateIfNecessary:1 error:&v28];
  v8 = v28;
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;

  if (*(*(*(a1 + 64) + 8) + 40))
  {

    if (*(a1 + 56))
    {
      v11 = [*(a1 + 32) deviceManager];
      v12 = *(a1 + 56);
      v27 = 0;
      v13 = [v11 deviceEntityForDevice:v12 error:&v27];
      v14 = v27;
      v15 = *(*(a1 + 72) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v13;

      if (!*(*(*(a1 + 72) + 8) + 40))
      {
        _HKInitializeLogging();
        v17 = *MEMORY[0x277CCC298];
        if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_INFO))
        {
          v19 = *(a1 + 48);
          v18 = *(a1 + 56);
          *buf = 138543874;
          v30 = v18;
          v31 = 2114;
          v32 = v19;
          v33 = 2114;
          v34 = v14;
          _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_INFO, "Failed to retrieve device entity for device '%{public}@' when creating a sample for aggregator '%{public}@': %{public}@", buf, 0x20u);
        }

        v14 = v14;
        if (!v14)
        {
          goto LABEL_14;
        }

        if (!a3)
        {
          goto LABEL_8;
        }

LABEL_13:
        v23 = v14;
        *a3 = v14;
        goto LABEL_14;
      }
    }

    else
    {
      v14 = 0;
    }

    v24 = 1;
    goto LABEL_17;
  }

  _HKInitializeLogging();
  v20 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_INFO))
  {
    v21 = *(a1 + 40);
    v22 = *(a1 + 48);
    *buf = 138543874;
    v30 = v21;
    v31 = 2114;
    v32 = v22;
    v33 = 2114;
    v34 = v8;
    _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_INFO, "Failed to retrieve source entity for source '%{public}@' when creating a sample for aggregator '%{public}@': %{public}@", buf, 0x20u);
  }

  v14 = v8;
  if (!v14)
  {
    goto LABEL_14;
  }

  if (a3)
  {
    goto LABEL_13;
  }

LABEL_8:
  _HKLogDroppedError();
LABEL_14:

  v24 = 0;
LABEL_17:

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t __90__HDDataAggregator_persistForCollector_usedDatums_source_device_error_persistenceHandler___block_invoke_321(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) dataProvenanceManager];
  v5 = [v4 localDataProvenanceForSourceEntity:*(*(*(a1 + 56) + 8) + 40) version:0 deviceEntity:*(*(*(a1 + 64) + 8) + 40)];

  v6 = *(a1 + 48);
  v15 = 0;
  v7 = (*(v6 + 16))();
  v8 = v15;
  if ((v7 & 1) == 0)
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 40);
      *buf = 138543618;
      v17 = v10;
      v18 = 2114;
      v19 = v8;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_INFO, "%{public}@: Persistence failed: %{public}@", buf, 0x16u);
    }

    v11 = v8;
    if (v11)
    {
      if (a2)
      {
        v12 = v11;
        *a2 = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t __90__HDDataAggregator_persistForCollector_usedDatums_source_device_error_persistenceHandler___block_invoke_324(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];

  v7 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __90__HDDataAggregator_persistForCollector_usedDatums_source_device_error_persistenceHandler___block_invoke_2;
    v22[3] = &unk_278613830;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v23 = v10;
    v24 = v11;
    v25 = v12;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __90__HDDataAggregator_persistForCollector_usedDatums_source_device_error_persistenceHandler___block_invoke_3;
    v18[3] = &unk_278613830;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v19 = v13;
    v20 = v14;
    v21 = v15;
    [v6 onCommit:v22 orRollback:v18];
  }

  v16 = (*(*(a1 + 56) + 16))(*(a1 + 56), a3, v8, v9);

  return v16;
}

void __90__HDDataAggregator_persistForCollector_usedDatums_source_device_error_persistenceHandler___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Database transaction rollback."];
  [*(a1 + 32) dataAggregator:*(a1 + 40) didPersistDatums:*(a1 + 48) success:0 error:v2];
}

uint64_t __90__HDDataAggregator_persistForCollector_usedDatums_source_device_error_persistenceHandler___block_invoke_4(uint64_t a1)
{
  v2 = (*(*(a1 + 56) + 16))();
  v3 = 0;
  v4 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) dataAggregator:*(a1 + 40) didPersistDatums:*(a1 + 48) success:v2 error:v3];
  }

  return v2;
}

- (BOOL)didPersistObjects:(id)objects lastDatum:(id)datum collector:(id)collector error:(id *)error
{
  datumCopy = datum;
  collectorCopy = collector;
  if (_HDDataCollectorCanResumeFromLastSensorDatum(collectorCopy))
  {
    v11 = [HDKeyValueDomain alloc];
    _keyValueDomain = [(HDDataAggregator *)self _keyValueDomain];
    WeakRetained = objc_loadWeakRetained(&self->_dataCollectionManager);
    profile = [WeakRetained profile];
    v15 = [(HDKeyValueDomain *)v11 initWithCategory:0 domainName:_keyValueDomain profile:profile];

    v16 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    [v16 encodeObject:datumCopy forKey:@"sensor_datum"];
    encodedData = [v16 encodedData];
    v18 = [collectorCopy identifierForDataAggregator:self];
    v19 = [(HDKeyValueDomain *)v15 setData:encodedData forKey:v18 error:error];
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

- (BOOL)doesDatumPredateDatabaseObliteration:(id)obliteration
{
  obliterationCopy = obliteration;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HDDataAggregator_doesDatumPredateDatabaseObliteration___block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  if (qword_280D67D58 != -1)
  {
    dispatch_once(&qword_280D67D58, block);
  }

  if (_HDIsUnitTesting)
  {
    dateInterval = [obliterationCopy dateInterval];
    startDate = [dateInterval startDate];
    p_unitTest_lastObliterationDate = &self->_unitTest_lastObliterationDate;
  }

  else
  {
    if (!_MergedGlobals_213)
    {
      v8 = 0;
      goto LABEL_8;
    }

    dateInterval = [obliterationCopy dateInterval];
    startDate = [dateInterval startDate];
    p_unitTest_lastObliterationDate = &_MergedGlobals_213;
  }

  v8 = [startDate hk_isBeforeDate:*p_unitTest_lastObliterationDate];

LABEL_8:
  return v8;
}

void __57__HDDataAggregator_doesDatumPredateDatabaseObliteration___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) dataCollectionManager];
  v1 = [v5 profile];
  v2 = [v1 database];
  v3 = [v2 mostRecentObliterationDate];
  v4 = _MergedGlobals_213;
  _MergedGlobals_213 = v3;
}

- (HKObjectType)objectType
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

void __62__HDDataAggregator__notifySensorDataObservers_device_options___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v3 objectType];
  [v5 aggregator:v3 didCollectSensorData:v4 objectType:v6 device:a1[6]];
}

- (void)registerSensorDataObserver:(id)observer queue:(id)queue
{
  queueCopy = queue;
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  if (!self->_sensorDataObservers)
  {
    v7 = objc_alloc(MEMORY[0x277CCD738]);
    v8 = [v7 initWithName:@"aggregation-sensor-data-observation" loggingCategory:*MEMORY[0x277CCC298]];
    sensorDataObservers = self->_sensorDataObservers;
    self->_sensorDataObservers = v8;
  }

  os_unfair_lock_unlock(&self->_lock);
  [(HKObserverSet *)self->_sensorDataObservers registerObserver:observerCopy queue:queueCopy];
}

- (void)recomputeCollectorConfiguration
{
  v30 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_configurationLock);
  [(HDDataAggregator *)self allCollectors];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v22 = 0u;
  v3 = [obj countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v20;
    v7 = MEMORY[0x277CCC298];
    *&v4 = 138543874;
    v17 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        collector = [v9 collector];
        v11 = [(HDDataAggregator *)self configurationForCollector:collector];

        _HKInitializeLogging();
        v12 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
          collector2 = [v9 collector];
          *buf = v17;
          selfCopy = self;
          v25 = 2114;
          v26 = collector2;
          v27 = 2114;
          v28 = v11;
          _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: wants collection for collector %{public}@ with configuration %{public}@", buf, 0x20u);
        }

        collector3 = [v9 collector];
        [collector3 dataAggregator:self wantsCollectionWithConfiguration:v11];
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_configurationLock);

  v16 = *MEMORY[0x277D85DE8];
}

- (id)configurationForCollector:(id)collector
{
  configuration = [(HDDataAggregator *)self configuration];
  v4 = [HDDataCollectorConfiguration configurationWithType:1 aggregatorConfiguration:configuration];

  return v4;
}

- (void)daemonReady:(id)ready
{
  WeakRetained = objc_loadWeakRetained(&self->_dataCollectionManager);
  profile = [WeakRetained profile];
  database = [profile database];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__HDDataAggregator_daemonReady___block_invoke;
  v7[3] = &unk_278613968;
  v7[4] = self;
  [database performWhenDataProtectedByFirstUnlockIsAvailable:v7];
}

uint64_t __32__HDDataAggregator_daemonReady___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  *(*(a1 + 32) + 33) = 1;
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  [(HDDataAggregator *)*(a1 + 32) _considerStartingCollectors];
  v2 = *(a1 + 32);

  return [v2 recomputeCollectorConfiguration];
}

- (id)diagnosticDescription
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = v3;
  v5 = atomic_load(&self->_hasStartedCollectors);
  if (v5)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 appendFormat:@"hasStartedCollectors: %@\n", v6];
  os_unfair_lock_lock(&self->_lock);
  [v4 appendFormat:@"configuration: %@\n", self->_lock_configuration];
  [v4 appendString:@"dataCollectors:\n"];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  keyEnumerator = [(NSMapTable *)self->_lock_collectorRegistry keyEnumerator];
  v8 = [keyEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [(NSMapTable *)self->_lock_collectorRegistry objectForKey:v12];
        [v4 appendFormat:@"  %@: %@\n", v12, v13];
      }

      v9 = [keyEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_lock);
  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

@end