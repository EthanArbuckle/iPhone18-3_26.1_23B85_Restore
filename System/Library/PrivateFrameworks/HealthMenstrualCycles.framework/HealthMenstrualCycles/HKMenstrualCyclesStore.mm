@interface HKMenstrualCyclesStore
- (BOOL)setDeviationDetectedIfNeededForDeviations:(id)a3;
- (HKCloudSyncControl)cloudSyncControl;
- (HKMenstrualCyclesStore)initWithHealthStore:(id)a3;
- (NSDate)cycleFactorsLastReviewedDate;
- (NSNumber)lastMenstrualPeriodDismissalDay;
- (NSNumber)unconfirmedDeviationDismissalDay;
- (NSNumber)unconfirmedDeviationSubmissionDay;
- (id)_appProtectedSyncedKeyValueDomain;
- (id)_deviationDetectionAnalyticsDomain;
- (id)_syncedProtectedKeyValueDomain;
- (id)deviationDetectedIndicesForDeviationType:(int64_t)a3 error:(id *)a4;
- (void)_triggerImmediateSyncWithReason:(id)a3;
- (void)confirmAndSaveDeviationWithMenstrualFlowByDayIndex:(id)a3 intermenstrualBleedingByDayIndex:(id)a4 addedCycleFactors:(id)a5 initialAnalysisWindow:(id)a6 completion:(id)a7;
- (void)fetchCurrentAnalysisWithCompletion:(id)a3;
- (void)fetchCurrentPregnancyModelWithCompletion:(id)a3;
- (void)fetchScheduledNotificationsWithCompletion:(id)a3;
- (void)saveBleedingFlow:(int64_t)a3 forBleedingType:(int64_t)a4 dayIndex:(int64_t)a5 completion:(id)a6;
- (void)saveBleedingFlowByDayIndex:(id)a3 forBleedingType:(int64_t)a4 completion:(id)a5;
- (void)saveDaySummaries:(id)a3 canOverrideCreationDate:(BOOL)a4 completion:(id)a5;
- (void)saveDaySummary:(id)a3 completion:(id)a4;
- (void)saveLastMenstrualPeriodWithDayIndexRange:(id)a3 completion:(id)a4;
- (void)saveMenstrualFlow:(int64_t)a3 dayIndex:(int64_t)a4 updateAdjacentDays:(BOOL)a5 completion:(id)a6;
- (void)saveMenstrualFlowByDayIndex:(id)a3 completion:(id)a4;
- (void)savePeriodEndedOnDayIndex:(int64_t)a3 completion:(id)a4;
- (void)savePeriodNotYetEndedWithCompletion:(id)a3;
- (void)savePeriodNotYetStartedWithCompletion:(id)a3;
- (void)savePeriodStartedOnDayIndex:(int64_t)a3 completion:(id)a4;
- (void)savePeriodStartedOnDayIndex:(int64_t)a3 endedOnDayIndex:(int64_t)a4 completion:(id)a5;
- (void)setCycleFactorsLastReviewedDate:(id)a3;
- (void)setLastMenstrualPeriodDismissalDay:(id)a3;
- (void)setUnconfirmedDeviationDismissalDay:(id)a3;
- (void)setUnconfirmedDeviationSubmissionDay:(id)a3;
- (void)triggerAnalysisForDebugReason:(id)a3 completion:(id)a4;
@end

@implementation HKMenstrualCyclesStore

- (HKMenstrualCyclesStore)initWithHealthStore:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = HKMenstrualCyclesStore;
  v6 = [(HKMenstrualCyclesStore *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, a3);
    v8 = objc_alloc(MEMORY[0x277CCDAA0]);
    v9 = [MEMORY[0x277CCAD78] UUID];
    v10 = [v8 initWithHealthStore:v5 taskIdentifier:@"HKMCPluginServer" exportedObject:v7 taskUUID:v9];
    proxyProvider = v7->_proxyProvider;
    v7->_proxyProvider = v10;

    [(HKTaskServerProxyProvider *)v7->_proxyProvider setShouldRetryOnInterruption:0];
  }

  return v7;
}

