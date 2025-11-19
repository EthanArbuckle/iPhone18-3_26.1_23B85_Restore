@interface ICTableAccessibilityController
- (BOOL)cellIsEditingAtColumnID:(id)a3 rowID:(id)a4;
- (BOOL)isEditable;
- (BOOL)isHeaderCellAtColumnID:(id)a3 rowID:(id)a4;
- (BOOL)isTableRightToLeft;
- (BOOL)isTableTextRangeSelected;
- (CGRect)boundingRectForCellWithColumnID:(id)a3 rowID:(id)a4;
- (CGRect)frameInScreenSpaceForCellWithColumnID:(id)a3 rowID:(id)a4;
- (ICTableAccessibilityController)initWithTableAttachmentViewController:(id)a3;
- (ICTableAttachmentView)hostingTableAttachmentView;
- (ICTableAttachmentViewController)tableAttachmentViewController;
- (ICTableSelectionKnob)endSelectionKnob;
- (ICTableSelectionKnob)startSelectionKnob;
- (UIScrollView)noteScrollView;
- (UIScrollView)tableScrollView;
- (UIView)dragProviderView;
- (_NSRange)attachmentRangeInNote;
- (id)attributedContentStringForColumnID:(id)a3 rowID:(id)a4;
- (id)cellElementForColumnIndex:(unint64_t)a3 rowIndex:(unint64_t)a4;
- (id)cellElementsForColumnID:(id)a3;
- (id)cellElementsForRowID:(id)a3;
- (id)columnIDForColumnIndex:(unint64_t)a3;
- (id)rowIDForRowIndex:(unint64_t)a3;
- (id)selectedCells;
- (id)selectedColumnIDs;
- (id)selectedRowIDs;
- (id)table;
- (id)textViewForColumnID:(id)a3;
- (id)titleForColumnID:(id)a3;
- (id)titleForRowID:(id)a3;
- (unint64_t)columnCount;
- (unint64_t)columnIndexForColumnID:(id)a3;
- (unint64_t)rowCount;
- (unint64_t)rowIndexForRowID:(id)a3;
- (void)addColumnAfter;
- (void)addColumnBefore;
- (void)addRowAbove;
- (void)addRowBelow;
- (void)beginEditingCellWithColumnID:(id)a3 rowID:(id)a4;
- (void)convertTableToText;
- (void)deleteSelectedColumns;
- (void)deleteSelectedRows;
- (void)invalidateAXElementsForColumnID:(id)a3;
- (void)invalidateAXElementsForRowID:(id)a3;
- (void)moveCurrentColumnOrRow:(BOOL)a3 toIndex:(unint64_t)a4;
- (void)reverseTableDirection;
- (void)scrollColumnIDToVisible:(id)a3 rowID:(id)a4;
- (void)selectCellForColumnID:(id)a3 rowID:(id)a4;
- (void)selectCellRangeForCurrentCell;
- (void)selectColumnWithID:(id)a3;
- (void)selectCurrentColumn;
- (void)selectCurrentRow;
- (void)selectRowWithID:(id)a3;
- (void)selectTableTextRange:(BOOL)a3;
- (void)speakCellRangeSelection:(id)a3;
- (void)tableRowOrColumnSelectionDidChange;
@end

@implementation ICTableAccessibilityController

- (ICTableAccessibilityController)initWithTableAttachmentViewController:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ICTableAccessibilityController;
  v5 = [(ICTableAccessibilityController *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_tableAttachmentViewController, v4);
    v7 = [[ICTableAccessibilityElementProvider alloc] initWithTableAccessibilityController:v6];
    elementProvider = v6->_elementProvider;
    v6->_elementProvider = v7;

    objc_opt_class();
    v9 = [(ICTableAccessibilityController *)v6 tableAttachmentViewController];
    v10 = [v9 view];
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

- (void)beginEditingCellWithColumnID:(id)a3 rowID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  [v8 beginEditingCellWithColumnID:v7 andRowID:v6 location:2];
}

- (unint64_t)rowCount
{
  v2 = [(ICTableAccessibilityController *)self table];
  v3 = [v2 rowCount];

  return v3;
}

- (unint64_t)columnCount
{
  v2 = [(ICTableAccessibilityController *)self table];
  v3 = [v2 columnCount];

  return v3;
}

- (UIView)dragProviderView
{
  v2 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  v3 = [v2 noteTextView];

  return v3;
}

- (ICTableAttachmentView)hostingTableAttachmentView
{
  objc_opt_class();
  v3 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  v4 = [v3 view];
  v5 = ICDynamicCast();

  return v5;
}

- (UIScrollView)tableScrollView
{
  v2 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  v3 = [v2 scrollView];

  return v3;
}

- (UIScrollView)noteScrollView
{
  v2 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  v3 = [v2 noteScrollView];

  return v3;
}

