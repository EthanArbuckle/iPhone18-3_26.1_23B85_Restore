@interface IdentityProofingConsentFlow
- (_TtC13CoreIDVShared27IdentityProofingConsentFlow)init;
- (_TtC13CoreIDVShared27IdentityProofingConsentFlow)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IdentityProofingConsentFlow

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  IdentityProofingConsentFlow.encode(with:)(coderCopy);
}

- (_TtC13CoreIDVShared27IdentityProofingConsentFlow)initWithCoder:(id)coder
{
  coderCopy = coder;
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