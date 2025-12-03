@interface ICTableLayoutManager
- (ICAvailableTableWidthProviding)delegate;
- (ICTable)table;
- (ICTableLayoutManager)initWithTable:(id)table delegate:(id)delegate;
- (double)availableWidth;
- (double)emptyCellHeight;
- (id)columnLayoutManagerForColumn:(id)column;
- (void)removeColumnLayoutManagerForColumn:(id)column;
- (void)setHighlightPatternRegexFinder:(id)finder;
- (void)setYPosition:(double)position forRow:(id)row shouldInvalidate:(BOOL)invalidate;
- (void)updateForMovedRow:(id)row;
@end

@implementation ICTableLayoutManager

- (ICTableLayoutManager)initWithTable:(id)table delegate:(id)delegate
{
  tableCopy = table;
  delegateCopy = delegate;
  v26.receiver = self;
  v26.super_class = ICTableLayoutManager;
  v8 = [(ICTableLayoutManager *)&v26 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_table, tableCopy);
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v10 = objc_alloc(MEMORY[0x277D36938]);
    WeakRetained = objc_loadWeakRetained(&v9->_table);
    v12 = [v10 initWithTable:WeakRetained delegate:v9];
    columnWidthManager = v9->_columnWidthManager;
    v9->_columnWidthManager = v12;

    v14 = objc_loadWeakRetained(&v9->_table);
    columnCount = [v14 columnCount];

    v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:columnCount];
    columnLayoutManagers = v9->_columnLayoutManagers;
    v9->_columnLayoutManagers = v16;

    if (columnCount >= 8)
    {
      v18 = 8;
    }

    else
    {
      v18 = columnCount;
    }

    if (columnCount)
    {
      v19 = 0;
      do
      {
        v20 = objc_loadWeakRetained(&v9->_table);
        v21 = [v20 identifierForColumnAtIndex:v19];

        v22 = [[ICTableColumnLayoutManager alloc] initWithTableLayoutManager:v9 columnID:v21];
        [(NSMutableDictionary *)v9->_columnLayoutManagers setObject:v22 forKeyedSubscript:v21];

        ++v19;
      }

      while (v18 != v19);
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    rowPositions = v9->_rowPositions;
    v9->_rowPositions = dictionary;
  }

  return v9;
}

- (double)emptyCellHeight
{
  columnLayoutManagers = [(ICTableLayoutManager *)self columnLayoutManagers];
  allValues = [columnLayoutManagers allValues];
  firstObject = [allValues firstObject];

  if (firstObject)
  {
    objc_opt_class();
    columnTextStorage = [firstObject columnTextStorage];
    styler = [columnTextStorage styler];
    v8 = ICDynamicCast();
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277D36968]);
  }

  [(ICTableLayoutManager *)self emptyCellLineHeight];
  if (v9 == 0.0)
  {
    bodyAttributes = [v8 bodyAttributes];
    v11 = [bodyAttributes objectForKey:*MEMORY[0x277D740A8]];
    [v11 lineHeight];
    [(ICTableLayoutManager *)self setEmptyCellLineHeight:?];
    v12 = [bodyAttributes objectForKey:*MEMORY[0x277D74118]];
    [v12 lineSpacing];
    [(ICTableLayoutManager *)self setEmptyCellLineSpacing:?];
  }

  zoomController = [v8 zoomController];
  [zoomController zoomFactor];
  if (v14 == 0.0)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = v14;
  }

  v16 = MEMORY[0x277D74300];
  [MEMORY[0x277D74300] ic_pointSizeForBodyTextWithContentSizeCategory:0];
  v17 = [v16 systemFontOfSize:?];
  ic_fontWithSingleLineA = [v17 ic_fontWithSingleLineA];

  [ic_fontWithSingleLineA lineHeight];
  v20 = v19;
  [(ICTableLayoutManager *)self emptyCellLineSpacing];
  v22 = round(v21 + v20 * v15 + *MEMORY[0x277D365F8] + *MEMORY[0x277D365E0]);

  return v22;
}

- (id)columnLayoutManagerForColumn:(id)column
{
  columnCopy = column;
  columnLayoutManagers = [(ICTableLayoutManager *)self columnLayoutManagers];
  v6 = [columnLayoutManagers objectForKeyedSubscript:columnCopy];

  if (!v6)
  {
    v6 = [[ICTableColumnLayoutManager alloc] initWithTableLayoutManager:self columnID:columnCopy];
    columnLayoutManagers2 = [(ICTableLayoutManager *)self columnLayoutManagers];
    [columnLayoutManagers2 setObject:v6 forKeyedSubscript:columnCopy];

    highlightPatternRegexFinder = [(ICTableLayoutManager *)self highlightPatternRegexFinder];
    [(ICLayoutManager *)v6 setHighlightPatternRegexFinder:highlightPatternRegexFinder];
  }

  return v6;
}

