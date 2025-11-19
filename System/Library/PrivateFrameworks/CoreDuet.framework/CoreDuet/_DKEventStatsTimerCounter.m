@interface _DKEventStatsTimerCounter
+ (id)counterInCollection:(void *)a3 withEventName:;
- (id)eventName;
- (void)addTimingWithStartDate:(void *)a3 endDate:;
- (void)addTimingWithTimeInterval:(uint64_t)a1;
@end

@implementation _DKEventStatsTimerCounter

+ (id)counterInCollection:(void *)a3 withEventName:
{
  v4 = a3;
  v5 = a2;
  v6 = objc_opt_self();
  v7 = [_DKEventStatsCollection counterWithClass:v6 collectionName:v5 eventName:v4 eventType:0 eventTypePossibleValues:0 hasResult:0 scalar:0];

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

- (void)addTimingWithTimeInterval:(uint64_t)a1
{
  if (a1)
  {
    v4 = OUTLINED_FUNCTION_9_7(a1);
    [(_DKEventStatsCounterInternal *)v4 incrementCountByNumber:v5 typeValue:v6 success:0];
    OUTLINED_FUNCTION_3_16();
    if ((v7 & 1) == 0)
    {
      Property = *(a1 + 8);
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

- (void)addTimingWithStartDate:(void *)a3 endDate:
{
  if (a1)
  {
    [a3 timeIntervalSinceDate:a2];

    [(_DKEventStatsTimerCounter *)a1 addTimingWithTimeInterval:v4];
  }
}

@end