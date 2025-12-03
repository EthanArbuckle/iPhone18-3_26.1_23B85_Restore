@interface HLPAnalyticsEvent
+ (id)event;
- (NSDictionary)caRepresentation;
- (NSString)eventName;
- (void)log;
@end

@implementation HLPAnalyticsEvent

+ (id)event
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (NSDictionary)caRepresentation
{
  v2 = +[HLPAnalyticsEventController sharedInstance];
  requiredKeys = [v2 requiredKeys];

  return requiredKeys;
}

- (void)log
{
  v3 = +[HLPAnalyticsEventController sharedInstance];
  [v3 logAnalyticsEvent:self];
}

- (NSString)eventName
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end