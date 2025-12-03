@interface MFLibraryStore
+ (BOOL)createEmptyStoreForPath:(id)path;
+ (BOOL)storeAtPathIsWritable:(id)writable;
+ (id)sharedInstance;
+ (id)storeWithCriterion:(id)criterion;
+ (id)storeWithMailbox:(id)mailbox;
- (BOOL)canCompact;
- (BOOL)hasCompleteDataForMimePart:(id)part;
- (BOOL)hasMessageForAccount:(id)account;
- (BOOL)shouldGrowFetchWindow;
- (id)URLString;
- (id)_cachedBodyDataContainerForMessage:(id)message valueIfNotPresent:(id)present;
- (id)_cachedHeaderDataForMessage:(id)message valueIfNotPresent:(id)present;
- (id)_cachedHeadersForMessage:(id)message valueIfNotPresent:(id)present;
- (id)_memberMessagesWithCompactionNotification:(id)notification;
- (id)copyMessagesMatchingCriterion:(id)criterion options:(unsigned int)options;
- (id)copyMessagesMatchingText:(id)text options:(unsigned int)options;
- (id)copyMessagesWithRemoteIDs:(id)ds options:(unsigned int)options inMailbox:(id)mailbox;
- (id)criterion;
- (id)dateOfNewestNonSearchResultMessage;
- (id)dateOfOldestNonIndexedNonSearchResultMessage;
- (id)filterMessagesByMembership:(id)membership;
- (id)mutableCopyOfAllMessages;
- (id)newObjectCache;
- (id)serverSearchResults;
- (id)storeData:(id)data forMimePart:(id)part isComplete:(BOOL)complete;
- (unint64_t)_calculateFetchWindowWithAdditionalMultiple:(BOOL)multiple;
- (unint64_t)_fetchWindowMinimum;
- (unint64_t)_fetchWindowMultiple;
- (unint64_t)appendMessages:(id)messages unsuccessfulOnes:(id)ones newMessageIDs:(id)ds newMessages:(id)newMessages flagsToSet:(id)set;
- (unint64_t)fetchWindow;
- (unint64_t)fetchWindowCap;
- (unint64_t)growFetchWindow;
- (unint64_t)serverUnreadOnlyOnServerCount;
- (unint64_t)unreadCount;
- (unint64_t)unreadCountMatchingCriterion:(id)criterion;
- (void)_addInvocationToQueue:(id)queue;
- (void)_handleFlagsChangedForMessages:(id)messages flags:(id)flags oldFlagsByMessage:(id)message;
- (void)_queueMessageFlagsChanged:(id)changed;
- (void)_queueMessagesAdded:(id)added;
- (void)_queueMessagesWereCompacted:(id)compacted;
- (void)_queueMessagesWillBeCompacted:(id)compacted;
- (void)compactMessages:(id)messages;
- (void)dealloc;
- (void)deleteBodyDataForMessage:(id)message;
- (void)deleteMessages:(id)messages moveToTrash:(BOOL)trash;
- (void)doCompact;
- (void)handleMessageFlagsChanged:(id)changed;
- (void)handleMessagesAdded:(id)added earliestReceivedDate:(id)date;
- (void)handleMessagesCompacted:(id)compacted;
- (void)handleMessagesWillBeCompacted:(id)compacted;
- (void)invalidateFetchWindow;
- (void)messagesWereAdded:(id)added earliestReceivedDate:(id)date;
- (void)openSynchronously;
- (void)purgeMessagesBeyondLimit:(unint64_t)limit keepingMessage:(id)message;
- (void)setFlagsForAllMessagesFromDictionary:(id)dictionary;
- (void)setLibrary:(id)library;
- (void)willFetchMessages;
@end

@implementation MFLibraryStore

+ (id)storeWithCriterion:(id)criterion
{
  v3 = [[MFLibraryStore alloc] initWithCriterion:criterion];

  return v3;
}

+ (id)storeWithMailbox:(id)mailbox
{
  v3 = [[MFLibraryStore alloc] initWithMailbox:mailbox];

  return v3;
}

