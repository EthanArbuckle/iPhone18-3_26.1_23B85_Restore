@interface HMDCameraSnapshotIDSRelayReceiver
+ (id)logCategory;
- (HMDCameraSnapshotIDSRelayReceiver)initWithSessionID:(id)d logIdentifier:(id)identifier workQueue:(id)queue idsStreamService:(id)service machOUUID:(id)iD sessionInviterDeviceVerifier:(id)verifier delegate:(id)delegate;
- (HMDCameraSnapshotIDSRelayReceiver)initWithSessionID:(id)d logIdentifier:(id)identifier workQueue:(id)queue machOUUID:(id)iD sessionInviterDeviceVerifier:(id)verifier delegate:(id)delegate;
- (HMDCameraSnapshotIDSRelayReceiverDelegate)delegate;
- (id)logIdentifier;
- (void)_didReceiveData:(id)data error:(id)error;
- (void)_handleDataFromSocket:(id)socket;
- (void)_startDataReceive;
- (void)dealloc;
- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d withContext:(id)context;
- (void)sessionEnded:(id)ended withReason:(unsigned int)reason error:(id)error;
- (void)sessionStarted:(id)started;
@end

@implementation HMDCameraSnapshotIDSRelayReceiver

- (HMDCameraSnapshotIDSRelayReceiverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
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
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Session %{public}@ has ended with reason: %{public}u and error: %{public}@", &v17, 0x26u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1030 underlyingError:errorCopy];
  [(HMDCameraSnapshotIDSRelayReceiver *)selfCopy _didReceiveData:0 error:v15];

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
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Session %{public}@ has started", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  delegate = [(HMDCameraSnapshotIDSRelayReceiver *)selfCopy delegate];
  [delegate relayReceiverIDSSessionDidStart:selfCopy];

  [(HMDCameraSnapshotIDSRelayReceiver *)selfCopy _startDataReceive];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d withContext:(id)context
{
  v91 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  sessionCopy = session;
  dCopy = d;
  contextCopy = context;
  workQueue = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v18 = [HMDDeviceHandle deviceHandleForDestination:dCopy];
  if (!v18)
  {
    v50 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v52 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = HMFGetLogIdentifier();
      *buf = 138543618;
      v86 = v53;
      v87 = 2112;
      contextCopy2 = dCopy;
      v54 = "%{public}@Could not determine device handle for fromID: %@";
      v55 = v52;
      v56 = OS_LOG_TYPE_ERROR;
LABEL_21:
      _os_log_impl(&dword_2531F8000, v55, v56, v54, buf, 0x16u);
    }

LABEL_22:

    objc_autoreleasePoolPop(v50);
    goto LABEL_39;
  }

  sessionInviterDeviceVerifier = [(HMDCameraSnapshotIDSRelayReceiver *)self sessionInviterDeviceVerifier];
  v20 = [sessionInviterDeviceVerifier canAcceptInvitationFromDeviceWithHandle:v18];

  if ((v20 & 1) == 0)
  {
    v50 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v52 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      v53 = HMFGetLogIdentifier();
      *buf = 138543618;
      v86 = v53;
      v87 = 2112;
      contextCopy2 = v18;
      v54 = "%{public}@Ignoring invitation from %@";
      v55 = v52;
      v56 = OS_LOG_TYPE_INFO;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v21 = MEMORY[0x277CCAAC8];
  v22 = getIDSSessionOptionsAllowedClasses();
  v82 = 0;
  v23 = [v21 unarchivedObjectOfClasses:v22 fromData:contextCopy error:&v82];
  v81 = v82;

  if (v23)
  {
    v80 = v23;
    v24 = v23;
    objc_opt_class();
    v25 = objc_opt_isKindOfClass() & 1;
    if (v25)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    if (v25)
    {
      v74 = sessionCopy;
      v28 = [v24 objectForKeyedSubscript:@"kCameraSessionID"];
      context = v28;
      if (v28)
      {
        v29 = v28;
        v77 = v27;
        sessionInviterDeviceVerifier2 = [(HMDCameraSnapshotIDSRelayReceiver *)self sessionInviterDeviceVerifier];
        v31 = [sessionInviterDeviceVerifier2 canAcceptInvitationForSessionWithIdentifier:v29];

        v32 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v34 = HMFGetOSLogHandle();
        v35 = v34;
        if (v31)
        {
          sessionCopy = v74;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v37 = v36 = v32;
            *buf = 138543874;
            v86 = v37;
            v87 = 2112;
            contextCopy2 = v74;
            v89 = 2112;
            v90 = dCopy;
            _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Received invitation for session %@ from %@", buf, 0x20u);

            v32 = v36;
          }

          objc_autoreleasePoolPop(v32);
          [(HMDCameraSnapshotIDSRelayReceiver *)selfCopy3 setIdsSession:v74];
          idsSession = [(HMDCameraSnapshotIDSRelayReceiver *)selfCopy3 idsSession];
          workQueue2 = [(HMDCameraSnapshotIDSRelay *)selfCopy3 workQueue];
          [idsSession setDelegate:selfCopy3 queue:workQueue2];

          machOUUID = [(HMDCameraSnapshotIDSRelayReceiver *)selfCopy3 machOUUID];

          if (machOUUID)
          {
            idsSession2 = [(HMDCameraSnapshotIDSRelayReceiver *)selfCopy3 idsSession];
            v83 = *MEMORY[0x277D18938];
            machOUUID2 = [(HMDCameraSnapshotIDSRelayReceiver *)selfCopy3 machOUUID];
            uUIDString = [machOUUID2 UUIDString];
            v84 = uUIDString;
            v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
            [idsSession2 setPreferences:v43];
          }

          idsSession3 = [(HMDCameraSnapshotIDSRelayReceiver *)selfCopy3 idsSession];
          [idsSession3 acceptInvitation];

          v45 = objc_autoreleasePoolPush();
          v46 = selfCopy3;
          v47 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            v48 = HMFGetLogIdentifier();
            *buf = 138543362;
            v86 = v48;
            _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, "%{public}@Accepted invitation", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v45);
          delegate = [(HMDCameraSnapshotIDSRelayReceiver *)v46 delegate];
          [delegate relayReceiverDidAcceptIDSInvitation:v46];
        }

        else
        {
          sessionCopy = v74;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            HMFGetLogIdentifier();
            v71 = v70 = v32;
            *buf = 138543618;
            v86 = v71;
            v87 = 2112;
            contextCopy2 = context;
            _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring invitation for camera session ID: %@", buf, 0x16u);

            v32 = v70;
          }

          objc_autoreleasePoolPop(v32);
        }

        v27 = v77;
      }

      else
      {
        v66 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v68 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v69 = v79 = v27;
          *buf = 138543618;
          v86 = v69;
          v87 = 2112;
          contextCopy2 = v24;
          _os_log_impl(&dword_2531F8000, v68, OS_LOG_TYPE_ERROR, "%{public}@Could not find camera session ID in payload: %@", buf, 0x16u);

          v27 = v79;
        }

        objc_autoreleasePoolPop(v66);
        sessionCopy = v74;
      }
    }

    else
    {
      contexta = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v62 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v63 = v78 = v27;
        v64 = objc_opt_class();
        *buf = 138543874;
        v86 = v63;
        v87 = 2112;
        contextCopy2 = v24;
        v89 = 2112;
        v90 = v64;
        v65 = v64;
        _os_log_impl(&dword_2531F8000, v62, OS_LOG_TYPE_ERROR, "%{public}@Unarchived payload was not an NSDictionary: %@ (%@)", buf, 0x20u);

        v27 = v78;
      }

      objc_autoreleasePoolPop(contexta);
    }

    v23 = v80;
  }

  else
  {
    v57 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v59 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v60 = HMFGetLogIdentifier();
      *buf = 138543618;
      v86 = v60;
      v87 = 2112;
      contextCopy2 = v81;
      _os_log_impl(&dword_2531F8000, v59, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive payload from context data: %@", buf, 0x16u);

      v23 = 0;
    }

    objc_autoreleasePoolPop(v57);
  }

