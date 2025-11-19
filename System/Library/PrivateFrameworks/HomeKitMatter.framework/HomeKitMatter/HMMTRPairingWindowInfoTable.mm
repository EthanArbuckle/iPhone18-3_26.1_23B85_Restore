@interface HMMTRPairingWindowInfoTable
+ (id)logCategory;
- (HMMTRPairingWindowInfoTable)init;
- (id)retrieveAccessoryServerForPairingWindowWithSetupPayload:(id)a3 currentDate:(id)a4;
- (void)_clearExpiredEntriesWithCurrentDate:(id)a3;
- (void)registerPairingWindowWithSetupPayload:(id)a3 currentDate:(id)a4 duration:(double)a5 accessoryServer:(id)a6;
@end

@implementation HMMTRPairingWindowInfoTable

- (void)_clearExpiredEntriesWithCurrentDate:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v21 = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [(HMMTRPairingWindowInfoTable *)self table];
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      v8 = 0;
      do
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v23 + 1) + 8 * v8);
        v10 = [(HMMTRPairingWindowInfoTable *)self table];
        v11 = [v10 objectForKeyedSubscript:v9];

        v12 = [v11 accessoryServer];
        if (!v12 || ([v11 expirationDate], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "compare:", v22), v13, v14 == -1))
        {
          [v21 addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v6);
  }

  v15 = [(HMMTRPairingWindowInfoTable *)self table];
  [v15 removeObjectsForKeys:v21];

  if ([v21 count])
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v19;
      v29 = 2112;
      v30 = v21;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Expired setup payloads: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)retrieveAccessoryServerForPairingWindowWithSetupPayload:(id)a3 currentDate:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  [(HMMTRPairingWindowInfoTable *)self _clearExpiredEntriesWithCurrentDate:v7];
  v8 = [(HMMTRPairingWindowInfoTable *)self table];
  v9 = [v8 objectForKeyedSubscript:v6];

  v10 = [v9 accessoryServer];
  os_unfair_lock_unlock(&self->_lock);
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v17 = 138543874;
    v18 = v14;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Retrieves server with pairing window with setup payload: %@, server: %@", &v17, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)registerPairingWindowWithSetupPayload:(id)a3 currentDate:(id)a4 duration:(double)a5 accessoryServer:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v22 = 138544130;
    v23 = v16;
    v24 = 2112;
    v25 = v10;
    v26 = 2048;
    v27 = a5;
    v28 = 2112;
    v29 = v12;
    _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Registering pairing window with setup payload: %@, duration: %g, server: %@", &v22, 0x2Au);
  }

  objc_autoreleasePoolPop(v13);
  os_unfair_lock_lock(&v14->_lock);
  v17 = [HMMTRPairingWindowInfoTableEntry alloc];
  v18 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v11 sinceDate:a5];
  v19 = [(HMMTRPairingWindowInfoTableEntry *)v17 initWithAccessoryServer:v12 expirationDate:v18];
  v20 = [(HMMTRPairingWindowInfoTable *)v14 table];
  [v20 setObject:v19 forKeyedSubscript:v10];

  [(HMMTRPairingWindowInfoTable *)v14 _clearExpiredEntriesWithCurrentDate:v11];
  os_unfair_lock_unlock(&v14->_lock);

  v21 = *MEMORY[0x277D85DE8];
}

- (HMMTRPairingWindowInfoTable)init
{
  v7.receiver = self;
  v7.super_class = HMMTRPairingWindowInfoTable;
  v2 = [(HMMTRPairingWindowInfoTable *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x277CBEB38] dictionary];
    table = v3->_table;
    v3->_table = v4;
  }

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2, &__block_literal_global_4925);
  }

  v3 = logCategory__hmf_once_v3;

  return v3;
}

uint64_t __42__HMMTRPairingWindowInfoTable_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v3 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end