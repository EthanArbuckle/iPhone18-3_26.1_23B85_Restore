@interface HDMCPluginServer
+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7;
+ (id)requiredEntitlements;
- (BOOL)_queue_deleteSamplesOfType:(id)a3 onDayIndex:(int64_t)a4 calendarCache:(id)a5 error:(id *)a6;
- (BOOL)_queue_insertSamplesWithClientSource:(id)a3 creationDate:(id)a4 error:(id *)a5;
- (BOOL)_queue_reconcileSamplesToDeriveDaySummary:(id)a3 analysis:(id)a4 canOverrideCreationDate:(BOOL)a5 error:(id *)a6;
- (BOOL)_queue_saveBleedingFlowByDayIndex:(id)a3 forBleedingType:(int64_t)a4 calendarCache:(id)a5 error:(id *)a6;
- (BOOL)_queue_saveCategorySampleByDayIndex:(id)a3 calendarCache:(id)a4 readValueFromDaySummary:(id)a5 categoryTypeIdentifier:(id)a6 makeCategorySample:(id)a7 error:(id *)a8;
- (BOOL)_queue_saveIntermenstrualBleedingByDayIndex:(id)a3 calendarCache:(id)a4 error:(id *)a5;
- (BOOL)_queue_saveLastMenstrualPeriodWithDayIndexRange:(id)a3 calendarCache:(id)a4 error:(id *)a5;
- (BOOL)_queue_saveMenstrualFlow:(int64_t)a3 forEachDayInRange:(id)a4 calendarCache:(id)a5 error:(id *)a6;
- (BOOL)_queue_saveMenstrualFlowByDayIndex:(id)a3 calendarCache:(id)a4 error:(id *)a5;
- (BOOL)_queue_saveMenstrualFlowUpdatingAdjacentDays:(int64_t)a3 dayIndex:(int64_t)a4 calendarCache:(id)a5 error:(id *)a6;
- (BOOL)_queue_savePeriodStartedOnDayIndex:(int64_t)a3 endedOnDayIndex:(int64_t)a4 calendarCache:(id)a5 error:(id *)a6;
- (BOOL)_queue_updateStartOfCycleMetadataForModifiedDayIndex:(int64_t)a3 calendarCache:(id)a4 canOverrideCreationDate:(BOOL)a5 error:(id *)a6;
- (BOOL)_queue_updateUnderlyingSamplesToReplaceDaySummary:(id)a3 withDaySummary:(id)a4 calendarCache:(id)a5 canOverrideCreationDate:(BOOL)a6 error:(id *)a7;
- (HDMCPluginServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 profileExtension:(id)a7;
- (id)_queue_mostRecentMenstrualFlowSampleWithError:(id *)a3 requiringBeforeDay:(int64_t)a4 calendarCache:(id)a5;
- (id)_samplesToInsertForUpdateFromDaySummary:(id)a3 toDaySummary:(id)a4 typesToDelete:(id *)a5 calendarCache:(id)a6;
- (void)_queue_updateLastLoggedInExperienceDate;
- (void)_submitPredictionAccuracyAnalyticWithDayIndex:(int64_t)a3 oldMenstrualFlow:(int64_t)a4 newMenstrualFlow:(int64_t)a5 analysis:(id)a6 isLoggingMultipleDays:(BOOL)a7;
- (void)_triggerImmediateSync;
- (void)remote_confirmAndSaveDeviationWithMenstrualFlowByDayIndex:(id)a3 intermenstrualBleedingByDayIndex:(id)a4 addedCycleFactors:(id)a5 initialAnalysisWindow:(id)a6 completion:(id)a7;
- (void)remote_fetchCurrentAnalysisWithCompletion:(id)a3;
- (void)remote_fetchCurrentPregnancyModelWithCompletion:(id)a3;
- (void)remote_fetchScheduledNotificationsWithCompletion:(id)a3;
- (void)remote_saveBleedingFlow:(int64_t)a3 forBleedingType:(int64_t)a4 dayIndex:(int64_t)a5 completion:(id)a6;
- (void)remote_saveBleedingFlowByDayIndex:(id)a3 forBleedingType:(int64_t)a4 completion:(id)a5;
- (void)remote_saveDaySummaries:(id)a3 canOverrideCreationDate:(BOOL)a4 completion:(id)a5;
- (void)remote_saveLastMenstrualPeriodWithDayIndexRange:(id)a3 completion:(id)a4;
- (void)remote_saveMenstrualFlow:(int64_t)a3 dayIndex:(int64_t)a4 updateAdjacentDays:(BOOL)a5 completion:(id)a6;
- (void)remote_savePeriodEndedOnDayIndex:(int64_t)a3 completion:(id)a4;
- (void)remote_savePeriodNotYetEndedWithCompletion:(id)a3;
- (void)remote_savePeriodNotYetStartedWithCompletion:(id)a3;
- (void)remote_savePeriodStartedOnDayIndex:(int64_t)a3 completion:(id)a4;
- (void)remote_savePeriodStartedOnDayIndex:(int64_t)a3 endedOnDayIndex:(int64_t)a4 completion:(id)a5;
- (void)remote_triggerAnalysisForDebugReason:(id)a3 completion:(id)a4;
@end

@implementation HDMCPluginServer

+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v13 profile];
  v16 = [v15 profileExtensionWithIdentifier:*MEMORY[0x277D11920]];

  if (v16)
  {
    v17 = [[HDMCPluginServer alloc] initWithUUID:v11 configuration:v12 client:v13 delegate:v14 profileExtension:v16];
  }

  else
  {
    v18 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"No profile extension found for %@", objc_opt_class()}];
    if (v18)
    {
      if (a7)
      {
        v19 = v18;
        *a7 = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v17 = 0;
  }

  return v17;
}

- (HDMCPluginServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 profileExtension:(id)a7
{
  v13 = a5;
  v14 = a7;
  v21.receiver = self;
  v21.super_class = HDMCPluginServer;
  v15 = [(HDStandardTaskServer *)&v21 initWithUUID:a3 configuration:a4 client:v13 delegate:a6];
  if (v15)
  {
    v16 = [v13 profile];
    objc_storeWeak(&v15->_profile, v16);

    objc_storeStrong(&v15->_profileExtension, a7);
    objc_storeStrong(&v15->_client, a5);
    v17 = HKCreateSerialDispatchQueue();
    queue = v15->_queue;
    v15->_queue = v17;

    v19 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [v19 addObject:v15];
  }

  return v15;
}

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)remote_fetchScheduledNotificationsWithCompletion:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    *buf = 138543362;
    v14 = objc_opt_class();
    v7 = v14;
    _os_log_impl(&dword_2293D1000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Fetch scheduled notifications", buf, 0xCu);
  }

  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__HDMCPluginServer_remote_fetchScheduledNotificationsWithCompletion___block_invoke;
  v11[3] = &unk_27865AEF0;
  v11[4] = self;
  v12 = v4;
  v9 = v4;
  dispatch_async(queue, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __69__HDMCPluginServer_remote_fetchScheduledNotificationsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) notificationManager];
  v5 = 0;
  v3 = [v2 scheduledNotificationsWithError:&v5];
  v4 = v5;

  (*(*(a1 + 40) + 16))();
}

- (void)remote_saveDaySummaries:(id)a3 canOverrideCreationDate:(BOOL)a4 completion:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = objc_opt_class();
    v13 = MEMORY[0x277CCABB0];
    v14 = v12;
    v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
    *buf = 138543618;
    v25 = v12;
    v26 = 2112;
    v27 = v15;
    _os_log_impl(&dword_2293D1000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Save %@ day summaries", buf, 0x16u);
  }

  queue = self->_queue;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __79__HDMCPluginServer_remote_saveDaySummaries_canOverrideCreationDate_completion___block_invoke;
  v20[3] = &unk_27865B0C0;
  v20[4] = self;
  v21 = v8;
  v23 = a4;
  v22 = v9;
  v17 = v9;
  v18 = v8;
  dispatch_async(queue, v20);

  v19 = *MEMORY[0x277D85DE8];
}

void __79__HDMCPluginServer_remote_saveDaySummaries_canOverrideCreationDate_completion___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 48) analysisManager];
  v3 = [v2 currentAnalysis];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v18;
LABEL_3:
    v9 = 0;
    v10 = v7;
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v11 = *(*(&v17 + 1) + 8 * v9);
      v12 = *(a1 + 32);
      v13 = *(a1 + 56);
      v16 = v10;
      v14 = [v12 _queue_reconcileSamplesToDeriveDaySummary:v11 analysis:v3 canOverrideCreationDate:v13 error:&v16];
      v7 = v16;

      if (!v14)
      {
        break;
      }

      ++v9;
      v10 = v7;
      if (v6 == v9)
      {
        v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  [*(a1 + 32) _triggerImmediateSync];
  (*(*(a1 + 48) + 16))();

  v15 = *MEMORY[0x277D85DE8];
}

- (void)remote_saveBleedingFlow:(int64_t)a3 forBleedingType:(int64_t)a4 dayIndex:(int64_t)a5 completion:(id)a6
{
  v47 = *MEMORY[0x277D85DE8];
  v10 = a6;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    log = v11;
    v12 = objc_opt_class();
    v27 = v12;
    v13 = HKSensitiveLogItem();
    v26 = v10;
    v24 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v14 = HKSensitiveLogItem();
    v15 = HKSensitiveLogItem();
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    HKSensitiveLogItem();
    v17 = v28 = a3;
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
    HKSensitiveLogItem();
    v29 = a5;
    v20 = v19 = a4;
    *buf = 138544642;
    v36 = v12;
    v37 = 2112;
    v38 = v13;
    v39 = 2112;
    v40 = v14;
    v41 = 2112;
    v42 = v15;
    v43 = 2112;
    v44 = v17;
    v45 = 2112;
    v46 = v20;
    _os_log_impl(&dword_2293D1000, log, OS_LOG_TYPE_DEFAULT, "[%{public}@] Save %@: %@, %@: %@, day: %@", buf, 0x3Eu);

    v10 = v26;
    a4 = v19;
    a5 = v29;

    a3 = v28;
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__HDMCPluginServer_remote_saveBleedingFlow_forBleedingType_dayIndex_completion___block_invoke;
  block[3] = &unk_27865B0E8;
  v32 = a5;
  v33 = a3;
  v34 = a4;
  block[4] = self;
  v31 = v10;
  v22 = v10;
  dispatch_async(queue, block);

  v23 = *MEMORY[0x277D85DE8];
}

void __80__HDMCPluginServer_remote_saveBleedingFlow_forBleedingType_dayIndex_completion___block_invoke(void *a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CCD0A0]);
  v3 = a1[4];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a1[6]];
  v11 = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a1[7]];
  v12[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v7 = a1[8];
  v10 = 0;
  [v3 _queue_saveBleedingFlowByDayIndex:v6 forBleedingType:v7 calendarCache:v2 error:&v10];
  v8 = v10;

  (*(a1[5] + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

- (void)remote_saveBleedingFlowByDayIndex:(id)a3 forBleedingType:(int64_t)a4 completion:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    log = v10;
    v11 = objc_opt_class();
    v22 = v11;
    v12 = HKSensitiveLogItem();
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v14 = HKSensitiveLogItem();
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
    v16 = HKSensitiveLogItem();
    *buf = 138544130;
    v28 = v11;
    v29 = 2112;
    v30 = v12;
    v31 = 2112;
    v32 = v14;
    v33 = 2112;
    v34 = v16;
    _os_log_impl(&dword_2293D1000, log, OS_LOG_TYPE_DEFAULT, "[%{public}@] Save %@ %@ values: %@", buf, 0x2Au);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__HDMCPluginServer_remote_saveBleedingFlowByDayIndex_forBleedingType_completion___block_invoke;
  block[3] = &unk_27865B110;
  block[4] = self;
  v24 = v8;
  v25 = v9;
  v26 = a4;
  v18 = v9;
  v19 = v8;
  dispatch_async(queue, block);

  v20 = *MEMORY[0x277D85DE8];
}

void __81__HDMCPluginServer_remote_saveBleedingFlowByDayIndex_forBleedingType_completion___block_invoke(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCD0A0]);
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[7];
  v7 = 0;
  [v3 _queue_saveBleedingFlowByDayIndex:v4 forBleedingType:v5 calendarCache:v2 error:&v7];
  v6 = v7;
  (*(a1[6] + 16))();
}

