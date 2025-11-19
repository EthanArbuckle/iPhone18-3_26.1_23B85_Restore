@interface CKUserActivityHandler
+ (BOOL)hasBusinessRecipientWithRecipientIDs:(id)a3;
+ (BOOL)isiMessageAppStoreURL:(id)a3;
+ (BOOL)restoreState:(id)a3 navigationProvider:(id)a4;
+ (BOOL)restoreStateFromUserActivity:(id)a3 withNavigationProvider:(id)a4;
+ (id)createPluginPayloadForCloudKit:(id)a3;
+ (id)createPluginPayloadForCloudKitPlusCollaborationMetadata:(id)a3 shareOptions:(id)a4;
+ (id)createPluginPayloadForCloudKitWithLaunchContext:(id)a3;
+ (id)createPluginPayloadForFileProvider:(id)a3 sendCopyFileURLs:(id)a4;
+ (id)createPluginPayloadForPendingCollaboration:(id)a3;
+ (id)finalCompositionFromExistingComposition:(id)a3 pluginPayloadComposition:(id)a4 shareOptions:(id)a5;
+ (id)validIntentDictionaryWithURLParameters:(id)a3;
+ (void)_sendCollaborationInitationForURL:(id)a3 originatingProcess:(id)a4 chat:(id)a5 conversation:(id)a6 recipientIDs:(id)a7 navigationProvider:(id)a8 animate:(BOOL)a9;
+ (void)_setMessageFilterModeBy:(id)a3 navigationProvider:(id)a4;
+ (void)_showPeerPaymentUIForPerson:(id)a3 amount:(id)a4 navigationProvider:(id)a5 chatController:(id)a6;
+ (void)chatScene:(id)a3 openURLContexts:(id)a4;
+ (void)chatScene:(id)a3 willConnectToSession:(id)a4 userActivities:(id)a5 urlContexts:(id)a6 windowSceneDelegate:(id)a7;
+ (void)compositionFromDictionary:(id)a3 completion:(id)a4;
+ (void)fileProviderCompositionFromPluginPayload:(id)a3 url:(id)a4 shareOptions:(id)a5 previousComposition:(id)a6 completion:(id)a7;
+ (void)loadConversationWithMessageGUID:(id)a3 withInlineReplyOverlay:(BOOL)a4 navigationProvider:(id)a5;
+ (void)messagesScene:(id)a3 continueUserActivity:(id)a4 withNavigationProvider:(id)a5 chatController:(id)a6 completion:(id)a7;
+ (void)messagesScene:(id)a3 willConnectToSession:(id)a4 userActivities:(id)a5 stateRestorationActivity:(id)a6 windowSceneDelegate:(id)a7;
+ (void)openItemProviders:(id)a3 navigationProvider:(id)a4 chatController:(id)a5;
+ (void)openSMSURL:(id)a3 animate:(BOOL)a4 navigationProvider:(id)a5 chatController:(id)a6 originatingProcess:(id)a7;
+ (void)openSURFURL:(id)a3 navigationProvider:(id)a4;
+ (void)openURL:(id)a3 animate:(BOOL)a4 sourceApplication:(id)a5 originatingProcess:(id)a6 navigationProvider:(id)a7 chatController:(id)a8 completion:(id)a9;
+ (void)processAppleEventDictionary:(id)a3 animate:(BOOL)a4 navigationProvider:(id)a5 chatController:(id)a6;
+ (void)sendBackgroundCollaborationForUserActivity:(id)a3 withNavigationProvider:(id)a4 chatController:(id)a5 completion:(id)a6;
+ (void)setChatControllerCompositionForConversation:(id)a3 navigationProvider:(id)a4 composition:(id)a5;
+ (void)setupFinalCompositionWithExistingComposition:(id)a3 withPluginPayloadComposition:(id)a4 shareOptions:(id)a5 conversation:(id)a6 animated:(BOOL)a7 navigationProvider:(id)a8;
+ (void)showConversation:(id)a3 animated:(BOOL)a4 navigationProvider:(id)a5;
+ (void)updateChatController:(id)a3 composition:(id)a4;
@end

@implementation CKUserActivityHandler

+ (void)chatScene:(id)a3 willConnectToSession:(id)a4 userActivities:(id)a5 urlContexts:(id)a6 windowSceneDelegate:(id)a7
{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [v13 anyObject];
  if (v16 || ([v12 stateRestorationActivity], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v19 = 138412290;
        v20 = v16;
        _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Chat Scene - Found non-state restoration user activity in connection options: %@", &v19, 0xCu);
      }
    }

    [v15 scene:v11 continueUserActivity:v16];
  }

  if (v14)
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = 138412290;
        v20 = v14;
        _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Chat Scene - Found non-state restoration url contexts in connection options: %@", &v19, 0xCu);
      }
    }

    [v15 scene:v11 openURLContexts:v14];
  }
}

+ (void)chatScene:(id)a3 openURLContexts:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [v6 anyObject];
    v10 = [v9 URL];
    v20 = 0;
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v22 = v10;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Chat Scene - opening url: %@", buf, 0xCu);
      }
    }

    v12 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v19 = 0;
    v13 = [v12 chatForURL:v10 outMessageText:0 outRecipientIDs:0 outService:0 outMessageGUID:&v19 presentOverlay:&v20];
    v14 = v19;

    v15 = [v5 delegate];
    v16 = v15;
    if (v14)
    {
      [v15 loadAndShowConversationWithMessageGUID:v14 withInlineReplyOverlay:v20];
    }

    else
    {
      v17 = +[CKConversationList sharedConversationList];
      v18 = [v17 conversationForExistingChat:v13];

      [v16 showConversation:v18];
    }
  }
}

+ (void)messagesScene:(id)a3 willConnectToSession:(id)a4 userActivities:(id)a5 stateRestorationActivity:(id)a6 windowSceneDelegate:(id)a7
{
  v22 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v20 = 136315138;
      v21 = "+[CKUserActivityHandler messagesScene:willConnectToSession:userActivities:stateRestorationActivity:windowSceneDelegate:]";
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "%s", &v20, 0xCu);
    }
  }

  if ([v13 count])
  {
    v17 = [v13 anyObject];
    [v15 scene:v11 continueUserActivity:v17];
  }

  else
  {
    v18 = [v14 activityType];
    v19 = [v18 isEqualToString:@"com.apple.Messages.StateRestoration"];

    if (v19)
    {
      [v15 scene:v11 continueUserActivity:v14];
    }
  }
}

+ (void)messagesScene:(id)a3 continueUserActivity:(id)a4 withNavigationProvider:(id)a5 chatController:(id)a6 completion:(id)a7
{
  v78 = *MEMORY[0x1E69E9840];
  v69 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v70 = a7;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v77 = "+[CKUserActivityHandler messagesScene:continueUserActivity:withNavigationProvider:chatController:completion:]";
      _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  v16 = [v12 activityType];
  v17 = [v16 isEqualToString:@"com.apple.Messages.StateRestoration"];

  if (v17)
  {
    [objc_opt_class() restoreStateFromUserActivity:v12 withNavigationProvider:v13];
    goto LABEL_7;
  }

  v22 = [v12 activityType];
  v23 = [v22 isEqualToString:*MEMORY[0x1E696AA68]];

  if (v23)
  {
    v24 = [v69 activationState];
    v21 = [v12 webpageURL];
    v25 = [MEMORY[0x1E695DFF8] ckSMSURLFromBusinessChatURL:v21];
    if (v25)
    {
      v26 = objc_opt_class();
      v27 = [v12 _sourceApplication];
      v28 = [v12 _originatingProcess];
      [v26 openURL:v25 animate:v24 == 0 sourceApplication:v27 originatingProcess:v28 navigationProvider:v13 chatController:v14 completion:v70];
LABEL_38:

      goto LABEL_62;
    }

    if ([a1 isiMessageAppStoreURL:v21])
    {
      if (IMOSLoggingEnabled())
      {
        v53 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v53, OS_LOG_TYPE_INFO, "Handling iMessage App Store link", buf, 2u);
        }
      }

      v54 = objc_opt_class();
      v27 = [v12 _sourceApplication];
      v28 = [v12 _originatingProcess];
      [v54 openURL:v21 animate:v24 == 0 sourceApplication:v27 originatingProcess:v28 navigationProvider:v13 chatController:v14 completion:v70];
      goto LABEL_38;
    }

    goto LABEL_7;
  }

  v38 = [v12 activityType];
  v39 = [v38 isEqualToString:@"com.apple.Messages.BackgroundCollaboration"];

  if (v39)
  {
    [objc_opt_class() sendBackgroundCollaborationForUserActivity:v12 withNavigationProvider:v13 chatController:v14 completion:v70];
    goto LABEL_7;
  }

  v40 = [v12 activityType];
  v41 = [v40 isEqualToString:@"StagedActivityData"];

  if (!v41)
  {
LABEL_7:
    v18 = MEMORY[0x1E695DFF8];
    v19 = [v12 userInfo];
    v20 = [v19 objectForKey:*MEMORY[0x1E69A5890]];
    v21 = [v18 URLWithString:v20];

    if (v21)
    {
      [objc_opt_class() openURL:v21 animate:objc_msgSend(v69 sourceApplication:"activationState") == 0 originatingProcess:0 navigationProvider:0 chatController:v13 completion:{v14, v70}];
      goto LABEL_62;
    }

    if (messagesScene_continueUserActivity_withNavigationProvider_chatController_completion__onceToken != -1)
    {
      +[CKUserActivityHandler messagesScene:continueUserActivity:withNavigationProvider:chatController:completion:];
    }

    if (messagesScene_continueUserActivity_withNavigationProvider_chatController_completion___kCSSearchableItemActivityIdentifier)
    {
      v29 = [v12 userInfo];
      v68 = [v29 objectForKey:messagesScene_continueUserActivity_withNavigationProvider_chatController_completion___kCSSearchableItemActivityIdentifier];

      if (v68)
      {
        v30 = v68;
        if ([v30 hasPrefix:@"at_"])
        {
          v31 = [v30 componentsSeparatedByString:@"_"];
          v32 = [v31 lastObject];

          v30 = v32;
        }

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __109__CKUserActivityHandler_messagesScene_continueUserActivity_withNavigationProvider_chatController_completion___block_invoke_2;
        aBlock[3] = &unk_1E72EFA48;
        v75 = v13;
        v33 = _Block_copy(aBlock);
        v34 = [MEMORY[0x1E69A5AE8] sharedInstance];
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __109__CKUserActivityHandler_messagesScene_continueUserActivity_withNavigationProvider_chatController_completion___block_invoke_3;
        v71[3] = &unk_1E72F6660;
        v72 = v30;
        v73 = v33;
        v35 = v30;
        v36 = v33;
        [v34 loadMessageWithGUID:v35 completionBlock:v71];

        v37 = v75;
LABEL_19:

        goto LABEL_62;
      }

      if (messagesScene_continueUserActivity_withNavigationProvider_chatController_completion___CSQueryContinuationActionType && messagesScene_continueUserActivity_withNavigationProvider_chatController_completion___CSSearchQueryString)
      {
        v35 = [v12 activityType];
        if ([messagesScene_continueUserActivity_withNavigationProvider_chatController_completion___CSQueryContinuationActionType isEqualToString:v35])
        {
          v55 = [v12 userInfo];
          v37 = [v55 objectForKey:messagesScene_continueUserActivity_withNavigationProvider_chatController_completion___CSSearchQueryString];

          [v13 performSearchForQuery:v37];
          v56 = [MEMORY[0x1E69DC668] sharedApplication];
          v57 = [v56 testPerformSearchDelegate];

          if (v57)
          {
            v58 = [MEMORY[0x1E69DC668] sharedApplication];
            v59 = [v58 testPerformSearchDelegate];
            [v59 testPerformSearch:v37];
          }

          goto LABEL_19;
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(33);
        v52 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v52, OS_LOG_TYPE_INFO, "Couldn't find CoreSpotlight symbols", buf, 2u);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
      {
        _CKLogExternal();
      }
    }

    v61 = [v12 interaction];
    v62 = [v61 intent];

    v63 = [v12 interaction];
    if ([SMSApplicationIntentsHelper isSendMessageInteraction:v63])
    {
      v64 = [MEMORY[0x1E69A5AF8] sharedRegistry];
      v65 = +[CKConversationList sharedConversationList];
      [SMSApplicationIntentsHelper continueWithSendMessageInteraction:v63 chatRegistry:v64 navigationProvider:v13 conversationList:v65 chatController:v14];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v66 = v62;
        v64 = [v66 payee];
        v65 = [v66 currencyAmount];

        [objc_opt_class() _showPeerPaymentUIForPerson:v64 amount:v65 navigationProvider:v13 chatController:v14];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_61:

          goto LABEL_62;
        }

        v67 = v62;
        v64 = [v67 payer];
        v65 = [v67 currencyAmount];

        [objc_opt_class() _showPeerPaymentUIForPerson:v64 amount:v65 navigationProvider:v13 chatController:v14];
      }
    }

    goto LABEL_61;
  }

  v42 = MEMORY[0x1E696ACD0];
  v43 = objc_opt_class();
  v44 = [v12 userInfo];
  v45 = [v44 objectForKeyedSubscript:*MEMORY[0x1E69D9040]];
  v21 = [v42 unarchivedObjectOfClass:v43 fromData:v45 error:0];

  v46 = MEMORY[0x1E696ACD0];
  v47 = objc_opt_class();
  v48 = [v12 userInfo];
  v49 = [v48 objectForKeyedSubscript:@"currentMembers"];
  v50 = [v46 unarchivedObjectOfClass:v47 fromData:v49 error:0];

  if (v21)
  {
    v51 = [CKComposition compositionForTUConversationActivity:v21];
    [v13 showNewMessageCompositionPanelWithRecipients:v50 composition:v51 animated:0];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(33);
      v60 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v60, OS_LOG_TYPE_INFO, "Failed to unarchive activity.", buf, 2u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      _CKLogExternal();
    }
  }

