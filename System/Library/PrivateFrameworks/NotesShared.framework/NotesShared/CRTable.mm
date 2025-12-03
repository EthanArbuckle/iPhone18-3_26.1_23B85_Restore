@interface CRTable
+ (id)CRProperties;
+ (void)registerWithICCRCoder;
- (BOOL)containsColumn:(id)column;
- (BOOL)containsRow:(id)row;
- (BOOL)isEqual:(id)equal;
- (BOOL)isRightToLeft;
- (BOOL)wantsUndoCommands;
- (CRTable)initWithDocument:(id)document columnDirection:(id)direction;
- (CRTable)initWithDocument:(id)document columnDirection:(id)direction crColumns:(id)columns crRows:(id)rows cellColumns:(id)cellColumns;
- (CRTable)initWithDocument:(id)document isRightToLeft:(BOOL)left;
- (CRTable)initWithIdentity:(id)identity fields:(id)fields;
- (ICCRDictionary)cellColumns;
- (ICCRTombstoneOrderedSet)crColumns;
- (ICCRTombstoneOrderedSet)crRows;
- (ICCRUndoDelegate)delegate;
- (NSString)columnDirection;
- (id)columnIndexesForIdentifiers:(id)identifiers;
- (id)columnsIntersectingWithColumns:(id)columns;
- (id)crTableColumnDirection;
- (id)identifierForColumnAtIndex:(unint64_t)index;
- (id)identifierForRowAtIndex:(unint64_t)index;
- (id)identifiersForColumnIndexes:(id)indexes;
- (id)identifiersForRowIndexes:(id)indexes;
- (id)insertColumnAtIndex:(unint64_t)index;
- (id)insertColumns:(unint64_t)columns atIndex:(unint64_t)index;
- (id)insertRowAtIndex:(unint64_t)index;
- (id)insertRows:(unint64_t)rows atIndex:(unint64_t)index;
- (id)objectForColumnID:(id)d rowID:(id)iD;
- (id)objectForColumnIndex:(unint64_t)index rowIndex:(unint64_t)rowIndex;
- (id)rowIndexesForIdentifiers:(id)identifiers;
- (id)rowsIntersectingWithRows:(id)rows;
- (id)subtableWithDocument:(id)document forSelectionContainingColumnIndices:(id)indices rowIndices:(id)rowIndices;
- (unint64_t)columnCount;
- (unint64_t)columnIndexForIdentifier:(id)identifier;
- (unint64_t)countOfPopulatedCells;
- (unint64_t)hash;
- (unint64_t)rowCount;
- (unint64_t)rowIndexForIdentifier:(id)identifier;
- (void)addUndoCommandsForObject:(id)object block:(id)block;
- (void)enumerateCellObjectsInCellSelectionContainingColumnIndices:(id)indices rowIndices:(id)rowIndices copyItems:(BOOL)items usingBlock:(id)block;
- (void)enumerateColumnsWithBlock:(id)block;
- (void)enumerateRowsWithBlock:(id)block;
- (void)moveColumnAtIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)moveRowAtIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)removeColumnAtIndex:(unint64_t)index;
- (void)removeRowAtIndex:(unint64_t)index;
- (void)reverseColumnDirection;
- (void)setColumnDirection:(id)direction;
- (void)setObject:(id)object columnID:(id)d rowID:(id)iD;
- (void)setObject:(id)object columnIndex:(unint64_t)index rowIndex:(unint64_t)rowIndex;
- (void)undoablyInsertContents:(id)contents atColumn:(id)column;
- (void)undoablyInsertContents:(id)contents atRow:(id)row;
- (void)undoablyRemoveContentsOfColumn:(id)column;
- (void)undoablyRemoveContentsOfRow:(id)row;
@end

@implementation CRTable

+ (void)registerWithICCRCoder
{
  v2 = objc_opt_class();

  [ICCRCoder registerClass:v2 forType:@"com.apple.notes.CRTable"];
}

- (CRTable)initWithDocument:(id)document isRightToLeft:(BOOL)left
{
  if (left)
  {
    v4 = @"CRTableColumnDirectionRightToLeft";
  }

  else
  {
    v4 = @"CRTableColumnDirectionLeftToRight";
  }

  return [(CRTable *)self initWithDocument:document columnDirection:v4];
}

