@interface MFLibraryStore
+ (id)attachmentInfoCalculationScheduler;
+ (id)sharedInstance;
+ (id)storeWithMailbox:(id)mailbox;
- (BOOL)allowsAppend;
- (BOOL)dataForMimePart:(id)part inRange:(_NSRange)range isComplete:(BOOL *)complete withConsumer:(id)consumer downloadIfNecessary:(BOOL)necessary didDownload:(BOOL *)download;
- (BOOL)hasCompleteDataForMimePart:(id)part;
- (BOOL)hasMessageForAccount:(id)account;
- (BOOL)shouldArchive;
- (BOOL)shouldDeleteInPlace;
- (BOOL)shouldDownloadBodyDataForMessage:(id)message;
- (BOOL)shouldGrowFetchWindow;
- (MFLibraryStore)initWithCriterion:(id)criterion mailbox:(id)mailbox readOnly:(BOOL)only;
- (NSString)URLString;
- (id)_cachedBodyDataContainerForMessage:(id)message valueIfNotPresent:(id)present;
- (id)_cachedHeaderDataForMessage:(id)message valueIfNotPresent:(id)present;
- (id)_cachedHeadersForMessage:(id)message valueIfNotPresent:(id)present;
- (id)_copyDataFromMimePart:(id)part threshold:(unsigned int)threshold downloadIfNecessary:(BOOL)necessary;
- (id)_fetchBodyDataForMessage:(id)message andHeaderDataIfReadilyAvailable:(id *)available downloadIfNecessary:(BOOL)necessary partial:(BOOL *)partial;
- (id)_memberMessagesWithCompactionNotification:(id)notification;
- (id)bodyDataForMessage:(id)message isComplete:(BOOL *)complete isPartial:(BOOL *)partial downloadIfNecessary:(BOOL)necessary;
- (id)copyMessagesMatchingCriterion:(id)criterion options:(unsigned int)options;
- (id)copyMessagesWithRemoteIDs:(id)ds options:(unsigned int)options inMailbox:(id)mailbox;
- (id)criterion;
- (id)dataPathForMessage:(id)message part:(id)part;
- (id)dateOfOldestNonIndexedNonSearchResultMessage;
- (id)description;
- (id)filterMessagesByMembership:(id)membership;
- (id)fullBodyDataForMessage:(id)message andHeaderDataIfReadilyAvailable:(id *)available isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary usePartDatas:(BOOL)datas didDownload:(BOOL *)download;
- (id)messageForRemoteID:(id)d;
- (id)newObjectCache;
- (id)serverSearchResults;
- (id)setFlagsFromDictionary:(id)dictionary forMessages:(id)messages;
- (id)setFlagsLocallyFromDictionary:(id)dictionary forMessages:(id)messages;
- (id)storeData:(id)data forMimePart:(id)part isComplete:(BOOL)complete;
- (int64_t)archiveDestination;
- (int64_t)fetchMobileSynchronously:(unint64_t)lastFetchCount preservingUID:(id)d options:(unint64_t)options;
- (int64_t)fetchNumMessages:(unint64_t)messages preservingUID:(id)d options:(unint64_t)options;
- (unint64_t)_calculateFetchWindowWithAdditionalMultiple:(BOOL)multiple;
- (unint64_t)_fetchWindowMinimum;
- (unint64_t)_fetchWindowMultiple;
- (unint64_t)fetchWindow;
- (unint64_t)fetchWindowCap;
- (unint64_t)growFetchWindow;
- (unint64_t)serverUnreadOnlyOnServerCount;
- (unint64_t)totalCount;
- (unint64_t)unreadCount;
- (void)_addInvocationToQueue:(id)queue;
- (void)_calcAttachmentInfoForMessage:(id)message body:(id)body;
- (void)_flushAllMessageData;
- (void)_handleFlagsChangedForMessages:(id)messages flags:(id)flags oldFlagsByMessage:(id)message;
- (void)_queueMessageFlagsChanged:(id)changed;
- (void)_queueMessagesAdded:(id)added;
- (void)_queueMessagesWereCompacted:(id)compacted;
- (void)_queueMessagesWillBeCompacted:(id)compacted;
- (void)addCountsForMessages:(id)messages shouldUpdateUnreadCount:(BOOL)count;
- (void)allMessageFlagsDidChange:(id)change;
- (void)compactMessages:(id)messages;
- (void)dealloc;
- (void)deleteMessages:(id)messages moveToTrash:(BOOL)trash;
- (void)doCompact;
- (void)fetchBodyDataForMessage:(id)message completionHandler:(id)handler;
- (void)handleMessageFlagsChanged:(id)changed;
- (void)handleMessagesAdded:(id)added earliestReceivedDate:(id)date;
- (void)handleMessagesCompacted:(id)compacted;
- (void)handleMessagesWillBeCompacted:(id)compacted;
- (void)invalidateFetchWindow;
- (void)messageFlagsDidChange:(id)change flags:(id)flags;
- (void)messagesWereAdded:(id)added;
- (void)messagesWereAdded:(id)added earliestReceivedDate:(id)date;
- (void)messagesWereCompacted:(id)compacted;
- (void)messagesWillBeCompacted:(id)compacted;
- (void)openSynchronously;
- (void)purgeMessagesBeyondLimit:(unint64_t)limit;
- (void)setLibrary:(id)library;
- (void)willFetchMessages;
@end

@implementation MFLibraryStore

- (id)criterion
{
  mailbox = [(MFLibraryStore *)self mailbox];
  criterion = [mailbox criterion];

  return criterion;
}

- (id)newObjectCache
{
  v2 = [objc_alloc(MEMORY[0x1E69AD700]) initWithCapacity:32];
  v3 = objc_opt_class();
  [v2 setKeyGenerator:&__block_literal_global_119];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__MFLibraryStore_newObjectCache__block_invoke_2;
  v5[3] = &__block_descriptor_40_e11_q24__0_8_16lu32l8;
  v5[4] = v3;
  [v2 setComparator:v5];
  return v2;
}

- (void)invalidateFetchWindow
{
  [(MFLibraryStore *)self mf_lock];
  self->_fetchWindow = 0;

  [(MFLibraryStore *)self mf_unlock];
}

- (void)dealloc
{
  [(MFLibraryStore *)self setLibrary:0];
  v3.receiver = self;
  v3.super_class = MFLibraryStore;
  [(MFLibraryStore *)&v3 dealloc];
}

+ (id)sharedInstance
{
  pthread_once(&sSharedInstanceInitializer, initializeSharedInstance);

  return [self sharedInstanceIfExists];
}

+ (id)attachmentInfoCalculationScheduler
{
  if (attachmentInfoCalculationScheduler_onceToken != -1)
  {
    +[MFLibraryStore attachmentInfoCalculationScheduler];
  }

  v3 = attachmentInfoCalculationScheduler_sInstance;

  return v3;
}

void __52__MFLibraryStore_attachmentInfoCalculationScheduler__block_invoke()
{
  v0 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.message.library.MFLibraryStore.attachmentInfoCalculationScheduler"];
  v1 = attachmentInfoCalculationScheduler_sInstance;
  attachmentInfoCalculationScheduler_sInstance = v0;
}

- (MFLibraryStore)initWithCriterion:(id)criterion mailbox:(id)mailbox readOnly:(BOOL)only
{
  criterionCopy = criterion;
  mailboxCopy = mailbox;
  v15.receiver = self;
  v15.super_class = MFLibraryStore;
  v10 = [(MFLibraryStore *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_criterion, criterion);
    objc_storeStrong(&v11->_mailbox, mailbox);
    account = [mailboxCopy account];
    account = v11->_account;
    v11->_account = account;

    *&v11->_flags |= 0x100u;
  }

  return v11;
}

+ (id)storeWithMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v4 = [[MFLibraryStore alloc] initWithMailbox:mailboxCopy];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  mailbox = [(MFLibraryStore *)self mailbox];
  v6 = [v3 stringWithFormat:@"<%@: %p (uid=%@)>", v4, self, mailbox];

  return v6;
}

