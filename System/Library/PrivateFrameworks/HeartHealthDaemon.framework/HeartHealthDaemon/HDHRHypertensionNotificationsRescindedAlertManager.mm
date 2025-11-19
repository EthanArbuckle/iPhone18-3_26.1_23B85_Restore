@interface HDHRHypertensionNotificationsRescindedAlertManager
- (BOOL)_isFeatureRescindedWithUsageEvaluation:(id)a3;
- (BOOL)_isFeatureUnavailableForNonRescindedReasonsWithUsageEvaluation:(id)a3;
- (HDHRHypertensionNotificationsRescindedAlertManager)initWithProfile:(id)a3 featureStatusProvider:(id)a4;
- (HDHRHypertensionNotificationsRescindedAlertManager)initWithProfile:(id)a3 featureStatusProvider:(id)a4 pairedSyncStateProvider:(id)a5 keyValueDomain:(id)a6;
- (id)_rescindedAlertBodyForUsageEvaluation:(id)a3;
- (id)_rescindedAlertTitleForUsageEvaluation:(id)a3;
- (int64_t)_rescindedAlertTypeForUsageEvaluation:(id)a3;
- (void)_presentHypertensionNotificationsReEnabledAlert;
- (void)_presentHypertensionNotificationsRescindedAlertForUsageEvaluation:(id)a3;
- (void)_presentNotificationWithTitle:(id)a3 message:(id)a4 type:(int64_t)a5;
- (void)_queue_presentRescindedOrReEnabledAlertIfNeededWithFeatureStatus:(id)a3;
- (void)_queue_pullFeatureStatusAndPresentAlertIfNeeded;
- (void)_unitTesting_callNotificationNotPostedHandlerIfSet;
- (void)daemonReady:(id)a3;
- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4;
- (void)dealloc;
- (void)featureStatusProviding:(id)a3 didUpdateFeatureStatus:(id)a4;
@end

@implementation HDHRHypertensionNotificationsRescindedAlertManager

- (HDHRHypertensionNotificationsRescindedAlertManager)initWithProfile:(id)a3 featureStatusProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(HDHRPairedSyncStateProvider);
  v9 = [MEMORY[0x277D10718] hdhr_hypertensionNotificationsDeviceLocalDomainForProfile:v7];
  v10 = [(HDHRHypertensionNotificationsRescindedAlertManager *)self initWithProfile:v7 featureStatusProvider:v6 pairedSyncStateProvider:v8 keyValueDomain:v9];

  return v10;
}

- (HDHRHypertensionNotificationsRescindedAlertManager)initWithProfile:(id)a3 featureStatusProvider:(id)a4 pairedSyncStateProvider:(id)a5 keyValueDomain:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = HDHRHypertensionNotificationsRescindedAlertManager;
  v14 = [(HDHRHypertensionNotificationsRescindedAlertManager *)&v24 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_profile, v10);
    objc_storeStrong(&v15->_featureStatusProvider, a4);
    objc_storeStrong(&v15->_pairedSyncStateProvider, a5);
    v16 = HKCreateSerialDispatchQueue();
    queue = v15->_queue;
    v15->_queue = v16;

    objc_storeStrong(&v15->_localKeyValueDomain, a6);
    v18 = objc_alloc(MEMORY[0x277CCCFE8]);
    v19 = [v18 initWithLoggingCategory:*MEMORY[0x277CCC2D0] healthDataSource:v10];
    analyticsEventSubmissionManager = v15->_analyticsEventSubmissionManager;
    v15->_analyticsEventSubmissionManager = v19;

    WeakRetained = objc_loadWeakRetained(&v15->_profile);
    v22 = [WeakRetained daemon];
    [v22 registerDaemonReadyObserver:v15 queue:v15->_queue];
  }

  return v15;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained database];
  [v4 removeProtectedDataObserver:self];

  [(HKFeatureStatusProviding *)self->_featureStatusProvider unregisterObserver:self];
  v5.receiver = self;
  v5.super_class = HDHRHypertensionNotificationsRescindedAlertManager;
  [(HDHRHypertensionNotificationsRescindedAlertManager *)&v5 dealloc];
}

