@interface HMDCounterRateLoggingTrigger
- (HMDCounterRateLoggingTrigger)initWithThreshold:(int64_t)threshold windowSize:(int64_t)size counterName:(id)name uploadImmediately:(BOOL)immediately ewsLogger:(id)logger timeSourceBlock:(id)block;
- (void)dealloc;
- (void)logRateTrigger:(id)trigger triggerValue:(unint64_t)value;
- (void)updatedCounter:(id)counter fromOldValue:(int64_t)value toNewValue:(int64_t)newValue;
@end

@implementation HMDCounterRateLoggingTrigger

- (void)logRateTrigger:(id)trigger triggerValue:(unint64_t)value
{
  v31 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    counterName = [(HMDCounterRateLoggingTrigger *)selfCopy counterName];
    *buf = 138544386;
    v22 = v10;
    v23 = 2114;
    v24 = triggerCopy;
    v25 = 2114;
    v26 = counterName;
    v27 = 2048;
    valueCopy = value;
    v29 = 2048;
    windowSize = [(HMDCounterRateLoggingTrigger *)selfCopy windowSize];
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@EWS rate trigger: trigger=%{public}@, counter=%{public}@, value=%lu, windowSize=%lu", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v7);
  ewsLogger = [(HMDCounterRateLoggingTrigger *)selfCopy ewsLogger];
  uploadImmediately = [(HMDCounterRateLoggingTrigger *)selfCopy uploadImmediately];
  counterName2 = [(HMDCounterRateLoggingTrigger *)selfCopy counterName];
  v20[0] = counterName2;
  v19[1] = @"value";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:value];
  v20[1] = v15;
  v19[2] = @"windowSize";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCounterRateLoggingTrigger windowSize](selfCopy, "windowSize")}];
  v20[2] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  [ewsLogger submitEventWithName:triggerCopy serviceName:@"Counter Trigger" uploadImmediately:uploadImmediately payload:v17];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updatedCounter:(id)counter fromOldValue:(int64_t)value toNewValue:(int64_t)newValue
{
  windowCount = [(HMDCounterRateLoggingTrigger *)self windowCount];
  timeSourceBlock = [(HMDCounterRateLoggingTrigger *)self timeSourceBlock];
  v10 = timeSourceBlock[2]();
  v11 = v10 / [(HMDCounterRateLoggingTrigger *)self intervalSize];

  if (v11 - [(HMDCounterRateLoggingTrigger *)self lastUpdatedInterval]< 0xA)
  {
    for (; [(HMDCounterRateLoggingTrigger *)self lastUpdatedInterval]< v11; intervalCounts[[(HMDCounterRateLoggingTrigger *)self lastUpdatedInterval]% 0xA] = 0)
    {
      [(HMDCounterRateLoggingTrigger *)self setLastUpdatedInterval:[(HMDCounterRateLoggingTrigger *)self lastUpdatedInterval]+ 1];
      [(HMDCounterRateLoggingTrigger *)self setWindowCount:[(HMDCounterRateLoggingTrigger *)self windowCount]- [(HMDCounterRateLoggingTrigger *)self intervalCounts][8 * ([(HMDCounterRateLoggingTrigger *)self lastUpdatedInterval]% 0xA)]];
      intervalCounts = [(HMDCounterRateLoggingTrigger *)self intervalCounts];
    }
  }

  else
  {
    for (i = 0; i != 80; i += 8)
    {
      [(HMDCounterRateLoggingTrigger *)self intervalCounts][i] = 0;
    }

    [(HMDCounterRateLoggingTrigger *)self setLastUpdatedInterval:v11];
    [(HMDCounterRateLoggingTrigger *)self setWindowCount:0];
  }

  if (newValue)
  {
    v14 = newValue - value;
    intervalCounts2 = [(HMDCounterRateLoggingTrigger *)self intervalCounts];
    intervalCounts2[v11 % 0xA] += v14;
    [(HMDCounterRateLoggingTrigger *)self setWindowCount:[(HMDCounterRateLoggingTrigger *)self windowCount]+ v14];
    windowCount2 = [(HMDCounterRateLoggingTrigger *)self windowCount];
    if (windowCount2 > [(HMDCounterRateLoggingTrigger *)self maxWindowCount])
    {
      [(HMDCounterRateLoggingTrigger *)self setMaxWindowCount:[(HMDCounterRateLoggingTrigger *)self windowCount]];
    }
  }

  windowCount3 = [(HMDCounterRateLoggingTrigger *)self windowCount];
  if (windowCount3 >= [(HMDCounterRateLoggingTrigger *)self windowThreshold]&& windowCount < [(HMDCounterRateLoggingTrigger *)self windowThreshold])
  {
    [(HMDCounterRateLoggingTrigger *)self logRateTrigger:@"Rate threshold met" triggerValue:[(HMDCounterRateLoggingTrigger *)self windowCount]];
  }

  windowCount4 = [(HMDCounterRateLoggingTrigger *)self windowCount];
  if (windowCount4 >= [(HMDCounterRateLoggingTrigger *)self windowThreshold])
  {
    if (newValue)
    {
      return;
    }
  }

  else
  {
    windowThreshold = [(HMDCounterRateLoggingTrigger *)self windowThreshold];
    if (newValue && windowCount < windowThreshold)
    {
      return;
    }
  }

  maxWindowCount = [(HMDCounterRateLoggingTrigger *)self maxWindowCount];
  if (maxWindowCount >= [(HMDCounterRateLoggingTrigger *)self windowThreshold])
  {
    [(HMDCounterRateLoggingTrigger *)self logRateTrigger:@"Max rate above threshold" triggerValue:[(HMDCounterRateLoggingTrigger *)self maxWindowCount]];

    [(HMDCounterRateLoggingTrigger *)self setMaxWindowCount:0];
  }
}

- (void)dealloc
{
  free(self->_intervalCounts);
  v3.receiver = self;
  v3.super_class = HMDCounterRateLoggingTrigger;
  [(HMDCounterRateLoggingTrigger *)&v3 dealloc];
}

- (HMDCounterRateLoggingTrigger)initWithThreshold:(int64_t)threshold windowSize:(int64_t)size counterName:(id)name uploadImmediately:(BOOL)immediately ewsLogger:(id)logger timeSourceBlock:(id)block
{
  nameCopy = name;
  loggerCopy = logger;
  blockCopy = block;
  v23.receiver = self;
  v23.super_class = HMDCounterRateLoggingTrigger;
  v18 = [(HMDCounterRateLoggingTrigger *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_windowSize = size;
    v18->_windowThreshold = threshold;
    v18->_intervalSize = size / 10;
    v18->_intervalCounts = malloc_type_malloc(0x50uLL, 0x100004000313F17uLL);
    objc_storeStrong(&v19->_counterName, name);
    v19->_uploadImmediately = immediately;
    objc_storeStrong(&v19->_ewsLogger, logger);
    v20 = _Block_copy(blockCopy);
    timeSourceBlock = v19->_timeSourceBlock;
    v19->_timeSourceBlock = v20;
  }

  return v19;
}

unint64_t __101__HMDCounterRateLoggingTrigger_initWithThreshold_windowSize_counterName_uploadImmediately_ewsLogger___block_invoke()
{
  v0 = [MEMORY[0x277CBEAA8] now];
  [v0 timeIntervalSince1970];
  v2 = v1;

  return v2;
}

@end