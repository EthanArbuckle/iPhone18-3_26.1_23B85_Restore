@interface HMDCloudShareTrustManagerMetricsEventDispatcher
+ (id)logCategory;
- (HMDCloudShareTrustManagerMetricsEventDispatcher)initWithIdentifier:(id)a3 logEventSubmitter:(id)a4 dailyScheduler:(id)a5 dataSource:(id)a6;
- (HMDCloudShareTrustManagerMetricsEventDispatcherDataSource)dataSource;
- (id)logIdentifier;
- (void)registerForDailyTrustManagerEvents;
- (void)submitCloudShareTrustStatusDailyEvent;
- (void)submitFailureEventWithEventErrorCode:(int64_t)a3 error:(id)a4;
- (void)submitTrustActivityEvent:(int64_t)a3;
@end

@implementation HMDCloudShareTrustManagerMetricsEventDispatcher

- (HMDCloudShareTrustManagerMetricsEventDispatcherDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDCloudShareTrustManagerMetricsEventDispatcher *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)submitCloudShareTrustStatusDailyEvent
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCloudShareTrustManagerMetricsEventDispatcher *)self dataSource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 homeForCloudShareTrustManagerMetricsEventDispatcher:self];
    v6 = [v4 isFromOwnerForCloudShareTrustManagerMetricsEventDispatcher:self];
    v7 = [v4 trustConfigureStateForCloudShareTrustManagerMetricsEventDispatcher:self];
    if (v6)
    {
      v8 = [v5 isCurrentDeviceConfirmedPrimaryResident];
      v24 = 0u;
      v25 = 0u;
      *buf = 0u;
      v23 = 0u;
      [v4 trustStatusCountsForCloudShareTrustManagerMetricsEventDispatcher:self];
      v9 = [HMDUserCloudShareOwnerAdoptionDailyEvent alloc];
      v21[0] = *buf;
      v21[1] = v23;
      v21[2] = v24;
      v21[3] = v25;
      v10 = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)v9 initWithConfigureState:v7 isPrimaryResident:v8 trustStatusCounts:v21];
    }

    else
    {
      v15 = [v5 owner];
      v16 = [v15 cloudShareID];
      v17 = v16 != 0;

      v10 = [[HMDUserCloudShareParticipantAdoptionDailyEvent alloc] initWithConfigureState:v7 hasOwnerCloudShareID:v17];
    }

    v18 = v10;
    v19 = [(HMDCloudShareTrustManagerMetricsEventDispatcher *)self logEventSubmitter];
    [v19 submitLogEvent:v18];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to submit daily trust status event due to no data source", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)submitFailureEventWithEventErrorCode:(int64_t)a3 error:(id)a4
{
  v6 = a4;
  if (!v6)
  {
    v6 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
  }

  v9 = v6;
  v7 = [[HMDCloudShareTrustManagerFailureLogEvent alloc] initWithTrustManagerErrorCode:a3 error:v6];
  v8 = [(HMDCloudShareTrustManagerMetricsEventDispatcher *)self logEventSubmitter];
  [v8 submitLogEvent:v7];
}

- (void)submitTrustActivityEvent:(int64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [(HMDCloudShareTrustManagerMetricsEventDispatcher *)self dataSource];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 homeForCloudShareTrustManagerMetricsEventDispatcher:self];
    v8 = [v7 currentUser];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 privilege];
    }

    else
    {
      v10 = 2;
    }

    v15 = -[HMDCloudShareTrustManagerTrustActivityLogEvent initWithTrustActivityType:privilege:isPrimaryResident:]([HMDCloudShareTrustManagerTrustActivityLogEvent alloc], "initWithTrustActivityType:privilege:isPrimaryResident:", a3, v10, [v7 isCurrentDeviceConfirmedPrimaryResident]);
    v16 = [(HMDCloudShareTrustManagerMetricsEventDispatcher *)self logEventSubmitter];
    [v16 submitLogEvent:v15];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to submit daily trust status event due to no data source", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)registerForDailyTrustManagerEvents
{
  v3 = [(HMDCloudShareTrustManagerMetricsEventDispatcher *)self dailyScheduler];
  [v3 registerDailyTaskRunner:self];
}

- (HMDCloudShareTrustManagerMetricsEventDispatcher)initWithIdentifier:(id)a3 logEventSubmitter:(id)a4 dailyScheduler:(id)a5 dataSource:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HMDCloudShareTrustManagerMetricsEventDispatcher;
  v15 = [(HMDCloudShareTrustManagerMetricsEventDispatcher *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, a3);
    objc_storeStrong(&v16->_logEventSubmitter, a4);
    objc_storeStrong(&v16->_dailyScheduler, a5);
    objc_storeWeak(&v16->_dataSource, v14);
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2, &__block_literal_global_7787);
  }

  v3 = logCategory__hmf_once_v3;

  return v3;
}

void __62__HMDCloudShareTrustManagerMetricsEventDispatcher_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3;
  logCategory__hmf_once_v3 = v1;
}

@end