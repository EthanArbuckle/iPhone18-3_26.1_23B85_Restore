@interface HMMTRSystemCommissionerPerControllerStorage
+ (id)logCategory;
- (BOOL)controller:(id)controller removeValueForKey:(id)key securityLevel:(unint64_t)level sharingType:(unint64_t)type;
- (BOOL)controller:(id)controller storeValue:(id)value forKey:(id)key securityLevel:(unint64_t)level sharingType:(unint64_t)type;
- (HMMTRSystemCommissionerPerControllerStorage)initWithQueue:(id)queue;
- (id)attributeDescriptions;
- (id)controller:(id)controller valueForKey:(id)key securityLevel:(unint64_t)level sharingType:(unint64_t)type;
@end

@implementation HMMTRSystemCommissionerPerControllerStorage

- (id)attributeDescriptions
{
  array = [MEMORY[0x277CBEB18] array];
  v3 = [array copy];

  return v3;
}

- (id)controller:(id)controller valueForKey:(id)key securityLevel:(unint64_t)level sharingType:(unint64_t)type
{
  v29 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  keyCopy = key;
  privateDataSource = [(HMMTRSystemCommissionerPerControllerStorage *)self privateDataSource];
  v11 = [privateDataSource objectForKeyedSubscript:keyCopy];

  if (v11)
  {
    v12 = MEMORY[0x277CCAAC8];
    v13 = MTRDeviceControllerStorageClasses();
    v22 = 0;
    v14 = [v12 unarchivedObjectOfClasses:v13 fromData:v11 error:&v22];
    v15 = v22;

    if (!v14)
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543874;
        v24 = v19;
        v25 = 2112;
        v26 = keyCopy;
        v27 = 2112;
        v28 = v15;
        _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive value for key %@ with error %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)controller:(id)controller storeValue:(id)value forKey:(id)key securityLevel:(unint64_t)level sharingType:(unint64_t)type
{
  v29 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  valueCopy = value;
  keyCopy = key;
  v22 = 0;
  v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:valueCopy requiringSecureCoding:1 error:&v22];
  v14 = v22;
  if (v13)
  {
    privateDataSource = [(HMMTRSystemCommissionerPerControllerStorage *)self privateDataSource];
    [privateDataSource setObject:v13 forKeyedSubscript:keyCopy];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543874;
      v24 = v19;
      v25 = 2112;
      v26 = keyCopy;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to archive requested value for key %@ with error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v13 != 0;
}

- (BOOL)controller:(id)controller removeValueForKey:(id)key securityLevel:(unint64_t)level sharingType:(unint64_t)type
{
  keyCopy = key;
  privateDataSource = [(HMMTRSystemCommissionerPerControllerStorage *)self privateDataSource];
  [privateDataSource removeObjectForKey:keyCopy];

  return 1;
}

- (HMMTRSystemCommissionerPerControllerStorage)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = HMMTRSystemCommissionerPerControllerStorage;
  v6 = [(HMMTRSystemCommissionerPerControllerStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_5159 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_5159, &__block_literal_global_5160);
  }

  v3 = logCategory__hmf_once_v3_5161;

  return v3;
}

uint64_t __58__HMMTRSystemCommissionerPerControllerStorage_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v3_5161 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end