LABEL_39:
  v72 = *MEMORY[0x277D85DE8];
}

- (void)_didReceiveData:(id)data error:(id)error
{
  errorCopy = error;
  dataCopy = data;
  workQueue = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  socketSource = [(HMDCameraSnapshotIDSRelayReceiver *)self socketSource];

  if (socketSource)
  {
    socketSource2 = [(HMDCameraSnapshotIDSRelayReceiver *)self socketSource];
    dispatch_source_cancel(socketSource2);

    [(HMDCameraSnapshotIDSRelayReceiver *)self setSocketSource:0];
  }

  delegate = [(HMDCameraSnapshotIDSRelayReceiver *)self delegate];
  [delegate relayReceiver:self didReceiveData:dataCopy error:errorCopy];
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
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting the HMDCameraSnapshotIDSRelayReceiver", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  idsSession = [(HMDCameraSnapshotIDSRelayReceiver *)selfCopy idsSession];
  [idsSession endSession];

  socketSource = [(HMDCameraSnapshotIDSRelayReceiver *)selfCopy socketSource];

  if (socketSource)
  {
    socketSource2 = [(HMDCameraSnapshotIDSRelayReceiver *)selfCopy socketSource];
    dispatch_source_cancel(socketSource2);
  }

  v11.receiver = selfCopy;
  v11.super_class = HMDCameraSnapshotIDSRelayReceiver;
  [(HMDCameraSnapshotIDSRelay *)&v11 dealloc];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleDataFromSocket:(id)socket
{
  v47 = *MEMORY[0x277D85DE8];
  socketCopy = socket;
  workQueue = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  socketSource = [(HMDCameraSnapshotIDSRelayReceiver *)self socketSource];

  if (!socketSource)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v41 = 138543362;
      v42 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Socket source is already nil, rejecting the data from socket", &v41, 0xCu);
LABEL_20:
    }

LABEL_21:

    objc_autoreleasePoolPop(v13);
    goto LABEL_22;
  }

  if (![(HMDCameraSnapshotIDSRelayReceiver *)self expectedByteCount])
  {
    expectedByteCountData = [(HMDCameraSnapshotIDSRelayReceiver *)self expectedByteCountData];
    v8 = 8 - [expectedByteCountData length];

    v9 = [socketCopy length];
    expectedByteCountData2 = [(HMDCameraSnapshotIDSRelayReceiver *)self expectedByteCountData];
    v11 = expectedByteCountData2;
    if (v9 <= v8)
    {
      [expectedByteCountData2 appendData:socketCopy];
    }

    else
    {
      v12 = [socketCopy subdataWithRange:{0, v8}];
      [v11 appendData:v12];
    }

    expectedByteCountData3 = [(HMDCameraSnapshotIDSRelayReceiver *)self expectedByteCountData];
    v18 = [expectedByteCountData3 length];

    if (v18 > 7)
    {
      expectedByteCountData4 = [(HMDCameraSnapshotIDSRelayReceiver *)self expectedByteCountData];
      -[HMDCameraSnapshotIDSRelayReceiver setExpectedByteCount:](self, "setExpectedByteCount:", *[expectedByteCountData4 bytes]);

      v20 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v41 = 138543618;
        v42 = v23;
        v43 = 2048;
        expectedByteCount = [(HMDCameraSnapshotIDSRelayReceiver *)selfCopy2 expectedByteCount];
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Setting expected byte count to %llu", &v41, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v24 = [socketCopy mutableCopy];
      [v24 replaceBytesInRange:0 withBytes:8 length:{0, 0}];

      socketCopy = v24;
      goto LABEL_12;
    }

    v13 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      expectedByteCountData5 = [(HMDCameraSnapshotIDSRelayReceiver *)selfCopy3 expectedByteCountData];
      v41 = 138543618;
      v42 = v16;
      v43 = 2048;
      expectedByteCount = [expectedByteCountData5 length];
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Only received %lu bytes that represent the expected byte count so far; will wait for more", &v41, 0x16u);

      goto LABEL_20;
    }

    goto LABEL_21;
  }