- (HKCloudSyncControl)cloudSyncControl
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_cloudSyncControl)
  {
    v3 = [objc_alloc(MEMORY[0x277CCD128]) initWithHealthStore:v2->_healthStore];
    cloudSyncControl = v2->_cloudSyncControl;
    v2->_cloudSyncControl = v3;
  }

  objc_sync_exit(v2);

  v5 = v2->_cloudSyncControl;

  return v5;
}

- (void)fetchScheduledNotificationsWithCompletion:(id)a3
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a3];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__HKMenstrualCyclesStore_fetchScheduledNotificationsWithCompletion___block_invoke;
  v9[3] = &unk_2796D49F8;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HKMenstrualCyclesStore_fetchScheduledNotificationsWithCompletion___block_invoke_2;
  v7[3] = &unk_2796D4960;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)saveDaySummary:(id)a3 completion:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v6 = MEMORY[0x277CBEA60];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v11 count:1];

  [(HKMenstrualCyclesStore *)self saveDaySummaries:v9 completion:v7, v11, v12];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)saveDaySummaries:(id)a3 canOverrideCreationDate:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a5];
  proxyProvider = self->_proxyProvider;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__HKMenstrualCyclesStore_saveDaySummaries_canOverrideCreationDate_completion___block_invoke;
  v15[3] = &unk_2796D4A20;
  v16 = v8;
  v18 = a4;
  v17 = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__HKMenstrualCyclesStore_saveDaySummaries_canOverrideCreationDate_completion___block_invoke_2;
  v13[3] = &unk_2796D4960;
  v14 = v17;
  v11 = v17;
  v12 = v8;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v15 errorHandler:v13];
}

- (void)saveMenstrualFlow:(int64_t)a3 dayIndex:(int64_t)a4 updateAdjacentDays:(BOOL)a5 completion:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a6;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = objc_opt_class();
    v14 = v13;
    v15 = HKSensitiveLogItem();
    *buf = 138543874;
    v28 = v13;
    v29 = 2112;
    v30 = v15;
    v31 = 2048;
    v32 = a3;
    _os_log_impl(&dword_2518FC000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Saving a %@ value of %ld", buf, 0x20u);
  }

  v16 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v10];

  proxyProvider = self->_proxyProvider;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __83__HKMenstrualCyclesStore_saveMenstrualFlow_dayIndex_updateAdjacentDays_completion___block_invoke;
  v22[3] = &unk_2796D4A48;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v23 = v16;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __83__HKMenstrualCyclesStore_saveMenstrualFlow_dayIndex_updateAdjacentDays_completion___block_invoke_2;
  v20[3] = &unk_2796D4960;
  v21 = v23;
  v18 = v23;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v22 errorHandler:v20];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)saveBleedingFlow:(int64_t)a3 forBleedingType:(int64_t)a4 dayIndex:(int64_t)a5 completion:(id)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v10 = a6;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    log = v11;
    v12 = objc_opt_class();
    v23 = v12;
    v13 = HKSensitiveLogItem();
    v14 = HKSensitiveLogItem();
    [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v16 = v15 = a5;
    v17 = HKSensitiveLogItem();
    *buf = 138544386;
    v32 = v12;
    v33 = 2112;
    v34 = v13;
    v35 = 2048;
    v36 = a3;
    v37 = 2112;
    v38 = v14;
    v39 = 2112;
    v40 = v17;
    _os_log_impl(&dword_2518FC000, log, OS_LOG_TYPE_DEFAULT, "[%{public}@] Saving a %@ value of %ld for %@ %@", buf, 0x34u);

    a5 = v15;
  }

  v18 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v10];

  proxyProvider = self->_proxyProvider;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __79__HKMenstrualCyclesStore_saveBleedingFlow_forBleedingType_dayIndex_completion___block_invoke;
  v26[3] = &unk_2796D4A70;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v27 = v18;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __79__HKMenstrualCyclesStore_saveBleedingFlow_forBleedingType_dayIndex_completion___block_invoke_2;
  v24[3] = &unk_2796D4960;
  v25 = v27;
  v20 = v27;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v26 errorHandler:v24];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)saveBleedingFlowByDayIndex:(id)a3 forBleedingType:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a5];
  proxyProvider = self->_proxyProvider;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__HKMenstrualCyclesStore_saveBleedingFlowByDayIndex_forBleedingType_completion___block_invoke;
  v15[3] = &unk_2796D4A98;
  v16 = v8;
  v18 = a4;
  v17 = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__HKMenstrualCyclesStore_saveBleedingFlowByDayIndex_forBleedingType_completion___block_invoke_2;
  v13[3] = &unk_2796D4960;
  v14 = v17;
  v11 = v17;
  v12 = v8;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v15 errorHandler:v13];
}

