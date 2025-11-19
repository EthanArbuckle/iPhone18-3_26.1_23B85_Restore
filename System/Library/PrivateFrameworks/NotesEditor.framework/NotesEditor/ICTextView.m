@interface ICTextView
+ (double)overrideEdgeInset;
+ (void)initialize;
- (BOOL)_accessibilityBeginUndoableTextInsertion;
- (BOOL)_accessibilityEndUndoableTextInsertion;
- (BOOL)attachmentViewUnderTouches:(id)a3;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)hideCompatibilityBanner;
- (BOOL)isEditingOnSystemPaper;
- (BOOL)isPaperLinkBarShowingOrWillShow;
- (BOOL)isPreviewing;
- (BOOL)isScrolling;
- (BOOL)isSearchResultView:(id)a3;
- (BOOL)keyboardInput:(id)a3 shouldInsertText:(id)a4 isMarkedText:(BOOL)a5;
- (BOOL)resignFirstResponder;
- (BOOL)selectionSupportsFindInNote;
- (BOOL)shouldAutoScroll;
- (BOOL)shouldReplaceFoundTextInRange:(id)a3 inDocument:(id)a4 withText:(id)a5;
- (BOOL)shouldUpdateVisibleSupplementalViewsInLayoutSubviews;
- (BOOL)showCompatibilityBannerWithParentViewController:(id)a3;
- (BOOL)touchesShouldCancelInContentView:(id)a3;
- (CGPoint)clippedContentOffset:(CGPoint)a3;
- (CGPoint)distanceConsumedByEmbeddedScrollViews;
- (CGPoint)lastProposedContentOffset;
- (CGPoint)rubberBandContentOffset;
- (CGPoint)scrollEmbeddedScrollViewsWithProposedContentOffset:(CGPoint)a3;
- (CGRect)caretRectForPosition:(id)a3;
- (CGRect)currentSetBoundsRect;
- (CGRect)lastDragInsertionRect;
- (CGSize)previousContentSize;
- (ICAttachmentViewDelegate)attachmentViewDelegate;
- (ICTextView)initWithCoder:(id)a3;
- (ICTextView)initWithFrame:(CGRect)a3;
- (NSLayoutConstraint)textContainerLayoutGuideLeading;
- (NSLayoutConstraint)textContainerLayoutGuideTrailing;
- (UIEdgeInsets)minimumMargins;
- (UILayoutGuide)textContainerLayoutGuide;
- (_NSRange)characterRangeFromTextKitRange:(id)a3;
- (double)leadingMargin;
- (double)maxYContentOffset;
- (id)TTTextStorageOptional;
- (id)_icaxUnfilteredAttributedString;
- (id)_nextKeyResponder;
- (id)_targetedPreviewForTextInteractableItem:(id)a3 dismissing:(BOOL)a4;
- (id)accessibilityLabel;
- (id)attachmentViewTappedByGesture:(id)a3;
- (id)collectScrollViews;
- (id)findInteraction:(id)a3 sessionForView:(id)a4;
- (id)findableForAttachment:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)note;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)positionFromPosition:(id)a3 inDirection:(int64_t)a4 offset:(int64_t)a5;
- (id)selectedText;
- (id)selectionRectsForRange:(id)a3;
- (id)singleSelectedAttachment;
- (id)tableAttachmentViewControllerForRange:(_NSRange)a3;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (id)textAttachmentAtPoint:(CGPoint)a3;
- (id)undoManager;
- (void)_adjustContentOffsetIfNecessary;
- (void)_scrollToCaretIfNeeded;
- (void)_scrollToSelectionIfNeeded;
- (void)_updateContentSize;
- (void)_updatePanGesture;
- (void)applyEdgeInsets:(UIEdgeInsets)a3;
- (void)authorHighlightsControllerDidPerformHighlightUpdates:(id)a3;
- (void)authorHighlightsControllerWillPerformHighlightUpdates:(id)a3;
- (void)clampTextView;
- (void)clearAllDecoratedFoundText;
- (void)commonInit;
- (void)createDateLabel;
- (void)createUserTitleViewIfNecessaryForNote:(id)a3;
- (void)dealloc;
- (void)dictationControllerDidFinish:(id)a3;
- (void)dictationControllerDidPause:(id)a3;
- (void)dictationControllerDidResume:(id)a3;
- (void)didDismissWritingTools;
- (void)didEndTextSearchOperation;
- (void)findInteraction:(id)a3 didBeginFindSession:(id)a4;
- (void)findInteraction:(id)a3 didEndFindSession:(id)a4;
- (void)handleAccessibilityDarkerSystemColorsStatusDidChange:(id)a3;
- (void)hideOverlappingAttachmentViewsIfNecessary;
- (void)inProcessUndoPanGesture:(id)a3;
- (void)initializeScollClampingController;
- (void)keyboardDidBeginDictation:(id)a3;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)makeTextWritingDirectionLeftToRight:(id)a3;
- (void)makeTextWritingDirectionRightToLeft:(id)a3;
- (void)performTextSearchWithQueryString:(id)a3 usingOptions:(id)a4 resultAggregator:(id)a5;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)registerForTraitChanges;
- (void)replaceAllOccurrencesOfQueryString:(id)a3 usingOptions:(id)a4 withText:(id)a5;
- (void)replaceFoundTextInRange:(id)a3 inDocument:(id)a4 withText:(id)a5;
- (void)resetContentOffset:(CGPoint)a3;
- (void)resetUndoManager;
- (void)sceneWillEnterForeground:(id)a3;
- (void)scrollRangeToVisible:(_NSRange)a3 consideringInsets:(BOOL)a4 animated:(BOOL)a5 inSearchableString:(id)a6;
- (void)scrollRangeToVisible:(id)a3 inDocument:(id)a4;
- (void)scrollRectToVisible:(CGRect)a3 animated:(BOOL)a4;
- (void)select:(id)a3;
- (void)setAttachmentViewDelegate:(id)a3;
- (void)setBaseWritingDirection:(int64_t)a3 forRange:(id)a4;
- (void)setBounds:(CGRect)a3;
- (void)setClippedContentOffset:(CGPoint)a3;
- (void)setContentOffset:(CGPoint)a3;
- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4;
- (void)setEditable:(BOOL)a3;
- (void)setEmbeddedScrollViews:(id)a3;
- (void)setInputAccessoryViewVisible:(BOOL)a3;
- (void)setSelectedRange:(_NSRange)a3;
- (void)setSelectedTextRange:(id)a3;
- (void)splitViewAnimatedTransitionEnded:(id)a3;
- (void)splitViewAnimatedTransitionWillBegin:(id)a3;
- (void)startEditingForTapGesture:(id)a3;
- (void)textControllerDidHandleSpecialCaseEditing:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)unclampTextView;
- (void)undoManagerDidOpenUndoGroup:(id)a3;
- (void)updateCompatibilityBannerForNote:(id)a3 parentViewController:(id)a4 updateTextViewContentInsets:(BOOL)a5;
- (void)updateLayoutMargins;
- (void)updateLayoutMarginsForMultipleTextViewsIfNecessary;
- (void)updateOverscrollItemFrames;
- (void)updateTextViewForDidChange;
- (void)userTitleHiddenStateDidChange:(id)a3;
- (void)willHighlightFoundTextRange:(id)a3 inDocument:(id)a4;
- (void)willPresentWritingTools;
- (void)writingToolsCoordinator:(id)a3 replaceRange:(_NSRange)a4 inContext:(id)a5 proposedText:(id)a6 reason:(int64_t)a7 animationParameters:(id)a8 completion:(id)a9;
- (void)writingToolsCoordinator:(id)a3 willChangeToState:(int64_t)a4 completion:(id)a5;
@end

@implementation ICTextView

- (UIEdgeInsets)minimumMargins
{
  v2 = [(ICTextView *)self textContainer];
  [v2 lineFragmentPadding];
  v4 = 12.0 - v3;

  v5 = 0.0;
  v6 = 0.0;
  v7 = v4;
  v8 = v4;
  result.right = v8;
  result.bottom = v6;
  result.left = v7;
  result.top = v5;
  return result;
}

+ (void)initialize
{
  v11[1] = *MEMORY[0x277D85DE8];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___ICTextView;
  objc_msgSendSuper2(&v7, sel_initialize);
  if (objc_opt_class() == a1)
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v10 = *MEMORY[0x277D36308];
    v11[0] = &unk_28277E520;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v3 registerDefaults:v4];

    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v8 = *MEMORY[0x277D362E8];
    v9 = &unk_28277E538;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    [v5 registerDefaults:v6];
  }
}

- (void)_adjustContentOffsetIfNecessary
{
  v3 = [(ICTextView *)self window];

  if (v3)
  {
    v4.receiver = self;
    v4.super_class = ICTextView;
    [(ICTextView *)&v4 _adjustContentOffsetIfNecessary];
  }
}

- (void)updateLayoutMargins
{
  [(ICTextView *)self minimumMargins];
  v4 = v3;
  v6 = v5;
  [(ICTextView *)self layoutMargins];
  if (v7 >= v4)
  {
    v4 = v7;
  }

  [(ICTextView *)self layoutMargins];
  if (v8 < v6)
  {
    v8 = v6;
  }

  [(ICTextView *)self applyEdgeInsets:0.0, v4, 0.0, v8];
}

- (void)commonInit
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v3 floatForKey:*MEMORY[0x277D36308]];
  v5 = v4;

  [(ICTextView *)self setMaxTileHeight:v5];
  [(ICTextView *)self setEditable:0];
  v6 = objc_alloc_init(MEMORY[0x277CD9FF8]);
  splitLayerContainer = self->_splitLayerContainer;
  self->_splitLayerContainer = v6;

  v8 = [(ICTextView *)self layer];
  [v8 addSublayer:self->_splitLayerContainer];

  if (objc_opt_respondsToSelector())
  {
    [(ICTextView *)self setLayoutMarginsFollowReadableWidth:1];
  }

  [(ICTextView *)self createDateLabel];
  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 addObserver:self selector:sel_keyboardDidBeginDictation_ name:@"UIKeyboardDidBeginDictationNotification" object:0];

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 addObserver:self selector:sel_dictationControllerDidPause_ name:*MEMORY[0x277D76890] object:0];

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  [v11 addObserver:self selector:sel_dictationControllerDidResume_ name:*MEMORY[0x277D76898] object:0];

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 addObserver:self selector:sel_dictationControllerDidFinish_ name:*MEMORY[0x277D76888] object:0];

  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  v14 = *MEMORY[0x277CCA800];
  v15 = [(ICTextView *)self undoManager];
  [v13 addObserver:self selector:sel_undoManagerDidOpenUndoGroup_ name:v14 object:v15];

  v16 = [MEMORY[0x277CCAB98] defaultCenter];
  [v16 addObserver:self selector:sel_handleAccessibilityDarkerSystemColorsStatusDidChange_ name:*MEMORY[0x277D76460] object:0];

  v17 = [MEMORY[0x277CCAB98] defaultCenter];
  [v17 addObserver:self selector:sel_sceneWillEnterForeground_ name:*MEMORY[0x277D76E48] object:0];

  v18 = [MEMORY[0x277CCAB98] defaultCenter];
  [v18 addObserver:self selector:sel_splitViewAnimatedTransitionWillBegin_ name:@"ICSplitViewControllerWillBeginAnimatedTransitionToStateRequest" object:0];

  v19 = [MEMORY[0x277CCAB98] defaultCenter];
  [v19 addObserver:self selector:sel_splitViewAnimatedTransitionEnded_ name:@"ICSplitViewControllerDidEndAnimatedTransitionToStateRequest" object:0];

  v20 = [MEMORY[0x277CCAB98] defaultCenter];
  [v20 addObserver:self selector:sel_authorHighlightsControllerWillPerformHighlightUpdates_ name:*MEMORY[0x277D364C0] object:0];

  v21 = [MEMORY[0x277CCAB98] defaultCenter];
  [v21 addObserver:self selector:sel_authorHighlightsControllerDidPerformHighlightUpdates_ name:*MEMORY[0x277D364A8] object:0];

  [(ICTextView *)self initializeScollClampingController];
  [(ICTextView *)self setPreservesSuperviewLayoutMargins:0];
  v22 = [(ICBaseTextView *)self containerViewForAttachments];
  [v22 setShouldGroupAccessibilityChildren:1];

  [(ICEditingTextView *)self setupTextViewDragAndDropDelegates];
  [MEMORY[0x277D367E0] updateTouchPredictionPointsFromOverride];
  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  highlightLayers = self->_highlightLayers;
  self->_highlightLayers = v23;

  v25 = [MEMORY[0x277D76070] productivityPanGestureRecognizerWithTarget:self action:sel_inProcessUndoPanGesture_ delegate:self];
  [v25 setName:@"com.apple.MobileNotes.InProcess_UIKBProductivityPanGestureRecognizer"];
  [(ICTextView *)self addGestureRecognizer:v25];
  [(ICTextView *)self registerForTraitChanges];
  if (ICInternalSettingsIsAsyncFindEnabled())
  {
    v26 = [[ICTextFindingCoordinator alloc] initWithDataSource:self];
    [(ICTextView *)self setTextFindingCoordinator:v26];
  }

  v27.receiver = self;
  v27.super_class = ICTextView;
  [(ICEditingTextView *)&v27 commonInit];
}

- (void)initializeScollClampingController
{
  v3 = [[ICSharedScrollClampingController alloc] initWithTextView:self listensToMergeNotifications:1 clampingTurnOffDelay:0.5];
  [(ICTextView *)self setScrollClampingControllerDelayedRelease:v3];
}

- (id)TTTextStorageOptional
{
  objc_opt_class();
  v3 = [(ICTextView *)self textStorage];
  v4 = ICDynamicCast();

  return v4;
}

