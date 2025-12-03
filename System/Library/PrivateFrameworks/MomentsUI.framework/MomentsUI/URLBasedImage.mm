@interface URLBasedImage
- (_TtC9MomentsUI13URLBasedImage)init;
- (_TtC9MomentsUI13URLBasedImage)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation URLBasedImage

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  URLBasedImage.encode(with:)(coderCopy);
}

- (_TtC9MomentsUI13URLBasedImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = specialized URLBasedImage.init(coder:)(coderCopy);

  return v4;
}

- (_TtC9MomentsUI13URLBasedImage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end