@interface CKSocialLayerChatController
+ (id)chatIdentifierForMessageWithGUID:(id)a3;
+ (id)chatItemForMessageGUID:(id)a3 messagePartIndex:(int64_t)a4 chatItems:(id)a5;
- (CKFullScreenBalloonViewControllerPhone)socialLayerFullScreenBalloonController;
- (CKSocialLayerChatController)initWithConversation:(id)a3;
- (id)selectedChatItems;
- (int64_t)messagePartIndexMatchingAttachementGUID;
- (void)_setConversationDeferredSetup;
- (void)dealloc;
- (void)fullScreenBalloonViewController:(id)a3 didAppearAnimated:(BOOL)a4;
- (void)fullScreenBalloonViewController:(id)a3 replyButtonPressedForChatItem:(id)a4;
- (void)fullScreenBalloonViewController:(id)a3 verticallyScrollTranscriptByAmount:(double)a4 animated:(BOOL)a5 duration:(double)a6 completion:(id)a7;
- (void)fullScreenBalloonViewController:(id)a3 willAppearAnimated:(BOOL)a4;
- (void)fullScreenBalloonViewControllerDidDisappear:(id)a3;
- (void)fullScreenBalloonViewControllerHandleDismissTap:(id)a3;
- (void)prewarmAttachmentChatItemSize;
- (void)scrollToAndHighlightMessage;
- (void)showFullScreenAcknowledgmentPickerForChatItem:(id)a3;
- (void)showTapBackPicker;
@end

@implementation CKSocialLayerChatController

- (void)dealloc
{
  [CKApplicationState setMainWindowForegroundActive:0];
  v3.receiver = self;
  v3.super_class = CKSocialLayerChatController;
  [(CKChatController *)&v3 dealloc];
}

- (CKSocialLayerChatController)initWithConversation:(id)a3
{
  v5.receiver = self;
  v5.super_class = CKSocialLayerChatController;
  v3 = [(CKChatController *)&v5 initWithConversation:a3];
  if (v3)
  {
    [CKApplicationState setMainWindowForegroundActive:1];
  }

  return v3;
}

- (void)_setConversationDeferredSetup
{
  v5.receiver = self;
  v5.super_class = CKSocialLayerChatController;
  [(CKChatController *)&v5 _setConversationDeferredSetup];
  [(CKSocialLayerChatController *)self prewarmAttachmentChatItemSize];
  v3 = dispatch_time(0, 50000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__CKSocialLayerChatController__setConversationDeferredSetup__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x1E69E96A0], block);
}

+ (id)chatIdentifierForMessageWithGUID:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = IMDChatRecordCopyChatForMessageGUID();
  if (v4)
  {
    v5 = IMDChatRecordCopyChatIdentifier();
  }

  else
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_DEFAULT, "Couldn't find chat for message identifier: %@", &v8, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

+ (id)chatItemForMessageGUID:(id)a3 messagePartIndex:(int64_t)a4 chatItems:(id)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__CKSocialLayerChatController_chatItemForMessageGUID_messagePartIndex_chatItems___block_invoke;
  aBlock[3] = &unk_1E72EBB70;
  v9 = v7;
  v39 = v9;
  v40 = a4;
  v10 = _Block_copy(aBlock);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = v8;
  v29 = [v11 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v29)
  {
    v12 = *v35;
    v27 = *v35;
    v28 = v9;
    v26 = a4;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v11);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v14 aggregateChatItems];
        }

        else
        {
          v42 = v14;
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
        }
        v15 = ;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v16 = v15;
        v17 = [v16 countByEnumeratingWithState:&v30 objects:v41 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v31;
          while (2)
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v31 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v30 + 1) + 8 * j);
              if ([v21 canInlineReply] && (v10[2](v10, v21) & 1) != 0)
              {
                v24 = v14;

                v22 = v11;
                v9 = v28;
                goto LABEL_27;
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v30 objects:v41 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        v12 = v27;
      }

      v9 = v28;
      a4 = v26;
      v29 = [v11 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v29);
  }

  v22 = IMLogHandleForCategory();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v23)
    {
      [CKSocialLayerChatController chatItemForMessageGUID:v9 messagePartIndex:v22 chatItems:?];
    }
  }

  else if (v23)
  {
    [CKSocialLayerChatController chatItemForMessageGUID:v9 messagePartIndex:a4 chatItems:v22];
  }

  v24 = 0;
LABEL_27:

  return v24;
}

