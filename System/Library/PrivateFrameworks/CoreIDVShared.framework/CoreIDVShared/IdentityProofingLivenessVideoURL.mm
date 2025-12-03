@interface IdentityProofingLivenessVideoURL
- (_TtC13CoreIDVShared32IdentityProofingLivenessVideoURL)init;
- (_TtC13CoreIDVShared32IdentityProofingLivenessVideoURL)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IdentityProofingLivenessVideoURL

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  IdentityProofingLivenessVideoURL.encode(with:)(coderCopy);
}

- (_TtC13CoreIDVShared32IdentityProofingLivenessVideoURL)initWithCoder:(id)coder
{
  coderCopy = coder;
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