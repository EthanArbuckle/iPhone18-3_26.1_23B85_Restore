@interface EDInMemoryThread
+ (OS_os_log)log;
+ (id)_dateSortDescriptors;
- (BOOL)_combinedHasAttachments;
- (BOOL)_combinedHasUnflagged;
- (BOOL)_combinedIsBlocked;
- (BOOL)_combinedIsVIP;
- (BOOL)_isSortedByDate:(id)date;
- (EDInMemoryThread)initWithMessages:(id)messages originatingQuery:(id)query threadScope:(id)scope;
- (EMMessageListItem)messageListItem;
- (NSArray)messages;
- (NSString)description;
- (id)_calculateAndApplyChange;
- (id)_calculateChangesAfterRemovingMessages:(id)messages applyingChanges:(id)changes threadIsEmpty:(BOOL *)empty;
- (id)_combinedCCList;
- (id)_combinedFlagColors;
- (id)_combinedMailboxes;
- (id)_combinedReadLater;
- (id)_combinedSenderList;
- (id)_combinedToList;
- (id)_createThreadWithObjectID:(id)d;
- (id)_maxSearchRelevanceScore;
- (id)_newestDisplayDate;
- (id)addMessages:(id)messages;
- (id)changeMessages:(id)messages forKeyPaths:(id)paths threadIsEmpty:(BOOL *)empty;
- (id)copyWithZone:(_NSZone *)zone;
- (id)removeMessages:(id)messages threadIsEmpty:(BOOL *)empty;
- (id)updateMessage:(id)message fromOldObjectID:(id)d;
- (void)_addMessagesToThread:(id)thread;
- (void)_recalculateDisplayMessage;
@end

@implementation EDInMemoryThread

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__EDInMemoryThread_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_43 != -1)
  {
    dispatch_once(&log_onceToken_43, block);
  }

  v2 = log_log_43;

  return v2;
}

void __23__EDInMemoryThread_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_43;
  log_log_43 = v1;
}

- (EDInMemoryThread)initWithMessages:(id)messages originatingQuery:(id)query threadScope:(id)scope
{
  v30 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  queryCopy = query;
  scopeCopy = scope;
  v28.receiver = self;
  v28.super_class = EDInMemoryThread;
  v11 = [(EDInMemoryThread *)&v28 init];
  if (v11)
  {
    v12 = [messagesCopy ef_filter:&__block_literal_global_30];
    v13 = [v12 mutableCopy];
    messages = v11->_messages;
    v11->_messages = v13;

    if (![(NSMutableArray *)v11->_messages count])
    {
      v25 = 0;
      goto LABEL_10;
    }

    objc_storeStrong(&v11->_originatingQuery, query);
    objc_storeStrong(&v11->_threadScope, scope);
    v15 = v11->_messages;
    _dateSortDescriptors = [objc_opt_class() _dateSortDescriptors];
    [(NSMutableArray *)v15 sortUsingDescriptors:_dateSortDescriptors];

    [(EDInMemoryThread *)v11 _recalculateDisplayMessage];
    firstObject = [(NSMutableArray *)v11->_messages firstObject];
    conversationID = [firstObject conversationID];

    if (!conversationID)
    {
      v19 = +[EDInMemoryThread log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        firstObject2 = [(NSMutableArray *)v11->_messages firstObject];
        ef_publicDescription = [firstObject2 ef_publicDescription];
        [(EDInMemoryThread *)ef_publicDescription initWithMessages:buf originatingQuery:v19 threadScope:firstObject2];
      }
    }

    v22 = [objc_alloc(MEMORY[0x1E699AEF8]) initWithConversationID:conversationID threadScope:v11->_threadScope];
    v23 = [(EDInMemoryThread *)v11 _createThreadWithObjectID:v22];
    thread = v11->_thread;
    v11->_thread = v23;
  }

  v25 = v11;
LABEL_10:

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

uint64_t __66__EDInMemoryThread_initWithMessages_originatingQuery_threadScope___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 flags];
  v3 = [v2 deleted];

  return v3 ^ 1u;
}

