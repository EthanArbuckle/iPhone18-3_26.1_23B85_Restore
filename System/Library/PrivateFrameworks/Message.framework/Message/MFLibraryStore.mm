@interface MFLibraryStore
+ (id)attachmentInfoCalculationScheduler;
+ (id)sharedInstance;
+ (id)storeWithMailbox:(id)a3;
- (BOOL)allowsAppend;
- (BOOL)dataForMimePart:(id)a3 inRange:(_NSRange)a4 isComplete:(BOOL *)a5 withConsumer:(id)a6 downloadIfNecessary:(BOOL)a7 didDownload:(BOOL *)a8;
- (BOOL)hasCompleteDataForMimePart:(id)a3;
- (BOOL)hasMessageForAccount:(id)a3;
- (BOOL)shouldArchive;
- (BOOL)shouldDeleteInPlace;
- (BOOL)shouldDownloadBodyDataForMessage:(id)a3;
- (BOOL)shouldGrowFetchWindow;
- (MFLibraryStore)initWithCriterion:(id)a3 mailbox:(id)a4 readOnly:(BOOL)a5;
- (NSString)URLString;
- (id)_cachedBodyDataContainerForMessage:(id)a3 valueIfNotPresent:(id)a4;
- (id)_cachedHeaderDataForMessage:(id)a3 valueIfNotPresent:(id)a4;
- (id)_cachedHeadersForMessage:(id)a3 valueIfNotPresent:(id)a4;
- (id)_copyDataFromMimePart:(id)a3 threshold:(unsigned int)a4 downloadIfNecessary:(BOOL)a5;
- (id)_fetchBodyDataForMessage:(id)a3 andHeaderDataIfReadilyAvailable:(id *)a4 downloadIfNecessary:(BOOL)a5 partial:(BOOL *)a6;
- (id)_memberMessagesWithCompactionNotification:(id)a3;
- (id)bodyDataForMessage:(id)a3 isComplete:(BOOL *)a4 isPartial:(BOOL *)a5 downloadIfNecessary:(BOOL)a6;
- (id)copyMessagesMatchingCriterion:(id)a3 options:(unsigned int)a4;
- (id)copyMessagesWithRemoteIDs:(id)a3 options:(unsigned int)a4 inMailbox:(id)a5;
- (id)criterion;
- (id)dataPathForMessage:(id)a3 part:(id)a4;
- (id)dateOfOldestNonIndexedNonSearchResultMessage;
- (id)description;
- (id)filterMessagesByMembership:(id)a3;
- (id)fullBodyDataForMessage:(id)a3 andHeaderDataIfReadilyAvailable:(id *)a4 isComplete:(BOOL *)a5 downloadIfNecessary:(BOOL)a6 usePartDatas:(BOOL)a7 didDownload:(BOOL *)a8;
- (id)messageForRemoteID:(id)a3;
- (id)newObjectCache;
- (id)serverSearchResults;
- (id)setFlagsFromDictionary:(id)a3 forMessages:(id)a4;
- (id)setFlagsLocallyFromDictionary:(id)a3 forMessages:(id)a4;
- (id)storeData:(id)a3 forMimePart:(id)a4 isComplete:(BOOL)a5;
- (int64_t)archiveDestination;
- (int64_t)fetchMobileSynchronously:(unint64_t)lastFetchCount preservingUID:(id)a4 options:(unint64_t)a5;
- (int64_t)fetchNumMessages:(unint64_t)a3 preservingUID:(id)a4 options:(unint64_t)a5;
- (unint64_t)_calculateFetchWindowWithAdditionalMultiple:(BOOL)a3;
- (unint64_t)_fetchWindowMinimum;
- (unint64_t)_fetchWindowMultiple;
- (unint64_t)fetchWindow;
- (unint64_t)fetchWindowCap;
- (unint64_t)growFetchWindow;
- (unint64_t)serverUnreadOnlyOnServerCount;
- (unint64_t)totalCount;
- (unint64_t)unreadCount;
- (void)_addInvocationToQueue:(id)a3;
- (void)_calcAttachmentInfoForMessage:(id)a3 body:(id)a4;
- (void)_flushAllMessageData;
- (void)_handleFlagsChangedForMessages:(id)a3 flags:(id)a4 oldFlagsByMessage:(id)a5;
- (void)_queueMessageFlagsChanged:(id)a3;
- (void)_queueMessagesAdded:(id)a3;
- (void)_queueMessagesWereCompacted:(id)a3;
- (void)_queueMessagesWillBeCompacted:(id)a3;
- (void)addCountsForMessages:(id)a3 shouldUpdateUnreadCount:(BOOL)a4;
- (void)allMessageFlagsDidChange:(id)a3;
- (void)compactMessages:(id)a3;
- (void)dealloc;
- (void)deleteMessages:(id)a3 moveToTrash:(BOOL)a4;
- (void)doCompact;
- (void)fetchBodyDataForMessage:(id)a3 completionHandler:(id)a4;
- (void)handleMessageFlagsChanged:(id)a3;
- (void)handleMessagesAdded:(id)a3 earliestReceivedDate:(id)a4;
- (void)handleMessagesCompacted:(id)a3;
- (void)handleMessagesWillBeCompacted:(id)a3;
- (void)invalidateFetchWindow;
- (void)messageFlagsDidChange:(id)a3 flags:(id)a4;
- (void)messagesWereAdded:(id)a3;
- (void)messagesWereAdded:(id)a3 earliestReceivedDate:(id)a4;
- (void)messagesWereCompacted:(id)a3;
- (void)messagesWillBeCompacted:(id)a3;
- (void)openSynchronously;
- (void)purgeMessagesBeyondLimit:(unint64_t)a3;
- (void)setLibrary:(id)a3;
- (void)willFetchMessages;
@end

@implementation MFLibraryStore

- (id)criterion
{
  v2 = [(MFLibraryStore *)self mailbox];
  v3 = [v2 criterion];

  return v3;
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

  return [a1 sharedInstanceIfExists];
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

- (MFLibraryStore)initWithCriterion:(id)a3 mailbox:(id)a4 readOnly:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = MFLibraryStore;
  v10 = [(MFLibraryStore *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_criterion, a3);
    objc_storeStrong(&v11->_mailbox, a4);
    v12 = [v9 account];
    account = v11->_account;
    v11->_account = v12;

    *&v11->_flags |= 0x100u;
  }

  return v11;
}

