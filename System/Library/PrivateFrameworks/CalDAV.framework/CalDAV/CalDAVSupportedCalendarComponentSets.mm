@interface CalDAVSupportedCalendarComponentSets
+ (BOOL)allowedCalendars:(id)calendars contains:(id)contains;
- (id)childrenToWrite;
- (id)componentsAsString;
- (id)copyParseRules;
- (id)description;
- (void)addCompSet:(id)set;
@end

@implementation CalDAVSupportedCalendarComponentSets

- (id)copyParseRules
{
  v2 = objc_alloc(MEMORY[0x277CBEAC0]);
  v3 = *MEMORY[0x277CFDDC0];
  v4 = *MEMORY[0x277CFE028];
  v5 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:0x7FFFFFFFLL nameSpace:*MEMORY[0x277CFDDC0] elementName:*MEMORY[0x277CFE028] objectClass:objc_opt_class() setterMethod:sel_addCompSet_];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v3, v4];
  v7 = [v2 initWithObjectsAndKeys:{v5, v6, 0}];

  return v7;
}

- (id)componentsAsString
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(NSMutableSet *)self->_componentSets count])
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableSet count](self->_componentSets, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = self->_componentSets;
    v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          componentsAsString = [*(*(&v14 + 1) + 8 * i) componentsAsString];
          [v3 addObject:componentsAsString];
        }

        v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    v10 = [v3 sortedArrayUsingSelector:sel_compare_];
    v11 = [v10 componentsJoinedByString:{@", "}];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@ %p: ", v5, self];

  componentsAsString = [(CalDAVSupportedCalendarComponentSets *)self componentsAsString];
  [v6 appendFormat:@"ALLOWED COMPONENTS: %@", componentsAsString];

  return v6;
}

+ (BOOL)allowedCalendars:(id)calendars contains:(id)contains
{
  v21 = *MEMORY[0x277D85DE8];
  calendarsCopy = calendars;
  containsCopy = contains;
  if ([calendarsCopy length])
  {
    if ([calendarsCopy isEqualToString:@"kCalDAVDoesNotSupportCalendarCreation"])
    {
      v7 = 0;
    }

    else
    {
      [calendarsCopy componentsSeparatedByString:{@", "}];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = v19 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v16 + 1) + 8 * i);
            if ([v13 isEqualToString:{containsCopy, v16}] & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", @"*"))
            {
              v7 = 1;
              goto LABEL_17;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
          v7 = 0;
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v7 = 0;
      }

LABEL_17:
    }
  }

  else
  {
    v7 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)addCompSet:(id)set
{
  setCopy = set;
  componentSets = self->_componentSets;
  v8 = setCopy;
  if (!componentSets)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_componentSets;
    self->_componentSets = v6;

    setCopy = v8;
    componentSets = self->_componentSets;
  }

  [(NSMutableSet *)componentSets addObject:setCopy];
}

- (id)childrenToWrite
{
  allObjects = [(NSMutableSet *)self->_componentSets allObjects];
  extraChildItems = [(CoreDAVItem *)self extraChildItems];
  v5 = [allObjects arrayByAddingObjectsFromArray:extraChildItems];

  return v5;
}

@end