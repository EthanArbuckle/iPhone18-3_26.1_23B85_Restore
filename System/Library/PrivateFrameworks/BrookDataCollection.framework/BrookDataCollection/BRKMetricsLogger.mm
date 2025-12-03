@interface BRKMetricsLogger
+ (id)sharedInstance;
- (id)_coreAnalyticsKeyForMetricKey:(id)key;
- (id)_init;
- (void)logEventName:(id)name eventPayLoad:(id)load;
@end

@implementation BRKMetricsLogger

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[BRKMetricsLogger sharedInstance];
  }

  v3 = sharedInstance_Logger;

  return v3;
}

uint64_t __34__BRKMetricsLogger_sharedInstance__block_invoke()
{
  sharedInstance_Logger = [[BRKMetricsLogger alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = BRKMetricsLogger;
  return [(BRKMetricsLogger *)&v3 init];
}

- (void)logEventName:(id)name eventPayLoad:(id)load
{
  loadCopy = load;
  v7 = [(BRKMetricsLogger *)self _coreAnalyticsKeyForMetricKey:name];
  AnalyticsSendEvent();
}

- (id)_coreAnalyticsKeyForMetricKey:(id)key
{
  lowercaseString = [key lowercaseString];
  v4 = [@"com.apple.brook." stringByAppendingString:lowercaseString];

  return v4;
}

@end