@interface ICTableColumnWidthManager
- (ICAvailableTableWidthProviding)delegate;
- (ICTable)table;
- (ICTableColumnWidthManager)initWithTable:(id)a3 delegate:(id)a4;
- (double)calculateIdealWidthOfColumn:(id)a3;
- (double)comfortableColumnWidth;
- (double)comfortableNumberOfColumnsOnscreen;
- (double)widthOfColumn:(id)a3;
- (id)invalidateWidthForColumns:(id)a3;
- (id)recalculateActualWidths;
@end

@implementation ICTableColumnWidthManager

- (ICTableColumnWidthManager)initWithTable:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = ICTableColumnWidthManager;
  v8 = [(ICTableColumnWidthManager *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_table, v6);
    objc_storeWeak(&v9->_delegate, v7);
    v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v6, "columnCount")}];
    cachedIdealColumnWidths = v9->_cachedIdealColumnWidths;
    v9->_cachedIdealColumnWidths = v10;

    v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v6, "columnCount")}];
    cachedActualColumnWidths = v9->_cachedActualColumnWidths;
    v9->_cachedActualColumnWidths = v12;

    v14 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v6, "columnCount")}];
    cachedMinimumColumnWidths = v9->_cachedMinimumColumnWidths;
    v9->_cachedMinimumColumnWidths = v14;

    v16 = objc_alloc_init(ICTextController);
    styler = v9->_styler;
    v9->_styler = v16;

    if (initWithTable_delegate__onceToken != -1)
    {
      [ICTableColumnWidthManager initWithTable:delegate:];
    }
  }

  return v9;
}

void __52__ICTableColumnWidthManager_initWithTable_delegate___block_invoke()
{
  v5[4] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = *MEMORY[0x1E69B79A0];
  v4[0] = *MEMORY[0x1E69B7990];
  v4[1] = v1;
  v5[0] = &unk_1F4FC4278;
  v5[1] = &unk_1F4FC4288;
  v2 = *MEMORY[0x1E69B79A8];
  v4[2] = *MEMORY[0x1E69B7998];
  v4[3] = v2;
  v5[2] = &unk_1F4FC4298;
  v5[3] = &unk_1F4FC3C78;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:4];
  [v0 registerDefaults:v3];
}

- (double)widthOfColumn:(id)a3
{
  v4 = a3;
  v5 = [(ICTableColumnWidthManager *)self cachedActualColumnWidths];
  v6 = [v5 objectForKey:v4];

  v7 = [(ICTableColumnWidthManager *)self table];
  v8 = v7;
  if (v6)
  {
    [v6 doubleValue];
LABEL_5:
    v10 = v9;
    goto LABEL_6;
  }

  v10 = 0.0;
  if ([v7 containsColumn:v4])
  {
    [(ICTableColumnWidthManager *)self calculateIdealWidthOfColumn:v4];
    goto LABEL_5;
  }

LABEL_6:

  return v10;
}

- (double)calculateIdealWidthOfColumn:(id)a3
{
  v4 = a3;
  v5 = [(ICTableColumnWidthManager *)self table];
  if ([v5 containsColumn:v4])
  {
    v6 = [v5 columnIndexForIdentifier:v4];
    v7 = [(ICTableColumnWidthManager *)self styler];
    v8 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v8 doubleForKey:*MEMORY[0x1E69B7990]];
    v10 = v9;

    v11 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v11 doubleForKey:*MEMORY[0x1E69B79A0]];
    v13 = v12;

    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v54 = v13;
    v14 = [MEMORY[0x1E695E000] standardUserDefaults];
    v15 = [v14 integerForKey:*MEMORY[0x1E69B79A8]];

    v16 = MEMORY[0x1E696AC90];
    v17 = [v5 rowCount];
    if (v17 >= v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = v17;
    }

    v19 = [v16 indexSetWithIndexesInRange:{0, v18}];
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 0;
    v20 = [MEMORY[0x1E696AC90] indexSetWithIndex:v6];
    v39 = MEMORY[0x1E69E9820];
    v40 = 3221225472;
    v41 = __57__ICTableColumnWidthManager_calculateIdealWidthOfColumn___block_invoke;
    v42 = &unk_1E84695A0;
    v21 = v7;
    v46 = v10;
    v43 = v21;
    v44 = &v51;
    v45 = &v47;
    [v5 enumerateCellObjectsInCellSelectionContainingColumnIndices:v20 rowIndices:v19 copyItems:0 usingBlock:&v39];

    v22 = v48[3];
    if (v22 < v13)
    {
      v22 = v13;
    }

    v48[3] = v22;
    v23 = [(ICTableColumnWidthManager *)self delegate:v39];
    [v23 availableWidth];
    v25 = v24 - 11.0;

    v26 = 450.0;
    if (v25 < 450.0)
    {
      v26 = v25;
    }

    if (v48[3] >= v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = v48[3];
    }

    v48[3] = v27;
    v28 = [(ICTableColumnWidthManager *)self cachedIdealColumnWidths];
    v29 = round(v27);
    v30 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
    [v28 setObject:v30 forKey:v4];

    v31 = [(ICTableColumnWidthManager *)self cachedActualColumnWidths];
    v32 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
    [v31 setObject:v32 forKey:v4];

    v33 = [(ICTableColumnWidthManager *)self cachedMinimumColumnWidths];
    v34 = [MEMORY[0x1E696AD98] numberWithDouble:v52[3]];
    [v33 setObject:v34 forKey:v4];

    _Block_object_dispose(&v47, 8);
    _Block_object_dispose(&v51, 8);
  }

  else
  {
    v35 = [(ICTableColumnWidthManager *)self cachedIdealColumnWidths];
    [v35 removeObjectForKey:v4];

    v36 = [(ICTableColumnWidthManager *)self cachedActualColumnWidths];
    [v36 removeObjectForKey:v4];

    v37 = [(ICTableColumnWidthManager *)self cachedMinimumColumnWidths];
    [v37 removeObjectForKey:v4];

    v29 = 0.0;
  }

  return v29;
}

