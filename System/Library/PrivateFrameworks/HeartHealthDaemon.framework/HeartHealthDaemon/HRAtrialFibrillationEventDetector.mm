@interface HRAtrialFibrillationEventDetector
- (BOOL)_queue_analyzeCurrentConfirmationCycleSamples:(id)samples withAlgorithmVersion:(int64_t)version;
- (BOOL)_queue_detectionDisabled;
- (BOOL)_queue_detectionDisabledWithFeatureStatus:(id)status;
- (BOOL)_queue_inConfirmationCycle;
- (HRAtrialFibrillationEventDetector)initWithProfile:(id)profile availabilityManager:(id)manager featureStatusManager:(id)statusManager notificationManager:(id)notificationManager;
- (HRAtrialFibrillationEventDetector)initWithProfile:(id)profile availabilityManager:(id)manager notificationManager:(id)notificationManager;
- (NSArray)_unitTest_confirmationCycleSamples;
- (NSDate)_unitTest_latestAnalyzedSampleDate;
- (NSNumber)_unitTest_lastAlgorithmVersionUsed;
- (NSNumber)_unitTest_lastAnalyzedSampleAnchor;
- (id)_getProductVersionWithError:(id *)error;
- (id)_initWithAnalyticsCollector:(id)collector availabilityManager:(id)manager featureStatusManager:(id)statusManager profile:(id)profile;
- (id)_processTachograms:(id)tachograms withAlgorithmVersion:(int64_t)version;
- (id)_queue_confirmationCycleSamples;
- (id)_queue_filterSamplesByDateThreshold:(id)threshold;
- (id)_queue_lastAlgorithmVersionUsed;
- (id)_queue_lastAnalyzedSampleAnchor;
- (id)_queue_latestAnalyzedSampleDate;
- (id)_queue_orderedConfirmationCycleSamplesFromSamples:(id)samples requestedUUIDs:(id)ds;
- (id)_queue_orderedConfirmationCycleSamplesFromUUIDs:(id)ds;
- (id)diagnosticDescription;
- (int64_t)_currentAlgorithmVersion;
- (void)_currentAlgorithmVersion;
- (void)_queue_alertUserWithDate:(id)date positiveTachogramUUIDs:(id)ds;
- (void)_queue_analyzeFilteredSeriesSamples:(id)samples lastAnchor:(id)anchor;
- (void)_queue_analyzeTachogramsSinceLastAnchor;
- (void)_queue_confirmationCycleSamples;
- (void)_queue_detectionDisabled;
- (void)_queue_endConfirmationCycleIfNeeded;
- (void)_queue_enqueueMaintainanceOperationForMissedTachograms;
- (void)_queue_forceHealthKitSync;
- (void)_queue_lastAlgorithmVersionUsed;
- (void)_queue_lastAnalyzedSampleAnchor;
- (void)_queue_latestAnalyzedSampleDate;
- (void)_queue_requestAnotherTachogram;
- (void)_queue_seriesSamplesAdded:(id)added lastAnchor:(id)anchor;
- (void)_queue_setConfirmationCycleSamples:(id)samples;
- (void)_queue_setLastAlgorithmVersionUsed:(id)used;
- (void)_queue_setLastAnalyzedSampleAnchor:(id)anchor;
- (void)_queue_setLatestAnalyzedSampleDate:(id)date;
- (void)daemonReady:(id)ready;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)dealloc;
- (void)samplesAdded:(id)added anchor:(id)anchor;
@end

@implementation HRAtrialFibrillationEventDetector

- (HRAtrialFibrillationEventDetector)initWithProfile:(id)profile availabilityManager:(id)manager notificationManager:(id)notificationManager
{
  v8 = MEMORY[0x277CCD460];
  notificationManagerCopy = notificationManager;
  managerCopy = manager;
  profileCopy = profile;
  v12 = [[v8 alloc] initWithFeatureAvailabilityProviding:managerCopy healthDataSource:profileCopy];
  v13 = [(HRAtrialFibrillationEventDetector *)self initWithProfile:profileCopy availabilityManager:managerCopy featureStatusManager:v12 notificationManager:notificationManagerCopy];

  return v13;
}

- (HRAtrialFibrillationEventDetector)initWithProfile:(id)profile availabilityManager:(id)manager featureStatusManager:(id)statusManager notificationManager:(id)notificationManager
{
  profileCopy = profile;
  managerCopy = manager;
  statusManagerCopy = statusManager;
  notificationManagerCopy = notificationManager;
  v34.receiver = self;
  v34.super_class = HRAtrialFibrillationEventDetector;
  v14 = [(HRAtrialFibrillationEventDetector *)&v34 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_profile, profileCopy);
    objc_storeStrong(&v15->_availabilityManager, manager);
    objc_storeStrong(&v15->_notificationManager, notificationManager);
    objc_storeStrong(&v15->_statusManager, statusManager);
    v16 = HKCreateSerialDispatchQueue();
    queue = v15->_queue;
    v15->_queue = v16;

    v18 = MEMORY[0x277D10718];
    WeakRetained = objc_loadWeakRetained(&v15->_profile);
    v20 = [v18 hdhr_heartRhythmProtectedLocalDomainForProfile:WeakRetained];
    localKeyValueDomain = v15->_localKeyValueDomain;
    v15->_localKeyValueDomain = v20;

    v22 = MEMORY[0x277D10718];
    v23 = objc_loadWeakRetained(&v15->_profile);
    v24 = [v22 hdhr_heartRhythmProtectedSyncedDomainForProfile:v23];
    syncedKeyValueDomain = v15->_syncedKeyValueDomain;
    v15->_syncedKeyValueDomain = v24;

    v26 = [HRAtrialFibrillationAnalyticsCollector alloc];
    v27 = objc_loadWeakRetained(&v15->_profile);
    v28 = [(HRAtrialFibrillationAnalyticsCollector *)v26 initWithProfile:v27];
    analyticsCollector = v15->_analyticsCollector;
    v15->_analyticsCollector = v28;

    v30 = objc_loadWeakRetained(&v15->_profile);
    daemon = [v30 daemon];
    [daemon registerForDaemonReady:v15];

    mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [mEMORY[0x277D10AF8] addObject:v15];
  }

  return v15;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataManager = [WeakRetained dataManager];
  heartbeatSeriesType = [MEMORY[0x277CCD920] heartbeatSeriesType];
  [dataManager removeObserver:self forDataType:heartbeatSeriesType];

  v6 = objc_loadWeakRetained(&self->_profile);
  database = [v6 database];
  [database removeProtectedDataObserver:self];

  mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
  [mEMORY[0x277D10AF8] removeObject:self];

  if (notify_is_valid_token(self->_settingDidUpdateNotificationToken))
  {
    notify_cancel(self->_settingDidUpdateNotificationToken);
  }

  v9.receiver = self;
  v9.super_class = HRAtrialFibrillationEventDetector;
  [(HRAtrialFibrillationEventDetector *)&v9 dealloc];
}

