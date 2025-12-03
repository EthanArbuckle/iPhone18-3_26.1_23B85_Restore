@interface HKHRAFibBurdenControl
- (HKHRAFibBurdenControl)initWithHealthStore:(id)store;
- (id)determineIfAnalysisCanRunWithFeatureStatus:(id)status error:(id *)error;
- (id)fetchSevenDayAnalysisBreadcrumbsWithError:(id *)error;
- (id)performAnalysisForWeekContainingDayIndex:(int64_t)index error:(id *)error;
- (void)addTachogramClassificationForSampleUUID:(id)d hasAFib:(BOOL)fib completion:(id)completion;
- (void)addTachogramsForStartDayIndex:(int64_t)index endDayIndex:(int64_t)dayIndex chanceOfAFib:(id)fib chanceOfWrite:(id)write minutesBetweenSamples:(id)samples startingHour:(id)hour endingHour:(id)endingHour completion:(id)self0;
- (void)deleteAllTachogramClassificationsWithCompletion:(id)completion;
- (void)deleteTachogramClassificationForSampleUUID:(id)d completion:(id)completion;
- (void)determineMajorityTimeZoneForStartDayIndex:(int64_t)index endDayIndex:(int64_t)dayIndex completion:(id)completion;
- (void)fetchLastAnalysisDateWithCompletion:(id)completion;
- (void)fetchSevenDayAnalysisBreadcrumbsWithCompletion:(id)completion;
- (void)injectBurdenValues:(id)values completion:(id)completion;
- (void)queryAllTachogramClassificationsWithCompletion:(id)completion;
- (void)queryEligibleTachogramsForPreviousSixWeeksForTimeOfDayBucket:(int64_t)bucket completion:(id)completion;
- (void)queryEligibleTachogramsForPreviousSixWeeksForWeekday:(int64_t)weekday completion:(id)completion;
- (void)queryEligibleTachogramsForStartDayIndex:(int64_t)index endDayIndex:(int64_t)dayIndex completion:(id)completion;
- (void)queryTachogramClassificationForSampleUUID:(id)d completion:(id)completion;
- (void)sendNotificationForCurrentValue:(id)value previousValue:(id)previousValue shouldForwardToWatch:(BOOL)watch completion:(id)completion;
- (void)sendNotificationWithMode:(id)mode completion:(id)completion;
- (void)setLastAnalysisDate:(id)date completion:(id)completion;
- (void)triggerAnalysis;
@end

@implementation HKHRAFibBurdenControl

- (HKHRAFibBurdenControl)initWithHealthStore:(id)store
{
  storeCopy = store;
  v14.receiver = self;
  v14.super_class = HKHRAFibBurdenControl;
  v6 = [(HKHRAFibBurdenControl *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
    v8 = objc_alloc(MEMORY[0x277CCDAA0]);
    uUID = [MEMORY[0x277CCAD78] UUID];
    v10 = [v8 initWithHealthStore:storeCopy taskIdentifier:@"HKHRAFibBurdenControlServer" exportedObject:v7 taskUUID:uUID];
    proxyProvider = v7->_proxyProvider;
    v7->_proxyProvider = v10;

    [(HKTaskServerProxyProvider *)v7->_proxyProvider setShouldRetryOnInterruption:0];
    v12 = objc_alloc_init(MEMORY[0x277CCDA98]);
    [(HKTaskServerProxyProvider *)v7->_proxyProvider setTaskConfiguration:v12];
  }

  return v7;
}

- (void)triggerAnalysis
{
  proxyProvider = self->_proxyProvider;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__HKHRAFibBurdenControl_triggerAnalysis__block_invoke_2;
  v3[3] = &unk_27860AE38;
  v3[4] = self;
  [(HKTaskServerProxyProvider *)proxyProvider getSynchronousProxyWithHandler:&__block_literal_global_6 errorHandler:v3];
}

void __40__HKHRAFibBurdenControl_triggerAnalysis__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKHRAFibBurdenLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __40__HKHRAFibBurdenControl_triggerAnalysis__block_invoke_2_cold_1(a1);
  }
}

