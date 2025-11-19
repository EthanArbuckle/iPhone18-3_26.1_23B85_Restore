@interface ICiOSTableAttachmentViewController
- (BOOL)becomeFirstResponderForAuxStyling;
- (BOOL)canConvertToTag;
- (BOOL)canConvertToText;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)resignFirstResponderForAuxStyling;
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (BOOL)textViewShouldBeginEditing:(id)a3;
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
- (id)dragSnapshotFromRect:(CGRect)a3 afterScreenUpdates:(BOOL)a4;
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
- (void)adjustScrollPositionByOffset:(CGPoint)a3;
- (void)beginEditingCellWithColumnID:(id)a3 andRowID:(id)a4 textRange:(id)a5;
- (void)beginEditingNoteAtRange:(_NSRange)a3;
- (void)buildMenuWithBuilder:(id)a3;
- (void)cellFirstResponderChanged;
- (void)cleanUpKVOIfNeeded;
- (void)columnButtonMenuActionTriggered:(id)a3;
- (void)columnButtonPressed:(id)a3;
- (void)convertToTag:(id)a3;
- (void)convertToText:(id)a3;
- (void)convertUnconfirmedHashtagsMentionsIfNecessary;
- (void)copySelection:(id)a3;
- (void)dealloc;
- (void)didBeginEditingWithTextView:(id)a3;
- (void)didMoveToParentViewController:(id)a3;
- (void)didTapEmptyTable:(id)a3;
- (void)didUpdateContentSize;
- (void)dragCellRange:(id)a3;
- (void)dragColumn:(id)a3;
- (void)dragRow:(id)a3;
- (void)dragTextRange:(id)a3;
- (void)ensureGesturesOnSelectionGrabbers:(id)a3;
- (void)eventReporterLostSession:(id)a3;
- (void)invalidateCachedChildrenForAccessibilityReparenting;
- (void)layoutManager:(id)a3 didCompleteLayoutForTextContainer:(id)a4 atEnd:(BOOL)a5;
- (void)loadView;
- (void)makeDelegateOfTextView:(id)a3;
- (void)menuDidHide:(id)a3;
- (void)menuWillHide:(id)a3;
- (void)moveAccessibilityFocusToSelectedColumnOrRowButton;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)paste:(id)a3;
- (void)performInitialLayoutIfNeeded;
- (void)rowButtonMenuActionTriggered:(id)a3;
- (void)rowButtonPressed:(id)a3;
- (void)scrollToCaretIfNeededForTextView:(id)a3;
- (void)scrollToRect:(CGRect)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)selectCell;
- (void)selectCurrentColumnForAccessibility;
- (void)selectCurrentRowForAccessibility;
- (void)selectionDidResignFirstResponder:(id)a3;
- (void)sendAnalyticsForEndEditIfNeeded;
- (void)sendAnalyticsForStartEditIfNeeded;
- (void)setTextViewWritingDirection:(int64_t)a3 sender:(id)a4;
- (void)setupEventHandling;
- (void)setupKVOIfNeeded;
- (void)setupTableTextView:(id)a3;
- (void)shareTable:(id)a3;
- (void)showButtonsAtColumns:(id)a3 rows:(id)a4;
- (void)showRangeSelectionMenu;
- (void)showSelectionMenuFromRect:(CGRect)a3;
- (void)speakAccessibilityAnnouncementForMoveToCellWithColumnID:(id)a3 rowID:(id)a4;
- (void)speakAccessibilityExitedTableAnnouncementAndDidRemoveRow:(BOOL)a3;
- (void)strikethrough:(id)a3;
- (void)tableAttachmentDidChange;
- (void)tableAttachmentSelectionDidChange:(id)a3;
- (void)textViewDidBeginEditing:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidChangeSelection:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
- (void)unselectColumnRow;
- (void)updateAccessibilityValueForColumnAndRowButtons;
- (void)updateChrome;
- (void)updateKeyboardAppearanceForTextView:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willBeginEditingWithTextView:(id)a3;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation ICiOSTableAttachmentViewController

- (void)dealloc
{
  v3 = [(ICiOSTableAttachmentViewController *)self rowLongPress];

  if (v3)
  {
    v4 = [(ICiOSTableAttachmentViewController *)self ic_viewControllerManager];
    v5 = [v4 mainSplitViewController];
    v6 = [v5 viewControllerForColumn:3];

    objc_opt_class();
    v7 = ICDynamicCast();
    v8 = [v7 interactivePopGestureRecognizer];

    v9 = [(ICiOSTableAttachmentViewController *)self rowLongPress];
    [v8 removeFailureRequirement:v9];
  }

  [(ICiOSTableAttachmentViewController *)self cleanUpKVOIfNeeded];
  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 removeObserver:self];

  v11.receiver = self;
  v11.super_class = ICiOSTableAttachmentViewController;
  [(ICTableAttachmentViewController *)&v11 dealloc];
}

- (CGRect)editingViewport
{
  v3 = [(ICiOSTableAttachmentViewController *)self noteScrollView];
  v4 = [(ICiOSTableAttachmentViewController *)self view];
  v5 = [v4 superview];

  if (v5)
  {
    v6 = [(ICTableAttachmentViewController *)self tableContentView];
    [v3 contentOffset];
    [v6 convertPoint:v3 fromView:?];
    v8 = v7;
  }

  else
  {
    [v3 contentOffset];
    v10 = v9;
    [(ICTableAttachmentViewController *)self proposedLineFragmentRect];
    v12 = v10 - v11;
    v13 = [(ICTableAttachmentViewController *)self noteTextView];
    [v13 textContainerInset];
    v14 = [(ICTableAttachmentViewController *)self noteTextView];
    v15 = [v14 textContainer];
    [v15 lineFragmentPadding];

    v6 = [(ICTableAttachmentViewController *)self noteTextView];
    [v6 textContainerInset];
    v8 = v12 - v16;
  }

  v17 = [(ICTableAttachmentViewController *)self scrollView];
  [v17 contentOffset];
  v19 = v18;

  if (v3)
  {
    [(ICTableAttachmentViewController *)self availableWidth];
    v21 = v20;
    [v3 bounds];
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
  v4 = [(ICiOSTableAttachmentViewController *)self parentViewController];
  v5 = v4;
  if (IsTextKit2Enabled)
  {
    v6 = ICCheckedDynamicCast();
  }

  else
  {
    v7 = [v4 parentViewController];
    v6 = ICCheckedDynamicCast();
  }

  return v6;
}

- (id)auxiliaryTextViewHost
{
  v2 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
  objc_opt_class();
  v3 = ICClassAndProtocolCast();

  return v3;
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = ICiOSTableAttachmentViewController;
  [(ICTableAttachmentViewController *)&v7 loadView];
  v3 = [(ICTableAttachmentViewController *)self scrollView];
  [v3 setDirectionalLockEnabled:1];

  v4 = [(ICTableAttachmentViewController *)self scrollView];
  [v4 setShowsVerticalScrollIndicator:0];

  v5 = [(ICTableAttachmentViewController *)self scrollView];
  [v5 setDelegate:self];

  v6 = [(ICTableAttachmentViewController *)self headerClipView];
  [v6 setAutoresizingMask:34];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = ICiOSTableAttachmentViewController;
  [(ICiOSTableAttachmentViewController *)&v7 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel_dragCellRange_];
  [v3 setMinimumPressDuration:0.0];
  v4 = [(ICTableAttachmentViewController *)self startKnob];
  [v4 addGestureRecognizer:v3];

  v5 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel_dragCellRange_];
  [v5 setMinimumPressDuration:0.0];
  v6 = [(ICTableAttachmentViewController *)self endKnob];
  [v6 addGestureRecognizer:v5];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = ICiOSTableAttachmentViewController;
  [(ICiOSTableAttachmentViewController *)&v3 viewWillAppear:a3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ICiOSTableAttachmentViewController;
  [(ICiOSTableAttachmentViewController *)&v4 viewDidAppear:a3];
  [(ICiOSTableAttachmentViewController *)self setupKVOIfNeeded];
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    [(ICTableAttachmentViewController *)self updateAllColumnWidthsAndRedraw];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ICiOSTableAttachmentViewController;
  [(ICiOSTableAttachmentViewController *)&v4 viewWillDisappear:a3];
  [(ICiOSTableAttachmentViewController *)self cleanUpKVOIfNeeded];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = ICiOSTableAttachmentViewController;
  [(ICiOSTableAttachmentViewController *)&v13 viewWillLayoutSubviews];
  v3 = [(ICiOSTableAttachmentViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(ICTableAttachmentViewController *)self scrollView];
  [v12 setFrame:{v5, v7, v9, v11}];

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
  v3 = [(ICTableAttachmentViewController *)self textViewManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__ICiOSTableAttachmentViewController_viewDidLayoutSubviews__block_invoke_2;
  v4[3] = &unk_2781AC718;
  v4[4] = self;
  [v3 enumerateTextViewsWithBlock:v4];
}

void __59__ICiOSTableAttachmentViewController_viewDidLayoutSubviews__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained beginEditingInitialCell];
}

- (void)willMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = ICiOSTableAttachmentViewController;
  [(ICiOSTableAttachmentViewController *)&v5 willMoveToParentViewController:?];
  if (!a3)
  {
    [(ICiOSTableAttachmentViewController *)self cleanUpKVOIfNeeded];
  }
}