- (id)_initWithAnalyticsCollector:(id)collector availabilityManager:(id)manager featureStatusManager:(id)statusManager profile:(id)profile
{
  collectorCopy = collector;
  v12 = [(HRAtrialFibrillationEventDetector *)self initWithProfile:profile availabilityManager:manager featureStatusManager:statusManager notificationManager:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_analyticsCollector, collector);
    v13->__unitTesting = 1;
  }

  return v13;
}

- (NSArray)_unitTest_confirmationCycleSamples
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__HRAtrialFibrillationEventDetector__unitTest_confirmationCycleSamples__block_invoke;
  v5[3] = &unk_2786606E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __71__HRAtrialFibrillationEventDetector__unitTest_confirmationCycleSamples__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_confirmationCycleSamples];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSNumber)_unitTest_lastAlgorithmVersionUsed
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__HRAtrialFibrillationEventDetector__unitTest_lastAlgorithmVersionUsed__block_invoke;
  v5[3] = &unk_2786606E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __71__HRAtrialFibrillationEventDetector__unitTest_lastAlgorithmVersionUsed__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_lastAlgorithmVersionUsed];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSDate)_unitTest_latestAnalyzedSampleDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__HRAtrialFibrillationEventDetector__unitTest_latestAnalyzedSampleDate__block_invoke;
  v5[3] = &unk_2786606E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __71__HRAtrialFibrillationEventDetector__unitTest_latestAnalyzedSampleDate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_latestAnalyzedSampleDate];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSNumber)_unitTest_lastAnalyzedSampleAnchor
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__HRAtrialFibrillationEventDetector__unitTest_lastAnalyzedSampleAnchor__block_invoke;
  v5[3] = &unk_2786606E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __71__HRAtrialFibrillationEventDetector__unitTest_lastAnalyzedSampleAnchor__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_lastAnalyzedSampleAnchor];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)daemonReady:(id)ready
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataManager = [WeakRetained dataManager];
  heartbeatSeriesType = [MEMORY[0x277CCD920] heartbeatSeriesType];
  [dataManager addObserver:self forDataType:heartbeatSeriesType];

  v7 = objc_loadWeakRetained(&self->_profile);
  database = [v7 database];
  [database addProtectedDataObserver:self];

  uTF8String = [@"HKHeartRateSettingsDidChangeNotification" UTF8String];
  queue = self->_queue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __49__HRAtrialFibrillationEventDetector_daemonReady___block_invoke;
  handler[3] = &unk_278660710;
  handler[4] = self;
  notify_register_dispatch(uTF8String, &self->_settingDidUpdateNotificationToken, queue, handler);
}

uint64_t __49__HRAtrialFibrillationEventDetector_daemonReady___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_detectionDisabled];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 _queue_enqueueMaintainanceOperationForMissedTachograms];
  }

  return result;
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  if (available)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__HRAtrialFibrillationEventDetector_database_protectedDataDidBecomeAvailable___block_invoke;
    block[3] = &unk_27865FD90;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

uint64_t __78__HRAtrialFibrillationEventDetector_database_protectedDataDidBecomeAvailable___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_detectionDisabled];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = v3[2];

    return [v4 presentAtrialFibrillationDetectionRescindedAlertIfNeeded];
  }

  else
  {
    [v3 _queue_enqueueMaintainanceOperationForMissedTachograms];
    v6 = *(*(a1 + 32) + 16);

    return [v6 presentAtrialFibrillationDetectionReEnabledAlertIfNeeded];
  }
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  v27 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  statusManager = self->_statusManager;
  v24 = 0;
  v7 = [(HKFeatureStatusManager *)statusManager featureStatusWithError:&v24];
  v8 = v24;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCBF48]];
    bOOLValue = [v10 BOOLValue];

    if (bOOLValue)
    {
      v12 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCBFC8]];
      bOOLValue2 = [v12 BOOLValue];

      if (bOOLValue2)
      {
        queue = self->_queue;
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __57__HRAtrialFibrillationEventDetector_samplesAdded_anchor___block_invoke;
        v21[3] = &unk_278660440;
        v21[4] = self;
        v22 = v7;
        v23 = anchorCopy;
        dispatch_async(queue, v21);

LABEL_12:
        goto LABEL_13;
      }

      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC2D8];
      if (!os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v16 = v19;
      v17 = HRLogSensitiveClassName();
      *buf = 138543362;
      v26 = v17;
      v18 = "[%{public}@] Skipping analysis: this is a Family Setup watch";
    }

    else
    {
      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC2D8];
      if (!os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v16 = v15;
      v17 = HRLogSensitiveClassName();
      *buf = 138543362;
      v26 = v17;
      v18 = "[%{public}@] Skipping analysis: Health app is hidden";
    }

    _os_log_impl(&dword_229486000, v16, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);

    goto LABEL_12;
  }

  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
  {
    [HRAtrialFibrillationEventDetector samplesAdded:anchor:];
  }

LABEL_13:

  v20 = *MEMORY[0x277D85DE8];
}

void __57__HRAtrialFibrillationEventDetector_samplesAdded_anchor___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 16) isCompanionSoftwareVersionTooOld];
  v3 = *(*(a1 + 32) + 16);
  if (v2)
  {
    [v3 notifyUserThatAntimonyIsUnavailableForiOSVersionIfNeeded];
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v7 = HRLogSensitiveClassName();
      v28 = 138543362;
      v29 = v7;
      v8 = "[%{public}@] companion device is too old to support watchOS version";
LABEL_7:
      _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, v8, &v28, 0xCu);

LABEL_8:
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v9 = [v3 isWatchSoftwareVersionTooOld];
  v10 = *(a1 + 32);
  if (v9)
  {
    [v10[2] notifyUserThatAntimonyIsUnavailableForWatchOSVersionIfNeeded];
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v6 = v11;
      v7 = HRLogSensitiveClassName();
      v28 = 138543362;
      v29 = v7;
      v8 = "[%{public}@] watch device is too old to support iOS version";
      goto LABEL_7;
    }

