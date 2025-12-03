@interface HMDRemoveAccessoryPairingSharedUserOperation
+ (id)logCategory;
- (BOOL)mainWithError:(id *)error;
- (id)logIdentifier;
@end

@implementation HMDRemoveAccessoryPairingSharedUserOperation

- (id)logIdentifier
{
  operationUUID = [(HMDBackgroundOperation *)self operationUUID];
  uUIDString = [operationUUID UUIDString];

  return uUIDString;
}

- (BOOL)mainWithError:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = HMDRemoveAccessoryPairingSharedUserOperation;
  v5 = [(HMDRemoveAccessoryPairingOperation *)&v34 mainWithError:?];
  userData = [(HMDBackgroundOperation *)self userData];
  v7 = [userData objectForKeyedSubscript:@"sharedUserUUIDKey"];

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v5)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      accessoryUUID = [(HMDAccessoryBackgroundOperation *)selfCopy accessoryUUID];
      accessoryIdentifier = [(HMDAccessoryBackgroundOperation *)selfCopy accessoryIdentifier];
      *buf = 138544130;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      *&buf[22] = 2112;
      v36 = accessoryUUID;
      LOWORD(v37) = 2112;
      *(&v37 + 2) = accessoryIdentifier;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Successfully removed pairing for the shared user: %@ on the accessory : %@/%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v36 = __Block_byref_object_copy__266419;
    *&v37 = __Block_byref_object_dispose__266420;
    *(&v37 + 1) = 0;
    v15 = +[HMDCoreData sharedInstance];
    homeUUID = [(HMDAccessoryBackgroundOperation *)selfCopy homeUUID];
    v17 = [v15 contextWithHomeUUID:homeUUID];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __62__HMDRemoveAccessoryPairingSharedUserOperation_mainWithError___block_invoke;
    v25[3] = &unk_278687D38;
    v25[4] = selfCopy;
    v28 = buf;
    v26 = v7;
    v29 = &v30;
    v18 = v17;
    v27 = v18;
    [v18 unsafeSynchronousBlock:v25];
    if (error)
    {
      *error = *(*&buf[8] + 40);
    }

    v19 = *(v31 + 24);

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v30, 8);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      accessoryUUID2 = [(HMDAccessoryBackgroundOperation *)selfCopy accessoryUUID];
      accessoryIdentifier2 = [(HMDAccessoryBackgroundOperation *)selfCopy accessoryIdentifier];
      *buf = 138544130;
      *&buf[4] = v20;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      *&buf[22] = 2112;
      v36 = accessoryUUID2;
      LOWORD(v37) = 2112;
      *(&v37 + 2) = accessoryIdentifier2;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unable to remove pairing for shared user : %@ for accessory: %@/%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    v19 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v19 & 1;
}

void __62__HMDRemoveAccessoryPairingSharedUserOperation_mainWithError___block_invoke(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessoryUUID];
  v3 = [HMCContext findAccessoryWithModelID:v2];

  v4 = [v3 castIfHAPAccessory];
  v5 = [v3 castIfAirPlayAccessory];
  v6 = v5 != 0;
  if (v4 | v5)
  {
    if (!*(a1 + 40) || ([HMCContext findUserWithModelID:?], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v18 = [*(a1 + 32) pairingIdentifierToRemove];
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 32);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v44 = v3;
        v22 = v45 = v18;
        v23 = v19;
        v24 = *(a1 + 40);
        v25 = [v4 pairingsToRemove];
        *buf = 138544130;
        v52 = v22;
        v53 = 2112;
        v54 = v24;
        v19 = v23;
        v55 = 2112;
        v56 = v45;
        v57 = 2112;
        v58 = v25;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Unable to find the mkfUser with model id: %@, %@, [%@]", buf, 0x2Au);

        v3 = v44;
        v18 = v45;
      }

      objc_autoreleasePoolPop(v19);
      if (v4)
      {
        v26 = [v4 pairingsToRemove];
        v6 = 1;
      }

      else
      {
        v26 = [v5 pairingsToRemove];
      }

      v27 = [v26 mutableCopy];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __62__HMDRemoveAccessoryPairingSharedUserOperation_mainWithError___block_invoke_30;
      v48[3] = &unk_278687D10;
      v28 = v18;
      v49 = v28;
      v29 = v27;
      v50 = v29;
      [v26 hmf_enumerateWithAutoreleasePoolUsingBlock:v48];
      if (v6)
      {
        if (v4)
        {
          v30 = v4;
        }

        else
        {
          v30 = v5;
        }

        [v30 setPairingsToRemove:v29];
      }

      v31 = objc_autoreleasePoolPush();
      v32 = *(a1 + 32);
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v34 = v46 = v31;
        *buf = 138543874;
        v52 = v34;
        v53 = 2112;
        v54 = v28;
        v55 = 2112;
        v56 = v29;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Removed pairing : [%@], new list: %@", buf, 0x20u);

        v31 = v46;
      }

      objc_autoreleasePoolPop(v31);
      v8 = 0;
      goto LABEL_25;
    }

    v8 = v7;
    if (v4)
    {
      v9 = v4;
    }

    else
    {
      if (!v5)
      {
LABEL_25:
        v35 = *(a1 + 48);
        v36 = *(*(a1 + 56) + 8);
        obj = *(v36 + 40);
        v37 = [v35 save:&obj];
        objc_storeStrong((v36 + 40), obj);
        *(*(*(a1 + 64) + 8) + 24) = v37;
        if (*(*(*(a1 + 64) + 8) + 24) != 1 || *(*(*(a1 + 56) + 8) + 40))
        {
          v38 = objc_autoreleasePoolPush();
          v39 = *(a1 + 32);
          v40 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v41 = HMFGetLogIdentifier();
            v42 = *(*(*(a1 + 56) + 8) + 40);
            *buf = 138543874;
            v52 = v41;
            v53 = 2112;
            v54 = v3;
            v55 = 2112;
            v56 = v42;
            _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Unable to save after removing user pairings on the accessory : %@, %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v38);
        }

        goto LABEL_30;
      }

      v9 = v5;
    }

    [v9 removePairedUsersObject:v8];
    goto LABEL_25;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [*(a1 + 32) accessoryUUID];
    v15 = [*(a1 + 32) accessoryIdentifier];
    *buf = 138543874;
    v52 = v13;
    v53 = 2112;
    v54 = v14;
    v55 = 2112;
    v56 = v15;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to find the mkfHAPAccessory or mkfAirPlayAccessory with model id: %@/%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  v17 = *(*(a1 + 56) + 8);
  v8 = *(v17 + 40);
  *(v17 + 40) = v16;
LABEL_30:

  v43 = *MEMORY[0x277D85DE8];
}

void __62__HMDRemoveAccessoryPairingSharedUserOperation_mainWithError___block_invoke_30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v3 identifier];
  LOBYTE(v4) = HMFEqualObjects();

  if ((v4 & 1) == 0)
  {
    [*(a1 + 40) addObject:v6];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_266454 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_266454, &__block_literal_global_266455);
  }

  v3 = logCategory__hmf_once_v8_266456;

  return v3;
}

void __59__HMDRemoveAccessoryPairingSharedUserOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v8_266456;
  logCategory__hmf_once_v8_266456 = v1;
}

@end