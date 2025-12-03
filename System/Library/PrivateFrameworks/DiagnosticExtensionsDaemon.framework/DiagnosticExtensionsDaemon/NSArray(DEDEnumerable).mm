@interface NSArray(DEDEnumerable)
- (id)ded_findWithBlock:()DEDEnumerable;
- (id)ded_mapWithBlock:()DEDEnumerable;
- (id)ded_rejectItemsPassingTest:()DEDEnumerable;
- (id)ded_selectItemsPassingTest:()DEDEnumerable;
@end

@implementation NSArray(DEDEnumerable)

- (id)ded_mapWithBlock:()DEDEnumerable
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __43__NSArray_DEDEnumerable__ded_mapWithBlock___block_invoke;
  v13 = &unk_278F663D8;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [self enumerateObjectsUsingBlock:&v10];
  v8 = [MEMORY[0x277CBEA60] arrayWithArray:{v6, v10, v11, v12, v13}];

  return v8;
}

- (id)ded_selectItemsPassingTest:()DEDEnumerable
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (v4[2](v4, v11))
        {
          [v5 addObject:{v11, v15}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [MEMORY[0x277CBEA60] arrayWithArray:v5];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)ded_rejectItemsPassingTest:()DEDEnumerable
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ((v4[2](v4, v11) & 1) == 0)
        {
          [v5 addObject:{v11, v15}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [MEMORY[0x277CBEA60] arrayWithArray:v5];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)ded_findWithBlock:()DEDEnumerable
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__NSArray_DEDEnumerable__ded_findWithBlock___block_invoke;
  v9[3] = &unk_278F66400;
  v5 = v4;
  v10 = v5;
  v6 = [self indexOfObjectPassingTest:v9];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [self objectAtIndex:v6];
  }

  return v7;
}

@end