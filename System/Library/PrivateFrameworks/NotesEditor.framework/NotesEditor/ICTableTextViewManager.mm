@interface ICTableTextViewManager
- (BOOL)cellContainingPoint:(CGPoint)point columnID:(id *)d rowID:(id *)iD;
- (CGPoint)anchorPoint;
- (CGPoint)initialScrollPointForViewport:(CGRect)viewport;
- (CGPoint)redrawAllWithViewport:(CGRect)viewport;
- (CGPoint)updateTilesWithViewport:(CGRect)viewport redrawAll:(BOOL)all;
- (CGRect)boundingRect;
- (CGRect)frameOfCellAtColumn:(id)column row:(id)row;
- (CGRect)frameOfColumn:(id)column;
- (CGRect)frameOfRow:(id)row;
- (ICTableContentView)contentView;
- (ICTableTextViewManager)init;
- (ICTableTextViewManager)initWithTableLayoutManager:(id)manager view:(id)view cachedWidths:(id)widths cachedRowHeights:(id)heights cachedCellHeights:(id)cellHeights;
- (ICTableTextViewManagerDelegate)delegate;
- (NSArray)columnIDs;
- (NSArray)rowIDs;
- (double)addColumn:(id)column atEnd:(BOOL)end;
- (double)addRow:(id)row atEnd:(BOOL)end;
- (double)ensureChunkOfPopulatedColumnsForColumn:(id)column;
- (double)ensureChunkOfPopulatedRowsForRow:(id)row shouldForce:(BOOL)force;
- (double)preAddColumn:(id)column;
- (double)preAddRow:(id)row atYPosition:(double)position;
- (id)columnContainingX:(double)x;
- (id)rowContainingY:(double)y;
- (id)textViewForColumn:(id)column createIfNeeded:(BOOL)needed;
- (void)adjustOnscreenPositions;
- (void)clearColumn:(id)column;
- (void)clearColumnsOutsideFrame:(CGRect)frame;
- (void)clearRow:(id)row;
- (void)clearRowsOutsideFrame:(CGRect)frame;
- (void)dealloc;
- (void)ensureCellPositionForColumn:(id)column andRow:(id)row;
- (void)enumerateTextViewsWithBlock:(id)block;
- (void)heightChangedForRow:(id)row by:(double)by;
- (void)moveColumnAtIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)moveRowAtIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)parentViewDidChange;
- (void)removeColumn:(id)column;
- (void)restyleCells;
- (void)restyleTextView:(id)view;
- (void)validateRowHeightsForColumn:(id)column;
@end

@implementation ICTableTextViewManager

- (ICTableTextViewManager)init
{
  [(ICTableTextViewManager *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICTableTextViewManager)initWithTableLayoutManager:(id)manager view:(id)view cachedWidths:(id)widths cachedRowHeights:(id)heights cachedCellHeights:(id)cellHeights
{
  managerCopy = manager;
  viewCopy = view;
  widthsCopy = widths;
  heightsCopy = heights;
  cellHeightsCopy = cellHeights;
  v28.receiver = self;
  v28.super_class = ICTableTextViewManager;
  v18 = [(ICTableTextViewManager *)&v28 init];
  if (v18)
  {
    array = [MEMORY[0x277CBEB18] array];
    columnIdentifiers = v18->_columnIdentifiers;
    v18->_columnIdentifiers = array;

    array2 = [MEMORY[0x277CBEB18] array];
    rowIdentifiers = v18->_rowIdentifiers;
    v18->_rowIdentifiers = array2;

    v23 = [MEMORY[0x277CBEB58] set];
    prepopulatedColumns = v18->_prepopulatedColumns;
    v18->_prepopulatedColumns = v23;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    columnTextViews = v18->_columnTextViews;
    v18->_columnTextViews = dictionary;

    objc_storeStrong(&v18->_tableLayoutManager, manager);
    objc_storeWeak(&v18->_contentView, viewCopy);
    objc_storeStrong(&v18->_cachedColumnWidths, widths);
    objc_storeStrong(&v18->_cachedRowHeights, heights);
    objc_storeStrong(&v18->_cachedCellHeights, cellHeights);
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
  columnTextViews = [(ICTableTextViewManager *)self columnTextViews];
  allValues = [columnTextViews allValues];

  v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * v8++) removeFromSuperview];
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9.receiver = self;
  v9.super_class = ICTableTextViewManager;
  [(ICTableTextViewManager *)&v9 dealloc];
}

- (CGPoint)initialScrollPointForViewport:(CGRect)viewport
{
  height = viewport.size.height;
  width = viewport.size.width;
  y = viewport.origin.y;
  x = viewport.origin.x;
  v8 = MEMORY[0x277CBF348];
  v9 = *(MEMORY[0x277CBF348] + 8);
  tableLayoutManager = [(ICTableTextViewManager *)self tableLayoutManager];
  table = [tableLayoutManager table];

  if ([table isRightToLeft])
  {
    tableLayoutManager2 = [(ICTableTextViewManager *)self tableLayoutManager];
    table2 = [tableLayoutManager2 table];
    columnWidthManager = [tableLayoutManager2 columnWidthManager];
    columnCount = [table2 columnCount];
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v16 = CGRectGetWidth(v30);
    cachedColumnWidths = [(ICTableTextViewManager *)self cachedColumnWidths];
    if (v16 > 0.0 && columnCount)
    {
      v18 = 0.0;
      v19 = 1;
      do
      {
        v20 = [table2 identifierForColumnAtIndex:v19 - 1];
        [columnWidthManager widthOfColumn:v20];
        v22 = v21;
        [cachedColumnWidths setDimension:v20 forKey:?];
        v18 = v18 + v22;
      }

      while (v18 < v16 && v19++ < columnCount);
    }

    [cachedColumnWidths sum];
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
  columnTextViews = [(ICTableTextViewManager *)self columnTextViews];
  columnIdentifiers = [(ICTableTextViewManager *)self columnIdentifiers];
  lastObject = [columnIdentifiers lastObject];
  v6 = [columnTextViews objectForKeyedSubscript:lastObject];

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

  rowIdentifiers = [(ICTableTextViewManager *)self rowIdentifiers];
  lastObject2 = [rowIdentifiers lastObject];

  tableLayoutManager = [(ICTableTextViewManager *)self tableLayoutManager];
  rowPositions = [tableLayoutManager rowPositions];
  v15 = [rowPositions objectForKeyedSubscript:lastObject2];
  [v15 doubleValue];
  v17 = v16;

  cachedRowHeights = [(ICTableTextViewManager *)self cachedRowHeights];
  [cachedRowHeights dimensionForKey:lastObject2];
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
  columnIdentifiers = [(ICTableTextViewManager *)self columnIdentifiers];
  v3 = [columnIdentifiers copy];

  return v3;
}

- (NSArray)rowIDs
{
  rowIdentifiers = [(ICTableTextViewManager *)self rowIdentifiers];
  v3 = [rowIdentifiers copy];

  return v3;
}

- (void)enumerateTextViewsWithBlock:(id)block
{
  v19 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v17 = 0;
  columnTextViews = [(ICTableTextViewManager *)self columnTextViews];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  columnIdentifiers = [(ICTableTextViewManager *)self columnIdentifiers];
  v7 = [columnIdentifiers countByEnumeratingWithState:&v13 objects:v18 count:16];
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
        objc_enumerationMutation(columnIdentifiers);
      }

      v11 = [columnTextViews objectForKeyedSubscript:*(*(&v13 + 1) + 8 * v10)];
      blockCopy[2](blockCopy, v11, &v17);
      v12 = v17;

      if (v12)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [columnIdentifiers countByEnumeratingWithState:&v13 objects:v18 count:16];
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
  columnIDs = [(ICTableTextViewManager *)self columnIDs];
  v9 = [columnIDs countByEnumeratingWithState:&v42 objects:v47 count:16];
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
          objc_enumerationMutation(columnIDs);
        }

        v13 = *(*(&v42 + 1) + 8 * v12);
        columnTextViews = [(ICTableTextViewManager *)self columnTextViews];
        v15 = [columnTextViews objectForKey:v13];

        if (!v15)
        {
          [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((columnTextView) != nil)" functionName:"-[ICTableTextViewManager adjustOnscreenPositions]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "columnTextView"}];
        }

        cachedColumnWidths = [(ICTableTextViewManager *)self cachedColumnWidths];
        [cachedColumnWidths dimensionForKey:v13];
        v18 = v17;

        [v15 frame];
        v20 = v19;
        [v15 frame];
        [v15 setFrame:{MinX, v20, v18}];
        contentView = [(ICTableTextViewManager *)self contentView];
        v22 = [MEMORY[0x277CCABB0] numberWithDouble:MinX];
        [contentView setVerticalLinePosition:v22 forKey:v13];

        MinX = MinX + v18;
        ++v12;
      }

      while (v10 != v12);
      v10 = [columnIDs countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v10);
  }

  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  MinY = CGRectGetMinY(v50);
  rowIdentifiers = [(ICTableTextViewManager *)self rowIdentifiers];
  if ([rowIdentifiers count])
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
        contentView2 = [(ICTableTextViewManager *)self contentView];
        v33 = [MEMORY[0x277CCABB0] numberWithDouble:MinY];
        [contentView2 setHorizontalLinePosition:v33 forKey:v31];

        tableLayoutManager = [(ICTableTextViewManager *)self tableLayoutManager];
        [tableLayoutManager setYPosition:v31 forRow:1 shouldInvalidate:MinY];

        cachedRowHeights = [(ICTableTextViewManager *)self cachedRowHeights];
        [cachedRowHeights dimensionForKey:v31];
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

