@interface HMDXPCMessageCountTracker
+ (HMDXPCMessageCountTracker)sharedTracker;
+ (id)logCategory;
- (HMDXPCMessageCountTracker)init;
- (HMDXPCMessageCountTracker)initWithLogEventSubmitter:(id)submitter submissionTimer:(id)timer;
- (NSDictionary)stateDump;
- (id)countersOfType:(int64_t)type;
- (id)mutableCountersOfType:(int64_t)type;
- (id)sampleCountersAndReset:(BOOL)reset;
- (void)_resetCounters;
- (void)configure;
- (void)incrementCounterOfType:(int64_t)type clientIdentifier:(id)identifier messageName:(id)name;
- (void)submitCounters;
- (void)timerDidFire:(id)fire;
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
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v44 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Submitting counters", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDXPCMessageCountTracker *)selfCopy sampleCountersAndReset:1];
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
          allKeys = [v12 allKeys];
          v13 = [allKeys countByEnumeratingWithState:&v33 objects:v41 count:16];
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
                  objc_enumerationMutation(allKeys);
                }

                v17 = *(*(&v33 + 1) + 8 * i);
                v18 = [v31 hmf_numberForKey:v17];
                v19 = [v17 componentsSeparatedByString:@"/"];
                firstObject = [v19 firstObject];
                lastObject = [v19 lastObject];
                v22 = [HMDXPCMessageCountersLogEvent XPCMessageCountersLogEventWithType:v32 peerInformation:firstObject messageName:lastObject count:v18];
                logEventSubmitter = [(HMDXPCMessageCountTracker *)selfCopy logEventSubmitter];
                [logEventSubmitter submitLogEvent:v22];
              }

              v14 = [allKeys countByEnumeratingWithState:&v33 objects:v41 count:16];
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
  acceptedRequests = [(HMDXPCMessageCountTracker *)self acceptedRequests];
  [acceptedRequests removeAllObjects];

  erroredRequests = [(HMDXPCMessageCountTracker *)self erroredRequests];
  [erroredRequests removeAllObjects];

  sentNotifications = [(HMDXPCMessageCountTracker *)self sentNotifications];
  [sentNotifications removeAllObjects];

  date = [MEMORY[0x277CBEAA8] date];
  [(HMDXPCMessageCountTracker *)self setLastResetDate:date];
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  submissionTimer = [(HMDXPCMessageCountTracker *)self submissionTimer];

  if (submissionTimer == fireCopy)
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
  allKeys = [v2 allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v2 objectForKey:v9];
        v11 = HMDXPCCounterTypeAsString([v9 unsignedIntegerValue]);
        [v3 setObject:v10 forKeyedSubscript:v11];
      }

      v6 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)sampleCountersAndReset:(BOOL)reset
{
  resetCopy = reset;
  v15[3] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v14[0] = &unk_283E72A58;
  acceptedRequests = [(HMDXPCMessageCountTracker *)self acceptedRequests];
  v6 = [acceptedRequests copy];
  v15[0] = v6;
  v14[1] = &unk_283E72A70;
  erroredRequests = [(HMDXPCMessageCountTracker *)self erroredRequests];
  v8 = [erroredRequests copy];
  v15[1] = v8;
  v14[2] = &unk_283E72A88;
  sentNotifications = [(HMDXPCMessageCountTracker *)self sentNotifications];
  v10 = [sentNotifications copy];
  v15[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

  if (resetCopy)
  {
    [(HMDXPCMessageCountTracker *)self _resetCounters];
  }

  os_unfair_lock_unlock(&self->_lock);
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)incrementCounterOfType:(int64_t)type clientIdentifier:(id)identifier messageName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  nameCopy = [identifierCopy stringByAppendingFormat:@"/%@", nameCopy];
  hmf_stringWithSmallestEncoding = [nameCopy hmf_stringWithSmallestEncoding];

  os_unfair_lock_lock_with_options();
  v11 = [(HMDXPCMessageCountTracker *)self mutableCountersOfType:type];
  v12 = [v11 hmf_numberForKey:hmf_stringWithSmallestEncoding];
  unsignedLongValue = [v12 unsignedLongValue];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:unsignedLongValue + 1];
  [v11 setValue:v14 forKey:hmf_stringWithSmallestEncoding];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)countersOfType:(int64_t)type
{
  os_unfair_lock_lock_with_options();
  v5 = [(HMDXPCMessageCountTracker *)self mutableCountersOfType:type];
  v6 = [v5 copy];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)mutableCountersOfType:(int64_t)type
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (type == 2)
  {
    sentNotifications = [(HMDXPCMessageCountTracker *)self sentNotifications];
  }

  else if (type == 1)
  {
    sentNotifications = [(HMDXPCMessageCountTracker *)self erroredRequests];
  }

  else
  {
    if (type)
    {
      v7 = _HMFPreconditionFailureWithFormat();
      [(HMDXPCMessageCountTracker *)v7 configure];
      return result;
    }

    sentNotifications = [(HMDXPCMessageCountTracker *)self acceptedRequests];
  }

  return sentNotifications;
}

- (void)configure
{
  submissionTimer = [(HMDXPCMessageCountTracker *)self submissionTimer];
  [submissionTimer setDelegate:self];

  submissionTimer2 = [(HMDXPCMessageCountTracker *)self submissionTimer];
  [submissionTimer2 resume];
}

- (HMDXPCMessageCountTracker)initWithLogEventSubmitter:(id)submitter submissionTimer:(id)timer
{
  submitterCopy = submitter;
  timerCopy = timer;
  v20.receiver = self;
  v20.super_class = HMDXPCMessageCountTracker;
  v9 = [(HMDXPCMessageCountTracker *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_logEventSubmitter, submitter);
    objc_storeStrong(&v10->_submissionTimer, timer);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    acceptedRequests = v10->_acceptedRequests;
    v10->_acceptedRequests = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    erroredRequests = v10->_erroredRequests;
    v10->_erroredRequests = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    sentNotifications = v10->_sentNotifications;
    v10->_sentNotifications = dictionary3;

    date = [MEMORY[0x277CBEAA8] date];
    lastResetDate = v10->_lastResetDate;
    v10->_lastResetDate = date;
  }

  return v10;
}

- (HMDXPCMessageCountTracker)init
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v4 = [mEMORY[0x277D0F8D0] preferenceForKey:@"xpcMessageCountTrackerSubmissionTimeInterval"];
  numberValue = [v4 numberValue];

  v6 = objc_alloc(MEMORY[0x277D0F920]);
  [numberValue doubleValue];
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