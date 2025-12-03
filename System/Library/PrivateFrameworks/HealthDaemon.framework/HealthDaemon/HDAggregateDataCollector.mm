@interface HDAggregateDataCollector
- (HDAggregateDataCollector)initWithProfile:(id)profile;
- (double)maxDatumDuration;
- (id)_queue_lastReceivedSecondaryContext;
- (id)_queue_lastReceivedSensorDatum;
- (id)_queue_processSensorDataBatched:(id)batched firstDatum:(id)datum lastSensorDatum:(id *)sensorDatum;
- (id)hkObjectsFromSensorData:(id)data baseSensorDatum:(id)datum startDate:(id)date endDate:(id)endDate;
- (void)_queue_beginStreaming;
- (void)_queue_fetchHistoricalDataForcedUpdate:(void *)update completion:;
- (void)_queue_handleUpdatingHistoricalDataForcedUpdate:(void *)update completion:;
- (void)_queue_updateLastReceivedSecondaryContext:(id)context;
- (void)_queue_updateLastReceivedSensorDatum:(id)datum;
- (void)beginUpdatesFromDatum:(id)datum withHandler:(id)handler;
- (void)fetchHistoricalSensorDataSinceDatum:(id)datum databaseIdentifier:(id)identifier completion:(id)completion;
- (void)setMaxDatumDuration:(double)duration;
- (void)updateHistoricalData;
- (void)updateHistoricalDataForcedUpdate:(BOOL)update completion:(id)completion;
- (void)updateHistoricalDataWithCompletion:(id)completion;
@end

@implementation HDAggregateDataCollector

- (id)_queue_lastReceivedSensorDatum
{
  lastReceivedSensorDatum = self->_lastReceivedSensorDatum;
  if (!lastReceivedSensorDatum)
  {
    v4 = [(HDDataCollector *)self _retrieveContextForKey:?];
    v5 = [objc_opt_class() _sensorDatumFromContext:v4];

    v6 = self->_lastReceivedSensorDatum;
    self->_lastReceivedSensorDatum = v5;

    lastReceivedSensorDatum = self->_lastReceivedSensorDatum;
  }

  return lastReceivedSensorDatum;
}

void __47__HDAggregateDataCollector__queue_beginUpdates__block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = v5;
  if (WeakRetained)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC298];
    v8 = *MEMORY[0x277CCC298];
    if (a2)
    {
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_7:
        v11 = WeakRetained[3];
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __66__HDAggregateDataCollector__beginUpdatesHandlerWithSuccess_error___block_invoke;
        v15 = &unk_278618990;
        v17 = a2;
        v16 = WeakRetained;
        dispatch_async(v11, buf);
        goto LABEL_8;
      }

      v9 = v7;
      *buf = 138543362;
      *&buf[4] = objc_opt_class();
      v10 = *&buf[4];
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Received update notification", buf, 0xCu);
    }

    else
    {
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v9 = v7;
      *buf = 138543618;
      *&buf[4] = objc_opt_class();
      *&buf[12] = 2114;
      *&buf[14] = v6;
      v10 = *&buf[4];
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Error occurred during update handler: %{public}@", buf, 0x16u);
    }

    goto LABEL_7;
  }

