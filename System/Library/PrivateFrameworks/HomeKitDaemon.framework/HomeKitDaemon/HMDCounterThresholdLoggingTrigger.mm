@interface HMDCounterThresholdLoggingTrigger
- (HMDCounterThresholdLoggingTrigger)initWithThreshold:(int64_t)threshold counterName:(id)name uploadImmediately:(BOOL)immediately ewsLogger:(id)logger;
- (void)logThresholdTrigger:(id)trigger triggerValue:(unint64_t)value;
- (void)updatedCounter:(id)counter fromOldValue:(int64_t)value toNewValue:(int64_t)newValue;
@end

@implementation HMDCounterThresholdLoggingTrigger

- (void)logThresholdTrigger:(id)trigger triggerValue:(unint64_t)value
{
  v28 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    counterName = [(HMDCounterThresholdLoggingTrigger *)selfCopy counterName];
    *buf = 138544130;
    v21 = v10;
    v22 = 2114;
    v23 = triggerCopy;
    v24 = 2114;
    v25 = counterName;
    v26 = 2048;
    valueCopy = value;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@EWS threshold trigger: trigger=%{public}@, counter=%{public}@, value=%lu", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  ewsLogger = [(HMDCounterThresholdLoggingTrigger *)selfCopy ewsLogger];
  uploadImmediately = [(HMDCounterThresholdLoggingTrigger *)selfCopy uploadImmediately];
  counterName2 = [(HMDCounterThresholdLoggingTrigger *)selfCopy counterName];
  v18[1] = @"value";
  v19[0] = counterName2;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:value];
  v19[1] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  [ewsLogger submitEventWithName:triggerCopy serviceName:@"Counter Trigger" uploadImmediately:uploadImmediately payload:v16];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)updatedCounter:(id)counter fromOldValue:(int64_t)value toNewValue:(int64_t)newValue
{
  if ([(HMDCounterThresholdLoggingTrigger *)self threshold]<= newValue && [(HMDCounterThresholdLoggingTrigger *)self threshold]> value)
  {
    [(HMDCounterThresholdLoggingTrigger *)self logThresholdTrigger:@"Trigger threshold met" triggerValue:newValue];
  }

  if (!newValue && [(HMDCounterThresholdLoggingTrigger *)self threshold]<= value)
  {

    [(HMDCounterThresholdLoggingTrigger *)self logThresholdTrigger:@"Max value above threshold" triggerValue:value];
  }
}

- (HMDCounterThresholdLoggingTrigger)initWithThreshold:(int64_t)threshold counterName:(id)name uploadImmediately:(BOOL)immediately ewsLogger:(id)logger
{
  nameCopy = name;
  loggerCopy = logger;
  v16.receiver = self;
  v16.super_class = HMDCounterThresholdLoggingTrigger;
  v13 = [(HMDCounterThresholdLoggingTrigger *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_threshold = threshold;
    objc_storeStrong(&v13->_counterName, name);
    v14->_uploadImmediately = immediately;
    objc_storeStrong(&v14->_ewsLogger, logger);
  }

  return v14;
}

@end