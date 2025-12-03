@interface MRIRRouteRecommendationNode
- (BOOL)isLocal;
- (MRIRRouteRecommendationNode)init;
- (NSString)avOutpuDeviceIdentifier;
- (void)setAvOutpuDeviceIdentifier:(id)identifier;
- (void)setIsLocal:(BOOL)local;
@end

@implementation MRIRRouteRecommendationNode

- (BOOL)isLocal
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationNode_isLocal;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsLocal:(BOOL)local
{
  v5 = OBJC_IVAR___MRIRRouteRecommendationNode_isLocal;
  swift_beginAccess();
  *(self + v5) = local;
}

- (NSString)avOutpuDeviceIdentifier
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self) + 0x70);
  selfCopy = self;
  v2();
  v5 = v4;

  if (v5)
  {
    v6 = sub_1A22E6598();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setAvOutpuDeviceIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_1A22E65C8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & *self) + 0x78);
  selfCopy = self;
  v7(v4, v6);
}

- (MRIRRouteRecommendationNode)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end