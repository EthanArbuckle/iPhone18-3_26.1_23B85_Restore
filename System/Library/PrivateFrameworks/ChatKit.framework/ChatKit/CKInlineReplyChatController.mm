@interface CKInlineReplyChatController
- (BOOL)becomeFirstResponder;
- (BOOL)isModal;
- (BOOL)isUnanimated;
- (BOOL)messageEntryViewWidth:(double *)width andOffset:(double *)offset;
- (CGRect)_initialFrameForCollectionView;
- (CGRect)_initialFrameForGradientReferenceView;
- (CGRect)gradientFrameWithInsets:(UIEdgeInsets)insets;
- (CGSize)contentSizeForPinning;
- (CKChatController)parentChatController;
- (CKInlineReplyChatController)initWithConversation:(id)conversation threadIdentifier:(id)identifier threadOriginator:(id)originator transitionContext:(id)context originatorMessageSummaryInfo:(id)info parentChatController:(id)controller;
- (CKInlineReplyInteractionDelegate)interactionDelegate;
- (CKTranscriptOverlayTransitionDelegate)transcriptOverlayTransitionDelegate;
- (UIEdgeInsets)_contentInsetForSendAnimation;
- (UIEdgeInsets)calculateTranscriptMarginInsets;
- (UIEdgeInsets)calculateTranscriptSafeAreaInsets;
- (UIEdgeInsets)navigationBarInsetsWithoutPalette;
- (UIEdgeInsets)transcriptContentInsetsForMessageEditingViewController:(id)controller;
- (double)accessoryViewHeight;
- (double)throwAnimationFinalFrameOffset:(id)offset;
- (double)transcriptCollectionViewController:(id)controller targetAlphaForChatItem:(id)item;
- (double)visibleInputViewHeight;
- (id)_defaultTranscriptNavBarAppearance;
- (id)_navigationBarAppearanceWithKeyline:(BOOL)keyline;
- (id)_visibleGUIDs;
- (id)contextualChatItemsForFullScreenBalloonViewController:(id)controller;
- (id)contextualChatItemsForTapbackPicker;
- (id)inputAccessoryView;
- (id)inputController;
- (id)inputViewController;
- (id)parentViewControllerForPluginViewControllerInMessageEntryView:(id)view;
- (int64_t)targetFirstResponder;
- (void)_animateIn:(BOOL)in;
- (void)_animateOutWithCompletion:(id)completion;
- (void)_didSendCompositionInConversation:(id)conversation;
- (void)_doneButtonPressed;
- (void)_requestDismissal;
- (void)_setConversationDeferredSetup;
- (void)_setInitialScrollPositionIfNecessary;
- (void)_updateThreadOriginatorIMMessage:(id)message byAddingReplyWithPartCount:(int64_t)count toThreadIdentifier:(id)identifier;
- (void)addOrRemoveEntryViewIfNeeded;
- (void)appCardDidChangeEntryViewAlignmentHeight:(double)height animated:(BOOL)animated;
- (void)applyInitialContextToCollectionViewIfNeeded;
- (void)collectMetricsForSending:(id)sending;
- (void)dismissControllerWithCompletion:(id)completion;
- (void)invalidateChatItemLayoutForTraitCollectionChangeIfNeeded:(id)needed;
- (void)messageEntryView:(id)view didMoveToWindow:(id)window;
- (void)messageEntryViewDidBeginEditingNotAlreadyActive:(id)active;
- (void)messageEntryViewSendLaterPluginInfoUpdated:(id)updated;
- (void)reloadEntryViewIfNeeded;
- (void)reloadInputViews;
- (void)sendMessage:(id)message forConversation:(id)conversation newComposition:(BOOL)composition;
- (void)sendMessage:(id)message forConversation:(id)conversation onService:(id)service newComposition:(BOOL)composition;
- (void)setIsShowingPreview:(BOOL)preview;
- (void)setShowNavbarKeyline:(BOOL)keyline;
- (void)setTargetFirstResponder:(int64_t)responder;
- (void)setUpEntryViewLayoutConstraintsIfNecessary;
- (void)stageAssetArchive:(id)archive skipShelf:(BOOL)shelf completionHandler:(id)handler;
- (void)tapGestureRecognized:(id)recognized;
- (void)transcriptCollectionViewController:(id)controller collectionViewContentSizeDidChange:(CGSize)change;
- (void)transcriptCollectionViewController:(id)controller didScroll:(CGPoint)scroll;
- (void)transcriptCollectionViewControllerDidSetChatItems:(id)items;
- (void)transcriptCollectionViewControllerRestingStateDidChange:(id)change;
- (void)updateActiveEntryViewPositioningGuide;
- (void)updateScrollGeometryForReason:(id)reason withDuration:(double)duration animationCurve:(int64_t)curve;
- (void)updateScrollGeometryWithoutAnimationForReason:(id)reason;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation CKInlineReplyChatController