+ (id)storeWithMailbox:(id)a3
{
  v3 = a3;
  v4 = [[MFLibraryStore alloc] initWithMailbox:v3];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MFLibraryStore *)self mailbox];
  v6 = [v3 stringWithFormat:@"<%@: %p (uid=%@)>", v4, self, v5];

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

- (void)setLibrary:(id)a3
{
  v5 = a3;
  if (self->_library != v5)
  {
    v8 = v5;
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = v6;
    if (self->_library)
    {
      [v6 removeObserver:self name:0 object:?];
    }

    objc_storeStrong(&self->_library, a3);
    if (v8)
    {
      [v7 addObserver:self selector:sel__queueMessagesAdded_ name:@"MailMessageStoreMessagesAdded" object:self->_library];
      [v7 addObserver:self selector:sel__queueMessageFlagsChanged_ name:@"MailMessageStoreMessageFlagsChanged" object:self->_library];
      [v7 addObserver:self selector:sel__queueMessagesWillBeCompacted_ name:@"MailMessageStoreMessagesWillBeCompacted" object:self->_library];
      [v7 addObserver:self selector:sel__queueMessagesWereCompacted_ name:@"MailMessageStoreMessagesRemoved" object:self->_library];
    }

    [(MFLibraryStore *)self invalidateFetchWindow];

    v5 = v8;
  }
}

- (void)addCountsForMessages:(id)a3 shouldUpdateUnreadCount:(BOOL)a4
{
  v10 = a3;
  v5 = [v10 count];
  [(MFLibraryStore *)self mf_lock];
  if (v5)
  {
    v6 = v5 - 1;
    do
    {
      v7 = [v10 objectAtIndex:v6];
      v8 = [v7 messageFlags];
      v9 = [v7 messageSize];
      if ((v8 & 2) != 0)
      {
        ++self->_deletedMessageCount;
        self->_deletedMessagesSize += v9;
      }

      --v6;
    }

    while (v6 != -1);
  }

  [(MFLibraryStore *)self mf_unlock];
}

- (void)_addInvocationToQueue:(id)a3
{
  v3 = a3;
  v5 = v3;
  if (_addInvocationToQueue__onceToken == -1)
  {
    v4 = v3;
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
  v3 = [(MFLibraryStore *)self criterion];
  v4 = [(MFMailMessageLibrary *)library groupedMessagesCountForCriterion:v3 groupBy:0];

  v5 = [v4 objectForKeyedSubscript:&stru_1F273A5E0];
  v6 = [v5 integerValue];

  return v6;
}

- (id)copyMessagesMatchingCriterion:(id)a3 options:(unsigned int)a4
{
  v6 = a3;
  v7 = objc_alloc(MEMORY[0x1E695DF70]);
  v8 = [(MFLibraryStore *)self criterion];
  v9 = [v7 initWithObjects:{v8, v6, 0}];

  if ((a4 & 0x800) != 0)
  {
    v10 = [MFMessageCriterion messageIsDeletedCriterion:0];
    [v9 addObject:v10];
  }

  v11 = [MFMessageCriterion andCompoundCriterionWithCriteria:v9];
  v12 = [(MFLibraryStore *)self library];
  v13 = [v12 messagesMatchingCriterion:v11 options:a4 | 3];

  [v13 makeObjectsPerformSelector:sel_setMessageStore_ withObject:self];
  return v13;
}

- (id)copyMessagesWithRemoteIDs:(id)a3 options:(unsigned int)a4 inMailbox:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(MFLibraryStore *)self library];
  v11 = [v9 URLString];
  v12 = [v10 copyMessagesWithRemoteIDs:v8 options:a4 | 3 inRemoteMailbox:v11];

  [v12 makeObjectsPerformSelector:sel_setMessageStore_ withObject:self];
  return v12;
}

- (id)serverSearchResults
{
  v3 = [(MFLibraryStore *)self library];
  v4 = [(MFLibraryStore *)self URLString];
  v5 = [v3 serverSearchResultMessagesForMailbox:v4];

  [v5 makeObjectsPerformSelector:sel_setMessageStore_ withObject:self];

  return v5;
}

- (id)dateOfOldestNonIndexedNonSearchResultMessage
{
  [(MFLibraryStore *)self mf_lock];
  v3 = [(MFLibraryStore *)self library];
  v4 = [(MFLibraryStore *)self URLString];
  v5 = [v3 dateOfOldestNonIndexedNonSearchResultMessageInMailbox:v4];

  [(MFLibraryStore *)self mf_unlock];

  return v5;
}

- (void)willFetchMessages
{
  v5 = [(MFLibraryStore *)self library];
  v3 = [(MFLibraryStore *)self URLString];
  v4 = [v5 dateOfOldestNonSearchResultMessageInMailbox:v3];
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

- (BOOL)shouldGrowFetchWindow
{
  v3 = [(MFLibraryStore *)self fetchWindow];
  if (v3 >= [(MFLibraryStore *)self fetchWindowCap])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [(MFLibraryStore *)self hasMoreFetchableMessages];
    if (v4)
    {
      v5 = [(MFLibraryStore *)self serverMessageCount];
      LOBYTE(v4) = v5 > [(MFLibraryStore *)self fetchWindow];
    }
  }

  return v4;
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
  v2 = [MEMORY[0x1E695E000] em_userDefaults];
  v3 = [v2 BOOLForKey:@"FetchWithoutLimits"];

  if (v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return 10000;
  }
}

