@interface ICTableAttachmentViewController
- (BOOL)acceptsKeystrokes;
- (BOOL)allowsNewTextLength:(unint64_t)length;
- (BOOL)containedInNoteSelection;
- (BOOL)isInResponderChain;
- (BOOL)isNoteEditable;
- (BOOL)makeSpaceToPasteSourceTable:(id)table;
- (BOOL)pasteCellRange;
- (BOOL)updateAllColumnWidths;
- (BOOL)updateEditedColumnWidths;
- (CGPoint)currentDragGestureLocation;
- (CGPoint)initialDragOffset;
- (CGRect)editingViewport;
- (CGRect)frameOfCellForColumnTextView:(id)view row:(id)row;
- (CGRect)proposedLineFragmentRect;
- (CGRect)selectionFrameFromContentFrame:(CGRect)frame;
- (CGRect)transitionViewport;
- (CGRect)viewport;
- (CGSize)intrinsicSize;
- (ICEditingTextView)noteTextView;
- (ICLayoutManager)noteLayoutManager;
- (ICTK2TextLayoutManager)noteTextLayoutManager;
- (ICTable)table;
- (ICTableAttachmentViewController)initWithTextAttachment:(id)attachment forManualRendering:(BOOL)rendering layoutManager:(id)manager;
- (ICTableAttachmentViewController)initWithTextAttachment:(id)attachment forManualRendering:(BOOL)rendering textLayoutManager:(id)manager;
- (NSUndoManager)undoManager;
- (_NSRange)characterRangeForRange:(_NSRange)range inString:(id)string forLayoutManager:(id)manager;
- (_NSRange)columnGlyphRangeForRange:(_NSRange)range inString:(id)string forLayoutManager:(id)manager;
- (_NSRange)selectedRangeWithinRange:(_NSRange)range inFindableString:(id)string;
- (double)availableWidth;
- (id)account;
- (id)attributedStringForTableSelectionInContext:(id)context;
- (id)attributedStringFromPasteboard;
- (id)customPasteboardDataForSelection;
- (id)dataForSelectionOfType:(id)type;
- (id)dataForSelectionWithDocumentAttributes:(id)attributes;
- (id)dragSnapshotFromRect:(CGRect)rect afterScreenUpdates:(BOOL)updates;
- (id)icTableDataForSelection;
- (id)icTableFromPasteboard;
- (id)insertColumns:(unint64_t)columns atIndex:(unint64_t)index;
- (id)namedStylesForCurrentSelectionAndBIUS:(unint64_t *)s emphasisColorType:(int64_t *)type;
- (id)note;
- (id)pasteboardItemsForSelection;
- (id)plainTextDataForSelection;
- (id)rectsForRange:(_NSRange)range inFindableString:(id)string;
- (id)viewForRange:(_NSRange)range inFindableString:(id)string;
- (id)webArchiveDataForSelection;
- (int64_t)textAlignmentForCurrentSelection;
- (int64_t)textDirectionForCurrentSelection;
- (unint64_t)cursorPositionForLocation:(CGPoint)location inTextView:(id)view;
- (unint64_t)selectedStyleBIUS;
- (void)addColumnAfterSelection:(id)selection;
- (void)addColumnAtIndex:(unint64_t)index;
- (void)addColumnBeforeSelection:(id)selection;
- (void)addColumnLeftOfSelection:(id)selection;
- (void)addColumnRightOfSelection:(id)selection;
- (void)addRowAboveSelection:(id)selection;
- (void)addRowAtIndex:(unint64_t)index;
- (void)addRowBelowSelection:(id)selection;
- (void)addUndoCommandsForObject:(id)object block:(id)block;
- (void)announceCellRangeSelectionChangeForAccessibilityIfNecessary;
- (void)applyUndoGroup:(id)group;
- (void)beginEditing;
- (void)beginEditingCellWithColumnID:(id)d andRowID:(id)iD location:(unint64_t)location;
- (void)beginEditingCellWithColumnID:(id)d andRowID:(id)iD textRange:(id)range;
- (void)beginEditingCellWithColumnID:(id)d andRowID:(id)iD touchPoint:(CGPoint)point;
- (void)beginEditingInitialCell;
- (void)beginEditingNoteAtOffset:(int64_t)offset;
- (void)beginEditingSelectedRangeInTextView:(id)view;
- (void)cellRangeDragBeganOnView:(id)view;
- (void)cellRangeDraggedAtLocation:(CGPoint)location;
- (void)cleanDeletedColumn:(id)column;
- (void)cleanDeletedRow:(id)row;
- (void)convertTableToText:(id)text;
- (void)copyTable:(id)table;
- (void)cutSelection:(id)selection;
- (void)dealloc;
- (void)deleteColumns:(id)columns;
- (void)deleteRows:(id)rows;
- (void)deleteSelectedColumns:(id)columns;
- (void)deleteSelectedRows:(id)rows;
- (void)deleteSelection:(id)selection;
- (void)deleteSelectionCellContents;
- (void)deleteTable:(id)table;
- (void)didBeginEditingWithTextView:(id)view;
- (void)didPasteOrDropTextForTableColumnTextView:(id)view;
- (void)dragBeganOnColumnOrRow:(BOOL)row atLocation:(CGPoint)location;
- (void)dragEndedOnColumnOrRow:(BOOL)row atLocation:(CGPoint)location;
- (void)dragMovedOnColumnOrRow:(BOOL)row atLocation:(CGPoint)location;
- (void)drawCharactersInRange:(_NSRange)range inFindableString:(id)string forContentView:(id)view;
- (void)endCellEditingSessionWithTextView:(id)view;
- (void)endEditing;
- (void)extendCellRangeSelectionInDirection:(unint64_t)direction toEnd:(BOOL)end;
- (void)flashAuthorHighlightsIfNeeded;
- (void)hideColumnRowButtons;
- (void)initializeTableAccessibilityControllerIfNecessary;
- (void)initializeTableLayout;
- (void)loadView;
- (void)moveCurrentColumnOrRow:(BOOL)row toIndex:(unint64_t)index;
- (void)moveDownCellAtLocation:(unint64_t)location;
- (void)moveIntoTableWithDirection:(unint64_t)direction;
- (void)moveLeftCell;
- (void)moveNextCell;
- (void)moveNextCellAtLocation:(unint64_t)location;
- (void)moveNextLineAtLocation:(unint64_t)location;
- (void)movePrevCell;
- (void)movePrevCellAtLocation:(unint64_t)location;
- (void)moveReturnCell;
- (void)moveRightCell;
- (void)moveShiftReturnCell;
- (void)moveUpCellAtLocation:(unint64_t)location;
- (void)pasteIntoSelection:(id)selection;
- (void)pasteTable:(id)table atColumnIndex:(unint64_t)index rowIndex:(unint64_t)rowIndex shouldSetSelectionToPastedRange:(BOOL)range;
- (void)performInitialLayoutIfNeeded;
- (void)postChangeNotification:(unint64_t)notification columnOrRowUUIDs:(id)ds;
- (void)prepareForPrinting;
- (void)redraw;
- (void)redrawAndSave;
- (void)removeFromParentViewController;
- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string inFindableString:(id)findableString;
- (void)reverseTableColumnDirection:(id)direction;
- (void)save;
- (void)saveAfterDelay;
- (void)saveAttachmentChangesInBackground:(BOOL)background;
- (void)saveOnMainThread;
- (void)saveOnMainThreadAfterDelay;
- (void)scrollToRange:(_NSRange)range inFindableString:(id)string;
- (void)scrollToSelectionInTextView:(id)view animated:(BOOL)animated completion:(id)completion;
- (void)selectTable;
- (void)selectionDidResignFirstResponder:(id)responder;
- (void)selectionWillBecomeFirstResponder:(id)responder;
- (void)setHidden:(BOOL)hidden forColumn:(id)column;
- (void)setHidden:(BOOL)hidden forRow:(id)row;
- (void)setHighlightColor:(id)color;
- (void)setHighlightPatternRegexFinder:(id)finder;
- (void)setSelectedRange:(_NSRange)range inFindableString:(id)string;
- (void)setSelectionAlignment:(int64_t)alignment;
- (void)setSelectionBIUSStyle:(unint64_t)style toggleOn:(BOOL)on onValue:(id)value;
- (void)setSelectionBIUSStyle:(unint64_t)style toggleOn:(BOOL)on onValue:(id)value withSelection:(id)selection;
- (void)setSelectionDirection:(int64_t)direction;
- (void)setSelectionNamedStyle:(unsigned int)style;
- (void)setSelectionNamedStyle:(unsigned int)style withColumns:(id)columns rows:(id)rows;
- (void)setTypingAttributesForTextView:(id)view;
- (void)setupTableTextView:(id)view;
- (void)showColumnRowButtons;
- (void)tableAttachmentDidChange;
- (void)tableAttachmentProviderDidMergeTable:(id)table;
- (void)tableAttachmentProviderWillMergeTable:(id)table;
- (void)tableAttachmentViewControllerDidChange:(id)change;
- (void)tableAttachmentWillChange;
- (void)tableAutoScroller:(id)scroller scrollOffsetDelta:(CGPoint)delta;
- (void)tableDidInsertColumnID:(id)d;
- (void)tableDidPopulateCellAtColumnIndex:(unint64_t)index rowIndex:(unint64_t)rowIndex;
- (void)tableValueDidChangeAtColumnID:(id)d rowID:(id)iD delta:(int64_t)delta;
- (void)tableWillRemoveColumnID:(id)d;
- (void)tappedTableAtLocation:(CGPoint)location;
- (void)textRangeDragEnded;
- (void)textRangeDraggedAtLocation:(CGPoint)location;
- (void)textStorage:(id)storage didProcessEditing:(unint64_t)editing range:(_NSRange)range changeInLength:(int64_t)length;
- (void)textStorage:(id)storage didReplace:(id)replace with:(id)with;
- (void)toggleBIUS:(unint64_t)s onValue:(id)value;
- (void)toggleTodoStyle:(id)style;
- (void)updateAllColumnWidthsAndRedraw;
- (void)updateAttachmentParagraphForWritingDirection:(int64_t)direction;
- (void)updateAvailableWidth;
- (void)updateButtonFrames;
- (void)updateCellSizeAtColumn:(id)column row:(id)row immediateWidthUpdate:(BOOL)update;
- (void)updateChrome;
- (void)updateColumnWidthForColumn:(id)column;
- (void)updateContentSize;
- (void)updateEditedColumnWidthsAfterDelay;
- (void)updateHeightCacheForColumn:(id)column row:(id)row;
- (void)updateTableCellsWithDirection:(int64_t)direction columnIndexes:(id)indexes rowIndexes:(id)rowIndexes;
- (void)updateTableColumnDirectionForWritingDirection:(int64_t)direction;
- (void)updateTiles;
- (void)updateWidthsForChangeInColumn:(id)column;
- (void)willBeginEditingWithTextView:(id)view;
- (void)willFlashAuthorHighlights;
- (void)zoomFactorOrInsetsDidChange;
@end

@implementation ICTableAttachmentViewController

- (ICTableAttachmentViewController)initWithTextAttachment:(id)attachment forManualRendering:(BOOL)rendering layoutManager:(id)manager
{
  renderingCopy = rendering;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = ICTableAttachmentViewController;
  v9 = [(ICAttachmentViewController *)&v12 initWithTextAttachment:attachment forManualRendering:renderingCopy layoutManager:managerCopy];
  if (v9)
  {
    objc_opt_class();
    v10 = ICCheckedDynamicCast();
    objc_storeWeak(&v9->_noteLayoutManager, v10);
  }

  return v9;
}

- (ICTableAttachmentViewController)initWithTextAttachment:(id)attachment forManualRendering:(BOOL)rendering textLayoutManager:(id)manager
{
  renderingCopy = rendering;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = ICTableAttachmentViewController;
  v9 = [(ICAttachmentViewController *)&v12 initWithTextAttachment:attachment forManualRendering:renderingCopy textLayoutManager:managerCopy];
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
    attachment = [(ICAttachmentViewController *)self attachment];
    v6 = [v4 sharedProviderForAttachment:attachment];
    v7 = self->_tableAttachmentProvider;
    self->_tableAttachmentProvider = v6;

    [(ICTableAttachmentProvider *)self->_tableAttachmentProvider setDelegate:self];
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    coalescingUndoGroupForStringDelegate = self->_coalescingUndoGroupForStringDelegate;
    self->_coalescingUndoGroupForStringDelegate = weakToStrongObjectsMapTable;

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

  columnWidthCache = [(ICTableAttachmentViewController *)self columnWidthCache];
  [columnWidthCache sum];
  v5 = v4;

  rowHeightCache = [(ICTableAttachmentViewController *)self rowHeightCache];
  [rowHeightCache sum];
  v8 = v7;

  if (v5 == 0.0)
  {
    tableLayoutManager = [(ICTableAttachmentViewController *)self tableLayoutManager];
    columnWidthManager = [tableLayoutManager columnWidthManager];
    [columnWidthManager singleColumnTableWidth];
    v5 = v11;
  }

  if (v8 == 0.0)
  {
    tableLayoutManager2 = [(ICTableAttachmentViewController *)self tableLayoutManager];
    [tableLayoutManager2 emptyCellHeight];
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
  attachment = [(ICAttachmentViewController *)self attachment];
  note = [attachment note];
  textStorage = [note textStorage];
  undoManager = [textStorage undoManager];

  return undoManager;
}

- (ICEditingTextView)noteTextView
{
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    objc_opt_class();
    noteTextLayoutManager = [(ICTableAttachmentViewController *)self noteTextLayoutManager];
    textContainer = [noteTextLayoutManager textContainer];
    noteLayoutManager = ICCheckedDynamicCast();

    objc_opt_class();
    [noteLayoutManager tk2TextView];
  }

  else
  {
    objc_opt_class();
    noteLayoutManager = [(ICTableAttachmentViewController *)self noteLayoutManager];
    [noteLayoutManager textView];
  }
  v6 = ;
  v7 = ICDynamicCast();

  return v7;
}

