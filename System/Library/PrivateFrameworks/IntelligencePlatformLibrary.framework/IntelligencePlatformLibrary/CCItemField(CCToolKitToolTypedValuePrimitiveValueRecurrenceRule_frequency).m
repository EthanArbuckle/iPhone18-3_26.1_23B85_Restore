@interface CCItemField(CCToolKitToolTypedValuePrimitiveValueRecurrenceRule_frequency)
- (uint64_t)toolKitToolTypedValuePrimitiveValueRecurrenceRuleFrequency;
@end

@implementation CCItemField(CCToolKitToolTypedValuePrimitiveValueRecurrenceRule_frequency)

- (uint64_t)toolKitToolTypedValuePrimitiveValueRecurrenceRuleFrequency
{
  LODWORD(result) = [a1 uint32Value];
  if (result >= 7)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

@end