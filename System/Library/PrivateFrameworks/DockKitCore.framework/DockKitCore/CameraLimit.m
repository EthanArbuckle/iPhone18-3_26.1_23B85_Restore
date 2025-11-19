@interface CameraLimit
- (_TtC11DockKitCore11CameraLimit)init;
- (_TtC11DockKitCore11CameraLimit)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CameraLimit

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  CameraLimit.encode(with:)(v4);
}

- (_TtC11DockKitCore11CameraLimit)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_22452F02C();

  return v4;
}

- (_TtC11DockKitCore11CameraLimit)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end