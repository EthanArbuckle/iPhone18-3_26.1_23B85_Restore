@interface CKShortcutHandler
+ (void)performActionForShortcutItem:(id)item navigationProvider:(id)provider chatController:(id)controller completion:(id)completion;
@end

@implementation CKShortcutHandler

+ (void)performActionForShortcutItem:(id)item navigationProvider:(id)provider chatController:(id)controller completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  providerCopy = provider;
  controllerCopy = controller;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = itemCopy;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Performing action for shortcut item: %@", buf, 0xCu);
    }
  }

  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __95__CKShortcutHandler_performActionForShortcutItem_navigationProvider_chatController_completion___block_invoke;
  v22 = &unk_1E72F1C80;
  v23 = itemCopy;
  v24 = providerCopy;
  v25 = controllerCopy;
  v26 = completionCopy;
  v14 = controllerCopy;
  v15 = completionCopy;
  v16 = providerCopy;
  v17 = itemCopy;
  v18 = _Block_copy(&v19);
  [v16 setDeferredHandleURLBlock:{v18, v19, v20, v21, v22}];
}

void __95__CKShortcutHandler_performActionForShortcutItem_navigationProvider_chatController_completion___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) type];
  v3 = [v2 isEqualToString:@"com.apple.mobilesms.newmessage"];

  if (v3)
  {
    v4 = +[CKDraftManager sharedInstance];
    [v4 setDraftForPendingConversation:0 withRecipients:0];

    v5 = +[CKDraftManager sharedInstance];
    [v5 saveCompositionAndFlushCache:0];

    [*(a1 + 40) showNewMessageCompositionPanelWithRecipients:0 composition:0 animated:0];
    v6 = *(*(a1 + 56) + 16);

    v6();
  }

  else
  {
    v7 = [*(a1 + 32) type];
    v8 = [v7 isEqualToString:@"com.apple.mobilesms.conversation"];

    if (v8)
    {
      v9 = [*(a1 + 32) userInfo];
      v10 = [v9 objectForKey:@"CKSBActionUserInfoKeyChatGUID"];

      if (v10)
      {
        v11 = MEMORY[0x1E69DD258];
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __95__CKShortcutHandler_performActionForShortcutItem_navigationProvider_chatController_completion___block_invoke_2;
        v53[3] = &unk_1E72EB880;
        v54 = *(a1 + 40);
        v55 = v10;
        v56 = *(a1 + 48);
        [v11 _performWithoutDeferringTransitions:v53];
        (*(*(a1 + 56) + 16))();
      }

      else
      {
        (*(*(a1 + 56) + 16))();
      }

      v12 = MEMORY[0x193AF5EC0](@"_CDInteractionFeedbackLogger", @"CoreDuet");
      v13 = MEMORY[0x193AF5EC0](@"_CDContact", @"CoreDuet");
      if (v12)
      {
        v14 = v13;
        if (v13)
        {
          v15 = MEMORY[0x193AF5ED0]("_CDInteractionAdviceSourceAutocomplete", @"CoreDuet");
          v16 = MEMORY[0x193AF5ED0]("_CDInteractionPresentationStyleUIShortcut", @"CoreDuet");
          v46 = MEMORY[0x193AF5ED0]("_CDPersonIdTypeCNContactId", @"CoreDuet");
          v17 = [MEMORY[0x1E695DF70] array];
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v18 = [*MEMORY[0x1E69DDA98] shortcutItems];
          v48 = [v18 countByEnumeratingWithState:&v49 objects:v57 count:16];
          if (v48)
          {
            v38 = v16;
            v39 = v15;
            v43 = v14;
            v44 = v17;
            v40 = v12;
            v41 = 0;
            v47 = *v50;
            v45 = v10;
            obj = v18;
            do
            {
              for (i = 0; i != v48; ++i)
              {
                if (*v50 != v47)
                {
                  objc_enumerationMutation(obj);
                }

                v20 = [*(*(&v49 + 1) + 8 * i) userInfo];
                v21 = [v20 objectForKey:@"CKSBActionUserInfoKeyChatGUID"];

                v22 = +[CKConversationList sharedConversationList];
                v23 = [v22 conversationForExistingChatWithGUID:v21];

                if (v23)
                {
                  v24 = [v23 recipient];
                  v25 = [v24 defaultIMHandle];
                  v26 = [v25 ID];
                  v27 = [v26 _appearsToBePhoneNumber];

                  if (v27)
                  {
                    v28 = "_CDContactTypePhoneNumber";
                  }

                  else
                  {
                    v28 = "_CDContactTypeEmailAddress";
                  }

                  v29 = MEMORY[0x193AF5ED0](v28, @"CoreDuet");
                  v30 = [v24 defaultIMHandle];
                  v31 = [v30 ID];
                  v32 = [v24 cnContact];
                  v33 = [v32 identifier];
                  v34 = v29;
                  v17 = v44;
                  v35 = [v43 contactWithIdentifier:v31 type:v34 displayName:0 personId:v33 personIdType:v46];

                  v10 = v45;
                  [v44 addObject:v35];
                  if (v45 && [v21 isEqualToString:v45])
                  {
                    v36 = v35;

                    v41 = v36;
                  }
                }
              }

              v48 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
            }

            while (v48);

            v37 = v41;
            if (v41)
            {
              [v40 logFeedbackItemSelected:v41 adviceSource:v39 presentationStyle:v38 itemsShown:v17 bundleID:@"com.apple.MobileSMS"];
            }
          }

          else
          {

            v37 = 0;
          }
        }
      }
    }
  }
}

uint64_t __95__CKShortcutHandler_performActionForShortcutItem_navigationProvider_chatController_completion___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) showConversationAndMessageForChatGUID:*(a1 + 40) messageGUID:0 animate:0];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "+[CKShortcutHandler performActionForShortcutItem:navigationProvider:chatController:completion:]_block_invoke_2";
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "reloadEntryViewIfNeeded called from %s", &v4, 0xCu);
    }
  }

  [*(a1 + 48) reloadEntryViewIfNeeded];
  return [*(a1 + 48) showKeyboardForReply];
}

@end