@interface HMDCameraSnapshotSender
+ (id)logCategory;
- (HMDAccessory)accessory;
- (HMDCameraSnapshotSender)initWithSessionID:(id)d workQueue:(id)queue device:(id)device accessory:(id)accessory uniqueIdentifier:(id)identifier;
- (id)logIdentifier;
- (void)_sendImageSendFailure:(id)failure;
@end

@implementation HMDCameraSnapshotSender

- (HMDAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)_sendImageSendFailure:(id)failure
{
  v30 = *MEMORY[0x277D85DE8];
  failureCopy = failure;
  workQueue = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  device = [(HMDCameraSnapshotSender *)self device];
  remoteDestinationString = [device remoteDestinationString];

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v11;
    v28 = 2112;
    v29 = remoteDestinationString;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Sending image send failure to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  accessory = [(HMDCameraSnapshotSender *)selfCopy accessory];
  home = [accessory home];
  homeManager = [home homeManager];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  sessionID = [(HMDCameraSnapshotSender *)selfCopy sessionID];
  v16SessionID = [sessionID sessionID];
  [dictionary setObject:v16SessionID forKeyedSubscript:@"kCameraSessionID"];

  if (failureCopy)
  {
    v18 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:failureCopy requiringSecureCoding:1 error:0];
    [dictionary setObject:v18 forKeyedSubscript:@"kCameraSessionError"];
  }

  v19 = [MEMORY[0x277D0F848] internalMessageWithName:@"kTakeSnapshotSendFailedNotificationKey" messagePayload:dictionary];
  [v19 setQualityOfService:33];
  v20 = [v19 copy];
  objc_initWeak(buf, selfCopy);
  uniqueIdentifier = [(HMDCameraSnapshotSender *)selfCopy uniqueIdentifier];
  workQueue2 = [(HMDCameraSnapshotSender *)selfCopy workQueue];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __49__HMDCameraSnapshotSender__sendImageSendFailure___block_invoke;
  v24[3] = &unk_278687FB0;
  objc_copyWeak(&v25, buf);
  [homeManager sendSecureMessage:v20 target:uniqueIdentifier userID:0 destination:remoteDestinationString responseQueue:workQueue2 responseHandler:v24];

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
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Received response for image send failure notification", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  v11 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  sessionID = [(HMDCameraSnapshotSender *)self sessionID];
  v3 = [sessionID description];

  return v3;
}

- (HMDCameraSnapshotSender)initWithSessionID:(id)d workQueue:(id)queue device:(id)device accessory:(id)accessory uniqueIdentifier:(id)identifier
{
  dCopy = d;
  queueCopy = queue;
  deviceCopy = device;
  accessoryCopy = accessory;
  identifierCopy = identifier;
  v22.receiver = self;
  v22.super_class = HMDCameraSnapshotSender;
  v18 = [(HMDCameraSnapshotSender *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_sessionID, d);
    objc_storeStrong(&v19->_device, device);
    objc_storeWeak(&v19->_accessory, accessoryCopy);
    objc_storeStrong(&v19->_workQueue, queue);
    objc_storeStrong(&v19->_uniqueIdentifier, identifier);
    v20 = +[HMDCameraPowerAssertionHandler sharedHandler];
    [v20 registerRemoteRequestHandler:v19 forSessionID:dCopy];
  }

  return v19;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_87294 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_87294, &__block_literal_global_87295);
  }

  v3 = logCategory__hmf_once_v1_87296;

  return v3;
}

void __38__HMDCameraSnapshotSender_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_87296;
  logCategory__hmf_once_v1_87296 = v1;
}

@end