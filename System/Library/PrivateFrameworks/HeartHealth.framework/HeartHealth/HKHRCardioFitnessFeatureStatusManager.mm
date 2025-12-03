@interface HKHRCardioFitnessFeatureStatusManager
+ (id)taskIdentifier;
- (BOOL)_synchronouslyStartObservingWithError:(id *)error;
- (HKHRCardioFitnessFeatureStatusManager)initWithHealthStore:(id)store;
- (HKHRCardioFitnessFeatureStatusManager)initWithProxyProvider:(id)provider;
- (id)notificationStatusWithError:(id *)error;
- (id)onboardingStatusWithError:(id *)error;
- (void)_handleAutomaticProxyReconnection;
- (void)addObserver:(id)observer queue:(id)queue;
- (void)client_didUpdateNotificationStatus:(id)status;
- (void)client_didUpdateOnboardingStatus:(id)status;
- (void)connectionInvalidated;
- (void)removeObserver:(id)observer;
- (void)resetOnboarding;
- (void)setNotificationsEnabled:(BOOL)enabled;
@end

@implementation HKHRCardioFitnessFeatureStatusManager

- (HKHRCardioFitnessFeatureStatusManager)initWithHealthStore:(id)store
{
  v4 = MEMORY[0x277CCDAA0];
  storeCopy = store;
  v6 = [v4 alloc];
  v7 = +[HKHRCardioFitnessFeatureStatusManager taskIdentifier];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v9 = [v6 initWithHealthStore:storeCopy taskIdentifier:v7 exportedObject:self taskUUID:uUID];

  [v9 setShouldRetryOnInterruption:0];
  v10 = objc_alloc_init(MEMORY[0x277CCDA98]);
  [v9 setTaskConfiguration:v10];

  v11 = [(HKHRCardioFitnessFeatureStatusManager *)self initWithProxyProvider:v9];
  return v11;
}

- (HKHRCardioFitnessFeatureStatusManager)initWithProxyProvider:(id)provider
{
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = HKHRCardioFitnessFeatureStatusManager;
  v6 = [(HKHRCardioFitnessFeatureStatusManager *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277CCD738]);
    v8 = [v7 initWithName:@"HKHRCardioFitnessFeatureStatusManager" loggingCategory:*MEMORY[0x277CCC2D0]];
    observers = v6->_observers;
    v6->_observers = v8;

    objc_storeStrong(&v6->_proxyProvider, provider);
  }

  return v6;
}

- (id)onboardingStatusWithError:(id *)error
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
  v11[2] = __67__HKHRCardioFitnessFeatureStatusManager_onboardingStatusWithError___block_invoke;
  v11[3] = &unk_27860AD20;
  v11[4] = &v18;
  v11[5] = &v12;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__HKHRCardioFitnessFeatureStatusManager_onboardingStatusWithError___block_invoke_3;
  v10[3] = &unk_27860AD48;
  v10[4] = &v12;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v11 errorHandler:v10];
  v5 = v13[5];
  v6 = v5;
  if (v5)
  {
    if (error)
    {
      v7 = v5;
      *error = v6;
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

uint64_t __67__HKHRCardioFitnessFeatureStatusManager_onboardingStatusWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__HKHRCardioFitnessFeatureStatusManager_onboardingStatusWithError___block_invoke_2;
  v3[3] = &unk_27860ACF8;
  v4 = *(a1 + 32);
  return [a2 remote_onboardingStatusWithCompletion:v3];
}

void __67__HKHRCardioFitnessFeatureStatusManager_onboardingStatusWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
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
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_228942000, v3, v4, "[%{public}@] Error while resetting onboarding: %{public}@");
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __56__HKHRCardioFitnessFeatureStatusManager_resetOnboarding__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__HKHRCardioFitnessFeatureStatusManager_resetOnboarding__block_invoke_2;
  v3[3] = &unk_27860AD70;
  v4 = *(a1 + 32);
  return [a2 remote_resetOnboardingWithCompletion:v3];
}

