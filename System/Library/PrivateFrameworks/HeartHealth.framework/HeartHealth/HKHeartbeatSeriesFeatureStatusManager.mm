@interface HKHeartbeatSeriesFeatureStatusManager
+ (id)taskIdentifier;
- (HKHeartbeatSeriesFeatureStatusManager)initWithHealthStore:(id)a3;
- (HKHeartbeatSeriesFeatureStatusManager)initWithHealthStore:(id)a3 heartNotificationsUserDefaults:(id)a4;
- (id)_synchronouslyStartObservingWithError:(id *)a3;
- (void)_handleAutomaticProxyReconnection;
- (void)_notifyObserversForFailureToUpdateWithError:(id)a3;
- (void)_notifyObserversForPredominantFeatureUpdate:(int64_t)a3;
- (void)_startObservingWithActivationHandler:(id)a3;
- (void)_updateAndNotifyAllObservers;
- (void)client_heartbeatSeriesFeatureStatusManagerDidFailToUpdateWithError:(id)a3;
- (void)client_heartbeatSeriesFeatureStatusManagerDidUpdatePredominantFeature:(int64_t)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)registerObserver:(id)a3 queue:(id)a4 activationHandler:(id)a5;
- (void)unregisterObserver:(id)a3;
@end

@implementation HKHeartbeatSeriesFeatureStatusManager

- (HKHeartbeatSeriesFeatureStatusManager)initWithHealthStore:(id)a3
{
  v4 = MEMORY[0x277CBEBD0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 initWithSuiteName:*MEMORY[0x277CCE458]];
  v8 = [(HKHeartbeatSeriesFeatureStatusManager *)self initWithHealthStore:v5 heartNotificationsUserDefaults:v7];

  return v8;
}

- (HKHeartbeatSeriesFeatureStatusManager)initWithHealthStore:(id)a3 heartNotificationsUserDefaults:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = HKHeartbeatSeriesFeatureStatusManager;
  v9 = [(HKHeartbeatSeriesFeatureStatusManager *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_healthStore, a3);
    v11 = objc_alloc(MEMORY[0x277CCD738]);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 initWithName:v13 loggingCategory:*MEMORY[0x277CCC2D0]];
    observers = v10->_observers;
    v10->_observers = v14;

    v16 = objc_alloc(MEMORY[0x277CCDAA0]);
    v17 = [objc_opt_class() taskIdentifier];
    v18 = [MEMORY[0x277CCAD78] UUID];
    v19 = [v16 initWithHealthStore:v7 taskIdentifier:v17 exportedObject:v10 taskUUID:v18];
    proxyProvider = v10->_proxyProvider;
    v10->_proxyProvider = v19;

    [(HKTaskServerProxyProvider *)v10->_proxyProvider setShouldRetryOnInterruption:0];
    v21 = objc_alloc_init(MEMORY[0x277CCDA98]);
    [(HKTaskServerProxyProvider *)v10->_proxyProvider setTaskConfiguration:v21];

    objc_storeStrong(&v10->_heartNotificationsUserDefaults, a4);
    [(HKHeartbeatSeriesFeatureStatusManager *)v10 _startObservingHeartNotificationsUserDefaults];
  }

  return v10;
}

- (void)dealloc
{
  [(NSUserDefaults *)self->_heartNotificationsUserDefaults removeObserver:self forKeyPath:*MEMORY[0x277CCE430] context:HeartNotificationsUserDefaultsContext];
  v3.receiver = self;
  v3.super_class = HKHeartbeatSeriesFeatureStatusManager;
  [(HKHeartbeatSeriesFeatureStatusManager *)&v3 dealloc];
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)registerObserver:(id)a3 queue:(id)a4 activationHandler:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  _HKInitializeLogging();
  v11 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v23 = objc_opt_class();
    v24 = 2048;
    v25 = self;
    v26 = 2112;
    v27 = v8;
    v12 = v23;
    _os_log_impl(&dword_228942000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Registering observer %@", buf, 0x20u);
  }

  observers = self->_observers;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __82__HKHeartbeatSeriesFeatureStatusManager_registerObserver_queue_activationHandler___block_invoke;
  v21[3] = &unk_27860AE60;
  v21[4] = self;
  [(HKObserverSet *)observers registerObserver:v8 queue:v10 runIfFirstObserver:v21];

  v14 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:v9];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __82__HKHeartbeatSeriesFeatureStatusManager_registerObserver_queue_activationHandler___block_invoke_3;
  v18[3] = &unk_27860B480;
  v18[4] = self;
  v19 = v8;
  v20 = v14;
  v15 = v14;
  v16 = v8;
  [(HKHeartbeatSeriesFeatureStatusManager *)self _startObservingWithActivationHandler:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __82__HKHeartbeatSeriesFeatureStatusManager_registerObserver_queue_activationHandler___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = MEMORY[0x277D85DD0];
  v3 = 3221225472;
  v4 = __82__HKHeartbeatSeriesFeatureStatusManager_registerObserver_queue_activationHandler___block_invoke_2;
  v5 = &unk_27860ADE8;
  objc_copyWeak(&v6, &location);
  [*(*(a1 + 32) + 24) setAutomaticProxyReconnectionHandler:&v2];
  [*(*(a1 + 32) + 24) setShouldRetryOnInterruption:{1, v2, v3, v4, v5}];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __82__HKHeartbeatSeriesFeatureStatusManager_registerObserver_queue_activationHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAutomaticProxyReconnection];
}

