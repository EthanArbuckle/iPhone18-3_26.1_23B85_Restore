@interface HMDCameraSnapshotIDSRelayInitiator
+ (id)logCategory;
- (HMDCameraSnapshotIDSRelayInitiator)initWithSessionID:(id)d logIdentifier:(id)identifier workQueue:(id)queue device:(id)device delegate:(id)delegate;
- (HMDCameraSnapshotIDSRelayInitiator)initWithSessionID:(id)d logIdentifier:(id)identifier workQueue:(id)queue idsStreamService:(id)service device:(id)device delegate:(id)delegate;
- (HMDCameraSnapshotIDSRelayInitiatorDelegate)delegate;
- (void)_callFileTransferFailed:(id)failed;
- (void)_sendData;
- (void)_startDataTransfer;
- (void)dealloc;
- (void)sendData:(id)data;
- (void)sendIDSInvitation;
- (void)session:(id)session receivedInvitationAcceptFromID:(id)d;
- (void)session:(id)session receivedInvitationCancelFromID:(id)d;
- (void)session:(id)session receivedInvitationDeclineFromID:(id)d;
- (void)sessionEnded:(id)ended withReason:(unsigned int)reason error:(id)error;
- (void)sessionStarted:(id)started;
@end

@implementation HMDCameraSnapshotIDSRelayInitiator

- (HMDCameraSnapshotIDSRelayInitiatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_callFileTransferFailed:(id)failed
{
  failedCopy = failed;
  workQueue = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  socketSource = [(HMDCameraSnapshotIDSRelayInitiator *)self socketSource];

  if (socketSource)
  {
    socketSource2 = [(HMDCameraSnapshotIDSRelayInitiator *)self socketSource];
    dispatch_source_cancel(socketSource2);

    [(HMDCameraSnapshotIDSRelayInitiator *)self setSocketSource:0];
  }

  delegate = [(HMDCameraSnapshotIDSRelayInitiator *)self delegate];
  [delegate relayInitiator:self didEndIDSSessionWithError:failedCopy];
}

- (void)sessionEnded:(id)ended withReason:(unsigned int)reason error:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  endedCopy = ended;
  errorCopy = error;
  workQueue = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v17 = 138544130;
    v18 = v14;
    v19 = 2114;
    v20 = endedCopy;
    v21 = 1026;
    reasonCopy = reason;
    v23 = 2114;
    v24 = errorCopy;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@IDSSession %{public}@ has ended with reason: %{public}u and error %{public}@", &v17, 0x26u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1030 underlyingError:errorCopy];
  [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy _callFileTransferFailed:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)sessionStarted:(id)started
{
  v16 = *MEMORY[0x277D85DE8];
  startedCopy = started;
  workQueue = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = startedCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@IDSSession %{public}@ has started", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  delegate = [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy delegate];
  [delegate relayInitiatorIDSSessionDidStart:selfCopy];

  [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy setIdsSessionStarted:1];
  [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy _sendData];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)session receivedInvitationCancelFromID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  dCopy = d;
  workQueue = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v12;
    v17 = 2112;
    v18 = sessionCopy;
    v19 = 2112;
    v20 = dCopy;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Invitation for IDSSession %@ was canceled by: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1029];
  [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy _callFileTransferFailed:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)session receivedInvitationDeclineFromID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  dCopy = d;
  workQueue = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v12;
    v17 = 2112;
    v18 = sessionCopy;
    v19 = 2112;
    v20 = dCopy;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Invitation for IDSSession %@ has been declined by: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1028];
  [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy _callFileTransferFailed:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)session receivedInvitationAcceptFromID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  dCopy = d;
  workQueue = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543874;
    v15 = v12;
    v16 = 2114;
    v17 = sessionCopy;
    v18 = 2112;
    v19 = dCopy;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Invitation for IDSSession %{public}@ has been accepted by: %@, waiting for session to get started", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v13 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting the HMDCameraSnapshotIDSRelayInitiator", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  idsSession = [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy idsSession];
  [idsSession endSession];

  socketSource = [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy socketSource];

  if (socketSource)
  {
    socketSource2 = [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy socketSource];
    dispatch_source_cancel(socketSource2);
  }

  v11.receiver = selfCopy;
  v11.super_class = HMDCameraSnapshotIDSRelayInitiator;
  [(HMDCameraSnapshotIDSRelay *)&v11 dealloc];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_startDataTransfer
{
  v23 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  delegate = [(HMDCameraSnapshotIDSRelayInitiator *)self delegate];
  [delegate relayInitiatorDidStartDataSend:self];

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    data = [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy data];
    *buf = 138543618;
    v20 = v8;
    v21 = 2048;
    v22 = [data length];
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Total number of bytes to send: %tu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  idsSession = [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy idsSession];
  socket = [idsSession socket];
  workQueue2 = [(HMDCameraSnapshotIDSRelay *)selfCopy workQueue];
  v13 = dispatch_source_create(MEMORY[0x277D85D50], socket, 0, workQueue2);
  [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy setSocketSource:v13];

  objc_initWeak(buf, selfCopy);
  socketSource = [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy socketSource];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __56__HMDCameraSnapshotIDSRelayInitiator__startDataTransfer__block_invoke;
  handler[3] = &unk_279732FD8;
  objc_copyWeak(&v18, buf);
  dispatch_source_set_event_handler(socketSource, handler);

  socketSource2 = [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy socketSource];
  dispatch_resume(socketSource2);

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
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to send the data of size %tu", &v27, 0x16u);
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
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Sent %lu bytes", &v27, 0x16u);
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
          _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@File transfer is complete with total transferred bytes", &v27, 0xCu);
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
  workQueue = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  idsStreamService = [(HMDCameraSnapshotIDSRelay *)self idsStreamService];
  accounts = [idsStreamService accounts];

  if ([accounts count] && (objc_msgSend(accounts, "anyObject"), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = *MEMORY[0x277D18950];
    v39[0] = *MEMORY[0x277D18958];
    v39[1] = v8;
    v40[0] = &unk_28662A238;
    v40[1] = MEMORY[0x277CBEC28];
    v39[2] = *MEMORY[0x277D18940];
    v40[2] = &unk_28662A250;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:3];
    idsStreamService2 = [(HMDCameraSnapshotIDSRelay *)self idsStreamService];
    device = [(HMDCameraSnapshotIDSRelayInitiator *)self device];
    v12 = [idsStreamService2 hmd_idsSessionWithAccount:v7 device:device options:v9];
    [(HMDCameraSnapshotIDSRelayInitiator *)self setIdsSession:v12];

    idsSession = [(HMDCameraSnapshotIDSRelayInitiator *)self idsSession];
    workQueue2 = [(HMDCameraSnapshotIDSRelay *)self workQueue];
    [idsSession setDelegate:self queue:workQueue2];

    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      idsSession2 = [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy idsSession];
      device2 = [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy device];
      shortDescription = [device2 shortDescription];
      *buf = 138544130;
      v32 = v18;
      v33 = 2112;
      v34 = idsSession2;
      v35 = 2112;
      v36 = shortDescription;
      v37 = 2112;
      v38 = v9;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Sending out invitation for IDSSession %@ to device %@ with options: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v15);
    sessionID = [(HMDCameraSnapshotIDSRelay *)selfCopy sessionID];
    uUIDString = [sessionID UUIDString];
    v30 = uUIDString;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];

    v25 = encodeRootObject();
    idsSession3 = [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy idsSession];
    [idsSession3 sendInvitationWithData:v25];

    delegate = [(HMDCameraSnapshotIDSRelayInitiator *)selfCopy delegate];
    [delegate relayInitiatorDidSendIDSInvitation:selfCopy];
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
  workQueue = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDCameraSnapshotIDSRelayInitiator *)self idsSessionStarted])
  {
    data = [(HMDCameraSnapshotIDSRelayInitiator *)self data];

    if (data)
    {

      [(HMDCameraSnapshotIDSRelayInitiator *)self _startDataTransfer];
    }
  }
}