LABEL_12:
  relayData = [(HMDCameraSnapshotIDSRelayReceiver *)self relayData];
  [relayData appendData:socketCopy];

  v26 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = HMFGetLogIdentifier();
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDCameraSnapshotIDSRelayReceiver receivedByteCount](selfCopy4, "receivedByteCount")}];
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(socketCopy, "length") + -[HMDCameraSnapshotIDSRelayReceiver receivedByteCount](selfCopy4, "receivedByteCount")}];
    v41 = 138543874;
    v42 = v29;
    v43 = 2112;
    expectedByteCount = v30;
    v45 = 2112;
    v46 = v31;
    _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Updating received byte count from %@ to %@", &v41, 0x20u);
  }

  objc_autoreleasePoolPop(v26);
  -[HMDCameraSnapshotIDSRelayReceiver setReceivedByteCount:](selfCopy4, "setReceivedByteCount:", -[HMDCameraSnapshotIDSRelayReceiver receivedByteCount](selfCopy4, "receivedByteCount") + [socketCopy length]);
  receivedByteCount = [(HMDCameraSnapshotIDSRelayReceiver *)selfCopy4 receivedByteCount];
  if (receivedByteCount == [(HMDCameraSnapshotIDSRelayReceiver *)selfCopy4 expectedByteCount])
  {
    v33 = objc_autoreleasePoolPush();
    v34 = selfCopy4;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = HMFGetLogIdentifier();
      v41 = 138543362;
      v42 = v36;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@All the bytes have been received, file transfer is complete", &v41, 0xCu);
    }

    objc_autoreleasePoolPop(v33);
    relayData2 = [(HMDCameraSnapshotIDSRelayReceiver *)v34 relayData];
    v38 = [relayData2 copy];
    [(HMDCameraSnapshotIDSRelayReceiver *)v34 _didReceiveData:v38 error:0];
  }

