@interface HMDCameraSnapshotLocal
+ (id)logCategory;
- (HMDAccessory)accessory;
- (HMDCameraSnapshotLocal)initWithSessionID:(id)a3 workQueue:(id)a4 accessory:(id)a5 delegate:(id)a6 snapshotRequestHandler:(id)a7;
- (HMDCameraSnapshotLocalDelegate)delegate;
- (id)logIdentifier;
- (void)_getSnapshot:(unint64_t)a3;
- (void)_handleSnapshotFile:(id)a3 error:(id)a4;
- (void)dealloc;
- (void)getSnapshot:(unint64_t)a3;
@end

@implementation HMDCameraSnapshotLocal

- (HMDCameraSnapshotLocalDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMDAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)_handleSnapshotFile:(id)a3 error:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraSnapshotLocal *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v16 = 138543874;
    v17 = v12;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Calling delegate that image %@ has been saved with error %@", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [(HMDCameraSnapshotLocal *)v10 delegate];
  if (objc_opt_respondsToSelector())
  {
    v14 = [(HMDCameraSnapshotLocal *)v10 sessionID];
    [v13 snapshotLocal:v10 didSaveSnapshotFile:v6 error:v7 sessionID:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_getSnapshot:(unint64_t)a3
{
  v5 = [(HMDCameraSnapshotLocal *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraSnapshotLocal *)self snapshotRequestHandler];
  v7 = [(HMDCameraSnapshotLocal *)self sessionID];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__HMDCameraSnapshotLocal__getSnapshot___block_invoke;
  v8[3] = &unk_279723A50;
  v8[4] = self;
  [v6 requestSnapshot:v7 streamingTierType:a3 completionHandler:v8];
}

- (void)getSnapshot:(unint64_t)a3
{
  v5 = [(HMDCameraSnapshotLocal *)self workQueue];
  dispatch_assert_queue_V2(v5);

  [(HMDCameraSnapshotLocal *)self _getSnapshot:a3];
}

- (id)logIdentifier
{
  v2 = [(HMDCameraSnapshotLocal *)self sessionID];
  v3 = [v2 description];

  return v3;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating HMDCameraSnapshotLocal", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = v4;
  v8.super_class = HMDCameraSnapshotLocal;
  [(HMDCameraSnapshotLocal *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDCameraSnapshotLocal)initWithSessionID:(id)a3 workQueue:(id)a4 accessory:(id)a5 delegate:(id)a6 snapshotRequestHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v21.receiver = self;
  v21.super_class = HMDCameraSnapshotLocal;
  v18 = [(HMDCameraSnapshotLocal *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_sessionID, a3);
    objc_storeWeak(&v19->_accessory, v15);
    objc_storeStrong(&v19->_workQueue, a4);
    objc_storeWeak(&v19->_delegate, v16);
    objc_storeStrong(&v19->_snapshotRequestHandler, a7);
  }

  return v19;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_19771 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_19771, &__block_literal_global_19772);
  }

  v3 = logCategory__hmf_once_v2_19773;

  return v3;
}

uint64_t __37__HMDCameraSnapshotLocal_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_19773;
  logCategory__hmf_once_v2_19773 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end