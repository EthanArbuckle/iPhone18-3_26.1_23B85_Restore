@interface ICTableCellAccessibilityElement
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityScroll:(int64_t)a3;
- (BOOL)addColumnAfter;
- (BOOL)addRowBelow;
- (BOOL)deleteColumn;
- (BOOL)deleteRow;
- (BOOL)isEditing;
- (BOOL)selectCellRange;
- (BOOL)selectCurrentColumn;
- (BOOL)selectCurrentRow;
- (BOOL)selectTable;
- (CGRect)boundingRect;
- (CGRect)frameInScreenSpace;
- (ICTableAccessibilityController)tableAXController;
- (ICTableCellAccessibilityElement)initWithTableAccessibilityController:(id)a3 columnID:(id)a4 rowID:(id)a5;
- (NSArray)supportedRotorTypes;
- (NSAttributedString)attributedContentString;
- (NSString)description;
- (_NSRange)accessibilityColumnRange;
- (_NSRange)accessibilityRowRange;
- (_NSRange)textRangeInNote;
- (id)_accessibilityTextInputElement;
- (id)_accessibilityTextViewTextOperationResponder;
- (id)accessibilityContainer;
- (id)accessibilityCustomActions;
- (id)accessibilityCustomRotors;
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityElementForRow:(int64_t)a3 andColumn:(int64_t)a4;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (id)accessibilityValue;
- (id)noteEditorController;
- (unint64_t)accessibilityTraits;
- (unint64_t)columnIndex;
- (unint64_t)rowIndex;
- (void)accessibilityElementDidBecomeFocused;
- (void)moveFocusToFirstSelectedCell;
- (void)reverseTableDirection;
@end

@implementation ICTableCellAccessibilityElement

- (id)accessibilityContainer
{
  v2 = [(ICTableCellAccessibilityElement *)self tableAXController];
  v3 = [v2 tableElement];

  return v3;
}

- (id)accessibilityLabel
{
  v3 = [(ICTableCellAccessibilityElement *)self accessibilityValue];
  v4 = [v3 length];
  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = v5;
  if (v4)
  {
    v7 = @"cell";
  }

  else
  {
    v7 = @"empty cell";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_282757698 table:0];

  v9 = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = [v9 localizedStringForKey:@"column %lu value:row %lu" table:{&stru_282757698, 0}];

  v13 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v10, -[ICTableCellAccessibilityElement columnIndex](self, "columnIndex") + 1, -[ICTableCellAccessibilityElement rowIndex](self, "rowIndex") + 1];
  v11 = __ICAccessibilityStringForVariables();

  return v11;
}

- (id)accessibilityValue
{
  v3 = objc_alloc(MEMORY[0x277CCAB48]);
  v4 = [(ICTableCellAccessibilityElement *)self attributedContentString];
  v5 = [v3 initWithAttributedString:v4];

  v6 = *MEMORY[0x277D74060];
  v7 = [v5 length];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__ICTableCellAccessibilityElement_iOS__accessibilityValue__block_invoke;
  v11[3] = &unk_2781AC5D8;
  v12 = v5;
  v8 = v5;
  [v8 enumerateAttribute:v6 inRange:0 options:v7 usingBlock:{0, v11}];
  v9 = [v8 copy];

  return v9;
}

void __58__ICTableCellAccessibilityElement_iOS__accessibilityValue__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  objc_opt_class();
  v13 = ICDynamicCast();

  v8 = [MEMORY[0x277D35F30] sharedContext];
  v9 = [v8 managedObjectContext];
  v10 = [v13 inlineAttachmentInContext:v9];

  if (v10)
  {
    v11 = [v10 altText];
    v12 = [v11 icaxLowPitchAttributedString];

    [*(a1 + 32) replaceCharactersInRange:a3 withAttributedString:{a4, v12}];
  }
}

