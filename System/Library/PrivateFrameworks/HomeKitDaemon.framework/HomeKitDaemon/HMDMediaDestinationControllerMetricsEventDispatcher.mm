@interface HMDMediaDestinationControllerMetricsEventDispatcher
+ (id)logCategory;
- (HMDMediaDestinationControllerMetricsEventDispatcher)initWithIdentifier:(id)identifier logEventSubmitter:(id)submitter dataSource:(id)source;
- (HMDMediaDestinationControllerMetricsEventDispatcherDataSource)dataSource;
- (id)dataSourceCurrentDestinationType;
- (id)dataSourceCurrentUser;
- (id)dataSourceCurrentUserPrivilege;
- (id)dataSourceDestinationTypeWithIdentifier:(id)identifier;
- (id)dataSourceIsTriggeredOnControllerDevice;
- (id)logIdentifier;
- (void)startStagedDestinationIdentifierCommittedEventWithStagedDestinationIdentifier:(id)identifier;
- (void)submitDailySetDestinationEvent;
- (void)submitFailureEventWithEventErrorCode:(unint64_t)code error:(id)error;
- (void)submitReceivedUpdateDestinationRequestMessageEventWithDestinationIdentifier:(id)identifier existingDestinationIdentifier:(id)destinationIdentifier;
- (void)submitStagedDestinationIdentifierCommittedEventWithCommittedDestinationIdentifier:(id)identifier;
- (void)submitTransactionUpdatedDestinationEventWithDestinationIdentifier:(id)identifier existingDestinationIdentifier:(id)destinationIdentifier;
@end

@implementation HMDMediaDestinationControllerMetricsEventDispatcher

- (HMDMediaDestinationControllerMetricsEventDispatcherDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  identifier = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (id)dataSourceIsTriggeredOnControllerDevice
{
  v14 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    [dataSource isTriggeredOnControllerDeviceForMediaDestinationControllerMetricsEventDispatcher:self];
    v5 = HMFBooleanToString();
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get is triggered on controller device due to no data source", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = @"NotSet";
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)dataSourceDestinationTypeWithIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    dataSource = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self dataSource];
    v6 = dataSource;
    if (dataSource)
    {
      [dataSource mediaDestinationControllerMetricsEventDispatcher:self destinationTypeForDestinationWithIdentifier:identifierCopy];
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v14 = 138543362;
        v15 = v11;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get destination type due to no data source", &v14, 0xCu);
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
  dataSource = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    v5 = [dataSource currentDestinationTypeForMediaDestinationControllerMetricsEventDispatcher:self];
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
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get current destination type due to no data source", &v14, 0xCu);
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
  dataSource = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self dataSource];
  v4 = [dataSource currentUserForMediaDestinationControllerMetricsEventDispatcher:self];
  if (!v4)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = dataSource;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to get current user from data source: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)dataSourceCurrentUserPrivilege
{
  dataSourceCurrentUser = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self dataSourceCurrentUser];
  v3 = dataSourceCurrentUser;
  if (dataSourceCurrentUser)
  {
    privilege = [dataSourceCurrentUser privilege];
    if (privilege > 5)
    {
      v5 = @"None";
    }

    else
    {
      v5 = off_278684178[privilege];
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
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v21 = 138543362;
    v22 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Submitting daily set destination event", &v21, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  dataSource = [(HMDMediaDestinationControllerMetricsEventDispatcher *)selfCopy dataSource];
  v8 = dataSource;
  if (!dataSource)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
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
      _os_log_impl(&dword_229538000, v17, v18, v16, &v21, v19);
    }

LABEL_11:

    objc_autoreleasePoolPop(v12);
    goto LABEL_12;
  }

  if (([dataSource isTriggeredOnControllerDeviceForMediaDestinationControllerMetricsEventDispatcher:selfCopy] & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
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

  dataSourceCurrentDestinationType = [(HMDMediaDestinationControllerMetricsEventDispatcher *)selfCopy dataSourceCurrentDestinationType];
  v10 = [[HMDMediaDestinationControllerDailySetDestinationEvent alloc] initWithExistingDestinationType:dataSourceCurrentDestinationType];
  logEventSubmitter = [(HMDMediaDestinationControllerMetricsEventDispatcher *)selfCopy logEventSubmitter];
  [logEventSubmitter submitLogEvent:v10];

LABEL_12:
  v20 = *MEMORY[0x277D85DE8];
}

- (void)submitStagedDestinationIdentifierCommittedEventWithCommittedDestinationIdentifier:(id)identifier
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  v5 = self->_trackedStagedDestinationIdentifierEvent;
  v6 = v5;
  if (v5 && ([(HMDMediaDestinationControllerStagedDestinationIdentifierCommittedEvent *)v5 stagedDestinationIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v8 = HMFEqualObjects(), v7, (v8 & 1) != 0))
  {
    trackedStagedDestinationIdentifierEvent = self->_trackedStagedDestinationIdentifierEvent;
    self->_trackedStagedDestinationIdentifierEvent = 0;

    os_unfair_lock_unlock(&self->_lock);
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v13;
      v22 = 2112;
      v23 = identifierCopy;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@submitting staged destination identifier committed event with committed destination identifier: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    logEventSubmitter = [(HMDMediaDestinationControllerMetricsEventDispatcher *)selfCopy logEventSubmitter];
    [logEventSubmitter submitLogEvent:v6];
  }

  else
  {

    os_unfair_lock_unlock(&self->_lock);
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Skipping staged destination identifier committed event due to out-dated information", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)startStagedDestinationIdentifierCommittedEventWithStagedDestinationIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = identifierCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Tracking staged destination identifier: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  dataSourceIsTriggeredOnControllerDevice = [(HMDMediaDestinationControllerMetricsEventDispatcher *)selfCopy dataSourceIsTriggeredOnControllerDevice];
  dataSourceCurrentUserPrivilege = [(HMDMediaDestinationControllerMetricsEventDispatcher *)selfCopy dataSourceCurrentUserPrivilege];
  v11 = [[HMDMediaDestinationControllerStagedDestinationIdentifierCommittedEvent alloc] initWithStagedDestinationIdentifier:identifierCopy isTriggeredOnControllerDevice:dataSourceIsTriggeredOnControllerDevice userPrivilege:dataSourceCurrentUserPrivilege];
  os_unfair_lock_lock_with_options();
  trackedStagedDestinationIdentifierEvent = selfCopy->_trackedStagedDestinationIdentifierEvent;
  selfCopy->_trackedStagedDestinationIdentifierEvent = v11;

  os_unfair_lock_unlock(&selfCopy->_lock);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)submitFailureEventWithEventErrorCode:(unint64_t)code error:(id)error
{
  errorCopy = error;
  if (code > 0xB)
  {
    v7 = @"unknown";
  }

  else
  {
    v7 = off_2786752C8[code];
  }

  v16 = v7;
  v8 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
  v10 = [v8 stringWithFormat:@"%@", v9];

  domain = [errorCopy domain];

  dataSourceIsTriggeredOnControllerDevice = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self dataSourceIsTriggeredOnControllerDevice];
  dataSourceCurrentUserPrivilege = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self dataSourceCurrentUserPrivilege];
  v14 = [[HMDMediaDestinationControllerFailureLogEvent alloc] initWithDestinationControllerErrorCode:v16 errorCode:v10 errorDomain:domain isTriggeredOnControllerDevice:dataSourceIsTriggeredOnControllerDevice userPrivilege:dataSourceCurrentUserPrivilege];
  logEventSubmitter = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self logEventSubmitter];
  [logEventSubmitter submitLogEvent:v14];
}

