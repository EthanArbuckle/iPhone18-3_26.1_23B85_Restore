@interface ICTableCellAccessibilityElement
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityScroll:(int64_t)scroll;
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
- (ICTableCellAccessibilityElement)initWithTableAccessibilityController:(id)controller columnID:(id)d rowID:(id)iD;
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
- (id)accessibilityElementForRow:(int64_t)row andColumn:(int64_t)column;
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
  tableAXController = [(ICTableCellAccessibilityElement *)self tableAXController];
  tableElement = [tableAXController tableElement];

  return tableElement;
}

- (id)accessibilityLabel
{
  accessibilityValue = [(ICTableCellAccessibilityElement *)self accessibilityValue];
  v4 = [accessibilityValue length];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = mainBundle;
  if (v4)
  {
    v7 = @"cell";
  }

  else
  {
    v7 = @"empty cell";
  }

  v8 = [mainBundle localizedStringForKey:v7 value:&stru_282757698 table:0];

  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = [mainBundle2 localizedStringForKey:@"column %lu value:row %lu" table:{&stru_282757698, 0}];

  v13 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v10, -[ICTableCellAccessibilityElement columnIndex](self, "columnIndex") + 1, -[ICTableCellAccessibilityElement rowIndex](self, "rowIndex") + 1];
  v11 = __ICAccessibilityStringForVariables();

  return v11;
}

- (id)accessibilityValue
{
  v3 = objc_alloc(MEMORY[0x277CCAB48]);
  attributedContentString = [(ICTableCellAccessibilityElement *)self attributedContentString];
  v5 = [v3 initWithAttributedString:attributedContentString];

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
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [mainBundle localizedStringForKey:@"Double tap to edit cell." value:&stru_282757698 table:0];
  }

  return v6;
}