- (id)_createThreadWithObjectID:(id)d
{
  dCopy = d;
  displayMessage = [(EDInMemoryThread *)self displayMessage];
  newestMessage = [(EDInMemoryThread *)self newestMessage];
  v7 = objc_alloc(MEMORY[0x1E699AEE8]);
  originatingQuery = [(EDInMemoryThread *)self originatingQuery];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__EDInMemoryThread__createThreadWithObjectID___block_invoke;
  v14[3] = &unk_1E82526C0;
  v9 = newestMessage;
  v15 = v9;
  selfCopy = self;
  v10 = displayMessage;
  v17 = v10;
  v11 = dCopy;
  v18 = v11;
  v12 = [v7 initWithObjectID:v11 originatingQuery:originatingQuery builder:v14];

  return v12;
}

void __46__EDInMemoryThread__createThreadWithObjectID___block_invoke(id *a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1[4] date];
  [v3 setDate:v4];

  v5 = [a1[5] _newestDisplayDate];
  [v3 setDisplayDate:v5];

  v6 = [a1[5] _combinedReadLater];
  [v3 setReadLater:v6];

  v7 = [a1[6] subject];
  [v3 setSubject:v7];

  v8 = [a1[6] summary];
  [v3 setSummary:v8];

  v9 = [a1[5] _combinedSenderList];
  [v3 setSenderList:v9];

  v10 = [a1[5] _combinedToList];
  [v3 setToList:v10];

  v11 = [a1[5] _combinedCCList];
  [v3 setCcList:v11];

  v12 = [a1[5] _combinedFlags];
  [v3 setFlags:v12];

  [v3 setHasUnflagged:{objc_msgSend(a1[5], "_combinedHasUnflagged")}];
  v13 = [a1[5] _combinedFlagColors];
  [v3 setFlagColors:v13];

  [v3 setIsVIP:{objc_msgSend(a1[5], "_combinedIsVIP")}];
  [v3 setIsBlocked:{objc_msgSend(a1[5], "_combinedIsBlocked")}];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = *(a1[5] + 1);
  v15 = [v14 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v15)
  {
    v16 = *v35;
    do
    {
      v17 = 0;
      do
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v34 + 1) + 8 * v17);
        v19 = [v3 searchResultType];
        v20 = [v18 searchResultType];
        if (v19 <= v20)
        {
          v21 = v20;
        }

        else
        {
          v21 = v19;
        }

        [v3 setSearchResultType:v21];
        ++v17;
      }

      while (v15 != v17);
      v15 = [v14 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v15);
  }

  v22 = [a1[5] _maxSearchRelevanceScore];
  [v3 setSearchRelevanceScore:v22];

  [v3 setUnsubscribeType:{objc_msgSend(a1[6], "unsubscribeType")}];
  [v3 setHasAttachments:{objc_msgSend(a1[5], "_combinedHasAttachments")}];
  [v3 setIsAuthenticated:{objc_msgSend(a1[6], "isAuthenticated")}];
  [v3 setAllowAuthenticationWarning:{objc_msgSend(a1[6], "allowAuthenticationWarning")}];
  [v3 setConversationNotificationLevel:{objc_msgSend(a1[6], "conversationNotificationLevel")}];
  [v3 setCount:{objc_msgSend(*(a1[5] + 1), "count")}];
  v23 = [a1[5] _combinedMailboxes];
  [v3 setMailboxes:v23];

  v24 = [a1[6] itemID];
  [v3 setDisplayMessageItemID:v24];

  v25 = [a1[6] followUp];
  [v3 setFollowUp:v25];

  v26 = [a1[6] brandIndicatorLocation];
  [v3 setBrandIndicatorLocation:v26];

  v27 = [a1[4] generatedSummary];
  [v3 setGeneratedSummary:v27];

  [v3 setIsUrgent:{objc_msgSend(*(a1[5] + 1), "ef_any:", &__block_literal_global_6)}];
  v28 = [a1[6] category];
  [v3 setCategory:v28];

  v29 = [a1[6] businessLogoID];
  [v3 setBusinessLogoID:v29];

  v30 = [v3 category];
  LODWORD(v29) = v30 == 0;

  if (v29)
  {
    v31 = +[EDInMemoryThread log];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [a1[7] ef_publicDescription];
      __46__EDInMemoryThread__createThreadWithObjectID___block_invoke_cold_1(v32, buf, v31);
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  messages = self->_messages;
  originatingQuery = [(EDInMemoryThread *)self originatingQuery];
  v7 = [v4 initWithMessages:messages originatingQuery:originatingQuery threadScope:self->_threadScope];

  return v7;
}

