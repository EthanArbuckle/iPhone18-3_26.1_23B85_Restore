@interface CKTranscriptPreviewController
- (BOOL)shouldSuppressTranscriptBackgroundUI;
- (CKTranscriptPreviewController)initWithConversation:(id)a3 transcriptWidth:(double)a4 layoutMargins:(UIEdgeInsets)a5;
- (UIEdgeInsets)layoutMargins;
- (double)transcriptCollectionViewController:(id)a3 targetAlphaForChatItem:(id)a4;
- (id)textInputContextIdentifier;
- (id)transcriptCollectionViewControllerOuterEffectPresentingView:(id)a3;
- (void)_addChannelViewControllerForChannel:(id)a3;
- (void)_requestChannelAndDisplayBackgroundOnCompletion;
- (void)loadView;
- (void)transcriptCollectionViewController:(id)a3 collectionViewContentSizeDidChange:(CGSize)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation CKTranscriptPreviewController

- (CKTranscriptPreviewController)initWithConversation:(id)a3 transcriptWidth:(double)a4 layoutMargins:(UIEdgeInsets)a5
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v11 = a3;
  v15.receiver = self;
  v15.super_class = CKTranscriptPreviewController;
  v12 = [(CKTranscriptPreviewController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(CKTranscriptPreviewController *)v12 setConversation:v11];
    [(CKTranscriptPreviewController *)v13 setTranscriptWidth:a4];
    [(CKTranscriptPreviewController *)v13 setLayoutMargins:top, left, bottom, right];
    [(CKTranscriptPreviewController *)v13 setIsInitialLayout:1];
  }

  return v13;
}

- (void)loadView
{
  v3 = [CKGradientReferenceView alloc];
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 bounds];
  v8 = [(CKGradientReferenceView *)v3 initWithFrame:?];

  [(CKGradientReferenceView *)v8 setAutoresizingMask:18];
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 theme];
  v7 = [v6 transcriptBackgroundColor];
  [(CKGradientReferenceView *)v8 setBackgroundColor:v7];

  [(CKTranscriptPreviewController *)self setView:v8];
}

- (void)_addChannelViewControllerForChannel:(id)a3
{
  gotLoadHelper_x8__OBJC_CLASS___PRUISPosterChannelViewController(v3);
  v6 = *(v5 + 168);
  v8 = v7;
  v32 = [[v6 alloc] initWithChannel:v8 purpose:@"RenderTranscriptBackgroundPreview"];
  [v32 setRenderingMode:3];
  v9 = [v8 posterConfiguration];

  [CKPRSPosterConfiguration ck_luminanceInConfiguration:v9];
  v11 = v10;
  v12 = +[CKUIBehavior sharedBehaviors];
  -[CKTranscriptPreviewController setOverrideUserInterfaceStyle:](self, "setOverrideUserInterfaceStyle:", [v12 contentDerivedUserInterfaceStyleForLuminance:v11]);
  v13 = [(CKTranscriptPreviewController *)self traitOverrides];
  [v13 setNSIntegerValue:objc_msgSend(MEMORY[0x1E695E118] forTrait:{"integerValue"), objc_opt_class()}];

  v14 = [(CKTranscriptPreviewController *)self traitOverrides];
  [v14 setCGFloatValue:objc_opt_class() forTrait:v11];

  v15 = [MEMORY[0x1E69DC888] clearColor];
  v16 = [(CKTranscriptPreviewController *)self transcriptCollectionViewController];
  [v16 setTranscriptBackgroundColor:v15];

  v17 = [(CKTranscriptPreviewController *)self transcriptCollectionViewController];
  [v17 setTranscriptBackgroundLuminance:v11];

  [(CKTranscriptPreviewController *)self addChildViewController:v32];
  v18 = [(CKTranscriptPreviewController *)self view];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = [v32 view];
  [v27 setFrame:{v20, v22, v24, v26}];

  v28 = [v32 view];
  [v28 setAutoresizingMask:18];

  v29 = [(CKTranscriptPreviewController *)self view];
  v30 = [v32 view];
  v31 = [(CKTranscriptPreviewController *)self collectionView];
  [v29 insertSubview:v30 belowSubview:v31];

  [v32 didMoveToParentViewController:self];
}

