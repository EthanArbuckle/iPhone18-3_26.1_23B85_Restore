@interface ICTable
+ (void)registerWithICCRCoder;
- (BOOL)columnIsEmptyAtIndex:(unint64_t)a3;
- (BOOL)isEmptyAtColumnIdentifiers:(id)a3 rowIdentifiers:(id)a4;
- (BOOL)isEmptyAtColumnIndexes:(id)a3 rowIndexes:(id)a4;
- (BOOL)rowIsEmptyAtIndex:(unint64_t)a3;
- (ICCRTTCompatibleDocument)ttDocument;
- (ICTableCellChangeNotifier)cellChangeNotifier;
- (NSMutableDictionary)columnTextStorages;
- (id)copyIntoNewDocumentWithReplicaID:(id)a3;
- (id)defaultContentAtColumn:(id)a3 row:(id)a4;
- (id)mergeableStringForColumnID:(id)a3 rowID:(id)a4;
- (id)stringForColumnID:(id)a3 rowID:(id)a4;
- (id)stringForColumnIndex:(unint64_t)a3 rowIndex:(unint64_t)a4;
- (id)subtableWithDocument:(id)a3 forSelectionContainingColumnIndices:(id)a4 rowIndices:(id)a5;
- (void)setAttributedString:(id)a3 columnIndex:(unint64_t)a4 rowIndex:(unint64_t)a5;
- (void)undoablyInsertContents:(id)a3 atColumn:(id)a4;
- (void)undoablyRemoveContentsOfColumn:(id)a3;
@end

@implementation ICTable

+ (void)registerWithICCRCoder
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___ICTable;
  objc_msgSendSuper2(&v2, sel_registerWithICCRCoder);
  [ICCRCoder registerClass:objc_opt_class() forType:@"com.apple.notes.ICTable"];
}

- (ICTableCellChangeNotifier)cellChangeNotifier
{
  cellChangeNotifier = self->_cellChangeNotifier;
  if (!cellChangeNotifier)
  {
    v4 = objc_alloc_init(ICTableCellChangeNotifier);
    v5 = self->_cellChangeNotifier;
    self->_cellChangeNotifier = v4;

    cellChangeNotifier = self->_cellChangeNotifier;
  }

  return cellChangeNotifier;
}

- (void)setAttributedString:(id)a3 columnIndex:(unint64_t)a4 rowIndex:(unint64_t)a5
{
  v8 = a3;
  v12 = [(CRTable *)self objectForColumnIndex:a4 rowIndex:a5];
  if (v12)
  {
    [(ICTTMergeableString *)v12 deleteCharactersInRange:0, [(ICTTMergeableString *)v12 length]];
  }

  else
  {
    v9 = [ICTTMergeableAttributedString alloc];
    v10 = [(ICCRObject *)self document];
    v11 = [v10 replica];
    v12 = [(ICTTMergeableString *)v9 initWithReplicaID:v11];

    [(CRTable *)self setObject:v12 columnIndex:a4 rowIndex:a5];
  }

  [(ICTTMergeableString *)v12 insertAttributedString:v8 atIndex:0];
}

- (id)stringForColumnIndex:(unint64_t)a3 rowIndex:(unint64_t)a4
{
  v4 = [(CRTable *)self objectForColumnIndex:a3 rowIndex:a4];
  v5 = [v4 attributedString];

  return v5;
}

- (id)stringForColumnID:(id)a3 rowID:(id)a4
{
  v6 = a4;
  v7 = [(CRTable *)self columnIndexForIdentifier:a3];
  v8 = [(CRTable *)self rowIndexForIdentifier:v6];

  v9 = 0;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL && v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [(ICTable *)self stringForColumnIndex:v7 rowIndex:v8];
  }

  return v9;
}

- (id)mergeableStringForColumnID:(id)a3 rowID:(id)a4
{
  v6 = a4;
  v7 = [(CRTable *)self columnIndexForIdentifier:a3];
  v8 = [(CRTable *)self rowIndexForIdentifier:v6];

  v9 = 0;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL && v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [(CRTable *)self objectForColumnIndex:v7 rowIndex:v8];
    v9 = v10;
    if (v10)
    {
      v11 = [v10 replicaUUID];

      if (!v11)
      {
        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"!(string && !string.replicaUUID)" functionName:"-[ICTable mergeableStringForColumnID:rowID:]" simulateCrash:1 showAlert:0 format:@"invalid nil value for 'string.replicaUUID'"];
      }
    }
  }

  return v9;
}

