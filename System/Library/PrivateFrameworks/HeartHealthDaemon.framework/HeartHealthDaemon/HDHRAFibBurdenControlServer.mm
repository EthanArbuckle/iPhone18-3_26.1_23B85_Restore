@interface HDHRAFibBurdenControlServer
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
- (HDHRAFibBurdenControlServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate scheduler:(id)scheduler notificationManager:(id)manager;
- (id)_clientRemoteObjectProxy;
- (void)_addTachogramsForStartDayIndex:(int64_t)index endDayIndex:(int64_t)dayIndex chanceOfAFib:(double)fib chanceOfWrite:(double)write minutesBetweenSamples:(int64_t)samples startingHour:(int64_t)hour endingHour:(int64_t)endingHour completion:(id)self0;
- (void)remote_addTachogramClassificationForSampleUUID:(id)d hasAFib:(BOOL)fib completion:(id)completion;
- (void)remote_addTachogramsForStartDayIndex:(int64_t)index endDayIndex:(int64_t)dayIndex chanceOfAFib:(id)fib chanceOfWrite:(id)write minutesBetweenSamples:(id)samples startingHour:(id)hour endingHour:(id)endingHour completion:(id)self0;
- (void)remote_deleteAllTachogramClassificationsWithCompletion:(id)completion;
- (void)remote_deleteTachogramClassificationForSampleUUID:(id)d completion:(id)completion;
- (void)remote_determineIfAnalysisCanRunWithFeatureStatus:(id)status completion:(id)completion;
- (void)remote_determineMajorityTimeZoneForStartDayIndex:(int64_t)index endDayIndex:(int64_t)dayIndex completion:(id)completion;
- (void)remote_fetchSevenDayAnalysisBreadcrumbsWithCompletion:(id)completion;
- (void)remote_injectBurdenValues:(id)values completion:(id)completion;
- (void)remote_performAnalysisForWeekContainingDayIndex:(int64_t)index completion:(id)completion;
- (void)remote_queryAllTachogramClassificationsWithCompletion:(id)completion;
- (void)remote_queryEligibleTachogramsForPreviousSixWeeksForTimeOfDayBucket:(int64_t)bucket completion:(id)completion;
- (void)remote_queryEligibleTachogramsForPreviousSixWeeksForWeekday:(int64_t)weekday completion:(id)completion;
- (void)remote_queryEligibleTachogramsForStartDayIndex:(int64_t)index endDayIndex:(int64_t)dayIndex completion:(id)completion;
- (void)remote_queryTachogramClassificationForSampleUUID:(id)d completion:(id)completion;
@end

@implementation HDHRAFibBurdenControlServer

- (HDHRAFibBurdenControlServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate scheduler:(id)scheduler notificationManager:(id)manager
{
  schedulerCopy = scheduler;
  managerCopy = manager;
  v20.receiver = self;
  v20.super_class = HDHRAFibBurdenControlServer;
  v17 = [(HDStandardTaskServer *)&v20 initWithUUID:d configuration:configuration client:client delegate:delegate];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_scheduler, scheduler);
    objc_storeStrong(&v18->_notificationManager, manager);
  }

  return v18;
}

- (void)remote_determineIfAnalysisCanRunWithFeatureStatus:(id)status completion:(id)completion
{
  v6 = MEMORY[0x277CCABB0];
  scheduler = self->_scheduler;
  completionCopy = completion;
  v9 = [v6 numberWithBool:{-[HKHRAFibBurdenSevenDayAnalysisScheduling _shouldAllowFeatureStatus:](scheduler, "_shouldAllowFeatureStatus:", status)}];
  (*(completion + 2))(completionCopy, v9, 0);
}

