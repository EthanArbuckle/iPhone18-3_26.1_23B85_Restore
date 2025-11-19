@interface MKFUser
@end

@implementation MKFUser

BOOL __42___MKFUser_findUserActivityStatusForType___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 type];
  v7 = *(a1 + 32) == [v6 unsignedIntValue];

  *a4 = v7;
  return v7;
}

void __39___MKFUser_additionalModelsForSameUser__block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 idsMergeIdentifier];
  if (v4)
  {
    v5 = [*(a1 + 32) idsMergeIdentifier];
    v6 = [v4 isEqualToString:v5];

    if (v6)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 32);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = HMFGetLogIdentifier();
        v11 = *(a1 + 32);
        v12 = [v3 debugDescription];
        v40 = 138543874;
        v41 = v10;
        v42 = 2112;
        v43 = v11;
        v44 = 2112;
        v45 = v12;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@%@ matched additional user model with the same idsMergeIdentifier: %@", &v40, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
      [*(a1 + 40) addObject:v3];
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v40 = 138543618;
      v41 = v16;
      v42 = 2112;
      v43 = v3;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@User model missing idsMergeIdentifier: %@", &v40, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [v3 accountIdentifier];
    if (v17)
    {
      v18 = [*(a1 + 32) accountIdentifier];
      v19 = [v17 isEqual:v18];

      if (v19)
      {
        v20 = objc_autoreleasePoolPush();
        v21 = *(a1 + 32);
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v23 = HMFGetLogIdentifier();
          v24 = *(a1 + 32);
          v25 = [v3 debugDescription];
          v40 = 138543874;
          v41 = v23;
          v42 = 2112;
          v43 = v24;
          v44 = 2112;
          v45 = v25;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEBUG, "%{public}@%@ matched additional user model with the same accountIdentifier: %@", &v40, 0x20u);
        }

        objc_autoreleasePoolPop(v20);
        [*(a1 + 40) addObject:v3];
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = *(a1 + 32);
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        v40 = 138543618;
        v41 = v29;
        v42 = 2112;
        v43 = v3;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@User model missing accountIdentifier: %@", &v40, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      v30 = objc_autoreleasePoolPush();
      v31 = *(a1 + 32);
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        v40 = 138543618;
        v41 = v33;
        v42 = 2112;
        v43 = v3;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine if this user model is a duplicate: %@", &v40, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      v34 = objc_autoreleasePoolPush();
      v35 = *(a1 + 32);
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        v37 = HMFGetLogIdentifier();
        v38 = [v3 debugDescription];
        v40 = 138543618;
        v41 = v37;
        v42 = 2112;
        v43 = v38;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_DEBUG, "%{public}@%@", &v40, 0x16u);
      }

      objc_autoreleasePoolPop(v34);
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __23___MKFUser_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v26;
  logCategory__hmf_once_v26 = v1;
}

void __24___MKFUser_homeRelation__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"home.modelID == $HOMEMODELID"];
  v1 = homeRelation__hmf_once_v24;
  homeRelation__hmf_once_v24 = v0;
}

@end