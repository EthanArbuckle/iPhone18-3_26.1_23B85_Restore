@interface CKFullScreenBalloonViewControllerPhone
- (BOOL)shouldPresentAsTapbackKeyboardInput;
- (CGRect)messageHightlightButtonBalloonViewFrame:(id)frame;
- (CGRect)messageHightlightButtonReplyButtonFrame:(id)frame;
- (CGRect)preferredTapbackLayoutFrame;
- (CGRect)votingViewTargetFrame;
- (CKFullScreenBalloonViewControllerPhone)initWithChatItem:(id)item interfaceActions:(id)actions displayConfiguration:(id)configuration delegate:(id)delegate;
- (char)messageHightlightButtonTranscriptOrientation:(id)orientation;
- (double)_balloonOffsetFromTranscriptParentBalloon;
- (double)balloonMinimumTopOffset:(CGRect)offset;
- (double)maximumAllowedBalloonOriginY;
- (double)minimumAllowedBalloonOriginY:(CGRect)y;
- (double)pickerBalloonParentViewY;
- (double)replyButtonHeightFromBalloon;
- (double)replyButtonVerticalOffset;
- (id)_parentStickerChatItemGUIDToMirrorStickerViewDictionary;
- (id)contextualCKChatItemsForTapbackPickerViewController:(id)controller;
- (id)generateDuplicateBalloonViewForChatItem:(id)item;
- (id)smartEmojiResponses:(id)responses chatItem:(id)item;
- (id)tapbackPickerBalloonParentViewTapbackBackingBalloon:(id)balloon;
- (id)tapbackPickerBalloonParentViewTapbackPileView:(id)view;
- (id)tapbackPickerBalloonParentViewTapbackTintableMessageBalloon:(id)balloon;
- (id)textInputContextIdentifier:(id)identifier;
- (unint64_t)supportedInterfaceOrientations;
- (void)_presentAccessoryViews;
- (void)_presentOverlayBalloonView;
- (void)_presentStickersIfNeeded;
- (void)_presentTapbackAttributionIfNeeded;
- (void)_presentTapbackPickerIfNeeded;
- (void)_revealTintAnimated:(BOOL)animated;
- (void)_scrollTranscriptToBalloonView:(double)view completion:(id)completion;
- (void)_stickerDetailViewControllerCloseButtonPressed:(id)pressed;
- (void)_updateBoundsCenterFrameForMirrorAssociatedItemView:(id)view parentStickerChatItem:(id)item;
- (void)_updateKeyboardSnapshotIfNeeded;
- (void)addHighlightButtonIfNeeded;
- (void)beginDismissal;
- (void)dealloc;
- (void)initializeTapbackPicker;
- (void)insertSticker:(id)sticker;
- (void)keyCommandSelectTapback:(id)tapback;
- (void)keyboardWillShow:(id)show;
- (void)livePhotoView:(id)view didEndPlaybackWithStyle:(int64_t)style;
- (void)loadLivePhotoBalloonViewIfNeeded;
- (void)messageHightlightButtonDidFinishAnimating:(id)animating;
- (void)messageHightlightButtonWasClicked:(id)clicked;
- (void)performClosingAnimationsAnimated:(BOOL)animated withSendAnimation:(BOOL)animation withCompletion:(id)completion;
- (void)performInitialAnimations;
- (void)presentStickerDetailControllerWithStickers:(id)stickers;
- (void)sendTouchBarTapback:(int64_t)tapback;
- (void)setStickerVisibility:(BOOL)visibility forStickerChatItemGUID:(id)d;
- (void)setupReplyButton;
- (void)showAllStickers;
- (void)showTapbackPicker;
- (void)stickerDetailViewController:(id)controller deletedStickerWithTransferGUID:(id)d;
- (void)stickerDetailViewController:(id)controller didRequestSaveSticker:(id)sticker;
- (void)stickerDetailViewController:(id)controller selectedStickerPackWithAdamID:(id)d;
- (void)tapbackAttributionView:(id)view didTapToSaveSticker:(id)sticker;
- (void)tapbackPickerBalloonParentView:(id)view didInsertTapback:(id)tapback;
- (void)tapbackPickerBalloonParentView:(id)view requestedPresentPlugin:(id)plugin payloadID:(id)d;
- (void)tapbackPickerViewController:(id)controller didDeselectTapback:(id)tapback;
- (void)tapbackPickerViewController:(id)controller didSelectTapback:(id)tapback;
- (void)updateBalloonViewFrame;
- (void)updateReplyButtonColor;
- (void)updateReplyButtonSizeAndLocation:(CGRect)location layoutRelativeToHighlightButton:(BOOL)button;
- (void)updateReplyButtonSizeAndLocationForBalloonViewFrameIfNeeded:(CGRect)needed;
- (void)updateStickersAnimated:(BOOL)animated;
- (void)updateTintViewAlpha;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CKFullScreenBalloonViewControllerPhone

- (void)dealloc
{
  balloonView = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
  if (balloonView)
  {
    v4 = balloonView;
    balloonView2 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      balloonView3 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
      [balloonView3 removeFromSuperview];
      CKBalloonViewReuse(balloonView3);
      [(CKFullScreenBalloonViewControllerPhone *)self setBalloonView:0];
    }
  }

  if ([MEMORY[0x1E69DCBB8] usesInputSystemUI])
  {
    [MEMORY[0x1E69DCBB8] setKeyboardAlpha:1.0];
  }

  v8.receiver = self;
  v8.super_class = CKFullScreenBalloonViewControllerPhone;
  [(CKFullScreenBalloonViewController *)&v8 dealloc];
}

- (CKFullScreenBalloonViewControllerPhone)initWithChatItem:(id)item interfaceActions:(id)actions displayConfiguration:(id)configuration delegate:(id)delegate
{
  v20 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  actionsCopy = actions;
  configurationCopy = configuration;
  delegateCopy = delegate;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = itemCopy;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "[Tapbacks] Creating fullscreen balloon for chatItem = %@", &v18, 0xCu);
    }
  }

  v15 = [(CKFullScreenBalloonViewController *)self initWithChatItem:itemCopy displayConfiguration:configurationCopy delegate:delegateCopy];
  v16 = v15;
  if (v15)
  {
    [(CKFullScreenBalloonViewControllerPhone *)v15 setInterfaceActions:actionsCopy];
  }

  return v16;
}

- (void)loadLivePhotoBalloonViewIfNeeded
{
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    return;
  }

  chatItem = [(CKFullScreenBalloonViewController *)self chatItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return;
  }

  chatItem2 = [(CKFullScreenBalloonViewController *)self chatItem];
  mediaObject = [chatItem2 mediaObject];
  objc_opt_class();
  v6 = objc_opt_isKindOfClass();

  if (v6)
  {
    mediaObject2 = [chatItem2 mediaObject];
    if ([mediaObject2 isIrisAsset])
    {

      if (mediaObject2)
      {
        chatItem3 = [(CKFullScreenBalloonViewController *)self chatItem];
        objc_opt_class();
        v9 = objc_opt_isKindOfClass();

        supplementaryLayoutContext = [(CKFullScreenBalloonViewController *)self supplementaryLayoutContext];
        objc_opt_class();
        objc_opt_isKindOfClass();

        v11 = objc_alloc(objc_opt_class());
        balloonView = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
        [balloonView ck_identityTransformFrame];
        v13 = [v11 initWithFrame:?];

        chatItem4 = [(CKFullScreenBalloonViewController *)self chatItem];
        [v13 configureForMessagePart:chatItem4];

        [v13 setCanUseOpaqueMask:0];
        livePhotoView = [v13 livePhotoView];
        [livePhotoView setDelegate:self];

        [v13 setAlpha:0.0];
        if ([(CKFullScreenBalloonViewController *)self shouldHideBalloonTail])
        {
          [v13 setHasTail:0];
        }

        [v13 setNeedsPrepareForDisplay];
        [v13 prepareForDisplayIfNeeded];
        [v13 setNeedsLayout];
        [v13 layoutIfNeeded];
        [(CKFullScreenBalloonViewControllerPhone *)self setLivePhotoBalloonView:v13];
        view = [(CKFullScreenBalloonViewControllerPhone *)self view];
        livePhotoBalloonView = [(CKFullScreenBalloonViewControllerPhone *)self livePhotoBalloonView];
        [view addSubview:livePhotoBalloonView];

        if (v9)
        {
          chatItem5 = [(CKFullScreenBalloonViewController *)self chatItem];
          layoutRecipe = [chatItem5 layoutRecipe];
          [layoutRecipe rotation];
          v21 = v20;

          if (v21 != 0.0)
          {
            memset(&v25, 0, sizeof(v25));
            v22 = *(MEMORY[0x1E695EFD0] + 16);
            *&v24.a = *MEMORY[0x1E695EFD0];
            *&v24.c = v22;
            *&v24.tx = *(MEMORY[0x1E695EFD0] + 32);
            CGAffineTransformRotate(&v25, &v24, v21 * 3.14159265 / 180.0);
            v24 = v25;
            [v13 setTransform:&v24];
          }
        }

        [v13 setUserInteractionEnabled:0];
      }

      return;
    }
  }
}

