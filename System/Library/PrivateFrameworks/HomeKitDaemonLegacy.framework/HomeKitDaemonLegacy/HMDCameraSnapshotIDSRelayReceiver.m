@interface HMDCameraSnapshotIDSRelayReceiver
+ (id)logCategory;
- (HMDCameraSnapshotIDSRelayReceiver)initWithSessionID:(id)a3 logIdentifier:(id)a4 workQueue:(id)a5 idsStreamService:(id)a6 machOUUID:(id)a7 sessionInviterDeviceVerifier:(id)a8 delegate:(id)a9;
- (HMDCameraSnapshotIDSRelayReceiver)initWithSessionID:(id)a3 logIdentifier:(id)a4 workQueue:(id)a5 machOUUID:(id)a6 sessionInviterDeviceVerifier:(id)a7 delegate:(id)a8;
- (HMDCameraSnapshotIDSRelayReceiverDelegate)delegate;
- (id)logIdentifier;
- (void)_didReceiveData:(id)a3 error:(id)a4;
- (void)_handleDataFromSocket:(id)a3;
- (void)_startDataReceive;
- (void)dealloc;
- (void)service:(id)a3 account:(id)a4 inviteReceivedForSession:(id)a5 fromID:(id)a6 withContext:(id)a7;
- (void)sessionEnded:(id)a3 withReason:(unsigned int)a4 error:(id)a5;
- (void)sessionStarted:(id)a3;
@end

@implementation HMDCameraSnapshotIDSRelayReceiver

- (HMDCameraSnapshotIDSRelayReceiverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
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
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Session %{public}@ has ended with reason: %{public}u and error: %{public}@", &v17, 0x26u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1030 underlyingError:v9];
  [(HMDCameraSnapshotIDSRelayReceiver *)v12 _didReceiveData:0 error:v15];

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
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Session %{public}@ has started", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraSnapshotIDSRelayReceiver *)v7 delegate];
  [v10 relayReceiverIDSSessionDidStart:v7];

  [(HMDCameraSnapshotIDSRelayReceiver *)v7 _startDataReceive];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 inviteReceivedForSession:(id)a5 fromID:(id)a6 withContext:(id)a7
{
  v91 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(v17);

  v18 = [HMDDeviceHandle deviceHandleForDestination:v15];
  if (!v18)
  {
    v50 = objc_autoreleasePoolPush();
    v51 = self;
    v52 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = HMFGetLogIdentifier();
      *buf = 138543618;
      v86 = v53;
      v87 = 2112;
      v88 = v15;
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

  v19 = [(HMDCameraSnapshotIDSRelayReceiver *)self sessionInviterDeviceVerifier];
  v20 = [v19 canAcceptInvitationFromDeviceWithHandle:v18];

  if ((v20 & 1) == 0)
  {
    v50 = objc_autoreleasePoolPush();
    v51 = self;
    v52 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      v53 = HMFGetLogIdentifier();
      *buf = 138543618;
      v86 = v53;
      v87 = 2112;
      v88 = v18;
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
  v23 = [v21 unarchivedObjectOfClasses:v22 fromData:v16 error:&v82];
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
      v74 = v14;
      v28 = [v24 objectForKeyedSubscript:@"kCameraSessionID"];
      context = v28;
      if (v28)
      {
        v29 = v28;
        v77 = v27;
        v30 = [(HMDCameraSnapshotIDSRelayReceiver *)self sessionInviterDeviceVerifier];
        v31 = [v30 canAcceptInvitationForSessionWithIdentifier:v29];

        v32 = objc_autoreleasePoolPush();
        v33 = self;
        v34 = HMFGetOSLogHandle();
        v35 = v34;
        if (v31)
        {
          v14 = v74;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v37 = v36 = v32;
            *buf = 138543874;
            v86 = v37;
            v87 = 2112;
            v88 = v74;
            v89 = 2112;
            v90 = v15;
            _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Received invitation for session %@ from %@", buf, 0x20u);

            v32 = v36;
          }

          objc_autoreleasePoolPop(v32);
          [(HMDCameraSnapshotIDSRelayReceiver *)v33 setIdsSession:v74];
          v38 = [(HMDCameraSnapshotIDSRelayReceiver *)v33 idsSession];
          v39 = [(HMDCameraSnapshotIDSRelay *)v33 workQueue];
          [v38 setDelegate:v33 queue:v39];

          v40 = [(HMDCameraSnapshotIDSRelayReceiver *)v33 machOUUID];

          if (v40)
          {
            v41 = [(HMDCameraSnapshotIDSRelayReceiver *)v33 idsSession];
            v83 = *MEMORY[0x277D18938];
            v73 = [(HMDCameraSnapshotIDSRelayReceiver *)v33 machOUUID];
            v42 = [v73 UUIDString];
            v84 = v42;
            v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
            [v41 setPreferences:v43];
          }

          v44 = [(HMDCameraSnapshotIDSRelayReceiver *)v33 idsSession];
          [v44 acceptInvitation];

          v45 = objc_autoreleasePoolPush();
          v46 = v33;
          v47 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            v48 = HMFGetLogIdentifier();
            *buf = 138543362;
            v86 = v48;
            _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, "%{public}@Accepted invitation", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v45);
          v49 = [(HMDCameraSnapshotIDSRelayReceiver *)v46 delegate];
          [v49 relayReceiverDidAcceptIDSInvitation:v46];
        }

        else
        {
          v14 = v74;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            HMFGetLogIdentifier();
            v71 = v70 = v32;
            *buf = 138543618;
            v86 = v71;
            v87 = 2112;
            v88 = context;
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
        v67 = self;
        v68 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v69 = v79 = v27;
          *buf = 138543618;
          v86 = v69;
          v87 = 2112;
          v88 = v24;
          _os_log_impl(&dword_2531F8000, v68, OS_LOG_TYPE_ERROR, "%{public}@Could not find camera session ID in payload: %@", buf, 0x16u);

          v27 = v79;
        }

        objc_autoreleasePoolPop(v66);
        v14 = v74;
      }
    }

    else
    {
      contexta = objc_autoreleasePoolPush();
      v61 = self;
      v62 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v63 = v78 = v27;
        v64 = objc_opt_class();
        *buf = 138543874;
        v86 = v63;
        v87 = 2112;
        v88 = v24;
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
    v58 = self;
    v59 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v60 = HMFGetLogIdentifier();
      *buf = 138543618;
      v86 = v60;
      v87 = 2112;
      v88 = v81;
      _os_log_impl(&dword_2531F8000, v59, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive payload from context data: %@", buf, 0x16u);

      v23 = 0;
    }

    objc_autoreleasePoolPop(v57);
  }

LABEL_39:
  v72 = *MEMORY[0x277D85DE8];
}

