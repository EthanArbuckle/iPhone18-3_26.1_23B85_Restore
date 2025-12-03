@interface ICTextView
+ (double)overrideEdgeInset;
+ (void)initialize;
- (BOOL)_accessibilityBeginUndoableTextInsertion;
- (BOOL)_accessibilityEndUndoableTextInsertion;
- (BOOL)attachmentViewUnderTouches:(id)touches;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)hideCompatibilityBanner;
- (BOOL)isEditingOnSystemPaper;
- (BOOL)isPaperLinkBarShowingOrWillShow;
- (BOOL)isPreviewing;
- (BOOL)isScrolling;
- (BOOL)isSearchResultView:(id)view;
- (BOOL)keyboardInput:(id)input shouldInsertText:(id)text isMarkedText:(BOOL)markedText;
- (BOOL)resignFirstResponder;
- (BOOL)selectionSupportsFindInNote;
- (BOOL)shouldAutoScroll;
- (BOOL)shouldReplaceFoundTextInRange:(id)range inDocument:(id)document withText:(id)text;
- (BOOL)shouldUpdateVisibleSupplementalViewsInLayoutSubviews;
- (BOOL)showCompatibilityBannerWithParentViewController:(id)controller;
- (BOOL)touchesShouldCancelInContentView:(id)view;
- (CGPoint)clippedContentOffset:(CGPoint)offset;
- (CGPoint)distanceConsumedByEmbeddedScrollViews;
- (CGPoint)lastProposedContentOffset;
- (CGPoint)rubberBandContentOffset;
- (CGPoint)scrollEmbeddedScrollViewsWithProposedContentOffset:(CGPoint)offset;
- (CGRect)caretRectForPosition:(id)position;
- (CGRect)currentSetBoundsRect;
- (CGRect)lastDragInsertionRect;
- (CGSize)previousContentSize;
- (ICAttachmentViewDelegate)attachmentViewDelegate;
- (ICTextView)initWithCoder:(id)coder;
- (ICTextView)initWithFrame:(CGRect)frame;
- (NSLayoutConstraint)textContainerLayoutGuideLeading;
- (NSLayoutConstraint)textContainerLayoutGuideTrailing;
- (UIEdgeInsets)minimumMargins;
- (UILayoutGuide)textContainerLayoutGuide;
- (_NSRange)characterRangeFromTextKitRange:(id)range;
- (double)leadingMargin;
- (double)maxYContentOffset;
- (id)TTTextStorageOptional;
- (id)_icaxUnfilteredAttributedString;
- (id)_nextKeyResponder;
- (id)_targetedPreviewForTextInteractableItem:(id)item dismissing:(BOOL)dismissing;
- (id)accessibilityLabel;
- (id)attachmentViewTappedByGesture:(id)gesture;
- (id)collectScrollViews;
- (id)findInteraction:(id)interaction sessionForView:(id)view;
- (id)findableForAttachment:(id)attachment;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)note;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)positionFromPosition:(id)position inDirection:(int64_t)direction offset:(int64_t)offset;
- (id)selectedText;
- (id)selectionRectsForRange:(id)range;
- (id)singleSelectedAttachment;
- (id)tableAttachmentViewControllerForRange:(_NSRange)range;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (id)textAttachmentAtPoint:(CGPoint)point;
- (id)undoManager;
- (void)_adjustContentOffsetIfNecessary;
- (void)_scrollToCaretIfNeeded;
- (void)_scrollToSelectionIfNeeded;
- (void)_updateContentSize;
- (void)_updatePanGesture;
- (void)applyEdgeInsets:(UIEdgeInsets)insets;
- (void)authorHighlightsControllerDidPerformHighlightUpdates:(id)updates;
- (void)authorHighlightsControllerWillPerformHighlightUpdates:(id)updates;
- (void)clampTextView;
- (void)clearAllDecoratedFoundText;
- (void)commonInit;
- (void)createDateLabel;
- (void)createUserTitleViewIfNecessaryForNote:(id)note;
- (void)dealloc;
- (void)dictationControllerDidFinish:(id)finish;
- (void)dictationControllerDidPause:(id)pause;
- (void)dictationControllerDidResume:(id)resume;
- (void)didDismissWritingTools;
- (void)didEndTextSearchOperation;
- (void)findInteraction:(id)interaction didBeginFindSession:(id)session;
- (void)findInteraction:(id)interaction didEndFindSession:(id)session;
- (void)handleAccessibilityDarkerSystemColorsStatusDidChange:(id)change;
- (void)hideOverlappingAttachmentViewsIfNecessary;
- (void)inProcessUndoPanGesture:(id)gesture;
- (void)initializeScollClampingController;
- (void)keyboardDidBeginDictation:(id)dictation;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)makeTextWritingDirectionLeftToRight:(id)right;
- (void)makeTextWritingDirectionRightToLeft:(id)left;
- (void)performTextSearchWithQueryString:(id)string usingOptions:(id)options resultAggregator:(id)aggregator;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)registerForTraitChanges;
- (void)replaceAllOccurrencesOfQueryString:(id)string usingOptions:(id)options withText:(id)text;
- (void)replaceFoundTextInRange:(id)range inDocument:(id)document withText:(id)text;
- (void)resetContentOffset:(CGPoint)offset;
- (void)resetUndoManager;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)scrollRangeToVisible:(_NSRange)visible consideringInsets:(BOOL)insets animated:(BOOL)animated inSearchableString:(id)string;
- (void)scrollRangeToVisible:(id)visible inDocument:(id)document;
- (void)scrollRectToVisible:(CGRect)visible animated:(BOOL)animated;
- (void)select:(id)select;
- (void)setAttachmentViewDelegate:(id)delegate;
- (void)setBaseWritingDirection:(int64_t)direction forRange:(id)range;
- (void)setBounds:(CGRect)bounds;
- (void)setClippedContentOffset:(CGPoint)offset;
- (void)setContentOffset:(CGPoint)offset;
- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated;
- (void)setEditable:(BOOL)editable;
- (void)setEmbeddedScrollViews:(id)views;
- (void)setInputAccessoryViewVisible:(BOOL)visible;
- (void)setSelectedRange:(_NSRange)range;
- (void)setSelectedTextRange:(id)range;
- (void)splitViewAnimatedTransitionEnded:(id)ended;
- (void)splitViewAnimatedTransitionWillBegin:(id)begin;
- (void)startEditingForTapGesture:(id)gesture;
- (void)textControllerDidHandleSpecialCaseEditing:(id)editing;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)unclampTextView;
- (void)undoManagerDidOpenUndoGroup:(id)group;
- (void)updateCompatibilityBannerForNote:(id)note parentViewController:(id)controller updateTextViewContentInsets:(BOOL)insets;
- (void)updateLayoutMargins;
- (void)updateLayoutMarginsForMultipleTextViewsIfNecessary;
- (void)updateOverscrollItemFrames;
- (void)updateTextViewForDidChange;
- (void)userTitleHiddenStateDidChange:(id)change;
- (void)willHighlightFoundTextRange:(id)range inDocument:(id)document;
- (void)willPresentWritingTools;
- (void)writingToolsCoordinator:(id)coordinator replaceRange:(_NSRange)range inContext:(id)context proposedText:(id)text reason:(int64_t)reason animationParameters:(id)parameters completion:(id)completion;
- (void)writingToolsCoordinator:(id)coordinator willChangeToState:(int64_t)state completion:(id)completion;
@end

@implementation ICTextView

- (UIEdgeInsets)minimumMargins
{
  textContainer = [(ICTextView *)self textContainer];
  [textContainer lineFragmentPadding];
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
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___ICTextView;
  objc_msgSendSuper2(&v7, sel_initialize);
  if (objc_opt_class() == self)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v10 = *MEMORY[0x277D36308];
    v11[0] = &unk_28277E520;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [standardUserDefaults registerDefaults:v4];

    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v8 = *MEMORY[0x277D362E8];
    v9 = &unk_28277E538;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    [standardUserDefaults2 registerDefaults:v6];
  }
}

- (void)_adjustContentOffsetIfNecessary
{
  window = [(ICTextView *)self window];

  if (window)
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
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults floatForKey:*MEMORY[0x277D36308]];
  v5 = v4;

  [(ICTextView *)self setMaxTileHeight:v5];
  [(ICTextView *)self setEditable:0];
  v6 = objc_alloc_init(MEMORY[0x277CD9FF8]);
  splitLayerContainer = self->_splitLayerContainer;
  self->_splitLayerContainer = v6;

  layer = [(ICTextView *)self layer];
  [layer addSublayer:self->_splitLayerContainer];

  if (objc_opt_respondsToSelector())
  {
    [(ICTextView *)self setLayoutMarginsFollowReadableWidth:1];
  }

  [(ICTextView *)self createDateLabel];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_keyboardDidBeginDictation_ name:@"UIKeyboardDidBeginDictationNotification" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_dictationControllerDidPause_ name:*MEMORY[0x277D76890] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_dictationControllerDidResume_ name:*MEMORY[0x277D76898] object:0];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel_dictationControllerDidFinish_ name:*MEMORY[0x277D76888] object:0];

  defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
  v14 = *MEMORY[0x277CCA800];
  undoManager = [(ICTextView *)self undoManager];
  [defaultCenter5 addObserver:self selector:sel_undoManagerDidOpenUndoGroup_ name:v14 object:undoManager];

  defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter6 addObserver:self selector:sel_handleAccessibilityDarkerSystemColorsStatusDidChange_ name:*MEMORY[0x277D76460] object:0];

  defaultCenter7 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter7 addObserver:self selector:sel_sceneWillEnterForeground_ name:*MEMORY[0x277D76E48] object:0];

  defaultCenter8 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter8 addObserver:self selector:sel_splitViewAnimatedTransitionWillBegin_ name:@"ICSplitViewControllerWillBeginAnimatedTransitionToStateRequest" object:0];

  defaultCenter9 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter9 addObserver:self selector:sel_splitViewAnimatedTransitionEnded_ name:@"ICSplitViewControllerDidEndAnimatedTransitionToStateRequest" object:0];

  defaultCenter10 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter10 addObserver:self selector:sel_authorHighlightsControllerWillPerformHighlightUpdates_ name:*MEMORY[0x277D364C0] object:0];

  defaultCenter11 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter11 addObserver:self selector:sel_authorHighlightsControllerDidPerformHighlightUpdates_ name:*MEMORY[0x277D364A8] object:0];

  [(ICTextView *)self initializeScollClampingController];
  [(ICTextView *)self setPreservesSuperviewLayoutMargins:0];
  containerViewForAttachments = [(ICBaseTextView *)self containerViewForAttachments];
  [containerViewForAttachments setShouldGroupAccessibilityChildren:1];

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
  textStorage = [(ICTextView *)self textStorage];
  v4 = ICDynamicCast();

  return v4;
}

