@interface IMDChatVocabularyUpdater
+ (id)sharedInstance;
+ (void)performInitialUpdateIfNeeded;
- (IMDChatVocabularyUpdater)initWithChatRegistry:(id)registry vocabulary:(id)vocabulary;
- (void)_updateVocabularyExcludingChat:(id)chat completionHandler:(id)handler;
- (void)updateVocabularyForAddedChat:(id)chat completionHandler:(id)handler;
- (void)updateVocabularyForDeferredUpdateRequestIfNecessaryWithCompletionHandler:(id)handler;
- (void)updateVocabularyForDeletedChat:(id)chat completionHandler:(id)handler;
- (void)updateVocabularyForRenamedChat:(id)chat completionHandler:(id)handler;
@end

@implementation IMDChatVocabularyUpdater

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B533C5C;
  block[3] = &unk_278702AF8;
  block[4] = self;
  if (qword_2814210A8 != -1)
  {
    dispatch_once(&qword_2814210A8, block);
  }

  v2 = qword_281420F88;

  return v2;
}

- (IMDChatVocabularyUpdater)initWithChatRegistry:(id)registry vocabulary:(id)vocabulary
{
  registryCopy = registry;
  vocabularyCopy = vocabulary;
  v14.receiver = self;
  v14.super_class = IMDChatVocabularyUpdater;
  v8 = [(IMDChatVocabularyUpdater *)&v14 init];
  if (v8)
  {
    if (registryCopy)
    {
      v9 = registryCopy;
    }

    else
    {
      v9 = +[IMDChatRegistry sharedInstance];
    }

    chatRegistry = v8->_chatRegistry;
    v8->_chatRegistry = v9;

    if (vocabularyCopy)
    {
      v11 = vocabularyCopy;
    }

    else
    {
      v11 = [MEMORY[0x231897B40](@"INVocabulary" @"Intents")];
    }

    vocabulary = v8->_vocabulary;
    v8->_vocabulary = v11;
  }

  return v8;
}

- (void)updateVocabularyForAddedChat:(id)chat completionHandler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  handlerCopy = handler;
  doneLoadingAfterMerge = [(IMDChatRegistry *)self->_chatRegistry doneLoadingAfterMerge];
  v9 = IMOSLoggingEnabled();
  if (doneLoadingAfterMerge)
  {
    if (v9)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = chatCopy;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Updating SiriKit group name vocabulary for added chat: %@", &v13, 0xCu);
      }
    }

    [(IMDChatVocabularyUpdater *)self _updateVocabularyExcludingChat:0 completionHandler:handlerCopy];
  }

  else
  {
    if (v9)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = chatCopy;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Received request to update vocabulary for added chat, but chat registry is not yet loaded. Deferring update. Added Chat: %@", &v13, 0xCu);
      }
    }

    self->_haveDeferredUpdateRequest = 1;
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateVocabularyForDeletedChat:(id)chat completionHandler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  handlerCopy = handler;
  doneLoadingAfterMerge = [(IMDChatRegistry *)self->_chatRegistry doneLoadingAfterMerge];
  v9 = IMOSLoggingEnabled();
  if (doneLoadingAfterMerge)
  {
    if (v9)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = chatCopy;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Updating group name vocabulary for deleted chat: %@", &v13, 0xCu);
      }
    }

    [(IMDChatVocabularyUpdater *)self _updateVocabularyExcludingChat:chatCopy completionHandler:handlerCopy];
  }

  else
  {
    if (v9)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = chatCopy;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Received request to update vocabulary for deleted chat, but chat registry is not yet loaded. Deferring update. Deleted Chat: %@", &v13, 0xCu);
      }
    }

    self->_haveDeferredUpdateRequest = 1;
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateVocabularyForRenamedChat:(id)chat completionHandler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  handlerCopy = handler;
  doneLoadingAfterMerge = [(IMDChatRegistry *)self->_chatRegistry doneLoadingAfterMerge];
  v9 = IMOSLoggingEnabled();
  if (doneLoadingAfterMerge)
  {
    if (v9)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = chatCopy;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Updating group name vocabulary for renamed chat: %@", &v13, 0xCu);
      }
    }

    [(IMDChatVocabularyUpdater *)self _updateVocabularyExcludingChat:0 completionHandler:handlerCopy];
  }

  else
  {
    if (v9)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = chatCopy;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Received request to update vocabulary for renamed chat, but chat registry is not yet loaded. Deferring update. Renamed Chat: %@", &v13, 0xCu);
      }
    }

    self->_haveDeferredUpdateRequest = 1;
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateVocabularyForDeferredUpdateRequestIfNecessaryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (![(IMDChatRegistry *)self->_chatRegistry doneLoadingAfterMerge])
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_16;
    }

    v6 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    v11 = 0;
    v7 = "Chat registry was reloaded, but merge is not yet completed (e.g. we're still under first data protection). Not updating vocabulary.";
    v8 = &v11;
    goto LABEL_14;
  }

  if (self->_haveDeferredUpdateRequest)
  {
    self->_haveDeferredUpdateRequest = 0;
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Chat registry has finished loading. Updating group name vocabulary due to a deferred update request.", buf, 2u);
      }
    }

    [(IMDChatVocabularyUpdater *)self _updateVocabularyExcludingChat:0 completionHandler:handlerCopy];
    goto LABEL_18;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
LABEL_15:

      goto LABEL_16;
    }

    v9 = 0;
    v7 = "Chat registry has finished loading. No deffered update request.";
    v8 = &v9;
LABEL_14:
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, v7, v8, 2u);
    goto LABEL_15;
  }

LABEL_16:
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }

LABEL_18:
}

- (void)_updateVocabularyExcludingChat:(id)chat completionHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  handlerCopy = handler;
  if ([MEMORY[0x277D1A9A0] isMessagesInstalled])
  {
    selfCopy = self;
    v25 = handlerCopy;
    cachedChats = [(IMDChatRegistry *)self->_chatRegistry cachedChats];
    v9 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = cachedChats;
    v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v11)
    {
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          if (([v14 isBlackholed] & 1) == 0 && objc_msgSend(v14, "style") != 45)
          {
            displayName = [v14 displayName];
            v16 = displayName == 0;

            if (!v16 && ([v14 state] & 0xFFFFFFFFFFFFFFFELL) == 2)
            {
              if (!chatCopy || ([v14 guid], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(chatCopy, "guid"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "isEqual:", v18), v18, v17, (v19 & 1) == 0))
              {
                [v9 addObject:v14];
              }
            }
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v11);
    }

    [v9 sortUsingComparator:&unk_283F19928];
    v20 = dispatch_get_global_queue(-2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B534718;
    block[3] = &unk_2787037B8;
    block[4] = selfCopy;
    v27 = v9;
    v28 = v25;
    v21 = v9;
    dispatch_async(v20, block);

    handlerCopy = v25;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "MobileSMS application is uninstalled, not donating Siri Vocab.", buf, 2u);
      }
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

+ (void)performInitialUpdateIfNeeded
{
  if ((IMDidPerformInitialChatVocabularyUpdate() & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Performing initial group name vocabulary update", v4, 2u);
      }
    }

    v3 = +[IMDChatVocabularyUpdater sharedInstance];
    [v3 _updateVocabularyExcludingChat:0 completionHandler:&unk_283F19948];
  }
}

@end