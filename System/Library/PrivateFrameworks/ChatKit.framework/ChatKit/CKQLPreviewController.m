@interface CKQLPreviewController
- (BOOL)canCurrentPreviewItemQuickSave;
- (BOOL)fullScreenBalloonViewControllerPickerViewUsesBottomTail:(id)a3;
- (BOOL)fullScreenBalloonViewControllerShouldEnableStickerTapbacks:(id)a3;
- (BOOL)shouldShowTapbackAttributionForFullScreenBalloonViewController:(id)a3;
- (BOOL)shouldShowTapbackPickerForFullScreenBalloonViewController:(id)a3;
- (CGRect)fullScreenBalloonViewController:(id)a3 balloonFrameForChatItem:(id)a4;
- (CGRect)fullScreenBalloonViewControllerSafeAreaLayoutFrame:(id)a3;
- (CGRect)tapbackButtonFrameForFullScreenBalloonViewController:(id)a3;
- (CGSize)preferredContentSize;
- (CKChatItem)chatItem;
- (CKQLPreviewController)init;
- (CKQLPreviewControllerDelegate)chatControllerPreviewDelegate;
- (char)fullScreenBalloonViewControllerAnchorVertialOrientation:(id)a3 withBalloonFrame:(CGRect)a4;
- (id)contextualChatItemsForFullScreenBalloonViewController:(id)a3;
- (id)currentChatItem;
- (id)currentPreviewItem;
- (id)previewActions;
- (id)replyButton;
- (id)textInputContextIdentifierForFullScreenBalloonViewController:(id)a3;
- (void)_dismissFullScreenBubbleViewController:(id)a3 animated:(BOOL)a4 withSendAnimation:(BOOL)a5 completion:(id)a6;
- (void)_sendTapback:(id)a3 targetChatItem:(id)a4 isRemoval:(BOOL)a5;
- (void)currentPreviewItemDidChange;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)fullScreenBalloonViewController:(id)a3 didDeselectTapback:(id)a4;
- (void)fullScreenBalloonViewController:(id)a3 didSelectTapback:(id)a4;
- (void)fullScreenBalloonViewController:(id)a3 verticallyScrollTranscriptByAmount:(double)a4 animated:(BOOL)a5 duration:(double)a6 completion:(id)a7;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)photoLibraryPersistedSyndicatedAssetSetDidChange;
- (void)replyTapped:(id)a3;
- (void)saveTapped:(id)a3;
- (void)tapbackTapped:(id)a3;
- (void)updateBarButtonItems;
- (void)updateCurrentPreviewItemIsSaved:(BOOL)a3 valueDidChange:(BOOL *)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CKQLPreviewController

