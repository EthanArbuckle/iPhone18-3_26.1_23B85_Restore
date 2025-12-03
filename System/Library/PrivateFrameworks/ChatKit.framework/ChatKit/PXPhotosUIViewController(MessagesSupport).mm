@interface PXPhotosUIViewController(MessagesSupport)
- (id)_assetReferenceForPreviewItem:()MessagesSupport;
- (id)additionalActivitiesTypesForPreviewController:()MessagesSupport;
- (id)chatItemForMediaObject:()MessagesSupport previewController:;
- (id)ck_chatController;
- (id)excludedActivityTypesForPreviewController:()MessagesSupport;
- (id)previewController:()MessagesSupport transitionViewForPreviewItem:uncroppedSourceFrame:;
- (uint64_t)previewControllerDidDismiss:()MessagesSupport;
- (uint64_t)shouldHideInteractionOptions;
- (void)_handleBackButton;
- (void)previewController:()MessagesSupport sendTapback:targetChatItem:isRemoval:;
- (void)previewController:()MessagesSupport shouldShowTapbackAttributionForChatItem:;
- (void)previewController:()MessagesSupport shouldShowTapbackPickerForChatItem:;
- (void)previewControllerIsInGroupConversation:()MessagesSupport;
- (void)previewControllerShouldEnableStickerTapbacks:()MessagesSupport;
- (void)previewControllerWillDismiss:()MessagesSupport;
- (void)replyButtonTappedForMediaObject:()MessagesSupport previewController:;
- (void)saveButtonTappedForMediaObject:()MessagesSupport previewController:;
- (void)sendMessageAcknowledgment:()MessagesSupport chatItem:previewController:;
- (void)setCk_chatController:()MessagesSupport;
- (void)setCk_transitionView:()MessagesSupport;
- (void)shouldShowReplyButtonForMediaObject:()MessagesSupport previewController:;
@end

@implementation PXPhotosUIViewController(MessagesSupport)

- (void)setCk_transitionView:()MessagesSupport
{
  value = a3;
  ck_transitionView = [self ck_transitionView];

  if (ck_transitionView != value)
  {
    ck_transitionView2 = [self ck_transitionView];
    [ck_transitionView2 removeFromSuperview];

    objc_setAssociatedObject(self, sel_ck_transitionView, value, 1);
  }
}

- (id)ck_chatController
{
  v1 = objc_getAssociatedObject(self, sel_ck_chatController);
  object = [v1 object];

  return object;
}

- (void)setCk_chatController:()MessagesSupport
{
  if (a3)
  {
    v4 = a3;
    value = [[_CKPhotosSupportWeakBox alloc] initWithObject:v4];
  }

  else
  {
    value = 0;
  }

  objc_setAssociatedObject(self, sel_ck_chatController, value, 1);
}

- (id)excludedActivityTypesForPreviewController:()MessagesSupport
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  currentPreviewItem = [v3 currentPreviewItem];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([currentPreviewItem mediaType] & 0xFFFFFFFE) == 2)
  {
    v9[0] = *MEMORY[0x1E69CDAF8];
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Will exclude system UIActivityTypeSaveToCameraRoll from ShareSheet.", v8, 2u);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)additionalActivitiesTypesForPreviewController:()MessagesSupport
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  currentPreviewItem = [v3 currentPreviewItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = currentPreviewItem;
    if (([v5 mediaType] & 0xFFFFFFFE) == 2)
    {
      v6 = [[CKSaveToPhotosActivity alloc] initWithMediaObject:v5 presenterViewController:v3];
      v14[0] = v6;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v7 count];
      v10 = &stru_1F04268F8;
      if (!v9)
      {
        v10 = @" NOT";
      }

      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Will%@ present additional activities on ShareSheet.", &v12, 0xCu);
    }
  }

  return v7;
}

- (uint64_t)shouldHideInteractionOptions
{
  ck_chatController = [self ck_chatController];
  shouldHideInteractionOptions = [ck_chatController shouldHideInteractionOptions];

  return shouldHideInteractionOptions;
}

