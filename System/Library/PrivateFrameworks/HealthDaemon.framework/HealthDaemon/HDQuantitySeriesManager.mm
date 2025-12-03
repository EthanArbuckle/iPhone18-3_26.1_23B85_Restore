@interface HDQuantitySeriesManager
- (BOOL)discardSeries:(id)series error:(id *)error;
- (BOOL)insertValues:(id)values series:(id)series error:(id *)error;
- (HDProfile)profile;
- (HDQuantitySeriesManager)init;
- (HDQuantitySeriesManager)initWithProfile:(id)profile;
- (id)_observersForType:(uint64_t)type;
- (id)_synchronousObserversForType:(uint64_t)type;
- (id)freezeSeries:(id)series metadata:(id)metadata endDate:(id)date error:(id *)error;
- (void)_notifyForValues:(void *)values series:(void *)series anchor:(char)anchor journaled:;
- (void)_notifyObserver:(void *)observer samplesAdded:(void *)added anchor:quantityCount:journaled:;
- (void)_notifyObserver:(void *)observer values:(void *)values series:(void *)series anchor:(uint64_t)anchor journaled:;
- (void)_runOnCommitOfTransaction:(void *)transaction block:;
- (void)_synchronousNotifyForValues:(uint64_t)values series:(void *)series anchor:(void *)anchor journaled:(void *)journaled;
- (void)addObserver:(id)observer forType:(id)type queue:(id)queue;
- (void)addSynchronousObserver:(id)observer forType:(id)type;
- (void)removeObserver:(id)observer forType:(id)type;
- (void)samplesAdded:(id)added type:(id)type anchor:(id)anchor transaction:(id)transaction;
- (void)samplesJournaled:(id)journaled type:(id)type;
- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor transaction:(id)transaction;
@end

@implementation HDQuantitySeriesManager

- (HDQuantitySeriesManager)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDQuantitySeriesManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v12.receiver = self;
  v12.super_class = HDQuantitySeriesManager;
  v5 = [(HDQuantitySeriesManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v6->_observerLock._os_unfair_lock_opaque = 0;
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    observerLock_observersByType = v6->_observerLock_observersByType;
    v6->_observerLock_observersByType = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    observerLock_synchronousObserversByType = v6->_observerLock_synchronousObserversByType;
    v6->_observerLock_synchronousObserversByType = v9;
  }

  return v6;
}

- (BOOL)insertValues:(id)values series:(id)series error:(id *)error
{
  valuesCopy = values;
  seriesCopy = series;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __53__HDQuantitySeriesManager_insertValues_series_error___block_invoke;
  v19[3] = &unk_278615D40;
  v20 = valuesCopy;
  v21 = seriesCopy;
  selfCopy = self;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__HDQuantitySeriesManager_insertValues_series_error___block_invoke_3;
  v15[3] = &unk_2786219B0;
  v16 = v20;
  v17 = v21;
  selfCopy2 = self;
  v12 = v21;
  v13 = v20;
  LOBYTE(error) = [(HDHealthEntity *)HDQuantitySampleSeriesEntity performWriteTransactionWithHealthDatabase:database error:error block:v19 inaccessibilityHandler:v15];

  return error;
}

