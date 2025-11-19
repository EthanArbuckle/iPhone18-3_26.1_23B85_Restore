@interface ICTableTextViewManager
- (BOOL)cellContainingPoint:(CGPoint)a3 columnID:(id *)a4 rowID:(id *)a5;
- (CGPoint)anchorPoint;
- (CGPoint)initialScrollPointForViewport:(CGRect)a3;
- (CGPoint)redrawAllWithViewport:(CGRect)a3;
- (CGPoint)updateTilesWithViewport:(CGRect)a3 redrawAll:(BOOL)a4;
- (CGRect)boundingRect;
- (CGRect)frameOfCellAtColumn:(id)a3 row:(id)a4;
- (CGRect)frameOfColumn:(id)a3;
- (CGRect)frameOfRow:(id)a3;
- (ICTableContentView)contentView;
- (ICTableTextViewManager)init;
- (ICTableTextViewManager)initWithTableLayoutManager:(id)a3 view:(id)a4 cachedWidths:(id)a5 cachedRowHeights:(id)a6 cachedCellHeights:(id)a7;
- (ICTableTextViewManagerDelegate)delegate;
- (NSArray)columnIDs;
- (NSArray)rowIDs;
- (double)addColumn:(id)a3 atEnd:(BOOL)a4;
- (double)addRow:(id)a3 atEnd:(BOOL)a4;
- (double)ensureChunkOfPopulatedColumnsForColumn:(id)a3;
- (double)ensureChunkOfPopulatedRowsForRow:(id)a3 shouldForce:(BOOL)a4;
- (double)preAddColumn:(id)a3;
- (double)preAddRow:(id)a3 atYPosition:(double)a4;
- (id)columnContainingX:(double)a3;
- (id)rowContainingY:(double)a3;
- (id)textViewForColumn:(id)a3 createIfNeeded:(BOOL)a4;
- (void)adjustOnscreenPositions;
- (void)clearColumn:(id)a3;
- (void)clearColumnsOutsideFrame:(CGRect)a3;
- (void)clearRow:(id)a3;
- (void)clearRowsOutsideFrame:(CGRect)a3;
- (void)dealloc;
- (void)ensureCellPositionForColumn:(id)a3 andRow:(id)a4;
- (void)enumerateTextViewsWithBlock:(id)a3;
- (void)heightChangedForRow:(id)a3 by:(double)a4;
- (void)moveColumnAtIndex:(unint64_t)a3 toIndex:(unint64_t)a4;
- (void)moveRowAtIndex:(unint64_t)a3 toIndex:(unint64_t)a4;
- (void)parentViewDidChange;
- (void)removeColumn:(id)a3;
- (void)restyleCells;
- (void)restyleTextView:(id)a3;
- (void)validateRowHeightsForColumn:(id)a3;
@end

@implementation ICTableTextViewManager

- (ICTableTextViewManager)init
{
  [(ICTableTextViewManager *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICTableTextViewManager)initWithTableLayoutManager:(id)a3 view:(id)a4 cachedWidths:(id)a5 cachedRowHeights:(id)a6 cachedCellHeights:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v28.receiver = self;
  v28.super_class = ICTableTextViewManager;
  v18 = [(ICTableTextViewManager *)&v28 init];
  if (v18)
  {
    v19 = [MEMORY[0x277CBEB18] array];
    columnIdentifiers = v18->_columnIdentifiers;
    v18->_columnIdentifiers = v19;

    v21 = [MEMORY[0x277CBEB18] array];
    rowIdentifiers = v18->_rowIdentifiers;
    v18->_rowIdentifiers = v21;

    v23 = [MEMORY[0x277CBEB58] set];
    prepopulatedColumns = v18->_prepopulatedColumns;
    v18->_prepopulatedColumns = v23;

    v25 = [MEMORY[0x277CBEB38] dictionary];
    columnTextViews = v18->_columnTextViews;
    v18->_columnTextViews = v25;

    objc_storeStrong(&v18->_tableLayoutManager, a3);
    objc_storeWeak(&v18->_contentView, v14);
    objc_storeStrong(&v18->_cachedColumnWidths, a5);
    objc_storeStrong(&v18->_cachedRowHeights, a6);
    objc_storeStrong(&v18->_cachedCellHeights, a7);
    v18->_anchorColumn = 0;
    v18->_anchorRow = 0;
    v18->_anchorPoint = *MEMORY[0x277CBF348];
  }

  return v18;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(ICTableTextViewManager *)self columnTextViews];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) removeFromSuperview];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9.receiver = self;
  v9.super_class = ICTableTextViewManager;
  [(ICTableTextViewManager *)&v9 dealloc];
}

- (CGPoint)initialScrollPointForViewport:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = MEMORY[0x277CBF348];
  v9 = *(MEMORY[0x277CBF348] + 8);
  v10 = [(ICTableTextViewManager *)self tableLayoutManager];
  v11 = [v10 table];

  if ([v11 isRightToLeft])
  {
    v12 = [(ICTableTextViewManager *)self tableLayoutManager];
    v13 = [v12 table];
    v14 = [v12 columnWidthManager];
    v15 = [v13 columnCount];
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v16 = CGRectGetWidth(v30);
    v17 = [(ICTableTextViewManager *)self cachedColumnWidths];
    if (v16 > 0.0 && v15)
    {
      v18 = 0.0;
      v19 = 1;
      do
      {
        v20 = [v13 identifierForColumnAtIndex:v19 - 1];
        [v14 widthOfColumn:v20];
        v22 = v21;
        [v17 setDimension:v20 forKey:?];
        v18 = v18 + v22;
      }

      while (v18 < v16 && v19++ < v15);
    }

    [v17 sum];
    v25 = v24 - v16;
    if (v25 >= 0.0)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0.0;
    }
  }

  else
  {
    v26 = *v8;
  }

  v27 = v26;
  v28 = v9;
  result.y = v28;
  result.x = v27;
  return result;
}

- (CGRect)boundingRect
{
  v3 = [(ICTableTextViewManager *)self columnTextViews];
  v4 = [(ICTableTextViewManager *)self columnIdentifiers];
  v5 = [v4 lastObject];
  v6 = [v3 objectForKeyedSubscript:v5];

  [v6 frame];
  MaxX = CGRectGetMaxX(v31);
  [(ICTableTextViewManager *)self anchorPoint];
  v9 = MaxX - v8;
  if (v9 >= 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = [(ICTableTextViewManager *)self rowIdentifiers];
  v12 = [v11 lastObject];

  v13 = [(ICTableTextViewManager *)self tableLayoutManager];
  v14 = [v13 rowPositions];
  v15 = [v14 objectForKeyedSubscript:v12];
  [v15 doubleValue];
  v17 = v16;

  v18 = [(ICTableTextViewManager *)self cachedRowHeights];
  [v18 dimensionForKey:v12];
  v20 = v17 + v19;

  [(ICTableTextViewManager *)self anchorPoint];
  if (v20 - v21 >= 0.0)
  {
    v22 = v20 - v21;
  }

  else
  {
    v22 = 0.0;
  }

  [(ICTableTextViewManager *)self anchorPoint];
  v24 = v23;
  [(ICTableTextViewManager *)self anchorPoint];
  v26 = v25;

  v27 = v24;
  v28 = v26;
  v29 = v10;
  v30 = v22;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (NSArray)columnIDs
{
  v2 = [(ICTableTextViewManager *)self columnIdentifiers];
  v3 = [v2 copy];

  return v3;
}

- (NSArray)rowIDs
{
  v2 = [(ICTableTextViewManager *)self rowIdentifiers];
  v3 = [v2 copy];

  return v3;
}

- (void)enumerateTextViewsWithBlock:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17 = 0;
  v5 = [(ICTableTextViewManager *)self columnTextViews];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(ICTableTextViewManager *)self columnIdentifiers];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = [v5 objectForKeyedSubscript:*(*(&v13 + 1) + 8 * v10)];
      v4[2](v4, v11, &v17);
      v12 = v17;

      if (v12)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)adjustOnscreenPositions
{
  v48 = *MEMORY[0x277D85DE8];
  [(ICTableTextViewManager *)self boundingRect];
  x = v49.origin.x;
  y = v49.origin.y;
  width = v49.size.width;
  height = v49.size.height;
  MinX = CGRectGetMinX(v49);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v8 = [(ICTableTextViewManager *)self columnIDs];
  v9 = [v8 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v43;
    do
    {
      v12 = 0;
      do
      {
        if (*v43 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v42 + 1) + 8 * v12);
        v14 = [(ICTableTextViewManager *)self columnTextViews];
        v15 = [v14 objectForKey:v13];

        if (!v15)
        {
          [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((columnTextView) != nil)" functionName:"-[ICTableTextViewManager adjustOnscreenPositions]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "columnTextView"}];
        }

        v16 = [(ICTableTextViewManager *)self cachedColumnWidths];
        [v16 dimensionForKey:v13];
        v18 = v17;

        [v15 frame];
        v20 = v19;
        [v15 frame];
        [v15 setFrame:{MinX, v20, v18}];
        v21 = [(ICTableTextViewManager *)self contentView];
        v22 = [MEMORY[0x277CCABB0] numberWithDouble:MinX];
        [v21 setVerticalLinePosition:v22 forKey:v13];

        MinX = MinX + v18;
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v10);
  }

  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  MinY = CGRectGetMinY(v50);
  v24 = [(ICTableTextViewManager *)self rowIdentifiers];
  if ([v24 count])
  {
    [(ICTableTextViewManager *)self rowIdentifiers];
  }

  else
  {
    [(ICTableTextViewManager *)self previousRowIdentifiers];
  }
  v25 = ;

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v26 = v25;
  v27 = [v26 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v39;
    do
    {
      v30 = 0;
      do
      {
        if (*v39 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v38 + 1) + 8 * v30);
        v32 = [(ICTableTextViewManager *)self contentView];
        v33 = [MEMORY[0x277CCABB0] numberWithDouble:MinY];
        [v32 setHorizontalLinePosition:v33 forKey:v31];

        v34 = [(ICTableTextViewManager *)self tableLayoutManager];
        [v34 setYPosition:v31 forRow:1 shouldInvalidate:MinY];

        v35 = [(ICTableTextViewManager *)self cachedRowHeights];
        [v35 dimensionForKey:v31];
        v37 = v36;

        MinY = MinY + v37;
        ++v30;
      }

      while (v28 != v30);
      v28 = [v26 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v28);
  }
}

