@interface CKMessageEditingViewController
- (BOOL)becomeFirstResponder;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)messageEditingViewBalloonHasTail;
- (CGRect)editedMessageAchorPosition;
- (CKMessageEditingViewController)initWithTransitionContext:(id)context conversation:(id)conversation;
- (CKMessageEditingViewControllerInteractionDelegate)interactionDelegate;
- (CKTranscriptOverlayTransitionDelegate)transcriptOverlayTransitionDelegate;
- (UIEdgeInsets)messageEditingViewDismissAnimationContentInsets;
- (UIView)balloonViewForAlignment;
- (char)messageEditingColorType;
- (double)messageEditingViewDismissAnimationBalloonMaxWidth;
- (id)messageEditingColor;
- (id)textEffectCoordinator:(id)coordinator textViewForTextViewIdentifier:(id)identifier;
- (id)visibleTextViewIdentifiersFor:(id)for;
- (void)_animateIn;
- (void)_animateOutWithState:(int64_t)state;
- (void)_applyProofreadingIfNecessary;
- (void)_informDelegateOfUpdatedBalloonViewFrame;
- (void)_requestDismissal;
- (void)configureForInitialAppearance;
- (void)dismissAndRejectChanges;
- (void)dismissIfNoChanges;
- (void)messageEditingView:(id)view didChangeTextAnimationInRange:(_NSRange)range;
- (void)messageEditingViewConfirmButtonSelected:(id)selected;
- (void)messageEditingViewDidUpdateBalloonViewContent:(id)content;
- (void)messageEditingViewRejectButtonSelected:(id)selected;
- (void)messageEditingViewWritingToolsDidEnd:(id)end;
- (void)messageEditingViewWritingToolsWillBegin:(id)begin;
- (void)modifySelectedTextByTogglingTextEffectType:(int64_t)type;
- (void)modifySelectedTextByTogglingTextStyle:(unint64_t)style;
- (void)transcriptContentInsetsDidChange;
- (void)transcriptOverlayTapGestureRecognized:(id)recognized;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CKMessageEditingViewController

- (void)modifySelectedTextByTogglingTextEffectType:(int64_t)type
{
  messageEditingView = [(CKMessageEditingViewController *)self messageEditingView];
  [messageEditingView modifySelectedTextByTogglingTextEffectType:type];
}

- (void)modifySelectedTextByTogglingTextStyle:(unint64_t)style
{
  messageEditingView = [(CKMessageEditingViewController *)self messageEditingView];
  [messageEditingView modifySelectedTextByTogglingTextStyle:style];
}

- (CKMessageEditingViewController)initWithTransitionContext:(id)context conversation:(id)conversation
{
  contextCopy = context;
  conversationCopy = conversation;
  v18.receiver = self;
  v18.super_class = CKMessageEditingViewController;
  v9 = [(CKMessageEditingViewController *)&v18 init];
  v10 = v9;
  if (v9)
  {
    v9->_isInitialLoad = 1;
    objc_storeStrong(&v9->_transitionContext, context);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v10->_editedMessageAchorPosition.origin = *MEMORY[0x1E695F058];
    v10->_editedMessageAchorPosition.size = v11;
    objc_storeStrong(&v10->_conversation, conversation);
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

    if (isExpressiveTextEnabled)
    {
      if (!+[_TtC7ChatKit23CKTextEffectCoordinator messageEditingTextEffectCoordinationDisabled])
      {
        v14 = [[CKTextEffectCoordinatorConfiguration alloc] initWithLogIdentifier:@"message_editing" timeAfterLastAnimationInSeconds:3.5];
        v15 = [[_TtC7ChatKit23CKTextEffectCoordinator alloc] initWithConfiguration:v14];
        textEffectsCoordinator = v10->_textEffectsCoordinator;
        v10->_textEffectsCoordinator = v15;

        [(CKTextEffectCoordinator *)v10->_textEffectsCoordinator setDelegate:v10];
      }
    }
  }

  return v10;
}

