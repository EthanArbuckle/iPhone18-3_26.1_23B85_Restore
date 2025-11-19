@interface HMDCameraSnapshotRemoteStreamReceiver
+ (id)logCategory;
- (HMDCameraSnapshotRemoteStreamReceiver)initWithSessionID:(id)a3 workQueue:(id)a4 accessory:(id)a5 delegate:(id)a6 uniqueIdentifier:(id)a7 snapshotRequestHandler:(id)a8 residentMessageHandler:(id)a9 remoteDevice:(id)a10;
- (HMDCameraSnapshotRemoteStreamReceiverDelegate)delegate;
- (id)logIdentifier;
- (void)_callDidSaveImageDelegateWithSnapshotFile:(id)a3 error:(id)a4;
- (void)_callDidStartImageCaptureDelegate;
- (void)_getSnapshot:(unint64_t)a3;
- (void)dealloc;
- (void)getSnapshot:(unint64_t)a3;
- (void)snapshotSendFailed:(id)a3;
- (void)streamReceiver:(id)a3 didReceiveFileAtURL:(id)a4 dateCaptured:(id)a5 error:(id)a6;
@end

@implementation HMDCameraSnapshotRemoteStreamReceiver

- (HMDCameraSnapshotRemoteStreamReceiverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)streamReceiver:(id)a3 didReceiveFileAtURL:(id)a4 dateCaptured:(id)a5 error:(id)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDCameraSnapshotReceiver *)self workQueue];
  dispatch_assert_queue_V2(v14);

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  v18 = v17;
  if (!v11 || !v12)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v25;
      v35 = 2112;
      v36 = v13;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Image receive failed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    [(HMDCameraSnapshotRemoteStreamReceiver *)v16 _callDidSaveImageDelegateWithSnapshotFile:0 error:v13];
    goto LABEL_10;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543362;
    v34 = v19;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Image receive has completed successfully", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
  v20 = [v11 path];
  v21 = [(HMDCameraSnapshotReceiver *)v16 snapshotRequestHandler];
  v22 = [v21 imageCacheDirectory];
  v32 = 0;
  v23 = [HMDCameraSnapshotFile snapshotFileCopiedFromFilePath:v20 toDirectory:v22 dateCaptured:v12 error:&v32];
  v24 = v32;

  if (v23)
  {
    [(HMDCameraSnapshotRemoteStreamReceiver *)v16 _callDidSaveImageDelegateWithSnapshotFile:v23 error:0];

LABEL_10:
    [(HMDCameraSnapshotReceiver *)v16 _sendConfirmationToResident:&__block_literal_global_33_150846];
    goto LABEL_11;
  }

  v27 = objc_autoreleasePoolPush();
  v28 = v16;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543618;
    v34 = v30;
    v35 = 2112;
    v36 = v24;
    _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to create snapshot file from received file: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v27);
  v31 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1035];
  [(HMDCameraSnapshotRemoteStreamReceiver *)v28 _callDidSaveImageDelegateWithSnapshotFile:0 error:v31];

LABEL_11:
  v26 = *MEMORY[0x277D85DE8];
}

- (void)_callDidSaveImageDelegateWithSnapshotFile:(id)a3 error:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraSnapshotReceiver *)self workQueue];
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
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Calling delegate that download of image %@ has completed with error %@", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [(HMDCameraSnapshotRemoteStreamReceiver *)v10 delegate];
  if (objc_opt_respondsToSelector())
  {
    v14 = [(HMDCameraSnapshotReceiver *)v10 sessionID];
    [v13 snapshotStreamReceiver:v10 didSaveSnapshotFile:v6 error:v7 sessionID:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_callDidStartImageCaptureDelegate
{
  v3 = [(HMDCameraSnapshotReceiver *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v5 = [(HMDCameraSnapshotRemoteStreamReceiver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(HMDCameraSnapshotReceiver *)self sessionID];
    [v5 snapshotStreamReceiver:self didStartImageCaptureForSessionID:v4];
  }
}

- (void)snapshotSendFailed:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraSnapshotReceiver *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v9;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Snapshot send failed: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if (v4)
  {
    v10 = v4;
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1036];
  }

  v11 = v10;
  [(HMDCameraSnapshotRemoteStreamReceiver *)v7 _callDidSaveImageDelegateWithSnapshotFile:0 error:v10];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_getSnapshot:(unint64_t)a3
{
  v5 = [(HMDCameraSnapshotReceiver *)self workQueue];
  dispatch_assert_queue_V2(v5);

  objc_initWeak(&location, self);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __54__HMDCameraSnapshotRemoteStreamReceiver__getSnapshot___block_invoke;
  v14 = &unk_279733B98;
  objc_copyWeak(&v15, &location);
  [(HMDCameraSnapshotReceiver *)self _sendRequestWithTierType:a3 toResident:&v11];
  v6 = [HMDCameraSnapshotIDSStreamReceiver alloc];
  v7 = [(HMDCameraSnapshotReceiver *)self sessionID:v11];
  v8 = [(HMDCameraSnapshotReceiver *)self workQueue];
  v9 = [(HMDCameraSnapshotReceiver *)self remoteDevice];
  v10 = [(HMDCameraSnapshotIDSStreamReceiver *)v6 initWithSessionID:v7 workQueue:v8 delegate:self remoteDevice:v9];
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
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Take snapshot relayed to resident has ended in error %@", &v15, 0x16u);
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
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Take snapshot relayed to resident succeeded", &v15, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      [v9 _callDidStartImageCaptureDelegate];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)getSnapshot:(unint64_t)a3
{
  v5 = [(HMDCameraSnapshotReceiver *)self workQueue];
  dispatch_assert_queue_V2(v5);

  [(HMDCameraSnapshotRemoteStreamReceiver *)self _getSnapshot:a3];
}

- (id)logIdentifier
{
  v2 = [(HMDCameraSnapshotReceiver *)self sessionID];
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
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting HMDCameraSnapshotRemoteStreamReceiver", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = v4;
  v8.super_class = HMDCameraSnapshotRemoteStreamReceiver;
  [(HMDCameraSnapshotRemoteStreamReceiver *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDCameraSnapshotRemoteStreamReceiver)initWithSessionID:(id)a3 workQueue:(id)a4 accessory:(id)a5 delegate:(id)a6 uniqueIdentifier:(id)a7 snapshotRequestHandler:(id)a8 residentMessageHandler:(id)a9 remoteDevice:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
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

  if (!v20)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!v21)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!v22)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  v24 = v23;
  if (!v23)
  {
LABEL_17:
    v28 = _HMFPreconditionFailure();
    return +[(HMDCameraSnapshotRemoteStreamReceiver *)v28];
  }

  v30.receiver = self;
  v30.super_class = HMDCameraSnapshotRemoteStreamReceiver;
  v25 = [(HMDCameraSnapshotReceiver *)&v30 initWithSessionID:v16 workQueue:v17 accessory:v18 uniqueIdentifier:v20 snapshotRequestHandler:v21 residentMessageHandler:v22 remoteDevice:v23];
  v26 = v25;
  if (v25)
  {
    objc_storeWeak(&v25->_delegate, v19);
  }

  return v26;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_150886 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_150886, &__block_literal_global_150887);
  }

  v3 = logCategory__hmf_once_v2_150888;

  return v3;
}

uint64_t __52__HMDCameraSnapshotRemoteStreamReceiver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_150888;
  logCategory__hmf_once_v2_150888 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end