- (void)_flushAllMessageData
{
  [(MFLibraryStore *)self mf_lock];
  self->_deletedMessageCount = 0;
  self->_deletedMessagesSize = 0;
  _MFLockGlobalLock();
  v3 = *MEMORY[0x1E69AD7D0];
  v4 = *(&self->super.super.isa + v3);
  *(&self->super.super.isa + v3) = 0;

  _MFUnlockGlobalLock();
  [(MFLibraryStore *)self mf_unlock];
  v5.receiver = self;
  v5.super_class = MFLibraryStore;
  [(MFLibraryStore *)&v5 _flushAllMessageData];
}

- (void)setLibrary:(id)library
{
  libraryCopy = library;
  if (self->_library != libraryCopy)
  {
    v8 = libraryCopy;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = defaultCenter;
    if (self->_library)
    {
      [defaultCenter removeObserver:self name:0 object:?];
    }

    objc_storeStrong(&self->_library, library);
    if (v8)
    {
      [v7 addObserver:self selector:sel__queueMessagesAdded_ name:@"MailMessageStoreMessagesAdded" object:self->_library];
      [v7 addObserver:self selector:sel__queueMessageFlagsChanged_ name:@"MailMessageStoreMessageFlagsChanged" object:self->_library];
      [v7 addObserver:self selector:sel__queueMessagesWillBeCompacted_ name:@"MailMessageStoreMessagesWillBeCompacted" object:self->_library];
      [v7 addObserver:self selector:sel__queueMessagesWereCompacted_ name:@"MailMessageStoreMessagesRemoved" object:self->_library];
    }

    [(MFLibraryStore *)self invalidateFetchWindow];

    libraryCopy = v8;
  }
}

- (void)addCountsForMessages:(id)messages shouldUpdateUnreadCount:(BOOL)count
{
  messagesCopy = messages;
  v5 = [messagesCopy count];
  [(MFLibraryStore *)self mf_lock];
  if (v5)
  {
    v6 = v5 - 1;
    do
    {
      v7 = [messagesCopy objectAtIndex:v6];
      messageFlags = [v7 messageFlags];
      messageSize = [v7 messageSize];
      if ((messageFlags & 2) != 0)
      {
        ++self->_deletedMessageCount;
        self->_deletedMessagesSize += messageSize;
      }

      --v6;
    }

    while (v6 != -1);
  }

  [(MFLibraryStore *)self mf_unlock];
}

- (void)_addInvocationToQueue:(id)queue
{
  queueCopy = queue;
  v5 = queueCopy;
  if (_addInvocationToQueue__onceToken == -1)
  {
    v4 = queueCopy;
  }

  else
  {
    [MFLibraryStore _addInvocationToQueue:];
    v4 = v5;
  }

  [_addInvocationToQueue__sInvocationQueue addInvocation:v4];
}

uint64_t __40__MFLibraryStore__addInvocationToQueue___block_invoke()
{
  v0 = objc_alloc_init(MFInvocationQueue);
  v1 = _addInvocationToQueue__sInvocationQueue;
  _addInvocationToQueue__sInvocationQueue = v0;

  v2 = _addInvocationToQueue__sInvocationQueue;

  return [v2 setThreadRecycleTimeout:60.0];
}

- (void)openSynchronously
{
  [(MFLibraryStore *)self mf_lock];
  if (self->_state > 2)
  {

    [(MFLibraryStore *)self mf_unlock];
  }

  else
  {
    self->_state = 2;
    [(MFLibraryStore *)self mf_unlock];
    self->_state = 3;
  }
}

- (unint64_t)totalCount
{
  library = self->_library;
  criterion = [(MFLibraryStore *)self criterion];
  v4 = [(MFMailMessageLibrary *)library groupedMessagesCountForCriterion:criterion groupBy:0];

  v5 = [v4 objectForKeyedSubscript:&stru_1F273A5E0];
  integerValue = [v5 integerValue];

  return integerValue;
}

- (id)copyMessagesMatchingCriterion:(id)criterion options:(unsigned int)options
{
  criterionCopy = criterion;
  v7 = objc_alloc(MEMORY[0x1E695DF70]);
  criterion = [(MFLibraryStore *)self criterion];
  v9 = [v7 initWithObjects:{criterion, criterionCopy, 0}];

  if ((options & 0x800) != 0)
  {
    v10 = [MFMessageCriterion messageIsDeletedCriterion:0];
    [v9 addObject:v10];
  }

  v11 = [MFMessageCriterion andCompoundCriterionWithCriteria:v9];
  library = [(MFLibraryStore *)self library];
  v13 = [library messagesMatchingCriterion:v11 options:options | 3];

  [v13 makeObjectsPerformSelector:sel_setMessageStore_ withObject:self];
  return v13;
}

- (id)copyMessagesWithRemoteIDs:(id)ds options:(unsigned int)options inMailbox:(id)mailbox
{
  dsCopy = ds;
  mailboxCopy = mailbox;
  library = [(MFLibraryStore *)self library];
  uRLString = [mailboxCopy URLString];
  v12 = [library copyMessagesWithRemoteIDs:dsCopy options:options | 3 inRemoteMailbox:uRLString];

  [v12 makeObjectsPerformSelector:sel_setMessageStore_ withObject:self];
  return v12;
}

- (id)serverSearchResults
{
  library = [(MFLibraryStore *)self library];
  uRLString = [(MFLibraryStore *)self URLString];
  v5 = [library serverSearchResultMessagesForMailbox:uRLString];

  [v5 makeObjectsPerformSelector:sel_setMessageStore_ withObject:self];

  return v5;
}

- (id)dateOfOldestNonIndexedNonSearchResultMessage
{
  [(MFLibraryStore *)self mf_lock];
  library = [(MFLibraryStore *)self library];
  uRLString = [(MFLibraryStore *)self URLString];
  v5 = [library dateOfOldestNonIndexedNonSearchResultMessageInMailbox:uRLString];

  [(MFLibraryStore *)self mf_unlock];

  return v5;
}

- (void)willFetchMessages
{
  library = [(MFLibraryStore *)self library];
  uRLString = [(MFLibraryStore *)self URLString];
  v4 = [library dateOfOldestNonSearchResultMessageInMailbox:uRLString];
  [(MFLibraryStore *)self setEarliestReceivedDate:v4];
}

- (unint64_t)_fetchWindowMultiple
{
  v2 = +[MFNetworkController sharedInstance];
  if ([v2 isFatPipe])
  {
    v3 = 250;
  }

  else if ([v2 is4GConnection])
  {
    v3 = 250;
  }

  else
  {
    v3 = 100;
  }

  return v3;
}