- (id)determineIfAnalysisCanRunWithFeatureStatus:(id)status error:(id *)error
{
  statusCopy = status;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__1;
  v29 = __Block_byref_object_dispose__1;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  proxyProvider = self->_proxyProvider;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__HKHRAFibBurdenControl_determineIfAnalysisCanRunWithFeatureStatus_error___block_invoke;
  v15[3] = &unk_27860B060;
  v8 = statusCopy;
  v16 = v8;
  v17 = &v25;
  v18 = &v19;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74__HKHRAFibBurdenControl_determineIfAnalysisCanRunWithFeatureStatus_error___block_invoke_3;
  v14[3] = &unk_27860AD48;
  v14[4] = &v19;
  [(HKTaskServerProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v15 errorHandler:v14];
  v9 = v20[5];
  v10 = v9;
  if (v9)
  {
    if (error)
    {
      v11 = v9;
      *error = v10;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v12 = v26[5];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v12;
}

uint64_t __74__HKHRAFibBurdenControl_determineIfAnalysisCanRunWithFeatureStatus_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __74__HKHRAFibBurdenControl_determineIfAnalysisCanRunWithFeatureStatus_error___block_invoke_2;
  v4[3] = &unk_27860B038;
  v5 = *(a1 + 40);
  return [a2 remote_determineIfAnalysisCanRunWithFeatureStatus:v2 completion:v4];
}

void __74__HKHRAFibBurdenControl_determineIfAnalysisCanRunWithFeatureStatus_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)addTachogramClassificationForSampleUUID:(id)d hasAFib:(BOOL)fib completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  proxyProvider = self->_proxyProvider;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __84__HKHRAFibBurdenControl_addTachogramClassificationForSampleUUID_hasAFib_completion___block_invoke;
  v16[3] = &unk_27860B088;
  v17 = dCopy;
  fibCopy = fib;
  v18 = completionCopy;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __84__HKHRAFibBurdenControl_addTachogramClassificationForSampleUUID_hasAFib_completion___block_invoke_2;
  v13[3] = &unk_27860B0B0;
  v13[4] = self;
  v14 = v17;
  v15 = v18;
  v11 = v18;
  v12 = v17;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v16 errorHandler:v13];
}

void __84__HKHRAFibBurdenControl_addTachogramClassificationForSampleUUID_hasAFib_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKHRAFibBurdenLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __84__HKHRAFibBurdenControl_addTachogramClassificationForSampleUUID_hasAFib_completion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)queryAllTachogramClassificationsWithCompletion:(id)completion
{
  completionCopy = completion;
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__HKHRAFibBurdenControl_queryAllTachogramClassificationsWithCompletion___block_invoke;
  v9[3] = &unk_27860B0D8;
  v10 = completionCopy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__HKHRAFibBurdenControl_queryAllTachogramClassificationsWithCompletion___block_invoke_2;
  v7[3] = &unk_27860B100;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

void __72__HKHRAFibBurdenControl_queryAllTachogramClassificationsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKHRAFibBurdenLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __72__HKHRAFibBurdenControl_queryAllTachogramClassificationsWithCompletion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)queryTachogramClassificationForSampleUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  proxyProvider = self->_proxyProvider;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__HKHRAFibBurdenControl_queryTachogramClassificationForSampleUUID_completion___block_invoke;
  v14[3] = &unk_27860B128;
  v15 = dCopy;
  v16 = completionCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__HKHRAFibBurdenControl_queryTachogramClassificationForSampleUUID_completion___block_invoke_2;
  v11[3] = &unk_27860B0B0;
  v11[4] = self;
  v12 = v15;
  v13 = v16;
  v9 = v16;
  v10 = v15;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v14 errorHandler:v11];
}

void __78__HKHRAFibBurdenControl_queryTachogramClassificationForSampleUUID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKHRAFibBurdenLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __78__HKHRAFibBurdenControl_queryTachogramClassificationForSampleUUID_completion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)deleteAllTachogramClassificationsWithCompletion:(id)completion
{
  completionCopy = completion;
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__HKHRAFibBurdenControl_deleteAllTachogramClassificationsWithCompletion___block_invoke;
  v9[3] = &unk_27860B0D8;
  v10 = completionCopy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HKHRAFibBurdenControl_deleteAllTachogramClassificationsWithCompletion___block_invoke_2;
  v7[3] = &unk_27860B100;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

void __73__HKHRAFibBurdenControl_deleteAllTachogramClassificationsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKHRAFibBurdenLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __73__HKHRAFibBurdenControl_deleteAllTachogramClassificationsWithCompletion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)deleteTachogramClassificationForSampleUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  proxyProvider = self->_proxyProvider;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__HKHRAFibBurdenControl_deleteTachogramClassificationForSampleUUID_completion___block_invoke;
  v14[3] = &unk_27860B128;
  v15 = dCopy;
  v16 = completionCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__HKHRAFibBurdenControl_deleteTachogramClassificationForSampleUUID_completion___block_invoke_2;
  v11[3] = &unk_27860B0B0;
  v11[4] = self;
  v12 = v15;
  v13 = v16;
  v9 = v16;
  v10 = v15;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v14 errorHandler:v11];
}