- (void)performInitialAnimations
{
  balloonView = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
  [balloonView setUserInteractionEnabled:0];

  [(CKFullScreenBalloonViewControllerPhone *)self _updateKeyboardSnapshotIfNeeded];
  tintView = [(CKFullScreenBalloonViewController *)self tintView];
  [tintView setAlpha:0.0];

  [(CKFullScreenBalloonViewControllerPhone *)self _balloonOffsetFromTranscriptParentBalloon];
  v6 = v5;
  [(CKFullScreenBalloonViewControllerPhone *)self setBalloonYOffsetFromTranscript:?];
  if (v6 == 0.0)
  {
    [(CKFullScreenBalloonViewControllerPhone *)self _revealTintAnimated:1];
    [(CKFullScreenBalloonViewControllerPhone *)self _presentAccessoryViews];
    [(CKFullScreenBalloonViewController *)self setFollowsParentBalloonView:1];
    delegate = [(CKFullScreenBalloonViewController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(CKFullScreenBalloonViewController *)self delegate];
      [delegate2 fullScreenBalloonViewControllerDidCompleteInitialAnimation:self];
    }
  }

  else
  {
    displayConfiguration = [(CKFullScreenBalloonViewController *)self displayConfiguration];
    shouldPresentTintViewBeforeScrolling = [displayConfiguration shouldPresentTintViewBeforeScrolling];

    if (shouldPresentTintViewBeforeScrolling)
    {
      [(CKFullScreenBalloonViewControllerPhone *)self _revealTintAnimated:1];
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__CKFullScreenBalloonViewControllerPhone_performInitialAnimations__block_invoke;
    v12[3] = &unk_1E72EBA18;
    v12[4] = self;
    [(CKFullScreenBalloonViewControllerPhone *)self _scrollTranscriptToBalloonView:v12 completion:v6];
  }
}

void __66__CKFullScreenBalloonViewControllerPhone_performInitialAnimations__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) displayConfiguration];
  v3 = [v2 shouldPresentTintViewBeforeScrolling];

  if ((v3 & 1) == 0)
  {
    [*(a1 + 32) _revealTintAnimated:1];
  }

  [*(a1 + 32) _presentAccessoryViews];
  [*(a1 + 32) setFollowsParentBalloonView:1];
  v4 = [*(a1 + 32) delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [*(a1 + 32) delegate];
    [v6 fullScreenBalloonViewControllerDidCompleteInitialAnimation:*(a1 + 32)];
  }
}

- (void)_scrollTranscriptToBalloonView:(double)view completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  delegate = [(CKFullScreenBalloonViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [MEMORY[0x1E696AD98] numberWithDouble:view];
        *buf = 138412290;
        v18 = v10;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "[Tapbacks] verticallyScrollTranscriptByAmount: %@", buf, 0xCu);
      }
    }

    delegate2 = [(CKFullScreenBalloonViewController *)self delegate];
    displayConfiguration = [(CKFullScreenBalloonViewController *)self displayConfiguration];
    [displayConfiguration scrollDuration];
    v14 = v13;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __84__CKFullScreenBalloonViewControllerPhone__scrollTranscriptToBalloonView_completion___block_invoke;
    v15[3] = &unk_1E72EBDB8;
    v16 = completionCopy;
    [delegate2 fullScreenBalloonViewController:self verticallyScrollTranscriptByAmount:1 animated:v15 duration:view completion:v14];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

uint64_t __84__CKFullScreenBalloonViewControllerPhone__scrollTranscriptToBalloonView_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_presentAccessoryViews
{
  [(CKFullScreenBalloonViewControllerPhone *)self _presentTapbackAttributionIfNeeded];
  [(CKFullScreenBalloonViewControllerPhone *)self _presentOverlayBalloonView];
  [(CKFullScreenBalloonViewControllerPhone *)self _presentTapbackPickerIfNeeded];

  [(CKFullScreenBalloonViewControllerPhone *)self _presentStickersIfNeeded];
}

- (void)_presentTapbackAttributionIfNeeded
{
  if ([(CKFullScreenBalloonViewController *)self shouldShowTapbackAttribution])
  {
    attributionView = [(CKFullScreenBalloonViewControllerPhone *)self attributionView];
    [attributionView present];
  }
}

- (void)_presentOverlayBalloonView
{
  livePhotoBalloonView = [(CKFullScreenBalloonViewControllerPhone *)self livePhotoBalloonView];

  if (livePhotoBalloonView)
  {
    livePhotoBalloonView2 = [(CKFullScreenBalloonViewControllerPhone *)self livePhotoBalloonView];
    [livePhotoBalloonView2 setAlpha:1.0];

    livePhotoBalloonView3 = [(CKFullScreenBalloonViewControllerPhone *)self livePhotoBalloonView];
    livePhotoView = [livePhotoBalloonView3 livePhotoView];
    [livePhotoView startPlaybackWithStyle:1];
  }

  else
  {
    balloonView = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
    [balloonView setAlpha:1.0];

    livePhotoBalloonView3 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
    [livePhotoBalloonView3 setHidden:0];
  }
}

- (void)_presentTapbackPickerIfNeeded
{
  if ([(CKFullScreenBalloonViewController *)self shouldShowTapbackPicker])
  {

    [(CKFullScreenBalloonViewControllerPhone *)self showTapbackPicker];
  }
}

- (void)_presentStickersIfNeeded
{
  displayConfiguration = [(CKFullScreenBalloonViewController *)self displayConfiguration];
  shouldShowStickers = [displayConfiguration shouldShowStickers];

  if (shouldShowStickers)
  {

    [(CKFullScreenBalloonViewControllerPhone *)self updateStickersAnimated:1];
  }
}

- (double)_balloonOffsetFromTranscriptParentBalloon
{
  delegate = [(CKFullScreenBalloonViewController *)self delegate];
  chatItem = [(CKFullScreenBalloonViewController *)self chatItem];
  [delegate fullScreenBalloonViewController:self balloonFrameForChatItem:chatItem];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  balloonView = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
  [balloonView ck_identityTransformFrame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v24.origin.x = v15;
  v24.origin.y = v17;
  v24.size.width = v19;
  v24.size.height = v21;
  v25.origin.x = v6;
  v25.origin.y = v8;
  v25.size.width = v10;
  v25.size.height = v12;
  v22 = CGRectEqualToRect(v24, v25);
  result = v8 - v17;
  if (v22)
  {
    return 0.0;
  }

  return result;
}

- (void)_updateKeyboardSnapshotIfNeeded
{
  delegate = [(CKFullScreenBalloonViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CKFullScreenBalloonViewController *)self delegate];
    chatItem = [(CKFullScreenBalloonViewController *)self chatItem];
    v7 = [delegate2 shouldDismissKeyboardWhenShowingFullScreenAcknowledgmentPickerForBalloonChatItem:chatItem];
  }

  else
  {
    v7 = 0;
  }

  if ([MEMORY[0x1E69DCBB8] usesInputSystemUI] && ((IMIsRunningInMessagesExtension() | v7) & 1) == 0)
  {
    delegate3 = [(CKFullScreenBalloonViewController *)self delegate];
    [delegate3 fullScreenBalloonViewControllerRequestShowKeyboardSnapshot:self];
  }
}