- (void)sendData:(id)data
{
  v16 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  workQueue = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  data = [(HMDCameraSnapshotIDSRelayInitiator *)self data];

  if (data)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *v15 = 138543362;
      *&v15[4] = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Data send already in progress", v15, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    *v15 = [dataCopy length];
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:v15 length:8];
    v12 = [v11 mutableCopy];
    [(HMDCameraSnapshotIDSRelayInitiator *)self setData:v12];

    data2 = [(HMDCameraSnapshotIDSRelayInitiator *)self data];
    [data2 appendData:dataCopy];

    [(HMDCameraSnapshotIDSRelayInitiator *)self _sendData];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (HMDCameraSnapshotIDSRelayInitiator)initWithSessionID:(id)d logIdentifier:(id)identifier workQueue:(id)queue idsStreamService:(id)service device:(id)device delegate:(id)delegate
{
  deviceCopy = device;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = HMDCameraSnapshotIDSRelayInitiator;
  v17 = [(HMDCameraSnapshotIDSRelay *)&v20 initWithSessionID:d logIdentifier:identifier workQueue:queue idsStreamService:service];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_delegate, delegateCopy);
    objc_storeStrong(&v18->_device, device);
  }

  return v18;
}

- (HMDCameraSnapshotIDSRelayInitiator)initWithSessionID:(id)d logIdentifier:(id)identifier workQueue:(id)queue device:(id)device delegate:(id)delegate
{
  delegateCopy = delegate;
  deviceCopy = device;
  queueCopy = queue;
  identifierCopy = identifier;
  dCopy = d;
  v17 = +[HMDIDSServiceManager sharedManager];
  v18 = [v17 serviceWithName:@"com.apple.private.alloy.willow.stream"];
  v19 = [(HMDCameraSnapshotIDSRelayInitiator *)self initWithSessionID:dCopy logIdentifier:identifierCopy workQueue:queueCopy idsStreamService:v18 device:deviceCopy delegate:delegateCopy];

  return v19;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_169927 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_169927, &__block_literal_global_169928);
  }

  v3 = logCategory__hmf_once_v1_169929;

  return v3;
}

uint64_t __49__HMDCameraSnapshotIDSRelayInitiator_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_169929;
  logCategory__hmf_once_v1_169929 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end