@interface _DKEventStatsTimerCounter
+ (id)counterInCollection:(void *)collection withEventName:;
- (id)eventName;
- (void)addTimingWithStartDate:(void *)date endDate:;
- (void)addTimingWithTimeInterval:(uint64_t)interval;
@end

@implementation _DKEventStatsTimerCounter

+ (id)counterInCollection:(void *)collection withEventName:
{
  collectionCopy = collection;
  v5 = a2;
  v6 = objc_opt_self();
  v7 = [_DKEventStatsCollection counterWithClass:v6 collectionName:v5 eventName:collectionCopy eventType:0 eventTypePossibleValues:0 hasResult:0 scalar:0];

  return v7;
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

- (void)addTimingWithTimeInterval:(uint64_t)interval
{
  if (interval)
  {
    v4 = OUTLINED_FUNCTION_9_7(interval);
    [(_DKEventStatsCounterInternal *)v4 incrementCountByNumber:v5 typeValue:v6 success:0];
    OUTLINED_FUNCTION_3_16();
    if ((v7 & 1) == 0)
    {
      Property = *(interval + 8);
      if (Property)
      {
        OUTLINED_FUNCTION_8_8();
        Property = objc_getProperty(v9, v10, v11, v12);
      }

      v13 = MEMORY[0x1E695E0F0];

      [Property trackEventWithPropertyValues:v13 value:a2];
    }
  }
}

- (void)addTimingWithStartDate:(void *)date endDate:
{
  if (self)
  {
    [date timeIntervalSinceDate:a2];

    [(_DKEventStatsTimerCounter *)self addTimingWithTimeInterval:v4];
  }
}

@end