- (id)notificationStatusWithError:(id *)error
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
  v11[2] = __69__HKHRCardioFitnessFeatureStatusManager_notificationStatusWithError___block_invoke;
  v11[3] = &unk_27860AD20;
  v11[4] = &v18;
  v11[5] = &v12;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__HKHRCardioFitnessFeatureStatusManager_notificationStatusWithError___block_invoke_3;
  v10[3] = &unk_27860AD48;
  v10[4] = &v12;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v11 errorHandler:v10];
  v5 = v13[5];
  v6 = v5;
  if (v5)
  {
    if (error)
    {
      v7 = v5;
      *error = v6;
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

uint64_t __69__HKHRCardioFitnessFeatureStatusManager_notificationStatusWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __69__HKHRCardioFitnessFeatureStatusManager_notificationStatusWithError___block_invoke_2;
  v3[3] = &unk_27860AD98;
  v4 = *(a1 + 32);
  return [a2 remote_notificationStatusWithCompletion:v3];
}

void __69__HKHRCardioFitnessFeatureStatusManager_notificationStatusWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (void)setNotificationsEnabled:(BOOL)enabled
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  v9 = 0;
  v10[0] = &v9;
  v10[1] = 0x3032000000;
  v10[2] = __Block_byref_object_copy_;
  v10[3] = __Block_byref_object_dispose_;
  v11 = 0;
  proxyProvider = self->_proxyProvider;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HKHRCardioFitnessFeatureStatusManager_setNotificationsEnabled___block_invoke;
  v7[3] = &unk_27860ADC0;
  enabledCopy = enabled;
  v7[4] = v12;
  v7[5] = &v9;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__HKHRCardioFitnessFeatureStatusManager_setNotificationsEnabled___block_invoke_3;
  v6[3] = &unk_27860AD48;
  v6[4] = &v9;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v7 errorHandler:v6];
  if (*(v10[0] + 40))
  {
    _HKInitializeLogging();
    v5 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(HKHRCardioFitnessFeatureStatusManager *)self setNotificationsEnabled:v10];
    }
  }

  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(v12, 8);
}

uint64_t __65__HKHRCardioFitnessFeatureStatusManager_setNotificationsEnabled___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__HKHRCardioFitnessFeatureStatusManager_setNotificationsEnabled___block_invoke_2;
  v4[3] = &unk_27860AD70;
  v5 = *(a1 + 32);
  return [a2 remote_setNotificationsEnabled:v2 withCompletion:v4];
}

- (void)addObserver:(id)observer queue:(id)queue
{
  observers = self->_observers;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__HKHRCardioFitnessFeatureStatusManager_addObserver_queue___block_invoke;
  v5[3] = &unk_27860AE60;
  v5[4] = self;
  [(HKObserverSet *)observers registerObserver:observer queue:queue runIfFirstObserver:v5];
}

void __59__HKHRCardioFitnessFeatureStatusManager_addObserver_queue___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__HKHRCardioFitnessFeatureStatusManager_addObserver_queue___block_invoke_2;
  v8[3] = &unk_27860ADE8;
  objc_copyWeak(&v9, &location);
  [*(*(a1 + 32) + 16) setAutomaticProxyReconnectionHandler:v8];
  [*(*(a1 + 32) + 16) setShouldRetryOnInterruption:1];
  v2 = [*(*(a1 + 32) + 16) clientQueueActionHandlerWithCompletion:0];
  v3 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HKHRCardioFitnessFeatureStatusManager_addObserver_queue___block_invoke_3;
  v6[3] = &unk_27860AE10;
  v4 = v2;
  v7 = v4;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__HKHRCardioFitnessFeatureStatusManager_addObserver_queue___block_invoke_4;
  v5[3] = &unk_27860AE38;
  v5[4] = *(a1 + 32);
  [v3 fetchProxyWithHandler:v6 errorHandler:v5];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __59__HKHRCardioFitnessFeatureStatusManager_addObserver_queue___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAutomaticProxyReconnection];
}

void __59__HKHRCardioFitnessFeatureStatusManager_addObserver_queue___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __59__HKHRCardioFitnessFeatureStatusManager_addObserver_queue___block_invoke_4_cold_1(a1);
  }
}

- (void)removeObserver:(id)observer
{
  observers = self->_observers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__HKHRCardioFitnessFeatureStatusManager_removeObserver___block_invoke;
  v4[3] = &unk_27860AE60;
  v4[4] = self;
  [(HKObserverSet *)observers unregisterObserver:observer runIfLastObserver:v4];
}