- (void)validateRowHeightsForColumn:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v40 = a3;
  v4 = [(ICTableTextViewManager *)self rowIdentifiers];
  if ([v4 count])
  {
    [(ICTableTextViewManager *)self rowIdentifiers];
  }

  else
  {
    [(ICTableTextViewManager *)self previousRowIdentifiers];
  }
  v5 = ;

  v6 = [(ICTableTextViewManager *)self tableLayoutManager];
  v7 = [v6 table];
  v8 = [v7 textStorageForColumn:v40];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v46;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v46 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v8 characterRangeForRowID:*(*(&v45 + 1) + 8 * i)];
      }

      v11 = [v9 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v11);
  }

  v14 = [(ICTableTextViewManager *)self tableLayoutManager];
  v15 = [v14 columnLayoutManagerForColumn:v40];

  if ([v9 count])
  {
    v16 = [v9 firstObject];
    v17 = [v9 lastObject];
    v18 = [v8 characterRangeForRowID:v16];
    v20 = v19;
    v53.location = [v8 characterRangeForRowID:v17];
    v53.length = v21;
    v52.location = v18;
    v52.length = v20;
    v22 = NSUnionRange(v52, v53);
    [v15 ensureLayoutForCharacterRange:{v22.location, v22.length}];
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v23 = v9;
  v24 = [v23 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v24)
  {
    v25 = v24;
    v39 = v8;
    v26 = 0;
    v27 = *v42;
    v28 = *MEMORY[0x277D36630];
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v42 != v27)
        {
          objc_enumerationMutation(v23);
        }

        v30 = *(*(&v41 + 1) + 8 * j);
        v31 = [(ICTableTextViewManager *)self cachedCellHeights];
        v32 = [v31 objectForKey:v30];

        if (!v32)
        {
          [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((cellHeightsForRow) != nil)" functionName:"-[ICTableTextViewManager validateRowHeightsForColumn:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "cellHeightsForRow"}];
        }

        [v15 heightOfCellAtRowID:v30];
        [v32 setDimension:v40 forKey:?];
        v33 = [(ICTableTextViewManager *)self cachedRowHeights];
        [v33 dimensionForKey:v30];
        v35 = v34;

        [v32 max];
        if (v36 >= v28)
        {
          v37 = v36;
        }

        else
        {
          v37 = v28;
        }

        if (v35 != v37)
        {
          v38 = [(ICTableTextViewManager *)self cachedRowHeights];
          [v38 setDimension:v30 forKey:v37];

          v26 = 1;
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v25);

    v8 = v39;
    if (v26)
    {
      [(ICTableTextViewManager *)self adjustOnscreenPositions];
    }
  }

  else
  {
  }
}

- (double)addColumn:(id)a3 atEnd:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(ICTableTextViewManager *)self validateRowHeightsForColumn:v6];
  [(ICTableTextViewManager *)self boundingRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(ICTableTextViewManager *)self columnIdentifiers];
  v16 = v15;
  if (v4)
  {
    v17 = [(ICTableTextViewManager *)self columnIdentifiers];
    [v16 insertObject:v6 atIndex:{objc_msgSend(v17, "count")}];
  }

  else
  {
    [v15 insertObject:v6 atIndex:0];
  }

  v18 = [(ICTableTextViewManager *)self prepopulatedColumns];
  v19 = [v18 containsObject:v6];

  if (v19)
  {
    v20 = [(ICTableTextViewManager *)self prepopulatedColumns];
    [v20 removeObject:v6];
  }

  v21 = [(ICTableTextViewManager *)self tableLayoutManager];
  v22 = [v21 columnWidthManager];
  [v22 widthOfColumn:v6];
  v24 = v23;

  if (v4)
  {
    v41.origin.x = v8;
    v41.origin.y = v10;
    v41.size.width = v12;
    v41.size.height = v14;
    MaxX = CGRectGetMaxX(v41);
    [(ICTableTextViewManager *)self anchorPoint];
    if (MaxX < v26)
    {
      MaxX = v26;
    }
  }

  else
  {
    [(ICTableTextViewManager *)self anchorPoint];
    MaxX = v27 - v24;
  }

  v28 = [(ICTableTextViewManager *)self contentView];
  [v28 bounds];
  v30 = v29;

  v31 = [(ICTableTextViewManager *)self textViewForColumn:v6 createIfNeeded:1];
  [v31 setFrame:{MaxX, 0.0, v24, v30}];
  v32 = [(ICTableTextViewManager *)self contentView];
  [v32 addSubview:v31];

  v33 = [(ICTableTextViewManager *)self columnsNeedingRestyle];
  v34 = [v33 containsObject:v6];

  if (v34)
  {
    [(ICTableTextViewManager *)self restyleTextView:v31];
  }

  [(ICTableTextViewManager *)self updateAuthorHighlights];
  v35 = [(ICTableTextViewManager *)self contentView];
  v36 = [MEMORY[0x277CCABB0] numberWithDouble:MaxX];
  [v35 setVerticalLinePosition:v36 forKey:v6];

  if (!v4)
  {
    [(ICTableTextViewManager *)self setAnchorColumn:[(ICTableTextViewManager *)self anchorColumn]- 1];
    [(ICTableTextViewManager *)self anchorPoint];
    v38 = v37 - v24;
    [(ICTableTextViewManager *)self anchorPoint];
    [(ICTableTextViewManager *)self setAnchorPoint:v38];
  }

  v39 = [(ICTableTextViewManager *)self cachedColumnWidths];
  [v39 setDimension:v6 forKey:v24];

  [(ICTableTextViewManager *)self validateRowHeightsForColumn:v6];
  return v24;
}