- (BOOL)resignFirstResponder
{
  if ([(ICTextView *)self isFirstResponder])
  {
    mEMORY[0x277D35E50] = [MEMORY[0x277D35E50] sharedState];
    [mEMORY[0x277D35E50] extendDeauthenticationTimer];

    editorController = [(ICEditingTextView *)self editorController];
    mentionsController = [editorController mentionsController];

    v6 = MEMORY[0x277D35F20];
    tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
    v8 = [v6 rangeOfUnconfirmedMentionInTextStorage:tTTextStorage];
    v10 = v9;

    if (v8 != 0x7FFFFFFFFFFFFFFFLL && v10)
    {
      tTTextStorage2 = [(ICEditingTextView *)self TTTextStorage];
      editorController2 = [(ICEditingTextView *)self editorController];
      note = [editorController2 note];
      BYTE1(v27) = [(ICEditingTextView *)self languageHasSpaces];
      LOBYTE(v27) = 1;
      [mentionsController checkForMentionInEditedRange:v8 ofTextStorage:v10 note:tTTextStorage2 textView:note allowAutoExplicitMention:self isEndingEditing:1 languageHasSpaces:v27 parentAttachment:0];
    }

    editorController3 = [(ICEditingTextView *)self editorController];
    hashtagController = [editorController3 hashtagController];

    v16 = MEMORY[0x277D35EE8];
    tTTextStorage3 = [(ICEditingTextView *)self TTTextStorage];
    v18 = [v16 rangeOfUnconfirmedHashtagInTextStorage:tTTextStorage3];
    v20 = v19;

    if (v18 != 0x7FFFFFFFFFFFFFFFLL && v20)
    {
      tTTextStorage4 = [(ICEditingTextView *)self TTTextStorage];
      editorController4 = [(ICEditingTextView *)self editorController];
      note2 = [editorController4 note];
      BYTE1(v27) = [(ICEditingTextView *)self languageHasSpaces];
      LOBYTE(v27) = 1;
      [hashtagController checkForHashtagInEditedRange:v18 ofTextStorage:v20 note:tTTextStorage4 textView:note2 allowAutoExplicitHashtag:self isEndingEditing:0 languageHasSpaces:v27 parentAttachment:0];
    }
  }

  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning())
  {
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __34__ICTextView_resignFirstResponder__block_invoke;
    v32 = &unk_2781ABCF8;
    selfCopy = self;
    dispatchMainAfterDelay();
  }

  v28.receiver = self;
  v28.super_class = ICTextView;
  resignFirstResponder = [(ICTextView *)&v28 resignFirstResponder];
  if (resignFirstResponder)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"ICTextViewDidResignFirstResponderNotification" object:self];
  }

  return resignFirstResponder;
}

- (void)createDateLabel
{
  objc_opt_class();
  textContainer = [(ICTextView *)self textContainer];
  v4 = ICDynamicCast();
  insideSiriSnippet = [v4 insideSiriSnippet];

  if ((insideSiriSnippet & 1) == 0)
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
  tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
  undoManager = [tTTextStorage undoManager];

  return undoManager;
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
  compatibilityBannerView = [(ICTextView *)self compatibilityBannerView];
  v4 = compatibilityBannerView;
  if (compatibilityBannerView)
  {
    [compatibilityBannerView removeFromSuperview];
    [(ICTextView *)self setCompatibilityBannerView:0];
  }

  return v4 != 0;
}