LABEL_8:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_queue_beginStreaming
{
  v12 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = HDAggregateDataCollector;
  [(HDDataCollector *)&v9 _queue_beginStreaming];
  if (self && self->super._disabled)
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEBUG))
    {
      v4 = v3;
      v5 = objc_opt_class();
      *buf = 138543362;
      v11 = v5;
      v6 = v5;
      _os_log_debug_impl(&dword_228986000, v4, OS_LOG_TYPE_DEBUG, "%{public}@: Data collector disabled, not beginning streaming.", buf, 0xCu);
    }
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__HDAggregateDataCollector__queue_beginStreaming__block_invoke;
    v8[3] = &unk_2786130B0;
    v8[4] = self;
    if (self)
    {
      [(HDAggregateDataCollector *)self _queue_handleUpdatingHistoricalDataForcedUpdate:v8 completion:?];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __49__HDAggregateDataCollector__queue_beginStreaming__block_invoke(uint64_t a1, int a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (a2)
  {
    if (v2)
    {
      v3 = v2[72];
      _HKInitializeLogging();
      v4 = *MEMORY[0x277CCC298];
      v5 = *MEMORY[0x277CCC298];
      if (v3 == 1)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          v6 = v4;
          LODWORD(buf) = 138543362;
          *(&buf + 4) = objc_opt_class();
          v7 = *(&buf + 4);
          _os_log_debug_impl(&dword_228986000, v6, OS_LOG_TYPE_DEBUG, "%{public}@: Data collector disabled, not beginning streaming.", &buf, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v4;
          LODWORD(buf) = 138543362;
          *(&buf + 4) = objc_opt_class();
          v11 = *(&buf + 4);
          _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Begin updates", &buf, 0xCu);
        }

        v12 = [v2 _queue_lastReceivedSensorDatum];
        [v2 stopPerformingUpdatesWithErrorEncountered:0];
        objc_initWeak(&location, v2);
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v16 = __47__HDAggregateDataCollector__queue_beginUpdates__block_invoke;
        v17 = &unk_278628890;
        objc_copyWeak(v18, &location);
        [v2 beginUpdatesFromDatum:v12 withHandler:&buf];
        objc_destroyWeak(v18);
        objc_destroyWeak(&location);
      }
    }

    v13 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v8 = *MEMORY[0x277D85DE8];
    v9 = *(a1 + 32);

    [(HDDataCollector *)v9 _queue_transitionToFailure];
  }
}

- (void)updateHistoricalData
{
  queue = self->super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HDAggregateDataCollector_updateHistoricalData__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

void __48__HDAggregateDataCollector_updateHistoricalData__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 40) == 3)
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v10 = 138543362;
      v11 = objc_opt_class();
      v6 = v11;
      _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Detected failure state, beginning streaming", &v10, 0xCu);
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      if (v7[5] != 2)
      {
        [(HDDataCollector *)v7 _queue_transitionToStreaming];
        [v7 _queue_beginStreaming];
      }
    }

    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = *MEMORY[0x277D85DE8];

    [(HDAggregateDataCollector *)v2 _queue_handleUpdatingHistoricalDataForcedUpdate:0 completion:?];
  }
}