- (int64_t)fetchMobileSynchronously:(unint64_t)lastFetchCount preservingUID:(id)a4 options:(unint64_t)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v42 = a4;
  kdebug_trace();
  v7 = +[MFActivityMonitor currentMonitor];
  v8 = [(MFLibraryStore *)self mailbox];
  [v7 setMailbox:v8];

  v9 = +[MFActivityMonitor currentMonitor];
  [v9 addReason:@"MonitoredActivityReasonFetching"];

  v10 = [(MFLibraryStore *)self mailbox];
  v11 = [v10 URLString];

  v40 = v11;
  v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v11];
  v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@|%lu|%@|%d", v43, lastFetchCount, v42, (a5 >> 1) & 1];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:0xFFFFFFFFLL];
  v13 = [(MFLibraryStore *)self account];
  v46 = v12;
  v14 = [v13 willPerformActionForChokePoint:v43 coalescePoint:v44 result:&v46];
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
      v17 = [(MFLibraryStore *)self account];
      v45 = 0;
      LOBYTE(v14) = [v17 willPerformActionForChokePoint:v43 coalescePoint:v44 result:&v45];
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
    v38 = [v22 startedFetch];

    if (v38)
    {
      v38[2]();
    }

    v23 = [(MFLibraryStore *)self account];
    v24 = v23;
    if (v23)
    {
      v39 = [v23 powerAssertionIdentifierWithPrefix:?];
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
      v27 = [(MFLibraryStore *)self fetchNumMessages:lastFetchCount preservingUID:v42 options:a5];
      if ((v27 & 0x8000000000000000) == 0)
      {
        break;
      }

      v28 = +[MFActivityMonitor currentMonitor];
      v29 = [v28 error];
      v30 = [v24 shouldFetchAgainWithError:v29 foregroundRequest:(a5 >> 4) & 1];

      v31 = v26++ ? v30 : 0;
    }

    while ((v31 & 1) != 0);
    v19 = [MEMORY[0x1E696AD98] numberWithInteger:v27];

    v32 = [(MFLibraryStore *)self account];
    [v32 didFinishActionForChokePoint:v43 coalescePoint:v44 withResult:v19];

    v33 = +[MFPowerController sharedInstance];
    [v33 releaseAssertionWithIdentifier:v39];
  }

  kdebug_trace();
  v34 = [v19 integerValue];

  v35 = *MEMORY[0x1E69E9840];
  return v34;
}

- (int64_t)fetchNumMessages:(unint64_t)a3 preservingUID:(id)a4 options:(unint64_t)a5
{
  v5 = [MFActivityMonitor currentMonitor:a3];
  [v5 reset];

  return 0;
}

- (id)messageForRemoteID:(id)a3
{
  v4 = a3;
  library = self->_library;
  v6 = [(MFLibraryStore *)self URLString];
  v7 = [(MFMailMessageLibrary *)library messageWithMessageID:v4 options:0 inMailbox:v6];

  [v7 setMessageStore:self];

  return v7;
}

- (id)filterMessagesByMembership:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = a3;
  v5 = 0;
  v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        mailbox = self->_mailbox;
        if (mailbox)
        {
          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [v10 mailbox];
          v12 = mailbox == v11;

          if (v12)
          {
            if (!v5)
            {
              v5 = [MEMORY[0x1E695DF70] array];
            }

            [v5 addObject:v10];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)handleMessagesAdded:(id)a3 earliestReceivedDate:(id)a4
{
  v14 = a4;
  v6 = [a3 userInfo];
  v7 = [v6 objectForKey:@"messages"];
  v8 = [v6 objectForKey:@"mailboxes"];
  v9 = [(MFLibraryStore *)self mailbox];
  if (v9 && [v8 indexOfObject:v9] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v7;
    v13 = 0;
  }

  else
  {
    v10 = [(MFLibraryStore *)self criterion];
    v11 = v10;
    v12 = 0;
    if (v9 || !v10)
    {
      v13 = v10;
    }

    else
    {
      [(MFMailMessageLibrary *)self->_library filterContiguousMessages:v7 forCriterion:v10 options:3];
      v12 = v13 = v11;
    }
  }

  if ([v12 count])
  {
    [(MFLibraryStore *)self addCountsForMessages:v12 shouldUpdateUnreadCount:0];
    [(MFLibraryStore *)self messagesWereAdded:v12 earliestReceivedDate:v14];
  }
}

- (void)messagesWereAdded:(id)a3
{
  v5 = a3;
  v4 = [MEMORY[0x1E695DF00] distantPast];
  [(MFLibraryStore *)self messagesWereAdded:v5 earliestReceivedDate:v4];
}

- (void)messagesWereAdded:(id)a3 earliestReceivedDate:(id)a4
{
  v9 = a3;
  [v9 makeObjectsPerformSelector:sel_setMessageStore_ withObject:self];
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
  if ([v9 count])
  {
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v9, @"messages", 0}];
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 postNotificationName:@"MailMessageStoreMessagesAdded" object:self userInfo:v7];
  }
}

- (void)messagesWillBeCompacted:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = @"messages";
    v9[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [v5 postNotificationName:@"MailMessageStoreMessagesWillBeCompacted" object:self userInfo:v6];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)messagesWereCompacted:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = @"messages";
    v9[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [v5 postNotificationName:@"MailMessageStoreMessagesRemoved" object:self userInfo:v6];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)messageFlagsDidChange:(id)a3 flags:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = v6;
  if (v10)
  {
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"messages", v6, @"flags", 0}];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 postNotificationName:@"MailMessageStoreMessageFlagsChanged" object:self userInfo:v8];
}