- (void)updateOverscrollItemFrames
{
  superview = [(ICTextView *)self superview];
  [superview bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  superview2 = [(ICTextView *)self superview];
  [superview2 safeAreaInsets];
  v14 = v5 + v13;
  v16 = v7 + v15;
  v18 = v9 - (v13 + v17);
  v20 = v11 - (v15 + v19);
  superview3 = [(ICTextView *)self superview];
  [(ICTextView *)self convertRect:superview3 fromView:v14, v16, v18, v20];
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
  compatibilityBannerView = [(ICTextView *)self compatibilityBannerView];
  [compatibilityBannerView preferredHeight];
  v34 = v33;

  v35 = -v34;
  compatibilityBannerView2 = [(ICTextView *)self compatibilityBannerView];
  [compatibilityBannerView2 frame];
  LOBYTE(superview2) = TSDNearlyEqualRects();

  if ((superview2 & 1) == 0)
  {
    compatibilityBannerView3 = [(ICTextView *)self compatibilityBannerView];
    [compatibilityBannerView3 setAvailableWidth:Width];

    compatibilityBannerView4 = [(ICTextView *)self compatibilityBannerView];
    [compatibilityBannerView4 setFrame:{MinX, -v34, Width, v34}];
  }

  dateView = [(ICTextView *)self dateView];
  [dateView preferredHeight];
  v41 = v40;

  dateView2 = [(ICTextView *)self dateView];
  [dateView2 frame];
  v43 = TSDNearlyEqualRects();

  if ((v43 & 1) == 0)
  {
    dateView3 = [(ICTextView *)self dateView];
    [dateView3 setFrame:{MinX, v35 - v41, Width, v41}];
  }

  userTitleView = [(ICTextView *)self userTitleView];
  [userTitleView preferredHeight];
  v47 = v46;

  v48 = v35 - v47 - v41;
  userTitleView2 = [(ICTextView *)self userTitleView];
  [userTitleView2 frame];
  v50 = TSDNearlyEqualRects();

  if ((v50 & 1) == 0)
  {
    userTitleView3 = [(ICTextView *)self userTitleView];
    [userTitleView3 setFrame:{MinX, v48, Width, v47}];
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
    textContainer = [(ICTextView *)self textContainer];
    [textContainer lineFragmentPadding];
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
  icDelegate = [(ICBaseTextView *)self icDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  icDelegate2 = [(ICBaseTextView *)self icDelegate];
  isEditingOnSystemPaper = [icDelegate2 isEditingOnSystemPaper];

  return isEditingOnSystemPaper;
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
  superview = [(ICTextView *)self superview];

  if (superview)
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
        editorController = [(ICEditingTextView *)self editorController];
        note = [editorController note];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __32__ICTextView__updateContentSize__block_invoke;
        v17[3] = &unk_2781ABF08;
        v17[4] = &v18;
        [note enumerateAttachmentsInOrderUsingBlock:v17];

        if (*(v19 + 24) == 1)
        {
          [(ICTextView *)self setNeedsHideOverlappingAttachmentViews:1];
        }

        _Block_object_dispose(&v18, 8);
      }

      scrollClampingControllerDelayedRelease = [(ICTextView *)self scrollClampingControllerDelayedRelease];
      clampedYValue = [scrollClampingControllerDelayedRelease clampedYValue];

      if (clampedYValue)
      {
        if (![(ICTextView *)self isUpdatingPanGesture])
        {
          [(ICTextView *)self contentOffset];
          v13 = v12;
          [clampedYValue floatValue];
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
    layoutManager = [(ICTextView *)self layoutManager];
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
  dateView = [(ICTextView *)self dateView];
  [dateView updateLayoutIfNecessary];

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
  textStorage = [(ICTextView *)self textStorage];
  v5 = ICDynamicCast();
  isTypingOrMarkingText = [v5 isTypingOrMarkingText];

  if (isTypingOrMarkingText)
  {
    return 1;
  }

  scrollClampingControllerDelayedRelease = [(ICTextView *)self scrollClampingControllerDelayedRelease];
  if ([scrollClampingControllerDelayedRelease isClamped])
  {

    return 0;
  }

  isPerformingHighlightUpdates = [(ICTextView *)self isPerformingHighlightUpdates];

  return !isPerformingHighlightUpdates;
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
  ic_isVision = [MEMORY[0x277D75418] ic_isVision];
  result = 32.0;
  if (!ic_isVision)
  {
    return 0.0;
  }

  return result;
}

- (ICTextView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ICTextView;
  v3 = [(ICBaseTextView *)&v6 initForTextKit1WithSize:frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICTextView *)v3 registerForTraitChanges];
  }

  return v4;
}

- (ICTextView)initWithCoder:(id)coder
{
  coderCopy = coder;
  NSLog(&cfstr_CallingInitwit.isa);
  v7.receiver = self;
  v7.super_class = ICTextView;
  v5 = [(ICBaseTextView *)&v7 initWithCoder:coderCopy];

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
    layoutManager = [(ICTextView *)self layoutManager];
    if (layoutManager)
    {
      textStorage = [(ICTextView *)self textStorage];
      [textStorage removeLayoutManager:layoutManager];
    }
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v6.receiver = self;
  v6.super_class = ICTextView;
  [(ICEditingTextView *)&v6 dealloc];
}

- (void)setAttachmentViewDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_opt_class();
  layoutManager = [(ICTextView *)self layoutManager];
  v6 = ICCheckedDynamicCast();

  [v6 setAttachmentViewDelegate:delegateCopy];
}

- (ICAttachmentViewDelegate)attachmentViewDelegate
{
  objc_opt_class();
  layoutManager = [(ICTextView *)self layoutManager];
  v4 = ICCheckedDynamicCast();

  attachmentViewDelegate = [v4 attachmentViewDelegate];

  return attachmentViewDelegate;
}

- (id)note
{
  editorController = [(ICEditingTextView *)self editorController];
  note = [editorController note];

  return note;
}

- (void)findInteraction:(id)interaction didBeginFindSession:(id)session
{
  sessionCopy = session;
  interactionCopy = interaction;
  textFindingCoordinator = [(ICTextView *)self textFindingCoordinator];
  [textFindingCoordinator configureFindInteraction:interactionCopy forTextView:self];

  v10.receiver = self;
  v10.super_class = ICTextView;
  [(ICTextView *)&v10 findInteraction:interactionCopy didBeginFindSession:sessionCopy];

  editorController = [(ICEditingTextView *)self editorController];
  [editorController didBeginFindInteraction];
}

- (void)findInteraction:(id)interaction didEndFindSession:(id)session
{
  v6.receiver = self;
  v6.super_class = ICTextView;
  [(ICTextView *)&v6 findInteraction:interaction didEndFindSession:session];
  editorController = [(ICEditingTextView *)self editorController];
  [editorController didEndFindInteraction];
}

- (id)findInteraction:(id)interaction sessionForView:(id)view
{
  v4 = [[ICTextSearchingFindSession alloc] initWithTextView:self];

  return v4;
}

- (void)willHighlightFoundTextRange:(id)range inDocument:(id)document
{
  v4.receiver = self;
  v4.super_class = ICTextView;
  [(ICTextView *)&v4 willHighlightFoundTextRange:range inDocument:document];
}

- (void)clearAllDecoratedFoundText
{
  v4.receiver = self;
  v4.super_class = ICTextView;
  [(ICTextView *)&v4 clearAllDecoratedFoundText];
  editorController = [(ICEditingTextView *)self editorController];
  [editorController showOrHideSearchPatternHighlightsIfNecessary];

  if (objc_opt_respondsToSelector())
  {
    [(ICTextView *)self _clearHighlightView];
  }
}

- (void)performTextSearchWithQueryString:(id)string usingOptions:(id)options resultAggregator:(id)aggregator
{
  stringCopy = string;
  optionsCopy = options;
  aggregatorCopy = aggregator;
  editorController = [(ICEditingTextView *)self editorController];
  [editorController didUpdateSearchQueryInFindInteraction:stringCopy];

  textStorage = [(ICTextView *)self textStorage];
  objc_initWeak(&location, aggregatorCopy);
  objc_initWeak(&from, self);
  v13 = +[ICNoteEditorTextFindingController textFindingQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __77__ICTextView_performTextSearchWithQueryString_usingOptions_resultAggregator___block_invoke;
  v17[3] = &unk_2781AD6C0;
  v18 = optionsCopy;
  v14 = optionsCopy;
  objc_copyWeak(&v22, &location);
  objc_copyWeak(&v23, &from);
  v19 = stringCopy;
  selfCopy = self;
  v21 = textStorage;
  v15 = textStorage;
  v16 = stringCopy;
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

- (id)selectionRectsForRange:(id)range
{
  v28 = *MEMORY[0x277D85DE8];
  rangeCopy = range;
  _ic_textFindingResult = [rangeCopy _ic_textFindingResult];
  if ([_ic_textFindingResult isAttachmentResult])
  {
    array = [MEMORY[0x277CBEB18] array];
    v7 = [_ic_textFindingResult framesForHighlightInTextView:self];
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
          [array addObject:v20];
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
    array = [(ICEditingTextView *)&v22 selectionRectsForRange:rangeCopy];
  }

  return array;
}

- (void)scrollRangeToVisible:(id)visible inDocument:(id)document
{
  visibleCopy = visible;
  documentCopy = document;
  _ic_textFindingResult = [visibleCopy _ic_textFindingResult];
  v9 = _ic_textFindingResult;
  if (_ic_textFindingResult)
  {
    [_ic_textFindingResult scrollToVisibleInTextView:self];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = ICTextView;
    [(ICTextView *)&v10 scrollRangeToVisible:visibleCopy inDocument:documentCopy];
  }
}

- (BOOL)shouldReplaceFoundTextInRange:(id)range inDocument:(id)document withText:(id)text
{
  _ic_textFindingResult = [range _ic_textFindingResult];
  if ([_ic_textFindingResult isAttachmentResult])
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

- (void)replaceFoundTextInRange:(id)range inDocument:(id)document withText:(id)text
{
  v32[1] = *MEMORY[0x277D85DE8];
  rangeCopy = range;
  documentCopy = document;
  textCopy = text;
  _ic_textFindingResult = [rangeCopy _ic_textFindingResult];
  textFindingCoordinator = [(ICTextView *)self textFindingCoordinator];

  if (textFindingCoordinator && _ic_textFindingResult)
  {
    textFindingCoordinator2 = [(ICTextView *)self textFindingCoordinator];
    v32[0] = _ic_textFindingResult;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    v25 = 0;
    [textFindingCoordinator2 replaceMatches:v14 withString:textCopy error:&v25];
    v15 = v25;

    if (v15)
    {
      v16 = os_log_create("com.apple.notes", "Find");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v27 = _ic_textFindingResult;
        v28 = 2112;
        v29 = textCopy;
        v30 = 2112;
        v31 = v15;
        _os_log_error_impl(&dword_2151A1000, v16, OS_LOG_TYPE_ERROR, "Unexpected error when trying to replace %@ with %@: %@", buf, 0x20u);
      }
    }
  }

  else
  {
    objc_opt_class();
    _ic_textFindingResult2 = [rangeCopy _ic_textFindingResult];
    v15 = ICDynamicCast();

    if (v15)
    {
      objc_opt_class();
      attachment = [v15 attachment];
      attachmentModel = [attachment attachmentModel];
      v20 = ICDynamicCast();

      v21 = [(ICTextView *)self characterRangeFromTextKitRange:rangeCopy];
      v23 = [(ICTextView *)self tableAttachmentViewControllerForRange:v21, v22];
      [v20 undoablyReplaceTextFindingResult:v15 withReplacementString:textCopy tableViewController:v23];
    }

    else
    {
      v24.receiver = self;
      v24.super_class = ICTextView;
      [(ICTextView *)&v24 replaceFoundTextInRange:rangeCopy inDocument:documentCopy withText:textCopy];
    }
  }
}

- (void)replaceAllOccurrencesOfQueryString:(id)string usingOptions:(id)options withText:(id)text
{
  stringCopy = string;
  optionsCopy = options;
  textCopy = text;
  v29 = [optionsCopy stringCompareOptions] & 1;
  wordMatchMethod = [optionsCopy wordMatchMethod];
  wordMatchMethod2 = [optionsCopy wordMatchMethod];
  textFindingCoordinator = [(ICTextView *)self textFindingCoordinator];

  if (textFindingCoordinator)
  {
    v14 = wordMatchMethod2 == 1;
    v15 = wordMatchMethod == 2;
    textFindingCoordinator2 = [(ICTextView *)self textFindingCoordinator];
    textStorage = [(ICTextView *)self textStorage];
    note = [(ICTextView *)self note];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __71__ICTextView_replaceAllOccurrencesOfQueryString_usingOptions_withText___block_invoke;
    v37[3] = &unk_2781AD020;
    v38 = stringCopy;
    v39 = textCopy;
    LOBYTE(v28) = v14;
    [textFindingCoordinator2 replaceAllOccurrencesOfQueryString:stringCopy withString:textCopy inTextStorage:textStorage note:note ignoreCase:v29 wholeWords:v15 startsWith:v28 completion:v37];

    v19 = v38;
  }

  else
  {
    v20 = wordMatchMethod2 == 1;
    v21 = wordMatchMethod == 2;
    v36.receiver = self;
    v36.super_class = ICTextView;
    [(ICTextView *)&v36 replaceAllOccurrencesOfQueryString:stringCopy usingOptions:optionsCopy withText:textCopy];
    textStorage2 = [(ICTextView *)self textStorage];
    v23 = *MEMORY[0x277D74060];
    textStorage3 = [(ICTextView *)self textStorage];
    v25 = [textStorage3 length];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __71__ICTextView_replaceAllOccurrencesOfQueryString_usingOptions_withText___block_invoke_163;
    v30[3] = &unk_2781AD6E8;
    v30[4] = self;
    v31 = stringCopy;
    v33 = v29;
    v34 = v21;
    v35 = v20;
    v32 = textCopy;
    v26 = textCopy;
    v27 = stringCopy;
    [textStorage2 enumerateAttribute:v23 inRange:0 options:v25 usingBlock:{0, v30}];

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

- (_NSRange)characterRangeFromTextKitRange:(id)range
{
  rangeCopy = range;
  beginningOfDocument = [(ICTextView *)self beginningOfDocument];
  start = [rangeCopy start];
  v7 = [(ICTextView *)self offsetFromPosition:beginningOfDocument toPosition:start];

  start2 = [rangeCopy start];
  v9 = [rangeCopy end];

  v10 = [(ICTextView *)self offsetFromPosition:start2 toPosition:v9];
  v11 = v7;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

- (id)tableAttachmentViewControllerForRange:(_NSRange)range
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCAE60] valueWithRange:{range.location, range.length}];
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
  mEMORY[0x277D369A0] = [MEMORY[0x277D369A0] sharedInstance];
  if (([mEMORY[0x277D369A0] isSecureScreenShowing] & 1) == 0)
  {

    goto LABEL_7;
  }

  mEMORY[0x277D369A0]2 = [MEMORY[0x277D369A0] sharedInstance];
  hasClearedInitialSelectedTextIfSecure = [mEMORY[0x277D369A0]2 hasClearedInitialSelectedTextIfSecure];

  if (hasClearedInitialSelectedTextIfSecure)
  {
LABEL_7:
    textStorage = [(ICTextView *)self textStorage];
    mEMORY[0x277D369A0]3 = [textStorage attribute:*MEMORY[0x277D74060] atIndex:-[ICTextView selectedRange](self effectiveRange:{"selectedRange"), 0}];

    objc_opt_class();
    v10 = ICDynamicCast();
    v11 = v10;
    if (v10)
    {
      attachment = [v10 attachment];
      altText = [attachment altText];
    }

    else
    {
      v14.receiver = self;
      v14.super_class = ICTextView;
      altText = [(ICTextView *)&v14 selectedText];
    }

    goto LABEL_11;
  }

  v6 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ICTextView *)v6 selectedText];
  }

  mEMORY[0x277D369A0]3 = [MEMORY[0x277D369A0] sharedInstance];
  [mEMORY[0x277D369A0]3 hasClearedInitialSecureSelectedText];
  altText = &stru_282757698;
LABEL_11:

  return altText;
}

