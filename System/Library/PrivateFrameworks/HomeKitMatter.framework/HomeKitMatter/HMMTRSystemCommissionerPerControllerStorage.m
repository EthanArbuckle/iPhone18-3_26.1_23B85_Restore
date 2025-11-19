@interface HMMTRSystemCommissionerPerControllerStorage
+ (id)logCategory;
- (BOOL)controller:(id)a3 removeValueForKey:(id)a4 securityLevel:(unint64_t)a5 sharingType:(unint64_t)a6;
- (BOOL)controller:(id)a3 storeValue:(id)a4 forKey:(id)a5 securityLevel:(unint64_t)a6 sharingType:(unint64_t)a7;
- (HMMTRSystemCommissionerPerControllerStorage)initWithQueue:(id)a3;
- (id)attributeDescriptions;
- (id)controller:(id)a3 valueForKey:(id)a4 securityLevel:(unint64_t)a5 sharingType:(unint64_t)a6;
@end

@implementation HMMTRSystemCommissionerPerControllerStorage

- (id)attributeDescriptions
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [v2 copy];

  return v3;
}

- (id)controller:(id)a3 valueForKey:(id)a4 securityLevel:(unint64_t)a5 sharingType:(unint64_t)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(HMMTRSystemCommissionerPerControllerStorage *)self privateDataSource];
  v11 = [v10 objectForKeyedSubscript:v9];

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
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543874;
        v24 = v19;
        v25 = 2112;
        v26 = v9;
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

- (BOOL)controller:(id)a3 storeValue:(id)a4 forKey:(id)a5 securityLevel:(unint64_t)a6 sharingType:(unint64_t)a7
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v22 = 0;
  v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v22];
  v14 = v22;
  if (v13)
  {
    v15 = [(HMMTRSystemCommissionerPerControllerStorage *)self privateDataSource];
    [v15 setObject:v13 forKeyedSubscript:v12];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543874;
      v24 = v19;
      v25 = 2112;
      v26 = v12;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to archive requested value for key %@ with error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v13 != 0;
}

- (BOOL)controller:(id)a3 removeValueForKey:(id)a4 securityLevel:(unint64_t)a5 sharingType:(unint64_t)a6
{
  v7 = a4;
  v8 = [(HMMTRSystemCommissionerPerControllerStorage *)self privateDataSource];
  [v8 removeObjectForKey:v7];

  return 1;
}

- (HMMTRSystemCommissionerPerControllerStorage)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMMTRSystemCommissionerPerControllerStorage;
  v6 = [(HMMTRSystemCommissionerPerControllerStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
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