@interface UIBackdropView
+ (Class)layerClass;
- (_TtC22FaceTimeNotificationUI14UIBackdropView)init;
- (_TtC22FaceTimeNotificationUI14UIBackdropView)initWithCoder:(id)coder;
- (_TtC22FaceTimeNotificationUI14UIBackdropView)initWithFrame:(CGRect)frame;
@end

@implementation UIBackdropView

+ (Class)layerClass
{
  sub_24AA60688();

  return swift_getObjCClassFromMetadata();
}

- (_TtC22FaceTimeNotificationUI14UIBackdropView)init
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for UIBackdropView();
  v2 = [(UIBackdropView *)&v5 initWithFrame:0.0, 0.0, 0.0, 0.0];
  layer = [(UIBackdropView *)v2 layer];
  objc_opt_self();

  return v2;
}

- (_TtC22FaceTimeNotificationUI14UIBackdropView)initWithCoder:(id)coder
{
  result = sub_24AAB53F4();
  __break(1u);
  return result;
}

- (_TtC22FaceTimeNotificationUI14UIBackdropView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end