- (double)ensureChunkOfPopulatedColumnsForColumn:(id)a3
{
  v4 = a3;
  v5 = [(ICTableTextViewManager *)self tableLayoutManager];
  v6 = [v5 columnLayoutManagerForColumn:v4];

  v7 = [v6 columnTextStorage];
  v8 = [v7 populatedRows];
  v9 = [v8 count];

  if (!v9)
  {
    v10 = [(ICTableTextViewManager *)self tableLayoutManager];
    v11 = [v10 table];

    v12 = [v11 columnIndexForIdentifier:v4];
    v13 = *MEMORY[0x277D36600] + v12;
    v14 = [v11 columnCount];
    if (v13 >= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    if (v12 < v15)
    {
      do
      {
        v16 = [v11 identifierForColumnAtIndex:v12];
        [(ICTableTextViewManager *)self preAddColumn:v16];

        ++v12;
      }

      while (v15 != v12);
    }
  }

  [(ICTableTextViewManager *)self addColumn:v4 atEnd:1];
  v18 = v17;

  return v18;
}

- (double)preAddColumn:(id)a3
{
  v4 = a3;
  [(ICTableTextViewManager *)self validateRowHeightsForColumn:v4];
  v5 = [(ICTableTextViewManager *)self tableLayoutManager];
  v6 = [v5 columnWidthManager];
  [v6 widthOfColumn:v4];
  v8 = v7;

  v9 = [(ICTableTextViewManager *)self columnIdentifiers];
  LOBYTE(v6) = [v9 containsObject:v4];

  if ((v6 & 1) == 0)
  {
    v10 = [(ICTableTextViewManager *)self prepopulatedColumns];
    [v10 addObject:v4];
  }

  v11 = [(ICTableTextViewManager *)self cachedColumnWidths];
  [v11 setDimension:v4 forKey:v8];

  return v8;
}

- (double)addRow:(id)a3 atEnd:(BOOL)a4
{
  v4 = a4;
  v59 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(ICTableTextViewManager *)self boundingRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(ICTableTextViewManager *)self rowIdentifiers];
  v16 = v15;
  if (v4)
  {
    v17 = [(ICTableTextViewManager *)self rowIdentifiers];
    [v16 insertObject:v6 atIndex:{objc_msgSend(v17, "count")}];
  }

  else
  {
    [v15 insertObject:v6 atIndex:0];
  }

  v18 = [(ICTableTextViewManager *)self cachedCellHeights];
  v19 = [v18 objectForKey:v6];

  if (!v19)
  {
    v19 = [objc_alloc(MEMORY[0x277D35EB0]) initWithComparator:&__block_literal_global_31];
    v20 = [(ICTableTextViewManager *)self cachedCellHeights];
    [v20 setObject:v19 forKey:v6];
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = [(ICTableTextViewManager *)self columnIdentifiers];
  v21 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v55;
    v51 = self;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v55 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v54 + 1) + 8 * i);
        v26 = [(ICTableTextViewManager *)self tableLayoutManager];
        v53 = v25;
        v27 = [v26 columnLayoutManagerForColumn:v25];

        if (v4)
        {
          v28 = [v27 columnTextStorage];
          [v28 populatedRows];
          v30 = v29 = v4;
          v31 = [v30 containsObject:v6];

          v4 = v29;
          self = v51;

          if ((v31 & 1) == 0)
          {
            v60.origin.x = v8;
            v60.origin.y = v10;
            v60.size.width = v12;
            v60.size.height = v14;
            MaxY = CGRectGetMaxY(v60);
            [(ICTableTextViewManager *)v51 anchorPoint];
            if (MaxY < v33)
            {
              MaxY = v33;
            }

            v34 = [(ICTableTextViewManager *)v51 tableLayoutManager];
            [v34 setYPosition:v6 forRow:0 shouldInvalidate:MaxY];
          }
        }

        [v27 heightOfCellAtRowID:v6];
        [v19 setDimension:v53 forKey:?];
      }

      v22 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v22);
  }

  [v19 max];
  v36 = v35;
  v37 = [(ICTableTextViewManager *)self tableLayoutManager];
  [v37 emptyCellHeight];
  v39 = v38;

  if (v36 < v39)
  {
    v36 = v39;
  }

  if (v4)
  {
    v61.origin.x = v8;
    v61.origin.y = v10;
    v61.size.width = v12;
    v61.size.height = v14;
    v40 = CGRectGetMaxY(v61);
    [(ICTableTextViewManager *)self anchorPoint];
    if (v40 < v41)
    {
      v40 = v41;
    }
  }

  else
  {
    [(ICTableTextViewManager *)self anchorPoint];
    v40 = v42 - v36;
  }

  v43 = [(ICTableTextViewManager *)self tableLayoutManager];
  [v43 setYPosition:v6 forRow:1 shouldInvalidate:v40];

  v44 = [(ICTableTextViewManager *)self contentView];
  v45 = [MEMORY[0x277CCABB0] numberWithDouble:v40];
  [v44 setHorizontalLinePosition:v45 forKey:v6];

  if (!v4)
  {
    [(ICTableTextViewManager *)self setAnchorRow:[(ICTableTextViewManager *)self anchorRow]- 1];
    [(ICTableTextViewManager *)self anchorPoint];
    v47 = v46;
    [(ICTableTextViewManager *)self anchorPoint];
    [(ICTableTextViewManager *)self setAnchorPoint:v47, v48 - v36];
  }

  v49 = [(ICTableTextViewManager *)self cachedRowHeights];
  [v49 setDimension:v6 forKey:v36];

  return v36;
}

- (double)ensureChunkOfPopulatedRowsForRow:(id)a3 shouldForce:(BOOL)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4)
  {
LABEL_12:
    v18 = [(ICTableTextViewManager *)self tableLayoutManager];
    v7 = [v18 table];

    v19 = [v7 rowIndexForIdentifier:v6];
    v20 = *MEMORY[0x277D36638] + v19;
    v21 = [v7 rowCount];
    if (v20 >= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    [(ICTableTextViewManager *)self boundingRect];
    MaxY = CGRectGetMaxY(v36);
    [(ICTableTextViewManager *)self anchorPoint];
    if (v19 < v22)
    {
      if (MaxY < v24)
      {
        MaxY = v24;
      }

      do
      {
        v25 = [v7 identifierForRowAtIndex:v19];
        [(ICTableTextViewManager *)self preAddRow:v25 atYPosition:MaxY];
        MaxY = MaxY + v26;

        ++v19;
      }

      while (v22 != v19);
    }
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = [(ICTableTextViewManager *)self columnIdentifiers];
    v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v31;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v30 + 1) + 8 * i);
          v13 = [(ICTableTextViewManager *)self tableLayoutManager];
          v14 = [v13 columnLayoutManagerForColumn:v12];

          v15 = [v14 columnTextStorage];
          v16 = [v15 populatedRows];
          v17 = [v16 containsObject:v6];

          if (!v17)
          {

            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  [(ICTableTextViewManager *)self addRow:v6 atEnd:1];
  v28 = v27;

  return v28;
}

- (double)preAddRow:(id)a3 atYPosition:(double)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(ICTableTextViewManager *)self cachedCellHeights];
  v8 = [v7 objectForKey:v6];

  v42 = v8;
  if (!v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D35EB0]) initWithComparator:&__block_literal_global_26];
    v10 = [(ICTableTextViewManager *)self cachedCellHeights];
    v42 = v9;
    [v10 setObject:v9 forKey:v6];
  }

  v11 = [(ICTableTextViewManager *)self columnIdentifiers];
  v12 = [(ICTableTextViewManager *)self prepopulatedColumns];
  v13 = [v12 allObjects];
  v14 = [v11 arrayByAddingObjectsFromArray:v13];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v14;
  v15 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v44;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v44 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v43 + 1) + 8 * i);
        v20 = [(ICTableTextViewManager *)self tableLayoutManager];
        v21 = [v20 columnLayoutManagerForColumn:v19];

        v22 = [v21 columnTextStorage];
        v23 = [v22 populatedRows];
        v24 = [v23 containsObject:v6];

        if ((v24 & 1) == 0)
        {
          v25 = [(ICTableTextViewManager *)self tableLayoutManager];
          v26 = [v25 rowPositions];
          v27 = [v26 objectForKey:v6];

          if (v27)
          {
            [v27 doubleValue];
            v29 = v28 != a4;
          }

          else
          {
            v29 = 0;
          }

          v30 = [(ICTableTextViewManager *)self tableLayoutManager];
          [v30 setYPosition:v6 forRow:v29 shouldInvalidate:a4];
        }

        [v21 heightOfCellAtRowID:v6];
        [v42 setDimension:v19 forKey:?];
      }

      v16 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v16);
  }

  v31 = [(ICTableTextViewManager *)self tableLayoutManager];
  [v31 setYPosition:v6 forRow:1 shouldInvalidate:a4];

  v32 = [(ICTableTextViewManager *)self contentView];
  v33 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  [v32 setHorizontalLinePosition:v33 forKey:v6];

  [v42 max];
  v35 = v34;
  v36 = [(ICTableTextViewManager *)self tableLayoutManager];
  [v36 emptyCellHeight];
  v38 = v37;

  if (v35 < v38)
  {
    v35 = v38;
  }

  v39 = [(ICTableTextViewManager *)self cachedRowHeights];
  [v39 setDimension:v6 forKey:v35];

  return v35;
}

