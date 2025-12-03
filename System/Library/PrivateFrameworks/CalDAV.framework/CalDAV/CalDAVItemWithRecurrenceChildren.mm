@interface CalDAVItemWithRecurrenceChildren
- (id)copyParseRules;
- (void)addRecurrence:(id)recurrence;
@end

@implementation CalDAVItemWithRecurrenceChildren

- (void)addRecurrence:(id)recurrence
{
  recurrenceCopy = recurrence;
  recurrences = [(CalDAVItemWithRecurrenceChildren *)self recurrences];

  if (!recurrences)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
    [(CalDAVItemWithRecurrenceChildren *)self setRecurrences:v6];
  }

  recurrences2 = [(CalDAVItemWithRecurrenceChildren *)self recurrences];
  [recurrences2 addObject:recurrenceCopy];
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