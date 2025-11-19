@interface HDCloudSyncPlatformConfiguration
- (BOOL)_isSleepFocusOn;
- (BOOL)canLiteSyncPull;
- (BOOL)isConfiguredForLiteSync;
- (BOOL)participateInCoordinatedSync;
- (BOOL)requireInexpensiveNetworking;
- (BOOL)shouldRegisterForPeriodicSyncActivities;
- (BOOL)shouldRestrictSyncInSleepFocus;
- (HDCloudSyncPlatformConfiguration)initWithPrimaryProfile:(id)a3 behavior:(id)a4;
- (double)cellularSyncThreshold;
- (double)liteSyncThreshold;
- (int64_t)_baseIntervalForAppleWatchAllowingLiteSync:(BOOL)a3 tinker:(BOOL)a4;
- (int64_t)_baseIntervalForiPhoneAllowingLiteSync:(BOOL)a3;
- (int64_t)baseIntervalForPeriodicSyncActivity;
- (int64_t)priorityForPeriodicSyncTask;
@end

@implementation HDCloudSyncPlatformConfiguration

- (HDCloudSyncPlatformConfiguration)initWithPrimaryProfile:(id)a3 behavior:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HDCloudSyncPlatformConfiguration;
  v8 = [(HDCloudSyncPlatformConfiguration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, v6);
    objc_storeStrong(&v9->_behavior, a4);
    v9->_lock._os_unfair_lock_opaque = 0;
    v9->_allowLiteSync = 0;
  }

  return v9;
}

- (BOOL)shouldRegisterForPeriodicSyncActivities
{
  if (([(_HKBehavior *)self->_behavior supportsPeriodicFullCloudSync]& 1) != 0)
  {
    return 1;
  }

  behavior = self->_behavior;

  return [(_HKBehavior *)behavior supportsPeriodicLiteCloudSync];
}

- (int64_t)priorityForPeriodicSyncTask
{
  if ([(_HKBehavior *)self->_behavior isAppleWatch])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (int64_t)baseIntervalForPeriodicSyncActivity
{
  v3 = [(HDCloudSyncPlatformConfiguration *)self isConfiguredForLiteSync];
  v4 = [(_HKBehavior *)self->_behavior isAppleWatch];
  behavior = self->_behavior;
  if (v4)
  {
    v6 = [(_HKBehavior *)behavior tinkerModeEnabled];

    return [(HDCloudSyncPlatformConfiguration *)self _baseIntervalForAppleWatchAllowingLiteSync:v3 tinker:v6];
  }

  else if ([(_HKBehavior *)behavior isRealityDevice])
  {

    return [(HDCloudSyncPlatformConfiguration *)self _baseIntervalForRealityDevice];
  }

  else
  {

    return [(HDCloudSyncPlatformConfiguration *)self _baseIntervalForiPhoneAllowingLiteSync:v3];
  }
}

- (BOOL)canLiteSyncPull
{
  if (![(_HKBehavior *)self->_behavior isAppleWatch])
  {
    return 1;
  }

  behavior = self->_behavior;

  return [(_HKBehavior *)behavior tinkerModeEnabled];
}

- (int64_t)_baseIntervalForAppleWatchAllowingLiteSync:(BOOL)a3 tinker:(BOOL)a4
{
  v4 = MEMORY[0x277D862B8];
  v5 = MEMORY[0x277D862A0];
  if (!a3)
  {
    v5 = MEMORY[0x277D86298];
  }

  if (!a4)
  {
    v4 = v5;
  }

  return *v4;
}

- (int64_t)_baseIntervalForiPhoneAllowingLiteSync:(BOOL)a3
{
  v3 = MEMORY[0x277D862B0];
  if (!a3)
  {
    v3 = MEMORY[0x277D862B8];
  }

  return *v3;
}

- (BOOL)requireInexpensiveNetworking
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(_HKBehavior *)self->_behavior isAppleWatch]&& ![(_HKBehavior *)self->_behavior tinkerModeEnabled])
  {
    goto LABEL_10;
  }

  v3 = [(_HKBehavior *)self->_behavior tinkerModeEnabled];
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v14 = 0;
    v5 = HDUpgradedToSyncIdentity(WeakRetained, &v14);
    v6 = v14;

    if (v6)
    {
      _HKInitializeLogging();
      v7 = *MEMORY[0x277CCC328];
      if (!os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
LABEL_9:

LABEL_10:
        LOBYTE(v3) = 1;
        goto LABEL_11;
      }

      *buf = 138543362;
      v16 = v6;
      v8 = "Failed to read hasUpgradedToSyncIdentity with error: %{public}@.";
    }

    else
    {
      v9 = objc_loadWeakRetained(&self->_profile);
      v13 = 0;
      v10 = HDCompletedTransitionToSyncIdentity(v9, &v13);
      v6 = v13;

      if (!v6)
      {
        if (v10 & 1 | ((v5 & 1) == 0))
        {
          LOBYTE(v3) = 0;
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      _HKInitializeLogging();
      v7 = *MEMORY[0x277CCC328];
      if (!os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 138543362;
      v16 = v6;
      v8 = "Failed to read completedtransitionToSyncIdentity with error: %{public}@.";
    }

    _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, v8, buf, 0xCu);
    goto LABEL_9;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

- (double)cellularSyncThreshold
{
  v2 = [(_HKBehavior *)self->_behavior tinkerModeEnabled];
  result = 259200.0;
  if (v2)
  {
    return 172800.0;
  }

  return result;
}

- (double)liteSyncThreshold
{
  if ([(_HKBehavior *)self->_behavior isAppleWatch]&& ![(_HKBehavior *)self->_behavior tinkerModeEnabled])
  {
    return 3600.0;
  }

  v3 = [(_HKBehavior *)self->_behavior isRealityDevice];
  result = 1800.0;
  if (v3)
  {
    return 14400.0;
  }

  return result;
}

- (BOOL)isConfiguredForLiteSync
{
  v38 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  allowLiteSync = self->_allowLiteSync;
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 integerForKey:*MEMORY[0x277CCE2B0]];

  if (v4 != 2)
  {
    if (v4 == 1)
    {
      _HKInitializeLogging();
      v5 = *MEMORY[0x277CCC328];
      v6 = 0;
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "Disabled Lite sync by internal user default", buf, 2u);
        v6 = 0;
      }

      goto LABEL_28;
    }

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v9 = [WeakRetained deviceContextManager];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __59__HDCloudSyncPlatformConfiguration_isConfiguredForLiteSync__block_invoke;
    v28[3] = &unk_27861D3E0;
    v28[4] = &v30;
    v29 = 0;
    v10 = [v9 enumerateAllEntriesWithError:&v29 handler:v28];
    v11 = v29;

    if ((v10 & 1) == 0)
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v35 = self;
        v36 = 2114;
        v37 = v11;
        _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Failed to query database for device context objects %{public}@.", buf, 0x16u);
      }
    }

    v13 = [HDKeyValueDomain alloc];
    v14 = objc_loadWeakRetained(&self->_profile);
    v15 = [(HDKeyValueDomain *)v13 initWithCategory:0 domainName:@"CloudSyncCoordinator" profile:v14];

    v16 = *MEMORY[0x277CCE390];
    v27 = v11;
    v17 = [(HDKeyValueDomain *)v15 numberForKey:v16 error:&v27];
    v18 = v27;

    if (v17 || !v18)
    {
      if (v17)
      {
        v20 = [v17 BOOLValue];
        goto LABEL_18;
      }
    }

    else
    {
      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v35 = self;
        v36 = 2114;
        v37 = v18;
        _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "%{public}@: Could not read lite synced on watch key %{public}@.", buf, 0x16u);
      }
    }

    v20 = 0;
