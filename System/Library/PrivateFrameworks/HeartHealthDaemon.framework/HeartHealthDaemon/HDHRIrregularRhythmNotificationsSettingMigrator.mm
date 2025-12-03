@interface HDHRIrregularRhythmNotificationsSettingMigrator
- (HDHRIrregularRhythmNotificationsSettingMigrator)initWithV1FeatureAvailabilityManager:(id)manager v2FeatureAvailabilityManager:(id)availabilityManager;
- (void)_startObservingSettingChanges;
- (void)_syncSettingIfPossibleFromManager:(id)manager toManager:(id)toManager;
- (void)_syncSettingIfPossibleFromSource:(id)source;
@end

@implementation HDHRIrregularRhythmNotificationsSettingMigrator

- (HDHRIrregularRhythmNotificationsSettingMigrator)initWithV1FeatureAvailabilityManager:(id)manager v2FeatureAvailabilityManager:(id)availabilityManager
{
  managerCopy = manager;
  availabilityManagerCopy = availabilityManager;
  v14.receiver = self;
  v14.super_class = HDHRIrregularRhythmNotificationsSettingMigrator;
  v9 = [(HDHRIrregularRhythmNotificationsSettingMigrator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_v1FeatureAvailabilityManager, manager);
    objc_storeStrong(&v10->_v2FeatureAvailabilityManager, availabilityManager);
    v11 = HKCreateSerialDispatchQueue();
    queue = v10->_queue;
    v10->_queue = v11;

    [(HDHRIrregularRhythmNotificationsSettingMigrator *)v10 _startObservingSettingChanges];
  }

  return v10;
}

- (void)_startObservingSettingChanges
{
  [(HDFeatureAvailabilityExtension *)self->_v1FeatureAvailabilityManager registerObserver:self queue:self->_queue];
  v2FeatureAvailabilityManager = self->_v2FeatureAvailabilityManager;
  queue = self->_queue;

  [(HDFeatureAvailabilityExtension *)v2FeatureAvailabilityManager registerObserver:self queue:queue];
}

- (void)_syncSettingIfPossibleFromSource:(id)source
{
  sourceCopy = source;
  featureIdentifier = [sourceCopy featureIdentifier];
  v5 = 8;
  if (featureIdentifier == *MEMORY[0x277CCC078])
  {
    v5 = 16;
  }

  v6 = *(&self->super.isa + v5);

  [(HDHRIrregularRhythmNotificationsSettingMigrator *)self _syncSettingIfPossibleFromManager:sourceCopy toManager:v6];
}