void __79__HKHRAFibBurdenControl_deleteTachogramClassificationForSampleUUID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKHRAFibBurdenLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __79__HKHRAFibBurdenControl_deleteTachogramClassificationForSampleUUID_completion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)determineMajorityTimeZoneForStartDayIndex:(int64_t)index endDayIndex:(int64_t)dayIndex completion:(id)completion
{
  completionCopy = completion;
  proxyProvider = self->_proxyProvider;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__HKHRAFibBurdenControl_determineMajorityTimeZoneForStartDayIndex_endDayIndex_completion___block_invoke;
  v15[3] = &unk_27860B150;
  indexCopy = index;
  dayIndexCopy = dayIndex;
  v16 = completionCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __90__HKHRAFibBurdenControl_determineMajorityTimeZoneForStartDayIndex_endDayIndex_completion___block_invoke_2;
  v11[3] = &unk_27860B178;
  indexCopy2 = index;
  dayIndexCopy2 = dayIndex;
  v11[4] = self;
  v12 = v16;
  v10 = v16;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v15 errorHandler:v11];
}

void __90__HKHRAFibBurdenControl_determineMajorityTimeZoneForStartDayIndex_endDayIndex_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKHRAFibBurdenLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __90__HKHRAFibBurdenControl_determineMajorityTimeZoneForStartDayIndex_endDayIndex_completion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)queryEligibleTachogramsForStartDayIndex:(int64_t)index endDayIndex:(int64_t)dayIndex completion:(id)completion
{
  completionCopy = completion;
  proxyProvider = self->_proxyProvider;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __88__HKHRAFibBurdenControl_queryEligibleTachogramsForStartDayIndex_endDayIndex_completion___block_invoke;
  v15[3] = &unk_27860B150;
  indexCopy = index;
  dayIndexCopy = dayIndex;
  v16 = completionCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__HKHRAFibBurdenControl_queryEligibleTachogramsForStartDayIndex_endDayIndex_completion___block_invoke_2;
  v11[3] = &unk_27860B178;
  indexCopy2 = index;
  dayIndexCopy2 = dayIndex;
  v11[4] = self;
  v12 = v16;
  v10 = v16;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v15 errorHandler:v11];
}

void __88__HKHRAFibBurdenControl_queryEligibleTachogramsForStartDayIndex_endDayIndex_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKHRAFibBurdenLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __88__HKHRAFibBurdenControl_queryEligibleTachogramsForStartDayIndex_endDayIndex_completion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)queryEligibleTachogramsForPreviousSixWeeksForWeekday:(int64_t)weekday completion:(id)completion
{
  completionCopy = completion;
  proxyProvider = self->_proxyProvider;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __89__HKHRAFibBurdenControl_queryEligibleTachogramsForPreviousSixWeeksForWeekday_completion___block_invoke;
  v12[3] = &unk_27860B1A0;
  weekdayCopy = weekday;
  v13 = completionCopy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __89__HKHRAFibBurdenControl_queryEligibleTachogramsForPreviousSixWeeksForWeekday_completion___block_invoke_2;
  v9[3] = &unk_27860B1C8;
  v10 = v13;
  weekdayCopy2 = weekday;
  v9[4] = self;
  v8 = v13;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v12 errorHandler:v9];
}

void __89__HKHRAFibBurdenControl_queryEligibleTachogramsForPreviousSixWeeksForWeekday_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKHRAFibBurdenLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __89__HKHRAFibBurdenControl_queryEligibleTachogramsForPreviousSixWeeksForWeekday_completion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)queryEligibleTachogramsForPreviousSixWeeksForTimeOfDayBucket:(int64_t)bucket completion:(id)completion
{
  completionCopy = completion;
  proxyProvider = self->_proxyProvider;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__HKHRAFibBurdenControl_queryEligibleTachogramsForPreviousSixWeeksForTimeOfDayBucket_completion___block_invoke;
  v12[3] = &unk_27860B1A0;
  bucketCopy = bucket;
  v13 = completionCopy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __97__HKHRAFibBurdenControl_queryEligibleTachogramsForPreviousSixWeeksForTimeOfDayBucket_completion___block_invoke_2;
  v9[3] = &unk_27860B1C8;
  v10 = v13;
  bucketCopy2 = bucket;
  v9[4] = self;
  v8 = v13;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v12 errorHandler:v9];
}

