@interface HMDCameraSnapshotIDSRelayInitiator
+ (id)logCategory;
- (HMDCameraSnapshotIDSRelayInitiator)initWithSessionID:(id)a3 logIdentifier:(id)a4 workQueue:(id)a5 device:(id)a6 delegate:(id)a7;
- (HMDCameraSnapshotIDSRelayInitiator)initWithSessionID:(id)a3 logIdentifier:(id)a4 workQueue:(id)a5 idsStreamService:(id)a6 device:(id)a7 delegate:(id)a8;
- (HMDCameraSnapshotIDSRelayInitiatorDelegate)delegate;
- (void)_callFileTransferFailed:(id)a3;
- (void)_sendData;
- (void)_startDataTransfer;
- (void)dealloc;
- (void)sendData:(id)a3;
- (void)sendIDSInvitation;
- (void)session:(id)a3 receivedInvitationAcceptFromID:(id)a4;
- (void)session:(id)a3 receivedInvitationCancelFromID:(id)a4;
- (void)session:(id)a3 receivedInvitationDeclineFromID:(id)a4;
- (void)sessionEnded:(id)a3 withReason:(unsigned int)a4 error:(id)a5;
- (void)sessionStarted:(id)a3;
@end

@implementation HMDCameraSnapshotIDSRelayInitiator

- (HMDCameraSnapshotIDSRelayInitiatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_callFileTransferFailed:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraSnapshotIDSRelayInitiator *)self socketSource];

  if (v6)
  {
    v7 = [(HMDCameraSnapshotIDSRelayInitiator *)self socketSource];
    dispatch_source_cancel(v7);

    [(HMDCameraSnapshotIDSRelayInitiator *)self setSocketSource:0];
  }

  v8 = [(HMDCameraSnapshotIDSRelayInitiator *)self delegate];
  [v8 relayInitiator:self didEndIDSSessionWithError:v4];
}

- (void)sessionEnded:(id)a3 withReason:(unsigned int)a4 error:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(v10);

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v17 = 138544130;
    v18 = v14;
    v19 = 2114;
    v20 = v8;
    v21 = 1026;
    v22 = a4;
    v23 = 2114;
    v24 = v9;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@IDSSession %{public}@ has ended with reason: %{public}u and error %{public}@", &v17, 0x26u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1030 underlyingError:v9];
  [(HMDCameraSnapshotIDSRelayInitiator *)v12 _callFileTransferFailed:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)sessionStarted:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = v4;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@IDSSession %{public}@ has started", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraSnapshotIDSRelayInitiator *)v7 delegate];
  [v10 relayInitiatorIDSSessionDidStart:v7];

  [(HMDCameraSnapshotIDSRelayInitiator *)v7 setIdsSessionStarted:1];
  [(HMDCameraSnapshotIDSRelayInitiator *)v7 _sendData];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)a3 receivedInvitationCancelFromID:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v12;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Invitation for IDSSession %@ was canceled by: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1029];
  [(HMDCameraSnapshotIDSRelayInitiator *)v10 _callFileTransferFailed:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)a3 receivedInvitationDeclineFromID:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v12;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Invitation for IDSSession %@ has been declined by: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1028];
  [(HMDCameraSnapshotIDSRelayInitiator *)v10 _callFileTransferFailed:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)a3 receivedInvitationAcceptFromID:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543874;
    v15 = v12;
    v16 = 2114;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Invitation for IDSSession %{public}@ has been accepted by: %@, waiting for session to get started", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v13 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting the HMDCameraSnapshotIDSRelayInitiator", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDCameraSnapshotIDSRelayInitiator *)v4 idsSession];
  [v7 endSession];

  v8 = [(HMDCameraSnapshotIDSRelayInitiator *)v4 socketSource];

  if (v8)
  {
    v9 = [(HMDCameraSnapshotIDSRelayInitiator *)v4 socketSource];
    dispatch_source_cancel(v9);
  }

  v11.receiver = v4;
  v11.super_class = HMDCameraSnapshotIDSRelayInitiator;
  [(HMDCameraSnapshotIDSRelay *)&v11 dealloc];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_startDataTransfer
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraSnapshotIDSRelayInitiator *)self delegate];
  [v4 relayInitiatorDidStartDataSend:self];

  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMDCameraSnapshotIDSRelayInitiator *)v6 data];
    *buf = 138543618;
    v20 = v8;
    v21 = 2048;
    v22 = [v9 length];
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Total number of bytes to send: %tu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [(HMDCameraSnapshotIDSRelayInitiator *)v6 idsSession];
  v11 = [v10 socket];
  v12 = [(HMDCameraSnapshotIDSRelay *)v6 workQueue];
  v13 = dispatch_source_create(MEMORY[0x277D85D50], v11, 0, v12);
  [(HMDCameraSnapshotIDSRelayInitiator *)v6 setSocketSource:v13];

  objc_initWeak(buf, v6);
  v14 = [(HMDCameraSnapshotIDSRelayInitiator *)v6 socketSource];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __56__HMDCameraSnapshotIDSRelayInitiator__startDataTransfer__block_invoke;
  handler[3] = &unk_278686B80;
  objc_copyWeak(&v18, buf);
  dispatch_source_set_event_handler(v14, handler);

  v15 = [(HMDCameraSnapshotIDSRelayInitiator *)v6 socketSource];
  dispatch_resume(v15);

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
  v16 = *MEMORY[0x277D85DE8];
}