LABEL_62:
}

void __109__CKUserActivityHandler_messagesScene_continueUserActivity_withNavigationProvider_chatController_completion___block_invoke()
{
  if (!messagesScene_continueUserActivity_withNavigationProvider_chatController_completion___kCSSearchableItemActivityIdentifier)
  {
    v0 = MEMORY[0x193AF5ED0]("CSSearchableItemActivityIdentifier", @"CoreSpotlight");
    if (v0)
    {
      v1 = *v0;
    }

    else
    {
      v1 = 0;
    }

    objc_storeStrong(&messagesScene_continueUserActivity_withNavigationProvider_chatController_completion___kCSSearchableItemActivityIdentifier, v1);
  }

  if (!messagesScene_continueUserActivity_withNavigationProvider_chatController_completion___CSQueryContinuationActionType)
  {
    v2 = MEMORY[0x193AF5ED0]("CSQueryContinuationActionType", @"CoreSpotlight");
    if (v2)
    {
      v3 = *v2;
    }

    else
    {
      v3 = 0;
    }

    objc_storeStrong(&messagesScene_continueUserActivity_withNavigationProvider_chatController_completion___CSQueryContinuationActionType, v3);
  }

  if (!messagesScene_continueUserActivity_withNavigationProvider_chatController_completion___CSSearchQueryString)
  {
    v4 = MEMORY[0x193AF5ED0]("CSSearchQueryString", @"CoreSpotlight");
    if (v4)
    {
      v5 = *v4;
    }

    else
    {
      v5 = 0;
    }

    objc_storeStrong(&messagesScene_continueUserActivity_withNavigationProvider_chatController_completion___CSSearchQueryString, v5);
  }
}

void __109__CKUserActivityHandler_messagesScene_continueUserActivity_withNavigationProvider_chatController_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 40);
  v6 = [a3 lastObject];
  v5 = [v6 guid];
  (*(v4 + 16))(v4, v5, *(a1 + 32));
}

+ (BOOL)restoreStateFromUserActivity:(id)a3 withNavigationProvider:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 userInfo];
  v9 = [CKSceneDelegate stateFromUserInfoDictionary:v8];

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = IMConversationListFilterModeStringValue([v9 filterMode]);
      *buf = 138412290;
      v19 = v11;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "[Filter Mode] Restore state made with filter mode: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v19 = v6;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Restoring messages scene state from user activity: %@, with state: %@", buf, 0x16u);
    }
  }

  if (v9)
  {
    objc_initWeak(buf, v7);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77__CKUserActivityHandler_restoreStateFromUserActivity_withNavigationProvider___block_invoke;
    v15[3] = &unk_1E72EFE60;
    v17[1] = a1;
    v16 = v9;
    objc_copyWeak(v17, buf);
    [v7 setDeferredHandleURLBlock:v15];
    objc_destroyWeak(v17);

    objc_destroyWeak(buf);
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "State is nil, no state to restore to.", buf, 2u);
    }
  }

  return v9 != 0;
}

void __77__CKUserActivityHandler_restoreStateFromUserActivity_withNavigationProvider___block_invoke(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Messages controller deferredHandleURLBlock called, restoring state", v6, 2u);
    }
  }

  v3 = objc_opt_class();
  v4 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v3 restoreState:v4 navigationProvider:WeakRetained];
}

+ (BOOL)restoreState:(id)a3 navigationProvider:(id)a4
{
  v76 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v69 = v5;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Restoring state: %@", buf, 0xCu);
    }
  }

  v8 = [MEMORY[0x1E695E000] standardUserDefaults];
  if (![v8 integerForKey:@"BypassStateRestore"])
  {
    v9 = [MEMORY[0x1E69DC668] shouldMakeUIForDefaultPNG];
    v10 = v5 ? v9 : 1;
    if ((v10 & 1) == 0)
    {
      v13 = [(__CFString *)v5 composingNewMessage];
      v14 = [(__CFString *)v5 groupID];
      v15 = [(__CFString *)v5 unreadLastMessages];
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = @"NO";
          *buf = 138412802;
          if (v13)
          {
            v17 = @"YES";
          }

          v69 = v17;
          v70 = 2112;
          v71 = v14;
          v72 = 2112;
          v73 = v15;
          _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Restoring application state. isComposingNew=%@  groupID=%@ unreadLastMessages=%@", buf, 0x20u);
        }
      }

      v18 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v19 = [v18 isModernFilteringEnabled];

      if (v19)
      {
        v20 = [(__CFString *)v5 storedFilterModes];
        if (v20)
        {
          if (IMOSLoggingEnabled())
          {
            v21 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v69 = v20;
              _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "[Filter Mode] Restoring filter modes: %@", buf, 0xCu);
            }
          }

          v22 = [v6 conversationListController];
          [v22 restoreFilterModesIfValid:v20];
        }
      }

      else
      {
        v23 = [(__CFString *)v5 filterMode];
        if (IMOSLoggingEnabled())
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = IMConversationListFilterModeStringValue(v23);
            *buf = 138412290;
            v69 = v25;
            _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "[Filter Mode] Restoring with filter mode: %@", buf, 0xCu);
          }
        }

        v26 = [v6 conversationListController];
        [v26 setFilterMode:v23];

        if (![objc_opt_class() _messageUnknownFilteringEnabled])
        {
LABEL_32:
          if (+[CKStarkManager isCarPlayConnected])
          {
            if (IMOSLoggingEnabled())
            {
              v27 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "  => CarPlay screen connected, restoring to converation list to ensure no messages are unintentionally marked as read.", buf, 2u);
              }
            }

            [v6 showConversationListWithAnimation:0];
LABEL_38:
            if (([0 isCurrentlyPlayingAudio] & 1) == 0)
            {
              v28 = 0;
              goto LABEL_133;
            }

            v28 = 0;
            v11 = 1;
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_134;
            }

            goto LABEL_111;
          }

          if (v13)
          {
            if ([v6 currentCompositionHasContent])
            {
              if (IMOSLoggingEnabled())
              {
                v29 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "  => Already showing transcript or new composition", buf, 2u);
                }
              }

              goto LABEL_38;
            }

            if (([v6 isComposingMessage] & 1) == 0)
            {
              v40 = +[CKDraftManager sharedInstance];
              v66 = 0;
              v67 = 0;
              v41 = [v40 draftForPendingConversationWithRecipients:&v67 chatIdentifier:&v66];
              v42 = v67;
              v43 = v66;

              if (IMOSLoggingEnabled())
              {
                v44 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                {
                  v45 = [v42 componentsJoinedByString:{@", "}];
                  *buf = 138412546;
                  v69 = v45;
                  v70 = 2112;
                  v71 = v41;
                  _os_log_impl(&dword_19020E000, v44, OS_LOG_TYPE_INFO, "  => Showing new message composition panel, recipients=%@   composition=%@", buf, 0x16u);
                }
              }

              [v6 showNewMessageCompositionPanelWithRecipients:v42 composition:v41 chatID:v43 animated:1];

              goto LABEL_38;
            }
          }

          v30 = [MEMORY[0x1E69A5B50] sharedController];
          if ([v30 isConnected])
          {
            v31 = +[CKConversationList sharedConversationList];
            if (![v31 loadedConversations])
            {
              v37 = +[CKUIBehavior sharedBehaviors];
              v38 = [v37 showsCompositionPanel];

              if (v38)
              {
                if (IMOSLoggingEnabled())
                {
                  v39 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_19020E000, v39, OS_LOG_TYPE_INFO, "  => Showing empty new message composition panel", buf, 2u);
                  }
                }

                if (([v6 isComposingMessage] & 1) == 0)
                {
                  [v6 showNewMessageCompositionPanelWithRecipients:0 composition:0 animated:1];
                }

                goto LABEL_38;
              }

