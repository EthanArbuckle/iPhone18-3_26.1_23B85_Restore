@interface HLPAnalyticsEvent
+ (id)event;
- (NSDictionary)caRepresentation;
- (NSString)eventName;
- (void)log;
@end

@implementation HLPAnalyticsEvent

+ (id)event
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (NSDictionary)caRepresentation
{
  v2 = +[HLPAnalyticsEventController sharedInstance];
  v3 = [v2 requiredKeys];

  return v3;
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