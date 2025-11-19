@interface FASettingsPresetComputedProperty
- (FASettingsPresetComputedProperty)init;
- (FASettingsPresetComputedProperty)initWithConditions:(id)a3;
- (FASettingsPresetComputedProperty)initWithDictionary:(id)a3;
- (NSArray)conditions;
- (NSSet)dependencies;
- (id)computedValueWithValueProvider:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FASettingsPresetComputedProperty

- (NSArray)conditions
{
  v2 = *(self + OBJC_IVAR___FASettingsPresetComputedProperty_conditions);
  type metadata accessor for FASettingsPresetPropertyCondition();

  v3 = sub_1B715E310();

  return v3;
}

- (FASettingsPresetComputedProperty)initWithConditions:(id)a3
{
  type metadata accessor for FASettingsPresetPropertyCondition();
  *(self + OBJC_IVAR___FASettingsPresetComputedProperty_conditions) = sub_1B715E320();
  v5.receiver = self;
  v5.super_class = FASettingsPresetComputedProperty;
  return [(FASettingsPresetComputedProperty *)&v5 init];
}

- (FASettingsPresetComputedProperty)initWithDictionary:(id)a3
{
  if (a3)
  {
    v3 = sub_1B715DFE0();
  }

  else
  {
    v3 = 0;
  }

  return FASettingsPresetComputedProperty.init(dictionary:)(v3);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  FASettingsPresetComputedProperty.encode(with:)(v4);
}

- (id)computedValueWithValueProvider:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1B711DB3C(v5, v4, v14);
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
  v2 = self;
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