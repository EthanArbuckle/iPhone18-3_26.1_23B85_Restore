@interface CKCurrentConversationsManager
+ (id)sharedInstance;
- (BOOL)_canDumpConversationFromCache:(id)a3;
- (IMDoubleLinkedList)orderedKeys;
- (NSCountedSet)currentConversations;
- (NSMutableDictionary)idToNodeDictionary;
- (unint64_t)cacheSize;
- (void)_prepareToDumpCachedConversation:(id)a3;
- (void)addConversation:(id)a3;
- (void)loadHistoryForConversation:(id)a3 keepAllCurrentlyLoadedMessages:(BOOL)a4;
- (void)pruneCacheToSize:(unint64_t)a3;
- (void)purgeConversation:(id)a3;
- (void)purgeConversations:(id)a3;
- (void)removeConversation:(id)a3;
@end

@implementation CKCurrentConversationsManager

+ (id)sharedInstance
{
  if (sharedInstance_creation_1 != -1)
  {
    +[CKCurrentConversationsManager sharedInstance];
  }

  v3 = sharedInstance_sInstance_3;

  return v3;
}

void __47__CKCurrentConversationsManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CKCurrentConversationsManager);
  v1 = sharedInstance_sInstance_3;
  sharedInstance_sInstance_3 = v0;
}

- (NSCountedSet)currentConversations
{
  currentConversations = self->_currentConversations;
  if (!currentConversations)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v5 = self->_currentConversations;
    self->_currentConversations = v4;

    currentConversations = self->_currentConversations;
  }

  return currentConversations;
}

- (void)addConversation:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = [v4 deviceIndependentID];
    if (v5)
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = [v4 shortDescription];
          v18 = 138412290;
          v19 = v8;
          _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Adding/incrementing conversation count in cache: %@", &v18, 0xCu);
        }
      }

      v9 = [(CKCurrentConversationsManager *)self currentConversations];
      [v9 addObject:v5];

      v10 = [(CKCurrentConversationsManager *)self idToNodeDictionary];
      v11 = [v10 objectForKeyedSubscript:v5];

      if (v11)
      {
        v12 = [(CKCurrentConversationsManager *)self orderedKeys];
        [v12 removeLinkedListNode:v11];
      }

      else
      {
        v11 = [(IMDoubleLinkedListNode *)[CKCurrentConversationsManagerOrderedNode alloc] initWithObject:v4];
        [(CKCurrentConversationsManagerOrderedNode *)v11 setKey:v5];
        v12 = [(CKCurrentConversationsManager *)self idToNodeDictionary];
        [v12 setObject:v11 forKeyedSubscript:v5];
      }

      v15 = [(CKCurrentConversationsManager *)self orderedKeys];
      [v15 appendLinkedListNode:v11];

      v16 = [(CKCurrentConversationsManager *)self orderedKeys];
      v17 = [v16 count];
      LODWORD(v17) = v17 > [(CKCurrentConversationsManager *)self cacheSize];

      if (v17)
      {
        [(CKCurrentConversationsManager *)self pruneCacheToSize:[(CKCurrentConversationsManager *)self cacheSize]];
      }
    }

    else if (v4 && IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v4 shortDescription];
        v18 = 138412290;
        v19 = v14;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "CKCurrentConversationsManager: Not caching conversation with no deviceIndependentID: %@", &v18, 0xCu);
      }
    }

    goto LABEL_22;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 shortDescription];
      v18 = 138412290;
      v19 = v6;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Not caching pending conversation: %@", &v18, 0xCu);
    }

LABEL_22:
  }
}

- (void)removeConversation:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 chat];
  v6 = [v5 guid];

  if (v6)
  {
    v7 = [v4 chat];
    v8 = [v7 guid];
    [CKConversationUserInteractionManager exitedConversation:v8];
  }

  v9 = [v4 deviceIndependentID];
  if (v9)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v4 shortDescription];
        v13 = 138412290;
        v14 = v11;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Decrementing conversation count in cache: %@", &v13, 0xCu);
      }
    }

    v12 = [(CKCurrentConversationsManager *)self currentConversations];
    [v12 removeObject:v9];
  }
}