- (void)_revealTintAnimated:(BOOL)animated
{
  animatedCopy = animated;
  displayConfiguration = [(CKFullScreenBalloonViewController *)self displayConfiguration];
  type = [displayConfiguration type];

  if (type == 1)
  {
    if (animatedCopy)
    {
      v7 = [objc_alloc(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:853.41 damping:69.3804 initialVelocity:{0.0, 0.0}];
      v8 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:v7 timingParameters:0.0];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __62__CKFullScreenBalloonViewControllerPhone__revealTintAnimated___block_invoke;
      v13[3] = &unk_1E72EBA18;
      v13[4] = self;
      [v8 addAnimations:v13];
      [v8 startAnimation];
    }

    else
    {

      [(CKFullScreenBalloonViewControllerPhone *)self updateTintViewAlpha];
    }
  }

  else
  {
    v9 = 0.0;
    if (animatedCopy)
    {
      displayConfiguration2 = [(CKFullScreenBalloonViewController *)self displayConfiguration];
      [displayConfiguration2 tintRevealDuration];
      v9 = v11;
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__CKFullScreenBalloonViewControllerPhone__revealTintAnimated___block_invoke_2;
    v12[3] = &unk_1E72EBA18;
    v12[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v12 options:0 animations:v9 completion:0.0];
  }
}

- (void)updateStickersAnimated:(BOOL)animated
{
  delegate = [(CKFullScreenBalloonViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    displayConfiguration = [(CKFullScreenBalloonViewController *)self displayConfiguration];
    shouldShowStickers = [displayConfiguration shouldShowStickers];

    if (shouldShowStickers)
    {
      mirrorStickerCells = [(CKFullScreenBalloonViewControllerPhone *)self mirrorStickerCells];
      v10 = [mirrorStickerCells mutableCopy];
      v11 = v10;
      if (v10)
      {
        array = v10;
      }

      else
      {
        array = [MEMORY[0x1E695DF70] array];
      }

      v29 = array;

      mirrorStickerViews = [(CKFullScreenBalloonViewControllerPhone *)self mirrorStickerViews];
      v14 = [mirrorStickerViews mutableCopy];
      v15 = v14;
      if (v14)
      {
        array2 = v14;
      }

      else
      {
        array2 = [MEMORY[0x1E695DF70] array];
      }

      v17 = array2;

      _parentStickerChatItemGUIDToMirrorStickerViewDictionary = [(CKFullScreenBalloonViewControllerPhone *)self _parentStickerChatItemGUIDToMirrorStickerViewDictionary];
      delegate2 = [(CKFullScreenBalloonViewController *)self delegate];
      v38 = 0;
      v37 = 0;
      chatItem = [(CKFullScreenBalloonViewController *)self chatItem];
      iMChatItem = [chatItem IMChatItem];
      guid = [iMChatItem guid];
      [delegate2 associatedStickerCells:&v38 stickerChatItems:&v37 chatItemGUID:guid];
      v23 = v38;
      v24 = v37;

      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __65__CKFullScreenBalloonViewControllerPhone_updateStickersAnimated___block_invoke;
      v30[3] = &unk_1E72F6D98;
      v31 = v24;
      v32 = _parentStickerChatItemGUIDToMirrorStickerViewDictionary;
      selfCopy = self;
      v34 = v29;
      v35 = v17;
      animatedCopy = animated;
      v25 = v17;
      v26 = v29;
      v27 = _parentStickerChatItemGUIDToMirrorStickerViewDictionary;
      v28 = v24;
      [v23 enumerateObjectsUsingBlock:v30];
      [(CKFullScreenBalloonViewControllerPhone *)self setParentStickerCells:v23];
      [(CKFullScreenBalloonViewControllerPhone *)self setParentStickerChatItems:v28];
      [(CKFullScreenBalloonViewControllerPhone *)self setMirrorStickerCells:v26];
      [(CKFullScreenBalloonViewControllerPhone *)self setMirrorStickerViews:v25];
    }
  }
}

void __65__CKFullScreenBalloonViewControllerPhone_updateStickersAnimated___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndex:a3];
  v7 = *(a1 + 40);
  v8 = [v6 IMChatItem];
  v9 = [v8 guid];
  v10 = [v7 objectForKey:v9];

  if (!v10)
  {
    v11 = [CKStickerTranscriptCell alloc];
    v12 = [(CKStickerTranscriptCell *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(CKStickerTranscriptCell *)v12 configureForChatItem:v6 context:0 animated:0 animationDuration:3 animationCurve:0.0];
    v13 = [(CKAssociatedMessageTranscriptCell *)v12 associatedItemView];
    v14 = [*(a1 + 48) view];
    [v14 addSubview:v13];

    [(CKStickerTranscriptCell *)v12 updateAnimationTimerObserving];
    v15 = [v5 associatedItemView];
    v16 = v15;
    if (v15)
    {
      [v15 transform];
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
    }

    v17[0] = v18;
    v17[1] = v19;
    v17[2] = v20;
    [v13 setTransform:v17];

    [*(a1 + 48) _updateBoundsCenterFrameForMirrorAssociatedItemView:v13 parentStickerChatItem:v6];
    [*(a1 + 56) addObject:v12];
    [*(a1 + 64) addObject:v13];
    [v13 ck_performRevealAnimated:*(a1 + 72) completion:0];
  }
}

- (void)showAllStickers
{
  displayConfiguration = [(CKFullScreenBalloonViewController *)self displayConfiguration];
  shouldShowStickers = [displayConfiguration shouldShowStickers];

  if (shouldShowStickers)
  {
    mirrorStickerViews = [(CKFullScreenBalloonViewControllerPhone *)self mirrorStickerViews];
    [mirrorStickerViews enumerateObjectsUsingBlock:&__block_literal_global_241];
  }
}

- (void)setStickerVisibility:(BOOL)visibility forStickerChatItemGUID:(id)d
{
  dCopy = d;
  _parentStickerChatItemGUIDToMirrorStickerViewDictionary = [(CKFullScreenBalloonViewControllerPhone *)self _parentStickerChatItemGUIDToMirrorStickerViewDictionary];
  v6 = [_parentStickerChatItemGUIDToMirrorStickerViewDictionary valueForKey:dCopy];

  [v6 ck_performHideAnimated:0 completion:0];
}

- (id)_parentStickerChatItemGUIDToMirrorStickerViewDictionary
{
  v3 = MEMORY[0x1E695DF90];
  parentStickerChatItems = [(CKFullScreenBalloonViewControllerPhone *)self parentStickerChatItems];
  v5 = [v3 dictionaryWithCapacity:{objc_msgSend(parentStickerChatItems, "count")}];

  parentStickerChatItems2 = [(CKFullScreenBalloonViewControllerPhone *)self parentStickerChatItems];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __97__CKFullScreenBalloonViewControllerPhone__parentStickerChatItemGUIDToMirrorStickerViewDictionary__block_invoke;
  v13 = &unk_1E72F6DE0;
  selfCopy = self;
  v15 = v5;
  v7 = v5;
  [parentStickerChatItems2 enumerateObjectsUsingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

void __97__CKFullScreenBalloonViewControllerPhone__parentStickerChatItemGUIDToMirrorStickerViewDictionary__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 mirrorStickerViews];
  v11 = [v7 objectAtIndex:a3];

  v8 = *(a1 + 40);
  v9 = [v6 IMChatItem];

  v10 = [v9 guid];
  [v8 setObject:v11 forKey:v10];
}

- (void)_updateBoundsCenterFrameForMirrorAssociatedItemView:(id)view parentStickerChatItem:(id)item
{
  viewCopy = view;
  itemCopy = item;
  delegate = [(CKFullScreenBalloonViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(CKFullScreenBalloonViewController *)self delegate];
    [delegate2 fullScreenBalloonViewController:self stickerBoundsForChatItem:itemCopy];
    [viewCopy setBounds:?];
  }

  delegate3 = [(CKFullScreenBalloonViewController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate4 = [(CKFullScreenBalloonViewController *)self delegate];
    [delegate4 fullScreenBalloonViewController:self stickerCenterForChatItem:itemCopy];
    [viewCopy setCenter:?];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = viewCopy;
    internalView = [v14 internalView];
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    if (v14)
    {
      [v14 transform];
    }

    v17 = *(MEMORY[0x1E695EFD0] + 16);
    v23 = *MEMORY[0x1E695EFD0];
    v24 = v17;
    v25 = *(MEMORY[0x1E695EFD0] + 32);
    [v14 setTransform:{&v23, v25, v17, v23}];
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    if (internalView)
    {
      [internalView transform];
    }

    v20 = v19;
    v21 = v18;
    v22 = v16;
    [internalView setTransform:&v20];
    [v14 bounds];
    [internalView setFrame:?];
    v20 = v26;
    v21 = v27;
    v22 = v28;
    [v14 setTransform:&v20];
    v20 = v23;
    v21 = v24;
    v22 = v25;
    [internalView setTransform:&v20];
  }
}

- (void)presentStickerDetailControllerWithStickers:(id)stickers
{
  stickersCopy = stickers;
  v9 = [[CKStickerDetailViewController alloc] initWithStickerChatItems:stickersCopy];

  [(CKStickerDetailViewController *)v9 setDelegate:self];
  v5 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v9];
  if (CKIsRunningInMacCatalyst())
  {
    v6 = 7;
  }

  else
  {
    v6 = 6;
  }

  [v5 setModalPresentationStyle:v6];
  balloonView = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
  popoverPresentationController = [v5 popoverPresentationController];
  [popoverPresentationController setSourceView:balloonView];

  [(CKFullScreenBalloonViewControllerPhone *)self presentViewController:v5 animated:1 completion:0];
}

- (void)viewDidLoad
{
  v17[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = CKFullScreenBalloonViewControllerPhone;
  [(CKFullScreenBalloonViewController *)&v16 viewDidLoad];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
  chatItem = [(CKFullScreenBalloonViewController *)self chatItem];
  balloonView = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
  if (!balloonView)
  {
    displayConfiguration = [(CKFullScreenBalloonViewController *)self displayConfiguration];
    snapshotView = [displayConfiguration snapshotView];

    if (snapshotView)
    {
      displayConfiguration2 = [(CKFullScreenBalloonViewController *)self displayConfiguration];
      balloonView = [displayConfiguration2 snapshotView];
    }

    else
    {
      balloonView = [(CKFullScreenBalloonViewControllerPhone *)self generateDuplicateBalloonViewForChatItem:chatItem];
    }

    [balloonView setAlpha:0.0];
    [(CKFullScreenBalloonViewControllerPhone *)self setBalloonView:balloonView];
  }

  view = [(CKFullScreenBalloonViewControllerPhone *)self view];
  [view addSubview:balloonView];

  if ([(CKFullScreenBalloonViewControllerPhone *)self hideBalloonView])
  {
    balloonView2 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
    [balloonView2 removeFromSuperview];
  }

  else
  {
    [(CKFullScreenBalloonViewControllerPhone *)self loadLivePhotoBalloonViewIfNeeded];
  }

  if ([(CKFullScreenBalloonViewController *)self shouldShowTapbackAttribution])
  {
    v11 = [[_TtC7ChatKit24CKTapbackAttributionView alloc] initWithMessagePartChatItem:chatItem];
    [(CKTapbackAttributionView *)v11 setDelegate:self];
    [(CKFullScreenBalloonViewControllerPhone *)self setAttributionView:v11];
    view2 = [(CKFullScreenBalloonViewControllerPhone *)self view];
    attributionView = [(CKFullScreenBalloonViewControllerPhone *)self attributionView];
    [view2 addSubview:attributionView];
  }

  if ([(CKFullScreenBalloonViewController *)self shouldShowTapbackPicker])
  {
    [(CKFullScreenBalloonViewControllerPhone *)self initializeTapbackPicker];
  }

  self->_shouldLayoutViews = 1;
  v17[0] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v15 = [(CKFullScreenBalloonViewControllerPhone *)self registerForTraitChanges:v14 withHandler:&__block_literal_global_243_2];
}

void __53__CKFullScreenBalloonViewControllerPhone_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 updateTintViewAlpha];
  [v2 updateReplyButtonColor];
}