- (void)setLibrary:(id)library
{
  if (self->_library != library)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = defaultCenter;
    if (self->_library)
    {
      [defaultCenter removeObserver:self name:0 object:?];
      library = self->_library;
    }

    else
    {
      library = 0;
    }

    libraryCopy = library;
    self->_library = libraryCopy;
    if (library)
    {
      [v6 addObserver:self selector:sel__queueMessagesAdded_ name:@"MailMessageStoreMessagesAdded" object:libraryCopy];
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

  return [self sharedInstanceIfExists];
}

- (void)_addInvocationToQueue:(id)queue
{
  if (_addInvocationToQueue__onceToken != -1)
  {
    [MFLibraryStore _addInvocationToQueue:];
  }

  v4 = _addInvocationToQueue__sInvocationQueue;

  [v4 addInvocation:queue];
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
  copyOfAllMessages = [(MFLibraryStore *)self copyOfAllMessages];

  return [copyOfAllMessages mutableCopy];
}

- (id)copyMessagesMatchingText:(id)text options:(unsigned int)options
{
  v14[3] = *MEMORY[0x277D85DE8];
  v7 = [[MFMessageCriterion alloc] initWithType:34 qualifier:0 expression:text];
  v8 = [[MFMessageCriterion alloc] initWithType:9 qualifier:0 expression:text];
  v9 = [[MFMessageCriterion alloc] initWithType:1 qualifier:0 expression:text];
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

- (id)copyMessagesMatchingCriterion:(id)criterion options:(unsigned int)options
{
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{-[MFLibraryStore criterion](self, "criterion"), criterion, 0}];
  if ((options & 0x80) != 0)
  {
    [v6 addObject:{+[MFMessageCriterion messageIsDeletedCriterion:](MFMessageCriterion, "messageIsDeletedCriterion:", 0)}];
  }

  v7 = [MFMessageCriterion andCompoundCriterionWithCriteria:v6];

  v9 = [-[MFLibraryStore library](self "library")];
  [v9 makeObjectsPerformSelector:sel_setMessageStore_ withObject:self];

  return v9;
}

- (id)copyMessagesWithRemoteIDs:(id)ds options:(unsigned int)options inMailbox:(id)mailbox
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

- (unint64_t)_calculateFetchWindowWithAdditionalMultiple:(BOOL)multiple
{
  multipleCopy = multiple;
  _fetchWindowMultiple = [(MFLibraryStore *)self _fetchWindowMultiple];
  _fetchWindowMinimum = [(MFLibraryStore *)self _fetchWindowMinimum];
  v7 = [(MFLibraryStore *)self allNonDeletedCountIncludingServerSearch:0 andThreadSearch:0]/ _fetchWindowMultiple;
  v8 = ceilf(v7) * _fetchWindowMultiple;
  if (multipleCopy)
  {
    v9 = _fetchWindowMultiple;
  }

  else
  {
    v9 = 0;
  }

  if (_fetchWindowMinimum <= v9 + v8)
  {
    v10 = v9 + v8;
  }

  else
  {
    v10 = _fetchWindowMinimum;
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
  fetchWindow = [(MFLibraryStore *)self fetchWindow];
  if (fetchWindow >= [(MFLibraryStore *)self fetchWindowCap])
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

- (id)filterMessagesByMembership:(id)membership
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [membership countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    array = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(membership);
        }

        mailboxUid = self->super._mailboxUid;
        if (mailboxUid)
        {
          v11 = *(*(&v14 + 1) + 8 * i);
          if (mailboxUid == [v11 mailbox])
          {
            if (!array)
            {
              array = [MEMORY[0x277CBEB18] array];
            }

            [array addObject:v11];
          }
        }
      }

      v6 = [membership countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    array = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return array;
}

- (void)handleMessagesAdded:(id)added earliestReceivedDate:(id)date
{
  userInfo = [added userInfo];
  v7 = [userInfo objectForKey:@"messages"];
  v8 = [userInfo objectForKey:@"mailboxes"];
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];
  if (mailboxUid)
  {
    if ([v8 indexOfObject:mailboxUid] != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_7;
    }

    [(MFLibraryStore *)self criterion];
  }

  else
  {
    criterion = [(MFLibraryStore *)self criterion];
    if (criterion)
    {
      v7 = [(MFMessageLibrary *)self->_library filterContiguousMessages:v7 forCriterion:criterion options:3];
      goto LABEL_7;
    }
  }

  v7 = 0;
LABEL_7:
  if ([v7 count])
  {
    [(MFLibraryStore *)self addCountsForMessages:v7 shouldUpdateUnreadCount:0];

    [(MFLibraryStore *)self messagesWereAdded:v7 earliestReceivedDate:date];
  }
}

- (void)messagesWereAdded:(id)added earliestReceivedDate:(id)date
{
  [added makeObjectsPerformSelector:sel_setMessageStore_ withObject:self];
  v7.receiver = self;
  v7.super_class = MFLibraryStore;
  [(MFMailMessageStore *)&v7 messagesWereAdded:added earliestReceivedDate:date];
}

- (void)_handleFlagsChangedForMessages:(id)messages flags:(id)flags oldFlagsByMessage:(id)message
{
  v32 = *MEMORY[0x277D85DE8];
  type = [(MFMailboxUid *)self->super._mailboxUid type];
  [(MFLibraryStore *)self mf_lock];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = messages;
  v10 = [messages countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    v25 = type - 5;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        v15 = [objc_msgSend(message objectForKey:{v14), "intValue"}];
        v16 = v15;
        if (flags)
        {
          messageFlags = MFMessageFlagsByApplyingDictionary(v15, flags);
        }

        else
        {
          messageFlags = [v14 messageFlags];
        }

        v18 = messageFlags;
        if (((v16 >> 1) & 1) != ((messageFlags >> 1) & 1))
        {
          messageSize = [v14 messageSize];
          deletedMessageCount = self->super._deletedMessageCount;
          if ((v16 & 2) != 0)
          {
            self->super._deletedMessageCount = deletedMessageCount - 1;
            v21 = 56;
            v22 = (self->super._deletedMessagesSize - messageSize);
          }

          else
          {
            self->super._deletedMessageCount = deletedMessageCount + 1;
            self->super._deletedMessagesSize += messageSize;
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

- (void)handleMessageFlagsChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKey:@"mailboxes"];
  v6 = -[MFLibraryStore filterMessagesByMembership:](self, "filterMessagesByMembership:", [userInfo objectForKey:@"messages"]);
  if ([v6 count])
  {
    v7 = [userInfo objectForKey:@"flags"];
    v8 = [userInfo objectForKey:@"oldFlagsByMessage"];
    if (v8)
    {
      [(MFLibraryStore *)self _handleFlagsChangedForMessages:v6 flags:v7 oldFlagsByMessage:v8];
    }

    [(MFMailMessageStore *)self messageFlagsDidChange:v6 flags:v7];
  }

  else if (self->super._mailboxUid && [v5 containsObject:?])
  {
    v9 = [userInfo objectForKeyedSubscript:@"flags"];

    [(MFMailMessageStore *)self allMessageFlagsDidChange:v9];
  }
}

- (id)_memberMessagesWithCompactionNotification:(id)notification
{
  v21 = *MEMORY[0x277D85DE8];
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:@"messages"];
  v6 = [userInfo objectForKey:@"mailboxes"];
  if ([v5 count] && self->super._mailboxUid && objc_msgSend(v6, "indexOfObject:") != 0x7FFFFFFFFFFFFFFFLL && (v18 = 0u, v19 = 0u, v16 = 0u, v17 = 0u, (v7 = objc_msgSend(v5, "countByEnumeratingWithState:objects:count:", &v16, v20, 16)) != 0))
  {
    v8 = v7;
    array = 0;
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
          if (!array)
          {
            array = [MEMORY[0x277CBEB18] array];
          }

          [array addObject:v12];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    array = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return array;
}

- (void)handleMessagesCompacted:(id)compacted
{
  [(MFLibraryStore *)self mf_lock];
  v5 = [(MFLibraryStore *)self _memberMessagesWithCompactionNotification:compacted];
  if ([v5 count])
  {
    self->super._deletedMessagesSize = 0;
    self->super._deletedMessageCount = 0;
  }

  [(MFLibraryStore *)self mf_unlock];

  [(MFMailMessageStore *)self messagesWereCompacted:v5];
}

- (void)handleMessagesWillBeCompacted:(id)compacted
{
  v4 = [(MFLibraryStore *)self _memberMessagesWithCompactionNotification:compacted];

  [(MFMailMessageStore *)self messagesWillBeCompacted:v4];
}

- (void)dealloc
{
  [(MFLibraryStore *)self setLibrary:0];

  v3.receiver = self;
  v3.super_class = MFLibraryStore;
  [(MFMailMessageStore *)&v3 dealloc];
}

- (id)storeData:(id)data forMimePart:(id)part isComplete:(BOOL)complete
{
  completeCopy = complete;
  v9 = [objc_msgSend(part "mimeBody")];
  if (![v9 isLibraryMessage])
  {
    return 0;
  }

  v10 = [-[MFLibraryStore library](self "library")];
  [v10 appendData:data];
  [v10 done];

  return [v10 data];
}

- (void)deleteBodyDataForMessage:(id)message
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    library = self->_library;

    [(MFMessageLibrary *)library deleteDataForMessage:message];
  }
}

- (void)deleteMessages:(id)messages moveToTrash:(BOOL)trash
{
  trashCopy = trash;
  v63 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  Current = CFAbsoluteTimeGetCurrent();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v8 = [messages countByEnumeratingWithState:&v47 objects:v62 count:16];
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
          objc_enumerationMutation(messages);
        }

        v12 = *(*(&v47 + 1) + 8 * i);
        account = [v12 account];
        mailbox = [v12 mailbox];
        if (trashCopy)
        {
          v15 = mailbox;
          path = [account path];
          if (v15 != [account mailboxUidOfType:3 createIfNeeded:0])
          {
            if (![dictionary objectForKey:path])
            {
              [dictionary setObject:objc_msgSend(MEMORY[0x277CBEB18] forKey:{"array"), path}];
            }

            [objc_msgSend(dictionary objectForKey:{path), "addObject:", v12}];
          }
        }
      }

      v9 = [messages countByEnumeratingWithState:&v47 objects:v62 count:16];
    }

    while (v9);
  }

  v17 = [dictionary count];
  v18 = MEMORY[0x277CBEC38];
  v19 = 0x277CBE000uLL;
  if (v17)
  {
    v60 = @"MessageIsRead";
    v61 = MEMORY[0x277CBEC38];
    selfCopy3 = self;
    -[MFLibraryStore setFlagsFromDictionary:forMessages:](self, "setFlagsFromDictionary:forMessages:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1], messages);
    keyEnumerator = [dictionary keyEnumerator];
    nextObject = [keyEnumerator nextObject];
    v23 = array;
    if (nextObject)
    {
      nextObject2 = nextObject;
      do
      {
        v25 = [MailAccount accountWithPath:nextObject2];
        v26 = [(MailAccount *)v25 storeForMailboxUid:[(MailAccount *)v25 mailboxUidOfType:3 createIfNeeded:1]];
        if (v26)
        {
          v27 = v26;
          v28 = [dictionary objectForKey:nextObject2];
          v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v27 mf_lock];
          [v27 appendMessages:v28 unsuccessfulOnes:v29];
          [v27 mf_unlock];

          v23 = array;
        }

        nextObject2 = [keyEnumerator nextObject];
      }

      while (nextObject2);
    }

    if ([v23 count])
    {
      messagesCopy2 = [MEMORY[0x277CBEB18] array];
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v31 = [messages countByEnumeratingWithState:&v43 objects:v59 count:16];
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
              objc_enumerationMutation(messages);
            }

            v35 = *(*(&v43 + 1) + 8 * j);
            if ([v23 indexOfObject:v35] == 0x7FFFFFFFFFFFFFFFLL)
            {
              [messagesCopy2 addObject:v35];
            }
          }

          v32 = [messages countByEnumeratingWithState:&v43 objects:v59 count:16];
        }

        while (v32);
      }

      selfCopy3 = self;
      [(MFMailMessageStore *)self setFlag:@"MessageIsDeleted" state:0 forMessages:v23];
      v19 = 0x277CBE000;
    }

    else
    {
      messagesCopy2 = messages;
      v19 = 0x277CBE000uLL;
    }
  }

  else
  {
    messagesCopy2 = messages;
    selfCopy3 = self;
  }

  v57[0] = @"MessageIsRead";
  v57[1] = @"MessageIsDeleted";
  v58[0] = v18;
  v58[1] = v18;
  -[MFLibraryStore setFlagsFromDictionary:forMessages:](selfCopy3, "setFlagsFromDictionary:forMessages:", [*(v19 + 2752) dictionaryWithObjects:v58 forKeys:v57 count:2], messagesCopy2);
  v36 = CFAbsoluteTimeGetCurrent();
  v37 = MFLogGeneral();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    v39 = [messagesCopy2 count];
    v40 = [messagesCopy2 count];
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