- (BOOL)isNoteEditable
{
  attachment = [(ICAttachmentViewController *)self attachment];
  note = [attachment note];
  isEditable = [note isEditable];

  return isEditable;
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
  view = [(ICTableAttachmentViewController *)self view];
  [view bounds];
  v5 = [(ICTableScrollView *)v3 initWithFrame:?];
  [(ICTableAttachmentViewController *)self setScrollView:v5];

  view2 = [(ICTableAttachmentViewController *)self view];
  scrollView = [(ICTableAttachmentViewController *)self scrollView];
  [view2 addSubview:scrollView];

  v8 = [ICTableContentView alloc];
  v9 = [(ICTableContentView *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  tableContentView = self->_tableContentView;
  self->_tableContentView = v9;

  scrollView2 = [(ICTableAttachmentViewController *)self scrollView];
  tableContentView = [(ICTableAttachmentViewController *)self tableContentView];
  [scrollView2 addSubview:tableContentView];

  v13 = [ICTableClipView alloc];
  view3 = [(ICTableAttachmentViewController *)self view];
  [view3 bounds];
  v15 = [(ICTableClipView *)v13 initWithFrame:0.0, -30.0];
  headerClipView = self->_headerClipView;
  self->_headerClipView = v15;

  view4 = [(ICTableAttachmentViewController *)self view];
  headerClipView = [(ICTableAttachmentViewController *)self headerClipView];
  [view4 addSubview:headerClipView];

  v19 = objc_alloc_init(MEMORY[0x277D36920]);
  tableSelection = self->_tableSelection;
  self->_tableSelection = v19;

  v21 = [ICTableTextViewManager alloc];
  tableLayoutManager = [(ICTableAttachmentViewController *)self tableLayoutManager];
  tableContentView2 = [(ICTableAttachmentViewController *)self tableContentView];
  v24 = [(ICTableTextViewManager *)v21 initWithTableLayoutManager:tableLayoutManager view:tableContentView2 cachedWidths:self->_columnWidthCache cachedRowHeights:self->_rowHeightCache cachedCellHeights:self->_cellHeightCache];
  textViewManager = self->_textViewManager;
  self->_textViewManager = v24;

  [(ICTableTextViewManager *)self->_textViewManager setDelegate:self];
  [(ICTableTextViewManager *)self->_textViewManager updateAuthorHighlights];
  [(ICTableTextViewManager *)self->_textViewManager restyleCells];
  v26 = objc_alloc_init(ICTableSelectionView);
  selectionHighlightView = self->_selectionHighlightView;
  self->_selectionHighlightView = v26;

  [(ICTableSelectionView *)self->_selectionHighlightView setDelegate:self];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v29 = *MEMORY[0x277D35DD0];
  tableAttachmentProvider = [(ICTableAttachmentViewController *)self tableAttachmentProvider];
  [defaultCenter addObserver:self selector:sel_tableAttachmentProviderWillMergeTable_ name:v29 object:tableAttachmentProvider];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  v32 = *MEMORY[0x277D35DC8];
  tableAttachmentProvider2 = [(ICTableAttachmentViewController *)self tableAttachmentProvider];
  [defaultCenter2 addObserver:self selector:sel_tableAttachmentProviderDidMergeTable_ name:v32 object:tableAttachmentProvider2];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  table = [(ICTableAttachmentViewController *)self table];
  [defaultCenter3 addObserver:self selector:sel_tableAttachmentViewControllerDidChange_ name:@"ICTableAttachmentViewControllerDidChangeNotification" object:table];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  v37 = *MEMORY[0x277D36668];
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  [defaultCenter4 addObserver:self selector:sel_tableAttachmentSelectionDidChange_ name:v37 object:tableSelection];

  v39 = [ICTableUndoTarget alloc];
  tableAttachmentProvider3 = [(ICTableAttachmentViewController *)self tableAttachmentProvider];
  v41 = [(ICTableUndoTarget *)v39 initWithProvider:tableAttachmentProvider3 viewController:self];
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

  view5 = [(ICTableAttachmentViewController *)self view];
  outsideViews = [view5 outsideViews];
  [outsideViews addObject:self->_startKnob];

  view6 = [(ICTableAttachmentViewController *)self view];
  outsideViews2 = [view6 outsideViews];
  [outsideViews2 addObject:self->_endKnob];

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
  table = [(ICTableAttachmentProvider *)self->_tableAttachmentProvider table];
  cellChangeNotifier = [table cellChangeNotifier];
  [cellChangeNotifier removeObserver:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v6.receiver = self;
  v6.super_class = ICTableAttachmentViewController;
  [(ICTableAttachmentViewController *)&v6 dealloc];
}

- (BOOL)isInResponderChain
{
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  v3 = [tableSelection type] != 0;

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
    textViewManager = [(ICTableAttachmentViewController *)self textViewManager];
    [textViewManager restyleCells];

    [(ICTableAttachmentViewController *)self viewport];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    textViewManager2 = [(ICTableAttachmentViewController *)self textViewManager];
    [textViewManager2 boundingRect];
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
      tableLayoutManager = [(ICTableAttachmentViewController *)self tableLayoutManager];
      columnWidthManager = [tableLayoutManager columnWidthManager];

      textViewManager3 = [(ICTableAttachmentViewController *)self textViewManager];
      columnIDs = [textViewManager3 columnIDs];
      v21 = [columnWidthManager invalidateWidthForColumns:columnIDs];
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
    textViewManager = [(ICTableAttachmentViewController *)self textViewManager];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46__ICTableAttachmentViewController_updateTiles__block_invoke;
    v11[3] = &unk_2781ADEF8;
    v11[4] = &v12;
    [textViewManager enumerateTextViewsWithBlock:v11];

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
      textViewManager2 = [(ICTableAttachmentViewController *)self textViewManager];
      [(ICTableAttachmentViewController *)self viewport];
      [textViewManager2 updateTilesWithViewport:0 redrawAll:?];
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
  tableContentView = [(ICTableAttachmentViewController *)self tableContentView];
  [tableContentView bounds];
  v8 = TSDNearlyEqualSizes();

  if ((v8 & 1) == 0)
  {
    objc_opt_class();
    view = [(ICTableAttachmentViewController *)self view];
    v41 = ICDynamicCast();

    if (![(ICTableAttachmentViewController *)self isPerformingInitialLayout])
    {
      [v41 didChangeSize];
    }

    textAttachment = [(ICAttachmentViewController *)self textAttachment];
    noteTextView = [(ICTableAttachmentViewController *)self noteTextView];
    textContainer = [noteTextView textContainer];
    [textAttachment attachmentSizeForTextContainer:textContainer];
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
    scrollView = [(ICTableAttachmentViewController *)self scrollView];
    [scrollView setFrame:{v16, v18, v20, v24}];

    if (vabdd_f64(v14, v4) >= 0.00999999978)
    {
      TSDSanitizeRect();
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;
      tableContentView2 = [(ICTableAttachmentViewController *)self tableContentView];
      v27 = tableContentView2;
      v28 = v33;
      v29 = v35;
      v30 = v37;
      v31 = v39;
    }

    else
    {
      tableContentView2 = [(ICTableAttachmentViewController *)self tableContentView];
      v27 = tableContentView2;
      v28 = 0.0;
      v29 = 0.0;
      v30 = v14;
      v31 = v6;
    }

    [tableContentView2 setFrame:{v28, v29, v30, v31}];

    tableContentView3 = [(ICTableAttachmentViewController *)self tableContentView];
    [tableContentView3 ic_setNeedsLayout];

    [(ICTableAttachmentViewController *)self didUpdateContentSize];
  }
}

- (void)redraw
{
  [(ICTableAttachmentViewController *)self setShouldPreventUndoCommands:1];
  textViewManager = [(ICTableAttachmentViewController *)self textViewManager];
  [(ICTableAttachmentViewController *)self viewport];
  [textViewManager redrawAllWithViewport:?];

  [(ICTableAttachmentViewController *)self updateContentSize];
  [(ICTableAttachmentViewController *)self updateChrome];

  [(ICTableAttachmentViewController *)self setShouldPreventUndoCommands:0];
}

- (void)redrawAndSave
{
  [(ICTableAttachmentViewController *)self redraw];

  [(ICTableAttachmentViewController *)self save];
}

- (void)updateHeightCacheForColumn:(id)column row:(id)row
{
  columnCopy = column;
  rowCopy = row;
  textViewManager = [(ICTableAttachmentViewController *)self textViewManager];
  rowIDs = [textViewManager rowIDs];
  v9 = [rowIDs containsObject:rowCopy];

  if (v9)
  {
    cellHeightCache = [(ICTableAttachmentViewController *)self cellHeightCache];
    v11 = [cellHeightCache objectForKey:rowCopy];

    if (!v11)
    {
      v11 = [objc_alloc(MEMORY[0x277D35EB0]) initWithComparator:&__block_literal_global_14];
      cellHeightCache2 = [(ICTableAttachmentViewController *)self cellHeightCache];
      [cellHeightCache2 setObject:v11 forKey:rowCopy];
    }

    if (columnCopy)
    {
      tableLayoutManager = [(ICTableAttachmentViewController *)self tableLayoutManager];
      v14 = [tableLayoutManager columnLayoutManagerForColumn:columnCopy];

      [v14 heightOfCellAtRowID:rowCopy];
      [v11 setDimension:columnCopy forKey:?];
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
    textViewManager = [(ICTableAttachmentViewController *)self textViewManager];
    [(ICTableAttachmentViewController *)self viewport];
    [textViewManager initialScrollPointForViewport:?];
    v5 = v4;
    v7 = v6;

    [(ICTableAttachmentViewController *)self updateContentSize];
    scrollView = [(ICTableAttachmentViewController *)self scrollView];
    [scrollView setContentOffset:{v5, v7}];

    [(ICTableAttachmentViewController *)self setIsPerformingInitialLayout:0];
  }
}

- (void)tableValueDidChangeAtColumnID:(id)d rowID:(id)iD delta:(int64_t)delta
{
  dCopy = d;
  iDCopy = iD;
  columnsNeedingWidthUpdate = [(ICTableAttachmentViewController *)self columnsNeedingWidthUpdate];
  [columnsNeedingWidthUpdate addObject:dCopy];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__ICTableAttachmentViewController_tableValueDidChangeAtColumnID_rowID_delta___block_invoke;
  v13[3] = &unk_2781ADF40;
  v13[4] = self;
  v14 = dCopy;
  v15 = iDCopy;
  deltaCopy = delta;
  v11 = iDCopy;
  v12 = dCopy;
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

- (void)updateCellSizeAtColumn:(id)column row:(id)row immediateWidthUpdate:(BOOL)update
{
  updateCopy = update;
  columnCopy = column;
  rowCopy = row;
  currentlyEditingTextView = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
  columnID = [currentlyEditingTextView columnID];
  v11 = [columnID isEqual:columnCopy];

  if (v11)
  {
    if (updateCopy)
    {
      [(ICTableAttachmentViewController *)self updateColumnWidthForColumn:columnCopy];
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

  [(ICTableAttachmentViewController *)self updateHeightCacheForColumn:columnCopy row:rowCopy];
  rowHeightCache = [(ICTableAttachmentViewController *)self rowHeightCache];
  [rowHeightCache dimensionForKey:rowCopy];
  v14 = v13;

  cellHeightCache = [(ICTableAttachmentViewController *)self cellHeightCache];
  v16 = [cellHeightCache objectForKey:rowCopy];
  [v16 max];
  v18 = v17;

  if (v14 != v18)
  {
    rowHeightCache2 = [(ICTableAttachmentViewController *)self rowHeightCache];
    [rowHeightCache2 setDimension:rowCopy forKey:v18];

    textViewManager = [(ICTableAttachmentViewController *)self textViewManager];
    [textViewManager heightChangedForRow:rowCopy by:v18 - v14];

    [(ICTableAttachmentViewController *)self updateContentSize];
  }
}

- (void)textStorage:(id)storage didProcessEditing:(unint64_t)editing range:(_NSRange)range changeInLength:(int64_t)length
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  objc_opt_class();
  v13 = ICDynamicCast();
  attachment = [(ICAttachmentViewController *)self attachment];
  [attachment filterInlineAttachmentsInTableColumnTextStorage:v13 range:{location, length}];

  [v13 textStorage:storageCopy didProcessEditing:editing range:location changeInLength:{length, length}];
}

- (void)textStorage:(id)storage didReplace:(id)replace with:(id)with
{
  replaceCopy = replace;
  withCopy = with;
  if ([replaceCopy length])
  {
    attachment = [(ICAttachmentViewController *)self attachment];
    note = [attachment note];
    [note markBlockAndInlineAttachmentsForDeletion:1 inAttributedString:replaceCopy];
  }

  if ([withCopy length])
  {
    attachment2 = [(ICAttachmentViewController *)self attachment];
    note2 = [attachment2 note];
    [note2 markBlockAndInlineAttachmentsForDeletion:0 inAttributedString:withCopy];
  }
}

- (void)tappedTableAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  textViewManager = [(ICTableAttachmentViewController *)self textViewManager];
  v22 = 0;
  v23 = 0;
  v7 = [textViewManager cellContainingPoint:&v23 columnID:&v22 rowID:{x, y}];
  v8 = v23;
  v9 = v22;

  if (v7)
  {
    [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:v8 andRowID:v9 touchPoint:x, y];
    goto LABEL_14;
  }

  table = [(ICTableAttachmentViewController *)self table];
  if (!table)
  {
    goto LABEL_6;
  }

  v11 = table;
  table2 = [(ICTableAttachmentViewController *)self table];
  if (![table2 columnCount])
  {

    goto LABEL_10;
  }

  table3 = [(ICTableAttachmentViewController *)self table];
  rowCount = [table3 rowCount];

  if (!rowCount)
  {
LABEL_10:
    table4 = [(ICTableAttachmentViewController *)self table];
    columnCount = [table4 columnCount];

    table5 = [(ICTableAttachmentViewController *)self table];
    v19 = table5;
    if (columnCount)
    {
      v20 = [table5 insertRowAtIndex:0];
    }

    else
    {
      v21 = [table5 insertColumnAtIndex:0];
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

- (void)beginEditingCellWithColumnID:(id)d andRowID:(id)iD touchPoint:(CGPoint)point
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__ICTableAttachmentViewController_beginEditingCellWithColumnID_andRowID_touchPoint___block_invoke;
  v5[3] = &unk_2781ADF68;
  v5[4] = self;
  pointCopy = point;
  [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:d andRowID:iD textRange:v5];
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

- (void)beginEditingCellWithColumnID:(id)d andRowID:(id)iD location:(unint64_t)location
{
  iDCopy = iD;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __82__ICTableAttachmentViewController_beginEditingCellWithColumnID_andRowID_location___block_invoke;
  v14 = &unk_2781ADF90;
  v15 = iDCopy;
  locationCopy = location;
  v9 = iDCopy;
  [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:d andRowID:v9 textRange:&v11];
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
  table = [(ICTableAttachmentViewController *)self table];
  v9 = [table stringForColumnIndex:0 rowIndex:0];

  v4 = [v9 length] != 0;
  table2 = [(ICTableAttachmentViewController *)self table];
  v6 = [table2 identifierForColumnAtIndex:v4];

  table3 = [(ICTableAttachmentViewController *)self table];
  v8 = [table3 identifierForRowAtIndex:0];

  [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:v6 andRowID:v8 location:2];
}

- (void)beginEditingSelectedRangeInTextView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  textStorage = [viewCopy textStorage];
  v8 = ICDynamicCast();

  v6 = [v8 rowAtIndex:objc_msgSend(viewCopy rowRange:{"selectedRange"), 0}];
  columnID = [viewCopy columnID];

  [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:columnID andRowID:v6 textRange:&__block_literal_global_69];
}

- (void)beginEditingCellWithColumnID:(id)d andRowID:(id)iD textRange:(id)range
{
  dCopy = d;
  iDCopy = iD;
  rangeCopy = range;
  textViewManager = [(ICTableAttachmentViewController *)self textViewManager];
  v12 = [textViewManager textViewForColumn:dCopy createIfNeeded:1];

  if (v12)
  {
    [(ICTableAttachmentViewController *)self setPreventScrolling:1];
    [(ICTableAttachmentViewController *)self setDidRecentlyAutoAddRow:0];
    [(ICTableAttachmentViewController *)self willBeginEditingWithTextView:v12];
    v13 = rangeCopy[2](rangeCopy, v12);
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v12 setSelectedRange:{v13, v14}];
    }

    textViewManager2 = [(ICTableAttachmentViewController *)self textViewManager];
    [textViewManager2 ensureCellPositionForColumn:dCopy andRow:iDCopy];

    if (([v12 ic_isFirstResponder] & 1) == 0)
    {
      [(ICTableAttachmentViewController *)self setMakingCellFirstResponder:1];
      v16 = MEMORY[0x277D75D18];
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __83__ICTableAttachmentViewController_beginEditingCellWithColumnID_andRowID_textRange___block_invoke;
      v20 = &unk_2781ABEB8;
      selfCopy = self;
      v22 = v12;
      [v16 ic_performWithoutAnimation:&v17];
      [(ICTableAttachmentViewController *)self setMakingCellFirstResponder:0, v17, v18, v19, v20, selfCopy];
    }

    [(ICTableAttachmentViewController *)self didBeginEditingWithTextView:v12];
  }
}

- (void)moveIntoTableWithDirection:(unint64_t)direction
{
  table = [(ICTableAttachmentViewController *)self table];
  v6 = table;
  if (direction == 1)
  {
    isLeftToRight = [table isLeftToRight];

    if ((isLeftToRight & 1) == 0)
    {
LABEL_3:
      table2 = [(ICTableAttachmentViewController *)self table];
      table3 = [(ICTableAttachmentViewController *)self table];
      v20 = [table2 identifierForColumnAtIndex:{objc_msgSend(table3, "columnCount") - 1}];

      table4 = [(ICTableAttachmentViewController *)self table];
      table5 = [(ICTableAttachmentViewController *)self table];
      v12 = [table4 identifierForRowAtIndex:{objc_msgSend(table5, "rowCount") - 1}];

      selfCopy2 = self;
      v14 = v20;
      v15 = v12;
      v16 = 2;
      goto LABEL_6;
    }
  }

  else
  {
    isRightToLeft = [table isRightToLeft];

    if (!isRightToLeft)
    {
      goto LABEL_3;
    }
  }

  table6 = [(ICTableAttachmentViewController *)self table];
  v20 = [table6 identifierForColumnAtIndex:0];

  table7 = [(ICTableAttachmentViewController *)self table];
  v12 = [table7 identifierForRowAtIndex:0];

  selfCopy2 = self;
  v14 = v20;
  v15 = v12;
  v16 = 0;
LABEL_6:
  [(ICTableAttachmentViewController *)selfCopy2 beginEditingCellWithColumnID:v14 andRowID:v15 location:v16];
}

- (void)willBeginEditingWithTextView:(id)view
{
  viewCopy = view;
  auxiliaryTextViewHost = [(ICTableAttachmentViewController *)self auxiliaryTextViewHost];
  [auxiliaryTextViewHost setAuxiliaryResponder:viewCopy];

  tTTextStorage = [viewCopy TTTextStorage];

  [tTTextStorage breakUndoCoalescing];

  [(ICTableAttachmentViewController *)self updateEditedColumnWidths];
}

- (void)didBeginEditingWithTextView:(id)view
{
  v23[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  if ([viewCopy isEditable])
  {
    objc_opt_class();
    textStorage = [viewCopy textStorage];
    v6 = ICDynamicCast();

    columnID = [v6 columnID];
    v8 = [v6 rowAtIndex:objc_msgSend(viewCopy rowRange:{"selectedRange"), 0}];
    v9 = objc_alloc_init(MEMORY[0x277D36920]);
    [v9 selectCellAtColumn:columnID row:v8];
    currentlyEditingTextView = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
    [currentlyEditingTextView setTextSelectionHidden:0];

    tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
    v12 = [tableSelection isEqual:v9];

    if (v12)
    {
LABEL_8:
      [(ICTableAttachmentViewController *)self setTypingAttributesForTextView:viewCopy];
      [(ICTableAttachmentViewController *)self updateChrome];

      goto LABEL_9;
    }

    undoTarget = [(ICTableAttachmentViewController *)self undoTarget];
    [v6 setOverrideUndoTarget:undoTarget];

    [(ICTableAttachmentViewController *)self setCurrentlyEditingTextView:viewCopy];
    [(ICTableAttachmentViewController *)self setCurrentlyEditingTextStorage:v6];
    tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
    [tableSelection2 selectCellAtColumn:columnID row:v8];

    [(ICTableAttachmentViewController *)self cellFirstResponderChanged];
    v23[0] = columnID;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    v22 = v8;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    [(ICTableAttachmentViewController *)self showButtonsAtColumns:v15 rows:v16];

    noteTextView = [(ICTableAttachmentViewController *)self noteTextView];
    [noteTextView selectedRange];
    if (v18)
    {
      window = [viewCopy window];

      if (!window)
      {
LABEL_7:
        [(ICTableAttachmentViewController *)self setTypingAttributesForTextView:viewCopy];
        goto LABEL_8;
      }

      noteTextView = [(ICTableAttachmentViewController *)self noteTextView];
      selectedRange = [noteTextView selectedRange];
      noteTextView2 = [(ICTableAttachmentViewController *)self noteTextView];
      [noteTextView2 setSelectedRange:{selectedRange, 0}];
    }

    goto LABEL_7;
  }

LABEL_9:
}

- (void)endCellEditingSessionWithTextView:(id)view
{
  viewCopy = view;
  if ([viewCopy ic_isFirstResponder])
  {
    [(ICTableAttachmentViewController *)self ic_resignFirstResponder:viewCopy];
  }

  [(ICTableAttachmentViewController *)self cellFirstResponderChanged];
  [(ICTableAttachmentViewController *)self setCurrentlyEditingTextView:0];
  [(ICTableAttachmentViewController *)self setCurrentlyEditingTextStorage:0];
  tableAttachmentProvider = [(ICTableAttachmentViewController *)self tableAttachmentProvider];
  [tableAttachmentProvider updateTableFromMOC];

  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  isRangeOrSpanningSelection = [tableSelection isRangeOrSpanningSelection];

  if ((isRangeOrSpanningSelection & 1) == 0)
  {
    [(ICTableAttachmentViewController *)self hideColumnRowButtons];
  }

  auxiliaryTextViewHost = [(ICTableAttachmentViewController *)self auxiliaryTextViewHost];
  auxiliaryResponder = [auxiliaryTextViewHost auxiliaryResponder];

  if (auxiliaryResponder == viewCopy)
  {
    auxiliaryTextViewHost2 = [(ICTableAttachmentViewController *)self auxiliaryTextViewHost];
    [auxiliaryTextViewHost2 setAuxiliaryResponder:0];
  }

  textViewManager = [(ICTableAttachmentViewController *)self textViewManager];
  columnID = [viewCopy columnID];
  v12 = [textViewManager textViewForColumn:columnID];

  [v12 ic_setNeedsDisplay];
}

- (void)setTypingAttributesForTextView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  textStorage = [viewCopy textStorage];
  v4 = ICDynamicCast();

  objc_opt_class();
  styler = [v4 styler];
  v6 = ICDynamicCast();

  if (v6)
  {
    selectedRange = [viewCopy selectedRange];
    v9 = v8;
    typingAttributes = [viewCopy typingAttributes];
    v11 = [v6 typingAttributesForRange:selectedRange forSelectionChange:v9 currentTypingAttributes:1 inTextStorage:{typingAttributes, v4}];
    [viewCopy setTypingAttributes:v11];
  }
}

- (BOOL)containedInNoteSelection
{
  v22 = *MEMORY[0x277D85DE8];
  if (![(ICTableAttachmentViewController *)self performedInitialLayout]|| [(ICTableAttachmentViewController *)self shouldBeginInitialEditing])
  {
    return 0;
  }

  noteTextView = [(ICTableAttachmentViewController *)self noteTextView];
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    objc_opt_class();
    [noteTextView textLayoutManager];
  }

  else
  {
    objc_opt_class();
    [noteTextView layoutManager];
  }
  v5 = ;
  v6 = ICCheckedDynamicCast();

  attachment = [(ICAttachmentViewController *)self attachment];
  v8 = [v6 rangeForAttachment:attachment withTextAttachment:0];
  v10 = v9;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  ic_selectedRanges = [noteTextView ic_selectedRanges];
  v12 = [ic_selectedRanges countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(ic_selectedRanges);
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

      v13 = [ic_selectedRanges countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  if ([tableSelection moving])
  {
    isEditable = 0;
  }

  else
  {
    attachment = [(ICAttachmentViewController *)self attachment];
    note = [attachment note];
    isEditable = [note isEditable];
  }

  return isEditable;
}

- (unint64_t)cursorPositionForLocation:(CGPoint)location inTextView:(id)view
{
  y = location.y;
  x = location.x;
  viewCopy = view;
  v8 = [viewCopy closestPositionToPoint:{x, y}];
  beginningOfDocument = [viewCopy beginningOfDocument];
  v10 = [viewCopy offsetFromPosition:beginningOfDocument toPosition:v8];

  if ([(ICTableAttachmentViewController *)self cursorPrefersWordBoundary])
  {
    textStorage = [viewCopy textStorage];
    string = [textStorage string];

    if (v10)
    {
      textStorage = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      if (![textStorage characterIsMember:{objc_msgSend(string, "characterAtIndex:", v10 - 1)}])
      {
LABEL_7:

        goto LABEL_14;
      }
    }

    if ([string length] <= v10 + 1)
    {
      v14 = [string length] > 1;
      if (!v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      if ([whitespaceAndNewlineCharacterSet characterIsMember:{objc_msgSend(string, "characterAtIndex:", v10 + 1)}])
      {

        if (!v10)
        {
          goto LABEL_14;
        }

        goto LABEL_7;
      }

      v14 = [string length] > 1;

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
        whitespaceAndNewlineCharacterSet2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v10 = [string rangeOfCharacterFromSet:whitespaceAndNewlineCharacterSet2 options:0 range:{v10, objc_msgSend(string, "length") - v10}];

        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = [string length];
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

- (void)scrollToSelectionInTextView:(id)view animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  viewCopy = view;
  [viewCopy selectionRect];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  tableContentView = [(ICTableAttachmentViewController *)self tableContentView];
  [tableContentView convertRect:viewCopy fromView:{v10, v12, v14, v16}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  textViewManager = [(ICTableAttachmentViewController *)self textViewManager];
  columnID = [viewCopy columnID];

  [textViewManager frameOfColumn:columnID];
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
  [(ICTableAttachmentViewController *)self scrollToRect:animatedCopy animated:completionCopy completion:MinX, MinY, Width, CGRectGetHeight(v44)];
}

- (void)beginEditingNoteAtOffset:(int64_t)offset
{
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  [tableSelection unselect];

  attachment = [(ICAttachmentViewController *)self attachment];
  note = [attachment note];
  attachment2 = [(ICAttachmentViewController *)self attachment];
  v9 = [note rangeForAttachment:attachment2];

  if (v9 <= -offset && offset <= 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9 + offset;
  }

  [(ICTableAttachmentViewController *)self beginEditingNoteAtRange:v11, 0];
}

- (void)selectTable
{
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  [tableSelection unselect];

  attachment = [(ICAttachmentViewController *)self attachment];
  note = [attachment note];
  attachment2 = [(ICAttachmentViewController *)self attachment];
  v7 = [note rangeForAttachment:attachment2];
  v9 = v8;

  [(ICTableAttachmentViewController *)self beginEditingNoteAtRange:v7, v9];
}

- (id)dragSnapshotFromRect:(CGRect)rect afterScreenUpdates:(BOOL)updates
{
  v4 = objc_alloc_init(MEMORY[0x277D75D18]);

  return v4;
}

- (id)account
{
  attachment = [(ICAttachmentViewController *)self attachment];
  note = [attachment note];
  account = [note account];

  return account;
}

- (id)note
{
  attachment = [(ICAttachmentViewController *)self attachment];
  note = [attachment note];

  return note;
}

- (CGRect)frameOfCellForColumnTextView:(id)view row:(id)row
{
  rowCopy = row;
  viewCopy = view;
  textViewManager = [(ICTableAttachmentViewController *)self textViewManager];
  columnID = [viewCopy columnID];
  [textViewManager frameOfCellAtColumn:columnID row:rowCopy];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  superview = [viewCopy superview];
  [superview convertRect:viewCopy toView:{v11, v13, v15, v17}];
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
  preferredNavigationSelection = [(ICTableAttachmentViewController *)self preferredNavigationSelection];

  [(ICTableAttachmentViewController *)self movePrevCellAtLocation:preferredNavigationSelection];
}

- (void)moveNextCell
{
  currentlyEditingTextView = [(ICTableAttachmentViewController *)self currentlyEditingTextView];

  if (!currentlyEditingTextView)
  {
    return;
  }

  table = [(ICTableAttachmentViewController *)self table];
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  columns = [tableSelection columns];
  firstObject = [columns firstObject];
  v8 = [table columnIndexForIdentifier:firstObject];

  table2 = [(ICTableAttachmentViewController *)self table];
  tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
  rows = [tableSelection2 rows];
  firstObject2 = [rows firstObject];
  v13 = [table2 rowIndexForIdentifier:firstObject2];

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
    table3 = [(ICTableAttachmentViewController *)self table];
    if (v13 == [table3 rowCount] - 1 && -[ICTableAttachmentViewController didRecentlyAutoAddRow](self, "didRecentlyAutoAddRow"))
    {
      table4 = [(ICTableAttachmentViewController *)self table];
      v16 = [table4 rowIsEmptyAtIndex:v13];

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

    table5 = [(ICTableAttachmentViewController *)self table];
    v19 = [table5 columnCount] - 1;

    if (v8 >= v19)
    {
      table6 = [(ICTableAttachmentViewController *)self table];
      v22 = [table6 rowCount] - 1;

      if (v13 == v22)
      {

        [(ICTableAttachmentViewController *)self moveReturnCell];
      }

      else
      {
        preferredNavigationSelection = [(ICTableAttachmentViewController *)self preferredNavigationSelection];

        [(ICTableAttachmentViewController *)self moveNextLineAtLocation:preferredNavigationSelection];
      }
    }

    else
    {
      preferredNavigationSelection2 = [(ICTableAttachmentViewController *)self preferredNavigationSelection];

      [(ICTableAttachmentViewController *)self moveNextCellAtLocation:preferredNavigationSelection2];
    }
  }
}

- (void)moveShiftReturnCell
{
  preferredNavigationSelection = [(ICTableAttachmentViewController *)self preferredNavigationSelection];

  [(ICTableAttachmentViewController *)self moveUpCellAtLocation:preferredNavigationSelection];
}

- (void)moveReturnCell
{
  currentlyEditingTextView = [(ICTableAttachmentViewController *)self currentlyEditingTextView];

  if (currentlyEditingTextView)
  {
    tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
    rows = [tableSelection rows];
    firstObject = [rows firstObject];

    table = [(ICTableAttachmentViewController *)self table];
    v8 = [table rowIndexForIdentifier:firstObject];

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
      table2 = [(ICTableAttachmentViewController *)self table];
      v11 = [table2 rowCount] - 1;

      if (v8 >= v11)
      {
        table3 = [(ICTableAttachmentViewController *)self table];
        table4 = [(ICTableAttachmentViewController *)self table];
        v14 = [table3 rowIsEmptyAtIndex:{objc_msgSend(table4, "rowCount") - 1}];

        didRecentlyAutoAddRow = [(ICTableAttachmentViewController *)self didRecentlyAutoAddRow];
        table5 = [(ICTableAttachmentViewController *)self table];
        rowCount = [table5 rowCount];
        if (didRecentlyAutoAddRow && (v14 & 1) != 0)
        {

          if (rowCount >= 2)
          {
            table6 = [(ICTableAttachmentViewController *)self table];
            [table6 removeRowAtIndex:v8];

            [(ICTableAttachmentViewController *)self cleanDeletedRow:firstObject];
            [(ICTableAttachmentViewController *)self redrawAndSave];
          }

          [(ICTableAttachmentViewController *)self beginEditingNoteAtOffset:2];
          [(ICTableAttachmentViewController *)self speakAccessibilityExitedTableAnnouncementAndDidRemoveRow:rowCount > 1];
        }

        else
        {
          [(ICTableAttachmentViewController *)self addRowAtIndex:rowCount];

          [(ICTableAttachmentViewController *)self setDidRecentlyAutoAddRow:1];
          v19 = *MEMORY[0x277D76438];
          mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
          v21 = [mainBundle localizedStringForKey:@"Added new row" value:&stru_282757698 table:0];
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
  table = [(ICTableAttachmentViewController *)self table];
  isLeftToRight = [table isLeftToRight];

  if (isLeftToRight)
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
  table = [(ICTableAttachmentViewController *)self table];
  isLeftToRight = [table isLeftToRight];

  if (isLeftToRight)
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
  icTableFromPasteboard = [(ICTableAttachmentViewController *)self icTableFromPasteboard];
  if (icTableFromPasteboard)
  {
    table = [(ICTableAttachmentViewController *)self table];
    tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
    type = [tableSelection type];
    v7 = type != 0;

    if (type)
    {
      tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
      rows = [tableSelection2 rows];
      firstObject = [rows firstObject];

      if (!firstObject)
      {
        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((selectedRow) != nil)" functionName:"-[ICTableAttachmentViewController pasteCellRange]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "selectedRow"}];
      }

      v11 = [table rowIndexForIdentifier:firstObject];
      tableSelection3 = [(ICTableAttachmentViewController *)self tableSelection];
      columns = [tableSelection3 columns];
      firstObject2 = [columns firstObject];

      if (!firstObject2)
      {
        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((selectedColumn) != nil)" functionName:"-[ICTableAttachmentViewController pasteCellRange]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "selectedColumn"}];
      }

      v15 = [table columnIndexForIdentifier:firstObject2];
      if ([(ICTableAttachmentViewController *)self makeSpaceToPasteSourceTable:icTableFromPasteboard])
      {
        [(ICTableAttachmentViewController *)self pasteTable:icTableFromPasteboard atColumnIndex:v15 rowIndex:v11 shouldSetSelectionToPastedRange:0];
      }

      else
      {
        v16 = [icTableFromPasteboard joinedAttributedStringForColumns:0 rows:0];
        attachment = [(ICAttachmentViewController *)self attachment];
        managedObjectContext = [attachment managedObjectContext];
        v19 = [v16 ic_attributedStringByFlatteningUnsupportedInlineAttachmentsWithContext:managedObjectContext];

        attachment2 = [(ICAttachmentViewController *)self attachment];
        managedObjectContext2 = [attachment2 managedObjectContext];
        v22 = [v19 ic_attributedStringByCopyingInlineAttachmentsAndUpdatingChangeCountWithContext:managedObjectContext2];

        currentlyEditingTextView = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
        ic_selectedRanges = [currentlyEditingTextView ic_selectedRanges];

        currentlyEditingTextStorage = [(ICTableAttachmentViewController *)self currentlyEditingTextStorage];
        [currentlyEditingTextStorage setIsReadingSelectionFromPasteboard:1];

        currentlyEditingTextStorage2 = [(ICTableAttachmentViewController *)self currentlyEditingTextStorage];
        firstObject3 = [ic_selectedRanges firstObject];
        rangeValue = [firstObject3 rangeValue];
        [currentlyEditingTextStorage2 replaceCharactersInRange:rangeValue withAttributedString:{v28, v22}];

        currentlyEditingTextView2 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
        currentlyEditingTextView3 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
        [currentlyEditingTextView2 setSelectedRange:{objc_msgSend(currentlyEditingTextView3, "selectedRange") + objc_msgSend(v22, "length"), 0}];

        currentlyEditingTextStorage3 = [(ICTableAttachmentViewController *)self currentlyEditingTextStorage];
        [currentlyEditingTextStorage3 setIsReadingSelectionFromPasteboard:0];

        [(ICTableAttachmentViewController *)self save];
        [(ICTableAttachmentViewController *)self updateCellSizeAtColumn:firstObject2 row:firstObject immediateWidthUpdate:1];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)didPasteOrDropTextForTableColumnTextView:(id)view
{
  columnID = [view columnID];
  [(ICTableAttachmentViewController *)self updateColumnWidthForColumn:columnID];

  [(ICTableAttachmentViewController *)self save];
}

- (void)moveNextLineAtLocation:(unint64_t)location
{
  currentlyEditingTextView = [(ICTableAttachmentViewController *)self currentlyEditingTextView];

  if (currentlyEditingTextView)
  {
    table = [(ICTableAttachmentViewController *)self table];
    tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
    rows = [tableSelection rows];
    firstObject = [rows firstObject];
    v10 = [table rowIndexForIdentifier:firstObject];

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
      table2 = [(ICTableAttachmentViewController *)self table];
      v13 = [table2 rowCount] - 1;

      if (v10 < v13)
      {
        table3 = [(ICTableAttachmentViewController *)self table];
        v17 = [table3 identifierForRowAtIndex:v10 + 1];

        table4 = [(ICTableAttachmentViewController *)self table];
        v16 = [table4 identifierForColumnAtIndex:0];

        [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:v16 andRowID:v17 location:location];
        [(ICTableAttachmentViewController *)self speakAccessibilityAnnouncementForMoveToCellWithColumnID:v16 rowID:v17];
      }
    }
  }
}

- (void)moveUpCellAtLocation:(unint64_t)location
{
  currentlyEditingTextView = [(ICTableAttachmentViewController *)self currentlyEditingTextView];

  if (currentlyEditingTextView)
  {
    table = [(ICTableAttachmentViewController *)self table];
    tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
    columns = [tableSelection columns];
    firstObject = [columns firstObject];
    v10 = [table columnIndexForIdentifier:firstObject];

    table2 = [(ICTableAttachmentViewController *)self table];
    tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
    rows = [tableSelection2 rows];
    firstObject2 = [rows firstObject];
    v15 = [table2 rowIndexForIdentifier:firstObject2];

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
      table3 = [(ICTableAttachmentViewController *)self table];
      v20 = [table3 identifierForColumnAtIndex:v10];

      table4 = [(ICTableAttachmentViewController *)self table];
      v18 = [table4 identifierForRowAtIndex:v15 - 1];

      [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:v20 andRowID:v18 location:location];
      [(ICTableAttachmentViewController *)self speakAccessibilityAnnouncementForMoveToCellWithColumnID:v20 rowID:v18];
    }

    else
    {

      [(ICTableAttachmentViewController *)self beginEditingNoteAtOffset:-1];
    }
  }
}

- (void)moveDownCellAtLocation:(unint64_t)location
{
  currentlyEditingTextView = [(ICTableAttachmentViewController *)self currentlyEditingTextView];

  if (currentlyEditingTextView)
  {
    table = [(ICTableAttachmentViewController *)self table];
    tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
    columns = [tableSelection columns];
    firstObject = [columns firstObject];
    v10 = [table columnIndexForIdentifier:firstObject];

    table2 = [(ICTableAttachmentViewController *)self table];
    tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
    rows = [tableSelection2 rows];
    firstObject2 = [rows firstObject];
    v15 = [table2 rowIndexForIdentifier:firstObject2];

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
      table3 = [(ICTableAttachmentViewController *)self table];
      v17 = [table3 rowCount] - 1;

      if (v15 >= v17)
      {

        [(ICTableAttachmentViewController *)self beginEditingNoteAtOffset:2];
      }

      else
      {
        table4 = [(ICTableAttachmentViewController *)self table];
        v22 = [table4 identifierForColumnAtIndex:v10];

        table5 = [(ICTableAttachmentViewController *)self table];
        v20 = [table5 identifierForRowAtIndex:v15 + 1];

        [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:v22 andRowID:v20 location:location];
        [(ICTableAttachmentViewController *)self speakAccessibilityAnnouncementForMoveToCellWithColumnID:v22 rowID:v20];
      }
    }
  }
}

- (void)movePrevCellAtLocation:(unint64_t)location
{
  currentlyEditingTextView = [(ICTableAttachmentViewController *)self currentlyEditingTextView];

  if (currentlyEditingTextView)
  {
    table = [(ICTableAttachmentViewController *)self table];
    tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
    columns = [tableSelection columns];
    firstObject = [columns firstObject];
    columnCount = [table columnIndexForIdentifier:firstObject];

    table2 = [(ICTableAttachmentViewController *)self table];
    tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
    rows = [tableSelection2 rows];
    firstObject2 = [rows firstObject];
    v15 = [table2 rowIndexForIdentifier:firstObject2];

    if (columnCount == 0x7FFFFFFFFFFFFFFFLL || v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [ICTableAttachmentViewController movePrevCellAtLocation:];
      }
    }

    else if (columnCount | v15)
    {
      if (!columnCount)
      {
        table3 = [(ICTableAttachmentViewController *)self table];
        columnCount = [table3 columnCount];

        --v15;
      }

      table4 = [(ICTableAttachmentViewController *)self table];
      v21 = [table4 identifierForColumnAtIndex:columnCount - 1];

      table5 = [(ICTableAttachmentViewController *)self table];
      v19 = [table5 identifierForRowAtIndex:v15];

      [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:v21 andRowID:v19 location:location];
      [(ICTableAttachmentViewController *)self speakAccessibilityAnnouncementForMoveToCellWithColumnID:v21 rowID:v19];
    }

    else
    {

      [(ICTableAttachmentViewController *)self beginEditingNoteAtOffset:0];
    }
  }
}

- (void)moveNextCellAtLocation:(unint64_t)location
{
  currentlyEditingTextView = [(ICTableAttachmentViewController *)self currentlyEditingTextView];

  if (!currentlyEditingTextView)
  {
    return;
  }

  table = [(ICTableAttachmentViewController *)self table];
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  columns = [tableSelection columns];
  firstObject = [columns firstObject];
  v10 = [table columnIndexForIdentifier:firstObject];

  table2 = [(ICTableAttachmentViewController *)self table];
  tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
  rows = [tableSelection2 rows];
  firstObject2 = [rows firstObject];
  v15 = [table2 rowIndexForIdentifier:firstObject2];

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
    table3 = [(ICTableAttachmentViewController *)self table];
    if (v10 < [table3 columnCount] - 1)
    {

LABEL_11:
      table4 = [(ICTableAttachmentViewController *)self table];
      v21 = [table4 columnCount] - 1;

      if (v10 < v21)
      {
        v22 = v10 + 1;
      }

      else
      {
        ++v15;
        v22 = 0;
      }

      table5 = [(ICTableAttachmentViewController *)self table];
      v26 = [table5 identifierForColumnAtIndex:v22];

      table6 = [(ICTableAttachmentViewController *)self table];
      v25 = [table6 identifierForRowAtIndex:v15];

      [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:v26 andRowID:v25 location:location];
      [(ICTableAttachmentViewController *)self speakAccessibilityAnnouncementForMoveToCellWithColumnID:v26 rowID:v25];

      return;
    }

    table7 = [(ICTableAttachmentViewController *)self table];
    v19 = [table7 rowCount] - 1;

    if (v15 < v19)
    {
      goto LABEL_11;
    }

    [(ICTableAttachmentViewController *)self beginEditingNoteAtOffset:1];
  }
}

- (BOOL)makeSpaceToPasteSourceTable:(id)table
{
  tableCopy = table;
  [(ICTableAttachmentViewController *)self beginEditing];
  table = [(ICTableAttachmentViewController *)self table];
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  if ([tableSelection type] != 1)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"ICTableAttachmentSelectionTypeCell == tableSelection.type" functionName:"-[ICTableAttachmentViewController makeSpaceToPasteSourceTable:]" simulateCrash:1 showAlert:0 format:@"Expected a cell editing selection when pasting a cell range"];
  }

  columns = [tableSelection columns];
  v8 = [table columnIndexesForIdentifiers:columns];

  if ([v8 count] != 1)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"1 == selectedColumnIndexes.count" functionName:"-[ICTableAttachmentViewController makeSpaceToPasteSourceTable:]" simulateCrash:1 showAlert:0 format:@"Expected a single column in this selection"];
  }

  rows = [tableSelection rows];
  v10 = [table rowIndexesForIdentifiers:rows];

  if ([v10 count] != 1)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"1 == selectedRowIndexes.count" functionName:"-[ICTableAttachmentViewController makeSpaceToPasteSourceTable:]" simulateCrash:1 showAlert:0 format:@"Expected a single row in this selection"];
  }

  firstIndex = [v8 firstIndex];
  firstIndex2 = [v10 firstIndex];
  columnCount = [tableCopy columnCount];
  rowCount = [tableCopy rowCount];
  if (firstIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"selectedColumnIndex >= 0 && selectedColumnIndex != NSNotFound" functionName:"-[ICTableAttachmentViewController makeSpaceToPasteSourceTable:]" simulateCrash:1 showAlert:0 format:{@"Expected valid selected column index, got %lu.", 0x7FFFFFFFFFFFFFFFLL}];
  }

  if (firstIndex2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"selectedRowIndex >= 0 && selectedRowIndex != NSNotFound" functionName:"-[ICTableAttachmentViewController makeSpaceToPasteSourceTable:]" simulateCrash:1 showAlert:0 format:{@"Expected valid selected row index, got %lu.", 0x7FFFFFFFFFFFFFFFLL}];
  }

  v13 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{firstIndex, columnCount}];
  v46 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{firstIndex2, rowCount}];
  if (([table isEmptyAtColumnIndexes:v13 rowIndexes:v46] & 1) == 0)
  {
    v44 = v13;
    v45 = v10;
    rowCount2 = [table rowCount];
    columnCount2 = [table columnCount];
    if ([table rowIsEmptyAtIndex:firstIndex2])
    {
      v40 = v8;
      v41 = tableSelection;
      v42 = tableCopy;
      v17 = rowCount - 1;
      v18 = firstIndex2 + 1;
      while (1)
      {
        v19 = v17;
        v20 = v17-- != 0;
        v21 = v20;
        if (!v20 || v18 >= rowCount2)
        {
          break;
        }

        v22 = [table rowIsEmptyAtIndex:v18++];
        if ((v22 & 1) == 0)
        {
          v21 = 1;
          break;
        }
      }

      v23 = [table insertRows:v19 atIndex:firstIndex2];
      if (columnCount >= columnCount2 - firstIndex)
      {
        v24 = columnCount - (columnCount2 - firstIndex);
      }

      else
      {
        v24 = 0;
      }

      table2 = [(ICTableAttachmentViewController *)self table];

      if (table != table2)
      {
        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"destinationTable == self.table" functionName:"-[ICTableAttachmentViewController makeSpaceToPasteSourceTable:]" simulateCrash:1 showAlert:0 format:@"destination table should be self.table"];
      }

      v26 = [(ICTableAttachmentViewController *)self insertColumns:v24 atIndex:columnCount2];
      if (columnCount > columnCount2 - firstIndex)
      {
        v27 = 1;
      }

      else
      {
        v27 = v21;
      }

      tableCopy = v42;
      v13 = v44;
      if ((v27 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (![table columnIsEmptyAtIndex:firstIndex])
      {
        v14 = 0;
        v13 = v44;
        v10 = v45;
        goto LABEL_55;
      }

      v40 = v8;
      v41 = tableSelection;
      v43 = tableCopy;
      v28 = columnCount - 1;
      v29 = firstIndex + 1;
      while (1)
      {
        v30 = v28;
        v31 = v28-- != 0;
        v32 = v31;
        if (!v31 || v29 >= columnCount2)
        {
          break;
        }

        v33 = [table rowIsEmptyAtIndex:v29++];
        if ((v33 & 1) == 0)
        {
          v32 = 1;
          break;
        }
      }

      table3 = [(ICTableAttachmentViewController *)self table];

      if (table != table3)
      {
        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"destinationTable == self.table" functionName:"-[ICTableAttachmentViewController makeSpaceToPasteSourceTable:]" simulateCrash:1 showAlert:0 format:@"destination table should be self.table"];
      }

      v35 = [(ICTableAttachmentViewController *)self insertColumns:v30 atIndex:firstIndex];
      if (rowCount >= rowCount2 - firstIndex2)
      {
        v36 = rowCount - (rowCount2 - firstIndex2);
      }

      else
      {
        v36 = 0;
      }

      if (rowCount > rowCount2 - firstIndex2)
      {
        v37 = 1;
      }

      else
      {
        v37 = v32;
      }

      v38 = [table insertRows:v36 atIndex:rowCount2];
      tableCopy = v43;
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
    tableSelection = v41;
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
    undoCommands = [(ICTableAttachmentViewController *)self undoCommands];
    v4 = [undoCommands count];

    if (v4)
    {
      undoCommands2 = [(ICTableAttachmentViewController *)self undoCommands];
      v6 = [undoCommands2 copy];

      undoTarget = [(ICTableAttachmentViewController *)self undoTarget];
      undoManager = [(ICTableAttachmentViewController *)self undoManager];
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __45__ICTableAttachmentViewController_endEditing__block_invoke;
      v15 = &unk_2781ADFD8;
      v16 = undoTarget;
      v17 = v6;
      v9 = v6;
      v10 = undoTarget;
      [undoManager registerUndoWithTarget:v10 handler:&v12];

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

- (void)toggleTodoStyle:(id)style
{
  selectedStyles = [(ICTableAttachmentViewController *)self selectedStyles];
  v5 = [selectedStyles containsIndex:103];

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

- (void)toggleBIUS:(unint64_t)s onValue:(id)value
{
  valueCopy = value;
  v10 = 0;
  v11 = 0;
  v7 = [(ICTableAttachmentViewController *)self namedStylesForCurrentSelectionAndBIUS:&v11 emphasisColorType:&v10];
  v8 = (v11 & s) != s;
  if ((v11 & 0x10) != 0 && valueCopy && (v11 & s) == s && v10 != 0)
  {
    [valueCopy intValue];
    v8 = ICEmphasisColorTypeForTag() != v10;
  }

  [(ICTableAttachmentViewController *)self setSelectionBIUSStyle:s toggleOn:v8 onValue:valueCopy];
}

- (void)copyTable:(id)table
{
  tableCopy = table;
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  v6 = [tableSelection copy];

  v7 = MEMORY[0x277CBEB18];
  table = [(ICTableAttachmentViewController *)self table];
  v9 = [v7 arrayWithCapacity:{objc_msgSend(table, "columnCount")}];

  table2 = [(ICTableAttachmentViewController *)self table];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __45__ICTableAttachmentViewController_copyTable___block_invoke;
  v24[3] = &unk_2781AE000;
  v25 = v9;
  v11 = v9;
  [table2 enumerateColumnsWithBlock:v24];

  v12 = MEMORY[0x277CBEB18];
  table3 = [(ICTableAttachmentViewController *)self table];
  v14 = [v12 arrayWithCapacity:{objc_msgSend(table3, "rowCount")}];

  table4 = [(ICTableAttachmentViewController *)self table];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __45__ICTableAttachmentViewController_copyTable___block_invoke_2;
  v22 = &unk_2781AE000;
  v23 = v14;
  v16 = v14;
  [table4 enumerateRowsWithBlock:&v19];

  v17 = [(ICTableAttachmentViewController *)self tableSelection:v19];
  [v17 selectCellRangeAtColumns:v11 rows:v16];

  [(ICTableAttachmentViewController *)self copySelection:tableCopy];
  tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
  [tableSelection2 setSelectionEqualTo:v6];
}

- (void)convertTableToText:(id)text
{
  table = [(ICTableAttachmentViewController *)self table];
  attachment = [(ICAttachmentViewController *)self attachment];
  note = [attachment note];
  v25 = [table joinedAttributedStringForColumns:0 rows:0 deepCopyInlineAttachments:1 note:note parentAttachment:0];

  if (ICInternalSettingsIsTextKit2Enabled())
  {
    objc_opt_class();
    noteTextView = [(ICTableAttachmentViewController *)self noteTextView];
    [noteTextView textLayoutManager];
  }

  else
  {
    objc_opt_class();
    noteTextView = [(ICTableAttachmentViewController *)self noteTextView];
    [noteTextView layoutManager];
  }
  v8 = ;
  v9 = ICDynamicCast();

  attachment2 = [(ICAttachmentViewController *)self attachment];
  v11 = [v9 rangeForAttachment:attachment2 withTextAttachment:0];
  v13 = v12;

  noteTextView2 = [(ICTableAttachmentViewController *)self noteTextView];
  textStorage = [noteTextView2 textStorage];
  [textStorage beginEditing];

  noteTextView3 = [(ICTableAttachmentViewController *)self noteTextView];
  textStorage2 = [noteTextView3 textStorage];
  [textStorage2 replaceCharactersInRange:v11 withAttributedString:{v13, v25}];

  noteTextView4 = [(ICTableAttachmentViewController *)self noteTextView];
  textStorage3 = [noteTextView4 textStorage];
  [textStorage3 endEditing];

  noteTextView5 = [(ICTableAttachmentViewController *)self noteTextView];
  delegate = [noteTextView5 delegate];
  noteTextView6 = [(ICTableAttachmentViewController *)self noteTextView];
  [delegate textViewDidChange:noteTextView6];

  v23 = [v25 length];
  noteTextView7 = [(ICTableAttachmentViewController *)self noteTextView];
  [noteTextView7 setSelectedRange:{v11, v23}];
}

- (void)updateTableColumnDirectionForWritingDirection:(int64_t)direction
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = direction == 1;
  table = [(ICTableAttachmentViewController *)self table];
  isRightToLeft = [table isRightToLeft];

  if (v5 != isRightToLeft)
  {
    tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
    columns = [tableSelection columns];

    tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
    rows = [tableSelection2 rows];

    if (![rows count])
    {
      table2 = [(ICTableAttachmentViewController *)self table];
      v13 = [table2 identifierForRowAtIndex:0];
      v17[0] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];

      rows = v14;
    }

    [(ICTableAttachmentViewController *)self hideColumnRowButtons];
    table3 = [(ICTableAttachmentViewController *)self table];
    [table3 reverseColumnDirection];

    [(ICTableAttachmentViewController *)self updateTableCellsWithDirection:direction columnIndexes:0 rowIndexes:0];
    currentlyEditingTextView = [(ICTableAttachmentViewController *)self currentlyEditingTextView];

    if (currentlyEditingTextView)
    {
      [(ICTableAttachmentViewController *)self setRowButton:0];
      [(ICTableAttachmentViewController *)self setColumnButton:0];
      [(ICTableAttachmentViewController *)self showButtonsAtColumns:columns rows:rows];
    }

    [(ICTableAttachmentViewController *)self redrawAndSave];
    [(ICTableAttachmentViewController *)self updateAttachmentParagraphForWritingDirection:direction];
  }
}

- (void)reverseTableColumnDirection:(id)direction
{
  table = [(ICTableAttachmentViewController *)self table];
  if ([table isRightToLeft])
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

  [(ICTableAttachmentViewController *)self updateTableColumnDirectionForWritingDirection:v5];
}

- (void)updateAttachmentParagraphForWritingDirection:(int64_t)direction
{
  attachment = [(ICAttachmentViewController *)self attachment];
  note = [attachment note];
  textStorage = [note textStorage];

  objc_opt_class();
  styler = [textStorage styler];
  v8 = ICDynamicCast();

  rangeInNote = [attachment rangeInNote];
  v11 = v10;
  string = [textStorage string];
  v13 = [string paragraphRangeForRange:{rangeInNote, v11}];
  v15 = v14;

  noteTextView = [(ICTableAttachmentViewController *)self noteTextView];
  [v8 setParagraphWritingDirectionInRange:v13 toDirection:v15 inTextView:{direction, noteTextView}];
}

- (void)applyUndoGroup:(id)group
{
  groupCopy = group;
  objc_opt_class();
  v5 = ICCheckedDynamicCast();
  columnID = [v5 columnID];
  rowID = [v5 rowID];
  table = [(ICTableAttachmentViewController *)self table];
  if ([table containsColumn:columnID] && objc_msgSend(table, "containsRow:", rowID))
  {
    tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
    textViewManager = [(ICTableAttachmentViewController *)self textViewManager];
    v11 = [textViewManager textViewForColumn:columnID];

    objc_opt_class();
    v41 = v11;
    textStorage = [v11 textStorage];
    v13 = ICDynamicCast();

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __50__ICTableAttachmentViewController_applyUndoGroup___block_invoke;
    aBlock[3] = &unk_2781AE028;
    aBlock[4] = self;
    v42 = columnID;
    v47 = v42;
    v38 = rowID;
    v48 = v38;
    v39 = v13;
    v49 = v39;
    v50 = groupCopy;
    v14 = _Block_copy(aBlock);
    tableSelection2 = [v5 tableSelection];
    type = [tableSelection2 type];

    v40 = tableSelection;
    if (type != 1)
    {
      currentlyEditingTextView = [(ICTableAttachmentViewController *)self currentlyEditingTextView];

      if (currentlyEditingTextView)
      {
        currentlyEditingTextView2 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
        [(ICTableAttachmentViewController *)self endCellEditingSessionWithTextView:currentlyEditingTextView2];
      }

      v14[2](v14);
      tableSelection3 = [(ICTableAttachmentViewController *)self tableSelection];
      tableSelection4 = [v5 tableSelection];
      [tableSelection3 setSelectionEqualTo:tableSelection4];

      [(ICTableAttachmentViewController *)self updateChrome];
      tableSelection5 = [v5 tableSelection];
      if (![tableSelection5 type])
      {
        noteTextView = [(ICTableAttachmentViewController *)self noteTextView];
        isEditable = [noteTextView isEditable];

        v31 = v39;
        if (isEditable)
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

    if ([tableSelection type] == 1)
    {
      columns = [tableSelection columns];
      v18 = [columns objectAtIndexedSubscript:0];
      if ([v42 isEqual:v18])
      {
        v35 = v18;
        v36 = columns;
        rows = [tableSelection rows];
        v20 = [rows objectAtIndexedSubscript:0];
        if ([v38 isEqual:v20])
        {

          goto LABEL_14;
        }

        isEditable2 = [v41 isEditable];

        if ((isEditable2 & 1) == 0)
        {
LABEL_14:
          tableSelection6 = [(ICTableAttachmentViewController *)self tableSelection];
          type2 = [tableSelection6 type];

          if (type2 == 1)
          {
            v14[2](v14);
          }

          else
          {
            tableSelection7 = [(ICTableAttachmentViewController *)self tableSelection];
            tableSelection8 = [v5 tableSelection];
            [tableSelection7 setSelectionEqualTo:tableSelection8];

            v14[2](v14);
            tableSelection9 = [(ICTableAttachmentViewController *)self tableSelection];
            [tableSelection9 unselect];
          }

          goto LABEL_17;
        }
      }

      else
      {
        isEditable3 = [v41 isEditable];

        if (!isEditable3)
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

- (void)addUndoCommandsForObject:(id)object block:(id)block
{
  blockCopy = block;
  [(ICTableAttachmentViewController *)self beginEditing];
  undoCommands = [(ICTableAttachmentViewController *)self undoCommands];
  v7 = _Block_copy(blockCopy);

  [undoCommands addObject:v7];

  [(ICTableAttachmentViewController *)self endEditing];
}

- (id)attributedStringFromPasteboard
{
  notesDataFromPasteboard = [(ICTableAttachmentViewController *)self notesDataFromPasteboard];
  if (!notesDataFromPasteboard || ([MEMORY[0x277D35F38] pasteboardDataFromPersistenceData:notesDataFromPasteboard], (v4 = objc_claimAutoreleasedReturnValue()) == 0) || (v5 = v4, v6 = MEMORY[0x277CCA898], objc_msgSend(v4, "attributedStringData"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "dataPersister"), v8 = objc_claimAutoreleasedReturnValue(), -[ICAttachmentViewController attachment](self, "attachment"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "note"), v10 = objc_claimAutoreleasedReturnValue(), -[ICAttachmentViewController attachment](self, "attachment"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "ic_attributedStringWithData:dataPersister:createNewAttachmentsInNote:forParentAttachment:error:", v7, v8, v10, v11, 0), v12 = objc_claimAutoreleasedReturnValue(), v11, v10, v9, v8, v7, v5, !v12))
  {
    soloPlainTextStringFromPasteboard = [(ICTableAttachmentViewController *)self soloPlainTextStringFromPasteboard];
    if (soloPlainTextStringFromPasteboard)
    {
      v12 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:soloPlainTextStringFromPasteboard];
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
  icTableDataFromPasteboard = [(ICTableAttachmentViewController *)self icTableDataFromPasteboard];
  if (!icTableDataFromPasteboard)
  {
    goto LABEL_6;
  }

  v4 = objc_alloc(MEMORY[0x277D35FD0]);
  table = [(ICTableAttachmentViewController *)self table];
  document = [table document];
  replica = [document replica];
  if (replica)
  {
    v8 = [v4 initWithData:icTableDataFromPasteboard replicaID:replica];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    v8 = [v4 initWithData:icTableDataFromPasteboard replicaID:uUID];
  }

  table2 = [v8 table];

  if (!table2)
  {
LABEL_6:
    attributedStringFromPasteboard = [(ICTableAttachmentViewController *)self attributedStringFromPasteboard];
    attachment = [(ICAttachmentViewController *)self attachment];
    managedObjectContext = [attachment managedObjectContext];
    v14 = [attributedStringFromPasteboard ic_attributedStringByFlatteningCalculateAttachmentsWithContext:managedObjectContext];

    v15 = MEMORY[0x277D35E48];
    attachment2 = [(ICAttachmentViewController *)self attachment];
    managedObjectContext2 = [attachment2 managedObjectContext];
    table3 = [(ICTableAttachmentViewController *)self table];
    document2 = [table3 document];
    replica2 = [document2 replica];
    if (replica2)
    {
      v21 = [v15 tableFromAttributedString:v14 managedObjectContext:managedObjectContext2 replicaID:replica2];
    }

    else
    {
      uUID2 = [MEMORY[0x277CCAD78] UUID];
      v21 = [v15 tableFromAttributedString:v14 managedObjectContext:managedObjectContext2 replicaID:uUID2];
    }

    table2 = [v21 table];
  }

  return table2;
}

- (id)icTableDataForSelection
{
  table = [(ICTableAttachmentViewController *)self table];
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  type = [tableSelection type];
  v6 = type;
  if (type == 4 || type == 2)
  {
    columns = [tableSelection columns];
    v8 = [table columnIndexesForIdentifiers:columns];
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
    rows = [tableSelection rows];
    v10 = [table rowIndexesForIdentifiers:rows];
  }

  v28 = table;
  v11 = objc_alloc(MEMORY[0x277D35E68]);
  table2 = [(ICTableAttachmentViewController *)self table];
  document = [table2 document];
  replica = [document replica];
  v15 = [v11 initWithReplica:replica];

  table3 = [(ICTableAttachmentViewController *)self table];
  v17 = [table3 subtableWithDocument:v15 forSelectionContainingColumnIndices:v8 rowIndices:v10];

  [v15 setRootObject:v17];
  v18 = objc_alloc(MEMORY[0x277D35FD0]);
  table4 = [(ICTableAttachmentViewController *)self table];
  document2 = [table4 document];
  replica2 = [document2 replica];
  if (replica2)
  {
    v22 = [v18 initWithData:0 replicaID:replica2];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    v22 = [v18 initWithData:0 replicaID:uUID];
  }

  serializationVersion = [MEMORY[0x277D35FD0] serializationVersion];
  archivedData = [v15 archivedData];
  [v22 mergeVersion:serializationVersion fromData:archivedData];

  serialize = [v22 serialize];

  return serialize;
}

- (id)attributedStringForTableSelectionInContext:(id)context
{
  v4 = MEMORY[0x277D35E00];
  v5 = MEMORY[0x277CCAD78];
  contextCopy = context;
  uUID = [v5 UUID];
  uUIDString = [uUID UUIDString];
  v9 = [v4 newObjectWithIdentifier:uUIDString context:contextCopy];

  [v9 setTypeUTI:*MEMORY[0x277D35C08]];
  icTableDataForSelection = [(ICTableAttachmentViewController *)self icTableDataForSelection];
  [v9 setMergeableData:icTableDataForSelection];

  v11 = [MEMORY[0x277D36950] textAttachmentWithAttachment:v9];
  v12 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v11];
  v13 = [v12 mutableCopy];

  [v13 addAttribute:*MEMORY[0x277D74060] value:v11 range:{0, objc_msgSend(v13, "length")}];
  v14 = [MEMORY[0x277D35F90] paragraphStyleNamed:3];
  table = [(ICTableAttachmentViewController *)self table];
  [v14 setWritingDirection:{objc_msgSend(table, "isRightToLeft")}];

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
  identifier = [*MEMORY[0x277CE1ED8] identifier];
  v4 = [(ICTableAttachmentViewController *)self dataForSelectionOfType:identifier];

  return v4;
}

- (id)dataForSelectionOfType:(id)type
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277D74098];
  v10[0] = type;
  v4 = MEMORY[0x277CBEAC0];
  typeCopy = type;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [(ICTableAttachmentViewController *)self dataForSelectionWithDocumentAttributes:v6];

  return v7;
}

- (id)dataForSelectionWithDocumentAttributes:(id)attributes
{
  attributesCopy = attributes;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__10;
  v19 = __Block_byref_object_dispose__10;
  v20 = 0;
  mEMORY[0x277D35F30] = [MEMORY[0x277D35F30] sharedContext];
  snapshotManagedObjectContext = [mEMORY[0x277D35F30] snapshotManagedObjectContext];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__ICTableAttachmentViewController_dataForSelectionWithDocumentAttributes___block_invoke;
  v11[3] = &unk_2781AC600;
  v11[4] = self;
  v7 = snapshotManagedObjectContext;
  v12 = v7;
  v8 = attributesCopy;
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
  attachment = [(ICAttachmentViewController *)self attachment];
  identifier = [attachment identifier];
  v6 = [v3 initWithObjectIdentifier:identifier forPasteboard:1];

  mEMORY[0x277D35F30] = [MEMORY[0x277D35F30] sharedContext];
  snapshotManagedObjectContext = [mEMORY[0x277D35F30] snapshotManagedObjectContext];

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __67__ICTableAttachmentViewController_customPasteboardDataForSelection__block_invoke;
  v17 = &unk_2781AC4C0;
  selfCopy = self;
  v9 = snapshotManagedObjectContext;
  v19 = v9;
  v21 = &v22;
  v10 = v6;
  v20 = v10;
  [v9 performBlockAndWait:&v14];
  if (v23[5])
  {
    v11 = objc_alloc(MEMORY[0x277D35F38]);
    v12 = [v11 initWithAttributedStringData:v23[5] dataPersister:{v10, v14, v15, v16, v17, selfCopy, v19}];
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  webArchiveDataForSelection = [(ICTableAttachmentViewController *)self webArchiveDataForSelection];
  if (webArchiveDataForSelection)
  {
    identifier = [*MEMORY[0x277CE1ED8] identifier];
    [dictionary setObject:webArchiveDataForSelection forKeyedSubscript:identifier];
  }

  htmlDataForSelection = [(ICTableAttachmentViewController *)self htmlDataForSelection];

  if (htmlDataForSelection)
  {
    identifier2 = [*MEMORY[0x277CE1DA0] identifier];
    [dictionary setObject:htmlDataForSelection forKeyedSubscript:identifier2];
  }

  rTFDataForSelection = [(ICTableAttachmentViewController *)self RTFDataForSelection];

  if (rTFDataForSelection)
  {
    identifier3 = [*MEMORY[0x277CE1D78] identifier];
    [dictionary setObject:rTFDataForSelection forKeyedSubscript:identifier3];
  }

  plainTextDataForSelection = [(ICTableAttachmentViewController *)self plainTextDataForSelection];

  if (plainTextDataForSelection)
  {
    identifier4 = [*MEMORY[0x277CE1EB0] identifier];
    [dictionary setObject:plainTextDataForSelection forKeyedSubscript:identifier4];
  }

  icTableDataForSelection = [(ICTableAttachmentViewController *)self icTableDataForSelection];
  [dictionary setObject:icTableDataForSelection forKeyedSubscript:@"com.apple.notes.table"];

  customPasteboardDataForSelection = [(ICTableAttachmentViewController *)self customPasteboardDataForSelection];
  v14 = customPasteboardDataForSelection;
  if (customPasteboardDataForSelection)
  {
    persistenceData = [customPasteboardDataForSelection persistenceData];
    [dictionary setObject:persistenceData forKeyedSubscript:*MEMORY[0x277D35D08]];
  }

  v16 = [dictionary copy];

  return v16;
}

- (void)tableDidPopulateCellAtColumnIndex:(unint64_t)index rowIndex:(unint64_t)rowIndex
{
  table = [(ICTableAttachmentViewController *)self table];
  v8 = [table identifierForColumnAtIndex:index];

  table2 = [(ICTableAttachmentViewController *)self table];
  v10 = [table2 identifierForRowAtIndex:rowIndex];

  table3 = [(ICTableAttachmentViewController *)self table];
  v12 = [table3 textStorageForColumn:v8];
  isEditing = [v12 isEditing];

  if (isEditing)
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
    tableLayoutManager = [(ICTableAttachmentViewController *)self tableLayoutManager];
    v16 = [tableLayoutManager columnLayoutManagerForColumn:v8];

    [v16 ensureCellExistsAtRowID:v10];
  }
}

- (void)tableWillRemoveColumnID:(id)d
{
  dCopy = d;
  table = [(ICTableAttachmentViewController *)self table];
  v9 = [table textStorageForColumn:dCopy];

  if (!v9)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((storage) != nil)" functionName:"-[ICTableAttachmentViewController tableWillRemoveColumnID:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "storage"}];
  }

  attachment = [(ICAttachmentViewController *)self attachment];
  note = [attachment note];
  attributedString = [v9 attributedString];
  [note markBlockAndInlineAttachmentsForDeletion:1 inAttributedString:attributedString];
}

- (void)tableDidInsertColumnID:(id)d
{
  dCopy = d;
  table = [(ICTableAttachmentViewController *)self table];
  v9 = [table textStorageForColumn:dCopy];

  if (!v9)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((storage) != nil)" functionName:"-[ICTableAttachmentViewController tableDidInsertColumnID:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "storage"}];
  }

  attachment = [(ICAttachmentViewController *)self attachment];
  note = [attachment note];
  attributedString = [v9 attributedString];
  [note markBlockAndInlineAttachmentsForDeletion:0 inAttributedString:attributedString];
}

- (void)showColumnRowButtons
{
  attachment = [(ICAttachmentViewController *)self attachment];
  note = [attachment note];
  isEditable = [note isEditable];

  columnButton = [(ICTableAttachmentViewController *)self columnButton];
  [columnButton setHidden:isEditable ^ 1u];

  rowButton = [(ICTableAttachmentViewController *)self rowButton];
  [rowButton setHidden:isEditable ^ 1u];
}

- (void)hideColumnRowButtons
{
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  [tableSelection unselect];

  columnButton = [(ICTableAttachmentViewController *)self columnButton];
  [columnButton setHidden:1];

  rowButton = [(ICTableAttachmentViewController *)self rowButton];
  [rowButton setHidden:1];

  [(ICTableAttachmentViewController *)self unselectColumnRow];
}

- (CGRect)selectionFrameFromContentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selectionHighlightView = [(ICTableAttachmentViewController *)self selectionHighlightView];
  layer = [selectionHighlightView layer];
  [layer borderWidth];
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
  tableContentView = [(ICTableAttachmentViewController *)self tableContentView];
  [tableContentView bounds];
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
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  type = [tableSelection type];

  tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
  type2 = [tableSelection2 type];

  if ((type2 - 2) >= 2)
  {
    if (type2 == 4)
    {
      tableSelection3 = [(ICTableAttachmentViewController *)self tableSelection];
      columns = [tableSelection3 columns];
      if ([columns count])
      {
        tableSelection4 = [(ICTableAttachmentViewController *)self tableSelection];
        rows = [tableSelection4 rows];
        v66 = [rows count];

        if (!v66)
        {
          goto LABEL_92;
        }

        selectionHighlightView = [(ICTableAttachmentViewController *)self selectionHighlightView];
        superview = [selectionHighlightView superview];

        if (!superview)
        {
          scrollView = [(ICTableAttachmentViewController *)self scrollView];
          selectionHighlightView2 = [(ICTableAttachmentViewController *)self selectionHighlightView];
          [scrollView addSubview:selectionHighlightView2];
        }

        tableSelection5 = [(ICTableAttachmentViewController *)self tableSelection];
        columns2 = [tableSelection5 columns];
        tableSelection3 = [columns2 firstObject];

        tableSelection6 = [(ICTableAttachmentViewController *)self tableSelection];
        rows2 = [tableSelection6 rows];
        columns = [rows2 firstObject];

        tableSelection7 = [(ICTableAttachmentViewController *)self tableSelection];
        columns3 = [tableSelection7 columns];
        lastObject = [columns3 lastObject];

        tableSelection8 = [(ICTableAttachmentViewController *)self tableSelection];
        rows3 = [tableSelection8 rows];
        lastObject2 = [rows3 lastObject];

        textViewManager = [(ICTableAttachmentViewController *)self textViewManager];
        [textViewManager frameOfCellAtColumn:tableSelection3 row:columns];
        v83 = v82;
        v85 = v84;
        v87 = v86;
        v89 = v88;

        textViewManager2 = [(ICTableAttachmentViewController *)self textViewManager];
        [textViewManager2 frameOfCellAtColumn:lastObject row:lastObject2];
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
        tableContentView = [(ICTableAttachmentViewController *)self tableContentView];
        scrollView2 = [(ICTableAttachmentViewController *)self scrollView];
        [tableContentView convertRect:scrollView2 toView:{v100, v102, v104, v106}];
        v110 = v109;
        v112 = v111;
        v114 = v113;
        v116 = v115;
        selectionHighlightView3 = [(ICTableAttachmentViewController *)self selectionHighlightView];
        [selectionHighlightView3 setFrame:{v110, v112, v114, v116}];

        selectionHighlightView4 = [(ICTableAttachmentViewController *)self selectionHighlightView];
        layer = [selectionHighlightView4 layer];
        [layer setMaskedCorners:15];

        startKnob = [(ICTableAttachmentViewController *)self startKnob];
        superview2 = [startKnob superview];

        if (!superview2)
        {
          view = [(ICTableAttachmentViewController *)self view];
          startKnob2 = [(ICTableAttachmentViewController *)self startKnob];
          [view addSubview:startKnob2];
        }

        endKnob = [(ICTableAttachmentViewController *)self endKnob];
        superview3 = [endKnob superview];

        if (!superview3)
        {
          view2 = [(ICTableAttachmentViewController *)self view];
          endKnob2 = [(ICTableAttachmentViewController *)self endKnob];
          [view2 addSubview:endKnob2];
        }

        v128 = *MEMORY[0x277D36628];
        selectionHighlightView5 = [(ICTableAttachmentViewController *)self selectionHighlightView];
        layer2 = [selectionHighlightView5 layer];
        [layer2 borderWidth];
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
        selectionHighlightView6 = [(ICTableAttachmentViewController *)self selectionHighlightView];
        layer3 = [selectionHighlightView6 layer];
        [layer3 borderWidth];
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
        table = [(ICTableAttachmentViewController *)self table];
        isLeftToRight = [table isLeftToRight];

        v147 = x;
        v148 = y;
        v149 = width;
        v150 = height;
        if (isLeftToRight)
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
        startKnob3 = [(ICTableAttachmentViewController *)self startKnob];
        superview4 = [startKnob3 superview];
        tableContentView2 = [(ICTableAttachmentViewController *)self tableContentView];
        [superview4 convertRect:tableContentView2 fromView:{MinX - v128, MinY - v128, v128 + v128, v128 + v128}];
        v287 = v286;
        v289 = v288;
        v291 = v290;
        v293 = v292;
        startKnob4 = [(ICTableAttachmentViewController *)self startKnob];
        [startKnob4 setFrame:{v287, v289, v291, v293}];

        endKnob3 = [(ICTableAttachmentViewController *)self endKnob];
        superview5 = [endKnob3 superview];
        tableContentView3 = [(ICTableAttachmentViewController *)self tableContentView];
        [superview5 convertRect:tableContentView3 fromView:{v282, v281, v128 + v128, v128 + v128}];
        v299 = v298;
        v301 = v300;
        v303 = v302;
        v305 = v304;
        endKnob4 = [(ICTableAttachmentViewController *)self endKnob];
        [endKnob4 setFrame:{v299, v301, v303, v305}];

        startKnob5 = [(ICTableAttachmentViewController *)self startKnob];
        [startKnob5 frame];
        MidX = CGRectGetMidX(v353);
        if (MidX < 0.0)
        {
          v311 = 1;
        }

        else
        {
          superview5 = [(ICTableAttachmentViewController *)self startKnob];
          [superview5 frame];
          v309 = CGRectGetMidX(v354);
          tableContentView3 = [(ICTableAttachmentViewController *)self view];
          [tableContentView3 bounds];
          v311 = v309 > v310;
        }

        startKnob6 = [(ICTableAttachmentViewController *)self startKnob];
        [startKnob6 setHidden:v311];

        if (MidX >= 0.0)
        {
        }

        endKnob5 = [(ICTableAttachmentViewController *)self endKnob];
        [endKnob5 frame];
        v314 = CGRectGetMidX(v355);
        if (v314 < 0.0)
        {
          v317 = 1;
        }

        else
        {
          superview5 = [(ICTableAttachmentViewController *)self endKnob];
          [superview5 frame];
          v315 = CGRectGetMidX(v356);
          tableContentView3 = [(ICTableAttachmentViewController *)self view];
          [tableContentView3 bounds];
          v317 = v315 > v316;
        }

        endKnob6 = [(ICTableAttachmentViewController *)self endKnob];
        [endKnob6 setHidden:v317];

        if (v314 >= 0.0)
        {
        }

        columnButton = [(ICTableAttachmentViewController *)self columnButton];
        [columnButton setHidden:1];

        rowButton = [(ICTableAttachmentViewController *)self rowButton];
        [rowButton setHidden:1];
      }
    }

    else
    {
      selectionHighlightView7 = [(ICTableAttachmentViewController *)self selectionHighlightView];
      [selectionHighlightView7 removeFromSuperview];

      startKnob7 = [(ICTableAttachmentViewController *)self startKnob];
      [startKnob7 removeFromSuperview];

      tableSelection3 = [(ICTableAttachmentViewController *)self endKnob];
      [tableSelection3 removeFromSuperview];
    }

    goto LABEL_92;
  }

  selectionHighlightView8 = [(ICTableAttachmentViewController *)self selectionHighlightView];
  superview6 = [selectionHighlightView8 superview];

  if (!superview6)
  {
    scrollView3 = [(ICTableAttachmentViewController *)self scrollView];
    selectionHighlightView9 = [(ICTableAttachmentViewController *)self selectionHighlightView];
    [scrollView3 addSubview:selectionHighlightView9];
  }

  tableSelection9 = [(ICTableAttachmentViewController *)self tableSelection];
  columns4 = [tableSelection9 columns];
  firstObject = [columns4 firstObject];

  tableSelection10 = [(ICTableAttachmentViewController *)self tableSelection];
  rows4 = [tableSelection10 rows];
  firstObject2 = [rows4 firstObject];

  tableSelection11 = [(ICTableAttachmentViewController *)self tableSelection];
  columns5 = [tableSelection11 columns];
  lastObject3 = [columns5 lastObject];

  tableSelection12 = [(ICTableAttachmentViewController *)self tableSelection];
  rows5 = [tableSelection12 rows];
  lastObject4 = [rows5 lastObject];

  v323 = lastObject4;
  v324 = firstObject2;
  if (type == 2)
  {
    textViewManager3 = [(ICTableAttachmentViewController *)self textViewManager];
    [textViewManager3 frameOfColumn:firstObject];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    textViewManager4 = [(ICTableAttachmentViewController *)self textViewManager];
    [textViewManager4 frameOfColumn:lastObject3];
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
    tableContentView4 = [(ICTableAttachmentViewController *)self tableContentView];
    scrollView4 = [(ICTableAttachmentViewController *)self scrollView];
    [tableContentView4 convertRect:scrollView4 toView:{v42, v44, v46, v48}];
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    selectionHighlightView10 = [(ICTableAttachmentViewController *)self selectionHighlightView];
    [selectionHighlightView10 setFrame:{v52, v54, v56, v58}];

    selectionHighlightView11 = [(ICTableAttachmentViewController *)self selectionHighlightView];
    layer4 = [selectionHighlightView11 layer];
    [layer4 setMaskedCorners:12];
LABEL_28:

    goto LABEL_31;
  }

  if (type == 3)
  {
    textViewManager5 = [(ICTableAttachmentViewController *)self textViewManager];
    [textViewManager5 frameOfRow:firstObject2];
    v156 = v155;
    v158 = v157;
    v160 = v159;
    v162 = v161;

    textViewManager6 = [(ICTableAttachmentViewController *)self textViewManager];
    [textViewManager6 frameOfRow:lastObject4];
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
    tableContentView5 = [(ICTableAttachmentViewController *)self tableContentView];
    scrollView5 = [(ICTableAttachmentViewController *)self scrollView];
    [tableContentView5 convertRect:scrollView5 toView:{v42, v44, v46, v48}];
    v179 = v178;
    v181 = v180;
    v183 = v182;
    v185 = v184;
    selectionHighlightView12 = [(ICTableAttachmentViewController *)self selectionHighlightView];
    [selectionHighlightView12 setFrame:{v179, v181, v183, v185}];

    selectionHighlightView11 = [(ICTableAttachmentViewController *)self table];
    if ([selectionHighlightView11 isLeftToRight])
    {
      v187 = 10;
    }

    else
    {
      v187 = 5;
    }

    layer4 = [(ICTableAttachmentViewController *)self selectionHighlightView];
    v61Layer = [layer4 layer];
    [v61Layer setMaskedCorners:v187];

    goto LABEL_28;
  }

  v46 = *(MEMORY[0x277CBF3A0] + 16);
  v48 = *(MEMORY[0x277CBF3A0] + 24);
  v42 = *MEMORY[0x277CBF3A0];
  v44 = *(MEMORY[0x277CBF3A0] + 8);
LABEL_31:
  table2 = [(ICTableAttachmentViewController *)self table];
  tableSelection13 = [(ICTableAttachmentViewController *)self tableSelection];
  columns6 = [tableSelection13 columns];

  if ([columns6 count])
  {
    goto LABEL_37;
  }

  columnButton2 = [(ICTableAttachmentViewController *)self columnButton];
  columnOrRowIdentifiers = [columnButton2 columnOrRowIdentifiers];
  v196 = [columnOrRowIdentifiers count];

  if (v196)
  {
    columnButton3 = [(ICTableAttachmentViewController *)self columnButton];
    columnOrRowIdentifiers2 = [columnButton3 columnOrRowIdentifiers];
LABEL_36:
    v199 = columnOrRowIdentifiers2;

    columns6 = v199;
    goto LABEL_37;
  }

  if ([table2 columnCount])
  {
    columnButton3 = [table2 identifierForColumnAtIndex:0];
    v326[0] = columnButton3;
    columnOrRowIdentifiers2 = [MEMORY[0x277CBEA60] arrayWithObjects:v326 count:1];
    goto LABEL_36;
  }

  columns6 = 0;
LABEL_37:
  tableSelection14 = [(ICTableAttachmentViewController *)self tableSelection];
  rows6 = [tableSelection14 rows];

  if ([rows6 count])
  {
LABEL_43:
    if (columns6 && rows6)
    {
      [(ICTableAttachmentViewController *)self showButtonsAtColumns:columns6 rows:rows6];
    }

    goto LABEL_46;
  }

  rowButton2 = [(ICTableAttachmentViewController *)self rowButton];
  columnOrRowIdentifiers3 = [rowButton2 columnOrRowIdentifiers];
  v204 = [columnOrRowIdentifiers3 count];

  if (v204)
  {
    rowButton3 = [(ICTableAttachmentViewController *)self rowButton];
    columnOrRowIdentifiers4 = [rowButton3 columnOrRowIdentifiers];
LABEL_42:
    v207 = columnOrRowIdentifiers4;

    rows6 = v207;
    goto LABEL_43;
  }

  if ([table2 rowCount])
  {
    rowButton3 = [table2 identifierForRowAtIndex:0];
    v325 = rowButton3;
    columnOrRowIdentifiers4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v325 count:1];
    goto LABEL_42;
  }

  rows6 = 0;
LABEL_46:
  startKnob8 = [(ICTableAttachmentViewController *)self startKnob];
  superview7 = [startKnob8 superview];

  if (!superview7)
  {
    view3 = [(ICTableAttachmentViewController *)self view];
    startKnob9 = [(ICTableAttachmentViewController *)self startKnob];
    [view3 addSubview:startKnob9];
  }

  endKnob7 = [(ICTableAttachmentViewController *)self endKnob];
  superview8 = [endKnob7 superview];

  if (!superview8)
  {
    view4 = [(ICTableAttachmentViewController *)self view];
    endKnob8 = [(ICTableAttachmentViewController *)self endKnob];
    [view4 addSubview:endKnob8];
  }

  v216 = *MEMORY[0x277D36628];
  selectionHighlightView13 = [(ICTableAttachmentViewController *)self selectionHighlightView];
  layer5 = [selectionHighlightView13 layer];
  [layer5 borderWidth];
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
  selectionHighlightView14 = [(ICTableAttachmentViewController *)self selectionHighlightView];
  layer6 = [selectionHighlightView14 layer];
  [layer6 borderWidth];
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
  v321 = table2;
  if (type == 2)
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
    v237 = [(ICTableAttachmentViewController *)self table:table2];
    isLeftToRight2 = [v237 isLeftToRight];

    if (isLeftToRight2)
    {
      v239 = v236;
    }

    else
    {
      v239 = v234;
    }

    if (isLeftToRight2)
    {
      v240 = v235;
    }

    else
    {
      v240 = v233;
    }

    if (!isLeftToRight2)
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

  v242 = lastObject3;
  startKnob10 = [(ICTableAttachmentViewController *)self startKnob];
  superview9 = [startKnob10 superview];
  tableContentView6 = [(ICTableAttachmentViewController *)self tableContentView];
  [superview9 convertRect:tableContentView6 fromView:{v233, v234, v216 + v216, v216 + v216}];
  v247 = v246;
  v249 = v248;
  v251 = v250;
  v253 = v252;
  startKnob11 = [(ICTableAttachmentViewController *)self startKnob];
  [startKnob11 setFrame:{v247, v249, v251, v253}];

  endKnob9 = [(ICTableAttachmentViewController *)self endKnob];
  superview10 = [endKnob9 superview];
  tableContentView7 = [(ICTableAttachmentViewController *)self tableContentView];
  [superview10 convertRect:tableContentView7 fromView:{v241, v239, v216 + v216, v216 + v216}];
  v259 = v258;
  v261 = v260;
  v263 = v262;
  v265 = v264;
  endKnob10 = [(ICTableAttachmentViewController *)self endKnob];
  [endKnob10 setFrame:{v259, v261, v263, v265}];

  startKnob12 = [(ICTableAttachmentViewController *)self startKnob];
  [startKnob12 frame];
  v268 = CGRectGetMidX(v346);
  v269 = firstObject;
  if (v268 < 0.0)
  {
    v272 = 1;
  }

  else
  {
    endKnob10 = [(ICTableAttachmentViewController *)self startKnob];
    [endKnob10 frame];
    v270 = CGRectGetMidX(v347);
    endKnob9 = [(ICTableAttachmentViewController *)self view];
    [endKnob9 bounds];
    v272 = v270 > v271;
  }

  startKnob13 = [(ICTableAttachmentViewController *)self startKnob];
  [startKnob13 setHidden:v272];

  if (v268 >= 0.0)
  {
  }

  endKnob11 = [(ICTableAttachmentViewController *)self endKnob];
  [endKnob11 frame];
  v275 = CGRectGetMidX(v348);
  if (v275 < 0.0)
  {
    v278 = 1;
  }

  else
  {
    endKnob10 = [(ICTableAttachmentViewController *)self endKnob];
    [endKnob10 frame];
    v276 = CGRectGetMidX(v349);
    endKnob9 = [(ICTableAttachmentViewController *)self view];
    [endKnob9 bounds];
    v278 = v276 > v277;
  }

  endKnob12 = [(ICTableAttachmentViewController *)self endKnob];
  [endKnob12 setHidden:v278];

  if (v275 >= 0.0)
  {
  }

LABEL_92:
  [(ICTableAttachmentViewController *)self updateButtonFrames];
}

