@interface HMDCameraSnapshotRemoteRelayStream
+ (id)logCategory;
- (HMDCameraSnapshotRemoteRelayStream)initWithSessionID:(id)a3 workQueue:(id)a4 sourceDevice:(id)a5 remoteDevice:(id)a6 accessory:(id)a7 delegate:(id)a8 uniqueIdentifier:(id)a9 snapshotRequestHandler:(id)a10 residentMessageHandler:(id)a11;
- (HMDCameraSnapshotRemoteRelayStreamDelegate)delegate;
- (id)logIdentifier;
- (void)_callDidCompleteSendImageDelegate:(id)a3;
- (void)_callDidStartCaptureImageDelegate;
- (void)_sendImageSendFailure:(id)a3;
- (void)dealloc;
- (void)getSnapshot:(unint64_t)a3;
- (void)snapshotRelayReceiver:(id)a3 didSaveSnapshotFile:(id)a4 error:(id)a5 sessionID:(id)a6;
- (void)snapshotRelayReceiver:(id)a3 didStartImageCaptureForSessionID:(id)a4;
- (void)snapshotSendFailed:(id)a3;
- (void)snapshotStreamSender:(id)a3 didCompleteSendImage:(id)a4 sessionID:(id)a5;
- (void)snapshotStreamSender:(id)a3 didStartImageCaptureForSessionID:(id)a4;
- (void)snapshotTransferComplete;
@end

@implementation HMDCameraSnapshotRemoteRelayStream

- (HMDCameraSnapshotRemoteRelayStreamDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)snapshotStreamSender:(id)a3 didCompleteSendImage:(id)a4 sessionID:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDCameraSnapshotRemoteRelayStream *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v15;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Received delegate callback that the image transfer has completed with error %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  [(HMDCameraSnapshotRemoteRelayStream *)v13 _callDidCompleteSendImageDelegate:v9];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)snapshotStreamSender:(id)a3 didStartImageCaptureForSessionID:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraSnapshotRemoteRelayStream *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v12;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Received delegate callback that the image transfer to watch has begun", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)snapshotRelayReceiver:(id)a3 didSaveSnapshotFile:(id)a4 error:(id)a5 sessionID:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDCameraSnapshotRemoteRelayStream *)self workQueue];
  dispatch_assert_queue_V2(v14);

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v21 = 138543874;
    v22 = v18;
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Received delegate callback that the image %@ has been saved after relay with error %@", &v21, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  if (v12)
  {
    [(HMDCameraSnapshotRemoteRelayStream *)v16 _sendImageSendFailure:v12];
    [(HMDCameraSnapshotRemoteRelayStream *)v16 _callDidCompleteSendImageDelegate:v12];
  }

  else
  {
    v19 = [(HMDCameraSnapshotRemoteRelayStream *)v16 streamSender];
    [v19 sendSnapshotAtPath:v11];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)snapshotRelayReceiver:(id)a3 didStartImageCaptureForSessionID:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraSnapshotRemoteRelayStream *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v12;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Received delegate callback that image capture has started", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCameraSnapshotRemoteRelayStream *)v10 _callDidStartCaptureImageDelegate];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_sendImageSendFailure:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraSnapshotRemoteRelayStream *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraSnapshotRemoteRelayStream *)self streamSender];
  v7 = [v6 device];
  v8 = [v7 remoteDestinationString];

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v31 = v12;
    v32 = 2112;
    v33 = v8;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Sending image send failure to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [(HMDCameraSnapshotRemoteRelayStream *)v10 streamSender];
  v14 = [v13 accessory];
  v15 = [v14 home];
  v16 = [v15 homeManager];

  v17 = [MEMORY[0x277CBEB38] dictionary];
  v18 = [(HMDCameraSnapshotRemoteRelayStream *)v10 streamSender];
  v19 = [v18 sessionID];
  v20 = [v19 sessionID];
  [v17 setObject:v20 forKeyedSubscript:@"kCameraSessionID"];

  if (v4)
  {
    v21 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:0];
    [v17 setObject:v21 forKeyedSubscript:@"kCameraSessionError"];
  }

  v22 = [MEMORY[0x277D0F848] internalMessageWithName:@"kTakeSnapshotSendFailedNotificationKey" messagePayload:v17];
  [v22 setQualityOfService:33];
  v23 = [v22 copy];
  objc_initWeak(buf, v10);
  v24 = [(HMDCameraSnapshotRemoteRelayStream *)v10 streamSender];
  v25 = [v24 uniqueIdentifier];
  v26 = [(HMDCameraSnapshotRemoteRelayStream *)v10 workQueue];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __60__HMDCameraSnapshotRemoteRelayStream__sendImageSendFailure___block_invoke;
  v28[3] = &unk_279733B98;
  objc_copyWeak(&v29, buf);
  [v16 sendSecureMessage:v23 target:v25 userID:0 destination:v8 responseQueue:v26 responseHandler:v28];

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
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Received response for image send failure notification", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_callDidCompleteSendImageDelegate:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Calling delegate that transfer of image has completed with error %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDCameraSnapshotRemoteRelayStream *)v6 delegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [(HMDCameraSnapshotRemoteRelayStream *)v6 streamSender];
    v11 = [v10 sessionID];
    [v9 snapshotRelayStream:v6 didCompleteSendImage:v4 sessionID:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_callDidStartCaptureImageDelegate
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraSnapshotRemoteRelayStream *)self workQueue];
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
  v8 = [(HMDCameraSnapshotRemoteRelayStream *)v5 delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [(HMDCameraSnapshotRemoteRelayStream *)v5 relayReceiver];
    v10 = [v9 sessionID];
    [v8 snapshotRelayStream:v5 didStartImageCaptureForSessionID:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)snapshotSendFailed:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraSnapshotRemoteRelayStream *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraSnapshotRemoteRelayStream *)self relayReceiver];
  [v6 snapshotSendFailed:v4];
}