- (void)didMoveToParentViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICiOSTableAttachmentViewController;
  [(ICiOSTableAttachmentViewController *)&v6 didMoveToParentViewController:?];
  if (a3)
  {
    v5 = [(ICTableAttachmentViewController *)self textViewManager];
    [v5 parentViewDidChange];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v9.receiver = self;
  v9.super_class = ICiOSTableAttachmentViewController;
  [(ICiOSTableAttachmentViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
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
  [v7 animateAlongsideTransition:&__block_literal_global_0 completion:v8];
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
    v3 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
    v4 = [v3 isEditingOnSystemPaper];

    if ((v4 & 1) == 0)
    {
      v5 = [(ICiOSTableAttachmentViewController *)self noteScrollView];
      [v5 ic_addObserver:self forKeyPath:@"contentOffset" context:&compoundliteral];

      [(ICiOSTableAttachmentViewController *)self setIsObservingContentOffset:1];
    }

    v6 = [(ICiOSTableAttachmentViewController *)self view];
    [v6 ic_addObserver:self forKeyPath:@"frame" context:&compoundliteral_637];
  }
}

- (void)cleanUpKVOIfNeeded
{
  if ([(ICiOSTableAttachmentViewController *)self isObservingContentOffset])
  {
    v3 = [(ICiOSTableAttachmentViewController *)self noteScrollView];
    [v3 ic_removeObserver:self forKeyPath:@"contentOffset" context:&compoundliteral];

    v4 = [(ICiOSTableAttachmentViewController *)self view];
    [v4 ic_removeObserver:self forKeyPath:@"frame" context:&compoundliteral_637];

    [(ICiOSTableAttachmentViewController *)self setIsObservingContentOffset:0];
  }

  v5 = [(ICiOSTableAttachmentViewController *)self keyboardWillShowScrollObservation];

  if (v5)
  {
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = [(ICiOSTableAttachmentViewController *)self keyboardWillShowScrollObservation];
    [v7 removeObserver:v6];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a3;
  if (([(ICiOSTableAttachmentViewController *)self ic_didAddObserverForContext:a6 inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/Common/TextAttachmentUI/iOS/ICiOSTableAttachmentViewController.m"]& 1) != 0)
  {
    v13 = [(ICiOSTableAttachmentViewController *)self ic_shouldIgnoreObserveValue:v11 ofObject:v10 forKeyPath:v12];

    if ((v13 & 1) == 0)
    {
      if (a6 == &compoundliteral)
      {
        if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
        {
          [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICiOSTableAttachmentViewController observeValueForKeyPath:ofObject:change:context:]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
        }

        [(ICiOSTableAttachmentViewController *)self previousNoteContentOffset];
        v25 = v24;
        v27 = v26;
        v28 = [(ICiOSTableAttachmentViewController *)self noteScrollView];
        [v28 contentOffset];
        v30 = v29;
        v32 = v31;

        if (v25 != v30 || v27 != v32)
        {
          v33 = [(ICiOSTableAttachmentViewController *)self noteScrollView];
          [v33 contentOffset];
          [(ICiOSTableAttachmentViewController *)self setPreviousNoteContentOffset:?];

          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __85__ICiOSTableAttachmentViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
          v34[3] = &unk_2781ABCF8;
          v34[4] = self;
          [MEMORY[0x277D75D18] ic_performWithoutAnimation:v34];
          [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_scrollViewDidEndScrollingAnimation_ object:v10];
          [(ICiOSTableAttachmentViewController *)self performSelector:sel_scrollViewDidEndScrollingAnimation_ withObject:v10 afterDelay:0.2];
        }
      }

      else if (a6 == &compoundliteral_637)
      {
        if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
        {
          [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICiOSTableAttachmentViewController observeValueForKeyPath:ofObject:change:context:]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
        }

        [(ICiOSTableAttachmentViewController *)self previousViewOrigin];
        v15 = v14;
        v17 = v16;
        v18 = [(ICiOSTableAttachmentViewController *)self view];
        [v18 frame];
        v20 = v19;
        v22 = v21;

        if (v15 != v20 || v17 != v22)
        {
          v23 = [(ICiOSTableAttachmentViewController *)self view];
          [v23 frame];
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
    [(ICiOSTableAttachmentViewController *)&v35 observeValueForKeyPath:v12 ofObject:v10 change:v11 context:a6];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  [(ICTableAttachmentViewController *)self updateTiles];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = [(ICTableAttachmentViewController *)self scrollView];
  [v5 postNotificationName:@"ICTableScrollViewBoundsDidChangeNotification" object:v4];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_showRangeSelectionMenu object:0];

    [(ICiOSTableAttachmentViewController *)self performSelector:sel_showRangeSelectionMenu withObject:0 afterDelay:0.2];
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_showRangeSelectionMenu object:0];

  [(ICiOSTableAttachmentViewController *)self performSelector:sel_showRangeSelectionMenu withObject:0 afterDelay:0.2];
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_scrollViewDidEndScrollingAnimation_ object:a3];

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
  v7 = [(ICTableAttachmentViewController *)self scrollView];
  [v7 setContentSize:{v4, v6}];

  v8 = [(ICTableAttachmentViewController *)self scrollView];
  [v8 setContentInsetAdjustmentBehavior:2];
}

- (void)adjustScrollPositionByOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(ICTableAttachmentViewController *)self scrollView];
  [v6 contentOffset];
  v8 = v7;
  v10 = v9;

  v11 = [(ICTableAttachmentViewController *)self scrollView];
  [v11 setContentOffset:{x + v8, y + v10}];
}

- (void)scrollToRect:(CGRect)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  rect.origin.x = a3.origin.x;
  v10 = a5;
  if (![(ICTableAttachmentViewController *)self preventScrolling])
  {
    v74 = width;
    v72 = height;
    [(ICTableAttachmentViewController *)self viewport];
    v13 = v12;
    v15 = v14;
    v73 = v16;
    v18 = v17;
    v19 = [(ICiOSTableAttachmentViewController *)self noteScrollView];
    [v19 contentInset];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    if (ICInternalSettingsIsTextKit2Enabled())
    {
      v28 = [(ICiOSTableAttachmentViewController *)self noteScrollView];
      [v28 safeAreaInsets];
      v21 = v29;
    }

    v30 = v13 + v23;
    v31 = v15 + v21;
    v32 = v21;
    v33 = v73 - (v23 + v27);
    v70 = v32;
    v34 = v18 - (v25 + v32);
    if (v10)
    {
      v35 = v10;
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

    v37 = [(ICiOSTableAttachmentViewController *)self noteScrollView];
    v38 = [(ICTableAttachmentViewController *)self scrollView];
    v39 = [(ICiOSTableAttachmentViewController *)self noteScrollView];
    v40 = [(ICTableAttachmentViewController *)self tableContentView];
    [v39 convertRect:v40 fromView:{rect.origin.x, y, v74, v72}];
    v66 = v42;
    v67 = v41;
    v64 = v44;
    v65 = v43;

    [v37 contentOffset];
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
      [v37 contentSize];
      v51 = v50 - v34;
      [v37 contentInset];
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

    [v38 contentOffset];
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
      if (v5)
      {
LABEL_23:
        v63 = MEMORY[0x277D75D18];
        v79[0] = MEMORY[0x277D85DD0];
        v79[1] = 3221225472;
        v79[2] = __71__ICiOSTableAttachmentViewController_scrollToRect_animated_completion___block_invoke_2;
        v79[3] = &unk_2781AC7B0;
        v80 = v37;
        v82 = v68;
        v83 = v69;
        v81 = v38;
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
      if (v5)
      {
        goto LABEL_23;
      }
    }

    [v37 setContentOffset:{v68, v69}];
    [v38 setContentOffset:{v62, v75}];
    v11[2](v11);
    goto LABEL_26;
  }

  v11 = v10;
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

- (void)beginEditingNoteAtRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  objc_opt_class();
  v6 = [(ICiOSTableAttachmentViewController *)self view];
  v11 = ICDynamicCast();

  objc_opt_class();
  v7 = [v11 textView];
  v8 = ICDynamicCast();

  v9 = [v8 editorController];
  [v9 setSelectedRange:{location, length}];

  v10 = [v8 editorController];
  [v10 startEditing];

  [(ICiOSTableAttachmentViewController *)self speakAccessibilityExitedTableAnnouncementAndDidRemoveRow:0];
}

- (id)dragSnapshotFromRect:(CGRect)a3 afterScreenUpdates:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(ICTableAttachmentViewController *)self scrollView];
  v11 = [v10 resizableSnapshotViewFromRect:v4 afterScreenUpdates:x withCapInsets:{y, width, height, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  if ([MEMORY[0x277D75418] ic_isVision])
  {
    [v11 setBackgroundColor:0];
  }

  else
  {
    v12 = MEMORY[0x277D75348];
    v13 = [(ICiOSTableAttachmentViewController *)self view];
    v14 = [v13 traitCollection];
    v15 = [v12 ic_attachmentBackgroundColorForTraitCollection:v14];
    v16 = [v15 colorWithAlphaComponent:0.7];
    [v11 setBackgroundColor:v16];
  }

  return v11;
}

- (void)setupTableTextView:(id)a3
{
  v5.receiver = self;
  v5.super_class = ICiOSTableAttachmentViewController;
  v4 = a3;
  [(ICTableAttachmentViewController *)&v5 setupTableTextView:v4];
  [(ICiOSTableAttachmentViewController *)self updateKeyboardAppearanceForTextView:v4, v5.receiver, v5.super_class];
}

- (void)updateKeyboardAppearanceForTextView:(id)a3
{
  v4 = a3;
  v5 = [(ICTableAttachmentViewController *)self noteTextView];
  [v4 setOverrideUserInterfaceStyle:{objc_msgSend(v5, "overrideUserInterfaceStyle")}];

  v6 = [(ICTableAttachmentViewController *)self noteTextView];
  [v4 setKeyboardAppearance:{objc_msgSend(v6, "keyboardAppearance")}];
}

- (void)setupEventHandling
{
  v4 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_didTapEmptyTable_];
  [v4 setDelegate:self];
  v3 = [(ICTableAttachmentViewController *)self tableContentView];
  [v3 addGestureRecognizer:v4];
}

- (void)didTapEmptyTable:(id)a3
{
  v12 = a3;
  if ([v12 state] == 3)
  {
    v4 = [(ICTableAttachmentViewController *)self table];
    if ([v4 columnCount])
    {
      v5 = [(ICTableAttachmentViewController *)self table];
      v6 = [v5 rowCount];

      if (v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v7 = [(ICTableAttachmentViewController *)self tableContentView];
    [v12 locationInView:v7];
    v9 = v8;
    v11 = v10;

    [(ICTableAttachmentViewController *)self tappedTableAtLocation:v9, v11];
  }

LABEL_7:
}

- (BOOL)becomeFirstResponderForAuxStyling
{
  v2 = [(ICTableAttachmentViewController *)self selectionHighlightView];
  v3 = [v2 becomeFirstResponder];

  return v3;
}

- (BOOL)resignFirstResponderForAuxStyling
{
  v2 = [(ICTableAttachmentViewController *)self selectionHighlightView];
  v3 = [v2 resignFirstResponder];

  return v3;
}

- (void)makeDelegateOfTextView:(id)a3
{
  v4 = a3;
  [v4 setDelegate:self];
  [v4 setIcDelegate:self];
  v5 = [v4 layoutManager];

  [v5 setDelegate:self];
}

- (void)willBeginEditingWithTextView:(id)a3
{
  v7.receiver = self;
  v7.super_class = ICiOSTableAttachmentViewController;
  [(ICTableAttachmentViewController *)&v7 willBeginEditingWithTextView:a3];
  v4 = [(ICTableAttachmentViewController *)self noteTextView];
  v5 = [v4 isEditable];

  if ((v5 & 1) == 0)
  {
    v6 = [(ICTableAttachmentViewController *)self noteTextView];
    [v6 setEditable:1];
  }
}

- (void)didBeginEditingWithTextView:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICiOSTableAttachmentViewController;
  [(ICTableAttachmentViewController *)&v6 didBeginEditingWithTextView:a3];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v5 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
  [v4 postNotificationName:@"ICNoteEditorViewControllerSelectionDidChangeNotification" object:v5];
}

- (void)cellFirstResponderChanged
{
  v4.receiver = self;
  v4.super_class = ICiOSTableAttachmentViewController;
  [(ICTableAttachmentViewController *)&v4 cellFirstResponderChanged];
  [(ICiOSTableAttachmentViewController *)self convertUnconfirmedHashtagsMentionsIfNecessary];
  v3 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
  [v3 tableCellFirstResponderChanged];
}

- (void)convertUnconfirmedHashtagsMentionsIfNecessary
{
  v3 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
  if (v3)
  {
    v4 = v3;
    v5 = [(ICTableAttachmentViewController *)self currentlyEditingTextStorage];

    if (v5)
    {
      v6 = [(ICTableAttachmentViewController *)self noteTextView];
      v7 = [v6 editorController];
      v34 = [v7 mentionsController];

      v8 = MEMORY[0x277D35F20];
      v9 = [(ICTableAttachmentViewController *)self currentlyEditingTextStorage];
      v10 = [v8 rangeOfUnconfirmedMentionInTextStorage:v9];
      v12 = v11;

      if (v10 != 0x7FFFFFFFFFFFFFFFLL && v12)
      {
        v13 = [(ICTableAttachmentViewController *)self currentlyEditingTextStorage];
        v14 = [(ICTableAttachmentViewController *)self note];
        v15 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
        v16 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
        v17 = [v16 languageHasSpaces];
        v18 = [(ICAttachmentViewController *)self attachment];
        BYTE1(v33) = v17;
        LOBYTE(v33) = 1;
        [v34 checkForMentionInEditedRange:v10 ofTextStorage:v12 note:v13 textView:v14 allowAutoExplicitMention:v15 isEndingEditing:1 languageHasSpaces:v33 parentAttachment:v18];
      }

      v19 = [(ICTableAttachmentViewController *)self noteTextView];
      v20 = [v19 editorController];
      v21 = [v20 hashtagController];

      v22 = MEMORY[0x277D35EE8];
      v23 = [(ICTableAttachmentViewController *)self currentlyEditingTextStorage];
      v24 = [v22 rangeOfUnconfirmedHashtagInTextStorage:v23];
      v26 = v25;

      if (v24 != 0x7FFFFFFFFFFFFFFFLL && v26)
      {
        v27 = [(ICTableAttachmentViewController *)self currentlyEditingTextStorage];
        v28 = [(ICTableAttachmentViewController *)self note];
        v29 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
        v30 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
        v31 = [v30 languageHasSpaces];
        v32 = [(ICAttachmentViewController *)self attachment];
        BYTE1(v33) = v31;
        LOBYTE(v33) = 1;
        [v21 checkForHashtagInEditedRange:v24 ofTextStorage:v26 note:v27 textView:v28 allowAutoExplicitHashtag:v29 isEndingEditing:1 languageHasSpaces:v33 parentAttachment:v32];
      }
    }
  }
}

- (void)showButtonsAtColumns:(id)a3 rows:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICTableAttachmentViewController *)self columnButton];
  if (!v8 || (v9 = v8, [(ICTableAttachmentViewController *)self rowButton], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, !v10))
  {
    v11 = [ICTableColumnRowButton alloc];
    v12 = [(ICTableAttachmentViewController *)self table];
    v13 = -[ICTableColumnRowButton initAsColumn:isLeftToRight:](v11, "initAsColumn:isLeftToRight:", 1, [v12 isLeftToRight]);
    [(ICTableAttachmentViewController *)self setColumnButton:v13];

    v14 = [ICTableColumnRowButton alloc];
    v15 = [(ICTableAttachmentViewController *)self table];
    v16 = -[ICTableColumnRowButton initAsColumn:isLeftToRight:](v14, "initAsColumn:isLeftToRight:", 0, [v15 isLeftToRight]);
    [(ICTableAttachmentViewController *)self setRowButton:v16];

    v17 = [(ICTableAttachmentViewController *)self columnButton];
    [v17 addTarget:self action:sel_columnButtonTouched_ forControlEvents:1];

    v18 = [(ICTableAttachmentViewController *)self columnButton];
    [v18 addTarget:self action:sel_columnButtonPressed_ forControlEvents:64];

    v19 = [(ICTableAttachmentViewController *)self columnButton];
    [v19 addTarget:self action:sel_columnButtonMenuActionTriggered_ forControlEvents:0x4000];

    v20 = [(ICTableAttachmentViewController *)self columnButton];
    [v20 setExclusiveTouch:1];

    v21 = [(ICTableAttachmentViewController *)self columnButton];
    [v21 setShowsMenuAsPrimaryAction:1];

    v22 = [(ICTableAttachmentViewController *)self rowButton];
    [v22 addTarget:self action:sel_rowButtonTouched_ forControlEvents:1];

    v23 = [(ICTableAttachmentViewController *)self rowButton];
    [v23 addTarget:self action:sel_rowButtonPressed_ forControlEvents:64];

    v24 = [(ICTableAttachmentViewController *)self rowButton];
    [v24 addTarget:self action:sel_rowButtonMenuActionTriggered_ forControlEvents:0x4000];

    v25 = [(ICTableAttachmentViewController *)self rowButton];
    [v25 setExclusiveTouch:1];

    v26 = [(ICTableAttachmentViewController *)self rowButton];
    [v26 setShowsMenuAsPrimaryAction:1];

    v27 = [MEMORY[0x277CCA8D8] mainBundle];
    [v27 localizedStringForKey:@"Column selection handle" value:&stru_282757698 table:0];
    v28 = v79 = v6;
    [(ICTableAttachmentViewController *)self columnButton];
    v29 = v78 = v7;
    [v29 setAccessibilityLabel:v28];

    v30 = [MEMORY[0x277CCA8D8] mainBundle];
    v31 = [v30 localizedStringForKey:@"Double tap and drag to reorder this column." value:&stru_282757698 table:0];
    v32 = [(ICTableAttachmentViewController *)self columnButton];
    [v32 setAccessibilityHint:v31];

    v33 = [MEMORY[0x277CCA8D8] mainBundle];
    v34 = [v33 localizedStringForKey:@"Row selection handle" value:&stru_282757698 table:0];
    v35 = [(ICTableAttachmentViewController *)self rowButton];
    [v35 setAccessibilityLabel:v34];

    v36 = [MEMORY[0x277CCA8D8] mainBundle];
    v37 = [v36 localizedStringForKey:@"Double tap and drag to reorder this row." value:&stru_282757698 table:0];
    v38 = [(ICTableAttachmentViewController *)self rowButton];
    [v38 setAccessibilityHint:v37];

    v39 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_dragColumn_];
    [v39 setDelegate:self];
    v40 = [(ICTableAttachmentViewController *)self columnButton];
    [v40 addGestureRecognizer:v39];

    v41 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel_dragColumn_];
    [v41 setDelegate:self];
    [v41 setMinimumPressDuration:0.3];
    v42 = [(ICTableAttachmentViewController *)self columnButton];
    [v42 addGestureRecognizer:v41];

    v43 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_dragRow_];
    [v43 setDelegate:self];
    v44 = [(ICTableAttachmentViewController *)self rowButton];
    [v44 addGestureRecognizer:v43];

    v45 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel_dragRow_];
    [v45 setDelegate:self];
    [v45 setMinimumPressDuration:0.3];
    v46 = [(ICTableAttachmentViewController *)self rowButton];
    [v46 addGestureRecognizer:v45];

    [(ICiOSTableAttachmentViewController *)self setRowLongPress:v45];
    v47 = [(ICiOSTableAttachmentViewController *)self ic_viewControllerManager];
    v48 = [v47 mainSplitViewController];
    v49 = [v48 viewControllerForColumn:3];

    objc_opt_class();
    v50 = ICDynamicCast();
    v51 = [v50 interactivePopGestureRecognizer];

    [v51 requireGestureRecognizerToFail:v45];
    v52 = [(ICiOSTableAttachmentViewController *)self view];
    v53 = [v52 outsideViews];
    v54 = [(ICTableAttachmentViewController *)self columnButton];
    [v53 addObject:v54];

    v55 = [(ICiOSTableAttachmentViewController *)self view];
    v56 = [v55 outsideViews];
    v57 = [(ICTableAttachmentViewController *)self rowButton];
    [v56 addObject:v57];

    [(ICiOSTableAttachmentViewController *)self invalidateCachedChildrenForAccessibilityReparenting];
    v7 = v78;

    v6 = v79;
  }

  v58 = [(ICTableAttachmentViewController *)self columnButton];
  v59 = [v58 superview];
  if (v59)
  {
    v60 = v59;
    v61 = [(ICTableAttachmentViewController *)self rowButton];
    v62 = [v61 superview];

    if (v62)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v63 = [(ICTableAttachmentViewController *)self headerClipView];
  v64 = [(ICTableAttachmentViewController *)self columnButton];
  [v63 addSubview:v64];

  v65 = [(ICiOSTableAttachmentViewController *)self view];
  v66 = [(ICTableAttachmentViewController *)self rowButton];
  [v65 addSubview:v66];

LABEL_9:
  v67 = [(ICTableAttachmentViewController *)self columnButton];
  [v67 setColumnOrRowIdentifiers:v7];

  v68 = [(ICTableAttachmentViewController *)self rowButton];
  [v68 setColumnOrRowIdentifiers:v6];

  [(ICTableAttachmentViewController *)self showColumnRowButtons];
  v69 = *MEMORY[0x277CBF3A0];
  v70 = *(MEMORY[0x277CBF3A0] + 8);
  v71 = *(MEMORY[0x277CBF3A0] + 16);
  v72 = *(MEMORY[0x277CBF3A0] + 24);
  v73 = [(ICTableAttachmentViewController *)self columnButton];
  [v73 setFrame:{v69, v70, v71, v72}];

  v74 = [(ICTableAttachmentViewController *)self rowButton];
  [v74 setFrame:{v69, v70, v71, v72}];

  [(ICTableAttachmentViewController *)self updateButtonFrames];
  v75 = [(ICiOSTableAttachmentViewController *)self view];
  v76 = [v75 superview];
  v77 = [(ICiOSTableAttachmentViewController *)self view];
  [v76 bringSubviewToFront:v77];

  [(ICiOSTableAttachmentViewController *)self updateAccessibilityValueForColumnAndRowButtons];
}

