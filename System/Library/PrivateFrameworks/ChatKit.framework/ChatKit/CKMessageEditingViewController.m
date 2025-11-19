@interface CKMessageEditingViewController
- (BOOL)becomeFirstResponder;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)messageEditingViewBalloonHasTail;
- (CGRect)editedMessageAchorPosition;
- (CKMessageEditingViewController)initWithTransitionContext:(id)a3 conversation:(id)a4;
- (CKMessageEditingViewControllerInteractionDelegate)interactionDelegate;
- (CKTranscriptOverlayTransitionDelegate)transcriptOverlayTransitionDelegate;
- (UIEdgeInsets)messageEditingViewDismissAnimationContentInsets;
- (UIView)balloonViewForAlignment;
- (char)messageEditingColorType;
- (double)messageEditingViewDismissAnimationBalloonMaxWidth;
- (id)messageEditingColor;
- (id)textEffectCoordinator:(id)a3 textViewForTextViewIdentifier:(id)a4;
- (id)visibleTextViewIdentifiersFor:(id)a3;
- (void)_animateIn;
- (void)_animateOutWithState:(int64_t)a3;
- (void)_applyProofreadingIfNecessary;
- (void)_informDelegateOfUpdatedBalloonViewFrame;
- (void)_requestDismissal;
- (void)configureForInitialAppearance;
- (void)dismissAndRejectChanges;
- (void)dismissIfNoChanges;
- (void)messageEditingView:(id)a3 didChangeTextAnimationInRange:(_NSRange)a4;
- (void)messageEditingViewConfirmButtonSelected:(id)a3;
- (void)messageEditingViewDidUpdateBalloonViewContent:(id)a3;
- (void)messageEditingViewRejectButtonSelected:(id)a3;
- (void)messageEditingViewWritingToolsDidEnd:(id)a3;
- (void)messageEditingViewWritingToolsWillBegin:(id)a3;
- (void)modifySelectedTextByTogglingTextEffectType:(int64_t)a3;
- (void)modifySelectedTextByTogglingTextStyle:(unint64_t)a3;
- (void)transcriptContentInsetsDidChange;
- (void)transcriptOverlayTapGestureRecognized:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CKMessageEditingViewController

- (void)modifySelectedTextByTogglingTextEffectType:(int64_t)a3
{
  v4 = [(CKMessageEditingViewController *)self messageEditingView];
  [v4 modifySelectedTextByTogglingTextEffectType:a3];
}

- (void)modifySelectedTextByTogglingTextStyle:(unint64_t)a3
{
  v4 = [(CKMessageEditingViewController *)self messageEditingView];
  [v4 modifySelectedTextByTogglingTextStyle:a3];
}

