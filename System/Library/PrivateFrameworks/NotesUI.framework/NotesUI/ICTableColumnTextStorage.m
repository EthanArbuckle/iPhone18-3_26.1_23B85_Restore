@interface ICTableColumnTextStorage
- (BOOL)wantsTimestampUpdates;
- (ICTable)table;
- (ICTableColumnTextStorage)init;
- (ICTableColumnTextStorage)initWithTable:(id)a3 columnID:(id)a4 replicaID:(id)a5;
- (ICTableUndoHelping)undoHelper;
- (NSArray)populatedRows;
- (_NSRange)characterRangeForRowID:(id)a3;
- (_NSRange)logicalRangeForLocation:(unint64_t)a3;
- (id)editAtIndex:(unint64_t)a3;
- (id)mergeableStringForRowID:(id)a3;
- (id)rowAtIndex:(unint64_t)a3 rowRange:(_NSRange *)a4;
- (id)savedSelectionWithSelectionAffinity:(unint64_t)a3;
- (unint64_t)indexOfRow:(id)a3;
- (unint64_t)indexOfRowAtLocation:(unint64_t)a3;
- (unint64_t)insertionIndexForRow:(id)a3;
- (unint64_t)nextLocationAfterRowLocation:(unint64_t)a3;
- (unint64_t)rowLocationForRowID:(id)a3;
- (unint64_t)rowLocationForRowIndex:(unint64_t)a3;
- (void)beginPreventEditingUpdates;
- (void)breakUndoCoalescing;
- (void)closeUndoGroups;
- (void)edited:(unint64_t)a3 range:(_NSRange)a4 changeInLength:(int64_t)a5;
- (void)endPreventEditingUpdates;
- (void)enumerateEditsInRange:(_NSRange)a3 usingBlock:(id)a4;
- (void)removeRow:(id)a3;
- (void)removeTextForRow:(id)a3;
- (void)resetUndoManager;
- (void)restoreSelection:(id)a3;
- (void)tableCellWasEditedAtColumnID:(id)a3 rowID:(id)a4 edited:(unint64_t)a5 range:(_NSRange)a6 changeInLength:(int64_t)a7;
- (void)textStorage:(id)a3 didProcessEditing:(unint64_t)a4 range:(_NSRange)a5 changeInLength:(int64_t)a6;
- (void)updateStorageForMovedRow:(id)a3;
@end

@implementation ICTableColumnTextStorage

- (ICTableColumnTextStorage)init
{
  [(ICTableColumnTextStorage *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICTableColumnTextStorage)initWithTable:(id)a3 columnID:(id)a4 replicaID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v19.receiver = self;
  v19.super_class = ICTableColumnTextStorage;
  v10 = [(ICTTTextStorage *)&v19 initWithData:0 replicaID:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_table, v8);
    objc_storeStrong(&v11->_columnID, a4);
    v12 = [MEMORY[0x1E695DF70] array];
    rows = v11->_rows;
    v11->_rows = v12;

    v14 = [MEMORY[0x1E695DF90] dictionary];
    mergeableStringDelegates = v11->_mergeableStringDelegates;
    v11->_mergeableStringDelegates = v14;

    v16 = [MEMORY[0x1E696AD50] indexSet];
    rowStartIndexes = v11->_rowStartIndexes;
    v11->_rowStartIndexes = v16;

    [(ICTTTextStorage *)v11 setConvertAttributes:0];
    [(ICTTTextStorage *)v11 setWantsUndoCommands:0];
    [(ICTTTextStorage *)v11 setShouldConvertTablesToTabs:1];
    [(ICTableColumnTextStorage *)v11 setPreventEditingUpdatesCount:0];
  }

  return v11;
}

- (NSArray)populatedRows
{
  v2 = [(ICTableColumnTextStorage *)self rows];
  v3 = [v2 copy];

  return v3;
}

