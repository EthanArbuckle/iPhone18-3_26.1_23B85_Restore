@interface HMDCounterThresholdLoggingTrigger
- (HMDCounterThresholdLoggingTrigger)initWithThreshold:(int64_t)a3 counterName:(id)a4 uploadImmediately:(BOOL)a5 ewsLogger:(id)a6;
- (void)logThresholdTrigger:(id)a3 triggerValue:(unint64_t)a4;
- (void)updatedCounter:(id)a3 fromOldValue:(int64_t)a4 toNewValue:(int64_t)a5;
@end

@implementation HMDCounterThresholdLoggingTrigger

- (void)logThresholdTrigger:(id)a3 triggerValue:(unint64_t)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [(HMDCounterThresholdLoggingTrigger *)v8 counterName];
    *buf = 138544130;
    v21 = v10;
    v22 = 2114;
    v23 = v6;
    v24 = 2114;
    v25 = v11;
    v26 = 2048;
    v27 = a4;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@EWS threshold trigger: trigger=%{public}@, counter=%{public}@, value=%lu", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [(HMDCounterThresholdLoggingTrigger *)v8 ewsLogger];
  v13 = [(HMDCounterThresholdLoggingTrigger *)v8 uploadImmediately];
  v14 = [(HMDCounterThresholdLoggingTrigger *)v8 counterName];
  v18[1] = @"value";
  v19[0] = v14;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v19[1] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  [v12 submitEventWithName:v6 serviceName:@"Counter Trigger" uploadImmediately:v13 payload:v16];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)updatedCounter:(id)a3 fromOldValue:(int64_t)a4 toNewValue:(int64_t)a5
{
  if ([(HMDCounterThresholdLoggingTrigger *)self threshold]<= a5 && [(HMDCounterThresholdLoggingTrigger *)self threshold]> a4)
  {
    [(HMDCounterThresholdLoggingTrigger *)self logThresholdTrigger:@"Trigger threshold met" triggerValue:a5];
  }

  if (!a5 && [(HMDCounterThresholdLoggingTrigger *)self threshold]<= a4)
  {

    [(HMDCounterThresholdLoggingTrigger *)self logThresholdTrigger:@"Max value above threshold" triggerValue:a4];
  }
}

- (HMDCounterThresholdLoggingTrigger)initWithThreshold:(int64_t)a3 counterName:(id)a4 uploadImmediately:(BOOL)a5 ewsLogger:(id)a6
{
  v11 = a4;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = HMDCounterThresholdLoggingTrigger;
  v13 = [(HMDCounterThresholdLoggingTrigger *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_threshold = a3;
    objc_storeStrong(&v13->_counterName, a4);
    v14->_uploadImmediately = a5;
    objc_storeStrong(&v14->_ewsLogger, a6);
  }

  return v14;
}

@end