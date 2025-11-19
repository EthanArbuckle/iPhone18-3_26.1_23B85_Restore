@interface _DPPrivacyBudget
+ (BOOL)createDatabaseRecordIfMissingIn:(id)a3 key:(id)a4 balance:(int64_t)a5 cohortAggregateBalance:(double)a6;
+ (BOOL)credit:(unint64_t)a3 budgetWithName:(id)a4;
+ (BOOL)creditCohortAggregate:(double)a3 budgetWithName:(id)a4;
+ (BOOL)debit:(unint64_t)a3 budgetWithName:(id)a4;
+ (BOOL)debitCohortAggregate:(double)a3 budgetWithName:(id)a4;
+ (BOOL)isMultiDayIntervalBudgetWithName:(id)a3;
+ (_DPPrivacyBudget)budgetWithName:(id)a3;
+ (double)balanceForCohortAggregateBudgetWithName:(id)a3;
+ (id)enforceBudgetForRecords:(id)a3 withKey:(id)a4 inDatabase:(id)a5;
+ (id)enforceEnhancedBudgetForRecords:(id)a3 withKey:(id)a4 inDatabase:(id)a5;
+ (id)enforceSimpleBudgetForRecords:(id)a3 withKey:(id)a4 inDatabase:(id)a5;
+ (id)fetchBudgetKeyNamesFrom:(id)a3;
+ (id)fetchBudgetRecordFrom:(id)a3 key:(id)a4;
+ (int64_t)balanceForBudgetWithName:(id)a3;
+ (void)createBudgetRecordsIn:(id)a3;
+ (void)initialize;
+ (void)removeBudgetWithName:(id)a3;
+ (void)resetAllBudgetRecordsIn:(id)a3;
+ (void)resetLastUpdateDateForName:(id)a3;
+ (void)updateAllBudgetsIn:(id)a3;
+ (void)updateAllBudgetsUnsafeIn:(id)a3;
+ (void)updateBudgetForRecords:(id)a3 withKey:(id)a4 inDatabase:(id)a5;
+ (void)updateEnhancedBudgetForRecords:(id)a3 withKey:(id)a4 inDatabase:(id)a5;
+ (void)updateSimpleBudgetForRecords:(id)a3 withKey:(id)a4 inDatabase:(id)a5;
- (BOOL)initializeBudgetRecordFrom:(id)a3;
- (_DPPrivacyBudget)initWithName:(id)a3 budgetProperties:(id)a4;
- (id)description;
@end

@implementation _DPPrivacyBudget

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[_DPPrivacyBudget initialize];
  }
}

- (_DPPrivacyBudget)initWithName:(id)a3 budgetProperties:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    v15.receiver = self;
    v15.super_class = _DPPrivacyBudget;
    v11 = [(_DPPrivacyBudget *)&v15 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_name, a3);
      objc_storeStrong(&v12->_budgetProperties, a4);
      budgetRecord = v12->_budgetRecord;
      v12->_budgetRecord = 0;
    }

    self = v12;
    v10 = self;
  }

  return v10;
}

+ (_DPPrivacyBudget)budgetWithName:(id)a3
{
  v4 = a3;
  v5 = gAllBudgets;
  objc_sync_enter(v5);
  v6 = [gAllBudgets objectForKeyedSubscript:v4];
  if (!v6)
  {
    v7 = [_DPPrivacyBudgetProperties budgetPropertiesForKey:v4];
    v6 = [[a1 alloc] initWithName:v4 budgetProperties:v7];
    if (v6)
    {
      [gAllBudgets setObject:v6 forKeyedSubscript:v4];
    }
  }

  objc_sync_exit(v5);

  return v6;
}

+ (void)removeBudgetWithName:(id)a3
{
  v4 = a3;
  v3 = gAllBudgets;
  objc_sync_enter(v3);
  if (v4)
  {
    [gAllBudgets removeObjectForKey:v4];
  }

  objc_sync_exit(v3);
}

+ (BOOL)debit:(unint64_t)a3 budgetWithName:(id)a4
{
  v5 = a4;
  v6 = gAllBudgets;
  objc_sync_enter(v6);
  v7 = [gAllBudgets objectForKeyedSubscript:v5];
  v8 = [v7 budgetRecord];
  [v8 setBalance:{objc_msgSend(v8, "balance") - a3}];

  objc_sync_exit(v6);
  return 1;
}

