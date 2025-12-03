@interface ICiOSTableAttachmentViewController
- (BOOL)becomeFirstResponderForAuxStyling;
- (BOOL)canConvertToTag;
- (BOOL)canConvertToText;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)resignFirstResponderForAuxStyling;
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (BOOL)textViewShouldBeginEditing:(id)editing;
- (CGPoint)initialDragOffset;
- (CGPoint)previousNoteContentOffset;
- (CGPoint)previousViewOrigin;
- (CGRect)editingViewport;
- (ICNAEventReporter)eventReporter;
- (UILongPressGestureRecognizer)rowLongPress;
- (_NSRange)previousSelectedRange;
- (id)addColumnAction;
- (id)addRowAction;
- (id)auxiliaryTextViewHost;
- (id)columnMenu;
- (id)copySelectionAction;
- (id)cutSelectionAction;
- (id)dragSnapshotFromRect:(CGRect)rect afterScreenUpdates:(BOOL)updates;
- (id)formatMenu;
- (id)icTableDataFromPasteboard;
- (id)noteEditorViewController;
- (id)notesDataFromPasteboard;
- (id)pasteSelectionAction;
- (id)removeColumnAction;
- (id)removeRowAction;
- (id)rowMenu;
- (id)soloPlainTextStringFromPasteboard;
- (id)toggleBoldAction;
- (id)toggleItalicAction;
- (id)toggleStrikethroughAction;
- (id)toggleTableDirectionAction;
- (id)toggleUnderlineAction;
- (void)adjustScrollPositionByOffset:(CGPoint)offset;
- (void)beginEditingCellWithColumnID:(id)d andRowID:(id)iD textRange:(id)range;
- (void)beginEditingNoteAtRange:(_NSRange)range;
- (void)buildMenuWithBuilder:(id)builder;
- (void)cellFirstResponderChanged;
- (void)cleanUpKVOIfNeeded;
- (void)columnButtonMenuActionTriggered:(id)triggered;
- (void)columnButtonPressed:(id)pressed;
- (void)convertToTag:(id)tag;
- (void)convertToText:(id)text;
- (void)convertUnconfirmedHashtagsMentionsIfNecessary;
- (void)copySelection:(id)selection;
- (void)dealloc;
- (void)didBeginEditingWithTextView:(id)view;
- (void)didMoveToParentViewController:(id)controller;
- (void)didTapEmptyTable:(id)table;
- (void)didUpdateContentSize;
- (void)dragCellRange:(id)range;
- (void)dragColumn:(id)column;
- (void)dragRow:(id)row;
- (void)dragTextRange:(id)range;
- (void)ensureGesturesOnSelectionGrabbers:(id)grabbers;
- (void)eventReporterLostSession:(id)session;
- (void)invalidateCachedChildrenForAccessibilityReparenting;
- (void)layoutManager:(id)manager didCompleteLayoutForTextContainer:(id)container atEnd:(BOOL)end;
- (void)loadView;
- (void)makeDelegateOfTextView:(id)view;
- (void)menuDidHide:(id)hide;
- (void)menuWillHide:(id)hide;
- (void)moveAccessibilityFocusToSelectedColumnOrRowButton;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)paste:(id)paste;
- (void)performInitialLayoutIfNeeded;
- (void)rowButtonMenuActionTriggered:(id)triggered;
- (void)rowButtonPressed:(id)pressed;
- (void)scrollToCaretIfNeededForTextView:(id)view;
- (void)scrollToRect:(CGRect)rect animated:(BOOL)animated completion:(id)completion;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)selectCell;
- (void)selectCurrentColumnForAccessibility;
- (void)selectCurrentRowForAccessibility;
- (void)selectionDidResignFirstResponder:(id)responder;
- (void)sendAnalyticsForEndEditIfNeeded;
- (void)sendAnalyticsForStartEditIfNeeded;
- (void)setTextViewWritingDirection:(int64_t)direction sender:(id)sender;
- (void)setupEventHandling;
- (void)setupKVOIfNeeded;
- (void)setupTableTextView:(id)view;
- (void)shareTable:(id)table;
- (void)showButtonsAtColumns:(id)columns rows:(id)rows;
- (void)showRangeSelectionMenu;
- (void)showSelectionMenuFromRect:(CGRect)rect;
- (void)speakAccessibilityAnnouncementForMoveToCellWithColumnID:(id)d rowID:(id)iD;
- (void)speakAccessibilityExitedTableAnnouncementAndDidRemoveRow:(BOOL)row;
- (void)strikethrough:(id)strikethrough;
- (void)tableAttachmentDidChange;
- (void)tableAttachmentSelectionDidChange:(id)change;
- (void)textViewDidBeginEditing:(id)editing;
- (void)textViewDidChange:(id)change;
- (void)textViewDidChangeSelection:(id)selection;
- (void)textViewDidEndEditing:(id)editing;
- (void)unselectColumnRow;
- (void)updateAccessibilityValueForColumnAndRowButtons;
- (void)updateChrome;
- (void)updateKeyboardAppearanceForTextView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willBeginEditingWithTextView:(id)view;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation ICiOSTableAttachmentViewController

- (void)dealloc
{
  rowLongPress = [(ICiOSTableAttachmentViewController *)self rowLongPress];

  if (rowLongPress)
  {
    ic_viewControllerManager = [(ICiOSTableAttachmentViewController *)self ic_viewControllerManager];
    mainSplitViewController = [ic_viewControllerManager mainSplitViewController];
    v6 = [mainSplitViewController viewControllerForColumn:3];

    objc_opt_class();
    v7 = ICDynamicCast();
    interactivePopGestureRecognizer = [v7 interactivePopGestureRecognizer];

    rowLongPress2 = [(ICiOSTableAttachmentViewController *)self rowLongPress];
    [interactivePopGestureRecognizer removeFailureRequirement:rowLongPress2];
  }

  [(ICiOSTableAttachmentViewController *)self cleanUpKVOIfNeeded];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v11.receiver = self;
  v11.super_class = ICiOSTableAttachmentViewController;
  [(ICTableAttachmentViewController *)&v11 dealloc];
}

- (CGRect)editingViewport
{
  noteScrollView = [(ICiOSTableAttachmentViewController *)self noteScrollView];
  view = [(ICiOSTableAttachmentViewController *)self view];
  superview = [view superview];

  if (superview)
  {
    tableContentView = [(ICTableAttachmentViewController *)self tableContentView];
    [noteScrollView contentOffset];
    [tableContentView convertPoint:noteScrollView fromView:?];
    v8 = v7;
  }

  else
  {
    [noteScrollView contentOffset];
    v10 = v9;
    [(ICTableAttachmentViewController *)self proposedLineFragmentRect];
    v12 = v10 - v11;
    noteTextView = [(ICTableAttachmentViewController *)self noteTextView];
    [noteTextView textContainerInset];
    noteTextView2 = [(ICTableAttachmentViewController *)self noteTextView];
    textContainer = [noteTextView2 textContainer];
    [textContainer lineFragmentPadding];

    tableContentView = [(ICTableAttachmentViewController *)self noteTextView];
    [tableContentView textContainerInset];
    v8 = v12 - v16;
  }

  scrollView = [(ICTableAttachmentViewController *)self scrollView];
  [scrollView contentOffset];
  v19 = v18;

  if (noteScrollView)
  {
    [(ICTableAttachmentViewController *)self availableWidth];
    v21 = v20;
    [noteScrollView bounds];
    v23 = v22;
  }

  else
  {
    v21 = 0.0;
    v23 = 0.0;
  }

  v24 = v19;
  v25 = v8;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (id)noteEditorViewController
{
  IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
  objc_opt_class();
  parentViewController = [(ICiOSTableAttachmentViewController *)self parentViewController];
  v5 = parentViewController;
  if (IsTextKit2Enabled)
  {
    v6 = ICCheckedDynamicCast();
  }

  else
  {
    v4ParentViewController = [parentViewController parentViewController];
    v6 = ICCheckedDynamicCast();
  }

  return v6;
}

- (id)auxiliaryTextViewHost
{
  noteEditorViewController = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
  objc_opt_class();
  v3 = ICClassAndProtocolCast();

  return v3;
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = ICiOSTableAttachmentViewController;
  [(ICTableAttachmentViewController *)&v7 loadView];
  scrollView = [(ICTableAttachmentViewController *)self scrollView];
  [scrollView setDirectionalLockEnabled:1];

  scrollView2 = [(ICTableAttachmentViewController *)self scrollView];
  [scrollView2 setShowsVerticalScrollIndicator:0];

  scrollView3 = [(ICTableAttachmentViewController *)self scrollView];
  [scrollView3 setDelegate:self];

  headerClipView = [(ICTableAttachmentViewController *)self headerClipView];
  [headerClipView setAutoresizingMask:34];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = ICiOSTableAttachmentViewController;
  [(ICiOSTableAttachmentViewController *)&v7 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel_dragCellRange_];
  [v3 setMinimumPressDuration:0.0];
  startKnob = [(ICTableAttachmentViewController *)self startKnob];
  [startKnob addGestureRecognizer:v3];

  v5 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel_dragCellRange_];
  [v5 setMinimumPressDuration:0.0];
  endKnob = [(ICTableAttachmentViewController *)self endKnob];
  [endKnob addGestureRecognizer:v5];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = ICiOSTableAttachmentViewController;
  [(ICiOSTableAttachmentViewController *)&v3 viewWillAppear:appear];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ICiOSTableAttachmentViewController;
  [(ICiOSTableAttachmentViewController *)&v4 viewDidAppear:appear];
  [(ICiOSTableAttachmentViewController *)self setupKVOIfNeeded];
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    [(ICTableAttachmentViewController *)self updateAllColumnWidthsAndRedraw];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = ICiOSTableAttachmentViewController;
  [(ICiOSTableAttachmentViewController *)&v4 viewWillDisappear:disappear];
  [(ICiOSTableAttachmentViewController *)self cleanUpKVOIfNeeded];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = ICiOSTableAttachmentViewController;
  [(ICiOSTableAttachmentViewController *)&v13 viewWillLayoutSubviews];
  view = [(ICiOSTableAttachmentViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  scrollView = [(ICTableAttachmentViewController *)self scrollView];
  [scrollView setFrame:{v5, v7, v9, v11}];

  [(ICTableAttachmentViewController *)self updateTiles];
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = ICiOSTableAttachmentViewController;
  [(ICiOSTableAttachmentViewController *)&v8 viewDidLayoutSubviews];
  if ([(ICTableAttachmentViewController *)self shouldBeginInitialEditing])
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__ICiOSTableAttachmentViewController_viewDidLayoutSubviews__block_invoke;
    block[3] = &unk_2781AC0B8;
    objc_copyWeak(&v6, &location);
    dispatch_async(MEMORY[0x277D85CD0], block);
    [(ICTableAttachmentViewController *)self setShouldBeginInitialEditing:0];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  [(ICiOSTableAttachmentViewController *)self performInitialLayoutIfNeeded];
  textViewManager = [(ICTableAttachmentViewController *)self textViewManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__ICiOSTableAttachmentViewController_viewDidLayoutSubviews__block_invoke_2;
  v4[3] = &unk_2781AC718;
  v4[4] = self;
  [textViewManager enumerateTextViewsWithBlock:v4];
}

void __59__ICiOSTableAttachmentViewController_viewDidLayoutSubviews__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained beginEditingInitialCell];
}

- (void)willMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = ICiOSTableAttachmentViewController;
  [(ICiOSTableAttachmentViewController *)&v5 willMoveToParentViewController:?];
  if (!controller)
  {
    [(ICiOSTableAttachmentViewController *)self cleanUpKVOIfNeeded];
  }
}

- (void)didMoveToParentViewController:(id)controller
{
  v6.receiver = self;
  v6.super_class = ICiOSTableAttachmentViewController;
  [(ICiOSTableAttachmentViewController *)&v6 didMoveToParentViewController:?];
  if (controller)
  {
    textViewManager = [(ICTableAttachmentViewController *)self textViewManager];
    [textViewManager parentViewDidChange];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v9.receiver = self;
  v9.super_class = ICiOSTableAttachmentViewController;
  [(ICiOSTableAttachmentViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  [(ICiOSTableAttachmentViewController *)self editingViewport];
  [(ICTableAttachmentViewController *)self setTransitionViewport:?];
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    [(ICTableAttachmentViewController *)self updateAllColumnWidthsAndRedraw];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __89__ICiOSTableAttachmentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v8[3] = &unk_2781AC788;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:&__block_literal_global_0 completion:v8];
}

void __89__ICiOSTableAttachmentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setTransitionViewport:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  objc_initWeak(&location, *(a1 + 32));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__ICiOSTableAttachmentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3;
  block[3] = &unk_2781AC760;
  objc_copyWeak(&v3, &location);
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __89__ICiOSTableAttachmentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained updateAllColumnWidthsAndRedraw];
    v3 = [*(a1 + 32) currentlyEditingTextView];

    WeakRetained = v6;
    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = [v4 currentlyEditingTextView];
      [v4 scrollToCaretIfNeededForTextView:v5];

      WeakRetained = v6;
    }
  }
}

- (void)setupKVOIfNeeded
{
  if (![(ICiOSTableAttachmentViewController *)self isObservingContentOffset])
  {
    noteEditorViewController = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
    isEditingOnSystemPaper = [noteEditorViewController isEditingOnSystemPaper];

    if ((isEditingOnSystemPaper & 1) == 0)
    {
      noteScrollView = [(ICiOSTableAttachmentViewController *)self noteScrollView];
      [noteScrollView ic_addObserver:self forKeyPath:@"contentOffset" context:&compoundliteral];

      [(ICiOSTableAttachmentViewController *)self setIsObservingContentOffset:1];
    }

    view = [(ICiOSTableAttachmentViewController *)self view];
    [view ic_addObserver:self forKeyPath:@"frame" context:&compoundliteral_637];
  }
}