- (void)remote_saveMenstrualFlow:(int64_t)a3 dayIndex:(int64_t)a4 updateAdjacentDays:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v36 = *MEMORY[0x277D85DE8];
  v10 = a6;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    log = v11;
    v12 = objc_opt_class();
    v13 = MEMORY[0x277CCABB0];
    v22 = v12;
    v14 = [v13 numberWithInteger:a3];
    v15 = HKSensitiveLogItem();
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v17 = HKSensitiveLogItem();
    *buf = 138544130;
    v29 = v12;
    v30 = 2112;
    v31 = v15;
    v32 = 2112;
    v33 = v17;
    v34 = 1024;
    v35 = v6;
    _os_log_impl(&dword_2293D1000, log, OS_LOG_TYPE_DEFAULT, "[%{public}@] Save menstrual flow: %@, day: %@, update adjacent days: %d", buf, 0x26u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__HDMCPluginServer_remote_saveMenstrualFlow_dayIndex_updateAdjacentDays_completion___block_invoke;
  block[3] = &unk_27865B138;
  v27 = v6;
  v25 = a3;
  v26 = a4;
  block[4] = self;
  v24 = v10;
  v19 = v10;
  dispatch_async(queue, block);

  v20 = *MEMORY[0x277D85DE8];
}

void __84__HDMCPluginServer_remote_saveMenstrualFlow_dayIndex_updateAdjacentDays_completion___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CCD0A0]);
  if (*(a1 + 64) == 1 && (v3 = *(a1 + 48), HKMCDaySummaryBleedingFlowHasFlow()))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v14 = 0;
    [v4 _queue_saveMenstrualFlowUpdatingAdjacentDays:v5 dayIndex:v6 calendarCache:v2 error:&v14];
    v7 = v14;
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
    v15 = v9;
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
    v16[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v13 = 0;
    [v8 _queue_saveMenstrualFlowByDayIndex:v11 calendarCache:v2 error:&v13];
    v7 = v13;
  }

  (*(*(a1 + 40) + 16))();

  v12 = *MEMORY[0x277D85DE8];
}

- (void)remote_confirmAndSaveDeviationWithMenstrualFlowByDayIndex:(id)a3 intermenstrualBleedingByDayIndex:(id)a4 addedCycleFactors:(id)a5 initialAnalysisWindow:(id)a6 completion:(id)a7
{
  var1 = a6.var1;
  var0 = a6.var0;
  v65 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v49 = a7;
  _HKInitializeLogging();
  v15 = MEMORY[0x277CCC2E8];
  v16 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = objc_opt_class();
    v19 = MEMORY[0x277CCABB0];
    v20 = v18;
    v21 = [v19 numberWithInteger:var0];
    *buf = 138543618;
    v60 = v18;
    v61 = 2112;
    v62 = v21;
    _os_log_impl(&dword_2293D1000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Confirm and save deviations with analysis window start: %@", buf, 0x16u);
  }

  v51 = var0;
  _HKInitializeLogging();
  v22 = *v15;
  if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v22;
    v24 = objc_opt_class();
    v25 = MEMORY[0x277CCABB0];
    v26 = v24;
    v27 = [v25 numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
    v28 = HKSensitiveLogItem();
    *buf = 138543874;
    v60 = v24;
    v61 = 2112;
    v62 = v27;
    v63 = 2112;
    v64 = v28;
    _os_log_impl(&dword_2293D1000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] Save %@ menstrual flow values: %@", buf, 0x20u);
  }

  _HKInitializeLogging();
  v29 = *v15;
  if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
  {
    v30 = v29;
    v31 = objc_opt_class();
    v32 = MEMORY[0x277CCABB0];
    v33 = v31;
    v34 = [v32 numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
    v35 = HKSensitiveLogItem();
    *buf = 138543874;
    v60 = v31;
    v61 = 2112;
    v62 = v34;
    v63 = 2112;
    v64 = v35;
    _os_log_impl(&dword_2293D1000, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] Save %@ intermenstrual bleeding values: %@", buf, 0x20u);
  }

  _HKInitializeLogging();
  v36 = *v15;
  if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
  {
    v37 = v36;
    v38 = objc_opt_class();
    v39 = MEMORY[0x277CCABB0];
    v40 = v38;
    v41 = [v39 numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
    v42 = HKSensitiveLogItem();
    *buf = 138543874;
    v60 = v38;
    v61 = 2112;
    v62 = v41;
    v63 = 2112;
    v64 = v42;
    _os_log_impl(&dword_2293D1000, v37, OS_LOG_TYPE_DEFAULT, "[%{public}@] Save %@ added cycle factors: %@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __162__HDMCPluginServer_remote_confirmAndSaveDeviationWithMenstrualFlowByDayIndex_intermenstrualBleedingByDayIndex_addedCycleFactors_initialAnalysisWindow_completion___block_invoke;
  block[3] = &unk_27865B1B0;
  block[4] = self;
  v53 = v12;
  v54 = v13;
  v55 = v14;
  v57 = v51;
  v58 = var1;
  v56 = v49;
  v44 = v49;
  v45 = v14;
  v46 = v13;
  v47 = v12;
  dispatch_async(queue, block);

  v48 = *MEMORY[0x277D85DE8];
}

void __162__HDMCPluginServer_remote_confirmAndSaveDeviationWithMenstrualFlowByDayIndex_intermenstrualBleedingByDayIndex_addedCycleFactors_initialAnalysisWindow_completion___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CCD0A0]);
  v3 = objc_alloc_init(MEMORY[0x277D10788]);
  [v3 setCacheScope:1];
  [v3 setRequiresProtectedData:1];
  [v3 setRequiresWrite:1];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v5 = [WeakRetained database];
  v44 = 0;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __162__HDMCPluginServer_remote_confirmAndSaveDeviationWithMenstrualFlowByDayIndex_intermenstrualBleedingByDayIndex_addedCycleFactors_initialAnalysisWindow_completion___block_invoke_2;
  v39[3] = &unk_27865ACF8;
  v6 = *(a1 + 40);
  v39[4] = *(a1 + 32);
  v40 = v6;
  v7 = v2;
  v41 = v7;
  v42 = *(a1 + 48);
  v43 = *(a1 + 56);
  v8 = [v5 performTransactionWithContext:v3 error:&v44 block:v39 inaccessibilityHandler:0];
  v9 = v44;

  if (v8)
  {
    v10 = [*(*(a1 + 32) + 48) analysisManager];
    v38 = v9;
    v11 = [v10 analyzeWithError:&v38];
    v12 = v38;

    v9 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = [v11 deviations];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __162__HDMCPluginServer_remote_confirmAndSaveDeviationWithMenstrualFlowByDayIndex_intermenstrualBleedingByDayIndex_addedCycleFactors_initialAnalysisWindow_completion___block_invoke_320;
  v36[3] = &unk_27865B160;
  v14 = v7;
  v37 = v14;
  v15 = [v13 hk_map:v36];

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __162__HDMCPluginServer_remote_confirmAndSaveDeviationWithMenstrualFlowByDayIndex_intermenstrualBleedingByDayIndex_addedCycleFactors_initialAnalysisWindow_completion___block_invoke_2_324;
  v33[3] = &unk_27865B188;
  v16 = v14;
  v34 = v16;
  v35 = *(a1 + 72);
  v17 = [v15 hk_filter:v33];
  _HKInitializeLogging();
  v18 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v31 = v11;
    v19 = *(a1 + 32);
    v20 = v18;
    v21 = objc_opt_class();
    v22 = MEMORY[0x277CCABB0];
    v30 = v21;
    v23 = [v22 numberWithUnsignedInteger:{objc_msgSend(v17, "count")}];
    v24 = HKSensitiveLogItem();
    *buf = 138543874;
    v46 = v21;
    v47 = 2112;
    v48 = v23;
    v49 = 2112;
    v50 = v24;
    _os_log_impl(&dword_2293D1000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Saving %@ deviations: %@", buf, 0x20u);

    v11 = v31;
  }

  v25 = *(a1 + 32);
  v32 = v9;
  v26 = [v25 _queue_insertSamplesWithClientSource:v17 error:&v32];
  v27 = v32;

  if (v26)
  {
    v28 = v17;
  }

  else
  {
    v28 = 0;
  }

  (*(*(a1 + 64) + 16))(*(a1 + 64), v28, v27);

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __162__HDMCPluginServer_remote_confirmAndSaveDeviationWithMenstrualFlowByDayIndex_intermenstrualBleedingByDayIndex_addedCycleFactors_initialAnalysisWindow_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _queue_saveMenstrualFlowByDayIndex:*(a1 + 40) calendarCache:*(a1 + 48) error:a3] && objc_msgSend(*(a1 + 32), "_queue_saveIntermenstrualBleedingByDayIndex:calendarCache:error:", *(a1 + 56), *(a1 + 48), a3) && objc_msgSend(*(a1 + 32), "_queue_insertSamplesWithClientSource:error:", *(a1 + 64), a3))
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = v5;
      v15 = 138543362;
      v16 = objc_opt_class();
      v8 = v16;
      _os_log_impl(&dword_2293D1000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Resetting deviation dismissal dayIndex", &v15, 0xCu);
    }

    v9 = MEMORY[0x277D10718];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
    v11 = [v9 hdmc_syncedMenstrualCyclesDefaultsDomainWithProfile:WeakRetained];

    v12 = [v11 hdmc_setUnconfirmedDeviationDismissalDayIndex:0 error:a3];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

id __162__HDMCPluginServer_remote_confirmAndSaveDeviationWithMenstrualFlowByDayIndex_intermenstrualBleedingByDayIndex_addedCycleFactors_initialAnalysisWindow_completion___block_invoke_320(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a2;
  v5 = [v4 days];
  v6 = [*(a1 + 32) currentCalendar];
  v7 = [v3 hk_noonWithDayIndex:v5 calendar:v6];

  v8 = MEMORY[0x277CBEAA8];
  v9 = [v4 days];
  if (v10 <= 0)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10 + v9 - 1;
  }

  v12 = [*(a1 + 32) currentCalendar];
  v13 = [v8 hk_noonWithDayIndex:v11 calendar:v12];

  v14 = MEMORY[0x277CCD0B0];
  [v4 type];

  v15 = HKCategoryTypeFromDeviationType();
  v16 = [v14 categorySampleWithType:v15 value:0 startDate:v7 endDate:v13];

  return v16;
}

BOOL __162__HDMCPluginServer_remote_confirmAndSaveDeviationWithMenstrualFlowByDayIndex_intermenstrualBleedingByDayIndex_addedCycleFactors_initialAnalysisWindow_completion___block_invoke_2_324(uint64_t a1, void *a2)
{
  v3 = [a2 startDate];
  v4 = [*(a1 + 32) currentCalendar];
  v5 = [v3 hk_dayIndexWithCalendar:v4];

  return v5 >= *(a1 + 40);
}

- (void)remote_saveLastMenstrualPeriodWithDayIndexRange:(id)a3 completion:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v25 = *MEMORY[0x277D85DE8];
  v7 = a4;
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = objc_opt_class();
    v11 = v10;
    v12 = NSStringFromHKDayIndexRange();
    v13 = HKSensitiveLogItem();
    *buf = 138543618;
    v22 = v10;
    v23 = 2112;
    v24 = v13;
    _os_log_impl(&dword_2293D1000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Save last menstrual period: %@", buf, 0x16u);
  }

  queue = self->_queue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__HDMCPluginServer_remote_saveLastMenstrualPeriodWithDayIndexRange_completion___block_invoke;
  v17[3] = &unk_27865B1D8;
  v19 = var0;
  v20 = var1;
  v17[4] = self;
  v18 = v7;
  v15 = v7;
  dispatch_async(queue, v17);

  v16 = *MEMORY[0x277D85DE8];
}

void __79__HDMCPluginServer_remote_saveLastMenstrualPeriodWithDayIndexRange_completion___block_invoke(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCD0A0]);
  v3 = a1[4];
  v5 = 0;
  [v3 _queue_saveLastMenstrualPeriodWithDayIndexRange:a1[6] calendarCache:a1[7] error:{v2, &v5}];
  v4 = v5;
  (*(a1[5] + 16))();
}

- (void)remote_savePeriodNotYetStartedWithCompletion:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CCD0A0]);
  v6 = [v5 currentCalendar];
  v7 = HKMCTodayIndex();

  if (HKShowSensitiveLogItems())
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = objc_opt_class();
      v11 = MEMORY[0x277CCABB0];
      v12 = v10;
      v13 = [v11 numberWithInteger:v7];
      *buf = 138543618;
      v23 = v10;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_2293D1000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Save period not started on day: %@", buf, 0x16u);
    }
  }

  queue = self->_queue;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__HDMCPluginServer_remote_savePeriodNotYetStartedWithCompletion___block_invoke;
  v18[3] = &unk_27865B110;
  v18[4] = self;
  v19 = v5;
  v20 = v4;
  v21 = v7;
  v15 = v4;
  v16 = v5;
  dispatch_async(queue, v18);

  v17 = *MEMORY[0x277D85DE8];
}

