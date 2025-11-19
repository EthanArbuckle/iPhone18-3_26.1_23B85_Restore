@interface CRTable
+ (id)CRProperties;
+ (void)registerWithICCRCoder;
- (BOOL)containsColumn:(id)a3;
- (BOOL)containsRow:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isRightToLeft;
- (BOOL)wantsUndoCommands;
- (CRTable)initWithDocument:(id)a3 columnDirection:(id)a4;
- (CRTable)initWithDocument:(id)a3 columnDirection:(id)a4 crColumns:(id)a5 crRows:(id)a6 cellColumns:(id)a7;
- (CRTable)initWithDocument:(id)a3 isRightToLeft:(BOOL)a4;
- (CRTable)initWithIdentity:(id)a3 fields:(id)a4;
- (ICCRDictionary)cellColumns;
- (ICCRTombstoneOrderedSet)crColumns;
- (ICCRTombstoneOrderedSet)crRows;
- (ICCRUndoDelegate)delegate;
- (NSString)columnDirection;
- (id)columnIndexesForIdentifiers:(id)a3;
- (id)columnsIntersectingWithColumns:(id)a3;
- (id)crTableColumnDirection;
- (id)identifierForColumnAtIndex:(unint64_t)a3;
- (id)identifierForRowAtIndex:(unint64_t)a3;
- (id)identifiersForColumnIndexes:(id)a3;
- (id)identifiersForRowIndexes:(id)a3;
- (id)insertColumnAtIndex:(unint64_t)a3;
- (id)insertColumns:(unint64_t)a3 atIndex:(unint64_t)a4;
- (id)insertRowAtIndex:(unint64_t)a3;
- (id)insertRows:(unint64_t)a3 atIndex:(unint64_t)a4;
- (id)objectForColumnID:(id)a3 rowID:(id)a4;
- (id)objectForColumnIndex:(unint64_t)a3 rowIndex:(unint64_t)a4;
- (id)rowIndexesForIdentifiers:(id)a3;
- (id)rowsIntersectingWithRows:(id)a3;
- (id)subtableWithDocument:(id)a3 forSelectionContainingColumnIndices:(id)a4 rowIndices:(id)a5;
- (unint64_t)columnCount;
- (unint64_t)columnIndexForIdentifier:(id)a3;
- (unint64_t)countOfPopulatedCells;
- (unint64_t)hash;
- (unint64_t)rowCount;
- (unint64_t)rowIndexForIdentifier:(id)a3;
- (void)addUndoCommandsForObject:(id)a3 block:(id)a4;
- (void)enumerateCellObjectsInCellSelectionContainingColumnIndices:(id)a3 rowIndices:(id)a4 copyItems:(BOOL)a5 usingBlock:(id)a6;
- (void)enumerateColumnsWithBlock:(id)a3;
- (void)enumerateRowsWithBlock:(id)a3;
- (void)moveColumnAtIndex:(unint64_t)a3 toIndex:(unint64_t)a4;
- (void)moveRowAtIndex:(unint64_t)a3 toIndex:(unint64_t)a4;
- (void)removeColumnAtIndex:(unint64_t)a3;
- (void)removeRowAtIndex:(unint64_t)a3;
- (void)reverseColumnDirection;
- (void)setColumnDirection:(id)a3;
- (void)setObject:(id)a3 columnID:(id)a4 rowID:(id)a5;
- (void)setObject:(id)a3 columnIndex:(unint64_t)a4 rowIndex:(unint64_t)a5;
- (void)undoablyInsertContents:(id)a3 atColumn:(id)a4;
- (void)undoablyInsertContents:(id)a3 atRow:(id)a4;
- (void)undoablyRemoveContentsOfColumn:(id)a3;
- (void)undoablyRemoveContentsOfRow:(id)a3;
@end

@implementation CRTable

+ (void)registerWithICCRCoder
{
  v2 = objc_opt_class();

  [ICCRCoder registerClass:v2 forType:@"com.apple.notes.CRTable"];
}

- (CRTable)initWithDocument:(id)a3 isRightToLeft:(BOOL)a4
{
  if (a4)
  {
    v4 = @"CRTableColumnDirectionRightToLeft";
  }

  else
  {
    v4 = @"CRTableColumnDirectionLeftToRight";
  }

  return [(CRTable *)self initWithDocument:a3 columnDirection:v4];
}