- (void)viewDidLoad
{
  v50.receiver = self;
  v50.super_class = CKMessageEditingViewController;
  [(CKMessageEditingViewController *)&v50 viewDidLoad];
  view = [(CKMessageEditingViewController *)self view];
  [view setBackgroundColor:0];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  v6 = 0x1E69DD250;
  if (!isEntryViewRefreshEnabled)
  {
    v6 = 0x1E69DD298;
  }

  v7 = objc_alloc(*v6);
  view2 = [(CKMessageEditingViewController *)self view];
  [view2 bounds];
  v9 = [v7 initWithFrame:?];

  view3 = [(CKMessageEditingViewController *)self view];
  [view3 insertSubview:v9 atIndex:0];

  [(CKMessageEditingViewController *)self setTranscriptOverlayView:v9];
  v11 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_transcriptOverlayTapGestureRecognized_];
  [v11 setDelegate:self];
  [v9 addGestureRecognizer:v11];
  [(CKMessageEditingViewController *)self setTapGestureRecognizer:v11];
  mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isAutomaticOutgoingTranslationEnabled = [mEMORY[0x1E69A8070]2 isAutomaticOutgoingTranslationEnabled];

  v14 = 0;
  v15 = 0;
  if (isAutomaticOutgoingTranslationEnabled)
  {
    conversation = [(CKMessageEditingViewController *)self conversation];
    chat = [conversation chat];
    translationLanguageCode = [chat translationLanguageCode];

    if ([translationLanguageCode length] && (-[CKMessageEditingViewController conversation](self, "conversation"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "chat"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isAutomaticTranslationEnabled"), v20, v19, v21))
    {
      v15 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:translationLanguageCode];
    }

    else
    {
      v15 = 0;
    }

    conversation2 = [(CKMessageEditingViewController *)self conversation];
    chat2 = [conversation2 chat];
    userTranslationLanguageCode = [chat2 userTranslationLanguageCode];

    if ([userTranslationLanguageCode length] && (-[CKMessageEditingViewController conversation](self, "conversation"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "chat"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "isAutomaticTranslationEnabled"), v26, v25, v27))
    {
      v14 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:userTranslationLanguageCode];
    }

    else
    {
      v14 = 0;
    }
  }

  v28 = [[CKMessageEditingView alloc] initWithMessageEditingViewDelegate:self translationLanguage:v15 toTranslationLanguage:v14];
  [(CKMessageEditingView *)v28 setMessageEditingViewDelegate:self];
  mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled2 = [mEMORY[0x1E69A8070]3 isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled2)
  {
    [v9 addSubview:v28];
  }

  else
  {
    contentView = [v9 contentView];
    [contentView addSubview:v28];
  }

  v49 = v15;
  [(CKMessageEditingViewController *)self setMessageEditingView:v28];
  mEMORY[0x1E69A8070]4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070]4 isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    conversation3 = [(CKMessageEditingViewController *)self conversation];
    chat3 = [conversation3 chat];
    v36 = [chat3 supportsCapabilities:0x100000];

    messageEditingView = [(CKMessageEditingViewController *)self messageEditingView];
    messageEditingBalloonView = [messageEditingView messageEditingBalloonView];
    messageEditingBalloonTextView = [messageEditingBalloonView messageEditingBalloonTextView];
    [messageEditingBalloonTextView setExpressiveTextEnabled:v36];
  }

  v40 = [CKMentionsController alloc];
  messageEditingView2 = [(CKMessageEditingViewController *)self messageEditingView];
  messageEditingBalloonView2 = [messageEditingView2 messageEditingBalloonView];
  messageEditingBalloonTextView2 = [messageEditingBalloonView2 messageEditingBalloonTextView];
  conversation4 = [(CKMessageEditingViewController *)self conversation];
  v45 = [(CKMentionsController *)v40 initWithEntryTextView:messageEditingBalloonTextView2 conversation:conversation4];
  [(CKMessageEditingViewController *)self setMentionsController:v45];

  mentionsController = [(CKMessageEditingViewController *)self mentionsController];
  [mentionsController deferredSetup];

  view4 = [(CKMessageEditingViewController *)self view];
  [view4 setNeedsLayout];

  view5 = [(CKMessageEditingViewController *)self view];
  [view5 layoutIfNeeded];
}

