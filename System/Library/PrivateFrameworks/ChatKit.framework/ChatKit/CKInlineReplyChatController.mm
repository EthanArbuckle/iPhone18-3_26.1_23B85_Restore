@interface CKInlineReplyChatController
- (BOOL)becomeFirstResponder;
- (BOOL)isModal;
- (BOOL)isUnanimated;
- (BOOL)messageEntryViewWidth:(double *)a3 andOffset:(double *)a4;
- (CGRect)_initialFrameForCollectionView;
- (CGRect)_initialFrameForGradientReferenceView;
- (CGRect)gradientFrameWithInsets:(UIEdgeInsets)a3;
- (CGSize)contentSizeForPinning;
- (CKChatController)parentChatController;
- (CKInlineReplyChatController)initWithConversation:(id)a3 threadIdentifier:(id)a4 threadOriginator:(id)a5 transitionContext:(id)a6 originatorMessageSummaryInfo:(id)a7 parentChatController:(id)a8;
- (CKInlineReplyInteractionDelegate)interactionDelegate;
- (CKTranscriptOverlayTransitionDelegate)transcriptOverlayTransitionDelegate;
- (UIEdgeInsets)_contentInsetForSendAnimation;
- (UIEdgeInsets)calculateTranscriptMarginInsets;
- (UIEdgeInsets)calculateTranscriptSafeAreaInsets;
- (UIEdgeInsets)navigationBarInsetsWithoutPalette;
- (UIEdgeInsets)transcriptContentInsetsForMessageEditingViewController:(id)a3;
- (double)accessoryViewHeight;
- (double)throwAnimationFinalFrameOffset:(id)a3;
- (double)transcriptCollectionViewController:(id)a3 targetAlphaForChatItem:(id)a4;
- (double)visibleInputViewHeight;
- (id)_defaultTranscriptNavBarAppearance;
- (id)_navigationBarAppearanceWithKeyline:(BOOL)a3;
- (id)_visibleGUIDs;
- (id)contextualChatItemsForFullScreenBalloonViewController:(id)a3;
- (id)contextualChatItemsForTapbackPicker;
- (id)inputAccessoryView;
- (id)inputController;
- (id)inputViewController;
- (id)parentViewControllerForPluginViewControllerInMessageEntryView:(id)a3;
- (int64_t)targetFirstResponder;
- (void)_animateIn:(BOOL)a3;
- (void)_animateOutWithCompletion:(id)a3;
- (void)_didSendCompositionInConversation:(id)a3;
- (void)_doneButtonPressed;
- (void)_requestDismissal;
- (void)_setConversationDeferredSetup;
- (void)_setInitialScrollPositionIfNecessary;
- (void)_updateThreadOriginatorIMMessage:(id)a3 byAddingReplyWithPartCount:(int64_t)a4 toThreadIdentifier:(id)a5;
- (void)addOrRemoveEntryViewIfNeeded;
- (void)appCardDidChangeEntryViewAlignmentHeight:(double)a3 animated:(BOOL)a4;
- (void)applyInitialContextToCollectionViewIfNeeded;
- (void)collectMetricsForSending:(id)a3;
- (void)dismissControllerWithCompletion:(id)a3;
- (void)invalidateChatItemLayoutForTraitCollectionChangeIfNeeded:(id)a3;
- (void)messageEntryView:(id)a3 didMoveToWindow:(id)a4;
- (void)messageEntryViewDidBeginEditingNotAlreadyActive:(id)a3;
- (void)messageEntryViewSendLaterPluginInfoUpdated:(id)a3;
- (void)reloadEntryViewIfNeeded;
- (void)reloadInputViews;
- (void)sendMessage:(id)a3 forConversation:(id)a4 newComposition:(BOOL)a5;
- (void)sendMessage:(id)a3 forConversation:(id)a4 onService:(id)a5 newComposition:(BOOL)a6;
- (void)setIsShowingPreview:(BOOL)a3;
- (void)setShowNavbarKeyline:(BOOL)a3;
- (void)setTargetFirstResponder:(int64_t)a3;
- (void)setUpEntryViewLayoutConstraintsIfNecessary;
- (void)stageAssetArchive:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5;
- (void)tapGestureRecognized:(id)a3;
- (void)transcriptCollectionViewController:(id)a3 collectionViewContentSizeDidChange:(CGSize)a4;
- (void)transcriptCollectionViewController:(id)a3 didScroll:(CGPoint)a4;
- (void)transcriptCollectionViewControllerDidSetChatItems:(id)a3;
- (void)transcriptCollectionViewControllerRestingStateDidChange:(id)a3;
- (void)updateActiveEntryViewPositioningGuide;
- (void)updateScrollGeometryForReason:(id)a3 withDuration:(double)a4 animationCurve:(int64_t)a5;
- (void)updateScrollGeometryWithoutAnimationForReason:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation CKInlineReplyChatController

- (CKInlineReplyChatController)initWithConversation:(id)a3 threadIdentifier:(id)a4 threadOriginator:(id)a5 transitionContext:(id)a6 originatorMessageSummaryInfo:(id)a7 parentChatController:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v22.receiver = self;
  v22.super_class = CKInlineReplyChatController;
  v19 = [(CKChatController *)&v22 initWithConversation:a3];
  v20 = v19;
  if (v19)
  {
    [(CKInlineReplyChatController *)v19 setParentChatController:v18];
    [(CKInlineReplyChatController *)v20 setIsInitialLoad:1];
    [(CKInlineReplyChatController *)v20 setIsInitialSizing:1];
    [(CKInlineReplyChatController *)v20 setThreadOriginator:v15];
    [(CKInlineReplyChatController *)v20 setThreadIdentifier:v14];
    [(CKInlineReplyChatController *)v20 setTransitionContext:v16];
    [(CKScrollViewController *)v20 setEnableContentPinning:1];
    v20->_showNavbarKeyline = 1;
    objc_storeStrong(&v20->_originatorMessageSummaryInfo, a7);
  }

  return v20;
}

- (BOOL)isModal
{
  v2 = [(CKInlineReplyChatController *)self transitionContext];
  v3 = [v2 wantsModalPresentation];

  return v3;
}

- (BOOL)isUnanimated
{
  v2 = [(CKInlineReplyChatController *)self transitionContext];
  v3 = [v2 wantsUnanimatedPresentation];

  return v3;
}

