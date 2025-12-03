@interface _DKEventTypeResultStatsCounter
+ (id)counterInCollection:(void *)collection withEventName:(void *)name eventType:(void *)type eventTypePossibleValues:;
- (id)eventName;
- (id)eventType;
- (id)typeValues;
- (void)incrementCountWithTypeValue:(int)value success:;
@end

@implementation _DKEventTypeResultStatsCounter

+ (id)counterInCollection:(void *)collection withEventName:(void *)name eventType:(void *)type eventTypePossibleValues:
{
  typeCopy = type;
  nameCopy = name;
  collectionCopy = collection;
  v11 = a2;
  v12 = objc_opt_self();
  v13 = [_DKEventStatsCollection counterWithClass:v12 collectionName:v11 eventName:collectionCopy eventType:nameCopy eventTypePossibleValues:typeCopy hasResult:1 scalar:1];

  return v13;
}

- (id)eventName
{
  internal = self->_internal;
  if (internal)
  {
    return OUTLINED_FUNCTION_1_17(internal);
  }

  else
  {
    return OUTLINED_FUNCTION_0_24();
  }
}

- (id)eventType
{
  internal = self->_internal;
  if (internal)
  {
    return OUTLINED_FUNCTION_7_7(internal);
  }

  else
  {
    return OUTLINED_FUNCTION_0_24();
  }
}

- (id)typeValues
{
  internal = self->_internal;
  if (internal)
  {
    return OUTLINED_FUNCTION_6_14(internal);
  }

  else
  {
    return OUTLINED_FUNCTION_0_24();
  }
}

- (void)incrementCountWithTypeValue:(int)value success:
{
  v16[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (self)
  {
    [(_DKEventStatsCounterInternal *)*(self + 8) incrementCountByNumber:v5 typeValue:value success:?];
    OUTLINED_FUNCTION_3_16();
    if ((v6 & 1) == 0)
    {
      Property = *(self + 8);
      if (Property)
      {
        OUTLINED_FUNCTION_8_8();
        Property = objc_getProperty(v8, v9, v10, v11);
      }

      v12 = @"false";
      if (value)
      {
        v12 = @"true";
      }

      v16[0] = v5;
      v16[1] = v12;
      v13 = MEMORY[0x1E695DEC8];
      v14 = Property;
      [v13 arrayWithObjects:v16 count:2];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_5_11() trackEventWithPropertyValues:? value:?];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end