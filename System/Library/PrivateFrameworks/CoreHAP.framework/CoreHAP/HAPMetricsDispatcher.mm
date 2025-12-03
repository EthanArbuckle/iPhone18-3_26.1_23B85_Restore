@interface HAPMetricsDispatcher
+ (id)sharedInstance;
- (void)submitLogEvent:(id)event;
- (void)submitLogEvent:(id)event error:(id)error;
@end

@implementation HAPMetricsDispatcher

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HAPMetricsDispatcher_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (void)submitLogEvent:(id)event error:(id)error
{
  eventCopy = event;
  errorCopy = error;
  logDispatcher = [(HAPMetricsDispatcher *)self logDispatcher];

  if (logDispatcher)
  {
    logDispatcher2 = [(HAPMetricsDispatcher *)self logDispatcher];
    [logDispatcher2 submitLogEvent:eventCopy error:errorCopy];
  }
}

- (void)submitLogEvent:(id)event
{
  eventCopy = event;
  logDispatcher = [(HAPMetricsDispatcher *)self logDispatcher];

  if (logDispatcher)
  {
    logDispatcher2 = [(HAPMetricsDispatcher *)self logDispatcher];
    [logDispatcher2 submitLogEvent:eventCopy];
  }
}

@end