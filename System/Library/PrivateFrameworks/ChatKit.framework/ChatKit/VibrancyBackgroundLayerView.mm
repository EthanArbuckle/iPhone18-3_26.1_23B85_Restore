@interface VibrancyBackgroundLayerView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (_TtC7ChatKit27VibrancyBackgroundLayerView)initWithCoder:(id)coder;
- (_TtC7ChatKit27VibrancyBackgroundLayerView)initWithFrame:(CGRect)frame;
@end

@implementation VibrancyBackgroundLayerView

- (_TtC7ChatKit27VibrancyBackgroundLayerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v8 = (*(ObjectType + 80))(0, x, y, width, height);
  swift_deallocPartialClassInstance();
  return v8;
}

- (_TtC7ChatKit27VibrancyBackgroundLayerView)initWithCoder:(id)coder
{
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  if (key)
  {
    v4 = sub_190D56F10();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = sub_190C208E8(v4, v6);

  return v8 & 1;
}

@end