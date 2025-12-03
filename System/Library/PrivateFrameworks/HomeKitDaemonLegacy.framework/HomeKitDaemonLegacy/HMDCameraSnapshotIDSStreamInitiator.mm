@interface HMDCameraSnapshotIDSStreamInitiator
+ (id)logCategory;
- (HMDCameraSnapshotIDSStreamInitiator)initWithSessionID:(id)d workQueue:(id)queue destinationID:(id)iD delegate:(id)delegate;
- (HMDCameraSnapshotIDSStreamInitiator)initWithSessionID:(id)d workQueue:(id)queue proxyService:(id)service destinationID:(id)iD delegate:(id)delegate;
- (HMDCameraSnapshotIDSStreamInitiatorDelegate)delegate;
- (id)logIdentifier;
- (void)_callFileTransferFailedWithError:(id)error;
- (void)dealloc;
- (void)sendFile:(id)file;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
@end

@implementation HMDCameraSnapshotIDSStreamInitiator

- (HMDCameraSnapshotIDSStreamInitiatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  v33 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  workQueue = [(HMDCameraSnapshotIDSStream *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  sendFileIdentifier = [(HMDCameraSnapshotIDSStreamInitiator *)self sendFileIdentifier];
  if (sendFileIdentifier)
  {
    v17 = sendFileIdentifier;
    sendFileIdentifier2 = [(HMDCameraSnapshotIDSStreamInitiator *)self sendFileIdentifier];
    v19 = [identifierCopy isEqualToString:sendFileIdentifier2];

    if (v19)
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy = self;
      v22 = HMFGetOSLogHandle();
      v23 = v22;
      if (errorCopy)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          v27 = 138543874;
          v28 = v24;
          v29 = 2112;
          v30 = identifierCopy;
          v31 = 2112;
          v32 = errorCopy;
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Received confirmation from IDS that the file send failed for identifier %@: %@", &v27, 0x20u);
        }

        objc_autoreleasePoolPop(v20);
        [(HMDCameraSnapshotIDSStreamInitiator *)selfCopy _callFileTransferFailedWithError:errorCopy];
      }

      else
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          v27 = 138543618;
          v28 = v25;
          v29 = 2112;
          v30 = identifierCopy;
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
  sessionID = [(HMDCameraSnapshotIDSStream *)self sessionID];
  v3 = [sessionID description];

  return v3;
}

- (void)_callFileTransferFailedWithError:(id)error
{
  errorCopy = error;
  workQueue = [(HMDCameraSnapshotIDSStream *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  delegate = [(HMDCameraSnapshotIDSStreamInitiator *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate streamInitiator:self didFailToSendFileWithError:errorCopy];
  }
}

- (void)sendFile:(id)file
{
  v49[1] = *MEMORY[0x277D85DE8];
  fileCopy = file;
  workQueue = [(HMDCameraSnapshotIDSStream *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = MEMORY[0x277CBEBC0];
  filePath = [fileCopy filePath];
  v8 = [v6 fileURLWithPath:filePath];

  v9 = MEMORY[0x277CBEB98];
  destinationID = [(HMDCameraSnapshotIDSStreamInitiator *)self destinationID];
  v11 = [v9 setWithObject:destinationID];

  v48 = *MEMORY[0x277D185C0];
  v49[0] = MEMORY[0x277CBEC38];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
  v46[0] = @"kCameraSessionID";
  sessionID = [(HMDCameraSnapshotIDSStream *)self sessionID];
  v13SessionID = [sessionID sessionID];
  v47[0] = v13SessionID;
  v46[1] = *MEMORY[0x277CD26B0];
  dateCaptured = [fileCopy dateCaptured];
  v47[1] = dateCaptured;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];

  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
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
  idsProxyService = [(HMDCameraSnapshotIDSStream *)selfCopy idsProxyService];
  v38 = 0;
  v39 = 0;
  v37 = v11;
  v22 = v11;
  v23 = v12;
  v24 = [idsProxyService sendResourceAtURL:v8 metadata:v16 toDestinations:v22 priority:300 options:v12 identifier:&v39 error:&v38];
  v25 = v39;
  v26 = v38;

  if (v24)
  {
    [(HMDCameraSnapshotIDSStreamInitiator *)selfCopy setSendFileIdentifier:v25];
    v27 = objc_autoreleasePoolPush();
    v28 = selfCopy;
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
    sessionID2 = [(HMDCameraSnapshotIDSStream *)v28 sessionID];
    [sessionID2 markMilestoneFor:@"IDSTransferSentImage"];
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    v33 = selfCopy;
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
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating HMDCameraSnapshotIDSStreamInitiator", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = selfCopy;
  v8.super_class = HMDCameraSnapshotIDSStreamInitiator;
  [(HMDCameraSnapshotIDSStream *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDCameraSnapshotIDSStreamInitiator)initWithSessionID:(id)d workQueue:(id)queue proxyService:(id)service destinationID:(id)iD delegate:(id)delegate
{
  dCopy = d;
  queueCopy = queue;
  serviceCopy = service;
  iDCopy = iD;
  delegateCopy = delegate;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!queueCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!serviceCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!iDCopy)
  {
LABEL_11:
    v23 = _HMFPreconditionFailure();
    return [(HMDCameraSnapshotIDSStreamInitiator *)v23 initWithSessionID:v24 workQueue:v25 destinationID:v26 delegate:v27, v28];
  }

  v17 = delegateCopy;
  v29.receiver = self;
  v29.super_class = HMDCameraSnapshotIDSStreamInitiator;
  v18 = [(HMDCameraSnapshotIDSStream *)&v29 initWithSessionID:dCopy workQueue:queueCopy proxyService:serviceCopy];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_delegate, v17);
    v20 = [iDCopy copy];
    destinationID = v19->_destinationID;
    v19->_destinationID = v20;
  }

  return v19;
}

- (HMDCameraSnapshotIDSStreamInitiator)initWithSessionID:(id)d workQueue:(id)queue destinationID:(id)iD delegate:(id)delegate
{
  dCopy = d;
  queueCopy = queue;
  iDCopy = iD;
  delegateCopy = delegate;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_6;
  }

  if (!queueCopy)
  {
LABEL_6:
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (iDCopy)
  {
    v14 = delegateCopy;
    v15 = +[HMDIDSServiceManager sharedManager];
    v16 = [v15 serviceWithName:@"com.apple.private.alloy.willow.proxy"];
    v17 = [(HMDCameraSnapshotIDSStreamInitiator *)self initWithSessionID:dCopy workQueue:queueCopy proxyService:v16 destinationID:iDCopy delegate:v14];

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