LABEL_18:
    if ((v31[3] & 1) != 0 || ([(_HKBehavior *)self->_behavior isAppleWatch]& v20) == 1)
    {
      if (v20 & 1 | (([(_HKBehavior *)self->_behavior isAppleWatch]& 1) == 0))
      {
        v6 = 1;
      }

      else
      {
        v26 = v18;
        v21 = [(HDKeyValueDomain *)v15 setNumber:MEMORY[0x277CBEC38] forKey:v16 error:&v26];
        v22 = v26;

        if (!v21)
        {
          _HKInitializeLogging();
          v23 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v35 = self;
            v36 = 2114;
            v37 = v22;
            _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "%{public}@: Failed to set lite synced on watch flag %{public}@.", buf, 0x16u);
          }
        }

        v6 = 1;
        v18 = v22;
      }
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_28;
  }

  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "Forcing Lite sync by internal user default", buf, 2u);
  }

  v6 = 1;
LABEL_28:
  _Block_object_dispose(&v30, 8);
  v24 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t __59__HDCloudSyncPlatformConfiguration_isConfiguredForLiteSync__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == 2 || objc_msgSend(v3, "type") == 3)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "Lite sync enabled due to iPad or VisionPro in device context", v6, 2u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return 1;
}

- (BOOL)shouldRestrictSyncInSleepFocus
{
  v3 = [(_HKBehavior *)self->_behavior isAppleWatch];
  if (v3)
  {
    LOBYTE(v3) = ([(_HKBehavior *)self->_behavior tinkerModeEnabled]& 1) == 0 && self->_isSleepFocusOn != 0;
  }

  return v3;
}

- (BOOL)participateInCoordinatedSync
{
  v3 = [(_HKBehavior *)self->_behavior isAppleWatch];
  if (v3)
  {
    LOBYTE(v3) = [(_HKBehavior *)self->_behavior tinkerModeEnabled]^ 1;
  }

  return v3;
}

- (BOOL)_isSleepFocusOn
{
  if (_HDIsUnitTesting && (isSleepFocusOn = self->_isSleepFocusOn) != 0)
  {
    v4 = *(isSleepFocusOn + 2);

    return v4();
  }

  else
  {
    v6 = objc_alloc_init(HDBiomeInterface);
    v7 = [(HDBiomeInterface *)v6 sleepFocusOn];

    return v7;
  }
}

@end