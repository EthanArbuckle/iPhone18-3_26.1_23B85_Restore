@interface HMDForcePairVerifyAccessoryOperation
+ (id)logCategory;
- (BOOL)mainWithError:(id *)error;
- (id)logIdentifier;
@end

@implementation HMDForcePairVerifyAccessoryOperation

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_156546 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_156546, &__block_literal_global_156547);
  }

  v3 = logCategory__hmf_once_v5_156548;

  return v3;
}

void __51__HMDForcePairVerifyAccessoryOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_156548;
  logCategory__hmf_once_v5_156548 = v1;
}

- (id)logIdentifier
{
  operationUUID = [(HMDBackgroundOperation *)self operationUUID];
  uUIDString = [operationUUID UUIDString];

  return uUIDString;
}

- (BOOL)mainWithError:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  accessoryOperationStatus = [(HMDAccessoryBackgroundOperation *)self accessoryOperationStatus];
  v6 = objc_opt_class();
  accessoryUUID = [(HMDAccessoryBackgroundOperation *)self accessoryUUID];
  homeManager = [(HMDBackgroundOperation *)self homeManager];
  v9 = [v6 findAccessoryUsing:accessoryUUID homeManager:homeManager];

  v10 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = accessoryOperationStatus == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = !v13;
  if (v13)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      accessoryUUID2 = [(HMDAccessoryBackgroundOperation *)selfCopy accessoryUUID];
      accessoryIdentifier = [(HMDAccessoryBackgroundOperation *)selfCopy accessoryIdentifier];
      [(HMDAccessoryBackgroundOperation *)selfCopy homeUUID];
      v26 = v16;
      v23 = v22 = error;
      *buf = 138544130;
      v30 = v19;
      v31 = 2112;
      v32 = accessoryUUID2;
      v33 = 2112;
      v34 = accessoryIdentifier;
      v35 = 2112;
      v36 = v23;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unable to force Pair Verify with accessory : %@/%@, for Home: %@", buf, 0x2Au);

      error = v22;
      v16 = v26;
    }

    objc_autoreleasePoolPop(v16);
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    }
  }

  else if (accessoryOperationStatus != 1)
  {
    v15 = dispatch_get_global_queue(-32768, 0);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __54__HMDForcePairVerifyAccessoryOperation_mainWithError___block_invoke;
    v27[3] = &unk_27868A1D8;
    v27[4] = self;
    v28 = v12;
    [v28 establishLocalHAPConnectionWithQueue:v15 completion:v27];
  }

  v24 = *MEMORY[0x277D85DE8];
  return v14;
}

void __54__HMDForcePairVerifyAccessoryOperation_mainWithError___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) shortDescription];
    v10 = 138543874;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Force PV with accessory [%@] finished with error: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x277D85DE8];
}

@end