- (id)_queue_lastReceivedSecondaryContext
{
  v25 = *MEMORY[0x277D85DE8];
  lastReceivedSecondaryContext = self->_lastReceivedSecondaryContext;
  if (!lastReceivedSecondaryContext)
  {
    v4 = [(HDDataCollector *)self _retrieveContextForKey:?];
    v5 = v4;
    if (v4 && [v4 length])
    {
      v6 = MEMORY[0x277CCAAC8];
      secondaryContextClasses = [objc_opt_class() secondaryContextClasses];
      v18 = 0;
      v8 = [v6 unarchivedObjectOfClasses:secondaryContextClasses fromData:v5 error:&v18];
      v9 = v18;

      if (!v8)
      {
        _HKInitializeLogging();
        v10 = *MEMORY[0x277CCC298];
        if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
        {
          v14 = v10;
          v15 = objc_opt_class();
          v16 = v15;
          v17 = [v5 length];
          *buf = 138543874;
          v20 = v15;
          v21 = 2048;
          v22 = v17;
          v23 = 2114;
          v24 = v9;
          _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Error decoding context (%lu bytes): %{public}@", buf, 0x20u);
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v11 = self->_lastReceivedSecondaryContext;
    self->_lastReceivedSecondaryContext = v8;

    lastReceivedSecondaryContext = self->_lastReceivedSecondaryContext;
  }

  v12 = *MEMORY[0x277D85DE8];

  return lastReceivedSecondaryContext;
}

- (HDAggregateDataCollector)initWithProfile:(id)profile
{
  profileCopy = profile;
  v18.receiver = self;
  v18.super_class = HDAggregateDataCollector;
  v5 = [(HDDataCollector *)&v18 initWithProfile:profileCopy];
  v6 = v5;
  if (v5)
  {
    v5->_maxDatumDuration = 360.0;
    v5->_didReceiveSensorDatum = 0;
    objc_initWeak(&location, v5);
    v7 = objc_alloc(MEMORY[0x277CCDD98]);
    queue = v6->super._queue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __44__HDAggregateDataCollector_initWithProfile___block_invoke;
    v15[3] = &unk_278616F38;
    objc_copyWeak(&v16, &location);
    v9 = [v7 initWithMode:1 clock:0 queue:queue delay:v15 block:1.84467441e19];
    historicalFetchOperation = v6->_historicalFetchOperation;
    v6->_historicalFetchOperation = v9;

    v11 = v6->super._queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__HDAggregateDataCollector_initWithProfile___block_invoke_2;
    block[3] = &unk_278613968;
    v14 = v6;
    dispatch_async(v11, block);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __44__HDAggregateDataCollector_initWithProfile___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __66__HDAggregateDataCollector__queue_executeHistoricalFetchOperation__block_invoke;
    v3[3] = &unk_2786130B0;
    v3[4] = WeakRetained;
    v2 = WeakRetained;
    [(HDAggregateDataCollector *)WeakRetained _queue_handleUpdatingHistoricalDataForcedUpdate:v3 completion:?];
    WeakRetained = v2;
  }
}

void __44__HDAggregateDataCollector_initWithProfile___block_invoke_2(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = *(*(a1 + 32) + 88);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v2 enableLoggingWithName:v4 category:*MEMORY[0x277CCC298]];
}

void __66__HDAggregateDataCollector__queue_executeHistoricalFetchOperation__block_invoke(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = v6;
      *v11 = 138543618;
      *&v11[4] = objc_opt_class();
      *&v11[12] = 2114;
      *&v11[14] = v5;
      v10 = *&v11[4];
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Error occurred during historical fetch for update handler: %{public}@", v11, 0x16u);
    }

    [*(a1 + 32) stopPerformingUpdatesWithErrorEncountered:{0, *v11, *&v11[16], v12}];
    [(HDDataCollector *)*(a1 + 32) _queue_transitionToFailure];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (double)maxDatumDuration
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__HDAggregateDataCollector_maxDatumDuration__block_invoke;
  v4[3] = &unk_278613990;
  v4[4] = self;
  v4[5] = &v5;
  [(HDDataCollector *)self _performSync:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __44__HDAggregateDataCollector_maxDatumDuration__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_maxDatumDuration];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (void)setMaxDatumDuration:(double)duration
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__HDAggregateDataCollector_setMaxDatumDuration___block_invoke;
  v3[3] = &unk_2786138F8;
  v3[4] = self;
  *&v3[5] = duration;
  [(HDDataCollector *)self _performAsync:v3];
}

double __48__HDAggregateDataCollector_setMaxDatumDuration___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 128) = result;
  return result;
}

void __66__HDAggregateDataCollector__beginUpdatesHandlerWithSuccess_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    *(v3 + 104) = v2;
    v4 = *(a1 + 32);
    v5 = v4[11];
    [v4 _queue_aggregationInterval];

    [v5 executeWithDelay:?];
  }

  else
  {
    *(v3 + 104) = 0;
    v6 = *(a1 + 32);

    [(HDDataCollector *)v6 _queue_transitionToFailure];
  }
}

