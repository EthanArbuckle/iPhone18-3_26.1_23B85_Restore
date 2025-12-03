@interface CKQLPreviewController
- (BOOL)canCurrentPreviewItemQuickSave;
- (BOOL)fullScreenBalloonViewControllerPickerViewUsesBottomTail:(id)tail;
- (BOOL)fullScreenBalloonViewControllerShouldEnableStickerTapbacks:(id)tapbacks;
- (BOOL)shouldShowTapbackAttributionForFullScreenBalloonViewController:(id)controller;
- (BOOL)shouldShowTapbackPickerForFullScreenBalloonViewController:(id)controller;
- (CGRect)fullScreenBalloonViewController:(id)controller balloonFrameForChatItem:(id)item;
- (CGRect)fullScreenBalloonViewControllerSafeAreaLayoutFrame:(id)frame;
- (CGRect)tapbackButtonFrameForFullScreenBalloonViewController:(id)controller;
- (CGSize)preferredContentSize;
- (CKChatItem)chatItem;
- (CKQLPreviewController)init;
- (CKQLPreviewControllerDelegate)chatControllerPreviewDelegate;
- (char)fullScreenBalloonViewControllerAnchorVertialOrientation:(id)orientation withBalloonFrame:(CGRect)frame;
- (id)contextualChatItemsForFullScreenBalloonViewController:(id)controller;
- (id)currentChatItem;
- (id)currentPreviewItem;
- (id)previewActions;
- (id)replyButton;
- (id)textInputContextIdentifierForFullScreenBalloonViewController:(id)controller;
- (void)_dismissFullScreenBubbleViewController:(id)controller animated:(BOOL)animated withSendAnimation:(BOOL)animation completion:(id)completion;
- (void)_sendTapback:(id)tapback targetChatItem:(id)item isRemoval:(BOOL)removal;
- (void)currentPreviewItemDidChange;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)fullScreenBalloonViewController:(id)controller didDeselectTapback:(id)tapback;
- (void)fullScreenBalloonViewController:(id)controller didSelectTapback:(id)tapback;
- (void)fullScreenBalloonViewController:(id)controller verticallyScrollTranscriptByAmount:(double)amount animated:(BOOL)animated duration:(double)duration completion:(id)completion;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)photoLibraryPersistedSyndicatedAssetSetDidChange;
- (void)replyTapped:(id)tapped;
- (void)saveTapped:(id)tapped;
- (void)tapbackTapped:(id)tapped;
- (void)updateBarButtonItems;
- (void)updateCurrentPreviewItemIsSaved:(BOOL)saved valueDidChange:(BOOL *)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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
    mEMORY[0x1E69A5C30] = [MEMORY[0x1E69A5C30] sharedInstance];
    [mEMORY[0x1E69A5C30] registerPhotoLibraryPersistenceManagerListener:v2];
  }

  return v2;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"currentPreviewItemIndex"])
  {
    v13 = [changeCopy objectForKey:*MEMORY[0x1E696A500]];
    integerValue = [v13 integerValue];

    v15 = [changeCopy objectForKey:*MEMORY[0x1E696A4F0]];
    integerValue2 = [v15 integerValue];

    if (integerValue != integerValue2)
    {
      [(CKQLPreviewController *)self currentPreviewItemDidChange];
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = CKQLPreviewController;
    [(CKQLPreviewController *)&v17 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = CKQLPreviewController;
  [(QLPreviewController *)&v7 loadView];
  navigationController = [(CKQLPreviewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  v5 = +[CKUIBehavior sharedBehaviors];
  theme = [v5 theme];
  [navigationBar setBarStyle:{objc_msgSend(theme, "navBarStyle")}];
}

- (void)viewDidAppear:(BOOL)appear
{
  v27.receiver = self;
  v27.super_class = CKQLPreviewController;
  [(QLPreviewController *)&v27 viewDidAppear:appear];
  presentationController = [(CKQLPreviewController *)self presentationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    ckQLPreviewControllerDelegate = [(CKQLPreviewController *)self ckQLPreviewControllerDelegate];
    v7 = [ckQLPreviewControllerDelegate invisibleInkEffectControllerForPreviewController:self];

    borrowEffectView = [v7 borrowEffectView];
    view = [(CKQLPreviewController *)self view];
    [view addSubview:borrowEffectView];

    [v7 setSuspended:1];
    [borrowEffectView bounds];
    v11 = v10;
    v13 = v12;
    view2 = [(CKQLPreviewController *)self view];
    [view2 bounds];
    v16 = v15;
    v18 = v17;

    v19 = fmin(v16 / v11, v18 / v13);
    CGAffineTransformMakeScale(&v26, v19, v19);
    [borrowEffectView setTransform:&v26];
    [borrowEffectView setCenter:{v16 * 0.5, v18 * 0.5}];
  }

  if ([(CKQLPreviewController *)self controllerWasDismissed])
  {
    delegate = [(QLPreviewController *)self delegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      ckQLPreviewControllerDelegate2 = [(CKQLPreviewController *)self ckQLPreviewControllerDelegate];
      [ckQLPreviewControllerDelegate2 previewControllerDidCancelDismiss:self];
    }

    [(CKQLPreviewController *)self setControllerWasDismissed:0];
  }

  delegate2 = [(QLPreviewController *)self delegate];
  v24 = objc_opt_respondsToSelector();

  if (v24)
  {
    delegate3 = [(QLPreviewController *)self delegate];
    [delegate3 previewController:self didTransitionToState:1];
  }

  [(CKQLPreviewController *)self updateBarButtonItems];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = CKQLPreviewController;
  [(QLPreviewController *)&v8 viewWillDisappear:?];
  if (!disappear && [(CKQLPreviewController *)self isBeingDismissed])
  {
    delegate = [(QLPreviewController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(QLPreviewController *)self delegate];
      [delegate2 previewController:self willTransitionToState:3];
    }
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if ([(CKQLPreviewController *)self isBeingDismissed])
  {
    delegate = [(QLPreviewController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(QLPreviewController *)self delegate];
      [delegate2 previewController:self didTransitionToState:3];
    }
  }

  v8.receiver = self;
  v8.super_class = CKQLPreviewController;
  [(QLPreviewController *)&v8 viewDidDisappear:disappearCopy];
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  [(CKQLPreviewController *)self setControllerWasDismissed:1];
  presentationController = [(CKQLPreviewController *)self presentationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    ckQLPreviewControllerDelegate = [(CKQLPreviewController *)self ckQLPreviewControllerDelegate];
    v10 = [ckQLPreviewControllerDelegate invisibleInkEffectControllerForPreviewController:self];

    [v10 updateBorrowedEffectViewSnapshot];
  }

  v11.receiver = self;
  v11.super_class = CKQLPreviewController;
  [(CKQLPreviewController *)&v11 dismissViewControllerAnimated:animatedCopy completion:completionCopy];
}

- (void)saveTapped:(id)tapped
{
  v21 = *MEMORY[0x1E69E9840];
  tappedCopy = tapped;
  currentPreviewItem = [(CKQLPreviewController *)self currentPreviewItem];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = currentPreviewItem;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Attempting to save preview item: %@", buf, 0xCu);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = currentPreviewItem;
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
      v12 = [CKUtilities quickSaveConfirmationAlertForMediaObjects:v10 momentShareURL:v9 popoverSource:tappedCopy metricsSource:v11 cancelHandler:0 preSaveHandler:0 postSaveHandler:v15];

      popoverPresentationController = [v12 popoverPresentationController];
      [popoverPresentationController setBarButtonItem:tappedCopy];

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
      [(CKQLPreviewController *)currentPreviewItem saveTapped:v7];
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

- (void)replyTapped:(id)tapped
{
  v13 = *MEMORY[0x1E69E9840];
  tappedCopy = tapped;
  currentPreviewItem = [(CKQLPreviewController *)self currentPreviewItem];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = currentPreviewItem;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Attempting reply to item: %@", &v11, 0xCu);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = currentPreviewItem;
    ckQLPreviewControllerDelegate = [(CKQLPreviewController *)self ckQLPreviewControllerDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      ckQLPreviewControllerDelegate2 = [(CKQLPreviewController *)self ckQLPreviewControllerDelegate];
      [ckQLPreviewControllerDelegate2 replyButtonTappedForMediaObject:v7 previewController:self];
    }
  }
}

- (void)tapbackTapped:(id)tapped
{
  v15 = *MEMORY[0x1E69E9840];
  tappedCopy = tapped;
  currentPreviewItem = [(CKQLPreviewController *)self currentPreviewItem];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = currentPreviewItem;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Showing tapback menu for: %@", &v13, 0xCu);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = currentPreviewItem;
    delegate = [(QLPreviewController *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      v11 = v7;
      goto LABEL_10;
    }

    ckQLPreviewControllerDelegate = [(CKQLPreviewController *)self ckQLPreviewControllerDelegate];
    v11 = [ckQLPreviewControllerDelegate chatItemForMediaObject:v7 previewController:self];

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
  currentPreviewItem = [(CKQLPreviewController *)self currentPreviewItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    canPerformQuickAction = [currentPreviewItem canPerformQuickAction];
  }

  else
  {
    canPerformQuickAction = 0;
  }

  return canPerformQuickAction;
}

- (void)updateBarButtonItems
{
  currentPreviewItem = [(CKQLPreviewController *)self currentPreviewItem];
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
  delegate = [(QLPreviewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0 || (-[CKQLPreviewController ckQLPreviewControllerDelegate](self, "ckQLPreviewControllerDelegate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 shouldHideInteractionOptions], v9, !v10))
  {
    currentPreviewItem2 = [(CKQLPreviewController *)self currentPreviewItem];
    objc_opt_class();
    v13 = objc_opt_isKindOfClass();

    if (v13)
    {
      currentPreviewItem3 = [(CKQLPreviewController *)self currentPreviewItem];
      transferGUID = [currentPreviewItem3 transferGUID];

      mEMORY[0x1E69A5B80] = [MEMORY[0x1E69A5B80] sharedInstance];
      v17 = [mEMORY[0x1E69A5B80] transferForGUID:transferGUID];

      if ([CKCommSafetyHelper shouldDisableTranscriptCapabilitiesForFileTransfer:v17])
      {
        v18 = MEMORY[0x1E695E0F0];
        [(QLPreviewController *)self setAdditionalLeftBarButtonItems:MEMORY[0x1E695E0F0]];
        [(QLPreviewController *)self setAdditionalRightBarButtonItems:v18];

LABEL_24:
        goto LABEL_25;
      }
    }

    transferGUID = [(CKQLPreviewController *)self currentChatItem];
    if ([transferGUID canSendTapbacks])
    {
      v19 = [MEMORY[0x1E69DC708] ck_tapbackItemWithChatItem:transferGUID target:self action:sel_tapbackTapped_];
      [v19 setTarget:self];
      [v19 setAction:sel_tapbackTapped_];
      [(CKQLPreviewController *)self setTapbackButton:v19];
      mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isTapbacksRefreshEnabled = [mEMORY[0x1E69A8070] isTapbacksRefreshEnabled];

      v22 = v30;
      if (!isTapbacksRefreshEnabled)
      {
        v22 = v6;
      }

      [v22 addObject:v19];
    }

    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isTapbacksRefreshEnabled2 = [mEMORY[0x1E69A8070]2 isTapbacksRefreshEnabled];

    replyButton = [(CKQLPreviewController *)self replyButton];
    v26 = v30;
    if (!isTapbacksRefreshEnabled2)
    {
      v26 = v6;
    }

    [v26 addObject:replyButton];

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
  replyImage = [v4 replyImage];
  v6 = [v3 initWithImage:replyImage style:0 target:self action:sel_replyTapped_];

  currentPreviewItem = [(CKQLPreviewController *)self currentPreviewItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = currentPreviewItem;
    delegate = [(QLPreviewController *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      ckQLPreviewControllerDelegate = [(CKQLPreviewController *)self ckQLPreviewControllerDelegate];
      v12 = [ckQLPreviewControllerDelegate shouldShowReplyButtonForMediaObject:v8 previewController:self];
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
  currentPreviewItem = [(CKQLPreviewController *)self currentPreviewItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = currentPreviewItem;
    delegate = [(QLPreviewController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      ckQLPreviewControllerDelegate = [(CKQLPreviewController *)self ckQLPreviewControllerDelegate];
      v8 = [ckQLPreviewControllerDelegate chatItemForMediaObject:v4 previewController:self];
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
  navigationController = [(CKQLPreviewController *)self navigationController];

  if (navigationController)
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

- (void)updateCurrentPreviewItemIsSaved:(BOOL)saved valueDidChange:(BOOL *)change
{
  savedCopy = saved;
  v21 = *MEMORY[0x1E69E9840];
  if (change)
  {
    *change = 0;
  }

  currentPreviewItem = [(CKQLPreviewController *)self currentPreviewItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = currentPreviewItem;
    syndicationIdentifier = [v8 syndicationIdentifier];
    if (syndicationIdentifier)
    {
      mEMORY[0x1E69A5C30] = [MEMORY[0x1E69A5C30] sharedInstance];
      v11 = [MEMORY[0x1E695DFD8] setWithObject:syndicationIdentifier];
      currentPreviewItemIsSaved2 = [mEMORY[0x1E69A5C30] cachedCountOfSyndicationIdentifiersSavedToSystemPhotoLibrary:v11 shouldFetchAndNotifyAsNeeded:savedCopy didStartFetch:0] != 0;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          currentPreviewItemIsSaved = [(CKQLPreviewController *)self currentPreviewItemIsSaved];
          v16 = @"NO";
          if (currentPreviewItemIsSaved)
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

      currentPreviewItemIsSaved2 = [(CKQLPreviewController *)self currentPreviewItemIsSaved];
    }

    if (currentPreviewItemIsSaved2 != [(CKQLPreviewController *)self currentPreviewItemIsSaved])
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
      currentPreviewItemIsSaved2 = 0;
LABEL_20:
      if (change)
      {
        *change = 1;
      }

      [(CKQLPreviewController *)self setCurrentPreviewItemIsSaved:currentPreviewItemIsSaved2];
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
  currentPreviewItem = [(QLPreviewController *)&v13 currentPreviewItem];
  if (!currentPreviewItem)
  {
    currentPreviewItemIndex = [(QLPreviewController *)self currentPreviewItemIndex];
    if (currentPreviewItemIndex < 1 || (v6 = currentPreviewItemIndex, -[QLPreviewController dataSource](self, "dataSource"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 numberOfPreviewItemsInPreviewController:self], v7, v6 >= v8))
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
      dataSource = [(QLPreviewController *)self dataSource];
      v10 = [dataSource previewController:self previewItemAtIndex:v6];
    }
  }

  return currentPreviewItem;
}

- (id)previewActions
{
  delegate = [(QLPreviewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    ckQLPreviewControllerDelegate = [(CKQLPreviewController *)self ckQLPreviewControllerDelegate];
    v6 = [ckQLPreviewControllerDelegate previewActionsForPreviewController:self];
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

- (id)contextualChatItemsForFullScreenBalloonViewController:(id)controller
{
  delegate = [(QLPreviewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    ckQLPreviewControllerDelegate = [(CKQLPreviewController *)self ckQLPreviewControllerDelegate];
    v6 = [ckQLPreviewControllerDelegate contextualCKChatItemsForPreviewController:self];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (CGRect)tapbackButtonFrameForFullScreenBalloonViewController:(id)controller
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

- (BOOL)fullScreenBalloonViewControllerPickerViewUsesBottomTail:(id)tail
{
  v21 = *MEMORY[0x1E69E9840];
  [(CKQLPreviewController *)self tapbackButtonFrameForFullScreenBalloonViewController:tail];
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
    childViewControllers = [(CKQLPreviewController *)self childViewControllers];
    v7 = [childViewControllers countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [childViewControllers countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        navigationBar = [v5 navigationBar];
        [navigationBar frame];
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

- (CGRect)fullScreenBalloonViewController:(id)controller balloonFrameForChatItem:(id)item
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

- (char)fullScreenBalloonViewControllerAnchorVertialOrientation:(id)orientation withBalloonFrame:(CGRect)frame
{
  y = frame.origin.y;
  v22 = *MEMORY[0x1E69E9840];
  if (CGRectIsEmpty(frame))
  {
    return 0;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  childViewControllers = [(CKQLPreviewController *)self childViewControllers];
  v8 = [childViewControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
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
        objc_enumerationMutation(childViewControllers);
      }

      v12 = *(*(&v17 + 1) + 8 * v11);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [childViewControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
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
      navigationBar = [v13 navigationBar];
      [navigationBar frame];
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

- (void)fullScreenBalloonViewController:(id)controller verticallyScrollTranscriptByAmount:(double)amount animated:(BOOL)animated duration:(double)duration completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, amount, duration);
  }
}

- (CGRect)fullScreenBalloonViewControllerSafeAreaLayoutFrame:(id)frame
{
  view = [(CKQLPreviewController *)self view];
  [view bounds];
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

- (void)fullScreenBalloonViewController:(id)controller didSelectTapback:(id)tapback
{
  tapbackCopy = tapback;
  controllerCopy = controller;
  chatItem = [controllerCopy chatItem];
  [(CKQLPreviewController *)self _sendTapback:tapbackCopy targetChatItem:chatItem isRemoval:0];

  [controllerCopy beginDismissal];
}

- (void)fullScreenBalloonViewController:(id)controller didDeselectTapback:(id)tapback
{
  tapbackCopy = tapback;
  controllerCopy = controller;
  chatItem = [controllerCopy chatItem];
  [(CKQLPreviewController *)self _sendTapback:tapbackCopy targetChatItem:chatItem isRemoval:1];

  [controllerCopy beginDismissal];
}

- (void)_sendTapback:(id)tapback targetChatItem:(id)item isRemoval:(BOOL)removal
{
  removalCopy = removal;
  tapbackCopy = tapback;
  itemCopy = item;
  delegate = [(QLPreviewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    ckQLPreviewControllerDelegate = [(CKQLPreviewController *)self ckQLPreviewControllerDelegate];
    [ckQLPreviewControllerDelegate previewController:self sendTapback:tapbackCopy targetChatItem:itemCopy isRemoval:removalCopy];
  }
}

- (BOOL)shouldShowTapbackAttributionForFullScreenBalloonViewController:(id)controller
{
  controllerCopy = controller;
  delegate = [(QLPreviewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    ckQLPreviewControllerDelegate = [(CKQLPreviewController *)self ckQLPreviewControllerDelegate];
    chatItem = [controllerCopy chatItem];
    v9 = [ckQLPreviewControllerDelegate previewController:self shouldShowTapbackAttributionForChatItem:chatItem];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldShowTapbackPickerForFullScreenBalloonViewController:(id)controller
{
  controllerCopy = controller;
  delegate = [(QLPreviewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    ckQLPreviewControllerDelegate = [(CKQLPreviewController *)self ckQLPreviewControllerDelegate];
    chatItem = [controllerCopy chatItem];
    v9 = [ckQLPreviewControllerDelegate previewController:self shouldShowTapbackPickerForChatItem:chatItem];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)fullScreenBalloonViewControllerShouldEnableStickerTapbacks:(id)tapbacks
{
  delegate = [(QLPreviewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  ckQLPreviewControllerDelegate = [(CKQLPreviewController *)self ckQLPreviewControllerDelegate];
  v7 = [ckQLPreviewControllerDelegate previewControllerShouldEnableStickerTapbacks:self];

  return v7;
}

- (id)textInputContextIdentifierForFullScreenBalloonViewController:(id)controller
{
  delegate = [(QLPreviewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    ckQLPreviewControllerDelegate = [(CKQLPreviewController *)self ckQLPreviewControllerDelegate];
    v7 = [ckQLPreviewControllerDelegate textInputContextIdentifierForPreviewController:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_dismissFullScreenBubbleViewController:(id)controller animated:(BOOL)animated withSendAnimation:(BOOL)animation completion:(id)completion
{
  animationCopy = animation;
  animatedCopy = animated;
  v30 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  completionCopy = completion;
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
  selfCopy = self;
  v13 = completionCopy;
  v23 = v13;
  v14 = _Block_copy(&v18);
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      if (animatedCopy)
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
      v27 = animationCopy;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "_dismissFullScreenBubbleViewControllerAnimated %@:WithSendAnimation: %d, completion %@", buf, 0x1Cu);
    }
  }

  if (CKIsRunningInMessagesTranscriptExtension())
  {
    v14[2](v14);
  }

  else if (animatedCopy)
  {
    if (animationCopy)
    {
      [controllerCopy performSendAndCloseAnimationWithCompletion:{v14, v18, v19, v20, v21, selfCopy}];
    }

    else
    {
      [controllerCopy performCancelAnimationWithCompletion:{v14, v18, v19, v20, v21, selfCopy}];
    }
  }

  else
  {
    [controllerCopy dismissImmediatelyWithNoAnimations];
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v6.receiver = self;
  v6.super_class = CKQLPreviewController;
  [(QLPreviewController *)&v6 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  presentedViewController = [(CKQLPreviewController *)self presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [presentedViewController dismissViewControllerAnimated:1 completion:0];
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