- (CRTable)initWithDocument:(id)a3 columnDirection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[ICCRRegisterLatest alloc] initWithContents:v6 document:v7];

  v9 = [[ICCRTombstoneOrderedSet alloc] initWithDocument:v7];
  v10 = [[ICCRTombstoneOrderedSet alloc] initWithDocument:v7];
  v11 = [[ICCRDictionary alloc] initWithDocument:v7];
  v12 = [(CRTable *)self initWithDocument:v7 columnDirection:v8 crColumns:v9 crRows:v10 cellColumns:v11];

  return v12;
}

- (CRTable)initWithDocument:(id)a3 columnDirection:(id)a4 crColumns:(id)a5 crRows:(id)a6 cellColumns:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = MEMORY[0x277CCAD78];
  v17 = a3;
  v18 = [v16 TTZero];
  v21.receiver = self;
  v21.super_class = CRTable;
  v19 = [(ICCRObject *)&v21 initWithDocument:v17 identity:v18];

  if (v19)
  {
    [(ICCRObject *)v19 setFieldKey:@"crTableColumnDirection" value:v12];
    [v13 setDelegate:v19];
    [(ICCRObject *)v19 setFieldKey:@"crColumns" value:v13];
    [v14 setDelegate:v19];
    [(ICCRObject *)v19 setFieldKey:@"crRows" value:v14];
    [(ICCRObject *)v19 setFieldKey:@"cellColumns" value:v15];
  }

  return v19;
}

- (CRTable)initWithIdentity:(id)a3 fields:(id)a4
{
  v13.receiver = self;
  v13.super_class = CRTable;
  v4 = [(ICCRObject *)&v13 initWithIdentity:a3 fields:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(CRTable *)v4 crColumns];
    [v6 setDelegate:v5];

    v7 = [(CRTable *)v5 crRows];
    [v7 setDelegate:v5];

    v8 = [(CRTable *)v5 crTableColumnDirection];

    if (!v8)
    {
      v9 = [ICCRRegisterLatest alloc];
      v10 = [(ICCRObject *)v5 document];
      v11 = [(ICCRRegisterLatest *)v9 initWithContents:@"CRTableColumnDirectionLeftToRight" document:v10];
      [(ICCRObject *)v5 setFieldKey:@"crTableColumnDirection" value:v11];
    }
  }

  return v5;
}

- (NSString)columnDirection
{
  v2 = [(CRTable *)self crTableColumnDirection];
  v3 = [v2 contents];

  return v3;
}

- (void)setColumnDirection:(id)a3
{
  v4 = a3;
  if ([(CRTable *)self wantsUndoCommands])
  {
    v5 = [(CRTable *)self columnDirection];
    v6 = [(CRTable *)self delegate];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __30__CRTable_setColumnDirection___block_invoke;
    v9[3] = &unk_2781998D8;
    v10 = v5;
    v7 = v5;
    [v6 addUndoCommandsForObject:self block:v9];
  }

  v8 = [(CRTable *)self crTableColumnDirection];
  [v8 setContents:v4];
}

- (id)crTableColumnDirection
{
  objc_opt_class();
  v3 = [(ICCRObject *)self fields];
  v4 = [v3 objectForKeyedSubscript:@"crTableColumnDirection"];
  v5 = ICDynamicCast();

  return v5;
}

- (ICCRTombstoneOrderedSet)crColumns
{
  objc_opt_class();
  v3 = [(ICCRObject *)self fields];
  v4 = [v3 objectForKeyedSubscript:@"crColumns"];
  v5 = ICDynamicCast();

  return v5;
}

- (ICCRTombstoneOrderedSet)crRows
{
  objc_opt_class();
  v3 = [(ICCRObject *)self fields];
  v4 = [v3 objectForKeyedSubscript:@"crRows"];
  v5 = ICDynamicCast();

  return v5;
}

- (ICCRDictionary)cellColumns
{
  objc_opt_class();
  v3 = [(ICCRObject *)self fields];
  v4 = [v3 objectForKeyedSubscript:@"cellColumns"];
  v5 = ICDynamicCast();

  return v5;
}

