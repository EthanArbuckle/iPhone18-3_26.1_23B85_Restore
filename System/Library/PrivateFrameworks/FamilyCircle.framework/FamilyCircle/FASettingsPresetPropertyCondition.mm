@interface FASettingsPresetPropertyCondition
- (FASettingsPresetPropertyCondition)init;
- (FASettingsPresetPropertyCondition)initWithDictionary:(id)dictionary;
- (FASettingsPresetPropertyCondition)initWithSourceProperty:(id)property operand:(id)operand result:(id)result;
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

- (FASettingsPresetPropertyCondition)initWithSourceProperty:(id)property operand:(id)operand result:(id)result
{
  v8 = sub_1B715E0A0();
  v9 = (self + OBJC_IVAR___FASettingsPresetPropertyCondition_sourceProperty);
  *v9 = v8;
  v9[1] = v10;
  *(self + OBJC_IVAR___FASettingsPresetPropertyCondition_operand) = operand;
  *(self + OBJC_IVAR___FASettingsPresetPropertyCondition_result) = result;
  v14.receiver = self;
  v14.super_class = FASettingsPresetPropertyCondition;
  operandCopy = operand;
  resultCopy = result;
  return [(FASettingsPresetPropertyCondition *)&v14 init];
}

- (FASettingsPresetPropertyCondition)initWithDictionary:(id)dictionary
{
  if (dictionary)
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