- (_NSRange)characterRangeForRowID:(id)a3
{
  v4 = a3;
  v5 = [(ICTableColumnTextStorage *)self rowLocationForRowID:v4];
  v6 = [(ICTableColumnTextStorage *)self mergeableStringForRowID:v4];

  v7 = [v6 length];
  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (unint64_t)indexOfRow:(id)a3
{
  v4 = [(ICTableColumnTextStorage *)self rowLocationForRowID:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [(ICTableColumnTextStorage *)self indexOfRowAtLocation:v4];
}

- (void)removeTextForRow:(id)a3
{
  v14 = a3;
  v4 = [(ICTableColumnTextStorage *)self rows];
  v5 = [v4 containsObject:v14];

  if (v5)
  {
    v6 = [(ICTableColumnTextStorage *)self rowLocationForRowID:v14];
    v7 = [(ICTableColumnTextStorage *)self rowStartIndexes];
    v8 = [v7 indexGreaterThanIndex:v6];

    v9 = v6;
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [(ICTTTextStorage *)self length];
      if (v6)
      {
        v9 = v6 - 1;
      }

      else
      {
        v9 = 0;
      }
    }

    v10 = [(ICTableColumnTextStorage *)self rows];
    [v10 removeObject:v14];

    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [(ICTableColumnTextStorage *)self rowStartIndexes];
      [v11 removeIndex:v6];

      [(ICTableColumnTextStorage *)self beginPreventEditingUpdates];
      [(ICTableColumnTextStorage *)self deleteCharactersInRange:v9, v8 - v9];
      [(ICTableColumnTextStorage *)self endPreventEditingUpdates];
      v12 = [(ICTableColumnTextStorage *)self rowStartIndexes];
      [v12 shiftIndexesStartingAtIndex:v8 by:v6 - v8];
    }

    v13 = [(ICTableColumnTextStorage *)self mergeableStringDelegates];
    [v13 removeObjectForKey:v14];
  }
}

- (void)removeRow:(id)a3
{
  v7 = a3;
  v4 = [(ICTableColumnTextStorage *)self rows];
  v5 = [v4 containsObject:v7];

  if (v5)
  {
    [(ICTableColumnTextStorage *)self removeTextForRow:v7];
    v6 = [(ICTableColumnTextStorage *)self mergeableStringDelegates];
    [v6 removeObjectForKey:v7];
  }
}

- (void)updateStorageForMovedRow:(id)a3
{
  v6 = a3;
  v4 = [(ICTableColumnTextStorage *)self rows];
  v5 = [v4 containsObject:v6];

  if (v5)
  {
    [(ICTableColumnTextStorage *)self removeTextForRow:v6];
    [(ICTableColumnTextStorage *)self rowLocationForRowID:v6];
  }
}

- (_NSRange)logicalRangeForLocation:(unint64_t)a3
{
  v6 = 0;
  v7 = 0;
  v3 = [(ICTableColumnTextStorage *)self rowAtIndex:a3 rowRange:&v6];
  v4 = v6;
  v5 = v7;
  result.length = v5;
  result.location = v4;
  return result;
}

- (id)mergeableStringForRowID:(id)a3
{
  v4 = a3;
  v5 = [(ICTableColumnTextStorage *)self table];
  v6 = [(ICTableColumnTextStorage *)self columnID];
  v7 = [v5 mergeableStringForColumnID:v6 rowID:v4];

  return v7;
}