+ (BOOL)debitCohortAggregate:(double)a3 budgetWithName:(id)a4
{
  v5 = a4;
  v6 = gAllBudgets;
  objc_sync_enter(v6);
  v7 = [gAllBudgets objectForKeyedSubscript:v5];
  v8 = [v7 budgetRecord];
  [v8 cohortAggregateBalance];
  [v8 setCohortAggregateBalance:v9 - a3];

  objc_sync_exit(v6);
  return 1;
}

+ (BOOL)credit:(unint64_t)a3 budgetWithName:(id)a4
{
  v5 = a4;
  v6 = gAllBudgets;
  objc_sync_enter(v6);
  v7 = [gAllBudgets objectForKeyedSubscript:v5];
  v8 = [v7 budgetRecord];
  [v8 setBalance:{objc_msgSend(v8, "balance") + a3}];

  objc_sync_exit(v6);
  return 1;
}

+ (BOOL)creditCohortAggregate:(double)a3 budgetWithName:(id)a4
{
  v5 = a4;
  v6 = gAllBudgets;
  objc_sync_enter(v6);
  v7 = [gAllBudgets objectForKeyedSubscript:v5];
  v8 = [v7 budgetRecord];
  [v8 cohortAggregateBalance];
  [v8 setCohortAggregateBalance:v9 + a3];

  objc_sync_exit(v6);
  return 1;
}

+ (int64_t)balanceForBudgetWithName:(id)a3
{
  v3 = a3;
  v4 = gAllBudgets;
  objc_sync_enter(v4);
  v5 = [gAllBudgets objectForKeyedSubscript:v3];
  v6 = [v5 budgetRecord];
  v7 = [v6 balance];

  objc_sync_exit(v4);
  return v7;
}

+ (double)balanceForCohortAggregateBudgetWithName:(id)a3
{
  v3 = a3;
  v4 = gAllBudgets;
  objc_sync_enter(v4);
  v5 = [gAllBudgets objectForKeyedSubscript:v3];
  v6 = [v5 budgetRecord];
  [v6 cohortAggregateBalance];
  v8 = v7;

  objc_sync_exit(v4);
  return v8;
}

+ (BOOL)isMultiDayIntervalBudgetWithName:(id)a3
{
  v3 = a3;
  v4 = gAllBudgets;
  objc_sync_enter(v4);
  v5 = [gAllBudgets objectForKeyedSubscript:v3];
  v6 = [v5 budgetProperties];
  v7 = [v6 interval];
  v8 = [v7 unsignedIntegerValue];
  v9 = v8 > kSecondsIn24Hours;

  objc_sync_exit(v4);
  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_DPPrivacyBudget *)self name];
  v7 = [(_DPPrivacyBudget *)self budgetRecord];
  v8 = [(_DPPrivacyBudget *)self budgetProperties];
  v9 = [v3 stringWithFormat:@"%@: { name=%@  budgetRecord=%@ ; budgetProperties=%@ ; }", v5, v6, v7, v8];;

  return v9;
}

+ (void)resetLastUpdateDateForName:(id)a3
{
  v6 = a3;
  v3 = gAllBudgets;
  objc_sync_enter(v3);
  v4 = [gAllBudgets objectForKeyedSubscript:v6];
  v5 = [v4 budgetRecord];
  [v5 setLastUpdate:0.0];

  objc_sync_exit(v3);
}

+ (void)updateAllBudgetsIn:(id)a3
{
  v4 = a3;
  v3 = gAllBudgets;
  objc_sync_enter(v3);
  [objc_opt_class() updateAllBudgetsUnsafeIn:v4];
  objc_sync_exit(v3);
}

