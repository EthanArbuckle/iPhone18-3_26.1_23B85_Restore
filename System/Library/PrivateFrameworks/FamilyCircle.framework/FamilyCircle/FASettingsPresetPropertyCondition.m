@interface FASettingsPresetPropertyCondition
- (FASettingsPresetPropertyCondition)init;
- (FASettingsPresetPropertyCondition)initWithDictionary:(id)a3;
- (FASettingsPresetPropertyCondition)initWithSourceProperty:(id)a3 operand:(id)a4 result:(id)a5;
- (NSString)sourceProperty;
@end

@implementation FASettingsPresetPropertyCondition

- (NSString)sourceProperty
{
  v2 = *(self + OBJC_IVAR___FASettingsPresetPropertyCondition_sourceProperty);
  v3 = *(self + OBJC_IVAR___FASettingsPresetPropertyCondition_sourceProperty + 8);

  v4 = sub_1B715E070();

  return v4;
}

- (FASettingsPresetPropertyCondition)initWithSourceProperty:(id)a3 operand:(id)a4 result:(id)a5
{
  v8 = sub_1B715E0A0();
  v9 = (self + OBJC_IVAR___FASettingsPresetPropertyCondition_sourceProperty);
  *v9 = v8;
  v9[1] = v10;
  *(self + OBJC_IVAR___FASettingsPresetPropertyCondition_operand) = a4;
  *(self + OBJC_IVAR___FASettingsPresetPropertyCondition_result) = a5;
  v14.receiver = self;
  v14.super_class = FASettingsPresetPropertyCondition;
  v11 = a4;
  v12 = a5;
  return [(FASettingsPresetPropertyCondition *)&v14 init];
}

- (FASettingsPresetPropertyCondition)initWithDictionary:(id)a3
{
  if (a3)
  {
    v3 = sub_1B715DFE0();
  }

  else
  {
    v3 = 0;
  }

  return FASettingsPresetPropertyCondition.init(dictionary:)(v3);
}

- (FASettingsPresetPropertyCondition)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end