LABEL_9:
    v13 = *MEMORY[0x277D85DE8];
    return;
  }

  v14 = [v10 _queue_detectionDisabledWithFeatureStatus:*(a1 + 40)];
  v15 = *(*(a1 + 32) + 16);
  if (v14)
  {
    v16 = *MEMORY[0x277D85DE8];

    [v15 presentAtrialFibrillationDetectionRescindedAlertIfNeeded];
  }

  else
  {
    [v15 presentAtrialFibrillationDetectionReEnabledAlertIfNeeded];
    v17 = [*(a1 + 48) integerValue];
    v18 = [*(a1 + 32) _queue_lastAnalyzedSampleAnchor];
    v19 = [v18 integerValue];

    if (v17 < v19)
    {
      _HKInitializeLogging();
      v20 = *MEMORY[0x277CCC2D8];
      if (!os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      v21 = *(a1 + 32);
      v6 = v20;
      v22 = HRLogSensitiveClassName();
      v23 = *(a1 + 48);
      v24 = HKSensitiveLogItem();
      v25 = [*(a1 + 32) _queue_lastAnalyzedSampleAnchor];
      v28 = 138543874;
      v29 = v22;
      v30 = 2112;
      v31 = v24;
      v32 = 2112;
      v33 = v25;
      _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Samples added with anchor %@ below last analyzed anchor %@, ignoring", &v28, 0x20u);

      goto LABEL_8;
    }

    v26 = *(a1 + 32);
    v27 = *MEMORY[0x277D85DE8];

    [v26 _queue_analyzeTachogramsSinceLastAnchor];
  }
}

- (void)_queue_enqueueMaintainanceOperationForMissedTachograms
{
  dispatch_assert_queue_V2(self->_queue);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __91__HRAtrialFibrillationEventDetector__queue_enqueueMaintainanceOperationForMissedTachograms__block_invoke;
  v7[3] = &unk_278660738;
  v7[4] = self;
  v3 = [MEMORY[0x277D10748] maintenanceOperationWithName:@"com.apple.HeartRhythm.AtrialFibrillationEventDetector" asynchronousBlock:v7];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  maintenanceWorkCoordinator = [daemon maintenanceWorkCoordinator];
  [maintenanceWorkCoordinator enqueueMaintenanceOperation:v3];
}

void __91__HRAtrialFibrillationEventDetector__queue_enqueueMaintainanceOperationForMissedTachograms__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __91__HRAtrialFibrillationEventDetector__queue_enqueueMaintainanceOperationForMissedTachograms__block_invoke_2;
  v7[3] = &unk_278660290;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __91__HRAtrialFibrillationEventDetector__queue_enqueueMaintainanceOperationForMissedTachograms__block_invoke_2(uint64_t a1)
{
  if (([*(a1 + 32) _queue_detectionDisabled] & 1) == 0)
  {
    [*(a1 + 32) _queue_analyzeTachogramsSinceLastAnchor];
  }

  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_queue_analyzeTachogramsSinceLastAnchor
{
  OUTLINED_FUNCTION_5_1(self, a2, a3, 5.8382e-34);
  _os_log_error_impl(&dword_229486000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] Check for samples since last anchor failed: %@", v4, 0x16u);
}

uint64_t __76__HRAtrialFibrillationEventDetector__queue_analyzeTachogramsSinceLastAnchor__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31[3] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D105E0];
  v6 = [MEMORY[0x277CCD920] heartbeatSeriesType];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v8 = [v5 maxAnchorForSamplesWithType:v6 profile:WeakRetained error:a3];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(*(*(a1 + 56) + 8) + 40);
  if (!v11 || ([v11 isEqualToNumber:*(a1 + 40)] & 1) == 0)
  {
    v12 = MEMORY[0x277D10848];
    v13 = [MEMORY[0x277CCD920] heartbeatSeriesType];
    v14 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v15 = [v12 entityEnumeratorWithType:v13 profile:v14];

    v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-172800.0];
    v17 = HDSampleEntityPredicateForStartDate();
    v18 = *(a1 + 40);
    v19 = HDDataEntityPredicateForRowID();
    v20 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v21 = [v20 sourceManager];
    v22 = [v21 localDeviceSourceWithError:a3];

    v23 = HDDataEntityPredicateForSourceEntity();
    v24 = MEMORY[0x277D10B20];
    v31[0] = v17;
    v31[1] = v19;
    v31[2] = v23;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];
    v26 = [v24 predicateMatchingAllPredicates:v25];

    [v15 setPredicate:v26];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __76__HRAtrialFibrillationEventDetector__queue_analyzeTachogramsSinceLastAnchor__block_invoke_2;
    v29[3] = &unk_278660760;
    v30 = *(a1 + 48);
    [v15 enumerateWithError:a3 handler:v29];
  }

  v27 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __76__HRAtrialFibrillationEventDetector__queue_analyzeTachogramsSinceLastAnchor__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }

  return 1;
}

- (void)_queue_seriesSamplesAdded:(id)added lastAnchor:(id)anchor
{
  v21 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  queue = self->_queue;
  addedCopy = added;
  dispatch_assert_queue_V2(queue);
  _currentAlgorithmVersion = [(HRAtrialFibrillationEventDetector *)self _currentAlgorithmVersion];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__HRAtrialFibrillationEventDetector__queue_seriesSamplesAdded_lastAnchor___block_invoke;
  v16[3] = &unk_2786607D0;
  v16[4] = self;
  v16[5] = _currentAlgorithmVersion;
  v10 = [addedCopy hk_filter:v16];

  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = HRLogSensitiveClassName();
    v14 = [v10 hk_map:&__block_literal_global_333];
    *buf = 138543618;
    v18 = v13;
    v19 = 2112;
    v20 = v14;
    _os_log_impl(&dword_229486000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Filtered to samples with background context: %@", buf, 0x16u);
  }

  if ([v10 count])
  {
    [(HRAtrialFibrillationEventDetector *)self _queue_analyzeFilteredSeriesSamples:v10 lastAnchor:anchorCopy];
  }

  else
  {
    [(HRAtrialFibrillationEventDetector *)self _queue_setLastAnalyzedSampleAnchor:anchorCopy];
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __74__HRAtrialFibrillationEventDetector__queue_seriesSamplesAdded_lastAnchor___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 metadata];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCE050]];
  v6 = [v5 integerValue];

  if (!v6)
  {
    v12 = [v3 metadata];
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCDFA0]];

    v14 = *(a1 + 40);
    v15 = v13;
    v16 = v15;
    if (v14 == 1)
    {
      if (!v15)
      {
LABEL_14:
        v8 = 1;
LABEL_15:

        goto LABEL_16;
      }

      v8 = [v15 integerValue];

      if (v8 == 1)
      {
        goto LABEL_15;
      }
    }

    else if (v14 == 2)
    {
      v17 = [v15 integerValue];

      if (v17 == 2)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    _HKInitializeLogging();
    v18 = *MEMORY[0x277CCC2D8];
    v8 = 0;
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v20 = v18;
      v21 = HRLogSensitiveClassName();
      v24 = 138543362;
      v25 = v21;
      _os_log_impl(&dword_229486000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring sample from incompatible tachogram version", &v24, 0xCu);

      v8 = 0;
    }

    goto LABEL_15;
  }

  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2D8];
  v8 = 0;
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = v7;
    v11 = HRLogSensitiveClassName();
    v24 = 138543362;
    v25 = v11;
    _os_log_impl(&dword_229486000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring sample from non-background context", &v24, 0xCu);

    v8 = 0;
  }

