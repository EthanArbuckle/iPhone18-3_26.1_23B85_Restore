@interface HMDCounterRateLoggingTrigger
- (HMDCounterRateLoggingTrigger)initWithThreshold:(int64_t)a3 windowSize:(int64_t)a4 counterName:(id)a5 uploadImmediately:(BOOL)a6 ewsLogger:(id)a7 timeSourceBlock:(id)a8;
- (void)dealloc;
- (void)logRateTrigger:(id)a3 triggerValue:(unint64_t)a4;
- (void)updatedCounter:(id)a3 fromOldValue:(int64_t)a4 toNewValue:(int64_t)a5;
@end

@implementation HMDCounterRateLoggingTrigger

- (void)logRateTrigger:(id)a3 triggerValue:(unint64_t)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [(HMDCounterRateLoggingTrigger *)v8 counterName];
    *buf = 138544386;
    v22 = v10;
    v23 = 2114;
    v24 = v6;
    v25 = 2114;
    v26 = v11;
    v27 = 2048;
    v28 = a4;
    v29 = 2048;
    v30 = [(HMDCounterRateLoggingTrigger *)v8 windowSize];
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@EWS rate trigger: trigger=%{public}@, counter=%{public}@, value=%lu, windowSize=%lu", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [(HMDCounterRateLoggingTrigger *)v8 ewsLogger];
  v13 = [(HMDCounterRateLoggingTrigger *)v8 uploadImmediately];
  v14 = [(HMDCounterRateLoggingTrigger *)v8 counterName];
  v20[0] = v14;
  v19[1] = @"value";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v20[1] = v15;
  v19[2] = @"windowSize";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCounterRateLoggingTrigger windowSize](v8, "windowSize")}];
  v20[2] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  [v12 submitEventWithName:v6 serviceName:@"Counter Trigger" uploadImmediately:v13 payload:v17];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updatedCounter:(id)a3 fromOldValue:(int64_t)a4 toNewValue:(int64_t)a5
{
  v8 = [(HMDCounterRateLoggingTrigger *)self windowCount];
  v9 = [(HMDCounterRateLoggingTrigger *)self timeSourceBlock];
  v10 = v9[2]();
  v11 = v10 / [(HMDCounterRateLoggingTrigger *)self intervalSize];

  if (v11 - [(HMDCounterRateLoggingTrigger *)self lastUpdatedInterval]< 0xA)
  {
    for (; [(HMDCounterRateLoggingTrigger *)self lastUpdatedInterval]< v11; v13[[(HMDCounterRateLoggingTrigger *)self lastUpdatedInterval]% 0xA] = 0)
    {
      [(HMDCounterRateLoggingTrigger *)self setLastUpdatedInterval:[(HMDCounterRateLoggingTrigger *)self lastUpdatedInterval]+ 1];
      [(HMDCounterRateLoggingTrigger *)self setWindowCount:[(HMDCounterRateLoggingTrigger *)self windowCount]- [(HMDCounterRateLoggingTrigger *)self intervalCounts][8 * ([(HMDCounterRateLoggingTrigger *)self lastUpdatedInterval]% 0xA)]];
      v13 = [(HMDCounterRateLoggingTrigger *)self intervalCounts];
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

  if (a5)
  {
    v14 = a5 - a4;
    v15 = [(HMDCounterRateLoggingTrigger *)self intervalCounts];
    v15[v11 % 0xA] += v14;
    [(HMDCounterRateLoggingTrigger *)self setWindowCount:[(HMDCounterRateLoggingTrigger *)self windowCount]+ v14];
    v16 = [(HMDCounterRateLoggingTrigger *)self windowCount];
    if (v16 > [(HMDCounterRateLoggingTrigger *)self maxWindowCount])
    {
      [(HMDCounterRateLoggingTrigger *)self setMaxWindowCount:[(HMDCounterRateLoggingTrigger *)self windowCount]];
    }
  }

  v17 = [(HMDCounterRateLoggingTrigger *)self windowCount];
  if (v17 >= [(HMDCounterRateLoggingTrigger *)self windowThreshold]&& v8 < [(HMDCounterRateLoggingTrigger *)self windowThreshold])
  {
    [(HMDCounterRateLoggingTrigger *)self logRateTrigger:@"Rate threshold met" triggerValue:[(HMDCounterRateLoggingTrigger *)self windowCount]];
  }

  v18 = [(HMDCounterRateLoggingTrigger *)self windowCount];
  if (v18 >= [(HMDCounterRateLoggingTrigger *)self windowThreshold])
  {
    if (a5)
    {
      return;
    }
  }

  else
  {
    v19 = [(HMDCounterRateLoggingTrigger *)self windowThreshold];
    if (a5 && v8 < v19)
    {
      return;
    }
  }

  v20 = [(HMDCounterRateLoggingTrigger *)self maxWindowCount];
  if (v20 >= [(HMDCounterRateLoggingTrigger *)self windowThreshold])
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

- (HMDCounterRateLoggingTrigger)initWithThreshold:(int64_t)a3 windowSize:(int64_t)a4 counterName:(id)a5 uploadImmediately:(BOOL)a6 ewsLogger:(id)a7 timeSourceBlock:(id)a8
{
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = HMDCounterRateLoggingTrigger;
  v18 = [(HMDCounterRateLoggingTrigger *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_windowSize = a4;
    v18->_windowThreshold = a3;
    v18->_intervalSize = a4 / 10;
    v18->_intervalCounts = malloc_type_malloc(0x50uLL, 0x100004000313F17uLL);
    objc_storeStrong(&v19->_counterName, a5);
    v19->_uploadImmediately = a6;
    objc_storeStrong(&v19->_ewsLogger, a7);
    v20 = _Block_copy(v17);
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