- (void)_queue_updateLastReceivedSensorDatum:(id)datum
{
  v22 = *MEMORY[0x277D85DE8];
  objc_storeStrong(&self->_lastReceivedSensorDatum, datum);
  datumCopy = datum;
  v6 = self->_lastReceivedSensorDatum;
  v7 = v6;
  v14 = 0;
  if (self && v6)
  {
    v15 = 0;
    v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v15];
    v8 = v15;
    if (!v14)
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC298];
      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
      {
        v11 = v9;
        v12 = objc_opt_class();
        *buf = 138543874;
        v17 = v12;
        v18 = 2112;
        v19 = v7;
        v20 = 2114;
        v21 = v8;
        v13 = v12;
        _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Error encoding context (%@) %{public}@", buf, 0x20u);
      }
    }
  }

  [(HDDataCollector *)self _persistContext:v14 forKey:@"context"];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_updateLastReceivedSecondaryContext:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  objc_storeStrong(&self->_lastReceivedSecondaryContext, context);
  contextCopy = context;
  v13 = 0;
  v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:contextCopy requiringSecureCoding:1 error:&v13];
  v6 = v13;
  if (!v12)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
    {
      v9 = v7;
      v10 = objc_opt_class();
      *buf = 138543874;
      v15 = v10;
      v16 = 2112;
      v17 = contextCopy;
      v18 = 2114;
      v19 = v6;
      v11 = v10;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Error encoding dictionary context (%@) %{public}@", buf, 0x20u);
    }
  }

  [(HDDataCollector *)self _persistContext:v12 forKey:@"secondaryContext"];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_queue_handleUpdatingHistoricalDataForcedUpdate:(void *)update completion:
{
  updateCopy = update;
  v6 = updateCopy;
  if (self)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __87__HDAggregateDataCollector__queue_handleUpdatingHistoricalDataForcedUpdate_completion___block_invoke;
    v7[3] = &unk_278626D18;
    v7[4] = self;
    v9 = a2;
    v8 = updateCopy;
    [(HDAggregateDataCollector *)self _queue_fetchHistoricalDataForcedUpdate:a2 completion:v7];
  }
}

void __87__HDAggregateDataCollector__queue_handleUpdatingHistoricalDataForcedUpdate_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
    if (*(v7 + 104) == 1)
    {
      *(v7 + 64) = 0;
    }

    goto LABEL_12;
  }

  if (![v5 hk_isHealthKitError] || objc_msgSend(v6, "code") != 450)
  {
LABEL_12:
    v17 = *(a1 + 40);
    if (v17)
    {
      (*(v17 + 16))(v17, a2, v6);
    }

    goto LABEL_14;
  }

  _HKInitializeLogging();
  v8 = MEMORY[0x277CCC298];
  v9 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = v9;
    v19 = 138543362;
    v20 = objc_opt_class();
    v12 = v20;
    _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Detected CoreMotion database reset, resetting state", &v19, 0xCu);
  }

  if (*(a1 + 32))
  {
    [*(a1 + 32) _queue_updateLastReceivedSensorDatum:0];
    _HKInitializeLogging();
    v13 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = objc_opt_class();
      v19 = 138543362;
      v20 = v15;
      v16 = v15;
      _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Set last received sensor datum to nil, persisting nil context", &v19, 0xCu);
    }
  }

  [(HDAggregateDataCollector *)*(a1 + 32) _queue_handleUpdatingHistoricalDataForcedUpdate:*(a1 + 40) completion:?];
