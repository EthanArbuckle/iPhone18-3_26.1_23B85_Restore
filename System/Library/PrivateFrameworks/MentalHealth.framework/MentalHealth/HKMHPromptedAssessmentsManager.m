@interface HKMHPromptedAssessmentsManager
+ (id)taskIdentifier;
- (BOOL)_synchronouslyStartObservingWithError:(id *)a3;
- (HKMHPromptedAssessmentsManager)initWithHealthStore:(id)a3;
- (id)promptedAssessmentsWithError:(id *)a3;
- (void)_handleAutomaticProxyReconnection;
- (void)_notifyObserversForPromptedAssessmentUpdate;
- (void)_startObservingWithActivationHandler:(id)a3;
- (void)client_promptedAssessmentsManagerDidUpdatePromptedAssessments;
- (void)registerObserver:(id)a3 queue:(id)a4 activationHandler:(id)a5;
- (void)unregisterObserver:(id)a3;
@end

@implementation HKMHPromptedAssessmentsManager

- (HKMHPromptedAssessmentsManager)initWithHealthStore:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HKMHPromptedAssessmentsManager;
  v5 = [(HKMHPromptedAssessmentsManager *)&v16 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CCD738]);
    v7 = [v6 initWithName:@"HKMHPromptedAssessmentsManager" loggingCategory:*MEMORY[0x277CCC2F0]];
    observers = v5->_observers;
    v5->_observers = v7;

    v9 = objc_alloc(MEMORY[0x277CCDAA0]);
    v10 = [objc_opt_class() taskIdentifier];
    v11 = [MEMORY[0x277CCAD78] UUID];
    v12 = [v9 initWithHealthStore:v4 taskIdentifier:v10 exportedObject:v5 taskUUID:v11];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = v12;

    [(HKTaskServerProxyProvider *)v5->_proxyProvider setShouldRetryOnInterruption:0];
    v14 = objc_alloc_init(MEMORY[0x277CCDA98]);
    [(HKTaskServerProxyProvider *)v5->_proxyProvider setTaskConfiguration:v14];
  }

  return v5;
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)promptedAssessmentsWithError:(id *)a3
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
  v11[2] = __63__HKMHPromptedAssessmentsManager_promptedAssessmentsWithError___block_invoke;
  v11[3] = &unk_2798A9AA0;
  v11[4] = &v18;
  v11[5] = &v12;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__HKMHPromptedAssessmentsManager_promptedAssessmentsWithError___block_invoke_3;
  v10[3] = &unk_2798A9AC8;
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

uint64_t __63__HKMHPromptedAssessmentsManager_promptedAssessmentsWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__HKMHPromptedAssessmentsManager_promptedAssessmentsWithError___block_invoke_2;
  v3[3] = &unk_2798A9A78;
  v4 = *(a1 + 32);
  return [a2 remote_getPromptedAssessmentsWithCompletion:v3];
}

void __63__HKMHPromptedAssessmentsManager_promptedAssessmentsWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (void)registerObserver:(id)a3 queue:(id)a4 activationHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a5];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  observers = self->_observers;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__HKMHPromptedAssessmentsManager_registerObserver_queue_activationHandler___block_invoke;
  v13[3] = &unk_2798A9B18;
  v13[4] = self;
  v15 = &v16;
  v12 = v10;
  v14 = v12;
  [(HKObserverSet *)observers registerObserver:v8 queue:v9 runIfFirstObserver:v13];
  if ((v17[3] & 1) == 0)
  {
    (*(v12 + 2))(v12, 1, 0);
  }

  _Block_object_dispose(&v16, 8);
}

void __75__HKMHPromptedAssessmentsManager_registerObserver_queue_activationHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v8 = v3;
    _os_log_impl(&dword_25895E000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Beginning observation", buf, 0xCu);
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
  objc_initWeak(buf, *(a1 + 32));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__HKMHPromptedAssessmentsManager_registerObserver_queue_activationHandler___block_invoke_301;
  v5[3] = &unk_2798A9AF0;
  objc_copyWeak(&v6, buf);
  [*(*(a1 + 32) + 16) setAutomaticProxyReconnectionHandler:v5];
  [*(*(a1 + 32) + 16) setShouldRetryOnInterruption:1];
  [*(a1 + 32) _startObservingWithActivationHandler:*(a1 + 40)];
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
  v4 = *MEMORY[0x277D85DE8];
}

void __75__HKMHPromptedAssessmentsManager_registerObserver_queue_activationHandler___block_invoke_301(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAutomaticProxyReconnection];
}

