@interface HMDPredictionSubscriber
- (HMDPredictionSubscriber)initWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher notificationBackend:(int64_t)backend;
- (HMDPredictionSubscriber)initWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher notificationBackend:(int64_t)backend darwinNotificationProvider:(id)provider;
- (HMDPredictionSubscriberDataSource)dataSource;
- (id)notificationNameForBackend:(int64_t)backend;
- (void)configure;
- (void)dealloc;
@end

@implementation HMDPredictionSubscriber

- (HMDPredictionSubscriberDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)configure
{
  v23 = *MEMORY[0x277D85DE8];
  if ([(HMDPredictionSubscriber *)self predictionsChangedNotificationToken]== -1)
  {
    v3 = [(HMDPredictionSubscriber *)self notificationNameForBackend:[(HMDPredictionSubscriber *)self notificationBackend]];
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    v7 = v6;
    if (v3)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        *buf = 138543618;
        v20 = v8;
        v21 = 2112;
        v22 = v3;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Registering for prediction change notifications: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v4);
      objc_initWeak(buf, selfCopy);
      darwinNotificationProvider = [(HMDPredictionSubscriber *)selfCopy darwinNotificationProvider];
      v10 = v3;
      uTF8String = [v3 UTF8String];
      workQueue = [(HMDPredictionSubscriber *)selfCopy workQueue];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __36__HMDPredictionSubscriber_configure__block_invoke;
      v16[3] = &unk_27867AC80;
      objc_copyWeak(&v18, buf);
      v17 = v3;
      [darwinNotificationProvider notifyRegisterDispatch:uTF8String outToken:&selfCopy->_predictionsChangedNotificationToken queue:workQueue handler:v16];

      objc_destroyWeak(&v18);
      objc_destroyWeak(buf);
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDPredictionSubscriber notificationBackend](selfCopy, "notificationBackend")}];
        *buf = 138543618;
        v20 = v13;
        v21 = 2112;
        v22 = v14;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Invalid prediction notification type: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v4);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __36__HMDPredictionSubscriber_configure__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained dataSource];
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = WeakRetained;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 32);
      v15 = 138543618;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Received notification predictions changed: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = objc_alloc(MEMORY[0x277D0F820]);
    v10 = [v3 updateMessageTargetForPredictionSubscriber:v5];
    v11 = [v9 initWithTarget:v10];

    v12 = [MEMORY[0x277D0F848] entitledMessageWithName:*MEMORY[0x277CD12B8] messagePayload:0];
    [v12 setDestination:v11];
    v13 = [v5 messageDispatcher];
    [v13 sendMessage:v12];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)notificationNameForBackend:(int64_t)backend
{
  if (backend)
  {
    return 0;
  }

  else
  {
    return @"com.apple.AirPlayRoutePrediction.ARPHomeControlSuggester.ReQuery";
  }
}

- (void)dealloc
{
  if (self->_predictionsChangedNotificationToken != -1)
  {
    [(HMDarwinNotificationProvider *)self->_darwinNotificationProvider notifyCancel:?];
  }

  v3.receiver = self;
  v3.super_class = HMDPredictionSubscriber;
  [(HMDPredictionSubscriber *)&v3 dealloc];
}

- (HMDPredictionSubscriber)initWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher notificationBackend:(int64_t)backend darwinNotificationProvider:(id)provider
{
  queueCopy = queue;
  dispatcherCopy = dispatcher;
  providerCopy = provider;
  v17.receiver = self;
  v17.super_class = HMDPredictionSubscriber;
  v14 = [(HMDPredictionSubscriber *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_workQueue, queue);
    objc_storeStrong(&v15->_messageDispatcher, dispatcher);
    objc_storeStrong(&v15->_darwinNotificationProvider, provider);
    v15->_notificationBackend = backend;
    v15->_predictionsChangedNotificationToken = -1;
  }

  return v15;
}

- (HMDPredictionSubscriber)initWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher notificationBackend:(int64_t)backend
{
  v8 = MEMORY[0x277CD19C0];
  dispatcherCopy = dispatcher;
  queueCopy = queue;
  v11 = objc_alloc_init(v8);
  v12 = [(HMDPredictionSubscriber *)self initWithWorkQueue:queueCopy messageDispatcher:dispatcherCopy notificationBackend:backend darwinNotificationProvider:v11];

  return v12;
}

@end