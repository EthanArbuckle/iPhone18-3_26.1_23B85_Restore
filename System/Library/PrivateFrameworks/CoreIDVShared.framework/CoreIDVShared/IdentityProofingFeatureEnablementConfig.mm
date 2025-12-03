@interface IdentityProofingFeatureEnablementConfig
- (_TtC13CoreIDVShared39IdentityProofingFeatureEnablementConfig)init;
- (_TtC13CoreIDVShared39IdentityProofingFeatureEnablementConfig)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IdentityProofingFeatureEnablementConfig

- (_TtC13CoreIDVShared39IdentityProofingFeatureEnablementConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_225B69284();

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  IdentityProofingFeatureEnablementConfig.encode(with:)(coderCopy);
}

- (_TtC13CoreIDVShared39IdentityProofingFeatureEnablementConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end