- (void)updateChrome
{
  if (![(ICTableAttachmentViewController *)self lockSelection])
  {
    v3 = [(ICTableAttachmentViewController *)self tableSelection];
    v4 = [v3 moving];

    if ((v4 & 1) == 0)
    {
      v15.receiver = self;
      v15.super_class = ICiOSTableAttachmentViewController;
      [(ICTableAttachmentViewController *)&v15 updateChrome];
      v5 = [(ICiOSTableAttachmentViewController *)self columnMenu];
      v6 = [(ICTableAttachmentViewController *)self columnButton];
      [v6 setMenu:v5];

      v7 = [(ICiOSTableAttachmentViewController *)self rowMenu];
      v8 = [(ICTableAttachmentViewController *)self rowButton];
      [v8 setMenu:v7];

      v9 = [(ICTableAttachmentViewController *)self tableSelection];
      v10 = [v9 type];

      v11 = self;
      if ((v10 - 1) < 4)
      {
LABEL_4:
        v12 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
        [v12 setAuxiliaryStylingController:v11];

        return;
      }

      if (!v10)
      {
        v13 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
        v14 = [v13 auxiliaryStylingController];

        if (v14 == self)
        {
          v11 = 0;
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
  v3 = [(ICTableAttachmentViewController *)self columnButton];
  [v3 setSelected:0];

  v4 = [(ICiOSTableAttachmentViewController *)self columnMenu];
  v5 = [(ICTableAttachmentViewController *)self columnButton];
  [v5 setMenu:v4];

  v6 = [(ICTableAttachmentViewController *)self rowButton];
  [v6 setSelected:0];

  v7 = [(ICiOSTableAttachmentViewController *)self rowMenu];
  v8 = [(ICTableAttachmentViewController *)self rowButton];
  [v8 setMenu:v7];
}

void __58__ICiOSTableAttachmentViewController_columnButtonTouched___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isTouchingColumnButton])
  {
    v2 = [*(a1 + 32) columnButton];
    [v2 setMenu:0];
  }
}

- (void)columnButtonPressed:(id)a3
{
  v4 = a3;
  [(ICiOSTableAttachmentViewController *)self setTouchingColumnButton:0];
  v5 = [(ICTableAttachmentViewController *)self tableSelection];
  v6 = [v4 columnOrRowIdentifiers];

  [v5 selectColumns:v6];
  v7 = [(ICTableAttachmentViewController *)self selectionHighlightView];
  LOBYTE(v5) = [v7 ic_isFirstResponder];

  if ((v5 & 1) == 0)
  {
    v8 = [(ICTableAttachmentViewController *)self selectionHighlightView];
    [v8 removeFromSuperview];

    v9 = [(ICTableAttachmentViewController *)self scrollView];
    v10 = [(ICTableAttachmentViewController *)self selectionHighlightView];
    [v9 addSubview:v10];

    v11 = [(ICTableAttachmentViewController *)self selectionHighlightView];
    [v11 becomeFirstResponder];
  }

  [(ICiOSTableAttachmentViewController *)self updateChrome];
  v12 = [(ICTableAttachmentViewController *)self columnButton];
  [v12 setSelected:1];

  v13 = [(ICiOSTableAttachmentViewController *)self columnMenu];
  v14 = [(ICTableAttachmentViewController *)self columnButton];
  [v14 setMenu:v13];

  v15 = [(ICTableAttachmentViewController *)self rowButton];
  [v15 setSelected:0];

  v16 = [(ICiOSTableAttachmentViewController *)self rowMenu];
  v17 = [(ICTableAttachmentViewController *)self rowButton];
  [v17 setMenu:v16];

  [(ICTableAttachmentViewController *)self showColumnRowButtons];
  v18 = [(ICTableAttachmentViewController *)self tableAXController];
  [v18 tableRowOrColumnSelectionDidChange];
}

- (void)columnButtonMenuActionTriggered:(id)a3
{
  [(ICiOSTableAttachmentViewController *)self setTouchingColumnButton:0];
  v5 = [(ICiOSTableAttachmentViewController *)self columnMenu];
  v4 = [(ICTableAttachmentViewController *)self columnButton];
  [v4 setMenu:v5];
}

void __55__ICiOSTableAttachmentViewController_rowButtonTouched___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isTouchingRowButton])
  {
    v2 = [*(a1 + 32) rowButton];
    [v2 setMenu:0];
  }
}