- (void)_doneButtonPressed
{
  if ([(CKInlineReplyChatController *)self isModal])
  {

    [(CKChatController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)dismissControllerWithCompletion:(id)a3
{
  v4 = a3;
  if ([(CKInlineReplyChatController *)self isModal])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63__CKInlineReplyChatController_dismissControllerWithCompletion___block_invoke;
    v8[3] = &unk_1E72EBDB8;
    v5 = &v9;
    v9 = v4;
    [(CKChatController *)self dismissViewControllerAnimated:1 completion:v8];
LABEL_5:

    goto LABEL_6;
  }

  if (![(CKInlineReplyChatController *)self animatingOut])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __63__CKInlineReplyChatController_dismissControllerWithCompletion___block_invoke_2;
    v6[3] = &unk_1E72ED1F0;
    v5 = &v7;
    v7 = v4;
    [(CKInlineReplyChatController *)self _animateOutWithCompletion:v6];
    goto LABEL_5;
  }

LABEL_6:
}

uint64_t __63__CKInlineReplyChatController_dismissControllerWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t __63__CKInlineReplyChatController_dismissControllerWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (double)accessoryViewHeight
{
  v2 = [(CKChatController *)self entryView];
  v3 = v2;
  if (v2)
  {
    [v2 frame];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (void)updateScrollGeometryWithoutAnimationForReason:(id)a3
{
  v4 = a3;
  v5 = [(CKChatController *)self entryView];
  [v5 frame];
  [(CKScrollViewController *)self setContentPinningThreshold:CGRectGetHeight(v7)];

  v6.receiver = self;
  v6.super_class = CKInlineReplyChatController;
  [(CKScrollViewController *)&v6 updateScrollGeometryWithoutAnimationForReason:v4];
}

- (void)updateScrollGeometryForReason:(id)a3 withDuration:(double)a4 animationCurve:(int64_t)a5
{
  v8 = a3;
  v9 = [(CKChatController *)self entryView];
  [v9 frame];
  [(CKScrollViewController *)self setContentPinningThreshold:CGRectGetHeight(v11)];

  v10.receiver = self;
  v10.super_class = CKInlineReplyChatController;
  [(CKScrollViewController *)&v10 updateScrollGeometryForReason:v8 withDuration:a5 animationCurve:a4];
}

- (CGSize)contentSizeForPinning
{
  v2 = [(CKChatController *)self collectionView];
  v3 = [v2 collectionViewLayout];
  [v3 collectionViewContentSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (UIEdgeInsets)navigationBarInsetsWithoutPalette
{
  v2 = [(CKInlineReplyChatController *)self view];
  [v2 safeAreaInsets];
  v4 = v3;

  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v8 = v4;
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v8;
  return result;
}

- (CGRect)gradientFrameWithInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  if ([(CKInlineReplyChatController *)self isModal])
  {
    v25.receiver = self;
    v25.super_class = CKInlineReplyChatController;
    [(CKCoreChatController *)&v25 gradientFrameWithInsets:top, left, bottom, right];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v16 = [(CKInlineReplyChatController *)self interactionDelegate];
    [v16 inlineReplyController:self gradientFrameWithInsets:{top, left, bottom, right}];
    v9 = v17;
    v11 = v18;
    v13 = v19;
    v15 = v20;
  }

  v21 = v9;
  v22 = v11;
  v23 = v13;
  v24 = v15;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)_setConversationDeferredSetup
{
  v4.receiver = self;
  v4.super_class = CKInlineReplyChatController;
  [(CKChatController *)&v4 _setConversationDeferredSetup];
  v3 = [(CKCoreChatController *)self collectionViewController];
  [v3 setTranscriptBackgroundColor:0];
}

- (id)inputAccessoryView
{
  if ([(CKInlineReplyChatController *)self isModal])
  {
    v5.receiver = self;
    v5.super_class = CKInlineReplyChatController;
    v3 = [(CKChatController *)&v5 inputAccessoryView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)inputViewController
{
  if ([(CKInlineReplyChatController *)self isModal])
  {
    v5.receiver = self;
    v5.super_class = CKInlineReplyChatController;
    v3 = [(CKChatController *)&v5 inputViewController];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)reloadInputViews
{
  if ([(CKInlineReplyChatController *)self isModal])
  {
    v4.receiver = self;
    v4.super_class = CKInlineReplyChatController;
    [(CKInlineReplyChatController *)&v4 reloadInputViews];
  }

  else
  {
    v3 = [(CKInlineReplyChatController *)self interactionDelegate];
    [v3 inlineReplyControllerRequestsReloadInputViews:self];
  }
}

- (id)inputController
{
  if ([(CKInlineReplyChatController *)self isModal])
  {
    v6.receiver = self;
    v6.super_class = CKInlineReplyChatController;
    v3 = [(CKCoreChatController *)&v6 inputController];
  }

  else
  {
    v4 = [(CKInlineReplyChatController *)self interactionDelegate];
    v3 = [v4 inlineReplyControllerChatInputController:self];
  }

  return v3;
}

- (void)reloadEntryViewIfNeeded
{
  if ([(CKInlineReplyChatController *)self isModal])
  {
    v3.receiver = self;
    v3.super_class = CKInlineReplyChatController;
    [(CKChatController *)&v3 reloadEntryViewIfNeeded];
  }
}

- (void)addOrRemoveEntryViewIfNeeded
{
  if ([(CKInlineReplyChatController *)self isModal])
  {
    v3.receiver = self;
    v3.super_class = CKInlineReplyChatController;
    [(CKChatController *)&v3 addOrRemoveEntryViewIfNeeded];
  }
}

- (void)setUpEntryViewLayoutConstraintsIfNecessary
{
  if ([(CKInlineReplyChatController *)self isModal])
  {
    v3.receiver = self;
    v3.super_class = CKInlineReplyChatController;
    [(CKChatController *)&v3 setUpEntryViewLayoutConstraintsIfNecessary];
  }
}

- (BOOL)becomeFirstResponder
{
  v3 = [(CKInlineReplyChatController *)self interactionDelegate];
  if (v3 && (v4 = v3, v5 = [(CKInlineReplyChatController *)self isModal], v4, !v5))
  {
    v7 = [(CKInlineReplyChatController *)self interactionDelegate];
    v8 = [v7 inlineReplyControllerBecomeFirstResponder:self];

    return v8;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CKInlineReplyChatController;
    return [(CKChatController *)&v9 becomeFirstResponder];
  }
}

- (void)setTargetFirstResponder:(int64_t)a3
{
  v5 = [(CKInlineReplyChatController *)self interactionDelegate];
  if (v5 && (v6 = v5, v7 = [(CKInlineReplyChatController *)self isModal], v6, !v7))
  {
    v8 = [(CKInlineReplyChatController *)self interactionDelegate];
    [v8 inlineReplyController:self setTargetFirstResponder:a3];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CKInlineReplyChatController;
    [(CKChatController *)&v9 setTargetFirstResponder:a3];
  }
}

- (int64_t)targetFirstResponder
{
  v3 = [(CKInlineReplyChatController *)self interactionDelegate];
  if (v3 && (v4 = v3, v5 = [(CKInlineReplyChatController *)self isModal], v4, !v5))
  {
    v7 = [(CKInlineReplyChatController *)self interactionDelegate];
    v8 = [v7 inlineReplyControllerTargetFirstResponder:self];

    return v8;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CKInlineReplyChatController;
    return [(CKChatController *)&v9 targetFirstResponder];
  }
}

- (BOOL)messageEntryViewWidth:(double *)a3 andOffset:(double *)a4
{
  v7 = [(CKInlineReplyChatController *)self interactionDelegate];
  if (v7 && (v8 = v7, v9 = [(CKInlineReplyChatController *)self isModal], v8, !v9))
  {
    v11 = [(CKInlineReplyChatController *)self interactionDelegate];
    v12 = [v11 inlineReplyController:self containerWidth:a3 offset:a4];

    return v12;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CKInlineReplyChatController;
    return [(CKChatController *)&v13 messageEntryViewWidth:a3 andOffset:a4];
  }
}

- (void)setIsShowingPreview:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = CKInlineReplyChatController;
  [(CKChatController *)&v6 setIsShowingPreview:?];
  v5 = [(CKInlineReplyChatController *)self interactionDelegate];
  [v5 inlineReplyController:self setIsShowingPreview:v3];
}

- (void)messageEntryViewSendLaterPluginInfoUpdated:(id)a3
{
  v4 = a3;
  v5 = [(CKInlineReplyChatController *)self threadOriginator];
  v6 = [v5 scheduleType];

  if (v6 == 2)
  {
    [(CKInlineReplyChatController *)self dismissController];
  }

  v7.receiver = self;
  v7.super_class = CKInlineReplyChatController;
  [(CKChatController *)&v7 messageEntryViewSendLaterPluginInfoUpdated:v4];
}

- (void)messageEntryViewDidBeginEditingNotAlreadyActive:(id)a3
{
  v4 = a3;
  if ([(CKInlineReplyChatController *)self isModal])
  {
    v6 = self;
    v5 = &v6;
LABEL_7:
    v5->super_class = CKInlineReplyChatController;
    [(objc_super *)v5 messageEntryViewDidBeginEditingNotAlreadyActive:v4, v6];
    goto LABEL_8;
  }

  if ([(CKInlineReplyChatController *)self targetFirstResponder]== 1)
  {
    [(CKInlineReplyChatController *)self setTargetFirstResponder:0];
  }

  if (![(CKInlineReplyChatController *)self animatingIn])
  {
    v7.receiver = self;
    v5 = &v7;
    goto LABEL_7;
  }

LABEL_8:
}

- (void)updateActiveEntryViewPositioningGuide
{
  if ([(CKInlineReplyChatController *)self isModal])
  {
    v4.receiver = self;
    v4.super_class = CKInlineReplyChatController;
    [(CKChatController *)&v4 updateActiveEntryViewPositioningGuide];
  }

  v3 = [(CKInlineReplyChatController *)self interactionDelegate];
  [v3 updateActiveEntryViewPositioningGuideForInlineReplyController:self];
}

- (void)messageEntryView:(id)a3 didMoveToWindow:(id)a4
{
  v9.receiver = self;
  v9.super_class = CKInlineReplyChatController;
  v6 = a4;
  v7 = a3;
  [(CKChatController *)&v9 messageEntryView:v7 didMoveToWindow:v6];
  v8 = [(CKInlineReplyChatController *)self interactionDelegate:v9.receiver];
  [v8 inlineReplyController:self messageEntryView:v7 didMoveToWindow:v6];
}

- (UIEdgeInsets)transcriptContentInsetsForMessageEditingViewController:(id)a3
{
  v4 = a3;
  if ([(CKInlineReplyChatController *)self isModal])
  {
    v23.receiver = self;
    v23.super_class = CKInlineReplyChatController;
    [(CKChatController *)&v23 transcriptContentInsetsForMessageEditingViewController:v4];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v13 = [(CKInlineReplyChatController *)self interactionDelegate];
    [v13 parentTranscriptContentInsetsForInlineReplyController:self];
    v6 = v14;
    v8 = v15;
    v12 = v16;
    v22.receiver = self;
    v22.super_class = CKInlineReplyChatController;
    [(CKChatController *)&v22 transcriptContentInsetsForMessageEditingViewController:v4];
    v10 = v17;
  }

  v18 = v6;
  v19 = v8;
  v20 = v10;
  v21 = v12;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

- (void)appCardDidChangeEntryViewAlignmentHeight:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  v8.receiver = self;
  v8.super_class = CKInlineReplyChatController;
  [CKChatController appCardDidChangeEntryViewAlignmentHeight:sel_appCardDidChangeEntryViewAlignmentHeight_animated_ animated:?];
  v7 = [(CKInlineReplyChatController *)self interactionDelegate];
  [v7 inlineReplyController:self appCardDidChangeEntryViewAlignmentHeight:v4 animated:a3];
}

- (double)visibleInputViewHeight
{
  if ([(CKInlineReplyChatController *)self isModal])
  {
    v7.receiver = self;
    v7.super_class = CKInlineReplyChatController;
    [(CKChatController *)&v7 visibleInputViewHeight];
  }

  else
  {
    v4 = [(CKInlineReplyChatController *)self interactionDelegate];
    [v4 visibleInputViewHeightForInlineReplyController:self];
    v6 = v5;

    return v6;
  }

  return result;
}

- (UIEdgeInsets)_contentInsetForSendAnimation
{
  v18.receiver = self;
  v18.super_class = CKInlineReplyChatController;
  [(CKChatController *)&v18 _contentInsetForSendAnimation];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CKChatController *)self collectionView];
  [v11 contentInset];
  v13 = v4 + v12 - v4;

  v14 = v13;
  v15 = v6;
  v16 = v8;
  v17 = v10;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (double)throwAnimationFinalFrameOffset:(id)a3
{
  v3 = [(CKInlineReplyChatController *)self view];
  [v3 safeAreaInsets];
  v5 = v4;

  return v5;
}

- (id)contextualChatItemsForTapbackPicker
{
  v2 = [(CKInlineReplyChatController *)self parentChatController];
  v3 = [v2 collectionViewController];
  v4 = [v3 chatItems];

  return v4;
}

- (id)contextualChatItemsForFullScreenBalloonViewController:(id)a3
{
  v3 = [(CKInlineReplyChatController *)self parentChatController];
  v4 = [v3 collectionViewController];
  v5 = [v4 chatItems];

  return v5;
}

- (void)invalidateChatItemLayoutForTraitCollectionChangeIfNeeded:(id)a3
{
  v4 = a3;
  if ([(CKViewController *)self deferredAppeared])
  {
    v6.receiver = self;
    v6.super_class = CKInlineReplyChatController;
    [(CKCoreChatController *)&v6 invalidateChatItemLayoutForTraitCollectionChangeIfNeeded:v4];
  }

  else if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Ignoring chat item layout change, animating in", buf, 2u);
    }
  }
}

- (void)sendMessage:(id)a3 forConversation:(id)a4 onService:(id)a5 newComposition:(BOOL)a6
{
  v6 = a6;
  v24 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [(CKInlineReplyChatController *)self threadIdentifier];
      v20 = 136315394;
      v21 = "[CKInlineReplyChatController sendMessage:forConversation:onService:newComposition:]";
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "%s Sending reply with thread identifier %@", &v20, 0x16u);
    }
  }

  v15 = [(CKInlineReplyChatController *)self threadIdentifier];
  [v10 setThreadIdentifier:v15];
  v16 = [(CKInlineReplyChatController *)self threadOriginator];
  v17 = [(CKInlineReplyChatController *)self _imMessageForIMMessageItem:v16];
  v18 = [v10 messageParts];
  v19 = [v18 count];

  [(CKInlineReplyChatController *)self _updateThreadOriginatorIMMessage:v17 byAddingReplyWithPartCount:v19 toThreadIdentifier:v15];
  [v11 sendMessage:v10 onService:v12 newComposition:v6];
  [(CKInlineReplyChatController *)self collectMetricsForSending:v10];
}

