@interface RecommendationAnalytics
- (_TtC21CloudRecommendationUI23RecommendationAnalytics)init;
- (_TtC21CloudRecommendationUI23RecommendationAnalytics)initWithAccount:(id)account;
@end

@implementation RecommendationAnalytics

- (_TtC21CloudRecommendationUI23RecommendationAnalytics)initWithAccount:(id)account
{
  accountCopy = account;
  v4 = sub_243A7A32C(accountCopy);

  return v4;
}

- (_TtC21CloudRecommendationUI23RecommendationAnalytics)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end