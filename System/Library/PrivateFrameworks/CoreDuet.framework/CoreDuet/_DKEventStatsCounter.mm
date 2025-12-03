@interface _DKEventStatsCounter
+ (id)counterInCollection:(void *)collection withEventName:;
- (id)eventName;
- (void)incrementCountByNumber:(uint64_t)number;
@end

@implementation _DKEventStatsCounter

+ (id)counterInCollection:(void *)collection withEventName:
{
  collectionCopy = collection;
  v5 = a2;
  v6 = objc_opt_self();
  v7 = [_DKEventStatsCollection counterWithClass:v6 collectionName:v5 eventName:collectionCopy eventType:0 eventTypePossibleValues:0 hasResult:0 scalar:1];

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

- (void)incrementCountByNumber:(uint64_t)number
{
  if (number)
  {
    [(_DKEventStatsCounterInternal *)*(number + 8) incrementCountByNumber:a2 typeValue:0 success:0];
    OUTLINED_FUNCTION_3_16();
    if ((v4 & 1) == 0)
    {
      Property = *(number + 8);
      if (Property)
      {
        OUTLINED_FUNCTION_8_8();
        Property = objc_getProperty(v6, v7, v8, v9);
      }

      v10 = MEMORY[0x1E695E0F0];

      [Property trackEventWithPropertyValues:v10 value:a2];
    }
  }
}

@end