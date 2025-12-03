@interface ICTableAccessibilityController
- (BOOL)cellIsEditingAtColumnID:(id)d rowID:(id)iD;
- (BOOL)isEditable;
- (BOOL)isHeaderCellAtColumnID:(id)d rowID:(id)iD;
- (BOOL)isTableRightToLeft;
- (BOOL)isTableTextRangeSelected;
- (CGRect)boundingRectForCellWithColumnID:(id)d rowID:(id)iD;
- (CGRect)frameInScreenSpaceForCellWithColumnID:(id)d rowID:(id)iD;
- (ICTableAccessibilityController)initWithTableAttachmentViewController:(id)controller;
- (ICTableAttachmentView)hostingTableAttachmentView;
- (ICTableAttachmentViewController)tableAttachmentViewController;
- (ICTableSelectionKnob)endSelectionKnob;
- (ICTableSelectionKnob)startSelectionKnob;
- (UIScrollView)noteScrollView;
- (UIScrollView)tableScrollView;
- (UIView)dragProviderView;
- (_NSRange)attachmentRangeInNote;
- (id)attributedContentStringForColumnID:(id)d rowID:(id)iD;
- (id)cellElementForColumnIndex:(unint64_t)index rowIndex:(unint64_t)rowIndex;
- (id)cellElementsForColumnID:(id)d;
- (id)cellElementsForRowID:(id)d;
- (id)columnIDForColumnIndex:(unint64_t)index;
- (id)rowIDForRowIndex:(unint64_t)index;
- (id)selectedCells;
- (id)selectedColumnIDs;
- (id)selectedRowIDs;
- (id)table;
- (id)textViewForColumnID:(id)d;
- (id)titleForColumnID:(id)d;
- (id)titleForRowID:(id)d;
- (unint64_t)columnCount;
- (unint64_t)columnIndexForColumnID:(id)d;
- (unint64_t)rowCount;
- (unint64_t)rowIndexForRowID:(id)d;
- (void)addColumnAfter;
- (void)addColumnBefore;
- (void)addRowAbove;
- (void)addRowBelow;
- (void)beginEditingCellWithColumnID:(id)d rowID:(id)iD;
- (void)convertTableToText;
- (void)deleteSelectedColumns;
- (void)deleteSelectedRows;
- (void)invalidateAXElementsForColumnID:(id)d;
- (void)invalidateAXElementsForRowID:(id)d;
- (void)moveCurrentColumnOrRow:(BOOL)row toIndex:(unint64_t)index;
- (void)reverseTableDirection;
- (void)scrollColumnIDToVisible:(id)visible rowID:(id)d;
- (void)selectCellForColumnID:(id)d rowID:(id)iD;
- (void)selectCellRangeForCurrentCell;
- (void)selectColumnWithID:(id)d;
- (void)selectCurrentColumn;
- (void)selectCurrentRow;
- (void)selectRowWithID:(id)d;
- (void)selectTableTextRange:(BOOL)range;
- (void)speakCellRangeSelection:(id)selection;
- (void)tableRowOrColumnSelectionDidChange;
@end

@implementation ICTableAccessibilityController

- (ICTableAccessibilityController)initWithTableAttachmentViewController:(id)controller
{
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = ICTableAccessibilityController;
  v5 = [(ICTableAccessibilityController *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_tableAttachmentViewController, controllerCopy);
    v7 = [[ICTableAccessibilityElementProvider alloc] initWithTableAccessibilityController:v6];
    elementProvider = v6->_elementProvider;
    v6->_elementProvider = v7;

    objc_opt_class();
    tableAttachmentViewController = [(ICTableAccessibilityController *)v6 tableAttachmentViewController];
    view = [tableAttachmentViewController view];
    v11 = ICDynamicCast();

    if (v11)
    {
      v12 = [[ICiOSTableAccessibilityElement alloc] initWithTableAccessibilityController:v6 parentAttachmentView:v11];
      tableElement = v6->_tableElement;
      v6->_tableElement = v12;
    }
  }

  return v6;
}

- (void)beginEditingCellWithColumnID:(id)d rowID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  [tableAttachmentViewController beginEditingCellWithColumnID:dCopy andRowID:iDCopy location:2];
}

- (unint64_t)rowCount
{
  table = [(ICTableAccessibilityController *)self table];
  rowCount = [table rowCount];

  return rowCount;
}

