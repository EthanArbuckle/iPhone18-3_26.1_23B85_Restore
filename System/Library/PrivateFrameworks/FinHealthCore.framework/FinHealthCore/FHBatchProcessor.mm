@interface FHBatchProcessor
+ (FHBatchProcessor)initWithBuilder:(id)a3;
- (FHDatabaseManager)databaseManager;
- (NSSet)merchantsWithSignificantCount;
- (id)_init:(id)a3;
- (void)fetchAndProcessInBatchMode;
- (void)processBatch:(id)a3;
@end

@implementation FHBatchProcessor

+ (FHBatchProcessor)initWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v3[2](v3, v4);

  v5 = [[FHBatchProcessor alloc] _init:v4];

  return v5;
}

- (id)_init:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v47.receiver = self;
  v47.super_class = FHBatchProcessor;
  v5 = [(FHBatchProcessor *)&v47 init];
  if (v5)
  {
    v6 = MEMORY[0x277CCA980];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", 86400];
    v8 = [v6 decimalNumberWithString:v7];
    secondsInDay = v5->_secondsInDay;
    v5->_secondsInDay = v8;

    v10 = objc_opt_new();
    merchantWithTimeStampPairs = v5->_merchantWithTimeStampPairs;
    v5->_merchantWithTimeStampPairs = v10;

    v12 = objc_opt_new();
    indexedAmountArray = v5->_indexedAmountArray;
    v5->_indexedAmountArray = v12;

    v14 = objc_opt_new();
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v42 = v4;
    v15 = [v4 internalStates];
    v16 = [v15 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v44;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v44 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF.%K == %lu", @"transactionInternalState", objc_msgSend(*(*(&v43 + 1) + 8 * i), "integerValue")];
          [v14 addObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v17);
    }

    v21 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF.%K != nil", @"displayName"];
    v22 = MEMORY[0x277CCA920];
    v23 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
    v24 = [v22 orPredicateWithSubpredicates:v23];

    v25 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF.%K == %lu AND SELF.%K == %lu AND SELF.%K == %lu", @"transactionStatus", 1, @"transactionType", 0, @"accountType", 2];
    v26 = MEMORY[0x277CCA920];
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:{v21, v24, v25, 0}];
    v28 = [v26 andPredicateWithSubpredicates:v27];
    predicates = v5->_predicates;
    v5->_predicates = v28;

    v4 = v42;
    v30 = [v42 databaseManager];
    objc_storeWeak(&v5->_databaseManager, v30);

    v31 = [v42 startDate];
    if (v31)
    {
      v32 = v31;
      v33 = [v42 endDate];

      if (v33)
      {
        v34 = [v42 startDate];
        startDate = v5->_startDate;
        v5->_startDate = v34;

        v36 = [v42 endDate];
        endDate = v5->_endDate;
        v5->_endDate = v36;

        v38 = objc_opt_new();
        resultArray = v5->_resultArray;
        v5->_resultArray = v38;
      }
    }

    v5->_computeMerchantCounts = [v42 computeMerchantCounts];
  }

  v40 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)fetchAndProcessInBatchMode
{
  [(NSMutableArray *)self->_resultArray removeAllObjects];
  [(NSMutableArray *)self->_indexedAmountArray removeAllObjects];
  [(NSMutableArray *)self->_merchantWithTimeStampPairs removeAllObjects];
  WeakRetained = objc_loadWeakRetained(&self->_databaseManager);
  [WeakRetained setDelegate:self];

  v4 = objc_loadWeakRetained(&self->_databaseManager);
  [v4 retrieveAll];
}

- (NSSet)merchantsWithSignificantCount
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  v4 = MEMORY[0x277CCA980];
  v5 = MEMORY[0x277CCACA8];
  WeakRetained = objc_loadWeakRetained(&self->_databaseManager);
  v7 = [v5 stringWithFormat:@"%lu", objc_msgSend(WeakRetained, "mostRecentTransactionDate")];
  v33 = [v4 decimalNumberWithString:v7];

  v8 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [v33 stringValue];
    *buf = 138412290;
    v42 = v9;
    _os_log_impl(&dword_226DD4000, v8, OS_LOG_TYPE_DEBUG, "mostRecentDate %@", buf, 0xCu);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = self->_merchantWithTimeStampPairs;
  v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  v11 = v33;
  if (v10)
  {
    v12 = v10;
    v13 = 0;
    v35 = *v37;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v37 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v36 + 1) + 8 * i);
        v16 = [v15 featureRank];
        v17 = [v11 decimalNumberBySubtracting:v16];
        v18 = [v17 decimalNumberByDividingBy:self->_secondsInDay];

        v19 = [(NSMutableArray *)self->_indexedAmountArray objectAtIndex:v13];
        [v19 doubleValue];
        v21 = v20;

        [v18 doubleValue];
        if (v21 > 0.0 && v21 * exp(v22 * -0.074) >= 0.1)
        {
          v23 = [v15 featureLabel];
          v24 = [v3 objectForKey:v23];

          v25 = v3;
          if (!v24)
          {
            v24 = [MEMORY[0x277CCA980] zero];
          }

          v26 = [MEMORY[0x277CCA980] one];
          v27 = [v24 decimalNumberByAdding:v26];
          v28 = [v15 featureLabel];
          [v25 setValue:v27 forKey:v28];

          v3 = v25;
          v11 = v33;
        }

        ++v13;
      }

      v12 = [(NSMutableArray *)obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v12);
  }

  v29 = [v3 keysOfEntriesPassingTest:&__block_literal_global_4];

  objc_autoreleasePoolPop(context);
  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

- (void)processBatch:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 filteredArrayUsingPredicate:self->_predicates];
  v6 = v5;
  if (self->_computeMerchantCounts)
  {
    v31 = v5;
    v32 = v4;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v35;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v35 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v34 + 1) + 8 * i);
          v12 = [v11 transactionDate];
          [v12 timeIntervalSinceReferenceDate];
          v14 = v13;

          v15 = objc_autoreleasePoolPush();
          v16 = MEMORY[0x277CCA980];
          v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v14];
          v18 = [v16 decimalNumberWithString:v17];

          v19 = [FHSmartCompoundFeatureRankedValue alloc];
          v20 = [v11 displayName];
          v21 = [(FHSmartCompoundFeatureRankedValue *)v19 initWithLabelAndRank:v20 featureRank:v18];

          [(NSMutableArray *)self->_merchantWithTimeStampPairs addObject:v21];
          indexedAmountArray = self->_indexedAmountArray;
          v23 = [v11 amount];
          [(NSMutableArray *)indexedAmountArray addObject:v23];

          objc_autoreleasePoolPop(v15);
        }

        v8 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v8);
    }

    v6 = v31;
    v4 = v32;
  }

  startDate = self->_startDate;
  if (startDate)
  {
    endDate = self->_endDate;
    if (endDate)
    {
      resultArray = self->_resultArray;
      v27 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(SELF.%K >= %@) AND (SELF.%K <= %@)", @"transactionDate", startDate, @"transactionDate", endDate];
      v28 = [v6 filteredArrayUsingPredicate:v27];
      v29 = [v28 valueForKey:@"amountFromDatabase"];
      [(NSMutableArray *)resultArray addObjectsFromArray:v29];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (FHDatabaseManager)databaseManager
{
  WeakRetained = objc_loadWeakRetained(&self->_databaseManager);

  return WeakRetained;
}

@end