@interface CKTranscriptPreviewController
- (BOOL)shouldSuppressTranscriptBackgroundUI;
- (CKTranscriptPreviewController)initWithConversation:(id)conversation transcriptWidth:(double)width layoutMargins:(UIEdgeInsets)margins;
- (UIEdgeInsets)layoutMargins;
- (double)transcriptCollectionViewController:(id)controller targetAlphaForChatItem:(id)item;
- (id)textInputContextIdentifier;
- (id)transcriptCollectionViewControllerOuterEffectPresentingView:(id)view;
- (void)_addChannelViewControllerForChannel:(id)channel;
- (void)_requestChannelAndDisplayBackgroundOnCompletion;
- (void)loadView;
- (void)transcriptCollectionViewController:(id)controller collectionViewContentSizeDidChange:(CGSize)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
@end

@implementation CKTranscriptPreviewController

- (CKTranscriptPreviewController)initWithConversation:(id)conversation transcriptWidth:(double)width layoutMargins:(UIEdgeInsets)margins
{
  right = margins.right;
  bottom = margins.bottom;
  left = margins.left;
  top = margins.top;
  conversationCopy = conversation;
  v15.receiver = self;
  v15.super_class = CKTranscriptPreviewController;
  v12 = [(CKTranscriptPreviewController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(CKTranscriptPreviewController *)v12 setConversation:conversationCopy];
    [(CKTranscriptPreviewController *)v13 setTranscriptWidth:width];
    [(CKTranscriptPreviewController *)v13 setLayoutMargins:top, left, bottom, right];
    [(CKTranscriptPreviewController *)v13 setIsInitialLayout:1];
  }

  return v13;
}

- (void)loadView
{
  v3 = [CKGradientReferenceView alloc];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v8 = [(CKGradientReferenceView *)v3 initWithFrame:?];

  [(CKGradientReferenceView *)v8 setAutoresizingMask:18];
  v5 = +[CKUIBehavior sharedBehaviors];
  theme = [v5 theme];
  transcriptBackgroundColor = [theme transcriptBackgroundColor];
  [(CKGradientReferenceView *)v8 setBackgroundColor:transcriptBackgroundColor];

  [(CKTranscriptPreviewController *)self setView:v8];
}

