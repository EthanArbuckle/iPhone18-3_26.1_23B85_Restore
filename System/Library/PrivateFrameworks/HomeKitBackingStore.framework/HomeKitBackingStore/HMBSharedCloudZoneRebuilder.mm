@interface HMBSharedCloudZoneRebuilder
+ (id)logCategory;
- (HMBCloudZone)cloudZone;
- (HMBSharedCloudZoneRebuilder)initWithCloudZone:(id)a3;
- (id)logIdentifier;
- (void)handleIdentityLost;
- (void)rebuild;
@end

@implementation HMBSharedCloudZoneRebuilder

- (HMBCloudZone)cloudZone
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudZone);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMBSharedCloudZoneRebuilder *)self cloudZone];
  v3 = [v2 zoneID];
  v4 = [v3 name];

  return v4;
}

- (void)handleIdentityLost
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D2C900]);
  [(HMBSharedCloudZoneRebuilder *)self setRebuildCompleteFuture:v3];

  v4 = [(HMBSharedCloudZoneRebuilder *)self rebuilderStatus];
  v5 = [v4 rebuildState];

  v6 = [[HMBCloudZoneRebuilderStatus alloc] initWithState:1 message:@"Lost key on shared zone."];
  [(HMBSharedCloudZoneRebuilder *)self setRebuilderStatus:v6];

  v7 = [(HMBSharedCloudZoneRebuilder *)self cloudZone];
  v8 = [(HMBSharedCloudZoneRebuilder *)self rebuilderStatus];
  v9 = [v8 rebuildState];

  if (v5 != v9)
  {
    v10 = [v7 delegate];
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v14;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_INFO, "%{public}@Informing delegate we have lost our identity.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    if (objc_opt_respondsToSelector())
    {
      v15 = [(HMBSharedCloudZoneRebuilder *)v12 rebuilderStatus];
      [v10 cloudZone:v7 didChangeRebuildStatus:v15];
    }
  }

  v16 = [v7 leaveCloudShareRequestingNewInvitationToken:1];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __49__HMBSharedCloudZoneRebuilder_handleIdentityLost__block_invoke;
  v22[3] = &unk_2786E13C0;
  v22[4] = self;
  v23 = v7;
  v17 = v7;
  v18 = [v16 addSuccessBlock:v22];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __49__HMBSharedCloudZoneRebuilder_handleIdentityLost__block_invoke_10;
  v21[3] = &unk_2786E13E8;
  v21[4] = self;
  v19 = [v16 addFailureBlock:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __49__HMBSharedCloudZoneRebuilder_handleIdentityLost__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v7;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully removed ourself from share.", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 40) cloudDatabase];
  v9 = [v8 delegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [*(a1 + 40) cloudZoneID];
    [v9 cloudDatabase:v8 didChangeManateeKeysForZoneWithID:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __49__HMBSharedCloudZoneRebuilder_handleIdentityLost__block_invoke_10(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unable to remove self from the share: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)rebuild
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_22AD27000, v5, OS_LOG_TYPE_ERROR, "%{public}@Unable to rebuild a shared zone.", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = *MEMORY[0x277D85DE8];
}

- (HMBSharedCloudZoneRebuilder)initWithCloudZone:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HMBSharedCloudZoneRebuilder;
  v5 = [(HMBSharedCloudZoneRebuilder *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_cloudZone, v4);
    v7 = [[HMBCloudZoneRebuilderStatus alloc] initWithState:7 message:@"Zone believed to be functional."];
    rebuilderStatus = v6->_rebuilderStatus;
    v6->_rebuilderStatus = v7;
    v9 = v7;

    v10 = [MEMORY[0x277D2C900] futureWithNoResult];
    rebuildCompleteFuture = v6->_rebuildCompleteFuture;
    v6->_rebuildCompleteFuture = v10;
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4, &__block_literal_global_3099);
  }

  v3 = logCategory__hmf_once_v5;

  return v3;
}

uint64_t __42__HMBSharedCloudZoneRebuilder_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5;
  logCategory__hmf_once_v5 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end