- (CRTable)initWithDocument:(id)document columnDirection:(id)direction
{
  directionCopy = direction;
  documentCopy = document;
  v8 = [[ICCRRegisterLatest alloc] initWithContents:directionCopy document:documentCopy];

  v9 = [[ICCRTombstoneOrderedSet alloc] initWithDocument:documentCopy];
  v10 = [[ICCRTombstoneOrderedSet alloc] initWithDocument:documentCopy];
  v11 = [[ICCRDictionary alloc] initWithDocument:documentCopy];
  v12 = [(CRTable *)self initWithDocument:documentCopy columnDirection:v8 crColumns:v9 crRows:v10 cellColumns:v11];

  return v12;
}

- (CRTable)initWithDocument:(id)document columnDirection:(id)direction crColumns:(id)columns crRows:(id)rows cellColumns:(id)cellColumns
{
  directionCopy = direction;
  columnsCopy = columns;
  rowsCopy = rows;
  cellColumnsCopy = cellColumns;
  v16 = MEMORY[0x277CCAD78];
  documentCopy = document;
  tTZero = [v16 TTZero];
  v21.receiver = self;
  v21.super_class = CRTable;
  v19 = [(ICCRObject *)&v21 initWithDocument:documentCopy identity:tTZero];

  if (v19)
  {
    [(ICCRObject *)v19 setFieldKey:@"crTableColumnDirection" value:directionCopy];
    [columnsCopy setDelegate:v19];
    [(ICCRObject *)v19 setFieldKey:@"crColumns" value:columnsCopy];
    [rowsCopy setDelegate:v19];
    [(ICCRObject *)v19 setFieldKey:@"crRows" value:rowsCopy];
    [(ICCRObject *)v19 setFieldKey:@"cellColumns" value:cellColumnsCopy];
  }

  return v19;
}

- (CRTable)initWithIdentity:(id)identity fields:(id)fields
{
  v13.receiver = self;
  v13.super_class = CRTable;
  v4 = [(ICCRObject *)&v13 initWithIdentity:identity fields:fields];
  v5 = v4;
  if (v4)
  {
    crColumns = [(CRTable *)v4 crColumns];
    [crColumns setDelegate:v5];

    crRows = [(CRTable *)v5 crRows];
    [crRows setDelegate:v5];

    crTableColumnDirection = [(CRTable *)v5 crTableColumnDirection];

    if (!crTableColumnDirection)
    {
      v9 = [ICCRRegisterLatest alloc];
      document = [(ICCRObject *)v5 document];
      v11 = [(ICCRRegisterLatest *)v9 initWithContents:@"CRTableColumnDirectionLeftToRight" document:document];
      [(ICCRObject *)v5 setFieldKey:@"crTableColumnDirection" value:v11];
    }
  }

  return v5;
}

- (NSString)columnDirection
{
  crTableColumnDirection = [(CRTable *)self crTableColumnDirection];
  contents = [crTableColumnDirection contents];

  return contents;
}

- (void)setColumnDirection:(id)direction
{
  directionCopy = direction;
  if ([(CRTable *)self wantsUndoCommands])
  {
    columnDirection = [(CRTable *)self columnDirection];
    delegate = [(CRTable *)self delegate];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __30__CRTable_setColumnDirection___block_invoke;
    v9[3] = &unk_2781998D8;
    v10 = columnDirection;
    v7 = columnDirection;
    [delegate addUndoCommandsForObject:self block:v9];
  }

  crTableColumnDirection = [(CRTable *)self crTableColumnDirection];
  [crTableColumnDirection setContents:directionCopy];
}

- (id)crTableColumnDirection
{
  objc_opt_class();
  fields = [(ICCRObject *)self fields];
  v4 = [fields objectForKeyedSubscript:@"crTableColumnDirection"];
  v5 = ICDynamicCast();

  return v5;
}

- (ICCRTombstoneOrderedSet)crColumns
{
  objc_opt_class();
  fields = [(ICCRObject *)self fields];
  v4 = [fields objectForKeyedSubscript:@"crColumns"];
  v5 = ICDynamicCast();

  return v5;
}

- (ICCRTombstoneOrderedSet)crRows
{
  objc_opt_class();
  fields = [(ICCRObject *)self fields];
  v4 = [fields objectForKeyedSubscript:@"crRows"];
  v5 = ICDynamicCast();

  return v5;
}

