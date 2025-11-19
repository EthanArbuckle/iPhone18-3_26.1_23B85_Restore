@interface CalDAVCalendarServerReplyItem
- (id)copyParseRules;
@end

@implementation CalDAVCalendarServerReplyItem

- (id)copyParseRules
{
  v2 = objc_alloc(MEMORY[0x277CBEAC0]);
  v3 = *MEMORY[0x277CFDE90];
  v4 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:*MEMORY[0x277CFDE90] elementName:@"attendee" objectClass:objc_opt_class() setterMethod:sel_setAttendee_];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v3, @"attendee"];
  v6 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:1 maximumNumber:0x7FFFFFFFLL nameSpace:v3 elementName:@"recurrence" objectClass:objc_opt_class() setterMethod:sel_addRecurrence_];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v3, @"recurrence"];
  v8 = [v2 initWithObjectsAndKeys:{v4, v5, v6, v7, 0}];

  return v8;
}

@end