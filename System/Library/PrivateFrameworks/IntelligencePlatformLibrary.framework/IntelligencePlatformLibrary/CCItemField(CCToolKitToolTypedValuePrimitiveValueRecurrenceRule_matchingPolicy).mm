@interface CCItemField(CCToolKitToolTypedValuePrimitiveValueRecurrenceRule_matchingPolicy)
- (uint64_t)toolKitToolTypedValuePrimitiveValueRecurrenceRuleMatchingPolicy;
@end

@implementation CCItemField(CCToolKitToolTypedValuePrimitiveValueRecurrenceRule_matchingPolicy)

- (uint64_t)toolKitToolTypedValuePrimitiveValueRecurrenceRuleMatchingPolicy
{
  LODWORD(result) = [self uint32Value];
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

@end