void __56__HMDCameraSnapshotIDSRelayInitiator__startDataTransfer__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained data];
    if ([v3 length] > 0x3FF)
    {
      v5 = 1024;
    }

    else
    {
      v4 = [v2 data];
      v5 = [v4 length];
    }

    v6 = [v2 idsSession];
    v7 = [v6 socket];
    v8 = [v2 data];
    v9 = send(v7, [v8 bytes], v5, 0);

    v10 = objc_autoreleasePoolPush();
    v11 = v2;
    v12 = HMFGetOSLogHandle();
    v13 = v12;
    if (v9 == -1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v27 = 138543618;
        v28 = v24;
        v29 = 2048;
        v30 = v5;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to send the data of size %tu", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v25 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1025];
      [v11 _callFileTransferFailed:v25];
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v27 = 138543618;
        v28 = v14;
        v29 = 2048;
        v30 = v9;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Sent %lu bytes", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v15 = [v11 data];
      [v15 replaceBytesInRange:0 withBytes:v9 length:{0, 0}];

      v16 = [v11 data];
      v17 = [v16 length];

      if (!v17)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = v11;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          v27 = 138543362;
          v28 = v21;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@File transfer is complete with total transferred bytes", &v27, 0xCu);
        }

        objc_autoreleasePoolPop(v18);
        v22 = [v19 delegate];
        [v22 relayInitiatorDidSendDataSuccessfully:v19];

        v23 = [v19 socketSource];
        dispatch_source_cancel(v23);

        [v19 setSocketSource:0];
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)sendIDSInvitation
{
  v40[3] = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraSnapshotIDSRelay *)self idsStreamService];
  v5 = [v4 accounts];

  if ([v5 count] && (objc_msgSend(v5, "anyObject"), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = *MEMORY[0x277D18950];
    v39[0] = *MEMORY[0x277D18958];
    v39[1] = v8;
    v40[0] = &unk_283E74E58;
    v40[1] = MEMORY[0x277CBEC28];
    v39[2] = *MEMORY[0x277D18940];
    v40[2] = &unk_283E74E70;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:3];
    v10 = [(HMDCameraSnapshotIDSRelay *)self idsStreamService];
    v11 = [(HMDCameraSnapshotIDSRelayInitiator *)self device];
    v12 = [v10 hmd_idsSessionWithAccount:v7 device:v11 options:v9];
    [(HMDCameraSnapshotIDSRelayInitiator *)self setIdsSession:v12];

    v13 = [(HMDCameraSnapshotIDSRelayInitiator *)self idsSession];
    v14 = [(HMDCameraSnapshotIDSRelay *)self workQueue];
    [v13 setDelegate:self queue:v14];

    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [(HMDCameraSnapshotIDSRelayInitiator *)v16 idsSession];
      v20 = [(HMDCameraSnapshotIDSRelayInitiator *)v16 device];
      v21 = [v20 shortDescription];
      *buf = 138544130;
      v32 = v18;
      v33 = 2112;
      v34 = v19;
      v35 = 2112;
      v36 = v21;
      v37 = 2112;
      v38 = v9;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Sending out invitation for IDSSession %@ to device %@ with options: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v15);
    v22 = [(HMDCameraSnapshotIDSRelay *)v16 sessionID];
    v23 = [v22 UUIDString];
    v30 = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];

    v25 = encodeRootObject();
    v26 = [(HMDCameraSnapshotIDSRelayInitiator *)v16 idsSession];
    [v26 sendInvitationWithData:v25];

    v27 = [(HMDCameraSnapshotIDSRelayInitiator *)v16 delegate];
    [v27 relayInitiatorDidSendIDSInvitation:v16];
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1024];
    [(HMDCameraSnapshotIDSRelayInitiator *)self _callFileTransferFailed:v7];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_sendData
{
  v3 = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(v3);

  if ([(HMDCameraSnapshotIDSRelayInitiator *)self idsSessionStarted])
  {
    v4 = [(HMDCameraSnapshotIDSRelayInitiator *)self data];

    if (v4)
    {

      [(HMDCameraSnapshotIDSRelayInitiator *)self _startDataTransfer];
    }
  }
}