- (void)didEndTextSearchOperation
{
  editorController = [(ICEditingTextView *)self editorController];
  [editorController showOrHideSearchPatternHighlightsIfNecessary];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  tapGestureRecognizer = [(ICEditingTextView *)self tapGestureRecognizer];
  v6 = tapGestureRecognizer;
  if (tapGestureRecognizer == beginCopy)
  {
    editorController = [(ICEditingTextView *)self editorController];
    ignoresTaps = [editorController ignoresTaps];

    if (ignoresTaps)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v13.receiver = self;
  v13.super_class = ICTextView;
  if (![(ICEditingTextView *)&v13 gestureRecognizerShouldBegin:beginCopy])
  {
    v10 = 0;
    goto LABEL_9;
  }

  tapGestureRecognizer2 = [(ICEditingTextView *)self tapGestureRecognizer];

  if (tapGestureRecognizer2 == beginCopy)
  {
    v11 = [(ICTextView *)self attachmentViewTappedByGesture:beginCopy];
    v10 = v11 == 0;

    goto LABEL_9;
  }

LABEL_6:
  v10 = 1;
LABEL_9:

  return v10;
}

- (void)startEditingForTapGesture:(id)gesture
{
  [gesture locationOfTouch:0 inView:self];
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

  editorController = [(ICEditingTextView *)self editorController];
  [editorController startEditing];
}

- (void)willPresentWritingTools
{
  v4.receiver = self;
  v4.super_class = ICTextView;
  [(ICEditingTextView *)&v4 willPresentWritingTools];
  [(ICTextView *)self setInputAccessoryViewVisible:0];
  editorController = [(ICEditingTextView *)self editorController];
  [editorController setWritingToolsShowing:1];
}

- (void)didDismissWritingTools
{
  editorController = [(ICEditingTextView *)self editorController];
  [editorController setWritingToolsShowing:0];

  [(ICTextView *)self setInputAccessoryViewVisible:1];
  v4.receiver = self;
  v4.super_class = ICTextView;
  [(ICEditingTextView *)&v4 didDismissWritingTools];
}

- (void)writingToolsCoordinator:(id)coordinator willChangeToState:(int64_t)state completion:(id)completion
{
  coordinatorCopy = coordinator;
  completionCopy = completion;
  if ([coordinatorCopy state] == 3)
  {
    tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
    [tTTextStorage breakUndoCoalescing];
  }

  v11.receiver = self;
  v11.super_class = ICTextView;
  [(ICTextView *)&v11 writingToolsCoordinator:coordinatorCopy willChangeToState:state completion:completionCopy];
}

- (void)writingToolsCoordinator:(id)coordinator replaceRange:(_NSRange)range inContext:(id)context proposedText:(id)text reason:(int64_t)reason animationParameters:(id)parameters completion:(id)completion
{
  length = range.length;
  location = range.location;
  completionCopy = completion;
  parametersCopy = parameters;
  textCopy = text;
  contextCopy = context;
  coordinatorCopy = coordinator;
  note = [(ICTextView *)self note];
  [note updateModificationDateAndChangeCountAndSaveAfterDelay];

  v22.receiver = self;
  v22.super_class = ICTextView;
  [(ICTextView *)&v22 writingToolsCoordinator:coordinatorCopy replaceRange:location inContext:length proposedText:contextCopy reason:textCopy animationParameters:reason completion:parametersCopy, completionCopy];
}

- (void)keyboardDidBeginDictation:(id)dictation
{
  tTTextStorageOptional = [(ICTextView *)self TTTextStorageOptional];
  [tTTextStorageOptional setIsPausingUndoActions:1];

  [(ICTextView *)self setInputAccessoryViewVisible:0];
}

- (void)dictationControllerDidPause:(id)pause
{
  tTTextStorageOptional = [(ICTextView *)self TTTextStorageOptional];
  [tTTextStorageOptional setIsPausingUndoActions:0];

  tTTextStorageOptional2 = [(ICTextView *)self TTTextStorageOptional];
  [tTTextStorageOptional2 breakUndoCoalescing];
}

- (void)dictationControllerDidResume:(id)resume
{
  tTTextStorageOptional = [(ICTextView *)self TTTextStorageOptional];
  [tTTextStorageOptional setIsPausingUndoActions:1];
}

- (void)dictationControllerDidFinish:(id)finish
{
  tTTextStorageOptional = [(ICTextView *)self TTTextStorageOptional];
  [tTTextStorageOptional setIsPausingUndoActions:0];

  [(ICTextView *)self setInputAccessoryViewVisible:1];
}

- (void)userTitleHiddenStateDidChange:(id)change
{
  changeCopy = change;
  userTitleView = [(ICTextView *)self userTitleView];

  if (userTitleView == changeCopy)
  {

    [(ICTextView *)self updateOverscrollItemFrames];
  }
}

- (void)createUserTitleViewIfNecessaryForNote:(id)note
{
  noteCopy = note;
  userTitleView = [(ICTextView *)self userTitleView];

  if (!userTitleView && [ICNoteEditorUserTitleView shouldShowUserTitleViewForNote:noteCopy])
  {
    v5 = +[ICNoteEditorUserTitleView newUserTitleView];
    [(ICTextView *)self setUserTitleView:v5];

    userTitleView2 = [(ICTextView *)self userTitleView];
    [userTitleView2 setAutoresizingMask:5];

    userTitleView3 = [(ICTextView *)self userTitleView];
    [userTitleView3 _accessibilitySetIsSpeakThisElement:0];

    userTitleView4 = [(ICTextView *)self userTitleView];
    [userTitleView4 setDelegate:self];

    dateView = self->_dateView;
    userTitleView5 = [(ICTextView *)self userTitleView];
    if (dateView)
    {
      [(ICTextView *)self insertSubview:userTitleView5 belowSubview:self->_dateView];
    }

    else
    {
      [(ICTextView *)self addSubview:userTitleView5];
    }
  }

  userTitleView6 = [(ICTextView *)self userTitleView];

  v12 = noteCopy;
  if (userTitleView6)
  {
    userTitleView7 = [(ICTextView *)self userTitleView];
    [userTitleView7 setNote:noteCopy];

    v12 = noteCopy;
  }
}

- (BOOL)showCompatibilityBannerWithParentViewController:(id)controller
{
  controllerCopy = controller;
  compatibilityBannerView = [(ICTextView *)self compatibilityBannerView];

  if (!compatibilityBannerView)
  {
    v6 = [ICNoteEditorCompatibilityBannerView alloc];
    v7 = [(ICNoteEditorCompatibilityBannerView *)v6 initWithFrame:controllerCopy parentViewController:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(ICTextView *)self setCompatibilityBannerView:v7];

    compatibilityBannerView2 = [(ICTextView *)self compatibilityBannerView];
    [compatibilityBannerView2 setAutoresizingMask:5];

    compatibilityBannerView3 = [(ICTextView *)self compatibilityBannerView];
    [(ICTextView *)self addSubview:compatibilityBannerView3];
  }

  return compatibilityBannerView == 0;
}

- (void)updateCompatibilityBannerForNote:(id)note parentViewController:(id)controller updateTextViewContentInsets:(BOOL)insets
{
  noteCopy = note;
  controllerCopy = controller;
  if (noteCopy)
  {
    identifier = [noteCopy identifier];
    objc_initWeak(&location, self);
    objc_initWeak(&from, controllerCopy);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __96__ICTextView_updateCompatibilityBannerForNote_parentViewController_updateTextViewContentInsets___block_invoke;
    v12[3] = &unk_2781AD760;
    objc_copyWeak(&v14, &location);
    objc_copyWeak(&v15, &from);
    v11 = identifier;
    v13 = v11;
    insetsCopy = insets;
    [ICNoteEditorCompatibilityBannerView checkShouldShowCompatibilityBannerViewForNote:noteCopy parentViewController:controllerCopy completion:v12];

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
      layoutManager = [(ICTextView *)self layoutManager];
      v4 = ICDynamicCast();

      [(ICTextView *)self bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      textContainer = [(ICTextView *)self textContainer];
      v14 = [v4 glyphRangeForBoundingRectWithoutAdditionalLayout:textContainer inTextContainer:{v6, v8, v10, v12}];
      v16 = v15;

      v17 = [v4 characterRangeForGlyphRange:v14 actualGlyphRange:{v16, 0}];
      v19 = v18;
      v20 = v17 + v18;
      textStorage = [(ICTextView *)self textStorage];
      v22 = [textStorage length] - v20;

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __55__ICTextView_hideOverlappingAttachmentViewsIfNecessary__block_invoke;
      aBlock[3] = &unk_2781AD788;
      v30 = v17;
      v31 = v19;
      v29 = v4;
      v23 = v4;
      v24 = _Block_copy(aBlock);
      textStorage2 = [(ICTextView *)self textStorage];
      v26 = *MEMORY[0x277D74060];
      [textStorage2 enumerateAttribute:*MEMORY[0x277D74060] inRange:0 options:v17 usingBlock:{0x100000, v24}];

      textStorage3 = [(ICTextView *)self textStorage];
      [textStorage3 enumerateAttribute:v26 inRange:v20 options:v22 usingBlock:{0x100000, v24}];

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
  canBecomeFirstResponder = [(ICEditingTextView *)&v13 canBecomeFirstResponder];
  editorController = [(ICEditingTextView *)self editorController];
  presentedViewController = [editorController presentedViewController];

  modalPresentationStyle = [presentedViewController modalPresentationStyle];
  if (canBecomeFirstResponder && (v7 = modalPresentationStyle, ![(ICBaseTextView *)self shouldAvoidBecomingFirstResponder]))
  {
    editorController2 = [(ICEditingTextView *)self editorController];
    note = [editorController2 note];
    if (note)
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
    LOBYTE(becomeFirstResponder) = 0;
  }

  else
  {
    self->_isBecomingFirstResponder = 1;
    mEMORY[0x277D35E50] = [MEMORY[0x277D35E50] sharedState];
    [mEMORY[0x277D35E50] extendDeauthenticationTimer];

    v7.receiver = self;
    v7.super_class = ICTextView;
    becomeFirstResponder = [(ICEditingTextView *)&v7 becomeFirstResponder];
    if (([(ICTextView *)self isSelectable]& 1) == 0 && becomeFirstResponder)
    {
      [(ICTextView *)self setEditable:1];
    }

    if (becomeFirstResponder)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"ICTextViewDidBecomeFirstResponderNotification" object:self];
    }

    [(ICEditingTextView *)self icaxClearCaches];
    self->_isBecomingFirstResponder = 0;
  }

  return becomeFirstResponder;
}

- (id)_nextKeyResponder
{
  nextResponderOverride = [(ICBaseTextView *)self nextResponderOverride];

  if (nextResponderOverride)
  {
    nextResponderOverride2 = [(ICBaseTextView *)self nextResponderOverride];
  }

  else
  {
    nextResponderOverride2 = 0;
  }

  return nextResponderOverride2;
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
  textStorage = [(ICTextView *)self textStorage];
  selectedRange = [(ICTextView *)self selectedRange];
  v5 = *MEMORY[0x277D74060];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__ICTextView_selectionSupportsFindInNote__block_invoke;
  v10[3] = &unk_2781AD7B0;
  v10[4] = &v11;
  v10[5] = &v15;
  [textStorage enumerateAttribute:v5 inRange:selectedRange options:v6 usingBlock:{0, v10}];

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
  selectedRange = [(ICTextView *)self selectedRange];
  v5 = 0;
  if (selectedRange != 0x7FFFFFFFFFFFFFFFLL && v4 == 1)
  {
    v6 = selectedRange;
    textStorage = [(ICTextView *)self textStorage];
    v8 = [textStorage attribute:*MEMORY[0x277D74060] atIndex:v6 effectiveRange:0];

    objc_opt_class();
    v5 = 0;
    if (objc_opt_isKindOfClass())
    {
      v5 = v8;
    }
  }

  return v5;
}

- (id)targetForAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  nextResponderOverride = [(ICBaseTextView *)self nextResponderOverride];

  if (!nextResponderOverride)
  {
    v16.receiver = self;
    v16.super_class = ICTextView;
    v11 = [(ICTextView *)&v16 targetForAction:action withSender:self];
    singleSelectedAttachment = [(ICTextView *)self singleSelectedAttachment];
    if (singleSelectedAttachment)
    {
      if (ICInternalSettingsIsTextKit2Enabled())
      {
        icTextLayoutManager = [(ICEditingTextView *)self icTextLayoutManager];
        viewIdentifier = [singleSelectedAttachment viewIdentifier];
        nextResponderOverride3 = [icTextLayoutManager existingAttachmentViewForIdentifier:viewIdentifier];
      }

      else
      {
        icTextLayoutManager = [(ICEditingTextView *)self icLayoutManager];
        nextResponderOverride3 = [icTextLayoutManager viewForTextAttachment:singleSelectedAttachment];
      }

      if (nextResponderOverride3 && [nextResponderOverride3 canPerformAction:action withSender:senderCopy] && !objc_msgSend(v11, "canPerformAction:withSender:", action, senderCopy))
      {
        goto LABEL_14;
      }
    }

    nextResponderOverride3 = v11;
LABEL_14:

    goto LABEL_15;
  }

  nextResponderOverride2 = [(ICBaseTextView *)self nextResponderOverride];
  v9 = [nextResponderOverride2 canPerformAction:action withSender:senderCopy];

  if (v9)
  {
    nextResponderOverride3 = [(ICBaseTextView *)self nextResponderOverride];
  }

  else
  {
    nextResponderOverride3 = 0;
  }

LABEL_15:

  return nextResponderOverride3;
}