- (id)accessibilityUserInputLabels
{
  v13[1] = *MEMORY[0x277D85DE8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [mainBundle localizedStringForKey:@"column %lu value:row %lu" table:{&stru_282757698, 0}];

  v5 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v4, -[ICTableCellAccessibilityElement columnIndex](self, "columnIndex") + 1, -[ICTableCellAccessibilityElement rowIndex](self, "rowIndex") + 1];
  attributedContentString = [(ICTableCellAccessibilityElement *)self attributedContentString];
  v7 = [attributedContentString length];

  if (v7)
  {
    v12[0] = v5;
    attributedContentString2 = [(ICTableCellAccessibilityElement *)self attributedContentString];
    string = [attributedContentString2 string];
    v12[1] = string;
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
  accessibilityTraits = [(ICTableCellAccessibilityElement *)&v8 accessibilityTraits];
  tableAXController = [(ICTableCellAccessibilityElement *)self tableAXController];
  selectedCells = [tableAXController selectedCells];
  v6 = [selectedCells containsObject:self];

  if (v6)
  {
    accessibilityTraits |= *MEMORY[0x277D76598];
    if ([(ICTableCellAccessibilityElement *)self isEditing])
    {
      accessibilityTraits |= *MEMORY[0x277D74038];
    }
  }

  return accessibilityTraits;
}

- (_NSRange)accessibilityRowRange
{
  tableAXController = [(ICTableCellAccessibilityElement *)self tableAXController];
  rowID = [(ICTableCellAccessibilityElement *)self rowID];
  v5 = [tableAXController rowIndexForRowID:rowID];

  v6 = v5;
  v7 = 1;
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)accessibilityColumnRange
{
  tableAXController = [(ICTableCellAccessibilityElement *)self tableAXController];
  columnID = [(ICTableCellAccessibilityElement *)self columnID];
  v5 = [tableAXController columnIndexForColumnID:columnID];

  v6 = v5;
  v7 = 1;
  result.length = v7;
  result.location = v6;
  return result;
}

- (id)accessibilityElementForRow:(int64_t)row andColumn:(int64_t)column
{
  if (row == 0x7FFFFFFFFFFFFFFFLL || column == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_6;
  }

  tableAXController = [(ICTableCellAccessibilityElement *)self tableAXController];
  if ([tableAXController rowCount] <= row)
  {
    v5 = 0;
    goto LABEL_11;
  }

  tableAXController2 = [(ICTableCellAccessibilityElement *)self tableAXController];
  columnCount = [tableAXController2 columnCount];

  if (columnCount <= column)
  {
LABEL_6:
    v5 = 0;
    goto LABEL_12;
  }

  tableAXController = [(ICTableCellAccessibilityElement *)self tableAXController];
  v5 = [tableAXController cellElementForColumnIndex:column rowIndex:row];
LABEL_11:

LABEL_12:

  return v5;
}

- (BOOL)accessibilityActivate
{
  tableAXController = [(ICTableCellAccessibilityElement *)self tableAXController];
  isEditable = [tableAXController isEditable];

  if (isEditable)
  {
    tableAXController2 = [(ICTableCellAccessibilityElement *)self tableAXController];
    columnID = [(ICTableCellAccessibilityElement *)self columnID];
    rowID = [(ICTableCellAccessibilityElement *)self rowID];
    [tableAXController2 beginEditingCellWithColumnID:columnID rowID:rowID];

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = [mainBundle localizedStringForKey:@"Editing %@" value:&stru_282757698 table:0];

    v10 = MEMORY[0x277CCACA8];
    accessibilityLabel = [(ICTableCellAccessibilityElement *)self accessibilityLabel];
    v12 = [v10 localizedStringWithFormat:v9, accessibilityLabel];

    UIAccessibilityPostNotification(*MEMORY[0x277D76438], v12);
  }

  return isEditable;
}

- (id)accessibilityCustomActions
{
  tableAXController = [(ICTableCellAccessibilityElement *)self tableAXController];
  isEditable = [tableAXController isEditable];

  if (isEditable)
  {
    array = [MEMORY[0x277CBEB18] array];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [mainBundle localizedStringForKey:@"ADD_COLUMN_MENU_ACTION" value:@"Add Column" table:@"Localizable"];

    v48 = v7;
    v47 = [objc_alloc(MEMORY[0x277D75088]) initWithName:v7 target:self selector:sel_addColumnAfter];
    [array addObject:?];
    v8 = objc_alloc(MEMORY[0x277D75088]);
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v10 = [mainBundle2 localizedStringForKey:@"Add Row" value:&stru_282757698 table:0];
    v11 = [v8 initWithName:v10 target:self selector:sel_addRowBelow];

    v46 = v11;
    [array addObject:v11];
    tableAXController2 = [(ICTableCellAccessibilityElement *)self tableAXController];
    columnCount = [tableAXController2 columnCount];

    if (columnCount >= 2)
    {
      mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
      v15 = [mainBundle3 localizedStringForKey:@"Delete %lu Column" value:&stru_282757698 table:0];

      v16 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v15, 1];
      v17 = [objc_alloc(MEMORY[0x277D75088]) initWithName:v16 target:self selector:sel_deleteColumn];
      [array addObject:v17];
    }

    tableAXController3 = [(ICTableCellAccessibilityElement *)self tableAXController];
    rowCount = [tableAXController3 rowCount];

    if (rowCount >= 2)
    {
      mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
      v21 = [mainBundle4 localizedStringForKey:@"Delete %lu Row" value:&stru_282757698 table:0];

      v22 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v21, 1];
      v23 = [objc_alloc(MEMORY[0x277D75088]) initWithName:v22 target:self selector:sel_deleteRow];
      [array addObject:v23];
    }

    v24 = objc_alloc(MEMORY[0x277D75088]);
    mainBundle5 = [MEMORY[0x277CCA8D8] mainBundle];
    v26 = [mainBundle5 localizedStringForKey:@"Select Column" value:&stru_282757698 table:0];
    v27 = [v24 initWithName:v26 target:self selector:sel_selectCurrentColumn];

    [array addObject:v27];
    v28 = objc_alloc(MEMORY[0x277D75088]);
    mainBundle6 = [MEMORY[0x277CCA8D8] mainBundle];
    v30 = [mainBundle6 localizedStringForKey:@"Select Row" value:&stru_282757698 table:0];
    v31 = [v28 initWithName:v30 target:self selector:sel_selectCurrentRow];

    [array addObject:v31];
    v32 = objc_alloc(MEMORY[0x277D75088]);
    mainBundle7 = [MEMORY[0x277CCA8D8] mainBundle];
    v34 = [mainBundle7 localizedStringForKey:@"Select cell range" value:&stru_282757698 table:0];
    v35 = [v32 initWithName:v34 target:self selector:sel_selectCellRange];

    [array addObject:v35];
    v36 = objc_alloc(MEMORY[0x277D75088]);
    mainBundle8 = [MEMORY[0x277CCA8D8] mainBundle];
    v38 = [mainBundle8 localizedStringForKey:@"Select table" value:&stru_282757698 table:0];
    v39 = [v36 initWithName:v38 target:self selector:sel_selectTable];

    [array addObject:v39];
    if ([MEMORY[0x277D36828] supportsRTL])
    {
      v40 = objc_alloc(MEMORY[0x277D75088]);
      mainBundle9 = [MEMORY[0x277CCA8D8] mainBundle];
      v42 = [mainBundle9 localizedStringForKey:@"Reverse Table Direction" value:&stru_282757698 table:0];
      v43 = [v40 initWithName:v42 target:self selector:sel_reverseTableDirection];

      [array addObject:v43];
    }

    v44 = [array copy];
  }

  else
  {
    v44 = 0;
  }

  return v44;
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  tableAXController = [(ICTableCellAccessibilityElement *)self tableAXController];
  tableScrollView = [tableAXController tableScrollView];

  v7 = 0;
  if (scroll > 2)
  {
    if (scroll == 3)
    {
      tableAXController2 = [(ICTableCellAccessibilityElement *)self tableAXController];
      noteScrollView = [tableAXController2 noteScrollView];
      accessibilityScrollUpPage = [noteScrollView accessibilityScrollUpPage];
    }

    else
    {
      if (scroll != 4)
      {
        goto LABEL_12;
      }

      tableAXController2 = [(ICTableCellAccessibilityElement *)self tableAXController];
      noteScrollView = [tableAXController2 noteScrollView];
      accessibilityScrollUpPage = [noteScrollView accessibilityScrollDownPage];
    }

    v7 = accessibilityScrollUpPage;

    goto LABEL_12;
  }

  if (scroll == 1)
  {
    accessibilityScrollRightPage = [tableScrollView accessibilityScrollRightPage];
    goto LABEL_9;
  }

  if (scroll == 2)
  {
    accessibilityScrollRightPage = [tableScrollView accessibilityScrollLeftPage];
LABEL_9:
    v7 = accessibilityScrollRightPage;
  }

