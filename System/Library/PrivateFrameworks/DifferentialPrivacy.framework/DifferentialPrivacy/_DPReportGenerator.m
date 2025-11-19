@interface _DPReportGenerator
+ (id)filterNonConformingRecordsFrom:(id)a3;
+ (id)queryKeysForPattern:(id)a3 storage:(id)a4;
+ (id)queryRecordsForKey:(id)a3 storage:(id)a4;
+ (id)randomizeKeys:(id)a3 andSortByPriority:(BOOL)a4;
+ (unint64_t)queryRecordCountForKey:(id)a3 withPredicate:(id)a4 storage:(id)a5;
- (BOOL)markSubmitted:(id)a3 storage:(id)a4;
- (_DPReportGenerator)init;
- (_DPReportGenerator)initWithMetricsCollector:(id)a3;
- (id)generateReportForKeys:(id)a3 storage:(id)a4;
- (id)generateReportUsing:(id)a3;
- (void)reportMetricsForKey:(id)a3 toBeSubmitted:(id)a4 currentDate:(id)a5 storage:(id)a6;
- (void)scheduleMaintenanceWithName:(id)a3 database:(id)a4;
@end

@implementation _DPReportGenerator

+ (id)filterNonConformingRecordsFrom:(id)a3
{
  v3 = a3;
  v4 = [v3 indexesOfObjectsPassingTest:&__block_literal_global_14];
  v5 = [v3 mutableCopy];

  [v5 removeObjectsAtIndexes:v4];

  return v5;
}

+ (unint64_t)queryRecordCountForKey:(id)a3 withPredicate:(id)a4 storage:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [_DPKeyNames keyPropertiesForKey:v8];
    v12 = [_DPRecordQueryPredicates entityForKey:v8];
    v13 = v12;
    if (v11)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      v17 = 0;
    }

    else
    {
      v15 = dispatch_semaphore_create(0);
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v26 = 0;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __67___DPReportGenerator_queryRecordCountForKey_withPredicate_storage___block_invoke;
      v19[3] = &unk_27858B5D8;
      v21 = &v23;
      v22 = a2;
      v16 = v15;
      v20 = v16;
      [v10 fetchRecordCountForEntity:v13 predicate:v9 completion:v19];
      dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
      v17 = v24[3];

      _Block_object_dispose(&v23, 8);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)queryRecordsForKey:(id)a3 storage:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [_DPKeyNames keyPropertiesForKey:v6];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 budget];
      v12 = [v11 name];

      v13 = [_DPPrivacyBudgetProperties budgetPropertiesForKey:v12];
      v14 = [v13 intervalBudgetValue];
      v15 = [v14 unsignedIntegerValue];

      if (v15 >= 0x28)
      {
        v16 = 40;
      }

      else
      {
        v16 = v15;
      }
    }

    else
    {
      v16 = 40;
    }

    v18 = [_DPRecordQueryPredicates entityForKey:v6];
    if (v18)
    {
      v19 = [_DPRecordQueryPredicates predicateForRecordsNotSubmittedForKeyBeginsWith:v6];
      v27 = 0;
      v28 = &v27;
      v29 = 0x3032000000;
      v30 = __Block_byref_object_copy__8;
      v31 = __Block_byref_object_dispose__8;
      v32 = 0;
      v20 = dispatch_semaphore_create(0);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __49___DPReportGenerator_queryRecordsForKey_storage___block_invoke;
      v23[3] = &unk_27858B238;
      v25 = &v27;
      v26 = a2;
      v21 = v20;
      v24 = v21;
      [v7 fetchRecordsFor:v18 predicate:v19 fetchLimit:v16 fetchOffset:0 randomizeOrder:1 withCompletion:v23];
      dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
      v17 = v28[5];

      _Block_object_dispose(&v27, 8);
    }

    else
    {
      v17 = MEMORY[0x277CBEBF8];
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v17 = MEMORY[0x277CBEBF8];
  }

  return v17;
}

+ (id)queryKeysForPattern:(id)a3 storage:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [_DPRecordQueryPredicates entityForKey:v6];
    if (v9)
    {
      v10 = [_DPRecordQueryPredicates predicateForRecordsNotSubmittedForKeyBeginsWith:v6];
      v19 = 0;
      v20 = &v19;
      v21 = 0x3032000000;
      v22 = __Block_byref_object_copy__8;
      v23 = __Block_byref_object_dispose__8;
      v24 = 0;
      v11 = dispatch_semaphore_create(0);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __50___DPReportGenerator_queryKeysForPattern_storage___block_invoke;
      v15[3] = &unk_27858B238;
      v17 = &v19;
      v18 = a2;
      v12 = v11;
      v16 = v12;
      [v7 fetchKeynamesFor:v9 predicate:v10 fetchLimit:100 fetchOffset:0 withCompletion:v15];
      dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
      v13 = v20[5];

      _Block_object_dispose(&v19, 8);
    }

    else
    {
      v13 = MEMORY[0x277CBEBF8];
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  return v13;
}

