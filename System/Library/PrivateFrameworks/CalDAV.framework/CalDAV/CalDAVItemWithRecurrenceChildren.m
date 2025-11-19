@interface CalDAVItemWithRecurrenceChildren
- (id)copyParseRules;
- (void)addRecurrence:(id)a3;
@end

@implementation CalDAVItemWithRecurrenceChildren

- (void)addRecurrence:(id)a3
{
  v4 = a3;
  v5 = [(CalDAVItemWithRecurrenceChildren *)self recurrences];

  if (!v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
    [(CalDAVItemWithRecurrenceChildren *)self setRecurrences:v6];
  }

  v7 = [(CalDAVItemWithRecurrenceChildren *)self recurrences];
  [v7 addObject:v4];
}

- (id)copyParseRules
{
  v2 = objc_alloc(MEMORY[0x277CBEAC0]);
  v3 = *MEMORY[0x277CFDE90];
  v4 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:1 maximumNumber:0x7FFFFFFFLL nameSpace:*MEMORY[0x277CFDE90] elementName:@"recurrence" objectClass:objc_opt_class() setterMethod:sel_addRecurrence_];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v3, @"recurrence"];
  v6 = [v2 initWithObjectsAndKeys:{v4, v5, 0}];

  return v6;
}

@end