@interface HKMobilityWalkingSteadinessFeatureStatusManager
- (BOOL)isFitnessTrackingEnabled;
- (HKMobilityWalkingSteadinessFeatureStatusManager)initWithHealthStore:(id)a3;
- (id)notificationStatusWithError:(id *)a3;
- (id)onboardingStatusWithError:(id *)a3;
- (void)addObserver:(id)a3 queue:(id)a4;
- (void)client_didUpdateFitnessTrackingEnabled:(BOOL)a3;
- (void)client_didUpdateNotificationStatus:(id)a3;
- (void)client_didUpdateOnboardingStatus:(id)a3;
- (void)connectionInvalidated;
- (void)isFitnessTrackingEnabled;
- (void)removeObserver:(id)a3;
- (void)resetOnboarding;
- (void)setNotificationsEnabled:(BOOL)a3;
@end

@implementation HKMobilityWalkingSteadinessFeatureStatusManager

- (HKMobilityWalkingSteadinessFeatureStatusManager)initWithHealthStore:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HKMobilityWalkingSteadinessFeatureStatusManager;
  v5 = [(HKMobilityWalkingSteadinessFeatureStatusManager *)&v16 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CCD738]);
    v7 = [v6 initWithName:@"HKMobilityWalkingSteadinessFeatureStatusManager" loggingCategory:*MEMORY[0x277CCC2F8]];
    observers = v5->_observers;
    v5->_observers = v7;

    v9 = objc_alloc(MEMORY[0x277CCDAA0]);
    v10 = [MEMORY[0x277CCAD78] UUID];
    v11 = [v9 initWithHealthStore:v4 taskIdentifier:@"HKMobilityWalkingSteadinessFeatureStatusManagerServer" exportedObject:v5 taskUUID:v10];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = v11;

    [(HKTaskServerProxyProvider *)v5->_proxyProvider setShouldRetryOnInterruption:0];
    v13 = objc_alloc_init(MEMORY[0x277CCDA98]);
    [(HKTaskServerProxyProvider *)v5->_proxyProvider setTaskConfiguration:v13];

    v14 = v5;
  }

  return v5;
}