+ (id)CRProperties
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4[0] = @"crTableColumnDirection";
  v4[1] = @"crColumns";
  v5[0] = @"CRTableColumnDirectionLeftToRight";
  v5[1] = @"NONE";
  v4[2] = @"crRows";
  v4[3] = @"cellColumns";
  v5[2] = @"NONE";
  v5[3] = @"NONE";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

- (unint64_t)columnCount
{
  v2 = [(CRTable *)self crColumns];
  v3 = [v2 count];

  return v3;
}

- (unint64_t)rowCount
{
  v2 = [(CRTable *)self crRows];
  v3 = [v2 count];

  return v3;
}

- (id)columnsIntersectingWithColumns:(id)a3
{
  v4 = a3;
  v5 = [(CRTable *)self crColumns];
  v6 = MEMORY[0x277CCAC30];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__CRTable_columnsIntersectingWithColumns___block_invoke;
  v11[3] = &unk_278199900;
  v12 = v5;
  v7 = v5;
  v8 = [v6 predicateWithBlock:v11];
  v9 = [v4 filteredArrayUsingPredicate:v8];

  return v9;
}

- (id)rowsIntersectingWithRows:(id)a3
{
  v4 = a3;
  v5 = [(CRTable *)self crRows];
  v6 = MEMORY[0x277CCAC30];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __36__CRTable_rowsIntersectingWithRows___block_invoke;
  v11[3] = &unk_278199900;
  v12 = v5;
  v7 = v5;
  v8 = [v6 predicateWithBlock:v11];
  v9 = [v4 filteredArrayUsingPredicate:v8];

  return v9;
}

- (id)identifierForRowAtIndex:(unint64_t)a3
{
  v5 = [(CRTable *)self crRows];
  if ([v5 count] <= a3)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(CRTable *)self crRows];
    v7 = [v6 objectAtIndexedSubscript:a3];
  }

  return v7;
}

- (id)identifierForColumnAtIndex:(unint64_t)a3
{
  v5 = [(CRTable *)self crColumns];
  if ([v5 count] <= a3)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(CRTable *)self crColumns];
    v7 = [v6 objectAtIndexedSubscript:a3];
  }

  return v7;
}

- (id)identifiersForRowIndexes:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = [v4 arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __36__CRTable_identifiersForRowIndexes___block_invoke;
  v13 = &unk_278197968;
  v14 = v6;
  v15 = self;
  v7 = v6;
  [v5 enumerateIndexesUsingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

void __36__CRTable_identifiersForRowIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifierForRowAtIndex:a2];
  [v2 addObject:v3];
}

- (id)identifiersForColumnIndexes:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = [v4 arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __39__CRTable_identifiersForColumnIndexes___block_invoke;
  v13 = &unk_278197968;
  v14 = v6;
  v15 = self;
  v7 = v6;
  [v5 enumerateIndexesUsingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

void __39__CRTable_identifiersForColumnIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifierForColumnAtIndex:a2];
  [v2 addObject:v3];
}

- (unint64_t)rowIndexForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CRTable *)self crRows];
  v6 = [v5 indexOfEqualObject:v4];

  return v6;
}

- (unint64_t)columnIndexForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CRTable *)self crColumns];
  v6 = [v5 indexOfEqualObject:v4];

  return v6;
}

- (id)rowIndexesForIdentifiers:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [(CRTable *)self rowIndexForIdentifier:*(*(&v14 + 1) + 8 * i), v14];
        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v5 addIndex:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)columnIndexesForIdentifiers:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [(CRTable *)self columnIndexForIdentifier:*(*(&v14 + 1) + 8 * i), v14];
        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v5 addIndex:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (BOOL)containsRow:(id)a3
{
  v4 = a3;
  v5 = [(CRTable *)self crRows];
  v6 = [v5 containsObjectEqualTo:v4];

  return v6;
}

- (BOOL)containsColumn:(id)a3
{
  v4 = a3;
  v5 = [(CRTable *)self crColumns];
  v6 = [v5 containsObjectEqualTo:v4];

  return v6;
}

