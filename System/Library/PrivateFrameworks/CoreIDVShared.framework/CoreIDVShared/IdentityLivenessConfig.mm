@interface IdentityLivenessConfig
- (_TtC13CoreIDVShared22IdentityLivenessConfig)init;
- (_TtC13CoreIDVShared22IdentityLivenessConfig)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IdentityLivenessConfig

- (_TtC13CoreIDVShared22IdentityLivenessConfig)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  type metadata accessor for IdentityActiveLivenessConfig();
  coderCopy = coder;
  *(&self->super.isa + OBJC_IVAR____TtC13CoreIDVShared22IdentityLivenessConfig_active) = sub_225CCEF14();
  type metadata accessor for IdentityPassiveLivenessConfig();
  *(&self->super.isa + OBJC_IVAR____TtC13CoreIDVShared22IdentityLivenessConfig_passive) = sub_225CCEF14();
  v9.receiver = self;
  v9.super_class = ObjectType;
  v7 = [(IdentityLivenessConfig *)&v9 init];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13CoreIDVShared22IdentityLivenessConfig_active);
  coderCopy = coder;
  selfCopy = self;
  v6 = sub_225CCE444();
  [coderCopy encodeObject:v4 forKey:v6];

  v7 = *(&selfCopy->super.isa + OBJC_IVAR____TtC13CoreIDVShared22IdentityLivenessConfig_passive);
  v8 = sub_225CCE444();
  [coderCopy encodeObject:v7 forKey:v8];
}

- (_TtC13CoreIDVShared22IdentityLivenessConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end