- (BOOL)resignFirstResponder
{
  if ([(ICTextView *)self isFirstResponder])
  {
    v3 = [MEMORY[0x277D35E50] sharedState];
    [v3 extendDeauthenticationTimer];

    v4 = [(ICEditingTextView *)self editorController];
    v5 = [v4 mentionsController];

    v6 = MEMORY[0x277D35F20];
    v7 = [(ICEditingTextView *)self TTTextStorage];
    v8 = [v6 rangeOfUnconfirmedMentionInTextStorage:v7];
    v10 = v9;

    if (v8 != 0x7FFFFFFFFFFFFFFFLL && v10)
    {
      v11 = [(ICEditingTextView *)self TTTextStorage];
      v12 = [(ICEditingTextView *)self editorController];
      v13 = [v12 note];
      BYTE1(v27) = [(ICEditingTextView *)self languageHasSpaces];
      LOBYTE(v27) = 1;
      [v5 checkForMentionInEditedRange:v8 ofTextStorage:v10 note:v11 textView:v13 allowAutoExplicitMention:self isEndingEditing:1 languageHasSpaces:v27 parentAttachment:0];
    }

    v14 = [(ICEditingTextView *)self editorController];
    v15 = [v14 hashtagController];

    v16 = MEMORY[0x277D35EE8];
    v17 = [(ICEditingTextView *)self TTTextStorage];
    v18 = [v16 rangeOfUnconfirmedHashtagInTextStorage:v17];
    v20 = v19;

    if (v18 != 0x7FFFFFFFFFFFFFFFLL && v20)
    {
      v21 = [(ICEditingTextView *)self TTTextStorage];
      v22 = [(ICEditingTextView *)self editorController];
      v23 = [v22 note];
      BYTE1(v27) = [(ICEditingTextView *)self languageHasSpaces];
      LOBYTE(v27) = 1;
      [v15 checkForHashtagInEditedRange:v18 ofTextStorage:v20 note:v21 textView:v23 allowAutoExplicitHashtag:self isEndingEditing:0 languageHasSpaces:v27 parentAttachment:0];
    }
  }

  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning())
  {
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __34__ICTextView_resignFirstResponder__block_invoke;
    v32 = &unk_2781ABCF8;
    v33 = self;
    dispatchMainAfterDelay();
  }

  v28.receiver = self;
  v28.super_class = ICTextView;
  v24 = [(ICTextView *)&v28 resignFirstResponder];
  if (v24)
  {
    v25 = [MEMORY[0x277CCAB98] defaultCenter];
    [v25 postNotificationName:@"ICTextViewDidResignFirstResponderNotification" object:self];
  }

  return v24;
}

- (void)createDateLabel
{
  objc_opt_class();
  v3 = [(ICTextView *)self textContainer];
  v4 = ICDynamicCast();
  v5 = [v4 insideSiriSnippet];

  if ((v5 & 1) == 0)
  {
    v6 = +[ICNoteEditorDateView newDateView];
    dateView = self->_dateView;
    self->_dateView = v6;

    [(ICNoteEditorDateView *)self->_dateView setAutoresizingMask:21];
    [(ICNoteEditorDateView *)self->_dateView _accessibilitySetIsSpeakThisElement:0];
    v8 = self->_dateView;

    [(ICTextView *)self addSubview:v8];
  }
}

- (id)undoManager
{
  v2 = [(ICEditingTextView *)self TTTextStorage];
  v3 = [v2 undoManager];

  return v3;
}

- (void)registerForTraitChanges
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v4 = [(ICTextView *)self registerForTraitChanges:v3 withAction:sel_updateOverscrollItemFrames];
}

- (BOOL)hideCompatibilityBanner
{
  v3 = [(ICTextView *)self compatibilityBannerView];
  v4 = v3;
  if (v3)
  {
    [v3 removeFromSuperview];
    [(ICTextView *)self setCompatibilityBannerView:0];
  }

  return v4 != 0;
}

- (void)updateOverscrollItemFrames
{
  v3 = [(ICTextView *)self superview];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(ICTextView *)self superview];
  [v12 safeAreaInsets];
  v14 = v5 + v13;
  v16 = v7 + v15;
  v18 = v9 - (v13 + v17);
  v20 = v11 - (v15 + v19);
  v21 = [(ICTextView *)self superview];
  [(ICTextView *)self convertRect:v21 fromView:v14, v16, v18, v20];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v53.origin.x = v23;
  v53.origin.y = v25;
  v53.size.width = v27;
  v53.size.height = v29;
  Width = CGRectGetWidth(v53);
  v54.origin.x = v23;
  v54.origin.y = v25;
  v54.size.width = v27;
  v54.size.height = v29;
  MinX = CGRectGetMinX(v54);
  v32 = [(ICTextView *)self compatibilityBannerView];
  [v32 preferredHeight];
  v34 = v33;

  v35 = -v34;
  v36 = [(ICTextView *)self compatibilityBannerView];
  [v36 frame];
  LOBYTE(v12) = TSDNearlyEqualRects();

  if ((v12 & 1) == 0)
  {
    v37 = [(ICTextView *)self compatibilityBannerView];
    [v37 setAvailableWidth:Width];

    v38 = [(ICTextView *)self compatibilityBannerView];
    [v38 setFrame:{MinX, -v34, Width, v34}];
  }

  v39 = [(ICTextView *)self dateView];
  [v39 preferredHeight];
  v41 = v40;

  v42 = [(ICTextView *)self dateView];
  [v42 frame];
  v43 = TSDNearlyEqualRects();

  if ((v43 & 1) == 0)
  {
    v44 = [(ICTextView *)self dateView];
    [v44 setFrame:{MinX, v35 - v41, Width, v41}];
  }

  v45 = [(ICTextView *)self userTitleView];
  [v45 preferredHeight];
  v47 = v46;

  v48 = v35 - v47 - v41;
  v49 = [(ICTextView *)self userTitleView];
  [v49 frame];
  v50 = TSDNearlyEqualRects();

  if ((v50 & 1) == 0)
  {
    v51 = [(ICTextView *)self userTitleView];
    [v51 setFrame:{MinX, v48, Width, v47}];
  }
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = ICTextView;
  [(ICTextView *)&v3 layoutMarginsDidChange];
  [(ICTextView *)self updateLayoutMargins];
}

- (double)leadingMargin
{
  if (-[ICTextView isEditingOnSystemPaper](self, "isEditingOnSystemPaper") && (-[ICTextView traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 userInterfaceIdiom], v3, v4 == 1))
  {

    +[ICSystemPaperConstants noteLeadingMargin];
  }

  else
  {
    [(ICTextView *)self bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    if (_UISolariumEnabled())
    {
      [(ICTextView *)self safeAreaInsets];
    }

    else
    {
      v14 = *MEMORY[0x277D768C8];
      v15 = *(MEMORY[0x277D768C8] + 8);
      v16 = *(MEMORY[0x277D768C8] + 16);
      v17 = *(MEMORY[0x277D768C8] + 24);
    }

    v18 = v9 + v14;
    v19 = v11 - (v15 + v17);
    v26.size.height = v13 - (v14 + v16);
    v26.origin.x = v7 + v15;
    v26.origin.y = v18;
    v26.size.width = v19;
    v20 = ceil(CGRectGetWidth(v26) * 24.0 / 375.0);
    v21 = [(ICTextView *)self textContainer];
    [v21 lineFragmentPadding];
    v23 = v20 - v22;

    [(ICTextView *)self minimumMargins];
    if (v23 >= v24)
    {
      return v23;
    }

    else
    {
      return v24;
    }
  }

  return result;
}

- (BOOL)isEditingOnSystemPaper
{
  v3 = [(ICBaseTextView *)self icDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(ICBaseTextView *)self icDelegate];
  v6 = [v5 isEditingOnSystemPaper];

  return v6;
}

- (CGRect)currentSetBoundsRect
{
  x = self->_currentSetBoundsRect.origin.x;
  y = self->_currentSetBoundsRect.origin.y;
  width = self->_currentSetBoundsRect.size.width;
  height = self->_currentSetBoundsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_updateContentSize
{
  v3 = [(ICTextView *)self superview];

  if (v3)
  {
    if (![(ICTextView *)self updatingContentSizeCount])
    {
      [(ICTextView *)self contentSize];
      [(ICTextView *)self setPreviousContentSize:?];
    }

    [(ICTextView *)self setUpdatingContentSizeCount:[(ICTextView *)self updatingContentSizeCount]+ 1];
    v22.receiver = self;
    v22.super_class = ICTextView;
    [(ICTextView *)&v22 _updateContentSize];
    [(ICTextView *)self setUpdatingContentSizeCount:[(ICTextView *)self updatingContentSizeCount]- 1];
    if (![(ICTextView *)self updatingContentSizeCount])
    {
      [(ICTextView *)self previousContentSize];
      v5 = v4;
      [(ICTextView *)self contentSize];
      v7 = v6 - v5;
      if (v6 - v5 != 0.0)
      {
        v18 = 0;
        v19 = &v18;
        v20 = 0x2020000000;
        v21 = 0;
        v8 = [(ICEditingTextView *)self editorController];
        v9 = [v8 note];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __32__ICTextView__updateContentSize__block_invoke;
        v17[3] = &unk_2781ABF08;
        v17[4] = &v18;
        [v9 enumerateAttachmentsInOrderUsingBlock:v17];

        if (*(v19 + 24) == 1)
        {
          [(ICTextView *)self setNeedsHideOverlappingAttachmentViews:1];
        }

        _Block_object_dispose(&v18, 8);
      }

      v10 = [(ICTextView *)self scrollClampingControllerDelayedRelease];
      v11 = [v10 clampedYValue];

      if (v11)
      {
        if (![(ICTextView *)self isUpdatingPanGesture])
        {
          [(ICTextView *)self contentOffset];
          v13 = v12;
          [v11 floatValue];
          v16.receiver = self;
          v16.super_class = ICTextView;
          [(ICTextView *)&v16 setContentOffset:v13, v14];
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = __32__ICTextView__updateContentSize__block_invoke_2;
          v15[3] = &unk_2781ABCF8;
          v15[4] = self;
          dispatch_async(MEMORY[0x277D85CD0], v15);
        }
      }
    }
  }
}

- (CGSize)previousContentSize
{
  width = self->_previousContentSize.width;
  height = self->_previousContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

uint64_t __32__ICTextView__updateContentSize__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a5 = 1;
  return result;
}

- (void)layoutSubviews
{
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    objc_opt_class();
    v3 = [(ICTextView *)self layoutManager];
    v4 = ICDynamicCast();

    if ([(ICTextView *)self shouldUpdateVisibleSupplementalViewsInLayoutSubviews])
    {
      [v4 updateVisibleSupplementalViews];
    }
  }

  v6.receiver = self;
  v6.super_class = ICTextView;
  [(ICTextView *)&v6 layoutSubviews];
  if (([(ICTextView *)self _freezeTextContainerSize]& 1) == 0 && ![(ICTextView *)self isTransitioningToNewSize])
  {
    [(ICTextView *)self updateOverscrollItemFrames];
  }

  ICInternalSettingsIsTextKit2Enabled();
  v5 = [(ICTextView *)self dateView];
  [v5 updateLayoutIfNecessary];

  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    [(ICTextView *)self hideOverlappingAttachmentViewsIfNecessary];
  }
}

- (void)_scrollToSelectionIfNeeded
{
  if ([(ICTextView *)self shouldAutoScroll])
  {
    v3.receiver = self;
    v3.super_class = ICTextView;
    [(ICTextView *)&v3 _scrollToSelectionIfNeeded];
  }
}

- (BOOL)shouldAutoScroll
{
  if ([(ICTextView *)self isScrolling])
  {
    return 0;
  }

  objc_opt_class();
  v4 = [(ICTextView *)self textStorage];
  v5 = ICDynamicCast();
  v6 = [v5 isTypingOrMarkingText];

  if (v6)
  {
    return 1;
  }

  v7 = [(ICTextView *)self scrollClampingControllerDelayedRelease];
  if ([v7 isClamped])
  {

    return 0;
  }

  v8 = [(ICTextView *)self isPerformingHighlightUpdates];

  return !v8;
}

- (BOOL)isScrolling
{
  if (([(ICTextView *)self isDragging]& 1) != 0 || ([(ICTextView *)self isDecelerating]& 1) != 0)
  {
    return 1;
  }

  return [(ICTextView *)self _isAnimatingScroll];
}

+ (double)overrideEdgeInset
{
  v2 = [MEMORY[0x277D75418] ic_isVision];
  result = 32.0;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

- (ICTextView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ICTextView;
  v3 = [(ICBaseTextView *)&v6 initForTextKit1WithSize:a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICTextView *)v3 registerForTraitChanges];
  }

  return v4;
}

- (ICTextView)initWithCoder:(id)a3
{
  v4 = a3;
  NSLog(&cfstr_CallingInitwit.isa);
  v7.receiver = self;
  v7.super_class = ICTextView;
  v5 = [(ICBaseTextView *)&v7 initWithCoder:v4];

  if (v5)
  {
    [(ICTextView *)v5 setEditable:0];
    [(ICTextView *)v5 initializeScollClampingController];
    [(ICTextView *)v5 registerForTraitChanges];
  }

  return v5;
}

- (void)dealloc
{
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    v3 = [(ICTextView *)self layoutManager];
    if (v3)
    {
      v4 = [(ICTextView *)self textStorage];
      [v4 removeLayoutManager:v3];
    }
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = ICTextView;
  [(ICEditingTextView *)&v6 dealloc];
}

- (void)setAttachmentViewDelegate:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(ICTextView *)self layoutManager];
  v6 = ICCheckedDynamicCast();

  [v6 setAttachmentViewDelegate:v4];
}

- (ICAttachmentViewDelegate)attachmentViewDelegate
{
  objc_opt_class();
  v3 = [(ICTextView *)self layoutManager];
  v4 = ICCheckedDynamicCast();

  v5 = [v4 attachmentViewDelegate];

  return v5;
}

- (id)note
{
  v2 = [(ICEditingTextView *)self editorController];
  v3 = [v2 note];

  return v3;
}

- (void)findInteraction:(id)a3 didBeginFindSession:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICTextView *)self textFindingCoordinator];
  [v8 configureFindInteraction:v7 forTextView:self];

  v10.receiver = self;
  v10.super_class = ICTextView;
  [(ICTextView *)&v10 findInteraction:v7 didBeginFindSession:v6];

  v9 = [(ICEditingTextView *)self editorController];
  [v9 didBeginFindInteraction];
}

- (void)findInteraction:(id)a3 didEndFindSession:(id)a4
{
  v6.receiver = self;
  v6.super_class = ICTextView;
  [(ICTextView *)&v6 findInteraction:a3 didEndFindSession:a4];
  v5 = [(ICEditingTextView *)self editorController];
  [v5 didEndFindInteraction];
}

- (id)findInteraction:(id)a3 sessionForView:(id)a4
{
  v4 = [[ICTextSearchingFindSession alloc] initWithTextView:self];

  return v4;
}

- (void)willHighlightFoundTextRange:(id)a3 inDocument:(id)a4
{
  v4.receiver = self;
  v4.super_class = ICTextView;
  [(ICTextView *)&v4 willHighlightFoundTextRange:a3 inDocument:a4];
}

