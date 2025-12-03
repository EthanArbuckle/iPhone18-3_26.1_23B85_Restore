@interface HMDCameraSnapshotRemoteRelayStream
+ (id)logCategory;
- (HMDCameraSnapshotRemoteRelayStream)initWithSessionID:(id)d workQueue:(id)queue sourceDevice:(id)device remoteDevice:(id)remoteDevice accessory:(id)accessory delegate:(id)delegate uniqueIdentifier:(id)identifier snapshotRequestHandler:(id)self0 residentMessageHandler:(id)self1;
- (HMDCameraSnapshotRemoteRelayStreamDelegate)delegate;
- (id)logIdentifier;
- (void)_callDidCompleteSendImageDelegate:(id)delegate;
- (void)_callDidStartCaptureImageDelegate;
- (void)_sendImageSendFailure:(id)failure;
- (void)dealloc;
- (void)getSnapshot:(unint64_t)snapshot;
- (void)snapshotRelayReceiver:(id)receiver didSaveSnapshotFile:(id)file error:(id)error sessionID:(id)d;
- (void)snapshotRelayReceiver:(id)receiver didStartImageCaptureForSessionID:(id)d;
- (void)snapshotSendFailed:(id)failed;
- (void)snapshotStreamSender:(id)sender didCompleteSendImage:(id)image sessionID:(id)d;
- (void)snapshotStreamSender:(id)sender didStartImageCaptureForSessionID:(id)d;
- (void)snapshotTransferComplete;
@end

@implementation HMDCameraSnapshotRemoteRelayStream