- (id)accessibilityHint
{
  if (-[ICTableCellAccessibilityElement isEditing](self, "isEditing") || (-[ICTableCellAccessibilityElement tableAXController](self, "tableAXController"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isEditable], v3, !v4))
  {
    v6 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 localizedStringForKey:@"Double tap to edit cell." value:&stru_282757698 table:0];
  }

  return v6;
}

- (id)accessibilityUserInputLabels
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 localizedStringForKey:@"column %lu value:row %lu" table:{&stru_282757698, 0}];

  v5 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v4, -[ICTableCellAccessibilityElement columnIndex](self, "columnIndex") + 1, -[ICTableCellAccessibilityElement rowIndex](self, "rowIndex") + 1];
  v6 = [(ICTableCellAccessibilityElement *)self attributedContentString];
  v7 = [v6 length];

  if (v7)
  {
    v12[0] = v5;
    v8 = [(ICTableCellAccessibilityElement *)self attributedContentString];
    v9 = [v8 string];
    v12[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  }

  else
  {
    v13[0] = v5;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  }

  return v10;
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = ICTableCellAccessibilityElement;
  v3 = [(ICTableCellAccessibilityElement *)&v8 accessibilityTraits];
  v4 = [(ICTableCellAccessibilityElement *)self tableAXController];
  v5 = [v4 selectedCells];
  v6 = [v5 containsObject:self];

  if (v6)
  {
    v3 |= *MEMORY[0x277D76598];
    if ([(ICTableCellAccessibilityElement *)self isEditing])
    {
      v3 |= *MEMORY[0x277D74038];
    }
  }

  return v3;
}

- (_NSRange)accessibilityRowRange
{
  v3 = [(ICTableCellAccessibilityElement *)self tableAXController];
  v4 = [(ICTableCellAccessibilityElement *)self rowID];
  v5 = [v3 rowIndexForRowID:v4];

  v6 = v5;
  v7 = 1;
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)accessibilityColumnRange
{
  v3 = [(ICTableCellAccessibilityElement *)self tableAXController];
  v4 = [(ICTableCellAccessibilityElement *)self columnID];
  v5 = [v3 columnIndexForColumnID:v4];

  v6 = v5;
  v7 = 1;
  result.length = v7;
  result.location = v6;
  return result;
}

- (id)accessibilityElementForRow:(int64_t)a3 andColumn:(int64_t)a4
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL || a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_6;
  }

  v9 = [(ICTableCellAccessibilityElement *)self tableAXController];
  if ([v9 rowCount] <= a3)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v10 = [(ICTableCellAccessibilityElement *)self tableAXController];
  v11 = [v10 columnCount];

  if (v11 <= a4)
  {
LABEL_6:
    v5 = 0;
    goto LABEL_12;
  }

  v9 = [(ICTableCellAccessibilityElement *)self tableAXController];
  v5 = [v9 cellElementForColumnIndex:a4 rowIndex:a3];
LABEL_11:

LABEL_12:

  return v5;
}

- (BOOL)accessibilityActivate
{
  v3 = [(ICTableCellAccessibilityElement *)self tableAXController];
  v4 = [v3 isEditable];

  if (v4)
  {
    v5 = [(ICTableCellAccessibilityElement *)self tableAXController];
    v6 = [(ICTableCellAccessibilityElement *)self columnID];
    v7 = [(ICTableCellAccessibilityElement *)self rowID];
    [v5 beginEditingCellWithColumnID:v6 rowID:v7];

    v8 = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = [v8 localizedStringForKey:@"Editing %@" value:&stru_282757698 table:0];

    v10 = MEMORY[0x277CCACA8];
    v11 = [(ICTableCellAccessibilityElement *)self accessibilityLabel];
    v12 = [v10 localizedStringWithFormat:v9, v11];

    UIAccessibilityPostNotification(*MEMORY[0x277D76438], v12);
  }

  return v4;
}