- (BOOL)isTableRightToLeft
{
  v2 = [(ICTableAccessibilityController *)self table];
  v3 = [v2 isRightToLeft];

  return v3;
}

- (_NSRange)attachmentRangeInNote
{
  v2 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  v3 = [v2 attachment];
  v4 = [v3 rangeInNote];
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.length = v8;
  result.location = v7;
  return result;
}

- (ICTableSelectionKnob)startSelectionKnob
{
  v2 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  v3 = [v2 startKnob];

  return v3;
}

- (ICTableSelectionKnob)endSelectionKnob
{
  v2 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  v3 = [v2 endKnob];

  return v3;
}

- (id)cellElementForColumnIndex:(unint64_t)a3 rowIndex:(unint64_t)a4
{
  v6 = [(ICTableAccessibilityController *)self columnIDForColumnIndex:a3];
  v7 = [(ICTableAccessibilityController *)self rowIDForRowIndex:a4];
  v8 = [(ICTableAccessibilityController *)self elementProvider];
  v9 = [v8 cellElementForColumnID:v6 rowID:v7];

  return v9;
}

- (id)cellElementsForColumnID:(id)a3
{
  v4 = a3;
  v5 = [(ICTableAccessibilityController *)self elementProvider];
  v6 = [v5 cellElementsForColumnID:v4];

  return v6;
}

- (id)cellElementsForRowID:(id)a3
{
  v4 = a3;
  v5 = [(ICTableAccessibilityController *)self elementProvider];
  v6 = [v5 cellElementsForRowID:v4];

  return v6;
}

- (id)textViewForColumnID:(id)a3
{
  v4 = a3;
  v5 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  v6 = [v5 textViewManager];
  v7 = [v6 textViewForColumn:v4];

  return v7;
}

- (unint64_t)rowIndexForRowID:(id)a3
{
  v4 = a3;
  v5 = [(ICTableAccessibilityController *)self table];
  v6 = [v5 rowIndexForIdentifier:v4];

  return v6;
}

- (unint64_t)columnIndexForColumnID:(id)a3
{
  v4 = a3;
  v5 = [(ICTableAccessibilityController *)self table];
  v6 = [v5 columnIndexForIdentifier:v4];

  return v6;
}

- (id)columnIDForColumnIndex:(unint64_t)a3
{
  v4 = [(ICTableAccessibilityController *)self table];
  v5 = [v4 identifierForColumnAtIndex:a3];

  return v5;
}

- (id)rowIDForRowIndex:(unint64_t)a3
{
  v4 = [(ICTableAccessibilityController *)self table];
  v5 = [v4 identifierForRowAtIndex:a3];

  return v5;
}

- (id)attributedContentStringForColumnID:(id)a3 rowID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICTableAccessibilityController *)self table];
  v9 = [v8 stringForColumnID:v7 rowID:v6];

  return v9;
}

- (CGRect)boundingRectForCellWithColumnID:(id)a3 rowID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  v9 = [v8 textViewManager];
  [v9 frameOfCellAtColumn:v7 row:v6];
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

- (CGRect)frameInScreenSpaceForCellWithColumnID:(id)a3 rowID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CBF3A0];
  v9 = *(MEMORY[0x277CBF3A0] + 8);
  v10 = *(MEMORY[0x277CBF3A0] + 16);
  v11 = *(MEMORY[0x277CBF3A0] + 24);
  if ([(ICTableAccessibilityController *)self columnIndexForColumnID:v6]!= 0x7FFFFFFFFFFFFFFFLL && [(ICTableAccessibilityController *)self rowIndexForRowID:v7]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    [(ICTableAccessibilityController *)self boundingRectForCellWithColumnID:v6 rowID:v7];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
    v21 = [v20 scrollView];
    [v21 convertRect:0 toView:{v13, v15, v17, v19}];
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

- (id)titleForColumnID:(id)a3
{
  v4 = a3;
  v5 = [(ICTableAccessibilityController *)self rowIDForRowIndex:0];
  if ([(ICTableAccessibilityController *)self isHeaderCellAtColumnID:v4 rowID:v5])
  {
    v6 = [(ICTableAccessibilityController *)self attributedContentStringForColumnID:v4 rowID:v5];

    [v6 string];
  }

  else
  {
    v7 = [(ICTableAccessibilityController *)self columnIndexForColumnID:v4];

    v8 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v8 localizedStringForKey:@"column %lu" value:&stru_282757698 table:0];

    [MEMORY[0x277CCACA8] localizedStringWithFormat:v6, v7 + 1];
  }
  v9 = ;

  return v9;
}