- (void)daemonReady:(id)a3
{
  dispatch_assert_queue_V2(self->_queue);
  [(HKFeatureStatusProviding *)self->_featureStatusProvider registerObserver:self];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [WeakRetained database];
  [v5 addProtectedDataObserver:self queue:self->_queue];

  [(HDHRHypertensionNotificationsRescindedAlertManager *)self _queue_pullFeatureStatusAndPresentAlertIfNeeded];
}

- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4
{
  v4 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (v4)
  {

    [(HDHRHypertensionNotificationsRescindedAlertManager *)self _queue_pullFeatureStatusAndPresentAlertIfNeeded];
  }
}

- (void)featureStatusProviding:(id)a3 didUpdateFeatureStatus:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __100__HDHRHypertensionNotificationsRescindedAlertManager_featureStatusProviding_didUpdateFeatureStatus___block_invoke;
  v8[3] = &unk_27865FE98;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

uint64_t __100__HDHRHypertensionNotificationsRescindedAlertManager_featureStatusProviding_didUpdateFeatureStatus___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = HRLogSensitiveClassName();
    v5 = *(a1 + 40);
    v6 = HKSensitiveLogItem();
    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_229486000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Feature status did change to: %{public}@", &v9, 0x16u);
  }

  result = [*(a1 + 32) _queue_presentRescindedOrReEnabledAlertIfNeededWithFeatureStatus:*(a1 + 40)];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_queue_pullFeatureStatusAndPresentAlertIfNeeded
{
  OUTLINED_FUNCTION_4();
  v7 = *MEMORY[0x277D85DE8];
  v0 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_presentRescindedOrReEnabledAlertIfNeededWithFeatureStatus:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (([(HDHRPairedSyncStateProviding *)self->_pairedSyncStateProvider isPairedSyncCompleted]& 1) != 0)
  {
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
    if (([v5 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF38]] & 1) == 0)
    {
      _HKInitializeLogging();
      v6 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = HRLogSensitiveClassName();
        *buf = 138543362;
        v29 = v7;
        v8 = "[%{public}@] Hypertension notifications are disabled in settings";
        goto LABEL_11;
      }

LABEL_12:

      [(HDHRHypertensionNotificationsRescindedAlertManager *)self _unitTesting_callNotificationNotPostedHandlerIfSet];
LABEL_18:

      goto LABEL_19;
    }

    if ([(HDHRHypertensionNotificationsRescindedAlertManager *)self _isFeatureUnavailableForNonRescindedReasonsWithUsageEvaluation:v5])
    {
      _HKInitializeLogging();
      v6 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = HRLogSensitiveClassName();
        *buf = 138543362;
        v29 = v7;
        v8 = "[%{public}@] Hypertension notifications are unavailable for non-rescinding reasons";
LABEL_11:
        _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);

        goto LABEL_12;
      }

      goto LABEL_12;
    }

    localKeyValueDomain = self->_localKeyValueDomain;
    v27 = 0;
    v12 = [(HDKeyValueDomain *)localKeyValueDomain dateForKey:@"HypertensionNotificationsDisabledNotificationShownDateKey" error:&v27];
    v13 = v27;
    if (v13)
    {
      _HKInitializeLogging();
      v14 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [HDHRHypertensionNotificationsRescindedAlertManager _queue_presentRescindedOrReEnabledAlertIfNeededWithFeatureStatus:];
      }

      goto LABEL_16;
    }

    if ([(HDHRHypertensionNotificationsRescindedAlertManager *)self _isFeatureRescindedWithUsageEvaluation:v5])
    {
      _HKInitializeLogging();
      v16 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = HRLogSensitiveClassName();
        *buf = 138543618;
        v29 = v17;
        v30 = 2114;
        v31 = v12;
        _os_log_impl(&dword_229486000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Hypertension notifications are rescinded (last shown date: %{public}@)", buf, 0x16u);
      }

      if (!v12)
      {
        [(HDHRHypertensionNotificationsRescindedAlertManager *)self _presentHypertensionNotificationsRescindedAlertForUsageEvaluation:v5];
        v18 = self->_localKeyValueDomain;
        v19 = [MEMORY[0x277CBEAA8] date];
        v26 = 0;
        [(HDKeyValueDomain *)v18 setDate:v19 forKey:@"HypertensionNotificationsDisabledNotificationShownDateKey" error:&v26];
        v14 = v26;

        if (!v14)
        {
LABEL_16:

LABEL_17:
          goto LABEL_18;
        }

        _HKInitializeLogging();
        v20 = HKLogHeartRateCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [HDHRHypertensionNotificationsRescindedAlertManager _queue_presentRescindedOrReEnabledAlertIfNeededWithFeatureStatus:];
        }

LABEL_33:

        goto LABEL_16;
      }
    }

    else if (v12)
    {
      _HKInitializeLogging();
      v21 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = HRLogSensitiveClassName();
        *buf = 138543618;
        v29 = v22;
        v30 = 2114;
        v31 = v12;
        _os_log_impl(&dword_229486000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Hypertension notifications are not rescinded (last shown date: %{public}@)", buf, 0x16u);
      }

      [(HDHRHypertensionNotificationsRescindedAlertManager *)self _presentHypertensionNotificationsReEnabledAlert];
      v23 = self->_localKeyValueDomain;
      v24 = [MEMORY[0x277CBEB98] setWithObject:@"HypertensionNotificationsDisabledNotificationShownDateKey"];
      v25 = 0;
      [(HDKeyValueDomain *)v23 removeValuesForKeys:v24 error:&v25];
      v14 = v25;

      if (!v14)
      {
        goto LABEL_16;
      }

      _HKInitializeLogging();
      v20 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [HDHRHypertensionNotificationsRescindedAlertManager _queue_presentRescindedOrReEnabledAlertIfNeededWithFeatureStatus:];
      }

      goto LABEL_33;
    }

    [(HDHRHypertensionNotificationsRescindedAlertManager *)self _unitTesting_callNotificationNotPostedHandlerIfSet];
    goto LABEL_17;
  }

  _HKInitializeLogging();
  v9 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HRLogSensitiveClassName();
    *buf = 138543362;
    v29 = v10;
    _os_log_impl(&dword_229486000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Paired sync not complete", buf, 0xCu);
  }

  [(HDHRHypertensionNotificationsRescindedAlertManager *)self _unitTesting_callNotificationNotPostedHandlerIfSet];