- (void)clearAllDecoratedFoundText
{
  v4.receiver = self;
  v4.super_class = ICTextView;
  [(ICTextView *)&v4 clearAllDecoratedFoundText];
  v3 = [(ICEditingTextView *)self editorController];
  [v3 showOrHideSearchPatternHighlightsIfNecessary];

  if (objc_opt_respondsToSelector())
  {
    [(ICTextView *)self _clearHighlightView];
  }
}

- (void)performTextSearchWithQueryString:(id)a3 usingOptions:(id)a4 resultAggregator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ICEditingTextView *)self editorController];
  [v11 didUpdateSearchQueryInFindInteraction:v8];

  v12 = [(ICTextView *)self textStorage];
  objc_initWeak(&location, v10);
  objc_initWeak(&from, self);
  v13 = +[ICNoteEditorTextFindingController textFindingQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __77__ICTextView_performTextSearchWithQueryString_usingOptions_resultAggregator___block_invoke;
  v17[3] = &unk_2781AD6C0;
  v18 = v9;
  v14 = v9;
  objc_copyWeak(&v22, &location);
  objc_copyWeak(&v23, &from);
  v19 = v8;
  v20 = self;
  v21 = v12;
  v15 = v12;
  v16 = v8;
  dispatch_async(v13, v17);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v22);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __77__ICTextView_performTextSearchWithQueryString_usingOptions_resultAggregator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stringCompareOptions];
  v3 = [*(a1 + 32) wordMatchMethod];
  v4 = [*(a1 + 32) wordMatchMethod];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__ICTextView_performTextSearchWithQueryString_usingOptions_resultAggregator___block_invoke_2;
  aBlock[3] = &unk_2781AD670;
  objc_copyWeak(&v19, (a1 + 64));
  objc_copyWeak(&v20, (a1 + 72));
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v17 = v5;
  v18 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [*(a1 + 48) textFindingCoordinator];

  if (v8)
  {
    v9 = [*(a1 + 48) textFindingCoordinator];
    v10 = *(a1 + 56);
    v11 = *(a1 + 40);
    v12 = [*(a1 + 48) note];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __77__ICTextView_performTextSearchWithQueryString_usingOptions_resultAggregator___block_invoke_4;
    v14[3] = &unk_2781AD698;
    v15 = v7;
    [v9 matchesForString:v11 inTextStorage:v10 note:v12 ignoreCase:v2 & 1 wholeWords:v3 == 2 startsWith:v4 == 1 completion:v14];

    v13 = v15;
  }

  else
  {
    v13 = [ICNoteEditorTextFindingController textFindingResultsForPattern:*(a1 + 40) textView:*(a1 + 48) textStorage:*(a1 + 56) ignoreCase:v2 & 1 wholeWords:v3 == 2];
    (*(v7 + 2))(v7, v13);
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v19);
}

void __77__ICTextView_performTextSearchWithQueryString_usingOptions_resultAggregator___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__ICTextView_performTextSearchWithQueryString_usingOptions_resultAggregator___block_invoke_3;
  block[3] = &unk_2781AD648;
  objc_copyWeak(&v11, (a1 + 48));
  objc_copyWeak(&v12, (a1 + 56));
  v8 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v11);
}

void __77__ICTextView_performTextSearchWithQueryString_usingOptions_resultAggregator___block_invoke_3(id *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v18 = a1;
  v3 = objc_loadWeakRetained(a1 + 8);
  v4 = v3;
  v19 = WeakRetained;
  if (WeakRetained && v3)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = a1[4];
    v20 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v20)
    {
      v17 = *v24;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v23 + 1) + 8 * i);
          v21 = [v6 range];
          v8 = v7;
          v22 = [v4 beginningOfDocument];
          v9 = [v4 positionFromPosition:v22 offset:v21];
          v10 = [v4 positionFromPosition:v9 offset:v8];
          v11 = [v4 textRangeFromPosition:v9 toPosition:v10];
          [v11 _ic_setTextFindingResult:v6];
          [v11 _setAttachmentRange:v6];
          [v19 foundRange:v11 forSearchString:v18[5] inDocument:0];
          objc_opt_class();
          v12 = [v18[6] textLayoutManager];
          v13 = [v12 textContentManager];
          v14 = ICDynamicCast();
          v15 = [v14 outlineController];

          [v15 expandAncestorsOfRange:{v21, v8}];
        }

        v20 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v20);
    }

    [v19 finishedSearching];
  }
}

void __77__ICTextView_performTextSearchWithQueryString_usingOptions_resultAggregator___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = os_log_create("com.apple.notes", "Find");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __77__ICTextView_performTextSearchWithQueryString_usingOptions_resultAggregator___block_invoke_4_cold_1(v4, v5);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (id)selectionRectsForRange:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 _ic_textFindingResult];
  if ([v5 isAttachmentResult])
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = [v5 framesForHighlightInTextView:self];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v23 + 1) + 8 * i) CGRectValue];
          v13 = v12;
          v15 = v14;
          v17 = v16;
          v19 = v18;
          v20 = objc_alloc_init(ICTextSelectionRect);
          [(ICTextSelectionRect *)v20 setRect:v13, v15, v17, v19];
          [v6 addObject:v20];
        }

        v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v22.receiver = self;
    v22.super_class = ICTextView;
    v6 = [(ICEditingTextView *)&v22 selectionRectsForRange:v4];
  }

  return v6;
}

- (void)scrollRangeToVisible:(id)a3 inDocument:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 _ic_textFindingResult];
  v9 = v8;
  if (v8)
  {
    [v8 scrollToVisibleInTextView:self];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = ICTextView;
    [(ICTextView *)&v10 scrollRangeToVisible:v6 inDocument:v7];
  }
}

- (BOOL)shouldReplaceFoundTextInRange:(id)a3 inDocument:(id)a4 withText:(id)a5
{
  v5 = [a3 _ic_textFindingResult];
  if ([v5 isAttachmentResult])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 1;
  }

  return isKindOfClass & 1;
}

- (void)replaceFoundTextInRange:(id)a3 inDocument:(id)a4 withText:(id)a5
{
  v32[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 _ic_textFindingResult];
  v12 = [(ICTextView *)self textFindingCoordinator];

  if (v12 && v11)
  {
    v13 = [(ICTextView *)self textFindingCoordinator];
    v32[0] = v11;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    v25 = 0;
    [v13 replaceMatches:v14 withString:v10 error:&v25];
    v15 = v25;

    if (v15)
    {
      v16 = os_log_create("com.apple.notes", "Find");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v27 = v11;
        v28 = 2112;
        v29 = v10;
        v30 = 2112;
        v31 = v15;
        _os_log_error_impl(&dword_2151A1000, v16, OS_LOG_TYPE_ERROR, "Unexpected error when trying to replace %@ with %@: %@", buf, 0x20u);
      }
    }
  }

  else
  {
    objc_opt_class();
    v17 = [v8 _ic_textFindingResult];
    v15 = ICDynamicCast();

    if (v15)
    {
      objc_opt_class();
      v18 = [v15 attachment];
      v19 = [v18 attachmentModel];
      v20 = ICDynamicCast();

      v21 = [(ICTextView *)self characterRangeFromTextKitRange:v8];
      v23 = [(ICTextView *)self tableAttachmentViewControllerForRange:v21, v22];
      [v20 undoablyReplaceTextFindingResult:v15 withReplacementString:v10 tableViewController:v23];
    }

    else
    {
      v24.receiver = self;
      v24.super_class = ICTextView;
      [(ICTextView *)&v24 replaceFoundTextInRange:v8 inDocument:v9 withText:v10];
    }
  }
}

- (void)replaceAllOccurrencesOfQueryString:(id)a3 usingOptions:(id)a4 withText:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v29 = [v9 stringCompareOptions] & 1;
  v11 = [v9 wordMatchMethod];
  v12 = [v9 wordMatchMethod];
  v13 = [(ICTextView *)self textFindingCoordinator];

  if (v13)
  {
    v14 = v12 == 1;
    v15 = v11 == 2;
    v16 = [(ICTextView *)self textFindingCoordinator];
    v17 = [(ICTextView *)self textStorage];
    v18 = [(ICTextView *)self note];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __71__ICTextView_replaceAllOccurrencesOfQueryString_usingOptions_withText___block_invoke;
    v37[3] = &unk_2781AD020;
    v38 = v8;
    v39 = v10;
    LOBYTE(v28) = v14;
    [v16 replaceAllOccurrencesOfQueryString:v8 withString:v10 inTextStorage:v17 note:v18 ignoreCase:v29 wholeWords:v15 startsWith:v28 completion:v37];

    v19 = v38;
  }

  else
  {
    v20 = v12 == 1;
    v21 = v11 == 2;
    v36.receiver = self;
    v36.super_class = ICTextView;
    [(ICTextView *)&v36 replaceAllOccurrencesOfQueryString:v8 usingOptions:v9 withText:v10];
    v22 = [(ICTextView *)self textStorage];
    v23 = *MEMORY[0x277D74060];
    v24 = [(ICTextView *)self textStorage];
    v25 = [v24 length];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __71__ICTextView_replaceAllOccurrencesOfQueryString_usingOptions_withText___block_invoke_163;
    v30[3] = &unk_2781AD6E8;
    v30[4] = self;
    v31 = v8;
    v33 = v29;
    v34 = v21;
    v35 = v20;
    v32 = v10;
    v26 = v10;
    v27 = v8;
    [v22 enumerateAttribute:v23 inRange:0 options:v25 usingBlock:{0, v30}];

    v19 = v31;
  }
}

void __71__ICTextView_replaceAllOccurrencesOfQueryString_usingOptions_withText___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.notes", "Find");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __71__ICTextView_replaceAllOccurrencesOfQueryString_usingOptions_withText___block_invoke_cold_1(a1, v3, v4);
    }
  }
}

void __71__ICTextView_replaceAllOccurrencesOfQueryString_usingOptions_withText___block_invoke_163(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  objc_opt_class();
  v8 = ICDynamicCast();

  v12 = [v8 attachment];

  if ([v12 isTable])
  {
    objc_opt_class();
    v9 = [v12 attachmentModel];
    v10 = ICDynamicCast();

    v11 = [*(a1 + 32) tableAttachmentViewControllerForRange:{a3, a4}];
    [v10 undoablyReplaceAllOccurrencesOfQueryString:*(a1 + 40) textView:*(a1 + 32) ignoreCase:*(a1 + 56) wholeWords:*(a1 + 57) startsWith:*(a1 + 58) withText:*(a1 + 48) tableViewController:v11];
  }
}

- (_NSRange)characterRangeFromTextKitRange:(id)a3
{
  v4 = a3;
  v5 = [(ICTextView *)self beginningOfDocument];
  v6 = [v4 start];
  v7 = [(ICTextView *)self offsetFromPosition:v5 toPosition:v6];

  v8 = [v4 start];
  v9 = [v4 end];

  v10 = [(ICTextView *)self offsetFromPosition:v8 toPosition:v9];
  v11 = v7;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

- (id)tableAttachmentViewControllerForRange:(_NSRange)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCAE60] valueWithRange:{a3.location, a3.length}];
  v15[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__6;
  v13 = __Block_byref_object_dispose__6;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__ICTextView_tableAttachmentViewControllerForRange___block_invoke;
  v8[3] = &unk_2781AD710;
  v8[4] = &v9;
  [(ICEditingTextView *)self ic_enumerateTableAttachmentViewControllersInRanges:v5 usingBlock:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)selectedText
{
  v3 = [MEMORY[0x277D369A0] sharedInstance];
  if (([v3 isSecureScreenShowing] & 1) == 0)
  {

    goto LABEL_7;
  }

  v4 = [MEMORY[0x277D369A0] sharedInstance];
  v5 = [v4 hasClearedInitialSelectedTextIfSecure];

  if (v5)
  {
LABEL_7:
    v9 = [(ICTextView *)self textStorage];
    v7 = [v9 attribute:*MEMORY[0x277D74060] atIndex:-[ICTextView selectedRange](self effectiveRange:{"selectedRange"), 0}];

    objc_opt_class();
    v10 = ICDynamicCast();
    v11 = v10;
    if (v10)
    {
      v12 = [v10 attachment];
      v8 = [v12 altText];
    }

    else
    {
      v14.receiver = self;
      v14.super_class = ICTextView;
      v8 = [(ICTextView *)&v14 selectedText];
    }

    goto LABEL_11;
  }

  v6 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ICTextView *)v6 selectedText];
  }

  v7 = [MEMORY[0x277D369A0] sharedInstance];
  [v7 hasClearedInitialSecureSelectedText];
  v8 = &stru_282757698;
LABEL_11:

  return v8;
}

- (void)didEndTextSearchOperation
{
  v2 = [(ICEditingTextView *)self editorController];
  [v2 showOrHideSearchPatternHighlightsIfNecessary];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(ICEditingTextView *)self tapGestureRecognizer];
  v6 = v5;
  if (v5 == v4)
  {
    v7 = [(ICEditingTextView *)self editorController];
    v8 = [v7 ignoresTaps];

    if (v8)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v13.receiver = self;
  v13.super_class = ICTextView;
  if (![(ICEditingTextView *)&v13 gestureRecognizerShouldBegin:v4])
  {
    v10 = 0;
    goto LABEL_9;
  }

  v9 = [(ICEditingTextView *)self tapGestureRecognizer];

  if (v9 == v4)
  {
    v11 = [(ICTextView *)self attachmentViewTappedByGesture:v4];
    v10 = v11 == 0;

    goto LABEL_9;
  }

LABEL_6:
  v10 = 1;
LABEL_9:

  return v10;
}

- (void)startEditingForTapGesture:(id)a3
{
  [a3 locationOfTouch:0 inView:self];
  v4 = [(ICTextView *)self closestPositionToPoint:?];
  v7 = v4;
  if (v4)
  {
    v5 = [(ICTextView *)self textRangeFromPosition:v4 toPosition:v4];
    if (v5)
    {
      [(ICTextView *)self setSelectedTextRange:v5];
    }
  }

  v6 = [(ICEditingTextView *)self editorController];
  [v6 startEditing];
}

- (void)willPresentWritingTools
{
  v4.receiver = self;
  v4.super_class = ICTextView;
  [(ICEditingTextView *)&v4 willPresentWritingTools];
  [(ICTextView *)self setInputAccessoryViewVisible:0];
  v3 = [(ICEditingTextView *)self editorController];
  [v3 setWritingToolsShowing:1];
}

- (void)didDismissWritingTools
{
  v3 = [(ICEditingTextView *)self editorController];
  [v3 setWritingToolsShowing:0];

  [(ICTextView *)self setInputAccessoryViewVisible:1];
  v4.receiver = self;
  v4.super_class = ICTextView;
  [(ICEditingTextView *)&v4 didDismissWritingTools];
}

