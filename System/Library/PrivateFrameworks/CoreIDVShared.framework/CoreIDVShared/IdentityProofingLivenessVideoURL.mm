@interface IdentityProofingLivenessVideoURL
- (_TtC13CoreIDVShared32IdentityProofingLivenessVideoURL)init;
- (_TtC13CoreIDVShared32IdentityProofingLivenessVideoURL)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IdentityProofingLivenessVideoURL

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  IdentityProofingLivenessVideoURL.encode(with:)(v4);
}

- (_TtC13CoreIDVShared32IdentityProofingLivenessVideoURL)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_225B6D1EC();

  return v4;
}

- (_TtC13CoreIDVShared32IdentityProofingLivenessVideoURL)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end