uint64_t __53__HDQuantitySeriesManager_insertValues_series_error___block_invoke(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1[4];
  v7 = a1[5];
  v8 = [a1[6] profile];
  v9 = [HDQuantitySampleSeriesEntity insertValues:v6 series:v7 profile:v8 error:a3];

  if (v9 && (v10 = a1[5], [a1[6] profile], v11 = objc_claimAutoreleasedReturnValue(), +[HDDataEntity dataEntityForObject:profile:error:](HDQuantitySampleSeriesEntity, "dataEntityForObject:profile:error:", v10, v11, a3), v12 = objc_claimAutoreleasedReturnValue(), v11, v12))
  {
    v14 = a1[5];
    v13 = a1[6];
    v15 = a1[4];
    v16 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v12, "persistentID")}];
    [HDQuantitySeriesManager _synchronousNotifyForValues:v13 series:v15 anchor:v14 journaled:v16];

    v17 = [v5 protectedDatabase];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __53__HDQuantitySeriesManager_insertValues_series_error___block_invoke_2;
    v21[3] = &unk_278616D68;
    v21[4] = a1[6];
    v22 = a1[4];
    v23 = a1[5];
    v24 = v12;
    v18 = v12;
    [v17 onCommit:v21 orRollback:0];

    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)_synchronousNotifyForValues:(uint64_t)values series:(void *)series anchor:(void *)anchor journaled:(void *)journaled
{
  seriesCopy = series;
  anchorCopy = anchor;
  journaledCopy = journaled;
  if (values)
  {
    quantityType = [anchorCopy quantityType];
    v11 = [(HDQuantitySeriesManager *)values _synchronousObserversForType:quantityType];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __79__HDQuantitySeriesManager__synchronousNotifyForValues_series_anchor_journaled___block_invoke;
    v12[3] = &unk_278621A28;
    v12[4] = values;
    v13 = seriesCopy;
    v14 = anchorCopy;
    v15 = journaledCopy;
    v16 = 0;
    [v11 notifyObservers:v12];
  }
}

void __53__HDQuantitySeriesManager_insertValues_series_error___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 56), "persistentID")}];
  [(HDQuantitySeriesManager *)v1 _notifyForValues:v2 series:v3 anchor:v4 journaled:0];
}

- (void)_notifyForValues:(void *)values series:(void *)series anchor:(char)anchor journaled:
{
  v9 = a2;
  valuesCopy = values;
  seriesCopy = series;
  if (self)
  {
    quantityType = [valuesCopy quantityType];
    v13 = [(HDQuantitySeriesManager *)self _observersForType:quantityType];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68__HDQuantitySeriesManager__notifyForValues_series_anchor_journaled___block_invoke;
    v14[3] = &unk_278621A28;
    v14[4] = self;
    v15 = v9;
    v16 = valuesCopy;
    v17 = seriesCopy;
    anchorCopy = anchor;
    [v13 notifyObservers:v14];
  }
}

BOOL __53__HDQuantitySeriesManager_insertValues_series_error___block_invoke_3(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = [a1[6] profile];
  v8 = [HDQuantitySampleSeriesEntity insertValues:v5 series:v6 profile:v7 error:a3];

  if (v8)
  {
    [HDQuantitySeriesManager _synchronousNotifyForValues:a1[4] series:a1[5] anchor:0 journaled:?];
    [(HDQuantitySeriesManager *)a1[6] _notifyForValues:a1[5] series:0 anchor:1 journaled:?];
  }

  return v8;
}

- (id)freezeSeries:(id)series metadata:(id)metadata endDate:(id)date error:(id *)error
{
  dateCopy = date;
  metadataCopy = metadata;
  uUID = [series UUID];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v14 = [HDQuantitySampleSeriesEntity freezeSeriesWithIdentifier:uUID metadata:metadataCopy endDate:dateCopy profile:WeakRetained error:error];

  return v14;
}

- (BOOL)discardSeries:(id)series error:(id *)error
{
  seriesCopy = series;
  if ([seriesCopy _frozen])
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"Cannot discard a frozen series."];
    v7 = 0;
  }

  else
  {
    v8 = objc_alloc_init(HDDataDeletionConfiguration);
    [(HDDataDeletionConfiguration *)v8 setGenerateDeletedObjects:0];
    [(HDDataDeletionConfiguration *)v8 setFailIfNotFound:0];
    [(HDDataDeletionConfiguration *)v8 setNotifyObservers:0];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    database = [WeakRetained database];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __47__HDQuantitySeriesManager_discardSeries_error___block_invoke;
    v16[3] = &unk_278615D40;
    v16[4] = self;
    v17 = seriesCopy;
    v18 = v8;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __47__HDQuantitySeriesManager_discardSeries_error___block_invoke_2;
    v13[3] = &unk_2786219B0;
    v13[4] = self;
    v14 = v17;
    v15 = v18;
    v11 = v18;
    v7 = [(HDHealthEntity *)HDQuantitySampleSeriesEntity performWriteTransactionWithHealthDatabase:database error:error block:v16 inaccessibilityHandler:v13];
  }

  return v7;
}

