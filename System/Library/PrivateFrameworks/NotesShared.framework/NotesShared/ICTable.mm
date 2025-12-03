@interface ICTable
+ (void)registerWithICCRCoder;
- (BOOL)columnIsEmptyAtIndex:(unint64_t)index;
- (BOOL)isEmptyAtColumnIdentifiers:(id)identifiers rowIdentifiers:(id)rowIdentifiers;
- (BOOL)isEmptyAtColumnIndexes:(id)indexes rowIndexes:(id)rowIndexes;
- (BOOL)rowIsEmptyAtIndex:(unint64_t)index;
- (ICCRTTCompatibleDocument)ttDocument;
- (ICTableCellChangeNotifier)cellChangeNotifier;
- (NSMutableDictionary)columnTextStorages;
- (id)copyIntoNewDocumentWithReplicaID:(id)d;
- (id)defaultContentAtColumn:(id)column row:(id)row;
- (id)mergeableStringForColumnID:(id)d rowID:(id)iD;
- (id)stringForColumnID:(id)d rowID:(id)iD;
- (id)stringForColumnIndex:(unint64_t)index rowIndex:(unint64_t)rowIndex;
- (id)subtableWithDocument:(id)document forSelectionContainingColumnIndices:(id)indices rowIndices:(id)rowIndices;
- (void)setAttributedString:(id)string columnIndex:(unint64_t)index rowIndex:(unint64_t)rowIndex;
- (void)undoablyInsertContents:(id)contents atColumn:(id)column;
- (void)undoablyRemoveContentsOfColumn:(id)column;
@end

@implementation ICTable

+ (void)registerWithICCRCoder
{
  v2.receiver = self;
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

- (void)setAttributedString:(id)string columnIndex:(unint64_t)index rowIndex:(unint64_t)rowIndex
{
  stringCopy = string;
  v12 = [(CRTable *)self objectForColumnIndex:index rowIndex:rowIndex];
  if (v12)
  {
    [(ICTTMergeableString *)v12 deleteCharactersInRange:0, [(ICTTMergeableString *)v12 length]];
  }

  else
  {
    v9 = [ICTTMergeableAttributedString alloc];
    document = [(ICCRObject *)self document];
    replica = [document replica];
    v12 = [(ICTTMergeableString *)v9 initWithReplicaID:replica];

    [(CRTable *)self setObject:v12 columnIndex:index rowIndex:rowIndex];
  }

  [(ICTTMergeableString *)v12 insertAttributedString:stringCopy atIndex:0];
}

- (id)stringForColumnIndex:(unint64_t)index rowIndex:(unint64_t)rowIndex
{
  v4 = [(CRTable *)self objectForColumnIndex:index rowIndex:rowIndex];
  attributedString = [v4 attributedString];

  return attributedString;
}

- (id)stringForColumnID:(id)d rowID:(id)iD
{
  iDCopy = iD;
  v7 = [(CRTable *)self columnIndexForIdentifier:d];
  v8 = [(CRTable *)self rowIndexForIdentifier:iDCopy];

  v9 = 0;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL && v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [(ICTable *)self stringForColumnIndex:v7 rowIndex:v8];
  }

  return v9;
}

