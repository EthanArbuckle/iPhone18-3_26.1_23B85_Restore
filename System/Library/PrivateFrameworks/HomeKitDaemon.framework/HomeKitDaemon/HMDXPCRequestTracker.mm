@interface HMDXPCRequestTracker
+ (id)logCategory;
- (HMDXPCRequestTracker)initWithQueue:(id)queue;
- (HMDXPCRequestTracker)initWithQueue:(id)queue watchdogTimer:(id)timer;
- (NSSet)requestIdentifiers;
- (NSString)clientName;
- (void)_respondToRequest:(id)request withPayload:(id)payload error:(id)error;
- (void)addRequestWithIdentifier:(id)identifier name:(id)name qualityOfService:(int64_t)service isTimeoutDisabled:(BOOL)disabled responseHandler:(id)handler;
- (void)cancelAllRequests;
- (void)respondToRequestWithIdentifier:(id)identifier withPayload:(id)payload error:(id)error;
- (void)setClientName:(id)name;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDXPCRequestTracker

+ (id)logCategory
{
  if (logCategory__hmf_once_t17_273441 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t17_273441, &__block_literal_global_273442);
  }

  v3 = logCategory__hmf_once_v18_273443;

  return v3;
}

- (void)timerDidFire:(id)fire
{
  v53 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  watchdogTimer = [(HMDXPCRequestTracker *)self watchdogTimer];

  v5 = fireCopy;
  if (watchdogTimer == fireCopy)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v35 = 8;
    os_unfair_lock_lock_with_options();
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    pendingRequests = [(HMDXPCRequestTracker *)self pendingRequests];
    v7 = [pendingRequests copy];

    v8 = [v7 countByEnumeratingWithState:&v40 objects:v52 count:16];
    if (v8)
    {
      v38 = *v41;
      obj = v7;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v41 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v40 + 1) + 8 * i);
          pendingRequests2 = [(HMDXPCRequestTracker *)self pendingRequests];
          v12 = [pendingRequests2 objectForKeyedSubscript:v10];

          v13 = objc_autoreleasePoolPush();
          selfCopy = self;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = HMFGetLogIdentifier();
            name = [v12 name];
            *buf = 138543874;
            v45 = v16;
            v46 = 2112;
            v47 = name;
            v48 = 2112;
            v49 = v10;
            _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Checking if request %@ (%@) timed out after watchdog timer fired", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v13);
          timeoutDate = [v12 timeoutDate];
          v19 = [timeoutDate compare:date] == -1;

          if (v19)
          {
            v20 = objc_autoreleasePoolPush();
            v21 = selfCopy;
            v22 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = HMFGetLogIdentifier();
              name2 = [v12 name];
              clientName = v21->_clientName;
              *buf = 138544130;
              v45 = v23;
              v46 = 2112;
              v47 = name2;
              v48 = 2112;
              v49 = v10;
              v50 = 2112;
              v51 = clientName;
              _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Reaping timed out pending request %@ (%@) from client '%@' that expects a response", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v20);
            v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8];
            [(HMDXPCRequestTracker *)v21 _respondToRequest:v12 withPayload:0 error:v26];

            pendingRequests3 = [(HMDXPCRequestTracker *)v21 pendingRequests];
            [pendingRequests3 setObject:0 forKeyedSubscript:v10];

            pendingRequests4 = [(HMDXPCRequestTracker *)v21 pendingRequests];
            LODWORD(pendingRequests3) = [pendingRequests4 count] == 0;

            if (pendingRequests3)
            {
              v29 = objc_autoreleasePoolPush();
              v30 = v21;
              v31 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
              {
                v32 = HMFGetLogIdentifier();
                *buf = 138543362;
                v45 = v32;
                _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_DEBUG, "%{public}@Suspending watchdog timer after handling timeout", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v29);
              watchdogTimer2 = [(HMDXPCRequestTracker *)v30 watchdogTimer];
              [watchdogTimer2 suspend];
            }
          }
        }

        v7 = obj;
        v8 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
      }

      while (v8);
    }

    os_unfair_lock_unlock((self + v35));
    v5 = fireCopy;
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_respondToRequest:(id)request withPayload:(id)payload error:(id)error
{
  payloadCopy = payload;
  errorCopy = error;
  requestCopy = request;
  responseHandler = [requestCopy responseHandler];
  v12 = [responseHandler copy];

  [requestCopy qualityOfService];
  LODWORD(responseHandler) = HMFQOSClassFromQualityOfService();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HMDXPCRequestTracker__respondToRequest_withPayload_error___block_invoke;
  block[3] = &unk_278689F98;
  v20 = payloadCopy;
  v21 = v12;
  v19 = errorCopy;
  v13 = payloadCopy;
  v14 = errorCopy;
  v15 = v12;
  v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, responseHandler, 0, block);
  queue = [(HMDXPCRequestTracker *)self queue];
  dispatch_async(queue, v16);
}