- (void)sendMessage:(id)a3 forConversation:(id)a4 newComposition:(BOOL)a5
{
  v5 = a5;
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [(CKInlineReplyChatController *)self threadIdentifier];
      v17 = 136315394;
      v18 = "[CKInlineReplyChatController sendMessage:forConversation:newComposition:]";
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "%s Sending reply with thread identifier %@", &v17, 0x16u);
    }
  }

  v12 = [(CKInlineReplyChatController *)self threadIdentifier];
  [v8 setThreadIdentifier:v12];
  v13 = [(CKInlineReplyChatController *)self threadOriginator];
  v14 = [(CKInlineReplyChatController *)self _imMessageForIMMessageItem:v13];
  v15 = [v8 messageParts];
  v16 = [v15 count];

  [(CKInlineReplyChatController *)self _updateThreadOriginatorIMMessage:v14 byAddingReplyWithPartCount:v16 toThreadIdentifier:v12];
  [v8 setThreadOriginator:v14];
  [v9 sendMessage:v8 newComposition:v5];
  [(CKInlineReplyChatController *)self collectMetricsForSending:v8];
}

- (void)_updateThreadOriginatorIMMessage:(id)a3 byAddingReplyWithPartCount:(int64_t)a4 toThreadIdentifier:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = v8;
  if (v7 && [v8 length])
  {
    IMMessageThreadIdentifierGetComponents();
    v10 = 0;
    v11 = 0;
    if ([v11 length])
    {
      v12 = [v7 replyCountsByPart];
      v13 = [v12 objectForKeyedSubscript:v11];
      v14 = [v13 integerValue];
      v15 = [v12 mutableCopy];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v18 = v17;

      v19 = [MEMORY[0x1E696AD98] numberWithInteger:v14 + a4];
      [v18 setObject:v19 forKeyedSubscript:v11];

      v20 = [v18 copy];
      [v7 setReplyCountsByPart:v20];
    }
  }
}

