@interface IdentityPassiveLivenessConfig
- (_TtC13CoreIDVShared29IdentityPassiveLivenessConfig)init;
- (_TtC13CoreIDVShared29IdentityPassiveLivenessConfig)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IdentityPassiveLivenessConfig

- (_TtC13CoreIDVShared29IdentityPassiveLivenessConfig)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_225B5E9A4(v3);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  IdentityPassiveLivenessConfig.encode(with:)(v4);
}

- (_TtC13CoreIDVShared29IdentityPassiveLivenessConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end