- (id)insertRowAtIndex:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [(CRTable *)self crRows];
  [v6 insertObject:v5 atIndex:a3];

  v7 = [MEMORY[0x277CBEB38] dictionary];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __28__CRTable_insertRowAtIndex___block_invoke;
  v13[3] = &unk_278199928;
  v14 = v7;
  v15 = self;
  v8 = v5;
  v16 = v8;
  v9 = v7;
  [(CRTable *)self enumerateColumnsWithBlock:v13];
  [(CRTable *)self undoablyInsertContents:v9 atRow:v8];
  v10 = v16;
  v11 = v8;

  return v8;
}

void __28__CRTable_insertRowAtIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = a2;
  v6 = [v3 defaultContentAtColumn:v5 row:v4];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (id)insertColumnAtIndex:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [(CRTable *)self crColumns];
  [v6 insertObject:v5 atIndex:a3];

  v7 = [MEMORY[0x277CBEB38] dictionary];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __31__CRTable_insertColumnAtIndex___block_invoke;
  v13[3] = &unk_278199928;
  v14 = v7;
  v15 = self;
  v8 = v5;
  v16 = v8;
  v9 = v7;
  [(CRTable *)self enumerateRowsWithBlock:v13];
  [(CRTable *)self undoablyInsertContents:v9 atColumn:v8];
  v10 = v16;
  v11 = v8;

  return v8;
}

void __31__CRTable_insertColumnAtIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = a2;
  v6 = [v3 defaultContentAtColumn:v4 row:v5];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (id)insertRows:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
  while (a3)
  {
    v8 = [(CRTable *)self insertRowAtIndex:a4];
    [v7 addObject:v8];
    --a3;
  }

  v9 = [v7 copy];

  return v9;
}

- (id)insertColumns:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
  while (a3)
  {
    v8 = [(CRTable *)self insertColumnAtIndex:a4];
    [v7 addObject:v8];
    --a3;
  }

  v9 = [v7 copy];

  return v9;
}

- (void)removeRowAtIndex:(unint64_t)a3
{
  v5 = [(CRTable *)self crRows];
  v7 = [v5 objectAtIndexedSubscript:a3];

  [(CRTable *)self undoablyRemoveContentsOfRow:v7];
  v6 = [(CRTable *)self crRows];
  [v6 removeObjectAtIndex:a3];
}

- (void)undoablyRemoveContentsOfRow:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[CRTable columnCount](self, "columnCount")}];
  if ([(CRTable *)self columnCount])
  {
    v6 = 0;
    do
    {
      v7 = [(CRTable *)self crColumns];
      v8 = [v7 objectAtIndexedSubscript:v6];

      v9 = [(CRTable *)self cellColumns];
      v10 = [v9 objectForKeyedSubscript:v8];

      if (v10)
      {
        v11 = [v10 objectForKeyedSubscript:v4];
        [v5 setObject:v11 forKeyedSubscript:v8];

        [v10 removeObjectForKey:v4];
        if (![v10 count])
        {
          v12 = [(CRTable *)self cellColumns];
          [v12 removeObjectForKey:v8];
        }
      }

      ++v6;
    }

    while (v6 < [(CRTable *)self columnCount]);
  }

  if ([(CRTable *)self wantsUndoCommands])
  {
    v13 = [(CRTable *)self delegate];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __39__CRTable_undoablyRemoveContentsOfRow___block_invoke;
    v14[3] = &unk_278199950;
    v15 = v5;
    v16 = v4;
    [v13 addUndoCommandsForObject:self block:v14];
  }
}

- (void)undoablyInsertContents:(id)a3 atRow:(id)a4
{
  v6 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__CRTable_undoablyInsertContents_atRow___block_invoke;
  v11[3] = &unk_278199978;
  v11[4] = self;
  v7 = v6;
  v12 = v7;
  [a3 enumerateKeysAndObjectsUsingBlock:v11];
  if ([(CRTable *)self wantsUndoCommands])
  {
    v8 = [(CRTable *)self delegate];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __40__CRTable_undoablyInsertContents_atRow___block_invoke_2;
    v9[3] = &unk_2781998D8;
    v10 = v7;
    [v8 addUndoCommandsForObject:self block:v9];
  }
}

