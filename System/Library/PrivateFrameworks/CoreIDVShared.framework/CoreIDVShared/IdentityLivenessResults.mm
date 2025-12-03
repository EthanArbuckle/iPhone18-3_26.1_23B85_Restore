@interface IdentityLivenessResults
- (_TtC13CoreIDVShared23IdentityLivenessResults)init;
- (_TtC13CoreIDVShared23IdentityLivenessResults)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IdentityLivenessResults

- (_TtC13CoreIDVShared23IdentityLivenessResults)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_225B60B60(coderCopy);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  IdentityLivenessResults.encode(with:)(coderCopy);
}

- (_TtC13CoreIDVShared23IdentityLivenessResults)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end