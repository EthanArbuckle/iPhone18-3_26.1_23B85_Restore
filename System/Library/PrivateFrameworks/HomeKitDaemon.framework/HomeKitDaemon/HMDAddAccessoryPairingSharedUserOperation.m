@interface HMDAddAccessoryPairingSharedUserOperation
+ (id)logCategory;
- (BOOL)mainWithError:(id *)a3;
- (id)attributeDescriptions;
- (id)logIdentifier;
@end

@implementation HMDAddAccessoryPairingSharedUserOperation

- (id)logIdentifier
{
  v2 = [(HMDBackgroundOperation *)self operationUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)attributeDescriptions
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = HMDAddAccessoryPairingSharedUserOperation;
  v3 = [(HMDAccessoryBackgroundOperation *)&v12 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMDBackgroundOperation *)self userData];
  v6 = [v5 objectForKey:@"sharedUserUUIDKey"];
  v7 = [v4 initWithName:@"sharedUserUUID" value:v6];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v9 = [v3 arrayByAddingObjectsFromArray:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)mainWithError:(id *)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = HMDAddAccessoryPairingSharedUserOperation;
  v5 = [(HMDAddAccessoryPairingOperation *)&v35 mainWithError:?];
  v6 = [(HMDBackgroundOperation *)self userData];
  v7 = [v6 objectForKeyedSubscript:@"sharedUserUUIDKey"];

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v5)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [(HMDAccessoryBackgroundOperation *)v9 accessoryUUID];
      v14 = [(HMDAccessoryBackgroundOperation *)v9 accessoryIdentifier];
      *buf = 138544130;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      *&buf[22] = 2112;
      v37 = v13;
      *v38 = 2112;
      *&v38[2] = v14;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Successfully added pairing for the shared user: %@ on the accessory : %@/%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v37 = __Block_byref_object_copy__256343;
    *v38 = __Block_byref_object_dispose__256344;
    *&v38[8] = 0;
    v15 = +[HMDCoreData sharedInstance];
    v16 = [(HMDAccessoryBackgroundOperation *)v9 homeUUID];
    v17 = [v15 contextWithHomeUUID:v16];

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __59__HMDAddAccessoryPairingSharedUserOperation_mainWithError___block_invoke;
    v26[3] = &unk_278687D38;
    v26[4] = v9;
    v29 = buf;
    v27 = v7;
    v30 = &v31;
    v18 = v17;
    v28 = v18;
    [v18 unsafeSynchronousBlock:v26];
    if (a3)
    {
      *a3 = *(*&buf[8] + 40);
    }

    v19 = *(v32 + 24);

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v31, 8);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [(HMDAccessoryBackgroundOperation *)v9 accessoryUUID];
      v22 = [(HMDAccessoryBackgroundOperation *)v9 accessoryIdentifier];
      v23 = *a3;
      *buf = 138544386;
      *&buf[4] = v20;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      *&buf[22] = 2112;
      v37 = v21;
      *v38 = 2112;
      *&v38[2] = v22;
      *&v38[10] = 2112;
      *&v38[12] = v23;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unable to add pairing for shared user : %@ for accessory: %@/%@, error: %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v8);
    v19 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v19 & 1;
}

void __59__HMDAddAccessoryPairingSharedUserOperation_mainWithError___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessoryUUID];
  v3 = [HMCContext findAccessoryWithModelID:v2];

  v4 = [v3 castIfHAPAccessory];
  v5 = [v3 castIfAirPlayAccessory];
  if (v4 | v3)
  {
    v6 = [HMCContext findUserWithModelID:*(a1 + 40)];
    if (v6)
    {
      v7 = v6;
      v8 = v4;
      if (v4 || (v8 = v5) != 0)
      {
        [v8 addPairedUsersObject:v7];
      }

      v9 = *(a1 + 48);
      v10 = *(*(a1 + 56) + 8);
      obj = *(v10 + 40);
      v11 = [v9 save:&obj];
      objc_storeStrong((v10 + 40), obj);
      *(*(*(a1 + 64) + 8) + 24) = v11;
      if (*(*(*(a1 + 64) + 8) + 24) != 1 || *(*(*(a1 + 56) + 8) + 40))
      {
        v12 = objc_autoreleasePoolPush();
        v13 = *(a1 + 32);
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = HMFGetLogIdentifier();
          v16 = *(*(*(a1 + 56) + 8) + 40);
          *buf = 138543874;
          v36 = v15;
          v37 = 2112;
          v38 = v3;
          v39 = 2112;
          v40 = v16;
          _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to save after adding user pairings on accessory : %@, %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v12);
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = *(a1 + 32);
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v29 = *(a1 + 40);
        *buf = 138543618;
        v36 = v28;
        v37 = 2112;
        v38 = v29;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Unable to find the mkfUser with model id: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v30 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      v31 = *(*(a1 + 56) + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = v30;

      v7 = 0;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [*(a1 + 32) accessoryUUID];
      v22 = [*(a1 + 32) accessoryIdentifier];
      *buf = 138543874;
      v36 = v20;
      v37 = 2112;
      v38 = v21;
      v39 = 2112;
      v40 = v22;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to find the mkfHAPAccessory or mkfAccessory with model id: %@/%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v24 = *(*(a1 + 56) + 8);
    v7 = *(v24 + 40);
    *(v24 + 40) = v23;
  }

  v33 = *MEMORY[0x277D85DE8];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_256374 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_256374, &__block_literal_global_256375);
  }

  v3 = logCategory__hmf_once_v7_256376;

  return v3;
}

void __56__HMDAddAccessoryPairingSharedUserOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v7_256376;
  logCategory__hmf_once_v7_256376 = v1;
}

@end