@interface CalDAVCalendarServerNotificationItem
- (id)copyParseRules;
@end

@implementation CalDAVCalendarServerNotificationItem

- (id)copyParseRules
{
  v13 = objc_alloc(MEMORY[0x277CBEAC0]);
  v2 = *MEMORY[0x277CFDE90];
  v12 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:1 maximumNumber:1 nameSpace:*MEMORY[0x277CFDE90] elementName:@"dtstamp" objectClass:objc_opt_class() setterMethod:sel_setDtstamp_];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"dtstamp"];
  v4 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:@"invite-notification" objectClass:objc_opt_class() setterMethod:sel_setContent_];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"invite-notification"];
  v6 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:@"invite-reply" objectClass:objc_opt_class() setterMethod:sel_setContent_];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"invite-reply"];
  v8 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:@"resource-changed" objectClass:objc_opt_class() setterMethod:sel_setContent_];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"resource-changed"];
  v10 = [v13 initWithObjectsAndKeys:{v12, v3, v4, v5, v6, v7, v8, v9, 0}];

  return v10;
}

@end