LABEL_12:

  return v7;
}

- (void)accessibilityElementDidBecomeFocused
{
  v6.receiver = self;
  v6.super_class = ICTableCellAccessibilityElement;
  [(ICTableCellAccessibilityElement *)&v6 accessibilityElementDidBecomeFocused];
  tableAXController = [(ICTableCellAccessibilityElement *)self tableAXController];
  columnID = [(ICTableCellAccessibilityElement *)self columnID];
  rowID = [(ICTableCellAccessibilityElement *)self rowID];
  [tableAXController scrollColumnIDToVisible:columnID rowID:rowID];
}

- (id)_accessibilityTextInputElement
{
  tableAXController = [(ICTableCellAccessibilityElement *)self tableAXController];
  columnID = [(ICTableCellAccessibilityElement *)self columnID];
  v5 = [tableAXController textViewForColumnID:columnID];

  return v5;
}

- (id)_accessibilityTextViewTextOperationResponder
{
  tableAXController = [(ICTableCellAccessibilityElement *)self tableAXController];
  columnID = [(ICTableCellAccessibilityElement *)self columnID];
  v5 = [tableAXController textViewForColumnID:columnID];

  return v5;
}

- (id)accessibilityCustomRotors
{
  noteEditorController = [(ICTableCellAccessibilityElement *)self noteEditorController];
  v3 = +[ICAccessibilityCustomRotorController sharedInstance];
  [v3 setNoteEditorViewController:noteEditorController];

  v4 = +[ICAccessibilityCustomRotorController sharedInstance];
  sharedTextViewRotors = [v4 sharedTextViewRotors];

  return sharedTextViewRotors;
}

