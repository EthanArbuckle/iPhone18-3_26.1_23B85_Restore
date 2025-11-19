@interface HMMTRAccessoryReachabilityObserver
+ (id)logCategory;
- (HMMTRAccessoryReachabilityObserver)initWithQueue:(id)a3;
- (HMMTRAccessoryServer)targetServer;
- (id)logIdentifier;
- (void)indicateNotificationFromServer:(id)a3 notifyType:(unint64_t)a4 withDictionary:(id)a5;
- (void)startObservingReachabilityForAccessoryServer:(id)a3 completion:(id)a4;
- (void)stopObservingReachabilityWithError:(id)a3;
@end

@implementation HMMTRAccessoryReachabilityObserver

- (HMMTRAccessoryServer)targetServer
{
  WeakRetained = objc_loadWeakRetained(&self->_targetServer);

  return WeakRetained;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  WeakRetained = objc_loadWeakRetained(&self->_targetServer);
  v5 = [WeakRetained nodeID];
  v6 = objc_loadWeakRetained(&self->_targetServer);
  v7 = [v6 fabricID];
  v8 = [v3 stringWithFormat:@"%@/%@", v5, v7];

  return v8;
}

- (void)indicateNotificationFromServer:(id)a3 notifyType:(unint64_t)a4 withDictionary:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    if (a4 == 1)
    {
      v13 = [(HMMTRAccessoryReachabilityObserver *)self targetServer];
      if (v13)
      {
        if (HMFEqualObjects())
        {
          if (v9 && [v9 hmf_BOOLForKey:*MEMORY[0x277CFE578]])
          {
            v14 = objc_autoreleasePoolPush();
            v15 = self;
            v16 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v17 = HMFGetLogIdentifier();
              v18 = [v13 nodeID];
              *buf = 138543618;
              v42 = v17;
              v43 = 2112;
              v44 = v18;
              _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Accessory server with nodeID %@ became reachable", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v14);
            v19 = [(HMMTRAccessoryReachabilityObserver *)v15 completionBlock];
            [(HMMTRAccessoryReachabilityObserver *)v15 setCompletionBlock:0];
            if (v19)
            {
              v20 = [(HMMTRAccessoryReachabilityObserver *)v15 workQueue];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __95__HMMTRAccessoryReachabilityObserver_indicateNotificationFromServer_notifyType_withDictionary___block_invoke;
              block[3] = &unk_2786EF878;
              v40 = v19;
              dispatch_async(v20, block);
            }

            goto LABEL_31;
          }

          v30 = objc_autoreleasePoolPush();
          v31 = self;
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = HMFGetLogIdentifier();
            v37 = [v13 nodeID];
            *buf = 138543618;
            v42 = v33;
            v43 = 2112;
            v44 = v37;
            _os_log_impl(&dword_22AEAE000, v32, OS_LOG_TYPE_INFO, "%{public}@Accessory server with nodeID %@ is currently unreachable, still waiting for reachable notification", buf, 0x16u);

            goto LABEL_29;
          }

LABEL_30:

          objc_autoreleasePoolPop(v30);
LABEL_31:

          goto LABEL_32;
        }

        v30 = objc_autoreleasePoolPush();
        v31 = self;
        v32 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_30;
        }

        v33 = HMFGetLogIdentifier();
        *buf = 138543874;
        v42 = v33;
        v43 = 2112;
        v44 = v13;
        v45 = 2112;
        v46 = v12;
        v34 = "%{public}@Expecting notification for accessory server %@, received notification for accessory server %@, ignoring";
        v35 = v32;
        v36 = 32;
      }

      else
      {
        v30 = objc_autoreleasePoolPush();
        v31 = self;
        v32 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_30;
        }

        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v42 = v33;
        v43 = 2112;
        v44 = v12;
        v34 = "%{public}@Not expected any notification for any server, but received notification for accessory server %@, ignoring";
        v35 = v32;
        v36 = 22;
      }

      _os_log_impl(&dword_22AEAE000, v35, OS_LOG_TYPE_ERROR, v34, buf, v36);