LABEL_53:
              if (!v14)
              {
                goto LABEL_59;
              }

              if (IMOSLoggingEnabled())
              {
                v32 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v69 = v14;
                  _os_log_impl(&dword_19020E000, v32, OS_LOG_TYPE_INFO, "  => Looking up conversation with group ID: %@", buf, 0xCu);
                }
              }

              if (([(__CFString *)v14 isEqualToString:@"-1"]& 1) != 0)
              {
                goto LABEL_59;
              }

              if (CKiMessageSupported())
              {
                if (IMOSLoggingEnabled())
                {
                  v33 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_19020E000, v33, OS_LOG_TYPE_INFO, "    => Ensuring we have a connection to the daemon before looking up any conversations", buf, 2u);
                  }
                }

                v34 = [MEMORY[0x1E69A5B50] sharedController];
                [v34 blockUntilConnected];
              }

              v35 = +[CKConversationList sharedConversationList];
              v36 = [v35 conversationForExistingChatWithChatIdentifier:v14];
              if (v36)
              {
                v28 = v36;
              }

              else
              {
                v46 = +[CKConversationList sharedConversationList];
                v28 = [v46 conversationForExistingChatWithGroupID:v14];

                if (!v28)
                {
                  if (IMOSLoggingEnabled())
                  {
                    v65 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v69 = v14;
                      _os_log_impl(&dword_19020E000, v65, OS_LOG_TYPE_INFO, "  => No conversation found for ID %@", buf, 0xCu);
                    }
                  }

LABEL_59:
                  v28 = 0;
                  v11 = 0;
                  goto LABEL_109;
                }
              }

              if (IMOSLoggingEnabled())
              {
                v47 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v69 = v28;
                  _os_log_impl(&dword_19020E000, v47, OS_LOG_TYPE_INFO, "  => Found conversation: %@", buf, 0xCu);
                }
              }

              v48 = [(__CFString *)v28 unsentComposition];
              if (IMOSLoggingEnabled())
              {
                v49 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v69 = v48;
                  _os_log_impl(&dword_19020E000, v49, OS_LOG_TYPE_INFO, "  => Found composition: %@", buf, 0xCu);
                }
              }

              if (IMOSLoggingEnabled())
              {
                v50 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
                {
                  v51 = [(__CFString *)v48 hasNonwhiteSpaceContent];
                  v52 = @"NO";
                  if (v51)
                  {
                    v52 = @"YES";
                  }

                  *buf = 138412290;
                  v69 = v52;
                  _os_log_impl(&dword_19020E000, v50, OS_LOG_TYPE_INFO, "    => Found composition has non-whitespace: %@", buf, 0xCu);
                }
              }

              if (IMOSLoggingEnabled())
              {
                v53 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
                {
                  v54 = [(__CFString *)v48 hasContent];
                  v55 = @"NO";
                  if (v54)
                  {
                    v55 = @"YES";
                  }

                  *buf = 138412290;
                  v69 = v55;
                  _os_log_impl(&dword_19020E000, v53, OS_LOG_TYPE_INFO, "    => Found composition has content: %@", buf, 0xCu);
                }
              }

              if ([(__CFString *)v48 hasContent])
              {
                if (IMOSLoggingEnabled())
                {
                  v56 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v69 = v28;
                    _os_log_impl(&dword_19020E000, v56, OS_LOG_TYPE_INFO, "  => Conversation has unsent content, restoring to it: %@", buf, 0xCu);
                  }
                }

                v11 = [v6 resumeToConversation:v28];
              }

              else
              {
                v11 = 0;
              }

LABEL_109:
              if (([(__CFString *)v28 isCurrentlyPlayingAudio]& 1) == 0)
              {
                if (v11)
                {
                  goto LABEL_133;
                }

                if ([v6 shouldRestoreToConversationListForState:v5])
                {
                  if (IMOSLoggingEnabled())
                  {
                    v64 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_19020E000, v64, OS_LOG_TYPE_INFO, "  => Showing unread conversations", buf, 2u);
                    }
                  }

                  if ([v6 showUnreadConversationsWithLastConversation:v28 ignoringMessages:v15])
                  {
                    goto LABEL_133;
                  }
                }

LABEL_115:
                v58 = [(__CFString *)v28 chat];
                v59 = [v58 lastMessage];

                if (IMOSLoggingEnabled())
                {
                  v60 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
                  {
                    v61 = @"NO";
                    *buf = 138413058;
                    if (v28 != 0 && v59 != 0)
                    {
                      v62 = @"YES";
                    }

                    else
                    {
                      v62 = @"NO";
                    }

                    v69 = v62;
                    v70 = 2112;
                    v71 = v28;
                    if (!v59)
                    {
                      v61 = @"YES";
                    }

                    v72 = 2112;
                    v73 = v14;
                    v74 = 2112;
                    v75 = v61;
                    _os_log_impl(&dword_19020E000, v60, OS_LOG_TYPE_INFO, "  => canRestoreToLastConversation: %@, lastConversation: %@, groupID: %@, isConversationEmpty: %@", buf, 0x2Au);
                  }
                }

                if (v28 == 0 || v59 == 0)
                {
                  goto LABEL_130;
                }

                if (IMOSLoggingEnabled())
                {
                  v63 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_19020E000, v63, OS_LOG_TYPE_INFO, "  => Restoring to last conversation", buf, 2u);
                  }
                }

                if (([v6 resumeToConversation:v28] & 1) == 0)
                {
LABEL_130:
                  if (![(__CFString *)v5 showingInbox])
                  {
                    v11 = 0;
                    goto LABEL_134;
                  }

                  [v6 showInboxViewControllerAnimated:0];
                }

LABEL_133:
                v11 = 1;
LABEL_134:

                goto LABEL_11;
              }

              if ((IMOSLoggingEnabled() & 1) == 0)
              {
LABEL_114:
                if (v11)
                {
                  goto LABEL_133;
                }

                goto LABEL_115;
              }

LABEL_111:
              v57 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_19020E000, v57, OS_LOG_TYPE_INFO, "Last active conversation is currently playing audio. Not restoring to conversation list.", buf, 2u);
              }

              goto LABEL_114;
            }
          }

          goto LABEL_53;
        }

        v20 = [v6 conversationListController];
        [(__CFString *)v20 updateConversationList];
      }

      goto LABEL_32;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

+ (void)sendBackgroundCollaborationForUserActivity:(id)a3 withNavigationProvider:(id)a4 chatController:(id)a5 completion:(id)a6
{
  v53 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v41 = a4;
  v39 = a5;
  v40 = a6;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v9 userInfo];
      *buf = 138412290;
      v48 = v11;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Received user activity to send background collaboration with userInfo: %@", buf, 0xCu);
    }
  }

  v12 = [MEMORY[0x1E69D8A58] sharedInstance];
  v13 = [v12 conversationManager];
  v14 = [v13 activeConversations];

  v15 = [v9 _originatingProcess];
  LOBYTE(v13) = [v15 hasEntitlement:@"com.apple.private.messages.collaboration-initiate-send"];

  if (v13)
  {
    v16 = [MEMORY[0x1E69DC668] sharedApplication];
    v36 = [v16 beginBackgroundTaskWithExpirationHandler:&__block_literal_global_320_0];

    v17 = [v9 userInfo];
    v38 = [v17 objectForKeyedSubscript:@"shud"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = MEMORY[0x1E696ACD0];
      v19 = MEMORY[0x1E695DFD8];
      v20 = objc_opt_class();
      v21 = objc_opt_class();
      v22 = objc_opt_class();
      v23 = objc_opt_class();
      v24 = objc_opt_class();
      v25 = objc_opt_class();
      v26 = objc_opt_class();
      v27 = [v19 setWithObjects:{v20, v21, v22, v23, v24, v25, v26, objc_opt_class(), 0}];
      v46 = 0;
      v28 = [v18 unarchivedObjectOfClasses:v27 fromData:v38 error:&v46];
      v29 = v46;

      if (IMOSLoggingEnabled())
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v48 = v28;
          _os_log_impl(&dword_19020E000, v30, OS_LOG_TYPE_INFO, "Unarchived dictionary from user activity data: %@", buf, 0xCu);
        }
      }

      if (v28)
      {
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __117__CKUserActivityHandler_sendBackgroundCollaborationForUserActivity_withNavigationProvider_chatController_completion___block_invoke_332;
        v42[3] = &unk_1E72F6688;
        v43 = v9;
        v45 = v36;
        v44 = v41;
        [a1 compositionFromDictionary:v28 completion:v42];

        v31 = v43;
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v35 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v35, OS_LOG_TYPE_INFO, "No shud data so cannot send the collaboration", buf, 2u);
          }
        }

        v31 = [MEMORY[0x1E69DC668] sharedApplication];
        [v31 endBackgroundTask:v36];
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v34 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v34, OS_LOG_TYPE_INFO, "Found no shud data on user activity so not able to share collaboration with FaceTime", buf, 2u);
        }
      }

      v28 = [MEMORY[0x1E69DC668] sharedApplication];
      [v28 endBackgroundTask:v36];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v32 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = [v9 _originatingProcess];
      *buf = 138412802;
      v48 = v9;
      v49 = 2112;
      v50 = @"com.apple.private.messages.collaboration-initiate-send";
      v51 = 2112;
      v52 = v33;
      _os_log_impl(&dword_19020E000, v32, OS_LOG_TYPE_INFO, "received userActivity: (%@) to send collaboration but the originating process was missing the entitlement: %@ to do so: %@ ", buf, 0x20u);
    }
  }
}

void __117__CKUserActivityHandler_sendBackgroundCollaborationForUserActivity_withNavigationProvider_chatController_completion___block_invoke()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&dword_19020E000, v0, OS_LOG_TYPE_INFO, "Background task expired for sending a background collaboration", v1, 2u);
    }
  }
}