- (void)validateRowHeightsForColumn:(id)column
{
  v51 = *MEMORY[0x277D85DE8];
  columnCopy = column;
  rowIdentifiers = [(ICTableTextViewManager *)self rowIdentifiers];
  if ([rowIdentifiers count])
  {
    [(ICTableTextViewManager *)self rowIdentifiers];
  }

  else
  {
    [(ICTableTextViewManager *)self previousRowIdentifiers];
  }
  v5 = ;

  tableLayoutManager = [(ICTableTextViewManager *)self tableLayoutManager];
  table = [tableLayoutManager table];
  v8 = [table textStorageForColumn:columnCopy];

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

  tableLayoutManager2 = [(ICTableTextViewManager *)self tableLayoutManager];
  v15 = [tableLayoutManager2 columnLayoutManagerForColumn:columnCopy];

  if ([v9 count])
  {
    firstObject = [v9 firstObject];
    lastObject = [v9 lastObject];
    v18 = [v8 characterRangeForRowID:firstObject];
    v20 = v19;
    v53.location = [v8 characterRangeForRowID:lastObject];
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
        cachedCellHeights = [(ICTableTextViewManager *)self cachedCellHeights];
        v32 = [cachedCellHeights objectForKey:v30];

        if (!v32)
        {
          [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((cellHeightsForRow) != nil)" functionName:"-[ICTableTextViewManager validateRowHeightsForColumn:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "cellHeightsForRow"}];
        }

        [v15 heightOfCellAtRowID:v30];
        [v32 setDimension:columnCopy forKey:?];
        cachedRowHeights = [(ICTableTextViewManager *)self cachedRowHeights];
        [cachedRowHeights dimensionForKey:v30];
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
          cachedRowHeights2 = [(ICTableTextViewManager *)self cachedRowHeights];
          [cachedRowHeights2 setDimension:v30 forKey:v37];

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

- (double)addColumn:(id)column atEnd:(BOOL)end
{
  endCopy = end;
  columnCopy = column;
  [(ICTableTextViewManager *)self validateRowHeightsForColumn:columnCopy];
  [(ICTableTextViewManager *)self boundingRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  columnIdentifiers = [(ICTableTextViewManager *)self columnIdentifiers];
  v16 = columnIdentifiers;
  if (endCopy)
  {
    columnIdentifiers2 = [(ICTableTextViewManager *)self columnIdentifiers];
    [v16 insertObject:columnCopy atIndex:{objc_msgSend(columnIdentifiers2, "count")}];
  }

  else
  {
    [columnIdentifiers insertObject:columnCopy atIndex:0];
  }

  prepopulatedColumns = [(ICTableTextViewManager *)self prepopulatedColumns];
  v19 = [prepopulatedColumns containsObject:columnCopy];

  if (v19)
  {
    prepopulatedColumns2 = [(ICTableTextViewManager *)self prepopulatedColumns];
    [prepopulatedColumns2 removeObject:columnCopy];
  }

  tableLayoutManager = [(ICTableTextViewManager *)self tableLayoutManager];
  columnWidthManager = [tableLayoutManager columnWidthManager];
  [columnWidthManager widthOfColumn:columnCopy];
  v24 = v23;

  if (endCopy)
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

  contentView = [(ICTableTextViewManager *)self contentView];
  [contentView bounds];
  v30 = v29;

  v31 = [(ICTableTextViewManager *)self textViewForColumn:columnCopy createIfNeeded:1];
  [v31 setFrame:{MaxX, 0.0, v24, v30}];
  contentView2 = [(ICTableTextViewManager *)self contentView];
  [contentView2 addSubview:v31];

  columnsNeedingRestyle = [(ICTableTextViewManager *)self columnsNeedingRestyle];
  v34 = [columnsNeedingRestyle containsObject:columnCopy];

  if (v34)
  {
    [(ICTableTextViewManager *)self restyleTextView:v31];
  }

  [(ICTableTextViewManager *)self updateAuthorHighlights];
  contentView3 = [(ICTableTextViewManager *)self contentView];
  v36 = [MEMORY[0x277CCABB0] numberWithDouble:MaxX];
  [contentView3 setVerticalLinePosition:v36 forKey:columnCopy];

  if (!endCopy)
  {
    [(ICTableTextViewManager *)self setAnchorColumn:[(ICTableTextViewManager *)self anchorColumn]- 1];
    [(ICTableTextViewManager *)self anchorPoint];
    v38 = v37 - v24;
    [(ICTableTextViewManager *)self anchorPoint];
    [(ICTableTextViewManager *)self setAnchorPoint:v38];
  }

  cachedColumnWidths = [(ICTableTextViewManager *)self cachedColumnWidths];
  [cachedColumnWidths setDimension:columnCopy forKey:v24];

  [(ICTableTextViewManager *)self validateRowHeightsForColumn:columnCopy];
  return v24;
}

- (double)ensureChunkOfPopulatedColumnsForColumn:(id)column
{
  columnCopy = column;
  tableLayoutManager = [(ICTableTextViewManager *)self tableLayoutManager];
  v6 = [tableLayoutManager columnLayoutManagerForColumn:columnCopy];

  columnTextStorage = [v6 columnTextStorage];
  populatedRows = [columnTextStorage populatedRows];
  v9 = [populatedRows count];

  if (!v9)
  {
    tableLayoutManager2 = [(ICTableTextViewManager *)self tableLayoutManager];
    table = [tableLayoutManager2 table];

    v12 = [table columnIndexForIdentifier:columnCopy];
    v13 = *MEMORY[0x277D36600] + v12;
    columnCount = [table columnCount];
    if (v13 >= columnCount)
    {
      v15 = columnCount;
    }

    else
    {
      v15 = v13;
    }

    if (v12 < v15)
    {
      do
      {
        v16 = [table identifierForColumnAtIndex:v12];
        [(ICTableTextViewManager *)self preAddColumn:v16];

        ++v12;
      }

      while (v15 != v12);
    }
  }

  [(ICTableTextViewManager *)self addColumn:columnCopy atEnd:1];
  v18 = v17;

  return v18;
}

- (double)preAddColumn:(id)column
{
  columnCopy = column;
  [(ICTableTextViewManager *)self validateRowHeightsForColumn:columnCopy];
  tableLayoutManager = [(ICTableTextViewManager *)self tableLayoutManager];
  columnWidthManager = [tableLayoutManager columnWidthManager];
  [columnWidthManager widthOfColumn:columnCopy];
  v8 = v7;

  columnIdentifiers = [(ICTableTextViewManager *)self columnIdentifiers];
  LOBYTE(columnWidthManager) = [columnIdentifiers containsObject:columnCopy];

  if ((columnWidthManager & 1) == 0)
  {
    prepopulatedColumns = [(ICTableTextViewManager *)self prepopulatedColumns];
    [prepopulatedColumns addObject:columnCopy];
  }

  cachedColumnWidths = [(ICTableTextViewManager *)self cachedColumnWidths];
  [cachedColumnWidths setDimension:columnCopy forKey:v8];

  return v8;
}

- (double)addRow:(id)row atEnd:(BOOL)end
{
  endCopy = end;
  v59 = *MEMORY[0x277D85DE8];
  rowCopy = row;
  [(ICTableTextViewManager *)self boundingRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  rowIdentifiers = [(ICTableTextViewManager *)self rowIdentifiers];
  v16 = rowIdentifiers;
  if (endCopy)
  {
    rowIdentifiers2 = [(ICTableTextViewManager *)self rowIdentifiers];
    [v16 insertObject:rowCopy atIndex:{objc_msgSend(rowIdentifiers2, "count")}];
  }

  else
  {
    [rowIdentifiers insertObject:rowCopy atIndex:0];
  }

  cachedCellHeights = [(ICTableTextViewManager *)self cachedCellHeights];
  v19 = [cachedCellHeights objectForKey:rowCopy];

  if (!v19)
  {
    v19 = [objc_alloc(MEMORY[0x277D35EB0]) initWithComparator:&__block_literal_global_31];
    cachedCellHeights2 = [(ICTableTextViewManager *)self cachedCellHeights];
    [cachedCellHeights2 setObject:v19 forKey:rowCopy];
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
    selfCopy = self;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v55 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v54 + 1) + 8 * i);
        tableLayoutManager = [(ICTableTextViewManager *)self tableLayoutManager];
        v53 = v25;
        v27 = [tableLayoutManager columnLayoutManagerForColumn:v25];

        if (endCopy)
        {
          columnTextStorage = [v27 columnTextStorage];
          [columnTextStorage populatedRows];
          v30 = v29 = endCopy;
          v31 = [v30 containsObject:rowCopy];

          endCopy = v29;
          self = selfCopy;

          if ((v31 & 1) == 0)
          {
            v60.origin.x = v8;
            v60.origin.y = v10;
            v60.size.width = v12;
            v60.size.height = v14;
            MaxY = CGRectGetMaxY(v60);
            [(ICTableTextViewManager *)selfCopy anchorPoint];
            if (MaxY < v33)
            {
              MaxY = v33;
            }

            tableLayoutManager2 = [(ICTableTextViewManager *)selfCopy tableLayoutManager];
            [tableLayoutManager2 setYPosition:rowCopy forRow:0 shouldInvalidate:MaxY];
          }
        }

        [v27 heightOfCellAtRowID:rowCopy];
        [v19 setDimension:v53 forKey:?];
      }

      v22 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v22);
  }

  [v19 max];
  v36 = v35;
  tableLayoutManager3 = [(ICTableTextViewManager *)self tableLayoutManager];
  [tableLayoutManager3 emptyCellHeight];
  v39 = v38;

  if (v36 < v39)
  {
    v36 = v39;
  }

  if (endCopy)
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

  tableLayoutManager4 = [(ICTableTextViewManager *)self tableLayoutManager];
  [tableLayoutManager4 setYPosition:rowCopy forRow:1 shouldInvalidate:v40];

  contentView = [(ICTableTextViewManager *)self contentView];
  v45 = [MEMORY[0x277CCABB0] numberWithDouble:v40];
  [contentView setHorizontalLinePosition:v45 forKey:rowCopy];

  if (!endCopy)
  {
    [(ICTableTextViewManager *)self setAnchorRow:[(ICTableTextViewManager *)self anchorRow]- 1];
    [(ICTableTextViewManager *)self anchorPoint];
    v47 = v46;
    [(ICTableTextViewManager *)self anchorPoint];
    [(ICTableTextViewManager *)self setAnchorPoint:v47, v48 - v36];
  }

  cachedRowHeights = [(ICTableTextViewManager *)self cachedRowHeights];
  [cachedRowHeights setDimension:rowCopy forKey:v36];

  return v36;
}