- (void)rowButtonPressed:(id)a3
{
  v4 = a3;
  [(ICiOSTableAttachmentViewController *)self setTouchingRowButton:0];
  v5 = [(ICTableAttachmentViewController *)self tableSelection];
  v6 = [v4 columnOrRowIdentifiers];

  [v5 selectRows:v6];
  v7 = [(ICTableAttachmentViewController *)self selectionHighlightView];
  LOBYTE(v5) = [v7 ic_isFirstResponder];

  if ((v5 & 1) == 0)
  {
    v8 = [(ICTableAttachmentViewController *)self selectionHighlightView];
    [v8 removeFromSuperview];

    v9 = [(ICTableAttachmentViewController *)self scrollView];
    v10 = [(ICTableAttachmentViewController *)self selectionHighlightView];
    [v9 addSubview:v10];

    v11 = [(ICTableAttachmentViewController *)self selectionHighlightView];
    [v11 becomeFirstResponder];
  }

  [(ICiOSTableAttachmentViewController *)self updateChrome];
  v12 = [(ICTableAttachmentViewController *)self columnButton];
  [v12 setSelected:0];

  v13 = [(ICiOSTableAttachmentViewController *)self columnMenu];
  v14 = [(ICTableAttachmentViewController *)self columnButton];
  [v14 setMenu:v13];

  v15 = [(ICTableAttachmentViewController *)self rowButton];
  [v15 setSelected:1];

  v16 = [(ICiOSTableAttachmentViewController *)self rowMenu];
  v17 = [(ICTableAttachmentViewController *)self rowButton];
  [v17 setMenu:v16];

  [(ICTableAttachmentViewController *)self showColumnRowButtons];
  v18 = [(ICTableAttachmentViewController *)self tableAXController];
  [v18 tableRowOrColumnSelectionDidChange];
}

- (void)rowButtonMenuActionTriggered:(id)a3
{
  [(ICiOSTableAttachmentViewController *)self setTouchingRowButton:0];
  v5 = [(ICiOSTableAttachmentViewController *)self rowMenu];
  v4 = [(ICTableAttachmentViewController *)self rowButton];
  [v4 setMenu:v5];
}

- (void)showSelectionMenuFromRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v18 = [MEMORY[0x277D75718] sharedMenuController];
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  MaxX = CGRectGetMaxX(v20);
  v9 = v18;
  if (MaxX > 0.0)
  {
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    MinX = CGRectGetMinX(v21);
    v11 = [(ICiOSTableAttachmentViewController *)self view];
    [v11 bounds];
    if (MinX < CGRectGetWidth(v22))
    {
      v12 = [v18 isMenuVisible];

      v9 = v18;
      if (v12)
      {
        goto LABEL_6;
      }

      v13 = [MEMORY[0x277CCAB98] defaultCenter];
      [v13 addObserver:self selector:sel_menuWillHide_ name:*MEMORY[0x277D76CB8] object:0];

      v14 = [MEMORY[0x277CCAB98] defaultCenter];
      [v14 addObserver:self selector:sel_menuDidHide_ name:*MEMORY[0x277D76CA8] object:0];

      v15 = [(ICiOSTableAttachmentViewController *)self view];
      [v18 showMenuFromView:v15 rect:{x, y, width, height}];

      LODWORD(v15) = *MEMORY[0x277D76488];
      v11 = [MEMORY[0x277D75238] sharedCalloutBar];
      v16 = [v11 _accessibleSubviews];
      v17 = [v16 firstObject];
      UIAccessibilityPostNotification(v15, v17);
    }

    v9 = v18;
  }

LABEL_6:
}

- (void)ensureGesturesOnSelectionGrabbers:(id)a3
{
  v7 = a3;
  v4 = [v7 gestureRecognizers];
  v5 = [v4 ic_containsObjectOfClass:objc_opt_class()];

  if ((v5 & 1) == 0)
  {
    v6 = [[ICTableSelectionGrabberRecognizer alloc] initWithTarget:self action:sel_dragTextRange_];
    [(ICTableSelectionGrabberRecognizer *)v6 setMinimumPressDuration:0.0];
    [(ICTableSelectionGrabberRecognizer *)v6 setCancelsTouchesInView:0];
    [(ICTableSelectionGrabberRecognizer *)v6 setDelegate:self];
    [v7 addGestureRecognizer:v6];
  }
}