- (unint64_t)_fetchWindowMinimum
{
  v2 = +[MFNetworkController sharedInstance];
  if ([v2 isFatPipe] & 1) != 0 || (objc_msgSend(v2, "is4GConnection"))
  {
    v3 = 3000;
  }

  else if ([v2 is3GConnection])
  {
    v3 = 100;
  }

  else
  {
    v3 = 50;
  }

  return v3;
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

- (BOOL)shouldGrowFetchWindow
{
  fetchWindow = [(MFLibraryStore *)self fetchWindow];
  if (fetchWindow >= [(MFLibraryStore *)self fetchWindowCap])
  {
    LOBYTE(hasMoreFetchableMessages) = 0;
  }

  else
  {
    hasMoreFetchableMessages = [(MFLibraryStore *)self hasMoreFetchableMessages];
    if (hasMoreFetchableMessages)
    {
      serverMessageCount = [(MFLibraryStore *)self serverMessageCount];
      LOBYTE(hasMoreFetchableMessages) = serverMessageCount > [(MFLibraryStore *)self fetchWindow];
    }
  }

  return hasMoreFetchableMessages;
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
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v3 = [em_userDefaults BOOLForKey:@"FetchWithoutLimits"];

  if (v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return 10000;
  }
}

- (int64_t)fetchMobileSynchronously:(unint64_t)lastFetchCount preservingUID:(id)d options:(unint64_t)options
{
  v49 = *MEMORY[0x1E69E9840];
  dCopy = d;
  kdebug_trace();
  v7 = +[MFActivityMonitor currentMonitor];
  mailbox = [(MFLibraryStore *)self mailbox];
  [v7 setMailbox:mailbox];

  v9 = +[MFActivityMonitor currentMonitor];
  [v9 addReason:@"MonitoredActivityReasonFetching"];

  mailbox2 = [(MFLibraryStore *)self mailbox];
  uRLString = [mailbox2 URLString];

  v40 = uRLString;
  v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", uRLString];
  v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@|%lu|%@|%d", v43, lastFetchCount, dCopy, (options >> 1) & 1];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:0xFFFFFFFFLL];
  account = [(MFLibraryStore *)self account];
  v46 = v12;
  v14 = [account willPerformActionForChokePoint:v43 coalescePoint:v44 result:&v46];
  v15 = v46;

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14;
  }

  if (v16 == 1)
  {
    do
    {
      account2 = [(MFLibraryStore *)self account];
      v45 = 0;
      LOBYTE(v14) = [account2 willPerformActionForChokePoint:v43 coalescePoint:v44 result:&v45];
      v15 = v45;

      if (v15)
      {
        v18 = 0;
      }

      else
      {
        v18 = v14;
      }
    }

    while ((v18 & 1) != 0);
  }

  if (v14)
  {
    v19 = v15;
  }

  else
  {
    v20 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:v40];
    v37 = v20;
    v21 = MFAutoFetchLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v48 = v20;
      _os_log_impl(&dword_1B0389000, v21, OS_LOG_TYPE_DEFAULT, "Issuing fetch for mailbox: %@", buf, 0xCu);
    }

    v22 = +[MFActivityMonitor currentMonitor];
    startedFetch = [v22 startedFetch];

    if (startedFetch)
    {
      startedFetch[2]();
    }

    account3 = [(MFLibraryStore *)self account];
    v24 = account3;
    if (account3)
    {
      v39 = [account3 powerAssertionIdentifierWithPrefix:?];
    }

    else
    {
      v39 = @"com.apple.message.fetchMobileSynchronously";
    }

    v25 = +[MFPowerController sharedInstance];
    [v25 retainAssertionWithIdentifier:v39 withAccount:v24];

    [(MFLibraryStore *)self mf_lock];
    if (lastFetchCount)
    {
      self->_lastFetchCount = lastFetchCount;
    }

    else
    {
      lastFetchCount = self->_lastFetchCount;
    }

    [(MFLibraryStore *)self mf_unlock];
    v26 = -2;
    do
    {
      v27 = [(MFLibraryStore *)self fetchNumMessages:lastFetchCount preservingUID:dCopy options:options];
      if ((v27 & 0x8000000000000000) == 0)
      {
        break;
      }

      v28 = +[MFActivityMonitor currentMonitor];
      error = [v28 error];
      v30 = [v24 shouldFetchAgainWithError:error foregroundRequest:(options >> 4) & 1];

      v31 = v26++ ? v30 : 0;
    }

    while ((v31 & 1) != 0);
    v19 = [MEMORY[0x1E696AD98] numberWithInteger:v27];

    account4 = [(MFLibraryStore *)self account];
    [account4 didFinishActionForChokePoint:v43 coalescePoint:v44 withResult:v19];

    v33 = +[MFPowerController sharedInstance];
    [v33 releaseAssertionWithIdentifier:v39];
  }

  kdebug_trace();
  integerValue = [v19 integerValue];

  v35 = *MEMORY[0x1E69E9840];
  return integerValue;
}

- (int64_t)fetchNumMessages:(unint64_t)messages preservingUID:(id)d options:(unint64_t)options
{
  v5 = [MFActivityMonitor currentMonitor:messages];
  [v5 reset];

  return 0;
}

- (id)messageForRemoteID:(id)d
{
  dCopy = d;
  library = self->_library;
  uRLString = [(MFLibraryStore *)self URLString];
  v7 = [(MFMailMessageLibrary *)library messageWithMessageID:dCopy options:0 inMailbox:uRLString];

  [v7 setMessageStore:self];

  return v7;
}

- (id)filterMessagesByMembership:(id)membership
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  membershipCopy = membership;
  array = 0;
  v6 = [membershipCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(membershipCopy);
        }

        mailbox = self->_mailbox;
        if (mailbox)
        {
          v10 = *(*(&v15 + 1) + 8 * i);
          mailbox = [v10 mailbox];
          v12 = mailbox == mailbox;

          if (v12)
          {
            if (!array)
            {
              array = [MEMORY[0x1E695DF70] array];
            }

            [array addObject:v10];
          }
        }
      }

      v6 = [membershipCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];

  return array;
}

- (void)handleMessagesAdded:(id)added earliestReceivedDate:(id)date
{
  dateCopy = date;
  userInfo = [added userInfo];
  v7 = [userInfo objectForKey:@"messages"];
  v8 = [userInfo objectForKey:@"mailboxes"];
  mailbox = [(MFLibraryStore *)self mailbox];
  if (mailbox && [v8 indexOfObject:mailbox] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v7;
    v13 = 0;
  }

  else
  {
    criterion = [(MFLibraryStore *)self criterion];
    v11 = criterion;
    v12 = 0;
    if (mailbox || !criterion)
    {
      v13 = criterion;
    }

    else
    {
      [(MFMailMessageLibrary *)self->_library filterContiguousMessages:v7 forCriterion:criterion options:3];
      v12 = v13 = v11;
    }
  }

  if ([v12 count])
  {
    [(MFLibraryStore *)self addCountsForMessages:v12 shouldUpdateUnreadCount:0];
    [(MFLibraryStore *)self messagesWereAdded:v12 earliestReceivedDate:dateCopy];
  }
}

- (void)messagesWereAdded:(id)added
{
  addedCopy = added;
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  [(MFLibraryStore *)self messagesWereAdded:addedCopy earliestReceivedDate:distantPast];
}

- (void)messagesWereAdded:(id)added earliestReceivedDate:(id)date
{
  addedCopy = added;
  [addedCopy makeObjectsPerformSelector:sel_setMessageStore_ withObject:self];
  generationNumber = self->_generationNumber;
  if (generationNumber == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 1;
  }

  else
  {
    v6 = generationNumber + 1;
  }

  self->_generationNumber = v6;
  if ([addedCopy count])
  {
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{addedCopy, @"messages", 0}];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MailMessageStoreMessagesAdded" object:self userInfo:v7];
  }
}

- (void)messagesWillBeCompacted:(id)compacted
{
  v9[1] = *MEMORY[0x1E69E9840];
  compactedCopy = compacted;
  if ([compactedCopy count])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = @"messages";
    v9[0] = compactedCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [defaultCenter postNotificationName:@"MailMessageStoreMessagesWillBeCompacted" object:self userInfo:v6];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)messagesWereCompacted:(id)compacted
{
  v9[1] = *MEMORY[0x1E69E9840];
  compactedCopy = compacted;
  if ([compactedCopy count])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = @"messages";
    v9[0] = compactedCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [defaultCenter postNotificationName:@"MailMessageStoreMessagesRemoved" object:self userInfo:v6];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)messageFlagsDidChange:(id)change flags:(id)flags
{
  changeCopy = change;
  flagsCopy = flags;
  v7 = flagsCopy;
  if (changeCopy)
  {
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"messages", flagsCopy, @"flags", 0}];
  }

  else
  {
    v8 = 0;
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MailMessageStoreMessageFlagsChanged" object:self userInfo:v8];
}