- (void)resetContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  disableContentOffsetChanges = [(ICTextView *)self disableContentOffsetChanges];
  [(ICTextView *)self setDisableContentOffsetChanges:1];
  v7.receiver = self;
  v7.super_class = ICTextView;
  [(ICTextView *)&v7 setContentOffset:x, y];
  [(ICTextView *)self setDisableContentOffsetChanges:disableContentOffsetChanges];
}

- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  y = offset.y;
  x = offset.x;
  editorController = [(ICEditingTextView *)self editorController];
  if ([editorController isPreviewingAttachmentFromNote])
  {
  }

  else
  {
    isDragging = [(ICTextView *)self isDragging];

    if ((isDragging & 1) == 0)
    {
      v10.receiver = self;
      v10.super_class = ICTextView;
      [(ICTextView *)&v10 setContentOffset:animatedCopy animated:x, y];
    }
  }
}

- (void)scrollRectToVisible:(CGRect)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  height = visible.size.height;
  width = visible.size.width;
  y = visible.origin.y;
  x = visible.origin.x;
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    if ([(ICTextView *)self isFirstResponder])
    {
      selectedRange = [(ICTextView *)self selectedRange];
      textStorage = [(ICTextView *)self textStorage];
      v12 = [textStorage length];

      if (selectedRange == v12)
      {
        layoutManager = [(ICTextView *)self layoutManager];
        [layoutManager extraLineFragmentRect];
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
  [(CGFloat *)&rect.origin.y scrollRectToVisible:animatedCopy animated:x, y, width, height];
}

- (void)setEmbeddedScrollViews:(id)views
{
  v4 = [views copy];
  embeddedScrollViews = self->_embeddedScrollViews;
  self->_embeddedScrollViews = v4;

  v6 = *MEMORY[0x277CBF348];
  self->_lastProposedContentOffset = *MEMORY[0x277CBF348];
  self->_distanceConsumedByEmbeddedScrollViews = v6;
}

- (CGPoint)scrollEmbeddedScrollViewsWithProposedContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
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
  embeddedScrollViews = [(ICTextView *)self embeddedScrollViews];
  v16 = [embeddedScrollViews countByEnumeratingWithState:&v67 objects:v71 count:16];
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
          objc_enumerationMutation(embeddedScrollViews);
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
              panGestureRecognizer = [(ICTextView *)self panGestureRecognizer];
              [panGestureRecognizer translationInView:self];
              v55 = v54;
              v57 = v56;

              panGestureRecognizer2 = [(ICTextView *)self panGestureRecognizer];
              [panGestureRecognizer2 setTranslation:self inView:{v50 + v55, v57 + v52}];

              x = v62 - v50;
              y = v63 - v52;
              goto LABEL_24;
            }
          }
        }
      }

      v17 = [embeddedScrollViews countByEnumeratingWithState:&v67 objects:v71 count:16];
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