- (id)accessibilityDragSourceDescriptors
{
  tableAXController = [(ICTableCellAccessibilityElement *)self tableAXController];
  isTableTextRangeSelected = [tableAXController isTableTextRangeSelected];

  if (isTableTextRangeSelected)
  {
    tableAXController2 = [(ICTableCellAccessibilityElement *)self tableAXController];
    dragProviderView = [tableAXController2 dragProviderView];
    accessibilityDragSourceDescriptors = [dragProviderView accessibilityDragSourceDescriptors];
  }

  else
  {
    accessibilityDragSourceDescriptors = 0;
  }

  return accessibilityDragSourceDescriptors;
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
  tableAXController = [(ICTableCellAccessibilityElement *)self tableAXController];
  attachmentRangeInNote = [tableAXController attachmentRangeInNote];
  v5 = v4;

  v6 = attachmentRangeInNote;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (BOOL)addColumnAfter
{
  tableAXController = [(ICTableCellAccessibilityElement *)self tableAXController];
  columnID = [(ICTableCellAccessibilityElement *)self columnID];
  [tableAXController selectColumnWithID:columnID];

  tableAXController2 = [(ICTableCellAccessibilityElement *)self tableAXController];
  [tableAXController2 addColumnAfter];

  [(ICTableCellAccessibilityElement *)self moveFocusToFirstSelectedCell];
  return 1;
}

- (BOOL)addRowBelow
{
  tableAXController = [(ICTableCellAccessibilityElement *)self tableAXController];
  rowID = [(ICTableCellAccessibilityElement *)self rowID];
  [tableAXController selectRowWithID:rowID];

  tableAXController2 = [(ICTableCellAccessibilityElement *)self tableAXController];
  [tableAXController2 addRowBelow];

  [(ICTableCellAccessibilityElement *)self moveFocusToFirstSelectedCell];
  return 1;
}

- (BOOL)deleteColumn
{
  tableAXController = [(ICTableCellAccessibilityElement *)self tableAXController];
  columnID = [(ICTableCellAccessibilityElement *)self columnID];
  rowID = [(ICTableCellAccessibilityElement *)self rowID];
  [tableAXController beginEditingCellWithColumnID:columnID rowID:rowID];

  tableAXController2 = [(ICTableCellAccessibilityElement *)self tableAXController];
  columnID2 = [(ICTableCellAccessibilityElement *)self columnID];
  [tableAXController2 selectColumnWithID:columnID2];

  tableAXController3 = [(ICTableCellAccessibilityElement *)self tableAXController];
  [tableAXController3 deleteSelectedColumns];

  [(ICTableCellAccessibilityElement *)self moveFocusToFirstSelectedCell];
  return 1;
}

- (BOOL)deleteRow
{
  tableAXController = [(ICTableCellAccessibilityElement *)self tableAXController];
  columnID = [(ICTableCellAccessibilityElement *)self columnID];
  rowID = [(ICTableCellAccessibilityElement *)self rowID];
  [tableAXController beginEditingCellWithColumnID:columnID rowID:rowID];

  tableAXController2 = [(ICTableCellAccessibilityElement *)self tableAXController];
  rowID2 = [(ICTableCellAccessibilityElement *)self rowID];
  [tableAXController2 selectRowWithID:rowID2];

  tableAXController3 = [(ICTableCellAccessibilityElement *)self tableAXController];
  [tableAXController3 deleteSelectedRows];

  [(ICTableCellAccessibilityElement *)self moveFocusToFirstSelectedCell];
  return 1;
}

- (BOOL)selectCurrentColumn
{
  tableAXController = [(ICTableCellAccessibilityElement *)self tableAXController];
  columnID = [(ICTableCellAccessibilityElement *)self columnID];
  rowID = [(ICTableCellAccessibilityElement *)self rowID];
  [tableAXController beginEditingCellWithColumnID:columnID rowID:rowID];

  tableAXController2 = [(ICTableCellAccessibilityElement *)self tableAXController];
  [tableAXController2 selectCurrentColumn];

  return 1;
}

- (BOOL)selectCurrentRow
{
  tableAXController = [(ICTableCellAccessibilityElement *)self tableAXController];
  columnID = [(ICTableCellAccessibilityElement *)self columnID];
  rowID = [(ICTableCellAccessibilityElement *)self rowID];
  [tableAXController beginEditingCellWithColumnID:columnID rowID:rowID];

  tableAXController2 = [(ICTableCellAccessibilityElement *)self tableAXController];
  [tableAXController2 selectCurrentRow];

  return 1;
}

- (BOOL)selectCellRange
{
  if (![(ICTableCellAccessibilityElement *)self isEditing])
  {
    tableAXController = [(ICTableCellAccessibilityElement *)self tableAXController];
    columnID = [(ICTableCellAccessibilityElement *)self columnID];
    rowID = [(ICTableCellAccessibilityElement *)self rowID];
    [tableAXController beginEditingCellWithColumnID:columnID rowID:rowID];
  }

  tableAXController2 = [(ICTableCellAccessibilityElement *)self tableAXController];
  [tableAXController2 selectCellRangeForCurrentCell];

  LODWORD(tableAXController2) = *MEMORY[0x277D74020];
  tableAXController3 = [(ICTableCellAccessibilityElement *)self tableAXController];
  endSelectionKnob = [tableAXController3 endSelectionKnob];
  UIAccessibilityPostNotification(tableAXController2, endSelectionKnob);

  return 1;
}

- (BOOL)selectTable
{
  tableAXController = [(ICTableCellAccessibilityElement *)self tableAXController];
  [tableAXController selectTableTextRange:1];

  return 1;
}

- (void)moveFocusToFirstSelectedCell
{
  tableAXController = [(ICTableCellAccessibilityElement *)self tableAXController];
  selectedCells = [tableAXController selectedCells];
  argument = [selectedCells firstObject];

  UIAccessibilityPostNotification(*MEMORY[0x277D76488], argument);
}

- (void)reverseTableDirection
{
  tableAXController = [(ICTableCellAccessibilityElement *)self tableAXController];
  [tableAXController reverseTableDirection];

  tableAXController2 = [(ICTableCellAccessibilityElement *)self tableAXController];
  LODWORD(tableAXController) = [tableAXController2 isTableRightToLeft];

  v5 = *MEMORY[0x277D76438];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = mainBundle;
  if (tableAXController)
  {
    v7 = @"Right to left";
  }

  else
  {
    v7 = @"Left to right";
  }

  v8 = [mainBundle localizedStringForKey:v7 value:&stru_282757698 table:0];
  UIAccessibilityPostNotification(v5, v8);
}

- (id)noteEditorController
{
  tableAXController = [(ICTableCellAccessibilityElement *)self tableAXController];
  noteScrollView = [tableAXController noteScrollView];

  if (noteScrollView)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      nextResponder = [noteScrollView nextResponder];

      noteScrollView = nextResponder;
      if (!nextResponder)
      {
        goto LABEL_6;
      }
    }

    noteScrollView = noteScrollView;
  }

