@interface MFLibraryStore
+ (BOOL)createEmptyStoreForPath:(id)a3;
+ (BOOL)storeAtPathIsWritable:(id)a3;
+ (id)sharedInstance;
+ (id)storeWithCriterion:(id)a3;
+ (id)storeWithMailbox:(id)a3;
- (BOOL)canCompact;
- (BOOL)hasCompleteDataForMimePart:(id)a3;
- (BOOL)hasMessageForAccount:(id)a3;
- (BOOL)shouldGrowFetchWindow;
- (id)URLString;
- (id)_cachedBodyDataContainerForMessage:(id)a3 valueIfNotPresent:(id)a4;
- (id)_cachedHeaderDataForMessage:(id)a3 valueIfNotPresent:(id)a4;
- (id)_cachedHeadersForMessage:(id)a3 valueIfNotPresent:(id)a4;
- (id)_memberMessagesWithCompactionNotification:(id)a3;
- (id)copyMessagesMatchingCriterion:(id)a3 options:(unsigned int)a4;
- (id)copyMessagesMatchingText:(id)a3 options:(unsigned int)a4;
- (id)copyMessagesWithRemoteIDs:(id)a3 options:(unsigned int)a4 inMailbox:(id)a5;
- (id)criterion;
- (id)dateOfNewestNonSearchResultMessage;
- (id)dateOfOldestNonIndexedNonSearchResultMessage;
- (id)filterMessagesByMembership:(id)a3;
- (id)mutableCopyOfAllMessages;
- (id)newObjectCache;
- (id)serverSearchResults;
- (id)storeData:(id)a3 forMimePart:(id)a4 isComplete:(BOOL)a5;
- (unint64_t)_calculateFetchWindowWithAdditionalMultiple:(BOOL)a3;
- (unint64_t)_fetchWindowMinimum;
- (unint64_t)_fetchWindowMultiple;
- (unint64_t)appendMessages:(id)a3 unsuccessfulOnes:(id)a4 newMessageIDs:(id)a5 newMessages:(id)a6 flagsToSet:(id)a7;
- (unint64_t)fetchWindow;
- (unint64_t)fetchWindowCap;
- (unint64_t)growFetchWindow;
- (unint64_t)serverUnreadOnlyOnServerCount;
- (unint64_t)unreadCount;
- (unint64_t)unreadCountMatchingCriterion:(id)a3;
- (void)_addInvocationToQueue:(id)a3;
- (void)_handleFlagsChangedForMessages:(id)a3 flags:(id)a4 oldFlagsByMessage:(id)a5;
- (void)_queueMessageFlagsChanged:(id)a3;
- (void)_queueMessagesAdded:(id)a3;
- (void)_queueMessagesWereCompacted:(id)a3;
- (void)_queueMessagesWillBeCompacted:(id)a3;
- (void)compactMessages:(id)a3;
- (void)dealloc;
- (void)deleteBodyDataForMessage:(id)a3;
- (void)deleteMessages:(id)a3 moveToTrash:(BOOL)a4;
- (void)doCompact;
- (void)handleMessageFlagsChanged:(id)a3;
- (void)handleMessagesAdded:(id)a3 earliestReceivedDate:(id)a4;
- (void)handleMessagesCompacted:(id)a3;
- (void)handleMessagesWillBeCompacted:(id)a3;
- (void)invalidateFetchWindow;
- (void)messagesWereAdded:(id)a3 earliestReceivedDate:(id)a4;
- (void)openSynchronously;
- (void)purgeMessagesBeyondLimit:(unint64_t)a3 keepingMessage:(id)a4;
- (void)setFlagsForAllMessagesFromDictionary:(id)a3;
- (void)setLibrary:(id)a3;
- (void)willFetchMessages;
@end

@implementation MFLibraryStore

+ (id)storeWithCriterion:(id)a3
{
  v3 = [[MFLibraryStore alloc] initWithCriterion:a3];

  return v3;
}

+ (id)storeWithMailbox:(id)a3
{
  v3 = [[MFLibraryStore alloc] initWithMailbox:a3];

  return v3;
}