- (CKQLPreviewController)init
{
  v5.receiver = self;
  v5.super_class = CKQLPreviewController;
  v2 = [(CKQLPreviewController *)&v5 init];
  if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(QLPreviewController *)v2 setPresentationStyle:1];
    [(CKQLPreviewController *)v2 updateBarButtonItems];
    [(CKQLPreviewController *)v2 addObserver:v2 forKeyPath:@"currentPreviewItemIndex" options:3 context:0];
    v3 = [MEMORY[0x1E69A5C30] sharedInstance];
    [v3 registerPhotoLibraryPersistenceManagerListener:v2];
  }

  return v2;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:@"currentPreviewItemIndex"])
  {
    v13 = [v12 objectForKey:*MEMORY[0x1E696A500]];
    v14 = [v13 integerValue];

    v15 = [v12 objectForKey:*MEMORY[0x1E696A4F0]];
    v16 = [v15 integerValue];

    if (v14 != v16)
    {
      [(CKQLPreviewController *)self currentPreviewItemDidChange];
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = CKQLPreviewController;
    [(CKQLPreviewController *)&v17 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = CKQLPreviewController;
  [(QLPreviewController *)&v7 loadView];
  v3 = [(CKQLPreviewController *)self navigationController];
  v4 = [v3 navigationBar];
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 theme];
  [v4 setBarStyle:{objc_msgSend(v6, "navBarStyle")}];
}

- (void)viewDidAppear:(BOOL)a3
{
  v27.receiver = self;
  v27.super_class = CKQLPreviewController;
  [(QLPreviewController *)&v27 viewDidAppear:a3];
  v4 = [(CKQLPreviewController *)self presentationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(CKQLPreviewController *)self ckQLPreviewControllerDelegate];
    v7 = [v6 invisibleInkEffectControllerForPreviewController:self];

    v8 = [v7 borrowEffectView];
    v9 = [(CKQLPreviewController *)self view];
    [v9 addSubview:v8];

    [v7 setSuspended:1];
    [v8 bounds];
    v11 = v10;
    v13 = v12;
    v14 = [(CKQLPreviewController *)self view];
    [v14 bounds];
    v16 = v15;
    v18 = v17;

    v19 = fmin(v16 / v11, v18 / v13);
    CGAffineTransformMakeScale(&v26, v19, v19);
    [v8 setTransform:&v26];
    [v8 setCenter:{v16 * 0.5, v18 * 0.5}];
  }

  if ([(CKQLPreviewController *)self controllerWasDismissed])
  {
    v20 = [(QLPreviewController *)self delegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = [(CKQLPreviewController *)self ckQLPreviewControllerDelegate];
      [v22 previewControllerDidCancelDismiss:self];
    }

    [(CKQLPreviewController *)self setControllerWasDismissed:0];
  }

  v23 = [(QLPreviewController *)self delegate];
  v24 = objc_opt_respondsToSelector();

  if (v24)
  {
    v25 = [(QLPreviewController *)self delegate];
    [v25 previewController:self didTransitionToState:1];
  }

  [(CKQLPreviewController *)self updateBarButtonItems];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CKQLPreviewController;
  [(QLPreviewController *)&v8 viewWillDisappear:?];
  if (!a3 && [(CKQLPreviewController *)self isBeingDismissed])
  {
    v5 = [(QLPreviewController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(QLPreviewController *)self delegate];
      [v7 previewController:self willTransitionToState:3];
    }
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  if ([(CKQLPreviewController *)self isBeingDismissed])
  {
    v5 = [(QLPreviewController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(QLPreviewController *)self delegate];
      [v7 previewController:self didTransitionToState:3];
    }
  }

  v8.receiver = self;
  v8.super_class = CKQLPreviewController;
  [(QLPreviewController *)&v8 viewDidDisappear:v3];
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  [(CKQLPreviewController *)self setControllerWasDismissed:1];
  v7 = [(CKQLPreviewController *)self presentationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [(CKQLPreviewController *)self ckQLPreviewControllerDelegate];
    v10 = [v9 invisibleInkEffectControllerForPreviewController:self];

    [v10 updateBorrowedEffectViewSnapshot];
  }

  v11.receiver = self;
  v11.super_class = CKQLPreviewController;
  [(CKQLPreviewController *)&v11 dismissViewControllerAnimated:v4 completion:v6];
}

- (void)saveTapped:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKQLPreviewController *)self currentPreviewItem];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = v5;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Attempting to save preview item: %@", buf, 0xCu);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    if ([v7 canPerformQuickAction])
    {
      v18 = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
      v9 = CKMomentShareURLForMediaObjects(v8);

      v17 = v7;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
      v11 = *MEMORY[0x1E69A7648];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __36__CKQLPreviewController_saveTapped___block_invoke;
      v15[3] = &unk_1E72F80D8;
      v15[4] = self;
      v7 = v7;
      v16 = v7;
      v12 = [CKUtilities quickSaveConfirmationAlertForMediaObjects:v10 momentShareURL:v9 popoverSource:v4 metricsSource:v11 cancelHandler:0 preSaveHandler:0 postSaveHandler:v15];

      v13 = [v12 popoverPresentationController];
      [v13 setBarButtonItem:v4];

      if (v12)
      {
        [(CKQLPreviewController *)self presentViewController:v12 animated:1 completion:0];
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v20 = v7;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Couldn't save preview item because it wasn't quick save-able. previewItem: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CKQLPreviewController *)v5 saveTapped:v7];
    }
  }
}

void __36__CKQLPreviewController_saveTapped___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ckQLPreviewControllerDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) ckQLPreviewControllerDelegate];
    [v4 saveButtonTappedForMediaObject:*(a1 + 40) previewController:*(a1 + 32)];
  }
}