- (void)allMessageFlagsDidChange:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v8 = @"flags";
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"MailMessageStoreMessageFlagsChanged" object:self userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_handleFlagsChangedForMessages:(id)a3 flags:(id)a4 oldFlagsByMessage:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(MFLibraryStore *)self mf_lock];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v8;
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
        v15 = [v10 objectForKey:v14];
        v16 = [v15 intValue];

        if (v9)
        {
          v17 = MFMessageFlagsByApplyingDictionary(v16, v9);
        }

        else
        {
          v17 = [v14 messageFlags];
        }

        if (((v16 >> 1) & 1) != ((v17 >> 1) & 1))
        {
          v18 = [v14 messageSize];
          deletedMessageCount = self->_deletedMessageCount;
          if ((v16 & 2) != 0)
          {
            self->_deletedMessageCount = deletedMessageCount - 1;
            v20 = self->_deletedMessagesSize - v18;
          }

          else
          {
            self->_deletedMessageCount = deletedMessageCount + 1;
            v20 = self->_deletedMessagesSize + v18;
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

- (void)handleMessageFlagsChanged:(id)a3
{
  v9 = [a3 userInfo];
  v4 = [v9 objectForKey:@"mailboxes"];
  v5 = [v9 objectForKey:@"messages"];
  v6 = [(MFLibraryStore *)self filterMessagesByMembership:v5];

  if ([v6 count])
  {
    v7 = [v9 objectForKey:@"flags"];
    v8 = [v9 objectForKey:@"oldFlagsByMessage"];
    if (v8)
    {
      [(MFLibraryStore *)self _handleFlagsChangedForMessages:v6 flags:v7 oldFlagsByMessage:v8];
    }

    [(MFLibraryStore *)self messageFlagsDidChange:v6 flags:v7];

    goto LABEL_5;
  }

  if (self->_mailbox && [v4 containsObject:?])
  {
    v7 = [v9 objectForKeyedSubscript:@"flags"];
    [(MFLibraryStore *)self allMessageFlagsDidChange:v7];
LABEL_5:
  }
}

- (id)_memberMessagesWithCompactionNotification:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = [v17 userInfo];
  v4 = [v18 objectForKey:@"messages"];
  v19 = v4;
  v5 = [v18 objectForKey:@"mailboxes"];
  if ([v4 count] && self->_mailbox && objc_msgSend(v5, "indexOfObject:") != 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v4;
    v6 = 0;
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
          v16 = [v14 mailbox];
          LODWORD(mailbox) = mailbox == v16;

          if (mailbox)
          {
            if (!v6)
            {
              v6 = [MEMORY[0x1E695DF70] array];
            }

            [v6 addObject:v14];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)handleMessagesCompacted:(id)a3
{
  v5 = a3;
  [(MFLibraryStore *)self mf_lock];
  v4 = [(MFLibraryStore *)self _memberMessagesWithCompactionNotification:v5];
  if ([v4 count])
  {
    self->_deletedMessagesSize = 0;
    self->_deletedMessageCount = 0;
  }

  [(MFLibraryStore *)self mf_unlock];
  [(MFLibraryStore *)self messagesWereCompacted:v4];
}

- (void)handleMessagesWillBeCompacted:(id)a3
{
  v4 = [(MFLibraryStore *)self _memberMessagesWithCompactionNotification:a3];
  [(MFLibraryStore *)self messagesWillBeCompacted:?];
}

- (BOOL)shouldDownloadBodyDataForMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 summary];
  if (v4)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [v3 isMessageContentsLocallyAvailable] ^ 1;
  }

  return v5;
}

- (id)_fetchBodyDataForMessage:(id)a3 andHeaderDataIfReadilyAvailable:(id *)a4 downloadIfNecessary:(BOOL)a5 partial:(BOOL *)a6
{
  v9 = a3;
  v10 = +[MFActivityMonitor currentMonitor];
  [v10 recordTransportType:1];

  v11 = [(MFMailMessageLibrary *)self->_library bodyDataForMessage:v9 andHeaderDataIfReadilyAvailable:a4];
  if (a6)
  {
    *a6 = 1;
  }

  return v11;
}