- (void)ensureCellPositionForColumn:(id)a3 andRow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICTableTextViewManager *)self textViewForColumn:v6 createIfNeeded:1];
  v9 = [v8 superview];

  if (!v9)
  {
    v10 = [(ICTableTextViewManager *)self contentView];
    [v10 addSubview:v8];

    v11 = [(ICTableTextViewManager *)self tableLayoutManager];
    v12 = [v11 table];

    v13 = [v12 columnIndexForIdentifier:v6];
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_40:

      goto LABEL_41;
    }

    v14 = v13;
    v15 = [(ICTableTextViewManager *)self tableLayoutManager];
    v16 = [v15 columnWidthManager];
    [v16 widthOfColumn:v6];
    v18 = v17;

    if (!v14 && ([v12 isLeftToRight] & 1) != 0)
    {
      v19 = 0;
      v20 = 1;
LABEL_25:
      MaxX = 0.0;
      goto LABEL_28;
    }

    if (v14 != [v12 columnCount] - 1 || (MaxX = 0.0, (objc_msgSend(v12, "isRightToLeft") & 1) == 0))
    {
      if (v14 != [v12 columnCount] - 1 || (objc_msgSend(v12, "isLeftToRight") & 1) == 0)
      {
        if (v14)
        {
          v20 = 0;
          MaxX = 0.0;
LABEL_17:
          v24 = [v12 identifierForColumnAtIndex:v14 - 1];
          v19 = v24;
          if ((v20 & 1) == 0 && v24)
          {
            v25 = [(ICTableTextViewManager *)self columnTextViews];
            v26 = [v25 allKeys];
            v27 = [v26 containsObject:v19];

            if (v27)
            {
              v28 = [(ICTableTextViewManager *)self textViewForColumn:v19];
              v29 = [v12 isLeftToRight];
              [v28 frame];
              if (v29)
              {
                MaxX = CGRectGetMaxX(*&v30);
              }

              else
              {
                MaxX = CGRectGetMinX(*&v30) - v18;
              }

              v20 = 1;
            }

            else
            {
              v20 = 0;
            }
          }

LABEL_28:
          if (v14 >= [v12 columnCount] - 1)
          {
            v34 = 0;
          }

          else
          {
            v34 = [v12 identifierForColumnAtIndex:v14 + 1];
            if (v34)
            {
              v35 = v20;
            }

            else
            {
              v35 = 1;
            }

            if (v35 != 1)
            {
              v36 = [(ICTableTextViewManager *)self columnTextViews];
              v37 = [v36 allKeys];
              v38 = [v37 containsObject:v34];

              if (v38)
              {
                v39 = [(ICTableTextViewManager *)self textViewForColumn:v34];
                v40 = [v12 isLeftToRight];
                [v39 frame];
                if (v40)
                {
                  MaxX = CGRectGetMinX(*&v41) - v18;
                }

                else
                {
                  MaxX = CGRectGetMaxX(*&v41);
                }

                goto LABEL_39;
              }

              goto LABEL_38;
            }
          }

          if (v20)
          {
LABEL_39:
            v46 = [(ICTableTextViewManager *)self contentView];
            [v46 bounds];
            [v8 setFrame:{MaxX, 0.0, v18}];

            goto LABEL_40;
          }

LABEL_38:
          [(ICTableTextViewManager *)self frameOfCellAtColumn:v6 row:v7];
          MaxX = v45;
          goto LABEL_39;
        }

        if (![v12 isRightToLeft])
        {
          v19 = 0;
          v20 = 0;
          goto LABEL_25;
        }
      }

      if ([v12 isLeftToRight])
      {
        v51 = 0;
        v52 = &v51;
        v53 = 0x2020000000;
        v54 = 0;
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __61__ICTableTextViewManager_ensureCellPositionForColumn_andRow___block_invoke;
        v47[3] = &unk_2781AF9D8;
        v48 = v6;
        v49 = self;
        v50 = &v51;
        [v12 enumerateColumnsWithBlock:v47];
        MaxX = v52[3];

        _Block_object_dispose(&v51, 8);
      }

      else
      {
        v22 = [(ICTableTextViewManager *)self cachedColumnWidths];
        [v22 sum];
        MaxX = v23 - v18;
      }
    }

    v20 = 1;
    if (!v14)
    {
      v19 = 0;
      goto LABEL_28;
    }

    goto LABEL_17;
  }

LABEL_41:
}

void __61__ICTableTextViewManager_ensureCellPositionForColumn_andRow___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  if ([v10 isEqual:*(a1 + 32)])
  {
    *a4 = 1;
  }

  else
  {
    v6 = [*(a1 + 40) tableLayoutManager];
    v7 = [v6 columnWidthManager];
    [v7 widthOfColumn:v10];
    v9 = v8;

    *(*(*(a1 + 48) + 8) + 24) = v9 + *(*(*(a1 + 48) + 8) + 24);
  }
}

- (void)clearColumn:(id)a3
{
  v8 = a3;
  v4 = [(ICTableTextViewManager *)self columnTextViews];
  v5 = [v4 objectForKey:v8];

  if (([v5 ic_isFirstResponder] & 1) == 0)
  {
    [v5 removeFromSuperview];
  }

  v6 = [(ICTableTextViewManager *)self contentView];
  [v6 setVerticalLinePosition:0 forKey:v8];

  v7 = [(ICTableTextViewManager *)self columnIdentifiers];
  [v7 removeObject:v8];
}

- (void)clearRow:(id)a3
{
  v8 = a3;
  v4 = [(ICTableTextViewManager *)self rowIdentifiers];
  v5 = [v4 containsObject:v8];

  if (v5)
  {
    v6 = [(ICTableTextViewManager *)self contentView];
    [v6 setHorizontalLinePosition:0 forKey:v8];

    v7 = [(ICTableTextViewManager *)self rowIdentifiers];
    [v7 removeObject:v8];
  }
}

- (void)clearColumnsOutsideFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v50 = *MEMORY[0x277D85DE8];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = [(ICTableTextViewManager *)self columnIDs];
  v9 = [v8 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v45;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v45 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v44 + 1) + 8 * i);
        v14 = [(ICTableTextViewManager *)self columnTextViews];
        v15 = [v14 objectForKeyedSubscript:v13];

        [v15 frame];
        v17 = v16;
        [v15 frame];
        v53.size.width = v18;
        v51.origin.x = x;
        v51.origin.y = y;
        v51.size.width = width;
        v51.size.height = height;
        v53.origin.x = v17;
        v53.origin.y = y;
        v53.size.height = height;
        if (CGRectIntersectsRect(v51, v53) || (-[ICTableTextViewManager draggedColumns](self, "draggedColumns"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 containsObject:v13], v19, v20))
        {

          goto LABEL_12;
        }

        [(ICTableTextViewManager *)self clearColumn:v13];
        [(ICTableTextViewManager *)self setAnchorColumn:[(ICTableTextViewManager *)self anchorColumn]+ 1];
        v21 = [(ICTableTextViewManager *)self cachedColumnWidths];
        [v21 dimensionForKey:v13];
        v23 = v22;

        [(ICTableTextViewManager *)self anchorPoint];
        v25 = v23 + v24;
        [(ICTableTextViewManager *)self anchorPoint];
        [(ICTableTextViewManager *)self setAnchorPoint:v25];
      }

      v10 = [v8 countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v26 = [(ICTableTextViewManager *)self columnIDs];
  v27 = [v26 reverseObjectEnumerator];

  v28 = [v27 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v41;
    while (2)
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v41 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v40 + 1) + 8 * j);
        v33 = [(ICTableTextViewManager *)self columnTextViews];
        v34 = [v33 objectForKeyedSubscript:v32];

        [v34 frame];
        v36 = v35;
        [v34 frame];
        v54.size.width = v37;
        v52.origin.x = x;
        v52.origin.y = y;
        v52.size.width = width;
        v52.size.height = height;
        v54.origin.x = v36;
        v54.origin.y = y;
        v54.size.height = height;
        if (CGRectIntersectsRect(v52, v54) || (-[ICTableTextViewManager draggedColumns](self, "draggedColumns"), v38 = objc_claimAutoreleasedReturnValue(), v39 = [v38 containsObject:v32], v38, v39))
        {

          goto LABEL_23;
        }

        [(ICTableTextViewManager *)self clearColumn:v32];
      }

      v29 = [v27 countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v29)
      {
        continue;
      }

      break;
    }
  }

LABEL_23:
}