- (unint64_t)indexOfRowAtLocation:(unint64_t)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = [(ICTableColumnTextStorage *)self rowStartIndexes];
  v5 = [v4 containsIndex:a3];
  if ((v5 & 1) == 0)
  {
    v5 = [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"[rowStartIndexes containsIndex:rowLocation]" functionName:"-[ICTableColumnTextStorage indexOfRowAtLocation:]" simulateCrash:1 showAlert:0 format:@"rowLocation must be valid"];
  }

  if (a3)
  {
    MEMORY[0x1EEE9AC00](v5);
    v6 = 0;
    v12[0] = 0;
    v12[1] = a3 + 1;
    do
    {
      v7 = [v4 getIndexes:v11 maxCount:64 inIndexRange:v12];
      v6 += v7;
    }

    while (v7 > 0x3F);
    v8 = v7;
    if (!v6)
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"indexOfRowID > 0" functionName:"-[ICTableColumnTextStorage indexOfRowAtLocation:]" simulateCrash:1 showAlert:0 format:@"no indexes found"];
    }

    if ((v6 & 0x3Fu) > v8)
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"indexOfRowID % bufferSize <= numIndexes" functionName:"-[ICTableColumnTextStorage indexOfRowAtLocation:]" simulateCrash:1 showAlert:0 format:@"rowAtIndex: index out of bounds of filled buffer"];
    }

    v9 = v6 - 1;
    if (v11[(v6 - 1) & 0x3F] != a3)
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"indexBuffer[indexOfRowID % bufferSize] == rowLocation" functionName:"-[ICTableColumnTextStorage indexOfRowAtLocation:]" simulateCrash:1 showAlert:0 format:@"expected to find matching row location"];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)rowAtIndex:(unint64_t)a3 rowRange:(_NSRange *)a4
{
  v7 = [(ICTableColumnTextStorage *)self rowStartIndexes];
  if ([v7 count])
  {
    v8 = [v7 indexLessThanOrEqualToIndex:a3];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"rowLocation != NSNotFound" functionName:"-[ICTableColumnTextStorage rowAtIndex:rowRange:]" simulateCrash:1 showAlert:0 format:@"row location should be found"];
    }

    v9 = [(ICTableColumnTextStorage *)self indexOfRowAtLocation:v8];
    v10 = [(ICTableColumnTextStorage *)self rows];
    v11 = [v10 objectAtIndexedSubscript:v9];

    if (a4)
    {
      v12 = [(ICTableColumnTextStorage *)self mergeableStringForRowID:v11];
      v13 = [v12 length];

      a4->location = v8;
      a4->length = v13;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)insertionIndexForRow:(id)a3
{
  v4 = a3;
  v5 = [(ICTableColumnTextStorage *)self rows];
  v6 = [v5 indexOfObject:v4];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(ICTableColumnTextStorage *)self table];
    v8 = [v7 rowIndexForIdentifier:v4];

    v9 = [v5 count];
    if (v8 >= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    v16 = v10;
    if (v10)
    {
      v11 = [v5 objectAtIndexedSubscript:v10 - 1];
      v12 = [(ICTableColumnTextStorage *)self table];
      v13 = [v12 rowIndexForIdentifier:v11];

      if (v13 > v10)
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __49__ICTableColumnTextStorage_insertionIndexForRow___block_invoke;
        v15[3] = &unk_1E8468D70;
        v15[4] = self;
        [v5 ic_indexOfSortedObject:v4 insertionIndex:&v16 usingComparator:v15];
      }

      v6 = v16;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

uint64_t __49__ICTableColumnTextStorage_insertionIndexForRow___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 table];
  v9 = [v8 rowIndexForIdentifier:v7];

  v10 = [*(a1 + 32) table];
  v11 = [v10 rowIndexForIdentifier:v6];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
  v14 = [v12 compare:v13];

  return v14;
}

- (unint64_t)rowLocationForRowID:(id)a3
{
  v4 = a3;
  v5 = [(ICTableColumnTextStorage *)self rows];
  v6 = [v5 indexOfObject:v4];
  v7 = [(ICTableColumnTextStorage *)self mergeableStringForRowID:v4];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__ICTableColumnTextStorage_rowLocationForRowID___block_invoke;
  aBlock[3] = &unk_1E8468D98;
  aBlock[4] = self;
  v8 = v4;
  v35 = v8;
  v9 = v7;
  v36 = v9;
  v10 = _Block_copy(aBlock);
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = [(ICTableColumnTextStorage *)self rowLocationForRowIndex:v6];
    if (!v9)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v11 = [(ICTableColumnTextStorage *)self table];
  v12 = [v11 containsRow:v8];

  if (!v12)
  {
    v20 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v9)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v13 = [(ICTableColumnTextStorage *)self insertionIndexForRow:v8];
  v14 = [v9 attributedString];
  v15 = [v14 mutableCopy];

  v16 = [v15 ic_range];
  v18 = v17;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __48__ICTableColumnTextStorage_rowLocationForRowID___block_invoke_2;
  v32[3] = &unk_1E8468DC0;
  v32[4] = self;
  v19 = v15;
  v33 = v19;
  [v19 enumerateAttributesInRange:v16 options:v18 usingBlock:{0, v32}];
  if (!v19)
  {
    v19 = objc_alloc_init(MEMORY[0x1E696AD40]);
  }

  if (v13 >= [v5 count])
  {
    if (v13 != [v5 count])
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"insertionIndex == rows.count" functionName:"-[ICTableColumnTextStorage rowLocationForRowID:]" simulateCrash:1 showAlert:0 format:@"insertion index should not be greater than count"];
    }

    if (v13)
    {
      v20 = [(ICTTTextStorage *)self length]+ 1;
      v21 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
      [v19 insertAttributedString:v21 atIndex:0];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = [(ICTableColumnTextStorage *)self rowLocationForRowIndex:v13];
    [v19 ic_appendString:@"\n"];
  }

  v22 = [(ICTableColumnTextStorage *)self rows];
  [v22 insertObject:v8 atIndex:v13];

  if (v9)
  {
    v10[2](v10);
  }

  v23 = [v19 length];
  v24 = [(ICTableColumnTextStorage *)self rowStartIndexes];
  [v24 shiftIndexesStartingAtIndex:v20 by:v23];

  v25 = [(ICTableColumnTextStorage *)self rowStartIndexes];
  [v25 addIndex:v20];

  [(ICTableColumnTextStorage *)self beginPreventEditingUpdates];
  v26 = [(ICTTTextStorage *)self length];
  if (v20 >= v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = v20;
  }

  [(ICTableColumnTextStorage *)self insertAttributedString:v19 atIndex:v27];
  [(ICTableColumnTextStorage *)self endPreventEditingUpdates];

  if (v9)
  {
LABEL_22:
    v28 = [(ICTableColumnTextStorage *)self mergeableStringDelegates];
    v29 = [v28 objectForKeyedSubscript:v8];

    if (!v29)
    {
      v10[2](v10);
      if ([(ICTableColumnTextStorage *)self nextLocationAfterRowLocation:v20]== v20 + 1)
      {
        v30 = [(ICTableColumnTextStorage *)self columnID];
        -[ICTableColumnTextStorage tableCellWasEditedAtColumnID:rowID:edited:range:changeInLength:](self, "tableCellWasEditedAtColumnID:rowID:edited:range:changeInLength:", v30, v8, 3, 0, 0, [v9 length]);
      }
    }
  }

