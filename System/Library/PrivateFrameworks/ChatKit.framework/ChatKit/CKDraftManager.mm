@interface CKDraftManager
+ (id)sharedInstance;
- (id)_draftForConversationWithChatIdentifier:(id)a3 fetchPolicy:(unsigned __int8)a4;
- (id)_pendingChatIdentifier;
- (id)_pendingChatIdentifierURL;
- (id)_pendingRecipients;
- (id)_pendingRecipientsURL;
- (id)draftForConversation:(id)a3;
- (id)draftForConversation:(id)a3 fetchPolicy:(unsigned __int8)a4;
- (id)draftForPendingConversationWithRecipients:(id *)a3 chatIdentifier:(id *)a4;
- (void)_clearDraftForConversation:(id)a3;
- (void)_setDraft:(id)a3 forKey:(id)a4;
- (void)_setPendingChatIdentifier:(id)a3;
- (void)_setPendingRecipients:(id)a3;
- (void)clearDraftForComposition:(id)a3;
- (void)clearDraftForPendingConversation;
- (void)dealloc;
- (void)preloadAllDraftsInConversations:(id)a3 completion:(id)a4;
- (void)saveCompositionAndFlushCache:(BOOL)a3;
- (void)setDraft:(id)a3 forConversation:(id)a4;
- (void)setDraftForPendingConversation:(id)a3 withRecipients:(id)a4 chatIdentifier:(id)a5;
@end

@implementation CKDraftManager

+ (id)sharedInstance
{
  if (sDraftManager)
  {
    goto LABEL_2;
  }

  v4 = objc_alloc_init(a1);
  v5 = sDraftManager;
  sDraftManager = v4;

  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([v6 BOOLForKey:@"PendingCleared"])
  {

    goto LABEL_13;
  }

  v7 = CKIsRunningInMessages();

  if (!v7)
  {
LABEL_13:
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "****** Not Clearing pending drafts *******", v11, 2u);
      }
    }

    goto LABEL_2;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "****** Clearing pending drafts *******", buf, 2u);
    }
  }

  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v9 setBool:1 forKey:@"PendingCleared"];

  [sDraftManager clearDraftForPendingConversation];
  [sDraftManager saveCompositionAndFlushCache:0];
LABEL_2:
  v2 = sDraftManager;

  return v2;
}

- (void)dealloc
{
  [(CKDraftManager *)self saveCompositionAndFlushCache:1];
  v3.receiver = self;
  v3.super_class = CKDraftManager;
  [(CKDraftManager *)&v3 dealloc];
}

- (void)_clearDraftForConversation:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(15);
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v10 = "[CKDraftManager _clearDraftForConversation:]";
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_DEBUG, "%s conversation:[%@]", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v7 = "[CKDraftManager _clearDraftForConversation:]";
    v8 = v4;
    _CKLog();
  }

  v6 = [v4 uniqueIdentifier];
  [(CKDraftManager *)self _setDraft:0 forKey:v6];
}

- (id)draftForConversation:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(15);
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_DEBUG, "draftForConversation: %@", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v9 = v4;
    _CKLog();
  }

  v6 = [v4 uniqueIdentifier];
  v7 = [(CKDraftManager *)self draftForConversationWithChatIdentifier:v6];

  return v7;
}

- (id)draftForConversation:(id)a3 fetchPolicy:(unsigned __int8)a4
{
  v4 = a4;
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(15);
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_DEBUG, "draftForConversation: %@", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v11 = v6;
    _CKLog();
  }

  v8 = [v6 uniqueIdentifier];
  v9 = [(CKDraftManager *)self _draftForConversationWithChatIdentifier:v8 fetchPolicy:v4];

  return v9;
}