- (void)setLibrary:(id)a3
{
  if (self->_library != a3)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = v5;
    if (self->_library)
    {
      [v5 removeObserver:self name:0 object:?];
      library = self->_library;
    }

    else
    {
      library = 0;
    }

    v8 = a3;
    self->_library = v8;
    if (a3)
    {
      [v6 addObserver:self selector:sel__queueMessagesAdded_ name:@"MailMessageStoreMessagesAdded" object:v8];
      [v6 addObserver:self selector:sel__queueMessageFlagsChanged_ name:@"MailMessageStoreMessageFlagsChanged" object:self->_library];
      [v6 addObserver:self selector:sel__queueMessagesWillBeCompacted_ name:@"MailMessageStoreMessagesWillBeCompacted" object:self->_library];
      [v6 addObserver:self selector:sel__queueMessagesWereCompacted_ name:@"MailMessageStoreMessagesRemoved" object:self->_library];
    }

    [(MFLibraryStore *)self invalidateFetchWindow];
  }
}

+ (id)sharedInstance
{
  pthread_once(&sharedInstanceInitializer, initializeSharedInstance);

  return [a1 sharedInstanceIfExists];
}

- (void)_addInvocationToQueue:(id)a3
{
  if (_addInvocationToQueue__onceToken != -1)
  {
    [MFLibraryStore _addInvocationToQueue:];
  }

  v4 = _addInvocationToQueue__sInvocationQueue;

  [v4 addInvocation:a3];
}

uint64_t __40__MFLibraryStore__addInvocationToQueue___block_invoke()
{
  v0 = objc_alloc_init(MFInvocationQueue);
  _addInvocationToQueue__sInvocationQueue = v0;

  return [(MFInvocationQueue *)v0 setThreadRecycleTimeout:60.0];
}

- (void)openSynchronously
{
  [(MFLibraryStore *)self mf_lock];
  if (self->super._state > 2)
  {

    [(MFLibraryStore *)self mf_unlock];
  }

  else
  {
    self->super._state = 2;
    self->super._unreadMessageCount = 0;
    [(MFLibraryStore *)self mf_unlock];
    self->super._state = 3;

    [(MFMailMessageStore *)self didOpen];
  }
}

- (id)mutableCopyOfAllMessages
{
  v2 = [(MFLibraryStore *)self copyOfAllMessages];

  return [v2 mutableCopy];
}

- (id)copyMessagesMatchingText:(id)a3 options:(unsigned int)a4
{
  v14[3] = *MEMORY[0x277D85DE8];
  v7 = [[MFMessageCriterion alloc] initWithType:34 qualifier:0 expression:a3];
  v8 = [[MFMessageCriterion alloc] initWithType:9 qualifier:0 expression:a3];
  v9 = [[MFMessageCriterion alloc] initWithType:1 qualifier:0 expression:a3];
  [(MFMessageCriterion *)v9 setCriterionIdentifier:*MEMORY[0x277D07030]];
  v14[0] = v7;
  v14[1] = v8;
  v14[2] = v9;
  v10 = +[MFMessageCriterion orCompoundCriterionWithCriteria:](MFMessageCriterion, "orCompoundCriterionWithCriteria:", [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3]);

  v13[0] = [(MFLibraryStore *)self criterion];
  v13[1] = v10;
  result = [-[MFLibraryStore library](self "library")];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)copyMessagesMatchingCriterion:(id)a3 options:(unsigned int)a4
{
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{-[MFLibraryStore criterion](self, "criterion"), a3, 0}];
  if ((a4 & 0x80) != 0)
  {
    [v6 addObject:{+[MFMessageCriterion messageIsDeletedCriterion:](MFMessageCriterion, "messageIsDeletedCriterion:", 0)}];
  }

  v7 = [MFMessageCriterion andCompoundCriterionWithCriteria:v6];

  v9 = [-[MFLibraryStore library](self "library")];
  [v9 makeObjectsPerformSelector:sel_setMessageStore_ withObject:self];

  return v9;
}

