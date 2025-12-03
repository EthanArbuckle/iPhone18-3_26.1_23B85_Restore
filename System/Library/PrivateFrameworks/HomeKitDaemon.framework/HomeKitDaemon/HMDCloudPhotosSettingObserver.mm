@interface HMDCloudPhotosSettingObserver
+ (HMDCloudPhotosSettingObserver)sharedInstance;
+ (id)logCategory;
- (BOOL)isCloudPhotosEnabledOnAccount;
- (HMDCloudPhotosSettingObserver)init;
- (HMDCloudPhotosSettingObserver)initWithAccount:(id)account notificationCenter:(id)center isSupported:(BOOL)supported;
- (void)configure;
- (void)handleAccountStoreDidChangeNotification:(id)notification;
@end

@implementation HMDCloudPhotosSettingObserver

- (BOOL)isCloudPhotosEnabledOnAccount
{
  account = [(HMDCloudPhotosSettingObserver *)self account];
  v3 = [account isEnabledForDataclass:*MEMORY[0x277CB8960]];

  return v3;
}

- (void)handleAccountStoreDidChangeNotification:(id)notification
{
  v24 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received account change notification", &v18, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  isCloudPhotosEnabledOnAccount = [(HMDCloudPhotosSettingObserver *)selfCopy isCloudPhotosEnabledOnAccount];
  if (isCloudPhotosEnabledOnAccount != [(HMDCloudPhotosSettingObserver *)selfCopy isCloudPhotosEnabled])
  {
    v10 = objc_autoreleasePoolPush();
    v11 = selfCopy;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      [(HMDCloudPhotosSettingObserver *)v11 isCloudPhotosEnabled];
      v14 = HMFBooleanToString();
      v15 = HMFBooleanToString();
      v18 = 138543874;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Updating cloudPhotosEnabled from %@ to %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    [(HMDCloudPhotosSettingObserver *)v11 setCloudPhotosEnabled:isCloudPhotosEnabledOnAccount];
    notificationCenter = [(HMDCloudPhotosSettingObserver *)v11 notificationCenter];
    [notificationCenter postNotificationName:@"HMDCloudPhotoSettingChangedNotification" object:v11];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)configure
{
  if ([(HMDCloudPhotosSettingObserver *)self isSupported])
  {
    notificationCenter = [(HMDCloudPhotosSettingObserver *)self notificationCenter];
    [notificationCenter addObserver:self selector:sel_handleAccountStoreDidChangeNotification_ name:*MEMORY[0x277CB8DB8] object:0];

    isCloudPhotosEnabledOnAccount = [(HMDCloudPhotosSettingObserver *)self isCloudPhotosEnabledOnAccount];

    [(HMDCloudPhotosSettingObserver *)self setCloudPhotosEnabled:isCloudPhotosEnabledOnAccount];
  }
}

- (HMDCloudPhotosSettingObserver)initWithAccount:(id)account notificationCenter:(id)center isSupported:(BOOL)supported
{
  accountCopy = account;
  centerCopy = center;
  v14.receiver = self;
  v14.super_class = HMDCloudPhotosSettingObserver;
  v11 = [(HMDCloudPhotosSettingObserver *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_account, account);
    objc_storeStrong(&v12->_notificationCenter, center);
    v12->_supported = supported;
  }

  return v12;
}

- (HMDCloudPhotosSettingObserver)init
{
  v3 = +[HMDAppleAccountManager sharedManager];
  accountStore = [v3 accountStore];
  aa_primaryAppleAccount = [accountStore aa_primaryAppleAccount];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v7 = [(HMDCloudPhotosSettingObserver *)self initWithAccount:aa_primaryAppleAccount notificationCenter:defaultCenter isSupported:!isHomePod()];

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_152188 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_152188, &__block_literal_global_7);
  }

  v3 = logCategory__hmf_once_v3_152189;

  return v3;
}

void __44__HMDCloudPhotosSettingObserver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_152189;
  logCategory__hmf_once_v3_152189 = v1;
}

+ (HMDCloudPhotosSettingObserver)sharedInstance
{
  if (sharedInstance_onceToken_152193 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_152193, &__block_literal_global_152194);
  }

  v3 = sharedInstance_cloudPhotoSettingObserver;

  return v3;
}

uint64_t __47__HMDCloudPhotosSettingObserver_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(HMDCloudPhotosSettingObserver);
  v1 = sharedInstance_cloudPhotoSettingObserver;
  sharedInstance_cloudPhotoSettingObserver = v0;

  v2 = sharedInstance_cloudPhotoSettingObserver;

  return [v2 configure];
}

@end