- (void)updateButtonFrames
{
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  columns = [tableSelection columns];
  firstObject = [columns firstObject];
  v6 = firstObject;
  if (firstObject)
  {
    firstObject2 = firstObject;
  }

  else
  {
    columnButton = [(ICTableAttachmentViewController *)self columnButton];
    columnOrRowIdentifiers = [columnButton columnOrRowIdentifiers];
    firstObject2 = [columnOrRowIdentifiers firstObject];
  }

  tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
  columns2 = [tableSelection2 columns];
  lastObject = [columns2 lastObject];
  v12 = lastObject;
  if (lastObject)
  {
    lastObject2 = lastObject;
  }

  else
  {
    columnButton2 = [(ICTableAttachmentViewController *)self columnButton];
    columnOrRowIdentifiers2 = [columnButton2 columnOrRowIdentifiers];
    lastObject2 = [columnOrRowIdentifiers2 lastObject];
  }

  if (firstObject2)
  {
    columnButton3 = [(ICTableAttachmentViewController *)self columnButton];
    if ([columnButton3 isHidden])
    {
    }

    else
    {
      textViewManager = [(ICTableAttachmentViewController *)self textViewManager];
      columnIDs = [textViewManager columnIDs];
      v19 = [columnIDs containsObject:firstObject2];

      if (v19)
      {
        textViewManager2 = [(ICTableAttachmentViewController *)self textViewManager];
        [textViewManager2 frameOfColumn:firstObject2];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;

        textViewManager3 = [(ICTableAttachmentViewController *)self textViewManager];
        [textViewManager3 frameOfColumn:lastObject2];
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
        tableContentView = [(ICTableAttachmentViewController *)self tableContentView];
        headerClipView = [(ICTableAttachmentViewController *)self headerClipView];
        [tableContentView convertRect:headerClipView toView:{MinX, v41, width, v40}];
        v45 = v44;
        v47 = v46;
        v49 = v48;
        v51 = v50;
        columnButton4 = [(ICTableAttachmentViewController *)self columnButton];
        [columnButton4 setFrame:{v45, v47, v49, v51}];

        goto LABEL_13;
      }
    }
  }

  tableContentView = [(ICTableAttachmentViewController *)self headerClipView];
  [tableContentView bounds];
  v54 = v53;
  headerClipView = [(ICTableAttachmentViewController *)self columnButton];
  [headerClipView setFrame:{v54, 0.0, 0.0, 0.0}];
LABEL_13:

  tableSelection3 = [(ICTableAttachmentViewController *)self tableSelection];
  rows = [tableSelection3 rows];
  firstObject3 = [rows firstObject];
  v58 = firstObject3;
  if (firstObject3)
  {
    firstObject4 = firstObject3;
  }

  else
  {
    rowButton = [(ICTableAttachmentViewController *)self rowButton];
    columnOrRowIdentifiers3 = [rowButton columnOrRowIdentifiers];
    firstObject4 = [columnOrRowIdentifiers3 firstObject];
  }

  tableSelection4 = [(ICTableAttachmentViewController *)self tableSelection];
  rows2 = [tableSelection4 rows];
  lastObject3 = [rows2 lastObject];
  v65 = lastObject3;
  if (lastObject3)
  {
    lastObject4 = lastObject3;
  }

  else
  {
    rowButton2 = [(ICTableAttachmentViewController *)self rowButton];
    columnOrRowIdentifiers4 = [rowButton2 columnOrRowIdentifiers];
    lastObject4 = [columnOrRowIdentifiers4 lastObject];
  }

  if (!firstObject4)
  {
    goto LABEL_33;
  }

  rowButton3 = [(ICTableAttachmentViewController *)self rowButton];
  if ([rowButton3 isHidden])
  {
    goto LABEL_32;
  }

  textViewManager4 = [(ICTableAttachmentViewController *)self textViewManager];
  rowIDs = [textViewManager4 rowIDs];
  v72 = [rowIDs containsObject:firstObject4];

  if (!v72)
  {
    goto LABEL_33;
  }

  textViewManager5 = [(ICTableAttachmentViewController *)self textViewManager];
  [textViewManager5 frameOfRow:firstObject4];
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v81 = v80;

  textViewManager6 = [(ICTableAttachmentViewController *)self textViewManager];
  [textViewManager6 frameOfRow:lastObject4];
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
  table = [(ICTableAttachmentViewController *)self table];
  isLeftToRight = [table isLeftToRight];

  if (!isLeftToRight)
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
    tableContentView2 = [(ICTableAttachmentViewController *)self tableContentView];
    view = [(ICTableAttachmentViewController *)self view];
    [tableContentView2 convertRect:view toView:{MaxX, MinY, v122, v98}];
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
    rowButton4 = [(ICTableAttachmentViewController *)self rowButton];
    rowButton3 = rowButton4;
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
  tableContentView3 = [(ICTableAttachmentViewController *)self tableContentView];
  view2 = [(ICTableAttachmentViewController *)self view];
  [tableContentView3 convertRect:view2 toView:{v102, v103, v101, v98}];
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
  rowButton4 = [(ICTableAttachmentViewController *)self rowButton];
  rowButton3 = rowButton4;
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
  [rowButton4 setFrame:{v117, v118, v119, v134, *&v135}];
LABEL_32:

LABEL_33:
}