uint64_t __47__HDQuantitySeriesManager_discardSeries_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v7 = [WeakRetained dataManager];
  v8 = [*(a1 + 40) UUID];
  v17[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v10 = [v7 deleteObjectsWithUUIDCollection:v9 configuration:*(a1 + 48) error:a3];

  if (v10)
  {
    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) quantityType];
    v16 = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    [v11 samplesOfTypesWereRemoved:v13 anchor:0 transaction:v5];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __47__HDQuantitySeriesManager_discardSeries_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v6 = [WeakRetained dataManager];
  v7 = [*(a1 + 40) UUID];
  v16[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v9 = [v6 deleteObjectsWithUUIDCollection:v8 configuration:*(a1 + 48) error:a3];

  if (v9)
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) quantityType];
    v15 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    [v10 samplesOfTypesWereRemoved:v12 anchor:0 transaction:0];
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_notifyObserver:(void *)observer samplesAdded:(void *)added anchor:quantityCount:journaled:
{
  v60 = *MEMORY[0x277D85DE8];
  v7 = a2;
  observerCopy = observer;
  addedCopy = added;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 32));
    v47 = [v7 transactionalQuantityInsertHandlerForProfile:? journaled:? count:?];
    if (v47)
    {
      lastObject = [observerCopy lastObject];
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      obj = observerCopy;
      v41 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
      if (v41)
      {
        v39 = v7;
        v40 = *v55;
        do
        {
          for (i = 0; i != v41; ++i)
          {
            if (*v55 != v40)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v54 + 1) + 8 * i);
            codableQuantitySample = [v9 codableQuantitySample];
            quantitySeriesDatas = [codableQuantitySample quantitySeriesDatas];

            if (quantitySeriesDatas)
            {
              v43 = i;
              lastObject2 = [quantitySeriesDatas lastObject];
              quantityType = [v9 quantityType];
              canonicalUnit = [quantityType canonicalUnit];
              v50 = 0u;
              v51 = 0u;
              v52 = 0u;
              v53 = 0u;
              v42 = quantitySeriesDatas;
              v44 = quantitySeriesDatas;
              v14 = [v44 countByEnumeratingWithState:&v50 objects:v58 count:16];
              if (v14)
              {
                v15 = v14;
                v48 = *v51;
                do
                {
                  for (j = 0; j != v15; ++j)
                  {
                    v17 = lastObject2;
                    if (*v51 != v48)
                    {
                      objc_enumerationMutation(v44);
                    }

                    v18 = *(*(&v50 + 1) + 8 * j);
                    v19 = objc_autoreleasePoolPush();
                    v20 = MEMORY[0x277CCD7E8];
                    [v18 value];
                    v21 = [v20 quantityWithUnit:canonicalUnit doubleValue:?];
                    v22 = objc_alloc(MEMORY[0x277CCA970]);
                    v23 = MEMORY[0x277CBEAA8];
                    [v18 startDate];
                    v24 = [v23 dateWithTimeIntervalSinceReferenceDate:?];
                    [v18 endDate];
                    v26 = v25;
                    [v18 startDate];
                    v28 = [v22 initWithStartDate:v24 duration:v26 - v27];

                    lastObject2 = v17;
                    v30 = lastObject == v9 && v18 == v17;
                    (v47)[2](v47, v21, quantityType, v28, v9, addedCopy, v30);

                    objc_autoreleasePoolPop(v19);
                  }

                  v15 = [v44 countByEnumeratingWithState:&v50 objects:v58 count:16];
                }

                while (v15);
              }

              v7 = v39;
              quantitySeriesDatas = v42;
              i = v43;
              quantityType2 = canonicalUnit;
            }

            else
            {
              v32 = objc_alloc(MEMORY[0x277CCA970]);
              startDate = [v9 startDate];
              endDate = [v9 endDate];
              lastObject2 = [v32 initWithStartDate:startDate endDate:endDate];

              quantityType = [v9 quantity];
              quantityType2 = [v9 quantityType];
              (v47)[2](v47, quantityType, quantityType2, lastObject2, v9, addedCopy, lastObject == v9);
            }
          }

          v41 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
        }

        while (v41);
      }
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)samplesAdded:(id)added type:(id)type anchor:(id)anchor transaction:(id)transaction
{
  v45 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  typeCopy = type;
  anchorCopy = anchor;
  transactionCopy = transaction;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDQuantitySeriesManager.m" lineNumber:159 description:{@"Invalid parameter not satisfying: %@", @"[type isKindOfClass:[HKQuantityType class]]"}];
  }

  v14 = [addedCopy count];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v15 = addedCopy;
  v16 = [v15 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v41;
    do
    {
      v19 = 0;
      do
      {
        if (*v41 != v18)
        {
          objc_enumerationMutation(v15);
        }

        codableQuantitySample = [*(*(&v40 + 1) + 8 * v19) codableQuantitySample];
        quantitySeriesDatas = [codableQuantitySample quantitySeriesDatas];

        if (quantitySeriesDatas)
        {
          v14 = v14 + [quantitySeriesDatas count] - 1;
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v17);
  }

  v22 = [(HDQuantitySeriesManager *)self _synchronousObserversForType:typeCopy];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __64__HDQuantitySeriesManager_samplesAdded_type_anchor_transaction___block_invoke;
  v36[3] = &unk_2786219D8;
  v36[4] = self;
  v23 = v15;
  v37 = v23;
  v24 = anchorCopy;
  v38 = v24;
  v39 = v14;
  [v22 notifyObservers:v36];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __64__HDQuantitySeriesManager_samplesAdded_type_anchor_transaction___block_invoke_2;
  v31[3] = &unk_278613608;
  v31[4] = self;
  v32 = typeCopy;
  v33 = v23;
  v34 = v24;
  v35 = v14;
  v25 = v24;
  v26 = v23;
  v27 = typeCopy;
  [(HDQuantitySeriesManager *)self _runOnCommitOfTransaction:transactionCopy block:v31];

  v28 = *MEMORY[0x277D85DE8];
}

- (id)_synchronousObserversForType:(uint64_t)type
{
  if (type)
  {
    v3 = a2;
    os_unfair_lock_lock((type + 24));
    v4 = [*(type + 16) objectForKeyedSubscript:v3];

    os_unfair_lock_unlock((type + 24));
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __64__HDQuantitySeriesManager_samplesAdded_type_anchor_transaction___block_invoke_2(uint64_t a1)
{
  v2 = [(HDQuantitySeriesManager *)*(a1 + 32) _observersForType:?];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__HDQuantitySeriesManager_samplesAdded_type_anchor_transaction___block_invoke_3;
  v5[3] = &unk_2786219D8;
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v7 = v3;
  v8 = v4;
  [v2 notifyObservers:v5];
}

- (id)_observersForType:(uint64_t)type
{
  if (type)
  {
    v3 = a2;
    os_unfair_lock_lock((type + 24));
    v4 = [*(type + 8) objectForKeyedSubscript:v3];

    os_unfair_lock_unlock((type + 24));
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_runOnCommitOfTransaction:(void *)transaction block:
{
  v6 = a2;
  transactionCopy = transaction;
  if (self)
  {
    if (v6)
    {
      [v6 onCommit:transactionCopy orRollback:&__block_literal_global_108];
    }

    else
    {
      transactionCopy[2](transactionCopy);
    }
  }
}

- (void)samplesJournaled:(id)journaled type:(id)type
{
  journaledCopy = journaled;
  typeCopy = type;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDQuantitySeriesManager.m" lineNumber:188 description:{@"Invalid parameter not satisfying: %@", @"[type isKindOfClass:[HKQuantityType class]]"}];
  }

  v9 = [(HDQuantitySeriesManager *)self _observersForType:typeCopy];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __49__HDQuantitySeriesManager_samplesJournaled_type___block_invoke;
  v16[3] = &unk_278621A00;
  v16[4] = self;
  v10 = journaledCopy;
  v17 = v10;
  [v9 notifyObservers:v16];
  v11 = [(HDQuantitySeriesManager *)self _synchronousObserversForType:typeCopy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__HDQuantitySeriesManager_samplesJournaled_type___block_invoke_2;
  v14[3] = &unk_278621A00;
  v14[4] = self;
  v15 = v10;
  v12 = v10;
  [v11 notifyObservers:v14];
}

void __49__HDQuantitySeriesManager_samplesJournaled_type___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v3 count];
  [HDQuantitySeriesManager _notifyObserver:v2 samplesAdded:v4 anchor:v3 quantityCount:0 journaled:?];
}

void __49__HDQuantitySeriesManager_samplesJournaled_type___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v3 count];
  [HDQuantitySeriesManager _notifyObserver:v2 samplesAdded:v4 anchor:v3 quantityCount:0 journaled:?];
}

- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor transaction:(id)transaction
{
  v33 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  transactionCopy = transaction;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = [removedCopy countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      v11 = 0;
      do
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(removedCopy);
        }

        v12 = *(*(&v28 + 1) + 8 * v11);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"HDQuantitySeriesManager.m" lineNumber:204 description:{@"Invalid parameter not satisfying: %@", @"[type isKindOfClass:[HKQuantityType class]]"}];
        }

        WeakRetained = objc_loadWeakRetained(&self->_profile);
        v14 = [(HDQuantitySeriesManager *)self _synchronousObserversForType:v12];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __72__HDQuantitySeriesManager_samplesOfTypesWereRemoved_anchor_transaction___block_invoke;
        v25[3] = &unk_278621A00;
        v26 = WeakRetained;
        v27 = v12;
        v15 = WeakRetained;
        [v14 notifyObservers:v25];

        ++v11;
      }

      while (v9 != v11);
      v9 = [removedCopy countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v9);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __72__HDQuantitySeriesManager_samplesOfTypesWereRemoved_anchor_transaction___block_invoke_2;
  v21[3] = &unk_278614E78;
  selfCopy = self;
  v24 = a2;
  v22 = removedCopy;
  v17 = removedCopy;
  [(HDQuantitySeriesManager *)self _runOnCommitOfTransaction:transactionCopy block:v21];

  v18 = *MEMORY[0x277D85DE8];
}