- (double)ensureChunkOfPopulatedRowsForRow:(id)row shouldForce:(BOOL)force
{
  v35 = *MEMORY[0x277D85DE8];
  rowCopy = row;
  if (force)
  {
LABEL_12:
    tableLayoutManager = [(ICTableTextViewManager *)self tableLayoutManager];
    table = [tableLayoutManager table];

    v19 = [table rowIndexForIdentifier:rowCopy];
    v20 = *MEMORY[0x277D36638] + v19;
    rowCount = [table rowCount];
    if (v20 >= rowCount)
    {
      v22 = rowCount;
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
        v25 = [table identifierForRowAtIndex:v19];
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
    table = [(ICTableTextViewManager *)self columnIdentifiers];
    v8 = [table countByEnumeratingWithState:&v30 objects:v34 count:16];
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
            objc_enumerationMutation(table);
          }

          v12 = *(*(&v30 + 1) + 8 * i);
          tableLayoutManager2 = [(ICTableTextViewManager *)self tableLayoutManager];
          v14 = [tableLayoutManager2 columnLayoutManagerForColumn:v12];

          columnTextStorage = [v14 columnTextStorage];
          populatedRows = [columnTextStorage populatedRows];
          v17 = [populatedRows containsObject:rowCopy];

          if (!v17)
          {

            goto LABEL_12;
          }
        }

        v9 = [table countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  [(ICTableTextViewManager *)self addRow:rowCopy atEnd:1];
  v28 = v27;

  return v28;
}

- (double)preAddRow:(id)row atYPosition:(double)position
{
  v48 = *MEMORY[0x277D85DE8];
  rowCopy = row;
  cachedCellHeights = [(ICTableTextViewManager *)self cachedCellHeights];
  v8 = [cachedCellHeights objectForKey:rowCopy];

  v42 = v8;
  if (!v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D35EB0]) initWithComparator:&__block_literal_global_26];
    cachedCellHeights2 = [(ICTableTextViewManager *)self cachedCellHeights];
    v42 = v9;
    [cachedCellHeights2 setObject:v9 forKey:rowCopy];
  }

  columnIdentifiers = [(ICTableTextViewManager *)self columnIdentifiers];
  prepopulatedColumns = [(ICTableTextViewManager *)self prepopulatedColumns];
  allObjects = [prepopulatedColumns allObjects];
  v14 = [columnIdentifiers arrayByAddingObjectsFromArray:allObjects];

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
        tableLayoutManager = [(ICTableTextViewManager *)self tableLayoutManager];
        v21 = [tableLayoutManager columnLayoutManagerForColumn:v19];

        columnTextStorage = [v21 columnTextStorage];
        populatedRows = [columnTextStorage populatedRows];
        v24 = [populatedRows containsObject:rowCopy];

        if ((v24 & 1) == 0)
        {
          tableLayoutManager2 = [(ICTableTextViewManager *)self tableLayoutManager];
          rowPositions = [tableLayoutManager2 rowPositions];
          v27 = [rowPositions objectForKey:rowCopy];

          if (v27)
          {
            [v27 doubleValue];
            v29 = v28 != position;
          }

          else
          {
            v29 = 0;
          }

          tableLayoutManager3 = [(ICTableTextViewManager *)self tableLayoutManager];
          [tableLayoutManager3 setYPosition:rowCopy forRow:v29 shouldInvalidate:position];
        }

        [v21 heightOfCellAtRowID:rowCopy];
        [v42 setDimension:v19 forKey:?];
      }

      v16 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v16);
  }

  tableLayoutManager4 = [(ICTableTextViewManager *)self tableLayoutManager];
  [tableLayoutManager4 setYPosition:rowCopy forRow:1 shouldInvalidate:position];

  contentView = [(ICTableTextViewManager *)self contentView];
  v33 = [MEMORY[0x277CCABB0] numberWithDouble:position];
  [contentView setHorizontalLinePosition:v33 forKey:rowCopy];

  [v42 max];
  v35 = v34;
  tableLayoutManager5 = [(ICTableTextViewManager *)self tableLayoutManager];
  [tableLayoutManager5 emptyCellHeight];
  v38 = v37;

  if (v35 < v38)
  {
    v35 = v38;
  }

  cachedRowHeights = [(ICTableTextViewManager *)self cachedRowHeights];
  [cachedRowHeights setDimension:rowCopy forKey:v35];

  return v35;
}

