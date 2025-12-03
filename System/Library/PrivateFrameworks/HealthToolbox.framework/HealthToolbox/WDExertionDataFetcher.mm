@interface WDExertionDataFetcher
- (WDExertionDataFetcher)initWithHealthStore:(id)store predicate:(id)predicate exertionTypeCode:(int64_t)code limit:(int64_t)limit sortDescriptors:(id)descriptors resultsHandler:(id)handler;
- (void)start;
@end

@implementation WDExertionDataFetcher

- (WDExertionDataFetcher)initWithHealthStore:(id)store predicate:(id)predicate exertionTypeCode:(int64_t)code limit:(int64_t)limit sortDescriptors:(id)descriptors resultsHandler:(id)handler
{
  storeCopy = store;
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  handlerCopy = handler;
  if (predicateCopy)
  {
    v25.receiver = self;
    v25.super_class = WDExertionDataFetcher;
    v19 = [(WDExertionDataFetcher *)&v25 init];
    v20 = v19;
    if (v19)
    {
      objc_storeStrong(&v19->_healthStore, store);
      objc_storeStrong(&v20->_predicate, predicate);
      v20->_exertionTypeCode = code;
      v20->_limit = limit;
      objc_storeStrong(&v20->_sortDescriptors, descriptors);
      v21 = MEMORY[0x253092270](handlerCopy);
      resultsHandler = v20->_resultsHandler;
      v20->_resultsHandler = v21;
    }

    self = v20;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)start
{
  v3 = objc_alloc(MEMORY[0x277CCD8D0]);
  workoutType = [MEMORY[0x277CCDCD0] workoutType];
  predicate = self->_predicate;
  limit = self->_limit;
  sortDescriptors = self->_sortDescriptors;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __30__WDExertionDataFetcher_start__block_invoke;
  v9[3] = &unk_2796E6FC8;
  v9[4] = self;
  v8 = [v3 initWithSampleType:workoutType predicate:predicate limit:limit sortDescriptors:sortDescriptors resultsHandler:v9];

  [(HKHealthStore *)self->_healthStore executeQuery:v8];
}

void __30__WDExertionDataFetcher_start__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8 && [v8 count])
  {
    if ([v8 count] < 2)
    {
      v12 = [v8 firstObject];
      v13 = MEMORY[0x277CCD838];
      v14 = [v12 UUID];
      v15 = [v13 predicateForObjectWithUUID:v14];

      v16 = objc_alloc(MEMORY[0x277CCDC60]);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __30__WDExertionDataFetcher_start__block_invoke_2;
      v18[3] = &unk_2796E6FA0;
      v18[4] = *(a1 + 32);
      v17 = [v16 initWithPredicate:v15 anchor:0 options:0 resultsHandler:v18];
      [*(*(a1 + 32) + 8) executeQuery:v17];
    }

    else
    {
      v10 = *(*(a1 + 32) + 48);
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCBDB0] code:3 userInfo:0];
      (*(v10 + 16))(v10, 0, v11);
    }
  }

  else
  {
    (*(*(*(a1 + 32) + 48) + 16))();
  }
}

void __30__WDExertionDataFetcher_start__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    v25 = *(*(*(a1 + 32) + 48) + 16);
LABEL_15:
    v25();
    goto LABEL_16;
  }

  if (![v10 count])
  {
    v25 = *(*(*(a1 + 32) + 48) + 16);
    goto LABEL_15;
  }

  v27 = v11;
  v28 = v9;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = v10;
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v29 + 1) + 8 * i);
        v20 = [v19 samples];

        if (v20)
        {
          v21 = [v19 samples];
          [v13 addObjectsFromArray:v21];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v16);
  }

  v9 = v28;
  [*(*(a1 + 32) + 8) stopQuery:v28];
  v22 = *(a1 + 32);
  v23 = *(v22 + 48);
  v24 = [MEMORY[0x277D12890] filterSamplesOfExertionTypeCode:*(v22 + 24) fromExertionSamples:v13];
  (*(v23 + 16))(v23, v24, 0);

  v11 = v27;
LABEL_16:

  v26 = *MEMORY[0x277D85DE8];
}

@end