- (void)clearRowsOutsideFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v56 = *MEMORY[0x277D85DE8];
  v8 = [(ICTableTextViewManager *)self columnIDs];
  v9 = [v8 firstObject];

  if (v9)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v10 = [(ICTableTextViewManager *)self rowIDs];
    v11 = [v10 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v51;
LABEL_4:
      v14 = 0;
      while (1)
      {
        if (*v51 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v50 + 1) + 8 * v14);
        v16 = [(ICTableTextViewManager *)self tableLayoutManager];
        v17 = [v16 rowPositions];
        v18 = [v17 objectForKey:v15];
        [v18 doubleValue];
        v20 = v19;

        v21 = [(ICTableTextViewManager *)self cachedRowHeights];
        [v21 dimensionForKey:v15];
        v23 = v22;

        v57.origin.x = x;
        v57.origin.y = y;
        v57.size.width = width;
        v57.size.height = height;
        v59.origin.x = x;
        v59.origin.y = v20;
        v59.size.width = width;
        v59.size.height = v23;
        if (CGRectIntersectsRect(v57, v59))
        {
          break;
        }

        v24 = [(ICTableTextViewManager *)self draggedRows];
        v25 = [v24 containsObject:v15];

        if (v25)
        {
          break;
        }

        [(ICTableTextViewManager *)self clearRow:v15];
        [(ICTableTextViewManager *)self setAnchorRow:[(ICTableTextViewManager *)self anchorRow]+ 1];
        [(ICTableTextViewManager *)self anchorPoint];
        v27 = v26;
        [(ICTableTextViewManager *)self anchorPoint];
        [(ICTableTextViewManager *)self setAnchorPoint:v27, v23 + v28];
        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v50 objects:v55 count:16];
          if (v12)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v29 = [(ICTableTextViewManager *)self rowIDs];
    v30 = [v29 reverseObjectEnumerator];

    v31 = [v30 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v47;
LABEL_13:
      v34 = 0;
      while (1)
      {
        if (*v47 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v46 + 1) + 8 * v34);
        v36 = [(ICTableTextViewManager *)self tableLayoutManager];
        v37 = [v36 rowPositions];
        v38 = [v37 objectForKey:v35];
        [v38 doubleValue];
        v40 = v39;

        v41 = [(ICTableTextViewManager *)self cachedRowHeights];
        [v41 dimensionForKey:v35];
        v43 = v42;

        v58.origin.x = x;
        v58.origin.y = y;
        v58.size.width = width;
        v58.size.height = height;
        v60.origin.x = x;
        v60.origin.y = v40;
        v60.size.width = width;
        v60.size.height = v43;
        if (CGRectIntersectsRect(v58, v60))
        {
          break;
        }

        v44 = [(ICTableTextViewManager *)self draggedRows];
        v45 = [v44 containsObject:v35];

        if (v45)
        {
          break;
        }

        [(ICTableTextViewManager *)self clearRow:v35];
        if (v32 == ++v34)
        {
          v32 = [v30 countByEnumeratingWithState:&v46 objects:v54 count:16];
          if (v32)
          {
            goto LABEL_13;
          }

          break;
        }
      }
    }
  }
}

- (CGPoint)updateTilesWithViewport:(CGRect)a3 redrawAll:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v140 = *MEMORY[0x277D85DE8];
  v10 = [(ICTableTextViewManager *)self isUpdatingTiles];
  v11 = MEMORY[0x277CBF348];
  if (v10)
  {
    v12 = *MEMORY[0x277CBF348];
    v13 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    [(ICTableTextViewManager *)self setUpdatingTiles:1];
    [(ICTableTextViewManager *)self boundingRect];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v129 = self;
    v22 = [(ICTableTextViewManager *)self tableLayoutManager];
    v23 = [v22 table];

    v152.size.width = width;
    v152.origin.y = y;
    v125 = *v11;
    obj = v11[1];
    v142.origin.x = v15;
    v142.origin.y = v17;
    v142.size.width = v19;
    v142.size.height = v21;
    v152.origin.x = x;
    v152.size.height = height;
    if (CGRectContainsRect(v142, v152) && (v143.origin.x = v15, v143.origin.y = v17, v143.size.width = v19, v143.size.height = v21, !CGRectIsEmpty(v143)))
    {
      v13 = obj;
      v12 = v125;
      v37 = self;
    }

    else
    {
      v121 = v21;
      v122 = v19;
      [(ICTableTextViewManager *)self clearColumnsOutsideFrame:x, y, width, height];
      [(ICTableTextViewManager *)self clearRowsOutsideFrame:x, y, width, height];
      v24 = [(ICTableTextViewManager *)self draggedColumns];
      v25 = [v24 count];

      if (v25)
      {
        v26 = objc_alloc(MEMORY[0x277CBEB58]);
        v27 = [(ICTableTextViewManager *)self columnIdentifiers];
        v28 = [v26 initWithArray:v27];

        v29 = [(ICTableTextViewManager *)self draggedColumns];
        [v28 intersectSet:v29];

        v25 = [v28 count];
      }

      v30 = [(ICTableTextViewManager *)self draggedRows];
      v31 = [v30 count];

      v123 = v17;
      v124 = v15;
      if (v31)
      {
        v32 = objc_alloc(MEMORY[0x277CBEB58]);
        v33 = [(ICTableTextViewManager *)self rowIdentifiers];
        v34 = [v32 initWithArray:v33];

        v35 = [(ICTableTextViewManager *)self draggedRows];
        [v34 intersectSet:v35];

        v36 = [v34 count];
      }

      else
      {
        v36 = 0;
      }

      v37 = self;
      [(ICTableTextViewManager *)self anchorPoint];
      v39 = v38;
      v144.origin.x = x;
      v144.origin.y = y;
      v144.size.width = width;
      rect = height;
      v144.size.height = height;
      MinX = CGRectGetMinX(v144);
      v41 = [(ICTableTextViewManager *)self anchorColumn];
      v12 = v125;
      if (v39 > MinX)
      {
        v42 = v41 + v25;
        v12 = v125;
        if ((v41 + v25) >= 1)
        {
          v12 = v125;
          do
          {
            if (([v23 isLeftToRight] & 1) == 0)
            {
              [v23 columnCount];
            }

            --v42;
            v43 = [v23 identifierForColumnAtIndex:?];
            if (v43)
            {
              v44 = [(ICTableTextViewManager *)self columnIdentifiers];
              v45 = [v44 containsObject:v43];

              if ((v45 & 1) == 0)
              {
                v46 = [(ICTableTextViewManager *)self cachedColumnWidths];
                [v46 dimensionForKey:v43];
                v48 = v47;

                [(ICTableTextViewManager *)self addColumn:v43 atEnd:0];
                v39 = v39 - v49;
                v12 = v12 + v49 - v48;
              }
            }
          }

          while (v39 > MinX && v42 > 0);
        }
      }

      [(ICTableTextViewManager *)self anchorPoint];
      v51 = v50;
      v145.origin.y = v123;
      v145.origin.x = v124;
      v145.size.height = v21;
      v145.size.width = v122;
      MaxX = CGRectGetMaxX(v145);
      if (v51 >= MaxX)
      {
        v53 = v51;
      }

      else
      {
        v53 = MaxX;
      }

      v146.origin.x = x;
      v146.origin.y = y;
      v146.size.width = width;
      v146.size.height = rect;
      v54 = CGRectGetMaxX(v146);
      v55 = [(ICTableTextViewManager *)self anchorColumn];
      v56 = [(ICTableTextViewManager *)self columnIDs];
      v57 = [v56 count];

      if (v53 < v54)
      {
        v58 = v55 - v25 + v57;
        do
        {
          if (v58 >= [v23 columnCount])
          {
            break;
          }

          if ([v23 isLeftToRight])
          {
            v59 = v58++;
          }

          else
          {
            ++v58;
            v59 = [v23 columnCount] - v58;
          }

          v60 = [v23 identifierForColumnAtIndex:v59];
          if (v60)
          {
            v61 = [(ICTableTextViewManager *)v129 columnIdentifiers];
            v62 = [v61 containsObject:v60];

            if ((v62 & 1) == 0)
            {
              [(ICTableTextViewManager *)v129 ensureChunkOfPopulatedColumnsForColumn:v60];
              v53 = v53 + v63;
            }
          }
        }

        while (v53 < v54);
      }

      [(ICTableTextViewManager *)v129 anchorPoint];
      v65 = v64;
      v147.origin.x = x;
      v147.origin.y = y;
      v147.size.width = width;
      v147.size.height = rect;
      MinY = CGRectGetMinY(v147);
      v67 = [(ICTableTextViewManager *)v129 anchorRow]+ v36;
      v68 = v65 <= MinY || v67 < 1;
      v13 = obj;
      if (!v68)
      {
        v13 = obj;
        do
        {
          v69 = [v23 identifierForRowAtIndex:v67 - 1];
          if (v69)
          {
            v70 = [(ICTableTextViewManager *)v129 rowIdentifiers];
            v71 = [v70 containsObject:v69];

            if ((v71 & 1) == 0)
            {
              v72 = [(ICTableTextViewManager *)v129 cachedRowHeights];
              [v72 dimensionForKey:v69];
              v74 = v73;

              [(ICTableTextViewManager *)v129 addRow:v69 atEnd:0];
              v65 = v65 - v75;
              v13 = v13 + v75 - v74;
            }
          }
        }

        while (v65 > MinY && v67-- > 1);
      }

      [(ICTableTextViewManager *)v129 anchorPoint];
      v78 = v77;
      v148.origin.y = v123;
      v148.origin.x = v124;
      v148.size.height = v121;
      v148.size.width = v122;
      MaxY = CGRectGetMaxY(v148);
      if (v78 >= MaxY)
      {
        v80 = v78;
      }

      else
      {
        v80 = MaxY;
      }

      v149.origin.x = x;
      v149.origin.y = y;
      v149.size.width = width;
      v149.size.height = rect;
      v81 = CGRectGetMaxY(v149);
      v82 = [(ICTableTextViewManager *)v129 anchorRow];
      v83 = [(ICTableTextViewManager *)v129 rowIDs];
      v84 = [v83 count];

      if (v80 < v81)
      {
        v85 = v82 - v36 + v84;
        do
        {
          if (v85 >= [v23 rowCount])
          {
            break;
          }

          v86 = [v23 identifierForRowAtIndex:v85];
          if (v86)
          {
            v87 = [(ICTableTextViewManager *)v129 rowIdentifiers];
            v88 = [v87 containsObject:v86];

            if ((v88 & 1) == 0)
            {
              [(ICTableTextViewManager *)v129 ensureChunkOfPopulatedRowsForRow:v86 shouldForce:v4];
              v80 = v80 + v89;
            }
          }

          ++v85;
        }

        while (v80 < v81);
      }

      v90 = [(ICTableTextViewManager *)v129 contentView];
      if (v12 != v125 || v13 != obj)
      {
        v120 = v23;
        if (v12 != 0.0)
        {
          v136 = 0u;
          v137 = 0u;
          v134 = 0u;
          v135 = 0u;
          v92 = [(ICTableTextViewManager *)v129 columnIdentifiers];
          v93 = [v92 countByEnumeratingWithState:&v134 objects:v139 count:16];
          if (v93)
          {
            v94 = v93;
            v95 = *v135;
            do
            {
              for (i = 0; i != v94; ++i)
              {
                if (*v135 != v95)
                {
                  objc_enumerationMutation(v92);
                }

                v97 = *(*(&v134 + 1) + 8 * i);
                v98 = [(ICTableTextViewManager *)v129 columnTextViews];
                v99 = [v98 objectForKeyedSubscript:v97];

                [v99 frame];
                v151 = CGRectOffset(v150, v12, 0.0);
                [v99 setFrame:{v151.origin.x, v151.origin.y, v151.size.width, v151.size.height}];
                v100 = MEMORY[0x277CCABB0];
                [v99 frame];
                v101 = [v100 numberWithDouble:?];
                [v90 setVerticalLinePosition:v101 forKey:v97];
              }

              v94 = [v92 countByEnumeratingWithState:&v134 objects:v139 count:16];
            }

            while (v94);
          }

          v23 = v120;
        }

        if (v13 != 0.0)
        {
          v132 = 0u;
          v133 = 0u;
          v130 = 0u;
          v131 = 0u;
          obja = [(ICTableTextViewManager *)v129 rowIdentifiers];
          v102 = [obja countByEnumeratingWithState:&v130 objects:v138 count:16];
          if (v102)
          {
            v103 = v102;
            v104 = *v131;
            do
            {
              for (j = 0; j != v103; ++j)
              {
                if (*v131 != v104)
                {
                  objc_enumerationMutation(obja);
                }

                v106 = *(*(&v130 + 1) + 8 * j);
                v107 = [(ICTableTextViewManager *)v129 tableLayoutManager];
                v108 = [v107 rowPositions];
                v109 = [v108 objectForKey:v106];
                [v109 doubleValue];
                v111 = v110;

                v112 = v13 + v111;
                v113 = [(ICTableTextViewManager *)v129 tableLayoutManager];
                [v113 setYPosition:v106 forRow:1 shouldInvalidate:v112];

                v114 = [MEMORY[0x277CCABB0] numberWithDouble:v112];
                [v90 setHorizontalLinePosition:v114 forKey:v106];
              }

              v103 = [obja countByEnumeratingWithState:&v130 objects:v138 count:16];
            }

            while (v103);
          }

          v37 = v129;
          v23 = v120;
        }

        [(ICTableTextViewManager *)v37 anchorPoint];
        v116 = v12 + v115;
        [(ICTableTextViewManager *)v37 anchorPoint];
        [(ICTableTextViewManager *)v37 setAnchorPoint:v116, v13 + v117];
      }
    }

    [(ICTableTextViewManager *)v37 setUpdatingTiles:0];
  }

  v118 = v12;
  v119 = v13;
  result.y = v119;
  result.x = v118;
  return result;
}