- (void)ensureCellPositionForColumn:(id)column andRow:(id)row
{
  columnCopy = column;
  rowCopy = row;
  v8 = [(ICTableTextViewManager *)self textViewForColumn:columnCopy createIfNeeded:1];
  superview = [v8 superview];

  if (!superview)
  {
    contentView = [(ICTableTextViewManager *)self contentView];
    [contentView addSubview:v8];

    tableLayoutManager = [(ICTableTextViewManager *)self tableLayoutManager];
    table = [tableLayoutManager table];

    v13 = [table columnIndexForIdentifier:columnCopy];
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_40:

      goto LABEL_41;
    }

    v14 = v13;
    tableLayoutManager2 = [(ICTableTextViewManager *)self tableLayoutManager];
    columnWidthManager = [tableLayoutManager2 columnWidthManager];
    [columnWidthManager widthOfColumn:columnCopy];
    v18 = v17;

    if (!v14 && ([table isLeftToRight] & 1) != 0)
    {
      v19 = 0;
      v20 = 1;
LABEL_25:
      MaxX = 0.0;
      goto LABEL_28;
    }

    if (v14 != [table columnCount] - 1 || (MaxX = 0.0, (objc_msgSend(table, "isRightToLeft") & 1) == 0))
    {
      if (v14 != [table columnCount] - 1 || (objc_msgSend(table, "isLeftToRight") & 1) == 0)
      {
        if (v14)
        {
          v20 = 0;
          MaxX = 0.0;
LABEL_17:
          v24 = [table identifierForColumnAtIndex:v14 - 1];
          v19 = v24;
          if ((v20 & 1) == 0 && v24)
          {
            columnTextViews = [(ICTableTextViewManager *)self columnTextViews];
            allKeys = [columnTextViews allKeys];
            v27 = [allKeys containsObject:v19];

            if (v27)
            {
              v28 = [(ICTableTextViewManager *)self textViewForColumn:v19];
              isLeftToRight = [table isLeftToRight];
              [v28 frame];
              if (isLeftToRight)
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
          if (v14 >= [table columnCount] - 1)
          {
            v34 = 0;
          }

          else
          {
            v34 = [table identifierForColumnAtIndex:v14 + 1];
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
              columnTextViews2 = [(ICTableTextViewManager *)self columnTextViews];
              allKeys2 = [columnTextViews2 allKeys];
              v38 = [allKeys2 containsObject:v34];

              if (v38)
              {
                v39 = [(ICTableTextViewManager *)self textViewForColumn:v34];
                isLeftToRight2 = [table isLeftToRight];
                [v39 frame];
                if (isLeftToRight2)
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
            contentView2 = [(ICTableTextViewManager *)self contentView];
            [contentView2 bounds];
            [v8 setFrame:{MaxX, 0.0, v18}];

            goto LABEL_40;
          }

LABEL_38:
          [(ICTableTextViewManager *)self frameOfCellAtColumn:columnCopy row:rowCopy];
          MaxX = v45;
          goto LABEL_39;
        }

        if (![table isRightToLeft])
        {
          v19 = 0;
          v20 = 0;
          goto LABEL_25;
        }
      }

      if ([table isLeftToRight])
      {
        v51 = 0;
        v52 = &v51;
        v53 = 0x2020000000;
        v54 = 0;
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __61__ICTableTextViewManager_ensureCellPositionForColumn_andRow___block_invoke;
        v47[3] = &unk_2781AF9D8;
        v48 = columnCopy;
        selfCopy = self;
        v50 = &v51;
        [table enumerateColumnsWithBlock:v47];
        MaxX = v52[3];

        _Block_object_dispose(&v51, 8);
      }

      else
      {
        cachedColumnWidths = [(ICTableTextViewManager *)self cachedColumnWidths];
        [cachedColumnWidths sum];
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

- (void)clearColumn:(id)column
{
  columnCopy = column;
  columnTextViews = [(ICTableTextViewManager *)self columnTextViews];
  v5 = [columnTextViews objectForKey:columnCopy];

  if (([v5 ic_isFirstResponder] & 1) == 0)
  {
    [v5 removeFromSuperview];
  }

  contentView = [(ICTableTextViewManager *)self contentView];
  [contentView setVerticalLinePosition:0 forKey:columnCopy];

  columnIdentifiers = [(ICTableTextViewManager *)self columnIdentifiers];
  [columnIdentifiers removeObject:columnCopy];
}

- (void)clearRow:(id)row
{
  rowCopy = row;
  rowIdentifiers = [(ICTableTextViewManager *)self rowIdentifiers];
  v5 = [rowIdentifiers containsObject:rowCopy];

  if (v5)
  {
    contentView = [(ICTableTextViewManager *)self contentView];
    [contentView setHorizontalLinePosition:0 forKey:rowCopy];

    rowIdentifiers2 = [(ICTableTextViewManager *)self rowIdentifiers];
    [rowIdentifiers2 removeObject:rowCopy];
  }
}

- (void)clearColumnsOutsideFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v50 = *MEMORY[0x277D85DE8];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  columnIDs = [(ICTableTextViewManager *)self columnIDs];
  v9 = [columnIDs countByEnumeratingWithState:&v44 objects:v49 count:16];
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
          objc_enumerationMutation(columnIDs);
        }

        v13 = *(*(&v44 + 1) + 8 * i);
        columnTextViews = [(ICTableTextViewManager *)self columnTextViews];
        v15 = [columnTextViews objectForKeyedSubscript:v13];

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
        cachedColumnWidths = [(ICTableTextViewManager *)self cachedColumnWidths];
        [cachedColumnWidths dimensionForKey:v13];
        v23 = v22;

        [(ICTableTextViewManager *)self anchorPoint];
        v25 = v23 + v24;
        [(ICTableTextViewManager *)self anchorPoint];
        [(ICTableTextViewManager *)self setAnchorPoint:v25];
      }

      v10 = [columnIDs countByEnumeratingWithState:&v44 objects:v49 count:16];
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
  columnIDs2 = [(ICTableTextViewManager *)self columnIDs];
  reverseObjectEnumerator = [columnIDs2 reverseObjectEnumerator];

  v28 = [reverseObjectEnumerator countByEnumeratingWithState:&v40 objects:v48 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v32 = *(*(&v40 + 1) + 8 * j);
        columnTextViews2 = [(ICTableTextViewManager *)self columnTextViews];
        v34 = [columnTextViews2 objectForKeyedSubscript:v32];

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

      v29 = [reverseObjectEnumerator countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v29)
      {
        continue;
      }

      break;
    }
  }

LABEL_23:
}

- (void)clearRowsOutsideFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v56 = *MEMORY[0x277D85DE8];
  columnIDs = [(ICTableTextViewManager *)self columnIDs];
  firstObject = [columnIDs firstObject];

  if (firstObject)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    rowIDs = [(ICTableTextViewManager *)self rowIDs];
    v11 = [rowIDs countByEnumeratingWithState:&v50 objects:v55 count:16];
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
          objc_enumerationMutation(rowIDs);
        }

        v15 = *(*(&v50 + 1) + 8 * v14);
        tableLayoutManager = [(ICTableTextViewManager *)self tableLayoutManager];
        rowPositions = [tableLayoutManager rowPositions];
        v18 = [rowPositions objectForKey:v15];
        [v18 doubleValue];
        v20 = v19;

        cachedRowHeights = [(ICTableTextViewManager *)self cachedRowHeights];
        [cachedRowHeights dimensionForKey:v15];
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

        draggedRows = [(ICTableTextViewManager *)self draggedRows];
        v25 = [draggedRows containsObject:v15];

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
          v12 = [rowIDs countByEnumeratingWithState:&v50 objects:v55 count:16];
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
    rowIDs2 = [(ICTableTextViewManager *)self rowIDs];
    reverseObjectEnumerator = [rowIDs2 reverseObjectEnumerator];

    v31 = [reverseObjectEnumerator countByEnumeratingWithState:&v46 objects:v54 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v35 = *(*(&v46 + 1) + 8 * v34);
        tableLayoutManager2 = [(ICTableTextViewManager *)self tableLayoutManager];
        rowPositions2 = [tableLayoutManager2 rowPositions];
        v38 = [rowPositions2 objectForKey:v35];
        [v38 doubleValue];
        v40 = v39;

        cachedRowHeights2 = [(ICTableTextViewManager *)self cachedRowHeights];
        [cachedRowHeights2 dimensionForKey:v35];
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

        draggedRows2 = [(ICTableTextViewManager *)self draggedRows];
        v45 = [draggedRows2 containsObject:v35];

        if (v45)
        {
          break;
        }

        [(ICTableTextViewManager *)self clearRow:v35];
        if (v32 == ++v34)
        {
          v32 = [reverseObjectEnumerator countByEnumeratingWithState:&v46 objects:v54 count:16];
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

- (CGPoint)updateTilesWithViewport:(CGRect)viewport redrawAll:(BOOL)all
{
  allCopy = all;
  height = viewport.size.height;
  width = viewport.size.width;
  y = viewport.origin.y;
  x = viewport.origin.x;
  v140 = *MEMORY[0x277D85DE8];
  isUpdatingTiles = [(ICTableTextViewManager *)self isUpdatingTiles];
  v11 = MEMORY[0x277CBF348];
  if (isUpdatingTiles)
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
    selfCopy = self;
    tableLayoutManager = [(ICTableTextViewManager *)self tableLayoutManager];
    table = [tableLayoutManager table];

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
      selfCopy3 = self;
    }

    else
    {
      v121 = v21;
      v122 = v19;
      [(ICTableTextViewManager *)self clearColumnsOutsideFrame:x, y, width, height];
      [(ICTableTextViewManager *)self clearRowsOutsideFrame:x, y, width, height];
      draggedColumns = [(ICTableTextViewManager *)self draggedColumns];
      v25 = [draggedColumns count];

      if (v25)
      {
        v26 = objc_alloc(MEMORY[0x277CBEB58]);
        columnIdentifiers = [(ICTableTextViewManager *)self columnIdentifiers];
        v28 = [v26 initWithArray:columnIdentifiers];

        draggedColumns2 = [(ICTableTextViewManager *)self draggedColumns];
        [v28 intersectSet:draggedColumns2];

        v25 = [v28 count];
      }

      draggedRows = [(ICTableTextViewManager *)self draggedRows];
      v31 = [draggedRows count];

      v123 = v17;
      v124 = v15;
      if (v31)
      {
        v32 = objc_alloc(MEMORY[0x277CBEB58]);
        rowIdentifiers = [(ICTableTextViewManager *)self rowIdentifiers];
        v34 = [v32 initWithArray:rowIdentifiers];

        draggedRows2 = [(ICTableTextViewManager *)self draggedRows];
        [v34 intersectSet:draggedRows2];

        v36 = [v34 count];
      }

      else
      {
        v36 = 0;
      }

      selfCopy3 = self;
      [(ICTableTextViewManager *)self anchorPoint];
      v39 = v38;
      v144.origin.x = x;
      v144.origin.y = y;
      v144.size.width = width;
      rect = height;
      v144.size.height = height;
      MinX = CGRectGetMinX(v144);
      anchorColumn = [(ICTableTextViewManager *)self anchorColumn];
      v12 = v125;
      if (v39 > MinX)
      {
        v42 = anchorColumn + v25;
        v12 = v125;
        if ((anchorColumn + v25) >= 1)
        {
          v12 = v125;
          do
          {
            if (([table isLeftToRight] & 1) == 0)
            {
              [table columnCount];
            }

            --v42;
            v43 = [table identifierForColumnAtIndex:?];
            if (v43)
            {
              columnIdentifiers2 = [(ICTableTextViewManager *)self columnIdentifiers];
              v45 = [columnIdentifiers2 containsObject:v43];

              if ((v45 & 1) == 0)
              {
                cachedColumnWidths = [(ICTableTextViewManager *)self cachedColumnWidths];
                [cachedColumnWidths dimensionForKey:v43];
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
      anchorColumn2 = [(ICTableTextViewManager *)self anchorColumn];
      columnIDs = [(ICTableTextViewManager *)self columnIDs];
      v57 = [columnIDs count];

      if (v53 < v54)
      {
        v58 = anchorColumn2 - v25 + v57;
        do
        {
          if (v58 >= [table columnCount])
          {
            break;
          }

          if ([table isLeftToRight])
          {
            v59 = v58++;
          }

          else
          {
            ++v58;
            v59 = [table columnCount] - v58;
          }

          v60 = [table identifierForColumnAtIndex:v59];
          if (v60)
          {
            columnIdentifiers3 = [(ICTableTextViewManager *)selfCopy columnIdentifiers];
            v62 = [columnIdentifiers3 containsObject:v60];

            if ((v62 & 1) == 0)
            {
              [(ICTableTextViewManager *)selfCopy ensureChunkOfPopulatedColumnsForColumn:v60];
              v53 = v53 + v63;
            }
          }
        }

        while (v53 < v54);
      }

      [(ICTableTextViewManager *)selfCopy anchorPoint];
      v65 = v64;
      v147.origin.x = x;
      v147.origin.y = y;
      v147.size.width = width;
      v147.size.height = rect;
      MinY = CGRectGetMinY(v147);
      v67 = [(ICTableTextViewManager *)selfCopy anchorRow]+ v36;
      v68 = v65 <= MinY || v67 < 1;
      v13 = obj;
      if (!v68)
      {
        v13 = obj;
        do
        {
          v69 = [table identifierForRowAtIndex:v67 - 1];
          if (v69)
          {
            rowIdentifiers2 = [(ICTableTextViewManager *)selfCopy rowIdentifiers];
            v71 = [rowIdentifiers2 containsObject:v69];

            if ((v71 & 1) == 0)
            {
              cachedRowHeights = [(ICTableTextViewManager *)selfCopy cachedRowHeights];
              [cachedRowHeights dimensionForKey:v69];
              v74 = v73;

              [(ICTableTextViewManager *)selfCopy addRow:v69 atEnd:0];
              v65 = v65 - v75;
              v13 = v13 + v75 - v74;
            }
          }
        }

        while (v65 > MinY && v67-- > 1);
      }

      [(ICTableTextViewManager *)selfCopy anchorPoint];
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
      anchorRow = [(ICTableTextViewManager *)selfCopy anchorRow];
      rowIDs = [(ICTableTextViewManager *)selfCopy rowIDs];
      v84 = [rowIDs count];

      if (v80 < v81)
      {
        v85 = anchorRow - v36 + v84;
        do
        {
          if (v85 >= [table rowCount])
          {
            break;
          }

          v86 = [table identifierForRowAtIndex:v85];
          if (v86)
          {
            rowIdentifiers3 = [(ICTableTextViewManager *)selfCopy rowIdentifiers];
            v88 = [rowIdentifiers3 containsObject:v86];

            if ((v88 & 1) == 0)
            {
              [(ICTableTextViewManager *)selfCopy ensureChunkOfPopulatedRowsForRow:v86 shouldForce:allCopy];
              v80 = v80 + v89;
            }
          }

          ++v85;
        }

        while (v80 < v81);
      }

      contentView = [(ICTableTextViewManager *)selfCopy contentView];
      if (v12 != v125 || v13 != obj)
      {
        v120 = table;
        if (v12 != 0.0)
        {
          v136 = 0u;
          v137 = 0u;
          v134 = 0u;
          v135 = 0u;
          columnIdentifiers4 = [(ICTableTextViewManager *)selfCopy columnIdentifiers];
          v93 = [columnIdentifiers4 countByEnumeratingWithState:&v134 objects:v139 count:16];
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
                  objc_enumerationMutation(columnIdentifiers4);
                }

                v97 = *(*(&v134 + 1) + 8 * i);
                columnTextViews = [(ICTableTextViewManager *)selfCopy columnTextViews];
                v99 = [columnTextViews objectForKeyedSubscript:v97];

                [v99 frame];
                v151 = CGRectOffset(v150, v12, 0.0);
                [v99 setFrame:{v151.origin.x, v151.origin.y, v151.size.width, v151.size.height}];
                v100 = MEMORY[0x277CCABB0];
                [v99 frame];
                v101 = [v100 numberWithDouble:?];
                [contentView setVerticalLinePosition:v101 forKey:v97];
              }

              v94 = [columnIdentifiers4 countByEnumeratingWithState:&v134 objects:v139 count:16];
            }

            while (v94);
          }

          table = v120;
        }

        if (v13 != 0.0)
        {
          v132 = 0u;
          v133 = 0u;
          v130 = 0u;
          v131 = 0u;
          obja = [(ICTableTextViewManager *)selfCopy rowIdentifiers];
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
                tableLayoutManager2 = [(ICTableTextViewManager *)selfCopy tableLayoutManager];
                rowPositions = [tableLayoutManager2 rowPositions];
                v109 = [rowPositions objectForKey:v106];
                [v109 doubleValue];
                v111 = v110;

                v112 = v13 + v111;
                tableLayoutManager3 = [(ICTableTextViewManager *)selfCopy tableLayoutManager];
                [tableLayoutManager3 setYPosition:v106 forRow:1 shouldInvalidate:v112];

                v114 = [MEMORY[0x277CCABB0] numberWithDouble:v112];
                [contentView setHorizontalLinePosition:v114 forKey:v106];
              }

              v103 = [obja countByEnumeratingWithState:&v130 objects:v138 count:16];
            }

            while (v103);
          }

          selfCopy3 = selfCopy;
          table = v120;
        }

        [(ICTableTextViewManager *)selfCopy3 anchorPoint];
        v116 = v12 + v115;
        [(ICTableTextViewManager *)selfCopy3 anchorPoint];
        [(ICTableTextViewManager *)selfCopy3 setAnchorPoint:v116, v13 + v117];
      }
    }

    [(ICTableTextViewManager *)selfCopy3 setUpdatingTiles:0];
  }

  v118 = v12;
  v119 = v13;
  result.y = v119;
  result.x = v118;
  return result;
}

