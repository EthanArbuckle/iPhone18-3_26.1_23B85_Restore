@interface MRDRouteRecommendationDemotionPolicy
- (MRDRouteRecommendationDemotionPolicy)init;
- (NSString)reason;
@end

@implementation MRDRouteRecommendationDemotionPolicy

- (NSString)reason
{
  if (*(self + OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_reason + 8))
  {
    v2 = *(self + OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_reason);
    v3 = *(self + OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_reason + 8);

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (MRDRouteRecommendationDemotionPolicy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end