- (BOOL)dataForMimePart:(id)a3 inRange:(_NSRange)a4 isComplete:(BOOL *)a5 withConsumer:(id)a6 downloadIfNecessary:(BOOL)a7 didDownload:(BOOL *)a8
{
  v57 = a7;
  length = a4.length;
  location = a4.location;
  v66 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v59 = a6;
  v13 = [v12 mimeBody];
  v14 = [v13 message];

  v15 = MFLogGeneral();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [v14 messageID];
    v17 = [v12 partNumber];
    *buf = 138543618;
    v61 = v16;
    v62 = 2114;
    v63 = v17;
    _os_log_impl(&dword_1B0389000, v15, OS_LOG_TYPE_INFO, "#CacheLoads requesting data for MIME part %{public}@:%{public}@", buf, 0x16u);
  }

  if (!v14)
  {
    v23 = MFLogGeneral();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      [MFLibraryStore dataForMimePart:v23 inRange:? isComplete:? withConsumer:? downloadIfNecessary:? didDownload:?];
    }

    goto LABEL_17;
  }

  v18 = [v12 parentPart];
  if (v18)
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

    v56 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:v14 valueIfNotPresent:0];
    if (v56)
    {
      v25 = MEMORY[0x1E69AD7B8];
      if (*&v56[*MEMORY[0x1E69AD7B8]])
      {
        v26 = MFLogGeneral();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = [v14 messageID];
          v28 = [v12 partNumber];
          *buf = 138543618;
          v61 = v27;
          v62 = 2114;
          v63 = v28;
          _os_log_impl(&dword_1B0389000, v26, OS_LOG_TYPE_INFO, "#CacheLoads found full cached data for %{public}@:%{public}@", buf, 0x16u);
        }

        v29 = partDataFromFullBodyDataWithUnixLineEndings(*&v56[*v25], v14, v12, a5);
        if (v29)
        {
          v30 = v56;
          [v59 appendData:v29];
LABEL_33:

          goto LABEL_34;
        }
      }
    }

    if (!location)
    {
      v34 = [(MFLibraryStore *)self library];
      v35 = [v34 dataForMimePart:v12 isComplete:a5];

      if (v35)
      {
        v36 = MFLogGeneral();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = [v14 messageID];
          v38 = [v12 partNumber];
          *buf = 138543618;
          v61 = v37;
          v62 = 2114;
          v63 = v38;
          _os_log_impl(&dword_1B0389000, v36, OS_LOG_TYPE_INFO, "#CacheLoads found part data in database %{public}@:%{public}@", buf, 0x16u);
        }

        v30 = v56;
        [v59 appendData:v35];
        v29 = v35;
        goto LABEL_33;
      }
    }

    v29 = partDataFromFullBodyData(self, v14, v12, a5, 0, a8);
    if (v29)
    {
      v31 = MFLogGeneral();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = [v14 messageID];
        v33 = [v12 partNumber];
        *buf = 138543618;
        v61 = v32;
        v62 = 2114;
        v63 = v33;
        _os_log_impl(&dword_1B0389000, v31, OS_LOG_TYPE_INFO, "#CacheLoads extracted part data from full body data in database %{public}@:%{public}@", buf, 0x16u);
      }

      v30 = v56;
      [v59 appendData:v29];
      goto LABEL_33;
    }

    v41 = [v12 type];
    v42 = [v41 isEqualToString:@"multipart"];

    if ((v57 & ~v42) != 0)
    {
      v43 = MFLogGeneral();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = [v14 messageID];
        v45 = [v12 partNumber];
        *buf = 138543618;
        v61 = v44;
        v62 = 2114;
        v63 = v45;
        _os_log_impl(&dword_1B0389000, v43, OS_LOG_TYPE_INFO, "#CacheLoads downloading part data from server %{public}@:%{public}@", buf, 0x16u);
      }

      v46 = [(MFLibraryStore *)self _fetchDataForMimePart:v12 range:location isComplete:length consumer:a5, v59];
      v47 = v46;
      if (a8)
      {
        *a8 = v46;
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

        v50 = [v14 messageID];
        v51 = [v12 partNumber];
        *buf = 138412802;
        v61 = v49;
        v62 = 2114;
        v63 = v50;
        v64 = 2114;
        v65 = v51;
        _os_log_impl(&dword_1B0389000, v48, OS_LOG_TYPE_INFO, "#CacheLoads %@ downloading part data from server %{public}@:%{public}@", buf, 0x20u);
      }
    }

    else
    {
      v47 = 0;
    }

    if (!v47 && v57)
    {
      v52 = partDataFromFullBodyData(self, v14, v12, a5, 1, a8);
      if (v52)
      {
        v53 = MFLogGeneral();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = [v14 messageID];
          v55 = [v12 partNumber];
          *buf = 138543618;
          v61 = v54;
          v62 = 2114;
          v63 = v55;
          _os_log_impl(&dword_1B0389000, v53, OS_LOG_TYPE_INFO, "#CacheLoads extracted part data from full body data via download %{public}@:%{public}@", buf, 0x16u);
        }

        [v59 appendData:v52];
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

  v21 = [(MFLibraryStore *)self fullBodyDataForMessage:v14 andHeaderDataIfReadilyAvailable:0 isComplete:0 downloadIfNecessary:v57 usePartDatas:0 didDownload:a8];
  if (v21)
  {
    [v59 appendData:v21];
  }

  v22 = v21 != 0;

LABEL_35:
  v39 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)storeData:(id)a3 forMimePart:(id)a4 isComplete:(BOOL)a5
{
  v5 = a5;
  v61 = *MEMORY[0x1E69E9840];
  v44 = a3;
  v45 = a4;
  v7 = [v45 mimeBody];
  v8 = [v7 message];

  v46 = v8;
  if ([v8 isLibraryMessage])
  {
    if ([v45 isHTML])
    {
      v9 = [(MFLibraryStore *)self library];
      [v9 processRemoteContentFromData:v44 forMessage:v8 mimePart:v45];
    }

    else
    {
      v9 = [(MFLibraryStore *)self library];
      [v9 detectDataFromPlainTextMessage:v44 forMessage:v8 mimePart:v45];
    }

    v10 = MFPersistenceLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 ef_publicDescription];
      *buf = 138543874;
      v56 = v11;
      v57 = 2114;
      v58 = v45;
      v59 = 1026;
      v60 = v5;
      _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_DEFAULT, "Storing data for MIME part: %{public}@ of message: %{public}@ complete: %{public}d", buf, 0x1Cu);
    }

    v12 = [(MFLibraryStore *)self library];
    v13 = [v45 partNumber];
    v43 = [v12 dataConsumerForMessage:v46 part:v13 incomplete:!v5];

    [v43 appendData:v44];
    [v43 done];
    v42 = [v43 data];
    if ([v46 updateSubjectFromEncryptedContent])
    {
      v14 = [(MFLibraryStore *)self library];
      v15 = [v46 subject];
      v16 = [v15 subjectWithoutPrefix];
      [v14 updateUnprefixedSubjectTo:v16 forMessage:v46];
    }

    v41 = [v46 signatureInfoIfDecodingIsComplete:1];
    if (v41)
    {
      v17 = objc_alloc(MEMORY[0x1E699AC08]);
      v18 = [v41 smimeCapabilities];
      v19 = [v41 signingDate];
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = MEMORY[0x1E695E0F0];
      }

      v48 = [v17 initWithCapabilities:v20 date:v19];

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v21 = [v41 addresses];
      obj = v21;
      v22 = [v21 countByEnumeratingWithState:&v50 objects:v54 count:16];
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
            v26 = [(MFLibraryStore *)self library];
            v27 = [v26 persistence];
            v28 = [v27 messagePersistence];
            v29 = v25;
            v30 = [v29 emailAddressValue];
            v31 = [v30 simpleAddress];
            v32 = v31;
            if (v31)
            {
              v33 = v31;
            }

            else
            {
              v33 = [v29 stringValue];
            }

            v34 = v33;

            [v28 setMetadata:v48 forAddress:v34];
          }

          v21 = obj;
          v22 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
        }

        while (v22);
      }
    }

    if (_os_feature_enabled_impl() && [MEMORY[0x1E699ACE8] preferenceEnabled:35])
    {
      v35 = [(MFLibraryStore *)self library];
      v36 = [v35 persistence];
      v37 = [v36 messageChangeManager];
      v38 = [v37 messageAuthenticator];
      [v38 authenticateMessage:v46];
    }
  }

  else
  {
    v42 = 0;
  }

  v39 = *MEMORY[0x1E69E9840];

  return v42;
}