- (void)purgeConversation:(id)a3
{
  v12 = a3;
  v4 = [v12 deviceIndependentID];
  if (v4)
  {
    v5 = [(CKCurrentConversationsManager *)self currentConversations];
    v6 = [v5 countForObject:v4];

    for (; v6; --v6)
    {
      v7 = [(CKCurrentConversationsManager *)self currentConversations];
      [v7 removeObject:v4];
    }

    v8 = [(CKCurrentConversationsManager *)self idToNodeDictionary];
    v9 = [v8 objectForKeyedSubscript:v4];

    [(CKCurrentConversationsManager *)self _prepareToDumpCachedConversation:v12];
    v10 = [(CKCurrentConversationsManager *)self orderedKeys];
    [v10 removeLinkedListNode:v9];

    v11 = [(CKCurrentConversationsManager *)self idToNodeDictionary];
    [v11 removeObjectForKey:v4];
  }
}

- (void)purgeConversations:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(CKCurrentConversationsManager *)self purgeConversation:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)pruneCacheToSize:(unint64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v17 = 134217984;
      v18 = a3;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Pruning conversation cache to size %ld", &v17, 0xCu);
    }
  }

  v6 = [(CKCurrentConversationsManager *)self orderedKeys];
  v7 = [v6 first];

  if (v7)
  {
    while (1)
    {
      v8 = [(CKCurrentConversationsManager *)self orderedKeys];
      v9 = [v8 count] > a3;

      if (!v9)
      {
LABEL_13:

        return;
      }

      v10 = [v7 next];
      v11 = [v7 object];
      v12 = [v11 deviceIndependentID];
      v13 = [v7 key];
      if (!v12)
      {
        break;
      }

      if ([(CKCurrentConversationsManager *)self _canDumpConversationFromCache:v11])
      {
        [(CKCurrentConversationsManager *)self _prepareToDumpCachedConversation:v11];
        v14 = [(CKCurrentConversationsManager *)self orderedKeys];
        [v14 removeLinkedListNode:v7];

        v15 = [(CKCurrentConversationsManager *)self idToNodeDictionary];
        [v15 removeObjectForKey:v12];
LABEL_11:
      }

      v7 = v10;
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    v16 = [(CKCurrentConversationsManager *)self orderedKeys];
    [v16 removeLinkedListNode:v7];

    v15 = [(CKCurrentConversationsManager *)self idToNodeDictionary];
    [v15 removeObjectForKey:v13];
    goto LABEL_11;
  }
}

- (void)loadHistoryForConversation:(id)a3 keepAllCurrentlyLoadedMessages:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  v5 = [v12 limitToLoad];
  v6 = +[CKUIBehavior sharedBehaviors];
  v7 = [v6 defaultConversationViewingMessageCount];

  if (v7 >= v5)
  {
    v7 = v5;
  }

  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [v8 initialConversationViewingMessageCount];

  if (v7 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  if (v4)
  {
    v11 = [v12 limitToLoad];
    if (v10 <= v11)
    {
      v10 = v11;
    }
  }

  else
  {
    [v12 clearConversationLoadFromSpotlight];
  }

  [v12 setLoadedMessageCount:v10];
}

- (BOOL)_canDumpConversationFromCache:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 deviceIndependentID];
  if (v5)
  {
    v6 = [(CKCurrentConversationsManager *)self currentConversations];
    v7 = [v6 countForObject:v5] == 0;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [v4 shortDescription];
        v11 = 138412290;
        v12 = v9;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "CKCurrentConversationsManager: asking to dump conversation with no deviceIndependentID: %@", &v11, 0xCu);
      }
    }

    v7 = 0;
  }

  return v7;
}

- (void)_prepareToDumpCachedConversation:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [v3 shortDescription];
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "  => Preparing to dump conversation from cache: %@", &v8, 0xCu);
    }
  }

  v6 = +[CKUIBehavior sharedBehaviors];
  v7 = [v6 defaultConversationSummaryMessageCount];

  [v3 setLoadedMessageCount:v7];
}

- (IMDoubleLinkedList)orderedKeys
{
  orderedKeys = self->_orderedKeys;
  if (!orderedKeys)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69A60C8]);
    v5 = self->_orderedKeys;
    self->_orderedKeys = v4;

    orderedKeys = self->_orderedKeys;
  }

  return orderedKeys;
}

- (NSMutableDictionary)idToNodeDictionary
{
  idToNodeDictionary = self->_idToNodeDictionary;
  if (!idToNodeDictionary)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[CKCurrentConversationsManager cacheSize](self, "cacheSize")}];
    v5 = self->_idToNodeDictionary;
    self->_idToNodeDictionary = v4;

    idToNodeDictionary = self->_idToNodeDictionary;
  }

  return idToNodeDictionary;
}

- (unint64_t)cacheSize
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 conversationCacheSize];

  if (!v3 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "CKCurrentConversationsManager: Conversation cache size is zero!", v6, 2u);
    }
  }

  return v3;
}

@end