- (void)_didSendCompositionInConversation:(id)a3
{
  v5.receiver = self;
  v5.super_class = CKInlineReplyChatController;
  [(CKChatController *)&v5 _didSendCompositionInConversation:a3];
  v4 = [(CKInlineReplyChatController *)self interactionDelegate];
  [v4 inlineReplyControllerDidSendComposition:self];
}

- (void)collectMetricsForSending:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(CKInlineReplyChatController *)self originatorMessageSummaryInfo];
  v4 = [v3 __im_associatedMessageContentType];
  [v4 integerValue];

  v5 = [MEMORY[0x1E69A8168] sharedInstance];
  v6 = *MEMORY[0x1E69A7408];
  v9 = @"originatorType";
  v7 = IMMetricsValueForAssociatedMessageContentType();
  v10[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v5 trackEvent:v6 withDictionary:v8];
}

- (void)tapGestureRecognized:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKInlineReplyChatController;
  [(CKChatController *)&v4 tapGestureRecognized:a3];
  [(CKInlineReplyChatController *)self dismissController];
}

- (id)_defaultTranscriptNavBarAppearance
{
  v2 = [(CKInlineReplyChatController *)self navigationController];
  v3 = [v2 navigationBar];
  v4 = [v3 standardAppearance];
  v5 = [v4 copy];

  [v5 configureWithTransparentBackground];

  return v5;
}

- (id)_navigationBarAppearanceWithKeyline:(BOOL)a3
{
  v3 = a3;
  v4 = [(CKInlineReplyChatController *)self _defaultTranscriptNavBarAppearance];
  v5 = v4;
  if (v3)
  {
    [v4 configureWithDefaultShadow];
  }

  else
  {
    [v4 configureWithoutShadow];
  }

  return v5;
}

- (void)setShowNavbarKeyline:(BOOL)a3
{
  if (self->_showNavbarKeyline != a3)
  {
    self->_showNavbarKeyline = a3;
  }
}

