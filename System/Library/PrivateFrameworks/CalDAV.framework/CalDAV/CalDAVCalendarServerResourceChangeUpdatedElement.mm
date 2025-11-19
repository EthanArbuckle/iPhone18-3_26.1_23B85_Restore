@interface CalDAVCalendarServerResourceChangeUpdatedElement
- (id)copyParseRules;
- (void)addCalendarChange:(id)a3;
@end

@implementation CalDAVCalendarServerResourceChangeUpdatedElement

- (void)addCalendarChange:(id)a3
{
  v4 = a3;
  v5 = [(CalDAVCalendarServerResourceChangeUpdatedElement *)self calendarChanges];

  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB58] setWithCapacity:1];
    [(CalDAVCalendarServerResourceChangeUpdatedElement *)self setCalendarChanges:v6];
  }

  v7 = [(CalDAVCalendarServerResourceChangeUpdatedElement *)self calendarChanges];
  [v7 addObject:v4];
}

- (id)copyParseRules
{
  v16.receiver = self;
  v16.super_class = CalDAVCalendarServerResourceChangeUpdatedElement;
  v15 = [(CalDAVCalendarServerResourceChangeElement *)&v16 copyParseRules];
  v2 = [v15 mutableCopy];
  v14 = objc_alloc(MEMORY[0x277CBEAC0]);
  v3 = *MEMORY[0x277CFDE90];
  v4 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:*MEMORY[0x277CFDE90] elementName:@"content" objectClass:objc_opt_class() setterMethod:sel_addContentItem_];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v3, @"content"];
  v6 = *MEMORY[0x277CFDEF8];
  v7 = *MEMORY[0x277CFDFC8];
  v8 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:*MEMORY[0x277CFDEF8] elementName:*MEMORY[0x277CFDFC8] objectClass:objc_opt_class() setterMethod:sel_setProp_];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v6, v7];
  v10 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v3 elementName:@"calendar-changes" objectClass:objc_opt_class() setterMethod:sel_addCalendarChange_];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v3, @"calendar-changes"];
  v12 = [v14 initWithObjectsAndKeys:{v4, v5, v8, v9, v10, v11, 0}];

  [v2 addEntriesFromDictionary:v12];
  return v2;
}

@end