- (void)saveMenstrualFlowByDayIndex:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__HKMenstrualCyclesStore_saveMenstrualFlowByDayIndex_completion___block_invoke;
  v13[3] = &unk_2796D4AC0;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__HKMenstrualCyclesStore_saveMenstrualFlowByDayIndex_completion___block_invoke_2;
  v11[3] = &unk_2796D4960;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)fetchCurrentAnalysisWithCompletion:(id)a3
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a3];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__HKMenstrualCyclesStore_fetchCurrentAnalysisWithCompletion___block_invoke;
  v9[3] = &unk_2796D49F8;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HKMenstrualCyclesStore_fetchCurrentAnalysisWithCompletion___block_invoke_2;
  v7[3] = &unk_2796D4960;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)fetchCurrentPregnancyModelWithCompletion:(id)a3
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a3];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__HKMenstrualCyclesStore_fetchCurrentPregnancyModelWithCompletion___block_invoke;
  v9[3] = &unk_2796D49F8;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HKMenstrualCyclesStore_fetchCurrentPregnancyModelWithCompletion___block_invoke_2;
  v7[3] = &unk_2796D4960;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)confirmAndSaveDeviationWithMenstrualFlowByDayIndex:(id)a3 intermenstrualBleedingByDayIndex:(id)a4 addedCycleFactors:(id)a5 initialAnalysisWindow:(id)a6 completion:(id)a7
{
  var1 = a6.var1;
  var0 = a6.var0;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a7];
  proxyProvider = self->_proxyProvider;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __161__HKMenstrualCyclesStore_confirmAndSaveDeviationWithMenstrualFlowByDayIndex_intermenstrualBleedingByDayIndex_addedCycleFactors_initialAnalysisWindow_completion___block_invoke;
  v24[3] = &unk_2796D4AE8;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v29 = var0;
  v30 = var1;
  v28 = v16;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __161__HKMenstrualCyclesStore_confirmAndSaveDeviationWithMenstrualFlowByDayIndex_intermenstrualBleedingByDayIndex_addedCycleFactors_initialAnalysisWindow_completion___block_invoke_2;
  v22[3] = &unk_2796D4960;
  v23 = v28;
  v18 = v28;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v24 errorHandler:v22];
}

- (void)saveLastMenstrualPeriodWithDayIndexRange:(id)a3 completion:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__HKMenstrualCyclesStore_saveLastMenstrualPeriodWithDayIndexRange_completion___block_invoke;
  v12[3] = &unk_2796D4B10;
  v14 = var0;
  v15 = var1;
  v13 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__HKMenstrualCyclesStore_saveLastMenstrualPeriodWithDayIndexRange_completion___block_invoke_2;
  v10[3] = &unk_2796D4960;
  v11 = v13;
  v9 = v13;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v12 errorHandler:v10];
}