- (void)cleanUpKVOIfNeeded
{
  if ([(ICiOSTableAttachmentViewController *)self isObservingContentOffset])
  {
    noteScrollView = [(ICiOSTableAttachmentViewController *)self noteScrollView];
    [noteScrollView ic_removeObserver:self forKeyPath:@"contentOffset" context:&compoundliteral];

    view = [(ICiOSTableAttachmentViewController *)self view];
    [view ic_removeObserver:self forKeyPath:@"frame" context:&compoundliteral_637];

    [(ICiOSTableAttachmentViewController *)self setIsObservingContentOffset:0];
  }

  keyboardWillShowScrollObservation = [(ICiOSTableAttachmentViewController *)self keyboardWillShowScrollObservation];

  if (keyboardWillShowScrollObservation)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    keyboardWillShowScrollObservation2 = [(ICiOSTableAttachmentViewController *)self keyboardWillShowScrollObservation];
    [defaultCenter removeObserver:keyboardWillShowScrollObservation2];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  changeCopy = change;
  pathCopy = path;
  if (([(ICiOSTableAttachmentViewController *)self ic_didAddObserverForContext:context inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/Common/TextAttachmentUI/iOS/ICiOSTableAttachmentViewController.m"]& 1) != 0)
  {
    v13 = [(ICiOSTableAttachmentViewController *)self ic_shouldIgnoreObserveValue:changeCopy ofObject:objectCopy forKeyPath:pathCopy];

    if ((v13 & 1) == 0)
    {
      if (context == &compoundliteral)
      {
        if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
        {
          [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICiOSTableAttachmentViewController observeValueForKeyPath:ofObject:change:context:]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
        }

        [(ICiOSTableAttachmentViewController *)self previousNoteContentOffset];
        v25 = v24;
        v27 = v26;
        noteScrollView = [(ICiOSTableAttachmentViewController *)self noteScrollView];
        [noteScrollView contentOffset];
        v30 = v29;
        v32 = v31;

        if (v25 != v30 || v27 != v32)
        {
          noteScrollView2 = [(ICiOSTableAttachmentViewController *)self noteScrollView];
          [noteScrollView2 contentOffset];
          [(ICiOSTableAttachmentViewController *)self setPreviousNoteContentOffset:?];

          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __85__ICiOSTableAttachmentViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
          v34[3] = &unk_2781ABCF8;
          v34[4] = self;
          [MEMORY[0x277D75D18] ic_performWithoutAnimation:v34];
          [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_scrollViewDidEndScrollingAnimation_ object:objectCopy];
          [(ICiOSTableAttachmentViewController *)self performSelector:sel_scrollViewDidEndScrollingAnimation_ withObject:objectCopy afterDelay:0.2];
        }
      }

      else if (context == &compoundliteral_637)
      {
        if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
        {
          [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICiOSTableAttachmentViewController observeValueForKeyPath:ofObject:change:context:]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
        }

        [(ICiOSTableAttachmentViewController *)self previousViewOrigin];
        v15 = v14;
        v17 = v16;
        view = [(ICiOSTableAttachmentViewController *)self view];
        [view frame];
        v20 = v19;
        v22 = v21;

        if (v15 != v20 || v17 != v22)
        {
          view2 = [(ICiOSTableAttachmentViewController *)self view];
          [view2 frame];
          [(ICiOSTableAttachmentViewController *)self setPreviousViewOrigin:?];

          [(ICTableAttachmentViewController *)self updateTiles];
        }
      }
    }
  }

  else
  {
    v35.receiver = self;
    v35.super_class = ICiOSTableAttachmentViewController;
    [(ICiOSTableAttachmentViewController *)&v35 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  [(ICTableAttachmentViewController *)self updateTiles];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  scrollView = [(ICTableAttachmentViewController *)self scrollView];
  [defaultCenter postNotificationName:@"ICTableScrollViewBoundsDidChangeNotification" object:scrollView];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_showRangeSelectionMenu object:0];

    [(ICiOSTableAttachmentViewController *)self performSelector:sel_showRangeSelectionMenu withObject:0 afterDelay:0.2];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_showRangeSelectionMenu object:0];

  [(ICiOSTableAttachmentViewController *)self performSelector:sel_showRangeSelectionMenu withObject:0 afterDelay:0.2];
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_scrollViewDidEndScrollingAnimation_ object:animation];

  [(ICiOSTableAttachmentViewController *)self showRangeSelectionMenu];
}

- (void)didUpdateContentSize
{
  v9.receiver = self;
  v9.super_class = ICiOSTableAttachmentViewController;
  [(ICTableAttachmentViewController *)&v9 didUpdateContentSize];
  [(ICTableAttachmentViewController *)self intrinsicSize];
  v4 = v3;
  v6 = v5;
  scrollView = [(ICTableAttachmentViewController *)self scrollView];
  [scrollView setContentSize:{v4, v6}];

  scrollView2 = [(ICTableAttachmentViewController *)self scrollView];
  [scrollView2 setContentInsetAdjustmentBehavior:2];
}

- (void)adjustScrollPositionByOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  scrollView = [(ICTableAttachmentViewController *)self scrollView];
  [scrollView contentOffset];
  v8 = v7;
  v10 = v9;

  scrollView2 = [(ICTableAttachmentViewController *)self scrollView];
  [scrollView2 setContentOffset:{x + v8, y + v10}];
}

- (void)scrollToRect:(CGRect)rect animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  rect.origin.x = rect.origin.x;
  completionCopy = completion;
  if (![(ICTableAttachmentViewController *)self preventScrolling])
  {
    v74 = width;
    v72 = height;
    [(ICTableAttachmentViewController *)self viewport];
    v13 = v12;
    v15 = v14;
    v73 = v16;
    v18 = v17;
    noteScrollView = [(ICiOSTableAttachmentViewController *)self noteScrollView];
    [noteScrollView contentInset];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    if (ICInternalSettingsIsTextKit2Enabled())
    {
      noteScrollView2 = [(ICiOSTableAttachmentViewController *)self noteScrollView];
      [noteScrollView2 safeAreaInsets];
      v21 = v29;
    }

    v30 = v13 + v23;
    v31 = v15 + v21;
    v32 = v21;
    v33 = v73 - (v23 + v27);
    v70 = v32;
    v34 = v18 - (v25 + v32);
    if (completionCopy)
    {
      v35 = completionCopy;
    }

    else
    {
      v35 = &__block_literal_global_116;
    }

    v11 = _Block_copy(v35);

    v86.origin.x = v30;
    v86.origin.y = v31;
    v86.size.width = v73 - (v23 + v27);
    v86.size.height = v34;
    v36 = v74;
    v97.origin.x = rect.origin.x;
    v97.origin.y = y;
    v97.size.width = v74;
    v97.size.height = v72;
    if (CGRectContainsRect(v86, v97))
    {
      v11[2](v11);
      goto LABEL_27;
    }

    noteScrollView3 = [(ICiOSTableAttachmentViewController *)self noteScrollView];
    scrollView = [(ICTableAttachmentViewController *)self scrollView];
    noteScrollView4 = [(ICiOSTableAttachmentViewController *)self noteScrollView];
    tableContentView = [(ICTableAttachmentViewController *)self tableContentView];
    [noteScrollView4 convertRect:tableContentView fromView:{rect.origin.x, y, v74, v72}];
    v66 = v42;
    v67 = v41;
    v64 = v44;
    v65 = v43;

    [noteScrollView3 contentOffset];
    v68 = v45;
    v69 = v46;
    v87.origin.x = rect.origin.x;
    v87.origin.y = y;
    v87.size.width = v74;
    v87.size.height = v72;
    MinY = CGRectGetMinY(v87);
    v88.origin.x = v30;
    v88.origin.y = v31;
    v88.size.width = v33;
    v88.size.height = v34;
    if (MinY < CGRectGetMinY(v88) || (v89.origin.x = rect.origin.x, v89.origin.y = y, v89.size.width = v74, v89.size.height = v72, MaxY = CGRectGetMaxY(v89), v90.origin.x = v30, v90.origin.y = v31, v90.size.width = v33, v90.size.height = v34, MaxY > CGRectGetMaxY(v90)))
    {
      v91.origin.y = v66;
      v91.origin.x = v67;
      v91.size.height = v64;
      v91.size.width = v65;
      v49 = CGRectGetMidY(v91) + v34 * -0.5 - v70;
      [noteScrollView3 contentSize];
      v51 = v50 - v34;
      [noteScrollView3 contentInset];
      v53 = -v52;
      if (v49 >= v51)
      {
        v54 = v51;
      }

      else
      {
        v54 = v49;
      }

      v36 = v74;
      if (v54 > v53)
      {
        v53 = v54;
      }

      v69 = v53;
    }

    [scrollView contentOffset];
    v71 = v55;
    v75 = v56;
    v92.origin.x = rect.origin.x;
    v92.origin.y = y;
    v92.size.width = v36;
    v92.size.height = v72;
    MinX = CGRectGetMinX(v92);
    v93.size.height = v34;
    v93.origin.x = v30;
    v93.origin.y = v31;
    v93.size.width = v33;
    if (MinX >= CGRectGetMinX(v93) && (v94.origin.x = rect.origin.x, v94.origin.y = y, v94.size.width = v36, v94.size.height = v72, MaxX = CGRectGetMaxX(v94), v95.origin.x = v30, v95.origin.y = v31, v95.size.width = v33, v95.size.height = v34, MaxX <= CGRectGetMaxX(v95)))
    {
      v62 = v71;
      if (animatedCopy)
      {
LABEL_23:
        v63 = MEMORY[0x277D75D18];
        v79[0] = MEMORY[0x277D85DD0];
        v79[1] = 3221225472;
        v79[2] = __71__ICiOSTableAttachmentViewController_scrollToRect_animated_completion___block_invoke_2;
        v79[3] = &unk_2781AC7B0;
        v80 = noteScrollView3;
        v82 = v68;
        v83 = v69;
        v81 = scrollView;
        v84 = v62;
        v85 = v75;
        *&rect.origin.y = MEMORY[0x277D85DD0];
        *&rect.size.width = 3221225472;
        *&rect.size.height = __71__ICiOSTableAttachmentViewController_scrollToRect_animated_completion___block_invoke_3;
        v77 = &unk_2781AC7D8;
        v78 = v11;
        [v63 ic_animateWithDuration:v79 animations:&rect.origin.y completion:0.3];

LABEL_26:
        goto LABEL_27;
      }
    }

    else
    {
      v96.origin.x = rect.origin.x;
      v96.origin.y = y;
      v96.size.width = v36;
      v96.size.height = v72;
      v59 = CGRectGetMidX(v96) + v33 * -0.5;
      [(ICTableAttachmentViewController *)self intrinsicSize];
      v61 = v60 - v73;
      if (v59 < v61)
      {
        v61 = v59;
      }

      v62 = fmax(v61, 0.0);
      if (animatedCopy)
      {
        goto LABEL_23;
      }
    }

    [noteScrollView3 setContentOffset:{v68, v69}];
    [scrollView setContentOffset:{v62, v75}];
    v11[2](v11);
    goto LABEL_26;
  }

  v11 = completionCopy;
LABEL_27:
}

uint64_t __71__ICiOSTableAttachmentViewController_scrollToRect_animated_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setContentOffset:{*(a1 + 48), *(a1 + 56)}];
  v2 = *(a1 + 40);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);

  return [v2 setContentOffset:{v3, v4}];
}

- (void)beginEditingNoteAtRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  objc_opt_class();
  view = [(ICiOSTableAttachmentViewController *)self view];
  v11 = ICDynamicCast();

  objc_opt_class();
  textView = [v11 textView];
  v8 = ICDynamicCast();

  editorController = [v8 editorController];
  [editorController setSelectedRange:{location, length}];

  editorController2 = [v8 editorController];
  [editorController2 startEditing];

  [(ICiOSTableAttachmentViewController *)self speakAccessibilityExitedTableAnnouncementAndDidRemoveRow:0];
}