void __82__HKHeartbeatSeriesFeatureStatusManager_registerObserver_queue_activationHandler___block_invoke_3(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = a1[5];
  v9 = *(v7 + 16);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__HKHeartbeatSeriesFeatureStatusManager_registerObserver_queue_activationHandler___block_invoke_4;
  v12[3] = &unk_27860B458;
  v13 = v5;
  v14 = v7;
  v15 = v6;
  v10 = v6;
  v11 = v5;
  [v9 notifyObserver:v8 handler:v12];
  (*(a1[6] + 16))();
}

void __82__HKHeartbeatSeriesFeatureStatusManager_registerObserver_queue_activationHandler___block_invoke_4(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v7 = v3;
  if (v4)
  {
    [v3 heartbeatSeriesFeatureStatusManager:v5 didUpdatePredominantFeature:{objc_msgSend(v4, "integerValue")}];
  }

  else if (a1[6])
  {
    [v3 heartbeatSeriesFeatureStatusManager:v5 didFailToUpdateWithError:?];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hk_error:2000 description:@"Unknown error starting observation"];
    [v7 heartbeatSeriesFeatureStatusManager:v5 didFailToUpdateWithError:v6];
  }
}

- (void)unregisterObserver:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v11 = objc_opt_class();
    v12 = 2048;
    v13 = self;
    v14 = 2112;
    v15 = v4;
    v6 = v11;
    _os_log_impl(&dword_228942000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Unregistering observer %@", buf, 0x20u);
  }

  observers = self->_observers;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__HKHeartbeatSeriesFeatureStatusManager_unregisterObserver___block_invoke;
  v9[3] = &unk_27860AE60;
  v9[4] = self;
  [(HKObserverSet *)observers unregisterObserver:v4 runIfLastObserver:v9];

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __60__HKHeartbeatSeriesFeatureStatusManager_unregisterObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) setAutomaticProxyReconnectionHandler:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__HKHeartbeatSeriesFeatureStatusManager_unregisterObserver___block_invoke_3;
  v5[3] = &unk_27860AE38;
  v5[4] = v2;
  return [v3 fetchProxyWithHandler:&__block_literal_global_8 errorHandler:v5];
}

void __60__HKHeartbeatSeriesFeatureStatusManager_unregisterObserver___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  v3 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __60__HKHeartbeatSeriesFeatureStatusManager_unregisterObserver___block_invoke_3_cold_1();
  }
}

- (void)_startObservingWithActivationHandler:(id)a3
{
  v4 = a3;
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__HKHeartbeatSeriesFeatureStatusManager__startObservingWithActivationHandler___block_invoke;
  v9[3] = &unk_27860B4C8;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__HKHeartbeatSeriesFeatureStatusManager__startObservingWithActivationHandler___block_invoke_2;
  v7[3] = &unk_27860B100;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

void __78__HKHeartbeatSeriesFeatureStatusManager__startObservingWithActivationHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __78__HKHeartbeatSeriesFeatureStatusManager__startObservingWithActivationHandler___block_invoke_2_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (id)_synchronouslyStartObservingWithError:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__HKHeartbeatSeriesFeatureStatusManager__synchronouslyStartObservingWithError___block_invoke;
  v11[3] = &unk_27860B4F0;
  v11[4] = &v18;
  v11[5] = &v12;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__HKHeartbeatSeriesFeatureStatusManager__synchronouslyStartObservingWithError___block_invoke_3;
  v10[3] = &unk_27860AEA8;
  v10[4] = self;
  v10[5] = &v12;
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

uint64_t __79__HKHeartbeatSeriesFeatureStatusManager__synchronouslyStartObservingWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __79__HKHeartbeatSeriesFeatureStatusManager__synchronouslyStartObservingWithError___block_invoke_2;
  v3[3] = &unk_27860B038;
  v4 = *(a1 + 32);
  return [a2 remote_startObservingChangesWithCompletion:v3];
}

void __79__HKHeartbeatSeriesFeatureStatusManager__synchronouslyStartObservingWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