- (void)savePeriodNotYetStartedWithCompletion:(id)a3
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a3];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__HKMenstrualCyclesStore_savePeriodNotYetStartedWithCompletion___block_invoke;
  v9[3] = &unk_2796D49F8;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HKMenstrualCyclesStore_savePeriodNotYetStartedWithCompletion___block_invoke_2;
  v7[3] = &unk_2796D4960;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)savePeriodNotYetEndedWithCompletion:(id)a3
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a3];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__HKMenstrualCyclesStore_savePeriodNotYetEndedWithCompletion___block_invoke;
  v9[3] = &unk_2796D49F8;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HKMenstrualCyclesStore_savePeriodNotYetEndedWithCompletion___block_invoke_2;
  v7[3] = &unk_2796D4960;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)savePeriodStartedOnDayIndex:(int64_t)a3 completion:(id)a4
{
  v6 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__HKMenstrualCyclesStore_savePeriodStartedOnDayIndex_completion___block_invoke;
  v11[3] = &unk_2796D4B38;
  v13 = a3;
  v12 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__HKMenstrualCyclesStore_savePeriodStartedOnDayIndex_completion___block_invoke_2;
  v9[3] = &unk_2796D4960;
  v10 = v12;
  v8 = v12;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

- (void)savePeriodStartedOnDayIndex:(int64_t)a3 endedOnDayIndex:(int64_t)a4 completion:(id)a5
{
  v8 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a5];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__HKMenstrualCyclesStore_savePeriodStartedOnDayIndex_endedOnDayIndex_completion___block_invoke;
  v13[3] = &unk_2796D4B10;
  v15 = a3;
  v16 = a4;
  v14 = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__HKMenstrualCyclesStore_savePeriodStartedOnDayIndex_endedOnDayIndex_completion___block_invoke_2;
  v11[3] = &unk_2796D4960;
  v12 = v14;
  v10 = v14;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)savePeriodEndedOnDayIndex:(int64_t)a3 completion:(id)a4
{
  v6 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__HKMenstrualCyclesStore_savePeriodEndedOnDayIndex_completion___block_invoke;
  v11[3] = &unk_2796D4B38;
  v13 = a3;
  v12 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__HKMenstrualCyclesStore_savePeriodEndedOnDayIndex_completion___block_invoke_2;
  v9[3] = &unk_2796D4960;
  v10 = v12;
  v8 = v12;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

- (void)triggerAnalysisForDebugReason:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__HKMenstrualCyclesStore_triggerAnalysisForDebugReason_completion___block_invoke;
  v13[3] = &unk_2796D4AC0;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__HKMenstrualCyclesStore_triggerAnalysisForDebugReason_completion___block_invoke_2;
  v11[3] = &unk_2796D4960;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (NSDate)cycleFactorsLastReviewedDate
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(HKMenstrualCyclesStore *)self _appProtectedSyncedKeyValueDomain];
  v12 = 0;
  v3 = [v2 dateForKey:@"CycleFactorsLastReviewedDate" error:&v12];
  v4 = v12;

  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      v9 = v6;
      v10 = objc_opt_class();
      *buf = 138543874;
      v14 = v10;
      v15 = 2114;
      v16 = @"CycleFactorsLastReviewedDate";
      v17 = 2114;
      v18 = v4;
      v11 = v10;
      _os_log_error_impl(&dword_2518FC000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving %{public}@: %{public}@", buf, 0x20u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)setCycleFactorsLastReviewedDate:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HKMenstrualCyclesStore *)self _appProtectedSyncedKeyValueDomain];
  v16 = 0;
  [v5 setDate:v4 forKey:@"CycleFactorsLastReviewedDate" error:&v16];
  v6 = v16;

  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2E8];
  v8 = *MEMORY[0x277CCC2E8];
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v7;
      v10 = objc_opt_class();
      *buf = 138543874;
      v18 = v10;
      v19 = 2114;
      v20 = @"CycleFactorsLastReviewedDate";
      v21 = 2114;
      v22 = v6;
      v11 = v10;
      _os_log_error_impl(&dword_2518FC000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Error setting %{public}@: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v7;
      v13 = objc_opt_class();
      *buf = 138543874;
      v18 = v13;
      v19 = 2114;
      v20 = @"CycleFactorsLastReviewedDate";
      v21 = 2112;
      v22 = v4;
      v14 = v13;
      _os_log_impl(&dword_2518FC000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set %{public}@: %@", buf, 0x20u);
    }

    [(HKMenstrualCyclesStore *)self _triggerImmediateSyncWithReason:@"setCycleFactorsLastReviewedDate"];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (NSNumber)lastMenstrualPeriodDismissalDay
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(HKMenstrualCyclesStore *)self _syncedProtectedKeyValueDomain];
  v12 = 0;
  v3 = [v2 numberForKey:@"LastMenstrualPeriodDismissalDefaultsKey" error:&v12];
  v4 = v12;

  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      v9 = v6;
      v10 = objc_opt_class();
      *buf = 138543874;
      v14 = v10;
      v15 = 2114;
      v16 = @"LastMenstrualPeriodDismissalDefaultsKey";
      v17 = 2114;
      v18 = v4;
      v11 = v10;
      _os_log_error_impl(&dword_2518FC000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving %{public}@: %{public}@", buf, 0x20u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)setLastMenstrualPeriodDismissalDay:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HKMenstrualCyclesStore *)self _syncedProtectedKeyValueDomain];
  v16 = 0;
  [v5 setNumber:v4 forKey:@"LastMenstrualPeriodDismissalDefaultsKey" error:&v16];
  v6 = v16;

  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2E8];
  v8 = *MEMORY[0x277CCC2E8];
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v7;
      v10 = objc_opt_class();
      *buf = 138543874;
      v18 = v10;
      v19 = 2114;
      v20 = @"LastMenstrualPeriodDismissalDefaultsKey";
      v21 = 2114;
      v22 = v6;
      v11 = v10;
      _os_log_error_impl(&dword_2518FC000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Error setting %{public}@: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v7;
      v13 = objc_opt_class();
      *buf = 138543874;
      v18 = v13;
      v19 = 2114;
      v20 = @"LastMenstrualPeriodDismissalDefaultsKey";
      v21 = 2112;
      v22 = v4;
      v14 = v13;
      _os_log_impl(&dword_2518FC000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set %{public}@: %@", buf, 0x20u);
    }

    [(HKMenstrualCyclesStore *)self _triggerImmediateSyncWithReason:@"setLastMenstrualPeriodDismissalDay"];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)deviationDetectedIndicesForDeviationType:(int64_t)a3 error:(id *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = HKMCDeviationDetectionAnalyticsKeyFromDeviationType(a3);
  v7 = [(HKMenstrualCyclesStore *)self _deviationDetectionAnalyticsDomain];
  v8 = [v7 propertyListValueForKey:v6 error:a4];

  if (!a4 || v8)
  {
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEA60]);

      v8 = v10;
    }
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      v13 = v9;
      v14 = objc_opt_class();
      v15 = *a4;
      v17 = 138543874;
      v18 = v14;
      v19 = 2114;
      v20 = v6;
      v21 = 2114;
      v22 = v15;
      v16 = v14;
      _os_log_error_impl(&dword_2518FC000, v13, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving %{public}@: %{public}@", &v17, 0x20u);
    }

    v8 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)setDeviationDetectedIfNeededForDeviations:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (!v4)
  {
    v7 = 0;
    goto LABEL_28;
  }

  v6 = v4;
  v7 = 0;
  v8 = 0;
  v9 = *v46;
  *&v5 = 138543874;
  v39 = v5;
  while (2)
  {
    v10 = 0;
    v41 = v6;
    do
    {
      if (*v46 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v45 + 1) + 8 * v10);
      v12 = MEMORY[0x277CCABB0];
      v13 = [v11 days];
      if (v14 <= 0)
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v14 + v13 - 1;
      }

      v16 = [v12 numberWithInteger:v15];
      v17 = HKMCDeviationDetectionAnalyticsKeyFromDeviationType([v11 type]);
      v18 = [v11 type];
      v44 = v8;
      v19 = [(HKMenstrualCyclesStore *)self deviationDetectedIndicesForDeviationType:v18 error:&v44];
      v20 = v44;

      if (v20)
      {
        _HKInitializeLogging();
        v30 = *MEMORY[0x277CCC2E8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
        {
          v33 = v30;
          v34 = objc_opt_class();
          *buf = v39;
          v50 = v34;
          v51 = 2114;
          v52 = v17;
          v53 = 2114;
          v54 = v20;
          v35 = v34;
          _os_log_error_impl(&dword_2518FC000, v33, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving %{public}@: %{public}@", buf, 0x20u);
        }

        v8 = v20;
        goto LABEL_26;
      }

      if ([v19 containsObject:v16])
      {
        v8 = 0;
        goto LABEL_16;
      }

      v40 = v7;
      v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v19];
      [v21 addObject:v16];
      v22 = self;
      v23 = [(HKMenstrualCyclesStore *)self _deviationDetectionAnalyticsDomain];
      v43 = 0;
      v24 = [v23 setPropertyListValue:v21 forKey:v17 error:&v43];
      v8 = v43;

      _HKInitializeLogging();
      v25 = *MEMORY[0x277CCC2E8];
      v26 = *MEMORY[0x277CCC2E8];
      if (!v24)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v36 = v25;
          v37 = objc_opt_class();
          *buf = v39;
          v50 = v37;
          v51 = 2114;
          v52 = v17;
          v53 = 2114;
          v54 = v8;
          v38 = v37;
          _os_log_error_impl(&dword_2518FC000, v36, OS_LOG_TYPE_ERROR, "[%{public}@] Error setting %{public}@: %{public}@", buf, 0x20u);
        }

        v7 = v40;
