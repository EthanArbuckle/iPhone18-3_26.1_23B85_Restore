@interface CalDAVSupportedCalendarComponentSet
- (NSSet)compNames;
- (id)childrenToWrite;
- (id)componentsAsString;
- (id)copyParseRules;
- (id)description;
- (void)addComp:(id)comp;
@end

@implementation CalDAVSupportedCalendarComponentSet

- (id)copyParseRules
{
  v2 = objc_alloc(MEMORY[0x277CBEAC0]);
  v3 = *MEMORY[0x277CFDDC0];
  v4 = *MEMORY[0x277CFDEE0];
  v5 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:0x7FFFFFFFLL nameSpace:*MEMORY[0x277CFDDC0] elementName:*MEMORY[0x277CFDEE0] objectClass:objc_opt_class() setterMethod:sel_addComp_];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v3, v4];
  v7 = [v2 initWithObjectsAndKeys:{v5, v6, 0}];

  return v7;
}

- (id)componentsAsString
{
  compNames = [(CalDAVSupportedCalendarComponentSet *)self compNames];
  allObjects = [compNames allObjects];
  v4 = [allObjects sortedArrayUsingSelector:sel_compare_];
  v5 = [v4 componentsJoinedByString:@"+"];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@ %p: ", v5, self];

  componentsAsString = [(CalDAVSupportedCalendarComponentSet *)self componentsAsString];
  [v6 appendFormat:@"SUPPORTED COMPONENTS: %@", componentsAsString];

  return v6;
}

- (void)addComp:(id)comp
{
  compCopy = comp;
  comps = self->_comps;
  v8 = compCopy;
  if (!comps)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_comps;
    self->_comps = v6;

    compCopy = v8;
    comps = self->_comps;
  }

  [(NSMutableSet *)comps addObject:compCopy];
}

- (id)childrenToWrite
{
  comps = [(CalDAVSupportedCalendarComponentSet *)self comps];
  allObjects = [comps allObjects];
  extraChildItems = [(CoreDAVItem *)self extraChildItems];
  v6 = [allObjects arrayByAddingObjectsFromArray:extraChildItems];

  return v6;
}

- (NSSet)compNames
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  comps = [(CalDAVSupportedCalendarComponentSet *)self comps];
  v5 = [v3 initWithCapacity:{objc_msgSend(comps, "count")}];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  comps2 = [(CalDAVSupportedCalendarComponentSet *)self comps];
  v7 = [comps2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(comps2);
        }

        nameAttribute = [*(*(&v14 + 1) + 8 * i) nameAttribute];
        if (nameAttribute)
        {
          [v5 addObject:nameAttribute];
        }
      }

      v8 = [comps2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

@end