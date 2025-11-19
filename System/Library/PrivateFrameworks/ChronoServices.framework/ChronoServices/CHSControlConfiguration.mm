@interface CHSControlConfiguration
- (BOOL)isEqual:(id)a3;
- (CHSControlConfiguration)init;
- (CHSControlConfiguration)initWithControlItems:(id)a3;
- (CHSControlConfiguration)initWithControlItems:(id)a3 automaticallyOrphaned:(BOOL)a4;
- (CHSControlConfiguration)initWithControlItems:(id)a3 replicationPredicate:(id)a4;
- (CHSControlConfiguration)initWithControlItems:(id)a3 replicationPredicate:(id)a4 automaticallyOrphaned:(BOOL)a5;
- (NSString)description;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(void *)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHSControlConfiguration

- (CHSControlConfiguration)initWithControlItems:(id)a3
{
  type metadata accessor for CHSControlConfigurationItem(0);
  v4 = sub_195FA0B38();
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__expirationTimeout) = 0x409C200000000000;
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__controlItems) = v4;
  v5 = [objc_opt_self() nonePredicate];
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__replicationPredicate) = v5;
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__automaticallyOrphaned) = 1;
  v7.receiver = self;
  v7.super_class = CHSControlConfiguration;
  return [(CHSControlConfiguration *)&v7 init];
}

- (CHSControlConfiguration)initWithControlItems:(id)a3 automaticallyOrphaned:(BOOL)a4
{
  type metadata accessor for CHSControlConfigurationItem(0);
  v6 = sub_195FA0B38();
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__expirationTimeout) = 0x409C200000000000;
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__controlItems) = v6;
  v7 = [objc_opt_self() nonePredicate];
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__replicationPredicate) = v7;
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__automaticallyOrphaned) = a4;
  v9.receiver = self;
  v9.super_class = CHSControlConfiguration;
  return [(CHSControlConfiguration *)&v9 init];
}

- (CHSControlConfiguration)initWithControlItems:(id)a3 replicationPredicate:(id)a4
{
  type metadata accessor for CHSControlConfigurationItem(0);
  v6 = sub_195FA0B38();
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__expirationTimeout) = 0x409C200000000000;
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__controlItems) = v6;
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__replicationPredicate) = a4;
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__automaticallyOrphaned) = 1;
  v9.receiver = self;
  v9.super_class = CHSControlConfiguration;
  v7 = a4;
  return [(CHSControlConfiguration *)&v9 init];
}

- (CHSControlConfiguration)initWithControlItems:(id)a3 replicationPredicate:(id)a4 automaticallyOrphaned:(BOOL)a5
{
  type metadata accessor for CHSControlConfigurationItem(0);
  v8 = sub_195FA0B38();
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__expirationTimeout) = 0x409C200000000000;
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__controlItems) = v8;
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__replicationPredicate) = a4;
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__automaticallyOrphaned) = a5;
  v11.receiver = self;
  v11.super_class = CHSControlConfiguration;
  v9 = a4;
  return [(CHSControlConfiguration *)&v11 init];
}

- (id)mutableCopyWithZone:(void *)a3
{
  type metadata accessor for CHSMutableControlConfiguration(self);
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v4 initWithConfiguration_];
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_195FA0E08();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = CHSControlConfiguration.isEqual(_:)(v8);

  sub_195EB7914(v8);
  return v6;
}

- (int64_t)hash
{
  v2 = self;
  v3 = CHSControlConfiguration.hash.getter();

  return v3;
}

- (NSString)description
{
  v2 = self;
  result = [(CHSControlConfiguration *)v2 descriptionBuilderWithMultilinePrefix:0];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  v5 = [(NSString *)result build];

  if (!v5)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return v5;
}

- (CHSControlConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  CHSControlConfiguration.encode(with:)(v4);
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  if (a3)
  {
    v4 = sub_195FA08B8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  object = CHSControlConfiguration.description(withMultilinePrefix:)(v8).value._object;

  if (object)
  {
    v10 = sub_195FA0888();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  if (a3)
  {
    sub_195FA08B8();
  }

  v4 = self;
  v5 = _sSo23CHSControlConfigurationC14ChronoServicesE18descriptionBuilder19withMultilinePrefixSo013BSDescriptionF0CSgSSSg_tF_0();

  return v5;
}

- (id)succinctDescription
{
  v2 = self;
  result = [(CHSControlConfiguration *)v2 succinctDescriptionBuilder];
  if (result)
  {
    v4 = result;
    v5 = [result build];

    if (v5)
    {
      sub_195FA08B8();

      v6 = sub_195FA0888();
    }

    else
    {

      v6 = 0;
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)succinctDescriptionBuilder
{
  v2 = self;
  v3 = CHSControlConfiguration.succinctDescriptionBuilder()();

  return v3;
}

@end