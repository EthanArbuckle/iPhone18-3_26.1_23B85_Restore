@interface HMDCameraSnapshotIDSStreamReceiver
+ (id)logCategory;
- (HMDCameraSnapshotIDSStreamReceiver)initWithSessionID:(id)a3 workQueue:(id)a4 delegate:(id)a5 remoteDevice:(id)a6;
- (HMDCameraSnapshotIDSStreamReceiver)initWithSessionID:(id)a3 workQueue:(id)a4 proxyService:(id)a5 delegate:(id)a6 remoteDevice:(id)a7;
- (HMDCameraSnapshotIDSStreamReceiverDelegate)delegate;
- (id)logIdentifier;
- (void)_callFileReceivedAtURL:(id)a3 dateCaptured:(id)a4 error:(id)a5;
- (void)dealloc;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8;
@end

@implementation HMDCameraSnapshotIDSStreamReceiver

- (HMDCameraSnapshotIDSStreamReceiverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8
{
  v68 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v56 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [(HMDCameraSnapshotIDSStream *)self workQueue];
  dispatch_assert_queue_V2(v19);

  v20 = [v16 hmf_stringForKey:@"kCameraSessionID"];
  v21 = [(HMDCameraSnapshotIDSStream *)self sessionID];
  v22 = [v21 sessionID];
  v23 = [v20 isEqualToString:v22];

  if (v23)
  {
    v24 = [HMDDeviceHandle deviceHandleForDestination:v17];
    if (v24)
    {
      v53 = v14;
      v54 = v15;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v25 = [(HMDCameraSnapshotIDSStreamReceiver *)self remoteDevice];
      v26 = [v25 handles];

      v27 = [v26 countByEnumeratingWithState:&v57 objects:v67 count:16];
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
              objc_enumerationMutation(v26);
            }

            if ([*(*(&v57 + 1) + 8 * i) isEqual:v24])
            {

              v40 = [v16 hmf_dateForKey:*MEMORY[0x277CD26B0]];
              if (v40)
              {
                v41 = [(HMDCameraSnapshotIDSStream *)self sessionID];
                [v41 markMilestoneFor:@"IDSTransferReceivedImage"];

                v39 = v56;
                [(HMDCameraSnapshotIDSStreamReceiver *)self _callFileReceivedAtURL:v56 dateCaptured:v40 error:0];
                v14 = v53;
                v15 = v54;
              }

              else
              {
                v46 = objc_autoreleasePoolPush();
                v47 = self;
                v48 = HMFGetOSLogHandle();
                v14 = v53;
                if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                {
                  HMFGetLogIdentifier();
                  v49 = v52 = v46;
                  *buf = 138543362;
                  v62 = v49;
                  _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, "%{public}@Could not find the snapshot capture date in the IDS delegate callback metadata", buf, 0xCu);

                  v46 = v52;
                }

                objc_autoreleasePoolPop(v46);
                v50 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1035];
                [(HMDCameraSnapshotIDSStreamReceiver *)v47 _callFileReceivedAtURL:0 dateCaptured:0 error:v50];

                v15 = v54;
                v39 = v56;
              }

              goto LABEL_27;
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v57 objects:v67 count:16];
          if (v28)
          {
            continue;
          }

          break;
        }
      }

      v31 = objc_autoreleasePoolPush();
      v32 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543874;
        v62 = v34;
        v63 = 2112;
        v64 = v24;
        v65 = 2112;
        v66 = v17;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Ignoring incoming snapshot resource from unexpected device handle: %@ fromID: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v31);
      v14 = v53;
      v15 = v54;
    }

    else
    {
      v42 = objc_autoreleasePoolPush();
      v43 = self;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v45 = v55 = v15;
        *buf = 138543618;
        v62 = v45;
        v63 = 2112;
        v64 = v17;
        _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@Could not determine device handle for fromID: %@", buf, 0x16u);

        v15 = v55;
      }

      objc_autoreleasePoolPop(v42);
    }

    v39 = v56;
LABEL_27:
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    v36 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543618;
      v62 = v38;
      v63 = 2112;
      v64 = v20;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring incoming snapshot resource with unexpected request identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    v39 = v56;
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  v2 = [(HMDCameraSnapshotIDSStream *)self sessionID];
  v3 = [v2 description];

  return v3;
}

- (void)_callFileReceivedAtURL:(id)a3 dateCaptured:(id)a4 error:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(HMDCameraSnapshotIDSStream *)self workQueue];
  dispatch_assert_queue_V2(v10);

  v11 = [(HMDCameraSnapshotIDSStreamReceiver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v11 streamReceiver:self didReceiveFileAtURL:v12 dateCaptured:v8 error:v9];
  }
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting the HMDCameraSnapshotIDSStreamReceiver", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = v4;
  v8.super_class = HMDCameraSnapshotIDSStreamReceiver;
  [(HMDCameraSnapshotIDSStream *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDCameraSnapshotIDSStreamReceiver)initWithSessionID:(id)a3 workQueue:(id)a4 proxyService:(id)a5 delegate:(id)a6 remoteDevice:(id)a7
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

  v17 = v16;
  if (!v16)
  {
LABEL_11:
    v21 = _HMFPreconditionFailure();
    return [(HMDCameraSnapshotIDSStreamReceiver *)v21 initWithSessionID:v22 workQueue:v23 delegate:v24 remoteDevice:v25, v26];
  }

  v27.receiver = self;
  v27.super_class = HMDCameraSnapshotIDSStreamReceiver;
  v18 = [(HMDCameraSnapshotIDSStream *)&v27 initWithSessionID:v12 workQueue:v13 proxyService:v14];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_delegate, v15);
    objc_storeStrong(&v19->_remoteDevice, a7);
  }

  return v19;
}

- (HMDCameraSnapshotIDSStreamReceiver)initWithSessionID:(id)a3 workQueue:(id)a4 delegate:(id)a5 remoteDevice:(id)a6
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

  v14 = v13;
  if (v13)
  {
    v15 = +[HMDIDSServiceManager sharedManager];
    v16 = [v15 serviceWithName:@"com.apple.private.alloy.willow.proxy"];
    v17 = [(HMDCameraSnapshotIDSStreamReceiver *)self initWithSessionID:v10 workQueue:v11 proxyService:v16 delegate:v12 remoteDevice:v14];

    return v17;
  }

LABEL_7:
  v19 = _HMFPreconditionFailure();
  return +[(HMDCameraSnapshotIDSStreamReceiver *)v19];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_217686 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_217686, &__block_literal_global_217687);
  }

  v3 = logCategory__hmf_once_v2_217688;

  return v3;
}

void __49__HMDCameraSnapshotIDSStreamReceiver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_217688;
  logCategory__hmf_once_v2_217688 = v1;
}

@end