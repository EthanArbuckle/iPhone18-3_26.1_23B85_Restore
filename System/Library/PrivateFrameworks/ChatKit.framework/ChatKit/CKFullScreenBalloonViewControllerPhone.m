@interface CKFullScreenBalloonViewControllerPhone
- (BOOL)shouldPresentAsTapbackKeyboardInput;
- (CGRect)messageHightlightButtonBalloonViewFrame:(id)a3;
- (CGRect)messageHightlightButtonReplyButtonFrame:(id)a3;
- (CGRect)preferredTapbackLayoutFrame;
- (CGRect)votingViewTargetFrame;
- (CKFullScreenBalloonViewControllerPhone)initWithChatItem:(id)a3 interfaceActions:(id)a4 displayConfiguration:(id)a5 delegate:(id)a6;
- (char)messageHightlightButtonTranscriptOrientation:(id)a3;
- (double)_balloonOffsetFromTranscriptParentBalloon;
- (double)balloonMinimumTopOffset:(CGRect)a3;
- (double)maximumAllowedBalloonOriginY;
- (double)minimumAllowedBalloonOriginY:(CGRect)a3;
- (double)pickerBalloonParentViewY;
- (double)replyButtonHeightFromBalloon;
- (double)replyButtonVerticalOffset;
- (id)_parentStickerChatItemGUIDToMirrorStickerViewDictionary;
- (id)contextualCKChatItemsForTapbackPickerViewController:(id)a3;
- (id)generateDuplicateBalloonViewForChatItem:(id)a3;
- (id)smartEmojiResponses:(id)a3 chatItem:(id)a4;
- (id)tapbackPickerBalloonParentViewTapbackBackingBalloon:(id)a3;
- (id)tapbackPickerBalloonParentViewTapbackPileView:(id)a3;
- (id)tapbackPickerBalloonParentViewTapbackTintableMessageBalloon:(id)a3;
- (id)textInputContextIdentifier:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_presentAccessoryViews;
- (void)_presentOverlayBalloonView;
- (void)_presentStickersIfNeeded;
- (void)_presentTapbackAttributionIfNeeded;
- (void)_presentTapbackPickerIfNeeded;
- (void)_revealTintAnimated:(BOOL)a3;
- (void)_scrollTranscriptToBalloonView:(double)a3 completion:(id)a4;
- (void)_stickerDetailViewControllerCloseButtonPressed:(id)a3;
- (void)_updateBoundsCenterFrameForMirrorAssociatedItemView:(id)a3 parentStickerChatItem:(id)a4;
- (void)_updateKeyboardSnapshotIfNeeded;
- (void)addHighlightButtonIfNeeded;
- (void)beginDismissal;
- (void)dealloc;
- (void)initializeTapbackPicker;
- (void)insertSticker:(id)a3;
- (void)keyCommandSelectTapback:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)livePhotoView:(id)a3 didEndPlaybackWithStyle:(int64_t)a4;
- (void)loadLivePhotoBalloonViewIfNeeded;
- (void)messageHightlightButtonDidFinishAnimating:(id)a3;
- (void)messageHightlightButtonWasClicked:(id)a3;
- (void)performClosingAnimationsAnimated:(BOOL)a3 withSendAnimation:(BOOL)a4 withCompletion:(id)a5;
- (void)performInitialAnimations;
- (void)presentStickerDetailControllerWithStickers:(id)a3;
- (void)sendTouchBarTapback:(int64_t)a3;
- (void)setStickerVisibility:(BOOL)a3 forStickerChatItemGUID:(id)a4;
- (void)setupReplyButton;
- (void)showAllStickers;
- (void)showTapbackPicker;
- (void)stickerDetailViewController:(id)a3 deletedStickerWithTransferGUID:(id)a4;
- (void)stickerDetailViewController:(id)a3 didRequestSaveSticker:(id)a4;
- (void)stickerDetailViewController:(id)a3 selectedStickerPackWithAdamID:(id)a4;
- (void)tapbackAttributionView:(id)a3 didTapToSaveSticker:(id)a4;
- (void)tapbackPickerBalloonParentView:(id)a3 didInsertTapback:(id)a4;
- (void)tapbackPickerBalloonParentView:(id)a3 requestedPresentPlugin:(id)a4 payloadID:(id)a5;
- (void)tapbackPickerViewController:(id)a3 didDeselectTapback:(id)a4;
- (void)tapbackPickerViewController:(id)a3 didSelectTapback:(id)a4;
- (void)updateBalloonViewFrame;
- (void)updateReplyButtonColor;
- (void)updateReplyButtonSizeAndLocation:(CGRect)a3 layoutRelativeToHighlightButton:(BOOL)a4;
- (void)updateReplyButtonSizeAndLocationForBalloonViewFrameIfNeeded:(CGRect)a3;
- (void)updateStickersAnimated:(BOOL)a3;
- (void)updateTintViewAlpha;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CKFullScreenBalloonViewControllerPhone

- (void)dealloc
{
  v3 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
  if (v3)
  {
    v4 = v3;
    v5 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
      [v7 removeFromSuperview];
      CKBalloonViewReuse(v7);
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

- (CKFullScreenBalloonViewControllerPhone)initWithChatItem:(id)a3 interfaceActions:(id)a4 displayConfiguration:(id)a5 delegate:(id)a6
{
  v20 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = v10;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "[Tapbacks] Creating fullscreen balloon for chatItem = %@", &v18, 0xCu);
    }
  }

  v15 = [(CKFullScreenBalloonViewController *)self initWithChatItem:v10 displayConfiguration:v12 delegate:v13];
  v16 = v15;
  if (v15)
  {
    [(CKFullScreenBalloonViewControllerPhone *)v15 setInterfaceActions:v11];
  }

  return v16;
}