- (ICCRDictionary)cellColumns
{
  objc_opt_class();
  fields = [(ICCRObject *)self fields];
  v4 = [fields objectForKeyedSubscript:@"cellColumns"];
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
  crColumns = [(CRTable *)self crColumns];
  v3 = [crColumns count];

  return v3;
}

- (unint64_t)rowCount
{
  crRows = [(CRTable *)self crRows];
  v3 = [crRows count];

  return v3;
}

- (id)columnsIntersectingWithColumns:(id)columns
{
  columnsCopy = columns;
  crColumns = [(CRTable *)self crColumns];
  v6 = MEMORY[0x277CCAC30];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__CRTable_columnsIntersectingWithColumns___block_invoke;
  v11[3] = &unk_278199900;
  v12 = crColumns;
  v7 = crColumns;
  v8 = [v6 predicateWithBlock:v11];
  v9 = [columnsCopy filteredArrayUsingPredicate:v8];

  return v9;
}

- (id)rowsIntersectingWithRows:(id)rows
{
  rowsCopy = rows;
  crRows = [(CRTable *)self crRows];
  v6 = MEMORY[0x277CCAC30];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __36__CRTable_rowsIntersectingWithRows___block_invoke;
  v11[3] = &unk_278199900;
  v12 = crRows;
  v7 = crRows;
  v8 = [v6 predicateWithBlock:v11];
  v9 = [rowsCopy filteredArrayUsingPredicate:v8];

  return v9;
}

- (id)identifierForRowAtIndex:(unint64_t)index
{
  crRows = [(CRTable *)self crRows];
  if ([crRows count] <= index)
  {
    v7 = 0;
  }

  else
  {
    crRows2 = [(CRTable *)self crRows];
    v7 = [crRows2 objectAtIndexedSubscript:index];
  }

  return v7;
}

- (id)identifierForColumnAtIndex:(unint64_t)index
{
  crColumns = [(CRTable *)self crColumns];
  if ([crColumns count] <= index)
  {
    v7 = 0;
  }

  else
  {
    crColumns2 = [(CRTable *)self crColumns];
    v7 = [crColumns2 objectAtIndexedSubscript:index];
  }

  return v7;
}

- (id)identifiersForRowIndexes:(id)indexes
{
  v4 = MEMORY[0x277CBEB18];
  indexesCopy = indexes;
  v6 = [v4 arrayWithCapacity:{objc_msgSend(indexesCopy, "count")}];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __36__CRTable_identifiersForRowIndexes___block_invoke;
  v13 = &unk_278197968;
  v14 = v6;
  selfCopy = self;
  v7 = v6;
  [indexesCopy enumerateIndexesUsingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

void __36__CRTable_identifiersForRowIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifierForRowAtIndex:a2];
  [v2 addObject:v3];
}

- (id)identifiersForColumnIndexes:(id)indexes
{
  v4 = MEMORY[0x277CBEB18];
  indexesCopy = indexes;
  v6 = [v4 arrayWithCapacity:{objc_msgSend(indexesCopy, "count")}];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __39__CRTable_identifiersForColumnIndexes___block_invoke;
  v13 = &unk_278197968;
  v14 = v6;
  selfCopy = self;
  v7 = v6;
  [indexesCopy enumerateIndexesUsingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

void __39__CRTable_identifiersForColumnIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifierForColumnAtIndex:a2];
  [v2 addObject:v3];
}

- (unint64_t)rowIndexForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  crRows = [(CRTable *)self crRows];
  v6 = [crRows indexOfEqualObject:identifierCopy];

  return v6;
}

- (unint64_t)columnIndexForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  crColumns = [(CRTable *)self crColumns];
  v6 = [crColumns indexOfEqualObject:identifierCopy];

  return v6;
}