- (id)accessibilityCustomActions
{
  v3 = [(ICTableCellAccessibilityElement *)self tableAXController];
  v4 = [v3 isEditable];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [v6 localizedStringForKey:@"ADD_COLUMN_MENU_ACTION" value:@"Add Column" table:@"Localizable"];

    v48 = v7;
    v47 = [objc_alloc(MEMORY[0x277D75088]) initWithName:v7 target:self selector:sel_addColumnAfter];
    [v5 addObject:?];
    v8 = objc_alloc(MEMORY[0x277D75088]);
    v9 = [MEMORY[0x277CCA8D8] mainBundle];
    v10 = [v9 localizedStringForKey:@"Add Row" value:&stru_282757698 table:0];
    v11 = [v8 initWithName:v10 target:self selector:sel_addRowBelow];

    v46 = v11;
    [v5 addObject:v11];
    v12 = [(ICTableCellAccessibilityElement *)self tableAXController];
    v13 = [v12 columnCount];

    if (v13 >= 2)
    {
      v14 = [MEMORY[0x277CCA8D8] mainBundle];
      v15 = [v14 localizedStringForKey:@"Delete %lu Column" value:&stru_282757698 table:0];

      v16 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v15, 1];
      v17 = [objc_alloc(MEMORY[0x277D75088]) initWithName:v16 target:self selector:sel_deleteColumn];
      [v5 addObject:v17];
    }

    v18 = [(ICTableCellAccessibilityElement *)self tableAXController];
    v19 = [v18 rowCount];

    if (v19 >= 2)
    {
      v20 = [MEMORY[0x277CCA8D8] mainBundle];
      v21 = [v20 localizedStringForKey:@"Delete %lu Row" value:&stru_282757698 table:0];

      v22 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v21, 1];
      v23 = [objc_alloc(MEMORY[0x277D75088]) initWithName:v22 target:self selector:sel_deleteRow];
      [v5 addObject:v23];
    }

    v24 = objc_alloc(MEMORY[0x277D75088]);
    v25 = [MEMORY[0x277CCA8D8] mainBundle];
    v26 = [v25 localizedStringForKey:@"Select Column" value:&stru_282757698 table:0];
    v27 = [v24 initWithName:v26 target:self selector:sel_selectCurrentColumn];

    [v5 addObject:v27];
    v28 = objc_alloc(MEMORY[0x277D75088]);
    v29 = [MEMORY[0x277CCA8D8] mainBundle];
    v30 = [v29 localizedStringForKey:@"Select Row" value:&stru_282757698 table:0];
    v31 = [v28 initWithName:v30 target:self selector:sel_selectCurrentRow];

    [v5 addObject:v31];
    v32 = objc_alloc(MEMORY[0x277D75088]);
    v33 = [MEMORY[0x277CCA8D8] mainBundle];
    v34 = [v33 localizedStringForKey:@"Select cell range" value:&stru_282757698 table:0];
    v35 = [v32 initWithName:v34 target:self selector:sel_selectCellRange];

    [v5 addObject:v35];
    v36 = objc_alloc(MEMORY[0x277D75088]);
    v37 = [MEMORY[0x277CCA8D8] mainBundle];
    v38 = [v37 localizedStringForKey:@"Select table" value:&stru_282757698 table:0];
    v39 = [v36 initWithName:v38 target:self selector:sel_selectTable];

    [v5 addObject:v39];
    if ([MEMORY[0x277D36828] supportsRTL])
    {
      v40 = objc_alloc(MEMORY[0x277D75088]);
      v41 = [MEMORY[0x277CCA8D8] mainBundle];
      v42 = [v41 localizedStringForKey:@"Reverse Table Direction" value:&stru_282757698 table:0];
      v43 = [v40 initWithName:v42 target:self selector:sel_reverseTableDirection];

      [v5 addObject:v43];
    }

    v44 = [v5 copy];
  }

  else
  {
    v44 = 0;
  }

  return v44;
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  v5 = [(ICTableCellAccessibilityElement *)self tableAXController];
  v6 = [v5 tableScrollView];

  v7 = 0;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v9 = [(ICTableCellAccessibilityElement *)self tableAXController];
      v10 = [v9 noteScrollView];
      v11 = [v10 accessibilityScrollUpPage];
    }

    else
    {
      if (a3 != 4)
      {
        goto LABEL_12;
      }

      v9 = [(ICTableCellAccessibilityElement *)self tableAXController];
      v10 = [v9 noteScrollView];
      v11 = [v10 accessibilityScrollDownPage];
    }

    v7 = v11;

    goto LABEL_12;
  }

  if (a3 == 1)
  {
    v8 = [v6 accessibilityScrollRightPage];
    goto LABEL_9;
  }

  if (a3 == 2)
  {
    v8 = [v6 accessibilityScrollLeftPage];
LABEL_9:
    v7 = v8;
  }