- (void)_didReceiveData:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDCameraSnapshotIDSRelayReceiver *)self socketSource];

  if (v9)
  {
    v10 = [(HMDCameraSnapshotIDSRelayReceiver *)self socketSource];
    dispatch_source_cancel(v10);

    [(HMDCameraSnapshotIDSRelayReceiver *)self setSocketSource:0];
  }

  v11 = [(HMDCameraSnapshotIDSRelayReceiver *)self delegate];
  [v11 relayReceiver:self didReceiveData:v7 error:v6];
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
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting the HMDCameraSnapshotIDSRelayReceiver", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDCameraSnapshotIDSRelayReceiver *)v4 idsSession];
  [v7 endSession];

  v8 = [(HMDCameraSnapshotIDSRelayReceiver *)v4 socketSource];

  if (v8)
  {
    v9 = [(HMDCameraSnapshotIDSRelayReceiver *)v4 socketSource];
    dispatch_source_cancel(v9);
  }

  v11.receiver = v4;
  v11.super_class = HMDCameraSnapshotIDSRelayReceiver;
  [(HMDCameraSnapshotIDSRelay *)&v11 dealloc];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleDataFromSocket:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraSnapshotIDSRelayReceiver *)self socketSource];

  if (!v6)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
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
    v7 = [(HMDCameraSnapshotIDSRelayReceiver *)self expectedByteCountData];
    v8 = 8 - [v7 length];

    v9 = [v4 length];
    v10 = [(HMDCameraSnapshotIDSRelayReceiver *)self expectedByteCountData];
    v11 = v10;
    if (v9 <= v8)
    {
      [v10 appendData:v4];
    }

    else
    {
      v12 = [v4 subdataWithRange:{0, v8}];
      [v11 appendData:v12];
    }

    v17 = [(HMDCameraSnapshotIDSRelayReceiver *)self expectedByteCountData];
    v18 = [v17 length];

    if (v18 > 7)
    {
      v19 = [(HMDCameraSnapshotIDSRelayReceiver *)self expectedByteCountData];
      -[HMDCameraSnapshotIDSRelayReceiver setExpectedByteCount:](self, "setExpectedByteCount:", *[v19 bytes]);

      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v41 = 138543618;
        v42 = v23;
        v43 = 2048;
        v44 = [(HMDCameraSnapshotIDSRelayReceiver *)v21 expectedByteCount];
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Setting expected byte count to %llu", &v41, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v24 = [v4 mutableCopy];
      [v24 replaceBytesInRange:0 withBytes:8 length:{0, 0}];

      v4 = v24;
      goto LABEL_12;
    }

    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v39 = [(HMDCameraSnapshotIDSRelayReceiver *)v14 expectedByteCountData];
      v41 = 138543618;
      v42 = v16;
      v43 = 2048;
      v44 = [v39 length];
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Only received %lu bytes that represent the expected byte count so far; will wait for more", &v41, 0x16u);

      goto LABEL_20;
    }

    goto LABEL_21;
  }