- (void)writingToolsCoordinator:(id)a3 willChangeToState:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 state] == 3)
  {
    v10 = [(ICEditingTextView *)self TTTextStorage];
    [v10 breakUndoCoalescing];
  }

  v11.receiver = self;
  v11.super_class = ICTextView;
  [(ICTextView *)&v11 writingToolsCoordinator:v8 willChangeToState:a4 completion:v9];
}

- (void)writingToolsCoordinator:(id)a3 replaceRange:(_NSRange)a4 inContext:(id)a5 proposedText:(id)a6 reason:(int64_t)a7 animationParameters:(id)a8 completion:(id)a9
{
  length = a4.length;
  location = a4.location;
  v16 = a9;
  v17 = a8;
  v18 = a6;
  v19 = a5;
  v20 = a3;
  v21 = [(ICTextView *)self note];
  [v21 updateModificationDateAndChangeCountAndSaveAfterDelay];

  v22.receiver = self;
  v22.super_class = ICTextView;
  [(ICTextView *)&v22 writingToolsCoordinator:v20 replaceRange:location inContext:length proposedText:v19 reason:v18 animationParameters:a7 completion:v17, v16];
}

- (void)keyboardDidBeginDictation:(id)a3
{
  v4 = [(ICTextView *)self TTTextStorageOptional];
  [v4 setIsPausingUndoActions:1];

  [(ICTextView *)self setInputAccessoryViewVisible:0];
}

- (void)dictationControllerDidPause:(id)a3
{
  v4 = [(ICTextView *)self TTTextStorageOptional];
  [v4 setIsPausingUndoActions:0];

  v5 = [(ICTextView *)self TTTextStorageOptional];
  [v5 breakUndoCoalescing];
}

- (void)dictationControllerDidResume:(id)a3
{
  v3 = [(ICTextView *)self TTTextStorageOptional];
  [v3 setIsPausingUndoActions:1];
}

- (void)dictationControllerDidFinish:(id)a3
{
  v4 = [(ICTextView *)self TTTextStorageOptional];
  [v4 setIsPausingUndoActions:0];

  [(ICTextView *)self setInputAccessoryViewVisible:1];
}

- (void)userTitleHiddenStateDidChange:(id)a3
{
  v4 = a3;
  v5 = [(ICTextView *)self userTitleView];

  if (v5 == v4)
  {

    [(ICTextView *)self updateOverscrollItemFrames];
  }
}

- (void)createUserTitleViewIfNecessaryForNote:(id)a3
{
  v14 = a3;
  v4 = [(ICTextView *)self userTitleView];

  if (!v4 && [ICNoteEditorUserTitleView shouldShowUserTitleViewForNote:v14])
  {
    v5 = +[ICNoteEditorUserTitleView newUserTitleView];
    [(ICTextView *)self setUserTitleView:v5];

    v6 = [(ICTextView *)self userTitleView];
    [v6 setAutoresizingMask:5];

    v7 = [(ICTextView *)self userTitleView];
    [v7 _accessibilitySetIsSpeakThisElement:0];

    v8 = [(ICTextView *)self userTitleView];
    [v8 setDelegate:self];

    dateView = self->_dateView;
    v10 = [(ICTextView *)self userTitleView];
    if (dateView)
    {
      [(ICTextView *)self insertSubview:v10 belowSubview:self->_dateView];
    }

    else
    {
      [(ICTextView *)self addSubview:v10];
    }
  }

  v11 = [(ICTextView *)self userTitleView];

  v12 = v14;
  if (v11)
  {
    v13 = [(ICTextView *)self userTitleView];
    [v13 setNote:v14];

    v12 = v14;
  }
}

- (BOOL)showCompatibilityBannerWithParentViewController:(id)a3
{
  v4 = a3;
  v5 = [(ICTextView *)self compatibilityBannerView];

  if (!v5)
  {
    v6 = [ICNoteEditorCompatibilityBannerView alloc];
    v7 = [(ICNoteEditorCompatibilityBannerView *)v6 initWithFrame:v4 parentViewController:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(ICTextView *)self setCompatibilityBannerView:v7];

    v8 = [(ICTextView *)self compatibilityBannerView];
    [v8 setAutoresizingMask:5];

    v9 = [(ICTextView *)self compatibilityBannerView];
    [(ICTextView *)self addSubview:v9];
  }

  return v5 == 0;
}

- (void)updateCompatibilityBannerForNote:(id)a3 parentViewController:(id)a4 updateTextViewContentInsets:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [v8 identifier];
    objc_initWeak(&location, self);
    objc_initWeak(&from, v9);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __96__ICTextView_updateCompatibilityBannerForNote_parentViewController_updateTextViewContentInsets___block_invoke;
    v12[3] = &unk_2781AD760;
    objc_copyWeak(&v14, &location);
    objc_copyWeak(&v15, &from);
    v11 = v10;
    v13 = v11;
    v16 = a5;
    [ICNoteEditorCompatibilityBannerView checkShouldShowCompatibilityBannerViewForNote:v8 parentViewController:v9 completion:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __96__ICTextView_updateCompatibilityBannerForNote_parentViewController_updateTextViewContentInsets___block_invoke(uint64_t a1, char a2)
{
  objc_copyWeak(&v5, (a1 + 40));
  objc_copyWeak(&v6, (a1 + 48));
  v4 = *(a1 + 32);
  v7 = a2;
  v8 = *(a1 + 56);
  performBlockOnMainThread();

  objc_destroyWeak(&v6);
  objc_destroyWeak(&v5);
}

void __96__ICTextView_updateCompatibilityBannerForNote_parentViewController_updateTextViewContentInsets___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  if (v2)
  {
    v3 = [WeakRetained editorController];
    v4 = [v3 note];
    v5 = [v4 identifier];
    v6 = [v5 isEqualToString:*(a1 + 32)];

    if (v6)
    {
      if (*(a1 + 56) == 1)
      {
        if (([WeakRetained showCompatibilityBannerWithParentViewController:v2] & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      else if (![WeakRetained hideCompatibilityBanner])
      {
        goto LABEL_9;
      }

      if (*(a1 + 57) == 1)
      {
        v7 = [WeakRetained editorController];
        [v7 updateTextViewContentInsetsAnimated:1];
      }
    }
  }

LABEL_9:
}

- (BOOL)shouldUpdateVisibleSupplementalViewsInLayoutSubviews
{
  if ([(ICTextView *)self isScrolling]|| ([(ICTextView *)self _isAnimatingScrollTest]& 1) != 0)
  {
    return 0;
  }

  else
  {
    return [(ICTextView *)self _freezeTextContainerSize]^ 1;
  }
}

- (void)hideOverlappingAttachmentViewsIfNecessary
{
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    if ([(ICTextView *)self needsHideOverlappingAttachmentViews])
    {
      objc_opt_class();
      v3 = [(ICTextView *)self layoutManager];
      v4 = ICDynamicCast();

      [(ICTextView *)self bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v13 = [(ICTextView *)self textContainer];
      v14 = [v4 glyphRangeForBoundingRectWithoutAdditionalLayout:v13 inTextContainer:{v6, v8, v10, v12}];
      v16 = v15;

      v17 = [v4 characterRangeForGlyphRange:v14 actualGlyphRange:{v16, 0}];
      v19 = v18;
      v20 = v17 + v18;
      v21 = [(ICTextView *)self textStorage];
      v22 = [v21 length] - v20;

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __55__ICTextView_hideOverlappingAttachmentViewsIfNecessary__block_invoke;
      aBlock[3] = &unk_2781AD788;
      v30 = v17;
      v31 = v19;
      v29 = v4;
      v23 = v4;
      v24 = _Block_copy(aBlock);
      v25 = [(ICTextView *)self textStorage];
      v26 = *MEMORY[0x277D74060];
      [v25 enumerateAttribute:*MEMORY[0x277D74060] inRange:0 options:v17 usingBlock:{0x100000, v24}];

      v27 = [(ICTextView *)self textStorage];
      [v27 enumerateAttribute:v26 inRange:v20 options:v22 usingBlock:{0x100000, v24}];

      [(ICTextView *)self setNeedsHideOverlappingAttachmentViews:0];
    }
  }
}

void __55__ICTextView_hideOverlappingAttachmentViewsIfNecessary__block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  v7 = a2;
  if (v7)
  {
    v15 = v7;
    v17.location = a3;
    v17.length = a4;
    length = NSIntersectionRange(*(a1 + 40), v17).length;
    v7 = v15;
    if (!length)
    {
      objc_opt_class();
      v9 = ICDynamicCast();
      v10 = [*(a1 + 32) viewProviderForTextAttachment:v9 characterIndex:a3];
      v11 = [v10 view];
      if (!v11)
      {
        v11 = [*(a1 + 32) viewForTextAttachmentNoCreate:v9];
      }

      v12 = [v11 window];
      if (v12)
      {
        v13 = v12;
        v14 = [v11 isHidden];

        if ((v14 & 1) == 0)
        {
          [MEMORY[0x277CD9FF0] begin];
          [MEMORY[0x277CD9FF0] setDisableActions:1];
          [v11 setHidden:1];
          [MEMORY[0x277CD9FF0] commit];
        }
      }

      v7 = v15;
    }
  }
}

- (BOOL)canBecomeFirstResponder
{
  v13.receiver = self;
  v13.super_class = ICTextView;
  v3 = [(ICEditingTextView *)&v13 canBecomeFirstResponder];
  v4 = [(ICEditingTextView *)self editorController];
  v5 = [v4 presentedViewController];

  v6 = [v5 modalPresentationStyle];
  if (v3 && (v7 = v6, ![(ICBaseTextView *)self shouldAvoidBecomingFirstResponder]))
  {
    v9 = [(ICEditingTextView *)self editorController];
    v10 = [v9 note];
    if (v10)
    {
      v11 = v7 == 5;
    }

    else
    {
      v11 = 1;
    }

    v8 = !v11;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)becomeFirstResponder
{
  if ([(ICBaseTextView *)self shouldAvoidBecomingFirstResponder])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    self->_isBecomingFirstResponder = 1;
    v4 = [MEMORY[0x277D35E50] sharedState];
    [v4 extendDeauthenticationTimer];

    v7.receiver = self;
    v7.super_class = ICTextView;
    v3 = [(ICEditingTextView *)&v7 becomeFirstResponder];
    if (([(ICTextView *)self isSelectable]& 1) == 0 && v3)
    {
      [(ICTextView *)self setEditable:1];
    }

    if (v3)
    {
      v5 = [MEMORY[0x277CCAB98] defaultCenter];
      [v5 postNotificationName:@"ICTextViewDidBecomeFirstResponderNotification" object:self];
    }

    [(ICEditingTextView *)self icaxClearCaches];
    self->_isBecomingFirstResponder = 0;
  }

  return v3;
}

- (id)_nextKeyResponder
{
  v3 = [(ICBaseTextView *)self nextResponderOverride];

  if (v3)
  {
    v4 = [(ICBaseTextView *)self nextResponderOverride];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)selectionSupportsFindInNote
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  v3 = [(ICTextView *)self textStorage];
  v4 = [(ICTextView *)self selectedRange];
  v5 = *MEMORY[0x277D74060];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__ICTextView_selectionSupportsFindInNote__block_invoke;
  v10[3] = &unk_2781AD7B0;
  v10[4] = &v11;
  v10[5] = &v15;
  [v3 enumerateAttribute:v5 inRange:v4 options:v6 usingBlock:{0, v10}];

  if (v12[3])
  {
    v7 = 1;
  }

  else if (*(v16 + 24) == 1)
  {
    [(ICTextView *)self selectedRange];
    v7 = v8 == 1;
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  return v7;
}

void __41__ICTextView_selectionSupportsFindInNote__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  if (v7)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    v9 = v7;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = v9;
    if ((isKindOfClass & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a5 = 1;
    }
  }
}

- (id)singleSelectedAttachment
{
  v3 = [(ICTextView *)self selectedRange];
  v5 = 0;
  if (v3 != 0x7FFFFFFFFFFFFFFFLL && v4 == 1)
  {
    v6 = v3;
    v7 = [(ICTextView *)self textStorage];
    v8 = [v7 attribute:*MEMORY[0x277D74060] atIndex:v6 effectiveRange:0];

    objc_opt_class();
    v5 = 0;
    if (objc_opt_isKindOfClass())
    {
      v5 = v8;
    }
  }

  return v5;
}

- (id)targetForAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = [(ICBaseTextView *)self nextResponderOverride];

  if (!v7)
  {
    v16.receiver = self;
    v16.super_class = ICTextView;
    v11 = [(ICTextView *)&v16 targetForAction:a3 withSender:self];
    v12 = [(ICTextView *)self singleSelectedAttachment];
    if (v12)
    {
      if (ICInternalSettingsIsTextKit2Enabled())
      {
        v13 = [(ICEditingTextView *)self icTextLayoutManager];
        v14 = [v12 viewIdentifier];
        v10 = [v13 existingAttachmentViewForIdentifier:v14];
      }

      else
      {
        v13 = [(ICEditingTextView *)self icLayoutManager];
        v10 = [v13 viewForTextAttachment:v12];
      }

      if (v10 && [v10 canPerformAction:a3 withSender:v6] && !objc_msgSend(v11, "canPerformAction:withSender:", a3, v6))
      {
        goto LABEL_14;
      }
    }

    v10 = v11;
LABEL_14:

    goto LABEL_15;
  }

  v8 = [(ICBaseTextView *)self nextResponderOverride];
  v9 = [v8 canPerformAction:a3 withSender:v6];

  if (v9)
  {
    v10 = [(ICBaseTextView *)self nextResponderOverride];
  }

  else
  {
    v10 = 0;
  }

LABEL_15:

  return v10;
}

- (void)resetContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(ICTextView *)self disableContentOffsetChanges];
  [(ICTextView *)self setDisableContentOffsetChanges:1];
  v7.receiver = self;
  v7.super_class = ICTextView;
  [(ICTextView *)&v7 setContentOffset:x, y];
  [(ICTextView *)self setDisableContentOffsetChanges:v6];
}

- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v9 = [(ICEditingTextView *)self editorController];
  if ([v9 isPreviewingAttachmentFromNote])
  {
  }

  else
  {
    v8 = [(ICTextView *)self isDragging];

    if ((v8 & 1) == 0)
    {
      v10.receiver = self;
      v10.super_class = ICTextView;
      [(ICTextView *)&v10 setContentOffset:v4 animated:x, y];
    }
  }
}