LABEL_12:

  return v7;
}

- (void)accessibilityElementDidBecomeFocused
{
  v6.receiver = self;
  v6.super_class = ICTableCellAccessibilityElement;
  [(ICTableCellAccessibilityElement *)&v6 accessibilityElementDidBecomeFocused];
  v3 = [(ICTableCellAccessibilityElement *)self tableAXController];
  v4 = [(ICTableCellAccessibilityElement *)self columnID];
  v5 = [(ICTableCellAccessibilityElement *)self rowID];
  [v3 scrollColumnIDToVisible:v4 rowID:v5];
}

- (id)_accessibilityTextInputElement
{
  v3 = [(ICTableCellAccessibilityElement *)self tableAXController];
  v4 = [(ICTableCellAccessibilityElement *)self columnID];
  v5 = [v3 textViewForColumnID:v4];

  return v5;
}

- (id)_accessibilityTextViewTextOperationResponder
{
  v3 = [(ICTableCellAccessibilityElement *)self tableAXController];
  v4 = [(ICTableCellAccessibilityElement *)self columnID];
  v5 = [v3 textViewForColumnID:v4];

  return v5;
}

- (id)accessibilityCustomRotors
{
  v2 = [(ICTableCellAccessibilityElement *)self noteEditorController];
  v3 = +[ICAccessibilityCustomRotorController sharedInstance];
  [v3 setNoteEditorViewController:v2];

  v4 = +[ICAccessibilityCustomRotorController sharedInstance];
  v5 = [v4 sharedTextViewRotors];

  return v5;
}