- (CKMessageEditingViewController)initWithTransitionContext:(id)a3 conversation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = CKMessageEditingViewController;
  v9 = [(CKMessageEditingViewController *)&v18 init];
  v10 = v9;
  if (v9)
  {
    v9->_isInitialLoad = 1;
    objc_storeStrong(&v9->_transitionContext, a3);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v10->_editedMessageAchorPosition.origin = *MEMORY[0x1E695F058];
    v10->_editedMessageAchorPosition.size = v11;
    objc_storeStrong(&v10->_conversation, a4);
    v12 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v13 = [v12 isExpressiveTextEnabled];

    if (v13)
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
  v3 = [(CKMessageEditingViewController *)self view];
  [v3 setBackgroundColor:0];

  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isEntryViewRefreshEnabled];

  v6 = 0x1E69DD250;
  if (!v5)
  {
    v6 = 0x1E69DD298;
  }

  v7 = objc_alloc(*v6);
  v8 = [(CKMessageEditingViewController *)self view];
  [v8 bounds];
  v9 = [v7 initWithFrame:?];

  v10 = [(CKMessageEditingViewController *)self view];
  [v10 insertSubview:v9 atIndex:0];

  [(CKMessageEditingViewController *)self setTranscriptOverlayView:v9];
  v11 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_transcriptOverlayTapGestureRecognized_];
  [v11 setDelegate:self];
  [v9 addGestureRecognizer:v11];
  [(CKMessageEditingViewController *)self setTapGestureRecognizer:v11];
  v12 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v13 = [v12 isAutomaticOutgoingTranslationEnabled];

  v14 = 0;
  v15 = 0;
  if (v13)
  {
    v16 = [(CKMessageEditingViewController *)self conversation];
    v17 = [v16 chat];
    v18 = [v17 translationLanguageCode];

    if ([v18 length] && (-[CKMessageEditingViewController conversation](self, "conversation"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "chat"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isAutomaticTranslationEnabled"), v20, v19, v21))
    {
      v15 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v18];
    }

    else
    {
      v15 = 0;
    }

    v22 = [(CKMessageEditingViewController *)self conversation];
    v23 = [v22 chat];
    v24 = [v23 userTranslationLanguageCode];

    if ([v24 length] && (-[CKMessageEditingViewController conversation](self, "conversation"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "chat"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "isAutomaticTranslationEnabled"), v26, v25, v27))
    {
      v14 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v24];
    }

    else
    {
      v14 = 0;
    }
  }

  v28 = [[CKMessageEditingView alloc] initWithMessageEditingViewDelegate:self translationLanguage:v15 toTranslationLanguage:v14];
  [(CKMessageEditingView *)v28 setMessageEditingViewDelegate:self];
  v29 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v30 = [v29 isEntryViewRefreshEnabled];

  if (v30)
  {
    [v9 addSubview:v28];
  }

  else
  {
    v31 = [v9 contentView];
    [v31 addSubview:v28];
  }

  v49 = v15;
  [(CKMessageEditingViewController *)self setMessageEditingView:v28];
  v32 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v33 = [v32 isExpressiveTextEnabled];

  if (v33)
  {
    v34 = [(CKMessageEditingViewController *)self conversation];
    v35 = [v34 chat];
    v36 = [v35 supportsCapabilities:0x100000];

    v37 = [(CKMessageEditingViewController *)self messageEditingView];
    v38 = [v37 messageEditingBalloonView];
    v39 = [v38 messageEditingBalloonTextView];
    [v39 setExpressiveTextEnabled:v36];
  }

  v40 = [CKMentionsController alloc];
  v41 = [(CKMessageEditingViewController *)self messageEditingView];
  v42 = [v41 messageEditingBalloonView];
  v43 = [v42 messageEditingBalloonTextView];
  v44 = [(CKMessageEditingViewController *)self conversation];
  v45 = [(CKMentionsController *)v40 initWithEntryTextView:v43 conversation:v44];
  [(CKMessageEditingViewController *)self setMentionsController:v45];

  v46 = [(CKMessageEditingViewController *)self mentionsController];
  [v46 deferredSetup];

  v47 = [(CKMessageEditingViewController *)self view];
  [v47 setNeedsLayout];

  v48 = [(CKMessageEditingViewController *)self view];
  [v48 layoutIfNeeded];
}

- (void)viewDidLayoutSubviews
{
  v61.receiver = self;
  v61.super_class = CKMessageEditingViewController;
  [(CKMessageEditingViewController *)&v61 viewDidLayoutSubviews];
  v3 = [(CKMessageEditingViewController *)self view];
  [v3 bounds];
  v5 = v4;
  y = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CKMessageEditingViewController *)self messageEditingView];
  [v12 frame];
  v58 = v14;
  v59 = v13;
  v56 = v16;
  v57 = v15;

  v17 = [(CKMessageEditingViewController *)self transcriptOverlayView];
  [v17 setFrame:{v5, y, v9, v11}];

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

  v30 = [(CKMessageEditingViewController *)self interactionDelegate];
  [v30 transcriptContentInsetsForMessageEditingViewController:self];
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
  v42 = [(CKMessageEditingViewController *)self messageEditingView];
  [v42 sizeThatFits:{v9, v11}];
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
  v50 = [(CKMessageEditingViewController *)self messageEditingView];
  [v50 setFrame:{v20, v47, v9, v49}];

  v51 = [(CKMessageEditingViewController *)self messageEditingView];
  [v51 frame];
  v65.origin.y = v58;
  v65.origin.x = v59;
  v65.size.height = v56;
  v65.size.width = v57;
  if (CGRectEqualToRect(v64, v65))
  {
  }

  else
  {
    v52 = [(CKMessageEditingViewController *)self messageEditingView];
    v53 = [v52 firstLayoutPassCompleted];

    if (v53)
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
  v2 = [(CKMessageEditingViewController *)self messageEditingView];
  v3 = [v2 becomeFirstResponder];

  return v3;
}