uint64_t __57__ICTableColumnWidthManager_calculateIdealWidthOfColumn___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 attributedString];
  v5 = [v4 string];
  v6 = [v5 ic_lengthOfLongestLine];

  if (v6)
  {
    v7 = [v3 attributesAtIndex:0 effectiveRange:0];
    v8 = [*(a1 + 32) styleForModelAttributes:v7];
    [@"N" sizeWithAttributes:v8];
    v10 = v9;
    v11 = v9 * pow(v6, *(a1 + 56)) + 5.0 * 2.0;
    v12 = 12;
    if (v6 < 0xC)
    {
      v12 = v6;
    }

    *(*(*(a1 + 40) + 8) + 24) = 5.0 + 5.0 + v12 * v10;
    if (v11 < *(*(*(a1 + 40) + 8) + 24))
    {
      v11 = *(*(*(a1 + 40) + 8) + 24);
    }

    v13 = *(*(a1 + 48) + 8);
    if (v11 < *(v13 + 24))
    {
      v11 = *(v13 + 24);
    }

    *(v13 + 24) = v11;
  }

  return 0;
}

- (double)comfortableNumberOfColumnsOnscreen
{
  v2 = [(ICTableColumnWidthManager *)self delegate];
  [v2 availableWidth];
  v4 = v3;

  return ceil(v4 / 210.0);
}

- (double)comfortableColumnWidth
{
  v3 = [(ICTableColumnWidthManager *)self delegate];
  [v3 availableWidth];
  v5 = v4;

  [(ICTableColumnWidthManager *)self comfortableNumberOfColumnsOnscreen];
  return v5 / v6;
}

- (id)invalidateWidthForColumns:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = [(ICTableColumnWidthManager *)self cachedActualColumnWidths];
        v13 = [v12 objectForKeyedSubscript:v11];

        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = &unk_1F4FC3C90;
        }

        [v5 setObject:v14 forKey:v11];
        [(ICTableColumnWidthManager *)self calculateIdealWidthOfColumn:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v8);
  }

  v25 = [(ICTableColumnWidthManager *)self recalculateActualWidths];
  v27 = [MEMORY[0x1E695DFA8] setWithSet:?];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v6;
  v15 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v28 + 1) + 8 * j);
        v20 = [v5 objectForKeyedSubscript:v19];
        v21 = [(ICTableColumnWidthManager *)self cachedActualColumnWidths];
        v22 = [v21 objectForKeyedSubscript:v19];
        v23 = [v20 isEqual:v22];

        if (v23)
        {
          if ([v25 containsObject:v19])
          {
            [v27 removeObject:v19];
          }
        }

        else
        {
          [v27 addObject:v19];
        }
      }

      v16 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v16);
  }

  return v27;
}