LABEL_19:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_unitTesting_callNotificationNotPostedHandlerIfSet
{
  v3 = [(HDHRHypertensionNotificationsRescindedAlertManager *)self unitTesting_notificationNotPostedHandler];

  if (v3)
  {
    v4 = [(HDHRHypertensionNotificationsRescindedAlertManager *)self unitTesting_notificationNotPostedHandler];
    v4[2]();
  }
}

- (id)_rescindedAlertTitleForUsageEvaluation:(id)a3
{
  v3 = a3;
  if ([v3 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF08]] && objc_msgSend(v3, "isRequirementSatisfiedWithIdentifier:", *MEMORY[0x277CCBF00]))
  {
    if ([v3 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBFD0]])
    {
      if ([v3 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF30]])
      {
        v4 = 0;
        goto LABEL_8;
      }

      v5 = @"HYPERTENSION_NOTIFICATIONS_REMOTELY_DISABLED_ALERT_TITLE";
    }

    else
    {
      v5 = @"HYPERTENSION_NOTIFICATIONS_SEED_EXPIRED_ALERT_TITLE";
    }
  }

  else
  {
    v5 = @"HYPERTENSION_NOTIFICATIONS_UNSUPPORTED_REGION_ALERT_TITLE";
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v6 localizedStringForKey:v5 value:&stru_283CC4740 table:@"Localizable-Hermit"];