- (id)onboardingStatusWithError:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__HKMobilityWalkingSteadinessFeatureStatusManager_onboardingStatusWithError___block_invoke;
  v11[3] = &unk_2796D84B0;
  v11[4] = &v18;
  v11[5] = &v12;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__HKMobilityWalkingSteadinessFeatureStatusManager_onboardingStatusWithError___block_invoke_3;
  v10[3] = &unk_2796D84D8;
  v10[4] = &v12;
  [(HKTaskServerProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v11 errorHandler:v10];
  v5 = v13[5];
  v6 = v5;
  if (v5)
  {
    if (a3)
    {
      v7 = v5;
      *a3 = v6;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v8 = v19[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

uint64_t __77__HKMobilityWalkingSteadinessFeatureStatusManager_onboardingStatusWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __77__HKMobilityWalkingSteadinessFeatureStatusManager_onboardingStatusWithError___block_invoke_2;
  v3[3] = &unk_2796D8488;
  v4 = *(a1 + 32);
  return [a2 remote_onboardingStatusWithCompletion:v3];
}

void __77__HKMobilityWalkingSteadinessFeatureStatusManager_onboardingStatusWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)resetOnboarding
{
  OUTLINED_FUNCTION_2(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_251952000, v2, v3, "[%{public}@] Error while resetting onboarding: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __66__HKMobilityWalkingSteadinessFeatureStatusManager_resetOnboarding__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __66__HKMobilityWalkingSteadinessFeatureStatusManager_resetOnboarding__block_invoke_2;
  v3[3] = &unk_2796D8500;
  v4 = *(a1 + 32);
  return [a2 remote_resetOnboardingWithCompletion:v3];
}

- (id)notificationStatusWithError:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__HKMobilityWalkingSteadinessFeatureStatusManager_notificationStatusWithError___block_invoke;
  v11[3] = &unk_2796D84B0;
  v11[4] = &v18;
  v11[5] = &v12;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__HKMobilityWalkingSteadinessFeatureStatusManager_notificationStatusWithError___block_invoke_3;
  v10[3] = &unk_2796D84D8;
  v10[4] = &v12;
  [(HKTaskServerProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v11 errorHandler:v10];
  v5 = v13[5];
  v6 = v5;
  if (v5)
  {
    if (a3)
    {
      v7 = v5;
      *a3 = v6;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v8 = v19[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

uint64_t __79__HKMobilityWalkingSteadinessFeatureStatusManager_notificationStatusWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __79__HKMobilityWalkingSteadinessFeatureStatusManager_notificationStatusWithError___block_invoke_2;
  v3[3] = &unk_2796D8528;
  v4 = *(a1 + 32);
  return [a2 remote_notificationStatusWithCompletion:v3];
}

void __79__HKMobilityWalkingSteadinessFeatureStatusManager_notificationStatusWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)setNotificationsEnabled:(BOOL)a3
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  v8 = 0;
  v9[0] = &v8;
  v9[1] = 0x3032000000;
  v9[2] = __Block_byref_object_copy_;
  v9[3] = __Block_byref_object_dispose_;
  v10 = 0;
  proxyProvider = self->_proxyProvider;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__HKMobilityWalkingSteadinessFeatureStatusManager_setNotificationsEnabled___block_invoke;
  v6[3] = &unk_2796D8550;
  v7 = a3;
  v6[4] = v11;
  v6[5] = &v8;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__HKMobilityWalkingSteadinessFeatureStatusManager_setNotificationsEnabled___block_invoke_3;
  v5[3] = &unk_2796D84D8;
  v5[4] = &v8;
  [(HKTaskServerProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v6 errorHandler:v5];
  if (*(v9[0] + 40))
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
    {
      [(HKMobilityWalkingSteadinessFeatureStatusManager *)self setNotificationsEnabled:v9];
    }
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(v11, 8);
}

uint64_t __75__HKMobilityWalkingSteadinessFeatureStatusManager_setNotificationsEnabled___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __75__HKMobilityWalkingSteadinessFeatureStatusManager_setNotificationsEnabled___block_invoke_2;
  v4[3] = &unk_2796D8500;
  v5 = *(a1 + 32);
  return [a2 remote_setNotificationsEnabled:v2 withCompletion:v4];
}

- (BOOL)isFitnessTrackingEnabled
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v8 = 0;
  v9[0] = &v8;
  v9[1] = 0x3032000000;
  v9[2] = __Block_byref_object_copy_;
  v9[3] = __Block_byref_object_dispose_;
  v10 = 0;
  proxyProvider = self->_proxyProvider;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__HKMobilityWalkingSteadinessFeatureStatusManager_isFitnessTrackingEnabled__block_invoke;
  v7[3] = &unk_2796D84B0;
  v7[4] = &v11;
  v7[5] = &v8;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__HKMobilityWalkingSteadinessFeatureStatusManager_isFitnessTrackingEnabled__block_invoke_3;
  v6[3] = &unk_2796D84D8;
  v6[4] = &v8;
  [(HKTaskServerProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v7 errorHandler:v6];
  if (*(v9[0] + 40))
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_FAULT))
    {
      [(HKMobilityWalkingSteadinessFeatureStatusManager *)self isFitnessTrackingEnabled];
    }
  }

  v4 = [v12[5] BOOLValue];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v11, 8);
  return v4;
}

uint64_t __75__HKMobilityWalkingSteadinessFeatureStatusManager_isFitnessTrackingEnabled__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __75__HKMobilityWalkingSteadinessFeatureStatusManager_isFitnessTrackingEnabled__block_invoke_2;
  v3[3] = &unk_2796D8500;
  v4 = *(a1 + 32);
  return [a2 remote_fitnessTrackingEnabledWithCompletion:v3];
}

void __75__HKMobilityWalkingSteadinessFeatureStatusManager_isFitnessTrackingEnabled__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (void)addObserver:(id)a3 queue:(id)a4
{
  observers = self->_observers;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__HKMobilityWalkingSteadinessFeatureStatusManager_addObserver_queue___block_invoke;
  v5[3] = &unk_2796D85C8;
  v5[4] = self;
  [(HKObserverSet *)observers registerObserver:a3 queue:a4 runIfFirstObserver:v5];
}