- (void)scrollRectToVisible:(CGRect)a3 animated:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    if ([(ICTextView *)self isFirstResponder])
    {
      v10 = [(ICTextView *)self selectedRange];
      v11 = [(ICTextView *)self textStorage];
      v12 = [v11 length];

      if (v10 == v12)
      {
        v13 = [(ICTextView *)self layoutManager];
        [v13 extraLineFragmentRect];
        rect.origin.x = v14;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        [(ICTextView *)self textContainerInset];
        v22 = v21;
        [(ICTextView *)self textContainerInset];
        v24 = v23;
        v30.origin.x = rect.origin.x;
        v30.origin.y = v16;
        v30.size.width = v18;
        v30.size.height = v20;
        v31 = CGRectOffset(v30, v22, v24);
        v25 = v31.origin.x;
        v26 = v31.origin.y;
        v27 = v31.size.width;
        v28 = v31.size.height;

        v32.origin.x = x;
        v32.origin.y = y;
        v32.size.width = width;
        v32.size.height = height;
        v33.origin.x = v25;
        v33.origin.y = v26;
        v33.size.width = v27;
        v33.size.height = v28;
        if (CGRectContainsRect(v32, v33))
        {
          x = v25;
          y = v26;
          width = v27;
          height = v28;
        }
      }
    }
  }

  *&rect.origin.y = self;
  *&rect.size.width = ICTextView;
  [(CGFloat *)&rect.origin.y scrollRectToVisible:v4 animated:x, y, width, height];
}

- (void)setEmbeddedScrollViews:(id)a3
{
  v4 = [a3 copy];
  embeddedScrollViews = self->_embeddedScrollViews;
  self->_embeddedScrollViews = v4;

  v6 = *MEMORY[0x277CBF348];
  self->_lastProposedContentOffset = *MEMORY[0x277CBF348];
  self->_distanceConsumedByEmbeddedScrollViews = v6;
}

- (CGPoint)scrollEmbeddedScrollViewsWithProposedContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v72 = *MEMORY[0x277D85DE8];
  [(ICTextView *)self contentOffset];
  v7 = v6;
  [(ICTextView *)self contentOffset];
  v9 = v8;
  [(ICTextView *)self bounds];
  v65 = v11;
  v66 = v10;
  rect = v12;
  v14 = v13;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v15 = [(ICTextView *)self embeddedScrollViews];
  v16 = [v15 countByEnumeratingWithState:&v67 objects:v71 count:16];
  if (v16)
  {
    v17 = v16;
    v61 = x - v7;
    v62 = x;
    v63 = y;
    v18 = y - v9;
    v19 = *v68;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v68 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v67 + 1) + 8 * i);
        [v21 contentSize];
        v23 = v22;
        [v21 bounds];
        if (v23 > CGRectGetHeight(v74))
        {
          [v21 bounds];
          [v21 convertRect:self toView:?];
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v31 = v30;
          [v21 contentSize];
          v33 = v32;
          [v21 bounds];
          v34 = v33 - CGRectGetHeight(v75);
          [v21 contentInset];
          v36 = v34 + v35;
          v76.origin.x = v25;
          v76.origin.y = v27;
          v76.size.width = v29;
          v76.size.height = v31;
          MaxY = CGRectGetMaxY(v76);
          v77.origin.y = v65;
          v77.origin.x = v66;
          v77.size.width = rect;
          v77.size.height = v14;
          v38 = CGRectGetMaxY(v77);
          v39 = 0;
          if (v18 > 0.0 && MaxY - v18 < v38)
          {
            [v21 contentOffset];
            v39 = v40 < v36;
          }

          v78.origin.x = v25;
          v78.origin.y = v27;
          v78.size.width = v29;
          v78.size.height = v31;
          v41 = CGRectGetMaxY(v78) - v18;
          v79.origin.y = v65;
          v79.origin.x = v66;
          v79.size.width = rect;
          v79.size.height = v14;
          if (v41 <= CGRectGetMaxY(v79))
          {
            if (v39)
            {
              goto LABEL_20;
            }
          }

          else
          {
            [v21 contentOffset];
            v43 = v42 > 0.0 || v39;
            if (v43)
            {
LABEL_20:
              [v21 contentOffset];
              v45 = v61 + v44;
              [v21 contentOffset];
              v47 = fmax(v18 + v46, 0.0);
              if (v47 >= v36)
              {
                v48 = v36;
              }

              else
              {
                v48 = v47;
              }

              [v21 contentOffset];
              v50 = v45 - v49;
              [v21 contentOffset];
              v52 = v48 - v51;
              [v21 setContentOffset:{v45, v48}];
              v53 = [(ICTextView *)self panGestureRecognizer];
              [v53 translationInView:self];
              v55 = v54;
              v57 = v56;

              v58 = [(ICTextView *)self panGestureRecognizer];
              [v58 setTranslation:self inView:{v50 + v55, v57 + v52}];

              x = v62 - v50;
              y = v63 - v52;
              goto LABEL_24;
            }
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v67 objects:v71 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }

    x = v62;
    y = v63;
  }

LABEL_24:

  v59 = x;
  v60 = y;
  result.y = v60;
  result.x = v59;
  return result;
}

- (void)setContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v55 = *MEMORY[0x277D85DE8];
  if ([(ICTextView *)self updatingContentSizeCount])
  {
    v50.receiver = self;
    v50.super_class = ICTextView;
    [(ICTextView *)&v50 setContentOffset:x, y];
    return;
  }

  [(ICTextView *)self scrollEmbeddedScrollViewsWithProposedContentOffset:x, y];
  v7 = v6;
  v9 = v8;
  v10 = [MEMORY[0x277D36878] rootSettings];
  if (![v10 isRubberBandingEnabled] || !-[ICTextView shouldRubberBand](self, "shouldRubberBand"))
  {

    goto LABEL_9;
  }

  if (([(ICTextView *)self isDragging]& 1) != 0)
  {

    goto LABEL_18;
  }

  v19 = [(ICTextView *)self isDecelerating];

  if ((v19 & 1) == 0)
  {
LABEL_9:
    v11 = [(ICEditingTextView *)self editorController];
    v12 = [v11 attributionSidebarVisibility];

    v13 = [(ICEditingTextView *)self editorController];
    v14 = [v13 authorHighlightsController];
    v15 = [(ICEditingTextView *)self TTTextStorage];
    v16 = [v14 isPerformingHighlightUpdatesForTextStorage:v15];

    if (v12 != 1 && (v16 & 1) == 0 && ![(ICTextView *)self isSettingContentOffset])
    {
      if ((TSDPointHasInfComponents() & 1) != 0 || TSDPointHasNaNComponents())
      {
        v17 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v56.x = v7;
          v56.y = v9;
          v18 = NSStringFromPoint(v56);
          *buf = 136315394;
          v52 = "[ICTextView setContentOffset:]";
          v53 = 2112;
          v54 = v18;
          _os_log_impl(&dword_2151A1000, v17, OS_LOG_TYPE_DEFAULT, "Calling %s with invalid value: %@", buf, 0x16u);
        }
      }

      else
      {
        [(ICTextView *)self setIsSettingContentOffset:1];
        [(ICTextView *)self contentOffset];
        if ((v30 != 0.0 || v29 != v9) && ![(ICTextView *)self isTransitioningToNewSize])
        {
          v31 = [(ICBaseTextView *)self icDelegate];
          v32 = objc_opt_respondsToSelector();

          if ((v32 & 1) != 0 && (-[ICBaseTextView icDelegate](self, "icDelegate"), v33 = objc_claimAutoreleasedReturnValue(), v34 = [v33 shouldLockTextViewContentOffset], v33, v34))
          {
            v35 = os_log_create("com.apple.notes", "UI");
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              [ICTextView setContentOffset:v35];
            }

            v36 = 1;
          }

          else
          {
            v36 = 0;
          }

          v43 = [(ICTextView *)self scrollClampingControllerDelayedRelease];
          v44 = [v43 clampedYValue];

          if (v44 && ![(ICTextView *)self isUpdatingPanGesture])
          {
            [v44 floatValue];
            v48.receiver = self;
            v48.super_class = ICTextView;
            [(ICTextView *)&v48 setContentOffset:0.0, v46];
          }

          else if ([(ICTextView *)self disableContentOffsetChanges]|| (v36 | [(ICBaseTextView *)self isInProcessEditingForTextStorage]) == 1)
          {
            if (![(ICBaseTextView *)self isInProcessEditingForTextStorage])
            {
              [(ICTextView *)self contentOffset];
              v9 = v45;
            }

            [(ICTextView *)self setClippedContentOffset:0.0, v9];
          }

          else
          {
            v47.receiver = self;
            v47.super_class = ICTextView;
            [(ICTextView *)&v47 setContentOffset:0.0, v9];
          }
        }

        [(ICTextView *)self setIsSettingContentOffset:0];
      }
    }

    return;
  }

LABEL_18:
  [(ICTextView *)self rubberBandContentOffset];
  v21 = v20;
  v22 = [MEMORY[0x277D36878] rootSettings];
  [v22 rubberBandRange];
  v24 = v23;

  v25 = [MEMORY[0x277D36878] rootSettings];
  [v25 rubberBandDragDistance];
  v27 = v26;

  if (v9 <= v21)
  {
    goto LABEL_9;
  }

  if (vabdd_f64(v9, v21) < v27)
  {
    ICTextViewRubberBandOffsetForOffset(0, v9, v21, v21, v24);
    v9 = v28;
    goto LABEL_9;
  }

  [(ICTextView *)self setShouldRubberBand:0];
  v37 = [(ICTextView *)self delegate];
  v38 = objc_opt_respondsToSelector();

  if (v38)
  {
    v39 = [(ICTextView *)self delegate];
    [v39 textViewDidBreakRubberBand:self];
  }

  v40 = [MEMORY[0x277D36878] rootSettings];
  [v40 rubberBandCatchUpAnimationDuration];
  v42 = v41;

  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __31__ICTextView_setContentOffset___block_invoke;
  v49[3] = &unk_2781AD318;
  *&v49[5] = v7;
  *&v49[6] = v9;
  v49[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v49 animations:v42];
}

id __31__ICTextView_setContentOffset___block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = ICTextView;
  return objc_msgSendSuper2(&v2, sel_setContentOffset_, *(a1 + 40), *(a1 + 48));
}

void __32__ICTextView__updateContentSize__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) editorController];
  v3 = [v2 visibleRange];
  v5 = v4;

  IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
  v7 = *(a1 + 32);
  if (IsTextKit2Enabled)
  {
    v8 = [v7 textLayoutManager];
    v10 = [v8 ic_textRangeForRange:{v3, v5}];

    v9 = [*(a1 + 32) textLayoutManager];
    [v9 invalidateLayoutForRange:v10];
  }

  else
  {
    v10 = [v7 layoutManager];
    [v10 invalidateDisplayForCharacterRange:{v3, v5}];
  }
}

- (double)maxYContentOffset
{
  [(ICTextView *)self contentSize];
  v4 = v3;
  [(ICTextView *)self bounds];
  v6 = v5;
  [(ICTextView *)self contentInset];
  return v4 - (v6 - v7);
}

- (CGPoint)clippedContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(ICTextView *)self contentInset];
  v7 = -v6;
  [(ICTextView *)self maxYContentOffset];
  if (v8 >= v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (y <= v9)
  {
    if (y < v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = y;
    }
  }

  v10 = x;
  result.y = v9;
  result.x = v10;
  return result;
}

- (void)setClippedContentOffset:(CGPoint)a3
{
  [(ICTextView *)self clippedContentOffset:a3.x, a3.y];
  v5 = v4;
  v7 = v6;
  [(ICTextView *)self contentOffset];
  if (v5 != v9 || v7 != v8)
  {
    v11.receiver = self;
    v11.super_class = ICTextView;
    [(ICTextView *)&v11 setContentOffset:v5, v7];
  }
}

- (void)select:(id)a3
{
  v4 = a3;
  if (![(ICTextView *)self selectedRange])
  {
    goto LABEL_5;
  }

  objc_opt_class();
  v5 = [(ICTextView *)self textStorage];
  v6 = ICDynamicCast();

  v7 = [(ICTextView *)self selectedRange];
  v8 = [v6 attribute:*MEMORY[0x277D74060] atIndex:v7 - 1 effectiveRange:0];
  if (!v8)
  {

LABEL_5:
    v10.receiver = self;
    v10.super_class = ICTextView;
    [(ICEditingTextView *)&v10 select:v4];
    goto LABEL_6;
  }

  v9 = v8;
  [(ICTextView *)self setSelectedRange:[(ICTextView *)self selectedRange]- 1, 1];

LABEL_6:
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v29 = *MEMORY[0x277D85DE8];
  if ((TSDRectHasInfComponents() & 1) != 0 || TSDRectHasNaNComponents())
  {
    v8 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      v9 = NSStringFromRect(v30);
      *buf = 136315394;
      v26 = "[ICTextView setBounds:]";
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_2151A1000, v8, OS_LOG_TYPE_DEFAULT, "Calling %s with invalid value: %@", buf, 0x16u);
    }

LABEL_6:
    return;
  }

  if ([(ICTextView *)self isInSetBounds])
  {
    [(ICTextView *)self currentSetBoundsRect];
    v32.origin.x = v10;
    v32.origin.y = v11;
    v32.size.width = v12;
    v32.size.height = v13;
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    if (CGRectEqualToRect(v31, v32))
    {
      v8 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2151A1000, v8, OS_LOG_TYPE_DEFAULT, "We hit the setBounds guard", buf, 2u);
      }

      goto LABEL_6;
    }
  }

  v14 = [(ICTextView *)self disableContentOffsetChanges];
  if (![(ICTextView *)self isTransitioningToNewSize])
  {
    [(ICTextView *)self setDisableContentOffsetChanges:1];
  }

  [(ICTextView *)self setIsTransitioningToNewSize:1];
  v15 = [(ICTextView *)self isInSetBounds];
  [(ICTextView *)self currentSetBoundsRect];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [(ICTextView *)self setIsInSetBounds:1];
  [(ICTextView *)self setCurrentSetBoundsRect:x, y, width, height];
  v24.receiver = self;
  v24.super_class = ICTextView;
  [(ICTextView *)&v24 setBounds:x, y, width, height];
  [(ICTextView *)self setIsTransitioningToNewSize:0];
  [(ICTextView *)self setDisableContentOffsetChanges:v14];
  [(ICTextView *)self setIsInSetBounds:v15];
  [(ICTextView *)self setCurrentSetBoundsRect:v17, v19, v21, v23];
  [(ICTextView *)self updateLayoutMargins];
}