- (void)_syncSettingIfPossibleFromManager:(id)manager toManager:(id)toManager
{
  v73 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  toManagerCopy = toManager;
  v64 = 0;
  v8 = [managerCopy featureOnboardingRecordWithError:&v64];
  v9 = v64;
  v10 = v9;
  if (v8)
  {
    v63 = v9;
    v11 = [toManagerCopy featureOnboardingRecordWithError:&v63];
    v12 = v63;

    if (v11)
    {
      if ([v8 onboardingState] == 1)
      {
        _HKInitializeLogging();
        v13 = *MEMORY[0x277CCC2D8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
        {
          log = v13;
          v14 = objc_opt_class();
          v54 = v14;
          featureIdentifier = [managerCopy featureIdentifier];
          featureIdentifier2 = [toManagerCopy featureIdentifier];
          featureIdentifier3 = [managerCopy featureIdentifier];
          *buf = 138544130;
          v66 = v14;
          v67 = 2114;
          v68 = featureIdentifier;
          v69 = 2114;
          v70 = featureIdentifier2;
          v71 = 2114;
          v72 = featureIdentifier3;
LABEL_14:
          v20 = log;
          _os_log_impl(&dword_229486000, log, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping setting sync from %{public}@ to %{public}@: %{public}@ is not onboarded", buf, 0x2Au);

LABEL_27:
          goto LABEL_28;
        }

        goto LABEL_28;
      }

      if ([v11 onboardingState] == 1)
      {
        _HKInitializeLogging();
        v24 = *MEMORY[0x277CCC2D8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
        {
          log = v24;
          v25 = objc_opt_class();
          v54 = v25;
          featureIdentifier = [managerCopy featureIdentifier];
          featureIdentifier2 = [toManagerCopy featureIdentifier];
          featureIdentifier3 = [toManagerCopy featureIdentifier];
          *buf = 138544130;
          v66 = v25;
          v67 = 2114;
          v68 = featureIdentifier;
          v69 = 2114;
          v70 = featureIdentifier2;
          v71 = 2114;
          v72 = featureIdentifier3;
          goto LABEL_14;
        }

LABEL_28:

        goto LABEL_29;
      }

      featureSettings = [v8 featureSettings];
      v27 = *MEMORY[0x277CCC120];
      v20 = [featureSettings numberForKey:*MEMORY[0x277CCC120]];

      featureSettings2 = [v11 featureSettings];
      v22 = [featureSettings2 numberForKey:v27];

      if (v20 == v22 || v22 && [v20 isEqual:v22])
      {
        _HKInitializeLogging();
        v29 = *MEMORY[0x277CCC2D8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
        {
          v49 = v29;
          v30 = objc_opt_class();
          logb = v30;
          featureIdentifier4 = [managerCopy featureIdentifier];
          featureIdentifier5 = [toManagerCopy featureIdentifier];
          *buf = 138543874;
          v66 = v30;
          v67 = 2114;
          v68 = featureIdentifier4;
          v69 = 2114;
          v70 = featureIdentifier5;
          _os_log_impl(&dword_229486000, v49, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping setting sync from %{public}@ to %{public}@: setting values already match", buf, 0x20u);
        }
      }

      else
      {
        featureIdentifier6 = [toManagerCopy featureIdentifier];
        v34 = v20;
        v35 = featureIdentifier6;
        v55 = v34;
        if (v34)
        {
          v56[0] = MEMORY[0x277D85DD0];
          v56[1] = 3221225472;
          v56[2] = __95__HDHRIrregularRhythmNotificationsSettingMigrator__syncSettingIfPossibleFromManager_toManager___block_invoke_296;
          v56[3] = &unk_278660150;
          v56[4] = self;
          v36 = v34;
          v57 = v36;
          v37 = &v58;
          v58 = managerCopy;
          v59 = v35;
          v38 = v36;
          v39 = &v57;
          [toManagerCopy setFeatureSettingNumber:v38 forKey:v27 completion:v56];
        }

        else
        {
          loga = featureIdentifier6;
          _HKInitializeLogging();
          v44 = *MEMORY[0x277CCC2D8];
          if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
          {
            v48 = v44;
            v45 = objc_opt_class();
            v50 = v45;
            featureIdentifier7 = [managerCopy featureIdentifier];
            *buf = 138543618;
            v66 = v45;
            v67 = 2114;
            v68 = featureIdentifier7;
            _os_log_impl(&dword_229486000, v48, OS_LOG_TYPE_DEFAULT, "[%{public}@] Detected removal of setting from %{public}@", buf, 0x16u);
          }

          v60[0] = MEMORY[0x277D85DD0];
          v60[1] = 3221225472;
          v60[2] = __95__HDHRIrregularRhythmNotificationsSettingMigrator__syncSettingIfPossibleFromManager_toManager___block_invoke;
          v60[3] = &unk_278660128;
          v60[4] = self;
          v39 = &v61;
          v61 = managerCopy;
          v37 = &v62;
          v35 = loga;
          v62 = loga;
          [toManagerCopy removeFeatureSettingValueForKey:v27 completion:v60];
        }

        v20 = v55;
      }
    }

    else
    {
      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC2D8];
      if (!os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      v20 = v19;
      v21 = objc_opt_class();
      v22 = v21;
      featureIdentifier8 = [toManagerCopy featureIdentifier];
      *buf = 138543874;
      v66 = v21;
      v67 = 2114;
      v68 = featureIdentifier8;
      v69 = 2114;
      v70 = v12;
      _os_log_error_impl(&dword_229486000, v20, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to retrieve onboarding record for %{public}@: %{public}@", buf, 0x20u);
    }

    goto LABEL_27;
  }

  _HKInitializeLogging();
  v18 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
  {
    v40 = v18;
    v41 = objc_opt_class();
    v42 = v41;
    featureIdentifier9 = [managerCopy featureIdentifier];
    *buf = 138543874;
    v66 = v41;
    v67 = 2114;
    v68 = featureIdentifier9;
    v69 = 2114;
    v70 = v10;
    _os_log_error_impl(&dword_229486000, v40, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to retrieve onboarding record for %{public}@: %{public}@", buf, 0x20u);
  }

  v12 = v10;
LABEL_29:

  v47 = *MEMORY[0x277D85DE8];
}

void __95__HDHRIrregularRhythmNotificationsSettingMigrator__syncSettingIfPossibleFromManager_toManager___block_invoke(void *a1, int a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2D8];
  v7 = *MEMORY[0x277CCC2D8];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v9 = v6;
      v10 = objc_opt_class();
      v11 = a1[5];
      v12 = v10;
      v13 = [v11 featureIdentifier];
      v14 = a1[6];
      v16 = 138543874;
      v17 = v10;
      v18 = 2114;
      v19 = v13;
      v20 = 2114;
      v21 = v14;
      _os_log_impl(&dword_229486000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully synced setting (removal) from %{public}@ to %{public}@", &v16, 0x20u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __95__HDHRIrregularRhythmNotificationsSettingMigrator__syncSettingIfPossibleFromManager_toManager___block_invoke_cold_1(a1, v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __95__HDHRIrregularRhythmNotificationsSettingMigrator__syncSettingIfPossibleFromManager_toManager___block_invoke_296(void *a1, int a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2D8];
  v7 = *MEMORY[0x277CCC2D8];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v9 = v6;
      v10 = objc_opt_class();
      v12 = a1[5];
      v11 = a1[6];
      v13 = v10;
      v14 = [v11 featureIdentifier];
      v15 = a1[7];
      v17 = 138544130;
      v18 = v10;
      v19 = 2114;
      v20 = v12;
      v21 = 2114;
      v22 = v14;
      v23 = 2114;
      v24 = v15;
      _os_log_impl(&dword_229486000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully synced updated setting (%{public}@) from %{public}@ to %{public}@", &v17, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __95__HDHRIrregularRhythmNotificationsSettingMigrator__syncSettingIfPossibleFromManager_toManager___block_invoke_296_cold_1(a1, v6);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __95__HDHRIrregularRhythmNotificationsSettingMigrator__syncSettingIfPossibleFromManager_toManager___block_invoke_cold_1(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v4 = a2;
  v5 = objc_opt_class();
  v6 = a1[5];
  v7 = v5;
  v8 = [v6 featureIdentifier];
  v9 = a1[6];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_5(&dword_229486000, v10, v11, "[%{public}@] Error syncing setting (removal) from %{public}@ to %{public}@: %{public}@", v12, v13, v14, v15, v17);

  v16 = *MEMORY[0x277D85DE8];
}

void __95__HDHRIrregularRhythmNotificationsSettingMigrator__syncSettingIfPossibleFromManager_toManager___block_invoke_296_cold_1(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v4 = a2;
  v5 = objc_opt_class();
  v6 = a1[6];
  v7 = v5;
  v8 = [v6 featureIdentifier];
  v9 = a1[7];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_5(&dword_229486000, v10, v11, "[%{public}@] Error syncing setting from %{public}@ to %{public}@: %{public}@", v12, v13, v14, v15, v17);

  v16 = *MEMORY[0x277D85DE8];
}

@end