- (void)viewDidLoad
{
  v3 = IMLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "viewDidLoad", buf, 2u);
  }

  v17.receiver = self;
  v17.super_class = CKInlineReplyChatController;
  [(CKChatController *)&v17 viewDidLoad];
  v4 = [(CKInlineReplyChatController *)self view];
  [v4 setBackgroundColor:0];

  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 replyTranscriptBackgroundDoesSupportTransparentBlurVisualEffect];

  v7 = IMLogHandleForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Using UIVisualEffectView for backgroudn blur", buf, 2u);
    }

    v9 = objc_alloc(MEMORY[0x1E69DD298]);
    v10 = [(CKInlineReplyChatController *)self view];
    [v10 bounds];
    v11 = [v9 initWithFrame:?];

    v12 = [(CKInlineReplyChatController *)self view];
    [v12 insertSubview:v11 atIndex:0];

    [(CKInlineReplyChatController *)self setBlurView:v11];
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Using CKInlineReplyTransparentBlurBackgroundView for background blur", buf, 2u);
    }

    v13 = [CKInlineReplyTransparentBlurBackgroundView alloc];
    v14 = [(CKInlineReplyChatController *)self view];
    [v14 bounds];
    v11 = [(CKInlineReplyTransparentBlurBackgroundView *)v13 initWithFrame:?];

    [(CKInlineReplyTransparentBlurBackgroundView *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [(CKInlineReplyChatController *)self view];
    [v15 insertSubview:v11 atIndex:0];

    v16 = [(CKInlineReplyChatController *)self view];
    [(UIView *)v11 __ck_makeEdgesEqualTo:v16];

    [(CKInlineReplyChatController *)self setBlurParentView:v11];
  }
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = CKInlineReplyChatController;
  [(CKChatController *)&v14 viewDidLayoutSubviews];
  v3 = [(CKInlineReplyChatController *)self blurView];

  if (v3)
  {
    v4 = [(CKInlineReplyChatController *)self view];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [(CKInlineReplyChatController *)self blurView];
    [v13 setFrame:{v6, v8, v10, v12}];
  }
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v27 = *MEMORY[0x1E69E9840];
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "viewIsAppearing", buf, 2u);
  }

  v22.receiver = self;
  v22.super_class = CKInlineReplyChatController;
  [(CKInlineReplyChatController *)&v22 viewIsAppearing:v3];
  v6 = [(CKInlineReplyChatController *)self isInitialLoad];
  v7 = IMLogHandleForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Performing initialLoad", buf, 2u);
    }

    v9 = [(CKInlineReplyChatController *)self interactionDelegate];
    [v9 inlineReplyControllerIsAppearing:self];

    v10 = [(CKInlineReplyChatController *)self isModal];
    v11 = [(CKInlineReplyChatController *)self isUnanimated];
    v12 = v11;
    if (v10 || v11)
    {
      v15 = IMLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v24 = v10;
        v25 = 2048;
        v26 = v12;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Calling _animateIn during initialLoad due to isModal: %ld isUnanimated:%ld", buf, 0x16u);
      }

      [(CKInlineReplyChatController *)self _animateIn:1];
      v16 = [(CKInlineReplyChatController *)self traitCollection];
      v17 = [v16 userInterfaceStyle];

      v18 = [(CKChatController *)self entryView];
      v19 = v18;
      if (v17 == 2)
      {
        v20 = 7;
      }

      else
      {
        v20 = 8;
      }

      [v18 setStyle:v20];

      [(CKInlineReplyChatController *)self setTargetFirstResponder:1];
      [(CKInlineReplyChatController *)self becomeFirstResponder];
    }

    else
    {
      v13 = [(CKInlineReplyChatController *)self inlineCollectionViewController];
      [v13 setAnimatingIn:1];

      if (UIAccessibilityIsReduceMotionEnabled())
      {
        v14 = [(CKChatController *)self collectionView];
        [v14 setAlpha:0.0];
      }

      else
      {
        v14 = [(CKInlineReplyChatController *)self transcriptOverlayTransitionDelegate];
        v21 = [(CKInlineReplyChatController *)self _visibleGUIDs];
        [v14 transcriptOverlayViewController:self visibleGUIDsDidChange:v21];
      }

      if ([(CKInlineReplyChatController *)self shouldReloadInsetsForFloatingKeyboard])
      {
        [(CKScrollViewController *)self inputAccessoryViewFrameUpdatedForFloatingKeyboard];
      }
    }

    [(CKInlineReplyChatController *)self setIsInitialLoad:0];
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "viewIsAppearing, but initialLoad has already been completed", buf, 2u);
    }
  }
}

- (void)applyInitialContextToCollectionViewIfNeeded
{
  if (!UIAccessibilityIsReduceMotionEnabled() && ![(CKInlineReplyChatController *)self isUnanimated])
  {
    v7 = [(CKInlineReplyChatController *)self transitionContext];
    v3 = [(CKInlineReplyChatController *)self inlineCollectionViewController];
    v4 = [v7 visibleChatItemToFrameMap];
    [v3 setCollectionViewCurrentFramesForNextLayout:v4];
    v5 = [(CKInlineReplyChatController *)self transitionContext];
    v6 = [v5 replyTransitionProperties];
    [v3 setTransitionProperties:v6];
  }
}

