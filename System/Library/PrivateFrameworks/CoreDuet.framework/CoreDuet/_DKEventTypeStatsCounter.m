@interface _DKEventTypeStatsCounter
+ (id)counterInCollection:(void *)a3 withEventName:(void *)a4 eventType:(void *)a5 eventTypePossibleValues:;
- (id)eventName;
- (id)eventType;
- (id)typeValues;
- (void)incrementCountByNumber:(void *)a3 typeValue:;
- (void)incrementCountWithTypeValue:(uint64_t)a1;
@end

@implementation _DKEventTypeStatsCounter

+ (id)counterInCollection:(void *)a3 withEventName:(void *)a4 eventType:(void *)a5 eventTypePossibleValues:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = objc_opt_self();
  v13 = [_DKEventStatsCollection counterWithClass:v12 collectionName:v11 eventName:v10 eventType:v9 eventTypePossibleValues:v8 hasResult:0 scalar:1];

  return v13;
}

- (void)incrementCountWithTypeValue:(uint64_t)a1
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (a1)
  {
    OUTLINED_FUNCTION_10_8();
    OUTLINED_FUNCTION_3_16();
    if ((v5 & 1) == 0)
    {
      Property = *(a1 + 8);
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

- (void)incrementCountByNumber:(void *)a3 typeValue:
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a1)
  {
    [(_DKEventStatsCounterInternal *)*(a1 + 8) incrementCountByNumber:a2 typeValue:v5 success:0];
    OUTLINED_FUNCTION_3_16();
    if ((v6 & 1) == 0)
    {
      Property = *(a1 + 8);
      if (Property)
      {
        OUTLINED_FUNCTION_8_8();
        Property = objc_getProperty(v8, v9, v10, v11);
      }

      v16[0] = v5;
      v12 = MEMORY[0x1E695DEC8];
      v13 = Property;
      v14 = [v12 arrayWithObjects:v16 count:1];
      OUTLINED_FUNCTION_11_6(v14);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end