- (id)copyMessagesWithRemoteIDs:(id)a3 options:(unsigned int)a4 inMailbox:(id)a5
{
  v6 = [-[MFLibraryStore library](self "library")];
  [v6 makeObjectsPerformSelector:sel_setMessageStore_ withObject:self];
  return v6;
}

- (id)serverSearchResults
{
  v3 = [-[MFLibraryStore library](self "library")];
  [v3 makeObjectsPerformSelector:sel_setMessageStore_ withObject:self];
  return v3;
}

- (id)dateOfOldestNonIndexedNonSearchResultMessage
{
  [(MFLibraryStore *)self mf_lock];
  v3 = [-[MFLibraryStore library](self "library")];
  [(MFLibraryStore *)self mf_unlock];
  return v3;
}

- (id)dateOfNewestNonSearchResultMessage
{
  [(MFLibraryStore *)self mf_lock];
  v3 = [-[MFLibraryStore library](self "library")];
  [(MFLibraryStore *)self mf_unlock];
  return v3;
}

- (void)willFetchMessages
{
  v3 = [-[MFLibraryStore library](self "library")];

  [(MFLibraryStore *)self setEarliestReceivedDate:v3];
}

- (unint64_t)_fetchWindowMultiple
{
  v2 = +[MFNetworkController sharedInstance];
  if ([(MFNetworkController *)v2 isFatPipe])
  {
    return 250;
  }

  if ([(MFNetworkController *)v2 is4GConnection])
  {
    return 250;
  }

  return 100;
}

- (unint64_t)_fetchWindowMinimum
{
  v2 = +[MFNetworkController sharedInstance];
  if ([(MFNetworkController *)v2 isFatPipe]|| [(MFNetworkController *)v2 is4GConnection])
  {
    return 150;
  }

  if ([(MFNetworkController *)v2 is3GConnection])
  {
    return 100;
  }

  return 50;
}

- (unint64_t)_calculateFetchWindowWithAdditionalMultiple:(BOOL)a3
{
  v3 = a3;
  v5 = [(MFLibraryStore *)self _fetchWindowMultiple];
  v6 = [(MFLibraryStore *)self _fetchWindowMinimum];
  v7 = [(MFLibraryStore *)self allNonDeletedCountIncludingServerSearch:0 andThreadSearch:0]/ v5;
  v8 = ceilf(v7) * v5;
  if (v3)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  if (v6 <= v9 + v8)
  {
    v10 = v9 + v8;
  }

  else
  {
    v10 = v6;
  }

  result = [(MFLibraryStore *)self fetchWindowCap];
  if (result >= v10)
  {
    return v10;
  }

  return result;
}

- (void)invalidateFetchWindow
{
  [(MFLibraryStore *)self mf_lock];
  self->_fetchWindow = 0;

  [(MFLibraryStore *)self mf_unlock];
}

- (BOOL)shouldGrowFetchWindow
{
  v3 = [(MFLibraryStore *)self fetchWindow];
  if (v3 >= [(MFLibraryStore *)self fetchWindowCap])
  {
    return 0;
  }

  v5.receiver = self;
  v5.super_class = MFLibraryStore;
  return [(MFMailMessageStore *)&v5 shouldGrowFetchWindow];
}

- (unint64_t)growFetchWindow
{
  [(MFLibraryStore *)self mf_lock];
  v3 = [(MFLibraryStore *)self _calculateFetchWindowWithAdditionalMultiple:1];
  self->_fetchWindow = v3;
  [(MFLibraryStore *)self mf_unlock];
  return v3;
}

- (unint64_t)fetchWindow
{
  [(MFLibraryStore *)self mf_lock];
  fetchWindow = self->_fetchWindow;
  if (!fetchWindow)
  {
    fetchWindow = [(MFLibraryStore *)self _calculateFetchWindowWithAdditionalMultiple:0];
    self->_fetchWindow = fetchWindow;
  }

  [(MFLibraryStore *)self mf_unlock];
  return fetchWindow;
}

