@interface HMDCameraSnapshotRemoteRelaySender
+ (id)logCategory;
- (HMDCameraSnapshotRemoteRelaySender)initWithSessionID:(id)a3 workQueue:(id)a4 device:(id)a5 accessory:(id)a6 delegate:(id)a7 uniqueIdentifier:(id)a8 snapshotRequestHandler:(id)a9;
- (HMDCameraSnapshotRemoteRelaySenderDelegate)delegate;
- (id)logIdentifier;
- (void)_callDidCompleteSendImageDelegate:(id)a3;
- (void)_callDidSaveSnapshotFileDelegate:(id)a3;
- (void)_callDidStartCaptureImageDelegate;
- (void)dealloc;
- (void)getSnapshot:(unint64_t)a3;
- (void)relayInitiator:(id)a3 didEndIDSSessionWithError:(id)a4;
- (void)relayInitiator:(id)a3 didSendData:(id)a4;
- (void)relayInitiatorDidSendDataSuccessfully:(id)a3;
- (void)relayInitiatorDidSendIDSInvitation:(id)a3;
- (void)relayInitiatorDidStartDataSend:(id)a3;
- (void)relayInitiatorIDSSessionDidStart:(id)a3;
- (void)snapshotLocal:(id)a3 didSaveSnapshotFile:(id)a4 error:(id)a5 sessionID:(id)a6;
- (void)snapshotTransferComplete;
@end

@implementation HMDCameraSnapshotRemoteRelaySender

- (HMDCameraSnapshotRemoteRelaySenderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)relayInitiatorDidSendIDSInvitation:(id)a3
{
  v4 = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDCameraSnapshotSender *)self sessionID];
  [v5 markMilestoneFor:@"IDSSessionInvitationSent"];
}

- (void)relayInitiator:(id)a3 didSendData:(id)a4
{
  v6 = a4;
  v5 = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(v5);

  [(HMDCameraSnapshotSender *)self _sendImageSendFailure:v6];
  [(HMDCameraSnapshotRemoteRelaySender *)self _callDidCompleteSendImageDelegate:v6];
}

- (void)relayInitiatorDidStartDataSend:(id)a3
{
  v3 = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(v3);
}

- (void)relayInitiatorIDSSessionDidStart:(id)a3
{
  v4 = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDCameraSnapshotSender *)self sessionID];
  [v5 markMilestoneFor:@"IDSSessionStartedOnInitiator"];
}

- (void)relayInitiatorDidSendDataSuccessfully:(id)a3
{
  v4 = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDCameraSnapshotSender *)self sessionID];
  [v5 markMilestoneFor:@"IDSTransferSentImage"];
}

- (void)relayInitiator:(id)a3 didEndIDSSessionWithError:(id)a4
{
  v4 = [(HMDCameraSnapshotSender *)self workQueue:a3];
  dispatch_assert_queue_V2(v4);
}

- (void)snapshotLocal:(id)a3 didSaveSnapshotFile:(id)a4 error:(id)a5 sessionID:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(v14);

  if (v12)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v30 = 138543618;
      v31 = v18;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Snapshot local capture has ended in %@", &v30, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    [(HMDCameraSnapshotSender *)v16 _sendImageSendFailure:v12];
    [(HMDCameraSnapshotRemoteRelaySender *)v16 _callDidCompleteSendImageDelegate:v12];
  }

  else
  {
    v19 = [v11 idsData];
    if (v19)
    {
      [(HMDCameraSnapshotRemoteRelaySender *)self _callDidSaveSnapshotFileDelegate:v11];
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v30 = 138543618;
        v31 = v23;
        v32 = 2112;
        v33 = v11;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Scheduling the transfer of file %@ through IDS", &v30, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v24 = [(HMDCameraSnapshotRemoteRelaySender *)v21 relayInitiator];
      [v24 sendData:v19];
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v30 = 138543362;
        v31 = v28;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode snapshot file to send over IDS", &v30, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      [(HMDCameraSnapshotSender *)v26 _sendImageSendFailure:0];
      [(HMDCameraSnapshotRemoteRelaySender *)v26 _callDidCompleteSendImageDelegate:0];
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_callDidSaveSnapshotFileDelegate:(id)a3
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
    v14 = 138543362;
    v15 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling delegate that snapshot file has been saved", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraSnapshotRemoteRelaySender *)v7 delegate];
  if (objc_opt_respondsToSelector())
  {
    v11 = [(HMDCameraSnapshotRemoteRelaySender *)v7 snapshotLocal];
    v12 = [v11 sessionID];
    [v10 snapshotRelaySender:v7 didSaveSnapshotFile:v4 sessionID:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
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
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling delegate that transfer of image has completed with error %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraSnapshotRemoteRelaySender *)v7 delegate];
  if (objc_opt_respondsToSelector())
  {
    v11 = [(HMDCameraSnapshotRemoteRelaySender *)v7 snapshotLocal];
    v12 = [v11 sessionID];
    [v10 snapshotRelaySender:v7 didCompleteSendImage:v4 sessionID:v12];
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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Calling delegate that capture of image has started", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDCameraSnapshotRemoteRelaySender *)v5 delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [(HMDCameraSnapshotRemoteRelaySender *)v5 snapshotLocal];
    v10 = [v9 sessionID];
    [v8 snapshotRelaySender:v5 didStartImageCaptureForSessionID:v10];
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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Snapshot transfer to remote receiver is complete", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDCameraSnapshotRemoteRelaySender *)v5 _callDidCompleteSendImageDelegate:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)getSnapshot:(unint64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [(HMDCameraSnapshotSender *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Getting the snapshot from local snapshot handler", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraSnapshotRemoteRelaySender *)v7 relayInitiator];
  [v10 sendIDSInvitation];

  v11 = [(HMDCameraSnapshotRemoteRelaySender *)v7 snapshotLocal];
  [v11 getSnapshot:a3];

  [(HMDCameraSnapshotRemoteRelaySender *)v7 _callDidStartCaptureImageDelegate];
  v12 = *MEMORY[0x277D85DE8];
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
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting HMDCameraSnapshotRemoteRelaySender", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = v4;
  v8.super_class = HMDCameraSnapshotRemoteRelaySender;
  [(HMDCameraSnapshotRemoteRelaySender *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDCameraSnapshotRemoteRelaySender)initWithSessionID:(id)a3 workQueue:(id)a4 device:(id)a5 accessory:(id)a6 delegate:(id)a7 uniqueIdentifier:(id)a8 snapshotRequestHandler:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  v33.receiver = self;
  v33.super_class = HMDCameraSnapshotRemoteRelaySender;
  v21 = [(HMDCameraSnapshotSender *)&v33 initWithSessionID:v15 workQueue:v16 device:v17 accessory:v18 uniqueIdentifier:a8];
  v22 = v21;
  if (v21)
  {
    objc_storeWeak(&v21->_delegate, v19);
    v23 = [[HMDCameraSnapshotLocal alloc] initWithSessionID:v15 workQueue:v16 accessory:v18 delegate:v22 snapshotRequestHandler:v20];
    snapshotLocal = v22->_snapshotLocal;
    v22->_snapshotLocal = v23;

    v25 = objc_alloc(MEMORY[0x277CCAD78]);
    v26 = [v15 sessionID];
    v27 = [v25 initWithUUIDString:v26];

    v28 = [HMDCameraSnapshotIDSRelayInitiator alloc];
    v29 = [v15 description];
    v30 = [(HMDCameraSnapshotIDSRelayInitiator *)v28 initWithSessionID:v27 logIdentifier:v29 workQueue:v16 device:v17 delegate:v22];
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