LABEL_8:

  return v4;
}

- (id)_rescindedAlertBodyForUsageEvaluation:(id)a3
{
  v3 = a3;
  if ([v3 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF08]] && objc_msgSend(v3, "isRequirementSatisfiedWithIdentifier:", *MEMORY[0x277CCBF00]))
  {
    if ([v3 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBFD0]])
    {
      if ([v3 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF30]])
      {
        v4 = 0;
        goto LABEL_8;
      }

      v5 = @"HYPERTENSION_NOTIFICATIONS_REMOTELY_DISABLED_ALERT_BODY";
    }

    else
    {
      v5 = @"HYPERTENSION_NOTIFICATIONS_SEED_EXPIRED_ALERT_BODY";
    }
  }

  else
  {
    v5 = @"HYPERTENSION_NOTIFICATIONS_UNSUPPORTED_REGION_ALERT_BODY";
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v6 localizedStringForKey:v5 value:&stru_283CC4740 table:@"Localizable-Hermit"];

LABEL_8:

  return v4;
}

- (int64_t)_rescindedAlertTypeForUsageEvaluation:(id)a3
{
  v3 = a3;
  if ([v3 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF08]])
  {
    if ([v3 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF00]])
    {
      if ([v3 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBFD0]])
      {
        if ([v3 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF30]])
        {
          v4 = 1;
        }

        else
        {
          v4 = 3;
        }
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 4;
    }
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

- (void)_presentHypertensionNotificationsRescindedAlertForUsageEvaluation:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HDHRHypertensionNotificationsRescindedAlertManager *)self _rescindedAlertTitleForUsageEvaluation:v4];
  v6 = [(HDHRHypertensionNotificationsRescindedAlertManager *)self _rescindedAlertBodyForUsageEvaluation:v4];
  v7 = [(HDHRHypertensionNotificationsRescindedAlertManager *)self _rescindedAlertTypeForUsageEvaluation:v4];

  _HKInitializeLogging();
  v8 = HKLogHeartRateCategory();
  v9 = v8;
  if (v5 && v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HRLogSensitiveClassName();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_229486000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Scheduling Hypertension notifications rescinded alert", &v12, 0xCu);
    }

    [(HDHRHypertensionNotificationsRescindedAlertManager *)self _presentNotificationWithTitle:v5 message:v6 type:v7];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [HDHRHypertensionNotificationsRescindedAlertManager _presentHypertensionNotificationsRescindedAlertForUsageEvaluation:];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_presentHypertensionNotificationsReEnabledAlert
{
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = HRLogSensitiveClassName();
    v10 = 138543362;
    v11 = v4;
    _os_log_impl(&dword_229486000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Scheduling Hypertension notifications re-enabled alert", &v10, 0xCu);
  }

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"HYPERTENSION_NOTIFICATIONS_REENABLED_TITLE" value:&stru_283CC4740 table:@"Localizable-Hermit"];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"HYPERTENSION_NOTIFICATIONS_REENABLED_BODY" value:&stru_283CC4740 table:@"Localizable-Hermit"];
  [(HDHRHypertensionNotificationsRescindedAlertManager *)self _presentNotificationWithTitle:v6 message:v8 type:6];

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isFeatureRescindedWithUsageEvaluation:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CCBF08];
  v4 = a3;
  v5 = [v4 isRequirementSatisfiedWithIdentifier:v3];
  v6 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF00]];
  v7 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBFD0]];
  v8 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF30]];

  _HKInitializeLogging();
  v9 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HRLogSensitiveClassName();
    v11 = [MEMORY[0x277CCABB0] numberWithBool:v6 ^ 1u];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:v5 ^ 1u];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:v7 ^ 1u];
    v14 = [MEMORY[0x277CCABB0] numberWithBool:v8 ^ 1u];
    v17 = 138544386;
    v18 = v10;
    v19 = 2114;
    v20 = v11;
    v21 = 2114;
    v22 = v12;
    v23 = 2114;
    v24 = v13;
    v25 = 2114;
    v26 = v14;
    _os_log_impl(&dword_229486000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Checking if feature is unavailable for rescinding reasons: regionNotSupportedOnRemoteDevice -> %{public}@, regionNotSupportedOnLocalDevice -> %{public}@, expired -> %{public}@, disabled -> %{public}@", &v17, 0x34u);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5 & v6 & v7 & v8 ^ 1;
}

