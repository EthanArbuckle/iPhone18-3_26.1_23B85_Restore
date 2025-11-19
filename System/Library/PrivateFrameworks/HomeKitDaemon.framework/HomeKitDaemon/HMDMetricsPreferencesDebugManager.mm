@interface HMDMetricsPreferencesDebugManager
- (HMDMetricsPreferencesDebugManager)initWithDataSource:(id)a3;
- (void)submitPreferencesSizeLogEventsForApplicationID:(id)a3 submissionTrigger:(unint64_t)a4;
@end

@implementation HMDMetricsPreferencesDebugManager

- (void)submitPreferencesSizeLogEventsForApplicationID:(id)a3 submissionTrigger:(unint64_t)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (isInternalBuild())
  {
    v7 = CFPreferencesCopyMultiple(0, v6, *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v7;
    v23 = [(__CFDictionary *)obj countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v23)
    {
      v22 = *v27;
      v21 = self;
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
          v13 = self;
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v15 = a4;
            v17 = v16 = v6;
            *buf = 138543874;
            v31 = v17;
            v32 = 2114;
            v33 = v9;
            v34 = 2048;
            v35 = v11;
            _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Preferences Key: %{public}@ Size of value: %ld", buf, 0x20u);

            v6 = v16;
            a4 = v15;
            self = v21;
          }

          objc_autoreleasePoolPop(v12);
          v18 = [[HMDPreferencesSizeLogEvent alloc] initWithApplicationID:v6 preferencesKey:v9 preferencesSize:v11 eventTrigger:a4];
          v19 = [(HMDMetricsPreferencesDebugManager *)v13 logEventSubmitter];
          [v19 submitLogEvent:v18];

          objc_autoreleasePoolPop(context);
        }

        v23 = [(__CFDictionary *)obj countByEnumeratingWithState:&v26 objects:v36 count:16];
      }

      while (v23);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (HMDMetricsPreferencesDebugManager)initWithDataSource:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HMDMetricsPreferencesDebugManager;
  v5 = [(HMDMetricsPreferencesDebugManager *)&v10 init];
  if (v5)
  {
    v6 = [v4 logEventSubmitter];
    logEventSubmitter = v5->_logEventSubmitter;
    v5->_logEventSubmitter = v6;

    v8 = [v4 dailyScheduler];
    [v8 registerDailyTaskRunner:v5];
  }

  return v5;
}

@end