void __65__HDMCPluginServer_remote_savePeriodNotYetStartedWithCompletion___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14 = 0;
  v2 = [*(a1 + 32) _queue_mostRecentMenstrualFlowSampleWithError:&v14 requiringBeforeDay:*(a1 + 56) calendarCache:*(a1 + 40)];
  v3 = v14;
  if (v2)
  {
    v4 = MEMORY[0x277CBEAA8];
    v5 = *(a1 + 56);
    v6 = [*(a1 + 40) currentCalendar];
    v7 = [v4 hk_noonWithDayIndex:v5 calendar:v6];

    v8 = [MEMORY[0x277CCD0B0] hkmc_categorySampleWithMenstrualFlow:1 date:v7 startOfCycle:0];
    v9 = *(a1 + 32);
    v15[0] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v13 = v3;
    [v9 _queue_insertSamplesWithClientSource:v10 error:&v13];
    v11 = v13;

    (*(*(a1 + 48) + 16))();
    v3 = v11;
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)remote_savePeriodNotYetEndedWithCompletion:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CCD0A0]);
  v6 = [v5 currentCalendar];
  v7 = HKMCTodayIndex();

  if (HKShowSensitiveLogItems())
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = objc_opt_class();
      v11 = MEMORY[0x277CCABB0];
      v12 = v10;
      v13 = [v11 numberWithInteger:v7];
      *buf = 138543618;
      v23 = v10;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_2293D1000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Save period not ended on day: %@", buf, 0x16u);
    }
  }

  queue = self->_queue;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __63__HDMCPluginServer_remote_savePeriodNotYetEndedWithCompletion___block_invoke;
  v18[3] = &unk_27865B110;
  v18[4] = self;
  v19 = v5;
  v20 = v4;
  v21 = v7;
  v15 = v4;
  v16 = v5;
  dispatch_async(queue, v18);

  v17 = *MEMORY[0x277D85DE8];
}

void __63__HDMCPluginServer_remote_savePeriodNotYetEndedWithCompletion___block_invoke(uint64_t a1)
{
  v14 = 0;
  v2 = [*(a1 + 32) _queue_mostRecentMenstrualFlowSampleWithError:&v14 requiringBeforeDay:*(a1 + 56) calendarCache:*(a1 + 40)];
  v3 = v14;
  if (v2)
  {
    v4 = [*(a1 + 40) currentCalendar];
    v5 = [v2 hk_dayIndexRangeWithCalendar:v4];
    v7 = v6;
    v8 = v5 + v6;

    if (v7 <= 0)
    {
      v9 = 0x8000000000000000;
    }

    else
    {
      v9 = v8;
    }

    v10 = *(a1 + 56) - v9;
    v11 = *(a1 + 40);
    [*(a1 + 32) _queue_saveMenstrualFlow:2 forEachDayInRange:v3 calendarCache:? error:?];
    v12 = v13;

    (*(*(a1 + 48) + 16))();
    v3 = v12;
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)remote_savePeriodStartedOnDayIndex:(int64_t)a3 completion:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CCD0A0]);
  v8 = [v7 currentCalendar];
  v9 = HKMCTodayIndex();

  if (HKShowSensitiveLogItems())
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = objc_opt_class();
      v13 = MEMORY[0x277CCABB0];
      v14 = v12;
      v15 = [v13 numberWithInteger:a3];
      v16 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
      *buf = 138543874;
      v27 = v12;
      v28 = 2112;
      v29 = v15;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&dword_2293D1000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Save period started on day: %@, today: %@", buf, 0x20u);
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HDMCPluginServer_remote_savePeriodStartedOnDayIndex_completion___block_invoke;
  block[3] = &unk_27865B200;
  v24 = a3;
  v25 = v9;
  v22 = v7;
  v23 = v6;
  block[4] = self;
  v18 = v7;
  v19 = v6;
  dispatch_async(queue, block);

  v20 = *MEMORY[0x277D85DE8];
}

void __66__HDMCPluginServer_remote_savePeriodStartedOnDayIndex_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 64) >= *(a1 + 56))
  {
    v5 = *(a1 + 40);
    [*(a1 + 32) _queue_saveMenstrualFlow:2 forEachDayInRange:? calendarCache:? error:?];
    v4 = 0;
  }

  else
  {
    v2 = MEMORY[0x277CCA9B8];
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v4 = [v2 hk_error:100 format:{@"Start day cannot be after today: %@", v3}];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)remote_savePeriodStartedOnDayIndex:(int64_t)a3 endedOnDayIndex:(int64_t)a4 completion:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a5;
  if (HKShowSensitiveLogItems())
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = objc_opt_class();
      v12 = MEMORY[0x277CCABB0];
      v13 = v11;
      v14 = [v12 numberWithInteger:a3];
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
      *buf = 138543874;
      v24 = v11;
      v25 = 2112;
      v26 = v14;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&dword_2293D1000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Save period started on day: %@, ended on day: %@", buf, 0x20u);
    }
  }

  queue = self->_queue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __82__HDMCPluginServer_remote_savePeriodStartedOnDayIndex_endedOnDayIndex_completion___block_invoke;
  v19[3] = &unk_27865B1D8;
  v21 = a3;
  v22 = a4;
  v19[4] = self;
  v20 = v8;
  v17 = v8;
  dispatch_async(queue, v19);

  v18 = *MEMORY[0x277D85DE8];
}

void __82__HDMCPluginServer_remote_savePeriodStartedOnDayIndex_endedOnDayIndex_completion___block_invoke(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCD0A0]);
  v3 = a1[4];
  v4 = a1[6];
  v5 = a1[7];
  v7 = 0;
  [v3 _queue_savePeriodStartedOnDayIndex:v4 endedOnDayIndex:v5 calendarCache:v2 error:&v7];
  v6 = v7;
  (*(a1[5] + 16))();
}

- (void)remote_savePeriodEndedOnDayIndex:(int64_t)a3 completion:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (HKShowSensitiveLogItems())
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = objc_opt_class();
      v10 = MEMORY[0x277CCABB0];
      v11 = v9;
      v12 = [v10 numberWithInteger:a3];
      *buf = 138543618;
      v20 = v9;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_2293D1000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Save period ended on day: %@", buf, 0x16u);
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HDMCPluginServer_remote_savePeriodEndedOnDayIndex_completion___block_invoke;
  block[3] = &unk_27865B228;
  v17 = v6;
  v18 = a3;
  block[4] = self;
  v14 = v6;
  dispatch_async(queue, block);

  v15 = *MEMORY[0x277D85DE8];
}

void __64__HDMCPluginServer_remote_savePeriodEndedOnDayIndex_completion___block_invoke(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCD0A0]);
  v3 = a1[4];
  v16 = 0;
  v4 = [v3 _queue_mostRecentMenstrualFlowSampleWithError:&v16 requiringBeforeDay:a1[6] calendarCache:v2];
  v5 = v16;
  if (v4)
  {
    v6 = [v2 currentCalendar];
    v7 = [v4 hk_dayIndexRangeWithCalendar:v6];
    v9 = v8;
    v10 = v7 + v8;

    if (v9 <= 0)
    {
      v11 = 0x8000000000000000;
    }

    else
    {
      v11 = v10;
    }

    v12 = a1[4];
    v13 = a1[6];
    v15 = v5;
    [v12 _queue_savePeriodStartedOnDayIndex:v11 endedOnDayIndex:v13 calendarCache:v2 error:&v15];
    v14 = v15;

    (*(a1[5] + 16))();
    v5 = v14;
  }

  else
  {
    (*(a1[5] + 16))();
  }
}

- (void)remote_triggerAnalysisForDebugReason:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    *buf = 138543618;
    v17 = objc_opt_class();
    v18 = 2114;
    v19 = v6;
    v10 = v17;
    _os_log_impl(&dword_2293D1000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Trigger analysis for %{public}@", buf, 0x16u);
  }

  v11 = [(HDMCProfileExtension *)self->_profileExtension analysisManager];
  v15 = 0;
  v12 = [v11 analyzeWithError:&v15];
  v13 = v15;

  v7[2](v7, v12 != 0, v13);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)remote_fetchCurrentAnalysisWithCompletion:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    *buf = 138543362;
    v17 = objc_opt_class();
    v7 = v17;
    _os_log_impl(&dword_2293D1000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Fetch current analysis", buf, 0xCu);
  }

  v8 = [(HDMCProfileExtension *)self->_profileExtension analysisManager];
  v9 = [v8 currentAnalysis];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    v12 = 0;
  }

  else
  {
    v13 = [(HDMCProfileExtension *)self->_profileExtension analysisManager];
    v15 = 0;
    v11 = [v13 analyzeWithError:&v15];
    v12 = v15;
  }

  v4[2](v4, v11, v12);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)remote_fetchCurrentPregnancyModelWithCompletion:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    *v11 = 138543362;
    *&v11[4] = objc_opt_class();
    v7 = *&v11[4];
    _os_log_impl(&dword_2293D1000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Fetch current pregnancy model", v11, 0xCu);
  }

  v8 = [(HDMCProfileExtension *)self->_profileExtension getPregnancyModelProvider];
  v9 = [v8 getCurrentPregnancyModel];
  v4[2](v4, v9, 0);

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_queue_reconcileSamplesToDeriveDaySummary:(id)a3 analysis:(id)a4 canOverrideCreationDate:(BOOL)a5 error:(id *)a6
{
  v47 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = objc_alloc_init(MEMORY[0x277CCD0A0]);
  v13 = [v10 dayIndex];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v15 = [HDMCDaySummaryEnumerator daySummaryAtIndex:v13 profile:WeakRetained calendarCache:v12 error:a6];

  if (v15 || !*a6)
  {
    v16 = [v10 isEqual:v15];
    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC2E8];
    v18 = os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v18)
      {
        v19 = v17;
        *buf = 138543362;
        v42 = objc_opt_class();
        v20 = v11;
        v21 = v42;
        _os_log_impl(&dword_2293D1000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping update of identical day summary", buf, 0xCu);

        v11 = v20;
      }

      v22 = 1;
    }

    else
    {
      v34 = a5;
      if (v18)
      {
        log = v17;
        v23 = objc_opt_class();
        v33 = v23;
        v24 = HKSensitiveLogItem();
        HKSensitiveLogItem();
        v26 = v25 = v11;
        *buf = 138543874;
        v42 = v23;
        v43 = 2112;
        v44 = v24;
        v45 = 2112;
        v46 = v26;
        _os_log_impl(&dword_2293D1000, log, OS_LOG_TYPE_DEFAULT, "[%{public}@] Reconcile underlying samples to derive summary: %@, old summary: %@", buf, 0x20u);

        v11 = v25;
      }

      v27 = objc_alloc_init(MEMORY[0x277D10788]);
      [v27 setCacheScope:1];
      [v27 setRequiresProtectedData:1];
      [v27 setRequiresWrite:1];
      v28 = objc_loadWeakRetained(&self->_profile);
      v29 = [v28 database];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __101__HDMCPluginServer__queue_reconcileSamplesToDeriveDaySummary_analysis_canOverrideCreationDate_error___block_invoke;
      v35[3] = &unk_27865B250;
      v35[4] = self;
      v36 = v15;
      v37 = v10;
      v38 = v12;
      v40 = v34;
      v39 = v11;
      v22 = [v29 performTransactionWithContext:v27 error:a6 block:v35 inaccessibilityHandler:0];
    }
  }

  else
  {
    v22 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t __101__HDMCPluginServer__queue_reconcileSamplesToDeriveDaySummary_analysis_canOverrideCreationDate_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) _queue_updateUnderlyingSamplesToReplaceDaySummary:*(a1 + 40) withDaySummary:*(a1 + 48) calendarCache:*(a1 + 56) canOverrideCreationDate:*(a1 + 72) error:a3];
  if (result)
  {
    v6 = [*(a1 + 32) _queue_updateStartOfCycleMetadataForModifiedDayIndex:objc_msgSend(*(a1 + 48) calendarCache:"dayIndex") canOverrideCreationDate:*(a1 + 56) error:{*(a1 + 72), a3}];
    [*(a1 + 32) _submitPredictionAccuracyAnalyticWithDayIndex:objc_msgSend(*(a1 + 48) oldMenstrualFlow:"dayIndex") newMenstrualFlow:objc_msgSend(*(a1 + 40) analysis:"menstrualFlow") isLoggingMultipleDays:{objc_msgSend(*(a1 + 48), "menstrualFlow"), *(a1 + 64), 0}];
    return v6;
  }

  return result;
}

