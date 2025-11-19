@interface CalDAVCalendarServerRecurrenceItem
- (BOOL)isMaster;
- (id)copyParseRules;
@end

@implementation CalDAVCalendarServerRecurrenceItem

- (id)copyParseRules
{
  v2 = objc_alloc(MEMORY[0x277CBEAC0]);
  v3 = *MEMORY[0x277CFDE90];
  v4 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:*MEMORY[0x277CFDE90] elementName:@"master" objectClass:objc_opt_class() setterMethod:sel_setMaster_];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v3, @"master"];
  v6 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v3 elementName:@"recurrenceid" objectClass:objc_opt_class() setterMethod:sel_setRecurrenceID_];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v3, @"recurrenceid"];
  v8 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v3 elementName:@"changes" objectClass:objc_opt_class() setterMethod:sel_setChanges_];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v3, @"changes"];
  v10 = [v2 initWithObjectsAndKeys:{v4, v5, v6, v7, v8, v9, 0}];

  return v10;
}

- (BOOL)isMaster
{
  v2 = [(CalDAVCalendarServerRecurrenceItem *)self master];
  v3 = v2 != 0;

  return v3;
}

@end