- (unint64_t)columnCount
{
  table = [(ICTableAccessibilityController *)self table];
  columnCount = [table columnCount];

  return columnCount;
}

- (UIView)dragProviderView
{
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  noteTextView = [tableAttachmentViewController noteTextView];

  return noteTextView;
}

- (ICTableAttachmentView)hostingTableAttachmentView
{
  objc_opt_class();
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  view = [tableAttachmentViewController view];
  v5 = ICDynamicCast();

  return v5;
}

- (UIScrollView)tableScrollView
{
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  scrollView = [tableAttachmentViewController scrollView];

  return scrollView;
}

- (UIScrollView)noteScrollView
{
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  noteScrollView = [tableAttachmentViewController noteScrollView];

  return noteScrollView;
}

- (BOOL)isTableRightToLeft
{
  table = [(ICTableAccessibilityController *)self table];
  isRightToLeft = [table isRightToLeft];

  return isRightToLeft;
}

- (_NSRange)attachmentRangeInNote
{
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  attachment = [tableAttachmentViewController attachment];
  rangeInNote = [attachment rangeInNote];
  v6 = v5;

  v7 = rangeInNote;
  v8 = v6;
  result.length = v8;
  result.location = v7;
  return result;
}

- (ICTableSelectionKnob)startSelectionKnob
{
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  startKnob = [tableAttachmentViewController startKnob];

  return startKnob;
}

- (ICTableSelectionKnob)endSelectionKnob
{
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  endKnob = [tableAttachmentViewController endKnob];

  return endKnob;
}

- (id)cellElementForColumnIndex:(unint64_t)index rowIndex:(unint64_t)rowIndex
{
  v6 = [(ICTableAccessibilityController *)self columnIDForColumnIndex:index];
  v7 = [(ICTableAccessibilityController *)self rowIDForRowIndex:rowIndex];
  elementProvider = [(ICTableAccessibilityController *)self elementProvider];
  v9 = [elementProvider cellElementForColumnID:v6 rowID:v7];

  return v9;
}

- (id)cellElementsForColumnID:(id)d
{
  dCopy = d;
  elementProvider = [(ICTableAccessibilityController *)self elementProvider];
  v6 = [elementProvider cellElementsForColumnID:dCopy];

  return v6;
}

- (id)cellElementsForRowID:(id)d
{
  dCopy = d;
  elementProvider = [(ICTableAccessibilityController *)self elementProvider];
  v6 = [elementProvider cellElementsForRowID:dCopy];

  return v6;
}

- (id)textViewForColumnID:(id)d
{
  dCopy = d;
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  textViewManager = [tableAttachmentViewController textViewManager];
  v7 = [textViewManager textViewForColumn:dCopy];

  return v7;
}

- (unint64_t)rowIndexForRowID:(id)d
{
  dCopy = d;
  table = [(ICTableAccessibilityController *)self table];
  v6 = [table rowIndexForIdentifier:dCopy];

  return v6;
}

- (unint64_t)columnIndexForColumnID:(id)d
{
  dCopy = d;
  table = [(ICTableAccessibilityController *)self table];
  v6 = [table columnIndexForIdentifier:dCopy];

  return v6;
}

- (id)columnIDForColumnIndex:(unint64_t)index
{
  table = [(ICTableAccessibilityController *)self table];
  v5 = [table identifierForColumnAtIndex:index];

  return v5;
}

- (id)rowIDForRowIndex:(unint64_t)index
{
  table = [(ICTableAccessibilityController *)self table];
  v5 = [table identifierForRowAtIndex:index];

  return v5;
}

- (id)attributedContentStringForColumnID:(id)d rowID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  table = [(ICTableAccessibilityController *)self table];
  v9 = [table stringForColumnID:dCopy rowID:iDCopy];

  return v9;
}

