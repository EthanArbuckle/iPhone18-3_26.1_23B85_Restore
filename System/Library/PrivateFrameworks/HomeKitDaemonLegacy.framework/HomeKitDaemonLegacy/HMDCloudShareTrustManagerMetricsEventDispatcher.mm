@interface HMDCloudShareTrustManagerMetricsEventDispatcher
+ (id)logCategory;
- (HMDCloudShareTrustManagerMetricsEventDispatcher)initWithIdentifier:(id)identifier logEventSubmitter:(id)submitter dailyScheduler:(id)scheduler dataSource:(id)source;
- (HMDCloudShareTrustManagerMetricsEventDispatcherDataSource)dataSource;
- (id)logIdentifier;
- (void)registerForDailyTrustManagerEvents;
- (void)submitCloudShareTrustStatusDailyEvent;
- (void)submitFailureEventWithEventErrorCode:(int64_t)code error:(id)error;
- (void)submitTrustActivityEvent:(int64_t)event;
@end

@implementation HMDCloudShareTrustManagerMetricsEventDispatcher

- (HMDCloudShareTrustManagerMetricsEventDispatcherDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  identifier = [(HMDCloudShareTrustManagerMetricsEventDispatcher *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (void)submitCloudShareTrustStatusDailyEvent
{
  v26 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDCloudShareTrustManagerMetricsEventDispatcher *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    v5 = [dataSource homeForCloudShareTrustManagerMetricsEventDispatcher:self];
    v6 = [v4 isFromOwnerForCloudShareTrustManagerMetricsEventDispatcher:self];
    v7 = [v4 trustConfigureStateForCloudShareTrustManagerMetricsEventDispatcher:self];
    if (v6)
    {
      isCurrentDeviceConfirmedPrimaryResident = [v5 isCurrentDeviceConfirmedPrimaryResident];
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
      v10 = [(HMDUserCloudShareOwnerAdoptionDailyEvent *)v9 initWithConfigureState:v7 isPrimaryResident:isCurrentDeviceConfirmedPrimaryResident trustStatusCounts:v21];
    }

    else
    {
      owner = [v5 owner];
      cloudShareID = [owner cloudShareID];
      v17 = cloudShareID != 0;

      v10 = [[HMDUserCloudShareParticipantAdoptionDailyEvent alloc] initWithConfigureState:v7 hasOwnerCloudShareID:v17];
    }

    v18 = v10;
    logEventSubmitter = [(HMDCloudShareTrustManagerMetricsEventDispatcher *)self logEventSubmitter];
    [logEventSubmitter submitLogEvent:v18];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to submit daily trust status event due to no data source", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)submitFailureEventWithEventErrorCode:(int64_t)code error:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    errorCopy = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
  }

  v9 = errorCopy;
  v7 = [[HMDCloudShareTrustManagerFailureLogEvent alloc] initWithTrustManagerErrorCode:code error:errorCopy];
  logEventSubmitter = [(HMDCloudShareTrustManagerMetricsEventDispatcher *)self logEventSubmitter];
  [logEventSubmitter submitLogEvent:v7];
}

- (void)submitTrustActivityEvent:(int64_t)event
{
  v20 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDCloudShareTrustManagerMetricsEventDispatcher *)self dataSource];
  v6 = dataSource;
  if (dataSource)
  {
    v7 = [dataSource homeForCloudShareTrustManagerMetricsEventDispatcher:self];
    currentUser = [v7 currentUser];
    v9 = currentUser;
    if (currentUser)
    {
      privilege = [currentUser privilege];
    }

    else
    {
      privilege = 2;
    }

    v15 = -[HMDCloudShareTrustManagerTrustActivityLogEvent initWithTrustActivityType:privilege:isPrimaryResident:]([HMDCloudShareTrustManagerTrustActivityLogEvent alloc], "initWithTrustActivityType:privilege:isPrimaryResident:", event, privilege, [v7 isCurrentDeviceConfirmedPrimaryResident]);
    logEventSubmitter = [(HMDCloudShareTrustManagerMetricsEventDispatcher *)self logEventSubmitter];
    [logEventSubmitter submitLogEvent:v15];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to submit daily trust status event due to no data source", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)registerForDailyTrustManagerEvents
{
  dailyScheduler = [(HMDCloudShareTrustManagerMetricsEventDispatcher *)self dailyScheduler];
  [dailyScheduler registerDailyTaskRunner:self];
}

- (HMDCloudShareTrustManagerMetricsEventDispatcher)initWithIdentifier:(id)identifier logEventSubmitter:(id)submitter dailyScheduler:(id)scheduler dataSource:(id)source
{
  identifierCopy = identifier;
  submitterCopy = submitter;
  schedulerCopy = scheduler;
  sourceCopy = source;
  v18.receiver = self;
  v18.super_class = HMDCloudShareTrustManagerMetricsEventDispatcher;
  v15 = [(HMDCloudShareTrustManagerMetricsEventDispatcher *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, identifier);
    objc_storeStrong(&v16->_logEventSubmitter, submitter);
    objc_storeStrong(&v16->_dailyScheduler, scheduler);
    objc_storeWeak(&v16->_dataSource, sourceCopy);
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2, &__block_literal_global_5919);
  }

  v3 = logCategory__hmf_once_v3;

  return v3;
}

uint64_t __62__HMDCloudShareTrustManagerMetricsEventDispatcher_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v3 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end