+ (void)updateAllBudgetsUnsafeIn:(id)a3
{
  v68 = *MEMORY[0x277D85DE8];
  v45 = a3;
  v51 = [MEMORY[0x277CBEBF8] mutableCopy];
  v3 = +[_DPPrivacyBudgetProperties budgetMaintenanceSchedule];
  v44 = gAllBudgets;
  objc_sync_enter(v44);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v3;
  v47 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
  if (v47)
  {
    v46 = *v63;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v63 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v62 + 1) + 8 * i);
        v49 = [obj objectForKeyedSubscript:{v4, v44}];
        v5 = [v49 allObjects];
        v57 = v4;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v52 = v5;
        v6 = [v52 countByEnumeratingWithState:&v58 objects:v66 count:16];
        if (v6)
        {
          v54 = *v59;
          do
          {
            v7 = 0;
            v55 = v6;
            do
            {
              if (*v59 != v54)
              {
                objc_enumerationMutation(v52);
              }

              v8 = *(*(&v58 + 1) + 8 * v7);
              v9 = objc_autoreleasePoolPush();
              v10 = [gAllBudgets objectForKeyedSubscript:v8];
              v11 = MEMORY[0x277CBEAA8];
              v12 = [v10 budgetRecord];
              [v12 lastUpdate];
              v13 = [v11 dateWithTimeIntervalSinceReferenceDate:?];

              v14 = [MEMORY[0x277CBEAA8] date];
              [v14 timeIntervalSinceDate:v13];
              v16 = v15;

              [v57 doubleValue];
              if (v17 <= v16)
              {
                v18 = [v57 unsignedIntegerValue];
                v19 = [v57 unsignedIntegerValue];
                v20 = v16 / v18;
                v21 = (v20 * v19);
                v23 = v16 < v21 || v20 > 1;
                if (v23)
                {
                  v20 = 1;
                }

                v56 = v20;
                if (v23)
                {
                  v24 = v16;
                }

                else
                {
                  v24 = v21;
                }

                v25 = [v10 budgetProperties];
                v26 = [v25 intervalBudgetValue];
                v53 = [v26 unsignedIntegerValue];
                v27 = [v10 budgetProperties];
                v28 = [v27 intervalChunksValue];
                v29 = [v28 unsignedIntegerValue];

                v30 = [v10 budgetProperties];
                v31 = [v30 intervalCohortAggregateBudgetValue];
                [v31 doubleValue];
                v33 = v32;
                v34 = [v10 budgetProperties];
                v35 = [v34 intervalChunksValue];
                v36 = [v35 unsignedIntegerValue];

                v37 = [v10 budgetRecord];

                if (v37)
                {
                  v38 = [v10 budgetRecord];
                  [v38 lastUpdate];
                  [v38 setLastUpdate:v24 + v39];

                  v40 = [v10 budgetRecord];
                  [v40 setBalance:v53 * v56 * v29];

                  v41 = [v10 budgetRecord];
                  [v41 setCohortAggregateBalance:v33 * v56 * v36];

                  v42 = [v10 budgetRecord];
                  [v51 addObject:v42];
                }
              }

              objc_autoreleasePoolPop(v9);
              ++v7;
            }

            while (v55 != v7);
            v6 = [v52 countByEnumeratingWithState:&v58 objects:v66 count:16];
          }

          while (v6);
        }
      }

      v47 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
    }

    while (v47);
  }

  [v45 updateRecords:v51 withCompletion:0];
  objc_sync_exit(v44);

  v43 = *MEMORY[0x277D85DE8];
}

+ (void)resetAllBudgetRecordsIn:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  context = objc_autoreleasePoolPush();
  obj = gAllBudgets;
  objc_sync_enter(obj);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [gAllBudgets allKeys];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = [objc_opt_class() fetchBudgetRecordFrom:v3 key:{v8, context}];
        if ([v9 count])
        {
          v10 = [v9 firstObject];
          v11 = [gAllBudgets objectForKeyedSubscript:v8];
          [v11 setBudgetRecord:v10];
        }

        else
        {
          v10 = [gAllBudgets objectForKeyedSubscript:v8];
          [v10 setBudgetRecord:0];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  objc_sync_exit(obj);
  objc_autoreleasePoolPop(context);

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)createBudgetRecordsIn:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  context = objc_autoreleasePoolPush();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = +[_DPPrivacyBudgetProperties allBudgetPropertiesKeys];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [_DPPrivacyBudgetProperties budgetPropertiesForKey:v8];
        v10 = [v9 intervalBudgetValue];
        v11 = [v10 integerValue];
        v12 = [v9 intervalChunksValue];
        v13 = [v12 integerValue] * v11;

        v14 = [v9 intervalCohortAggregateBudgetValue];
        [v14 doubleValue];
        v16 = v15;
        v17 = [v9 intervalChunksValue];
        v18 = v16 * [v17 integerValue];

        [_DPPrivacyBudget createDatabaseRecordIfMissingIn:v3 key:v8 balance:v13 cohortAggregateBalance:v18];
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(context);
  v19 = *MEMORY[0x277D85DE8];
}