LABEL_26:

        goto LABEL_27;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v25;
        v28 = objc_opt_class();
        *buf = v39;
        v50 = v28;
        v51 = 2114;
        v52 = v17;
        v53 = 2112;
        v54 = v21;
        v29 = v28;
        _os_log_impl(&dword_2518FC000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set %{public}@: %@", buf, 0x20u);
      }

      v7 = 1;
      self = v22;
      v6 = v41;
LABEL_16:

      ++v10;
    }

    while (v6 != v10);
    v6 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_27:

LABEL_28:
  v31 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

- (NSNumber)unconfirmedDeviationDismissalDay
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(HKMenstrualCyclesStore *)self _syncedProtectedKeyValueDomain];
  v12 = 0;
  v3 = [v2 numberForKey:@"UnconfirmedDeviationDismissalDayIndex" error:&v12];
  v4 = v12;

  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      v9 = v6;
      v10 = objc_opt_class();
      *buf = 138543874;
      v14 = v10;
      v15 = 2114;
      v16 = @"UnconfirmedDeviationDismissalDayIndex";
      v17 = 2114;
      v18 = v4;
      v11 = v10;
      _os_log_error_impl(&dword_2518FC000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving %{public}@: %{public}@", buf, 0x20u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)setUnconfirmedDeviationDismissalDay:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HKMenstrualCyclesStore *)self _syncedProtectedKeyValueDomain];
  v16 = 0;
  [v5 setNumber:v4 forKey:@"UnconfirmedDeviationDismissalDayIndex" error:&v16];
  v6 = v16;

  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2E8];
  v8 = *MEMORY[0x277CCC2E8];
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v7;
      v10 = objc_opt_class();
      *buf = 138543874;
      v18 = v10;
      v19 = 2114;
      v20 = @"UnconfirmedDeviationDismissalDayIndex";
      v21 = 2114;
      v22 = v6;
      v11 = v10;
      _os_log_error_impl(&dword_2518FC000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Error setting %{public}@: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v7;
      v13 = objc_opt_class();
      *buf = 138543874;
      v18 = v13;
      v19 = 2114;
      v20 = @"UnconfirmedDeviationDismissalDayIndex";
      v21 = 2112;
      v22 = v4;
      v14 = v13;
      _os_log_impl(&dword_2518FC000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set %{public}@: %@", buf, 0x20u);
    }

    [(HKMenstrualCyclesStore *)self triggerAnalysisForDebugReason:@"deviation dismissal" completion:&__block_literal_global];
    [(HKMenstrualCyclesStore *)self _triggerImmediateSyncWithReason:@"setUnconfirmedDeviationDismissalDay"];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (NSNumber)unconfirmedDeviationSubmissionDay
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(HKMenstrualCyclesStore *)self _deviationDetectionAnalyticsDomain];
  v12 = 0;
  v3 = [v2 numberForKey:@"UnconfirmedDeviationSubmissionDayIndex" error:&v12];
  v4 = v12;

  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      v9 = v6;
      v10 = objc_opt_class();
      *buf = 138543874;
      v14 = v10;
      v15 = 2114;
      v16 = @"UnconfirmedDeviationSubmissionDayIndex";
      v17 = 2114;
      v18 = v4;
      v11 = v10;
      _os_log_error_impl(&dword_2518FC000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving %{public}@: %{public}@", buf, 0x20u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)setUnconfirmedDeviationSubmissionDay:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HKMenstrualCyclesStore *)self _deviationDetectionAnalyticsDomain];
  v14 = 0;
  [v5 setNumber:v4 forKey:@"UnconfirmedDeviationSubmissionDayIndex" error:&v14];
  v6 = v14;

  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2E8];
  v8 = *MEMORY[0x277CCC2E8];
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v7;
      v10 = objc_opt_class();
      *buf = 138543874;
      v16 = v10;
      v17 = 2114;
      v18 = @"UnconfirmedDeviationSubmissionDayIndex";
      v19 = 2114;
      v20 = v6;
      v11 = v10;
      _os_log_error_impl(&dword_2518FC000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Error setting %{public}@: %{public}@", buf, 0x20u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v7;
    v12 = objc_opt_class();
    *buf = 138543874;
    v16 = v12;
    v17 = 2114;
    v18 = @"UnconfirmedDeviationSubmissionDayIndex";
    v19 = 2112;
    v20 = v4;
    v11 = v12;
    _os_log_impl(&dword_2518FC000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set %{public}@: %@", buf, 0x20u);
    goto LABEL_6;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_triggerImmediateSyncWithReason:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:1 pull:0 lite:1];
  v6 = [(HKMenstrualCyclesStore *)self cloudSyncControl];
  v7 = [objc_alloc(MEMORY[0x277CCD140]) initWithChangesSyncRequest:v5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HKMenstrualCyclesStore__triggerImmediateSyncWithReason___block_invoke;
  v9[3] = &unk_2796D4B80;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v6 syncWithRequest:v7 reason:v8 completion:v9];
}