- (void)replyTapped:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKQLPreviewController *)self currentPreviewItem];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Attempting reply to item: %@", &v11, 0xCu);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    v8 = [(CKQLPreviewController *)self ckQLPreviewControllerDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(CKQLPreviewController *)self ckQLPreviewControllerDelegate];
      [v10 replyButtonTappedForMediaObject:v7 previewController:self];
    }
  }
}

- (void)tapbackTapped:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKQLPreviewController *)self currentPreviewItem];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Showing tapback menu for: %@", &v13, 0xCu);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    v8 = [(QLPreviewController *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      v11 = v7;
      goto LABEL_10;
    }

    v10 = [(CKQLPreviewController *)self ckQLPreviewControllerDelegate];
    v11 = [v10 chatItemForMediaObject:v7 previewController:self];

    if (v11)
    {
      v12 = [[CKFullScreenBalloonViewControllerQuicklook alloc] initWithChatItem:v11 delegate:self];
      [(CKFullScreenBalloonViewControllerQuicklook *)v12 setModalPresentationStyle:5];
      [(CKFullScreenBalloonViewController *)v12 setUseForcedOrientation:1];
      [(CKFullScreenBalloonViewController *)v12 setForcedOrientation:1];
      [(CKQLPreviewController *)self presentViewController:v12 animated:0 completion:0];

LABEL_10:
    }
  }
}