- (void)setFlagsForAllMessagesFromDictionary:(id)dictionary
{
  library = self->_library;
  uRLString = [(MFLibraryStore *)self URLString];

  [(MFMessageLibrary *)library setFlagsFromDictionary:dictionary forMessagesInMailboxURLString:uRLString];
}

- (unint64_t)appendMessages:(id)messages unsuccessfulOnes:(id)ones newMessageIDs:(id)ds newMessages:(id)newMessages flagsToSet:(id)set
{
  if ([(MFLibraryStore *)self allowsAppend])
  {
    LOWORD(v16) = 1;
    v13 = [(MFMessageLibrary *)self->_library addMessages:messages withMailbox:[(MFMailMessageStore *)self mailboxUid] fetchBodies:1 newMessagesByOldMessage:0 remoteIDs:0 setFlags:0 clearFlags:0 messageFlagsForMessages:set copyFiles:v16 addPOPUIDs:0 dataSectionsByMessage:?];
    v14 = [v13 count];
    if (v14)
    {
      [ds addObjectsFromArray:{objc_msgSend(v13, "arrayByApplyingSelector:", sel_messageID)}];
      [newMessages addObjectsFromArray:v13];
      [(MFMailMessageStore *)self updateMessages:v13 updateNumberOfAttachments:0];
    }

    if (v14 == [messages count])
    {
      return 1;
    }
  }

  [ones addObjectsFromArray:messages];
  return 0;
}