- (void)viewDidLayoutSubviews
{
  v61.receiver = self;
  v61.super_class = CKMessageEditingViewController;
  [(CKMessageEditingViewController *)&v61 viewDidLayoutSubviews];
  view = [(CKMessageEditingViewController *)self view];
  [view bounds];
  v5 = v4;
  y = v6;
  v9 = v8;
  v11 = v10;

  messageEditingView = [(CKMessageEditingViewController *)self messageEditingView];
  [messageEditingView frame];
  v58 = v14;
  v59 = v13;
  v56 = v16;
  v57 = v15;

  transcriptOverlayView = [(CKMessageEditingViewController *)self transcriptOverlayView];
  [transcriptOverlayView setFrame:{v5, y, v9, v11}];

  if ([(CKMessageEditingViewController *)self isInitialLoad])
  {
    [(CKMessageEditingViewController *)self configureForInitialAppearance];
    [(CKMessageEditingViewController *)self setIsInitialLoad:0];
    v18 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__CKMessageEditingViewController_viewDidLayoutSubviews__block_invoke;
    block[3] = &unk_1E72EBA18;
    block[4] = self;
    dispatch_after(v18, MEMORY[0x1E69E96A0], block);
  }

  IsEmpty = CGRectIsEmpty(self->_editedMessageAchorPosition);
  v20 = v5;
  x = v5;
  v22 = y;
  width = v9;
  height = v11;
  if (!IsEmpty)
  {
    x = self->_editedMessageAchorPosition.origin.x;
    y = self->_editedMessageAchorPosition.origin.y;
    width = self->_editedMessageAchorPosition.size.width;
    height = self->_editedMessageAchorPosition.size.height;
  }

  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  v25 = +[CKUIBehavior sharedBehaviors];
  [v25 messageEditingKeyboardToBalloonPreferredPadding];
  v54 = v26;

  v27 = +[CKUIBehavior sharedBehaviors];
  [v27 messageEditingKeyboardToBalloonMinimumPadding];
  v29 = v28;

  interactionDelegate = [(CKMessageEditingViewController *)self interactionDelegate];
  [interactionDelegate transcriptContentInsetsForMessageEditingViewController:self];
  v32 = v31;
  v34 = v33;

  v35 = +[CKUIBehavior sharedBehaviors];
  [v35 messageEditingBalloonToNavBarMinimumPadding];
  v37 = v36;

  v62.origin.x = v20;
  v62.origin.y = v22;
  v62.size.width = v9;
  v62.size.height = v11;
  v38 = v37 + v32 + CGRectGetMinY(v62);
  v63.origin.x = v20;
  v63.origin.y = v22;
  v63.size.width = v9;
  v63.size.height = v11;
  v39 = CGRectGetMaxY(v63) - v34;
  v40 = v39 - v54;
  v41 = v39 - v29;
  messageEditingView2 = [(CKMessageEditingViewController *)self messageEditingView];
  [messageEditingView2 sizeThatFits:{v9, v11}];
  v44 = v43;

  MaxY = CGRectGetMaxY(v55);
  if (v40 < MaxY)
  {
    MaxY = v40;
  }

  v46 = MaxY - v44;
  if (v46 >= v38)
  {
    v47 = v46;
  }

  else
  {
    v47 = v38;
  }

  v48 = v44 + v47;
  if (v44 + v47 >= v41)
  {
    v48 = v41;
  }

  v49 = v48 - v47;
  messageEditingView3 = [(CKMessageEditingViewController *)self messageEditingView];
  [messageEditingView3 setFrame:{v20, v47, v9, v49}];

  messageEditingView4 = [(CKMessageEditingViewController *)self messageEditingView];
  [messageEditingView4 frame];
  v65.origin.y = v58;
  v65.origin.x = v59;
  v65.size.height = v56;
  v65.size.width = v57;
  if (CGRectEqualToRect(v64, v65))
  {
  }

  else
  {
    messageEditingView5 = [(CKMessageEditingViewController *)self messageEditingView];
    firstLayoutPassCompleted = [messageEditingView5 firstLayoutPassCompleted];

    if (firstLayoutPassCompleted)
    {
      [(CKMessageEditingViewController *)self _informDelegateOfUpdatedBalloonViewFrame];
    }
  }
}

void __55__CKMessageEditingViewController_viewDidLayoutSubviews__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textEffectsCoordinator];
  [v2 setPaused:0 includingAnimators:1];

  v3 = [*(a1 + 32) textEffectsCoordinator];
  [v3 updateWithReason:@"resuming coordinator because CKMessageEditingViewController did finish initialLoad"];
}

- (BOOL)becomeFirstResponder
{
  messageEditingView = [(CKMessageEditingViewController *)self messageEditingView];
  becomeFirstResponder = [messageEditingView becomeFirstResponder];

  return becomeFirstResponder;
}

