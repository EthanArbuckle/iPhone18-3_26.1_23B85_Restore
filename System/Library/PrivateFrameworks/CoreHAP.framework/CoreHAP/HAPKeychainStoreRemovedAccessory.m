@interface HAPKeychainStoreRemovedAccessory
+ (id)logCategory;
- (HAPKeychainStoreRemovedAccessory)initWithName:(id)a3 creationDate:(id)a4;
- (NSString)description;
@end

@implementation HAPKeychainStoreRemovedAccessory

- (HAPKeychainStoreRemovedAccessory)initWithName:(id)a3 creationDate:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v14 = objc_autoreleasePoolPush();
    v12 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v16;
      v17 = "%{public}@The name is required";
LABEL_10:
      _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, v17, buf, 0xCu);
    }

LABEL_11:

    objc_autoreleasePoolPop(v14);
    v13 = 0;
    goto LABEL_12;
  }

  if (!v8)
  {
    v14 = objc_autoreleasePoolPush();
    v12 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v16;
      v17 = "%{public}@The creation date is required";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v20.receiver = self;
  v20.super_class = HAPKeychainStoreRemovedAccessory;
  v10 = [(HAPKeychainStoreRemovedAccessory *)&v20 init];
  p_isa = &v10->super.super.isa;
  if (v10)
  {
    objc_storeStrong(&v10->_accessoryName, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  v12 = p_isa;
  v13 = v12;
LABEL_12:

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPKeychainStoreRemovedAccessory *)self accessoryName];
  v5 = [(HAPKeychainStoreRemovedAccessory *)self creationDate];
  v6 = [(HAPKeychainStoreRemovedAccessory *)self removeError];
  v7 = [v3 stringWithFormat:@"accessoryName: %@, creationDate: %@, error: %@", v4, v5, v6];

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3, &__block_literal_global_5289);
  }

  v3 = logCategory__hmf_once_v4;

  return v3;
}

uint64_t __47__HAPKeychainStoreRemovedAccessory_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v4 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end