void __117__CKUserActivityHandler_sendBackgroundCollaborationForUserActivity_withNavigationProvider_chatController_completion___block_invoke_332(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = v3;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Created composition %@ from dictionary", &v17, 0xCu);
    }
  }

  v5 = [*(a1 + 32) userInfo];
  v6 = [v5 objectForKeyedSubscript:@"FaceTimeUUID"];

  if (v6 && ([MEMORY[0x1E69A5AF8] sharedRegistry], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "existingConversationForFaceTimeConversationUUID:", v6), v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = v8;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Found FaceTime conversation for collaboration %@", &v17, 0xCu);
      }
    }

    v10 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v11 = [v10 chatForFaceTimeConversation:v8];

    if (v11 && (+[CKConversationList sharedConversationList](CKConversationList, "sharedConversationList"), v12 = objc_claimAutoreleasedReturnValue(), [v12 conversationForExistingChat:v11], v13 = objc_claimAutoreleasedReturnValue(), v12, v13))
    {
      [*(a1 + 40) showConversation:v13 animate:0];
      v14 = [*(a1 + 40) chatController];
      [v3 setSourceApplicationID:@"com.apple.FaceTime"];
      [CKFaceTimeCollaborationUtilities startCollaborationWithComposition:v3 faceTimeConversation:v8 imChat:v11 chatController:v14 backgroundTaskID:*(a1 + 48)];
    }

    else
    {
      v16 = IMLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __117__CKUserActivityHandler_sendBackgroundCollaborationForUserActivity_withNavigationProvider_chatController_completion___block_invoke_332_cold_1((a1 + 32), v11 == 0, v16);
      }

      v13 = [MEMORY[0x1E69DC668] sharedApplication];
      [v13 endBackgroundTask:*(a1 + 48)];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = v6;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Did not find FaceTime conversation with UUID %@", &v17, 0xCu);
      }
    }

    v8 = [MEMORY[0x1E69DC668] sharedApplication];
    [v8 endBackgroundTask:*(a1 + 48)];
  }
}

+ (void)compositionFromDictionary:(id)a3 completion:(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v35 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v6 allKeys];
      *buf = 138412290;
      *&buf[4] = v8;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "All keys in collaborationDictionary = %@", buf, 0xCu);
    }
  }

  v9 = [v6 objectForKey:{@"fileObjects", v35}];
  v10 = [v9 objectForKeyedSubscript:@"fileURLs"];
  v11 = [v6 objectForKey:@"CKShare"];
  v12 = [v6 objectForKey:@"CollaborationOptions"];
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__59;
  v51 = __Block_byref_object_dispose__59;
  v52 = [v6 objectForKey:@"CollaborationShareOptions"];
  v13 = v48[5];
  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = v12 == 0;
  }

  if (!v14)
  {
    v15 = [MEMORY[0x1E697B720] shareOptionsWithOptionsGroups:v12];
    v16 = v48[5];
    v48[5] = v15;

    v13 = v48[5];
  }

  if (!v13 && v12)
  {
    v17 = [MEMORY[0x1E697B720] shareOptionsWithOptionsGroups:v12];
    v18 = v48[5];
    v48[5] = v17;
  }

  v19 = [v6 objectForKey:@"CollaborationMetadata"];
  v20 = [v6 objectForKey:@"CollaborationMode"];
  v21 = [v20 BOOLValue];

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = @"NO";
      v24 = v48[5];
      if (v21)
      {
        v23 = @"YES";
      }

      *buf = 138413314;
      *&buf[4] = v9;
      *&buf[12] = 2112;
      *&buf[14] = v11;
      *&buf[22] = 2112;
      v59 = v24;
      *v60 = 2112;
      *&v60[2] = v19;
      *&v60[10] = 2112;
      *&v60[12] = v23;
      _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Data received from collaborationDictionary: fileObject: %@, cloudKitObjects: %@, share options: %@, metadata: %@, isCollaborative: %@", buf, 0x34u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v19;
      _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "CollaborationMetadata from collaborationDictionary %@", buf, 0xCu);
    }
  }

  if ([v9 count] && objc_msgSend(v10, "count"))
  {
    v26 = [v9 objectForKeyedSubscript:@"fileURLs"];
    v27 = [CKUserActivityHandler createPluginPayloadForFileProvider:v26 sendCopyFileURLs:MEMORY[0x1E695E0F0]];
  }

  else if ([v11 count])
  {
    v27 = [CKUserActivityHandler createPluginPayloadForCloudKitPlusCollaborationMetadata:v11 shareOptions:v48[5]];
  }

  else
  {
    v27 = 0;
  }

  [v27 setSendAsCopy:v21 ^ 1u];
  if (objc_opt_respondsToSelector())
  {
    v28 = [v48[5] summary];
    v29 = v28;
    if (!v28)
    {
      v4 = CKFrameworkBundle();
      v29 = [v4 localizedStringForKey:@"DEFAULT_COLLABORATION_OPTIONS_SUMMARY" value:&stru_1F04268F8 table:@"ChatKit"];
    }

    [v27 setCollaborationOptionsSummary:v29];
    if (!v28)
    {
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v59 = __Block_byref_object_copy__59;
  *v60 = __Block_byref_object_dispose__59;
  *&v60[8] = [v6 objectForKey:@"token"];
  if (IMOSLoggingEnabled())
  {
    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = *(*&buf[8] + 40);
      LODWORD(v53) = 138412290;
      *(&v53 + 4) = v31;
      _os_log_impl(&dword_19020E000, v30, OS_LOG_TYPE_INFO, "kevin@@@ token %@", &v53, 0xCu);
    }
  }

  *&v53 = 0;
  *(&v53 + 1) = &v53;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__59;
  v56 = __Block_byref_object_dispose__59;
  v57 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = __Block_byref_object_copy__59;
  v45[4] = __Block_byref_object_dispose__59;
  v46 = 0;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __62__CKUserActivityHandler_compositionFromDictionary_completion___block_invoke;
  v37[3] = &unk_1E72F6700;
  v32 = v27;
  v38 = v32;
  v33 = v10;
  v39 = v33;
  v41 = buf;
  v42 = v45;
  v43 = &v53;
  v44 = &v47;
  v34 = v36;
  v40 = v34;
  [CKComposition compositionWithShelfPluginPayload:v32 completionHandler:v37];

  _Block_object_dispose(v45, 8);
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v47, 8);
}

void __62__CKUserActivityHandler_compositionFromDictionary_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) payloadCollaborationType] == 1)
  {
    v7 = [*(a1 + 40) firstObject];
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v7;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "FileProvider backed collaboration. Loading media object object from item at url: %@", &buf, 0xCu);
      }
    }

    v9 = *(*(*(a1 + 56) + 8) + 40);
    if (v9)
    {
      [v9 UTF8String];
      v10 = sandbox_extension_consume() == -1;
      v11 = IMOSLoggingEnabled();
      if (v10)
      {
        if (v11)
        {
          v12 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v17 = *(*(*(a1 + 56) + 8) + 40);
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v17;
            _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Failed to consume sandbox token: %@", &buf, 0xCu);
          }

          goto LABEL_24;
        }
      }

      else if (v11)
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Succesfully consumed sandbox token", &buf, 2u);
        }

LABEL_24:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "No sandbox token", &buf, 2u);
      }

      goto LABEL_24;
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__59;
    v36 = __Block_byref_object_dispose__59;
    v37 = [*(a1 + 32) url];
    v18 = [v7 lastPathComponent];
    v19 = [v18 stringByRemovingPercentEncoding];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __62__CKUserActivityHandler_compositionFromDictionary_completion___block_invoke_375;
    v24[3] = &unk_1E72F66D8;
    v29 = *(a1 + 64);
    v20 = v7;
    v21 = *(a1 + 72);
    v25 = v20;
    v30 = v21;
    v22 = v5;
    v23 = *(a1 + 80);
    v26 = v22;
    v31 = v23;
    v27 = *(a1 + 32);
    v28 = *(a1 + 48);
    p_buf = &buf;
    [CKComposition mediaObjectFromItemAtURL:v20 filename:v19 completion:v24];

    _Block_object_dispose(&buf, 8);
    goto LABEL_26;
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Collaboration is not backed by FP. Will not load media object.", &buf, 2u);
    }
  }

  v14 = [v5 compositionWithCollaborationShareOptions:*(*(*(a1 + 80) + 8) + 40)];
  v15 = *(*(a1 + 72) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  (*(*(a1 + 48) + 16))();
LABEL_26:
}

void __62__CKUserActivityHandler_compositionFromDictionary_completion___block_invoke_375(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      *buf = 138412802;
      v26 = v6;
      v27 = 2112;
      v28 = v9;
      v29 = 2112;
      v30 = v7;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Created mediaObject: %@ from url: %@. Error: %@", buf, 0x20u);
    }
  }

  v10 = [CKComposition compositionWithShelfMediaObject:v6];
  v11 = [*(a1 + 40) compositionByAppendingComposition:v10];
  v12 = *(*(a1 + 72) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [*(*(*(a1 + 72) + 8) + 40) compositionWithCollaborationShareOptions:*(*(*(a1 + 80) + 8) + 40)];
  v15 = *(*(a1 + 72) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v17 = [*(a1 + 48) collaborationMetadata];

  v18 = IMOSLoggingEnabled();
  if (v17)
  {
    if (v18)
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "PluginPayload already has collaboration metadata so not updating now", buf, 2u);
      }
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (v18)
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = *(*(*(a1 + 88) + 8) + 40);
        *buf = 138412290;
        v26 = v21;
        _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "Did not receive metadata for file URL %@ , fetching metadata", buf, 0xCu);
      }
    }

    v22 = *(a1 + 48);
    v23 = *(a1 + 32);
    v24 = *(a1 + 56);
    SWCollaborationMetadataForDocumentURL();
  }
}

void __62__CKUserActivityHandler_compositionFromDictionary_completion___block_invoke_376(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(*(*(a1 + 56) + 8) + 40);
        v11 = 138412546;
        v12 = v8;
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "error loading collaboration metadata for documentURL: %@ error:%@", &v11, 0x16u);
      }
    }
  }

  else
  {
    [*(a1 + 32) setCollaborationMetadata:v5];
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(*(*(a1 + 56) + 8) + 40);
        v11 = 138412546;
        v12 = v5;
        v13 = 2112;
        v14 = v10;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Received updated collaborationMetadata: %@ for document url: %@", &v11, 0x16u);
      }
    }

    [CKUserActivityHandler fileProviderCompositionFromPluginPayload:*(a1 + 32) url:*(a1 + 40) shareOptions:*(*(*(a1 + 64) + 8) + 40) previousComposition:*(*(*(a1 + 72) + 8) + 40) completion:*(a1 + 48)];
  }
}