- (CKInlineReplyChatController)initWithConversation:(id)conversation threadIdentifier:(id)identifier threadOriginator:(id)originator transitionContext:(id)context originatorMessageSummaryInfo:(id)info parentChatController:(id)controller
{
  identifierCopy = identifier;
  originatorCopy = originator;
  contextCopy = context;
  infoCopy = info;
  controllerCopy = controller;
  v22.receiver = self;
  v22.super_class = CKInlineReplyChatController;
  v19 = [(CKChatController *)&v22 initWithConversation:conversation];
  v20 = v19;
  if (v19)
  {
    [(CKInlineReplyChatController *)v19 setParentChatController:controllerCopy];
    [(CKInlineReplyChatController *)v20 setIsInitialLoad:1];
    [(CKInlineReplyChatController *)v20 setIsInitialSizing:1];
    [(CKInlineReplyChatController *)v20 setThreadOriginator:originatorCopy];
    [(CKInlineReplyChatController *)v20 setThreadIdentifier:identifierCopy];
    [(CKInlineReplyChatController *)v20 setTransitionContext:contextCopy];
    [(CKScrollViewController *)v20 setEnableContentPinning:1];
    v20->_showNavbarKeyline = 1;
    objc_storeStrong(&v20->_originatorMessageSummaryInfo, info);
  }

  return v20;
}

- (BOOL)isModal
{
  transitionContext = [(CKInlineReplyChatController *)self transitionContext];
  wantsModalPresentation = [transitionContext wantsModalPresentation];

  return wantsModalPresentation;
}

- (BOOL)isUnanimated
{
  transitionContext = [(CKInlineReplyChatController *)self transitionContext];
  wantsUnanimatedPresentation = [transitionContext wantsUnanimatedPresentation];

  return wantsUnanimatedPresentation;
}

