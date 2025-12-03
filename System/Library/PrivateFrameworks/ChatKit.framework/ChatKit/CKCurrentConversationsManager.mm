@interface CKCurrentConversationsManager
+ (id)sharedInstance;
- (BOOL)_canDumpConversationFromCache:(id)cache;
- (IMDoubleLinkedList)orderedKeys;
- (NSCountedSet)currentConversations;
- (NSMutableDictionary)idToNodeDictionary;
- (unint64_t)cacheSize;
- (void)_prepareToDumpCachedConversation:(id)conversation;
- (void)addConversation:(id)conversation;
- (void)loadHistoryForConversation:(id)conversation keepAllCurrentlyLoadedMessages:(BOOL)messages;
- (void)pruneCacheToSize:(unint64_t)size;
- (void)purgeConversation:(id)conversation;
- (void)purgeConversations:(id)conversations;
- (void)removeConversation:(id)conversation;
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

- (void)addConversation:(id)conversation
{
  v20 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    deviceIndependentID = [conversationCopy deviceIndependentID];
    if (deviceIndependentID)
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          shortDescription = [conversationCopy shortDescription];
          v18 = 138412290;
          v19 = shortDescription;
          _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Adding/incrementing conversation count in cache: %@", &v18, 0xCu);
        }
      }

      currentConversations = [(CKCurrentConversationsManager *)self currentConversations];
      [currentConversations addObject:deviceIndependentID];

      idToNodeDictionary = [(CKCurrentConversationsManager *)self idToNodeDictionary];
      v11 = [idToNodeDictionary objectForKeyedSubscript:deviceIndependentID];

      if (v11)
      {
        orderedKeys = [(CKCurrentConversationsManager *)self orderedKeys];
        [orderedKeys removeLinkedListNode:v11];
      }

      else
      {
        v11 = [(IMDoubleLinkedListNode *)[CKCurrentConversationsManagerOrderedNode alloc] initWithObject:conversationCopy];
        [(CKCurrentConversationsManagerOrderedNode *)v11 setKey:deviceIndependentID];
        orderedKeys = [(CKCurrentConversationsManager *)self idToNodeDictionary];
        [orderedKeys setObject:v11 forKeyedSubscript:deviceIndependentID];
      }

      orderedKeys2 = [(CKCurrentConversationsManager *)self orderedKeys];
      [orderedKeys2 appendLinkedListNode:v11];

      orderedKeys3 = [(CKCurrentConversationsManager *)self orderedKeys];
      v17 = [orderedKeys3 count];
      LODWORD(v17) = v17 > [(CKCurrentConversationsManager *)self cacheSize];

      if (v17)
      {
        [(CKCurrentConversationsManager *)self pruneCacheToSize:[(CKCurrentConversationsManager *)self cacheSize]];
      }
    }

    else if (conversationCopy && IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        shortDescription2 = [conversationCopy shortDescription];
        v18 = 138412290;
        v19 = shortDescription2;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "CKCurrentConversationsManager: Not caching conversation with no deviceIndependentID: %@", &v18, 0xCu);
      }
    }

    goto LABEL_22;
  }

  if (IMOSLoggingEnabled())
  {
    deviceIndependentID = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(deviceIndependentID, OS_LOG_TYPE_INFO))
    {
      shortDescription3 = [conversationCopy shortDescription];
      v18 = 138412290;
      v19 = shortDescription3;
      _os_log_impl(&dword_19020E000, deviceIndependentID, OS_LOG_TYPE_INFO, "Not caching pending conversation: %@", &v18, 0xCu);
    }

LABEL_22:
  }
}

- (void)removeConversation:(id)conversation
{
  v15 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  chat = [conversationCopy chat];
  guid = [chat guid];

  if (guid)
  {
    chat2 = [conversationCopy chat];
    guid2 = [chat2 guid];
    [CKConversationUserInteractionManager exitedConversation:guid2];
  }

  deviceIndependentID = [conversationCopy deviceIndependentID];
  if (deviceIndependentID)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        shortDescription = [conversationCopy shortDescription];
        v13 = 138412290;
        v14 = shortDescription;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Decrementing conversation count in cache: %@", &v13, 0xCu);
      }
    }

    currentConversations = [(CKCurrentConversationsManager *)self currentConversations];
    [currentConversations removeObject:deviceIndependentID];
  }
}

- (void)purgeConversation:(id)conversation
{
  conversationCopy = conversation;
  deviceIndependentID = [conversationCopy deviceIndependentID];
  if (deviceIndependentID)
  {
    currentConversations = [(CKCurrentConversationsManager *)self currentConversations];
    v6 = [currentConversations countForObject:deviceIndependentID];

    for (; v6; --v6)
    {
      currentConversations2 = [(CKCurrentConversationsManager *)self currentConversations];
      [currentConversations2 removeObject:deviceIndependentID];
    }

    idToNodeDictionary = [(CKCurrentConversationsManager *)self idToNodeDictionary];
    v9 = [idToNodeDictionary objectForKeyedSubscript:deviceIndependentID];

    [(CKCurrentConversationsManager *)self _prepareToDumpCachedConversation:conversationCopy];
    orderedKeys = [(CKCurrentConversationsManager *)self orderedKeys];
    [orderedKeys removeLinkedListNode:v9];

    idToNodeDictionary2 = [(CKCurrentConversationsManager *)self idToNodeDictionary];
    [idToNodeDictionary2 removeObjectForKey:deviceIndependentID];
  }
}

