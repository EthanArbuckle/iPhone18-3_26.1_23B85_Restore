@interface IdentityProofingUIConfig
- (_TtC13CoreIDVShared24IdentityProofingUIConfig)init;
- (_TtC13CoreIDVShared24IdentityProofingUIConfig)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IdentityProofingUIConfig

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  IdentityProofingUIConfig.encode(with:)(v4);
}

- (_TtC13CoreIDVShared24IdentityProofingUIConfig)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_225B6F118(v3);

  return v4;
}

- (_TtC13CoreIDVShared24IdentityProofingUIConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end