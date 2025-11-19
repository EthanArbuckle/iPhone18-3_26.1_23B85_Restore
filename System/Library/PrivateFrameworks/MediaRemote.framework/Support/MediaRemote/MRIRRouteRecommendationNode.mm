@interface MRIRRouteRecommendationNode
- (BOOL)isLocal;
- (MRIRRouteRecommendationNode)init;
- (NSString)avOutpuDeviceIdentifier;
- (void)setAvOutpuDeviceIdentifier:(id)a3;
- (void)setIsLocal:(BOOL)a3;
@end

@implementation MRIRRouteRecommendationNode

- (BOOL)isLocal
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationNode_isLocal;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsLocal:(BOOL)a3
{
  v5 = OBJC_IVAR___MRIRRouteRecommendationNode_isLocal;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSString)avOutpuDeviceIdentifier
{
  v2 = *((swift_isaMask & *self) + 0x70);
  v3 = self;
  v2();
  v5 = v4;

  if (v5)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setAvOutpuDeviceIdentifier:(id)a3
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

  v7 = *((swift_isaMask & *self) + 0x78);
  v8 = self;
  v7(v4, v6);
}

- (MRIRRouteRecommendationNode)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end