- (void)allMessageFlagsDidChange:(id)change
{
  v9[1] = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v8 = @"flags";
  v9[0] = changeCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MailMessageStoreMessageFlagsChanged" object:self userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_handleFlagsChangedForMessages:(id)messages flags:(id)flags oldFlagsByMessage:(id)message
{
  v28 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  flagsCopy = flags;
  messageCopy = message;
  [(MFLibraryStore *)self mf_lock];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = messagesCopy;
  v11 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = [messageCopy objectForKey:v14];
        intValue = [v15 intValue];

        if (flagsCopy)
        {
          messageFlags = MFMessageFlagsByApplyingDictionary(intValue, flagsCopy);
        }

        else
        {
          messageFlags = [v14 messageFlags];
        }

        if (((intValue >> 1) & 1) != ((messageFlags >> 1) & 1))
        {
          messageSize = [v14 messageSize];
          deletedMessageCount = self->_deletedMessageCount;
          if ((intValue & 2) != 0)
          {
            self->_deletedMessageCount = deletedMessageCount - 1;
            v20 = self->_deletedMessagesSize - messageSize;
          }

          else
          {
            self->_deletedMessageCount = deletedMessageCount + 1;
            v20 = self->_deletedMessagesSize + messageSize;
          }

          self->_deletedMessagesSize = v20;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  [(MFLibraryStore *)self mf_unlock];
  v21 = *MEMORY[0x1E69E9840];
}

- (void)handleMessageFlagsChanged:(id)changed
{
  userInfo = [changed userInfo];
  v4 = [userInfo objectForKey:@"mailboxes"];
  v5 = [userInfo objectForKey:@"messages"];
  v6 = [(MFLibraryStore *)self filterMessagesByMembership:v5];

  if ([v6 count])
  {
    v7 = [userInfo objectForKey:@"flags"];
    v8 = [userInfo objectForKey:@"oldFlagsByMessage"];
    if (v8)
    {
      [(MFLibraryStore *)self _handleFlagsChangedForMessages:v6 flags:v7 oldFlagsByMessage:v8];
    }

    [(MFLibraryStore *)self messageFlagsDidChange:v6 flags:v7];

    goto LABEL_5;
  }

  if (self->_mailbox && [v4 containsObject:?])
  {
    v7 = [userInfo objectForKeyedSubscript:@"flags"];
    [(MFLibraryStore *)self allMessageFlagsDidChange:v7];
LABEL_5:
  }
}

- (id)_memberMessagesWithCompactionNotification:(id)notification
{
  v25 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v4 = [userInfo objectForKey:@"messages"];
  v19 = v4;
  v5 = [userInfo objectForKey:@"mailboxes"];
  if ([v4 count] && self->_mailbox && objc_msgSend(v5, "indexOfObject:") != 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v4;
    array = 0;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          mailbox = self->_mailbox;
          mailbox = [v14 mailbox];
          LODWORD(mailbox) = mailbox == mailbox;

          if (mailbox)
          {
            if (!array)
            {
              array = [MEMORY[0x1E695DF70] array];
            }

            [array addObject:v14];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }
  }

  else
  {
    array = 0;
  }

  v7 = array;

  v8 = *MEMORY[0x1E69E9840];
  return array;
}

- (void)handleMessagesCompacted:(id)compacted
{
  compactedCopy = compacted;
  [(MFLibraryStore *)self mf_lock];
  v4 = [(MFLibraryStore *)self _memberMessagesWithCompactionNotification:compactedCopy];
  if ([v4 count])
  {
    self->_deletedMessagesSize = 0;
    self->_deletedMessageCount = 0;
  }

  [(MFLibraryStore *)self mf_unlock];
  [(MFLibraryStore *)self messagesWereCompacted:v4];
}

- (void)handleMessagesWillBeCompacted:(id)compacted
{
  v4 = [(MFLibraryStore *)self _memberMessagesWithCompactionNotification:compacted];
  [(MFLibraryStore *)self messagesWillBeCompacted:?];
}

- (BOOL)shouldDownloadBodyDataForMessage:(id)message
{
  messageCopy = message;
  summary = [messageCopy summary];
  if (summary)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [messageCopy isMessageContentsLocallyAvailable] ^ 1;
  }

  return v5;
}

- (id)_fetchBodyDataForMessage:(id)message andHeaderDataIfReadilyAvailable:(id *)available downloadIfNecessary:(BOOL)necessary partial:(BOOL *)partial
{
  messageCopy = message;
  v10 = +[MFActivityMonitor currentMonitor];
  [v10 recordTransportType:1];

  v11 = [(MFMailMessageLibrary *)self->_library bodyDataForMessage:messageCopy andHeaderDataIfReadilyAvailable:available];
  if (partial)
  {
    *partial = 1;
  }

  return v11;
}

- (BOOL)dataForMimePart:(id)part inRange:(_NSRange)range isComplete:(BOOL *)complete withConsumer:(id)consumer downloadIfNecessary:(BOOL)necessary didDownload:(BOOL *)download
{
  necessaryCopy = necessary;
  length = range.length;
  location = range.location;
  v66 = *MEMORY[0x1E69E9840];
  partCopy = part;
  consumerCopy = consumer;
  mimeBody = [partCopy mimeBody];
  message = [mimeBody message];

  v15 = MFLogGeneral();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    messageID = [message messageID];
    partNumber = [partCopy partNumber];
    *buf = 138543618;
    v61 = messageID;
    v62 = 2114;
    v63 = partNumber;
    _os_log_impl(&dword_1B0389000, v15, OS_LOG_TYPE_INFO, "#CacheLoads requesting data for MIME part %{public}@:%{public}@", buf, 0x16u);
  }

  if (!message)
  {
    v23 = MFLogGeneral();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      [MFLibraryStore dataForMimePart:v23 inRange:? isComplete:? withConsumer:? downloadIfNecessary:? didDownload:?];
    }

    goto LABEL_17;
  }

  parentPart = [partCopy parentPart];
  if (parentPart)
  {
    v19 = 0;
  }

  else
  {
    v19 = length == 0x7FFFFFFFFFFFFFFFLL;
  }

  v20 = v19;

  if (!v20)
  {
    v24 = +[MFActivityMonitor currentMonitor];
    [v24 recordTransportType:1];

    v56 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:message valueIfNotPresent:0];
    if (v56)
    {
      v25 = MEMORY[0x1E69AD7B8];
      if (*&v56[*MEMORY[0x1E69AD7B8]])
      {
        v26 = MFLogGeneral();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          messageID2 = [message messageID];
          partNumber2 = [partCopy partNumber];
          *buf = 138543618;
          v61 = messageID2;
          v62 = 2114;
          v63 = partNumber2;
          _os_log_impl(&dword_1B0389000, v26, OS_LOG_TYPE_INFO, "#CacheLoads found full cached data for %{public}@:%{public}@", buf, 0x16u);
        }

        v29 = partDataFromFullBodyDataWithUnixLineEndings(*&v56[*v25], message, partCopy, complete);
        if (v29)
        {
          v30 = v56;
          [consumerCopy appendData:v29];
LABEL_33:

          goto LABEL_34;
        }
      }
    }

    if (!location)
    {
      library = [(MFLibraryStore *)self library];
      v35 = [library dataForMimePart:partCopy isComplete:complete];

      if (v35)
      {
        v36 = MFLogGeneral();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          messageID3 = [message messageID];
          partNumber3 = [partCopy partNumber];
          *buf = 138543618;
          v61 = messageID3;
          v62 = 2114;
          v63 = partNumber3;
          _os_log_impl(&dword_1B0389000, v36, OS_LOG_TYPE_INFO, "#CacheLoads found part data in database %{public}@:%{public}@", buf, 0x16u);
        }

        v30 = v56;
        [consumerCopy appendData:v35];
        v29 = v35;
        goto LABEL_33;
      }
    }

    v29 = partDataFromFullBodyData(self, message, partCopy, complete, 0, download);
    if (v29)
    {
      v31 = MFLogGeneral();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        messageID4 = [message messageID];
        partNumber4 = [partCopy partNumber];
        *buf = 138543618;
        v61 = messageID4;
        v62 = 2114;
        v63 = partNumber4;
        _os_log_impl(&dword_1B0389000, v31, OS_LOG_TYPE_INFO, "#CacheLoads extracted part data from full body data in database %{public}@:%{public}@", buf, 0x16u);
      }

      v30 = v56;
      [consumerCopy appendData:v29];
      goto LABEL_33;
    }

    type = [partCopy type];
    v42 = [type isEqualToString:@"multipart"];

    if ((necessaryCopy & ~v42) != 0)
    {
      v43 = MFLogGeneral();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        messageID5 = [message messageID];
        partNumber5 = [partCopy partNumber];
        *buf = 138543618;
        v61 = messageID5;
        v62 = 2114;
        v63 = partNumber5;
        _os_log_impl(&dword_1B0389000, v43, OS_LOG_TYPE_INFO, "#CacheLoads downloading part data from server %{public}@:%{public}@", buf, 0x16u);
      }

      consumerCopy = [(MFLibraryStore *)self _fetchDataForMimePart:partCopy range:location isComplete:length consumer:complete, consumerCopy];
      v47 = consumerCopy;
      if (download)
      {
        *download = consumerCopy;
      }

      v48 = MFLogGeneral();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        if (v47)
        {
          v49 = @"SUCCESS";
        }

        else
        {
          v49 = @"FAILED";
        }

        messageID6 = [message messageID];
        partNumber6 = [partCopy partNumber];
        *buf = 138412802;
        v61 = v49;
        v62 = 2114;
        v63 = messageID6;
        v64 = 2114;
        v65 = partNumber6;
        _os_log_impl(&dword_1B0389000, v48, OS_LOG_TYPE_INFO, "#CacheLoads %@ downloading part data from server %{public}@:%{public}@", buf, 0x20u);
      }
    }

    else
    {
      v47 = 0;
    }

    if (!v47 && necessaryCopy)
    {
      v52 = partDataFromFullBodyData(self, message, partCopy, complete, 1, download);
      if (v52)
      {
        v53 = MFLogGeneral();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          messageID7 = [message messageID];
          partNumber7 = [partCopy partNumber];
          *buf = 138543618;
          v61 = messageID7;
          v62 = 2114;
          v63 = partNumber7;
          _os_log_impl(&dword_1B0389000, v53, OS_LOG_TYPE_INFO, "#CacheLoads extracted part data from full body data via download %{public}@:%{public}@", buf, 0x16u);
        }

        [consumerCopy appendData:v52];
        goto LABEL_34;
      }
    }

    if (v47)
    {
LABEL_34:
      v22 = 1;
      goto LABEL_35;
    }