LABEL_14:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_queue_fetchHistoricalDataForcedUpdate:(void *)update completion:
{
  v32 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if (self[72] != 1)
  {
    if (self[120] == 1 && (a2 & 1) == 0)
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC298];
      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        *buf = 138543362;
        v27 = objc_opt_class();
        v11 = v27;
        _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Requested update while fetching historical data. Marking _needsHistoricalFetch", buf, 0xCu);
      }

      self[121] = 1;
      goto LABEL_9;
    }

    self[120] = 1;
    _queue_lastReceivedSensorDatum = [self _queue_lastReceivedSensorDatum];
    Current = CFAbsoluteTimeGetCurrent();
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC298];
    v15 = os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v15)
      {
        v16 = v14;
        v17 = objc_opt_class();
        v18 = v17;
        v19 = _IdentifierStringsFromSensorDatum(_queue_lastReceivedSensorDatum);
        *buf = 138543874;
        v27 = v17;
        v28 = 2112;
        v29 = _queue_lastReceivedSensorDatum;
        v30 = 2114;
        v31 = v19;
        v20 = "%{public}@: Forced fetch of historical data since last record: %@ %{public}@";
LABEL_16:
        _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, v20, buf, 0x20u);
      }
    }

    else if (v15)
    {
      v16 = v14;
      v21 = objc_opt_class();
      v18 = v21;
      v19 = _IdentifierStringsFromSensorDatum(_queue_lastReceivedSensorDatum);
      *buf = 138543874;
      v27 = v21;
      v28 = 2112;
      v29 = _queue_lastReceivedSensorDatum;
      v30 = 2114;
      v31 = v19;
      v20 = "%{public}@: Fetching historical data since last record: %@ %{public}@";
      goto LABEL_16;
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __78__HDAggregateDataCollector__queue_fetchHistoricalDataForcedUpdate_completion___block_invoke;
    v23[3] = &unk_278622808;
    v23[4] = self;
    v25 = Current;
    v24 = updateCopy;
    [self fetchHistoricalSensorDataSinceDatum:_queue_lastReceivedSensorDatum databaseIdentifier:0 completion:v23];

    goto LABEL_18;
  }

  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEBUG))
  {
    v7 = v6;
    *buf = 138543362;
    v27 = objc_opt_class();
    v8 = v27;
    _os_log_debug_impl(&dword_228986000, v7, OS_LOG_TYPE_DEBUG, "%{public}@: Data collector disabled, not beginning streaming.", buf, 0xCu);
  }

LABEL_9:
  if (updateCopy)
  {
    (*(updateCopy + 2))(updateCopy, 1, 0);
  }

LABEL_18:

  v22 = *MEMORY[0x277D85DE8];
}

void __78__HDAggregateDataCollector__queue_fetchHistoricalDataForcedUpdate_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v5 count];
    v11 = CFAbsoluteTimeGetCurrent() - *(a1 + 48);
    *buf = 138543874;
    v23 = v8;
    v24 = 2048;
    v25 = v10;
    v26 = 2048;
    v27 = v11;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Historical fetch returned %ld datums in %0.2lfs", buf, 0x20u);
  }

  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  v14 = *(v13 + 24);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__HDAggregateDataCollector__queue_fetchHistoricalDataForcedUpdate_completion___block_invoke_433;
  v18[3] = &unk_278613680;
  v18[4] = v13;
  v19 = v5;
  v20 = v6;
  v21 = v12;
  v15 = v6;
  v16 = v5;
  dispatch_async(v14, v18);

  v17 = *MEMORY[0x277D85DE8];
}