void __72__HDQuantitySeriesManager_samplesOfTypesWereRemoved_anchor_transaction___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    do
    {
      v5 = 0;
      do
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v16 + 1) + 8 * v5);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v10 = [MEMORY[0x277CCA890] currentHandler];
          [v10 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"HDQuantitySeriesManager.m" lineNumber:216 description:{@"Invalid parameter not satisfying: %@", @"[type isKindOfClass:[HKQuantityType class]]"}];
        }

        WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 32));
        v8 = [(HDQuantitySeriesManager *)*(a1 + 40) _observersForType:v6];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __72__HDQuantitySeriesManager_samplesOfTypesWereRemoved_anchor_transaction___block_invoke_3;
        v13[3] = &unk_278621A00;
        v14 = WeakRetained;
        v15 = v6;
        v9 = WeakRetained;
        [v8 notifyObservers:v13];

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:(id)observer forType:(id)type queue:(id)queue
{
  observerCopy = observer;
  typeCopy = type;
  queueCopy = queue;
  os_unfair_lock_lock(&self->_observerLock);
  v10 = [(NSMutableDictionary *)self->_observerLock_observersByType objectForKeyedSubscript:typeCopy];
  if (!v10)
  {
    _HKInitializeLogging();
    v11 = objc_alloc(MEMORY[0x277CCD738]);
    typeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"series-observers-%@", typeCopy];
    v10 = [v11 initWithName:typeCopy loggingCategory:*MEMORY[0x277CCC2B0]];

    [(NSMutableDictionary *)self->_observerLock_observersByType setObject:v10 forKeyedSubscript:typeCopy];
  }

  [v10 registerObserver:observerCopy queue:queueCopy];
  os_unfair_lock_unlock(&self->_observerLock);
}

