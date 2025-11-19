@interface MRIRRouteRecommendationContext
+ (id)fromObject:(id)a3;
- (MRIRRouteRecommendationContext)init;
- (MRIRRouteRecommendationContext)initWithCandidateResults:(id)a3 contextIdentifier:(id)a4;
@end

@implementation MRIRRouteRecommendationContext

+ (id)fromObject:(id)a3
{
  v3 = a3;
  v4 = sub_100013FC0(v3);

  return v4;
}

- (MRIRRouteRecommendationContext)initWithCandidateResults:(id)a3 contextIdentifier:(id)a4
{
  type metadata accessor for RouteRecommendationCandidateResult();
  sub_100390C08(&qword_100528D40, type metadata accessor for RouteRecommendationCandidateResult);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(self + OBJC_IVAR___MRIRRouteRecommendationContext_candidateResults) = v5;
  v7 = (self + OBJC_IVAR___MRIRRouteRecommendationContext_contextIdentifier);
  *v7 = v6;
  v7[1] = v8;
  v10.receiver = self;
  v10.super_class = type metadata accessor for RouteRecommendationContext();
  return [(MRIRRouteRecommendationContext *)&v10 init];
}

- (MRIRRouteRecommendationContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end