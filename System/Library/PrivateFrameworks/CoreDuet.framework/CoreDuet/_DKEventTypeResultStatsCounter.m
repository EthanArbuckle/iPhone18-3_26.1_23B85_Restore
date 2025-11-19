@interface _DKEventTypeResultStatsCounter
+ (id)counterInCollection:(void *)a3 withEventName:(void *)a4 eventType:(void *)a5 eventTypePossibleValues:;
- (id)eventName;
- (id)eventType;
- (id)typeValues;
- (void)incrementCountWithTypeValue:(int)a3 success:;
@end

@implementation _DKEventTypeResultStatsCounter

+ (id)counterInCollection:(void *)a3 withEventName:(void *)a4 eventType:(void *)a5 eventTypePossibleValues:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = objc_opt_self();
  v13 = [_DKEventStatsCollection counterWithClass:v12 collectionName:v11 eventName:v10 eventType:v9 eventTypePossibleValues:v8 hasResult:1 scalar:1];

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

- (void)incrementCountWithTypeValue:(int)a3 success:
{
  v16[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    [(_DKEventStatsCounterInternal *)*(a1 + 8) incrementCountByNumber:v5 typeValue:a3 success:?];
    OUTLINED_FUNCTION_3_16();
    if ((v6 & 1) == 0)
    {
      Property = *(a1 + 8);
      if (Property)
      {
        OUTLINED_FUNCTION_8_8();
        Property = objc_getProperty(v8, v9, v10, v11);
      }

      v12 = @"false";
      if (a3)
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