void __78__HDAggregateDataCollector__queue_fetchHistoricalDataForcedUpdate_completion___block_invoke_433(id *a1)
{
  v90 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] _queue_lastReceivedSensorDatum];
  v3 = a1[6];
  v4 = a1[5];
  v5 = v3;
  v6 = v2;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 sourceId];

    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v6)
  {
    v9 = !v8;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v12 = 0;
    if (!v5)
    {
LABEL_13:
      v11 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v12 = [v4 count] == 0;
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  v10 = [v5 domain];
  if ([v10 isEqualToString:*MEMORY[0x277CC1BC0]])
  {
    v11 = [v5 code] == 107;
  }

  else
  {
    v11 = 0;
  }

LABEL_16:
  if (v12 || v11)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
    {
      v59 = a1[4];
      v60 = v13;
      v61 = objc_opt_class();
      v63 = a1[5];
      v62 = a1[6];
      *buf = 138544130;
      *&buf[4] = v61;
      *&buf[12] = 2114;
      *&buf[14] = v62;
      *&buf[22] = 2112;
      v88 = v6;
      *v89 = 2112;
      *&v89[2] = v63;
      v64 = v61;
      _os_log_error_impl(&dword_228986000, v60, OS_LOG_TYPE_ERROR, "%{public}@: Detected a database reset with the following results: %{public}@, %@, %@", buf, 0x2Au);
    }

    *(a1[4] + 120) = 0;
    v14 = a1[7];
    if (v14)
    {
      v15 = [MEMORY[0x277CCA9B8] hk_error:450 description:@"CoreMotion indicated a database reset."];
      v14[2](v14, 0, v15);
    }

    goto LABEL_46;
  }

  v16 = a1[5];
  if (v16)
  {
    v17 = a1[4];
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v77 = __78__HDAggregateDataCollector__queue_fetchHistoricalDataForcedUpdate_completion___block_invoke_438;
    v78 = &unk_2786173C8;
    v79 = v17;
    v80 = a1[7];
    v18 = v16;
    v19 = v6;
    v75 = v76;
    if (v17)
    {
      v20 = v18;
      WeakRetained = objc_loadWeakRetained(v17 + 2);
      v22 = [WeakRetained database];
      v23 = [v22 mostRecentObliterationDate];

      if (v23 && ([v20 firstObject], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "startDate"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "hk_isBeforeDate:", v23), v25, v24, (v26 & 1) != 0))
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __54__HDAggregateDataCollector__queue_filteredSensorData___block_invoke;
        v88 = &unk_2786288B8;
        *v89 = v23;
        *&v89[8] = v17;
        v27 = [v20 hk_filter:buf];
      }

      else
      {
        v27 = v20;
      }

      v18 = v27;

      if ([v18 count])
      {
        v74 = v19;
        v28 = v19;
        v73 = v28;
        if ([v17 requiresSampleAggregation])
        {
          v86 = v28;
          v29 = [v17 _queue_processSensorDataBatched:v18 firstDatum:v28 lastSensorDatum:&v86];
          v30 = v86;
        }

        else
        {
          v29 = [v17 hkObjectsFromSensorData:v18 baseSensorDatum:v28 startDate:0 endDate:0];
          v30 = [v18 lastObject];
        }

        v38 = v30;
        _HKInitializeLogging();
        v39 = *MEMORY[0x277CCC298];
        if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
        {
          log = v39;
          v40 = objc_opt_class();
          v71 = v40;
          v41 = [v18 count];
          v42 = v29;
          v43 = [v29 count];
          v44 = _IdentifierStringsFromSensorDatum(v38);
          *buf = 138544386;
          *&buf[4] = v40;
          *&buf[12] = 2048;
          *&buf[14] = v41;
          *&buf[22] = 2048;
          v88 = v43;
          v29 = v42;
          *v89 = 2112;
          *&v89[2] = v38;
          *&v89[10] = 2114;
          *&v89[12] = v44;
          _os_log_impl(&dword_228986000, log, OS_LOG_TYPE_DEFAULT, "%{public}@: (Processed: %ld, Persisting: %ld, Context: %@ %{public}@)", buf, 0x34u);
        }

        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __80__HDAggregateDataCollector__queue_processSensorData_lastSensorDatum_completion___block_invoke;
        v88 = &unk_27861A028;
        *v89 = v17;
        v72 = v38;
        *&v89[8] = v72;
        v45 = v29;
        *&v89[16] = v45;
        v46 = _Block_copy(buf);
        v47 = objc_loadWeakRetained(v17 + 2);
        v48 = [v47 dataCollectionManager];
        v49 = [v48 databaseAssertion];
        v50 = [HDDatabaseTransactionContext contextForAccessibilityAssertion:v49];

        v51 = objc_loadWeakRetained(v17 + 2);
        v52 = [v51 database];
        v85 = 0;
        v83[0] = MEMORY[0x277D85DD0];
        v83[1] = 3221225472;
        v83[2] = __80__HDAggregateDataCollector__queue_processSensorData_lastSensorDatum_completion___block_invoke_2;
        v83[3] = &unk_27861A528;
        v84 = v46;
        v81[0] = MEMORY[0x277D85DD0];
        v81[1] = 3221225472;
        v81[2] = __80__HDAggregateDataCollector__queue_processSensorData_lastSensorDatum_completion___block_invoke_3;
        v81[3] = &unk_278618968;
        v53 = v84;
        v82 = v53;
        v54 = [(HDHealthEntity *)HDDataEntity performWriteTransactionWithHealthDatabase:v52 context:v50 error:&v85 block:v83 inaccessibilityHandler:v81];
        v55 = v85;

        v37 = v75;
        (v77)(v75, v54, v55);

        v19 = v74;
      }

      else
      {
        _HKInitializeLogging();
        v33 = *MEMORY[0x277CCC298];
        if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
        {
          v34 = v33;
          v35 = objc_opt_class();
          *buf = 138543362;
          *&buf[4] = v35;
          v36 = v35;
          _os_log_impl(&dword_228986000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: Received empty array of sensor data. Exiting early", buf, 0xCu);
        }

        v37 = v75;
        (v77)(v75, 1, 0);
      }
    }

    else
    {
      v37 = v75;
    }

    goto LABEL_46;
  }

  v31 = [a1[6] domain];
  if (![v31 isEqualToString:*MEMORY[0x277CC1BC0]])
  {

LABEL_42:
    _HKInitializeLogging();
    v56 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
    {
      v65 = a1[4];
      v66 = v56;
      v67 = objc_opt_class();
      v68 = a1[6];
      *buf = 138543618;
      *&buf[4] = v67;
      *&buf[12] = 2114;
      *&buf[14] = v68;
      v69 = v67;
      _os_log_error_impl(&dword_228986000, v66, OS_LOG_TYPE_ERROR, "%{public}@: Error fetching historical sensor data: %{public}@", buf, 0x16u);
    }

    goto LABEL_44;
  }

  v32 = [a1[6] code];

  if (v32 != 109)
  {
    goto LABEL_42;
  }

