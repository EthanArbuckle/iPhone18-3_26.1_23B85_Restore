@interface ICTable(UI)
- (ICTableCellTextStorage)textStorageForCellAtColumnIndex:()UI rowIndex:undoTarget:undoManager:;
- (ICTableColumnTextStorage)textStorageForColumn:()UI;
- (id)documentForCellAtColumnIndex:()UI rowIndex:;
- (id)joinedAttributedStringForColumns:()UI rows:deepCopyInlineAttachments:note:parentAttachment:;
- (id)mergeableStringForColumnID:()UI rowID:createIfNeeded:;
- (id)textStorageForCellAtColumnID:()UI rowID:undoTarget:undoManager:;
- (void)enumerateTextStoragesForColumnIndexes:()UI rowIndexes:undoTarget:undoManager:usingBlock:;
@end

@implementation ICTable(UI)

- (id)textStorageForCellAtColumnID:()UI rowID:undoTarget:undoManager:
{
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = [self columnIndexForIdentifier:a3];
  v14 = [self rowIndexForIdentifier:v12];

  if (v13 == 0x7FFFFFFFFFFFFFFFLL || v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ICTable(UI) textStorageForCellAtColumnID:v16 rowID:? undoTarget:? undoManager:?];
    }

    v15 = 0;
  }

  else
  {
    v15 = [self textStorageForCellAtColumnIndex:v13 rowIndex:v14 undoTarget:v10 undoManager:v11];
  }

  return v15;
}

- (ICTableCellTextStorage)textStorageForCellAtColumnIndex:()UI rowIndex:undoTarget:undoManager:
{
  v10 = a5;
  v11 = a6;
  v12 = [self documentForCellAtColumnIndex:a3 rowIndex:a4];
  v13 = [[ICTableCellTextStorage alloc] initWithDocument:v12];
  v14 = v13;
  if (v11)
  {
    [(ICTTTextStorage *)v13 setUndoManager:v11];
  }

  [(ICTTTextStorage *)v14 setOverrideUndoTarget:v10];

  return v14;
}

- (id)mergeableStringForColumnID:()UI rowID:createIfNeeded:
{
  v8 = a3;
  v9 = a4;
  v10 = [self mergeableStringForColumnID:v8 rowID:v9];
  if (!v10)
  {
    if (a5)
    {
      v11 = [self columnIndexForIdentifier:v8];
      v12 = [self rowIndexForIdentifier:v9];
      v10 = 0;
      if (v11 != 0x7FFFFFFFFFFFFFFFLL && v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = [self documentForCellAtColumnIndex:v11 rowIndex:v12];
        v10 = [self mergeableStringForColumnID:v8 rowID:v9];
      }
    }
  }

  return v10;
}

- (id)documentForCellAtColumnIndex:()UI rowIndex:
{
  selfCopy = self;
  v7 = [selfCopy objectForColumnIndex:a3 rowIndex:a4];
  v8 = objc_alloc(MEMORY[0x1E69B78B0]);
  v9 = v8;
  if (v7)
  {
    v10 = [v8 initWithMergeableString:v7];
  }

  else
  {
    document = [selfCopy document];
    replica = [document replica];
    if (replica)
    {
      v10 = [v9 initWithData:0 replicaID:replica];
    }

    else
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      v10 = [v9 initWithData:0 replicaID:uUID];
    }

    mergeableString = [v10 mergeableString];
    [selfCopy setObject:mergeableString columnIndex:a3 rowIndex:a4];

    delegate = [selfCopy delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      delegate2 = [selfCopy delegate];
      [delegate2 tableDidPopulateCellAtColumnIndex:a3 rowIndex:a4];
    }
  }

  ttDocument = [selfCopy ttDocument];
  sharedTopotextTimestamp = [ttDocument sharedTopotextTimestamp];
  mergeableString2 = [v10 mergeableString];
  [mergeableString2 setTimestamp:sharedTopotextTimestamp];

  return v10;
}

- (void)enumerateTextStoragesForColumnIndexes:()UI rowIndexes:undoTarget:undoManager:usingBlock:
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, objc_msgSend(self, "columnCount")}];
  }

  v18 = v17;
  if (v13)
  {
    v19 = v13;
  }

  else
  {
    v19 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, objc_msgSend(self, "rowCount")}];
  }

  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __98__ICTable_UI__enumerateTextStoragesForColumnIndexes_rowIndexes_undoTarget_undoManager_usingBlock___block_invoke;
  v24[3] = &unk_1E8468ED8;
  v20 = v19;
  v30 = v31;
  v25 = v20;
  selfCopy = self;
  v21 = v14;
  v27 = v21;
  v22 = v15;
  v28 = v22;
  v23 = v16;
  v29 = v23;
  [v18 enumerateIndexesUsingBlock:v24];

  _Block_object_dispose(v31, 8);
}

- (ICTableColumnTextStorage)textStorageForColumn:()UI
{
  v4 = a3;
  if (v4)
  {
    columnTextStorages = [self columnTextStorages];
    v6 = [columnTextStorages objectForKeyedSubscript:v4];

    if (!v6)
    {
      v7 = [ICTableColumnTextStorage alloc];
      document = [self document];
      replica = [document replica];
      if (replica)
      {
        v6 = [(ICTableColumnTextStorage *)v7 initWithTable:self columnID:v4 replicaID:replica];
      }

      else
      {
        uUID = [MEMORY[0x1E696AFB0] UUID];
        v6 = [(ICTableColumnTextStorage *)v7 initWithTable:self columnID:v4 replicaID:uUID];
      }

      columnTextStorages2 = [self columnTextStorages];
      [columnTextStorages2 setObject:v6 forKey:v4];

      delegate = [self delegate];
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        delegate2 = [self delegate];
        [delegate2 tableDidCreateColumnTextStorage:v6];
      }
    }
  }

  else
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"columnID" functionName:"-[ICTable(UI) textStorageForColumn:]" simulateCrash:1 showAlert:0 format:@"ColumnID must not be nil."];
    v6 = 0;
  }

  return v6;
}

- (id)joinedAttributedStringForColumns:()UI rows:deepCopyInlineAttachments:note:parentAttachment:
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v28[3] = 0x7FFFFFFFFFFFFFFFLL;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __101__ICTable_UI__joinedAttributedStringForColumns_rows_deepCopyInlineAttachments_note_parentAttachment___block_invoke;
  v22[3] = &unk_1E8468F28;
  v26 = v28;
  v17 = v16;
  v23 = v17;
  v27 = a5;
  v18 = v14;
  v24 = v18;
  v19 = v15;
  v25 = v19;
  [self enumerateCellObjectsInCellSelectionContainingColumnIndices:v12 rowIndices:v13 copyItems:0 usingBlock:v22];
  v20 = [v17 copy];

  _Block_object_dispose(v28, 8);

  return v20;
}

@end