- (id)rowIndexesForIdentifiers:(id)identifiers
{
  v19 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = identifiersCopy;
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

- (id)columnIndexesForIdentifiers:(id)identifiers
{
  v19 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = identifiersCopy;
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

- (BOOL)containsRow:(id)row
{
  rowCopy = row;
  crRows = [(CRTable *)self crRows];
  v6 = [crRows containsObjectEqualTo:rowCopy];

  return v6;
}

- (BOOL)containsColumn:(id)column
{
  columnCopy = column;
  crColumns = [(CRTable *)self crColumns];
  v6 = [crColumns containsObjectEqualTo:columnCopy];

  return v6;
}

- (id)insertRowAtIndex:(unint64_t)index
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  crRows = [(CRTable *)self crRows];
  [crRows insertObject:uUID atIndex:index];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __28__CRTable_insertRowAtIndex___block_invoke;
  v13[3] = &unk_278199928;
  v14 = dictionary;
  selfCopy = self;
  v8 = uUID;
  v16 = v8;
  v9 = dictionary;
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

- (id)insertColumnAtIndex:(unint64_t)index
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  crColumns = [(CRTable *)self crColumns];
  [crColumns insertObject:uUID atIndex:index];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __31__CRTable_insertColumnAtIndex___block_invoke;
  v13[3] = &unk_278199928;
  v14 = dictionary;
  selfCopy = self;
  v8 = uUID;
  v16 = v8;
  v9 = dictionary;
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

- (id)insertRows:(unint64_t)rows atIndex:(unint64_t)index
{
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
  while (rows)
  {
    v8 = [(CRTable *)self insertRowAtIndex:index];
    [v7 addObject:v8];
    --rows;
  }

  v9 = [v7 copy];

  return v9;
}

- (id)insertColumns:(unint64_t)columns atIndex:(unint64_t)index
{
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
  while (columns)
  {
    v8 = [(CRTable *)self insertColumnAtIndex:index];
    [v7 addObject:v8];
    --columns;
  }

  v9 = [v7 copy];

  return v9;
}

- (void)removeRowAtIndex:(unint64_t)index
{
  crRows = [(CRTable *)self crRows];
  v7 = [crRows objectAtIndexedSubscript:index];

  [(CRTable *)self undoablyRemoveContentsOfRow:v7];
  crRows2 = [(CRTable *)self crRows];
  [crRows2 removeObjectAtIndex:index];
}

- (void)undoablyRemoveContentsOfRow:(id)row
{
  rowCopy = row;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[CRTable columnCount](self, "columnCount")}];
  if ([(CRTable *)self columnCount])
  {
    v6 = 0;
    do
    {
      crColumns = [(CRTable *)self crColumns];
      v8 = [crColumns objectAtIndexedSubscript:v6];

      cellColumns = [(CRTable *)self cellColumns];
      v10 = [cellColumns objectForKeyedSubscript:v8];

      if (v10)
      {
        v11 = [v10 objectForKeyedSubscript:rowCopy];
        [v5 setObject:v11 forKeyedSubscript:v8];

        [v10 removeObjectForKey:rowCopy];
        if (![v10 count])
        {
          cellColumns2 = [(CRTable *)self cellColumns];
          [cellColumns2 removeObjectForKey:v8];
        }
      }

      ++v6;
    }

    while (v6 < [(CRTable *)self columnCount]);
  }

  if ([(CRTable *)self wantsUndoCommands])
  {
    delegate = [(CRTable *)self delegate];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __39__CRTable_undoablyRemoveContentsOfRow___block_invoke;
    v14[3] = &unk_278199950;
    v15 = v5;
    v16 = rowCopy;
    [delegate addUndoCommandsForObject:self block:v14];
  }
}

- (void)undoablyInsertContents:(id)contents atRow:(id)row
{
  rowCopy = row;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__CRTable_undoablyInsertContents_atRow___block_invoke;
  v11[3] = &unk_278199978;
  v11[4] = self;
  v7 = rowCopy;
  v12 = v7;
  [contents enumerateKeysAndObjectsUsingBlock:v11];
  if ([(CRTable *)self wantsUndoCommands])
  {
    delegate = [(CRTable *)self delegate];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __40__CRTable_undoablyInsertContents_atRow___block_invoke_2;
    v9[3] = &unk_2781998D8;
    v10 = v7;
    [delegate addUndoCommandsForObject:self block:v9];
  }
}

- (void)removeColumnAtIndex:(unint64_t)index
{
  crColumns = [(CRTable *)self crColumns];
  v7 = [crColumns objectAtIndexedSubscript:index];

  [(CRTable *)self undoablyRemoveContentsOfColumn:v7];
  crColumns2 = [(CRTable *)self crColumns];
  [crColumns2 removeObjectAtIndex:index];
}

- (void)moveRowAtIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  crRows = [(CRTable *)self crRows];
  [crRows moveObjectFromIndex:index toIndex:toIndex];
}