- (CGPoint)redrawAllWithViewport:(CGRect)viewport
{
  height = viewport.size.height;
  width = viewport.size.width;
  y = viewport.origin.y;
  x = viewport.origin.x;
  v41 = *MEMORY[0x277D85DE8];
  tableLayoutManager = [(ICTableTextViewManager *)self tableLayoutManager];
  table = [tableLayoutManager table];
  rowIdentifiers = [(ICTableTextViewManager *)self rowIdentifiers];
  v11 = [rowIdentifiers copy];
  v12 = [table rowsIntersectingWithRows:v11];
  [(ICTableTextViewManager *)self setPreviousRowIdentifiers:v12];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  rowIdentifiers2 = [(ICTableTextViewManager *)self rowIdentifiers];
  v14 = [rowIdentifiers2 copy];

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
  columnIdentifiers = [(ICTableTextViewManager *)self columnIdentifiers];
  v20 = [columnIdentifiers copy];

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

- (void)heightChangedForRow:(id)row by:(double)by
{
  rowCopy = row;
  if (by != 0.0)
  {
    rowIdentifiers = [(ICTableTextViewManager *)self rowIdentifiers];
    v7 = [rowIdentifiers indexOfObject:rowCopy];

    rowIdentifiers2 = [(ICTableTextViewManager *)self rowIdentifiers];
    v9 = [rowIdentifiers2 count];

    v10 = v7 + 1;
    if (v10 < v9)
    {
      do
      {
        rowIdentifiers3 = [(ICTableTextViewManager *)self rowIdentifiers];
        v12 = [rowIdentifiers3 objectAtIndex:v10];

        tableLayoutManager = [(ICTableTextViewManager *)self tableLayoutManager];
        rowPositions = [tableLayoutManager rowPositions];
        v15 = [rowPositions objectForKey:v12];
        [v15 doubleValue];
        v17 = v16 + by;

        tableLayoutManager2 = [(ICTableTextViewManager *)self tableLayoutManager];
        [tableLayoutManager2 setYPosition:v12 forRow:1 shouldInvalidate:v17];

        contentView = [(ICTableTextViewManager *)self contentView];
        v20 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
        [contentView setHorizontalLinePosition:v20 forKey:v12];

        ++v10;
      }

      while (v9 != v10);
    }
  }
}

- (void)removeColumn:(id)column
{
  columnCopy = column;
  columnTextViews = [(ICTableTextViewManager *)self columnTextViews];
  v5 = [columnTextViews objectForKey:columnCopy];

  [v5 removeFromSuperview];
  if (v5)
  {
    columnTextViews2 = [(ICTableTextViewManager *)self columnTextViews];
    [columnTextViews2 removeObjectForKey:columnCopy];
  }
}

- (void)moveColumnAtIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  columnIdentifiers = [(ICTableTextViewManager *)self columnIdentifiers];
  v10 = [columnIdentifiers objectAtIndex:index];

  columnIdentifiers2 = [(ICTableTextViewManager *)self columnIdentifiers];
  [columnIdentifiers2 removeObjectAtIndex:index];

  columnIdentifiers3 = [(ICTableTextViewManager *)self columnIdentifiers];
  [columnIdentifiers3 insertObject:v10 atIndex:toIndex];
}