- (id)_copyDataFromMimePart:(id)a3 threshold:(unsigned int)a4 downloadIfNecessary:(BOOL)a5
{
  v35 = a5;
  v36 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = v6;
  if (a4 != -1)
  {
    [v6 addObject:v36];
    LOBYTE(v8) = 0;
    while (!(([v7 count] == 0) | v8 & 1))
    {
      v9 = [v7 objectAtIndex:0];
      v8 = [v9 firstChildPart];
      if (v8)
      {
        do
        {
          [v7 addObject:v8];
          v10 = [v8 nextSiblingPart];

          v8 = v10;
        }

        while (v10);
      }

      else if ([v9 isAttachment])
      {
        [v9 range];
        LOBYTE(v8) = v11 >= a4;
      }

      else
      {
        LOBYTE(v8) = 0;
      }

      [v7 removeObjectAtIndex:0];
    }

    if ((v8 & 1) == 0)
    {
      v32 = 0;
      goto LABEL_43;
    }
  }

  Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  v13 = [v36 mimeBody];
  v14 = [v13 message];

  [v7 removeAllObjects];
  [v7 addObject:v36];
  if (!Mutable)
  {
LABEL_39:
    v31 = 0;
    v32 = 0;
    goto LABEL_42;
  }

  v34 = a4;
  while ([v7 count])
  {
    v15 = [v7 objectAtIndex:0];
    v16 = [v15 firstChildPart];
    if (v16)
    {
      do
      {
        [v7 addObject:v16];
        v17 = [v16 nextSiblingPart];

        v16 = v17;
      }

      while (v17);
      v18 = [v15 type];
      v19 = [v18 isEqualToString:@"multipart"];

      if ((v19 & 1) == 0)
      {
LABEL_21:
        [v15 range];
        if (v21)
        {
          v22 = [v14 dataForMimePart:v15 inRange:0 isComplete:0x7FFFFFFFFFFFFFFFLL downloadIfNecessary:0 didDownload:{v35, 0}];
          v23 = [v15 decodedDataForData:v22];

          v24 = v23;
        }

        else
        {
          v24 = [MEMORY[0x1E695DEF0] data];
        }

        v26 = [v15 firstChildPart];
        v25 = v26;
        if (v26)
        {
          v27 = [v26 firstChildPart];
          if (v27 || ![v25 isAttachment])
          {
            v29 = v24;
          }

          else
          {
            if (![v24 length])
            {
              goto LABEL_30;
            }

            [v25 range];
            if (v28 < v34)
            {
              goto LABEL_30;
            }

            v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"X-Apple-Content-Length: %lu\n", v28];
            v27 = [v30 dataUsingEncoding:1];

            v29 = [v27 mutableCopy];
            [v29 appendData:v24];
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
          v29 = v24;
          if (v24)
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
      if (v20 < v34)
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
  [(MFMessageWriter *)v31 appendDataForMimePart:v36 toData:v32 withPartData:Mutable];
  CFRelease(Mutable);
LABEL_42:

LABEL_43:
  return v32;
}

- (void)fetchBodyDataForMessage:(id)a3 completionHandler:(id)a4
{
  v8 = a4;
  v6 = [(MFLibraryStore *)self fullBodyDataForMessage:a3 andHeaderDataIfReadilyAvailable:0 isComplete:0 downloadIfNecessary:0 didDownload:0];
  if (v6)
  {
    v8[2](v8, v6, 0);
  }

  else
  {
    v7 = [[MFError alloc] initWithDomain:@"MFMessageErrorDomain" code:1030 userInfo:0];
    (v8)[2](v8, 0, v7);
  }
}

- (id)fullBodyDataForMessage:(id)a3 andHeaderDataIfReadilyAvailable:(id *)a4 isComplete:(BOOL *)a5 downloadIfNecessary:(BOOL)a6 usePartDatas:(BOOL)a7 didDownload:(BOOL *)a8
{
  v9 = a7;
  v43 = a6;
  v53 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:v12 valueIfNotPresent:0];
  v14 = v13;
  if (v13)
  {
    if ((*(v13 + *MEMORY[0x1E69AD7C8]) & 1) == 0)
    {
      v15 = MEMORY[0x1E69AD7C0];
      if (a5 || (*(v13 + *MEMORY[0x1E69AD7C0]) & 1) == 0)
      {
        v16 = +[MFActivityMonitor currentMonitor];
        [v16 recordTransportType:1];

        v17 = *&v14[*MEMORY[0x1E69AD7B8]];
        if (a5)
        {
          *a5 = v14[*v15] ^ 1;
        }

        v18 = MFPersistenceLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v48 = [v17 length];
          v49 = 2112;
          v50 = v12;
          v51 = 2048;
          v52 = [v12 messageSize];
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

  if ([v12 isLibraryMessage])
  {
    library = self->_library;
    v46 = 0;
    v22 = [(MFMailMessageLibrary *)library fullBodyDataForMessage:v12 andHeaderDataIfReadilyAvailable:&v46];
    v19 = v46;
    if (v22)
    {
      v23 = MFPersistenceLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v22 length];
        v25 = [v12 ef_publicDescription];
        *buf = 134218242;
        v48 = v24;
        v49 = 2114;
        v50 = v25;
        _os_log_impl(&dword_1B0389000, v23, OS_LOG_TYPE_DEFAULT, "Caching body data of length %lu for message %{public}@", buf, 0x16u);
      }

      v26 = [objc_alloc(MEMORY[0x1E69AD6E8]) initWithData:v22 partial:1 incomplete:0];
      v27 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:v12 valueIfNotPresent:v26];
      v20 = v22;
      goto LABEL_36;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v9)
  {
    if (v43)
    {
      [v12 messageBodyUpdatingFlags:0];
    }

    else
    {
      [v12 messageBodyIfAvailableUpdatingFlags:0];
    }
    v29 = ;
    if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v30 = v29;
      v42 = [v30 topLevelPart];
      v28 = [MFLibraryStore _copyDataFromMimePart:"_copyDataFromMimePart:threshold:downloadIfNecessary:" threshold:? downloadIfNecessary:?];
      if (v28)
      {
        v31 = MFPersistenceLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v41 = v30;
          v32 = [v28 length];
          v33 = [v12 ef_publicDescription];
          *buf = 134218242;
          v48 = v32;
          v49 = 2114;
          v50 = v33;
          v34 = v33;
          _os_log_impl(&dword_1B0389000, v31, OS_LOG_TYPE_DEFAULT, "Caching body data of length %lu for message %{public}@ (from _copyDataFromMimePart)", buf, 0x16u);

          v30 = v41;
        }

        v35 = [objc_alloc(MEMORY[0x1E69AD6E8]) initWithData:v28 partial:0 incomplete:0];
        v36 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:v12 valueIfNotPresent:v35];
        if (a8)
        {
          *a8 = 1;
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

  if (v28 || !v43)
  {
    v20 = v28;
    if (!v19)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v45 = v19;
  [(MFLibraryStore *)self _fetchFullBodyDataForMessage:v12 andHeaderDataIfReadilyAvailable:&v45 downloadIfNecessary:1 didDownload:a8];
  v20 = v26 = v19;
  v19 = v45;
LABEL_36:

  if (v19)
  {
LABEL_39:
    v37 = [(MFLibraryStore *)self _cachedHeaderDataForMessage:v12 valueIfNotPresent:v19];
  }

LABEL_40:
  if (a4)
  {
    v38 = v19;
    *a4 = v19;
  }

  if (a5)
  {
    *a5 = v20 != 0;
  }

  v39 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)bodyDataForMessage:(id)a3 isComplete:(BOOL *)a4 isPartial:(BOOL *)a5 downloadIfNecessary:(BOOL)a6
{
  v42 = a6;
  v49 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:v8 valueIfNotPresent:0];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_11;
  }

  v11 = MEMORY[0x1E69AD7C0];
  if (!a4 && (*(v9 + *MEMORY[0x1E69AD7C0]) & 1) != 0)
  {
    goto LABEL_11;
  }

  v12 = +[MFActivityMonitor currentMonitor];
  [v12 recordTransportType:1];

  v13 = *&v10[*MEMORY[0x1E69AD7B8]];
  if (a4)
  {
    *a4 = v10[*v11] ^ 1;
  }

  if (a5)
  {
    *a5 = v10[*MEMORY[0x1E69AD7C8]];
  }

  v14 = MFPersistenceLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v13 length];
    v16 = [v8 ef_publicDescription];
    *buf = 134218242;
    *v48 = v15;
    *&v48[8] = 2114;
    *&v48[10] = v16;
    _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_DEFAULT, "returning cached body data of length %lu for %{public}@", buf, 0x16u);
  }

  if (!v13)
  {
LABEL_11:
    v46 = 0;
    library = self->_library;
    v45 = 0;
    v13 = [(MFMailMessageLibrary *)library bodyDataForMessage:v8 andHeaderDataIfReadilyAvailable:&v45 isComplete:a4 isPartial:&v46];
    v18 = v45;
    if (v13)
    {
      v19 = +[MFActivityMonitor currentMonitor];
      [v19 recordTransportType:1];

      if (a5)
      {
        *a5 = v46;
      }

      if (a4)
      {
        v20 = !*a4;
      }

      else
      {
        v20 = 0;
      }

      v21 = MFPersistenceLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v13 length];
        v23 = [v8 ef_publicDescription];
        *buf = 134218242;
        *v48 = v22;
        *&v48[8] = 2114;
        *&v48[10] = v23;
        _os_log_impl(&dword_1B0389000, v21, OS_LOG_TYPE_DEFAULT, "Caching body data of length %lu for message %{public}@", buf, 0x16u);
      }

      v24 = objc_alloc(MEMORY[0x1E69AD6E8]);
      v25 = [v24 initWithData:v13 partial:v46 incomplete:v20];
      v26 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:v8 valueIfNotPresent:v25];
      v27 = MFPersistenceLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v13 length];
        v29 = [v8 ef_publicDescription];
        *buf = 134218242;
        *v48 = v28;
        *&v48[8] = 2114;
        *&v48[10] = v29;
        _os_log_impl(&dword_1B0389000, v27, OS_LOG_TYPE_DEFAULT, "returning body data of length %lu from Library for %{public}@", buf, 0x16u);
      }
    }

    if (v18)
    {
      v30 = [(MFLibraryStore *)self _cachedHeaderDataForMessage:v8 valueIfNotPresent:v18];
    }

    if (!v13)
    {
      v46 = -86;
      v31 = MFLogGeneral();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = [v8 ef_publicDescription];
        *buf = 67109378;
        *v48 = v42;
        *&v48[4] = 2114;
        *&v48[6] = v32;
        _os_log_impl(&dword_1B0389000, v31, OS_LOG_TYPE_INFO, "#CacheLoads fetching body data from network (download=%d) for %{public}@", buf, 0x12u);
      }

      v44 = 0;
      v13 = [(MFLibraryStore *)self _fetchBodyDataForMessage:v8 andHeaderDataIfReadilyAvailable:&v44 downloadIfNecessary:v42 partial:&v46];
      v33 = v44;
      if (v13)
      {
        if (a4)
        {
          *a4 = 1;
        }

        if (a5)
        {
          *a5 = v46;
        }

        v34 = objc_alloc(MEMORY[0x1E69AD6E8]);
        v35 = [v34 initWithData:v13 partial:v46 incomplete:0];
        v36 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:v8 valueIfNotPresent:v35];
        v37 = v36;
        if (v36)
        {
          v38 = *(v36 + *MEMORY[0x1E69AD7B8]);

          v13 = v38;
        }

        if (v33)
        {
          v39 = [(MFLibraryStore *)self _cachedHeaderDataForMessage:v8 valueIfNotPresent:v33];
        }
      }
    }
  }

  v40 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)_calcAttachmentInfoForMessage:(id)a3 body:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (([v5 messageFlags] & 2) == 0)
  {
    v7 = [objc_opt_class() attachmentInfoCalculationScheduler];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__MFLibraryStore__calcAttachmentInfoForMessage_body___block_invoke;
    v8[3] = &unk_1E7AA26E0;
    v9 = v5;
    v10 = v6;
    [v7 performBlock:v8];
  }
}

