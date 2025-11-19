@interface IdentityProofingAssetData
- (_TtC13CoreIDVShared25IdentityProofingAssetData)init;
- (_TtC13CoreIDVShared25IdentityProofingAssetData)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IdentityProofingAssetData

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  IdentityProofingAssetData.encode(with:)(v4);
}

- (_TtC13CoreIDVShared25IdentityProofingAssetData)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_225B6EF74();

  return v4;
}

- (_TtC13CoreIDVShared25IdentityProofingAssetData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end