- (id)titleForRowID:(id)a3
{
  v4 = a3;
  v5 = [(ICTableAccessibilityController *)self columnIDForColumnIndex:0];
  if ([(ICTableAccessibilityController *)self isHeaderCellAtColumnID:v5 rowID:v4])
  {
    v6 = [(ICTableAccessibilityController *)self attributedContentStringForColumnID:v5 rowID:v4];

    [v6 string];
  }

  else
  {
    v7 = [(ICTableAccessibilityController *)self rowIndexForRowID:v4];

    v8 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v8 localizedStringForKey:@"row %lu" value:&stru_282757698 table:0];

    [MEMORY[0x277CCACA8] localizedStringWithFormat:v6, v7 + 1];
  }
  v9 = ;

  return v9;
}

- (BOOL)isEditable
{
  v2 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  v3 = [v2 attachment];
  v4 = [v3 note];
  v5 = [v4 isEditable];

  return v5;
}

- (BOOL)cellIsEditingAtColumnID:(id)a3 rowID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  v9 = [v8 tableSelection];

  v10 = [v9 type];
  v11 = [v9 columns];
  v12 = [v11 firstObject];

  v13 = [v9 rows];
  v14 = [v13 firstObject];

  if (v10 == 1 && [v6 isEqual:v12])
  {
    v15 = [v7 isEqual:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)isHeaderCellAtColumnID:(id)a3 rowID:(id)a4
{
  v4 = [(ICTableAccessibilityController *)self attributedContentStringForColumnID:a3 rowID:a4];
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

- (void)scrollColumnIDToVisible:(id)a3 rowID:(id)a4
{
  [(ICTableAccessibilityController *)self frameInScreenSpaceForCellWithColumnID:a3 rowID:a4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  v14 = [v13 tableContentView];
  [v14 convertRect:0 fromView:{v6, v8, v10, v12}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = [(ICTableAccessibilityController *)self noteScrollView];
  [v23 convertRect:0 fromView:{v6, v8, v10, v12}];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  v33 = [v32 scrollView];
  [v33 scrollRectToVisible:1 animated:{v16, v18, v20, v22}];

  v34 = [(ICTableAccessibilityController *)self noteScrollView];
  [v34 scrollRectToVisible:1 animated:{v25, v27, v29, v31}];
}

- (void)moveCurrentColumnOrRow:(BOOL)a3 toIndex:(unint64_t)a4
{
  v5 = a3;
  v6 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  [v6 moveCurrentColumnOrRow:v5 toIndex:a4];
}

- (id)selectedCells
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  v4 = [v3 tableSelection];

  if ([v4 type] == 1 || objc_msgSend(v4, "type") == 4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = [v4 columns];
    v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v18)
    {
      v16 = *v24;
      v17 = v4;
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
          v8 = [v4 rows];
          v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
                  objc_enumerationMutation(v8);
                }

                v13 = [(ICTableAccessibilityController *)self cellElementForColumnIndex:[(ICTableAccessibilityController *)self columnIndexForColumnID:v7] rowIndex:[(ICTableAccessibilityController *)self rowIndexForRowID:*(*(&v19 + 1) + 8 * j)]];
                [v5 ic_addNonNilObject:v13];
              }

              v10 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v10);
          }

          v4 = v17;
        }

        v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v18);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)selectedColumnIDs
{
  v2 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  v3 = [v2 tableSelection];
  v4 = [v3 columns];

  return v4;
}

- (id)selectedRowIDs
{
  v2 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  v3 = [v2 tableSelection];
  v4 = [v3 rows];

  return v4;
}

- (void)selectCurrentColumn
{
  v2 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  [v2 selectCurrentColumnForAccessibility];
}

- (void)selectCurrentRow
{
  v2 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  [v2 selectCurrentRowForAccessibility];
}

- (void)selectColumnWithID:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = a3;
    v5 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
    v6 = [v5 tableSelection];
    v8[0] = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

    [v6 selectColumns:v7];
  }
}

- (void)selectRowWithID:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = a3;
    v5 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
    v6 = [v5 tableSelection];
    v8[0] = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

    [v6 selectRows:v7];
  }
}

- (void)selectCellForColumnID:(id)a3 rowID:(id)a4
{
  if (a3 && a4)
  {
    v6 = a4;
    v7 = a3;
    v9 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
    v8 = [v9 tableSelection];
    [v8 selectCellAtColumn:v7 row:v6];
  }
}

- (void)selectCellRangeForCurrentCell
{
  v2 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  [v2 selectCell];
}

- (BOOL)isTableTextRangeSelected
{
  v3 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  v4 = [v3 noteTextView];
  v5 = [v4 selectedRange];
  v7 = v6;
  v8 = [(ICTableAccessibilityController *)self hostingTableAttachmentView];
  v11 = v5 == [v8 textRangeInNote] && v7 == v9;

  return v11;
}

