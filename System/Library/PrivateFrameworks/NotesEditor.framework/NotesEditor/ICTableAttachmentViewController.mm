@interface ICTableAttachmentViewController
- (BOOL)acceptsKeystrokes;
- (BOOL)allowsNewTextLength:(unint64_t)a3;
- (BOOL)containedInNoteSelection;
- (BOOL)isInResponderChain;
- (BOOL)isNoteEditable;
- (BOOL)makeSpaceToPasteSourceTable:(id)a3;
- (BOOL)pasteCellRange;
- (BOOL)updateAllColumnWidths;
- (BOOL)updateEditedColumnWidths;
- (CGPoint)currentDragGestureLocation;
- (CGPoint)initialDragOffset;
- (CGRect)editingViewport;
- (CGRect)frameOfCellForColumnTextView:(id)a3 row:(id)a4;
- (CGRect)proposedLineFragmentRect;
- (CGRect)selectionFrameFromContentFrame:(CGRect)a3;
- (CGRect)transitionViewport;
- (CGRect)viewport;
- (CGSize)intrinsicSize;
- (ICEditingTextView)noteTextView;
- (ICLayoutManager)noteLayoutManager;
- (ICTK2TextLayoutManager)noteTextLayoutManager;
- (ICTable)table;
- (ICTableAttachmentViewController)initWithTextAttachment:(id)a3 forManualRendering:(BOOL)a4 layoutManager:(id)a5;
- (ICTableAttachmentViewController)initWithTextAttachment:(id)a3 forManualRendering:(BOOL)a4 textLayoutManager:(id)a5;
- (NSUndoManager)undoManager;
- (_NSRange)characterRangeForRange:(_NSRange)a3 inString:(id)a4 forLayoutManager:(id)a5;
- (_NSRange)columnGlyphRangeForRange:(_NSRange)a3 inString:(id)a4 forLayoutManager:(id)a5;
- (_NSRange)selectedRangeWithinRange:(_NSRange)a3 inFindableString:(id)a4;
- (double)availableWidth;
- (id)account;
- (id)attributedStringForTableSelectionInContext:(id)a3;
- (id)attributedStringFromPasteboard;
- (id)customPasteboardDataForSelection;
- (id)dataForSelectionOfType:(id)a3;
- (id)dataForSelectionWithDocumentAttributes:(id)a3;
- (id)dragSnapshotFromRect:(CGRect)a3 afterScreenUpdates:(BOOL)a4;
- (id)icTableDataForSelection;
- (id)icTableFromPasteboard;
- (id)insertColumns:(unint64_t)a3 atIndex:(unint64_t)a4;
- (id)namedStylesForCurrentSelectionAndBIUS:(unint64_t *)a3 emphasisColorType:(int64_t *)a4;
- (id)note;
- (id)pasteboardItemsForSelection;
- (id)plainTextDataForSelection;
- (id)rectsForRange:(_NSRange)a3 inFindableString:(id)a4;
- (id)viewForRange:(_NSRange)a3 inFindableString:(id)a4;
- (id)webArchiveDataForSelection;
- (int64_t)textAlignmentForCurrentSelection;
- (int64_t)textDirectionForCurrentSelection;
- (unint64_t)cursorPositionForLocation:(CGPoint)a3 inTextView:(id)a4;
- (unint64_t)selectedStyleBIUS;
- (void)addColumnAfterSelection:(id)a3;
- (void)addColumnAtIndex:(unint64_t)a3;
- (void)addColumnBeforeSelection:(id)a3;
- (void)addColumnLeftOfSelection:(id)a3;
- (void)addColumnRightOfSelection:(id)a3;
- (void)addRowAboveSelection:(id)a3;
- (void)addRowAtIndex:(unint64_t)a3;
- (void)addRowBelowSelection:(id)a3;
- (void)addUndoCommandsForObject:(id)a3 block:(id)a4;
- (void)announceCellRangeSelectionChangeForAccessibilityIfNecessary;
- (void)applyUndoGroup:(id)a3;
- (void)beginEditing;
- (void)beginEditingCellWithColumnID:(id)a3 andRowID:(id)a4 location:(unint64_t)a5;
- (void)beginEditingCellWithColumnID:(id)a3 andRowID:(id)a4 textRange:(id)a5;
- (void)beginEditingCellWithColumnID:(id)a3 andRowID:(id)a4 touchPoint:(CGPoint)a5;
- (void)beginEditingInitialCell;
- (void)beginEditingNoteAtOffset:(int64_t)a3;
- (void)beginEditingSelectedRangeInTextView:(id)a3;
- (void)cellRangeDragBeganOnView:(id)a3;
- (void)cellRangeDraggedAtLocation:(CGPoint)a3;
- (void)cleanDeletedColumn:(id)a3;
- (void)cleanDeletedRow:(id)a3;
- (void)convertTableToText:(id)a3;
- (void)copyTable:(id)a3;
- (void)cutSelection:(id)a3;
- (void)dealloc;
- (void)deleteColumns:(id)a3;
- (void)deleteRows:(id)a3;
- (void)deleteSelectedColumns:(id)a3;
- (void)deleteSelectedRows:(id)a3;
- (void)deleteSelection:(id)a3;
- (void)deleteSelectionCellContents;
- (void)deleteTable:(id)a3;
- (void)didBeginEditingWithTextView:(id)a3;
- (void)didPasteOrDropTextForTableColumnTextView:(id)a3;
- (void)dragBeganOnColumnOrRow:(BOOL)a3 atLocation:(CGPoint)a4;
- (void)dragEndedOnColumnOrRow:(BOOL)a3 atLocation:(CGPoint)a4;
- (void)dragMovedOnColumnOrRow:(BOOL)a3 atLocation:(CGPoint)a4;
- (void)drawCharactersInRange:(_NSRange)a3 inFindableString:(id)a4 forContentView:(id)a5;
- (void)endCellEditingSessionWithTextView:(id)a3;
- (void)endEditing;
- (void)extendCellRangeSelectionInDirection:(unint64_t)a3 toEnd:(BOOL)a4;
- (void)flashAuthorHighlightsIfNeeded;
- (void)hideColumnRowButtons;
- (void)initializeTableAccessibilityControllerIfNecessary;
- (void)initializeTableLayout;
- (void)loadView;
- (void)moveCurrentColumnOrRow:(BOOL)a3 toIndex:(unint64_t)a4;
- (void)moveDownCellAtLocation:(unint64_t)a3;
- (void)moveIntoTableWithDirection:(unint64_t)a3;
- (void)moveLeftCell;
- (void)moveNextCell;
- (void)moveNextCellAtLocation:(unint64_t)a3;
- (void)moveNextLineAtLocation:(unint64_t)a3;
- (void)movePrevCell;
- (void)movePrevCellAtLocation:(unint64_t)a3;
- (void)moveReturnCell;
- (void)moveRightCell;
- (void)moveShiftReturnCell;
- (void)moveUpCellAtLocation:(unint64_t)a3;
- (void)pasteIntoSelection:(id)a3;
- (void)pasteTable:(id)a3 atColumnIndex:(unint64_t)a4 rowIndex:(unint64_t)a5 shouldSetSelectionToPastedRange:(BOOL)a6;
- (void)performInitialLayoutIfNeeded;
- (void)postChangeNotification:(unint64_t)a3 columnOrRowUUIDs:(id)a4;
- (void)prepareForPrinting;
- (void)redraw;
- (void)redrawAndSave;
- (void)removeFromParentViewController;
- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4 inFindableString:(id)a5;
- (void)reverseTableColumnDirection:(id)a3;
- (void)save;
- (void)saveAfterDelay;
- (void)saveAttachmentChangesInBackground:(BOOL)a3;
- (void)saveOnMainThread;
- (void)saveOnMainThreadAfterDelay;
- (void)scrollToRange:(_NSRange)a3 inFindableString:(id)a4;
- (void)scrollToSelectionInTextView:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)selectTable;
- (void)selectionDidResignFirstResponder:(id)a3;
- (void)selectionWillBecomeFirstResponder:(id)a3;
- (void)setHidden:(BOOL)a3 forColumn:(id)a4;
- (void)setHidden:(BOOL)a3 forRow:(id)a4;
- (void)setHighlightColor:(id)a3;
- (void)setHighlightPatternRegexFinder:(id)a3;
- (void)setSelectedRange:(_NSRange)a3 inFindableString:(id)a4;
- (void)setSelectionAlignment:(int64_t)a3;
- (void)setSelectionBIUSStyle:(unint64_t)a3 toggleOn:(BOOL)a4 onValue:(id)a5;
- (void)setSelectionBIUSStyle:(unint64_t)a3 toggleOn:(BOOL)a4 onValue:(id)a5 withSelection:(id)a6;
- (void)setSelectionDirection:(int64_t)a3;
- (void)setSelectionNamedStyle:(unsigned int)a3;
- (void)setSelectionNamedStyle:(unsigned int)a3 withColumns:(id)a4 rows:(id)a5;
- (void)setTypingAttributesForTextView:(id)a3;
- (void)setupTableTextView:(id)a3;
- (void)showColumnRowButtons;
- (void)tableAttachmentDidChange;
- (void)tableAttachmentProviderDidMergeTable:(id)a3;
- (void)tableAttachmentProviderWillMergeTable:(id)a3;
- (void)tableAttachmentViewControllerDidChange:(id)a3;
- (void)tableAttachmentWillChange;
- (void)tableAutoScroller:(id)a3 scrollOffsetDelta:(CGPoint)a4;
- (void)tableDidInsertColumnID:(id)a3;
- (void)tableDidPopulateCellAtColumnIndex:(unint64_t)a3 rowIndex:(unint64_t)a4;
- (void)tableValueDidChangeAtColumnID:(id)a3 rowID:(id)a4 delta:(int64_t)a5;
- (void)tableWillRemoveColumnID:(id)a3;
- (void)tappedTableAtLocation:(CGPoint)a3;
- (void)textRangeDragEnded;
- (void)textRangeDraggedAtLocation:(CGPoint)a3;
- (void)textStorage:(id)a3 didProcessEditing:(unint64_t)a4 range:(_NSRange)a5 changeInLength:(int64_t)a6;
- (void)textStorage:(id)a3 didReplace:(id)a4 with:(id)a5;
- (void)toggleBIUS:(unint64_t)a3 onValue:(id)a4;
- (void)toggleTodoStyle:(id)a3;
- (void)updateAllColumnWidthsAndRedraw;
- (void)updateAttachmentParagraphForWritingDirection:(int64_t)a3;
- (void)updateAvailableWidth;
- (void)updateButtonFrames;
- (void)updateCellSizeAtColumn:(id)a3 row:(id)a4 immediateWidthUpdate:(BOOL)a5;
- (void)updateChrome;
- (void)updateColumnWidthForColumn:(id)a3;
- (void)updateContentSize;
- (void)updateEditedColumnWidthsAfterDelay;
- (void)updateHeightCacheForColumn:(id)a3 row:(id)a4;
- (void)updateTableCellsWithDirection:(int64_t)a3 columnIndexes:(id)a4 rowIndexes:(id)a5;
- (void)updateTableColumnDirectionForWritingDirection:(int64_t)a3;
- (void)updateTiles;
- (void)updateWidthsForChangeInColumn:(id)a3;
- (void)willBeginEditingWithTextView:(id)a3;
- (void)willFlashAuthorHighlights;
- (void)zoomFactorOrInsetsDidChange;
@end

@implementation ICTableAttachmentViewController

- (ICTableAttachmentViewController)initWithTextAttachment:(id)a3 forManualRendering:(BOOL)a4 layoutManager:(id)a5
{
  v5 = a4;
  v8 = a5;
  v12.receiver = self;
  v12.super_class = ICTableAttachmentViewController;
  v9 = [(ICAttachmentViewController *)&v12 initWithTextAttachment:a3 forManualRendering:v5 layoutManager:v8];
  if (v9)
  {
    objc_opt_class();
    v10 = ICCheckedDynamicCast();
    objc_storeWeak(&v9->_noteLayoutManager, v10);
  }

  return v9;
}

- (ICTableAttachmentViewController)initWithTextAttachment:(id)a3 forManualRendering:(BOOL)a4 textLayoutManager:(id)a5
{
  v5 = a4;
  v8 = a5;
  v12.receiver = self;
  v12.super_class = ICTableAttachmentViewController;
  v9 = [(ICAttachmentViewController *)&v12 initWithTextAttachment:a3 forManualRendering:v5 textLayoutManager:v8];
  if (v9)
  {
    objc_opt_class();
    v10 = ICCheckedDynamicCast();
    objc_storeWeak(&v9->_noteTextLayoutManager, v10);

    [(ICTableAttachmentViewController *)v9 initializeTableLayout];
  }

  return v9;
}

- (ICTable)table
{
  tableAttachmentProvider = self->_tableAttachmentProvider;
  if (!tableAttachmentProvider)
  {
    v4 = MEMORY[0x277D35FC8];
    v5 = [(ICAttachmentViewController *)self attachment];
    v6 = [v4 sharedProviderForAttachment:v5];
    v7 = self->_tableAttachmentProvider;
    self->_tableAttachmentProvider = v6;

    [(ICTableAttachmentProvider *)self->_tableAttachmentProvider setDelegate:self];
    v8 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    coalescingUndoGroupForStringDelegate = self->_coalescingUndoGroupForStringDelegate;
    self->_coalescingUndoGroupForStringDelegate = v8;

    tableAttachmentProvider = self->_tableAttachmentProvider;
  }

  return [(ICTableAttachmentProvider *)tableAttachmentProvider table];
}

- (CGSize)intrinsicSize
{
  if (![(ICTableAttachmentViewController *)self performedInitialLayout])
  {
    [(ICTableAttachmentViewController *)self performInitialLayoutIfNeeded];
  }

  if (ICInternalSettingsIsTextKit2Enabled())
  {
    [(ICTableAttachmentViewController *)self updateAvailableWidth];
  }

  v3 = [(ICTableAttachmentViewController *)self columnWidthCache];
  [v3 sum];
  v5 = v4;

  v6 = [(ICTableAttachmentViewController *)self rowHeightCache];
  [v6 sum];
  v8 = v7;

  if (v5 == 0.0)
  {
    v9 = [(ICTableAttachmentViewController *)self tableLayoutManager];
    v10 = [v9 columnWidthManager];
    [v10 singleColumnTableWidth];
    v5 = v11;
  }

  if (v8 == 0.0)
  {
    v12 = [(ICTableAttachmentViewController *)self tableLayoutManager];
    [v12 emptyCellHeight];
    v8 = v13;
  }

  v14 = v5;
  v15 = v8;
  result.height = v15;
  result.width = v14;
  return result;
}

- (NSUndoManager)undoManager
{
  v2 = [(ICAttachmentViewController *)self attachment];
  v3 = [v2 note];
  v4 = [v3 textStorage];
  v5 = [v4 undoManager];

  return v5;
}

- (ICEditingTextView)noteTextView
{
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    objc_opt_class();
    v3 = [(ICTableAttachmentViewController *)self noteTextLayoutManager];
    v4 = [v3 textContainer];
    v5 = ICCheckedDynamicCast();

    objc_opt_class();
    [v5 tk2TextView];
  }

  else
  {
    objc_opt_class();
    v5 = [(ICTableAttachmentViewController *)self noteLayoutManager];
    [v5 textView];
  }
  v6 = ;
  v7 = ICDynamicCast();

  return v7;
}

- (BOOL)isNoteEditable
{
  v2 = [(ICAttachmentViewController *)self attachment];
  v3 = [v2 note];
  v4 = [v3 isEditable];

  return v4;
}

- (void)loadView
{
  v55.receiver = self;
  v55.super_class = ICTableAttachmentViewController;
  [(ICAttachmentViewController *)&v55 loadView];
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    [(ICTableAttachmentViewController *)self initializeTableLayout];
  }

  v3 = [ICTableScrollView alloc];
  v4 = [(ICTableAttachmentViewController *)self view];
  [v4 bounds];
  v5 = [(ICTableScrollView *)v3 initWithFrame:?];
  [(ICTableAttachmentViewController *)self setScrollView:v5];

  v6 = [(ICTableAttachmentViewController *)self view];
  v7 = [(ICTableAttachmentViewController *)self scrollView];
  [v6 addSubview:v7];

  v8 = [ICTableContentView alloc];
  v9 = [(ICTableContentView *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  tableContentView = self->_tableContentView;
  self->_tableContentView = v9;

  v11 = [(ICTableAttachmentViewController *)self scrollView];
  v12 = [(ICTableAttachmentViewController *)self tableContentView];
  [v11 addSubview:v12];

  v13 = [ICTableClipView alloc];
  v14 = [(ICTableAttachmentViewController *)self view];
  [v14 bounds];
  v15 = [(ICTableClipView *)v13 initWithFrame:0.0, -30.0];
  headerClipView = self->_headerClipView;
  self->_headerClipView = v15;

  v17 = [(ICTableAttachmentViewController *)self view];
  v18 = [(ICTableAttachmentViewController *)self headerClipView];
  [v17 addSubview:v18];

  v19 = objc_alloc_init(MEMORY[0x277D36920]);
  tableSelection = self->_tableSelection;
  self->_tableSelection = v19;

  v21 = [ICTableTextViewManager alloc];
  v22 = [(ICTableAttachmentViewController *)self tableLayoutManager];
  v23 = [(ICTableAttachmentViewController *)self tableContentView];
  v24 = [(ICTableTextViewManager *)v21 initWithTableLayoutManager:v22 view:v23 cachedWidths:self->_columnWidthCache cachedRowHeights:self->_rowHeightCache cachedCellHeights:self->_cellHeightCache];
  textViewManager = self->_textViewManager;
  self->_textViewManager = v24;

  [(ICTableTextViewManager *)self->_textViewManager setDelegate:self];
  [(ICTableTextViewManager *)self->_textViewManager updateAuthorHighlights];
  [(ICTableTextViewManager *)self->_textViewManager restyleCells];
  v26 = objc_alloc_init(ICTableSelectionView);
  selectionHighlightView = self->_selectionHighlightView;
  self->_selectionHighlightView = v26;

  [(ICTableSelectionView *)self->_selectionHighlightView setDelegate:self];
  v28 = [MEMORY[0x277CCAB98] defaultCenter];
  v29 = *MEMORY[0x277D35DD0];
  v30 = [(ICTableAttachmentViewController *)self tableAttachmentProvider];
  [v28 addObserver:self selector:sel_tableAttachmentProviderWillMergeTable_ name:v29 object:v30];

  v31 = [MEMORY[0x277CCAB98] defaultCenter];
  v32 = *MEMORY[0x277D35DC8];
  v33 = [(ICTableAttachmentViewController *)self tableAttachmentProvider];
  [v31 addObserver:self selector:sel_tableAttachmentProviderDidMergeTable_ name:v32 object:v33];

  v34 = [MEMORY[0x277CCAB98] defaultCenter];
  v35 = [(ICTableAttachmentViewController *)self table];
  [v34 addObserver:self selector:sel_tableAttachmentViewControllerDidChange_ name:@"ICTableAttachmentViewControllerDidChangeNotification" object:v35];

  v36 = [MEMORY[0x277CCAB98] defaultCenter];
  v37 = *MEMORY[0x277D36668];
  v38 = [(ICTableAttachmentViewController *)self tableSelection];
  [v36 addObserver:self selector:sel_tableAttachmentSelectionDidChange_ name:v37 object:v38];

  v39 = [ICTableUndoTarget alloc];
  v40 = [(ICTableAttachmentViewController *)self tableAttachmentProvider];
  v41 = [(ICTableUndoTarget *)v39 initWithProvider:v40 viewController:self];
  undoTarget = self->_undoTarget;
  self->_undoTarget = v41;

  v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
  undoCommands = self->_undoCommands;
  self->_undoCommands = v43;

  v45 = [[ICTableSelectionKnob alloc] initWithTableAttachmentViewController:self];
  startKnob = self->_startKnob;
  self->_startKnob = v45;

  v47 = [[ICTableSelectionKnob alloc] initWithTableAttachmentViewController:self];
  endKnob = self->_endKnob;
  self->_endKnob = v47;

  v49 = [(ICTableAttachmentViewController *)self view];
  v50 = [v49 outsideViews];
  [v50 addObject:self->_startKnob];

  v51 = [(ICTableAttachmentViewController *)self view];
  v52 = [v51 outsideViews];
  [v52 addObject:self->_endKnob];

  v53 = [MEMORY[0x277CBEB58] set];
  columnsNeedingWidthUpdate = self->_columnsNeedingWidthUpdate;
  self->_columnsNeedingWidthUpdate = v53;

  [(ICTableAttachmentViewController *)self setupEventHandling];
}

- (void)removeFromParentViewController
{
  v3.receiver = self;
  v3.super_class = ICTableAttachmentViewController;
  [(ICTableAttachmentViewController *)&v3 removeFromParentViewController];
  [(ICTableAttachmentViewController *)self hideColumnRowButtons];
}

- (void)dealloc
{
  v3 = [(ICTableAttachmentProvider *)self->_tableAttachmentProvider table];
  v4 = [v3 cellChangeNotifier];
  [v4 removeObserver:self];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = ICTableAttachmentViewController;
  [(ICTableAttachmentViewController *)&v6 dealloc];
}

- (BOOL)isInResponderChain
{
  v2 = [(ICTableAttachmentViewController *)self tableSelection];
  v3 = [v2 type] != 0;

  return v3;
}

- (void)prepareForPrinting
{
  v2.receiver = self;
  v2.super_class = ICTableAttachmentViewController;
  [(ICAbstractAttachmentViewController *)&v2 prepareForPrinting];
}

- (void)zoomFactorOrInsetsDidChange
{
  if ([(ICTableAttachmentViewController *)self isViewLoaded])
  {
    v3 = [(ICTableAttachmentViewController *)self textViewManager];
    [v3 restyleCells];

    [(ICTableAttachmentViewController *)self viewport];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [(ICTableAttachmentViewController *)self textViewManager];
    [v12 boundingRect];
    v25.origin.x = v13;
    v25.origin.y = v14;
    v25.size.width = v15;
    v25.size.height = v16;
    v24.origin.x = v5;
    v24.origin.y = v7;
    v24.size.width = v9;
    v24.size.height = v11;
    v17 = CGRectIntersectsRect(v24, v25);

    if (v17)
    {

      [(ICTableAttachmentViewController *)self updateAllColumnWidthsAndRedraw];
    }

    else
    {
      v18 = [(ICTableAttachmentViewController *)self tableLayoutManager];
      v22 = [v18 columnWidthManager];

      v19 = [(ICTableAttachmentViewController *)self textViewManager];
      v20 = [v19 columnIDs];
      v21 = [v22 invalidateWidthForColumns:v20];
    }
  }
}

- (CGRect)viewport
{
  if ([(ICAttachmentViewController *)self forManualRendering])
  {
    [(ICTableAttachmentViewController *)self availableWidth];
    v4 = v3;
    v5 = 0.0;
    v6 = 1.79769313e308;
    v7 = 0.0;
  }

  else
  {
    [(ICTableAttachmentViewController *)self transitionViewport];
    if (CGRectIsEmpty(v8))
    {
      [(ICTableAttachmentViewController *)self editingViewport];
    }

    else
    {
      [(ICTableAttachmentViewController *)self transitionViewport];
    }
  }

  result.size.height = v6;
  result.size.width = v4;
  result.origin.y = v7;
  result.origin.x = v5;
  return result;
}

- (void)updateTiles
{
  if (![(ICTableAttachmentViewController *)self isUpdatingTiles])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v3 = [(ICTableAttachmentViewController *)self textViewManager];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46__ICTableAttachmentViewController_updateTiles__block_invoke;
    v11[3] = &unk_2781ADEF8;
    v11[4] = &v12;
    [v3 enumerateTextViewsWithBlock:v11];

    if (*(v13 + 24) == 1)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __46__ICTableAttachmentViewController_updateTiles__block_invoke_2;
      v10[3] = &unk_2781ABCF8;
      v10[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], v10);
    }

    else
    {
      [(ICTableAttachmentViewController *)self setUpdatingTiles:1];
      [(ICTableAttachmentViewController *)self setShouldPreventUndoCommands:1];
      v4 = [(ICTableAttachmentViewController *)self textViewManager];
      [(ICTableAttachmentViewController *)self viewport];
      [v4 updateTilesWithViewport:0 redrawAll:?];
      v6 = v5;
      v8 = v7;

      if (v6 != *MEMORY[0x277CBF348] || v8 != *(MEMORY[0x277CBF348] + 8))
      {
        [(ICTableAttachmentViewController *)self adjustScrollPositionByOffset:v6, v8];
      }

      [(ICTableAttachmentViewController *)self updateContentSize];
      [(ICTableAttachmentViewController *)self updateChrome];
      [(ICTableAttachmentViewController *)self setShouldPreventUndoCommands:0];
      [(ICTableAttachmentViewController *)self setUpdatingTiles:0];
    }

    _Block_object_dispose(&v12, 8);
  }
}

void __46__ICTableAttachmentViewController_updateTiles__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 layoutManager];
  v6 = [v5 textStorage];
  v7 = [v6 _isEditing];

  if (v7)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (void)updateContentSize
{
  [(ICTableAttachmentViewController *)self intrinsicSize];
  v4 = v3;
  v6 = v5;
  v7 = [(ICTableAttachmentViewController *)self tableContentView];
  [v7 bounds];
  v8 = TSDNearlyEqualSizes();

  if ((v8 & 1) == 0)
  {
    objc_opt_class();
    v9 = [(ICTableAttachmentViewController *)self view];
    v41 = ICDynamicCast();

    if (![(ICTableAttachmentViewController *)self isPerformingInitialLayout])
    {
      [v41 didChangeSize];
    }

    v10 = [(ICAttachmentViewController *)self textAttachment];
    v11 = [(ICTableAttachmentViewController *)self noteTextView];
    v12 = [v11 textContainer];
    [v10 attachmentSizeForTextContainer:v12];
    v14 = v13;

    [v41 frame];
    [v41 frame];
    TSDSanitizeRect();
    [v41 setFrame:?];
    [v41 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    [(ICTableAttachmentViewController *)self scrollerOutset];
    v24 = v23 + v22;
    v25 = [(ICTableAttachmentViewController *)self scrollView];
    [v25 setFrame:{v16, v18, v20, v24}];

    if (vabdd_f64(v14, v4) >= 0.00999999978)
    {
      TSDSanitizeRect();
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v26 = [(ICTableAttachmentViewController *)self tableContentView];
      v27 = v26;
      v28 = v33;
      v29 = v35;
      v30 = v37;
      v31 = v39;
    }

    else
    {
      v26 = [(ICTableAttachmentViewController *)self tableContentView];
      v27 = v26;
      v28 = 0.0;
      v29 = 0.0;
      v30 = v14;
      v31 = v6;
    }

    [v26 setFrame:{v28, v29, v30, v31}];

    v40 = [(ICTableAttachmentViewController *)self tableContentView];
    [v40 ic_setNeedsLayout];

    [(ICTableAttachmentViewController *)self didUpdateContentSize];
  }
}

- (void)redraw
{
  [(ICTableAttachmentViewController *)self setShouldPreventUndoCommands:1];
  v3 = [(ICTableAttachmentViewController *)self textViewManager];
  [(ICTableAttachmentViewController *)self viewport];
  [v3 redrawAllWithViewport:?];

  [(ICTableAttachmentViewController *)self updateContentSize];
  [(ICTableAttachmentViewController *)self updateChrome];

  [(ICTableAttachmentViewController *)self setShouldPreventUndoCommands:0];
}

- (void)redrawAndSave
{
  [(ICTableAttachmentViewController *)self redraw];

  [(ICTableAttachmentViewController *)self save];
}

- (void)updateHeightCacheForColumn:(id)a3 row:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [(ICTableAttachmentViewController *)self textViewManager];
  v8 = [v7 rowIDs];
  v9 = [v8 containsObject:v6];

  if (v9)
  {
    v10 = [(ICTableAttachmentViewController *)self cellHeightCache];
    v11 = [v10 objectForKey:v6];

    if (!v11)
    {
      v11 = [objc_alloc(MEMORY[0x277D35EB0]) initWithComparator:&__block_literal_global_14];
      v12 = [(ICTableAttachmentViewController *)self cellHeightCache];
      [v12 setObject:v11 forKey:v6];
    }

    if (v15)
    {
      v13 = [(ICTableAttachmentViewController *)self tableLayoutManager];
      v14 = [v13 columnLayoutManagerForColumn:v15];

      [v14 heightOfCellAtRowID:v6];
      [v11 setDimension:v15 forKey:?];
    }
  }
}

- (void)performInitialLayoutIfNeeded
{
  if (![(ICTableAttachmentViewController *)self performedInitialLayout]&& [(ICTableAttachmentViewController *)self isViewLoaded])
  {
    [(ICTableAttachmentViewController *)self setPerformedInitialLayout:1];
    [(ICTableAttachmentViewController *)self setIsPerformingInitialLayout:1];
    [(ICTableAttachmentViewController *)self updateAvailableWidth];
    v3 = [(ICTableAttachmentViewController *)self textViewManager];
    [(ICTableAttachmentViewController *)self viewport];
    [v3 initialScrollPointForViewport:?];
    v5 = v4;
    v7 = v6;

    [(ICTableAttachmentViewController *)self updateContentSize];
    v8 = [(ICTableAttachmentViewController *)self scrollView];
    [v8 setContentOffset:{v5, v7}];

    [(ICTableAttachmentViewController *)self setIsPerformingInitialLayout:0];
  }
}

- (void)tableValueDidChangeAtColumnID:(id)a3 rowID:(id)a4 delta:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(ICTableAttachmentViewController *)self columnsNeedingWidthUpdate];
  [v10 addObject:v8];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__ICTableAttachmentViewController_tableValueDidChangeAtColumnID_rowID_delta___block_invoke;
  v13[3] = &unk_2781ADF40;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_async(MEMORY[0x277D85CD0], v13);
}

uint64_t __77__ICTableAttachmentViewController_tableValueDidChangeAtColumnID_rowID_delta___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 < 0)
  {
    v1 = -v1;
  }

  return [*(a1 + 32) updateCellSizeAtColumn:*(a1 + 40) row:*(a1 + 48) immediateWidthUpdate:v1 > 2];
}

- (void)updateCellSizeAtColumn:(id)a3 row:(id)a4 immediateWidthUpdate:(BOOL)a5
{
  v5 = a5;
  v21 = a3;
  v8 = a4;
  v9 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
  v10 = [v9 columnID];
  v11 = [v10 isEqual:v21];

  if (v11)
  {
    if (v5)
    {
      [(ICTableAttachmentViewController *)self updateColumnWidthForColumn:v21];
    }

    else
    {
      [(ICTableAttachmentViewController *)self updateEditedColumnWidthsAfterDelay];
    }
  }

  else
  {
    [(ICTableAttachmentViewController *)self updateEditedColumnWidths];
  }

  [(ICTableAttachmentViewController *)self updateHeightCacheForColumn:v21 row:v8];
  v12 = [(ICTableAttachmentViewController *)self rowHeightCache];
  [v12 dimensionForKey:v8];
  v14 = v13;

  v15 = [(ICTableAttachmentViewController *)self cellHeightCache];
  v16 = [v15 objectForKey:v8];
  [v16 max];
  v18 = v17;

  if (v14 != v18)
  {
    v19 = [(ICTableAttachmentViewController *)self rowHeightCache];
    [v19 setDimension:v8 forKey:v18];

    v20 = [(ICTableAttachmentViewController *)self textViewManager];
    [v20 heightChangedForRow:v8 by:v18 - v14];

    [(ICTableAttachmentViewController *)self updateContentSize];
  }
}

- (void)textStorage:(id)a3 didProcessEditing:(unint64_t)a4 range:(_NSRange)a5 changeInLength:(int64_t)a6
{
  length = a5.length;
  location = a5.location;
  v11 = a3;
  objc_opt_class();
  v13 = ICDynamicCast();
  v12 = [(ICAttachmentViewController *)self attachment];
  [v12 filterInlineAttachmentsInTableColumnTextStorage:v13 range:{location, length}];

  [v13 textStorage:v11 didProcessEditing:a4 range:location changeInLength:{length, a6}];
}

- (void)textStorage:(id)a3 didReplace:(id)a4 with:(id)a5
{
  v12 = a4;
  v7 = a5;
  if ([v12 length])
  {
    v8 = [(ICAttachmentViewController *)self attachment];
    v9 = [v8 note];
    [v9 markBlockAndInlineAttachmentsForDeletion:1 inAttributedString:v12];
  }

  if ([v7 length])
  {
    v10 = [(ICAttachmentViewController *)self attachment];
    v11 = [v10 note];
    [v11 markBlockAndInlineAttachmentsForDeletion:0 inAttributedString:v7];
  }
}

- (void)tappedTableAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(ICTableAttachmentViewController *)self textViewManager];
  v22 = 0;
  v23 = 0;
  v7 = [v6 cellContainingPoint:&v23 columnID:&v22 rowID:{x, y}];
  v8 = v23;
  v9 = v22;

  if (v7)
  {
    [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:v8 andRowID:v9 touchPoint:x, y];
    goto LABEL_14;
  }

  v10 = [(ICTableAttachmentViewController *)self table];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = v10;
  v12 = [(ICTableAttachmentViewController *)self table];
  if (![v12 columnCount])
  {

    goto LABEL_10;
  }

  v13 = [(ICTableAttachmentViewController *)self table];
  v14 = [v13 rowCount];

  if (!v14)
  {
LABEL_10:
    v16 = [(ICTableAttachmentViewController *)self table];
    v17 = [v16 columnCount];

    v18 = [(ICTableAttachmentViewController *)self table];
    v19 = v18;
    if (v17)
    {
      v20 = [v18 insertRowAtIndex:0];
    }

    else
    {
      v21 = [v18 insertColumnAtIndex:0];
    }

    [(ICTableAttachmentViewController *)self redrawAndSave];
    [(ICTableAttachmentViewController *)self tappedTableAtLocation:x, y];
    goto LABEL_14;
  }

LABEL_6:
  v15 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [(ICTableAttachmentViewController *)self tappedTableAtLocation:v15];
  }

LABEL_14:
}

- (void)beginEditingCellWithColumnID:(id)a3 andRowID:(id)a4 touchPoint:(CGPoint)a5
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__ICTableAttachmentViewController_beginEditingCellWithColumnID_andRowID_touchPoint___block_invoke;
  v5[3] = &unk_2781ADF68;
  v5[4] = self;
  v6 = a5;
  [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:a3 andRowID:a4 textRange:v5];
}

uint64_t __84__ICTableAttachmentViewController_beginEditingCellWithColumnID_andRowID_touchPoint___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 tableContentView];
  [v4 convertPoint:v5 fromView:{*(a1 + 40), *(a1 + 48)}];
  v6 = [v3 cursorPositionForLocation:v4 inTextView:?];

  return v6;
}

- (void)beginEditingCellWithColumnID:(id)a3 andRowID:(id)a4 location:(unint64_t)a5
{
  v8 = a4;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __82__ICTableAttachmentViewController_beginEditingCellWithColumnID_andRowID_location___block_invoke;
  v14 = &unk_2781ADF90;
  v15 = v8;
  v16 = a5;
  v9 = v8;
  [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:a3 andRowID:v9 textRange:&v11];
  v10 = [(ICTableAttachmentViewController *)self tableAXController:v11];
  [v10 tableRowOrColumnSelectionDidChange];
}

uint64_t __82__ICTableAttachmentViewController_beginEditingCellWithColumnID_andRowID_location___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [v3 textStorage];

  v5 = ICDynamicCast();

  v6 = [v5 characterRangeForRowID:*(a1 + 32)];
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  if (v8 == 1)
  {
    v9 = v6;
  }

  if (v8 == 2)
  {
    v10 = v6 + v7;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

- (void)beginEditingInitialCell
{
  v3 = [(ICTableAttachmentViewController *)self table];
  v9 = [v3 stringForColumnIndex:0 rowIndex:0];

  v4 = [v9 length] != 0;
  v5 = [(ICTableAttachmentViewController *)self table];
  v6 = [v5 identifierForColumnAtIndex:v4];

  v7 = [(ICTableAttachmentViewController *)self table];
  v8 = [v7 identifierForRowAtIndex:0];

  [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:v6 andRowID:v8 location:2];
}

- (void)beginEditingSelectedRangeInTextView:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 textStorage];
  v8 = ICDynamicCast();

  v6 = [v8 rowAtIndex:objc_msgSend(v4 rowRange:{"selectedRange"), 0}];
  v7 = [v4 columnID];

  [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:v7 andRowID:v6 textRange:&__block_literal_global_69];
}

- (void)beginEditingCellWithColumnID:(id)a3 andRowID:(id)a4 textRange:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ICTableAttachmentViewController *)self textViewManager];
  v12 = [v11 textViewForColumn:v8 createIfNeeded:1];

  if (v12)
  {
    [(ICTableAttachmentViewController *)self setPreventScrolling:1];
    [(ICTableAttachmentViewController *)self setDidRecentlyAutoAddRow:0];
    [(ICTableAttachmentViewController *)self willBeginEditingWithTextView:v12];
    v13 = v10[2](v10, v12);
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v12 setSelectedRange:{v13, v14}];
    }

    v15 = [(ICTableAttachmentViewController *)self textViewManager];
    [v15 ensureCellPositionForColumn:v8 andRow:v9];

    if (([v12 ic_isFirstResponder] & 1) == 0)
    {
      [(ICTableAttachmentViewController *)self setMakingCellFirstResponder:1];
      v16 = MEMORY[0x277D75D18];
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __83__ICTableAttachmentViewController_beginEditingCellWithColumnID_andRowID_textRange___block_invoke;
      v20 = &unk_2781ABEB8;
      v21 = self;
      v22 = v12;
      [v16 ic_performWithoutAnimation:&v17];
      [(ICTableAttachmentViewController *)self setMakingCellFirstResponder:0, v17, v18, v19, v20, v21];
    }

    [(ICTableAttachmentViewController *)self didBeginEditingWithTextView:v12];
  }
}

- (void)moveIntoTableWithDirection:(unint64_t)a3
{
  v5 = [(ICTableAttachmentViewController *)self table];
  v6 = v5;
  if (a3 == 1)
  {
    v7 = [v5 isLeftToRight];

    if ((v7 & 1) == 0)
    {
LABEL_3:
      v8 = [(ICTableAttachmentViewController *)self table];
      v9 = [(ICTableAttachmentViewController *)self table];
      v20 = [v8 identifierForColumnAtIndex:{objc_msgSend(v9, "columnCount") - 1}];

      v10 = [(ICTableAttachmentViewController *)self table];
      v11 = [(ICTableAttachmentViewController *)self table];
      v12 = [v10 identifierForRowAtIndex:{objc_msgSend(v11, "rowCount") - 1}];

      v13 = self;
      v14 = v20;
      v15 = v12;
      v16 = 2;
      goto LABEL_6;
    }
  }

  else
  {
    v17 = [v5 isRightToLeft];

    if (!v17)
    {
      goto LABEL_3;
    }
  }

  v18 = [(ICTableAttachmentViewController *)self table];
  v20 = [v18 identifierForColumnAtIndex:0];

  v19 = [(ICTableAttachmentViewController *)self table];
  v12 = [v19 identifierForRowAtIndex:0];

  v13 = self;
  v14 = v20;
  v15 = v12;
  v16 = 0;
LABEL_6:
  [(ICTableAttachmentViewController *)v13 beginEditingCellWithColumnID:v14 andRowID:v15 location:v16];
}

- (void)willBeginEditingWithTextView:(id)a3
{
  v4 = a3;
  v5 = [(ICTableAttachmentViewController *)self auxiliaryTextViewHost];
  [v5 setAuxiliaryResponder:v4];

  v6 = [v4 TTTextStorage];

  [v6 breakUndoCoalescing];

  [(ICTableAttachmentViewController *)self updateEditedColumnWidths];
}

- (void)didBeginEditingWithTextView:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEditable])
  {
    objc_opt_class();
    v5 = [v4 textStorage];
    v6 = ICDynamicCast();

    v7 = [v6 columnID];
    v8 = [v6 rowAtIndex:objc_msgSend(v4 rowRange:{"selectedRange"), 0}];
    v9 = objc_alloc_init(MEMORY[0x277D36920]);
    [v9 selectCellAtColumn:v7 row:v8];
    v10 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
    [v10 setTextSelectionHidden:0];

    v11 = [(ICTableAttachmentViewController *)self tableSelection];
    v12 = [v11 isEqual:v9];

    if (v12)
    {
LABEL_8:
      [(ICTableAttachmentViewController *)self setTypingAttributesForTextView:v4];
      [(ICTableAttachmentViewController *)self updateChrome];

      goto LABEL_9;
    }

    v13 = [(ICTableAttachmentViewController *)self undoTarget];
    [v6 setOverrideUndoTarget:v13];

    [(ICTableAttachmentViewController *)self setCurrentlyEditingTextView:v4];
    [(ICTableAttachmentViewController *)self setCurrentlyEditingTextStorage:v6];
    v14 = [(ICTableAttachmentViewController *)self tableSelection];
    [v14 selectCellAtColumn:v7 row:v8];

    [(ICTableAttachmentViewController *)self cellFirstResponderChanged];
    v23[0] = v7;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    v22 = v8;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    [(ICTableAttachmentViewController *)self showButtonsAtColumns:v15 rows:v16];

    v17 = [(ICTableAttachmentViewController *)self noteTextView];
    [v17 selectedRange];
    if (v18)
    {
      v19 = [v4 window];

      if (!v19)
      {
LABEL_7:
        [(ICTableAttachmentViewController *)self setTypingAttributesForTextView:v4];
        goto LABEL_8;
      }

      v17 = [(ICTableAttachmentViewController *)self noteTextView];
      v20 = [v17 selectedRange];
      v21 = [(ICTableAttachmentViewController *)self noteTextView];
      [v21 setSelectedRange:{v20, 0}];
    }

    goto LABEL_7;
  }

LABEL_9:
}

- (void)endCellEditingSessionWithTextView:(id)a3
{
  v13 = a3;
  if ([v13 ic_isFirstResponder])
  {
    [(ICTableAttachmentViewController *)self ic_resignFirstResponder:v13];
  }

  [(ICTableAttachmentViewController *)self cellFirstResponderChanged];
  [(ICTableAttachmentViewController *)self setCurrentlyEditingTextView:0];
  [(ICTableAttachmentViewController *)self setCurrentlyEditingTextStorage:0];
  v4 = [(ICTableAttachmentViewController *)self tableAttachmentProvider];
  [v4 updateTableFromMOC];

  v5 = [(ICTableAttachmentViewController *)self tableSelection];
  v6 = [v5 isRangeOrSpanningSelection];

  if ((v6 & 1) == 0)
  {
    [(ICTableAttachmentViewController *)self hideColumnRowButtons];
  }

  v7 = [(ICTableAttachmentViewController *)self auxiliaryTextViewHost];
  v8 = [v7 auxiliaryResponder];

  if (v8 == v13)
  {
    v9 = [(ICTableAttachmentViewController *)self auxiliaryTextViewHost];
    [v9 setAuxiliaryResponder:0];
  }

  v10 = [(ICTableAttachmentViewController *)self textViewManager];
  v11 = [v13 columnID];
  v12 = [v10 textViewForColumn:v11];

  [v12 ic_setNeedsDisplay];
}

- (void)setTypingAttributesForTextView:(id)a3
{
  v12 = a3;
  objc_opt_class();
  v3 = [v12 textStorage];
  v4 = ICDynamicCast();

  objc_opt_class();
  v5 = [v4 styler];
  v6 = ICDynamicCast();

  if (v6)
  {
    v7 = [v12 selectedRange];
    v9 = v8;
    v10 = [v12 typingAttributes];
    v11 = [v6 typingAttributesForRange:v7 forSelectionChange:v9 currentTypingAttributes:1 inTextStorage:{v10, v4}];
    [v12 setTypingAttributes:v11];
  }
}

- (BOOL)containedInNoteSelection
{
  v22 = *MEMORY[0x277D85DE8];
  if (![(ICTableAttachmentViewController *)self performedInitialLayout]|| [(ICTableAttachmentViewController *)self shouldBeginInitialEditing])
  {
    return 0;
  }

  v4 = [(ICTableAttachmentViewController *)self noteTextView];
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    objc_opt_class();
    [v4 textLayoutManager];
  }

  else
  {
    objc_opt_class();
    [v4 layoutManager];
  }
  v5 = ;
  v6 = ICCheckedDynamicCast();

  v7 = [(ICAttachmentViewController *)self attachment];
  v8 = [v6 rangeForAttachment:v7 withTextAttachment:0];
  v10 = v9;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [v4 ic_selectedRanges];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v23.location = [*(*(&v17 + 1) + 8 * i) rangeValue];
        v24.location = v8;
        v24.length = v10;
        if (NSIntersectionRange(v23, v24).length)
        {
          v3 = 1;
          goto LABEL_17;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v3 = 0;
LABEL_17:

  return v3;
}

- (BOOL)acceptsKeystrokes
{
  v3 = [(ICTableAttachmentViewController *)self tableSelection];
  if ([v3 moving])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(ICAttachmentViewController *)self attachment];
    v6 = [v5 note];
    v4 = [v6 isEditable];
  }

  return v4;
}

- (unint64_t)cursorPositionForLocation:(CGPoint)a3 inTextView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [v7 closestPositionToPoint:{x, y}];
  v9 = [v7 beginningOfDocument];
  v10 = [v7 offsetFromPosition:v9 toPosition:v8];

  if ([(ICTableAttachmentViewController *)self cursorPrefersWordBoundary])
  {
    v11 = [v7 textStorage];
    v12 = [v11 string];

    if (v10)
    {
      v11 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      if (![v11 characterIsMember:{objc_msgSend(v12, "characterAtIndex:", v10 - 1)}])
      {
LABEL_7:

        goto LABEL_14;
      }
    }

    if ([v12 length] <= v10 + 1)
    {
      v14 = [v12 length] > 1;
      if (!v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v13 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      if ([v13 characterIsMember:{objc_msgSend(v12, "characterAtIndex:", v10 + 1)}])
      {

        if (!v10)
        {
          goto LABEL_14;
        }

        goto LABEL_7;
      }

      v14 = [v12 length] > 1;

      if (!v10)
      {
LABEL_12:
        if (v14)
        {
          v10 = 0;
LABEL_16:

          goto LABEL_17;
        }

LABEL_14:
        v15 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v10 = [v12 rangeOfCharacterFromSet:v15 options:0 range:{v10, objc_msgSend(v12, "length") - v10}];

        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = [v12 length];
        }

        goto LABEL_16;
      }
    }

    if (v14)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

LABEL_17:

  return v10;
}

- (void)scrollToSelectionInTextView:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v39 = a5;
  v8 = a3;
  [v8 selectionRect];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(ICTableAttachmentViewController *)self tableContentView];
  [v17 convertRect:v8 fromView:{v10, v12, v14, v16}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [(ICTableAttachmentViewController *)self textViewManager];
  v27 = [v8 columnID];

  [v26 frameOfColumn:v27];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v41.origin.x = v29;
  v41.origin.y = v31;
  v41.size.width = v33;
  v41.size.height = v35;
  MinX = CGRectGetMinX(v41);
  v42.origin.x = v19;
  v42.origin.y = v21;
  v42.size.width = v23;
  v42.size.height = v25;
  MinY = CGRectGetMinY(v42);
  v43.origin.x = v29;
  v43.origin.y = v31;
  v43.size.width = v33;
  v43.size.height = v35;
  Width = CGRectGetWidth(v43);
  v44.origin.x = v19;
  v44.origin.y = v21;
  v44.size.width = v23;
  v44.size.height = v25;
  [(ICTableAttachmentViewController *)self scrollToRect:v5 animated:v39 completion:MinX, MinY, Width, CGRectGetHeight(v44)];
}

- (void)beginEditingNoteAtOffset:(int64_t)a3
{
  v5 = [(ICTableAttachmentViewController *)self tableSelection];
  [v5 unselect];

  v6 = [(ICAttachmentViewController *)self attachment];
  v7 = [v6 note];
  v8 = [(ICAttachmentViewController *)self attachment];
  v9 = [v7 rangeForAttachment:v8];

  if (v9 <= -a3 && a3 <= 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9 + a3;
  }

  [(ICTableAttachmentViewController *)self beginEditingNoteAtRange:v11, 0];
}

- (void)selectTable
{
  v3 = [(ICTableAttachmentViewController *)self tableSelection];
  [v3 unselect];

  v4 = [(ICAttachmentViewController *)self attachment];
  v5 = [v4 note];
  v6 = [(ICAttachmentViewController *)self attachment];
  v7 = [v5 rangeForAttachment:v6];
  v9 = v8;

  [(ICTableAttachmentViewController *)self beginEditingNoteAtRange:v7, v9];
}

- (id)dragSnapshotFromRect:(CGRect)a3 afterScreenUpdates:(BOOL)a4
{
  v4 = objc_alloc_init(MEMORY[0x277D75D18]);

  return v4;
}

- (id)account
{
  v2 = [(ICAttachmentViewController *)self attachment];
  v3 = [v2 note];
  v4 = [v3 account];

  return v4;
}

- (id)note
{
  v2 = [(ICAttachmentViewController *)self attachment];
  v3 = [v2 note];

  return v3;
}

- (CGRect)frameOfCellForColumnTextView:(id)a3 row:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICTableAttachmentViewController *)self textViewManager];
  v9 = [v7 columnID];
  [v8 frameOfCellAtColumn:v9 row:v6];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [v7 superview];
  [v18 convertRect:v7 toView:{v11, v13, v15, v17}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = v20;
  v28 = v22;
  v29 = v24;
  v30 = v26;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (void)movePrevCell
{
  v3 = [(ICTableAttachmentViewController *)self preferredNavigationSelection];

  [(ICTableAttachmentViewController *)self movePrevCellAtLocation:v3];
}

- (void)moveNextCell
{
  v3 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];

  if (!v3)
  {
    return;
  }

  v4 = [(ICTableAttachmentViewController *)self table];
  v5 = [(ICTableAttachmentViewController *)self tableSelection];
  v6 = [v5 columns];
  v7 = [v6 firstObject];
  v8 = [v4 columnIndexForIdentifier:v7];

  v9 = [(ICTableAttachmentViewController *)self table];
  v10 = [(ICTableAttachmentViewController *)self tableSelection];
  v11 = [v10 rows];
  v12 = [v11 firstObject];
  v13 = [v9 rowIndexForIdentifier:v12];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL || v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [ICTableAttachmentViewController moveNextCell];
    }
  }

  else
  {
    v14 = [(ICTableAttachmentViewController *)self table];
    if (v13 == [v14 rowCount] - 1 && -[ICTableAttachmentViewController didRecentlyAutoAddRow](self, "didRecentlyAutoAddRow"))
    {
      v15 = [(ICTableAttachmentViewController *)self table];
      v16 = [v15 rowIsEmptyAtIndex:v13];

      if (v16)
      {
        [(ICTableAttachmentViewController *)self moveReturnCell];

        [(ICTableAttachmentViewController *)self speakAccessibilityExitedTableAnnouncementAndDidRemoveRow:1];
        return;
      }
    }

    else
    {
    }

    v18 = [(ICTableAttachmentViewController *)self table];
    v19 = [v18 columnCount] - 1;

    if (v8 >= v19)
    {
      v21 = [(ICTableAttachmentViewController *)self table];
      v22 = [v21 rowCount] - 1;

      if (v13 == v22)
      {

        [(ICTableAttachmentViewController *)self moveReturnCell];
      }

      else
      {
        v23 = [(ICTableAttachmentViewController *)self preferredNavigationSelection];

        [(ICTableAttachmentViewController *)self moveNextLineAtLocation:v23];
      }
    }

    else
    {
      v20 = [(ICTableAttachmentViewController *)self preferredNavigationSelection];

      [(ICTableAttachmentViewController *)self moveNextCellAtLocation:v20];
    }
  }
}

- (void)moveShiftReturnCell
{
  v3 = [(ICTableAttachmentViewController *)self preferredNavigationSelection];

  [(ICTableAttachmentViewController *)self moveUpCellAtLocation:v3];
}

- (void)moveReturnCell
{
  v3 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];

  if (v3)
  {
    v4 = [(ICTableAttachmentViewController *)self tableSelection];
    v5 = [v4 rows];
    v6 = [v5 firstObject];

    v7 = [(ICTableAttachmentViewController *)self table];
    v8 = [v7 rowIndexForIdentifier:v6];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [ICTableAttachmentViewController moveReturnCell];
      }
    }

    else
    {
      v10 = [(ICTableAttachmentViewController *)self table];
      v11 = [v10 rowCount] - 1;

      if (v8 >= v11)
      {
        v12 = [(ICTableAttachmentViewController *)self table];
        v13 = [(ICTableAttachmentViewController *)self table];
        v14 = [v12 rowIsEmptyAtIndex:{objc_msgSend(v13, "rowCount") - 1}];

        v15 = [(ICTableAttachmentViewController *)self didRecentlyAutoAddRow];
        v16 = [(ICTableAttachmentViewController *)self table];
        v17 = [v16 rowCount];
        if (v15 && (v14 & 1) != 0)
        {

          if (v17 >= 2)
          {
            v18 = [(ICTableAttachmentViewController *)self table];
            [v18 removeRowAtIndex:v8];

            [(ICTableAttachmentViewController *)self cleanDeletedRow:v6];
            [(ICTableAttachmentViewController *)self redrawAndSave];
          }

          [(ICTableAttachmentViewController *)self beginEditingNoteAtOffset:2];
          [(ICTableAttachmentViewController *)self speakAccessibilityExitedTableAnnouncementAndDidRemoveRow:v17 > 1];
        }

        else
        {
          [(ICTableAttachmentViewController *)self addRowAtIndex:v17];

          [(ICTableAttachmentViewController *)self setDidRecentlyAutoAddRow:1];
          v19 = *MEMORY[0x277D76438];
          v20 = [MEMORY[0x277CCA8D8] mainBundle];
          v21 = [v20 localizedStringForKey:@"Added new row" value:&stru_282757698 table:0];
          UIAccessibilityPostNotification(v19, v21);
        }
      }

      else
      {
        [(ICTableAttachmentViewController *)self moveDownCellAtLocation:[(ICTableAttachmentViewController *)self preferredNavigationSelection]];
      }
    }
  }
}

- (void)moveLeftCell
{
  v3 = [(ICTableAttachmentViewController *)self table];
  v4 = [v3 isLeftToRight];

  if (v4)
  {

    [(ICTableAttachmentViewController *)self movePrevCellAtLocation:2];
  }

  else
  {

    [(ICTableAttachmentViewController *)self moveNextCellAtLocation:0];
  }
}

- (void)moveRightCell
{
  v3 = [(ICTableAttachmentViewController *)self table];
  v4 = [v3 isLeftToRight];

  if (v4)
  {

    [(ICTableAttachmentViewController *)self moveNextCellAtLocation:0];
  }

  else
  {

    [(ICTableAttachmentViewController *)self movePrevCellAtLocation:2];
  }
}

- (BOOL)pasteCellRange
{
  v3 = [(ICTableAttachmentViewController *)self icTableFromPasteboard];
  if (v3)
  {
    v4 = [(ICTableAttachmentViewController *)self table];
    v5 = [(ICTableAttachmentViewController *)self tableSelection];
    v6 = [v5 type];
    v7 = v6 != 0;

    if (v6)
    {
      v8 = [(ICTableAttachmentViewController *)self tableSelection];
      v9 = [v8 rows];
      v10 = [v9 firstObject];

      if (!v10)
      {
        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((selectedRow) != nil)" functionName:"-[ICTableAttachmentViewController pasteCellRange]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "selectedRow"}];
      }

      v11 = [v4 rowIndexForIdentifier:v10];
      v12 = [(ICTableAttachmentViewController *)self tableSelection];
      v13 = [v12 columns];
      v14 = [v13 firstObject];

      if (!v14)
      {
        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((selectedColumn) != nil)" functionName:"-[ICTableAttachmentViewController pasteCellRange]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "selectedColumn"}];
      }

      v15 = [v4 columnIndexForIdentifier:v14];
      if ([(ICTableAttachmentViewController *)self makeSpaceToPasteSourceTable:v3])
      {
        [(ICTableAttachmentViewController *)self pasteTable:v3 atColumnIndex:v15 rowIndex:v11 shouldSetSelectionToPastedRange:0];
      }

      else
      {
        v16 = [v3 joinedAttributedStringForColumns:0 rows:0];
        v17 = [(ICAttachmentViewController *)self attachment];
        v18 = [v17 managedObjectContext];
        v19 = [v16 ic_attributedStringByFlatteningUnsupportedInlineAttachmentsWithContext:v18];

        v20 = [(ICAttachmentViewController *)self attachment];
        v21 = [v20 managedObjectContext];
        v22 = [v19 ic_attributedStringByCopyingInlineAttachmentsAndUpdatingChangeCountWithContext:v21];

        v23 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
        v33 = [v23 ic_selectedRanges];

        v24 = [(ICTableAttachmentViewController *)self currentlyEditingTextStorage];
        [v24 setIsReadingSelectionFromPasteboard:1];

        v25 = [(ICTableAttachmentViewController *)self currentlyEditingTextStorage];
        v26 = [v33 firstObject];
        v27 = [v26 rangeValue];
        [v25 replaceCharactersInRange:v27 withAttributedString:{v28, v22}];

        v29 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
        v30 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
        [v29 setSelectedRange:{objc_msgSend(v30, "selectedRange") + objc_msgSend(v22, "length"), 0}];

        v31 = [(ICTableAttachmentViewController *)self currentlyEditingTextStorage];
        [v31 setIsReadingSelectionFromPasteboard:0];

        [(ICTableAttachmentViewController *)self save];
        [(ICTableAttachmentViewController *)self updateCellSizeAtColumn:v14 row:v10 immediateWidthUpdate:1];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)didPasteOrDropTextForTableColumnTextView:(id)a3
{
  v4 = [a3 columnID];
  [(ICTableAttachmentViewController *)self updateColumnWidthForColumn:v4];

  [(ICTableAttachmentViewController *)self save];
}

- (void)moveNextLineAtLocation:(unint64_t)a3
{
  v5 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];

  if (v5)
  {
    v6 = [(ICTableAttachmentViewController *)self table];
    v7 = [(ICTableAttachmentViewController *)self tableSelection];
    v8 = [v7 rows];
    v9 = [v8 firstObject];
    v10 = [v6 rowIndexForIdentifier:v9];

    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [ICTableAttachmentViewController moveNextLineAtLocation:];
      }
    }

    else
    {
      v12 = [(ICTableAttachmentViewController *)self table];
      v13 = [v12 rowCount] - 1;

      if (v10 < v13)
      {
        v14 = [(ICTableAttachmentViewController *)self table];
        v17 = [v14 identifierForRowAtIndex:v10 + 1];

        v15 = [(ICTableAttachmentViewController *)self table];
        v16 = [v15 identifierForColumnAtIndex:0];

        [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:v16 andRowID:v17 location:a3];
        [(ICTableAttachmentViewController *)self speakAccessibilityAnnouncementForMoveToCellWithColumnID:v16 rowID:v17];
      }
    }
  }
}

- (void)moveUpCellAtLocation:(unint64_t)a3
{
  v5 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];

  if (v5)
  {
    v6 = [(ICTableAttachmentViewController *)self table];
    v7 = [(ICTableAttachmentViewController *)self tableSelection];
    v8 = [v7 columns];
    v9 = [v8 firstObject];
    v10 = [v6 columnIndexForIdentifier:v9];

    v11 = [(ICTableAttachmentViewController *)self table];
    v12 = [(ICTableAttachmentViewController *)self tableSelection];
    v13 = [v12 rows];
    v14 = [v13 firstObject];
    v15 = [v11 rowIndexForIdentifier:v14];

    if (v10 == 0x7FFFFFFFFFFFFFFFLL || v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [ICTableAttachmentViewController moveUpCellAtLocation:];
      }
    }

    else if (v15)
    {
      v16 = [(ICTableAttachmentViewController *)self table];
      v20 = [v16 identifierForColumnAtIndex:v10];

      v17 = [(ICTableAttachmentViewController *)self table];
      v18 = [v17 identifierForRowAtIndex:v15 - 1];

      [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:v20 andRowID:v18 location:a3];
      [(ICTableAttachmentViewController *)self speakAccessibilityAnnouncementForMoveToCellWithColumnID:v20 rowID:v18];
    }

    else
    {

      [(ICTableAttachmentViewController *)self beginEditingNoteAtOffset:-1];
    }
  }
}

- (void)moveDownCellAtLocation:(unint64_t)a3
{
  v5 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];

  if (v5)
  {
    v6 = [(ICTableAttachmentViewController *)self table];
    v7 = [(ICTableAttachmentViewController *)self tableSelection];
    v8 = [v7 columns];
    v9 = [v8 firstObject];
    v10 = [v6 columnIndexForIdentifier:v9];

    v11 = [(ICTableAttachmentViewController *)self table];
    v12 = [(ICTableAttachmentViewController *)self tableSelection];
    v13 = [v12 rows];
    v14 = [v13 firstObject];
    v15 = [v11 rowIndexForIdentifier:v14];

    if (v10 == 0x7FFFFFFFFFFFFFFFLL || v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [ICTableAttachmentViewController moveDownCellAtLocation:];
      }
    }

    else
    {
      v16 = [(ICTableAttachmentViewController *)self table];
      v17 = [v16 rowCount] - 1;

      if (v15 >= v17)
      {

        [(ICTableAttachmentViewController *)self beginEditingNoteAtOffset:2];
      }

      else
      {
        v18 = [(ICTableAttachmentViewController *)self table];
        v22 = [v18 identifierForColumnAtIndex:v10];

        v19 = [(ICTableAttachmentViewController *)self table];
        v20 = [v19 identifierForRowAtIndex:v15 + 1];

        [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:v22 andRowID:v20 location:a3];
        [(ICTableAttachmentViewController *)self speakAccessibilityAnnouncementForMoveToCellWithColumnID:v22 rowID:v20];
      }
    }
  }
}

- (void)movePrevCellAtLocation:(unint64_t)a3
{
  v5 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];

  if (v5)
  {
    v6 = [(ICTableAttachmentViewController *)self table];
    v7 = [(ICTableAttachmentViewController *)self tableSelection];
    v8 = [v7 columns];
    v9 = [v8 firstObject];
    v10 = [v6 columnIndexForIdentifier:v9];

    v11 = [(ICTableAttachmentViewController *)self table];
    v12 = [(ICTableAttachmentViewController *)self tableSelection];
    v13 = [v12 rows];
    v14 = [v13 firstObject];
    v15 = [v11 rowIndexForIdentifier:v14];

    if (v10 == 0x7FFFFFFFFFFFFFFFLL || v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [ICTableAttachmentViewController movePrevCellAtLocation:];
      }
    }

    else if (v10 | v15)
    {
      if (!v10)
      {
        v16 = [(ICTableAttachmentViewController *)self table];
        v10 = [v16 columnCount];

        --v15;
      }

      v17 = [(ICTableAttachmentViewController *)self table];
      v21 = [v17 identifierForColumnAtIndex:v10 - 1];

      v18 = [(ICTableAttachmentViewController *)self table];
      v19 = [v18 identifierForRowAtIndex:v15];

      [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:v21 andRowID:v19 location:a3];
      [(ICTableAttachmentViewController *)self speakAccessibilityAnnouncementForMoveToCellWithColumnID:v21 rowID:v19];
    }

    else
    {

      [(ICTableAttachmentViewController *)self beginEditingNoteAtOffset:0];
    }
  }
}

- (void)moveNextCellAtLocation:(unint64_t)a3
{
  v5 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];

  if (!v5)
  {
    return;
  }

  v6 = [(ICTableAttachmentViewController *)self table];
  v7 = [(ICTableAttachmentViewController *)self tableSelection];
  v8 = [v7 columns];
  v9 = [v8 firstObject];
  v10 = [v6 columnIndexForIdentifier:v9];

  v11 = [(ICTableAttachmentViewController *)self table];
  v12 = [(ICTableAttachmentViewController *)self tableSelection];
  v13 = [v12 rows];
  v14 = [v13 firstObject];
  v15 = [v11 rowIndexForIdentifier:v14];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL || v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [ICTableAttachmentViewController moveNextCellAtLocation:];
    }
  }

  else
  {
    v16 = [(ICTableAttachmentViewController *)self table];
    if (v10 < [v16 columnCount] - 1)
    {

LABEL_11:
      v20 = [(ICTableAttachmentViewController *)self table];
      v21 = [v20 columnCount] - 1;

      if (v10 < v21)
      {
        v22 = v10 + 1;
      }

      else
      {
        ++v15;
        v22 = 0;
      }

      v23 = [(ICTableAttachmentViewController *)self table];
      v26 = [v23 identifierForColumnAtIndex:v22];

      v24 = [(ICTableAttachmentViewController *)self table];
      v25 = [v24 identifierForRowAtIndex:v15];

      [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:v26 andRowID:v25 location:a3];
      [(ICTableAttachmentViewController *)self speakAccessibilityAnnouncementForMoveToCellWithColumnID:v26 rowID:v25];

      return;
    }

    v18 = [(ICTableAttachmentViewController *)self table];
    v19 = [v18 rowCount] - 1;

    if (v15 < v19)
    {
      goto LABEL_11;
    }

    [(ICTableAttachmentViewController *)self beginEditingNoteAtOffset:1];
  }
}

- (BOOL)makeSpaceToPasteSourceTable:(id)a3
{
  v4 = a3;
  [(ICTableAttachmentViewController *)self beginEditing];
  v5 = [(ICTableAttachmentViewController *)self table];
  v6 = [(ICTableAttachmentViewController *)self tableSelection];
  if ([v6 type] != 1)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"ICTableAttachmentSelectionTypeCell == tableSelection.type" functionName:"-[ICTableAttachmentViewController makeSpaceToPasteSourceTable:]" simulateCrash:1 showAlert:0 format:@"Expected a cell editing selection when pasting a cell range"];
  }

  v7 = [v6 columns];
  v8 = [v5 columnIndexesForIdentifiers:v7];

  if ([v8 count] != 1)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"1 == selectedColumnIndexes.count" functionName:"-[ICTableAttachmentViewController makeSpaceToPasteSourceTable:]" simulateCrash:1 showAlert:0 format:@"Expected a single column in this selection"];
  }

  v9 = [v6 rows];
  v10 = [v5 rowIndexesForIdentifiers:v9];

  if ([v10 count] != 1)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"1 == selectedRowIndexes.count" functionName:"-[ICTableAttachmentViewController makeSpaceToPasteSourceTable:]" simulateCrash:1 showAlert:0 format:@"Expected a single row in this selection"];
  }

  v11 = [v8 firstIndex];
  v12 = [v10 firstIndex];
  v48 = [v4 columnCount];
  v47 = [v4 rowCount];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"selectedColumnIndex >= 0 && selectedColumnIndex != NSNotFound" functionName:"-[ICTableAttachmentViewController makeSpaceToPasteSourceTable:]" simulateCrash:1 showAlert:0 format:{@"Expected valid selected column index, got %lu.", 0x7FFFFFFFFFFFFFFFLL}];
  }

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"selectedRowIndex >= 0 && selectedRowIndex != NSNotFound" functionName:"-[ICTableAttachmentViewController makeSpaceToPasteSourceTable:]" simulateCrash:1 showAlert:0 format:{@"Expected valid selected row index, got %lu.", 0x7FFFFFFFFFFFFFFFLL}];
  }

  v13 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v11, v48}];
  v46 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v12, v47}];
  if (([v5 isEmptyAtColumnIndexes:v13 rowIndexes:v46] & 1) == 0)
  {
    v44 = v13;
    v45 = v10;
    v15 = [v5 rowCount];
    v16 = [v5 columnCount];
    if ([v5 rowIsEmptyAtIndex:v12])
    {
      v40 = v8;
      v41 = v6;
      v42 = v4;
      v17 = v47 - 1;
      v18 = v12 + 1;
      while (1)
      {
        v19 = v17;
        v20 = v17-- != 0;
        v21 = v20;
        if (!v20 || v18 >= v15)
        {
          break;
        }

        v22 = [v5 rowIsEmptyAtIndex:v18++];
        if ((v22 & 1) == 0)
        {
          v21 = 1;
          break;
        }
      }

      v23 = [v5 insertRows:v19 atIndex:v12];
      if (v48 >= v16 - v11)
      {
        v24 = v48 - (v16 - v11);
      }

      else
      {
        v24 = 0;
      }

      v25 = [(ICTableAttachmentViewController *)self table];

      if (v5 != v25)
      {
        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"destinationTable == self.table" functionName:"-[ICTableAttachmentViewController makeSpaceToPasteSourceTable:]" simulateCrash:1 showAlert:0 format:@"destination table should be self.table"];
      }

      v26 = [(ICTableAttachmentViewController *)self insertColumns:v24 atIndex:v16];
      if (v48 > v16 - v11)
      {
        v27 = 1;
      }

      else
      {
        v27 = v21;
      }

      v4 = v42;
      v13 = v44;
      if ((v27 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (![v5 columnIsEmptyAtIndex:v11])
      {
        v14 = 0;
        v13 = v44;
        v10 = v45;
        goto LABEL_55;
      }

      v40 = v8;
      v41 = v6;
      v43 = v4;
      v28 = v48 - 1;
      v29 = v11 + 1;
      while (1)
      {
        v30 = v28;
        v31 = v28-- != 0;
        v32 = v31;
        if (!v31 || v29 >= v16)
        {
          break;
        }

        v33 = [v5 rowIsEmptyAtIndex:v29++];
        if ((v33 & 1) == 0)
        {
          v32 = 1;
          break;
        }
      }

      v34 = [(ICTableAttachmentViewController *)self table];

      if (v5 != v34)
      {
        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"destinationTable == self.table" functionName:"-[ICTableAttachmentViewController makeSpaceToPasteSourceTable:]" simulateCrash:1 showAlert:0 format:@"destination table should be self.table"];
      }

      v35 = [(ICTableAttachmentViewController *)self insertColumns:v30 atIndex:v11];
      if (v47 >= v15 - v12)
      {
        v36 = v47 - (v15 - v12);
      }

      else
      {
        v36 = 0;
      }

      if (v47 > v15 - v12)
      {
        v37 = 1;
      }

      else
      {
        v37 = v32;
      }

      v38 = [v5 insertRows:v36 atIndex:v15];
      v4 = v43;
      v13 = v44;
      if (v37 != 1)
      {
        goto LABEL_33;
      }
    }

    [(ICTableAttachmentViewController *)self postChangeNotification:2 columnOrRowUUIDs:0];
    [(ICTableAttachmentViewController *)self redrawAndSave];
LABEL_33:
    v14 = 1;
    v8 = v40;
    v6 = v41;
    v10 = v45;
    goto LABEL_55;
  }

  v14 = 1;
LABEL_55:
  [(ICTableAttachmentViewController *)self endEditing];

  return v14;
}

- (void)beginEditing
{
  v3 = [(ICTableAttachmentViewController *)self editingCount]+ 1;

  [(ICTableAttachmentViewController *)self setEditingCount:v3];
}

- (void)endEditing
{
  if ([(ICTableAttachmentViewController *)self editingCount])
  {
    [(ICTableAttachmentViewController *)self setEditingCount:[(ICTableAttachmentViewController *)self editingCount]- 1];
  }

  if (![(ICTableAttachmentViewController *)self editingCount])
  {
    v3 = [(ICTableAttachmentViewController *)self undoCommands];
    v4 = [v3 count];

    if (v4)
    {
      v5 = [(ICTableAttachmentViewController *)self undoCommands];
      v6 = [v5 copy];

      v7 = [(ICTableAttachmentViewController *)self undoTarget];
      v8 = [(ICTableAttachmentViewController *)self undoManager];
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __45__ICTableAttachmentViewController_endEditing__block_invoke;
      v15 = &unk_2781ADFD8;
      v16 = v7;
      v17 = v6;
      v9 = v6;
      v10 = v7;
      [v8 registerUndoWithTarget:v10 handler:&v12];

      v11 = [(ICTableAttachmentViewController *)self undoCommands:v12];
      [v11 removeAllObjects];
    }
  }
}

void __45__ICTableAttachmentViewController_endEditing__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) tableAttachmentViewControllerForUndo];
  [v2 tableAttachmentWillChange];
  [v2 beginEditing];
  v3 = [v2 table];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [*(a1 + 40) reverseObjectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v9 + 1) + 8 * v8++) + 16))();
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [v2 endEditing];
  [v2 tableAttachmentDidChange];
  [v2 save];
}

- (unint64_t)selectedStyleBIUS
{
  v4 = 0;
  v2 = [(ICTableAttachmentViewController *)self namedStylesForCurrentSelectionAndBIUS:&v4];
  return v4;
}

- (void)toggleTodoStyle:(id)a3
{
  v4 = [(ICTableAttachmentViewController *)self selectedStyles];
  v5 = [v4 containsIndex:103];

  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 103;
  }

  [(ICTableAttachmentViewController *)self setSelectionNamedStyle:v6];
}

- (void)toggleBIUS:(unint64_t)a3 onValue:(id)a4
{
  v6 = a4;
  v10 = 0;
  v11 = 0;
  v7 = [(ICTableAttachmentViewController *)self namedStylesForCurrentSelectionAndBIUS:&v11 emphasisColorType:&v10];
  v8 = (v11 & a3) != a3;
  if ((v11 & 0x10) != 0 && v6 && (v11 & a3) == a3 && v10 != 0)
  {
    [v6 intValue];
    v8 = ICEmphasisColorTypeForTag() != v10;
  }

  [(ICTableAttachmentViewController *)self setSelectionBIUSStyle:a3 toggleOn:v8 onValue:v6];
}

- (void)copyTable:(id)a3
{
  v4 = a3;
  v5 = [(ICTableAttachmentViewController *)self tableSelection];
  v6 = [v5 copy];

  v7 = MEMORY[0x277CBEB18];
  v8 = [(ICTableAttachmentViewController *)self table];
  v9 = [v7 arrayWithCapacity:{objc_msgSend(v8, "columnCount")}];

  v10 = [(ICTableAttachmentViewController *)self table];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __45__ICTableAttachmentViewController_copyTable___block_invoke;
  v24[3] = &unk_2781AE000;
  v25 = v9;
  v11 = v9;
  [v10 enumerateColumnsWithBlock:v24];

  v12 = MEMORY[0x277CBEB18];
  v13 = [(ICTableAttachmentViewController *)self table];
  v14 = [v12 arrayWithCapacity:{objc_msgSend(v13, "rowCount")}];

  v15 = [(ICTableAttachmentViewController *)self table];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __45__ICTableAttachmentViewController_copyTable___block_invoke_2;
  v22 = &unk_2781AE000;
  v23 = v14;
  v16 = v14;
  [v15 enumerateRowsWithBlock:&v19];

  v17 = [(ICTableAttachmentViewController *)self tableSelection:v19];
  [v17 selectCellRangeAtColumns:v11 rows:v16];

  [(ICTableAttachmentViewController *)self copySelection:v4];
  v18 = [(ICTableAttachmentViewController *)self tableSelection];
  [v18 setSelectionEqualTo:v6];
}

- (void)convertTableToText:(id)a3
{
  v4 = [(ICTableAttachmentViewController *)self table];
  v5 = [(ICAttachmentViewController *)self attachment];
  v6 = [v5 note];
  v25 = [v4 joinedAttributedStringForColumns:0 rows:0 deepCopyInlineAttachments:1 note:v6 parentAttachment:0];

  if (ICInternalSettingsIsTextKit2Enabled())
  {
    objc_opt_class();
    v7 = [(ICTableAttachmentViewController *)self noteTextView];
    [v7 textLayoutManager];
  }

  else
  {
    objc_opt_class();
    v7 = [(ICTableAttachmentViewController *)self noteTextView];
    [v7 layoutManager];
  }
  v8 = ;
  v9 = ICDynamicCast();

  v10 = [(ICAttachmentViewController *)self attachment];
  v11 = [v9 rangeForAttachment:v10 withTextAttachment:0];
  v13 = v12;

  v14 = [(ICTableAttachmentViewController *)self noteTextView];
  v15 = [v14 textStorage];
  [v15 beginEditing];

  v16 = [(ICTableAttachmentViewController *)self noteTextView];
  v17 = [v16 textStorage];
  [v17 replaceCharactersInRange:v11 withAttributedString:{v13, v25}];

  v18 = [(ICTableAttachmentViewController *)self noteTextView];
  v19 = [v18 textStorage];
  [v19 endEditing];

  v20 = [(ICTableAttachmentViewController *)self noteTextView];
  v21 = [v20 delegate];
  v22 = [(ICTableAttachmentViewController *)self noteTextView];
  [v21 textViewDidChange:v22];

  v23 = [v25 length];
  v24 = [(ICTableAttachmentViewController *)self noteTextView];
  [v24 setSelectedRange:{v11, v23}];
}

- (void)updateTableColumnDirectionForWritingDirection:(int64_t)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a3 == 1;
  v6 = [(ICTableAttachmentViewController *)self table];
  v7 = [v6 isRightToLeft];

  if (v5 != v7)
  {
    v8 = [(ICTableAttachmentViewController *)self tableSelection];
    v9 = [v8 columns];

    v10 = [(ICTableAttachmentViewController *)self tableSelection];
    v11 = [v10 rows];

    if (![v11 count])
    {
      v12 = [(ICTableAttachmentViewController *)self table];
      v13 = [v12 identifierForRowAtIndex:0];
      v17[0] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];

      v11 = v14;
    }

    [(ICTableAttachmentViewController *)self hideColumnRowButtons];
    v15 = [(ICTableAttachmentViewController *)self table];
    [v15 reverseColumnDirection];

    [(ICTableAttachmentViewController *)self updateTableCellsWithDirection:a3 columnIndexes:0 rowIndexes:0];
    v16 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];

    if (v16)
    {
      [(ICTableAttachmentViewController *)self setRowButton:0];
      [(ICTableAttachmentViewController *)self setColumnButton:0];
      [(ICTableAttachmentViewController *)self showButtonsAtColumns:v9 rows:v11];
    }

    [(ICTableAttachmentViewController *)self redrawAndSave];
    [(ICTableAttachmentViewController *)self updateAttachmentParagraphForWritingDirection:a3];
  }
}

- (void)reverseTableColumnDirection:(id)a3
{
  v4 = [(ICTableAttachmentViewController *)self table];
  if ([v4 isRightToLeft])
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

  [(ICTableAttachmentViewController *)self updateTableColumnDirectionForWritingDirection:v5];
}

- (void)updateAttachmentParagraphForWritingDirection:(int64_t)a3
{
  v17 = [(ICAttachmentViewController *)self attachment];
  v5 = [v17 note];
  v6 = [v5 textStorage];

  objc_opt_class();
  v7 = [v6 styler];
  v8 = ICDynamicCast();

  v9 = [v17 rangeInNote];
  v11 = v10;
  v12 = [v6 string];
  v13 = [v12 paragraphRangeForRange:{v9, v11}];
  v15 = v14;

  v16 = [(ICTableAttachmentViewController *)self noteTextView];
  [v8 setParagraphWritingDirectionInRange:v13 toDirection:v15 inTextView:{a3, v16}];
}

- (void)applyUndoGroup:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = ICCheckedDynamicCast();
  v6 = [v5 columnID];
  v7 = [v5 rowID];
  v8 = [(ICTableAttachmentViewController *)self table];
  if ([v8 containsColumn:v6] && objc_msgSend(v8, "containsRow:", v7))
  {
    v9 = [(ICTableAttachmentViewController *)self tableSelection];
    v10 = [(ICTableAttachmentViewController *)self textViewManager];
    v11 = [v10 textViewForColumn:v6];

    objc_opt_class();
    v41 = v11;
    v12 = [v11 textStorage];
    v13 = ICDynamicCast();

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __50__ICTableAttachmentViewController_applyUndoGroup___block_invoke;
    aBlock[3] = &unk_2781AE028;
    aBlock[4] = self;
    v42 = v6;
    v47 = v42;
    v38 = v7;
    v48 = v38;
    v39 = v13;
    v49 = v39;
    v50 = v4;
    v14 = _Block_copy(aBlock);
    v15 = [v5 tableSelection];
    v16 = [v15 type];

    v40 = v9;
    if (v16 != 1)
    {
      v21 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];

      if (v21)
      {
        v22 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
        [(ICTableAttachmentViewController *)self endCellEditingSessionWithTextView:v22];
      }

      v14[2](v14);
      v23 = [(ICTableAttachmentViewController *)self tableSelection];
      v24 = [v5 tableSelection];
      [v23 setSelectionEqualTo:v24];

      [(ICTableAttachmentViewController *)self updateChrome];
      v25 = [v5 tableSelection];
      if (![v25 type])
      {
        v32 = [(ICTableAttachmentViewController *)self noteTextView];
        v33 = [v32 isEditable];

        v31 = v39;
        if (v33)
        {
          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v43[2] = __50__ICTableAttachmentViewController_applyUndoGroup___block_invoke_3;
          v43[3] = &unk_2781AE050;
          v44 = v39;
          v45 = v38;
          [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:v42 andRowID:v45 textRange:v43];
        }

        goto LABEL_18;
      }

LABEL_17:
      v31 = v39;
LABEL_18:
      [(ICTableAttachmentViewController *)self updateColumnWidthForColumn:v42];
      [(ICTableAttachmentViewController *)self save];

      goto LABEL_19;
    }

    if ([v9 type] == 1)
    {
      v17 = [v9 columns];
      v18 = [v17 objectAtIndexedSubscript:0];
      if ([v42 isEqual:v18])
      {
        v35 = v18;
        v36 = v17;
        v19 = [v9 rows];
        v20 = [v19 objectAtIndexedSubscript:0];
        if ([v38 isEqual:v20])
        {

          goto LABEL_14;
        }

        v34 = [v41 isEditable];

        if ((v34 & 1) == 0)
        {
LABEL_14:
          v26 = [(ICTableAttachmentViewController *)self tableSelection];
          v27 = [v26 type];

          if (v27 == 1)
          {
            v14[2](v14);
          }

          else
          {
            v28 = [(ICTableAttachmentViewController *)self tableSelection];
            v29 = [v5 tableSelection];
            [v28 setSelectionEqualTo:v29];

            v14[2](v14);
            v30 = [(ICTableAttachmentViewController *)self tableSelection];
            [v30 unselect];
          }

          goto LABEL_17;
        }
      }

      else
      {
        v37 = [v41 isEditable];

        if (!v37)
        {
          goto LABEL_14;
        }
      }
    }

    else if (([v41 isEditable] & 1) == 0)
    {
      goto LABEL_14;
    }

    [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:v42 andRowID:v38 location:0];
    goto LABEL_14;
  }

LABEL_19:
}

void __50__ICTableAttachmentViewController_applyUndoGroup___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) table];
  v3 = [v2 mergeableStringForColumnID:*(a1 + 40) rowID:*(a1 + 48)];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__ICTableAttachmentViewController_applyUndoGroup___block_invoke_2;
  v6[3] = &unk_2781ABEB8;
  v7 = v3;
  v4 = *(a1 + 56);
  v8 = *(a1 + 64);
  v5 = v3;
  [v4 applyUndoWithBlock:v6];
}

- (void)addUndoCommandsForObject:(id)a3 block:(id)a4
{
  v5 = a4;
  [(ICTableAttachmentViewController *)self beginEditing];
  v6 = [(ICTableAttachmentViewController *)self undoCommands];
  v7 = _Block_copy(v5);

  [v6 addObject:v7];

  [(ICTableAttachmentViewController *)self endEditing];
}

- (id)attributedStringFromPasteboard
{
  v3 = [(ICTableAttachmentViewController *)self notesDataFromPasteboard];
  if (!v3 || ([MEMORY[0x277D35F38] pasteboardDataFromPersistenceData:v3], (v4 = objc_claimAutoreleasedReturnValue()) == 0) || (v5 = v4, v6 = MEMORY[0x277CCA898], objc_msgSend(v4, "attributedStringData"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "dataPersister"), v8 = objc_claimAutoreleasedReturnValue(), -[ICAttachmentViewController attachment](self, "attachment"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "note"), v10 = objc_claimAutoreleasedReturnValue(), -[ICAttachmentViewController attachment](self, "attachment"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "ic_attributedStringWithData:dataPersister:createNewAttachmentsInNote:forParentAttachment:error:", v7, v8, v10, v11, 0), v12 = objc_claimAutoreleasedReturnValue(), v11, v10, v9, v8, v7, v5, !v12))
  {
    v13 = [(ICTableAttachmentViewController *)self soloPlainTextStringFromPasteboard];
    if (v13)
    {
      v12 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v13];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)icTableFromPasteboard
{
  v3 = [(ICTableAttachmentViewController *)self icTableDataFromPasteboard];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = objc_alloc(MEMORY[0x277D35FD0]);
  v5 = [(ICTableAttachmentViewController *)self table];
  v6 = [v5 document];
  v7 = [v6 replica];
  if (v7)
  {
    v8 = [v4 initWithData:v3 replicaID:v7];
  }

  else
  {
    v9 = [MEMORY[0x277CCAD78] UUID];
    v8 = [v4 initWithData:v3 replicaID:v9];
  }

  v10 = [v8 table];

  if (!v10)
  {
LABEL_6:
    v11 = [(ICTableAttachmentViewController *)self attributedStringFromPasteboard];
    v12 = [(ICAttachmentViewController *)self attachment];
    v13 = [v12 managedObjectContext];
    v14 = [v11 ic_attributedStringByFlatteningCalculateAttachmentsWithContext:v13];

    v15 = MEMORY[0x277D35E48];
    v16 = [(ICAttachmentViewController *)self attachment];
    v17 = [v16 managedObjectContext];
    v18 = [(ICTableAttachmentViewController *)self table];
    v19 = [v18 document];
    v20 = [v19 replica];
    if (v20)
    {
      v21 = [v15 tableFromAttributedString:v14 managedObjectContext:v17 replicaID:v20];
    }

    else
    {
      v22 = [MEMORY[0x277CCAD78] UUID];
      v21 = [v15 tableFromAttributedString:v14 managedObjectContext:v17 replicaID:v22];
    }

    v10 = [v21 table];
  }

  return v10;
}

- (id)icTableDataForSelection
{
  v3 = [(ICTableAttachmentViewController *)self table];
  v4 = [(ICTableAttachmentViewController *)self tableSelection];
  v5 = [v4 type];
  v6 = v5;
  if (v5 == 4 || v5 == 2)
  {
    v7 = [v4 columns];
    v8 = [v3 columnIndexesForIdentifiers:v7];
  }

  else
  {
    v8 = 0;
  }

  if ((v6 - 3) > 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = [v4 rows];
    v10 = [v3 rowIndexesForIdentifiers:v9];
  }

  v28 = v3;
  v11 = objc_alloc(MEMORY[0x277D35E68]);
  v12 = [(ICTableAttachmentViewController *)self table];
  v13 = [v12 document];
  v14 = [v13 replica];
  v15 = [v11 initWithReplica:v14];

  v16 = [(ICTableAttachmentViewController *)self table];
  v17 = [v16 subtableWithDocument:v15 forSelectionContainingColumnIndices:v8 rowIndices:v10];

  [v15 setRootObject:v17];
  v18 = objc_alloc(MEMORY[0x277D35FD0]);
  v19 = [(ICTableAttachmentViewController *)self table];
  v20 = [v19 document];
  v21 = [v20 replica];
  if (v21)
  {
    v22 = [v18 initWithData:0 replicaID:v21];
  }

  else
  {
    v23 = [MEMORY[0x277CCAD78] UUID];
    v22 = [v18 initWithData:0 replicaID:v23];
  }

  v24 = [MEMORY[0x277D35FD0] serializationVersion];
  v25 = [v15 archivedData];
  [v22 mergeVersion:v24 fromData:v25];

  v26 = [v22 serialize];

  return v26;
}

- (id)attributedStringForTableSelectionInContext:(id)a3
{
  v4 = MEMORY[0x277D35E00];
  v5 = MEMORY[0x277CCAD78];
  v6 = a3;
  v7 = [v5 UUID];
  v8 = [v7 UUIDString];
  v9 = [v4 newObjectWithIdentifier:v8 context:v6];

  [v9 setTypeUTI:*MEMORY[0x277D35C08]];
  v10 = [(ICTableAttachmentViewController *)self icTableDataForSelection];
  [v9 setMergeableData:v10];

  v11 = [MEMORY[0x277D36950] textAttachmentWithAttachment:v9];
  v12 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v11];
  v13 = [v12 mutableCopy];

  [v13 addAttribute:*MEMORY[0x277D74060] value:v11 range:{0, objc_msgSend(v13, "length")}];
  v14 = [MEMORY[0x277D35F90] paragraphStyleNamed:3];
  v15 = [(ICTableAttachmentViewController *)self table];
  [v14 setWritingDirection:{objc_msgSend(v15, "isRightToLeft")}];

  v16 = *MEMORY[0x277D35DA8];
  v17 = [v14 copy];
  [v13 addAttribute:v16 value:v17 range:{0, objc_msgSend(v13, "length")}];

  v18 = [v13 copy];

  return v18;
}

- (id)plainTextDataForSelection
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D74120];
  v4 = *MEMORY[0x277D74080];
  v8[0] = *MEMORY[0x277D74098];
  v8[1] = v4;
  v9[0] = v3;
  v9[1] = &unk_28277E598;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v6 = [(ICTableAttachmentViewController *)self dataForSelectionWithDocumentAttributes:v5];

  return v6;
}

- (id)webArchiveDataForSelection
{
  v3 = [*MEMORY[0x277CE1ED8] identifier];
  v4 = [(ICTableAttachmentViewController *)self dataForSelectionOfType:v3];

  return v4;
}

- (id)dataForSelectionOfType:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277D74098];
  v10[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [(ICTableAttachmentViewController *)self dataForSelectionWithDocumentAttributes:v6];

  return v7;
}

- (id)dataForSelectionWithDocumentAttributes:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__10;
  v19 = __Block_byref_object_dispose__10;
  v20 = 0;
  v5 = [MEMORY[0x277D35F30] sharedContext];
  v6 = [v5 snapshotManagedObjectContext];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__ICTableAttachmentViewController_dataForSelectionWithDocumentAttributes___block_invoke;
  v11[3] = &unk_2781AC600;
  v11[4] = self;
  v7 = v6;
  v12 = v7;
  v8 = v4;
  v13 = v8;
  v14 = &v15;
  [v7 performBlockAndWait:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __74__ICTableAttachmentViewController_dataForSelectionWithDocumentAttributes___block_invoke(uint64_t a1)
{
  v11 = [*(a1 + 32) attributedStringForTableSelectionInContext:*(a1 + 40)];
  v2 = objc_alloc(MEMORY[0x277D36918]);
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [v2 initWithAttributedString:v11 replicaID:v3];
  v5 = v4;

  [v4 setFilterSubstringAttributes:1];
  v6 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277D74098]];
  v7 = [v6 isEqualToString:*MEMORY[0x277D74120]];

  if (v7)
  {
    [v4 setFilterSubstringAttributesForPlainText:1];
  }

  v8 = [v4 dataFromRange:0 documentAttributes:objc_msgSend(v4 error:{"length"), *(a1 + 48), 0}];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (id)customPasteboardDataForSelection
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__10;
  v26 = __Block_byref_object_dispose__10;
  v27 = 0;
  v3 = objc_alloc(MEMORY[0x277D35EA0]);
  v4 = [(ICAttachmentViewController *)self attachment];
  v5 = [v4 identifier];
  v6 = [v3 initWithObjectIdentifier:v5 forPasteboard:1];

  v7 = [MEMORY[0x277D35F30] sharedContext];
  v8 = [v7 snapshotManagedObjectContext];

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __67__ICTableAttachmentViewController_customPasteboardDataForSelection__block_invoke;
  v17 = &unk_2781AC4C0;
  v18 = self;
  v9 = v8;
  v19 = v9;
  v21 = &v22;
  v10 = v6;
  v20 = v10;
  [v9 performBlockAndWait:&v14];
  if (v23[5])
  {
    v11 = objc_alloc(MEMORY[0x277D35F38]);
    v12 = [v11 initWithAttributedStringData:v23[5] dataPersister:{v10, v14, v15, v16, v17, v18, v19}];
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v22, 8);

  return v12;
}

void __67__ICTableAttachmentViewController_customPasteboardDataForSelection__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) attributedStringForTableSelectionInContext:*(a1 + 40)];
  v2 = [v5 ic_serializeWithFlags:1 dataPersister:*(a1 + 48) managedObjectContext:*(a1 + 40) error:0];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)pasteboardItemsForSelection
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(ICTableAttachmentViewController *)self webArchiveDataForSelection];
  if (v4)
  {
    v5 = [*MEMORY[0x277CE1ED8] identifier];
    [v3 setObject:v4 forKeyedSubscript:v5];
  }

  v6 = [(ICTableAttachmentViewController *)self htmlDataForSelection];

  if (v6)
  {
    v7 = [*MEMORY[0x277CE1DA0] identifier];
    [v3 setObject:v6 forKeyedSubscript:v7];
  }

  v8 = [(ICTableAttachmentViewController *)self RTFDataForSelection];

  if (v8)
  {
    v9 = [*MEMORY[0x277CE1D78] identifier];
    [v3 setObject:v8 forKeyedSubscript:v9];
  }

  v10 = [(ICTableAttachmentViewController *)self plainTextDataForSelection];

  if (v10)
  {
    v11 = [*MEMORY[0x277CE1EB0] identifier];
    [v3 setObject:v10 forKeyedSubscript:v11];
  }

  v12 = [(ICTableAttachmentViewController *)self icTableDataForSelection];
  [v3 setObject:v12 forKeyedSubscript:@"com.apple.notes.table"];

  v13 = [(ICTableAttachmentViewController *)self customPasteboardDataForSelection];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 persistenceData];
    [v3 setObject:v15 forKeyedSubscript:*MEMORY[0x277D35D08]];
  }

  v16 = [v3 copy];

  return v16;
}

- (void)tableDidPopulateCellAtColumnIndex:(unint64_t)a3 rowIndex:(unint64_t)a4
{
  v7 = [(ICTableAttachmentViewController *)self table];
  v8 = [v7 identifierForColumnAtIndex:a3];

  v9 = [(ICTableAttachmentViewController *)self table];
  v10 = [v9 identifierForRowAtIndex:a4];

  v11 = [(ICTableAttachmentViewController *)self table];
  v12 = [v11 textStorageForColumn:v8];
  v13 = [v12 isEditing];

  if (v13)
  {
    v14 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&dword_2151A1000, v14, OS_LOG_TYPE_INFO, "Not ensuring cell exists in column layout manager because its text storage is editing", v17, 2u);
    }
  }

  else
  {
    v15 = [(ICTableAttachmentViewController *)self tableLayoutManager];
    v16 = [v15 columnLayoutManagerForColumn:v8];

    [v16 ensureCellExistsAtRowID:v10];
  }
}

- (void)tableWillRemoveColumnID:(id)a3
{
  v4 = a3;
  v5 = [(ICTableAttachmentViewController *)self table];
  v9 = [v5 textStorageForColumn:v4];

  if (!v9)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((storage) != nil)" functionName:"-[ICTableAttachmentViewController tableWillRemoveColumnID:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "storage"}];
  }

  v6 = [(ICAttachmentViewController *)self attachment];
  v7 = [v6 note];
  v8 = [v9 attributedString];
  [v7 markBlockAndInlineAttachmentsForDeletion:1 inAttributedString:v8];
}

- (void)tableDidInsertColumnID:(id)a3
{
  v4 = a3;
  v5 = [(ICTableAttachmentViewController *)self table];
  v9 = [v5 textStorageForColumn:v4];

  if (!v9)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((storage) != nil)" functionName:"-[ICTableAttachmentViewController tableDidInsertColumnID:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "storage"}];
  }

  v6 = [(ICAttachmentViewController *)self attachment];
  v7 = [v6 note];
  v8 = [v9 attributedString];
  [v7 markBlockAndInlineAttachmentsForDeletion:0 inAttributedString:v8];
}

- (void)showColumnRowButtons
{
  v3 = [(ICAttachmentViewController *)self attachment];
  v4 = [v3 note];
  v5 = [v4 isEditable];

  v6 = [(ICTableAttachmentViewController *)self columnButton];
  [v6 setHidden:v5 ^ 1u];

  v7 = [(ICTableAttachmentViewController *)self rowButton];
  [v7 setHidden:v5 ^ 1u];
}

- (void)hideColumnRowButtons
{
  v3 = [(ICTableAttachmentViewController *)self tableSelection];
  [v3 unselect];

  v4 = [(ICTableAttachmentViewController *)self columnButton];
  [v4 setHidden:1];

  v5 = [(ICTableAttachmentViewController *)self rowButton];
  [v5 setHidden:1];

  [(ICTableAttachmentViewController *)self unselectColumnRow];
}

- (CGRect)selectionFrameFromContentFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(ICTableAttachmentViewController *)self selectionHighlightView];
  v9 = [v8 layer];
  [v9 borderWidth];
  v11 = v10 * -0.5;

  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v30 = CGRectInset(v29, v11, v11);
  v12 = v30.origin.x;
  v13 = v30.origin.y;
  v14 = v30.size.width;
  v15 = v30.size.height;
  v16 = [(ICTableAttachmentViewController *)self tableContentView];
  [v16 bounds];
  v34.origin.x = v17;
  v34.origin.y = v18;
  v34.size.width = v19;
  v34.size.height = v20;
  v31.origin.x = v12;
  v31.origin.y = v13;
  v31.size.width = v14;
  v31.size.height = v15;
  v32 = CGRectIntersection(v31, v34);
  v21 = v32.origin.x;
  v22 = v32.origin.y;
  v23 = v32.size.width;
  v24 = v32.size.height;

  v25 = v21;
  v26 = v22;
  v27 = v23;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (void)updateChrome
{
  v326[1] = *MEMORY[0x277D85DE8];
  v3 = [(ICTableAttachmentViewController *)self tableSelection];
  v4 = [v3 type];

  v5 = [(ICTableAttachmentViewController *)self tableSelection];
  v6 = [v5 type];

  if ((v6 - 2) >= 2)
  {
    if (v6 == 4)
    {
      v62 = [(ICTableAttachmentViewController *)self tableSelection];
      v63 = [v62 columns];
      if ([v63 count])
      {
        v64 = [(ICTableAttachmentViewController *)self tableSelection];
        v65 = [v64 rows];
        v66 = [v65 count];

        if (!v66)
        {
          goto LABEL_92;
        }

        v67 = [(ICTableAttachmentViewController *)self selectionHighlightView];
        v68 = [v67 superview];

        if (!v68)
        {
          v69 = [(ICTableAttachmentViewController *)self scrollView];
          v70 = [(ICTableAttachmentViewController *)self selectionHighlightView];
          [v69 addSubview:v70];
        }

        v71 = [(ICTableAttachmentViewController *)self tableSelection];
        v72 = [v71 columns];
        v62 = [v72 firstObject];

        v73 = [(ICTableAttachmentViewController *)self tableSelection];
        v74 = [v73 rows];
        v63 = [v74 firstObject];

        v75 = [(ICTableAttachmentViewController *)self tableSelection];
        v76 = [v75 columns];
        v77 = [v76 lastObject];

        v78 = [(ICTableAttachmentViewController *)self tableSelection];
        v79 = [v78 rows];
        v80 = [v79 lastObject];

        v81 = [(ICTableAttachmentViewController *)self textViewManager];
        [v81 frameOfCellAtColumn:v62 row:v63];
        v83 = v82;
        v85 = v84;
        v87 = v86;
        v89 = v88;

        v90 = [(ICTableAttachmentViewController *)self textViewManager];
        [v90 frameOfCellAtColumn:v77 row:v80];
        v92 = v91;
        v94 = v93;
        v96 = v95;
        v98 = v97;

        v329.origin.x = v83;
        v329.origin.y = v85;
        v329.size.width = v87;
        v329.size.height = v89;
        v358.origin.x = v92;
        v358.origin.y = v94;
        v358.size.width = v96;
        v358.size.height = v98;
        v330 = CGRectUnion(v329, v358);
        v331 = CGRectIntegral(v330);
        [(ICTableAttachmentViewController *)self selectionFrameFromContentFrame:v331.origin.x, v331.origin.y, v331.size.width, v331.size.height];
        v100 = v99;
        v102 = v101;
        v104 = v103;
        v106 = v105;
        v107 = [(ICTableAttachmentViewController *)self tableContentView];
        v108 = [(ICTableAttachmentViewController *)self scrollView];
        [v107 convertRect:v108 toView:{v100, v102, v104, v106}];
        v110 = v109;
        v112 = v111;
        v114 = v113;
        v116 = v115;
        v117 = [(ICTableAttachmentViewController *)self selectionHighlightView];
        [v117 setFrame:{v110, v112, v114, v116}];

        v118 = [(ICTableAttachmentViewController *)self selectionHighlightView];
        v119 = [v118 layer];
        [v119 setMaskedCorners:15];

        v120 = [(ICTableAttachmentViewController *)self startKnob];
        v121 = [v120 superview];

        if (!v121)
        {
          v122 = [(ICTableAttachmentViewController *)self view];
          v123 = [(ICTableAttachmentViewController *)self startKnob];
          [v122 addSubview:v123];
        }

        v124 = [(ICTableAttachmentViewController *)self endKnob];
        v125 = [v124 superview];

        if (!v125)
        {
          v126 = [(ICTableAttachmentViewController *)self view];
          v127 = [(ICTableAttachmentViewController *)self endKnob];
          [v126 addSubview:v127];
        }

        v128 = *MEMORY[0x277D36628];
        v129 = [(ICTableAttachmentViewController *)self selectionHighlightView];
        v130 = [v129 layer];
        [v130 borderWidth];
        v132 = v131;

        if (v132 >= v104)
        {
          v133 = v104;
        }

        else
        {
          v133 = v132;
        }

        v134 = v133 * 0.5;
        v135 = [(ICTableAttachmentViewController *)self selectionHighlightView];
        v136 = [v135 layer];
        [v136 borderWidth];
        v138 = v137;

        if (v138 >= v106)
        {
          v139 = v106;
        }

        else
        {
          v139 = v138;
        }

        v140 = v139 * 0.5;
        v332.origin.x = v100;
        v332.origin.y = v102;
        v332.size.width = v104;
        v332.size.height = v106;
        v333 = CGRectInset(v332, v134, v140);
        x = v333.origin.x;
        y = v333.origin.y;
        width = v333.size.width;
        height = v333.size.height;
        v145 = [(ICTableAttachmentViewController *)self table];
        v146 = [v145 isLeftToRight];

        v147 = x;
        v148 = y;
        v149 = width;
        v150 = height;
        if (v146)
        {
          MinX = CGRectGetMinX(*&v147);
          v334.origin.x = x;
          v334.origin.y = y;
          v334.size.width = width;
          v334.size.height = height;
          MinY = CGRectGetMinY(v334);
          v335.origin.x = x;
          v335.origin.y = y;
          v335.size.width = width;
          v335.size.height = height;
          MaxX = CGRectGetMaxX(v335);
        }

        else
        {
          MinX = CGRectGetMaxX(*&v147);
          v350.origin.x = x;
          v350.origin.y = y;
          v350.size.width = width;
          v350.size.height = height;
          MinY = CGRectGetMinY(v350);
          v351.origin.x = x;
          v351.origin.y = y;
          v351.size.width = width;
          v351.size.height = height;
          MaxX = CGRectGetMinX(v351);
        }

        v280 = MaxX;
        v352.origin.x = x;
        v352.origin.y = y;
        v352.size.width = width;
        v352.size.height = height;
        v281 = CGRectGetMaxY(v352) - v128;
        v282 = v280 - v128;
        v283 = [(ICTableAttachmentViewController *)self startKnob];
        v284 = [v283 superview];
        v285 = [(ICTableAttachmentViewController *)self tableContentView];
        [v284 convertRect:v285 fromView:{MinX - v128, MinY - v128, v128 + v128, v128 + v128}];
        v287 = v286;
        v289 = v288;
        v291 = v290;
        v293 = v292;
        v294 = [(ICTableAttachmentViewController *)self startKnob];
        [v294 setFrame:{v287, v289, v291, v293}];

        v295 = [(ICTableAttachmentViewController *)self endKnob];
        v296 = [v295 superview];
        v297 = [(ICTableAttachmentViewController *)self tableContentView];
        [v296 convertRect:v297 fromView:{v282, v281, v128 + v128, v128 + v128}];
        v299 = v298;
        v301 = v300;
        v303 = v302;
        v305 = v304;
        v306 = [(ICTableAttachmentViewController *)self endKnob];
        [v306 setFrame:{v299, v301, v303, v305}];

        v307 = [(ICTableAttachmentViewController *)self startKnob];
        [v307 frame];
        MidX = CGRectGetMidX(v353);
        if (MidX < 0.0)
        {
          v311 = 1;
        }

        else
        {
          v296 = [(ICTableAttachmentViewController *)self startKnob];
          [v296 frame];
          v309 = CGRectGetMidX(v354);
          v297 = [(ICTableAttachmentViewController *)self view];
          [v297 bounds];
          v311 = v309 > v310;
        }

        v312 = [(ICTableAttachmentViewController *)self startKnob];
        [v312 setHidden:v311];

        if (MidX >= 0.0)
        {
        }

        v313 = [(ICTableAttachmentViewController *)self endKnob];
        [v313 frame];
        v314 = CGRectGetMidX(v355);
        if (v314 < 0.0)
        {
          v317 = 1;
        }

        else
        {
          v296 = [(ICTableAttachmentViewController *)self endKnob];
          [v296 frame];
          v315 = CGRectGetMidX(v356);
          v297 = [(ICTableAttachmentViewController *)self view];
          [v297 bounds];
          v317 = v315 > v316;
        }

        v318 = [(ICTableAttachmentViewController *)self endKnob];
        [v318 setHidden:v317];

        if (v314 >= 0.0)
        {
        }

        v319 = [(ICTableAttachmentViewController *)self columnButton];
        [v319 setHidden:1];

        v320 = [(ICTableAttachmentViewController *)self rowButton];
        [v320 setHidden:1];
      }
    }

    else
    {
      v189 = [(ICTableAttachmentViewController *)self selectionHighlightView];
      [v189 removeFromSuperview];

      v190 = [(ICTableAttachmentViewController *)self startKnob];
      [v190 removeFromSuperview];

      v62 = [(ICTableAttachmentViewController *)self endKnob];
      [v62 removeFromSuperview];
    }

    goto LABEL_92;
  }

  v7 = [(ICTableAttachmentViewController *)self selectionHighlightView];
  v8 = [v7 superview];

  if (!v8)
  {
    v9 = [(ICTableAttachmentViewController *)self scrollView];
    v10 = [(ICTableAttachmentViewController *)self selectionHighlightView];
    [v9 addSubview:v10];
  }

  v11 = [(ICTableAttachmentViewController *)self tableSelection];
  v12 = [v11 columns];
  v13 = [v12 firstObject];

  v14 = [(ICTableAttachmentViewController *)self tableSelection];
  v15 = [v14 rows];
  v16 = [v15 firstObject];

  v17 = [(ICTableAttachmentViewController *)self tableSelection];
  v18 = [v17 columns];
  v19 = [v18 lastObject];

  v20 = [(ICTableAttachmentViewController *)self tableSelection];
  v21 = [v20 rows];
  v22 = [v21 lastObject];

  v323 = v22;
  v324 = v16;
  if (v4 == 2)
  {
    v23 = [(ICTableAttachmentViewController *)self textViewManager];
    [v23 frameOfColumn:v13];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v32 = [(ICTableAttachmentViewController *)self textViewManager];
    [v32 frameOfColumn:v19];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;

    v327.origin.x = v25;
    v327.origin.y = v27;
    v327.size.width = v29;
    v327.size.height = v31;
    v357.origin.x = v34;
    v357.origin.y = v36;
    v357.size.width = v38;
    v357.size.height = v40;
    v328 = CGRectUnion(v327, v357);
    [(ICTableAttachmentViewController *)self selectionFrameFromContentFrame:v328.origin.x, v328.origin.y, v328.size.width, v328.size.height];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = [(ICTableAttachmentViewController *)self tableContentView];
    v50 = [(ICTableAttachmentViewController *)self scrollView];
    [v49 convertRect:v50 toView:{v42, v44, v46, v48}];
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v59 = [(ICTableAttachmentViewController *)self selectionHighlightView];
    [v59 setFrame:{v52, v54, v56, v58}];

    v60 = [(ICTableAttachmentViewController *)self selectionHighlightView];
    v61 = [v60 layer];
    [v61 setMaskedCorners:12];
LABEL_28:

    goto LABEL_31;
  }

  if (v4 == 3)
  {
    v154 = [(ICTableAttachmentViewController *)self textViewManager];
    [v154 frameOfRow:v16];
    v156 = v155;
    v158 = v157;
    v160 = v159;
    v162 = v161;

    v163 = [(ICTableAttachmentViewController *)self textViewManager];
    [v163 frameOfRow:v22];
    v165 = v164;
    v167 = v166;
    v169 = v168;
    v171 = v170;

    v336.origin.x = v156;
    v336.origin.y = v158;
    v336.size.width = v160;
    v336.size.height = v162;
    v359.origin.x = v165;
    v359.origin.y = v167;
    v359.size.width = v169;
    v359.size.height = v171;
    v337 = CGRectUnion(v336, v359);
    [(ICTableAttachmentViewController *)self selectionFrameFromContentFrame:v337.origin.x, v337.origin.y, v337.size.width, v337.size.height];
    v42 = v172;
    v44 = v173;
    v46 = v174;
    v48 = v175;
    v176 = [(ICTableAttachmentViewController *)self tableContentView];
    v177 = [(ICTableAttachmentViewController *)self scrollView];
    [v176 convertRect:v177 toView:{v42, v44, v46, v48}];
    v179 = v178;
    v181 = v180;
    v183 = v182;
    v185 = v184;
    v186 = [(ICTableAttachmentViewController *)self selectionHighlightView];
    [v186 setFrame:{v179, v181, v183, v185}];

    v60 = [(ICTableAttachmentViewController *)self table];
    if ([v60 isLeftToRight])
    {
      v187 = 10;
    }

    else
    {
      v187 = 5;
    }

    v61 = [(ICTableAttachmentViewController *)self selectionHighlightView];
    v188 = [v61 layer];
    [v188 setMaskedCorners:v187];

    goto LABEL_28;
  }

  v46 = *(MEMORY[0x277CBF3A0] + 16);
  v48 = *(MEMORY[0x277CBF3A0] + 24);
  v42 = *MEMORY[0x277CBF3A0];
  v44 = *(MEMORY[0x277CBF3A0] + 8);
LABEL_31:
  v191 = [(ICTableAttachmentViewController *)self table];
  v192 = [(ICTableAttachmentViewController *)self tableSelection];
  v193 = [v192 columns];

  if ([v193 count])
  {
    goto LABEL_37;
  }

  v194 = [(ICTableAttachmentViewController *)self columnButton];
  v195 = [v194 columnOrRowIdentifiers];
  v196 = [v195 count];

  if (v196)
  {
    v197 = [(ICTableAttachmentViewController *)self columnButton];
    v198 = [v197 columnOrRowIdentifiers];
LABEL_36:
    v199 = v198;

    v193 = v199;
    goto LABEL_37;
  }

  if ([v191 columnCount])
  {
    v197 = [v191 identifierForColumnAtIndex:0];
    v326[0] = v197;
    v198 = [MEMORY[0x277CBEA60] arrayWithObjects:v326 count:1];
    goto LABEL_36;
  }

  v193 = 0;
LABEL_37:
  v200 = [(ICTableAttachmentViewController *)self tableSelection];
  v201 = [v200 rows];

  if ([v201 count])
  {
LABEL_43:
    if (v193 && v201)
    {
      [(ICTableAttachmentViewController *)self showButtonsAtColumns:v193 rows:v201];
    }

    goto LABEL_46;
  }

  v202 = [(ICTableAttachmentViewController *)self rowButton];
  v203 = [v202 columnOrRowIdentifiers];
  v204 = [v203 count];

  if (v204)
  {
    v205 = [(ICTableAttachmentViewController *)self rowButton];
    v206 = [v205 columnOrRowIdentifiers];
LABEL_42:
    v207 = v206;

    v201 = v207;
    goto LABEL_43;
  }

  if ([v191 rowCount])
  {
    v205 = [v191 identifierForRowAtIndex:0];
    v325 = v205;
    v206 = [MEMORY[0x277CBEA60] arrayWithObjects:&v325 count:1];
    goto LABEL_42;
  }

  v201 = 0;
LABEL_46:
  v208 = [(ICTableAttachmentViewController *)self startKnob];
  v209 = [v208 superview];

  if (!v209)
  {
    v210 = [(ICTableAttachmentViewController *)self view];
    v211 = [(ICTableAttachmentViewController *)self startKnob];
    [v210 addSubview:v211];
  }

  v212 = [(ICTableAttachmentViewController *)self endKnob];
  v213 = [v212 superview];

  if (!v213)
  {
    v214 = [(ICTableAttachmentViewController *)self view];
    v215 = [(ICTableAttachmentViewController *)self endKnob];
    [v214 addSubview:v215];
  }

  v216 = *MEMORY[0x277D36628];
  v217 = [(ICTableAttachmentViewController *)self selectionHighlightView];
  v218 = [v217 layer];
  [v218 borderWidth];
  v220 = v219;

  if (v220 >= v46)
  {
    v221 = v46;
  }

  else
  {
    v221 = v220;
  }

  v222 = v221 * 0.5;
  v223 = [(ICTableAttachmentViewController *)self selectionHighlightView];
  v224 = [v223 layer];
  [v224 borderWidth];
  v226 = v225;

  if (v226 >= v48)
  {
    v227 = v48;
  }

  else
  {
    v227 = v226;
  }

  v228 = v227 * 0.5;
  v338.origin.x = v42;
  v338.origin.y = v44;
  v338.size.width = v46;
  v338.size.height = v48;
  v339 = CGRectInset(v338, v222, v228);
  v229 = v339.origin.x;
  v230 = v339.origin.y;
  v231 = v339.size.width;
  v232 = v339.size.height;
  v321 = v191;
  if (v4 == 2)
  {
    v233 = CGRectGetMinX(v339) - v216;
    v340.origin.x = v229;
    v340.origin.y = v230;
    v340.size.width = v231;
    v340.size.height = v232;
    v234 = CGRectGetMidY(v340) - v216;
    v341.origin.x = v229;
    v341.origin.y = v230;
    v341.size.width = v231;
    v341.size.height = v232;
    v235 = CGRectGetMaxX(v341) - v216;
    v342.origin.x = v229;
    v342.origin.y = v230;
    v342.size.width = v231;
    v342.size.height = v232;
    v236 = CGRectGetMidY(v342) - v216;
    v237 = [(ICTableAttachmentViewController *)self table:v191];
    v238 = [v237 isLeftToRight];

    if (v238)
    {
      v239 = v236;
    }

    else
    {
      v239 = v234;
    }

    if (v238)
    {
      v240 = v235;
    }

    else
    {
      v240 = v233;
    }

    if (!v238)
    {
      v234 = v236;
      v233 = v235;
    }

    v241 = v240;
  }

  else
  {
    v233 = CGRectGetMidX(v339) - v216;
    v343.origin.x = v229;
    v343.origin.y = v230;
    v343.size.width = v231;
    v343.size.height = v232;
    v234 = CGRectGetMinY(v343) - v216;
    v344.origin.x = v229;
    v344.origin.y = v230;
    v344.size.width = v231;
    v344.size.height = v232;
    v241 = CGRectGetMidX(v344) - v216;
    v345.origin.x = v229;
    v345.origin.y = v230;
    v345.size.width = v231;
    v345.size.height = v232;
    v239 = CGRectGetMaxY(v345) - v216;
  }

  v242 = v19;
  v243 = [(ICTableAttachmentViewController *)self startKnob];
  v244 = [v243 superview];
  v245 = [(ICTableAttachmentViewController *)self tableContentView];
  [v244 convertRect:v245 fromView:{v233, v234, v216 + v216, v216 + v216}];
  v247 = v246;
  v249 = v248;
  v251 = v250;
  v253 = v252;
  v254 = [(ICTableAttachmentViewController *)self startKnob];
  [v254 setFrame:{v247, v249, v251, v253}];

  v255 = [(ICTableAttachmentViewController *)self endKnob];
  v256 = [v255 superview];
  v257 = [(ICTableAttachmentViewController *)self tableContentView];
  [v256 convertRect:v257 fromView:{v241, v239, v216 + v216, v216 + v216}];
  v259 = v258;
  v261 = v260;
  v263 = v262;
  v265 = v264;
  v266 = [(ICTableAttachmentViewController *)self endKnob];
  [v266 setFrame:{v259, v261, v263, v265}];

  v267 = [(ICTableAttachmentViewController *)self startKnob];
  [v267 frame];
  v268 = CGRectGetMidX(v346);
  v269 = v13;
  if (v268 < 0.0)
  {
    v272 = 1;
  }

  else
  {
    v266 = [(ICTableAttachmentViewController *)self startKnob];
    [v266 frame];
    v270 = CGRectGetMidX(v347);
    v255 = [(ICTableAttachmentViewController *)self view];
    [v255 bounds];
    v272 = v270 > v271;
  }

  v273 = [(ICTableAttachmentViewController *)self startKnob];
  [v273 setHidden:v272];

  if (v268 >= 0.0)
  {
  }

  v274 = [(ICTableAttachmentViewController *)self endKnob];
  [v274 frame];
  v275 = CGRectGetMidX(v348);
  if (v275 < 0.0)
  {
    v278 = 1;
  }

  else
  {
    v266 = [(ICTableAttachmentViewController *)self endKnob];
    [v266 frame];
    v276 = CGRectGetMidX(v349);
    v255 = [(ICTableAttachmentViewController *)self view];
    [v255 bounds];
    v278 = v276 > v277;
  }

  v279 = [(ICTableAttachmentViewController *)self endKnob];
  [v279 setHidden:v278];

  if (v275 >= 0.0)
  {
  }

LABEL_92:
  [(ICTableAttachmentViewController *)self updateButtonFrames];
}

- (void)updateButtonFrames
{
  v3 = [(ICTableAttachmentViewController *)self tableSelection];
  v4 = [v3 columns];
  v5 = [v4 firstObject];
  v6 = v5;
  if (v5)
  {
    v139 = v5;
  }

  else
  {
    v7 = [(ICTableAttachmentViewController *)self columnButton];
    v8 = [v7 columnOrRowIdentifiers];
    v139 = [v8 firstObject];
  }

  v9 = [(ICTableAttachmentViewController *)self tableSelection];
  v10 = [v9 columns];
  v11 = [v10 lastObject];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = [(ICTableAttachmentViewController *)self columnButton];
    v15 = [v14 columnOrRowIdentifiers];
    v13 = [v15 lastObject];
  }

  if (v139)
  {
    v16 = [(ICTableAttachmentViewController *)self columnButton];
    if ([v16 isHidden])
    {
    }

    else
    {
      v17 = [(ICTableAttachmentViewController *)self textViewManager];
      v18 = [v17 columnIDs];
      v19 = [v18 containsObject:v139];

      if (v19)
      {
        v20 = [(ICTableAttachmentViewController *)self textViewManager];
        [v20 frameOfColumn:v139];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;

        v29 = [(ICTableAttachmentViewController *)self textViewManager];
        [v29 frameOfColumn:v13];
        v31 = v30;
        v33 = v32;
        v35 = v34;
        v37 = v36;

        v141.origin.x = v22;
        v141.origin.y = v24;
        v141.size.width = v26;
        v141.size.height = v28;
        v153.origin.x = v31;
        v153.origin.y = v33;
        v153.size.width = v35;
        v153.size.height = v37;
        v142 = CGRectUnion(v141, v153);
        [(ICTableAttachmentViewController *)self selectionFrameFromContentFrame:v142.origin.x, v142.origin.y, v142.size.width, v142.size.height];
        width = v143.size.width;
        MinX = CGRectGetMinX(v143);
        v40 = *MEMORY[0x277D365D8];
        v41 = -*MEMORY[0x277D365D8];
        v42 = [(ICTableAttachmentViewController *)self tableContentView];
        v43 = [(ICTableAttachmentViewController *)self headerClipView];
        [v42 convertRect:v43 toView:{MinX, v41, width, v40}];
        v45 = v44;
        v47 = v46;
        v49 = v48;
        v51 = v50;
        v52 = [(ICTableAttachmentViewController *)self columnButton];
        [v52 setFrame:{v45, v47, v49, v51}];

        goto LABEL_13;
      }
    }
  }

  v42 = [(ICTableAttachmentViewController *)self headerClipView];
  [v42 bounds];
  v54 = v53;
  v43 = [(ICTableAttachmentViewController *)self columnButton];
  [v43 setFrame:{v54, 0.0, 0.0, 0.0}];
LABEL_13:

  v55 = [(ICTableAttachmentViewController *)self tableSelection];
  v56 = [v55 rows];
  v57 = [v56 firstObject];
  v58 = v57;
  if (v57)
  {
    v59 = v57;
  }

  else
  {
    v60 = [(ICTableAttachmentViewController *)self rowButton];
    v61 = [v60 columnOrRowIdentifiers];
    v59 = [v61 firstObject];
  }

  v62 = [(ICTableAttachmentViewController *)self tableSelection];
  v63 = [v62 rows];
  v64 = [v63 lastObject];
  v65 = v64;
  if (v64)
  {
    v66 = v64;
  }

  else
  {
    v67 = [(ICTableAttachmentViewController *)self rowButton];
    v68 = [v67 columnOrRowIdentifiers];
    v66 = [v68 lastObject];
  }

  if (!v59)
  {
    goto LABEL_33;
  }

  v69 = [(ICTableAttachmentViewController *)self rowButton];
  if ([v69 isHidden])
  {
    goto LABEL_32;
  }

  v70 = [(ICTableAttachmentViewController *)self textViewManager];
  v71 = [v70 rowIDs];
  v72 = [v71 containsObject:v59];

  if (!v72)
  {
    goto LABEL_33;
  }

  v73 = [(ICTableAttachmentViewController *)self textViewManager];
  [v73 frameOfRow:v59];
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v81 = v80;

  v82 = [(ICTableAttachmentViewController *)self textViewManager];
  [v82 frameOfRow:v66];
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v90 = v89;

  v144.origin.x = v75;
  v144.origin.y = v77;
  v144.size.width = v79;
  v144.size.height = v81;
  v154.origin.x = v84;
  v154.origin.y = v86;
  v154.size.width = v88;
  v154.size.height = v90;
  v145 = CGRectUnion(v144, v154);
  [(ICTableAttachmentViewController *)self selectionFrameFromContentFrame:v145.origin.x, v145.origin.y, v145.size.width, v145.size.height];
  v92 = v91;
  v94 = v93;
  v96 = v95;
  v98 = v97;
  v99 = [(ICTableAttachmentViewController *)self table];
  v100 = [v99 isLeftToRight];

  if (!v100)
  {
    v149.origin.x = v92;
    v149.origin.y = v94;
    v149.size.width = v96;
    v149.size.height = v98;
    MaxX = CGRectGetMaxX(v149);
    v150.origin.x = v92;
    v150.origin.y = v94;
    v150.size.width = v96;
    v150.size.height = v98;
    MinY = CGRectGetMinY(v150);
    v122 = *MEMORY[0x277D365D8];
    v123 = [(ICTableAttachmentViewController *)self tableContentView];
    v124 = [(ICTableAttachmentViewController *)self view];
    [v123 convertRect:v124 toView:{MaxX, MinY, v122, v98}];
    v126 = v125;
    v128 = v127;
    v130 = v129;
    v113 = v131;

    v135 = v130;
    v137 = v126;
    v151.origin.x = v126;
    v151.origin.y = v128;
    v151.size.width = v130;
    v151.size.height = v113;
    v132 = CGRectGetMaxX(v151);
    v152.origin.x = MaxX;
    v152.origin.y = MinY;
    v152.size.width = v122;
    v152.size.height = v98;
    v133 = CGRectGetMaxX(v152);
    v116 = [(ICTableAttachmentViewController *)self rowButton];
    v69 = v116;
    if (v132 < v133)
    {
      v119 = v135;
      v117 = v137;
      v118 = v128;
      goto LABEL_27;
    }

    v117 = MaxX;
    v118 = MinY;
    v119 = v122;
LABEL_30:
    v134 = v98;
    goto LABEL_31;
  }

  v101 = *MEMORY[0x277D365D8];
  v102 = -*MEMORY[0x277D365D8];
  v146.origin.x = v92;
  v146.origin.y = v94;
  v146.size.width = v96;
  v146.size.height = v98;
  v103 = CGRectGetMinY(v146);
  v104 = [(ICTableAttachmentViewController *)self tableContentView];
  v105 = [(ICTableAttachmentViewController *)self view];
  [v104 convertRect:v105 toView:{v102, v103, v101, v98}];
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v113 = v112;

  v136 = v109;
  v138 = v107;
  v147.origin.x = v107;
  v147.origin.y = v109;
  v147.size.width = v111;
  v147.size.height = v113;
  v114 = CGRectGetMinX(v147);
  v148.origin.x = v102;
  v148.origin.y = v103;
  v148.size.width = v101;
  v148.size.height = v98;
  v115 = CGRectGetMinX(v148);
  v116 = [(ICTableAttachmentViewController *)self rowButton];
  v69 = v116;
  if (v114 <= v115)
  {
    v117 = v102;
    v118 = v103;
    v119 = v101;
    goto LABEL_30;
  }

  v118 = v136;
  v117 = v138;
  v119 = v111;
LABEL_27:
  v134 = v113;
LABEL_31:
  [v116 setFrame:{v117, v118, v119, v134, *&v135}];
LABEL_32:

LABEL_33:
}

- (void)addColumnLeftOfSelection:(id)a3
{
  v4 = [(ICTableAttachmentViewController *)self tableSelection];
  v5 = [v4 columns];
  v8 = [v5 firstObject];

  v6 = [(ICTableAttachmentViewController *)self table];
  v7 = [v6 columnIndexForIdentifier:v8];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(ICTableAttachmentViewController *)self addColumnAtIndex:v7];
  }
}

- (void)addColumnRightOfSelection:(id)a3
{
  v4 = [(ICTableAttachmentViewController *)self tableSelection];
  v5 = [v4 columns];
  v8 = [v5 lastObject];

  v6 = [(ICTableAttachmentViewController *)self table];
  v7 = [v6 columnIndexForIdentifier:v8];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(ICTableAttachmentViewController *)self addColumnAtIndex:v7 + 1];
  }
}

- (void)addColumnBeforeSelection:(id)a3
{
  v6 = a3;
  v4 = [(ICTableAttachmentViewController *)self table];
  v5 = [v4 isLeftToRight];

  if (v5)
  {
    [(ICTableAttachmentViewController *)self addColumnLeftOfSelection:v6];
  }

  else
  {
    [(ICTableAttachmentViewController *)self addColumnRightOfSelection:v6];
  }
}

- (void)addColumnAfterSelection:(id)a3
{
  v6 = a3;
  v4 = [(ICTableAttachmentViewController *)self table];
  v5 = [v4 isLeftToRight];

  if (v5)
  {
    [(ICTableAttachmentViewController *)self addColumnRightOfSelection:v6];
  }

  else
  {
    [(ICTableAttachmentViewController *)self addColumnLeftOfSelection:v6];
  }
}

- (id)insertColumns:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = [(ICTableAttachmentViewController *)self table];
  v8 = [v7 insertColumns:a3 atIndex:a4];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = [(ICTableAttachmentViewController *)self tableLayoutManager];
        v16 = [v15 columnWidthManager];
        v31 = v14;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
        v18 = [v16 invalidateWidthForColumns:v17];

        v19 = [(ICTableAttachmentViewController *)self tableLayoutManager];
        v20 = [v19 columnWidthManager];
        [v20 widthOfColumn:v14];
        v22 = v21;

        v23 = [(ICTableAttachmentViewController *)self columnWidthCache];
        [v23 setDimension:v14 forKey:v22];

        v30 = v14;
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
        [(ICTableAttachmentViewController *)self postChangeNotification:0 columnOrRowUUIDs:v24];
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v11);
  }

  return v9;
}

- (void)addColumnAtIndex:(unint64_t)a3
{
  [(ICTableAttachmentViewController *)self beginEditing];
  v11 = [(ICTableAttachmentViewController *)self insertColumns:1 atIndex:a3];
  v5 = [v11 firstObject];
  [(ICTableAttachmentViewController *)self redrawAndSave];
  v6 = [(ICTableAttachmentViewController *)self table];
  v7 = [v6 identifierForRowAtIndex:0];

  [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:v5 andRowID:v7 location:0];
  [(ICTableAttachmentViewController *)self endEditing];
  v8 = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = [v8 localizedStringForKey:@"ADD_COLUMN_UNDO_STRING" value:@"Add Column" table:@"Localizable"];

  v10 = [(ICTableAttachmentViewController *)self undoManager];
  [v10 setActionName:v9];
}

- (void)addRowAboveSelection:(id)a3
{
  v4 = [(ICTableAttachmentViewController *)self tableSelection];
  v5 = [v4 rows];
  v8 = [v5 firstObject];

  v6 = [(ICTableAttachmentViewController *)self table];
  v7 = [v6 rowIndexForIdentifier:v8];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(ICTableAttachmentViewController *)self addRowAtIndex:v7];
  }
}

- (void)addRowBelowSelection:(id)a3
{
  v4 = [(ICTableAttachmentViewController *)self tableSelection];
  v5 = [v4 rows];
  v8 = [v5 lastObject];

  v6 = [(ICTableAttachmentViewController *)self table];
  v7 = [v6 rowIndexForIdentifier:v8];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(ICTableAttachmentViewController *)self addRowAtIndex:v7 + 1];
  }
}

- (void)addRowAtIndex:(unint64_t)a3
{
  [(ICTableAttachmentViewController *)self willAddRow];
  [(ICTableAttachmentViewController *)self beginEditing];
  v5 = [(ICTableAttachmentViewController *)self table];
  v11 = [v5 insertRowAtIndex:a3];

  [(ICTableAttachmentViewController *)self redrawAndSave];
  [(ICTableAttachmentViewController *)self postChangeNotification:1 columnOrRowUUIDs:0];
  v6 = [(ICTableAttachmentViewController *)self table];
  v7 = [v6 identifierForColumnAtIndex:0];

  [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:v7 andRowID:v11 location:0];
  [(ICTableAttachmentViewController *)self endEditing];
  v8 = [(ICTableAttachmentViewController *)self undoManager];
  v9 = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = [v9 localizedStringForKey:@"Add Row" value:&stru_282757698 table:0];
  [v8 setActionName:v10];
}

- (void)deleteTable:(id)a3
{
  v4 = [(ICTableAttachmentViewController *)self tableSelection];
  [v4 unselect];

  v5 = [(ICAttachmentViewController *)self attachment];
  v6 = [v5 note];
  v7 = [(ICAttachmentViewController *)self attachment];
  v8 = [v6 rangeForAttachment:v7];
  v10 = v9;

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [(ICTableAttachmentViewController *)self noteTextView];
    [v11 setSelectedRange:{v8, 0}];

    LOBYTE(v11) = ICInternalSettingsIsTextKit2Enabled();
    objc_opt_class();
    if (v11)
    {
      objc_opt_class();
      v12 = [(ICTableAttachmentViewController *)self noteTextView];
      v13 = [v12 textLayoutManager];
      v14 = ICDynamicCast();
      v15 = [v14 textContentStorage];
      v16 = [v15 textStorage];
      v20 = ICDynamicCast();
    }

    else
    {
      v12 = [(ICTableAttachmentViewController *)self noteTextView];
      v13 = [v12 layoutManager];
      v14 = [v13 textStorage];
      v20 = ICDynamicCast();
    }

    [v20 beginEditing];
    [v20 replaceCharactersInRange:v8 withString:{v10, &stru_282757698}];
    [v20 endEditing];
    v17 = [(ICTableAttachmentViewController *)self noteTextView];
    v18 = [v17 delegate];
    v19 = [(ICTableAttachmentViewController *)self noteTextView];
    [v18 textViewDidChange:v19];
  }
}

- (void)deleteColumns:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICTableAttachmentViewController *)self table];
  v6 = [v5 columnsIntersectingWithColumns:v4];

  v7 = [v6 count];
  v8 = [v5 columnCount];
  if (v7 && v7 < v8)
  {
    [(ICTableAttachmentViewController *)self beginEditing];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = v6;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v34;
      v13 = -1;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v33 + 1) + 8 * i);
          v16 = [v5 columnIndexForIdentifier:v15];
          [v5 removeColumnAtIndex:v16];
          [(ICTableAttachmentViewController *)self cleanDeletedColumn:v15];
          if (v13 >= v16)
          {
            v13 = v16;
          }

          v17 = [(ICTableAttachmentViewController *)self tableAXController];
          [v17 invalidateAXElementsForColumnID:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v11);
    }

    else
    {
      v13 = -1;
    }

    [(ICTableAttachmentViewController *)self postChangeNotification:3 columnOrRowUUIDs:v9];
    v18 = [(ICTableAttachmentViewController *)self tableLayoutManager];
    v19 = [v18 columnWidthManager];
    v20 = [v19 invalidateWidthForColumns:v9];

    [(ICTableAttachmentViewController *)self hideColumnRowButtons];
    [(ICTableAttachmentViewController *)self redrawAndSave];
    if ([v5 columnCount] && objc_msgSend(v5, "rowCount"))
    {
      v21 = [v5 columnCount];
      if (v13 >= v21 - 1)
      {
        v22 = v21 - 1;
      }

      else
      {
        v22 = v13;
      }

      v23 = [v5 identifierForColumnAtIndex:v22];
      v24 = [(ICTableAttachmentViewController *)self rowButton];
      v25 = [v24 columnOrRowIdentifiers];
      v26 = [v25 firstObject];

      [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:v23 andRowID:v26 location:2];
    }

    [(ICTableAttachmentViewController *)self endEditing];
    v27 = [(ICTableAttachmentViewController *)self undoManager];
    v28 = MEMORY[0x277CCACA8];
    v29 = [MEMORY[0x277CCA8D8] mainBundle];
    v30 = [v29 localizedStringForKey:@"Delete %lu Column" value:&stru_282757698 table:0];
    v31 = [v28 localizedStringWithFormat:v30, v7];
    [v27 setActionName:v31];

    v6 = v32;
  }

  else if (v7 == [v5 columnCount])
  {
    [(ICTableAttachmentViewController *)self deleteTable:self];
  }
}

- (void)deleteSelectedColumns:(id)a3
{
  v4 = [(ICTableAttachmentViewController *)self tableSelection];
  v5 = [v4 columns];

  [(ICTableAttachmentViewController *)self deleteColumns:v5];
}

- (void)deleteRows:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICTableAttachmentViewController *)self table];
  v6 = [v5 rowsIntersectingWithRows:v4];

  v7 = [v6 count];
  v8 = [v5 rowCount];
  if (v7 && v7 < v8)
  {
    [(ICTableAttachmentViewController *)self beginEditing];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = v6;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v31;
      v13 = -1;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v30 + 1) + 8 * i);
          v16 = [v5 rowIndexForIdentifier:v15];
          [v5 removeRowAtIndex:v16];
          [(ICTableAttachmentViewController *)self cleanDeletedRow:v15];
          if (v13 >= v16)
          {
            v13 = v16;
          }

          v17 = [(ICTableAttachmentViewController *)self tableAXController];
          [v17 invalidateAXElementsForRowID:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v11);
    }

    else
    {
      v13 = -1;
    }

    [(ICTableAttachmentViewController *)self postChangeNotification:4 columnOrRowUUIDs:v9];
    [(ICTableAttachmentViewController *)self hideColumnRowButtons];
    [(ICTableAttachmentViewController *)self redrawAndSave];
    v18 = [v5 rowCount];
    if (v13 >= v18 - 1)
    {
      v19 = v18 - 1;
    }

    else
    {
      v19 = v13;
    }

    v20 = [v5 identifierForRowAtIndex:v19];
    if ([v5 columnCount] && objc_msgSend(v5, "rowCount"))
    {
      v21 = [(ICTableAttachmentViewController *)self columnButton];
      v22 = [v21 columnOrRowIdentifiers];
      v23 = [v22 firstObject];

      [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:v23 andRowID:v20 location:2];
    }

    [(ICTableAttachmentViewController *)self endEditing];
    v24 = [(ICTableAttachmentViewController *)self undoManager];
    v25 = MEMORY[0x277CCACA8];
    v26 = [MEMORY[0x277CCA8D8] mainBundle];
    v27 = [v26 localizedStringForKey:@"Delete %lu Row" value:&stru_282757698 table:0];
    v28 = [v25 localizedStringWithFormat:v27, v7];
    [v24 setActionName:v28];

    v6 = v29;
  }

  else if (v7 == [v5 rowCount])
  {
    [(ICTableAttachmentViewController *)self deleteTable:self];
  }
}

- (void)deleteSelectedRows:(id)a3
{
  v4 = [(ICTableAttachmentViewController *)self tableSelection];
  v5 = [v4 rows];

  [(ICTableAttachmentViewController *)self deleteRows:v5];
}

- (void)cleanDeletedColumn:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICTableAttachmentViewController *)self columnWidthCache];
  [v5 removeDimensionForKey:v4];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(ICTableAttachmentViewController *)self cellHeightCache];
  v7 = [v6 allValues];

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v15 + 1) + 8 * v11++) removeDimensionForKey:v4];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v12 = [(ICTableAttachmentViewController *)self tableLayoutManager];
  [v12 removeColumnLayoutManagerForColumn:v4];

  v13 = [(ICTableAttachmentViewController *)self tableContentView];
  [v13 setVerticalLinePosition:0 forKey:v4];

  v14 = [(ICTableAttachmentViewController *)self textViewManager];
  [v14 removeColumn:v4];
}

- (void)cleanDeletedRow:(id)a3
{
  v18 = a3;
  v4 = [(ICTableAttachmentViewController *)self rowHeightCache];
  [v4 removeDimensionForKey:v18];

  v5 = [(ICTableAttachmentViewController *)self cellHeightCache];
  [v5 removeObjectForKey:v18];

  v6 = [(ICTableAttachmentViewController *)self tableLayoutManager];
  v7 = [v6 rowPositions];
  [v7 removeObjectForKey:v18];

  v8 = [(ICTableAttachmentViewController *)self table];
  v9 = [v8 columnCount];

  if (v9)
  {
    v10 = 0;
    do
    {
      v11 = [(ICTableAttachmentViewController *)self table];
      v12 = [v11 identifierForColumnAtIndex:v10];

      v13 = [(ICTableAttachmentViewController *)self tableLayoutManager];
      v14 = [v13 columnLayoutManagerForColumn:v12];

      [v14 removeRow:v18];
      ++v10;
      v15 = [(ICTableAttachmentViewController *)self table];
      v16 = [v15 columnCount];
    }

    while (v10 < v16);
  }

  v17 = [(ICTableAttachmentViewController *)self tableContentView];
  [v17 setHorizontalLinePosition:0 forKey:v18];
}

- (void)dragBeganOnColumnOrRow:(BOOL)a3 atLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8 = [MEMORY[0x277D35DF8] currentInfo];
  [(ICTableAttachmentViewController *)self setDraggingAppearance:v8];

  v9 = [(ICTableAttachmentViewController *)self draggingAppearance];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__ICTableAttachmentViewController_dragBeganOnColumnOrRow_atLocation___block_invoke;
  v10[3] = &unk_2781AE078;
  v10[4] = self;
  v11 = a3;
  *&v10[5] = x;
  *&v10[6] = y;
  [v9 performAsDefaultAppearance:v10];
}

void __69__ICTableAttachmentViewController_dragBeganOnColumnOrRow_atLocation___block_invoke(uint64_t a1)
{
  v164 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) tableSelection];
  [v2 setMoving:1];

  v3 = [*(a1 + 32) currentlyEditingTextView];
  [v3 setTextSelectionHidden:1];

  LODWORD(v3) = *(a1 + 56);
  v4 = [*(a1 + 32) tableSelection];
  v5 = v4;
  if (v3 == 1)
  {
    v6 = [v4 columns];

    v7 = [*(a1 + 32) textViewManager];
    v8 = [v6 firstObject];
    [v7 frameOfColumn:v8];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = [*(a1 + 32) textViewManager];
    v18 = [v6 lastObject];
    [v17 frameOfColumn:v18];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v165.origin.x = v10;
    v165.origin.y = v12;
    v165.size.width = v14;
    v165.size.height = v16;
    v175.origin.x = v20;
    v175.origin.y = v22;
    v175.size.width = v24;
    v175.size.height = v26;
    v166 = CGRectUnion(v165, v175);
    x = v166.origin.x;
    y = v166.origin.y;
    width = v166.size.width;
    height = v166.size.height;
    v31 = [*(a1 + 32) rowButton];
    [v31 setHidden:1];

    v32 = [*(a1 + 32) table];
    v33 = [v6 firstObject];
    [*(a1 + 32) setCurrentDragIndex:{objc_msgSend(v32, "columnIndexForIdentifier:", v33)}];

    v34 = [MEMORY[0x277CBEB98] setWithArray:v6];
    v35 = [*(a1 + 32) textViewManager];
    [v35 setDraggedColumns:v34];
  }

  else
  {
    v6 = [v4 rows];

    v36 = [*(a1 + 32) textViewManager];
    v37 = [v6 firstObject];
    [v36 frameOfRow:v37];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    v46 = [*(a1 + 32) textViewManager];
    v47 = [v6 lastObject];
    [v46 frameOfRow:v47];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;

    v167.origin.x = v39;
    v167.origin.y = v41;
    v167.size.width = v43;
    v167.size.height = v45;
    v176.origin.x = v49;
    v176.origin.y = v51;
    v176.size.width = v53;
    v176.size.height = v55;
    v168 = CGRectUnion(v167, v176);
    x = v168.origin.x;
    y = v168.origin.y;
    width = v168.size.width;
    height = v168.size.height;
    v56 = [*(a1 + 32) columnButton];
    [v56 setHidden:1];

    v57 = [*(a1 + 32) table];
    v58 = [v6 firstObject];
    [*(a1 + 32) setCurrentDragIndex:{objc_msgSend(v57, "rowIndexForIdentifier:", v58)}];

    v34 = [MEMORY[0x277CBEB98] setWithArray:v6];
    v35 = [*(a1 + 32) textViewManager];
    [v35 setDraggedRows:v34];
  }

  v59 = [*(a1 + 32) tableSelection];
  if ([v59 type] == 2)
  {
  }

  else
  {
    v60 = [*(a1 + 32) tableSelection];
    v61 = [v60 type];

    if (v61 != 3)
    {
      goto LABEL_8;
    }
  }

  [*(a1 + 32) selectionFrameFromContentFrame:{x, y, width, height}];
  x = v62;
  y = v63;
  width = v64;
  height = v65;
LABEL_8:
  v66 = [*(a1 + 32) dragSnapshotFromRect:1 afterScreenUpdates:{x, y, width, height}];
  [*(a1 + 32) setDragView:v66];

  v67 = [*(a1 + 32) view];
  v68 = [*(a1 + 32) tableContentView];
  [v67 convertRect:v68 fromView:{x, y, width, height}];
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v77 = [*(a1 + 32) dragView];
  [v77 setFrame:{v70, v72, v74, v76}];

  v78 = [*(a1 + 32) dragView];
  v79 = [v78 layer];
  [v79 setMasksToBounds:1];

  v80 = [*(a1 + 32) tableContentView];
  [v80 innerBorderWidth];
  v82 = v81;
  v83 = [*(a1 + 32) dragView];
  v84 = [v83 layer];
  [v84 setBorderWidth:v82];

  v85 = [*(a1 + 32) tableContentView];
  v86 = [v85 innerBorderColor];
  v87 = [v86 CGColor];
  v88 = [*(a1 + 32) dragView];
  v89 = [v88 layer];
  [v89 setBorderColor:v87];

  v90 = [*(a1 + 32) tableSelection];
  if ([v90 type] == 2)
  {
  }

  else
  {
    v91 = [*(a1 + 32) tableSelection];
    v92 = [v91 type];

    if (v92 != 3)
    {
      goto LABEL_12;
    }
  }

  v93 = [*(a1 + 32) dragView];
  v94 = [v93 layer];
  [v94 setBorderWidth:0.0];

  v95 = [*(a1 + 32) selectionHighlightView];
  v96 = [v95 layer];
  [v96 cornerRadius];
  v98 = v97;
  v99 = [*(a1 + 32) dragView];
  v100 = [v99 layer];
  [v100 setCornerRadius:v98];

  v101 = [*(a1 + 32) selectionHighlightView];
  v102 = [v101 layer];
  v103 = [v102 maskedCorners];
  v104 = [*(a1 + 32) dragView];
  v105 = [v104 layer];
  [v105 setMaskedCorners:v103];

LABEL_12:
  v106 = [*(a1 + 32) view];
  v107 = [*(a1 + 32) dragView];
  [v106 addSubview:v107];

  Mutable = CGPathCreateMutable();
  v109 = [*(a1 + 32) dragView];
  [v109 bounds];
  v170 = CGRectInset(v169, -20.0, -20.0);
  CGPathAddRect(Mutable, 0, v170);

  v110 = [*(a1 + 32) dragView];
  [v110 bounds];
  CGPathAddRect(Mutable, 0, v171);

  v111 = [MEMORY[0x277CD9F90] layer];
  [v111 setPath:Mutable];
  [v111 setFillRule:*MEMORY[0x277CDA248]];
  CGPathRelease(Mutable);
  v112 = [MEMORY[0x277CD9ED0] layer];
  [v112 setMask:v111];
  [v112 setShadowRadius:*MEMORY[0x277D36618]];
  [v112 setShadowOffset:{*MEMORY[0x277D36608], *(MEMORY[0x277D36608] + 8)}];
  v113 = *MEMORY[0x277D36610];
  *&v113 = *MEMORY[0x277D36610];
  [v112 setShadowOpacity:v113];
  v114 = [MEMORY[0x277D75348] blackColor];
  [v112 setShadowColor:{objc_msgSend(v114, "CGColor")}];

  v115 = [*(a1 + 32) dragView];
  [v115 bounds];
  v116 = CGPathCreateWithRect(v172, 0);

  [v112 setShadowPath:v116];
  CGPathRelease(v116);
  v117 = [*(a1 + 32) dragView];
  v118 = [v117 layer];
  [v118 addSublayer:v112];

  v119 = [[ICTableAutoScroller alloc] initWithTableAttachmentViewController:*(a1 + 32) scrollDirectionMode:*(a1 + 56)];
  [*(a1 + 32) setTableAutoScroller:v119];

  v120 = *(a1 + 32);
  v121 = [v120 tableAutoScroller];
  [v121 setDelegate:v120];

  v122 = *(a1 + 56);
  if (v122 == 1)
  {
    v160 = 0uLL;
    v161 = 0uLL;
    v158 = 0uLL;
    v159 = 0uLL;
    v123 = v6;
    v124 = [v123 countByEnumeratingWithState:&v158 objects:v163 count:16];
    if (v124)
    {
      v125 = v124;
      v126 = *v159;
      do
      {
        for (i = 0; i != v125; ++i)
        {
          if (*v159 != v126)
          {
            objc_enumerationMutation(v123);
          }

          [*(a1 + 32) setHidden:1 forColumn:*(*(&v158 + 1) + 8 * i)];
        }

        v125 = [v123 countByEnumeratingWithState:&v158 objects:v163 count:16];
      }

      while (v125);
    }
  }

  else
  {
    v156 = 0uLL;
    v157 = 0uLL;
    v154 = 0uLL;
    v155 = 0uLL;
    v128 = v6;
    v129 = [v128 countByEnumeratingWithState:&v154 objects:v162 count:16];
    if (v129)
    {
      v130 = v129;
      v131 = *v155;
      do
      {
        for (j = 0; j != v130; ++j)
        {
          if (*v155 != v131)
          {
            objc_enumerationMutation(v128);
          }

          [*(a1 + 32) setHidden:1 forRow:*(*(&v154 + 1) + 8 * j)];
        }

        v130 = [v128 countByEnumeratingWithState:&v154 objects:v162 count:16];
      }

      while (v130);
    }
  }

  v133 = [*(a1 + 32) headerClipView];
  v134 = [v133 layer];
  [v134 setMasksToBounds:v122 ^ 1u];

  v135 = [*(a1 + 32) dragView];
  [v135 frame];
  v136 = CGRectGetMidX(v173) - *(a1 + 40);
  v137 = [*(a1 + 32) dragView];
  [v137 frame];
  [*(a1 + 32) setInitialDragOffset:{v136, CGRectGetMidY(v174) - *(a1 + 48)}];

  v152[0] = MEMORY[0x277D85DD0];
  v152[1] = 3221225472;
  v152[2] = __69__ICTableAttachmentViewController_dragBeganOnColumnOrRow_atLocation___block_invoke_2;
  v152[3] = &unk_2781ACFF8;
  v153 = *(a1 + 56);
  v152[4] = *(a1 + 32);
  [MEMORY[0x277D75D18] ic_animateWithDuration:v152 animations:0 completion:0.1];
  v138 = [*(a1 + 32) selectionHighlightView];
  [v138 ic_setAlpha:0.0];

  v139 = [*(a1 + 32) startKnob];
  [v139 removeFromSuperview];

  v140 = [*(a1 + 32) endKnob];
  [v140 removeFromSuperview];

  v141 = [*(a1 + 32) currentlyEditingTextStorage];
  v142 = [v141 savedSelectionWithSelectionAffinity:0];
  [*(a1 + 32) setStringSelectionBeforeDrag:v142];

  v143 = objc_alloc(MEMORY[0x277D75F10]);
  v144 = [*(a1 + 32) view];
  v145 = [v143 initWithCoordinateSpace:v144];
  [*(a1 + 32) setFeedbackGenerator:v145];

  v146 = [*(a1 + 32) feedbackGenerator];
  [v146 userInteractionStarted];

  v147 = [*(a1 + 32) feedbackGenerator];
  [v147 draggedObjectLifted];

  if (*(a1 + 56))
  {
    v148 = @"Reordering column %lu";
  }

  else
  {
    v148 = @"Reordering row %lu";
  }

  v149 = [MEMORY[0x277CCA8D8] mainBundle];
  v150 = [v149 localizedStringForKey:v148 value:&stru_282757698 table:0];

  v151 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v150, objc_msgSend(*(a1 + 32), "currentDragIndex") + 1];
  UIAccessibilityPostNotification(*MEMORY[0x277D76438], v151);
  [*(a1 + 32) setLastDraggedOverColumnOrRowIndex:{objc_msgSend(*(a1 + 32), "currentDragIndex")}];
}

void __69__ICTableAttachmentViewController_dragBeganOnColumnOrRow_atLocation___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) dragView];
  [v3 frame];
  if (v2 == 1)
  {
    v39 = CGRectOffset(*&v4, 0.0, -5.0);
    x = v39.origin.x;
    y = v39.origin.y;
    width = v39.size.width;
    height = v39.size.height;
    v12 = [*(a1 + 32) dragView];
    v13 = [v12 ic_animator];
    [v13 setFrame:{x, y, width, height}];

    v37 = [*(a1 + 32) columnButton];
    [v37 frame];
    v41 = CGRectOffset(v40, 0.0, -5.0);
    v14 = v41.origin.x;
    v15 = v41.origin.y;
    v16 = v41.size.width;
    v17 = v41.size.height;
    v18 = [*(a1 + 32) columnButton];
    v19 = [v18 ic_animator];
    [v19 setFrame:{v14, v15, v16, v17}];
  }

  else
  {
    v42 = CGRectOffset(*&v4, -5.0, 0.0);
    v20 = v42.origin.x;
    v21 = v42.origin.y;
    v22 = v42.size.width;
    v23 = v42.size.height;
    v24 = [*(a1 + 32) dragView];
    v25 = [v24 ic_animator];
    [v25 setFrame:{v20, v21, v22, v23}];

    v26 = [*(a1 + 32) rowButton];
    [v26 frame];
    v44 = CGRectOffset(v43, -5.0, 0.0);
    v27 = v44.origin.x;
    v28 = v44.origin.y;
    v29 = v44.size.width;
    v30 = v44.size.height;
    v31 = [*(a1 + 32) rowButton];
    v32 = [v31 ic_animator];
    [v32 setFrame:{v27, v28, v29, v30}];

    v33 = [*(a1 + 32) tableContentView];
    v34 = [*(a1 + 32) view];
    [v33 convertPoint:v34 toView:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
    v36 = v35;

    if (v36 >= -1.0)
    {
      return;
    }

    v37 = [*(a1 + 32) rowButton];
    v18 = [v37 ic_animator];
    [v18 ic_setAlpha:0.0];
  }
}

- (void)dragMovedOnColumnOrRow:(BOOL)a3 atLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8 = [(ICTableAttachmentViewController *)self draggingAppearance];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__ICTableAttachmentViewController_dragMovedOnColumnOrRow_atLocation___block_invoke;
  v9[3] = &unk_2781AE078;
  v9[4] = self;
  *&v9[5] = x;
  *&v9[6] = y;
  v10 = a3;
  [v8 performAsDefaultAppearance:v9];
}

void __69__ICTableAttachmentViewController_dragMovedOnColumnOrRow_atLocation___block_invoke(uint64_t a1)
{
  v562 = *MEMORY[0x277D85DE8];
  v1 = (a1 + 32);
  [*(a1 + 32) setCurrentDragGestureLocation:{*(a1 + 40), *(a1 + 48)}];
  v2 = [*v1 dragView];
  [v2 frame];
  v4 = v3;
  v6 = v5;

  if (*(a1 + 56) == 1)
  {
    v7 = *(a1 + 40);
    [*(a1 + 32) initialDragOffset];
    v9 = v8;
    v10 = [*(a1 + 32) dragView];
    [v10 frame];
    v12 = v11;
    v13 = [*(a1 + 32) dragView];
    [v13 setFrame:{v7 + v9 + v4 * -0.5, v12, v4, v6}];

    v14 = [*(a1 + 32) view];
    v15 = [*(a1 + 32) columnButton];
    v16 = [v15 superview];
    [v14 convertPoint:v16 toView:{*(a1 + 40), *(a1 + 48)}];
    v18 = v17;
    [*(a1 + 32) initialDragOffset];
    v20 = v19;
    v21 = [*(a1 + 32) columnButton];
    [v21 frame];
    v23 = v22;
    v24 = [*(a1 + 32) columnButton];
    [v24 frame];
    v26 = v25;
    v27 = [*(a1 + 32) columnButton];
    [v27 frame];
    v29 = v28;
    v30 = [*(a1 + 32) columnButton];
    [v30 frame];
    v32 = v31;
    v33 = [*(a1 + 32) columnButton];
    v34 = v18 + v20 + v23 * -0.5;
  }

  else
  {
    v35 = [*(a1 + 32) dragView];
    [v35 frame];
    v37 = v36;
    v38 = *(a1 + 48);
    [*(a1 + 32) initialDragOffset];
    v40 = v39;
    v41 = [*(a1 + 32) dragView];
    [v41 setFrame:{v37, v38 + v40 + v6 * -0.5, v4, v6}];

    v14 = [*(a1 + 32) rowButton];
    [v14 frame];
    v34 = v42;
    v15 = [*(a1 + 32) view];
    v16 = [*(a1 + 32) rowButton];
    v21 = [v16 superview];
    [v15 convertPoint:v21 toView:{*(a1 + 40), *(a1 + 48)}];
    v44 = v43;
    [*(a1 + 32) initialDragOffset];
    v46 = v45;
    v24 = [*(a1 + 32) rowButton];
    [v24 frame];
    v48 = v47;
    v27 = [*(a1 + 32) rowButton];
    [v27 frame];
    v29 = v49;
    v30 = [*(a1 + 32) rowButton];
    [v30 frame];
    v32 = v50;
    v33 = [*(a1 + 32) rowButton];
    v26 = v44 + v46 + v48 * -0.5;
  }

  [v33 setFrame:{v34, v26, v29, v32}];

  v51 = [*(a1 + 32) tableContentView];
  v52 = [*(a1 + 32) dragView];
  [v52 frame];
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = [*(a1 + 32) dragView];
  v62 = [v61 superview];
  [v51 convertRect:v62 fromView:{v54, v56, v58, v60}];
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;

  v71 = [*(a1 + 32) tableAutoScroller];
  [v71 setTargetFrame:{v64, v66, v68, v70}];

  LOBYTE(v61) = *(a1 + 56);
  v72 = [*(a1 + 32) textViewManager];
  v73 = *(a1 + 32);
  v487.origin.x = v64;
  v482 = v68;
  v484 = v66;
  rect = v70;
  if (v61)
  {
    v74 = [v73 columnButton];
    v75 = [v74 columnOrRowIdentifiers];
    v76 = [v75 firstObject];
    [v72 frameOfColumn:v76];
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v84 = v83;

    v85 = [*v1 textViewManager];
    v86 = [*v1 columnButton];
    v87 = [v86 columnOrRowIdentifiers];
    v88 = [v87 lastObject];
    [v85 frameOfColumn:v88];
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v96 = v95;

    v563.origin.x = v78;
    v563.origin.y = v80;
    v563.size.width = v82;
    v563.size.height = v84;
    v589.origin.x = v90;
    v589.origin.y = v92;
    v589.size.width = v94;
    v589.size.height = v96;
    v564 = CGRectUnion(v563, v589);
    x = v564.origin.x;
    y = v564.origin.y;
    width = v564.size.width;
    height = v564.size.height;
    v564.origin.x = v487.origin.x;
    v564.size.width = v482;
    v564.origin.y = v484;
    v564.size.height = rect;
    MidX = CGRectGetMidX(v564);
    v565.origin.x = x;
    v565.origin.y = y;
    v565.size.width = width;
    v565.size.height = height;
    v479 = MidX < CGRectGetMidX(v565);
    v102 = [*v1 tableContentView];
    v103 = [*v1 dragView];
    [v103 frame];
    if (v479)
    {
      MinX = CGRectGetMinX(*&v104);
    }

    else
    {
      MinX = CGRectGetMaxX(*&v104);
    }

    v146 = MinX;
    v147 = [*v1 dragView];
    [v147 frame];
    MidY = CGRectGetMidY(v570);
    v149 = [*v1 view];
    [v102 convertPoint:v149 fromView:{v146, MidY}];
    v151 = v150;

    v152 = [*v1 textViewManager];
    [v152 boundingRect];
    v154 = v153;
    v156 = v155;
    v158 = v157;
    v160 = v159;

    v571.origin.x = v154;
    v571.origin.y = v156;
    v571.size.width = v158;
    v571.size.height = v160;
    v161 = CGRectGetMinX(v571);
    if (v161 >= v151)
    {
      v151 = v161;
    }

    v572.origin.x = v154;
    v162 = v487.origin.x;
    v572.origin.y = v156;
    v572.size.width = v158;
    v164 = v482;
    v163 = v484;
    v572.size.height = v160;
    v165 = rect;
    MaxX = CGRectGetMaxX(v572);
    if (v151 >= MaxX)
    {
      v151 = MaxX;
    }

    v167 = [*v1 textViewManager];
    [v167 columnContainingX:v151];
    v169 = v168 = 0;
  }

  else
  {
    v109 = [v73 rowButton];
    v110 = [v109 columnOrRowIdentifiers];
    v111 = [v110 firstObject];
    [v72 frameOfRow:v111];
    v113 = v112;
    v115 = v114;
    v117 = v116;
    v119 = v118;

    v120 = [*v1 textViewManager];
    v121 = [*v1 rowButton];
    v122 = [v121 columnOrRowIdentifiers];
    v123 = [v122 lastObject];
    [v120 frameOfRow:v123];
    v125 = v124;
    v127 = v126;
    v129 = v128;
    v131 = v130;

    v566.origin.x = v113;
    v566.origin.y = v115;
    v566.size.width = v117;
    v566.size.height = v119;
    v590.origin.x = v125;
    v590.origin.y = v127;
    v590.size.width = v129;
    v590.size.height = v131;
    v567 = CGRectUnion(v566, v590);
    v132 = v567.origin.x;
    v133 = v567.origin.y;
    v134 = v567.size.width;
    v135 = v567.size.height;
    v567.origin.x = v487.origin.x;
    v567.size.width = v482;
    v567.origin.y = v484;
    v567.size.height = rect;
    v136 = CGRectGetMidY(v567);
    v568.origin.x = v132;
    v568.origin.y = v133;
    v568.size.width = v134;
    v568.size.height = v135;
    v479 = v136 < CGRectGetMidY(v568);
    v137 = [*v1 tableContentView];
    v138 = [*v1 dragView];
    [v138 frame];
    v139 = CGRectGetMidX(v569);
    v140 = [*v1 dragView];
    [v140 frame];
    if (v479)
    {
      MinY = CGRectGetMinY(*&v141);
    }

    else
    {
      MinY = CGRectGetMaxY(*&v141);
    }

    v170 = MinY;
    v171 = [*v1 view];
    [v137 convertPoint:v171 fromView:{v139, v170}];
    v173 = v172;

    v174 = [*v1 textViewManager];
    [v174 boundingRect];
    v176 = v175;
    v178 = v177;
    v180 = v179;
    v182 = v181;

    v573.origin.x = v176;
    v573.origin.y = v178;
    v573.size.width = v180;
    v573.size.height = v182;
    v183 = CGRectGetMinY(v573);
    if (v183 >= v173)
    {
      v173 = v183;
    }

    v574.origin.x = v176;
    v162 = v487.origin.x;
    v574.origin.y = v178;
    v574.size.width = v180;
    v164 = v482;
    v163 = v484;
    v574.size.height = v182;
    v165 = rect;
    MaxY = CGRectGetMaxY(v574);
    if (v173 >= MaxY)
    {
      v173 = MaxY;
    }

    v167 = [*v1 textViewManager];
    [v167 rowContainingY:v173];
    v168 = v169 = 0;
  }

  v483 = v169;
  if (!(v169 | v168))
  {
    goto LABEL_258;
  }

  recta = v168;
  v185 = *(a1 + 56);
  v186 = [*(a1 + 32) table];
  v187 = v186;
  if (v185)
  {
    v188 = [v186 columnIndexForIdentifier:v483];

    v189 = [*v1 table];
    v190 = [*v1 columnButton];
    v191 = [v190 columnOrRowIdentifiers];
    v192 = [v191 firstObject];
    v193 = [v189 columnIndexForIdentifier:v192];
  }

  else
  {
    v188 = [v186 rowIndexForIdentifier:v168];

    v189 = [*v1 table];
    v190 = [*v1 rowButton];
    v191 = [v190 columnOrRowIdentifiers];
    v192 = [v191 firstObject];
    v193 = [v189 rowIndexForIdentifier:v192];
  }

  v478 = v193;

  if (*(a1 + 56) == 1 && ([*v1 table], v194 = objc_claimAutoreleasedReturnValue(), v195 = objc_msgSend(v194, "isRightToLeft"), v194, v195))
  {
    if (v188 < v478)
    {
      v196 = v479;
    }

    else
    {
      v196 = 0;
    }

    if (v196)
    {
      v197 = 1;
    }

    else
    {
      v197 = (((v188 > v478) & ~v479) << 63) >> 63;
    }
  }

  else
  {
    if (v188 > v478)
    {
      v198 = v479;
    }

    else
    {
      v198 = 0;
    }

    if (v198)
    {
      v197 = -1;
    }

    else
    {
      v197 = (v188 < v478) & ~v479;
    }
  }

  if ([*v1 currentDragIndex] == v188 + v197)
  {
    goto LABEL_246;
  }

  if (*(a1 + 56) != 1)
  {
LABEL_43:
    v202 = [*v1 rowButton];
    v203 = [v202 columnOrRowIdentifiers];
    v204 = [v203 containsObject:v168];

    if (v204)
    {
      goto LABEL_246;
    }

    v205 = [*v1 rowButton];
    v485 = [v205 columnOrRowIdentifiers];

    v206 = [MEMORY[0x277CBEB18] array];
    v207 = v168;
    v208 = [*v1 textViewManager];
    if (v479)
    {
      v209 = [v485 firstObject];
      [v208 frameOfRow:v209];
      v211 = v210;
      while (1)
      {

        v212 = [*v1 textViewManager];
        [v212 frameOfRow:v207];
        if (v213 >= v211)
        {
          v214 = [v485 containsObject:v207];

          if ((v214 & 1) == 0)
          {
            break;
          }
        }

        else
        {
        }

        v575.origin.x = v162;
        v575.origin.y = v163;
        v575.size.width = v164;
        v575.size.height = v165;
        v215 = CGRectGetMinY(v575);
        v216 = [*v1 textViewManager];
        [v216 frameOfRow:v207];
        if (v215 >= CGRectGetMidY(v576))
        {
        }

        else
        {
          v217 = [v485 containsObject:v207];

          if ((v217 & 1) == 0)
          {
            [v206 addObject:v207];
          }
        }

        v218 = [*v1 table];
        v219 = [v218 rowIndexForIdentifier:v207];

        v220 = [*v1 table];
        v221 = [v220 rowCount] - 1;

        if (v219 >= v221)
        {
          break;
        }

        v208 = [*v1 table];
        [v208 identifierForRowAtIndex:v219 + 1];
        v207 = v209 = v207;
      }

      if ([v206 count])
      {
        v518 = 0u;
        v519 = 0u;
        v516 = 0u;
        v517 = 0u;
        v245 = v485;
        v246 = [v245 countByEnumeratingWithState:&v516 objects:v556 count:16];
        if (v246)
        {
          v247 = *v517;
          v487.origin.x = 0.0;
          do
          {
            for (i = 0; i != v246; ++i)
            {
              if (*v517 != v247)
              {
                objc_enumerationMutation(v245);
              }

              v249 = *(*(&v516 + 1) + 8 * i);
              v250 = [*v1 rowHeightCache];
              [v250 dimensionForKey:v249];
              v252 = v251;

              v487.origin.x = v487.origin.x + v252;
            }

            v246 = [v245 countByEnumeratingWithState:&v516 objects:v556 count:16];
          }

          while (v246);
          goto LABEL_90;
        }

LABEL_89:
        v487.origin.x = 0.0;
LABEL_90:

LABEL_91:
        v253 = [*v1 table];
        v254 = [v206 firstObject];
        v255 = [v253 rowIndexForIdentifier:v254];

        v256 = 0x7FFFFFFFFFFFFFFFLL;
        if (v255 != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v255 > v478)
          {
            v257 = v479;
          }

          else
          {
            v257 = 0;
          }

          if (v257 == 1)
          {
            v256 = v255 - 1;
          }

          else
          {
            v256 = v255 + ((v255 < v478) & ~v479);
          }
        }

        v477 = v256;
        v258 = [*v1 textViewManager];
        v259 = [v258 rowIDs];
        v260 = [*v1 rowButton];
        v261 = [v260 columnOrRowIdentifiers];
        v262 = [v261 firstObject];
        v263 = [v259 indexOfObject:v262];

        if (v479)
        {
          v264 = v263 >= [v206 count];
        }

        else
        {
          v265 = [v485 count];
          v266 = [v206 count];
          v267 = [*v1 table];
          v264 = v263 + v265 + v266 - 1 <= [v267 rowCount];
        }

        if ([v206 count])
        {
          v268 = [*v1 currentDragIndex] == v477 || v263 == 0x7FFFFFFFFFFFFFFFLL;
          v269 = !v268;
          if (v269 && v264)
          {
            v510 = 0u;
            v511 = 0u;
            v508 = 0u;
            v509 = 0u;
            v270 = v206;
            v271 = [v270 countByEnumeratingWithState:&v508 objects:v554 count:16];
            v272 = *MEMORY[0x277CBF3A0];
            v273 = *(MEMORY[0x277CBF3A0] + 8);
            v274 = *(MEMORY[0x277CBF3A0] + 16);
            v275 = *(MEMORY[0x277CBF3A0] + 24);
            if (v271)
            {
              v276 = *v509;
              do
              {
                for (j = 0; j != v271; ++j)
                {
                  if (*v509 != v276)
                  {
                    objc_enumerationMutation(v270);
                  }

                  v278 = *(*(&v508 + 1) + 8 * j);
                  v279 = [*v1 textViewManager];
                  [v279 frameOfRow:v278];
                  v281 = v280;
                  v283 = v282;
                  v285 = v284;
                  v287 = v286;

                  v579.origin.x = v272;
                  v579.origin.y = v273;
                  v579.size.width = v274;
                  v579.size.height = v275;
                  if (CGRectIsEmpty(v579))
                  {
                    v272 = v281;
                    v273 = v283;
                    v274 = v285;
                    v275 = v287;
                  }

                  else
                  {
                    v580.origin.x = v272;
                    v580.origin.y = v273;
                    v580.size.width = v274;
                    v580.size.height = v275;
                    v591.origin.x = v281;
                    v591.origin.y = v283;
                    v591.size.width = v285;
                    v591.size.height = v287;
                    v581 = CGRectUnion(v580, v591);
                    v272 = v581.origin.x;
                    v273 = v581.origin.y;
                    v274 = v581.size.width;
                    v275 = v581.size.height;
                  }
                }

                v271 = [v270 countByEnumeratingWithState:&v508 objects:v554 count:16];
              }

              while (v271);
            }

            v475 = [*v1 dragSnapshotFromRect:0 afterScreenUpdates:{v272, v273, v274, v275}];
            v288 = [*v1 scrollView];
            v289 = [*v1 tableContentView];
            [v288 convertRect:v289 fromView:{v272, v273, v274, v275}];
            [v475 setFrame:?];

            v290 = [*v1 scrollView];
            [v290 addSubview:v475];

            v506 = 0u;
            v507 = 0u;
            v504 = 0u;
            v505 = 0u;
            v291 = v270;
            v292 = [v291 countByEnumeratingWithState:&v504 objects:v553 count:16];
            if (v292)
            {
              v293 = *v505;
              do
              {
                for (k = 0; k != v292; ++k)
                {
                  if (*v505 != v293)
                  {
                    objc_enumerationMutation(v291);
                  }

                  [*v1 setHidden:1 forRow:*(*(&v504 + 1) + 8 * k)];
                }

                v292 = [v291 countByEnumeratingWithState:&v504 objects:v553 count:16];
              }

              while (v292);
            }

            v295 = [*v1 textViewManager];
            v296 = [v291 firstObject];
            [v295 frameOfRow:v296];
            v298 = v297;
            v300 = v299;
            v302 = v301;
            v304 = v303;

            v532 = 0;
            v533 = &v532;
            v534 = 0x2020000000;
            v305 = v298;
            v306 = v300;
            v307 = v302;
            v308 = v304;
            if (v479)
            {
              v535 = CGRectGetMinY(*&v305);
              v501[0] = MEMORY[0x277D85DD0];
              v501[1] = 3221225472;
              v501[2] = __69__ICTableAttachmentViewController_dragMovedOnColumnOrRow_atLocation___block_invoke_6;
              v501[3] = &unk_2781AE0A0;
              v501[4] = *v1;
              v503 = &v532;
              v502 = v291;
              [v485 enumerateObjectsWithOptions:0 usingBlock:v501];
            }

            else
            {
              v535 = CGRectGetMaxY(*&v305);
              v498[0] = MEMORY[0x277D85DD0];
              v498[1] = 3221225472;
              v498[2] = __69__ICTableAttachmentViewController_dragMovedOnColumnOrRow_atLocation___block_invoke_7;
              v498[3] = &unk_2781AE0A0;
              v498[4] = *v1;
              v500 = &v532;
              v499 = v291;
              [v485 enumerateObjectsWithOptions:2 usingBlock:v498];
            }

            _Block_object_dispose(&v532, 8);
            v496 = 0u;
            v497 = 0u;
            v494 = 0u;
            v495 = 0u;
            v355 = v291;
            v356 = [v355 countByEnumeratingWithState:&v494 objects:v552 count:16];
            if (v356)
            {
              v357 = *v495;
              do
              {
                for (m = 0; m != v356; ++m)
                {
                  if (*v495 != v357)
                  {
                    objc_enumerationMutation(v355);
                  }

                  v359 = *(*(&v494 + 1) + 8 * m);
                  v360 = [*v1 tableLayoutManager];
                  v361 = [v360 rowPositions];
                  v362 = [v361 objectForKey:v359];
                  [v362 doubleValue];
                  v364 = v363;

                  v365 = [*v1 tableLayoutManager];
                  v366 = v487.origin.x + v364;
                  [v365 setYPosition:v359 forRow:1 shouldInvalidate:v366];

                  v367 = [*v1 tableContentView];
                  v368 = [MEMORY[0x277CCABB0] numberWithDouble:v366];
                  [v367 setHorizontalLinePosition:v368 forKey:v359];
                }

                v356 = [v355 countByEnumeratingWithState:&v494 objects:v552 count:16];
              }

              while (v356);
            }

            v369 = MEMORY[0x277D75D18];
            v370 = v493;
            v493[0] = MEMORY[0x277D85DD0];
            v493[1] = 3221225472;
            v493[2] = __69__ICTableAttachmentViewController_dragMovedOnColumnOrRow_atLocation___block_invoke_8;
            v493[3] = &unk_2781AD1C0;
            v371 = v475;
            v493[4] = v371;
            v493[5] = *&v487.origin.x;
            p_y = &v487.origin.y;
            *&v487.origin.y = MEMORY[0x277D85DD0];
            *&v487.size.width = 3221225472;
            *&v487.size.height = __69__ICTableAttachmentViewController_dragMovedOnColumnOrRow_atLocation___block_invoke_9;
            v488 = &unk_2781AC878;
            v206 = v355;
            v373 = *v1;
            v489 = v206;
            v490 = v373;
            v491 = v371;
            v485 = v485;
            v492 = v485;
            v374 = v371;
            [v369 ic_animateWithDuration:v493 animations:&v487.origin.y completion:0.2];
            goto LABEL_244;
          }
        }

        goto LABEL_245;
      }
    }

    else
    {
      v226 = [v485 lastObject];
      [v208 frameOfRow:v226];
      v228 = v227;
      while (1)
      {

        v229 = [*v1 textViewManager];
        [v229 frameOfRow:v207];
        if (v230 <= v228)
        {
          v231 = [v485 containsObject:v207];

          if ((v231 & 1) == 0)
          {
            break;
          }
        }

        else
        {
        }

        v577.origin.x = v162;
        v577.origin.y = v163;
        v577.size.width = v164;
        v577.size.height = v165;
        v232 = CGRectGetMaxY(v577);
        v233 = [*v1 textViewManager];
        [v233 frameOfRow:v207];
        if (v232 <= CGRectGetMidY(v578))
        {
        }

        else
        {
          v234 = [v485 containsObject:v207];

          if ((v234 & 1) == 0)
          {
            [v206 addObject:v207];
          }
        }

        v235 = [*v1 table];
        v236 = [v235 rowIndexForIdentifier:v207];

        if (!v236)
        {
          break;
        }

        v208 = [*v1 table];
        [v208 identifierForRowAtIndex:v236 - 1];
        v207 = v226 = v207;
      }

      if ([v206 count])
      {
        v514 = 0u;
        v515 = 0u;
        v512 = 0u;
        v513 = 0u;
        v237 = v485;
        v238 = [v237 countByEnumeratingWithState:&v512 objects:v555 count:16];
        if (v238)
        {
          v239 = *v513;
          v487.origin.x = 0.0;
          do
          {
            for (n = 0; n != v238; ++n)
            {
              if (*v513 != v239)
              {
                objc_enumerationMutation(v237);
              }

              v241 = *(*(&v512 + 1) + 8 * n);
              v242 = [*v1 rowHeightCache];
              [v242 dimensionForKey:v241];
              v244 = v243;

              v487.origin.x = v487.origin.x - v244;
            }

            v238 = [v237 countByEnumeratingWithState:&v512 objects:v555 count:16];
          }

          while (v238);
          goto LABEL_90;
        }

        goto LABEL_89;
      }
    }

    v487.origin.x = 0.0;
    goto LABEL_91;
  }

  v199 = [*v1 columnButton];
  v200 = [v199 columnOrRowIdentifiers];
  v201 = [v200 containsObject:v483];

  if (v201)
  {
    if (*(a1 + 56))
    {
      goto LABEL_246;
    }

    goto LABEL_43;
  }

  v222 = [*v1 columnButton];
  v485 = [v222 columnOrRowIdentifiers];

  v206 = [MEMORY[0x277CBEB18] array];
  v223 = v483;
  v224 = [*v1 table];
  v225 = [v224 isLeftToRight];
  if (v479)
  {
    if (v225)
    {
      [v485 firstObject];
    }

    else
    {
      [v485 lastObject];
    }
    v309 = ;

    v310 = [*v1 textViewManager];
    [v310 frameOfColumn:v309];
    v312 = v311;
    while (1)
    {

      v313 = [*v1 textViewManager];
      [v313 frameOfColumn:v223];
      if (v314 >= v312)
      {
        v315 = [v485 containsObject:v223];

        if ((v315 & 1) == 0)
        {
          goto LABEL_145;
        }
      }

      else
      {
      }

      v582.origin.x = v162;
      v582.origin.y = v163;
      v582.size.width = v164;
      v582.size.height = v165;
      v316 = CGRectGetMinX(v582);
      v317 = [*v1 textViewManager];
      [v317 frameOfColumn:v223];
      if (v316 >= CGRectGetMidX(v583))
      {
      }

      else
      {
        v318 = [v485 containsObject:v223];

        if ((v318 & 1) == 0)
        {
          [v206 addObject:v223];
        }
      }

      v319 = [*v1 table];
      v320 = [v319 columnIndexForIdentifier:v223];

      v321 = [*v1 table];
      if ([v321 isLeftToRight])
      {
        v322 = [*v1 table];
        v323 = [v322 columnCount] - 1;

        if (v320 < v323)
        {
          v324 = 1;
          goto LABEL_144;
        }
      }

      else
      {
      }

      v325 = [*v1 table];
      v326 = [v325 isRightToLeft];

      if (!v326 || !v320)
      {
LABEL_145:
        if ([v206 count])
        {
          v551 = 0u;
          v550 = 0u;
          v549 = 0u;
          v548 = 0u;
          v328 = v485;
          v329 = [v328 countByEnumeratingWithState:&v548 objects:v561 count:16];
          if (v329)
          {
            v330 = *v549;
            v487.origin.x = 0.0;
            do
            {
              for (ii = 0; ii != v329; ++ii)
              {
                if (*v549 != v330)
                {
                  objc_enumerationMutation(v328);
                }

                v332 = *(*(&v548 + 1) + 8 * ii);
                v333 = [*v1 columnWidthCache];
                [v333 dimensionForKey:v332];
                v335 = v334;

                v487.origin.x = v487.origin.x + v335;
              }

              v329 = [v328 countByEnumeratingWithState:&v548 objects:v561 count:16];
            }

            while (v329);
            goto LABEL_193;
          }

LABEL_192:
          v487.origin.x = 0.0;
          goto LABEL_193;
        }

LABEL_191:
        v487.origin.x = 0.0;
        goto LABEL_194;
      }

      v324 = -1;
LABEL_144:
      v310 = [*v1 table];
      v327 = [v310 identifierForColumnAtIndex:v320 + v324];

      v223 = v327;
    }
  }

  if (v225)
  {
    [v485 lastObject];
  }

  else
  {
    [v485 firstObject];
  }
  v309 = ;

  v336 = [*v1 textViewManager];
  [v336 frameOfColumn:v309];
  v338 = v337;
  while (1)
  {

    v339 = [*v1 textViewManager];
    [v339 frameOfColumn:v223];
    if (v340 <= v338)
    {
      v341 = [v485 containsObject:v223];

      if ((v341 & 1) == 0)
      {
        goto LABEL_182;
      }
    }

    else
    {
    }

    v584.origin.x = v162;
    v584.origin.y = v163;
    v584.size.width = v164;
    v584.size.height = v165;
    v342 = CGRectGetMaxX(v584);
    v343 = [*v1 textViewManager];
    [v343 frameOfColumn:v223];
    if (v342 <= CGRectGetMidX(v585))
    {
    }

    else
    {
      v344 = [v485 containsObject:v223];

      if ((v344 & 1) == 0)
      {
        [v206 addObject:v223];
      }
    }

    v345 = [*v1 table];
    v346 = [v345 columnIndexForIdentifier:v223];

    v347 = [*v1 table];
    v348 = [v347 isLeftToRight];
    if (v346)
    {
      v349 = v348;
    }

    else
    {
      v349 = 0;
    }

    v350 = [*v1 table];
    v336 = v350;
    if (v349)
    {
      v351 = -1;
      goto LABEL_171;
    }

    if (([v350 isRightToLeft] & 1) == 0)
    {
      break;
    }

    v352 = [*v1 table];
    v353 = [v352 columnCount] - 1;

    if (v346 >= v353)
    {
      goto LABEL_182;
    }

    v336 = [*v1 table];
    v351 = 1;
LABEL_171:
    v354 = [v336 identifierForColumnAtIndex:v346 + v351];

    v223 = v354;
  }

LABEL_182:
  if (![v206 count])
  {
    goto LABEL_191;
  }

  v547 = 0u;
  v546 = 0u;
  v545 = 0u;
  v544 = 0u;
  v375 = v485;
  v376 = [v375 countByEnumeratingWithState:&v544 objects:v560 count:16];
  if (!v376)
  {
    goto LABEL_192;
  }

  v377 = *v545;
  v487.origin.x = 0.0;
  do
  {
    for (jj = 0; jj != v376; ++jj)
    {
      if (*v545 != v377)
      {
        objc_enumerationMutation(v375);
      }

      v379 = *(*(&v544 + 1) + 8 * jj);
      v380 = [*v1 columnWidthCache];
      [v380 dimensionForKey:v379];
      v382 = v381;

      v487.origin.x = v487.origin.x - v382;
    }

    v376 = [v375 countByEnumeratingWithState:&v544 objects:v560 count:16];
  }

  while (v376);
LABEL_193:

LABEL_194:
  v383 = [*v1 table];
  v384 = [v206 firstObject];
  v385 = [v383 columnIndexForIdentifier:v384];

  v386 = [*v1 table];
  LODWORD(v383) = [v386 isLeftToRight];

  if (v383)
  {
    if (v385 > v478)
    {
      v387 = v479;
    }

    else
    {
      v387 = 0;
    }

    if ((v387 & 1) == 0)
    {
      v388 = (v385 < v478) & ~v479;
      goto LABEL_208;
    }
  }

  else
  {
    if (v385 <= v478)
    {
      v389 = 1;
    }

    else
    {
      v389 = v479;
    }

    if (v389 == 1)
    {
      if (v385 < v478)
      {
        v388 = v479;
      }

      else
      {
        v388 = 0;
      }

      goto LABEL_208;
    }
  }

  v388 = -1;
LABEL_208:
  v390 = [*v1 textViewManager];
  v391 = [v390 columnIDs];
  v392 = [v485 firstObject];
  v393 = [v391 indexOfObject:v392];

  if (v479)
  {
    v394 = v393 >= [v206 count];
  }

  else
  {
    v395 = [v485 count];
    v396 = [v206 count];
    v397 = [*v1 table];
    v394 = v393 + v395 + v396 - 1 <= [v397 columnCount];
  }

  if ([v206 count])
  {
    v398 = [*v1 currentDragIndex] == v385 + v388 || v393 == 0x7FFFFFFFFFFFFFFFLL;
    v399 = !v398;
    if (v399 && v394)
    {
      v477 = v385 + v388;
      v543 = 0u;
      v542 = 0u;
      v540 = 0u;
      v541 = 0u;
      v400 = v206;
      v401 = [v400 countByEnumeratingWithState:&v540 objects:v559 count:16];
      v403 = *MEMORY[0x277CBF398];
      v402 = *(MEMORY[0x277CBF398] + 8);
      v405 = *(MEMORY[0x277CBF398] + 16);
      v404 = *(MEMORY[0x277CBF398] + 24);
      if (v401)
      {
        v406 = *v541;
        do
        {
          for (kk = 0; kk != v401; ++kk)
          {
            if (*v541 != v406)
            {
              objc_enumerationMutation(v400);
            }

            v408 = *(*(&v540 + 1) + 8 * kk);
            v409 = [*v1 textViewManager];
            [v409 frameOfColumn:v408];
            v411 = v410;
            v413 = v412;
            v415 = v414;
            v417 = v416;

            v586.origin.x = v403;
            v586.origin.y = v402;
            v586.size.width = v405;
            v586.size.height = v404;
            v592.origin.x = v411;
            v592.origin.y = v413;
            v592.size.width = v415;
            v592.size.height = v417;
            v587 = CGRectUnion(v586, v592);
            v403 = v587.origin.x;
            v402 = v587.origin.y;
            v405 = v587.size.width;
            v404 = v587.size.height;
          }

          v401 = [v400 countByEnumeratingWithState:&v540 objects:v559 count:16];
        }

        while (v401);
      }

      v476 = [*v1 dragSnapshotFromRect:0 afterScreenUpdates:{v403, v402, v405, v404}];
      v418 = [*v1 tableContentView];
      [v418 innerBorderWidth];
      v420 = v419;
      v421 = [v476 layer];
      [v421 setBorderWidth:v420];

      v422 = [*v1 tableContentView];
      v423 = [v422 innerBorderColor];
      v424 = v423;
      v425 = [v423 CGColor];
      v426 = [v476 layer];
      [v426 setBorderColor:v425];

      v427 = [*v1 scrollView];
      v428 = [*v1 tableContentView];
      [v427 convertRect:v428 fromView:{v403, v402, v405, v404}];
      [v476 setFrame:?];

      v429 = [*v1 scrollView];
      [v429 addSubview:v476];

      v538 = 0u;
      v539 = 0u;
      v536 = 0u;
      v537 = 0u;
      v430 = v400;
      v431 = [v430 countByEnumeratingWithState:&v536 objects:v558 count:16];
      if (v431)
      {
        v432 = *v537;
        do
        {
          for (mm = 0; mm != v431; ++mm)
          {
            if (*v537 != v432)
            {
              objc_enumerationMutation(v430);
            }

            [*v1 setHidden:1 forColumn:*(*(&v536 + 1) + 8 * mm)];
          }

          v431 = [v430 countByEnumeratingWithState:&v536 objects:v558 count:16];
        }

        while (v431);
      }

      v434 = [*v1 textViewManager];
      v435 = [v430 firstObject];
      [v434 frameOfColumn:v435];
      v437 = v436;
      v439 = v438;
      v441 = v440;
      v443 = v442;

      v532 = 0;
      v533 = &v532;
      v534 = 0x2020000000;
      v444 = v437;
      v445 = v439;
      v446 = v441;
      v447 = v443;
      if (v479)
      {
        v535 = CGRectGetMinX(*&v444);
        v529[0] = MEMORY[0x277D85DD0];
        v529[1] = 3221225472;
        v529[2] = __69__ICTableAttachmentViewController_dragMovedOnColumnOrRow_atLocation___block_invoke_2;
        v529[3] = &unk_2781AE0A0;
        v529[4] = *v1;
        v531 = &v532;
        v530 = v430;
        [v485 enumerateObjectsWithOptions:0 usingBlock:v529];
      }

      else
      {
        v535 = CGRectGetMaxX(*&v444);
        v526[0] = MEMORY[0x277D85DD0];
        v526[1] = 3221225472;
        v526[2] = __69__ICTableAttachmentViewController_dragMovedOnColumnOrRow_atLocation___block_invoke_3;
        v526[3] = &unk_2781AE0A0;
        v526[4] = *v1;
        v528 = &v532;
        v527 = v430;
        [v485 enumerateObjectsWithOptions:2 usingBlock:v526];
      }

      _Block_object_dispose(&v532, 8);
      v524 = 0u;
      v525 = 0u;
      v522 = 0u;
      v523 = 0u;
      v448 = v430;
      v449 = [v448 countByEnumeratingWithState:&v522 objects:v557 count:16];
      if (v449)
      {
        v450 = *v523;
        do
        {
          for (nn = 0; nn != v449; ++nn)
          {
            if (*v523 != v450)
            {
              objc_enumerationMutation(v448);
            }

            v452 = *(*(&v522 + 1) + 8 * nn);
            v453 = [*v1 textViewManager];
            v454 = [v453 textViewForColumn:v452];

            [v454 frame];
            v455 = CGRectGetMinX(v588);
            [v454 frame];
            v457 = v456;
            [v454 frame];
            v459 = v458;
            [v454 frame];
            v460 = v487.origin.x + v455;
            [v454 setFrame:{v460, v457, v459}];
            v461 = [*v1 tableContentView];
            v462 = [MEMORY[0x277CCABB0] numberWithDouble:v460];
            [v461 setVerticalLinePosition:v462 forKey:v452];
          }

          v449 = [v448 countByEnumeratingWithState:&v522 objects:v557 count:16];
        }

        while (v449);
      }

      v463 = MEMORY[0x277D75D18];
      v370 = v521;
      v521[0] = MEMORY[0x277D85DD0];
      v521[1] = 3221225472;
      v521[2] = __69__ICTableAttachmentViewController_dragMovedOnColumnOrRow_atLocation___block_invoke_4;
      v521[3] = &unk_2781AD1C0;
      v464 = v476;
      v521[4] = v464;
      v521[5] = *&v487.origin.x;
      p_y = v520;
      v520[0] = MEMORY[0x277D85DD0];
      v520[1] = 3221225472;
      v520[2] = __69__ICTableAttachmentViewController_dragMovedOnColumnOrRow_atLocation___block_invoke_5;
      v520[3] = &unk_2781AC878;
      v206 = v448;
      v465 = *v1;
      v520[4] = v206;
      v520[5] = v465;
      v520[6] = v464;
      v485 = v485;
      v520[7] = v485;
      v374 = v464;
      [v463 ic_animateWithDuration:v521 animations:v520 completion:0.2];
LABEL_244:
      [*v1 setCurrentDragIndex:v477];
    }
  }

LABEL_245:

LABEL_246:
  v466 = [*v1 lastDraggedOverColumnOrRowIndex];
  if (v466 != [*v1 currentDragIndex])
  {
    v467 = [*(a1 + 32) feedbackGenerator];
    [v467 dropTargetUpdated];

    v468 = v478 == [*(a1 + 32) currentDragIndex];
    v469 = *(a1 + 56);
    v470 = [MEMORY[0x277CCA8D8] mainBundle];
    v471 = v470;
    if (v468)
    {
      if (v469)
      {
        [v470 localizedStringForKey:@"Cancel reorder column" value:&stru_282757698 table:0];
      }

      else
      {
        [v470 localizedStringForKey:@"Cancel reorder row" value:&stru_282757698 table:0];
      }
      v474 = ;
      v473 = v471;
    }

    else
    {
      if (v469)
      {
        v472 = @"Column %lu";
      }

      else
      {
        v472 = @"Row %lu";
      }

      v473 = [v470 localizedStringForKey:v472 value:&stru_282757698 table:0];

      v474 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v473, objc_msgSend(*v1, "currentDragIndex") + 1];
    }

    UIAccessibilityPostNotification(*MEMORY[0x277D76438], v474);
  }

  [*v1 setLastDraggedOverColumnOrRowIndex:{objc_msgSend(*v1, "currentDragIndex")}];
  v168 = recta;
LABEL_258:
}

void __69__ICTableAttachmentViewController_dragMovedOnColumnOrRow_atLocation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 textViewManager];
  v18 = [v5 textViewForColumn:v4];

  v6 = *(*(*(a1 + 48) + 8) + 24);
  [v18 frame];
  v8 = v7;
  [v18 frame];
  v10 = v9;
  [v18 frame];
  [v18 setFrame:{v6, v8, v10}];
  v11 = [*(a1 + 32) tableContentView];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:*(*(*(a1 + 48) + 8) + 24)];
  [v11 setVerticalLinePosition:v12 forKey:v4];

  v13 = [*(a1 + 32) textViewManager];
  v14 = [v13 columnIDs];
  v15 = [v14 indexOfObject:v4];

  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = [*(a1 + 32) textViewManager];
    [v16 moveColumnAtIndex:v15 toIndex:{v15 - objc_msgSend(*(a1 + 40), "count")}];
  }

  [v18 frame];
  *(*(*(a1 + 48) + 8) + 24) = v17 + *(*(*(a1 + 48) + 8) + 24);
}

void __69__ICTableAttachmentViewController_dragMovedOnColumnOrRow_atLocation___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 textViewManager];
  v19 = [v5 textViewForColumn:v4];

  [v19 frame];
  v7 = v6;
  v8 = *(*(*(a1 + 48) + 8) + 24) - v6;
  [v19 frame];
  v10 = v9;
  [v19 frame];
  v12 = v11;
  [v19 frame];
  [v19 setFrame:{v8, v10, v12}];
  v13 = [*(a1 + 32) tableContentView];
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:*(*(*(a1 + 48) + 8) + 24) - v7];
  [v13 setVerticalLinePosition:v14 forKey:v4];

  v15 = [*(a1 + 32) textViewManager];
  v16 = [v15 columnIDs];
  v17 = [v16 indexOfObject:v4];

  if (v17 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = [*(a1 + 32) textViewManager];
    [v18 moveColumnAtIndex:v17 toIndex:{objc_msgSend(*(a1 + 40), "count") + v17}];
  }

  *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) - v7;
}

void __69__ICTableAttachmentViewController_dragMovedOnColumnOrRow_atLocation___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) frame];
  v9 = CGRectOffset(v8, *(a1 + 40), 0.0);
  x = v9.origin.x;
  y = v9.origin.y;
  width = v9.size.width;
  height = v9.size.height;
  v6 = [*(a1 + 32) ic_animator];
  [v6 setFrame:{x, y, width, height}];
}

void __69__ICTableAttachmentViewController_dragMovedOnColumnOrRow_atLocation___block_invoke_5(id *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [a1[5] setHidden:0 forColumn:*(*(&v18 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  [a1[6] removeFromSuperview];
  v7 = [a1[5] tableSelection];
  v8 = [v7 moving];

  if (v8)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = a1[7];
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [a1[5] setHidden:1 forColumn:{*(*(&v14 + 1) + 8 * v13++), v14}];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v11);
    }
  }
}

void __69__ICTableAttachmentViewController_dragMovedOnColumnOrRow_atLocation___block_invoke_6(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [*(a1 + 32) tableLayoutManager];
  [v3 setYPosition:v12 forRow:1 shouldInvalidate:*(*(*(a1 + 48) + 8) + 24)];

  v4 = [*(a1 + 32) tableContentView];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(*(*(a1 + 48) + 8) + 24)];
  [v4 setHorizontalLinePosition:v5 forKey:v12];

  v6 = [*(a1 + 32) textViewManager];
  v7 = [v6 rowIDs];
  v8 = [v7 indexOfObject:v12];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [*(a1 + 32) textViewManager];
    [v9 moveRowAtIndex:v8 toIndex:{v8 - objc_msgSend(*(a1 + 40), "count")}];
  }

  v10 = [*(a1 + 32) rowHeightCache];
  [v10 dimensionForKey:v12];
  *(*(*(a1 + 48) + 8) + 24) = v11 + *(*(*(a1 + 48) + 8) + 24);
}

double __69__ICTableAttachmentViewController_dragMovedOnColumnOrRow_atLocation___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 rowHeightCache];
  [v5 dimensionForKey:v4];
  v7 = v6;

  v8 = [*(a1 + 32) tableLayoutManager];
  [v8 setYPosition:v4 forRow:1 shouldInvalidate:*(*(*(a1 + 48) + 8) + 24) - v7];

  v9 = [*(a1 + 32) tableContentView];
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*(*(*(a1 + 48) + 8) + 24) - v7];
  [v9 setHorizontalLinePosition:v10 forKey:v4];

  v11 = [*(a1 + 32) textViewManager];
  v12 = [v11 rowIDs];
  v13 = [v12 indexOfObject:v4];

  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [*(a1 + 32) textViewManager];
    [v14 moveRowAtIndex:v13 toIndex:{objc_msgSend(*(a1 + 40), "count") + v13}];
  }

  v15 = *(*(a1 + 48) + 8);
  result = *(v15 + 24) - v7;
  *(v15 + 24) = result;
  return result;
}

void __69__ICTableAttachmentViewController_dragMovedOnColumnOrRow_atLocation___block_invoke_8(uint64_t a1)
{
  [*(a1 + 32) frame];
  v9 = CGRectOffset(v8, 0.0, *(a1 + 40));
  x = v9.origin.x;
  y = v9.origin.y;
  width = v9.size.width;
  height = v9.size.height;
  v6 = [*(a1 + 32) ic_animator];
  [v6 setFrame:{x, y, width, height}];
}

void __69__ICTableAttachmentViewController_dragMovedOnColumnOrRow_atLocation___block_invoke_9(id *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [a1[5] setHidden:0 forRow:*(*(&v18 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  [a1[6] removeFromSuperview];
  v7 = [a1[5] tableSelection];
  v8 = [v7 moving];

  if (v8)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = a1[7];
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [a1[5] setHidden:1 forRow:{*(*(&v14 + 1) + 8 * v13++), v14}];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v11);
    }
  }
}

- (void)dragEndedOnColumnOrRow:(BOOL)a3 atLocation:(CGPoint)a4
{
  v6 = [(ICTableAttachmentViewController *)self draggingAppearance:a4.x];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__ICTableAttachmentViewController_dragEndedOnColumnOrRow_atLocation___block_invoke;
  v7[3] = &unk_2781ACFF8;
  v7[4] = self;
  v8 = a3;
  [v6 performAsDefaultAppearance:v7];

  [(ICTableAttachmentViewController *)self setDraggingAppearance:0];
}

uint64_t __69__ICTableAttachmentViewController_dragEndedOnColumnOrRow_atLocation___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v1 currentDragIndex];

  return [v1 moveCurrentColumnOrRow:v2 toIndex:v3];
}

- (void)moveCurrentColumnOrRow:(BOOL)a3 toIndex:(unint64_t)a4
{
  v5 = a3;
  v137 = *MEMORY[0x277D85DE8];
  v7 = [(ICTableAttachmentViewController *)self table];
  if (v5)
  {
    v8 = [(ICTableAttachmentViewController *)self columnButton];
    v9 = [v8 columnOrRowIdentifiers];
    v10 = [v9 firstObject];
    v11 = [v7 columnIndexForIdentifier:v10];
  }

  else
  {
    v8 = [(ICTableAttachmentViewController *)self rowButton];
    v9 = [v8 columnOrRowIdentifiers];
    v10 = [v9 firstObject];
    v11 = [v7 rowIndexForIdentifier:v10];
  }

  v115 = v11;

  v12 = [(ICTableAttachmentViewController *)self textViewManager];
  [v12 setDraggedColumns:0];

  v13 = [(ICTableAttachmentViewController *)self textViewManager];
  [v13 setDraggedRows:0];

  if (a4 == 0x7FFFFFFFFFFFFFFFLL || v115 == a4)
  {
    v19 = [(ICTableAttachmentViewController *)self textViewManager];
    [(ICTableAttachmentViewController *)self viewport];
    [v19 redrawAllWithViewport:?];

    if (v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 2 * (v115 < a4);
    if (v5)
    {
      v15 = [(ICTableAttachmentViewController *)self columnButton];
      v16 = [v15 columnOrRowIdentifiers];
      v133[0] = MEMORY[0x277D85DD0];
      v133[1] = 3221225472;
      v133[2] = __66__ICTableAttachmentViewController_moveCurrentColumnOrRow_toIndex___block_invoke;
      v133[3] = &unk_2781AE0C8;
      v133[4] = self;
      v133[5] = a4;
      v133[6] = v115;
      [v16 enumerateObjectsWithOptions:v14 usingBlock:v133];

      [(ICTableAttachmentViewController *)self redrawAndSave];
      v17 = [(ICTableAttachmentViewController *)self columnButton];
      v18 = [v17 columnOrRowIdentifiers];
      [(ICTableAttachmentViewController *)self postChangeNotification:5 columnOrRowUUIDs:v18];

LABEL_9:
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v20 = [(ICTableAttachmentViewController *)self columnButton];
      v21 = [v20 columnOrRowIdentifiers];

      v22 = [v21 countByEnumeratingWithState:&v128 objects:v136 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v129;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v129 != v24)
            {
              objc_enumerationMutation(v21);
            }

            [(ICTableAttachmentViewController *)self setHidden:1 forColumn:*(*(&v128 + 1) + 8 * i)];
          }

          v23 = [v21 countByEnumeratingWithState:&v128 objects:v136 count:16];
        }

        while (v23);
      }

      v26 = [(ICTableAttachmentViewController *)self textViewManager];
      v27 = [(ICTableAttachmentViewController *)self columnButton];
      v28 = [v27 columnOrRowIdentifiers];
      v29 = [v28 firstObject];
      [v26 frameOfColumn:v29];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v38 = [(ICTableAttachmentViewController *)self textViewManager];
      v39 = [(ICTableAttachmentViewController *)self columnButton];
      v40 = [v39 columnOrRowIdentifiers];
      v41 = [v40 lastObject];
      [v38 frameOfColumn:v41];
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v49 = v48;

      v138.origin.x = v31;
      v138.origin.y = v33;
      v138.size.width = v35;
      v138.size.height = v37;
      v142.origin.x = v43;
      v142.origin.y = v45;
      v142.size.width = v47;
      v142.size.height = v49;
      v139 = CGRectUnion(v138, v142);
      x = v139.origin.x;
      y = v139.origin.y;
      width = v139.size.width;
      height = v139.size.height;
      goto LABEL_36;
    }

    v54 = [(ICTableAttachmentViewController *)self rowButton];
    v55 = [v54 columnOrRowIdentifiers];
    v132[0] = MEMORY[0x277D85DD0];
    v132[1] = 3221225472;
    v132[2] = __66__ICTableAttachmentViewController_moveCurrentColumnOrRow_toIndex___block_invoke_2;
    v132[3] = &unk_2781AE0C8;
    v132[4] = self;
    v132[5] = a4;
    v132[6] = v115;
    [v55 enumerateObjectsWithOptions:v14 usingBlock:v132];

    [(ICTableAttachmentViewController *)self redrawAndSave];
    v56 = [(ICTableAttachmentViewController *)self rowButton];
    v57 = [v56 columnOrRowIdentifiers];
    [(ICTableAttachmentViewController *)self postChangeNotification:6 columnOrRowUUIDs:v57];
  }

  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v58 = [(ICTableAttachmentViewController *)self rowButton];
  v59 = [v58 columnOrRowIdentifiers];

  v60 = [v59 countByEnumeratingWithState:&v124 objects:v135 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v125;
    do
    {
      for (j = 0; j != v61; ++j)
      {
        if (*v125 != v62)
        {
          objc_enumerationMutation(v59);
        }

        [(ICTableAttachmentViewController *)self setHidden:1 forColumn:*(*(&v124 + 1) + 8 * j)];
      }

      v61 = [v59 countByEnumeratingWithState:&v124 objects:v135 count:16];
    }

    while (v61);
  }

  v64 = [(ICTableAttachmentViewController *)self textViewManager];
  v65 = [(ICTableAttachmentViewController *)self rowButton];
  v66 = [v65 columnOrRowIdentifiers];
  v67 = [v66 firstObject];
  [v64 frameOfRow:v67];
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;

  v76 = [(ICTableAttachmentViewController *)self textViewManager];
  v77 = [(ICTableAttachmentViewController *)self rowButton];
  v78 = [v77 columnOrRowIdentifiers];
  v79 = [v78 lastObject];
  [v76 frameOfRow:v79];
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v87 = v86;

  v140.origin.x = v69;
  v140.origin.y = v71;
  v140.size.width = v73;
  v140.size.height = v75;
  v143.origin.x = v81;
  v143.origin.y = v83;
  v143.size.width = v85;
  v143.size.height = v87;
  v141 = CGRectUnion(v140, v143);
  x = v141.origin.x;
  y = v141.origin.y;
  width = v141.size.width;
  height = v141.size.height;
  v88 = [(ICTableAttachmentViewController *)self rowButton];
  v89 = [v88 columnOrRowIdentifiers];
  v90 = [v89 count] + v115;
  v91 = [(ICTableAttachmentViewController *)self table];
  v92 = [v91 rowCount];

  if (v90 < v92)
  {
    v112 = v5;
    v113 = a4;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v93 = [(ICTableAttachmentViewController *)self textViewManager];
    v94 = [v93 columnIDs];

    obj = v94;
    v95 = [v94 countByEnumeratingWithState:&v120 objects:v134 count:16];
    if (v95)
    {
      v96 = v95;
      v97 = *v121;
      do
      {
        for (k = 0; k != v96; ++k)
        {
          if (*v121 != v97)
          {
            objc_enumerationMutation(obj);
          }

          v99 = *(*(&v120 + 1) + 8 * k);
          v100 = [(ICTableAttachmentViewController *)self textViewManager];
          v101 = [v100 textViewForColumn:v99];

          objc_opt_class();
          v102 = [v101 textStorage];
          v103 = ICDynamicCast();

          v104 = [(ICTableAttachmentViewController *)self table];
          v105 = [(ICTableAttachmentViewController *)self rowButton];
          v106 = [v105 columnOrRowIdentifiers];
          v107 = [v104 identifierForRowAtIndex:{objc_msgSend(v106, "count") + v115}];

          v108 = [v103 characterRangeForRowID:v107];
          if (v108 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v109 = v108;
            v110 = [v101 layoutManager];
            [v110 invalidateLayoutForCharacterRange:v109 actualCharacterRange:{1, 0}];
          }
        }

        v96 = [obj countByEnumeratingWithState:&v120 objects:v134 count:16];
      }

      while (v96);
    }

    a4 = v113;
    LOBYTE(v5) = v112;
  }

LABEL_36:
  v111 = [(ICTableAttachmentViewController *)self tableAutoScroller];
  [v111 stopAndInvalidate];

  [(ICTableAttachmentViewController *)self setTableAutoScroller:0];
  v118[0] = MEMORY[0x277D85DD0];
  v118[1] = 3221225472;
  v118[2] = __66__ICTableAttachmentViewController_moveCurrentColumnOrRow_toIndex___block_invoke_3;
  v118[3] = &unk_2781AE0F0;
  v118[4] = self;
  *&v118[5] = x;
  *&v118[6] = y;
  *&v118[7] = width;
  *&v118[8] = height;
  v119 = v5;
  v116[0] = MEMORY[0x277D85DD0];
  v116[1] = 3221225472;
  v116[2] = __66__ICTableAttachmentViewController_moveCurrentColumnOrRow_toIndex___block_invoke_4;
  v116[3] = &unk_2781AE078;
  v117 = v5;
  v116[4] = self;
  v116[5] = v115;
  v116[6] = a4;
  [MEMORY[0x277D75D18] ic_animateWithDuration:v118 animations:v116 completion:0.2];
  [(ICTableAttachmentViewController *)self setLastDraggedOverColumnOrRowIndex:0x7FFFFFFFFFFFFFFFLL];
}

void __66__ICTableAttachmentViewController_moveCurrentColumnOrRow_toIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 table];
  v8 = [v7 columnIndexForIdentifier:v6];

  v9 = *(a1 + 40);
  v10 = v9 + a3;
  if (v9 > *(a1 + 48))
  {
    v11 = [*(a1 + 32) columnButton];
    v12 = [v11 columnOrRowIdentifiers];
    v10 = v10 - [v12 count] + 1;
  }

  v13 = [*(a1 + 32) table];
  [v13 moveColumnAtIndex:v8 toIndex:v10];
}

void __66__ICTableAttachmentViewController_moveCurrentColumnOrRow_toIndex___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  v5 = [*(a1 + 32) table];
  v6 = [v5 rowIndexForIdentifier:v13];

  v7 = *(a1 + 40);
  v8 = v7 + a3;
  if (v7 > *(a1 + 48))
  {
    v9 = [*(a1 + 32) rowButton];
    v10 = [v9 columnOrRowIdentifiers];
    v8 = v8 - [v10 count] + 1;
  }

  v11 = [*(a1 + 32) table];
  [v11 moveRowAtIndex:v6 toIndex:v8];

  v12 = [*(a1 + 32) tableLayoutManager];
  [v12 updateForMovedRow:v13];
}

void __66__ICTableAttachmentViewController_moveCurrentColumnOrRow_toIndex___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) dragView];
  v3 = [v2 superview];
  v4 = [*(a1 + 32) tableContentView];
  [v3 convertRect:v4 fromView:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [*(a1 + 32) dragView];
  v14 = [v13 ic_animator];
  [v14 setFrame:{v6, v8, v10, v12}];

  v15 = *(a1 + 32);
  if (*(a1 + 72) == 1)
  {
    v16 = [v15 columnButton];
    v17 = [v16 superview];
    v18 = [*(a1 + 32) tableContentView];
    [v17 convertRect:v18 fromView:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
    MidX = CGRectGetMidX(v45);

    v20 = [*(a1 + 32) columnButton];
    [v20 frame];
    v22 = v21;
    v24 = v23;

    v43 = [*(a1 + 32) columnButton];
    [v43 frame];
    v26 = v25 + 5.0;
    v27 = [*(a1 + 32) columnButton];
    v28 = [v27 ic_animator];
    [v28 setFrame:{MidX + v22 * -0.5, v26, v22, v24}];
  }

  else
  {
    v29 = [v15 rowButton];
    v30 = [v29 superview];
    v31 = [*(a1 + 32) tableContentView];
    [v30 convertRect:v31 fromView:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
    MidY = CGRectGetMidY(v46);

    v33 = [*(a1 + 32) rowButton];
    [v33 frame];
    v35 = v34;
    v37 = v36;

    v38 = [*(a1 + 32) rowButton];
    [v38 frame];
    v40 = v39 + 5.0;
    v41 = [*(a1 + 32) rowButton];
    v42 = [v41 ic_animator];
    [v42 setFrame:{v40, MidY + v37 * -0.5, v35, v37}];

    v43 = [*(a1 + 32) rowButton];
    v27 = [v43 ic_animator];
    [v27 ic_setAlpha:1.0];
  }
}

void __66__ICTableAttachmentViewController_moveCurrentColumnOrRow_toIndex___block_invoke_4(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) tableSelection];
  [v2 setMoving:0];

  v3 = [*(a1 + 32) dragView];
  [v3 removeFromSuperview];

  [*(a1 + 32) setDragView:0];
  v4 = [*(a1 + 32) selectionHighlightView];
  [v4 ic_setAlpha:1.0];

  [*(a1 + 32) updateChrome];
  v5 = [*(a1 + 32) headerClipView];
  v6 = [v5 layer];
  [v6 setMasksToBounds:1];

  if (*(a1 + 56) == 1)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v7 = [*(a1 + 32) columnButton];
    v8 = [v7 columnOrRowIdentifiers];

    v9 = [v8 countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v51;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v51 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(a1 + 32) setHidden:0 forColumn:*(*(&v50 + 1) + 8 * i)];
        }

        v10 = [v8 countByEnumeratingWithState:&v50 objects:v57 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v13 = [*(a1 + 32) rowButton];
    v8 = [v13 columnOrRowIdentifiers];

    v14 = [v8 countByEnumeratingWithState:&v46 objects:v56 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v47;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v47 != v16)
          {
            objc_enumerationMutation(v8);
          }

          [*(a1 + 32) setHidden:0 forRow:*(*(&v46 + 1) + 8 * j)];
        }

        v15 = [v8 countByEnumeratingWithState:&v46 objects:v56 count:16];
      }

      while (v15);
    }
  }

  v18 = [*(a1 + 32) currentlyEditingTextView];

  if (v18)
  {
    v19 = [*(a1 + 32) columnButton];
    v20 = [v19 columnOrRowIdentifiers];
    v21 = [v20 firstObject];

    v22 = [*(a1 + 32) rowButton];
    v23 = [v22 columnOrRowIdentifiers];
    v24 = [v23 firstObject];

    [*(a1 + 32) beginEditingCellWithColumnID:v21 andRowID:v24 location:2];
    v25 = *(a1 + 32);
    v55 = v21;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
    v54 = v24;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
    [v25 showButtonsAtColumns:v26 rows:v27];

    v28 = [*(a1 + 32) currentlyEditingTextStorage];
    v29 = [*(a1 + 32) stringSelectionBeforeDrag];
    [v28 restoreSelection:v29];
  }

  v30 = [*(a1 + 32) currentlyEditingTextView];
  [v30 setTextSelectionHidden:0];

  v31 = *(a1 + 40);
  v32 = *(a1 + 48);
  v33 = *(a1 + 56);
  v34 = [MEMORY[0x277CCA8D8] mainBundle];
  v35 = v34;
  if (v31 == v32)
  {
    if (v33)
    {
      v36 = @"Canceled reordering column";
    }

    else
    {
      v36 = @"Canceled reordering row";
    }

    v39 = [v34 localizedStringForKey:v36 value:&stru_282757698 table:0];
  }

  else
  {
    if (v33)
    {
      v37 = @"Moved column %lu to position %lu";
    }

    else
    {
      v37 = @"Moved row %lu to position %lu";
    }

    v38 = [v34 localizedStringForKey:v37 value:&stru_282757698 table:0];

    v39 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v38, *(a1 + 40) + 1, *(a1 + 48) + 1];
    v35 = v38;
  }

  v40 = [*(a1 + 32) feedbackGenerator];
  [v40 draggedObjectLanded];

  v41 = [*(a1 + 32) feedbackGenerator];
  [v41 userInteractionEnded];

  [*(a1 + 32) setFeedbackGenerator:0];
  v42 = *MEMORY[0x277D76488];
  v43 = *(a1 + 32);
  if (*(a1 + 56))
  {
    [v43 columnButton];
  }

  else
  {
    [v43 rowButton];
  }
  v44 = ;
  UIAccessibilityPostNotification(v42, v44);

  v45 = v39;
  dispatchMainAfterDelay();
}

- (void)setHidden:(BOOL)a3 forColumn:(id)a4
{
  v4 = a3;
  v27 = a4;
  v6 = [(ICTableAttachmentViewController *)self textViewManager];
  v7 = [v6 textViewForColumn:v27];

  v4 ^= 1u;
  [v7 ic_setAlpha:v4];
  if (v4)
  {
    x = *MEMORY[0x277CBF398];
    y = *(MEMORY[0x277CBF398] + 8);
    width = *(MEMORY[0x277CBF398] + 16);
    height = *(MEMORY[0x277CBF398] + 24);
  }

  else
  {
    v8 = [(ICTableAttachmentViewController *)self textViewManager];
    [v8 frameOfColumn:v27];
    x = v9;
    y = v11;
    width = v13;
    height = v15;

    v17 = [(ICTableAttachmentViewController *)self tableContentView];
    [v17 exclusionRect];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v29.origin.x = v19;
    v29.origin.y = v21;
    v29.size.width = v23;
    v29.size.height = v25;
    if (!CGRectIsEmpty(v29))
    {
      v30.origin.x = v19;
      v30.origin.y = v21;
      v30.size.width = v23;
      v30.size.height = v25;
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size.width = width;
      v32.size.height = height;
      v31 = CGRectUnion(v30, v32);
      x = v31.origin.x;
      y = v31.origin.y;
      width = v31.size.width;
      height = v31.size.height;
    }
  }

  v26 = [(ICTableAttachmentViewController *)self tableContentView];
  [v26 setExclusionRect:{x, y, width, height}];
}

- (void)setHidden:(BOOL)a3 forRow:(id)a4
{
  v4 = a3;
  v59 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v4)
  {
    v55 = 0uLL;
    v56 = 0uLL;
    v53 = 0uLL;
    v54 = 0uLL;
    v7 = [(ICTableAttachmentViewController *)self textViewManager];
    v8 = [v7 columnIDs];

    v9 = [v8 countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v54;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v54 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v53 + 1) + 8 * i);
          v14 = [(ICTableAttachmentViewController *)self tableLayoutManager];
          v15 = [v14 columnLayoutManagerForColumn:v13];

          v16 = [v15 hiddenRows];
          v17 = [v16 mutableCopy];
          v18 = v17;
          if (v17)
          {
            v19 = v17;
          }

          else
          {
            v19 = [MEMORY[0x277CBEB18] array];
          }

          v20 = v19;

          [v20 addObject:v6];
          [v15 setHiddenRows:v20];
        }

        v10 = [v8 countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v10);
    }

    v21 = [(ICTableAttachmentViewController *)self textViewManager];
    [v21 frameOfRow:v6];
    x = v22;
    y = v24;
    width = v26;
    height = v28;

    v30 = [(ICTableAttachmentViewController *)self tableContentView];
    [v30 exclusionRect];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    v60.origin.x = v32;
    v60.origin.y = v34;
    v60.size.width = v36;
    v60.size.height = v38;
    if (!CGRectIsEmpty(v60))
    {
      v61.origin.x = v32;
      v61.origin.y = v34;
      v61.size.width = v36;
      v61.size.height = v38;
      v63.origin.x = x;
      v63.origin.y = y;
      v63.size.width = width;
      v63.size.height = height;
      v62 = CGRectUnion(v61, v63);
      x = v62.origin.x;
      y = v62.origin.y;
      width = v62.size.width;
      height = v62.size.height;
    }
  }

  else
  {
    v51 = 0uLL;
    v52 = 0uLL;
    *(&v49 + 1) = 0;
    v50 = 0uLL;
    v39 = [(ICTableAttachmentViewController *)self textViewManager];
    v40 = [v39 columnIDs];

    v41 = [v40 countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v50;
      do
      {
        for (j = 0; j != v42; ++j)
        {
          if (*v50 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v49 + 1) + 8 * j);
          v46 = [(ICTableAttachmentViewController *)self tableLayoutManager];
          v47 = [v46 columnLayoutManagerForColumn:v45];

          [v47 setHiddenRows:0];
        }

        v42 = [v40 countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v42);
    }

    x = *MEMORY[0x277CBF398];
    y = *(MEMORY[0x277CBF398] + 8);
    width = *(MEMORY[0x277CBF398] + 16);
    height = *(MEMORY[0x277CBF398] + 24);
  }

  v48 = [(ICTableAttachmentViewController *)self tableContentView];
  [v48 setExclusionRect:{x, y, width, height}];
}

- (void)tableAutoScroller:(id)a3 scrollOffsetDelta:(CGPoint)a4
{
  y = a4.y;
  v6 = [a3 scrollDirectionMode];
  [(ICTableAttachmentViewController *)self currentDragGestureLocation];
  if (v6 == 1)
  {
    v9 = v7;
  }

  else
  {
    [(ICTableAttachmentViewController *)self currentDragGestureLocation];
    v9 = v10;
    [(ICTableAttachmentViewController *)self currentDragGestureLocation];
    v8 = y + v11;
  }

  [(ICTableAttachmentViewController *)self dragMovedOnColumnOrRow:v6 == 1 atLocation:v9, v8];
}

- (void)textRangeDraggedAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v34[1] = *MEMORY[0x277D85DE8];
  v6 = [(ICTableAttachmentViewController *)self columnButton];
  v7 = [v6 columnOrRowIdentifiers];
  v8 = [v7 firstObject];

  v9 = [(ICTableAttachmentViewController *)self rowButton];
  v10 = [v9 columnOrRowIdentifiers];
  v11 = [v10 firstObject];

  v12 = [(ICTableAttachmentViewController *)self textViewManager];
  [v12 frameOfCellAtColumn:v8 row:v11];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [(ICTableAttachmentViewController *)self tableSelection];
  [v21 setDraggingText:1];

  v22 = [(ICTableAttachmentViewController *)self tableSelection];
  v23 = [v22 type];

  if (v23 == 1)
  {
    v37.origin.x = v14;
    v37.origin.y = v16;
    v37.size.width = v18;
    v37.size.height = v20;
    v38 = CGRectInset(v37, -*MEMORY[0x277D365E8], -*MEMORY[0x277D365E8]);
    v35.x = x;
    v35.y = y;
    if (!CGRectContainsPoint(v38, v35))
    {
      v24 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
      [v24 setTextSelectionHidden:1];

      v25 = v11;
      v26 = v8;
      v27 = [(ICTableAttachmentViewController *)self tableSelection];
      v34[0] = v26;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
      v33 = v25;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
      [v27 selectCellRangeAtColumns:v28 rows:v29];

      [(ICTableAttachmentViewController *)self setRangeSelectionAnchorColumn:v26];
      [(ICTableAttachmentViewController *)self setRangeSelectionAnchorRow:v25];
LABEL_7:

      [(ICTableAttachmentViewController *)self updateChrome];
    }
  }

  else
  {
    v30 = [(ICTableAttachmentViewController *)self tableSelection];
    v31 = [v30 type];

    if (v31 == 4)
    {
      v39.origin.x = v14;
      v39.origin.y = v16;
      v39.size.width = v18;
      v39.size.height = v20;
      v36.x = x;
      v36.y = y;
      if (!CGRectContainsPoint(v39, v36))
      {
        [(ICTableAttachmentViewController *)self cellRangeDraggedAtLocation:x, y];
        goto LABEL_9;
      }

      v32 = [(ICTableAttachmentViewController *)self tableSelection];
      [v32 selectCellAtColumn:v8 row:v11];

      v25 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
      [v25 setTextSelectionHidden:0];
      goto LABEL_7;
    }
  }

LABEL_9:
}

- (void)textRangeDragEnded
{
  v3 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
  [v3 setTextSelectionHidden:0];

  v4 = [(ICTableAttachmentViewController *)self tableSelection];
  v5 = [v4 type];

  if (v5 == 4)
  {
    v6 = [(ICTableAttachmentViewController *)self tableSelection];
    v7 = [v6 columns];

    v8 = [(ICTableAttachmentViewController *)self tableSelection];
    v9 = [v8 rows];

    v10 = [(ICTableAttachmentViewController *)self selectionHighlightView];
    [v10 removeFromSuperview];

    v11 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
    [(ICTableAttachmentViewController *)self endCellEditingSessionWithTextView:v11];

    v12 = [(ICTableAttachmentViewController *)self tableSelection];
    [v12 selectCellRangeAtColumns:v7 rows:v9];

    [(ICTableAttachmentViewController *)self updateChrome];
    v13 = [(ICTableAttachmentViewController *)self selectionHighlightView];
    [(ICTableAttachmentViewController *)self ic_makeFirstResponder:v13];
  }

  v14 = [(ICTableAttachmentViewController *)self tableSelection];
  [v14 setDraggingText:0];
}

- (void)cellRangeDragBeganOnView:(id)a3
{
  v37 = a3;
  v4 = [(ICTableAttachmentViewController *)self startKnob];
  if (v4 == v37)
  {
  }

  else
  {
    v5 = [(ICTableAttachmentViewController *)self endKnob];

    v6 = v37;
    if (v5 != v37)
    {
      goto LABEL_26;
    }
  }

  v7 = [(ICTableAttachmentViewController *)self tableSelection];
  v8 = [v7 type];

  if (v8 == 4)
  {
    v9 = [(ICTableAttachmentViewController *)self startKnob];

    if (v9 == v37)
    {
      v31 = [(ICTableAttachmentViewController *)self tableSelection];
      v32 = [v31 columns];
      v33 = [v32 lastObject];
      [(ICTableAttachmentViewController *)self setRangeSelectionAnchorColumn:v33];

      v14 = [(ICTableAttachmentViewController *)self tableSelection];
      v15 = [v14 rows];
      v16 = [v15 lastObject];
    }

    else
    {
      v10 = [(ICTableAttachmentViewController *)self endKnob];

      v6 = v37;
      if (v10 != v37)
      {
        goto LABEL_26;
      }

      v11 = [(ICTableAttachmentViewController *)self tableSelection];
      v12 = [v11 columns];
      v13 = [v12 firstObject];
      [(ICTableAttachmentViewController *)self setRangeSelectionAnchorColumn:v13];

      v14 = [(ICTableAttachmentViewController *)self tableSelection];
      v15 = [v14 rows];
      v16 = [v15 firstObject];
    }

    v34 = v16;
    [(ICTableAttachmentViewController *)self setRangeSelectionAnchorRow:v16];

    goto LABEL_25;
  }

  v17 = [(ICTableAttachmentViewController *)self tableSelection];
  v18 = [v17 type];

  if (v18 != 2)
  {
    v24 = [(ICTableAttachmentViewController *)self tableSelection];
    v25 = [v24 type];

    v6 = v37;
    if (v25 != 3)
    {
      goto LABEL_26;
    }

    v26 = [(ICTableAttachmentViewController *)self startKnob];

    if (v26 == v37)
    {
      v28 = [(ICTableAttachmentViewController *)self tableSelection];
      v29 = [v28 rows];
      v30 = [v29 lastObject];
    }

    else
    {
      v27 = [(ICTableAttachmentViewController *)self endKnob];

      if (v27 != v37)
      {
LABEL_24:
        [(ICTableAttachmentViewController *)self setRangeSelectionAnchorColumn:0];
        goto LABEL_25;
      }

      v28 = [(ICTableAttachmentViewController *)self tableSelection];
      v29 = [v28 rows];
      v30 = [v29 firstObject];
    }

    v36 = v30;
    [(ICTableAttachmentViewController *)self setRangeSelectionAnchorRow:v30];

    goto LABEL_24;
  }

  v19 = [(ICTableAttachmentViewController *)self startKnob];

  if (v19 == v37)
  {
    v21 = [(ICTableAttachmentViewController *)self tableSelection];
    v22 = [v21 columns];
    v23 = [v22 lastObject];
    goto LABEL_20;
  }

  v20 = [(ICTableAttachmentViewController *)self endKnob];

  if (v20 == v37)
  {
    v21 = [(ICTableAttachmentViewController *)self tableSelection];
    v22 = [v21 columns];
    v23 = [v22 firstObject];
LABEL_20:
    v35 = v23;
    [(ICTableAttachmentViewController *)self setRangeSelectionAnchorColumn:v23];
  }

  [(ICTableAttachmentViewController *)self setRangeSelectionAnchorRow:0];
LABEL_25:
  v6 = v37;
LABEL_26:
}

- (void)cellRangeDraggedAtLocation:(CGPoint)a3
{
  y = a3.y;
  v5 = fmax(a3.x, 0.0);
  v6 = [(ICTableAttachmentViewController *)self tableContentView];
  [v6 bounds];
  v8 = v7 + -1.0;

  if (v5 >= v8)
  {
    v5 = v8;
  }

  v9 = fmax(y, 0.0);
  v10 = [(ICTableAttachmentViewController *)self tableContentView];
  [v10 bounds];
  v12 = v11 + -1.0;

  if (v9 >= v12)
  {
    v9 = v12;
  }

  v13 = [(ICTableAttachmentViewController *)self textViewManager];
  v46 = 0;
  v47 = 0;
  v14 = [v13 cellContainingPoint:&v47 columnID:&v46 rowID:{v5, v9}];
  v15 = v47;
  v16 = v46;

  v17 = [(ICTableAttachmentViewController *)self table];
  if (v14)
  {
    v18 = [(ICTableAttachmentViewController *)self rangeSelectionAnchorColumn];
    if (v18)
    {
      v19 = [(ICTableAttachmentViewController *)self rangeSelectionAnchorColumn];
      v20 = [v17 columnIndexForIdentifier:v19];
    }

    else
    {
      v20 = 0;
    }

    v21 = [(ICTableAttachmentViewController *)self rangeSelectionAnchorRow];
    if (v21)
    {
      v22 = [(ICTableAttachmentViewController *)self rangeSelectionAnchorRow];
      v23 = [v17 rowIndexForIdentifier:v22];
    }

    else
    {
      v23 = 0;
    }

    v24 = [v17 columnIndexForIdentifier:v15];
    v25 = [v17 rowIndexForIdentifier:v16];
    v26 = [(ICTableAttachmentViewController *)self tableSelection];
    v27 = [v26 type];

    if (v27 == 4)
    {
      v45 = v15;
      v28 = [MEMORY[0x277CBEB18] array];
      v29 = [MEMORY[0x277CBEB18] array];
      if (v20 >= v24)
      {
        v30 = v24;
      }

      else
      {
        v30 = v20;
      }

      if (v20 > v24)
      {
        v24 = v20;
      }

      do
      {
        v31 = [v17 identifierForColumnAtIndex:v30];
        [v28 addObject:v31];

        ++v30;
      }

      while (v30 <= v24);
      if (v23 >= v25)
      {
        v32 = v25;
      }

      else
      {
        v32 = v23;
      }

      if (v23 <= v25)
      {
        v33 = v25;
      }

      else
      {
        v33 = v23;
      }

      do
      {
        v34 = [v17 identifierForRowAtIndex:v32];
        [v29 addObject:v34];

        ++v32;
      }

      while (v32 <= v33);
      v35 = [(ICTableAttachmentViewController *)self tableSelection];
      [v35 selectCellRangeAtColumns:v28 rows:v29];

      [(ICTableAttachmentViewController *)self announceCellRangeSelectionChangeForAccessibilityIfNecessary];
      goto LABEL_44;
    }

    v36 = [(ICTableAttachmentViewController *)self tableSelection];
    v37 = [v36 type];

    if (v37 == 2)
    {
      v45 = v15;
      v28 = [MEMORY[0x277CBEB18] array];
      if (v20 >= v24)
      {
        v38 = v24;
      }

      else
      {
        v38 = v20;
      }

      if (v20 <= v24)
      {
        v20 = v24;
      }

      do
      {
        v39 = [v17 identifierForColumnAtIndex:v38];
        [v28 addObject:v39];

        ++v38;
      }

      while (v38 <= v20);
      v29 = [(ICTableAttachmentViewController *)self tableSelection];
      [v29 selectColumns:v28];
      goto LABEL_44;
    }

    v40 = [(ICTableAttachmentViewController *)self tableSelection];
    v41 = [v40 type];

    if (v41 == 3)
    {
      v45 = v15;
      v28 = [MEMORY[0x277CBEB18] array];
      if (v23 >= v25)
      {
        v42 = v25;
      }

      else
      {
        v42 = v23;
      }

      if (v23 <= v25)
      {
        v43 = v25;
      }

      else
      {
        v43 = v23;
      }

      do
      {
        v44 = [v17 identifierForRowAtIndex:v42];
        [v28 addObject:v44];

        ++v42;
      }

      while (v42 <= v43);
      v29 = [(ICTableAttachmentViewController *)self tableSelection];
      [v29 selectRows:v28];
LABEL_44:

      v15 = v45;
    }
  }

  [(ICTableAttachmentViewController *)self updateChrome];
}

- (id)namedStylesForCurrentSelectionAndBIUS:(unint64_t *)a3 emphasisColorType:(int64_t *)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = [(ICTableAttachmentViewController *)self table];
  v24 = [(ICTableAttachmentViewController *)self tableSelection];
  v22 = objc_alloc_init(MEMORY[0x277CCAB58]);
  if ([v24 type] || -[ICTableAttachmentViewController containedInNoteSelection](self, "containedInNoteSelection"))
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v5 = [v24 columns];
    v6 = 0;
    v7 = [v5 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v7)
    {
      v8 = *v44;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v44 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v43 + 1) + 8 * i);
          if (!v6)
          {
            v6 = [MEMORY[0x277CCAB58] indexSet];
          }

          v11 = [v4 columnIndexForIdentifier:v10];
          if (v11 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v6 addIndex:v11];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v7);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v12 = [v24 rows];
    v13 = 0;
    v14 = [v12 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v14)
    {
      v15 = *v40;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v40 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v39 + 1) + 8 * j);
          if (!v13)
          {
            v13 = [MEMORY[0x277CCAB58] indexSet];
          }

          v18 = [v4 rowIndexForIdentifier:v17];
          if (v18 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v13 addIndex:v18];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v14);
    }

    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __91__ICTableAttachmentViewController_namedStylesForCurrentSelectionAndBIUS_emphasisColorType___block_invoke;
    v25[3] = &unk_2781AE118;
    v26 = v24;
    v27 = self;
    v28 = v22;
    v29 = &v35;
    v30 = &v31;
    [v4 enumerateCellObjectsInCellSelectionContainingColumnIndices:v6 rowIndices:v13 copyItems:0 usingBlock:v25];
    if (a3)
    {
      *a3 = v36[3];
    }

    if (a4)
    {
      *a4 = v32[3];
    }

    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v35, 8);
  }

  return v22;
}

uint64_t __91__ICTableAttachmentViewController_namedStylesForCurrentSelectionAndBIUS_emphasisColorType___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = [a2 attributedString];
  if ([*(a1 + 32) type] == 1)
  {
    v7 = [*(a1 + 40) currentlyEditingTextView];
    v8 = [*(a1 + 40) table];
    v9 = [v8 identifierForRowAtIndex:a4];

    objc_opt_class();
    v10 = [*(a1 + 40) currentlyEditingTextStorage];
    v11 = ICDynamicCast();

    v12 = [v11 characterRangeForRowID:v9];
    v13 = [*(a1 + 40) currentlyEditingTextView];
    v14 = [v13 selectedRange] - v12;
    v15 = [*(a1 + 40) currentlyEditingTextView];
    [v15 selectedRange];
    v17 = v16;
  }

  else
  {
    if (!v6)
    {
      v7 = 0;
      v14 = 0;
      v17 = 0;
      goto LABEL_8;
    }

    v18 = objc_alloc(MEMORY[0x277D36918]);
    v19 = [MEMORY[0x277CCAD78] UUID];
    v9 = [v18 initWithAttributedString:v6 replicaID:v19];

    v11 = objc_alloc_init(MEMORY[0x277D74278]);
    v13 = objc_alloc_init(MEMORY[0x277D74238]);
    [v9 addLayoutManager:v13];
    [v11 replaceLayoutManager:v13];
    v20 = [ICEditingTextView alloc];
    v7 = [(ICBaseTextView *)v20 initWithFrame:v11 textContainer:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v21 = [(ICEditingTextView *)v7 textStorage];
    -[ICEditingTextView setSelectedRange:](v7, "setSelectedRange:", 0, [v21 length]);

    v14 = [(ICEditingTextView *)v7 selectedRange];
    v17 = v22;
  }

  if (v7)
  {
    v23 = [(ICEditingTextView *)v7 ic_selectedStyles];
    [*(a1 + 48) addIndexes:v23];
  }

LABEL_8:
  if ([v6 length] || !v17)
  {
    if (v17)
    {
      if (v14 >= [v6 length])
      {
        v14 = [v6 length] - 1;
        v17 = 1;
      }

      v24 = [v6 attributesAtIndex:v14 longestEffectiveRange:0 inRange:{v14, v17}];
    }

    else
    {
      v24 = [(ICEditingTextView *)v7 typingAttributes];
    }

    v25 = v24;
    v26 = [v24 objectForKeyedSubscript:*MEMORY[0x277D35D98]];
    v27 = [v26 intValue];

    if (v27)
    {
      *(*(*(a1 + 56) + 8) + 24) |= 1uLL;
    }

    if ((v27 & 2) != 0)
    {
      *(*(*(a1 + 56) + 8) + 24) |= 2uLL;
    }

    v28 = [v25 objectForKeyedSubscript:*MEMORY[0x277D35DC0]];
    v29 = [v28 BOOLValue];

    if (v29)
    {
      *(*(*(a1 + 56) + 8) + 24) |= 4uLL;
    }

    v30 = [v25 objectForKeyedSubscript:*MEMORY[0x277D35DB0]];
    v31 = [v30 BOOLValue];

    if (v31)
    {
      *(*(*(a1 + 56) + 8) + 24) |= 8uLL;
    }

    v32 = [v25 objectForKeyedSubscript:*MEMORY[0x277D35D88]];
    [v32 intValue];

    v33 = ICEmphasisColorTypeForTag();
    if (v33)
    {
      *(*(*(a1 + 56) + 8) + 24) |= 0x10uLL;
      v34 = *(*(a1 + 64) + 8);
      if (!*(v34 + 24))
      {
        *(v34 + 24) = v33;
      }
    }
  }

  return 0;
}

- (void)setSelectionBIUSStyle:(unint64_t)a3 toggleOn:(BOOL)a4 onValue:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(ICTableAttachmentViewController *)self tableSelection];
  [(ICTableAttachmentViewController *)self setSelectionBIUSStyle:a3 toggleOn:v5 onValue:v8 withSelection:v9];
}

- (void)setSelectionBIUSStyle:(unint64_t)a3 toggleOn:(BOOL)a4 onValue:(id)a5 withSelection:(id)a6
{
  v50 = *MEMORY[0x277D85DE8];
  v32 = a5;
  v8 = a6;
  v9 = [(ICTableAttachmentViewController *)self table];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v10 = [v8 columns];
  v11 = [v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v45;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v45 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v44 + 1) + 8 * i);
        if (!v13)
        {
          v13 = [MEMORY[0x277CCAB58] indexSet];
        }

        [v13 addIndex:{objc_msgSend(v9, "columnIndexForIdentifier:", v16)}];
      }

      v12 = [v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v31 = v8;
  v17 = [v8 rows];
  v18 = [v17 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = *v41;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v41 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v40 + 1) + 8 * j);
        if (!v20)
        {
          v20 = [MEMORY[0x277CCAB58] indexSet];
        }

        [v20 addIndex:{objc_msgSend(v9, "rowIndexForIdentifier:", v23)}];
      }

      v19 = [v17 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v19);
  }

  else
  {
    v20 = 0;
  }

  v24 = [(ICTableAttachmentViewController *)self undoTarget];
  v25 = [(ICTableAttachmentViewController *)self undoManager];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __88__ICTableAttachmentViewController_setSelectionBIUSStyle_toggleOn_onValue_withSelection___block_invoke;
  v35[3] = &unk_2781AE190;
  v39 = a4;
  v35[4] = self;
  v36 = v32;
  v37 = v31;
  v38 = a3;
  v26 = v31;
  v27 = v32;
  [v9 enumerateTextStoragesForColumnIndexes:v13 rowIndexes:v20 undoTarget:v24 undoManager:v25 usingBlock:v35];

  [(ICTableAttachmentViewController *)self save];
  v28 = [(ICTableAttachmentViewController *)self undoManager];
  v29 = [MEMORY[0x277CCA8D8] mainBundle];
  v30 = [v29 localizedStringForKey:@"Styling" value:&stru_282757698 table:0];
  [v28 setActionName:v30];
}

void __88__ICTableAttachmentViewController_setSelectionBIUSStyle_toggleOn_onValue_withSelection___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = [*(a1 + 32) table];
  v9 = [v8 identifierForColumnAtIndex:a3];

  v10 = [*(a1 + 32) table];
  v11 = [v10 identifierForRowAtIndex:a4];

  objc_opt_class();
  v12 = [*(a1 + 32) tableLayoutManager];
  v13 = [v12 columnLayoutManagerForColumn:v9];
  v14 = [v13 textStorage];
  v15 = ICDynamicCast();

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__ICTableAttachmentViewController_setSelectionBIUSStyle_toggleOn_onValue_withSelection___block_invoke_2;
  aBlock[3] = &unk_2781AE140;
  v38 = *(a1 + 56);
  v39 = *(a1 + 64);
  v37 = *(a1 + 40);
  v16 = _Block_copy(aBlock);
  v17 = [*(a1 + 32) currentlyEditingTextView];
  v18 = [v17 selectedRange];
  v20 = v19;

  v21 = [*(a1 + 48) type];
  v22 = v21;
  if (v20 || v21 != 1)
  {
    v27 = [v15 characterRangeForRowID:v11];
    if (v22 == 1)
    {
      v28 = v18 - v27;
    }

    else
    {
      v28 = [v7 ic_range];
      v20 = v29;
    }

    [v15 beginEditing];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __88__ICTableAttachmentViewController_setSelectionBIUSStyle_toggleOn_onValue_withSelection___block_invoke_3;
    v33[3] = &unk_2781AE168;
    v35 = v16;
    v34 = v7;
    [v34 enumerateAttributesInRange:v28 options:v20 usingBlock:{0, v33}];
    [v15 endEditing];

    v25 = v35;
  }

  else
  {
    v23 = [*(a1 + 32) currentlyEditingTextView];
    v24 = [v23 typingAttributes];
    v25 = (*(v16 + 2))(v16, v24);

    v26 = [*(a1 + 32) currentlyEditingTextView];
    [v26 setTypingAttributes:v25];
  }

  v30 = [*(a1 + 32) noteTextView];
  v31 = [v30 delegate];
  v32 = [*(a1 + 32) noteTextView];
  [v31 textViewDidChange:v32];
}

id __88__ICTableAttachmentViewController_setSelectionBIUSStyle_toggleOn_onValue_withSelection___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 mutableCopy];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
  }

  v6 = v5;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = MEMORY[0x277D35D98];
    v9 = [v5 objectForKeyedSubscript:*MEMORY[0x277D35D98]];
    v10 = [v9 intValue];

    if (*(a1 + 48) == 1)
    {
      if (*(a1 + 32))
      {
        goto LABEL_23;
      }

      v11 = MEMORY[0x277CCABB0];
      v12 = v10 | 1u;
    }

    else
    {
      v11 = MEMORY[0x277CCABB0];
      v12 = v10 & 0xFFFFFFFE;
    }

    goto LABEL_26;
  }

  if ((v7 & 2) != 0)
  {
    v8 = MEMORY[0x277D35D98];
    v13 = [v5 objectForKeyedSubscript:*MEMORY[0x277D35D98]];
    v14 = [v13 intValue];

    if (*(a1 + 48) == 1)
    {
      if (*(a1 + 32))
      {
        goto LABEL_23;
      }

      v11 = MEMORY[0x277CCABB0];
      v12 = v14 | 2u;
    }

    else
    {
      v11 = MEMORY[0x277CCABB0];
      v12 = v14 & 0xFFFFFFFD;
    }

LABEL_26:
    v15 = [v11 numberWithUnsignedInt:v12];
    v17 = *v8;
LABEL_27:
    [v6 setObject:v15 forKey:v17];

    goto LABEL_28;
  }

  if ((v7 & 4) != 0)
  {
    if (*(a1 + 48) == 1)
    {
      goto LABEL_23;
    }

    v15 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v16 = MEMORY[0x277D35DC0];
LABEL_32:
    v17 = *v16;
    goto LABEL_27;
  }

  if ((v7 & 8) != 0)
  {
    if (*(a1 + 48) == 1)
    {
LABEL_23:
      [v6 setObject:? forKey:?];
      goto LABEL_28;
    }

    v15 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v16 = MEMORY[0x277D35DB0];
    goto LABEL_32;
  }

  if ((v7 & 0x10) == 0)
  {
    goto LABEL_28;
  }

  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 32))
    {
      goto LABEL_23;
    }

    v15 = [MEMORY[0x277CCABB0] numberWithInteger:ic_currentEmphasisColorTypeDefault()];
    v16 = MEMORY[0x277D35D88];
    goto LABEL_32;
  }

  [v5 removeObjectForKey:*MEMORY[0x277D35D88]];
  [v6 removeObjectForKey:*MEMORY[0x277D35DA0]];
  [v6 removeObjectForKey:*MEMORY[0x277D36020]];
LABEL_28:
  v18 = [v6 copy];

  return v18;
}

void __88__ICTableAttachmentViewController_setSelectionBIUSStyle_toggleOn_onValue_withSelection___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) setAttributes:v7 range:{a3, a4}];
}

- (void)setSelectionNamedStyle:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [(ICTableAttachmentViewController *)self tableSelection];
  v8 = [v5 columns];

  v6 = [(ICTableAttachmentViewController *)self tableSelection];
  v7 = [v6 rows];

  [(ICTableAttachmentViewController *)self setSelectionNamedStyle:v3 withColumns:v8 rows:v7];
}

- (void)setSelectionNamedStyle:(unsigned int)a3 withColumns:(id)a4 rows:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v32 = self;
  v9 = [(ICTableAttachmentViewController *)self table];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v41;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v41 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v40 + 1) + 8 * i);
        if (!v13)
        {
          v13 = [MEMORY[0x277CCAB58] indexSet];
        }

        [v13 addIndex:{objc_msgSend(v9, "columnIndexForIdentifier:", v16)}];
      }

      v12 = [v10 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v17 = v8;
  v18 = [v17 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = *v37;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v36 + 1) + 8 * j);
        if (!v20)
        {
          v20 = [MEMORY[0x277CCAB58] indexSet];
        }

        [v20 addIndex:{objc_msgSend(v9, "rowIndexForIdentifier:", v23)}];
      }

      v19 = [v17 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v19);
  }

  else
  {
    v20 = 0;
  }

  v24 = [MEMORY[0x277D35F98] paragraphStyleNamed:a3];
  v25 = [(ICTableAttachmentViewController *)v32 undoTarget];
  v26 = [(ICTableAttachmentViewController *)v32 undoManager];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __75__ICTableAttachmentViewController_setSelectionNamedStyle_withColumns_rows___block_invoke;
  v33[3] = &unk_2781AE1E0;
  v35 = a3;
  v33[4] = v32;
  v34 = v24;
  v27 = v24;
  [v9 enumerateTextStoragesForColumnIndexes:v13 rowIndexes:v20 undoTarget:v25 undoManager:v26 usingBlock:v33];

  [(ICTableAttachmentViewController *)v32 save];
  v28 = [(ICTableAttachmentViewController *)v32 undoManager];
  v29 = [MEMORY[0x277CCA8D8] mainBundle];
  v30 = [v29 localizedStringForKey:@"Styling" value:&stru_282757698 table:0];
  [v28 setActionName:v30];
}

void __75__ICTableAttachmentViewController_setSelectionNamedStyle_withColumns_rows___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) table];
  v7 = [v6 identifierForColumnAtIndex:a3];

  objc_opt_class();
  v8 = [*(a1 + 32) tableLayoutManager];
  v9 = [v8 columnLayoutManagerForColumn:v7];
  v10 = [v9 textStorage];
  v11 = ICDynamicCast();

  [v11 beginEditing];
  v12 = [v5 attributedString];
  v13 = [v12 string];
  v14 = [v5 length];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __75__ICTableAttachmentViewController_setSelectionNamedStyle_withColumns_rows___block_invoke_2;
  v20 = &unk_2781AE1B8;
  v21 = v12;
  v24 = *(a1 + 48);
  v22 = *(a1 + 40);
  v23 = v5;
  v15 = v5;
  v16 = v12;
  [v13 ic_enumerateParagraphsInRange:0 usingBlock:{v14, &v17}];

  [v11 endEditing];
}

void __75__ICTableAttachmentViewController_setSelectionNamedStyle_withColumns_rows___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = 0;
  v3 = [*(a1 + 32) attributesAtIndex:a2 effectiveRange:&v10];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 mutableCopy];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
  }

  v6 = v5;
  v7 = MEMORY[0x277D35DA8];
  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277D35DA8]];
  v9 = v8;
  if (!v8 || [v8 style] != *(a1 + 56))
  {
    [v6 setObject:*(a1 + 40) forKeyedSubscript:*v7];
  }

  [*(a1 + 48) setAttributes:v6 range:{v10, v11}];
}

- (int64_t)textAlignmentForCurrentSelection
{
  v3 = [(ICTableAttachmentViewController *)self tableSelection];
  v4 = [(ICTableAttachmentViewController *)self table];
  if ([v3 isRangeOrSpanningSelection] && objc_msgSend(v4, "columnCount") && objc_msgSend(v4, "rowCount"))
  {
    v5 = [v3 columns];
    v6 = [v5 firstObject];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [v4 identifierForColumnAtIndex:0];
    }

    v11 = v8;

    v12 = [v3 rows];
    v13 = [v12 firstObject];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [v4 identifierForRowAtIndex:0];
    }

    v16 = v15;

    v17 = [v4 stringForColumnID:v11 rowID:v16];
    if ([v17 length])
    {
      v18 = [v17 attributesAtIndex:0 effectiveRange:0];
      v19 = [v18 objectForKey:*MEMORY[0x277D35DA8]];
      v9 = [v19 alignment];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setSelectionAlignment:(int64_t)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = [(ICTableAttachmentViewController *)self table];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = [(ICTableAttachmentViewController *)self tableSelection];
  v6 = [v5 columns];

  v7 = [v6 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v37;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        if (!v9)
        {
          v9 = [MEMORY[0x277CCAB58] indexSet];
        }

        [v9 addIndex:{objc_msgSend(v4, "columnIndexForIdentifier:", v12)}];
      }

      v8 = [v6 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = [(ICTableAttachmentViewController *)self tableSelection];
  v14 = [v13 rows];

  v15 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v33;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v32 + 1) + 8 * j);
        if (!v17)
        {
          v17 = [MEMORY[0x277CCAB58] indexSet];
        }

        [v17 addIndex:{objc_msgSend(v4, "rowIndexForIdentifier:", v20)}];
      }

      v16 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  v21 = [(ICTableAttachmentViewController *)self undoTarget];
  v22 = [(ICTableAttachmentViewController *)self undoManager];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __57__ICTableAttachmentViewController_setSelectionAlignment___block_invoke;
  v28[3] = &unk_2781AE230;
  v29 = v4;
  v30 = self;
  v31 = a3;
  v23 = v4;
  [v23 enumerateTextStoragesForColumnIndexes:v9 rowIndexes:v17 undoTarget:v21 undoManager:v22 usingBlock:v28];

  [(ICTableAttachmentViewController *)self save];
  v24 = [(ICTableAttachmentViewController *)self undoManager];
  v25 = [MEMORY[0x277CCA8D8] mainBundle];
  v26 = [v25 localizedStringForKey:@"Format" value:&stru_282757698 table:0];
  [v24 setActionName:v26];
}

void __57__ICTableAttachmentViewController_setSelectionAlignment___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) identifierForColumnAtIndex:a3];
  objc_opt_class();
  v7 = [*(a1 + 40) tableLayoutManager];
  v8 = [v7 columnLayoutManagerForColumn:v6];
  v9 = [v8 textStorage];
  v10 = ICDynamicCast();

  [v10 beginEditing];
  v11 = [v5 length];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __57__ICTableAttachmentViewController_setSelectionAlignment___block_invoke_2;
  v17 = &unk_2781AE208;
  v12 = *(a1 + 48);
  v18 = v5;
  v19 = v12;
  v13 = v5;
  [v13 enumerateAttributesInRange:0 options:v11 usingBlock:{0, &v14}];
  [v10 endEditing];
}

void __57__ICTableAttachmentViewController_setSelectionAlignment___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v15 = v7;
  if (v7)
  {
    v8 = [v7 mutableCopy];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
  }

  v9 = v8;
  v10 = MEMORY[0x277D35DA8];
  v11 = [v8 objectForKeyedSubscript:*MEMORY[0x277D35DA8]];
  v12 = [v11 mutableCopy];

  if (!v12)
  {
    v13 = [MEMORY[0x277D35F98] defaultParagraphStyle];
    v12 = [v13 mutableCopy];
  }

  [v12 setAlignment:*(a1 + 40)];
  v14 = [v12 copy];
  [v9 setObject:v14 forKeyedSubscript:*v10];

  [*(a1 + 32) setAttributes:v9 range:{a3, a4}];
}

- (int64_t)textDirectionForCurrentSelection
{
  v3 = [MEMORY[0x277D74248] defaultWritingDirectionForLanguage:0];
  v4 = [(ICTableAttachmentViewController *)self tableSelection];
  v5 = [(ICTableAttachmentViewController *)self table];
  if ([v4 isRangeOrSpanningSelection] && objc_msgSend(v5, "columnCount") && objc_msgSend(v5, "rowCount"))
  {
    v6 = [v4 columns];
    v7 = [v6 firstObject];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [v5 identifierForColumnAtIndex:0];
    }

    v10 = v9;

    v11 = [v4 rows];
    v12 = [v11 firstObject];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [v5 identifierForRowAtIndex:0];
    }

    v15 = v14;

    v16 = [v5 stringForColumnID:v10 rowID:v15];
    if ([v16 length])
    {
      v17 = [v16 attributesAtIndex:0 effectiveRange:0];
      v18 = [v17 objectForKey:*MEMORY[0x277D35DA8]];
      v3 = [v18 writingDirection];
    }
  }

  return v3;
}

- (void)setSelectionDirection:(int64_t)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = [(ICTableAttachmentViewController *)self table];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = [(ICTableAttachmentViewController *)self tableSelection];
  v6 = [v5 columns];

  v7 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        if (!v9)
        {
          v9 = [MEMORY[0x277CCAB58] indexSet];
        }

        [v9 addIndex:{objc_msgSend(v4, "columnIndexForIdentifier:", v12)}];
      }

      v8 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = [(ICTableAttachmentViewController *)self tableSelection];
  v14 = [v13 rows];

  v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v26;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v25 + 1) + 8 * j);
        if (!v17)
        {
          v17 = [MEMORY[0x277CCAB58] indexSet];
        }

        [v17 addIndex:{objc_msgSend(v4, "rowIndexForIdentifier:", v20)}];
      }

      v16 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  [(ICTableAttachmentViewController *)self updateTableCellsWithDirection:a3 columnIndexes:v9 rowIndexes:v17];
  [(ICTableAttachmentViewController *)self save];
  v21 = [(ICTableAttachmentViewController *)self undoManager];
  v22 = [MEMORY[0x277CCA8D8] mainBundle];
  v23 = [v22 localizedStringForKey:@"Format" value:&stru_282757698 table:0];
  [v21 setActionName:v23];
}

- (void)updateTableCellsWithDirection:(int64_t)a3 columnIndexes:(id)a4 rowIndexes:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(ICTableAttachmentViewController *)self table];
  v11 = [(ICTableAttachmentViewController *)self undoTarget];
  v12 = [(ICTableAttachmentViewController *)self undoManager];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __90__ICTableAttachmentViewController_updateTableCellsWithDirection_columnIndexes_rowIndexes___block_invoke;
  v14[3] = &unk_2781AE230;
  v15 = v10;
  v16 = self;
  v17 = a3;
  v13 = v10;
  [v13 enumerateTextStoragesForColumnIndexes:v9 rowIndexes:v8 undoTarget:v11 undoManager:v12 usingBlock:v14];
}

void __90__ICTableAttachmentViewController_updateTableCellsWithDirection_columnIndexes_rowIndexes___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) identifierForColumnAtIndex:a3];
  objc_opt_class();
  v7 = [*(a1 + 40) tableLayoutManager];
  v8 = [v7 columnLayoutManagerForColumn:v6];
  v9 = [v8 textStorage];
  v10 = ICDynamicCast();

  [v10 beginEditing];
  v11 = [v5 length];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __90__ICTableAttachmentViewController_updateTableCellsWithDirection_columnIndexes_rowIndexes___block_invoke_2;
  v17 = &unk_2781AE208;
  v12 = *(a1 + 48);
  v18 = v5;
  v19 = v12;
  v13 = v5;
  [v13 enumerateAttributesInRange:0 options:v11 usingBlock:{0, &v14}];
  [v10 endEditing];
}

void __90__ICTableAttachmentViewController_updateTableCellsWithDirection_columnIndexes_rowIndexes___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v15 = v7;
  if (v7)
  {
    v8 = [v7 mutableCopy];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
  }

  v9 = v8;
  v10 = MEMORY[0x277D35DA8];
  v11 = [v8 objectForKeyedSubscript:*MEMORY[0x277D35DA8]];
  v12 = [v11 mutableCopy];

  if (!v12)
  {
    v13 = [MEMORY[0x277D35F98] defaultParagraphStyle];
    v12 = [v13 mutableCopy];
  }

  [v12 setWritingDirection:*(a1 + 40)];
  [v12 setAlignment:4];
  v14 = [v12 copy];
  [v9 setObject:v14 forKeyedSubscript:*v10];

  [*(a1 + 32) setAttributes:v9 range:{a3, a4}];
}

- (void)setHighlightColor:(id)a3
{
  v4 = a3;
  v5 = [(ICAbstractAttachmentViewController *)self highlightColor];
  v6 = [v4 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    v9.receiver = self;
    v9.super_class = ICTableAttachmentViewController;
    [(ICAbstractAttachmentViewController *)&v9 setHighlightColor:v4];
    v7 = [(ICTableAttachmentViewController *)self tableContentView];
    [v7 setHighlightColor:v4];

    v8 = [(ICTableAttachmentViewController *)self tableContentView];
    [v8 ic_setNeedsLayout];
  }
}

- (void)setHighlightPatternRegexFinder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICTableAttachmentViewController;
  v4 = a3;
  [(ICAbstractAttachmentViewController *)&v6 setHighlightPatternRegexFinder:v4];
  v5 = [(ICTableAttachmentViewController *)self tableLayoutManager:v6.receiver];
  [v5 setHighlightPatternRegexFinder:v4];
}

- (void)setupTableTextView:(id)a3
{
  v25 = a3;
  [(ICTableAttachmentViewController *)self makeDelegateOfTextView:v25];
  [v25 setCellDelegate:self];
  [v25 setSelectionDelegate:self];
  objc_opt_class();
  v4 = [v25 textStorage];
  v5 = ICDynamicCast();

  v6 = [(ICAttachmentViewController *)self attachment];
  v7 = [v6 note];

  v8 = [v7 textStorage];
  v9 = [v8 undoManager];
  [v5 setUndoManager:v9];

  v10 = [(ICTableAttachmentViewController *)self undoTarget];
  [v5 setOverrideUndoTarget:v10];

  [v5 setUndoHelper:self];
  objc_opt_class();
  v11 = [v5 styler];
  v12 = ICCheckedDynamicCast();

  v13 = [(ICAttachmentViewController *)self attachment];
  v14 = [v13 note];
  [v12 setNote:v14];

  [(ICTableAttachmentViewController *)self setTypingAttributesForTextView:v25];
  objc_opt_class();
  v15 = [(ICAttachmentViewController *)self attachment];
  v16 = [v15 note];
  v17 = [v16 textStorage];
  v18 = [v17 styler];
  v19 = ICCheckedDynamicCast();

  if (!v19)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((noteTextController) != nil)" functionName:"-[ICTableAttachmentViewController setupTableTextView:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "noteTextController"}];
  }

  objc_opt_class();
  v20 = [v25 columnTextStorage];
  v21 = [v20 styler];
  v22 = ICCheckedDynamicCast();

  v23 = [v19 authorHighlightsController];
  [v22 setAuthorHighlightsController:v23];

  v24 = [v19 zoomController];
  [v22 setZoomController:v24];
}

- (BOOL)allowsNewTextLength:(unint64_t)a3
{
  v4 = [(ICAttachmentViewController *)self attachment];
  v5 = [v4 note];
  LOBYTE(a3) = [v5 allowsNewTextLength:a3];

  return a3;
}

- (void)selectionWillBecomeFirstResponder:(id)a3
{
  v5 = a3;
  if (![(ICTableAttachmentViewController *)self lockSelection])
  {
    v4 = [(ICTableAttachmentViewController *)self auxiliaryTextViewHost];
    [v4 setAuxiliaryResponder:v5];
  }
}

- (void)selectionDidResignFirstResponder:(id)a3
{
  v7 = a3;
  if (![(ICTableAttachmentViewController *)self lockSelection])
  {
    [(ICTableAttachmentViewController *)self hideColumnRowButtons];
    v4 = [(ICTableAttachmentViewController *)self auxiliaryTextViewHost];
    v5 = [v4 auxiliaryResponder];

    if (v5 == v7)
    {
      v6 = [(ICTableAttachmentViewController *)self auxiliaryTextViewHost];
      [v6 setAuxiliaryResponder:0];
    }
  }
}

- (void)deleteSelection:(id)a3
{
  v15 = a3;
  v4 = [(ICTableAttachmentViewController *)self table];
  v5 = [(ICTableAttachmentViewController *)self tableSelection];
  v6 = [v5 rows];
  v7 = [v4 rowsIntersectingWithRows:v6];

  v8 = [v5 columns];
  v9 = [v4 columnsIntersectingWithColumns:v8];

  if ([v5 type] != 4)
  {
    if ([v5 type] == 2)
    {
      if ([v4 isEmptyAtColumnIdentifiers:v9 rowIdentifiers:0])
      {
        [(ICTableAttachmentViewController *)self deleteSelectedColumns:v15];
        goto LABEL_14;
      }
    }

    else
    {
      if ([v5 type] != 3)
      {
        goto LABEL_14;
      }

      if ([v4 isEmptyAtColumnIdentifiers:0 rowIdentifiers:v7])
      {
        [(ICTableAttachmentViewController *)self deleteSelectedRows:v15];
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  v10 = [v7 count];
  v11 = [v4 rowCount];
  v12 = [v9 count];
  v13 = [v4 columnCount];
  v14 = v13;
  if (v10 != v11 && v12 != v13 || ![v4 isEmptyAtColumnIdentifiers:v9 rowIdentifiers:v7])
  {
LABEL_13:
    [(ICTableAttachmentViewController *)self deleteSelectionCellContents];
    goto LABEL_14;
  }

  if (v10 == v11)
  {
    [(ICTableAttachmentViewController *)self deleteColumns:v9];
  }

  else if (v12 == v14)
  {
    [(ICTableAttachmentViewController *)self deleteRows:v7];
  }

LABEL_14:
}

- (void)cutSelection:(id)a3
{
  [(ICTableAttachmentViewController *)self copySelection:self];

  [(ICTableAttachmentViewController *)self deleteSelectionCellContents];
}

- (void)pasteIntoSelection:(id)a3
{
  v39 = [(ICTableAttachmentViewController *)self tableSelection];
  if ([v39 type] == 1)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"ICTableAttachmentSelectionTypeCell != tableSelection.type" functionName:"-[ICTableAttachmentViewController pasteIntoSelection:]" simulateCrash:1 showAlert:0 format:@"Not expecting a call to -pasteIntoSelection: when editing a cell."];
  }

  v4 = [(ICTableAttachmentViewController *)self icTableFromPasteboard];
  if (!v4)
  {
    v5 = [(ICTableAttachmentViewController *)self soloPlainTextStringFromPasteboard];
    if (!v5)
    {
      goto LABEL_31;
    }

    v6 = v5;
    v7 = objc_alloc(MEMORY[0x277D35FD0]);
    v8 = [(ICTableAttachmentViewController *)self table];
    v9 = [v8 document];
    v10 = [v9 replica];
    if (v10)
    {
      v11 = [v7 initWithData:0 replicaID:v10];
    }

    else
    {
      v12 = [MEMORY[0x277CCAD78] UUID];
      v11 = [v7 initWithData:0 replicaID:v12];
    }

    v4 = [v11 table];
    v13 = [v4 insertRowAtIndex:0];
    v14 = [v4 insertColumnAtIndex:0];
    v15 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v6];
    [v4 setAttributedString:v15 columnIndex:0 rowIndex:0];
  }

  v16 = [(ICTableAttachmentViewController *)self table];
  v17 = [v39 columns];
  if ([v17 count])
  {
    v18 = [v39 columns];
    v19 = [v18 objectAtIndexedSubscript:0];
    v20 = [v16 columnIndexForIdentifier:v19];
  }

  else
  {
    v20 = 0;
  }

  v21 = [v39 rows];
  if ([v21 count])
  {
    v22 = [v39 rows];
    v23 = [v22 objectAtIndexedSubscript:0];
    v24 = [v16 rowIndexForIdentifier:v23];
  }

  else
  {
    v24 = 0;
  }

  v37 = v24;

  v25 = [v4 columnCount];
  v26 = [v4 rowCount];
  v27 = [v39 columns];
  v28 = [v27 count];
  if (!v28)
  {
    v28 = [v16 columnCount];
  }

  v29 = v20;

  v30 = [v39 rows];
  v31 = [v30 count];
  if (!v31)
  {
    v31 = [v16 rowCount];
  }

  if (v25 >= v28)
  {
    v32 = v25 - v28;
  }

  else
  {
    v32 = 0;
  }

  v33 = [(ICTableAttachmentViewController *)self table];

  if (v16 != v33)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"destinationTable == self.table" functionName:"-[ICTableAttachmentViewController pasteIntoSelection:]" simulateCrash:1 showAlert:0 format:@"destination table should be self.table"];
  }

  v34 = [(ICTableAttachmentViewController *)self insertColumns:v32 atIndex:v28 + v29];
  if (v26 >= v31)
  {
    v35 = v26 - v31;
  }

  else
  {
    v35 = 0;
  }

  v36 = [v16 insertRows:v35 atIndex:v31 + v38];
  if (v25 > v28 || v26 > v31)
  {
    [(ICTableAttachmentViewController *)self postChangeNotification:2 columnOrRowUUIDs:0];
    [(ICTableAttachmentViewController *)self redrawAndSave];
  }

  [(ICTableAttachmentViewController *)self pasteTable:v4 atColumnIndex:v29 rowIndex:v38 shouldSetSelectionToPastedRange:1];

LABEL_31:
}

- (void)deleteSelectionCellContents
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = [(ICTableAttachmentViewController *)self table];
  v4 = [MEMORY[0x277CCAB58] indexSet];
  v5 = [MEMORY[0x277CCAB58] indexSet];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v6 = [(ICTableAttachmentViewController *)self tableSelection];
  v7 = [v6 columns];

  v8 = [v7 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v39;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v4 addIndex:{objc_msgSend(v3, "columnIndexForIdentifier:", *(*(&v38 + 1) + 8 * i))}];
      }

      v9 = [v7 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v9);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = [(ICTableAttachmentViewController *)self tableSelection];
  v13 = [v12 rows];

  v14 = [v13 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v35;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [v5 addIndex:{objc_msgSend(v3, "rowIndexForIdentifier:", *(*(&v34 + 1) + 8 * j))}];
      }

      v15 = [v13 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v15);
  }

  v18 = [(ICTableAttachmentViewController *)self tableSelection];
  v19 = [v18 type];

  if (v19 == 2)
  {
    v20 = [(ICTableAttachmentViewController *)self table];
    v21 = [v20 rowCount];

    if (v21)
    {
      v22 = 0;
      do
      {
        [v5 addIndex:v22++];
        v23 = [(ICTableAttachmentViewController *)self table];
        v24 = [v23 rowCount];
      }

      while (v22 < v24);
    }
  }

  else
  {
    v25 = [(ICTableAttachmentViewController *)self tableSelection];
    v26 = [v25 type];

    if (v26 == 3)
    {
      v27 = [(ICTableAttachmentViewController *)self table];
      v28 = [v27 columnCount];

      if (v28)
      {
        v29 = 0;
        do
        {
          [v4 addIndex:v29++];
          v30 = [(ICTableAttachmentViewController *)self table];
          v31 = [v30 columnCount];
        }

        while (v29 < v31);
      }
    }
  }

  v32 = [(ICTableAttachmentViewController *)self undoTarget];
  v33 = [(ICTableAttachmentViewController *)self undoManager];
  [v3 enumerateTextStoragesForColumnIndexes:v4 rowIndexes:v5 undoTarget:v32 undoManager:v33 usingBlock:&__block_literal_global_218];

  [(ICTableAttachmentViewController *)self save];
}

void __62__ICTableAttachmentViewController_deleteSelectionCellContents__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 replaceCharactersInRange:0 withString:{objc_msgSend(v2, "length"), &stru_282757698}];
}

- (void)pasteTable:(id)a3 atColumnIndex:(unint64_t)a4 rowIndex:(unint64_t)a5 shouldSetSelectionToPastedRange:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  if (v10)
  {
    [(ICTableAttachmentViewController *)self beginEditing];
    [(ICTableAttachmentViewController *)self table];
    v11 = v27 = v6;
    v12 = [v10 columnCount];
    v13 = [v10 rowCount];
    v25 = v12;
    v14 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{a4, v12}];
    v26 = v13;
    v15 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{a5, v13}];
    v16 = [(ICTableAttachmentViewController *)self undoTarget];
    v17 = [(ICTableAttachmentViewController *)self undoManager];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __101__ICTableAttachmentViewController_pasteTable_atColumnIndex_rowIndex_shouldSetSelectionToPastedRange___block_invoke;
    v28[3] = &unk_2781AE278;
    v31 = a4;
    v32 = a5;
    v29 = v10;
    v30 = self;
    [v11 enumerateTextStoragesForColumnIndexes:v14 rowIndexes:v15 undoTarget:v16 undoManager:v17 usingBlock:v28];

    [(ICTableAttachmentViewController *)self endEditing];
    v18 = [(ICTableAttachmentViewController *)self undoManager];
    v19 = [MEMORY[0x277CCA8D8] mainBundle];
    v20 = [v19 localizedStringForKey:@"Paste" value:&stru_282757698 table:0];
    [v18 setActionName:v20];

    if (v27)
    {
      v21 = [v11 identifiersForColumnIndexes:v14];
      v22 = [v11 identifiersForRowIndexes:v15];
      v23 = [(ICTableAttachmentViewController *)self tableSelection];
      [v23 selectCellRangeAtColumns:v21 rows:v22];

      [(ICTableAttachmentViewController *)self updateChrome];
    }

    else
    {
      v21 = [v11 identifierForColumnAtIndex:a4 + v25 - 1];
      v22 = [v11 identifierForRowAtIndex:a5 + v26 - 1];
      [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:v21 andRowID:v22 location:2];
    }

    v24 = [(ICTableAttachmentViewController *)self textViewManager];
    [v24 updateAuthorHighlights];

    [(ICTableAttachmentViewController *)self save];
  }
}

void __101__ICTableAttachmentViewController_pasteTable_atColumnIndex_rowIndex_shouldSetSelectionToPastedRange___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 - *(a1 + 48);
  v6 = a4 - *(a1 + 56);
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 stringForColumnIndex:v5 rowIndex:v6];
  v10 = [*(a1 + 40) attachment];
  v11 = [v10 managedObjectContext];
  v12 = [v9 ic_attributedStringByFlatteningUnsupportedInlineAttachmentsWithContext:v11];

  v13 = [*(a1 + 40) attachment];
  v14 = [v13 managedObjectContext];
  v15 = [v12 ic_attributedStringByCopyingInlineAttachmentsAndUpdatingChangeCountWithContext:v14];

  if (!v15)
  {
    v15 = objc_alloc_init(MEMORY[0x277CCA898]);
  }

  [v8 setIsReadingSelectionFromPasteboard:1];
  [v8 replaceCharactersInRange:0 withAttributedString:{objc_msgSend(v8, "length"), v15}];
  [v8 setIsReadingSelectionFromPasteboard:0];
}

- (void)extendCellRangeSelectionInDirection:(unint64_t)a3 toEnd:(BOOL)a4
{
  v4 = a4;
  v114[1] = *MEMORY[0x277D85DE8];
  v7 = [(ICTableAttachmentViewController *)self tableSelection];
  v8 = [v7 copy];

  if ([v8 type] != 4)
  {
    v9 = [(ICTableAttachmentViewController *)self tableSelection];
    v10 = [v9 columns];
    v11 = [v10 firstObject];

    v12 = [(ICTableAttachmentViewController *)self tableSelection];
    v13 = [v12 rows];
    v14 = [v13 firstObject];

    if (!v11 || !v14)
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICTableAttachmentViewController extendCellRangeSelectionInDirection:toEnd:]" simulateCrash:1 showAlert:0 format:@"We tried to extend an invalid selection"];

      goto LABEL_54;
    }

    v15 = [(ICTableAttachmentViewController *)self selectionHighlightView];
    [v15 removeFromSuperview];

    v16 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
    [(ICTableAttachmentViewController *)self endCellEditingSessionWithTextView:v16];

    v17 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
    [v17 setTextSelectionHidden:1];

    v18 = [(ICTableAttachmentViewController *)self tableSelection];
    v114[0] = v11;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:1];
    v113 = v14;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v113 count:1];
    [v18 selectCellRangeAtColumns:v19 rows:v20];
  }

  v21 = [v8 columns];
  v22 = [v21 count];

  if (v22 == 1)
  {
    v23 = [v8 columns];
    v24 = [v23 firstObject];
    [(ICTableAttachmentViewController *)self setRangeSelectionAnchorColumn:v24];
  }

  v25 = [v8 rows];
  v26 = [v25 count];

  if (v26 == 1)
  {
    v27 = [v8 rows];
    v28 = [v27 firstObject];
    [(ICTableAttachmentViewController *)self setRangeSelectionAnchorRow:v28];
  }

  v29 = [(ICTableAttachmentViewController *)self table];
  v30 = [(ICTableAttachmentViewController *)self rangeSelectionAnchorColumn];
  v31 = [v29 columnIndexForIdentifier:v30];

  v32 = [(ICTableAttachmentViewController *)self table];
  v33 = [(ICTableAttachmentViewController *)self rangeSelectionAnchorRow];
  v34 = [v32 rowIndexForIdentifier:v33];

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if (v4)
      {
        v41 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, v34 + 1}];
        goto LABEL_25;
      }

      v67 = [(ICTableAttachmentViewController *)self table];
      v68 = [v8 rows];
      v69 = [v68 lastObject];
      v70 = [v67 rowIndexForIdentifier:v69];

      if (v70 <= v34)
      {
        v98 = [(ICTableAttachmentViewController *)self table];
        v99 = [v8 rows];
        v100 = [v99 firstObject];
        v101 = [v98 rowIndexForIdentifier:v100];

        if (!v101)
        {
          goto LABEL_51;
        }

        v102 = [(ICTableAttachmentViewController *)self table];
        v41 = [v102 identifierForRowAtIndex:v101 - 1];

        v111 = v41;
        v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v111 count:1];
        v103 = [v8 rows];
        v45 = [v44 arrayByAddingObjectsFromArray:v103];

        goto LABEL_26;
      }

      v71 = [v8 rows];
      v41 = [v71 mutableCopy];

      [v41 removeLastObject];
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_51;
      }

      if (v4)
      {
        v39 = MEMORY[0x277CCAA78];
        v40 = [(ICTableAttachmentViewController *)self table];
        v41 = [v39 indexSetWithIndexesInRange:{v34, objc_msgSend(v40, "rowCount") - v34}];

LABEL_25:
        v44 = [(ICTableAttachmentViewController *)self table];
        v45 = [v44 identifiersForRowIndexes:v41];
LABEL_26:

        v46 = [(ICTableAttachmentViewController *)self tableSelection];
        v47 = [v8 columns];
        v48 = v46;
        v49 = v47;
        v50 = v45;
LABEL_49:
        [v48 selectCellRangeAtColumns:v49 rows:v50];
        goto LABEL_50;
      }

      v51 = [(ICTableAttachmentViewController *)self table];
      v52 = [v8 rows];
      v53 = [v52 firstObject];
      v54 = [v51 rowIndexForIdentifier:v53];

      if (v54 >= v34)
      {
        v73 = [(ICTableAttachmentViewController *)self table];
        v74 = [v8 rows];
        v75 = [v74 lastObject];
        v76 = [v73 rowIndexForIdentifier:v75];

        v77 = [(ICTableAttachmentViewController *)self table];
        v78 = [v77 rowCount] - 1;

        if (v76 < v78)
        {
          v79 = [(ICTableAttachmentViewController *)self table];
          v41 = [v79 identifierForRowAtIndex:v76 + 1];

          v80 = [v8 rows];
          v45 = [v80 arrayByAddingObject:v41];

          v46 = [(ICTableAttachmentViewController *)self tableSelection];
          v47 = [v8 columns];
          v81 = [v45 copy];
          [v46 selectCellRangeAtColumns:v47 rows:v81];

LABEL_50:
          goto LABEL_51;
        }

        goto LABEL_51;
      }

      v55 = [v8 rows];
      v41 = [v55 mutableCopy];

      [v41 removeObjectAtIndex:0];
    }

    v45 = [(ICTableAttachmentViewController *)self tableSelection];
    v46 = [v8 columns];
    v72 = [v41 copy];
LABEL_47:
    v47 = v72;
    v48 = v45;
    v49 = v46;
    goto LABEL_48;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_51;
    }

    v35 = [(ICTableAttachmentViewController *)self table];
    v36 = [v35 isRightToLeft];

    if (!v36)
    {
      v37 = [(ICTableAttachmentViewController *)self table];
      v38 = [v37 isLeftToRight];

      if ((v38 & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_32;
    }

    goto LABEL_21;
  }

  v42 = [(ICTableAttachmentViewController *)self table];
  v43 = [v42 isLeftToRight];

  if (v43)
  {
LABEL_21:
    if (v4)
    {
      v41 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, v31 + 1}];
LABEL_34:
      v65 = [(ICTableAttachmentViewController *)self table];
      v66 = [v65 identifiersForColumnIndexes:v41];
LABEL_35:
      v45 = v66;
LABEL_36:

      v46 = [(ICTableAttachmentViewController *)self tableSelection];
      v47 = [v8 rows];
      v48 = v46;
      v49 = v45;
LABEL_48:
      v50 = v47;
      goto LABEL_49;
    }

    v56 = [(ICTableAttachmentViewController *)self table];
    v57 = [v8 columns];
    v58 = [v57 lastObject];
    v59 = [v56 columnIndexForIdentifier:v58];

    if (v59 > v31)
    {
      v60 = [v8 columns];
      v41 = [v60 mutableCopy];

      [v41 removeLastObject];
LABEL_46:
      v45 = [(ICTableAttachmentViewController *)self tableSelection];
      v46 = [v41 copy];
      v72 = [v8 rows];
      goto LABEL_47;
    }

    v82 = [(ICTableAttachmentViewController *)self table];
    v83 = [v8 columns];
    v84 = [v83 firstObject];
    v85 = [v82 columnIndexForIdentifier:v84];

    if (v85)
    {
      v86 = [(ICTableAttachmentViewController *)self table];
      v41 = [v86 identifierForColumnAtIndex:v85 - 1];

      v112 = v41;
      v65 = [MEMORY[0x277CBEA60] arrayWithObjects:&v112 count:1];
      v87 = [v8 columns];
      v45 = [v65 arrayByAddingObjectsFromArray:v87];

      goto LABEL_36;
    }

    goto LABEL_51;
  }

  v61 = [(ICTableAttachmentViewController *)self table];
  v62 = [v61 isRightToLeft];

  if (v62)
  {
LABEL_32:
    if (v4)
    {
      v63 = MEMORY[0x277CCAA78];
      v64 = [(ICTableAttachmentViewController *)self table];
      v41 = [v63 indexSetWithIndexesInRange:{v31, objc_msgSend(v64, "columnCount") - v31}];

      goto LABEL_34;
    }

    v88 = [(ICTableAttachmentViewController *)self table];
    v89 = [v8 columns];
    v90 = [v89 firstObject];
    v91 = [v88 columnIndexForIdentifier:v90];

    if (v91 >= v31)
    {
      v104 = [(ICTableAttachmentViewController *)self table];
      v105 = [v8 columns];
      v106 = [v105 lastObject];
      v107 = [v104 columnIndexForIdentifier:v106];

      v108 = [(ICTableAttachmentViewController *)self table];
      v109 = [v108 columnCount] - 1;

      if (v107 >= v109)
      {
        goto LABEL_51;
      }

      v110 = [(ICTableAttachmentViewController *)self table];
      v41 = [v110 identifierForColumnAtIndex:v107 + 1];

      v65 = [v8 columns];
      v66 = [v65 arrayByAddingObject:v41];
      goto LABEL_35;
    }

    v92 = [v8 columns];
    v41 = [v92 mutableCopy];

    [v41 removeObjectAtIndex:0];
    goto LABEL_46;
  }

LABEL_51:
  v93 = [(ICTableAttachmentViewController *)self tableSelection];
  v94 = [v8 isEqual:v93];

  if ((v94 & 1) == 0)
  {
    [(ICTableAttachmentViewController *)self announceCellRangeSelectionChangeForAccessibilityIfNecessary];
    [(ICTableAttachmentViewController *)self updateChrome];
    v95 = [(ICTableAttachmentViewController *)self selectionHighlightView];
    v96 = [v95 ic_isFirstResponder];

    if ((v96 & 1) == 0)
    {
      v97 = [(ICTableAttachmentViewController *)self selectionHighlightView];
      [(ICTableAttachmentViewController *)self ic_makeFirstResponder:v97];
    }
  }

LABEL_54:
}

- (void)saveAttachmentChangesInBackground:(BOOL)a3
{
  v3 = a3;
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_save object:0];
  v5 = [(ICTableAttachmentViewController *)self table];
  v6 = [v5 document];
  v7 = [v6 archivedData];

  v8 = [(ICTableAttachmentViewController *)self tableAttachmentProvider];
  v9 = v8;
  if (v3)
  {
    [v8 backgroundAttachment];
  }

  else
  {
    [v8 attachment];
  }
  v10 = ;

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __69__ICTableAttachmentViewController_saveAttachmentChangesInBackground___block_invoke;
  v19 = &unk_2781ABEB8;
  v11 = v10;
  v20 = v11;
  v21 = v7;
  v12 = v7;
  v13 = _Block_copy(&v16);
  v14 = [v11 managedObjectContext];
  v15 = v14;
  if (v3)
  {
    [v14 performBlock:v13];
  }

  else
  {
    [v14 performBlockAndWait:v13];
  }
}

void __69__ICTableAttachmentViewController_saveAttachmentChangesInBackground___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) attachmentModel];
  v8 = ICDynamicCast();

  [v8 updateAttachmentByMergingWithTableData:*(a1 + 40)];
  [v8 regenerateTextContentInNote];
  if ([*(a1 + 32) isInNoteTitleOrSnippet])
  {
    v3 = [*(a1 + 32) note];
    v4 = [v3 regenerateTitle:1 snippet:1];

    if (v4)
    {
      v5 = [*(a1 + 32) note];
      [v5 markShareDirtyIfNeededWithReason:@"Updated title from table change"];

      v6 = [*(a1 + 32) note];
      [v6 updateChangeCountWithReason:@"Updated title from table change"];
    }
  }

  v7 = [*(a1 + 32) managedObjectContext];
  [v7 ic_save];
}

- (void)tableAttachmentProviderWillMergeTable:(id)a3
{
  [(ICTableAttachmentViewController *)self tableAttachmentWillChange];

  [(ICTableAttachmentViewController *)self willFlashAuthorHighlights];
}

- (void)tableAttachmentProviderDidMergeTable:(id)a3
{
  [(ICTableAttachmentViewController *)self tableAttachmentDidChange];

  [(ICTableAttachmentViewController *)self flashAuthorHighlightsIfNeeded];
}

- (void)tableAttachmentWillChange
{
  v42 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICTableAttachmentViewController tableAttachmentWillChange]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  v3 = [(ICTableAttachmentViewController *)self table];
  if ([v3 columnCount])
  {
    v4 = 0;
    do
    {
      v5 = [v3 identifierForColumnAtIndex:v4];
      v6 = [(ICTableAttachmentViewController *)self columnsBeforeMerge];
      [v6 ic_addNonNilObject:v5];

      ++v4;
    }

    while (v4 < [v3 columnCount]);
  }

  if ([v3 rowCount])
  {
    v7 = 0;
    do
    {
      v8 = [v3 identifierForRowAtIndex:v7];
      v9 = [(ICTableAttachmentViewController *)self rowsBeforeMerge];
      [v9 ic_addNonNilObject:v8];

      ++v7;
    }

    while (v7 < [v3 rowCount]);
  }

  v10 = [(ICTableAttachmentViewController *)self textViewManager];
  v26 = self;
  v11 = [(ICTableAttachmentViewController *)self visibleEmptyCellsBeforeMerge];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v29 = v10;
  obj = [v10 columnIDs];
  v30 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v30)
  {
    v28 = *v37;
    do
    {
      v12 = 0;
      do
      {
        if (*v37 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v31 = v12;
        v13 = *(*(&v36 + 1) + 8 * v12);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v14 = [v29 rowIDs];
        v15 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v33;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v33 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v32 + 1) + 8 * i);
              v20 = [v3 mergeableStringForColumnID:v13 rowID:v19];
              if (!v20)
              {
                v21 = [v11 objectForKeyedSubscript:v13];
                if (!v21)
                {
                  v21 = [MEMORY[0x277CBEB58] set];
                  [v11 setObject:v21 forKeyedSubscript:v13];
                }

                [v21 ic_addNonNilObject:v19];
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v16);
        }

        v12 = v31 + 1;
      }

      while (v31 + 1 != v30);
      v30 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v30);
  }

  v22 = [(ICTableAttachmentViewController *)v26 tableSelection];
  v23 = [v22 copy];
  [(ICTableAttachmentViewController *)v26 setTableSelectionBeforeMerge:v23];

  v24 = [(ICTableAttachmentViewController *)v26 currentlyEditingTextStorage];
  v25 = [v24 savedSelectionWithSelectionAffinity:0];
  [(ICTableAttachmentViewController *)v26 setStringSelectionBeforeMerge:v25];
}

- (void)tableAttachmentDidChange
{
  v143 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICTableAttachmentViewController tableAttachmentDidChange]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  v3 = [(ICTableAttachmentViewController *)self table];
  v4 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(v3, "columnCount")}];
  if ([v3 columnCount])
  {
    v5 = 0;
    do
    {
      v6 = [v3 identifierForColumnAtIndex:v5];
      [v4 addObject:v6];

      ++v5;
    }

    while (v5 < [v3 columnCount]);
  }

  v7 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(v3, "rowCount")}];
  if ([v3 rowCount])
  {
    v8 = 0;
    do
    {
      v9 = [v3 identifierForRowAtIndex:v8];
      [v7 addObject:v9];

      ++v8;
    }

    while (v8 < [v3 rowCount]);
  }

  v10 = [(ICTableAttachmentViewController *)self columnsBeforeMerge];
  v107 = v7;
  if ([v4 isEqual:v10])
  {
    v11 = [(ICTableAttachmentViewController *)self rowsBeforeMerge];
    v12 = [v7 isEqual:v11];

    if (v12)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  v105 = v3;
  v13 = [(ICTableAttachmentViewController *)self columnsBeforeMerge];
  v14 = [v13 mutableCopy];

  v106 = v4;
  [v14 minusOrderedSet:v4];
  v15 = [(ICTableAttachmentViewController *)self rowsBeforeMerge];
  v16 = [v15 mutableCopy];

  [v16 minusOrderedSet:v7];
  v17 = [(ICTableAttachmentViewController *)self tableSelection];
  v18 = [v14 array];
  v108 = v16;
  v19 = [v16 array];
  v20 = [(ICTableAttachmentViewController *)self columnsBeforeMerge];
  v21 = [v20 array];
  v22 = [(ICTableAttachmentViewController *)self rowsBeforeMerge];
  v23 = [v22 array];
  v24 = [v17 removeColumns:v18 rows:v19 previousColumns:v21 previousRows:v23];

  if ((v24 & 1) == 0)
  {
    [(ICTableAttachmentViewController *)self beginEditingNoteAtOffset:1];
  }

  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v25 = v14;
  v26 = [v25 countByEnumeratingWithState:&v133 objects:v142 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v134;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v134 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v133 + 1) + 8 * i);
        [(ICTableAttachmentViewController *)self cleanDeletedColumn:v30];
        v31 = [(ICTableAttachmentViewController *)self visibleEmptyCellsBeforeMerge];
        [v31 removeObjectForKey:v30];
      }

      v27 = [v25 countByEnumeratingWithState:&v133 objects:v142 count:16];
    }

    while (v27);
  }

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v32 = v108;
  v33 = [v32 countByEnumeratingWithState:&v129 objects:v141 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v130;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v130 != v35)
        {
          objc_enumerationMutation(v32);
        }

        [(ICTableAttachmentViewController *)self cleanDeletedRow:*(*(&v129 + 1) + 8 * j)];
      }

      v34 = [v32 countByEnumeratingWithState:&v129 objects:v141 count:16];
    }

    while (v34);
  }

  v104 = v25;

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v37 = [(ICTableAttachmentViewController *)self visibleEmptyCellsBeforeMerge];
  v38 = [v37 allKeys];

  v39 = [v38 countByEnumeratingWithState:&v125 objects:v140 count:16];
  v109 = v32;
  if (v39)
  {
    v40 = v39;
    v41 = *v126;
    do
    {
      for (k = 0; k != v40; ++k)
      {
        if (*v126 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v125 + 1) + 8 * k);
        v44 = [(ICTableAttachmentViewController *)self visibleEmptyCellsBeforeMerge];
        v45 = [v44 objectForKeyedSubscript:v43];

        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v46 = v32;
        v47 = [v46 countByEnumeratingWithState:&v121 objects:v139 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v122;
          do
          {
            for (m = 0; m != v48; ++m)
            {
              if (*v122 != v49)
              {
                objc_enumerationMutation(v46);
              }

              [v45 removeObject:*(*(&v121 + 1) + 8 * m)];
            }

            v48 = [v46 countByEnumeratingWithState:&v121 objects:v139 count:16];
          }

          while (v48);
        }

        v32 = v109;
      }

      v40 = [v38 countByEnumeratingWithState:&v125 objects:v140 count:16];
    }

    while (v40);
  }

  if ([v104 count])
  {
    v51 = [v104 array];
    [(ICTableAttachmentViewController *)self postChangeNotification:3 columnOrRowUUIDs:v51];
  }

  if ([v32 count])
  {
    v52 = [v32 array];
    [(ICTableAttachmentViewController *)self postChangeNotification:4 columnOrRowUUIDs:v52];
  }

  v53 = [v106 mutableCopy];
  v54 = [(ICTableAttachmentViewController *)self columnsBeforeMerge];
  [v53 minusOrderedSet:v54];

  if ([v53 count])
  {
    v55 = [v53 array];
    [(ICTableAttachmentViewController *)self postChangeNotification:0 columnOrRowUUIDs:v55];
  }

  v56 = [v107 mutableCopy];
  v57 = [(ICTableAttachmentViewController *)self rowsBeforeMerge];
  [v56 minusOrderedSet:v57];

  if ([v56 count])
  {
    v58 = [v56 array];
    [(ICTableAttachmentViewController *)self postChangeNotification:1 columnOrRowUUIDs:v58];
  }

  v59 = [(ICTableAttachmentViewController *)self columnsBeforeMerge];
  v60 = [v106 ic_objectsMovedFromOrderedSet:v59];

  if ([v60 count])
  {
    v61 = [v60 allObjects];
    [(ICTableAttachmentViewController *)self postChangeNotification:5 columnOrRowUUIDs:v61];
  }

  v102 = v60;
  v103 = v56;
  v62 = [(ICTableAttachmentViewController *)self rowsBeforeMerge];
  v63 = [v107 ic_objectsMovedFromOrderedSet:v62];

  if ([v63 count])
  {
    v64 = [v63 allObjects];
    [(ICTableAttachmentViewController *)self postChangeNotification:6 columnOrRowUUIDs:v64];

    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v65 = v63;
    v66 = [v65 countByEnumeratingWithState:&v117 objects:v138 count:16];
    if (v66)
    {
      v67 = v66;
      v68 = *v118;
      do
      {
        for (n = 0; n != v67; ++n)
        {
          if (*v118 != v68)
          {
            objc_enumerationMutation(v65);
          }

          v70 = *(*(&v117 + 1) + 8 * n);
          v71 = [(ICTableAttachmentViewController *)self tableLayoutManager];
          [v71 updateForMovedRow:v70];
        }

        v67 = [v65 countByEnumeratingWithState:&v117 objects:v138 count:16];
      }

      while (v67);
    }
  }

  if ([v53 count] || objc_msgSend(v104, "count"))
  {
    v72 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v104, "count") + objc_msgSend(v53, "count")}];
    v73 = [v53 array];
    [v72 addObjectsFromArray:v73];

    v74 = [v104 array];
    [v72 addObjectsFromArray:v74];

    v75 = [(ICTableAttachmentViewController *)self tableLayoutManager];
    v76 = [v75 columnWidthManager];
    v77 = [v76 invalidateWidthForColumns:v72];
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v78 = v53;
  v79 = [v78 countByEnumeratingWithState:&v113 objects:v137 count:16];
  if (v79)
  {
    v80 = v79;
    v81 = *v114;
    do
    {
      for (ii = 0; ii != v80; ++ii)
      {
        if (*v114 != v81)
        {
          objc_enumerationMutation(v78);
        }

        v83 = *(*(&v113 + 1) + 8 * ii);
        v84 = [(ICTableAttachmentViewController *)self tableLayoutManager];
        v85 = [v84 columnWidthManager];
        [v85 widthOfColumn:v83];
        v87 = v86;

        v88 = [(ICTableAttachmentViewController *)self columnWidthCache];
        [v88 setDimension:v83 forKey:v87];
      }

      v80 = [v78 countByEnumeratingWithState:&v113 objects:v137 count:16];
    }

    while (v80);
  }

  [(ICTableAttachmentViewController *)self redraw];
  v4 = v106;
  v7 = v107;
  v3 = v105;
LABEL_73:
  v89 = [(ICTableAttachmentViewController *)self columnsBeforeMerge];
  [v89 removeAllObjects];

  v90 = [(ICTableAttachmentViewController *)self rowsBeforeMerge];
  [v90 removeAllObjects];

  v91 = [(ICTableAttachmentViewController *)self visibleEmptyCellsBeforeMerge];
  v110[0] = MEMORY[0x277D85DD0];
  v110[1] = 3221225472;
  v110[2] = __59__ICTableAttachmentViewController_tableAttachmentDidChange__block_invoke;
  v110[3] = &unk_2781AE2A0;
  v111 = v3;
  v112 = self;
  v92 = v3;
  [v91 enumerateKeysAndObjectsUsingBlock:v110];

  v93 = [(ICTableAttachmentViewController *)self visibleEmptyCellsBeforeMerge];
  [v93 removeAllObjects];

  v94 = [(ICTableAttachmentViewController *)self tableSelection];
  v95 = [(ICTableAttachmentViewController *)self tableSelectionBeforeMerge];
  v96 = [v94 isEqual:v95];

  if (v96)
  {
    v97 = [(ICTableAttachmentViewController *)self stringSelectionBeforeMerge];

    if (v97)
    {
      v98 = [(ICTableAttachmentViewController *)self currentlyEditingTextStorage];
      v99 = [(ICTableAttachmentViewController *)self stringSelectionBeforeMerge];
      [v98 restoreSelection:v99];
LABEL_78:

      v7 = v107;
    }
  }

  else if ([v94 type] == 1)
  {
    v98 = [v94 columns];
    v99 = [v98 objectAtIndexedSubscript:0];
    v100 = [v94 rows];
    v101 = [v100 objectAtIndexedSubscript:0];
    [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:v99 andRowID:v101 location:[(ICTableAttachmentViewController *)self preferredNavigationSelection]];

    goto LABEL_78;
  }
}

void __59__ICTableAttachmentViewController_tableAttachmentDidChange__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [a3 copy];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [*(a1 + 32) mergeableStringForColumnID:v5 rowID:v11];
        if (v12)
        {
          v13 = [*(a1 + 40) tableLayoutManager];
          v14 = [v13 columnLayoutManagerForColumn:v5];

          [v14 ensureCellExistsAtRowID:v11];
          [*(a1 + 40) tableValueDidChangeAtColumnID:v5 rowID:v11 delta:{objc_msgSend(v12, "length")}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)postChangeNotification:(unint64_t)a3 columnOrRowUUIDs:(id)a4
{
  v14[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v13[0] = @"ICTableAttachmentViewControllerKey";
  v13[1] = @"ICTableAttachmentViewControllerChangeKindKey";
  v14[0] = self;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v14[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  if (v6)
  {
    v9 = [v8 mutableCopy];
    [v9 setObject:v6 forKeyedSubscript:@"ICTableAttachmentViewControllerColumnOrRowUUIDsKey"];
    v10 = [v9 copy];

    v8 = v10;
  }

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  v12 = [(ICTableAttachmentViewController *)self table];
  [v11 postNotificationName:@"ICTableAttachmentViewControllerDidChangeNotification" object:v12 userInfo:v8];
}

- (void)tableAttachmentViewControllerDidChange:(id)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  v6 = [(ICTableAttachmentViewController *)self table];

  if (v5 == v6)
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKeyedSubscript:@"ICTableAttachmentViewControllerKey"];
    if (v8 == self)
    {
LABEL_45:

      goto LABEL_46;
    }

    v9 = [v7 objectForKeyedSubscript:@"ICTableAttachmentViewControllerChangeKindKey"];
    v10 = [v9 unsignedIntegerValue];

    v11 = [v7 objectForKeyedSubscript:@"ICTableAttachmentViewControllerColumnOrRowUUIDsKey"];
    v12 = v11;
    v45 = v8;
    if (v10 > 3)
    {
      if (v10 != 4)
      {
        if (v10 == 6)
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v20 = [v11 countByEnumeratingWithState:&v46 objects:v62 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v47;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v47 != v22)
                {
                  objc_enumerationMutation(v12);
                }

                v24 = *(*(&v46 + 1) + 8 * i);
                v25 = [(ICTableAttachmentViewController *)self tableLayoutManager];
                [v25 updateForMovedRow:v24];
              }

              v21 = [v12 countByEnumeratingWithState:&v46 objects:v62 count:16];
            }

            while (v21);
          }
        }

        goto LABEL_44;
      }

      v38 = [(ICTableAttachmentViewController *)self tableSelection];
      v39 = [v38 removeColumns:MEMORY[0x277CBEBF8] rows:v12];

      if ((v39 & 1) == 0)
      {
        [(ICTableAttachmentViewController *)self beginEditingNoteAtOffset:1];
      }

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v15 = v12;
      v40 = [v15 countByEnumeratingWithState:&v50 objects:v63 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v51;
        do
        {
          for (j = 0; j != v41; ++j)
          {
            if (*v51 != v42)
            {
              objc_enumerationMutation(v15);
            }

            [(ICTableAttachmentViewController *)self cleanDeletedRow:*(*(&v50 + 1) + 8 * j)];
          }

          v41 = [v15 countByEnumeratingWithState:&v50 objects:v63 count:16];
        }

        while (v41);
      }
    }

    else if (v10)
    {
      if (v10 != 3)
      {
LABEL_44:
        [(ICTableAttachmentViewController *)self redraw];

        v8 = v45;
        goto LABEL_45;
      }

      v13 = [(ICTableAttachmentViewController *)self tableSelection];
      v14 = [v13 removeColumns:v12 rows:MEMORY[0x277CBEBF8]];

      if ((v14 & 1) == 0)
      {
        [(ICTableAttachmentViewController *)self beginEditingNoteAtOffset:1];
      }

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v15 = v12;
      v16 = [v15 countByEnumeratingWithState:&v54 objects:v64 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v55;
        do
        {
          for (k = 0; k != v17; ++k)
          {
            if (*v55 != v18)
            {
              objc_enumerationMutation(v15);
            }

            [(ICTableAttachmentViewController *)self cleanDeletedColumn:*(*(&v54 + 1) + 8 * k)];
          }

          v17 = [v15 countByEnumeratingWithState:&v54 objects:v64 count:16];
        }

        while (v17);
      }
    }

    else
    {
      v44 = v7;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v26 = [v11 countByEnumeratingWithState:&v58 objects:v65 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v59;
        do
        {
          for (m = 0; m != v27; ++m)
          {
            if (*v59 != v28)
            {
              objc_enumerationMutation(v12);
            }

            v30 = *(*(&v58 + 1) + 8 * m);
            v31 = [(ICTableAttachmentViewController *)self tableLayoutManager];
            v32 = [v31 columnWidthManager];
            [v32 widthOfColumn:v30];
            v34 = v33;

            v35 = [(ICTableAttachmentViewController *)self columnWidthCache];
            [v35 setDimension:v30 forKey:v34];
          }

          v27 = [v12 countByEnumeratingWithState:&v58 objects:v65 count:16];
        }

        while (v27);
      }

      v15 = [(ICTableAttachmentViewController *)self tableLayoutManager];
      v36 = [v15 columnWidthManager];
      v37 = [v36 invalidateAvailableWidth];

      v7 = v44;
    }

    goto LABEL_44;
  }

LABEL_46:
}

- (void)willFlashAuthorHighlights
{
  v3 = [(ICTableAttachmentViewController *)self cellTimestampsBeforeMerge];

  if (!v3)
  {
    v4 = MEMORY[0x277CBEB38];
    v5 = [(ICTableAttachmentViewController *)self table];
    v6 = [v4 dictionaryWithCapacity:{objc_msgSend(v5, "columnCount")}];

    v7 = [(ICTableAttachmentViewController *)self table];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __60__ICTableAttachmentViewController_willFlashAuthorHighlights__block_invoke;
    v13 = &unk_2781AE2C8;
    v14 = self;
    v15 = v6;
    v8 = v6;
    [v7 enumerateCellObjectsInCellSelectionContainingColumnIndices:0 rowIndices:0 copyItems:0 usingBlock:&v10];

    v9 = [v8 copy];
    [(ICTableAttachmentViewController *)self setCellTimestampsBeforeMerge:v9];
  }
}

uint64_t __60__ICTableAttachmentViewController_willFlashAuthorHighlights__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 table];
  v10 = [v9 identifierForColumnAtIndex:a3];

  v11 = [*(a1 + 32) table];
  v12 = [v11 identifierForRowAtIndex:a4];

  v13 = [*(a1 + 40) objectForKeyedSubscript:v10];
  if (v13)
  {
    [*(a1 + 40) setObject:v13 forKeyedSubscript:v10];
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x277CBEB38]);
    v15 = [*(a1 + 32) table];
    v16 = [v14 initWithCapacity:{objc_msgSend(v15, "rowCount")}];
    [*(a1 + 40) setObject:v16 forKeyedSubscript:v10];
  }

  v17 = [v8 timestamp];

  v18 = [v17 copy];
  v19 = [*(a1 + 40) objectForKeyedSubscript:v10];
  [v19 setObject:v18 forKeyedSubscript:v12];

  return 0;
}

- (void)flashAuthorHighlightsIfNeeded
{
  v3 = [(ICTableAttachmentViewController *)self cellTimestampsBeforeMerge];
  if (v3)
  {
    v4 = v3;
    v5 = [(ICAttachmentViewController *)self attachment];
    v6 = [v5 note];
    v7 = [v6 isSharedViaICloud];

    if (v7)
    {
      v12[0] = 0;
      v12[1] = v12;
      v12[2] = 0x2020000000;
      v8 = [(ICTableAttachmentViewController *)self textViewManager];
      v9 = [v8 anchorColumn];

      v12[3] = v9;
      v10 = [(ICTableAttachmentViewController *)self textViewManager];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __64__ICTableAttachmentViewController_flashAuthorHighlightsIfNeeded__block_invoke;
      v11[3] = &unk_2781AE368;
      v11[4] = self;
      v11[5] = v12;
      [v10 enumerateTextViewsWithBlock:v11];

      [(ICTableAttachmentViewController *)self setCellTimestampsBeforeMerge:0];
      _Block_object_dispose(v12, 8);
    }
  }
}

void __64__ICTableAttachmentViewController_flashAuthorHighlightsIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [*(a1 + 32) table];
  v6 = [MEMORY[0x277CCAA78] indexSetWithIndex:*(*(*(a1 + 40) + 8) + 24)];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __64__ICTableAttachmentViewController_flashAuthorHighlightsIfNeeded__block_invoke_2;
  v28[3] = &unk_2781AE318;
  v28[4] = *(a1 + 32);
  v7 = v3;
  v29 = v7;
  v8 = v4;
  v30 = v8;
  [v5 enumerateCellObjectsInCellSelectionContainingColumnIndices:v6 rowIndices:0 copyItems:0 usingBlock:v28];

  if ([v8 count])
  {
    objc_opt_class();
    v9 = [*(a1 + 32) attachment];
    v10 = [v9 note];
    v11 = [v10 textStorage];
    v12 = [v11 styler];
    v13 = ICDynamicCast();

    v14 = [v13 authorHighlightsController];
    v15 = [v7 TTTextStorage];
    v16 = [v15 ic_range];
    v18 = v17;
    v19 = [v7 TTTextStorage];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __64__ICTableAttachmentViewController_flashAuthorHighlightsIfNeeded__block_invoke_4;
    v23[3] = &unk_2781AE340;
    v24 = v8;
    v25 = v13;
    v20 = v7;
    v21 = *(a1 + 32);
    v26 = v20;
    v27 = v21;
    v22 = v13;
    [v14 performHighlightUpdatesForRange:v16 inTextStorage:v18 updates:{v19, v23}];
  }

  ++*(*(*(a1 + 40) + 8) + 24);
}

uint64_t __64__ICTableAttachmentViewController_flashAuthorHighlightsIfNeeded__block_invoke_2(id *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[4];
  v8 = a2;
  v9 = [v7 table];
  v10 = [v9 identifierForColumnAtIndex:a3];

  v11 = [a1[4] table];
  v12 = [v11 identifierForRowAtIndex:a4];

  v13 = [a1[4] cellTimestampsBeforeMerge];
  v14 = [v13 objectForKeyedSubscript:v10];
  v15 = [v14 objectForKeyedSubscript:v12];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __64__ICTableAttachmentViewController_flashAuthorHighlightsIfNeeded__block_invoke_3;
  v18[3] = &unk_2781AE2F0;
  v19 = a1[5];
  v20 = v12;
  v21 = a1[6];
  v16 = v12;
  [v8 enumerateHighlightableRangesModifiedAfter:v15 includingAttributes:0 usingBlock:v18];

  return 0;
}

void __64__ICTableAttachmentViewController_flashAuthorHighlightsIfNeeded__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) columnTextStorage];
  v7 = [v6 characterRangeForRowID:*(a1 + 40)];

  v8 = *(a1 + 48);
  v9 = [MEMORY[0x277CCAE60] valueWithRange:{v7 + a2, a3}];
  [v8 addObject:v9];
}

void __64__ICTableAttachmentViewController_flashAuthorHighlightsIfNeeded__block_invoke_4(id *a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = a1[4];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        v11 = [a1[5] authorHighlightsController];
        v12 = [v10 rangeValue];
        v14 = v13;
        v15 = [a1[6] TTTextStorage];
        [v11 extendHighlightsForRange:v12 inTextStorage:{v14, v15}];

        v16 = [a1[7] note];
        if ([v16 isSharedViaICloud])
        {
          v17 = [a1[7] note];
          v18 = [v17 isFastSyncSessionActive];

          if (v18)
          {
            goto LABEL_10;
          }

          v16 = [a1[5] authorHighlightsController];
          v19 = [a1[6] TTTextStorage];
          [v16 flashHighlightsForRange:a2 withDuration:a3 inTextStorage:{0, v19}];
        }

LABEL_10:
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }
}

- (double)availableWidth
{
  v3 = [(ICAttachmentViewController *)self textAttachment];
  if (!v3)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((textAttachment) != nil)" functionName:"-[ICTableAttachmentViewController availableWidth]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "textAttachment"}];
  }

  if (![(ICAttachmentViewController *)self forManualRendering])
  {
    v6 = [(ICTableAttachmentViewController *)self noteTextView];
    v7 = [v6 textContainer];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v9 = [(ICTableAttachmentViewController *)self noteLayoutManager];
      v10 = [v9 textContainers];
      v8 = [v10 firstObject];

      if (!v8)
      {
        [v3 lastAvailableWidth];
        if (v13 == 0.0)
        {
          v5 = 42.0;
        }

        else
        {
          v5 = v13;
        }

        goto LABEL_9;
      }
    }

    [v3 availableWidthForTextContainer:v8];
    v5 = v11;

LABEL_9:
    goto LABEL_10;
  }

  [v3 lastAvailableWidth];
  v5 = v4;
LABEL_10:

  return v5;
}

- (void)updateWidthsForChangeInColumn:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICTableAttachmentViewController *)self tableLayoutManager];
  v6 = [v5 columnWidthManager];
  v9[0] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v8 = [v6 invalidateWidthForColumns:v7];

  if ([v8 count])
  {
    [(ICTableAttachmentViewController *)self redraw];
  }
}

- (void)updateColumnWidthForColumn:(id)a3
{
  v4 = a3;
  v5 = [(ICTableAttachmentViewController *)self columnsNeedingWidthUpdate];
  [v5 addObject:v4];

  [(ICTableAttachmentViewController *)self updateEditedColumnWidths];
}

- (BOOL)updateAllColumnWidths
{
  v3 = [(ICTableAttachmentViewController *)self textViewManager];
  v4 = [v3 columnIDs];
  v5 = [v4 count];

  if (v5 <= *MEMORY[0x277D36600])
  {
    v6 = *MEMORY[0x277D36600];
  }

  else
  {
    v6 = v5;
  }

  v7 = [(ICTableAttachmentViewController *)self table];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__ICTableAttachmentViewController_updateAllColumnWidths__block_invoke;
  v9[3] = &unk_2781AE390;
  v9[4] = self;
  v9[5] = v6;
  [v7 enumerateColumnsWithBlock:v9];

  return [(ICTableAttachmentViewController *)self updateEditedColumnWidths];
}

void __56__ICTableAttachmentViewController_updateAllColumnWidths__block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 columnsNeedingWidthUpdate];
  [v9 addObject:v8];

  if (*(a1 + 40) <= a3)
  {
    *a4 = 1;
  }
}

- (void)updateAllColumnWidthsAndRedraw
{
  if (![(ICTableAttachmentViewController *)self updateAllColumnWidths])
  {

    [(ICTableAttachmentViewController *)self redraw];
  }
}

- (BOOL)updateEditedColumnWidths
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICTableAttachmentViewController updateEditedColumnWidths]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  v3 = [(ICTableAttachmentViewController *)self currentlyEditingTextStorage];
  v4 = [v3 isEditingOrConvertingMarkedText:0];

  if (v4)
  {
    [(ICTableAttachmentViewController *)self updateEditedColumnWidthsAfterDelay];
    return 0;
  }

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_updateEditedColumnWidths object:0];
  v5 = [(ICTableAttachmentViewController *)self columnsNeedingWidthUpdate];
  v6 = [v5 count];

  if (!v6)
  {
    return 0;
  }

  v7 = [(ICTableAttachmentViewController *)self tableLayoutManager];
  v8 = [v7 columnWidthManager];

  v9 = [(ICTableAttachmentViewController *)self columnsNeedingWidthUpdate];
  v10 = [v9 allObjects];
  v11 = [v8 invalidateWidthForColumns:v10];

  if (![v11 count])
  {
    v18 = [(ICTableAttachmentViewController *)self columnsNeedingWidthUpdate];
    [v18 removeAllObjects];

    return 0;
  }

  [(ICTableAttachmentViewController *)self redraw];
  v12 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];

  if (v12)
  {
    v13 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
    [(ICTableAttachmentViewController *)self scrollToCaretIfNeededForTextView:v13];
  }

  v14 = [(ICTableAttachmentViewController *)self columnsNeedingWidthUpdate];
  [v14 removeAllObjects];

  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  v16 = [(ICTableAttachmentViewController *)self noteTextView];
  [v15 postNotificationName:@"ICTextViewLayoutDidChangeNotification" object:v16];

  return 1;
}

- (void)updateEditedColumnWidthsAfterDelay
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_updateEditedColumnWidths object:0];
  v3 = *MEMORY[0x277D36648];

  [(ICTableAttachmentViewController *)self performSelector:sel_updateEditedColumnWidths withObject:0 afterDelay:v3];
}

- (void)updateAvailableWidth
{
  [(ICTableAttachmentViewController *)self availableWidth];
  v4 = v3;
  [(ICTableAttachmentViewController *)self previousAvailableWidth];
  if (v4 != v5)
  {
    [(ICTableAttachmentViewController *)self setPreviousAvailableWidth:v4];
    v6 = [(ICTableAttachmentViewController *)self tableLayoutManager];
    v7 = [v6 columnWidthManager];
    v8 = [v7 invalidateAvailableWidth];

    [(ICTableAttachmentViewController *)self redraw];
  }
}

- (void)saveOnMainThread
{
  [(ICTableAttachmentViewController *)self setNumberOfBouncedMainThreadSaves:0];

  [(ICTableAttachmentViewController *)self saveAttachmentChangesInBackground:0];
}

- (void)saveOnMainThreadAfterDelay
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_saveOnMainThread object:0];
  [(ICTableAttachmentViewController *)self setNumberOfBouncedMainThreadSaves:[(ICTableAttachmentViewController *)self numberOfBouncedMainThreadSaves]+ 1];
  if ([(ICTableAttachmentViewController *)self numberOfBouncedMainThreadSaves]< 0xF)
  {
    v3 = [(ICAttachmentViewController *)self attachment];
    v4 = [v3 note];
    if ([v4 isFastSyncSessionActive])
    {
      v5 = *MEMORY[0x277D36A00];
    }

    else
    {
      v5 = 0.5;
    }

    [(ICTableAttachmentViewController *)self performSelector:sel_saveOnMainThread withObject:0 afterDelay:v5];
  }

  else
  {

    [(ICTableAttachmentViewController *)self saveOnMainThread];
  }
}

- (void)save
{
  v3 = [(ICAttachmentViewController *)self attachment];
  v4 = [v3 isReadOnly];

  if ((v4 & 1) == 0)
  {
    v5 = [(ICTableAttachmentViewController *)self currentlyEditingTextStorage];
    v6 = [v5 isEditingOrConvertingMarkedText:0];

    if (v6)
    {

      [(ICTableAttachmentViewController *)self saveAfterDelay];
    }

    else
    {

      [(ICTableAttachmentViewController *)self saveAttachmentChangesInBackground:1];
    }
  }
}

- (void)saveAfterDelay
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_save object:0];
  v3 = [(ICAttachmentViewController *)self attachment];
  v4 = [v3 note];
  v5 = [v4 isFastSyncSessionActive];
  v6 = MEMORY[0x277D36A00];
  if (!v5)
  {
    v6 = MEMORY[0x277D369F8];
  }

  v7 = *v6;

  [(ICTableAttachmentViewController *)self performSelector:sel_save withObject:0 afterDelay:v7];
}

- (void)initializeTableAccessibilityControllerIfNecessary
{
  v3 = [(ICTableAttachmentViewController *)self tableAXController];

  if (!v3)
  {
    v4 = [[ICTableAccessibilityController alloc] initWithTableAttachmentViewController:self];
    [(ICTableAttachmentViewController *)self setTableAXController:v4];
  }
}

- (void)announceCellRangeSelectionChangeForAccessibilityIfNecessary
{
  v3 = [(ICTableAttachmentViewController *)self tableSelection];
  v4 = [(ICTableAttachmentViewController *)self previousAXTableSelection];
  v5 = [v3 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [(ICTableAttachmentViewController *)self tableAXController];
    v7 = [(ICTableAttachmentViewController *)self tableSelection];
    [v6 speakCellRangeSelection:v7];

    v9 = [(ICTableAttachmentViewController *)self tableSelection];
    v8 = [v9 copy];
    [(ICTableAttachmentViewController *)self setPreviousAXTableSelection:v8];
  }
}

- (void)initializeTableLayout
{
  v33 = [(ICTableAttachmentViewController *)self table];
  v3 = [[ICTableLayoutManager alloc] initWithTable:v33 delegate:self];
  tableLayoutManager = self->_tableLayoutManager;
  self->_tableLayoutManager = v3;

  v5 = [v33 cellChangeNotifier];
  [v5 addObserver:self];

  v6 = [v33 columnCount];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:v6];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v9 = [v33 identifierForColumnAtIndex:i];
      [v7 addObject:v9];
    }
  }

  v10 = [v33 rowCount];
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:v10];
  if (v10)
  {
    for (j = 0; j != v10; ++j)
    {
      v13 = [v33 identifierForRowAtIndex:j];
      [v11 addObject:v13];
    }
  }

  v14 = [(ICTableLayoutManager *)self->_tableLayoutManager columnWidthManager];
  [v14 singleColumnTableWidth];
  v16 = v15;

  v17 = [objc_alloc(MEMORY[0x277D35EB8]) initWithKeys:v7 andEstimateDimension:v16];
  columnWidthCache = self->_columnWidthCache;
  self->_columnWidthCache = v17;

  v19 = [objc_alloc(MEMORY[0x277D35EB8]) initWithKeys:v11 andEstimateDimension:44.0];
  rowHeightCache = self->_rowHeightCache;
  self->_rowHeightCache = v19;

  v21 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v33, "rowCount")}];
  cellHeightCache = self->_cellHeightCache;
  self->_cellHeightCache = v21;

  v23 = [MEMORY[0x277CBEB38] dictionary];
  visibleEmptyCellsBeforeMerge = self->_visibleEmptyCellsBeforeMerge;
  self->_visibleEmptyCellsBeforeMerge = v23;

  v25 = MEMORY[0x277CBEB40];
  v26 = [(ICTableAttachmentViewController *)self table];
  v27 = [v25 orderedSetWithCapacity:{objc_msgSend(v26, "columnCount")}];
  columnsBeforeMerge = self->_columnsBeforeMerge;
  self->_columnsBeforeMerge = v27;

  v29 = MEMORY[0x277CBEB40];
  v30 = [(ICTableAttachmentViewController *)self table];
  v31 = [v29 orderedSetWithCapacity:{objc_msgSend(v30, "rowCount")}];
  rowsBeforeMerge = self->_rowsBeforeMerge;
  self->_rowsBeforeMerge = v31;
}

- (CGPoint)initialDragOffset
{
  x = self->_initialDragOffset.x;
  y = self->_initialDragOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)currentDragGestureLocation
{
  x = self->_currentDragGestureLocation.x;
  y = self->_currentDragGestureLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (ICLayoutManager)noteLayoutManager
{
  WeakRetained = objc_loadWeakRetained(&self->_noteLayoutManager);

  return WeakRetained;
}

- (ICTK2TextLayoutManager)noteTextLayoutManager
{
  WeakRetained = objc_loadWeakRetained(&self->_noteTextLayoutManager);

  return WeakRetained;
}

- (CGRect)editingViewport
{
  x = self->_editingViewport.origin.x;
  y = self->_editingViewport.origin.y;
  width = self->_editingViewport.size.width;
  height = self->_editingViewport.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)transitionViewport
{
  x = self->_transitionViewport.origin.x;
  y = self->_transitionViewport.origin.y;
  width = self->_transitionViewport.size.width;
  height = self->_transitionViewport.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)proposedLineFragmentRect
{
  x = self->_proposedLineFragmentRect.origin.x;
  y = self->_proposedLineFragmentRect.origin.y;
  width = self->_proposedLineFragmentRect.size.width;
  height = self->_proposedLineFragmentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (_NSRange)characterRangeForRange:(_NSRange)a3 inString:(id)a4 forLayoutManager:(id)a5
{
  length = a3.length;
  location = a3.location;
  v9 = a4;
  v10 = a5;
  v11 = [v9 attribute:@"SearchTableRow" atIndex:location effectiveRange:0];
  v12 = [(ICTableAttachmentViewController *)self table];
  v13 = [v12 identifierForRowAtIndex:{objc_msgSend(v11, "unsignedIntegerValue")}];

  if ((ICInternalSettingsIsAsyncFindEnabled() & 1) == 0)
  {
    v19[0] = 0;
    v19[1] = 0;
    v14 = [v9 attribute:@"SearchTableColumn" atIndex:location effectiveRange:v19];
    location -= v19[0];
  }

  v15 = [v10 columnTextStorage];
  v16 = [v15 characterRangeForRowID:v13];

  v17 = v16 + location;
  v18 = length;
  result.length = v18;
  result.location = v17;
  return result;
}

- (_NSRange)columnGlyphRangeForRange:(_NSRange)a3 inString:(id)a4 forLayoutManager:(id)a5
{
  length = a3.length;
  location = a3.location;
  v9 = a5;
  v10 = [(ICTableAttachmentViewController *)self characterRangeForRange:location inString:length forLayoutManager:a4, v9];
  v12 = [v9 glyphRangeForCharacterRange:v10 actualCharacterRange:{v11, 0}];
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.length = v16;
  result.location = v15;
  return result;
}

- (id)viewForRange:(_NSRange)a3 inFindableString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  if (location + length <= [v7 length])
  {
    v9 = [v7 attribute:@"SearchTableColumn" atIndex:location effectiveRange:0];
    v10 = v9;
    if (v9 && (v11 = [v9 unsignedIntegerValue], -[ICTableAttachmentViewController table](self, "table"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "columnCount"), v12, v11 < v13))
    {
      v14 = [(ICTableAttachmentViewController *)self table];
      v15 = [v14 identifierForColumnAtIndex:{objc_msgSend(v10, "unsignedIntegerValue")}];

      v16 = [(ICTableAttachmentViewController *)self textViewManager];
      v8 = [v16 textViewForColumn:v15 createIfNeeded:1];

      v17 = [v7 attribute:@"SearchTableRow" atIndex:location effectiveRange:0];
      v18 = v17;
      if (v17)
      {
        v19 = [v17 unsignedIntegerValue];
        v20 = [(ICTableAttachmentViewController *)self table];
        v21 = [v20 rowCount];

        if (v19 < v21)
        {
          v22 = [(ICTableAttachmentViewController *)self table];
          v23 = [v22 identifierForRowAtIndex:{objc_msgSend(v18, "unsignedIntegerValue")}];

          v24 = [(ICTableAttachmentViewController *)self textViewManager];
          [v24 ensureCellPositionForColumn:v15 andRow:v23];
        }
      }
    }

    else
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICTableAttachmentViewController(Findable) viewForRange:inFindableString:]" simulateCrash:1 showAlert:0 format:{@"No findable view found, since string lacks column attribute"}];
      v8 = [(ICTableAttachmentViewController *)self view];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)rectsForRange:(_NSRange)a3 inFindableString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  objc_opt_class();
  v8 = [(ICTableAttachmentViewController *)self viewForRange:location inFindableString:length, v7];
  v9 = ICDynamicCast();

  objc_opt_class();
  v10 = [v9 layoutManager];
  v11 = ICDynamicCast();

  v12 = [(ICTableAttachmentViewController *)self columnGlyphRangeForRange:location inString:length forLayoutManager:v7, v11];
  v14 = v13;

  v15 = [v11 rectsForGlyphRange:{v12, v14}];

  return v15;
}

- (void)scrollToRange:(_NSRange)a3 inFindableString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v37 = *MEMORY[0x277D85DE8];
  v7 = a4;
  objc_opt_class();
  v8 = [(ICTableAttachmentViewController *)self viewForRange:location inFindableString:length, v7];
  v9 = ICDynamicCast();

  if (v9)
  {
    x = *MEMORY[0x277CBF398];
    y = *(MEMORY[0x277CBF398] + 8);
    width = *(MEMORY[0x277CBF398] + 16);
    height = *(MEMORY[0x277CBF398] + 24);
    v14 = [(ICTableAttachmentViewController *)self rectsForRange:location inFindableString:length, v7];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v33;
      do
      {
        v18 = 0;
        do
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v32 + 1) + 8 * v18) CGRectValue];
          v40.origin.x = v19;
          v40.origin.y = v20;
          v40.size.width = v21;
          v40.size.height = v22;
          v38.origin.x = x;
          v38.origin.y = y;
          v38.size.width = width;
          v38.size.height = height;
          v39 = CGRectUnion(v38, v40);
          x = v39.origin.x;
          y = v39.origin.y;
          width = v39.size.width;
          height = v39.size.height;
          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v16);
    }

    v23 = [(ICTableAttachmentViewController *)self tableContentView];
    [v23 convertRect:v9 fromView:{x, y, width, height}];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    [(ICTableAttachmentViewController *)self scrollToRect:0 animated:0 completion:v25, v27, v29, v31];
  }
}

- (void)drawCharactersInRange:(_NSRange)a3 inFindableString:(id)a4 forContentView:(id)a5
{
  length = a3.length;
  location = a3.location;
  v19 = a4;
  v9 = a5;
  objc_opt_class();
  v10 = ICDynamicCast();

  objc_opt_class();
  v11 = [v10 layoutManager];
  v12 = ICDynamicCast();

  if (v12)
  {
    v13 = [(ICTableAttachmentViewController *)self columnGlyphRangeForRange:location inString:length forLayoutManager:v19, v12];
    v15 = v14;
    [v10 textContainerInset];
    v17 = v16;
    [v10 textContainerInset];
    [v12 drawGlyphsForGlyphRange:v13 atPoint:{v15, v17, v18}];
  }
}

- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4 inFindableString:(id)a5
{
  length = a3.length;
  location = a3.location;
  v9 = a5;
  v10 = a4;
  objc_opt_class();
  v11 = [(ICTableAttachmentViewController *)self viewForRange:location inFindableString:length, v9];
  v18 = ICDynamicCast();

  objc_opt_class();
  v12 = [v18 layoutManager];
  v13 = ICDynamicCast();

  v14 = [(ICTableAttachmentViewController *)self characterRangeForRange:location inString:length forLayoutManager:v9, v13];
  v16 = v15;

  v17 = [v18 textStorage];
  [v17 replaceCharactersInRange:v14 withString:{v16, v10}];

  [(ICTableAttachmentViewController *)self saveOnMainThread];
}

- (void)setSelectedRange:(_NSRange)a3 inFindableString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  objc_opt_class();
  v8 = [(ICTableAttachmentViewController *)self viewForRange:location inFindableString:length, v7];
  v14 = ICDynamicCast();

  objc_opt_class();
  v9 = [v14 layoutManager];
  v10 = ICDynamicCast();

  v11 = [(ICTableAttachmentViewController *)self characterRangeForRange:location inString:length forLayoutManager:v7, v10];
  v13 = v12;

  [v14 setSelectedRange:{v11, v13}];
}

- (_NSRange)selectedRangeWithinRange:(_NSRange)a3 inFindableString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v48 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v7 = [(ICTableAttachmentViewController *)self textViewManager];
  v8 = [v7 columnIDs];

  v9 = [v8 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v9)
  {
    v10 = *v44;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v43 + 1) + 8 * v11);
        v13 = [(ICTableAttachmentViewController *)self textViewManager];
        v14 = [v13 textViewForColumn:v12];

        [v14 selectedRange];
        if (v15)
        {
          v9 = v12;
          v38 = 0;
          v39 = 0;
          v19 = [v14 columnTextStorage];
          v16 = [v19 rowAtIndex:objc_msgSend(v14 rowRange:{"selectedRange"), &v38}];

          v20 = [v14 selectedRange];
          v21 = v38;
          [v14 selectedRange];
          v17 = v22;

          v18 = v20 - v21;
          goto LABEL_11;
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
  v17 = 0;
  v18 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_11:

  v38 = 0;
  v39 = &v38;
  v40 = 0x3010000000;
  v41 = &unk_21552D17E;
  v42 = xmmword_2154BBE70;
  if (v17)
  {
    v23 = [(ICTableAttachmentViewController *)self table];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __87__ICTableAttachmentViewController_Findable__selectedRangeWithinRange_inFindableString___block_invoke;
    v30[3] = &unk_2781AF678;
    v31 = v6;
    v24 = v23;
    v32 = v24;
    v33 = v9;
    v34 = v16;
    v35 = &v38;
    v36 = v18;
    v37 = v17;
    [v31 enumerateAttributesInRange:location options:length usingBlock:{0, v30}];

    v26 = v39[4];
    v25 = v39[5];
  }

  else
  {
    v25 = 0;
    v26 = 0x7FFFFFFFFFFFFFFFLL;
  }

  _Block_object_dispose(&v38, 8);

  v27 = v26;
  v28 = v25;
  result.length = v28;
  result.location = v27;
  return result;
}

void __87__ICTableAttachmentViewController_Findable__selectedRangeWithinRange_inFindableString___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v13 = [*(a1 + 32) attribute:@"SearchTableColumn" atIndex:a3 effectiveRange:0];
  v8 = [*(a1 + 32) attribute:@"SearchTableRow" atIndex:a3 effectiveRange:0];
  v9 = [*(a1 + 40) identifierForColumnAtIndex:{objc_msgSend(v13, "unsignedIntegerValue")}];
  v10 = [*(a1 + 40) identifierForRowAtIndex:{objc_msgSend(v8, "unsignedIntegerValue")}];
  if ([v9 isEqual:*(a1 + 48)] && objc_msgSend(v10, "isEqual:", *(a1 + 56)))
  {
    v11 = *(a1 + 80);
    v12 = *(*(a1 + 64) + 8);
    *(v12 + 32) = *(a1 + 72) + a3;
    *(v12 + 40) = v11;
    *a5 = 1;
  }
}

- (void)tappedTableAtLocation:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 table];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_2151A1000, a2, OS_LOG_TYPE_ERROR, "tappedTableAtLocation: Unable to find cell for tapped location in table: %@", &v4, 0xCu);
}

@end