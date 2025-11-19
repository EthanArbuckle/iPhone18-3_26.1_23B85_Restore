@interface VibrancyBackgroundLayerView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (_TtC7ChatKit27VibrancyBackgroundLayerView)initWithCoder:(id)a3;
- (_TtC7ChatKit27VibrancyBackgroundLayerView)initWithFrame:(CGRect)a3;
@end

@implementation VibrancyBackgroundLayerView

- (_TtC7ChatKit27VibrancyBackgroundLayerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v8 = (*(ObjectType + 80))(0, x, y, width, height);
  swift_deallocPartialClassInstance();
  return v8;
}

- (_TtC7ChatKit27VibrancyBackgroundLayerView)initWithCoder:(id)a3
{
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  if (a3)
  {
    v4 = sub_190D56F10();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8 = sub_190C208E8(v4, v6);

  return v8 & 1;
}

@end