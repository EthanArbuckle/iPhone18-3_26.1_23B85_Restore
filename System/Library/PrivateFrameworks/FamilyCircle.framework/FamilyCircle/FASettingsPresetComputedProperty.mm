@interface FASettingsPresetComputedProperty
- (FASettingsPresetComputedProperty)init;
- (FASettingsPresetComputedProperty)initWithConditions:(id)conditions;
- (FASettingsPresetComputedProperty)initWithDictionary:(id)dictionary;
- (NSArray)conditions;
- (NSSet)dependencies;
- (id)computedValueWithValueProvider:(id)provider;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FASettingsPresetComputedProperty

- (NSArray)conditions
{
  v2 = *(self + OBJC_IVAR___FASettingsPresetComputedProperty_conditions);
  type metadata accessor for FASettingsPresetPropertyCondition();

  v3 = sub_1B715E310();

  return v3;
}

- (FASettingsPresetComputedProperty)initWithConditions:(id)conditions
{
  type metadata accessor for FASettingsPresetPropertyCondition();
  *(self + OBJC_IVAR___FASettingsPresetComputedProperty_conditions) = sub_1B715E320();
  v5.receiver = self;
  v5.super_class = FASettingsPresetComputedProperty;
  return [(FASettingsPresetComputedProperty *)&v5 init];
}

- (FASettingsPresetComputedProperty)initWithDictionary:(id)dictionary
{
  if (dictionary)
  {
    v3 = sub_1B715DFE0();
  }

  else
  {
    v3 = 0;
  }

  return FASettingsPresetComputedProperty.init(dictionary:)(v3);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  FASettingsPresetComputedProperty.encode(with:)(coderCopy);
}

- (id)computedValueWithValueProvider:(id)provider
{
  v4 = _Block_copy(provider);
  _Block_copy(v4);
  selfCopy = self;
  sub_1B711DB3C(selfCopy, v4, v14);
  _Block_release(v4);

  v6 = v15;
  if (v15)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v8 = *(v6 - 8);
    v9 = *(v8 + 64);
    MEMORY[0x1EEE9AC00](v7);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11);
    v12 = sub_1B715EB00();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NSSet)dependencies
{
  selfCopy = self;
  FASettingsPresetComputedProperty.dependencies.getter();

  v3 = sub_1B715E4B0();

  return v3;
}

- (FASettingsPresetComputedProperty)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end