void __97__HKHRAFibBurdenControl_queryEligibleTachogramsForPreviousSixWeeksForTimeOfDayBucket_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKHRAFibBurdenLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __97__HKHRAFibBurdenControl_queryEligibleTachogramsForPreviousSixWeeksForTimeOfDayBucket_completion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)addTachogramsForStartDayIndex:(int64_t)index endDayIndex:(int64_t)dayIndex chanceOfAFib:(id)fib chanceOfWrite:(id)write minutesBetweenSamples:(id)samples startingHour:(id)hour endingHour:(id)endingHour completion:(id)self0
{
  fibCopy = fib;
  writeCopy = write;
  samplesCopy = samples;
  hourCopy = hour;
  endingHourCopy = endingHour;
  completionCopy = completion;
  proxyProvider = self->_proxyProvider;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __151__HKHRAFibBurdenControl_addTachogramsForStartDayIndex_endDayIndex_chanceOfAFib_chanceOfWrite_minutesBetweenSamples_startingHour_endingHour_completion___block_invoke;
  v31[3] = &unk_27860B1F0;
  indexCopy = index;
  dayIndexCopy = dayIndex;
  v32 = fibCopy;
  v33 = writeCopy;
  v34 = samplesCopy;
  v35 = hourCopy;
  v36 = endingHourCopy;
  v37 = completionCopy;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __151__HKHRAFibBurdenControl_addTachogramsForStartDayIndex_endDayIndex_chanceOfAFib_chanceOfWrite_minutesBetweenSamples_startingHour_endingHour_completion___block_invoke_2;
  v29[3] = &unk_27860B100;
  v29[4] = self;
  v30 = v37;
  v23 = v37;
  v24 = endingHourCopy;
  v25 = hourCopy;
  v26 = samplesCopy;
  v27 = writeCopy;
  v28 = fibCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v31 errorHandler:v29];
}

