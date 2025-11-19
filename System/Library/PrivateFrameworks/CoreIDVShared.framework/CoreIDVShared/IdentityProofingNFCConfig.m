@interface IdentityProofingNFCConfig
- (_TtC13CoreIDVShared25IdentityProofingNFCConfig)init;
- (_TtC13CoreIDVShared25IdentityProofingNFCConfig)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IdentityProofingNFCConfig

- (_TtC13CoreIDVShared25IdentityProofingNFCConfig)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_225B68F9C(v3);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  IdentityProofingNFCConfig.encode(with:)(v4);
}

- (_TtC13CoreIDVShared25IdentityProofingNFCConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end