- (void)selectTableTextRange:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  v16 = [v5 noteTextView];

  v6 = [(ICTableAccessibilityController *)self hostingTableAttachmentView];
  v7 = [v6 textRangeInNote];
  v9 = v8;

  _UIAccessibilityBlockPostingOfAllNotifications();
  [v16 select:v16];
  [v16 setSelectedRange:{v7, v9}];
  [v16 scrollRangeToVisible:{v7, v9}];
  _UIAccessibilityUnblockPostingOfAllNotifications();
  if (v3)
  {
    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 localizedStringForKey:@"Selected %@. Use the actions rotor to start dragging." value:&stru_282757698 table:0];

    v12 = MEMORY[0x277CCACA8];
    v13 = [(ICTableAccessibilityController *)self hostingTableAttachmentView];
    v14 = [v13 accessibilityLabel];
    v15 = [v12 localizedStringWithFormat:v11, v14];

    UIAccessibilityPostNotification(*MEMORY[0x277D76438], v15);
  }
}

- (void)speakCellRangeSelection:(id)a3
{
  v30 = a3;
  if ([v30 type] == 4)
  {
    v4 = [(ICTableAccessibilityController *)self table];
    v5 = [v30 columns];
    v6 = [v5 firstObject];
    v7 = [v4 columnIndexForIdentifier:v6];

    v8 = [(ICTableAccessibilityController *)self table];
    v9 = [v30 rows];
    v10 = [v9 firstObject];
    v11 = [v8 rowIndexForIdentifier:v10];

    v12 = [(ICTableAccessibilityController *)self table];
    v13 = [v30 columns];
    v14 = [v13 lastObject];
    v15 = [v12 columnIndexForIdentifier:v14];

    v16 = [(ICTableAccessibilityController *)self table];
    v17 = [v30 rows];
    v18 = [v17 lastObject];
    v19 = [v16 rowIndexForIdentifier:v18];

    v20 = [MEMORY[0x277CCA8D8] mainBundle];
    v21 = v20;
    if (v7 == v15 && v11 == v19)
    {
      v22 = [v20 localizedStringForKey:@"Selected column %lu value:row %lu" table:{&stru_282757698, 0}];

      v23 = MEMORY[0x277CCACA8];
      v24 = v7 + 1;
      v25 = v11 + 1;
    }

    else
    {
      if (v7 == v15)
      {
        v22 = [v20 localizedStringForKey:@"Selected column %lu value:rows %lu to %lu" table:{&stru_282757698, 0}];

        [MEMORY[0x277CCACA8] localizedStringWithFormat:v22, v7 + 1, v11 + 1, v19 + 1, v29];
        v27 = LABEL_12:;

        UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
        UIAccessibilityPostNotification(*MEMORY[0x277D76438], v27);

        goto LABEL_13;
      }

      v26 = v15 + 1;
      if (v11 == v19)
      {
        v22 = [v20 localizedStringForKey:@"Selected row %lu value:columns %lu to %lu" table:{&stru_282757698, 0}];

        v23 = MEMORY[0x277CCACA8];
        v24 = v11 + 1;
        v25 = v7 + 1;
      }

      else
      {
        v22 = [v20 localizedStringForKey:@"Selected column %lu value:row %lu table:{to column %lu, row %lu", &stru_282757698, 0}];

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
  v3 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  v2 = [v3 noteTextView];
  [v2 icaxClearCachedChildrenForReparenting];
}

- (void)addColumnBefore
{
  v3 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  [v3 addColumnBeforeSelection:self];
}

- (void)addColumnAfter
{
  v3 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  [v3 addColumnAfterSelection:self];
}

- (void)deleteSelectedColumns
{
  v3 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  [v3 deleteSelectedColumns:self];
}

- (void)addRowAbove
{
  v3 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  [v3 addRowAboveSelection:self];
}

- (void)addRowBelow
{
  v3 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  [v3 addRowBelowSelection:self];
}

- (void)deleteSelectedRows
{
  v3 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  [v3 deleteSelectedRows:self];
}

- (void)reverseTableDirection
{
  v3 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  [v3 reverseTableColumnDirection:self];
}

- (void)convertTableToText
{
  v3 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  [v3 convertTableToText:self];
}

- (void)invalidateAXElementsForColumnID:(id)a3
{
  v4 = a3;
  v5 = [(ICTableAccessibilityController *)self elementProvider];
  [v5 removeElementsForColumnID:v4];
}

- (void)invalidateAXElementsForRowID:(id)a3
{
  v4 = a3;
  v5 = [(ICTableAccessibilityController *)self elementProvider];
  [v5 removeElementsForRowID:v4];
}

- (id)table
{
  v2 = [(ICTableAccessibilityController *)self tableAttachmentViewController];
  v3 = [v2 table];

  return v3;
}

- (ICTableAttachmentViewController)tableAttachmentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_tableAttachmentViewController);

  return WeakRetained;
}

@end