- (CGRect)boundingRectForCellWithColumnID:(id)d rowID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  textViewManager = [tableAttachmentViewController textViewManager];
  [textViewManager frameOfCellAtColumn:dCopy row:iDCopy];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)frameInScreenSpaceForCellWithColumnID:(id)d rowID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v8 = *MEMORY[0x277CBF3A0];
  v9 = *(MEMORY[0x277CBF3A0] + 8);
  v10 = *(MEMORY[0x277CBF3A0] + 16);
  v11 = *(MEMORY[0x277CBF3A0] + 24);
  if ([(ICTableAccessibilityController *)self columnIndexForColumnID:dCopy]!= 0x7FFFFFFFFFFFFFFFLL && [(ICTableAccessibilityController *)self rowIndexForRowID:iDCopy]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    [(ICTableAccessibilityController *)self boundingRectForCellWithColumnID:dCopy rowID:iDCopy];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
    scrollView = [tableAttachmentViewController scrollView];
    [scrollView convertRect:0 toView:{v13, v15, v17, v19}];
    v8 = v22;
    v9 = v23;
    v10 = v24;
    v11 = v25;
  }

  v26 = v8;
  v27 = v9;
  v28 = v10;
  v29 = v11;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (id)titleForColumnID:(id)d
{
  dCopy = d;
  v5 = [(ICTableAccessibilityController *)self rowIDForRowIndex:0];
  if ([(ICTableAccessibilityController *)self isHeaderCellAtColumnID:dCopy rowID:v5])
  {
    v6 = [(ICTableAccessibilityController *)self attributedContentStringForColumnID:dCopy rowID:v5];

    [v6 string];
  }

  else
  {
    v7 = [(ICTableAccessibilityController *)self columnIndexForColumnID:dCopy];

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [mainBundle localizedStringForKey:@"column %lu" value:&stru_282757698 table:0];

    [MEMORY[0x277CCACA8] localizedStringWithFormat:v6, v7 + 1];
  }
  v9 = ;

  return v9;
}

- (id)titleForRowID:(id)d
{
  dCopy = d;
  v5 = [(ICTableAccessibilityController *)self columnIDForColumnIndex:0];
  if ([(ICTableAccessibilityController *)self isHeaderCellAtColumnID:v5 rowID:dCopy])
  {
    v6 = [(ICTableAccessibilityController *)self attributedContentStringForColumnID:v5 rowID:dCopy];

    [v6 string];
  }

  else
  {
    v7 = [(ICTableAccessibilityController *)self rowIndexForRowID:dCopy];

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [mainBundle localizedStringForKey:@"row %lu" value:&stru_282757698 table:0];

    [MEMORY[0x277CCACA8] localizedStringWithFormat:v6, v7 + 1];
  }
  v9 = ;

  return v9;
}

- (BOOL)isEditable
{
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  attachment = [tableAttachmentViewController attachment];
  note = [attachment note];
  isEditable = [note isEditable];

  return isEditable;
}

- (BOOL)cellIsEditingAtColumnID:(id)d rowID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  tableSelection = [tableAttachmentViewController tableSelection];

  type = [tableSelection type];
  columns = [tableSelection columns];
  firstObject = [columns firstObject];

  rows = [tableSelection rows];
  firstObject2 = [rows firstObject];

  if (type == 1 && [dCopy isEqual:firstObject])
  {
    v15 = [iDCopy isEqual:firstObject2];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)isHeaderCellAtColumnID:(id)d rowID:(id)iD
{
  v4 = [(ICTableAccessibilityController *)self attributedContentStringForColumnID:d rowID:iD];
  v12 = 0;
  if ([v4 length])
  {
    v5 = [v4 attribute:*MEMORY[0x277D35DA8] atIndex:0 effectiveRange:&v11];
    v6 = v5;
    if (v5 && (![v5 style] || objc_msgSend(v6, "style") == 1 || objc_msgSend(v6, "style") == 2))
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      v8 = [v4 attribute:*MEMORY[0x277D35D98] atIndex:0 effectiveRange:&v11];
      if (v8 && (v9 = v12, v9 == [v4 length]))
      {
        v7 = [v8 integerValue] & 1;
      }

      else
      {
        LOBYTE(v7) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)scrollColumnIDToVisible:(id)visible rowID:(id)d
{
  [(ICTableAccessibilityController *)self frameInScreenSpaceForCellWithColumnID:visible rowID:d];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  tableContentView = [tableAttachmentViewController tableContentView];
  [tableContentView convertRect:0 fromView:{v6, v8, v10, v12}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  noteScrollView = [(ICTableAccessibilityController *)self noteScrollView];
  [noteScrollView convertRect:0 fromView:{v6, v8, v10, v12}];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  tableAttachmentViewController2 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  scrollView = [tableAttachmentViewController2 scrollView];
  [scrollView scrollRectToVisible:1 animated:{v16, v18, v20, v22}];

  noteScrollView2 = [(ICTableAccessibilityController *)self noteScrollView];
  [noteScrollView2 scrollRectToVisible:1 animated:{v25, v27, v29, v31}];
}

- (void)moveCurrentColumnOrRow:(BOOL)row toIndex:(unint64_t)index
{
  rowCopy = row;
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  [tableAttachmentViewController moveCurrentColumnOrRow:rowCopy toIndex:index];
}

- (id)selectedCells
{
  v29 = *MEMORY[0x277D85DE8];
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  tableSelection = [tableAttachmentViewController tableSelection];

  if ([tableSelection type] == 1 || objc_msgSend(tableSelection, "type") == 4)
  {
    array = [MEMORY[0x277CBEB18] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = [tableSelection columns];
    v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v18)
    {
      v16 = *v24;
      v17 = tableSelection;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v23 + 1) + 8 * i);
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          rows = [tableSelection rows];
          v9 = [rows countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v20;
            do
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v20 != v11)
                {
                  objc_enumerationMutation(rows);
                }

                v13 = [(ICTableAccessibilityController *)self cellElementForColumnIndex:[(ICTableAccessibilityController *)self columnIndexForColumnID:v7] rowIndex:[(ICTableAccessibilityController *)self rowIndexForRowID:*(*(&v19 + 1) + 8 * j)]];
                [array ic_addNonNilObject:v13];
              }

              v10 = [rows countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v10);
          }

          tableSelection = v17;
        }

        v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v18);
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