- (void)unregisterObserver:(id)a3
{
  observers = self->_observers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__HKMHPromptedAssessmentsManager_unregisterObserver___block_invoke;
  v4[3] = &unk_2798A9B88;
  v4[4] = self;
  [(HKObserverSet *)observers unregisterObserver:a3 runIfLastObserver:v4];
}

uint64_t __53__HKMHPromptedAssessmentsManager_unregisterObserver___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_25895E000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ending observation", buf, 0xCu);
  }

  [*(*(a1 + 32) + 16) setAutomaticProxyReconnectionHandler:0];
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__HKMHPromptedAssessmentsManager_unregisterObserver___block_invoke_2;
  v8[3] = &unk_2798A9B60;
  v8[4] = v4;
  result = [v5 fetchProxyWithHandler:&__block_literal_global_0 errorHandler:v8];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void __53__HKMHPromptedAssessmentsManager_unregisterObserver___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
  {
    __53__HKMHPromptedAssessmentsManager_unregisterObserver___block_invoke_2_cold_1(a1);
  }
}

- (void)_startObservingWithActivationHandler:(id)a3
{
  v4 = a3;
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__HKMHPromptedAssessmentsManager__startObservingWithActivationHandler___block_invoke;
  v9[3] = &unk_2798A9BB0;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HKMHPromptedAssessmentsManager__startObservingWithActivationHandler___block_invoke_2;
  v7[3] = &unk_2798A9BD8;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

void __71__HKMHPromptedAssessmentsManager__startObservingWithActivationHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
  {
    __71__HKMHPromptedAssessmentsManager__startObservingWithActivationHandler___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (BOOL)_synchronouslyStartObservingWithError:(id *)a3
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
  v11[2] = __72__HKMHPromptedAssessmentsManager__synchronouslyStartObservingWithError___block_invoke;
  v11[3] = &unk_2798A9AA0;
  v11[4] = &v18;
  v11[5] = &v12;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__HKMHPromptedAssessmentsManager__synchronouslyStartObservingWithError___block_invoke_3;
  v10[3] = &unk_2798A9C28;
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

  v8 = *(v19 + 24);
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v8;
}

uint64_t __72__HKMHPromptedAssessmentsManager__synchronouslyStartObservingWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __72__HKMHPromptedAssessmentsManager__synchronouslyStartObservingWithError___block_invoke_2;
  v3[3] = &unk_2798A9C00;
  v4 = *(a1 + 32);
  return [a2 remote_startObservingChangesWithCompletion:v3];
}

void __72__HKMHPromptedAssessmentsManager__synchronouslyStartObservingWithError___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
  {
    __72__HKMHPromptedAssessmentsManager__synchronouslyStartObservingWithError___block_invoke_3_cold_1(a1);
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)_handleAutomaticProxyReconnection
{
  *v4 = 138543618;
  *&v4[4] = a1;
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_25895E000, a2, a3, "[%{public}@] Failed to resume observation on server reconnection: %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)client_promptedAssessmentsManagerDidUpdatePromptedAssessments
{
  v7 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_25895E000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received server notification of prompted assessment update", &v5, 0xCu);
  }

  [(HKMHPromptedAssessmentsManager *)self _notifyObserversForPromptedAssessmentUpdate];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversForPromptedAssessmentUpdate
{
  v15 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x277CCABB0];
    observers = self->_observers;
    v6 = v3;
    v7 = [v4 numberWithUnsignedInteger:{-[HKObserverSet count](observers, "count")}];
    *buf = 138543618;
    v12 = self;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_25895E000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying %@ observers of prompted assessment update", buf, 0x16u);
  }

  v8 = self->_observers;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__HKMHPromptedAssessmentsManager__notifyObserversForPromptedAssessmentUpdate__block_invoke;
  v10[3] = &unk_2798A9C50;
  v10[4] = self;
  [(HKObserverSet *)v8 notifyObservers:v10];
  v9 = *MEMORY[0x277D85DE8];
}

void __53__HKMHPromptedAssessmentsManager_unregisterObserver___block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25895E000, v2, v3, "[%{public}@] Failed to communicate with task server for observation stop: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

void __71__HKMHPromptedAssessmentsManager__startObservingWithActivationHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25895E000, v2, v3, "[%{public}@] Failed to communicate with task server for observation start: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

void __72__HKMHPromptedAssessmentsManager__synchronouslyStartObservingWithError___block_invoke_3_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(*(*(a1 + 40) + 8) + 40);
  OUTLINED_FUNCTION_0_0();
  v7 = v3;
  _os_log_error_impl(&dword_25895E000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to communicate with task server for observation start: %{public}@", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end