- (unint64_t)fetchWindowCap
{
  if ([objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return 10000;
  }
}

- (id)filterMessagesByMembership:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(a3);
        }

        mailboxUid = self->super._mailboxUid;
        if (mailboxUid)
        {
          v11 = *(*(&v14 + 1) + 8 * i);
          if (mailboxUid == [v11 mailbox])
          {
            if (!v7)
            {
              v7 = [MEMORY[0x277CBEB18] array];
            }

            [v7 addObject:v11];
          }
        }
      }

      v6 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)handleMessagesAdded:(id)a3 earliestReceivedDate:(id)a4
{
  v6 = [a3 userInfo];
  v7 = [v6 objectForKey:@"messages"];
  v8 = [v6 objectForKey:@"mailboxes"];
  v9 = [(MFMailMessageStore *)self mailboxUid];
  if (v9)
  {
    if ([v8 indexOfObject:v9] != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_7;
    }

    [(MFLibraryStore *)self criterion];
  }

  else
  {
    v10 = [(MFLibraryStore *)self criterion];
    if (v10)
    {
      v7 = [(MFMessageLibrary *)self->_library filterContiguousMessages:v7 forCriterion:v10 options:3];
      goto LABEL_7;
    }
  }

  v7 = 0;
LABEL_7:
  if ([v7 count])
  {
    [(MFLibraryStore *)self addCountsForMessages:v7 shouldUpdateUnreadCount:0];

    [(MFLibraryStore *)self messagesWereAdded:v7 earliestReceivedDate:a4];
  }
}

- (void)messagesWereAdded:(id)a3 earliestReceivedDate:(id)a4
{
  [a3 makeObjectsPerformSelector:sel_setMessageStore_ withObject:self];
  v7.receiver = self;
  v7.super_class = MFLibraryStore;
  [(MFMailMessageStore *)&v7 messagesWereAdded:a3 earliestReceivedDate:a4];
}

- (void)_handleFlagsChangedForMessages:(id)a3 flags:(id)a4 oldFlagsByMessage:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = [(MFMailboxUid *)self->super._mailboxUid type];
  [(MFLibraryStore *)self mf_lock];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = a3;
  v10 = [a3 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    v25 = v9 - 5;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        v15 = [objc_msgSend(a5 objectForKey:{v14), "intValue"}];
        v16 = v15;
        if (a4)
        {
          v17 = MFMessageFlagsByApplyingDictionary(v15, a4);
        }

        else
        {
          v17 = [v14 messageFlags];
        }

        v18 = v17;
        if (((v16 >> 1) & 1) != ((v17 >> 1) & 1))
        {
          v19 = [v14 messageSize];
          deletedMessageCount = self->super._deletedMessageCount;
          if ((v16 & 2) != 0)
          {
            self->super._deletedMessageCount = deletedMessageCount - 1;
            v21 = 56;
            v22 = (self->super._deletedMessagesSize - v19);
          }

          else
          {
            self->super._deletedMessageCount = deletedMessageCount + 1;
            self->super._deletedMessagesSize += v19;
            if (v25 > 1)
            {
              goto LABEL_15;
            }

            v21 = 72;
            v22 = (self->super._unreadMessageCount - 1);
          }

          *(&self->super.super.super.isa + v21) = v22;
        }

LABEL_15:
        if ((v16 & 1) != (v18 & 1))
        {
          v23 = -1;
          if ((v18 & 1) == 0)
          {
            v23 = 1;
          }

          goto LABEL_22;
        }

        if ((v18 & 2) != 0 && !((v18 | v16) & 1 | v16 & 2))
        {
          v23 = -1;
LABEL_22:
          self->super._unreadMessageCount += v23;
          continue;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v11);
  }

  [(MFLibraryStore *)self mf_unlock];
  v24 = *MEMORY[0x277D85DE8];
}