- (void)setDraft:(id)a3 forConversation:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(15);
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v24 = v6;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_DEBUG, "setDraft: %@ forConversation: %@", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v18 = v6;
    v20 = v7;
    _CKLog();
  }

  v9 = [v7 uniqueIdentifier];
  v10 = v9 == 0;

  if (v10)
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CKDraftManager setDraft:forConversation:];
    }
  }

  else
  {
    v11 = [v6 hasRestorableContent];
    v12 = IMOSLoggingEnabled();
    if (v11)
    {
      if (v12)
      {
        CKLogCStringForType(15);
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v24 = "[CKDraftManager setDraft:forConversation:]";
          v25 = 2112;
          v26 = v6;
          v27 = 2112;
          v28 = v7;
          _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_DEBUG, "%s draft:[%@],conversation:[%@]", buf, 0x20u);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        v21 = v6;
        v22 = v7;
        v19 = "[CKDraftManager setDraft:forConversation:]";
        _CKLog();
      }

      v14 = [v7 uniqueIdentifier];
      [(CKDraftManager *)self _setDraft:v6 forKey:v14];

      if (IMIsRunningInMessagesExtension())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CKDraftManagerSavedDraft", 0, 0, 1u);
      }
    }

    else
    {
      if (v12)
      {
        CKLogCStringForType(15);
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v24 = v7;
          _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Clearing the draft conversation. This is expected if the conversation has NO composition, or the composition lacks content, or the conversation has no unique identifier, or composition was only whitespace, or the composition was expirable (and not an audio message). Conversation: %@", buf, 0xCu);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
      {
        v19 = v7;
        _CKLogExternal();
      }

      [(CKDraftManager *)self _clearDraftForConversation:v7, v19];
    }
  }
}

- (id)draftForPendingConversationWithRecipients:(id *)a3 chatIdentifier:(id *)a4
{
  v13 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(15);
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v12 = "[CKDraftManager draftForPendingConversationWithRecipients:chatIdentifier:]";
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v10 = "[CKDraftManager draftForPendingConversationWithRecipients:chatIdentifier:]";
    _CKLog();
  }

  v8 = [(CKDraftManager *)self draftForConversationWithChatIdentifier:@"Pending", v10];
  if (a3)
  {
    *a3 = [(CKDraftManager *)self _pendingRecipients];
  }

  if (a4)
  {
    *a4 = [(CKDraftManager *)self _pendingChatIdentifier];
  }

  return v8;
}

- (void)setDraftForPendingConversation:(id)a3 withRecipients:(id)a4 chatIdentifier:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 | v9)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = 136315906;
        v13 = "[CKDraftManager setDraftForPendingConversation:withRecipients:chatIdentifier:]";
        v14 = 2112;
        v15 = v8;
        v16 = 2112;
        v17 = v9;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "%s draft:[%@],recipients:[%@], chatID:%@", &v12, 0x2Au);
      }
    }

    [(CKDraftManager *)self _setDraft:v8 forKey:@"Pending"];
    [(CKDraftManager *)self _setPendingRecipients:v9];
    [(CKDraftManager *)self _setPendingChatIdentifier:v10];
  }

  else
  {
    [(CKDraftManager *)self clearDraftForPendingConversation];
  }
}

- (void)clearDraftForPendingConversation
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(15);
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v6 = "[CKDraftManager clearDraftForPendingConversation]";
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v4 = "[CKDraftManager clearDraftForPendingConversation]";
    _CKLog();
  }

  [(CKDraftManager *)self _setDraft:0 forKey:@"Pending", v4];
  [(CKDraftManager *)self _setPendingRecipients:0];
  [(CKDraftManager *)self _setPendingChatIdentifier:0];
}

- (void)clearDraftForComposition:(id)a3
{
  [a3 cleanupCKShareFromComposition];

  [(CKDraftManager *)self clearDraftForPendingConversation];
}