- (void)addColumnLeftOfSelection:(id)selection
{
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  columns = [tableSelection columns];
  firstObject = [columns firstObject];

  table = [(ICTableAttachmentViewController *)self table];
  v7 = [table columnIndexForIdentifier:firstObject];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(ICTableAttachmentViewController *)self addColumnAtIndex:v7];
  }
}

- (void)addColumnRightOfSelection:(id)selection
{
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  columns = [tableSelection columns];
  lastObject = [columns lastObject];

  table = [(ICTableAttachmentViewController *)self table];
  v7 = [table columnIndexForIdentifier:lastObject];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(ICTableAttachmentViewController *)self addColumnAtIndex:v7 + 1];
  }
}

- (void)addColumnBeforeSelection:(id)selection
{
  selectionCopy = selection;
  table = [(ICTableAttachmentViewController *)self table];
  isLeftToRight = [table isLeftToRight];

  if (isLeftToRight)
  {
    [(ICTableAttachmentViewController *)self addColumnLeftOfSelection:selectionCopy];
  }

  else
  {
    [(ICTableAttachmentViewController *)self addColumnRightOfSelection:selectionCopy];
  }
}

- (void)addColumnAfterSelection:(id)selection
{
  selectionCopy = selection;
  table = [(ICTableAttachmentViewController *)self table];
  isLeftToRight = [table isLeftToRight];

  if (isLeftToRight)
  {
    [(ICTableAttachmentViewController *)self addColumnRightOfSelection:selectionCopy];
  }

  else
  {
    [(ICTableAttachmentViewController *)self addColumnLeftOfSelection:selectionCopy];
  }
}

- (id)insertColumns:(unint64_t)columns atIndex:(unint64_t)index
{
  v33 = *MEMORY[0x277D85DE8];
  table = [(ICTableAttachmentViewController *)self table];
  v8 = [table insertColumns:columns atIndex:index];

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
        tableLayoutManager = [(ICTableAttachmentViewController *)self tableLayoutManager];
        columnWidthManager = [tableLayoutManager columnWidthManager];
        v31 = v14;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
        v18 = [columnWidthManager invalidateWidthForColumns:v17];

        tableLayoutManager2 = [(ICTableAttachmentViewController *)self tableLayoutManager];
        columnWidthManager2 = [tableLayoutManager2 columnWidthManager];
        [columnWidthManager2 widthOfColumn:v14];
        v22 = v21;

        columnWidthCache = [(ICTableAttachmentViewController *)self columnWidthCache];
        [columnWidthCache setDimension:v14 forKey:v22];

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

- (void)addColumnAtIndex:(unint64_t)index
{
  [(ICTableAttachmentViewController *)self beginEditing];
  v11 = [(ICTableAttachmentViewController *)self insertColumns:1 atIndex:index];
  firstObject = [v11 firstObject];
  [(ICTableAttachmentViewController *)self redrawAndSave];
  table = [(ICTableAttachmentViewController *)self table];
  v7 = [table identifierForRowAtIndex:0];

  [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:firstObject andRowID:v7 location:0];
  [(ICTableAttachmentViewController *)self endEditing];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = [mainBundle localizedStringForKey:@"ADD_COLUMN_UNDO_STRING" value:@"Add Column" table:@"Localizable"];

  undoManager = [(ICTableAttachmentViewController *)self undoManager];
  [undoManager setActionName:v9];
}

- (void)addRowAboveSelection:(id)selection
{
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  rows = [tableSelection rows];
  firstObject = [rows firstObject];

  table = [(ICTableAttachmentViewController *)self table];
  v7 = [table rowIndexForIdentifier:firstObject];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(ICTableAttachmentViewController *)self addRowAtIndex:v7];
  }
}