LABEL_29:

      goto LABEL_30;
    }

    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543874;
      v42 = v29;
      v43 = 2048;
      v44 = a4;
      v45 = 2112;
      v46 = v12;
      _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_ERROR, "%{public}@Received unexpected notification %lu accessory server, ignoring %@", buf, 0x20u);
    }

    v25 = v26;
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v24;
      v43 = 2112;
      v44 = v10;
      _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_ERROR, "%{public}@Received notification for a non-matter accessory server, ignoring %@", buf, 0x16u);
    }

    v25 = v21;
  }

  objc_autoreleasePoolPop(v25);
LABEL_32:

  v38 = *MEMORY[0x277D85DE8];
}

- (void)stopObservingReachabilityWithError:(id)a3
{
  v4 = a3;
  v5 = [(HMMTRAccessoryReachabilityObserver *)self completionBlock];

  if (v5)
  {
    v6 = [(HMMTRAccessoryReachabilityObserver *)self completionBlock];
    [(HMMTRAccessoryReachabilityObserver *)self setCompletionBlock:0];
    v7 = [(HMMTRAccessoryReachabilityObserver *)self workQueue];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __73__HMMTRAccessoryReachabilityObserver_stopObservingReachabilityWithError___block_invoke;
    v14 = &unk_2786EF5A8;
    v16 = v6;
    v15 = v4;
    v8 = v6;
    dispatch_async(v7, &v11);
  }

  v9 = [(HMMTRAccessoryReachabilityObserver *)self targetServer:v11];
  v10 = v9;
  if (v9)
  {
    [v9 unregisterForNotifications:self];
  }

  [(HMMTRAccessoryReachabilityObserver *)self setTargetServer:0];
}

void __73__HMMTRAccessoryReachabilityObserver_stopObservingReachabilityWithError___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 40);

    v2(v3);
  }

  else
  {
    v4 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
    (*(v1 + 16))(v1, v4);
  }
}

- (void)startObservingReachabilityForAccessoryServer:(id)a3 completion:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMMTRAccessoryReachabilityObserver *)self completionBlock];

  if (v8)
  {
    v9 = [(HMMTRAccessoryReachabilityObserver *)self completionBlock];
    [(HMMTRAccessoryReachabilityObserver *)self setCompletionBlock:0];
    v10 = [(HMMTRAccessoryReachabilityObserver *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __94__HMMTRAccessoryReachabilityObserver_startObservingReachabilityForAccessoryServer_completion___block_invoke;
    block[3] = &unk_2786EF878;
    v26 = v9;
    v11 = v9;
    dispatch_async(v10, block);
  }

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v6 nodeID];
    *buf = 138543618;
    v28 = v15;
    v29 = 2112;
    v30 = v16;
    _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Starting reachability observation for accessory server with nodeID %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  v17 = [v6 matterDevice];
  v18 = [v17 state];

  if (v18 == 1)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v13;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [v6 nodeID];
      *buf = 138543618;
      v28 = v22;
      v29 = 2112;
      v30 = v23;
      _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_INFO, "%{public}@Accessory server with nodeID %@ was already reachable, replying immediately", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v7[2](v7, 0);
  }

  else
  {
    [(HMMTRAccessoryReachabilityObserver *)v13 setTargetServer:v6];
    [(HMMTRAccessoryReachabilityObserver *)v13 setCompletionBlock:v7];
    [v6 registerForNotifications:v13];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __94__HMMTRAccessoryReachabilityObserver_startObservingReachabilityForAccessoryServer_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
  (*(v1 + 16))(v1, v2);
}

- (HMMTRAccessoryReachabilityObserver)initWithQueue:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = HMMTRAccessoryReachabilityObserver;
  v6 = [(HMMTRAccessoryReachabilityObserver *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workQueue, a3);
    objc_storeWeak(&v7->_targetServer, 0);
    completionBlock = v7->_completionBlock;
    v7->_completionBlock = 0;
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9, &__block_literal_global_6031);
  }

  v3 = logCategory__hmf_once_v10;

  return v3;
}

uint64_t __49__HMMTRAccessoryReachabilityObserver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v10;
  logCategory__hmf_once_v10 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end