LABEL_25:

  return v20;
}

void __48__ICTableColumnTextStorage_rowLocationForRowID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mergeableStringDelegates];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"!self.mergeableStringDelegates[rowID]" functionName:"-[ICTableColumnTextStorage rowLocationForRowID:]_block_invoke" simulateCrash:1 showAlert:0 format:@"Adding a mergeableStringDelegate for a row that already has one."];
  }

  v4 = [ICTableCellMergeableStringDelegate alloc];
  v5 = *(a1 + 32);
  v6 = [v5 columnID];
  v8 = [(ICTableCellMergeableStringDelegate *)v4 initWithTableCellChangeObserver:v5 columnID:v6 rowID:*(a1 + 40)];

  v7 = [*(a1 + 32) mergeableStringDelegates];
  [v7 setObject:v8 forKeyedSubscript:*(a1 + 40)];

  [*(a1 + 48) setDelegate:v8];
}

void __48__ICTableColumnTextStorage_rowLocationForRowID___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 styler];
  v10 = [v9 styleForModelAttributes:v8];
  v13 = [v10 mutableCopy];

  v11 = MEMORY[0x1E69B7618];
  v12 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B7618]];

  [v13 setObject:v12 forKeyedSubscript:*v11];
  [*(a1 + 40) setAttributes:v13 range:{a3, a4}];
}

- (unint64_t)rowLocationForRowIndex:(unint64_t)a3
{
  v3 = a3;
  v14[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = [(ICTableColumnTextStorage *)self rowStartIndexes];
    if ([v5 count] <= v3)
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"index < rowStartIndexes.count" functionName:"-[ICTableColumnTextStorage rowLocationForRowIndex:]" simulateCrash:1 showAlert:0 format:@"row index out of bounds"];
    }

    v6 = [v5 count];
    if (v6 <= v3)
    {

      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v6);
      v7 = [(ICTTTextStorage *)self length];
      v8 = 0;
      v14[0] = 0;
      v14[1] = v7 + 1;
      do
      {
        v9 = [v5 getIndexes:v13 maxCount:64 inIndexRange:v14];
        v8 += v9;
      }

      while (v9 >= 0x40 && v8 <= v3);
      v11 = v3 & 0x3F;
      if (v11 >= v9)
      {
        [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"index % bufferSize < numIndexes" functionName:"-[ICTableColumnTextStorage rowLocationForRowIndex:]" simulateCrash:1 showAlert:0 format:@"index out of bounds of filled buffer"];
      }

      v3 = v13[v11];
    }
  }

  return v3;
}

- (unint64_t)nextLocationAfterRowLocation:(unint64_t)a3
{
  v5 = [(ICTableColumnTextStorage *)self rowStartIndexes];
  v6 = [v5 indexGreaterThanIndex:a3];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return [(ICTTTextStorage *)self length]+ 1;
  }

  return v6;
}