- (void)removeColumnAtIndex:(unint64_t)a3
{
  v5 = [(CRTable *)self crColumns];
  v7 = [v5 objectAtIndexedSubscript:a3];

  [(CRTable *)self undoablyRemoveContentsOfColumn:v7];
  v6 = [(CRTable *)self crColumns];
  [v6 removeObjectAtIndex:a3];
}

- (void)moveRowAtIndex:(unint64_t)a3 toIndex:(unint64_t)a4
{
  v6 = [(CRTable *)self crRows];
  [v6 moveObjectFromIndex:a3 toIndex:a4];
}

- (void)moveColumnAtIndex:(unint64_t)a3 toIndex:(unint64_t)a4
{
  v6 = [(CRTable *)self crColumns];
  [v6 moveObjectFromIndex:a3 toIndex:a4];
}

- (void)undoablyRemoveContentsOfColumn:(id)a3
{
  v4 = a3;
  v5 = [(CRTable *)self cellColumns];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__CRTable_undoablyRemoveContentsOfColumn___block_invoke;
  v14[3] = &unk_2781999A0;
  v8 = v7;
  v15 = v8;
  [v6 enumerateKeysObjectsAndTimestampsUsingBlock:v14];
  v9 = [(CRTable *)self cellColumns];
  [v9 removeObjectForKey:v4];

  if ([(CRTable *)self wantsUndoCommands])
  {
    v10 = [(CRTable *)self delegate];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__CRTable_undoablyRemoveContentsOfColumn___block_invoke_2;
    v11[3] = &unk_278199950;
    v12 = v8;
    v13 = v4;
    [v10 addUndoCommandsForObject:self block:v11];
  }
}

- (void)undoablyInsertContents:(id)a3 atColumn:(id)a4
{
  v6 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__CRTable_undoablyInsertContents_atColumn___block_invoke;
  v11[3] = &unk_278199978;
  v11[4] = self;
  v7 = v6;
  v12 = v7;
  [a3 enumerateKeysAndObjectsUsingBlock:v11];
  if ([(CRTable *)self wantsUndoCommands])
  {
    v8 = [(CRTable *)self delegate];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __43__CRTable_undoablyInsertContents_atColumn___block_invoke_2;
    v9[3] = &unk_2781998D8;
    v10 = v7;
    [v8 addUndoCommandsForObject:self block:v9];
  }
}

- (BOOL)isRightToLeft
{
  v2 = [(CRTable *)self columnDirection];
  v3 = [v2 isEqualToString:@"CRTableColumnDirectionRightToLeft"];

  return v3;
}

- (void)reverseColumnDirection
{
  v4 = [(CRTable *)self columnDirection];
  if ([v4 isEqualToString:@"CRTableColumnDirectionLeftToRight"])
  {
    v3 = @"CRTableColumnDirectionRightToLeft";
  }

  else
  {
    v3 = @"CRTableColumnDirectionLeftToRight";
  }

  [(CRTable *)self setColumnDirection:v3];
}

- (id)objectForColumnIndex:(unint64_t)a3 rowIndex:(unint64_t)a4
{
  v7 = [(CRTable *)self crColumns];
  v8 = [v7 objectAtIndexedSubscript:a3];
  v9 = [(CRTable *)self crRows];
  v10 = [v9 objectAtIndexedSubscript:a4];
  v11 = [(CRTable *)self objectForColumnID:v8 rowID:v10];

  return v11;
}

- (id)objectForColumnID:(id)a3 rowID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRTable *)self cellColumns];
  v9 = [v8 objectForKeyedSubscript:v7];

  v10 = [v9 objectForKeyedSubscript:v6];

  return v10;
}

- (void)setObject:(id)a3 columnIndex:(unint64_t)a4 rowIndex:(unint64_t)a5
{
  v8 = a3;
  v12 = [(CRTable *)self crColumns];
  v9 = [v12 objectAtIndexedSubscript:a4];
  v10 = [(CRTable *)self crRows];
  v11 = [v10 objectAtIndexedSubscript:a5];
  [(CRTable *)self setObject:v8 columnID:v9 rowID:v11];
}

- (void)setObject:(id)a3 columnID:(id)a4 rowID:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(CRTable *)self cellColumns];
  v11 = [v10 objectForKeyedSubscript:v8];

  if (!v11)
  {
    v12 = [ICCRDictionary alloc];
    v13 = [(ICCRObject *)self document];
    v11 = [(ICCRDictionary *)v12 initWithDocument:v13];

    v14 = [(CRTable *)self cellColumns];
    [v14 setObject:v11 forKey:v8];
  }

  [(ICCRDictionary *)v11 setObject:v15 forKey:v9];
}

