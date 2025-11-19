@interface HDExampleFeatureProfileExtension
- (HDExampleFeatureProfileExtension)initWithProfile:(id)a3;
- (id)_initWithProfile:(void *)a3 featureIdentifier:(void *)a4 loggingCategory:;
- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)a3;
- (void)notificationSyncClient:(id)a3 didReceiveInstructionWithAction:(int64_t)a4;
@end

@implementation HDExampleFeatureProfileExtension

- (HDExampleFeatureProfileExtension)initWithProfile:(id)a3
{
  v4 = *MEMORY[0x277CCC028];
  v5 = a3;
  v6 = HKLogInfrastructure();
  v7 = [(HDExampleFeatureProfileExtension *)&self->super.isa _initWithProfile:v5 featureIdentifier:v4 loggingCategory:v6];

  return v7;
}

- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)a3
{
  if ([a3 isEqualToString:self->_featureIdentifier])
  {
    v4 = self->_featureAvailabilityManager;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)notificationSyncClient:(id)a3 didReceiveInstructionWithAction:(int64_t)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  _HKInitializeLogging();
  v7 = MEMORY[0x277CCC300];
  v8 = *MEMORY[0x277CCC300];
  if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = objc_opt_class();
    v11 = v10;
    v12 = NSStringFromHKNotificationInstructionAction();
    *buf = 138543618;
    v48 = v10;
    v49 = 2112;
    v50 = v12;
    _os_log_impl(&dword_25155E000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received instruction with action: %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v14 = [WeakRetained notificationManager];

  if (a4 == 1)
  {
    v42 = 0;
    v15 = [v6 pendingNotificationDismissInstructionsWithError:&v42];
    v16 = v42;
    if (!v15)
    {
      _HKInitializeLogging();
      v29 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        [HDExampleFeatureProfileExtension notificationSyncClient:v29 didReceiveInstructionWithAction:?];
      }

      goto LABEL_20;
    }

    v26 = [v15 categoryIdentifiers];
    v27 = [v26 count];

    if (v27)
    {
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __91__HDExampleFeatureProfileExtension_notificationSyncClient_didReceiveInstructionWithAction___block_invoke_313;
      v37[3] = &unk_2796BCD50;
      v38 = v14;
      v39 = v6;
      v40 = v15;
      v41 = self;
      v15 = v15;
      [v38 getDeliveredNotificationsWithCompletionHandler:v37];

      goto LABEL_20;
    }

    _HKInitializeLogging();
    v34 = *v7;
    if (!os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v31 = v34;
    v35 = objc_opt_class();
    *buf = 138543362;
    v48 = v35;
    v33 = v35;
LABEL_19:
    _os_log_impl(&dword_25155E000, v31, OS_LOG_TYPE_DEFAULT, "[%{public}@] No valid instructions found", buf, 0xCu);

    goto LABEL_20;
  }

  if (a4 == 3)
  {
    v46 = 0;
    v15 = [v6 pendingNotificationSendInstructionsWithError:&v46];
    v16 = v46;
    if (!v15)
    {
      _HKInitializeLogging();
      v28 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        [HDExampleFeatureProfileExtension notificationSyncClient:v28 didReceiveInstructionWithAction:?];
      }

      goto LABEL_20;
    }

    v17 = [v15 categoryIdentifiers];
    v18 = [v17 count];

    if (v18)
    {
      v19 = objc_alloc_init(MEMORY[0x277CE1F60]);
      [v19 setTitle:@"Example Feature [Internal Only]"];
      v20 = [v15 categoryIdentifiers];
      v21 = [v20 allObjects];
      v22 = [v21 componentsJoinedByString:@"\n"];
      [v19 setBody:v22];

      v23 = [MEMORY[0x277CCAD78] UUID];
      v24 = [v23 UUIDString];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __91__HDExampleFeatureProfileExtension_notificationSyncClient_didReceiveInstructionWithAction___block_invoke;
      v43[3] = &unk_2796BCD08;
      v43[4] = self;
      v44 = v6;
      v45 = v15;
      v25 = v15;
      [v14 postNotificationWithIdentifier:v24 content:v19 trigger:0 completion:v43];

      v15 = v19;
LABEL_20:

      goto LABEL_21;
    }

    _HKInitializeLogging();
    v30 = *v7;
    if (!os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v31 = v30;
    v32 = objc_opt_class();
    *buf = 138543362;
    v48 = v32;
    v33 = v32;
    goto LABEL_19;
  }

LABEL_21:

  v36 = *MEMORY[0x277D85DE8];
}

void __91__HDExampleFeatureProfileExtension_notificationSyncClient_didReceiveInstructionWithAction___block_invoke(void *a1, char a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MEMORY[0x277CCC300];
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v7 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      __91__HDExampleFeatureProfileExtension_notificationSyncClient_didReceiveInstructionWithAction___block_invoke_cold_1(a1, v7);
    }
  }

  v8 = a1[5];
  v9 = a1[6];
  v19 = 0;
  v10 = [v8 markPendingNotificationInstructionsAsProcessed:v9 error:&v19];
  v11 = v19;
  if ((v10 & 1) == 0)
  {
    _HKInitializeLogging();
    v12 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v14 = a1[4];
      v15 = v12;
      v16 = objc_opt_class();
      v17 = a1[6];
      *buf = 138543874;
      v21 = v16;
      v22 = 2114;
      v23 = v17;
      v24 = 2114;
      v25 = v11;
      v18 = v16;
      _os_log_error_impl(&dword_25155E000, v15, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to process pending notifications: %{public}@ %{public}@", buf, 0x20u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __91__HDExampleFeatureProfileExtension_notificationSyncClient_didReceiveInstructionWithAction___block_invoke_313(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [a2 hk_map:&__block_literal_global];
  [*(a1 + 32) removeDeliveredNotificationsWithIdentifiers:v3];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v15 = 0;
  v6 = [v4 markPendingNotificationInstructionsAsProcessed:v5 error:&v15];
  v7 = v15;
  if ((v6 & 1) == 0)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC300];
    if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 56);
      v11 = v8;
      v12 = objc_opt_class();
      v13 = *(a1 + 48);
      *buf = 138543874;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      v20 = 2114;
      v21 = v7;
      v14 = v12;
      _os_log_error_impl(&dword_25155E000, v11, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to process pending notifications: %{public}@ %{public}@", buf, 0x20u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

id __91__HDExampleFeatureProfileExtension_notificationSyncClient_didReceiveInstructionWithAction___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 request];
  v3 = [v2 identifier];

  return v3;
}