- (void)addRowBelowSelection:(id)selection
{
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  rows = [tableSelection rows];
  lastObject = [rows lastObject];

  table = [(ICTableAttachmentViewController *)self table];
  v7 = [table rowIndexForIdentifier:lastObject];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(ICTableAttachmentViewController *)self addRowAtIndex:v7 + 1];
  }
}

- (void)addRowAtIndex:(unint64_t)index
{
  [(ICTableAttachmentViewController *)self willAddRow];
  [(ICTableAttachmentViewController *)self beginEditing];
  table = [(ICTableAttachmentViewController *)self table];
  v11 = [table insertRowAtIndex:index];

  [(ICTableAttachmentViewController *)self redrawAndSave];
  [(ICTableAttachmentViewController *)self postChangeNotification:1 columnOrRowUUIDs:0];
  table2 = [(ICTableAttachmentViewController *)self table];
  v7 = [table2 identifierForColumnAtIndex:0];

  [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:v7 andRowID:v11 location:0];
  [(ICTableAttachmentViewController *)self endEditing];
  undoManager = [(ICTableAttachmentViewController *)self undoManager];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = [mainBundle localizedStringForKey:@"Add Row" value:&stru_282757698 table:0];
  [undoManager setActionName:v10];
}

- (void)deleteTable:(id)table
{
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  [tableSelection unselect];

  attachment = [(ICAttachmentViewController *)self attachment];
  note = [attachment note];
  attachment2 = [(ICAttachmentViewController *)self attachment];
  v8 = [note rangeForAttachment:attachment2];
  v10 = v9;

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    noteTextView = [(ICTableAttachmentViewController *)self noteTextView];
    [noteTextView setSelectedRange:{v8, 0}];

    LOBYTE(noteTextView) = ICInternalSettingsIsTextKit2Enabled();
    objc_opt_class();
    if (noteTextView)
    {
      objc_opt_class();
      noteTextView2 = [(ICTableAttachmentViewController *)self noteTextView];
      textLayoutManager = [noteTextView2 textLayoutManager];
      textStorage2 = ICDynamicCast();
      textContentStorage = [textStorage2 textContentStorage];
      textStorage = [textContentStorage textStorage];
      v20 = ICDynamicCast();
    }

    else
    {
      noteTextView2 = [(ICTableAttachmentViewController *)self noteTextView];
      textLayoutManager = [noteTextView2 layoutManager];
      textStorage2 = [textLayoutManager textStorage];
      v20 = ICDynamicCast();
    }

    [v20 beginEditing];
    [v20 replaceCharactersInRange:v8 withString:{v10, &stru_282757698}];
    [v20 endEditing];
    noteTextView3 = [(ICTableAttachmentViewController *)self noteTextView];
    delegate = [noteTextView3 delegate];
    noteTextView4 = [(ICTableAttachmentViewController *)self noteTextView];
    [delegate textViewDidChange:noteTextView4];
  }
}

- (void)deleteColumns:(id)columns
{
  v38 = *MEMORY[0x277D85DE8];
  columnsCopy = columns;
  table = [(ICTableAttachmentViewController *)self table];
  v6 = [table columnsIntersectingWithColumns:columnsCopy];

  v7 = [v6 count];
  columnCount = [table columnCount];
  if (v7 && v7 < columnCount)
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
          v16 = [table columnIndexForIdentifier:v15];
          [table removeColumnAtIndex:v16];
          [(ICTableAttachmentViewController *)self cleanDeletedColumn:v15];
          if (v13 >= v16)
          {
            v13 = v16;
          }

          tableAXController = [(ICTableAttachmentViewController *)self tableAXController];
          [tableAXController invalidateAXElementsForColumnID:v15];
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
    tableLayoutManager = [(ICTableAttachmentViewController *)self tableLayoutManager];
    columnWidthManager = [tableLayoutManager columnWidthManager];
    v20 = [columnWidthManager invalidateWidthForColumns:v9];

    [(ICTableAttachmentViewController *)self hideColumnRowButtons];
    [(ICTableAttachmentViewController *)self redrawAndSave];
    if ([table columnCount] && objc_msgSend(table, "rowCount"))
    {
      columnCount2 = [table columnCount];
      if (v13 >= columnCount2 - 1)
      {
        v22 = columnCount2 - 1;
      }

      else
      {
        v22 = v13;
      }

      v23 = [table identifierForColumnAtIndex:v22];
      rowButton = [(ICTableAttachmentViewController *)self rowButton];
      columnOrRowIdentifiers = [rowButton columnOrRowIdentifiers];
      firstObject = [columnOrRowIdentifiers firstObject];

      [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:v23 andRowID:firstObject location:2];
    }

    [(ICTableAttachmentViewController *)self endEditing];
    undoManager = [(ICTableAttachmentViewController *)self undoManager];
    v28 = MEMORY[0x277CCACA8];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v30 = [mainBundle localizedStringForKey:@"Delete %lu Column" value:&stru_282757698 table:0];
    v31 = [v28 localizedStringWithFormat:v30, v7];
    [undoManager setActionName:v31];

    v6 = v32;
  }

  else if (v7 == [table columnCount])
  {
    [(ICTableAttachmentViewController *)self deleteTable:self];
  }
}

- (void)deleteSelectedColumns:(id)columns
{
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  columns = [tableSelection columns];

  [(ICTableAttachmentViewController *)self deleteColumns:columns];
}

- (void)deleteRows:(id)rows
{
  v35 = *MEMORY[0x277D85DE8];
  rowsCopy = rows;
  table = [(ICTableAttachmentViewController *)self table];
  v6 = [table rowsIntersectingWithRows:rowsCopy];

  v7 = [v6 count];
  rowCount = [table rowCount];
  if (v7 && v7 < rowCount)
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
          v16 = [table rowIndexForIdentifier:v15];
          [table removeRowAtIndex:v16];
          [(ICTableAttachmentViewController *)self cleanDeletedRow:v15];
          if (v13 >= v16)
          {
            v13 = v16;
          }

          tableAXController = [(ICTableAttachmentViewController *)self tableAXController];
          [tableAXController invalidateAXElementsForRowID:v15];
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
    rowCount2 = [table rowCount];
    if (v13 >= rowCount2 - 1)
    {
      v19 = rowCount2 - 1;
    }

    else
    {
      v19 = v13;
    }

    v20 = [table identifierForRowAtIndex:v19];
    if ([table columnCount] && objc_msgSend(table, "rowCount"))
    {
      columnButton = [(ICTableAttachmentViewController *)self columnButton];
      columnOrRowIdentifiers = [columnButton columnOrRowIdentifiers];
      firstObject = [columnOrRowIdentifiers firstObject];

      [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:firstObject andRowID:v20 location:2];
    }

    [(ICTableAttachmentViewController *)self endEditing];
    undoManager = [(ICTableAttachmentViewController *)self undoManager];
    v25 = MEMORY[0x277CCACA8];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v27 = [mainBundle localizedStringForKey:@"Delete %lu Row" value:&stru_282757698 table:0];
    v28 = [v25 localizedStringWithFormat:v27, v7];
    [undoManager setActionName:v28];

    v6 = v29;
  }

  else if (v7 == [table rowCount])
  {
    [(ICTableAttachmentViewController *)self deleteTable:self];
  }
}

- (void)deleteSelectedRows:(id)rows
{
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  rows = [tableSelection rows];

  [(ICTableAttachmentViewController *)self deleteRows:rows];
}

- (void)cleanDeletedColumn:(id)column
{
  v20 = *MEMORY[0x277D85DE8];
  columnCopy = column;
  columnWidthCache = [(ICTableAttachmentViewController *)self columnWidthCache];
  [columnWidthCache removeDimensionForKey:columnCopy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  cellHeightCache = [(ICTableAttachmentViewController *)self cellHeightCache];
  allValues = [cellHeightCache allValues];

  v8 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v15 + 1) + 8 * v11++) removeDimensionForKey:columnCopy];
      }

      while (v9 != v11);
      v9 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  tableLayoutManager = [(ICTableAttachmentViewController *)self tableLayoutManager];
  [tableLayoutManager removeColumnLayoutManagerForColumn:columnCopy];

  tableContentView = [(ICTableAttachmentViewController *)self tableContentView];
  [tableContentView setVerticalLinePosition:0 forKey:columnCopy];

  textViewManager = [(ICTableAttachmentViewController *)self textViewManager];
  [textViewManager removeColumn:columnCopy];
}

- (void)cleanDeletedRow:(id)row
{
  rowCopy = row;
  rowHeightCache = [(ICTableAttachmentViewController *)self rowHeightCache];
  [rowHeightCache removeDimensionForKey:rowCopy];

  cellHeightCache = [(ICTableAttachmentViewController *)self cellHeightCache];
  [cellHeightCache removeObjectForKey:rowCopy];

  tableLayoutManager = [(ICTableAttachmentViewController *)self tableLayoutManager];
  rowPositions = [tableLayoutManager rowPositions];
  [rowPositions removeObjectForKey:rowCopy];

  table = [(ICTableAttachmentViewController *)self table];
  columnCount = [table columnCount];

  if (columnCount)
  {
    v10 = 0;
    do
    {
      table2 = [(ICTableAttachmentViewController *)self table];
      v12 = [table2 identifierForColumnAtIndex:v10];

      tableLayoutManager2 = [(ICTableAttachmentViewController *)self tableLayoutManager];
      v14 = [tableLayoutManager2 columnLayoutManagerForColumn:v12];

      [v14 removeRow:rowCopy];
      ++v10;
      table3 = [(ICTableAttachmentViewController *)self table];
      columnCount2 = [table3 columnCount];
    }

    while (v10 < columnCount2);
  }

  tableContentView = [(ICTableAttachmentViewController *)self tableContentView];
  [tableContentView setHorizontalLinePosition:0 forKey:rowCopy];
}

- (void)dragBeganOnColumnOrRow:(BOOL)row atLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  currentInfo = [MEMORY[0x277D35DF8] currentInfo];
  [(ICTableAttachmentViewController *)self setDraggingAppearance:currentInfo];

  draggingAppearance = [(ICTableAttachmentViewController *)self draggingAppearance];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__ICTableAttachmentViewController_dragBeganOnColumnOrRow_atLocation___block_invoke;
  v10[3] = &unk_2781AE078;
  v10[4] = self;
  rowCopy = row;
  *&v10[5] = x;
  *&v10[6] = y;
  [draggingAppearance performAsDefaultAppearance:v10];
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

- (void)dragMovedOnColumnOrRow:(BOOL)row atLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  draggingAppearance = [(ICTableAttachmentViewController *)self draggingAppearance];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__ICTableAttachmentViewController_dragMovedOnColumnOrRow_atLocation___block_invoke;
  v9[3] = &unk_2781AE078;
  v9[4] = self;
  *&v9[5] = x;
  *&v9[6] = y;
  rowCopy = row;
  [draggingAppearance performAsDefaultAppearance:v9];
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

- (void)dragEndedOnColumnOrRow:(BOOL)row atLocation:(CGPoint)location
{
  v6 = [(ICTableAttachmentViewController *)self draggingAppearance:location.x];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__ICTableAttachmentViewController_dragEndedOnColumnOrRow_atLocation___block_invoke;
  v7[3] = &unk_2781ACFF8;
  v7[4] = self;
  rowCopy = row;
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

- (void)moveCurrentColumnOrRow:(BOOL)row toIndex:(unint64_t)index
{
  rowCopy = row;
  v137 = *MEMORY[0x277D85DE8];
  table = [(ICTableAttachmentViewController *)self table];
  if (rowCopy)
  {
    columnButton = [(ICTableAttachmentViewController *)self columnButton];
    columnOrRowIdentifiers = [columnButton columnOrRowIdentifiers];
    firstObject = [columnOrRowIdentifiers firstObject];
    v11 = [table columnIndexForIdentifier:firstObject];
  }

  else
  {
    columnButton = [(ICTableAttachmentViewController *)self rowButton];
    columnOrRowIdentifiers = [columnButton columnOrRowIdentifiers];
    firstObject = [columnOrRowIdentifiers firstObject];
    v11 = [table rowIndexForIdentifier:firstObject];
  }

  v115 = v11;

  textViewManager = [(ICTableAttachmentViewController *)self textViewManager];
  [textViewManager setDraggedColumns:0];

  textViewManager2 = [(ICTableAttachmentViewController *)self textViewManager];
  [textViewManager2 setDraggedRows:0];

  if (index == 0x7FFFFFFFFFFFFFFFLL || v115 == index)
  {
    textViewManager3 = [(ICTableAttachmentViewController *)self textViewManager];
    [(ICTableAttachmentViewController *)self viewport];
    [textViewManager3 redrawAllWithViewport:?];

    if (rowCopy)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 2 * (v115 < index);
    if (rowCopy)
    {
      columnButton2 = [(ICTableAttachmentViewController *)self columnButton];
      columnOrRowIdentifiers2 = [columnButton2 columnOrRowIdentifiers];
      v133[0] = MEMORY[0x277D85DD0];
      v133[1] = 3221225472;
      v133[2] = __66__ICTableAttachmentViewController_moveCurrentColumnOrRow_toIndex___block_invoke;
      v133[3] = &unk_2781AE0C8;
      v133[4] = self;
      v133[5] = index;
      v133[6] = v115;
      [columnOrRowIdentifiers2 enumerateObjectsWithOptions:v14 usingBlock:v133];

      [(ICTableAttachmentViewController *)self redrawAndSave];
      columnButton3 = [(ICTableAttachmentViewController *)self columnButton];
      columnOrRowIdentifiers3 = [columnButton3 columnOrRowIdentifiers];
      [(ICTableAttachmentViewController *)self postChangeNotification:5 columnOrRowUUIDs:columnOrRowIdentifiers3];

LABEL_9:
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      columnButton4 = [(ICTableAttachmentViewController *)self columnButton];
      columnOrRowIdentifiers4 = [columnButton4 columnOrRowIdentifiers];

      v22 = [columnOrRowIdentifiers4 countByEnumeratingWithState:&v128 objects:v136 count:16];
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
              objc_enumerationMutation(columnOrRowIdentifiers4);
            }

            [(ICTableAttachmentViewController *)self setHidden:1 forColumn:*(*(&v128 + 1) + 8 * i)];
          }

          v23 = [columnOrRowIdentifiers4 countByEnumeratingWithState:&v128 objects:v136 count:16];
        }

        while (v23);
      }

      textViewManager4 = [(ICTableAttachmentViewController *)self textViewManager];
      columnButton5 = [(ICTableAttachmentViewController *)self columnButton];
      columnOrRowIdentifiers5 = [columnButton5 columnOrRowIdentifiers];
      firstObject2 = [columnOrRowIdentifiers5 firstObject];
      [textViewManager4 frameOfColumn:firstObject2];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      textViewManager5 = [(ICTableAttachmentViewController *)self textViewManager];
      columnButton6 = [(ICTableAttachmentViewController *)self columnButton];
      columnOrRowIdentifiers6 = [columnButton6 columnOrRowIdentifiers];
      lastObject = [columnOrRowIdentifiers6 lastObject];
      [textViewManager5 frameOfColumn:lastObject];
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

    rowButton = [(ICTableAttachmentViewController *)self rowButton];
    columnOrRowIdentifiers7 = [rowButton columnOrRowIdentifiers];
    v132[0] = MEMORY[0x277D85DD0];
    v132[1] = 3221225472;
    v132[2] = __66__ICTableAttachmentViewController_moveCurrentColumnOrRow_toIndex___block_invoke_2;
    v132[3] = &unk_2781AE0C8;
    v132[4] = self;
    v132[5] = index;
    v132[6] = v115;
    [columnOrRowIdentifiers7 enumerateObjectsWithOptions:v14 usingBlock:v132];

    [(ICTableAttachmentViewController *)self redrawAndSave];
    rowButton2 = [(ICTableAttachmentViewController *)self rowButton];
    columnOrRowIdentifiers8 = [rowButton2 columnOrRowIdentifiers];
    [(ICTableAttachmentViewController *)self postChangeNotification:6 columnOrRowUUIDs:columnOrRowIdentifiers8];
  }

  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  rowButton3 = [(ICTableAttachmentViewController *)self rowButton];
  columnOrRowIdentifiers9 = [rowButton3 columnOrRowIdentifiers];

  v60 = [columnOrRowIdentifiers9 countByEnumeratingWithState:&v124 objects:v135 count:16];
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
          objc_enumerationMutation(columnOrRowIdentifiers9);
        }

        [(ICTableAttachmentViewController *)self setHidden:1 forColumn:*(*(&v124 + 1) + 8 * j)];
      }

      v61 = [columnOrRowIdentifiers9 countByEnumeratingWithState:&v124 objects:v135 count:16];
    }

    while (v61);
  }

  textViewManager6 = [(ICTableAttachmentViewController *)self textViewManager];
  rowButton4 = [(ICTableAttachmentViewController *)self rowButton];
  columnOrRowIdentifiers10 = [rowButton4 columnOrRowIdentifiers];
  firstObject3 = [columnOrRowIdentifiers10 firstObject];
  [textViewManager6 frameOfRow:firstObject3];
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;

  textViewManager7 = [(ICTableAttachmentViewController *)self textViewManager];
  rowButton5 = [(ICTableAttachmentViewController *)self rowButton];
  columnOrRowIdentifiers11 = [rowButton5 columnOrRowIdentifiers];
  lastObject2 = [columnOrRowIdentifiers11 lastObject];
  [textViewManager7 frameOfRow:lastObject2];
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
  rowButton6 = [(ICTableAttachmentViewController *)self rowButton];
  columnOrRowIdentifiers12 = [rowButton6 columnOrRowIdentifiers];
  v90 = [columnOrRowIdentifiers12 count] + v115;
  table2 = [(ICTableAttachmentViewController *)self table];
  rowCount = [table2 rowCount];

  if (v90 < rowCount)
  {
    v112 = rowCopy;
    indexCopy = index;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    textViewManager8 = [(ICTableAttachmentViewController *)self textViewManager];
    columnIDs = [textViewManager8 columnIDs];

    obj = columnIDs;
    v95 = [columnIDs countByEnumeratingWithState:&v120 objects:v134 count:16];
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
          textViewManager9 = [(ICTableAttachmentViewController *)self textViewManager];
          v101 = [textViewManager9 textViewForColumn:v99];

          objc_opt_class();
          textStorage = [v101 textStorage];
          v103 = ICDynamicCast();

          table3 = [(ICTableAttachmentViewController *)self table];
          rowButton7 = [(ICTableAttachmentViewController *)self rowButton];
          columnOrRowIdentifiers13 = [rowButton7 columnOrRowIdentifiers];
          v107 = [table3 identifierForRowAtIndex:{objc_msgSend(columnOrRowIdentifiers13, "count") + v115}];

          v108 = [v103 characterRangeForRowID:v107];
          if (v108 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v109 = v108;
            layoutManager = [v101 layoutManager];
            [layoutManager invalidateLayoutForCharacterRange:v109 actualCharacterRange:{1, 0}];
          }
        }

        v96 = [obj countByEnumeratingWithState:&v120 objects:v134 count:16];
      }

      while (v96);
    }

    index = indexCopy;
    LOBYTE(rowCopy) = v112;
  }

LABEL_36:
  tableAutoScroller = [(ICTableAttachmentViewController *)self tableAutoScroller];
  [tableAutoScroller stopAndInvalidate];

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
  v119 = rowCopy;
  v116[0] = MEMORY[0x277D85DD0];
  v116[1] = 3221225472;
  v116[2] = __66__ICTableAttachmentViewController_moveCurrentColumnOrRow_toIndex___block_invoke_4;
  v116[3] = &unk_2781AE078;
  v117 = rowCopy;
  v116[4] = self;
  v116[5] = v115;
  v116[6] = index;
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

- (void)setHidden:(BOOL)hidden forColumn:(id)column
{
  hiddenCopy = hidden;
  columnCopy = column;
  textViewManager = [(ICTableAttachmentViewController *)self textViewManager];
  v7 = [textViewManager textViewForColumn:columnCopy];

  hiddenCopy ^= 1u;
  [v7 ic_setAlpha:hiddenCopy];
  if (hiddenCopy)
  {
    x = *MEMORY[0x277CBF398];
    y = *(MEMORY[0x277CBF398] + 8);
    width = *(MEMORY[0x277CBF398] + 16);
    height = *(MEMORY[0x277CBF398] + 24);
  }

  else
  {
    textViewManager2 = [(ICTableAttachmentViewController *)self textViewManager];
    [textViewManager2 frameOfColumn:columnCopy];
    x = v9;
    y = v11;
    width = v13;
    height = v15;

    tableContentView = [(ICTableAttachmentViewController *)self tableContentView];
    [tableContentView exclusionRect];
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

  tableContentView2 = [(ICTableAttachmentViewController *)self tableContentView];
  [tableContentView2 setExclusionRect:{x, y, width, height}];
}

- (void)setHidden:(BOOL)hidden forRow:(id)row
{
  hiddenCopy = hidden;
  v59 = *MEMORY[0x277D85DE8];
  rowCopy = row;
  if (hiddenCopy)
  {
    v55 = 0uLL;
    v56 = 0uLL;
    v53 = 0uLL;
    v54 = 0uLL;
    textViewManager = [(ICTableAttachmentViewController *)self textViewManager];
    columnIDs = [textViewManager columnIDs];

    v9 = [columnIDs countByEnumeratingWithState:&v53 objects:v58 count:16];
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
            objc_enumerationMutation(columnIDs);
          }

          v13 = *(*(&v53 + 1) + 8 * i);
          tableLayoutManager = [(ICTableAttachmentViewController *)self tableLayoutManager];
          v15 = [tableLayoutManager columnLayoutManagerForColumn:v13];

          hiddenRows = [v15 hiddenRows];
          v17 = [hiddenRows mutableCopy];
          v18 = v17;
          if (v17)
          {
            array = v17;
          }

          else
          {
            array = [MEMORY[0x277CBEB18] array];
          }

          v20 = array;

          [v20 addObject:rowCopy];
          [v15 setHiddenRows:v20];
        }

        v10 = [columnIDs countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v10);
    }

    textViewManager2 = [(ICTableAttachmentViewController *)self textViewManager];
    [textViewManager2 frameOfRow:rowCopy];
    x = v22;
    y = v24;
    width = v26;
    height = v28;

    tableContentView = [(ICTableAttachmentViewController *)self tableContentView];
    [tableContentView exclusionRect];
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
    textViewManager3 = [(ICTableAttachmentViewController *)self textViewManager];
    columnIDs2 = [textViewManager3 columnIDs];

    v41 = [columnIDs2 countByEnumeratingWithState:&v49 objects:v57 count:16];
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
            objc_enumerationMutation(columnIDs2);
          }

          v45 = *(*(&v49 + 1) + 8 * j);
          tableLayoutManager2 = [(ICTableAttachmentViewController *)self tableLayoutManager];
          v47 = [tableLayoutManager2 columnLayoutManagerForColumn:v45];

          [v47 setHiddenRows:0];
        }

        v42 = [columnIDs2 countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v42);
    }

    x = *MEMORY[0x277CBF398];
    y = *(MEMORY[0x277CBF398] + 8);
    width = *(MEMORY[0x277CBF398] + 16);
    height = *(MEMORY[0x277CBF398] + 24);
  }

  tableContentView2 = [(ICTableAttachmentViewController *)self tableContentView];
  [tableContentView2 setExclusionRect:{x, y, width, height}];
}

- (void)tableAutoScroller:(id)scroller scrollOffsetDelta:(CGPoint)delta
{
  y = delta.y;
  scrollDirectionMode = [scroller scrollDirectionMode];
  [(ICTableAttachmentViewController *)self currentDragGestureLocation];
  if (scrollDirectionMode == 1)
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

  [(ICTableAttachmentViewController *)self dragMovedOnColumnOrRow:scrollDirectionMode == 1 atLocation:v9, v8];
}

- (void)textRangeDraggedAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v34[1] = *MEMORY[0x277D85DE8];
  columnButton = [(ICTableAttachmentViewController *)self columnButton];
  columnOrRowIdentifiers = [columnButton columnOrRowIdentifiers];
  firstObject = [columnOrRowIdentifiers firstObject];

  rowButton = [(ICTableAttachmentViewController *)self rowButton];
  columnOrRowIdentifiers2 = [rowButton columnOrRowIdentifiers];
  firstObject2 = [columnOrRowIdentifiers2 firstObject];

  textViewManager = [(ICTableAttachmentViewController *)self textViewManager];
  [textViewManager frameOfCellAtColumn:firstObject row:firstObject2];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  [tableSelection setDraggingText:1];

  tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
  type = [tableSelection2 type];

  if (type == 1)
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
      currentlyEditingTextView = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
      [currentlyEditingTextView setTextSelectionHidden:1];

      currentlyEditingTextView2 = firstObject2;
      v26 = firstObject;
      tableSelection3 = [(ICTableAttachmentViewController *)self tableSelection];
      v34[0] = v26;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
      v33 = currentlyEditingTextView2;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
      [tableSelection3 selectCellRangeAtColumns:v28 rows:v29];

      [(ICTableAttachmentViewController *)self setRangeSelectionAnchorColumn:v26];
      [(ICTableAttachmentViewController *)self setRangeSelectionAnchorRow:currentlyEditingTextView2];
LABEL_7:

      [(ICTableAttachmentViewController *)self updateChrome];
    }
  }

  else
  {
    tableSelection4 = [(ICTableAttachmentViewController *)self tableSelection];
    type2 = [tableSelection4 type];

    if (type2 == 4)
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

      tableSelection5 = [(ICTableAttachmentViewController *)self tableSelection];
      [tableSelection5 selectCellAtColumn:firstObject row:firstObject2];

      currentlyEditingTextView2 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
      [currentlyEditingTextView2 setTextSelectionHidden:0];
      goto LABEL_7;
    }
  }

LABEL_9:
}

- (void)textRangeDragEnded
{
  currentlyEditingTextView = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
  [currentlyEditingTextView setTextSelectionHidden:0];

  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  type = [tableSelection type];

  if (type == 4)
  {
    tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
    columns = [tableSelection2 columns];

    tableSelection3 = [(ICTableAttachmentViewController *)self tableSelection];
    rows = [tableSelection3 rows];

    selectionHighlightView = [(ICTableAttachmentViewController *)self selectionHighlightView];
    [selectionHighlightView removeFromSuperview];

    currentlyEditingTextView2 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
    [(ICTableAttachmentViewController *)self endCellEditingSessionWithTextView:currentlyEditingTextView2];

    tableSelection4 = [(ICTableAttachmentViewController *)self tableSelection];
    [tableSelection4 selectCellRangeAtColumns:columns rows:rows];

    [(ICTableAttachmentViewController *)self updateChrome];
    selectionHighlightView2 = [(ICTableAttachmentViewController *)self selectionHighlightView];
    [(ICTableAttachmentViewController *)self ic_makeFirstResponder:selectionHighlightView2];
  }

  tableSelection5 = [(ICTableAttachmentViewController *)self tableSelection];
  [tableSelection5 setDraggingText:0];
}