- (void)moveColumnAtIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  crColumns = [(CRTable *)self crColumns];
  [crColumns moveObjectFromIndex:index toIndex:toIndex];
}

- (void)undoablyRemoveContentsOfColumn:(id)column
{
  columnCopy = column;
  cellColumns = [(CRTable *)self cellColumns];
  v6 = [cellColumns objectForKeyedSubscript:columnCopy];

  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__CRTable_undoablyRemoveContentsOfColumn___block_invoke;
  v14[3] = &unk_2781999A0;
  v8 = v7;
  v15 = v8;
  [v6 enumerateKeysObjectsAndTimestampsUsingBlock:v14];
  cellColumns2 = [(CRTable *)self cellColumns];
  [cellColumns2 removeObjectForKey:columnCopy];

  if ([(CRTable *)self wantsUndoCommands])
  {
    delegate = [(CRTable *)self delegate];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__CRTable_undoablyRemoveContentsOfColumn___block_invoke_2;
    v11[3] = &unk_278199950;
    v12 = v8;
    v13 = columnCopy;
    [delegate addUndoCommandsForObject:self block:v11];
  }
}

- (void)undoablyInsertContents:(id)contents atColumn:(id)column
{
  columnCopy = column;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__CRTable_undoablyInsertContents_atColumn___block_invoke;
  v11[3] = &unk_278199978;
  v11[4] = self;
  v7 = columnCopy;
  v12 = v7;
  [contents enumerateKeysAndObjectsUsingBlock:v11];
  if ([(CRTable *)self wantsUndoCommands])
  {
    delegate = [(CRTable *)self delegate];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __43__CRTable_undoablyInsertContents_atColumn___block_invoke_2;
    v9[3] = &unk_2781998D8;
    v10 = v7;
    [delegate addUndoCommandsForObject:self block:v9];
  }
}

- (BOOL)isRightToLeft
{
  columnDirection = [(CRTable *)self columnDirection];
  v3 = [columnDirection isEqualToString:@"CRTableColumnDirectionRightToLeft"];

  return v3;
}

- (void)reverseColumnDirection
{
  columnDirection = [(CRTable *)self columnDirection];
  if ([columnDirection isEqualToString:@"CRTableColumnDirectionLeftToRight"])
  {
    v3 = @"CRTableColumnDirectionRightToLeft";
  }

  else
  {
    v3 = @"CRTableColumnDirectionLeftToRight";
  }

  [(CRTable *)self setColumnDirection:v3];
}

- (id)objectForColumnIndex:(unint64_t)index rowIndex:(unint64_t)rowIndex
{
  crColumns = [(CRTable *)self crColumns];
  v8 = [crColumns objectAtIndexedSubscript:index];
  crRows = [(CRTable *)self crRows];
  v10 = [crRows objectAtIndexedSubscript:rowIndex];
  v11 = [(CRTable *)self objectForColumnID:v8 rowID:v10];

  return v11;
}

- (id)objectForColumnID:(id)d rowID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  cellColumns = [(CRTable *)self cellColumns];
  v9 = [cellColumns objectForKeyedSubscript:dCopy];

  v10 = [v9 objectForKeyedSubscript:iDCopy];

  return v10;
}

- (void)setObject:(id)object columnIndex:(unint64_t)index rowIndex:(unint64_t)rowIndex
{
  objectCopy = object;
  crColumns = [(CRTable *)self crColumns];
  v9 = [crColumns objectAtIndexedSubscript:index];
  crRows = [(CRTable *)self crRows];
  v11 = [crRows objectAtIndexedSubscript:rowIndex];
  [(CRTable *)self setObject:objectCopy columnID:v9 rowID:v11];
}

- (void)setObject:(id)object columnID:(id)d rowID:(id)iD
{
  objectCopy = object;
  dCopy = d;
  iDCopy = iD;
  cellColumns = [(CRTable *)self cellColumns];
  v11 = [cellColumns objectForKeyedSubscript:dCopy];

  if (!v11)
  {
    v12 = [ICCRDictionary alloc];
    document = [(ICCRObject *)self document];
    v11 = [(ICCRDictionary *)v12 initWithDocument:document];

    cellColumns2 = [(CRTable *)self cellColumns];
    [cellColumns2 setObject:v11 forKey:dCopy];
  }

  [(ICCRDictionary *)v11 setObject:objectCopy forKey:iDCopy];
}

