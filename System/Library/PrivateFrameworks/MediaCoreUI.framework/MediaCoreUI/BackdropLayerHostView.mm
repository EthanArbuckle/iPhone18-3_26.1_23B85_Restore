@interface BackdropLayerHostView
+ (Class)layerClass;
- (_TtC11MediaCoreUI21BackdropLayerHostView)initWithCoder:(id)coder;
- (_TtC11MediaCoreUI21BackdropLayerHostView)initWithFrame:(CGRect)frame;
@end

@implementation BackdropLayerHostView

- (_TtC11MediaCoreUI21BackdropLayerHostView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(BackdropLayerHostView *)&v8 initWithFrame:x, y, width, height];
}

+ (Class)layerClass
{
  sub_1C5932A90();

  return swift_getObjCClassFromMetadata();
}

- (_TtC11MediaCoreUI21BackdropLayerHostView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(BackdropLayerHostView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end