- (id)dragSnapshotFromRect:(CGRect)rect afterScreenUpdates:(BOOL)updates
{
  updatesCopy = updates;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  scrollView = [(ICTableAttachmentViewController *)self scrollView];
  v11 = [scrollView resizableSnapshotViewFromRect:updatesCopy afterScreenUpdates:x withCapInsets:{y, width, height, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  if ([MEMORY[0x277D75418] ic_isVision])
  {
    [v11 setBackgroundColor:0];
  }

  else
  {
    v12 = MEMORY[0x277D75348];
    view = [(ICiOSTableAttachmentViewController *)self view];
    traitCollection = [view traitCollection];
    v15 = [v12 ic_attachmentBackgroundColorForTraitCollection:traitCollection];
    v16 = [v15 colorWithAlphaComponent:0.7];
    [v11 setBackgroundColor:v16];
  }

  return v11;
}

- (void)setupTableTextView:(id)view
{
  v5.receiver = self;
  v5.super_class = ICiOSTableAttachmentViewController;
  viewCopy = view;
  [(ICTableAttachmentViewController *)&v5 setupTableTextView:viewCopy];
  [(ICiOSTableAttachmentViewController *)self updateKeyboardAppearanceForTextView:viewCopy, v5.receiver, v5.super_class];
}

- (void)updateKeyboardAppearanceForTextView:(id)view
{
  viewCopy = view;
  noteTextView = [(ICTableAttachmentViewController *)self noteTextView];
  [viewCopy setOverrideUserInterfaceStyle:{objc_msgSend(noteTextView, "overrideUserInterfaceStyle")}];

  noteTextView2 = [(ICTableAttachmentViewController *)self noteTextView];
  [viewCopy setKeyboardAppearance:{objc_msgSend(noteTextView2, "keyboardAppearance")}];
}

- (void)setupEventHandling
{
  v4 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_didTapEmptyTable_];
  [v4 setDelegate:self];
  tableContentView = [(ICTableAttachmentViewController *)self tableContentView];
  [tableContentView addGestureRecognizer:v4];
}

- (void)didTapEmptyTable:(id)table
{
  tableCopy = table;
  if ([tableCopy state] == 3)
  {
    table = [(ICTableAttachmentViewController *)self table];
    if ([table columnCount])
    {
      table2 = [(ICTableAttachmentViewController *)self table];
      rowCount = [table2 rowCount];

      if (rowCount)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    tableContentView = [(ICTableAttachmentViewController *)self tableContentView];
    [tableCopy locationInView:tableContentView];
    v9 = v8;
    v11 = v10;

    [(ICTableAttachmentViewController *)self tappedTableAtLocation:v9, v11];
  }

LABEL_7:
}

- (BOOL)becomeFirstResponderForAuxStyling
{
  selectionHighlightView = [(ICTableAttachmentViewController *)self selectionHighlightView];
  becomeFirstResponder = [selectionHighlightView becomeFirstResponder];

  return becomeFirstResponder;
}

- (BOOL)resignFirstResponderForAuxStyling
{
  selectionHighlightView = [(ICTableAttachmentViewController *)self selectionHighlightView];
  resignFirstResponder = [selectionHighlightView resignFirstResponder];

  return resignFirstResponder;
}

- (void)makeDelegateOfTextView:(id)view
{
  viewCopy = view;
  [viewCopy setDelegate:self];
  [viewCopy setIcDelegate:self];
  layoutManager = [viewCopy layoutManager];

  [layoutManager setDelegate:self];
}

- (void)willBeginEditingWithTextView:(id)view
{
  v7.receiver = self;
  v7.super_class = ICiOSTableAttachmentViewController;
  [(ICTableAttachmentViewController *)&v7 willBeginEditingWithTextView:view];
  noteTextView = [(ICTableAttachmentViewController *)self noteTextView];
  isEditable = [noteTextView isEditable];

  if ((isEditable & 1) == 0)
  {
    noteTextView2 = [(ICTableAttachmentViewController *)self noteTextView];
    [noteTextView2 setEditable:1];
  }
}

- (void)didBeginEditingWithTextView:(id)view
{
  v6.receiver = self;
  v6.super_class = ICiOSTableAttachmentViewController;
  [(ICTableAttachmentViewController *)&v6 didBeginEditingWithTextView:view];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  noteEditorViewController = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
  [defaultCenter postNotificationName:@"ICNoteEditorViewControllerSelectionDidChangeNotification" object:noteEditorViewController];
}

- (void)cellFirstResponderChanged
{
  v4.receiver = self;
  v4.super_class = ICiOSTableAttachmentViewController;
  [(ICTableAttachmentViewController *)&v4 cellFirstResponderChanged];
  [(ICiOSTableAttachmentViewController *)self convertUnconfirmedHashtagsMentionsIfNecessary];
  noteEditorViewController = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
  [noteEditorViewController tableCellFirstResponderChanged];
}

- (void)convertUnconfirmedHashtagsMentionsIfNecessary
{
  currentlyEditingTextView = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
  if (currentlyEditingTextView)
  {
    v4 = currentlyEditingTextView;
    currentlyEditingTextStorage = [(ICTableAttachmentViewController *)self currentlyEditingTextStorage];

    if (currentlyEditingTextStorage)
    {
      noteTextView = [(ICTableAttachmentViewController *)self noteTextView];
      editorController = [noteTextView editorController];
      mentionsController = [editorController mentionsController];

      v8 = MEMORY[0x277D35F20];
      currentlyEditingTextStorage2 = [(ICTableAttachmentViewController *)self currentlyEditingTextStorage];
      v10 = [v8 rangeOfUnconfirmedMentionInTextStorage:currentlyEditingTextStorage2];
      v12 = v11;

      if (v10 != 0x7FFFFFFFFFFFFFFFLL && v12)
      {
        currentlyEditingTextStorage3 = [(ICTableAttachmentViewController *)self currentlyEditingTextStorage];
        note = [(ICTableAttachmentViewController *)self note];
        currentlyEditingTextView2 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
        currentlyEditingTextView3 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
        languageHasSpaces = [currentlyEditingTextView3 languageHasSpaces];
        attachment = [(ICAttachmentViewController *)self attachment];
        BYTE1(v33) = languageHasSpaces;
        LOBYTE(v33) = 1;
        [mentionsController checkForMentionInEditedRange:v10 ofTextStorage:v12 note:currentlyEditingTextStorage3 textView:note allowAutoExplicitMention:currentlyEditingTextView2 isEndingEditing:1 languageHasSpaces:v33 parentAttachment:attachment];
      }

      noteTextView2 = [(ICTableAttachmentViewController *)self noteTextView];
      editorController2 = [noteTextView2 editorController];
      hashtagController = [editorController2 hashtagController];

      v22 = MEMORY[0x277D35EE8];
      currentlyEditingTextStorage4 = [(ICTableAttachmentViewController *)self currentlyEditingTextStorage];
      v24 = [v22 rangeOfUnconfirmedHashtagInTextStorage:currentlyEditingTextStorage4];
      v26 = v25;

      if (v24 != 0x7FFFFFFFFFFFFFFFLL && v26)
      {
        currentlyEditingTextStorage5 = [(ICTableAttachmentViewController *)self currentlyEditingTextStorage];
        note2 = [(ICTableAttachmentViewController *)self note];
        currentlyEditingTextView4 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
        currentlyEditingTextView5 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
        languageHasSpaces2 = [currentlyEditingTextView5 languageHasSpaces];
        attachment2 = [(ICAttachmentViewController *)self attachment];
        BYTE1(v33) = languageHasSpaces2;
        LOBYTE(v33) = 1;
        [hashtagController checkForHashtagInEditedRange:v24 ofTextStorage:v26 note:currentlyEditingTextStorage5 textView:note2 allowAutoExplicitHashtag:currentlyEditingTextView4 isEndingEditing:1 languageHasSpaces:v33 parentAttachment:attachment2];
      }
    }
  }
}

- (void)showButtonsAtColumns:(id)columns rows:(id)rows
{
  rowsCopy = rows;
  columnsCopy = columns;
  columnButton = [(ICTableAttachmentViewController *)self columnButton];
  if (!columnButton || (v9 = columnButton, [(ICTableAttachmentViewController *)self rowButton], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, !v10))
  {
    v11 = [ICTableColumnRowButton alloc];
    table = [(ICTableAttachmentViewController *)self table];
    v13 = -[ICTableColumnRowButton initAsColumn:isLeftToRight:](v11, "initAsColumn:isLeftToRight:", 1, [table isLeftToRight]);
    [(ICTableAttachmentViewController *)self setColumnButton:v13];

    v14 = [ICTableColumnRowButton alloc];
    table2 = [(ICTableAttachmentViewController *)self table];
    v16 = -[ICTableColumnRowButton initAsColumn:isLeftToRight:](v14, "initAsColumn:isLeftToRight:", 0, [table2 isLeftToRight]);
    [(ICTableAttachmentViewController *)self setRowButton:v16];

    columnButton2 = [(ICTableAttachmentViewController *)self columnButton];
    [columnButton2 addTarget:self action:sel_columnButtonTouched_ forControlEvents:1];

    columnButton3 = [(ICTableAttachmentViewController *)self columnButton];
    [columnButton3 addTarget:self action:sel_columnButtonPressed_ forControlEvents:64];

    columnButton4 = [(ICTableAttachmentViewController *)self columnButton];
    [columnButton4 addTarget:self action:sel_columnButtonMenuActionTriggered_ forControlEvents:0x4000];

    columnButton5 = [(ICTableAttachmentViewController *)self columnButton];
    [columnButton5 setExclusiveTouch:1];

    columnButton6 = [(ICTableAttachmentViewController *)self columnButton];
    [columnButton6 setShowsMenuAsPrimaryAction:1];

    rowButton = [(ICTableAttachmentViewController *)self rowButton];
    [rowButton addTarget:self action:sel_rowButtonTouched_ forControlEvents:1];

    rowButton2 = [(ICTableAttachmentViewController *)self rowButton];
    [rowButton2 addTarget:self action:sel_rowButtonPressed_ forControlEvents:64];

    rowButton3 = [(ICTableAttachmentViewController *)self rowButton];
    [rowButton3 addTarget:self action:sel_rowButtonMenuActionTriggered_ forControlEvents:0x4000];

    rowButton4 = [(ICTableAttachmentViewController *)self rowButton];
    [rowButton4 setExclusiveTouch:1];

    rowButton5 = [(ICTableAttachmentViewController *)self rowButton];
    [rowButton5 setShowsMenuAsPrimaryAction:1];

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    [mainBundle localizedStringForKey:@"Column selection handle" value:&stru_282757698 table:0];
    v28 = v79 = rowsCopy;
    [(ICTableAttachmentViewController *)self columnButton];
    v29 = v78 = columnsCopy;
    [v29 setAccessibilityLabel:v28];

    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v31 = [mainBundle2 localizedStringForKey:@"Double tap and drag to reorder this column." value:&stru_282757698 table:0];
    columnButton7 = [(ICTableAttachmentViewController *)self columnButton];
    [columnButton7 setAccessibilityHint:v31];

    mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
    v34 = [mainBundle3 localizedStringForKey:@"Row selection handle" value:&stru_282757698 table:0];
    rowButton6 = [(ICTableAttachmentViewController *)self rowButton];
    [rowButton6 setAccessibilityLabel:v34];

    mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
    v37 = [mainBundle4 localizedStringForKey:@"Double tap and drag to reorder this row." value:&stru_282757698 table:0];
    rowButton7 = [(ICTableAttachmentViewController *)self rowButton];
    [rowButton7 setAccessibilityHint:v37];

    v39 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_dragColumn_];
    [v39 setDelegate:self];
    columnButton8 = [(ICTableAttachmentViewController *)self columnButton];
    [columnButton8 addGestureRecognizer:v39];

    v41 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel_dragColumn_];
    [v41 setDelegate:self];
    [v41 setMinimumPressDuration:0.3];
    columnButton9 = [(ICTableAttachmentViewController *)self columnButton];
    [columnButton9 addGestureRecognizer:v41];

    v43 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_dragRow_];
    [v43 setDelegate:self];
    rowButton8 = [(ICTableAttachmentViewController *)self rowButton];
    [rowButton8 addGestureRecognizer:v43];

    v45 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel_dragRow_];
    [v45 setDelegate:self];
    [v45 setMinimumPressDuration:0.3];
    rowButton9 = [(ICTableAttachmentViewController *)self rowButton];
    [rowButton9 addGestureRecognizer:v45];

    [(ICiOSTableAttachmentViewController *)self setRowLongPress:v45];
    ic_viewControllerManager = [(ICiOSTableAttachmentViewController *)self ic_viewControllerManager];
    mainSplitViewController = [ic_viewControllerManager mainSplitViewController];
    v49 = [mainSplitViewController viewControllerForColumn:3];

    objc_opt_class();
    v50 = ICDynamicCast();
    interactivePopGestureRecognizer = [v50 interactivePopGestureRecognizer];

    [interactivePopGestureRecognizer requireGestureRecognizerToFail:v45];
    view = [(ICiOSTableAttachmentViewController *)self view];
    outsideViews = [view outsideViews];
    columnButton10 = [(ICTableAttachmentViewController *)self columnButton];
    [outsideViews addObject:columnButton10];

    view2 = [(ICiOSTableAttachmentViewController *)self view];
    outsideViews2 = [view2 outsideViews];
    rowButton10 = [(ICTableAttachmentViewController *)self rowButton];
    [outsideViews2 addObject:rowButton10];

    [(ICiOSTableAttachmentViewController *)self invalidateCachedChildrenForAccessibilityReparenting];
    columnsCopy = v78;

    rowsCopy = v79;
  }

  columnButton11 = [(ICTableAttachmentViewController *)self columnButton];
  superview = [columnButton11 superview];
  if (superview)
  {
    v60 = superview;
    rowButton11 = [(ICTableAttachmentViewController *)self rowButton];
    superview2 = [rowButton11 superview];

    if (superview2)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  headerClipView = [(ICTableAttachmentViewController *)self headerClipView];
  columnButton12 = [(ICTableAttachmentViewController *)self columnButton];
  [headerClipView addSubview:columnButton12];

  view3 = [(ICiOSTableAttachmentViewController *)self view];
  rowButton12 = [(ICTableAttachmentViewController *)self rowButton];
  [view3 addSubview:rowButton12];

LABEL_9:
  columnButton13 = [(ICTableAttachmentViewController *)self columnButton];
  [columnButton13 setColumnOrRowIdentifiers:columnsCopy];

  rowButton13 = [(ICTableAttachmentViewController *)self rowButton];
  [rowButton13 setColumnOrRowIdentifiers:rowsCopy];

  [(ICTableAttachmentViewController *)self showColumnRowButtons];
  v69 = *MEMORY[0x277CBF3A0];
  v70 = *(MEMORY[0x277CBF3A0] + 8);
  v71 = *(MEMORY[0x277CBF3A0] + 16);
  v72 = *(MEMORY[0x277CBF3A0] + 24);
  columnButton14 = [(ICTableAttachmentViewController *)self columnButton];
  [columnButton14 setFrame:{v69, v70, v71, v72}];

  rowButton14 = [(ICTableAttachmentViewController *)self rowButton];
  [rowButton14 setFrame:{v69, v70, v71, v72}];

  [(ICTableAttachmentViewController *)self updateButtonFrames];
  view4 = [(ICiOSTableAttachmentViewController *)self view];
  superview3 = [view4 superview];
  view5 = [(ICiOSTableAttachmentViewController *)self view];
  [superview3 bringSubviewToFront:view5];

  [(ICiOSTableAttachmentViewController *)self updateAccessibilityValueForColumnAndRowButtons];
}

- (void)updateChrome
{
  if (![(ICTableAttachmentViewController *)self lockSelection])
  {
    tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
    moving = [tableSelection moving];

    if ((moving & 1) == 0)
    {
      v15.receiver = self;
      v15.super_class = ICiOSTableAttachmentViewController;
      [(ICTableAttachmentViewController *)&v15 updateChrome];
      columnMenu = [(ICiOSTableAttachmentViewController *)self columnMenu];
      columnButton = [(ICTableAttachmentViewController *)self columnButton];
      [columnButton setMenu:columnMenu];

      rowMenu = [(ICiOSTableAttachmentViewController *)self rowMenu];
      rowButton = [(ICTableAttachmentViewController *)self rowButton];
      [rowButton setMenu:rowMenu];

      tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
      type = [tableSelection2 type];

      selfCopy = self;
      if ((type - 1) < 4)
      {
LABEL_4:
        noteEditorViewController = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
        [noteEditorViewController setAuxiliaryStylingController:selfCopy];

        return;
      }

      if (!type)
      {
        noteEditorViewController2 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
        auxiliaryStylingController = [noteEditorViewController2 auxiliaryStylingController];

        if (auxiliaryStylingController == self)
        {
          selfCopy = 0;
          goto LABEL_4;
        }
      }
    }
  }
}