- (void)cellRangeDragBeganOnView:(id)view
{
  viewCopy = view;
  startKnob = [(ICTableAttachmentViewController *)self startKnob];
  if (startKnob == viewCopy)
  {
  }

  else
  {
    endKnob = [(ICTableAttachmentViewController *)self endKnob];

    v6 = viewCopy;
    if (endKnob != viewCopy)
    {
      goto LABEL_26;
    }
  }

  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  type = [tableSelection type];

  if (type == 4)
  {
    startKnob2 = [(ICTableAttachmentViewController *)self startKnob];

    if (startKnob2 == viewCopy)
    {
      tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
      columns = [tableSelection2 columns];
      lastObject = [columns lastObject];
      [(ICTableAttachmentViewController *)self setRangeSelectionAnchorColumn:lastObject];

      tableSelection3 = [(ICTableAttachmentViewController *)self tableSelection];
      rows = [tableSelection3 rows];
      lastObject2 = [rows lastObject];
    }

    else
    {
      endKnob2 = [(ICTableAttachmentViewController *)self endKnob];

      v6 = viewCopy;
      if (endKnob2 != viewCopy)
      {
        goto LABEL_26;
      }

      tableSelection4 = [(ICTableAttachmentViewController *)self tableSelection];
      columns2 = [tableSelection4 columns];
      firstObject = [columns2 firstObject];
      [(ICTableAttachmentViewController *)self setRangeSelectionAnchorColumn:firstObject];

      tableSelection3 = [(ICTableAttachmentViewController *)self tableSelection];
      rows = [tableSelection3 rows];
      lastObject2 = [rows firstObject];
    }

    v34 = lastObject2;
    [(ICTableAttachmentViewController *)self setRangeSelectionAnchorRow:lastObject2];

    goto LABEL_25;
  }

  tableSelection5 = [(ICTableAttachmentViewController *)self tableSelection];
  type2 = [tableSelection5 type];

  if (type2 != 2)
  {
    tableSelection6 = [(ICTableAttachmentViewController *)self tableSelection];
    type3 = [tableSelection6 type];

    v6 = viewCopy;
    if (type3 != 3)
    {
      goto LABEL_26;
    }

    startKnob3 = [(ICTableAttachmentViewController *)self startKnob];

    if (startKnob3 == viewCopy)
    {
      tableSelection7 = [(ICTableAttachmentViewController *)self tableSelection];
      rows2 = [tableSelection7 rows];
      lastObject3 = [rows2 lastObject];
    }

    else
    {
      endKnob3 = [(ICTableAttachmentViewController *)self endKnob];

      if (endKnob3 != viewCopy)
      {
LABEL_24:
        [(ICTableAttachmentViewController *)self setRangeSelectionAnchorColumn:0];
        goto LABEL_25;
      }

      tableSelection7 = [(ICTableAttachmentViewController *)self tableSelection];
      rows2 = [tableSelection7 rows];
      lastObject3 = [rows2 firstObject];
    }

    v36 = lastObject3;
    [(ICTableAttachmentViewController *)self setRangeSelectionAnchorRow:lastObject3];

    goto LABEL_24;
  }

  startKnob4 = [(ICTableAttachmentViewController *)self startKnob];

  if (startKnob4 == viewCopy)
  {
    tableSelection8 = [(ICTableAttachmentViewController *)self tableSelection];
    columns3 = [tableSelection8 columns];
    lastObject4 = [columns3 lastObject];
    goto LABEL_20;
  }

  endKnob4 = [(ICTableAttachmentViewController *)self endKnob];

  if (endKnob4 == viewCopy)
  {
    tableSelection8 = [(ICTableAttachmentViewController *)self tableSelection];
    columns3 = [tableSelection8 columns];
    lastObject4 = [columns3 firstObject];
LABEL_20:
    v35 = lastObject4;
    [(ICTableAttachmentViewController *)self setRangeSelectionAnchorColumn:lastObject4];
  }

  [(ICTableAttachmentViewController *)self setRangeSelectionAnchorRow:0];
LABEL_25:
  v6 = viewCopy;
LABEL_26:
}

- (void)cellRangeDraggedAtLocation:(CGPoint)location
{
  y = location.y;
  v5 = fmax(location.x, 0.0);
  tableContentView = [(ICTableAttachmentViewController *)self tableContentView];
  [tableContentView bounds];
  v8 = v7 + -1.0;

  if (v5 >= v8)
  {
    v5 = v8;
  }

  v9 = fmax(y, 0.0);
  tableContentView2 = [(ICTableAttachmentViewController *)self tableContentView];
  [tableContentView2 bounds];
  v12 = v11 + -1.0;

  if (v9 >= v12)
  {
    v9 = v12;
  }

  textViewManager = [(ICTableAttachmentViewController *)self textViewManager];
  v46 = 0;
  v47 = 0;
  v14 = [textViewManager cellContainingPoint:&v47 columnID:&v46 rowID:{v5, v9}];
  v15 = v47;
  v16 = v46;

  table = [(ICTableAttachmentViewController *)self table];
  if (v14)
  {
    rangeSelectionAnchorColumn = [(ICTableAttachmentViewController *)self rangeSelectionAnchorColumn];
    if (rangeSelectionAnchorColumn)
    {
      rangeSelectionAnchorColumn2 = [(ICTableAttachmentViewController *)self rangeSelectionAnchorColumn];
      v20 = [table columnIndexForIdentifier:rangeSelectionAnchorColumn2];
    }

    else
    {
      v20 = 0;
    }

    rangeSelectionAnchorRow = [(ICTableAttachmentViewController *)self rangeSelectionAnchorRow];
    if (rangeSelectionAnchorRow)
    {
      rangeSelectionAnchorRow2 = [(ICTableAttachmentViewController *)self rangeSelectionAnchorRow];
      v23 = [table rowIndexForIdentifier:rangeSelectionAnchorRow2];
    }

    else
    {
      v23 = 0;
    }

    v24 = [table columnIndexForIdentifier:v15];
    v25 = [table rowIndexForIdentifier:v16];
    tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
    type = [tableSelection type];

    if (type == 4)
    {
      v45 = v15;
      array = [MEMORY[0x277CBEB18] array];
      array2 = [MEMORY[0x277CBEB18] array];
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
        v31 = [table identifierForColumnAtIndex:v30];
        [array addObject:v31];

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
        v34 = [table identifierForRowAtIndex:v32];
        [array2 addObject:v34];

        ++v32;
      }

      while (v32 <= v33);
      tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
      [tableSelection2 selectCellRangeAtColumns:array rows:array2];

      [(ICTableAttachmentViewController *)self announceCellRangeSelectionChangeForAccessibilityIfNecessary];
      goto LABEL_44;
    }

    tableSelection3 = [(ICTableAttachmentViewController *)self tableSelection];
    type2 = [tableSelection3 type];

    if (type2 == 2)
    {
      v45 = v15;
      array = [MEMORY[0x277CBEB18] array];
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
        v39 = [table identifierForColumnAtIndex:v38];
        [array addObject:v39];

        ++v38;
      }

      while (v38 <= v20);
      array2 = [(ICTableAttachmentViewController *)self tableSelection];
      [array2 selectColumns:array];
      goto LABEL_44;
    }

    tableSelection4 = [(ICTableAttachmentViewController *)self tableSelection];
    type3 = [tableSelection4 type];

    if (type3 == 3)
    {
      v45 = v15;
      array = [MEMORY[0x277CBEB18] array];
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
        v44 = [table identifierForRowAtIndex:v42];
        [array addObject:v44];

        ++v42;
      }

      while (v42 <= v43);
      array2 = [(ICTableAttachmentViewController *)self tableSelection];
      [array2 selectRows:array];
LABEL_44:

      v15 = v45;
    }
  }

  [(ICTableAttachmentViewController *)self updateChrome];
}

- (id)namedStylesForCurrentSelectionAndBIUS:(unint64_t *)s emphasisColorType:(int64_t *)type
{
  v49 = *MEMORY[0x277D85DE8];
  table = [(ICTableAttachmentViewController *)self table];
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  v22 = objc_alloc_init(MEMORY[0x277CCAB58]);
  if ([tableSelection type] || -[ICTableAttachmentViewController containedInNoteSelection](self, "containedInNoteSelection"))
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    columns = [tableSelection columns];
    indexSet = 0;
    v7 = [columns countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v7)
    {
      v8 = *v44;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v44 != v8)
          {
            objc_enumerationMutation(columns);
          }

          v10 = *(*(&v43 + 1) + 8 * i);
          if (!indexSet)
          {
            indexSet = [MEMORY[0x277CCAB58] indexSet];
          }

          v11 = [table columnIndexForIdentifier:v10];
          if (v11 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [indexSet addIndex:v11];
          }
        }

        v7 = [columns countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v7);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    rows = [tableSelection rows];
    indexSet2 = 0;
    v14 = [rows countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v14)
    {
      v15 = *v40;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v40 != v15)
          {
            objc_enumerationMutation(rows);
          }

          v17 = *(*(&v39 + 1) + 8 * j);
          if (!indexSet2)
          {
            indexSet2 = [MEMORY[0x277CCAB58] indexSet];
          }

          v18 = [table rowIndexForIdentifier:v17];
          if (v18 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [indexSet2 addIndex:v18];
          }
        }

        v14 = [rows countByEnumeratingWithState:&v39 objects:v47 count:16];
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
    v26 = tableSelection;
    selfCopy = self;
    v28 = v22;
    v29 = &v35;
    v30 = &v31;
    [table enumerateCellObjectsInCellSelectionContainingColumnIndices:indexSet rowIndices:indexSet2 copyItems:0 usingBlock:v25];
    if (s)
    {
      *s = v36[3];
    }

    if (type)
    {
      *type = v32[3];
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

- (void)setSelectionBIUSStyle:(unint64_t)style toggleOn:(BOOL)on onValue:(id)value
{
  onCopy = on;
  valueCopy = value;
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  [(ICTableAttachmentViewController *)self setSelectionBIUSStyle:style toggleOn:onCopy onValue:valueCopy withSelection:tableSelection];
}

- (void)setSelectionBIUSStyle:(unint64_t)style toggleOn:(BOOL)on onValue:(id)value withSelection:(id)selection
{
  v50 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  selectionCopy = selection;
  table = [(ICTableAttachmentViewController *)self table];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  columns = [selectionCopy columns];
  v11 = [columns countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v11)
  {
    v12 = v11;
    indexSet = 0;
    v14 = *v45;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v45 != v14)
        {
          objc_enumerationMutation(columns);
        }

        v16 = *(*(&v44 + 1) + 8 * i);
        if (!indexSet)
        {
          indexSet = [MEMORY[0x277CCAB58] indexSet];
        }

        [indexSet addIndex:{objc_msgSend(table, "columnIndexForIdentifier:", v16)}];
      }

      v12 = [columns countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v12);
  }

  else
  {
    indexSet = 0;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v31 = selectionCopy;
  rows = [selectionCopy rows];
  v18 = [rows countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v18)
  {
    v19 = v18;
    indexSet2 = 0;
    v21 = *v41;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v41 != v21)
        {
          objc_enumerationMutation(rows);
        }

        v23 = *(*(&v40 + 1) + 8 * j);
        if (!indexSet2)
        {
          indexSet2 = [MEMORY[0x277CCAB58] indexSet];
        }

        [indexSet2 addIndex:{objc_msgSend(table, "rowIndexForIdentifier:", v23)}];
      }

      v19 = [rows countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v19);
  }

  else
  {
    indexSet2 = 0;
  }

  undoTarget = [(ICTableAttachmentViewController *)self undoTarget];
  undoManager = [(ICTableAttachmentViewController *)self undoManager];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __88__ICTableAttachmentViewController_setSelectionBIUSStyle_toggleOn_onValue_withSelection___block_invoke;
  v35[3] = &unk_2781AE190;
  onCopy = on;
  v35[4] = self;
  v36 = valueCopy;
  v37 = v31;
  styleCopy = style;
  v26 = v31;
  v27 = valueCopy;
  [table enumerateTextStoragesForColumnIndexes:indexSet rowIndexes:indexSet2 undoTarget:undoTarget undoManager:undoManager usingBlock:v35];

  [(ICTableAttachmentViewController *)self save];
  undoManager2 = [(ICTableAttachmentViewController *)self undoManager];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v30 = [mainBundle localizedStringForKey:@"Styling" value:&stru_282757698 table:0];
  [undoManager2 setActionName:v30];
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

- (void)setSelectionNamedStyle:(unsigned int)style
{
  v3 = *&style;
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  columns = [tableSelection columns];

  tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
  rows = [tableSelection2 rows];

  [(ICTableAttachmentViewController *)self setSelectionNamedStyle:v3 withColumns:columns rows:rows];
}

- (void)setSelectionNamedStyle:(unsigned int)style withColumns:(id)columns rows:(id)rows
{
  v46 = *MEMORY[0x277D85DE8];
  columnsCopy = columns;
  rowsCopy = rows;
  selfCopy = self;
  table = [(ICTableAttachmentViewController *)self table];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = columnsCopy;
  v11 = [v10 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v11)
  {
    v12 = v11;
    indexSet = 0;
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
        if (!indexSet)
        {
          indexSet = [MEMORY[0x277CCAB58] indexSet];
        }

        [indexSet addIndex:{objc_msgSend(table, "columnIndexForIdentifier:", v16)}];
      }

      v12 = [v10 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v12);
  }

  else
  {
    indexSet = 0;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v17 = rowsCopy;
  v18 = [v17 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v18)
  {
    v19 = v18;
    indexSet2 = 0;
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
        if (!indexSet2)
        {
          indexSet2 = [MEMORY[0x277CCAB58] indexSet];
        }

        [indexSet2 addIndex:{objc_msgSend(table, "rowIndexForIdentifier:", v23)}];
      }

      v19 = [v17 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v19);
  }

  else
  {
    indexSet2 = 0;
  }

  v24 = [MEMORY[0x277D35F98] paragraphStyleNamed:style];
  undoTarget = [(ICTableAttachmentViewController *)selfCopy undoTarget];
  undoManager = [(ICTableAttachmentViewController *)selfCopy undoManager];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __75__ICTableAttachmentViewController_setSelectionNamedStyle_withColumns_rows___block_invoke;
  v33[3] = &unk_2781AE1E0;
  styleCopy = style;
  v33[4] = selfCopy;
  v34 = v24;
  v27 = v24;
  [table enumerateTextStoragesForColumnIndexes:indexSet rowIndexes:indexSet2 undoTarget:undoTarget undoManager:undoManager usingBlock:v33];

  [(ICTableAttachmentViewController *)selfCopy save];
  undoManager2 = [(ICTableAttachmentViewController *)selfCopy undoManager];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v30 = [mainBundle localizedStringForKey:@"Styling" value:&stru_282757698 table:0];
  [undoManager2 setActionName:v30];
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
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  table = [(ICTableAttachmentViewController *)self table];
  if ([tableSelection isRangeOrSpanningSelection] && objc_msgSend(table, "columnCount") && objc_msgSend(table, "rowCount"))
  {
    columns = [tableSelection columns];
    firstObject = [columns firstObject];
    v7 = firstObject;
    if (firstObject)
    {
      v8 = firstObject;
    }

    else
    {
      v8 = [table identifierForColumnAtIndex:0];
    }

    v11 = v8;

    rows = [tableSelection rows];
    firstObject2 = [rows firstObject];
    v14 = firstObject2;
    if (firstObject2)
    {
      v15 = firstObject2;
    }

    else
    {
      v15 = [table identifierForRowAtIndex:0];
    }

    v16 = v15;

    v17 = [table stringForColumnID:v11 rowID:v16];
    if ([v17 length])
    {
      v18 = [v17 attributesAtIndex:0 effectiveRange:0];
      v19 = [v18 objectForKey:*MEMORY[0x277D35DA8]];
      alignment = [v19 alignment];
    }

    else
    {
      alignment = 0;
    }
  }

  else
  {
    alignment = 0;
  }

  return alignment;
}

- (void)setSelectionAlignment:(int64_t)alignment
{
  v42 = *MEMORY[0x277D85DE8];
  table = [(ICTableAttachmentViewController *)self table];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  columns = [tableSelection columns];

  v7 = [columns countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    indexSet = 0;
    v10 = *v37;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(columns);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        if (!indexSet)
        {
          indexSet = [MEMORY[0x277CCAB58] indexSet];
        }

        [indexSet addIndex:{objc_msgSend(table, "columnIndexForIdentifier:", v12)}];
      }

      v8 = [columns countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v8);
  }

  else
  {
    indexSet = 0;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
  rows = [tableSelection2 rows];

  v15 = [rows countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v15)
  {
    v16 = v15;
    indexSet2 = 0;
    v18 = *v33;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(rows);
        }

        v20 = *(*(&v32 + 1) + 8 * j);
        if (!indexSet2)
        {
          indexSet2 = [MEMORY[0x277CCAB58] indexSet];
        }

        [indexSet2 addIndex:{objc_msgSend(table, "rowIndexForIdentifier:", v20)}];
      }

      v16 = [rows countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v16);
  }

  else
  {
    indexSet2 = 0;
  }

  undoTarget = [(ICTableAttachmentViewController *)self undoTarget];
  undoManager = [(ICTableAttachmentViewController *)self undoManager];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __57__ICTableAttachmentViewController_setSelectionAlignment___block_invoke;
  v28[3] = &unk_2781AE230;
  v29 = table;
  selfCopy = self;
  alignmentCopy = alignment;
  v23 = table;
  [v23 enumerateTextStoragesForColumnIndexes:indexSet rowIndexes:indexSet2 undoTarget:undoTarget undoManager:undoManager usingBlock:v28];

  [(ICTableAttachmentViewController *)self save];
  undoManager2 = [(ICTableAttachmentViewController *)self undoManager];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v26 = [mainBundle localizedStringForKey:@"Format" value:&stru_282757698 table:0];
  [undoManager2 setActionName:v26];
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
  writingDirection = [MEMORY[0x277D74248] defaultWritingDirectionForLanguage:0];
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  table = [(ICTableAttachmentViewController *)self table];
  if ([tableSelection isRangeOrSpanningSelection] && objc_msgSend(table, "columnCount") && objc_msgSend(table, "rowCount"))
  {
    columns = [tableSelection columns];
    firstObject = [columns firstObject];
    v8 = firstObject;
    if (firstObject)
    {
      v9 = firstObject;
    }

    else
    {
      v9 = [table identifierForColumnAtIndex:0];
    }

    v10 = v9;

    rows = [tableSelection rows];
    firstObject2 = [rows firstObject];
    v13 = firstObject2;
    if (firstObject2)
    {
      v14 = firstObject2;
    }

    else
    {
      v14 = [table identifierForRowAtIndex:0];
    }

    v15 = v14;

    v16 = [table stringForColumnID:v10 rowID:v15];
    if ([v16 length])
    {
      v17 = [v16 attributesAtIndex:0 effectiveRange:0];
      v18 = [v17 objectForKey:*MEMORY[0x277D35DA8]];
      writingDirection = [v18 writingDirection];
    }
  }

  return writingDirection;
}

- (void)setSelectionDirection:(int64_t)direction
{
  v35 = *MEMORY[0x277D85DE8];
  table = [(ICTableAttachmentViewController *)self table];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  columns = [tableSelection columns];

  v7 = [columns countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    indexSet = 0;
    v10 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(columns);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        if (!indexSet)
        {
          indexSet = [MEMORY[0x277CCAB58] indexSet];
        }

        [indexSet addIndex:{objc_msgSend(table, "columnIndexForIdentifier:", v12)}];
      }

      v8 = [columns countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v8);
  }

  else
  {
    indexSet = 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
  rows = [tableSelection2 rows];

  v15 = [rows countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    indexSet2 = 0;
    v18 = *v26;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(rows);
        }

        v20 = *(*(&v25 + 1) + 8 * j);
        if (!indexSet2)
        {
          indexSet2 = [MEMORY[0x277CCAB58] indexSet];
        }

        [indexSet2 addIndex:{objc_msgSend(table, "rowIndexForIdentifier:", v20)}];
      }

      v16 = [rows countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v16);
  }

  else
  {
    indexSet2 = 0;
  }

  [(ICTableAttachmentViewController *)self updateTableCellsWithDirection:direction columnIndexes:indexSet rowIndexes:indexSet2];
  [(ICTableAttachmentViewController *)self save];
  undoManager = [(ICTableAttachmentViewController *)self undoManager];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v23 = [mainBundle localizedStringForKey:@"Format" value:&stru_282757698 table:0];
  [undoManager setActionName:v23];
}

- (void)updateTableCellsWithDirection:(int64_t)direction columnIndexes:(id)indexes rowIndexes:(id)rowIndexes
{
  rowIndexesCopy = rowIndexes;
  indexesCopy = indexes;
  table = [(ICTableAttachmentViewController *)self table];
  undoTarget = [(ICTableAttachmentViewController *)self undoTarget];
  undoManager = [(ICTableAttachmentViewController *)self undoManager];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __90__ICTableAttachmentViewController_updateTableCellsWithDirection_columnIndexes_rowIndexes___block_invoke;
  v14[3] = &unk_2781AE230;
  v15 = table;
  selfCopy = self;
  directionCopy = direction;
  v13 = table;
  [v13 enumerateTextStoragesForColumnIndexes:indexesCopy rowIndexes:rowIndexesCopy undoTarget:undoTarget undoManager:undoManager usingBlock:v14];
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

- (void)setHighlightColor:(id)color
{
  colorCopy = color;
  highlightColor = [(ICAbstractAttachmentViewController *)self highlightColor];
  v6 = [colorCopy isEqual:highlightColor];

  if ((v6 & 1) == 0)
  {
    v9.receiver = self;
    v9.super_class = ICTableAttachmentViewController;
    [(ICAbstractAttachmentViewController *)&v9 setHighlightColor:colorCopy];
    tableContentView = [(ICTableAttachmentViewController *)self tableContentView];
    [tableContentView setHighlightColor:colorCopy];

    tableContentView2 = [(ICTableAttachmentViewController *)self tableContentView];
    [tableContentView2 ic_setNeedsLayout];
  }
}

- (void)setHighlightPatternRegexFinder:(id)finder
{
  v6.receiver = self;
  v6.super_class = ICTableAttachmentViewController;
  finderCopy = finder;
  [(ICAbstractAttachmentViewController *)&v6 setHighlightPatternRegexFinder:finderCopy];
  v5 = [(ICTableAttachmentViewController *)self tableLayoutManager:v6.receiver];
  [v5 setHighlightPatternRegexFinder:finderCopy];
}

- (void)setupTableTextView:(id)view
{
  viewCopy = view;
  [(ICTableAttachmentViewController *)self makeDelegateOfTextView:viewCopy];
  [viewCopy setCellDelegate:self];
  [viewCopy setSelectionDelegate:self];
  objc_opt_class();
  textStorage = [viewCopy textStorage];
  v5 = ICDynamicCast();

  attachment = [(ICAttachmentViewController *)self attachment];
  note = [attachment note];

  textStorage2 = [note textStorage];
  undoManager = [textStorage2 undoManager];
  [v5 setUndoManager:undoManager];

  undoTarget = [(ICTableAttachmentViewController *)self undoTarget];
  [v5 setOverrideUndoTarget:undoTarget];

  [v5 setUndoHelper:self];
  objc_opt_class();
  styler = [v5 styler];
  v12 = ICCheckedDynamicCast();

  attachment2 = [(ICAttachmentViewController *)self attachment];
  note2 = [attachment2 note];
  [v12 setNote:note2];

  [(ICTableAttachmentViewController *)self setTypingAttributesForTextView:viewCopy];
  objc_opt_class();
  attachment3 = [(ICAttachmentViewController *)self attachment];
  note3 = [attachment3 note];
  textStorage3 = [note3 textStorage];
  styler2 = [textStorage3 styler];
  v19 = ICCheckedDynamicCast();

  if (!v19)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((noteTextController) != nil)" functionName:"-[ICTableAttachmentViewController setupTableTextView:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "noteTextController"}];
  }

  objc_opt_class();
  columnTextStorage = [viewCopy columnTextStorage];
  styler3 = [columnTextStorage styler];
  v22 = ICCheckedDynamicCast();

  authorHighlightsController = [v19 authorHighlightsController];
  [v22 setAuthorHighlightsController:authorHighlightsController];

  zoomController = [v19 zoomController];
  [v22 setZoomController:zoomController];
}

- (BOOL)allowsNewTextLength:(unint64_t)length
{
  attachment = [(ICAttachmentViewController *)self attachment];
  note = [attachment note];
  LOBYTE(length) = [note allowsNewTextLength:length];

  return length;
}

- (void)selectionWillBecomeFirstResponder:(id)responder
{
  responderCopy = responder;
  if (![(ICTableAttachmentViewController *)self lockSelection])
  {
    auxiliaryTextViewHost = [(ICTableAttachmentViewController *)self auxiliaryTextViewHost];
    [auxiliaryTextViewHost setAuxiliaryResponder:responderCopy];
  }
}

- (void)selectionDidResignFirstResponder:(id)responder
{
  responderCopy = responder;
  if (![(ICTableAttachmentViewController *)self lockSelection])
  {
    [(ICTableAttachmentViewController *)self hideColumnRowButtons];
    auxiliaryTextViewHost = [(ICTableAttachmentViewController *)self auxiliaryTextViewHost];
    auxiliaryResponder = [auxiliaryTextViewHost auxiliaryResponder];

    if (auxiliaryResponder == responderCopy)
    {
      auxiliaryTextViewHost2 = [(ICTableAttachmentViewController *)self auxiliaryTextViewHost];
      [auxiliaryTextViewHost2 setAuxiliaryResponder:0];
    }
  }
}