LABEL_22:

  v40 = *MEMORY[0x277D85DE8];
}

- (void)_startDataReceive
{
  workQueue = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  idsSession = [(HMDCameraSnapshotIDSRelayReceiver *)self idsSession];
  socket = [idsSession socket];
  workQueue2 = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  v7 = dispatch_source_create(MEMORY[0x277D85D28], socket, 0, workQueue2);
  [(HMDCameraSnapshotIDSRelayReceiver *)self setSocketSource:v7];

  objc_initWeak(&location, self);
  socketSource = [(HMDCameraSnapshotIDSRelayReceiver *)self socketSource];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __54__HMDCameraSnapshotIDSRelayReceiver__startDataReceive__block_invoke;
  v13 = &unk_279732FD8;
  objc_copyWeak(&v14, &location);
  dispatch_source_set_event_handler(socketSource, &v10);

  v9 = [(HMDCameraSnapshotIDSRelayReceiver *)self socketSource:v10];
  dispatch_resume(v9);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __54__HMDCameraSnapshotIDSRelayReceiver__startDataReceive__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained idsSession];
  v3 = recvfrom([v2 socket], v14, 0x400uLL, 0, 0, 0);

  v4 = objc_autoreleasePoolPush();
  v5 = WeakRetained;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v16 = v7;
    v17 = 2048;
    v18 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Received data of length %ld", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  if (v3)
  {
    if (v3 < 1)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = v5;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543362;
        v16 = v12;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Recv from socket returned error, aborting the file receive", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      v8 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1032];
      [v10 _didReceiveData:0 error:v8];
    }

    else
    {
      v8 = [MEMORY[0x277CBEA90] dataWithBytes:v14 length:v3];
      [v5 _handleDataFromSocket:v8];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  sessionID = [(HMDCameraSnapshotIDSRelay *)self sessionID];
  v3 = [sessionID description];

  return v3;
}

- (HMDCameraSnapshotIDSRelayReceiver)initWithSessionID:(id)d logIdentifier:(id)identifier workQueue:(id)queue idsStreamService:(id)service machOUUID:(id)iD sessionInviterDeviceVerifier:(id)verifier delegate:(id)delegate
{
  iDCopy = iD;
  verifierCopy = verifier;
  delegateCopy = delegate;
  v26.receiver = self;
  v26.super_class = HMDCameraSnapshotIDSRelayReceiver;
  v19 = [(HMDCameraSnapshotIDSRelay *)&v26 initWithSessionID:d logIdentifier:identifier workQueue:queue idsStreamService:service];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_machOUUID, iD);
    objc_storeWeak(&v20->_delegate, delegateCopy);
    data = [MEMORY[0x277CBEB28] data];
    relayData = v20->_relayData;
    v20->_relayData = data;

    data2 = [MEMORY[0x277CBEB28] data];
    expectedByteCountData = v20->_expectedByteCountData;
    v20->_expectedByteCountData = data2;

    objc_storeStrong(&v20->_sessionInviterDeviceVerifier, verifier);
  }

  return v20;
}

- (HMDCameraSnapshotIDSRelayReceiver)initWithSessionID:(id)d logIdentifier:(id)identifier workQueue:(id)queue machOUUID:(id)iD sessionInviterDeviceVerifier:(id)verifier delegate:(id)delegate
{
  delegateCopy = delegate;
  verifierCopy = verifier;
  iDCopy = iD;
  queueCopy = queue;
  identifierCopy = identifier;
  dCopy = d;
  v20 = +[HMDIDSServiceManager sharedManager];
  v21 = [v20 serviceWithName:@"com.apple.private.alloy.willow.stream"];
  v22 = [(HMDCameraSnapshotIDSRelayReceiver *)self initWithSessionID:dCopy logIdentifier:identifierCopy workQueue:queueCopy idsStreamService:v21 machOUUID:iDCopy sessionInviterDeviceVerifier:verifierCopy delegate:delegateCopy];

  return v22;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_175382 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_175382, &__block_literal_global_175383);
  }

  v3 = logCategory__hmf_once_v1_175384;

  return v3;
}

uint64_t __48__HMDCameraSnapshotIDSRelayReceiver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_175384;
  logCategory__hmf_once_v1_175384 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end