- (id)accessibilityDragSourceDescriptors
{
  v3 = [(ICTableCellAccessibilityElement *)self tableAXController];
  v4 = [v3 isTableTextRangeSelected];

  if (v4)
  {
    v5 = [(ICTableCellAccessibilityElement *)self tableAXController];
    v6 = [v5 dragProviderView];
    v7 = [v6 accessibilityDragSourceDescriptors];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)supportedRotorTypes
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"ICAccessibilityRotorTypeTables";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (_NSRange)textRangeInNote
{
  v2 = [(ICTableCellAccessibilityElement *)self tableAXController];
  v3 = [v2 attachmentRangeInNote];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (BOOL)addColumnAfter
{
  v3 = [(ICTableCellAccessibilityElement *)self tableAXController];
  v4 = [(ICTableCellAccessibilityElement *)self columnID];
  [v3 selectColumnWithID:v4];

  v5 = [(ICTableCellAccessibilityElement *)self tableAXController];
  [v5 addColumnAfter];

  [(ICTableCellAccessibilityElement *)self moveFocusToFirstSelectedCell];
  return 1;
}

- (BOOL)addRowBelow
{
  v3 = [(ICTableCellAccessibilityElement *)self tableAXController];
  v4 = [(ICTableCellAccessibilityElement *)self rowID];
  [v3 selectRowWithID:v4];

  v5 = [(ICTableCellAccessibilityElement *)self tableAXController];
  [v5 addRowBelow];

  [(ICTableCellAccessibilityElement *)self moveFocusToFirstSelectedCell];
  return 1;
}

- (BOOL)deleteColumn
{
  v3 = [(ICTableCellAccessibilityElement *)self tableAXController];
  v4 = [(ICTableCellAccessibilityElement *)self columnID];
  v5 = [(ICTableCellAccessibilityElement *)self rowID];
  [v3 beginEditingCellWithColumnID:v4 rowID:v5];

  v6 = [(ICTableCellAccessibilityElement *)self tableAXController];
  v7 = [(ICTableCellAccessibilityElement *)self columnID];
  [v6 selectColumnWithID:v7];

  v8 = [(ICTableCellAccessibilityElement *)self tableAXController];
  [v8 deleteSelectedColumns];

  [(ICTableCellAccessibilityElement *)self moveFocusToFirstSelectedCell];
  return 1;
}

- (BOOL)deleteRow
{
  v3 = [(ICTableCellAccessibilityElement *)self tableAXController];
  v4 = [(ICTableCellAccessibilityElement *)self columnID];
  v5 = [(ICTableCellAccessibilityElement *)self rowID];
  [v3 beginEditingCellWithColumnID:v4 rowID:v5];

  v6 = [(ICTableCellAccessibilityElement *)self tableAXController];
  v7 = [(ICTableCellAccessibilityElement *)self rowID];
  [v6 selectRowWithID:v7];

  v8 = [(ICTableCellAccessibilityElement *)self tableAXController];
  [v8 deleteSelectedRows];

  [(ICTableCellAccessibilityElement *)self moveFocusToFirstSelectedCell];
  return 1;
}

- (BOOL)selectCurrentColumn
{
  v3 = [(ICTableCellAccessibilityElement *)self tableAXController];
  v4 = [(ICTableCellAccessibilityElement *)self columnID];
  v5 = [(ICTableCellAccessibilityElement *)self rowID];
  [v3 beginEditingCellWithColumnID:v4 rowID:v5];

  v6 = [(ICTableCellAccessibilityElement *)self tableAXController];
  [v6 selectCurrentColumn];

  return 1;
}

- (BOOL)selectCurrentRow
{
  v3 = [(ICTableCellAccessibilityElement *)self tableAXController];
  v4 = [(ICTableCellAccessibilityElement *)self columnID];
  v5 = [(ICTableCellAccessibilityElement *)self rowID];
  [v3 beginEditingCellWithColumnID:v4 rowID:v5];

  v6 = [(ICTableCellAccessibilityElement *)self tableAXController];
  [v6 selectCurrentRow];

  return 1;
}

- (BOOL)selectCellRange
{
  if (![(ICTableCellAccessibilityElement *)self isEditing])
  {
    v3 = [(ICTableCellAccessibilityElement *)self tableAXController];
    v4 = [(ICTableCellAccessibilityElement *)self columnID];
    v5 = [(ICTableCellAccessibilityElement *)self rowID];
    [v3 beginEditingCellWithColumnID:v4 rowID:v5];
  }

  v6 = [(ICTableCellAccessibilityElement *)self tableAXController];
  [v6 selectCellRangeForCurrentCell];

  LODWORD(v6) = *MEMORY[0x277D74020];
  v7 = [(ICTableCellAccessibilityElement *)self tableAXController];
  v8 = [v7 endSelectionKnob];
  UIAccessibilityPostNotification(v6, v8);

  return 1;
}

- (BOOL)selectTable
{
  v2 = [(ICTableCellAccessibilityElement *)self tableAXController];
  [v2 selectTableTextRange:1];

  return 1;
}

- (void)moveFocusToFirstSelectedCell
{
  v2 = [(ICTableCellAccessibilityElement *)self tableAXController];
  v3 = [v2 selectedCells];
  argument = [v3 firstObject];

  UIAccessibilityPostNotification(*MEMORY[0x277D76488], argument);
}

- (void)reverseTableDirection
{
  v3 = [(ICTableCellAccessibilityElement *)self tableAXController];
  [v3 reverseTableDirection];

  v4 = [(ICTableCellAccessibilityElement *)self tableAXController];
  LODWORD(v3) = [v4 isTableRightToLeft];

  v5 = *MEMORY[0x277D76438];
  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = v6;
  if (v3)
  {
    v7 = @"Right to left";
  }

  else
  {
    v7 = @"Left to right";
  }

  v8 = [v6 localizedStringForKey:v7 value:&stru_282757698 table:0];
  UIAccessibilityPostNotification(v5, v8);
}

- (id)noteEditorController
{
  v2 = [(ICTableCellAccessibilityElement *)self tableAXController];
  v3 = [v2 noteScrollView];

  if (v3)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v4 = [v3 nextResponder];

      v3 = v4;
      if (!v4)
      {
        goto LABEL_6;
      }
    }

    v3 = v3;
  }

LABEL_6:

  return v3;
}