- (_DPReportGenerator)init
{
  v3 = +[_DPCoreAnalyticsCollector sharedInstance];
  v4 = [(_DPReportGenerator *)self initWithMetricsCollector:v3];

  return v4;
}

- (_DPReportGenerator)initWithMetricsCollector:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _DPReportGenerator;
  v6 = [(_DPReportGenerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metricsCollector, a3);
  }

  return v7;
}

- (BOOL)markSubmitted:(id)a3 storage:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v15 + 1) + 8 * v12++) setSubmitted:{1, v15}];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    [v6 updateRecords:v8 withCompletion:0];
    objc_autoreleasePoolPop(v7);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6 != 0;
}

- (id)generateReportUsing:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[_DPLog daemon];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(_DPReportGenerator *)a2 generateReportUsing:v6];
  }

  if (!+[_DPDeviceInfo isDataCollectionEnabled])
  {
    v7 = +[_DPLog daemon];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_DPReportGenerator generateReportUsing:a2];
    }

    goto LABEL_9;
  }

  if (+[_DPDeviceInfo isDisabledByTaskingForCrashCopier])
  {
    v7 = +[_DPLog daemon];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_DPReportGenerator generateReportUsing:a2];
    }

LABEL_9:

    v8 = 0;
    goto LABEL_29;
  }

  v29 = objc_autoreleasePoolPush();
  v9 = +[_DPKeyNames keyNamesGroupedByPropertyName];
  v10 = [MEMORY[0x277CBEBF8] mutableCopy];
  v32 = v9;
  v28 = [v9 allKeys];
  [objc_opt_class() randomizeKeys:v28 andSortByPriority:1];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v43 = 0u;
  v33 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v33)
  {
    v31 = *v41;
    do
    {
      v11 = 0;
      do
      {
        if (*v41 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v35 = v11;
        v12 = *(*(&v40 + 1) + 8 * v11);
        context = objc_autoreleasePoolPush();
        v13 = [v32 objectForKeyedSubscript:v12];
        v14 = [v13 mutableCopy];

        v15 = [MEMORY[0x277CBEBF8] mutableCopy];
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v16 = v14;
        v17 = [v16 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v37;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v37 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v36 + 1) + 8 * i);
              [v15 addObject:v21];
              v22 = [objc_opt_class() queryKeysForPattern:v21 storage:v5];
              if ([v22 count])
              {
                v23 = [objc_opt_class() randomizeKeys:v22 andSortByPriority:0];
                [v10 addObjectsFromArray:v23];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v36 objects:v44 count:16];
          }

          while (v18);
        }

        [v16 removeObjectsInArray:v15];
        v24 = [v16 copy];
        if ([v24 count])
        {
          v25 = [objc_opt_class() randomizeKeys:v24 andSortByPriority:0];
          [v10 addObjectsFromArray:v25];
        }

        objc_autoreleasePoolPop(context);
        v11 = v35 + 1;
      }

      while (v35 + 1 != v33);
      v33 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v33);
  }

  v8 = [(_DPReportGenerator *)self generateReportForKeys:v10 storage:v5];

  objc_autoreleasePoolPop(v29);
LABEL_29:

  v26 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)randomizeKeys:(id)a3 andSortByPriority:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 count];
  v8 = [v5 mutableCopy];
  for (i = [MEMORY[0x277CBEBF8] mutableCopy]; objc_msgSend(v8, "count"); --v7)
  {
    v10 = arc4random_uniform(v7);
    v11 = [v8 objectAtIndexedSubscript:v10];
    [v8 removeObjectAtIndex:v10];
    [i addObject:v11];
  }

  if (v4)
  {
    v12 = [i sortedArrayWithOptions:16 usingComparator:&__block_literal_global_13];
  }

  else
  {
    v12 = [i copy];
  }

  v13 = v12;

  objc_autoreleasePoolPop(v6);

  return v13;
}