- (BOOL)canCurrentPreviewItemQuickSave
{
  v2 = [(CKQLPreviewController *)self currentPreviewItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 canPerformQuickAction];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)updateBarButtonItems
{
  v3 = [(CKQLPreviewController *)self currentPreviewItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  [(QLPreviewController *)self setAdditionalLeftBarButtonItems:MEMORY[0x1E695E0F0]];
  if (isKindOfClass)
  {
    v5 = MEMORY[0x1E695E0F0];

    [(QLPreviewController *)self setAdditionalRightBarButtonItems:v5];
    return;
  }

  v30 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [(QLPreviewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0 || (-[CKQLPreviewController ckQLPreviewControllerDelegate](self, "ckQLPreviewControllerDelegate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 shouldHideInteractionOptions], v9, !v10))
  {
    v12 = [(CKQLPreviewController *)self currentPreviewItem];
    objc_opt_class();
    v13 = objc_opt_isKindOfClass();

    if (v13)
    {
      v14 = [(CKQLPreviewController *)self currentPreviewItem];
      v15 = [v14 transferGUID];

      v16 = [MEMORY[0x1E69A5B80] sharedInstance];
      v17 = [v16 transferForGUID:v15];

      if ([CKCommSafetyHelper shouldDisableTranscriptCapabilitiesForFileTransfer:v17])
      {
        v18 = MEMORY[0x1E695E0F0];
        [(QLPreviewController *)self setAdditionalLeftBarButtonItems:MEMORY[0x1E695E0F0]];
        [(QLPreviewController *)self setAdditionalRightBarButtonItems:v18];

LABEL_24:
        goto LABEL_25;
      }
    }

    v15 = [(CKQLPreviewController *)self currentChatItem];
    if ([v15 canSendTapbacks])
    {
      v19 = [MEMORY[0x1E69DC708] ck_tapbackItemWithChatItem:v15 target:self action:sel_tapbackTapped_];
      [v19 setTarget:self];
      [v19 setAction:sel_tapbackTapped_];
      [(CKQLPreviewController *)self setTapbackButton:v19];
      v20 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v21 = [v20 isTapbacksRefreshEnabled];

      v22 = v30;
      if (!v21)
      {
        v22 = v6;
      }

      [v22 addObject:v19];
    }

    v23 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v24 = [v23 isTapbacksRefreshEnabled];

    v25 = [(CKQLPreviewController *)self replyButton];
    v26 = v30;
    if (!v24)
    {
      v26 = v6;
    }

    [v26 addObject:v25];

    if ([(CKQLPreviewController *)self canCurrentPreviewItemQuickSave])
    {
      if ([(CKQLPreviewController *)self currentPreviewItemIsSaved])
      {
        v27 = @"square.and.arrow.down.fill";
      }

      else
      {
        v27 = @"square.and.arrow.down";
      }

      v28 = [MEMORY[0x1E69DCAB8] systemImageNamed:v27];
      v29 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:v28 style:0 target:self action:sel_saveTapped_];
      [v6 addObject:v29];
    }

    [(QLPreviewController *)self setAdditionalLeftBarButtonItems:v30];
    [(QLPreviewController *)self setAdditionalRightBarButtonItems:v6];
    goto LABEL_24;
  }

  v11 = MEMORY[0x1E695E0F0];
  [(QLPreviewController *)self setAdditionalLeftBarButtonItems:MEMORY[0x1E695E0F0]];
  [(QLPreviewController *)self setAdditionalRightBarButtonItems:v11];
LABEL_25:
}

- (id)replyButton
{
  v3 = objc_alloc(MEMORY[0x1E69DC708]);
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 replyImage];
  v6 = [v3 initWithImage:v5 style:0 target:self action:sel_replyTapped_];

  v7 = [(CKQLPreviewController *)self currentPreviewItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [(QLPreviewController *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(CKQLPreviewController *)self ckQLPreviewControllerDelegate];
      v12 = [v11 shouldShowReplyButtonForMediaObject:v8 previewController:self];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  [v6 setEnabled:v12];

  return v6;
}

- (id)currentChatItem
{
  v3 = [(CKQLPreviewController *)self currentPreviewItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [(QLPreviewController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(CKQLPreviewController *)self ckQLPreviewControllerDelegate];
      v8 = [v7 chatItemForMediaObject:v4 previewController:self];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGSize)preferredContentSize
{
  v3 = [(CKQLPreviewController *)self navigationController];

  if (v3)
  {
    v4 = *MEMORY[0x1E695F060];
    v5 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CKQLPreviewController;
    [(CKQLPreviewController *)&v6 preferredContentSize];
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (void)updateCurrentPreviewItemIsSaved:(BOOL)a3 valueDidChange:(BOOL *)a4
{
  v5 = a3;
  v21 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *a4 = 0;
  }

  v7 = [(CKQLPreviewController *)self currentPreviewItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [v8 syndicationIdentifier];
    if (v9)
    {
      v10 = [MEMORY[0x1E69A5C30] sharedInstance];
      v11 = [MEMORY[0x1E695DFD8] setWithObject:v9];
      v12 = [v10 cachedCountOfSyndicationIdentifiersSavedToSystemPhotoLibrary:v11 shouldFetchAndNotifyAsNeeded:v5 didStartFetch:0] != 0;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = [(CKQLPreviewController *)self currentPreviewItemIsSaved];
          v16 = @"NO";
          if (v15)
          {
            v16 = @"YES";
          }

          v17 = 138412546;
          v18 = v16;
          v19 = 2112;
          v20 = v8;
          _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Not able to derive save state on current preview item because syndicationIdentifier was nil for mediaObject. Keeping previous save state (%@). mediaObject: %@", &v17, 0x16u);
        }
      }

      v12 = [(CKQLPreviewController *)self currentPreviewItemIsSaved];
    }

    if (v12 != [(CKQLPreviewController *)self currentPreviewItemIsSaved])
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "currentPreviewItem was not a CKMediaObject. defaulting currentPreviewItemIsSaved to NO", &v17, 2u);
      }
    }

    if ([(CKQLPreviewController *)self currentPreviewItemIsSaved])
    {
      v12 = 0;
LABEL_20:
      if (a4)
      {
        *a4 = 1;
      }

      [(CKQLPreviewController *)self setCurrentPreviewItemIsSaved:v12];
    }
  }
}

- (void)currentPreviewItemDidChange
{
  [(CKQLPreviewController *)self updateCurrentPreviewItemIsSaved:1 valueDidChange:0];

  [(CKQLPreviewController *)self updateBarButtonItems];
}

- (id)currentPreviewItem
{
  v13.receiver = self;
  v13.super_class = CKQLPreviewController;
  v3 = [(QLPreviewController *)&v13 currentPreviewItem];
  if (!v3)
  {
    v5 = [(QLPreviewController *)self currentPreviewItemIndex];
    if (v5 < 1 || (v6 = v5, -[QLPreviewController dataSource](self, "dataSource"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 numberOfPreviewItemsInPreviewController:self], v7, v6 >= v8))
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *v12 = 0;
          _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "CKQLPreviewController was asked for currentPreviewItem before there were any", v12, 2u);
        }
      }
    }

    else
    {
      v9 = [(QLPreviewController *)self dataSource];
      v10 = [v9 previewController:self previewItemAtIndex:v6];
    }
  }

  return v3;
}

