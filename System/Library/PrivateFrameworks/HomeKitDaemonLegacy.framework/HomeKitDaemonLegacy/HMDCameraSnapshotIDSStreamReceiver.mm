@interface HMDCameraSnapshotIDSStreamReceiver
+ (id)logCategory;
- (HMDCameraSnapshotIDSStreamReceiver)initWithSessionID:(id)d workQueue:(id)queue delegate:(id)delegate remoteDevice:(id)device;
- (HMDCameraSnapshotIDSStreamReceiver)initWithSessionID:(id)d workQueue:(id)queue proxyService:(id)service delegate:(id)delegate remoteDevice:(id)device;
- (HMDCameraSnapshotIDSStreamReceiverDelegate)delegate;
- (id)logIdentifier;
- (void)_callFileReceivedAtURL:(id)l dateCaptured:(id)captured error:(id)error;
- (void)dealloc;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
@end

@implementation HMDCameraSnapshotIDSStreamReceiver

- (HMDCameraSnapshotIDSStreamReceiverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  v68 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  lCopy = l;
  metadataCopy = metadata;
  dCopy = d;
  contextCopy = context;
  workQueue = [(HMDCameraSnapshotIDSStream *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v20 = [metadataCopy hmf_stringForKey:@"kCameraSessionID"];
  sessionID = [(HMDCameraSnapshotIDSStream *)self sessionID];
  v21SessionID = [sessionID sessionID];
  v23 = [v20 isEqualToString:v21SessionID];

  if (v23)
  {
    v24 = [HMDDeviceHandle deviceHandleForDestination:dCopy];
    if (v24)
    {
      v53 = serviceCopy;
      v54 = accountCopy;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      remoteDevice = [(HMDCameraSnapshotIDSStreamReceiver *)self remoteDevice];
      handles = [remoteDevice handles];

      v27 = [handles countByEnumeratingWithState:&v57 objects:v67 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v58;
        while (2)
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v58 != v29)
            {
              objc_enumerationMutation(handles);
            }

            if ([*(*(&v57 + 1) + 8 * i) isEqual:v24])
            {

              v40 = [metadataCopy hmf_dateForKey:*MEMORY[0x277CD26B0]];
              if (v40)
              {
                sessionID2 = [(HMDCameraSnapshotIDSStream *)self sessionID];
                [sessionID2 markMilestoneFor:@"IDSTransferReceivedImage"];

                v39 = lCopy;
                [(HMDCameraSnapshotIDSStreamReceiver *)self _callFileReceivedAtURL:lCopy dateCaptured:v40 error:0];
                serviceCopy = v53;
                accountCopy = v54;
              }

              else
              {
                v46 = objc_autoreleasePoolPush();
                selfCopy = self;
                v48 = HMFGetOSLogHandle();
                serviceCopy = v53;
                if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                {
                  HMFGetLogIdentifier();
                  v49 = v52 = v46;
                  *buf = 138543362;
                  v62 = v49;
                  _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@Could not find the snapshot capture date in the IDS delegate callback metadata", buf, 0xCu);

                  v46 = v52;
                }

                objc_autoreleasePoolPop(v46);
                v50 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1035];
                [(HMDCameraSnapshotIDSStreamReceiver *)selfCopy _callFileReceivedAtURL:0 dateCaptured:0 error:v50];

                accountCopy = v54;
                v39 = lCopy;
              }

              goto LABEL_27;
            }
          }

          v28 = [handles countByEnumeratingWithState:&v57 objects:v67 count:16];
          if (v28)
          {
            continue;
          }

          break;
        }
      }

      v31 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543874;
        v62 = v34;
        v63 = 2112;
        v64 = v24;
        v65 = 2112;
        v66 = dCopy;
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Ignoring incoming snapshot resource from unexpected device handle: %@ fromID: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v31);
      serviceCopy = v53;
      accountCopy = v54;
    }

    else
    {
      v42 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v45 = v55 = accountCopy;
        *buf = 138543618;
        v62 = v45;
        v63 = 2112;
        v64 = dCopy;
        _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, "%{public}@Could not determine device handle for fromID: %@", buf, 0x16u);

        accountCopy = v55;
      }

      objc_autoreleasePoolPop(v42);
    }

    v39 = lCopy;
LABEL_27:
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543618;
      v62 = v38;
      v63 = 2112;
      v64 = v20;
      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring incoming snapshot resource with unexpected request identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    v39 = lCopy;
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  sessionID = [(HMDCameraSnapshotIDSStream *)self sessionID];
  v3 = [sessionID description];

  return v3;
}

- (void)_callFileReceivedAtURL:(id)l dateCaptured:(id)captured error:(id)error
{
  lCopy = l;
  capturedCopy = captured;
  errorCopy = error;
  workQueue = [(HMDCameraSnapshotIDSStream *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  delegate = [(HMDCameraSnapshotIDSStreamReceiver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate streamReceiver:self didReceiveFileAtURL:lCopy dateCaptured:capturedCopy error:errorCopy];
  }
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
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting the HMDCameraSnapshotIDSStreamReceiver", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = selfCopy;
  v8.super_class = HMDCameraSnapshotIDSStreamReceiver;
  [(HMDCameraSnapshotIDSStream *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDCameraSnapshotIDSStreamReceiver)initWithSessionID:(id)d workQueue:(id)queue proxyService:(id)service delegate:(id)delegate remoteDevice:(id)device
{
  dCopy = d;
  queueCopy = queue;
  serviceCopy = service;
  delegateCopy = delegate;
  deviceCopy = device;
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

  v17 = deviceCopy;
  if (!deviceCopy)
  {
LABEL_11:
    v21 = _HMFPreconditionFailure();
    return [(HMDCameraSnapshotIDSStreamReceiver *)v21 initWithSessionID:v22 workQueue:v23 delegate:v24 remoteDevice:v25, v26];
  }

  v27.receiver = self;
  v27.super_class = HMDCameraSnapshotIDSStreamReceiver;
  v18 = [(HMDCameraSnapshotIDSStream *)&v27 initWithSessionID:dCopy workQueue:queueCopy proxyService:serviceCopy];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_delegate, delegateCopy);
    objc_storeStrong(&v19->_remoteDevice, device);
  }

  return v19;
}

- (HMDCameraSnapshotIDSStreamReceiver)initWithSessionID:(id)d workQueue:(id)queue delegate:(id)delegate remoteDevice:(id)device
{
  dCopy = d;
  queueCopy = queue;
  delegateCopy = delegate;
  deviceCopy = device;
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

  v14 = deviceCopy;
  if (deviceCopy)
  {
    v15 = +[HMDIDSServiceManager sharedManager];
    v16 = [v15 serviceWithName:@"com.apple.private.alloy.willow.proxy"];
    v17 = [(HMDCameraSnapshotIDSStreamReceiver *)self initWithSessionID:dCopy workQueue:queueCopy proxyService:v16 delegate:delegateCopy remoteDevice:v14];

    return v17;
  }

LABEL_7:
  v19 = _HMFPreconditionFailure();
  return +[(HMDCameraSnapshotIDSStreamReceiver *)v19];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_144838 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_144838, &__block_literal_global_144839);
  }

  v3 = logCategory__hmf_once_v2_144840;

  return v3;
}

uint64_t __49__HMDCameraSnapshotIDSStreamReceiver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_144840;
  logCategory__hmf_once_v2_144840 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end