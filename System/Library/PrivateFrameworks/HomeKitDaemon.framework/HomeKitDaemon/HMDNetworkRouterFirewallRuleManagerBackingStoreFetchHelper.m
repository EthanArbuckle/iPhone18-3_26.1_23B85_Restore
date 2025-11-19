@interface HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper
+ (id)logCategory;
+ (unint64_t)__integerForPreferenceKey:(id)a3 defaultValue:(unint64_t)a4;
- (BOOL)shouldRetry;
- (void)dealloc;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)setRetryIntervalSeconds:(double)a3;
- (void)setShouldRetry:(BOOL)a3;
@end

@implementation HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_finished)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Finished more than once!", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [[HMDAssertionLogEvent alloc] initWithReason:@"Finished more than once!"];
    v24 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v24 submitLogEvent:v23];
  }

  self->_finished = 1;
  v8 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)self activity];
  v9 = v8;
  if (v7)
  {
    [v8 markWithFormat:@"Fetch failed with error: %@", v7];

    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v13;
      v27 = 2112;
      v28 = v7;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Fetch failed with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [(NAPromise *)v11->_promise finishWithError:v7];
  }

  else
  {
    [v8 markWithFormat:@"Fetch succeeded"];

    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Fetch succeeded", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    [(NAPromise *)v15->_promise finishWithResult:v6];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setRetryIntervalSeconds:(double)a3
{
  if (a3 < 0.0)
  {
    a3 = *MEMORY[0x277D17040];
  }

  self->_retryIntervalSeconds = a3;
}

- (void)setShouldRetry:(BOOL)a3
{
  if (a3)
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
  v3 = [objc_opt_class() maxRetryCount];
  if ([(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)self retryCount]> v3)
  {
    v4 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)self activity];
    [v4 markWithFormat:@"Cannot retry because we've exceeded the maximum number of retries (%lu)", v3];

    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v8;
      v21 = 2048;
      v22 = v3;
      v9 = "%{public}@Cannot retry because we've exceeded the maximum number of retries (%lu)";
LABEL_9:
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, v9, buf, 0x16u);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v10 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)self operationStartTime];

  if (v10)
  {
    v11 = [objc_opt_class() maxOperationDurationSeconds];
    v12 = [MEMORY[0x277CBEAA8] now];
    v13 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)self operationStartTime];
    [v12 timeIntervalSinceDate:v13];
    v15 = llround(v14);

    if (v15 >= v11)
    {
      v17 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)self activity];
      [v17 markWithFormat:@"Cannot retry because we've exceeded the maximum operation duration (%ld)", v11];

      v5 = objc_autoreleasePoolPush();
      v6 = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = HMFGetLogIdentifier();
        *buf = 138543618;
        v20 = v8;
        v21 = 2048;
        v22 = v11;
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
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v12 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Forgot to call finishWithError", buf, 0xCu);
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

+ (unint64_t)__integerForPreferenceKey:(id)a3 defaultValue:(unint64_t)a4
{
  v5 = MEMORY[0x277D0F8D0];
  v6 = a3;
  v7 = [v5 sharedPreferences];
  v8 = [v7 preferenceForKey:v6];

  v9 = [v8 numberValue];

  if (v9)
  {
    v10 = [v8 numberValue];
    a4 = [v10 unsignedIntegerValue];
  }

  return a4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0, &__block_literal_global_499);
  }

  v3 = logCategory__hmf_once_v1;

  return v3;
}

void __73__HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1;
  logCategory__hmf_once_v1 = v1;
}

@end