- (CGPoint)redrawAllWithViewport:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v41 = *MEMORY[0x277D85DE8];
  v8 = [(ICTableTextViewManager *)self tableLayoutManager];
  v9 = [v8 table];
  v10 = [(ICTableTextViewManager *)self rowIdentifiers];
  v11 = [v10 copy];
  v12 = [v9 rowsIntersectingWithRows:v11];
  [(ICTableTextViewManager *)self setPreviousRowIdentifiers:v12];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v13 = [(ICTableTextViewManager *)self rowIdentifiers];
  v14 = [v13 copy];

  v15 = [v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v36;
    do
    {
      v18 = 0;
      do
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(ICTableTextViewManager *)self clearRow:*(*(&v35 + 1) + 8 * v18++)];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v16);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v19 = [(ICTableTextViewManager *)self columnIdentifiers];
  v20 = [v19 copy];

  v21 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v32;
    do
    {
      v24 = 0;
      do
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(ICTableTextViewManager *)self clearColumn:*(*(&v31 + 1) + 8 * v24++)];
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v22);
  }

  [(ICTableTextViewManager *)self updateTilesWithViewport:1 redrawAll:x, y, width, height];
  v26 = v25;
  v28 = v27;
  [(ICTableTextViewManager *)self setPreviousRowIdentifiers:0];
  v29 = v26;
  v30 = v28;
  result.y = v30;
  result.x = v29;
  return result;
}

- (void)heightChangedForRow:(id)a3 by:(double)a4
{
  v21 = a3;
  if (a4 != 0.0)
  {
    v6 = [(ICTableTextViewManager *)self rowIdentifiers];
    v7 = [v6 indexOfObject:v21];

    v8 = [(ICTableTextViewManager *)self rowIdentifiers];
    v9 = [v8 count];

    v10 = v7 + 1;
    if (v10 < v9)
    {
      do
      {
        v11 = [(ICTableTextViewManager *)self rowIdentifiers];
        v12 = [v11 objectAtIndex:v10];

        v13 = [(ICTableTextViewManager *)self tableLayoutManager];
        v14 = [v13 rowPositions];
        v15 = [v14 objectForKey:v12];
        [v15 doubleValue];
        v17 = v16 + a4;

        v18 = [(ICTableTextViewManager *)self tableLayoutManager];
        [v18 setYPosition:v12 forRow:1 shouldInvalidate:v17];

        v19 = [(ICTableTextViewManager *)self contentView];
        v20 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
        [v19 setHorizontalLinePosition:v20 forKey:v12];

        ++v10;
      }

      while (v9 != v10);
    }
  }
}

- (void)removeColumn:(id)a3
{
  v7 = a3;
  v4 = [(ICTableTextViewManager *)self columnTextViews];
  v5 = [v4 objectForKey:v7];

  [v5 removeFromSuperview];
  if (v5)
  {
    v6 = [(ICTableTextViewManager *)self columnTextViews];
    [v6 removeObjectForKey:v7];
  }
}

- (void)moveColumnAtIndex:(unint64_t)a3 toIndex:(unint64_t)a4
{
  v7 = [(ICTableTextViewManager *)self columnIdentifiers];
  v10 = [v7 objectAtIndex:a3];

  v8 = [(ICTableTextViewManager *)self columnIdentifiers];
  [v8 removeObjectAtIndex:a3];

  v9 = [(ICTableTextViewManager *)self columnIdentifiers];
  [v9 insertObject:v10 atIndex:a4];
}

- (void)moveRowAtIndex:(unint64_t)a3 toIndex:(unint64_t)a4
{
  v7 = [(ICTableTextViewManager *)self rowIdentifiers];
  v10 = [v7 objectAtIndex:a3];

  v8 = [(ICTableTextViewManager *)self rowIdentifiers];
  [v8 removeObjectAtIndex:a3];

  v9 = [(ICTableTextViewManager *)self rowIdentifiers];
  [v9 insertObject:v10 atIndex:a4];
}