- (void)configureForInitialAppearance
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a2 visibleChatItemToFrameMap];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_19020E000, a3, OS_LOG_TYPE_ERROR, "Anchor chat item %@ has no frame in the visible chat item map for inital layout. Map: %@", &v6, 0x16u);
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CKMessageEditingViewController;
  [(CKMessageEditingViewController *)&v5 viewDidAppear:a3];
  [(CKMessageEditingViewController *)self _animateIn];
  v4 = [(CKMessageEditingViewController *)self mentionsController];
  [v4 checkForMentions];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = CKMessageEditingViewController;
  [(CKMessageEditingViewController *)&v17 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
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
      if (v7)
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __85__CKMessageEditingViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
        v11[3] = &unk_1E72F3B98;
        v12 = v9;
        objc_copyWeak(&v13, &location);
        [v7 animateAlongsideTransition:v11 completion:0];
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
  v3 = [(CKMessageEditingViewController *)self messageEditingView];
  v4 = [v3 currentComposition];

  v5 = [(CKMessageEditingViewController *)self messageEditingView];
  v6 = [v5 originalComposition];

  LODWORD(v5) = [v4 isPlainTextEqual:v6];
  v7 = IMOSLoggingEnabled();
  if (v5)
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
  v3 = [(CKMessageEditingViewController *)self transcriptOverlayView];

  if (v3)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    [v4 messageEditingAnimateInDuration];
    v6 = v5;

    v7 = +[CKUIBehavior sharedBehaviors];
    [v7 messageEditingAnimateInDamping];
    v9 = v8;

    v10 = [(CKMessageEditingViewController *)self transcriptOverlayTransitionDelegate];
    [v10 transcriptOverlayViewControllerWillAnimateIn:self];

    v11 = [(CKMessageEditingViewController *)self splitViewController];
    LOBYTE(v10) = [v11 isCollapsed];
    v12 = [(CKMessageEditingViewController *)self splitViewController];
    v13 = v12;
    if (v10)
    {
      [v12 masterViewController];
    }

    else
    {
      [v12 detailViewController];
    }
    v14 = ;

    v15 = [v14 navigationBar];
    [v15 setNeedsLayout];

    v16 = [v14 navigationBar];
    [v16 layoutIfNeeded];

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

- (void)_animateOutWithState:(int64_t)a3
{
  v5 = [(CKMessageEditingViewController *)self interactionDelegate];
  [v5 messageEditingViewControllerWillAnimateOut:self];

  [(CKMessageEditingViewController *)self setAnimatingOut:1];
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v7 = *MEMORY[0x1E695F058];
  v8 = *(MEMORY[0x1E695F058] + 8);
  v9 = *(MEMORY[0x1E695F058] + 16);
  v10 = *(MEMORY[0x1E695F058] + 24);
  v11 = [(CKMessageEditingViewController *)self transitionContext];
  v12 = v11;
  if (!IsReduceMotionEnabled)
  {
    v13 = [v11 anchorChatItemGUID];
    if ([v13 length])
    {
      v14 = [(CKMessageEditingViewController *)self transcriptOverlayTransitionDelegate];
      v15 = [v14 updatedFrameMapForTranscriptOverlayViewController:self];

      v16 = [v15 objectForKeyedSubscript:v13];
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
          [(CKMessageEditingViewController *)v13 _animateOutWithState:v15, v22];
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

  if (a3 == 4)
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

    v24 = [(CKMessageEditingViewController *)self messageEditingView];
    [v24 resetMessageToOriginalContent];
  }

  v25 = +[CKUIBehavior sharedBehaviors];
  [v25 messageEditingAnimateOutDuration];
  v27 = v26;

  v28 = +[CKUIBehavior sharedBehaviors];
  [v28 messageEditingAnimateOutDamping];
  v30 = v29;

  v31 = [(CKMessageEditingViewController *)self transcriptOverlayTransitionDelegate];
  [v31 transcriptOverlayViewControllerWillAnimateOut:self];

  v32 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v33 = [v32 isEntryViewRefreshEnabled];

  if (v33)
  {
    v34 = [(CKMessageEditingViewController *)self messageEditingColor];
  }

  else
  {
    v34 = 0;
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
  v46 = a3;
  v35 = v34;
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
  v3 = [(CKMessageEditingViewController *)self transcriptOverlayTransitionDelegate];
  [v3 transcriptOverlayViewControllerDidAnimateOut:self];

  v4 = [(CKMessageEditingViewController *)self interactionDelegate];
  [v4 messageEditingViewControllerRequestsDismissal:self presentKeyboard:1];
}

- (void)transcriptOverlayTapGestureRecognized:(id)a3
{
  v4 = a3;
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

- (void)messageEditingViewWritingToolsWillBegin:(id)a3
{
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isExpressiveTextEnabled];

  if (v5)
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

- (void)messageEditingViewWritingToolsDidEnd:(id)a3
{
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isExpressiveTextEnabled];

  if (v5)
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

- (void)messageEditingViewConfirmButtonSelected:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Confirm edit button selected", v15, 2u);
    }
  }

  v6 = [v4 currentComposition];
  v7 = [v6 text];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [v4 originalComposition];
    v10 = [v6 hasNotBeenEdited:v9];
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v6;
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
    v14 = [(CKMessageEditingViewController *)self interactionDelegate];
    [v14 messageEditingViewController:self confirmedEditWithComposition:v13];

    [(CKMessageEditingViewController *)self _animateOutWithState:v12];
  }

  else
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CKMessageEditingViewController messageEditingViewConfirmButtonSelected:v9];
    }
  }
}