- (CGRect)preferredTapbackLayoutFrame
{
  view = [(CKFullScreenBalloonViewControllerPhone *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)votingViewTargetFrame
{
  delegate = [(CKFullScreenBalloonViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CKFullScreenBalloonViewController *)self delegate];
    [delegate2 systemMinimumLayoutMarginsForFullScreenBalloonViewController:self];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v7 = *(MEMORY[0x1E69DC5C0] + 8);
    v9 = *(MEMORY[0x1E69DC5C0] + 24);
  }

  view = [(CKFullScreenBalloonViewControllerPhone *)self view];
  if ([view effectiveUserInterfaceLayoutDirection])
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  [(CKFullScreenBalloonViewControllerPhone *)self preferredTapbackLayoutFrame];
  y = v24.origin.y;
  v13 = CGRectGetWidth(v24) - (v9 + v7);
  v14 = +[CKUIBehavior sharedBehaviors];
  [v14 attributionViewMinPadding];
  v16 = v15;

  v17 = +[CKUIBehavior sharedBehaviors];
  [v17 attributionViewHeight];
  v19 = v18;

  if (v16 >= y)
  {
    v20 = v16;
  }

  else
  {
    v20 = y;
  }

  v21 = v11;
  v22 = v13;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v20;
  result.origin.x = v21;
  return result;
}

- (double)minimumAllowedBalloonOriginY:(CGRect)y
{
  height = y.size.height;
  width = y.size.width;
  y = y.origin.y;
  x = y.origin.x;
  if ([(CKFullScreenBalloonViewController *)self shouldShowTapbackAttribution])
  {
    [(CKFullScreenBalloonViewControllerPhone *)self votingViewTargetFrame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v8 = *MEMORY[0x1E695F058];
    v10 = *(MEMORY[0x1E695F058] + 8);
    v12 = *(MEMORY[0x1E695F058] + 16);
    v14 = *(MEMORY[0x1E695F058] + 24);
  }

  [(CKFullScreenBalloonViewControllerPhone *)self preferredTapbackLayoutFrame];
  MinY = CGRectGetMinY(v22);
  v23.origin.x = v8;
  v23.origin.y = v10;
  v23.size.width = v12;
  v23.size.height = v14;
  MaxY = CGRectGetMaxY(v23);
  shouldShowTapbackPicker = [(CKFullScreenBalloonViewController *)self shouldShowTapbackPicker];
  v18 = 0.0;
  if (shouldShowTapbackPicker)
  {
    [(CKFullScreenBalloonViewControllerPhone *)self balloonMinimumTopOffset:x, y, width, height];
  }

  if (MaxY >= MinY)
  {
    v19 = MaxY;
  }

  else
  {
    v19 = MinY;
  }

  return v19 + v18;
}

- (double)maximumAllowedBalloonOriginY
{
  delegate = [(CKFullScreenBalloonViewController *)self delegate];
  [delegate fullScreenBalloonViewControllerSafeAreaLayoutFrame:self];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;

  return CGRectGetMaxY(*&v12);
}

- (void)viewDidLayoutSubviews
{
  v104 = *MEMORY[0x1E69E9840];
  v99.receiver = self;
  v99.super_class = CKFullScreenBalloonViewControllerPhone;
  [(CKFullScreenBalloonViewControllerPhone *)&v99 viewDidLayoutSubviews];
  if (self->_shouldLayoutViews)
  {
    delegate = [(CKFullScreenBalloonViewController *)self delegate];
    chatItem = [(CKFullScreenBalloonViewController *)self chatItem];
    [delegate fullScreenBalloonViewController:self balloonFrameForChatItem:chatItem];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v105.origin.x = v6;
        v105.origin.y = v8;
        v105.size.width = v10;
        v105.size.height = v12;
        v14 = NSStringFromCGRect(v105);
        *buf = 136315394;
        v101 = "[CKFullScreenBalloonViewControllerPhone viewDidLayoutSubviews]";
        v102 = 2112;
        v103 = v14;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "[Tapbacks] %s, balloonViewFrame > %@", buf, 0x16u);
      }
    }

    supplementaryLayoutContext = [(CKFullScreenBalloonViewController *)self supplementaryLayoutContext];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      if (self->_hasSetInitialBalloonViewFrame)
      {
        balloonView = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
        [balloonView frame];
        v6 = v18;
        v8 = v19;
        v10 = v20;
        v12 = v21;
      }

      balloonView2 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
      if (CKMainScreenScale_once_91 != -1)
      {
        [CKFullScreenBalloonViewControllerPhone viewDidLayoutSubviews];
      }

      v23 = MEMORY[0x1E695F058];
      v24 = *&CKMainScreenScale_sMainScreenScale_91;
      if (*&CKMainScreenScale_sMainScreenScale_91 == 0.0)
      {
        v24 = 1.0;
      }

      v25 = v6 + (v10 - *(MEMORY[0x1E695F058] + 16)) * 0.5;
      v26 = v8 + (v12 - *(MEMORY[0x1E695F058] + 24)) * 0.5;
      [balloonView2 setCenter:{floor(v25 * v24) / v24, floor(v26 * v24) / v24}];

      balloonView3 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
      v28 = *v23;
      v29 = v23[1];
      [balloonView3 setBounds:{*v23, v29, v10, v12}];

      livePhotoBalloonView = [(CKFullScreenBalloonViewControllerPhone *)self livePhotoBalloonView];
      if (CKMainScreenScale_once_91 != -1)
      {
        [CKFullScreenBalloonViewControllerPhone viewDidLayoutSubviews];
      }

      v31 = 1.0;
      if (*&CKMainScreenScale_sMainScreenScale_91 != 0.0)
      {
        v31 = *&CKMainScreenScale_sMainScreenScale_91;
      }

      [livePhotoBalloonView setCenter:{floor(v25 * v31) / v31, floor(v26 * v31) / v31}];

      livePhotoBalloonView2 = [(CKFullScreenBalloonViewControllerPhone *)self livePhotoBalloonView];
      [livePhotoBalloonView2 setBounds:{v28, v29, v10, v12}];

      balloonView4 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
      [balloonView4 frame];
      v6 = v34;
      v8 = v35;
      v10 = v36;
      v12 = v37;
    }

    view = [(CKFullScreenBalloonViewControllerPhone *)self view];
    safeAreaLayoutGuide = [view safeAreaLayoutGuide];
    [safeAreaLayoutGuide layoutFrame];
    v95 = v41;
    v97 = v40;
    v91 = v43;
    v93 = v42;

    v106.origin.x = v6;
    v106.origin.y = v8;
    v106.size.width = v10;
    v106.size.height = v12;
    MaxY = CGRectGetMaxY(v106);
    [(CKFullScreenBalloonViewControllerPhone *)self maximumAllowedBalloonOriginY];
    if (MaxY > v45)
    {
      [(CKFullScreenBalloonViewControllerPhone *)self maximumAllowedBalloonOriginY];
      v8 = v46 - v12;
    }

    [(CKFullScreenBalloonViewControllerPhone *)self minimumAllowedBalloonOriginY:v6, v8, v10, v12, v91, v93, v95, v97];
    if (v8 < v47)
    {
      v8 = v47;
    }

    [(CKFullScreenBalloonViewControllerPhone *)self votingViewTargetFrame];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    attributionView = [(CKFullScreenBalloonViewControllerPhone *)self attributionView];
    [attributionView setFrame:{v49, v51, v53, v55}];

    if (self->_hasSetInitialBalloonViewFrame)
    {
      balloonView5 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
      [balloonView5 frame];
      v6 = v58;
      v8 = v59;
      v10 = v60;
      v12 = v61;
    }

    else
    {
      self->_hasSetInitialBalloonViewFrame = 1;
      displayConfiguration = [(CKFullScreenBalloonViewController *)self displayConfiguration];
      shouldAvoidAppCardAtInitialPresentation = [displayConfiguration shouldAvoidAppCardAtInitialPresentation];

      if (shouldAvoidAppCardAtInitialPresentation)
      {
        delegate2 = [(CKFullScreenBalloonViewController *)self delegate];
        v65 = objc_opt_respondsToSelector();

        v66 = 0.0;
        if (v65)
        {
          delegate3 = [(CKFullScreenBalloonViewController *)self delegate];
          [delegate3 _expectedAppCardAndEntryViewHeight];
          v66 = v68;

          if (IMOSLoggingEnabled())
          {
            v69 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
            {
              v70 = [MEMORY[0x1E696AD98] numberWithDouble:v66];
              *buf = 136315394;
              v101 = "[CKFullScreenBalloonViewControllerPhone viewDidLayoutSubviews]";
              v102 = 2112;
              v103 = v70;
              _os_log_impl(&dword_19020E000, v69, OS_LOG_TYPE_INFO, "[Tapbacks] %s, appCardAndEntryViewHeight: %@", buf, 0x16u);
            }
          }
        }

        v107.origin.y = v96;
        v107.origin.x = v98;
        v107.size.height = v92;
        v107.size.width = v94;
        MinY = CGRectGetMinY(v107);
        v108.origin.x = v6;
        v108.origin.y = v8;
        v108.size.width = v10;
        v108.size.height = v12;
        if (CGRectGetMinY(v108) < MinY + 16.0)
        {
          v8 = MinY + 16.0;
        }

        view2 = [(CKFullScreenBalloonViewControllerPhone *)self view];
        [view2 frame];
        v73 = CGRectGetMaxY(v109);

        v110.origin.x = v6;
        v110.origin.y = v8;
        v110.size.width = v10;
        v110.size.height = v12;
        if (CGRectGetMaxY(v110) > v73 - v66)
        {
          v8 = v73 - v66 - v12;
        }
      }
    }

    balloonView6 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
    [balloonView6 setFrame:{v6, v8, v10, v12}];

    livePhotoBalloonView3 = [(CKFullScreenBalloonViewControllerPhone *)self livePhotoBalloonView];
    [livePhotoBalloonView3 setFrame:{v6, v8, v10, v12}];

    highlightButton = [(CKFullScreenBalloonViewControllerPhone *)self highlightButton];

    if (highlightButton)
    {
      highlightButton2 = [(CKFullScreenBalloonViewControllerPhone *)self highlightButton];
      [highlightButton2 calculateFrameRelativeToBalloonViewFrame];
      v79 = v78;
      v81 = v80;
      v83 = v82;
      v85 = v84;
      highlightButton3 = [(CKFullScreenBalloonViewControllerPhone *)self highlightButton];
      [highlightButton3 setFrame:{v79, v81, v83, v85}];
    }
  }

  if (IMOSLoggingEnabled())
  {
    v87 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
    {
      pickerBalloonParentView = [(CKFullScreenBalloonViewControllerPhone *)self pickerBalloonParentView];
      *buf = 136315394;
      v101 = "[CKFullScreenBalloonViewControllerPhone viewDidLayoutSubviews]";
      v102 = 2112;
      v103 = pickerBalloonParentView;
      _os_log_impl(&dword_19020E000, v87, OS_LOG_TYPE_INFO, "[Tapbacks] %s, viewDidLayoutSubviews: pickerBalloonParentView > %@", buf, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v89 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
    {
      balloonView7 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
      *buf = 136315394;
      v101 = "[CKFullScreenBalloonViewControllerPhone viewDidLayoutSubviews]";
      v102 = 2112;
      v103 = balloonView7;
      _os_log_impl(&dword_19020E000, v89, OS_LOG_TYPE_INFO, "[Tapbacks] %s, viewDidLayoutSubviews: balloonView > %@", buf, 0x16u);
    }
  }
}

- (void)updateReplyButtonSizeAndLocationForBalloonViewFrameIfNeeded:(CGRect)needed
{
  height = needed.size.height;
  width = needed.size.width;
  y = needed.origin.y;
  x = needed.origin.x;
  replyButton = [(CKFullScreenBalloonViewController *)self replyButton];

  if (replyButton)
  {
    highlightButton = [(CKFullScreenBalloonViewControllerPhone *)self highlightButton];
    v10 = highlightButton != 0;

    [(CKFullScreenBalloonViewControllerPhone *)self updateReplyButtonSizeAndLocation:v10 layoutRelativeToHighlightButton:x, y, width, height];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  view = [(CKFullScreenBalloonViewControllerPhone *)self view];
  window = [view window];

  if (window)
  {
    windowScene = [window windowScene];
    interfaceOrientation = [windowScene interfaceOrientation];

    v6 = 1 << interfaceOrientation;
  }

  else
  {
    v6 = 30;
  }

  return v6;
}

- (void)beginDismissal
{
  v3.receiver = self;
  v3.super_class = CKFullScreenBalloonViewControllerPhone;
  [(CKFullScreenBalloonViewController *)&v3 beginDismissal];
  [(CKFullScreenBalloonViewControllerPhone *)self closeEmojiPicker];
}

- (void)updateBalloonViewFrame
{
  if ([(CKFullScreenBalloonViewController *)self followsParentBalloonView])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __64__CKFullScreenBalloonViewControllerPhone_updateBalloonViewFrame__block_invoke;
    aBlock[3] = &unk_1E72EBA18;
    aBlock[4] = self;
    v3 = _Block_copy(aBlock);
    if ([(CKFullScreenBalloonViewControllerPhone *)self animatedBalloonViewFrameUpdates])
    {
      [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v3 options:0 animations:0.25 completion:0.0];
    }

    else
    {
      v3[2](v3);
    }
  }
}

void __64__CKFullScreenBalloonViewControllerPhone_updateBalloonViewFrame__block_invoke(uint64_t a1)
{
  v27.receiver = *(a1 + 32);
  v27.super_class = CKFullScreenBalloonViewControllerPhone;
  objc_msgSendSuper2(&v27, sel_updateBalloonViewFrame);
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [v3 chatItem];
  [v2 fullScreenBalloonViewController:v3 balloonFrameForChatItem:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [*(a1 + 32) balloonView];
  [v13 setFrame:{v6, v8, v10, v12}];

  v14 = [*(a1 + 32) livePhotoBalloonView];
  [v14 setFrame:{v6, v8, v10, v12}];

  [*(a1 + 32) updateReplyButtonSizeAndLocationForBalloonViewFrameIfNeeded:{v6, v8, v10, v12}];
  v15 = [*(a1 + 32) parentStickerChatItems];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __64__CKFullScreenBalloonViewControllerPhone_updateBalloonViewFrame__block_invoke_2;
  v26[3] = &unk_1E72F6E28;
  v26[4] = *(a1 + 32);
  [v15 enumerateObjectsUsingBlock:v26];

  v16 = [*(a1 + 32) pickerBalloonParentView];
  [v16 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [*(a1 + 32) pickerBalloonParentViewY];
  v24 = v23;
  v25 = [*(a1 + 32) pickerBalloonParentView];
  [v25 setFrame:{v18, v24, v20, v22}];
}

void __64__CKFullScreenBalloonViewControllerPhone_updateBalloonViewFrame__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 mirrorStickerViews];
  v8 = [v7 objectAtIndex:a3];

  [*(a1 + 32) _updateBoundsCenterFrameForMirrorAssociatedItemView:v8 parentStickerChatItem:v6];
}

- (void)performClosingAnimationsAnimated:(BOOL)animated withSendAnimation:(BOOL)animation withCompletion:(id)completion
{
  animationCopy = animation;
  animatedCopy = animated;
  v40 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  view = [(CKFullScreenBalloonViewControllerPhone *)self view];
  superview = [view superview];
  if (superview)
  {

LABEL_4:
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        if (animatedCopy)
        {
          v13 = @"YES";
        }

        else
        {
          v13 = @"NO";
        }

        v14 = _Block_copy(completionCopy);
        *buf = 138412802;
        v35 = v13;
        v36 = 1024;
        v37 = animationCopy;
        v38 = 2112;
        v39 = v14;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "[Tapbacks] performClosingAnimationsAnimated: %@, WithSendAnimation: %d, withCompletion:%@", buf, 0x1Cu);
      }
    }

    self->_shouldLayoutViews = 0;
    balloonView = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
    [balloonView ck_identityTransformFrame];

    [(CKFullScreenBalloonViewControllerPhone *)self balloonYOffsetFromTranscript];
    attributionView = [(CKFullScreenBalloonViewControllerPhone *)self attributionView];
    [attributionView dismiss];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __108__CKFullScreenBalloonViewControllerPhone_performClosingAnimationsAnimated_withSendAnimation_withCompletion___block_invoke;
    aBlock[3] = &unk_1E72EBA18;
    aBlock[4] = self;
    v17 = _Block_copy(aBlock);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __108__CKFullScreenBalloonViewControllerPhone_performClosingAnimationsAnimated_withSendAnimation_withCompletion___block_invoke_2;
    v31[3] = &unk_1E72ED1C8;
    v31[4] = self;
    v32 = completionCopy;
    v18 = _Block_copy(v31);
    if (animatedCopy && ![(CKFullScreenBalloonViewControllerPhone *)self animationsDisabledForTesting])
    {
      displayConfiguration = [(CKFullScreenBalloonViewController *)self displayConfiguration];
      [displayConfiguration tintDismissDuration];
      v21 = v20;

      pickerBalloonParentView = [(CKFullScreenBalloonViewControllerPhone *)self pickerBalloonParentView];
      [pickerBalloonParentView dismiss];

      highlightButton = [(CKFullScreenBalloonViewControllerPhone *)self highlightButton];

      if (highlightButton)
      {
        highlightButton2 = [(CKFullScreenBalloonViewControllerPhone *)self highlightButton];
        [highlightButton2 performHideAnimationWithDuration:v18 completion:v21];

        v18 = 0;
      }

      v25 = MEMORY[0x1E69DD250];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __108__CKFullScreenBalloonViewControllerPhone_performClosingAnimationsAnimated_withSendAnimation_withCompletion___block_invoke_3;
      v29[3] = &unk_1E72EBDB8;
      v30 = v17;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __108__CKFullScreenBalloonViewControllerPhone_performClosingAnimationsAnimated_withSendAnimation_withCompletion___block_invoke_4;
      v27[3] = &unk_1E72ED1F0;
      v18 = v18;
      v28 = v18;
      [v25 animateWithDuration:0 delay:v29 options:v27 animations:v21 completion:0.0];
    }

    else
    {
      v17[2](v17);
      v18[2](v18);
    }

    goto LABEL_18;
  }

  v11 = CKIsRunningInMessagesNotificationExtension();

  if (v11)
  {
    goto LABEL_4;
  }

  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "[Tapbacks] not performing closingAnimations: view is currently not presented", buf, 2u);
    }
  }