- (BOOL)canCompact
{
  v5.receiver = self;
  v5.super_class = MFLibraryStore;
  canCompact = [(MFMailMessageStore *)&v5 canCompact];
  if (canCompact)
  {
    LOBYTE(canCompact) = [(MFMailMessageStore *)self isOpened];
  }

  return canCompact;
}

- (void)doCompact
{
  if ([(MFLibraryStore *)self canCompact])
  {
    uRLString = [(MFLibraryStore *)self URLString];
    if (uRLString)
    {
      if (self->super._deletedMessageCount)
      {
        v4 = uRLString;
        library = self->_library;

        [(MFMessageLibrary *)library compactMailbox:v4];
      }
    }
  }
}

- (void)compactMessages:(id)messages
{
  if ([messages count])
  {
    library = self->_library;

    [(MFMessageLibrary *)library compactMessages:messages];
  }
}

- (id)criterion
{
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];

  return [mailboxUid criterion];
}

- (id)URLString
{
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];

  return [mailboxUid URLString];
}

+ (BOOL)createEmptyStoreForPath:(id)path
{
  v4 = [path hasPrefix:@"/"];
  if (v4)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];

    LOBYTE(v4) = [defaultManager mf_makeCompletePath:path mode:448];
  }

  return v4;
}

+ (BOOL)storeAtPathIsWritable:(id)writable
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];

  return [defaultManager mf_canWriteToDirectoryAtPath:writable];
}

