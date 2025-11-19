@interface HMDUserPresenceFeedSession
+ (id)logCategory;
- (HMDUserPresenceFeedSession)initWithDelegate:(id)a3 workQueue:(id)a4 targetUUID:(id)a5 messageDispatcher:(id)a6 user:(id)a7 presenceAuthStatus:(id)a8 presenceComputeStatus:(id)a9 presenceRegionStatus:(id)a10 reason:(id)a11;
- (HMDUserPresenceFeedSessionDelegate)delegate;
- (id)attributeDescriptions;
- (void)_callDelegate;
- (void)_handleStatusUpdateMessageError:(id)a3 responseTime:(double)a4;
- (void)_send;
- (void)dealloc;
- (void)send;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDUserPresenceFeedSession

- (HMDUserPresenceFeedSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)timerDidFire:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUserPresenceFeedSession *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDUserPresenceFeedSession *)self statusUpdateRetryTimer];
  v7 = [v6 retryTimer];

  if (v7 == v4)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Retrying to send the report to the resident", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDUserPresenceFeedSession *)v9 _send];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_callDelegate
{
  v3 = [(HMDUserPresenceFeedSession *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDUserPresenceFeedSession *)self delegate];
  if ([v4 conformsToProtocol:&unk_283EE7AC0])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (objc_opt_respondsToSelector())
  {
    [v6 didEndFeedSession:self];
  }
}

- (void)_handleStatusUpdateMessageError:(id)a3 responseTime:(double)a4
{
  v7 = [(HMDUserPresenceFeedSession *)self workQueue];
  dispatch_assert_queue_V2(v7);

  if (a3)
  {
    v8 = [(HMDUserPresenceFeedSession *)self statusUpdateRetryTimer];
    [v8 setRetryCount:{objc_msgSend(v8, "retryCount") + 1}];

    v10 = [(HMDUserPresenceFeedSession *)self statusUpdateRetryTimer];
    v9 = [(HMDUserPresenceFeedSession *)self workQueue];
    [v10 startWithDelegate:self delegateQueue:v9 responseTime:a4];
  }

  else
  {

    [(HMDUserPresenceFeedSession *)self _callDelegate];
  }
}

