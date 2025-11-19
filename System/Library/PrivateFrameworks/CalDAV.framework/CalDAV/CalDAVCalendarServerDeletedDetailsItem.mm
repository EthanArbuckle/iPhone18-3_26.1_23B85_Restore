@interface CalDAVCalendarServerDeletedDetailsItem
- (id)copyParseRules;
- (void)setComponentTypeItem:(id)a3;
- (void)setDisplayNameItem:(id)a3;
- (void)setNextInstanceItem:(id)a3;
- (void)setSummaryItem:(id)a3;
@end

@implementation CalDAVCalendarServerDeletedDetailsItem

- (void)setComponentTypeItem:(id)a3
{
  v4 = [a3 payloadAsString];
  [(CalDAVCalendarServerDeletedDetailsItem *)self setComponentType:v4];
}

- (void)setSummaryItem:(id)a3
{
  v4 = [a3 payloadAsString];
  [(CalDAVCalendarServerDeletedDetailsItem *)self setSummary:v4];
}

- (void)setDisplayNameItem:(id)a3
{
  v4 = [a3 payloadAsString];
  [(CalDAVCalendarServerDeletedDetailsItem *)self setDisplayName:v4];
}

- (void)setNextInstanceItem:(id)a3
{
  v4 = MEMORY[0x277D7F100];
  v6 = [a3 payloadAsString];
  v5 = [v4 dateFromICSString:v6];
  [(CalDAVCalendarServerDeletedDetailsItem *)self setNextInstance:v5];
}

- (id)copyParseRules
{
  v14 = objc_alloc(MEMORY[0x277CBEAC0]);
  v2 = *MEMORY[0x277CFDE90];
  v13 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:*MEMORY[0x277CFDE90] elementName:@"deleted-component" objectClass:objc_opt_class() setterMethod:sel_setComponentTypeItem_];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"deleted-component"];
  v11 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:@"deleted-summary" objectClass:objc_opt_class() setterMethod:sel_setSummaryItem_];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"deleted-summary"];
  v3 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:@"deleted-next-instance" objectClass:objc_opt_class() setterMethod:sel_setNextInstanceItem_];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"deleted-next-instance"];
  v5 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:@"deleted-had-more-instances" objectClass:objc_opt_class() setterMethod:sel_setHadMoreInstancesItem_];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"deleted-had-more-instances"];
  v7 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:@"deleted-displayname" objectClass:objc_opt_class() setterMethod:sel_setDisplayNameItem_];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"deleted-displayname"];
  v15 = [v14 initWithObjectsAndKeys:{v13, v12, v11, v10, v3, v4, v5, v6, v7, v8, 0}];

  return v15;
}

@end