+ (id)fetchBudgetRecordFrom:(id)a3 key:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__5;
  v22 = __Block_byref_object_dispose__5;
  v23 = 0;
  v8 = [_DPRecordQueryPredicates predicateForKey:v7];
  v9 = dispatch_semaphore_create(0);
  v10 = +[_DPPrivacyBudgetRecord entityName];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __46___DPPrivacyBudget_fetchBudgetRecordFrom_key___block_invoke;
  v14[3] = &unk_27858B210;
  v16 = &v18;
  v17 = a2;
  v11 = v9;
  v15 = v11;
  [v6 fetchRecordsFor:v10 predicate:v8 fetchLimit:1 fetchOffset:0 withCompletion:v14];

  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  v12 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v12;
}

+ (id)fetchBudgetKeyNamesFrom:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = +[_DPPrivacyBudgetRecord entityName];
    if (v6)
    {
      v7 = +[_DPRecordQueryPredicates predicateForAllRecords];
      v16 = 0;
      v17 = &v16;
      v18 = 0x3032000000;
      v19 = __Block_byref_object_copy__5;
      v20 = __Block_byref_object_dispose__5;
      v21 = 0;
      v8 = dispatch_semaphore_create(0);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __44___DPPrivacyBudget_fetchBudgetKeyNamesFrom___block_invoke;
      v12[3] = &unk_27858B238;
      v14 = &v16;
      v15 = a2;
      v9 = v8;
      v13 = v9;
      [v4 fetchKeynamesFor:v6 predicate:v7 fetchLimit:300 fetchOffset:0 withCompletion:v12];
      dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
      v10 = v17[5];

      _Block_object_dispose(&v16, 8);
    }

    else
    {
      v10 = MEMORY[0x277CBEBF8];
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

- (BOOL)initializeBudgetRecordFrom:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = gAllBudgets;
  objc_sync_enter(v6);
  v7 = [(_DPPrivacyBudget *)self budgetRecord];

  if (v7)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v9 = [objc_opt_class() fetchBudgetRecordFrom:v4 key:self->_name];
    v10 = [v9 count];
    v8 = v10 != 0;
    if (v10)
    {
      v11 = [v9 firstObject];
      [(_DPPrivacyBudget *)self setBudgetRecord:v11];
    }
  }

  objc_sync_exit(v6);

  objc_autoreleasePoolPop(v5);
  return v8;
}

+ (BOOL)createDatabaseRecordIfMissingIn:(id)a3 key:(id)a4 balance:(int64_t)a5 cohortAggregateBalance:(double)a6
{
  v23[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = objc_autoreleasePoolPush();
  v13 = gAllBudgets;
  objc_sync_enter(v13);
  v14 = [objc_opt_class() fetchBudgetRecordFrom:v10 key:v11];
  v15 = [v14 count];
  if (!v15)
  {
    v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
    [v16 timeIntervalSinceReferenceDate];
    v18 = [[_DPPrivacyBudgetRecord alloc] initWithKey:v11 creationDate:a5 lastUpdate:0 balance:v17 cohortAggregateBalance:v17 objectId:a6];
    v23[0] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __87___DPPrivacyBudget_createDatabaseRecordIfMissingIn_key_balance_cohortAggregateBalance___block_invoke;
    v22[3] = &__block_descriptor_40_e20_v20__0B8__NSError_12l;
    v22[4] = a2;
    [v10 updateRecords:v19 withCompletion:v22];
  }

  objc_sync_exit(v13);
  objc_autoreleasePoolPop(v12);

  v20 = *MEMORY[0x277D85DE8];
  return v15 == 0;
}

+ (id)enforceBudgetForRecords:(id)a3 withKey:(id)a4 inDatabase:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11 = [v8 objectAtIndexedSubscript:0];
    v12 = [v11 metadata];

    if ([_DPEnhancedPrivacyAlgorithm isEnhancedPrivacyAlgorithm:v12])
    {
      [a1 enforceEnhancedBudgetForRecords:v8 withKey:v9 inDatabase:v10];
    }

    else
    {
      [a1 enforceSimpleBudgetForRecords:v8 withKey:v9 inDatabase:v10];
    }
    v13 = ;
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
    v12 = MEMORY[0x277CBEC10];
  }

  return v13;
}

+ (void)updateBudgetForRecords:(id)a3 withKey:(id)a4 inDatabase:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  if ([v12 count])
  {
    v10 = [v12 objectAtIndexedSubscript:0];
    v11 = [v10 metadata];

    if ([_DPEnhancedPrivacyAlgorithm isEnhancedPrivacyAlgorithm:v11])
    {
      [a1 updateEnhancedBudgetForRecords:v12 withKey:v8 inDatabase:v9];
    }

    else
    {
      [a1 updateSimpleBudgetForRecords:v12 withKey:v8 inDatabase:v9];
    }
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }
}

