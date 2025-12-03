@interface IdentityProofingNFCConfig
- (_TtC13CoreIDVShared25IdentityProofingNFCConfig)init;
- (_TtC13CoreIDVShared25IdentityProofingNFCConfig)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IdentityProofingNFCConfig

- (_TtC13CoreIDVShared25IdentityProofingNFCConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_225B68F9C(coderCopy);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  IdentityProofingNFCConfig.encode(with:)(coderCopy);
}

- (_TtC13CoreIDVShared25IdentityProofingNFCConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end