- (BOOL)cellContainingPoint:(CGPoint)a3 columnID:(id *)a4 rowID:(id *)a5
{
  y = a3.y;
  x = a3.x;
  v43 = *MEMORY[0x277D85DE8];
  v10 = [(ICTableTextViewManager *)self contentView];
  v11 = [v10 hitTest:0 withEvent:{x, y}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v12 = ICCheckedDynamicCast();
    v13 = [v12 columnID];
    if (v13)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v14 = [(ICTableTextViewManager *)self rowIdentifiers];
      v15 = [v14 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v15)
      {
        v16 = v15;
        v36 = v13;
        v37 = v12;
        v34 = a4;
        v35 = a5;
        v17 = *v39;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v39 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v38 + 1) + 8 * i);
            v20 = [(ICTableTextViewManager *)self tableLayoutManager];
            v21 = [v20 rowPositions];
            v22 = [v21 objectForKey:v19];
            [v22 doubleValue];
            v24 = v23;

            v25 = [(ICTableTextViewManager *)self cachedRowHeights];
            [v25 dimensionForKey:v19];
            v27 = v26;

            v28 = v24 + v27;
            if (v24 <= y && v28 >= y)
            {
              v13 = v36;
              v30 = v36;
              *v34 = v36;
              v31 = v19;
              *v35 = v19;
              v32 = 1;
              v12 = v37;
              goto LABEL_19;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v38 objects:v42 count:{16, v28}];
        }

        while (v16);
        v32 = 0;
        v13 = v36;
        v12 = v37;
      }

      else
      {
        v32 = 0;
      }

LABEL_19:
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (id)columnContainingX:(double)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(ICTableTextViewManager *)self columnIdentifiers];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(ICTableTextViewManager *)self textViewForColumn:v10];
        [v11 frame];
        if (CGRectGetMinX(v21) <= a3)
        {
          [v11 frame];
          if (CGRectGetMaxX(v22) >= a3)
          {
            v12 = v10;

            goto LABEL_12;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (id)rowContainingY:(double)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(ICTableTextViewManager *)self rowIdentifiers];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [(ICTableTextViewManager *)self tableLayoutManager];
        v12 = [v11 rowPositions];
        v13 = [v12 objectForKey:v10];
        [v13 doubleValue];
        v15 = v14;

        v16 = [(ICTableTextViewManager *)self cachedRowHeights];
        [v16 dimensionForKey:v10];
        v18 = v17;

        v19 = v15 + v18;
        if (v15 <= a3 && v19 >= a3)
        {
          v21 = v10;
          goto LABEL_14;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:{16, v19}];
    }

    while (v7);
  }

  v21 = 0;
LABEL_14:

  return v21;
}

- (id)textViewForColumn:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(ICTableTextViewManager *)self columnTextViews];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (!v8 && v4)
  {
    v9 = [(ICTableTextViewManager *)self tableLayoutManager];
    v10 = [v9 columnLayoutManagerForColumn:v6];

    v11 = [ICTableColumnTextView alloc];
    v12 = [v10 textContainer];
    v8 = [(ICTableColumnTextView *)v11 initWithFrame:v12 textContainer:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

    [(ICTableColumnTextView *)v8 setAutoresizingMask:20];
    [v10 setTextView:v8];
    [(ICTableColumnTextView *)v8 setDataDetectorTypes:-1];
    v13 = [(ICTableTextViewManager *)self delegate];
    v14 = [v13 noteTextView];
    -[ICTableColumnTextView _setDataOwnerForCopy:](v8, "_setDataOwnerForCopy:", [v14 _dataOwnerForCopy]);

    v15 = [(ICTableTextViewManager *)self delegate];
    v16 = [v15 noteTextView];
    -[ICTableColumnTextView _setDataOwnerForPaste:](v8, "_setDataOwnerForPaste:", [v16 _dataOwnerForPaste]);

    v17 = [(ICTableTextViewManager *)self delegate];
    v18 = [v17 noteTextView];
    v19 = [v18 editorController];
    [(ICTableColumnTextView *)v8 setEditorController:v19];

    v20 = [(ICTableColumnTextView *)v8 textContainer];
    [v20 setWidthTracksTextView:1];

    v21 = [(ICTableColumnTextView *)v8 textContainer];
    [v21 setHeightTracksTextView:0];

    [(ICTableColumnTextView *)v8 setSelectable:1];
    [(ICTableColumnTextView *)v8 setColumnID:v6];
    v22 = [v10 textContainer];
    [v22 replaceLayoutManager:v10];

    v23 = [(ICTableTextViewManager *)self columnTextViews];
    [v23 setObject:v8 forKeyedSubscript:v6];

    v24 = [(ICTableTextViewManager *)self delegate];

    if (v24)
    {
      v25 = [(ICTableTextViewManager *)self delegate];
      [v25 setupTableTextView:v8];
    }
  }

  return v8;
}

- (void)parentViewDidChange
{
  v3 = [(ICTableTextViewManager *)self delegate];

  if (v3)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __45__ICTableTextViewManager_parentViewDidChange__block_invoke;
    v4[3] = &unk_2781AC718;
    v4[4] = self;
    [(ICTableTextViewManager *)self enumerateTextViewsWithBlock:v4];
  }
}

void __45__ICTableTextViewManager_parentViewDidChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = [v2 delegate];
  v4 = [v6 noteTextView];
  v5 = [v4 editorController];
  [v3 setEditorController:v5];
}

- (void)restyleCells
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(ICTableTextViewManager *)self columnsNeedingRestyle];

  if (!v3)
  {
    v4 = MEMORY[0x277CBEB58];
    v5 = [(ICTableTextViewManager *)self columnTextViews];
    v6 = [v4 setWithCapacity:{objc_msgSend(v5, "count")}];
    [(ICTableTextViewManager *)self setColumnsNeedingRestyle:v6];
  }

  v7 = [(ICTableTextViewManager *)self columnsNeedingRestyle];
  v8 = [(ICTableTextViewManager *)self prepopulatedColumns];
  [v7 unionSet:v8];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(ICTableTextViewManager *)self columnTextViews];
  v10 = [v9 allKeys];

  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        v16 = [(ICTableTextViewManager *)self columnsNeedingRestyle];
        [v16 addObject:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __38__ICTableTextViewManager_restyleCells__block_invoke;
  v17[3] = &unk_2781AC718;
  v17[4] = self;
  [(ICTableTextViewManager *)self enumerateTextViewsWithBlock:v17];
}

- (void)restyleTextView:(id)a3
{
  v4 = a3;
  v14 = [v4 columnTextStorage];
  [v14 setShouldPreventUndoCommands:1];
  [v14 beginPreventEditingUpdates];
  v5 = [(ICTableTextViewManager *)self delegate];
  v6 = [v5 noteTextView];
  v7 = [v6 TTTextStorage];
  v8 = [v7 styler];
  v9 = [v8 zoomController];
  v10 = [v14 styler];
  [v10 setZoomController:v9];

  v11 = [v14 styler];
  [v11 styleText:v14 inRange:0 fixModelAttributes:{objc_msgSend(v14, "length"), 0}];

  [v14 endPreventEditingUpdates];
  [v14 setShouldPreventUndoCommands:0];
  v12 = [(ICTableTextViewManager *)self columnsNeedingRestyle];
  v13 = [v4 columnID];

  [v12 removeObject:v13];
}

void __48__ICTableTextViewManager_updateAuthorHighlights__block_invoke(uint64_t a1, void *a2)
{
  v7 = [a2 columnTextStorage];
  objc_opt_class();
  v2 = [v7 styler];
  v3 = ICDynamicCast();

  v4 = [v3 authorHighlightsController];
  v5 = [v7 ic_range];
  [v4 performHighlightUpdatesForRange:v5 inTextStorage:v6 updates:{v7, 0}];
}

