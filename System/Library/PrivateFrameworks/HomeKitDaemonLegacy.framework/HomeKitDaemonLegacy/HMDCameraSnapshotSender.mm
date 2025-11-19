@interface HMDCameraSnapshotSender
+ (id)logCategory;
- (HMDAccessory)accessory;
- (HMDCameraSnapshotSender)initWithSessionID:(id)a3 workQueue:(id)a4 device:(id)a5 accessory:(id)a6 uniqueIdentifier:(id)a7;
- (id)logIdentifier;
- (void)_sendImageSendFailure:(id)a3;
@end

@implementation HMDCameraSnapshotSender

- (HMDAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)_sendImageSendFailure:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraSnapshotSender *)self device];
  v7 = [v6 remoteDestinationString];

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v11;
    v28 = 2112;
    v29 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Sending image send failure to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDCameraSnapshotSender *)v9 accessory];
  v13 = [v12 home];
  v14 = [v13 homeManager];

  v15 = [MEMORY[0x277CBEB38] dictionary];
  v16 = [(HMDCameraSnapshotSender *)v9 sessionID];
  v17 = [v16 sessionID];
  [v15 setObject:v17 forKeyedSubscript:@"kCameraSessionID"];

  if (v4)
  {
    v18 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:0];
    [v15 setObject:v18 forKeyedSubscript:@"kCameraSessionError"];
  }

  v19 = [MEMORY[0x277D0F848] internalMessageWithName:@"kTakeSnapshotSendFailedNotificationKey" messagePayload:v15];
  [v19 setQualityOfService:33];
  v20 = [v19 copy];
  objc_initWeak(buf, v9);
  v21 = [(HMDCameraSnapshotSender *)v9 uniqueIdentifier];
  v22 = [(HMDCameraSnapshotSender *)v9 workQueue];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __49__HMDCameraSnapshotSender__sendImageSendFailure___block_invoke;
  v24[3] = &unk_279733B98;
  objc_copyWeak(&v25, buf);
  [v14 sendSecureMessage:v20 target:v21 userID:0 destination:v7 responseQueue:v22 responseHandler:v24];

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);

  v23 = *MEMORY[0x277D85DE8];
}

void __49__HMDCameraSnapshotSender__sendImageSendFailure___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v10;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Received response for image send failure notification", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  v11 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  v2 = [(HMDCameraSnapshotSender *)self sessionID];
  v3 = [v2 description];

  return v3;
}

- (HMDCameraSnapshotSender)initWithSessionID:(id)a3 workQueue:(id)a4 device:(id)a5 accessory:(id)a6 uniqueIdentifier:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v22.receiver = self;
  v22.super_class = HMDCameraSnapshotSender;
  v18 = [(HMDCameraSnapshotSender *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_sessionID, a3);
    objc_storeStrong(&v19->_device, a5);
    objc_storeWeak(&v19->_accessory, v16);
    objc_storeStrong(&v19->_workQueue, a4);
    objc_storeStrong(&v19->_uniqueIdentifier, a7);
    v20 = +[HMDCameraPowerAssertionHandler sharedHandler];
    [v20 registerRemoteRequestHandler:v19 forSessionID:v13];
  }

  return v19;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_54645 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_54645, &__block_literal_global_54646);
  }

  v3 = logCategory__hmf_once_v1_54647;

  return v3;
}

uint64_t __38__HMDCameraSnapshotSender_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_54647;
  logCategory__hmf_once_v1_54647 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end