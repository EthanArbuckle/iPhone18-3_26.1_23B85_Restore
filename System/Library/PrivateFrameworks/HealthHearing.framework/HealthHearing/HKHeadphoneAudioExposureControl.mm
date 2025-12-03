@interface HKHeadphoneAudioExposureControl
+ (id)taskIdentifier;
- (HKHeadphoneAudioExposureControl)initWithHealthStore:(id)store;
- (void)fetchDoseLimitInfoWithCompletion:(id)completion;
- (void)fetchInfoWithCompletion:(id)completion;
- (void)insertQuantityWithExposure:(double)exposure duration:(double)duration startDate:(id)date includesNotificationSample:(BOOL)sample synced:(BOOL)synced completion:(id)completion;
- (void)overrideDoseLimit:(id)limit completion:(id)completion;
- (void)rebuildWithCompletion:(id)completion;
@end

@implementation HKHeadphoneAudioExposureControl

- (HKHeadphoneAudioExposureControl)initWithHealthStore:(id)store
{
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = HKHeadphoneAudioExposureControl;
  v5 = [(HKHeadphoneAudioExposureControl *)&v13 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CCDAA0]);
    taskIdentifier = [objc_opt_class() taskIdentifier];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v9 = [v6 initWithHealthStore:storeCopy taskIdentifier:taskIdentifier exportedObject:v5 taskUUID:uUID];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = v9;

    [(HKProxyProvider *)v5->_proxyProvider setShouldRetryOnInterruption:0];
    v11 = v5;
  }

  return v5;
}

- (void)rebuildWithCompletion:(id)completion
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__HKHeadphoneAudioExposureControl_rebuildWithCompletion___block_invoke;
  v9[3] = &unk_2796C5810;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HKHeadphoneAudioExposureControl_rebuildWithCompletion___block_invoke_2;
  v7[3] = &unk_2796C5838;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)fetchInfoWithCompletion:(id)completion
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__HKHeadphoneAudioExposureControl_fetchInfoWithCompletion___block_invoke;
  v9[3] = &unk_2796C5810;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HKHeadphoneAudioExposureControl_fetchInfoWithCompletion___block_invoke_2;
  v7[3] = &unk_2796C5838;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)insertQuantityWithExposure:(double)exposure duration:(double)duration startDate:(id)date includesNotificationSample:(BOOL)sample synced:(BOOL)synced completion:(id)completion
{
  dateCopy = date;
  v15 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __126__HKHeadphoneAudioExposureControl_insertQuantityWithExposure_duration_startDate_includesNotificationSample_synced_completion___block_invoke;
  v21[3] = &unk_2796C5860;
  exposureCopy = exposure;
  durationCopy = duration;
  v22 = dateCopy;
  sampleCopy = sample;
  syncedCopy = synced;
  v23 = v15;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __126__HKHeadphoneAudioExposureControl_insertQuantityWithExposure_duration_startDate_includesNotificationSample_synced_completion___block_invoke_2;
  v19[3] = &unk_2796C5838;
  v20 = v23;
  v17 = v23;
  v18 = dateCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v21 errorHandler:v19];
}

- (void)fetchDoseLimitInfoWithCompletion:(id)completion
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__HKHeadphoneAudioExposureControl_fetchDoseLimitInfoWithCompletion___block_invoke;
  v9[3] = &unk_2796C5810;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HKHeadphoneAudioExposureControl_fetchDoseLimitInfoWithCompletion___block_invoke_2;
  v7[3] = &unk_2796C5838;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)overrideDoseLimit:(id)limit completion:(id)completion
{
  limitCopy = limit;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__HKHeadphoneAudioExposureControl_overrideDoseLimit_completion___block_invoke;
  v13[3] = &unk_2796C5888;
  v14 = limitCopy;
  v15 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__HKHeadphoneAudioExposureControl_overrideDoseLimit_completion___block_invoke_2;
  v11[3] = &unk_2796C5838;
  v12 = v15;
  v9 = v15;
  v10 = limitCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end