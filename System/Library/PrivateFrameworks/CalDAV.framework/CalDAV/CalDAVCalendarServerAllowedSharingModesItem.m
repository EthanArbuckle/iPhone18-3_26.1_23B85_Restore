@interface CalDAVCalendarServerAllowedSharingModesItem
- (id)copyParseRules;
@end

@implementation CalDAVCalendarServerAllowedSharingModesItem

- (id)copyParseRules
{
  v17 = objc_alloc(MEMORY[0x277CBEAC0]);
  v2 = *MEMORY[0x277CFDE90];
  v3 = *MEMORY[0x277CFDE08];
  v16 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:*MEMORY[0x277CFDE90] elementName:*MEMORY[0x277CFDE08] objectClass:objc_opt_class() setterMethod:sel_setCanBePublished_];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, v3];
  v5 = *MEMORY[0x277CFDE10];
  v6 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:*MEMORY[0x277CFDE10] objectClass:objc_opt_class() setterMethod:sel_setCanBeShared_];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, v5];
  v8 = *MEMORY[0x277CFDF50];
  v9 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:*MEMORY[0x277CFDF50] objectClass:objc_opt_class() setterMethod:sel_setIsMarkedUndeletable_];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, v8];
  v11 = *MEMORY[0x277CFDF48];
  v12 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:*MEMORY[0x277CFDF48] objectClass:objc_opt_class() setterMethod:sel_setIsMarkedImmutableSharees_];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, v11];
  v14 = [v17 initWithObjectsAndKeys:{v16, v4, v6, v7, v9, v10, v12, v13, 0}];

  return v14;
}

@end