- (void)moveRowAtIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  rowIdentifiers = [(ICTableTextViewManager *)self rowIdentifiers];
  v10 = [rowIdentifiers objectAtIndex:index];

  rowIdentifiers2 = [(ICTableTextViewManager *)self rowIdentifiers];
  [rowIdentifiers2 removeObjectAtIndex:index];

  rowIdentifiers3 = [(ICTableTextViewManager *)self rowIdentifiers];
  [rowIdentifiers3 insertObject:v10 atIndex:toIndex];
}

- (BOOL)cellContainingPoint:(CGPoint)point columnID:(id *)d rowID:(id *)iD
{
  y = point.y;
  x = point.x;
  v43 = *MEMORY[0x277D85DE8];
  contentView = [(ICTableTextViewManager *)self contentView];
  v11 = [contentView hitTest:0 withEvent:{x, y}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v12 = ICCheckedDynamicCast();
    columnID = [v12 columnID];
    if (columnID)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      rowIdentifiers = [(ICTableTextViewManager *)self rowIdentifiers];
      v15 = [rowIdentifiers countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v15)
      {
        v16 = v15;
        v36 = columnID;
        v37 = v12;
        dCopy = d;
        iDCopy = iD;
        v17 = *v39;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v39 != v17)
            {
              objc_enumerationMutation(rowIdentifiers);
            }

            v19 = *(*(&v38 + 1) + 8 * i);
            tableLayoutManager = [(ICTableTextViewManager *)self tableLayoutManager];
            rowPositions = [tableLayoutManager rowPositions];
            v22 = [rowPositions objectForKey:v19];
            [v22 doubleValue];
            v24 = v23;

            cachedRowHeights = [(ICTableTextViewManager *)self cachedRowHeights];
            [cachedRowHeights dimensionForKey:v19];
            v27 = v26;

            v28 = v24 + v27;
            if (v24 <= y && v28 >= y)
            {
              columnID = v36;
              v30 = v36;
              *dCopy = v36;
              v31 = v19;
              *iDCopy = v19;
              v32 = 1;
              v12 = v37;
              goto LABEL_19;
            }
          }

          v16 = [rowIdentifiers countByEnumeratingWithState:&v38 objects:v42 count:{16, v28}];
        }

        while (v16);
        v32 = 0;
        columnID = v36;
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

