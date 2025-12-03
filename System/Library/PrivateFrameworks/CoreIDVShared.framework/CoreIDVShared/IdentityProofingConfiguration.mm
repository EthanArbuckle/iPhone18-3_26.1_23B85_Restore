@interface IdentityProofingConfiguration
- (_TtC13CoreIDVShared29IdentityProofingConfiguration)init;
- (_TtC13CoreIDVShared29IdentityProofingConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IdentityProofingConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  IdentityProofingConfiguration.encode(with:)(coderCopy);
}

- (_TtC13CoreIDVShared29IdentityProofingConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_225B648B0(coderCopy);

  return v4;
}

- (_TtC13CoreIDVShared29IdentityProofingConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end