+ (id)enforceEnhancedBudgetForRecords:(id)a3 withKey:(id)a4 inDatabase:(id)a5
{
  v64 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 count])
  {
    v10 = [v7 objectAtIndexedSubscript:0];
    v11 = [v10 metadata];

    if ([_DPEnhancedPrivacyAlgorithm isMetadataValid:v11]&& [_DPEnhancedPrivacyAlgorithm verifyEnhancedDPParamsForKey:v8 withMetadata:v11])
    {
      v12 = [_DPEnhancedPrivacyAlgorithm allowedDataTypesForKey:v8 withMetadata:v11];
      if (v12)
      {
        v51 = v8;
        v49 = [_DPKeyNames keyPropertiesForKey:v8];
        v48 = [v49 namespaceName];
        v52 = [_DPNamespaceParameters initParametersForNamespace:?];
        v13 = [v52 budget];
        [v13 initializeBudgetRecordFrom:v9];

        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v50 = v12;
        v14 = v12;
        v15 = [v14 countByEnumeratingWithState:&v58 objects:v63 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = 0;
          v18 = *v59;
          do
          {
            v19 = 0;
            v20 = v17;
            do
            {
              if (*v59 != v18)
              {
                objc_enumerationMutation(v14);
              }

              v17 = [_DPDataTypeParameters initParametersForDataType:*(*(&v58 + 1) + 8 * v19)];

              v21 = [v17 budget];
              [v21 initializeBudgetRecordFrom:v9];

              ++v19;
              v20 = v17;
            }

            while (v16 != v19);
            v16 = [v14 countByEnumeratingWithState:&v58 objects:v63 count:16];
          }

          while (v16);
        }

        else
        {
          v17 = 0;
        }

        v23 = objc_autoreleasePoolPush();
        [_DPPrivacyBudget updateAllBudgetsIn:v9];
        objc_autoreleasePoolPop(v23);
        v24 = v52;
        v25 = [v52 budget];
        v26 = [v25 name];

        v27 = [_DPPrivacyBudget balanceForBudgetWithName:v26];
        v47 = v26;
        [_DPPrivacyBudget balanceForCohortAggregateBudgetWithName:v26];
        v29 = v28;
        v46 = [v11 objectForKeyedSubscript:@"EnhancedDifferentialPrivacyParameters"];
        v30 = [v46 objectForKeyedSubscript:@"cohortAggregateDifferentialPrivacyBudget"];
        [v30 doubleValue];
        v32 = v31;

        v22 = MEMORY[0x277CBEBF8];
        if (v27 >= 1 && v29 >= v32)
        {
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          obj = v14;
          v33 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v55;
            while (2)
            {
              v36 = 0;
              v37 = v17;
              do
              {
                if (*v55 != v35)
                {
                  objc_enumerationMutation(obj);
                }

                v17 = [_DPDataTypeParameters initParametersForDataType:*(*(&v54 + 1) + 8 * v36)];

                v38 = [v17 budget];
                v39 = [v38 name];

                v40 = [_DPPrivacyBudget balanceForBudgetWithName:v39];
                [_DPPrivacyBudget balanceForCohortAggregateBudgetWithName:v39];
                v42 = v41;

                if (v40 < 1 || v42 < v32)
                {

                  v22 = MEMORY[0x277CBEBF8];
                  goto LABEL_32;
                }

                ++v36;
                v37 = v17;
              }

              while (v34 != v36);
              v34 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
              if (v34)
              {
                continue;
              }

              break;
            }
          }

          v22 = [v7 copy];
LABEL_32:
          v24 = v52;
        }

        v12 = v50;
        v8 = v51;
      }

      else
      {
        v22 = MEMORY[0x277CBEBF8];
      }
    }

    else
    {
      v22 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v22 = MEMORY[0x277CBEBF8];
    v11 = MEMORY[0x277CBEC10];
  }

  v44 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)enforceSimpleBudgetForRecords:(id)a3 withKey:(id)a4 inDatabase:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [_DPKeyNames keyPropertiesForKey:v8];
  v11 = [v10 budget];
  [v11 initializeBudgetRecordFrom:v9];

  v12 = objc_autoreleasePoolPush();
  [_DPPrivacyBudget updateAllBudgetsIn:v9];
  objc_autoreleasePoolPop(v12);
  v13 = [v10 budget];
  v14 = [v13 name];

  v15 = [_DPPrivacyBudget balanceForBudgetWithName:v14];
  if (v15 <= 0)
  {
    v19 = +[_DPLog framework];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      +[_DPPrivacyBudget enforceSimpleBudgetForRecords:withKey:inDatabase:];
    }

    v17 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v16 = v15;
    v17 = v7;
    if ([v17 count] > v16)
    {
      v18 = [v17 subarrayWithRange:{0, v16}];

      v17 = v18;
    }
  }

  return v17;
}

