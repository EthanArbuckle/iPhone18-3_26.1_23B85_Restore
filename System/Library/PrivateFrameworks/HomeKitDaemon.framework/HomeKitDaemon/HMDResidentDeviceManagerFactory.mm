@interface HMDResidentDeviceManagerFactory
+ (id)createManagerForHomeUUID:(id)d;
@end

@implementation HMDResidentDeviceManagerFactory

+ (id)createManagerForHomeUUID:(id)d
{
  v12 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v4 = objc_autoreleasePoolPush();
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Using ROAR V3 HMDResidentDeviceManager", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v7 = objc_alloc_init(HMDResidentDeviceManagerRoarV3);

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end