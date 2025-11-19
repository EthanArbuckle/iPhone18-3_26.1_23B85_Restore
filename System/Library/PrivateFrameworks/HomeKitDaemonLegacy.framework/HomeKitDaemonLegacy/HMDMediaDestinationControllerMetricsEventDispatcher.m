@interface HMDMediaDestinationControllerMetricsEventDispatcher
+ (id)logCategory;
- (HMDMediaDestinationControllerMetricsEventDispatcher)initWithIdentifier:(id)a3 logEventSubmitter:(id)a4 dataSource:(id)a5;
- (HMDMediaDestinationControllerMetricsEventDispatcherDataSource)dataSource;
- (id)dataSourceCurrentDestinationType;
- (id)dataSourceCurrentUser;
- (id)dataSourceCurrentUserPrivilege;
- (id)dataSourceDestinationTypeWithIdentifier:(id)a3;
- (id)dataSourceIsTriggeredOnControllerDevice;
- (id)logIdentifier;
- (void)startStagedDestinationIdentifierCommittedEventWithStagedDestinationIdentifier:(id)a3;
- (void)submitDailySetDestinationEvent;
- (void)submitFailureEventWithEventErrorCode:(unint64_t)a3 error:(id)a4;
- (void)submitReceivedUpdateDestinationRequestMessageEventWithDestinationIdentifier:(id)a3 existingDestinationIdentifier:(id)a4;
- (void)submitStagedDestinationIdentifierCommittedEventWithCommittedDestinationIdentifier:(id)a3;
- (void)submitTransactionUpdatedDestinationEventWithDestinationIdentifier:(id)a3 existingDestinationIdentifier:(id)a4;
@end

@implementation HMDMediaDestinationControllerMetricsEventDispatcher

- (HMDMediaDestinationControllerMetricsEventDispatcherDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)dataSourceIsTriggeredOnControllerDevice
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self dataSource];
  v4 = v3;
  if (v3)
  {
    [v3 isTriggeredOnControllerDeviceForMediaDestinationControllerMetricsEventDispatcher:self];
    v5 = HMFBooleanToString();
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get is triggered on controller device due to no data source", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = @"NotSet";
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)dataSourceDestinationTypeWithIdentifier:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self dataSource];
    v6 = v5;
    if (v5)
    {
      [v5 mediaDestinationControllerMetricsEventDispatcher:self destinationTypeForDestinationWithIdentifier:v4];
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v14 = 138543362;
        v15 = v11;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get destination type due to no data source", &v14, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
    }

    v7 = HMMediaDestinationTypeAsString();
  }

  else
  {
    v7 = @"NotSet";
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)dataSourceCurrentDestinationType
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self dataSource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 currentDestinationTypeForMediaDestinationControllerMetricsEventDispatcher:self];
    v6 = v5;
    if (v5)
    {
      [v5 integerValue];
      v7 = HMMediaDestinationTypeAsString();
    }

    else
    {
      v7 = @"NotSet";
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get current destination type due to no data source", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v7 = HMMediaDestinationTypeAsString();
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)dataSourceCurrentUser
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self dataSource];
  v4 = [v3 currentUserForMediaDestinationControllerMetricsEventDispatcher:self];
  if (!v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to get current user from data source: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)dataSourceCurrentUserPrivilege
{
  v2 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self dataSourceCurrentUser];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 privilege];
    if (v4 > 4)
    {
      v5 = @"None";
    }

    else
    {
      v5 = off_279730DF8[v4];
    }

    v6 = v5;
  }

  else
  {
    v6 = @"NotSet";
  }

  return v6;
}

- (void)submitDailySetDestinationEvent
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v21 = 138543362;
    v22 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Submitting daily set destination event", &v21, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)v4 dataSource];
  v8 = v7;
  if (!v7)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v4;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v15;
      v16 = "%{public}@Failed to submit daily set destination event due to no data source";
      v17 = v14;
      v18 = OS_LOG_TYPE_ERROR;
      v19 = 12;
LABEL_10:
      _os_log_impl(&dword_2531F8000, v17, v18, v16, &v21, v19);
    }

LABEL_11:

    objc_autoreleasePoolPop(v12);
    goto LABEL_12;
  }

  if (([v7 isTriggeredOnControllerDeviceForMediaDestinationControllerMetricsEventDispatcher:v4] & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v4;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v15;
      v23 = 2112;
      v24 = v8;
      v16 = "%{public}@Skipping daily set destination event due to event not triggered on the controller provided by data source: %@";
      v17 = v14;
      v18 = OS_LOG_TYPE_INFO;
      v19 = 22;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v9 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)v4 dataSourceCurrentDestinationType];
  v10 = [[HMDMediaDestinationControllerDailySetDestinationEvent alloc] initWithExistingDestinationType:v9];
  v11 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)v4 logEventSubmitter];
  [v11 submitLogEvent:v10];