- (void)remote_addTachogramClassificationForSampleUUID:(id)d hasAFib:(BOOL)fib completion:(id)completion
{
  fibCopy = fib;
  v39[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = MEMORY[0x277D10848];
  v10 = MEMORY[0x277CCD920];
  completionCopy = completion;
  heartbeatSeriesType = [v10 heartbeatSeriesType];
  profile = [(HDStandardTaskServer *)self profile];
  v38 = *MEMORY[0x277D10400];
  v39[0] = MEMORY[0x277CBEC38];
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v15 = HDDataEntityPredicateForDataUUID();
  v37 = 0;
  v16 = [v9 mostRecentSampleWithType:heartbeatSeriesType profile:profile encodingOptions:v14 predicate:v15 anchor:0 error:&v37];
  v17 = v37;

  if (v16)
  {
    if (v17)
    {
      _HKInitializeLogging();
      v18 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [HDHRAFibBurdenControlServer remote_addTachogramClassificationForSampleUUID:v17 hasAFib:v18 completion:?];
      }
    }

    v19 = objc_alloc(MEMORY[0x277D12FF8]);
    v20 = objc_alloc(MEMORY[0x277CCA970]);
    startDate = [v16 startDate];
    endDate = [v16 endDate];
    v23 = [v20 initWithStartDate:startDate endDate:endDate];
    [v16 _timeZone];
    v24 = v33 = v17;
    v25 = [v19 initWithSampleUUID:dCopy classification:fibCopy sampleDateInterval:v23 sampleTimeZone:v24];

    profile2 = [(HDStandardTaskServer *)self profile];
    database = [profile2 database];
    v35 = v25;
    v36 = 0;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __97__HDHRAFibBurdenControlServer_remote_addTachogramClassificationForSampleUUID_hasAFib_completion___block_invoke;
    v34[3] = &unk_278660DE8;
    v28 = v25;
    v29 = [(HDHealthEntity *)HDHRSampleClassificationEntity performWriteTransactionWithHealthDatabase:database error:&v36 block:v34];
    v30 = v36;

    v31 = v29;
    v17 = v33;
    completionCopy[2](completionCopy, v31, v30);

    completionCopy = v30;
  }

  else
  {
    v28 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"No sample found for given UUID %@", dCopy}];
    completionCopy[2](completionCopy, 0, v28);
  }

  v32 = *MEMORY[0x277D85DE8];
}

BOOL __97__HDHRAFibBurdenControlServer_remote_addTachogramClassificationForSampleUUID_hasAFib_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [HDHRSampleClassificationEntity insertSampleClassification:*(a1 + 32) transaction:a2 error:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)remote_queryAllTachogramClassificationsWithCompletion:(id)completion
{
  completionCopy = completion;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__7;
  v17 = __Block_byref_object_dispose__7;
  v18 = 0;
  profile = [(HDStandardTaskServer *)self profile];
  database = [profile database];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __85__HDHRAFibBurdenControlServer_remote_queryAllTachogramClassificationsWithCompletion___block_invoke;
  v11[3] = &unk_278660E10;
  v11[4] = &v13;
  v12 = 0;
  v7 = [(HDHealthEntity *)HDHRSampleClassificationEntity performReadTransactionWithHealthDatabase:database error:&v12 block:v11];
  v8 = v12;

  if (v7)
  {
    v9 = objc_alloc(MEMORY[0x277D13000]);
    v10 = [v9 initWithClassifications:v14[5] dayIndex:0 majorityTimeZone:0];
  }

  else
  {
    v10 = 0;
  }

  completionCopy[2](completionCopy, v10, v8);
  if (v7)
  {
  }

  _Block_object_dispose(&v13, 8);
}

BOOL __85__HDHRAFibBurdenControlServer_remote_queryAllTachogramClassificationsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [HDHRSampleClassificationEntity allSampleClassificationsWithTransaction:a2 error:a3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return *(*(*(a1 + 32) + 8) + 40) != 0;
}

- (void)remote_queryTachogramClassificationForSampleUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__7;
  v22 = __Block_byref_object_dispose__7;
  v23 = 0;
  profile = [(HDStandardTaskServer *)self profile];
  database = [profile database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __91__HDHRAFibBurdenControlServer_remote_queryTachogramClassificationForSampleUUID_completion___block_invoke;
  v14[3] = &unk_278660CB0;
  v16 = &v18;
  v17 = 0;
  v10 = dCopy;
  v15 = v10;
  v11 = [(HDHealthEntity *)HDHRSampleClassificationEntity performReadTransactionWithHealthDatabase:database error:&v17 block:v14];
  v12 = v17;

  if (v11)
  {
    v13 = v19[5];
  }

  else
  {
    v13 = 0;
  }

  completionCopy[2](completionCopy, v13, v12);

  _Block_object_dispose(&v18, 8);
}

BOOL __91__HDHRAFibBurdenControlServer_remote_queryTachogramClassificationForSampleUUID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [HDHRSampleClassificationEntity sampleClassificationWithSampleUUID:*(a1 + 32) transaction:a2 error:a3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (void)remote_deleteAllTachogramClassificationsWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  database = [profile database];
  v9 = 0;
  v7 = [(HDHealthEntity *)HDHRSampleClassificationEntity performWriteTransactionWithHealthDatabase:database error:&v9 block:&__block_literal_global_16];
  v8 = v9;

  completionCopy[2](completionCopy, v7, v8);
}

