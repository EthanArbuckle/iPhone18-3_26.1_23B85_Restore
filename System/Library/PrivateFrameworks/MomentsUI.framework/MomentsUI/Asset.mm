@interface Asset
- (_TtC9MomentsUI5Asset)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation Asset

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  Asset.encode(with:)(coderCopy);
}

- (_TtC9MomentsUI5Asset)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end