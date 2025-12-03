@interface HMDMetricsPreferencesDebugManager
- (HMDMetricsPreferencesDebugManager)initWithDataSource:(id)source;
- (void)submitPreferencesSizeLogEventsForApplicationID:(id)d submissionTrigger:(unint64_t)trigger;
@end

@implementation HMDMetricsPreferencesDebugManager

- (void)submitPreferencesSizeLogEventsForApplicationID:(id)d submissionTrigger:(unint64_t)trigger
{
  v37 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (isInternalBuild())
  {
    v7 = CFPreferencesCopyMultiple(0, dCopy, *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v7;
    v23 = [(__CFDictionary *)obj countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v23)
    {
      v22 = *v27;
      selfCopy = self;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v27 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v26 + 1) + 8 * i);
          context = objc_autoreleasePoolPush();
          v10 = [(__CFDictionary *)obj objectForKeyedSubscript:v9];
          v11 = HMFApproximateSizeOfPlistValue();
          v12 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            triggerCopy = trigger;
            v17 = v16 = dCopy;
            *buf = 138543874;
            v31 = v17;
            v32 = 2114;
            v33 = v9;
            v34 = 2048;
            v35 = v11;
            _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Preferences Key: %{public}@ Size of value: %ld", buf, 0x20u);

            dCopy = v16;
            trigger = triggerCopy;
            self = selfCopy;
          }

          objc_autoreleasePoolPop(v12);
          v18 = [[HMDPreferencesSizeLogEvent alloc] initWithApplicationID:dCopy preferencesKey:v9 preferencesSize:v11 eventTrigger:trigger];
          logEventSubmitter = [(HMDMetricsPreferencesDebugManager *)selfCopy2 logEventSubmitter];
          [logEventSubmitter submitLogEvent:v18];

          objc_autoreleasePoolPop(context);
        }

        v23 = [(__CFDictionary *)obj countByEnumeratingWithState:&v26 objects:v36 count:16];
      }

      while (v23);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (HMDMetricsPreferencesDebugManager)initWithDataSource:(id)source
{
  sourceCopy = source;
  v10.receiver = self;
  v10.super_class = HMDMetricsPreferencesDebugManager;
  v5 = [(HMDMetricsPreferencesDebugManager *)&v10 init];
  if (v5)
  {
    logEventSubmitter = [sourceCopy logEventSubmitter];
    logEventSubmitter = v5->_logEventSubmitter;
    v5->_logEventSubmitter = logEventSubmitter;

    dailyScheduler = [sourceCopy dailyScheduler];
    [dailyScheduler registerDailyTaskRunner:v5];
  }

  return v5;
}

@end