- (void)_addChannelViewControllerForChannel:(id)channel
{
  gotLoadHelper_x8__OBJC_CLASS___PRUISPosterChannelViewController(v3);
  v6 = *(v5 + 168);
  v8 = v7;
  v32 = [[v6 alloc] initWithChannel:v8 purpose:@"RenderTranscriptBackgroundPreview"];
  [v32 setRenderingMode:3];
  posterConfiguration = [v8 posterConfiguration];

  [CKPRSPosterConfiguration ck_luminanceInConfiguration:posterConfiguration];
  v11 = v10;
  v12 = +[CKUIBehavior sharedBehaviors];
  -[CKTranscriptPreviewController setOverrideUserInterfaceStyle:](self, "setOverrideUserInterfaceStyle:", [v12 contentDerivedUserInterfaceStyleForLuminance:v11]);
  traitOverrides = [(CKTranscriptPreviewController *)self traitOverrides];
  [traitOverrides setNSIntegerValue:objc_msgSend(MEMORY[0x1E695E118] forTrait:{"integerValue"), objc_opt_class()}];

  traitOverrides2 = [(CKTranscriptPreviewController *)self traitOverrides];
  [traitOverrides2 setCGFloatValue:objc_opt_class() forTrait:v11];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  transcriptCollectionViewController = [(CKTranscriptPreviewController *)self transcriptCollectionViewController];
  [transcriptCollectionViewController setTranscriptBackgroundColor:clearColor];

  transcriptCollectionViewController2 = [(CKTranscriptPreviewController *)self transcriptCollectionViewController];
  [transcriptCollectionViewController2 setTranscriptBackgroundLuminance:v11];

  [(CKTranscriptPreviewController *)self addChildViewController:v32];
  view = [(CKTranscriptPreviewController *)self view];
  [view bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  view2 = [v32 view];
  [view2 setFrame:{v20, v22, v24, v26}];

  view3 = [v32 view];
  [view3 setAutoresizingMask:18];

  view4 = [(CKTranscriptPreviewController *)self view];
  view5 = [v32 view];
  collectionView = [(CKTranscriptPreviewController *)self collectionView];
  [view4 insertSubview:view5 belowSubview:collectionView];

  [v32 didMoveToParentViewController:self];
}

- (void)_requestChannelAndDisplayBackgroundOnCompletion
{
  conversation = [(CKTranscriptPreviewController *)self conversation];
  chat = [conversation chat];
  guid = [chat guid];
  v6 = +[CKTranscriptBackgroundChannelController sharedTranscriptBackgroundChannelController];
  deviceIndependentID = [chat deviceIndependentID];
  conversation2 = [(CKTranscriptPreviewController *)self conversation];
  transcriptBackgroundGUID = [conversation2 transcriptBackgroundGUID];

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__CKTranscriptPreviewController__requestChannelAndDisplayBackgroundOnCompletion__block_invoke;
  v10[3] = &unk_1E72ECDD0;
  objc_copyWeak(&v11, &location);
  [v6 loadChannelAsyncForChatGUID:guid deviceIndependentID:deviceIndependentID backgroundGUID:transcriptBackgroundGUID createsChannelIfNeeded:0 completion:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __80__CKTranscriptPreviewController__requestChannelAndDisplayBackgroundOnCompletion__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__CKTranscriptPreviewController__requestChannelAndDisplayBackgroundOnCompletion__block_invoke_2;
  block[3] = &unk_1E72EC128;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  objc_copyWeak(&v12, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v12);
}

void __80__CKTranscriptPreviewController__requestChannelAndDisplayBackgroundOnCompletion__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _addChannelViewControllerForChannel:*(a1 + 32)];
  }

  else
  {
    v2 = IMLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __80__CKTranscriptPreviewController__requestChannelAndDisplayBackgroundOnCompletion__block_invoke_2_cold_1(a1, v2);
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v33.receiver = self;
  v33.super_class = CKTranscriptPreviewController;
  [(CKTranscriptPreviewController *)&v33 viewDidLayoutSubviews];
  if ([(CKTranscriptPreviewController *)self isInitialLayout])
  {
    view = [(CKTranscriptPreviewController *)self view];
    [view bounds];
    Width = CGRectGetWidth(v34);

    [(CKTranscriptPreviewController *)self transcriptWidth];
    if (Width >= v5)
    {
      Width = v5;
    }

    v6 = +[CKUIBehavior sharedBehaviors];
    [(CKTranscriptPreviewController *)self layoutMargins];
    [v6 balloonMaxWidthForTranscriptWidth:1 marginInsets:0 shouldShowPluginButtons:0 shouldShowCharacterCount:0 shouldCoverSendButton:Width isStewieMode:{v7, v8, v9, v10}];
    v12 = v11;

    view2 = [(CKTranscriptPreviewController *)self view];
    [view2 bounds];
    Height = CGRectGetHeight(v35);

    v15 = [CKTranscriptCollectionViewController alloc];
    conversation = [(CKTranscriptPreviewController *)self conversation];
    [(CKTranscriptPreviewController *)self layoutMargins];
    height = [(CKTranscriptCollectionViewController *)v15 initWithConversation:conversation delegate:self balloonMaxWidth:v12 marginInsets:v17 collectionViewSize:v18, v19, v20, Width, Height];

    [(CKTranscriptPreviewController *)self setTranscriptCollectionViewController:height];
    view3 = [(CKTranscriptPreviewController *)self view];
    [(CKTranscriptCollectionViewController *)height setGradientReferenceView:view3];

    v23 = +[CKUIBehavior sharedBehaviors];
    -[CKTranscriptCollectionViewController setShouldLoadDefaultConversationViewingMessageCountOnAppear:](height, "setShouldLoadDefaultConversationViewingMessageCountOnAppear:", [v23 shouldLoadInitialViewingMessageCount]);

    collectionView = [(CKTranscriptCollectionViewController *)height collectionView];
    [collectionView setUserInteractionEnabled:0];
    [collectionView setAutoresizingMask:18];
    [(CKTranscriptPreviewController *)self setCollectionView:collectionView];
    [(CKTranscriptPreviewController *)self addChildViewController:height];
    view4 = [(CKTranscriptPreviewController *)self view];
    [view4 addSubview:collectionView];

    view5 = [(CKTranscriptPreviewController *)self view];
    [view5 bounds];
    [collectionView setFrame:?];

    [(CKTranscriptPreviewController *)self setIsInitialLayout:0];
    [(CKTranscriptCollectionViewController *)height scrollTranscriptToEntryViewInsertionTimeWithAnimation:0];
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isTranscriptBackgroundsEnabled = [mEMORY[0x1E69A8070] isTranscriptBackgroundsEnabled];

    if (isTranscriptBackgroundsEnabled)
    {
      conversation2 = [(CKTranscriptPreviewController *)self conversation];
      if (![(CKTranscriptPreviewController *)self shouldSuppressTranscriptBackgroundUI])
      {
        hasTranscriptBackground = [conversation2 hasTranscriptBackground];
        isPreparingToDisplayTranscriptBackground = [(CKTranscriptPreviewController *)self isPreparingToDisplayTranscriptBackground];
        if (hasTranscriptBackground)
        {
          if (!isPreparingToDisplayTranscriptBackground)
          {
            [(CKTranscriptPreviewController *)self setIsPreparingToDisplayTranscriptBackground:1];
            [(CKTranscriptPreviewController *)self _requestChannelAndDisplayBackgroundOnCompletion];
          }
        }
      }
    }
  }

  collectionView2 = [(CKTranscriptPreviewController *)self collectionView];
  [collectionView2 __ck_scrollToBottom:0];
}

