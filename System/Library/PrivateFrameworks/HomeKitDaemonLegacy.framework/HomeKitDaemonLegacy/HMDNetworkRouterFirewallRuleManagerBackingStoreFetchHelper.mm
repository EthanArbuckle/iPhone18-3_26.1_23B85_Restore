@interface HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper
+ (id)logCategory;
+ (unint64_t)__integerForPreferenceKey:(id)key defaultValue:(unint64_t)value;
- (BOOL)shouldRetry;
- (void)dealloc;
- (void)finishWithResult:(id)result error:(id)error;
- (void)setRetryIntervalSeconds:(double)seconds;
- (void)setShouldRetry:(BOOL)retry;
@end

@implementation HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper

- (void)finishWithResult:(id)result error:(id)error
{
  v29 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  errorCopy = error;
  if (self->_finished)
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v22;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Finished more than once!", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [[HMDAssertionLogEvent alloc] initWithReason:@"Finished more than once!"];
    v24 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v24 submitLogEvent:v23];
  }

  self->_finished = 1;
  activity = [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)self activity];
  v9 = activity;
  if (errorCopy)
  {
    [activity markWithFormat:@"Fetch failed with error: %@", errorCopy];

    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v13;
      v27 = 2112;
      v28 = errorCopy;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Fetch failed with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [(NAPromise *)selfCopy2->_promise finishWithError:errorCopy];
  }

  else
  {
    [activity markWithFormat:@"Fetch succeeded"];

    v14 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Fetch succeeded", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    [(NAPromise *)selfCopy3->_promise finishWithResult:resultCopy];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setRetryIntervalSeconds:(double)seconds
{
  if (seconds < 0.0)
  {
    seconds = *MEMORY[0x277D17040];
  }

  self->_retryIntervalSeconds = seconds;
}

- (void)setShouldRetry:(BOOL)retry
{
  if (retry)
  {
    if (self->_retryIntervalSeconds == *MEMORY[0x277D17040])
    {
      self->_retryIntervalSeconds = 0.0;
    }
  }

  else
  {
    self->_retryIntervalSeconds = *MEMORY[0x277D17040];
  }
}

- (BOOL)shouldRetry
{
  v23 = *MEMORY[0x277D85DE8];
  maxRetryCount = [objc_opt_class() maxRetryCount];
  if ([(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)self retryCount]> maxRetryCount)
  {
    activity = [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)self activity];
    [activity markWithFormat:@"Cannot retry because we've exceeded the maximum number of retries (%lu)", maxRetryCount];

    v5 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v8;
      v21 = 2048;
      v22 = maxRetryCount;
      v9 = "%{public}@Cannot retry because we've exceeded the maximum number of retries (%lu)";
LABEL_9:
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, v9, buf, 0x16u);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

  operationStartTime = [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)self operationStartTime];

  if (operationStartTime)
  {
    maxOperationDurationSeconds = [objc_opt_class() maxOperationDurationSeconds];
    v12 = [MEMORY[0x277CBEAA8] now];
    operationStartTime2 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)self operationStartTime];
    [v12 timeIntervalSinceDate:operationStartTime2];
    v15 = llround(v14);

    if (v15 >= maxOperationDurationSeconds)
    {
      activity2 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)self activity];
      [activity2 markWithFormat:@"Cannot retry because we've exceeded the maximum operation duration (%ld)", maxOperationDurationSeconds];

      v5 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = HMFGetLogIdentifier();
        *buf = 138543618;
        v20 = v8;
        v21 = 2048;
        v22 = maxOperationDurationSeconds;
        v9 = "%{public}@Cannot retry because we've exceeded the maximum operation duration (%ld)";
        goto LABEL_9;
      }

LABEL_10:

      objc_autoreleasePoolPop(v5);
      result = 0;
      goto LABEL_11;
    }
  }

  result = self->_retryIntervalSeconds != *MEMORY[0x277D17040];
LABEL_11:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  if (!self->_finished)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v12 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Forgot to call finishWithError", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [[HMDAssertionLogEvent alloc] initWithReason:@"Forgot to call finishWithError"];
    v9 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v9 submitLogEvent:v8];
  }

  v10.receiver = self;
  v10.super_class = HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper;
  [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)&v10 dealloc];
  v3 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)__integerForPreferenceKey:(id)key defaultValue:(unint64_t)value
{
  v5 = MEMORY[0x277D0F8D0];
  keyCopy = key;
  sharedPreferences = [v5 sharedPreferences];
  v8 = [sharedPreferences preferenceForKey:keyCopy];

  numberValue = [v8 numberValue];

  if (numberValue)
  {
    numberValue2 = [v8 numberValue];
    value = [numberValue2 unsignedIntegerValue];
  }

  return value;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0, &__block_literal_global_362);
  }

  v3 = logCategory__hmf_once_v1;

  return v3;
}

uint64_t __73__HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v1 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end