- (void)deleteSelection:(id)selection
{
  selectionCopy = selection;
  table = [(ICTableAttachmentViewController *)self table];
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  rows = [tableSelection rows];
  v7 = [table rowsIntersectingWithRows:rows];

  columns = [tableSelection columns];
  v9 = [table columnsIntersectingWithColumns:columns];

  if ([tableSelection type] != 4)
  {
    if ([tableSelection type] == 2)
    {
      if ([table isEmptyAtColumnIdentifiers:v9 rowIdentifiers:0])
      {
        [(ICTableAttachmentViewController *)self deleteSelectedColumns:selectionCopy];
        goto LABEL_14;
      }
    }

    else
    {
      if ([tableSelection type] != 3)
      {
        goto LABEL_14;
      }

      if ([table isEmptyAtColumnIdentifiers:0 rowIdentifiers:v7])
      {
        [(ICTableAttachmentViewController *)self deleteSelectedRows:selectionCopy];
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  v10 = [v7 count];
  rowCount = [table rowCount];
  v12 = [v9 count];
  columnCount = [table columnCount];
  v14 = columnCount;
  if (v10 != rowCount && v12 != columnCount || ![table isEmptyAtColumnIdentifiers:v9 rowIdentifiers:v7])
  {
LABEL_13:
    [(ICTableAttachmentViewController *)self deleteSelectionCellContents];
    goto LABEL_14;
  }

  if (v10 == rowCount)
  {
    [(ICTableAttachmentViewController *)self deleteColumns:v9];
  }

  else if (v12 == v14)
  {
    [(ICTableAttachmentViewController *)self deleteRows:v7];
  }

LABEL_14:
}

- (void)cutSelection:(id)selection
{
  [(ICTableAttachmentViewController *)self copySelection:self];

  [(ICTableAttachmentViewController *)self deleteSelectionCellContents];
}

- (void)pasteIntoSelection:(id)selection
{
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  if ([tableSelection type] == 1)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"ICTableAttachmentSelectionTypeCell != tableSelection.type" functionName:"-[ICTableAttachmentViewController pasteIntoSelection:]" simulateCrash:1 showAlert:0 format:@"Not expecting a call to -pasteIntoSelection: when editing a cell."];
  }

  icTableFromPasteboard = [(ICTableAttachmentViewController *)self icTableFromPasteboard];
  if (!icTableFromPasteboard)
  {
    soloPlainTextStringFromPasteboard = [(ICTableAttachmentViewController *)self soloPlainTextStringFromPasteboard];
    if (!soloPlainTextStringFromPasteboard)
    {
      goto LABEL_31;
    }

    v6 = soloPlainTextStringFromPasteboard;
    v7 = objc_alloc(MEMORY[0x277D35FD0]);
    table = [(ICTableAttachmentViewController *)self table];
    document = [table document];
    replica = [document replica];
    if (replica)
    {
      v11 = [v7 initWithData:0 replicaID:replica];
    }

    else
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      v11 = [v7 initWithData:0 replicaID:uUID];
    }

    icTableFromPasteboard = [v11 table];
    v13 = [icTableFromPasteboard insertRowAtIndex:0];
    v14 = [icTableFromPasteboard insertColumnAtIndex:0];
    v15 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v6];
    [icTableFromPasteboard setAttributedString:v15 columnIndex:0 rowIndex:0];
  }

  table2 = [(ICTableAttachmentViewController *)self table];
  columns = [tableSelection columns];
  if ([columns count])
  {
    columns2 = [tableSelection columns];
    v19 = [columns2 objectAtIndexedSubscript:0];
    v20 = [table2 columnIndexForIdentifier:v19];
  }

  else
  {
    v20 = 0;
  }

  rows = [tableSelection rows];
  if ([rows count])
  {
    rows2 = [tableSelection rows];
    v23 = [rows2 objectAtIndexedSubscript:0];
    v24 = [table2 rowIndexForIdentifier:v23];
  }

  else
  {
    v24 = 0;
  }

  v37 = v24;

  columnCount = [icTableFromPasteboard columnCount];
  rowCount = [icTableFromPasteboard rowCount];
  columns3 = [tableSelection columns];
  columnCount2 = [columns3 count];
  if (!columnCount2)
  {
    columnCount2 = [table2 columnCount];
  }

  v29 = v20;

  rows3 = [tableSelection rows];
  rowCount2 = [rows3 count];
  if (!rowCount2)
  {
    rowCount2 = [table2 rowCount];
  }

  if (columnCount >= columnCount2)
  {
    v32 = columnCount - columnCount2;
  }

  else
  {
    v32 = 0;
  }

  table3 = [(ICTableAttachmentViewController *)self table];

  if (table2 != table3)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"destinationTable == self.table" functionName:"-[ICTableAttachmentViewController pasteIntoSelection:]" simulateCrash:1 showAlert:0 format:@"destination table should be self.table"];
  }

  v34 = [(ICTableAttachmentViewController *)self insertColumns:v32 atIndex:columnCount2 + v29];
  if (rowCount >= rowCount2)
  {
    v35 = rowCount - rowCount2;
  }

  else
  {
    v35 = 0;
  }

  v36 = [table2 insertRows:v35 atIndex:rowCount2 + v38];
  if (columnCount > columnCount2 || rowCount > rowCount2)
  {
    [(ICTableAttachmentViewController *)self postChangeNotification:2 columnOrRowUUIDs:0];
    [(ICTableAttachmentViewController *)self redrawAndSave];
  }

  [(ICTableAttachmentViewController *)self pasteTable:icTableFromPasteboard atColumnIndex:v29 rowIndex:v38 shouldSetSelectionToPastedRange:1];

LABEL_31:
}

- (void)deleteSelectionCellContents
{
  v44 = *MEMORY[0x277D85DE8];
  table = [(ICTableAttachmentViewController *)self table];
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  indexSet2 = [MEMORY[0x277CCAB58] indexSet];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  columns = [tableSelection columns];

  v8 = [columns countByEnumeratingWithState:&v38 objects:v43 count:16];
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
          objc_enumerationMutation(columns);
        }

        [indexSet addIndex:{objc_msgSend(table, "columnIndexForIdentifier:", *(*(&v38 + 1) + 8 * i))}];
      }

      v9 = [columns countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v9);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
  rows = [tableSelection2 rows];

  v14 = [rows countByEnumeratingWithState:&v34 objects:v42 count:16];
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
          objc_enumerationMutation(rows);
        }

        [indexSet2 addIndex:{objc_msgSend(table, "rowIndexForIdentifier:", *(*(&v34 + 1) + 8 * j))}];
      }

      v15 = [rows countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v15);
  }

  tableSelection3 = [(ICTableAttachmentViewController *)self tableSelection];
  type = [tableSelection3 type];

  if (type == 2)
  {
    table2 = [(ICTableAttachmentViewController *)self table];
    rowCount = [table2 rowCount];

    if (rowCount)
    {
      v22 = 0;
      do
      {
        [indexSet2 addIndex:v22++];
        table3 = [(ICTableAttachmentViewController *)self table];
        rowCount2 = [table3 rowCount];
      }

      while (v22 < rowCount2);
    }
  }

  else
  {
    tableSelection4 = [(ICTableAttachmentViewController *)self tableSelection];
    type2 = [tableSelection4 type];

    if (type2 == 3)
    {
      table4 = [(ICTableAttachmentViewController *)self table];
      columnCount = [table4 columnCount];

      if (columnCount)
      {
        v29 = 0;
        do
        {
          [indexSet addIndex:v29++];
          table5 = [(ICTableAttachmentViewController *)self table];
          columnCount2 = [table5 columnCount];
        }

        while (v29 < columnCount2);
      }
    }
  }

  undoTarget = [(ICTableAttachmentViewController *)self undoTarget];
  undoManager = [(ICTableAttachmentViewController *)self undoManager];
  [table enumerateTextStoragesForColumnIndexes:indexSet rowIndexes:indexSet2 undoTarget:undoTarget undoManager:undoManager usingBlock:&__block_literal_global_218];

  [(ICTableAttachmentViewController *)self save];
}

void __62__ICTableAttachmentViewController_deleteSelectionCellContents__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 replaceCharactersInRange:0 withString:{objc_msgSend(v2, "length"), &stru_282757698}];
}

- (void)pasteTable:(id)table atColumnIndex:(unint64_t)index rowIndex:(unint64_t)rowIndex shouldSetSelectionToPastedRange:(BOOL)range
{
  rangeCopy = range;
  tableCopy = table;
  if (tableCopy)
  {
    [(ICTableAttachmentViewController *)self beginEditing];
    [(ICTableAttachmentViewController *)self table];
    v11 = v27 = rangeCopy;
    columnCount = [tableCopy columnCount];
    rowCount = [tableCopy rowCount];
    v25 = columnCount;
    v14 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{index, columnCount}];
    v26 = rowCount;
    v15 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{rowIndex, rowCount}];
    undoTarget = [(ICTableAttachmentViewController *)self undoTarget];
    undoManager = [(ICTableAttachmentViewController *)self undoManager];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __101__ICTableAttachmentViewController_pasteTable_atColumnIndex_rowIndex_shouldSetSelectionToPastedRange___block_invoke;
    v28[3] = &unk_2781AE278;
    indexCopy = index;
    rowIndexCopy = rowIndex;
    v29 = tableCopy;
    selfCopy = self;
    [v11 enumerateTextStoragesForColumnIndexes:v14 rowIndexes:v15 undoTarget:undoTarget undoManager:undoManager usingBlock:v28];

    [(ICTableAttachmentViewController *)self endEditing];
    undoManager2 = [(ICTableAttachmentViewController *)self undoManager];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v20 = [mainBundle localizedStringForKey:@"Paste" value:&stru_282757698 table:0];
    [undoManager2 setActionName:v20];

    if (v27)
    {
      v21 = [v11 identifiersForColumnIndexes:v14];
      v22 = [v11 identifiersForRowIndexes:v15];
      tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
      [tableSelection selectCellRangeAtColumns:v21 rows:v22];

      [(ICTableAttachmentViewController *)self updateChrome];
    }

    else
    {
      v21 = [v11 identifierForColumnAtIndex:index + v25 - 1];
      v22 = [v11 identifierForRowAtIndex:rowIndex + v26 - 1];
      [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:v21 andRowID:v22 location:2];
    }

    textViewManager = [(ICTableAttachmentViewController *)self textViewManager];
    [textViewManager updateAuthorHighlights];

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

- (void)extendCellRangeSelectionInDirection:(unint64_t)direction toEnd:(BOOL)end
{
  endCopy = end;
  v114[1] = *MEMORY[0x277D85DE8];
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  v8 = [tableSelection copy];

  if ([v8 type] != 4)
  {
    tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
    columns = [tableSelection2 columns];
    firstObject = [columns firstObject];

    tableSelection3 = [(ICTableAttachmentViewController *)self tableSelection];
    rows = [tableSelection3 rows];
    firstObject2 = [rows firstObject];

    if (!firstObject || !firstObject2)
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICTableAttachmentViewController extendCellRangeSelectionInDirection:toEnd:]" simulateCrash:1 showAlert:0 format:@"We tried to extend an invalid selection"];

      goto LABEL_54;
    }

    selectionHighlightView = [(ICTableAttachmentViewController *)self selectionHighlightView];
    [selectionHighlightView removeFromSuperview];

    currentlyEditingTextView = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
    [(ICTableAttachmentViewController *)self endCellEditingSessionWithTextView:currentlyEditingTextView];

    currentlyEditingTextView2 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
    [currentlyEditingTextView2 setTextSelectionHidden:1];

    tableSelection4 = [(ICTableAttachmentViewController *)self tableSelection];
    v114[0] = firstObject;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:1];
    v113 = firstObject2;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v113 count:1];
    [tableSelection4 selectCellRangeAtColumns:v19 rows:v20];
  }

  columns2 = [v8 columns];
  v22 = [columns2 count];

  if (v22 == 1)
  {
    columns3 = [v8 columns];
    firstObject3 = [columns3 firstObject];
    [(ICTableAttachmentViewController *)self setRangeSelectionAnchorColumn:firstObject3];
  }

  rows2 = [v8 rows];
  v26 = [rows2 count];

  if (v26 == 1)
  {
    rows3 = [v8 rows];
    firstObject4 = [rows3 firstObject];
    [(ICTableAttachmentViewController *)self setRangeSelectionAnchorRow:firstObject4];
  }

  table = [(ICTableAttachmentViewController *)self table];
  rangeSelectionAnchorColumn = [(ICTableAttachmentViewController *)self rangeSelectionAnchorColumn];
  v31 = [table columnIndexForIdentifier:rangeSelectionAnchorColumn];

  table2 = [(ICTableAttachmentViewController *)self table];
  rangeSelectionAnchorRow = [(ICTableAttachmentViewController *)self rangeSelectionAnchorRow];
  v34 = [table2 rowIndexForIdentifier:rangeSelectionAnchorRow];

  if (direction > 1)
  {
    if (direction == 2)
    {
      if (endCopy)
      {
        v41 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, v34 + 1}];
        goto LABEL_25;
      }

      table3 = [(ICTableAttachmentViewController *)self table];
      rows4 = [v8 rows];
      lastObject = [rows4 lastObject];
      v70 = [table3 rowIndexForIdentifier:lastObject];

      if (v70 <= v34)
      {
        table4 = [(ICTableAttachmentViewController *)self table];
        rows5 = [v8 rows];
        firstObject5 = [rows5 firstObject];
        v101 = [table4 rowIndexForIdentifier:firstObject5];

        if (!v101)
        {
          goto LABEL_51;
        }

        table5 = [(ICTableAttachmentViewController *)self table];
        v41 = [table5 identifierForRowAtIndex:v101 - 1];

        v111 = v41;
        table7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v111 count:1];
        rows6 = [v8 rows];
        tableSelection6 = [table7 arrayByAddingObjectsFromArray:rows6];

        goto LABEL_26;
      }

      rows7 = [v8 rows];
      v41 = [rows7 mutableCopy];

      [v41 removeLastObject];
    }

    else
    {
      if (direction != 3)
      {
        goto LABEL_51;
      }

      if (endCopy)
      {
        v39 = MEMORY[0x277CCAA78];
        table6 = [(ICTableAttachmentViewController *)self table];
        v41 = [v39 indexSetWithIndexesInRange:{v34, objc_msgSend(table6, "rowCount") - v34}];

LABEL_25:
        table7 = [(ICTableAttachmentViewController *)self table];
        tableSelection6 = [table7 identifiersForRowIndexes:v41];
LABEL_26:

        tableSelection5 = [(ICTableAttachmentViewController *)self tableSelection];
        columns4 = [v8 columns];
        v48 = tableSelection5;
        v49 = columns4;
        v50 = tableSelection6;
LABEL_49:
        [v48 selectCellRangeAtColumns:v49 rows:v50];
        goto LABEL_50;
      }

      table8 = [(ICTableAttachmentViewController *)self table];
      rows8 = [v8 rows];
      firstObject6 = [rows8 firstObject];
      v54 = [table8 rowIndexForIdentifier:firstObject6];

      if (v54 >= v34)
      {
        table9 = [(ICTableAttachmentViewController *)self table];
        rows9 = [v8 rows];
        lastObject2 = [rows9 lastObject];
        v76 = [table9 rowIndexForIdentifier:lastObject2];

        table10 = [(ICTableAttachmentViewController *)self table];
        v78 = [table10 rowCount] - 1;

        if (v76 < v78)
        {
          table11 = [(ICTableAttachmentViewController *)self table];
          v41 = [table11 identifierForRowAtIndex:v76 + 1];

          rows10 = [v8 rows];
          tableSelection6 = [rows10 arrayByAddingObject:v41];

          tableSelection5 = [(ICTableAttachmentViewController *)self tableSelection];
          columns4 = [v8 columns];
          v81 = [tableSelection6 copy];
          [tableSelection5 selectCellRangeAtColumns:columns4 rows:v81];

LABEL_50:
          goto LABEL_51;
        }

        goto LABEL_51;
      }

      rows11 = [v8 rows];
      v41 = [rows11 mutableCopy];

      [v41 removeObjectAtIndex:0];
    }

    tableSelection6 = [(ICTableAttachmentViewController *)self tableSelection];
    tableSelection5 = [v8 columns];
    rows12 = [v41 copy];
LABEL_47:
    columns4 = rows12;
    v48 = tableSelection6;
    v49 = tableSelection5;
    goto LABEL_48;
  }

  if (direction)
  {
    if (direction != 1)
    {
      goto LABEL_51;
    }

    table12 = [(ICTableAttachmentViewController *)self table];
    isRightToLeft = [table12 isRightToLeft];

    if (!isRightToLeft)
    {
      table13 = [(ICTableAttachmentViewController *)self table];
      isLeftToRight = [table13 isLeftToRight];

      if ((isLeftToRight & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_32;
    }

    goto LABEL_21;
  }

  table14 = [(ICTableAttachmentViewController *)self table];
  isLeftToRight2 = [table14 isLeftToRight];

  if (isLeftToRight2)
  {
LABEL_21:
    if (endCopy)
    {
      v41 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, v31 + 1}];
LABEL_34:
      table15 = [(ICTableAttachmentViewController *)self table];
      v66 = [table15 identifiersForColumnIndexes:v41];
LABEL_35:
      tableSelection6 = v66;
LABEL_36:

      tableSelection5 = [(ICTableAttachmentViewController *)self tableSelection];
      columns4 = [v8 rows];
      v48 = tableSelection5;
      v49 = tableSelection6;
LABEL_48:
      v50 = columns4;
      goto LABEL_49;
    }

    table16 = [(ICTableAttachmentViewController *)self table];
    columns5 = [v8 columns];
    lastObject3 = [columns5 lastObject];
    v59 = [table16 columnIndexForIdentifier:lastObject3];

    if (v59 > v31)
    {
      columns6 = [v8 columns];
      v41 = [columns6 mutableCopy];

      [v41 removeLastObject];
LABEL_46:
      tableSelection6 = [(ICTableAttachmentViewController *)self tableSelection];
      tableSelection5 = [v41 copy];
      rows12 = [v8 rows];
      goto LABEL_47;
    }

    table17 = [(ICTableAttachmentViewController *)self table];
    columns7 = [v8 columns];
    firstObject7 = [columns7 firstObject];
    v85 = [table17 columnIndexForIdentifier:firstObject7];

    if (v85)
    {
      table18 = [(ICTableAttachmentViewController *)self table];
      v41 = [table18 identifierForColumnAtIndex:v85 - 1];

      v112 = v41;
      table15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v112 count:1];
      columns8 = [v8 columns];
      tableSelection6 = [table15 arrayByAddingObjectsFromArray:columns8];

      goto LABEL_36;
    }

    goto LABEL_51;
  }

  table19 = [(ICTableAttachmentViewController *)self table];
  isRightToLeft2 = [table19 isRightToLeft];

  if (isRightToLeft2)
  {
LABEL_32:
    if (endCopy)
    {
      v63 = MEMORY[0x277CCAA78];
      table20 = [(ICTableAttachmentViewController *)self table];
      v41 = [v63 indexSetWithIndexesInRange:{v31, objc_msgSend(table20, "columnCount") - v31}];

      goto LABEL_34;
    }

    table21 = [(ICTableAttachmentViewController *)self table];
    columns9 = [v8 columns];
    firstObject8 = [columns9 firstObject];
    v91 = [table21 columnIndexForIdentifier:firstObject8];

    if (v91 >= v31)
    {
      table22 = [(ICTableAttachmentViewController *)self table];
      columns10 = [v8 columns];
      lastObject4 = [columns10 lastObject];
      v107 = [table22 columnIndexForIdentifier:lastObject4];

      table23 = [(ICTableAttachmentViewController *)self table];
      v109 = [table23 columnCount] - 1;

      if (v107 >= v109)
      {
        goto LABEL_51;
      }

      table24 = [(ICTableAttachmentViewController *)self table];
      v41 = [table24 identifierForColumnAtIndex:v107 + 1];

      table15 = [v8 columns];
      v66 = [table15 arrayByAddingObject:v41];
      goto LABEL_35;
    }

    columns11 = [v8 columns];
    v41 = [columns11 mutableCopy];

    [v41 removeObjectAtIndex:0];
    goto LABEL_46;
  }

LABEL_51:
  tableSelection7 = [(ICTableAttachmentViewController *)self tableSelection];
  v94 = [v8 isEqual:tableSelection7];

  if ((v94 & 1) == 0)
  {
    [(ICTableAttachmentViewController *)self announceCellRangeSelectionChangeForAccessibilityIfNecessary];
    [(ICTableAttachmentViewController *)self updateChrome];
    selectionHighlightView2 = [(ICTableAttachmentViewController *)self selectionHighlightView];
    ic_isFirstResponder = [selectionHighlightView2 ic_isFirstResponder];

    if ((ic_isFirstResponder & 1) == 0)
    {
      selectionHighlightView3 = [(ICTableAttachmentViewController *)self selectionHighlightView];
      [(ICTableAttachmentViewController *)self ic_makeFirstResponder:selectionHighlightView3];
    }
  }

LABEL_54:
}

- (void)saveAttachmentChangesInBackground:(BOOL)background
{
  backgroundCopy = background;
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_save object:0];
  table = [(ICTableAttachmentViewController *)self table];
  document = [table document];
  archivedData = [document archivedData];

  tableAttachmentProvider = [(ICTableAttachmentViewController *)self tableAttachmentProvider];
  v9 = tableAttachmentProvider;
  if (backgroundCopy)
  {
    [tableAttachmentProvider backgroundAttachment];
  }

  else
  {
    [tableAttachmentProvider attachment];
  }
  v10 = ;

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __69__ICTableAttachmentViewController_saveAttachmentChangesInBackground___block_invoke;
  v19 = &unk_2781ABEB8;
  v11 = v10;
  v20 = v11;
  v21 = archivedData;
  v12 = archivedData;
  v13 = _Block_copy(&v16);
  managedObjectContext = [v11 managedObjectContext];
  v15 = managedObjectContext;
  if (backgroundCopy)
  {
    [managedObjectContext performBlock:v13];
  }

  else
  {
    [managedObjectContext performBlockAndWait:v13];
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

- (void)tableAttachmentProviderWillMergeTable:(id)table
{
  [(ICTableAttachmentViewController *)self tableAttachmentWillChange];

  [(ICTableAttachmentViewController *)self willFlashAuthorHighlights];
}

- (void)tableAttachmentProviderDidMergeTable:(id)table
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

  table = [(ICTableAttachmentViewController *)self table];
  if ([table columnCount])
  {
    v4 = 0;
    do
    {
      v5 = [table identifierForColumnAtIndex:v4];
      columnsBeforeMerge = [(ICTableAttachmentViewController *)self columnsBeforeMerge];
      [columnsBeforeMerge ic_addNonNilObject:v5];

      ++v4;
    }

    while (v4 < [table columnCount]);
  }

  if ([table rowCount])
  {
    v7 = 0;
    do
    {
      v8 = [table identifierForRowAtIndex:v7];
      rowsBeforeMerge = [(ICTableAttachmentViewController *)self rowsBeforeMerge];
      [rowsBeforeMerge ic_addNonNilObject:v8];

      ++v7;
    }

    while (v7 < [table rowCount]);
  }

  textViewManager = [(ICTableAttachmentViewController *)self textViewManager];
  selfCopy = self;
  visibleEmptyCellsBeforeMerge = [(ICTableAttachmentViewController *)self visibleEmptyCellsBeforeMerge];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v29 = textViewManager;
  obj = [textViewManager columnIDs];
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
        rowIDs = [v29 rowIDs];
        v15 = [rowIDs countByEnumeratingWithState:&v32 objects:v40 count:16];
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
                objc_enumerationMutation(rowIDs);
              }

              v19 = *(*(&v32 + 1) + 8 * i);
              v20 = [table mergeableStringForColumnID:v13 rowID:v19];
              if (!v20)
              {
                v21 = [visibleEmptyCellsBeforeMerge objectForKeyedSubscript:v13];
                if (!v21)
                {
                  v21 = [MEMORY[0x277CBEB58] set];
                  [visibleEmptyCellsBeforeMerge setObject:v21 forKeyedSubscript:v13];
                }

                [v21 ic_addNonNilObject:v19];
              }
            }

            v16 = [rowIDs countByEnumeratingWithState:&v32 objects:v40 count:16];
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

  tableSelection = [(ICTableAttachmentViewController *)selfCopy tableSelection];
  v23 = [tableSelection copy];
  [(ICTableAttachmentViewController *)selfCopy setTableSelectionBeforeMerge:v23];

  currentlyEditingTextStorage = [(ICTableAttachmentViewController *)selfCopy currentlyEditingTextStorage];
  v25 = [currentlyEditingTextStorage savedSelectionWithSelectionAffinity:0];
  [(ICTableAttachmentViewController *)selfCopy setStringSelectionBeforeMerge:v25];
}

- (void)tableAttachmentDidChange
{
  v143 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICTableAttachmentViewController tableAttachmentDidChange]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  table = [(ICTableAttachmentViewController *)self table];
  v4 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(table, "columnCount")}];
  if ([table columnCount])
  {
    v5 = 0;
    do
    {
      v6 = [table identifierForColumnAtIndex:v5];
      [v4 addObject:v6];

      ++v5;
    }

    while (v5 < [table columnCount]);
  }

  v7 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(table, "rowCount")}];
  if ([table rowCount])
  {
    v8 = 0;
    do
    {
      v9 = [table identifierForRowAtIndex:v8];
      [v7 addObject:v9];

      ++v8;
    }

    while (v8 < [table rowCount]);
  }

  columnsBeforeMerge = [(ICTableAttachmentViewController *)self columnsBeforeMerge];
  v107 = v7;
  if ([v4 isEqual:columnsBeforeMerge])
  {
    rowsBeforeMerge = [(ICTableAttachmentViewController *)self rowsBeforeMerge];
    v12 = [v7 isEqual:rowsBeforeMerge];

    if (v12)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  v105 = table;
  columnsBeforeMerge2 = [(ICTableAttachmentViewController *)self columnsBeforeMerge];
  v14 = [columnsBeforeMerge2 mutableCopy];

  v106 = v4;
  [v14 minusOrderedSet:v4];
  rowsBeforeMerge2 = [(ICTableAttachmentViewController *)self rowsBeforeMerge];
  v16 = [rowsBeforeMerge2 mutableCopy];

  [v16 minusOrderedSet:v7];
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  array = [v14 array];
  v108 = v16;
  array2 = [v16 array];
  columnsBeforeMerge3 = [(ICTableAttachmentViewController *)self columnsBeforeMerge];
  array3 = [columnsBeforeMerge3 array];
  rowsBeforeMerge3 = [(ICTableAttachmentViewController *)self rowsBeforeMerge];
  array4 = [rowsBeforeMerge3 array];
  v24 = [tableSelection removeColumns:array rows:array2 previousColumns:array3 previousRows:array4];

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
        visibleEmptyCellsBeforeMerge = [(ICTableAttachmentViewController *)self visibleEmptyCellsBeforeMerge];
        [visibleEmptyCellsBeforeMerge removeObjectForKey:v30];
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
  visibleEmptyCellsBeforeMerge2 = [(ICTableAttachmentViewController *)self visibleEmptyCellsBeforeMerge];
  allKeys = [visibleEmptyCellsBeforeMerge2 allKeys];

  v39 = [allKeys countByEnumeratingWithState:&v125 objects:v140 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v43 = *(*(&v125 + 1) + 8 * k);
        visibleEmptyCellsBeforeMerge3 = [(ICTableAttachmentViewController *)self visibleEmptyCellsBeforeMerge];
        v45 = [visibleEmptyCellsBeforeMerge3 objectForKeyedSubscript:v43];

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

      v40 = [allKeys countByEnumeratingWithState:&v125 objects:v140 count:16];
    }

    while (v40);
  }

  if ([v104 count])
  {
    array5 = [v104 array];
    [(ICTableAttachmentViewController *)self postChangeNotification:3 columnOrRowUUIDs:array5];
  }

  if ([v32 count])
  {
    array6 = [v32 array];
    [(ICTableAttachmentViewController *)self postChangeNotification:4 columnOrRowUUIDs:array6];
  }

  v53 = [v106 mutableCopy];
  columnsBeforeMerge4 = [(ICTableAttachmentViewController *)self columnsBeforeMerge];
  [v53 minusOrderedSet:columnsBeforeMerge4];

  if ([v53 count])
  {
    array7 = [v53 array];
    [(ICTableAttachmentViewController *)self postChangeNotification:0 columnOrRowUUIDs:array7];
  }

  v56 = [v107 mutableCopy];
  rowsBeforeMerge4 = [(ICTableAttachmentViewController *)self rowsBeforeMerge];
  [v56 minusOrderedSet:rowsBeforeMerge4];

  if ([v56 count])
  {
    array8 = [v56 array];
    [(ICTableAttachmentViewController *)self postChangeNotification:1 columnOrRowUUIDs:array8];
  }

  columnsBeforeMerge5 = [(ICTableAttachmentViewController *)self columnsBeforeMerge];
  v60 = [v106 ic_objectsMovedFromOrderedSet:columnsBeforeMerge5];

  if ([v60 count])
  {
    allObjects = [v60 allObjects];
    [(ICTableAttachmentViewController *)self postChangeNotification:5 columnOrRowUUIDs:allObjects];
  }

  v102 = v60;
  v103 = v56;
  rowsBeforeMerge5 = [(ICTableAttachmentViewController *)self rowsBeforeMerge];
  v63 = [v107 ic_objectsMovedFromOrderedSet:rowsBeforeMerge5];

  if ([v63 count])
  {
    allObjects2 = [v63 allObjects];
    [(ICTableAttachmentViewController *)self postChangeNotification:6 columnOrRowUUIDs:allObjects2];

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
          tableLayoutManager = [(ICTableAttachmentViewController *)self tableLayoutManager];
          [tableLayoutManager updateForMovedRow:v70];
        }

        v67 = [v65 countByEnumeratingWithState:&v117 objects:v138 count:16];
      }

      while (v67);
    }
  }

  if ([v53 count] || objc_msgSend(v104, "count"))
  {
    v72 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v104, "count") + objc_msgSend(v53, "count")}];
    array9 = [v53 array];
    [v72 addObjectsFromArray:array9];

    array10 = [v104 array];
    [v72 addObjectsFromArray:array10];

    tableLayoutManager2 = [(ICTableAttachmentViewController *)self tableLayoutManager];
    columnWidthManager = [tableLayoutManager2 columnWidthManager];
    v77 = [columnWidthManager invalidateWidthForColumns:v72];
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
        tableLayoutManager3 = [(ICTableAttachmentViewController *)self tableLayoutManager];
        columnWidthManager2 = [tableLayoutManager3 columnWidthManager];
        [columnWidthManager2 widthOfColumn:v83];
        v87 = v86;

        columnWidthCache = [(ICTableAttachmentViewController *)self columnWidthCache];
        [columnWidthCache setDimension:v83 forKey:v87];
      }

      v80 = [v78 countByEnumeratingWithState:&v113 objects:v137 count:16];
    }

    while (v80);
  }

  [(ICTableAttachmentViewController *)self redraw];
  v4 = v106;
  v7 = v107;
  table = v105;