- (void)addSynchronousObserver:(id)observer forType:(id)type
{
  observerCopy = observer;
  typeCopy = type;
  os_unfair_lock_lock(&self->_observerLock);
  v7 = [(NSMutableDictionary *)self->_observerLock_synchronousObserversByType objectForKeyedSubscript:typeCopy];
  if (!v7)
  {
    _HKInitializeLogging();
    v8 = objc_alloc(MEMORY[0x277CCDA88]);
    typeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"series-observers-%@", typeCopy];
    v7 = [v8 initWithName:typeCopy loggingCategory:*MEMORY[0x277CCC2B0]];

    [(NSMutableDictionary *)self->_observerLock_synchronousObserversByType setObject:v7 forKeyedSubscript:typeCopy];
  }

  [v7 registerObserver:observerCopy];
  os_unfair_lock_unlock(&self->_observerLock);
}

- (void)removeObserver:(id)observer forType:(id)type
{
  typeCopy = type;
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observerLock);
  v8 = [(NSMutableDictionary *)self->_observerLock_observersByType objectForKeyedSubscript:typeCopy];
  [v8 unregisterObserver:observerCopy];

  v9 = [(NSMutableDictionary *)self->_observerLock_synchronousObserversByType objectForKeyedSubscript:typeCopy];

  [v9 unregisterObserver:observerCopy];

  os_unfair_lock_unlock(&self->_observerLock);
}