- (BOOL)_queue_updateUnderlyingSamplesToReplaceDaySummary:(id)a3 withDaySummary:(id)a4 calendarCache:(id)a5 canOverrideCreationDate:(BOOL)a6 error:(id *)a7
{
  v62 = a6;
  v85 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v69 = [v11 dayIndex];
  v77 = 0;
  v65 = v11;
  v66 = v10;
  v64 = [(HDMCPluginServer *)self _samplesToInsertForUpdateFromDaySummary:v10 toDaySummary:v11 typesToDelete:&v77 calendarCache:v12];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = v77;
  v13 = [obj countByEnumeratingWithState:&v73 objects:v84 count:16];
  v14 = MEMORY[0x277CCC2E8];
  if (v13)
  {
    v15 = v13;
    v16 = 0;
    v17 = *v74;
    v67 = self;
    while (2)
    {
      v18 = 0;
      v19 = v16;
      do
      {
        if (*v74 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v73 + 1) + 8 * v18);
        v72 = v19;
        v21 = [(HDMCPluginServer *)self _queue_deleteSamplesOfType:v20 onDayIndex:v69 calendarCache:v12 error:&v72];
        v16 = v72;

        if (!v21)
        {
          v32 = 0;
          v33 = obj;
          v35 = v65;
          v34 = v66;
          v36 = v64;
          goto LABEL_24;
        }

        _HKInitializeLogging();
        v22 = *v14;
        if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v22;
          v24 = v15;
          v25 = v16;
          v26 = v17;
          v27 = v12;
          v28 = objc_opt_class();
          v29 = v28;
          v30 = HKSensitiveLogItem();
          v31 = [MEMORY[0x277CCABB0] numberWithInteger:v69];
          *buf = 138543874;
          v79 = v28;
          v12 = v27;
          v17 = v26;
          v16 = v25;
          v15 = v24;
          v80 = 2112;
          v81 = v30;
          v82 = 2114;
          v83 = v31;
          _os_log_impl(&dword_2293D1000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deleted samples of type: %@ for day index: %{public}@", buf, 0x20u);

          self = v67;
          v14 = MEMORY[0x277CCC2E8];
        }

        ++v18;
        v19 = v16;
      }

      while (v15 != v18);
      v15 = [obj countByEnumeratingWithState:&v73 objects:v84 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 0;
  }

  v36 = v64;
  v33 = [v64 mutableCopy];
  _HKInitializeLogging();
  v37 = *v14;
  if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
  {
    v38 = v37;
    v39 = objc_opt_class();
    v40 = v14;
    v41 = MEMORY[0x277CCABB0];
    v42 = v39;
    v43 = [v41 numberWithBool:v62];
    *buf = 138543618;
    v79 = v39;
    v80 = 2114;
    v81 = v43;
    _os_log_impl(&dword_2293D1000, v38, OS_LOG_TYPE_DEFAULT, "[%{public}@] canOverrideCreationDate: %{public}@", buf, 0x16u);

    v14 = v40;
  }

  v35 = v65;
  if (v62 && [v65 menstrualFlowModificationDayIndex] >= 1)
  {
    _HKInitializeLogging();
    v44 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v44;
      v46 = objc_opt_class();
      v47 = MEMORY[0x277CCABB0];
      v48 = v46;
      v49 = [v47 numberWithInteger:{objc_msgSend(v65, "menstrualFlowModificationDayIndex")}];
      *buf = 138543618;
      v79 = v46;
      v80 = 2114;
      v81 = v49;
      _os_log_impl(&dword_2293D1000, v45, OS_LOG_TYPE_DEFAULT, "[%{public}@] Overriding creation date to day index: %{public}@", buf, 0x16u);
    }

    v50 = [v64 hk_filter:&__block_literal_global_5];
    [v33 removeObjectsInArray:v50];
    v51 = MEMORY[0x277CBEAA8];
    v52 = [v65 menstrualFlowModificationDayIndex];
    v53 = [v12 currentCalendar];
    v54 = [v51 hk_noonWithDayIndex:v52 calendar:v53];

    v71 = v16;
    LODWORD(v53) = [(HDMCPluginServer *)self _queue_insertSamplesWithClientSource:v50 creationDate:v54 error:&v71];
    v55 = v71;

    if (!v53)
    {
      v32 = 0;
      v16 = v55;
      goto LABEL_23;
    }

    v16 = v55;
  }

  v70 = v16;
  v32 = [(HDMCPluginServer *)self _queue_insertSamplesWithClientSource:v33 error:&v70];
  v56 = v70;

  v16 = v56;
LABEL_23:
  v34 = v66;
LABEL_24:

  v57 = v16;
  v58 = v57;
  if (v57)
  {
    if (a7)
    {
      v59 = v57;
      *a7 = v58;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v60 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t __129__HDMCPluginServer__queue_updateUnderlyingSamplesToReplaceDaySummary_withDaySummary_calendarCache_canOverrideCreationDate_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 sampleType];
  v3 = [v2 identifier];
  v4 = [v3 isEqualToString:*MEMORY[0x277CCBA28]];

  return v4;
}

- (id)_samplesToInsertForUpdateFromDaySummary:(id)a3 toDaySummary:(id)a4 typesToDelete:(id *)a5 calendarCache:(id)a6
{
  v107 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = v10;
  v13 = v11;
  v14 = a6;
  v15 = [v12 dayIndex];
  v16 = [v13 dayIndex];
  if (v12 && v15 != v16)
  {
    [HDMCPluginServer _samplesToInsertForUpdateFromDaySummary:a2 toDaySummary:self typesToDelete:? calendarCache:?];
  }

  v17 = [v13 dayIndex];
  v18 = MEMORY[0x277CBEAA8];
  v19 = [v14 currentCalendar];
  v20 = [v18 hk_noonWithDayIndex:v17 calendar:v19];

  v21 = [MEMORY[0x277CBEB18] array];
  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [v13 menstrualFlow];
  if (v23 != [v12 menstrualFlow] || (objc_msgSend(v13, "startOfCycleFromCycleTracking"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "startOfCycleFromCycleTracking"), v25 = objc_claimAutoreleasedReturnValue(), v25, v24, v24 != v25))
  {
    v26 = MEMORY[0x277CCD0B0];
    v27 = [v13 menstrualFlow];
    v28 = [v13 startOfCycleFromCycleTracking];
    v29 = [v26 hkmc_categorySampleWithMenstrualFlow:v27 date:v20 startOfCycle:{objc_msgSend(v28, "BOOLValue")}];

    if (v29)
    {
      [v22 addObject:v29];
    }

    if ([v12 menstrualFlow])
    {
      v30 = [MEMORY[0x277CCD720] dataTypeWithCode:95];
      [v21 addObject:v30];
    }
  }

  v31 = [v13 bleedingInPregnancyFlow];
  if (v31 != [v12 bleedingInPregnancyFlow])
  {
    v32 = [MEMORY[0x277CCD0B0] hkmc_categorySampleWithBleedingFlow:objc_msgSend(v13 forBleedingType:"bleedingInPregnancyFlow") date:1 startOfCycle:{v20, 0}];
    if (v32)
    {
      [v22 addObject:v32];
    }

    if ([v12 bleedingInPregnancyFlow])
    {
      v33 = [MEMORY[0x277CCD720] dataTypeWithCode:313];
      [v21 addObject:v33];
    }
  }

  v34 = [v13 bleedingAfterPregnancyFlow];
  if (v34 != [v12 bleedingAfterPregnancyFlow])
  {
    v35 = [MEMORY[0x277CCD0B0] hkmc_categorySampleWithBleedingFlow:objc_msgSend(v13 forBleedingType:"bleedingAfterPregnancyFlow") date:2 startOfCycle:{v20, 0}];
    if (v35)
    {
      [v22 addObject:v35];
    }

    if ([v12 bleedingAfterPregnancyFlow])
    {
      v36 = [MEMORY[0x277CCD720] dataTypeWithCode:314];
      [v21 addObject:v36];
    }
  }

  v37 = [v13 cervicalMucusQuality];
  if (v37 != [v12 cervicalMucusQuality])
  {
    v38 = [MEMORY[0x277CCD0B0] hkmc_categorySampleWithCervicalMucusQuality:objc_msgSend(v13 date:{"cervicalMucusQuality"), v20}];
    if (v38)
    {
      [v22 addObject:v38];
    }

    if ([v12 cervicalMucusQuality])
    {
      v39 = [MEMORY[0x277CCD720] dataTypeWithCode:91];
      [v21 addObject:v39];
    }
  }

  v40 = [v13 ovulationTestResult];
  if (v40 != [v12 ovulationTestResult])
  {
    v41 = [MEMORY[0x277CCD0B0] hkmc_categorySampleWithOvulationTestResult:objc_msgSend(v13 date:{"ovulationTestResult"), v20}];
    if (v41)
    {
      [v22 addObject:v41];
    }

    if ([v12 ovulationTestResult])
    {
      v42 = [MEMORY[0x277CCD720] dataTypeWithCode:92];
      [v21 addObject:v42];
    }
  }

  v43 = [v13 pregnancyTestResult];
  if (v43 != [v12 pregnancyTestResult])
  {
    v44 = [MEMORY[0x277CCD0B0] hkmc_categorySampleWithPregnancyTestResult:objc_msgSend(v13 date:{"pregnancyTestResult"), v20}];
    if (v44)
    {
      [v22 addObject:v44];
    }

    if ([v12 pregnancyTestResult])
    {
      v45 = [MEMORY[0x277CCD720] dataTypeWithCode:243];
      [v21 addObject:v45];
    }
  }

  v46 = [v13 progesteroneTestResult];
  if (v46 != [v12 progesteroneTestResult])
  {
    v47 = [MEMORY[0x277CCD0B0] hkmc_categorySampleWithProgesteroneTestResult:objc_msgSend(v13 date:{"progesteroneTestResult"), v20}];
    if (v47)
    {
      [v22 addObject:v47];
    }

    if ([v12 progesteroneTestResult])
    {
      v48 = [MEMORY[0x277CCD720] dataTypeWithCode:244];
      [v21 addObject:v48];
    }
  }

  v49 = [v13 intermenstrualBleeding];
  if (v49 != [v12 intermenstrualBleeding])
  {
    if ([v13 intermenstrualBleeding])
    {
      v50 = [MEMORY[0x277CCD0B0] hkmc_intermenstrualBleedingCategorySampleWithDate:v20];
      v51 = v22;
    }

    else
    {
      if (![v12 intermenstrualBleeding])
      {
        goto LABEL_53;
      }

      v50 = [MEMORY[0x277CCD720] dataTypeWithCode:96];
      v51 = v21;
    }

    [v51 addObject:v50];
  }

LABEL_53:
  v52 = [v13 sexualActivity];
  if (v52 != [v12 sexualActivity])
  {
    v53 = [MEMORY[0x277CCD0B0] hkmc_categorySampleWithSexualActivity:objc_msgSend(v13 date:{"sexualActivity"), v20}];
    if (v53)
    {
      [v22 addObject:v53];
    }

    if ([v12 sexualActivity])
    {
      v54 = [MEMORY[0x277CCD720] dataTypeWithCode:97];
      [v21 addObject:v54];
    }
  }

  v55 = MEMORY[0x277CBEB98];
  v96 = v13;
  [v13 symptoms];
  v56 = HKMCDaySummarySymptomArrayFromSymptoms();
  v57 = [v55 setWithArray:v56];

  v58 = MEMORY[0x277CBEB98];
  v93 = v12;
  [v12 symptoms];
  v59 = HKMCDaySummarySymptomArrayFromSymptoms();
  v60 = [v58 setWithArray:v59];

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v94 = v60;
  v95 = v57;
  v61 = [v57 hk_minus:v60];
  v62 = [v61 countByEnumeratingWithState:&v101 objects:v106 count:16];
  if (v62)
  {
    v63 = v62;
    v64 = *v102;
    do
    {
      for (i = 0; i != v63; ++i)
      {
        if (*v102 != v64)
        {
          objc_enumerationMutation(v61);
        }

        v66 = [MEMORY[0x277CCD0B0] hkmc_categorySampleWithMenstrualSymptom:objc_msgSend(*(*(&v101 + 1) + 8 * i) date:{"integerValue"), v20}];
        if (v66)
        {
          [v22 addObject:v66];
        }
      }

      v63 = [v61 countByEnumeratingWithState:&v101 objects:v106 count:16];
    }

    while (v63);
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v67 = [v94 hk_minus:v95];
  v68 = [v67 countByEnumeratingWithState:&v97 objects:v105 count:16];
  if (v68)
  {
    v69 = v68;
    v70 = *v98;
    v71 = *MEMORY[0x277D11820];
    do
    {
      for (j = 0; j != v69; ++j)
      {
        if (*v98 != v70)
        {
          objc_enumerationMutation(v67);
        }

        [*(*(&v97 + 1) + 8 * j) integerValue];
        v73 = HKMCDataTypeCodeFromMenstrualSymptom();
        if (v73 != v71)
        {
          v74 = [MEMORY[0x277CCD720] dataTypeWithCode:v73];
          [v21 addObject:v74];
        }
      }

      v69 = [v67 countByEnumeratingWithState:&v97 objects:v105 count:16];
    }

    while (v69);
  }

  v75 = [v96 basalBodyTemperature];
  v76 = [v93 basalBodyTemperature];
  v77 = v76;
  if (v75 == v76)
  {

LABEL_87:
    v82 = v96;
    goto LABEL_88;
  }

  v78 = [v93 basalBodyTemperature];
  if (v78)
  {
    v79 = v78;
    v80 = [v96 basalBodyTemperature];
    v81 = [v93 basalBodyTemperature];
    v91 = [v80 isEqual:v81];

    v82 = v96;
    if (v91)
    {
      goto LABEL_88;
    }
  }

  else
  {

    v82 = v96;
  }

  v83 = [v82 basalBodyTemperature];

  if (v83)
  {
    v84 = MEMORY[0x277CCD800];
    v85 = [v82 basalBodyTemperature];
    v86 = [v84 hkmc_quantitySampleWithBasalBodyTemperature:v85 date:v20];

    [v22 addObject:v86];
  }

  v87 = [v93 basalBodyTemperature];

  if (v87)
  {
    v75 = [MEMORY[0x277CCD720] dataTypeWithCode:90];
    [v21 addObject:v75];
    goto LABEL_87;
  }

LABEL_88:
  v88 = v21;
  *a5 = v21;

  v89 = *MEMORY[0x277D85DE8];

  return v22;
}

- (BOOL)_queue_saveBleedingFlowByDayIndex:(id)a3 forBleedingType:(int64_t)a4 calendarCache:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a5;
  switch(a4)
  {
    case 2:
      v14 = *MEMORY[0x277CCB8F8];
      v15 = &__block_literal_global_352;
      v16 = &__block_literal_global_354;
      goto LABEL_7;
    case 1:
      v14 = *MEMORY[0x277CCB900];
      v15 = &__block_literal_global_347;
      v16 = &__block_literal_global_350;
LABEL_7:
      v13 = [(HDMCPluginServer *)self _queue_saveCategorySampleByDayIndex:v11 calendarCache:v12 readValueFromDaySummary:v15 categoryTypeIdentifier:v14 makeCategorySample:v16 error:a6];
      goto LABEL_8;
    case 0:
      v13 = [(HDMCPluginServer *)self _queue_saveMenstrualFlowByDayIndex:v11 calendarCache:v12 error:a6];
LABEL_8:
      v6 = v13;
      break;
  }

  return v6;
}

- (BOOL)_queue_saveMenstrualFlowUpdatingAdjacentDays:(int64_t)a3 dayIndex:(int64_t)a4 calendarCache:(id)a5 error:(id *)a6
{
  v10 = objc_alloc_init(MEMORY[0x277D10788]);
  [v10 setCacheScope:1];
  [v10 setRequiresProtectedData:1];
  [v10 setRequiresWrite:1];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v12 = [WeakRetained database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __94__HDMCPluginServer__queue_saveMenstrualFlowUpdatingAdjacentDays_dayIndex_calendarCache_error___block_invoke;
  v14[3] = &unk_27865B2D8;
  v14[4] = self;
  v14[5] = a4;
  v14[6] = a3;
  LOBYTE(a6) = [v12 performTransactionWithContext:v10 error:a6 block:v14 inaccessibilityHandler:0];

  return a6;
}

uint64_t __94__HDMCPluginServer__queue_saveMenstrualFlowUpdatingAdjacentDays_dayIndex_calendarCache_error___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_alloc(MEMORY[0x277D11958]) initWithFlowDayIndex:a1[5]];
  v6 = objc_alloc_init(MEMORY[0x277CCD0A0]);
  v7 = [HDMCDaySummaryEnumerator alloc];
  WeakRetained = objc_loadWeakRetained((a1[4] + 40));
  LOBYTE(v20) = 0;
  v9 = [(HDMCDaySummaryEnumerator *)v7 initWithProfile:WeakRetained calendarCache:v6 dayIndexRange:a1[5] + 1 ascending:9 includeFactors:1 includeWristTemperature:0, v20];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __94__HDMCPluginServer__queue_saveMenstrualFlowUpdatingAdjacentDays_dayIndex_calendarCache_error___block_invoke_2;
  v24[3] = &unk_27865AEC8;
  v10 = v5;
  v25 = v10;
  [(HDMCDaySummaryEnumerator *)v9 enumerateWithError:a3 handler:v24];
  if (([v10 isUnsuitableForRange] & 1) == 0)
  {
    v11 = [HDMCDaySummaryEnumerator alloc];
    v12 = objc_loadWeakRetained((a1[4] + 40));
    LOBYTE(v21) = 0;
    v13 = [(HDMCDaySummaryEnumerator *)v11 initWithProfile:v12 calendarCache:v6 dayIndexRange:a1[5] - 10 ascending:9 includeFactors:0 includeWristTemperature:1, v21];

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __94__HDMCPluginServer__queue_saveMenstrualFlowUpdatingAdjacentDays_dayIndex_calendarCache_error___block_invoke_3;
    v22[3] = &unk_27865AEC8;
    v23 = v10;
    [(HDMCDaySummaryEnumerator *)v13 enumerateWithError:a3 handler:v22];

    v9 = v13;
  }

  v14 = a1[4];
  v15 = a1[6];
  v16 = [v10 flowDayIndexRange];
  v18 = [v14 _queue_saveMenstrualFlow:v15 forEachDayInRange:v16 calendarCache:v17 error:{v6, a3}];

  return v18;
}

