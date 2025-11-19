@interface CalDAVCalendarServerOrganizerItem
- (id)copyParseRules;
@end

@implementation CalDAVCalendarServerOrganizerItem

- (id)copyParseRules
{
  v2 = objc_alloc(MEMORY[0x277CBEAC0]);
  v3 = *MEMORY[0x277CFDEF8];
  v4 = *MEMORY[0x277CFDF38];
  v5 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:1 maximumNumber:1 nameSpace:*MEMORY[0x277CFDEF8] elementName:*MEMORY[0x277CFDF38] objectClass:objc_opt_class() setterMethod:sel_setHref_];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v3, v4];
  v7 = *MEMORY[0x277CFDE90];
  v8 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:*MEMORY[0x277CFDE90] elementName:@"common-name" objectClass:objc_opt_class() setterMethod:sel_setCommonName_];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v7, @"common-name"];
  v10 = [v2 initWithObjectsAndKeys:{v5, v6, v8, v9, 0}];

  return v10;
}

@end