LABEL_12:
  v20 = *MEMORY[0x277D85DE8];
}

- (void)submitStagedDestinationIdentifierCommittedEventWithCommittedDestinationIdentifier:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = self->_trackedStagedDestinationIdentifierEvent;
  v6 = v5;
  if (v5 && ([(HMDMediaDestinationControllerStagedDestinationIdentifierCommittedEvent *)v5 stagedDestinationIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v8 = HMFEqualObjects(), v7, (v8 & 1) != 0))
  {
    trackedStagedDestinationIdentifierEvent = self->_trackedStagedDestinationIdentifierEvent;
    self->_trackedStagedDestinationIdentifierEvent = 0;

    os_unfair_lock_unlock(&self->_lock);
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v13;
      v22 = 2112;
      v23 = v4;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@submitting staged destination identifier committed event with committed destination identifier: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)v11 logEventSubmitter];
    [v14 submitLogEvent:v6];
  }

  else
  {

    os_unfair_lock_unlock(&self->_lock);
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Skipping staged destination identifier committed event due to out-dated information", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)startStagedDestinationIdentifierCommittedEventWithStagedDestinationIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Tracking staged destination identifier: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)v6 dataSourceIsTriggeredOnControllerDevice];
  v10 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)v6 dataSourceCurrentUserPrivilege];
  v11 = [[HMDMediaDestinationControllerStagedDestinationIdentifierCommittedEvent alloc] initWithStagedDestinationIdentifier:v4 isTriggeredOnControllerDevice:v9 userPrivilege:v10];
  os_unfair_lock_lock_with_options();
  trackedStagedDestinationIdentifierEvent = v6->_trackedStagedDestinationIdentifierEvent;
  v6->_trackedStagedDestinationIdentifierEvent = v11;

  os_unfair_lock_unlock(&v6->_lock);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)submitFailureEventWithEventErrorCode:(unint64_t)a3 error:(id)a4
{
  v6 = a4;
  if (a3 > 0xB)
  {
    v7 = @"unknown";
  }

  else
  {
    v7 = off_279726028[a3];
  }

  v16 = v7;
  v8 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "code")}];
  v10 = [v8 stringWithFormat:@"%@", v9];

  v11 = [v6 domain];

  v12 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self dataSourceIsTriggeredOnControllerDevice];
  v13 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self dataSourceCurrentUserPrivilege];
  v14 = [[HMDMediaDestinationControllerFailureLogEvent alloc] initWithDestinationControllerErrorCode:v16 errorCode:v10 errorDomain:v11 isTriggeredOnControllerDevice:v12 userPrivilege:v13];
  v15 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self logEventSubmitter];
  [v15 submitLogEvent:v14];
}

- (void)submitTransactionUpdatedDestinationEventWithDestinationIdentifier:(id)a3 existingDestinationIdentifier:(id)a4
{
  v6 = a3;
  v12 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self dataSourceDestinationTypeWithIdentifier:a4];
  v7 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self dataSourceDestinationTypeWithIdentifier:v6];

  v8 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self dataSourceIsTriggeredOnControllerDevice];
  v9 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self dataSourceCurrentUserPrivilege];
  v10 = [[HMDMediaDestinationControllerTransactionUpdatedDestinationLogEvent alloc] initWithExistingDestinationType:v12 destinationType:v7 isTriggeredOnControllerDevice:v8 userPrivilege:v9];
  v11 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self logEventSubmitter];
  [v11 submitLogEvent:v10];
}

- (void)submitReceivedUpdateDestinationRequestMessageEventWithDestinationIdentifier:(id)a3 existingDestinationIdentifier:(id)a4
{
  v6 = a3;
  v12 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self dataSourceDestinationTypeWithIdentifier:a4];
  v7 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self dataSourceDestinationTypeWithIdentifier:v6];

  v8 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self dataSourceIsTriggeredOnControllerDevice];
  v9 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self dataSourceCurrentUserPrivilege];
  v10 = [[HMDMediaDestinationControllerReceivedUpdateDestinationRequestMessageLogEvent alloc] initWithExistingDestinationType:v12 destinationType:v7 isTriggeredOnControllerDevice:v8 userPrivilege:v9];
  v11 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self logEventSubmitter];
  [v11 submitLogEvent:v10];
}

- (HMDMediaDestinationControllerMetricsEventDispatcher)initWithIdentifier:(id)a3 logEventSubmitter:(id)a4 dataSource:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMDMediaDestinationControllerMetricsEventDispatcher;
  v12 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeStrong(&v13->_logEventSubmitter, a4);
    objc_storeWeak(&v13->_dataSource, v11);
  }

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t12 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t12, &__block_literal_global_42950);
  }

  v3 = logCategory__hmf_once_v13;

  return v3;
}

uint64_t __66__HMDMediaDestinationControllerMetricsEventDispatcher_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v13;
  logCategory__hmf_once_v13 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end