- (id)previewActions
{
  v3 = [(QLPreviewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CKQLPreviewController *)self ckQLPreviewControllerDelegate];
    v6 = [v5 previewActionsForPreviewController:self];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (void)photoLibraryPersistedSyndicatedAssetSetDidChange
{
  v3 = 0;
  [(CKQLPreviewController *)self updateCurrentPreviewItemIsSaved:0 valueDidChange:&v3];
  if (v3 == 1)
  {
    [(CKQLPreviewController *)self updateBarButtonItems];
  }
}

- (id)contextualChatItemsForFullScreenBalloonViewController:(id)a3
{
  v4 = [(QLPreviewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(CKQLPreviewController *)self ckQLPreviewControllerDelegate];
    v6 = [v5 contextualCKChatItemsForPreviewController:self];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (CGRect)tapbackButtonFrameForFullScreenBalloonViewController:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    [(QLPreviewController *)self frameForAdditionalButtonWithActionName:sel_tapbackTapped_];
  }

  else
  {
    v4 = *MEMORY[0x1E695F058];
    v5 = *(MEMORY[0x1E695F058] + 8);
    v6 = *(MEMORY[0x1E695F058] + 16);
    v7 = *(MEMORY[0x1E695F058] + 24);
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (BOOL)fullScreenBalloonViewControllerPickerViewUsesBottomTail:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  [(CKQLPreviewController *)self tapbackButtonFrameForFullScreenBalloonViewController:a3];
  y = v22.origin.y;
  if (CGRectIsEmpty(v22))
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CKQLPreviewController fullScreenBalloonViewControllerPickerViewUsesBottomTail:v5];
    }
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [(CKQLPreviewController *)self childViewControllers];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
LABEL_6:
      v10 = 0;
      while (1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v8)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      v5 = v11;

      if (v5)
      {
        v12 = [v5 navigationBar];
        [v12 frame];
        MaxY = CGRectGetMaxY(v23);

        if (y < MaxY)
        {
          v14 = 0;
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_12:

      v5 = 0;
    }
  }

  v14 = 1;
LABEL_17:

  return v14;
}

