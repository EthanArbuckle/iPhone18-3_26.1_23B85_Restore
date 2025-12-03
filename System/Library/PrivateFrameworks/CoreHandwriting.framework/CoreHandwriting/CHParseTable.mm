@interface CHParseTable
- (CHParseTable)initWithInputLength:(int64_t)length grammarSize:(int64_t)size;
- (id)cellWithLength:(int64_t)length range:(_NSRange)range nonTerminal:(id)terminal;
- (id)cellsByRangeForLength:(int64_t)length;
- (id)cellsOfLength:(int64_t)length;
- (id)startCellsWithLength:(int64_t)length inRange:(_NSRange)range startSymbol:(id)symbol;
- (void)addCell:(id)cell;
- (void)clear:(int64_t)clear;
@end

@implementation CHParseTable

- (CHParseTable)initWithInputLength:(int64_t)length grammarSize:(int64_t)size
{
  lengthCopy = length;
  v8 = objc_msgSend_init(self, a2, length, size, v4, v5);
  v9 = v8;
  if (v8)
  {
    *(v8 + 16) = lengthCopy;
    *(v8 + 24) = size;
    v10 = objc_alloc(MEMORY[0x1E695DF70]);
    v15 = objc_msgSend_initWithCapacity_(v10, v11, lengthCopy, v12, v13, v14);
    table = v9->_table;
    v9->_table = v15;

    if (lengthCopy >= 1)
    {
      do
      {
        v22 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v17, v18, v19, v20, v21);
        objc_msgSend_addObject_(v9->_table, v23, v22, v24, v25, v26);

        --lengthCopy;
      }

      while (lengthCopy);
    }
  }

  return v9;
}

- (void)clear:(int64_t)clear
{
  v11 = objc_msgSend_objectAtIndexedSubscript_(self->_table, a2, clear - 1, v3, v4, v5);
  objc_msgSend_removeAllObjects(v11, v6, v7, v8, v9, v10);
}

- (void)addCell:(id)cell
{
  cellCopy = cell;
  table = self->_table;
  v50 = cellCopy;
  v11 = objc_msgSend_length(cellCopy, v6, v7, v8, v9, v10);
  v16 = objc_msgSend_objectAtIndexedSubscript_(table, v12, v11 - 1, v13, v14, v15);
  v22 = objc_msgSend_inputRange(v50, v17, v18, v19, v20, v21);
  v26 = objc_msgSend_stringForRange_(CHParseTableCell, v23, v22, v23, v24, v25);
  v36 = objc_msgSend_objectForKeyedSubscript_(v16, v27, v26, v28, v29, v30);
  if (!v36)
  {
    v36 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v31, v32, v33, v34, v35);
    objc_msgSend_setObject_forKeyedSubscript_(v16, v37, v36, v26, v38, v39);
  }

  v40 = objc_msgSend_nonTerminal(v50, v31, v32, v33, v34, v35);
  v46 = objc_msgSend_name(v40, v41, v42, v43, v44, v45);
  objc_msgSend_setObject_forKeyedSubscript_(v36, v47, v50, v46, v48, v49);
}

- (id)cellWithLength:(int64_t)length range:(_NSRange)range nonTerminal:(id)terminal
{
  length = range.length;
  location = range.location;
  terminalCopy = terminal;
  v14 = objc_msgSend_objectAtIndexedSubscript_(self->_table, v10, length - 1, v11, v12, v13);
  v18 = objc_msgSend_stringForRange_(CHParseTableCell, v15, location, length, v16, v17);
  v23 = objc_msgSend_objectForKeyedSubscript_(v14, v19, v18, v20, v21, v22);
  v28 = v23;
  if (v23)
  {
    v29 = objc_msgSend_objectForKeyedSubscript_(v23, v24, terminalCopy, v25, v26, v27);
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (id)cellsOfLength:(int64_t)length
{
  v8 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, length, v3, v4, v5);
  v13 = objc_msgSend_objectAtIndexedSubscript_(self->_table, v9, length - 1, v10, v11, v12);
  v19 = objc_msgSend_allValues(v13, v14, v15, v16, v17, v18);

  for (i = 0; i < objc_msgSend_count(v19, v20, v21, v22, v23, v24); ++i)
  {
    v30 = objc_msgSend_objectAtIndexedSubscript_(v19, v26, i, v27, v28, v29);
    v36 = objc_msgSend_allValues(v30, v31, v32, v33, v34, v35);

    objc_msgSend_addObjectsFromArray_(v8, v37, v36, v38, v39, v40);
  }

  return v8;
}

- (id)cellsByRangeForLength:(int64_t)length
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, length, v3, v4, v5);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v13 = objc_msgSend_objectAtIndexedSubscript_(self->_table, v9, length - 1, v10, v11, v12, 0);
  v19 = objc_msgSend_allValues(v13, v14, v15, v16, v17, v18);

  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v36, v40, 16, v21);
  if (v27)
  {
    v28 = *v37;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v37 != v28)
        {
          objc_enumerationMutation(v19);
        }

        v30 = objc_msgSend_allValues(*(*(&v36 + 1) + 8 * i), v22, v23, v24, v25, v26);
        objc_msgSend_addObject_(v8, v31, v30, v32, v33, v34);
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v36, v40, 16, v26);
    }

    while (v27);
  }

  return v8;
}

- (id)startCellsWithLength:(int64_t)length inRange:(_NSRange)range startSymbol:(id)symbol
{
  length = range.length;
  location = range.location;
  symbolCopy = symbol;
  v14 = objc_msgSend_cellsOfLength_(self, v10, length, v11, v12, v13);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_18386C918;
  v27[3] = &unk_1E6DDF178;
  v15 = symbolCopy;
  v28 = v15;
  v29 = location;
  lengthCopy = length;
  v20 = objc_msgSend_indexesOfObjectsPassingTest_(v14, v16, v27, v17, v18, v19);
  v25 = objc_msgSend_objectsAtIndexes_(v14, v21, v20, v22, v23, v24);

  return v25;
}

@end