@interface MRDRouteRecommendationSuppressionPolicy
- (MRDRouteRecommendationSuppressionPolicy)init;
- (NSString)reason;
@end

@implementation MRDRouteRecommendationSuppressionPolicy

- (NSString)reason
{
  if (*(self + OBJC_IVAR___MRDRouteRecommendationSuppressionPolicy_reason + 8))
  {
    v2 = *(self + OBJC_IVAR___MRDRouteRecommendationSuppressionPolicy_reason);
    v3 = *(self + OBJC_IVAR___MRDRouteRecommendationSuppressionPolicy_reason + 8);

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (MRDRouteRecommendationSuppressionPolicy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end