- (id)columnContainingX:(double)x
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  columnIdentifiers = [(ICTableTextViewManager *)self columnIdentifiers];
  v6 = [columnIdentifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(columnIdentifiers);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(ICTableTextViewManager *)self textViewForColumn:v10];
        [v11 frame];
        if (CGRectGetMinX(v21) <= x)
        {
          [v11 frame];
          if (CGRectGetMaxX(v22) >= x)
          {
            v12 = v10;

            goto LABEL_12;
          }
        }
      }

      v7 = [columnIdentifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)rowContainingY:(double)y
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  rowIdentifiers = [(ICTableTextViewManager *)self rowIdentifiers];
  v6 = [rowIdentifiers countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(rowIdentifiers);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        tableLayoutManager = [(ICTableTextViewManager *)self tableLayoutManager];
        rowPositions = [tableLayoutManager rowPositions];
        v13 = [rowPositions objectForKey:v10];
        [v13 doubleValue];
        v15 = v14;

        cachedRowHeights = [(ICTableTextViewManager *)self cachedRowHeights];
        [cachedRowHeights dimensionForKey:v10];
        v18 = v17;

        v19 = v15 + v18;
        if (v15 <= y && v19 >= y)
        {
          v21 = v10;
          goto LABEL_14;
        }
      }

      v7 = [rowIdentifiers countByEnumeratingWithState:&v23 objects:v27 count:{16, v19}];
    }

    while (v7);
  }

  v21 = 0;
LABEL_14:

  return v21;
}

- (id)textViewForColumn:(id)column createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  columnCopy = column;
  columnTextViews = [(ICTableTextViewManager *)self columnTextViews];
  v8 = [columnTextViews objectForKeyedSubscript:columnCopy];

  if (!v8 && neededCopy)
  {
    tableLayoutManager = [(ICTableTextViewManager *)self tableLayoutManager];
    v10 = [tableLayoutManager columnLayoutManagerForColumn:columnCopy];

    v11 = [ICTableColumnTextView alloc];
    textContainer = [v10 textContainer];
    v8 = [(ICTableColumnTextView *)v11 initWithFrame:textContainer textContainer:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

    [(ICTableColumnTextView *)v8 setAutoresizingMask:20];
    [v10 setTextView:v8];
    [(ICTableColumnTextView *)v8 setDataDetectorTypes:-1];
    delegate = [(ICTableTextViewManager *)self delegate];
    noteTextView = [delegate noteTextView];
    -[ICTableColumnTextView _setDataOwnerForCopy:](v8, "_setDataOwnerForCopy:", [noteTextView _dataOwnerForCopy]);

    delegate2 = [(ICTableTextViewManager *)self delegate];
    noteTextView2 = [delegate2 noteTextView];
    -[ICTableColumnTextView _setDataOwnerForPaste:](v8, "_setDataOwnerForPaste:", [noteTextView2 _dataOwnerForPaste]);

    delegate3 = [(ICTableTextViewManager *)self delegate];
    noteTextView3 = [delegate3 noteTextView];
    editorController = [noteTextView3 editorController];
    [(ICTableColumnTextView *)v8 setEditorController:editorController];

    textContainer2 = [(ICTableColumnTextView *)v8 textContainer];
    [textContainer2 setWidthTracksTextView:1];

    textContainer3 = [(ICTableColumnTextView *)v8 textContainer];
    [textContainer3 setHeightTracksTextView:0];

    [(ICTableColumnTextView *)v8 setSelectable:1];
    [(ICTableColumnTextView *)v8 setColumnID:columnCopy];
    textContainer4 = [v10 textContainer];
    [textContainer4 replaceLayoutManager:v10];

    columnTextViews2 = [(ICTableTextViewManager *)self columnTextViews];
    [columnTextViews2 setObject:v8 forKeyedSubscript:columnCopy];

    delegate4 = [(ICTableTextViewManager *)self delegate];

    if (delegate4)
    {
      delegate5 = [(ICTableTextViewManager *)self delegate];
      [delegate5 setupTableTextView:v8];
    }
  }

  return v8;
}