- (void)edited:(unint64_t)a3 range:(_NSRange)a4 changeInLength:(int64_t)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v53.receiver = self;
  v53.super_class = ICTableColumnTextStorage;
  [ICTTTextStorage edited:sel_edited_range_changeInLength_ range:? changeInLength:?];
  if ([(ICTableColumnTextStorage *)self preventEditingUpdates])
  {
    return;
  }

  v39 = v8;
  v52[0] = 0;
  v52[1] = 0;
  v10 = [(ICTableColumnTextStorage *)self rowAtIndex:location rowRange:v52];
  v11 = v52[0];
  if (a5 < 1)
  {
    if ((a5 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

    v12 = [(ICTableColumnTextStorage *)self rowStartIndexes];
    v13 = v11 - a5;
  }

  else
  {
    v12 = [(ICTableColumnTextStorage *)self rowStartIndexes];
    v13 = v11;
  }

  [v12 shiftIndexesStartingAtIndex:v13 + 1 by:a5];

LABEL_6:
  v14 = [(ICTableColumnTextStorage *)self nextLocationAfterRowLocation:v11];
  v15 = [(ICTableColumnTextStorage *)self table];
  v16 = [(ICTableColumnTextStorage *)self columnID];
  v40 = v10;
  v38 = [v15 mergeableStringForColumnID:v16 rowID:v10 createIfNeeded:1];

  v54.length = length + a5;
  v56.length = v14 + ~v11;
  v54.location = location;
  v56.location = v11;
  v17 = NSIntersectionRange(v54, v56);
  v18 = [(ICTTTextStorage *)self attributedSubstringFromRange:v17.location, v17.length];
  v19 = [v18 mutableCopy];

  v20 = [(ICTTTextStorage *)self mergeableString];
  v21 = [v20 attributedString];
  v22 = *MEMORY[0x1E69B7618];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __56__ICTableColumnTextStorage_edited_range_changeInLength___block_invoke;
  v49[3] = &unk_1E8468DE8;
  v51 = v17;
  v23 = v19;
  v50 = v23;
  v24 = v38;
  [v21 enumerateAttribute:v22 inRange:v17.location options:v17.length usingBlock:{0, v49}];

  if (location - v11 >= [v38 length])
  {
    v26 = [v38 length];
    v27 = 0;
  }

  else
  {
    v57.length = [v38 length];
    v55.location = location - v11;
    v55.length = length;
    v57.location = 0;
    v25 = NSIntersectionRange(v55, v57);
    v26 = v25.location;
    v27 = v25.length;
  }

  v28 = objc_alloc(MEMORY[0x1E696AD40]);
  v29 = [v23 string];
  v30 = [v28 initWithString:v29];

  v31 = [v23 ic_range];
  v33 = v32;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __56__ICTableColumnTextStorage_edited_range_changeInLength___block_invoke_2;
  v47[3] = &unk_1E8468DC0;
  v47[4] = self;
  v34 = v30;
  v48 = v34;
  [v23 enumerateAttributesInRange:v31 options:v33 usingBlock:{0, v47}];
  [(ICTableColumnTextStorage *)self beginPreventEditingUpdates];
  if ((v39 & 2) != 0)
  {
    [v38 replaceCharactersInRange:v26 withAttributedString:{v27, v34}];
    v35 = v40;
  }

  else
  {
    v35 = v40;
    if (v39)
    {
      v36 = [v38 length];
      v37 = [v34 length];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __56__ICTableColumnTextStorage_edited_range_changeInLength___block_invoke_3;
      v41[3] = &unk_1E8468E10;
      v43 = 0;
      v44 = v36;
      v45 = v26;
      v46 = v27;
      v42 = v38;
      [v34 enumerateAttributesInRange:0 options:v37 usingBlock:{0, v41}];
    }
  }

  [(ICTableColumnTextStorage *)self endPreventEditingUpdates];
}

void __56__ICTableColumnTextStorage_edited_range_changeInLength___block_invoke(uint64_t a1, void *a2, uint64_t a3, NSUInteger a4)
{
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = a3 - *(a1 + 40);
    v10 = a2;
    v13.location = [v6 ic_range];
    v13.length = v8;
    v12.location = v7;
    v12.length = a4;
    v9 = NSIntersectionRange(v12, v13);
    [*(a1 + 32) addAttribute:*MEMORY[0x1E69B7618] value:v10 range:{v9.location, v9.length}];
  }
}

void __56__ICTableColumnTextStorage_edited_range_changeInLength___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 styler];
  v10 = [v9 modelForStyleAttributes:v8 filterAttributes:0];
  v13 = [v10 mutableCopy];

  v11 = MEMORY[0x1E69B7618];
  v12 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B7618]];

  [v13 setObject:v12 forKeyedSubscript:*v11];
  [*(a1 + 40) setAttributes:v13 range:{a3, a4}];
}

