@interface HKHeadphoneAudioExposureControl
+ (id)taskIdentifier;
- (HKHeadphoneAudioExposureControl)initWithHealthStore:(id)a3;
- (void)fetchDoseLimitInfoWithCompletion:(id)a3;
- (void)fetchInfoWithCompletion:(id)a3;
- (void)insertQuantityWithExposure:(double)a3 duration:(double)a4 startDate:(id)a5 includesNotificationSample:(BOOL)a6 synced:(BOOL)a7 completion:(id)a8;
- (void)overrideDoseLimit:(id)a3 completion:(id)a4;
- (void)rebuildWithCompletion:(id)a3;
@end

@implementation HKHeadphoneAudioExposureControl

- (HKHeadphoneAudioExposureControl)initWithHealthStore:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HKHeadphoneAudioExposureControl;
  v5 = [(HKHeadphoneAudioExposureControl *)&v13 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CCDAA0]);
    v7 = [objc_opt_class() taskIdentifier];
    v8 = [MEMORY[0x277CCAD78] UUID];
    v9 = [v6 initWithHealthStore:v4 taskIdentifier:v7 exportedObject:v5 taskUUID:v8];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = v9;

    [(HKProxyProvider *)v5->_proxyProvider setShouldRetryOnInterruption:0];
    v11 = v5;
  }

  return v5;
}

- (void)rebuildWithCompletion:(id)a3
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a3];
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

- (void)fetchInfoWithCompletion:(id)a3
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a3];
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

- (void)insertQuantityWithExposure:(double)a3 duration:(double)a4 startDate:(id)a5 includesNotificationSample:(BOOL)a6 synced:(BOOL)a7 completion:(id)a8
{
  v14 = a5;
  v15 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a8];
  proxyProvider = self->_proxyProvider;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __126__HKHeadphoneAudioExposureControl_insertQuantityWithExposure_duration_startDate_includesNotificationSample_synced_completion___block_invoke;
  v21[3] = &unk_2796C5860;
  v24 = a3;
  v25 = a4;
  v22 = v14;
  v26 = a6;
  v27 = a7;
  v23 = v15;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __126__HKHeadphoneAudioExposureControl_insertQuantityWithExposure_duration_startDate_includesNotificationSample_synced_completion___block_invoke_2;
  v19[3] = &unk_2796C5838;
  v20 = v23;
  v17 = v23;
  v18 = v14;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v21 errorHandler:v19];
}

- (void)fetchDoseLimitInfoWithCompletion:(id)a3
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a3];
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

- (void)overrideDoseLimit:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__HKHeadphoneAudioExposureControl_overrideDoseLimit_completion___block_invoke;
  v13[3] = &unk_2796C5888;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__HKHeadphoneAudioExposureControl_overrideDoseLimit_completion___block_invoke_2;
  v11[3] = &unk_2796C5838;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end