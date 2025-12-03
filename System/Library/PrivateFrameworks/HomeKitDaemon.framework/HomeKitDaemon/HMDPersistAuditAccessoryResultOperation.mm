@interface HMDPersistAuditAccessoryResultOperation
+ (id)logCategory;
- (BOOL)mainWithError:(id *)error;
- (id)initForRestrictedGuestWithAccessory:(id)accessory;
- (id)logIdentifier;
@end

@implementation HMDPersistAuditAccessoryResultOperation

- (id)logIdentifier
{
  operationUUID = [(HMDBackgroundOperation *)self operationUUID];
  uUIDString = [operationUUID UUIDString];

  return uUIDString;
}

- (BOOL)mainWithError:(id *)error
{
  v55 = *MEMORY[0x277D85DE8];
  accessoryOperationStatus = [(HMDAccessoryBackgroundOperation *)self accessoryOperationStatus];
  v5 = objc_opt_class();
  accessoryUUID = [(HMDAccessoryBackgroundOperation *)self accessoryUUID];
  homeManager = [(HMDBackgroundOperation *)self homeManager];
  v8 = [v5 findAccessoryUsing:accessoryUUID homeManager:homeManager];

  v9 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (!accessoryOperationStatus)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      accessoryUUID2 = [(HMDAccessoryBackgroundOperation *)selfCopy accessoryUUID];
      accessoryIdentifier = [(HMDAccessoryBackgroundOperation *)selfCopy accessoryIdentifier];
      homeUUID = [(HMDAccessoryBackgroundOperation *)selfCopy homeUUID];
      *buf = 138544130;
      *&buf[4] = v19;
      *&buf[12] = 2112;
      *&buf[14] = accessoryUUID2;
      *&buf[22] = 2112;
      v53 = accessoryIdentifier;
      LOWORD(v54) = 2112;
      *(&v54 + 2) = homeUUID;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unable to run audit operation on accessory : %@/%@, for Home: %@ due to invalid status", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v16);
    if (error)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (!(v11 | v14))
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      accessoryUUID3 = [(HMDAccessoryBackgroundOperation *)selfCopy2 accessoryUUID];
      accessoryIdentifier2 = [(HMDAccessoryBackgroundOperation *)selfCopy2 accessoryIdentifier];
      homeUUID2 = [(HMDAccessoryBackgroundOperation *)selfCopy2 homeUUID];
      *buf = 138544130;
      *&buf[4] = v26;
      *&buf[12] = 2112;
      *&buf[14] = accessoryUUID3;
      *&buf[22] = 2112;
      v53 = accessoryIdentifier2;
      LOWORD(v54) = 2112;
      *(&v54 + 2) = homeUUID2;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Unable to run audit operation on nil accessory : %@/%@, for Home: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v23);
    if (error)
    {
LABEL_18:
      [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      *error = v15 = 0;
      goto LABEL_23;
    }

LABEL_19:
    v15 = 0;
    goto LABEL_23;
  }

  if (accessoryOperationStatus == 1)
  {
    v15 = 1;
  }

  else
  {
    userData = [(HMDBackgroundOperation *)self userData];
    v31 = [userData objectForKeyedSubscript:@"HMDBackgroundOpsUpdateAuditTimeForRestrictedGuestKey"];
    bOOLValue = [v31 BOOLValue];

    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v53 = __Block_byref_object_copy__53753;
    *&v54 = __Block_byref_object_dispose__53754;
    *(&v54 + 1) = 0;
    v33 = +[HMDCoreData sharedInstance];
    home = [v12 home];
    uuid = [home uuid];
    v36 = [v33 contextWithHomeUUID:uuid];

    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __57__HMDPersistAuditAccessoryResultOperation_mainWithError___block_invoke;
    v41[3] = &unk_2786741E8;
    v42 = v12;
    selfCopy3 = self;
    v47 = bOOLValue;
    v45 = buf;
    v46 = &v48;
    v37 = v36;
    v44 = v37;
    [v37 unsafeSynchronousBlock:v41];
    if (error)
    {
      *error = *(*&buf[8] + 40);
    }

    v15 = *(v49 + 24);

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v48, 8);
  }

LABEL_23:

  v38 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

void __57__HMDPersistAuditAccessoryResultOperation_mainWithError___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uuid];
  v3 = [HMCContext findAccessoryWithModelID:v2];

  v4 = [v3 castIfHAPAccessory];
  v5 = [v3 castIfAirPlayAccessory];
  v6 = v5;
  if (v4 | v5)
  {
    if (*(a1 + 72) == 1)
    {
      v7 = [MEMORY[0x277CBEAA8] now];
      [v4 setLastPairingAuditTimeForRG:v7];
    }

    else
    {
      if (v4)
      {
        [v4 setNeedsPairingAudit:MEMORY[0x277CBEC28]];
        v7 = [MEMORY[0x277CBEAA8] now];
        v16 = v4;
      }

      else
      {
        if (!v5)
        {
LABEL_13:
          v17 = *(a1 + 48);
          v18 = *(*(a1 + 56) + 8);
          obj = *(v18 + 40);
          v19 = [v17 save:&obj];
          objc_storeStrong((v18 + 40), obj);
          *(*(*(a1 + 64) + 8) + 24) = v19;
          if (*(*(*(a1 + 64) + 8) + 24) != 1 || *(*(*(a1 + 56) + 8) + 40))
          {
            v20 = objc_autoreleasePoolPush();
            v21 = *(a1 + 40);
            v22 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = HMFGetLogIdentifier();
              v24 = *(*(*(a1 + 56) + 8) + 40);
              *buf = 138543874;
              v28 = v23;
              v29 = 2112;
              v30 = v4;
              v31 = 2112;
              v32 = v24;
              _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unable to save needsAudit & lastAuditTime on the accessory : %@, %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v20);
          }

          goto LABEL_18;
        }

        [v5 setNeedsPairingAudit:MEMORY[0x277CBEC28]];
        v7 = [MEMORY[0x277CBEAA8] now];
        v16 = v6;
      }

      [v16 setLastPairingAuditTime:v7];
    }

    goto LABEL_13;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 40);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 32) uuid];
    *buf = 138543618;
    v28 = v11;
    v29 = 2112;
    v30 = v12;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unable to find the mkfHAPAccessory or mkfAirPlayAccessory with model id: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

LABEL_18:
  v25 = *MEMORY[0x277D85DE8];
}

- (id)initForRestrictedGuestWithAccessory:(id)accessory
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = @"HMDBackgroundOpsUpdateAuditTimeForRestrictedGuestKey";
  v12[0] = MEMORY[0x277CBEC38];
  v4 = MEMORY[0x277CBEAC0];
  accessoryCopy = accessory;
  v6 = [v4 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v10.receiver = self;
  v10.super_class = HMDPersistAuditAccessoryResultOperation;
  v7 = [(HMDAccessoryBackgroundOperation *)&v10 initWithAccessory:accessoryCopy userData:v6];

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8_53768 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8_53768, &__block_literal_global_53769);
  }

  v3 = logCategory__hmf_once_v9_53770;

  return v3;
}

void __54__HMDPersistAuditAccessoryResultOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v9_53770;
  logCategory__hmf_once_v9_53770 = v1;
}

@end