- (void)reportMetricsForKey:(id)a3 toBeSubmitted:(id)a4 currentDate:(id)a5 storage:(id)a6
{
  v47[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (+[_DPDeviceInfo isInternalBuild])
  {
    v14 = [_DPKeyNames keyPropertiesForKey:v10];
    if (v14)
    {
      v33 = self;
      v42 = v14;
      v41 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v12 sinceDate:-604800.0];
      v40 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v12 sinceDate:-86400.0];
      v38 = [_DPRecordQueryPredicates predicateForRecordsInDateRangeStart:v41 end:v12];
      v39 = [_DPRecordQueryPredicates predicateForRecordsInDateRangeStart:v40 end:v12];
      v15 = [_DPRecordQueryPredicates predicateForRecordsMatchingKey:v10];
      v16 = MEMORY[0x277CCA920];
      v47[0] = v15;
      v47[1] = v39;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
      v37 = [v16 andPredicateWithSubpredicates:v17];

      v18 = MEMORY[0x277CCA920];
      v46[0] = v15;
      v46[1] = v38;
      v36 = v15;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
      v35 = [v18 andPredicateWithSubpredicates:v19];

      v34 = [objc_opt_class() queryRecordCountForKey:v10 withPredicate:v37 storage:v13];
      v20 = [objc_opt_class() queryRecordCountForKey:v10 withPredicate:v35 storage:v13];
      v21 = MEMORY[0x277CCA920];
      v45[0] = v15;
      v22 = +[_DPRecordQueryPredicates predicateForRecordsNotSubmitted];
      v45[1] = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
      v24 = [v21 andPredicateWithSubpredicates:v23];

      v25 = [objc_opt_class() queryRecordCountForKey:v10 withPredicate:v24 storage:v13];
      v26 = [v11 count] / v25;
      v44[0] = v10;
      v43[0] = @"useCase";
      v43[1] = @"countLastWeek";
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
      v44[1] = v27;
      v43[2] = @"countLastDay";
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v34];
      v44[2] = v28;
      v43[3] = @"proportionSubmitted";
      v29 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
      v44[3] = v29;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:4];

      v31 = [(_DPReportGenerator *)v33 metricsCollector];
      [v31 reportMetricsForEvent:@"com.apple.DifferentialPrivacy.usage" withMetrics:v30];

      v14 = v42;
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (id)generateReportForKeys:(id)a3 storage:(id)a4
{
  v79 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v38 = &stru_2839671C8;
    goto LABEL_51;
  }

  context = objc_autoreleasePoolPush();
  v7 = MEMORY[0x277CBEBF8];
  v59 = [MEMORY[0x277CBEBF8] mutableCopy];
  v61 = [v7 mutableCopy];
  v58 = [v7 mutableCopy];
  v68 = [MEMORY[0x277CBEC10] mutableCopy];
  v60 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v57 = v5;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v73 objects:v78 count:16];
  if (!v9)
  {
    goto LABEL_33;
  }

  v10 = v9;
  v62 = 40;
  v63 = v6;
  v11 = 0x27858A000uLL;
  v12 = *v74;
  v65 = v8;
  v66 = *v74;
  while (2)
  {
    v13 = 0;
    v67 = v10;
    do
    {
      if (*v74 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v73 + 1) + 8 * v13);
      v15 = objc_autoreleasePoolPush();
      v16 = [*(v11 + 624) keyPropertiesForKey:v14];
      v17 = v16;
      if (v16 && [v16 transport] != 4)
      {
        v18 = [v17 budget];
        [v18 initializeBudgetRecordFrom:v6];

        v19 = [v17 budget];
        v20 = [v19 name];

        v21 = [_DPPrivacyBudget balanceForBudgetWithName:v20];
        v22 = [v68 objectForKeyedSubscript:v20];
        v23 = [v22 unsignedIntegerValue];

        v24 = v21 - v23;
        if (v24 < 1)
        {
LABEL_27:
          v12 = v66;

          v11 = 0x27858A000;
          v10 = v67;
          goto LABEL_28;
        }

        v25 = [v17 transport];
        v26 = objc_autoreleasePoolPush();
        v27 = [objc_opt_class() queryRecordsForKey:v14 storage:v6];
        v28 = [objc_opt_class() filterNonConformingRecordsFrom:v27];
        if ([v28 count])
        {

          objc_autoreleasePoolPop(v26);
          if ([v28 count] <= v24)
          {
            v27 = v28;
          }

          else
          {
            v27 = [v28 subarrayWithRange:{0, v24}];
          }

          v8 = v65;
          if (![v27 count])
          {
            goto LABEL_26;
          }

          v29 = [v27 count];
          if (v62 - v29 < 0)
          {

            objc_autoreleasePoolPop(v15);
            v6 = v63;
            goto LABEL_33;
          }

          v62 -= v29;
          v30 = [_DPJSONSegment alloc];
          v31 = [v17 serverAlgorithmString];
          v32 = [v17 parameterDictionary];
          v33 = [(_DPJSONSegment *)v30 initWithKey:v14 serverAlgorithmString:v31 parameterDictionary:v32 records:v27];

          if (v33)
          {
            [v61 addObjectsFromArray:v27];
            if (v25 == 2)
            {
              [v58 addObject:v33];
            }

            [(_DPReportGenerator *)self reportMetricsForKey:v14 toBeSubmitted:v27 currentDate:v60 storage:v63];
            if (+[_DPDeviceInfo isInternalBuild]|| v25 != 2)
            {
              [v59 addObject:v33];
            }

            v34 = [v68 objectForKeyedSubscript:v20];
            v35 = [v34 unsignedIntegerValue];

            v36 = [v27 count];
            v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v36 + v35];
            [v68 setObject:v37 forKeyedSubscript:v20];
          }
        }

        else
        {

          objc_autoreleasePoolPop(v26);
        }

        v8 = v65;
LABEL_26:

        v6 = v63;
        goto LABEL_27;
      }