- (void)purgeConversations:(id)conversations
{
  v14 = *MEMORY[0x1E69E9840];
  conversationsCopy = conversations;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [conversationsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(conversationsCopy);
        }

        [(CKCurrentConversationsManager *)self purgeConversation:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [conversationsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)pruneCacheToSize:(unint64_t)size
{
  v19 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v17 = 134217984;
      sizeCopy = size;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Pruning conversation cache to size %ld", &v17, 0xCu);
    }
  }

  orderedKeys = [(CKCurrentConversationsManager *)self orderedKeys];
  first = [orderedKeys first];

  if (first)
  {
    while (1)
    {
      orderedKeys2 = [(CKCurrentConversationsManager *)self orderedKeys];
      v9 = [orderedKeys2 count] > size;

      if (!v9)
      {
LABEL_13:

        return;
      }

      next = [first next];
      object = [first object];
      deviceIndependentID = [object deviceIndependentID];
      v13 = [first key];
      if (!deviceIndependentID)
      {
        break;
      }

      if ([(CKCurrentConversationsManager *)self _canDumpConversationFromCache:object])
      {
        [(CKCurrentConversationsManager *)self _prepareToDumpCachedConversation:object];
        orderedKeys3 = [(CKCurrentConversationsManager *)self orderedKeys];
        [orderedKeys3 removeLinkedListNode:first];

        idToNodeDictionary = [(CKCurrentConversationsManager *)self idToNodeDictionary];
        [idToNodeDictionary removeObjectForKey:deviceIndependentID];
LABEL_11:
      }

      first = next;
      if (!next)
      {
        goto LABEL_13;
      }
    }

    orderedKeys4 = [(CKCurrentConversationsManager *)self orderedKeys];
    [orderedKeys4 removeLinkedListNode:first];

    idToNodeDictionary = [(CKCurrentConversationsManager *)self idToNodeDictionary];
    [idToNodeDictionary removeObjectForKey:v13];
    goto LABEL_11;
  }
}

- (void)loadHistoryForConversation:(id)conversation keepAllCurrentlyLoadedMessages:(BOOL)messages
{
  messagesCopy = messages;
  conversationCopy = conversation;
  limitToLoad = [conversationCopy limitToLoad];
  v6 = +[CKUIBehavior sharedBehaviors];
  defaultConversationViewingMessageCount = [v6 defaultConversationViewingMessageCount];

  if (defaultConversationViewingMessageCount >= limitToLoad)
  {
    defaultConversationViewingMessageCount = limitToLoad;
  }

  v8 = +[CKUIBehavior sharedBehaviors];
  initialConversationViewingMessageCount = [v8 initialConversationViewingMessageCount];

  if (defaultConversationViewingMessageCount <= initialConversationViewingMessageCount)
  {
    v10 = initialConversationViewingMessageCount;
  }

  else
  {
    v10 = defaultConversationViewingMessageCount;
  }

  if (messagesCopy)
  {
    limitToLoad2 = [conversationCopy limitToLoad];
    if (v10 <= limitToLoad2)
    {
      v10 = limitToLoad2;
    }
  }

  else
  {
    [conversationCopy clearConversationLoadFromSpotlight];
  }

  [conversationCopy setLoadedMessageCount:v10];
}

- (BOOL)_canDumpConversationFromCache:(id)cache
{
  v13 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  deviceIndependentID = [cacheCopy deviceIndependentID];
  if (deviceIndependentID)
  {
    currentConversations = [(CKCurrentConversationsManager *)self currentConversations];
    v7 = [currentConversations countForObject:deviceIndependentID] == 0;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        shortDescription = [cacheCopy shortDescription];
        v11 = 138412290;
        v12 = shortDescription;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "CKCurrentConversationsManager: asking to dump conversation with no deviceIndependentID: %@", &v11, 0xCu);
      }
    }

    v7 = 0;
  }

  return v7;
}

- (void)_prepareToDumpCachedConversation:(id)conversation
{
  v10 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      shortDescription = [conversationCopy shortDescription];
      v8 = 138412290;
      v9 = shortDescription;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "  => Preparing to dump conversation from cache: %@", &v8, 0xCu);
    }
  }

  v6 = +[CKUIBehavior sharedBehaviors];
  defaultConversationSummaryMessageCount = [v6 defaultConversationSummaryMessageCount];

  [conversationCopy setLoadedMessageCount:defaultConversationSummaryMessageCount];
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
  conversationCacheSize = [v2 conversationCacheSize];

  if (!conversationCacheSize && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "CKCurrentConversationsManager: Conversation cache size is zero!", v6, 2u);
    }
  }

  return conversationCacheSize;
}

@end