- (void)setEditable:(BOOL)a3
{
  v3 = a3;
  [(ICTextView *)self setIsSettingEditable:1];
  v5 = [(ICTextView *)self TTTextStorageOptional];
  [v5 beginTemporaryAttributeEditing];

  v7.receiver = self;
  v7.super_class = ICTextView;
  [(ICTextView *)&v7 setEditable:v3];
  v6 = [(ICTextView *)self TTTextStorageOptional];
  [v6 endTemporaryAttributeEditing];

  [(ICTextView *)self setIsSettingEditable:0];
}

- (void)resetUndoManager
{
  v2 = [(ICEditingTextView *)self TTTextStorage];
  [v2 resetUndoManager];
}

- (void)undoManagerDidOpenUndoGroup:(id)a3
{
  v6 = [(ICEditingTextView *)self TTTextStorage];
  if ([v6 isPausingUndoActions])
  {
    v4 = [(ICTextView *)self undoManager];
    v5 = [v4 groupingLevel];

    if (v5 < 2)
    {
      return;
    }

    v6 = [(ICEditingTextView *)self TTTextStorage];
    [v6 breakUndoCoalescing];
  }
}

- (id)positionFromPosition:(id)a3 inDirection:(int64_t)a4 offset:(int64_t)a5
{
  v8 = a3;
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    v16.receiver = self;
    v16.super_class = ICTextView;
    v9 = [(ICTextView *)&v16 positionFromPosition:v8 inDirection:a4 offset:a5];
  }

  else
  {
    objc_opt_class();
    v10 = [(ICTextView *)self layoutManager];
    v11 = ICDynamicCast();
    [v11 setLineHeightIncludeParagraphSpacing:1];

    v15.receiver = self;
    v15.super_class = ICTextView;
    v9 = [(ICTextView *)&v15 positionFromPosition:v8 inDirection:a4 offset:a5];
    objc_opt_class();
    v12 = [(ICTextView *)self layoutManager];
    v13 = ICDynamicCast();
    [v13 setLineHeightIncludeParagraphSpacing:0];
  }

  return v9;
}

- (CGRect)caretRectForPosition:(id)a3
{
  v34.receiver = self;
  v34.super_class = ICTextView;
  [(ICEditingTextView *)&v34 caretRectForPosition:a3];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ([(ICEditingTextView *)self isDraggingChecklistItem]&& [(ICEditingTextView *)self isDraggingOverChecklistItem])
  {
    v12 = [(ICEditingTextView *)self trackedParagraphCurrentlyUnderDraggedChecklist];
    [ICChecklistDragUtilities insertionRectForTrackedTodoParagraph:v12 drawAbove:[(ICEditingTextView *)self shouldDropChecklistAbove] inTextView:self];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v39 = **&MEMORY[0x277CBF3A0];
    v35.origin.x = v14;
    v35.origin.y = v16;
    v35.size.width = v18;
    v35.size.height = v20;
    y = v39.origin.y;
    v33 = *MEMORY[0x277CBF3A0];
    height = v39.size.height;
    width = v39.size.width;
    if (!CGRectEqualToRect(v35, *MEMORY[0x277CBF3A0]))
    {
      [(ICTextView *)self lastDragInsertionRect];
      v40.origin.x = v21;
      v40.origin.y = v22;
      v40.size.width = v23;
      v40.size.height = v24;
      v36.origin.x = v14;
      v36.origin.y = v16;
      v36.size.width = v18;
      v36.size.height = v20;
      if (!CGRectEqualToRect(v36, v40))
      {
        v25 = [(ICEditingTextView *)self checklistDragFeedbackGenerator];
        [v25 selectionChanged];

        v11 = v20;
        v9 = v18;
        v7 = v16;
        v5 = v14;
      }
    }

    v37.origin.x = v14;
    v37.origin.y = v16;
    v37.size.width = v18;
    v37.size.height = v20;
    v41.origin.y = y;
    v41.origin.x = v33;
    v41.size.height = height;
    v41.size.width = width;
    if (!CGRectEqualToRect(v37, v41))
    {
      v11 = v20;
      v9 = v18;
      v7 = v16;
      v5 = v14;
    }
  }

  [(ICTextView *)self setLastDragInsertionRect:v5, v7, v9, v11, *&height, *&width, *&y, *&v33];
  v26 = v5;
  v27 = v7;
  v28 = v9;
  v29 = v11;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (BOOL)attachmentViewUnderTouches:(id)a3
{
  v4 = a3;
  if (attachmentViewUnderTouches__onceToken != -1)
  {
    [ICTextView attachmentViewUnderTouches:];
  }

  if (attachmentViewUnderTouches__supportsForceTouch == 1 && [v4 count] && (objc_msgSend(v4, "anyObject"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "type"), v5, !v6))
  {
    v9 = [v4 anyObject];
    [v9 locationInView:self];
    v11 = v10;
    v13 = v12;

    v14 = [(ICTextView *)self textAttachmentAtPoint:v11, v13];
    v7 = v14 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __41__ICTextView_attachmentViewUnderTouches___block_invoke()
{
  result = MGGetBoolAnswer();
  attachmentViewUnderTouches__supportsForceTouch = result;
  return result;
}

- (BOOL)isSearchResultView:(id)a3
{
  v4 = a3;
  if ([(ICTextView *)self containsView:v4])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 superview], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 == self))
    {
      v8 = 1;
    }

    else
    {
      v6 = v4;
      v7 = v6;
      v8 = 0;
      if (v6 && v6 != self)
      {
        while (1)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [(ICTextView *)v7 superview];

            if (v9 == self)
            {
              break;
            }
          }

          v10 = [(ICTextView *)v7 superview];

          v8 = 0;
          if (v10)
          {
            v7 = v10;
            if (v10 != self)
            {
              continue;
            }
          }

          goto LABEL_15;
        }

        v8 = 1;
      }

      v10 = v7;
LABEL_15:
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = ICTextView;
  v8 = [(ICEditingTextView *)&v17 hitTest:v7 withEvent:x, y];
  if ([(ICTextView *)self isSearchResultView:v8])
  {
    v9 = [(ICBaseTextView *)self containerViewForAttachments];
    [v9 convertPoint:self fromView:{x, y}];
    v11 = v10;
    v13 = v12;

    v14 = [(ICBaseTextView *)self containerViewForAttachments];
    v15 = [v14 hitTest:v7 withEvent:{v11, v13}];
  }

  else
  {
    v15 = v8;
  }

  return v15;
}

- (id)textAttachmentAtPoint:(CGPoint)a3
{
  v4 = [(ICTextView *)self characterRangeAtPoint:a3.x, a3.y];
  v5 = [v4 start];
  if (v5)
  {
    v6 = [(ICTextView *)self beginningOfDocument];
    v7 = [(ICTextView *)self offsetFromPosition:v6 toPosition:v5];

    v8 = [(ICTextView *)self textStorage];
    v9 = [v8 attribute:*MEMORY[0x277D74060] atIndex:v7 effectiveRange:0];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }
  }

  v9 = 0;
LABEL_5:

  return v9;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(ICTextView *)self setTouchesCurrentlyOnAttachmentView:[(ICTextView *)self attachmentViewUnderTouches:v7]];
  v8 = [(ICEditingTextView *)self editorController];
  v9 = [v8 textController];
  v10 = [v9 authorHighlightsController];
  [v10 setAllowsAnimations:0];

  v11.receiver = self;
  v11.super_class = ICTextView;
  [(ICEditingTextView *)&v11 touchesBegan:v7 withEvent:v6];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(ICTextView *)self setTouchesCurrentlyOnAttachmentView:[(ICTextView *)self attachmentViewUnderTouches:v7]];
  v8.receiver = self;
  v8.super_class = ICTextView;
  [(ICEditingTextView *)&v8 touchesMoved:v7 withEvent:v6];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = ICTextView;
  [(ICEditingTextView *)&v8 touchesEnded:a3 withEvent:a4];
  [(ICTextView *)self setTouchesCurrentlyOnAttachmentView:0];
  v5 = [(ICEditingTextView *)self editorController];
  v6 = [v5 textController];
  v7 = [v6 authorHighlightsController];
  [v7 setAllowsAnimations:1];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = ICTextView;
  [(ICEditingTextView *)&v8 touchesCancelled:a3 withEvent:a4];
  [(ICTextView *)self setTouchesCurrentlyOnAttachmentView:0];
  v5 = [(ICEditingTextView *)self editorController];
  v6 = [v5 textController];
  v7 = [v6 authorHighlightsController];
  [v7 setAllowsAnimations:1];
}

- (BOOL)isPreviewing
{
  if ([(ICTextView *)self touchesCurrentlyOnAttachmentView])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [MEMORY[0x277D75C40] instancesRespondToSelector:sel_isPreviewing];
    if (v3)
    {
      v5.receiver = self;
      v5.super_class = ICTextView;
      LOBYTE(v3) = [(ICEditingTextView *)&v5 isPreviewing];
    }
  }

  return v3;
}

- (id)_targetedPreviewForTextInteractableItem:(id)a3 dismissing:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    v7 = [(ICEditingTextView *)self icLayoutManager];
    [v7 setShouldIgnoreCachedOriginUpdates:1];
  }

  v11.receiver = self;
  v11.super_class = ICTextView;
  v8 = [(ICTextView *)&v11 _targetedPreviewForTextInteractableItem:v6 dismissing:v4];
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    v9 = [(ICEditingTextView *)self icLayoutManager];
    [v9 setShouldIgnoreCachedOriginUpdates:0];
  }

  return v8;
}

- (void)setSelectedRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(ICEditingTextView *)self editorController];
  v7 = [v6 isPreviewingAttachmentFromNote];

  if ((v7 & 1) == 0)
  {
    objc_opt_class();
    v8 = [(ICTextView *)self textStorage];
    v9 = ICDynamicCast();

    if (([v9 isFixing] & 1) == 0)
    {
      [(ICEditingTextView *)self endHeadingRenameCommittingMarkedText:1];
    }

    [v9 setIsSelectingText:1];
    v10.receiver = self;
    v10.super_class = ICTextView;
    [(ICTextView *)&v10 setSelectedRange:location, length];
    [v9 setIsSelectingText:0];
  }
}

- (void)setSelectedTextRange:(id)a3
{
  v4 = a3;
  v5 = [(ICEditingTextView *)self editorController];
  v6 = [v5 isPreviewingAttachmentFromNote];

  if ((v6 & 1) == 0)
  {
    objc_opt_class();
    v7 = [(ICTextView *)self textStorage];
    v8 = ICDynamicCast();

    if (([v8 isFixing] & 1) == 0)
    {
      [(ICEditingTextView *)self endHeadingRenameCommittingMarkedText:1];
    }

    [v8 setIsSelectingText:1];
    v10.receiver = self;
    v10.super_class = ICTextView;
    [(ICTextView *)&v10 setSelectedTextRange:v4];
    [v8 setHasEditedCharactersAfterTextSelection:0];
    [v8 breakUndoCoalescing];
    [v8 setIsSelectingText:0];
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 postNotificationName:@"ICTextViewSelectedTextRangeDidChangeNotification" object:self];
  }
}

- (BOOL)touchesShouldCancelInContentView:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = v4;
  if (!v4 || (v6 = v4, v4 == self))
  {
LABEL_7:
    v10.receiver = self;
    v10.super_class = ICTextView;
    v8 = [(ICTextView *)&v10 touchesShouldCancelInContentView:v5];
    v7 = v6;
  }

  else
  {
    v7 = v4;
    while ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v6 = [(ICTextView *)v7 superview];

      if (v6)
      {
        v7 = v6;
        if (v6 != self)
        {
          continue;
        }
      }

      goto LABEL_7;
    }

    v8 = [(ICTextView *)v7 scrollViewShouldCancelTouchesForThisView];
  }

  return v8;
}

- (void)setBaseWritingDirection:(int64_t)a3 forRange:(id)a4
{
  v6 = a4;
  objc_opt_class();
  v7 = [(ICTextView *)self textStorage];
  v8 = ICDynamicCast();
  [v8 setIsResettingBaseWritingDirection:1];

  v11.receiver = self;
  v11.super_class = ICTextView;
  [(ICTextView *)&v11 setBaseWritingDirection:a3 forRange:v6];

  objc_opt_class();
  v9 = [(ICTextView *)self textStorage];
  v10 = ICDynamicCast();
  [v10 setIsResettingBaseWritingDirection:0];
}

- (void)scrollRangeToVisible:(_NSRange)a3 consideringInsets:(BOOL)a4 animated:(BOOL)a5 inSearchableString:(id)a6
{
  v6 = a5;
  v7 = a4;
  length = a3.length;
  location = a3.location;
  v18 = a6;
  v11 = [(ICEditingTextView *)self editorController];
  v12 = [v11 note];
  v13 = [v12 textRangeForSearchRange:location inSearchableString:{length, v18}];
  v15 = v14;

  if (v15)
  {
    [(ICTextView *)self ic_scrollRangeToVisible:v13 consideringInsets:v15 animated:v7, v6];
  }

  v16 = [v18 attribute:*MEMORY[0x277D36030] atIndex:location effectiveRange:0];
  if (v16)
  {
    v17 = [(ICTextView *)self findableForAttachment:v16];
    [v17 scrollToRange:location inFindableString:{length, v18}];
  }
}

- (id)findableForAttachment:(id)a3
{
  v4 = [MEMORY[0x277D36680] textAttachmentWithBaseAttachment:a3];
  v5 = v4;
  if (!v4)
  {
    v9 = 0;
    goto LABEL_11;
  }

  if (([v4 containsFindableText] & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"textAttachment.containsFindableText" functionName:"-[ICTextView findableForAttachment:]" simulateCrash:1 showAlert:0 format:@"Text attachment must contain findable text"];
  }

  if (ICInternalSettingsIsTextKit2Enabled())
  {
    objc_opt_class();
    v6 = ICCheckedDynamicCast();
    if (!v6)
    {
      v9 = 0;
      goto LABEL_10;
    }

    v7 = [(ICEditingTextView *)self icTextLayoutManager];
    v8 = [v7 tableViewControllerForAttachment:v6 createIfNeeded:1];

    ICProtocolCast();
    v9 = 0;
  }

  else
  {
    objc_opt_class();
    v10 = [(ICTextView *)self textContainer];
    v11 = [v10 layoutManager];
    v6 = ICCheckedDynamicCast();

    v8 = [v6 viewControllerForTextAttachment:v5];
    v9 = ICProtocolCast();
  }

LABEL_10:
LABEL_11:

  return v9;
}