- (void)_doneButtonPressed
{
  if ([(CKInlineReplyChatController *)self isModal])
  {

    [(CKChatController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)dismissControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(CKInlineReplyChatController *)self isModal])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63__CKInlineReplyChatController_dismissControllerWithCompletion___block_invoke;
    v8[3] = &unk_1E72EBDB8;
    v5 = &v9;
    v9 = completionCopy;
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
    v7 = completionCopy;
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
  entryView = [(CKChatController *)self entryView];
  v3 = entryView;
  if (entryView)
  {
    [entryView frame];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (void)updateScrollGeometryWithoutAnimationForReason:(id)reason
{
  reasonCopy = reason;
  entryView = [(CKChatController *)self entryView];
  [entryView frame];
  [(CKScrollViewController *)self setContentPinningThreshold:CGRectGetHeight(v7)];

  v6.receiver = self;
  v6.super_class = CKInlineReplyChatController;
  [(CKScrollViewController *)&v6 updateScrollGeometryWithoutAnimationForReason:reasonCopy];
}

- (void)updateScrollGeometryForReason:(id)reason withDuration:(double)duration animationCurve:(int64_t)curve
{
  reasonCopy = reason;
  entryView = [(CKChatController *)self entryView];
  [entryView frame];
  [(CKScrollViewController *)self setContentPinningThreshold:CGRectGetHeight(v11)];

  v10.receiver = self;
  v10.super_class = CKInlineReplyChatController;
  [(CKScrollViewController *)&v10 updateScrollGeometryForReason:reasonCopy withDuration:curve animationCurve:duration];
}

- (CGSize)contentSizeForPinning
{
  collectionView = [(CKChatController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout collectionViewContentSize];
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
  view = [(CKInlineReplyChatController *)self view];
  [view safeAreaInsets];
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

- (CGRect)gradientFrameWithInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
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
    interactionDelegate = [(CKInlineReplyChatController *)self interactionDelegate];
    [interactionDelegate inlineReplyController:self gradientFrameWithInsets:{top, left, bottom, right}];
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
  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  [collectionViewController setTranscriptBackgroundColor:0];
}

- (id)inputAccessoryView
{
  if ([(CKInlineReplyChatController *)self isModal])
  {
    v5.receiver = self;
    v5.super_class = CKInlineReplyChatController;
    inputAccessoryView = [(CKChatController *)&v5 inputAccessoryView];
  }

  else
  {
    inputAccessoryView = 0;
  }

  return inputAccessoryView;
}

- (id)inputViewController
{
  if ([(CKInlineReplyChatController *)self isModal])
  {
    v5.receiver = self;
    v5.super_class = CKInlineReplyChatController;
    inputViewController = [(CKChatController *)&v5 inputViewController];
  }

  else
  {
    inputViewController = 0;
  }

  return inputViewController;
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
    interactionDelegate = [(CKInlineReplyChatController *)self interactionDelegate];
    [interactionDelegate inlineReplyControllerRequestsReloadInputViews:self];
  }
}

- (id)inputController
{
  if ([(CKInlineReplyChatController *)self isModal])
  {
    v6.receiver = self;
    v6.super_class = CKInlineReplyChatController;
    inputController = [(CKCoreChatController *)&v6 inputController];
  }

  else
  {
    interactionDelegate = [(CKInlineReplyChatController *)self interactionDelegate];
    inputController = [interactionDelegate inlineReplyControllerChatInputController:self];
  }

  return inputController;
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
  interactionDelegate = [(CKInlineReplyChatController *)self interactionDelegate];
  if (interactionDelegate && (v4 = interactionDelegate, v5 = [(CKInlineReplyChatController *)self isModal], v4, !v5))
  {
    interactionDelegate2 = [(CKInlineReplyChatController *)self interactionDelegate];
    v8 = [interactionDelegate2 inlineReplyControllerBecomeFirstResponder:self];

    return v8;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CKInlineReplyChatController;
    return [(CKChatController *)&v9 becomeFirstResponder];
  }
}

- (void)setTargetFirstResponder:(int64_t)responder
{
  interactionDelegate = [(CKInlineReplyChatController *)self interactionDelegate];
  if (interactionDelegate && (v6 = interactionDelegate, v7 = [(CKInlineReplyChatController *)self isModal], v6, !v7))
  {
    interactionDelegate2 = [(CKInlineReplyChatController *)self interactionDelegate];
    [interactionDelegate2 inlineReplyController:self setTargetFirstResponder:responder];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CKInlineReplyChatController;
    [(CKChatController *)&v9 setTargetFirstResponder:responder];
  }
}

- (int64_t)targetFirstResponder
{
  interactionDelegate = [(CKInlineReplyChatController *)self interactionDelegate];
  if (interactionDelegate && (v4 = interactionDelegate, v5 = [(CKInlineReplyChatController *)self isModal], v4, !v5))
  {
    interactionDelegate2 = [(CKInlineReplyChatController *)self interactionDelegate];
    v8 = [interactionDelegate2 inlineReplyControllerTargetFirstResponder:self];

    return v8;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CKInlineReplyChatController;
    return [(CKChatController *)&v9 targetFirstResponder];
  }
}

- (BOOL)messageEntryViewWidth:(double *)width andOffset:(double *)offset
{
  interactionDelegate = [(CKInlineReplyChatController *)self interactionDelegate];
  if (interactionDelegate && (v8 = interactionDelegate, v9 = [(CKInlineReplyChatController *)self isModal], v8, !v9))
  {
    interactionDelegate2 = [(CKInlineReplyChatController *)self interactionDelegate];
    v12 = [interactionDelegate2 inlineReplyController:self containerWidth:width offset:offset];

    return v12;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CKInlineReplyChatController;
    return [(CKChatController *)&v13 messageEntryViewWidth:width andOffset:offset];
  }
}

- (void)setIsShowingPreview:(BOOL)preview
{
  previewCopy = preview;
  v6.receiver = self;
  v6.super_class = CKInlineReplyChatController;
  [(CKChatController *)&v6 setIsShowingPreview:?];
  interactionDelegate = [(CKInlineReplyChatController *)self interactionDelegate];
  [interactionDelegate inlineReplyController:self setIsShowingPreview:previewCopy];
}

- (void)messageEntryViewSendLaterPluginInfoUpdated:(id)updated
{
  updatedCopy = updated;
  threadOriginator = [(CKInlineReplyChatController *)self threadOriginator];
  scheduleType = [threadOriginator scheduleType];

  if (scheduleType == 2)
  {
    [(CKInlineReplyChatController *)self dismissController];
  }

  v7.receiver = self;
  v7.super_class = CKInlineReplyChatController;
  [(CKChatController *)&v7 messageEntryViewSendLaterPluginInfoUpdated:updatedCopy];
}

- (void)messageEntryViewDidBeginEditingNotAlreadyActive:(id)active
{
  activeCopy = active;
  if ([(CKInlineReplyChatController *)self isModal])
  {
    selfCopy = self;
    v5 = &selfCopy;
LABEL_7:
    v5->super_class = CKInlineReplyChatController;
    [(objc_super *)v5 messageEntryViewDidBeginEditingNotAlreadyActive:activeCopy, selfCopy];
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

  interactionDelegate = [(CKInlineReplyChatController *)self interactionDelegate];
  [interactionDelegate updateActiveEntryViewPositioningGuideForInlineReplyController:self];
}

- (void)messageEntryView:(id)view didMoveToWindow:(id)window
{
  v9.receiver = self;
  v9.super_class = CKInlineReplyChatController;
  windowCopy = window;
  viewCopy = view;
  [(CKChatController *)&v9 messageEntryView:viewCopy didMoveToWindow:windowCopy];
  v8 = [(CKInlineReplyChatController *)self interactionDelegate:v9.receiver];
  [v8 inlineReplyController:self messageEntryView:viewCopy didMoveToWindow:windowCopy];
}

- (UIEdgeInsets)transcriptContentInsetsForMessageEditingViewController:(id)controller
{
  controllerCopy = controller;
  if ([(CKInlineReplyChatController *)self isModal])
  {
    v23.receiver = self;
    v23.super_class = CKInlineReplyChatController;
    [(CKChatController *)&v23 transcriptContentInsetsForMessageEditingViewController:controllerCopy];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    interactionDelegate = [(CKInlineReplyChatController *)self interactionDelegate];
    [interactionDelegate parentTranscriptContentInsetsForInlineReplyController:self];
    v6 = v14;
    v8 = v15;
    v12 = v16;
    v22.receiver = self;
    v22.super_class = CKInlineReplyChatController;
    [(CKChatController *)&v22 transcriptContentInsetsForMessageEditingViewController:controllerCopy];
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

- (void)appCardDidChangeEntryViewAlignmentHeight:(double)height animated:(BOOL)animated
{
  animatedCopy = animated;
  v8.receiver = self;
  v8.super_class = CKInlineReplyChatController;
  [CKChatController appCardDidChangeEntryViewAlignmentHeight:sel_appCardDidChangeEntryViewAlignmentHeight_animated_ animated:?];
  interactionDelegate = [(CKInlineReplyChatController *)self interactionDelegate];
  [interactionDelegate inlineReplyController:self appCardDidChangeEntryViewAlignmentHeight:animatedCopy animated:height];
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
    interactionDelegate = [(CKInlineReplyChatController *)self interactionDelegate];
    [interactionDelegate visibleInputViewHeightForInlineReplyController:self];
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
  collectionView = [(CKChatController *)self collectionView];
  [collectionView contentInset];
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

- (double)throwAnimationFinalFrameOffset:(id)offset
{
  view = [(CKInlineReplyChatController *)self view];
  [view safeAreaInsets];
  v5 = v4;

  return v5;
}

- (id)contextualChatItemsForTapbackPicker
{
  parentChatController = [(CKInlineReplyChatController *)self parentChatController];
  collectionViewController = [parentChatController collectionViewController];
  chatItems = [collectionViewController chatItems];

  return chatItems;
}

- (id)contextualChatItemsForFullScreenBalloonViewController:(id)controller
{
  parentChatController = [(CKInlineReplyChatController *)self parentChatController];
  collectionViewController = [parentChatController collectionViewController];
  chatItems = [collectionViewController chatItems];

  return chatItems;
}

- (void)invalidateChatItemLayoutForTraitCollectionChangeIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(CKViewController *)self deferredAppeared])
  {
    v6.receiver = self;
    v6.super_class = CKInlineReplyChatController;
    [(CKCoreChatController *)&v6 invalidateChatItemLayoutForTraitCollectionChangeIfNeeded:neededCopy];
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

- (void)sendMessage:(id)message forConversation:(id)conversation onService:(id)service newComposition:(BOOL)composition
{
  compositionCopy = composition;
  v24 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  conversationCopy = conversation;
  serviceCopy = service;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      threadIdentifier = [(CKInlineReplyChatController *)self threadIdentifier];
      v20 = 136315394;
      v21 = "[CKInlineReplyChatController sendMessage:forConversation:onService:newComposition:]";
      v22 = 2112;
      v23 = threadIdentifier;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "%s Sending reply with thread identifier %@", &v20, 0x16u);
    }
  }

  threadIdentifier2 = [(CKInlineReplyChatController *)self threadIdentifier];
  [messageCopy setThreadIdentifier:threadIdentifier2];
  threadOriginator = [(CKInlineReplyChatController *)self threadOriginator];
  v17 = [(CKInlineReplyChatController *)self _imMessageForIMMessageItem:threadOriginator];
  messageParts = [messageCopy messageParts];
  v19 = [messageParts count];

  [(CKInlineReplyChatController *)self _updateThreadOriginatorIMMessage:v17 byAddingReplyWithPartCount:v19 toThreadIdentifier:threadIdentifier2];
  [conversationCopy sendMessage:messageCopy onService:serviceCopy newComposition:compositionCopy];
  [(CKInlineReplyChatController *)self collectMetricsForSending:messageCopy];
}

- (void)sendMessage:(id)message forConversation:(id)conversation newComposition:(BOOL)composition
{
  compositionCopy = composition;
  v21 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  conversationCopy = conversation;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      threadIdentifier = [(CKInlineReplyChatController *)self threadIdentifier];
      v17 = 136315394;
      v18 = "[CKInlineReplyChatController sendMessage:forConversation:newComposition:]";
      v19 = 2112;
      v20 = threadIdentifier;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "%s Sending reply with thread identifier %@", &v17, 0x16u);
    }
  }

  threadIdentifier2 = [(CKInlineReplyChatController *)self threadIdentifier];
  [messageCopy setThreadIdentifier:threadIdentifier2];
  threadOriginator = [(CKInlineReplyChatController *)self threadOriginator];
  v14 = [(CKInlineReplyChatController *)self _imMessageForIMMessageItem:threadOriginator];
  messageParts = [messageCopy messageParts];
  v16 = [messageParts count];

  [(CKInlineReplyChatController *)self _updateThreadOriginatorIMMessage:v14 byAddingReplyWithPartCount:v16 toThreadIdentifier:threadIdentifier2];
  [messageCopy setThreadOriginator:v14];
  [conversationCopy sendMessage:messageCopy newComposition:compositionCopy];
  [(CKInlineReplyChatController *)self collectMetricsForSending:messageCopy];
}

