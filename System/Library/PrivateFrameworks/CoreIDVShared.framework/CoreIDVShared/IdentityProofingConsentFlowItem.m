@interface IdentityProofingConsentFlowItem
- (_TtC13CoreIDVShared31IdentityProofingConsentFlowItem)init;
- (_TtC13CoreIDVShared31IdentityProofingConsentFlowItem)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IdentityProofingConsentFlowItem

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  IdentityProofingConsentFlowItem.encode(with:)(v4);
}

- (_TtC13CoreIDVShared31IdentityProofingConsentFlowItem)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_225B68DE4(v3);

  return v4;
}

- (_TtC13CoreIDVShared31IdentityProofingConsentFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end