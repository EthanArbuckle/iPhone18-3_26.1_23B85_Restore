@interface IdentityProofingDisplayInfo
- (_TtC13CoreIDVShared27IdentityProofingDisplayInfo)init;
- (_TtC13CoreIDVShared27IdentityProofingDisplayInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IdentityProofingDisplayInfo

- (_TtC13CoreIDVShared27IdentityProofingDisplayInfo)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_225B69378(v3);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  IdentityProofingDisplayInfo.encode(with:)(v4);
}

- (_TtC13CoreIDVShared27IdentityProofingDisplayInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end