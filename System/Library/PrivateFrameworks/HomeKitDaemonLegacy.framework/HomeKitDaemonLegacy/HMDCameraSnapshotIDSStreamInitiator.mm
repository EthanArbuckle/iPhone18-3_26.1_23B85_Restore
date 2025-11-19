@interface HMDCameraSnapshotIDSStreamInitiator
+ (id)logCategory;
- (HMDCameraSnapshotIDSStreamInitiator)initWithSessionID:(id)a3 workQueue:(id)a4 destinationID:(id)a5 delegate:(id)a6;
- (HMDCameraSnapshotIDSStreamInitiator)initWithSessionID:(id)a3 workQueue:(id)a4 proxyService:(id)a5 destinationID:(id)a6 delegate:(id)a7;
- (HMDCameraSnapshotIDSStreamInitiatorDelegate)delegate;
- (id)logIdentifier;
- (void)_callFileTransferFailedWithError:(id)a3;
- (void)dealloc;
- (void)sendFile:(id)a3;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
@end

@implementation HMDCameraSnapshotIDSStreamInitiator

- (HMDCameraSnapshotIDSStreamInitiatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v33 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = [(HMDCameraSnapshotIDSStream *)self workQueue];
  dispatch_assert_queue_V2(v15);

  v16 = [(HMDCameraSnapshotIDSStreamInitiator *)self sendFileIdentifier];
  if (v16)
  {
    v17 = v16;
    v18 = [(HMDCameraSnapshotIDSStreamInitiator *)self sendFileIdentifier];
    v19 = [v13 isEqualToString:v18];

    if (v19)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      v23 = v22;
      if (v14)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          v27 = 138543874;
          v28 = v24;
          v29 = 2112;
          v30 = v13;
          v31 = 2112;
          v32 = v14;
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Received confirmation from IDS that the file send failed for identifier %@: %@", &v27, 0x20u);
        }

        objc_autoreleasePoolPop(v20);
        [(HMDCameraSnapshotIDSStreamInitiator *)v21 _callFileTransferFailedWithError:v14];
      }

      else
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          v27 = 138543618;
          v28 = v25;
          v29 = 2112;
          v30 = v13;
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Received confirmation from IDS that the file send succeeded for identifier: %@", &v27, 0x16u);
        }

        objc_autoreleasePoolPop(v20);
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  v2 = [(HMDCameraSnapshotIDSStream *)self sessionID];
  v3 = [v2 description];

  return v3;
}

- (void)_callFileTransferFailedWithError:(id)a3
{
  v6 = a3;
  v4 = [(HMDCameraSnapshotIDSStream *)self workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDCameraSnapshotIDSStreamInitiator *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 streamInitiator:self didFailToSendFileWithError:v6];
  }
}

- (void)sendFile:(id)a3
{
  v49[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraSnapshotIDSStream *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = MEMORY[0x277CBEBC0];
  v7 = [v4 filePath];
  v8 = [v6 fileURLWithPath:v7];

  v9 = MEMORY[0x277CBEB98];
  v10 = [(HMDCameraSnapshotIDSStreamInitiator *)self destinationID];
  v11 = [v9 setWithObject:v10];

  v48 = *MEMORY[0x277D185C0];
  v49[0] = MEMORY[0x277CBEC38];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
  v46[0] = @"kCameraSessionID";
  v13 = [(HMDCameraSnapshotIDSStream *)self sessionID];
  v14 = [v13 sessionID];
  v47[0] = v14;
  v46[1] = *MEMORY[0x277CD26B0];
  v15 = [v4 dateCaptured];
  v47[1] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];

  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543874;
    v41 = v20;
    v42 = 2112;
    v43 = v8;
    v44 = 2112;
    v45 = v11;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Sending resource at URL %@ to destinations: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v17);
  v21 = [(HMDCameraSnapshotIDSStream *)v18 idsProxyService];
  v38 = 0;
  v39 = 0;
  v37 = v11;
  v22 = v11;
  v23 = v12;
  v24 = [v21 sendResourceAtURL:v8 metadata:v16 toDestinations:v22 priority:300 options:v12 identifier:&v39 error:&v38];
  v25 = v39;
  v26 = v38;

  if (v24)
  {
    [(HMDCameraSnapshotIDSStreamInitiator *)v18 setSendFileIdentifier:v25];
    v27 = objc_autoreleasePoolPush();
    v28 = v18;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v30;
      v42 = 2112;
      v43 = v25;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Sent resource with identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v31 = [(HMDCameraSnapshotIDSStream *)v28 sessionID];
    [v31 markMilestoneFor:@"IDSTransferSentImage"];
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    v33 = v18;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543874;
      v41 = v35;
      v42 = 2112;
      v43 = v8;
      v44 = 2112;
      v45 = v26;
      _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to send file at URL %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v32);
    [(HMDCameraSnapshotIDSStreamInitiator *)v33 _callFileTransferFailedWithError:v26];
  }

  v36 = *MEMORY[0x277D85DE8];
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
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating HMDCameraSnapshotIDSStreamInitiator", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = v4;
  v8.super_class = HMDCameraSnapshotIDSStreamInitiator;
  [(HMDCameraSnapshotIDSStream *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDCameraSnapshotIDSStreamInitiator)initWithSessionID:(id)a3 workQueue:(id)a4 proxyService:(id)a5 destinationID:(id)a6 delegate:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v12)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v13)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v14)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!v15)
  {
LABEL_11:
    v23 = _HMFPreconditionFailure();
    return [(HMDCameraSnapshotIDSStreamInitiator *)v23 initWithSessionID:v24 workQueue:v25 destinationID:v26 delegate:v27, v28];
  }

  v17 = v16;
  v29.receiver = self;
  v29.super_class = HMDCameraSnapshotIDSStreamInitiator;
  v18 = [(HMDCameraSnapshotIDSStream *)&v29 initWithSessionID:v12 workQueue:v13 proxyService:v14];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_delegate, v17);
    v20 = [v15 copy];
    destinationID = v19->_destinationID;
    v19->_destinationID = v20;
  }

  return v19;
}

- (HMDCameraSnapshotIDSStreamInitiator)initWithSessionID:(id)a3 workQueue:(id)a4 destinationID:(id)a5 delegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    _HMFPreconditionFailure();
    goto LABEL_6;
  }

  if (!v11)
  {
LABEL_6:
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (v12)
  {
    v14 = v13;
    v15 = +[HMDIDSServiceManager sharedManager];
    v16 = [v15 serviceWithName:@"com.apple.private.alloy.willow.proxy"];
    v17 = [(HMDCameraSnapshotIDSStreamInitiator *)self initWithSessionID:v10 workQueue:v11 proxyService:v16 destinationID:v12 delegate:v14];

    return v17;
  }

LABEL_7:
  v19 = _HMFPreconditionFailure();
  return +[(HMDCameraSnapshotIDSStreamInitiator *)v19];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_192939 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_192939, &__block_literal_global_192940);
  }

  v3 = logCategory__hmf_once_v5_192941;

  return v3;
}

uint64_t __50__HMDCameraSnapshotIDSStreamInitiator_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_192941;
  logCategory__hmf_once_v5_192941 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end