@interface IdentityActiveLivenessConfig
- (NSString)debugDescription;
- (_TtC13CoreIDVShared28IdentityActiveLivenessConfig)init;
- (_TtC13CoreIDVShared28IdentityActiveLivenessConfig)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IdentityActiveLivenessConfig

- (_TtC13CoreIDVShared28IdentityActiveLivenessConfig)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_225B5E318(v3);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  IdentityActiveLivenessConfig.encode(with:)(v4);
}

- (NSString)debugDescription
{
  v2 = self;
  IdentityActiveLivenessConfig.debugDescription.getter();

  v3 = sub_225CCE444();

  return v3;
}

- (_TtC13CoreIDVShared28IdentityActiveLivenessConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end