- (CGRect)frameOfCellAtColumn:(id)a3 row:(id)a4
{
  v6 = a3;
  v7 = a4;
  x = *MEMORY[0x277CBF3A0];
  y = *(MEMORY[0x277CBF3A0] + 8);
  width = *(MEMORY[0x277CBF3A0] + 16);
  height = *(MEMORY[0x277CBF3A0] + 24);
  v12 = [(ICTableTextViewManager *)self tableLayoutManager];
  v13 = [v12 columnWidthManager];

  v14 = [(ICTableTextViewManager *)self tableLayoutManager];
  v15 = [v14 table];

  v16 = [(ICTableTextViewManager *)self anchorColumn];
  v17 = [(ICTableTextViewManager *)self anchorRow];
  [(ICTableTextViewManager *)self boundingRect];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [(ICTableTextViewManager *)self columnTextViews];
  v27 = [v26 objectForKey:v6];

  v85 = v27;
  rect = v23;
  if (v27 && (-[ICTableTextViewManager columnIdentifiers](self, "columnIdentifiers"), v28 = objc_claimAutoreleasedReturnValue(), v29 = [v28 containsObject:v6], v28, v29))
  {
    v30 = v25;
    [v27 frame];
    v32 = v31;
    v86.origin.x = x;
    v86.origin.y = y;
    v86.size.width = width;
    v86.size.height = height;
    v87 = CGRectOffset(v86, v32, 0.0);
    x = v87.origin.x;
    y = v87.origin.y;
    width = v87.size.width;
    height = v87.size.height;
  }

  else if ([v15 containsColumn:{v6, *&v23, v27}])
  {
    v33 = [v15 columnIndexForIdentifier:v6];
    v34 = [(ICTableTextViewManager *)self columnIdentifiers];
    v35 = [v34 count] + v16;

    if (v33 >= v35)
    {
      v100.origin.x = v19;
      v100.origin.y = v21;
      v100.size.width = v23;
      v30 = v25;
      v100.size.height = v25;
      MaxX = CGRectGetMaxX(v100);
      v101.origin.x = x;
      v101.origin.y = y;
      v101.size.width = width;
      v101.size.height = height;
      v102 = CGRectOffset(v101, MaxX, 0.0);
      x = v102.origin.x;
      y = v102.origin.y;
      width = v102.size.width;
      height = v102.size.height;
      v68 = [(ICTableTextViewManager *)self columnIdentifiers];
      v69 = [v68 count] + v16;

      while (v69 < v33)
      {
        v70 = [v15 identifierForColumnAtIndex:v69];
        [v13 widthOfColumn:v70];
        v72 = v71;
        v73 = [(ICTableTextViewManager *)self cachedColumnWidths];
        [v73 setDimension:v70 forKey:v72];

        v103.origin.x = x;
        v103.origin.y = y;
        v103.size.width = width;
        v103.size.height = height;
        v104 = CGRectOffset(v103, v72, 0.0);
        x = v104.origin.x;
        y = v104.origin.y;
        width = v104.size.width;
        height = v104.size.height;

        ++v69;
      }
    }

    else
    {
      if (v33 >= v16)
      {
        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"columnIndex < origColumn" functionName:"-[ICTableTextViewManager frameOfCellAtColumn:row:]" simulateCrash:1 showAlert:0 format:@"Expected column to be outside current cells"];
      }

      v88.origin.x = v19;
      v88.origin.y = v21;
      v88.size.width = v23;
      v30 = v25;
      v88.size.height = v25;
      MinX = CGRectGetMinX(v88);
      v89.origin.x = x;
      v89.origin.y = y;
      v89.size.width = width;
      v89.size.height = height;
      v90 = CGRectOffset(v89, MinX, 0.0);
      x = v90.origin.x;
      y = v90.origin.y;
      width = v90.size.width;
      height = v90.size.height;
      while (v16 > v33)
      {
        v37 = [v15 identifierForColumnAtIndex:--v16];
        [v13 widthOfColumn:v37];
        v39 = v38;
        v40 = [(ICTableTextViewManager *)self cachedColumnWidths];
        [v40 setDimension:v37 forKey:v39];

        v91.origin.x = x;
        v91.origin.y = y;
        v91.size.width = width;
        v91.size.height = height;
        v92 = CGRectOffset(v91, -v39, 0.0);
        x = v92.origin.x;
        y = v92.origin.y;
        width = v92.size.width;
        height = v92.size.height;
      }
    }
  }

  else
  {
    v30 = v25;
  }

  v41 = [(ICTableTextViewManager *)self rowIdentifiers];
  v42 = [v41 containsObject:v7];

  if (v42)
  {
    v43 = [(ICTableTextViewManager *)self tableLayoutManager];
    v44 = [v43 rowPositions];
    v45 = [v44 objectForKey:v7];
    [v45 doubleValue];
    v47 = v46;

    v93.origin.x = x;
    v93.origin.y = y;
    v93.size.width = width;
    v93.size.height = height;
    v94 = CGRectOffset(v93, 0.0, v47);
    x = v94.origin.x;
    y = v94.origin.y;
  }

  else if ([v15 containsRow:v7])
  {
    v48 = [v15 rowIndexForIdentifier:v7];
    v49 = [(ICTableTextViewManager *)self rowIdentifiers];
    v50 = [v49 count] + v17;

    if (v48 >= v50)
    {
      v105.origin.x = v19;
      v105.origin.y = v21;
      v105.size.width = recta;
      v105.size.height = v30;
      MaxY = CGRectGetMaxY(v105);
      v106.origin.x = x;
      v106.origin.y = y;
      v106.size.width = width;
      v106.size.height = height;
      v107 = CGRectOffset(v106, 0.0, MaxY);
      x = v107.origin.x;
      y = v107.origin.y;
      v75 = v107.size.width;
      v76 = v107.size.height;
      v77 = [(ICTableTextViewManager *)self rowIdentifiers];
      v78 = [v77 count] + v17;

      while (v78 < v48)
      {
        v79 = [v15 identifierForRowAtIndex:v78];
        v80 = [(ICTableTextViewManager *)self cachedRowHeights];
        [v80 dimensionForKey:v79];
        v82 = v81;

        v108.origin.x = x;
        v108.origin.y = y;
        v108.size.width = v75;
        v108.size.height = v76;
        v109 = CGRectOffset(v108, 0.0, v82);
        x = v109.origin.x;
        y = v109.origin.y;
        v75 = v109.size.width;
        v76 = v109.size.height;

        ++v78;
      }
    }

    else
    {
      if (v48 >= v17)
      {
        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"rowIndex < origRow" functionName:"-[ICTableTextViewManager frameOfCellAtColumn:row:]" simulateCrash:1 showAlert:0 format:@"Expected row to be outside current cells"];
      }

      v95.origin.x = v19;
      v95.origin.y = v21;
      v95.size.width = recta;
      v95.size.height = v30;
      MinY = CGRectGetMinY(v95);
      v96.origin.x = x;
      v96.origin.y = y;
      v96.size.width = width;
      v96.size.height = height;
      v97 = CGRectOffset(v96, 0.0, MinY);
      x = v97.origin.x;
      y = v97.origin.y;
      if (v48 < v17)
      {
        v52 = v97.size.width;
        v53 = v97.size.height;
        do
        {
          v54 = [v15 identifierForRowAtIndex:--v17];
          v55 = [(ICTableTextViewManager *)self cachedRowHeights];
          [v55 dimensionForKey:v54];
          v57 = v56;

          v98.origin.x = x;
          v98.origin.y = y;
          v98.size.width = v52;
          v98.size.height = v53;
          v99 = CGRectOffset(v98, 0.0, -v57);
          x = v99.origin.x;
          y = v99.origin.y;
          v52 = v99.size.width;
          v53 = v99.size.height;
        }

        while (v17 > v48);
      }
    }
  }

  [v13 widthOfColumn:v6];
  v59 = v58;
  v60 = [(ICTableTextViewManager *)self cachedRowHeights];
  [v60 dimensionForKey:v7];
  v62 = v61;

  v63 = x;
  v64 = y;
  v65 = v59;
  v66 = v62;
  result.size.height = v66;
  result.size.width = v65;
  result.origin.y = v64;
  result.origin.x = v63;
  return result;
}

- (CGRect)frameOfColumn:(id)a3
{
  v4 = a3;
  v5 = [(ICTableTextViewManager *)self columnTextViews];
  v6 = [v5 objectForKeyedSubscript:v4];

  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)frameOfRow:(id)a3
{
  v4 = a3;
  v5 = [(ICTableTextViewManager *)self tableLayoutManager];
  v6 = [v5 rowPositions];
  v7 = [v6 objectForKey:v4];
  [v7 doubleValue];
  v9 = v8;

  v10 = [(ICTableTextViewManager *)self cachedRowHeights];
  [v10 dimensionForKey:v4];
  v12 = v11;

  v13 = [(ICTableTextViewManager *)self contentView];
  [v13 bounds];
  v15 = v14;

  v16 = 0.0;
  v17 = v9;
  v18 = v15;
  v19 = v12;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (ICTableTextViewManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ICTableContentView)contentView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  return WeakRetained;
}

- (CGPoint)anchorPoint
{
  x = self->_anchorPoint.x;
  y = self->_anchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end