- (id)_assetReferenceForPreviewItem:()MessagesSupport
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([self viewModel], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "currentDataSource"), v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, v5, (isKindOfClass))
  {
    viewModel = [self viewModel];
    currentDataSource = [viewModel currentDataSource];

    v10 = [currentDataSource assetReferenceForMediaObject:v4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)previewControllerWillDismiss:()MessagesSupport
{
  v4 = a3;
  viewModel = [self viewModel];
  currentDataSource = [viewModel currentDataSource];

  dataSource = [v4 dataSource];
  v8 = [dataSource numberOfPreviewItemsInPreviewController:v4];

  if ([currentDataSource numberOfSections] < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = [currentDataSource numberOfItemsInSection:0];
  }

  if (v8 == v9)
  {
    currentPreviewItemIndex = [v4 currentPreviewItemIndex];
    v12[0] = [currentDataSource identifier];
    v12[1] = 0;
    v12[2] = currentPreviewItemIndex;
    v12[3] = 0x7FFFFFFFFFFFFFFFLL;
    v11 = [currentDataSource assetReferenceAtItemIndexPath:v12];
    [self scrollToRevealAssetReference:v11 completion:&__block_literal_global_588_1];
  }
}

- (uint64_t)previewControllerDidDismiss:()MessagesSupport
{
  hiddenAssetReferences = [self hiddenAssetReferences];

  if (hiddenAssetReferences)
  {
    [self setHiddenAssetReferences:0 animationType:2];
  }

  return [self setCk_transitionView:0];
}

- (id)previewController:()MessagesSupport transitionViewForPreviewItem:uncroppedSourceFrame:
{
  v38[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v32 = 138412290;
      v33 = v9;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "QuickLook did request preview view for transition to item {%@}.", &v32, 0xCu);
    }
  }

  gridView = [self gridView];
  rootLayout = [gridView rootLayout];
  v13 = [rootLayout createFenceWithType:2];

  [v13 setTimeout:0.2];
  v14 = [self _assetReferenceForPreviewItem:v9];
  if (v14)
  {
    v15 = [self regionOfInterestForAssetReference:v14 image:0 shouldSnapshotPlaceholder:0];
  }

  else
  {
    v15 = 0;
  }

  placeholderViewFactory = [v15 placeholderViewFactory];
  if (placeholderViewFactory)
  {
    placeholderViewFactory2 = [v15 placeholderViewFactory];
    v18 = (placeholderViewFactory2)[2](placeholderViewFactory2, v15);
  }

  else
  {
    v18 = 0;
  }

  [self setCk_transitionView:v18];
  if (v18)
  {
    v19 = objc_alloc(MEMORY[0x1E695DFD8]);
    v38[0] = v14;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
    v21 = [v19 initWithArray:v20];
    [self setHiddenAssetReferences:v21 animationType:2];

    view = [self view];
    [v15 rectInCoordinateSpace:view];
    [v18 setFrame:?];

    view2 = [self view];
    [view2 addSubview:v18];

    [v18 bounds];
    *a5 = v24;
    a5[1] = v25;
    a5[2] = v26;
    a5[3] = v27;
  }

  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v32 = 138412802;
      v33 = v30;
      v34 = 2112;
      v35 = v15;
      v36 = 2112;
      v37 = v18;
      _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "> For an item of type {%@} with a region of interest {%@}, we are returning preview view {%@}.", &v32, 0x20u);
    }
  }

  return v18;
}

- (void)shouldShowReplyButtonForMediaObject:()MessagesSupport previewController:
{
  v5 = a3;
  v6 = a4;
  chatControllerPreviewDelegate = [v6 chatControllerPreviewDelegate];
  if (chatControllerPreviewDelegate)
  {
    chatControllerPreviewDelegate2 = [v6 chatControllerPreviewDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      chatControllerPreviewDelegate3 = [v6 chatControllerPreviewDelegate];
      chatControllerPreviewDelegate = [chatControllerPreviewDelegate3 shouldShowReplyButtonForMediaObject:v5 previewController:v6];
    }

    else
    {
      chatControllerPreviewDelegate = 0;
    }
  }

  return chatControllerPreviewDelegate;
}

- (void)replyButtonTappedForMediaObject:()MessagesSupport previewController:
{
  v17 = a3;
  v6 = a4;
  v7 = [self chatItemForMediaObject:v17 previewController:v6];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      mediaObject = [v8 mediaObject];
      transferGUID = [mediaObject transferGUID];
      transferGUID2 = [v17 transferGUID];
      v12 = [transferGUID isEqualToString:transferGUID2];

      if (v12)
      {
        viewModel = [self viewModel];
        assetActionManager = [viewModel assetActionManager];

        chatActionHelper = [assetActionManager chatActionHelper];
        v16 = [chatActionHelper inlineReplyControllerForChatItem:v8];

        [v6 presentViewController:v16 animated:1 completion:0];
      }
    }
  }
}

- (void)saveButtonTappedForMediaObject:()MessagesSupport previewController:
{
  v11 = a3;
  v5 = a4;
  chatControllerPreviewDelegate = [v5 chatControllerPreviewDelegate];
  if (chatControllerPreviewDelegate)
  {
    v7 = chatControllerPreviewDelegate;
    chatControllerPreviewDelegate2 = [v5 chatControllerPreviewDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      chatControllerPreviewDelegate3 = [v5 chatControllerPreviewDelegate];
      [chatControllerPreviewDelegate3 saveButtonTappedForMediaObject:v11 previewController:v5];
    }
  }
}