- (void)setContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
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
  rootSettings = [MEMORY[0x277D36878] rootSettings];
  if (![rootSettings isRubberBandingEnabled] || !-[ICTextView shouldRubberBand](self, "shouldRubberBand"))
  {

    goto LABEL_9;
  }

  if (([(ICTextView *)self isDragging]& 1) != 0)
  {

    goto LABEL_18;
  }

  isDecelerating = [(ICTextView *)self isDecelerating];

  if ((isDecelerating & 1) == 0)
  {
LABEL_9:
    editorController = [(ICEditingTextView *)self editorController];
    attributionSidebarVisibility = [editorController attributionSidebarVisibility];

    editorController2 = [(ICEditingTextView *)self editorController];
    authorHighlightsController = [editorController2 authorHighlightsController];
    tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
    v16 = [authorHighlightsController isPerformingHighlightUpdatesForTextStorage:tTTextStorage];

    if (attributionSidebarVisibility != 1 && (v16 & 1) == 0 && ![(ICTextView *)self isSettingContentOffset])
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
          icDelegate = [(ICBaseTextView *)self icDelegate];
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

          scrollClampingControllerDelayedRelease = [(ICTextView *)self scrollClampingControllerDelayedRelease];
          clampedYValue = [scrollClampingControllerDelayedRelease clampedYValue];

          if (clampedYValue && ![(ICTextView *)self isUpdatingPanGesture])
          {
            [clampedYValue floatValue];
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
  rootSettings2 = [MEMORY[0x277D36878] rootSettings];
  [rootSettings2 rubberBandRange];
  v24 = v23;

  rootSettings3 = [MEMORY[0x277D36878] rootSettings];
  [rootSettings3 rubberBandDragDistance];
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
  delegate = [(ICTextView *)self delegate];
  v38 = objc_opt_respondsToSelector();

  if (v38)
  {
    delegate2 = [(ICTextView *)self delegate];
    [delegate2 textViewDidBreakRubberBand:self];
  }

  rootSettings4 = [MEMORY[0x277D36878] rootSettings];
  [rootSettings4 rubberBandCatchUpAnimationDuration];
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

- (CGPoint)clippedContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
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

- (void)setClippedContentOffset:(CGPoint)offset
{
  [(ICTextView *)self clippedContentOffset:offset.x, offset.y];
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

- (void)select:(id)select
{
  selectCopy = select;
  if (![(ICTextView *)self selectedRange])
  {
    goto LABEL_5;
  }

  objc_opt_class();
  textStorage = [(ICTextView *)self textStorage];
  v6 = ICDynamicCast();

  selectedRange = [(ICTextView *)self selectedRange];
  v8 = [v6 attribute:*MEMORY[0x277D74060] atIndex:selectedRange - 1 effectiveRange:0];
  if (!v8)
  {

LABEL_5:
    v10.receiver = self;
    v10.super_class = ICTextView;
    [(ICEditingTextView *)&v10 select:selectCopy];
    goto LABEL_6;
  }

  v9 = v8;
  [(ICTextView *)self setSelectedRange:[(ICTextView *)self selectedRange]- 1, 1];

LABEL_6:
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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

  disableContentOffsetChanges = [(ICTextView *)self disableContentOffsetChanges];
  if (![(ICTextView *)self isTransitioningToNewSize])
  {
    [(ICTextView *)self setDisableContentOffsetChanges:1];
  }

  [(ICTextView *)self setIsTransitioningToNewSize:1];
  isInSetBounds = [(ICTextView *)self isInSetBounds];
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
  [(ICTextView *)self setDisableContentOffsetChanges:disableContentOffsetChanges];
  [(ICTextView *)self setIsInSetBounds:isInSetBounds];
  [(ICTextView *)self setCurrentSetBoundsRect:v17, v19, v21, v23];
  [(ICTextView *)self updateLayoutMargins];
}

- (void)setEditable:(BOOL)editable
{
  editableCopy = editable;
  [(ICTextView *)self setIsSettingEditable:1];
  tTTextStorageOptional = [(ICTextView *)self TTTextStorageOptional];
  [tTTextStorageOptional beginTemporaryAttributeEditing];

  v7.receiver = self;
  v7.super_class = ICTextView;
  [(ICTextView *)&v7 setEditable:editableCopy];
  tTTextStorageOptional2 = [(ICTextView *)self TTTextStorageOptional];
  [tTTextStorageOptional2 endTemporaryAttributeEditing];

  [(ICTextView *)self setIsSettingEditable:0];
}

- (void)resetUndoManager
{
  tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
  [tTTextStorage resetUndoManager];
}

- (void)undoManagerDidOpenUndoGroup:(id)group
{
  tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
  if ([tTTextStorage isPausingUndoActions])
  {
    undoManager = [(ICTextView *)self undoManager];
    groupingLevel = [undoManager groupingLevel];

    if (groupingLevel < 2)
    {
      return;
    }

    tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
    [tTTextStorage breakUndoCoalescing];
  }
}

- (id)positionFromPosition:(id)position inDirection:(int64_t)direction offset:(int64_t)offset
{
  positionCopy = position;
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    v16.receiver = self;
    v16.super_class = ICTextView;
    v9 = [(ICTextView *)&v16 positionFromPosition:positionCopy inDirection:direction offset:offset];
  }

  else
  {
    objc_opt_class();
    layoutManager = [(ICTextView *)self layoutManager];
    v11 = ICDynamicCast();
    [v11 setLineHeightIncludeParagraphSpacing:1];

    v15.receiver = self;
    v15.super_class = ICTextView;
    v9 = [(ICTextView *)&v15 positionFromPosition:positionCopy inDirection:direction offset:offset];
    objc_opt_class();
    layoutManager2 = [(ICTextView *)self layoutManager];
    v13 = ICDynamicCast();
    [v13 setLineHeightIncludeParagraphSpacing:0];
  }

  return v9;
}

- (CGRect)caretRectForPosition:(id)position
{
  v34.receiver = self;
  v34.super_class = ICTextView;
  [(ICEditingTextView *)&v34 caretRectForPosition:position];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ([(ICEditingTextView *)self isDraggingChecklistItem]&& [(ICEditingTextView *)self isDraggingOverChecklistItem])
  {
    trackedParagraphCurrentlyUnderDraggedChecklist = [(ICEditingTextView *)self trackedParagraphCurrentlyUnderDraggedChecklist];
    [ICChecklistDragUtilities insertionRectForTrackedTodoParagraph:trackedParagraphCurrentlyUnderDraggedChecklist drawAbove:[(ICEditingTextView *)self shouldDropChecklistAbove] inTextView:self];
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
        checklistDragFeedbackGenerator = [(ICEditingTextView *)self checklistDragFeedbackGenerator];
        [checklistDragFeedbackGenerator selectionChanged];

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

- (BOOL)attachmentViewUnderTouches:(id)touches
{
  touchesCopy = touches;
  if (attachmentViewUnderTouches__onceToken != -1)
  {
    [ICTextView attachmentViewUnderTouches:];
  }

  if (attachmentViewUnderTouches__supportsForceTouch == 1 && [touchesCopy count] && (objc_msgSend(touchesCopy, "anyObject"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "type"), v5, !v6))
  {
    anyObject = [touchesCopy anyObject];
    [anyObject locationInView:self];
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

- (BOOL)isSearchResultView:(id)view
{
  viewCopy = view;
  if ([(ICTextView *)self containsView:viewCopy])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([viewCopy superview], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 == self))
    {
      v8 = 1;
    }

    else
    {
      v6 = viewCopy;
      v7 = v6;
      v8 = 0;
      if (v6 && v6 != self)
      {
        while (1)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            superview = [(ICTextView *)v7 superview];

            if (superview == self)
            {
              break;
            }
          }

          superview2 = [(ICTextView *)v7 superview];

          v8 = 0;
          if (superview2)
          {
            v7 = superview2;
            if (superview2 != self)
            {
              continue;
            }
          }

          goto LABEL_15;
        }

        v8 = 1;
      }

      superview2 = v7;
LABEL_15:
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v17.receiver = self;
  v17.super_class = ICTextView;
  v8 = [(ICEditingTextView *)&v17 hitTest:eventCopy withEvent:x, y];
  if ([(ICTextView *)self isSearchResultView:v8])
  {
    containerViewForAttachments = [(ICBaseTextView *)self containerViewForAttachments];
    [containerViewForAttachments convertPoint:self fromView:{x, y}];
    v11 = v10;
    v13 = v12;

    containerViewForAttachments2 = [(ICBaseTextView *)self containerViewForAttachments];
    v15 = [containerViewForAttachments2 hitTest:eventCopy withEvent:{v11, v13}];
  }

  else
  {
    v15 = v8;
  }

  return v15;
}

- (id)textAttachmentAtPoint:(CGPoint)point
{
  v4 = [(ICTextView *)self characterRangeAtPoint:point.x, point.y];
  start = [v4 start];
  if (start)
  {
    beginningOfDocument = [(ICTextView *)self beginningOfDocument];
    v7 = [(ICTextView *)self offsetFromPosition:beginningOfDocument toPosition:start];

    textStorage = [(ICTextView *)self textStorage];
    v9 = [textStorage attribute:*MEMORY[0x277D74060] atIndex:v7 effectiveRange:0];

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

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  beganCopy = began;
  [(ICTextView *)self setTouchesCurrentlyOnAttachmentView:[(ICTextView *)self attachmentViewUnderTouches:beganCopy]];
  editorController = [(ICEditingTextView *)self editorController];
  textController = [editorController textController];
  authorHighlightsController = [textController authorHighlightsController];
  [authorHighlightsController setAllowsAnimations:0];

  v11.receiver = self;
  v11.super_class = ICTextView;
  [(ICEditingTextView *)&v11 touchesBegan:beganCopy withEvent:eventCopy];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  eventCopy = event;
  movedCopy = moved;
  [(ICTextView *)self setTouchesCurrentlyOnAttachmentView:[(ICTextView *)self attachmentViewUnderTouches:movedCopy]];
  v8.receiver = self;
  v8.super_class = ICTextView;
  [(ICEditingTextView *)&v8 touchesMoved:movedCopy withEvent:eventCopy];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = ICTextView;
  [(ICEditingTextView *)&v8 touchesEnded:ended withEvent:event];
  [(ICTextView *)self setTouchesCurrentlyOnAttachmentView:0];
  editorController = [(ICEditingTextView *)self editorController];
  textController = [editorController textController];
  authorHighlightsController = [textController authorHighlightsController];
  [authorHighlightsController setAllowsAnimations:1];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = ICTextView;
  [(ICEditingTextView *)&v8 touchesCancelled:cancelled withEvent:event];
  [(ICTextView *)self setTouchesCurrentlyOnAttachmentView:0];
  editorController = [(ICEditingTextView *)self editorController];
  textController = [editorController textController];
  authorHighlightsController = [textController authorHighlightsController];
  [authorHighlightsController setAllowsAnimations:1];
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

- (id)_targetedPreviewForTextInteractableItem:(id)item dismissing:(BOOL)dismissing
{
  dismissingCopy = dismissing;
  itemCopy = item;
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    icLayoutManager = [(ICEditingTextView *)self icLayoutManager];
    [icLayoutManager setShouldIgnoreCachedOriginUpdates:1];
  }

  v11.receiver = self;
  v11.super_class = ICTextView;
  v8 = [(ICTextView *)&v11 _targetedPreviewForTextInteractableItem:itemCopy dismissing:dismissingCopy];
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    icLayoutManager2 = [(ICEditingTextView *)self icLayoutManager];
    [icLayoutManager2 setShouldIgnoreCachedOriginUpdates:0];
  }

  return v8;
}

- (void)setSelectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  editorController = [(ICEditingTextView *)self editorController];
  isPreviewingAttachmentFromNote = [editorController isPreviewingAttachmentFromNote];

  if ((isPreviewingAttachmentFromNote & 1) == 0)
  {
    objc_opt_class();
    textStorage = [(ICTextView *)self textStorage];
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

- (void)setSelectedTextRange:(id)range
{
  rangeCopy = range;
  editorController = [(ICEditingTextView *)self editorController];
  isPreviewingAttachmentFromNote = [editorController isPreviewingAttachmentFromNote];

  if ((isPreviewingAttachmentFromNote & 1) == 0)
  {
    objc_opt_class();
    textStorage = [(ICTextView *)self textStorage];
    v8 = ICDynamicCast();

    if (([v8 isFixing] & 1) == 0)
    {
      [(ICEditingTextView *)self endHeadingRenameCommittingMarkedText:1];
    }

    [v8 setIsSelectingText:1];
    v10.receiver = self;
    v10.super_class = ICTextView;
    [(ICTextView *)&v10 setSelectedTextRange:rangeCopy];
    [v8 setHasEditedCharactersAfterTextSelection:0];
    [v8 breakUndoCoalescing];
    [v8 setIsSelectingText:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"ICTextViewSelectedTextRangeDidChangeNotification" object:self];
  }
}

- (BOOL)touchesShouldCancelInContentView:(id)view
{
  viewCopy = view;
  v5 = viewCopy;
  superview = viewCopy;
  if (!viewCopy || (superview = viewCopy, viewCopy == self))
  {
LABEL_7:
    v10.receiver = self;
    v10.super_class = ICTextView;
    scrollViewShouldCancelTouchesForThisView = [(ICTextView *)&v10 touchesShouldCancelInContentView:v5];
    v7 = superview;
  }

  else
  {
    v7 = viewCopy;
    while ((objc_opt_respondsToSelector() & 1) == 0)
    {
      superview = [(ICTextView *)v7 superview];

      if (superview)
      {
        v7 = superview;
        if (superview != self)
        {
          continue;
        }
      }

      goto LABEL_7;
    }

    scrollViewShouldCancelTouchesForThisView = [(ICTextView *)v7 scrollViewShouldCancelTouchesForThisView];
  }

  return scrollViewShouldCancelTouchesForThisView;
}

- (void)setBaseWritingDirection:(int64_t)direction forRange:(id)range
{
  rangeCopy = range;
  objc_opt_class();
  textStorage = [(ICTextView *)self textStorage];
  v8 = ICDynamicCast();
  [v8 setIsResettingBaseWritingDirection:1];

  v11.receiver = self;
  v11.super_class = ICTextView;
  [(ICTextView *)&v11 setBaseWritingDirection:direction forRange:rangeCopy];

  objc_opt_class();
  textStorage2 = [(ICTextView *)self textStorage];
  v10 = ICDynamicCast();
  [v10 setIsResettingBaseWritingDirection:0];
}

- (void)scrollRangeToVisible:(_NSRange)visible consideringInsets:(BOOL)insets animated:(BOOL)animated inSearchableString:(id)string
{
  animatedCopy = animated;
  insetsCopy = insets;
  length = visible.length;
  location = visible.location;
  stringCopy = string;
  editorController = [(ICEditingTextView *)self editorController];
  note = [editorController note];
  v13 = [note textRangeForSearchRange:location inSearchableString:{length, stringCopy}];
  v15 = v14;

  if (v15)
  {
    [(ICTextView *)self ic_scrollRangeToVisible:v13 consideringInsets:v15 animated:insetsCopy, animatedCopy];
  }

  v16 = [stringCopy attribute:*MEMORY[0x277D36030] atIndex:location effectiveRange:0];
  if (v16)
  {
    v17 = [(ICTextView *)self findableForAttachment:v16];
    [v17 scrollToRange:location inFindableString:{length, stringCopy}];
  }
}

- (id)findableForAttachment:(id)attachment
{
  v4 = [MEMORY[0x277D36680] textAttachmentWithBaseAttachment:attachment];
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

    icTextLayoutManager = [(ICEditingTextView *)self icTextLayoutManager];
    v8 = [icTextLayoutManager tableViewControllerForAttachment:v6 createIfNeeded:1];

    ICProtocolCast();
    v9 = 0;
  }

  else
  {
    objc_opt_class();
    textContainer = [(ICTextView *)self textContainer];
    layoutManager = [textContainer layoutManager];
    v6 = ICCheckedDynamicCast();

    v8 = [v6 viewControllerForTextAttachment:v5];
    v9 = ICProtocolCast();
  }

LABEL_10:
LABEL_11:

  return v9;
}

- (void)setInputAccessoryViewVisible:(BOOL)visible
{
  visibleCopy = visible;
  editorController = [(ICEditingTextView *)self editorController];
  usesContextualFormatBar = [editorController usesContextualFormatBar];

  if ((usesContextualFormatBar & 1) == 0)
  {
    objc_opt_class();
    editorController2 = [(ICEditingTextView *)self editorController];
    textViewInputAccessoryView = [editorController2 textViewInputAccessoryView];
    v9 = ICDynamicCast();

    if ([v9 isHidden] == visibleCopy)
    {
      [v9 setHidden:visibleCopy ^ 1u];
    }
  }
}

- (void)makeTextWritingDirectionLeftToRight:(id)right
{
  rightCopy = right;
  v9.receiver = self;
  v9.super_class = ICTextView;
  [(ICEditingTextView *)&v9 makeTextWritingDirectionLeftToRight:rightCopy];
  ic_selectedRanges = [(ICTextView *)self ic_selectedRanges];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ICTextView_makeTextWritingDirectionLeftToRight___block_invoke;
  v7[3] = &unk_2781AD7D8;
  v8 = rightCopy;
  v6 = rightCopy;
  [(ICEditingTextView *)self ic_enumerateTableAttachmentViewControllersInRanges:ic_selectedRanges usingBlock:v7];
}

- (void)makeTextWritingDirectionRightToLeft:(id)left
{
  leftCopy = left;
  v9.receiver = self;
  v9.super_class = ICTextView;
  [(ICEditingTextView *)&v9 makeTextWritingDirectionRightToLeft:leftCopy];
  ic_selectedRanges = [(ICTextView *)self ic_selectedRanges];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ICTextView_makeTextWritingDirectionRightToLeft___block_invoke;
  v7[3] = &unk_2781AD7D8;
  v8 = leftCopy;
  v6 = leftCopy;
  [(ICEditingTextView *)self ic_enumerateTableAttachmentViewControllersInRanges:ic_selectedRanges usingBlock:v7];
}

- (void)updateTextViewForDidChange
{
  if ([(ICTextView *)self isSettingStyleWithStyleUI])
  {
    typingAttributes = [(ICEditingTextView *)self typingAttributes];
    v4 = MEMORY[0x277D35DA8];
    v5 = [typingAttributes objectForKeyedSubscript:*MEMORY[0x277D35DA8]];

    if (v5)
    {
      internalTypingAttributes = [(ICEditingTextView *)self internalTypingAttributes];
      v7 = [internalTypingAttributes mutableCopy];

      [v7 setObject:v5 forKey:*v4];
      [(ICEditingTextView *)self setInternalTypingAttributes:v7];
    }
  }

  v8.receiver = self;
  v8.super_class = ICTextView;
  [(ICEditingTextView *)&v8 updateTextViewForDidChange];
}

- (BOOL)keyboardInput:(id)input shouldInsertText:(id)text isMarkedText:(BOOL)markedText
{
  markedTextCopy = markedText;
  textCopy = text;
  inputCopy = input;
  [(ICTextView *)self setIsInsertingTextFromKeyboardInput:1];
  v11.receiver = self;
  v11.super_class = ICTextView;
  LOBYTE(markedTextCopy) = [(ICTextView *)&v11 keyboardInput:inputCopy shouldInsertText:textCopy isMarkedText:markedTextCopy];

  [(ICTextView *)self setIsInsertingTextFromKeyboardInput:0];
  return markedTextCopy;
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 1;
  if ([MEMORY[0x277D75658] isInHardwareKeyboardMode] && -[ICTextView ic_isFirstResponder](self, "ic_isFirstResponder"))
  {
    _modifierFlags = [eventCopy _modifierFlags];
    _unmodifiedInput = [eventCopy _unmodifiedInput];
    selectedRange = [(ICTextView *)self selectedRange];
    v12 = v11;
    if ([_unmodifiedInput length])
    {
      _isKeyDown = [eventCopy _isKeyDown];
      v14 = v12 ? 0 : _isKeyDown;
      if (v14 == 1)
      {
        v15 = *MEMORY[0x277D76B48];
        if ([_unmodifiedInput isEqualToString:*MEMORY[0x277D76B48]])
        {
          if ((_modifierFlags & 0xFFFFFFFFFFF7FFFFLL) == 0)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v16 = [_unmodifiedInput isEqualToString:*MEMORY[0x277D76B60]];
          if ((_modifierFlags & 0xFFFFFFFFFFF7FFFFLL) != 0)
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
            textStorage = [(ICTextView *)self textStorage];
            v19 = [textStorage attributesAtIndex:selectedRange effectiveRange:0];

            v20 = [v19 objectForKey:*MEMORY[0x277D74118]];
            v21 = v20;
            if (v20)
            {
              baseWritingDirection = [v20 baseWritingDirection];
              v23 = [_unmodifiedInput isEqualToString:v15];
              v24 = v23;
              if (((baseWritingDirection != 1) ^ v23))
              {
                textStorage2 = [(ICTextView *)self textStorage];
                v26 = [textStorage2 length];

                if (selectedRange >= v26)
                {
                  goto LABEL_28;
                }

LABEL_21:
                if (selectedRange != 0x7FFFFFFFFFFFFFFFLL)
                {
                  textStorage3 = [(ICTextView *)self textStorage];
                  v52.length = [textStorage3 length];
                  v51.location = selectedRange;
                  v51.length = 1;
                  v52.location = 0;
                  length = NSIntersectionRange(v51, v52).length;

                  if (length != 1)
                  {
                    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"NSIntersectionRange(testRange functionName:NSMakeRange(0 simulateCrash:self.textStorage.length)).length == 1" showAlert:"-[ICTextView pressesBegan:withEvent:]" format:{1, 0, @"test range must be within bounds"}];
                  }

                  if (ICInternalSettingsIsTextKit2Enabled())
                  {
                    icTextLayoutManager = [(ICEditingTextView *)self icTextLayoutManager];
                    v45[0] = MEMORY[0x277D85DD0];
                    v45[1] = 3221225472;
                    v45[2] = __37__ICTextView_pressesBegan_withEvent___block_invoke;
                    v45[3] = &unk_2781AD800;
                    v46 = v24;
                    v45[4] = self;
                    v45[5] = &v47;
                    [icTextLayoutManager enumerateAttachmentViewsInRange:selectedRange usingBlock:{1, v45}];
                  }

                  else
                  {
                    objc_opt_class();
                    layoutManager = [(ICTextView *)self layoutManager];
                    v31 = ICDynamicCast();

                    v41[0] = MEMORY[0x277D85DD0];
                    v41[1] = 3221225472;
                    v41[2] = __37__ICTextView_pressesBegan_withEvent___block_invoke_2;
                    v41[3] = &unk_2781AD800;
                    icTextLayoutManager = v31;
                    v44 = v24;
                    v42 = icTextLayoutManager;
                    v43 = &v47;
                    [icTextLayoutManager enumerateAttachmentViewsInRange:selectedRange usingBlock:{1, v41}];
                  }
                }

                goto LABEL_28;
              }

              if (selectedRange)
              {
                --selectedRange;
                goto LABEL_21;
              }
            }

LABEL_28:
          }
        }
      }
    }

    editorController = [(ICEditingTextView *)self editorController];
    linkAcceleratorController = [editorController linkAcceleratorController];

    if (![linkAcceleratorController isShowing] || !objc_msgSend(eventCopy, "_isKeyDown"))
    {
      goto LABEL_42;
    }

    *(v48 + 24) = 0;
    v34 = [_unmodifiedInput isEqualToString:*MEMORY[0x277D76AD8]];
    v35 = [_unmodifiedInput isEqualToString:*MEMORY[0x277D76AC0]];
    v36 = [_unmodifiedInput isEqualToString:*MEMORY[0x277D76B68]];
    v37 = [_unmodifiedInput isEqualToString:@"\r"];
    v38 = [_unmodifiedInput isEqualToString:@"\t"];
    if (v34)
    {
      [linkAcceleratorController hideAccelerator];
LABEL_42:

      goto LABEL_43;
    }

    if (v35)
    {
      handleArrowDown = [linkAcceleratorController handleArrowDown];
    }

    else if (v36)
    {
      handleArrowDown = [linkAcceleratorController handleArrowUp];
    }

    else
    {
      if (((v37 | v38) & 1) == 0)
      {
        goto LABEL_41;
      }

      handleArrowDown = [linkAcceleratorController handleUseCurrentSuggestion];
    }

    if (handleArrowDown)
    {
      goto LABEL_42;
    }

    [linkAcceleratorController hideAccelerator];
LABEL_41:
    *(v48 + 24) = 1;
    goto LABEL_42;
  }

LABEL_43:
  if (*(v48 + 24) == 1)
  {
    v40.receiver = self;
    v40.super_class = ICTextView;
    [(ICTextView *)&v40 pressesBegan:beganCopy withEvent:eventCopy];
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
  scrollClampingControllerDelayedRelease = [(ICTextView *)self scrollClampingControllerDelayedRelease];
  [scrollClampingControllerDelayedRelease clamp];
}

- (void)unclampTextView
{
  scrollClampingControllerDelayedRelease = [(ICTextView *)self scrollClampingControllerDelayedRelease];
  [scrollClampingControllerDelayedRelease unclamp];
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

- (void)authorHighlightsControllerWillPerformHighlightUpdates:(id)updates
{
  updatesCopy = updates;
  objc_opt_class();
  userInfo = [updatesCopy userInfo];

  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D364B8]];
  v10 = ICCheckedDynamicCast();

  document = [v10 document];
  tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
  document2 = [tTTextStorage document];

  if (document == document2)
  {
    [(ICTextView *)self setIsPerformingHighlightUpdates:1];
  }
}

- (void)authorHighlightsControllerDidPerformHighlightUpdates:(id)updates
{
  updatesCopy = updates;
  objc_opt_class();
  userInfo = [updatesCopy userInfo];

  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D364B8]];
  v7 = ICCheckedDynamicCast();

  document = [v7 document];
  tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
  document2 = [tTTextStorage document];

  if (document == document2)
  {
    dispatchMainAfterDelay();
  }
}

