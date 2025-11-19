@interface HMDXPCMessageCountTracker
+ (HMDXPCMessageCountTracker)sharedTracker;
+ (id)logCategory;
- (HMDXPCMessageCountTracker)init;
- (HMDXPCMessageCountTracker)initWithLogEventSubmitter:(id)a3 submissionTimer:(id)a4;
- (NSDictionary)stateDump;
- (id)countersOfType:(int64_t)a3;
- (id)mutableCountersOfType:(int64_t)a3;
- (id)sampleCountersAndReset:(BOOL)a3;
- (void)_resetCounters;
- (void)configure;
- (void)incrementCounterOfType:(int64_t)a3 clientIdentifier:(id)a4 messageName:(id)a5;
- (void)submitCounters;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDXPCMessageCountTracker

+ (HMDXPCMessageCountTracker)sharedTracker
{
  if (sharedTracker_onceToken != -1)
  {
    dispatch_once(&sharedTracker_onceToken, &__block_literal_global_107766);
  }

  v3 = sharedTracker_sharedTracker;

  return v3;
}

- (void)submitCounters
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v44 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Submitting counters", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDXPCMessageCountTracker *)v4 sampleCountersAndReset:1];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v26 = v40 = 0u;
  obj = [v26 allKeys];
  v7 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    v25 = *v38;
    do
    {
      v10 = 0;
      v27 = v8;
      do
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v37 + 1) + 8 * v10);
        v32 = HMDXPCCounterTypeAsString([v11 unsignedIntegerValue]);
        if (([v32 isEqualToString:@"XPCErroredRequests"] & 1) == 0)
        {
          v29 = v10;
          v12 = [v26 objectForKeyedSubscript:v11];
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v31 = v12;
          v30 = [v12 allKeys];
          v13 = [v30 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v34;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v34 != v15)
                {
                  objc_enumerationMutation(v30);
                }

                v17 = *(*(&v33 + 1) + 8 * i);
                v18 = [v31 hmf_numberForKey:v17];
                v19 = [v17 componentsSeparatedByString:@"/"];
                v20 = [v19 firstObject];
                v21 = [v19 lastObject];
                v22 = [HMDXPCMessageCountersLogEvent XPCMessageCountersLogEventWithType:v32 peerInformation:v20 messageName:v21 count:v18];
                v23 = [(HMDXPCMessageCountTracker *)v4 logEventSubmitter];
                [v23 submitLogEvent:v22];
              }

              v14 = [v30 countByEnumeratingWithState:&v33 objects:v41 count:16];
            }

            while (v14);
          }

          v9 = v25;
          v8 = v27;
          v10 = v29;
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v8);
  }

  v24 = *MEMORY[0x277D85DE8];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_107759 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_107759, &__block_literal_global_29_107760);
  }

  v3 = logCategory__hmf_once_v5_107761;

  return v3;
}

- (void)_resetCounters
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = [(HMDXPCMessageCountTracker *)self acceptedRequests];
  [v3 removeAllObjects];

  v4 = [(HMDXPCMessageCountTracker *)self erroredRequests];
  [v4 removeAllObjects];

  v5 = [(HMDXPCMessageCountTracker *)self sentNotifications];
  [v5 removeAllObjects];

  v6 = [MEMORY[0x277CBEAA8] date];
  [(HMDXPCMessageCountTracker *)self setLastResetDate:v6];
}

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = [(HMDXPCMessageCountTracker *)self submissionTimer];

  if (v5 == v4)
  {

    [(HMDXPCMessageCountTracker *)self submitCounters];
  }
}