- (void)configureForInitialAppearance
{
  v10 = *MEMORY[0x1E69E9840];
  visibleChatItemToFrameMap = [a2 visibleChatItemToFrameMap];
  v6 = 138412546;
  selfCopy = self;
  v8 = 2112;
  v9 = visibleChatItemToFrameMap;
  _os_log_error_impl(&dword_19020E000, a3, OS_LOG_TYPE_ERROR, "Anchor chat item %@ has no frame in the visible chat item map for inital layout. Map: %@", &v6, 0x16u);
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CKMessageEditingViewController;
  [(CKMessageEditingViewController *)&v5 viewDidAppear:appear];
  [(CKMessageEditingViewController *)self _animateIn];
  mentionsController = [(CKMessageEditingViewController *)self mentionsController];
  [mentionsController checkForMentions];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v17.receiver = self;
  v17.super_class = CKMessageEditingViewController;
  [(CKMessageEditingViewController *)&v17 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  [(CKMessageEditingViewController *)self editedMessageAchorPosition];
  if (!CGRectIsEmpty(v18) && ![(CKMessageEditingViewController *)self isInitialLoad])
  {
    [(CKMessageEditingViewController *)self viewHeightForEditedMessageAnchorPosition];
    if (vabdd_f64(v8, height) > 2.22044605e-16)
    {
      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __85__CKMessageEditingViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
      aBlock[3] = &unk_1E72F13B8;
      objc_copyWeak(v15, &location);
      v15[1] = *&height;
      v9 = _Block_copy(aBlock);
      v10 = v9;
      if (coordinatorCopy)
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __85__CKMessageEditingViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
        v11[3] = &unk_1E72F3B98;
        v12 = v9;
        objc_copyWeak(&v13, &location);
        [coordinatorCopy animateAlongsideTransition:v11 completion:0];
        objc_destroyWeak(&v13);
      }

      else
      {
        v9[2](v9);
      }

      objc_destroyWeak(v15);
      objc_destroyWeak(&location);
    }
  }
}

void __85__CKMessageEditingViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setEditedMessageAchorPosition:{v2, v3, v4, v5}];

  v7 = *(a1 + 40);
  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 setViewHeightForEditedMessageAnchorPosition:v7];

  v10 = objc_loadWeakRetained((a1 + 32));
  v9 = [v10 view];
  [v9 setNeedsLayout];
}

void __85__CKMessageEditingViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained view];
  [v2 layoutIfNeeded];
}

- (void)dismissAndRejectChanges
{
  if (![(CKMessageEditingViewController *)self animatingOut])
  {

    [(CKMessageEditingViewController *)self _animateOutWithState:4];
  }
}

- (void)dismissIfNoChanges
{
  messageEditingView = [(CKMessageEditingViewController *)self messageEditingView];
  currentComposition = [messageEditingView currentComposition];

  messageEditingView2 = [(CKMessageEditingViewController *)self messageEditingView];
  originalComposition = [messageEditingView2 originalComposition];

  LODWORD(messageEditingView2) = [currentComposition isPlainTextEqual:originalComposition];
  v7 = IMOSLoggingEnabled();
  if (messageEditingView2)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Message content is unchanged, dismissing edit view controller", buf, 2u);
      }
    }

    [(CKMessageEditingViewController *)self _animateOutWithState:4];
  }

  else if (v7)
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Message content is changed, not dismissing edit view controller", v10, 2u);
    }
  }
}

- (void)_animateIn
{
  [(CKMessageEditingViewController *)self setAnimatingIn:1];
  transcriptOverlayView = [(CKMessageEditingViewController *)self transcriptOverlayView];

  if (transcriptOverlayView)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    [v4 messageEditingAnimateInDuration];
    v6 = v5;

    v7 = +[CKUIBehavior sharedBehaviors];
    [v7 messageEditingAnimateInDamping];
    v9 = v8;

    transcriptOverlayTransitionDelegate = [(CKMessageEditingViewController *)self transcriptOverlayTransitionDelegate];
    [transcriptOverlayTransitionDelegate transcriptOverlayViewControllerWillAnimateIn:self];

    splitViewController = [(CKMessageEditingViewController *)self splitViewController];
    LOBYTE(transcriptOverlayTransitionDelegate) = [splitViewController isCollapsed];
    splitViewController2 = [(CKMessageEditingViewController *)self splitViewController];
    v13 = splitViewController2;
    if (transcriptOverlayTransitionDelegate)
    {
      [splitViewController2 masterViewController];
    }

    else
    {
      [splitViewController2 detailViewController];
    }
    v14 = ;

    navigationBar = [v14 navigationBar];
    [navigationBar setNeedsLayout];

    navigationBar2 = [v14 navigationBar];
    [navigationBar2 layoutIfNeeded];

    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__CKMessageEditingViewController__animateIn__block_invoke;
    aBlock[3] = &unk_1E72ED8D8;
    v22 = IsReduceMotionEnabled;
    aBlock[4] = self;
    v18 = _Block_copy(aBlock);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __44__CKMessageEditingViewController__animateIn__block_invoke_2;
    v20[3] = &unk_1E72EB9C8;
    v20[4] = self;
    v19 = _Block_copy(v20);
    [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v18 usingSpringWithDamping:v19 initialSpringVelocity:v6 options:0.0 animations:v9 completion:0.0];
  }
}