- (BOOL)_isFeatureUnavailableForNonRescindedReasonsWithUsageEvaluation:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CCBF28];
  v4 = a3;
  v5 = [v4 isRequirementSatisfiedWithIdentifier:v3];
  v6 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF70]];
  v7 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF50]];
  v8 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBFE8]];
  v9 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF48]];
  v10 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF80]];
  v11 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBED8]];
  v30 = [v4 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBEF0]];

  _HKInitializeLogging();
  v12 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v28 = HRLogSensitiveClassName();
    v27 = [MEMORY[0x277CCABB0] numberWithBool:v5 ^ 1u];
    v26 = [MEMORY[0x277CCABB0] numberWithBool:v6 ^ 1u];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:v7 ^ 1u];
    [MEMORY[0x277CCABB0] numberWithBool:v8 ^ 1u];
    v14 = v29 = v11;
    [MEMORY[0x277CCABB0] numberWithBool:v9 ^ 1u];
    v15 = v25 = v5;
    [MEMORY[0x277CCABB0] numberWithBool:v10 ^ 1u];
    v16 = v24 = v6;
    [MEMORY[0x277CCABB0] numberWithBool:v29 ^ 1u];
    v23 = v10;
    v17 = v9;
    v19 = v18 = v8;
    v20 = [MEMORY[0x277CCABB0] numberWithBool:v30 ^ 1u];
    *buf = 138545410;
    v32 = v28;
    v33 = 2114;
    v34 = v27;
    v35 = 2114;
    v36 = v26;
    v37 = 2114;
    v38 = v13;
    v39 = 2114;
    v40 = v14;
    v41 = 2114;
    v42 = v15;
    v43 = 2114;
    v44 = v16;
    v45 = 2114;
    v46 = v19;
    v47 = 2114;
    v48 = v20;
    _os_log_impl(&dword_229486000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Checking if feature is unavailable for non-rescinding reasons: featureFlag -> %{public}@, age gated -> %{public}@, disabled in privacy -> %{public}@, wrist detection disabled -> %{public}@, health app hidden -> %{public}@, store demo mode -> %{public}@, active remote device not present -> %{public}@, capability not supported -> %{public}@", buf, 0x5Cu);

    v8 = v18;
    v9 = v17;
    v10 = v23;

    v6 = v24;
    v5 = v25;

    v11 = v29;
  }

  v21 = *MEMORY[0x277D85DE8];
  return (v5 & v6 & v7 & v8 & v9 & v10 & v11 & v30 & 1) == 0;
}