+ (void)fileProviderCompositionFromPluginPayload:(id)a3 url:(id)a4 shareOptions:(id)a5 previousComposition:(id)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __114__CKUserActivityHandler_fileProviderCompositionFromPluginPayload_url_shareOptions_previousComposition_completion___block_invoke;
  v21[3] = &unk_1E72F6750;
  v22 = v12;
  v23 = v11;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v16 = v15;
  v17 = v14;
  v18 = v13;
  v19 = v11;
  v20 = v12;
  [CKComposition compositionWithShelfPluginPayload:v19 completionHandler:v21];
}

void __114__CKUserActivityHandler_fileProviderCompositionFromPluginPayload_url_shareOptions_previousComposition_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __114__CKUserActivityHandler_fileProviderCompositionFromPluginPayload_url_shareOptions_previousComposition_completion___block_invoke_2;
  v11[3] = &unk_1E72EDCC0;
  v12 = a1[4];
  v13 = v3;
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v14 = v9;
  v15 = v8;
  v10 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

void __114__CKUserActivityHandler_fileProviderCompositionFromPluginPayload_url_shareOptions_previousComposition_completion___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E6994FC8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __114__CKUserActivityHandler_fileProviderCompositionFromPluginPayload_url_shareOptions_previousComposition_completion___block_invoke_3;
  v10[3] = &unk_1E72F6728;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v11 = v9;
  v12 = v8;
  v13 = *(a1 + 72);
  [v2 userNameAndEmail:v3 containerSetupInfo:0 completionHandler:v10];
}

void __114__CKUserActivityHandler_fileProviderCompositionFromPluginPayload_url_shareOptions_previousComposition_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  if (v9)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v19 = 138412290;
        v20 = v9;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Error while trying to get the user name and email : %@.", &v19, 0xCu);
      }
    }

    v12 = [v10 shelfPluginPayload];
    [v12 setSendAsCopy:1];
  }

  else
  {
    v13 = [*(a1 + 40) collaborationMetadata];
    v12 = [v13 copy];

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v19 = 138412290;
        v20 = v8;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Setting initiatorHandle to: %@", &v19, 0xCu);
      }
    }

    [v12 setInitiatorHandle:v8];
    v15 = objc_alloc_init(MEMORY[0x1E696ADF8]);
    v16 = [v15 personNameComponentsFromString:v7];
    [v12 setInitiatorNameComponents:v16];
    [*(a1 + 40) setCollaborationMetadata:v12];
    v17 = [v10 compositionByAppendingText:0 shelfPluginPayload:*(a1 + 40) shelfMediaObject:0 collaborationShareOptions:*(a1 + 48)];

    v18 = [*(a1 + 56) compositionByAppendingComposition:v17];
    (*(*(a1 + 64) + 16))();

    v10 = v17;
  }
}

+ (void)processAppleEventDictionary:(id)a3 animate:(BOOL)a4 navigationProvider:(id)a5 chatController:(id)a6
{
  v8 = a3;
  v9 = a5;
  v10 = a6;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Processing Apple Event Dictionary", v12, 2u);
    }
  }
}

+ (id)createPluginPayloadForFileProvider:(id)a3 sendCopyFileURLs:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 firstObject];
  v8 = [v6 firstObject];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "FileURL = %@, sendCopyURLs = %@", &v12, 0x16u);
    }
  }

  v10 = [CKBrowserItemPayload createBrowserItemPayloadWithURL:v7 data:0];
  [v10 setPayloadCollaborationType:1];
  [v10 setSendAsCopyURL:v8];

  return v10;
}

+ (id)createPluginPayloadForCloudKit:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 objectForKey:@"share"];
  v11 = 0;
  v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v11];
  v6 = v11;
  if (v6 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Received error while unarchiving the ckshare. Error:%@", buf, 0xCu);
    }
  }

  v8 = [v5 URL];
  v9 = [CKBrowserItemPayload createBrowserItemPayloadWithURL:v8 data:0];
  [v9 setPayloadCollaborationType:2];
  [v9 setCloudKitShare:v5];

  return v9;
}

+ (id)createPluginPayloadForCloudKitPlusCollaborationMetadata:(id)a3 shareOptions:(id)a4
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v34 = a4;
  v35 = v5;
  v39 = [v5 objectForKey:@"share"];
  v6 = 0x1E696A000uLL;
  v54 = 0;
  v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v39 error:&v54];
  v8 = v54;
  if (v8 && IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Received error while unarchiving the ckshare. Error:%@", &buf, 0xCu);
    }
  }

  v40 = [v7 URL];
  v41 = [CKBrowserItemPayload createBrowserItemPayloadWithURL:v40 data:0];
  [v41 setPayloadCollaborationType:2];
  [v41 setCloudKitShare:v7];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Creating metadata from CKShare", &buf, 2u);
    }
  }

  v38 = [v40 fragment];
  if (v38)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"#%@", v38];
    v12 = [v40 absoluteString];
    v33 = [v12 stringByReplacingOccurrencesOfString:v11 withString:&stru_1F04268F8];
  }

  else
  {
    v33 = &stru_1F04268F8;
  }

  v37 = [v7 objectForKeyedSubscript:*MEMORY[0x1E695B830]];
  if (v37)
  {
    v13 = [MEMORY[0x1E6982C40] typeWithIdentifier:?];
  }

  else
  {
    v13 = 0;
  }

  if (![v13 conformsToType:*MEMORY[0x1E6982E48]] || !objc_msgSend(v13, "conformsToType:", *MEMORY[0x1E6982D60]) || !objc_msgSend(v13, "conformsToType:", *MEMORY[0x1E6982D80]) || (objc_msgSend(v13, "conformsToType:", *MEMORY[0x1E6982FF8]) & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v13;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Setting contentType to nil for a non file type. was: %@", &buf, 0xCu);
      }
    }

    v13 = 0;
  }

  v36 = [v7 currentUserParticipant];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__59;
  v61 = __Block_byref_object_dispose__59;
  v62 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__59;
  v52 = __Block_byref_object_dispose__59;
  v53 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__CKUserActivityHandler_createPluginPayloadForCloudKitPlusCollaborationMetadata_shareOptions___block_invoke;
  aBlock[3] = &unk_1E72F6778;
  aBlock[4] = &buf;
  aBlock[5] = &v48;
  v15 = _Block_copy(aBlock);
  v15[2](v15, v36);
  if (!*(*(&buf + 1) + 40))
  {
    v32 = v8;
    [v7 allParticipants];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v16 = v44 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v43 objects:v57 count:16];
    if (v17)
    {
      v18 = *v44;
      while (2)
      {
        v19 = v6;
        for (i = 0; i != v17; ++i)
        {
          if (*v44 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v43 + 1) + 8 * i);
          if ([v21 role] == 1)
          {
            v15[2](v15, v21);
            v6 = v19;
            goto LABEL_36;
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v43 objects:v57 count:16];
        v6 = v19;
        if (v17)
        {
          continue;
        }

        break;
      }
    }

LABEL_36:

    v8 = v32;
  }

  v22 = [v35 objectForKey:@"setupInfo"];
  v23 = *(v6 + 3280);
  v42 = v8;
  v24 = [v23 unarchivedObjectOfClass:objc_opt_class() fromData:v22 error:&v42];
  v25 = v42;

  if (v25 && IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *v55 = 138412290;
      v56 = v25;
      _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "Received error while unarchiving the CKContainerSetupInfo. Error:%@", v55, 0xCu);
    }
  }

  v27 = objc_alloc(MEMORY[0x1E697B700]);
  v28 = [v7 objectForKeyedSubscript:*MEMORY[0x1E695B828]];
  v29 = [MEMORY[0x1E695DF00] date];
  v30 = [v27 initWithCollaborationIdentifier:v33 title:v28 defaultShareOptions:v34 creationDate:v29 contentType:v13 initiatorHandle:*(*(&buf + 1) + 40) initiatorNameComponents:v49[5] containerSetupInfo:v24 sourceProcessData:0];

  [v41 setCollaborationMetadata:v30];
  _Block_object_dispose(&v48, 8);

  _Block_object_dispose(&buf, 8);

  return v41;
}

void __94__CKUserActivityHandler_createPluginPayloadForCloudKitPlusCollaborationMetadata_shareOptions___block_invoke(uint64_t a1, void *a2)
{
  v9 = [a2 userIdentity];
  v3 = [v9 lookupInfo];
  v4 = [v3 phoneNumber];
  v5 = v4;
  if (!v4)
  {
    v5 = [v3 emailAddress];
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v5);
  if (!v4)
  {
  }

  v6 = [v9 nameComponents];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

+ (id)createPluginPayloadForPendingCollaboration:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 collaborationMetadata];
  v5 = [v4 defaultOptions];
  v6 = [v3 fileURL];
  v7 = [CKBrowserItemPayload createBrowserItemPayloadWithURL:v6 data:0];
  v8 = [v4 initiatorHandle];

  if (!v8)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Initiator handle is nil. Defaulting to send as copy.", &v12, 2u);
      }
    }

    [v7 setSendAsCopy:1];
  }

  [v7 setCollaborationMetadata:v4];
  [v7 setPayloadCollaborationType:3];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412802;
      v13 = v6;
      v14 = 2112;
      v15 = v4;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Creating a pluginPayload with url: %@, metadata: %@, options: %@", &v12, 0x20u);
    }
  }

  return v7;
}

+ (id)createPluginPayloadForCloudKitWithLaunchContext:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Calling createPluginPayloadForCloudKitWithLaunchContext: %@", &v6, 0xCu);
    }
  }

  return 0;
}

+ (void)setChatControllerCompositionForConversation:(id)a3 navigationProvider:(id)a4 composition:(id)a5
{
  if (a3)
  {
    v6 = a5;
    v7 = [a4 chatController];
    [CKUserActivityHandler updateChatController:"updateChatController:composition:" composition:?];
  }

  else
  {
    v7 = a5;
    [a4 showNewMessageCompositionPanelWithRecipients:0 composition:? animated:?];
  }
}

