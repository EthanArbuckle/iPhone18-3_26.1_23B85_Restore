@interface MRDRouteRecommendationDemotionContext
- (BOOL)isASELocal;
- (BOOL)isSourceEndpointPlaying;
- (BOOL)isTargetEndpointPlaying;
- (BOOL)localOutputContextHasAirPlay;
- (MRDRouteRecommendationDemotionContext)init;
- (MRDRouteRecommendationDemotionContext)initWithPrimaryBundleIdentifier:(id)a3 recommendationType:(int64_t)a4 isASELocal:(BOOL)a5 localOutputContextHasAirPlay:(BOOL)a6 isSourceEndpointPlaying:(BOOL)a7 isTargetEndpointPlaying:(BOOL)a8 targetNowPlayingBundleIdentifier:(id)a9 targetEndpointContainsDiscoverableGroupLeader:(BOOL)a10;
- (NSString)primaryBundleIdentifier;
- (NSString)targetNowPlayingBundleIdentifier;
- (int64_t)recommendationType;
- (void)setIsASELocal:(BOOL)a3;
- (void)setIsSourceEndpointPlaying:(BOOL)a3;
- (void)setIsTargetEndpointPlaying:(BOOL)a3;
- (void)setLocalOutputContextHasAirPlay:(BOOL)a3;
- (void)setPrimaryBundleIdentifier:(id)a3;
- (void)setRecommendationType:(int64_t)a3;
- (void)setTargetNowPlayingBundleIdentifier:(id)a3;
@end

@implementation MRDRouteRecommendationDemotionContext

- (NSString)primaryBundleIdentifier
{
  v2 = (self + OBJC_IVAR___MRDRouteRecommendationDemotionContext_primaryBundleIdentifier);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (void)setPrimaryBundleIdentifier:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = (self + OBJC_IVAR___MRDRouteRecommendationDemotionContext_primaryBundleIdentifier);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (int64_t)recommendationType
{
  v3 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_recommendationType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRecommendationType:(int64_t)a3
{
  v5 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_recommendationType;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isASELocal
{
  v3 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_isASELocal;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsASELocal:(BOOL)a3
{
  v5 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_isASELocal;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)localOutputContextHasAirPlay
{
  v3 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_localOutputContextHasAirPlay;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setLocalOutputContextHasAirPlay:(BOOL)a3
{
  v5 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_localOutputContextHasAirPlay;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isSourceEndpointPlaying
{
  v3 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_isSourceEndpointPlaying;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsSourceEndpointPlaying:(BOOL)a3
{
  v5 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_isSourceEndpointPlaying;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isTargetEndpointPlaying
{
  v3 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_isTargetEndpointPlaying;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsTargetEndpointPlaying:(BOOL)a3
{
  v5 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_isTargetEndpointPlaying;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSString)targetNowPlayingBundleIdentifier
{
  v2 = (self + OBJC_IVAR___MRDRouteRecommendationDemotionContext_targetNowPlayingBundleIdentifier);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setTargetNowPlayingBundleIdentifier:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___MRDRouteRecommendationDemotionContext_targetNowPlayingBundleIdentifier);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (MRDRouteRecommendationDemotionContext)initWithPrimaryBundleIdentifier:(id)a3 recommendationType:(int64_t)a4 isASELocal:(BOOL)a5 localOutputContextHasAirPlay:(BOOL)a6 isSourceEndpointPlaying:(BOOL)a7 isTargetEndpointPlaying:(BOOL)a8 targetNowPlayingBundleIdentifier:(id)a9 targetEndpointContainsDiscoverableGroupLeader:(BOOL)a10
{
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a9)
  {
    v17 = v15;
    v18 = v16;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v17;
    v21 = v20;
    v16 = v18;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  return sub_10037FD94(v15, v16, a4, a5, a6, a7, a8, v19, v21, a10);
}

- (MRDRouteRecommendationDemotionContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end