BOOL __81__CKSocialLayerChatController_chatItemForMessageGUID_messagePartIndex_chatItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 messageItem];
    v6 = [v5 guid];
    v7 = [v6 isEqualToString:*(a1 + 32)] && (*(a1 + 40) == 0x7FFFFFFFFFFFFFFFLL || *(a1 + 40) == objc_msgSend(v4, "index"));
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)selectedChatItems
{
  v2 = [(CKCoreChatController *)self collectionViewController];
  v3 = [v2 selectedChatItems];

  return v3;
}

- (int64_t)messagePartIndexMatchingAttachementGUID
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(CKSocialLayerChatController *)self attachmentGUID];
  if ([v3 length])
  {
    v4 = [(CKCoreChatController *)self conversation];
    v5 = [(CKSocialLayerChatController *)self messageGUID];
    v16 = v4;
    v6 = [v4 ensureMessageWithGUIDIsLoaded:v5];
    v7 = [v6 messageParts];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      v11 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = [v13 transferGUID];
          if ([v14 isEqualToString:v3])
          {
            v11 = [v13 messagePartIndex];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v11;
}

- (void)scrollToAndHighlightMessage
{
  v3 = [(CKCoreChatController *)self collectionViewController];
  v4 = [v3 collectionView];
  [v4 reloadData];

  v7 = [(CKCoreChatController *)self conversation];
  v5 = [(CKSocialLayerChatController *)self messageGUID];
  v6 = [v7 ensureMessageWithGUIDIsLoaded:v5];
  [(CKChatController *)self scrollToMessage:v6 atSpecificMessagePartIndex:[(CKSocialLayerChatController *)self messagePartIndexMatchingAttachementGUID] highlight:0 withInlineReplyOverlay:1];
}

- (void)prewarmAttachmentChatItemSize
{
  v18 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [(CKSocialLayerChatController *)self attachmentGUID];
      v16 = 138412290;
      v17 = v4;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "prewarm chat item size for attachment guid: %@", &v16, 0xCu);
    }
  }

  v5 = [(CKSocialLayerChatController *)self messageGUID];
  v6 = [(CKSocialLayerChatController *)self messagePartIndexMatchingAttachementGUID];
  if ([v5 length])
  {
    v7 = [(CKCoreChatController *)self collectionViewController];
    v8 = [v7 chatItems];

    v9 = [CKSocialLayerChatController chatItemForMessageGUID:v5 messagePartIndex:v6 chatItems:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      v11 = [v10 mediaObject];
      v12 = [v11 forceInlinePreviewGeneration];

      v13 = [v10 mediaObject];
      [v13 setForceInlinePreviewGeneration:1];

      [v10 size];
      v14 = [v10 mediaObject];

      [v14 setForceInlinePreviewGeneration:v12];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Attempting to prewarm a message without a GUID", &v16, 2u);
    }
  }
}

- (void)showTapBackPicker
{
  v7 = [(CKCoreChatController *)self collectionViewController];
  v3 = [(CKSocialLayerChatController *)self messageGUID];
  v4 = [(CKSocialLayerChatController *)self messagePartIndexMatchingAttachementGUID];
  v5 = [v7 chatItems];
  v6 = [CKSocialLayerChatController chatItemForMessageGUID:v3 messagePartIndex:v4 chatItems:v5];

  [(CKSocialLayerChatController *)self showFullScreenAcknowledgmentPickerForChatItem:v6];
}

- (void)showFullScreenAcknowledgmentPickerForChatItem:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "showFullScreenAcknowledgmentPickerForChatItem", buf, 2u);
    }
  }

  v6 = [(CKCoreChatController *)self chat];
  [v6 beginHoldingChatItemsUpdatesForReason:*MEMORY[0x1E69A57A0]];
  [(CKScrollViewController *)self beginHoldingScrollGeometryUpdatesForReason:@"FullscreenBalloonMenuVisible"];
  v7 = [(CKSocialLayerChatController *)self socialLayerFullScreenBalloonController];

  if (v7)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v18 = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Dismissing fullscreen balloon", v18, 2u);
      }
    }

    [(CKChatController *)self _dismissFullScreenBubbleViewControllerAnimated:1 withSendAnimation:0 completion:0];
  }

  v9 = [(CKCoreChatController *)self generateDefaultFullScreenBalloonViewControllerWithChatItem:v4];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Created fullscreen balloon", v17, 2u);
    }
  }

  [(CKSocialLayerChatController *)self addChildViewController:v9];
  v11 = [(CKSocialLayerChatController *)self view];
  v12 = [v9 view];
  [v11 addSubview:v12];

  v13 = [v9 view];
  v14 = [(CKChatController *)self collectionView];
  [v14 frame];
  [v13 setFrame:?];

  [v9 didMoveToParentViewController:self];
  [(CKSocialLayerChatController *)self setSocialLayerFullScreenBalloonController:v9];
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Setup fullscreen balloon", v16, 2u);
    }
  }
}