LABEL_18:
}

void __108__CKFullScreenBalloonViewControllerPhone_performClosingAnimationsAnimated_withSendAnimation_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tintView];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) replyButton];

  if (v3)
  {
    v4 = [*(a1 + 32) replyButton];
    [v4 setAlpha:0.0];
  }
}

uint64_t __108__CKFullScreenBalloonViewControllerPhone_performClosingAnimationsAnimated_withSendAnimation_withCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setInterfaceActions:0];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 fullScreenBalloonViewControllerDidDisappear:*(a1 + 32)];
  }

  v5 = [*(a1 + 32) balloonView];
  [v5 setAlpha:0.0];

  v6 = [*(a1 + 32) balloonView];
  [v6 setHidden:1];

  v7 = [*(a1 + 32) replyButton];

  if (v7)
  {
    v8 = [*(a1 + 32) replyButton];
    [v8 setHidden:1];
  }

  v9 = [*(a1 + 32) balloonView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [*(a1 + 32) balloonView];
    [v11 removeFromSuperview];
    CKBalloonViewReuse(v11);
    [*(a1 + 32) setBalloonView:0];
  }

  v12 = [*(a1 + 32) highlightButton];

  if (v12)
  {
    v13 = [*(a1 + 32) highlightButton];
    [v13 setHidden:1];
  }

  if ([MEMORY[0x1E69DCBB8] usesInputSystemUI])
  {
    v14 = [*(a1 + 32) delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = [*(a1 + 32) delegate];
      [v16 fullScreenBalloonViewControllerRequestDismissKeyboardSnapshot:*(a1 + 32)];
    }
  }

  v17 = [*(a1 + 32) delegate];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v19 = [*(a1 + 32) delegate];
    [v19 fullScreenBalloonViewController:*(a1 + 32) updateTapbackPileAppearanceAsHidden:0];
  }

  v20 = [*(a1 + 32) delegate];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    v22 = [*(a1 + 32) delegate];
    [v22 fullScreenBalloonViewController:*(a1 + 32) updateTranscriptBalloonViewAppearanceAsHidden:0];
  }

  result = *(a1 + 40);
  if (result)
  {
    v24 = *(result + 16);

    return v24();
  }

  return result;
}