- (void)enumerateColumnsWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(CRTable *)self crColumns];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__CRTable_enumerateColumnsWithBlock___block_invoke;
  v7[3] = &unk_2781999C8;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

- (void)enumerateRowsWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(CRTable *)self crRows];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__CRTable_enumerateRowsWithBlock___block_invoke;
  v7[3] = &unk_2781999C8;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

- (void)enumerateCellObjectsInCellSelectionContainingColumnIndices:(id)a3 rowIndices:(id)a4 copyItems:(BOOL)a5 usingBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{0, -[CRTable columnCount](self, "columnCount")}];
  }

  v14 = v13;
  if (v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{0, -[CRTable rowCount](self, "rowCount")}];
  }

  v16 = v15;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __102__CRTable_enumerateCellObjectsInCellSelectionContainingColumnIndices_rowIndices_copyItems_usingBlock___block_invoke;
  v19[3] = &unk_278199A18;
  v17 = v14;
  v23 = v25;
  v20 = v17;
  v21 = self;
  v24 = a5;
  v18 = v12;
  v22 = v18;
  [v16 enumerateIndexesUsingBlock:v19];

  _Block_object_dispose(v25, 8);
}

void __102__CRTable_enumerateCellObjectsInCellSelectionContainingColumnIndices_rowIndices_copyItems_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __102__CRTable_enumerateCellObjectsInCellSelectionContainingColumnIndices_rowIndices_copyItems_usingBlock___block_invoke_2;
  v6[3] = &unk_2781999F0;
  v3 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  v9 = a2;
  v10 = *(a1 + 64);
  v5 = *(a1 + 48);
  v4 = v5;
  v7 = v5;
  v8 = v11;
  [v3 enumerateIndexesUsingBlock:v6];

  _Block_object_dispose(v11, 8);
}

void __102__CRTable_enumerateCellObjectsInCellSelectionContainingColumnIndices_rowIndices_copyItems_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    **(*(*(a1 + 56) + 8) + 24) = 1;
    *a3 = 1;
  }

  else
  {
    v5 = [*(a1 + 32) objectForColumnIndex:a2 rowIndex:*(a1 + 64)];
    v6 = v5;
    if (v5 && *(a1 + 72) == 1)
    {
      v9 = v5;
      if ([v5 conformsToProtocol:&unk_28274F480])
      {
        v7 = [v9 copyWithZone:0];

        v6 = v7;
      }

      else
      {
        v6 = v9;
      }
    }

    v10 = v6;
    v8 = (*(*(a1 + 40) + 16))();
    if (v8)
    {
      [*(a1 + 32) setObject:v8 columnIndex:a2 rowIndex:*(a1 + 64)];
    }
  }
}

- (id)subtableWithDocument:(id)a3 forSelectionContainingColumnIndices:(id)a4 rowIndices:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{0, -[CRTable columnCount](self, "columnCount")}];
  }

  v12 = v11;
  v32 = v10;
  v33 = v9;
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{0, -[CRTable rowCount](self, "rowCount")}];
  }

  v14 = v13;
  v15 = [objc_alloc(objc_opt_class()) initWithDocument:v8 isRightToLeft:{-[CRTable isRightToLeft](self, "isRightToLeft")}];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __79__CRTable_subtableWithDocument_forSelectionContainingColumnIndices_rowIndices___block_invoke;
  v36[3] = &unk_278197968;
  v36[4] = self;
  v16 = v15;
  v37 = v16;
  v31 = v12;
  [v12 enumerateIndexesUsingBlock:v36];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __79__CRTable_subtableWithDocument_forSelectionContainingColumnIndices_rowIndices___block_invoke_2;
  v34[3] = &unk_278197968;
  v34[4] = self;
  v17 = v16;
  v35 = v17;
  [v14 enumerateIndexesUsingBlock:v34];
  if ([v17 columnCount])
  {
    v18 = 0;
    do
    {
      if ([v17 rowCount])
      {
        v19 = 0;
        do
        {
          v20 = [v17 identifierForColumnAtIndex:v18];
          v21 = [(CRTable *)self columnIndexForIdentifier:v20];
          v22 = [v17 identifierForRowAtIndex:v19];
          v23 = [(CRTable *)self objectForColumnIndex:v21 rowIndex:[(CRTable *)self rowIndexForIdentifier:v22]];

          if (v23)
          {
            v24 = ICProtocolCast();
            v25 = v24;
            if (v24)
            {
              v26 = [v24 copyWithZone:0];
            }

            else
            {
              v26 = v23;
            }

            v27 = v26;
            [v17 setObject:v26 columnIndex:v18 rowIndex:v19];
          }

          ++v19;
        }

        while (v19 < [v17 rowCount]);
      }

      ++v18;
    }

    while (v18 < [v17 columnCount]);
  }

  v28 = v35;
  v29 = v17;

  return v17;
}