+ (void)updateEnhancedBudgetForRecords:(id)a3 withKey:(id)a4 inDatabase:(id)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [_DPKeyNames keyPropertiesForKey:v8];
  v11 = [v7 objectAtIndexedSubscript:0];
  v12 = [v11 metadata];

  if ([_DPEnhancedPrivacyAlgorithm isMetadataValid:v12]&& [_DPEnhancedPrivacyAlgorithm verifyEnhancedDPParamsForKey:v8 withMetadata:v12])
  {
    v39 = [MEMORY[0x277CBEBF8] mutableCopy];
    v42 = [v10 namespaceName];
    v13 = [_DPNamespaceParameters initParametersForNamespace:?];
    v14 = [v13 budget];
    v15 = [v14 name];

    [_DPPrivacyBudget debit:1 budgetWithName:v15];
    v40 = [v12 objectForKeyedSubscript:@"EnhancedDifferentialPrivacyParameters"];
    v16 = [v40 objectForKeyedSubscript:@"cohortAggregateDifferentialPrivacyBudget"];
    [v16 doubleValue];
    v18 = v17;

    v41 = v15;
    [_DPPrivacyBudget debitCohortAggregate:v15 budgetWithName:v18];
    v19 = [v13 budget];
    [v19 budgetRecord];
    v21 = v20 = v12;

    [v39 addObject:v21];
    v43 = v20;
    v22 = [_DPEnhancedPrivacyAlgorithm allowedDataTypesForKey:v8 withMetadata:v20];
    v45 = 0u;
    v46 = 0u;
    v23 = MEMORY[0x277CBEBF8];
    if (v22)
    {
      v23 = v22;
    }

    v47 = 0uLL;
    v48 = 0uLL;
    obj = v23;
    v24 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v24)
    {
      v25 = v24;
      v35 = v10;
      v36 = v9;
      v37 = v8;
      v38 = v7;
      v26 = 0;
      v27 = *v46;
      do
      {
        v28 = 0;
        v29 = v26;
        v30 = v21;
        do
        {
          if (*v46 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v26 = [_DPDataTypeParameters initParametersForDataType:*(*(&v45 + 1) + 8 * v28)];

          v31 = [v26 budget];
          v32 = [v31 name];

          [_DPPrivacyBudget debit:1 budgetWithName:v32];
          [_DPPrivacyBudget debitCohortAggregate:v32 budgetWithName:v18];
          v33 = [v26 budget];
          v21 = [v33 budgetRecord];

          [v39 addObject:v21];
          ++v28;
          v29 = v26;
          v30 = v21;
        }

        while (v25 != v28);
        v25 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v25);

      v8 = v37;
      v7 = v38;
      v10 = v35;
      v9 = v36;
    }

    [v9 updateRecords:v39 withCompletion:0];
    v12 = v43;
  }

  v34 = *MEMORY[0x277D85DE8];
}

+ (void)updateSimpleBudgetForRecords:(id)a3 withKey:(id)a4 inDatabase:(id)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [_DPKeyNames keyPropertiesForKey:a4];
  if ([v7 count])
  {
    v10 = [v9 budget];
    v11 = [v10 name];

    +[_DPPrivacyBudget debit:budgetWithName:](_DPPrivacyBudget, "debit:budgetWithName:", [v7 count], v11);
    v12 = [v9 budget];
    v13 = [v12 budgetRecord];

    v16[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    [v8 updateRecords:v14 withCompletion:0];
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (void)enforceSimpleBudgetForRecords:withKey:inDatabase:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  v5 = *MEMORY[0x277D85DE8];
  v2 = NSStringFromSelector(v1);
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(&dword_22622D000, v0, OS_LOG_TYPE_DEBUG, "%@: no balance left for key=%@", v4, 0x16u);

  v3 = *MEMORY[0x277D85DE8];
}

@end