- (EMMessageListItem)messageListItem
{
  thread = [(EDInMemoryThread *)self thread];

  return thread;
}

- (NSArray)messages
{
  v2 = [(NSMutableArray *)self->_messages copy];

  return v2;
}

- (id)addMessages:(id)messages
{
  messagesCopy = messages;
  v5 = [messagesCopy ef_filter:&__block_literal_global_9];

  [(EDInMemoryThread *)self _addMessagesToThread:v5];
  [(EDInMemoryThread *)self _recalculateDisplayMessage];
  _calculateAndApplyChange = [(EDInMemoryThread *)self _calculateAndApplyChange];

  return _calculateAndApplyChange;
}

uint64_t __32__EDInMemoryThread_addMessages___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 flags];
  v3 = [v2 deleted];

  return v3 ^ 1u;
}

- (void)_addMessagesToThread:(id)thread
{
  v21 = *MEMORY[0x1E69E9840];
  threadCopy = thread;
  _dateSortDescriptors = [objc_opt_class() _dateSortDescriptors];
  v6 = EFComparatorFromSortDescriptors();

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = threadCopy;
  v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(NSMutableArray *)self->_messages ef_indexOfObject:v10 usingComparator:v6];
        if (v11 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [(NSMutableArray *)self->_messages ef_insertObjectIfAbsent:v10 usingComparator:v6];
        }

        else
        {
          searchResultType = [v10 searchResultType];
          v13 = [(NSMutableArray *)self->_messages objectAtIndexedSubscript:v11];
          LODWORD(searchResultType) = searchResultType > [v13 searchResultType];

          if (searchResultType)
          {
            [(NSMutableArray *)self->_messages replaceObjectAtIndex:v11 withObject:v10];
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)changeMessages:(id)messages forKeyPaths:(id)paths threadIsEmpty:(BOOL *)empty
{
  v30 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  pathsCopy = paths;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  selfCopy = self;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = messagesCopy;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        flags = [v15 flags];
        deleted = [flags deleted];

        if (deleted)
        {
          v18 = v9;
        }

        else
        {
          v18 = v10;
        }

        [v18 addObject:v15];
      }

      v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }

  v19 = [MEMORY[0x1E699AD98] changesForKeyPaths:pathsCopy ofItems:v10];
  v20 = [(EDInMemoryThread *)selfCopy _calculateChangesAfterRemovingMessages:v9 applyingChanges:v19 threadIsEmpty:empty];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)removeMessages:(id)messages threadIsEmpty:(BOOL *)empty
{
  v4 = [(EDInMemoryThread *)self _calculateChangesAfterRemovingMessages:messages applyingChanges:0 threadIsEmpty:empty];

  return v4;
}

- (id)updateMessage:(id)message fromOldObjectID:(id)d
{
  messageCopy = message;
  dCopy = d;
  thread = [(EDInMemoryThread *)self thread];
  displayMessageItemID = [thread displayMessageItemID];
  itemID = [messageCopy itemID];
  v11 = [displayMessageItemID isEqual:itemID];

  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E699AD98]);
    objectID = [messageCopy objectID];
    collectionItemID = [objectID collectionItemID];
    [v12 setDisplayMessageItemID:collectionItemID];

    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  messages = [(EDInMemoryThread *)self messages];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __50__EDInMemoryThread_updateMessage_fromOldObjectID___block_invoke;
  v20[3] = &unk_1E82526E8;
  v17 = dCopy;
  v21 = v17;
  selfCopy = self;
  v18 = messageCopy;
  v23 = v18;
  [messages enumerateObjectsUsingBlock:v20];

  return v15;
}