LABEL_17:
    v22 = 0;
    goto LABEL_35;
  }

  v21 = [(MFLibraryStore *)self fullBodyDataForMessage:message andHeaderDataIfReadilyAvailable:0 isComplete:0 downloadIfNecessary:necessaryCopy usePartDatas:0 didDownload:download];
  if (v21)
  {
    [consumerCopy appendData:v21];
  }

  v22 = v21 != 0;

LABEL_35:
  v39 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)storeData:(id)data forMimePart:(id)part isComplete:(BOOL)complete
{
  completeCopy = complete;
  v61 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  partCopy = part;
  mimeBody = [partCopy mimeBody];
  message = [mimeBody message];

  v46 = message;
  if ([message isLibraryMessage])
  {
    if ([partCopy isHTML])
    {
      library = [(MFLibraryStore *)self library];
      [library processRemoteContentFromData:dataCopy forMessage:message mimePart:partCopy];
    }

    else
    {
      library = [(MFLibraryStore *)self library];
      [library detectDataFromPlainTextMessage:dataCopy forMessage:message mimePart:partCopy];
    }

    v10 = MFPersistenceLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      ef_publicDescription = [message ef_publicDescription];
      *buf = 138543874;
      v56 = ef_publicDescription;
      v57 = 2114;
      v58 = partCopy;
      v59 = 1026;
      v60 = completeCopy;
      _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_DEFAULT, "Storing data for MIME part: %{public}@ of message: %{public}@ complete: %{public}d", buf, 0x1Cu);
    }

    library2 = [(MFLibraryStore *)self library];
    partNumber = [partCopy partNumber];
    v43 = [library2 dataConsumerForMessage:v46 part:partNumber incomplete:!completeCopy];

    [v43 appendData:dataCopy];
    [v43 done];
    data = [v43 data];
    if ([v46 updateSubjectFromEncryptedContent])
    {
      library3 = [(MFLibraryStore *)self library];
      subject = [v46 subject];
      subjectWithoutPrefix = [subject subjectWithoutPrefix];
      [library3 updateUnprefixedSubjectTo:subjectWithoutPrefix forMessage:v46];
    }

    v41 = [v46 signatureInfoIfDecodingIsComplete:1];
    if (v41)
    {
      v17 = objc_alloc(MEMORY[0x1E699AC08]);
      smimeCapabilities = [v41 smimeCapabilities];
      signingDate = [v41 signingDate];
      if (smimeCapabilities)
      {
        v20 = smimeCapabilities;
      }

      else
      {
        v20 = MEMORY[0x1E695E0F0];
      }

      v48 = [v17 initWithCapabilities:v20 date:signingDate];

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      addresses = [v41 addresses];
      obj = addresses;
      v22 = [addresses countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (v22)
      {
        v23 = *v51;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v51 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v50 + 1) + 8 * i);
            library4 = [(MFLibraryStore *)self library];
            persistence = [library4 persistence];
            messagePersistence = [persistence messagePersistence];
            v29 = v25;
            emailAddressValue = [v29 emailAddressValue];
            simpleAddress = [emailAddressValue simpleAddress];
            v32 = simpleAddress;
            if (simpleAddress)
            {
              stringValue = simpleAddress;
            }

            else
            {
              stringValue = [v29 stringValue];
            }

            v34 = stringValue;

            [messagePersistence setMetadata:v48 forAddress:v34];
          }

          addresses = obj;
          v22 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
        }

        while (v22);
      }
    }

    if (_os_feature_enabled_impl() && [MEMORY[0x1E699ACE8] preferenceEnabled:35])
    {
      library5 = [(MFLibraryStore *)self library];
      persistence2 = [library5 persistence];
      messageChangeManager = [persistence2 messageChangeManager];
      messageAuthenticator = [messageChangeManager messageAuthenticator];
      [messageAuthenticator authenticateMessage:v46];
    }
  }

  else
  {
    data = 0;
  }

  v39 = *MEMORY[0x1E69E9840];

  return data;
}