void __79__HKHeartbeatSeriesFeatureStatusManager__synchronouslyStartObservingWithError___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __79__HKHeartbeatSeriesFeatureStatusManager__synchronouslyStartObservingWithError___block_invoke_3_cold_1(a1);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)_handleAutomaticProxyReconnection
{
  OUTLINED_FUNCTION_2_1();
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_1_4(&dword_228942000, v1, v2, "[%{public}@:%p] Failed to resume observation on server reconnection: %{public}@", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v15 = *MEMORY[0x277D85DE8];
  if (HeartNotificationsUserDefaultsContext == a6)
  {
    _HKInitializeLogging();
    v7 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v12 = objc_opt_class();
      v13 = 2048;
      v14 = self;
      v8 = v12;
      _os_log_impl(&dword_228942000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Received KVO notification of notification settings change", buf, 0x16u);
    }

    [(HKHeartbeatSeriesFeatureStatusManager *)self _updateAndNotifyAllObservers];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = HKHeartbeatSeriesFeatureStatusManager;
    [(HKHeartbeatSeriesFeatureStatusManager *)&v10 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_updateAndNotifyAllObservers
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(HKObserverSet *)self->_observers count])
  {
    proxyProvider = self->_proxyProvider;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __69__HKHeartbeatSeriesFeatureStatusManager__updateAndNotifyAllObservers__block_invoke_2;
    v7[3] = &unk_27860AE38;
    v7[4] = self;
    [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:&__block_literal_global_331 errorHandler:v7];
  }

  else
  {
    _HKInitializeLogging();
    v4 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v9 = objc_opt_class();
      v5 = v9;
      _os_log_impl(&dword_228942000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping a manual update and notify because we have no observers", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __69__HKHeartbeatSeriesFeatureStatusManager__updateAndNotifyAllObservers__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  v3 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __69__HKHeartbeatSeriesFeatureStatusManager__updateAndNotifyAllObservers__block_invoke_2_cold_1();
  }
}

- (void)client_heartbeatSeriesFeatureStatusManagerDidUpdatePredominantFeature:(int64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = NSStringFromHKHeartbeatSeriesFeature(a3);
    v9 = HKSensitiveLogItem();
    v11 = 138543874;
    v12 = v6;
    v13 = 2048;
    v14 = self;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_228942000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Received server notification of predominant feature update: %{public}@", &v11, 0x20u);
  }

  [(HKHeartbeatSeriesFeatureStatusManager *)self _notifyObserversForPredominantFeatureUpdate:a3];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)client_heartbeatSeriesFeatureStatusManagerDidFailToUpdateWithError:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543874;
    v9 = objc_opt_class();
    v10 = 2048;
    v11 = self;
    v12 = 2114;
    v13 = v4;
    v6 = v9;
    _os_log_impl(&dword_228942000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Received server notification of update error: %{public}@", &v8, 0x20u);
  }

  [(HKHeartbeatSeriesFeatureStatusManager *)self _notifyObserversForFailureToUpdateWithError:v4];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversForPredominantFeatureUpdate:(int64_t)a3
{
  observers = self->_observers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __85__HKHeartbeatSeriesFeatureStatusManager__notifyObserversForPredominantFeatureUpdate___block_invoke;
  v4[3] = &unk_27860B518;
  v4[4] = self;
  v4[5] = a3;
  [(HKObserverSet *)observers notifyObservers:v4];
}

- (void)_notifyObserversForFailureToUpdateWithError:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__HKHeartbeatSeriesFeatureStatusManager__notifyObserversForFailureToUpdateWithError___block_invoke;
  v7[3] = &unk_27860B540;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(HKObserverSet *)observers notifyObservers:v7];
}

void __60__HKHeartbeatSeriesFeatureStatusManager_unregisterObserver___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 32);
  v3 = objc_opt_class();
  v4 = *(v0 + 32);
  v5 = OUTLINED_FUNCTION_0_6(v3);
  OUTLINED_FUNCTION_1_4(&dword_228942000, v6, v7, "[%{public}@:%p] Failed to communicate with task server for observation stop: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __78__HKHeartbeatSeriesFeatureStatusManager__startObservingWithActivationHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 32);
  v3 = objc_opt_class();
  v4 = *(v0 + 32);
  v5 = OUTLINED_FUNCTION_0_6(v3);
  OUTLINED_FUNCTION_1_4(&dword_228942000, v6, v7, "[%{public}@:%p] Failed to communicate with task server for observation start: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __79__HKHeartbeatSeriesFeatureStatusManager__synchronouslyStartObservingWithError___block_invoke_3_cold_1(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v12 = *(a1 + 32);
  v13 = *(*(*(a1 + 40) + 8) + 40);
  v4 = v3;
  OUTLINED_FUNCTION_1_4(&dword_228942000, v5, v6, "[%{public}@:%p] Failed to communicate with task server for observation start: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

void __69__HKHeartbeatSeriesFeatureStatusManager__updateAndNotifyAllObservers__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 32);
  v3 = objc_opt_class();
  v4 = *(v0 + 32);
  v5 = OUTLINED_FUNCTION_0_6(v3);
  OUTLINED_FUNCTION_1_4(&dword_228942000, v6, v7, "[%{public}@:%p] Failed to communicate with task server for update and notify: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

@end