@interface HMDCameraSnapshotRemoteRelayReceiver
+ (id)logCategory;
- (HMDCameraSnapshotRemoteRelayReceiver)initWithSessionID:(id)d workQueue:(id)queue accessory:(id)accessory delegate:(id)delegate uniqueIdentifier:(id)identifier snapshotRequestHandler:(id)handler residentMessageHandler:(id)messageHandler remoteDevice:(id)self0;
- (HMDCameraSnapshotRemoteRelayReceiverDelegate)delegate;
- (id)logIdentifier;
- (void)_callDidSaveImageDelegateWithSnapshotFile:(id)file error:(id)error;
- (void)_callDidStartImageCaptureDelegate;
- (void)_getSnapshot:(unint64_t)snapshot;
- (void)dealloc;
- (void)getSnapshot:(unint64_t)snapshot;
- (void)relayReceiver:(id)receiver didReceiveData:(id)data error:(id)error;
- (void)relayReceiverDidAcceptIDSInvitation:(id)invitation;
- (void)relayReceiverIDSSessionDidStart:(id)start;
- (void)snapshotSendFailed:(id)failed;
@end

@implementation HMDCameraSnapshotRemoteRelayReceiver

- (HMDCameraSnapshotRemoteRelayReceiverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)relayReceiverIDSSessionDidStart:(id)start
{
  workQueue = [(HMDCameraSnapshotReceiver *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  sessionID = [(HMDCameraSnapshotReceiver *)self sessionID];
  [sessionID markMilestoneFor:@"IDSSessionStartedOnReceiver"];
}

- (void)relayReceiverDidAcceptIDSInvitation:(id)invitation
{
  workQueue = [(HMDCameraSnapshotReceiver *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  sessionID = [(HMDCameraSnapshotReceiver *)self sessionID];
  [sessionID markMilestoneFor:@"IDSSessionInvitationReceived"];
}

- (void)relayReceiver:(id)receiver didReceiveData:(id)data error:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  receiverCopy = receiver;
  dataCopy = data;
  errorCopy = error;
  workQueue = [(HMDCameraSnapshotReceiver *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v15;
    v24 = 2112;
    v25 = errorCopy;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Image receive has completed with error: %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  if (dataCopy)
  {
    v16 = [HMDCameraSnapshotFile alloc];
    snapshotRequestHandler = [(HMDCameraSnapshotReceiver *)selfCopy snapshotRequestHandler];
    imageCacheDirectory = [snapshotRequestHandler imageCacheDirectory];
    v19 = [(HMDCameraSnapshotFile *)v16 initWithDirectory:imageCacheDirectory idsData:dataCopy error:0];

    if (!v19)
    {
      v20 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1035];

      errorCopy = v20;
    }
  }

  else
  {
    v19 = 0;
  }

  [(HMDCameraSnapshotRemoteRelayReceiver *)selfCopy _callDidSaveImageDelegateWithSnapshotFile:v19 error:errorCopy];
  [(HMDCameraSnapshotReceiver *)selfCopy _sendConfirmationToResident:&__block_literal_global_36_157857];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_callDidSaveImageDelegateWithSnapshotFile:(id)file error:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  errorCopy = error;
  workQueue = [(HMDCameraSnapshotReceiver *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v12;
    v18 = 2112;
    v19 = errorCopy;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Calling delegate that download of image has completed with error %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  delegate = [(HMDCameraSnapshotRemoteRelayReceiver *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    sessionID = [(HMDCameraSnapshotReceiver *)selfCopy sessionID];
    [delegate snapshotRelayReceiver:selfCopy didSaveSnapshotFile:fileCopy error:errorCopy sessionID:sessionID];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_callDidStartImageCaptureDelegate
{
  workQueue = [(HMDCameraSnapshotReceiver *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  delegate = [(HMDCameraSnapshotRemoteRelayReceiver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    sessionID = [(HMDCameraSnapshotReceiver *)self sessionID];
    [delegate snapshotRelayReceiver:self didStartImageCaptureForSessionID:sessionID];
  }
}

- (void)snapshotSendFailed:(id)failed
{
  v18 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  workQueue = [(HMDCameraSnapshotReceiver *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    sessionID = [(HMDCameraSnapshotReceiver *)selfCopy sessionID];
    v14 = 138543618;
    v15 = v9;
    v16 = 2112;
    v17 = sessionID;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Send failed on snapshot session %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = failedCopy;
  v12 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1036];
  }

  [(HMDCameraSnapshotRemoteRelayReceiver *)selfCopy _callDidSaveImageDelegateWithSnapshotFile:0 error:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_getSnapshot:(unint64_t)snapshot
{
  workQueue = [(HMDCameraSnapshotReceiver *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  objc_initWeak(&location, self);
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __53__HMDCameraSnapshotRemoteRelayReceiver__getSnapshot___block_invoke;
  v27 = &unk_278687FB0;
  objc_copyWeak(&v28, &location);
  [(HMDCameraSnapshotReceiver *)self _sendRequestWithTierType:snapshot toResident:&v24];
  v6 = [(HMDCameraSnapshotReceiver *)self sessionID:v24];
  hostProcessBundleIdentifier = [v6 hostProcessBundleIdentifier];

  if (hostProcessBundleIdentifier)
  {
    v8 = +[HMDApplicationVendorIDStore sharedStore];
    v9 = [v8 machOUUIDForApplicationBundleID:hostProcessBundleIdentifier];
  }

  else
  {
    v9 = 0;
  }

  v10 = [HMDCameraIDSSessionInviterDeviceVerifier alloc];
  sessionID = [(HMDCameraSnapshotReceiver *)self sessionID];
  v11SessionID = [sessionID sessionID];
  remoteDevice = [(HMDCameraSnapshotReceiver *)self remoteDevice];
  v14 = [(HMDCameraIDSSessionInviterDeviceVerifier *)v10 initWithSessionID:v11SessionID expectedInviter:remoteDevice];

  v15 = objc_alloc(MEMORY[0x277CCAD78]);
  sessionID2 = [(HMDCameraSnapshotReceiver *)self sessionID];
  v16SessionID = [sessionID2 sessionID];
  v18 = [v15 initWithUUIDString:v16SessionID];

  v19 = [HMDCameraSnapshotIDSRelayReceiver alloc];
  sessionID3 = [(HMDCameraSnapshotReceiver *)self sessionID];
  v20SessionID = [sessionID3 sessionID];
  workQueue2 = [(HMDCameraSnapshotReceiver *)self workQueue];
  v23 = [(HMDCameraSnapshotIDSRelayReceiver *)v19 initWithSessionID:v18 logIdentifier:v20SessionID workQueue:workQueue2 machOUUID:v9 sessionInviterDeviceVerifier:v14 delegate:self];
  [(HMDCameraSnapshotRemoteRelayReceiver *)self setRelayReceiver:v23];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

void __53__HMDCameraSnapshotRemoteRelayReceiver__getSnapshot___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    v11 = v10;
    if (v5)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v15 = 138543618;
        v16 = v12;
        v17 = 2112;
        v18 = v5;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Take snapshot relayed to resident has failed: %@", &v15, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      [v9 _callDidSaveImageDelegateWithSnapshotFile:0 error:v5];
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v15 = 138543362;
        v16 = v13;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Take snapshot relayed to resident succeeded", &v15, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      [v9 _callDidStartImageCaptureDelegate];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)getSnapshot:(unint64_t)snapshot
{
  workQueue = [(HMDCameraSnapshotReceiver *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDCameraSnapshotRemoteRelayReceiver *)self _getSnapshot:snapshot];
}

- (id)logIdentifier
{
  sessionID = [(HMDCameraSnapshotReceiver *)self sessionID];
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting HMDCameraSnapshotRemoteRelayReceiver", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = selfCopy;
  v8.super_class = HMDCameraSnapshotRemoteRelayReceiver;
  [(HMDCameraSnapshotRemoteRelayReceiver *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDCameraSnapshotRemoteRelayReceiver)initWithSessionID:(id)d workQueue:(id)queue accessory:(id)accessory delegate:(id)delegate uniqueIdentifier:(id)identifier snapshotRequestHandler:(id)handler residentMessageHandler:(id)messageHandler remoteDevice:(id)self0
{
  dCopy = d;
  queueCopy = queue;
  accessoryCopy = accessory;
  delegateCopy = delegate;
  identifierCopy = identifier;
  handlerCopy = handler;
  messageHandlerCopy = messageHandler;
  deviceCopy = device;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!queueCopy)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!accessoryCopy)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!identifierCopy)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!handlerCopy)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!messageHandlerCopy)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  v24 = deviceCopy;
  if (!deviceCopy)
  {
LABEL_17:
    v28 = _HMFPreconditionFailure();
    return +[(HMDCameraSnapshotRemoteRelayReceiver *)v28];
  }

  v30.receiver = self;
  v30.super_class = HMDCameraSnapshotRemoteRelayReceiver;
  v25 = [(HMDCameraSnapshotReceiver *)&v30 initWithSessionID:dCopy workQueue:queueCopy accessory:accessoryCopy uniqueIdentifier:identifierCopy snapshotRequestHandler:handlerCopy residentMessageHandler:messageHandlerCopy remoteDevice:deviceCopy];
  v26 = v25;
  if (v25)
  {
    objc_storeWeak(&v25->_delegate, delegateCopy);
  }

  return v26;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_157899 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_157899, &__block_literal_global_157900);
  }

  v3 = logCategory__hmf_once_v2_157901;

  return v3;
}

void __51__HMDCameraSnapshotRemoteRelayReceiver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_157901;
  logCategory__hmf_once_v2_157901 = v1;
}

@end