- (id)_initWithProfile:(void *)a3 featureIdentifier:(void *)a4 loggingCategory:
{
  v36[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v33.receiver = a1;
    v33.super_class = HDExampleFeatureProfileExtension;
    v10 = objc_msgSendSuper2(&v33, sel_init);
    a1 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 4, a3);
      objc_storeWeak(a1 + 5, v7);
      v11 = [MEMORY[0x277CCDD30] sharedBehavior];
      v12 = [v11 isAppleInternalInstall];

      if (v12)
      {
        v13 = objc_alloc(MEMORY[0x277D107C0]);
        v14 = [v7 daemon];
        v15 = [v13 initWithDaemon:v14 featureIdentifier:v8];

        v16 = objc_alloc(MEMORY[0x277D10728]);
        v17 = [MEMORY[0x277CCD260] emptyCountrySet];
        v18 = [v7 daemon];
        v19 = [v16 initWithFeatureIdentifier:v8 defaultCountrySet:v17 healthDaemon:v18];

        v20 = objc_alloc(MEMORY[0x277CCD420]);
        v35 = *MEMORY[0x277CCBEA0];
        v21 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:v8];
        v34 = v21;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
        v36[0] = v22;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
        v24 = [v20 initWithRequirementsByContext:v23];

        v25 = [objc_alloc(MEMORY[0x277D106D8]) initWithProfile:v7 featureIdentifier:v8 availabilityRequirements:v24 currentOnboardingVersion:1 pairedDeviceCapability:0 regionAvailabilityProvider:v19 disableAndExpiryProvider:v15 loggingCategory:v9];
        v26 = a1[1];
        a1[1] = v25;

        v27 = HKCreateSerialDispatchQueue();
        v28 = a1[3];
        a1[3] = v27;

        v29 = [objc_alloc(MEMORY[0x277D107B8]) initWithProfile:v7 clientIdentifier:v8 queue:a1[3]];
        v30 = a1[2];
        a1[2] = v29;

        [a1[2] setDelegate:a1];
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
  return a1;
}

- (void)notificationSyncClient:(void *)a1 didReceiveInstructionWithAction:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_0(v2);
  OUTLINED_FUNCTION_1(&dword_25155E000, v4, v5, "[%{public}@] Error retrieving dismiss instructions: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)notificationSyncClient:(void *)a1 didReceiveInstructionWithAction:.cold.2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_0(v2);
  OUTLINED_FUNCTION_1(&dword_25155E000, v4, v5, "[%{public}@] Error retrieving send instructions: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __91__HDExampleFeatureProfileExtension_notificationSyncClient_didReceiveInstructionWithAction___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_opt_class();
  v5 = OUTLINED_FUNCTION_0(v4);
  OUTLINED_FUNCTION_1(&dword_25155E000, v6, v7, "[%{public}@] Failed to post notifications %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

@end