- (void)snapshotTransferComplete
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraSnapshotRemoteRelayStream *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Snapshot transfer to remote receiver is complete", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDCameraSnapshotRemoteRelayStream *)v5 streamSender];
  [v8 snapshotTransferComplete];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)getSnapshot:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [(HMDCameraSnapshotRemoteRelayStream *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Getting the snapshot from local snapshot handler", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraSnapshotRemoteRelayStream *)v7 relayReceiver];
  [v10 getSnapshot:a3];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  v2 = [(HMDCameraSnapshotRemoteRelayStream *)self streamSender];
  v3 = [v2 sessionID];
  v4 = [v3 description];

  return v4;
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
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting HMDCameraSnapshotRemoteRelayStream", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = v4;
  v8.super_class = HMDCameraSnapshotRemoteRelayStream;
  [(HMDCameraSnapshotRemoteRelayStream *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDCameraSnapshotRemoteRelayStream)initWithSessionID:(id)a3 workQueue:(id)a4 sourceDevice:(id)a5 remoteDevice:(id)a6 accessory:(id)a7 delegate:(id)a8 uniqueIdentifier:(id)a9 snapshotRequestHandler:(id)a10 residentMessageHandler:(id)a11
{
  v16 = a3;
  obj = a4;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v37 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  if (!v16)
  {
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!v17)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!v18)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!v19)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!v20)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  if (!v21)
  {
LABEL_17:
    _HMFPreconditionFailure();
    goto LABEL_18;
  }

  if (!v22)
  {
LABEL_18:
    _HMFPreconditionFailure();
    goto LABEL_19;
  }

  if (!v23)
  {
LABEL_19:
    v33 = _HMFPreconditionFailure();
    return +[(HMDCameraSnapshotRemoteRelayStream *)v33];
  }

  v24 = v16;
  v38.receiver = self;
  v38.super_class = HMDCameraSnapshotRemoteRelayStream;
  v25 = v23;
  v26 = [(HMDCameraSnapshotRemoteRelayStream *)&v38 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_workQueue, obj);
    objc_storeWeak(&v27->_delegate, v37);
    v28 = [[HMDCameraSnapshotRemoteStreamSender alloc] initWithSessionID:v24 workQueue:v17 device:v18 accessory:v20 delegate:v27 uniqueIdentifier:v21 snapshotRequestHandler:v22];
    streamSender = v27->_streamSender;
    v27->_streamSender = v28;

    v30 = [[HMDCameraSnapshotRemoteRelayReceiver alloc] initWithSessionID:v24 workQueue:v17 accessory:v20 delegate:v27 uniqueIdentifier:v21 snapshotRequestHandler:v22 residentMessageHandler:v25 remoteDevice:v19];
    relayReceiver = v27->_relayReceiver;
    v27->_relayReceiver = v30;
  }

  return v27;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_73694 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_73694, &__block_literal_global_73695);
  }

  v3 = logCategory__hmf_once_v2_73696;

  return v3;
}

uint64_t __49__HMDCameraSnapshotRemoteRelayStream_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_73696;
  logCategory__hmf_once_v2_73696 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end