- (HMDCameraSnapshotRemoteRelayStreamDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)snapshotStreamSender:(id)sender didCompleteSendImage:(id)image sessionID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  imageCopy = image;
  dCopy = d;
  workQueue = [(HMDCameraSnapshotRemoteRelayStream *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v15;
    v19 = 2112;
    v20 = imageCopy;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Received delegate callback that the image transfer has completed with error %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  [(HMDCameraSnapshotRemoteRelayStream *)selfCopy _callDidCompleteSendImageDelegate:imageCopy];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)snapshotStreamSender:(id)sender didStartImageCaptureForSessionID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  dCopy = d;
  workQueue = [(HMDCameraSnapshotRemoteRelayStream *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Received delegate callback that the image transfer to watch has begun", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)snapshotRelayReceiver:(id)receiver didSaveSnapshotFile:(id)file error:(id)error sessionID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  receiverCopy = receiver;
  fileCopy = file;
  errorCopy = error;
  dCopy = d;
  workQueue = [(HMDCameraSnapshotRemoteRelayStream *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v21 = 138543874;
    v22 = v18;
    v23 = 2112;
    v24 = fileCopy;
    v25 = 2112;
    v26 = errorCopy;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Received delegate callback that the image %@ has been saved after relay with error %@", &v21, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  if (errorCopy)
  {
    [(HMDCameraSnapshotRemoteRelayStream *)selfCopy _sendImageSendFailure:errorCopy];
    [(HMDCameraSnapshotRemoteRelayStream *)selfCopy _callDidCompleteSendImageDelegate:errorCopy];
  }

  else
  {
    streamSender = [(HMDCameraSnapshotRemoteRelayStream *)selfCopy streamSender];
    [streamSender sendSnapshotAtPath:fileCopy];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)snapshotRelayReceiver:(id)receiver didStartImageCaptureForSessionID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  receiverCopy = receiver;
  dCopy = d;
  workQueue = [(HMDCameraSnapshotRemoteRelayStream *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Received delegate callback that image capture has started", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCameraSnapshotRemoteRelayStream *)selfCopy _callDidStartCaptureImageDelegate];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_sendImageSendFailure:(id)failure
{
  v34 = *MEMORY[0x277D85DE8];
  failureCopy = failure;
  workQueue = [(HMDCameraSnapshotRemoteRelayStream *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamSender = [(HMDCameraSnapshotRemoteRelayStream *)self streamSender];
  device = [streamSender device];
  remoteDestinationString = [device remoteDestinationString];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v31 = v12;
    v32 = 2112;
    v33 = remoteDestinationString;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Sending image send failure to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  streamSender2 = [(HMDCameraSnapshotRemoteRelayStream *)selfCopy streamSender];
  accessory = [streamSender2 accessory];
  home = [accessory home];
  homeManager = [home homeManager];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  streamSender3 = [(HMDCameraSnapshotRemoteRelayStream *)selfCopy streamSender];
  sessionID = [streamSender3 sessionID];
  v19SessionID = [sessionID sessionID];
  [dictionary setObject:v19SessionID forKeyedSubscript:@"kCameraSessionID"];

  if (failureCopy)
  {
    v21 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:failureCopy requiringSecureCoding:1 error:0];
    [dictionary setObject:v21 forKeyedSubscript:@"kCameraSessionError"];
  }

  v22 = [MEMORY[0x277D0F848] internalMessageWithName:@"kTakeSnapshotSendFailedNotificationKey" messagePayload:dictionary];
  [v22 setQualityOfService:33];
  v23 = [v22 copy];
  objc_initWeak(buf, selfCopy);
  streamSender4 = [(HMDCameraSnapshotRemoteRelayStream *)selfCopy streamSender];
  uniqueIdentifier = [streamSender4 uniqueIdentifier];
  workQueue2 = [(HMDCameraSnapshotRemoteRelayStream *)selfCopy workQueue];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __60__HMDCameraSnapshotRemoteRelayStream__sendImageSendFailure___block_invoke;
  v28[3] = &unk_278687FB0;
  objc_copyWeak(&v29, buf);
  [homeManager sendSecureMessage:v23 target:uniqueIdentifier userID:0 destination:remoteDestinationString responseQueue:workQueue2 responseHandler:v28];

  objc_destroyWeak(&v29);
  objc_destroyWeak(buf);

  v27 = *MEMORY[0x277D85DE8];
}

void __60__HMDCameraSnapshotRemoteRelayStream__sendImageSendFailure___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)_callDidCompleteSendImageDelegate:(id)delegate
{
  v17 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = delegateCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Calling delegate that transfer of image has completed with error %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  delegate = [(HMDCameraSnapshotRemoteRelayStream *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    streamSender = [(HMDCameraSnapshotRemoteRelayStream *)selfCopy streamSender];
    sessionID = [streamSender sessionID];
    [delegate snapshotRelayStream:selfCopy didCompleteSendImage:delegateCopy sessionID:sessionID];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_callDidStartCaptureImageDelegate
{
  v14 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraSnapshotRemoteRelayStream *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Calling delegate that capture of image has started", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  delegate = [(HMDCameraSnapshotRemoteRelayStream *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    relayReceiver = [(HMDCameraSnapshotRemoteRelayStream *)selfCopy relayReceiver];
    sessionID = [relayReceiver sessionID];
    [delegate snapshotRelayStream:selfCopy didStartImageCaptureForSessionID:sessionID];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)snapshotSendFailed:(id)failed
{
  failedCopy = failed;
  workQueue = [(HMDCameraSnapshotRemoteRelayStream *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  relayReceiver = [(HMDCameraSnapshotRemoteRelayStream *)self relayReceiver];
  [relayReceiver snapshotSendFailed:failedCopy];
}

- (void)snapshotTransferComplete
{
  v12 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraSnapshotRemoteRelayStream *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Snapshot transfer to remote receiver is complete", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  streamSender = [(HMDCameraSnapshotRemoteRelayStream *)selfCopy streamSender];
  [streamSender snapshotTransferComplete];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)getSnapshot:(unint64_t)snapshot
{
  v14 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraSnapshotRemoteRelayStream *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Getting the snapshot from local snapshot handler", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  relayReceiver = [(HMDCameraSnapshotRemoteRelayStream *)selfCopy relayReceiver];
  [relayReceiver getSnapshot:snapshot];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  streamSender = [(HMDCameraSnapshotRemoteRelayStream *)self streamSender];
  sessionID = [streamSender sessionID];
  v4 = [sessionID description];

  return v4;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting HMDCameraSnapshotRemoteRelayStream", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = selfCopy;
  v8.super_class = HMDCameraSnapshotRemoteRelayStream;
  [(HMDCameraSnapshotRemoteRelayStream *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDCameraSnapshotRemoteRelayStream)initWithSessionID:(id)d workQueue:(id)queue sourceDevice:(id)device remoteDevice:(id)remoteDevice accessory:(id)accessory delegate:(id)delegate uniqueIdentifier:(id)identifier snapshotRequestHandler:(id)self0 residentMessageHandler:(id)self1
{
  dCopy = d;
  obj = queue;
  queueCopy = queue;
  deviceCopy = device;
  remoteDeviceCopy = remoteDevice;
  accessoryCopy = accessory;
  delegateCopy = delegate;
  identifierCopy = identifier;
  handlerCopy = handler;
  messageHandlerCopy = messageHandler;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!queueCopy)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!deviceCopy)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!remoteDeviceCopy)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!accessoryCopy)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  if (!identifierCopy)
  {
LABEL_17:
    _HMFPreconditionFailure();
    goto LABEL_18;
  }

  if (!handlerCopy)
  {
LABEL_18:
    _HMFPreconditionFailure();
    goto LABEL_19;
  }

  if (!messageHandlerCopy)
  {
LABEL_19:
    v33 = _HMFPreconditionFailure();
    return +[(HMDCameraSnapshotRemoteRelayStream *)v33];
  }

  v24 = dCopy;
  v38.receiver = self;
  v38.super_class = HMDCameraSnapshotRemoteRelayStream;
  v25 = messageHandlerCopy;
  v26 = [(HMDCameraSnapshotRemoteRelayStream *)&v38 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_workQueue, obj);
    objc_storeWeak(&v27->_delegate, delegateCopy);
    v28 = [[HMDCameraSnapshotRemoteStreamSender alloc] initWithSessionID:v24 workQueue:queueCopy device:deviceCopy accessory:accessoryCopy delegate:v27 uniqueIdentifier:identifierCopy snapshotRequestHandler:handlerCopy];
    streamSender = v27->_streamSender;
    v27->_streamSender = v28;

    v30 = [[HMDCameraSnapshotRemoteRelayReceiver alloc] initWithSessionID:v24 workQueue:queueCopy accessory:accessoryCopy delegate:v27 uniqueIdentifier:identifierCopy snapshotRequestHandler:handlerCopy residentMessageHandler:v25 remoteDevice:remoteDeviceCopy];
    relayReceiver = v27->_relayReceiver;
    v27->_relayReceiver = v30;
  }

  return v27;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_112018 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_112018, &__block_literal_global_112019);
  }

  v3 = logCategory__hmf_once_v2_112020;

  return v3;
}

void __49__HMDCameraSnapshotRemoteRelayStream_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_112020;
  logCategory__hmf_once_v2_112020 = v1;
}

@end