@interface HMDAccessoryProfile
+ (id)logCategory;
- (BOOL)isEqual:(id)a3;
- (HMDAccessory)accessory;
- (HMDAccessoryProfile)initWithAccessory:(id)a3 uniqueIdentifier:(id)a4 services:(id)a5;
- (HMDAccessoryProfile)initWithAccessory:(id)a3 uniqueIdentifier:(id)a4 services:(id)a5 workQueue:(id)a6;
- (HMDAccessoryProfile)initWithCoder:(id)a3;
- (NSString)contextID;
- (NSString)description;
- (NSUUID)contextSPIUniqueIdentifier;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (id)findServiceWithType:(id)a3;
- (unint64_t)hash;
- (void)configureWithMessageDispatcher:(id)a3 configurationTracker:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDAccessoryProfile

- (NSUUID)contextSPIUniqueIdentifier
{
  v3 = +[HMDProcessInfo privateClientIdentifierSalt];
  v4 = MEMORY[0x277CCAD78];
  v5 = [(HMDAccessoryProfile *)self uniqueIdentifier];
  v6 = [v4 hm_deriveUUIDFromBaseUUID:v5 identifierSalt:v3];

  return v6;
}

- (NSString)contextID
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDAccessoryProfile *)self accessory];
  v5 = [v4 contextID];
  v6 = [(HMDAccessoryProfile *)self uniqueIdentifier];
  v7 = [v3 stringWithFormat:@"%@:%@", v5, v6];

  return v7;
}

- (HMDAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self uniqueIdentifier];
  v6 = [v5 UUIDString];
  [v4 encodeObject:v6 forKey:@"HM.accessoryProfileUUID"];

  v7 = [(HMDAccessoryProfile *)self accessory];
  [v4 encodeConditionalObject:v7 forKey:@"accessory"];

  v8 = [(HMDAccessoryProfile *)self services];
  [v4 encodeObject:v8 forKey:*MEMORY[0x277CD2668]];
}

- (HMDAccessoryProfile)initWithCoder:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessory"];
  v6 = objc_alloc(MEMORY[0x277CCAD78]);
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.accessoryProfileUUID"];
  v8 = [v6 initWithUUIDString:v7];

  v9 = MEMORY[0x277CBEB98];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v11 = [v9 setWithArray:v10];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:*MEMORY[0x277CD2668]];

  v13 = [(HMDAccessoryProfile *)self initWithAccessory:v5 uniqueIdentifier:v8 services:v12];
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)findServiceWithType:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(HMDAccessoryProfile *)self services];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 serviceType];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)configureWithMessageDispatcher:(id)a3 configurationTracker:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v11;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Configuring profile: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (v6)
  {
    if (v7)
    {
      dispatch_group_enter(v7);
    }

    v12 = [(HMDAccessoryProfile *)v9 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__HMDAccessoryProfile_configureWithMessageDispatcher_configurationTracker___block_invoke;
    block[3] = &unk_27868A010;
    block[4] = v9;
    v15 = v6;
    v16 = v7;
    dispatch_async(v12, block);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __75__HMDAccessoryProfile_configureWithMessageDispatcher_configurationTracker___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
  [*(a1 + 32) registerForMessages];
  [*(a1 + 32) handleInitialState];
  v2 = *(a1 + 48);
  if (v2)
  {

    dispatch_group_leave(v2);
  }
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDAccessoryProfile *)self uniqueIdentifier];
  v4 = [v2 stringWithFormat:@"identifier: %@", v3];

  return v4;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v3 = MEMORY[0x277CBEAC0];
  v4 = [(HMDAccessoryProfile *)self description];
  v5 = [v3 dictionaryWithObject:v4 forKey:*MEMORY[0x277D0F170]];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMDAccessoryProfile *)self uniqueIdentifier];
      v8 = [(HMDAccessoryProfile *)v6 uniqueIdentifier];
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(HMDAccessoryProfile *)self uniqueIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (HMDAccessoryProfile)initWithAccessory:(id)a3 uniqueIdentifier:(id)a4 services:(id)a5 workQueue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26.receiver = self;
  v26.super_class = HMDAccessoryProfile;
  v14 = [(HMDAccessoryProfile *)&v26 init];
  if (v14)
  {
    v15 = [v11 copy];
    uniqueIdentifier = v14->_uniqueIdentifier;
    v14->_uniqueIdentifier = v15;

    objc_storeStrong(&v14->_workQueue, a6);
    objc_storeWeak(&v14->_accessory, v10);
    if (v12)
    {
      v17 = [v12 copy];
    }

    else
    {
      v17 = [MEMORY[0x277CBEA60] array];
    }

    v18 = v17;
    objc_storeStrong(&v14->_services, v17);

    v19 = [v10 home];
    v20 = MEMORY[0x277CCACA8];
    v21 = [v19 name];
    v22 = [v10 name];
    v23 = [v20 stringWithFormat:@"%@/%@/%@", v21, v22, v11];
    logIdentifier = v14->_logIdentifier;
    v14->_logIdentifier = v23;
  }

  return v14;
}

- (HMDAccessoryProfile)initWithAccessory:(id)a3 uniqueIdentifier:(id)a4 services:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = HMDispatchQueueNameString();
  v12 = [v11 UTF8String];
  v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v14 = dispatch_queue_create(v12, v13);
  v15 = [(HMDAccessoryProfile *)self initWithAccessory:v10 uniqueIdentifier:v9 services:v8 workQueue:v14];

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_179404 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_179404, &__block_literal_global_179405);
  }

  v3 = logCategory__hmf_once_v2_179406;

  return v3;
}

void __34__HMDAccessoryProfile_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_179406;
  logCategory__hmf_once_v2_179406 = v1;
}

@end