void __44__CKMessageEditingViewController__animateIn__block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [*(a1 + 32) messageEditingView];
    [v2 setAlpha:1.0];
  }

  v3 = [*(a1 + 32) messageEditingView];
  [v3 setMessageEditingViewState:2];

  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isEntryViewRefreshEnabled];

  if (v5)
  {
    v6 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v7 = [v6 colorWithAlphaComponent:0.5];
    v8 = [*(a1 + 32) transcriptOverlayView];
    [v8 setBackgroundColor:v7];
  }

  else
  {
    v6 = [*(a1 + 32) transcriptOverlayView];
    v9 = +[CKUIBehavior sharedBehaviors];
    v10 = [v9 theme];
    v11 = [v10 messageEditingTranscriptOverlayBackgroundEffects];
    [v6 setBackgroundEffects:v11];

    v7 = +[CKUIBehavior sharedBehaviors];
    v8 = [v7 theme];
    v12 = [v8 messageEditingTranscriptOverlayBackgroundColor];
    [v6 setBackgroundColor:v12];
  }

  v13 = [*(a1 + 32) transcriptOverlayTransitionDelegate];
  [v13 transcriptOverlayViewControllerIsAnimatingIn:*(a1 + 32)];

  v14 = [*(a1 + 32) interactionDelegate];
  [v14 messageEditingViewControllerIsAnimatingIn:*(a1 + 32)];

  v19 = [*(a1 + 32) messageEditingColor];
  v15 = [v19 colorWithAlphaComponent:0.0];
  v16 = [*(a1 + 32) messageEditingView];
  [v16 setMessageEditingBalloonTintColor:v15];

  v17 = [*(a1 + 32) messageEditingView];
  [v17 setNeedsLayout];

  v18 = [*(a1 + 32) messageEditingView];
  [v18 layoutIfNeeded];
}

uint64_t __44__CKMessageEditingViewController__animateIn__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAnimatingIn:0];
  v2 = [*(a1 + 32) transcriptOverlayTransitionDelegate];
  [v2 transcriptOverlayViewControllerDidAnimateIn:*(a1 + 32)];

  v3 = *(a1 + 32);

  return [v3 _applyProofreadingIfNecessary];
}

- (void)_animateOutWithState:(int64_t)state
{
  interactionDelegate = [(CKMessageEditingViewController *)self interactionDelegate];
  [interactionDelegate messageEditingViewControllerWillAnimateOut:self];

  [(CKMessageEditingViewController *)self setAnimatingOut:1];
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v7 = *MEMORY[0x1E695F058];
  v8 = *(MEMORY[0x1E695F058] + 8);
  v9 = *(MEMORY[0x1E695F058] + 16);
  v10 = *(MEMORY[0x1E695F058] + 24);
  transitionContext = [(CKMessageEditingViewController *)self transitionContext];
  v12 = transitionContext;
  if (!IsReduceMotionEnabled)
  {
    anchorChatItemGUID = [transitionContext anchorChatItemGUID];
    if ([anchorChatItemGUID length])
    {
      transcriptOverlayTransitionDelegate = [(CKMessageEditingViewController *)self transcriptOverlayTransitionDelegate];
      v15 = [transcriptOverlayTransitionDelegate updatedFrameMapForTranscriptOverlayViewController:self];

      v16 = [v15 objectForKeyedSubscript:anchorChatItemGUID];
      v17 = v16;
      if (v16)
      {
        [v16 CGRectValue];
        v7 = v18;
        v8 = v19;
        v9 = v20;
        v10 = v21;
      }

      else
      {
        v22 = IMLogHandleForCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [(CKMessageEditingViewController *)anchorChatItemGUID _animateOutWithState:v15, v22];
        }
      }
    }

    else
    {
      v15 = IMLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(CKMessageEditingViewController *)v12 _animateOutWithState:v15];
      }
    }
  }

  if (state == 4)
  {
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "Edit rejected, resetting balloon to original text", buf, 2u);
      }
    }

    messageEditingView = [(CKMessageEditingViewController *)self messageEditingView];
    [messageEditingView resetMessageToOriginalContent];
  }

  v25 = +[CKUIBehavior sharedBehaviors];
  [v25 messageEditingAnimateOutDuration];
  v27 = v26;

  v28 = +[CKUIBehavior sharedBehaviors];
  [v28 messageEditingAnimateOutDamping];
  v30 = v29;

  transcriptOverlayTransitionDelegate2 = [(CKMessageEditingViewController *)self transcriptOverlayTransitionDelegate];
  [transcriptOverlayTransitionDelegate2 transcriptOverlayViewControllerWillAnimateOut:self];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled)
  {
    messageEditingColor = [(CKMessageEditingViewController *)self messageEditingColor];
  }

  else
  {
    messageEditingColor = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__CKMessageEditingViewController__animateOutWithState___block_invoke;
  aBlock[3] = &unk_1E72F3BC0;
  aBlock[4] = self;
  v47 = IsReduceMotionEnabled;
  v42 = v7;
  v43 = v8;
  v44 = v9;
  v45 = v10;
  stateCopy = state;
  v35 = messageEditingColor;
  v41 = v35;
  v36 = _Block_copy(aBlock);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __55__CKMessageEditingViewController__animateOutWithState___block_invoke_2;
  v38[3] = &unk_1E72F3BE8;
  v39 = IsReduceMotionEnabled;
  v38[4] = self;
  v37 = _Block_copy(v38);
  [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v36 usingSpringWithDamping:v37 initialSpringVelocity:v27 options:0.0 animations:v30 completion:0.0];
  if (!IsReduceMotionEnabled)
  {
    [(CKMessageEditingViewController *)self performSelector:sel__requestDismissal withObject:0 afterDelay:v27];
  }
}