void __56__ICTableColumnTextStorage_edited_range_changeInLength___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, NSUInteger a4)
{
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 40);
  v11 = a2;
  v14.location = v8 + a3;
  v13.location = v9;
  v13.length = v7;
  v14.length = a4;
  v10 = NSIntersectionRange(v13, v14);
  [*(a1 + 32) setAttributes:v11 range:{v10.location, v10.length}];
}

- (void)textStorage:(id)a3 didProcessEditing:(unint64_t)a4 range:(_NSRange)a5 changeInLength:(int64_t)a6
{
  if (self == a3)
  {
    length = a5.length;
    location = a5.location;
    [(ICTableColumnTextStorage *)self setShouldPreventUndoCommands:1, a4];
    objc_opt_class();
    v11 = [(ICTTTextStorage *)self styler];
    v19 = ICDynamicCast();

    v12 = [(ICTTTextStorage *)self string];
    [v12 ic_safeCharacterRangeForRange:{location, length}];
    v14 = v13;

    if (v14 && ![(ICTTTextStorage *)self isEditingTemporaryAttributes])
    {
      [v19 styleText:self inExactRange:location fixModelAttributes:{length, 1}];
    }

    [(ICTableColumnTextStorage *)self setShouldPreventUndoCommands:0];
    v15 = [(ICTableColumnTextStorage *)self rowAtIndex:location rowRange:0];
    v16 = [(ICTableColumnTextStorage *)self table];
    v17 = [v16 cellChangeNotifier];
    v18 = [(ICTableColumnTextStorage *)self columnID];
    [v17 notifyOfChangeAtColumnID:v18 rowID:v15 delta:a6];
  }
}

- (void)beginPreventEditingUpdates
{
  v3 = [(ICTableColumnTextStorage *)self preventEditingUpdatesCount]+ 1;

  [(ICTableColumnTextStorage *)self setPreventEditingUpdatesCount:v3];
}

- (void)endPreventEditingUpdates
{
  if ([(ICTableColumnTextStorage *)self preventEditingUpdatesCount])
  {
    v3 = [(ICTableColumnTextStorage *)self preventEditingUpdatesCount]- 1;

    [(ICTableColumnTextStorage *)self setPreventEditingUpdatesCount:v3];
  }
}

- (void)closeUndoGroups
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(ICTableColumnTextStorage *)self undoHelper];
  v3 = [v2 coalescingUndoGroupForStringDelegate];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [v3 objectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) closeGroup];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [v3 removeAllObjects];
}

- (void)breakUndoCoalescing
{
  v3.receiver = self;
  v3.super_class = ICTableColumnTextStorage;
  [(ICTTTextStorage *)&v3 breakUndoCoalescing];
  [(ICTableColumnTextStorage *)self closeUndoGroups];
}

- (void)resetUndoManager
{
  v3.receiver = self;
  v3.super_class = ICTableColumnTextStorage;
  [(ICTTTextStorage *)&v3 resetUndoManager];
  [(ICTableColumnTextStorage *)self closeUndoGroups];
}

- (id)editAtIndex:(unint64_t)a3
{
  v17 = xmmword_1D4433FC0;
  v5 = [(ICTableColumnTextStorage *)self rowAtIndex:a3 rowRange:&v17];
  v6 = v17;
  if (v17.location == 0x7FFFFFFFFFFFFFFFLL || (a3 >= v17.location ? (v7 = a3 - v17.location >= v17.length) : (v7 = 1), v7))
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = NSStringFromRange(v6);
    v15 = [v13 stringWithFormat:@"editAtIndex expected to find valid row range %@ %lu %@", v14, a3, self];

    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v15 userInfo:0];
    objc_exception_throw(v16);
  }

  v8 = [(ICTableColumnTextStorage *)self table];
  v9 = [(ICTableColumnTextStorage *)self columnID];
  v10 = [v8 mergeableStringForColumnID:v9 rowID:v5];

  v11 = [v10 editAtIndex:a3 - v17.location];

  return v11;
}

