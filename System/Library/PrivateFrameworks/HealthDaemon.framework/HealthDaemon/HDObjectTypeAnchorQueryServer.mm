@interface HDObjectTypeAnchorQueryServer
- (HDObjectTypeAnchorQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (uint64_t)_queue_unconditionallyScheduleUpdate;
- (void)_queue_fetchAndDeliver;
- (void)_queue_scheduleUpdate;
- (void)_queue_start;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)didAddSamplesOfTypes:(id)types anchor:(id)anchor;
- (void)samplesJournaled:(id)journaled type:(id)type;
- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor;
@end

@implementation HDObjectTypeAnchorQueryServer

- (HDObjectTypeAnchorQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  clientCopy = client;
  v19.receiver = self;
  v19.super_class = HDObjectTypeAnchorQueryServer;
  v11 = [(HDQueryServer *)&v19 initWithUUID:d configuration:configuration client:clientCopy delegate:delegate];
  v12 = v11;
  if (v11)
  {
    v11->_needsRequery = 1;
    v13 = [objc_alloc(MEMORY[0x277D10AD0]) initWithAvailableQuota:3 maximumQuota:3 refillInterval:1.0 minimumInterval:0.25 lastTrigger:0.0];
    quota = v12->_quota;
    v12->_quota = v13;

    profile = [clientCopy profile];
    database = [profile database];
    queryQueue = [(HDQueryServer *)v12 queryQueue];
    [database addProtectedDataObserver:v12 queue:queryQueue];
  }

  return v12;
}

- (void)_queue_fetchAndDeliver
{
  if (self)
  {
    *(self + 208) = 0;
    v13 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__184;
    v19 = __Block_byref_object_dispose__184;
    v20 = 0;
    profile = [self profile];
    database = [profile database];
    v4 = +[HDDatabaseTransactionContext contextForReadingProtectedData];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__HDObjectTypeAnchorQueryServer__fetchAnchorsWithError___block_invoke;
    v14[3] = &unk_278614110;
    v14[4] = self;
    v14[5] = &v15;
    v5 = [database performTransactionWithContext:v4 error:&v13 block:v14 inaccessibilityHandler:0];

    if (v5)
    {
      v6 = v16[5];
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    _Block_object_dispose(&v15, 8);

    v8 = v13;
    v9 = v8;
    if (v7)
    {
      if ([v7 isEqual:*(self + 216)])
      {
LABEL_10:

        return;
      }

      objc_storeStrong((self + 216), v6);
      clientProxy = [self clientProxy];
      queryUUID = [self queryUUID];
      [clientProxy client_deliverAnchor:v7 query:queryUUID];
    }

    else
    {
      v12 = v8;
      clientProxy = [self clientProxy];
      queryUUID = [self queryUUID];
      [clientProxy client_deliverError:v12 forQuery:queryUUID];
    }

    goto LABEL_10;
  }
}

- (uint64_t)_queue_unconditionallyScheduleUpdate
{
  v8 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    [*(result + 224) consumeQuota];
    Current = CFAbsoluteTimeGetCurrent();
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v7 = v1;
      _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting database access for update.", buf, 0xCu);
    }

    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __69__HDObjectTypeAnchorQueryServer__queue_unconditionallyScheduleUpdate__block_invoke;
    v5[3] = &unk_2786138F8;
    v5[4] = v1;
    *&v5[5] = Current;
    result = [v1 scheduleDatabaseAccessOnQueueWithBlock:v5];
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void __69__HDObjectTypeAnchorQueryServer__queue_unconditionallyScheduleUpdate__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC308];
  if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = CFAbsoluteTimeGetCurrent() - *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Received database access after %0.3lfs.", &v7, 0x16u);
  }

  [(HDObjectTypeAnchorQueryServer *)*(a1 + 32) _queue_fetchAndDeliver];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_scheduleUpdate
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self || (*(self + 208) & 1) != 0)
  {
LABEL_7:
    v7 = *MEMORY[0x277D85DE8];
    return;
  }

  *(self + 208) = 1;
  [*(self + 224) timeUntilNextAvailableTrigger];
  if (v2 > 0.0)
  {
    v3 = v2;
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v13 = 2048;
      v14 = v3;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Scheduling update after %0.3lfs", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v5 = dispatch_time(0, (v3 * 1000000000.0));
    queryQueue = [self queryQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__HDObjectTypeAnchorQueryServer__queue_scheduleUpdate__block_invoke;
    block[3] = &unk_278616F38;
    objc_copyWeak(&v10, buf);
    dispatch_after(v5, queryQueue, block);

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
    goto LABEL_7;
  }

  v8 = *MEMORY[0x277D85DE8];

  [(HDObjectTypeAnchorQueryServer *)self _queue_unconditionallyScheduleUpdate];
}

