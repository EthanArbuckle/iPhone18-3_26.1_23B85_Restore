@interface CCItemField(CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleWeekday_RecurrenceRuleWeekdayWeekday)
- (uint64_t)toolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleWeekdayRecurrenceRuleWeekdayWeekday;
@end

@implementation CCItemField(CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleWeekday_RecurrenceRuleWeekdayWeekday)

- (uint64_t)toolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleWeekdayRecurrenceRuleWeekdayWeekday
{
  LODWORD(result) = [self uint32Value];
  if (result >= 8)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

@end