- (void)remote_deleteTachogramClassificationForSampleUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  database = [profile database];
  v14 = dCopy;
  v15 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __92__HDHRAFibBurdenControlServer_remote_deleteTachogramClassificationForSampleUUID_completion___block_invoke;
  v13[3] = &unk_278660DE8;
  v10 = dCopy;
  v11 = [(HDHealthEntity *)HDHRSampleClassificationEntity performWriteTransactionWithHealthDatabase:database error:&v15 block:v13];
  v12 = v15;

  completionCopy[2](completionCopy, v11, v12);
}

- (void)remote_determineMajorityTimeZoneForStartDayIndex:(int64_t)index endDayIndex:(int64_t)dayIndex completion:(id)completion
{
  v42 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v8 = [HKHRAFibBurdenJulianDayMajorityTimeZoneDeterminer alloc];
  profile = [(HDStandardTaskServer *)self profile];
  v10 = objc_alloc_init(MEMORY[0x277CCD0A0]);
  v11 = [(HKHRAFibBurdenJulianDayMajorityTimeZoneDeterminer *)v8 initWithProfile:profile calendarCache:v10];

  v40 = 0;
  v29 = v11;
  v12 = [(HKHRAFibBurdenJulianDayMajorityTimeZoneDeterminer *)v11 determineJulianDayToMajorityTimeZoneForRange:index error:dayIndex - index + 1, &v40];
  v28 = v40;
  v35 = v12;
  hk_sortedKeys = [v12 hk_sortedKeys];
  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v14 setTimeStyle:0];
  v33 = v14;
  [v14 setDateStyle:1];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = hk_sortedKeys;
  v15 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v37;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v36 + 1) + 8 * i);
        v20 = [v35 objectForKeyedSubscript:v19];
        v21 = [MEMORY[0x277CBEAA8] hk_noonWithDayIndex:objc_msgSend(v19 calendar:{"integerValue"), currentCalendar}];
        v22 = MEMORY[0x277CCACA8];
        v23 = [v33 stringFromDate:v21];
        name = [v20 name];
        v25 = [v20 abbreviationForDate:v21];
        v26 = [v22 stringWithFormat:@"Day index: %@, Date: %@, Majority Time Zone: %@ (%@)", v19, v23, name, v25];

        [v34 addObject:v26];
      }

      v16 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v16);
  }

  completionCopy[2](completionCopy, v34, v28);
  v27 = *MEMORY[0x277D85DE8];
}

- (void)remote_queryEligibleTachogramsForStartDayIndex:(int64_t)index endDayIndex:(int64_t)dayIndex completion:(id)completion
{
  completionCopy = completion;
  v9 = objc_alloc_init(MEMORY[0x277CCD0A0]);
  v10 = [HKHRAFibBurdenTachogramClassificationsRetriever alloc];
  profile = [(HDStandardTaskServer *)self profile];
  v12 = [(HKHRAFibBurdenTachogramClassificationsRetriever *)v10 initWithProfile:profile calendarCache:v9];

  v13 = objc_alloc_init(HKHRAFibBurdenTachogramClassifierFactory);
  createTachogramClassifier = [(HKHRAFibBurdenTachogramClassifierFactory *)v13 createTachogramClassifier];
  v25 = 0;
  v15 = [(HKHRAFibBurdenTachogramClassificationsRetriever *)v12 tachogramClassificationsDayIndexRange:index tachogramClassifier:dayIndex - index + 1 error:createTachogramClassifier, &v25];
  v16 = v25;

  if (v15)
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __101__HDHRAFibBurdenControlServer_remote_queryEligibleTachogramsForStartDayIndex_endDayIndex_completion___block_invoke;
    v23 = &unk_278660E78;
    v24 = v9;
    v17 = [v15 hk_map:&v20];
    v18 = objc_alloc(MEMORY[0x277D13008]);
    v19 = [v18 initWithClassificationCollections:{v17, v20, v21, v22, v23}];
  }

  else
  {
    v19 = 0;
  }

  completionCopy[2](completionCopy, v19, v16);
}

