@interface MRDRouteRecommendationSuppressionController
+ (MRDRouteRecommendationSuppressionController)controller;
- (MRDRouteRecommendationSuppressionController)init;
- (id)suppressionPolicyWithContext:(id)context;
@end

@implementation MRDRouteRecommendationSuppressionController

+ (MRDRouteRecommendationSuppressionController)controller
{
  v2 = sub_1001D9EBC();

  return v2;
}

- (id)suppressionPolicyWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  v6 = sub_10034EAD4(contextCopy);

  return v6;
}

- (MRDRouteRecommendationSuppressionController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end