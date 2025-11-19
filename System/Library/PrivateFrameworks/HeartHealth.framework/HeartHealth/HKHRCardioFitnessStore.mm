@interface HKHRCardioFitnessStore
+ (id)taskIdentifier;
- (HKHRCardioFitnessStore)initWithHealthStore:(id)a3;
- (void)saveCardioFitnessEventWithValue:(id)a3 threshold:(id)a4 dateInterval:(id)a5 completion:(id)a6;
- (void)saveCardioFitnessEventWithValue:(id)a3 threshold:(id)a4 dateInterval:(id)a5 options:(unint64_t)a6 completion:(id)a7;
@end

@implementation HKHRCardioFitnessStore

- (HKHRCardioFitnessStore)initWithHealthStore:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = HKHRCardioFitnessStore;
  v6 = [(HKHRCardioFitnessStore *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, a3);
    v8 = objc_alloc(MEMORY[0x277CCDAA0]);
    v9 = +[HKHRCardioFitnessStore taskIdentifier];
    v10 = [MEMORY[0x277CCAD78] UUID];
    v11 = [v8 initWithHealthStore:v5 taskIdentifier:v9 exportedObject:v7 taskUUID:v10];
    proxyProvider = v7->_proxyProvider;
    v7->_proxyProvider = v11;

    [(HKTaskServerProxyProvider *)v7->_proxyProvider setShouldRetryOnInterruption:0];
  }

  return v7;
}

- (void)saveCardioFitnessEventWithValue:(id)a3 threshold:(id)a4 dateInterval:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a6];
  proxyProvider = self->_proxyProvider;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __92__HKHRCardioFitnessStore_saveCardioFitnessEventWithValue_threshold_dateInterval_completion___block_invoke;
  v21[3] = &unk_27860A9A8;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __92__HKHRCardioFitnessStore_saveCardioFitnessEventWithValue_threshold_dateInterval_completion___block_invoke_2;
  v19[3] = &unk_27860A9D0;
  v20 = v25;
  v15 = v25;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v21 errorHandler:v19];
}

void __92__HKHRCardioFitnessStore_saveCardioFitnessEventWithValue_threshold_dateInterval_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = a2;
  v8 = [v5 startDate];
  v7 = [*(a1 + 48) endDate];
  [v6 remote_saveCardioFitnessAlertWithValue:v3 threshold:v4 startDate:v8 endDate:v7 options:0 completion:*(a1 + 56)];
}

- (void)saveCardioFitnessEventWithValue:(id)a3 threshold:(id)a4 dateInterval:(id)a5 options:(unint64_t)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a7];
  proxyProvider = self->_proxyProvider;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __100__HKHRCardioFitnessStore_saveCardioFitnessEventWithValue_threshold_dateInterval_options_completion___block_invoke;
  v23[3] = &unk_27860A9F8;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v28 = a6;
  v27 = v15;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __100__HKHRCardioFitnessStore_saveCardioFitnessEventWithValue_threshold_dateInterval_options_completion___block_invoke_2;
  v21[3] = &unk_27860A9D0;
  v22 = v27;
  v17 = v27;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v23 errorHandler:v21];
}

void __100__HKHRCardioFitnessStore_saveCardioFitnessEventWithValue_threshold_dateInterval_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = a2;
  v8 = [v5 startDate];
  v7 = [*(a1 + 48) endDate];
  [v6 remote_saveCardioFitnessAlertWithValue:v3 threshold:v4 startDate:v8 endDate:v7 options:*(a1 + 64) completion:*(a1 + 56)];
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end