void __58__HKMenstrualCyclesStore__triggerImmediateSyncWithReason___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2E8];
  v7 = *MEMORY[0x277CCC2E8];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = v6;
      v10 = objc_opt_class();
      v11 = *(a1 + 40);
      v14 = 138543618;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      v12 = v10;
      _os_log_impl(&dword_2518FC000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully requested sync after %{public}@", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __58__HKMenstrualCyclesStore__triggerImmediateSyncWithReason___block_invoke_cold_1(a1, v6, v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_syncedProtectedKeyValueDomain
{
  v3 = objc_alloc(MEMORY[0x277CCD570]);
  v4 = [(HKMenstrualCyclesStore *)self healthStore];
  v5 = [v3 initWithCategory:0 domainName:@"com.apple.private.health.menstrual-cycles" healthStore:v4];

  return v5;
}

- (id)_appProtectedSyncedKeyValueDomain
{
  v3 = objc_alloc(MEMORY[0x277CCD570]);
  v4 = [(HKMenstrualCyclesStore *)self healthStore];
  v5 = [v3 initWithCategory:2 domainName:@"com.apple.private.health.menstrual-cycles" healthStore:v4];

  return v5;
}

- (id)_deviationDetectionAnalyticsDomain
{
  v3 = objc_alloc(MEMORY[0x277CCD570]);
  v4 = [(HKMenstrualCyclesStore *)self healthStore];
  v5 = [v3 initWithCategory:1 domainName:@"com.apple.private.health.menstrual-cycles.deviation-detection-analytics" healthStore:v4];

  return v5;
}

void __58__HKMenstrualCyclesStore__triggerImmediateSyncWithReason___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = objc_opt_class();
  v8 = *(a1 + 40);
  v11 = 138543874;
  v12 = v7;
  v13 = 2114;
  v14 = v8;
  v15 = 2114;
  v16 = a3;
  v9 = v7;
  _os_log_error_impl(&dword_2518FC000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] Unsuccessfully requested sync after %{public}@: %{public}@", &v11, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

@end