uint64_t __56__HKHRCardioFitnessFeatureStatusManager_removeObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setAutomaticProxyReconnectionHandler:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__HKHRCardioFitnessFeatureStatusManager_removeObserver___block_invoke_3;
  v5[3] = &unk_27860AE38;
  v5[4] = v2;
  return [v3 fetchProxyWithHandler:&__block_literal_global_4 errorHandler:v5];
}

void __56__HKHRCardioFitnessFeatureStatusManager_removeObserver___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__HKHRCardioFitnessFeatureStatusManager_removeObserver___block_invoke_3_cold_1(a1);
  }
}

- (BOOL)_synchronouslyStartObservingWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__HKHRCardioFitnessFeatureStatusManager__synchronouslyStartObservingWithError___block_invoke;
  v11[3] = &unk_27860AD20;
  v11[4] = &v18;
  v11[5] = &v12;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__HKHRCardioFitnessFeatureStatusManager__synchronouslyStartObservingWithError___block_invoke_3;
  v10[3] = &unk_27860AEA8;
  v10[4] = self;
  v10[5] = &v12;
  [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v11 errorHandler:v10];
  v5 = v13[5];
  v6 = v5;
  if (v5)
  {
    if (error)
    {
      v7 = v5;
      *error = v6;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v8 = *(v19 + 24);
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v8;
}

uint64_t __79__HKHRCardioFitnessFeatureStatusManager__synchronouslyStartObservingWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __79__HKHRCardioFitnessFeatureStatusManager__synchronouslyStartObservingWithError___block_invoke_2;
  v3[3] = &unk_27860AD70;
  v4 = *(a1 + 32);
  return [a2 remote_startObservingChangesWithCompletion:v3];
}

void __79__HKHRCardioFitnessFeatureStatusManager__synchronouslyStartObservingWithError___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __79__HKHRCardioFitnessFeatureStatusManager__synchronouslyStartObservingWithError___block_invoke_3_cold_1(a1);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)_handleAutomaticProxyReconnection
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_228942000, v0, OS_LOG_TYPE_ERROR, "[%{public}@] Received notification of successful server reconnection", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)client_didUpdateNotificationStatus:(id)status
{
  statusCopy = status;
  observers = self->_observers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__HKHRCardioFitnessFeatureStatusManager_client_didUpdateNotificationStatus___block_invoke;
  v7[3] = &unk_27860AED0;
  v7[4] = self;
  v8 = statusCopy;
  v6 = statusCopy;
  [(HKObserverSet *)observers notifyObservers:v7];
}

void __76__HKHRCardioFitnessFeatureStatusManager_client_didUpdateNotificationStatus___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 featureStatusManager:*(a1 + 32) didUpdateNotificationStatus:*(a1 + 40)];
  }
}

- (void)client_didUpdateOnboardingStatus:(id)status
{
  statusCopy = status;
  observers = self->_observers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__HKHRCardioFitnessFeatureStatusManager_client_didUpdateOnboardingStatus___block_invoke;
  v7[3] = &unk_27860AED0;
  v7[4] = self;
  v8 = statusCopy;
  v6 = statusCopy;
  [(HKObserverSet *)observers notifyObservers:v7];
}

void __74__HKHRCardioFitnessFeatureStatusManager_client_didUpdateOnboardingStatus___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 featureStatusManager:*(a1 + 32) didUpdateOnboardingStatus:*(a1 + 40)];
  }
}

- (void)connectionInvalidated
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_228942000, v0, OS_LOG_TYPE_ERROR, "[%{public}@] Connection invalidated", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)setNotificationsEnabled:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_228942000, v3, v4, "[%{public}@] Error while setting notification enabled: %{public}@");
  v5 = *MEMORY[0x277D85DE8];
}

void __59__HKHRCardioFitnessFeatureStatusManager_addObserver_queue___block_invoke_4_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_0(&dword_228942000, v2, v3, "[%{public}@] Failed to communicate with task server for observation start: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

void __56__HKHRCardioFitnessFeatureStatusManager_removeObserver___block_invoke_3_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_0(&dword_228942000, v2, v3, "[%{public}@] Failed to communicate with task server for observation stop: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

void __79__HKHRCardioFitnessFeatureStatusManager__synchronouslyStartObservingWithError___block_invoke_3_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(*(*(a1 + 40) + 8) + 40);
  OUTLINED_FUNCTION_1_2();
  v7 = v3;
  _os_log_error_impl(&dword_228942000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to communicate with task server for observation start: %{public}@", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end