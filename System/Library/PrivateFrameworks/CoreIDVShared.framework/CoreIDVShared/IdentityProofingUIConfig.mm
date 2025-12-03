@interface IdentityProofingUIConfig
- (_TtC13CoreIDVShared24IdentityProofingUIConfig)init;
- (_TtC13CoreIDVShared24IdentityProofingUIConfig)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IdentityProofingUIConfig

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  IdentityProofingUIConfig.encode(with:)(coderCopy);
}

- (_TtC13CoreIDVShared24IdentityProofingUIConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_225B6F118(coderCopy);

  return v4;
}

- (_TtC13CoreIDVShared24IdentityProofingUIConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end