- (id)recalculateActualWidths
{
  v76 = *MEMORY[0x1E69E9840];
  v46 = [(ICTableColumnWidthManager *)self table];
  v3 = [(ICTableColumnWidthManager *)self cachedIdealColumnWidths];
  v4 = [v3 mutableCopy];

  v5 = [(ICTableColumnWidthManager *)self delegate];
  [v5 availableWidth];
  v7 = v6;

  [(ICTableColumnWidthManager *)self comfortableColumnWidth];
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __52__ICTableColumnWidthManager_recalculateActualWidths__block_invoke;
  v56[3] = &unk_1E84695C8;
  v58 = &v71;
  v59 = &v63;
  v56[4] = self;
  v61 = v8;
  v9 = v4;
  v57 = v9;
  v60 = &v67;
  v62 = v7;
  [v46 enumerateColumnsWithBlock:v56];
  v47 = [MEMORY[0x1E695DFA8] set];
  v10 = [(ICTableColumnWidthManager *)self cachedActualColumnWidths];
  v11 = [v46 columnCount];
  if (v72[3] == v11)
  {
    v12 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v12 doubleForKey:*MEMORY[0x1E69B7998]];
    v14 = v13;

    v15 = v68[3];
    if (v15 > v7)
    {
      if (v64[3] >= v7)
      {
        v15 = v64[3];
      }

      else
      {
        v15 = v7;
      }
    }

    [(ICTableColumnWidthManager *)self comfortableNumberOfColumnsOnscreen];
    v17 = v15 <= v7;
    if (v15 <= v7 + v14)
    {
      v17 = 1;
    }

    if (v15 > v7 && v15 <= v7 + v14)
    {
      v18 = v7;
    }

    else
    {
      v18 = v15;
    }

    if (!v17)
    {
      v18 = v15 - v14;
    }

    if (v18 < v7 || v16 < v11)
    {
      v20 = v18;
    }

    else
    {
      v20 = v7;
    }

    v21 = [MEMORY[0x1E695DF70] array];
    v22 = [(ICTableColumnWidthManager *)self table];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __52__ICTableColumnWidthManager_recalculateActualWidths__block_invoke_2;
    v54[3] = &unk_1E84695F0;
    v23 = v21;
    v55 = v23;
    [v22 enumerateColumnsWithBlock:v54];

    v24 = [(ICTableColumnWidthManager *)self cachedIdealColumnWidths];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __52__ICTableColumnWidthManager_recalculateActualWidths__block_invoke_3;
    v52[3] = &unk_1E8468D70;
    v45 = v24;
    v53 = v45;
    [v23 sortUsingComparator:v52];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v25 = v23;
    v26 = [v25 countByEnumeratingWithState:&v48 objects:v75 count:16];
    if (v26)
    {
      v27 = *v49;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v49 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v29 = *(*(&v48 + 1) + 8 * i);
          v30 = [v9 objectForKeyedSubscript:v29];
          [v30 doubleValue];
          v32 = v31;

          v33 = v68[3];
          v34 = [(ICTableColumnWidthManager *)self cachedMinimumColumnWidths];
          v35 = [v34 objectForKeyedSubscript:v29];
          [v35 doubleValue];
          v37 = v36;

          if (v32 * (v20 / v33) >= v37)
          {
            v37 = v32 * (v20 / v33);
          }

          v38 = [v10 objectForKeyedSubscript:v29];
          [v38 doubleValue];
          v39 = floor(v37);
          v41 = v40 != v39;

          if (v41)
          {
            v42 = [(ICTableColumnWidthManager *)self cachedActualColumnWidths];
            v43 = [MEMORY[0x1E696AD98] numberWithDouble:v39];
            [v42 setObject:v43 forKey:v29];

            [v47 addObject:v29];
          }

          v20 = v20 - v39;
          v68[3] = v68[3] - v32;
        }

        v26 = [v25 countByEnumeratingWithState:&v48 objects:v75 count:16];
      }

      while (v26);
    }
  }

  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v71, 8);

  return v47;
}

void __52__ICTableColumnWidthManager_recalculateActualWidths__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  ++*(*(*(a1 + 48) + 8) + 24);
  v6 = [*(a1 + 32) cachedIdealColumnWidths];
  v7 = [v6 objectForKeyedSubscript:v12];
  [v7 doubleValue];
  v9 = v8;

  if (v9 == 0.0)
  {
    [*(a1 + 32) calculateIdealWidthOfColumn:v12];
    v9 = v10;
  }

  *(*(*(a1 + 56) + 8) + 24) = v9 + *(*(*(a1 + 56) + 8) + 24);
  if (v9 < *(a1 + 72))
  {
    v9 = *(a1 + 72);
  }

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  [*(a1 + 40) setObject:v11 forKeyedSubscript:v12];

  *(*(*(a1 + 64) + 8) + 24) = v9 + *(*(*(a1 + 64) + 8) + 24);
  if (*(*(*(a1 + 56) + 8) + 24) > *(a1 + 80))
  {
    *a4 = 1;
  }
}

uint64_t __52__ICTableColumnWidthManager_recalculateActualWidths__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v9 = [v7 compare:v8];
  return v9;
}

- (ICTable)table
{
  WeakRetained = objc_loadWeakRetained(&self->_table);

  return WeakRetained;
}

- (ICAvailableTableWidthProviding)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end