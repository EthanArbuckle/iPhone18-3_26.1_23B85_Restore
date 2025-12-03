@interface IdentityProofingAssetData
- (_TtC13CoreIDVShared25IdentityProofingAssetData)init;
- (_TtC13CoreIDVShared25IdentityProofingAssetData)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IdentityProofingAssetData

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  IdentityProofingAssetData.encode(with:)(coderCopy);
}

- (_TtC13CoreIDVShared25IdentityProofingAssetData)initWithCoder:(id)coder
{
  coderCopy = coder;
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