id __101__HDHRAFibBurdenControlServer_remote_queryEligibleTachogramsForStartDayIndex_endDayIndex_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 sampleClassification];

    v6 = MEMORY[0x277CCABB0];
    v7 = [v5 sampleDateInterval];
    v8 = [v7 startDate];
    v9 = *(a1 + 32);
    v10 = [v5 sampleTimeZone];
    v11 = [v9 calendarForTimeZone:v10];
    v12 = [v6 numberWithInteger:{objc_msgSend(v8, "hk_dayIndexWithCalendar:", v11)}];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v3 hk_map:&__block_literal_global_323];
  v14 = [objc_alloc(MEMORY[0x277D13000]) initWithClassifications:v13 dayIndex:v12 majorityTimeZone:0];

  return v14;
}

- (void)remote_queryEligibleTachogramsForPreviousSixWeeksForWeekday:(int64_t)weekday completion:(id)completion
{
  completionCopy = completion;
  v7 = objc_alloc_init(MEMORY[0x277CCD0A0]);
  v8 = [HKHRAFibBurdenTachogramClassificationsRetriever alloc];
  profile = [(HDStandardTaskServer *)self profile];
  v10 = [(HKHRAFibBurdenTachogramClassificationsRetriever *)v8 initWithProfile:profile calendarCache:v7];

  v11 = objc_alloc_init(HKHRAFibBurdenTachogramClassifierFactory);
  createTachogramClassifier = [(HKHRAFibBurdenTachogramClassifierFactory *)v11 createTachogramClassifier];
  v23 = 0;
  v13 = [(HKHRAFibBurdenTachogramClassificationsRetriever *)v10 tachogramClassificationsForLastSixWeeksOfWeekday:weekday tachogramClassifier:createTachogramClassifier error:&v23];
  v14 = v23;

  if (v13)
  {
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __102__HDHRAFibBurdenControlServer_remote_queryEligibleTachogramsForPreviousSixWeeksForWeekday_completion___block_invoke;
    v21 = &unk_278660E78;
    v22 = v7;
    v15 = [v13 hk_map:&v18];
    v16 = objc_alloc(MEMORY[0x277D13008]);
    v17 = [v16 initWithClassificationCollections:{v15, v18, v19, v20, v21}];
  }

  else
  {
    v17 = 0;
  }

  completionCopy[2](completionCopy, v17, v14);
}

id __102__HDHRAFibBurdenControlServer_remote_queryEligibleTachogramsForPreviousSixWeeksForWeekday_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 sampleClassification];

    v6 = MEMORY[0x277CCABB0];
    v7 = [v5 sampleDateInterval];
    v8 = [v7 startDate];
    v9 = *(a1 + 32);
    v10 = [v5 sampleTimeZone];
    v11 = [v9 calendarForTimeZone:v10];
    v12 = [v6 numberWithInteger:{objc_msgSend(v8, "hk_dayIndexWithCalendar:", v11)}];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v3 hk_map:&__block_literal_global_327];
  v14 = [objc_alloc(MEMORY[0x277D13000]) initWithClassifications:v13 dayIndex:v12 majorityTimeZone:0];

  return v14;
}

