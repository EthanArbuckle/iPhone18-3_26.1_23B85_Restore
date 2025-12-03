@interface IdentityProofingConsentFlowItem
- (_TtC13CoreIDVShared31IdentityProofingConsentFlowItem)init;
- (_TtC13CoreIDVShared31IdentityProofingConsentFlowItem)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IdentityProofingConsentFlowItem

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  IdentityProofingConsentFlowItem.encode(with:)(coderCopy);
}

- (_TtC13CoreIDVShared31IdentityProofingConsentFlowItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_225B68DE4(coderCopy);

  return v4;
}

- (_TtC13CoreIDVShared31IdentityProofingConsentFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end