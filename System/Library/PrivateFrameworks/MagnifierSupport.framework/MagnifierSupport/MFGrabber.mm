@interface MFGrabber
- (BOOL)accessibilityActivate;
- (CGRect)accessibilityFrame;
- (_TtC16MagnifierSupport9MFGrabber)init;
- (_TtC16MagnifierSupport9MFGrabber)initWithCoder:(id)a3;
- (_TtC16MagnifierSupport9MFGrabber)initWithFrame:(CGRect)a3;
@end

@implementation MFGrabber

- (_TtC16MagnifierSupport9MFGrabber)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC16MagnifierSupport9MFGrabber_backgroundView;
  type metadata accessor for MFChevronView();
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7.receiver = self;
  v7.super_class = ObjectType;
  v5 = [(MFGrabber *)&v7 initWithFrame:0.0, 0.0, 0.0, 0.0];
  sub_257C817BC();
  sub_257C81928();

  return v5;
}

- (_TtC16MagnifierSupport9MFGrabber)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC16MagnifierSupport9MFGrabber_backgroundView;
  type metadata accessor for MFChevronView();
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = sub_257ED0410();
  __break(1u);
  return result;
}

- (CGRect)accessibilityFrame
{
  v2 = self;
  sub_257C81D24();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)accessibilityActivate
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD70();
  return 1;
}

- (_TtC16MagnifierSupport9MFGrabber)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end