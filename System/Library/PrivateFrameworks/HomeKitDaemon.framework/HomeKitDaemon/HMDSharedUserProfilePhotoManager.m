@interface HMDSharedUserProfilePhotoManager
+ (id)logCategory;
- (HMDSharedUserProfilePhotoManager)initWithCloudTransform:(id)a3 delegate:(id)a4;
- (HMDSharedUserProfilePhotoManagerDelegate)delegate;
- (void)configure;
- (void)didInsertOrUpdateModel:(id)a3 changedProperties:(id)a4;
@end

@implementation HMDSharedUserProfilePhotoManager

- (HMDSharedUserProfilePhotoManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didInsertOrUpdateModel:(id)a3 changedProperties:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v28 = 138543618;
      v29 = v14;
      v30 = 2112;
      v31 = v10;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Received notification about modified shared profile photo: %@", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [v10 workingStoreHomeMember];
    v16 = objc_autoreleasePoolPush();
    v17 = v12;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v28 = 138543618;
      v29 = v19;
      v30 = 2112;
      v31 = v15;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@updating member %@", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v20 = [(HMDSharedUserProfilePhotoManager *)v17 delegate];
    v21 = [v15 idsMergeIdentifier];
    v22 = [v20 userWithMergeID:v21];

    if (!v22)
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v17;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v28 = 138543874;
        v29 = v26;
        v30 = 2112;
        v31 = 0;
        v32 = 2112;
        v33 = v15;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Found no user %@ for member: %@", &v28, 0x20u);
      }

      objc_autoreleasePoolPop(v23);
    }

    [v22 sendSharedUserProfileMetadataUpdatedMessage];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)configure
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [(HMDSharedUserProfilePhotoManager *)self cloudTransform];
  v4 = +[MKFCKSharedUserPhoto entity];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v3 registerCloudChangeListener:self forEntities:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (HMDSharedUserProfilePhotoManager)initWithCloudTransform:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDSharedUserProfilePhotoManager;
  v9 = [(HMDSharedUserProfilePhotoManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cloudTransform, a3);
    objc_storeWeak(&v10->_delegate, v8);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_127654 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_127654, &__block_literal_global_127655);
  }

  v3 = logCategory__hmf_once_v5_127656;

  return v3;
}

void __47__HMDSharedUserProfilePhotoManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_127656;
  logCategory__hmf_once_v5_127656 = v1;
}

@end