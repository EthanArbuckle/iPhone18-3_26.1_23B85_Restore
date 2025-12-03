@interface MRDRouteRecommendationSuppressionContext
- (MRDRouteRecommendationSuppressionContext)init;
- (MRDRouteRecommendationSuppressionContext)initWithLocalEndpoint:(id)endpoint activeSystemEndpoint:(id)systemEndpoint eligibleToShowRecommendationsOutsideApp:(BOOL)app eligibleToShowDeltaBanners:(BOOL)banners;
@end

@implementation MRDRouteRecommendationSuppressionContext

- (MRDRouteRecommendationSuppressionContext)initWithLocalEndpoint:(id)endpoint activeSystemEndpoint:(id)systemEndpoint eligibleToShowRecommendationsOutsideApp:(BOOL)app eligibleToShowDeltaBanners:(BOOL)banners
{
  v11 = OBJC_IVAR___MRDRouteRecommendationSuppressionContext_localEndpoint;
  *(&self->super.isa + OBJC_IVAR___MRDRouteRecommendationSuppressionContext_localEndpoint) = 0;
  v12 = OBJC_IVAR___MRDRouteRecommendationSuppressionContext_activeSystemEndpoint;
  *(&self->super.isa + OBJC_IVAR___MRDRouteRecommendationSuppressionContext_activeSystemEndpoint) = 0;
  swift_beginAccess();
  *(&self->super.isa + v11) = endpoint;
  swift_beginAccess();
  *(&self->super.isa + v12) = systemEndpoint;
  *(&self->super.isa + OBJC_IVAR___MRDRouteRecommendationSuppressionContext_eligibleToShowRecommendationsOutsideApp) = app;
  *(&self->super.isa + OBJC_IVAR___MRDRouteRecommendationSuppressionContext_eligibleToShowDeltaBanners) = banners;
  v16.receiver = self;
  v16.super_class = type metadata accessor for RouteRecommendationSuppressionContext();
  endpointCopy = endpoint;
  systemEndpointCopy = systemEndpoint;
  return [(MRDRouteRecommendationSuppressionContext *)&v16 init];
}

- (MRDRouteRecommendationSuppressionContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end