void __50__EDInMemoryThread_updateMessage_fromOldObjectID___block_invoke(void *a1, void *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectID];
  v5 = [v4 isEqual:a1[4]];

  if (v5)
  {
    v13 = 0;
    v6 = a1[5];
    v15[0] = v3;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v8 = [v6 removeMessages:v7 threadIsEmpty:&v13];

    v9 = a1[5];
    v14 = a1[6];
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    v11 = [v9 addMessages:v10];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)_calculateChangesAfterRemovingMessages:(id)messages applyingChanges:(id)changes threadIsEmpty:(BOOL *)empty
{
  v27 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  changesCopy = changes;
  v21 = messagesCopy;
  if ([messagesCopy count])
  {
    [(NSMutableArray *)self->_messages removeObjectsInArray:messagesCopy];
  }

  if ([changesCopy count])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = self->_messages;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          objectID = [v14 objectID];
          v16 = [changesCopy objectForKeyedSubscript:objectID];

          if (v16)
          {
            [v16 applyToMessageListItem:v14];
          }
        }

        v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }
  }

  [(EDInMemoryThread *)self _recalculateDisplayMessage];
  _calculateAndApplyChange = [(EDInMemoryThread *)self _calculateAndApplyChange];
  if (empty)
  {
    thread = [(EDInMemoryThread *)self thread];
    *empty = [thread count] == 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return _calculateAndApplyChange;
}

- (id)_calculateAndApplyChange
{
  thread = [(EDInMemoryThread *)self thread];
  objectID = [thread objectID];
  v5 = [(EDInMemoryThread *)self _createThreadWithObjectID:objectID];

  v6 = MEMORY[0x1E699AD98];
  thread2 = [(EDInMemoryThread *)self thread];
  v8 = [v6 changeFrom:thread2 to:v5];

  if (v8)
  {
    [(EDInMemoryThread *)self setThread:v5];
    v9 = v8;
  }

  return v8;
}

+ (id)_dateSortDescriptors
{
  if (_dateSortDescriptors_onceToken != -1)
  {
    +[EDInMemoryThread _dateSortDescriptors];
  }

  v3 = _dateSortDescriptors_sDateSortDescriptors;

  return v3;
}

void __40__EDInMemoryThread__dateSortDescriptors__block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E699ADA0] sortDescriptorForDateAscending:0];
  v4[0] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  v2 = _dateSortDescriptors_sDateSortDescriptors;
  _dateSortDescriptors_sDateSortDescriptors = v1;

  v3 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isSortedByDate:(id)date
{
  firstObject = [date firstObject];
  v4 = [firstObject key];
  _dateSortDescriptors = [objc_opt_class() _dateSortDescriptors];
  firstObject2 = [_dateSortDescriptors firstObject];
  v7 = [firstObject2 key];
  v8 = [v4 isEqualToString:v7];

  return v8;
}

- (id)_combinedReadLater
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = self->_messages;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = 0;
  v5 = *v18;
  do
  {
    for (i = 0; i != v3; i = i + 1)
    {
      if (*v18 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v17 + 1) + 8 * i);
      readLater = [v7 readLater];
      v9 = readLater == 0;

      if (!v9)
      {
        if (!v4 || ([v7 readLater], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "date"), v11 = objc_claimAutoreleasedReturnValue(), v12 = -[NSMutableArray ef_isLaterThanDate:](v4, "ef_isLaterThanDate:", v11), v11, v10, v12))
        {
          readLater2 = [v7 readLater];
          date = [readLater2 date];

          v4 = date;
        }
      }
    }

    v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v3);

  if (v4)
  {
    v3 = [objc_alloc(MEMORY[0x1E699AE30]) initWithDate:v4];
    v2 = v4;
LABEL_14:

    goto LABEL_16;
  }

  v3 = 0;
