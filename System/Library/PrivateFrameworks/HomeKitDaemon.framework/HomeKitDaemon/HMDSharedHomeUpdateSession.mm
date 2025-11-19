@interface HMDSharedHomeUpdateSession
+ (id)logCategory;
- (HMDSharedHomeUpdateSession)initWithHome:(id)a3 delegate:(id)a4 workQueue:(id)a5 messagePayload:(id)a6 messageDispatcher:(id)a7;
- (HMDSharedHomeUpdateSessionDelegate)delegate;
- (NSString)description;
- (NSString)homeIdentifier;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (id)logIdentifier;
- (void)_callDelegate;
- (void)_requestDataSync;
- (void)dealloc;
- (void)requestDataSync;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDSharedHomeUpdateSession

- (HMDSharedHomeUpdateSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if (self)
  {
    retryCount = self->_retryCount;
  }

  else
  {
    retryCount = 0;
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:retryCount];
  [v4 setObject:v6 forKeyedSubscript:@"Retry Count"];

  v7 = [v4 copy];

  return v7;
}

- (void)timerDidFire:(id)a3
{
  v6 = a3;
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    timer = self->_timer;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    timer = 0;
  }

  v5 = v6;
  if (timer == v6)
  {
    [(HMDSharedHomeUpdateSession *)self _requestDataSync];
    v5 = v6;
  }
}

- (void)_requestDataSync
{
  v41 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (*(a1 + 64) < 3uLL)
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        v7 = v6;
        v8 = [v7 sharedHomeSourceVersion];
        v9 = [v7 primaryResident];
        v10 = [v7 residentDeviceManager];
        v11 = [v10 availableResidentDevices];
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __45__HMDSharedHomeUpdateSession__selectResident__block_invoke;
        v39 = &unk_278687A98;
        v40 = v8;
        v12 = v8;
        v13 = [v11 hmf_objectsPassingTest:buf];

        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __45__HMDSharedHomeUpdateSession__selectResident__block_invoke_2;
        v36[3] = &unk_278687AC0;
        v37 = v9;
        v14 = v9;
        v15 = [v13 sortedArrayUsingComparator:v36];
        v16 = [v15 lastObject];
      }

      else
      {
        v16 = 0;
      }

      v17 = objc_autoreleasePoolPush();
      v18 = a1;
      v19 = HMFGetOSLogHandle();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
      if (v16)
      {
        if (v20)
        {
          v21 = HMFGetLogIdentifier();
          *buf = 138543874;
          *&buf[4] = v21;
          *&buf[12] = 2112;
          *&buf[14] = v18;
          *&buf[22] = 2112;
          v39 = v16;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Sending sync request session %@ with resident %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v17);
        v22 = [HMDRemoteDeviceMessageDestination alloc];
        v23 = *(a1 + 32);
        v24 = [v23 uuid];
        v25 = [v16 device];

        v26 = [(HMDRemoteDeviceMessageDestination *)v22 initWithTarget:v24 device:v25];
        v27 = [HMDRemoteMessage secureMessageWithName:@"kRequestHomeDataSyncRequestKey" destination:v26 messagePayload:v18[5]];
        objc_initWeak(buf, v18);
        v31 = MEMORY[0x277D85DD0];
        v32 = 3221225472;
        v33 = __46__HMDSharedHomeUpdateSession__requestDataSync__block_invoke;
        v34 = &unk_278687FB0;
        objc_copyWeak(&v35, buf);
        [v27 setResponseHandler:&v31];
        v28 = v18[6];
        [v28 sendMessage:v27 completionHandler:{0, v31, v32, v33, v34}];

        ++*(a1 + 64);
        objc_destroyWeak(&v35);
        objc_destroyWeak(buf);
      }

      else
      {
        if (v20)
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543362;
          *&buf[4] = v29;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@No valid residents, cannot continue", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v17);
        [(HMDSharedHomeUpdateSession *)v18 _callDelegate];
      }
    }

    else
    {
      v2 = objc_autoreleasePoolPush();
      v3 = a1;
      v4 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v5;
        _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Retry count has maxed out, cannot continue", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v2);
      [(HMDSharedHomeUpdateSession *)v3 _callDelegate];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_callDelegate
{
  v2 = [a1 delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[3];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __43__HMDSharedHomeUpdateSession__callDelegate__block_invoke;
    v4[3] = &unk_27868A750;
    v5 = v2;
    v6 = a1;
    dispatch_async(v3, v4);
  }
}

void __46__HMDSharedHomeUpdateSession__requestDataSync__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = objc_autoreleasePoolPush();
    v2 = WeakRetained;
    v3 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = HMFGetLogIdentifier();
      v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(v2 + 9)];
      *buf = 138543618;
      v18 = v4;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_229538000, v3, OS_LOG_TYPE_INFO, "%{public}@Starting the retry timer with %@ seconds", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v1);
    v6 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:*(v2 + 9)];
    v7 = *(v2 + 7);
    *(v2 + 7) = v6;

    [*(v2 + 7) setDelegate:v2];
    v8 = *(v2 + 7);
    v9 = *(v2 + 3);
    [v8 setDelegateQueue:v9];

    [*(v2 + 7) resume];
    *(v2 + 9) = *(v2 + 9) + (60 * requestHomeDataSyncRetryPeriodInMinutes);
    v10 = objc_autoreleasePoolPush();
    v11 = v2;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [MEMORY[0x277CCABB0] numberWithDouble:*(v2 + 9)];
      *buf = 138543618;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Bumped the next timer's value to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __45__HMDSharedHomeUpdateSession__selectResident__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 device];
  v5 = [v4 version];

  if ([v5 isGreaterThanVersion:*(a1 + 32)])
  {
    v6 = [v3 isReachable];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __45__HMDSharedHomeUpdateSession__selectResident__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 device];
  v8 = [v7 version];
  v9 = [v6 device];
  v10 = [v9 version];
  v11 = [v8 compare:v10];

  if (!v11)
  {
    if ([*(a1 + 32) isEqual:v5])
    {
      v11 = 1;
    }

    else if ([*(a1 + 32) isEqual:v6])
    {
      v11 = -1;
    }

    else
    {
      v12 = [v5 identifier];
      v13 = [v12 UUIDString];
      v14 = [v6 identifier];
      v15 = [v14 UUIDString];
      v11 = [v13 compare:v15];
    }
  }

  return v11;
}