- (void)_updateThreadOriginatorIMMessage:(id)message byAddingReplyWithPartCount:(int64_t)count toThreadIdentifier:(id)identifier
{
  messageCopy = message;
  identifierCopy = identifier;
  v9 = identifierCopy;
  if (messageCopy && [identifierCopy length])
  {
    IMMessageThreadIdentifierGetComponents();
    v10 = 0;
    v11 = 0;
    if ([v11 length])
    {
      replyCountsByPart = [messageCopy replyCountsByPart];
      v13 = [replyCountsByPart objectForKeyedSubscript:v11];
      integerValue = [v13 integerValue];
      v15 = [replyCountsByPart mutableCopy];
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

      v19 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue + count];
      [v18 setObject:v19 forKeyedSubscript:v11];

      v20 = [v18 copy];
      [messageCopy setReplyCountsByPart:v20];
    }
  }
}

- (void)_didSendCompositionInConversation:(id)conversation
{
  v5.receiver = self;
  v5.super_class = CKInlineReplyChatController;
  [(CKChatController *)&v5 _didSendCompositionInConversation:conversation];
  interactionDelegate = [(CKInlineReplyChatController *)self interactionDelegate];
  [interactionDelegate inlineReplyControllerDidSendComposition:self];
}

- (void)collectMetricsForSending:(id)sending
{
  v10[1] = *MEMORY[0x1E69E9840];
  originatorMessageSummaryInfo = [(CKInlineReplyChatController *)self originatorMessageSummaryInfo];
  __im_associatedMessageContentType = [originatorMessageSummaryInfo __im_associatedMessageContentType];
  [__im_associatedMessageContentType integerValue];

  mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
  v6 = *MEMORY[0x1E69A7408];
  v9 = @"originatorType";
  v7 = IMMetricsValueForAssociatedMessageContentType();
  v10[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [mEMORY[0x1E69A8168] trackEvent:v6 withDictionary:v8];
}

- (void)tapGestureRecognized:(id)recognized
{
  v4.receiver = self;
  v4.super_class = CKInlineReplyChatController;
  [(CKChatController *)&v4 tapGestureRecognized:recognized];
  [(CKInlineReplyChatController *)self dismissController];
}

- (id)_defaultTranscriptNavBarAppearance
{
  navigationController = [(CKInlineReplyChatController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  standardAppearance = [navigationBar standardAppearance];
  v5 = [standardAppearance copy];

  [v5 configureWithTransparentBackground];

  return v5;
}

- (id)_navigationBarAppearanceWithKeyline:(BOOL)keyline
{
  keylineCopy = keyline;
  _defaultTranscriptNavBarAppearance = [(CKInlineReplyChatController *)self _defaultTranscriptNavBarAppearance];
  v5 = _defaultTranscriptNavBarAppearance;
  if (keylineCopy)
  {
    [_defaultTranscriptNavBarAppearance configureWithDefaultShadow];
  }

  else
  {
    [_defaultTranscriptNavBarAppearance configureWithoutShadow];
  }

  return v5;
}

- (void)setShowNavbarKeyline:(BOOL)keyline
{
  if (self->_showNavbarKeyline != keyline)
  {
    self->_showNavbarKeyline = keyline;
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
  view = [(CKInlineReplyChatController *)self view];
  [view setBackgroundColor:0];

  v5 = +[CKUIBehavior sharedBehaviors];
  replyTranscriptBackgroundDoesSupportTransparentBlurVisualEffect = [v5 replyTranscriptBackgroundDoesSupportTransparentBlurVisualEffect];

  v7 = IMLogHandleForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (replyTranscriptBackgroundDoesSupportTransparentBlurVisualEffect)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Using UIVisualEffectView for backgroudn blur", buf, 2u);
    }

    v9 = objc_alloc(MEMORY[0x1E69DD298]);
    view2 = [(CKInlineReplyChatController *)self view];
    [view2 bounds];
    v11 = [v9 initWithFrame:?];

    view3 = [(CKInlineReplyChatController *)self view];
    [view3 insertSubview:v11 atIndex:0];

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
    view4 = [(CKInlineReplyChatController *)self view];
    [view4 bounds];
    v11 = [(CKInlineReplyTransparentBlurBackgroundView *)v13 initWithFrame:?];

    [(CKInlineReplyTransparentBlurBackgroundView *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    view5 = [(CKInlineReplyChatController *)self view];
    [view5 insertSubview:v11 atIndex:0];

    view6 = [(CKInlineReplyChatController *)self view];
    [(UIView *)v11 __ck_makeEdgesEqualTo:view6];

    [(CKInlineReplyChatController *)self setBlurParentView:v11];
  }
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = CKInlineReplyChatController;
  [(CKChatController *)&v14 viewDidLayoutSubviews];
  blurView = [(CKInlineReplyChatController *)self blurView];

  if (blurView)
  {
    view = [(CKInlineReplyChatController *)self view];
    [view bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    blurView2 = [(CKInlineReplyChatController *)self blurView];
    [blurView2 setFrame:{v6, v8, v10, v12}];
  }
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v27 = *MEMORY[0x1E69E9840];
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "viewIsAppearing", buf, 2u);
  }

  v22.receiver = self;
  v22.super_class = CKInlineReplyChatController;
  [(CKInlineReplyChatController *)&v22 viewIsAppearing:appearingCopy];
  isInitialLoad = [(CKInlineReplyChatController *)self isInitialLoad];
  v7 = IMLogHandleForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (isInitialLoad)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Performing initialLoad", buf, 2u);
    }

    interactionDelegate = [(CKInlineReplyChatController *)self interactionDelegate];
    [interactionDelegate inlineReplyControllerIsAppearing:self];

    isModal = [(CKInlineReplyChatController *)self isModal];
    isUnanimated = [(CKInlineReplyChatController *)self isUnanimated];
    v12 = isUnanimated;
    if (isModal || isUnanimated)
    {
      v15 = IMLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v24 = isModal;
        v25 = 2048;
        v26 = v12;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Calling _animateIn during initialLoad due to isModal: %ld isUnanimated:%ld", buf, 0x16u);
      }

      [(CKInlineReplyChatController *)self _animateIn:1];
      traitCollection = [(CKInlineReplyChatController *)self traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];

      entryView = [(CKChatController *)self entryView];
      v19 = entryView;
      if (userInterfaceStyle == 2)
      {
        v20 = 7;
      }

      else
      {
        v20 = 8;
      }

      [entryView setStyle:v20];

      [(CKInlineReplyChatController *)self setTargetFirstResponder:1];
      [(CKInlineReplyChatController *)self becomeFirstResponder];
    }

    else
    {
      inlineCollectionViewController = [(CKInlineReplyChatController *)self inlineCollectionViewController];
      [inlineCollectionViewController setAnimatingIn:1];

      if (UIAccessibilityIsReduceMotionEnabled())
      {
        collectionView = [(CKChatController *)self collectionView];
        [collectionView setAlpha:0.0];
      }

      else
      {
        collectionView = [(CKInlineReplyChatController *)self transcriptOverlayTransitionDelegate];
        _visibleGUIDs = [(CKInlineReplyChatController *)self _visibleGUIDs];
        [collectionView transcriptOverlayViewController:self visibleGUIDsDidChange:_visibleGUIDs];
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
    transitionContext = [(CKInlineReplyChatController *)self transitionContext];
    inlineCollectionViewController = [(CKInlineReplyChatController *)self inlineCollectionViewController];
    visibleChatItemToFrameMap = [transitionContext visibleChatItemToFrameMap];
    [inlineCollectionViewController setCollectionViewCurrentFramesForNextLayout:visibleChatItemToFrameMap];
    transitionContext2 = [(CKInlineReplyChatController *)self transitionContext];
    replyTransitionProperties = [transitionContext2 replyTransitionProperties];
    [inlineCollectionViewController setTransitionProperties:replyTransitionProperties];
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
    transitionContext = [(CKInlineReplyChatController *)self transitionContext];
    [transitionContext transcriptMarginInsets];
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
    transitionContext = [(CKInlineReplyChatController *)self transitionContext];
    [transitionContext transcriptSafeAreaInsets];
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
  transitionContext = [(CKInlineReplyChatController *)self transitionContext];
  [transitionContext parentCollectionViewFrame];
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
  transitionContext = [(CKInlineReplyChatController *)self transitionContext];
  [transitionContext parentCollectionViewFrame];
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

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "viewDidAppear", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = CKInlineReplyChatController;
  [(CKChatController *)&v6 viewDidAppear:appearCopy];
  if (![(CKInlineReplyChatController *)self isModal])
  {
    [(CKInlineReplyChatController *)self _animateIn:0];
  }
}

- (void)transcriptCollectionViewControllerDidSetChatItems:(id)items
{
  v5.receiver = self;
  v5.super_class = CKInlineReplyChatController;
  [(CKChatController *)&v5 transcriptCollectionViewControllerDidSetChatItems:items];
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

- (void)transcriptCollectionViewControllerRestingStateDidChange:(id)change
{
  changeCopy = change;
  v8.receiver = self;
  v8.super_class = CKInlineReplyChatController;
  [(CKCoreChatController *)&v8 transcriptCollectionViewControllerRestingStateDidChange:changeCopy];
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    if ([(CKInlineReplyChatController *)self animatingOut])
    {
      collectionView = [changeCopy collectionView];
      collectionViewLayout = [collectionView collectionViewLayout];
      isResting = [collectionViewLayout isResting];

      if (isResting)
      {
        [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
        [(CKInlineReplyChatController *)self _requestDismissal];
      }
    }
  }
}

- (void)transcriptCollectionViewController:(id)controller collectionViewContentSizeDidChange:(CGSize)change
{
  height = change.height;
  width = change.width;
  v21.receiver = self;
  v21.super_class = CKInlineReplyChatController;
  [(CKCoreChatController *)&v21 transcriptCollectionViewController:controller collectionViewContentSizeDidChange:?];
  view = [(CKInlineReplyChatController *)self view];
  collectionView = [(CKChatController *)self collectionView];
  [view setCollectionView:collectionView];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isOOPKeyboardEnabled = [mEMORY[0x1E69A8070] isOOPKeyboardEnabled];

  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 transcriptScrollToBottomDuration];
  v13 = v12;

  [(CKInlineReplyChatController *)self updateScrollGeometryForReason:@"InlineReplyContentCentering" withDuration:0 animationCurve:v13];
  v14 = width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8);
  if (!v14 && [(CKInlineReplyChatController *)self isInitialSizing])
  {
    if (isOOPKeyboardEnabled)
    {
      collectionView2 = [(CKChatController *)self collectionView];
      [collectionView2 endHoldingContentOffsetUpdatesForReason:@"InlineReplyChatController"];
    }

    transitionContext = [(CKInlineReplyChatController *)self transitionContext];
    presentWithKeyboard = [transitionContext presentWithKeyboard];

    if (presentWithKeyboard)
    {
      transitionContext2 = [(CKInlineReplyChatController *)self transitionContext];
      wantsModalPresentation = [transitionContext2 wantsModalPresentation];

      if (!wantsModalPresentation)
      {
        [(CKChatController *)self showKeyboardForReply];
        if (isOOPKeyboardEnabled)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      [(CKInlineReplyChatController *)self setTargetFirstResponder:1];
    }

    if (isOOPKeyboardEnabled)
    {
LABEL_13:
      [(CKInlineReplyChatController *)self _setInitialScrollPositionIfNecessary];
      [(CKInlineReplyChatController *)self setIsInitialSizing:0];
      goto LABEL_14;
    }

LABEL_12:
    collectionView3 = [(CKChatController *)self collectionView];
    [collectionView3 endHoldingContentOffsetUpdatesForReason:@"InlineReplyChatController"];

    goto LABEL_13;
  }

LABEL_14:
}

- (void)transcriptCollectionViewController:(id)controller didScroll:(CGPoint)scroll
{
  y = scroll.y;
  v6 = [CKUIBehavior sharedBehaviors:controller];
  [v6 topTranscriptSpace];
  v8 = y > v7;

  [(CKInlineReplyChatController *)self setShowNavbarKeyline:v8];
}

- (double)transcriptCollectionViewController:(id)controller targetAlphaForChatItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  result = 1.0;
  if (isKindOfClass)
  {
    traitCollection = [(CKInlineReplyChatController *)self traitCollection];
    isTranscriptBackgroundActive = [traitCollection isTranscriptBackgroundActive];

    result = 0.5;
    if (isTranscriptBackgroundActive)
    {
      return 1.0;
    }
  }

  return result;
}

- (void)_animateIn:(BOOL)in
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
  blurView = [(CKInlineReplyChatController *)self blurView];
  if (blurView)
  {

LABEL_10:
    v9 = +[CKUIBehavior sharedBehaviors];
    [v9 replyTranscriptBackgroundBlurAnimationTime];
    v11 = v10;

    transcriptOverlayTransitionDelegate = [(CKInlineReplyChatController *)self transcriptOverlayTransitionDelegate];
    [transcriptOverlayTransitionDelegate transcriptOverlayViewControllerWillAnimateIn:self];

    if ([(CKInlineReplyChatController *)self isModal])
    {
      navigationController = [(CKInlineReplyChatController *)self navigationController];
    }

    else
    {
      splitViewController = [(CKChatController *)self splitViewController];
      isCollapsed = [splitViewController isCollapsed];
      splitViewController2 = [(CKChatController *)self splitViewController];
      v17 = splitViewController2;
      if (isCollapsed)
      {
        [splitViewController2 masterViewController];
      }

      else
      {
        [splitViewController2 detailViewController];
      }
      navigationController = ;
    }

    navigationBar = [navigationController navigationBar];
    [navigationBar setNeedsLayout];

    navigationBar2 = [navigationController navigationBar];
    [navigationBar2 layoutIfNeeded];

    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __42__CKInlineReplyChatController__animateIn___block_invoke;
    aBlock[3] = &unk_1E72EBBC0;
    v30 = IsReduceMotionEnabled;
    aBlock[4] = self;
    v6 = navigationController;
    v29 = v6;
    v21 = _Block_copy(aBlock);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __42__CKInlineReplyChatController__animateIn___block_invoke_2;
    v27[3] = &unk_1E72EBA18;
    v27[4] = self;
    v22 = _Block_copy(v27);
    v23 = v22;
    if (in)
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

  blurParentView = [(CKInlineReplyChatController *)self blurParentView];

  if (blurParentView)
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

- (void)_animateOutWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Performing _animateOut", buf, 2u);
  }

  view = [(CKInlineReplyChatController *)self view];
  [view setUserInteractionEnabled:0];

  [(CKInlineReplyChatController *)self setAnimatingOut:1];
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  inlineCollectionViewController = [(CKInlineReplyChatController *)self inlineCollectionViewController];
  [inlineCollectionViewController setAnimatingOut:1];
  entryView = [(CKChatController *)self entryView];
  traitCollection = [(CKInlineReplyChatController *)self traitCollection];
  [entryView setEntryViewTraitCollection:traitCollection resetStyle:1];

  collectionView = [(CKChatController *)self collectionView];
  [collectionView beginHoldingContentOffsetUpdatesForReason:@"InlineReplyChatController"];

  [(CKScrollViewController *)self beginHoldingScrollGeometryUpdatesForReason:@"InlineReplyAnimateOut"];
  if (!IsReduceMotionEnabled)
  {
    _visibleChatItemsToScreenFrameMap = [(CKChatController *)self _visibleChatItemsToScreenFrameMap];
    transcriptOverlayTransitionDelegate = [(CKInlineReplyChatController *)self transcriptOverlayTransitionDelegate];
    v14 = [transcriptOverlayTransitionDelegate updatedFrameMapForTranscriptOverlayViewController:self];

    [inlineCollectionViewController setCollectionViewTargetFrames:v14];
    [inlineCollectionViewController setCollectionViewCurrentFramesForNextLayout:_visibleChatItemsToScreenFrameMap];
    [inlineCollectionViewController performCollectionViewReloadForAnimateOut];
  }

  v15 = +[CKUIBehavior sharedBehaviors];
  [v15 replyTranscriptBackgroundBlurAnimationTime];
  v17 = v16;

  transcriptOverlayTransitionDelegate2 = [(CKInlineReplyChatController *)self transcriptOverlayTransitionDelegate];
  [transcriptOverlayTransitionDelegate2 transcriptOverlayViewControllerWillAnimateOut:self];

  collectionView2 = [(CKChatController *)self collectionView];
  [collectionView2 setIgnoresReloadDataRequests:1];

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
  v21 = completionCopy;
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
  transitionContext = [(CKInlineReplyChatController *)self transitionContext];
  anchorChatItemGUID = [transitionContext anchorChatItemGUID];

  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  v5 = [collectionViewController chatItemForGUID:anchorChatItemGUID];

  if (UIAccessibilityIsReduceMotionEnabled() || (-[CKInlineReplyChatController transitionContext](self, "transitionContext"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 presentWithKeyboard], v6, v7))
  {
    collectionViewController2 = [(CKCoreChatController *)self collectionViewController];
    [collectionViewController2 scrollTranscriptToEntryViewInsertionTimeWithAnimation:0];
LABEL_4:

    goto LABEL_5;
  }

  if (v5)
  {
    v9 = *MEMORY[0x1E69DDCE0];
    view = [(CKInlineReplyChatController *)self view];
    [view safeAreaInsets];
    v12 = v11;

    collectionView = [(CKChatController *)self collectionView];
    [collectionView frame];
    v14 = CGRectGetHeight(v70) - (v9 + v12);

    collectionViewController2 = [(CKChatController *)self collectionView];
    collectionViewLayout = [collectionViewController2 collectionViewLayout];
    [collectionViewLayout collectionViewContentSize];
    v17 = v16;

    collectionViewController3 = [(CKCoreChatController *)self collectionViewController];
    v19 = collectionViewController3;
    if (v17 >= v14)
    {
      chatItems = [collectionViewController3 chatItems];
      v21 = [chatItems indexOfObject:v5];

      v19 = [MEMORY[0x1E696AC88] indexPathForRow:v21 inSection:0];
      collectionView2 = [(CKChatController *)self collectionView];
      collectionViewLayout2 = [collectionView2 collectionViewLayout];
      v24 = [collectionViewLayout2 layoutAttributesForItemAtIndexPath:v19];

      v25 = v24[44];
      v26 = v24[45];
      v27 = v24[46];
      v28 = v24[47];
      [collectionViewController2 bounds];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
      [collectionViewController2 contentInset];
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
      collectionViewController4 = [(CKCoreChatController *)self collectionViewController];
      chatItems2 = [collectionViewController4 chatItems];
      firstObject = [chatItems2 firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v50 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
        v51 = [collectionViewController2 layoutAttributesForItemAtIndexPath:v50];
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

      collectionView3 = [(CKChatController *)self collectionView];
      [collectionView3 __ck_bottomOffset];
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

      [collectionViewController2 setContentOffset:0 animated:{v67, v65}];
    }

    else
    {
      [collectionViewController3 scrollTranscriptToEntryViewInsertionTimeWithAnimation:0];
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

  transcriptOverlayTransitionDelegate = [(CKInlineReplyChatController *)self transcriptOverlayTransitionDelegate];
  [transcriptOverlayTransitionDelegate transcriptOverlayViewControllerDidAnimateOut:self];

  interactionDelegate = [(CKInlineReplyChatController *)self interactionDelegate];
  entryView = [(CKChatController *)self entryView];
  contentView = [entryView contentView];
  [interactionDelegate inlineReplyControllerRequestsDismissal:self presentKeyboard:{objc_msgSend(contentView, "isActive")}];
}

- (id)_visibleGUIDs
{
  collectionViewController = [(CKCoreChatController *)self collectionViewController];
  chatItems = [collectionViewController chatItems];
  v5 = [chatItems __imArrayByApplyingBlock:&__block_literal_global_42];

  collectionViewController2 = [(CKCoreChatController *)self collectionViewController];
  associatedChatItems = [collectionViewController2 associatedChatItems];
  v8 = [associatedChatItems __imArrayByApplyingBlock:&__block_literal_global_321];

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

- (id)parentViewControllerForPluginViewControllerInMessageEntryView:(id)view
{
  if ([(CKInlineReplyChatController *)self isModal])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(CKInlineReplyChatController *)self parentChatController];
  }

  return selfCopy;
}

- (void)stageAssetArchive:(id)archive skipShelf:(BOOL)shelf completionHandler:(id)handler
{
  v9.receiver = self;
  v9.super_class = CKInlineReplyChatController;
  [(CKChatController *)&v9 stageAssetArchive:archive skipShelf:shelf completionHandler:handler];
  deferredPresentationBlock = [(CKChatController *)self deferredPresentationBlock];

  if (deferredPresentationBlock)
  {
    v7 = dispatch_time(0, 200000000);
    deferredPresentationBlock2 = [(CKChatController *)self deferredPresentationBlock];
    dispatch_after(v7, MEMORY[0x1E69E96A0], deferredPresentationBlock2);

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