LABEL_16:
  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_combinedSenderList
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  displayMessage = [(EDInMemoryThread *)self displayMessage];
  senderList = [displayMessage senderList];
  [v3 addObjectsFromArray:senderList];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_messages;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if (v10 != displayMessage)
        {
          senderList2 = [v10 senderList];
          [v3 addObjectsFromArray:senderList2];
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  array = [v3 array];

  v13 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)_combinedToList
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_messages;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        toList = [*(*(&v12 + 1) + 8 * i) toList];
        [v3 addObjectsFromArray:toList];
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  array = [v3 array];

  v10 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)_combinedCCList
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_messages;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        ccList = [*(*(&v12 + 1) + 8 * i) ccList];
        [v3 addObjectsFromArray:ccList];
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  array = [v3 array];

  v10 = *MEMORY[0x1E69E9840];

  return array;
}

- (BOOL)_combinedHasUnflagged
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_messages;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) hasUnflagged])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

- (id)_combinedFlagColors
{
  v18 = *MEMORY[0x1E69E9840];
  if (_combinedFlagColors_onceToken != -1)
  {
    [EDInMemoryThread _combinedFlagColors];
  }

  v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_messages;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
LABEL_5:
    v7 = 0;
    while (1)
    {
      if (*v14 != v6)
      {
        objc_enumerationMutation(v4);
      }

      flagColors = [*(*(&v13 + 1) + 8 * v7) flagColors];
      [v3 addIndexes:flagColors];

      if ([v3 containsIndexes:_combinedFlagColors_sAllFlagColors])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  if ([v3 count])
  {
    v9 = v3;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

void __39__EDInMemoryThread__combinedFlagColors__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, 7}];
  v1 = _combinedFlagColors_sAllFlagColors;
  _combinedFlagColors_sAllFlagColors = v0;
}

- (BOOL)_combinedIsVIP
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_messages;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) isVIP])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)_combinedIsBlocked
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_messages;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) isBlocked])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

- (id)_maxSearchRelevanceScore
{
  v2 = [(NSMutableArray *)self->_messages ef_compactMap:&__block_literal_global_26_0];
  if ([v2 count])
  {
    ef_max = [v2 ef_max];
  }

  else
  {
    ef_max = 0;
  }

  return ef_max;
}

id __44__EDInMemoryThread__maxSearchRelevanceScore__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 searchRelevanceScore];

  return v2;
}

- (BOOL)_combinedHasAttachments
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_messages;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) hasAttachments])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

- (id)_newestDisplayDate
{
  v19 = *MEMORY[0x1E69E9840];
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_messages;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        displayDate = [v8 displayDate];
        v10 = [displayDate ef_isLaterThanDate:distantPast];

        if (v10)
        {
          displayDate2 = [v8 displayDate];

          distantPast = displayDate2;
        }
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x1E69E9840];

  return distantPast;
}

- (id)_combinedMailboxes
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_messages;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        mailboxes = [*(*(&v12 + 1) + 8 * i) mailboxes];
        [v3 addObjectsFromArray:mailboxes];
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  array = [v3 array];

  v10 = *MEMORY[0x1E69E9840];

  return array;
}

- (void)_recalculateDisplayMessage
{
  v3 = [(NSMutableArray *)self->_messages indexOfObjectPassingTest:&__block_literal_global_30];
  messages = self->_messages;
  if (v3)
  {
    if (v3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)messages lastObject];
    }

    else
    {
      [(NSMutableArray *)messages objectAtIndexedSubscript:v3 - 1];
    }
    firstObject = ;
    [(EDInMemoryThread *)self setDisplayMessage:?];
  }

  else
  {
    firstObject = [(NSMutableArray *)messages firstObject];
    [(EDInMemoryThread *)self setDisplayMessage:?];
  }
}

uint64_t __46__EDInMemoryThread__recalculateDisplayMessage__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 flags];
  v3 = [v2 read];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  thread = [(EDInMemoryThread *)self thread];
  v6 = [v3 stringWithFormat:@"<%@: %p> conversationID:%lld", v4, self, objc_msgSend(thread, "conversationID")];

  return v6;
}

- (void)initWithMessages:(os_log_t)log originatingQuery:(void *)a4 threadScope:.cold.1(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Message %{public}@ had conversationID 0", buf, 0xCu);
}

void __46__EDInMemoryThread__createThreadWithObjectID___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Attempting to transform thread %{public}@ with no category", buf, 0xCu);
}

@end