- (void)dragTextRange:(id)a3
{
  v4 = a3;
  if ([v4 state] == 2)
  {
    v5 = [(ICTableAttachmentViewController *)self tableContentView];
    [v4 locationInView:v5];
    v7 = v6;
    v9 = v8;

    [(ICTableAttachmentViewController *)self textRangeDraggedAtLocation:v7, v9];
  }

  else if ([v4 state] == 3 || objc_msgSend(v4, "state") == 4 || objc_msgSend(v4, "state") == 5)
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

- (void)dragCellRange:(id)a3
{
  v10 = a3;
  if ([v10 state] == 1)
  {
    v4 = [v10 view];
    [(ICTableAttachmentViewController *)self cellRangeDragBeganOnView:v4];
  }

  else if ([v10 state] == 2)
  {
    v5 = [(ICTableAttachmentViewController *)self tableContentView];
    [v10 locationInView:v5];
    v7 = v6;
    v9 = v8;

    [(ICTableAttachmentViewController *)self cellRangeDraggedAtLocation:v7, v9];
  }

  else if ([v10 state] == 3 || objc_msgSend(v10, "state") == 4 || objc_msgSend(v10, "state") == 5)
  {
    [(ICiOSTableAttachmentViewController *)self showRangeSelectionMenu];
  }
}

- (void)selectCell
{
  v3 = [(ICTableAttachmentViewController *)self selectionHighlightView];
  [v3 removeFromSuperview];

  v4 = [(ICiOSTableAttachmentViewController *)self view];
  v5 = [(ICTableAttachmentViewController *)self selectionHighlightView];
  [v4 addSubview:v5];

  v6 = [(ICTableAttachmentViewController *)self selectionHighlightView];
  [v6 becomeFirstResponder];

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
    v3 = [(ICTableAttachmentViewController *)self tableSelection];
    v4 = [v3 type];

    if (v4 == 4)
    {
      v5 = [(ICTableAttachmentViewController *)self startKnob];
      [v5 center];
      v7 = v6;
      v9 = v8;

      v10 = [(ICTableAttachmentViewController *)self endKnob];
      [v10 center];
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

- (void)dragColumn:(id)a3
{
  v11 = a3;
  v4 = [(ICiOSTableAttachmentViewController *)self view];
  [v11 locationInView:v4];
  v6 = v5;
  v8 = v7;

  if ([v11 state] == 1)
  {
    v9 = [MEMORY[0x277D75718] sharedMenuController];
    [v9 setMenuVisible:0 animated:1];

    v10 = [MEMORY[0x277D75678] activeInstance];
    [v10 removeAutocorrection];

    [(ICTableAttachmentViewController *)self dragBeganOnColumnOrRow:1 atLocation:v6, v8];
  }

  else if ([v11 state] == 2)
  {
    [(ICTableAttachmentViewController *)self dragMovedOnColumnOrRow:1 atLocation:v6, v8];
  }

  else if ([v11 state] == 3 || objc_msgSend(v11, "state") == 5 || objc_msgSend(v11, "state") == 4)
  {
    [(ICTableAttachmentViewController *)self dragEndedOnColumnOrRow:1 atLocation:v6, v8];
  }
}

- (void)dragRow:(id)a3
{
  v19 = a3;
  v4 = [(ICiOSTableAttachmentViewController *)self view];
  [v19 locationInView:v4];
  v6 = v5;
  v8 = v7;

  if ([v19 state] == 1)
  {
    v9 = [MEMORY[0x277D75718] sharedMenuController];
    [v9 setMenuVisible:0 animated:1];

    v10 = [MEMORY[0x277D75678] activeInstance];
    [v10 removeAutocorrection];

    [(ICTableAttachmentViewController *)self dragBeganOnColumnOrRow:0 atLocation:v6, v8];
    v11 = [(ICTableAttachmentViewController *)self noteTextView];
    [v11 contentInset];
    v13 = v12;
    v14 = [(ICTableAttachmentViewController *)self tableAutoScroller];
    [v14 setTopThresholdDistance:v13];

    v15 = [(ICTableAttachmentViewController *)self noteTextView];
    [v15 contentInset];
    v17 = v16;
    v18 = [(ICTableAttachmentViewController *)self tableAutoScroller];
    [v18 setBottomThresholdDistance:v17];
  }

  else if ([v19 state] == 2)
  {
    [(ICTableAttachmentViewController *)self dragMovedOnColumnOrRow:0 atLocation:v6, v8];
  }

  else if ([v19 state] == 3 || objc_msgSend(v19, "state") == 5 || objc_msgSend(v19, "state") == 4)
  {
    [(ICTableAttachmentViewController *)self dragEndedOnColumnOrRow:0 atLocation:v6, v8];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a3;
  v6 = [(ICTableAttachmentViewController *)self tableSelection];
  v7 = [v6 type];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 view], v8 = objc_claimAutoreleasedReturnValue(), -[ICTableAttachmentViewController tableContentView](self, "tableContentView"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v8 == v9))
  {
    v15 = [(ICTableAttachmentViewController *)self table];
    if ([v15 columnCount])
    {
      v16 = [(ICTableAttachmentViewController *)self table];
      isKindOfClass = [v16 rowCount] == 0;
    }

    else
    {
      isKindOfClass = 1;
    }
  }

  else
  {
    v10 = [v5 view];
    v11 = [(ICTableAttachmentViewController *)self columnButton];

    if (v10 == v11)
    {
      isKindOfClass = (v7 - 1) < 2;
    }

    else
    {
      v12 = [v5 view];
      v13 = [(ICTableAttachmentViewController *)self rowButton];

      if (v12 == v13)
      {
        isKindOfClass = (v7 & 0xFFFFFFFFFFFFFFFDLL) == 1;
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

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)toggleBoldAction
{
  v3 = MEMORY[0x277D750C8];
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 localizedStringForKey:@"Bold" value:&stru_282757698 table:0];
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
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 localizedStringForKey:@"Italic" value:&stru_282757698 table:0];
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
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 localizedStringForKey:@"Underline" value:&stru_282757698 table:0];
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
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 localizedStringForKey:@"Strikethrough" value:&stru_282757698 table:0];
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
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 localizedStringForKey:@"Table Direction" value:&stru_282757698 table:0];
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
  v3 = [(ICTableAttachmentViewController *)self tableSelection];
  if ([v3 isRangeOrSpanningSelection])
  {
    v4 = [(ICTableAttachmentViewController *)self table];
    v5 = [(ICTableAttachmentViewController *)self tableSelection];
    v6 = [v5 columns];
    v7 = [(ICTableAttachmentViewController *)self tableSelection];
    v8 = [v7 rows];
    v9 = [v4 isEmptyAtColumnIdentifiers:v6 rowIdentifiers:v8];

    if (v9)
    {
      v10 = 0;
      goto LABEL_7;
    }

    v3 = [MEMORY[0x277CBEB18] array];
    v11 = [(ICiOSTableAttachmentViewController *)self toggleBoldAction];
    [v3 ic_addNonNilObject:v11];

    v12 = [(ICiOSTableAttachmentViewController *)self toggleItalicAction];
    [v3 ic_addNonNilObject:v12];

    v13 = [(ICiOSTableAttachmentViewController *)self toggleUnderlineAction];
    [v3 ic_addNonNilObject:v13];

    v14 = [(ICiOSTableAttachmentViewController *)self toggleStrikethroughAction];
    [v3 ic_addNonNilObject:v14];

    v15 = [(ICiOSTableAttachmentViewController *)self toggleTableDirectionAction];
    [v3 ic_addNonNilObject:v15];

    v16 = MEMORY[0x277D75710];
    v17 = [MEMORY[0x277CCA8D8] mainBundle];
    v18 = [v17 localizedStringForKey:@"Format" value:&stru_282757698 table:0];
    v19 = [MEMORY[0x277D755B8] systemImageNamed:@"character"];
    v20 = [v3 copy];
    v10 = [v16 menuWithTitle:v18 image:v19 identifier:0 options:0 children:v20];
  }

  else
  {
    v10 = 0;
  }

LABEL_7:

  return v10;
}

