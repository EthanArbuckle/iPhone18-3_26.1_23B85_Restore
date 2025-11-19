@interface HMDCameraIDSSessionReceiver
+ (id)logCategory;
- (HMDCameraIDSSessionReceiver)initWithSessionID:(id)a3 workQueue:(id)a4 idsStreamService:(id)a5 sessionInviterDeviceVerifier:(id)a6 delegate:(id)a7 applicationVendorIDStore:(id)a8;
- (HMDCameraIDSSessionReceiver)initWithSessionID:(id)a3 workQueue:(id)a4 sessionInviterDeviceVerifier:(id)a5 delegate:(id)a6;
- (HMDCameraIDSSessionReceiverDelegate)delegate;
- (NSString)remoteDestination;
- (id)logIdentifier;
- (void)_callSessionEndedWithError:(id)a3;
- (void)_callSessionSetup:(id)a3;
- (void)service:(id)a3 account:(id)a4 inviteReceivedForSession:(id)a5 fromID:(id)a6 withContext:(id)a7;
- (void)sessionEnded:(id)a3 withReason:(unsigned int)a4 error:(id)a5;
- (void)sessionStarted:(id)a3;
@end

@implementation HMDCameraIDSSessionReceiver

- (HMDCameraIDSSessionReceiverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDCameraIDSSessionHandler *)self sessionID];
  v3 = [v2 description];

  return v3;
}

- (void)sessionEnded:(id)a3 withReason:(unsigned int)a4 error:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(v10);

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (v9)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v22 = 138544130;
      v23 = v15;
      v24 = 2112;
      v25 = v8;
      v26 = 1024;
      v27 = a4;
      v28 = 2112;
      v29 = v9;
      v16 = "%{public}@Session %@ has failed with reason: %u and error: %@";
      v17 = v14;
      v18 = OS_LOG_TYPE_ERROR;
      v19 = 38;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v17, v18, v16, &v22, v19);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v22 = 138543874;
    v23 = v15;
    v24 = 2112;
    v25 = v8;
    v26 = 1024;
    v27 = a4;
    v16 = "%{public}@Session %@ has ended with reason: %u";
    v17 = v14;
    v18 = OS_LOG_TYPE_INFO;
    v19 = 28;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v11);
  v20 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1030 underlyingError:v9];
  [(HMDCameraIDSSessionReceiver *)v12 _callSessionEndedWithError:v20];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)sessionStarted:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraIDSSessionHandler *)self workQueue];
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
  v10 = [(HMDCameraIDSSessionHandler *)v7 sessionID];
  [v10 markMilestoneFor:@"IDSSessionStartedOnReceiver"];

  [(HMDCameraIDSSessionReceiver *)v7 _callSessionSetup:0];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 inviteReceivedForSession:(id)a5 fromID:(id)a6 withContext:(id)a7
{
  v87 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(v17);

  v18 = [HMDDeviceHandle deviceHandleForDestination:v15];
  if (!v18)
  {
    v44 = objc_autoreleasePoolPush();
    v45 = self;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = HMFGetLogIdentifier();
      *buf = 138543874;
      v82 = v47;
      v83 = 2112;
      v84 = v14;
      v85 = 2112;
      v86 = v15;
      v48 = "%{public}@Cannot handle session %@: could not determine device handle for fromID: %@";
      v49 = v46;
      v50 = OS_LOG_TYPE_ERROR;
LABEL_17:
      _os_log_impl(&dword_2531F8000, v49, v50, v48, buf, 0x20u);
    }

LABEL_18:

    objc_autoreleasePoolPop(v44);
    goto LABEL_34;
  }

  v19 = [(HMDCameraIDSSessionReceiver *)self sessionInviterDeviceVerifier];
  v20 = [v19 canAcceptInvitationFromDeviceWithHandle:v18];

  if ((v20 & 1) == 0)
  {
    v44 = objc_autoreleasePoolPush();
    v45 = self;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v47 = HMFGetLogIdentifier();
      *buf = 138543874;
      v82 = v47;
      v83 = 2112;
      v84 = v14;
      v85 = 2112;
      v86 = v18;
      v48 = "%{public}@Cannot handle session %@: sender device handler was unexpected: %@";
      v49 = v46;
      v50 = OS_LOG_TYPE_INFO;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v21 = MEMORY[0x277CCAAC8];
  v22 = getIDSSessionOptionsAllowedClasses();
  v78 = 0;
  v23 = [v21 unarchivedObjectOfClasses:v22 fromData:v16 error:&v78];
  v77 = v78;

  v76 = v23;
  if (v23)
  {
    v75 = v12;
    v24 = v23;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;

    v74 = v26;
    v27 = [v26 objectForKeyedSubscript:@"kCameraSessionID"];
    v28 = [(HMDCameraIDSSessionReceiver *)self sessionInviterDeviceVerifier];
    LOBYTE(v26) = [v28 canAcceptInvitationForSessionWithIdentifier:v27];

    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    v32 = v31;
    v73 = v27;
    if (v26)
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543874;
        v82 = v33;
        v83 = 2112;
        v84 = v14;
        v85 = 2112;
        v86 = v15;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Received invitation for session %@ from %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v29);
      [(HMDCameraIDSSessionHandler *)v30 setIdsSession:v14];
      v34 = [(HMDCameraIDSSessionHandler *)v30 idsSession];
      v35 = [(HMDCameraIDSSessionHandler *)v30 workQueue];
      [v34 setDelegate:v30 queue:v35];

      v36 = [(HMDCameraIDSSessionHandler *)v30 sessionID];
      v37 = [v36 hostProcessBundleIdentifier];

      if (v37)
      {
        v38 = [(HMDCameraIDSSessionReceiver *)v30 applicationVendorIDStore];
        v39 = [v38 machOUUIDForApplicationBundleID:v37];

        if (v39)
        {
          v40 = [(HMDCameraIDSSessionHandler *)v30 idsSession];
          v79 = *MEMORY[0x277D18938];
          [v39 UUIDString];
          v70 = v39;
          v42 = v41 = v37;
          v80 = v42;
          v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
          [v40 setPreferences:v43];

          v37 = v41;
          v39 = v70;
        }

        else
        {
          v57 = objc_autoreleasePoolPush();
          v71 = v30;
          v58 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v59 = v69 = v57;
            *buf = 138543618;
            v82 = v59;
            v83 = 2112;
            v84 = v37;
            _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_INFO, "%{public}@Could not find machO UUID for host process bundle identifier: %@", buf, 0x16u);

            v57 = v69;
          }

          objc_autoreleasePoolPop(v57);
        }
      }

      v60 = objc_autoreleasePoolPush();
      v61 = v30;
      v62 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v63 = v72 = v60;
        [(HMDCameraIDSSessionHandler *)v61 idsSession];
        v65 = v64 = v37;
        *buf = 138543618;
        v82 = v63;
        v83 = 2112;
        v84 = v65;
        _os_log_impl(&dword_2531F8000, v62, OS_LOG_TYPE_INFO, "%{public}@Accepting invitation for session %@", buf, 0x16u);

        v37 = v64;
        v60 = v72;
      }

      v51 = v13;

      objc_autoreleasePoolPop(v60);
      v66 = [(HMDCameraIDSSessionHandler *)v61 idsSession];
      [v66 acceptInvitation];

      v67 = [(HMDCameraIDSSessionHandler *)v61 sessionID];
      [v67 markMilestoneFor:@"IDSSessionInvitationReceived"];
    }

    else
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v56 = HMFGetLogIdentifier();
        *buf = 138543874;
        v82 = v56;
        v83 = 2112;
        v84 = v14;
        v85 = 2112;
        v86 = v27;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_DEBUG, "%{public}@Cannot handle session %@: camera session ID is not relevant: %@", buf, 0x20u);
      }

      v51 = v13;

      objc_autoreleasePoolPop(v29);
    }

    v12 = v75;
  }

  else
  {
    v51 = v13;
    v52 = objc_autoreleasePoolPush();
    v53 = self;
    v54 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = HMFGetLogIdentifier();
      *buf = 138543874;
      v82 = v55;
      v83 = 2112;
      v84 = v14;
      v85 = 2112;
      v86 = v77;
      _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_ERROR, "%{public}@Cannot handle session %@: failed to unarchive request id from context: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v52);
  }

  v13 = v51;