LABEL_6:

  return noteScrollView;
}

- (ICTableCellAccessibilityElement)initWithTableAccessibilityController:(id)controller columnID:(id)d rowID:(id)iD
{
  controllerCopy = controller;
  dCopy = d;
  iDCopy = iD;
  tableElement = [controllerCopy tableElement];
  v18.receiver = self;
  v18.super_class = ICTableCellAccessibilityElement;
  v12 = [(ICTableCellAccessibilityElement *)&v18 initWithAccessibilityContainer:tableElement];

  if (v12)
  {
    objc_storeWeak(&v12->_tableAXController, controllerCopy);
    v13 = [iDCopy copy];
    rowID = v12->_rowID;
    v12->_rowID = v13;

    v15 = [dCopy copy];
    columnID = v12->_columnID;
    v12->_columnID = v15;
  }

  return v12;
}

- (unint64_t)rowIndex
{
  tableAXController = [(ICTableCellAccessibilityElement *)self tableAXController];
  rowID = [(ICTableCellAccessibilityElement *)self rowID];
  v5 = [tableAXController rowIndexForRowID:rowID];

  return v5;
}

- (unint64_t)columnIndex
{
  tableAXController = [(ICTableCellAccessibilityElement *)self tableAXController];
  columnID = [(ICTableCellAccessibilityElement *)self columnID];
  v5 = [tableAXController columnIndexForColumnID:columnID];

  return v5;
}

- (NSAttributedString)attributedContentString
{
  tableAXController = [(ICTableCellAccessibilityElement *)self tableAXController];
  columnID = [(ICTableCellAccessibilityElement *)self columnID];
  rowID = [(ICTableCellAccessibilityElement *)self rowID];
  v6 = [tableAXController attributedContentStringForColumnID:columnID rowID:rowID];

  return v6;
}

- (CGRect)frameInScreenSpace
{
  tableAXController = [(ICTableCellAccessibilityElement *)self tableAXController];
  columnID = [(ICTableCellAccessibilityElement *)self columnID];
  rowID = [(ICTableCellAccessibilityElement *)self rowID];
  [tableAXController frameInScreenSpaceForCellWithColumnID:columnID rowID:rowID];
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
  tableAXController = [(ICTableCellAccessibilityElement *)self tableAXController];
  columnID = [(ICTableCellAccessibilityElement *)self columnID];
  rowID = [(ICTableCellAccessibilityElement *)self rowID];
  v6 = [tableAXController cellIsEditingAtColumnID:columnID rowID:rowID];

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
  attributedContentString = [(ICTableCellAccessibilityElement *)self attributedContentString];
  string = [attributedContentString string];
  v10 = [v4 stringWithFormat:@"<%@ %p row=%@ col=%@ axframe=%@ content=%@>", v5, self, v6, v7, v3, string];

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