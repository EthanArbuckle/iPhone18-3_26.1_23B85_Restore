@interface HMDMultiUserSettingsMetricsEventDispatcher
+ (id)logCategory;
- (HMDMultiUserSettingsMetricsEventDispatcher)initWithIdentifier:(id)a3 logEventSubmitter:(id)a4 dailyScheduler:(id)a5;
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
  v2 = [(HMDMultiUserSettingsMetricsEventDispatcher *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)submitMultiUserSettingsDailyEvent
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMultiUserSettingsMetricsEventDispatcher *)self dataSource];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Submitting multi user settings daily event", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v9 = [v3 multiUserSettingsForMultiUserSettingsMetricsEventDispatcherDataSource];
    v10 = [v9 numSharedUsers];
    if ([v10 intValue])
    {
      v11 = [v9 numSharedUsers];
      v12 = [v11 intValue];

      if (v12 < 11)
      {
        v13 = [[HMDMultiUserSettingsLogEvent alloc] initWithMultiUserSettings:v9];
        v14 = [(HMDMultiUserSettingsMetricsEventDispatcher *)v5 logEventSubmitter];
        [v14 submitLogEvent:v13];

LABEL_14:
        goto LABEL_15;
      }
    }

    else
    {
    }

    v16 = objc_autoreleasePoolPush();
    v17 = v5;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v9 numSharedUsers];
      v22 = 138543618;
      v23 = v19;
      v24 = 2112;
      v25 = v20;
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
  v3 = [(HMDMultiUserSettingsMetricsEventDispatcher *)self dailyScheduler];
  [v3 registerDailyTaskRunner:self];
}

- (HMDMultiUserSettingsMetricsEventDispatcher)initWithIdentifier:(id)a3 logEventSubmitter:(id)a4 dailyScheduler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMDMultiUserSettingsMetricsEventDispatcher;
  v12 = [(HMDMultiUserSettingsMetricsEventDispatcher *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeStrong(&v13->_logEventSubmitter, a4);
    objc_storeStrong(&v13->_dailyScheduler, a5);
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