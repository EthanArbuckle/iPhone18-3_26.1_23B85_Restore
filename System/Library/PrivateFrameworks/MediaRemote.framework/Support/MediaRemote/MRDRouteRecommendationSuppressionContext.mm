@interface MRDRouteRecommendationSuppressionContext
- (MRDRouteRecommendationSuppressionContext)init;
- (MRDRouteRecommendationSuppressionContext)initWithLocalEndpoint:(id)a3 activeSystemEndpoint:(id)a4 eligibleToShowRecommendationsOutsideApp:(BOOL)a5 eligibleToShowDeltaBanners:(BOOL)a6;
@end

@implementation MRDRouteRecommendationSuppressionContext

- (MRDRouteRecommendationSuppressionContext)initWithLocalEndpoint:(id)a3 activeSystemEndpoint:(id)a4 eligibleToShowRecommendationsOutsideApp:(BOOL)a5 eligibleToShowDeltaBanners:(BOOL)a6
{
  v11 = OBJC_IVAR___MRDRouteRecommendationSuppressionContext_localEndpoint;
  *(&self->super.isa + OBJC_IVAR___MRDRouteRecommendationSuppressionContext_localEndpoint) = 0;
  v12 = OBJC_IVAR___MRDRouteRecommendationSuppressionContext_activeSystemEndpoint;
  *(&self->super.isa + OBJC_IVAR___MRDRouteRecommendationSuppressionContext_activeSystemEndpoint) = 0;
  swift_beginAccess();
  *(&self->super.isa + v11) = a3;
  swift_beginAccess();
  *(&self->super.isa + v12) = a4;
  *(&self->super.isa + OBJC_IVAR___MRDRouteRecommendationSuppressionContext_eligibleToShowRecommendationsOutsideApp) = a5;
  *(&self->super.isa + OBJC_IVAR___MRDRouteRecommendationSuppressionContext_eligibleToShowDeltaBanners) = a6;
  v16.receiver = self;
  v16.super_class = type metadata accessor for RouteRecommendationSuppressionContext();
  v13 = a3;
  v14 = a4;
  return [(MRDRouteRecommendationSuppressionContext *)&v16 init];
}

- (MRDRouteRecommendationSuppressionContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end