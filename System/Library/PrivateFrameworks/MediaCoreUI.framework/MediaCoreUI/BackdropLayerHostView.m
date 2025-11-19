@interface BackdropLayerHostView
+ (Class)layerClass;
- (_TtC11MediaCoreUI21BackdropLayerHostView)initWithCoder:(id)a3;
- (_TtC11MediaCoreUI21BackdropLayerHostView)initWithFrame:(CGRect)a3;
@end

@implementation BackdropLayerHostView

- (_TtC11MediaCoreUI21BackdropLayerHostView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(BackdropLayerHostView *)&v8 initWithFrame:x, y, width, height];
}

+ (Class)layerClass
{
  sub_1C5932A90();

  return swift_getObjCClassFromMetadata();
}

- (_TtC11MediaCoreUI21BackdropLayerHostView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(BackdropLayerHostView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end