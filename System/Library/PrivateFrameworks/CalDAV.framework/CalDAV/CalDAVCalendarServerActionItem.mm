@interface CalDAVCalendarServerActionItem
- (id)copyParseRules;
@end

@implementation CalDAVCalendarServerActionItem

- (id)copyParseRules
{
  v13 = objc_alloc(MEMORY[0x277CBEAC0]);
  v2 = *MEMORY[0x277CFDE90];
  v12 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:*MEMORY[0x277CFDE90] elementName:@"create" objectClass:objc_opt_class() setterMethod:sel_setCreate_];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"create"];
  v4 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:@"update" objectClass:objc_opt_class() setterMethod:sel_setUpdate_];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"update"];
  v6 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:@"reply" objectClass:objc_opt_class() setterMethod:sel_setReply_];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"reply"];
  v8 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:@"cancel" objectClass:objc_opt_class() setterMethod:sel_setCancel_];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"cancel"];
  v10 = [v13 initWithObjectsAndKeys:{v12, v3, v4, v5, v6, v7, v8, v9, 0}];

  return v10;
}

@end