@interface ScreenRect
- (_TtC9MomentsUI10ScreenRect)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ScreenRect

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ScreenRect.encode(with:)(coderCopy);
}

- (_TtC9MomentsUI10ScreenRect)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end