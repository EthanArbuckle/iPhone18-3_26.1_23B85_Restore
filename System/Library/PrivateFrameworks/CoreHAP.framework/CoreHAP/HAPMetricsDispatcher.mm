@interface HAPMetricsDispatcher
+ (id)sharedInstance;
- (void)submitLogEvent:(id)a3;
- (void)submitLogEvent:(id)a3 error:(id)a4;
@end

@implementation HAPMetricsDispatcher

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HAPMetricsDispatcher_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_metricsDispatcher;

  return v2;
}

uint64_t __38__HAPMetricsDispatcher_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_metricsDispatcher = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (void)submitLogEvent:(id)a3 error:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(HAPMetricsDispatcher *)self logDispatcher];

  if (v7)
  {
    v8 = [(HAPMetricsDispatcher *)self logDispatcher];
    [v8 submitLogEvent:v9 error:v6];
  }
}

- (void)submitLogEvent:(id)a3
{
  v6 = a3;
  v4 = [(HAPMetricsDispatcher *)self logDispatcher];

  if (v4)
  {
    v5 = [(HAPMetricsDispatcher *)self logDispatcher];
    [v5 submitLogEvent:v6];
  }
}

@end