- (CGRect)fullScreenBalloonViewController:(id)a3 balloonFrameForChatItem:(id)a4
{
  if (objc_opt_respondsToSelector())
  {
    [(QLPreviewController *)self frameForAdditionalButtonWithActionName:sel_tapbackTapped_];
  }

  else
  {
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (char)fullScreenBalloonViewControllerAnchorVertialOrientation:(id)a3 withBalloonFrame:(CGRect)a4
{
  y = a4.origin.y;
  v22 = *MEMORY[0x1E69E9840];
  if (CGRectIsEmpty(a4))
  {
    return 0;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(CKQLPreviewController *)self childViewControllers];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v17 + 1) + 8 * v11);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v13 = v12;

    if (v13)
    {
      v14 = [v13 navigationBar];
      [v14 frame];
      MaxY = CGRectGetMaxY(v23);

      if (y < MaxY)
      {
        v6 = 1;
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_11:

    v13 = 0;
  }

  v6 = 0;
LABEL_16:

  return v6;
}

- (void)fullScreenBalloonViewController:(id)a3 verticallyScrollTranscriptByAmount:(double)a4 animated:(BOOL)a5 duration:(double)a6 completion:(id)a7
{
  if (a7)
  {
    (*(a7 + 2))(a7, a4, a6);
  }
}

- (CGRect)fullScreenBalloonViewControllerSafeAreaLayoutFrame:(id)a3
{
  v3 = [(CKQLPreviewController *)self view];
  [v3 bounds];
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

- (void)fullScreenBalloonViewController:(id)a3 didSelectTapback:(id)a4
{
  v6 = a4;
  v8 = a3;
  v7 = [v8 chatItem];
  [(CKQLPreviewController *)self _sendTapback:v6 targetChatItem:v7 isRemoval:0];

  [v8 beginDismissal];
}

- (void)fullScreenBalloonViewController:(id)a3 didDeselectTapback:(id)a4
{
  v6 = a4;
  v8 = a3;
  v7 = [v8 chatItem];
  [(CKQLPreviewController *)self _sendTapback:v6 targetChatItem:v7 isRemoval:1];

  [v8 beginDismissal];
}

- (void)_sendTapback:(id)a3 targetChatItem:(id)a4 isRemoval:(BOOL)a5
{
  v5 = a5;
  v12 = a3;
  v8 = a4;
  v9 = [(QLPreviewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(CKQLPreviewController *)self ckQLPreviewControllerDelegate];
    [v11 previewController:self sendTapback:v12 targetChatItem:v8 isRemoval:v5];
  }
}

- (BOOL)shouldShowTapbackAttributionForFullScreenBalloonViewController:(id)a3
{
  v4 = a3;
  v5 = [(QLPreviewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CKQLPreviewController *)self ckQLPreviewControllerDelegate];
    v8 = [v4 chatItem];
    v9 = [v7 previewController:self shouldShowTapbackAttributionForChatItem:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldShowTapbackPickerForFullScreenBalloonViewController:(id)a3
{
  v4 = a3;
  v5 = [(QLPreviewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CKQLPreviewController *)self ckQLPreviewControllerDelegate];
    v8 = [v4 chatItem];
    v9 = [v7 previewController:self shouldShowTapbackPickerForChatItem:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)fullScreenBalloonViewControllerShouldEnableStickerTapbacks:(id)a3
{
  v4 = [(QLPreviewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = [(CKQLPreviewController *)self ckQLPreviewControllerDelegate];
  v7 = [v6 previewControllerShouldEnableStickerTapbacks:self];

  return v7;
}

- (id)textInputContextIdentifierForFullScreenBalloonViewController:(id)a3
{
  v4 = [(QLPreviewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKQLPreviewController *)self ckQLPreviewControllerDelegate];
    v7 = [v6 textInputContextIdentifierForPreviewController:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_dismissFullScreenBubbleViewController:(id)a3 animated:(BOOL)a4 withSendAnimation:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v8 = a4;
  v30 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "_dismissFullScreenBubbleViewControllerAnimated", buf, 2u);
    }
  }

  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __102__CKQLPreviewController__dismissFullScreenBubbleViewController_animated_withSendAnimation_completion___block_invoke;
  v21 = &unk_1E72ED1C8;
  v22 = self;
  v13 = v11;
  v23 = v13;
  v14 = _Block_copy(&v18);
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      if (v8)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      v17 = _Block_copy(v13);
      *buf = 138412802;
      v25 = v16;
      v26 = 1024;
      v27 = v7;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "_dismissFullScreenBubbleViewControllerAnimated %@:WithSendAnimation: %d, completion %@", buf, 0x1Cu);
    }
  }

  if (CKIsRunningInMessagesTranscriptExtension())
  {
    v14[2](v14);
  }

  else if (v8)
  {
    if (v7)
    {
      [v10 performSendAndCloseAnimationWithCompletion:{v14, v18, v19, v20, v21, v22}];
    }

    else
    {
      [v10 performCancelAnimationWithCompletion:{v14, v18, v19, v20, v21, v22}];
    }
  }

  else
  {
    [v10 dismissImmediatelyWithNoAnimations];
    v14[2](v14);
  }
}

uint64_t __102__CKQLPreviewController__dismissFullScreenBubbleViewController_animated_withSendAnimation_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:0 completion:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v6.receiver = self;
  v6.super_class = CKQLPreviewController;
  [(QLPreviewController *)&v6 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  v5 = [(CKQLPreviewController *)self presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 dismissViewControllerAnimated:1 completion:0];
  }
}

- (CKChatItem)chatItem
{
  WeakRetained = objc_loadWeakRetained(&self->_chatItem);

  return WeakRetained;
}

- (CKQLPreviewControllerDelegate)chatControllerPreviewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_chatControllerPreviewDelegate);

  return WeakRetained;
}

- (void)saveTapped:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Couldn't save preview item because it wasn't a CKMediaObject. previewItem: %@", &v2, 0xCu);
}

@end