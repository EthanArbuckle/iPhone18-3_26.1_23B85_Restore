@interface HMMTRAccessoryReachabilityObserver
+ (id)logCategory;
- (HMMTRAccessoryReachabilityObserver)initWithQueue:(id)queue;
- (HMMTRAccessoryServer)targetServer;
- (id)logIdentifier;
- (void)indicateNotificationFromServer:(id)server notifyType:(unint64_t)type withDictionary:(id)dictionary;
- (void)startObservingReachabilityForAccessoryServer:(id)server completion:(id)completion;
- (void)stopObservingReachabilityWithError:(id)error;
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
  nodeID = [WeakRetained nodeID];
  v6 = objc_loadWeakRetained(&self->_targetServer);
  fabricID = [v6 fabricID];
  v8 = [v3 stringWithFormat:@"%@/%@", nodeID, fabricID];

  return v8;
}

- (void)indicateNotificationFromServer:(id)server notifyType:(unint64_t)type withDictionary:(id)dictionary
{
  v47 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  dictionaryCopy = dictionary;
  v10 = serverCopy;
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
    if (type == 1)
    {
      targetServer = [(HMMTRAccessoryReachabilityObserver *)self targetServer];
      if (targetServer)
      {
        if (HMFEqualObjects())
        {
          if (dictionaryCopy && [dictionaryCopy hmf_BOOLForKey:*MEMORY[0x277CFE578]])
          {
            v14 = objc_autoreleasePoolPush();
            selfCopy = self;
            v16 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v17 = HMFGetLogIdentifier();
              nodeID = [targetServer nodeID];
              *buf = 138543618;
              v42 = v17;
              v43 = 2112;
              typeCopy = nodeID;
              _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Accessory server with nodeID %@ became reachable", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v14);
            completionBlock = [(HMMTRAccessoryReachabilityObserver *)selfCopy completionBlock];
            [(HMMTRAccessoryReachabilityObserver *)selfCopy setCompletionBlock:0];
            if (completionBlock)
            {
              workQueue = [(HMMTRAccessoryReachabilityObserver *)selfCopy workQueue];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __95__HMMTRAccessoryReachabilityObserver_indicateNotificationFromServer_notifyType_withDictionary___block_invoke;
              block[3] = &unk_2786EF878;
              v40 = completionBlock;
              dispatch_async(workQueue, block);
            }

            goto LABEL_31;
          }

          v30 = objc_autoreleasePoolPush();
          selfCopy4 = self;
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = HMFGetLogIdentifier();
            nodeID2 = [targetServer nodeID];
            *buf = 138543618;
            v42 = v33;
            v43 = 2112;
            typeCopy = nodeID2;
            _os_log_impl(&dword_22AEAE000, v32, OS_LOG_TYPE_INFO, "%{public}@Accessory server with nodeID %@ is currently unreachable, still waiting for reachable notification", buf, 0x16u);

            goto LABEL_29;
          }

LABEL_30:

          objc_autoreleasePoolPop(v30);
LABEL_31:

          goto LABEL_32;
        }

        v30 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v32 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_30;
        }

        v33 = HMFGetLogIdentifier();
        *buf = 138543874;
        v42 = v33;
        v43 = 2112;
        typeCopy = targetServer;
        v45 = 2112;
        v46 = v12;
        v34 = "%{public}@Expecting notification for accessory server %@, received notification for accessory server %@, ignoring";
        v35 = v32;
        v36 = 32;
      }

      else
      {
        v30 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v32 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_30;
        }

        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v42 = v33;
        v43 = 2112;
        typeCopy = v12;
        v34 = "%{public}@Not expected any notification for any server, but received notification for accessory server %@, ignoring";
        v35 = v32;
        v36 = 22;
      }

      _os_log_impl(&dword_22AEAE000, v35, OS_LOG_TYPE_ERROR, v34, buf, v36);
LABEL_29:

      goto LABEL_30;
    }

    v26 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543874;
      v42 = v29;
      v43 = 2048;
      typeCopy = type;
      v45 = 2112;
      v46 = v12;
      _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_ERROR, "%{public}@Received unexpected notification %lu accessory server, ignoring %@", buf, 0x20u);
    }

    v25 = v26;
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v24;
      v43 = 2112;
      typeCopy = v10;
      _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_ERROR, "%{public}@Received notification for a non-matter accessory server, ignoring %@", buf, 0x16u);
    }

    v25 = v21;
  }

  objc_autoreleasePoolPop(v25);
LABEL_32:

  v38 = *MEMORY[0x277D85DE8];
}

- (void)stopObservingReachabilityWithError:(id)error
{
  errorCopy = error;
  completionBlock = [(HMMTRAccessoryReachabilityObserver *)self completionBlock];

  if (completionBlock)
  {
    completionBlock2 = [(HMMTRAccessoryReachabilityObserver *)self completionBlock];
    [(HMMTRAccessoryReachabilityObserver *)self setCompletionBlock:0];
    workQueue = [(HMMTRAccessoryReachabilityObserver *)self workQueue];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __73__HMMTRAccessoryReachabilityObserver_stopObservingReachabilityWithError___block_invoke;
    v14 = &unk_2786EF5A8;
    v16 = completionBlock2;
    v15 = errorCopy;
    v8 = completionBlock2;
    dispatch_async(workQueue, &v11);
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

- (void)startObservingReachabilityForAccessoryServer:(id)server completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  completionCopy = completion;
  completionBlock = [(HMMTRAccessoryReachabilityObserver *)self completionBlock];

  if (completionBlock)
  {
    completionBlock2 = [(HMMTRAccessoryReachabilityObserver *)self completionBlock];
    [(HMMTRAccessoryReachabilityObserver *)self setCompletionBlock:0];
    workQueue = [(HMMTRAccessoryReachabilityObserver *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __94__HMMTRAccessoryReachabilityObserver_startObservingReachabilityForAccessoryServer_completion___block_invoke;
    block[3] = &unk_2786EF878;
    v26 = completionBlock2;
    v11 = completionBlock2;
    dispatch_async(workQueue, block);
  }

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    nodeID = [serverCopy nodeID];
    *buf = 138543618;
    v28 = v15;
    v29 = 2112;
    v30 = nodeID;
    _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Starting reachability observation for accessory server with nodeID %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  matterDevice = [serverCopy matterDevice];
  state = [matterDevice state];

  if (state == 1)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      nodeID2 = [serverCopy nodeID];
      *buf = 138543618;
      v28 = v22;
      v29 = 2112;
      v30 = nodeID2;
      _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_INFO, "%{public}@Accessory server with nodeID %@ was already reachable, replying immediately", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    [(HMMTRAccessoryReachabilityObserver *)selfCopy setTargetServer:serverCopy];
    [(HMMTRAccessoryReachabilityObserver *)selfCopy setCompletionBlock:completionCopy];
    [serverCopy registerForNotifications:selfCopy];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __94__HMMTRAccessoryReachabilityObserver_startObservingReachabilityForAccessoryServer_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
  (*(v1 + 16))(v1, v2);
}

- (HMMTRAccessoryReachabilityObserver)initWithQueue:(id)queue
{
  queueCopy = queue;
  v10.receiver = self;
  v10.super_class = HMMTRAccessoryReachabilityObserver;
  v6 = [(HMMTRAccessoryReachabilityObserver *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workQueue, queue);
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