uint64_t __108__CKFullScreenBalloonViewControllerPhone_performClosingAnimationsAnimated_withSendAnimation_withCompletion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateTintViewAlpha
{
  traitCollection = [(CKFullScreenBalloonViewControllerPhone *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  displayConfiguration = [(CKFullScreenBalloonViewController *)self displayConfiguration];
  v9 = displayConfiguration;
  if (userInterfaceStyle == 2)
  {
    [displayConfiguration darkModeTintAlpha];
  }

  else
  {
    [displayConfiguration tintAlpha];
  }

  v7 = v6;
  tintView = [(CKFullScreenBalloonViewController *)self tintView];
  [tintView setAlpha:v7];
}

- (void)keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;

  balloonView = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
  [balloonView frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v7 - v16 + -24.0;
  if (v17 < v12)
  {
    v18 = v12 + v17 - v12;
    [(CKFullScreenBalloonViewControllerPhone *)self minimumAllowedBalloonOriginY:v10, v12, v14, v16];
    if (v19 >= v18)
    {
      v18 = v19;
    }

    balloonView2 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
    [balloonView2 setFrame:{v10, v18, v14, v16}];

    pickerBalloonParentView = [(CKFullScreenBalloonViewControllerPhone *)self pickerBalloonParentView];
    [pickerBalloonParentView frame];
    v23 = v22;
    v25 = v24;
    v27 = v26;

    [(CKFullScreenBalloonViewControllerPhone *)self pickerBalloonParentViewY];
    v29 = v28;
    pickerBalloonParentView2 = [(CKFullScreenBalloonViewControllerPhone *)self pickerBalloonParentView];
    [pickerBalloonParentView2 setFrame:{v23, v29, v25, v27}];

    delegate = [(CKFullScreenBalloonViewController *)self delegate];
    v32 = objc_opt_respondsToSelector();

    if (v32)
    {
      v33 = v18 - v12;
      delegate2 = [(CKFullScreenBalloonViewController *)self delegate];
      collectionView = [delegate2 collectionView];

      [collectionView contentOffset];
      v36 = v35;
      [collectionView contentOffset];
      [collectionView setContentOffset:{v36, v37 - v33}];
    }
  }
}

- (void)tapbackAttributionView:(id)view didTapToSaveSticker:(id)sticker
{
  stickerCopy = sticker;
  delegate = [(CKFullScreenBalloonViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CKFullScreenBalloonViewController *)self delegate];
    [delegate2 fullScreenBalloonViewController:self didTapToSaveSticker:stickerCopy];
  }
}

- (void)stickerDetailViewController:(id)controller selectedStickerPackWithAdamID:(id)d
{
  dCopy = d;
  delegate = [(CKFullScreenBalloonViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __100__CKFullScreenBalloonViewControllerPhone_stickerDetailViewController_selectedStickerPackWithAdamID___block_invoke;
    v8[3] = &unk_1E72EB8D0;
    v8[4] = self;
    v9 = dCopy;
    [(CKFullScreenBalloonViewControllerPhone *)self dismissViewControllerAnimated:1 completion:v8];
  }
}

void __100__CKFullScreenBalloonViewControllerPhone_stickerDetailViewController_selectedStickerPackWithAdamID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 fullScreenBalloonViewController:*(a1 + 32) stickerPackTappedWithAdamID:*(a1 + 40)];

  v3 = [*(a1 + 32) delegate];
  [v3 fullScreenBalloonViewControllerHandleDismissTap:*(a1 + 32)];
}

- (void)stickerDetailViewController:(id)controller deletedStickerWithTransferGUID:(id)d
{
  dCopy = d;
  delegate = [(CKFullScreenBalloonViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __101__CKFullScreenBalloonViewControllerPhone_stickerDetailViewController_deletedStickerWithTransferGUID___block_invoke;
    v8[3] = &unk_1E72EB8D0;
    v8[4] = self;
    v9 = dCopy;
    [(CKFullScreenBalloonViewControllerPhone *)self dismissViewControllerAnimated:1 completion:v8];
  }
}

void __101__CKFullScreenBalloonViewControllerPhone_stickerDetailViewController_deletedStickerWithTransferGUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 fullScreenBalloonViewController:*(a1 + 32) deleteStickerWithTransferGUID:*(a1 + 40)];

  v3 = [*(a1 + 32) delegate];
  [v3 fullScreenBalloonViewControllerHandleDismissTap:*(a1 + 32)];
}

- (void)stickerDetailViewController:(id)controller didRequestSaveSticker:(id)sticker
{
  stickerCopy = sticker;
  delegate = [(CKFullScreenBalloonViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __92__CKFullScreenBalloonViewControllerPhone_stickerDetailViewController_didRequestSaveSticker___block_invoke;
    v8[3] = &unk_1E72EB8D0;
    v8[4] = self;
    v9 = stickerCopy;
    [(CKFullScreenBalloonViewControllerPhone *)self dismissViewControllerAnimated:1 completion:v8];
  }
}

void __92__CKFullScreenBalloonViewControllerPhone_stickerDetailViewController_didRequestSaveSticker___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 fullScreenBalloonViewController:*(a1 + 32) didRequestSaveSticker:*(a1 + 40)];

  v3 = [*(a1 + 32) delegate];
  [v3 fullScreenBalloonViewControllerHandleDismissTap:*(a1 + 32)];
}

- (void)_stickerDetailViewControllerCloseButtonPressed:(id)pressed
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __89__CKFullScreenBalloonViewControllerPhone__stickerDetailViewControllerCloseButtonPressed___block_invoke;
  v3[3] = &unk_1E72EBA18;
  v3[4] = self;
  [(CKFullScreenBalloonViewControllerPhone *)self dismissViewControllerAnimated:1 completion:v3];
}

void __89__CKFullScreenBalloonViewControllerPhone__stickerDetailViewControllerCloseButtonPressed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 fullScreenBalloonViewControllerHandleDismissTap:*(a1 + 32)];
}

- (void)livePhotoView:(id)view didEndPlaybackWithStyle:(int64_t)style
{
  v5 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView:view];
  [v5 setAlpha:1.0];

  balloonView = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
  [balloonView setHidden:0];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__CKFullScreenBalloonViewControllerPhone_livePhotoView_didEndPlaybackWithStyle___block_invoke;
  v8[3] = &unk_1E72EBA18;
  v8[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__CKFullScreenBalloonViewControllerPhone_livePhotoView_didEndPlaybackWithStyle___block_invoke_2;
  v7[3] = &unk_1E72EB9C8;
  v7[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v8 options:v7 animations:0.2 completion:0.0];
}

void __80__CKFullScreenBalloonViewControllerPhone_livePhotoView_didEndPlaybackWithStyle___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) livePhotoBalloonView];
  [v1 setAlpha:0.0];
}

uint64_t __80__CKFullScreenBalloonViewControllerPhone_livePhotoView_didEndPlaybackWithStyle___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) livePhotoBalloonView];
  [v2 removeFromSuperview];

  v3 = *(a1 + 32);

  return [v3 setLivePhotoBalloonView:0];
}

- (BOOL)shouldPresentAsTapbackKeyboardInput
{
  displayConfiguration = [(CKFullScreenBalloonViewController *)self displayConfiguration];
  shouldPresentAsTapbackKeyboardInput = [displayConfiguration shouldPresentAsTapbackKeyboardInput];

  return shouldPresentAsTapbackKeyboardInput;
}

- (void)setupReplyButton
{
  layer = [MEMORY[0x1E69794A0] layer];
  [(CKFullScreenBalloonViewControllerPhone *)self setReplyButtonBorderLayer:layer];
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 replyButtonBorderWidth];
  [layer setLineWidth:?];

  v4 = +[CKUIBehavior sharedBehaviors];
  theme = [v4 theme];
  replyButtonBorderColor = [theme replyButtonBorderColor];
  [layer setStrokeColor:{objc_msgSend(replyButtonBorderColor, "cgColor")}];

  [layer setFillColor:CGColorGetConstantColor(*MEMORY[0x1E695F090])];
  layer2 = [MEMORY[0x1E69794A0] layer];
  [(CKFullScreenBalloonViewControllerPhone *)self setReplyButtonMaskLayer:layer2];
  v8 = MEMORY[0x1E69DC730];
  v9 = +[CKUIBehavior sharedBehaviors];
  [v9 replyButtonBackgroundBlurRadius];
  v10 = [v8 effectWithBlurRadius:?];

  v11 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v10];
  [(CKFullScreenBalloonViewControllerPhone *)self setReplyButtonEffectView:v11];
  v12 = +[CKUIBehavior sharedBehaviors];
  theme2 = [v12 theme];
  replyButtonColor = [theme2 replyButtonColor];
  [v11 setBackgroundColor:replyButtonColor];

  v15 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(CKFullScreenBalloonViewControllerPhone *)self setReplyButtonView:v15];
  [v15 addSubview:v11];
  [v15 setUserInteractionEnabled:0];
  layer3 = [v15 layer];
  [layer3 setMask:layer2];

  layer4 = [v15 layer];
  [layer4 addSublayer:layer];

  v18 = [MEMORY[0x1E69DC738] buttonWithType:0];
  [(CKFullScreenBalloonViewController *)self setReplyButton:v18];
  [v18 setAutoresizingMask:5];
  v19 = +[CKUIBehavior sharedBehaviors];
  [v19 replyButtonEdgeInsets];
  [v18 setContentEdgeInsets:?];

  [v18 addTarget:self action:sel_replyButtonPressed_ forControlEvents:64];
  [v18 addSubview:v15];
  layer5 = [v18 layer];
  [layer5 setContentsScale:0.0];

  if (IMEnableInlineReplyGlyph())
  {
    v21 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrowshape.turn.up.backward.fill"];
    [v18 setImage:v21 forState:0];
    imageView = [v18 imageView];
    [v18 bringSubviewToFront:imageView];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v18 setTintColor:secondaryLabelColor];
  }

  else
  {
    titleLabel = [v18 titleLabel];
    v25 = +[CKUIBehavior sharedBehaviors];
    replyButtonFont = [v25 replyButtonFont];
    [titleLabel setFont:replyButtonFont];

    titleLabel2 = [v18 titleLabel];
    [titleLabel2 setAdjustsFontForContentSizeCategory:1];

    v28 = CKFrameworkBundle();
    v29 = [v28 localizedStringForKey:@"INLINE_REPLY_ORB_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    [v18 setTitle:v29 forState:0];

    v21 = +[CKUIBehavior sharedBehaviors];
    secondaryLabelColor = [v21 theme];
    replyButtonTextColor = [secondaryLabelColor replyButtonTextColor];
    [v18 setTitleColor:replyButtonTextColor forState:0];
  }

  layer6 = [MEMORY[0x1E69794A0] layer];
  [(CKFullScreenBalloonViewControllerPhone *)self setTintViewMaskLayer:layer6];
  tintView = [(CKFullScreenBalloonViewController *)self tintView];
  layer7 = [tintView layer];
  [layer7 setMask:layer6];
}

