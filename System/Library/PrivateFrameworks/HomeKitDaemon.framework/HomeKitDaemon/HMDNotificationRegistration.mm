@interface HMDNotificationRegistration
+ (id)logCategory;
- (HMDNotificationRegistration)initWithRegisterer:(id)a3;
- (HMFLogging)registerer;
- (id)logIdentifier;
- (void)addObserver:(SEL)a3 name:(id)a4 object:(id)a5;
@end

@implementation HMDNotificationRegistration

- (HMFLogging)registerer
{
  WeakRetained = objc_loadWeakRetained(&self->_registerer);

  return WeakRetained;
}

- (void)addObserver:(SEL)a3 name:(id)a4 object:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(HMDNotificationRegistration *)self registeredNotifications];
  v11 = [v10 containsObject:v8];

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v15;
      v24 = 2112;
      v25 = v8;
      v16 = "%{public}@Not Registering for notification %@";
LABEL_6:
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, v16, &v22, 0x16u);
    }
  }

  else
  {
    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    v18 = [(HMDNotificationRegistration *)self registerer];
    [v17 addObserver:v18 selector:a3 name:v8 object:v9];

    v19 = [(HMDNotificationRegistration *)self registeredNotifications];
    [v19 addObject:v8];

    v12 = objc_autoreleasePoolPush();
    v20 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v15;
      v24 = 2112;
      v25 = v8;
      v16 = "%{public}@Registering for notification %@";
      goto LABEL_6;
    }
  }

  objc_autoreleasePoolPop(v12);
  v21 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  v2 = [(HMDNotificationRegistration *)self registerer];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  if (objc_opt_respondsToSelector())
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [v2 logIdentifier];
    v7 = [v5 stringWithFormat:@"%@/%@", v4, v6];

    v4 = v7;
  }

  return v4;
}

- (HMDNotificationRegistration)initWithRegisterer:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDNotificationRegistration;
  v5 = [(HMDNotificationRegistration *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    registeredNotifications = v5->_registeredNotifications;
    v5->_registeredNotifications = v6;

    objc_storeWeak(&v5->_registerer, v4);
  }

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_258646 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_258646, &__block_literal_global_258647);
  }

  v3 = logCategory__hmf_once_v1_258648;

  return v3;
}

void __42__HMDNotificationRegistration_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_258648;
  logCategory__hmf_once_v1_258648 = v1;
}

@end