- (void)remote_queryEligibleTachogramsForPreviousSixWeeksForTimeOfDayBucket:(int64_t)bucket completion:(id)completion
{
  completionCopy = completion;
  v7 = objc_alloc_init(MEMORY[0x277CCD0A0]);
  v8 = [HKHRAFibBurdenJulianDayMajorityTimeZoneDeterminer alloc];
  profile = [(HDStandardTaskServer *)self profile];
  v10 = [(HKHRAFibBurdenJulianDayMajorityTimeZoneDeterminer *)v8 initWithProfile:profile calendarCache:v7];

  v11 = [HKHRAFibBurdenTachogramClassificationsRetriever alloc];
  profile2 = [(HDStandardTaskServer *)self profile];
  v13 = [(HKHRAFibBurdenTachogramClassificationsRetriever *)v11 initWithProfile:profile2 calendarCache:v7];

  currentCalendar = [v7 currentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v16 = [currentCalendar startOfDayForDate:date];

  currentCalendar2 = [v7 currentCalendar];
  v18 = [v16 hk_dayIndexWithCalendar:currentCalendar2];

  v34 = 0;
  v19 = [(HKHRAFibBurdenJulianDayMajorityTimeZoneDeterminer *)v10 determineJulianDayToMajorityTimeZoneForRange:v18 - 42 error:42, &v34];
  v20 = v34;
  if (v20)
  {
    v21 = v20;
    completionCopy[2](completionCopy, 0, v20);
  }

  else
  {
    v22 = objc_alloc_init(HKHRAFibBurdenTachogramClassifierFactory);
    createTachogramClassifier = [(HKHRAFibBurdenTachogramClassifierFactory *)v22 createTachogramClassifier];
    v33 = 0;
    v24 = [(HKHRAFibBurdenTachogramClassificationsRetriever *)v13 tachogramClassificationsForLastSixWeeksOfHoursFrom:4 * bucket to:4 * bucket + 4 julianDayToMajorityTimeZone:v19 tachogramClassifier:createTachogramClassifier error:&v33];
    v21 = v33;

    if (v24)
    {
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __110__HDHRAFibBurdenControlServer_remote_queryEligibleTachogramsForPreviousSixWeeksForTimeOfDayBucket_completion___block_invoke;
      v30[3] = &unk_278660EA0;
      v31 = v7;
      v32 = v19;
      [v24 hk_map:v30];
      v29 = v10;
      v25 = v13;
      v27 = v26 = v22;
      v28 = [objc_alloc(MEMORY[0x277D13008]) initWithClassificationCollections:v27];

      v22 = v26;
      v13 = v25;
      v10 = v29;
    }

    else
    {
      v28 = 0;
    }

    (completionCopy)[2](completionCopy, v28, v21);
  }
}

id __110__HDHRAFibBurdenControlServer_remote_queryEligibleTachogramsForPreviousSixWeeksForTimeOfDayBucket_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 sampleClassification];

    v6 = MEMORY[0x277CCABB0];
    v7 = [v5 sampleDateInterval];
    v8 = [v7 startDate];
    v9 = *(a1 + 32);
    v10 = [v5 sampleTimeZone];
    v11 = [v9 calendarForTimeZone:v10];
    v12 = [v6 numberWithInteger:{objc_msgSend(v8, "hk_dayIndexWithCalendar:", v11)}];

    v13 = [*(a1 + 40) objectForKeyedSubscript:v12];
    v14 = [v13 abbreviation];
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = [v3 hk_map:&__block_literal_global_329];
  v16 = [objc_alloc(MEMORY[0x277D13000]) initWithClassifications:v15 dayIndex:v12 majorityTimeZone:v14];

  return v16;
}