- (void)handleMessageFlagsChanged:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"mailboxes"];
  v6 = -[MFLibraryStore filterMessagesByMembership:](self, "filterMessagesByMembership:", [v4 objectForKey:@"messages"]);
  if ([v6 count])
  {
    v7 = [v4 objectForKey:@"flags"];
    v8 = [v4 objectForKey:@"oldFlagsByMessage"];
    if (v8)
    {
      [(MFLibraryStore *)self _handleFlagsChangedForMessages:v6 flags:v7 oldFlagsByMessage:v8];
    }

    [(MFMailMessageStore *)self messageFlagsDidChange:v6 flags:v7];
  }

  else if (self->super._mailboxUid && [v5 containsObject:?])
  {
    v9 = [v4 objectForKeyedSubscript:@"flags"];

    [(MFMailMessageStore *)self allMessageFlagsDidChange:v9];
  }
}

- (id)_memberMessagesWithCompactionNotification:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"messages"];
  v6 = [v4 objectForKey:@"mailboxes"];
  if ([v5 count] && self->super._mailboxUid && objc_msgSend(v6, "indexOfObject:") != 0x7FFFFFFFFFFFFFFFLL && (v18 = 0u, v19 = 0u, v16 = 0u, v17 = 0u, (v7 = objc_msgSend(v5, "countByEnumeratingWithState:objects:count:", &v16, v20, 16)) != 0))
  {
    v8 = v7;
    v9 = 0;
    v10 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        mailboxUid = self->super._mailboxUid;
        if (mailboxUid == [v12 mailbox])
        {
          if (!v9)
          {
            v9 = [MEMORY[0x277CBEB18] array];
          }

          [v9 addObject:v12];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)handleMessagesCompacted:(id)a3
{
  [(MFLibraryStore *)self mf_lock];
  v5 = [(MFLibraryStore *)self _memberMessagesWithCompactionNotification:a3];
  if ([v5 count])
  {
    self->super._deletedMessagesSize = 0;
    self->super._deletedMessageCount = 0;
  }

  [(MFLibraryStore *)self mf_unlock];

  [(MFMailMessageStore *)self messagesWereCompacted:v5];
}

- (void)handleMessagesWillBeCompacted:(id)a3
{
  v4 = [(MFLibraryStore *)self _memberMessagesWithCompactionNotification:a3];

  [(MFMailMessageStore *)self messagesWillBeCompacted:v4];
}

- (void)dealloc
{
  [(MFLibraryStore *)self setLibrary:0];

  v3.receiver = self;
  v3.super_class = MFLibraryStore;
  [(MFMailMessageStore *)&v3 dealloc];
}

- (id)storeData:(id)a3 forMimePart:(id)a4 isComplete:(BOOL)a5
{
  v5 = a5;
  v9 = [objc_msgSend(a4 "mimeBody")];
  if (![v9 isLibraryMessage])
  {
    return 0;
  }

  v10 = [-[MFLibraryStore library](self "library")];
  [v10 appendData:a3];
  [v10 done];

  return [v10 data];
}

- (void)deleteBodyDataForMessage:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    library = self->_library;

    [(MFMessageLibrary *)library deleteDataForMessage:a3];
  }
}