LABEL_12:
  v25 = [(HMDCameraSnapshotIDSRelayReceiver *)self relayData];
  [v25 appendData:v4];

  v26 = objc_autoreleasePoolPush();
  v27 = self;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = HMFGetLogIdentifier();
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDCameraSnapshotIDSRelayReceiver receivedByteCount](v27, "receivedByteCount")}];
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "length") + -[HMDCameraSnapshotIDSRelayReceiver receivedByteCount](v27, "receivedByteCount")}];
    v41 = 138543874;
    v42 = v29;
    v43 = 2112;
    v44 = v30;
    v45 = 2112;
    v46 = v31;
    _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Updating received byte count from %@ to %@", &v41, 0x20u);
  }

  objc_autoreleasePoolPop(v26);
  -[HMDCameraSnapshotIDSRelayReceiver setReceivedByteCount:](v27, "setReceivedByteCount:", -[HMDCameraSnapshotIDSRelayReceiver receivedByteCount](v27, "receivedByteCount") + [v4 length]);
  v32 = [(HMDCameraSnapshotIDSRelayReceiver *)v27 receivedByteCount];
  if (v32 == [(HMDCameraSnapshotIDSRelayReceiver *)v27 expectedByteCount])
  {
    v33 = objc_autoreleasePoolPush();
    v34 = v27;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = HMFGetLogIdentifier();
      v41 = 138543362;
      v42 = v36;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@All the bytes have been received, file transfer is complete", &v41, 0xCu);
    }

    objc_autoreleasePoolPop(v33);
    v37 = [(HMDCameraSnapshotIDSRelayReceiver *)v34 relayData];
    v38 = [v37 copy];
    [(HMDCameraSnapshotIDSRelayReceiver *)v34 _didReceiveData:v38 error:0];
  }

LABEL_22:

  v40 = *MEMORY[0x277D85DE8];
}

- (void)_startDataReceive
{
  v3 = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraSnapshotIDSRelayReceiver *)self idsSession];
  v5 = [v4 socket];
  v6 = [(HMDCameraSnapshotIDSRelay *)self workQueue];
  v7 = dispatch_source_create(MEMORY[0x277D85D28], v5, 0, v6);
  [(HMDCameraSnapshotIDSRelayReceiver *)self setSocketSource:v7];

  objc_initWeak(&location, self);
  v8 = [(HMDCameraSnapshotIDSRelayReceiver *)self socketSource];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __54__HMDCameraSnapshotIDSRelayReceiver__startDataReceive__block_invoke;
  v13 = &unk_279732FD8;
  objc_copyWeak(&v14, &location);
  dispatch_source_set_event_handler(v8, &v10);

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
  v2 = [(HMDCameraSnapshotIDSRelay *)self sessionID];
  v3 = [v2 description];

  return v3;
}

- (HMDCameraSnapshotIDSRelayReceiver)initWithSessionID:(id)a3 logIdentifier:(id)a4 workQueue:(id)a5 idsStreamService:(id)a6 machOUUID:(id)a7 sessionInviterDeviceVerifier:(id)a8 delegate:(id)a9
{
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v26.receiver = self;
  v26.super_class = HMDCameraSnapshotIDSRelayReceiver;
  v19 = [(HMDCameraSnapshotIDSRelay *)&v26 initWithSessionID:a3 logIdentifier:a4 workQueue:a5 idsStreamService:a6];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_machOUUID, a7);
    objc_storeWeak(&v20->_delegate, v18);
    v21 = [MEMORY[0x277CBEB28] data];
    relayData = v20->_relayData;
    v20->_relayData = v21;

    v23 = [MEMORY[0x277CBEB28] data];
    expectedByteCountData = v20->_expectedByteCountData;
    v20->_expectedByteCountData = v23;

    objc_storeStrong(&v20->_sessionInviterDeviceVerifier, a8);
  }

  return v20;
}

- (HMDCameraSnapshotIDSRelayReceiver)initWithSessionID:(id)a3 logIdentifier:(id)a4 workQueue:(id)a5 machOUUID:(id)a6 sessionInviterDeviceVerifier:(id)a7 delegate:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = +[HMDIDSServiceManager sharedManager];
  v21 = [v20 serviceWithName:@"com.apple.private.alloy.willow.stream"];
  v22 = [(HMDCameraSnapshotIDSRelayReceiver *)self initWithSessionID:v19 logIdentifier:v18 workQueue:v17 idsStreamService:v21 machOUUID:v16 sessionInviterDeviceVerifier:v15 delegate:v14];

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