- (UIEdgeInsets)calculateTranscriptMarginInsets
{
  v18.receiver = self;
  v18.super_class = CKInlineReplyChatController;
  [(CKCoreChatController *)&v18 calculateTranscriptMarginInsets];
  v7.f64[0] = v3;
  v7.f64[1] = v4;
  v8.f64[0] = v5;
  v8.f64[1] = v6;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*MEMORY[0x1E69DDCE0], v7), vceqq_f64(*(MEMORY[0x1E69DDCE0] + 16), v8)))))
  {
    v9 = [(CKInlineReplyChatController *)self transitionContext];
    [v9 transcriptMarginInsets];
    v16 = v11;
    v17 = v10;
    v14 = v13;
    v15 = v12;

    v6 = v14;
    v5 = v15;
    v4 = v16;
    v3 = v17;
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)calculateTranscriptSafeAreaInsets
{
  v18.receiver = self;
  v18.super_class = CKInlineReplyChatController;
  [(CKCoreChatController *)&v18 calculateTranscriptSafeAreaInsets];
  v7.f64[0] = v3;
  v7.f64[1] = v4;
  v8.f64[0] = v5;
  v8.f64[1] = v6;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*MEMORY[0x1E69DDCE0], v7), vceqq_f64(*(MEMORY[0x1E69DDCE0] + 16), v8)))))
  {
    v9 = [(CKInlineReplyChatController *)self transitionContext];
    [v9 transcriptSafeAreaInsets];
    v16 = v11;
    v17 = v10;
    v14 = v13;
    v15 = v12;

    v6 = v14;
    v5 = v15;
    v4 = v16;
    v3 = v17;
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (CGRect)_initialFrameForCollectionView
{
  v3 = [(CKInlineReplyChatController *)self transitionContext];
  [v3 parentCollectionViewFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [(CKInlineReplyChatController *)self calculateTranscriptSafeAreaInsets];
  v11 = v10;
  v12 = v9 - v10;

  v13 = v5;
  v14 = v11;
  v15 = v7;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)_initialFrameForGradientReferenceView
{
  v2 = [(CKInlineReplyChatController *)self transitionContext];
  [v2 parentCollectionViewFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "viewDidAppear", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = CKInlineReplyChatController;
  [(CKChatController *)&v6 viewDidAppear:v3];
  if (![(CKInlineReplyChatController *)self isModal])
  {
    [(CKInlineReplyChatController *)self _animateIn:0];
  }
}

- (void)transcriptCollectionViewControllerDidSetChatItems:(id)a3
{
  v5.receiver = self;
  v5.super_class = CKInlineReplyChatController;
  [(CKChatController *)&v5 transcriptCollectionViewControllerDidSetChatItems:a3];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__CKInlineReplyChatController_transcriptCollectionViewControllerDidSetChatItems___block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __81__CKInlineReplyChatController_transcriptCollectionViewControllerDidSetChatItems___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) transcriptOverlayTransitionDelegate];
  v2 = *(a1 + 32);
  v3 = [v2 _visibleGUIDs];
  [v4 transcriptOverlayViewController:v2 visibleGUIDsDidChange:v3];
}

- (void)transcriptCollectionViewControllerRestingStateDidChange:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CKInlineReplyChatController;
  [(CKCoreChatController *)&v8 transcriptCollectionViewControllerRestingStateDidChange:v4];
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    if ([(CKInlineReplyChatController *)self animatingOut])
    {
      v5 = [v4 collectionView];
      v6 = [v5 collectionViewLayout];
      v7 = [v6 isResting];

      if (v7)
      {
        [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
        [(CKInlineReplyChatController *)self _requestDismissal];
      }
    }
  }
}

- (void)transcriptCollectionViewController:(id)a3 collectionViewContentSizeDidChange:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v21.receiver = self;
  v21.super_class = CKInlineReplyChatController;
  [(CKCoreChatController *)&v21 transcriptCollectionViewController:a3 collectionViewContentSizeDidChange:?];
  v7 = [(CKInlineReplyChatController *)self view];
  v8 = [(CKChatController *)self collectionView];
  [v7 setCollectionView:v8];

  v9 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v10 = [v9 isOOPKeyboardEnabled];

  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 transcriptScrollToBottomDuration];
  v13 = v12;

  [(CKInlineReplyChatController *)self updateScrollGeometryForReason:@"InlineReplyContentCentering" withDuration:0 animationCurve:v13];
  v14 = width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8);
  if (!v14 && [(CKInlineReplyChatController *)self isInitialSizing])
  {
    if (v10)
    {
      v15 = [(CKChatController *)self collectionView];
      [v15 endHoldingContentOffsetUpdatesForReason:@"InlineReplyChatController"];
    }

    v16 = [(CKInlineReplyChatController *)self transitionContext];
    v17 = [v16 presentWithKeyboard];

    if (v17)
    {
      v18 = [(CKInlineReplyChatController *)self transitionContext];
      v19 = [v18 wantsModalPresentation];

      if (!v19)
      {
        [(CKChatController *)self showKeyboardForReply];
        if (v10)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      [(CKInlineReplyChatController *)self setTargetFirstResponder:1];
    }

    if (v10)
    {
LABEL_13:
      [(CKInlineReplyChatController *)self _setInitialScrollPositionIfNecessary];
      [(CKInlineReplyChatController *)self setIsInitialSizing:0];
      goto LABEL_14;
    }

LABEL_12:
    v20 = [(CKChatController *)self collectionView];
    [v20 endHoldingContentOffsetUpdatesForReason:@"InlineReplyChatController"];

    goto LABEL_13;
  }

LABEL_14:
}

- (void)transcriptCollectionViewController:(id)a3 didScroll:(CGPoint)a4
{
  y = a4.y;
  v6 = [CKUIBehavior sharedBehaviors:a3];
  [v6 topTranscriptSpace];
  v8 = y > v7;

  [(CKInlineReplyChatController *)self setShowNavbarKeyline:v8];
}

- (double)transcriptCollectionViewController:(id)a3 targetAlphaForChatItem:(id)a4
{
  v5 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  result = 1.0;
  if (isKindOfClass)
  {
    v8 = [(CKInlineReplyChatController *)self traitCollection];
    v9 = [v8 isTranscriptBackgroundActive];

    result = 0.5;
    if (v9)
    {
      return 1.0;
    }
  }

  return result;
}

- (void)_animateIn:(BOOL)a3
{
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Performing _animateIn", buf, 2u);
  }

  if ([(CKInlineReplyChatController *)self hasCompletedAnimationIn]|| [(CKInlineReplyChatController *)self animatingOut])
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "> Call made to perform _animateIn:, but we've already done this. Will not re-perform _animateIn:", buf, 2u);
    }

    goto LABEL_20;
  }

  [(CKInlineReplyChatController *)self setAnimatingIn:1];
  v7 = [(CKInlineReplyChatController *)self blurView];
  if (v7)
  {

LABEL_10:
    v9 = +[CKUIBehavior sharedBehaviors];
    [v9 replyTranscriptBackgroundBlurAnimationTime];
    v11 = v10;

    v12 = [(CKInlineReplyChatController *)self transcriptOverlayTransitionDelegate];
    [v12 transcriptOverlayViewControllerWillAnimateIn:self];

    if ([(CKInlineReplyChatController *)self isModal])
    {
      v13 = [(CKInlineReplyChatController *)self navigationController];
    }

    else
    {
      v14 = [(CKChatController *)self splitViewController];
      v15 = [v14 isCollapsed];
      v16 = [(CKChatController *)self splitViewController];
      v17 = v16;
      if (v15)
      {
        [v16 masterViewController];
      }

      else
      {
        [v16 detailViewController];
      }
      v13 = ;
    }

    v18 = [v13 navigationBar];
    [v18 setNeedsLayout];

    v19 = [v13 navigationBar];
    [v19 layoutIfNeeded];

    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __42__CKInlineReplyChatController__animateIn___block_invoke;
    aBlock[3] = &unk_1E72EBBC0;
    v30 = IsReduceMotionEnabled;
    aBlock[4] = self;
    v6 = v13;
    v29 = v6;
    v21 = _Block_copy(aBlock);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __42__CKInlineReplyChatController__animateIn___block_invoke_2;
    v27[3] = &unk_1E72EBA18;
    v27[4] = self;
    v22 = _Block_copy(v27);
    v23 = v22;
    if (a3)
    {
      v21[2](v21);
      v23[2](v23);
    }

    else
    {
      v24 = MEMORY[0x1E69DD250];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __42__CKInlineReplyChatController__animateIn___block_invoke_313;
      v25[3] = &unk_1E72ED1F0;
      v26 = v22;
      [v24 animateWithDuration:v21 animations:v25 completion:v11];
    }

    goto LABEL_20;
  }

  v8 = [(CKInlineReplyChatController *)self blurParentView];

  if (v8)
  {
    goto LABEL_10;
  }

  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [CKInlineReplyChatController _animateIn:v6];
  }