- (id)_copyDataFromMimePart:(id)part threshold:(unsigned int)threshold downloadIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  partCopy = part;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = v6;
  if (threshold != -1)
  {
    [v6 addObject:partCopy];
    LOBYTE(firstChildPart) = 0;
    while (!(([v7 count] == 0) | firstChildPart & 1))
    {
      v9 = [v7 objectAtIndex:0];
      firstChildPart = [v9 firstChildPart];
      if (firstChildPart)
      {
        do
        {
          [v7 addObject:firstChildPart];
          nextSiblingPart = [firstChildPart nextSiblingPart];

          firstChildPart = nextSiblingPart;
        }

        while (nextSiblingPart);
      }

      else if ([v9 isAttachment])
      {
        [v9 range];
        LOBYTE(firstChildPart) = v11 >= threshold;
      }

      else
      {
        LOBYTE(firstChildPart) = 0;
      }

      [v7 removeObjectAtIndex:0];
    }

    if ((firstChildPart & 1) == 0)
    {
      v32 = 0;
      goto LABEL_43;
    }
  }

  Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  mimeBody = [partCopy mimeBody];
  message = [mimeBody message];

  [v7 removeAllObjects];
  [v7 addObject:partCopy];
  if (!Mutable)
  {
LABEL_39:
    v31 = 0;
    v32 = 0;
    goto LABEL_42;
  }

  thresholdCopy = threshold;
  while ([v7 count])
  {
    v15 = [v7 objectAtIndex:0];
    firstChildPart2 = [v15 firstChildPart];
    if (firstChildPart2)
    {
      do
      {
        [v7 addObject:firstChildPart2];
        nextSiblingPart2 = [firstChildPart2 nextSiblingPart];

        firstChildPart2 = nextSiblingPart2;
      }

      while (nextSiblingPart2);
      type = [v15 type];
      v19 = [type isEqualToString:@"multipart"];

      if ((v19 & 1) == 0)
      {
LABEL_21:
        [v15 range];
        if (v21)
        {
          v22 = [message dataForMimePart:v15 inRange:0 isComplete:0x7FFFFFFFFFFFFFFFLL downloadIfNecessary:0 didDownload:{necessaryCopy, 0}];
          v23 = [v15 decodedDataForData:v22];

          data = v23;
        }

        else
        {
          data = [MEMORY[0x1E695DEF0] data];
        }

        firstChildPart3 = [v15 firstChildPart];
        v25 = firstChildPart3;
        if (firstChildPart3)
        {
          v26FirstChildPart = [firstChildPart3 firstChildPart];
          if (v26FirstChildPart || ![v25 isAttachment])
          {
            v29 = data;
          }

          else
          {
            if (![data length])
            {
              goto LABEL_30;
            }

            [v25 range];
            if (v28 < thresholdCopy)
            {
              goto LABEL_30;
            }

            v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"X-Apple-Content-Length: %lu\n", v28];
            v26FirstChildPart = [v30 dataUsingEncoding:1];

            v29 = [v26FirstChildPart mutableCopy];
            [v29 appendData:data];
          }

          if (v29)
          {
LABEL_34:
            CFDictionarySetValue(Mutable, v15, v29);
            goto LABEL_35;
          }
        }

        else
        {
LABEL_30:
          v29 = data;
          if (data)
          {
            goto LABEL_34;
          }
        }

        CFRelease(Mutable);
        Mutable = 0;
LABEL_35:

        goto LABEL_36;
      }
    }

    else
    {
      if (![v15 isAttachment])
      {
        goto LABEL_21;
      }

      [v15 range];
      if (v20 < thresholdCopy)
      {
        goto LABEL_21;
      }
    }

    v25 = 0;
LABEL_36:
    [v7 removeObjectAtIndex:0];

    if (!Mutable)
    {
      goto LABEL_39;
    }
  }

  v32 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v31 = objc_alloc_init(MFMessageWriter);
  [(MFMessageWriter *)v31 appendDataForMimePart:partCopy toData:v32 withPartData:Mutable];
  CFRelease(Mutable);
LABEL_42:

LABEL_43:
  return v32;
}

- (void)fetchBodyDataForMessage:(id)message completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [(MFLibraryStore *)self fullBodyDataForMessage:message andHeaderDataIfReadilyAvailable:0 isComplete:0 downloadIfNecessary:0 didDownload:0];
  if (v6)
  {
    handlerCopy[2](handlerCopy, v6, 0);
  }

  else
  {
    v7 = [[MFError alloc] initWithDomain:@"MFMessageErrorDomain" code:1030 userInfo:0];
    (handlerCopy)[2](handlerCopy, 0, v7);
  }
}

- (id)fullBodyDataForMessage:(id)message andHeaderDataIfReadilyAvailable:(id *)available isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary usePartDatas:(BOOL)datas didDownload:(BOOL *)download
{
  datasCopy = datas;
  necessaryCopy = necessary;
  v53 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v13 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:messageCopy valueIfNotPresent:0];
  v14 = v13;
  if (v13)
  {
    if ((*(v13 + *MEMORY[0x1E69AD7C8]) & 1) == 0)
    {
      v15 = MEMORY[0x1E69AD7C0];
      if (complete || (*(v13 + *MEMORY[0x1E69AD7C0]) & 1) == 0)
      {
        v16 = +[MFActivityMonitor currentMonitor];
        [v16 recordTransportType:1];

        v17 = *&v14[*MEMORY[0x1E69AD7B8]];
        if (complete)
        {
          *complete = v14[*v15] ^ 1;
        }

        v18 = MFPersistenceLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v48 = [v17 length];
          v49 = 2112;
          v50 = messageCopy;
          v51 = 2048;
          messageSize = [messageCopy messageSize];
          _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_DEFAULT, "returning cached full body data of length %lu for %@ (messageSize = %lu)", buf, 0x20u);
        }

        if (v17)
        {
          v19 = 0;
          v20 = v17;
          goto LABEL_40;
        }
      }
    }
  }

  if ([messageCopy isLibraryMessage])
  {
    library = self->_library;
    v46 = 0;
    v22 = [(MFMailMessageLibrary *)library fullBodyDataForMessage:messageCopy andHeaderDataIfReadilyAvailable:&v46];
    v19 = v46;
    if (v22)
    {
      v23 = MFPersistenceLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v22 length];
        ef_publicDescription = [messageCopy ef_publicDescription];
        *buf = 134218242;
        v48 = v24;
        v49 = 2114;
        v50 = ef_publicDescription;
        _os_log_impl(&dword_1B0389000, v23, OS_LOG_TYPE_DEFAULT, "Caching body data of length %lu for message %{public}@", buf, 0x16u);
      }

      v26 = [objc_alloc(MEMORY[0x1E69AD6E8]) initWithData:v22 partial:1 incomplete:0];
      v27 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:messageCopy valueIfNotPresent:v26];
      v20 = v22;
      goto LABEL_36;
    }
  }

  else
  {
    v19 = 0;
  }

  if (datasCopy)
  {
    if (necessaryCopy)
    {
      [messageCopy messageBodyUpdatingFlags:0];
    }

    else
    {
      [messageCopy messageBodyIfAvailableUpdatingFlags:0];
    }
    v29 = ;
    if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v30 = v29;
      topLevelPart = [v30 topLevelPart];
      v28 = [MFLibraryStore _copyDataFromMimePart:"_copyDataFromMimePart:threshold:downloadIfNecessary:" threshold:? downloadIfNecessary:?];
      if (v28)
      {
        v31 = MFPersistenceLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v41 = v30;
          v32 = [v28 length];
          ef_publicDescription2 = [messageCopy ef_publicDescription];
          *buf = 134218242;
          v48 = v32;
          v49 = 2114;
          v50 = ef_publicDescription2;
          v34 = ef_publicDescription2;
          _os_log_impl(&dword_1B0389000, v31, OS_LOG_TYPE_DEFAULT, "Caching body data of length %lu for message %{public}@ (from _copyDataFromMimePart)", buf, 0x16u);

          v30 = v41;
        }

        v35 = [objc_alloc(MEMORY[0x1E69AD6E8]) initWithData:v28 partial:0 incomplete:0];
        v36 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:messageCopy valueIfNotPresent:v35];
        if (download)
        {
          *download = 1;
        }
      }
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  if (v28 || !necessaryCopy)
  {
    v20 = v28;
    if (!v19)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v45 = v19;
  [(MFLibraryStore *)self _fetchFullBodyDataForMessage:messageCopy andHeaderDataIfReadilyAvailable:&v45 downloadIfNecessary:1 didDownload:download];
  v20 = v26 = v19;
  v19 = v45;
LABEL_36:

  if (v19)
  {
LABEL_39:
    v37 = [(MFLibraryStore *)self _cachedHeaderDataForMessage:messageCopy valueIfNotPresent:v19];
  }

LABEL_40:
  if (available)
  {
    v38 = v19;
    *available = v19;
  }

  if (complete)
  {
    *complete = v20 != 0;
  }

  v39 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)bodyDataForMessage:(id)message isComplete:(BOOL *)complete isPartial:(BOOL *)partial downloadIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v49 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v9 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:messageCopy valueIfNotPresent:0];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_11;
  }

  v11 = MEMORY[0x1E69AD7C0];
  if (!complete && (*(v9 + *MEMORY[0x1E69AD7C0]) & 1) != 0)
  {
    goto LABEL_11;
  }

  v12 = +[MFActivityMonitor currentMonitor];
  [v12 recordTransportType:1];

  v13 = *&v10[*MEMORY[0x1E69AD7B8]];
  if (complete)
  {
    *complete = v10[*v11] ^ 1;
  }

  if (partial)
  {
    *partial = v10[*MEMORY[0x1E69AD7C8]];
  }

  v14 = MFPersistenceLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v13 length];
    ef_publicDescription = [messageCopy ef_publicDescription];
    *buf = 134218242;
    *v48 = v15;
    *&v48[8] = 2114;
    *&v48[10] = ef_publicDescription;
    _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_DEFAULT, "returning cached body data of length %lu for %{public}@", buf, 0x16u);
  }

  if (!v13)
  {
LABEL_11:
    v46 = 0;
    library = self->_library;
    v45 = 0;
    v13 = [(MFMailMessageLibrary *)library bodyDataForMessage:messageCopy andHeaderDataIfReadilyAvailable:&v45 isComplete:complete isPartial:&v46];
    v18 = v45;
    if (v13)
    {
      v19 = +[MFActivityMonitor currentMonitor];
      [v19 recordTransportType:1];

      if (partial)
      {
        *partial = v46;
      }

      if (complete)
      {
        v20 = !*complete;
      }

      else
      {
        v20 = 0;
      }

      v21 = MFPersistenceLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v13 length];
        ef_publicDescription2 = [messageCopy ef_publicDescription];
        *buf = 134218242;
        *v48 = v22;
        *&v48[8] = 2114;
        *&v48[10] = ef_publicDescription2;
        _os_log_impl(&dword_1B0389000, v21, OS_LOG_TYPE_DEFAULT, "Caching body data of length %lu for message %{public}@", buf, 0x16u);
      }

      v24 = objc_alloc(MEMORY[0x1E69AD6E8]);
      v25 = [v24 initWithData:v13 partial:v46 incomplete:v20];
      v26 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:messageCopy valueIfNotPresent:v25];
      v27 = MFPersistenceLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v13 length];
        ef_publicDescription3 = [messageCopy ef_publicDescription];
        *buf = 134218242;
        *v48 = v28;
        *&v48[8] = 2114;
        *&v48[10] = ef_publicDescription3;
        _os_log_impl(&dword_1B0389000, v27, OS_LOG_TYPE_DEFAULT, "returning body data of length %lu from Library for %{public}@", buf, 0x16u);
      }
    }

    if (v18)
    {
      v30 = [(MFLibraryStore *)self _cachedHeaderDataForMessage:messageCopy valueIfNotPresent:v18];
    }

    if (!v13)
    {
      v46 = -86;
      v31 = MFLogGeneral();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        ef_publicDescription4 = [messageCopy ef_publicDescription];
        *buf = 67109378;
        *v48 = necessaryCopy;
        *&v48[4] = 2114;
        *&v48[6] = ef_publicDescription4;
        _os_log_impl(&dword_1B0389000, v31, OS_LOG_TYPE_INFO, "#CacheLoads fetching body data from network (download=%d) for %{public}@", buf, 0x12u);
      }

      v44 = 0;
      v13 = [(MFLibraryStore *)self _fetchBodyDataForMessage:messageCopy andHeaderDataIfReadilyAvailable:&v44 downloadIfNecessary:necessaryCopy partial:&v46];
      v33 = v44;
      if (v13)
      {
        if (complete)
        {
          *complete = 1;
        }

        if (partial)
        {
          *partial = v46;
        }

        v34 = objc_alloc(MEMORY[0x1E69AD6E8]);
        v35 = [v34 initWithData:v13 partial:v46 incomplete:0];
        v36 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:messageCopy valueIfNotPresent:v35];
        v37 = v36;
        if (v36)
        {
          v38 = *(v36 + *MEMORY[0x1E69AD7B8]);

          v13 = v38;
        }

        if (v33)
        {
          v39 = [(MFLibraryStore *)self _cachedHeaderDataForMessage:messageCopy valueIfNotPresent:v33];
        }
      }
    }
  }

  v40 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)_calcAttachmentInfoForMessage:(id)message body:(id)body
{
  messageCopy = message;
  bodyCopy = body;
  if (([messageCopy messageFlags] & 2) == 0)
  {
    attachmentInfoCalculationScheduler = [objc_opt_class() attachmentInfoCalculationScheduler];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__MFLibraryStore__calcAttachmentInfoForMessage_body___block_invoke;
    v8[3] = &unk_1E7AA26E0;
    v9 = messageCopy;
    v10 = bodyCopy;
    [attachmentInfoCalculationScheduler performBlock:v8];
  }
}