LABEL_16:

  v22 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)_queue_filterSamplesByDateThreshold:(id)threshold
{
  v23 = *MEMORY[0x277D85DE8];
  thresholdCopy = threshold;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-172800.0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__HRAtrialFibrillationEventDetector__queue_filterSamplesByDateThreshold___block_invoke;
  v15[3] = &unk_2786607F8;
  v6 = v5;
  v16 = v6;
  v7 = [thresholdCopy hk_filter:v15];
  v8 = [v7 count];
  if (v8 < [thresholdCopy count])
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = HRLogSensitiveClassName();
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(thresholdCopy, "count") - objc_msgSend(v7, "count")}];
      *buf = 138543874;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_229486000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping analysis of %@ samples earlier than threshold date %@", buf, 0x20u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t __73__HRAtrialFibrillationEventDetector__queue_filterSamplesByDateThreshold___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 startDate];
  v4 = [v3 hk_isAfterDate:*(a1 + 32)];

  return v4;
}

- (void)_queue_analyzeFilteredSeriesSamples:(id)samples lastAnchor:(id)anchor
{
  anchorCopy = anchor;
  queue = self->_queue;
  samplesCopy = samples;
  dispatch_assert_queue_V2(queue);
  array = [MEMORY[0x277CBEB18] array];
  [array addObjectsFromArray:samplesCopy];

  [array sortUsingComparator:&__block_literal_global_337];
  v10 = MEMORY[0x277D105E0];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v19 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __84__HRAtrialFibrillationEventDetector__queue_analyzeFilteredSeriesSamples_lastAnchor___block_invoke_2;
  v16[3] = &unk_278660840;
  v16[4] = self;
  v13 = array;
  v17 = v13;
  v14 = anchorCopy;
  v18 = v14;
  LOBYTE(v10) = [v10 performWriteTransactionWithHealthDatabase:database error:&v19 block:v16];
  v15 = v19;

  if ((v10 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [HRAtrialFibrillationEventDetector _queue_analyzeFilteredSeriesSamples:lastAnchor:];
    }
  }
}

uint64_t __84__HRAtrialFibrillationEventDetector__queue_analyzeFilteredSeriesSamples_lastAnchor___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __84__HRAtrialFibrillationEventDetector__queue_analyzeFilteredSeriesSamples_lastAnchor___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _currentAlgorithmVersion];
  v3 = [*(a1 + 32) _queue_lastAlgorithmVersionUsed];
  v4 = v3;
  if (v3 && v2 != [v3 integerValue])
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = v5;
      v8 = HRLogSensitiveClassName();
      v15 = 138543874;
      v16 = v8;
      v17 = 2048;
      v18 = [v4 integerValue];
      v19 = 2048;
      v20 = v2;
      _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Algorithm version changed from %ld to %ld: resetting confirmation cycle", &v15, 0x20u);
    }

    [*(a1 + 32) _queue_endConfirmationCycleIfNeeded];
  }

  if ([*(a1 + 40) count])
  {
    do
    {
      v9 = [*(a1 + 40) hk_dequeue];
      v10 = [*(a1 + 32) _queue_confirmationCycleSamples];
      v11 = [v10 arrayByAddingObject:v9];

      v12 = [*(a1 + 32) _queue_analyzeCurrentConfirmationCycleSamples:v11 withAlgorithmVersion:v2];
    }

    while ([*(a1 + 40) count]);
    [*(a1 + 32) _queue_setLastAnalyzedSampleAnchor:*(a1 + 48)];
    if (v12)
    {
      [*(a1 + 32) _queue_requestAnotherTachogram];
    }
  }

  else
  {
    [*(a1 + 32) _queue_setLastAnalyzedSampleAnchor:*(a1 + 48)];
  }

  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)_queue_analyzeCurrentConfirmationCycleSamples:(id)samples withAlgorithmVersion:(int64_t)version
{
  v58 = *MEMORY[0x277D85DE8];
  queue = self->_queue;
  samplesCopy = samples;
  dispatch_assert_queue_V2(queue);
  v8 = [(HRAtrialFibrillationEventDetector *)self _queue_filterSamplesByDateThreshold:samplesCopy];

  if ([v8 count])
  {
    v48 = 0;
    v49 = &v48;
    v50 = 0x3032000000;
    v51 = __Block_byref_object_copy__4;
    v52 = __Block_byref_object_dispose__4;
    firstObject = [v8 firstObject];
    startDate = [firstObject startDate];

    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__4;
    v46 = __Block_byref_object_dispose__4;
    firstObject2 = [v8 firstObject];
    endDate = [firstObject2 endDate];

    _HKInitializeLogging();
    v11 = MEMORY[0x277CCC2D8];
    v12 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HRLogSensitiveClassName();
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __104__HRAtrialFibrillationEventDetector__queue_analyzeCurrentConfirmationCycleSamples_withAlgorithmVersion___block_invoke;
      v41[3] = &unk_278660868;
      v41[4] = &v48;
      v41[5] = &v42;
      v14 = [v8 hk_map:v41];
      *buf = 138543618;
      v55 = v13;
      v56 = 2112;
      v57 = v14;
      _os_log_impl(&dword_229486000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending sample(s) to analyzer: %@", buf, 0x16u);
    }

    v15 = [(HRAtrialFibrillationEventDetector *)self _processTachograms:v8 withAlgorithmVersion:version];
    analyticsCollector = self->_analyticsCollector;
    v17 = objc_alloc(MEMORY[0x277CCA970]);
    v18 = [v17 initWithStartDate:v49[5] endDate:v43[5]];
    [(HRAtrialFibrillationAnalyticsCollector *)analyticsCollector collectAnalyticsForResult:v15 algorithmVersion:version samplesDateInterval:v18];

    -[HRAtrialFibrillationAnalyticsCollector updateCountAnalyzedTachogramsWithCount:keyValueDomain:](self->_analyticsCollector, "updateCountAnalyzedTachogramsWithCount:keyValueDomain:", [v8 count], self->_syncedKeyValueDomain);
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:version];
    [(HRAtrialFibrillationEventDetector *)self _queue_setLastAlgorithmVersionUsed:v19];

    lastObject = [v8 lastObject];
    endDate2 = [lastObject endDate];
    [(HRAtrialFibrillationEventDetector *)self _queue_setLatestAnalyzedSampleDate:endDate2];

    userShouldBeAlerted = [v15 userShouldBeAlerted];
    if (userShouldBeAlerted)
    {
      _HKInitializeLogging();
      v23 = *v11;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = HRLogSensitiveClassName();
        uuidsForNextCycle = [v15 uuidsForNextCycle];
        *buf = 138543618;
        v55 = v24;
        v56 = 2112;
        v57 = uuidsForNextCycle;
        _os_log_impl(&dword_229486000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] Result indicated user should be notified, UUIDs for next cycle: %@", buf, 0x16u);
      }

      firstObject3 = [v8 firstObject];
      endDate3 = [firstObject3 endDate];
      uuidsForNextCycle4 = [v8 hk_foldRightFrom:endDate3 with:&__block_literal_global_346];

      positiveUUIDs = [v15 positiveUUIDs];
      [(HRAtrialFibrillationEventDetector *)self _queue_alertUserWithDate:uuidsForNextCycle4 positiveTachogramUUIDs:positiveUUIDs];

      [(HRAtrialFibrillationEventDetector *)self _queue_endConfirmationCycleIfNeeded];
    }

    else
    {
      if (![v15 tachogramShouldBeRequested])
      {
        _HKInitializeLogging();
        v35 = *v11;
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
        {
          v36 = v35;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            v37 = HRLogSensitiveClassName();
            uuidsForNextCycle2 = [v15 uuidsForNextCycle];
            [(HRAtrialFibrillationEventDetector *)v37 _queue_analyzeCurrentConfirmationCycleSamples:uuidsForNextCycle2 withAlgorithmVersion:buf];
          }
        }

        [(HRAtrialFibrillationEventDetector *)self _queue_endConfirmationCycleIfNeeded];
        v30 = 0;
        goto LABEL_19;
      }

      _HKInitializeLogging();
      v31 = *v11;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = HRLogSensitiveClassName();
        uuidsForNextCycle3 = [v15 uuidsForNextCycle];
        *buf = 138543618;
        v55 = v32;
        v56 = 2112;
        v57 = uuidsForNextCycle3;
        _os_log_impl(&dword_229486000, v31, OS_LOG_TYPE_DEFAULT, "[%{public}@] Result indicated more samples are needed, UUIDs for next cycle: %@", buf, 0x16u);
      }

      uuidsForNextCycle4 = [v15 uuidsForNextCycle];
      v34 = [(HRAtrialFibrillationEventDetector *)self _queue_orderedConfirmationCycleSamplesFromSamples:v8 requestedUUIDs:uuidsForNextCycle4];
      [(HRAtrialFibrillationEventDetector *)self _queue_setConfirmationCycleSamples:v34];
    }

    v30 = userShouldBeAlerted ^ 1;
