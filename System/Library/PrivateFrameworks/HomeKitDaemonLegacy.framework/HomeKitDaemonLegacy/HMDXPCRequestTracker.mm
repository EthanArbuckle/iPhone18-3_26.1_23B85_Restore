@interface HMDXPCRequestTracker
+ (id)logCategory;
- (HMDXPCRequestTracker)initWithQueue:(id)a3;
- (HMDXPCRequestTracker)initWithQueue:(id)a3 watchdogTimer:(id)a4;
- (NSSet)requestIdentifiers;
- (NSString)clientName;
- (void)_respondToRequest:(id)a3 withPayload:(id)a4 error:(id)a5;
- (void)addRequestWithIdentifier:(id)a3 name:(id)a4 qualityOfService:(int64_t)a5 isTimeoutDisabled:(BOOL)a6 responseHandler:(id)a7;
- (void)cancelAllRequests;
- (void)respondToRequestWithIdentifier:(id)a3 withPayload:(id)a4 error:(id)a5;
- (void)setClientName:(id)a3;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDXPCRequestTracker

- (void)timerDidFire:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v36 = a3;
  v4 = [(HMDXPCRequestTracker *)self watchdogTimer];

  v5 = v36;
  if (v4 == v36)
  {
    v39 = [MEMORY[0x277CBEAA8] date];
    v35 = 8;
    os_unfair_lock_lock_with_options();
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v6 = [(HMDXPCRequestTracker *)self pendingRequests];
    v7 = [v6 copy];

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
          v11 = [(HMDXPCRequestTracker *)self pendingRequests];
          v12 = [v11 objectForKeyedSubscript:v10];

          v13 = objc_autoreleasePoolPush();
          v14 = self;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = HMFGetLogIdentifier();
            v17 = [v12 name];
            *buf = 138543874;
            v45 = v16;
            v46 = 2112;
            v47 = v17;
            v48 = 2112;
            v49 = v10;
            _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Checking if request %@ (%@) timed out after watchdog timer fired", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v13);
          v18 = [v12 timeoutDate];
          v19 = [v18 compare:v39] == -1;

          if (v19)
          {
            v20 = objc_autoreleasePoolPush();
            v21 = v14;
            v22 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = HMFGetLogIdentifier();
              v24 = [v12 name];
              clientName = v21->_clientName;
              *buf = 138544130;
              v45 = v23;
              v46 = 2112;
              v47 = v24;
              v48 = 2112;
              v49 = v10;
              v50 = 2112;
              v51 = clientName;
              _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Reaping timed out pending request %@ (%@) from client '%@' that expects a response", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v20);
            v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8];
            [(HMDXPCRequestTracker *)v21 _respondToRequest:v12 withPayload:0 error:v26];

            v27 = [(HMDXPCRequestTracker *)v21 pendingRequests];
            [v27 setObject:0 forKeyedSubscript:v10];

            v28 = [(HMDXPCRequestTracker *)v21 pendingRequests];
            LODWORD(v27) = [v28 count] == 0;

            if (v27)
            {
              v29 = objc_autoreleasePoolPush();
              v30 = v21;
              v31 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
              {
                v32 = HMFGetLogIdentifier();
                *buf = 138543362;
                v45 = v32;
                _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_DEBUG, "%{public}@Suspending watchdog timer after handling timeout", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v29);
              v33 = [(HMDXPCRequestTracker *)v30 watchdogTimer];
              [v33 suspend];
            }
          }
        }

        v7 = obj;
        v8 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
      }

      while (v8);
    }

    os_unfair_lock_unlock((self + v35));
    v5 = v36;
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_respondToRequest:(id)a3 withPayload:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v10 responseHandler];
  v12 = [v11 copy];

  [v10 qualityOfService];
  LODWORD(v11) = HMFQOSClassFromQualityOfService();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HMDXPCRequestTracker__respondToRequest_withPayload_error___block_invoke;
  block[3] = &unk_2797355D0;
  v20 = v8;
  v21 = v12;
  v19 = v9;
  v13 = v8;
  v14 = v9;
  v15 = v12;
  v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v11, 0, block);
  v17 = [(HMDXPCRequestTracker *)self queue];
  dispatch_async(v17, v16);
}

- (void)cancelAllRequests
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v31 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Canceling all pending requests", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [(HMDXPCRequestTracker *)v4 pendingRequests];
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v8)
  {
    v25 = *v27;
    obj = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [(HMDXPCRequestTracker *)v4 pendingRequests];
        v12 = [v11 objectForKeyedSubscript:v10];

        if (v12)
        {
          v13 = objc_autoreleasePoolPush();
          v14 = v4;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = v4;
            v17 = HMFGetLogIdentifier();
            v18 = [v12 name];
            clientName = v14->_clientName;
            *buf = 138544130;
            v31 = v17;
            v32 = 2112;
            v33 = v18;
            v34 = 2112;
            v35 = v10;
            v36 = 2112;
            v37 = clientName;
            _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Canceling pending request %@ (%@) from client '%@' that expects a response", buf, 0x2Au);

            v4 = v16;
          }

          objc_autoreleasePoolPop(v13);
          v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
          [(HMDXPCRequestTracker *)v14 _respondToRequest:v12 withPayload:0 error:v20];
        }
      }

      v7 = obj;
      v8 = [obj countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v8);
  }

  v21 = [(HMDXPCRequestTracker *)v4 pendingRequests];
  [v21 removeAllObjects];

  v22 = [(HMDXPCRequestTracker *)v4 watchdogTimer];
  [v22 suspend];

  os_unfair_lock_unlock(&v4->_lock);
  v23 = *MEMORY[0x277D85DE8];
}