void __55__CKMessageEditingViewController__animateOutWithState___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v3 = [v2 isEntryViewRefreshEnabled];

  v4 = [*(a1 + 32) transcriptOverlayView];
  v5 = v4;
  if ((v3 & 1) == 0)
  {
    [v4 setBackgroundEffects:MEMORY[0x1E695E0F0]];
  }

  [v5 setBackgroundColor:0];

  if ((*(a1 + 88) & 1) != 0 || CGRectIsEmpty(*(a1 + 48)))
  {
    v6 = [*(a1 + 32) messageEditingView];
    [v6 setAlpha:0.0];
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    v11 = [*(a1 + 32) messageEditingView];
    [v11 setFrame:{v7, v8, v9, v10}];

    v12 = *(a1 + 80);
    v13 = [*(a1 + 32) messageEditingView];
    [v13 setMessageEditingViewState:v12];

    v14 = *(a1 + 40);
    v15 = [*(a1 + 32) messageEditingView];
    [v15 setMessageEditingBalloonTintColor:v14];

    v16 = [*(a1 + 32) messageEditingView];
    [v16 setNeedsLayout];

    v6 = [*(a1 + 32) messageEditingView];
    [v6 layoutIfNeeded];
  }

  v17 = [*(a1 + 32) interactionDelegate];
  [v17 messageEditingViewControllerIsAnimatingOut:*(a1 + 32)];

  v18 = [*(a1 + 32) transcriptOverlayTransitionDelegate];
  [v18 transcriptOverlayViewControllerIsAnimatingOut:*(a1 + 32)];
}

void __55__CKMessageEditingViewController__animateOutWithState___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) _requestDismissal];
  }

  v2 = [*(a1 + 32) view];
  [v2 setUserInteractionEnabled:0];

  v3 = [*(a1 + 32) interactionDelegate];
  [v3 messageEditingViewControllerDidFinishAnimatingOut:*(a1 + 32)];
}

- (void)_requestDismissal
{
  transcriptOverlayTransitionDelegate = [(CKMessageEditingViewController *)self transcriptOverlayTransitionDelegate];
  [transcriptOverlayTransitionDelegate transcriptOverlayViewControllerDidAnimateOut:self];

  interactionDelegate = [(CKMessageEditingViewController *)self interactionDelegate];
  [interactionDelegate messageEditingViewControllerRequestsDismissal:self presentKeyboard:1];
}

- (void)transcriptOverlayTapGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Transcript overlay tap gesture recognized", v6, 2u);
    }
  }

  [(CKMessageEditingViewController *)self dismissIfNoChanges];
}

- (void)messageEditingViewWritingToolsWillBegin:(id)begin
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    textEffectsCoordinator = self->_textEffectsCoordinator;
    if (textEffectsCoordinator)
    {
      [(CKTextEffectCoordinator *)textEffectsCoordinator reset];
      [(CKTextEffectCoordinator *)self->_textEffectsCoordinator setPaused:1 includingAnimators:1];
      v7 = self->_textEffectsCoordinator;

      [(CKTextEffectCoordinator *)v7 updateWithReason:@"pausing because writing tools will begin"];
    }
  }
}