- (BOOL)shouldSuppressTranscriptBackgroundUI
{
  conversation = [(CKTranscriptPreviewController *)self conversation];
  v3 = [CKCoreChatController shouldSuppressTranscriptBackgroundEditingForConversation:conversation];

  return v3;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CKTranscriptPreviewController;
  [(CKViewController *)&v4 viewDidAppear:appear];
  date = [MEMORY[0x1E695DF00] date];
  [CKPowerLog sendTranscriptVisibilityChangedEvent:date event:0 metadata:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CKTranscriptPreviewController;
  [(CKViewController *)&v4 viewDidDisappear:disappear];
  date = [MEMORY[0x1E695DF00] date];
  [CKPowerLog sendTranscriptVisibilityChangedEvent:date event:1 metadata:0];
}

- (id)textInputContextIdentifier
{
  conversation = [(CKTranscriptPreviewController *)self conversation];
  deviceIndependentID = [conversation deviceIndependentID];
  v4 = CKTextInputIdentifier();

  return v4;
}

- (void)transcriptCollectionViewController:(id)controller collectionViewContentSizeDidChange:(CGSize)change
{
  controllerCopy = controller;
  gradientReferenceView = [controllerCopy gradientReferenceView];
  [gradientReferenceView bounds];
  [gradientReferenceView setGradientFrame:?];
  [controllerCopy scrollTranscriptToEntryViewInsertionTimeWithAnimation:0];
}

- (double)transcriptCollectionViewController:(id)controller targetAlphaForChatItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  result = 1.0;
  if (isKindOfClass)
  {
    traitCollection = [(CKTranscriptPreviewController *)self traitCollection];
    isTranscriptBackgroundActive = [traitCollection isTranscriptBackgroundActive];

    result = 0.5;
    if (isTranscriptBackgroundActive)
    {
      return 1.0;
    }
  }

  return result;
}

- (id)transcriptCollectionViewControllerOuterEffectPresentingView:(id)view
{
  view = [view view];
  window = [view window];

  return window;
}

- (UIEdgeInsets)layoutMargins
{
  top = self->_layoutMargins.top;
  left = self->_layoutMargins.left;
  bottom = self->_layoutMargins.bottom;
  right = self->_layoutMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

void __80__CKTranscriptPreviewController__requestChannelAndDisplayBackgroundOnCompletion__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Unable to get channel even though a channel was expected. %@", &v3, 0xCu);
}

@end