- (BOOL)shouldDeleteInPlace
{
  account = [(MFLibraryStore *)self account];
  mailbox = [(MFLibraryStore *)self mailbox];
  v5 = [account deleteInPlaceForMailbox:mailbox];

  return v5;
}

- (BOOL)shouldArchive
{
  account = [(MFLibraryStore *)self account];
  if ([account shouldArchiveByDefault])
  {
    mailbox = [(MFLibraryStore *)self mailbox];
    v5 = [account canArchiveForMailbox:mailbox];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)archiveDestination
{
  account = [(MFLibraryStore *)self account];
  mailbox = [(MFLibraryStore *)self mailbox];
  v5 = [account archiveDestinationForMailbox:mailbox];

  return v5;
}

- (void)deleteMessages:(id)messages moveToTrash:(BOOL)trash
{
  trashCopy = trash;
  v46 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  Current = CFAbsoluteTimeGetCurrent();
  if (trashCopy)
  {
    selfCopy = self;
    v31 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v7 = messagesCopy;
    v8 = [v7 countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v8)
    {
      v9 = *v36;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v36 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v35 + 1) + 8 * i);
          account = [v11 account];
          mailbox = [v11 mailbox];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [account mailboxUidOfType:3 createIfNeeded:0];
            v15 = mailbox == v14;

            if (!v15)
            {
              identifier = [account identifier];
              v17 = [v31 objectForKeyedSubscript:identifier];
              v18 = v17;
              if (v17)
              {
                [v17 addObject:v11];
              }

              else
              {
                v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v11, 0}];
                [v31 setObject:v18 forKeyedSubscript:identifier];
              }
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v8);
    }

    if ([v31 count])
    {
      persistence = [(MFMailMessageLibrary *)selfCopy->_library persistence];
      messageChangeManager = [persistence messageChangeManager];

      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __45__MFLibraryStore_deleteMessages_moveToTrash___block_invoke;
      v32[3] = &unk_1E7AA2E58;
      v33 = messageChangeManager;
      v34 = v7;
      v21 = messageChangeManager;
      [v31 enumerateKeysAndObjectsUsingBlock:v32];
    }
  }

  else
  {
    persistence2 = [(MFMailMessageLibrary *)self->_library persistence];
    messageChangeManager2 = [persistence2 messageChangeManager];
    [messageChangeManager2 deleteMessages:messagesCopy];
  }

  v24 = CFAbsoluteTimeGetCurrent();
  v25 = MFLogGeneral();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v27 = [messagesCopy count];
    v28 = [messagesCopy count];
    *buf = 134218496;
    v40 = v27;
    v41 = 2048;
    v42 = v24 - Current;
    v43 = 2048;
    v44 = (v24 - Current) / v28;
    _os_log_debug_impl(&dword_1B0389000, v25, OS_LOG_TYPE_DEBUG, "[LogMessageDeletionTimes] Deleting %lu messages took %4.5f seconds (%4.5f s/msg)", buf, 0x20u);
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __45__MFLibraryStore_deleteMessages_moveToTrash___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v5 = [MailAccount accountWithUniqueId:a2];
  v6 = [v5 mailboxUidOfType:3 createIfNeeded:1];
  v7 = v6;
  v8 = *(a1 + 32);
  if (v6)
  {
    v9 = [v6 URL];
    v10 = [v8 moveMessages:v11 destinationMailboxURL:v9 userInitiated:1];
  }

  else
  {
    [*(a1 + 32) deleteMessages:*(a1 + 40)];
  }
}