- (void)_send
{
  v101 = *MEMORY[0x277D85DE8];
  v3 = [(HMDUserPresenceFeedSession *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDUserPresenceFeedSession *)self user];
  v5 = [v4 home];

  v6 = [v5 residentDeviceManager];
  v7 = [v6 primaryResidentDevice];

  v8 = [v7 device];
  if (v8)
  {
    v9 = +[HMDLostModeManager sharedManager];
    v10 = [v9 isLost];

    if (v10)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v88 = v14;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Device Lost. Not sending presence update", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
      [(HMDUserPresenceFeedSession *)v12 _handleStatusUpdateMessageError:v15 responseTime:0.0];
    }

    else
    {
      v20 = [(HMDUserPresenceFeedSession *)self presenceAuthStatus];

      if (v20)
      {
        v21 = [(HMDUserPresenceFeedSession *)self reason];
        v22 = [v21 value];

        if (v22 == 2)
        {
          v23 = [(HMDUserPresenceFeedSession *)self statusChangeDate];
          if (v23)
          {
            v24 = [MEMORY[0x277CBEAA8] date];
            v25 = [(HMDUserPresenceFeedSession *)self statusChangeDate];
            [v24 timeIntervalSinceDate:v25];
            v27 = v26;

            if (v27 > 120.0)
            {
              v28 = [HMDUserPresenceUpdateReason reasonWithValue:6];
              [(HMDUserPresenceFeedSession *)self setReason:v28];

              v29 = objc_autoreleasePoolPush();
              v30 = self;
              v31 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
              {
                v32 = HMFGetLogIdentifier();
                v33 = [(HMDUserPresenceFeedSession *)v30 reason];
                *buf = 138543618;
                v88 = v32;
                v89 = 2112;
                v90 = v33;
                _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Resetting the reason to %@ as it is well past the validity period", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v29);
            }
          }
        }

        v34 = [MEMORY[0x277CBEB38] dictionary];
        v35 = [(HMDUserPresenceFeedSession *)self user];
        v36 = [v35 uuid];
        v37 = [v36 UUIDString];
        [v34 setObject:v37 forKeyedSubscript:@"kUserPresenceUserKey"];

        v38 = MEMORY[0x277CCABB0];
        v39 = [(HMDUserPresenceFeedSession *)self presenceAuthStatus];
        v40 = [v38 numberWithUnsignedInteger:{objc_msgSend(v39, "value")}];
        [v34 setObject:v40 forKeyedSubscript:@"kUserPresenceAuthStatusKey"];

        v41 = [(HMDUserPresenceFeedSession *)self presenceAuthStatus];
        [v41 addToPayload:v34];

        v42 = [(HMDUserPresenceFeedSession *)self presenceRegionStatus];
        [v42 addToPayload:v34];

        v43 = [(HMDUserPresenceFeedSession *)self reason];
        [v43 addToPayload:v34];

        if ([v8 isCurrentDevice])
        {
          v44 = objc_autoreleasePoolPush();
          v45 = self;
          v46 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            v47 = HMFGetLogIdentifier();
            *buf = 138543362;
            v88 = v47;
            _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_INFO, "%{public}@This device is the resident device itself", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v44);
          v48 = [MEMORY[0x277CCAB98] defaultCenter];
          v49 = [(HMDUserPresenceFeedSession *)v45 delegate];
          [v48 postNotificationName:@"HMDUserPresenceUpdateLocalNotification" object:v49 userInfo:v34];

          [(HMDUserPresenceFeedSession *)v45 _callDelegate];
        }

        else
        {
          if ([(HMDUserPresenceFeedSession *)self isActivityStateEnabled])
          {
            [v34 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"kUserPresenceIsActivityStateEnabledKey"];
          }

          if ([v7 isReachableByIDS])
          {
            v55 = -1;
          }

          else
          {
            v56 = objc_autoreleasePoolPush();
            v57 = self;
            v58 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
            {
              v59 = HMFGetLogIdentifier();
              *buf = 138543618;
              v88 = v59;
              v89 = 2112;
              v90 = v7;
              _os_log_impl(&dword_229538000, v58, OS_LOG_TYPE_INFO, "%{public}@Restricting message to local transports as the primary resident is likely not reachable over IDS: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v56);
            v55 = 14;
          }

          v60 = [HMDRemoteHomeMessageDestination alloc];
          v61 = [(HMDUserPresenceFeedSession *)self targetUUID];
          v62 = [v5 uuid];
          v81 = [(HMDRemoteHomeMessageDestination *)v60 initWithTarget:v61 homeUUID:v62];

          v63 = [v34 copy];
          v64 = [HMDRemoteMessage secureMessageWithName:@"kRemoteUpdateUserPresenceNotificationKey" qualityOfService:17 destination:v81 messagePayload:v63 restriction:v55];

          v65 = [MEMORY[0x277CBEAA8] date];
          v66 = [v64 identifier];
          objc_initWeak(&location, self);
          v82[0] = MEMORY[0x277D85DD0];
          v82[1] = 3221225472;
          v82[2] = __35__HMDUserPresenceFeedSession__send__block_invoke;
          v82[3] = &unk_278689460;
          objc_copyWeak(&v85, &location);
          v80 = v66;
          v83 = v80;
          v78 = v65;
          v84 = v78;
          [v64 setResponseHandler:v82];
          context = objc_autoreleasePoolPush();
          v67 = self;
          v68 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
          {
            v75 = v64;
            v69 = HMFGetLogIdentifier();
            v77 = [(HMDUserPresenceFeedSession *)v67 presenceAuthStatus];
            v76 = [(HMDUserPresenceFeedSession *)v67 presenceRegionStatus];
            v70 = [(HMDUserPresenceFeedSession *)v67 reason];
            v71 = [(HMDUserPresenceFeedSession *)v67 user];
            v72 = [v71 uuid];
            *buf = 138544898;
            v88 = v69;
            v89 = 2114;
            v90 = v80;
            v91 = 2112;
            v92 = v8;
            v93 = 2114;
            v94 = v77;
            v95 = 2114;
            v96 = v76;
            v97 = 2114;
            v98 = v70;
            v99 = 2114;
            v100 = v72;
            _os_log_impl(&dword_229538000, v68, OS_LOG_TYPE_INFO, "%{public}@Sending message with identifier %{public}@ to inform presence status to resident: [%@], with : auth: %{public}@, region: %{public}@, reason: %{public}@, UUID: %{public}@", buf, 0x48u);

            v64 = v75;
          }

          objc_autoreleasePoolPop(context);
          v73 = [(HMDUserPresenceFeedSession *)v67 messageDispatcher];
          [v73 sendMessage:v64 completionHandler:0];

          objc_destroyWeak(&v85);
          objc_destroyWeak(&location);
        }
      }

      else
      {
        v50 = objc_autoreleasePoolPush();
        v51 = self;
        v52 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          v53 = HMFGetLogIdentifier();
          *buf = 138543362;
          v88 = v53;
          _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_INFO, "%{public}@Presence authorization is nil, cannot send report.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v50);
        v54 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        [(HMDUserPresenceFeedSession *)v51 _handleStatusUpdateMessageError:v54 responseTime:0.0];
      }
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v88 = v19;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@No HMDDevice found for HMDResidenceDevice. Not sending the presence update.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
  }

  v74 = *MEMORY[0x277D85DE8];
}

void __35__HMDUserPresenceFeedSession__send__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v22 = *(a1 + 32);
      v12 = [v9 presenceAuthStatus];
      v13 = [v9 presenceRegionStatus];
      [v9 reason];
      v14 = v25 = v5;
      [v9 user];
      v15 = v23 = v8;
      [v15 uuid];
      v16 = v24 = v6;
      *buf = 138544898;
      v30 = v11;
      v31 = 2114;
      v32 = v22;
      v33 = 2114;
      v34 = v12;
      v35 = 2114;
      v36 = v13;
      v37 = 2114;
      v38 = v14;
      v39 = 2114;
      v40 = v16;
      v41 = 2114;
      v42 = v25;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Message %{public}@ to inform presence status has been sent with : auth: %{public}@, region: %{public}@, reason: %{public}@, UUID: %{public}@, error: %{public}@", buf, 0x48u);

      v6 = v24;
      v8 = v23;

      v5 = v25;
    }

    objc_autoreleasePoolPop(v8);
    v17 = [MEMORY[0x277CBEAA8] date];
    [v17 timeIntervalSinceDate:*(a1 + 40)];
    v19 = v18;
    v20 = [v9 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__HMDUserPresenceFeedSession__send__block_invoke_33;
    block[3] = &unk_278685DF8;
    block[4] = v9;
    v27 = v5;
    v28 = v19;
    dispatch_async(v20, block);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)send
{
  v3 = [(HMDUserPresenceFeedSession *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HMDUserPresenceFeedSession_send__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

- (id)attributeDescriptions
{
  v21[5] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v20 = [(HMDUserPresenceFeedSession *)self sessionID];
  v4 = [v3 initWithName:@"SID" value:v20];
  v21[0] = v4;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = [(HMDUserPresenceFeedSession *)self presenceAuthStatus];
  v7 = [v5 initWithName:@"PAS" value:v6];
  v21[1] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = [(HMDUserPresenceFeedSession *)self presenceRegionStatus];
  v10 = [v8 initWithName:@"PRS" value:v9];
  v21[2] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = [(HMDUserPresenceFeedSession *)self reason];
  v13 = [v11 initWithName:@"RSN" value:v12];
  v21[3] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  v15 = [(HMDUserPresenceFeedSession *)self statusUpdateRetryTimer];
  v16 = [v14 initWithName:@"RT" value:v15];
  v21[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:5];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDUserPresenceFeedSession *)v4 sessionID];
    v8 = [v7 UUIDString];
    *buf = 138543618;
    v12 = v6;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating session %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v10.receiver = v4;
  v10.super_class = HMDUserPresenceFeedSession;
  [(HMDUserPresenceFeedSession *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (HMDUserPresenceFeedSession)initWithDelegate:(id)a3 workQueue:(id)a4 targetUUID:(id)a5 messageDispatcher:(id)a6 user:(id)a7 presenceAuthStatus:(id)a8 presenceComputeStatus:(id)a9 presenceRegionStatus:(id)a10 reason:(id)a11
{
  v17 = a3;
  v42 = a4;
  v41 = a5;
  v40 = a6;
  obj = a7;
  v18 = a7;
  v39 = a8;
  v38 = a9;
  v37 = a10;
  v19 = a11;
  v43.receiver = self;
  v43.super_class = HMDUserPresenceFeedSession;
  v20 = [(HMDUserPresenceFeedSession *)&v43 init];
  if (v20)
  {
    v21 = [MEMORY[0x277CCAD78] UUID];
    sessionID = v20->_sessionID;
    v20->_sessionID = v21;

    objc_storeWeak(&v20->_delegate, v17);
    objc_storeStrong(&v20->_workQueue, a4);
    objc_storeStrong(&v20->_targetUUID, a5);
    objc_storeStrong(&v20->_messageDispatcher, a6);
    objc_storeStrong(&v20->_user, obj);
    objc_storeStrong(&v20->_presenceAuthStatus, a8);
    objc_storeStrong(&v20->_presenceComputeStatus, a9);
    objc_storeStrong(&v20->_presenceRegionStatus, a10);
    objc_storeStrong(&v20->_reason, a11);
    v23 = [v19 value];
    if (v23 == 2)
    {
      v24 = [MEMORY[0x277CBEAA8] date];
    }

    else
    {
      v24 = 0;
    }

    v25 = v19;
    objc_storeStrong(&v20->_statusChangeDate, v24);
    if (v23 == 2)
    {
    }

    v26 = objc_alloc_init(HMDUserPresenceFeedRetryTimer);
    statusUpdateRetryTimer = v20->_statusUpdateRetryTimer;
    v20->_statusUpdateRetryTimer = v26;

    v28 = MEMORY[0x277CCACA8];
    v29 = [v18 home];
    v30 = [v29 name];
    v31 = [(NSUUID *)v20->_sessionID UUIDString];
    v32 = [v28 stringWithFormat:@"%@/%@", v30, v31];
    logIdentifierString = v20->_logIdentifierString;
    v20->_logIdentifierString = v32;

    v34 = +[HMDFeaturesDataSource defaultDataSource];
    v20->_activityStateEnabled = [v34 isUserActivityStateDetectionFeatureEnabled];

    v19 = v25;
  }

  return v20;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t10_76037 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t10_76037, &__block_literal_global_76038);
  }

  v3 = logCategory__hmf_once_v11_76039;

  return v3;
}

void __41__HMDUserPresenceFeedSession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v11_76039;
  logCategory__hmf_once_v11_76039 = v1;
}

@end