@interface IDSAWDLogger
+ (id)logger;
- (void)logMetric:(id)metric;
@end

@implementation IDSAWDLogger

+ (id)logger
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (void)logMetric:(id)metric
{
  metricCopy = metric;
  v6 = +[IDSAWDLogging sharedInstance];
  awdRepresentation = [metricCopy awdRepresentation];
  awdIdentifier = [metricCopy awdIdentifier];

  [v6 submitMetric:awdRepresentation withIdentifier:awdIdentifier];
}

@end