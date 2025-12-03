@interface HMDNotificationRegistration
+ (id)logCategory;
- (HMDNotificationRegistration)initWithRegisterer:(id)registerer;
- (HMFLogging)registerer;
- (id)logIdentifier;
- (void)addObserver:(SEL)observer name:(id)name object:(id)object;
@end

@implementation HMDNotificationRegistration

- (HMFLogging)registerer
{
  WeakRetained = objc_loadWeakRetained(&self->_registerer);

  return WeakRetained;
}

- (void)addObserver:(SEL)observer name:(id)name object:(id)object
{
  v26 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  objectCopy = object;
  registeredNotifications = [(HMDNotificationRegistration *)self registeredNotifications];
  v11 = [registeredNotifications containsObject:nameCopy];

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v15;
      v24 = 2112;
      v25 = nameCopy;
      v16 = "%{public}@Not Registering for notification %@";
LABEL_6:
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, v16, &v22, 0x16u);
    }
  }

  else
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    registerer = [(HMDNotificationRegistration *)self registerer];
    [defaultCenter addObserver:registerer selector:observer name:nameCopy object:objectCopy];

    registeredNotifications2 = [(HMDNotificationRegistration *)self registeredNotifications];
    [registeredNotifications2 addObject:nameCopy];

    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v15;
      v24 = 2112;
      v25 = nameCopy;
      v16 = "%{public}@Registering for notification %@";
      goto LABEL_6;
    }
  }

  objc_autoreleasePoolPop(v12);
  v21 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  registerer = [(HMDNotificationRegistration *)self registerer];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  if (objc_opt_respondsToSelector())
  {
    v5 = MEMORY[0x277CCACA8];
    logIdentifier = [registerer logIdentifier];
    v7 = [v5 stringWithFormat:@"%@/%@", v4, logIdentifier];

    v4 = v7;
  }

  return v4;
}

- (HMDNotificationRegistration)initWithRegisterer:(id)registerer
{
  registererCopy = registerer;
  v9.receiver = self;
  v9.super_class = HMDNotificationRegistration;
  v5 = [(HMDNotificationRegistration *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    registeredNotifications = v5->_registeredNotifications;
    v5->_registeredNotifications = v6;

    objc_storeWeak(&v5->_registerer, registererCopy);
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