void __151__HKHRAFibBurdenControl_addTachogramsForStartDayIndex_endDayIndex_chanceOfAFib_chanceOfWrite_minutesBetweenSamples_startingHour_endingHour_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKHRAFibBurdenLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __151__HKHRAFibBurdenControl_addTachogramsForStartDayIndex_endDayIndex_chanceOfAFib_chanceOfWrite_minutesBetweenSamples_startingHour_endingHour_completion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)performAnalysisForWeekContainingDayIndex:(int64_t)index error:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  proxyProvider = self->_proxyProvider;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__HKHRAFibBurdenControl_performAnalysisForWeekContainingDayIndex_error___block_invoke;
  v12[3] = &unk_27860B240;
  v12[5] = &v13;
  v12[6] = index;
  v12[4] = &v19;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__HKHRAFibBurdenControl_performAnalysisForWeekContainingDayIndex_error___block_invoke_3;
  v11[3] = &unk_27860AD48;
  v11[4] = &v13;
  [(HKTaskServerProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v12 errorHandler:v11];
  v6 = v14[5];
  v7 = v6;
  if (v6)
  {
    if (error)
    {
      v8 = v6;
      *error = v7;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v9 = v20[5];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

uint64_t __72__HKHRAFibBurdenControl_performAnalysisForWeekContainingDayIndex_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__HKHRAFibBurdenControl_performAnalysisForWeekContainingDayIndex_error___block_invoke_2;
  v4[3] = &unk_27860B218;
  v5 = *(a1 + 32);
  return [a2 remote_performAnalysisForWeekContainingDayIndex:v2 completion:v4];
}

void __72__HKHRAFibBurdenControl_performAnalysisForWeekContainingDayIndex_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)sendNotificationWithMode:(id)mode completion:(id)completion
{
  modeCopy = mode;
  completionCopy = completion;
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__HKHRAFibBurdenControl_sendNotificationWithMode_completion___block_invoke;
  v13[3] = &unk_27860B268;
  v14 = modeCopy;
  v15 = completionCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__HKHRAFibBurdenControl_sendNotificationWithMode_completion___block_invoke_2;
  v11[3] = &unk_27860B100;
  v11[4] = self;
  v12 = v15;
  v9 = v15;
  v10 = modeCopy;
  [(HKTaskServerProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v13 errorHandler:v11];
}

void __61__HKHRAFibBurdenControl_sendNotificationWithMode_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKHRAFibBurdenLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__HKHRAFibBurdenControl_sendNotificationWithMode_completion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)sendNotificationForCurrentValue:(id)value previousValue:(id)previousValue shouldForwardToWatch:(BOOL)watch completion:(id)completion
{
  watchCopy = watch;
  valueCopy = value;
  previousValueCopy = previousValue;
  v9 = MEMORY[0x277CBEA80];
  completionCopy = completion;
  v10 = [v9 alloc];
  v11 = [v10 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v12 = [MEMORY[0x277CBEAA8] now];
  v13 = HKHRAFibBurdenPreviousWeekDayIndexRange(v12, v11);
  v15 = v14;

  v30 = [MEMORY[0x277CBEAA8] hk_dateOnDayIndex:v13 atHour:0 calendar:v11];
  v28 = v11;
  v29 = [MEMORY[0x277CBEAA8] hk_dateOnDayIndex:v13 + v15 atHour:0 calendar:v11];
  v34 = previousValueCopy;
  if (valueCopy)
  {
    [valueCopy doubleValue];
    if (v16 <= 2.0)
    {
      v17 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:2.0];
      v18 = MEMORY[0x277CBEC38];
    }

    else
    {
      v17 = valueCopy;
      v18 = MEMORY[0x277CBEC28];
    }

    uUID = [MEMORY[0x277CCAD78] UUID];
    if (previousValueCopy)
    {
      [previousValueCopy doubleValue];
      if (v23 <= 2.0)
      {
        v20 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:2.0];
        v21 = MEMORY[0x277CBEC28];
        v27 = MEMORY[0x277CBEC38];
        v22 = 2;
      }

      else
      {
        v20 = previousValueCopy;
        v21 = MEMORY[0x277CBEC28];
        v22 = 2;
        v27 = MEMORY[0x277CBEC28];
      }
    }

    else
    {
      v27 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 1;
    }
  }

  else
  {
    v18 = 0;
    v27 = 0;
    v17 = 0;
    uUID = 0;
    v20 = 0;
    v21 = 0;
    v22 = 3;
  }

  v24 = [HKHRAFibBurdenNotificationMode alloc];
  v25 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v30 endDate:v29];
  v26 = [(HKHRAFibBurdenNotificationMode *)v24 initWithType:v22 shouldForwardToWatch:watchCopy currentPercentage:v17 currentValueClamped:v18 currentValueDateInterval:v25 currentValueUUID:uUID previousPercentage:v20 previousValueClamped:v27 previousTimeZoneDiffersFromCurrent:v21];

  [(HKHRAFibBurdenControl *)self sendNotificationWithMode:v26 completion:completionCopy];
}

- (void)fetchLastAnalysisDateWithCompletion:(id)completion
{
  v3 = MEMORY[0x277CCD570];
  healthStore = self->_healthStore;
  completionCopy = completion;
  v6 = [v3 hkhr_aFibBurdenSyncedDefaultsDomainWithHealthStore:healthStore];
  [v6 dateForKey:@"LastAnalysisCompletedDate" completion:completionCopy];
}

- (void)setLastAnalysisDate:(id)date completion:(id)completion
{
  completionCopy = completion;
  v7 = MEMORY[0x277CCD570];
  healthStore = self->_healthStore;
  dateCopy = date;
  v10 = [v7 hkhr_aFibBurdenSyncedDefaultsDomainWithHealthStore:healthStore];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__HKHRAFibBurdenControl_setLastAnalysisDate_completion___block_invoke;
  v12[3] = &unk_27860B290;
  v13 = completionCopy;
  v11 = completionCopy;
  [v10 setDate:dateCopy forKey:@"LastAnalysisCompletedDate" completion:v12];
}

void __56__HKHRAFibBurdenControl_setLastAnalysisDate_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    notify_post("com.apple.private.health.afib-burden.analysis-date.did-change");
  }

  (*(*(a1 + 32) + 16))();
}

