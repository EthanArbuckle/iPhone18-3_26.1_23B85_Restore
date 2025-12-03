@interface LayerTarget._UILayerTarget
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesLayer:(id)layer;
- (_TtCO12DrawingBoard11LayerTargetP33_503B1B848CE68D8EEDC1C0DE3CC3DEEF14_UILayerTarget)init;
@end

@implementation LayerTarget._UILayerTarget

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_249D733B4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_249D604BC(v8);

  sub_249D39488(v8);
  return v6 & 1;
}

- (BOOL)matchesLayer:(id)layer
{
  layerCopy = layer;
  selfCopy = self;
  LOBYTE(self) = sub_249D60614(layerCopy);

  return self & 1;
}

- (_TtCO12DrawingBoard11LayerTargetP33_503B1B848CE68D8EEDC1C0DE3CC3DEEF14_UILayerTarget)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end