LABEL_34:

  v68 = *MEMORY[0x277D85DE8];
}

- (void)_callSessionEndedWithError:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling didEndSession delegate with error %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraIDSSessionReceiver *)v7 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 sessionReceiver:v7 didEndSessionWithError:v4];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_callSessionSetup:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling didSetup delegate with error %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraIDSSessionReceiver *)v7 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 sessionReceiver:v7 didSetUpWithError:v4];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (NSString)remoteDestination
{
  v3 = [(HMDCameraIDSSessionHandler *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraIDSSessionHandler *)self idsSession];
  v5 = [v4 destination];

  return v5;
}

- (HMDCameraIDSSessionReceiver)initWithSessionID:(id)a3 workQueue:(id)a4 idsStreamService:(id)a5 sessionInviterDeviceVerifier:(id)a6 delegate:(id)a7 applicationVendorIDStore:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (!v14)
  {
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v15)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!v16)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!v17)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  v20 = v19;
  if (!v19)
  {
LABEL_13:
    v24 = _HMFPreconditionFailure();
    return [(HMDCameraIDSSessionReceiver *)v24 initWithSessionID:v25 workQueue:v26 sessionInviterDeviceVerifier:v27 delegate:v28, v29];
  }

  v30.receiver = self;
  v30.super_class = HMDCameraIDSSessionReceiver;
  v21 = [(HMDCameraIDSSessionHandler *)&v30 initWithSessionID:v14 workQueue:v15 idsStreamService:v16];
  v22 = v21;
  if (v21)
  {
    objc_storeWeak(&v21->_delegate, v18);
    objc_storeStrong(&v22->_sessionInviterDeviceVerifier, a6);
    objc_storeStrong(&v22->_applicationVendorIDStore, a8);
  }

  return v22;
}

- (HMDCameraIDSSessionReceiver)initWithSessionID:(id)a3 workQueue:(id)a4 sessionInviterDeviceVerifier:(id)a5 delegate:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = +[HMDIDSServiceManager sharedManager];
  v15 = [v14 serviceWithName:@"com.apple.private.alloy.willow.stream"];
  v16 = +[HMDApplicationVendorIDStore sharedStore];
  v17 = [(HMDCameraIDSSessionReceiver *)self initWithSessionID:v13 workQueue:v12 idsStreamService:v15 sessionInviterDeviceVerifier:v11 delegate:v10 applicationVendorIDStore:v16];

  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13_135487 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13_135487, &__block_literal_global_135488);
  }

  v3 = logCategory__hmf_once_v14_135489;

  return v3;
}

uint64_t __42__HMDCameraIDSSessionReceiver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v14_135489;
  logCategory__hmf_once_v14_135489 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end