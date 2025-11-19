@interface HKMCExperienceStore
+ (id)taskIdentifier;
- (HKMCExperienceStore)initWithHealthStore:(id)a3;
- (id)getCachedPregnancyModelWithError:(id *)a3;
- (void)client_experienceModelDidUpdate:(id)a3;
- (void)deleteAllPregnancySetupRecordsWithCompletion:(id)a3;
- (void)deleteSetupRecord:(id)a3 completion:(id)a4;
- (void)fetchExperienceModelWithCompletion:(id)a3;
- (void)persistSetupRecord:(id)a3 completion:(id)a4;
- (void)persistSetupRecord:(id)a3 mergeWith:(id)a4 completion:(id)a5;
- (void)registerObserver:(id)a3 completionHandler:(id)a4;
- (void)unregisterObserver:(id)a3;
@end

@implementation HKMCExperienceStore

- (HKMCExperienceStore)initWithHealthStore:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = HKMCExperienceStore;
  v5 = [(HKMCExperienceStore *)&v18 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CCDAA0]);
    v7 = [objc_opt_class() taskIdentifier];
    v8 = [MEMORY[0x277CCAD78] UUID];
    v9 = [v6 initWithHealthStore:v4 taskIdentifier:v7 exportedObject:v5 taskUUID:v8];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = v9;

    [(HKTaskServerProxyProvider *)v5->_proxyProvider setShouldRetryOnInterruption:0];
    v11 = objc_alloc_init(MEMORY[0x277CCDA98]);
    [(HKTaskServerProxyProvider *)v5->_proxyProvider setTaskConfiguration:v11];

    v12 = objc_alloc(MEMORY[0x277CCD738]);
    v13 = [v12 initWithName:@"HKMCExperienceStoreObservers" loggingCategory:*MEMORY[0x277CCC2E8]];
    observers = v5->_observers;
    v5->_observers = v13;

    v15 = HKCreateSerialDispatchQueue();
    queue = v5->_queue;
    v5->_queue = v15;
  }

  return v5;
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)registerObserver:(id)a3 completionHandler:(id)a4
{
  proxyProvider = self->_proxyProvider;
  v7 = a3;
  v8 = [(HKTaskServerProxyProvider *)proxyProvider clientQueueActionHandlerWithCompletion:a4];
  observers = self->_observers;
  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__HKMCExperienceStore_registerObserver_completionHandler___block_invoke;
  v12[3] = &unk_2796D4BA8;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [(HKObserverSet *)observers registerObserver:v7 queue:queue runIfFirstObserver:v12];
}

void __58__HKMCExperienceStore_registerObserver_completionHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v12 = v3;
    _os_log_impl(&dword_2518FC000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Beginning observation", buf, 0xCu);
  }

  v4 = *(*(a1 + 32) + 8);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HKMCExperienceStore_registerObserver_completionHandler___block_invoke_301;
  v9[3] = &unk_2796D4EA8;
  v10 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HKMCExperienceStore_registerObserver_completionHandler___block_invoke_2;
  v7[3] = &unk_2796D4ED0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  [v4 fetchProxyWithHandler:v9 errorHandler:v7];

  v6 = *MEMORY[0x277D85DE8];
}

void __58__HKMCExperienceStore_registerObserver_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
  {
    __58__HKMCExperienceStore_registerObserver_completionHandler___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)unregisterObserver:(id)a3
{
  observers = self->_observers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__HKMCExperienceStore_unregisterObserver___block_invoke;
  v4[3] = &unk_2796D4CE8;
  v4[4] = self;
  [(HKObserverSet *)observers unregisterObserver:a3 runIfLastObserver:v4];
}

uint64_t __42__HKMCExperienceStore_unregisterObserver___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_2518FC000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Stopping observation", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__HKMCExperienceStore_unregisterObserver___block_invoke_2;
  v8[3] = &unk_2796D4F18;
  v8[4] = v4;
  result = [v5 fetchProxyWithHandler:&__block_literal_global_1 errorHandler:v8];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void __42__HKMCExperienceStore_unregisterObserver___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
  {
    __42__HKMCExperienceStore_unregisterObserver___block_invoke_2_cold_1(a1);
  }
}