- (void)messageEditingViewWritingToolsDidEnd:(id)end
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    textEffectsCoordinator = self->_textEffectsCoordinator;
    if (textEffectsCoordinator)
    {
      [(CKTextEffectCoordinator *)textEffectsCoordinator setPaused:0 includingAnimators:0];
      v7 = self->_textEffectsCoordinator;

      [(CKTextEffectCoordinator *)v7 updateWithReason:@"unpausing because writing tools did end."];
    }
  }
}

- (void)messageEditingViewConfirmButtonSelected:(id)selected
{
  selectedCopy = selected;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Confirm edit button selected", v15, 2u);
    }
  }

  currentComposition = [selectedCopy currentComposition];
  text = [currentComposition text];
  v8 = [text length];

  if (v8)
  {
    originalComposition = [selectedCopy originalComposition];
    v10 = [currentComposition hasNotBeenEdited:originalComposition];
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = currentComposition;
    }

    if (v10)
    {
      v12 = 4;
    }

    else
    {
      v12 = 3;
    }

    v13 = v11;
    interactionDelegate = [(CKMessageEditingViewController *)self interactionDelegate];
    [interactionDelegate messageEditingViewController:self confirmedEditWithComposition:v13];

    [(CKMessageEditingViewController *)self _animateOutWithState:v12];
  }

  else
  {
    originalComposition = IMLogHandleForCategory();
    if (os_log_type_enabled(originalComposition, OS_LOG_TYPE_ERROR))
    {
      [CKMessageEditingViewController messageEditingViewConfirmButtonSelected:originalComposition];
    }
  }
}

- (void)messageEditingViewRejectButtonSelected:(id)selected
{
  selectedCopy = selected;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Reject edit button selected", v6, 2u);
    }
  }

  [(CKMessageEditingViewController *)self _animateOutWithState:4];
}

- (double)messageEditingViewDismissAnimationBalloonMaxWidth
{
  interactionDelegate = [(CKMessageEditingViewController *)self interactionDelegate];
  [interactionDelegate balloonMaxWidthForMessageEditingViewController:self];
  v5 = v4;

  return v5;
}

- (UIEdgeInsets)messageEditingViewDismissAnimationContentInsets
{
  transitionContext = [(CKMessageEditingViewController *)self transitionContext];
  anchorChatItemGUID = [transitionContext anchorChatItemGUID];

  interactionDelegate = [(CKMessageEditingViewController *)self interactionDelegate];
  [interactionDelegate messageEditingViewController:self contentInsetsForChatItemGuid:anchorChatItemGUID];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (BOOL)messageEditingViewBalloonHasTail
{
  selfCopy = self;
  transitionContext = [(CKMessageEditingViewController *)self transitionContext];
  anchorChatItemGUID = [transitionContext anchorChatItemGUID];

  interactionDelegate = [(CKMessageEditingViewController *)selfCopy interactionDelegate];
  LOBYTE(selfCopy) = [interactionDelegate messageEditingViewController:selfCopy balloonHasTailForChatItemGuid:anchorChatItemGUID];

  return selfCopy;
}

- (char)messageEditingColorType
{
  selfCopy = self;
  transitionContext = [(CKMessageEditingViewController *)self transitionContext];
  anchorChatItemGUID = [transitionContext anchorChatItemGUID];

  interactionDelegate = [(CKMessageEditingViewController *)selfCopy interactionDelegate];
  LOBYTE(selfCopy) = [interactionDelegate messageEditingViewController:selfCopy colorTypeForChatItemGuid:anchorChatItemGUID];

  return selfCopy;
}

- (id)messageEditingColor
{
  transitionContext = [(CKMessageEditingViewController *)self transitionContext];
  anchorChatItemGUID = [transitionContext anchorChatItemGUID];

  interactionDelegate = [(CKMessageEditingViewController *)self interactionDelegate];
  v6 = [interactionDelegate messageEditingViewController:self colorForChatItemGuid:anchorChatItemGUID];

  return v6;
}

- (void)messageEditingViewDidUpdateBalloonViewContent:(id)content
{
  view = [(CKMessageEditingViewController *)self view];
  [view setNeedsLayout];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    textEffectsCoordinator = self->_textEffectsCoordinator;
    if (textEffectsCoordinator)
    {

      [(CKTextEffectCoordinator *)textEffectsCoordinator updateWithReason:@"message editing balloon view did update balloon view content"];
    }
  }
}

