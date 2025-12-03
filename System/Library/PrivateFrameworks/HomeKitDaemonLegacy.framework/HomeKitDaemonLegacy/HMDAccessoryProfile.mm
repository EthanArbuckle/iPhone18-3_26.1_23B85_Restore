@interface HMDAccessoryProfile
+ (id)logCategory;
- (BOOL)isEqual:(id)equal;
- (HMDAccessory)accessory;
- (HMDAccessoryProfile)initWithAccessory:(id)accessory uniqueIdentifier:(id)identifier services:(id)services;
- (HMDAccessoryProfile)initWithAccessory:(id)accessory uniqueIdentifier:(id)identifier services:(id)services workQueue:(id)queue;
- (HMDAccessoryProfile)initWithCoder:(id)coder;
- (NSString)contextID;
- (NSString)description;
- (NSUUID)contextSPIUniqueIdentifier;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)findServiceWithType:(id)type;
- (unint64_t)hash;
- (void)configureWithMessageDispatcher:(id)dispatcher configurationTracker:(id)tracker;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDAccessoryProfile

- (NSUUID)contextSPIUniqueIdentifier
{
  v3 = +[HMDProcessInfo privateClientIdentifierSalt];
  v4 = MEMORY[0x277CCAD78];
  uniqueIdentifier = [(HMDAccessoryProfile *)self uniqueIdentifier];
  v6 = [v4 hm_deriveUUIDFromBaseUUID:uniqueIdentifier identifierSalt:v3];

  return v6;
}

- (NSString)contextID
{
  v3 = MEMORY[0x277CCACA8];
  accessory = [(HMDAccessoryProfile *)self accessory];
  contextID = [accessory contextID];
  uniqueIdentifier = [(HMDAccessoryProfile *)self uniqueIdentifier];
  v7 = [v3 stringWithFormat:@"%@:%@", contextID, uniqueIdentifier];

  return v7;
}

- (HMDAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uniqueIdentifier = [(HMDAccessoryProfile *)self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  [coderCopy encodeObject:uUIDString forKey:@"HM.accessoryProfileUUID"];

  accessory = [(HMDAccessoryProfile *)self accessory];
  [coderCopy encodeConditionalObject:accessory forKey:@"accessory"];

  services = [(HMDAccessoryProfile *)self services];
  [coderCopy encodeObject:services forKey:*MEMORY[0x277CD2668]];
}

- (HMDAccessoryProfile)initWithCoder:(id)coder
{
  v16[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessory"];
  v6 = objc_alloc(MEMORY[0x277CCAD78]);
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.accessoryProfileUUID"];
  v8 = [v6 initWithUUIDString:v7];

  v9 = MEMORY[0x277CBEB98];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v11 = [v9 setWithArray:v10];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:*MEMORY[0x277CD2668]];

  v13 = [(HMDAccessoryProfile *)self initWithAccessory:v5 uniqueIdentifier:v8 services:v12];
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)findServiceWithType:(id)type
{
  v19 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  services = [(HMDAccessoryProfile *)self services];
  v6 = [services countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(services);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        serviceType = [v9 serviceType];
        v11 = [serviceType isEqualToString:typeCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [services countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)configureWithMessageDispatcher:(id)dispatcher configurationTracker:(id)tracker
{
  v21 = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  trackerCopy = tracker;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v11;
    v19 = 2112;
    v20 = selfCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Configuring profile: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (dispatcherCopy)
  {
    if (trackerCopy)
    {
      dispatch_group_enter(trackerCopy);
    }

    workQueue = [(HMDAccessoryProfile *)selfCopy workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__HMDAccessoryProfile_configureWithMessageDispatcher_configurationTracker___block_invoke;
    block[3] = &unk_279734960;
    block[4] = selfCopy;
    v15 = dispatcherCopy;
    v16 = trackerCopy;
    dispatch_async(workQueue, block);
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
  uniqueIdentifier = [(HMDAccessoryProfile *)self uniqueIdentifier];
  v4 = [v2 stringWithFormat:@"identifier: %@", uniqueIdentifier];

  return v4;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v3 = MEMORY[0x277CBEAC0];
  v4 = [(HMDAccessoryProfile *)self description];
  v5 = [v3 dictionaryWithObject:v4 forKey:*MEMORY[0x277D0F170]];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      uniqueIdentifier = [(HMDAccessoryProfile *)self uniqueIdentifier];
      uniqueIdentifier2 = [(HMDAccessoryProfile *)v6 uniqueIdentifier];
      v9 = [uniqueIdentifier isEqual:uniqueIdentifier2];
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
  uniqueIdentifier = [(HMDAccessoryProfile *)self uniqueIdentifier];
  v3 = [uniqueIdentifier hash];

  return v3;
}

- (HMDAccessoryProfile)initWithAccessory:(id)accessory uniqueIdentifier:(id)identifier services:(id)services workQueue:(id)queue
{
  accessoryCopy = accessory;
  identifierCopy = identifier;
  servicesCopy = services;
  queueCopy = queue;
  v26.receiver = self;
  v26.super_class = HMDAccessoryProfile;
  v14 = [(HMDAccessoryProfile *)&v26 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    uniqueIdentifier = v14->_uniqueIdentifier;
    v14->_uniqueIdentifier = v15;

    objc_storeStrong(&v14->_workQueue, queue);
    objc_storeWeak(&v14->_accessory, accessoryCopy);
    if (servicesCopy)
    {
      array = [servicesCopy copy];
    }

    else
    {
      array = [MEMORY[0x277CBEA60] array];
    }

    v18 = array;
    objc_storeStrong(&v14->_services, array);

    home = [accessoryCopy home];
    v20 = MEMORY[0x277CCACA8];
    name = [home name];
    name2 = [accessoryCopy name];
    identifierCopy = [v20 stringWithFormat:@"%@/%@/%@", name, name2, identifierCopy];
    logIdentifier = v14->_logIdentifier;
    v14->_logIdentifier = identifierCopy;
  }

  return v14;
}

- (HMDAccessoryProfile)initWithAccessory:(id)accessory uniqueIdentifier:(id)identifier services:(id)services
{
  servicesCopy = services;
  identifierCopy = identifier;
  accessoryCopy = accessory;
  v11 = HMDispatchQueueNameString();
  uTF8String = [v11 UTF8String];
  v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v14 = dispatch_queue_create(uTF8String, v13);
  v15 = [(HMDAccessoryProfile *)self initWithAccessory:accessoryCopy uniqueIdentifier:identifierCopy services:servicesCopy workQueue:v14];

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_118672 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_118672, &__block_literal_global_118673);
  }

  v3 = logCategory__hmf_once_v2_118674;

  return v3;
}

uint64_t __34__HMDAccessoryProfile_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_118674;
  logCategory__hmf_once_v2_118674 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end