@interface IDSKTAnalyticsLogger
+ (id)logger;
- (void)logMetric:(id)a3;
@end

@implementation IDSKTAnalyticsLogger

+ (id)logger
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (void)logMetric:(id)a3
{
  v3 = a3;
  v6 = +[TransparencyAnalytics logger];
  v4 = [v3 name];
  v5 = [v3 dictionaryRepresentation];

  [v6 logSoftFailureForEventNamed:v4 withAttributes:v5];
}

@end