- (void)saveCompositionAndFlushCache:(BOOL)a3
{
  v3 = a3;
  v40 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = self->_dirtyDraftIDs;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v6)
  {
    v7 = *v34;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v33 + 1) + 8 * i);
        v10 = [(CKDraftManager *)self _draftForConversationWithChatIdentifier:v9 fetchPolicy:2];
        [v10 saveCompositionWithChatIdentifier:v9];
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v6);
  }

  [(NSMutableSet *)self->_dirtyDraftIDs removeAllObjects];
  if (v3)
  {
    [(CKDraftManager *)self flushCache];
  }

  v11 = [(CKDraftManager *)self _pendingRecipientsURL];
  if ([(NSArray *)self->_pendingRecipients count])
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        pendingRecipients = self->_pendingRecipients;
        *buf = 138412290;
        v38 = pendingRecipients;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Saving draft with recipients: %@", buf, 0xCu);
      }
    }

    v14 = MEMORY[0x1E696AE40];
    v15 = [(CKDraftManager *)self pendingRecipients];
    v32 = 0;
    v16 = [v14 dataWithPropertyList:v15 format:100 options:0 error:&v32];
    v17 = v32;

    if (v17)
    {
      v18 = IMLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [CKDraftManager saveCompositionAndFlushCache:];
      }
    }

    v31 = 0;
    v19 = [v16 writeToURL:v11 options:1073741825 error:&v31];
    v20 = v31;
    if ((v19 & 1) == 0)
    {
      v21 = IMLogHandleForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [CKDraftManager saveCompositionAndFlushCache:];
      }

      [(NSArray *)self->_pendingRecipients writeToURL:v11 atomically:1];
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AC08] defaultManager];
    [v17 removeItemAtURL:v11 error:0];
  }

  v22 = [(CKDraftManager *)self _pendingChatIdentifierURL];
  if ([(NSString *)self->_pendingChatIdentifier length])
  {
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        pendingChatIdentifier = self->_pendingChatIdentifier;
        *buf = 138412290;
        v38 = pendingChatIdentifier;
        _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "Saving draft with chatID: %@", buf, 0xCu);
      }
    }

    v25 = [(CKDraftManager *)self pendingChatIdentifier];
    v26 = [v25 dataUsingEncoding:4];

    v30 = 0;
    v27 = [v26 writeToURL:v22 options:1073741825 error:&v30];
    v28 = v30;
    if ((v27 & 1) == 0)
    {
      v29 = IMLogHandleForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [CKDraftManager saveCompositionAndFlushCache:];
      }

      [(NSArray *)self->_pendingRecipients writeToURL:v22 atomically:1];
    }
  }

  else
  {
    v26 = [MEMORY[0x1E696AC08] defaultManager];
    [v26 removeItemAtURL:v22 error:0];
  }
}

- (void)preloadAllDraftsInConversations:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__29;
  v22[4] = __Block_byref_object_dispose__29;
  v23 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__CKDraftManager_preloadAllDraftsInConversations_completion___block_invoke;
  aBlock[3] = &unk_1E72F1660;
  aBlock[4] = self;
  aBlock[5] = v22;
  v8 = _Block_copy(aBlock);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (!v6)
    {
      v7[2](v7);
      goto LABEL_7;
    }

    v8[2](v8);
    *(v19 + 24) = 1;
  }

  if (preloadAllDraftsInConversations_completion__onceToken != -1)
  {
    [CKDraftManager preloadAllDraftsInConversations:completion:];
  }

  v9 = preloadAllDraftsInConversations_completion__queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__CKDraftManager_preloadAllDraftsInConversations_completion___block_invoke_3;
  v10[3] = &unk_1E72F1688;
  v15 = &v18;
  v11 = v6;
  v13 = v7;
  v16 = v22;
  v14 = v8;
  v12 = self;
  dispatch_async(v9, v10);

LABEL_7:
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(v22, 8);
}

void __61__CKDraftManager_preloadAllDraftsInConversations_completion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __61__CKDraftManager_preloadAllDraftsInConversations_completion___block_invoke_2()
{
  v0 = dispatch_queue_create("com.apple.MobileSMS.CKDraftManager.preload", 0);
  v1 = preloadAllDraftsInConversations_completion__queue;
  preloadAllDraftsInConversations_completion__queue = v0;
}

