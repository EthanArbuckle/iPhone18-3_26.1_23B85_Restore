@interface HMDCameraSnapshotReceiver
+ (id)logCategory;
- (HMDAccessory)accessory;
- (HMDCameraSnapshotReceiver)initWithSessionID:(id)a3 workQueue:(id)a4 accessory:(id)a5 uniqueIdentifier:(id)a6 snapshotRequestHandler:(id)a7 residentMessageHandler:(id)a8 remoteDevice:(id)a9;
- (id)logIdentifier;
- (void)_sendConfirmationToResident:(id)a3;
- (void)_sendMessageWithName:(id)a3 payload:(id)a4 responseHandler:(id)a5;
- (void)_sendRequestWithTierType:(unint64_t)a3 toResident:(id)a4;
@end

@implementation HMDCameraSnapshotReceiver

- (HMDAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDCameraSnapshotReceiver *)self sessionID];
  v3 = [v2 description];

  return v3;
}

- (void)_sendMessageWithName:(id)a3 payload:(id)a4 responseHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(HMDCameraSnapshotReceiver *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v16 = [(HMDCameraSnapshotReceiver *)self residentMessageHandler];
  v12 = [(HMDCameraSnapshotReceiver *)self sessionID];
  v13 = [(HMDCameraSnapshotReceiver *)self uniqueIdentifier];
  v14 = [(HMDCameraSnapshotReceiver *)self remoteDevice];
  v15 = [(HMDCameraSnapshotReceiver *)self workQueue];
  [v16 sendMessageWithName:v10 cameraSessionID:v12 payload:v9 target:v13 device:v14 responseQueue:v15 responseHandler:v8];
}

- (void)_sendConfirmationToResident:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraSnapshotReceiver *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [(HMDCameraSnapshotReceiver *)v7 sessionID];
    *buf = 138543618;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Informing the resident that image download task is completed for session ID %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDCameraSnapshotReceiver *)v7 sessionID];
  v12 = [v11 sessionID];
  v16 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];

  [(HMDCameraSnapshotReceiver *)v7 _sendMessageWithName:@"kTakeSnapshotRemoteReceivedKey" payload:v13 responseHandler:v4];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_sendRequestWithTierType:(unint64_t)a3 toResident:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HMDCameraSnapshotReceiver *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v21 = 138543362;
    v22 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Relaying request to resident to take image snapshot", &v21, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [MEMORY[0x277CBEB38] dictionary];
  v13 = [(HMDCameraSnapshotReceiver *)v9 sessionID];
  v14 = [v13 sessionID];
  [v12 setObject:v14 forKeyedSubscript:@"kCameraSessionID"];

  v15 = [(HMDCameraSnapshotReceiver *)v9 sessionID];
  v16 = [v15 hostProcessBundleIdentifier];
  [v12 setObject:v16 forKeyedSubscript:@"kCameraSessionApplicationID"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v12 setObject:v17 forKeyedSubscript:@"kCameraStreamingTierType"];

  v18 = [(HMDCameraSnapshotReceiver *)v9 sessionID];
  v19 = [v18 snapshotCharacteristicEventUUID];
  [v12 setObject:v19 forKeyedSubscript:@"kCameraProactiveSessionID"];

  [(HMDCameraSnapshotReceiver *)v9 _sendMessageWithName:@"kTakeSnapshotRemoteRequestKey" payload:v12 responseHandler:v6];
  v20 = *MEMORY[0x277D85DE8];
}

- (HMDCameraSnapshotReceiver)initWithSessionID:(id)a3 workQueue:(id)a4 accessory:(id)a5 uniqueIdentifier:(id)a6 snapshotRequestHandler:(id)a7 residentMessageHandler:(id)a8 remoteDevice:(id)a9
{
  v16 = a3;
  obj = a4;
  v17 = a4;
  v18 = a5;
  v30 = a6;
  v19 = a6;
  v31 = a7;
  v20 = a7;
  v32 = a8;
  v21 = a8;
  v22 = a9;
  if (!v16)
  {
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!v17)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!v18)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!v19)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!v20)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!v21)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  v23 = v22;
  if (!v22)
  {
LABEL_17:
    v27 = _HMFPreconditionFailure();
    return +[(HMDCameraSnapshotReceiver *)v27];
  }

  v33.receiver = self;
  v33.super_class = HMDCameraSnapshotReceiver;
  v24 = [(HMDCameraSnapshotReceiver *)&v33 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_sessionID, a3);
    objc_storeWeak(&v25->_accessory, v18);
    objc_storeStrong(&v25->_workQueue, obj);
    objc_storeStrong(&v25->_uniqueIdentifier, v30);
    objc_storeStrong(&v25->_snapshotRequestHandler, v31);
    objc_storeStrong(&v25->_residentMessageHandler, v32);
    objc_storeStrong(&v25->_remoteDevice, a9);
  }

  return v25;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_122308 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_122308, &__block_literal_global_122309);
  }

  v3 = logCategory__hmf_once_v3_122310;

  return v3;
}

uint64_t __40__HMDCameraSnapshotReceiver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_122310;
  logCategory__hmf_once_v3_122310 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end