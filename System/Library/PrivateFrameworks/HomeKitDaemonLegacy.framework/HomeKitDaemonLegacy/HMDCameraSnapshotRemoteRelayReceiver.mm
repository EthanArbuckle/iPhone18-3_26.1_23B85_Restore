@interface HMDCameraSnapshotRemoteRelayReceiver
+ (id)logCategory;
- (HMDCameraSnapshotRemoteRelayReceiver)initWithSessionID:(id)a3 workQueue:(id)a4 accessory:(id)a5 delegate:(id)a6 uniqueIdentifier:(id)a7 snapshotRequestHandler:(id)a8 residentMessageHandler:(id)a9 remoteDevice:(id)a10;
- (HMDCameraSnapshotRemoteRelayReceiverDelegate)delegate;
- (id)logIdentifier;
- (void)_callDidSaveImageDelegateWithSnapshotFile:(id)a3 error:(id)a4;
- (void)_callDidStartImageCaptureDelegate;
- (void)_getSnapshot:(unint64_t)a3;
- (void)dealloc;
- (void)getSnapshot:(unint64_t)a3;
- (void)relayReceiver:(id)a3 didReceiveData:(id)a4 error:(id)a5;
- (void)relayReceiverDidAcceptIDSInvitation:(id)a3;
- (void)relayReceiverIDSSessionDidStart:(id)a3;
- (void)snapshotSendFailed:(id)a3;
@end

@implementation HMDCameraSnapshotRemoteRelayReceiver

- (HMDCameraSnapshotRemoteRelayReceiverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)relayReceiverIDSSessionDidStart:(id)a3
{
  v4 = [(HMDCameraSnapshotReceiver *)self workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDCameraSnapshotReceiver *)self sessionID];
  [v5 markMilestoneFor:@"IDSSessionStartedOnReceiver"];
}

- (void)relayReceiverDidAcceptIDSInvitation:(id)a3
{
  v4 = [(HMDCameraSnapshotReceiver *)self workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDCameraSnapshotReceiver *)self sessionID];
  [v5 markMilestoneFor:@"IDSSessionInvitationReceived"];
}

- (void)relayReceiver:(id)a3 didReceiveData:(id)a4 error:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDCameraSnapshotReceiver *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v15;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Image receive has completed with error: %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  if (v9)
  {
    v16 = [HMDCameraSnapshotFile alloc];
    v17 = [(HMDCameraSnapshotReceiver *)v13 snapshotRequestHandler];
    v18 = [v17 imageCacheDirectory];
    v19 = [(HMDCameraSnapshotFile *)v16 initWithDirectory:v18 idsData:v9 error:0];

    if (!v19)
    {
      v20 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1035];

      v10 = v20;
    }
  }

  else
  {
    v19 = 0;
  }

  [(HMDCameraSnapshotRemoteRelayReceiver *)v13 _callDidSaveImageDelegateWithSnapshotFile:v19 error:v10];
  [(HMDCameraSnapshotReceiver *)v13 _sendConfirmationToResident:&__block_literal_global_36_105097];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_callDidSaveImageDelegateWithSnapshotFile:(id)a3 error:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
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
    v16 = 138543618;
    v17 = v12;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Calling delegate that download of image has completed with error %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [(HMDCameraSnapshotRemoteRelayReceiver *)v10 delegate];
  if (objc_opt_respondsToSelector())
  {
    v14 = [(HMDCameraSnapshotReceiver *)v10 sessionID];
    [v13 snapshotRelayReceiver:v10 didSaveSnapshotFile:v6 error:v7 sessionID:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_callDidStartImageCaptureDelegate
{
  v3 = [(HMDCameraSnapshotReceiver *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v5 = [(HMDCameraSnapshotRemoteRelayReceiver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(HMDCameraSnapshotReceiver *)self sessionID];
    [v5 snapshotRelayReceiver:self didStartImageCaptureForSessionID:v4];
  }
}

- (void)snapshotSendFailed:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraSnapshotReceiver *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [(HMDCameraSnapshotReceiver *)v7 sessionID];
    v14 = 138543618;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Send failed on snapshot session %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = v4;
  v12 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1036];
  }

  [(HMDCameraSnapshotRemoteRelayReceiver *)v7 _callDidSaveImageDelegateWithSnapshotFile:0 error:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_getSnapshot:(unint64_t)a3
{
  v5 = [(HMDCameraSnapshotReceiver *)self workQueue];
  dispatch_assert_queue_V2(v5);

  objc_initWeak(&location, self);
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __53__HMDCameraSnapshotRemoteRelayReceiver__getSnapshot___block_invoke;
  v27 = &unk_279733B98;
  objc_copyWeak(&v28, &location);
  [(HMDCameraSnapshotReceiver *)self _sendRequestWithTierType:a3 toResident:&v24];
  v6 = [(HMDCameraSnapshotReceiver *)self sessionID:v24];
  v7 = [v6 hostProcessBundleIdentifier];

  if (v7)
  {
    v8 = +[HMDApplicationVendorIDStore sharedStore];
    v9 = [v8 machOUUIDForApplicationBundleID:v7];
  }

  else
  {
    v9 = 0;
  }

  v10 = [HMDCameraIDSSessionInviterDeviceVerifier alloc];
  v11 = [(HMDCameraSnapshotReceiver *)self sessionID];
  v12 = [v11 sessionID];
  v13 = [(HMDCameraSnapshotReceiver *)self remoteDevice];
  v14 = [(HMDCameraIDSSessionInviterDeviceVerifier *)v10 initWithSessionID:v12 expectedInviter:v13];

  v15 = objc_alloc(MEMORY[0x277CCAD78]);
  v16 = [(HMDCameraSnapshotReceiver *)self sessionID];
  v17 = [v16 sessionID];
  v18 = [v15 initWithUUIDString:v17];

  v19 = [HMDCameraSnapshotIDSRelayReceiver alloc];
  v20 = [(HMDCameraSnapshotReceiver *)self sessionID];
  v21 = [v20 sessionID];
  v22 = [(HMDCameraSnapshotReceiver *)self workQueue];
  v23 = [(HMDCameraSnapshotIDSRelayReceiver *)v19 initWithSessionID:v18 logIdentifier:v21 workQueue:v22 machOUUID:v9 sessionInviterDeviceVerifier:v14 delegate:self];
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
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Take snapshot relayed to resident has failed: %@", &v15, 0x16u);
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

  [(HMDCameraSnapshotRemoteRelayReceiver *)self _getSnapshot:a3];
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
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting HMDCameraSnapshotRemoteRelayReceiver", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = v4;
  v8.super_class = HMDCameraSnapshotRemoteRelayReceiver;
  [(HMDCameraSnapshotRemoteRelayReceiver *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDCameraSnapshotRemoteRelayReceiver)initWithSessionID:(id)a3 workQueue:(id)a4 accessory:(id)a5 delegate:(id)a6 uniqueIdentifier:(id)a7 snapshotRequestHandler:(id)a8 residentMessageHandler:(id)a9 remoteDevice:(id)a10
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
    return +[(HMDCameraSnapshotRemoteRelayReceiver *)v28];
  }

  v30.receiver = self;
  v30.super_class = HMDCameraSnapshotRemoteRelayReceiver;
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
  if (logCategory__hmf_once_t1_105139 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_105139, &__block_literal_global_105140);
  }

  v3 = logCategory__hmf_once_v2_105141;

  return v3;
}

uint64_t __51__HMDCameraSnapshotRemoteRelayReceiver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_105141;
  logCategory__hmf_once_v2_105141 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end