- (void)remote_addTachogramsForStartDayIndex:(int64_t)index endDayIndex:(int64_t)dayIndex chanceOfAFib:(id)fib chanceOfWrite:(id)write minutesBetweenSamples:(id)samples startingHour:(id)hour endingHour:(id)endingHour completion:(id)self0
{
  fibCopy = fib;
  writeCopy = write;
  samplesCopy = samples;
  hourCopy = hour;
  endingHourCopy = endingHour;
  completionCopy = completion;
  if (dayIndex < index)
  {
    v21 = MEMORY[0x277CCA9B8];
    v22 = @"End day index must be greater than or equal to start day index";
LABEL_25:
    v30 = [v21 hk_error:3 description:v22];
    completionCopy[2](completionCopy, 0, v30);

    goto LABEL_26;
  }

  if (!fibCopy)
  {
    v24 = 0.5;
    if (writeCopy)
    {
      goto LABEL_7;
    }

LABEL_14:
    v26 = 1.0;
    if (samplesCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  [fibCopy doubleValue];
  if (v23 < 0.0 || (v24 = v23, v23 > 1.0))
  {
    v21 = MEMORY[0x277CCA9B8];
    v22 = @"Chance of AFib must be between 0 and 1";
    goto LABEL_25;
  }

  if (!writeCopy)
  {
    goto LABEL_14;
  }

LABEL_7:
  [writeCopy doubleValue];
  if (v25 < 0.0 || (v26 = v25, v25 > 1.0))
  {
    v21 = MEMORY[0x277CCA9B8];
    v22 = @"Chance of write must be between 0 and 1";
    goto LABEL_25;
  }

  if (samplesCopy)
  {
LABEL_10:
    integerValue = [samplesCopy integerValue];
    if (hourCopy)
    {
      goto LABEL_11;
    }

LABEL_16:
    integerValue2 = 0;
    goto LABEL_17;
  }

LABEL_15:
  integerValue = 15;
  if (!hourCopy)
  {
    goto LABEL_16;
  }

LABEL_11:
  integerValue2 = [hourCopy integerValue];
  if (integerValue2 >= 0x19)
  {
    v21 = MEMORY[0x277CCA9B8];
    v22 = @"Starting hour must be between 0 and 24";
    goto LABEL_25;
  }

LABEL_17:
  if (endingHourCopy)
  {
    integerValue3 = [endingHourCopy integerValue];
    if (integerValue3 >= 0x18)
    {
      v21 = MEMORY[0x277CCA9B8];
      v22 = @"Ending hour must be between 0 and 24";
      goto LABEL_25;
    }
  }

  else
  {
    integerValue3 = 23;
  }

  if (integerValue3 < integerValue2)
  {
    v21 = MEMORY[0x277CCA9B8];
    v22 = @"Ending hour must be on or after starting hour";
    goto LABEL_25;
  }

  [HDHRAFibBurdenControlServer _addTachogramsForStartDayIndex:"_addTachogramsForStartDayIndex:endDayIndex:chanceOfAFib:chanceOfWrite:minutesBetweenSamples:startingHour:endingHour:completion:" endDayIndex:index chanceOfAFib:dayIndex chanceOfWrite:integerValue minutesBetweenSamples:integerValue2 startingHour:v24 endingHour:v26 completion:?];
LABEL_26:
}

- (void)_addTachogramsForStartDayIndex:(int64_t)index endDayIndex:(int64_t)dayIndex chanceOfAFib:(double)fib chanceOfWrite:(double)write minutesBetweenSamples:(int64_t)samples startingHour:(int64_t)hour endingHour:(int64_t)endingHour completion:(id)self0
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  database = [profile database];
  contextForWritingProtectedData = [MEMORY[0x277D106B8] contextForWritingProtectedData];
  v24[11] = endingHour;
  v25 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __158__HDHRAFibBurdenControlServer__addTachogramsForStartDayIndex_endDayIndex_chanceOfAFib_chanceOfWrite_minutesBetweenSamples_startingHour_endingHour_completion___block_invoke;
  v24[3] = &unk_278660EC8;
  v24[6] = dayIndex;
  v24[7] = hour;
  v24[8] = samples;
  *&v24[9] = write;
  *&v24[10] = fib;
  v24[4] = self;
  v24[5] = index;
  v22 = [database performTransactionWithContext:contextForWritingProtectedData error:&v25 block:v24 inaccessibilityHandler:0];
  v23 = v25;

  completionCopy[2](completionCopy, v22, v23);
}

uint64_t __158__HDHRAFibBurdenControlServer__addTachogramsForStartDayIndex_endDayIndex_chanceOfAFib_chanceOfWrite_minutesBetweenSamples_startingHour_endingHour_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_alloc_init(MEMORY[0x277CCD0A0]);
  v7 = *MEMORY[0x277CCDFA0];
  v36[0] = *MEMORY[0x277CCE050];
  v36[1] = v7;
  v37[0] = &unk_283CD32B0;
  v37[1] = &unk_283CD32C8;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
  v31 = [MEMORY[0x277CCD2E8] localDevice];
  v8 = [v6 currentCalendar];
  v9 = *(a1 + 40);
  if (v9 <= *(a1 + 48))
  {
    v27 = a3;
    v28 = v6;
    v29 = v5;
    v10 = 0;
    while (2)
    {
      v30 = v9;
      v12 = [MEMORY[0x277CBEAB8] hk_componentsWithDayIndex:v9 calendar:{v8, v27}];
      [v12 setHour:*(a1 + 56)];
      v13 = [v8 dateFromComponents:v12];
      v33 = v12;
      do
      {
        v14 = [v8 dateByAddingUnit:64 value:*(a1 + 64) toDate:v13 options:0];
        if (arc4random_uniform(0x64u) >= (*(a1 + 72) * 100.0))
        {
          v15 = v13;
        }

        else
        {
          if (arc4random_uniform(0x64u) >= (*(a1 + 80) * 100.0))
          {
            [MEMORY[0x277CCD540] _nonAFibSeriesSampleWithStartDate:v13 device:v31 metadata:v32];
          }

          else
          {
            [MEMORY[0x277CCD540] _aFibSeriesSampleWithStartDate:v13 device:v31 metadata:v32];
          }
          v15 = ;
          v16 = [*(a1 + 32) profile];
          v17 = [v16 dataManager];
          v35 = v15;
          v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
          v34 = v10;
          v19 = [v17 insertDataObjects:v18 error:&v34];
          v20 = v34;
          v21 = v10;
          v10 = v20;

          if ((v19 & 1) == 0)
          {
            v23 = v10;
            v10 = v23;
            if (v23)
            {
              if (v27)
              {
                v24 = v23;
                *v27 = v10;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            v11 = 0;
            goto LABEL_21;
          }

          v12 = v33;
        }

        v22 = [v8 component:16 fromDate:v14];
        if (v22 != [v12 day])
        {
          break;
        }

        v13 = v14;
      }

      while ([v8 component:32 fromDate:v14] <= *(a1 + 88));

      v9 = v30 + 1;
      if (v30 < *(a1 + 48))
      {
        continue;
      }

      break;
    }

    v11 = 1;
LABEL_21:
    v6 = v28;
    v5 = v29;
  }

  else
  {
    v10 = 0;
    v11 = 1;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)remote_performAnalysisForWeekContainingDayIndex:(int64_t)index completion:(id)completion
{
  v6 = MEMORY[0x277CCD0A0];
  completionCopy = completion;
  v8 = objc_alloc_init(v6);
  v9 = MEMORY[0x277CBEAA8];
  currentCalendar = [v8 currentCalendar];
  v11 = [v9 hk_dateOnDayIndex:index + 7 atHour:0 calendar:currentCalendar];

  v12 = [HKHRAFibBurdenSevenDayAnalysisManager alloc];
  profile = [(HDStandardTaskServer *)self profile];
  v14 = [HKHRStubbedAFibBurdenSevenDayAnalysisModeDeterminer alloc];
  profile2 = [(HDStandardTaskServer *)self profile];
  v16 = [(HKHRAFibBurdenSevenDayAnalysisModeDeterminer *)v14 initWithProfile:profile2 calendarCache:v8];
  v17 = [HKHRAFibBurdenAnalyzer alloc];
  profile3 = [(HDStandardTaskServer *)self profile];
  v19 = [(HKHRAFibBurdenAnalyzer *)v17 initWithProfile:profile3];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __90__HDHRAFibBurdenControlServer_remote_performAnalysisForWeekContainingDayIndex_completion___block_invoke;
  v28[3] = &unk_278660EF0;
  v29 = v11;
  v20 = v11;
  v21 = [(HKHRAFibBurdenSevenDayAnalysisManager *)v12 initWithProfile:profile modeDeterminer:v16 analyzer:v19 calendarCache:v8 dateGenerator:v28];

  v22 = objc_alloc(MEMORY[0x277CCD458]);
  v23 = [objc_alloc(MEMORY[0x277CCD448]) initWithOnboardingState:1 onboardingCompletion:0 featureSettings:0];
  v24 = [v22 initWithOnboardingRecord:v23 requirementsEvaluationByContext:MEMORY[0x277CBEC10]];

  v27 = 0;
  v25 = [(HKHRAFibBurdenSevenDayAnalysisManager *)v21 analyzePreviousCalendarWeekWithFeatureStatus:v24 shouldSaveSampleToDatabase:0 breadcrumbManager:0 error:&v27];
  v26 = v27;
  completionCopy[2](completionCopy, v25, v26);
}

- (void)remote_injectBurdenValues:(id)values completion:(id)completion
{
  selfCopy = self;
  v59 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  completionCopy = completion;
  v6 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  v7 = [MEMORY[0x277CBEAA8] now];
  v49 = v6;
  v8 = HKHRAFibBurdenPreviousWeekDayIndexRange();
  v10 = v9;

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v46 = valuesCopy;
  obj = [valuesCopy reverseObjectEnumerator];
  v51 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v51)
  {
    v50 = *v55;
    v48 = *MEMORY[0x277CCC950];
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v55 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v54 + 1) + 8 * i);
        burdenPercentage = [v13 burdenPercentage];

        if (burdenPercentage)
        {
          v15 = [MEMORY[0x277CBEAA8] hk_dateOnDayIndex:v8 atHour:0 calendar:v49];
          v16 = [MEMORY[0x277CBEAA8] hk_dateOnDayIndex:v8 + v10 atHour:0 calendar:v49];
          burdenPercentage2 = [v13 burdenPercentage];
          integerValue = [burdenPercentage2 integerValue];

          v19 = 100;
          if (integerValue < 100)
          {
            v19 = integerValue;
          }

          v20 = v11;
          if (v19 <= 2)
          {
            v21 = 2;
          }

          else
          {
            v21 = v19;
          }

          v22 = MEMORY[0x277CCD7E8];
          percentUnit = [MEMORY[0x277CCDAB0] percentUnit];
          v24 = [v22 quantityWithUnit:percentUnit doubleValue:v21 / 100.0];

          timeZone = [v13 timeZone];
          v26 = HKHRAFibBurdenSevenDayAnalysisMetadataWithTimeZoneAndWasClamped();

          v27 = MEMORY[0x277CCD800];
          v28 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v48];
          localDevice = [MEMORY[0x277CCD2E8] localDevice];
          v30 = [v27 quantitySampleWithType:v28 quantity:v24 startDate:v15 endDate:v16 device:localDevice metadata:v26];

          v11 = v20;
          [v20 addObject:v30];
        }

        v8 -= 7;
        v10 = 7;
      }

      v10 = 7;
      v51 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v51);
  }

  profile = [(HDStandardTaskServer *)selfCopy profile];
  deviceManager = [profile deviceManager];
  v53 = 0;
  v33 = [deviceManager currentDeviceEntityWithError:&v53];
  v34 = v53;

  if (v33)
  {
    profile2 = [(HDStandardTaskServer *)selfCopy profile];
    dataProvenanceManager = [profile2 dataProvenanceManager];
    v37 = [dataProvenanceManager defaultLocalDataProvenanceWithDeviceEntity:v33];

    profile3 = [(HDStandardTaskServer *)selfCopy profile];
    dataManager = [profile3 dataManager];
    v52 = v34;
    v40 = [dataManager insertDataObjects:v11 withProvenance:v37 creationDate:&v52 error:CFAbsoluteTimeGetCurrent()];
    v41 = v52;

    v42 = completionCopy;
    (*(completionCopy + 2))(completionCopy, v40, v41);

    v34 = v41;
  }

  else
  {
    v42 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0, v34);
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (void)remote_fetchSevenDayAnalysisBreadcrumbsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [HDHRAFibBurdenSevenDayAnalysisBreadcrumbManager alloc];
  profile = [(HDStandardTaskServer *)self profile];
  v7 = [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManager *)v5 initWithProfile:profile];

  v10 = 0;
  v8 = [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManager *)v7 fetchBreadcrumbsWithError:&v10];
  v9 = v10;
  completionCopy[2](completionCopy, v8, v9);
}

