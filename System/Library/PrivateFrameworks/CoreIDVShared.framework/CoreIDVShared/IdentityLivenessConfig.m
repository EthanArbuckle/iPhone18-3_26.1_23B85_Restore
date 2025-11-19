@interface IdentityLivenessConfig
- (_TtC13CoreIDVShared22IdentityLivenessConfig)init;
- (_TtC13CoreIDVShared22IdentityLivenessConfig)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IdentityLivenessConfig

- (_TtC13CoreIDVShared22IdentityLivenessConfig)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  type metadata accessor for IdentityActiveLivenessConfig();
  v6 = a3;
  *(&self->super.isa + OBJC_IVAR____TtC13CoreIDVShared22IdentityLivenessConfig_active) = sub_225CCEF14();
  type metadata accessor for IdentityPassiveLivenessConfig();
  *(&self->super.isa + OBJC_IVAR____TtC13CoreIDVShared22IdentityLivenessConfig_passive) = sub_225CCEF14();
  v9.receiver = self;
  v9.super_class = ObjectType;
  v7 = [(IdentityLivenessConfig *)&v9 init];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13CoreIDVShared22IdentityLivenessConfig_active);
  v9 = a3;
  v5 = self;
  v6 = sub_225CCE444();
  [v9 encodeObject:v4 forKey:v6];

  v7 = *(&v5->super.isa + OBJC_IVAR____TtC13CoreIDVShared22IdentityLivenessConfig_passive);
  v8 = sub_225CCE444();
  [v9 encodeObject:v7 forKey:v8];
}

- (_TtC13CoreIDVShared22IdentityLivenessConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end