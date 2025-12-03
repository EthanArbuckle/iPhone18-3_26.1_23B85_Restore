@interface NSArray(DBAdditions)
- (id)db_filter:()DBAdditions;
- (id)db_firstObjectPassingTest:()DBAdditions;
- (id)db_map:()DBAdditions;
@end

@implementation NSArray(DBAdditions)

- (id)db_firstObjectPassingTest:()DBAdditions
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__7;
  v15 = __Block_byref_object_dispose__7;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__NSArray_DBAdditions__db_firstObjectPassingTest___block_invoke;
  v8[3] = &unk_278F041A8;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [self enumerateObjectsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)db_map:()DBAdditions
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = v4[2](v4, *(*(&v13 + 1) + 8 * i));
        if (v11)
        {
          [v5 addObject:{v11, v13}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)db_filter:()DBAdditions
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34__NSArray_DBAdditions__db_filter___block_invoke;
  v9[3] = &unk_278F041D0;
  v10 = v4;
  v5 = v4;
  v6 = [self indexesOfObjectsPassingTest:v9];
  v7 = [self objectsAtIndexes:v6];

  return v7;
}

@end