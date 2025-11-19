@interface _DKEventTypeStatsTimerCounter
+ (id)counterInCollection:(void *)a3 withEventName:(void *)a4 eventType:(void *)a5 eventTypePossibleValues:;
- (id)eventName;
- (void)addTimingWithStartDate:(void *)a3 endDate:(void *)a4 typeValue:;
- (void)addTimingWithTimeInterval:(double)a3 typeValue:;
@end

@implementation _DKEventTypeStatsTimerCounter

+ (id)counterInCollection:(void *)a3 withEventName:(void *)a4 eventType:(void *)a5 eventTypePossibleValues:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = objc_opt_self();
  v13 = [_DKEventStatsCollection counterWithClass:v12 collectionName:v11 eventName:v10 eventType:v9 eventTypePossibleValues:v8 hasResult:0 scalar:0];

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

- (void)addTimingWithTimeInterval:(double)a3 typeValue:
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (a1)
  {
    OUTLINED_FUNCTION_10_8();
    OUTLINED_FUNCTION_3_16();
    if ((v7 & 1) == 0)
    {
      Property = *(a1 + 8);
      if (Property)
      {
        OUTLINED_FUNCTION_8_8();
        Property = objc_getProperty(v9, v10, v11, v12);
      }

      v13 = MEMORY[0x1E695DEC8];
      v14 = Property;
      [OUTLINED_FUNCTION_4_14() arrayWithObjects:v6 count:?];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_5_11() trackEventWithPropertyValues:a3 value:?];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)addTimingWithStartDate:(void *)a3 endDate:(void *)a4 typeValue:
{
  if (a1)
  {
    v8 = a4;
    [a3 timeIntervalSinceDate:a2];
    [(_DKEventTypeStatsTimerCounter *)a1 addTimingWithTimeInterval:v8 typeValue:v7];
  }
}

@end