void __54__HDObjectTypeAnchorQueryServer__queue_scheduleUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDObjectTypeAnchorQueryServer *)WeakRetained _queue_unconditionallyScheduleUpdate];
}

uint64_t __56__HDObjectTypeAnchorQueryServer__fetchAnchorsWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 profile];
  v8 = [v7 syncIdentityManager];
  v9 = [v8 currentSyncIdentity];
  v10 = [v9 identity];
  v11 = [v10 databaseIdentifier];

  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13 = MEMORY[0x277CCACA8];
  v14 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v15 = [v13 stringWithFormat:@"WITH RECURSIVE generate_series(value) AS (SELECT 0 UNION ALL SELECT value+1 FROM generate_series WHERE value<%ld) SELECT value, (SELECT MAX(%@) FROM %@ WHERE %@=value) as anchor FROM generate_series WHERE anchor IS NOT NULL", 342, @"data_id", v14, @"data_type"];;

  v16 = [v6 protectedDatabase];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __56__HDObjectTypeAnchorQueryServer__fetchAnchorsWithError___block_invoke_3;
  v23[3] = &unk_278614098;
  v17 = v12;
  v24 = v17;
  v18 = [v16 executeSQL:v15 error:a3 bindingHandler:&__block_literal_global_219 enumerationHandler:v23];

  if (v18)
  {
    v19 = [objc_alloc(MEMORY[0x277CCDE10]) initWithAnchors:v17 databaseIdentifier:v11];
    v20 = *(*(a1 + 40) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }

  return v18;
}

uint64_t __56__HDObjectTypeAnchorQueryServer__fetchAnchorsWithError___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = HDSQLiteColumnAsInt64();
  v5 = MEMORY[0x22AAC6C80](a2, 1);
  v6 = [MEMORY[0x277CCD720] dataTypeWithCode:v4];
  if (v6)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }

  return 1;
}

- (void)_queue_start
{
  v3.receiver = self;
  v3.super_class = HDObjectTypeAnchorQueryServer;
  [(HDQueryServer *)&v3 _queue_start];
  [(HDObjectTypeAnchorQueryServer *)self _queue_fetchAndDeliver];
}

- (void)didAddSamplesOfTypes:(id)types anchor:(id)anchor
{
  v14 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC308];
  if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    *buf = 138543618;
    selfCopy = self;
    v12 = 2048;
    v13 = [typesCopy count];
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Notified of updated samples (%ld types).", buf, 0x16u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__HDObjectTypeAnchorQueryServer_didAddSamplesOfTypes_anchor___block_invoke;
  v9[3] = &unk_278613968;
  v9[4] = self;
  [(HDQueryServer *)self onQueue:v9];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)samplesJournaled:(id)journaled type:(id)type
{
  v13 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC308];
  if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v11 = 2112;
    v12 = typeCopy;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Notified of samples journaled (%@).", buf, 0x16u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__HDObjectTypeAnchorQueryServer_samplesJournaled_type___block_invoke;
  v8[3] = &unk_278613968;
  v8[4] = self;
  [(HDQueryServer *)self onQueue:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor
{
  v14 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC308];
  if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    *buf = 138543618;
    selfCopy = self;
    v12 = 2048;
    v13 = [removedCopy count];
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Notified of removed samples (%ld types).", buf, 0x16u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__HDObjectTypeAnchorQueryServer_samplesOfTypesWereRemoved_anchor___block_invoke;
  v9[3] = &unk_278613968;
  v9[4] = self;
  [(HDQueryServer *)self onQueue:v9];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  availableCopy = available;
  queryQueue = [(HDQueryServer *)self queryQueue];
  dispatch_assert_queue_V2(queryQueue);

  if (availableCopy && self && self->_needsRequery)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __68__HDObjectTypeAnchorQueryServer__queue_protectedDataBecameAvailable__block_invoke;
    v7[3] = &unk_278613968;
    v7[4] = self;
    [(HDQueryServer *)self scheduleDatabaseAccessOnQueueWithBlock:v7];
  }
}

@end