- (void)deleteMessages:(id)a3 moveToTrash:(BOOL)a4
{
  v4 = a4;
  v63 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v42 = [MEMORY[0x277CBEB18] array];
  Current = CFAbsoluteTimeGetCurrent();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v47 objects:v62 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v48;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v48 != v10)
        {
          objc_enumerationMutation(a3);
        }

        v12 = *(*(&v47 + 1) + 8 * i);
        v13 = [v12 account];
        v14 = [v12 mailbox];
        if (v4)
        {
          v15 = v14;
          v16 = [v13 path];
          if (v15 != [v13 mailboxUidOfType:3 createIfNeeded:0])
          {
            if (![v6 objectForKey:v16])
            {
              [v6 setObject:objc_msgSend(MEMORY[0x277CBEB18] forKey:{"array"), v16}];
            }

            [objc_msgSend(v6 objectForKey:{v16), "addObject:", v12}];
          }
        }
      }

      v9 = [a3 countByEnumeratingWithState:&v47 objects:v62 count:16];
    }

    while (v9);
  }

  v17 = [v6 count];
  v18 = MEMORY[0x277CBEC38];
  v19 = 0x277CBE000uLL;
  if (v17)
  {
    v60 = @"MessageIsRead";
    v61 = MEMORY[0x277CBEC38];
    v20 = self;
    -[MFLibraryStore setFlagsFromDictionary:forMessages:](self, "setFlagsFromDictionary:forMessages:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1], a3);
    v21 = [v6 keyEnumerator];
    v22 = [v21 nextObject];
    v23 = v42;
    if (v22)
    {
      v24 = v22;
      do
      {
        v25 = [MailAccount accountWithPath:v24];
        v26 = [(MailAccount *)v25 storeForMailboxUid:[(MailAccount *)v25 mailboxUidOfType:3 createIfNeeded:1]];
        if (v26)
        {
          v27 = v26;
          v28 = [v6 objectForKey:v24];
          v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v27 mf_lock];
          [v27 appendMessages:v28 unsuccessfulOnes:v29];
          [v27 mf_unlock];

          v23 = v42;
        }

        v24 = [v21 nextObject];
      }

      while (v24);
    }

    if ([v23 count])
    {
      v30 = [MEMORY[0x277CBEB18] array];
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v31 = [a3 countByEnumeratingWithState:&v43 objects:v59 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v44;
        do
        {
          for (j = 0; j != v32; ++j)
          {
            if (*v44 != v33)
            {
              objc_enumerationMutation(a3);
            }

            v35 = *(*(&v43 + 1) + 8 * j);
            if ([v23 indexOfObject:v35] == 0x7FFFFFFFFFFFFFFFLL)
            {
              [v30 addObject:v35];
            }
          }

          v32 = [a3 countByEnumeratingWithState:&v43 objects:v59 count:16];
        }

        while (v32);
      }

      v20 = self;
      [(MFMailMessageStore *)self setFlag:@"MessageIsDeleted" state:0 forMessages:v23];
      v19 = 0x277CBE000;
    }

    else
    {
      v30 = a3;
      v19 = 0x277CBE000uLL;
    }
  }

  else
  {
    v30 = a3;
    v20 = self;
  }

  v57[0] = @"MessageIsRead";
  v57[1] = @"MessageIsDeleted";
  v58[0] = v18;
  v58[1] = v18;
  -[MFLibraryStore setFlagsFromDictionary:forMessages:](v20, "setFlagsFromDictionary:forMessages:", [*(v19 + 2752) dictionaryWithObjects:v58 forKeys:v57 count:2], v30);
  v36 = CFAbsoluteTimeGetCurrent();
  v37 = MFLogGeneral();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    v39 = [v30 count];
    v40 = [v30 count];
    *buf = 134218496;
    v52 = v39;
    v53 = 2048;
    v54 = v36 - Current;
    v55 = 2048;
    v56 = (v36 - Current) / v40;
    _os_log_debug_impl(&dword_258BDA000, v37, OS_LOG_TYPE_DEBUG, "[LogMessageDeletionTimes] Deleting %lu messages took %4.5f seconds (%4.5f s/msg)", buf, 0x20u);
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)setFlagsForAllMessagesFromDictionary:(id)a3
{
  library = self->_library;
  v5 = [(MFLibraryStore *)self URLString];

  [(MFMessageLibrary *)library setFlagsFromDictionary:a3 forMessagesInMailboxURLString:v5];
}

- (unint64_t)appendMessages:(id)a3 unsuccessfulOnes:(id)a4 newMessageIDs:(id)a5 newMessages:(id)a6 flagsToSet:(id)a7
{
  if ([(MFLibraryStore *)self allowsAppend])
  {
    LOWORD(v16) = 1;
    v13 = [(MFMessageLibrary *)self->_library addMessages:a3 withMailbox:[(MFMailMessageStore *)self mailboxUid] fetchBodies:1 newMessagesByOldMessage:0 remoteIDs:0 setFlags:0 clearFlags:0 messageFlagsForMessages:a7 copyFiles:v16 addPOPUIDs:0 dataSectionsByMessage:?];
    v14 = [v13 count];
    if (v14)
    {
      [a5 addObjectsFromArray:{objc_msgSend(v13, "arrayByApplyingSelector:", sel_messageID)}];
      [a6 addObjectsFromArray:v13];
      [(MFMailMessageStore *)self updateMessages:v13 updateNumberOfAttachments:0];
    }

    if (v14 == [a3 count])
    {
      return 1;
    }
  }

  [a4 addObjectsFromArray:a3];
  return 0;
}

