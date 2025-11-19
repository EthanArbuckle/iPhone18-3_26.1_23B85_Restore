@interface CRKTable
+ (CRKTable)tableWithHeaders:(id)a3 keyPaths:(id)a4 objects:(id)a5;
+ (id)parsableTableWithKeyValuePairs:(id)a3;
- (CRKTable)initWithEntries:(id)a3;
- (NSString)stringValue;
- (id)columnLengths;
- (unint64_t)lengthOfLongestObjectInColumn:(unint64_t)a3;
- (void)stringValue;
@end

@implementation CRKTable

+ (CRKTable)tableWithHeaders:(id)a3 keyPaths:(id)a4 objects:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [[CRKDictionaryRowTableEntries alloc] initWithDictionaryObjects:v9 keys:v8];
  if (v7)
  {
    v11 = [CRKTableEntriesWithRowSpacer alloc];
    v12 = [[CRKRepeatedCharacterTableEntry alloc] initWithCharacter:45];
    v22 = [(CRKTableEntriesWithRowSpacer *)v11 initWithOrigin:v10 index:0 spacerEntry:v12];

    v13 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = v7;
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [[CRKRightPaddingTableEntry alloc] initWithObject:*(*(&v23 + 1) + 8 * i)];
          [v13 addObject:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v16);
    }

    v10 = [[CRKTableEntriesWithAddedRow alloc] initWithOrigin:v22 index:0 entries:v13];
  }

  v20 = [objc_alloc(objc_opt_class()) initWithEntries:v10];

  return v20;
}

+ (id)parsableTableWithKeyValuePairs:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 valueForKey:@"value"];
  v5 = [[CRKListTableEntries alloc] initWithArray:v4];
  v6 = [CRKTableEntriesWithColumnSpacer alloc];
  v7 = [[CRKRightPaddingTableEntry alloc] initWithObject:@"\t"];
  v8 = [(CRKTableEntriesWithColumnSpacer *)v6 initWithOrigin:v5 index:0 spacerEntry:v7];

  v9 = [v3 valueForKey:@"key"];
  v10 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [[CRKRightPaddingTableEntry alloc] initWithObject:*(*(&v23 + 1) + 8 * i)];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  v17 = [[CRKTableEntriesWithAddedColumn alloc] initWithOrigin:v8 index:0 entries:v10];
  v18 = [CRKTableEntriesWithColumnSpacer alloc];
  v19 = [[CRKRightPaddingTableEntry alloc] initWithObject:@"\t"];
  v20 = [(CRKTableEntriesWithColumnSpacer *)v18 initWithOrigin:v17 index:0 spacerEntry:v19];

  v21 = [objc_alloc(objc_opt_class()) initWithEntries:v20];

  return v21;
}

- (CRKTable)initWithEntries:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(CRKTable *)a2 initWithEntries:?];
  }

  v10.receiver = self;
  v10.super_class = CRKTable;
  v7 = [(CRKTable *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->mEntries, a3);
  }

  return v8;
}

- (NSString)stringValue
{
  v3 = objc_opt_new();
  v4 = [(CRKTable *)self columnLengths];
  if ([(CRKTableEntries *)self->mEntries rowCount])
  {
    v5 = 0;
    do
    {
      v6 = objc_opt_new();
      if ([(CRKTableEntries *)self->mEntries columnCount])
      {
        v7 = 0;
        do
        {
          v8 = [(CRKTableEntries *)self->mEntries entryAtRow:v5 column:v7];
          v9 = [v4 objectAtIndexedSubscript:v7];
          v10 = [v9 unsignedIntegerValue];

          v11 = [v8 stringValueWithLength:v10];
          if ([v11 length] != v10)
          {
            [(CRKTable *)v10 stringValue:v11];
          }

          [v6 addObject:v11];

          ++v7;
        }

        while (v7 < [(CRKTableEntries *)self->mEntries columnCount]);
      }

      v12 = [v6 componentsJoinedByString:@" "];
      [v3 addObject:v12];

      ++v5;
    }

    while (v5 < [(CRKTableEntries *)self->mEntries rowCount]);
  }

  v13 = [v3 componentsJoinedByString:@"\n"];

  return v13;
}

- (id)columnLengths
{
  v3 = objc_opt_new();
  if ([(CRKTableEntries *)self->mEntries columnCount])
  {
    v4 = 0;
    do
    {
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKTable lengthOfLongestObjectInColumn:](self, "lengthOfLongestObjectInColumn:", v4)}];
      [v3 addObject:v5];

      ++v4;
    }

    while (v4 < [(CRKTableEntries *)self->mEntries columnCount]);
  }

  return v3;
}

- (unint64_t)lengthOfLongestObjectInColumn:(unint64_t)a3
{
  v5 = 0;
  if ([(CRKTableEntries *)self->mEntries rowCount])
  {
    v6 = 0;
    do
    {
      v7 = [(CRKTableEntries *)self->mEntries entryAtRow:v6 column:a3];
      v8 = [v7 rawStringValue];
      v9 = [v8 length];

      if (v5 <= v9)
      {
        v5 = v9;
      }

      ++v6;
    }

    while (v6 < [(CRKTableEntries *)self->mEntries rowCount]);
  }

  return v5;
}

- (void)initWithEntries:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKTable.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"entries"}];
}

- (void)stringValue
{
  v10 = [MEMORY[0x277CCA890] currentHandler];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a2, "length")}];
  [v10 handleFailureInMethod:a3 object:a4 file:@"CRKTable.m" lineNumber:84 description:{@"Invalid entry width. Required: %@, Found: %@.", v8, v9}];
}

@end