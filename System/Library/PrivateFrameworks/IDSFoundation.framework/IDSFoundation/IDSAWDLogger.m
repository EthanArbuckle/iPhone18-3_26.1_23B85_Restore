@interface IDSAWDLogger
+ (id)logger;
- (void)logMetric:(id)a3;
@end

@implementation IDSAWDLogger

+ (id)logger
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (void)logMetric:(id)a3
{
  v3 = a3;
  v6 = +[IDSAWDLogging sharedInstance];
  v4 = [v3 awdRepresentation];
  v5 = [v3 awdIdentifier];

  [v6 submitMetric:v4 withIdentifier:v5];
}

@end