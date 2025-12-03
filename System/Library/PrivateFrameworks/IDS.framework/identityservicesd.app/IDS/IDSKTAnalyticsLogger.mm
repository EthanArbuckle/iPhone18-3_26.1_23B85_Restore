@interface IDSKTAnalyticsLogger
+ (id)logger;
- (void)logMetric:(id)metric;
@end

@implementation IDSKTAnalyticsLogger

+ (id)logger
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (void)logMetric:(id)metric
{
  metricCopy = metric;
  v6 = +[TransparencyAnalytics logger];
  name = [metricCopy name];
  dictionaryRepresentation = [metricCopy dictionaryRepresentation];

  [v6 logSoftFailureForEventNamed:name withAttributes:dictionaryRepresentation];
}

@end