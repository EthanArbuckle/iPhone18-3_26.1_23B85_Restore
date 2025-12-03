@interface CHSControlConfiguration
- (BOOL)isEqual:(id)equal;
- (CHSControlConfiguration)init;
- (CHSControlConfiguration)initWithControlItems:(id)items;
- (CHSControlConfiguration)initWithControlItems:(id)items automaticallyOrphaned:(BOOL)orphaned;
- (CHSControlConfiguration)initWithControlItems:(id)items replicationPredicate:(id)predicate;
- (CHSControlConfiguration)initWithControlItems:(id)items replicationPredicate:(id)predicate automaticallyOrphaned:(BOOL)orphaned;
- (NSString)description;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(void *)zone;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSControlConfiguration

- (CHSControlConfiguration)initWithControlItems:(id)items
{
  type metadata accessor for CHSControlConfigurationItem(0);
  v4 = sub_195FA0B38();
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__expirationTimeout) = 0x409C200000000000;
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__controlItems) = v4;
  nonePredicate = [objc_opt_self() nonePredicate];
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__replicationPredicate) = nonePredicate;
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__automaticallyOrphaned) = 1;
  v7.receiver = self;
  v7.super_class = CHSControlConfiguration;
  return [(CHSControlConfiguration *)&v7 init];
}

- (CHSControlConfiguration)initWithControlItems:(id)items automaticallyOrphaned:(BOOL)orphaned
{
  type metadata accessor for CHSControlConfigurationItem(0);
  v6 = sub_195FA0B38();
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__expirationTimeout) = 0x409C200000000000;
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__controlItems) = v6;
  nonePredicate = [objc_opt_self() nonePredicate];
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__replicationPredicate) = nonePredicate;
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__automaticallyOrphaned) = orphaned;
  v9.receiver = self;
  v9.super_class = CHSControlConfiguration;
  return [(CHSControlConfiguration *)&v9 init];
}

- (CHSControlConfiguration)initWithControlItems:(id)items replicationPredicate:(id)predicate
{
  type metadata accessor for CHSControlConfigurationItem(0);
  v6 = sub_195FA0B38();
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__expirationTimeout) = 0x409C200000000000;
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__controlItems) = v6;
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__replicationPredicate) = predicate;
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__automaticallyOrphaned) = 1;
  v9.receiver = self;
  v9.super_class = CHSControlConfiguration;
  predicateCopy = predicate;
  return [(CHSControlConfiguration *)&v9 init];
}

- (CHSControlConfiguration)initWithControlItems:(id)items replicationPredicate:(id)predicate automaticallyOrphaned:(BOOL)orphaned
{
  type metadata accessor for CHSControlConfigurationItem(0);
  v8 = sub_195FA0B38();
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__expirationTimeout) = 0x409C200000000000;
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__controlItems) = v8;
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__replicationPredicate) = predicate;
  *(&self->super.isa + OBJC_IVAR___CHSControlConfiguration__automaticallyOrphaned) = orphaned;
  v11.receiver = self;
  v11.super_class = CHSControlConfiguration;
  predicateCopy = predicate;
  return [(CHSControlConfiguration *)&v11 init];
}

- (id)mutableCopyWithZone:(void *)zone
{
  type metadata accessor for CHSMutableControlConfiguration(self);
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v4 initWithConfiguration_];
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_195FA0E08();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = CHSControlConfiguration.isEqual(_:)(v8);

  sub_195EB7914(v8);
  return v6;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = CHSControlConfiguration.hash.getter();

  return v3;
}

- (NSString)description
{
  selfCopy = self;
  result = [(CHSControlConfiguration *)selfCopy descriptionBuilderWithMultilinePrefix:0];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  build = [(NSString *)result build];

  if (!build)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return build;
}

- (CHSControlConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CHSControlConfiguration.encode(with:)(coderCopy);
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  if (prefix)
  {
    v4 = sub_195FA08B8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
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

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  if (prefix)
  {
    sub_195FA08B8();
  }

  selfCopy = self;
  v5 = _sSo23CHSControlConfigurationC14ChronoServicesE18descriptionBuilder19withMultilinePrefixSo013BSDescriptionF0CSgSSSg_tF_0();

  return v5;
}

- (id)succinctDescription
{
  selfCopy = self;
  result = [(CHSControlConfiguration *)selfCopy succinctDescriptionBuilder];
  if (result)
  {
    v4 = result;
    build = [result build];

    if (build)
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
  selfCopy = self;
  v3 = CHSControlConfiguration.succinctDescriptionBuilder()();

  return v3;
}

@end