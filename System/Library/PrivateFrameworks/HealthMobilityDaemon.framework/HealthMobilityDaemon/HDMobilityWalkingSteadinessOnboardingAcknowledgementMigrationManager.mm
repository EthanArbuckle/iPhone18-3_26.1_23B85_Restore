@interface HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager
- (HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager)initWithProfile:(id)a3 delegate:(id)a4;
- (HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManagerDelegate)delegate;
- (id)_queue_fetchFirstOnboardingCompletion;
- (void)_enqueueMigration;
- (void)_queue_fetchFirstOnboardingCompletion;
- (void)_queue_migrateNotificationOnboardingCompletionToOnboardingAcknowledgement;
- (void)_queue_migrateOnboardingAcknowledgementToNotificationOnboardingCompletionWithClassificationCompletion:(id)a3;
- (void)_queue_reconcileFeatures;
- (void)_startObservation;
- (void)daemonReady:(id)a3;
- (void)featureSettingsManager:(id)a3 didUpdateSettingsForFeatureIdentifier:(id)a4;
- (void)onboardingCompletionManager:(id)a3 didUpdateOnboardingCompletionsForFeatureIdentifier:(id)a4;
- (void)profileDidBecomeReady:(id)a3;
@end

@implementation HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager

- (HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager)initWithProfile:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager;
  v8 = [(HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, v6);
    v10 = HKCreateSerialDispatchQueue();
    queue = v9->_queue;
    v9->_queue = v10;

    objc_storeWeak(&v9->_delegate, v7);
    WeakRetained = objc_loadWeakRetained(&v9->_profile);
    [WeakRetained registerProfileReadyObserver:v9 queue:0];
  }

  return v9;
}

- (void)profileDidBecomeReady:(id)a3
{
  v4 = [a3 daemon];
  [v4 registerDaemonReadyObserver:self queue:0];
}

- (void)daemonReady:(id)a3
{
  [(HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager *)self _enqueueMigration];

  [(HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager *)self _startObservation];
}

- (void)_startObservation
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained featureSettingsManager];
  [v4 registerObserver:self featureIdentifier:*MEMORY[0x277CCC110] queue:self->_queue];

  v6 = objc_loadWeakRetained(&self->_profile);
  v5 = [v6 onboardingCompletionManager];
  [v5 registerObserver:self featureIdentifier:*MEMORY[0x277CCC118] queue:self->_queue];
}

- (void)featureSettingsManager:(id)a3 didUpdateSettingsForFeatureIdentifier:(id)a4
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2F8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&dword_251962000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Feature settings changed for classifications, triggering migration", &v7, 0xCu);
  }

  [(HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager *)self _enqueueMigration];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)onboardingCompletionManager:(id)a3 didUpdateOnboardingCompletionsForFeatureIdentifier:(id)a4
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2F8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&dword_251962000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Onboarding completion changed for notifications, triggering migration", &v7, 0xCu);
  }

  [(HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager *)self _enqueueMigration];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_enqueueMigration
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained database];
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __89__HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager__enqueueMigration__block_invoke;
  v6[3] = &unk_2796D9460;
  v6[4] = self;
  [v4 performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:queue block:v6];
}

void __89__HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager__enqueueMigration__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained daemon];
  v4 = [v3 maintenanceWorkCoordinator];
  v5 = MEMORY[0x277D10748];
  v6 = [*(a1 + 32) description];
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __89__HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager__enqueueMigration__block_invoke_2;
  v10[3] = &unk_2796D9460;
  v10[4] = v7;
  v9 = [v5 maintenanceOperationWithName:v6 queue:v8 synchronousBlock:v10];
  [v4 enqueueMaintenanceOperation:v9];
}

- (void)_queue_reconcileFeatures
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_251962000, v0, v1, "[%{public}@] Error while retrieving feature settings, stopping onboarding acknowledgement migration: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_queue_migrateOnboardingAcknowledgementToNotificationOnboardingCompletionWithClassificationCompletion:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  v6 = objc_alloc(MEMORY[0x277CCD740]);
  v7 = *MEMORY[0x277CCC118];
  v8 = [v5 completionDate];
  v9 = [v5 countryCode];

  v10 = [v6 initWithFeatureIdentifier:v7 version:1 completionDate:v8 countryCode:v9 countryCodeProvenance:3];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v12 = [WeakRetained onboardingCompletionManager];
  v16 = 0;
  LOBYTE(v9) = [v12 insertOnboardingCompletion:v10 error:&v16];
  v13 = v16;

  _HKInitializeLogging();
  v14 = *MEMORY[0x277CCC2F8];
  v15 = *MEMORY[0x277CCC2F8];
  if (v9)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [(HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager *)self _queue_migrateOnboardingAcknowledgementToNotificationOnboardingCompletionWithClassificationCompletion:v14];
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager _queue_migrateOnboardingAcknowledgementToNotificationOnboardingCompletionWithClassificationCompletion:];
  }
}

- (void)_queue_migrateNotificationOnboardingCompletionToOnboardingAcknowledgement
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_251962000, a2, OS_LOG_TYPE_DEBUG, "[%{public}@] Onboarding acknowledgement saved to feature settings to reflect notification onboarding completion", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (id)_queue_fetchFirstOnboardingCompletion
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v3 = [WeakRetained onboardingCompletionManager];
  v4 = *MEMORY[0x277CCC110];
  v9 = 0;
  v5 = [v3 onboardingCompletionsForHighestVersionOfFeatureIdentifier:v4 error:&v9];
  v6 = v9;

  if (v5)
  {
    v7 = [v5 firstObject];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
    {
      [HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManager _queue_fetchFirstOnboardingCompletion];
    }

    v7 = 0;
  }

  return v7;
}

- (HDMobilityWalkingSteadinessOnboardingAcknowledgementMigrationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_queue_migrateOnboardingAcknowledgementToNotificationOnboardingCompletionWithClassificationCompletion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_251962000, v0, v1, "[%{public}@] Error while setting onboarding completion for notifications: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_queue_migrateOnboardingAcknowledgementToNotificationOnboardingCompletionWithClassificationCompletion:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_251962000, a2, OS_LOG_TYPE_DEBUG, "[%{public}@] Notification onboarding completion saved to reflect onboarding acknowledgement in classifications feature setting", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_queue_fetchFirstOnboardingCompletion
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_251962000, v0, v1, "[%{public}@] Error while retrieving onboarding completions for classifications, stopping onboarding acknowledgement migration: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end