- (void)_notifyObserver:(void *)observer values:(void *)values series:(void *)series anchor:(uint64_t)anchor journaled:
{
  v43 = *MEMORY[0x277D85DE8];
  v11 = a2;
  observerCopy = observer;
  valuesCopy = values;
  seriesCopy = series;
  if (self)
  {
    quantityType = [valuesCopy quantityType];
    WeakRetained = objc_loadWeakRetained((self + 32));
    v37 = [v11 transactionalQuantityInsertHandlerForProfile:WeakRetained journaled:anchor count:{objc_msgSend(observerCopy, "count")}];
    if (v37)
    {
      v31 = WeakRetained;
      v33 = v11;
      lastObject = [observerCopy lastObject];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v32 = observerCopy;
      v15 = observerCopy;
      v16 = [v15 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v39;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v39 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v38 + 1) + 8 * i);
            if ([v20 hasDuration])
            {
              [v20 duration];
              if (v21 >= 0.0)
              {
                v22 = objc_alloc(MEMORY[0x277CCA970]);
                v23 = MEMORY[0x277CBEAA8];
                [v20 timeInterval];
                v24 = [v23 dateWithTimeIntervalSinceReferenceDate:?];
                [v20 duration];
                v26 = [v22 initWithStartDate:v24 duration:v25];

                v27 = MEMORY[0x277CCD7E8];
                canonicalUnit = [quantityType canonicalUnit];
                [v20 value];
                v29 = [v27 quantityWithUnit:canonicalUnit doubleValue:?];

                (v37)[2](v37, v29, quantityType, v26, valuesCopy, seriesCopy, lastObject == v20);
              }
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v17);
      }

      observerCopy = v32;
      v11 = v33;
      WeakRetained = v31;
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __68__HDQuantitySeriesManager__notifyForValues_series_anchor_journaled___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_autoreleasePoolPush();
  [(HDQuantitySeriesManager *)*(a1 + 32) _notifyObserver:v4 values:*(a1 + 40) series:*(a1 + 48) anchor:*(a1 + 56) journaled:*(a1 + 64)];
  objc_autoreleasePoolPop(v3);
}

void __79__HDQuantitySeriesManager__synchronousNotifyForValues_series_anchor_journaled___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_autoreleasePoolPush();
  [(HDQuantitySeriesManager *)*(a1 + 32) _notifyObserver:v4 values:*(a1 + 40) series:*(a1 + 48) anchor:*(a1 + 56) journaled:*(a1 + 64)];
  objc_autoreleasePoolPop(v3);
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end