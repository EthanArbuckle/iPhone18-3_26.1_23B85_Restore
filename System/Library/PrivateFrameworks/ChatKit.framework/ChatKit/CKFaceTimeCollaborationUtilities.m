@interface CKFaceTimeCollaborationUtilities
+ (BOOL)shouldAddCollaboration:(id)a3 toFaceTimeConversation:(id)a4 forIMChat:(id)a5;
+ (void)startCollaborationWithComposition:(id)a3 faceTimeConversation:(id)a4 imChat:(id)a5 chatController:(id)a6 backgroundTaskID:(unint64_t)a7;
@end

@implementation CKFaceTimeCollaborationUtilities

+ (void)startCollaborationWithComposition:(id)a3 faceTimeConversation:(id)a4 imChat:(id)a5 chatController:(id)a6 backgroundTaskID:(unint64_t)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v11 shelfPluginPayload];
  v16 = [MEMORY[0x1E696AEC0] stringGUID];
  [v15 setMessageGUID:v16];

  [v15 setPluginBundleID:*MEMORY[0x1E69A6A18]];
  v17 = objc_alloc_init(MEMORY[0x1E697B6B8]);
  v18 = [v15 url];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __130__CKFaceTimeCollaborationUtilities_startCollaborationWithComposition_faceTimeConversation_imChat_chatController_backgroundTaskID___block_invoke;
  aBlock[3] = &unk_1E72F8678;
  v29 = v12;
  v30 = v13;
  v31 = v17;
  v32 = v11;
  v33 = v14;
  v34 = a7;
  v19 = v14;
  v20 = v11;
  v21 = v17;
  v22 = v13;
  v23 = v12;
  v24 = _Block_copy(aBlock);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __130__CKFaceTimeCollaborationUtilities_startCollaborationWithComposition_faceTimeConversation_imChat_chatController_backgroundTaskID___block_invoke_2;
  v26[3] = &unk_1E72F86A0;
  v27 = v24;
  v25 = v24;
  [v21 getCollaborationHighlightForURL:v18 completionHandler:v26];
}

void __130__CKFaceTimeCollaborationUtilities_startCollaborationWithComposition_faceTimeConversation_imChat_chatController_backgroundTaskID___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [CKFaceTimeCollaborationUtilities shouldAddCollaboration:v3 toFaceTimeConversation:*(a1 + 32) forIMChat:*(a1 + 40)];
  v5 = IMLogHandleForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      v33 = v7;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "adding collaboration identifier to FaceTime conversation: %@", buf, 0xCu);
    }

    v8 = [*(a1 + 48) fetchAttributionsForHighlight:v3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;

      v3 = v9;
    }

    v10 = [MEMORY[0x1E69D8A58] sharedInstance];
    v11 = [v10 conversationManager];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [MEMORY[0x1E69D8A58] sharedInstance];
      v14 = [v13 conversationManager];
      [v14 addCollaboration:v3 forConversation:*(a1 + 32)];
    }

    v15 = [MEMORY[0x1E69DC668] sharedApplication];
    [v15 endBackgroundTask:*(a1 + 72)];
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "sending composition", buf, 2u);
    }

    v8 = [*(a1 + 56) shelfPluginPayload];
    v15 = [MEMORY[0x1E69A5AD0] sharedInstance];
    v16 = [v8 pluginBundleID];
    v17 = [v15 balloonPluginForBundleID:v16];

    v18 = [v17 dataSourceClass];
    if (!v18)
    {
      v18 = objc_opt_class();
    }

    v19 = [[v18 alloc] initWithPluginPayload:v8];
    [v8 setDatasource:v19];
    [v19 setPayloadInShelf:1];
    [v19 payloadWillEnterShelf];
    v20 = [MEMORY[0x1E69A5AD0] sharedInstance];
    v21 = [v8 associatedMessageGUID];
    v22 = [v8 pluginBundleID];
    v23 = [v20 existingDataSourceForMessageGUID:v21 bundleID:v22];

    [v23 beginShowingLastConsumedBreadcrumbForOutgoingPayload:v8];
    v25 = *(a1 + 56);
    v24 = *(a1 + 64);
    v26 = [v8 payloadCollaborationType];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __130__CKFaceTimeCollaborationUtilities_startCollaborationWithComposition_faceTimeConversation_imChat_chatController_backgroundTaskID___block_invoke_81;
    v29[3] = &unk_1E72EFB08;
    v27 = *(a1 + 72);
    v30 = v19;
    v31 = v27;
    v28 = v19;
    [v24 sendCompositionForCollaboration:v25 collaborationType:v26 completion:v29];
  }
}

void __130__CKFaceTimeCollaborationUtilities_startCollaborationWithComposition_faceTimeConversation_imChat_chatController_backgroundTaskID___block_invoke_81(uint64_t a1)
{
  v2 = [*(a1 + 32) pluginPayload];
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  [v3 endBackgroundTask:*(a1 + 40)];
}

void __130__CKFaceTimeCollaborationUtilities_startCollaborationWithComposition_faceTimeConversation_imChat_chatController_backgroundTaskID___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = IMLogHandleForCategory();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __130__CKFaceTimeCollaborationUtilities_startCollaborationWithComposition_faceTimeConversation_imChat_chatController_backgroundTaskID___block_invoke_2_cold_1(v6, v8);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "getCollaborationHighlightForURL returned collaboration: %@", &v9, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

+ (BOOL)shouldAddCollaboration:(id)a3 toFaceTimeConversation:(id)a4 forIMChat:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 state];
  if (v7 && v10 == 3)
  {
    v26 = v8;
    v27 = v7;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = [v7 attributions];
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v28 + 1) + 8 * i) uniqueIdentifier];
          if (v16)
          {
            v17 = v16;
            v18 = IMDChatRecordCopyChatForMessageGUID();
            v19 = [v18 groupID];
            v20 = [v9 groupID];
            v21 = [v19 isEqualToString:v20];

            if (v21)
            {
              v24 = IMLogHandleForCategory();
              v8 = v26;
              v7 = v27;
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v33 = v27;
                v34 = 2112;
                v35 = v26;
                _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "Will not send message, matched collaboration highlight: %@ to TUConversation: %@", buf, 0x16u);
              }

              v23 = 1;
              goto LABEL_20;
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v8 = v26;
    v7 = v27;
  }

  v11 = IMLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v22 = [v7 collaborationIdentifier];
    *buf = 138412546;
    v33 = v22;
    v34 = 2112;
    v35 = v9;
    _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Will send message- Could not match collaboration: %@ to provided IMChat: %@", buf, 0x16u);
  }

  v23 = 0;
LABEL_20:

  return v23;
}

void __130__CKFaceTimeCollaborationUtilities_startCollaborationWithComposition_faceTimeConversation_imChat_chatController_backgroundTaskID___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "getCollaborationHighlightForURL failed with error: %@", &v2, 0xCu);
}

@end