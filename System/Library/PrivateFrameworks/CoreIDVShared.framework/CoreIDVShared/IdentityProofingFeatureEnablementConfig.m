@interface IdentityProofingFeatureEnablementConfig
- (_TtC13CoreIDVShared39IdentityProofingFeatureEnablementConfig)init;
- (_TtC13CoreIDVShared39IdentityProofingFeatureEnablementConfig)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IdentityProofingFeatureEnablementConfig

- (_TtC13CoreIDVShared39IdentityProofingFeatureEnablementConfig)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_225B69284();

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  IdentityProofingFeatureEnablementConfig.encode(with:)(v4);
}

- (_TtC13CoreIDVShared39IdentityProofingFeatureEnablementConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end