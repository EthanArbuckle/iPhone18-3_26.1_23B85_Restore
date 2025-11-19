@interface HMDCameraSnapshotRemoteStreamSender
+ (id)logCategory;
- (HMDCameraSnapshotRemoteStreamSender)initWithSessionID:(id)a3 workQueue:(id)a4 device:(id)a5 accessory:(id)a6 delegate:(id)a7 uniqueIdentifier:(id)a8 snapshotRequestHandler:(id)a9;
- (HMDCameraSnapshotRemoteStreamSenderDelegate)delegate;
- (id)logIdentifier;
- (void)_callDidCompleteSendImageDelegate:(id)a3;
- (void)_callDidStartCaptureImageDelegate;
- (void)dealloc;
- (void)getSnapshot:(unint64_t)a3;
- (void)sendSnapshotAtPath:(id)a3;
- (void)snapshotLocal:(id)a3 didSaveSnapshotFile:(id)a4 error:(id)a5 sessionID:(id)a6;
- (void)snapshotTransferComplete;
- (void)streamInitiator:(id)a3 didFailToSendFileWithError:(id)a4;
@end

@implementation HMDCameraSnapshotRemoteStreamSender

- (HMDCameraSnapshotRemoteStreamSenderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)streamInitiator:(id)a3 didFailToSendFileWithError:(id)a4
{
  v6 = a4;
  v5 = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(v5);

  [(HMDCameraSnapshotSender *)self _sendImageSendFailure:v6];
  [(HMDCameraSnapshotRemoteStreamSender *)self _callDidCompleteSendImageDelegate:v6];
}

- (void)snapshotLocal:(id)a3 didSaveSnapshotFile:(id)a4 error:(id)a5 sessionID:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(v14);

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v18)
    {
      v19 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v19;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Snapshot local capture has ended in %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    [(HMDCameraSnapshotSender *)v16 _sendImageSendFailure:v12];
    [(HMDCameraSnapshotRemoteStreamSender *)v16 _callDidCompleteSendImageDelegate:v12];
  }

  else
  {
    if (v18)
    {
      v20 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v20;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Scheduling the transfer of file %@ through IDS", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v21 = [(HMDCameraSnapshotRemoteStreamSender *)v16 streamInitiator];
    [v21 sendFile:v11];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_callDidCompleteSendImageDelegate:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v9;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling delegate that transfer of image has completed with error %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraSnapshotRemoteStreamSender *)v7 delegate];
  if (objc_opt_respondsToSelector())
  {
    v11 = [(HMDCameraSnapshotRemoteStreamSender *)v7 snapshotLocal];
    v12 = [v11 sessionID];
    [v10 snapshotStreamSender:v7 didCompleteSendImage:v4 sessionID:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_callDidStartCaptureImageDelegate
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Calling delegate that capture of image has started", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDCameraSnapshotRemoteStreamSender *)v5 delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [(HMDCameraSnapshotRemoteStreamSender *)v5 snapshotLocal];
    v10 = [v9 sessionID];
    [v8 snapshotStreamSender:v5 didStartImageCaptureForSessionID:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)snapshotTransferComplete
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Snapshot transfer to remote receiver is complete", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDCameraSnapshotRemoteStreamSender *)v5 _callDidCompleteSendImageDelegate:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendSnapshotAtPath:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Sending the snapshot %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraSnapshotRemoteStreamSender *)v7 streamInitiator];
  [v10 sendFile:v4];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)getSnapshot:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Getting the snapshot from local snapshot handler", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraSnapshotRemoteStreamSender *)v7 snapshotLocal];
  [v10 getSnapshot:a3];

  [(HMDCameraSnapshotRemoteStreamSender *)v7 _callDidStartCaptureImageDelegate];
  v11 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  v2 = [(HMDCameraSnapshotSender *)self sessionID];
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting HMDCameraSnapshotRemoteStreamSender", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = v4;
  v8.super_class = HMDCameraSnapshotRemoteStreamSender;
  [(HMDCameraSnapshotRemoteStreamSender *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDCameraSnapshotRemoteStreamSender)initWithSessionID:(id)a3 workQueue:(id)a4 device:(id)a5 accessory:(id)a6 delegate:(id)a7 uniqueIdentifier:(id)a8 snapshotRequestHandler:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a9;
  v19 = a8;
  v20 = a5;
  v21 = [v20 localHandles];
  v22 = [v21 firstObject];
  v23 = [v22 destination];

  v24 = v17;
  v25 = v16;

  v33.receiver = self;
  v33.super_class = HMDCameraSnapshotRemoteStreamSender;
  v26 = [(HMDCameraSnapshotSender *)&v33 initWithSessionID:v14 workQueue:v15 device:v20 accessory:v16 uniqueIdentifier:v19];

  if (v26)
  {
    objc_storeWeak(&v26->_delegate, v24);
    v27 = [[HMDCameraSnapshotLocal alloc] initWithSessionID:v14 workQueue:v15 accessory:v25 delegate:v26 snapshotRequestHandler:v18];
    snapshotLocal = v26->_snapshotLocal;
    v26->_snapshotLocal = v27;

    v29 = [[HMDCameraSnapshotIDSStreamInitiator alloc] initWithSessionID:v14 workQueue:v15 destinationID:v23 delegate:v26];
    streamInitiator = v26->_streamInitiator;
    v26->_streamInitiator = v29;
  }

  return v26;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_15737 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_15737, &__block_literal_global_15738);
  }

  v3 = logCategory__hmf_once_v2_15739;

  return v3;
}

void __50__HMDCameraSnapshotRemoteStreamSender_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_15739;
  logCategory__hmf_once_v2_15739 = v1;
}

@end