LABEL_19:

    _Block_object_dispose(&v42, 8);
    _Block_object_dispose(&v48, 8);

    goto LABEL_20;
  }

  [(HRAtrialFibrillationEventDetector *)self _queue_endConfirmationCycleIfNeeded];
  v30 = 0;
LABEL_20:

  v39 = *MEMORY[0x277D85DE8];
  return v30;
}

id __104__HRAtrialFibrillationEventDetector__queue_analyzeCurrentConfirmationCycleSamples_withAlgorithmVersion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = a2;
  v5 = [v4 startDate];
  v6 = [v3 earlierDate:v5];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(*(a1 + 40) + 8) + 40);
  v10 = [v4 endDate];
  v11 = [v9 laterDate:v10];
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = MEMORY[0x277CCACA8];
  v15 = [v4 UUID];
  v16 = [v4 startDate];
  v17 = [v4 endDate];

  v18 = [v14 stringWithFormat:@"(UUID: %@, startDate: %@, endDate: %@)", v15, v16, v17];

  return v18;
}

id __104__HRAtrialFibrillationEventDetector__queue_analyzeCurrentConfirmationCycleSamples_withAlgorithmVersion___block_invoke_343(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 endDate];
  v6 = [v4 laterDate:v5];

  return v6;
}

- (id)_processTachograms:(id)tachograms withAlgorithmVersion:(int64_t)version
{
  v20 = *MEMORY[0x277D85DE8];
  tachogramsCopy = tachograms;
  _unitTest_processTachograms = [(HRAtrialFibrillationEventDetector *)self _unitTest_processTachograms];
  v8 = _unitTest_processTachograms;
  if (_unitTest_processTachograms)
  {
    v9 = (*(_unitTest_processTachograms + 16))(_unitTest_processTachograms, tachogramsCopy);
  }

  else
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = HRLogSensitiveClassName();
      v16 = 138543618;
      v17 = v12;
      v18 = 2048;
      versionCopy = version;
      _os_log_impl(&dword_229486000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analyzing tachograms with algorithm version %ld", &v16, 0x16u);
    }

    v13 = [objc_alloc(MEMORY[0x277D13018]) initWithIrregularRhythmVersion:{-[HRAtrialFibrillationEventDetector _currentAlgorithmVersion](self, "_currentAlgorithmVersion")}];
    v9 = [v13 processTachograms:tachogramsCopy];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

- (int64_t)_currentAlgorithmVersion
{
  availabilityManager = self->_availabilityManager;
  v7 = 0;
  v3 = [(HDHRIrregularRhythmNotificationsFeatureAvailabilityManager *)availabilityManager highestAvailableOnboardedAlgorithmVersionWithError:&v7];
  v4 = v7;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [HRAtrialFibrillationEventDetector _currentAlgorithmVersion];
    }

    integerValue = 1;
  }

  return integerValue;
}

- (BOOL)_queue_detectionDisabled
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(HRAtrialFibrillationEventDetector *)self _unitTesting])
  {

    return [(HRAtrialFibrillationEventDetector *)self _unitTest_detectionDisabled];
  }

  else
  {
    statusManager = self->_statusManager;
    v8 = 0;
    v5 = [(HKFeatureStatusManager *)statusManager featureStatusWithError:&v8];
    v6 = v8;
    if (v5)
    {
      v7 = [(HRAtrialFibrillationEventDetector *)self _queue_detectionDisabledWithFeatureStatus:v5];
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        [HRAtrialFibrillationEventDetector _queue_detectionDisabled];
      }

      v7 = 0;
    }

    return v7;
  }
}

