@interface HDHRIrregularRhythmNotificationsSettingMigrator
- (HDHRIrregularRhythmNotificationsSettingMigrator)initWithV1FeatureAvailabilityManager:(id)a3 v2FeatureAvailabilityManager:(id)a4;
- (void)_startObservingSettingChanges;
- (void)_syncSettingIfPossibleFromManager:(id)a3 toManager:(id)a4;
- (void)_syncSettingIfPossibleFromSource:(id)a3;
@end

@implementation HDHRIrregularRhythmNotificationsSettingMigrator

- (HDHRIrregularRhythmNotificationsSettingMigrator)initWithV1FeatureAvailabilityManager:(id)a3 v2FeatureAvailabilityManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HDHRIrregularRhythmNotificationsSettingMigrator;
  v9 = [(HDHRIrregularRhythmNotificationsSettingMigrator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_v1FeatureAvailabilityManager, a3);
    objc_storeStrong(&v10->_v2FeatureAvailabilityManager, a4);
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

- (void)_syncSettingIfPossibleFromSource:(id)a3
{
  v7 = a3;
  v4 = [v7 featureIdentifier];
  v5 = 8;
  if (v4 == *MEMORY[0x277CCC078])
  {
    v5 = 16;
  }

  v6 = *(&self->super.isa + v5);

  [(HDHRIrregularRhythmNotificationsSettingMigrator *)self _syncSettingIfPossibleFromManager:v7 toManager:v6];
}

- (void)_syncSettingIfPossibleFromManager:(id)a3 toManager:(id)a4
{
  v73 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v64 = 0;
  v8 = [v6 featureOnboardingRecordWithError:&v64];
  v9 = v64;
  v10 = v9;
  if (v8)
  {
    v63 = v9;
    v11 = [v7 featureOnboardingRecordWithError:&v63];
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
          v15 = [v6 featureIdentifier];
          v16 = [v7 featureIdentifier];
          v17 = [v6 featureIdentifier];
          *buf = 138544130;
          v66 = v14;
          v67 = 2114;
          v68 = v15;
          v69 = 2114;
          v70 = v16;
          v71 = 2114;
          v72 = v17;
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
          v15 = [v6 featureIdentifier];
          v16 = [v7 featureIdentifier];
          v17 = [v7 featureIdentifier];
          *buf = 138544130;
          v66 = v25;
          v67 = 2114;
          v68 = v15;
          v69 = 2114;
          v70 = v16;
          v71 = 2114;
          v72 = v17;
          goto LABEL_14;
        }

LABEL_28:

        goto LABEL_29;
      }

      v26 = [v8 featureSettings];
      v27 = *MEMORY[0x277CCC120];
      v20 = [v26 numberForKey:*MEMORY[0x277CCC120]];

      v28 = [v11 featureSettings];
      v22 = [v28 numberForKey:v27];

      if (v20 == v22 || v22 && [v20 isEqual:v22])
      {
        _HKInitializeLogging();
        v29 = *MEMORY[0x277CCC2D8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
        {
          v49 = v29;
          v30 = objc_opt_class();
          logb = v30;
          v31 = [v6 featureIdentifier];
          v32 = [v7 featureIdentifier];
          *buf = 138543874;
          v66 = v30;
          v67 = 2114;
          v68 = v31;
          v69 = 2114;
          v70 = v32;
          _os_log_impl(&dword_229486000, v49, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping setting sync from %{public}@ to %{public}@: setting values already match", buf, 0x20u);
        }
      }

      else
      {
        v33 = [v7 featureIdentifier];
        v34 = v20;
        v35 = v33;
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
          v58 = v6;
          v59 = v35;
          v38 = v36;
          v39 = &v57;
          [v7 setFeatureSettingNumber:v38 forKey:v27 completion:v56];
        }

        else
        {
          loga = v33;
          _HKInitializeLogging();
          v44 = *MEMORY[0x277CCC2D8];
          if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
          {
            v48 = v44;
            v45 = objc_opt_class();
            v50 = v45;
            v46 = [v6 featureIdentifier];
            *buf = 138543618;
            v66 = v45;
            v67 = 2114;
            v68 = v46;
            _os_log_impl(&dword_229486000, v48, OS_LOG_TYPE_DEFAULT, "[%{public}@] Detected removal of setting from %{public}@", buf, 0x16u);
          }

          v60[0] = MEMORY[0x277D85DD0];
          v60[1] = 3221225472;
          v60[2] = __95__HDHRIrregularRhythmNotificationsSettingMigrator__syncSettingIfPossibleFromManager_toManager___block_invoke;
          v60[3] = &unk_278660128;
          v60[4] = self;
          v39 = &v61;
          v61 = v6;
          v37 = &v62;
          v35 = loga;
          v62 = loga;
          [v7 removeFeatureSettingValueForKey:v27 completion:v60];
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
      v23 = [v7 featureIdentifier];
      *buf = 138543874;
      v66 = v21;
      v67 = 2114;
      v68 = v23;
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
    v43 = [v6 featureIdentifier];
    *buf = 138543874;
    v66 = v41;
    v67 = 2114;
    v68 = v43;
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