LABEL_44:
  *(a1[4] + 120) = 0;
  v57 = a1[7];
  if (v57)
  {
    v57[2](v57, 0, a1[6]);
  }

LABEL_46:

  v58 = *MEMORY[0x277D85DE8];
}

void __78__HDAggregateDataCollector__queue_fetchHistoricalDataForcedUpdate_completion___block_invoke_438(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    *buf = 138543362;
    v13 = objc_opt_class();
    v5 = v13;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished fetching historical data.", buf, 0xCu);
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 24);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__HDAggregateDataCollector__queue_fetchHistoricalDataForcedUpdate_completion___block_invoke_439;
  v10[3] = &unk_278614E28;
  v10[4] = v7;
  v11 = v6;
  dispatch_async(v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __78__HDAggregateDataCollector__queue_fetchHistoricalDataForcedUpdate_completion___block_invoke_439(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = objc_opt_class();
    v6 = *(*(a1 + 32) + 121);
    v11 = 138543618;
    v12 = v5;
    v13 = 1024;
    v14 = v6;
    v7 = v5;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Needs historical fetch: %{BOOL}d", &v11, 0x12u);
  }

  *(*(a1 + 32) + 120) = 0;
  v8 = *(a1 + 32);
  if (*(v8 + 121) == 1)
  {
    *(v8 + 121) = 0;
    result = *(a1 + 32);
    if (result)
    {
      result = [(HDAggregateDataCollector *)result _queue_fetchHistoricalDataForcedUpdate:*(a1 + 40) completion:?];
    }
  }

  else
  {
    result = *(a1 + 40);
    if (result)
    {
      result = (*(result + 16))(result, 1, 0);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __80__HDAggregateDataCollector__queue_processSensorData_lastSensorDatum_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _queue_updateLastReceivedSensorDatum:*(a1 + 40)];
  [*(a1 + 32) willPersistHKObjects:*(a1 + 48)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v5 = [WeakRetained dataCollectionManager];
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 7);
    if (!v8)
    {
      v9 = objc_loadWeakRetained(v7 + 2);
      v10 = [v9 deviceManager];
      v21 = 0;
      v11 = [v10 currentDeviceEntityWithError:&v21];
      v12 = v21;

      if (!v11)
      {
        _HKInitializeLogging();
        v13 = *MEMORY[0x277CCC298];
        if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
        {
          v18 = v13;
          v19 = objc_opt_class();
          *buf = 138543618;
          v23 = v19;
          v24 = 2114;
          v25 = v12;
          v20 = v19;
          _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "%{public}@: Error fetching local device: %{public}@", buf, 0x16u);
        }
      }

      v14 = *(v7 + 7);
      *(v7 + 7) = v11;

      v8 = *(v7 + 7);
    }

    v7 = v8;
  }

  v15 = [v5 sensorDataArrayReceived:v6 deviceEntity:v7 error:a2];

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __54__HDAggregateDataCollector__queue_filteredSensorData___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 startDate];
  v5 = [v4 hk_isBeforeDate:*(a1 + 32)];

  if (v5)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 40);
      v10 = 138543618;
      v11 = v9;
      v12 = 2112;
      v13 = v3;
      _os_log_debug_impl(&dword_228986000, v6, OS_LOG_TYPE_DEBUG, "%{public}@: Rejecting sensor datum from pre-obliteration: %@", &v10, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5 ^ 1u;
}