- (void)enumerateEditsInRange:(_NSRange)a3 usingBlock:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v18 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [(ICTableColumnTextStorage *)self rows];
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
  obj = v5;
  if (v6)
  {
    v19 = *v27;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v27 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v26 + 1) + 8 * v7);
      v9 = [(ICTableColumnTextStorage *)self characterRangeForRowID:v8];
      v11 = v10;
      v36.location = v9;
      v36.length = v10;
      v12 = NSIntersectionRange(a3, v36);
      if (v12.length)
      {
        v13 = [(ICTableColumnTextStorage *)self table];
        v14 = [(ICTableColumnTextStorage *)self columnID];
        v15 = [v13 mergeableStringForColumnID:v14 rowID:v8];

        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __61__ICTableColumnTextStorage_enumerateEditsInRange_usingBlock___block_invoke;
        v21[3] = &unk_1E8468E38;
        v24 = v9;
        v25 = v11;
        v22 = v18;
        v23 = &v30;
        [v15 enumerateEditsInRange:v12.location - v9 usingBlock:{v12.length, v21}];
        v16 = *(v31 + 24);

        if (v16)
        {
          break;
        }
      }

      if (v6 == ++v7)
      {
        v6 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  _Block_object_dispose(&v30, 8);
}

void __61__ICTableColumnTextStorage_enumerateEditsInRange_usingBlock___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 range];
  v7 = a1[6];
  [v5 range];
  v9 = v8;
  v10 = objc_alloc(MEMORY[0x1E69B78C8]);
  v11 = [v5 timestamp];
  v12 = [v5 replicaID];

  v14 = [v10 initWithTimestamp:v11 replicaID:v12 range:{v6 + v7, v9}];
  v13 = a1[4];
  if (v13)
  {
    (*(v13 + 16))(v13, v14, a3);
  }

  *(*(a1[5] + 8) + 24) = *a3;
}

- (id)savedSelectionWithSelectionAffinity:(unint64_t)a3
{
  v51 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICTableColumnTextStorage savedSelectionWithSelectionAffinity:]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  v4 = [(ICTTTextStorage *)self textViews];
  v5 = [v4 allObjects];

  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v5;
  v36 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v36)
  {
    v32 = *v45;
    do
    {
      v6 = 0;
      do
      {
        if (*v45 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v6;
        v7 = *(*(&v44 + 1) + 8 * v6);
        v8 = [MEMORY[0x1E696AFB0] TTZero];
        v9 = [MEMORY[0x1E695DF70] array];
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v10 = [v7 ic_selectedRanges];
        v11 = [v10 countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v41;
          do
          {
            v14 = 0;
            v15 = v8;
            do
            {
              if (*v41 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v16 = [*(*(&v40 + 1) + 8 * v14) rangeValue];
              v18 = v17;
              v38 = 0;
              v39 = 0;
              v8 = [(ICTableColumnTextStorage *)self rowAtIndex:v16 rowRange:&v38];

              v19 = v39;
              if (v18 > v39)
              {
                [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"selectedRange.length <= cellRange.length" functionName:"-[ICTableColumnTextStorage savedSelectionWithSelectionAffinity:]" simulateCrash:1 showAlert:0 format:@"Selected range is greater than range of the cell"];
                v19 = v39;
              }

              if (v18 >= v19)
              {
                v20 = v19;
              }

              else
              {
                v20 = v18;
              }

              v21 = [MEMORY[0x1E696B098] valueWithRange:{v16 - v38, v20}];
              [v9 addObject:v21];

              ++v14;
              v15 = v8;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v40 objects:v49 count:16];
          }

          while (v12);
        }

        v22 = [(ICTableColumnTextStorage *)self mergeableStringForRowID:v8];
        v23 = [v9 copy];
        v24 = [v22 selectionForCharacterRanges:v23 selectionAffinity:a3];
        v25 = v24;
        if (v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = objc_alloc_init(MEMORY[0x1E69B78A0]);
        }

        v27 = v26;

        [v35 addObject:v27];
        [v34 addObject:v8];
        v28 = [v22 objectsNeedingUpdatedRanges];
        [v28 addObject:v27];

        v6 = v37 + 1;
      }

      while (v37 + 1 != v36);
      v36 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v36);
  }

  v48[0] = obj;
  v48[1] = v35;
  v48[2] = v34;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:3];

  return v29;
}

- (void)restoreSelection:(id)a3
{
  v4 = a3;
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [v4 objectAtIndexedSubscript:1];
  v7 = [v4 objectAtIndexedSubscript:2];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__ICTableColumnTextStorage_restoreSelection___block_invoke;
  v10[3] = &unk_1E8468E60;
  v11 = v7;
  v12 = self;
  v13 = v6;
  v8 = v6;
  v9 = v7;
  [v5 enumerateObjectsUsingBlock:v10];
}