- (ICTableCellAccessibilityElement)initWithTableAccessibilityController:(id)a3 columnID:(id)a4 rowID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 tableElement];
  v18.receiver = self;
  v18.super_class = ICTableCellAccessibilityElement;
  v12 = [(ICTableCellAccessibilityElement *)&v18 initWithAccessibilityContainer:v11];

  if (v12)
  {
    objc_storeWeak(&v12->_tableAXController, v8);
    v13 = [v10 copy];
    rowID = v12->_rowID;
    v12->_rowID = v13;

    v15 = [v9 copy];
    columnID = v12->_columnID;
    v12->_columnID = v15;
  }

  return v12;
}

- (unint64_t)rowIndex
{
  v3 = [(ICTableCellAccessibilityElement *)self tableAXController];
  v4 = [(ICTableCellAccessibilityElement *)self rowID];
  v5 = [v3 rowIndexForRowID:v4];

  return v5;
}

- (unint64_t)columnIndex
{
  v3 = [(ICTableCellAccessibilityElement *)self tableAXController];
  v4 = [(ICTableCellAccessibilityElement *)self columnID];
  v5 = [v3 columnIndexForColumnID:v4];

  return v5;
}

- (NSAttributedString)attributedContentString
{
  v3 = [(ICTableCellAccessibilityElement *)self tableAXController];
  v4 = [(ICTableCellAccessibilityElement *)self columnID];
  v5 = [(ICTableCellAccessibilityElement *)self rowID];
  v6 = [v3 attributedContentStringForColumnID:v4 rowID:v5];

  return v6;
}

- (CGRect)frameInScreenSpace
{
  v3 = [(ICTableCellAccessibilityElement *)self tableAXController];
  v4 = [(ICTableCellAccessibilityElement *)self columnID];
  v5 = [(ICTableCellAccessibilityElement *)self rowID];
  [v3 frameInScreenSpaceForCellWithColumnID:v4 rowID:v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (BOOL)isEditing
{
  v3 = [(ICTableCellAccessibilityElement *)self tableAXController];
  v4 = [(ICTableCellAccessibilityElement *)self columnID];
  v5 = [(ICTableCellAccessibilityElement *)self rowID];
  v6 = [v3 cellIsEditingAtColumnID:v4 rowID:v5];

  return v6;
}

- (NSString)description
{
  [(ICTableCellAccessibilityElement *)self frameInScreenSpace];
  v3 = NSStringFromCGRect(v13);
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ICTableCellAccessibilityElement rowIndex](self, "rowIndex")}];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ICTableCellAccessibilityElement columnIndex](self, "columnIndex")}];
  v8 = [(ICTableCellAccessibilityElement *)self attributedContentString];
  v9 = [v8 string];
  v10 = [v4 stringWithFormat:@"<%@ %p row=%@ col=%@ axframe=%@ content=%@>", v5, self, v6, v7, v3, v9];

  return v10;
}

- (ICTableAccessibilityController)tableAXController
{
  WeakRetained = objc_loadWeakRetained(&self->_tableAXController);

  return WeakRetained;
}

- (CGRect)boundingRect
{
  x = self->_boundingRect.origin.x;
  y = self->_boundingRect.origin.y;
  width = self->_boundingRect.size.width;
  height = self->_boundingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end