- (BOOL)shouldDeleteInPlace
{
  v3 = [(MFLibraryStore *)self account];
  v4 = [(MFLibraryStore *)self mailbox];
  v5 = [v3 deleteInPlaceForMailbox:v4];

  return v5;
}

- (BOOL)shouldArchive
{
  v3 = [(MFLibraryStore *)self account];
  if ([v3 shouldArchiveByDefault])
  {
    v4 = [(MFLibraryStore *)self mailbox];
    v5 = [v3 canArchiveForMailbox:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)archiveDestination
{
  v3 = [(MFLibraryStore *)self account];
  v4 = [(MFLibraryStore *)self mailbox];
  v5 = [v3 archiveDestinationForMailbox:v4];

  return v5;
}

- (void)deleteMessages:(id)a3 moveToTrash:(BOOL)a4
{
  v4 = a4;
  v46 = *MEMORY[0x1E69E9840];
  v30 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  if (v4)
  {
    v29 = self;
    v31 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v7 = v30;
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
          v12 = [v11 account];
          v13 = [v11 mailbox];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [v12 mailboxUidOfType:3 createIfNeeded:0];
            v15 = v13 == v14;

            if (!v15)
            {
              v16 = [v12 identifier];
              v17 = [v31 objectForKeyedSubscript:v16];
              v18 = v17;
              if (v17)
              {
                [v17 addObject:v11];
              }

              else
              {
                v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v11, 0}];
                [v31 setObject:v18 forKeyedSubscript:v16];
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
      v19 = [(MFMailMessageLibrary *)v29->_library persistence];
      v20 = [v19 messageChangeManager];

      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __45__MFLibraryStore_deleteMessages_moveToTrash___block_invoke;
      v32[3] = &unk_1E7AA2E58;
      v33 = v20;
      v34 = v7;
      v21 = v20;
      [v31 enumerateKeysAndObjectsUsingBlock:v32];
    }
  }

  else
  {
    v22 = [(MFMailMessageLibrary *)self->_library persistence];
    v23 = [v22 messageChangeManager];
    [v23 deleteMessages:v30];
  }

  v24 = CFAbsoluteTimeGetCurrent();
  v25 = MFLogGeneral();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v27 = [v30 count];
    v28 = [v30 count];
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

- (id)setFlagsFromDictionary:(id)a3 forMessages:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MFFlagChangeObjectForFlagChangeDictionary(v6);
  v9 = MFFlagChangeDictionaryStrippingServerFlags(v6);
  if ([v8 hasChanges])
  {
    v10 = [(MFLibraryStore *)self library];
    v11 = [v10 persistence];
    v12 = [v11 messageChangeManager];
    v13 = [v12 applyFlagChange:v8 toMessages:v7];
  }

  if ([v9 count])
  {
    v14 = [(MFLibraryStore *)self setFlagsLocallyFromDictionary:v9 forMessages:v7];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)setFlagsLocallyFromDictionary:(id)a3 forMessages:(id)a4
{
  v4 = [(MFMailMessageLibrary *)self->_library setFlagsFromDictionary:a3 forMessages:a4];

  return v4;
}

- (BOOL)allowsAppend
{
  v2 = [(MFLibraryStore *)self URLString];
  v3 = v2 != 0;

  return v3;
}

- (void)doCompact
{
  if ([(MFLibraryStore *)self canCompact])
  {
    v3 = [(MFLibraryStore *)self URLString];
    if (v3 && self->_deletedMessageCount)
    {
      v4 = v3;
      [(MFMailMessageLibrary *)self->_library compactMailbox:v3];
      v3 = v4;
    }
  }

  else
  {
    v3 = 0;
  }
}

- (void)compactMessages:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    [(MFMailMessageLibrary *)self->_library compactMessages:v4];
  }
}

