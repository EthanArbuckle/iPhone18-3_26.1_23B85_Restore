@interface HDActivitySummaryQueryServer
- (HDActivitySummaryQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_queue_deliverErrorToClient:(void *)client;
- (void)_queue_deliverResultsWithActivitySummaries:(uint64_t)summaries isFinalBatch:(uint64_t)batch clearPendingBatches:(void *)batches error:;
- (void)_queue_start;
- (void)_queue_stop;
@end

@implementation HDActivitySummaryQueryServer

- (HDActivitySummaryQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v17.receiver = self;
  v17.super_class = HDActivitySummaryQueryServer;
  v11 = [(HDQueryServer *)&v17 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  if (v11)
  {
    v11->_deliversUpdates = [configurationCopy shouldDeactivateAfterInitialResults] ^ 1;
    filter = [(HDQueryServer *)v11 filter];
    profile = [(HDQueryServer *)v11 profile];
    v14 = [filter predicateWithProfile:profile];
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
    profile = [(HDQueryServer *)self profile];
    filter = [(HDQueryServer *)self filter];
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
    v9 = [(HDActivitySummaryQueryHelper *)v5 initWithProfile:profile filter:filter batchedInitialResultsHandler:v20 batchedUpdateHandler:v18];
    v10 = self->_queryHelper;
    self->_queryHelper = v9;

    v17.receiver = self;
    v17.super_class = HDActivitySummaryQueryServer;
    configuration = [(HDQueryServer *)&v17 configuration];
    v16.receiver = self;
    v16.super_class = HDActivitySummaryQueryServer;
    client = [(HDQueryServer *)&v16 client];
    shouldIncludeActivitySummaryStatistics = [client hasEntitlement:*MEMORY[0x277CCC8B0]];

    if (shouldIncludeActivitySummaryStatistics)
    {
      shouldIncludeActivitySummaryPrivateProperties = [configuration shouldIncludeActivitySummaryPrivateProperties];
      shouldIncludeActivitySummaryStatistics = [configuration shouldIncludeActivitySummaryStatistics];
    }

    else
    {
      shouldIncludeActivitySummaryPrivateProperties = 0;
    }

    [(HDActivitySummaryQueryHelper *)self->_queryHelper setShouldIncludePrivateProperties:shouldIncludeActivitySummaryPrivateProperties];
    [(HDActivitySummaryQueryHelper *)self->_queryHelper setShouldIncludeStatistics:shouldIncludeActivitySummaryStatistics];
    -[HDActivitySummaryQueryHelper setOrderByDateAscending:](self->_queryHelper, "setOrderByDateAscending:", [configuration orderByDateAscending]);
    -[HDActivitySummaryQueryHelper setLimit:](self->_queryHelper, "setLimit:", [configuration limit]);
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
  queryState = [(HDQueryServer *)self queryState];
  queryHelper = self->_queryHelper;
  if (queryState == 3)
  {
    [(HDActivitySummaryQueryHelper *)queryHelper pause];
  }

  else
  {
    [(HDActivitySummaryQueryHelper *)queryHelper stop];
  }
}

- (void)_queue_deliverResultsWithActivitySummaries:(uint64_t)summaries isFinalBatch:(uint64_t)batch clearPendingBatches:(void *)batches error:
{
  v23 = *MEMORY[0x277D85DE8];
  v19 = a2;
  batchesCopy = batches;
  v10 = batchesCopy;
  if (self)
  {
    if (batchesCopy)
    {
      [(HDActivitySummaryQueryServer *)self _queue_deliverErrorToClient:batchesCopy];
      goto LABEL_14;
    }

    v11 = v19;
    activitySummaryType = [MEMORY[0x277CCCFC0] activitySummaryType];
    v20 = 0;
    v13 = [self authorizationStatusRecordForType:activitySummaryType error:&v20];
    v14 = v20;

    if (v13)
    {
      if (([v13 canRead] & 1) == 0)
      {
        if (self[240])
        {
LABEL_13:

          goto LABEL_14;
        }

        v11 = MEMORY[0x277CBEBF8];
      }

      clientProxy = [self clientProxy];
      queryUUID = [self queryUUID];
      [clientProxy client_deliverActivitySummaries:v11 isFinalBatch:summaries clearPendingBatches:batch queryUUID:queryUUID];

      self[240] = 1;
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

      clientProxy = [MEMORY[0x277CCA9B8] hk_error:5 description:@"Unable to determine authorization."];
      [(HDActivitySummaryQueryServer *)self _queue_deliverErrorToClient:clientProxy];
    }

    goto LABEL_13;
  }

LABEL_14:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_queue_deliverErrorToClient:(void *)client
{
  v3 = a2;
  clientProxy = [client clientProxy];
  queryUUID = [client queryUUID];
  [clientProxy client_deliverError:v3 forQuery:queryUUID];
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