- (id)mergeableStringForColumnID:(id)d rowID:(id)iD
{
  iDCopy = iD;
  v7 = [(CRTable *)self columnIndexForIdentifier:d];
  v8 = [(CRTable *)self rowIndexForIdentifier:iDCopy];

  v9 = 0;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL && v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [(CRTable *)self objectForColumnIndex:v7 rowIndex:v8];
    v9 = v10;
    if (v10)
    {
      replicaUUID = [v10 replicaUUID];

      if (!replicaUUID)
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
  document = [(ICCRObject *)self document];
  v4 = ICDynamicCast();

  return v4;
}

- (id)copyIntoNewDocumentWithReplicaID:(id)d
{
  dCopy = d;
  document = [(ICCRObject *)self document];
  v6 = [document copyForReplica:dCopy];

  return v6;
}

- (BOOL)columnIsEmptyAtIndex:(unint64_t)index
{
  v4 = [MEMORY[0x277CCAA78] indexSetWithIndex:index];
  LOBYTE(self) = [(ICTable *)self isEmptyAtColumnIndexes:v4 rowIndexes:0];

  return self;
}

- (BOOL)rowIsEmptyAtIndex:(unint64_t)index
{
  v4 = [MEMORY[0x277CCAA78] indexSetWithIndex:index];
  LOBYTE(self) = [(ICTable *)self isEmptyAtColumnIndexes:0 rowIndexes:v4];

  return self;
}

- (BOOL)isEmptyAtColumnIndexes:(id)indexes rowIndexes:(id)rowIndexes
{
  indexesCopy = indexes;
  rowIndexesCopy = rowIndexes;
  if (indexesCopy && (v8 = [indexesCopy lastIndex], v8 >= -[CRTable columnCount](self, "columnCount")) || rowIndexesCopy && (v9 = objc_msgSend(rowIndexesCopy, "lastIndex"), v9 >= -[CRTable rowCount](self, "rowCount")))
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
    [(CRTable *)self enumerateCellObjectsInCellSelectionContainingColumnIndices:indexesCopy rowIndices:rowIndexesCopy copyItems:0 usingBlock:v12];
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

- (BOOL)isEmptyAtColumnIdentifiers:(id)identifiers rowIdentifiers:(id)rowIdentifiers
{
  identifiersCopy = identifiers;
  rowIdentifiersCopy = rowIdentifiers;
  if ([identifiersCopy count])
  {
    v8 = [(CRTable *)self columnIndexesForIdentifiers:identifiersCopy];
  }

  else
  {
    v8 = 0;
  }

  if ([rowIdentifiersCopy count])
  {
    v9 = [(CRTable *)self rowIndexesForIdentifiers:rowIdentifiersCopy];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(ICTable *)self isEmptyAtColumnIndexes:v8 rowIndexes:v9];

  return v10;
}

- (id)subtableWithDocument:(id)document forSelectionContainingColumnIndices:(id)indices rowIndices:(id)rowIndices
{
  v14.receiver = self;
  v14.super_class = ICTable;
  documentCopy = document;
  v9 = [(CRTable *)&v14 subtableWithDocument:documentCopy forSelectionContainingColumnIndices:indices rowIndices:rowIndices];
  sharedTopotextTimestamp = [documentCopy sharedTopotextTimestamp];

  ttDocument = [(ICTable *)self ttDocument];
  sharedTopotextTimestamp2 = [ttDocument sharedTopotextTimestamp];
  [sharedTopotextTimestamp mergeWithTimestamp:sharedTopotextTimestamp2];

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

- (void)undoablyRemoveContentsOfColumn:(id)column
{
  columnCopy = column;
  delegate = [(CRTable *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CRTable *)self delegate];
    [delegate2 tableWillRemoveColumnID:columnCopy];
  }

  v8.receiver = self;
  v8.super_class = ICTable;
  [(CRTable *)&v8 undoablyRemoveContentsOfColumn:columnCopy];
}

- (void)undoablyInsertContents:(id)contents atColumn:(id)column
{
  columnCopy = column;
  v10.receiver = self;
  v10.super_class = ICTable;
  [(CRTable *)&v10 undoablyInsertContents:contents atColumn:columnCopy];
  delegate = [(CRTable *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(CRTable *)self delegate];
    [delegate2 tableDidInsertColumnID:columnCopy];
  }
}

- (id)defaultContentAtColumn:(id)column row:(id)row
{
  v5 = [ICTTMergeableAttributedString alloc];
  document = [(ICCRObject *)self document];
  replica = [document replica];
  v8 = [(ICTTMergeableString *)v5 initWithReplicaID:replica];

  return v8;
}

@end