- (ICCRTTCompatibleDocument)ttDocument
{
  objc_opt_class();
  v3 = [(ICCRObject *)self document];
  v4 = ICDynamicCast();

  return v4;
}

- (id)copyIntoNewDocumentWithReplicaID:(id)a3
{
  v4 = a3;
  v5 = [(ICCRObject *)self document];
  v6 = [v5 copyForReplica:v4];

  return v6;
}

- (BOOL)columnIsEmptyAtIndex:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCAA78] indexSetWithIndex:a3];
  LOBYTE(self) = [(ICTable *)self isEmptyAtColumnIndexes:v4 rowIndexes:0];

  return self;
}

- (BOOL)rowIsEmptyAtIndex:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCAA78] indexSetWithIndex:a3];
  LOBYTE(self) = [(ICTable *)self isEmptyAtColumnIndexes:0 rowIndexes:v4];

  return self;
}

- (BOOL)isEmptyAtColumnIndexes:(id)a3 rowIndexes:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && (v8 = [v6 lastIndex], v8 >= -[CRTable columnCount](self, "columnCount")) || v7 && (v9 = objc_msgSend(v7, "lastIndex"), v9 >= -[CRTable rowCount](self, "rowCount")))
  {
    v10 = 0;
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 1;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __45__ICTable_isEmptyAtColumnIndexes_rowIndexes___block_invoke;
    v12[3] = &unk_278198020;
    v12[4] = &v13;
    [(CRTable *)self enumerateCellObjectsInCellSelectionContainingColumnIndices:v6 rowIndices:v7 copyItems:0 usingBlock:v12];
    v10 = *(v14 + 24);
    _Block_object_dispose(&v13, 8);
  }

  return v10 & 1;
}

uint64_t __45__ICTable_isEmptyAtColumnIndexes_rowIndexes___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if ([a2 length])
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a5 = 1;
  }

  return 0;
}

- (BOOL)isEmptyAtColumnIdentifiers:(id)a3 rowIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(CRTable *)self columnIndexesForIdentifiers:v6];
  }

  else
  {
    v8 = 0;
  }

  if ([v7 count])
  {
    v9 = [(CRTable *)self rowIndexesForIdentifiers:v7];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(ICTable *)self isEmptyAtColumnIndexes:v8 rowIndexes:v9];

  return v10;
}

- (id)subtableWithDocument:(id)a3 forSelectionContainingColumnIndices:(id)a4 rowIndices:(id)a5
{
  v14.receiver = self;
  v14.super_class = ICTable;
  v8 = a3;
  v9 = [(CRTable *)&v14 subtableWithDocument:v8 forSelectionContainingColumnIndices:a4 rowIndices:a5];
  v10 = [v8 sharedTopotextTimestamp];

  v11 = [(ICTable *)self ttDocument];
  v12 = [v11 sharedTopotextTimestamp];
  [v10 mergeWithTimestamp:v12];

  return v9;
}

- (NSMutableDictionary)columnTextStorages
{
  columnTextStorages = self->_columnTextStorages;
  if (!columnTextStorages)
  {
    v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[CRTable columnCount](self, "columnCount")}];
    v5 = self->_columnTextStorages;
    self->_columnTextStorages = v4;

    columnTextStorages = self->_columnTextStorages;
  }

  return columnTextStorages;
}

- (void)undoablyRemoveContentsOfColumn:(id)a3
{
  v4 = a3;
  v5 = [(CRTable *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CRTable *)self delegate];
    [v7 tableWillRemoveColumnID:v4];
  }

  v8.receiver = self;
  v8.super_class = ICTable;
  [(CRTable *)&v8 undoablyRemoveContentsOfColumn:v4];
}

- (void)undoablyInsertContents:(id)a3 atColumn:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = ICTable;
  [(CRTable *)&v10 undoablyInsertContents:a3 atColumn:v6];
  v7 = [(CRTable *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CRTable *)self delegate];
    [v9 tableDidInsertColumnID:v6];
  }
}

- (id)defaultContentAtColumn:(id)a3 row:(id)a4
{
  v5 = [ICTTMergeableAttributedString alloc];
  v6 = [(ICCRObject *)self document];
  v7 = [v6 replica];
  v8 = [(ICTTMergeableString *)v5 initWithReplicaID:v7];

  return v8;
}

@end