- (void)loadLivePhotoBalloonViewIfNeeded
{
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    return;
  }

  v3 = [(CKFullScreenBalloonViewController *)self chatItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return;
  }

  v23 = [(CKFullScreenBalloonViewController *)self chatItem];
  v5 = [v23 mediaObject];
  objc_opt_class();
  v6 = objc_opt_isKindOfClass();

  if (v6)
  {
    v7 = [v23 mediaObject];
    if ([v7 isIrisAsset])
    {

      if (v7)
      {
        v8 = [(CKFullScreenBalloonViewController *)self chatItem];
        objc_opt_class();
        v9 = objc_opt_isKindOfClass();

        v10 = [(CKFullScreenBalloonViewController *)self supplementaryLayoutContext];
        objc_opt_class();
        objc_opt_isKindOfClass();

        v11 = objc_alloc(objc_opt_class());
        v12 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
        [v12 ck_identityTransformFrame];
        v13 = [v11 initWithFrame:?];

        v14 = [(CKFullScreenBalloonViewController *)self chatItem];
        [v13 configureForMessagePart:v14];

        [v13 setCanUseOpaqueMask:0];
        v15 = [v13 livePhotoView];
        [v15 setDelegate:self];

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
        v16 = [(CKFullScreenBalloonViewControllerPhone *)self view];
        v17 = [(CKFullScreenBalloonViewControllerPhone *)self livePhotoBalloonView];
        [v16 addSubview:v17];

        if (v9)
        {
          v18 = [(CKFullScreenBalloonViewController *)self chatItem];
          v19 = [v18 layoutRecipe];
          [v19 rotation];
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
  v3 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
  [v3 setUserInteractionEnabled:0];

  [(CKFullScreenBalloonViewControllerPhone *)self _updateKeyboardSnapshotIfNeeded];
  v4 = [(CKFullScreenBalloonViewController *)self tintView];
  [v4 setAlpha:0.0];

  [(CKFullScreenBalloonViewControllerPhone *)self _balloonOffsetFromTranscriptParentBalloon];
  v6 = v5;
  [(CKFullScreenBalloonViewControllerPhone *)self setBalloonYOffsetFromTranscript:?];
  if (v6 == 0.0)
  {
    [(CKFullScreenBalloonViewControllerPhone *)self _revealTintAnimated:1];
    [(CKFullScreenBalloonViewControllerPhone *)self _presentAccessoryViews];
    [(CKFullScreenBalloonViewController *)self setFollowsParentBalloonView:1];
    v7 = [(CKFullScreenBalloonViewController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v11 = [(CKFullScreenBalloonViewController *)self delegate];
      [v11 fullScreenBalloonViewControllerDidCompleteInitialAnimation:self];
    }
  }

  else
  {
    v9 = [(CKFullScreenBalloonViewController *)self displayConfiguration];
    v10 = [v9 shouldPresentTintViewBeforeScrolling];

    if (v10)
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

- (void)_scrollTranscriptToBalloonView:(double)a3 completion:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(CKFullScreenBalloonViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
        *buf = 138412290;
        v18 = v10;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "[Tapbacks] verticallyScrollTranscriptByAmount: %@", buf, 0xCu);
      }
    }

    v11 = [(CKFullScreenBalloonViewController *)self delegate];
    v12 = [(CKFullScreenBalloonViewController *)self displayConfiguration];
    [v12 scrollDuration];
    v14 = v13;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __84__CKFullScreenBalloonViewControllerPhone__scrollTranscriptToBalloonView_completion___block_invoke;
    v15[3] = &unk_1E72EBDB8;
    v16 = v6;
    [v11 fullScreenBalloonViewController:self verticallyScrollTranscriptByAmount:1 animated:v15 duration:a3 completion:v14];
  }

  else if (v6)
  {
    v6[2](v6);
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
    v3 = [(CKFullScreenBalloonViewControllerPhone *)self attributionView];
    [v3 present];
  }
}

- (void)_presentOverlayBalloonView
{
  v3 = [(CKFullScreenBalloonViewControllerPhone *)self livePhotoBalloonView];

  if (v3)
  {
    v4 = [(CKFullScreenBalloonViewControllerPhone *)self livePhotoBalloonView];
    [v4 setAlpha:1.0];

    v7 = [(CKFullScreenBalloonViewControllerPhone *)self livePhotoBalloonView];
    v5 = [v7 livePhotoView];
    [v5 startPlaybackWithStyle:1];
  }

  else
  {
    v6 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
    [v6 setAlpha:1.0];

    v7 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
    [v7 setHidden:0];
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
  v3 = [(CKFullScreenBalloonViewController *)self displayConfiguration];
  v4 = [v3 shouldShowStickers];

  if (v4)
  {

    [(CKFullScreenBalloonViewControllerPhone *)self updateStickersAnimated:1];
  }
}

- (double)_balloonOffsetFromTranscriptParentBalloon
{
  v3 = [(CKFullScreenBalloonViewController *)self delegate];
  v4 = [(CKFullScreenBalloonViewController *)self chatItem];
  [v3 fullScreenBalloonViewController:self balloonFrameForChatItem:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
  [v13 ck_identityTransformFrame];
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
  v3 = [(CKFullScreenBalloonViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CKFullScreenBalloonViewController *)self delegate];
    v6 = [(CKFullScreenBalloonViewController *)self chatItem];
    v7 = [v5 shouldDismissKeyboardWhenShowingFullScreenAcknowledgmentPickerForBalloonChatItem:v6];
  }

  else
  {
    v7 = 0;
  }

  if ([MEMORY[0x1E69DCBB8] usesInputSystemUI] && ((IMIsRunningInMessagesExtension() | v7) & 1) == 0)
  {
    v8 = [(CKFullScreenBalloonViewController *)self delegate];
    [v8 fullScreenBalloonViewControllerRequestShowKeyboardSnapshot:self];
  }
}

- (void)_revealTintAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKFullScreenBalloonViewController *)self displayConfiguration];
  v6 = [v5 type];

  if (v6 == 1)
  {
    if (v3)
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
    if (v3)
    {
      v10 = [(CKFullScreenBalloonViewController *)self displayConfiguration];
      [v10 tintRevealDuration];
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

- (void)updateStickersAnimated:(BOOL)a3
{
  v5 = [(CKFullScreenBalloonViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CKFullScreenBalloonViewController *)self displayConfiguration];
    v8 = [v7 shouldShowStickers];

    if (v8)
    {
      v9 = [(CKFullScreenBalloonViewControllerPhone *)self mirrorStickerCells];
      v10 = [v9 mutableCopy];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = [MEMORY[0x1E695DF70] array];
      }

      v29 = v12;

      v13 = [(CKFullScreenBalloonViewControllerPhone *)self mirrorStickerViews];
      v14 = [v13 mutableCopy];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = [MEMORY[0x1E695DF70] array];
      }

      v17 = v16;

      v18 = [(CKFullScreenBalloonViewControllerPhone *)self _parentStickerChatItemGUIDToMirrorStickerViewDictionary];
      v19 = [(CKFullScreenBalloonViewController *)self delegate];
      v38 = 0;
      v37 = 0;
      v20 = [(CKFullScreenBalloonViewController *)self chatItem];
      v21 = [v20 IMChatItem];
      v22 = [v21 guid];
      [v19 associatedStickerCells:&v38 stickerChatItems:&v37 chatItemGUID:v22];
      v23 = v38;
      v24 = v37;

      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __65__CKFullScreenBalloonViewControllerPhone_updateStickersAnimated___block_invoke;
      v30[3] = &unk_1E72F6D98;
      v31 = v24;
      v32 = v18;
      v33 = self;
      v34 = v29;
      v35 = v17;
      v36 = a3;
      v25 = v17;
      v26 = v29;
      v27 = v18;
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
  v3 = [(CKFullScreenBalloonViewController *)self displayConfiguration];
  v4 = [v3 shouldShowStickers];

  if (v4)
  {
    v5 = [(CKFullScreenBalloonViewControllerPhone *)self mirrorStickerViews];
    [v5 enumerateObjectsUsingBlock:&__block_literal_global_241];
  }
}

- (void)setStickerVisibility:(BOOL)a3 forStickerChatItemGUID:(id)a4
{
  v5 = a4;
  v7 = [(CKFullScreenBalloonViewControllerPhone *)self _parentStickerChatItemGUIDToMirrorStickerViewDictionary];
  v6 = [v7 valueForKey:v5];

  [v6 ck_performHideAnimated:0 completion:0];
}

- (id)_parentStickerChatItemGUIDToMirrorStickerViewDictionary
{
  v3 = MEMORY[0x1E695DF90];
  v4 = [(CKFullScreenBalloonViewControllerPhone *)self parentStickerChatItems];
  v5 = [v3 dictionaryWithCapacity:{objc_msgSend(v4, "count")}];

  v6 = [(CKFullScreenBalloonViewControllerPhone *)self parentStickerChatItems];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __97__CKFullScreenBalloonViewControllerPhone__parentStickerChatItemGUIDToMirrorStickerViewDictionary__block_invoke;
  v13 = &unk_1E72F6DE0;
  v14 = self;
  v15 = v5;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:&v10];

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

- (void)_updateBoundsCenterFrameForMirrorAssociatedItemView:(id)a3 parentStickerChatItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CKFullScreenBalloonViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(CKFullScreenBalloonViewController *)self delegate];
    [v10 fullScreenBalloonViewController:self stickerBoundsForChatItem:v7];
    [v6 setBounds:?];
  }

  v11 = [(CKFullScreenBalloonViewController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(CKFullScreenBalloonViewController *)self delegate];
    [v13 fullScreenBalloonViewController:self stickerCenterForChatItem:v7];
    [v6 setCenter:?];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v6;
    v15 = [v14 internalView];
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
    if (v15)
    {
      [v15 transform];
    }

    v20 = v19;
    v21 = v18;
    v22 = v16;
    [v15 setTransform:&v20];
    [v14 bounds];
    [v15 setFrame:?];
    v20 = v26;
    v21 = v27;
    v22 = v28;
    [v14 setTransform:&v20];
    v20 = v23;
    v21 = v24;
    v22 = v25;
    [v15 setTransform:&v20];
  }
}

