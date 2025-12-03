@interface HMDCameraSnapshotRemoteRelaySender
+ (id)logCategory;
- (HMDCameraSnapshotRemoteRelaySender)initWithSessionID:(id)d workQueue:(id)queue device:(id)device accessory:(id)accessory delegate:(id)delegate uniqueIdentifier:(id)identifier snapshotRequestHandler:(id)handler;
- (HMDCameraSnapshotRemoteRelaySenderDelegate)delegate;
- (id)logIdentifier;
- (void)_callDidCompleteSendImageDelegate:(id)delegate;
- (void)_callDidSaveSnapshotFileDelegate:(id)delegate;
- (void)_callDidStartCaptureImageDelegate;
- (void)dealloc;
- (void)getSnapshot:(unint64_t)snapshot;
- (void)relayInitiator:(id)initiator didEndIDSSessionWithError:(id)error;
- (void)relayInitiator:(id)initiator didSendData:(id)data;
- (void)relayInitiatorDidSendDataSuccessfully:(id)successfully;
- (void)relayInitiatorDidSendIDSInvitation:(id)invitation;
- (void)relayInitiatorDidStartDataSend:(id)send;
- (void)relayInitiatorIDSSessionDidStart:(id)start;
- (void)snapshotLocal:(id)local didSaveSnapshotFile:(id)file error:(id)error sessionID:(id)d;
- (void)snapshotTransferComplete;
@end

@implementation HMDCameraSnapshotRemoteRelaySender

- (HMDCameraSnapshotRemoteRelaySenderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)relayInitiatorDidSendIDSInvitation:(id)invitation
{
  workQueue = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  sessionID = [(HMDCameraSnapshotSender *)self sessionID];
  [sessionID markMilestoneFor:@"IDSSessionInvitationSent"];
}

- (void)relayInitiator:(id)initiator didSendData:(id)data
{
  dataCopy = data;
  workQueue = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDCameraSnapshotSender *)self _sendImageSendFailure:dataCopy];
  [(HMDCameraSnapshotRemoteRelaySender *)self _callDidCompleteSendImageDelegate:dataCopy];
}

- (void)relayInitiatorDidStartDataSend:(id)send
{
  workQueue = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(workQueue);
}

- (void)relayInitiatorIDSSessionDidStart:(id)start
{
  workQueue = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  sessionID = [(HMDCameraSnapshotSender *)self sessionID];
  [sessionID markMilestoneFor:@"IDSSessionStartedOnInitiator"];
}

- (void)relayInitiatorDidSendDataSuccessfully:(id)successfully
{
  workQueue = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  sessionID = [(HMDCameraSnapshotSender *)self sessionID];
  [sessionID markMilestoneFor:@"IDSTransferSentImage"];
}

- (void)relayInitiator:(id)initiator didEndIDSSessionWithError:(id)error
{
  v4 = [(HMDCameraSnapshotSender *)self workQueue:initiator];
  dispatch_assert_queue_V2(v4);
}

