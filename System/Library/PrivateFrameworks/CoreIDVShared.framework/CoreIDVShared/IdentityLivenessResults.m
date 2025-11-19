@interface IdentityLivenessResults
- (_TtC13CoreIDVShared23IdentityLivenessResults)init;
- (_TtC13CoreIDVShared23IdentityLivenessResults)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IdentityLivenessResults

- (_TtC13CoreIDVShared23IdentityLivenessResults)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_225B60B60(v3);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  IdentityLivenessResults.encode(with:)(v4);
}

- (_TtC13CoreIDVShared23IdentityLivenessResults)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end