- (unint64_t)serverUnreadOnlyOnServerCount
{
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];

  return [mailboxUid serverUnreadOnlyOnServerCount];
}

- (unint64_t)unreadCount
{
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];

  return [mailboxUid unreadCount];
}

- (unint64_t)unreadCountMatchingCriterion:(id)criterion
{
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];

  return [mailboxUid unreadCountMatchingCriterion:criterion];
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

- (id)_cachedHeadersForMessage:(id)message valueIfNotPresent:(id)present
{
  if ([message isLibraryMessage])
  {
    v8.receiver = self;
    v8.super_class = MFLibraryStore;
    return [(MFLibraryStore *)&v8 _cachedHeadersForMessage:message valueIfNotPresent:present];
  }

  return present;
}

- (id)_cachedHeaderDataForMessage:(id)message valueIfNotPresent:(id)present
{
  if ([message isLibraryMessage])
  {
    v8.receiver = self;
    v8.super_class = MFLibraryStore;
    return [(MFLibraryStore *)&v8 _cachedHeaderDataForMessage:message valueIfNotPresent:present];
  }

  return present;
}

- (id)_cachedBodyDataContainerForMessage:(id)message valueIfNotPresent:(id)present
{
  if ([message isLibraryMessage])
  {
    v8.receiver = self;
    v8.super_class = MFLibraryStore;
    return [(MFLibraryStore *)&v8 _cachedBodyDataContainerForMessage:message valueIfNotPresent:present];
  }

  return present;
}