- (BOOL)canCompact
{
  v5.receiver = self;
  v5.super_class = MFLibraryStore;
  v3 = [(MFMailMessageStore *)&v5 canCompact];
  if (v3)
  {
    LOBYTE(v3) = [(MFMailMessageStore *)self isOpened];
  }

  return v3;
}

- (void)doCompact
{
  if ([(MFLibraryStore *)self canCompact])
  {
    v3 = [(MFLibraryStore *)self URLString];
    if (v3)
    {
      if (self->super._deletedMessageCount)
      {
        v4 = v3;
        library = self->_library;

        [(MFMessageLibrary *)library compactMailbox:v4];
      }
    }
  }
}

- (void)compactMessages:(id)a3
{
  if ([a3 count])
  {
    library = self->_library;

    [(MFMessageLibrary *)library compactMessages:a3];
  }
}

- (id)criterion
{
  v2 = [(MFMailMessageStore *)self mailboxUid];

  return [v2 criterion];
}

- (id)URLString
{
  v2 = [(MFMailMessageStore *)self mailboxUid];

  return [v2 URLString];
}

+ (BOOL)createEmptyStoreForPath:(id)a3
{
  v4 = [a3 hasPrefix:@"/"];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];

    LOBYTE(v4) = [v5 mf_makeCompletePath:a3 mode:448];
  }

  return v4;
}

+ (BOOL)storeAtPathIsWritable:(id)a3
{
  v4 = [MEMORY[0x277CCAA00] defaultManager];

  return [v4 mf_canWriteToDirectoryAtPath:a3];
}

- (unint64_t)serverUnreadOnlyOnServerCount
{
  v2 = [(MFMailMessageStore *)self mailboxUid];

  return [v2 serverUnreadOnlyOnServerCount];
}

- (unint64_t)unreadCount
{
  v2 = [(MFMailMessageStore *)self mailboxUid];

  return [v2 unreadCount];
}

- (unint64_t)unreadCountMatchingCriterion:(id)a3
{
  v4 = [(MFMailMessageStore *)self mailboxUid];

  return [v4 unreadCountMatchingCriterion:a3];
}

- (id)newObjectCache
{
  v2 = [objc_alloc(MEMORY[0x277D24F48]) initWithCapacity:32];
  v3 = objc_opt_class();
  [v2 setKeyGenerator:&__block_literal_global_73];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__MFLibraryStore_newObjectCache__block_invoke_2;
  v5[3] = &unk_2798B66B8;
  v5[4] = v3;
  [v2 setComparator:v5];
  return v2;
}

uint64_t __32__MFLibraryStore_newObjectCache__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 32);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v8 = *MEMORY[0x277D24FF0];
  v9 = *(a2 + v8);
  if (v9 == 1 && *(a3 + v8) != 1)
  {
    return -1;
  }

  v10 = *MEMORY[0x277D24FF8];
  v11 = *(a2 + v10);
  if (v11 == 1 && *(a3 + v10) != 1)
  {
    return -1;
  }

  if (v9 & 1) == 0 && (*(a3 + v8))
  {
    return 1;
  }

  result = 0;
  if (v11 & 1) == 0 && (*(a3 + v10))
  {
    return 1;
  }

  return result;
}

- (id)_cachedHeadersForMessage:(id)a3 valueIfNotPresent:(id)a4
{
  if ([a3 isLibraryMessage])
  {
    v8.receiver = self;
    v8.super_class = MFLibraryStore;
    return [(MFLibraryStore *)&v8 _cachedHeadersForMessage:a3 valueIfNotPresent:a4];
  }

  return a4;
}

