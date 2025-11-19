@interface CalDAVCalendarServerScheduleChangesItem
- (id)copyParseRules;
@end

@implementation CalDAVCalendarServerScheduleChangesItem

- (id)copyParseRules
{
  v2 = objc_alloc(MEMORY[0x277CBEAC0]);
  v3 = *MEMORY[0x277CFDE90];
  v4 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:*MEMORY[0x277CFDE90] elementName:@"dtstamp" objectClass:objc_opt_class() setterMethod:sel_setDtstamp_];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v3, @"dtstamp"];
  v6 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v3 elementName:@"action" objectClass:objc_opt_class() setterMethod:sel_setAction_];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v3, @"action"];
  v8 = [v2 initWithObjectsAndKeys:{v4, v5, v6, v7, 0}];

  return v8;
}

@end