- (NSDictionary)stateDump
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [(HMDXPCMessageCountTracker *)self sampleCountersAndReset:0];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v2, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v2 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v2 objectForKey:v9];
        v11 = HMDXPCCounterTypeAsString([v9 unsignedIntegerValue]);
        [v3 setObject:v10 forKeyedSubscript:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)sampleCountersAndReset:(BOOL)a3
{
  v3 = a3;
  v15[3] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v14[0] = &unk_283E72A58;
  v5 = [(HMDXPCMessageCountTracker *)self acceptedRequests];
  v6 = [v5 copy];
  v15[0] = v6;
  v14[1] = &unk_283E72A70;
  v7 = [(HMDXPCMessageCountTracker *)self erroredRequests];
  v8 = [v7 copy];
  v15[1] = v8;
  v14[2] = &unk_283E72A88;
  v9 = [(HMDXPCMessageCountTracker *)self sentNotifications];
  v10 = [v9 copy];
  v15[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

  if (v3)
  {
    [(HMDXPCMessageCountTracker *)self _resetCounters];
  }

  os_unfair_lock_unlock(&self->_lock);
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)incrementCounterOfType:(int64_t)a3 clientIdentifier:(id)a4 messageName:(id)a5
{
  v15 = a4;
  v8 = a5;
  v9 = [v15 stringByAppendingFormat:@"/%@", v8];
  v10 = [v9 hmf_stringWithSmallestEncoding];

  os_unfair_lock_lock_with_options();
  v11 = [(HMDXPCMessageCountTracker *)self mutableCountersOfType:a3];
  v12 = [v11 hmf_numberForKey:v10];
  v13 = [v12 unsignedLongValue];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v13 + 1];
  [v11 setValue:v14 forKey:v10];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)countersOfType:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  v5 = [(HMDXPCMessageCountTracker *)self mutableCountersOfType:a3];
  v6 = [v5 copy];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)mutableCountersOfType:(int64_t)a3
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (a3 == 2)
  {
    v5 = [(HMDXPCMessageCountTracker *)self sentNotifications];
  }

  else if (a3 == 1)
  {
    v5 = [(HMDXPCMessageCountTracker *)self erroredRequests];
  }

  else
  {
    if (a3)
    {
      v7 = _HMFPreconditionFailureWithFormat();
      [(HMDXPCMessageCountTracker *)v7 configure];
      return result;
    }

    v5 = [(HMDXPCMessageCountTracker *)self acceptedRequests];
  }

  return v5;
}

- (void)configure
{
  v3 = [(HMDXPCMessageCountTracker *)self submissionTimer];
  [v3 setDelegate:self];

  v4 = [(HMDXPCMessageCountTracker *)self submissionTimer];
  [v4 resume];
}

- (HMDXPCMessageCountTracker)initWithLogEventSubmitter:(id)a3 submissionTimer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = HMDXPCMessageCountTracker;
  v9 = [(HMDXPCMessageCountTracker *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_logEventSubmitter, a3);
    objc_storeStrong(&v10->_submissionTimer, a4);
    v11 = [MEMORY[0x277CBEB38] dictionary];
    acceptedRequests = v10->_acceptedRequests;
    v10->_acceptedRequests = v11;

    v13 = [MEMORY[0x277CBEB38] dictionary];
    erroredRequests = v10->_erroredRequests;
    v10->_erroredRequests = v13;

    v15 = [MEMORY[0x277CBEB38] dictionary];
    sentNotifications = v10->_sentNotifications;
    v10->_sentNotifications = v15;

    v17 = [MEMORY[0x277CBEAA8] date];
    lastResetDate = v10->_lastResetDate;
    v10->_lastResetDate = v17;
  }

  return v10;
}

- (HMDXPCMessageCountTracker)init
{
  v3 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v4 = [v3 preferenceForKey:@"xpcMessageCountTrackerSubmissionTimeInterval"];
  v5 = [v4 numberValue];

  v6 = objc_alloc(MEMORY[0x277D0F920]);
  [v5 doubleValue];
  v7 = [v6 initWithTimeInterval:12 options:?];
  v8 = +[HMDMetricsManager sharedLogEventSubmitter];
  v9 = [(HMDXPCMessageCountTracker *)self initWithLogEventSubmitter:v8 submissionTimer:v7];

  return v9;
}

void __40__HMDXPCMessageCountTracker_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_107761;
  logCategory__hmf_once_v5_107761 = v1;
}

uint64_t __42__HMDXPCMessageCountTracker_sharedTracker__block_invoke()
{
  v0 = objc_alloc_init(HMDXPCMessageCountTracker);
  v1 = sharedTracker_sharedTracker;
  sharedTracker_sharedTracker = v0;

  v2 = sharedTracker_sharedTracker;

  return [v2 configure];
}

@end