LABEL_20:
}

void __42__CKInlineReplyChatController__animateIn___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) collectionView];
    [v2 setAlpha:1.0];
  }

  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 replyTranscriptBackgroundDoesSupportTransparentBlurVisualEffect];

  if (v4)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 theme];
    v7 = [v6 replyTranscriptBlurBackgroundEffects];
    v8 = [*(a1 + 32) blurView];
    [v8 setBackgroundEffects:v7];

    v9 = +[CKUIBehavior sharedBehaviors];
    v10 = [v9 theme];
    v11 = [v10 replyTranscriptBlurBackgroundColor];
    v12 = [*(a1 + 32) blurView];
    [v12 setBackgroundColor:v11];

    v13 = [*(a1 + 32) blurView];
    [v13 _setGroupName:@"inlineReplyVisualEffectViewGroup"];
  }

  else
  {
    v13 = [*(a1 + 32) blurParentView];
    [v13 animateIn];
  }

  v14 = [*(a1 + 40) navigationBar];
  [v14 setNeedsLayout];

  v15 = [*(a1 + 40) navigationBar];
  [v15 layoutIfNeeded];

  v16 = [*(a1 + 32) transcriptOverlayTransitionDelegate];
  [v16 transcriptOverlayViewControllerIsAnimatingIn:*(a1 + 32)];
}

void __42__CKInlineReplyChatController__animateIn___block_invoke_2(uint64_t a1)
{
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Finished performing _animateIn", v5, 2u);
  }

  [*(a1 + 32) setAnimatingIn:0];
  [*(a1 + 32) setHasCompletedAnimationIn:1];
  v3 = [*(a1 + 32) inlineCollectionViewController];
  [v3 setAnimatingIn:0];

  v4 = [*(a1 + 32) transcriptOverlayTransitionDelegate];
  [v4 transcriptOverlayViewControllerDidAnimateIn:*(a1 + 32)];
}

- (void)_animateOutWithCompletion:(id)a3
{
  v4 = a3;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Performing _animateOut", buf, 2u);
  }

  v6 = [(CKInlineReplyChatController *)self view];
  [v6 setUserInteractionEnabled:0];

  [(CKInlineReplyChatController *)self setAnimatingOut:1];
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v8 = [(CKInlineReplyChatController *)self inlineCollectionViewController];
  [v8 setAnimatingOut:1];
  v9 = [(CKChatController *)self entryView];
  v10 = [(CKInlineReplyChatController *)self traitCollection];
  [v9 setEntryViewTraitCollection:v10 resetStyle:1];

  v11 = [(CKChatController *)self collectionView];
  [v11 beginHoldingContentOffsetUpdatesForReason:@"InlineReplyChatController"];

  [(CKScrollViewController *)self beginHoldingScrollGeometryUpdatesForReason:@"InlineReplyAnimateOut"];
  if (!IsReduceMotionEnabled)
  {
    v12 = [(CKChatController *)self _visibleChatItemsToScreenFrameMap];
    v13 = [(CKInlineReplyChatController *)self transcriptOverlayTransitionDelegate];
    v14 = [v13 updatedFrameMapForTranscriptOverlayViewController:self];

    [v8 setCollectionViewTargetFrames:v14];
    [v8 setCollectionViewCurrentFramesForNextLayout:v12];
    [v8 performCollectionViewReloadForAnimateOut];
  }

  v15 = +[CKUIBehavior sharedBehaviors];
  [v15 replyTranscriptBackgroundBlurAnimationTime];
  v17 = v16;

  v18 = [(CKInlineReplyChatController *)self transcriptOverlayTransitionDelegate];
  [v18 transcriptOverlayViewControllerWillAnimateOut:self];

  v19 = [(CKChatController *)self collectionView];
  [v19 setIgnoresReloadDataRequests:1];

  v20 = MEMORY[0x1E69DD250];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __57__CKInlineReplyChatController__animateOutWithCompletion___block_invoke;
  v25[3] = &unk_1E72ED8D8;
  v25[4] = self;
  v26 = IsReduceMotionEnabled;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __57__CKInlineReplyChatController__animateOutWithCompletion___block_invoke_2;
  v22[3] = &unk_1E72EED18;
  v24 = IsReduceMotionEnabled;
  v22[4] = self;
  v21 = v4;
  v23 = v21;
  [v20 animateWithDuration:v25 animations:v22 completion:v17];
  if (!IsReduceMotionEnabled)
  {
    [(CKInlineReplyChatController *)self performSelector:sel__requestDismissal withObject:0 afterDelay:1.5];
  }
}

void __57__CKInlineReplyChatController__animateOutWithCompletion___block_invoke(uint64_t a1)
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 replyTranscriptBackgroundDoesSupportTransparentBlurVisualEffect];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 blurView];
    [v5 setBackgroundEffects:MEMORY[0x1E695E0F0]];

    v6 = [*(a1 + 32) blurView];
    [v6 setBackgroundColor:0];
  }

  else
  {
    v6 = [v4 blurParentView];
    [v6 animateOut];
  }

  if (*(a1 + 40) == 1)
  {
    v7 = [*(a1 + 32) collectionView];
    [v7 setAlpha:0.0];
  }

  v8 = [*(a1 + 32) splitViewController];
  v9 = [v8 isCollapsed];
  v10 = [*(a1 + 32) splitViewController];
  v11 = v10;
  if (v9)
  {
    [v10 masterViewController];
  }

  else
  {
    [v10 detailViewController];
  }
  v15 = ;

  v12 = [v15 navigationBar];
  [v12 setNeedsLayout];

  v13 = [v15 navigationBar];
  [v13 layoutIfNeeded];

  v14 = [*(a1 + 32) transcriptOverlayTransitionDelegate];
  [v14 transcriptOverlayViewControllerIsAnimatingOut:*(a1 + 32)];
}

