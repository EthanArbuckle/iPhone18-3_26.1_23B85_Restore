@interface HMDUserDefaults
+ (id)logCategory;
+ (id)protectedUserDefaults;
- (HMDUserDefaults)initWithSuiteName:(id)a3;
- (void)migrateProtectedKeys;
- (void)migrateProtectedKeys:(id)a3;
@end

@implementation HMDUserDefaults

- (void)migrateProtectedKeys:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v25;
    *&v7 = 138543618;
    v21 = v7;
    v22 = v5;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = [v5 objectForKey:{v11, v21}];
        if (v12)
        {
          v13 = objc_autoreleasePoolPush();
          v14 = self;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v16 = v8;
            v17 = v9;
            v19 = v18 = self;
            *buf = v21;
            v29 = v19;
            v30 = 2112;
            v31 = v11;
            _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Migrating key: %@", buf, 0x16u);

            self = v18;
            v9 = v17;
            v8 = v16;
            v5 = v22;
          }

          objc_autoreleasePoolPop(v13);
          [v5 removeObjectForKey:v11];
          [(HMDUserDefaults *)v14 setObject:v12 forKey:v11];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v8);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)migrateProtectedKeys
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"HMDHomeManagerHomesAwaitingHH2AutoAcceptKey";
  v5[1] = @"HMDHomeManagerSharedHomesNotYetMigratedKey";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  [(HMDUserDefaults *)self migrateProtectedKeys:v3];

  v4 = *MEMORY[0x277D85DE8];
}

- (HMDUserDefaults)initWithSuiteName:(id)a3
{
  v6.receiver = self;
  v6.super_class = HMDUserDefaults;
  v3 = [(HMDUserDefaults *)&v6 initWithSuiteName:a3];
  v4 = v3;
  if (v3)
  {
    [(HMDUserDefaults *)v3 migrateProtectedKeys];
  }

  return v4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_229740 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_229740, &__block_literal_global_11_229741);
  }

  v3 = logCategory__hmf_once_v4_229742;

  return v3;
}

void __30__HMDUserDefaults_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_229742;
  logCategory__hmf_once_v4_229742 = v1;
}

+ (id)protectedUserDefaults
{
  if (protectedUserDefaults__hmf_once_t0 != -1)
  {
    dispatch_once(&protectedUserDefaults__hmf_once_t0, &__block_literal_global_229747);
  }

  v3 = protectedUserDefaults__hmf_once_v1;

  return v3;
}

void __40__HMDUserDefaults_protectedUserDefaults__block_invoke()
{
  v0 = [[HMDUserDefaults alloc] initWithSuiteName:@"HomeKit"];
  v1 = protectedUserDefaults__hmf_once_v1;
  protectedUserDefaults__hmf_once_v1 = v0;
}

@end