- (void)_submitPredictionAccuracyAnalyticWithDayIndex:(int64_t)a3 oldMenstrualFlow:(int64_t)a4 newMenstrualFlow:(int64_t)a5 analysis:(id)a6 isLoggingMultipleDays:(BOOL)a7
{
  v7 = a7;
  v63 = *MEMORY[0x277D85DE8];
  v12 = a6;
  _HKInitializeLogging();
  v13 = MEMORY[0x277CCC2E8];
  v14 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    *buf = 138543362;
    v62 = objc_opt_class();
    v16 = v62;
    _os_log_impl(&dword_2293D1000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Submitting prediction accuracy analytic", buf, 0xCu);
  }

  if ((HKMCDaySummaryBleedingFlowHasFlow() & 1) == 0 && HKMCDaySummaryBleedingFlowHasFlow())
  {
    if (v12)
    {
      v55 = a3;
      v56 = v7;
      WeakRetained = objc_loadWeakRetained(&self->_profile);
      v18 = [WeakRetained featureSettingsManager];
      v19 = *MEMORY[0x277CCC090];
      v60 = 0;
      v20 = [v18 featureSettingsForFeatureIdentifier:v19 error:&v60];
      v21 = v60;

      v22 = v20;
      if (v20)
      {
        v23 = objc_loadWeakRetained(&self->_profile);
        v24 = [v23 featureStatusProviderForIdentifier:*MEMORY[0x277CCC0A0]];

        v59 = v21;
        v57 = v24;
        v25 = [v24 featureStatusWithError:&v59];
        v26 = v59;

        v27 = v25;
        if (v25)
        {
          v54 = v22;
          v28 = objc_loadWeakRetained(&self->_profile);
          v29 = [v28 featureStatusProviderForIdentifier:*MEMORY[0x277CCC0A8]];

          v58 = v26;
          v52 = v29;
          v30 = [v29 featureStatusWithError:&v58];
          v31 = v58;

          v53 = v30;
          if (v30)
          {
            if ([v54 menstruationProjectionsEnabled])
            {
              v32 = [(HDMCProfileExtension *)self->_profileExtension settingsManager];
              v33 = [v32 areAllMenstruationPredictionAlgorithmAttributesSupported];
            }

            else
            {
              v33 = 0;
            }

            if ([v54 fertileWindowProjectionsEnabled])
            {
              v35 = [(HDMCProfileExtension *)self->_profileExtension settingsManager];
              v36 = [v35 areAllFertileWindowPredictionAlgorithmAttributesSupported];
            }

            else
            {
              v36 = 0;
            }

            v37 = v33;
            v38 = v33 | v36;
            v39 = [(HDMCProfileExtension *)self->_profileExtension settingsManager];
            v51 = [v39 internalCycleFactorsOverrideEnabled];

            v50 = MEMORY[0x277D119D8];
            if (v38)
            {
              v40 = *MEMORY[0x277CCBEA0];
              v48 = [v27 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
              v49 = [v48 areAllRequirementsSatisfied];
              v41 = v53;
              v47 = [v53 objectForKeyedSubscript:v40];
              v42 = [v47 areAllRequirementsSatisfied];
            }

            else
            {
              v49 = 0;
              v42 = 0;
              v41 = v53;
            }

            v43 = [v41 isOnboardingRecordPresent];
            v44 = [v12 cycles];
            BYTE3(v46) = v51;
            BYTE2(v46) = v43;
            BYTE1(v46) = v42;
            LOBYTE(v46) = v49;
            [v50 submitMetricWithDayIndex:v55 oldMenstrualFlow:a4 newMenstrualFlow:a5 analysis:v12 isLoggingMultipleDays:v56 periodPredictionEnabled:v37 heartRateBasedPredictionEnabled:v46 wristTemperatureBasedPredictionEnabled:v44 isWristTemperatureInputDelivered:? internalLiveOnCycleFactorOverrideEnabled:? cycles:?];

            v22 = v54;
            if (v38)
            {
            }
          }

          else
          {
            _HKInitializeLogging();
            v22 = v54;
            if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
            {
              [HDMCPluginServer _submitPredictionAccuracyAnalyticWithDayIndex:oldMenstrualFlow:newMenstrualFlow:analysis:isLoggingMultipleDays:];
            }
          }
        }

        else
        {
          _HKInitializeLogging();
          if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
          {
            [HDMCPluginServer _submitPredictionAccuracyAnalyticWithDayIndex:oldMenstrualFlow:newMenstrualFlow:analysis:isLoggingMultipleDays:];
          }

          v31 = v26;
        }
      }

      else
      {
        _HKInitializeLogging();
        v31 = v21;
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
        {
          [HDMCPluginServer _submitPredictionAccuracyAnalyticWithDayIndex:oldMenstrualFlow:newMenstrualFlow:analysis:isLoggingMultipleDays:];
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v34 = *v13;
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
      {
        [HDMCPluginServer _submitPredictionAccuracyAnalyticWithDayIndex:v34 oldMenstrualFlow:? newMenstrualFlow:? analysis:? isLoggingMultipleDays:?];
      }
    }
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (BOOL)_queue_saveMenstrualFlowByDayIndex:(id)a3 calendarCache:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if ([v8 count])
  {
    v10 = [(HDMCProfileExtension *)self->_profileExtension analysisManager];
    v11 = [v10 currentAnalysis];

    v12 = [v9 currentCalendar];
    v13 = objc_alloc_init(MEMORY[0x277D10788]);
    [v13 setCacheScope:1];
    [v13 setRequiresProtectedData:1];
    [v13 setRequiresWrite:1];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v15 = [WeakRetained database];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __75__HDMCPluginServer__queue_saveMenstrualFlowByDayIndex_calendarCache_error___block_invoke;
    v20[3] = &unk_27865ACF8;
    v21 = v8;
    v22 = self;
    v23 = v9;
    v24 = v12;
    v25 = v11;
    v16 = v11;
    v17 = v12;
    v18 = [v15 performTransactionWithContext:v13 error:a5 block:v20 inaccessibilityHandler:0];
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

uint64_t __75__HDMCPluginServer__queue_saveMenstrualFlowByDayIndex_calendarCache_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v33 = a2;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [*(a1 + 32) allKeys];
  v35 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v35)
  {
    v6 = *v42;
    *&v5 = 138543618;
    v31 = v5;
    v32 = *v42;
    while (2)
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v42 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v41 + 1) + 8 * i);
        v9 = [v8 integerValue];
        WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 40));
        v11 = [HDMCDaySummaryEnumerator daySummaryAtIndex:v9 profile:WeakRetained calendarCache:*(a1 + 48) error:a3];

        if (!v11 && *a3)
        {
          goto LABEL_22;
        }

        v12 = [*(a1 + 32) objectForKeyedSubscript:v8];
        v13 = [v12 integerValue];

        if ([v11 menstrualFlow] == v13)
        {
          _HKInitializeLogging();
          v14 = *MEMORY[0x277CCC2E8];
          if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
          {
            v15 = *(a1 + 40);
            v16 = v14;
            v17 = objc_opt_class();
            v18 = MEMORY[0x277CCABB0];
            v19 = v17;
            v20 = [v18 numberWithInteger:v9];
            *buf = v31;
            v46 = v17;
            v47 = 2112;
            v48 = v20;
            _os_log_impl(&dword_2293D1000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping update of identical menstrual flow, day index: %@", buf, 0x16u);
          }
        }

        else
        {
          v21 = [MEMORY[0x277CBEAA8] hk_noonWithDayIndex:v9 calendar:*(a1 + 56)];
          v22 = [MEMORY[0x277CCD0B0] hkmc_categorySampleWithMenstrualFlow:v13 date:v21 startOfCycle:0];
          v23 = *(a1 + 40);
          v24 = [MEMORY[0x277CCD720] menstrualFlowType];
          v25 = [v23 _queue_deleteSamplesOfType:v24 onDayIndex:objc_msgSend(v8 calendarCache:"integerValue") error:{*(a1 + 48), a3}];

          if (v25 && v22)
          {
            v26 = *(a1 + 40);
            v49 = v22;
            v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
            LOBYTE(v26) = [v26 _queue_insertSamplesWithClientSource:v27 error:a3];

            if ((v26 & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          else if (!v25)
          {
            goto LABEL_21;
          }

          if (([*(a1 + 40) _queue_updateStartOfCycleMetadataForModifiedDayIndex:objc_msgSend(v8 calendarCache:"integerValue") canOverrideCreationDate:*(a1 + 48) error:{0, a3}] & 1) == 0)
          {
LABEL_21:

LABEL_22:
            v28 = 0;
            goto LABEL_23;
          }

          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __75__HDMCPluginServer__queue_saveMenstrualFlowByDayIndex_calendarCache_error___block_invoke_2;
          v36[3] = &unk_27865B300;
          v36[4] = *(a1 + 40);
          v36[5] = v8;
          v37 = v11;
          v40 = v13;
          v38 = *(a1 + 64);
          v39 = *(a1 + 32);
          [v33 onCommit:v36 orRollback:0];

          v6 = v32;
        }
      }

      v35 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
      if (v35)
      {
        continue;
      }

      break;
    }
  }

  v28 = 1;
LABEL_23:

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

uint64_t __75__HDMCPluginServer__queue_saveMenstrualFlowByDayIndex_calendarCache_error___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) integerValue];
  v4 = [*(a1 + 48) menstrualFlow];
  v5 = *(a1 + 72);
  v6 = *(a1 + 56);
  v7 = [*(a1 + 64) allKeys];
  [v2 _submitPredictionAccuracyAnalyticWithDayIndex:v3 oldMenstrualFlow:v4 newMenstrualFlow:v5 analysis:v6 isLoggingMultipleDays:{objc_msgSend(v7, "count") > 1}];

  v8 = *(a1 + 32);

  return [v8 _triggerImmediateSync];
}