- (void)sendData:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraSnapshotIDSRelayInitiator *)self data];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *v15 = 138543362;
      *&v15[4] = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Data send already in progress", v15, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    *v15 = [v4 length];
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:v15 length:8];
    v12 = [v11 mutableCopy];
    [(HMDCameraSnapshotIDSRelayInitiator *)self setData:v12];

    v13 = [(HMDCameraSnapshotIDSRelayInitiator *)self data];
    [v13 appendData:v4];

    [(HMDCameraSnapshotIDSRelayInitiator *)self _sendData];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (HMDCameraSnapshotIDSRelayInitiator)initWithSessionID:(id)a3 logIdentifier:(id)a4 workQueue:(id)a5 idsStreamService:(id)a6 device:(id)a7 delegate:(id)a8
{
  v15 = a7;
  v16 = a8;
  v20.receiver = self;
  v20.super_class = HMDCameraSnapshotIDSRelayInitiator;
  v17 = [(HMDCameraSnapshotIDSRelay *)&v20 initWithSessionID:a3 logIdentifier:a4 workQueue:a5 idsStreamService:a6];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_delegate, v16);
    objc_storeStrong(&v18->_device, a7);
  }

  return v18;
}

- (HMDCameraSnapshotIDSRelayInitiator)initWithSessionID:(id)a3 logIdentifier:(id)a4 workQueue:(id)a5 device:(id)a6 delegate:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = +[HMDIDSServiceManager sharedManager];
  v18 = [v17 serviceWithName:@"com.apple.private.alloy.willow.stream"];
  v19 = [(HMDCameraSnapshotIDSRelayInitiator *)self initWithSessionID:v16 logIdentifier:v15 workQueue:v14 idsStreamService:v18 device:v13 delegate:v12];

  return v19;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_252099 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_252099, &__block_literal_global_252100);
  }

  v3 = logCategory__hmf_once_v1_252101;

  return v3;
}

void __49__HMDCameraSnapshotIDSRelayInitiator_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_252101;
  logCategory__hmf_once_v1_252101 = v1;
}

@end