- (void)purgeMessagesBeyondLimit:(unint64_t)limit keepingMessage:(id)message
{
  v7 = -[MFMessageLibrary nonDeletedCountForMailbox:](self->_library, "nonDeletedCountForMailbox:", [-[MFMailMessageStore mailboxUid](self "mailboxUid")]);
  if (v7 > limit)
  {
    if (message)
    {
      v8 = 144;
    }

    else
    {
      v8 = 128;
    }

    v9 = [(MFLibraryStore *)self copyOfMessagesInRange:limit options:v7 - limit, v8];
    if (message)
    {
      v12 = v9;
      v10 = [v9 indexOfObject:message];
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

- (BOOL)hasMessageForAccount:(id)account
{
  v5 = -[MFMessageLibrary nonDeletedCountForMailbox:](self->_library, "nonDeletedCountForMailbox:", [-[MFMailMessageStore mailboxUid](self "mailboxUid")]);
  if (v5)
  {
    v7.receiver = self;
    v7.super_class = MFLibraryStore;
    LOBYTE(v5) = [(MFMailMessageStore *)&v7 hasMessageForAccount:account];
  }

  return v5;
}

- (void)_queueMessagesAdded:(id)added
{
  v4 = 0;
  [-[MFLibraryStore pep_getInvocation:](self pep_getInvocation:{&v4), "handleMessagesAdded:earliestReceivedDate:", added, self->_earliestReceivedDate}];
  [v4 retainArguments];
  [(MFLibraryStore *)self _addInvocationToQueue:v4];
}

- (void)_queueMessageFlagsChanged:(id)changed
{
  v4 = [MEMORY[0x277CBEAE8] mf_invocationWithSelector:sel_handleMessageFlagsChanged_ target:self object:changed];

  [(MFLibraryStore *)self _addInvocationToQueue:v4];
}

- (void)_queueMessagesWillBeCompacted:(id)compacted
{
  v4 = [MEMORY[0x277CBEAE8] mf_invocationWithSelector:sel_handleMessagesWillBeCompacted_ target:self object:compacted];

  [(MFLibraryStore *)self _addInvocationToQueue:v4];
}

- (void)_queueMessagesWereCompacted:(id)compacted
{
  v4 = [MEMORY[0x277CBEAE8] mf_invocationWithSelector:sel_handleMessagesCompacted_ target:self object:compacted];

  [(MFLibraryStore *)self _addInvocationToQueue:v4];
}

- (BOOL)hasCompleteDataForMimePart:(id)part
{
  v6.receiver = self;
  v6.super_class = MFLibraryStore;
  return [(MFLibraryStore *)&v6 hasCompleteDataForMimePart:?]|| [(MFMessageLibrary *)self->_library hasCompleteDataForMimePart:part];
}

@end