- (void)cancelAllRequests
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v31 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Canceling all pending requests", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  pendingRequests = [(HMDXPCRequestTracker *)selfCopy pendingRequests];
  v8 = [pendingRequests countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v8)
  {
    v25 = *v27;
    obj = pendingRequests;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        pendingRequests2 = [(HMDXPCRequestTracker *)selfCopy pendingRequests];
        v12 = [pendingRequests2 objectForKeyedSubscript:v10];

        if (v12)
        {
          v13 = objc_autoreleasePoolPush();
          v14 = selfCopy;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = selfCopy;
            v17 = HMFGetLogIdentifier();
            name = [v12 name];
            clientName = v14->_clientName;
            *buf = 138544130;
            v31 = v17;
            v32 = 2112;
            v33 = name;
            v34 = 2112;
            v35 = v10;
            v36 = 2112;
            v37 = clientName;
            _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Canceling pending request %@ (%@) from client '%@' that expects a response", buf, 0x2Au);

            selfCopy = v16;
          }

          objc_autoreleasePoolPop(v13);
          v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
          [(HMDXPCRequestTracker *)v14 _respondToRequest:v12 withPayload:0 error:v20];
        }
      }

      pendingRequests = obj;
      v8 = [obj countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v8);
  }

  pendingRequests3 = [(HMDXPCRequestTracker *)selfCopy pendingRequests];
  [pendingRequests3 removeAllObjects];

  watchdogTimer = [(HMDXPCRequestTracker *)selfCopy watchdogTimer];
  [watchdogTimer suspend];

  os_unfair_lock_unlock(&selfCopy->_lock);
  v23 = *MEMORY[0x277D85DE8];
}

- (void)setClientName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  v4 = [nameCopy copy];
  clientName = self->_clientName;
  self->_clientName = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)clientName
{
  os_unfair_lock_lock_with_options();
  v3 = self->_clientName;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSSet)requestIdentifiers
{
  os_unfair_lock_lock_with_options();
  v3 = MEMORY[0x277CBEB98];
  pendingRequests = [(HMDXPCRequestTracker *)self pendingRequests];
  allKeys = [pendingRequests allKeys];
  v6 = [v3 setWithArray:allKeys];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)respondToRequestWithIdentifier:(id)identifier withPayload:(id)payload error:(id)error
{
  v44 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  payloadCopy = payload;
  errorCopy = error;
  os_unfair_lock_lock_with_options();
  pendingRequests = [(HMDXPCRequestTracker *)self pendingRequests];
  v11 = [pendingRequests objectForKeyedSubscript:identifierCopy];

  if (v11)
  {
    if (errorCopy)
    {
      errorCopy = [MEMORY[0x277CCACA8] stringWithFormat:@" with error %@", errorCopy];
    }

    else
    {
      errorCopy = &stru_283CF9D50;
    }

    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = HMFGetLogIdentifier();
      name = [v11 name];
      clientName = selfCopy->_clientName;
      *buf = 138544386;
      v35 = v20;
      v36 = 2114;
      v37 = name;
      v38 = 2114;
      v39 = identifierCopy;
      v40 = 2114;
      v41 = clientName;
      v42 = 2114;
      v43 = errorCopy;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Answering incoming message %{public}@ (%{public}@) from client '%{public}@' that expects a response%{public}@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v17);
    [(HMDXPCRequestTracker *)selfCopy _respondToRequest:v11 withPayload:payloadCopy error:errorCopy];
    pendingRequests2 = [(HMDXPCRequestTracker *)selfCopy pendingRequests];
    [pendingRequests2 setObject:0 forKeyedSubscript:identifierCopy];

    pendingRequests3 = [(HMDXPCRequestTracker *)selfCopy pendingRequests];
    v25 = [pendingRequests3 count] == 0;

    if (v25)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = selfCopy;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543362;
        v35 = v29;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_DEBUG, "%{public}@Suspending timer after last request was removed", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v26);
      watchdogTimer = [(HMDXPCRequestTracker *)v27 watchdogTimer];
      [watchdogTimer suspend];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      v16 = selfCopy2->_clientName;
      *buf = 138543874;
      v35 = v15;
      v36 = 2114;
      v37 = identifierCopy;
      v38 = 2114;
      v39 = v16;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to find request with identifier %{public}@ for client '%{public}@' to remove from request tracker", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
  }

  os_unfair_lock_unlock(&self->_lock);
  v31 = *MEMORY[0x277D85DE8];
}

