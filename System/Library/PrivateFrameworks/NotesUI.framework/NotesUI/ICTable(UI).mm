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
  v13 = [a1 columnIndexForIdentifier:a3];
  v14 = [a1 rowIndexForIdentifier:v12];

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
    v15 = [a1 textStorageForCellAtColumnIndex:v13 rowIndex:v14 undoTarget:v10 undoManager:v11];
  }

  return v15;
}

- (ICTableCellTextStorage)textStorageForCellAtColumnIndex:()UI rowIndex:undoTarget:undoManager:
{
  v10 = a5;
  v11 = a6;
  v12 = [a1 documentForCellAtColumnIndex:a3 rowIndex:a4];
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
  v10 = [a1 mergeableStringForColumnID:v8 rowID:v9];
  if (!v10)
  {
    if (a5)
    {
      v11 = [a1 columnIndexForIdentifier:v8];
      v12 = [a1 rowIndexForIdentifier:v9];
      v10 = 0;
      if (v11 != 0x7FFFFFFFFFFFFFFFLL && v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = [a1 documentForCellAtColumnIndex:v11 rowIndex:v12];
        v10 = [a1 mergeableStringForColumnID:v8 rowID:v9];
      }
    }
  }

  return v10;
}

- (id)documentForCellAtColumnIndex:()UI rowIndex:
{
  v6 = a1;
  v7 = [v6 objectForColumnIndex:a3 rowIndex:a4];
  v8 = objc_alloc(MEMORY[0x1E69B78B0]);
  v9 = v8;
  if (v7)
  {
    v10 = [v8 initWithMergeableString:v7];
  }

  else
  {
    v11 = [v6 document];
    v12 = [v11 replica];
    if (v12)
    {
      v10 = [v9 initWithData:0 replicaID:v12];
    }

    else
    {
      v13 = [MEMORY[0x1E696AFB0] UUID];
      v10 = [v9 initWithData:0 replicaID:v13];
    }

    v14 = [v10 mergeableString];
    [v6 setObject:v14 columnIndex:a3 rowIndex:a4];

    v15 = [v6 delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = [v6 delegate];
      [v17 tableDidPopulateCellAtColumnIndex:a3 rowIndex:a4];
    }
  }

  v18 = [v6 ttDocument];
  v19 = [v18 sharedTopotextTimestamp];
  v20 = [v10 mergeableString];
  [v20 setTimestamp:v19];

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
    v17 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, objc_msgSend(a1, "columnCount")}];
  }

  v18 = v17;
  if (v13)
  {
    v19 = v13;
  }

  else
  {
    v19 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, objc_msgSend(a1, "rowCount")}];
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
  v26 = a1;
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
    v5 = [a1 columnTextStorages];
    v6 = [v5 objectForKeyedSubscript:v4];

    if (!v6)
    {
      v7 = [ICTableColumnTextStorage alloc];
      v8 = [a1 document];
      v9 = [v8 replica];
      if (v9)
      {
        v6 = [(ICTableColumnTextStorage *)v7 initWithTable:a1 columnID:v4 replicaID:v9];
      }

      else
      {
        v10 = [MEMORY[0x1E696AFB0] UUID];
        v6 = [(ICTableColumnTextStorage *)v7 initWithTable:a1 columnID:v4 replicaID:v10];
      }

      v11 = [a1 columnTextStorages];
      [v11 setObject:v6 forKey:v4];

      v12 = [a1 delegate];
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        v14 = [a1 delegate];
        [v14 tableDidCreateColumnTextStorage:v6];
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
  [a1 enumerateCellObjectsInCellSelectionContainingColumnIndices:v12 rowIndices:v13 copyItems:0 usingBlock:v22];
  v20 = [v17 copy];

  _Block_object_dispose(v28, 8);

  return v20;
}

@end