- (void)submitTransactionUpdatedDestinationEventWithDestinationIdentifier:(id)identifier existingDestinationIdentifier:(id)destinationIdentifier
{
  identifierCopy = identifier;
  v12 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self dataSourceDestinationTypeWithIdentifier:destinationIdentifier];
  v7 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self dataSourceDestinationTypeWithIdentifier:identifierCopy];

  dataSourceIsTriggeredOnControllerDevice = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self dataSourceIsTriggeredOnControllerDevice];
  dataSourceCurrentUserPrivilege = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self dataSourceCurrentUserPrivilege];
  v10 = [[HMDMediaDestinationControllerTransactionUpdatedDestinationLogEvent alloc] initWithExistingDestinationType:v12 destinationType:v7 isTriggeredOnControllerDevice:dataSourceIsTriggeredOnControllerDevice userPrivilege:dataSourceCurrentUserPrivilege];
  logEventSubmitter = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self logEventSubmitter];
  [logEventSubmitter submitLogEvent:v10];
}

- (void)submitReceivedUpdateDestinationRequestMessageEventWithDestinationIdentifier:(id)identifier existingDestinationIdentifier:(id)destinationIdentifier
{
  identifierCopy = identifier;
  v12 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self dataSourceDestinationTypeWithIdentifier:destinationIdentifier];
  v7 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self dataSourceDestinationTypeWithIdentifier:identifierCopy];

  dataSourceIsTriggeredOnControllerDevice = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self dataSourceIsTriggeredOnControllerDevice];
  dataSourceCurrentUserPrivilege = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self dataSourceCurrentUserPrivilege];
  v10 = [[HMDMediaDestinationControllerReceivedUpdateDestinationRequestMessageLogEvent alloc] initWithExistingDestinationType:v12 destinationType:v7 isTriggeredOnControllerDevice:dataSourceIsTriggeredOnControllerDevice userPrivilege:dataSourceCurrentUserPrivilege];
  logEventSubmitter = [(HMDMediaDestinationControllerMetricsEventDispatcher *)self logEventSubmitter];
  [logEventSubmitter submitLogEvent:v10];
}

- (HMDMediaDestinationControllerMetricsEventDispatcher)initWithIdentifier:(id)identifier logEventSubmitter:(id)submitter dataSource:(id)source
{
  identifierCopy = identifier;
  submitterCopy = submitter;
  sourceCopy = source;
  v15.receiver = self;
  v15.super_class = HMDMediaDestinationControllerMetricsEventDispatcher;
  v12 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_logEventSubmitter, submitter);
    objc_storeWeak(&v13->_dataSource, sourceCopy);
  }

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t12_65336 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t12_65336, &__block_literal_global_65337);
  }

  v3 = logCategory__hmf_once_v13_65338;

  return v3;
}

void __66__HMDMediaDestinationControllerMetricsEventDispatcher_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v13_65338;
  logCategory__hmf_once_v13_65338 = v1;
}

@end