- (void)messageEditingViewRejectButtonSelected:(id)a3
{
  v4 = a3;
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
  v3 = [(CKMessageEditingViewController *)self interactionDelegate];
  [v3 balloonMaxWidthForMessageEditingViewController:self];
  v5 = v4;

  return v5;
}

- (UIEdgeInsets)messageEditingViewDismissAnimationContentInsets
{
  v3 = [(CKMessageEditingViewController *)self transitionContext];
  v4 = [v3 anchorChatItemGUID];

  v5 = [(CKMessageEditingViewController *)self interactionDelegate];
  [v5 messageEditingViewController:self contentInsetsForChatItemGuid:v4];
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
  v2 = self;
  v3 = [(CKMessageEditingViewController *)self transitionContext];
  v4 = [v3 anchorChatItemGUID];

  v5 = [(CKMessageEditingViewController *)v2 interactionDelegate];
  LOBYTE(v2) = [v5 messageEditingViewController:v2 balloonHasTailForChatItemGuid:v4];

  return v2;
}

- (char)messageEditingColorType
{
  v2 = self;
  v3 = [(CKMessageEditingViewController *)self transitionContext];
  v4 = [v3 anchorChatItemGUID];

  v5 = [(CKMessageEditingViewController *)v2 interactionDelegate];
  LOBYTE(v2) = [v5 messageEditingViewController:v2 colorTypeForChatItemGuid:v4];

  return v2;
}