- (void)sceneWillEnterForeground:(id)foreground
{
  object = [foreground object];
  window = [(ICTextView *)self window];
  windowScene = [window windowScene];

  if (object == windowScene)
  {

    [(ICTextView *)self updateLayoutMarginsForMultipleTextViewsIfNecessary];
  }
}

- (void)splitViewAnimatedTransitionWillBegin:(id)begin
{
  beginCopy = begin;
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    objc_opt_class();
    object = [beginCopy object];
    v6 = ICDynamicCast();

    editorController = [(ICEditingTextView *)self editorController];
    viewControllerManager = [editorController viewControllerManager];

    mainSplitViewController = [viewControllerManager mainSplitViewController];
    objc_opt_class();
    userInfo = [beginCopy userInfo];
    v11 = [userInfo objectForKeyedSubscript:@"ICSplitViewControllerPredictedDetailSizeUserInfo"];
    v12 = ICDynamicCast();

    transitionCoordinator = [mainSplitViewController transitionCoordinator];
    mainSplitViewController2 = [viewControllerManager mainSplitViewController];
    if (v6 == mainSplitViewController2 && [mainSplitViewController displayMode] != 3 && transitionCoordinator)
    {

      if (v12)
      {
        completionCurve = [transitionCoordinator completionCurve];
        [transitionCoordinator transitionDuration];
        v17 = v16;
        [transitionCoordinator transitionDuration];
        v19 = v18;
        [transitionCoordinator percentComplete];
        v21 = v17 - v19 * v20;
        v22 = MEMORY[0x277D75D18];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __51__ICTextView_splitViewAnimatedTransitionWillBegin___block_invoke;
        v23[3] = &unk_2781ABEB8;
        v23[4] = self;
        v24 = v12;
        [v22 transitionWithView:self duration:completionCurve | 0x500000 options:v23 animations:0 completion:v21];
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

- (void)splitViewAnimatedTransitionEnded:(id)ended
{
  endedCopy = ended;
  objc_opt_class();
  object = [endedCopy object];

  v9 = ICDynamicCast();

  window = [(ICTextView *)self window];
  rootViewController = [window rootViewController];

  v8 = v9;
  if (rootViewController == v9)
  {
    [(ICTextView *)self updateLayoutMargins];
    v8 = v9;
  }
}

- (void)updateLayoutMarginsForMultipleTextViewsIfNecessary
{
  tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
  textViews = [tTTextStorage textViews];
  v5 = [textViews count];

  if (v5 >= 2)
  {
    if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
    {
      editorController = [(ICEditingTextView *)self editorController];
      [editorController saveCurrentScrollState];
    }

    [(ICTextView *)self updateLayoutMargins];
    if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
    {
      editorController2 = [(ICEditingTextView *)self editorController];
      [editorController2 applyScrollStateIfAvailable];
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
    leadingAnchor = [(UILayoutGuide *)self->_textContainerLayoutGuide leadingAnchor];
    safeAreaLayoutGuide = [(ICTextView *)self safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

    safeAreaLayoutGuide2 = [(ICTextView *)self safeAreaLayoutGuide];
    trailingAnchor = [safeAreaLayoutGuide2 trailingAnchor];
    trailingAnchor2 = [(UILayoutGuide *)self->_textContainerLayoutGuide trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

    v21 = MEMORY[0x277CCAAD0];
    v23[0] = v22;
    v23[1] = v12;
    topAnchor = [(UILayoutGuide *)self->_textContainerLayoutGuide topAnchor];
    topAnchor2 = [(ICTextView *)self topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v23[2] = v15;
    bottomAnchor = [(UILayoutGuide *)self->_textContainerLayoutGuide bottomAnchor];
    bottomAnchor2 = [(ICTextView *)self bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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
  icDelegate = [(ICBaseTextView *)self icDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  icDelegate2 = [(ICBaseTextView *)self icDelegate];
  isPaperLinkBarShowing = [icDelegate2 isPaperLinkBarShowing];

  return isPaperLinkBarShowing;
}

- (void)applyEdgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  v118 = *MEMORY[0x277D85DE8];
  if (([(ICTextView *)self _freezeTextContainerSize:insets.top]& 1) != 0)
  {
    return;
  }

  if (![MEMORY[0x277D75418] ic_isVision])
  {
    window = [(ICTextView *)self window];

    if (!window)
    {
      return;
    }

    effectiveUserInterfaceLayoutDirection = [(ICTextView *)self effectiveUserInterfaceLayoutDirection];
    [(ICTextView *)self bounds];
    v16 = v15;
    tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
    textViews = [tTTextStorage textViews];

    if ([textViews count] >= 2)
    {
      v110 = effectiveUserInterfaceLayoutDirection;
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v19 = textViews;
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
              window2 = [*(*(&v113 + 1) + 8 * i) window];

              if (window2)
              {
                window3 = [(ICTextView *)v24 window];
                windowScene = [window3 windowScene];
                activationState = [windowScene activationState];

                if (activationState <= 1)
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

      effectiveUserInterfaceLayoutDirection = v110;
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
      window4 = [(ICTextView *)self window];
      readableContentGuide = [window4 readableContentGuide];
      [readableContentGuide layoutFrame];
      [(ICTextView *)self convertRect:0 fromView:?];
      Width = CGRectGetWidth(v120);

      superview = [(ICTextView *)self superview];
      [superview safeAreaInsets];
      v107 = v43;
      v108 = v42;

      superview2 = [(ICTextView *)self superview];
      [superview2 bounds];
      v46 = v45;
      v111 = v32;
      v48 = v47;
      v50 = v49;
      v52 = v51;
      superview3 = [(ICTextView *)self superview];
      [superview3 safeAreaInsets];
      v55 = v46 + v54;
      v57 = v48 + v56;
      v59 = v50 - (v54 + v58);
      v61 = v52 - (v56 + v60);
      superview4 = [(ICTextView *)self superview];
      [(ICTextView *)self convertRect:superview4 fromView:v55, v57, v59, v61];
      v63 = CGRectGetWidth(v121);

      window5 = [(ICTextView *)self window];
      [window5 bounds];
      v66 = v65;
      v68 = v67;
      v70 = v69;
      v72 = v71;
      window6 = [(ICTextView *)self window];
      [window6 safeAreaInsets];
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

      if (effectiveUserInterfaceLayoutDirection == 1)
      {
        v82 = v80;
      }

      else
      {
        v82 = v81;
      }

      if (effectiveUserInterfaceLayoutDirection == 1)
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

      if (effectiveUserInterfaceLayoutDirection == 1)
      {
        v84 = v34;
      }

      else
      {
        v84 = v85;
      }

      if (effectiveUserInterfaceLayoutDirection == 1)
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

    tTTextStorage2 = [(ICEditingTextView *)self TTTextStorage];
    objc_opt_class();
    styler = [tTTextStorage2 styler];
    v94 = ICCheckedDynamicCast();

    if (!v94)
    {
      v97 = 0;
      goto LABEL_79;
    }

    zoomController = [v94 zoomController];
    [zoomController zoomFactor];
    if (vabdd_f64(v32, v96) < 0.00999999978)
    {
      goto LABEL_66;
    }

    if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0 && [textViews count] >= 2)
    {
      window7 = [(ICTextView *)self window];
      windowScene2 = [window7 windowScene];
      if ([windowScene2 activationState] == 2)
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
            textLayoutManager = [(ICTextView *)self textLayoutManager];
LABEL_84:
            v105 = textLayoutManager;
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
            textLayoutManager = [(ICTextView *)self layoutManager];
            goto LABEL_84;
          }
        }

        return;
      }

      window8 = [(ICTextView *)self window];
      windowScene3 = [window8 windowScene];
      activationState2 = [windowScene3 activationState];

      if (activationState2 == 1)
      {
        goto LABEL_66;
      }
    }

    [zoomController setZoomFactor:v32];
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
      [v94 refreshTextStylingForTextStorage:tTTextStorage2 withTextController:v94];
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

- (id)attachmentViewTappedByGesture:(id)gesture
{
  gestureCopy = gesture;
  if (![gestureCopy numberOfTouches])
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  [gestureCopy locationOfTouch:0 inView:self];
  v5 = [(ICTextView *)self hitTest:0 withEvent:?];
  v6 = v5;
  if (!v5 || v5 == self)
  {
    superview = v5;
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

    superview = [(ICTextView *)v6 superview];

    if (superview)
    {
      v6 = superview;
      if (superview != self)
      {
        continue;
      }
    }

    goto LABEL_12;
  }

LABEL_14:

  return v6;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
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

- (void)inProcessUndoPanGesture:(id)gesture
{
  v23 = *MEMORY[0x277D85DE8];
  if ([gesture state] == 1)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    collectScrollViews = [(ICTextView *)self collectScrollViews];
    v5 = [collectScrollViews countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(collectScrollViews);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          panGestureRecognizer = [v9 panGestureRecognizer];
          isEnabled = [panGestureRecognizer isEnabled];

          if (isEnabled)
          {
            panGestureRecognizer2 = [v9 panGestureRecognizer];
            [panGestureRecognizer2 setEnabled:0];

            panGestureRecognizer3 = [v9 panGestureRecognizer];
            [panGestureRecognizer3 setEnabled:1];
          }

          pinchGestureRecognizer = [v9 pinchGestureRecognizer];
          isEnabled2 = [pinchGestureRecognizer isEnabled];

          if (isEnabled2)
          {
            pinchGestureRecognizer2 = [v9 pinchGestureRecognizer];
            [pinchGestureRecognizer2 setEnabled:0];

            pinchGestureRecognizer3 = [v9 pinchGestureRecognizer];
            [pinchGestureRecognizer3 setEnabled:1];
          }
        }

        v6 = [collectScrollViews countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }
  }
}

- (id)collectScrollViews
{
  array = [MEMORY[0x277CBEB18] array];
  ICTextViewCollectScrollViews(self, array);
  v4 = [array copy];

  return v4;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  interactionCopy = interaction;
  requestCopy = request;
  regionCopy = region;
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    goto LABEL_8;
  }

  editorController = [(ICEditingTextView *)self editorController];
  if (([editorController isInkPickerShowing] & 1) == 0)
  {

LABEL_8:
    v29.receiver = self;
    v29.super_class = ICTextView;
    v27 = [(ICTextView *)&v29 pointerInteraction:interactionCopy regionForRequest:requestCopy defaultRegion:regionCopy];
    goto LABEL_9;
  }

  prefersPencilOnlyDrawing = [MEMORY[0x277D75820] prefersPencilOnlyDrawing];

  if (prefersPencilOnlyDrawing)
  {
    goto LABEL_8;
  }

  layoutManager = [(ICTextView *)self layoutManager];
  textStorage = [(ICTextView *)self textStorage];
  v15 = [layoutManager glyphIndexForCharacterAtIndex:{objc_msgSend(textStorage, "length") - 1}];

  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_8;
  }

  layoutManager2 = [(ICTextView *)self layoutManager];
  [layoutManager2 lineFragmentRectForGlyphAtIndex:v15 effectiveRange:0];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  [requestCopy location];
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

- (void)textControllerDidHandleSpecialCaseEditing:(id)editing
{
  delegate = [(ICTextView *)self delegate];
  [delegate textViewDidChange:self];
}

- (id)accessibilityLabel
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Note" value:&stru_282757698 table:0];

  return v3;
}

- (BOOL)_accessibilityBeginUndoableTextInsertion
{
  tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
  [tTTextStorage setIsPerformingAccessibilityUndoableTextInsertion:1];

  return 1;
}

- (BOOL)_accessibilityEndUndoableTextInsertion
{
  tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
  [tTTextStorage setIsPerformingAccessibilityUndoableTextInsertion:0];

  return 1;
}

- (id)_icaxUnfilteredAttributedString
{
  tTTextStorage = [(ICEditingTextView *)self TTTextStorage];
  _icaxUnfilteredAttributedString = [tTTextStorage _icaxUnfilteredAttributedString];

  return _icaxUnfilteredAttributedString;
}

- (void)handleAccessibilityDarkerSystemColorsStatusDidChange:(id)change
{
  textStorage = [(ICTextView *)self textStorage];
  v5 = *MEMORY[0x277D740E8];
  textStorage2 = [(ICTextView *)self textStorage];
  v7 = [textStorage2 length];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__ICTextView_handleAccessibilityDarkerSystemColorsStatusDidChange___block_invoke;
  v8[3] = &unk_2781AC5D8;
  v8[4] = self;
  [textStorage enumerateAttribute:v5 inRange:0 options:v7 usingBlock:{0, v8}];
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