- (void)injectBurdenValues:(id)values completion:(id)completion
{
  valuesCopy = values;
  completionCopy = completion;
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__HKHRAFibBurdenControl_injectBurdenValues_completion___block_invoke;
  v13[3] = &unk_27860B268;
  v14 = valuesCopy;
  v15 = completionCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__HKHRAFibBurdenControl_injectBurdenValues_completion___block_invoke_2;
  v11[3] = &unk_27860B100;
  v11[4] = self;
  v12 = v15;
  v9 = v15;
  v10 = valuesCopy;
  [(HKTaskServerProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v13 errorHandler:v11];
}

void __55__HKHRAFibBurdenControl_injectBurdenValues_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKHRAFibBurdenLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__HKHRAFibBurdenControl_injectBurdenValues_completion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)fetchSevenDayAnalysisBreadcrumbsWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__HKHRAFibBurdenControl_fetchSevenDayAnalysisBreadcrumbsWithError___block_invoke;
  v11[3] = &unk_27860B2E0;
  v11[4] = &v18;
  v11[5] = &v12;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__HKHRAFibBurdenControl_fetchSevenDayAnalysisBreadcrumbsWithError___block_invoke_3;
  v10[3] = &unk_27860AD48;
  v10[4] = &v12;
  [(HKTaskServerProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v11 errorHandler:v10];
  v5 = v13[5];
  v6 = v5;
  if (v5)
  {
    if (error)
    {
      v7 = v5;
      *error = v6;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v8 = v19[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

uint64_t __67__HKHRAFibBurdenControl_fetchSevenDayAnalysisBreadcrumbsWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__HKHRAFibBurdenControl_fetchSevenDayAnalysisBreadcrumbsWithError___block_invoke_2;
  v3[3] = &unk_27860B2B8;
  v4 = *(a1 + 32);
  return [a2 remote_fetchSevenDayAnalysisBreadcrumbsWithCompletion:v3];
}

void __67__HKHRAFibBurdenControl_fetchSevenDayAnalysisBreadcrumbsWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)fetchSevenDayAnalysisBreadcrumbsWithCompletion:(id)completion
{
  completionCopy = completion;
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__HKHRAFibBurdenControl_fetchSevenDayAnalysisBreadcrumbsWithCompletion___block_invoke;
  v9[3] = &unk_27860B308;
  v10 = completionCopy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__HKHRAFibBurdenControl_fetchSevenDayAnalysisBreadcrumbsWithCompletion___block_invoke_2;
  v7[3] = &unk_27860B100;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v9 errorHandler:v7];
}

void __72__HKHRAFibBurdenControl_fetchSevenDayAnalysisBreadcrumbsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKHRAFibBurdenLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __72__HKHRAFibBurdenControl_fetchSevenDayAnalysisBreadcrumbsWithCompletion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

void __40__HKHRAFibBurdenControl_triggerAnalysis__block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __84__HKHRAFibBurdenControl_addTachogramClassificationForSampleUUID_hasAFib_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

void __72__HKHRAFibBurdenControl_queryAllTachogramClassificationsWithCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __78__HKHRAFibBurdenControl_queryTachogramClassificationForSampleUUID_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

void __73__HKHRAFibBurdenControl_deleteAllTachogramClassificationsWithCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __79__HKHRAFibBurdenControl_deleteTachogramClassificationForSampleUUID_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

void __90__HKHRAFibBurdenControl_determineMajorityTimeZoneForStartDayIndex_endDayIndex_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
  v9 = *MEMORY[0x277D85DE8];
}

void __88__HKHRAFibBurdenControl_queryEligibleTachogramsForStartDayIndex_endDayIndex_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
  v9 = *MEMORY[0x277D85DE8];
}

void __89__HKHRAFibBurdenControl_queryEligibleTachogramsForPreviousSixWeeksForWeekday_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = *(OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]) + 48);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

void __97__HKHRAFibBurdenControl_queryEligibleTachogramsForPreviousSixWeeksForTimeOfDayBucket_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = *(OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]) + 48);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

void __151__HKHRAFibBurdenControl_addTachogramsForStartDayIndex_endDayIndex_chanceOfAFib_chanceOfWrite_minutesBetweenSamples_startingHour_endingHour_completion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __61__HKHRAFibBurdenControl_sendNotificationWithMode_completion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __55__HKHRAFibBurdenControl_injectBurdenValues_completion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __72__HKHRAFibBurdenControl_fetchSevenDayAnalysisBreadcrumbsWithCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

@end