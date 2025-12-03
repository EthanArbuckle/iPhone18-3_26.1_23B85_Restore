@interface _DKEventTypeStatsTimerCounter
+ (id)counterInCollection:(void *)collection withEventName:(void *)name eventType:(void *)type eventTypePossibleValues:;
- (id)eventName;
- (void)addTimingWithStartDate:(void *)date endDate:(void *)endDate typeValue:;
- (void)addTimingWithTimeInterval:(double)interval typeValue:;
@end

@implementation _DKEventTypeStatsTimerCounter

+ (id)counterInCollection:(void *)collection withEventName:(void *)name eventType:(void *)type eventTypePossibleValues:
{
  typeCopy = type;
  nameCopy = name;
  collectionCopy = collection;
  v11 = a2;
  v12 = objc_opt_self();
  v13 = [_DKEventStatsCollection counterWithClass:v12 collectionName:v11 eventName:collectionCopy eventType:nameCopy eventTypePossibleValues:typeCopy hasResult:0 scalar:0];

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

- (void)addTimingWithTimeInterval:(double)interval typeValue:
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (self)
  {
    OUTLINED_FUNCTION_10_8();
    OUTLINED_FUNCTION_3_16();
    if ((v7 & 1) == 0)
    {
      Property = *(self + 8);
      if (Property)
      {
        OUTLINED_FUNCTION_8_8();
        Property = objc_getProperty(v9, v10, v11, v12);
      }

      v13 = MEMORY[0x1E695DEC8];
      v14 = Property;
      [OUTLINED_FUNCTION_4_14() arrayWithObjects:v6 count:?];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_5_11() trackEventWithPropertyValues:interval value:?];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)addTimingWithStartDate:(void *)date endDate:(void *)endDate typeValue:
{
  if (self)
  {
    endDateCopy = endDate;
    [date timeIntervalSinceDate:a2];
    [(_DKEventTypeStatsTimerCounter *)self addTimingWithTimeInterval:endDateCopy typeValue:v7];
  }
}

@end