- (BOOL)_queue_saveCategorySampleByDayIndex:(id)a3 calendarCache:(id)a4 readValueFromDaySummary:(id)a5 categoryTypeIdentifier:(id)a6 makeCategorySample:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  dispatch_assert_queue_V2(self->_queue);
  if ([v14 count])
  {
    v19 = [v15 currentCalendar];
    v26 = v16;
    v20 = objc_alloc_init(MEMORY[0x277D10788]);
    [v20 setCacheScope:1];
    [v20 setRequiresProtectedData:1];
    [v20 setRequiresWrite:1];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v22 = [WeakRetained database];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __142__HDMCPluginServer__queue_saveCategorySampleByDayIndex_calendarCache_readValueFromDaySummary_categoryTypeIdentifier_makeCategorySample_error___block_invoke;
    v27[3] = &unk_27865B328;
    v28 = v14;
    v29 = self;
    v30 = v15;
    v33 = v26;
    v31 = v17;
    v32 = v19;
    v34 = v18;
    v23 = v19;
    v24 = [v22 performTransactionWithContext:v20 error:a8 block:v27 inaccessibilityHandler:0];

    v16 = v26;
  }

  else
  {
    v24 = 1;
  }

  return v24;
}

uint64_t __142__HDMCPluginServer__queue_saveCategorySampleByDayIndex_calendarCache_readValueFromDaySummary_categoryTypeIdentifier_makeCategorySample_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v5 = [*(a1 + 32) allKeys];
  v39 = [v5 countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (v39)
  {
    v7 = *v41;
    *&v6 = 138543874;
    v36 = v6;
    while (2)
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v41 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v40 + 1) + 8 * i);
        v10 = [v9 integerValue];
        WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 40));
        v12 = [HDMCDaySummaryEnumerator daySummaryAtIndex:v10 profile:WeakRetained calendarCache:*(a1 + 48) error:a3];

        if (!v12 && *a3)
        {
LABEL_22:

          v33 = 0;
          goto LABEL_23;
        }

        v13 = [*(a1 + 32) objectForKeyedSubscript:v9];
        v14 = [v13 integerValue];

        if ((*(*(a1 + 72) + 16))() == v14)
        {
          _HKInitializeLogging();
          v15 = *MEMORY[0x277CCC2E8];
          if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
          {
            v16 = *(a1 + 40);
            log = v15;
            v17 = objc_opt_class();
            v18 = v7;
            v19 = a3;
            v20 = v5;
            v21 = *(a1 + 56);
            v22 = MEMORY[0x277CCABB0];
            v38 = v17;
            v23 = [v22 numberWithInteger:v10];
            *buf = v36;
            v45 = v17;
            v46 = 2112;
            v47 = v21;
            v5 = v20;
            a3 = v19;
            v7 = v18;
            v48 = 2112;
            v49 = v23;
            _os_log_impl(&dword_2293D1000, log, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping update of identical value for type: %@, day index: %@", buf, 0x20u);
          }
        }

        else
        {
          v24 = *(a1 + 40);
          v25 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*(a1 + 56)];
          v26 = [v24 _queue_deleteSamplesOfType:v25 onDayIndex:v10 calendarCache:*(a1 + 48) error:a3];

          if (v26)
          {
            v27 = v14 == 0;
          }

          else
          {
            v27 = 1;
          }

          if (v27)
          {
            if ((v26 & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v28 = [MEMORY[0x277CBEAA8] hk_noonWithDayIndex:v10 calendar:*(a1 + 64)];
            v29 = (*(*(a1 + 80) + 16))();
            v30 = *(a1 + 40);
            v50 = v29;
            v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
            v32 = [v30 _queue_insertSamplesWithClientSource:v31 error:a3];

            if ((v32 & 1) == 0)
            {
              goto LABEL_22;
            }
          }
        }
      }

      v39 = [v5 countByEnumeratingWithState:&v40 objects:v51 count:16];
      if (v39)
      {
        continue;
      }

      break;
    }
  }

  v33 = 1;
LABEL_23:

  v34 = *MEMORY[0x277D85DE8];
  return v33;
}

- (BOOL)_queue_saveIntermenstrualBleedingByDayIndex:(id)a3 calendarCache:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if ([v8 count])
  {
    v10 = [v9 currentCalendar];
    v11 = objc_alloc_init(MEMORY[0x277D10788]);
    [v11 setCacheScope:1];
    [v11 setRequiresProtectedData:1];
    [v11 setRequiresWrite:1];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v13 = [WeakRetained database];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __84__HDMCPluginServer__queue_saveIntermenstrualBleedingByDayIndex_calendarCache_error___block_invoke;
    v17[3] = &unk_27865B350;
    v18 = v8;
    v19 = self;
    v20 = v9;
    v21 = v10;
    v14 = v10;
    v15 = [v13 performTransactionWithContext:v11 error:a5 block:v17 inaccessibilityHandler:0];
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

uint64_t __84__HDMCPluginServer__queue_saveIntermenstrualBleedingByDayIndex_calendarCache_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = [*(a1 + 32) allKeys];
  v37 = [v5 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v37)
  {
    v7 = *v39;
    v36 = *MEMORY[0x277CCB9D8];
    *&v6 = 138543618;
    v34 = v6;
    v35 = a3;
    while (2)
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v38 + 1) + 8 * i);
        v10 = [v9 integerValue];
        WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 40));
        v12 = [HDMCDaySummaryEnumerator daySummaryAtIndex:v10 profile:WeakRetained calendarCache:*(a1 + 48) error:a3];

        if (!v12 && *a3)
        {
LABEL_18:

          v31 = 0;
          goto LABEL_19;
        }

        v13 = [*(a1 + 32) objectForKeyedSubscript:v9];
        v14 = [v13 BOOLValue];

        if (v14 == [v12 intermenstrualBleeding])
        {
          _HKInitializeLogging();
          v22 = *MEMORY[0x277CCC2E8];
          if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
          {
            v23 = *(a1 + 40);
            v24 = v22;
            v25 = objc_opt_class();
            v26 = MEMORY[0x277CCABB0];
            v27 = v7;
            v28 = v5;
            v29 = v25;
            v30 = [v26 numberWithInteger:v10];
            *buf = v34;
            v43 = v25;
            v44 = 2112;
            v45 = v30;
            _os_log_impl(&dword_2293D1000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping update of identical intermenstrual bleeding value, day index: %@", buf, 0x16u);

            v5 = v28;
            v7 = v27;
            a3 = v35;
          }
        }

        else
        {
          v15 = *(a1 + 40);
          v16 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:v36];
          v17 = [v15 _queue_deleteSamplesOfType:v16 onDayIndex:v10 calendarCache:*(a1 + 48) error:a3];

          if ((v17 & v14) == 1)
          {
            v18 = [MEMORY[0x277CBEAA8] hk_noonWithDayIndex:v10 calendar:*(a1 + 56)];
            v19 = [MEMORY[0x277CCD0B0] hkmc_intermenstrualBleedingCategorySampleWithDate:v18];
            v20 = *(a1 + 40);
            v46 = v19;
            v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
            LOBYTE(v20) = [v20 _queue_insertSamplesWithClientSource:v21 error:a3];

            if ((v20 & 1) == 0)
            {
              goto LABEL_18;
            }
          }

          else if ((v17 & 1) == 0)
          {
            goto LABEL_18;
          }
        }
      }

      v37 = [v5 countByEnumeratingWithState:&v38 objects:v47 count:16];
      if (v37)
      {
        continue;
      }

      break;
    }
  }

  v31 = 1;
LABEL_19:

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

- (BOOL)_queue_saveLastMenstrualPeriodWithDayIndexRange:(id)a3 calendarCache:(id)a4 error:(id *)a5
{
  var1 = a3.var1;
  var0 = a3.var0;
  v9 = a4;
  v10 = [(HDMCProfileExtension *)self->_profileExtension analysisManager];
  v11 = [v10 currentAnalysis];

  v12 = objc_alloc_init(MEMORY[0x277D10788]);
  [v12 setCacheScope:1];
  [v12 setRequiresProtectedData:1];
  [v12 setRequiresWrite:1];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v14 = [WeakRetained database];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__HDMCPluginServer__queue_saveLastMenstrualPeriodWithDayIndexRange_calendarCache_error___block_invoke;
  v18[3] = &unk_27865B3A0;
  v22 = var0;
  v23 = var1;
  v19 = v9;
  v20 = self;
  v21 = v11;
  v15 = v11;
  v16 = v9;
  LOBYTE(a5) = [v14 performTransactionWithContext:v12 error:a5 block:v18 inaccessibilityHandler:0];

  return a5;
}

