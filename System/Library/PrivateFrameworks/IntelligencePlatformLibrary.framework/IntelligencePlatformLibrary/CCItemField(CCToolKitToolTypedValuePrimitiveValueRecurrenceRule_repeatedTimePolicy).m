@interface CCItemField(CCToolKitToolTypedValuePrimitiveValueRecurrenceRule_repeatedTimePolicy)
- (uint64_t)toolKitToolTypedValuePrimitiveValueRecurrenceRuleRepeatedTimePolicy;
@end

@implementation CCItemField(CCToolKitToolTypedValuePrimitiveValueRecurrenceRule_repeatedTimePolicy)

- (uint64_t)toolKitToolTypedValuePrimitiveValueRecurrenceRuleRepeatedTimePolicy
{
  LODWORD(result) = [a1 uint32Value];
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

@end