- (void)fetchExperienceModelWithCompletion:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = self;
    _os_log_impl(&dword_2518FC000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Will begin fetching experience model", buf, 0xCu);
  }

  v6 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:v4];

  proxyProvider = self->_proxyProvider;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__HKMCExperienceStore_fetchExperienceModelWithCompletion___block_invoke;
  v12[3] = &unk_2796D4EA8;
  v13 = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__HKMCExperienceStore_fetchExperienceModelWithCompletion___block_invoke_2;
  v10[3] = &unk_2796D4ED0;
  v10[4] = self;
  v11 = v13;
  v8 = v13;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v12 errorHandler:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __58__HKMCExperienceStore_fetchExperienceModelWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
  {
    __42__HKMCExperienceStore_unregisterObserver___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)persistSetupRecord:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = self;
    _os_log_impl(&dword_2518FC000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received a persist record request", buf, 0xCu);
  }

  v9 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v7];

  proxyProvider = self->_proxyProvider;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__HKMCExperienceStore_persistSetupRecord_completion___block_invoke;
  v16[3] = &unk_2796D4F40;
  v17 = v6;
  v18 = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__HKMCExperienceStore_persistSetupRecord_completion___block_invoke_2;
  v14[3] = &unk_2796D4ED0;
  v14[4] = self;
  v15 = v18;
  v11 = v18;
  v12 = v6;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v16 errorHandler:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __53__HKMCExperienceStore_persistSetupRecord_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
  {
    __53__HKMCExperienceStore_persistSetupRecord_completion___block_invoke_2_cold_1(a1, v4);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)persistSetupRecord:(id)a3 mergeWith:(id)a4 completion:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = self;
    _os_log_impl(&dword_2518FC000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received a persist record request", buf, 0xCu);
  }

  v12 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v10];

  proxyProvider = self->_proxyProvider;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __63__HKMCExperienceStore_persistSetupRecord_mergeWith_completion___block_invoke;
  v20[3] = &unk_2796D4F68;
  v21 = v8;
  v22 = v9;
  v23 = v12;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __63__HKMCExperienceStore_persistSetupRecord_mergeWith_completion___block_invoke_2;
  v18[3] = &unk_2796D4ED0;
  v18[4] = self;
  v19 = v23;
  v14 = v23;
  v15 = v9;
  v16 = v8;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v20 errorHandler:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __63__HKMCExperienceStore_persistSetupRecord_mergeWith_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
  {
    __53__HKMCExperienceStore_persistSetupRecord_completion___block_invoke_2_cold_1(a1, v4);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)deleteSetupRecord:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = self;
    _os_log_impl(&dword_2518FC000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received a delete record request", buf, 0xCu);
  }

  v9 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v7];

  proxyProvider = self->_proxyProvider;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __52__HKMCExperienceStore_deleteSetupRecord_completion___block_invoke;
  v16[3] = &unk_2796D4F40;
  v17 = v6;
  v18 = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__HKMCExperienceStore_deleteSetupRecord_completion___block_invoke_2;
  v14[3] = &unk_2796D4ED0;
  v14[4] = self;
  v15 = v18;
  v11 = v18;
  v12 = v6;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v16 errorHandler:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __52__HKMCExperienceStore_deleteSetupRecord_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
  {
    __52__HKMCExperienceStore_deleteSetupRecord_completion___block_invoke_2_cold_1(a1, v4);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)deleteAllPregnancySetupRecordsWithCompletion:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = self;
    _os_log_impl(&dword_2518FC000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deleting all setup records", buf, 0xCu);
  }

  v6 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v4];

  proxyProvider = self->_proxyProvider;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__HKMCExperienceStore_deleteAllPregnancySetupRecordsWithCompletion___block_invoke;
  v12[3] = &unk_2796D4EA8;
  v13 = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__HKMCExperienceStore_deleteAllPregnancySetupRecordsWithCompletion___block_invoke_2;
  v10[3] = &unk_2796D4ED0;
  v10[4] = self;
  v11 = v13;
  v8 = v13;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v12 errorHandler:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __68__HKMCExperienceStore_deleteAllPregnancySetupRecordsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
  {
    __68__HKMCExperienceStore_deleteAllPregnancySetupRecordsWithCompletion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)getCachedPregnancyModelWithError:(id *)a3
{
  v26 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = self;
    _os_log_impl(&dword_2518FC000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting cached model", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  proxyProvider = self->_proxyProvider;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__HKMCExperienceStore_getCachedPregnancyModelWithError___block_invoke;
  v14[3] = &unk_2796D4FB8;
  v14[4] = &v15;
  v14[5] = &buf;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__HKMCExperienceStore_getCachedPregnancyModelWithError___block_invoke_3;
  v13[3] = &unk_2796D4FE0;
  v13[4] = self;
  v13[5] = &buf;
  [(HKTaskServerProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v14 errorHandler:v13];
  v7 = *(*(&buf + 1) + 40);
  v8 = v7;
  if (v7)
  {
    if (a3)
    {
      v9 = v7;
      *a3 = v8;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&buf, 8);
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __56__HKMCExperienceStore_getCachedPregnancyModelWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__HKMCExperienceStore_getCachedPregnancyModelWithError___block_invoke_2;
  v3[3] = &unk_2796D4F90;
  v4 = *(a1 + 32);
  return [a2 remote_getCachedPregnancyModelWithCompletion:v3];
}

void __56__HKMCExperienceStore_getCachedPregnancyModelWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

void __56__HKMCExperienceStore_getCachedPregnancyModelWithError___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
  {
    __56__HKMCExperienceStore_getCachedPregnancyModelWithError___block_invoke_3_cold_1(a1);
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)client_experienceModelDidUpdate:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    *buf = 138543362;
    v14 = objc_opt_class();
    v7 = v14;
    _os_log_impl(&dword_2518FC000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying observers of an updated experience model", buf, 0xCu);
  }

  observers = self->_observers;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__HKMCExperienceStore_client_experienceModelDidUpdate___block_invoke;
  v11[3] = &unk_2796D5008;
  v12 = v4;
  v9 = v4;
  [(HKObserverSet *)observers notifyObservers:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __58__HKMCExperienceStore_registerObserver_completionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_2518FC000, v1, v2, "[%{public}@] Failed to communicate with task server when starting observation: %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

void __42__HKMCExperienceStore_unregisterObserver___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_2518FC000, v1, v2, "[%{public}@] Failed to communicate with task server when ending observation: %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

void __53__HKMCExperienceStore_persistSetupRecord_completion___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = HKSensitiveLogItem();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_2518FC000, v5, v6, "[%{public}@] Failed to communicate with task server when writing record: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __52__HKMCExperienceStore_deleteSetupRecord_completion___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = HKSensitiveLogItem();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_2518FC000, v5, v6, "[%{public}@] Failed to communicate with task server when deleting record: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __68__HKMCExperienceStore_deleteAllPregnancySetupRecordsWithCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_2518FC000, v1, v2, "[%{public}@] Failed to communicate with task server when deleting records: %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

void __56__HKMCExperienceStore_getCachedPregnancyModelWithError___block_invoke_3_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_2518FC000, v1, v2, "[%{public}@] Failed to communicate with task server when fetching cached model: %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

@end