@interface _DKEventTypeStatsCounter
+ (id)counterInCollection:(void *)collection withEventName:(void *)name eventType:(void *)type eventTypePossibleValues:;
- (id)eventName;
- (id)eventType;
- (id)typeValues;
- (void)incrementCountByNumber:(void *)number typeValue:;
- (void)incrementCountWithTypeValue:(uint64_t)value;
@end

@implementation _DKEventTypeStatsCounter

+ (id)counterInCollection:(void *)collection withEventName:(void *)name eventType:(void *)type eventTypePossibleValues:
{
  typeCopy = type;
  nameCopy = name;
  collectionCopy = collection;
  v11 = a2;
  v12 = objc_opt_self();
  v13 = [_DKEventStatsCollection counterWithClass:v12 collectionName:v11 eventName:collectionCopy eventType:nameCopy eventTypePossibleValues:typeCopy hasResult:0 scalar:1];

  return v13;
}

- (void)incrementCountWithTypeValue:(uint64_t)value
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (value)
  {
    OUTLINED_FUNCTION_10_8();
    OUTLINED_FUNCTION_3_16();
    if ((v5 & 1) == 0)
    {
      Property = *(value + 8);
      if (Property)
      {
        OUTLINED_FUNCTION_8_8();
        Property = objc_getProperty(v7, v8, v9, v10);
      }

      v11 = MEMORY[0x1E695DEC8];
      v12 = Property;
      [OUTLINED_FUNCTION_4_14() arrayWithObjects:v4 count:?];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_5_11() trackEventWithPropertyValues:? value:?];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
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

- (void)incrementCountByNumber:(void *)number typeValue:
{
  v16[1] = *MEMORY[0x1E69E9840];
  numberCopy = number;
  if (self)
  {
    [(_DKEventStatsCounterInternal *)*(self + 8) incrementCountByNumber:a2 typeValue:numberCopy success:0];
    OUTLINED_FUNCTION_3_16();
    if ((v6 & 1) == 0)
    {
      Property = *(self + 8);
      if (Property)
      {
        OUTLINED_FUNCTION_8_8();
        Property = objc_getProperty(v8, v9, v10, v11);
      }

      v16[0] = numberCopy;
      v12 = MEMORY[0x1E695DEC8];
      v13 = Property;
      v14 = [v12 arrayWithObjects:v16 count:1];
      OUTLINED_FUNCTION_11_6(v14);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end