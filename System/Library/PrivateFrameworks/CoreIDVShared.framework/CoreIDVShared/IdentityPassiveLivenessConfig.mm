@interface IdentityPassiveLivenessConfig
- (_TtC13CoreIDVShared29IdentityPassiveLivenessConfig)init;
- (_TtC13CoreIDVShared29IdentityPassiveLivenessConfig)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IdentityPassiveLivenessConfig

- (_TtC13CoreIDVShared29IdentityPassiveLivenessConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_225B5E9A4(coderCopy);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  IdentityPassiveLivenessConfig.encode(with:)(coderCopy);
}

- (_TtC13CoreIDVShared29IdentityPassiveLivenessConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end