- (id)selectedColumnIDs
{
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  tableSelection = [tableAttachmentViewController tableSelection];
  columns = [tableSelection columns];

  return columns;
}

- (id)selectedRowIDs
{
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  tableSelection = [tableAttachmentViewController tableSelection];
  rows = [tableSelection rows];

  return rows;
}

- (void)selectCurrentColumn
{
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  [tableAttachmentViewController selectCurrentColumnForAccessibility];
}

- (void)selectCurrentRow
{
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  [tableAttachmentViewController selectCurrentRowForAccessibility];
}

- (void)selectColumnWithID:(id)d
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (d)
  {
    dCopy = d;
    tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
    tableSelection = [tableAttachmentViewController tableSelection];
    v8[0] = dCopy;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

    [tableSelection selectColumns:v7];
  }
}

- (void)selectRowWithID:(id)d
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (d)
  {
    dCopy = d;
    tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
    tableSelection = [tableAttachmentViewController tableSelection];
    v8[0] = dCopy;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

    [tableSelection selectRows:v7];
  }
}

- (void)selectCellForColumnID:(id)d rowID:(id)iD
{
  if (d && iD)
  {
    iDCopy = iD;
    dCopy = d;
    tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
    tableSelection = [tableAttachmentViewController tableSelection];
    [tableSelection selectCellAtColumn:dCopy row:iDCopy];
  }
}

- (void)selectCellRangeForCurrentCell
{
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  [tableAttachmentViewController selectCell];
}

- (BOOL)isTableTextRangeSelected
{
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  noteTextView = [tableAttachmentViewController noteTextView];
  selectedRange = [noteTextView selectedRange];
  v7 = v6;
  hostingTableAttachmentView = [(ICTableAccessibilityController *)self hostingTableAttachmentView];
  v11 = selectedRange == [hostingTableAttachmentView textRangeInNote] && v7 == v9;

  return v11;
}

- (void)selectTableTextRange:(BOOL)range
{
  rangeCopy = range;
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  noteTextView = [tableAttachmentViewController noteTextView];

  hostingTableAttachmentView = [(ICTableAccessibilityController *)self hostingTableAttachmentView];
  textRangeInNote = [hostingTableAttachmentView textRangeInNote];
  v9 = v8;

  _UIAccessibilityBlockPostingOfAllNotifications();
  [noteTextView select:noteTextView];
  [noteTextView setSelectedRange:{textRangeInNote, v9}];
  [noteTextView scrollRangeToVisible:{textRangeInNote, v9}];
  _UIAccessibilityUnblockPostingOfAllNotifications();
  if (rangeCopy)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [mainBundle localizedStringForKey:@"Selected %@. Use the actions rotor to start dragging." value:&stru_282757698 table:0];

    v12 = MEMORY[0x277CCACA8];
    hostingTableAttachmentView2 = [(ICTableAccessibilityController *)self hostingTableAttachmentView];
    accessibilityLabel = [hostingTableAttachmentView2 accessibilityLabel];
    v15 = [v12 localizedStringWithFormat:v11, accessibilityLabel];

    UIAccessibilityPostNotification(*MEMORY[0x277D76438], v15);
  }
}

