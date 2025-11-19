@interface HDHeadphoneExposureNotificationCenter
- (HDHeadphoneExposureNotificationCenter)initWithProfile:(id)a3 syncManager:(id)a4;
- (id)postSevenDayDoseNotification:(id)a3 nowDate:(id)a4 analyticsInfo:(id)a5 error:(id *)a6;
- (void)_reportHeadphoneNotificationWithNowDate:(id)a3 eventDuration:(double)a4 exposureLevel:(double)a5 exposureDuration:(double)a6 hasPrunableData:(BOOL)a7 isDeviceLocked:(BOOL)a8 analyticsInfo:(id)a9;
@end

@implementation HDHeadphoneExposureNotificationCenter

- (HDHeadphoneExposureNotificationCenter)initWithProfile:(id)a3 syncManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = HDHeadphoneExposureNotificationCenter;
  v8 = [(HDHeadphoneExposureNotificationCenter *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, v6);
    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 bundleIdentifier];

    v12 = [objc_alloc(MEMORY[0x277D0EEE0]) initWithBundleIdentifier:v11];
    notificationCenter = v9->_notificationCenter;
    v9->_notificationCenter = v12;

    objc_storeStrong(&v9->_notificationSyncManager, a4);
    WeakRetained = objc_loadWeakRetained(&v9->_profile);
    v15 = [WeakRetained cloudSyncManager];
    cloudSyncManager = v9->_cloudSyncManager;
    v9->_cloudSyncManager = v15;

    v17 = v9;
  }

  return v9;
}

- (id)postSevenDayDoseNotification:(id)a3 nowDate:(id)a4 analyticsInfo:(id)a5 error:(id *)a6
{
  v75[3] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (([MEMORY[0x277D11268] isHeadphoneExposureNotificationsEnabled] & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a6 code:111 description:@"Cannot Send 7-Day HAEN: Feature Disabled."];
    v56 = 0;
    goto LABEL_23;
  }

  v13 = [v10 statistics];
  v70 = 0;
  v14 = [v13 hk_hearingSevenDayDosePercentageWithError:&v70];
  v15 = v70;
  if (v14)
  {
    v69 = 0;
    v16 = [v13 hk_hearingSevenDayDoseDateIntervalEndingBeforeDate:v11 error:&v69];
    v17 = v69;
    v18 = v17;
    if (!v16)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a6 code:100 description:@"invalid statistics interval" underlyingError:v17];
      v56 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v63 = v17;
    v64 = v15;
    [v13 averageQuantity];
    v19 = v65 = v16;
    v20 = [MEMORY[0x277CCDAB0] decibelAWeightedSoundPressureLevelUnit];
    [v19 doubleValueForUnit:v20];
    v22 = v21;

    v23 = [v13 duration];
    v24 = [MEMORY[0x277CCDAB0] secondUnit];
    [v23 doubleValueForUnit:v24];
    v26 = v25;

    v27 = *MEMORY[0x277D0EEC8];
    v75[0] = v14;
    v28 = *MEMORY[0x277D0EED0];
    v74[0] = v27;
    v74[1] = v28;
    v29 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
    v75[1] = v29;
    v74[2] = *MEMORY[0x277D0EED8];
    v30 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "includesPrunableData")}];
    v75[2] = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:3];

    v16 = v65;
    v62 = v31;
    v61 = [objc_alloc(MEMORY[0x277D0EEE8]) initWithEventType:2003133803 exposureLevel:v65 dateInterval:v31 metadata:v22];
    v32 = [HAENotificationCenter addHAENotificationEvent:"addHAENotificationEvent:error:" error:?];
    if (v32)
    {
      v33 = v32;
      WeakRetained = objc_loadWeakRetained(&self->_profile);
      v35 = [WeakRetained dataManager];
      v60 = v33;
      v73 = v33;
      v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
      v37 = [v35 insertDataObjects:v36 error:a6];

      if (!v37)
      {
        v56 = 0;
        v15 = v64;
        v16 = v65;
        v18 = v63;
        v32 = v60;
        goto LABEL_20;
      }

      _HKInitializeLogging();
      v38 = *MEMORY[0x277CCC2C8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
      {
        v39 = v38;
        v40 = objc_opt_class();
        *buf = 138543362;
        v72 = v40;
        v41 = v40;
        _os_log_impl(&dword_251764000, v39, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requesting nanoSync due to HAEN delivery.", buf, 0xCu);
      }

      v42 = objc_loadWeakRetained(&self->_profile);
      v43 = [v42 nanoSyncManager];
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __98__HDHeadphoneExposureNotificationCenter_postSevenDayDoseNotification_nowDate_analyticsInfo_error___block_invoke;
      v68[3] = &unk_2796C67D8;
      v68[4] = self;
      [v43 syncHealthDataWithOptions:0 reason:@"HAEN HKCategorySample Inserted" completion:v68];

      _HKInitializeLogging();
      v44 = *MEMORY[0x277CCC2C8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251764000, v44, OS_LOG_TYPE_DEFAULT, "Requesting cloudSync due to HAEN delivery.", buf, 2u);
      }

      v45 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:1 pull:0 lite:1];
      cloudSyncManager = self->_cloudSyncManager;
      v59 = v45;
      v47 = [objc_alloc(MEMORY[0x277CCD140]) initWithChangesSyncRequest:v45];
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __98__HDHeadphoneExposureNotificationCenter_postSevenDayDoseNotification_nowDate_analyticsInfo_error___block_invoke_318;
      v67[3] = &unk_2796C67D8;
      v67[4] = self;
      [(HDCloudSyncManager *)cloudSyncManager syncWithRequest:v47 reason:@"HAEN HKCategorySample Inserted" completion:v67];

      v16 = v65;
      [v65 duration];
      v49 = v48;
      v50 = [v10 includesPrunableData];
      v51 = objc_loadWeakRetained(&self->_profile);
      v52 = [v51 database];
      -[HDHeadphoneExposureNotificationCenter _reportHeadphoneNotificationWithNowDate:eventDuration:exposureLevel:exposureDuration:hasPrunableData:isDeviceLocked:analyticsInfo:](self, "_reportHeadphoneNotificationWithNowDate:eventDuration:exposureLevel:exposureDuration:hasPrunableData:isDeviceLocked:analyticsInfo:", v11, v50, [v52 isProtectedDataAvailable] ^ 1, v12, v49, v22, v26);

      notificationSyncManager = self->_notificationSyncManager;
      v66 = 0;
      LOBYTE(v50) = [(HDHeadphoneExposureNotificationSyncManager *)notificationSyncManager notifyHAENotificationAddedWithSample:v60 error:&v66];
      v54 = v66;
      if ((v50 & 1) == 0)
      {
        _HKInitializeLogging();
        v55 = *MEMORY[0x277CCC2C8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_ERROR))
        {
          [HDHeadphoneExposureNotificationCenter postSevenDayDoseNotification:v55 nowDate:? analyticsInfo:? error:?];
        }
      }

      v56 = v60;

      v32 = v60;
    }

    else
    {
      v56 = 0;
    }

    v18 = v63;
    v15 = v64;