- (void)_requestChannelAndDisplayBackgroundOnCompletion
{
  v3 = [(CKTranscriptPreviewController *)self conversation];
  v4 = [v3 chat];
  v5 = [v4 guid];
  v6 = +[CKTranscriptBackgroundChannelController sharedTranscriptBackgroundChannelController];
  v7 = [v4 deviceIndependentID];
  v8 = [(CKTranscriptPreviewController *)self conversation];
  v9 = [v8 transcriptBackgroundGUID];

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__CKTranscriptPreviewController__requestChannelAndDisplayBackgroundOnCompletion__block_invoke;
  v10[3] = &unk_1E72ECDD0;
  objc_copyWeak(&v11, &location);
  [v6 loadChannelAsyncForChatGUID:v5 deviceIndependentID:v7 backgroundGUID:v9 createsChannelIfNeeded:0 completion:v10];
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
    v3 = [(CKTranscriptPreviewController *)self view];
    [v3 bounds];
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

    v13 = [(CKTranscriptPreviewController *)self view];
    [v13 bounds];
    Height = CGRectGetHeight(v35);

    v15 = [CKTranscriptCollectionViewController alloc];
    v16 = [(CKTranscriptPreviewController *)self conversation];
    [(CKTranscriptPreviewController *)self layoutMargins];
    v21 = [(CKTranscriptCollectionViewController *)v15 initWithConversation:v16 delegate:self balloonMaxWidth:v12 marginInsets:v17 collectionViewSize:v18, v19, v20, Width, Height];

    [(CKTranscriptPreviewController *)self setTranscriptCollectionViewController:v21];
    v22 = [(CKTranscriptPreviewController *)self view];
    [(CKTranscriptCollectionViewController *)v21 setGradientReferenceView:v22];

    v23 = +[CKUIBehavior sharedBehaviors];
    -[CKTranscriptCollectionViewController setShouldLoadDefaultConversationViewingMessageCountOnAppear:](v21, "setShouldLoadDefaultConversationViewingMessageCountOnAppear:", [v23 shouldLoadInitialViewingMessageCount]);

    v24 = [(CKTranscriptCollectionViewController *)v21 collectionView];
    [v24 setUserInteractionEnabled:0];
    [v24 setAutoresizingMask:18];
    [(CKTranscriptPreviewController *)self setCollectionView:v24];
    [(CKTranscriptPreviewController *)self addChildViewController:v21];
    v25 = [(CKTranscriptPreviewController *)self view];
    [v25 addSubview:v24];

    v26 = [(CKTranscriptPreviewController *)self view];
    [v26 bounds];
    [v24 setFrame:?];

    [(CKTranscriptPreviewController *)self setIsInitialLayout:0];
    [(CKTranscriptCollectionViewController *)v21 scrollTranscriptToEntryViewInsertionTimeWithAnimation:0];
    v27 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v28 = [v27 isTranscriptBackgroundsEnabled];

    if (v28)
    {
      v29 = [(CKTranscriptPreviewController *)self conversation];
      if (![(CKTranscriptPreviewController *)self shouldSuppressTranscriptBackgroundUI])
      {
        v30 = [v29 hasTranscriptBackground];
        v31 = [(CKTranscriptPreviewController *)self isPreparingToDisplayTranscriptBackground];
        if (v30)
        {
          if (!v31)
          {
            [(CKTranscriptPreviewController *)self setIsPreparingToDisplayTranscriptBackground:1];
            [(CKTranscriptPreviewController *)self _requestChannelAndDisplayBackgroundOnCompletion];
          }
        }
      }
    }
  }

  v32 = [(CKTranscriptPreviewController *)self collectionView];
  [v32 __ck_scrollToBottom:0];
}

- (BOOL)shouldSuppressTranscriptBackgroundUI
{
  v2 = [(CKTranscriptPreviewController *)self conversation];
  v3 = [CKCoreChatController shouldSuppressTranscriptBackgroundEditingForConversation:v2];

  return v3;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CKTranscriptPreviewController;
  [(CKViewController *)&v4 viewDidAppear:a3];
  v3 = [MEMORY[0x1E695DF00] date];
  [CKPowerLog sendTranscriptVisibilityChangedEvent:v3 event:0 metadata:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CKTranscriptPreviewController;
  [(CKViewController *)&v4 viewDidDisappear:a3];
  v3 = [MEMORY[0x1E695DF00] date];
  [CKPowerLog sendTranscriptVisibilityChangedEvent:v3 event:1 metadata:0];
}

- (id)textInputContextIdentifier
{
  v2 = [(CKTranscriptPreviewController *)self conversation];
  v3 = [v2 deviceIndependentID];
  v4 = CKTextInputIdentifier();

  return v4;
}

- (void)transcriptCollectionViewController:(id)a3 collectionViewContentSizeDidChange:(CGSize)a4
{
  v4 = a3;
  v5 = [v4 gradientReferenceView];
  [v5 bounds];
  [v5 setGradientFrame:?];
  [v4 scrollTranscriptToEntryViewInsertionTimeWithAnimation:0];
}

- (double)transcriptCollectionViewController:(id)a3 targetAlphaForChatItem:(id)a4
{
  v5 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  result = 1.0;
  if (isKindOfClass)
  {
    v8 = [(CKTranscriptPreviewController *)self traitCollection];
    v9 = [v8 isTranscriptBackgroundActive];

    result = 0.5;
    if (v9)
    {
      return 1.0;
    }
  }

  return result;
}

- (id)transcriptCollectionViewControllerOuterEffectPresentingView:(id)a3
{
  v3 = [a3 view];
  v4 = [v3 window];

  return v4;
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