uint64_t __88__HDMCPluginServer__queue_saveLastMenstrualPeriodWithDayIndexRange_calendarCache_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v50[1] = *MEMORY[0x277D85DE8];
  v37 = a2;
  v5 = *(a1 + 64);
  v6 = (a1 + 56);
  if (v5 <= 0)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = *(a1 + 56) + v5 - 1;
  }

  v8 = [*(a1 + 32) currentCalendar];
  v9 = HKMCTodayIndex();

  if (v7 >= v9)
  {
    v7 = v9;
  }

  v10 = *v6;
  v11 = &OBJC_INSTANCE_METHODS_HKMCPregnancyModelObserver;
  if (*v6 <= v7)
  {
    v36 = v40;
    v35 = v7 + 1;
    while (1)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 40));
      v14 = [HDMCDaySummaryEnumerator daySummaryAtIndex:v10 profile:WeakRetained calendarCache:*(a1 + 32) error:a3];

      if (!v14 && *a3)
      {
        goto LABEL_22;
      }

      if ([v14 menstrualFlow])
      {
        break;
      }

      v15 = MEMORY[0x277CBEAA8];
      v16 = [*(a1 + 32) currentCalendar];
      v17 = [v15 hk_noonWithDayIndex:v10 calendar:v16];

      v18 = [MEMORY[0x277CCD0B0] hkmc_categorySampleWithMenstrualFlow:2 date:v17 startOfCycle:v10 == *(a1 + 56)];
      v20 = *(a1 + 40);
      v19 = [MEMORY[0x277CCD720] menstrualFlowType];
      LODWORD(v20) = [v20 _queue_deleteSamplesOfType:v19 onDayIndex:v10 calendarCache:*(a1 + 32) error:a3];

      if (v20 && v18)
      {
        v20 = *(a1 + 40);
        v50[0] = v18;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];
        LOBYTE(v20) = [v20 _queue_insertSamplesWithClientSource:v21 error:a3];
      }

      if ((v20 & 1) == 0)
      {

LABEL_22:
        v12 = 0;
        goto LABEL_23;
      }

      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v40[0] = __88__HDMCPluginServer__queue_saveLastMenstrualPeriodWithDayIndexRange_calendarCache_error___block_invoke_2;
      v40[1] = &unk_27865B378;
      v43 = v10;
      v22 = *(a1 + 48);
      v40[2] = *(a1 + 40);
      v41 = v14;
      v23 = v22;
      v44 = *v6;
      v42 = v23;
      v45 = v7;
      v24 = v14;
      [v37 onCommit:v39 orRollback:0];

      if (v35 == ++v10)
      {
        v12 = 1;
        v11 = &OBJC_INSTANCE_METHODS_HKMCPregnancyModelObserver;
        goto LABEL_24;
      }
    }

    _HKInitializeLogging();
    v25 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 40);
      v27 = v25;
      v28 = objc_opt_class();
      v29 = MEMORY[0x277CCABB0];
      v30 = v28;
      v31 = [v29 numberWithInteger:v10];
      v32 = HKSensitiveLogItem();
      *buf = 138543618;
      v47 = v28;
      v48 = 2112;
      v49 = v32;
      _os_log_impl(&dword_2293D1000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ending first period log early due to no flow sample on day: %@", buf, 0x16u);
    }

    v12 = 1;
LABEL_23:
    v11 = &OBJC_INSTANCE_METHODS_HKMCPregnancyModelObserver;
  }

  else
  {
    v12 = 1;
  }

LABEL_24:
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = v11[113];
  v38[2] = __88__HDMCPluginServer__queue_saveLastMenstrualPeriodWithDayIndexRange_calendarCache_error___block_invoke_359;
  v38[3] = &unk_27865A830;
  v38[4] = *(a1 + 40);
  [v37 onCommit:v38 orRollback:{0, v35}];

  v33 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t __88__HDMCPluginServer__queue_saveLastMenstrualPeriodWithDayIndexRange_calendarCache_error___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) menstrualFlow];
  v5 = *(a1 + 48);
  v6 = *(a1 + 64) > *(a1 + 80);

  return [v3 _submitPredictionAccuracyAnalyticWithDayIndex:v2 oldMenstrualFlow:v4 newMenstrualFlow:2 analysis:v5 isLoggingMultipleDays:v6];
}

- (BOOL)_queue_saveMenstrualFlow:(int64_t)a3 forEachDayInRange:(id)a4 calendarCache:(id)a5 error:(id *)a6
{
  var1 = a4.var1;
  var0 = a4.var0;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:var1];
  v12 = var0 + var1;
  do
  {
    do
    {
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:var0];
      [v11 setObject:v13 forKeyedSubscript:v14];

      ++var0;
    }

    while (var1 < 1);
  }

  while (v12 > var0);
  v15 = [(HDMCPluginServer *)self _queue_saveMenstrualFlowByDayIndex:v11 calendarCache:v10 error:a6];

  return v15;
}

- (BOOL)_queue_savePeriodStartedOnDayIndex:(int64_t)a3 endedOnDayIndex:(int64_t)a4 calendarCache:(id)a5 error:(id *)a6
{
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:a4 - a3 + 1];
  if (a4 >= a3)
  {
    do
    {
      v12 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      [v11 setObject:&unk_283CC32B8 forKeyedSubscript:v12];

      ++a3;
    }

    while (a4 + 1 != a3);
  }

  v13 = [v10 currentCalendar];
  v14 = HKMCTodayIndex();

  if (v14 - 1 == a4)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
    [v11 setObject:&unk_283CC32D0 forKeyedSubscript:v15];
  }

  v16 = [(HDMCPluginServer *)self _queue_saveMenstrualFlowByDayIndex:v11 calendarCache:v10 error:a6];

  return v16;
}

- (id)_queue_mostRecentMenstrualFlowSampleWithError:(id *)a3 requiringBeforeDay:(int64_t)a4 calendarCache:(id)a5
{
  v36[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__9;
  v32 = __Block_byref_object_dispose__9;
  v33 = 0;
  v9 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA28]];
  v10 = MEMORY[0x277D10848];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v12 = [v10 entityEnumeratorWithType:v9 profile:WeakRetained];

  v35 = *MEMORY[0x277D10400];
  v36[0] = MEMORY[0x277CBEC38];
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
  [v12 addEncodingOptionsFromDictionary:v13];

  v14 = [MEMORY[0x277D10B68] orderingTermWithProperty:*MEMORY[0x277D104A8] entityClass:objc_opt_class() ascending:0];
  v34 = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  [v12 setOrderingTerms:v15];

  [v12 setLimitCount:1];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __99__HDMCPluginServer__queue_mostRecentMenstrualFlowSampleWithError_requiringBeforeDay_calendarCache___block_invoke;
  v27[3] = &unk_27865A6F8;
  v27[4] = &v28;
  [v12 enumerateWithError:a3 handler:v27];
  v16 = v29[5];
  if (v16)
  {
    v17 = [v8 currentCalendar];
    v18 = [v16 hk_dayIndexRangeWithCalendar:v17];
    v21 = v19 > 0 && v18 + v19 <= a4;

    if (v21)
    {
      v22 = v29[5];
      goto LABEL_13;
    }

    v23 = MEMORY[0x277CCA9B8];
    v24 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [v23 hk_assignError:a3 code:100 format:{@"Most recent menstrual flow is not before day %@", v24}];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:100 format:@"Most recent menstrual flow is nil"];
  }

  v22 = 0;
LABEL_13:

  _Block_object_dispose(&v28, 8);
  v25 = *MEMORY[0x277D85DE8];

  return v22;
}

- (BOOL)_queue_updateStartOfCycleMetadataForModifiedDayIndex:(int64_t)a3 calendarCache:(id)a4 canOverrideCreationDate:(BOOL)a5 error:(id *)a6
{
  v73 = a5;
  v108 = *MEMORY[0x277D85DE8];
  v74 = a4;
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = objc_opt_class();
    v12 = MEMORY[0x277CCABB0];
    v13 = v11;
    v14 = [v12 numberWithInteger:a3];
    *buf = 138543618;
    v98 = v11;
    v99 = 2112;
    v100 = v14;
    _os_log_impl(&dword_2293D1000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating start of cycle metadata for modified day: %@", buf, 0x16u);
  }

  v79 = a3;
  v15 = a3 - 20;
  v16 = objc_alloc_init(MEMORY[0x277D0FCC0]);
  v17 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:41];
  v18 = [HDMCDaySummaryEnumerator alloc];
  v19 = [(HDStandardTaskServer *)self profile];
  LOBYTE(v67) = 0;
  v20 = [(HDMCDaySummaryEnumerator *)v18 initWithProfile:v19 calendarCache:v74 dayIndexRange:v15 ascending:41 includeFactors:1 includeWristTemperature:0, v67];

  v95 = 0;
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __117__HDMCPluginServer__queue_updateStartOfCycleMetadataForModifiedDayIndex_calendarCache_canOverrideCreationDate_error___block_invoke;
  v90[3] = &unk_27865B3C8;
  v21 = v17;
  v91 = v21;
  v93 = v15;
  v94 = 41;
  v22 = v16;
  v92 = v22;
  LODWORD(v17) = [(HDMCDaySummaryEnumerator *)v20 enumerateWithError:&v95 handler:v90];
  v23 = v95;
  v24 = v23;
  if (v17)
  {
    v89 = v23;
    v25 = [v22 analyzeWithError:&v89];
    v26 = v89;

    if (v25)
    {
      v78 = v26;
      v69 = v22;
      v70 = v20;
      v71 = v21;
      v72 = self;
      v27 = [MEMORY[0x277CBEB58] set];
      v28 = [MEMORY[0x277CBEB58] set];
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v29 = v25;
      v30 = [v29 countByEnumeratingWithState:&v85 objects:v107 count:16];
      v31 = v79;
      if (v30)
      {
        v32 = v30;
        v33 = *v86;
        do
        {
          v34 = v29;
          for (i = 0; i != v32; ++i)
          {
            if (*v86 != v33)
            {
              objc_enumerationMutation(v34);
            }

            v36 = *(*(&v85 + 1) + 8 * i);
            v37 = [v36 julianDayOfMenstruationStart];
            LODWORD(v36) = [v36 isDeterminant];
            v38 = [MEMORY[0x277CCABB0] numberWithInteger:v37];
            if (v36)
            {
              v39 = v27;
            }

            else
            {
              v39 = v28;
            }

            [v39 addObject:v38];
          }

          v29 = v34;
          v32 = [v34 countByEnumeratingWithState:&v85 objects:v107 count:16];
        }

        while (v32);
      }

      _HKInitializeLogging();
      v40 = *MEMORY[0x277CCC2E8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
      {
        v41 = v40;
        v42 = objc_opt_class();
        v43 = MEMORY[0x277CCABB0];
        v76 = v42;
        v44 = [v43 numberWithUnsignedInteger:{objc_msgSend(v29, "count")}];
        v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v71, "count")}];
        v46 = HKSensitiveLogItem();
        v47 = HKSensitiveLogItem();
        *buf = 138544386;
        v98 = v42;
        v99 = 2112;
        v100 = v44;
        v101 = 2112;
        v102 = v45;
        v103 = 2112;
        v104 = v46;
        v105 = 2112;
        v106 = v47;
        _os_log_impl(&dword_2293D1000, v41, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received %@ cycles from analyzing %@ summaries, start days: %@, indeterminant start days: %@", buf, 0x34u);

        v31 = v79;
      }

      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v48 = v71;
      v49 = [v48 countByEnumeratingWithState:&v81 objects:v96 count:16];
      if (v49)
      {
        v50 = v49;
        v68 = v29;
        v51 = *v82;
        v77 = v48;
        while (2)
        {
          for (j = 0; j != v50; ++j)
          {
            if (*v82 != v51)
            {
              objc_enumerationMutation(v48);
            }

            v53 = *(*(&v81 + 1) + 8 * j);
            v54 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v53, "dayIndex")}];
            if ([v53 dayIndex] >= v31)
            {
              v55 = [v53 startOfCycleFromCycleTracking];

              if (v55)
              {
                if (([v28 containsObject:v54] & 1) == 0)
                {
                  v56 = [v53 startOfCycleFromCycleTracking];
                  v57 = [v56 BOOLValue];

                  v58 = [v27 containsObject:v54];
                  if (v57 != v58)
                  {
                    v59 = v58;
                    v60 = [v53 mutableCopy];
                    v61 = [MEMORY[0x277CCABB0] numberWithBool:v59];
                    [v60 setStartOfCycleFromCycleTracking:v61];

                    v62 = [v60 copy];
                    v80 = v78;
                    v75 = [(HDMCPluginServer *)v72 _queue_updateUnderlyingSamplesToReplaceDaySummary:v53 withDaySummary:v62 calendarCache:v74 canOverrideCreationDate:v73 error:&v80];
                    v24 = v80;

                    if (!v75)
                    {

                      v63 = 0;
                      v29 = v68;
                      v48 = v77;
                      goto LABEL_39;
                    }

                    v78 = v24;
                  }

                  v31 = v79;
                  v48 = v77;
                }
              }
            }
          }

          v50 = [v48 countByEnumeratingWithState:&v81 objects:v96 count:16];
          if (v50)
          {
            continue;
          }

          break;
        }

        v63 = 1;
        v29 = v68;
      }

      else
      {
        v63 = 1;
      }

      v24 = v78;