- (void)_presentNotificationWithTitle:(id)a3 message:(id)a4 type:(int64_t)a5
{
  v8 = MEMORY[0x277CE1F60];
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(v8);
  [v11 setTitle:v10];

  [v11 setBody:v9];
  v12 = *MEMORY[0x277D13048];
  [v11 setCategoryIdentifier:*MEMORY[0x277D13048]];
  v13 = [MEMORY[0x277CE1F70] soundWithAlertType:25];
  v14 = [MEMORY[0x277CBEAA8] date];
  [v11 setSound:v13];
  [v11 setDate:v14];
  v15 = [MEMORY[0x277CBEA80] currentCalendar];
  v16 = [v15 hk_dateByAddingDays:1 toDate:v14];
  [v11 setExpirationDate:v16];

  v17 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:MEMORY[0x277CBEC10]];
  v18 = [MEMORY[0x277CBEBC0] _hk_urlForHypertensionEventType];
  v19 = [v18 absoluteString];
  [v17 setObject:v19 forKeyedSubscript:*MEMORY[0x277CCE4E0]];

  [v17 setObject:&unk_283CD26F8 forKeyedSubscript:*MEMORY[0x277CCE4D0]];
  [v11 setUserInfo:v17];
  v20 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v12 content:v11 trigger:0];
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__HDHRHypertensionNotificationsRescindedAlertManager__presentNotificationWithTitle_message_type___block_invoke;
  block[3] = &unk_2786600A0;
  block[4] = self;
  v23 = v20;
  v21 = v20;
  objc_copyWeak(v24, &location);
  v24[1] = a5;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(v24);

  objc_destroyWeak(&location);
}

void __97__HDHRHypertensionNotificationsRescindedAlertManager__presentNotificationWithTitle_message_type___block_invoke(id *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = HRLogSensitiveClassName();
    *buf = 138543362;
    v20 = v4;
    _os_log_impl(&dword_229486000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] About to post Hypertension notifications rescinded/reenabled notification", buf, 0xCu);
  }

  v5 = [a1[4] unitTesting_postNotificationHandler];
  v6 = v5 == 0;

  v7 = a1[4];
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(v7 + 1);
    v10 = [WeakRetained notificationManager];
    v11 = a1[5];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __97__HDHRHypertensionNotificationsRescindedAlertManager__presentNotificationWithTitle_message_type___block_invoke_345;
    v15[3] = &unk_278660078;
    objc_copyWeak(v18, a1 + 6);
    v12 = a1[5];
    v13 = a1[4];
    v16 = v12;
    v17 = v13;
    v18[1] = a1[7];
    [v10 postNotificationWithRequest:v11 completion:v15];

    objc_destroyWeak(v18);
  }

  else
  {
    v8 = [v7 unitTesting_postNotificationHandler];
    (v8)[2](v8, a1[5]);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __97__HDHRHypertensionNotificationsRescindedAlertManager__presentNotificationWithTitle_message_type___block_invoke_345(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogHeartRateCategory();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __97__HDHRHypertensionNotificationsRescindedAlertManager__presentNotificationWithTitle_message_type___block_invoke_345_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v8 = HRLogSensitiveClassName();
    v9 = [*(a1 + 32) identifier];
    v10 = *MEMORY[0x277D13048];
    v11 = HKSensitiveLogItem();
    v16 = 138543874;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    v20 = 2114;
    v21 = v11;
    _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requested notification (%{public}@ - %{public}@)", &v16, 0x20u);
  }

  v12 = [HDHRHypertensionNotificationDeliveryEvent alloc];
  v13 = objc_loadWeakRetained((*(a1 + 40) + 8));
  v14 = [(HDHRHypertensionNotificationDeliveryEvent *)v12 initWithProfile:v13 type:*(a1 + 56)];

  [*(*(a1 + 40) + 48) submitEvent:v14 error:0];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)_queue_presentRescindedOrReEnabledAlertIfNeededWithFeatureStatus:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v7 = *MEMORY[0x277D85DE8];
  v0 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_presentRescindedOrReEnabledAlertIfNeededWithFeatureStatus:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v7 = *MEMORY[0x277D85DE8];
  v0 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_presentRescindedOrReEnabledAlertIfNeededWithFeatureStatus:.cold.3()
{
  OUTLINED_FUNCTION_4();
  v7 = *MEMORY[0x277D85DE8];
  v0 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_presentHypertensionNotificationsRescindedAlertForUsageEvaluation:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

void __97__HDHRHypertensionNotificationsRescindedAlertManager__presentNotificationWithTitle_message_type___block_invoke_345_cold_1()
{
  OUTLINED_FUNCTION_4();
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((v0 + 48));
  v2 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end