- (void)speakCellRangeSelection:(id)selection
{
  selectionCopy = selection;
  if ([selectionCopy type] == 4)
  {
    table = [(ICTableAccessibilityController *)self table];
    columns = [selectionCopy columns];
    firstObject = [columns firstObject];
    v7 = [table columnIndexForIdentifier:firstObject];

    table2 = [(ICTableAccessibilityController *)self table];
    rows = [selectionCopy rows];
    firstObject2 = [rows firstObject];
    v11 = [table2 rowIndexForIdentifier:firstObject2];

    table3 = [(ICTableAccessibilityController *)self table];
    columns2 = [selectionCopy columns];
    lastObject = [columns2 lastObject];
    v15 = [table3 columnIndexForIdentifier:lastObject];

    table4 = [(ICTableAccessibilityController *)self table];
    rows2 = [selectionCopy rows];
    lastObject2 = [rows2 lastObject];
    v19 = [table4 rowIndexForIdentifier:lastObject2];

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v21 = mainBundle;
    if (v7 == v15 && v11 == v19)
    {
      v22 = [mainBundle localizedStringForKey:@"Selected column %lu value:row %lu" table:{&stru_282757698, 0}];

      v23 = MEMORY[0x277CCACA8];
      v24 = v7 + 1;
      v25 = v11 + 1;
    }

    else
    {
      if (v7 == v15)
      {
        v22 = [mainBundle localizedStringForKey:@"Selected column %lu value:rows %lu to %lu" table:{&stru_282757698, 0}];

        [MEMORY[0x277CCACA8] localizedStringWithFormat:v22, v7 + 1, v11 + 1, v19 + 1, v29];
        v27 = LABEL_12:;

        UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
        UIAccessibilityPostNotification(*MEMORY[0x277D76438], v27);

        goto LABEL_13;
      }

      v26 = v15 + 1;
      if (v11 == v19)
      {
        v22 = [mainBundle localizedStringForKey:@"Selected row %lu value:columns %lu to %lu" table:{&stru_282757698, 0}];

        v23 = MEMORY[0x277CCACA8];
        v24 = v11 + 1;
        v25 = v7 + 1;
      }

      else
      {
        v22 = [mainBundle localizedStringForKey:@"Selected column %lu value:row %lu table:{to column %lu, row %lu", &stru_282757698, 0}];

        v23 = MEMORY[0x277CCACA8];
        v24 = v7 + 1;
        v25 = v11 + 1;
        v29 = v19 + 1;
      }

      v28 = v26;
    }

    [v23 localizedStringWithFormat:v22, v24, v25, v28, v29];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)tableRowOrColumnSelectionDidChange
{
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  noteTextView = [tableAttachmentViewController noteTextView];
  [noteTextView icaxClearCachedChildrenForReparenting];
}

- (void)addColumnBefore
{
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  [tableAttachmentViewController addColumnBeforeSelection:self];
}

- (void)addColumnAfter
{
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  [tableAttachmentViewController addColumnAfterSelection:self];
}

- (void)deleteSelectedColumns
{
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  [tableAttachmentViewController deleteSelectedColumns:self];
}

- (void)addRowAbove
{
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  [tableAttachmentViewController addRowAboveSelection:self];
}

- (void)addRowBelow
{
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  [tableAttachmentViewController addRowBelowSelection:self];
}

- (void)deleteSelectedRows
{
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  [tableAttachmentViewController deleteSelectedRows:self];
}

- (void)reverseTableDirection
{
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  [tableAttachmentViewController reverseTableColumnDirection:self];
}

- (void)convertTableToText
{
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  [tableAttachmentViewController convertTableToText:self];
}

- (void)invalidateAXElementsForColumnID:(id)d
{
  dCopy = d;
  elementProvider = [(ICTableAccessibilityController *)self elementProvider];
  [elementProvider removeElementsForColumnID:dCopy];
}

- (void)invalidateAXElementsForRowID:(id)d
{
  dCopy = d;
  elementProvider = [(ICTableAccessibilityController *)self elementProvider];
  [elementProvider removeElementsForRowID:dCopy];
}

- (id)table
{
  tableAttachmentViewController = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  table = [tableAttachmentViewController table];

  return table;
}

- (ICTableAttachmentViewController)tableAttachmentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_tableAttachmentViewController);

  return WeakRetained;
}

@end