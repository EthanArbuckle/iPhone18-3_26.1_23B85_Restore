@interface NSCompoundPredicate(SQLitePredicate)
- (id)hd_sqlPredicateForSelect;
@end

@implementation NSCompoundPredicate(SQLitePredicate)

- (id)hd_sqlPredicateForSelect
{
  v24 = *MEMORY[0x277D85DE8];
  subpredicates = [self subpredicates];
  v3 = [subpredicates count];

  if (v3)
  {
    compoundPredicateType = [self compoundPredicateType];
    if (!compoundPredicateType)
    {
      v14 = MEMORY[0x277D10B20];
      subpredicates2 = [self subpredicates];
      v16 = [subpredicates2 objectAtIndexedSubscript:0];
      v3 = [v14 negatedPredicate:v16];

      goto LABEL_19;
    }

    v5 = compoundPredicateType;
    array = [MEMORY[0x277CBEB18] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    subpredicates3 = [self subpredicates];
    v8 = [subpredicates3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(subpredicates3);
          }

          hd_sqlPredicateForSelect = [*(*(&v19 + 1) + 8 * i) hd_sqlPredicateForSelect];
          if (hd_sqlPredicateForSelect)
          {
            [array addObject:hd_sqlPredicateForSelect];
          }
        }

        v9 = [subpredicates3 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    if (v5 == 2)
    {
      v13 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:array];
      goto LABEL_17;
    }

    if (v5 == 1)
    {
      v13 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:array];
LABEL_17:
      v3 = v13;

      goto LABEL_19;
    }

    v3 = 0;
  }

LABEL_19:
  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

@end