- (id)_clientRemoteObjectProxy
{
  client = [(HDStandardTaskServer *)self client];
  connection = [client connection];
  remoteObjectProxy = [connection remoteObjectProxy];

  return remoteObjectProxy;
}

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  dCopy = d;
  configurationCopy = configuration;
  clientCopy = client;
  delegateCopy = delegate;
  profile = [clientCopy profile];
  v16 = [profile profileExtensionWithIdentifier:*MEMORY[0x277D12F10]];

  if (v16)
  {
    aFibBurdenComponents = [v16 aFibBurdenComponents];
    notificationManager = [aFibBurdenComponents notificationManager];
    v19 = notificationManager;
    if (notificationManager)
    {
      v20 = notificationManager;
    }

    else
    {
      v24 = [HDHRAFibBurdenNotificationManager alloc];
      profile2 = [clientCopy profile];
      v20 = [(HDHRAFibBurdenNotificationManager *)v24 initWithProfile:profile2];
    }

    v26 = [HDHRAFibBurdenControlServer alloc];
    aFibBurdenComponents2 = [v16 aFibBurdenComponents];
    sevenDayAnalysisScheduler = [(HDHRAFibBurdenNotificationManager *)aFibBurdenComponents2 sevenDayAnalysisScheduler];
    v23 = [(HDHRAFibBurdenControlServer *)v26 initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy scheduler:sevenDayAnalysisScheduler notificationManager:v20];

    goto LABEL_12;
  }

  aFibBurdenComponents2 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"No profile extension found for %@", objc_opt_class()}];
  if (!aFibBurdenComponents2)
  {
    goto LABEL_10;
  }

  if (!error)
  {
    _HKLogDroppedError();
LABEL_10:
    v23 = 0;
    goto LABEL_11;
  }

  v22 = aFibBurdenComponents2;
  v23 = 0;
  *error = aFibBurdenComponents2;
LABEL_11:
  v20 = aFibBurdenComponents2;
LABEL_12:

  return v23;
}

- (void)remote_addTachogramClassificationForSampleUUID:(uint64_t)a1 hasAFib:(uint64_t)a2 completion:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_229486000, log, OS_LOG_TYPE_ERROR, "[%@] Error while inserting tachogram classification: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end