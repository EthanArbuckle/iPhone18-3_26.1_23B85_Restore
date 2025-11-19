@interface HDActivitySummaryQueryServer
- (HDActivitySummaryQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)_queue_deliverErrorToClient:(void *)a1;
- (void)_queue_deliverResultsWithActivitySummaries:(uint64_t)a3 isFinalBatch:(uint64_t)a4 clearPendingBatches:(void *)a5 error:;
- (void)_queue_start;
- (void)_queue_stop;
@end

@implementation HDActivitySummaryQueryServer

- (HDActivitySummaryQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v17.receiver = self;
  v17.super_class = HDActivitySummaryQueryServer;
  v11 = [(HDQueryServer *)&v17 initWithUUID:a3 configuration:v10 client:a5 delegate:a6];
  if (v11)
  {
    v11->_deliversUpdates = [v10 shouldDeactivateAfterInitialResults] ^ 1;
    v12 = [(HDQueryServer *)v11 filter];
    v13 = [(HDQueryServer *)v11 profile];
    v14 = [v12 predicateWithProfile:v13];
    filterPredicate = v11->_filterPredicate;
    v11->_filterPredicate = v14;
  }

  return v11;
}

- (void)_queue_start
{
  v15.receiver = self;
  v15.super_class = HDActivitySummaryQueryServer;
  [(HDQueryServer *)&v15 _queue_start];
  queryHelper = self->_queryHelper;
  if (queryHelper)
  {
    [(HDActivitySummaryQueryHelper *)queryHelper start];
  }

  else
  {
    v4 = dispatch_semaphore_create(0);
    objc_initWeak(&location, self);
    v5 = [HDActivitySummaryQueryHelper alloc];
    v6 = [(HDQueryServer *)self profile];
    v7 = [(HDQueryServer *)self filter];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __56__HDActivitySummaryQueryServer__setUpInitialQueryHelper__block_invoke;
    v20[3] = &unk_278616410;
    objc_copyWeak(&v22, &location);
    v8 = v4;
    v21 = v8;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __56__HDActivitySummaryQueryServer__setUpInitialQueryHelper__block_invoke_2;
    v18[3] = &unk_278616438;
    objc_copyWeak(&v19, &location);
    v9 = [(HDActivitySummaryQueryHelper *)v5 initWithProfile:v6 filter:v7 batchedInitialResultsHandler:v20 batchedUpdateHandler:v18];
    v10 = self->_queryHelper;
    self->_queryHelper = v9;

    v17.receiver = self;
    v17.super_class = HDActivitySummaryQueryServer;
    v11 = [(HDQueryServer *)&v17 configuration];
    v16.receiver = self;
    v16.super_class = HDActivitySummaryQueryServer;
    v12 = [(HDQueryServer *)&v16 client];
    v13 = [v12 hasEntitlement:*MEMORY[0x277CCC8B0]];

    if (v13)
    {
      v14 = [v11 shouldIncludeActivitySummaryPrivateProperties];
      v13 = [v11 shouldIncludeActivitySummaryStatistics];
    }

    else
    {
      v14 = 0;
    }

    [(HDActivitySummaryQueryHelper *)self->_queryHelper setShouldIncludePrivateProperties:v14];
    [(HDActivitySummaryQueryHelper *)self->_queryHelper setShouldIncludeStatistics:v13];
    -[HDActivitySummaryQueryHelper setOrderByDateAscending:](self->_queryHelper, "setOrderByDateAscending:", [v11 orderByDateAscending]);
    -[HDActivitySummaryQueryHelper setLimit:](self->_queryHelper, "setLimit:", [v11 limit]);
    [(HDActivitySummaryQueryHelper *)self->_queryHelper start];
    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    [(HDQueryServer *)self setDataCount:[(HDActivitySummaryQueryHelper *)self->_queryHelper enumeratedSummaryCount]];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }
}

- (void)_queue_stop
{
  v5.receiver = self;
  v5.super_class = HDActivitySummaryQueryServer;
  [(HDQueryServer *)&v5 _queue_stop];
  v3 = [(HDQueryServer *)self queryState];
  queryHelper = self->_queryHelper;
  if (v3 == 3)
  {
    [(HDActivitySummaryQueryHelper *)queryHelper pause];
  }

  else
  {
    [(HDActivitySummaryQueryHelper *)queryHelper stop];
  }
}

- (void)_queue_deliverResultsWithActivitySummaries:(uint64_t)a3 isFinalBatch:(uint64_t)a4 clearPendingBatches:(void *)a5 error:
{
  v23 = *MEMORY[0x277D85DE8];
  v19 = a2;
  v9 = a5;
  v10 = v9;
  if (a1)
  {
    if (v9)
    {
      [(HDActivitySummaryQueryServer *)a1 _queue_deliverErrorToClient:v9];
      goto LABEL_14;
    }

    v11 = v19;
    v12 = [MEMORY[0x277CCCFC0] activitySummaryType];
    v20 = 0;
    v13 = [a1 authorizationStatusRecordForType:v12 error:&v20];
    v14 = v20;

    if (v13)
    {
      if (([v13 canRead] & 1) == 0)
      {
        if (a1[240])
        {
LABEL_13:

          goto LABEL_14;
        }

        v11 = MEMORY[0x277CBEBF8];
      }

      v15 = [a1 clientProxy];
      v16 = [a1 queryUUID];
      [v15 client_deliverActivitySummaries:v11 isFinalBatch:a3 clearPendingBatches:a4 queryUUID:v16];

      a1[240] = 1;
    }

    else
    {
      _HKInitializeLogging();
      v17 = HKLogAuthorization();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v22 = v14;
        _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "Failed to retrieve authorization status for activity summary type: %{public}@", buf, 0xCu);
      }

      v15 = [MEMORY[0x277CCA9B8] hk_error:5 description:@"Unable to determine authorization."];
      [(HDActivitySummaryQueryServer *)a1 _queue_deliverErrorToClient:v15];
    }

    goto LABEL_13;
  }

LABEL_14:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_queue_deliverErrorToClient:(void *)a1
{
  v3 = a2;
  v5 = [a1 clientProxy];
  v4 = [a1 queryUUID];
  [v5 client_deliverError:v3 forQuery:v4];
}

intptr_t __56__HDActivitySummaryQueryServer__setUpInitialQueryHelper__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(HDActivitySummaryQueryServer *)WeakRetained _queue_deliverResultsWithActivitySummaries:v10 isFinalBatch:a3 clearPendingBatches:a4 error:v9];

  v12 = *(a1 + 32);

  return dispatch_semaphore_signal(v12);
}

void __56__HDActivitySummaryQueryServer__setUpInitialQueryHelper__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDActivitySummaryQueryServer *)WeakRetained _queue_deliverResultsWithActivitySummaries:v10 isFinalBatch:a3 clearPendingBatches:a4 error:v9];
}

@end