- (void)updateReplyButtonSizeAndLocation:(CGRect)location layoutRelativeToHighlightButton:(BOOL)button
{
  buttonCopy = button;
  height = location.size.height;
  width = location.size.width;
  y = location.origin.y;
  x = location.origin.x;
  v87 = *MEMORY[0x1E69E9840];
  replyButton = [(CKFullScreenBalloonViewController *)self replyButton];

  if (!replyButton)
  {
    return;
  }

  replyButton2 = [(CKFullScreenBalloonViewController *)self replyButton];
  [replyButton2 sizeToFit];

  replyButton3 = [(CKFullScreenBalloonViewController *)self replyButton];
  [replyButton3 frame];
  v81 = v14;
  v82 = v13;

  replyButton4 = [(CKFullScreenBalloonViewController *)self replyButton];
  [replyButton4 bounds];
  v79 = v17;
  v80 = v16;
  v19 = v18;
  v21 = v20;

  tintView = [(CKFullScreenBalloonViewController *)self tintView];
  [tintView frame];
  v24 = v23;
  v26 = v25;

  if (v19 <= 0.0 || v21 <= 0.0)
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v37 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v83 = 134218240;
      v84 = v19;
      v85 = 2048;
      v86 = v21;
      _os_log_impl(&dword_19020E000, v37, OS_LOG_TYPE_INFO, "[Tapbacks] Invalid reply button size, width = %f, height = %f", &v83, 0x16u);
    }

LABEL_23:

    return;
  }

  v75 = v26;
  v76 = v24;
  if (buttonCopy)
  {
    v27 = +[CKUIBehavior sharedBehaviors];
    [v27 replyButtonRelativePosition];
    v29 = v28;

    chatItem = [(CKFullScreenBalloonViewController *)self chatItem];
    transcriptOrientation = [chatItem transcriptOrientation];

    v32 = x;
    v33 = y;
    v34 = width;
    v35 = height;
    if (transcriptOrientation)
    {
      v36 = v29 + CGRectGetMaxX(*&v32) - v82;
    }

    else
    {
      v36 = CGRectGetMinX(*&v32) - v29;
    }

    v92.origin.x = x;
    v92.origin.y = y;
    v92.size.width = width;
    v92.size.height = height;
    MaxY = CGRectGetMaxY(v92);
    traitCollection = [(CKFullScreenBalloonViewControllerPhone *)self traitCollection];
    [traitCollection displayScale];
    v78 = round((MaxY + v21 * -0.5) * v58) / v58;
  }

  else
  {
    [(CKFullScreenBalloonViewControllerPhone *)self replyButtonVerticalOffset];
    v77 = v38;
    v89.origin.x = x;
    v89.origin.y = y;
    v89.size.width = width;
    v89.size.height = height;
    v74 = CGRectGetMaxY(v89);
    v39 = +[CKUIBehavior sharedBehaviors];
    [v39 replyButtonHorizontalOriginOffsetPercent];
    v41 = v40;
    traitCollection2 = [(CKFullScreenBalloonViewControllerPhone *)self traitCollection];
    [traitCollection2 displayScale];
    v44 = v43;

    chatItem2 = [(CKFullScreenBalloonViewController *)self chatItem];
    LODWORD(traitCollection2) = [chatItem2 transcriptOrientation] == 2;

    view = [(CKFullScreenBalloonViewControllerPhone *)self view];
    v47 = view;
    v78 = v74 - v77;
    v48 = round(v19 * v41 * v44) / v44;
    if (traitCollection2)
    {
      [view layoutMargins];
      v50 = v49;

      v90.origin.x = x;
      v90.origin.y = y;
      v90.size.width = width;
      v90.size.height = height;
      v36 = fmax(v50, v48 + CGRectGetMinX(v90) - v19);
    }

    else
    {
      [view frame];
      v52 = v51;
      view2 = [(CKFullScreenBalloonViewControllerPhone *)self view];
      [view2 layoutMargins];
      v55 = v52 - v54 - v19;

      v91.origin.x = x;
      v91.origin.y = y;
      v91.size.width = width;
      v91.size.height = height;
      v36 = fmin(v55, CGRectGetMaxX(v91) - v48);
    }
  }

  v59 = fmin(v19, v21) * 0.5;
  if (v59 <= 0.0)
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v37 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v83 = 134217984;
      v84 = v59;
      _os_log_impl(&dword_19020E000, v37, OS_LOG_TYPE_INFO, "[Tapbacks] Invalid corner width for reply button, width = %f", &v83, 0xCu);
    }

    goto LABEL_23;
  }

  replyButton5 = [(CKFullScreenBalloonViewController *)self replyButton];
  [replyButton5 setFrame:{v36, v78, v82, v81}];

  replyButtonEffectView = [(CKFullScreenBalloonViewControllerPhone *)self replyButtonEffectView];
  [replyButtonEffectView setFrame:{v80, v79, v19, v21}];

  Mutable = CGPathCreateMutable();
  v93.origin.x = v80;
  v93.origin.y = v79;
  v93.size.width = v19;
  v93.size.height = v21;
  CGPathAddRoundedRect(Mutable, 0, v93, v59, v59);
  replyButtonBorderLayer = [(CKFullScreenBalloonViewControllerPhone *)self replyButtonBorderLayer];
  [replyButtonBorderLayer setPath:Mutable];

  CGPathRelease(Mutable);
  v64 = CGPathCreateMutable();
  v94.origin.y = v79;
  v94.origin.x = v80;
  v94.size.width = v19;
  v94.size.height = v21;
  CGPathAddRoundedRect(v64, 0, v94, v59, v59);
  replyButtonMaskLayer = [(CKFullScreenBalloonViewControllerPhone *)self replyButtonMaskLayer];
  [replyButtonMaskLayer setPath:v64];

  CGPathRelease(v64);
  v66 = CGPathCreateMutable();
  v95.origin.x = v36;
  v95.origin.y = v78;
  v95.size.height = v81;
  v95.size.width = v82;
  v96 = CGRectOffset(v95, -v76, -v75);
  v67 = v96.origin.x;
  v68 = v96.origin.y;
  v69 = v96.size.width;
  v70 = v96.size.height;
  tintView2 = [(CKFullScreenBalloonViewController *)self tintView];
  [tintView2 bounds];
  CGPathAddRect(v66, 0, v97);

  v98.origin.x = v67;
  v98.origin.y = v68;
  v98.size.width = v69;
  v98.size.height = v70;
  CGPathAddRoundedRect(v66, 0, v98, v59, v59);
  tintViewMaskLayer = [(CKFullScreenBalloonViewControllerPhone *)self tintViewMaskLayer];
  [tintViewMaskLayer setPath:v66];

  tintViewMaskLayer2 = [(CKFullScreenBalloonViewControllerPhone *)self tintViewMaskLayer];
  [tintViewMaskLayer2 setFillRule:*MEMORY[0x1E69797F8]];

  CGPathRelease(v66);
}

- (void)updateReplyButtonColor
{
  replyButton = [(CKFullScreenBalloonViewController *)self replyButton];

  if (replyButton)
  {
    replyButtonEffectView = [(CKFullScreenBalloonViewControllerPhone *)self replyButtonEffectView];
    v5 = +[CKUIBehavior sharedBehaviors];
    theme = [v5 theme];
    replyButtonColor = [theme replyButtonColor];
    [replyButtonEffectView setBackgroundColor:replyButtonColor];

    replyButtonBorderLayer = [(CKFullScreenBalloonViewControllerPhone *)self replyButtonBorderLayer];
    v8 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v8 theme];
    replyButtonBorderColor = [theme2 replyButtonBorderColor];
    [replyButtonBorderLayer setStrokeColor:{objc_msgSend(replyButtonBorderColor, "cgColor")}];
  }
}

- (double)replyButtonVerticalOffset
{
  replyButton = [(CKFullScreenBalloonViewController *)self replyButton];

  if (!replyButton)
  {
    return 0.0;
  }

  replyButton2 = [(CKFullScreenBalloonViewController *)self replyButton];
  [replyButton2 sizeToFit];

  replyButton3 = [(CKFullScreenBalloonViewController *)self replyButton];
  [replyButton3 bounds];
  v7 = v6;
  v8 = +[CKUIBehavior sharedBehaviors];
  [v8 replyButtonVerticalOriginOffsetPercent];
  v10 = v7 * v9;
  traitCollection = [(CKFullScreenBalloonViewControllerPhone *)self traitCollection];
  [traitCollection displayScale];
  v13 = round(v10 * v12) / v12;

  return v13;
}

