@interface CMSAnalytics
+ (void)sendContentFailureEvent:(id)a3;
@end

@implementation CMSAnalytics

+ (void)sendContentFailureEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 eventName];
  v6 = v3;
  v5 = v3;
  AnalyticsSendEventLazy();
}

@end