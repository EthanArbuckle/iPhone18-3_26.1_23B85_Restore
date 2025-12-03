@interface HMDAuditHH2KeysForBackupOperation
+ (BOOL)shouldWeScheduleHH2KeyBackupOperation;
+ (id)logCategory;
+ (void)recordCurrentBackupRunToUserDefault;
+ (void)resetHH2KeyBackupOperationFromUserDefault;
- (BOOL)mainWithError:(id *)error;
- (id)logIdentifier;
@end

@implementation HMDAuditHH2KeysForBackupOperation

+ (id)logCategory
{
  if (logCategory__hmf_once_t14_191696 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t14_191696, &__block_literal_global_191697);
  }

  v3 = logCategory__hmf_once_v15_191698;

  return v3;
}

void __48__HMDAuditHH2KeysForBackupOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v15_191698;
  logCategory__hmf_once_v15_191698 = v1;
}

+ (void)resetHH2KeyBackupOperationFromUserDefault
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Going to reset the last backup run from user defaults", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults removeObjectForKey:@"HMDHH2BackUpKeyBackgroundOperationTimeStampKey"];

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)recordCurrentBackupRunToUserDefault
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Going to record the successful backup run", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v8 = [MEMORY[0x277CBEAA8] now];
  [standardUserDefaults setObject:v8 forKey:@"HMDHH2BackUpKeyBackgroundOperationTimeStampKey"];

  v9 = *MEMORY[0x277D85DE8];
}

+ (BOOL)shouldWeScheduleHH2KeyBackupOperation
{
  v28 = *MEMORY[0x277D85DE8];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults objectForKey:@"HMDHH2BackUpKeyBackgroundOperationTimeStampKey"];

  v5 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (!v7)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    v16 = 1;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    v18 = HMFGetLogIdentifier();
    v24 = 138543362;
    v25 = v18;
    v19 = "%{public}@Allowing the backup operation to run as there is no object stored inside user defaults";
    v20 = v13;
    v21 = 12;
LABEL_13:
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, v19, &v24, v21);

    goto LABEL_15;
  }

  v8 = [MEMORY[0x277CBEAA8] now];
  [v8 timeIntervalSinceDate:v7];
  v10 = v9;

  v11 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v13 = HMFGetOSLogHandle();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v10 >= 86400.0)
  {
    if (!v14)
    {
      v16 = 1;
      goto LABEL_15;
    }

    v18 = HMFGetLogIdentifier();
    v24 = 138543618;
    v25 = v18;
    v26 = 2112;
    v27 = v7;
    v19 = "%{public}@Allowing the backup operation to run as it was last run at %@";
    v16 = 1;
    v20 = v13;
    v21 = 22;
    goto LABEL_13;
  }

  if (v14)
  {
    v15 = HMFGetLogIdentifier();
    v24 = 138543618;
    v25 = v15;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Not allowing the backup operation to run as it was last run at %@", &v24, 0x16u);
  }

  v16 = 0;
LABEL_15:

  objc_autoreleasePoolPop(v11);
  v22 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)logIdentifier
{
  operationUUID = [(HMDBackgroundOperation *)self operationUUID];
  uUIDString = [operationUUID UUIDString];

  return uUIDString;
}

- (BOOL)mainWithError:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Going to make sure that we did back up our HH2 keys.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [objc_opt_class() recordCurrentBackupRunToUserDefault];
  systemStore = [MEMORY[0x277CFEC78] systemStore];
  v38 = 0;
  v9 = [systemStore allKeysForType:&unk_283E73A60 error:&v38];
  v10 = v38;
  v37 = v10;
  v11 = [systemStore allKeysForType:&unk_283E73A78 error:&v37];
  v12 = v37;

  v13 = [v9 count] == 0;
  v14 = objc_autoreleasePoolPush();
  v15 = selfCopy;
  v16 = HMFGetOSLogHandle();
  v17 = v16;
  if (v13)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v29;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@There are no HH2 keys. Nothing to backup.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
      *buf = 138543874;
      *&buf[4] = v18;
      *&buf[12] = 2112;
      *&buf[14] = v19;
      *&buf[22] = 2112;
      v42 = v9;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Found %@ HH2 keys in the list: %@{public}", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v20 = objc_autoreleasePoolPush();
    v21 = v15;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
      *buf = 138543874;
      *&buf[4] = v23;
      *&buf[12] = 2112;
      *&buf[14] = v24;
      *&buf[22] = 2112;
      v42 = v11;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Found %@ keys in back up list: %@{public}", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v42) = 0;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __51__HMDAuditHH2KeysForBackupOperation_mainWithError___block_invoke;
    v32[3] = &unk_27867E428;
    v33 = v11;
    v34 = v21;
    v35 = systemStore;
    v36 = buf;
    [v9 hmf_enumerateWithAutoreleasePoolUsingBlock:v32];
    if (*(*&buf[8] + 24) == 1)
    {
      v25 = objc_autoreleasePoolPush();
      v26 = v21;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *v39 = 138543362;
        v40 = v28;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Looks like we failed to back up at least one key. Will retry the back up operation again in next homed reboot.", v39, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
    }

    _Block_object_dispose(buf, 8);
  }

  v30 = *MEMORY[0x277D85DE8];
  return 1;
}

void __51__HMDAuditHH2KeysForBackupOperation_mainWithError___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __51__HMDAuditHH2KeysForBackupOperation_mainWithError___block_invoke_2;
  v20[3] = &unk_2786864C8;
  v5 = v3;
  v21 = v5;
  v6 = [v4 na_firstObjectPassingTest:v20];
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 40);
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v5 identifier];
      *buf = 138543618;
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@We already have the back up for the key: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    if (v10)
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v5 identifier];
      *buf = 138543618;
      v23 = v13;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Looks like we do not have back up for key : %@. Adding it into the list", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    if (([*(a1 + 48) savePairingIdentityToBackUpTable:v5] & 1) == 0)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = *(a1 + 40);
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v23 = v18;
        v24 = 2112;
        v25 = v5;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unable to back up the key : %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __51__HMDAuditHH2KeysForBackupOperation_mainWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  v5 = [v3 identifier];

  v6 = HMFEqualObjects();
  return v6;
}

@end