void __61__CKDraftManager_preloadAllDraftsInConversations_completion___block_invoke_3(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 64) + 8) + 24))
  {
    goto LABEL_4;
  }

  if (*(a1 + 32))
  {
    dispatch_sync(MEMORY[0x1E69E96A0], *(a1 + 56));
    *(*(*(a1 + 64) + 8) + 24) = 1;
LABEL_4:
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(15);
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = [*(a1 + 32) count];
        *buf = 136315394;
        v31 = "[CKDraftManager preloadAllDraftsInConversations:completion:]_block_invoke_3";
        v32 = 2048;
        v33 = v3;
        _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_DEBUG, "%s %lu conversations", buf, 0x16u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      v19 = "[CKDraftManager preloadAllDraftsInConversations:completion:]_block_invoke";
      v20 = [*(a1 + 32) count];
      _CKLog();
    }

    v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(*(a1 + 32), "count", v19, v20)}];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v6)
    {
      v7 = *v26;
      do
      {
        v8 = 0;
        do
        {
          if (*v26 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [*(*(&v25 + 1) + 8 * v8) uniqueIdentifier];
          v10 = [*(*(*(a1 + 72) + 8) + 40) objectForKeyedSubscript:v9];
          if (!v10 || ([MEMORY[0x1E695DFB0] null], v11 = objc_claimAutoreleasedReturnValue(), v12 = v10 == v11, v11, v12))
          {
            v13 = [CKComposition savedCompositionDataForChatIdentifier:v9];
            [v4 setObject:v13 forKeyedSubscript:v9];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v6);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__CKDraftManager_preloadAllDraftsInConversations_completion___block_invoke_2_233;
    block[3] = &unk_1E72EDA68;
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v22 = v4;
    v23 = v14;
    v24 = v15;
    v16 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    return;
  }

  v17 = *(a1 + 48);
  v18 = MEMORY[0x1E69E96A0];

  dispatch_async(v18, v17);
}

uint64_t __61__CKDraftManager_preloadAllDraftsInConversations_completion___block_invoke_2_233(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(15);
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = [*(a1 + 32) count];
      *buf = 136315394;
      v24 = "[CKDraftManager preloadAllDraftsInConversations:completion:]_block_invoke_2";
      v25 = 2048;
      v26 = v3;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_DEBUG, "%s %lu unloaded conversations found in drafts", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v16 = "[CKDraftManager preloadAllDraftsInConversations:completion:]_block_invoke";
    v17 = [*(a1 + 32) count];
    _CKLog();
  }

  if (!*(*(a1 + 40) + 8))
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = *(a1 + 40);
    v6 = *(v5 + 8);
    *(v5 + 8) = v4;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [*(a1 + 32) objectForKeyedSubscript:{v11, v16, v17, v18}];
        v13 = [CKComposition savedCompositionFromData:v12];

        if (v13)
        {
          [*(*(a1 + 40) + 8) setObject:v13 forKeyedSubscript:v11];
        }

        else
        {
          v14 = [MEMORY[0x1E695DFB0] null];
          [*(*(a1 + 40) + 8) setObject:v14 forKeyedSubscript:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  return (*(*(a1 + 48) + 16))();
}

- (id)_pendingRecipientsURL
{
  if (_pendingRecipientsURL_onceToken != -1)
  {
    [CKDraftManager _pendingRecipientsURL];
  }

  v3 = _pendingRecipientsURL_sPendingRecipientsURL;

  return v3;
}

void __39__CKDraftManager__pendingRecipientsURL__block_invoke()
{
  v8[3] = *MEMORY[0x1E69E9840];
  v0 = CKDraftsDirectoryURL();
  v1 = [v0 path];
  v8[0] = v1;
  v8[1] = @"Pending";
  v8[2] = @"recipients.plist";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v3 = [MEMORY[0x1E696AEC0] pathWithComponents:v2];
  v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v3 isDirectory:0];
  v5 = _pendingRecipientsURL_sPendingRecipientsURL;
  _pendingRecipientsURL_sPendingRecipientsURL = v4;

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [_pendingRecipientsURL_sPendingRecipientsURL URLByDeletingLastPathComponent];
  [v6 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:0];
}

- (id)_pendingChatIdentifierURL
{
  if (_pendingChatIdentifierURL_onceToken != -1)
  {
    [CKDraftManager _pendingChatIdentifierURL];
  }

  v3 = _pendingChatIdentifierURL_sPendingChatIdentifierURL;

  return v3;
}

void __43__CKDraftManager__pendingChatIdentifierURL__block_invoke()
{
  v8[3] = *MEMORY[0x1E69E9840];
  v0 = CKDraftsDirectoryURL();
  v1 = [v0 path];
  v8[0] = v1;
  v8[1] = @"Pending";
  v8[2] = @"chatid";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v3 = [MEMORY[0x1E696AEC0] pathWithComponents:v2];
  v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v3 isDirectory:0];
  v5 = _pendingChatIdentifierURL_sPendingChatIdentifierURL;
  _pendingChatIdentifierURL_sPendingChatIdentifierURL = v4;

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [_pendingChatIdentifierURL_sPendingChatIdentifierURL URLByDeletingLastPathComponent];
  [v6 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:0];
}

- (id)_draftForConversationWithChatIdentifier:(id)a3 fetchPolicy:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  if (v4 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(NSMutableDictionary *)self->_cachedDrafts objectForKey:v6];
  }

  if (v4 == 2 || v7)
  {
    v10 = [MEMORY[0x1E695DFB0] null];

    if (v7 != v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = [CKComposition savedCompositionForChatIdentifier:v6];
    v7 = v8;
    cachedDrafts = self->_cachedDrafts;
    if (cachedDrafts)
    {
      if (v8)
      {
LABEL_8:
        [(NSMutableDictionary *)cachedDrafts setObject:v7 forKey:v6];
        goto LABEL_14;
      }
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v12 = self->_cachedDrafts;
      self->_cachedDrafts = v11;

      cachedDrafts = self->_cachedDrafts;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v7 = [MEMORY[0x1E695DFB0] null];
    [(NSMutableDictionary *)cachedDrafts setObject:v7 forKey:v6];
  }

  v7 = 0;
LABEL_14:

  return v7;
}

- (void)_setDraft:(id)a3 forKey:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v15 = 138412546;
      v16 = v7;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "_setDraft: %@, %@", &v15, 0x16u);
    }
  }

  if (v7)
  {
    if (v6)
    {
      if (!self->_cachedDrafts)
      {
        v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
        cachedDrafts = self->_cachedDrafts;
        self->_cachedDrafts = v9;
      }

      if (!self->_dirtyDraftIDs)
      {
        v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        dirtyDraftIDs = self->_dirtyDraftIDs;
        self->_dirtyDraftIDs = v11;
      }

      v13 = [(CKDraftManager *)self _cachedDraftForConversationWithChatIdentifier:v7];
      if (v13 != v6)
      {
        [(NSMutableDictionary *)self->_cachedDrafts setObject:v6 forKey:v7];
        [(NSMutableSet *)self->_dirtyDraftIDs addObject:v7];
      }
    }

    else
    {
      [CKComposition deleteCompositionWithChatIdentifier:v7];
      [(NSMutableDictionary *)self->_cachedDrafts removeObjectForKey:v7];
      [(NSMutableSet *)self->_dirtyDraftIDs removeObject:v7];
    }
  }

  else
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CKDraftManager _setDraft:v14 forKey:?];
    }
  }
}

