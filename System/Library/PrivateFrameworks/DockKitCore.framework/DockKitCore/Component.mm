@interface Component
- (_TtC11DockKitCore9Component)init;
- (_TtC11DockKitCore9Component)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation Component

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_2245B3720(coderCopy);
}

- (_TtC11DockKitCore9Component)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_2245B47B4();

  return v4;
}

- (_TtC11DockKitCore9Component)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end