- (id)dataPathForMessage:(id)a3 part:(id)a4
{
  v4 = [(MFMailMessageLibrary *)self->_library dataPathForMessage:a3 part:a4];

  return v4;
}

- (NSString)URLString
{
  v2 = [(MFLibraryStore *)self mailbox];
  v3 = [v2 URLString];

  return v3;
}

- (unint64_t)serverUnreadOnlyOnServerCount
{
  v2 = [(MFLibraryStore *)self mailbox];
  v3 = [v2 serverUnreadOnlyOnServerCount];

  return v3;
}

- (unint64_t)unreadCount
{
  v2 = [(MFLibraryStore *)self mailbox];
  v3 = [v2 unreadCount];

  return v3;
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

- (id)_cachedHeadersForMessage:(id)a3 valueIfNotPresent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isLibraryMessage])
  {
    v11.receiver = self;
    v11.super_class = MFLibraryStore;
    v8 = [(MFLibraryStore *)&v11 _cachedHeadersForMessage:v6 valueIfNotPresent:v7];
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;

  return v9;
}

- (id)_cachedHeaderDataForMessage:(id)a3 valueIfNotPresent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isLibraryMessage])
  {
    v11.receiver = self;
    v11.super_class = MFLibraryStore;
    v8 = [(MFLibraryStore *)&v11 _cachedHeaderDataForMessage:v6 valueIfNotPresent:v7];
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;

  return v9;
}

- (id)_cachedBodyDataContainerForMessage:(id)a3 valueIfNotPresent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isLibraryMessage])
  {
    v11.receiver = self;
    v11.super_class = MFLibraryStore;
    v8 = [(MFLibraryStore *)&v11 _cachedBodyDataContainerForMessage:v6 valueIfNotPresent:v7];
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;

  return v9;
}

- (void)purgeMessagesBeyondLimit:(unint64_t)a3
{
  library = self->_library;
  v8 = [(MFLibraryStore *)self mailbox];
  v6 = [v8 URLString];
  v7 = [(MFMailMessageLibrary *)library nonDeletedCountForMailbox:v6];

  if (v7 > a3)
  {
    v9 = [(MFLibraryStore *)self copyOfMessagesInRange:a3 options:v7 - a3, 2048];
    if ([v9 count])
    {
      [(MFLibraryStore *)self purgeMessages:v9];
    }
  }
}

- (BOOL)hasMessageForAccount:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  library = self->_library;
  v5 = [(MFLibraryStore *)self mailbox];
  v6 = [v5 URLString];
  LODWORD(library) = [(MFMailMessageLibrary *)library nonDeletedCountForMailbox:v6];

  if (library)
  {
    v8 = [(MFLibraryStore *)self account];

    if (v8 == v4)
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
            v13 = v12 == v4;

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

- (void)_queueMessagesAdded:(id)a3
{
  v4 = a3;
  v6 = 0;
  v5 = [(MFLibraryStore *)self pep_getInvocation:&v6];
  [v5 handleMessagesAdded:v4 earliestReceivedDate:self->_earliestReceivedDate];

  [v6 retainArguments];
  [(MFLibraryStore *)self _addInvocationToQueue:v6];
}

- (void)_queueMessageFlagsChanged:(id)a3
{
  v4 = [MEMORY[0x1E695DF50] mf_invocationWithSelector:sel_handleMessageFlagsChanged_ target:self object:a3];
  [(MFLibraryStore *)self _addInvocationToQueue:?];
}

- (void)_queueMessagesWillBeCompacted:(id)a3
{
  v4 = [MEMORY[0x1E695DF50] mf_invocationWithSelector:sel_handleMessagesWillBeCompacted_ target:self object:a3];
  [(MFLibraryStore *)self _addInvocationToQueue:?];
}

- (void)_queueMessagesWereCompacted:(id)a3
{
  v4 = [MEMORY[0x1E695DF50] mf_invocationWithSelector:sel_handleMessagesCompacted_ target:self object:a3];
  [(MFLibraryStore *)self _addInvocationToQueue:?];
}

- (BOOL)hasCompleteDataForMimePart:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MFLibraryStore;
  v5 = [(MFLibraryStore *)&v7 hasCompleteDataForMimePart:v4]|| [(MFMailMessageLibrary *)self->_library hasCompleteDataForMimePart:v4];

  return v5;
}

@end