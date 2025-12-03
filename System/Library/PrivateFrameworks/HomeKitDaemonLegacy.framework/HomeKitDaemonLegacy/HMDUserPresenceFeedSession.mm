@interface HMDUserPresenceFeedSession
+ (id)logCategory;
- (HMDUserPresenceFeedSession)initWithDelegate:(id)delegate workQueue:(id)queue targetUUID:(id)d messageDispatcher:(id)dispatcher user:(id)user presenceAuthStatus:(id)status presenceComputeStatus:(id)computeStatus presenceRegionStatus:(id)self0 reason:(id)self1;
- (HMDUserPresenceFeedSessionDelegate)delegate;
- (id)attributeDescriptions;
- (void)_callDelegate;
- (void)_handleStatusUpdateMessageError:(id)error responseTime:(double)time;
- (void)_send;
- (void)dealloc;
- (void)send;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDUserPresenceFeedSession

- (HMDUserPresenceFeedSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)timerDidFire:(id)fire
{
  v15 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HMDUserPresenceFeedSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  statusUpdateRetryTimer = [(HMDUserPresenceFeedSession *)self statusUpdateRetryTimer];
  retryTimer = [statusUpdateRetryTimer retryTimer];

  if (retryTimer == fireCopy)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Retrying to send the report to the resident", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDUserPresenceFeedSession *)selfCopy _send];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_callDelegate
{
  workQueue = [(HMDUserPresenceFeedSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  delegate = [(HMDUserPresenceFeedSession *)self delegate];
  if ([delegate conformsToProtocol:&unk_286685390])
  {
    v5 = delegate;
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

- (void)_handleStatusUpdateMessageError:(id)error responseTime:(double)time
{
  workQueue = [(HMDUserPresenceFeedSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (error)
  {
    statusUpdateRetryTimer = [(HMDUserPresenceFeedSession *)self statusUpdateRetryTimer];
    [statusUpdateRetryTimer setRetryCount:{objc_msgSend(statusUpdateRetryTimer, "retryCount") + 1}];

    statusUpdateRetryTimer2 = [(HMDUserPresenceFeedSession *)self statusUpdateRetryTimer];
    workQueue2 = [(HMDUserPresenceFeedSession *)self workQueue];
    [statusUpdateRetryTimer2 startWithDelegate:self delegateQueue:workQueue2 responseTime:time];
  }

  else
  {

    [(HMDUserPresenceFeedSession *)self _callDelegate];
  }
}

- (void)_send
{
  v100 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDUserPresenceFeedSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  user = [(HMDUserPresenceFeedSession *)self user];
  home = [user home];

  residentDeviceManager = [home residentDeviceManager];
  primaryResidentDevice = [residentDeviceManager primaryResidentDevice];

  device = [primaryResidentDevice device];
  if (device)
  {
    v9 = +[HMDLostModeManager sharedManager];
    isLost = [v9 isLost];

    if (isLost)
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v87 = v14;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Device Lost. Not sending presence update", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
      [(HMDUserPresenceFeedSession *)selfCopy _handleStatusUpdateMessageError:v15 responseTime:0.0];
    }

    else
    {
      presenceAuthStatus = [(HMDUserPresenceFeedSession *)self presenceAuthStatus];

      if (presenceAuthStatus)
      {
        reason = [(HMDUserPresenceFeedSession *)self reason];
        value = [reason value];

        if (value == 2)
        {
          statusChangeDate = [(HMDUserPresenceFeedSession *)self statusChangeDate];
          if (statusChangeDate)
          {
            date = [MEMORY[0x277CBEAA8] date];
            statusChangeDate2 = [(HMDUserPresenceFeedSession *)self statusChangeDate];
            [date timeIntervalSinceDate:statusChangeDate2];
            v27 = v26;

            if (v27 > 120.0)
            {
              v28 = [HMDUserPresenceUpdateReason reasonWithValue:6];
              [(HMDUserPresenceFeedSession *)self setReason:v28];

              v29 = objc_autoreleasePoolPush();
              selfCopy2 = self;
              v31 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
              {
                v32 = HMFGetLogIdentifier();
                reason2 = [(HMDUserPresenceFeedSession *)selfCopy2 reason];
                *buf = 138543618;
                v87 = v32;
                v88 = 2112;
                v89 = reason2;
                _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Resetting the reason to %@ as it is well past the validity period", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v29);
            }
          }
        }

        dictionary = [MEMORY[0x277CBEB38] dictionary];
        user2 = [(HMDUserPresenceFeedSession *)self user];
        uuid = [user2 uuid];
        uUIDString = [uuid UUIDString];
        [dictionary setObject:uUIDString forKeyedSubscript:@"kUserPresenceUserKey"];

        v38 = MEMORY[0x277CCABB0];
        presenceAuthStatus2 = [(HMDUserPresenceFeedSession *)self presenceAuthStatus];
        v40 = [v38 numberWithUnsignedInteger:{objc_msgSend(presenceAuthStatus2, "value")}];
        [dictionary setObject:v40 forKeyedSubscript:@"kUserPresenceAuthStatusKey"];

        presenceAuthStatus3 = [(HMDUserPresenceFeedSession *)self presenceAuthStatus];
        [presenceAuthStatus3 addToPayload:dictionary];

        presenceRegionStatus = [(HMDUserPresenceFeedSession *)self presenceRegionStatus];
        [presenceRegionStatus addToPayload:dictionary];

        reason3 = [(HMDUserPresenceFeedSession *)self reason];
        [reason3 addToPayload:dictionary];

        if ([device isCurrentDevice])
        {
          v44 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v46 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            v47 = HMFGetLogIdentifier();
            *buf = 138543362;
            v87 = v47;
            _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@This device is the resident device itself", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v44);
          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          delegate = [(HMDUserPresenceFeedSession *)selfCopy3 delegate];
          [defaultCenter postNotificationName:@"HMDUserPresenceUpdateLocalNotification" object:delegate userInfo:dictionary];

          [(HMDUserPresenceFeedSession *)selfCopy3 _callDelegate];
        }

        else
        {
          if ([primaryResidentDevice isReachable])
          {
            v55 = -1;
          }

          else
          {
            v56 = objc_autoreleasePoolPush();
            selfCopy4 = self;
            v58 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
            {
              v59 = HMFGetLogIdentifier();
              *buf = 138543618;
              v87 = v59;
              v88 = 2112;
              v89 = primaryResidentDevice;
              _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_INFO, "%{public}@Restricting message to local transports as the primary resident is likely not reachable over IDS: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v56);
            v55 = 14;
          }

          v60 = [HMDRemoteDeviceMessageDestination alloc];
          targetUUID = [(HMDUserPresenceFeedSession *)self targetUUID];
          v62 = [(HMDRemoteDeviceMessageDestination *)v60 initWithTarget:targetUUID device:device];

          v63 = [dictionary copy];
          v80 = [HMDRemoteMessage secureMessageWithName:@"kRemoteUpdateUserPresenceNotificationKey" qualityOfService:17 destination:v62 messagePayload:v63 restriction:v55];

          date2 = [MEMORY[0x277CBEAA8] date];
          identifier = [v80 identifier];
          objc_initWeak(&location, self);
          v81[0] = MEMORY[0x277D85DD0];
          v81[1] = 3221225472;
          v81[2] = __35__HMDUserPresenceFeedSession__send__block_invoke;
          v81[3] = &unk_279735248;
          objc_copyWeak(&v84, &location);
          v79 = identifier;
          v82 = v79;
          v77 = date2;
          v83 = v77;
          [v80 setResponseHandler:v81];
          context = objc_autoreleasePoolPush();
          selfCopy5 = self;
          v67 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
          {
            v74 = v62;
            v68 = HMFGetLogIdentifier();
            presenceAuthStatus4 = [(HMDUserPresenceFeedSession *)selfCopy5 presenceAuthStatus];
            presenceRegionStatus2 = [(HMDUserPresenceFeedSession *)selfCopy5 presenceRegionStatus];
            reason4 = [(HMDUserPresenceFeedSession *)selfCopy5 reason];
            user3 = [(HMDUserPresenceFeedSession *)selfCopy5 user];
            uuid2 = [user3 uuid];
            *buf = 138544898;
            v87 = v68;
            v88 = 2114;
            v89 = v79;
            v90 = 2112;
            v91 = device;
            v92 = 2114;
            v93 = presenceAuthStatus4;
            v94 = 2114;
            v95 = presenceRegionStatus2;
            v96 = 2114;
            v97 = reason4;
            v98 = 2114;
            v99 = uuid2;
            _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_INFO, "%{public}@Sending message with identifier %{public}@ to inform presence status to resident: [%@], with : auth: %{public}@, region: %{public}@, reason: %{public}@, UUID: %{public}@", buf, 0x48u);

            v62 = v74;
          }

          objc_autoreleasePoolPop(context);
          messageDispatcher = [(HMDUserPresenceFeedSession *)selfCopy5 messageDispatcher];
          [messageDispatcher sendMessage:v80 completionHandler:0];

          objc_destroyWeak(&v84);
          objc_destroyWeak(&location);
        }
      }

      else
      {
        v50 = objc_autoreleasePoolPush();
        selfCopy6 = self;
        v52 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          v53 = HMFGetLogIdentifier();
          *buf = 138543362;
          v87 = v53;
          _os_log_impl(&dword_2531F8000, v52, OS_LOG_TYPE_INFO, "%{public}@Presence authorization is nil, cannot send report.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v50);
        v54 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        [(HMDUserPresenceFeedSession *)selfCopy6 _handleStatusUpdateMessageError:v54 responseTime:0.0];
      }
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy7 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v87 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@No HMDDevice found for HMDResidenceDevice. Not sending the presence update.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
  }

  v73 = *MEMORY[0x277D85DE8];
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Message %{public}@ to inform presence status has been sent with : auth: %{public}@, region: %{public}@, reason: %{public}@, UUID: %{public}@, error: %{public}@", buf, 0x48u);

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
    block[2] = __35__HMDUserPresenceFeedSession__send__block_invoke_32;
    block[3] = &unk_279732F10;
    block[4] = v9;
    v27 = v5;
    v28 = v19;
    dispatch_async(v20, block);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)send
{
  workQueue = [(HMDUserPresenceFeedSession *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HMDUserPresenceFeedSession_send__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (id)attributeDescriptions
{
  v21[5] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  sessionID = [(HMDUserPresenceFeedSession *)self sessionID];
  v4 = [v3 initWithName:@"SID" value:sessionID];
  v21[0] = v4;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  presenceAuthStatus = [(HMDUserPresenceFeedSession *)self presenceAuthStatus];
  v7 = [v5 initWithName:@"PAS" value:presenceAuthStatus];
  v21[1] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  presenceRegionStatus = [(HMDUserPresenceFeedSession *)self presenceRegionStatus];
  v10 = [v8 initWithName:@"PRS" value:presenceRegionStatus];
  v21[2] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  reason = [(HMDUserPresenceFeedSession *)self reason];
  v13 = [v11 initWithName:@"RSN" value:reason];
  v21[3] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  statusUpdateRetryTimer = [(HMDUserPresenceFeedSession *)self statusUpdateRetryTimer];
  v16 = [v14 initWithName:@"RT" value:statusUpdateRetryTimer];
  v21[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:5];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    sessionID = [(HMDUserPresenceFeedSession *)selfCopy sessionID];
    uUIDString = [sessionID UUIDString];
    *buf = 138543618;
    v12 = v6;
    v13 = 2112;
    v14 = uUIDString;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating session %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v10.receiver = selfCopy;
  v10.super_class = HMDUserPresenceFeedSession;
  [(HMDUserPresenceFeedSession *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (HMDUserPresenceFeedSession)initWithDelegate:(id)delegate workQueue:(id)queue targetUUID:(id)d messageDispatcher:(id)dispatcher user:(id)user presenceAuthStatus:(id)status presenceComputeStatus:(id)computeStatus presenceRegionStatus:(id)self0 reason:(id)self1
{
  delegateCopy = delegate;
  queueCopy = queue;
  dCopy = d;
  dispatcherCopy = dispatcher;
  obj = user;
  userCopy = user;
  statusCopy = status;
  computeStatusCopy = computeStatus;
  regionStatusCopy = regionStatus;
  reasonCopy = reason;
  v42.receiver = self;
  v42.super_class = HMDUserPresenceFeedSession;
  v20 = [(HMDUserPresenceFeedSession *)&v42 init];
  if (v20)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    sessionID = v20->_sessionID;
    v20->_sessionID = uUID;

    objc_storeWeak(&v20->_delegate, delegateCopy);
    objc_storeStrong(&v20->_workQueue, queue);
    objc_storeStrong(&v20->_targetUUID, d);
    objc_storeStrong(&v20->_messageDispatcher, dispatcher);
    objc_storeStrong(&v20->_user, obj);
    objc_storeStrong(&v20->_presenceAuthStatus, status);
    objc_storeStrong(&v20->_presenceComputeStatus, computeStatus);
    objc_storeStrong(&v20->_presenceRegionStatus, regionStatus);
    objc_storeStrong(&v20->_reason, reason);
    value = [reasonCopy value];
    if (value == 2)
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    else
    {
      date = 0;
    }

    v25 = reasonCopy;
    objc_storeStrong(&v20->_statusChangeDate, date);
    if (value == 2)
    {
    }

    v26 = objc_alloc_init(HMDUserPresenceFeedRetryTimer);
    statusUpdateRetryTimer = v20->_statusUpdateRetryTimer;
    v20->_statusUpdateRetryTimer = v26;

    v28 = MEMORY[0x277CCACA8];
    home = [userCopy home];
    name = [home name];
    uUIDString = [(NSUUID *)v20->_sessionID UUIDString];
    v32 = [v28 stringWithFormat:@"%@/%@", name, uUIDString];
    logIdentifierString = v20->_logIdentifierString;
    v20->_logIdentifierString = v32;

    reasonCopy = v25;
  }

  return v20;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t10_47597 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t10_47597, &__block_literal_global_47598);
  }

  v3 = logCategory__hmf_once_v11_47599;

  return v3;
}

uint64_t __41__HMDUserPresenceFeedSession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v11_47599;
  logCategory__hmf_once_v11_47599 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end