- (BOOL)_queue_detectionDisabledWithFeatureStatus:(id)status
{
  v20 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  dispatch_assert_queue_V2(self->_queue);
  if ([(HRAtrialFibrillationEventDetector *)self _unitTesting])
  {
    _unitTest_detectionDisabled = [(HRAtrialFibrillationEventDetector *)self _unitTest_detectionDisabled];
  }

  else
  {
    v6 = *MEMORY[0x277CCBEA0];
    v7 = [statusCopy objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
    areAllRequirementsSatisfied = [v7 areAllRequirementsSatisfied];

    if ((areAllRequirementsSatisfied & 1) == 0)
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC2D8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = HRLogSensitiveClassName();
        v12 = [statusCopy objectForKeyedSubscript:v6];
        unsatisfiedRequirementIdentifiers = [v12 unsatisfiedRequirementIdentifiers];
        v16 = 138543618;
        v17 = v11;
        v18 = 2114;
        v19 = unsatisfiedRequirementIdentifiers;
        _os_log_impl(&dword_229486000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Detection is disabled, unsatisfied usage requirements: %{public}@", &v16, 0x16u);
      }
    }

    _unitTest_detectionDisabled = areAllRequirementsSatisfied ^ 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return _unitTest_detectionDisabled;
}

- (BOOL)_queue_inConfirmationCycle
{
  dispatch_assert_queue_V2(self->_queue);
  _queue_confirmationCycleSamples = [(HRAtrialFibrillationEventDetector *)self _queue_confirmationCycleSamples];
  v4 = [_queue_confirmationCycleSamples count] != 0;

  return v4;
}

- (void)_queue_endConfirmationCycleIfNeeded
{
  v9 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if ([(HRAtrialFibrillationEventDetector *)self _queue_inConfirmationCycle])
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = HRLogSensitiveClassName();
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_229486000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ending current confirmation cycle", &v7, 0xCu);
    }

    [(HRAtrialFibrillationEventDetector *)self _queue_setConfirmationCycleSamples:MEMORY[0x277CBEBF8]];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_requestAnotherTachogram
{
  v12 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  _unitTest_moreTachogramsRequestedHandler = [(HRAtrialFibrillationEventDetector *)self _unitTest_moreTachogramsRequestedHandler];

  if (_unitTest_moreTachogramsRequestedHandler)
  {
    _unitTest_moreTachogramsRequestedHandler2 = [(HRAtrialFibrillationEventDetector *)self _unitTest_moreTachogramsRequestedHandler];
    _unitTest_moreTachogramsRequestedHandler2[2]();
    v4 = *MEMORY[0x277D85DE8];
  }

  else
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = HRLogSensitiveClassName();
      *buf = 138543362;
      v11 = v7;
      _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requesting background sample", buf, 0xCu);
    }

    v8 = *MEMORY[0x277D85DE8];
  }
}

- (void)_queue_alertUserWithDate:(id)date positiveTachogramUUIDs:(id)ds
{
  v50[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dsCopy = ds;
  dispatch_assert_queue_V2(self->_queue);
  _unitTest_userAlertedHandler = [(HRAtrialFibrillationEventDetector *)self _unitTest_userAlertedHandler];

  if (_unitTest_userAlertedHandler)
  {
    _unitTest_userAlertedHandler2 = [(HRAtrialFibrillationEventDetector *)self _unitTest_userAlertedHandler];
    (_unitTest_userAlertedHandler2)[2](_unitTest_userAlertedHandler2, dateCopy, dsCopy);
  }

  else
  {
    v45 = 0;
    v10 = [(HRAtrialFibrillationEventDetector *)self _getProductVersionWithError:&v45];
    v11 = v45;
    if (v10)
    {
      v49 = *MEMORY[0x277CCDFB8];
      v50[0] = v10;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
      v13 = MEMORY[0x277CCD0B0];
      atrialFibrillationEventType = [MEMORY[0x277CCD0C0] atrialFibrillationEventType];
      v15 = [v13 categorySampleWithType:atrialFibrillationEventType value:0 startDate:dateCopy endDate:dateCopy metadata:v12];

      WeakRetained = objc_loadWeakRetained(&self->_profile);
      deviceManager = [WeakRetained deviceManager];
      v44 = 0;
      v18 = [deviceManager currentDeviceEntityWithError:&v44];
      v11 = v44;

      if (v18)
      {
        v41 = v12;
        v19 = objc_loadWeakRetained(&self->_profile);
        dataProvenanceManager = [v19 dataProvenanceManager];
        v40 = v18;
        v21 = [dataProvenanceManager defaultLocalDataProvenanceWithDeviceEntity:v18];

        v22 = objc_loadWeakRetained(&self->_profile);
        dataManager = [v22 dataManager];
        v48 = v15;
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
        v43 = 0;
        v39 = v21;
        v25 = [dataManager insertDataObjects:v24 withProvenance:v21 creationDate:&v43 error:CFAbsoluteTimeGetCurrent()];
        v26 = v15;
        v27 = v25;
        v28 = v43;

        if (v27)
        {
          v29 = objc_loadWeakRetained(&self->_profile);
          associationManager = [v29 associationManager];
          v38 = v26;
          uUID = [v26 UUID];
          v42 = v28;
          v32 = [associationManager associateObjectUUIDs:dsCopy objectUUID:uUID error:&v42];
          v11 = v42;

          _HKInitializeLogging();
          v33 = *MEMORY[0x277CCC2D8];
          v34 = *MEMORY[0x277CCC2D8];
          if (v32)
          {
            v12 = v41;
            v15 = v38;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v35 = v33;
              v36 = HRLogSensitiveClassName();
              *buf = 138543362;
              v47 = v36;
              _os_log_impl(&dword_229486000, v35, OS_LOG_TYPE_DEFAULT, "[%{public}@] Saved event with associated positive samples", buf, 0xCu);

              v15 = v38;
              v12 = v41;
            }
          }

          else
          {
            v12 = v41;
            v15 = v38;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              [HRAtrialFibrillationEventDetector _queue_alertUserWithDate:positiveTachogramUUIDs:];
            }
          }

          [(HRAtrialFibrillationEventDetector *)self _queue_forceHealthKitSync];
        }

        else
        {
          _HKInitializeLogging();
          if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
          {
            [HRAtrialFibrillationEventDetector _queue_alertUserWithDate:positiveTachogramUUIDs:];
          }

          v11 = v28;
          v12 = v41;
          v15 = v26;
        }

        v18 = v40;
      }

      else
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
        {
          [HRAtrialFibrillationEventDetector _queue_alertUserWithDate:positiveTachogramUUIDs:];
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        [HRAtrialFibrillationEventDetector _queue_alertUserWithDate:positiveTachogramUUIDs:];
      }
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (id)_getProductVersionWithError:(id *)error
{
  v3 = [(HDHRIrregularRhythmNotificationsFeatureAvailabilityManager *)self->_availabilityManager pairedFeatureAttributesWithError:error];
  watchAttributes = [v3 watchAttributes];
  updateVersion = [watchAttributes updateVersion];

  return updateVersion;
}

- (void)_queue_forceHealthKitSync
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [HDHRHealthKitSyncManager alloc];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [(HDHRHealthKitSyncManager *)v3 initWithProfile:WeakRetained];

  [(HDHRHealthKitSyncManager *)v5 triggerImmediateSyncWithReason:@"New Atrial Fibrillation / Antimony Notification sample added" loggingCategory:*MEMORY[0x277CCC2D8]];
}

- (id)_queue_confirmationCycleSamples
{
  dispatch_assert_queue_V2(self->_queue);
  cachedConfirmationCycleSamples = self->_cachedConfirmationCycleSamples;
  if (cachedConfirmationCycleSamples)
  {
    goto LABEL_4;
  }

  localKeyValueDomain = self->_localKeyValueDomain;
  v19 = 0;
  v5 = [(HDKeyValueDomain *)localKeyValueDomain dataForKey:@"ConfirmationCycleUUIDs" error:&v19];
  v6 = v19;
  v7 = v6;
  if (v5)
  {
    array = [MEMORY[0x277CBEB18] array];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __68__HRAtrialFibrillationEventDetector__queue_confirmationCycleSamples__block_invoke;
    v17 = &unk_2786608B0;
    v18 = array;
    v9 = array;
    [v5 hk_enumerateUUIDsUsingBlock:&v14];
    v10 = [(HRAtrialFibrillationEventDetector *)self _queue_orderedConfirmationCycleSamplesFromUUIDs:v9, v14, v15, v16, v17];
    v11 = self->_cachedConfirmationCycleSamples;
    self->_cachedConfirmationCycleSamples = v10;

    cachedConfirmationCycleSamples = self->_cachedConfirmationCycleSamples;
LABEL_4:
    v12 = cachedConfirmationCycleSamples;
    goto LABEL_5;
  }

  if (v6)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [HRAtrialFibrillationEventDetector _queue_confirmationCycleSamples];
    }

    v12 = 0;
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

LABEL_5:

  return v12;
}