- (void)parentViewDidChange
{
  delegate = [(ICTableTextViewManager *)self delegate];

  if (delegate)
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
  columnsNeedingRestyle = [(ICTableTextViewManager *)self columnsNeedingRestyle];

  if (!columnsNeedingRestyle)
  {
    v4 = MEMORY[0x277CBEB58];
    columnTextViews = [(ICTableTextViewManager *)self columnTextViews];
    v6 = [v4 setWithCapacity:{objc_msgSend(columnTextViews, "count")}];
    [(ICTableTextViewManager *)self setColumnsNeedingRestyle:v6];
  }

  columnsNeedingRestyle2 = [(ICTableTextViewManager *)self columnsNeedingRestyle];
  prepopulatedColumns = [(ICTableTextViewManager *)self prepopulatedColumns];
  [columnsNeedingRestyle2 unionSet:prepopulatedColumns];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  columnTextViews2 = [(ICTableTextViewManager *)self columnTextViews];
  allKeys = [columnTextViews2 allKeys];

  v11 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        columnsNeedingRestyle3 = [(ICTableTextViewManager *)self columnsNeedingRestyle];
        [columnsNeedingRestyle3 addObject:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (void)restyleTextView:(id)view
{
  viewCopy = view;
  columnTextStorage = [viewCopy columnTextStorage];
  [columnTextStorage setShouldPreventUndoCommands:1];
  [columnTextStorage beginPreventEditingUpdates];
  delegate = [(ICTableTextViewManager *)self delegate];
  noteTextView = [delegate noteTextView];
  tTTextStorage = [noteTextView TTTextStorage];
  styler = [tTTextStorage styler];
  zoomController = [styler zoomController];
  styler2 = [columnTextStorage styler];
  [styler2 setZoomController:zoomController];

  styler3 = [columnTextStorage styler];
  [styler3 styleText:columnTextStorage inRange:0 fixModelAttributes:{objc_msgSend(columnTextStorage, "length"), 0}];

  [columnTextStorage endPreventEditingUpdates];
  [columnTextStorage setShouldPreventUndoCommands:0];
  columnsNeedingRestyle = [(ICTableTextViewManager *)self columnsNeedingRestyle];
  columnID = [viewCopy columnID];

  [columnsNeedingRestyle removeObject:columnID];
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

- (CGRect)frameOfCellAtColumn:(id)column row:(id)row
{
  columnCopy = column;
  rowCopy = row;
  x = *MEMORY[0x277CBF3A0];
  y = *(MEMORY[0x277CBF3A0] + 8);
  width = *(MEMORY[0x277CBF3A0] + 16);
  height = *(MEMORY[0x277CBF3A0] + 24);
  tableLayoutManager = [(ICTableTextViewManager *)self tableLayoutManager];
  columnWidthManager = [tableLayoutManager columnWidthManager];

  tableLayoutManager2 = [(ICTableTextViewManager *)self tableLayoutManager];
  table = [tableLayoutManager2 table];

  anchorColumn = [(ICTableTextViewManager *)self anchorColumn];
  anchorRow = [(ICTableTextViewManager *)self anchorRow];
  [(ICTableTextViewManager *)self boundingRect];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  columnTextViews = [(ICTableTextViewManager *)self columnTextViews];
  v27 = [columnTextViews objectForKey:columnCopy];

  v85 = v27;
  rect = v23;
  if (v27 && (-[ICTableTextViewManager columnIdentifiers](self, "columnIdentifiers"), v28 = objc_claimAutoreleasedReturnValue(), v29 = [v28 containsObject:columnCopy], v28, v29))
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

  else if ([table containsColumn:{columnCopy, *&v23, v27}])
  {
    v33 = [table columnIndexForIdentifier:columnCopy];
    columnIdentifiers = [(ICTableTextViewManager *)self columnIdentifiers];
    v35 = [columnIdentifiers count] + anchorColumn;

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
      columnIdentifiers2 = [(ICTableTextViewManager *)self columnIdentifiers];
      v69 = [columnIdentifiers2 count] + anchorColumn;

      while (v69 < v33)
      {
        v70 = [table identifierForColumnAtIndex:v69];
        [columnWidthManager widthOfColumn:v70];
        v72 = v71;
        cachedColumnWidths = [(ICTableTextViewManager *)self cachedColumnWidths];
        [cachedColumnWidths setDimension:v70 forKey:v72];

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
      if (v33 >= anchorColumn)
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
      while (anchorColumn > v33)
      {
        v37 = [table identifierForColumnAtIndex:--anchorColumn];
        [columnWidthManager widthOfColumn:v37];
        v39 = v38;
        cachedColumnWidths2 = [(ICTableTextViewManager *)self cachedColumnWidths];
        [cachedColumnWidths2 setDimension:v37 forKey:v39];

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

  rowIdentifiers = [(ICTableTextViewManager *)self rowIdentifiers];
  v42 = [rowIdentifiers containsObject:rowCopy];

  if (v42)
  {
    tableLayoutManager3 = [(ICTableTextViewManager *)self tableLayoutManager];
    rowPositions = [tableLayoutManager3 rowPositions];
    v45 = [rowPositions objectForKey:rowCopy];
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

  else if ([table containsRow:rowCopy])
  {
    v48 = [table rowIndexForIdentifier:rowCopy];
    rowIdentifiers2 = [(ICTableTextViewManager *)self rowIdentifiers];
    v50 = [rowIdentifiers2 count] + anchorRow;

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
      rowIdentifiers3 = [(ICTableTextViewManager *)self rowIdentifiers];
      v78 = [rowIdentifiers3 count] + anchorRow;

      while (v78 < v48)
      {
        v79 = [table identifierForRowAtIndex:v78];
        cachedRowHeights = [(ICTableTextViewManager *)self cachedRowHeights];
        [cachedRowHeights dimensionForKey:v79];
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
      if (v48 >= anchorRow)
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
      if (v48 < anchorRow)
      {
        v52 = v97.size.width;
        v53 = v97.size.height;
        do
        {
          v54 = [table identifierForRowAtIndex:--anchorRow];
          cachedRowHeights2 = [(ICTableTextViewManager *)self cachedRowHeights];
          [cachedRowHeights2 dimensionForKey:v54];
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

        while (anchorRow > v48);
      }
    }
  }

  [columnWidthManager widthOfColumn:columnCopy];
  v59 = v58;
  cachedRowHeights3 = [(ICTableTextViewManager *)self cachedRowHeights];
  [cachedRowHeights3 dimensionForKey:rowCopy];
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

- (CGRect)frameOfColumn:(id)column
{
  columnCopy = column;
  columnTextViews = [(ICTableTextViewManager *)self columnTextViews];
  v6 = [columnTextViews objectForKeyedSubscript:columnCopy];

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

- (CGRect)frameOfRow:(id)row
{
  rowCopy = row;
  tableLayoutManager = [(ICTableTextViewManager *)self tableLayoutManager];
  rowPositions = [tableLayoutManager rowPositions];
  v7 = [rowPositions objectForKey:rowCopy];
  [v7 doubleValue];
  v9 = v8;

  cachedRowHeights = [(ICTableTextViewManager *)self cachedRowHeights];
  [cachedRowHeights dimensionForKey:rowCopy];
  v12 = v11;

  contentView = [(ICTableTextViewManager *)self contentView];
  [contentView bounds];
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