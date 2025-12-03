@interface HMDMultiUserSettingsMetricsEventDispatcher
+ (id)logCategory;
- (HMDMultiUserSettingsMetricsEventDispatcher)initWithIdentifier:(id)identifier logEventSubmitter:(id)submitter dailyScheduler:(id)scheduler;
- (HMDMultiUserSettingsMetricsEventDispatcherDataSource)dataSource;
- (id)logIdentifier;
- (void)registerForDailyMultiUserSettingsEvents;
- (void)submitMultiUserSettingsDailyEvent;
@end

@implementation HMDMultiUserSettingsMetricsEventDispatcher

- (HMDMultiUserSettingsMetricsEventDispatcherDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  identifier = [(HMDMultiUserSettingsMetricsEventDispatcher *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (void)submitMultiUserSettingsDailyEvent
{
  v26 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDMultiUserSettingsMetricsEventDispatcher *)self dataSource];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (dataSource)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Submitting multi user settings daily event", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    multiUserSettingsForMultiUserSettingsMetricsEventDispatcherDataSource = [dataSource multiUserSettingsForMultiUserSettingsMetricsEventDispatcherDataSource];
    numSharedUsers = [multiUserSettingsForMultiUserSettingsMetricsEventDispatcherDataSource numSharedUsers];
    if ([numSharedUsers intValue])
    {
      numSharedUsers2 = [multiUserSettingsForMultiUserSettingsMetricsEventDispatcherDataSource numSharedUsers];
      intValue = [numSharedUsers2 intValue];

      if (intValue < 11)
      {
        v13 = [[HMDMultiUserSettingsLogEvent alloc] initWithMultiUserSettings:multiUserSettingsForMultiUserSettingsMetricsEventDispatcherDataSource];
        logEventSubmitter = [(HMDMultiUserSettingsMetricsEventDispatcher *)selfCopy logEventSubmitter];
        [logEventSubmitter submitLogEvent:v13];

LABEL_14:
        goto LABEL_15;
      }
    }

    else
    {
    }

    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      numSharedUsers3 = [multiUserSettingsForMultiUserSettingsMetricsEventDispatcherDataSource numSharedUsers];
      v22 = 138543618;
      v23 = v19;
      v24 = 2112;
      v25 = numSharedUsers3;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@numSharedUsers is %@. Don't submit logs", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    goto LABEL_14;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    v22 = 138543362;
    v23 = v15;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@No DataSource is set for submitMultiUserSettingsDailyEvent", &v22, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
LABEL_15:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)registerForDailyMultiUserSettingsEvents
{
  dailyScheduler = [(HMDMultiUserSettingsMetricsEventDispatcher *)self dailyScheduler];
  [dailyScheduler registerDailyTaskRunner:self];
}

- (HMDMultiUserSettingsMetricsEventDispatcher)initWithIdentifier:(id)identifier logEventSubmitter:(id)submitter dailyScheduler:(id)scheduler
{
  identifierCopy = identifier;
  submitterCopy = submitter;
  schedulerCopy = scheduler;
  v15.receiver = self;
  v15.super_class = HMDMultiUserSettingsMetricsEventDispatcher;
  v12 = [(HMDMultiUserSettingsMetricsEventDispatcher *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_logEventSubmitter, submitter);
    objc_storeStrong(&v13->_dailyScheduler, scheduler);
  }

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_35164 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_35164, &__block_literal_global_35165);
  }

  v3 = logCategory__hmf_once_v4_35166;

  return v3;
}

void __57__HMDMultiUserSettingsMetricsEventDispatcher_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_35166;
  logCategory__hmf_once_v4_35166 = v1;
}

@end