- (void)buildMenuWithBuilder:(id)a3
{
  v7.receiver = self;
  v7.super_class = ICiOSTableAttachmentViewController;
  v4 = a3;
  [(ICiOSTableAttachmentViewController *)&v7 buildMenuWithBuilder:v4];
  v5 = *MEMORY[0x277D76D70];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__ICiOSTableAttachmentViewController_buildMenuWithBuilder___block_invoke;
  v6[3] = &unk_2781AC828;
  v6[4] = self;
  [v4 replaceChildrenOfMenuForIdentifier:v5 fromChildrenBlock:v6];
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
  v3 = [(ICTableAttachmentViewController *)self tableSelection];
  if ([v3 type] == 2)
  {
    v4 = [(ICTableAttachmentViewController *)self table];
    v5 = [v4 columnCount];

    if (v5 != 1)
    {
      v6 = [MEMORY[0x277CCA8D8] mainBundle];
      v7 = [v6 localizedStringForKey:@"Delete %lu Column" value:&stru_282757698 table:0];

      v8 = MEMORY[0x277D750C8];
      v9 = MEMORY[0x277CCACA8];
      v10 = [(ICTableAttachmentViewController *)self tableSelection];
      v11 = [v10 columns];
      v12 = [v9 localizedStringWithFormat:v7, objc_msgSend(v11, "count")];
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
  v3 = [(ICTableAttachmentViewController *)self tableSelection];
  v4 = [v3 type];

  if (v4 == 2)
  {
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 localizedStringForKey:@"ADD_COLUMN_MENU_ACTION" value:@"Add Column" table:@"Localizable"];

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
  v3 = [(ICTableAttachmentViewController *)self tableSelection];
  if ([v3 type] == 3)
  {
    v4 = [(ICTableAttachmentViewController *)self table];
    v5 = [v4 rowCount];

    if (v5 != 1)
    {
      v6 = [MEMORY[0x277CCA8D8] mainBundle];
      v7 = [v6 localizedStringForKey:@"Delete %lu Row" value:&stru_282757698 table:0];

      v8 = MEMORY[0x277D750C8];
      v9 = MEMORY[0x277CCACA8];
      v10 = [(ICTableAttachmentViewController *)self tableSelection];
      v11 = [v10 rows];
      v12 = [v9 localizedStringWithFormat:v7, objc_msgSend(v11, "count")];
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
  v3 = [(ICTableAttachmentViewController *)self tableSelection];
  v4 = [v3 type];

  if (v4 == 3)
  {
    v5 = MEMORY[0x277D750C8];
    v6 = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [v6 localizedStringForKey:@"Add Row" value:&stru_282757698 table:0];
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
  v3 = [(ICTableAttachmentViewController *)self tableSelection];
  if (([v3 isRangeOrSpanningSelection] & 1) == 0)
  {

    return 0;
  }

  v4 = [(ICTableAttachmentViewController *)self table];
  v5 = [(ICTableAttachmentViewController *)self tableSelection];
  v6 = [v5 columns];
  v7 = [(ICTableAttachmentViewController *)self tableSelection];
  v8 = [v7 rows];
  v9 = [v4 isEmptyAtColumnIdentifiers:v6 rowIdentifiers:v8];

  if (v9)
  {
    return 0;
  }

  v10 = MEMORY[0x277D750C8];
  v11 = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [v11 localizedStringForKey:@"Copy" value:&stru_282757698 table:0];
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
  v3 = [(ICTableAttachmentViewController *)self tableSelection];
  if ([v3 isRangeOrSpanningSelection])
  {
    v4 = [(ICTableAttachmentViewController *)self table];
    v5 = [(ICTableAttachmentViewController *)self tableSelection];
    v6 = [v5 columns];
    v7 = [(ICTableAttachmentViewController *)self tableSelection];
    v8 = [v7 rows];
    v9 = [v4 isEmptyAtColumnIdentifiers:v6 rowIdentifiers:v8];

    if ((v9 & 1) == 0)
    {
      v10 = MEMORY[0x277D750C8];
      v11 = [MEMORY[0x277CCA8D8] mainBundle];
      v12 = [v11 localizedStringForKey:@"Cut" value:&stru_282757698 table:0];
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
  v3 = [MEMORY[0x277D75810] generalPasteboard];
  if ([v3 hasStrings])
  {
    v4 = [(ICTableAttachmentViewController *)self tableSelection];
    v5 = [v4 isRangeOrSpanningSelection];

    if (v5)
    {
      v6 = MEMORY[0x277D750C8];
      v7 = [MEMORY[0x277CCA8D8] mainBundle];
      v8 = [v7 localizedStringForKey:@"Paste" value:&stru_282757698 table:0];
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
  v3 = [(ICTableAttachmentViewController *)self tableSelection];
  v4 = [v3 type];

  if (v4 == 2)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [(ICiOSTableAttachmentViewController *)self removeColumnAction];
    [v5 ic_addNonNilObject:v6];

    v7 = [(ICiOSTableAttachmentViewController *)self addColumnAction];
    [v5 ic_addNonNilObject:v7];

    v8 = [(ICiOSTableAttachmentViewController *)self formatMenu];
    [v5 ic_addNonNilObject:v8];

    v9 = [(ICiOSTableAttachmentViewController *)self copySelectionAction];
    [v5 ic_addNonNilObject:v9];

    v10 = [(ICiOSTableAttachmentViewController *)self cutSelectionAction];
    [v5 ic_addNonNilObject:v10];

    v11 = [(ICiOSTableAttachmentViewController *)self pasteSelectionAction];
    [v5 ic_addNonNilObject:v11];

    v12 = [MEMORY[0x277D75710] menuWithChildren:v5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)rowMenu
{
  v3 = [(ICTableAttachmentViewController *)self tableSelection];
  v4 = [v3 type];

  if (v4 == 3)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [(ICiOSTableAttachmentViewController *)self removeRowAction];
    [v5 ic_addNonNilObject:v6];

    v7 = [(ICiOSTableAttachmentViewController *)self addRowAction];
    [v5 ic_addNonNilObject:v7];

    v8 = [(ICiOSTableAttachmentViewController *)self formatMenu];
    [v5 ic_addNonNilObject:v8];

    v9 = [(ICiOSTableAttachmentViewController *)self copySelectionAction];
    [v5 ic_addNonNilObject:v9];

    v10 = [(ICiOSTableAttachmentViewController *)self cutSelectionAction];
    [v5 ic_addNonNilObject:v10];

    v11 = [(ICiOSTableAttachmentViewController *)self pasteSelectionAction];
    [v5 ic_addNonNilObject:v11];

    v12 = [MEMORY[0x277D75710] menuWithChildren:v5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v5 = self;
  v6 = [(ICiOSTableAttachmentViewController *)self biuTextView:a3];

  if (v6)
  {
    if (sel_isEqual(a3, sel_toggleBoldface_) || sel_isEqual(a3, sel_toggleItalics_) || sel_isEqual(a3, sel_toggleUnderline_))
    {
      goto LABEL_9;
    }

    v7 = sel_strikethrough_;
    goto LABEL_6;
  }

  if (sel_isEqual(a3, sel_strikethrough_))
  {
    goto LABEL_9;
  }

  if (sel_isEqual(a3, sel_cut_) || sel_isEqual(a3, sel_copy_))
  {
    v9 = [(ICTableAttachmentViewController *)v5 tableSelection];
    if ([v9 isRangeOrSpanningSelection])
    {
      v10 = [(ICTableAttachmentViewController *)v5 table];
      v11 = [(ICTableAttachmentViewController *)v5 tableSelection];
      v12 = [v11 columns];
      v13 = [(ICTableAttachmentViewController *)v5 tableSelection];
      v14 = [v13 rows];
      LODWORD(v5) = [v10 isEmptyAtColumnIdentifiers:v12 rowIdentifiers:v14] ^ 1;

LABEL_15:
LABEL_20:

      return v5;
    }

    goto LABEL_19;
  }

  if (sel_isEqual(a3, sel_paste_))
  {
    v9 = [MEMORY[0x277D75810] generalPasteboard];
    if ([v9 hasStrings])
    {
      v10 = [(ICTableAttachmentViewController *)v5 tableSelection];
      LOBYTE(v5) = [v10 isRangeOrSpanningSelection];
      goto LABEL_15;
    }

LABEL_19:
    LOBYTE(v5) = 0;
    goto LABEL_20;
  }

  if (sel_isEqual(a3, sel_convertToTag_))
  {

    return [(ICiOSTableAttachmentViewController *)v5 canConvertToTag];
  }

  else
  {
    if (!sel_isEqual(a3, sel_convertToText_))
    {
      if (sel_isEqual(a3, sel_makeTextWritingDirectionLeftToRight_))
      {
        if ([MEMORY[0x277D36828] supportsRTL])
        {
          v15 = [(ICTableAttachmentViewController *)v5 tableSelection];
          v16 = [v15 type];

          if (v16 == 2)
          {
            v17 = [(ICTableAttachmentViewController *)v5 table];
            v18 = [v17 isRightToLeft];

            return v18;
          }
        }

        if (![MEMORY[0x277D36828] supportsRTL])
        {
          goto LABEL_7;
        }

        v21 = [(ICTableAttachmentViewController *)v5 tableSelection];
        v22 = [v21 type];

        if (v22 != 4)
        {
          goto LABEL_7;
        }

        v23 = [(ICTableAttachmentViewController *)v5 textDirectionForCurrentSelection]== 1;
      }

      else
      {
        if (!sel_isEqual(a3, sel_makeTextWritingDirectionRightToLeft_))
        {
          if (sel_isEqual(a3, sel_copyTable_) || sel_isEqual(a3, sel_shareTable_) || sel_isEqual(a3, sel_convertTableToText_))
          {
            goto LABEL_9;
          }

          v7 = sel_deleteTable_;
LABEL_6:
          if (!sel_isEqual(a3, v7))
          {
LABEL_7:
            LOBYTE(v5) = 0;
            return v5;
          }

LABEL_9:
          LOBYTE(v5) = 1;
          return v5;
        }

        if ([MEMORY[0x277D36828] supportsRTL])
        {
          v19 = [(ICTableAttachmentViewController *)v5 tableSelection];
          v20 = [v19 type];

          if (v20 == 2)
          {
            v9 = [(ICTableAttachmentViewController *)v5 table];
            LODWORD(v5) = [v9 isRightToLeft] ^ 1;
            goto LABEL_20;
          }
        }

        if (![MEMORY[0x277D36828] supportsRTL])
        {
          goto LABEL_7;
        }

        v24 = [(ICTableAttachmentViewController *)v5 tableSelection];
        v25 = [v24 type];

        if (v25 != 4)
        {
          goto LABEL_7;
        }

        v23 = [(ICTableAttachmentViewController *)v5 textDirectionForCurrentSelection]== 0;
      }

      LOBYTE(v5) = v23;
      return v5;
    }

    return [(ICiOSTableAttachmentViewController *)v5 canConvertToText];
  }
}

- (BOOL)canConvertToTag
{
  v3 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
  v4 = [v3 selectedText];
  if ([v4 ic_canConvertToTag])
  {
    v5 = ![(ICiOSTableAttachmentViewController *)self canConvertToText];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)convertToTag:(id)a3
{
  v4 = MEMORY[0x277D35EF8];
  v5 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
  v6 = [v5 selectedText];
  v7 = [(ICTableAttachmentViewController *)self note];
  v19 = [v4 createHashtagAttachmentIfApplicableWithHashtagText:v6 creatingHashtagIfNecessary:1 note:v7 parentAttachment:0];

  if (v19)
  {
    v8 = objc_alloc(MEMORY[0x277D366A8]);
    v9 = [(ICTableAttachmentViewController *)self note];
    v10 = [v8 initWithNote:v9];

    v11 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
    v12 = [v11 selectedRange];
    v14 = v13;
    v15 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
    v16 = [v10 addInlineAttachment:v19 atTextRange:v12 textView:{v14, v15}];

    [v19 updateChangeCountWithReason:@"Converted text to tag"];
    v17 = [(ICTableAttachmentViewController *)self note];
    [v17 updateChangeCountWithReason:@"Converted text to tag"];

    v18 = [(ICTableAttachmentViewController *)self note];
    [v18 save];
  }

  [(ICiOSTableAttachmentViewController *)self setEditing:1 animated:1];
}

- (BOOL)canConvertToText
{
  v3 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
  v4 = [v3 textController];
  v5 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
  v6 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
  v7 = [v6 selectedRange];
  v9 = [v4 canConvertInlineAttachmentToTextInTextView:v5 forRange:{v7, v8}];

  return v9;
}

- (void)convertToText:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
    v19.location = [v5 selectedRange];
    v6 = NSStringFromRange(v19);
    v16 = 138412290;
    v17 = v6;
    _os_log_impl(&dword_2151A1000, v4, OS_LOG_TYPE_INFO, "Converting inline attachment at %@ to text", &v16, 0xCu);
  }

  v7 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
  v8 = [v7 textController];
  v9 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
  v10 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
  v11 = [v10 selectedRange];
  [v8 convertInlineAttachmentToTextInTextView:v9 forRange:{v11, v12}];

  v13 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
  [(ICiOSTableAttachmentViewController *)self textViewDidChange:v13];

  v14 = [(ICTableAttachmentViewController *)self note];
  [v14 updateChangeCountWithReason:@"Converted tag to text"];

  v15 = [(ICTableAttachmentViewController *)self note];
  [v15 save];
}

- (void)menuWillHide:(id)a3
{
  [(ICiOSTableAttachmentViewController *)self setMenuHiding:1];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277D76CB8] object:0];
}

- (void)menuDidHide:(id)a3
{
  [(ICiOSTableAttachmentViewController *)self setMenuHiding:0];
  [(ICiOSTableAttachmentViewController *)self setShowingTextStyleOptions:0];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277D76CA8] object:0];

  v5 = [(ICiOSTableAttachmentViewController *)self biuTextView];
  [v5 removeFromSuperview];

  [(ICiOSTableAttachmentViewController *)self setBiuTextView:0];

  [(ICiOSTableAttachmentViewController *)self moveAccessibilityFocusToSelectedColumnOrRowButton];
}

- (void)paste:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__ICiOSTableAttachmentViewController_paste___block_invoke;
  v6[3] = &unk_2781ABEB8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)strikethrough:(id)a3
{
  v7 = a3;
  v4 = [(ICTableAttachmentViewController *)self tableSelection];
  v5 = [v4 type];

  if (v5 == 1)
  {
    v6 = [(ICTableAttachmentViewController *)self currentlyEditingTextView];
    [v6 ic_toggleStrikethrough];
  }

  else
  {
    [(ICTableAttachmentViewController *)self toggleStrikethrough:v7];
  }
}

- (void)setTextViewWritingDirection:(int64_t)a3 sender:(id)a4
{
  v10 = a4;
  v6 = [(ICTableAttachmentViewController *)self tableSelection];
  v7 = [v6 type];

  if (v7 == 2)
  {
    [(ICTableAttachmentViewController *)self reverseTableColumnDirection:v10];
  }

  else
  {
    v8 = [(ICTableAttachmentViewController *)self tableSelection];
    v9 = [v8 type];

    if (v9 == 4)
    {
      [(ICTableAttachmentViewController *)self setSelectionDirection:a3];
    }

    else if ([(ICTableAttachmentViewController *)self containedInNoteSelection])
    {
      [(ICTableAttachmentViewController *)self updateTableColumnDirectionForWritingDirection:a3];
    }
  }
}

- (void)shareTable:(id)a3
{
  v27[3] = *MEMORY[0x277D85DE8];
  v4 = [(ICAttachmentViewController *)self attachment];
  v5 = objc_alloc(MEMORY[0x277D546D8]);
  v6 = [v4 activityItems];
  v7 = [v5 initWithActivityItems:v6 applicationActivities:0];

  v8 = [(ICAttachmentViewController *)self attachment];
  v9 = [v8 note];
  v10 = [v9 account];
  [v7 setIsContentManaged:{objc_msgSend(v10, "isManaged")}];

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
  v14 = [(ICiOSTableAttachmentViewController *)self view];
  [v14 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [v7 popoverPresentationController];
  [v23 setSourceRect:{v16, v18, v20, v22}];

  v24 = [(ICiOSTableAttachmentViewController *)self view];
  v25 = [v24 superview];
  v26 = [v7 popoverPresentationController];
  [v26 setSourceView:v25];
}

- (id)icTableDataFromPasteboard
{
  v2 = [MEMORY[0x277D75810] generalPasteboard];
  v3 = [v2 dataForPasteboardType:@"com.apple.notes.table"];

  return v3;
}

- (id)soloPlainTextStringFromPasteboard
{
  v2 = [MEMORY[0x277D75810] generalPasteboard];
  v3 = [v2 items];
  v4 = [v3 count];

  if (v4 == 1 && ([v2 dataForPasteboardType:*MEMORY[0x277D35D08]], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v6 = [v2 string];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)notesDataFromPasteboard
{
  v2 = [MEMORY[0x277D75810] generalPasteboard];
  v3 = [v2 dataForPasteboardType:*MEMORY[0x277D35D08]];

  return v3;
}

- (void)copySelection:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D75810] generalPasteboard];
  v5 = [(ICTableAttachmentViewController *)self pasteboardItemsForSelection];
  v7[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v4 setItems:v6];

  [(ICiOSTableAttachmentViewController *)self _accessibilityPostPasteboardTextForOperation:*MEMORY[0x277CE6E18]];
}

- (void)selectionDidResignFirstResponder:(id)a3
{
  v12.receiver = self;
  v12.super_class = ICiOSTableAttachmentViewController;
  [(ICTableAttachmentViewController *)&v12 selectionDidResignFirstResponder:a3];
  if (![(ICTableAttachmentViewController *)self lockSelection])
  {
    [(ICiOSTableAttachmentViewController *)self sendAnalyticsForEndEditIfNeeded];
    v4 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
    [v4 updateTextInputAccessoryViewForDidEndEditing:0];

    v5 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
    v6 = [v5 auxiliaryResponder];
    if (v6)
    {
    }

    else
    {
      v7 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
      v8 = [v7 textView];
      v9 = [v8 isBecomingFirstResponder];

      if (v9)
      {
        return;
      }

      v10 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
      v11 = [v10 textView];
      [v11 setEditable:0];

      v5 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
      [v5 setEditing:0];
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

- (void)tableAttachmentSelectionDidChange:(id)a3
{
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
  [v5 postNotificationName:@"ICNoteEditorViewControllerSelectionDidChangeNotification" object:v4];
}

- (BOOL)textViewShouldBeginEditing:(id)a3
{
  v4 = a3;
  v5 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
  v6 = [v5 textViewShouldBeginEditing:v4];

  if (v6)
  {
    v7 = [(ICiOSTableAttachmentViewController *)self auxiliaryTextViewHost];
    [v7 setAuxiliaryResponder:v4];

    v8 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
    v9 = [v8 textViewInputAccessoryView];
    [v4 setInputAccessoryView:v9];
  }

  return v6;
}

- (void)textViewDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
  if ([v5 isStyleSelectorInputViewPresenting])
  {
  }

  else
  {
    v6 = [v4 isFirstResponder];

    if (v6)
    {
      [(ICiOSTableAttachmentViewController *)self sendAnalyticsForStartEditIfNeeded];
      v7 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
      [v7 setEditing:1];

      v8 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
      v9 = [v8 textView];
      v10 = [v9 ink];
      v11 = [v10 _isHandwritingInk];

      if ((v11 & 1) == 0)
      {
        v12 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
        [v12 showInkPicker:0 animated:1];
      }

      v13 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
      [v13 updateTextInputAccessoryViewForDidBeginEditing:v4];

      if (![(ICTableAttachmentViewController *)self preventScrolling]&& ![(ICTableAttachmentViewController *)self makingCellFirstResponder])
      {
        objc_initWeak(&location, self);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __62__ICiOSTableAttachmentViewController_textViewDidBeginEditing___block_invoke;
        block[3] = &unk_2781AC760;
        objc_copyWeak(&v16, &location);
        v15 = v4;
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

- (void)textViewDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
  v6 = [v5 isStyleSelectorInputViewPresenting];

  if (v6)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  v7 = ICDynamicCast();
  if (v7)
  {
    v8 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
    v9 = [v8 auxiliaryResponder];
    v10 = v9;
    if (v7 == v9)
    {
      v11 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
      v12 = [v11 textView];
      v13 = [v12 isBecomingFirstResponder];

      if (v13)
      {
LABEL_8:
        [(ICTableAttachmentViewController *)self endCellEditingSessionWithTextView:v7];
        v16 = [(ICAttachmentViewController *)self attachment];
        [v16 setIsBeingEditedLocallyOnDevice:0];

        goto LABEL_9;
      }

      v14 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
      v15 = [v14 textView];
      [v15 setEditable:0];

      v8 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
      [v8 setEditing:0];
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
  v25 = self;
  v17 = v4;
  v26 = v17;
  dispatch_async(MEMORY[0x277D85CD0], &v21);
  [v17 setInputAccessoryView:{0, v21, v22, v23, v24, v25}];
  v18 = [(ICiOSTableAttachmentViewController *)self keyboardWillShowScrollObservation];

  if (v18)
  {
    v19 = [MEMORY[0x277CCAB98] defaultCenter];
    v20 = [(ICiOSTableAttachmentViewController *)self keyboardWillShowScrollObservation];
    [v19 removeObserver:v20];

    [(ICiOSTableAttachmentViewController *)self setKeyboardWillShowScrollObservation:0];
  }

LABEL_12:
}

void __60__ICiOSTableAttachmentViewController_textViewDidEndEditing___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) noteEditorViewController];
  [v2 updateTextInputAccessoryViewForDidEndEditing:*(a1 + 40)];
}

- (void)beginEditingCellWithColumnID:(id)a3 andRowID:(id)a4 textRange:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ICiOSTableAttachmentViewController *)self keyboardWillShowScrollObservation];

  if (v11)
  {
    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = [(ICiOSTableAttachmentViewController *)self keyboardWillShowScrollObservation];
    [v12 removeObserver:v13];

    [(ICiOSTableAttachmentViewController *)self setKeyboardWillShowScrollObservation:0];
  }

  objc_initWeak(&location, self);
  v14 = [MEMORY[0x277CCAB98] defaultCenter];
  v15 = *MEMORY[0x277D76C60];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __86__ICiOSTableAttachmentViewController_beginEditingCellWithColumnID_andRowID_textRange___block_invoke;
  v20[3] = &unk_2781AC8A0;
  objc_copyWeak(&v23, &location);
  v16 = v8;
  v21 = v16;
  v17 = v9;
  v22 = v17;
  v18 = [v14 addObserverForName:v15 object:0 queue:0 usingBlock:v20];
  [(ICiOSTableAttachmentViewController *)self setKeyboardWillShowScrollObservation:v18];

  v19.receiver = self;
  v19.super_class = ICiOSTableAttachmentViewController;
  [(ICTableAttachmentViewController *)&v19 beginEditingCellWithColumnID:v16 andRowID:v17 textRange:v10];

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

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
  v6 = [v5 viewControllerManager];
  [v6 dismissOverlayContent];

  v7 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
  [v7 setHasMadeEdits];

  [v4 updateTextViewForDidChange];
  [(ICTableAttachmentViewController *)self setNeedsSaveAfterUserEdit];
  v15 = v4;
  v8 = v4;
  dispatchMainAfterDelay();
  v9 = [(ICTableAttachmentViewController *)self tableSelection];
  v10 = [v9 columns];
  v11 = [v10 firstObject];

  v12 = [(ICTableAttachmentViewController *)self tableSelection];
  v13 = [v12 rows];
  v14 = [v13 firstObject];

  if (v11 && v14)
  {
    [(ICTableAttachmentViewController *)self updateCellSizeAtColumn:v11 row:v14 immediateWidthUpdate:0];
  }
}

- (void)textViewDidChangeSelection:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = ICDynamicCast();
  objc_opt_class();
  v6 = [v4 textStorage];
  v7 = ICDynamicCast();

  v8 = [v4 selectedRange];
  v10 = v9;
  v11 = v8;
  v65 = v4;
  v66 = v7;
  if (([v7 isApplyingUndoCommand] & 1) == 0)
  {
    v12 = [v4 selectedRange];
    v14 = v13;
    v15 = [v4 selectedRange];
    v17 = v16;
    v71.location = [v5 previousSelectedRange];
    v71.length = v18;
    v69.location = v15;
    v4 = v65;
    v69.length = v17;
    v19 = NSUnionRange(v69, v71);
    v7 = v66;
    if (v12 == v19.location && v14 == v19.length)
    {
      v11 = [v5 previousSelectedRange];
    }
  }

  v67 = 0;
  v68 = 0;
  v21 = [v7 rowAtIndex:v11 rowRange:&v67];
  v22.length = v68;
  v22.location = v68 + v67;
  if (v8 >= v68 + v67)
  {
    v22.length = 0;
  }

  else if (v68)
  {
    v70.location = v8;
    v70.length = v10;
    v22.location = v67;
    v22 = NSIntersectionRange(v70, v22);
  }

  else
  {
    v22.location = v67;
  }

  if (v22.location == v8 && v22.length == v10)
  {
    v23 = [(ICTableAttachmentViewController *)self tableSelection];
    if (![v23 draggingText])
    {
      v24 = [(ICTableAttachmentViewController *)self tableSelection];
      if (([v24 moving] & 1) != 0 || (objc_msgSend(v4, "isFirstResponder") & 1) == 0)
      {
      }

      else
      {
        v25 = [v5 isResigningFirstResponder];

        if (v25)
        {
          goto LABEL_24;
        }

        objc_opt_class();
        v23 = ICDynamicCast();
        v26 = [v4 selectedTextRange];
        v27 = [v26 isEmpty];

        if (v27)
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

          v61 = [(ICTableAttachmentViewController *)self columnButton];
          [v61 setHidden:1];

          v62 = [(ICTableAttachmentViewController *)self rowButton];
          [v62 setHidden:1];
        }

        if (v23)
        {
          [(ICiOSTableAttachmentViewController *)self didBeginEditingWithTextView:v23];
          [(ICiOSTableAttachmentViewController *)self scrollToCaretIfNeededForTextView:v23];
        }
      }
    }
  }

  else
  {
    [v4 setSelectedRange:?];
  }

LABEL_24:
  v28 = [v5 selectedRange];
  [v5 setPreviousSelectedRange:{v28, v29}];
  v30 = [(ICTableAttachmentViewController *)self noteTextView];
  v31 = [v30 editorController];
  v32 = [v31 hashtagController];
  [v32 setHashtagTableKeyboardDelegate:v5];

  v33 = [(ICTableAttachmentViewController *)self noteTextView];
  v34 = [v33 editorController];
  v35 = [v34 mentionsController];
  [v35 setMentionsTableKeyboardDelegate:v5];

  v36 = [(ICTableAttachmentViewController *)self noteTextView];
  v37 = [v36 editorController];
  v38 = [v37 mentionsController];
  v39 = [v5 selectedRange];
  v41 = v40;
  v42 = [(ICTableAttachmentViewController *)self note];
  v43 = [v5 languageHasSpaces];
  v44 = [(ICAttachmentViewController *)self attachment];
  BYTE1(v63) = v43;
  LOBYTE(v63) = 0;
  v45 = v41;
  v46 = v66;
  LOBYTE(v39) = [v38 checkForMentionInEditedRange:v39 ofTextStorage:v45 note:v66 textView:v42 allowAutoExplicitMention:v5 isEndingEditing:0 languageHasSpaces:v63 parentAttachment:v44];

  if ((v39 & 1) == 0)
  {
    v47 = [(ICTableAttachmentViewController *)self noteTextView];
    v48 = [v47 editorController];
    v49 = [v48 hashtagController];
    v50 = [v5 selectedRange];
    v52 = v51;
    v53 = [(ICTableAttachmentViewController *)self note];
    v54 = [v5 languageHasSpaces];
    v55 = [(ICAttachmentViewController *)self attachment];
    BYTE1(v64) = v54;
    LOBYTE(v64) = 0;
    [v49 checkForHashtagInEditedRange:v50 ofTextStorage:v52 note:v66 textView:v53 allowAutoExplicitHashtag:v5 isEndingEditing:0 languageHasSpaces:v64 parentAttachment:v55];

    v46 = v66;
  }

  v56 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
  v57 = [v56 navigationItemConfiguration];
  [v57 updateSelectionInTextView:v5];

  v58 = [MEMORY[0x277CCAB98] defaultCenter];
  v59 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
  [v58 postNotificationName:@"ICNoteEditorViewControllerSelectionDidChangeNotification" object:v59];
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (![(ICTableAttachmentViewController *)self acceptsKeystrokes])
  {
    goto LABEL_10;
  }

  if ([v8 hasSuffix:@"\n"] && (objc_msgSend(MEMORY[0x277D75658], "ic_isShiftKeyPressed") & 1) == 0)
  {
    if ([v7 returnKeyType] == 4)
    {
      [(ICTableAttachmentViewController *)self moveNextCell];
    }

    else
    {
      [(ICTableAttachmentViewController *)self moveReturnCell];
    }

    goto LABEL_10;
  }

  if ([v8 hasSuffix:@"\t"])
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

- (void)scrollToCaretIfNeededForTextView:(id)a3
{
  v6 = a3;
  v4 = [v6 selectedTextRange];
  v5 = [v4 isEmpty];

  if (v5)
  {
    [(ICTableAttachmentViewController *)self scrollToSelectionInTextView:v6 animated:1 completion:0];
  }
}

- (void)layoutManager:(id)a3 didCompleteLayoutForTextContainer:(id)a4 atEnd:(BOOL)a5
{
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = [(ICTableAttachmentViewController *)self noteTextView];
  [v7 postNotificationName:@"ICTextViewLayoutDidChangeNotification" object:v6];
}

- (void)selectCurrentColumnForAccessibility
{
  v3 = [(ICTableAttachmentViewController *)self columnButton];
  [(ICiOSTableAttachmentViewController *)self columnButtonPressed:v3];

  LODWORD(v3) = *MEMORY[0x277D76488];
  v4 = [(ICTableAttachmentViewController *)self columnButton];
  UIAccessibilityPostNotification(v3, v4);
}

- (void)selectCurrentRowForAccessibility
{
  v3 = [(ICTableAttachmentViewController *)self rowButton];
  [(ICiOSTableAttachmentViewController *)self rowButtonPressed:v3];

  LODWORD(v3) = *MEMORY[0x277D76488];
  v4 = [(ICTableAttachmentViewController *)self rowButton];
  UIAccessibilityPostNotification(v3, v4);
}

- (void)invalidateCachedChildrenForAccessibilityReparenting
{
  objc_opt_class();
  v3 = [(ICTableAttachmentViewController *)self noteTextView];
  v4 = ICDynamicCast();

  [v4 icaxClearCachedChildrenForReparenting];
}

- (void)updateAccessibilityValueForColumnAndRowButtons
{
  v3 = [(ICTableAttachmentViewController *)self table];
  v4 = [(ICTableAttachmentViewController *)self columnButton];
  v5 = [v4 columnOrRowIdentifiers];
  v6 = [v5 firstObject];
  v7 = [v3 columnIndexForIdentifier:v6];

  v8 = [(ICTableAttachmentViewController *)self table];
  v9 = [(ICTableAttachmentViewController *)self columnButton];
  v10 = [v9 columnOrRowIdentifiers];
  v11 = [v10 lastObject];
  v12 = [v8 columnIndexForIdentifier:v11];

  v13 = [MEMORY[0x277CCA8D8] mainBundle];
  v14 = v13;
  v15 = v7 + 1;
  if (v7 == v12)
  {
    v16 = [v13 localizedStringForKey:@"column %lu" value:&stru_282757698 table:0];

    v17 = MEMORY[0x277CCACA8];
  }

  else
  {
    v16 = [v13 localizedStringForKey:@"columns %lu to %lu" value:&stru_282757698 table:0];

    v17 = MEMORY[0x277CCACA8];
    v35 = v12 + 1;
  }

  v18 = [v17 localizedStringWithFormat:v16, v15, v35];
  v19 = [(ICTableAttachmentViewController *)self columnButton];
  [v19 setAccessibilityValue:v18];

  v20 = [(ICTableAttachmentViewController *)self table];
  v21 = [(ICTableAttachmentViewController *)self rowButton];
  v22 = [v21 columnOrRowIdentifiers];
  v23 = [v22 firstObject];
  v24 = [v20 rowIndexForIdentifier:v23];

  v25 = [(ICTableAttachmentViewController *)self table];
  v26 = [(ICTableAttachmentViewController *)self rowButton];
  v27 = [v26 columnOrRowIdentifiers];
  v28 = [v27 lastObject];
  v29 = [v25 rowIndexForIdentifier:v28];

  v30 = [MEMORY[0x277CCA8D8] mainBundle];
  v31 = v30;
  if (v24 == v29)
  {
    v37 = [v30 localizedStringForKey:@"row %lu" value:&stru_282757698 table:0];

    v32 = MEMORY[0x277CCACA8];
  }

  else
  {
    v37 = [v30 localizedStringForKey:@"rows %lu to %lu" value:&stru_282757698 table:0];

    v32 = MEMORY[0x277CCACA8];
    v36 = v29 + 1;
  }

  v33 = [v32 localizedStringWithFormat:v37, v24 + 1, v36];
  v34 = [(ICTableAttachmentViewController *)self rowButton];
  [v34 setAccessibilityValue:v33];
}

- (void)moveAccessibilityFocusToSelectedColumnOrRowButton
{
  v3 = [(ICTableAttachmentViewController *)self columnButton];
  v4 = [v3 isSelected];

  if (v4)
  {
    v5 = [(ICTableAttachmentViewController *)self columnButton];
LABEL_5:
    v8 = v5;
    goto LABEL_7;
  }

  v6 = [(ICTableAttachmentViewController *)self rowButton];
  v7 = [v6 isSelected];

  if (v7)
  {
    v5 = [(ICTableAttachmentViewController *)self rowButton];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:
  v9 = v8;
  UIAccessibilityPostNotification(*MEMORY[0x277D76488], v8);
}

- (void)speakAccessibilityAnnouncementForMoveToCellWithColumnID:(id)a3 rowID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICTableAttachmentViewController *)self table];
  v9 = [v8 columnIndexForIdentifier:v7];

  v10 = [(ICTableAttachmentViewController *)self table];
  v11 = [v10 rowIndexForIdentifier:v6];

  v12 = [(ICTableAttachmentViewController *)self tableAXController];
  v16 = [v12 cellElementForColumnIndex:v9 rowIndex:v11];

  v13 = [v16 accessibilityLabel];
  v15 = [v16 accessibilityValue];
  v14 = __ICAccessibilityStringForVariables();

  UIAccessibilityPostNotification(*MEMORY[0x277D76438], v14);
}

- (void)speakAccessibilityExitedTableAnnouncementAndDidRemoveRow:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = v4;
  if (v3)
  {
    v6 = @"Removed empty row and exited table";
  }

  else
  {
    v6 = @"Exited table";
  }

  argument = [v4 localizedStringForKey:v6 value:&stru_282757698 table:0];

  UIAccessibilityPostNotification(*MEMORY[0x277D76438], argument);
}

- (void)sendAnalyticsForStartEditIfNeeded
{
  if (![(ICiOSTableAttachmentViewController *)self isTrackingAnalyticsEdit])
  {
    [(ICiOSTableAttachmentViewController *)self setIsTrackingAnalyticsEdit:1];
    v3 = [(ICTableAttachmentViewController *)self table];
    v4 = [v3 columnCount];

    v5 = [(ICTableAttachmentViewController *)self table];
    v6 = [v5 rowCount];

    v7 = [(ICiOSTableAttachmentViewController *)self eventReporter];
    [v7 pushStartTableDataWithStartColumns:v4 startRows:v6];
  }
}

- (void)sendAnalyticsForEndEditIfNeeded
{
  objc_opt_class();
  v3 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
  v4 = [v3 auxiliaryResponder];
  v16 = ICDynamicCast();

  if ([(ICiOSTableAttachmentViewController *)self isTrackingAnalyticsEdit])
  {
    if (v16)
    {
      v5 = [(ICiOSTableAttachmentViewController *)self view];
      if ([v16 isDescendantOfView:v5])
      {
        v6 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
        v7 = [v6 textView];
        v8 = [v7 isBecomingFirstResponder];

        if (!v8)
        {
          goto LABEL_8;
        }
      }

      else
      {
      }
    }

    v9 = [(ICTableAttachmentViewController *)self table];
    v10 = [v9 columnCount];

    v11 = [(ICTableAttachmentViewController *)self table];
    v12 = [v11 rowCount];

    v13 = [(ICiOSTableAttachmentViewController *)self eventReporter];
    v14 = [(ICiOSTableAttachmentViewController *)self noteEditorViewController];
    v15 = [v14 note];
    [v13 submitTableEditEventForNote:v15 endColumns:v10 endRows:v12];

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
      v3 = [(ICiOSTableAttachmentViewController *)self viewIfLoaded];

      if (v3)
      {
        v4 = objc_alloc(MEMORY[0x277D35978]);
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        v7 = [(ICiOSTableAttachmentViewController *)self view];
        v8 = [v4 initWithSubTrackerName:v6 view:v7];
        eventReporter = self->_eventReporter;
        self->_eventReporter = v8;

        v10 = [MEMORY[0x277CCAB98] defaultCenter];
        [v10 addObserver:self selector:sel_eventReporterLostSession_ name:*MEMORY[0x277D35958] object:self->_eventReporter];
      }
    }
  }

  v11 = self->_eventReporter;

  return v11;
}

- (void)eventReporterLostSession:(id)a3
{
  eventReporter = self->_eventReporter;
  self->_eventReporter = 0;
  v5 = a3;

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = *MEMORY[0x277D35958];
  v7 = [v5 object];

  [v8 removeObserver:self name:v6 object:v7];
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