- (CKFullScreenBalloonViewControllerPhone)socialLayerFullScreenBalloonController
{
  WeakRetained = objc_loadWeakRetained(&self->_socialLayerFullScreenBalloonController);

  return WeakRetained;
}

- (void)fullScreenBalloonViewController:(id)a3 replyButtonPressedForChatItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "fullScreenBalloonViewController:replyButtonPressedForChatItem: ", buf, 2u);
    }
  }

  if (v7)
  {
    v9.receiver = self;
    v9.super_class = CKSocialLayerChatController;
    [(CKChatController *)&v9 showInlineReplyControllerForChatItem:v7 presentKeyboard:1];
  }

  [(CKSocialLayerChatController *)self fullScreenBalloonViewControllerHandleDismissTap:v6];
}

- (void)fullScreenBalloonViewController:(id)a3 willAppearAnimated:(BOOL)a4
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "fullScreenBalloonViewController:willAppearAnimated", v6, 2u);
    }
  }
}

- (void)fullScreenBalloonViewController:(id)a3 didAppearAnimated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "fullScreenBalloonViewController:didAppearAnimated", buf, 2u);
    }
  }

  v8.receiver = self;
  v8.super_class = CKSocialLayerChatController;
  [(CKChatController *)&v8 fullScreenBalloonViewController:v6 didAppearAnimated:v4];
}

- (void)fullScreenBalloonViewControllerDidDisappear:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "fullScreenBalloonViewControllerDidDisappear", buf, 2u);
    }
  }

  v6.receiver = self;
  v6.super_class = CKSocialLayerChatController;
  [(CKChatController *)&v6 fullScreenBalloonViewControllerDidDisappear:v4];
}

- (void)fullScreenBalloonViewControllerHandleDismissTap:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "fullScreenBalloonViewControllerHandleDismissTap:", buf, 2u);
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __120__CKSocialLayerChatController_FullScreenBalloonViewControllerDelegate__fullScreenBalloonViewControllerHandleDismissTap___block_invoke;
  aBlock[3] = &unk_1E72EBA18;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v7 = [(CKSocialLayerChatController *)self socialLayerFullScreenBalloonController];
  [v7 performCancelAnimationWithCompletion:v6];
}

void __120__CKSocialLayerChatController_FullScreenBalloonViewControllerDelegate__fullScreenBalloonViewControllerHandleDismissTap___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) socialLayerFullScreenBalloonController];

  if (v2)
  {
    v3 = [*(a1 + 32) socialLayerFullScreenBalloonController];
    [v3 willMoveToParentViewController:0];

    v4 = [*(a1 + 32) socialLayerFullScreenBalloonController];
    v5 = [v4 view];
    [v5 removeFromSuperview];

    v6 = [*(a1 + 32) socialLayerFullScreenBalloonController];
    [v6 didMoveToParentViewController:0];

    [*(a1 + 32) setSocialLayerFullScreenBalloonController:0];
    v7 = *(a1 + 32);
    v8 = [v7 socialLayerFullScreenBalloonController];
    [v7 removeChildViewController:v8];
  }
}

- (void)fullScreenBalloonViewController:(id)a3 verticallyScrollTranscriptByAmount:(double)a4 animated:(BOOL)a5 duration:(double)a6 completion:(id)a7
{
  v8 = a5;
  v19 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a7;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = @"NO";
      *v16 = 138412802;
      *&v16[4] = v11;
      if (v8)
      {
        v14 = @"YES";
      }

      *&v16[12] = 2048;
      *&v16[14] = a4;
      v17 = 2112;
      v18 = v14;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "fullScreenBalloonViewController: %@ verticallyScrollTranscriptByAmount: %.2f animated: %@ completion:", v16, 0x20u);
    }
  }

  v15 = [(CKCoreChatController *)self collectionViewController];
  [v15 verticallyScrollTranscriptByAmount:v8 animated:v12 completion:a4];
}

+ (void)chatItemForMessageGUID:(uint64_t)a1 messagePartIndex:(uint64_t)a2 chatItems:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_19020E000, log, OS_LOG_TYPE_ERROR, "Could not find chat item matching messageGUID: %@ messagePartIndex: %ld", &v3, 0x16u);
}

+ (void)chatItemForMessageGUID:(uint64_t)a1 messagePartIndex:(NSObject *)a2 chatItems:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Could not find chat item matching messageGUID: %@", &v2, 0xCu);
}

@end