- (double)replyButtonHeightFromBalloon
{
  replyButton = [(CKFullScreenBalloonViewController *)self replyButton];

  if (!replyButton)
  {
    return 0.0;
  }

  [(CKFullScreenBalloonViewControllerPhone *)self replyButtonVerticalOffset];
  v5 = v4;
  replyButton2 = [(CKFullScreenBalloonViewController *)self replyButton];
  [replyButton2 bounds];
  v8 = v7 - v5;

  return v8;
}

- (void)messageHightlightButtonWasClicked:(id)clicked
{
  isHighlighted = [clicked isHighlighted];
  delegate = [(CKFullScreenBalloonViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CKFullScreenBalloonViewController *)self delegate];
    chatItem = [(CKFullScreenBalloonViewController *)self chatItem];
    [delegate2 fullScreenBalloonViewController:self sendMessageHighlight:isHighlighted forChatItem:chatItem];
  }
}

- (void)messageHightlightButtonDidFinishAnimating:(id)animating
{
  [animating removeFromSuperview];
  delegate = [(CKFullScreenBalloonViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CKFullScreenBalloonViewController *)self delegate];
    [delegate2 fullScreenBalloonViewControllerMessageHighlightButtonDidFinishAnimating:self];
  }
}

- (CGRect)messageHightlightButtonBalloonViewFrame:(id)frame
{
  balloonView = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
  [balloonView ck_identityTransformFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)messageHightlightButtonReplyButtonFrame:(id)frame
{
  replyButton = [(CKFullScreenBalloonViewController *)self replyButton];
  if (replyButton)
  {
    replyButton2 = [(CKFullScreenBalloonViewController *)self replyButton];
    [replyButton2 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v13 = *(MEMORY[0x1E695F058] + 24);
  }

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (char)messageHightlightButtonTranscriptOrientation:(id)orientation
{
  chatItem = [(CKFullScreenBalloonViewController *)self chatItem];
  transcriptOrientation = [chatItem transcriptOrientation];

  return transcriptOrientation;
}

- (void)addHighlightButtonIfNeeded
{
  displayConfiguration = [(CKFullScreenBalloonViewController *)self displayConfiguration];
  shouldShowHighlightButton = [displayConfiguration shouldShowHighlightButton];

  if (shouldShowHighlightButton)
  {
    delegate = [(CKFullScreenBalloonViewController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      chatItem = [(CKFullScreenBalloonViewController *)self chatItem];
      delegate2 = [(CKFullScreenBalloonViewController *)self delegate];
      v8 = [delegate2 fullScreenBalloonViewControllerShouldShowHightlightButton:self forChatItem:chatItem];

      if (v8)
      {
        v9 = -[CKMessageHighlightButton initWithInitialState:]([CKMessageHighlightButton alloc], "initWithInitialState:", [chatItem syndicationType] != 0);
        [(CKMessageHighlightButton *)v9 setDelegate:self];
        view = [(CKFullScreenBalloonViewControllerPhone *)self view];
        [view addSubview:v9];

        view2 = [(CKFullScreenBalloonViewControllerPhone *)self view];
        [view2 bringSubviewToFront:v9];

        [(CKFullScreenBalloonViewControllerPhone *)self setHighlightButton:v9];
      }
    }
  }
}

- (void)initializeTapbackPicker
{
  selfCopy = self;
  sub_190ABE668();
}

- (void)showTapbackPicker
{
  selfCopy = self;
  sub_190ABE9A8();
}

- (double)pickerBalloonParentViewY
{
  selfCopy = self;
  v3 = sub_190ABF448();

  return v3;
}

- (void)insertSticker:(id)sticker
{
  stickerCopy = sticker;
  selfCopy = self;
  sub_190ABF6F4(sticker);
}

- (void)sendTouchBarTapback:(int64_t)tapback
{
  selfCopy = self;
  sub_190ABF990(tapback);
}

- (double)balloonMinimumTopOffset:(CGRect)offset
{
  height = offset.size.height;
  width = offset.size.width;
  y = offset.origin.y;
  x = offset.origin.x;
  selfCopy = self;
  v8 = sub_190ABFE6C(x, y, width, height);

  return v8;
}

- (id)generateDuplicateBalloonViewForChatItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  v7 = sub_190AC0154(item);

  return v7;
}

- (void)tapbackPickerViewController:(id)controller didSelectTapback:(id)tapback
{
  controllerCopy = controller;
  tapbackCopy = tapback;
  selfCopy = self;
  sub_190AC3D40(tapbackCopy, &selRef_fullScreenBalloonViewController_didSelectTapback_, "[Tapbacks] didSelectTapback: during double-tap");
}

- (void)tapbackPickerViewController:(id)controller didDeselectTapback:(id)tapback
{
  controllerCopy = controller;
  tapbackCopy = tapback;
  selfCopy = self;
  sub_190AC3D40(tapbackCopy, &selRef_fullScreenBalloonViewController_didDeselectTapback_, "[Tapbacks] didDeselectTapback: during double-tap");
}

- (id)contextualCKChatItemsForTapbackPickerViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  delegate = [(CKFullScreenBalloonViewController *)selfCopy delegate];
  if (delegate)
  {
    v7 = [(CKFullScreenBalloonViewControllerDelegate *)delegate contextualChatItemsForFullScreenBalloonViewController:selfCopy];
    swift_unknownObjectRelease();
    sub_190863204();
    sub_190D57180();

    controllerCopy = selfCopy;
    selfCopy = v7;
  }

  sub_190863204();
  v8 = sub_190D57160();

  return v8;
}

- (id)smartEmojiResponses:(id)responses chatItem:(id)item
{
  responsesCopy = responses;
  selfCopy = self;
  itemCopy = item;
  delegate = [(CKFullScreenBalloonViewController *)selfCopy delegate];
  if (delegate)
  {
    v10 = delegate;
    if (([(CKFullScreenBalloonViewControllerDelegate *)delegate respondsToSelector:sel_fullScreenBalloonViewControllerSmartEmojiResponses_]& 1) != 0)
    {
      v11 = [(CKFullScreenBalloonViewControllerDelegate *)v10 fullScreenBalloonViewControllerSmartEmojiResponses:selfCopy];
      swift_unknownObjectRelease();
      sub_190D57180();

      responsesCopy = itemCopy;
      itemCopy = selfCopy;
      selfCopy = v11;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v12 = sub_190D57160();

  return v12;
}

- (void)tapbackPickerBalloonParentView:(id)view didInsertTapback:(id)tapback
{
  viewCopy = view;
  tapbackCopy = tapback;
  selfCopy = self;
  CKFullScreenBalloonViewControllerPhone.tapbackPickerBalloonParentView(_:didInsertTapback:)(viewCopy, tapbackCopy);
}

- (id)textInputContextIdentifier:(id)identifier
{
  selfCopy = self;
  delegate = [(CKFullScreenBalloonViewController *)selfCopy delegate];
  if (delegate)
  {
    v5 = delegate;
    if (([(CKFullScreenBalloonViewControllerDelegate *)delegate respondsToSelector:sel_textInputContextIdentifierForFullScreenBalloonViewController_]& 1) != 0)
    {
      v6 = [(CKFullScreenBalloonViewControllerDelegate *)v5 textInputContextIdentifierForFullScreenBalloonViewController:selfCopy];
      swift_unknownObjectRelease();
      if (v6)
      {
        sub_190D56F10();

        v7 = sub_190D56ED0();

        v8 = v7;
        goto LABEL_7;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (void)tapbackPickerBalloonParentView:(id)view requestedPresentPlugin:(id)plugin payloadID:(id)d
{
  if (plugin)
  {
    v6 = sub_190D56D90();
  }

  else
  {
    v6 = 0;
  }

  sub_190D56F10();
  selfCopy = self;
  delegate = [(CKFullScreenBalloonViewController *)selfCopy delegate];
  if (delegate)
  {
    v9 = delegate;
    if (([(CKFullScreenBalloonViewControllerDelegate *)delegate respondsToSelector:sel_fullScreenBalloonViewController_requestedPresentPlugin_withPayloadID_]& 1) != 0)
    {
      if (v6)
      {
        v10 = sub_190D56D60();
      }

      else
      {
        v10 = 0;
      }

      v11 = sub_190D56ED0();

      [(CKFullScreenBalloonViewControllerDelegate *)v9 fullScreenBalloonViewController:selfCopy requestedPresentPlugin:v10 withPayloadID:v11];
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }
}

- (id)tapbackPickerBalloonParentViewTapbackPileView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = _sSo38CKFullScreenBalloonViewControllerPhoneC7ChatKitE013tapbackPickerc6Parentd11TapbackPileD0yAC023AggregateAcknowledgmentcD0CSgAC0ljckD0CF_0();

  return v6;
}

- (id)tapbackPickerBalloonParentViewTapbackBackingBalloon:(id)balloon
{
  balloonCopy = balloon;
  selfCopy = self;
  v6 = _sSo38CKFullScreenBalloonViewControllerPhoneC7ChatKitE013tapbackPickerc6Parentd14TapbackBackingC0ySo6UIViewCSgAC0ljckD0CF_0();

  return v6;
}

- (id)tapbackPickerBalloonParentViewTapbackTintableMessageBalloon:(id)balloon
{
  balloonCopy = balloon;
  selfCopy = self;
  v6 = CKFullScreenBalloonViewControllerPhone.tapbackPickerBalloonParentViewTapbackTintableMessageBalloon(_:)(balloonCopy);

  return v6;
}

- (void)keyCommandSelectTapback:(id)tapback
{
  tapbackCopy = tapback;
  selfCopy = self;
  sub_190AC227C(tapbackCopy);
}

@end