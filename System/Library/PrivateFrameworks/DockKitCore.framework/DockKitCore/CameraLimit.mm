@interface CameraLimit
- (_TtC11DockKitCore11CameraLimit)init;
- (_TtC11DockKitCore11CameraLimit)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CameraLimit

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CameraLimit.encode(with:)(coderCopy);
}

- (_TtC11DockKitCore11CameraLimit)initWithCoder:(id)coder
{
  coderCopy = coder;
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