- (void)snapshotLocal:(id)local didSaveSnapshotFile:(id)file error:(id)error sessionID:(id)d
{
  v34 = *MEMORY[0x277D85DE8];
  localCopy = local;
  fileCopy = file;
  errorCopy = error;
  dCopy = d;
  workQueue = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (errorCopy)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v30 = 138543618;
      v31 = v18;
      v32 = 2112;
      v33 = errorCopy;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Snapshot local capture has ended in %@", &v30, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    [(HMDCameraSnapshotSender *)selfCopy _sendImageSendFailure:errorCopy];
    [(HMDCameraSnapshotRemoteRelaySender *)selfCopy _callDidCompleteSendImageDelegate:errorCopy];
  }

  else
  {
    idsData = [fileCopy idsData];
    if (idsData)
    {
      [(HMDCameraSnapshotRemoteRelaySender *)self _callDidSaveSnapshotFileDelegate:fileCopy];
      v20 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v30 = 138543618;
        v31 = v23;
        v32 = 2112;
        v33 = fileCopy;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Scheduling the transfer of file %@ through IDS", &v30, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      relayInitiator = [(HMDCameraSnapshotRemoteRelaySender *)selfCopy2 relayInitiator];
      [relayInitiator sendData:idsData];
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v30 = 138543362;
        v31 = v28;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode snapshot file to send over IDS", &v30, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      [(HMDCameraSnapshotSender *)selfCopy3 _sendImageSendFailure:0];
      [(HMDCameraSnapshotRemoteRelaySender *)selfCopy3 _callDidCompleteSendImageDelegate:0];
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_callDidSaveSnapshotFileDelegate:(id)delegate
{
  v16 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  workQueue = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling delegate that snapshot file has been saved", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  delegate = [(HMDCameraSnapshotRemoteRelaySender *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    snapshotLocal = [(HMDCameraSnapshotRemoteRelaySender *)selfCopy snapshotLocal];
    sessionID = [snapshotLocal sessionID];
    [delegate snapshotRelaySender:selfCopy didSaveSnapshotFile:delegateCopy sessionID:sessionID];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_callDidCompleteSendImageDelegate:(id)delegate
{
  v18 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  workQueue = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v9;
    v16 = 2112;
    v17 = delegateCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling delegate that transfer of image has completed with error %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  delegate = [(HMDCameraSnapshotRemoteRelaySender *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    snapshotLocal = [(HMDCameraSnapshotRemoteRelaySender *)selfCopy snapshotLocal];
    sessionID = [snapshotLocal sessionID];
    [delegate snapshotRelaySender:selfCopy didCompleteSendImage:delegateCopy sessionID:sessionID];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_callDidStartCaptureImageDelegate
{
  v14 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Calling delegate that capture of image has started", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  delegate = [(HMDCameraSnapshotRemoteRelaySender *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    snapshotLocal = [(HMDCameraSnapshotRemoteRelaySender *)selfCopy snapshotLocal];
    sessionID = [snapshotLocal sessionID];
    [delegate snapshotRelaySender:selfCopy didStartImageCaptureForSessionID:sessionID];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)snapshotTransferComplete
{
  v11 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Snapshot transfer to remote receiver is complete", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDCameraSnapshotRemoteRelaySender *)selfCopy _callDidCompleteSendImageDelegate:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)getSnapshot:(unint64_t)snapshot
{
  v15 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Getting the snapshot from local snapshot handler", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  relayInitiator = [(HMDCameraSnapshotRemoteRelaySender *)selfCopy relayInitiator];
  [relayInitiator sendIDSInvitation];

  snapshotLocal = [(HMDCameraSnapshotRemoteRelaySender *)selfCopy snapshotLocal];
  [snapshotLocal getSnapshot:snapshot];

  [(HMDCameraSnapshotRemoteRelaySender *)selfCopy _callDidStartCaptureImageDelegate];
  v12 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  sessionID = [(HMDCameraSnapshotSender *)self sessionID];
  v3 = [sessionID description];

  return v3;
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
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting HMDCameraSnapshotRemoteRelaySender", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = selfCopy;
  v8.super_class = HMDCameraSnapshotRemoteRelaySender;
  [(HMDCameraSnapshotRemoteRelaySender *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDCameraSnapshotRemoteRelaySender)initWithSessionID:(id)d workQueue:(id)queue device:(id)device accessory:(id)accessory delegate:(id)delegate uniqueIdentifier:(id)identifier snapshotRequestHandler:(id)handler
{
  dCopy = d;
  queueCopy = queue;
  deviceCopy = device;
  accessoryCopy = accessory;
  delegateCopy = delegate;
  handlerCopy = handler;
  v33.receiver = self;
  v33.super_class = HMDCameraSnapshotRemoteRelaySender;
  v21 = [(HMDCameraSnapshotSender *)&v33 initWithSessionID:dCopy workQueue:queueCopy device:deviceCopy accessory:accessoryCopy uniqueIdentifier:identifier];
  v22 = v21;
  if (v21)
  {
    objc_storeWeak(&v21->_delegate, delegateCopy);
    v23 = [[HMDCameraSnapshotLocal alloc] initWithSessionID:dCopy workQueue:queueCopy accessory:accessoryCopy delegate:v22 snapshotRequestHandler:handlerCopy];
    snapshotLocal = v22->_snapshotLocal;
    v22->_snapshotLocal = v23;

    v25 = objc_alloc(MEMORY[0x277CCAD78]);
    sessionID = [dCopy sessionID];
    v27 = [v25 initWithUUIDString:sessionID];

    v28 = [HMDCameraSnapshotIDSRelayInitiator alloc];
    v29 = [dCopy description];
    v30 = [(HMDCameraSnapshotIDSRelayInitiator *)v28 initWithSessionID:v27 logIdentifier:v29 workQueue:queueCopy device:deviceCopy delegate:v22];
    relayInitiator = v22->_relayInitiator;
    v22->_relayInitiator = v30;
  }

  return v22;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_155242 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_155242, &__block_literal_global_155243);
  }

  v3 = logCategory__hmf_once_v2_155244;

  return v3;
}

uint64_t __49__HMDCameraSnapshotRemoteRelaySender_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_155244;
  logCategory__hmf_once_v2_155244 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end