- (void)unselectColumnRow
{
  v9.receiver = self;
  v9.super_class = ICiOSTableAttachmentViewController;
  [(ICTableAttachmentViewController *)&v9 unselectColumnRow];
  columnButton = [(ICTableAttachmentViewController *)self columnButton];
  [columnButton setSelected:0];

  columnMenu = [(ICiOSTableAttachmentViewController *)self columnMenu];
  columnButton2 = [(ICTableAttachmentViewController *)self columnButton];
  [columnButton2 setMenu:columnMenu];

  rowButton = [(ICTableAttachmentViewController *)self rowButton];
  [rowButton setSelected:0];

  rowMenu = [(ICiOSTableAttachmentViewController *)self rowMenu];
  rowButton2 = [(ICTableAttachmentViewController *)self rowButton];
  [rowButton2 setMenu:rowMenu];
}

void __58__ICiOSTableAttachmentViewController_columnButtonTouched___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isTouchingColumnButton])
  {
    v2 = [*(a1 + 32) columnButton];
    [v2 setMenu:0];
  }
}

- (void)columnButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  [(ICiOSTableAttachmentViewController *)self setTouchingColumnButton:0];
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  columnOrRowIdentifiers = [pressedCopy columnOrRowIdentifiers];

  [tableSelection selectColumns:columnOrRowIdentifiers];
  selectionHighlightView = [(ICTableAttachmentViewController *)self selectionHighlightView];
  LOBYTE(tableSelection) = [selectionHighlightView ic_isFirstResponder];

  if ((tableSelection & 1) == 0)
  {
    selectionHighlightView2 = [(ICTableAttachmentViewController *)self selectionHighlightView];
    [selectionHighlightView2 removeFromSuperview];

    scrollView = [(ICTableAttachmentViewController *)self scrollView];
    selectionHighlightView3 = [(ICTableAttachmentViewController *)self selectionHighlightView];
    [scrollView addSubview:selectionHighlightView3];

    selectionHighlightView4 = [(ICTableAttachmentViewController *)self selectionHighlightView];
    [selectionHighlightView4 becomeFirstResponder];
  }

  [(ICiOSTableAttachmentViewController *)self updateChrome];
  columnButton = [(ICTableAttachmentViewController *)self columnButton];
  [columnButton setSelected:1];

  columnMenu = [(ICiOSTableAttachmentViewController *)self columnMenu];
  columnButton2 = [(ICTableAttachmentViewController *)self columnButton];
  [columnButton2 setMenu:columnMenu];

  rowButton = [(ICTableAttachmentViewController *)self rowButton];
  [rowButton setSelected:0];

  rowMenu = [(ICiOSTableAttachmentViewController *)self rowMenu];
  rowButton2 = [(ICTableAttachmentViewController *)self rowButton];
  [rowButton2 setMenu:rowMenu];

  [(ICTableAttachmentViewController *)self showColumnRowButtons];
  tableAXController = [(ICTableAttachmentViewController *)self tableAXController];
  [tableAXController tableRowOrColumnSelectionDidChange];
}

- (void)columnButtonMenuActionTriggered:(id)triggered
{
  [(ICiOSTableAttachmentViewController *)self setTouchingColumnButton:0];
  columnMenu = [(ICiOSTableAttachmentViewController *)self columnMenu];
  columnButton = [(ICTableAttachmentViewController *)self columnButton];
  [columnButton setMenu:columnMenu];
}

void __55__ICiOSTableAttachmentViewController_rowButtonTouched___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isTouchingRowButton])
  {
    v2 = [*(a1 + 32) rowButton];
    [v2 setMenu:0];
  }
}

- (void)rowButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  [(ICiOSTableAttachmentViewController *)self setTouchingRowButton:0];
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  columnOrRowIdentifiers = [pressedCopy columnOrRowIdentifiers];

  [tableSelection selectRows:columnOrRowIdentifiers];
  selectionHighlightView = [(ICTableAttachmentViewController *)self selectionHighlightView];
  LOBYTE(tableSelection) = [selectionHighlightView ic_isFirstResponder];

  if ((tableSelection & 1) == 0)
  {
    selectionHighlightView2 = [(ICTableAttachmentViewController *)self selectionHighlightView];
    [selectionHighlightView2 removeFromSuperview];

    scrollView = [(ICTableAttachmentViewController *)self scrollView];
    selectionHighlightView3 = [(ICTableAttachmentViewController *)self selectionHighlightView];
    [scrollView addSubview:selectionHighlightView3];

    selectionHighlightView4 = [(ICTableAttachmentViewController *)self selectionHighlightView];
    [selectionHighlightView4 becomeFirstResponder];
  }

  [(ICiOSTableAttachmentViewController *)self updateChrome];
  columnButton = [(ICTableAttachmentViewController *)self columnButton];
  [columnButton setSelected:0];

  columnMenu = [(ICiOSTableAttachmentViewController *)self columnMenu];
  columnButton2 = [(ICTableAttachmentViewController *)self columnButton];
  [columnButton2 setMenu:columnMenu];

  rowButton = [(ICTableAttachmentViewController *)self rowButton];
  [rowButton setSelected:1];

  rowMenu = [(ICiOSTableAttachmentViewController *)self rowMenu];
  rowButton2 = [(ICTableAttachmentViewController *)self rowButton];
  [rowButton2 setMenu:rowMenu];

  [(ICTableAttachmentViewController *)self showColumnRowButtons];
  tableAXController = [(ICTableAttachmentViewController *)self tableAXController];
  [tableAXController tableRowOrColumnSelectionDidChange];
}

- (void)rowButtonMenuActionTriggered:(id)triggered
{
  [(ICiOSTableAttachmentViewController *)self setTouchingRowButton:0];
  rowMenu = [(ICiOSTableAttachmentViewController *)self rowMenu];
  rowButton = [(ICTableAttachmentViewController *)self rowButton];
  [rowButton setMenu:rowMenu];
}

- (void)showSelectionMenuFromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  mEMORY[0x277D75718] = [MEMORY[0x277D75718] sharedMenuController];
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  MaxX = CGRectGetMaxX(v20);
  v9 = mEMORY[0x277D75718];
  if (MaxX > 0.0)
  {
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    MinX = CGRectGetMinX(v21);
    view = [(ICiOSTableAttachmentViewController *)self view];
    [view bounds];
    if (MinX < CGRectGetWidth(v22))
    {
      isMenuVisible = [mEMORY[0x277D75718] isMenuVisible];

      v9 = mEMORY[0x277D75718];
      if (isMenuVisible)
      {
        goto LABEL_6;
      }

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:self selector:sel_menuWillHide_ name:*MEMORY[0x277D76CB8] object:0];

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel_menuDidHide_ name:*MEMORY[0x277D76CA8] object:0];

      view2 = [(ICiOSTableAttachmentViewController *)self view];
      [mEMORY[0x277D75718] showMenuFromView:view2 rect:{x, y, width, height}];

      LODWORD(view2) = *MEMORY[0x277D76488];
      view = [MEMORY[0x277D75238] sharedCalloutBar];
      _accessibleSubviews = [view _accessibleSubviews];
      firstObject = [_accessibleSubviews firstObject];
      UIAccessibilityPostNotification(view2, firstObject);
    }

    v9 = mEMORY[0x277D75718];
  }

LABEL_6:
}

- (void)ensureGesturesOnSelectionGrabbers:(id)grabbers
{
  grabbersCopy = grabbers;
  gestureRecognizers = [grabbersCopy gestureRecognizers];
  v5 = [gestureRecognizers ic_containsObjectOfClass:objc_opt_class()];

  if ((v5 & 1) == 0)
  {
    v6 = [[ICTableSelectionGrabberRecognizer alloc] initWithTarget:self action:sel_dragTextRange_];
    [(ICTableSelectionGrabberRecognizer *)v6 setMinimumPressDuration:0.0];
    [(ICTableSelectionGrabberRecognizer *)v6 setCancelsTouchesInView:0];
    [(ICTableSelectionGrabberRecognizer *)v6 setDelegate:self];
    [grabbersCopy addGestureRecognizer:v6];
  }
}

- (void)dragTextRange:(id)range
{
  rangeCopy = range;
  if ([rangeCopy state] == 2)
  {
    tableContentView = [(ICTableAttachmentViewController *)self tableContentView];
    [rangeCopy locationInView:tableContentView];
    v7 = v6;
    v9 = v8;

    [(ICTableAttachmentViewController *)self textRangeDraggedAtLocation:v7, v9];
  }

  else if ([rangeCopy state] == 3 || objc_msgSend(rangeCopy, "state") == 4 || objc_msgSend(rangeCopy, "state") == 5)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__ICiOSTableAttachmentViewController_dragTextRange___block_invoke;
    block[3] = &unk_2781ABCF8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __52__ICiOSTableAttachmentViewController_dragTextRange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) textRangeDragEnded];
  v2 = *(a1 + 32);

  return [v2 showRangeSelectionMenuAfterDelay];
}

- (void)dragCellRange:(id)range
{
  rangeCopy = range;
  if ([rangeCopy state] == 1)
  {
    view = [rangeCopy view];
    [(ICTableAttachmentViewController *)self cellRangeDragBeganOnView:view];
  }

  else if ([rangeCopy state] == 2)
  {
    tableContentView = [(ICTableAttachmentViewController *)self tableContentView];
    [rangeCopy locationInView:tableContentView];
    v7 = v6;
    v9 = v8;

    [(ICTableAttachmentViewController *)self cellRangeDraggedAtLocation:v7, v9];
  }

  else if ([rangeCopy state] == 3 || objc_msgSend(rangeCopy, "state") == 4 || objc_msgSend(rangeCopy, "state") == 5)
  {
    [(ICiOSTableAttachmentViewController *)self showRangeSelectionMenu];
  }
}

- (void)selectCell
{
  selectionHighlightView = [(ICTableAttachmentViewController *)self selectionHighlightView];
  [selectionHighlightView removeFromSuperview];

  view = [(ICiOSTableAttachmentViewController *)self view];
  selectionHighlightView2 = [(ICTableAttachmentViewController *)self selectionHighlightView];
  [view addSubview:selectionHighlightView2];

  selectionHighlightView3 = [(ICTableAttachmentViewController *)self selectionHighlightView];
  [selectionHighlightView3 becomeFirstResponder];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__ICiOSTableAttachmentViewController_selectCell__block_invoke;
  v7[3] = &unk_2781ABCF8;
  v7[4] = self;
  [MEMORY[0x277CD9FF0] setCompletionBlock:v7];
}

uint64_t __48__ICiOSTableAttachmentViewController_selectCell__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableSelection];
  v3 = [*(a1 + 32) columnButton];
  v4 = [v3 columnOrRowIdentifiers];
  v5 = [*(a1 + 32) rowButton];
  v6 = [v5 columnOrRowIdentifiers];
  [v2 selectCellRangeAtColumns:v4 rows:v6];

  [*(a1 + 32) updateChrome];
  v7 = *(a1 + 32);

  return [v7 showRangeSelectionMenu];
}

- (void)showRangeSelectionMenu
{
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_showRangeSelectionMenu object:0];
    tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
    type = [tableSelection type];

    if (type == 4)
    {
      startKnob = [(ICTableAttachmentViewController *)self startKnob];
      [startKnob center];
      v7 = v6;
      v9 = v8;

      endKnob = [(ICTableAttachmentViewController *)self endKnob];
      [endKnob center];
      v12 = v11;
      v14 = v13;

      if (v7 >= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v7;
      }

      if (v9 >= v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = v9;
      }

      v17 = vabdd_f64(v7, v12);
      v18 = vabdd_f64(v9, v14);

      [(ICiOSTableAttachmentViewController *)self showSelectionMenuFromRect:v15, v16, v17, v18];
    }
  }
}

- (void)dragColumn:(id)column
{
  columnCopy = column;
  view = [(ICiOSTableAttachmentViewController *)self view];
  [columnCopy locationInView:view];
  v6 = v5;
  v8 = v7;

  if ([columnCopy state] == 1)
  {
    mEMORY[0x277D75718] = [MEMORY[0x277D75718] sharedMenuController];
    [mEMORY[0x277D75718] setMenuVisible:0 animated:1];

    activeInstance = [MEMORY[0x277D75678] activeInstance];
    [activeInstance removeAutocorrection];

    [(ICTableAttachmentViewController *)self dragBeganOnColumnOrRow:1 atLocation:v6, v8];
  }

  else if ([columnCopy state] == 2)
  {
    [(ICTableAttachmentViewController *)self dragMovedOnColumnOrRow:1 atLocation:v6, v8];
  }

  else if ([columnCopy state] == 3 || objc_msgSend(columnCopy, "state") == 5 || objc_msgSend(columnCopy, "state") == 4)
  {
    [(ICTableAttachmentViewController *)self dragEndedOnColumnOrRow:1 atLocation:v6, v8];
  }
}