- (void)setInputAccessoryViewVisible:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICEditingTextView *)self editorController];
  v6 = [v5 usesContextualFormatBar];

  if ((v6 & 1) == 0)
  {
    objc_opt_class();
    v7 = [(ICEditingTextView *)self editorController];
    v8 = [v7 textViewInputAccessoryView];
    v9 = ICDynamicCast();

    if ([v9 isHidden] == v3)
    {
      [v9 setHidden:v3 ^ 1u];
    }
  }
}

- (void)makeTextWritingDirectionLeftToRight:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICTextView;
  [(ICEditingTextView *)&v9 makeTextWritingDirectionLeftToRight:v4];
  v5 = [(ICTextView *)self ic_selectedRanges];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ICTextView_makeTextWritingDirectionLeftToRight___block_invoke;
  v7[3] = &unk_2781AD7D8;
  v8 = v4;
  v6 = v4;
  [(ICEditingTextView *)self ic_enumerateTableAttachmentViewControllersInRanges:v5 usingBlock:v7];
}

- (void)makeTextWritingDirectionRightToLeft:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICTextView;
  [(ICEditingTextView *)&v9 makeTextWritingDirectionRightToLeft:v4];
  v5 = [(ICTextView *)self ic_selectedRanges];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ICTextView_makeTextWritingDirectionRightToLeft___block_invoke;
  v7[3] = &unk_2781AD7D8;
  v8 = v4;
  v6 = v4;
  [(ICEditingTextView *)self ic_enumerateTableAttachmentViewControllersInRanges:v5 usingBlock:v7];
}

- (void)updateTextViewForDidChange
{
  if ([(ICTextView *)self isSettingStyleWithStyleUI])
  {
    v3 = [(ICEditingTextView *)self typingAttributes];
    v4 = MEMORY[0x277D35DA8];
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277D35DA8]];

    if (v5)
    {
      v6 = [(ICEditingTextView *)self internalTypingAttributes];
      v7 = [v6 mutableCopy];

      [v7 setObject:v5 forKey:*v4];
      [(ICEditingTextView *)self setInternalTypingAttributes:v7];
    }
  }

  v8.receiver = self;
  v8.super_class = ICTextView;
  [(ICEditingTextView *)&v8 updateTextViewForDidChange];
}

- (BOOL)keyboardInput:(id)a3 shouldInsertText:(id)a4 isMarkedText:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  [(ICTextView *)self setIsInsertingTextFromKeyboardInput:1];
  v11.receiver = self;
  v11.super_class = ICTextView;
  LOBYTE(v5) = [(ICTextView *)&v11 keyboardInput:v9 shouldInsertText:v8 isMarkedText:v5];

  [(ICTextView *)self setIsInsertingTextFromKeyboardInput:0];
  return v5;
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 1;
  if ([MEMORY[0x277D75658] isInHardwareKeyboardMode] && -[ICTextView ic_isFirstResponder](self, "ic_isFirstResponder"))
  {
    v8 = [v7 _modifierFlags];
    v9 = [v7 _unmodifiedInput];
    v10 = [(ICTextView *)self selectedRange];
    v12 = v11;
    if ([v9 length])
    {
      v13 = [v7 _isKeyDown];
      v14 = v12 ? 0 : v13;
      if (v14 == 1)
      {
        v15 = *MEMORY[0x277D76B48];
        if ([v9 isEqualToString:*MEMORY[0x277D76B48]])
        {
          if ((v8 & 0xFFFFFFFFFFF7FFFFLL) == 0)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v16 = [v9 isEqualToString:*MEMORY[0x277D76B60]];
          if ((v8 & 0xFFFFFFFFFFF7FFFFLL) != 0)
          {
            v17 = 0;
          }

          else
          {
            v17 = v16;
          }

          if (v17)
          {
LABEL_15:
            v18 = [(ICTextView *)self textStorage];
            v19 = [v18 attributesAtIndex:v10 effectiveRange:0];

            v20 = [v19 objectForKey:*MEMORY[0x277D74118]];
            v21 = v20;
            if (v20)
            {
              v22 = [v20 baseWritingDirection];
              v23 = [v9 isEqualToString:v15];
              v24 = v23;
              if (((v22 != 1) ^ v23))
              {
                v25 = [(ICTextView *)self textStorage];
                v26 = [v25 length];

                if (v10 >= v26)
                {
                  goto LABEL_28;
                }

LABEL_21:
                if (v10 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v27 = [(ICTextView *)self textStorage];
                  v52.length = [v27 length];
                  v51.location = v10;
                  v51.length = 1;
                  v52.location = 0;
                  length = NSIntersectionRange(v51, v52).length;

                  if (length != 1)
                  {
                    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"NSIntersectionRange(testRange functionName:NSMakeRange(0 simulateCrash:self.textStorage.length)).length == 1" showAlert:"-[ICTextView pressesBegan:withEvent:]" format:{1, 0, @"test range must be within bounds"}];
                  }

                  if (ICInternalSettingsIsTextKit2Enabled())
                  {
                    v29 = [(ICEditingTextView *)self icTextLayoutManager];
                    v45[0] = MEMORY[0x277D85DD0];
                    v45[1] = 3221225472;
                    v45[2] = __37__ICTextView_pressesBegan_withEvent___block_invoke;
                    v45[3] = &unk_2781AD800;
                    v46 = v24;
                    v45[4] = self;
                    v45[5] = &v47;
                    [v29 enumerateAttachmentViewsInRange:v10 usingBlock:{1, v45}];
                  }

                  else
                  {
                    objc_opt_class();
                    v30 = [(ICTextView *)self layoutManager];
                    v31 = ICDynamicCast();

                    v41[0] = MEMORY[0x277D85DD0];
                    v41[1] = 3221225472;
                    v41[2] = __37__ICTextView_pressesBegan_withEvent___block_invoke_2;
                    v41[3] = &unk_2781AD800;
                    v29 = v31;
                    v44 = v24;
                    v42 = v29;
                    v43 = &v47;
                    [v29 enumerateAttachmentViewsInRange:v10 usingBlock:{1, v41}];
                  }
                }

                goto LABEL_28;
              }

              if (v10)
              {
                --v10;
                goto LABEL_21;
              }
            }

LABEL_28:
          }
        }
      }
    }

    v32 = [(ICEditingTextView *)self editorController];
    v33 = [v32 linkAcceleratorController];

    if (![v33 isShowing] || !objc_msgSend(v7, "_isKeyDown"))
    {
      goto LABEL_42;
    }

    *(v48 + 24) = 0;
    v34 = [v9 isEqualToString:*MEMORY[0x277D76AD8]];
    v35 = [v9 isEqualToString:*MEMORY[0x277D76AC0]];
    v36 = [v9 isEqualToString:*MEMORY[0x277D76B68]];
    v37 = [v9 isEqualToString:@"\r"];
    v38 = [v9 isEqualToString:@"\t"];
    if (v34)
    {
      [v33 hideAccelerator];
LABEL_42:

      goto LABEL_43;
    }

    if (v35)
    {
      v39 = [v33 handleArrowDown];
    }

    else if (v36)
    {
      v39 = [v33 handleArrowUp];
    }

    else
    {
      if (((v37 | v38) & 1) == 0)
      {
        goto LABEL_41;
      }

      v39 = [v33 handleUseCurrentSuggestion];
    }

    if (v39)
    {
      goto LABEL_42;
    }

    [v33 hideAccelerator];
LABEL_41:
    *(v48 + 24) = 1;
    goto LABEL_42;
  }

LABEL_43:
  if (*(v48 + 24) == 1)
  {
    v40.receiver = self;
    v40.super_class = ICTextView;
    [(ICTextView *)&v40 pressesBegan:v6 withEvent:v7];
  }

  _Block_object_dispose(&v47, 8);
}

void __37__ICTextView_pressesBegan_withEvent___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v4 = [v9 attachment];
  v5 = [v4 attachmentType];

  if (v5 == 12)
  {
    v6 = [*(a1 + 32) icTextLayoutManager];
    objc_opt_class();
    v7 = ICCheckedDynamicCast();
    v8 = [v6 tableViewControllerForAttachment:v7 createIfNeeded:1];

    [v8 moveIntoTableWithDirection:*(a1 + 48) ^ 1];
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void __37__ICTextView_pressesBegan_withEvent___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v4 = [v8 attachment];
  v5 = [v4 attachmentType];

  if (v5 == 12)
  {
    objc_opt_class();
    v6 = [*(a1 + 32) viewControllerForTextAttachment:v8];
    v7 = ICDynamicCast();

    [v7 moveIntoTableWithDirection:*(a1 + 48) ^ 1];
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (void)clampTextView
{
  v2 = [(ICTextView *)self scrollClampingControllerDelayedRelease];
  [v2 clamp];
}

- (void)unclampTextView
{
  v2 = [(ICTextView *)self scrollClampingControllerDelayedRelease];
  [v2 unclamp];
}

- (void)_scrollToCaretIfNeeded
{
  if ([(ICTextView *)self shouldAutoScroll])
  {
    v3.receiver = self;
    v3.super_class = ICTextView;
    [(ICTextView *)&v3 _scrollToCaretIfNeeded];
  }
}

- (void)_updatePanGesture
{
  [(ICTextView *)self setIsUpdatingPanGesture:1];
  v3.receiver = self;
  v3.super_class = ICTextView;
  [(ICTextView *)&v3 _updatePanGesture];
  [(ICTextView *)self setIsUpdatingPanGesture:0];
}

- (void)authorHighlightsControllerWillPerformHighlightUpdates:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 userInfo];

  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D364B8]];
  v10 = ICCheckedDynamicCast();

  v7 = [v10 document];
  v8 = [(ICEditingTextView *)self TTTextStorage];
  v9 = [v8 document];

  if (v7 == v9)
  {
    [(ICTextView *)self setIsPerformingHighlightUpdates:1];
  }
}

- (void)authorHighlightsControllerDidPerformHighlightUpdates:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 userInfo];

  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D364B8]];
  v7 = ICCheckedDynamicCast();

  v8 = [v7 document];
  v9 = [(ICEditingTextView *)self TTTextStorage];
  v10 = [v9 document];

  if (v8 == v10)
  {
    dispatchMainAfterDelay();
  }
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = [a3 object];
  v5 = [(ICTextView *)self window];
  v6 = [v5 windowScene];

  if (v4 == v6)
  {

    [(ICTextView *)self updateLayoutMarginsForMultipleTextViewsIfNecessary];
  }
}

- (void)splitViewAnimatedTransitionWillBegin:(id)a3
{
  v4 = a3;
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    objc_opt_class();
    v5 = [v4 object];
    v6 = ICDynamicCast();

    v7 = [(ICEditingTextView *)self editorController];
    v8 = [v7 viewControllerManager];

    v9 = [v8 mainSplitViewController];
    objc_opt_class();
    v10 = [v4 userInfo];
    v11 = [v10 objectForKeyedSubscript:@"ICSplitViewControllerPredictedDetailSizeUserInfo"];
    v12 = ICDynamicCast();

    v13 = [v9 transitionCoordinator];
    v14 = [v8 mainSplitViewController];
    if (v6 == v14 && [v9 displayMode] != 3 && v13)
    {

      if (v12)
      {
        v15 = [v13 completionCurve];
        [v13 transitionDuration];
        v17 = v16;
        [v13 transitionDuration];
        v19 = v18;
        [v13 percentComplete];
        v21 = v17 - v19 * v20;
        v22 = MEMORY[0x277D75D18];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __51__ICTextView_splitViewAnimatedTransitionWillBegin___block_invoke;
        v23[3] = &unk_2781ABEB8;
        v23[4] = self;
        v24 = v12;
        [v22 transitionWithView:self duration:v15 | 0x500000 options:v23 animations:0 completion:v21];
      }
    }

    else
    {
    }
  }
}

uint64_t __51__ICTextView_splitViewAnimatedTransitionWillBegin___block_invoke(uint64_t a1)
{
  [*(a1 + 32) frame];
  v3 = v2;
  v5 = v4;
  [*(a1 + 40) CGSizeValue];
  v7 = v6;
  [*(a1 + 40) CGSizeValue];
  v9 = *(a1 + 32);

  return [v9 setFrame:{v3, v5, v7, v8}];
}

- (void)splitViewAnimatedTransitionEnded:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];

  v9 = ICDynamicCast();

  v6 = [(ICTextView *)self window];
  v7 = [v6 rootViewController];

  v8 = v9;
  if (v7 == v9)
  {
    [(ICTextView *)self updateLayoutMargins];
    v8 = v9;
  }
}

- (void)updateLayoutMarginsForMultipleTextViewsIfNecessary
{
  v3 = [(ICEditingTextView *)self TTTextStorage];
  v4 = [v3 textViews];
  v5 = [v4 count];

  if (v5 >= 2)
  {
    if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
    {
      v6 = [(ICEditingTextView *)self editorController];
      [v6 saveCurrentScrollState];
    }

    [(ICTextView *)self updateLayoutMargins];
    if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
    {
      v7 = [(ICEditingTextView *)self editorController];
      [v7 applyScrollStateIfAvailable];
    }
  }
}