- (void)messageEditingView:(id)view didChangeTextAnimationInRange:(_NSRange)range
{
  location = range.location;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled && self->_textEffectsCoordinator)
  {
    v8 = [[CKTextEffectCoordinatorContinuationState alloc] initWithTextViewIdentifier:@"textView" locationInAttributedText:location ignoreTextViewEligibilityCheck:0];
    [(CKTextEffectCoordinator *)self->_textEffectsCoordinator resetAndContinueFromState:v8];
  }
}

- (void)_informDelegateOfUpdatedBalloonViewFrame
{
  interactionDelegate = [(CKMessageEditingViewController *)self interactionDelegate];
  balloonViewForAlignment = [(CKMessageEditingView *)self->_messageEditingView balloonViewForAlignment];
  [interactionDelegate messageEditingViewController:self didUpdateFrameForBalloonView:balloonViewForAlignment];
}

- (UIView)balloonViewForAlignment
{
  messageEditingView = [(CKMessageEditingViewController *)self messageEditingView];
  balloonViewForAlignment = [messageEditingView balloonViewForAlignment];

  return balloonViewForAlignment;
}

- (void)transcriptContentInsetsDidChange
{
  view = [(CKMessageEditingViewController *)self view];
  [view setNeedsLayout];

  view2 = [(CKMessageEditingViewController *)self view];
  [view2 layoutIfNeeded];
}

- (void)_applyProofreadingIfNecessary
{
  messageEditingView = [(CKMessageEditingViewController *)self messageEditingView];
  [messageEditingView applyGrammarCheckingIndication];

  interactionDelegate = [(CKMessageEditingViewController *)self interactionDelegate];
  v10 = [interactionDelegate proofReadingInfoForMessageEditingViewController:self];

  if ([v10 count])
  {
    transitionContext = [(CKMessageEditingViewController *)self transitionContext];
    anchorChatItemGUID = [transitionContext anchorChatItemGUID];

    v7 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69A5868]];
    if ([anchorChatItemGUID isEqualToString:v7])
    {
      v8 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69A5860]];
      if ([v8 count])
      {
        messageEditingView2 = [(CKMessageEditingViewController *)self messageEditingView];
        [messageEditingView2 underlineWithProofreadingInfo:v8];
      }
    }
  }
}

- (id)visibleTextViewIdentifiersFor:(id)for
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"textView";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)textEffectCoordinator:(id)coordinator textViewForTextViewIdentifier:(id)identifier
{
  if ([identifier isEqualToString:@"textView"])
  {
    messageEditingView = [(CKMessageEditingViewController *)self messageEditingView];
    messageEditingBalloonView = [messageEditingView messageEditingBalloonView];
    messageEditingBalloonTextView = [messageEditingBalloonView messageEditingBalloonTextView];
  }

  else
  {
    messageEditingBalloonTextView = 0;
  }

  return messageEditingBalloonTextView;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  recognizerCopy = recognizer;
  tapGestureRecognizer = [(CKMessageEditingViewController *)self tapGestureRecognizer];

  if (tapGestureRecognizer != recognizerCopy)
  {
    goto LABEL_2;
  }

  view = [touchCopy view];
  messageEditingView = [(CKMessageEditingViewController *)self messageEditingView];
  confirmButton = [messageEditingView confirmButton];
  if ([view isDescendantOfView:confirmButton])
  {

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  messageEditingView2 = [(CKMessageEditingViewController *)self messageEditingView];
  rejectButton = [messageEditingView2 rejectButton];
  v15 = [view isDescendantOfView:rejectButton];

  if (v15)
  {
    goto LABEL_6;
  }

LABEL_2:
  v9 = 1;
LABEL_7:

  return v9;
}

- (CKTranscriptOverlayTransitionDelegate)transcriptOverlayTransitionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_transcriptOverlayTransitionDelegate);

  return WeakRetained;
}

- (CKMessageEditingViewControllerInteractionDelegate)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

- (CGRect)editedMessageAchorPosition
{
  x = self->_editedMessageAchorPosition.origin.x;
  y = self->_editedMessageAchorPosition.origin.y;
  width = self->_editedMessageAchorPosition.size.width;
  height = self->_editedMessageAchorPosition.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_animateOutWithState:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_19020E000, log, OS_LOG_TYPE_ERROR, "Anchor chat item %@ has no frame in the visible chat item map for animating out. Map: %@", &v3, 0x16u);
}

- (void)_animateOutWithState:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Anchor chat item not on transition context for animate out animation. Context: %@", &v2, 0xCu);
}

@end