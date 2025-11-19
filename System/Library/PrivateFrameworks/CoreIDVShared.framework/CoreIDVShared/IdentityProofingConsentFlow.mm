@interface IdentityProofingConsentFlow
- (_TtC13CoreIDVShared27IdentityProofingConsentFlow)init;
- (_TtC13CoreIDVShared27IdentityProofingConsentFlow)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IdentityProofingConsentFlow

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  IdentityProofingConsentFlow.encode(with:)(v4);
}

- (_TtC13CoreIDVShared27IdentityProofingConsentFlow)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_225B68988();

  return v4;
}

- (_TtC13CoreIDVShared27IdentityProofingConsentFlow)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end