- (id)_queue_orderedConfirmationCycleSamplesFromUUIDs:(id)ds
{
  queue = self->_queue;
  dsCopy = ds;
  dispatch_assert_queue_V2(queue);
  v6 = MEMORY[0x277D10848];
  heartbeatSeriesType = [MEMORY[0x277CCD920] heartbeatSeriesType];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v9 = HDDataEntityPredicateForDataUUIDs();

  v14 = 0;
  v10 = [v6 samplesWithType:heartbeatSeriesType profile:WeakRetained encodingOptions:0 predicate:v9 limit:0 anchor:0 error:&v14];
  v11 = v14;

  if (!v10)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [HRAtrialFibrillationEventDetector _queue_orderedConfirmationCycleSamplesFromUUIDs:];
    }
  }

  v12 = [v10 sortedArrayUsingComparator:&__block_literal_global_357];

  return v12;
}

uint64_t __85__HRAtrialFibrillationEventDetector__queue_orderedConfirmationCycleSamplesFromUUIDs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_queue_orderedConfirmationCycleSamplesFromSamples:(id)samples requestedUUIDs:(id)ds
{
  dsCopy = ds;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __102__HRAtrialFibrillationEventDetector__queue_orderedConfirmationCycleSamplesFromSamples_requestedUUIDs___block_invoke;
  v12[3] = &unk_2786607F8;
  v6 = dsCopy;
  v13 = v6;
  v7 = [samples hk_filter:v12];
  v8 = [v7 sortedArrayUsingComparator:&__block_literal_global_359];

  v9 = [v8 count];
  if (v9 != [v6 count])
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [HRAtrialFibrillationEventDetector _queue_orderedConfirmationCycleSamplesFromSamples:v10 requestedUUIDs:?];
    }
  }

  return v8;
}

uint64_t __102__HRAtrialFibrillationEventDetector__queue_orderedConfirmationCycleSamplesFromSamples_requestedUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 UUID];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t __102__HRAtrialFibrillationEventDetector__queue_orderedConfirmationCycleSamplesFromSamples_requestedUUIDs___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_queue_setConfirmationCycleSamples:(id)samples
{
  v23 = *MEMORY[0x277D85DE8];
  samplesCopy = samples;
  dispatch_assert_queue_V2(self->_queue);
  if (([samplesCopy isEqual:self->_cachedConfirmationCycleSamples] & 1) == 0)
  {
    data = [MEMORY[0x277CBEB28] data];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = samplesCopy;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          uUID = [*(*(&v18 + 1) + 8 * v11) UUID];
          [data hk_appendBytesWithUUID:uUID];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    localKeyValueDomain = self->_localKeyValueDomain;
    v17 = 0;
    v14 = [(HDKeyValueDomain *)localKeyValueDomain setData:data forKey:@"ConfirmationCycleUUIDs" error:&v17];
    v15 = v17;
    if ((v14 & 1) == 0)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        [HRAtrialFibrillationEventDetector _queue_setConfirmationCycleSamples:];
      }
    }

    objc_storeStrong(&self->_cachedConfirmationCycleSamples, samples);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_queue_setLastAlgorithmVersionUsed:(id)used
{
  usedCopy = used;
  dispatch_assert_queue_V2(self->_queue);
  if (([usedCopy isEqual:self->_cachedLastAlgorithmVersionUsed] & 1) == 0)
  {
    localKeyValueDomain = self->_localKeyValueDomain;
    v9 = 0;
    v7 = [(HDKeyValueDomain *)localKeyValueDomain setNumber:usedCopy forKey:@"LastAlgorithmVersionUsed" error:&v9];
    v8 = v9;
    if ((v7 & 1) == 0)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        [HRAtrialFibrillationEventDetector _queue_setLastAlgorithmVersionUsed:];
      }
    }

    objc_storeStrong(&self->_cachedLastAlgorithmVersionUsed, used);
  }
}

- (id)_queue_lastAlgorithmVersionUsed
{
  dispatch_assert_queue_V2(self->_queue);
  cachedLastAlgorithmVersionUsed = self->_cachedLastAlgorithmVersionUsed;
  if (!cachedLastAlgorithmVersionUsed)
  {
    localKeyValueDomain = self->_localKeyValueDomain;
    v11 = 0;
    v5 = [(HDKeyValueDomain *)localKeyValueDomain numberForKey:@"LastAlgorithmVersionUsed" error:&v11];
    v6 = v11;
    v7 = v6;
    if (v5)
    {
      v8 = 1;
    }

    else
    {
      v8 = v6 == 0;
    }

    if (!v8)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        [HRAtrialFibrillationEventDetector _queue_lastAlgorithmVersionUsed];
      }
    }

    v9 = self->_cachedLastAlgorithmVersionUsed;
    self->_cachedLastAlgorithmVersionUsed = v5;

    cachedLastAlgorithmVersionUsed = self->_cachedLastAlgorithmVersionUsed;
  }

  return cachedLastAlgorithmVersionUsed;
}

- (void)_queue_setLatestAnalyzedSampleDate:(id)date
{
  dateCopy = date;
  dispatch_assert_queue_V2(self->_queue);
  if (([dateCopy isEqual:self->_cachedLatestAnalyzedSampleDate] & 1) == 0)
  {
    syncedKeyValueDomain = self->_syncedKeyValueDomain;
    v7 = *MEMORY[0x277CCE4A0];
    v10 = 0;
    v8 = [(HDKeyValueDomain *)syncedKeyValueDomain setDate:dateCopy forKey:v7 error:&v10];
    v9 = v10;
    if ((v8 & 1) == 0)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        [HRAtrialFibrillationEventDetector _queue_setLatestAnalyzedSampleDate:];
      }
    }

    objc_storeStrong(&self->_cachedLatestAnalyzedSampleDate, date);
  }
}