+ (void)setupFinalCompositionWithExistingComposition:(id)a3 withPluginPayloadComposition:(id)a4 shareOptions:(id)a5 conversation:(id)a6 animated:(BOOL)a7 navigationProvider:(id)a8
{
  v9 = a7;
  v13 = a6;
  v14 = a8;
  v15 = [CKUserActivityHandler finalCompositionFromExistingComposition:a3 pluginPayloadComposition:a4 shareOptions:a5];
  if (v13 && ([v13 isPlaceholder] & 1) == 0)
  {
    [CKUserActivityHandler showConversation:v13 animated:v9 navigationProvider:v14];
    if (!v15)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v16 = objc_alloc(MEMORY[0x1E695DF70]);
  v17 = [v13 recipients];
  v18 = [v16 initWithCapacity:{objc_msgSend(v17, "count")}];

  v19 = [v13 recipients];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __153__CKUserActivityHandler_setupFinalCompositionWithExistingComposition_withPluginPayloadComposition_shareOptions_conversation_animated_navigationProvider___block_invoke;
  v22[3] = &unk_1E72F67A0;
  v23 = v18;
  v20 = v18;
  [v19 enumerateObjectsUsingBlock:v22];

  [v14 showNewMessageCompositionPanelWithRecipients:v20 composition:v15 animated:1];
  if (v15)
  {
LABEL_4:
    v21 = [v14 chatController];
    [CKUserActivityHandler updateChatController:v21 composition:v15];
  }

LABEL_5:
}

void __153__CKUserActivityHandler_setupFinalCompositionWithExistingComposition_withPluginPayloadComposition_shareOptions_conversation_animated_navigationProvider___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 rawAddress];
  [v2 addObject:v3];
}

+ (id)finalCompositionFromExistingComposition:(id)a3 pluginPayloadComposition:(id)a4 shareOptions:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (a3)
  {
    v9 = [a3 compositionByAppendingComposition:v7];
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;
  v11 = [v9 compositionWithCollaborationShareOptions:v8];

  return v11;
}

+ (void)showConversation:(id)a3 animated:(BOOL)a4 navigationProvider:(id)a5
{
  v5 = a4;
  v7 = a5;
  [v7 showConversation:a3 animate:v5];
  v8 = [v7 conversationListController];
  [v8 updateConversationList];

  v10 = [v7 conversationListController];

  v9 = [v10 conversationList];
  [v9 updateConversationsWasKnownSender];
}

+ (void)updateChatController:(id)a3 composition:(id)a4
{
  v5 = a4;
  v7 = a3;
  v6 = [v7 conversation];
  [v6 setUnsentComposition:0];

  [v7 setComposition:v5];
}

+ (void)openURL:(id)a3 animate:(BOOL)a4 sourceApplication:(id)a5 originatingProcess:(id)a6 navigationProvider:(id)a7 chatController:(id)a8 completion:(id)a9
{
  v47 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v44 = v15;
      v45 = 2112;
      v46 = v16;
      _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "Opening url: %@ from source application: %@", buf, 0x16u);
    }
  }

  if ([v15 ckIsUnitTestingURL])
  {
    v22 = [MEMORY[0x1E69DC668] sharedApplication];
    [v22 _handleUnitTestInvocation:v15];
  }

  else
  {
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = __123__CKUserActivityHandler_openURL_animate_sourceApplication_originatingProcess_navigationProvider_chatController_completion___block_invoke;
    v34 = &unk_1E72F67C8;
    v23 = v15;
    v35 = v23;
    v41 = a1;
    v42 = a4;
    v24 = v18;
    v36 = v24;
    v37 = v19;
    v38 = v17;
    v39 = v16;
    v40 = v20;
    v25 = _Block_copy(&v31);
    if ([v23 ckShouldSendImmediately])
    {
      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v44 = v23;
          _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "Not allowing deferral url handle block for url: %@", buf, 0xCu);
        }
      }

      v25[2](v25);
    }

    else
    {
      v27 = [v24 conversationListController];
      v28 = v24;
      if ([v27 isAppearing] && objc_msgSend(v28, "isCollapsed"))
      {
        if (IMOSLoggingEnabled())
        {
          v29 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "Detected conversation list is still animating. Waiting for the conversation list to finish showing before processing URL", buf, 2u);
          }
        }

        [v28 setDeferredConversationListDidShowBlock:v25];
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v30 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v30, OS_LOG_TYPE_INFO, "setting deferred handle URL block.", buf, 2u);
          }
        }

        [v28 setDeferredHandleURLBlock:v25];
      }
    }

    v22 = v35;
  }
}

uint64_t __123__CKUserActivityHandler_openURL_animate_sourceApplication_originatingProcess_navigationProvider_chatController_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) scheme];
  v3 = [v2 lowercaseString];
  v4 = [&unk_1F04E7080 containsObject:v3];

  if (v4)
  {
    if (([objc_opt_class() isPreferencesURL:*(a1 + 32)] & 1) == 0)
    {
      [objc_opt_class() openSMSURL:*(a1 + 32) animate:*(a1 + 88) navigationProvider:*(a1 + 40) chatController:*(a1 + 48) originatingProcess:*(a1 + 56)];
    }

    goto LABEL_8;
  }

  v5 = [*(a1 + 32) scheme];
  v6 = [v5 lowercaseString];
  if ([&unk_1F04E7098 containsObject:v6])
  {

LABEL_7:
    [*(a1 + 40) showStoreForURL:*(a1 + 32) fromSourceApplication:*(a1 + 64)];
    goto LABEL_8;
  }

  v7 = [*(a1 + 80) isiMessageAppStoreURL:*(a1 + 32)];

  if (v7)
  {
    goto LABEL_7;
  }

  v10 = [*(a1 + 32) scheme];
  v11 = [v10 lowercaseString];
  v12 = [v11 isEqualToString:@"sms-surf"];

  if (v12)
  {
    [objc_opt_class() openSURFURL:*(a1 + 32) navigationProvider:*(a1 + 40)];
  }

LABEL_8:
  result = *(a1 + 72);
  if (result)
  {
    v9 = *(result + 16);

    return v9();
  }

  return result;
}

+ (BOOL)isiMessageAppStoreURL:(id)a3
{
  v3 = [MEMORY[0x1E696AF20] componentsWithURL:a3 resolvingAgainstBaseURL:0];
  v4 = [v3 queryItems];
  v5 = [v4 __imArrayByFilteringWithBlock:&__block_literal_global_432_1];
  v6 = [v5 count] == 1;

  return v6;
}

uint64_t __47__CKUserActivityHandler_isiMessageAppStoreURL___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 name];
  if ([v3 isEqualToString:@"app"])
  {
    v4 = [v2 value];
    v5 = [v4 isEqualToString:@"messages"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)openSMSURL:(id)a3 animate:(BOOL)a4 navigationProvider:(id)a5 chatController:(id)a6 originatingProcess:(id)a7
{
  v65 = a4;
  v82 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v67 = a6;
  v69 = a7;
  v75 = 0;
  v13 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v73 = 0;
  v74 = 0;
  v71 = 0;
  v72 = 0;
  v14 = [v13 chatForURL:v11 outMessageText:&v74 outRecipientIDs:&v73 outService:0 outMessageGUID:&v72 presentOverlay:&v75 outSIMID:&v71];
  v15 = v74;
  v16 = v73;
  v17 = v72;
  v68 = v71;

  if (!v14 && IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v77 = v11;
      _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Did not find chat in ChatRegistry using URL %@", buf, 0xCu);
    }
  }

  if ([a1 hasBusinessRecipientWithRecipientIDs:v16])
  {
    if ([MEMORY[0x1E69A8020] deviceIsLockedDown])
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v77 = v11;
          _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Cannot open new chat in lockdown mode for received biz chat URL: (%@)", buf, 0xCu);
        }
      }

      [v12 showLockdownAlertForBusinessChat];
      goto LABEL_98;
    }

    if (([MEMORY[0x1E69A8020] supportsBusinessChat] & 1) == 0)
    {
      [v12 showBusinessChatNotSupportedAlert];
      goto LABEL_98;
    }
  }

  if (v17)
  {
    [objc_opt_class() loadConversationWithMessageGUID:v17 withInlineReplyOverlay:v75 navigationProvider:v12];
    goto LABEL_98;
  }

  if (!v14 || ([v14 allowedToShowConversation] & 1) != 0)
  {
    if ([v11 ckAllowRetargeting])
    {
      v20 = [MEMORY[0x1E69A5AF8] sharedRegistry];
      v70 = 0;
      v21 = [v20 existingChatWithAddresses:v16 allowAlternativeService:1 bestHandles:&v70];
      v22 = v70;

      if (v21)
      {
        v23 = v21;

        v14 = v23;
      }

      v24 = [v22 count];
      if (v24 == [v16 count])
      {
        v25 = [v22 __imArrayByApplyingBlock:&__block_literal_global_439_2];

        v16 = v25;
      }
    }

    v60 = v14 == 0;
    if (v14)
    {
      v26 = +[CKConversationList sharedConversationList];
      v27 = [v26 conversationForExistingChat:v14];

      if (!v27)
      {
        goto LABEL_41;
      }

LABEL_34:
      v64 = v27;
      if ([v27 isPlaceholder] && IMOSLoggingEnabled())
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v77 = v27;
          _os_log_impl(&dword_19020E000, v30, OS_LOG_TYPE_INFO, "Conversation appears to be a placeholder to the client, may not have messages even after history query or messages may just be pending history query: %@", buf, 0xCu);
        }
      }

      v31 = 0;
      v60 = 0;
      goto LABEL_46;
    }

    if ([v11 ckIsLaunchAppURL])
    {
      v29 = +[CKConversationList sharedConversationList];
      v27 = [v29 topMostConversation];

      if (v27)
      {
        goto LABEL_34;
      }

      v16 = 0;
    }

LABEL_41:
    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v77 = v14;
        _os_log_impl(&dword_19020E000, v32, OS_LOG_TYPE_INFO, "Did not find conversation for chat %@", buf, 0xCu);
      }
    }

    v64 = 0;
    v31 = 1;