void __45__ICTableColumnTextStorage_restoreSelection___block_invoke(id *a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a1[4] objectAtIndexedSubscript:a3];
  v7 = [a1[5] mergeableStringForRowID:v6];
  if (v7)
  {
    v20 = [a1[6] objectAtIndexedSubscript:a3];
    v8 = [v7 characterRangesForSelection:?];
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v10 = [a1[5] rowLocationForRowID:v6];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v21 + 1) + 8 * i) rangeValue];
          v18 = [MEMORY[0x1E696B098] valueWithRange:{v16 + v10, v17}];
          [v9 addObject:v18];
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    if ([v9 count])
    {
      [v5 setIc_selectedRanges:v9];
    }

    v19 = [v7 objectsNeedingUpdatedRanges];
    [v19 removeObject:v20];
  }
}

- (void)tableCellWasEditedAtColumnID:(id)a3 rowID:(id)a4 edited:(unint64_t)a5 range:(_NSRange)a6 changeInLength:(int64_t)a7
{
  length = a6.length;
  location = a6.location;
  v10 = a5;
  v12 = a4;
  if (![(ICTableColumnTextStorage *)self preventEditingUpdates])
  {
    v13 = [(ICTableColumnTextStorage *)self rowLocationForRowID:v12];
    v24 = v13 + location;
    v14 = [(ICTableColumnTextStorage *)self mergeableStringForRowID:v12];
    v15 = [v14 attributedString];
    v16 = [v15 attributedSubstringFromRange:{location, length + a7}];
    v17 = [v16 mutableCopy];

    v18 = [v17 length];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __91__ICTableColumnTextStorage_tableCellWasEditedAtColumnID_rowID_edited_range_changeInLength___block_invoke;
    v26[3] = &unk_1E8468DC0;
    v26[4] = self;
    v19 = v17;
    v27 = v19;
    [v19 enumerateAttributesInRange:0 options:v18 usingBlock:{0, v26}];
    v20 = [(ICTableColumnTextStorage *)self rowStartIndexes];
    [v20 shiftIndexesStartingAtIndex:v13 - (a7 & (a7 >> 63)) + 1 by:a7];

    [(ICTableColumnTextStorage *)self beginPreventEditingUpdates];
    if ((v10 & 2) != 0)
    {
      v21 = v24;
      [(ICTableTextStorage *)self replaceCharactersInRange:v24 withAttributedString:length, v19];
    }

    else
    {
      v21 = v24;
      if (v10)
      {
        v22 = [v19 length];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __91__ICTableColumnTextStorage_tableCellWasEditedAtColumnID_rowID_edited_range_changeInLength___block_invoke_2;
        v25[3] = &unk_1E8468E88;
        v25[5] = v24;
        v25[6] = length;
        v25[4] = self;
        [v19 enumerateAttributesInRange:0 options:v22 usingBlock:{0, v25}];
      }
    }

    v23 = [(ICTTTextStorage *)self styler];
    [v23 styleText:self inRange:v21 fixModelAttributes:{objc_msgSend(v19, "length"), 0}];

    [(ICTableColumnTextStorage *)self endPreventEditingUpdates];
  }
}

void __91__ICTableColumnTextStorage_tableCellWasEditedAtColumnID_rowID_edited_range_changeInLength___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 styler];
  v10 = [v9 styleForModelAttributes:v8];

  [*(a1 + 40) setAttributes:v10 range:{a3, a4}];
}

void __91__ICTableColumnTextStorage_tableCellWasEditedAtColumnID_rowID_edited_range_changeInLength___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, NSUInteger a4)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = a2;
  v14.location = [v7 ic_range];
  v14.length = v9;
  v13.location = v8 + a3;
  v13.length = a4;
  v10 = NSIntersectionRange(v13, v14);
  [*(a1 + 32) setAttributes:v11 range:{v10.location, v10.length}];
}

- (BOOL)wantsTimestampUpdates
{
  if ([(ICTableColumnTextStorage *)self shouldPreventUndoCommands]|| [(ICTableColumnTextStorage *)self preventEditingUpdates]|| [(ICTTTextStorage *)self isEditingTemporaryAttributes]|| [(ICTTTextStorage *)self disableUndoCoalesceBreaking])
  {
    return 0;
  }

  else
  {
    return ![(ICTTTextStorage *)self isFixing];
  }
}

- (ICTableUndoHelping)undoHelper
{
  WeakRetained = objc_loadWeakRetained(&self->_undoHelper);

  return WeakRetained;
}

- (ICTable)table
{
  WeakRetained = objc_loadWeakRetained(&self->_table);

  return WeakRetained;
}

@end