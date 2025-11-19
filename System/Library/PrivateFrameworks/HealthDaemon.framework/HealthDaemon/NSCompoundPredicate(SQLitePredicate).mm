@interface NSCompoundPredicate(SQLitePredicate)
- (id)hd_sqlPredicateForSelect;
@end

@implementation NSCompoundPredicate(SQLitePredicate)

- (id)hd_sqlPredicateForSelect
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [a1 subpredicates];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [a1 compoundPredicateType];
    if (!v4)
    {
      v14 = MEMORY[0x277D10B20];
      v15 = [a1 subpredicates];
      v16 = [v15 objectAtIndexedSubscript:0];
      v3 = [v14 negatedPredicate:v16];

      goto LABEL_19;
    }

    v5 = v4;
    v6 = [MEMORY[0x277CBEB18] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [a1 subpredicates];
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v19 + 1) + 8 * i) hd_sqlPredicateForSelect];
          if (v12)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    if (v5 == 2)
    {
      v13 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v6];
      goto LABEL_17;
    }

    if (v5 == 1)
    {
      v13 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v6];
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