- (id)chatItemForMediaObject:()MessagesSupport previewController:
{
  v1 = [self _assetReferenceForPreviewItem:?];
  asset = [v1 asset];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    asset2 = [v1 asset];
    chatItem = [asset2 chatItem];
  }

  else
  {
    chatItem = 0;
  }

  return chatItem;
}

- (void)previewControllerIsInGroupConversation:()MessagesSupport
{
  v3 = a3;
  chatControllerPreviewDelegate = [v3 chatControllerPreviewDelegate];
  if (chatControllerPreviewDelegate)
  {
    chatControllerPreviewDelegate2 = [v3 chatControllerPreviewDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      chatControllerPreviewDelegate3 = [v3 chatControllerPreviewDelegate];
      chatControllerPreviewDelegate = [chatControllerPreviewDelegate3 previewControllerIsInGroupConversation:v3];
    }

    else
    {
      chatControllerPreviewDelegate = 0;
    }
  }

  return chatControllerPreviewDelegate;
}

- (void)sendMessageAcknowledgment:()MessagesSupport chatItem:previewController:
{
  v13 = a4;
  v7 = a5;
  chatControllerPreviewDelegate = [v7 chatControllerPreviewDelegate];
  if (chatControllerPreviewDelegate)
  {
    v9 = chatControllerPreviewDelegate;
    chatControllerPreviewDelegate2 = [v7 chatControllerPreviewDelegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      chatControllerPreviewDelegate3 = [v7 chatControllerPreviewDelegate];
      [chatControllerPreviewDelegate3 sendMessageAcknowledgment:a3 chatItem:v13 previewController:v7];

      [v7 updateBarButtonItems];
    }
  }
}

- (void)previewController:()MessagesSupport sendTapback:targetChatItem:isRemoval:
{
  v16 = a3;
  v9 = a4;
  v10 = a5;
  chatControllerPreviewDelegate = [v16 chatControllerPreviewDelegate];
  if (chatControllerPreviewDelegate)
  {
    v12 = chatControllerPreviewDelegate;
    chatControllerPreviewDelegate2 = [v16 chatControllerPreviewDelegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      chatControllerPreviewDelegate3 = [v16 chatControllerPreviewDelegate];
      [chatControllerPreviewDelegate3 previewController:v16 sendTapback:v9 targetChatItem:v10 isRemoval:a6];

      [v16 updateBarButtonItems];
    }
  }
}

- (void)previewController:()MessagesSupport shouldShowTapbackAttributionForChatItem:
{
  v5 = a3;
  v6 = a4;
  chatControllerPreviewDelegate = [v5 chatControllerPreviewDelegate];
  if (chatControllerPreviewDelegate)
  {
    chatControllerPreviewDelegate2 = [v5 chatControllerPreviewDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      chatControllerPreviewDelegate3 = [v5 chatControllerPreviewDelegate];
      chatControllerPreviewDelegate = [chatControllerPreviewDelegate3 previewController:v5 shouldShowTapbackAttributionForChatItem:v6];
    }

    else
    {
      chatControllerPreviewDelegate = 0;
    }
  }

  return chatControllerPreviewDelegate;
}

- (void)previewController:()MessagesSupport shouldShowTapbackPickerForChatItem:
{
  v5 = a3;
  v6 = a4;
  chatControllerPreviewDelegate = [v5 chatControllerPreviewDelegate];
  if (chatControllerPreviewDelegate)
  {
    chatControllerPreviewDelegate2 = [v5 chatControllerPreviewDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      chatControllerPreviewDelegate3 = [v5 chatControllerPreviewDelegate];
      chatControllerPreviewDelegate = [chatControllerPreviewDelegate3 previewController:v5 shouldShowTapbackPickerForChatItem:v6];
    }

    else
    {
      chatControllerPreviewDelegate = 0;
    }
  }

  return chatControllerPreviewDelegate;
}

- (void)previewControllerShouldEnableStickerTapbacks:()MessagesSupport
{
  v3 = a3;
  chatControllerPreviewDelegate = [v3 chatControllerPreviewDelegate];
  if (chatControllerPreviewDelegate)
  {
    chatControllerPreviewDelegate2 = [v3 chatControllerPreviewDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      chatControllerPreviewDelegate3 = [v3 chatControllerPreviewDelegate];
      chatControllerPreviewDelegate = [chatControllerPreviewDelegate3 previewControllerShouldEnableStickerTapbacks:v3];
    }

    else
    {
      chatControllerPreviewDelegate = 0;
    }
  }

  return chatControllerPreviewDelegate;
}

- (void)_handleBackButton
{
  navigationController = [self navigationController];
  presentingViewController = [navigationController presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

@end