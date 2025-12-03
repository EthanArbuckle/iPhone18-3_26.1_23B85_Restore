@interface Image
- (_TtC9MomentsUI5Image)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation Image

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  Image.encode(with:)(coderCopy);
}

- (_TtC9MomentsUI5Image)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end