LABEL_46:
    if ([a1 hasBusinessRecipientWithRecipientIDs:v16])
    {
      v33 = [MEMORY[0x1E695DF90] dictionary];
      v34 = [v11 absoluteString];
      v35 = ExtractURLQueries();

      v63 = [a1 validIntentDictionaryWithURLParameters:v33];
    }

    else
    {
      v63 = 0;
    }

    if ([v15 length] || v63)
    {
      if ([v15 length])
      {
        v37 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v15];
      }

      else
      {
        v37 = 0;
      }

      v36 = [[CKComposition alloc] initWithText:v37 subject:0 shelfPluginPayload:0 bizIntent:v63];
    }

    else
    {
      v36 = 0;
    }

    v62 = [v11 ckLaunchURLBalloonPluginBundleID];
    if ([v11 ckAllowRetargeting] && objc_msgSend(v62, "isEqualToString:", *MEMORY[0x1E69A6930]))
    {
      v61 = [[CKComposition alloc] initWithText:0 subject:0 shelfPluginPayload:0 bizIntent:0];

      if (IMOSLoggingEnabled())
      {
        v38 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v38, OS_LOG_TYPE_INFO, "Clearing composition", buf, 2u);
        }
      }
    }

    else
    {
      v61 = v36;
    }

    if ((v31 | [v64 isPlaceholder]) & 1) != 0 || (objc_msgSend(v11, "ckShouldInitiateCollaborationWithSend"))
    {
      if ([v11 ckShouldShowComposeUI] && (objc_msgSend(v69, "bundleIdentifier"), v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "isEqualToString:", @"com.apple.webapp"), v39, (v40 & 1) == 0))
      {
        v46 = [v11 ckLaunchURLBalloonPluginBundleID];
        v47 = [v11 ckLaunchURLBalloonPluginPayload];
        if (IMOSLoggingEnabled())
        {
          v48 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v77 = v16;
            v78 = 2112;
            v79 = v61;
            v80 = 2112;
            v81 = v64;
            _os_log_impl(&dword_19020E000, v48, OS_LOG_TYPE_INFO, "showNewMessageCompositionPanelWithRecipients: (%@) with composition (%@), conversation: (%@)", buf, 0x20u);
          }
        }

        [v12 showNewMessageCompositionPanelWithRecipients:v16 composition:v61 suggestedReplies:0 animated:0 bizIntent:v63 launchPluginWithBundleID:v46 pluginLaunchPayload:v47 simID:v68 sendMessageHandler:0];
      }

      else if ([v11 ckShouldInitiateCollaborationWithSend])
      {
        LOBYTE(v58) = v65;
        [a1 _sendCollaborationInitationForURL:v11 originatingProcess:v69 chat:v14 conversation:v64 recipientIDs:v16 navigationProvider:v12 animate:v58];
      }

      v45 = 0;
    }

    else
    {
      if (v63)
      {
        v41 = [v64 chat];
        [v41 setBizIntent:v63];
      }

      if (IMOSLoggingEnabled())
      {
        v42 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v77 = v64;
          _os_log_impl(&dword_19020E000, v42, OS_LOG_TYPE_INFO, "Showing existing conversation %@", buf, 0xCu);
        }
      }

      [v12 showConversation:v64 animate:v65];
      v66 = [v12 chatController];
      if (([v62 isEqualToString:*MEMORY[0x1E69A6A38]] & 1) != 0 || objc_msgSend(v62, "isEqualToString:", *MEMORY[0x1E69A6930]))
      {
        v43 = [v11 ckLaunchURLBalloonPluginPayload];
        v44 = [v66 inputController];
        [v44 presentPluginWithBundleID:v62 appLaunchPayload:v43];

        v45 = 1;
      }

      else
      {
        v43 = [v66 inputController];
        [v43 dismissAppCardIfNecessaryAnimated:0 completion:0];
        v45 = 0;
      }

      v59 = [MEMORY[0x1E696AF20] componentsWithURL:v11 resolvingAgainstBaseURL:0];
      if ([v59 ck_isSourceNotification])
      {
        v49 = [v66 collectionView];
        [v49 setTranscriptScrollIntent:0];
      }

      [objc_opt_class() _setMessageFilterModeBy:v64 navigationProvider:v12];
      v50 = [v12 conversationListController];
      [v50 updateConversationList];

      v51 = [v12 conversationListController];
      v52 = [v51 conversationList];
      [v52 updateConversationsWasKnownSender];

      if (v61 && ([v12 isComposingMessage] & 1) == 0)
      {
        v53 = [v12 chatController];
        [CKUserActivityHandler updateChatController:v53 composition:v61];
      }
    }

    if ([v11 ckNeedLaunchStewie])
    {
      v54 = [MEMORY[0x1E69DC668] sharedApplication];
      v55 = [v54 applicationState] == 0;

      v56 = [MEMORY[0x1E69A5B00] sharedInstance];
      [v56 launchStewieForMessagingWithAppForegrounded:v55];
    }

    if (!v60)
    {
      v57 = [v12 chatController];
      if (((v45 | [v57 isFunCamPresented]) & 1) == 0)
      {
        [v57 showKeyboardForReply];
        [v57 setupStateForLaunchURL:v11];
      }
    }

    goto LABEL_98;
  }

  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v77 = v11;
      _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, " received URL: (%@) to a chat which contained non-allowlisted handles during downtime, so aborting open url request.", buf, 0xCu);
    }
  }

LABEL_98:
}

+ (void)_sendCollaborationInitationForURL:(id)a3 originatingProcess:(id)a4 chat:(id)a5 conversation:(id)a6 recipientIDs:(id)a7 navigationProvider:(id)a8 animate:(BOOL)a9
{
  v63 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v45 = a6;
  v44 = a7;
  v17 = a8;
  if (([(__CFString *)v15 hasEntitlement:@"com.apple.private.messages.collaboration-initiate-send"]& 1) != 0)
  {
    v42 = v17;
    v43 = [v14 ckCollaborationSceneIdentifier];
    if (v43)
    {
      v18 = [MEMORY[0x1E69D8A58] sharedInstance];
      v19 = [v18 conversationManager];
      v20 = [v19 activeConversations];

      if (!v16)
      {
        v21 = [MEMORY[0x1E69A5A80] sharedInstance];
        v22 = [v21 activeIMessageAccount];

        v23 = [MEMORY[0x1E695DF70] array];
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v24 = v44;
        v25 = [v24 countByEnumeratingWithState:&v52 objects:v56 count:16];
        if (v25)
        {
          v26 = *v53;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v53 != v26)
              {
                objc_enumerationMutation(v24);
              }

              v28 = [objc_alloc(MEMORY[0x1E69A5B90]) initWithAccount:v22 ID:*(*(&v52 + 1) + 8 * i) alreadyCanonical:0];
              [v23 addObject:v28];
            }

            v25 = [v24 countByEnumeratingWithState:&v52 objects:v56 count:16];
          }

          while (v25);
        }

        v29 = [MEMORY[0x1E69A5AF8] sharedRegistry];
        v16 = [v29 chatWithHandles:v23];

        if (v16)
        {
          v30 = +[CKConversationList sharedConversationList];
          v31 = [v30 conversationForExistingChat:v16];

          v45 = v31;
        }
      }

      if (v16 && v45)
      {
        [v42 showConversation:v45 animate:a9];
        v32 = [v42 chatController];
        v33 = [MEMORY[0x1E69DC668] sharedApplication];
        v34 = [v33 beginBackgroundTaskWithExpirationHandler:0];

        v35 = objc_alloc_init(MEMORY[0x1E697B6C8]);
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __136__CKUserActivityHandler__sendCollaborationInitationForURL_originatingProcess_chat_conversation_recipientIDs_navigationProvider_animate___block_invoke;
        v46[3] = &unk_1E72F6838;
        v47 = v14;
        v51 = v34;
        v48 = v43;
        v16 = v16;
        v49 = v16;
        v50 = v32;
        v36 = v32;
        [v35 retrieveShareableContentWithCompletion:v46];
      }

      else
      {
        v39 = IMLogHandleForCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = @"NO";
          if (v16)
          {
            v41 = @"NO";
          }

          else
          {
            v41 = @"YES";
          }

          *buf = 138412802;
          v58 = v14;
          v60 = v41;
          v59 = 2112;
          if (!v45)
          {
            v40 = @"YES";
          }

          v61 = 2112;
          v62 = v40;
          _os_log_error_impl(&dword_19020E000, v39, OS_LOG_TYPE_ERROR, "received URL: (%@) to send composition for shareable content but could not construct chat %@ or conversation %@", buf, 0x20u);
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v58 = v14;
        _os_log_impl(&dword_19020E000, v38, OS_LOG_TYPE_INFO, "received URL: (%@) to send composition for shareable content but it did not contain a collaboration scene identifier", buf, 0xCu);
      }
    }

    v17 = v42;
  }

  else if (IMOSLoggingEnabled())
  {
    v37 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v58 = v14;
      v59 = 2112;
      v60 = @"com.apple.private.messages.collaboration-initiate-send";
      v61 = 2112;
      v62 = v15;
      _os_log_impl(&dword_19020E000, v37, OS_LOG_TYPE_INFO, "received URL: (%@) to send composition for shareable content but originating process was not entitled to do so (missing %@): %@", buf, 0x20u);
    }
  }
}

void __136__CKUserActivityHandler__sendCollaborationInitationForURL_originatingProcess_chat_conversation_recipientIDs_navigationProvider_animate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 || ![v5 count])
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        *buf = 138412546;
        v36 = v8;
        v37 = 2112;
        v38 = v6;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "received URL: (%@) to send composition for shareable content but did not find any shareable content to send, or an error was hit: %@", buf, 0x16u);
      }
    }

    v9 = [MEMORY[0x1E69DC668] sharedApplication];
    [v9 endBackgroundTask:*(a1 + 64)];
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      v12 = *v31;
LABEL_11:
      v13 = 0;
      while (1)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v30 + 1) + 8 * v13);
        v15 = [v14 sourceSceneIdentifier];
        if ([v15 isEqualToString:*(a1 + 40)])
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
          if (v11)
          {
            goto LABEL_11;
          }

          goto LABEL_17;
        }
      }

      v16 = v14;

      if (!v16)
      {
        goto LABEL_20;
      }

      v17 = [*(a1 + 32) ckCollaborationShareOptions];
      v18 = MEMORY[0x1E695DEC8];
      v19 = [v16 itemProvider];
      v20 = [v18 arrayWithObject:v19];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __136__CKUserActivityHandler__sendCollaborationInitationForURL_originatingProcess_chat_conversation_recipientIDs_navigationProvider_animate___block_invoke_449;
      v24[3] = &unk_1E72F6810;
      v25 = *(a1 + 32);
      v26 = v16;
      v29 = *(a1 + 64);
      v27 = *(a1 + 48);
      v28 = *(a1 + 56);
      v9 = v16;
      [CKComposition compositionFromItemProviders:v20 shareOptions:v17 completionHandler:v24];
    }

    else
    {
LABEL_17:

LABEL_20:
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = *(a1 + 32);
          v23 = *(a1 + 40);
          *buf = 138412546;
          v36 = v22;
          v37 = 2112;
          v38 = v23;
          _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "received URL: (%@) to send composition for shareable content but could not extract shareable content from app %@", buf, 0x16u);
        }
      }

      v9 = [MEMORY[0x1E69DC668] sharedApplication];
      [v9 endBackgroundTask:*(a1 + 64)];
    }
  }
}