- (void)presentStickerDetailControllerWithStickers:(id)a3
{
  v4 = a3;
  v9 = [[CKStickerDetailViewController alloc] initWithStickerChatItems:v4];

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
  v7 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
  v8 = [v5 popoverPresentationController];
  [v8 setSourceView:v7];

  [(CKFullScreenBalloonViewControllerPhone *)self presentViewController:v5 animated:1 completion:0];
}

- (void)viewDidLoad
{
  v17[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = CKFullScreenBalloonViewControllerPhone;
  [(CKFullScreenBalloonViewController *)&v16 viewDidLoad];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
  v4 = [(CKFullScreenBalloonViewController *)self chatItem];
  v5 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
  if (!v5)
  {
    v6 = [(CKFullScreenBalloonViewController *)self displayConfiguration];
    v7 = [v6 snapshotView];

    if (v7)
    {
      v8 = [(CKFullScreenBalloonViewController *)self displayConfiguration];
      v5 = [v8 snapshotView];
    }

    else
    {
      v5 = [(CKFullScreenBalloonViewControllerPhone *)self generateDuplicateBalloonViewForChatItem:v4];
    }

    [v5 setAlpha:0.0];
    [(CKFullScreenBalloonViewControllerPhone *)self setBalloonView:v5];
  }

  v9 = [(CKFullScreenBalloonViewControllerPhone *)self view];
  [v9 addSubview:v5];

  if ([(CKFullScreenBalloonViewControllerPhone *)self hideBalloonView])
  {
    v10 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
    [v10 removeFromSuperview];
  }

  else
  {
    [(CKFullScreenBalloonViewControllerPhone *)self loadLivePhotoBalloonViewIfNeeded];
  }

  if ([(CKFullScreenBalloonViewController *)self shouldShowTapbackAttribution])
  {
    v11 = [[_TtC7ChatKit24CKTapbackAttributionView alloc] initWithMessagePartChatItem:v4];
    [(CKTapbackAttributionView *)v11 setDelegate:self];
    [(CKFullScreenBalloonViewControllerPhone *)self setAttributionView:v11];
    v12 = [(CKFullScreenBalloonViewControllerPhone *)self view];
    v13 = [(CKFullScreenBalloonViewControllerPhone *)self attributionView];
    [v12 addSubview:v13];
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
  v2 = [(CKFullScreenBalloonViewControllerPhone *)self view];
  v3 = [v2 safeAreaLayoutGuide];
  [v3 layoutFrame];
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
  v3 = [(CKFullScreenBalloonViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CKFullScreenBalloonViewController *)self delegate];
    [v5 systemMinimumLayoutMarginsForFullScreenBalloonViewController:self];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v7 = *(MEMORY[0x1E69DC5C0] + 8);
    v9 = *(MEMORY[0x1E69DC5C0] + 24);
  }

  v10 = [(CKFullScreenBalloonViewControllerPhone *)self view];
  if ([v10 effectiveUserInterfaceLayoutDirection])
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

- (double)minimumAllowedBalloonOriginY:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v17 = [(CKFullScreenBalloonViewController *)self shouldShowTapbackPicker];
  v18 = 0.0;
  if (v17)
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
  v3 = [(CKFullScreenBalloonViewController *)self delegate];
  [v3 fullScreenBalloonViewControllerSafeAreaLayoutFrame:self];
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
    v3 = [(CKFullScreenBalloonViewController *)self delegate];
    v4 = [(CKFullScreenBalloonViewController *)self chatItem];
    [v3 fullScreenBalloonViewController:self balloonFrameForChatItem:v4];
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

    v15 = [(CKFullScreenBalloonViewController *)self supplementaryLayoutContext];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      if (self->_hasSetInitialBalloonViewFrame)
      {
        v17 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
        [v17 frame];
        v6 = v18;
        v8 = v19;
        v10 = v20;
        v12 = v21;
      }

      v22 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
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
      [v22 setCenter:{floor(v25 * v24) / v24, floor(v26 * v24) / v24}];

      v27 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
      v28 = *v23;
      v29 = v23[1];
      [v27 setBounds:{*v23, v29, v10, v12}];

      v30 = [(CKFullScreenBalloonViewControllerPhone *)self livePhotoBalloonView];
      if (CKMainScreenScale_once_91 != -1)
      {
        [CKFullScreenBalloonViewControllerPhone viewDidLayoutSubviews];
      }

      v31 = 1.0;
      if (*&CKMainScreenScale_sMainScreenScale_91 != 0.0)
      {
        v31 = *&CKMainScreenScale_sMainScreenScale_91;
      }

      [v30 setCenter:{floor(v25 * v31) / v31, floor(v26 * v31) / v31}];

      v32 = [(CKFullScreenBalloonViewControllerPhone *)self livePhotoBalloonView];
      [v32 setBounds:{v28, v29, v10, v12}];

      v33 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
      [v33 frame];
      v6 = v34;
      v8 = v35;
      v10 = v36;
      v12 = v37;
    }

    v38 = [(CKFullScreenBalloonViewControllerPhone *)self view];
    v39 = [v38 safeAreaLayoutGuide];
    [v39 layoutFrame];
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
    v56 = [(CKFullScreenBalloonViewControllerPhone *)self attributionView];
    [v56 setFrame:{v49, v51, v53, v55}];

    if (self->_hasSetInitialBalloonViewFrame)
    {
      v57 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
      [v57 frame];
      v6 = v58;
      v8 = v59;
      v10 = v60;
      v12 = v61;
    }

    else
    {
      self->_hasSetInitialBalloonViewFrame = 1;
      v62 = [(CKFullScreenBalloonViewController *)self displayConfiguration];
      v63 = [v62 shouldAvoidAppCardAtInitialPresentation];

      if (v63)
      {
        v64 = [(CKFullScreenBalloonViewController *)self delegate];
        v65 = objc_opt_respondsToSelector();

        v66 = 0.0;
        if (v65)
        {
          v67 = [(CKFullScreenBalloonViewController *)self delegate];
          [v67 _expectedAppCardAndEntryViewHeight];
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

        v72 = [(CKFullScreenBalloonViewControllerPhone *)self view];
        [v72 frame];
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

    v74 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
    [v74 setFrame:{v6, v8, v10, v12}];

    v75 = [(CKFullScreenBalloonViewControllerPhone *)self livePhotoBalloonView];
    [v75 setFrame:{v6, v8, v10, v12}];

    v76 = [(CKFullScreenBalloonViewControllerPhone *)self highlightButton];

    if (v76)
    {
      v77 = [(CKFullScreenBalloonViewControllerPhone *)self highlightButton];
      [v77 calculateFrameRelativeToBalloonViewFrame];
      v79 = v78;
      v81 = v80;
      v83 = v82;
      v85 = v84;
      v86 = [(CKFullScreenBalloonViewControllerPhone *)self highlightButton];
      [v86 setFrame:{v79, v81, v83, v85}];
    }
  }

  if (IMOSLoggingEnabled())
  {
    v87 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
    {
      v88 = [(CKFullScreenBalloonViewControllerPhone *)self pickerBalloonParentView];
      *buf = 136315394;
      v101 = "[CKFullScreenBalloonViewControllerPhone viewDidLayoutSubviews]";
      v102 = 2112;
      v103 = v88;
      _os_log_impl(&dword_19020E000, v87, OS_LOG_TYPE_INFO, "[Tapbacks] %s, viewDidLayoutSubviews: pickerBalloonParentView > %@", buf, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v89 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
    {
      v90 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
      *buf = 136315394;
      v101 = "[CKFullScreenBalloonViewControllerPhone viewDidLayoutSubviews]";
      v102 = 2112;
      v103 = v90;
      _os_log_impl(&dword_19020E000, v89, OS_LOG_TYPE_INFO, "[Tapbacks] %s, viewDidLayoutSubviews: balloonView > %@", buf, 0x16u);
    }
  }
}

- (void)updateReplyButtonSizeAndLocationForBalloonViewFrameIfNeeded:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(CKFullScreenBalloonViewController *)self replyButton];

  if (v8)
  {
    v9 = [(CKFullScreenBalloonViewControllerPhone *)self highlightButton];
    v10 = v9 != 0;

    [(CKFullScreenBalloonViewControllerPhone *)self updateReplyButtonSizeAndLocation:v10 layoutRelativeToHighlightButton:x, y, width, height];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(CKFullScreenBalloonViewControllerPhone *)self view];
  v3 = [v2 window];

  if (v3)
  {
    v4 = [v3 windowScene];
    v5 = [v4 interfaceOrientation];

    v6 = 1 << v5;
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

- (void)performClosingAnimationsAnimated:(BOOL)a3 withSendAnimation:(BOOL)a4 withCompletion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v40 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = [(CKFullScreenBalloonViewControllerPhone *)self view];
  v10 = [v9 superview];
  if (v10)
  {

LABEL_4:
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        if (v6)
        {
          v13 = @"YES";
        }

        else
        {
          v13 = @"NO";
        }

        v14 = _Block_copy(v8);
        *buf = 138412802;
        v35 = v13;
        v36 = 1024;
        v37 = v5;
        v38 = 2112;
        v39 = v14;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "[Tapbacks] performClosingAnimationsAnimated: %@, WithSendAnimation: %d, withCompletion:%@", buf, 0x1Cu);
      }
    }

    self->_shouldLayoutViews = 0;
    v15 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
    [v15 ck_identityTransformFrame];

    [(CKFullScreenBalloonViewControllerPhone *)self balloonYOffsetFromTranscript];
    v16 = [(CKFullScreenBalloonViewControllerPhone *)self attributionView];
    [v16 dismiss];

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
    v32 = v8;
    v18 = _Block_copy(v31);
    if (v6 && ![(CKFullScreenBalloonViewControllerPhone *)self animationsDisabledForTesting])
    {
      v19 = [(CKFullScreenBalloonViewController *)self displayConfiguration];
      [v19 tintDismissDuration];
      v21 = v20;

      v22 = [(CKFullScreenBalloonViewControllerPhone *)self pickerBalloonParentView];
      [v22 dismiss];

      v23 = [(CKFullScreenBalloonViewControllerPhone *)self highlightButton];

      if (v23)
      {
        v24 = [(CKFullScreenBalloonViewControllerPhone *)self highlightButton];
        [v24 performHideAnimationWithDuration:v18 completion:v21];

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
  v3 = [(CKFullScreenBalloonViewControllerPhone *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  v5 = [(CKFullScreenBalloonViewController *)self displayConfiguration];
  v9 = v5;
  if (v4 == 2)
  {
    [v5 darkModeTintAlpha];
  }

  else
  {
    [v5 tintAlpha];
  }

  v7 = v6;
  v8 = [(CKFullScreenBalloonViewController *)self tintView];
  [v8 setAlpha:v7];
}

- (void)keyboardWillShow:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;

  v8 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
  [v8 frame];
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

    v20 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
    [v20 setFrame:{v10, v18, v14, v16}];

    v21 = [(CKFullScreenBalloonViewControllerPhone *)self pickerBalloonParentView];
    [v21 frame];
    v23 = v22;
    v25 = v24;
    v27 = v26;

    [(CKFullScreenBalloonViewControllerPhone *)self pickerBalloonParentViewY];
    v29 = v28;
    v30 = [(CKFullScreenBalloonViewControllerPhone *)self pickerBalloonParentView];
    [v30 setFrame:{v23, v29, v25, v27}];

    v31 = [(CKFullScreenBalloonViewController *)self delegate];
    v32 = objc_opt_respondsToSelector();

    if (v32)
    {
      v33 = v18 - v12;
      v34 = [(CKFullScreenBalloonViewController *)self delegate];
      v38 = [v34 collectionView];

      [v38 contentOffset];
      v36 = v35;
      [v38 contentOffset];
      [v38 setContentOffset:{v36, v37 - v33}];
    }
  }
}

- (void)tapbackAttributionView:(id)a3 didTapToSaveSticker:(id)a4
{
  v8 = a4;
  v5 = [(CKFullScreenBalloonViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CKFullScreenBalloonViewController *)self delegate];
    [v7 fullScreenBalloonViewController:self didTapToSaveSticker:v8];
  }
}

- (void)stickerDetailViewController:(id)a3 selectedStickerPackWithAdamID:(id)a4
{
  v5 = a4;
  v6 = [(CKFullScreenBalloonViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __100__CKFullScreenBalloonViewControllerPhone_stickerDetailViewController_selectedStickerPackWithAdamID___block_invoke;
    v8[3] = &unk_1E72EB8D0;
    v8[4] = self;
    v9 = v5;
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

- (void)stickerDetailViewController:(id)a3 deletedStickerWithTransferGUID:(id)a4
{
  v5 = a4;
  v6 = [(CKFullScreenBalloonViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __101__CKFullScreenBalloonViewControllerPhone_stickerDetailViewController_deletedStickerWithTransferGUID___block_invoke;
    v8[3] = &unk_1E72EB8D0;
    v8[4] = self;
    v9 = v5;
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

- (void)stickerDetailViewController:(id)a3 didRequestSaveSticker:(id)a4
{
  v5 = a4;
  v6 = [(CKFullScreenBalloonViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __92__CKFullScreenBalloonViewControllerPhone_stickerDetailViewController_didRequestSaveSticker___block_invoke;
    v8[3] = &unk_1E72EB8D0;
    v8[4] = self;
    v9 = v5;
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

- (void)_stickerDetailViewControllerCloseButtonPressed:(id)a3
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

- (void)livePhotoView:(id)a3 didEndPlaybackWithStyle:(int64_t)a4
{
  v5 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView:a3];
  [v5 setAlpha:1.0];

  v6 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
  [v6 setHidden:0];

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
  v2 = [(CKFullScreenBalloonViewController *)self displayConfiguration];
  v3 = [v2 shouldPresentAsTapbackKeyboardInput];

  return v3;
}

- (void)setupReplyButton
{
  v34 = [MEMORY[0x1E69794A0] layer];
  [(CKFullScreenBalloonViewControllerPhone *)self setReplyButtonBorderLayer:v34];
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 replyButtonBorderWidth];
  [v34 setLineWidth:?];

  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 theme];
  v6 = [v5 replyButtonBorderColor];
  [v34 setStrokeColor:{objc_msgSend(v6, "cgColor")}];

  [v34 setFillColor:CGColorGetConstantColor(*MEMORY[0x1E695F090])];
  v7 = [MEMORY[0x1E69794A0] layer];
  [(CKFullScreenBalloonViewControllerPhone *)self setReplyButtonMaskLayer:v7];
  v8 = MEMORY[0x1E69DC730];
  v9 = +[CKUIBehavior sharedBehaviors];
  [v9 replyButtonBackgroundBlurRadius];
  v10 = [v8 effectWithBlurRadius:?];

  v11 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v10];
  [(CKFullScreenBalloonViewControllerPhone *)self setReplyButtonEffectView:v11];
  v12 = +[CKUIBehavior sharedBehaviors];
  v13 = [v12 theme];
  v14 = [v13 replyButtonColor];
  [v11 setBackgroundColor:v14];

  v15 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(CKFullScreenBalloonViewControllerPhone *)self setReplyButtonView:v15];
  [v15 addSubview:v11];
  [v15 setUserInteractionEnabled:0];
  v16 = [v15 layer];
  [v16 setMask:v7];

  v17 = [v15 layer];
  [v17 addSublayer:v34];

  v18 = [MEMORY[0x1E69DC738] buttonWithType:0];
  [(CKFullScreenBalloonViewController *)self setReplyButton:v18];
  [v18 setAutoresizingMask:5];
  v19 = +[CKUIBehavior sharedBehaviors];
  [v19 replyButtonEdgeInsets];
  [v18 setContentEdgeInsets:?];

  [v18 addTarget:self action:sel_replyButtonPressed_ forControlEvents:64];
  [v18 addSubview:v15];
  v20 = [v18 layer];
  [v20 setContentsScale:0.0];

  if (IMEnableInlineReplyGlyph())
  {
    v21 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrowshape.turn.up.backward.fill"];
    [v18 setImage:v21 forState:0];
    v22 = [v18 imageView];
    [v18 bringSubviewToFront:v22];

    v23 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v18 setTintColor:v23];
  }

  else
  {
    v24 = [v18 titleLabel];
    v25 = +[CKUIBehavior sharedBehaviors];
    v26 = [v25 replyButtonFont];
    [v24 setFont:v26];

    v27 = [v18 titleLabel];
    [v27 setAdjustsFontForContentSizeCategory:1];

    v28 = CKFrameworkBundle();
    v29 = [v28 localizedStringForKey:@"INLINE_REPLY_ORB_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    [v18 setTitle:v29 forState:0];

    v21 = +[CKUIBehavior sharedBehaviors];
    v23 = [v21 theme];
    v30 = [v23 replyButtonTextColor];
    [v18 setTitleColor:v30 forState:0];
  }

  v31 = [MEMORY[0x1E69794A0] layer];
  [(CKFullScreenBalloonViewControllerPhone *)self setTintViewMaskLayer:v31];
  v32 = [(CKFullScreenBalloonViewController *)self tintView];
  v33 = [v32 layer];
  [v33 setMask:v31];
}

- (void)updateReplyButtonSizeAndLocation:(CGRect)a3 layoutRelativeToHighlightButton:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v87 = *MEMORY[0x1E69E9840];
  v10 = [(CKFullScreenBalloonViewController *)self replyButton];

  if (!v10)
  {
    return;
  }

  v11 = [(CKFullScreenBalloonViewController *)self replyButton];
  [v11 sizeToFit];

  v12 = [(CKFullScreenBalloonViewController *)self replyButton];
  [v12 frame];
  v81 = v14;
  v82 = v13;

  v15 = [(CKFullScreenBalloonViewController *)self replyButton];
  [v15 bounds];
  v79 = v17;
  v80 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [(CKFullScreenBalloonViewController *)self tintView];
  [v22 frame];
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
  if (v4)
  {
    v27 = +[CKUIBehavior sharedBehaviors];
    [v27 replyButtonRelativePosition];
    v29 = v28;

    v30 = [(CKFullScreenBalloonViewController *)self chatItem];
    v31 = [v30 transcriptOrientation];

    v32 = x;
    v33 = y;
    v34 = width;
    v35 = height;
    if (v31)
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
    v57 = [(CKFullScreenBalloonViewControllerPhone *)self traitCollection];
    [v57 displayScale];
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
    v42 = [(CKFullScreenBalloonViewControllerPhone *)self traitCollection];
    [v42 displayScale];
    v44 = v43;

    v45 = [(CKFullScreenBalloonViewController *)self chatItem];
    LODWORD(v42) = [v45 transcriptOrientation] == 2;

    v46 = [(CKFullScreenBalloonViewControllerPhone *)self view];
    v47 = v46;
    v78 = v74 - v77;
    v48 = round(v19 * v41 * v44) / v44;
    if (v42)
    {
      [v46 layoutMargins];
      v50 = v49;

      v90.origin.x = x;
      v90.origin.y = y;
      v90.size.width = width;
      v90.size.height = height;
      v36 = fmax(v50, v48 + CGRectGetMinX(v90) - v19);
    }

    else
    {
      [v46 frame];
      v52 = v51;
      v53 = [(CKFullScreenBalloonViewControllerPhone *)self view];
      [v53 layoutMargins];
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

  v60 = [(CKFullScreenBalloonViewController *)self replyButton];
  [v60 setFrame:{v36, v78, v82, v81}];

  v61 = [(CKFullScreenBalloonViewControllerPhone *)self replyButtonEffectView];
  [v61 setFrame:{v80, v79, v19, v21}];

  Mutable = CGPathCreateMutable();
  v93.origin.x = v80;
  v93.origin.y = v79;
  v93.size.width = v19;
  v93.size.height = v21;
  CGPathAddRoundedRect(Mutable, 0, v93, v59, v59);
  v63 = [(CKFullScreenBalloonViewControllerPhone *)self replyButtonBorderLayer];
  [v63 setPath:Mutable];

  CGPathRelease(Mutable);
  v64 = CGPathCreateMutable();
  v94.origin.y = v79;
  v94.origin.x = v80;
  v94.size.width = v19;
  v94.size.height = v21;
  CGPathAddRoundedRect(v64, 0, v94, v59, v59);
  v65 = [(CKFullScreenBalloonViewControllerPhone *)self replyButtonMaskLayer];
  [v65 setPath:v64];

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
  v71 = [(CKFullScreenBalloonViewController *)self tintView];
  [v71 bounds];
  CGPathAddRect(v66, 0, v97);

  v98.origin.x = v67;
  v98.origin.y = v68;
  v98.size.width = v69;
  v98.size.height = v70;
  CGPathAddRoundedRect(v66, 0, v98, v59, v59);
  v72 = [(CKFullScreenBalloonViewControllerPhone *)self tintViewMaskLayer];
  [v72 setPath:v66];

  v73 = [(CKFullScreenBalloonViewControllerPhone *)self tintViewMaskLayer];
  [v73 setFillRule:*MEMORY[0x1E69797F8]];

  CGPathRelease(v66);
}

- (void)updateReplyButtonColor
{
  v3 = [(CKFullScreenBalloonViewController *)self replyButton];

  if (v3)
  {
    v4 = [(CKFullScreenBalloonViewControllerPhone *)self replyButtonEffectView];
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 theme];
    v7 = [v6 replyButtonColor];
    [v4 setBackgroundColor:v7];

    v11 = [(CKFullScreenBalloonViewControllerPhone *)self replyButtonBorderLayer];
    v8 = +[CKUIBehavior sharedBehaviors];
    v9 = [v8 theme];
    v10 = [v9 replyButtonBorderColor];
    [v11 setStrokeColor:{objc_msgSend(v10, "cgColor")}];
  }
}

- (double)replyButtonVerticalOffset
{
  v3 = [(CKFullScreenBalloonViewController *)self replyButton];

  if (!v3)
  {
    return 0.0;
  }

  v4 = [(CKFullScreenBalloonViewController *)self replyButton];
  [v4 sizeToFit];

  v5 = [(CKFullScreenBalloonViewController *)self replyButton];
  [v5 bounds];
  v7 = v6;
  v8 = +[CKUIBehavior sharedBehaviors];
  [v8 replyButtonVerticalOriginOffsetPercent];
  v10 = v7 * v9;
  v11 = [(CKFullScreenBalloonViewControllerPhone *)self traitCollection];
  [v11 displayScale];
  v13 = round(v10 * v12) / v12;

  return v13;
}

- (double)replyButtonHeightFromBalloon
{
  v3 = [(CKFullScreenBalloonViewController *)self replyButton];

  if (!v3)
  {
    return 0.0;
  }

  [(CKFullScreenBalloonViewControllerPhone *)self replyButtonVerticalOffset];
  v5 = v4;
  v6 = [(CKFullScreenBalloonViewController *)self replyButton];
  [v6 bounds];
  v8 = v7 - v5;

  return v8;
}

- (void)messageHightlightButtonWasClicked:(id)a3
{
  v4 = [a3 isHighlighted];
  v5 = [(CKFullScreenBalloonViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v8 = [(CKFullScreenBalloonViewController *)self delegate];
    v7 = [(CKFullScreenBalloonViewController *)self chatItem];
    [v8 fullScreenBalloonViewController:self sendMessageHighlight:v4 forChatItem:v7];
  }
}

- (void)messageHightlightButtonDidFinishAnimating:(id)a3
{
  [a3 removeFromSuperview];
  v4 = [(CKFullScreenBalloonViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKFullScreenBalloonViewController *)self delegate];
    [v6 fullScreenBalloonViewControllerMessageHighlightButtonDidFinishAnimating:self];
  }
}

- (CGRect)messageHightlightButtonBalloonViewFrame:(id)a3
{
  v3 = [(CKFullScreenBalloonViewControllerPhone *)self balloonView];
  [v3 ck_identityTransformFrame];
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

- (CGRect)messageHightlightButtonReplyButtonFrame:(id)a3
{
  v4 = [(CKFullScreenBalloonViewController *)self replyButton];
  if (v4)
  {
    v5 = [(CKFullScreenBalloonViewController *)self replyButton];
    [v5 frame];
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

- (char)messageHightlightButtonTranscriptOrientation:(id)a3
{
  v3 = [(CKFullScreenBalloonViewController *)self chatItem];
  v4 = [v3 transcriptOrientation];

  return v4;
}

- (void)addHighlightButtonIfNeeded
{
  v3 = [(CKFullScreenBalloonViewController *)self displayConfiguration];
  v4 = [v3 shouldShowHighlightButton];

  if (v4)
  {
    v5 = [(CKFullScreenBalloonViewController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v12 = [(CKFullScreenBalloonViewController *)self chatItem];
      v7 = [(CKFullScreenBalloonViewController *)self delegate];
      v8 = [v7 fullScreenBalloonViewControllerShouldShowHightlightButton:self forChatItem:v12];

      if (v8)
      {
        v9 = -[CKMessageHighlightButton initWithInitialState:]([CKMessageHighlightButton alloc], "initWithInitialState:", [v12 syndicationType] != 0);
        [(CKMessageHighlightButton *)v9 setDelegate:self];
        v10 = [(CKFullScreenBalloonViewControllerPhone *)self view];
        [v10 addSubview:v9];

        v11 = [(CKFullScreenBalloonViewControllerPhone *)self view];
        [v11 bringSubviewToFront:v9];

        [(CKFullScreenBalloonViewControllerPhone *)self setHighlightButton:v9];
      }
    }
  }
}

- (void)initializeTapbackPicker
{
  v2 = self;
  sub_190ABE668();
}

- (void)showTapbackPicker
{
  v2 = self;
  sub_190ABE9A8();
}

- (double)pickerBalloonParentViewY
{
  v2 = self;
  v3 = sub_190ABF448();

  return v3;
}

- (void)insertSticker:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_190ABF6F4(a3);
}

- (void)sendTouchBarTapback:(int64_t)a3
{
  v4 = self;
  sub_190ABF990(a3);
}

- (double)balloonMinimumTopOffset:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = sub_190ABFE6C(x, y, width, height);

  return v8;
}

- (id)generateDuplicateBalloonViewForChatItem:(id)a3
{
  v5 = a3;
  v6 = self;
  v7 = sub_190AC0154(a3);

  return v7;
}

- (void)tapbackPickerViewController:(id)a3 didSelectTapback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_190AC3D40(v7, &selRef_fullScreenBalloonViewController_didSelectTapback_, "[Tapbacks] didSelectTapback: during double-tap");
}

- (void)tapbackPickerViewController:(id)a3 didDeselectTapback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_190AC3D40(v7, &selRef_fullScreenBalloonViewController_didDeselectTapback_, "[Tapbacks] didDeselectTapback: during double-tap");
}

- (id)contextualCKChatItemsForTapbackPickerViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(CKFullScreenBalloonViewController *)v5 delegate];
  if (v6)
  {
    v7 = [(CKFullScreenBalloonViewControllerDelegate *)v6 contextualChatItemsForFullScreenBalloonViewController:v5];
    swift_unknownObjectRelease();
    sub_190863204();
    sub_190D57180();

    v4 = v5;
    v5 = v7;
  }

  sub_190863204();
  v8 = sub_190D57160();

  return v8;
}

- (id)smartEmojiResponses:(id)a3 chatItem:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  v9 = [(CKFullScreenBalloonViewController *)v7 delegate];
  if (v9)
  {
    v10 = v9;
    if (([(CKFullScreenBalloonViewControllerDelegate *)v9 respondsToSelector:sel_fullScreenBalloonViewControllerSmartEmojiResponses_]& 1) != 0)
    {
      v11 = [(CKFullScreenBalloonViewControllerDelegate *)v10 fullScreenBalloonViewControllerSmartEmojiResponses:v7];
      swift_unknownObjectRelease();
      sub_190D57180();

      v6 = v8;
      v8 = v7;
      v7 = v11;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v12 = sub_190D57160();

  return v12;
}

- (void)tapbackPickerBalloonParentView:(id)a3 didInsertTapback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CKFullScreenBalloonViewControllerPhone.tapbackPickerBalloonParentView(_:didInsertTapback:)(v6, v7);
}

- (id)textInputContextIdentifier:(id)a3
{
  v3 = self;
  v4 = [(CKFullScreenBalloonViewController *)v3 delegate];
  if (v4)
  {
    v5 = v4;
    if (([(CKFullScreenBalloonViewControllerDelegate *)v4 respondsToSelector:sel_textInputContextIdentifierForFullScreenBalloonViewController_]& 1) != 0)
    {
      v6 = [(CKFullScreenBalloonViewControllerDelegate *)v5 textInputContextIdentifierForFullScreenBalloonViewController:v3];
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

- (void)tapbackPickerBalloonParentView:(id)a3 requestedPresentPlugin:(id)a4 payloadID:(id)a5
{
  if (a4)
  {
    v6 = sub_190D56D90();
  }

  else
  {
    v6 = 0;
  }

  sub_190D56F10();
  v7 = self;
  v8 = [(CKFullScreenBalloonViewController *)v7 delegate];
  if (v8)
  {
    v9 = v8;
    if (([(CKFullScreenBalloonViewControllerDelegate *)v8 respondsToSelector:sel_fullScreenBalloonViewController_requestedPresentPlugin_withPayloadID_]& 1) != 0)
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

      [(CKFullScreenBalloonViewControllerDelegate *)v9 fullScreenBalloonViewController:v7 requestedPresentPlugin:v10 withPayloadID:v11];
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }
}

- (id)tapbackPickerBalloonParentViewTapbackPileView:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = _sSo38CKFullScreenBalloonViewControllerPhoneC7ChatKitE013tapbackPickerc6Parentd11TapbackPileD0yAC023AggregateAcknowledgmentcD0CSgAC0ljckD0CF_0();

  return v6;
}

- (id)tapbackPickerBalloonParentViewTapbackBackingBalloon:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = _sSo38CKFullScreenBalloonViewControllerPhoneC7ChatKitE013tapbackPickerc6Parentd14TapbackBackingC0ySo6UIViewCSgAC0ljckD0CF_0();

  return v6;
}

- (id)tapbackPickerBalloonParentViewTapbackTintableMessageBalloon:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = CKFullScreenBalloonViewControllerPhone.tapbackPickerBalloonParentViewTapbackTintableMessageBalloon(_:)(v4);

  return v6;
}

- (void)keyCommandSelectTapback:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190AC227C(v4);
}

@end