- (void)addRequestWithIdentifier:(id)identifier name:(id)name qualityOfService:(int64_t)service isTimeoutDisabled:(BOOL)disabled responseHandler:(id)handler
{
  disabledCopy = disabled;
  v40 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  nameCopy = name;
  handlerCopy = handler;
  os_unfair_lock_lock_with_options();
  pendingRequests = [(HMDXPCRequestTracker *)self pendingRequests];
  v15 = [pendingRequests count];

  if (!v15)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v19;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Starting watchdog timer", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    watchdogTimer = [(HMDXPCRequestTracker *)selfCopy watchdogTimer];
    [watchdogTimer resume];
  }

  v21 = MEMORY[0x277CBEAA8];
  watchdogTimer2 = [(HMDXPCRequestTracker *)self watchdogTimer];
  [watchdogTimer2 timeInterval];
  v23 = [v21 dateWithTimeIntervalSinceNow:?];

  if (disabledCopy)
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543874;
      v35 = v27;
      v36 = 2112;
      v37 = nameCopy;
      v38 = 2112;
      v39 = identifierCopy;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Disabling timeout for message %@(%@)", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v24);
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];

    v23 = distantFuture;
  }

  v29 = [[HMDXPCRequest alloc] initWithName:nameCopy qualityOfService:v33 timeoutDate:v23 responseHandler:handlerCopy];
  pendingRequests2 = [(HMDXPCRequestTracker *)self pendingRequests];
  [pendingRequests2 setObject:v29 forKeyedSubscript:identifierCopy];

  os_unfair_lock_unlock(&self->_lock);
  v31 = *MEMORY[0x277D85DE8];
}

- (HMDXPCRequestTracker)initWithQueue:(id)queue watchdogTimer:(id)timer
{
  queueCopy = queue;
  timerCopy = timer;
  v15.receiver = self;
  v15.super_class = HMDXPCRequestTracker;
  v9 = [(HMDXPCRequestTracker *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    clientName = v10->_clientName;
    v10->_clientName = @"<unknown>";

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    pendingRequests = v10->_pendingRequests;
    v10->_pendingRequests = dictionary;

    objc_storeStrong(&v10->_watchdogTimer, timer);
    [(HMFTimer *)v10->_watchdogTimer setDelegate:v10];
    [(HMFTimer *)v10->_watchdogTimer setDelegateQueue:queueCopy];
  }

  return v10;
}

- (HMDXPCRequestTracker)initWithQueue:(id)queue
{
  v4 = MEMORY[0x277D0F920];
  queueCopy = queue;
  v6 = [[v4 alloc] initWithTimeInterval:4 options:300.0];
  v7 = [(HMDXPCRequestTracker *)self initWithQueue:queueCopy watchdogTimer:v6];

  return v7;
}

void __35__HMDXPCRequestTracker_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v18_273443;
  logCategory__hmf_once_v18_273443 = v1;
}

@end