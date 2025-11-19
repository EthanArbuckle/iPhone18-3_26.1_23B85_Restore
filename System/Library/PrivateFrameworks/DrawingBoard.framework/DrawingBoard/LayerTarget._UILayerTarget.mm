@interface LayerTarget._UILayerTarget
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesLayer:(id)a3;
- (_TtCO12DrawingBoard11LayerTargetP33_503B1B848CE68D8EEDC1C0DE3CC3DEEF14_UILayerTarget)init;
@end

@implementation LayerTarget._UILayerTarget

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_249D733B4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_249D604BC(v8);

  sub_249D39488(v8);
  return v6 & 1;
}

- (BOOL)matchesLayer:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_249D60614(v4);

  return self & 1;
}

- (_TtCO12DrawingBoard11LayerTargetP33_503B1B848CE68D8EEDC1C0DE3CC3DEEF14_UILayerTarget)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end