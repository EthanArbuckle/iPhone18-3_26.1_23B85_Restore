@interface JetAnalytics
+ (void)preloadWithAccount:(id)account;
- (_TtC21CloudRecommendationUI12JetAnalytics)init;
@end

@implementation JetAnalytics

+ (void)preloadWithAccount:(id)account
{
  accountCopy = account;
  _s21CloudRecommendationUI12JetAnalyticsC7preload7accountySo9ACAccountC_tFZ_0(accountCopy);
}

- (_TtC21CloudRecommendationUI12JetAnalytics)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for JetAnalytics();
  return [(JetAnalytics *)&v3 init];
}

@end