- (id)_cachedHeaderDataForMessage:(id)a3 valueIfNotPresent:(id)a4
{
  if ([a3 isLibraryMessage])
  {
    v8.receiver = self;
    v8.super_class = MFLibraryStore;
    return [(MFLibraryStore *)&v8 _cachedHeaderDataForMessage:a3 valueIfNotPresent:a4];
  }

  return a4;
}

- (id)_cachedBodyDataContainerForMessage:(id)a3 valueIfNotPresent:(id)a4
{
  if ([a3 isLibraryMessage])
  {
    v8.receiver = self;
    v8.super_class = MFLibraryStore;
    return [(MFLibraryStore *)&v8 _cachedBodyDataContainerForMessage:a3 valueIfNotPresent:a4];
  }

  return a4;
}

- (void)purgeMessagesBeyondLimit:(unint64_t)a3 keepingMessage:(id)a4
{
  v7 = -[MFMessageLibrary nonDeletedCountForMailbox:](self->_library, "nonDeletedCountForMailbox:", [-[MFMailMessageStore mailboxUid](self "mailboxUid")]);
  if (v7 > a3)
  {
    if (a4)
    {
      v8 = 144;
    }

    else
    {
      v8 = 128;
    }

    v9 = [(MFLibraryStore *)self copyOfMessagesInRange:a3 options:v7 - a3, v8];
    if (a4)
    {
      v12 = v9;
      v10 = [v9 indexOfObject:a4];
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = v12;
      }

      else
      {
        v11 = [v12 subarrayWithRange:{v10 + 1, objc_msgSend(v12, "count") - (v10 + 1)}];

        v9 = v11;
      }
    }

    v13 = v9;
    if ([v9 count])
    {
      [(MFLibraryStore *)self purgeMessages:v13];
    }
  }
}

- (BOOL)hasMessageForAccount:(id)a3
{
  v5 = -[MFMessageLibrary nonDeletedCountForMailbox:](self->_library, "nonDeletedCountForMailbox:", [-[MFMailMessageStore mailboxUid](self "mailboxUid")]);
  if (v5)
  {
    v7.receiver = self;
    v7.super_class = MFLibraryStore;
    LOBYTE(v5) = [(MFMailMessageStore *)&v7 hasMessageForAccount:a3];
  }

  return v5;
}

- (void)_queueMessagesAdded:(id)a3
{
  v4 = 0;
  [-[MFLibraryStore pep_getInvocation:](self pep_getInvocation:{&v4), "handleMessagesAdded:earliestReceivedDate:", a3, self->_earliestReceivedDate}];
  [v4 retainArguments];
  [(MFLibraryStore *)self _addInvocationToQueue:v4];
}

- (void)_queueMessageFlagsChanged:(id)a3
{
  v4 = [MEMORY[0x277CBEAE8] mf_invocationWithSelector:sel_handleMessageFlagsChanged_ target:self object:a3];

  [(MFLibraryStore *)self _addInvocationToQueue:v4];
}

- (void)_queueMessagesWillBeCompacted:(id)a3
{
  v4 = [MEMORY[0x277CBEAE8] mf_invocationWithSelector:sel_handleMessagesWillBeCompacted_ target:self object:a3];

  [(MFLibraryStore *)self _addInvocationToQueue:v4];
}

- (void)_queueMessagesWereCompacted:(id)a3
{
  v4 = [MEMORY[0x277CBEAE8] mf_invocationWithSelector:sel_handleMessagesCompacted_ target:self object:a3];

  [(MFLibraryStore *)self _addInvocationToQueue:v4];
}

- (BOOL)hasCompleteDataForMimePart:(id)a3
{
  v6.receiver = self;
  v6.super_class = MFLibraryStore;
  return [(MFLibraryStore *)&v6 hasCompleteDataForMimePart:?]|| [(MFMessageLibrary *)self->_library hasCompleteDataForMimePart:a3];
}

@end