void __69__HKMobilityWalkingSteadinessFeatureStatusManager_addObserver_queue___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) clientQueueActionHandlerWithCompletion:0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HKMobilityWalkingSteadinessFeatureStatusManager_addObserver_queue___block_invoke_2;
  v7[3] = &unk_2796D8578;
  v8 = v2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__HKMobilityWalkingSteadinessFeatureStatusManager_addObserver_queue___block_invoke_3;
  v6[3] = &unk_2796D85A0;
  v6[4] = v3;
  v5 = v2;
  [v4 fetchProxyWithHandler:v7 errorHandler:v6];
}

void __69__HKMobilityWalkingSteadinessFeatureStatusManager_addObserver_queue___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
  {
    __69__HKMobilityWalkingSteadinessFeatureStatusManager_addObserver_queue___block_invoke_3_cold_1(a1);
  }
}

- (void)removeObserver:(id)a3
{
  observers = self->_observers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__HKMobilityWalkingSteadinessFeatureStatusManager_removeObserver___block_invoke;
  v4[3] = &unk_2796D85C8;
  v4[4] = self;
  [(HKObserverSet *)observers unregisterObserver:a3 runIfLastObserver:v4];
}

uint64_t __66__HKMobilityWalkingSteadinessFeatureStatusManager_removeObserver___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__HKMobilityWalkingSteadinessFeatureStatusManager_removeObserver___block_invoke_3;
  v4[3] = &unk_2796D85A0;
  v4[4] = v1;
  return [v2 fetchProxyWithHandler:&__block_literal_global_0 errorHandler:v4];
}

void __66__HKMobilityWalkingSteadinessFeatureStatusManager_removeObserver___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
  {
    __66__HKMobilityWalkingSteadinessFeatureStatusManager_removeObserver___block_invoke_3_cold_1(a1);
  }
}

- (void)client_didUpdateOnboardingStatus:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2F8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = self;
    _os_log_impl(&dword_251952000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying observers that onboarding status changed", buf, 0xCu);
  }

  observers = self->_observers;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__HKMobilityWalkingSteadinessFeatureStatusManager_client_didUpdateOnboardingStatus___block_invoke;
  v9[3] = &unk_2796D8610;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  [(HKObserverSet *)observers notifyObservers:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __84__HKMobilityWalkingSteadinessFeatureStatusManager_client_didUpdateOnboardingStatus___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 featureStatusManager:*(a1 + 32) didUpdateOnboardingStatus:*(a1 + 40)];
  }
}

- (void)client_didUpdateNotificationStatus:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2F8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = self;
    _os_log_impl(&dword_251952000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying observers that notification status changed", buf, 0xCu);
  }

  observers = self->_observers;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__HKMobilityWalkingSteadinessFeatureStatusManager_client_didUpdateNotificationStatus___block_invoke;
  v9[3] = &unk_2796D8610;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  [(HKObserverSet *)observers notifyObservers:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __86__HKMobilityWalkingSteadinessFeatureStatusManager_client_didUpdateNotificationStatus___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 featureStatusManager:*(a1 + 32) didUpdateNotificationStatus:*(a1 + 40)];
  }
}

- (void)client_didUpdateFitnessTrackingEnabled:(BOOL)a3
{
  observers = self->_observers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __90__HKMobilityWalkingSteadinessFeatureStatusManager_client_didUpdateFitnessTrackingEnabled___block_invoke;
  v4[3] = &unk_2796D8638;
  v4[4] = self;
  v5 = a3;
  [(HKObserverSet *)observers notifyObservers:v4];
}

void __90__HKMobilityWalkingSteadinessFeatureStatusManager_client_didUpdateFitnessTrackingEnabled___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 featureStatusManager:*(a1 + 32) didUpdateFitnessTrackingEnabled:*(a1 + 40)];
  }
}

- (void)connectionInvalidated
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_251952000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Connection invalidated", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setNotificationsEnabled:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_251952000, v2, v3, "[%{public}@] Error while setting notification enabled: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)isFitnessTrackingEnabled
{
  OUTLINED_FUNCTION_2(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_251952000, v2, OS_LOG_TYPE_FAULT, "[%{public}@] Error while reading fitness tracking enabled setting: %{public}@", v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __69__HKMobilityWalkingSteadinessFeatureStatusManager_addObserver_queue___block_invoke_3_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_251952000, v2, v3, "[%{public}@] Failed to communicate with task server for observation start: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

void __66__HKMobilityWalkingSteadinessFeatureStatusManager_removeObserver___block_invoke_3_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_251952000, v2, v3, "[%{public}@] Failed to communicate with task server for observation stop: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

@end