void __136__CKUserActivityHandler__sendCollaborationInitationForURL_originatingProcess_chat_conversation_recipientIDs_navigationProvider_animate___block_invoke_449(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6 && ([v5 shelfPluginPayload], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 32);
        v17 = 138412546;
        v18 = v10;
        v19 = 2112;
        v20 = v5;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "received URL: (%@) and created composition with collaboration: %@, sending...", &v17, 0x16u);
      }
    }

    v11 = [*(a1 + 32) ckFaceTimeConversationUUID];
    if (v11)
    {
      v12 = [MEMORY[0x1E69A5AF8] sharedRegistry];
      v13 = [v12 existingConversationForFaceTimeConversationUUID:v11];
    }

    else
    {
      v13 = 0;
    }

    [v5 setSourceApplicationID:@"com.apple.FaceTime"];
    [CKFaceTimeCollaborationUtilities startCollaborationWithComposition:v5 faceTimeConversation:v13 imChat:*(a1 + 48) chatController:*(a1 + 56) backgroundTaskID:*(a1 + 64)];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 32);
        v16 = *(a1 + 40);
        v17 = 138412802;
        v18 = v15;
        v19 = 2112;
        v20 = v16;
        v21 = 2112;
        v22 = v7;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "received URL: (%@) to send composition for shareable content but could not create composition from shareable content %@ with error: %@", &v17, 0x20u);
      }
    }

    v11 = [MEMORY[0x1E69DC668] sharedApplication];
    [v11 endBackgroundTask:*(a1 + 64)];
  }
}

+ (void)openItemProviders:(id)a3 navigationProvider:(id)a4 chatController:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v6;
  v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __77__CKUserActivityHandler_openItemProviders_navigationProvider_chatController___block_invoke;
        v14[3] = &unk_1E72ED6D8;
        v15 = v7;
        [CKComposition requestCompositionFromItemProviders:v12 completion:v14];

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

void __77__CKUserActivityHandler_openItemProviders_navigationProvider_chatController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__CKUserActivityHandler_openItemProviders_navigationProvider_chatController___block_invoke_2;
  v5[3] = &unk_1E72EB8D0;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

+ (void)_showPeerPaymentUIForPerson:(id)a3 amount:(id)a4 navigationProvider:(id)a5 chatController:(id)a6
{
  v41[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 handle];
  if ([v13 length])
  {
    v41[0] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
    v15 = CKMakeHandlesFromRecipients(v14);
    v16 = [v15 firstObject];

    if (v16)
    {
      v17 = +[CKConversationList sharedConversationList];
      v18 = [MEMORY[0x1E69A5AF8] sharedRegistry];
      v19 = [v18 existingChatWithHandle:v16];

      if (v19)
      {
        v27 = [v17 conversationForExistingChat:v19];
        [v11 showConversation:v27 animate:1];
      }

      else
      {
        v40 = v16;
        v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
        v27 = [v17 conversationForHandles:v20 displayName:0 joinedChatsOnly:0 create:1];

        [v11 showConversation:v27 animate:1];
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __94__CKUserActivityHandler__showPeerPaymentUIForPerson_amount_navigationProvider_chatController___block_invoke;
      aBlock[3] = &unk_1E72EB8D0;
      v38 = v12;
      v39 = v10;
      v26 = _Block_copy(aBlock);
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "Waiting for extensions to load before showing SURF extension for intent", buf, 2u);
        }
      }

      if (IMIsRunningInUnitTesting())
      {
        v26[2]();
      }

      else
      {
        *buf = 0;
        v32 = buf;
        v33 = 0x3032000000;
        v34 = __Block_byref_object_copy__59;
        v35 = __Block_byref_object_dispose__59;
        v36 = 0;
        v25 = [MEMORY[0x1E696AD88] defaultCenter];
        v22 = [MEMORY[0x1E696ADC8] mainQueue];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __94__CKUserActivityHandler__showPeerPaymentUIForPerson_amount_navigationProvider_chatController___block_invoke_462;
        v28[3] = &unk_1E72F6300;
        v30 = buf;
        v29 = v26;
        v23 = [v25 addObserverForName:@"CKBrowserSelectionControllerDataSourceChangedNotification" object:0 queue:v22 usingBlock:v28];
        v24 = *(v32 + 5);
        *(v32 + 5) = v23;

        _Block_object_dispose(buf, 8);
      }
    }
  }
}

void __94__CKUserActivityHandler__showPeerPaymentUIForPerson_amount_navigationProvider_chatController___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [v2 inputController];
  v4 = *(a1 + 40);
  if (v4)
  {
    v14 = @"Currency";
    v5 = [v4 currencyCode];
    v11[1] = @"CurrencyValue";
    v12[0] = v5;
    v6 = [*(a1 + 40) amount];
    v7 = [v6 stringValue];
    v12[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    v13 = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
    v15[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  else
  {
    v10 = 0;
  }

  [v3 presentPluginWithBundleID:*MEMORY[0x1E69A6A38] appLaunchPayload:v10];
}

void __94__CKUserActivityHandler__showPeerPaymentUIForPerson_amount_navigationProvider_chatController___block_invoke_462(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Notified of plugin manager plugin changes", buf, 2u);
    }
  }

  v5 = +[CKBalloonPluginManager sharedInstance];
  v6 = [v5 allPlugins];

  v7 = +[CKBalloonPluginManager sharedInstance];
  v8 = [v7 hasLoadedExtensions];

  if (v8)
  {
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 removeObserver:*(*(*(a1 + 40) + 8) + 40)];

    (*(*(a1 + 32) + 16))();
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Extensions loaded, showing SURF for intent", v11, 2u);
      }
    }
  }
}

+ (void)loadConversationWithMessageGUID:(id)a3 withInlineReplyOverlay:(BOOL)a4 navigationProvider:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [objc_alloc(MEMORY[0x1E69A8148]) initWithEncodedMessagePartGUID:v7];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 messageGUID];
  }

  else
  {
    v11 = v7;
  }

  v12 = v11;
  v13 = [MEMORY[0x1E69A5AE8] sharedInstance];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __99__CKUserActivityHandler_loadConversationWithMessageGUID_withInlineReplyOverlay_navigationProvider___block_invoke;
  v16[3] = &unk_1E72EC268;
  v17 = v8;
  v18 = v7;
  v19 = a4;
  v14 = v7;
  v15 = v8;
  [v13 loadMessageWithGUID:v12 completionBlock:v16];
}

void __99__CKUserActivityHandler_loadConversationWithMessageGUID_withInlineReplyOverlay_navigationProvider___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 lastObject];
  if (v4)
  {
    v5 = *(a1 + 32);
    v7 = v4;
    v6 = [v4 guid];
    [v5 showConversationAndMessageForChatGUID:v6 messageGUID:*(a1 + 40) withInlineReplyOverlay:*(a1 + 48) animate:1];

    v4 = v7;
  }
}

+ (void)openSURFURL:(id)a3 navigationProvider:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v22 = a4;
  v21 = v5;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v5 resolvingAgainstBaseURL:0];
  v6 = [v20 queryItems];
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (!v7)
  {

    v8 = 0;
    goto LABEL_17;
  }

  v8 = 0;
  v9 = *v24;
  v10 = 0.0;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v24 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v23 + 1) + 8 * i);
      v13 = [v12 name];
      v14 = [v13 isEqualToString:@"amount"];

      if (v14)
      {
        v15 = [v12 value];
        [v15 doubleValue];
        v10 = v16;
      }

      else
      {
        v17 = [v12 name];
        v18 = [v17 isEqualToString:@"currency"];

        if (!v18)
        {
          continue;
        }

        [v12 value];
        v8 = v15 = v8;
      }
    }

    v7 = [v6 countByEnumeratingWithState:&v23 objects:v29 count:16];
  }

  while (v7);

  if (v8 && v10 > 0.0)
  {
    [v22 showSurfAppForCurrentConversationWithAmount:v8 currency:v10];
    goto LABEL_21;
  }

LABEL_17:
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = v21;
      _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Recieved Surf URL but queryItems was invalid for URL: %@", buf, 0xCu);
    }
  }

LABEL_21:
}

+ (void)_setMessageFilterModeBy:(id)a3 navigationProvider:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 conversationListController];
  v8 = [v7 filterMode];

  v9 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v10 = [v9 isModernFilteringEnabled];

  if (v10)
  {
    v11 = [v5 targetFilterModeForOpeningConversationURL];
  }

  else if ([objc_opt_class() _messageUnknownFilteringEnabled])
  {
    v12 = +[CKConversationList sharedConversationList];
    v13 = [v12 primaryFilterModeForConversation:v5];

    if (v8 == 8)
    {
      if ([v5 hasUnreadMessages])
      {
        v11 = 8;
      }

      else
      {
        v11 = 1;
      }
    }

    else if (v8 == v13)
    {
      v11 = v13;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  if (v8 != v11)
  {
    v14 = [v6 conversationListController];
    [v14 setFilterMode:v11];

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = IMConversationListFilterModeStringValue(v11);
        v17 = 138412290;
        v18 = v16;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "[Filter Mode] updating conversation list filter mode to: %@", &v17, 0xCu);
      }
    }
  }
}

+ (BOOL)hasBusinessRecipientWithRecipientIDs:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if (MEMORY[0x193AF5D00](*(*(&v8 + 1) + 8 * i)))
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

+ (id)validIntentDictionaryWithURLParameters:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v11 = [&unk_1F04E70B0 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(&unk_1F04E70B0);
              }

              if ([v10 isEqualToString:*(*(&v20 + 1) + 8 * j)])
              {
                v15 = [v5 objectForKeyedSubscript:v10];
                [v4 setObject:v15 forKey:v10];

                goto LABEL_16;
              }
            }

            v12 = [&unk_1F04E70B0 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
        ;
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v16 = [v4 allKeys];
  v17 = [v16 count];

  if (v17)
  {
    v18 = [v4 copy];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void __117__CKUserActivityHandler_sendBackgroundCollaborationForUserActivity_withNavigationProvider_chatController_completion___block_invoke_332_cold_1(uint64_t *a1, char a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = @"NO";
  v5 = 138412802;
  v6 = v3;
  v7 = 2112;
  if (a2)
  {
    v4 = @"YES";
  }

  v8 = v4;
  v9 = 2112;
  v10 = @"YES";
  _os_log_error_impl(&dword_19020E000, log, OS_LOG_TYPE_ERROR, "received user activity: (%@) to send composition in the background but could not construct chat %@ or conversation %@", &v5, 0x20u);
}

@end