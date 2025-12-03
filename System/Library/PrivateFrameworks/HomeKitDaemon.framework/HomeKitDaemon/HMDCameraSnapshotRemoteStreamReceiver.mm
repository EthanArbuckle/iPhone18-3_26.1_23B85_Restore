@interface HMDCameraSnapshotRemoteStreamReceiver
+ (id)logCategory;
- (HMDCameraSnapshotRemoteStreamReceiver)initWithSessionID:(id)d workQueue:(id)queue accessory:(id)accessory delegate:(id)delegate uniqueIdentifier:(id)identifier snapshotRequestHandler:(id)handler residentMessageHandler:(id)messageHandler remoteDevice:(id)self0;
- (HMDCameraSnapshotRemoteStreamReceiverDelegate)delegate;
- (id)logIdentifier;
- (void)_callDidSaveImageDelegateWithSnapshotFile:(id)file error:(id)error;
- (void)_callDidStartImageCaptureDelegate;
- (void)_getSnapshot:(unint64_t)snapshot;
- (void)dealloc;
- (void)getSnapshot:(unint64_t)snapshot;
- (void)snapshotSendFailed:(id)failed;
- (void)streamReceiver:(id)receiver didReceiveFileAtURL:(id)l dateCaptured:(id)captured error:(id)error;
@end

@implementation HMDCameraSnapshotRemoteStreamReceiver

- (HMDCameraSnapshotRemoteStreamReceiverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)streamReceiver:(id)receiver didReceiveFileAtURL:(id)l dateCaptured:(id)captured error:(id)error
{
  v37 = *MEMORY[0x277D85DE8];
  receiverCopy = receiver;
  lCopy = l;
  capturedCopy = captured;
  errorCopy = error;
  workQueue = [(HMDCameraSnapshotReceiver *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  v18 = v17;
  if (!lCopy || !capturedCopy)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v25;
      v35 = 2112;
      v36 = errorCopy;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Image receive failed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    [(HMDCameraSnapshotRemoteStreamReceiver *)selfCopy _callDidSaveImageDelegateWithSnapshotFile:0 error:errorCopy];
    goto LABEL_10;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543362;
    v34 = v19;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Image receive has completed successfully", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
  path = [lCopy path];
  snapshotRequestHandler = [(HMDCameraSnapshotReceiver *)selfCopy snapshotRequestHandler];
  imageCacheDirectory = [snapshotRequestHandler imageCacheDirectory];
  v32 = 0;
  v23 = [HMDCameraSnapshotFile snapshotFileCopiedFromFilePath:path toDirectory:imageCacheDirectory dateCaptured:capturedCopy error:&v32];
  v24 = v32;

  if (v23)
  {
    [(HMDCameraSnapshotRemoteStreamReceiver *)selfCopy _callDidSaveImageDelegateWithSnapshotFile:v23 error:0];

LABEL_10:
    [(HMDCameraSnapshotReceiver *)selfCopy _sendConfirmationToResident:&__block_literal_global_33_226029];
    goto LABEL_11;
  }

  v27 = objc_autoreleasePoolPush();
  v28 = selfCopy;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543618;
    v34 = v30;
    v35 = 2112;
    v36 = v24;
    _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to create snapshot file from received file: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v27);
  v31 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1035];
  [(HMDCameraSnapshotRemoteStreamReceiver *)v28 _callDidSaveImageDelegateWithSnapshotFile:0 error:v31];

LABEL_11:
  v26 = *MEMORY[0x277D85DE8];
}

- (void)_callDidSaveImageDelegateWithSnapshotFile:(id)file error:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
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
    v16 = 138543874;
    v17 = v12;
    v18 = 2112;
    v19 = fileCopy;
    v20 = 2112;
    v21 = errorCopy;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Calling delegate that download of image %@ has completed with error %@", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  delegate = [(HMDCameraSnapshotRemoteStreamReceiver *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    sessionID = [(HMDCameraSnapshotReceiver *)selfCopy sessionID];
    [delegate snapshotStreamReceiver:selfCopy didSaveSnapshotFile:fileCopy error:errorCopy sessionID:sessionID];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_callDidStartImageCaptureDelegate
{
  workQueue = [(HMDCameraSnapshotReceiver *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  delegate = [(HMDCameraSnapshotRemoteStreamReceiver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    sessionID = [(HMDCameraSnapshotReceiver *)self sessionID];
    [delegate snapshotStreamReceiver:self didStartImageCaptureForSessionID:sessionID];
  }
}

- (void)snapshotSendFailed:(id)failed
{
  v17 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  workQueue = [(HMDCameraSnapshotReceiver *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v9;
    v15 = 2112;
    v16 = failedCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Snapshot send failed: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if (failedCopy)
  {
    v10 = failedCopy;
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1036];
  }

  v11 = v10;
  [(HMDCameraSnapshotRemoteStreamReceiver *)selfCopy _callDidSaveImageDelegateWithSnapshotFile:0 error:v10];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_getSnapshot:(unint64_t)snapshot
{
  workQueue = [(HMDCameraSnapshotReceiver *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  objc_initWeak(&location, self);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __54__HMDCameraSnapshotRemoteStreamReceiver__getSnapshot___block_invoke;
  v14 = &unk_278687FB0;
  objc_copyWeak(&v15, &location);
  [(HMDCameraSnapshotReceiver *)self _sendRequestWithTierType:snapshot toResident:&v11];
  v6 = [HMDCameraSnapshotIDSStreamReceiver alloc];
  v7 = [(HMDCameraSnapshotReceiver *)self sessionID:v11];
  workQueue2 = [(HMDCameraSnapshotReceiver *)self workQueue];
  remoteDevice = [(HMDCameraSnapshotReceiver *)self remoteDevice];
  v10 = [(HMDCameraSnapshotIDSStreamReceiver *)v6 initWithSessionID:v7 workQueue:workQueue2 delegate:self remoteDevice:remoteDevice];
  [(HMDCameraSnapshotRemoteStreamReceiver *)self setRelayReceiver:v10];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __54__HMDCameraSnapshotRemoteStreamReceiver__getSnapshot___block_invoke(uint64_t a1, void *a2, void *a3)
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
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Take snapshot relayed to resident has ended in error %@", &v15, 0x16u);
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

  [(HMDCameraSnapshotRemoteStreamReceiver *)self _getSnapshot:snapshot];
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting HMDCameraSnapshotRemoteStreamReceiver", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = selfCopy;
  v8.super_class = HMDCameraSnapshotRemoteStreamReceiver;
  [(HMDCameraSnapshotRemoteStreamReceiver *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDCameraSnapshotRemoteStreamReceiver)initWithSessionID:(id)d workQueue:(id)queue accessory:(id)accessory delegate:(id)delegate uniqueIdentifier:(id)identifier snapshotRequestHandler:(id)handler residentMessageHandler:(id)messageHandler remoteDevice:(id)self0
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
    return +[(HMDCameraSnapshotRemoteStreamReceiver *)v28];
  }

  v30.receiver = self;
  v30.super_class = HMDCameraSnapshotRemoteStreamReceiver;
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
  if (logCategory__hmf_once_t1_226069 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_226069, &__block_literal_global_226070);
  }

  v3 = logCategory__hmf_once_v2_226071;

  return v3;
}

void __52__HMDCameraSnapshotRemoteStreamReceiver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_226071;
  logCategory__hmf_once_v2_226071 = v1;
}

@end