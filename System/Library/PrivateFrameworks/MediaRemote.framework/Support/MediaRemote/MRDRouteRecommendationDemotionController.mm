@interface MRDRouteRecommendationDemotionController
+ (id)controller;
- (MRDRouteRecommendationDemotionController)init;
- (id)demotionPolicyWithContext:(id)context;
@end

@implementation MRDRouteRecommendationDemotionController

+ (id)controller
{
  type metadata accessor for RouteRecommendationDemotionController();
  v4[3] = type metadata accessor for MediaAppInFocusMonitor();
  v4[4] = &off_1004C5058;
  v4[0] = swift_allocObject();
  v2 = sub_1003801C4(v4);

  return v2;
}

- (id)demotionPolicyWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  v6 = sub_10038025C(contextCopy);

  return v6;
}

- (MRDRouteRecommendationDemotionController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end