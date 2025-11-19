@interface HMDResidentDeviceManagerFactory
+ (id)createManagerForHomeUUID:(id)a3;
@end

@implementation HMDResidentDeviceManagerFactory

+ (id)createManagerForHomeUUID:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Using legacy HMDResidentDeviceManager", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v7 = objc_alloc_init(HMDResidentDeviceManagerLegacy);

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end