- (id)_queue_latestAnalyzedSampleDate
{
  dispatch_assert_queue_V2(self->_queue);
  cachedLatestAnalyzedSampleDate = self->_cachedLatestAnalyzedSampleDate;
  if (!cachedLatestAnalyzedSampleDate)
  {
    syncedKeyValueDomain = self->_syncedKeyValueDomain;
    v5 = *MEMORY[0x277CCE4A0];
    v12 = 0;
    v6 = [(HDKeyValueDomain *)syncedKeyValueDomain dateForKey:v5 error:&v12];
    v7 = v12;
    v8 = v7;
    if (v6)
    {
      v9 = 1;
    }

    else
    {
      v9 = v7 == 0;
    }

    if (!v9)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        [HRAtrialFibrillationEventDetector _queue_latestAnalyzedSampleDate];
      }
    }

    v10 = self->_cachedLatestAnalyzedSampleDate;
    self->_cachedLatestAnalyzedSampleDate = v6;

    cachedLatestAnalyzedSampleDate = self->_cachedLatestAnalyzedSampleDate;
  }

  return cachedLatestAnalyzedSampleDate;
}

- (void)_queue_setLastAnalyzedSampleAnchor:(id)anchor
{
  anchorCopy = anchor;
  dispatch_assert_queue_V2(self->_queue);
  localKeyValueDomain = self->_localKeyValueDomain;
  v10 = 0;
  v6 = [(HDKeyValueDomain *)localKeyValueDomain setNumber:anchorCopy forKey:@"LastAnalyzedSampleAnchor" error:&v10];
  v7 = v10;
  if ((v6 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [HRAtrialFibrillationEventDetector _queue_setLastAnalyzedSampleAnchor:];
    }
  }

  cachedLastAnalyzedSampleAnchor = self->_cachedLastAnalyzedSampleAnchor;
  self->_cachedLastAnalyzedSampleAnchor = anchorCopy;
  v9 = anchorCopy;
}

- (id)_queue_lastAnalyzedSampleAnchor
{
  dispatch_assert_queue_V2(self->_queue);
  cachedLastAnalyzedSampleAnchor = self->_cachedLastAnalyzedSampleAnchor;
  if (cachedLastAnalyzedSampleAnchor)
  {
    goto LABEL_4;
  }

  localKeyValueDomain = self->_localKeyValueDomain;
  v11 = 0;
  v5 = [(HDKeyValueDomain *)localKeyValueDomain numberForKey:@"LastAnalyzedSampleAnchor" error:&v11];
  v6 = v11;
  v7 = v6;
  if (v5)
  {
LABEL_3:
    v8 = self->_cachedLastAnalyzedSampleAnchor;
    self->_cachedLastAnalyzedSampleAnchor = v5;

    cachedLastAnalyzedSampleAnchor = self->_cachedLastAnalyzedSampleAnchor;
LABEL_4:
    v9 = cachedLastAnalyzedSampleAnchor;
    goto LABEL_5;
  }

  if (!v6)
  {
    v5 = &unk_283CD2AA0;
    goto LABEL_3;
  }

  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
  {
    [HRAtrialFibrillationEventDetector _queue_lastAnalyzedSampleAnchor];
  }

  v9 = 0;
LABEL_5:

  return v9;
}

- (id)diagnosticDescription
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__HRAtrialFibrillationEventDetector_diagnosticDescription__block_invoke;
  v5[3] = &unk_2786608F8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __58__HRAtrialFibrillationEventDetector_diagnosticDescription__block_invoke(uint64_t a1)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 56) hk_map:&__block_literal_global_364];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Confirmation cycle samples: %@", v2];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Last algorithm version used: %@", *(*(a1 + 32) + 64), v3];
  v12[1] = v4;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Latest analyzed sample date: %@", *(*(a1 + 32) + 72)];
  v12[2] = v5;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Last analyzed sample anchor: %@", *(*(a1 + 32) + 80)];
  v12[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
  v8 = [v7 componentsJoinedByString:@"\n"];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

- (void)samplesAdded:anchor:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_2_4();
  v3 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] Failed to retrieve IRN's feature status; skipping analysis after samples added: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_analyzeFilteredSeriesSamples:lastAnchor:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_2_4();
  v3 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] Failed to perform write analysis write transaction: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_analyzeCurrentConfirmationCycleSamples:(uint64_t)a3 withAlgorithmVersion:.cold.1(void *a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_1(a1, a2, a3, 5.8382e-34);
  _os_log_debug_impl(&dword_229486000, v6, OS_LOG_TYPE_DEBUG, "[%{public}@] Result indicated no action is needed, UUIDs for next cycle: %@", v5, 0x16u);
}

- (void)_currentAlgorithmVersion
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_2_4();
  v3 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] Unable to determine current algorithm version, defaulting to 1.0: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_detectionDisabled
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_2_4();
  v3 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] Failed to retrieve IRN's feature status; reporting 'detection disabled': %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_alertUserWithDate:positiveTachogramUUIDs:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_2_4();
  v3 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] Failed to insert event: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_alertUserWithDate:positiveTachogramUUIDs:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_2_4();
  v3 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] Failed to associate samples: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_alertUserWithDate:positiveTachogramUUIDs:.cold.3()
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_2_4();
  v3 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] Failed to get current device entity: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_alertUserWithDate:positiveTachogramUUIDs:.cold.4()
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_2_4();
  v3 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] Failed to get version for product: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_confirmationCycleSamples
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_2_4();
  v3 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] Failed to read confirmation cycle UUIDs from protected key value store: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_orderedConfirmationCycleSamplesFromUUIDs:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_2_4();
  v3 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] Failed to read confirmation cycle samples from UUIDs %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_orderedConfirmationCycleSamplesFromSamples:(void *)a1 requestedUUIDs:.cold.1(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = HRLogSensitiveClassName();
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_229486000, v1, OS_LOG_TYPE_ERROR, "[%{public}@] Unexpected number of requested confirmation cycle UUIDs", &v4, 0xCu);

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_queue_setConfirmationCycleSamples:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_2_4();
  v3 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] Failed to set confirmation cycle UUIDs in protected key value store: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_setLastAlgorithmVersionUsed:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_2_4();
  v3 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] Failed to set last used algorithm version in protected key value store: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_lastAlgorithmVersionUsed
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_2_4();
  v3 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] Failed to read last algorithm version used from protected key value store: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_setLatestAnalyzedSampleDate:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_2_4();
  v3 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] Failed to set last analyzed sample date in protected key value store: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_latestAnalyzedSampleDate
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_2_4();
  v3 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] Failed to read last analyzed sample date from protected key value store: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_setLastAnalyzedSampleAnchor:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_2_4();
  v3 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] Failed to set last analyzed sample anchor in protected key value store: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_lastAnalyzedSampleAnchor
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_2_4();
  v3 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_3(&dword_229486000, v4, v5, "[%{public}@] Failed to read last analyzed sample anchor from protected key value store: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end