void __57__CKInlineReplyChatController__animateOutWithCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) _requestDismissal];
  }

  v2 = [*(a1 + 32) collectionView];
  [v2 endHoldingContentOffsetUpdatesForReason:@"InlineReplyChatController"];

  if (*(a1 + 40))
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Calling completion on _animateOut", v4, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)_setInitialScrollPositionIfNecessary
{
  v3 = [(CKInlineReplyChatController *)self transitionContext];
  v68 = [v3 anchorChatItemGUID];

  v4 = [(CKCoreChatController *)self collectionViewController];
  v5 = [v4 chatItemForGUID:v68];

  if (UIAccessibilityIsReduceMotionEnabled() || (-[CKInlineReplyChatController transitionContext](self, "transitionContext"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 presentWithKeyboard], v6, v7))
  {
    v8 = [(CKCoreChatController *)self collectionViewController];
    [v8 scrollTranscriptToEntryViewInsertionTimeWithAnimation:0];
LABEL_4:

    goto LABEL_5;
  }

  if (v5)
  {
    v9 = *MEMORY[0x1E69DDCE0];
    v10 = [(CKInlineReplyChatController *)self view];
    [v10 safeAreaInsets];
    v12 = v11;

    v13 = [(CKChatController *)self collectionView];
    [v13 frame];
    v14 = CGRectGetHeight(v70) - (v9 + v12);

    v8 = [(CKChatController *)self collectionView];
    v15 = [v8 collectionViewLayout];
    [v15 collectionViewContentSize];
    v17 = v16;

    v18 = [(CKCoreChatController *)self collectionViewController];
    v19 = v18;
    if (v17 >= v14)
    {
      v20 = [v18 chatItems];
      v21 = [v20 indexOfObject:v5];

      v19 = [MEMORY[0x1E696AC88] indexPathForRow:v21 inSection:0];
      v22 = [(CKChatController *)self collectionView];
      v23 = [v22 collectionViewLayout];
      v24 = [v23 layoutAttributesForItemAtIndexPath:v19];

      v25 = v24[44];
      v26 = v24[45];
      v27 = v24[46];
      v28 = v24[47];
      [v8 bounds];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
      [v8 contentInset];
      v66 = v37;
      v67 = v30;
      v39 = v30 + v38;
      v40 = v32 + v37;
      v42 = v34 - (v38 + v41);
      v44 = v36 - (v37 + v43);
      v71.origin.x = v25;
      v71.origin.y = v26;
      v71.size.width = v27;
      v71.size.height = v28;
      MidY = CGRectGetMidY(v71);
      v72.origin.x = v39;
      v72.origin.y = v40;
      v72.size.width = v42;
      v72.size.height = v44;
      v46 = MidY + CGRectGetHeight(v72) * -0.5;
      v47 = [(CKCoreChatController *)self collectionViewController];
      v48 = [v47 chatItems];
      v49 = [v48 firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v50 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
        v51 = [v8 layoutAttributesForItemAtIndexPath:v50];
        [v51 frame];
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;

        v73.origin.x = v53;
        v73.origin.y = v55;
        v73.size.width = v57;
        v73.size.height = v59;
        MaxY = CGRectGetMaxY(v73);
        if (v46 < MaxY)
        {
          v46 = MaxY;
        }
      }

      v61 = [(CKChatController *)self collectionView];
      [v61 __ck_bottomOffset];
      v63 = v62;

      if (v63 >= v46 - v66)
      {
        v64 = v46 - v66;
      }

      else
      {
        v64 = v63;
      }

      if (v64 <= -v66)
      {
        v65 = -v66;
      }

      else
      {
        v65 = v64;
      }

      [v8 setContentOffset:0 animated:{v67, v65}];
    }

    else
    {
      [v18 scrollTranscriptToEntryViewInsertionTimeWithAnimation:0];
    }

    goto LABEL_4;
  }

LABEL_5:
}

- (void)_requestDismissal
{
  v3 = IMLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Executing _requestDismissal", v8, 2u);
  }

  v4 = [(CKInlineReplyChatController *)self transcriptOverlayTransitionDelegate];
  [v4 transcriptOverlayViewControllerDidAnimateOut:self];

  v5 = [(CKInlineReplyChatController *)self interactionDelegate];
  v6 = [(CKChatController *)self entryView];
  v7 = [v6 contentView];
  [v5 inlineReplyControllerRequestsDismissal:self presentKeyboard:{objc_msgSend(v7, "isActive")}];
}

- (id)_visibleGUIDs
{
  v3 = [(CKCoreChatController *)self collectionViewController];
  v4 = [v3 chatItems];
  v5 = [v4 __imArrayByApplyingBlock:&__block_literal_global_42];

  v6 = [(CKCoreChatController *)self collectionViewController];
  v7 = [v6 associatedChatItems];
  v8 = [v7 __imArrayByApplyingBlock:&__block_literal_global_321];

  v9 = [v5 arrayByAddingObjectsFromArray:v8];

  return v9;
}

id __44__CKInlineReplyChatController__visibleGUIDs__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 IMChatItem];
  v3 = [v2 guid];

  return v3;
}

id __44__CKInlineReplyChatController__visibleGUIDs__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 IMChatItem];
  v3 = [v2 guid];

  return v3;
}

- (id)parentViewControllerForPluginViewControllerInMessageEntryView:(id)a3
{
  if ([(CKInlineReplyChatController *)self isModal])
  {
    v4 = self;
  }

  else
  {
    v4 = [(CKInlineReplyChatController *)self parentChatController];
  }

  return v4;
}

- (void)stageAssetArchive:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5
{
  v9.receiver = self;
  v9.super_class = CKInlineReplyChatController;
  [(CKChatController *)&v9 stageAssetArchive:a3 skipShelf:a4 completionHandler:a5];
  v6 = [(CKChatController *)self deferredPresentationBlock];

  if (v6)
  {
    v7 = dispatch_time(0, 200000000);
    v8 = [(CKChatController *)self deferredPresentationBlock];
    dispatch_after(v7, MEMORY[0x1E69E96A0], v8);

    [(CKChatController *)self setDeferredPresentationBlock:0];
  }
}

- (CKTranscriptOverlayTransitionDelegate)transcriptOverlayTransitionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_transcriptOverlayTransitionDelegate);

  return WeakRetained;
}

- (CKInlineReplyInteractionDelegate)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

- (CKChatController)parentChatController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentChatController);

  return WeakRetained;
}

@end