- (void)dragRow:(id)row
{
  rowCopy = row;
  view = [(ICiOSTableAttachmentViewController *)self view];
  [rowCopy locationInView:view];
  v6 = v5;
  v8 = v7;

  if ([rowCopy state] == 1)
  {
    mEMORY[0x277D75718] = [MEMORY[0x277D75718] sharedMenuController];
    [mEMORY[0x277D75718] setMenuVisible:0 animated:1];

    activeInstance = [MEMORY[0x277D75678] activeInstance];
    [activeInstance removeAutocorrection];

    [(ICTableAttachmentViewController *)self dragBeganOnColumnOrRow:0 atLocation:v6, v8];
    noteTextView = [(ICTableAttachmentViewController *)self noteTextView];
    [noteTextView contentInset];
    v13 = v12;
    tableAutoScroller = [(ICTableAttachmentViewController *)self tableAutoScroller];
    [tableAutoScroller setTopThresholdDistance:v13];

    noteTextView2 = [(ICTableAttachmentViewController *)self noteTextView];
    [noteTextView2 contentInset];
    v17 = v16;
    tableAutoScroller2 = [(ICTableAttachmentViewController *)self tableAutoScroller];
    [tableAutoScroller2 setBottomThresholdDistance:v17];
  }

  else if ([rowCopy state] == 2)
  {
    [(ICTableAttachmentViewController *)self dragMovedOnColumnOrRow:0 atLocation:v6, v8];
  }

  else if ([rowCopy state] == 3 || objc_msgSend(rowCopy, "state") == 5 || objc_msgSend(rowCopy, "state") == 4)
  {
    [(ICTableAttachmentViewController *)self dragEndedOnColumnOrRow:0 atLocation:v6, v8];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  type = [tableSelection type];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([recognizerCopy view], v8 = objc_claimAutoreleasedReturnValue(), -[ICTableAttachmentViewController tableContentView](self, "tableContentView"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v8 == v9))
  {
    table = [(ICTableAttachmentViewController *)self table];
    if ([table columnCount])
    {
      table2 = [(ICTableAttachmentViewController *)self table];
      isKindOfClass = [table2 rowCount] == 0;
    }

    else
    {
      isKindOfClass = 1;
    }
  }

  else
  {
    view = [recognizerCopy view];
    columnButton = [(ICTableAttachmentViewController *)self columnButton];

    if (view == columnButton)
    {
      isKindOfClass = (type - 1) < 2;
    }

    else
    {
      view2 = [recognizerCopy view];
      rowButton = [(ICTableAttachmentViewController *)self rowButton];

      if (view2 == rowButton)
      {
        isKindOfClass = (type & 0xFFFFFFFFFFFFFFFDLL) == 1;
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
      }
    }
  }

  return isKindOfClass & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)toggleBoldAction
{
  v3 = MEMORY[0x277D750C8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [mainBundle localizedStringForKey:@"Bold" value:&stru_282757698 table:0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__ICiOSTableAttachmentViewController_toggleBoldAction__block_invoke;
  v8[3] = &unk_2781AC800;
  v8[4] = self;
  v6 = [v3 ic_actionWithTitle:v5 imageName:@"bold" handler:v8];

  return v6;
}

- (id)toggleItalicAction
{
  v3 = MEMORY[0x277D750C8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [mainBundle localizedStringForKey:@"Italic" value:&stru_282757698 table:0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__ICiOSTableAttachmentViewController_toggleItalicAction__block_invoke;
  v8[3] = &unk_2781AC800;
  v8[4] = self;
  v6 = [v3 ic_actionWithTitle:v5 imageName:@"italic" handler:v8];

  return v6;
}

- (id)toggleUnderlineAction
{
  v3 = MEMORY[0x277D750C8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [mainBundle localizedStringForKey:@"Underline" value:&stru_282757698 table:0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__ICiOSTableAttachmentViewController_toggleUnderlineAction__block_invoke;
  v8[3] = &unk_2781AC800;
  v8[4] = self;
  v6 = [v3 ic_actionWithTitle:v5 imageName:@"underline" handler:v8];

  return v6;
}

- (id)toggleStrikethroughAction
{
  v3 = MEMORY[0x277D750C8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [mainBundle localizedStringForKey:@"Strikethrough" value:&stru_282757698 table:0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__ICiOSTableAttachmentViewController_toggleStrikethroughAction__block_invoke;
  v8[3] = &unk_2781AC800;
  v8[4] = self;
  v6 = [v3 ic_actionWithTitle:v5 imageName:@"strikethrough" handler:v8];

  return v6;
}

- (id)toggleTableDirectionAction
{
  if ([MEMORY[0x277D36828] supportsRTL] && (-[ICTableAttachmentViewController tableSelection](self, "tableSelection"), v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = MEMORY[0x277D750C8];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [mainBundle localizedStringForKey:@"Table Direction" value:&stru_282757698 table:0];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__ICiOSTableAttachmentViewController_toggleTableDirectionAction__block_invoke;
    v9[3] = &unk_2781AC800;
    v9[4] = self;
    v7 = [v4 ic_actionWithTitle:v6 imageName:@"arrow.left.arrow.right.square.fill" handler:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)formatMenu
{
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  if ([tableSelection isRangeOrSpanningSelection])
  {
    table = [(ICTableAttachmentViewController *)self table];
    tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
    columns = [tableSelection2 columns];
    tableSelection3 = [(ICTableAttachmentViewController *)self tableSelection];
    rows = [tableSelection3 rows];
    v9 = [table isEmptyAtColumnIdentifiers:columns rowIdentifiers:rows];

    if (v9)
    {
      v10 = 0;
      goto LABEL_7;
    }

    tableSelection = [MEMORY[0x277CBEB18] array];
    toggleBoldAction = [(ICiOSTableAttachmentViewController *)self toggleBoldAction];
    [tableSelection ic_addNonNilObject:toggleBoldAction];

    toggleItalicAction = [(ICiOSTableAttachmentViewController *)self toggleItalicAction];
    [tableSelection ic_addNonNilObject:toggleItalicAction];

    toggleUnderlineAction = [(ICiOSTableAttachmentViewController *)self toggleUnderlineAction];
    [tableSelection ic_addNonNilObject:toggleUnderlineAction];

    toggleStrikethroughAction = [(ICiOSTableAttachmentViewController *)self toggleStrikethroughAction];
    [tableSelection ic_addNonNilObject:toggleStrikethroughAction];

    toggleTableDirectionAction = [(ICiOSTableAttachmentViewController *)self toggleTableDirectionAction];
    [tableSelection ic_addNonNilObject:toggleTableDirectionAction];

    v16 = MEMORY[0x277D75710];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v18 = [mainBundle localizedStringForKey:@"Format" value:&stru_282757698 table:0];
    v19 = [MEMORY[0x277D755B8] systemImageNamed:@"character"];
    v20 = [tableSelection copy];
    v10 = [v16 menuWithTitle:v18 image:v19 identifier:0 options:0 children:v20];
  }

  else
  {
    v10 = 0;
  }

LABEL_7:

  return v10;
}

- (void)buildMenuWithBuilder:(id)builder
{
  v7.receiver = self;
  v7.super_class = ICiOSTableAttachmentViewController;
  builderCopy = builder;
  [(ICiOSTableAttachmentViewController *)&v7 buildMenuWithBuilder:builderCopy];
  v5 = *MEMORY[0x277D76D70];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__ICiOSTableAttachmentViewController_buildMenuWithBuilder___block_invoke;
  v6[3] = &unk_2781AC828;
  v6[4] = self;
  [builderCopy replaceChildrenOfMenuForIdentifier:v5 fromChildrenBlock:v6];
}

id __59__ICiOSTableAttachmentViewController_buildMenuWithBuilder___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v6)
  {

    v14 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_20;
  }

  v7 = v6;
  v23 = a1;
  v24 = v4;
  v25 = 0;
  v26 = 0;
  v8 = 0;
  v9 = *v28;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v28 != v9)
      {
        objc_enumerationMutation(v5);
      }

      objc_opt_class();
      v11 = ICDynamicCast();
      if (sel_isEqual([v11 action], sel_toggleBoldface_))
      {
        v8 = 1;
      }

      else if (sel_isEqual([v11 action], sel_toggleItalics_))
      {
        LOBYTE(v26) = 1;
      }

      else if (sel_isEqual([v11 action], sel_toggleUnderline_))
      {
        v25 = 1;
      }

      else
      {
        HIDWORD(v26) |= sel_isEqual([v11 action], sel_strikethrough_);
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v7);

  if ((v8 & 1) == 0)
  {
    a1 = v23;
    v4 = v24;
    v14 = v26;
    v12 = BYTE4(v26);
    v13 = v25;
LABEL_20:
    v15 = [*(a1 + 32) toggleBoldAction];
    [v4 ic_addNonNilObject:v15];

    if (v14)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  a1 = v23;
  v4 = v24;
  v12 = BYTE4(v26);
  v13 = v25;
  if ((v26 & 1) == 0)
  {
LABEL_21:
    v16 = [*(a1 + 32) toggleItalicAction];
    [v4 ic_addNonNilObject:v16];
  }

LABEL_22:
  if ((v13 & 1) == 0)
  {
    v17 = [*(a1 + 32) toggleUnderlineAction];
    [v4 ic_addNonNilObject:v17];
  }

  if ((v12 & 1) == 0)
  {
    v18 = [*(a1 + 32) toggleStrikethroughAction];
    [v4 ic_addNonNilObject:v18];
  }

  v19 = [*(a1 + 32) toggleTableDirectionAction];
  [v4 ic_addNonNilObject:v19];

  v20 = [v4 copy];
  v21 = [v5 arrayByAddingObjectsFromArray:v20];

  return v21;
}

- (id)removeColumnAction
{
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  if ([tableSelection type] == 2)
  {
    table = [(ICTableAttachmentViewController *)self table];
    columnCount = [table columnCount];

    if (columnCount != 1)
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v7 = [mainBundle localizedStringForKey:@"Delete %lu Column" value:&stru_282757698 table:0];

      v8 = MEMORY[0x277D750C8];
      v9 = MEMORY[0x277CCACA8];
      tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
      columns = [tableSelection2 columns];
      v12 = [v9 localizedStringWithFormat:v7, objc_msgSend(columns, "count")];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __56__ICiOSTableAttachmentViewController_removeColumnAction__block_invoke;
      v15[3] = &unk_2781AC800;
      v15[4] = self;
      v13 = [v8 ic_actionWithTitle:v12 imageName:@"rectangle.badge.minus" handler:v15];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v13 = 0;
LABEL_6:

  return v13;
}

- (id)addColumnAction
{
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  type = [tableSelection type];

  if (type == 2)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [mainBundle localizedStringForKey:@"ADD_COLUMN_MENU_ACTION" value:@"Add Column" table:@"Localizable"];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__ICiOSTableAttachmentViewController_addColumnAction__block_invoke;
    v9[3] = &unk_2781AC800;
    v9[4] = self;
    v7 = [MEMORY[0x277D750C8] ic_actionWithTitle:v6 imageName:@"rectangle.badge.plus" handler:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)removeRowAction
{
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  if ([tableSelection type] == 3)
  {
    table = [(ICTableAttachmentViewController *)self table];
    rowCount = [table rowCount];

    if (rowCount != 1)
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v7 = [mainBundle localizedStringForKey:@"Delete %lu Row" value:&stru_282757698 table:0];

      v8 = MEMORY[0x277D750C8];
      v9 = MEMORY[0x277CCACA8];
      tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
      rows = [tableSelection2 rows];
      v12 = [v9 localizedStringWithFormat:v7, objc_msgSend(rows, "count")];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __53__ICiOSTableAttachmentViewController_removeRowAction__block_invoke;
      v15[3] = &unk_2781AC800;
      v15[4] = self;
      v13 = [v8 ic_actionWithTitle:v12 imageName:@"rectangle.badge.minus" handler:v15];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v13 = 0;
LABEL_6:

  return v13;
}

- (id)addRowAction
{
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  type = [tableSelection type];

  if (type == 3)
  {
    v5 = MEMORY[0x277D750C8];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [mainBundle localizedStringForKey:@"Add Row" value:&stru_282757698 table:0];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __50__ICiOSTableAttachmentViewController_addRowAction__block_invoke;
    v10[3] = &unk_2781AC800;
    v10[4] = self;
    v8 = [v5 ic_actionWithTitle:v7 imageName:@"rectangle.badge.plus" handler:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copySelectionAction
{
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  if (([tableSelection isRangeOrSpanningSelection] & 1) == 0)
  {

    return 0;
  }

  table = [(ICTableAttachmentViewController *)self table];
  tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
  columns = [tableSelection2 columns];
  tableSelection3 = [(ICTableAttachmentViewController *)self tableSelection];
  rows = [tableSelection3 rows];
  v9 = [table isEmptyAtColumnIdentifiers:columns rowIdentifiers:rows];

  if (v9)
  {
    return 0;
  }

  v10 = MEMORY[0x277D750C8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [mainBundle localizedStringForKey:@"Copy" value:&stru_282757698 table:0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__ICiOSTableAttachmentViewController_copySelectionAction__block_invoke;
  v15[3] = &unk_2781AC800;
  v15[4] = self;
  v13 = [v10 ic_actionWithTitle:v12 imageName:@"doc.on.doc" handler:v15];

  return v13;
}

- (id)cutSelectionAction
{
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  if ([tableSelection isRangeOrSpanningSelection])
  {
    table = [(ICTableAttachmentViewController *)self table];
    tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
    columns = [tableSelection2 columns];
    tableSelection3 = [(ICTableAttachmentViewController *)self tableSelection];
    rows = [tableSelection3 rows];
    v9 = [table isEmptyAtColumnIdentifiers:columns rowIdentifiers:rows];

    if ((v9 & 1) == 0)
    {
      v10 = MEMORY[0x277D750C8];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v12 = [mainBundle localizedStringForKey:@"Cut" value:&stru_282757698 table:0];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __56__ICiOSTableAttachmentViewController_cutSelectionAction__block_invoke;
      v15[3] = &unk_2781AC800;
      v15[4] = self;
      v13 = [v10 ic_actionWithTitle:v12 imageName:@"scissors" handler:v15];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v13 = 0;
LABEL_6:

  return v13;
}

- (id)pasteSelectionAction
{
  generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
  if ([generalPasteboard hasStrings])
  {
    tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
    isRangeOrSpanningSelection = [tableSelection isRangeOrSpanningSelection];

    if (isRangeOrSpanningSelection)
    {
      v6 = MEMORY[0x277D750C8];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v8 = [mainBundle localizedStringForKey:@"Paste" value:&stru_282757698 table:0];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __58__ICiOSTableAttachmentViewController_pasteSelectionAction__block_invoke;
      v11[3] = &unk_2781AC800;
      v11[4] = self;
      v9 = [v6 ic_actionWithTitle:v8 imageName:@"doc.on.clipboard" handler:v11];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (id)columnMenu
{
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  type = [tableSelection type];

  if (type == 2)
  {
    array = [MEMORY[0x277CBEB18] array];
    removeColumnAction = [(ICiOSTableAttachmentViewController *)self removeColumnAction];
    [array ic_addNonNilObject:removeColumnAction];

    addColumnAction = [(ICiOSTableAttachmentViewController *)self addColumnAction];
    [array ic_addNonNilObject:addColumnAction];

    formatMenu = [(ICiOSTableAttachmentViewController *)self formatMenu];
    [array ic_addNonNilObject:formatMenu];

    copySelectionAction = [(ICiOSTableAttachmentViewController *)self copySelectionAction];
    [array ic_addNonNilObject:copySelectionAction];

    cutSelectionAction = [(ICiOSTableAttachmentViewController *)self cutSelectionAction];
    [array ic_addNonNilObject:cutSelectionAction];

    pasteSelectionAction = [(ICiOSTableAttachmentViewController *)self pasteSelectionAction];
    [array ic_addNonNilObject:pasteSelectionAction];

    v12 = [MEMORY[0x277D75710] menuWithChildren:array];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)rowMenu
{
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  type = [tableSelection type];

  if (type == 3)
  {
    array = [MEMORY[0x277CBEB18] array];
    removeRowAction = [(ICiOSTableAttachmentViewController *)self removeRowAction];
    [array ic_addNonNilObject:removeRowAction];

    addRowAction = [(ICiOSTableAttachmentViewController *)self addRowAction];
    [array ic_addNonNilObject:addRowAction];

    formatMenu = [(ICiOSTableAttachmentViewController *)self formatMenu];
    [array ic_addNonNilObject:formatMenu];

    copySelectionAction = [(ICiOSTableAttachmentViewController *)self copySelectionAction];
    [array ic_addNonNilObject:copySelectionAction];

    cutSelectionAction = [(ICiOSTableAttachmentViewController *)self cutSelectionAction];
    [array ic_addNonNilObject:cutSelectionAction];

    pasteSelectionAction = [(ICiOSTableAttachmentViewController *)self pasteSelectionAction];
    [array ic_addNonNilObject:pasteSelectionAction];

    v12 = [MEMORY[0x277D75710] menuWithChildren:array];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  selfCopy = self;
  v6 = [(ICiOSTableAttachmentViewController *)self biuTextView:action];

  if (v6)
  {
    if (sel_isEqual(action, sel_toggleBoldface_) || sel_isEqual(action, sel_toggleItalics_) || sel_isEqual(action, sel_toggleUnderline_))
    {
      goto LABEL_9;
    }

    v7 = sel_strikethrough_;
    goto LABEL_6;
  }

  if (sel_isEqual(action, sel_strikethrough_))
  {
    goto LABEL_9;
  }

  if (sel_isEqual(action, sel_cut_) || sel_isEqual(action, sel_copy_))
  {
    tableSelection = [(ICTableAttachmentViewController *)selfCopy tableSelection];
    if ([tableSelection isRangeOrSpanningSelection])
    {
      table = [(ICTableAttachmentViewController *)selfCopy table];
      tableSelection2 = [(ICTableAttachmentViewController *)selfCopy tableSelection];
      columns = [tableSelection2 columns];
      tableSelection3 = [(ICTableAttachmentViewController *)selfCopy tableSelection];
      rows = [tableSelection3 rows];
      LODWORD(selfCopy) = [table isEmptyAtColumnIdentifiers:columns rowIdentifiers:rows] ^ 1;

LABEL_15:
LABEL_20:

      return selfCopy;
    }

    goto LABEL_19;
  }

  if (sel_isEqual(action, sel_paste_))
  {
    tableSelection = [MEMORY[0x277D75810] generalPasteboard];
    if ([tableSelection hasStrings])
    {
      table = [(ICTableAttachmentViewController *)selfCopy tableSelection];
      LOBYTE(selfCopy) = [table isRangeOrSpanningSelection];
      goto LABEL_15;
    }

LABEL_19:
    LOBYTE(selfCopy) = 0;
    goto LABEL_20;
  }

  if (sel_isEqual(action, sel_convertToTag_))
  {

    return [(ICiOSTableAttachmentViewController *)selfCopy canConvertToTag];
  }

  else
  {
    if (!sel_isEqual(action, sel_convertToText_))
    {
      if (sel_isEqual(action, sel_makeTextWritingDirectionLeftToRight_))
      {
        if ([MEMORY[0x277D36828] supportsRTL])
        {
          tableSelection4 = [(ICTableAttachmentViewController *)selfCopy tableSelection];
          type = [tableSelection4 type];

          if (type == 2)
          {
            table2 = [(ICTableAttachmentViewController *)selfCopy table];
            isRightToLeft = [table2 isRightToLeft];

            return isRightToLeft;
          }
        }

        if (![MEMORY[0x277D36828] supportsRTL])
        {
          goto LABEL_7;
        }

        tableSelection5 = [(ICTableAttachmentViewController *)selfCopy tableSelection];
        type2 = [tableSelection5 type];

        if (type2 != 4)
        {
          goto LABEL_7;
        }

        v23 = [(ICTableAttachmentViewController *)selfCopy textDirectionForCurrentSelection]== 1;
      }

      else
      {
        if (!sel_isEqual(action, sel_makeTextWritingDirectionRightToLeft_))
        {
          if (sel_isEqual(action, sel_copyTable_) || sel_isEqual(action, sel_shareTable_) || sel_isEqual(action, sel_convertTableToText_))
          {
            goto LABEL_9;
          }

          v7 = sel_deleteTable_;
LABEL_6:
          if (!sel_isEqual(action, v7))
          {
LABEL_7:
            LOBYTE(selfCopy) = 0;
            return selfCopy;
          }

LABEL_9:
          LOBYTE(selfCopy) = 1;
          return selfCopy;
        }

        if ([MEMORY[0x277D36828] supportsRTL])
        {
          tableSelection6 = [(ICTableAttachmentViewController *)selfCopy tableSelection];
          type3 = [tableSelection6 type];

          if (type3 == 2)
          {
            tableSelection = [(ICTableAttachmentViewController *)selfCopy table];
            LODWORD(selfCopy) = [tableSelection isRightToLeft] ^ 1;
            goto LABEL_20;
          }
        }

        if (![MEMORY[0x277D36828] supportsRTL])
        {
          goto LABEL_7;
        }

        tableSelection7 = [(ICTableAttachmentViewController *)selfCopy tableSelection];
        type4 = [tableSelection7 type];

        if (type4 != 4)
        {
          goto LABEL_7;
        }

        v23 = [(ICTableAttachmentViewController *)selfCopy textDirectionForCurrentSelection]== 0;
      }

      LOBYTE(selfCopy) = v23;
      return selfCopy;
    }

    return [(ICiOSTableAttachmentViewController *)selfCopy canConvertToText];
  }
}

- (BOOL)canConvertToTag
{
  currentlyEditingTextView = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
  selectedText = [currentlyEditingTextView selectedText];
  if ([selectedText ic_canConvertToTag])
  {
    v5 = ![(ICiOSTableAttachmentViewController *)self canConvertToText];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)convertToTag:(id)tag
{
  v4 = MEMORY[0x277D35EF8];
  currentlyEditingTextView = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
  selectedText = [currentlyEditingTextView selectedText];
  note = [(ICTableAttachmentViewController *)self note];
  v19 = [v4 createHashtagAttachmentIfApplicableWithHashtagText:selectedText creatingHashtagIfNecessary:1 note:note parentAttachment:0];

  if (v19)
  {
    v8 = objc_alloc(MEMORY[0x277D366A8]);
    note2 = [(ICTableAttachmentViewController *)self note];
    v10 = [v8 initWithNote:note2];

    currentlyEditingTextView2 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
    selectedRange = [currentlyEditingTextView2 selectedRange];
    v14 = v13;
    currentlyEditingTextView3 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
    v16 = [v10 addInlineAttachment:v19 atTextRange:selectedRange textView:{v14, currentlyEditingTextView3}];

    [v19 updateChangeCountWithReason:@"Converted text to tag"];
    note3 = [(ICTableAttachmentViewController *)self note];
    [note3 updateChangeCountWithReason:@"Converted text to tag"];

    note4 = [(ICTableAttachmentViewController *)self note];
    [note4 save];
  }

  [(ICiOSTableAttachmentViewController *)self setEditing:1 animated:1];
}

- (BOOL)canConvertToText
{
  noteEditorViewController = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
  textController = [noteEditorViewController textController];
  currentlyEditingTextView = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
  currentlyEditingTextView2 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
  selectedRange = [currentlyEditingTextView2 selectedRange];
  v9 = [textController canConvertInlineAttachmentToTextInTextView:currentlyEditingTextView forRange:{selectedRange, v8}];

  return v9;
}

- (void)convertToText:(id)text
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    currentlyEditingTextView = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
    v19.location = [currentlyEditingTextView selectedRange];
    v6 = NSStringFromRange(v19);
    v16 = 138412290;
    v17 = v6;
    _os_log_impl(&dword_2151A1000, v4, OS_LOG_TYPE_INFO, "Converting inline attachment at %@ to text", &v16, 0xCu);
  }

  noteEditorViewController = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
  textController = [noteEditorViewController textController];
  currentlyEditingTextView2 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
  currentlyEditingTextView3 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
  selectedRange = [currentlyEditingTextView3 selectedRange];
  [textController convertInlineAttachmentToTextInTextView:currentlyEditingTextView2 forRange:{selectedRange, v12}];

  currentlyEditingTextView4 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
  [(ICiOSTableAttachmentViewController *)self textViewDidChange:currentlyEditingTextView4];

  note = [(ICTableAttachmentViewController *)self note];
  [note updateChangeCountWithReason:@"Converted tag to text"];

  note2 = [(ICTableAttachmentViewController *)self note];
  [note2 save];
}

- (void)menuWillHide:(id)hide
{
  [(ICiOSTableAttachmentViewController *)self setMenuHiding:1];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76CB8] object:0];
}

- (void)menuDidHide:(id)hide
{
  [(ICiOSTableAttachmentViewController *)self setMenuHiding:0];
  [(ICiOSTableAttachmentViewController *)self setShowingTextStyleOptions:0];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76CA8] object:0];

  biuTextView = [(ICiOSTableAttachmentViewController *)self biuTextView];
  [biuTextView removeFromSuperview];

  [(ICiOSTableAttachmentViewController *)self setBiuTextView:0];

  [(ICiOSTableAttachmentViewController *)self moveAccessibilityFocusToSelectedColumnOrRowButton];
}

- (void)paste:(id)paste
{
  pasteCopy = paste;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__ICiOSTableAttachmentViewController_paste___block_invoke;
  v6[3] = &unk_2781ABEB8;
  v6[4] = self;
  v7 = pasteCopy;
  v5 = pasteCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)strikethrough:(id)strikethrough
{
  strikethroughCopy = strikethrough;
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  type = [tableSelection type];

  if (type == 1)
  {
    currentlyEditingTextView = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
    [currentlyEditingTextView ic_toggleStrikethrough];
  }

  else
  {
    [(ICTableAttachmentViewController *)self toggleStrikethrough:strikethroughCopy];
  }
}

- (void)setTextViewWritingDirection:(int64_t)direction sender:(id)sender
{
  senderCopy = sender;
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  type = [tableSelection type];

  if (type == 2)
  {
    [(ICTableAttachmentViewController *)self reverseTableColumnDirection:senderCopy];
  }

  else
  {
    tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
    type2 = [tableSelection2 type];

    if (type2 == 4)
    {
      [(ICTableAttachmentViewController *)self setSelectionDirection:direction];
    }

    else if ([(ICTableAttachmentViewController *)self containedInNoteSelection])
    {
      [(ICTableAttachmentViewController *)self updateTableColumnDirectionForWritingDirection:direction];
    }
  }
}

- (void)shareTable:(id)table
{
  v27[3] = *MEMORY[0x277D85DE8];
  attachment = [(ICAttachmentViewController *)self attachment];
  v5 = objc_alloc(MEMORY[0x277D546D8]);
  activityItems = [attachment activityItems];
  v7 = [v5 initWithActivityItems:activityItems applicationActivities:0];

  attachment2 = [(ICAttachmentViewController *)self attachment];
  note = [attachment2 note];
  account = [note account];
  [v7 setIsContentManaged:{objc_msgSend(account, "isManaged")}];

  v11 = *MEMORY[0x277D360F8];
  v27[0] = *MEMORY[0x277D54740];
  v27[1] = v11;
  v27[2] = *MEMORY[0x277D54790];
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
  [v7 setExcludedActivityTypes:v12];

  if ([MEMORY[0x277D75418] ic_isVision])
  {
    v13 = -2;
  }

  else
  {
    v13 = 7;
  }

  [v7 setModalPresentationStyle:v13];
  [(ICiOSTableAttachmentViewController *)self presentViewController:v7 animated:1 completion:0];
  view = [(ICiOSTableAttachmentViewController *)self view];
  [view frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  popoverPresentationController = [v7 popoverPresentationController];
  [popoverPresentationController setSourceRect:{v16, v18, v20, v22}];

  view2 = [(ICiOSTableAttachmentViewController *)self view];
  superview = [view2 superview];
  popoverPresentationController2 = [v7 popoverPresentationController];
  [popoverPresentationController2 setSourceView:superview];
}

- (id)icTableDataFromPasteboard
{
  generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
  v3 = [generalPasteboard dataForPasteboardType:@"com.apple.notes.table"];

  return v3;
}

- (id)soloPlainTextStringFromPasteboard
{
  generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
  items = [generalPasteboard items];
  v4 = [items count];

  if (v4 == 1 && ([generalPasteboard dataForPasteboardType:*MEMORY[0x277D35D08]], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    string = [generalPasteboard string];
  }

  else
  {
    string = 0;
  }

  return string;
}

- (id)notesDataFromPasteboard
{
  generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
  v3 = [generalPasteboard dataForPasteboardType:*MEMORY[0x277D35D08]];

  return v3;
}

- (void)copySelection:(id)selection
{
  v7[1] = *MEMORY[0x277D85DE8];
  generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
  pasteboardItemsForSelection = [(ICTableAttachmentViewController *)self pasteboardItemsForSelection];
  v7[0] = pasteboardItemsForSelection;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [generalPasteboard setItems:v6];

  [(ICiOSTableAttachmentViewController *)self _accessibilityPostPasteboardTextForOperation:*MEMORY[0x277CE6E18]];
}

- (void)selectionDidResignFirstResponder:(id)responder
{
  v12.receiver = self;
  v12.super_class = ICiOSTableAttachmentViewController;
  [(ICTableAttachmentViewController *)&v12 selectionDidResignFirstResponder:responder];
  if (![(ICTableAttachmentViewController *)self lockSelection])
  {
    [(ICiOSTableAttachmentViewController *)self sendAnalyticsForEndEditIfNeeded];
    noteEditorViewController = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
    [noteEditorViewController updateTextInputAccessoryViewForDidEndEditing:0];

    noteEditorViewController2 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
    auxiliaryResponder = [noteEditorViewController2 auxiliaryResponder];
    if (auxiliaryResponder)
    {
    }

    else
    {
      noteEditorViewController3 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
      textView = [noteEditorViewController3 textView];
      isBecomingFirstResponder = [textView isBecomingFirstResponder];

      if (isBecomingFirstResponder)
      {
        return;
      }

      noteEditorViewController4 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
      textView2 = [noteEditorViewController4 textView];
      [textView2 setEditable:0];

      noteEditorViewController2 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
      [noteEditorViewController2 setEditing:0];
    }
  }
}

- (void)tableAttachmentDidChange
{
  v2.receiver = self;
  v2.super_class = ICiOSTableAttachmentViewController;
  [(ICTableAttachmentViewController *)&v2 tableAttachmentDidChange];
}

- (void)performInitialLayoutIfNeeded
{
  v2.receiver = self;
  v2.super_class = ICiOSTableAttachmentViewController;
  [(ICTableAttachmentViewController *)&v2 performInitialLayoutIfNeeded];
}

- (void)tableAttachmentSelectionDidChange:(id)change
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  noteEditorViewController = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
  [defaultCenter postNotificationName:@"ICNoteEditorViewControllerSelectionDidChangeNotification" object:noteEditorViewController];
}

- (BOOL)textViewShouldBeginEditing:(id)editing
{
  editingCopy = editing;
  noteEditorViewController = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
  v6 = [noteEditorViewController textViewShouldBeginEditing:editingCopy];

  if (v6)
  {
    auxiliaryTextViewHost = [(ICiOSTableAttachmentViewController *)self auxiliaryTextViewHost];
    [auxiliaryTextViewHost setAuxiliaryResponder:editingCopy];

    noteEditorViewController2 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
    textViewInputAccessoryView = [noteEditorViewController2 textViewInputAccessoryView];
    [editingCopy setInputAccessoryView:textViewInputAccessoryView];
  }

  return v6;
}

- (void)textViewDidBeginEditing:(id)editing
{
  editingCopy = editing;
  noteEditorViewController = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
  if ([noteEditorViewController isStyleSelectorInputViewPresenting])
  {
  }

  else
  {
    isFirstResponder = [editingCopy isFirstResponder];

    if (isFirstResponder)
    {
      [(ICiOSTableAttachmentViewController *)self sendAnalyticsForStartEditIfNeeded];
      noteEditorViewController2 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
      [noteEditorViewController2 setEditing:1];

      noteEditorViewController3 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
      textView = [noteEditorViewController3 textView];
      v10 = [textView ink];
      _isHandwritingInk = [v10 _isHandwritingInk];

      if ((_isHandwritingInk & 1) == 0)
      {
        noteEditorViewController4 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
        [noteEditorViewController4 showInkPicker:0 animated:1];
      }

      noteEditorViewController5 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
      [noteEditorViewController5 updateTextInputAccessoryViewForDidBeginEditing:editingCopy];

      if (![(ICTableAttachmentViewController *)self preventScrolling]&& ![(ICTableAttachmentViewController *)self makingCellFirstResponder])
      {
        objc_initWeak(&location, self);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __62__ICiOSTableAttachmentViewController_textViewDidBeginEditing___block_invoke;
        block[3] = &unk_2781AC760;
        objc_copyWeak(&v16, &location);
        v15 = editingCopy;
        dispatch_async(MEMORY[0x277D85CD0], block);

        objc_destroyWeak(&v16);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __62__ICiOSTableAttachmentViewController_textViewDidBeginEditing___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_opt_class();
  v3 = [*(a1 + 32) textStorage];
  v4 = ICDynamicCast();

  v5 = [*(a1 + 32) selectedRange];
  v6 = [v4 columnID];
  v7 = [v4 rowAtIndex:v5 rowRange:0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__ICiOSTableAttachmentViewController_textViewDidBeginEditing___block_invoke_2;
  v8[3] = &unk_2781AC850;
  v9 = *(a1 + 32);
  [WeakRetained beginEditingCellWithColumnID:v6 andRowID:v7 textRange:v8];
}

- (void)textViewDidEndEditing:(id)editing
{
  editingCopy = editing;
  noteEditorViewController = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
  isStyleSelectorInputViewPresenting = [noteEditorViewController isStyleSelectorInputViewPresenting];

  if (isStyleSelectorInputViewPresenting)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  v7 = ICDynamicCast();
  if (v7)
  {
    noteEditorViewController2 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
    auxiliaryResponder = [noteEditorViewController2 auxiliaryResponder];
    v10 = auxiliaryResponder;
    if (v7 == auxiliaryResponder)
    {
      noteEditorViewController3 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
      textView = [noteEditorViewController3 textView];
      isBecomingFirstResponder = [textView isBecomingFirstResponder];

      if (isBecomingFirstResponder)
      {
LABEL_8:
        [(ICTableAttachmentViewController *)self endCellEditingSessionWithTextView:v7];
        attachment = [(ICAttachmentViewController *)self attachment];
        [attachment setIsBeingEditedLocallyOnDevice:0];

        goto LABEL_9;
      }

      noteEditorViewController4 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
      textView2 = [noteEditorViewController4 textView];
      [textView2 setEditable:0];

      noteEditorViewController2 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
      [noteEditorViewController2 setEditing:0];
    }

    else
    {
    }

    goto LABEL_8;
  }

LABEL_9:
  [(ICiOSTableAttachmentViewController *)self sendAnalyticsForEndEditIfNeeded];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __60__ICiOSTableAttachmentViewController_textViewDidEndEditing___block_invoke;
  v24 = &unk_2781ABEB8;
  selfCopy = self;
  v17 = editingCopy;
  v26 = v17;
  dispatch_async(MEMORY[0x277D85CD0], &v21);
  [v17 setInputAccessoryView:{0, v21, v22, v23, v24, selfCopy}];
  keyboardWillShowScrollObservation = [(ICiOSTableAttachmentViewController *)self keyboardWillShowScrollObservation];

  if (keyboardWillShowScrollObservation)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    keyboardWillShowScrollObservation2 = [(ICiOSTableAttachmentViewController *)self keyboardWillShowScrollObservation];
    [defaultCenter removeObserver:keyboardWillShowScrollObservation2];

    [(ICiOSTableAttachmentViewController *)self setKeyboardWillShowScrollObservation:0];
  }

LABEL_12:
}

void __60__ICiOSTableAttachmentViewController_textViewDidEndEditing___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) noteEditorViewController];
  [v2 updateTextInputAccessoryViewForDidEndEditing:*(a1 + 40)];
}

- (void)beginEditingCellWithColumnID:(id)d andRowID:(id)iD textRange:(id)range
{
  dCopy = d;
  iDCopy = iD;
  rangeCopy = range;
  keyboardWillShowScrollObservation = [(ICiOSTableAttachmentViewController *)self keyboardWillShowScrollObservation];

  if (keyboardWillShowScrollObservation)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    keyboardWillShowScrollObservation2 = [(ICiOSTableAttachmentViewController *)self keyboardWillShowScrollObservation];
    [defaultCenter removeObserver:keyboardWillShowScrollObservation2];

    [(ICiOSTableAttachmentViewController *)self setKeyboardWillShowScrollObservation:0];
  }

  objc_initWeak(&location, self);
  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  v15 = *MEMORY[0x277D76C60];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __86__ICiOSTableAttachmentViewController_beginEditingCellWithColumnID_andRowID_textRange___block_invoke;
  v20[3] = &unk_2781AC8A0;
  objc_copyWeak(&v23, &location);
  v16 = dCopy;
  v21 = v16;
  v17 = iDCopy;
  v22 = v17;
  v18 = [defaultCenter2 addObserverForName:v15 object:0 queue:0 usingBlock:v20];
  [(ICiOSTableAttachmentViewController *)self setKeyboardWillShowScrollObservation:v18];

  v19.receiver = self;
  v19.super_class = ICiOSTableAttachmentViewController;
  [(ICTableAttachmentViewController *)&v19 beginEditingCellWithColumnID:v16 andRowID:v17 textRange:rangeCopy];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __86__ICiOSTableAttachmentViewController_beginEditingCellWithColumnID_andRowID_textRange___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained textViewManager];
  v4 = [v3 textViewForColumn:a1[4] createIfNeeded:1];

  if (v4)
  {
    v5 = [WeakRetained keyboardWillShowScrollObservation];

    if (v5)
    {
      v6 = [MEMORY[0x277CCAB98] defaultCenter];
      v7 = [WeakRetained keyboardWillShowScrollObservation];
      [v6 removeObserver:v7];

      [WeakRetained setKeyboardWillShowScrollObservation:0];
      if (([MEMORY[0x277D75658] isInHardwareKeyboardMode] & 1) == 0)
      {
        [WeakRetained setPreventScrolling:0];
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __86__ICiOSTableAttachmentViewController_beginEditingCellWithColumnID_andRowID_textRange___block_invoke_2;
        v8[3] = &unk_2781AC878;
        v8[4] = WeakRetained;
        v9 = v4;
        v10 = a1[4];
        v11 = a1[5];
        dispatch_async(MEMORY[0x277D85CD0], v8);
      }
    }
  }
}

void __86__ICiOSTableAttachmentViewController_beginEditingCellWithColumnID_andRowID_textRange___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __86__ICiOSTableAttachmentViewController_beginEditingCellWithColumnID_andRowID_textRange___block_invoke_3;
  v4[3] = &unk_2781AC5B0;
  v4[4] = v2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 scrollToSelectionInTextView:v3 animated:1 completion:v4];
}

void __86__ICiOSTableAttachmentViewController_beginEditingCellWithColumnID_andRowID_textRange___block_invoke_3(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) updateTiles];
  v2 = *(a1 + 32);
  v6[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v5 = *(a1 + 48);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v5 count:1];
  [v2 showButtonsAtColumns:v3 rows:v4];
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  noteEditorViewController = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
  viewControllerManager = [noteEditorViewController viewControllerManager];
  [viewControllerManager dismissOverlayContent];

  noteEditorViewController2 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
  [noteEditorViewController2 setHasMadeEdits];

  [changeCopy updateTextViewForDidChange];
  [(ICTableAttachmentViewController *)self setNeedsSaveAfterUserEdit];
  v15 = changeCopy;
  v8 = changeCopy;
  dispatchMainAfterDelay();
  tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
  columns = [tableSelection columns];
  firstObject = [columns firstObject];

  tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
  rows = [tableSelection2 rows];
  firstObject2 = [rows firstObject];

  if (firstObject && firstObject2)
  {
    [(ICTableAttachmentViewController *)self updateCellSizeAtColumn:firstObject row:firstObject2 immediateWidthUpdate:0];
  }
}

- (void)textViewDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  objc_opt_class();
  v5 = ICDynamicCast();
  objc_opt_class();
  textStorage = [selectionCopy textStorage];
  v7 = ICDynamicCast();

  selectedRange = [selectionCopy selectedRange];
  v10 = v9;
  previousSelectedRange = selectedRange;
  v65 = selectionCopy;
  v66 = v7;
  if (([v7 isApplyingUndoCommand] & 1) == 0)
  {
    selectedRange2 = [selectionCopy selectedRange];
    v14 = v13;
    selectedRange3 = [selectionCopy selectedRange];
    v17 = v16;
    v71.location = [v5 previousSelectedRange];
    v71.length = v18;
    v69.location = selectedRange3;
    selectionCopy = v65;
    v69.length = v17;
    v19 = NSUnionRange(v69, v71);
    v7 = v66;
    if (selectedRange2 == v19.location && v14 == v19.length)
    {
      previousSelectedRange = [v5 previousSelectedRange];
    }
  }

  v67 = 0;
  v68 = 0;
  v21 = [v7 rowAtIndex:previousSelectedRange rowRange:&v67];
  v22.length = v68;
  v22.location = v68 + v67;
  if (selectedRange >= v68 + v67)
  {
    v22.length = 0;
  }

  else if (v68)
  {
    v70.location = selectedRange;
    v70.length = v10;
    v22.location = v67;
    v22 = NSIntersectionRange(v70, v22);
  }

  else
  {
    v22.location = v67;
  }

  if (v22.location == selectedRange && v22.length == v10)
  {
    tableSelection = [(ICTableAttachmentViewController *)self tableSelection];
    if (![tableSelection draggingText])
    {
      tableSelection2 = [(ICTableAttachmentViewController *)self tableSelection];
      if (([tableSelection2 moving] & 1) != 0 || (objc_msgSend(selectionCopy, "isFirstResponder") & 1) == 0)
      {
      }

      else
      {
        isResigningFirstResponder = [v5 isResigningFirstResponder];

        if (isResigningFirstResponder)
        {
          goto LABEL_24;
        }

        objc_opt_class();
        tableSelection = ICDynamicCast();
        selectedTextRange = [selectionCopy selectedTextRange];
        isEmpty = [selectedTextRange isEmpty];

        if (isEmpty)
        {
          [(ICTableAttachmentViewController *)self showColumnRowButtons];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            v60 = ICDynamicCast();
            [(ICiOSTableAttachmentViewController *)self ensureGesturesOnSelectionGrabbers:v60];
          }

          columnButton = [(ICTableAttachmentViewController *)self columnButton];
          [columnButton setHidden:1];

          rowButton = [(ICTableAttachmentViewController *)self rowButton];
          [rowButton setHidden:1];
        }

        if (tableSelection)
        {
          [(ICiOSTableAttachmentViewController *)self didBeginEditingWithTextView:tableSelection];
          [(ICiOSTableAttachmentViewController *)self scrollToCaretIfNeededForTextView:tableSelection];
        }
      }
    }
  }

  else
  {
    [selectionCopy setSelectedRange:?];
  }

LABEL_24:
  selectedRange4 = [v5 selectedRange];
  [v5 setPreviousSelectedRange:{selectedRange4, v29}];
  noteTextView = [(ICTableAttachmentViewController *)self noteTextView];
  editorController = [noteTextView editorController];
  hashtagController = [editorController hashtagController];
  [hashtagController setHashtagTableKeyboardDelegate:v5];

  noteTextView2 = [(ICTableAttachmentViewController *)self noteTextView];
  editorController2 = [noteTextView2 editorController];
  mentionsController = [editorController2 mentionsController];
  [mentionsController setMentionsTableKeyboardDelegate:v5];

  noteTextView3 = [(ICTableAttachmentViewController *)self noteTextView];
  editorController3 = [noteTextView3 editorController];
  mentionsController2 = [editorController3 mentionsController];
  selectedRange5 = [v5 selectedRange];
  v41 = v40;
  note = [(ICTableAttachmentViewController *)self note];
  languageHasSpaces = [v5 languageHasSpaces];
  attachment = [(ICAttachmentViewController *)self attachment];
  BYTE1(v63) = languageHasSpaces;
  LOBYTE(v63) = 0;
  v45 = v41;
  v46 = v66;
  LOBYTE(selectedRange5) = [mentionsController2 checkForMentionInEditedRange:selectedRange5 ofTextStorage:v45 note:v66 textView:note allowAutoExplicitMention:v5 isEndingEditing:0 languageHasSpaces:v63 parentAttachment:attachment];

  if ((selectedRange5 & 1) == 0)
  {
    noteTextView4 = [(ICTableAttachmentViewController *)self noteTextView];
    editorController4 = [noteTextView4 editorController];
    hashtagController2 = [editorController4 hashtagController];
    selectedRange6 = [v5 selectedRange];
    v52 = v51;
    note2 = [(ICTableAttachmentViewController *)self note];
    languageHasSpaces2 = [v5 languageHasSpaces];
    attachment2 = [(ICAttachmentViewController *)self attachment];
    BYTE1(v64) = languageHasSpaces2;
    LOBYTE(v64) = 0;
    [hashtagController2 checkForHashtagInEditedRange:selectedRange6 ofTextStorage:v52 note:v66 textView:note2 allowAutoExplicitHashtag:v5 isEndingEditing:0 languageHasSpaces:v64 parentAttachment:attachment2];

    v46 = v66;
  }

  noteEditorViewController = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
  navigationItemConfiguration = [noteEditorViewController navigationItemConfiguration];
  [navigationItemConfiguration updateSelectionInTextView:v5];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  noteEditorViewController2 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
  [defaultCenter postNotificationName:@"ICNoteEditorViewControllerSelectionDidChangeNotification" object:noteEditorViewController2];
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  viewCopy = view;
  textCopy = text;
  if (![(ICTableAttachmentViewController *)self acceptsKeystrokes])
  {
    goto LABEL_10;
  }

  if ([textCopy hasSuffix:@"\n"] && (objc_msgSend(MEMORY[0x277D75658], "ic_isShiftKeyPressed") & 1) == 0)
  {
    if ([viewCopy returnKeyType] == 4)
    {
      [(ICTableAttachmentViewController *)self moveNextCell];
    }

    else
    {
      [(ICTableAttachmentViewController *)self moveReturnCell];
    }

    goto LABEL_10;
  }

  if ([textCopy hasSuffix:@"\t"])
  {
    [(ICTableAttachmentViewController *)self moveTabCell];
LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v9 = 1;
LABEL_11:

  return v9;
}

- (void)scrollToCaretIfNeededForTextView:(id)view
{
  viewCopy = view;
  selectedTextRange = [viewCopy selectedTextRange];
  isEmpty = [selectedTextRange isEmpty];

  if (isEmpty)
  {
    [(ICTableAttachmentViewController *)self scrollToSelectionInTextView:viewCopy animated:1 completion:0];
  }
}

- (void)layoutManager:(id)manager didCompleteLayoutForTextContainer:(id)container atEnd:(BOOL)end
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  noteTextView = [(ICTableAttachmentViewController *)self noteTextView];
  [defaultCenter postNotificationName:@"ICTextViewLayoutDidChangeNotification" object:noteTextView];
}

- (void)selectCurrentColumnForAccessibility
{
  columnButton = [(ICTableAttachmentViewController *)self columnButton];
  [(ICiOSTableAttachmentViewController *)self columnButtonPressed:columnButton];

  LODWORD(columnButton) = *MEMORY[0x277D76488];
  columnButton2 = [(ICTableAttachmentViewController *)self columnButton];
  UIAccessibilityPostNotification(columnButton, columnButton2);
}

- (void)selectCurrentRowForAccessibility
{
  rowButton = [(ICTableAttachmentViewController *)self rowButton];
  [(ICiOSTableAttachmentViewController *)self rowButtonPressed:rowButton];

  LODWORD(rowButton) = *MEMORY[0x277D76488];
  rowButton2 = [(ICTableAttachmentViewController *)self rowButton];
  UIAccessibilityPostNotification(rowButton, rowButton2);
}

- (void)invalidateCachedChildrenForAccessibilityReparenting
{
  objc_opt_class();
  noteTextView = [(ICTableAttachmentViewController *)self noteTextView];
  v4 = ICDynamicCast();

  [v4 icaxClearCachedChildrenForReparenting];
}

- (void)updateAccessibilityValueForColumnAndRowButtons
{
  table = [(ICTableAttachmentViewController *)self table];
  columnButton = [(ICTableAttachmentViewController *)self columnButton];
  columnOrRowIdentifiers = [columnButton columnOrRowIdentifiers];
  firstObject = [columnOrRowIdentifiers firstObject];
  v7 = [table columnIndexForIdentifier:firstObject];

  table2 = [(ICTableAttachmentViewController *)self table];
  columnButton2 = [(ICTableAttachmentViewController *)self columnButton];
  columnOrRowIdentifiers2 = [columnButton2 columnOrRowIdentifiers];
  lastObject = [columnOrRowIdentifiers2 lastObject];
  v12 = [table2 columnIndexForIdentifier:lastObject];

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v14 = mainBundle;
  v15 = v7 + 1;
  if (v7 == v12)
  {
    v16 = [mainBundle localizedStringForKey:@"column %lu" value:&stru_282757698 table:0];

    v17 = MEMORY[0x277CCACA8];
  }

  else
  {
    v16 = [mainBundle localizedStringForKey:@"columns %lu to %lu" value:&stru_282757698 table:0];

    v17 = MEMORY[0x277CCACA8];
    v35 = v12 + 1;
  }

  v18 = [v17 localizedStringWithFormat:v16, v15, v35];
  columnButton3 = [(ICTableAttachmentViewController *)self columnButton];
  [columnButton3 setAccessibilityValue:v18];

  table3 = [(ICTableAttachmentViewController *)self table];
  rowButton = [(ICTableAttachmentViewController *)self rowButton];
  columnOrRowIdentifiers3 = [rowButton columnOrRowIdentifiers];
  firstObject2 = [columnOrRowIdentifiers3 firstObject];
  v24 = [table3 rowIndexForIdentifier:firstObject2];

  table4 = [(ICTableAttachmentViewController *)self table];
  rowButton2 = [(ICTableAttachmentViewController *)self rowButton];
  columnOrRowIdentifiers4 = [rowButton2 columnOrRowIdentifiers];
  lastObject2 = [columnOrRowIdentifiers4 lastObject];
  v29 = [table4 rowIndexForIdentifier:lastObject2];

  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v31 = mainBundle2;
  if (v24 == v29)
  {
    v37 = [mainBundle2 localizedStringForKey:@"row %lu" value:&stru_282757698 table:0];

    v32 = MEMORY[0x277CCACA8];
  }

  else
  {
    v37 = [mainBundle2 localizedStringForKey:@"rows %lu to %lu" value:&stru_282757698 table:0];

    v32 = MEMORY[0x277CCACA8];
    v36 = v29 + 1;
  }

  v33 = [v32 localizedStringWithFormat:v37, v24 + 1, v36];
  rowButton3 = [(ICTableAttachmentViewController *)self rowButton];
  [rowButton3 setAccessibilityValue:v33];
}

- (void)moveAccessibilityFocusToSelectedColumnOrRowButton
{
  columnButton = [(ICTableAttachmentViewController *)self columnButton];
  isSelected = [columnButton isSelected];

  if (isSelected)
  {
    columnButton2 = [(ICTableAttachmentViewController *)self columnButton];
LABEL_5:
    v8 = columnButton2;
    goto LABEL_7;
  }

  rowButton = [(ICTableAttachmentViewController *)self rowButton];
  isSelected2 = [rowButton isSelected];

  if (isSelected2)
  {
    columnButton2 = [(ICTableAttachmentViewController *)self rowButton];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:
  v9 = v8;
  UIAccessibilityPostNotification(*MEMORY[0x277D76488], v8);
}

- (void)speakAccessibilityAnnouncementForMoveToCellWithColumnID:(id)d rowID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  table = [(ICTableAttachmentViewController *)self table];
  v9 = [table columnIndexForIdentifier:dCopy];

  table2 = [(ICTableAttachmentViewController *)self table];
  v11 = [table2 rowIndexForIdentifier:iDCopy];

  tableAXController = [(ICTableAttachmentViewController *)self tableAXController];
  v16 = [tableAXController cellElementForColumnIndex:v9 rowIndex:v11];

  accessibilityLabel = [v16 accessibilityLabel];
  accessibilityValue = [v16 accessibilityValue];
  v14 = __ICAccessibilityStringForVariables();

  UIAccessibilityPostNotification(*MEMORY[0x277D76438], v14);
}

- (void)speakAccessibilityExitedTableAnnouncementAndDidRemoveRow:(BOOL)row
{
  rowCopy = row;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = mainBundle;
  if (rowCopy)
  {
    v6 = @"Removed empty row and exited table";
  }

  else
  {
    v6 = @"Exited table";
  }

  argument = [mainBundle localizedStringForKey:v6 value:&stru_282757698 table:0];

  UIAccessibilityPostNotification(*MEMORY[0x277D76438], argument);
}

- (void)sendAnalyticsForStartEditIfNeeded
{
  if (![(ICiOSTableAttachmentViewController *)self isTrackingAnalyticsEdit])
  {
    [(ICiOSTableAttachmentViewController *)self setIsTrackingAnalyticsEdit:1];
    table = [(ICTableAttachmentViewController *)self table];
    columnCount = [table columnCount];

    table2 = [(ICTableAttachmentViewController *)self table];
    rowCount = [table2 rowCount];

    eventReporter = [(ICiOSTableAttachmentViewController *)self eventReporter];
    [eventReporter pushStartTableDataWithStartColumns:columnCount startRows:rowCount];
  }
}

- (void)sendAnalyticsForEndEditIfNeeded
{
  objc_opt_class();
  noteEditorViewController = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
  auxiliaryResponder = [noteEditorViewController auxiliaryResponder];
  v16 = ICDynamicCast();

  if ([(ICiOSTableAttachmentViewController *)self isTrackingAnalyticsEdit])
  {
    if (v16)
    {
      view = [(ICiOSTableAttachmentViewController *)self view];
      if ([v16 isDescendantOfView:view])
      {
        noteEditorViewController2 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
        textView = [noteEditorViewController2 textView];
        isBecomingFirstResponder = [textView isBecomingFirstResponder];

        if (!isBecomingFirstResponder)
        {
          goto LABEL_8;
        }
      }

      else
      {
      }
    }

    table = [(ICTableAttachmentViewController *)self table];
    columnCount = [table columnCount];

    table2 = [(ICTableAttachmentViewController *)self table];
    rowCount = [table2 rowCount];

    eventReporter = [(ICiOSTableAttachmentViewController *)self eventReporter];
    noteEditorViewController3 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
    note = [noteEditorViewController3 note];
    [eventReporter submitTableEditEventForNote:note endColumns:columnCount endRows:rowCount];

    [(ICiOSTableAttachmentViewController *)self setIsTrackingAnalyticsEdit:0];
  }

LABEL_8:
}

- (ICNAEventReporter)eventReporter
{
  if (!self->_eventReporter)
  {
    if ([MEMORY[0x277D35978] isOptedInForAnalytics])
    {
      viewIfLoaded = [(ICiOSTableAttachmentViewController *)self viewIfLoaded];

      if (viewIfLoaded)
      {
        v4 = objc_alloc(MEMORY[0x277D35978]);
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        view = [(ICiOSTableAttachmentViewController *)self view];
        v8 = [v4 initWithSubTrackerName:v6 view:view];
        eventReporter = self->_eventReporter;
        self->_eventReporter = v8;

        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter addObserver:self selector:sel_eventReporterLostSession_ name:*MEMORY[0x277D35958] object:self->_eventReporter];
      }
    }
  }

  v11 = self->_eventReporter;

  return v11;
}

- (void)eventReporterLostSession:(id)session
{
  eventReporter = self->_eventReporter;
  self->_eventReporter = 0;
  sessionCopy = session;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = *MEMORY[0x277D35958];
  object = [sessionCopy object];

  [defaultCenter removeObserver:self name:v6 object:object];
}

- (CGPoint)initialDragOffset
{
  x = self->_initialDragOffset.x;
  y = self->_initialDragOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)previousNoteContentOffset
{
  x = self->_previousNoteContentOffset.x;
  y = self->_previousNoteContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)previousViewOrigin
{
  x = self->_previousViewOrigin.x;
  y = self->_previousViewOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (_NSRange)previousSelectedRange
{
  p_previousSelectedRange = &self->_previousSelectedRange;
  location = self->_previousSelectedRange.location;
  length = p_previousSelectedRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (UILongPressGestureRecognizer)rowLongPress
{
  WeakRetained = objc_loadWeakRetained(&self->_rowLongPress);

  return WeakRetained;
}

@end