- (void)enumerateColumnsWithBlock:(id)block
{
  blockCopy = block;
  crColumns = [(CRTable *)self crColumns];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__CRTable_enumerateColumnsWithBlock___block_invoke;
  v7[3] = &unk_2781999C8;
  v8 = blockCopy;
  v6 = blockCopy;
  [crColumns enumerateObjectsUsingBlock:v7];
}

- (void)enumerateRowsWithBlock:(id)block
{
  blockCopy = block;
  crRows = [(CRTable *)self crRows];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__CRTable_enumerateRowsWithBlock___block_invoke;
  v7[3] = &unk_2781999C8;
  v8 = blockCopy;
  v6 = blockCopy;
  [crRows enumerateObjectsUsingBlock:v7];
}

- (void)enumerateCellObjectsInCellSelectionContainingColumnIndices:(id)indices rowIndices:(id)rowIndices copyItems:(BOOL)items usingBlock:(id)block
{
  indicesCopy = indices;
  rowIndicesCopy = rowIndices;
  blockCopy = block;
  if (indicesCopy)
  {
    v13 = indicesCopy;
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{0, -[CRTable columnCount](self, "columnCount")}];
  }

  v14 = v13;
  if (rowIndicesCopy)
  {
    v15 = rowIndicesCopy;
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
  selfCopy = self;
  itemsCopy = items;
  v18 = blockCopy;
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

- (id)subtableWithDocument:(id)document forSelectionContainingColumnIndices:(id)indices rowIndices:(id)rowIndices
{
  documentCopy = document;
  indicesCopy = indices;
  rowIndicesCopy = rowIndices;
  if (indicesCopy)
  {
    v11 = indicesCopy;
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{0, -[CRTable columnCount](self, "columnCount")}];
  }

  v12 = v11;
  v32 = rowIndicesCopy;
  v33 = indicesCopy;
  if (rowIndicesCopy)
  {
    v13 = rowIndicesCopy;
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{0, -[CRTable rowCount](self, "rowCount")}];
  }

  v14 = v13;
  v15 = [objc_alloc(objc_opt_class()) initWithDocument:documentCopy isRightToLeft:{-[CRTable isRightToLeft](self, "isRightToLeft")}];
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
      crColumns = [(CRTable *)self crColumns];
      v6 = [crColumns objectAtIndexedSubscript:v4];

      cellColumns = [(CRTable *)self cellColumns];
      v8 = [cellColumns objectForKeyedSubscript:v6];

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
  crTableColumnDirection = [(CRTable *)self crTableColumnDirection];
  v4 = [crTableColumnDirection hash];
  crColumns = [(CRTable *)self crColumns];
  v6 = ([crColumns hash] << 8) ^ (v4 << 12);
  crRows = [(CRTable *)self crRows];
  v8 = v6 ^ (16 * [crRows hash]);
  cellColumns = [(CRTable *)self cellColumns];
  v10 = [cellColumns hash];

  return v8 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    crTableColumnDirection = [(CRTable *)self crTableColumnDirection];
    crTableColumnDirection2 = [v5 crTableColumnDirection];
    if ([crTableColumnDirection isEqualContents:crTableColumnDirection2])
    {
      crRows = [(CRTable *)self crRows];
      crRows2 = [v5 crRows];
      if ([crRows isEqual:crRows2])
      {
        crColumns = [(CRTable *)self crColumns];
        crColumns2 = [v5 crColumns];
        if ([crColumns isEqual:crColumns2])
        {
          cellColumns = [(CRTable *)self cellColumns];
          cellColumns2 = [v5 cellColumns];
          v13 = [cellColumns isEqual:cellColumns2];
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

- (void)addUndoCommandsForObject:(id)object block:(id)block
{
  blockCopy = block;
  objectCopy = object;
  crRows = [(CRTable *)self crRows];

  delegate = [(CRTable *)self delegate];
  if (crRows == objectCopy)
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
  v10[4] = blockCopy;
  v12 = blockCopy;
  [delegate addUndoCommandsForObject:self block:v10];
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
  delegate = [(CRTable *)self delegate];
  wantsUndoCommands = [delegate wantsUndoCommands];

  return wantsUndoCommands;
}

- (ICCRUndoDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end