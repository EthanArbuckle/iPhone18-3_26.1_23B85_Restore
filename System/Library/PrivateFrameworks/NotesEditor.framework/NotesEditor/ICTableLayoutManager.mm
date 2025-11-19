@interface ICTableLayoutManager
- (ICAvailableTableWidthProviding)delegate;
- (ICTable)table;
- (ICTableLayoutManager)initWithTable:(id)a3 delegate:(id)a4;
- (double)availableWidth;
- (double)emptyCellHeight;
- (id)columnLayoutManagerForColumn:(id)a3;
- (void)removeColumnLayoutManagerForColumn:(id)a3;
- (void)setHighlightPatternRegexFinder:(id)a3;
- (void)setYPosition:(double)a3 forRow:(id)a4 shouldInvalidate:(BOOL)a5;
- (void)updateForMovedRow:(id)a3;
@end

@implementation ICTableLayoutManager

- (ICTableLayoutManager)initWithTable:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = ICTableLayoutManager;
  v8 = [(ICTableLayoutManager *)&v26 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_table, v6);
    objc_storeWeak(&v9->_delegate, v7);
    v10 = objc_alloc(MEMORY[0x277D36938]);
    WeakRetained = objc_loadWeakRetained(&v9->_table);
    v12 = [v10 initWithTable:WeakRetained delegate:v9];
    columnWidthManager = v9->_columnWidthManager;
    v9->_columnWidthManager = v12;

    v14 = objc_loadWeakRetained(&v9->_table);
    v15 = [v14 columnCount];

    v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v15];
    columnLayoutManagers = v9->_columnLayoutManagers;
    v9->_columnLayoutManagers = v16;

    if (v15 >= 8)
    {
      v18 = 8;
    }

    else
    {
      v18 = v15;
    }

    if (v15)
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

    v23 = [MEMORY[0x277CBEB38] dictionary];
    rowPositions = v9->_rowPositions;
    v9->_rowPositions = v23;
  }

  return v9;
}

- (double)emptyCellHeight
{
  v3 = [(ICTableLayoutManager *)self columnLayoutManagers];
  v4 = [v3 allValues];
  v5 = [v4 firstObject];

  if (v5)
  {
    objc_opt_class();
    v6 = [v5 columnTextStorage];
    v7 = [v6 styler];
    v8 = ICDynamicCast();
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277D36968]);
  }

  [(ICTableLayoutManager *)self emptyCellLineHeight];
  if (v9 == 0.0)
  {
    v10 = [v8 bodyAttributes];
    v11 = [v10 objectForKey:*MEMORY[0x277D740A8]];
    [v11 lineHeight];
    [(ICTableLayoutManager *)self setEmptyCellLineHeight:?];
    v12 = [v10 objectForKey:*MEMORY[0x277D74118]];
    [v12 lineSpacing];
    [(ICTableLayoutManager *)self setEmptyCellLineSpacing:?];
  }

  v13 = [v8 zoomController];
  [v13 zoomFactor];
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
  v18 = [v17 ic_fontWithSingleLineA];

  [v18 lineHeight];
  v20 = v19;
  [(ICTableLayoutManager *)self emptyCellLineSpacing];
  v22 = round(v21 + v20 * v15 + *MEMORY[0x277D365F8] + *MEMORY[0x277D365E0]);

  return v22;
}

- (id)columnLayoutManagerForColumn:(id)a3
{
  v4 = a3;
  v5 = [(ICTableLayoutManager *)self columnLayoutManagers];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v6 = [[ICTableColumnLayoutManager alloc] initWithTableLayoutManager:self columnID:v4];
    v7 = [(ICTableLayoutManager *)self columnLayoutManagers];
    [v7 setObject:v6 forKeyedSubscript:v4];

    v8 = [(ICTableLayoutManager *)self highlightPatternRegexFinder];
    [(ICLayoutManager *)v6 setHighlightPatternRegexFinder:v8];
  }

  return v6;
}

- (void)removeColumnLayoutManagerForColumn:(id)a3
{
  v4 = a3;
  v5 = [(ICTableLayoutManager *)self columnLayoutManagers];
  [v5 removeObjectForKey:v4];
}

- (void)updateForMovedRow:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [(ICTableLayoutManager *)self columnLayoutManagers];
  v6 = [v5 allKeys];

  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v12 = [(ICTableLayoutManager *)self columnLayoutManagers];
        v13 = [v12 objectForKey:v11];

        v14 = [v13 columnTextStorage];
        v15 = [v14 characterRangeForRowID:v4];
        v17 = v16;
        [v14 updateStorageForMovedRow:v4];
        v28.location = [v14 characterRangeForRowID:v4];
        v28.length = v18;
        v27.location = v15;
        v27.length = v17;
        v19 = NSUnionRange(v27, v28);
        [v13 invalidateLayoutForCharacterRange:v19.location actualCharacterRange:{v19.length, 0}];
        v20 = [(ICTableLayoutManager *)self highlightPatternRegexFinder];
        [v13 setHighlightPatternRegexFinder:v20];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }
}

- (void)setYPosition:(double)a3 forRow:(id)a4 shouldInvalidate:(BOOL)a5
{
  v5 = a5;
  v34 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [(ICTableLayoutManager *)self rowPositions];
  v10 = [v9 objectForKey:v8];

  if (!v10 || ([v10 doubleValue], v11 != a3))
  {
    v12 = [(ICTableLayoutManager *)self rowPositions];
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    [v12 setObject:v13 forKey:v8];

    if (v5)
    {
      v28 = v10;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v14 = [(ICTableLayoutManager *)self columnLayoutManagers];
      v15 = [v14 allValues];

      v16 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v29 + 1) + 8 * i);
            v21 = [v20 columnTextStorage];
            v22 = [v21 characterRangeForRowID:v8];
            if (v22 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v23 = v22;
              if (v22 <= [v21 length])
              {
                v24 = [v21 length];
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

          v17 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v17);
      }

      v10 = v28;
    }
  }
}

- (double)availableWidth
{
  v2 = [(ICTableLayoutManager *)self delegate];
  [v2 availableWidth];
  v4 = v3;

  return v4;
}

- (void)setHighlightPatternRegexFinder:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_highlightPatternRegexFinder, a3);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(ICTableLayoutManager *)self columnLayoutManagers];
  v7 = [v6 allValues];

  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) setHighlightPatternRegexFinder:self->_highlightPatternRegexFinder];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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