- (UILayoutGuide)textContainerLayoutGuide
{
  v23[4] = *MEMORY[0x277D85DE8];
  textContainerLayoutGuide = self->_textContainerLayoutGuide;
  if (!textContainerLayoutGuide)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756D0]);
    v5 = self->_textContainerLayoutGuide;
    self->_textContainerLayoutGuide = v4;

    [(ICTextView *)self addLayoutGuide:self->_textContainerLayoutGuide];
    v6 = [(UILayoutGuide *)self->_textContainerLayoutGuide leadingAnchor];
    v7 = [(ICTextView *)self safeAreaLayoutGuide];
    v8 = [v7 leadingAnchor];
    v22 = [v6 constraintEqualToAnchor:v8];

    v9 = [(ICTextView *)self safeAreaLayoutGuide];
    v10 = [v9 trailingAnchor];
    v11 = [(UILayoutGuide *)self->_textContainerLayoutGuide trailingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    v21 = MEMORY[0x277CCAAD0];
    v23[0] = v22;
    v23[1] = v12;
    v13 = [(UILayoutGuide *)self->_textContainerLayoutGuide topAnchor];
    v14 = [(ICTextView *)self topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v23[2] = v15;
    v16 = [(UILayoutGuide *)self->_textContainerLayoutGuide bottomAnchor];
    v17 = [(ICTextView *)self bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v23[3] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
    [v21 activateConstraints:v19];

    [(ICTextView *)self setTextContainerLayoutGuideLeading:v22];
    [(ICTextView *)self setTextContainerLayoutGuideTrailing:v12];

    textContainerLayoutGuide = self->_textContainerLayoutGuide;
  }

  return textContainerLayoutGuide;
}

- (BOOL)isPaperLinkBarShowingOrWillShow
{
  v3 = [(ICBaseTextView *)self icDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(ICBaseTextView *)self icDelegate];
  v6 = [v5 isPaperLinkBarShowing];

  return v6;
}

- (void)applyEdgeInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  v118 = *MEMORY[0x277D85DE8];
  if (([(ICTextView *)self _freezeTextContainerSize:a3.top]& 1) != 0)
  {
    return;
  }

  if (![MEMORY[0x277D75418] ic_isVision])
  {
    v13 = [(ICTextView *)self window];

    if (!v13)
    {
      return;
    }

    v14 = [(ICTextView *)self effectiveUserInterfaceLayoutDirection];
    [(ICTextView *)self bounds];
    v16 = v15;
    v17 = [(ICEditingTextView *)self TTTextStorage];
    v18 = [v17 textViews];

    if ([v18 count] >= 2)
    {
      v110 = v14;
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v113 objects:v117 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v114;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v114 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v113 + 1) + 8 * i);
            if (v24 != self)
            {
              v25 = [*(*(&v113 + 1) + 8 * i) window];

              if (v25)
              {
                v26 = [(ICTextView *)v24 window];
                v27 = [v26 windowScene];
                v28 = [v27 activationState];

                if (v28 <= 1)
                {
                  [(ICTextView *)v24 bounds];
                  if (v29 >= v16)
                  {
                    v16 = v29;
                  }
                }
              }
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v113 objects:v117 count:16];
        }

        while (v21);
      }

      v14 = v110;
    }

    if (v16 > 1366.0)
    {
      v30 = 1.2;
      goto LABEL_32;
    }

    v30 = v16 * 0.5 / 375.0;
    if (v16 <= 1024.0)
    {
      if (v16 <= 989.0)
      {
        goto LABEL_32;
      }

      v31 = 0.85;
    }

    else
    {
      v31 = 0.68;
    }

    v30 = v30 * v31;
LABEL_32:
    v32 = fmax(v30, 1.0);
    [(ICTextView *)self leadingMargin];
    v34 = v33;
    [(ICTextView *)self textContainerInset];
    v36 = v35;
    v38 = v37;
    if (_UISolariumEnabled())
    {
      v39 = [(ICTextView *)self window];
      v40 = [v39 readableContentGuide];
      [v40 layoutFrame];
      [(ICTextView *)self convertRect:0 fromView:?];
      Width = CGRectGetWidth(v120);

      v41 = [(ICTextView *)self superview];
      [v41 safeAreaInsets];
      v107 = v43;
      v108 = v42;

      v44 = [(ICTextView *)self superview];
      [v44 bounds];
      v46 = v45;
      v111 = v32;
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v53 = [(ICTextView *)self superview];
      [v53 safeAreaInsets];
      v55 = v46 + v54;
      v57 = v48 + v56;
      v59 = v50 - (v54 + v58);
      v61 = v52 - (v56 + v60);
      v62 = [(ICTextView *)self superview];
      [(ICTextView *)self convertRect:v62 fromView:v55, v57, v59, v61];
      v63 = CGRectGetWidth(v121);

      v64 = [(ICTextView *)self window];
      [v64 bounds];
      v66 = v65;
      v68 = v67;
      v70 = v69;
      v72 = v71;
      v73 = [(ICTextView *)self window];
      [v73 safeAreaInsets];
      [(ICTextView *)self convertRect:0 fromView:v66 + v77, v68 + v74, v70 - (v77 + v75), v72 - (v74 + v76)];
      v78 = CGRectGetWidth(v122);

      if (vabdd_f64(v63, v78) >= 0.00999999978 || v108 + v107 <= 0.0)
      {
        v80 = v34;
      }

      else
      {
        v80 = 0.0;
      }

      v32 = v111;
      v81 = v63 - Width;
      if (v80 >= v63 - Width)
      {
        v81 = v80;
      }

      if (v14 == 1)
      {
        v82 = v80;
      }

      else
      {
        v82 = v81;
      }

      if (v14 == 1)
      {
        v80 = v81;
      }

      v83 = v108 + v80;
      v84 = v107 + v82;
    }

    else
    {
      v85 = v16 - (v34 + v32 * (v16 - (right + v34)));
      if (v85 < v34)
      {
        v85 = v34;
      }

      if (v14 == 1)
      {
        v84 = v34;
      }

      else
      {
        v84 = v85;
      }

      if (v14 == 1)
      {
        v83 = v85;
      }

      else
      {
        v83 = v34;
      }
    }

    [(ICTextView *)self textContainerInset:*&v107];
    v89 = v88 != v83;
    if (v90 != v36)
    {
      v89 = 1;
    }

    if (v87 != v84)
    {
      v89 = 1;
    }

    v91 = v86 != v38 || v89;
    if (v91 == 1)
    {
      [(ICTextView *)self setTextContainerInset:v36, v83, v38, v84];
    }

    v92 = [(ICEditingTextView *)self TTTextStorage];
    objc_opt_class();
    v93 = [v92 styler];
    v94 = ICCheckedDynamicCast();

    if (!v94)
    {
      v97 = 0;
      goto LABEL_79;
    }

    v95 = [v94 zoomController];
    [v95 zoomFactor];
    if (vabdd_f64(v32, v96) < 0.00999999978)
    {
      goto LABEL_66;
    }

    if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0 && [v18 count] >= 2)
    {
      v98 = [(ICTextView *)self window];
      v99 = [v98 windowScene];
      if ([v99 activationState] == 2)
      {

LABEL_66:
        v97 = 0;
LABEL_78:

LABEL_79:
        IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
        [(ICTextView *)self setNeedsLayout];
        if (IsTextKit2Enabled)
        {
          if ((v91 | v97) == 1)
          {
            objc_opt_class();
            v104 = [(ICTextView *)self textLayoutManager];
LABEL_84:
            v105 = v104;
            v106 = ICDynamicCast();

            [v106 zoomFactorOrInsetsDidChange];
          }
        }

        else
        {
          [(ICTextView *)self frame];
          [(ICTextView *)self setFrame:?];
          if ((v91 | v97) == 1)
          {
            objc_opt_class();
            v104 = [(ICTextView *)self layoutManager];
            goto LABEL_84;
          }
        }

        return;
      }

      v100 = [(ICTextView *)self window];
      v101 = [v100 windowScene];
      v112 = [v101 activationState];

      if (v112 == 1)
      {
        goto LABEL_66;
      }
    }

    [v95 setZoomFactor:v32];
    v102 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
    {
      [(ICTextView *)v102 applyEdgeInsets:v32];
    }

    if (ICInternalSettingsIsTextKit2Enabled())
    {
      v97 = 1;
      [(ICBaseTextView *)self setNeedsStylingRefreshOnNextLayout:1];
    }

    else
    {
      [v94 refreshTextStylingForTextStorage:v92 withTextController:v94];
      v97 = 1;
    }

    goto LABEL_78;
  }

  [objc_opt_class() overrideEdgeInset];
  v6 = v5;
  [(ICTextView *)self textContainerInset];
  v8 = v7;
  [(ICTextView *)self textContainerInset];
  if (v12 != v6 || v9 != v6 || v11 != v6 || v10 != v8)
  {

    [(ICTextView *)self setTextContainerInset:v6, v6, v8, v6];
  }
}

- (id)attachmentViewTappedByGesture:(id)a3
{
  v4 = a3;
  if (![v4 numberOfTouches])
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  [v4 locationOfTouch:0 inView:self];
  v5 = [(ICTextView *)self hitTest:0 withEvent:?];
  v6 = v5;
  if (!v5 || v5 == self)
  {
    v7 = v5;
LABEL_12:

    goto LABEL_13;
  }

  while (1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    NSClassFromString(&cfstr_PaperkitPapert.isa);
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    v7 = [(ICTextView *)v6 superview];

    if (v7)
    {
      v6 = v7;
      if (v7 != self)
      {
        continue;
      }
    }

    goto LABEL_12;
  }

LABEL_14:

  return v6;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v5 = a4;
  v6 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v8 = 0;
  if (isKindOfClass)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v8 = 1;
    }
  }

  return v8;
}

- (void)inProcessUndoPanGesture:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  if ([a3 state] == 1)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = [(ICTextView *)self collectScrollViews];
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          v10 = [v9 panGestureRecognizer];
          v11 = [v10 isEnabled];

          if (v11)
          {
            v12 = [v9 panGestureRecognizer];
            [v12 setEnabled:0];

            v13 = [v9 panGestureRecognizer];
            [v13 setEnabled:1];
          }

          v14 = [v9 pinchGestureRecognizer];
          v15 = [v14 isEnabled];

          if (v15)
          {
            v16 = [v9 pinchGestureRecognizer];
            [v16 setEnabled:0];

            v17 = [v9 pinchGestureRecognizer];
            [v17 setEnabled:1];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }
  }
}

- (id)collectScrollViews
{
  v3 = [MEMORY[0x277CBEB18] array];
  ICTextViewCollectScrollViews(self, v3);
  v4 = [v3 copy];

  return v4;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    goto LABEL_8;
  }

  v11 = [(ICEditingTextView *)self editorController];
  if (([v11 isInkPickerShowing] & 1) == 0)
  {

LABEL_8:
    v29.receiver = self;
    v29.super_class = ICTextView;
    v27 = [(ICTextView *)&v29 pointerInteraction:v8 regionForRequest:v9 defaultRegion:v10];
    goto LABEL_9;
  }

  v12 = [MEMORY[0x277D75820] prefersPencilOnlyDrawing];

  if (v12)
  {
    goto LABEL_8;
  }

  v13 = [(ICTextView *)self layoutManager];
  v14 = [(ICTextView *)self textStorage];
  v15 = [v13 glyphIndexForCharacterAtIndex:{objc_msgSend(v14, "length") - 1}];

  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_8;
  }

  v16 = [(ICTextView *)self layoutManager];
  [v16 lineFragmentRectForGlyphAtIndex:v15 effectiveRange:0];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  [v9 location];
  v26 = v25;
  v31.origin.x = v18;
  v31.origin.y = v20;
  v31.size.width = v22;
  v31.size.height = v24;
  v27 = 0;
  if (v26 <= CGRectGetMaxY(v31))
  {
    goto LABEL_8;
  }

LABEL_9:

  return v27;
}

- (void)textControllerDidHandleSpecialCaseEditing:(id)a3
{
  v4 = [(ICTextView *)self delegate];
  [v4 textViewDidChange:self];
}

- (id)accessibilityLabel
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Note" value:&stru_282757698 table:0];

  return v3;
}

- (BOOL)_accessibilityBeginUndoableTextInsertion
{
  v2 = [(ICEditingTextView *)self TTTextStorage];
  [v2 setIsPerformingAccessibilityUndoableTextInsertion:1];

  return 1;
}

- (BOOL)_accessibilityEndUndoableTextInsertion
{
  v2 = [(ICEditingTextView *)self TTTextStorage];
  [v2 setIsPerformingAccessibilityUndoableTextInsertion:0];

  return 1;
}

- (id)_icaxUnfilteredAttributedString
{
  v2 = [(ICEditingTextView *)self TTTextStorage];
  v3 = [v2 _icaxUnfilteredAttributedString];

  return v3;
}

- (void)handleAccessibilityDarkerSystemColorsStatusDidChange:(id)a3
{
  v4 = [(ICTextView *)self textStorage];
  v5 = *MEMORY[0x277D740E8];
  v6 = [(ICTextView *)self textStorage];
  v7 = [v6 length];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__ICTextView_handleAccessibilityDarkerSystemColorsStatusDidChange___block_invoke;
  v8[3] = &unk_2781AC5D8;
  v8[4] = self;
  [v4 enumerateAttribute:v5 inRange:0 options:v7 usingBlock:{0, v8}];
}

void __67__ICTextView_handleAccessibilityDarkerSystemColorsStatusDidChange___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  objc_opt_class();
  v7 = [*(a1 + 32) textStorage];
  v10 = ICDynamicCast();

  if (v10)
  {
    v8 = [*(a1 + 32) editorController];
    v9 = [v8 textController];
    [v9 styleText:v10 inExactRange:a3 fixModelAttributes:{a4, 0}];
  }
}

- (CGPoint)rubberBandContentOffset
{
  x = self->_rubberBandContentOffset.x;
  y = self->_rubberBandContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)lastDragInsertionRect
{
  x = self->_lastDragInsertionRect.origin.x;
  y = self->_lastDragInsertionRect.origin.y;
  width = self->_lastDragInsertionRect.size.width;
  height = self->_lastDragInsertionRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)lastProposedContentOffset
{
  x = self->_lastProposedContentOffset.x;
  y = self->_lastProposedContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)distanceConsumedByEmbeddedScrollViews
{
  x = self->_distanceConsumedByEmbeddedScrollViews.x;
  y = self->_distanceConsumedByEmbeddedScrollViews.y;
  result.y = y;
  result.x = x;
  return result;
}

- (NSLayoutConstraint)textContainerLayoutGuideLeading
{
  WeakRetained = objc_loadWeakRetained(&self->_textContainerLayoutGuideLeading);

  return WeakRetained;
}

- (NSLayoutConstraint)textContainerLayoutGuideTrailing
{
  WeakRetained = objc_loadWeakRetained(&self->_textContainerLayoutGuideTrailing);

  return WeakRetained;
}

void __77__ICTextView_performTextSearchWithQueryString_usingOptions_resultAggregator___block_invoke_4_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2151A1000, a2, OS_LOG_TYPE_ERROR, "Error when trying to find in note: %@", &v2, 0xCu);
}

void __71__ICTextView_replaceAllOccurrencesOfQueryString_usingOptions_withText___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = 138412802;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_2151A1000, log, OS_LOG_TYPE_ERROR, "Unexpected error when trying to replace all occurrences of %@ with %@: %@", &v5, 0x20u);
}

- (void)applyEdgeInsets:(NSObject *)a1 .cold.1(NSObject *a1, double a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D74300] ic_preferredFontForBodyText];
  [v4 pointSize];
  v6 = 134218240;
  v7 = a2;
  v8 = 2048;
  v9 = a2 * v5;
  _os_log_debug_impl(&dword_2151A1000, a1, OS_LOG_TYPE_DEBUG, "Applying zoom factor: %g => %g", &v6, 0x16u);
}

@end