- (id)messageEditingColor
{
  v3 = [(CKMessageEditingViewController *)self transitionContext];
  v4 = [v3 anchorChatItemGUID];

  v5 = [(CKMessageEditingViewController *)self interactionDelegate];
  v6 = [v5 messageEditingViewController:self colorForChatItemGuid:v4];

  return v6;
}

- (void)messageEditingViewDidUpdateBalloonViewContent:(id)a3
{
  v4 = [(CKMessageEditingViewController *)self view];
  [v4 setNeedsLayout];

  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isExpressiveTextEnabled];

  if (v6)
  {
    textEffectsCoordinator = self->_textEffectsCoordinator;
    if (textEffectsCoordinator)
    {

      [(CKTextEffectCoordinator *)textEffectsCoordinator updateWithReason:@"message editing balloon view did update balloon view content"];
    }
  }
}

- (void)messageEditingView:(id)a3 didChangeTextAnimationInRange:(_NSRange)a4
{
  location = a4.location;
  v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v7 = [v6 isExpressiveTextEnabled];

  if (v7 && self->_textEffectsCoordinator)
  {
    v8 = [[CKTextEffectCoordinatorContinuationState alloc] initWithTextViewIdentifier:@"textView" locationInAttributedText:location ignoreTextViewEligibilityCheck:0];
    [(CKTextEffectCoordinator *)self->_textEffectsCoordinator resetAndContinueFromState:v8];
  }
}

- (void)_informDelegateOfUpdatedBalloonViewFrame
{
  v4 = [(CKMessageEditingViewController *)self interactionDelegate];
  v3 = [(CKMessageEditingView *)self->_messageEditingView balloonViewForAlignment];
  [v4 messageEditingViewController:self didUpdateFrameForBalloonView:v3];
}

- (UIView)balloonViewForAlignment
{
  v2 = [(CKMessageEditingViewController *)self messageEditingView];
  v3 = [v2 balloonViewForAlignment];

  return v3;
}

- (void)transcriptContentInsetsDidChange
{
  v3 = [(CKMessageEditingViewController *)self view];
  [v3 setNeedsLayout];

  v4 = [(CKMessageEditingViewController *)self view];
  [v4 layoutIfNeeded];
}

- (void)_applyProofreadingIfNecessary
{
  v3 = [(CKMessageEditingViewController *)self messageEditingView];
  [v3 applyGrammarCheckingIndication];

  v4 = [(CKMessageEditingViewController *)self interactionDelegate];
  v10 = [v4 proofReadingInfoForMessageEditingViewController:self];

  if ([v10 count])
  {
    v5 = [(CKMessageEditingViewController *)self transitionContext];
    v6 = [v5 anchorChatItemGUID];

    v7 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69A5868]];
    if ([v6 isEqualToString:v7])
    {
      v8 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69A5860]];
      if ([v8 count])
      {
        v9 = [(CKMessageEditingViewController *)self messageEditingView];
        [v9 underlineWithProofreadingInfo:v8];
      }
    }
  }
}

- (id)visibleTextViewIdentifiersFor:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"textView";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)textEffectCoordinator:(id)a3 textViewForTextViewIdentifier:(id)a4
{
  if ([a4 isEqualToString:@"textView"])
  {
    v5 = [(CKMessageEditingViewController *)self messageEditingView];
    v6 = [v5 messageEditingBalloonView];
    v7 = [v6 messageEditingBalloonTextView];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CKMessageEditingViewController *)self tapGestureRecognizer];

  if (v8 != v7)
  {
    goto LABEL_2;
  }

  v10 = [v6 view];
  v11 = [(CKMessageEditingViewController *)self messageEditingView];
  v12 = [v11 confirmButton];
  if ([v10 isDescendantOfView:v12])
  {

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v13 = [(CKMessageEditingViewController *)self messageEditingView];
  v14 = [v13 rejectButton];
  v15 = [v10 isDescendantOfView:v14];

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