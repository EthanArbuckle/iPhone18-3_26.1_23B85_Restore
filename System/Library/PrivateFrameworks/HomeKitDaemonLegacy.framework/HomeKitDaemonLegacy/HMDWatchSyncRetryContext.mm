@interface HMDWatchSyncRetryContext
+ (id)createWithWatchIdentifier:(id)identifier watchSync:(id)sync retryAttempt:(int64_t)attempt;
- (HMDWatchSyncRetryContext)initWithWatchIdentifier:(id)identifier watchSync:(id)sync retryAttempt:(int64_t)attempt initialRetryInterval:(double)interval maximumRetryAttempts:(int64_t)attempts;
- (double)retryInterval;
- (id)attributeDescriptions;
@end

@implementation HMDWatchSyncRetryContext

- (id)attributeDescriptions
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  watchIdentifier = [(HMDWatchSyncRetryContext *)self watchIdentifier];
  v5 = [v3 initWithName:@"Watch Identifier" value:watchIdentifier];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  watchSync = [(HMDWatchSyncRetryContext *)self watchSync];
  v8 = [v6 initWithName:@"Watch Sync" value:watchSync];
  v16[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = MEMORY[0x277CCABB0];
  [(HMDWatchSyncRetryContext *)self retryInterval];
  v11 = [v10 numberWithDouble:?];
  v12 = [v9 initWithName:@"Retry Interval" value:v11];
  v16[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (double)retryInterval
{
  v3 = exp2([(HMDWatchSyncRetryContext *)self retryAttempt]);
  [(HMDWatchSyncRetryContext *)self initialRetryInterval];
  return v4 * v3;
}

- (HMDWatchSyncRetryContext)initWithWatchIdentifier:(id)identifier watchSync:(id)sync retryAttempt:(int64_t)attempt initialRetryInterval:(double)interval maximumRetryAttempts:(int64_t)attempts
{
  identifierCopy = identifier;
  syncCopy = sync;
  v20.receiver = self;
  v20.super_class = HMDWatchSyncRetryContext;
  v15 = [(HMDWatchSyncRetryContext *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_watchIdentifier, identifier);
    v17 = [syncCopy copy];
    watchSync = v16->_watchSync;
    v16->_watchSync = v17;

    v16->_retryAttempt = attempt;
    v16->_initialRetryInterval = interval;
    v16->_maximumRetryAttempts = attempts;
  }

  return v16;
}

+ (id)createWithWatchIdentifier:(id)identifier watchSync:(id)sync retryAttempt:(int64_t)attempt
{
  v37 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  syncCopy = sync;
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v10 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HMDWatchSyncMaximumRetryAttempts"];
  numberValue = [v10 numberValue];

  if ([numberValue integerValue] <= 0)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v31 = 138543874;
      v32 = v21;
      v33 = 2112;
      attemptCopy = @"HMDWatchSyncMaximumRetryAttempts";
      v35 = 2112;
      v36 = numberValue;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Value for maximum watch sync retry attempts key: %@ is less than equal to 0: %@", &v31, 0x20u);
    }

    v22 = v19;
    goto LABEL_11;
  }

  if ([numberValue integerValue] <= attempt)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v31 = 138543874;
      v32 = v25;
      v33 = 2048;
      attemptCopy = attempt;
      v35 = 2112;
      v36 = numberValue;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Exhausted all watch sync retry attempts. Current attempt: %lu, maximum attempts: %@", &v31, 0x20u);
    }

    v22 = v23;
LABEL_11:
    objc_autoreleasePoolPop(v22);
    v18 = 0;
    goto LABEL_16;
  }

  mEMORY[0x277D0F8D0]2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v13 = [mEMORY[0x277D0F8D0]2 preferenceForKey:@"HMDWatchSyncInitialRetryInterval"];
  numberValue2 = [v13 numberValue];

  [numberValue2 doubleValue];
  if (v15 <= 0.0)
  {
    v26 = objc_autoreleasePoolPush();
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      v31 = 138543874;
      v32 = v28;
      v33 = 2112;
      attemptCopy = @"HMDWatchSyncInitialRetryInterval";
      v35 = 2112;
      v36 = numberValue2;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Value for watch sync initial retry interval: %@ is less than equal to 0: %@", &v31, 0x20u);
    }

    objc_autoreleasePoolPop(v26);
    v18 = 0;
  }

  else
  {
    v16 = [HMDWatchSyncRetryContext alloc];
    [numberValue2 doubleValue];
    v18 = -[HMDWatchSyncRetryContext initWithWatchIdentifier:watchSync:retryAttempt:initialRetryInterval:maximumRetryAttempts:](v16, "initWithWatchIdentifier:watchSync:retryAttempt:initialRetryInterval:maximumRetryAttempts:", identifierCopy, syncCopy, attempt, [numberValue integerValue], v17);
  }

LABEL_16:
  v29 = *MEMORY[0x277D85DE8];

  return v18;
}

@end