- (id)setFlagsFromDictionary:(id)dictionary forMessages:(id)messages
{
  dictionaryCopy = dictionary;
  messagesCopy = messages;
  v8 = MFFlagChangeObjectForFlagChangeDictionary(dictionaryCopy);
  v9 = MFFlagChangeDictionaryStrippingServerFlags(dictionaryCopy);
  if ([v8 hasChanges])
  {
    library = [(MFLibraryStore *)self library];
    persistence = [library persistence];
    messageChangeManager = [persistence messageChangeManager];
    v13 = [messageChangeManager applyFlagChange:v8 toMessages:messagesCopy];
  }

  if ([v9 count])
  {
    v14 = [(MFLibraryStore *)self setFlagsLocallyFromDictionary:v9 forMessages:messagesCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)setFlagsLocallyFromDictionary:(id)dictionary forMessages:(id)messages
{
  v4 = [(MFMailMessageLibrary *)self->_library setFlagsFromDictionary:dictionary forMessages:messages];

  return v4;
}

- (BOOL)allowsAppend
{
  uRLString = [(MFLibraryStore *)self URLString];
  v3 = uRLString != 0;

  return v3;
}

- (void)doCompact
{
  if ([(MFLibraryStore *)self canCompact])
  {
    uRLString = [(MFLibraryStore *)self URLString];
    if (uRLString && self->_deletedMessageCount)
    {
      v4 = uRLString;
      [(MFMailMessageLibrary *)self->_library compactMailbox:uRLString];
      uRLString = v4;
    }
  }

  else
  {
    uRLString = 0;
  }
}

- (void)compactMessages:(id)messages
{
  messagesCopy = messages;
  if ([messagesCopy count])
  {
    [(MFMailMessageLibrary *)self->_library compactMessages:messagesCopy];
  }
}

- (id)dataPathForMessage:(id)message part:(id)part
{
  v4 = [(MFMailMessageLibrary *)self->_library dataPathForMessage:message part:part];

  return v4;
}

- (NSString)URLString
{
  mailbox = [(MFLibraryStore *)self mailbox];
  uRLString = [mailbox URLString];

  return uRLString;
}

- (unint64_t)serverUnreadOnlyOnServerCount
{
  mailbox = [(MFLibraryStore *)self mailbox];
  serverUnreadOnlyOnServerCount = [mailbox serverUnreadOnlyOnServerCount];

  return serverUnreadOnlyOnServerCount;
}

- (unint64_t)unreadCount
{
  mailbox = [(MFLibraryStore *)self mailbox];
  unreadCount = [mailbox unreadCount];

  return unreadCount;
}

uint64_t __32__MFLibraryStore_newObjectCache__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = objc_alloc(MEMORY[0x1E699B990]);
  v6 = [v4 externalID];
  v7 = [v5 initWithString:v6];

  v8 = a3 | (4 * [v7 hash]);
  return v8;
}

uint64_t __32__MFLibraryStore_newObjectCache__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (objc_opt_isKindOfClass() & 1) != 0 && (v8 = *(a1 + 32), (objc_opt_isKindOfClass()))
  {
    v9 = v5;
    v10 = v6;
    v11 = *MEMORY[0x1E69AD7C0];
    v12 = v9[v11];
    if (v12 == 1 && v10[v11] != 1 || (v13 = *MEMORY[0x1E69AD7C8], v14 = v9[v13], v14 == 1) && (v10[v13] & 1) == 0)
    {
      v15 = -1;
    }

    else if ((v12 & 1) != 0 || (v10[v11] & 1) == 0)
    {
      v15 = v10[v13] & (v14 ^ 1u);
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_cachedHeadersForMessage:(id)message valueIfNotPresent:(id)present
{
  messageCopy = message;
  presentCopy = present;
  if ([messageCopy isLibraryMessage])
  {
    v11.receiver = self;
    v11.super_class = MFLibraryStore;
    v8 = [(MFLibraryStore *)&v11 _cachedHeadersForMessage:messageCopy valueIfNotPresent:presentCopy];
  }

  else
  {
    v8 = presentCopy;
  }

  v9 = v8;

  return v9;
}

- (id)_cachedHeaderDataForMessage:(id)message valueIfNotPresent:(id)present
{
  messageCopy = message;
  presentCopy = present;
  if ([messageCopy isLibraryMessage])
  {
    v11.receiver = self;
    v11.super_class = MFLibraryStore;
    v8 = [(MFLibraryStore *)&v11 _cachedHeaderDataForMessage:messageCopy valueIfNotPresent:presentCopy];
  }

  else
  {
    v8 = presentCopy;
  }

  v9 = v8;

  return v9;
}

- (id)_cachedBodyDataContainerForMessage:(id)message valueIfNotPresent:(id)present
{
  messageCopy = message;
  presentCopy = present;
  if ([messageCopy isLibraryMessage])
  {
    v11.receiver = self;
    v11.super_class = MFLibraryStore;
    v8 = [(MFLibraryStore *)&v11 _cachedBodyDataContainerForMessage:messageCopy valueIfNotPresent:presentCopy];
  }

  else
  {
    v8 = presentCopy;
  }

  v9 = v8;

  return v9;
}

- (void)purgeMessagesBeyondLimit:(unint64_t)limit
{
  library = self->_library;
  mailbox = [(MFLibraryStore *)self mailbox];
  uRLString = [mailbox URLString];
  v7 = [(MFMailMessageLibrary *)library nonDeletedCountForMailbox:uRLString];

  if (v7 > limit)
  {
    2048 = [(MFLibraryStore *)self copyOfMessagesInRange:limit options:v7 - limit, 2048];
    if ([2048 count])
    {
      [(MFLibraryStore *)self purgeMessages:2048];
    }
  }
}

- (BOOL)hasMessageForAccount:(id)account
{
  v21 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  library = self->_library;
  mailbox = [(MFLibraryStore *)self mailbox];
  uRLString = [mailbox URLString];
  LODWORD(library) = [(MFMailMessageLibrary *)library nonDeletedCountForMailbox:uRLString];

  if (library)
  {
    account = [(MFLibraryStore *)self account];

    if (account == accountCopy)
    {
      LOBYTE(library) = 1;
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v9 = [(MFLibraryStore *)self copyOfAllMessagesWithOptions:2048];
      library = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (library)
      {
        v10 = *v17;
        while (2)
        {
          for (i = 0; i != library; i = (i + 1))
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v9);
            }

            v12 = [MailAccount accountThatMessageIsFrom:*(*(&v16 + 1) + 8 * i), v16];
            v13 = v12 == accountCopy;

            if (v13)
            {
              LOBYTE(library) = 1;
              goto LABEL_13;
            }
          }

          library = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (library)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return library;
}

- (void)_queueMessagesAdded:(id)added
{
  addedCopy = added;
  v6 = 0;
  v5 = [(MFLibraryStore *)self pep_getInvocation:&v6];
  [v5 handleMessagesAdded:addedCopy earliestReceivedDate:self->_earliestReceivedDate];

  [v6 retainArguments];
  [(MFLibraryStore *)self _addInvocationToQueue:v6];
}

- (void)_queueMessageFlagsChanged:(id)changed
{
  v4 = [MEMORY[0x1E695DF50] mf_invocationWithSelector:sel_handleMessageFlagsChanged_ target:self object:changed];
  [(MFLibraryStore *)self _addInvocationToQueue:?];
}

- (void)_queueMessagesWillBeCompacted:(id)compacted
{
  v4 = [MEMORY[0x1E695DF50] mf_invocationWithSelector:sel_handleMessagesWillBeCompacted_ target:self object:compacted];
  [(MFLibraryStore *)self _addInvocationToQueue:?];
}

- (void)_queueMessagesWereCompacted:(id)compacted
{
  v4 = [MEMORY[0x1E695DF50] mf_invocationWithSelector:sel_handleMessagesCompacted_ target:self object:compacted];
  [(MFLibraryStore *)self _addInvocationToQueue:?];
}

- (BOOL)hasCompleteDataForMimePart:(id)part
{
  partCopy = part;
  v7.receiver = self;
  v7.super_class = MFLibraryStore;
  v5 = [(MFLibraryStore *)&v7 hasCompleteDataForMimePart:partCopy]|| [(MFMailMessageLibrary *)self->_library hasCompleteDataForMimePart:partCopy];

  return v5;
}

@end