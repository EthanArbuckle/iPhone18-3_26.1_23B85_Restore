@interface IdentityActiveLivenessConfig
- (NSString)debugDescription;
- (_TtC13CoreIDVShared28IdentityActiveLivenessConfig)init;
- (_TtC13CoreIDVShared28IdentityActiveLivenessConfig)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IdentityActiveLivenessConfig

- (_TtC13CoreIDVShared28IdentityActiveLivenessConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_225B5E318(coderCopy);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  IdentityActiveLivenessConfig.encode(with:)(coderCopy);
}

- (NSString)debugDescription
{
  selfCopy = self;
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