LABEL_28:

      objc_autoreleasePoolPop(v15);
      ++v13;
    }

    while (v10 != v13);
    v10 = [v8 countByEnumeratingWithState:&v73 objects:v78 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_33:

  v39 = v59;
  if (![v59 count])
  {
    v38 = 0;
    v5 = v57;
    v41 = v58;
    goto LABEL_50;
  }

  v40 = objc_autoreleasePoolPush();
  v41 = v58;
  if (![v59 count] || (+[_DPJSONOutputHelper submissionContentForSegments:](_DPJSONOutputHelper, "submissionContentForSegments:", v59), (v42 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    objc_autoreleasePoolPop(v40);
    v38 = 0;
    goto LABEL_48;
  }

  v43 = v42;
  v38 = [_DPUploadHelper writeFileForDA:v42];

  objc_autoreleasePoolPop(v40);
  if (!v38)
  {
LABEL_48:
    v5 = v57;
    goto LABEL_50;
  }

  [(_DPReportGenerator *)self markSubmitted:v61 storage:v6];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v44 = v68;
  v45 = [v44 countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v70;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v70 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = *(*(&v69 + 1) + 8 * i);
        v50 = [v44 objectForKeyedSubscript:v49];
        +[_DPPrivacyBudget debit:budgetWithName:](_DPPrivacyBudget, "debit:budgetWithName:", [v50 unsignedIntegerValue], v49);
      }

      v46 = [v44 countByEnumeratingWithState:&v69 objects:v77 count:16];
    }

    while (v46);
  }

  v51 = objc_autoreleasePoolPush();
  [_DPPrivacyBudget updateAllBudgetsIn:v6];
  objc_autoreleasePoolPop(v51);
  v41 = v58;
  v5 = v57;
  if ([v58 count])
  {
    v52 = [_DPJSONOutputHelper submissionContentForSegments:v58];
    v53 = [_DPUploadHelper writeFileForParsec:v52];
  }

  v39 = v59;
LABEL_50:

  objc_autoreleasePoolPop(context);
LABEL_51:

  v54 = *MEMORY[0x277D85DE8];

  return v38;
}

- (void)scheduleMaintenanceWithName:(id)a3 database:(id)a4
{
  v6 = a4;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __59___DPReportGenerator_scheduleMaintenanceWithName_database___block_invoke;
  v14 = &unk_27858AF18;
  v15 = self;
  v16 = v6;
  v7 = v6;
  v8 = a3;
  v9 = MEMORY[0x22AA7A8C0](&v11);
  v10 = [_DPPeriodicTask taskWithName:v8 period:kSecondsIn18Hours handler:v9 networkingRequired:1, v11, v12, v13, v14, v15];

  [_DPPeriodicTaskManager registerTask:v10];
}

- (void)generateReportUsing:(const char *)a1 .cold.1(const char *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v4 = +[_DPStrings databaseDirectoryPath];
  v6 = 138412546;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  _os_log_debug_impl(&dword_22622D000, a2, OS_LOG_TYPE_DEBUG, "%@: Data Base Directory Path: %@", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)generateReportUsing:(const char *)a1 .cold.2(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)generateReportUsing:(const char *)a1 .cold.3(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

@end