LABEL_73:
  columnsBeforeMerge6 = [(ICTableAttachmentViewController *)self columnsBeforeMerge];
  [columnsBeforeMerge6 removeAllObjects];

  rowsBeforeMerge6 = [(ICTableAttachmentViewController *)self rowsBeforeMerge];
  [rowsBeforeMerge6 removeAllObjects];

  visibleEmptyCellsBeforeMerge4 = [(ICTableAttachmentViewController *)self visibleEmptyCellsBeforeMerge];
  v110[0] = MEMORY[0x277D85DD0];
  v110[1] = 3221225472;
  v110[2] = __59__ICTableAttachmentViewController_tableAttachmentDidChange__block_invoke;
  v110[3] = &unk_2781AE2A0;
  v111 = table;
  selfCopy = self;
  v92 = table;
  [visibleEmptyCellsBeforeMerge4 enumerateKeysAndObjectsUsingBlock:v110];

  visibleEmptyCellsBeforeMerge5 = [(ICTableAttachmentViewController *)self visibleEmptyCellsBeforeMerge];
  [visibleEmptyCellsBeforeMerge5 removeAllObjects];

  tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
  tableSelectionBeforeMerge = [(ICTableAttachmentViewController *)self tableSelectionBeforeMerge];
  v96 = [tableSelection2 isEqual:tableSelectionBeforeMerge];

  if (v96)
  {
    stringSelectionBeforeMerge = [(ICTableAttachmentViewController *)self stringSelectionBeforeMerge];

    if (stringSelectionBeforeMerge)
    {
      currentlyEditingTextStorage = [(ICTableAttachmentViewController *)self currentlyEditingTextStorage];
      stringSelectionBeforeMerge2 = [(ICTableAttachmentViewController *)self stringSelectionBeforeMerge];
      [currentlyEditingTextStorage restoreSelection:stringSelectionBeforeMerge2];
LABEL_78:

      v7 = v107;
    }
  }

  else if ([tableSelection2 type] == 1)
  {
    currentlyEditingTextStorage = [tableSelection2 columns];
    stringSelectionBeforeMerge2 = [currentlyEditingTextStorage objectAtIndexedSubscript:0];
    rows = [tableSelection2 rows];
    v101 = [rows objectAtIndexedSubscript:0];
    [(ICTableAttachmentViewController *)self beginEditingCellWithColumnID:stringSelectionBeforeMerge2 andRowID:v101 location:[(ICTableAttachmentViewController *)self preferredNavigationSelection]];

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

- (void)postChangeNotification:(unint64_t)notification columnOrRowUUIDs:(id)ds
{
  v14[2] = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v13[0] = @"ICTableAttachmentViewControllerKey";
  v13[1] = @"ICTableAttachmentViewControllerChangeKindKey";
  v14[0] = self;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:notification];
  v14[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  if (dsCopy)
  {
    v9 = [v8 mutableCopy];
    [v9 setObject:dsCopy forKeyedSubscript:@"ICTableAttachmentViewControllerColumnOrRowUUIDsKey"];
    v10 = [v9 copy];

    v8 = v10;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  table = [(ICTableAttachmentViewController *)self table];
  [defaultCenter postNotificationName:@"ICTableAttachmentViewControllerDidChangeNotification" object:table userInfo:v8];
}

- (void)tableAttachmentViewControllerDidChange:(id)change
{
  v66 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  object = [changeCopy object];
  table = [(ICTableAttachmentViewController *)self table];

  if (object == table)
  {
    userInfo = [changeCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:@"ICTableAttachmentViewControllerKey"];
    if (v8 == self)
    {
LABEL_45:

      goto LABEL_46;
    }

    v9 = [userInfo objectForKeyedSubscript:@"ICTableAttachmentViewControllerChangeKindKey"];
    unsignedIntegerValue = [v9 unsignedIntegerValue];

    v11 = [userInfo objectForKeyedSubscript:@"ICTableAttachmentViewControllerColumnOrRowUUIDsKey"];
    v12 = v11;
    v45 = v8;
    if (unsignedIntegerValue > 3)
    {
      if (unsignedIntegerValue != 4)
      {
        if (unsignedIntegerValue == 6)
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
                tableLayoutManager = [(ICTableAttachmentViewController *)self tableLayoutManager];
                [tableLayoutManager updateForMovedRow:v24];
              }

              v21 = [v12 countByEnumeratingWithState:&v46 objects:v62 count:16];
            }

            while (v21);
          }
        }

        goto LABEL_44;
      }

      tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
      v39 = [tableSelection removeColumns:MEMORY[0x277CBEBF8] rows:v12];

      if ((v39 & 1) == 0)
      {
        [(ICTableAttachmentViewController *)self beginEditingNoteAtOffset:1];
      }

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      tableLayoutManager3 = v12;
      v40 = [tableLayoutManager3 countByEnumeratingWithState:&v50 objects:v63 count:16];
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
              objc_enumerationMutation(tableLayoutManager3);
            }

            [(ICTableAttachmentViewController *)self cleanDeletedRow:*(*(&v50 + 1) + 8 * j)];
          }

          v41 = [tableLayoutManager3 countByEnumeratingWithState:&v50 objects:v63 count:16];
        }

        while (v41);
      }
    }

    else if (unsignedIntegerValue)
    {
      if (unsignedIntegerValue != 3)
      {
LABEL_44:
        [(ICTableAttachmentViewController *)self redraw];

        v8 = v45;
        goto LABEL_45;
      }

      tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
      v14 = [tableSelection2 removeColumns:v12 rows:MEMORY[0x277CBEBF8]];

      if ((v14 & 1) == 0)
      {
        [(ICTableAttachmentViewController *)self beginEditingNoteAtOffset:1];
      }

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      tableLayoutManager3 = v12;
      v16 = [tableLayoutManager3 countByEnumeratingWithState:&v54 objects:v64 count:16];
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
              objc_enumerationMutation(tableLayoutManager3);
            }

            [(ICTableAttachmentViewController *)self cleanDeletedColumn:*(*(&v54 + 1) + 8 * k)];
          }

          v17 = [tableLayoutManager3 countByEnumeratingWithState:&v54 objects:v64 count:16];
        }

        while (v17);
      }
    }

    else
    {
      v44 = userInfo;
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
            tableLayoutManager2 = [(ICTableAttachmentViewController *)self tableLayoutManager];
            columnWidthManager = [tableLayoutManager2 columnWidthManager];
            [columnWidthManager widthOfColumn:v30];
            v34 = v33;

            columnWidthCache = [(ICTableAttachmentViewController *)self columnWidthCache];
            [columnWidthCache setDimension:v30 forKey:v34];
          }

          v27 = [v12 countByEnumeratingWithState:&v58 objects:v65 count:16];
        }

        while (v27);
      }

      tableLayoutManager3 = [(ICTableAttachmentViewController *)self tableLayoutManager];
      columnWidthManager2 = [tableLayoutManager3 columnWidthManager];
      invalidateAvailableWidth = [columnWidthManager2 invalidateAvailableWidth];

      userInfo = v44;
    }

    goto LABEL_44;
  }

LABEL_46:
}

- (void)willFlashAuthorHighlights
{
  cellTimestampsBeforeMerge = [(ICTableAttachmentViewController *)self cellTimestampsBeforeMerge];

  if (!cellTimestampsBeforeMerge)
  {
    v4 = MEMORY[0x277CBEB38];
    table = [(ICTableAttachmentViewController *)self table];
    v6 = [v4 dictionaryWithCapacity:{objc_msgSend(table, "columnCount")}];

    table2 = [(ICTableAttachmentViewController *)self table];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __60__ICTableAttachmentViewController_willFlashAuthorHighlights__block_invoke;
    v13 = &unk_2781AE2C8;
    selfCopy = self;
    v15 = v6;
    v8 = v6;
    [table2 enumerateCellObjectsInCellSelectionContainingColumnIndices:0 rowIndices:0 copyItems:0 usingBlock:&v10];

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
  cellTimestampsBeforeMerge = [(ICTableAttachmentViewController *)self cellTimestampsBeforeMerge];
  if (cellTimestampsBeforeMerge)
  {
    v4 = cellTimestampsBeforeMerge;
    attachment = [(ICAttachmentViewController *)self attachment];
    note = [attachment note];
    isSharedViaICloud = [note isSharedViaICloud];

    if (isSharedViaICloud)
    {
      v12[0] = 0;
      v12[1] = v12;
      v12[2] = 0x2020000000;
      textViewManager = [(ICTableAttachmentViewController *)self textViewManager];
      anchorColumn = [textViewManager anchorColumn];

      v12[3] = anchorColumn;
      textViewManager2 = [(ICTableAttachmentViewController *)self textViewManager];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __64__ICTableAttachmentViewController_flashAuthorHighlightsIfNeeded__block_invoke;
      v11[3] = &unk_2781AE368;
      v11[4] = self;
      v11[5] = v12;
      [textViewManager2 enumerateTextViewsWithBlock:v11];

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
  textAttachment = [(ICAttachmentViewController *)self textAttachment];
  if (!textAttachment)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((textAttachment) != nil)" functionName:"-[ICTableAttachmentViewController availableWidth]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "textAttachment"}];
  }

  if (![(ICAttachmentViewController *)self forManualRendering])
  {
    noteTextView = [(ICTableAttachmentViewController *)self noteTextView];
    textContainer = [noteTextView textContainer];
    if (textContainer)
    {
      firstObject = textContainer;
    }

    else
    {
      noteLayoutManager = [(ICTableAttachmentViewController *)self noteLayoutManager];
      textContainers = [noteLayoutManager textContainers];
      firstObject = [textContainers firstObject];

      if (!firstObject)
      {
        [textAttachment lastAvailableWidth];
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

    [textAttachment availableWidthForTextContainer:firstObject];
    v5 = v11;

LABEL_9:
    goto LABEL_10;
  }

  [textAttachment lastAvailableWidth];
  v5 = v4;
LABEL_10:

  return v5;
}

- (void)updateWidthsForChangeInColumn:(id)column
{
  v9[1] = *MEMORY[0x277D85DE8];
  columnCopy = column;
  tableLayoutManager = [(ICTableAttachmentViewController *)self tableLayoutManager];
  columnWidthManager = [tableLayoutManager columnWidthManager];
  v9[0] = columnCopy;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v8 = [columnWidthManager invalidateWidthForColumns:v7];

  if ([v8 count])
  {
    [(ICTableAttachmentViewController *)self redraw];
  }
}

- (void)updateColumnWidthForColumn:(id)column
{
  columnCopy = column;
  columnsNeedingWidthUpdate = [(ICTableAttachmentViewController *)self columnsNeedingWidthUpdate];
  [columnsNeedingWidthUpdate addObject:columnCopy];

  [(ICTableAttachmentViewController *)self updateEditedColumnWidths];
}

- (BOOL)updateAllColumnWidths
{
  textViewManager = [(ICTableAttachmentViewController *)self textViewManager];
  columnIDs = [textViewManager columnIDs];
  v5 = [columnIDs count];

  if (v5 <= *MEMORY[0x277D36600])
  {
    v6 = *MEMORY[0x277D36600];
  }

  else
  {
    v6 = v5;
  }

  table = [(ICTableAttachmentViewController *)self table];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__ICTableAttachmentViewController_updateAllColumnWidths__block_invoke;
  v9[3] = &unk_2781AE390;
  v9[4] = self;
  v9[5] = v6;
  [table enumerateColumnsWithBlock:v9];

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

  currentlyEditingTextStorage = [(ICTableAttachmentViewController *)self currentlyEditingTextStorage];
  v4 = [currentlyEditingTextStorage isEditingOrConvertingMarkedText:0];

  if (v4)
  {
    [(ICTableAttachmentViewController *)self updateEditedColumnWidthsAfterDelay];
    return 0;
  }

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_updateEditedColumnWidths object:0];
  columnsNeedingWidthUpdate = [(ICTableAttachmentViewController *)self columnsNeedingWidthUpdate];
  v6 = [columnsNeedingWidthUpdate count];

  if (!v6)
  {
    return 0;
  }

  tableLayoutManager = [(ICTableAttachmentViewController *)self tableLayoutManager];
  columnWidthManager = [tableLayoutManager columnWidthManager];

  columnsNeedingWidthUpdate2 = [(ICTableAttachmentViewController *)self columnsNeedingWidthUpdate];
  allObjects = [columnsNeedingWidthUpdate2 allObjects];
  v11 = [columnWidthManager invalidateWidthForColumns:allObjects];

  if (![v11 count])
  {
    columnsNeedingWidthUpdate3 = [(ICTableAttachmentViewController *)self columnsNeedingWidthUpdate];
    [columnsNeedingWidthUpdate3 removeAllObjects];

    return 0;
  }

  [(ICTableAttachmentViewController *)self redraw];
  currentlyEditingTextView = [(ICTableAttachmentViewController *)self currentlyEditingTextView];

  if (currentlyEditingTextView)
  {
    currentlyEditingTextView2 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
    [(ICTableAttachmentViewController *)self scrollToCaretIfNeededForTextView:currentlyEditingTextView2];
  }

  columnsNeedingWidthUpdate4 = [(ICTableAttachmentViewController *)self columnsNeedingWidthUpdate];
  [columnsNeedingWidthUpdate4 removeAllObjects];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  noteTextView = [(ICTableAttachmentViewController *)self noteTextView];
  [defaultCenter postNotificationName:@"ICTextViewLayoutDidChangeNotification" object:noteTextView];

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
    tableLayoutManager = [(ICTableAttachmentViewController *)self tableLayoutManager];
    columnWidthManager = [tableLayoutManager columnWidthManager];
    invalidateAvailableWidth = [columnWidthManager invalidateAvailableWidth];

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
    attachment = [(ICAttachmentViewController *)self attachment];
    note = [attachment note];
    if ([note isFastSyncSessionActive])
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
  attachment = [(ICAttachmentViewController *)self attachment];
  isReadOnly = [attachment isReadOnly];

  if ((isReadOnly & 1) == 0)
  {
    currentlyEditingTextStorage = [(ICTableAttachmentViewController *)self currentlyEditingTextStorage];
    v6 = [currentlyEditingTextStorage isEditingOrConvertingMarkedText:0];

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
  attachment = [(ICAttachmentViewController *)self attachment];
  note = [attachment note];
  isFastSyncSessionActive = [note isFastSyncSessionActive];
  v6 = MEMORY[0x277D36A00];
  if (!isFastSyncSessionActive)
  {
    v6 = MEMORY[0x277D369F8];
  }

  v7 = *v6;

  [(ICTableAttachmentViewController *)self performSelector:sel_save withObject:0 afterDelay:v7];
}

- (void)initializeTableAccessibilityControllerIfNecessary
{
  tableAXController = [(ICTableAttachmentViewController *)self tableAXController];

  if (!tableAXController)
  {
    v4 = [[ICTableAccessibilityController alloc] initWithTableAttachmentViewController:self];
    [(ICTableAttachmentViewController *)self setTableAXController:v4];
  }
}

- (void)announceCellRangeSelectionChangeForAccessibilityIfNecessary
{
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  previousAXTableSelection = [(ICTableAttachmentViewController *)self previousAXTableSelection];
  v5 = [tableSelection isEqual:previousAXTableSelection];

  if ((v5 & 1) == 0)
  {
    tableAXController = [(ICTableAttachmentViewController *)self tableAXController];
    tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
    [tableAXController speakCellRangeSelection:tableSelection2];

    tableSelection3 = [(ICTableAttachmentViewController *)self tableSelection];
    v8 = [tableSelection3 copy];
    [(ICTableAttachmentViewController *)self setPreviousAXTableSelection:v8];
  }
}

- (void)initializeTableLayout
{
  table = [(ICTableAttachmentViewController *)self table];
  v3 = [[ICTableLayoutManager alloc] initWithTable:table delegate:self];
  tableLayoutManager = self->_tableLayoutManager;
  self->_tableLayoutManager = v3;

  cellChangeNotifier = [table cellChangeNotifier];
  [cellChangeNotifier addObserver:self];

  columnCount = [table columnCount];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:columnCount];
  if (columnCount)
  {
    for (i = 0; i != columnCount; ++i)
    {
      v9 = [table identifierForColumnAtIndex:i];
      [v7 addObject:v9];
    }
  }

  rowCount = [table rowCount];
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:rowCount];
  if (rowCount)
  {
    for (j = 0; j != rowCount; ++j)
    {
      v13 = [table identifierForRowAtIndex:j];
      [v11 addObject:v13];
    }
  }

  columnWidthManager = [(ICTableLayoutManager *)self->_tableLayoutManager columnWidthManager];
  [columnWidthManager singleColumnTableWidth];
  v16 = v15;

  v17 = [objc_alloc(MEMORY[0x277D35EB8]) initWithKeys:v7 andEstimateDimension:v16];
  columnWidthCache = self->_columnWidthCache;
  self->_columnWidthCache = v17;

  v19 = [objc_alloc(MEMORY[0x277D35EB8]) initWithKeys:v11 andEstimateDimension:44.0];
  rowHeightCache = self->_rowHeightCache;
  self->_rowHeightCache = v19;

  v21 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(table, "rowCount")}];
  cellHeightCache = self->_cellHeightCache;
  self->_cellHeightCache = v21;

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  visibleEmptyCellsBeforeMerge = self->_visibleEmptyCellsBeforeMerge;
  self->_visibleEmptyCellsBeforeMerge = dictionary;

  v25 = MEMORY[0x277CBEB40];
  table2 = [(ICTableAttachmentViewController *)self table];
  v27 = [v25 orderedSetWithCapacity:{objc_msgSend(table2, "columnCount")}];
  columnsBeforeMerge = self->_columnsBeforeMerge;
  self->_columnsBeforeMerge = v27;

  v29 = MEMORY[0x277CBEB40];
  table3 = [(ICTableAttachmentViewController *)self table];
  v31 = [v29 orderedSetWithCapacity:{objc_msgSend(table3, "rowCount")}];
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

- (_NSRange)characterRangeForRange:(_NSRange)range inString:(id)string forLayoutManager:(id)manager
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  managerCopy = manager;
  v11 = [stringCopy attribute:@"SearchTableRow" atIndex:location effectiveRange:0];
  table = [(ICTableAttachmentViewController *)self table];
  v13 = [table identifierForRowAtIndex:{objc_msgSend(v11, "unsignedIntegerValue")}];

  if ((ICInternalSettingsIsAsyncFindEnabled() & 1) == 0)
  {
    v19[0] = 0;
    v19[1] = 0;
    v14 = [stringCopy attribute:@"SearchTableColumn" atIndex:location effectiveRange:v19];
    location -= v19[0];
  }

  columnTextStorage = [managerCopy columnTextStorage];
  v16 = [columnTextStorage characterRangeForRowID:v13];

  v17 = v16 + location;
  v18 = length;
  result.length = v18;
  result.location = v17;
  return result;
}

- (_NSRange)columnGlyphRangeForRange:(_NSRange)range inString:(id)string forLayoutManager:(id)manager
{
  length = range.length;
  location = range.location;
  managerCopy = manager;
  managerCopy = [(ICTableAttachmentViewController *)self characterRangeForRange:location inString:length forLayoutManager:string, managerCopy];
  v12 = [managerCopy glyphRangeForCharacterRange:managerCopy actualCharacterRange:{v11, 0}];
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.length = v16;
  result.location = v15;
  return result;
}

- (id)viewForRange:(_NSRange)range inFindableString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  if (location + length <= [stringCopy length])
  {
    v9 = [stringCopy attribute:@"SearchTableColumn" atIndex:location effectiveRange:0];
    v10 = v9;
    if (v9 && (v11 = [v9 unsignedIntegerValue], -[ICTableAttachmentViewController table](self, "table"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "columnCount"), v12, v11 < v13))
    {
      table = [(ICTableAttachmentViewController *)self table];
      v15 = [table identifierForColumnAtIndex:{objc_msgSend(v10, "unsignedIntegerValue")}];

      textViewManager = [(ICTableAttachmentViewController *)self textViewManager];
      view = [textViewManager textViewForColumn:v15 createIfNeeded:1];

      v17 = [stringCopy attribute:@"SearchTableRow" atIndex:location effectiveRange:0];
      v18 = v17;
      if (v17)
      {
        unsignedIntegerValue = [v17 unsignedIntegerValue];
        table2 = [(ICTableAttachmentViewController *)self table];
        rowCount = [table2 rowCount];

        if (unsignedIntegerValue < rowCount)
        {
          table3 = [(ICTableAttachmentViewController *)self table];
          v23 = [table3 identifierForRowAtIndex:{objc_msgSend(v18, "unsignedIntegerValue")}];

          textViewManager2 = [(ICTableAttachmentViewController *)self textViewManager];
          [textViewManager2 ensureCellPositionForColumn:v15 andRow:v23];
        }
      }
    }

    else
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICTableAttachmentViewController(Findable) viewForRange:inFindableString:]" simulateCrash:1 showAlert:0 format:{@"No findable view found, since string lacks column attribute"}];
      view = [(ICTableAttachmentViewController *)self view];
    }
  }

  else
  {
    view = 0;
  }

  return view;
}

- (id)rectsForRange:(_NSRange)range inFindableString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  objc_opt_class();
  stringCopy = [(ICTableAttachmentViewController *)self viewForRange:location inFindableString:length, stringCopy];
  v9 = ICDynamicCast();

  objc_opt_class();
  layoutManager = [v9 layoutManager];
  v11 = ICDynamicCast();

  v12 = [(ICTableAttachmentViewController *)self columnGlyphRangeForRange:location inString:length forLayoutManager:stringCopy, v11];
  v14 = v13;

  v15 = [v11 rectsForGlyphRange:{v12, v14}];

  return v15;
}

- (void)scrollToRange:(_NSRange)range inFindableString:(id)string
{
  length = range.length;
  location = range.location;
  v37 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  objc_opt_class();
  stringCopy = [(ICTableAttachmentViewController *)self viewForRange:location inFindableString:length, stringCopy];
  v9 = ICDynamicCast();

  if (v9)
  {
    x = *MEMORY[0x277CBF398];
    y = *(MEMORY[0x277CBF398] + 8);
    width = *(MEMORY[0x277CBF398] + 16);
    height = *(MEMORY[0x277CBF398] + 24);
    stringCopy2 = [(ICTableAttachmentViewController *)self rectsForRange:location inFindableString:length, stringCopy];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v15 = [stringCopy2 countByEnumeratingWithState:&v32 objects:v36 count:16];
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
            objc_enumerationMutation(stringCopy2);
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
        v16 = [stringCopy2 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v16);
    }

    tableContentView = [(ICTableAttachmentViewController *)self tableContentView];
    [tableContentView convertRect:v9 fromView:{x, y, width, height}];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    [(ICTableAttachmentViewController *)self scrollToRect:0 animated:0 completion:v25, v27, v29, v31];
  }
}

- (void)drawCharactersInRange:(_NSRange)range inFindableString:(id)string forContentView:(id)view
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  viewCopy = view;
  objc_opt_class();
  v10 = ICDynamicCast();

  objc_opt_class();
  layoutManager = [v10 layoutManager];
  v12 = ICDynamicCast();

  if (v12)
  {
    v13 = [(ICTableAttachmentViewController *)self columnGlyphRangeForRange:location inString:length forLayoutManager:stringCopy, v12];
    v15 = v14;
    [v10 textContainerInset];
    v17 = v16;
    [v10 textContainerInset];
    [v12 drawGlyphsForGlyphRange:v13 atPoint:{v15, v17, v18}];
  }
}

- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string inFindableString:(id)findableString
{
  length = range.length;
  location = range.location;
  findableStringCopy = findableString;
  stringCopy = string;
  objc_opt_class();
  findableStringCopy = [(ICTableAttachmentViewController *)self viewForRange:location inFindableString:length, findableStringCopy];
  v18 = ICDynamicCast();

  objc_opt_class();
  layoutManager = [v18 layoutManager];
  v13 = ICDynamicCast();

  v14 = [(ICTableAttachmentViewController *)self characterRangeForRange:location inString:length forLayoutManager:findableStringCopy, v13];
  v16 = v15;

  textStorage = [v18 textStorage];
  [textStorage replaceCharactersInRange:v14 withString:{v16, stringCopy}];

  [(ICTableAttachmentViewController *)self saveOnMainThread];
}

- (void)setSelectedRange:(_NSRange)range inFindableString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  objc_opt_class();
  stringCopy = [(ICTableAttachmentViewController *)self viewForRange:location inFindableString:length, stringCopy];
  v14 = ICDynamicCast();

  objc_opt_class();
  layoutManager = [v14 layoutManager];
  v10 = ICDynamicCast();

  v11 = [(ICTableAttachmentViewController *)self characterRangeForRange:location inString:length forLayoutManager:stringCopy, v10];
  v13 = v12;

  [v14 setSelectedRange:{v11, v13}];
}

- (_NSRange)selectedRangeWithinRange:(_NSRange)range inFindableString:(id)string
{
  length = range.length;
  location = range.location;
  v48 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  textViewManager = [(ICTableAttachmentViewController *)self textViewManager];
  columnIDs = [textViewManager columnIDs];

  v9 = [columnIDs countByEnumeratingWithState:&v43 objects:v47 count:16];
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
          objc_enumerationMutation(columnIDs);
        }

        v12 = *(*(&v43 + 1) + 8 * v11);
        textViewManager2 = [(ICTableAttachmentViewController *)self textViewManager];
        v14 = [textViewManager2 textViewForColumn:v12];

        [v14 selectedRange];
        if (v15)
        {
          v9 = v12;
          v38 = 0;
          v39 = 0;
          columnTextStorage = [v14 columnTextStorage];
          v16 = [columnTextStorage rowAtIndex:objc_msgSend(v14 rowRange:{"selectedRange"), &v38}];

          selectedRange = [v14 selectedRange];
          v21 = v38;
          [v14 selectedRange];
          v17 = v22;

          v18 = selectedRange - v21;
          goto LABEL_11;
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [columnIDs countByEnumeratingWithState:&v43 objects:v47 count:16];
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
    table = [(ICTableAttachmentViewController *)self table];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __87__ICTableAttachmentViewController_Findable__selectedRangeWithinRange_inFindableString___block_invoke;
    v30[3] = &unk_2781AF678;
    v31 = stringCopy;
    v24 = table;
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