- (void)removeColumnLayoutManagerForColumn:(id)column
{
  columnCopy = column;
  columnLayoutManagers = [(ICTableLayoutManager *)self columnLayoutManagers];
  [columnLayoutManagers removeObjectForKey:columnCopy];
}

- (void)updateForMovedRow:(id)row
{
  v26 = *MEMORY[0x277D85DE8];
  rowCopy = row;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  columnLayoutManagers = [(ICTableLayoutManager *)self columnLayoutManagers];
  allKeys = [columnLayoutManagers allKeys];

  v7 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        columnLayoutManagers2 = [(ICTableLayoutManager *)self columnLayoutManagers];
        v13 = [columnLayoutManagers2 objectForKey:v11];

        columnTextStorage = [v13 columnTextStorage];
        v15 = [columnTextStorage characterRangeForRowID:rowCopy];
        v17 = v16;
        [columnTextStorage updateStorageForMovedRow:rowCopy];
        v28.location = [columnTextStorage characterRangeForRowID:rowCopy];
        v28.length = v18;
        v27.location = v15;
        v27.length = v17;
        v19 = NSUnionRange(v27, v28);
        [v13 invalidateLayoutForCharacterRange:v19.location actualCharacterRange:{v19.length, 0}];
        highlightPatternRegexFinder = [(ICTableLayoutManager *)self highlightPatternRegexFinder];
        [v13 setHighlightPatternRegexFinder:highlightPatternRegexFinder];

        ++v10;
      }

      while (v8 != v10);
      v8 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }
}

- (void)setYPosition:(double)position forRow:(id)row shouldInvalidate:(BOOL)invalidate
{
  invalidateCopy = invalidate;
  v34 = *MEMORY[0x277D85DE8];
  rowCopy = row;
  rowPositions = [(ICTableLayoutManager *)self rowPositions];
  v10 = [rowPositions objectForKey:rowCopy];

  if (!v10 || ([v10 doubleValue], v11 != position))
  {
    rowPositions2 = [(ICTableLayoutManager *)self rowPositions];
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:position];
    [rowPositions2 setObject:v13 forKey:rowCopy];

    if (invalidateCopy)
    {
      v28 = v10;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      columnLayoutManagers = [(ICTableLayoutManager *)self columnLayoutManagers];
      allValues = [columnLayoutManagers allValues];

      v16 = [allValues countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v30;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v30 != v18)
            {
              objc_enumerationMutation(allValues);
            }

            v20 = *(*(&v29 + 1) + 8 * i);
            columnTextStorage = [v20 columnTextStorage];
            v22 = [columnTextStorage characterRangeForRowID:rowCopy];
            if (v22 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v23 = v22;
              if (v22 <= [columnTextStorage length])
              {
                v24 = [columnTextStorage length];
                v25 = v23 - 1;
                if (!v23)
                {
                  v25 = 0;
                }

                v26 = v23 != 0;
                if (v23 < v24)
                {
                  v27 = 1;
                }

                else
                {
                  v23 = v25;
                  v27 = v26;
                }

                [v20 invalidateLayoutForCharacterRange:v23 actualCharacterRange:{v27, 0}];
                [v20 locationForGlyphAtIndex:{objc_msgSend(v20, "glyphRangeForCharacterRange:actualCharacterRange:", v23, v27, 0)}];
              }
            }
          }

          v17 = [allValues countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v17);
      }

      v10 = v28;
    }
  }
}

- (double)availableWidth
{
  delegate = [(ICTableLayoutManager *)self delegate];
  [delegate availableWidth];
  v4 = v3;

  return v4;
}

- (void)setHighlightPatternRegexFinder:(id)finder
{
  v17 = *MEMORY[0x277D85DE8];
  finderCopy = finder;
  objc_storeStrong(&self->_highlightPatternRegexFinder, finder);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  columnLayoutManagers = [(ICTableLayoutManager *)self columnLayoutManagers];
  allValues = [columnLayoutManagers allValues];

  v8 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v12 + 1) + 8 * v11++) setHighlightPatternRegexFinder:self->_highlightPatternRegexFinder];
      }

      while (v9 != v11);
      v9 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
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