LABEL_20:

    goto LABEL_21;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:a6 code:100 description:@"invalid statistics dose" underlyingError:v15];
  v56 = 0;
LABEL_22:

LABEL_23:
  v57 = *MEMORY[0x277D85DE8];

  return v56;
}

void __98__HDHeadphoneExposureNotificationCenter_postSevenDayDoseNotification_nowDate_analyticsInfo_error___block_invoke(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2C8];
  v7 = *MEMORY[0x277CCC2C8];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = v6;
      v12 = 138543362;
      v13 = objc_opt_class();
      v10 = v13;
      _os_log_impl(&dword_251764000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully nano synced 7-Day HAEN HKCategorySample.", &v12, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __98__HDHeadphoneExposureNotificationCenter_postSevenDayDoseNotification_nowDate_analyticsInfo_error___block_invoke_cold_1(a1, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __98__HDHeadphoneExposureNotificationCenter_postSevenDayDoseNotification_nowDate_analyticsInfo_error___block_invoke_318(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2C8];
  v7 = *MEMORY[0x277CCC2C8];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = v6;
      v12 = 138543362;
      v13 = objc_opt_class();
      v10 = v13;
      _os_log_impl(&dword_251764000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully cloud synced 7-Day HAEN HKCategorySample.", &v12, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __98__HDHeadphoneExposureNotificationCenter_postSevenDayDoseNotification_nowDate_analyticsInfo_error___block_invoke_318_cold_1(a1, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_reportHeadphoneNotificationWithNowDate:(id)a3 eventDuration:(double)a4 exposureLevel:(double)a5 exposureDuration:(double)a6 hasPrunableData:(BOOL)a7 isDeviceLocked:(BOOL)a8 analyticsInfo:(id)a9
{
  v11 = a3;
  v12 = a9;
  if (v12)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v14 = [WeakRetained profileType];

    if (v14 == 1)
    {
      if (HKImproveHealthAndActivityAnalyticsAllowed())
      {
        v17 = v11;
        v18 = v12;
        AnalyticsSendEventLazy();
      }
    }

    else
    {
      _HKInitializeLogging();
      v16 = *MEMORY[0x277CCC2C8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
      {
        [HDHeadphoneExposureNotificationCenter _reportHeadphoneNotificationWithNowDate:v16 eventDuration:self exposureLevel:&self->_profile exposureDuration:? hasPrunableData:? isDeviceLocked:? analyticsInfo:?];
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC2C8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
    {
      [HDHeadphoneExposureNotificationCenter _reportHeadphoneNotificationWithNowDate:v15 eventDuration:? exposureLevel:? exposureDuration:? hasPrunableData:? isDeviceLocked:? analyticsInfo:?];
    }
  }
}

id __171__HDHeadphoneExposureNotificationCenter__reportHeadphoneNotificationWithNowDate_eventDuration_exposureLevel_exposureDuration_hasPrunableData_isDeviceLocked_analyticsInfo___block_invoke(uint64_t a1)
{
  v17[9] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v3 = [v2 components:544 fromDate:*(a1 + 32)];

  v16[0] = @"averageSoundLevel";
  v15 = [HDAudioAnalyticsUtilities boundedIntegerForLEQ:*(a1 + 48)];
  v17[0] = v15;
  v16[1] = @"dayOfWeek";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "valueForComponent:", 512)}];
  v17[1] = v4;
  v16[2] = @"eventDuration";
  v5 = [HDAudioAnalyticsUtilities boundedIntegerForEventDuration:*(a1 + 56)];
  v17[2] = v5;
  v16[3] = @"durationActualListeningTime";
  v6 = [HDAudioAnalyticsUtilities boundedIntegerForExposureDuration:*(a1 + 64)];
  v17[3] = v6;
  v16[4] = @"hasPrunableData";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 72)];
  v17[4] = v7;
  v16[5] = @"hourOfDay";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "valueForComponent:", 32)}];
  v17[5] = v8;
  v16[6] = @"isDeviceLocked";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 73)];
  v17[6] = v9;
  v16[7] = @"minutesSinceLastUnlock";
  v10 = [*(a1 + 40) boundedIntegerForMinutesSinceLastUnlockWithNowDate:*(a1 + 32)];
  v17[7] = v10;
  v16[8] = @"timeSinceLastNotification";
  v11 = [*(a1 + 40) boundedIntegerForTimeSinceLastNotificationWithNowDate:*(a1 + 32)];
  v17[8] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:9];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)postSevenDayDoseNotification:(void *)a1 nowDate:analyticsInfo:error:.cold.1(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_0_2(v3);
  OUTLINED_FUNCTION_2(&dword_251764000, v5, v6, "[%{public}@] Failure to send HAEN notification sync: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __98__HDHeadphoneExposureNotificationCenter_postSevenDayDoseNotification_nowDate_analyticsInfo_error___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = OUTLINED_FUNCTION_4();
  v6 = OUTLINED_FUNCTION_0_2(v5);
  OUTLINED_FUNCTION_2(&dword_251764000, v7, v8, "[%{public}@] Failure to nano sync 7-Day HAEN HKCategorySample: %@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

void __98__HDHeadphoneExposureNotificationCenter_postSevenDayDoseNotification_nowDate_analyticsInfo_error___block_invoke_318_cold_1(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = OUTLINED_FUNCTION_4();
  v6 = OUTLINED_FUNCTION_0_2(v5);
  OUTLINED_FUNCTION_2(&dword_251764000, v7, v8, "[%{public}@] Failure to cloud sync 7-Day HAEN HKCategorySample: %@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_reportHeadphoneNotificationWithNowDate:(id *)a3 eventDuration:exposureLevel:exposureDuration:hasPrunableData:isDeviceLocked:analyticsInfo:.cold.1(void *a1, uint64_t a2, id *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = OUTLINED_FUNCTION_4();
  WeakRetained = objc_loadWeakRetained(a3);
  v9 = 138543618;
  v10 = v6;
  v11 = 2048;
  v12 = [WeakRetained profileType];
  _os_log_fault_impl(&dword_251764000, v3, OS_LOG_TYPE_FAULT, "[%{public}@ Only primary profiles should be able to trigger HAENs: %ld.", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_reportHeadphoneNotificationWithNowDate:(void *)a1 eventDuration:exposureLevel:exposureDuration:hasPrunableData:isDeviceLocked:analyticsInfo:.cold.2(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v3 = 138543362;
  v4 = objc_opt_class();
  _os_log_fault_impl(&dword_251764000, v1, OS_LOG_TYPE_FAULT, "[%{public}@ Missing analyticsInfo for 7-Day HAEN analytics.", &v3, 0xCu);

  v2 = *MEMORY[0x277D85DE8];
}

@end