void __79__CRTable_subtableWithDocument_forSelectionContainingColumnIndices_rowIndices___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) crColumns];
  v7 = [v4 objectAtIndexedSubscript:a2];

  v5 = [*(a1 + 40) crColumns];
  v6 = [*(a1 + 40) crColumns];
  [v5 insertObject:v7 atIndex:{objc_msgSend(v6, "count")}];
}

void __79__CRTable_subtableWithDocument_forSelectionContainingColumnIndices_rowIndices___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) crRows];
  v7 = [v4 objectAtIndexedSubscript:a2];

  v5 = [*(a1 + 40) crRows];
  v6 = [*(a1 + 40) crRows];
  [v5 insertObject:v7 atIndex:{objc_msgSend(v6, "count")}];
}

- (unint64_t)countOfPopulatedCells
{
  v3 = 0;
  if ([(CRTable *)self columnCount])
  {
    v4 = 0;
    do
    {
      v5 = [(CRTable *)self crColumns];
      v6 = [v5 objectAtIndexedSubscript:v4];

      v7 = [(CRTable *)self cellColumns];
      v8 = [v7 objectForKeyedSubscript:v6];

      if (v8)
      {
        v3 += [v8 count];
      }

      ++v4;
    }

    while (v4 < [(CRTable *)self columnCount]);
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(CRTable *)self crTableColumnDirection];
  v4 = [v3 hash];
  v5 = [(CRTable *)self crColumns];
  v6 = ([v5 hash] << 8) ^ (v4 << 12);
  v7 = [(CRTable *)self crRows];
  v8 = v6 ^ (16 * [v7 hash]);
  v9 = [(CRTable *)self cellColumns];
  v10 = [v9 hash];

  return v8 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CRTable *)self crTableColumnDirection];
    v7 = [v5 crTableColumnDirection];
    if ([v6 isEqualContents:v7])
    {
      v8 = [(CRTable *)self crRows];
      v9 = [v5 crRows];
      if ([v8 isEqual:v9])
      {
        v10 = [(CRTable *)self crColumns];
        v11 = [v5 crColumns];
        if ([v10 isEqual:v11])
        {
          v15 = [(CRTable *)self cellColumns];
          v12 = [v5 cellColumns];
          v13 = [v15 isEqual:v12];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)addUndoCommandsForObject:(id)a3 block:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRTable *)self crRows];

  v9 = [(CRTable *)self delegate];
  if (v8 == v7)
  {
    v10 = v14;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v11 = __42__CRTable_addUndoCommandsForObject_block___block_invoke;
  }

  else
  {
    v10 = v13;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v11 = __42__CRTable_addUndoCommandsForObject_block___block_invoke_2;
  }

  v10[2] = v11;
  v10[3] = &unk_278199A40;
  v10[4] = v6;
  v12 = v6;
  [v9 addUndoCommandsForObject:self block:v10];
}

void __42__CRTable_addUndoCommandsForObject_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 crRows];
  (*(v2 + 16))(v2, v3);
}

void __42__CRTable_addUndoCommandsForObject_block___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 crColumns];
  (*(v2 + 16))(v2, v3);
}

- (BOOL)wantsUndoCommands
{
  v2 = [(CRTable *)self delegate];
  v3 = [v2 wantsUndoCommands];

  return v3;
}

- (ICCRUndoDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end