void __43__HMDSharedHomeUpdateSession__callDelegate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
  [v1 didCompleteHomeUpdateSession:v2 withError:v3];
}

- (void)requestDataSync
{
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HMDSharedHomeUpdateSession_requestDataSync__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (NSString)homeIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  if (self)
  {
    home = self->_home;
  }

  else
  {
    home = 0;
  }

  v5 = home;
  v6 = [(HMDHome *)v5 name];
  if (self)
  {
    v7 = self->_home;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(HMDHome *)v7 uuid];
  v9 = [v8 UUIDString];
  v10 = [v3 stringWithFormat:@"%@/%@", v6, v9];

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDSharedHomeUpdateSession *)self sessionID];
  v5 = v4;
  if (self)
  {
    retryCount = self->_retryCount;
  }

  else
  {
    retryCount = 0;
  }

  v7 = [v3 stringWithFormat:@"[HMDSharedHomeUpdateSession: %@, %tu]", v4, retryCount];

  return v7;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDSharedHomeUpdateSession *)self homeIdentifier];
  v5 = [(HMDSharedHomeUpdateSession *)self sessionID];
  v6 = [v5 UUIDString];
  v7 = [v3 stringWithFormat:@"%@/%@", v4, v6];

  return v7;
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating the session", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = v4;
  v8.super_class = HMDSharedHomeUpdateSession;
  [(HMDSharedHomeUpdateSession *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDSharedHomeUpdateSession)initWithHome:(id)a3 delegate:(id)a4 workQueue:(id)a5 messagePayload:(id)a6 messageDispatcher:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v23.receiver = self;
  v23.super_class = HMDSharedHomeUpdateSession;
  v18 = [(HMDSharedHomeUpdateSession *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_home, a3);
    v20 = [MEMORY[0x277CCAD78] UUID];
    sessionID = v19->_sessionID;
    v19->_sessionID = v20;

    v19->_retryCount = 0;
    v19->_currentTimerValue = (60 * requestHomeDataSyncRetryPeriodInMinutes);
    objc_storeWeak(&v19->_delegate, v14);
    objc_storeStrong(&v19->_workQueue, a5);
    objc_storeStrong(&v19->_messagePayload, a6);
    objc_storeStrong(&v19->_messageDispatcher, a7);
  }

  return v19;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_265592 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_265592, &__block_literal_global_265593);
  }

  v3 = logCategory__hmf_once_v2_265594;

  return v3;
}

void __41__HMDSharedHomeUpdateSession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_265594;
  logCategory__hmf_once_v2_265594 = v1;
}

@end