- (void)setClientName:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
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
  v4 = [(HMDXPCRequestTracker *)self pendingRequests];
  v5 = [v4 allKeys];
  v6 = [v3 setWithArray:v5];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)respondToRequestWithIdentifier:(id)a3 withPayload:(id)a4 error:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v33 = a4;
  v9 = a5;
  os_unfair_lock_lock_with_options();
  v10 = [(HMDXPCRequestTracker *)self pendingRequests];
  v11 = [v10 objectForKeyedSubscript:v8];

  if (v11)
  {
    if (v9)
    {
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@" with error %@", v9];
    }

    else
    {
      v32 = &stru_286509E58;
    }

    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v11 name];
      clientName = v18->_clientName;
      *buf = 138544386;
      v35 = v20;
      v36 = 2114;
      v37 = v21;
      v38 = 2114;
      v39 = v8;
      v40 = 2114;
      v41 = clientName;
      v42 = 2114;
      v43 = v32;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Answering incoming message %{public}@ (%{public}@) from client '%{public}@' that expects a response%{public}@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v17);
    [(HMDXPCRequestTracker *)v18 _respondToRequest:v11 withPayload:v33 error:v9];
    v23 = [(HMDXPCRequestTracker *)v18 pendingRequests];
    [v23 setObject:0 forKeyedSubscript:v8];

    v24 = [(HMDXPCRequestTracker *)v18 pendingRequests];
    v25 = [v24 count] == 0;

    if (v25)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = v18;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543362;
        v35 = v29;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_DEBUG, "%{public}@Suspending timer after last request was removed", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v26);
      v30 = [(HMDXPCRequestTracker *)v27 watchdogTimer];
      [v30 suspend];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      v16 = v13->_clientName;
      *buf = 138543874;
      v35 = v15;
      v36 = 2114;
      v37 = v8;
      v38 = 2114;
      v39 = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to find request with identifier %{public}@ for client '%{public}@' to remove from request tracker", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
  }

  os_unfair_lock_unlock(&self->_lock);
  v31 = *MEMORY[0x277D85DE8];
}

- (void)addRequestWithIdentifier:(id)a3 name:(id)a4 qualityOfService:(int64_t)a5 isTimeoutDisabled:(BOOL)a6 responseHandler:(id)a7
{
  v8 = a6;
  v40 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a7;
  os_unfair_lock_lock_with_options();
  v14 = [(HMDXPCRequestTracker *)self pendingRequests];
  v15 = [v14 count];

  if (!v15)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Starting watchdog timer", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v20 = [(HMDXPCRequestTracker *)v17 watchdogTimer];
    [v20 resume];
  }

  v21 = MEMORY[0x277CBEAA8];
  v22 = [(HMDXPCRequestTracker *)self watchdogTimer];
  [v22 timeInterval];
  v23 = [v21 dateWithTimeIntervalSinceNow:?];

  if (v8)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543874;
      v35 = v27;
      v36 = 2112;
      v37 = v12;
      v38 = 2112;
      v39 = v11;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Disabling timeout for message %@(%@)", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [MEMORY[0x277CBEAA8] distantFuture];

    v23 = v28;
  }

  v29 = [[HMDXPCRequest alloc] initWithName:v12 qualityOfService:v33 timeoutDate:v23 responseHandler:v13];
  v30 = [(HMDXPCRequestTracker *)self pendingRequests];
  [v30 setObject:v29 forKeyedSubscript:v11];

  os_unfair_lock_unlock(&self->_lock);
  v31 = *MEMORY[0x277D85DE8];
}

- (HMDXPCRequestTracker)initWithQueue:(id)a3 watchdogTimer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = HMDXPCRequestTracker;
  v9 = [(HMDXPCRequestTracker *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    clientName = v10->_clientName;
    v10->_clientName = @"<unknown>";

    v12 = [MEMORY[0x277CBEB38] dictionary];
    pendingRequests = v10->_pendingRequests;
    v10->_pendingRequests = v12;

    objc_storeStrong(&v10->_watchdogTimer, a4);
    [(HMFTimer *)v10->_watchdogTimer setDelegate:v10];
    [(HMFTimer *)v10->_watchdogTimer setDelegateQueue:v7];
  }

  return v10;
}

- (HMDXPCRequestTracker)initWithQueue:(id)a3
{
  v4 = MEMORY[0x277D0F920];
  v5 = a3;
  v6 = [[v4 alloc] initWithTimeInterval:4 options:300.0];
  v7 = [(HMDXPCRequestTracker *)self initWithQueue:v5 watchdogTimer:v6];

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t17_165802 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t17_165802, &__block_literal_global_165803);
  }

  v3 = logCategory__hmf_once_v18_165804;

  return v3;
}

uint64_t __35__HMDXPCRequestTracker_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v18_165804;
  logCategory__hmf_once_v18_165804 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end