LABEL_39:

      v20 = v70;
      v21 = v71;
      v22 = v69;
      goto LABEL_43;
    }

    v29 = v26;
    if (v29)
    {
      if (a6)
      {
        v64 = v29;
        v63 = 0;
        *a6 = v29;
LABEL_42:
        v24 = v29;
LABEL_43:

        goto LABEL_44;
      }

      _HKLogDroppedError();
    }

    v63 = 0;
    goto LABEL_42;
  }

  v63 = 0;
LABEL_44:

  v65 = *MEMORY[0x277D85DE8];
  return v63;
}

void __117__HDMCPluginServer__queue_updateStartOfCycleMetadataForModifiedDayIndex_calendarCache_canOverrideCreationDate_error___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (![*(a1 + 32) count] && objc_msgSend(v7, "dayIndex") > *(a1 + 48))
  {
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x277D0FC88] hkmc_emptyDayInputWithDayIndex:?];
    [v3 appendDay:v4];
  }

  v5 = *(a1 + 40);
  v6 = [MEMORY[0x277D0FC88] hkmc_dayInputWithDaySummary:v7];
  [v5 appendDay:v6];

  [*(a1 + 32) addObject:v7];
}

- (BOOL)_queue_insertSamplesWithClientSource:(id)a3 creationDate:(id)a4 error:(id *)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([v8 count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v11 = [WeakRetained sourceManager];
    v12 = [v11 createOrUpdateSourceForClient:self->_client error:a5];

    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_profile);
      v14 = [v13 dataProvenanceManager];
      v15 = [v14 localDataProvenanceForSourceEntity:v12 version:0 deviceEntity:0];

      if (v9)
      {
        MEMORY[0x22AACBDF0](v9);
      }

      else
      {
        Current = CFAbsoluteTimeGetCurrent();
      }

      v18 = Current;
      v19 = objc_loadWeakRetained(&self->_profile);
      v20 = [v19 dataManager];
      v17 = [v20 insertDataObjects:v8 withProvenance:v15 creationDate:1 skipInsertionFilter:a5 error:v18];

      _HKInitializeLogging();
      v21 = *MEMORY[0x277CCC2E8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
        v23 = objc_opt_class();
        v24 = MEMORY[0x277CCABB0];
        v29 = v23;
        v25 = [v24 numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
        v26 = HKSensitiveLogItem();
        *buf = 138544386;
        v31 = v23;
        v32 = 2112;
        v33 = v25;
        v34 = 2112;
        v35 = v26;
        v36 = 2114;
        v37 = v9;
        v38 = 2112;
        v39 = v12;
        _os_log_impl(&dword_2293D1000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] Inserted %@ samples: %@ @ %{public}@, source: %@", buf, 0x34u);
      }

      [(HDMCPluginServer *)self _queue_updateLastLoggedInExperienceDate];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 1;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)_queue_updateLastLoggedInExperienceDate
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error saving last logged date: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_queue_deleteSamplesOfType:(id)a3 onDayIndex:(int64_t)a4 calendarCache:(id)a5 error:(id *)a6
{
  v70[1] = *MEMORY[0x277D85DE8];
  v39 = a3;
  v44 = a5;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 1;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__9;
  v62 = __Block_byref_object_dispose__9;
  v63 = 0;
  v43 = [MEMORY[0x277CBEB18] array];
  v9 = MEMORY[0x277D10848];
  v42 = self;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v69 = *MEMORY[0x277D10400];
  v70[0] = MEMORY[0x277CBEC38];
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:&v69 count:1];
  v12 = [MEMORY[0x277D10B70] hdmc_predicateForSamplesInDayIndexRange:{a4, 1}];
  v13 = (v59 + 5);
  obj = v59[5];
  v40 = [v9 samplesWithType:v39 profile:WeakRetained encodingOptions:v11 predicate:v12 limit:0 anchor:0 error:&obj];
  objc_storeStrong(v13, obj);

  if (v40)
  {
    v41 = [v44 currentCalendar];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v14 = v40;
    v15 = [v14 countByEnumeratingWithState:&v53 objects:v68 count:16];
    if (v15)
    {
      v16 = *v54;
LABEL_4:
      v17 = 0;
      while (1)
      {
        if (*v54 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v53 + 1) + 8 * v17);
        v19 = [v18 _timeZone];
        v20 = [v44 calendarForTimeZone:v19];
        v21 = [v18 hk_dayIndexRangeWithCalendar:v20];
        v23 = v22;

        if (a4 >= v21 && a4 - v21 < v23)
        {
          if (v23 >= 2)
          {
            v25 = [MEMORY[0x277CCAB58] hk_indexSetWithDayIndexRange:{v21, v23}];
            [v25 removeIndex:a4];
            v46[0] = MEMORY[0x277D85DD0];
            v46[1] = 3221225472;
            v46[2] = __78__HDMCPluginServer__queue_deleteSamplesOfType_onDayIndex_calendarCache_error___block_invoke;
            v46[3] = &unk_27865B3F0;
            v47 = v41;
            v48 = v18;
            v50 = &v64;
            v49 = v42;
            v51 = &v58;
            v52 = a4;
            [v25 hk_enumerateDayIndexRangesUsingBlock:v46];
          }

          v26 = [v18 UUID];
          [v43 addObject:v26];

          if (!*(v65 + 24))
          {
            break;
          }
        }

        if (v15 == ++v17)
        {
          v15 = [v14 countByEnumeratingWithState:&v53 objects:v68 count:16];
          if (v15)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    if (*(v65 + 24) == 1)
    {
      v27 = objc_alloc_init(MEMORY[0x277D10688]);
      v28 = objc_loadWeakRetained(&v42->_profile);
      v29 = [v28 dataManager];
      v30 = (v59 + 5);
      v45 = v59[5];
      v31 = [v29 deleteObjectsWithUUIDCollection:v43 configuration:v27 error:&v45];
      objc_storeStrong(v30, v45);
      *(v65 + 24) = v31;

      [(HDMCPluginServer *)v42 _queue_updateLastLoggedInExperienceDate];
    }
  }

  v32 = v59[5];
  v33 = v32;
  if (v32)
  {
    if (a6)
    {
      v34 = v32;
      *a6 = v33;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v35 = *(v65 + 24);
  _Block_object_dispose(&v58, 8);

  _Block_object_dispose(&v64, 8);
  v36 = *MEMORY[0x277D85DE8];
  return v35 & 1;
}

void __78__HDMCPluginServer__queue_deleteSamplesOfType_onDayIndex_calendarCache_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48[1] = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CBEAA8] hk_noonWithDayIndex:a2 calendar:*(a1 + 32)];
  if (a3 <= 0)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = a3 + a2 - 1;
  }

  v8 = [MEMORY[0x277CBEAA8] hk_noonWithDayIndex:v7 calendar:{*(a1 + 32), a3}];
  v9 = *(a1 + 40);
  v10 = v6;
  v11 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = MEMORY[0x277CCD0B0];
    v13 = v9;
    v14 = [v13 categoryType];
    v15 = [v13 value];
    v16 = [v13 metadata];

    v17 = [v12 categorySampleWithType:v14 value:v15 startDate:v10 endDate:v11 metadata:v16];
LABEL_8:

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = MEMORY[0x277CCD800];
    v19 = v9;
    v14 = [v19 quantityType];
    v16 = [v19 quantity];
    v20 = [v19 metadata];

    v17 = [v18 quantitySampleWithType:v14 quantity:v16 startDate:v10 endDate:v11 metadata:v20];

    goto LABEL_8;
  }

  v17 = 0;
LABEL_10:

  if (v17)
  {
    v21 = [v17 metadata];
    v22 = v21;
    if (a2 > *(a1 + 72))
    {
      v23 = *MEMORY[0x277CCC4F0];
      v24 = [v21 objectForKeyedSubscript:*MEMORY[0x277CCC4F0]];

      if (v24)
      {
        v47 = v23;
        v48[0] = MEMORY[0x277CBEC28];
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
        v26 = [v22 hk_dictionaryByAddingEntriesFromDictionary:v25];

        [v17 _setMetadata:v26];
        v22 = v26;
      }
    }

    v27 = *(*(a1 + 56) + 8);
    if (*(v27 + 24))
    {
      v28 = *(a1 + 48);
      v46 = v17;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
      v30 = *(*(a1 + 64) + 8);
      obj = *(v30 + 40);
      LOBYTE(v28) = [v28 _queue_insertSamplesWithClientSource:v29 error:&obj];
      objc_storeStrong((v30 + 40), obj);
      *(*(*(a1 + 56) + 8) + 24) = v28;
    }

    else
    {
      *(v27 + 24) = 0;
    }

    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      _HKInitializeLogging();
      v31 = *MEMORY[0x277CCC2E8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
      {
        v32 = *(a1 + 48);
        v33 = v31;
        v34 = objc_opt_class();
        v35 = v34;
        v36 = HKSensitiveLogItem();
        v37 = NSStringFromHKDayIndexRange();
        *buf = 138543874;
        v41 = v34;
        v42 = 2112;
        v43 = v36;
        v44 = 2112;
        v45 = v37;
        _os_log_impl(&dword_2293D1000, v33, OS_LOG_TYPE_DEFAULT, "[%{public}@] Inserted multi-day replacement sample: %@ (%@)", buf, 0x20u);
      }
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_triggerImmediateSync
{
  v3 = [(HDStandardTaskServer *)self profile];
  v4 = [v3 nanoSyncManager];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __41__HDMCPluginServer__triggerImmediateSync__block_invoke;
  v14[3] = &unk_27865A7A0;
  v14[4] = self;
  [v4 syncHealthDataWithOptions:0 reason:v6 completion:v14];

  v7 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:1 pull:0 lite:1];
  v8 = [objc_alloc(MEMORY[0x277CCD140]) initWithChangesSyncRequest:v7];
  v9 = [(HDStandardTaskServer *)self profile];
  v10 = [v9 cloudSyncManager];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __41__HDMCPluginServer__triggerImmediateSync__block_invoke_383;
  v13[3] = &unk_27865A7A0;
  v13[4] = self;
  [v10 syncWithRequest:v8 reason:v12 completion:v13];
}

void __41__HDMCPluginServer__triggerImmediateSync__block_invoke(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
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
      v12 = 138543362;
      v13 = objc_opt_class();
      v10 = v13;
      _os_log_impl(&dword_2293D1000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Forced HealthKit nanosync", &v12, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __41__HDMCPluginServer__triggerImmediateSync__block_invoke_cold_1(a1, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __41__HDMCPluginServer__triggerImmediateSync__block_invoke_383(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
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
      v12 = 138543362;
      v13 = objc_opt_class();
      v10 = v13;
      _os_log_impl(&dword_2293D1000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Forced HealthKit changes sync", &v12, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __41__HDMCPluginServer__triggerImmediateSync__block_invoke_383_cold_1(a1, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_samplesToInsertForUpdateFromDaySummary:(uint64_t)a1 toDaySummary:(uint64_t)a2 typesToDelete:calendarCache:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDMCPluginServer.m" lineNumber:501 description:{@"Invalid parameter not satisfying: %@", @"[oldDaySummary dayIndex] == [newDaySummary dayIndex] || oldDaySummary == nil"}];
}

- (void)_submitPredictionAccuracyAnalyticWithDayIndex:oldMenstrualFlow:newMenstrualFlow:analysis:isLoggingMultipleDays:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error retrieving feature status for wrist temperature input: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_submitPredictionAccuracyAnalyticWithDayIndex:oldMenstrualFlow:newMenstrualFlow:analysis:isLoggingMultipleDays:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error retrieving feature status for heart rate input: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_submitPredictionAccuracyAnalyticWithDayIndex:oldMenstrualFlow:newMenstrualFlow:analysis:isLoggingMultipleDays:.cold.3()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error retrieving feature settings for menstrual cycles: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_submitPredictionAccuracyAnalyticWithDayIndex:(void *)a1 oldMenstrualFlow:newMenstrualFlow:analysis:isLoggingMultipleDays:.cold.4(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v4 = 138543362;
  v5 = objc_opt_class();
  v2 = v5;
  _os_log_debug_impl(&dword_2293D1000, v1, OS_LOG_TYPE_DEBUG, "[%{public}@] Skipping metric submission due to nil analysis", &v4, 0xCu);

  v3 = *MEMORY[0x277D85DE8];
}

void __41__HDMCPluginServer__triggerImmediateSync__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = OUTLINED_FUNCTION_3();
  v6 = OUTLINED_FUNCTION_0(v5);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v7, v8, "[%{public}@] Error forcing HealthKit nano sync: %{public}@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

void __41__HDMCPluginServer__triggerImmediateSync__block_invoke_383_cold_1(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = OUTLINED_FUNCTION_3();
  v6 = OUTLINED_FUNCTION_0(v5);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v7, v8, "[%{public}@] Error forcing HealthKit changes sync: %{public}@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

@end