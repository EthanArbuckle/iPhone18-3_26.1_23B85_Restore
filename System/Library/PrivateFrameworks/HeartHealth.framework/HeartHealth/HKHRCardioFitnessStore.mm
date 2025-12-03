@interface HKHRCardioFitnessStore
+ (id)taskIdentifier;
- (HKHRCardioFitnessStore)initWithHealthStore:(id)store;
- (void)saveCardioFitnessEventWithValue:(id)value threshold:(id)threshold dateInterval:(id)interval completion:(id)completion;
- (void)saveCardioFitnessEventWithValue:(id)value threshold:(id)threshold dateInterval:(id)interval options:(unint64_t)options completion:(id)completion;
@end

@implementation HKHRCardioFitnessStore

- (HKHRCardioFitnessStore)initWithHealthStore:(id)store
{
  storeCopy = store;
  v14.receiver = self;
  v14.super_class = HKHRCardioFitnessStore;
  v6 = [(HKHRCardioFitnessStore *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
    v8 = objc_alloc(MEMORY[0x277CCDAA0]);
    v9 = +[HKHRCardioFitnessStore taskIdentifier];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v11 = [v8 initWithHealthStore:storeCopy taskIdentifier:v9 exportedObject:v7 taskUUID:uUID];
    proxyProvider = v7->_proxyProvider;
    v7->_proxyProvider = v11;

    [(HKTaskServerProxyProvider *)v7->_proxyProvider setShouldRetryOnInterruption:0];
  }

  return v7;
}

- (void)saveCardioFitnessEventWithValue:(id)value threshold:(id)threshold dateInterval:(id)interval completion:(id)completion
{
  valueCopy = value;
  thresholdCopy = threshold;
  intervalCopy = interval;
  v13 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __92__HKHRCardioFitnessStore_saveCardioFitnessEventWithValue_threshold_dateInterval_completion___block_invoke;
  v21[3] = &unk_27860A9A8;
  v22 = valueCopy;
  v23 = thresholdCopy;
  v24 = intervalCopy;
  v25 = v13;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __92__HKHRCardioFitnessStore_saveCardioFitnessEventWithValue_threshold_dateInterval_completion___block_invoke_2;
  v19[3] = &unk_27860A9D0;
  v20 = v25;
  v15 = v25;
  v16 = intervalCopy;
  v17 = thresholdCopy;
  v18 = valueCopy;
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

- (void)saveCardioFitnessEventWithValue:(id)value threshold:(id)threshold dateInterval:(id)interval options:(unint64_t)options completion:(id)completion
{
  valueCopy = value;
  thresholdCopy = threshold;
  intervalCopy = interval;
  v15 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __100__HKHRCardioFitnessStore_saveCardioFitnessEventWithValue_threshold_dateInterval_options_completion___block_invoke;
  v23[3] = &unk_27860A9F8;
  v24 = valueCopy;
  v25 = thresholdCopy;
  v26 = intervalCopy;
  optionsCopy = options;
  v27 = v15;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __100__HKHRCardioFitnessStore_saveCardioFitnessEventWithValue_threshold_dateInterval_options_completion___block_invoke_2;
  v21[3] = &unk_27860A9D0;
  v22 = v27;
  v17 = v27;
  v18 = intervalCopy;
  v19 = thresholdCopy;
  v20 = valueCopy;
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