- (id)_queue_processSensorDataBatched:(id)batched firstDatum:(id)datum lastSensorDatum:(id *)sensorDatum
{
  datumCopy = datum;
  v9 = MEMORY[0x277CBEB18];
  batchedCopy = batched;
  v11 = objc_alloc_init(v9);
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __87__HDAggregateDataCollector__queue_processSensorDataBatched_firstDatum_lastSensorDatum___block_invoke;
  v24 = &unk_2786288E0;
  selfCopy = self;
  v12 = v11;
  v26 = v12;
  v13 = _Block_copy(&v21);
  [(HDAggregateDataCollector *)self _queue_aggregationInterval:v21];
  v15 = v14;
  [(HDAggregateDataCollector *)self _queue_maxDatumDuration];
  v17 = HDDataCollectorEnumerateBatches(batchedCopy, datumCopy, v13, v15, v16);

  if (sensorDatum)
  {
    v18 = v17;
    *sensorDatum = v17;
  }

  v19 = v12;

  return v12;
}

BOOL __87__HDAggregateDataCollector__queue_processSensorDataBatched_firstDatum_lastSensorDatum___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v11 compare:v12] == 1)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_FAULT))
    {
      v18 = *(a1 + 32);
      v19 = v13;
      *v21 = 138543874;
      *&v21[4] = objc_opt_class();
      *&v21[12] = 2112;
      *&v21[14] = v11;
      *&v21[22] = 2112;
      v22 = v12;
      v20 = *&v21[4];
      _os_log_fault_impl(&dword_228986000, v19, OS_LOG_TYPE_FAULT, "%{public}@: Tried to create HKObjects with start date (%@) later than end date (%@)", v21, 0x20u);
    }

    v14 = v12;

    v11 = v14;
  }

  v15 = [*(a1 + 32) hkObjectsFromSensorData:v9 baseSensorDatum:v10 startDate:v11 endDate:{v12, *v21, *&v21[16], v22}];
  if (v15)
  {
    [*(a1 + 40) addObjectsFromArray:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15 != 0;
}

- (void)updateHistoricalDataWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->super._queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HDAggregateDataCollector_updateHistoricalDataWithCompletion___block_invoke;
  v7[3] = &unk_278614E28;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __63__HDAggregateDataCollector_updateHistoricalDataWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [(HDAggregateDataCollector *)v2 _queue_handleUpdatingHistoricalDataForcedUpdate:*(a1 + 40) completion:?];
  }
}

- (void)updateHistoricalDataForcedUpdate:(BOOL)update completion:(id)completion
{
  completionCopy = completion;
  queue = self->super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HDAggregateDataCollector_updateHistoricalDataForcedUpdate_completion___block_invoke;
  block[3] = &unk_2786164B0;
  updateCopy = update;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

- (void)beginUpdatesFromDatum:(id)datum withHandler:(id)handler
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (void)fetchHistoricalSensorDataSinceDatum:(id)datum databaseIdentifier:(id)identifier completion:(id)completion
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (id)hkObjectsFromSensorData:(id)data baseSensorDatum:(id)datum startDate:(id)date endDate:(id)endDate
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end