- (void)_setPendingRecipients:(id)a3
{
  v5 = a3;
  if (self->_pendingRecipients != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_pendingRecipients, a3);
    v6 = [(NSArray *)self->_pendingRecipients count];
    v5 = v9;
    if (!v6)
    {
      v7 = [MEMORY[0x1E696AC08] defaultManager];
      v8 = [(CKDraftManager *)self _pendingRecipientsURL];
      [v7 removeItemAtURL:v8 error:0];

      v5 = v9;
    }
  }
}

- (id)_pendingRecipients
{
  pendingRecipients = self->_pendingRecipients;
  if (!pendingRecipients)
  {
    v4 = objc_alloc(MEMORY[0x1E695DEC8]);
    v5 = [(CKDraftManager *)self _pendingRecipientsURL];
    v6 = [v4 initWithContentsOfURL:v5];
    v7 = self->_pendingRecipients;
    self->_pendingRecipients = v6;

    pendingRecipients = self->_pendingRecipients;
  }

  return pendingRecipients;
}

- (void)_setPendingChatIdentifier:(id)a3
{
  v5 = a3;
  if (self->_pendingChatIdentifier != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_pendingChatIdentifier, a3);
    v6 = [(NSString *)self->_pendingChatIdentifier length];
    v5 = v9;
    if (!v6)
    {
      v7 = [MEMORY[0x1E696AC08] defaultManager];
      v8 = [(CKDraftManager *)self _pendingChatIdentifierURL];
      [v7 removeItemAtURL:v8 error:0];

      v5 = v9;
    }
  }
}

- (id)_pendingChatIdentifier
{
  v17 = *MEMORY[0x1E69E9840];
  pendingChatIdentifier = self->_pendingChatIdentifier;
  if (!pendingChatIdentifier)
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v5 = [(CKDraftManager *)self _pendingChatIdentifierURL];
    v12 = 0;
    v6 = [v4 initWithContentsOfURL:v5 encoding:4 error:&v12];
    v7 = v12;
    v8 = self->_pendingChatIdentifier;
    self->_pendingChatIdentifier = v6;

    if (v7 && IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [(CKDraftManager *)self _pendingChatIdentifierURL];
        *buf = 138412546;
        v14 = v7;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Got error while decoding _pendingChatIdentifier: %@, at: %@.", buf, 0x16u);
      }
    }

    pendingChatIdentifier = self->_pendingChatIdentifier;
  }

  return pendingChatIdentifier;
}

@end