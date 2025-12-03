@interface MFLegacyIMAPMailboxTaskManager
+ (OS_os_log)log;
- (BOOL)_selectMailbox:(id)mailbox withConnection:(id)connection;
- (BOOL)_shouldContinueToPreservedUID:(unint64_t)d;
- (BOOL)canFetchMessageIDs;
- (BOOL)connection:(id)connection shouldHandleUntaggedResponse:(id)response forCommand:(id)command;
- (BOOL)fetchDataForMimePart:(id)part range:(_NSRange)range isComplete:(BOOL *)complete consumer:(id)consumer;
- (BOOL)moveSupportedFromMailboxURL:(id)l toURL:(id)rL;
- (BOOL)performOperationRequiringConnection:(BOOL)connection withOptions:(unint64_t)options failedToSelectMailbox:(BOOL *)mailbox operation:(id)operation;
- (MFLegacyIMAPMailboxTaskManager)initWithMailbox:(id)mailbox;
- (NSString)mailboxName;
- (id)_downloadForMessageBodyData:(id)data usingDownloadCache:(id)cache;
- (id)_fetchFullMessageDataForMessage:(id)message download:(id *)download;
- (id)_idleConditionsObservable;
- (id)_newSearchResponseQueueForConnection:(id)connection limit:(unsigned int)limit;
- (id)_observeChangesInIdleConditions;
- (id)_performBodyDataDownload:(id)download usingConnection:(id)connection downloadCache:(id)cache isPartial:(BOOL *)partial;
- (id)_searchFlagsForUIDs:(id)ds usingConnection:(id)connection;
- (id)deletedMessages;
- (id)downloadSearchResults:(id)results;
- (id)fetchDataForMessage:(id)message didDownload:(BOOL *)download;
- (id)fetchDataForMessage:(id)message partial:(BOOL *)partial;
- (id)fetchHeadersForMessage:(id)message;
- (id)flagsForIMAPUIDs:(id)ds mailboxURL:(id)l;
- (id)imapMailboxNameForMailboxURL:(id)l;
- (id)messageDataForMessage:(id)message;
- (id)messageDataForRemoteID:(id)d mailboxURL:(id)l;
- (id)messageIdRollCall:(id)call;
- (id)replayAction:(id)action;
- (id)sequenceIdentifierForUIDs:(id)ds;
- (int64_t)fetchMessagesWithMessageIDs:(id)ds andSetFlags:(unint64_t)flags;
- (int64_t)fetchNumMessages:(unint64_t)messages preservingUID:(id)d options:(unint64_t)options;
- (unint64_t)_fetchMessagesWithArguments:(id)arguments idRange:(id)range onConnection:(id)connection synchronize:(BOOL)synchronize limit:(unint64_t)limit topUIDToCompact:(unint64_t)compact topKnownUID:(unint64_t)d success:(BOOL *)self0 examinedRange:(_NSRange *)self1 fetchableUIDsFound:(unint64_t *)self2 preserveUID:(unint64_t *)self3 numFetchedUIDs:(unint64_t *)self4;
- (unint64_t)_fetchMessagesWithUIDs:(id)ds connection:(id)connection newCount:(unint64_t)count flagsToSet:(unint64_t)set queueClass:(Class)class;
- (unint64_t)serverMessageCount;
- (unint64_t)syncMessagesWithUIDs:(id)ds connection:(id)connection serverMessages:(id)messages flagSearchResults:(id)results;
- (void)_fetchMessagesMatchingCriterion:(id)criterion limit:(unsigned int)limit withOptions:(unint64_t)options handler:(id)handler;
- (void)_fetchServerUnreadCountWithConnection:(id)connection;
- (void)_performActionsOnConnection:(id)connection uidsToFetch:(id *)fetch uidsToSync:(id *)sync messagesToCompact:(id *)compact serverMessages:(id)messages flagSearchResults:(id)results shouldForce:(BOOL)force newUIDsToFetch:(unsigned int *)self0;
- (void)_updateServerUnreadCount:(unint64_t)count;
- (void)close;
- (void)compact;
- (void)connection:(id)connection didReceiveResponse:(id)response forCommand:(id)command;
- (void)dealloc;
- (void)fetchDataForMessage:(id)message completionHandler:(id)handler;
- (void)handleFlagsChangedForMessages:(id)messages flags:(id)flags oldFlagsByMessage:(id)message;
- (void)reselectMailbox;
- (void)setSequenceIdentifier:(id)identifier forUIDs:(id)ds;
- (void)setServerMessageCount:(unint64_t)count;
- (void)updateDeletedCountWithNotDeletedCount:(unint64_t)count;
- (void)updateServerUnreadCountClosingConnection:(BOOL)connection;
- (void)willRemoveDelegation:(id)delegation;
@end

@implementation MFLegacyIMAPMailboxTaskManager

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__MFLegacyIMAPMailboxTaskManager_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_12 != -1)
  {
    dispatch_once(&log_onceToken_12, block);
  }

  v2 = log_log_12;

  return v2;
}

void __37__MFLegacyIMAPMailboxTaskManager_log__block_invoke(uint64_t a1)
{
  v2 = [*MEMORY[0x1E69B17F0] UTF8String];
  v5 = NSStringFromClass(*(a1 + 32));
  v3 = os_log_create(v2, [v5 UTF8String]);
  v4 = log_log_12;
  log_log_12 = v3;
}

- (MFLegacyIMAPMailboxTaskManager)initWithMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v39.receiver = self;
  v39.super_class = MFLegacyIMAPMailboxTaskManager;
  v6 = [(MFLegacyIMAPMailboxTaskManager *)&v39 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mailbox, mailbox);
    account = [mailboxCopy account];
    account = v7->_account;
    v7->_account = account;

    account2 = [(MFLegacyIMAPMailboxTaskManager *)v7 account];
    v11 = [account2 _nameForMailboxUid:mailboxCopy];
    mailboxName = v7->_mailboxName;
    v7->_mailboxName = v11;

    v13 = [objc_alloc(MEMORY[0x1E69AD6D8]) initWithName:@"CachedConnectionLock" andDelegate:0];
    cachedConnectionLock = v7->_cachedConnectionLock;
    v7->_cachedConnectionLock = v13;

    v7->_activeFetchVsReplayLock._os_unfair_lock_opaque = 0;
    v15 = objc_alloc_init(MEMORY[0x1E699B7F8]);
    cancelationToken = v7->_cancelationToken;
    v7->_cancelationToken = v15;

    v17 = v7->_cancelationToken;
    _observeChangesInIdleConditions = [(MFLegacyIMAPMailboxTaskManager *)v7 _observeChangesInIdleConditions];
    [(EFManualCancelationToken *)v17 addCancelable:_observeChangesInIdleConditions];

    v19 = MEMORY[0x1E696AEC0];
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(mailboxCopy, "mailboxRowID")}];
    v21 = [v19 stringWithFormat:@"com.apple.mail.imap.search.%@", v20];

    uTF8String = [v21 UTF8String];
    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_create(uTF8String, v23);
    searchQueue = v7->_searchQueue;
    v7->_searchQueue = v24;

    mailboxName = [(MFLegacyIMAPMailboxTaskManager *)v7 mailboxName];
    v27 = [mailboxCopy redactedName:mailboxName];

    currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
    isInternal = [currentDevice isInternal];

    v30 = MEMORY[0x1E696AEC0];
    if (isInternal)
    {
      v31 = MEMORY[0x1E699B858];
      account3 = [mailboxCopy account];
      displayName = [account3 displayName];
      v34 = [v31 partiallyRedactedStringForString:displayName];
      v35 = [v30 stringWithFormat:@"%@ - '%@'", v34, v27];
      loggingPrefix = v7->_loggingPrefix;
      v7->_loggingPrefix = v35;
    }

    else
    {
      account3 = [mailboxCopy account];
      displayName = [account3 uniqueID];
      v37 = [v30 stringWithFormat:@"%@ - '%@'", displayName, v27];
      v34 = v7->_loggingPrefix;
      v7->_loggingPrefix = v37;
    }

    v7->_serverCountLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (void)dealloc
{
  [(EFManualCancelationToken *)self->_cancelationToken cancel];
  cachedConnection = self->_cachedConnection;
  if (cachedConnection)
  {
    v4 = [MFMonitoredInvocation invocationWithSelector:sel_checkInConnection_ target:self->_account object:cachedConnection taskName:0 priority:13 canBeCancelled:0];
    v5 = +[MFInvocationQueue sharedInvocationQueue];
    [v5 addInvocation:v4];
  }

  v6.receiver = self;
  v6.super_class = MFLegacyIMAPMailboxTaskManager;
  [(MFLegacyIMAPMailboxTaskManager *)&v6 dealloc];
}

- (unint64_t)_fetchMessagesWithUIDs:(id)ds connection:(id)connection newCount:(unint64_t)count flagsToSet:(unint64_t)set queueClass:(Class)class
{
  v35 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  connectionCopy = connection;
  v14 = +[MFLegacyIMAPMailboxTaskManager log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    loggingPrefix = self->_loggingPrefix;
    *buf = 138543874;
    v30 = loggingPrefix;
    v31 = 2048;
    v32 = [dsCopy count];
    v33 = 2048;
    countCopy = count;
    _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetching skeletons for %lu uids (%lu new)", buf, 0x20u);
  }

  v16 = objc_alloc_init(class);
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v19 = [account storeForMailboxUid:mailbox];
  v20 = *(v16 + 6);
  *(v16 + 6) = v19;

  objc_storeStrong(v16 + 7, connection);
  *(v16 + 8) = count;
  *(v16 + 10) = self->_highestModSequence;
  *(v16 + 11) = set;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __99__MFLegacyIMAPMailboxTaskManager__fetchMessagesWithUIDs_connection_newCount_flagsToSet_queueClass___block_invoke;
  v26[3] = &unk_1E7AA5E48;
  v21 = connectionCopy;
  v27 = v21;
  v22 = v16;
  v28 = v22;
  [dsCopy ef_enumerateObjectsInBatchesOfSize:100 block:v26];
  v23 = v22[9];

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

void __99__MFLegacyIMAPMailboxTaskManager__fetchMessagesWithUIDs_connection_newCount_flagsToSet_queueClass___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = v3;
  [*(a1 + 32) sendSkeletonResponsesForUIDs:? includeTo:? toQueue:?];
  [*(a1 + 40) flush];
}

- (unint64_t)syncMessagesWithUIDs:(id)ds connection:(id)connection serverMessages:(id)messages flagSearchResults:(id)results
{
  v28 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  connectionCopy = connection;
  messagesCopy = messages;
  resultsCopy = results;
  v13 = +[MFLegacyIMAPMailboxTaskManager log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    loggingPrefix = self->_loggingPrefix;
    *buf = 138543618;
    v25 = loggingPrefix;
    v26 = 2048;
    v27 = [dsCopy count];
    _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetching flags for %lu uids", buf, 0x16u);
  }

  v15 = objc_alloc_init(MFSyncResponseQueue);
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v18 = [account storeForMailboxUid:mailbox];

  uRLString = [v18 URLString];
  url = v15->super._url;
  v15->super._url = uRLString;

  objc_storeStrong(&v15->super._store, v18);
  objc_storeStrong(&v15->super._connection, connection);
  objc_storeStrong(&v15->super._serverMessages, messages);
  v15->super._shouldCompact = 0;
  v15->super._shouldFetch = 0;
  *(&v15->super._isSearching + 1) = 1;
  [connectionCopy sendUidAndFlagResponsesForUIDs:dsCopy sequenceIdentifierProvider:self flagSearchResults:resultsCopy toQueue:v15];
  [(MFBufferedQueue *)v15 flush];

  v21 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)_performActionsOnConnection:(id)connection uidsToFetch:(id *)fetch uidsToSync:(id *)sync messagesToCompact:(id *)compact serverMessages:(id)messages flagSearchResults:(id)results shouldForce:(BOOL)force newUIDsToFetch:(unsigned int *)self0
{
  v37 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  messagesCopy = messages;
  resultsCopy = results;
  v18 = [*fetch count];
  if (force)
  {
    if (v18)
    {
      if (*toFetch)
      {
        v19 = +[MFActivityMonitor currentMonitor];
        v20 = MFLookupLocalizedString(@"DOWNLOADING_STATUS_FORMAT", @"Downloading %@ of %@", @"Delayed");
        [v19 setDisplayName:v20 maxCount:*toFetch];

        v21 = *toFetch;
      }

      else
      {
        v21 = 0;
      }

      [(MFLegacyIMAPMailboxTaskManager *)self _fetchMessagesWithUIDs:*fetch connection:connectionCopy newCount:v21 flagsToSet:0 queueClass:objc_opt_class()];
    }

    *fetch = 0;
    *toFetch = 0;
  }

  if ([*sync count])
  {
    if (force)
    {
      v22 = +[MFActivityMonitor currentMonitor];
      [v22 reset];
    }

    [(MFLegacyIMAPMailboxTaskManager *)self syncMessagesWithUIDs:*sync connection:connectionCopy serverMessages:messagesCopy flagSearchResults:resultsCopy];
  }

  *sync = 0;
  if (*compact || force)
  {
    v23 = [*compact count];
    if (v23)
    {
      v24 = +[MFLegacyIMAPMailboxTaskManager log];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        loggingPrefix = self->_loggingPrefix;
        *buf = 138543618;
        v34 = loggingPrefix;
        v35 = 2048;
        v36 = v23;
        _os_log_impl(&dword_1B0389000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: Compacting %lu messages during IMAP sync", buf, 0x16u);
      }

      library = [(MFLegacyIMAPMailboxTaskManager *)self library];
      messageChangeManager = [library messageChangeManager];
      v28 = *compact;
      mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
      v30 = [mailbox URL];
      [messageChangeManager reflectDeletedMessagesWithRemoteIDs:v28 mailboxURL:v30];
    }

    *compact = 0;
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (id)_searchFlagsForUIDs:(id)ds usingConnection:(id)connection
{
  v33[2] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  connectionCopy = connection;
  array = [MEMORY[0x1E695DF70] array];
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v11 = [account storeForMailboxUid:mailbox];

  unreadCount = [v11 unreadCount];
  if ([dsCopy count] >= (2 * unreadCount))
  {
    [MFIMAPConnectionFlagSearchRequest requestWithMask:1 searchTerms:&unk_1F2774CF8 positiveMatch:0];
  }

  else
  {
    [MFIMAPConnectionFlagSearchRequest requestWithMask:1 searchTerms:&unk_1F2774D10 positiveMatch:1];
  }
  v13 = ;
  [array addObject:v13];

  v14 = [MFIMAPConnectionFlagSearchRequest requestWithMask:2 searchTerms:&unk_1F2774D28 positiveMatch:1];
  [array addObject:v14];

  v15 = [MFIMAPConnectionFlagSearchRequest requestWithMask:16 searchTerms:&unk_1F2774D40 positiveMatch:1];
  [array addObject:v15];

  v16 = [MFIMAPConnectionFlagSearchRequest requestWithMask:4 searchTerms:&unk_1F2774D58 positiveMatch:1];
  [array addObject:v16];

  if (self->_supportsDollarForwardedFlag)
  {
    v17 = [MFIMAPConnectionFlagSearchRequest requestWithMask:256 searchTerms:&unk_1F2774D70 positiveMatch:1];
    [array addObject:v17];
  }

  if (self->_supportsForwardedFlag)
  {
    v18 = [MFIMAPConnectionFlagSearchRequest requestWithMask:256 searchTerms:&unk_1F2774D88 positiveMatch:1];
    [array addObject:v18];
  }

  if (self->_supportsFlagColorBitFlags)
  {
    v33[0] = @"KEYWORD";
    v33[1] = @"$MailFlagBit0";
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
    v20 = [MFIMAPConnectionFlagSearchRequest requestWithMask:0x20000000000 searchTerms:v19 positiveMatch:1];
    [array addObject:v20];

    v32[0] = @"KEYWORD";
    v32[1] = @"$MailFlagBit1";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
    v22 = [MFIMAPConnectionFlagSearchRequest requestWithMask:0x40000000000 searchTerms:v21 positiveMatch:1];
    [array addObject:v22];

    v31[0] = @"KEYWORD";
    v31[1] = @"$MailFlagBit2";
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
    v24 = [MFIMAPConnectionFlagSearchRequest requestWithMask:0x80000000000 searchTerms:v23 positiveMatch:1];
    [array addObject:v24];
  }

  if ([connectionCopy supportsCapability:16])
  {
    v25 = [array count];
    if (v25 << 8)
    {
      v26 = v25 << 8;
    }

    else
    {
      v26 = 2;
    }
  }

  else
  {
    v27 = [array count];
    if ((75 * v27) <= 2)
    {
      v26 = 2;
    }

    else
    {
      v26 = 75 * v27;
    }
  }

  if (v26 >= [dsCopy count])
  {
    v28 = 0;
  }

  else
  {
    v28 = [connectionCopy searchUIDs:dsCopy withFlagRequests:array];
  }

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

- (unint64_t)_fetchMessagesWithArguments:(id)arguments idRange:(id)range onConnection:(id)connection synchronize:(BOOL)synchronize limit:(unint64_t)limit topUIDToCompact:(unint64_t)compact topKnownUID:(unint64_t)d success:(BOOL *)self0 examinedRange:(_NSRange *)self1 fetchableUIDsFound:(unint64_t *)self2 preserveUID:(unint64_t *)self3 numFetchedUIDs:(unint64_t *)self4
{
  synchronizeCopy = synchronize;
  v156 = *MEMORY[0x1E69E9840];
  argumentsCopy = arguments;
  rangeCopy = range;
  v131 = 0;
  connectionCopy = connection;
  v105 = argumentsCopy;
  v106 = rangeCopy;
  v116 = [connectionCopy searchIDSet:rangeCopy forTerms:argumentsCopy success:&v131];
  v19 = +[MFLegacyIMAPMailboxTaskManager log];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    loggingPrefix = self->_loggingPrefix;
    v21 = [v116 count];
    *buf = 138543874;
    if (v131)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    v135 = loggingPrefix;
    v136 = 2048;
    v137 = v21;
    v138 = 2112;
    limitCopy2 = v22;
    _os_log_impl(&dword_1B0389000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Search for recent UIDs returned %lu items (success=%@)", buf, 0x20u);
  }

  *iD = 0x7FFFFFFFFFFFFFFFLL;
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v113 = [account storeForMailboxUid:mailbox];

  if (v131)
  {
    v25 = [v116 count];
    if (v25)
    {
      if (synchronizeCopy)
      {
        v111 = [(MFLegacyIMAPMailboxTaskManager *)self _searchFlagsForUIDs:v116 usingConnection:connectionCopy];
      }

      else
      {
        v111 = 0;
      }

      if (found)
      {
        *found += v25;
      }

      v26 = [v116 objectAtIndex:0];
      unsignedIntegerValue = [v26 unsignedIntegerValue];

      lastObject = [v116 lastObject];
      unsignedIntegerValue2 = [lastObject unsignedIntegerValue];

      if (unsignedIntegerValue2 <= compact)
      {
        compactCopy = compact;
      }

      else
      {
        compactCopy = unsignedIntegerValue2;
      }

      v30 = compactCopy - unsignedIntegerValue;
      if (examinedRange)
      {
        examinedRange->location = unsignedIntegerValue;
        examinedRange->length = v30;
      }

      v31 = v30 + 1;
      if (v30 + 1 > limit)
      {
        limitCopy = v30 + 1;
      }

      else
      {
        limitCopy = limit;
      }

      if (limitCopy >= 0x100)
      {
        limitCopy = 256;
      }

      v110 = limitCopy;
      serverMessagePersistence = [v113 serverMessagePersistence];
      v34 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{unsignedIntegerValue, v31}];
      v123 = [serverMessagePersistence serverMessagesForIMAPUIDs:v34 limit:v110 returnLastEntries:1];

      firstObject = [v123 firstObject];
      imapUID = [firstObject imapUID];

      v36 = [v116 count];
      v37 = [v123 count];
      v130 = 0;
      v38 = +[MFLegacyIMAPMailboxTaskManager log];
      v39 = v37 - 1;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v40 = self->_loggingPrefix;
        lastObject2 = [v123 lastObject];
        imapUID2 = [lastObject2 imapUID];
        *buf = 138545922;
        v135 = v40;
        v136 = 2112;
        v137 = v106;
        v138 = 2048;
        limitCopy2 = limit;
        v140 = 2048;
        compactCopy2 = compact;
        v142 = 2048;
        dCopy = d;
        v144 = 2048;
        v145 = v25;
        v146 = 2048;
        v147 = unsignedIntegerValue;
        v148 = 2048;
        v149 = compactCopy;
        v150 = 2048;
        v151 = v39;
        v152 = 1024;
        v153 = imapUID;
        v154 = 1024;
        v155 = imapUID2;
        _os_log_impl(&dword_1B0389000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@: starting UID sync idRange=%@ limit=%lu topUIDToCompact=%lu topKnownUID=%lu UIDCount=%lu lowUID=%lu highUID=%lu serverMessagesIndex=%lu serverMessagesUIDs found=%u to %u", buf, 0x68u);
      }

      v43 = 0;
      v109 = 0;
      v107 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v114 = 0;
      v120 = v36 - 1;
      while (1)
      {
        if (v43 || compactCopy < unsignedIntegerValue)
        {
          if (v107)
          {
            v132[0] = @"MessageIsServerSearchResult";
            v132[1] = @"MessageIsThreadSearchResult";
            v133[0] = MEMORY[0x1E695E110];
            v133[1] = MEMORY[0x1E695E110];
            v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v133 forKeys:v132 count:2];
            v96 = [v113 setFlagsLocallyFromDictionary:v95 forMessages:v107];
          }

          if (ds)
          {
            *ds = v109;
          }

          v125 = v44;
          v126 = v45;
          v124 = v46;
          LOBYTE(v104) = 1;
          [(MFLegacyIMAPMailboxTaskManager *)self _performActionsOnConnection:connectionCopy uidsToFetch:&v126 uidsToSync:&v125 messagesToCompact:&v124 serverMessages:v123 flagSearchResults:v111 shouldForce:v104 newUIDsToFetch:&v130];
          v97 = v126;

          v98 = v125;
          v99 = v124;

          goto LABEL_108;
        }

        context = objc_autoreleasePoolPush();
        if (compactCopy >= imapUID)
        {
          v122 = v44;
          v48 = v46;
        }

        else
        {
          v129 = v45;
          v127 = v46;
          v128 = v44;
          LOBYTE(v104) = 0;
          [(MFLegacyIMAPMailboxTaskManager *)self _performActionsOnConnection:connectionCopy uidsToFetch:&v129 uidsToSync:&v128 messagesToCompact:&v127 serverMessages:v123 flagSearchResults:v111 shouldForce:v104 newUIDsToFetch:&v130];
          v47 = v129;

          v122 = v128;
          v48 = v127;

          v49 = v47;
          serverMessagePersistence2 = [v113 serverMessagePersistence];
          v51 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{unsignedIntegerValue, imapUID - unsignedIntegerValue}];
          v52 = [serverMessagePersistence2 serverMessagesForIMAPUIDs:v51 limit:v110 returnLastEntries:1];

          v53 = [v52 count];
          firstObject2 = [v52 firstObject];
          imapUID = [firstObject2 imapUID];

          v45 = v49;
          v39 = v53 - 1;
          v123 = v52;
        }

        v55 = [v116 objectAtIndexedSubscript:v120];
        intValue = [v55 intValue];

        v59 = *iD != 0x7FFFFFFFFFFFFFFFLL && compactCopy >= *iD || limit != 0;
        if (!limit && v59)
        {
          v60 = +[MFLegacyIMAPMailboxTaskManager log];
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            v61 = self->_loggingPrefix;
            v62 = *iD;
            *buf = 138543618;
            v135 = v61;
            v136 = 2048;
            v137 = v62;
            _os_log_impl(&dword_1B0389000, v60, OS_LOG_TYPE_DEFAULT, "%{public}@: preserving UID %lu!", buf, 0x16u);
          }
        }

        v63 = !v59;
        if (compactCopy != intValue)
        {
          v63 = 1;
        }

        if ((v63 & 1) == 0)
        {
          break;
        }

        if (v39 < 0)
        {
          v76 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v74 = [v123 objectAtIndexedSubscript:v39];
          imapUID3 = [v74 imapUID];

          v76 = imapUID3;
        }

        if (v76 == compactCopy)
        {
          if (!v48)
          {
            v48 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v83 = +[MFLegacyIMAPMailboxTaskManager log];
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            v84 = self->_loggingPrefix;
            *buf = 138543618;
            v135 = v84;
            v136 = 2048;
            v137 = compactCopy;
            _os_log_impl(&dword_1B0389000, v83, OS_LOG_TYPE_DEFAULT, "%{public}@: Compacting %lu (2)", buf, 0x16u);
          }

          v85 = [v123 objectAtIndexedSubscript:v39];
          remoteID = [v85 remoteID];
          [v48 addObject:remoteID];

          --v39;
        }

LABEL_99:
        v43 = compactCopy == 0;
        if (compactCopy)
        {
          --compactCopy;
        }

        else
        {
          compactCopy = 0;
        }

        v44 = v122;
        v46 = v48;
        objc_autoreleasePoolPop(context);
      }

      if (v39 < 0)
      {
LABEL_61:
        v66 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        while (1)
        {
          v64 = [v123 objectAtIndexedSubscript:v39];
          imapUID4 = [v64 imapUID];

          v66 = imapUID4;
          if (compactCopy >= imapUID4)
          {
            break;
          }

          if (!v48)
          {
            v48 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v67 = +[MFLegacyIMAPMailboxTaskManager log];
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            v68 = self->_loggingPrefix;
            v69 = [v123 objectAtIndexedSubscript:v39];
            imapUID5 = [v69 imapUID];
            *buf = 138543618;
            v135 = v68;
            v136 = 1024;
            LODWORD(v137) = imapUID5;
            _os_log_impl(&dword_1B0389000, v67, OS_LOG_TYPE_DEFAULT, "%{public}@: Compacting %u (1)", buf, 0x12u);
          }

          v71 = [v123 objectAtIndexedSubscript:v39];
          remoteID2 = [v71 remoteID];
          [v48 addObject:remoteID2];

          if (v39-- < 1)
          {
            goto LABEL_61;
          }
        }
      }

      if (v66 != compactCopy)
      {
        if (!v45)
        {
          v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        v81 = +[MFLegacyIMAPMailboxTaskManager log];
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
        {
          v94 = self->_loggingPrefix;
          *buf = 138543618;
          v135 = v94;
          v136 = 2048;
          v137 = compactCopy;
          _os_log_debug_impl(&dword_1B0389000, v81, OS_LOG_TYPE_DEBUG, "%{public}@: Fetching %lu", buf, 0x16u);
        }

        v77 = [v116 objectAtIndexedSubscript:v120];
        [v45 addObject:v77];
        if ([v77 intValue] > d)
        {
          ++v130;
          ++v109;
        }

        v82 = limit - 1;
        if (!limit)
        {
          v82 = 0;
        }

        limit = v82;
        ++v114;
        goto LABEL_98;
      }

      v77 = [v123 objectAtIndexedSubscript:v39];
      serverFlags = [v77 serverFlags];
      v79 = MFMessageFlagsForECMessageFlags(serverFlags);

      if ((v79 & 0x80) != 0)
      {
        LODWORD(v80) = 1;
      }

      else
      {
        v80 = (v79 >> 20) & 1;
        if (!synchronizeCopy && (v79 & 0x100000) == 0)
        {
LABEL_97:
          --v39;
LABEL_98:

          --v120;
          goto LABEL_99;
        }
      }

      if (!v122)
      {
        v122 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      v87 = +[MFLegacyIMAPMailboxTaskManager log];
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v135 = compactCopy;
        _os_log_debug_impl(&dword_1B0389000, v87, OS_LOG_TYPE_DEBUG, "Syncing %lu", buf, 0xCu);
      }

      v88 = [v116 objectAtIndexedSubscript:v120];
      [v122 ef_insertObject:v88 usingComparator:&__block_literal_global_37 allowDuplicates:0];
      if (v80)
      {
        library = [(MFLegacyIMAPMailboxTaskManager *)self library];
        messagePersistentID = [v77 messagePersistentID];
        v91 = [library messageWithLibraryID:objc_msgSend(messagePersistentID options:"longLongValue") inMailbox:{0, 0}];

        if (v91)
        {
          v92 = v107;
          if (!v107)
          {
            v92 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v107 = v92;
          [v92 addObject:v91];
        }
      }

      v93 = limit - 1;
      if (!limit)
      {
        v93 = 0;
      }

      limit = v93;

      ++v114;
      goto LABEL_97;
    }
  }

  v114 = 0;
  if (examinedRange)
  {
    *examinedRange = xmmword_1B0E97710;
  }

LABEL_108:
  if (success)
  {
    *success = v131;
  }

  v100 = +[MFLegacyIMAPMailboxTaskManager log];
  if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
  {
    v101 = self->_loggingPrefix;
    *buf = 138543618;
    v135 = v101;
    v136 = 2048;
    v137 = v114;
    _os_log_impl(&dword_1B0389000, v100, OS_LOG_TYPE_DEFAULT, "%{public}@: _fetchMessagesWithArguments returns %lu", buf, 0x16u);
  }

  v102 = *MEMORY[0x1E69E9840];
  return v114;
}

- (void)updateDeletedCountWithNotDeletedCount:(unint64_t)count
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__MFLegacyIMAPMailboxTaskManager_updateDeletedCountWithNotDeletedCount___block_invoke;
  v4[3] = &unk_1E7AA5E90;
  v4[4] = self;
  v4[5] = count;
  [(MFLegacyIMAPMailboxTaskManager *)self performOperationRequiringConnection:1 withOptions:65 failedToSelectMailbox:0 operation:v4];
  os_unfair_lock_lock(&self->_serverCountLock);
  self->_settingServerCount = 0;
  os_unfair_lock_unlock(&self->_serverCountLock);
}

void __72__MFLegacyIMAPMailboxTaskManager_updateDeletedCountWithNotDeletedCount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v4 = MEMORY[0x1E696AEC0];
  v5 = [*(a1 + 32) account];
  v6 = [v4 stringWithFormat:@"%lu:*", objc_msgSend(v5, "minID")];
  v7 = [v3 countForSearchOfIDSet:v6 forTerms:&unk_1F2774DA0 success:&v10];

  v8 = *(a1 + 32);
  os_unfair_lock_lock(v8 + 6);
  *(*(a1 + 32) + 40) = v7;
  v9 = *(a1 + 40);
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(a1 + 32) + 32) = *(*(a1 + 32) + 40) + v9;
  }

  os_unfair_lock_unlock(v8 + 6);
}

- (BOOL)_shouldContinueToPreservedUID:(unint64_t)d
{
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v6 = [account storeForMailboxUid:mailbox];

  v7 = EFStringWithUnsignedInteger();
  v8 = [v6 messageForRemoteID:v7];

  if (v8)
  {
    v9 = ([v8 messageFlags] & 0x80) == 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)fetchNumMessages:(unint64_t)messages preservingUID:(id)d options:(unint64_t)options
{
  v53 = *MEMORY[0x1E69E9840];
  dCopy = d;
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v9 = +[MFActivityMonitor currentMonitor];
  [v9 setMailbox:mailbox];

  v10 = +[MFLegacyIMAPMailboxTaskManager log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    loggingPrefix = self->_loggingPrefix;
    *buf = 138543874;
    *&buf[4] = loggingPrefix;
    *&buf[12] = 2048;
    *&buf[14] = options;
    *&buf[22] = 2048;
    messagesCopy = messages;
    _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: fetchNumMessages started with options 0x%lX, numMessages = %lu", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  messagesCopy = -1;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox2 = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v14 = [account storeForMailboxUid:mailbox2];

  os_unfair_lock_lock(&self->_activeFetchVsReplayLock);
  v15 = +[MFLegacyIMAPMailboxTaskManager log];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    account2 = [(MFLegacyIMAPMailboxTaskManager *)self account];
    hostname = [account2 hostname];
    [(MFLegacyIMAPMailboxTaskManager *)hostname fetchNumMessages:v50 preservingUID:v15 options:account2];
  }

  [v14 willFetchMessages];
  v48 = *MEMORY[0x1E699B3B8];
  objectID = [mailbox objectID];
  v49 = objectID;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x1E699B3C0] object:self userInfo:v19];

  if ((options & 0x40) != 0)
  {
    v21 = 49;
  }

  else
  {
    v21 = 17;
  }

  v22 = [objc_alloc(MEMORY[0x1E699B310]) initWithDomain:21 type:8];
  [v22 startActivity];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __73__MFLegacyIMAPMailboxTaskManager_fetchNumMessages_preservingUID_options___block_invoke;
  v33[3] = &unk_1E7AA5EB8;
  v33[4] = self;
  messagesCopy2 = messages;
  v23 = dCopy;
  v34 = v23;
  optionsCopy = options;
  v24 = v14;
  v35 = v24;
  v36 = buf;
  v37 = &v40;
  [(MFLegacyIMAPMailboxTaskManager *)self performOperationRequiringConnection:1 withOptions:v21 failedToSelectMailbox:0 operation:v33];
  [v22 stopActivityWithSuccess:*(*&buf[8] + 24) >= 0];
  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 postNotificationName:*MEMORY[0x1E699B3B0] object:self userInfo:v19];

  v26 = +[MFActivityMonitor currentMonitor];
  [v26 reset];

  os_unfair_lock_unlock(&self->_activeFetchVsReplayLock);
  v27 = *(*&buf[8] + 24);
  if ((v27 & 0x8000000000000000) == 0)
  {
    v27 = v41[3];
  }

  v28 = +[MFLegacyIMAPMailboxTaskManager log];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = self->_loggingPrefix;
    *v44 = 138543618;
    v45 = v29;
    v46 = 2048;
    v47 = v27;
    _os_log_impl(&dword_1B0389000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: fetchNumMessages finished with result %ld", v44, 0x16u);
  }

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(buf, 8);

  v30 = *MEMORY[0x1E69E9840];
  return v27;
}

void __73__MFLegacyIMAPMailboxTaskManager_fetchNumMessages_preservingUID_options___block_invoke(uint64_t a1, void *a2)
{
  v84 = *MEMORY[0x1E69E9840];
  v71 = a2;
  v68 = [*(a1 + 32) mailboxName];
  v65 = [*(a1 + 32) mailbox];
  v67 = [v71 selectedMailbox];
  if (!v68 || !v67 || ([v68 isEqualToString:v67] & 1) != 0)
  {
    goto LABEL_18;
  }

  v3 = [v71 isValid];
  v4 = [v65 redactedName:v68];
  v5 = +[MFLegacyIMAPMailboxTaskManager log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v62 = [MEMORY[0x1E699B858] fullyRedactedStringForString:v67];
    v63 = v62;
    v64 = @"NO";
    *buf = 138413058;
    *&buf[12] = 2112;
    *&buf[4] = v4;
    if (v3)
    {
      v64 = @"YES";
    }

    *&buf[14] = v62;
    v80 = 2048;
    v81 = v71;
    v82 = 2114;
    v83 = v64;
    _os_log_error_impl(&dword_1B0389000, v5, OS_LOG_TYPE_ERROR, "store and connection mailboxes differ: store=%@ connection=%@ (%p, valid: '%{public}@')", buf, 0x2Au);
  }

  if (v3)
  {
    if ([*(a1 + 32) _selectMailbox:v68 withConnection:v71])
    {
      v6 = 0;
      goto LABEL_13;
    }

    v7 = +[MFLegacyIMAPMailboxTaskManager log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __73__MFLegacyIMAPMailboxTaskManager_fetchNumMessages_preservingUID_options___block_invoke_cold_2();
    }
  }

  else
  {
    v7 = +[MFLegacyIMAPMailboxTaskManager log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __73__MFLegacyIMAPMailboxTaskManager_fetchNumMessages_preservingUID_options___block_invoke_cold_1();
    }
  }

  v6 = 1;
LABEL_13:
  v8 = [MEMORY[0x1E699B7B0] currentDevice];
  v9 = [v8 isInternal];

  if (v9)
  {
    v10 = +[MFLegacyIMAPMailboxTaskManager log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      __73__MFLegacyIMAPMailboxTaskManager_fetchNumMessages_preservingUID_options___block_invoke_cold_3();
    }
  }

  if ((v6 & 1) == 0)
  {
LABEL_18:
    v72 = *(a1 + 72);
    [v71 setIsFetching:1];
    v11 = +[MFLegacyIMAPMailboxTaskManager log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [*(a1 + 32) account];
      v13 = [v12 hostname];
      __73__MFLegacyIMAPMailboxTaskManager_fetchNumMessages_preservingUID_options___block_invoke_cold_4(v13, v78, v11, v12);
    }

    v14 = *(a1 + 40);
    if (v14)
    {
      v15 = [v14 intValue];
    }

    else
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v76 = v15;
    v16 = *(a1 + 32);
    os_unfair_lock_lock(v16 + 6);
    v66 = *(*(a1 + 32) + 32);
    os_unfair_lock_unlock(v16 + 6);
    v17 = *(a1 + 48);
    v70 = *(a1 + 80);
    if ((v70 & 4) != 0)
    {
      v18 = [v17 serverMessagePersistence];
      v19 = [v18 minimumIMAPUID];

      if (v19)
      {
        v20 = [v71 getMailboxIDForUID:v19];
        if (v20)
        {
          v21 = v72;
          v66 = v20 - 1;
          if (v66 < v72)
          {
            v21 = v20 - 1;
          }

          v72 = v21;
        }

        else
        {
          v25 = *(a1 + 32);
          os_unfair_lock_lock(v25 + 6);
          v66 = *(*(a1 + 32) + 32);
          os_unfair_lock_unlock(v25 + 6);
        }

        v24 = (v19 - 1);
      }

      else
      {
        v24 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v69 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = [v17 serverMessagePersistence];
      v23 = [v22 maximumIMAPUID];

      v24 = v23;
      v69 = v23;
    }

    v26 = [*(a1 + 32) account];
    v27 = [v26 minID];
    v28 = v72 - 1;
    if (v72 <= 1)
    {
      v28 = 1;
    }

    v29 = v66 - 1;
    if (v66 <= 1)
    {
      v29 = 1;
    }

    if (v66 <= v28)
    {
      v30 = v29;
    }

    else
    {
      v30 = v28;
    }

    if (v66 <= v28)
    {
      v31 = v27;
    }

    else
    {
      v31 = v66 - v28;
    }

    v75 = 1;
    *(*(*(a1 + 56) + 8) + 24) = 0;
    *buf = xmmword_1B0E97710;
    v74 = 0;
    if ([v71 supportsCapability:18])
    {
      v32 = *(a1 + 32);
      v33 = v32[7];
      if (!v33)
      {
        goto LABEL_51;
      }

      if (v33 != v32[6])
      {
        goto LABEL_48;
      }

      v34 = [v32 mailboxName];
      v77 = v34;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
      [v71 fetchStatusForMailboxes:v35 args:&unk_1F2774DB8];

      v32 = *(a1 + 32);
      v33 = v32[7];
      if (v33)
      {
LABEL_48:
        v36 = v32[6];
        v32[6] = v33;
        if ((v70 & 4) == 0 && v33 == v36)
        {
          [v71 setIsFetching:0];
LABEL_105:
          if ((v70 & 0x20) != 0)
          {
            [*(a1 + 32) _fetchServerUnreadCountWithConnection:v71];
          }

          goto LABEL_107;
        }
      }

      else
      {
LABEL_51:
        v32[6] = 0;
      }
    }

    v37 = 0;
    v38 = 0;
    v39 = v72;
    while (v37 != 0x7FFFFFFFFFFFFFFFLL && (*(*(*(a1 + 56) + 8) + 24) < v72 || v76 != 0x7FFFFFFFFFFFFFFFLL && [*(a1 + 32) _shouldContinueToPreservedUID:?] && *buf > v76) && v30 && !v38 && (v75 & 1) != 0)
    {
      v40 = objc_autoreleasePoolPush();
      v73 = 0;
      v41 = *(a1 + 32);
      os_unfair_lock_lock(v41 + 6);
      v42 = *(*(a1 + 32) + 32);
      os_unfair_lock_unlock(v41 + 6);
      if (v31 + v30 >= v42)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu:*", v31];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu:%lu", v31, v31 + v30];
      }
      v43 = ;
      v44 = [*(a1 + 32) _fetchMessagesWithArguments:&unk_1F2774DD0 idRange:v43 onConnection:v71 synchronize:(v70 & 8) == 0 limit:v72 - *(*(*(a1 + 56) + 8) + 24) topUIDToCompact:v24 topKnownUID:v69 success:&v75 examinedRange:buf fetchableUIDsFound:&v74 preserveUID:&v76 numFetchedUIDs:&v73];
      v37 = v44;
      if (v44 != 0x7FFFFFFFFFFFFFFFLL)
      {
        *(*(*(a1 + 56) + 8) + 24) += v44;
      }

      *(*(*(a1 + 64) + 8) + 24) += v73;
      v45 = [*(a1 + 32) account];
      v38 = [v45 minID] == v31;

      v39 *= 2;
      if (!v38)
      {
        v46 = *buf - 1;
        if (!*buf)
        {
          v46 = 0;
        }

        if (*buf != 0x7FFFFFFFFFFFFFFFLL)
        {
          v24 = v46;
        }

        v47 = [*(a1 + 32) account];
        v48 = [v47 minID];
        v49 = v31 - 1;
        v50 = v39 - 1;
        if (!v39)
        {
          v50 = 1;
        }

        v51 = v31 - 2;
        if (v49 <= 1)
        {
          v51 = 1;
        }

        v52 = v49 > v50;
        v53 = v49 - v50;
        if (v52)
        {
          v30 = v50;
        }

        else
        {
          v30 = v51;
        }

        if (v52)
        {
          v31 = v53;
        }

        else
        {
          v31 = v48;
        }
      }

      v76 = 0x7FFFFFFFFFFFFFFFLL;

      objc_autoreleasePoolPop(v40);
    }

    [v71 setIsFetching:0];
    v54 = *(a1 + 32);
    os_unfair_lock_lock(v54 + 6);
    if (v38 && (v55 = *(a1 + 32), v66 == *(v55 + 32)) && (*(v55 + 11) & 1) == 0)
    {
      *(v55 + 11) = 1;
      os_unfair_lock_unlock(v54 + 6);
      [*(a1 + 32) updateDeletedCountWithNotDeletedCount:v74];
    }

    else
    {
      os_unfair_lock_unlock(v54 + 6);
    }

    if (v75 == 1)
    {
      v56 = *(*(*(a1 + 56) + 8) + 24);
      if (v56 | v70 & 4)
      {
        if (*buf && *buf != 0x7FFFFFFFFFFFFFFFLL)
        {
          v57 = v76 - 1;
          if (*buf - 1 < v76 - 1)
          {
            v57 = *buf - 1;
          }

          if (v76 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v58 = *buf - 1;
          }

          else
          {
            v58 = v57;
          }

          if (v56 < v72)
          {
            v59 = 1;
          }

          else
          {
            v59 = (v70 >> 1) & 1;
          }

          if (v59)
          {
            v60 = 0;
          }

          else
          {
            v60 = 500;
          }

          compactMessagesToUID(*(a1 + 32), v58, v60);
        }
      }

      else
      {
        compactMessagesToUID(*(a1 + 32), 0xFFFFFFFFLL, 0);
      }
    }

    if ((v75 & 1) == 0)
    {
      *(*(*(a1 + 56) + 8) + 24) = -1;
    }

    goto LABEL_105;
  }

LABEL_107:

  v61 = *MEMORY[0x1E69E9840];
}

- (void)updateServerUnreadCountClosingConnection:(BOOL)connection
{
  if (connection)
  {
    v3 = 33;
  }

  else
  {
    v3 = 1;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__MFLegacyIMAPMailboxTaskManager_updateServerUnreadCountClosingConnection___block_invoke;
  v4[3] = &unk_1E7AA5EE0;
  v4[4] = self;
  [(MFLegacyIMAPMailboxTaskManager *)self performOperationRequiringConnection:1 withOptions:v3 failedToSelectMailbox:0 operation:v4];
}

- (void)_fetchServerUnreadCountWithConnection:(id)connection
{
  connectionCopy = connection;
  v28 = 0;
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v7 = [account storeForMailboxUid:mailbox];

  os_unfair_lock_lock(&self->_serverCountLock);
  totalCount = [v7 totalCount];
  serverMessageCount = self->_serverMessageCount;
  os_unfair_lock_unlock(&self->_serverCountLock);
  if (totalCount >= serverMessageCount || ([v7 serverMessagePersistence], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "minimumIMAPUID"), v10, v11 < 2))
  {
    [(MFLegacyIMAPMailboxTaskManager *)self _updateServerUnreadCount:0];
  }

  else
  {
    v12 = [connectionCopy messageSetForRange:((v11 - 1) << 32) | 1];
    mailbox2 = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
    if ([mailbox2 shouldUseNonDeletedForUnreadCount])
    {
      v14 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"UNDELETED", 0}];
    }

    else
    {
      v14 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"UNSEEN", @"UNDELETED", 0}];
    }

    v15 = v14;

    v16 = [connectionCopy countForSearchOfUidSet:v12 forTerms:v15 success:&v28];
    if (v28 == 1)
    {
      [(MFLegacyIMAPMailboxTaskManager *)self _updateServerUnreadCount:v16];
    }
  }

  mailbox3 = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  shouldUseNonDeletedForUnreadCount = [mailbox3 shouldUseNonDeletedForUnreadCount];

  if ((shouldUseNonDeletedForUnreadCount & 1) == 0)
  {
    account2 = [(MFLegacyIMAPMailboxTaskManager *)self account];
    baseAccount = [account2 baseAccount];
    isGmailAccount = [baseAccount isGmailAccount];

    if (isGmailAccount)
    {
      uRLString = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{0x1F2748140, 0}];
      v23 = objc_alloc(MEMORY[0x1E695DEC8]);
      mailboxName = [(MFLegacyIMAPMailboxTaskManager *)self mailboxName];
      library = [v23 initWithObjects:{mailboxName, 0}];

      [connectionCopy fetchStatusForMailboxes:library args:uRLString];
      goto LABEL_16;
    }

    v26 = [connectionCopy countForSearchOfIDSet:0x1F273E1E0 forTerms:&unk_1F2774DE8 success:&v28];
    if (v28 == 1)
    {
      v27 = v26;
      uRLString = [v7 URLString];
      if (!uRLString)
      {
LABEL_17:

        goto LABEL_18;
      }

      library = [(MFLegacyIMAPMailboxTaskManager *)self library];
      [library setLastSyncAndMostRecentStatusCount:v27 forMailbox:uRLString];
LABEL_16:

      goto LABEL_17;
    }
  }

LABEL_18:
}

- (void)_updateServerUnreadCount:(unint64_t)count
{
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v9 = [account storeForMailboxUid:mailbox];

  library = [(MFLegacyIMAPMailboxTaskManager *)self library];
  uRLString = [v9 URLString];
  [library setServerUnreadOnlyOnServerCount:count forMailbox:uRLString];
}

- (id)_newSearchResponseQueueForConnection:(id)connection limit:(unsigned int)limit
{
  connectionCopy = connection;
  v7 = objc_alloc_init(MFSearchResponseQueue);
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v10 = [account storeForMailboxUid:mailbox];

  v7->limit = limit;
  uRLString = [(MFLibraryStore *)v10 URLString];
  url = v7->super._url;
  v7->super._url = uRLString;

  store = v7->super._store;
  v7->super._store = v10;
  v14 = v10;

  connection = v7->super._connection;
  v7->super._connection = connectionCopy;

  v7->super._shouldCompact = 0;
  v7->super._shouldFetch = 1;
  v7->super._isSearching = 1;
  return v7;
}

- (void)_fetchMessagesMatchingCriterion:(id)criterion limit:(unsigned int)limit withOptions:(unint64_t)options handler:(id)handler
{
  v33[2] = *MEMORY[0x1E69E9840];
  criterionCopy = criterion;
  handlerCopy = handler;
  v33[0] = criterionCopy;
  v12 = [MFMessageCriterion messageIsDeletedCriterion:0];
  v33[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v14 = [MFMessageCriterion andCompoundCriterionWithCriteria:v13];

  criterionForSQL = [v14 criterionForSQL];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __92__MFLegacyIMAPMailboxTaskManager__fetchMessagesMatchingCriterion_limit_withOptions_handler___block_invoke;
  v23 = &unk_1E7AA5F08;
  v16 = criterionForSQL;
  v24 = v16;
  v17 = handlerCopy;
  v26 = v17;
  v27 = &v29;
  selfCopy = self;
  limitCopy = limit;
  [(MFLegacyIMAPMailboxTaskManager *)self performOperationRequiringConnection:1 withOptions:options | 0x41 failedToSelectMailbox:0 operation:&v20];
  if ((v30[3] & 1) == 0)
  {
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"LibraryIMAPStoreErrorDomain" code:2 userInfo:{0, v20, v21, v22, v23, v24}];
    (*(v17 + 2))(v17, 0x7FFFFFFFFFFFFFFFLL, 0, v18);
  }

  _Block_object_dispose(&v29, 8);
  v19 = *MEMORY[0x1E69E9840];
}

void __92__MFLegacyIMAPMailboxTaskManager__fetchMessagesMatchingCriterion_limit_withOptions_handler___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v4 = fetchArgumentsForCriterion(*(a1 + 32), 1);
  if (v4)
  {
    v5 = [*(a1 + 40) _newSearchResponseQueueForConnection:v8 limit:*(a1 + 64)];
    [v8 sendUidResponsesForSearchArguments:v4 toQueue:v5];
    [v5 flush];
    v6 = v5[10];
    if (v6)
    {
      [*(a1 + 40) _fetchMessagesWithUIDs:v6 connection:v8 newCount:0x7FFFFFFFFFFFFFFFLL flagsToSet:128 queueClass:objc_opt_class()];
    }

    v7 = [v5 indexSet];
    [v3 addIndexes:v7];

    (*(*(a1 + 48) + 16))();
    [*(a1 + 40) _fetchServerUnreadCountWithConnection:v8];
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"LibraryIMAPStoreErrorDomain" code:1 userInfo:0];
    (*(*(a1 + 48) + 16))();
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
}

- (id)messageIdRollCall:(id)call
{
  callCopy = call;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__12;
  v15 = __Block_byref_object_dispose__12;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__MFLegacyIMAPMailboxTaskManager_messageIdRollCall___block_invoke;
  v8[3] = &unk_1E7AA5F30;
  v9 = callCopy;
  v10 = &v11;
  v5 = callCopy;
  [(MFLegacyIMAPMailboxTaskManager *)self performOperationRequiringConnection:1 withOptions:17 failedToSelectMailbox:0 operation:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __52__MFLegacyIMAPMailboxTaskManager_messageIdRollCall___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 _uidsForMessageIDs:*(a1 + 32) excludeDeleted:1];
  if (![v3 count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    goto LABEL_5;
  }

  v4 = [v3 count];
  if (v4 == [*(a1 + 32) count])
  {
    v5 = [*(a1 + 32) copy];
LABEL_5:
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
    goto LABEL_7;
  }

  v7 = [v13 fetchMessageIdsForUids:v3];
  v8 = objc_alloc(MEMORY[0x1E695DFD8]);
  v9 = [v7 allValues];
  v10 = [v8 initWithArray:v9];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

LABEL_7:
}

void __60__MFLegacyIMAPMailboxTaskManager_searchWithCriterion_limit___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v16 = a3;
  v6 = a4;
  if (v16)
  {
    v7 = objc_opt_new();
    for (i = [v16 firstIndex]; i != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend(v16, "indexGreaterThanIndex:", i))
    {
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
      [v7 addObject:v9];
    }

    v10 = *(a1 + 32);
    v11 = [[MFUIDSet alloc] initWithUIDs:v7];
    [v10 finishWithResult:v11];
  }

  else
  {
    v12 = *(a1 + 32);
    v7 = [v6 copy];
    [v12 finishWithError:v7];
  }

  v13 = [v6 copy];
  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
}

- (id)downloadSearchResults:(id)results
{
  resultsCopy = results;
  uids = [resultsCopy uids];
  v6 = [uids ef_map:&__block_literal_global_140];
  library = [(MFLegacyIMAPMailboxTaskManager *)self library];
  v8 = [MEMORY[0x1E695DFD8] setWithArray:v6];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  uRLString = [mailbox URLString];
  v11 = [library copyMessagesWithRemoteIDs:v8 options:7346239 inRemoteMailbox:uRLString];
  v12 = [v11 ef_map:&__block_literal_global_143];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __56__MFLegacyIMAPMailboxTaskManager_downloadSearchResults___block_invoke_3;
  v24[3] = &unk_1E7AA5FA0;
  v13 = v12;
  v25 = v13;
  v14 = [uids ef_filter:v24];
  v15 = [[MFUIDSet alloc] initWithUIDs:uids];
  if ([v14 count])
  {
    v16 = objc_opt_new();
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __56__MFLegacyIMAPMailboxTaskManager_downloadSearchResults___block_invoke_4;
    v20[3] = &unk_1E7AA5FC8;
    v20[4] = self;
    v21 = v14;
    v17 = v16;
    v22 = v17;
    v23 = v15;
    [(MFLegacyIMAPMailboxTaskManager *)self performOperationRequiringConnection:1 withOptions:0 failedToSelectMailbox:0 operation:v20];
    future = [v17 future];
  }

  else
  {
    future = [MEMORY[0x1E699B7C8] futureWithResult:v15];
  }

  return future;
}

id __56__MFLegacyIMAPMailboxTaskManager_downloadSearchResults___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 stringValue];

  return v2;
}

id __56__MFLegacyIMAPMailboxTaskManager_downloadSearchResults___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v2, "uid")}];

  return v3;
}

void __56__MFLegacyIMAPMailboxTaskManager_downloadSearchResults___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _fetchMessagesWithUIDs:*(a1 + 40) connection:v3 newCount:0x7FFFFFFFFFFFFFFFLL flagsToSet:128 queueClass:objc_opt_class()];
  [*(a1 + 48) finishWithResult:*(a1 + 56)];
}

- (BOOL)canFetchMessageIDs
{
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v5 = [account storeForMailboxUid:mailbox];

  serverMessageCount = [v5 serverMessageCount];
  LOBYTE(serverMessageCount) = serverMessageCount > [v5 allNonDeletedCountIncludingServerSearch:1 andThreadSearch:1];

  return serverMessageCount;
}

- (int64_t)fetchMessagesWithMessageIDs:(id)ds andSetFlags:(unint64_t)flags
{
  dsCopy = ds;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = -1;
  if ([dsCopy count])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74__MFLegacyIMAPMailboxTaskManager_fetchMessagesWithMessageIDs_andSetFlags___block_invoke;
    v9[3] = &unk_1E7AA5FF0;
    v10 = dsCopy;
    selfCopy = self;
    v12 = &v14;
    flagsCopy = flags;
    [(MFLegacyIMAPMailboxTaskManager *)self performOperationRequiringConnection:1 withOptions:1 failedToSelectMailbox:0 operation:v9];
  }

  v7 = v15[3];
  _Block_object_dispose(&v14, 8);

  return v7;
}

void __74__MFLegacyIMAPMailboxTaskManager_fetchMessagesWithMessageIDs_andSetFlags___block_invoke(void *a1, void *a2)
{
  v6 = a2;
  v3 = [v6 _uidsForMessageIDs:a1[4] excludeDeleted:0];
  v4 = a1[5];
  v5 = [v3 allObjects];
  *(*(a1[6] + 8) + 24) = [v4 _fetchMessagesWithUIDs:v5 connection:v6 newCount:0x7FFFFFFFFFFFFFFFLL flagsToSet:a1[7] queueClass:objc_opt_class()];
}

- (NSString)mailboxName
{
  _MFLockGlobalLock();
  v3 = self->_mailboxName;
  _MFUnlockGlobalLock();

  return v3;
}

- (void)compact
{
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  isOffline = [account isOffline];

  if ((isOffline & 1) == 0)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __41__MFLegacyIMAPMailboxTaskManager_compact__block_invoke;
    v5[3] = &unk_1E7AA5EE0;
    v5[4] = self;
    [(MFLegacyIMAPMailboxTaskManager *)self performOperationRequiringConnection:1 withOptions:1 failedToSelectMailbox:0 operation:v5];
  }
}

void __41__MFLegacyIMAPMailboxTaskManager_compact__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if (([v10 expunge] & 1) == 0)
  {
    v3 = +[MFActivityMonitor currentMonitor];
    v4 = [v3 error];

    if (v4)
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = MFLookupLocalizedString(@"IMAP_COMPACT_FAILED", @"Mail was unable to remove the deleted messages in the mailbox “%@” on server “%@”.", @"Delayed");
      v7 = [*(*(a1 + 32) + 120) displayName];
      v8 = [*(*(a1 + 32) + 112) hostname];
      v9 = [v5 stringWithFormat:v6, v7, v8];
      [v4 useGenericDescription:v9];
    }
  }
}

void __78__MFLegacyIMAPMailboxTaskManager_deleteMessagesOlderThanNumberOfDays_compact___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) account];
  v5 = [v4 _shouldLogDeleteActivity];

  if (v5)
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) account];
      v8 = [v7 ef_publicDescription];
      v9 = *(a1 + 32);
      v10 = *(a1 + 56);
      v16 = 138544130;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 1024;
      v21 = v10;
      v22 = 2112;
      v23 = v3;
      _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_INFO, "IMAP Account %{public}@ deleting messages from store: %@ older than %d days using connection: %@", &v16, 0x26u);
    }
  }

  v11 = *(a1 + 32);
  v12 = [v11 mailboxName];
  LODWORD(v11) = [v11 _selectMailbox:v12 withConnection:v3];

  if (v11)
  {
    [v3 deleteMessagesOlderThanNumberOfDays:*(a1 + 56)];
  }

  if (*(a1 + 60) == 1)
  {
    [v3 close];
  }

  v13 = [*(a1 + 32) library];
  v14 = [v13 messagesForMailbox:*(a1 + 40) olderThanNumberOfDays:*(a1 + 56)];

  [*(a1 + 48) compactMessages:v14];
  v15 = *MEMORY[0x1E69E9840];
}

- (id)replayAction:(id)action
{
  actionCopy = action;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__12;
  v24 = __Block_byref_object_dispose__12;
  v25 = 0;
  os_unfair_lock_lock(&self->_activeFetchVsReplayLock);
  v19 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = 0x1E699B348;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = 0x1E699B2B0;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = 0x1E699B2B8;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_16:
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"MFLegacyIMAPMailboxTaskManager.m" lineNumber:1354 description:{@"Couldn't make replayer for action %@", actionCopy}];

          v7 = 0;
          goto LABEL_10;
        }

        v6 = 0x1E699B368;
      }
    }
  }

  v7 = [objc_alloc(*v6) initWithAction:actionCopy];
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_10:
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __47__MFLegacyIMAPMailboxTaskManager_replayAction___block_invoke;
  v15[3] = &unk_1E7AA6040;
  v8 = v7;
  v16 = v8;
  selfCopy = self;
  v18 = &v20;
  [(MFLegacyIMAPMailboxTaskManager *)self performOperationRequiringConnection:1 withOptions:17 failedToSelectMailbox:&v19 operation:v15];
  if (!v21[5] && v19 == 1)
  {
    v9 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:0];
    v10 = [v8 failActionWithError:v9];
    v11 = v21[5];
    v21[5] = v10;
  }

  os_unfair_lock_unlock(&self->_activeFetchVsReplayLock);
  v12 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v12;
}

void __47__MFLegacyIMAPMailboxTaskManager_replayAction___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  [*(a1 + 32) setServerInterface:?];
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  v3 = [*(a1 + 32) replayAction];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)messageDataForMessage:(id)message
{
  messageCopy = message;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFLegacyIMAPMailboxTaskManager.m" lineNumber:1371 description:{@"Invalid parameter not satisfying: %@", @"[message isKindOfClass:[MFMailMessage class]]"}];
  }

  v6 = [messageCopy messageDataIsComplete:0 downloadIfNecessary:0];

  return v6;
}

- (BOOL)moveSupportedFromMailboxURL:(id)l toURL:(id)rL
{
  rLCopy = rL;
  v6 = [MailAccount accountWithURL:l];
  v7 = [MailAccount accountWithURL:rLCopy];
  if (v6 == v7)
  {
    moveSupported = [v6 moveSupported];
  }

  else
  {
    moveSupported = 0;
  }

  return moveSupported;
}

- (id)flagsForIMAPUIDs:(id)ds mailboxURL:(id)l
{
  v26 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v7 = [account storeForMailboxUid:mailbox];

  serverMessagePersistence = [v7 serverMessagePersistence];
  v9 = [serverMessagePersistence serverMessagesForIMAPUIDs:dsCopy limit:*MEMORY[0x1E699B3A8] returnLastEntries:0];

  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        serverFlags = [v15 serverFlags];
        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v15, "imapUID")}];
        [v10 setObject:serverFlags forKeyedSubscript:v17];
      }

      v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)imapMailboxNameForMailboxURL:(id)l
{
  lCopy = l;
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v6 = [mailbox URL];
  v7 = [lCopy isEqual:v6];

  if (v7)
  {
    mailboxName = [(MFLegacyIMAPMailboxTaskManager *)self mailboxName];
  }

  else
  {
    absoluteString = [lCopy absoluteString];
    v10 = [MailAccount mailboxUidFromActiveAccountsForURL:absoluteString];

    account = [(MFLegacyIMAPMailboxTaskManager *)self account];
    mailboxName = [account _nameForMailboxUid:v10];
  }

  return mailboxName;
}

- (id)messageDataForRemoteID:(id)d mailboxURL:(id)l
{
  dCopy = d;
  v6 = -[MFIMAPMessage initWithFlags:size:uid:]([MFIMAPMessage alloc], "initWithFlags:size:uid:", 0, 0xFFFFFFFFLL, [dCopy intValue]);
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v9 = [account storeForMailboxUid:mailbox];
  [(MFIMAPMessage *)v6 setMessageStore:v9];

  v10 = [(MFLegacyIMAPMailboxTaskManager *)self _fetchFullMessageDataForMessage:v6 download:0];

  return v10;
}

- (BOOL)fetchDataForMimePart:(id)part range:(_NSRange)range isComplete:(BOOL *)complete consumer:(id)consumer
{
  length = range.length;
  location = range.location;
  partCopy = part;
  consumerCopy = consumer;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  type = [partCopy type];
  if (([@"multipart" isEqualToString:type] & 1) == 0)
  {
    [partCopy range];
    v15 = v14;
    mimeBody = [partCopy mimeBody];
    message = [mimeBody message];

    partNumber = [partCopy partNumber];
    if (v15 && message && (objc_opt_respondsToSelector() & 1) != 0 && [message uid] && (objc_msgSend(&stru_1F273A5E0, "isEqualToString:", partNumber) & 1) == 0)
    {
      fetchLimits = [(IMAPAccount *)self->_account fetchLimits];
      [partCopy range];
      v28 = v19;
      fetchMinBytes = [fetchLimits fetchMinBytes];
      v21 = 0x7FFFFFFFFFFFFFFFLL;
      if (fetchMinBytes != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (location || length != v28)
        {
          if (length != 0x7FFFFFFFFFFFFFFFLL)
          {
            if (location >= v28)
            {
              location = v28;
            }

            fetchMinBytes2 = [fetchLimits fetchMinBytes];
            minBytesLeft = [fetchLimits minBytesLeft];
            v23 = fetchMinBytes2;
            v21 = v28 - location;
            if (length > fetchMinBytes2)
            {
              v23 = length;
            }

            if (v21 < v23)
            {
              v23 = v28 - location;
            }

            if (v28 - location - v23 >= minBytesLeft)
            {
              v21 = v23;
            }
          }
        }

        else
        {
          location = 0;
        }
      }

      v24 = v21;
      v29 = [objc_alloc(MEMORY[0x1E699B310]) initWithDomain:21 type:13];
      [v29 startActivity];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __81__MFLegacyIMAPMailboxTaskManager_fetchDataForMimePart_range_isComplete_consumer___block_invoke;
      v31[3] = &unk_1E7AA6068;
      v32 = message;
      v38 = location;
      v39 = v24;
      v33 = partNumber;
      v40 = v15;
      v37 = &v42;
      v34 = consumerCopy;
      selfCopy = self;
      v36 = partCopy;
      completeCopy = complete;
      [(MFLegacyIMAPMailboxTaskManager *)self performOperationRequiringConnection:1 withOptions:5 failedToSelectMailbox:0 operation:v31];
      [v29 stopActivityWithSuccess:*(v43 + 24)];
    }
  }

  v25 = *(v43 + 24);

  _Block_object_dispose(&v42, 8);
  return v25;
}

void __81__MFLegacyIMAPMailboxTaskManager_fetchDataForMimePart_range_isComplete_consumer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) uid];
  v5 = [v3 downloadCache];
  v6 = v5;
  v7 = *(a1 + 88);
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    if (*(a1 + 96))
    {
      [v5 downloadForUid:v4 section:v8 expectedLength:4096 consumer:v9];
    }

    else
    {
      [v5 downloadForUid:v4 section:v8 length:0 consumer:v9];
    }
    v10 = ;
  }

  else
  {
    v10 = [v5 downloadForUid:v4 section:*(a1 + 40) range:*(a1 + 80) consumer:{v7, *(a1 + 48)}];
  }

  v11 = v10;
  *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 56) _waitForDataFromDownload:v10 uid:v4 downloadCache:v6 connection:v3];
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    [*(a1 + 64) range];
    v13 = v12;
    v14 = [v11 bytesFetched];
    v15 = +[MFActivityMonitor currentMonitor];
    v16 = +[MFNetworkController sharedInstance];
    [v15 recordTransportType:{objc_msgSend(v16, "transportType")}];

    v17 = *(a1 + 80) + v14 == v13;
    v18 = v17;
    if (!v14 && !v17)
    {
      v19 = MFLogGeneral();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        __81__MFLegacyIMAPMailboxTaskManager_fetchDataForMimePart_range_isComplete_consumer___block_invoke_cold_1(v4, v19);
      }

      v18 = 1;
    }

    v20 = *(a1 + 104);
    if (v20)
    {
      *v20 |= v18;
    }
  }
}

- (void)fetchDataForMessage:(id)message completionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [[MFError alloc] initWithDomain:@"MFMessageErrorDomain" code:1029 userInfo:0];
  handlerCopy[2](handlerCopy, 0, v4);
}

- (id)fetchDataForMessage:(id)message didDownload:(BOOL *)download
{
  messageCopy = message;
  v9 = 0;
  v6 = [(MFLegacyIMAPMailboxTaskManager *)self _fetchFullMessageDataForMessage:messageCopy download:&v9];
  v7 = v9;
  if (!v6)
  {
    _compactMessageIfNoData(self, v7, messageCopy);
  }

  return v6;
}

- (id)_fetchFullMessageDataForMessage:(id)message download:(id *)download
{
  messageCopy = message;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__12;
  v29 = __Block_byref_object_dispose__12;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__12;
  v23 = __Block_byref_object_dispose__12;
  v24 = 0;
  v7 = [objc_alloc(MEMORY[0x1E699B310]) initWithDomain:21 type:13];
  [v7 startActivity];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __75__MFLegacyIMAPMailboxTaskManager__fetchFullMessageDataForMessage_download___block_invoke;
  v14 = &unk_1E7AA6090;
  v8 = messageCopy;
  v15 = v8;
  selfCopy = self;
  v17 = &v19;
  v18 = &v25;
  [(MFLegacyIMAPMailboxTaskManager *)self performOperationRequiringConnection:1 withOptions:5 failedToSelectMailbox:0 operation:&v11];
  [v7 stopActivityWithSuccess:{v26[5] != 0, v11, v12, v13, v14}];
  if (download)
  {
    *download = v20[5];
  }

  v9 = v26[5];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v9;
}

void __75__MFLegacyIMAPMailboxTaskManager__fetchFullMessageDataForMessage_download___block_invoke(uint64_t a1, void *a2)
{
  v23 = a2;
  v3 = [*(a1 + 32) uid];
  v4 = objc_alloc_init(MEMORY[0x1E69AD698]);
  v5 = [MEMORY[0x1E69AD6D0] filterWithConsumer:v4];
  v6 = [v23 downloadCache];
  v7 = [v6 downloadForUid:v3 section:&stru_1F273A5E0 length:objc_msgSend(*(a1 + 32) consumer:{"messageSize"), v5}];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [*(a1 + 40) _waitForDataFromDownload:*(*(*(a1 + 48) + 8) + 40) uid:v3 downloadCache:v6 connection:v23];
  v11 = [*(*(*(a1 + 48) + 8) + 40) bytesFetched];
  v12 = [*(a1 + 32) messageSize];
  if (v11 >= v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    goto LABEL_5;
  }

  v17 = [v6 downloadForUid:v3 section:&stru_1F273A5E0 range:v11 consumer:{v12, v5}];
  v18 = *(*(a1 + 48) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  v20 = [*(a1 + 40) _waitForDataFromDownload:*(*(*(a1 + 48) + 8) + 40) uid:v3 downloadCache:v6 connection:v23];
  v21 = [*(*(*(a1 + 48) + 8) + 40) bytesFetched];
  if (v20)
  {
    v22 = v21;
    if (![*(*(*(a1 + 48) + 8) + 40) bytesFetched] || v22 + v11 >= v12)
    {
LABEL_5:
      v14 = [v4 data];
      v15 = *(*(a1 + 56) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }
  }
}

- (id)_downloadForMessageBodyData:(id)data usingDownloadCache:(id)cache
{
  v5 = [cache downloadForMessage:data];
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  [v5 setAllowsPartialDownloads:{objc_msgSend(account, "allowsPartialDownloads")}];

  [v5 setFetchBodyData:1];

  return v5;
}

- (id)_performBodyDataDownload:(id)download usingConnection:(id)connection downloadCache:(id)cache isPartial:(BOOL *)partial
{
  downloadCopy = download;
  connectionCopy = connection;
  cacheCopy = cache;
  partial = [downloadCopy partial];
  if (!-[MFLegacyIMAPMailboxTaskManager _waitForDataFromDownload:uid:downloadCache:connection:](self, "_waitForDataFromDownload:uid:downloadCache:connection:", downloadCopy, [downloadCopy uid], cacheCopy, connectionCopy))
  {
    data = 0;
    if (!partial)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  data = [downloadCopy data];
  partial = [downloadCopy partial];
  if (partial)
  {
LABEL_5:
    *partial = partial;
  }

LABEL_6:

  return data;
}

- (id)fetchDataForMessage:(id)message partial:(BOOL *)partial
{
  messageCopy = message;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__12;
  v27 = __Block_byref_object_dispose__12;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__12;
  v21 = __Block_byref_object_dispose__12;
  v22 = 0;
  v7 = [objc_alloc(MEMORY[0x1E699B310]) initWithDomain:21 type:13];
  [v7 startActivity];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__MFLegacyIMAPMailboxTaskManager_fetchDataForMessage_partial___block_invoke;
  v12[3] = &unk_1E7AA60B8;
  v14 = &v17;
  v12[4] = self;
  v8 = messageCopy;
  v13 = v8;
  v15 = &v23;
  partialCopy = partial;
  [(MFLegacyIMAPMailboxTaskManager *)self performOperationRequiringConnection:1 withOptions:21 failedToSelectMailbox:0 operation:v12];
  [v7 stopActivityWithSuccess:v24[5] != 0];
  v9 = v24[5];
  if (!v9)
  {
    _compactMessageIfNoData(self, v18[5], v8);
    v9 = v24[5];
  }

  v10 = v9;

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v10;
}

void __62__MFLegacyIMAPMailboxTaskManager_fetchDataForMessage_partial___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 downloadCache];
  v4 = [*(a1 + 32) _downloadForMessageBodyData:*(a1 + 40) usingDownloadCache:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(a1 + 32) _performBodyDataDownload:*(*(*(a1 + 48) + 8) + 40) usingConnection:v12 downloadCache:v3 isPartial:*(a1 + 64)];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = +[MFActivityMonitor currentMonitor];
  v11 = +[MFNetworkController sharedInstance];
  [v10 recordTransportType:{objc_msgSend(v11, "transportType")}];
}

- (id)fetchHeadersForMessage:(id)message
{
  messageCopy = message;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__12;
  v24 = __Block_byref_object_dispose__12;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__12;
  v18 = __Block_byref_object_dispose__12;
  v19 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__MFLegacyIMAPMailboxTaskManager_fetchHeadersForMessage___block_invoke;
  v9[3] = &unk_1E7AA60E0;
  v12 = &v14;
  v5 = messageCopy;
  v10 = v5;
  selfCopy = self;
  v13 = &v20;
  [(MFLegacyIMAPMailboxTaskManager *)self performOperationRequiringConnection:1 withOptions:5 failedToSelectMailbox:0 operation:v9];
  v6 = v21[5];
  if (!v6)
  {
    _compactMessageIfNoData(self, v15[5], v5);
    v6 = v21[5];
  }

  v7 = v6;

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v7;
}

void __57__MFLegacyIMAPMailboxTaskManager_fetchHeadersForMessage___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [v16 downloadCache];
  v4 = [v3 downloadForMessage:*(a1 + 32)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(a1 + 48) + 8) + 40);
  if (v7 && [*(a1 + 40) _waitForDataFromDownload:v7 uid:objc_msgSend(*(a1 + 32) downloadCache:"uid") connection:{v3, v16}])
  {
    v8 = +[MFActivityMonitor currentMonitor];
    v9 = +[MFNetworkController sharedInstance];
    [v8 recordTransportType:{objc_msgSend(v9, "transportType")}];

    v10 = [*(*(*(a1 + 48) + 8) + 40) data];
    v11 = [v10 mf_rangeOfRFC822HeaderData];
    v13 = [v10 mf_subdataWithRange:{v11, v12}];
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }
}

- (BOOL)performOperationRequiringConnection:(BOOL)connection withOptions:(unint64_t)options failedToSelectMailbox:(BOOL *)mailbox operation:(id)operation
{
  connectionCopy = connection;
  v43 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  account2 = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v13 = [account2 storeForMailboxUid:mailbox];

  if ([v13 allowsAppend])
  {
    optionsCopy = options;
  }

  else
  {
    optionsCopy = options | 2;
  }

  [(NSLock *)self->_cachedConnectionLock lock];
  p_cachedConnection = &self->_cachedConnection;
  cachedConnection = self->_cachedConnection;
  if ((optionsCopy & 4) != 0)
  {
    if (![(MFIMAPConnection *)cachedConnection mf_tryLock])
    {
      v17 = 0;
      goto LABEL_9;
    }

    cachedConnection = *p_cachedConnection;
  }

  v17 = cachedConnection;
LABEL_9:
  [(NSLock *)self->_cachedConnectionLock unlock];
  if (v17 && (optionsCopy & 0x10) != 0)
  {
    [(MFIMAPConnection *)v17 noop];
  }

  else if (!v17)
  {
    goto LABEL_20;
  }

  if ([(MFConnection *)v17 isValid])
  {
    v18 = 1;
    goto LABEL_24;
  }

  if ((optionsCopy & 4) != 0)
  {
    [(MFIMAPConnection *)v17 mf_unlock];
  }

  [(NSLock *)self->_cachedConnectionLock lock];
  v19 = *p_cachedConnection;
  if (v17 == *p_cachedConnection)
  {
    *p_cachedConnection = 0;
  }

  [(NSLock *)self->_cachedConnectionLock unlock];

LABEL_20:
  mailbox2 = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v17 = [account connectionForMailbox:mailbox2 delegate:self options:optionsCopy failedToSelectMailbox:mailbox];

  [(NSLock *)self->_cachedConnectionLock lock];
  if (!*p_cachedConnection && (optionsCopy & 0x40) == 0)
  {
    objc_storeStrong(&self->_cachedConnection, v17);
  }

  [(NSLock *)self->_cachedConnectionLock unlock];
  v18 = 0;
LABEL_24:
  p_mailboxName = &self->_mailboxName;
  if (self->_mailboxName)
  {
    if (v17)
    {
      goto LABEL_31;
    }

LABEL_30:
    if (connectionCopy)
    {
      goto LABEL_53;
    }

    goto LABEL_31;
  }

  v22 = [account _nameForMailboxUid:self->_mailbox];
  _MFLockGlobalLock();
  if (!*p_mailboxName)
  {
    objc_storeStrong(&self->_mailboxName, v22);
  }

  _MFUnlockGlobalLock();

  if (!v17)
  {
    goto LABEL_30;
  }

LABEL_31:
  v23 = v18 ^ 1;
  if (!v17)
  {
    v23 = 1;
  }

  if ((v23 & 1) == 0)
  {
    if (*p_mailboxName)
    {
      selectedMailbox = [(MFIMAPConnection *)v17 selectedMailbox];

      if (!selectedMailbox)
      {
        [(MFLegacyIMAPMailboxTaskManager *)self _selectMailbox:self->_mailboxName withConnection:v17];
      }
    }
  }

  mailbox3 = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  mailboxName = [(MFLegacyIMAPMailboxTaskManager *)self mailboxName];
  v27 = [mailbox3 redactedName:mailboxName];

  v28 = +[MFLegacyIMAPMailboxTaskManager log];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = @"NO";
    *buf = 138544130;
    v36 = v27;
    v37 = 2048;
    if (v18)
    {
      v29 = @"YES";
    }

    v38 = v17;
    v39 = 2112;
    v40 = v29;
    v41 = 1024;
    v42 = optionsCopy;
    _os_log_impl(&dword_1B0389000, v28, OS_LOG_TYPE_INFO, "performOperationRequiringConnection: mailbox='%{public}@' connection=%p cached=%@ options=%d", buf, 0x26u);
  }

  [(MFConnection *)v17 startActivity];
  operationCopy[2](operationCopy, v17);
  [(MFConnection *)v17 stopActivity];

  if (v17)
  {
    if ((optionsCopy & 4) != 0)
    {
      [(MFIMAPConnection *)v17 mf_unlock];
    }

    if ((optionsCopy & 0x20) != 0)
    {
      if ([(MFMailboxUid *)self->_mailbox mailboxType]!= 7)
      {
        v30 = 1;
LABEL_52:
        [account checkInConnection:v17 destroy:v30];
        goto LABEL_53;
      }

      currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
      v30 = [currentDevice isPlatform:2];
    }

    else
    {
      v30 = 0;
    }

    if (v17 != *p_cachedConnection || v30)
    {
      goto LABEL_52;
    }
  }

LABEL_53:

  v32 = *MEMORY[0x1E69E9840];
  return v17 != 0;
}

- (BOOL)_selectMailbox:(id)mailbox withConnection:(id)connection
{
  mailboxCopy = mailbox;
  connectionCopy = connection;
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  v9 = [connectionCopy selectMailbox:mailboxCopy withAccount:account];

  return v9;
}

- (void)reselectMailbox
{
  if (self->_cachedConnection)
  {
    account = [(MFLegacyIMAPMailboxTaskManager *)self account];
    v6 = [account _nameForMailboxUid:self->_mailbox];

    _MFLockGlobalLock();
    v4 = [v6 copy];
    mailboxName = self->_mailboxName;
    self->_mailboxName = v4;

    _MFUnlockGlobalLock();
    [(MFLegacyIMAPMailboxTaskManager *)self _selectMailbox:self->_mailboxName withConnection:self->_cachedConnection];
  }
}

- (void)willRemoveDelegation:(id)delegation
{
  delegationCopy = delegation;
  [(NSLock *)self->_cachedConnectionLock lock];
  cachedConnection = self->_cachedConnection;
  if (cachedConnection)
  {
    v5 = cachedConnection == delegationCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v5)
  {
    self->_cachedConnection = 0;
  }

  [(NSLock *)self->_cachedConnectionLock unlock];
  if (v6)
  {
    [(MFIMAPConnection *)delegationCopy finishIdle];
  }
}

- (void)connection:(id)connection didReceiveResponse:(id)response forCommand:(id)command
{
  v65 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  commandCopy = command;
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v48 = [account storeForMailboxUid:mailbox];

  if (!commandCopy || [responseCopy responseType] != 2 || objc_msgSend(commandCopy, "command") != 13 && objc_msgSend(commandCopy, "command") != 9)
  {
    goto LABEL_45;
  }

  untaggedResponses = [commandCopy untaggedResponses];
  if (!untaggedResponses)
  {
    goto LABEL_44;
  }

  *&self->_supportsForwardedFlag = 0;
  self->_supportsFlagColorBitFlags = 0;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v9 = untaggedResponses;
  v10 = [v9 countByEnumeratingWithState:&v49 objects:v64 count:16];
  if (!v10)
  {
    v25 = v9;
    goto LABEL_43;
  }

  unsignedIntValue = 0;
  v12 = *v50;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v50 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v49 + 1) + 8 * i);
      if ([v14 responseType] == 2)
      {
        responseInfo = [v14 responseInfo];
        responseCode = [v14 responseCode];
        if (responseCode > 8)
        {
          if (responseCode != 9)
          {
            if (responseCode == 10)
            {
              unsignedIntValue = [responseInfo unsignedIntValue];
            }

            goto LABEL_29;
          }

          unsignedIntValue2 = [responseInfo unsignedIntValue];
          [v48 setUidNext:unsignedIntValue2];
          v17 = +[MFLegacyIMAPMailboxTaskManager log];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            loggingPrefix = self->_loggingPrefix;
            *buf = 138543618;
            v57 = loggingPrefix;
            v58 = 1024;
            LODWORD(v59) = unsignedIntValue2;
            _os_log_impl(&dword_1B0389000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Received UIDNEXT = %u", buf, 0x12u);
          }

LABEL_28:
        }

        else
        {
          if (responseCode != 5)
          {
            if (responseCode == 6)
            {
              [v48 setAllowsAppend:0];
            }

            goto LABEL_29;
          }

          if (responseInfo)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = responseInfo;
              self->_supportsForwardedFlag = [v17 indexOfObject:@"Forwarded"]!= 0x7FFFFFFFFFFFFFFFLL;
              self->_supportsDollarForwardedFlag = [v17 indexOfObject:@"$Forwarded"]!= 0x7FFFFFFFFFFFFFFFLL;
              v18 = [v17 indexOfObject:@"$MailFlagBit0"]!= 0x7FFFFFFFFFFFFFFFLL || [v17 indexOfObject:@"$MailFlagBit1"]!= 0x7FFFFFFFFFFFFFFFLL || [v17 indexOfObject:@"$MailFlagBit2"]!= 0x7FFFFFFFFFFFFFFFLL;
              self->_supportsFlagColorBitFlags = v18;
              goto LABEL_28;
            }
          }
        }

LABEL_29:

        continue;
      }
    }

    v10 = [v9 countByEnumeratingWithState:&v49 objects:v64 count:16];
  }

  while (v10);

  if (unsignedIntValue)
  {
    v21 = [(MFMailboxUid *)self->_mailbox userInfoObjectForKey:@"UIDVALIDITY"];
    intValue = [v21 intValue];

    if (intValue != unsignedIntValue)
    {
      [v48 setUidValidity:unsignedIntValue];
      if (intValue)
      {
        [v48 _flushAllMessageData];
        mailbox2 = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
        mailboxName = [(MFLegacyIMAPMailboxTaskManager *)self mailboxName];
        v25 = [mailbox2 redactedName:mailboxName];

        v26 = +[MFLegacyIMAPMailboxTaskManager log];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = self->_loggingPrefix;
          *buf = 138544130;
          v57 = v27;
          v58 = 2114;
          v59 = v25;
          v60 = 2048;
          v61 = intValue;
          v62 = 2048;
          v63 = unsignedIntValue;
          _os_log_impl(&dword_1B0389000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: Forcing reload of '%{public}@' because of UIDVALIDITY change (old:%lu new:%lu)", buf, 0x2Au);
        }

        library = [(MFLegacyIMAPMailboxTaskManager *)self library];
        uRLString = [v48 URLString];
        v30 = 0;
        do
        {
          v31 = objc_autoreleasePoolPush();
          v32 = [library messagesForMailbox:uRLString limit:1000];

          v30 = v32;
          if ([v32 count])
          {
            [library compactMessages:v32];
          }

          objc_autoreleasePoolPop(v31);
        }

        while ([v32 count] > 0x3E7);
        serverMessagePersistence = [v48 serverMessagePersistence];
        [serverMessagePersistence deleteAllServerMessagesInMailbox];

LABEL_43:
      }
    }
  }

LABEL_44:

LABEL_45:
  if ([responseCopy isAlertResponse])
  {
    account2 = [(MFLegacyIMAPMailboxTaskManager *)self account];
    userString = [responseCopy userString];
    [account2 handleAlertResponse:userString];
  }

  if ([responseCopy isResponseWithCode:31])
  {
    account3 = [(MFLegacyIMAPMailboxTaskManager *)self account];
    userString2 = [responseCopy userString];
    [account3 handleOverQuotaResponse:userString2];
  }

  if ((!commandCopy || [commandCopy command] == 28) && -[MFLegacyIMAPMailboxTaskManager shouldUseIDLE](self, "shouldUseIDLE") && objc_msgSend(responseCopy, "responseType") == 9)
  {
    v38 = +[MFLegacyIMAPMailboxTaskManager log];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = self->_loggingPrefix;
      number = [responseCopy number];
      *buf = 138543618;
      v57 = v39;
      v58 = 2048;
      v59 = number;
      _os_log_impl(&dword_1B0389000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@: Got EXISTS = %llu", buf, 0x16u);
    }

    -[MFLegacyIMAPMailboxTaskManager setServerMessageCount:](self, "setServerMessageCount:", [responseCopy number]);
    if (self->_mailbox)
    {
      mailbox = self->_mailbox;
      v54 = @"MailAccountContentsDidChangeUids";
      v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&mailbox count:1];
      v55 = v41;
      v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"MailAccountContentsDidChange" object:self->_account userInfo:v42];
    }
  }

  v44 = *MEMORY[0x1E69E9840];
}

- (id)_idleConditionsObservable
{
  v25[5] = *MEMORY[0x1E69E9840];
  v3 = +[MFPowerController sharedInstance];
  lowPowerModeObservable = [v3 lowPowerModeObservable];
  pluggedInObservable = [v3 pluggedInObservable];
  v4 = +[MFNetworkController sharedInstance];
  wifiObservable = [v4 wifiObservable];

  v6 = +[MFLockStateMonitor sharedInstance];
  lockStateObservable = [v6 lockStateObservable];

  v8 = +[MFAppStateMonitor sharedInstance];
  appIsVisibleObservable = [v8 appIsVisibleObservable];

  objc_initWeak(&location, self);
  v10 = MEMORY[0x1E699B830];
  v25[0] = lowPowerModeObservable;
  v25[1] = appIsVisibleObservable;
  v25[2] = lockStateObservable;
  v25[3] = wifiObservable;
  v25[4] = pluggedInObservable;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:5];
  v12 = [v10 combineLatest:v11];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __59__MFLegacyIMAPMailboxTaskManager__idleConditionsObservable__block_invoke;
  v22[3] = &unk_1E7AA4B40;
  objc_copyWeak(&v23, &location);
  v13 = [v12 map:v22];

  v14 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.message.imap (IDLE)" qualityOfService:17];
  distinctUntilChanged = [v13 distinctUntilChanged];
  v16 = [distinctUntilChanged doOnError:&__block_literal_global_201];
  v17 = [v16 observeOn:v14];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

id __59__MFLegacyIMAPMailboxTaskManager__idleConditionsObservable__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 objectAtIndexedSubscript:0];
  v6 = [v5 BOOLValue];

  v7 = [v3 objectAtIndexedSubscript:1];
  v8 = [v7 BOOLValue];

  v9 = [v3 objectAtIndexedSubscript:2];
  v10 = [v9 BOOLValue];

  v11 = [v3 objectAtIndexedSubscript:3];
  v12 = [v11 BOOLValue];

  v13 = [v3 objectAtIndexedSubscript:4];
  v14 = [v13 BOOLValue];

  v15 = [WeakRetained account];
  [v15 uniqueIdForPersistentConnection];

  if (PCSettingsGetStyle() == 2)
  {
    v16 = v8 & (v6 ^ 1);
  }

  else
  {
    v19 = [v15 canReceiveNewMailNotifications];
    v20 = PCSettingsGetPollInterval() == -1;
    v16 = v8 & (v6 ^ 1);
    if ((v16 & 1) == 0 && (v20 & ~v19 & 1) == 0)
    {
      if (v12 & v14)
      {
        v16 = 1;
      }

      else
      {
        v16 = (v10 | v6) ^ 1;
      }
    }
  }

  v17 = [MEMORY[0x1E696AD98] numberWithBool:v16 & 1];

  return v17;
}

void __59__MFLegacyIMAPMailboxTaskManager__idleConditionsObservable__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [v2 ef_publicDescription];
    __59__MFLegacyIMAPMailboxTaskManager__idleConditionsObservable__block_invoke_2_cold_1(v4, v6, v3);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)_observeChangesInIdleConditions
{
  objc_initWeak(&location, self);
  _idleConditionsObservable = [(MFLegacyIMAPMailboxTaskManager *)self _idleConditionsObservable];
  v4 = MEMORY[0x1E699B838];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __65__MFLegacyIMAPMailboxTaskManager__observeChangesInIdleConditions__block_invoke;
  v11 = &unk_1E7AA4AF0;
  objc_copyWeak(&v12, &location);
  v5 = [v4 observerWithResultBlock:&v8];
  v6 = [_idleConditionsObservable subscribe:{v5, v8, v9, v10, v11}];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v6;
}

void __65__MFLegacyIMAPMailboxTaskManager__observeChangesInIdleConditions__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scheduleIdleTransition:{objc_msgSend(v4, "BOOLValue")}];
}

- (BOOL)connection:(id)connection shouldHandleUntaggedResponse:(id)response forCommand:(id)command
{
  *&v45[5] = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  responseCopy = response;
  commandCopy = command;
  v11 = [commandCopy command] == 13 || objc_msgSend(commandCopy, "command") == 9;
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v14 = [account storeForMailboxUid:mailbox];

  responseType = [responseCopy responseType];
  v16 = 1;
  if (responseType > 12)
  {
    switch(responseType)
    {
      case 13:
        account2 = [(MFLegacyIMAPMailboxTaskManager *)self account];
        mailboxName = [responseCopy mailboxName];
        v39 = [account2 mailboxUidForName:?];
        statusEntries = [responseCopy statusEntries];
        v18 = [statusEntries objectForKey:0x1F2748100];
        if (v18)
        {
          uRLString = [v39 URLString];

          if (uRLString)
          {
            uidNext = [v14 uidNext];
            unsignedIntValue = [v18 unsignedIntValue];
            if (uidNext != unsignedIntValue)
            {
              v22 = +[MFLegacyIMAPMailboxTaskManager log];
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                loggingPrefix = self->_loggingPrefix;
                *buf = 138543874;
                v43 = loggingPrefix;
                v44 = 1024;
                *v45 = uidNext;
                v45[2] = 1024;
                *&v45[3] = unsignedIntValue;
                _os_log_impl(&dword_1B0389000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: Got new UIDNEXT (old = %u, new = %u)", buf, 0x18u);
              }

              [v14 setUidNext:unsignedIntValue];
            }
          }
        }

        mailboxName2 = [(MFLegacyIMAPMailboxTaskManager *)self mailboxName];
        v25 = [mailboxName isEqualToString:mailboxName2];

        if (v25)
        {
          v26 = [statusEntries objectForKey:0x1F2748160];

          if (v26)
          {
            -[MFLegacyIMAPMailboxTaskManager setHighestModSequence:](self, "setHighestModSequence:", [v26 unsignedLongLongValue]);
          }

          v27 = [statusEntries objectForKey:0x1F2748140];

          if (v27)
          {
            uRLString2 = [v14 URLString];
            if (uRLString2)
            {
              library = [(MFLegacyIMAPMailboxTaskManager *)self library];
              [library setLastSyncAndMostRecentStatusCount:objc_msgSend(v27 forMailbox:{"unsignedIntegerValue"), uRLString2}];
            }
          }
        }

        else
        {
          v27 = v18;
        }

        break;
      case 17:
        v30 = [responseCopy fetchResultWithType:8];
        fetchPipeline = [connectionCopy fetchPipeline];
        downloadCache = [connectionCopy downloadCache];
        if (v30 && [commandCopy command] == 21 && fetchPipeline && objc_msgSend(fetchPipeline, "isSending"))
        {
          [downloadCache handleFetchResponse:responseCopy forUid:{objc_msgSend(v30, "uid")}];
        }

        break;
      case 24:
LABEL_11:
        v16 = 0;
        goto LABEL_37;
      default:
        goto LABEL_37;
    }

    v16 = 1;
    goto LABEL_37;
  }

  if (responseType != 9)
  {
    if (responseType != 10)
    {
      goto LABEL_37;
    }

    goto LABEL_11;
  }

  v33 = +[MFLegacyIMAPMailboxTaskManager log];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = self->_loggingPrefix;
    *buf = 138543618;
    v43 = v34;
    v44 = 2048;
    *v45 = [responseCopy number];
    _os_log_impl(&dword_1B0389000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@: Got EXISTS = %llu", buf, 0x16u);
  }

  -[MFLegacyIMAPMailboxTaskManager setServerMessageCount:](self, "setServerMessageCount:", [responseCopy number]);
  v16 = v11;
LABEL_37:
  if ([responseCopy isAlertResponse])
  {
    account3 = [(MFLegacyIMAPMailboxTaskManager *)self account];
    userString = [responseCopy userString];
    [account3 handleAlertResponse:userString];

    v16 = 0;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)deletedMessages
{
  v15[2] = *MEMORY[0x1E69E9840];
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v5 = [account storeForMailboxUid:mailbox];

  uRLString = [v5 URLString];
  v7 = [MFMessageCriterion criterionForMailboxURL:uRLString];

  v8 = [MFMessageCriterion messageIsDeletedCriterion:1];
  v15[0] = v7;
  v15[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v10 = [MFMessageCriterion andCompoundCriterionWithCriteria:v9];

  library = [(MFLegacyIMAPMailboxTaskManager *)self library];
  v12 = [library messagesMatchingCriterion:v10 options:0];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)handleFlagsChangedForMessages:(id)messages flags:(id)flags oldFlagsByMessage:(id)message
{
  v26 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  flagsCopy = flags;
  messageCopy = message;
  [(MFLegacyIMAPMailboxTaskManager *)self mf_lock];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = messagesCopy;
  v11 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
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

        if ((intValue & 2) != 0)
        {
          if ((messageFlags & 2) != 0)
          {
            continue;
          }

          v18 = -1;
        }

        else
        {
          if ((messageFlags & 2) == 0)
          {
            continue;
          }

          v18 = 1;
        }

        self->_serverDeletedCount += v18;
      }

      v11 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  [(MFLegacyIMAPMailboxTaskManager *)self mf_unlock];
  v19 = *MEMORY[0x1E69E9840];
}

- (void)close
{
  [(NSLock *)self->_cachedConnectionLock lock];
  v6 = self->_cachedConnection;
  cachedConnection = self->_cachedConnection;
  self->_cachedConnection = 0;

  [(NSLock *)self->_cachedConnectionLock unlock];
  v4 = v6;
  if (v6)
  {
    [(MFIMAPConnection *)v6 finishIdle];
    account = [(MFLegacyIMAPMailboxTaskManager *)self account];
    [account checkInConnection:v6];

    v4 = v6;
  }
}

- (void)setServerMessageCount:(unint64_t)count
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v13 = [standardUserDefaults objectForKey:@"DeletedSearchLimit"];

  if (v13)
  {
    unsignedIntValue = [v13 unsignedIntValue];
    if (unsignedIntValue)
    {
      v7 = unsignedIntValue;
    }

    else
    {
      v7 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v7 = 300;
  }

  os_unfair_lock_lock(&self->_serverCountLock);
  if (v7 <= count)
  {
    self->_serverMessageCount = count;
    os_unfair_lock_unlock(&self->_serverCountLock);
    self->_serverDeletedCount = 0;
  }

  else
  {
    settingServerCount = self->_settingServerCount;
    self->_settingServerCount = 1;
    if (settingServerCount)
    {
      os_unfair_lock_unlock(&self->_serverCountLock);
    }

    else
    {
      self->_serverMessageCount = count;
      self->_serverDeletedCount = 0;
      os_unfair_lock_unlock(&self->_serverCountLock);
      v9 = +[MFActivityMonitor currentMonitor];
      isRemoteSearch = [v9 isRemoteSearch];

      if ((isRemoteSearch & 1) == 0)
      {
        v11 = +[MFInvocationQueue sharedInvocationQueue];
        v12 = [(NSInvocation *)MFMonitoredInvocation mf_invocationWithSelector:sel_updateDeletedCount target:self];
        [v11 addInvocation:v12];
      }
    }
  }
}

- (unint64_t)serverMessageCount
{
  os_unfair_lock_lock(&self->_serverCountLock);
  serverMessageCount = self->_serverMessageCount;
  serverDeletedCount = self->_serverDeletedCount;
  v5 = serverMessageCount >= serverDeletedCount;
  v6 = serverMessageCount - serverDeletedCount;
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(&self->_serverCountLock);
  return v7;
}

- (id)sequenceIdentifierForUIDs:(id)ds
{
  dsCopy = ds;
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v7 = [account storeForMailboxUid:mailbox];

  library = [(MFLegacyIMAPMailboxTaskManager *)self library];
  uRLString = [v7 URLString];
  v10 = [library sequenceIdentifierForMessagesWithRemoteIDs:dsCopy inMailbox:uRLString];

  return v10;
}

- (void)setSequenceIdentifier:(id)identifier forUIDs:(id)ds
{
  identifierCopy = identifier;
  dsCopy = ds;
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v9 = [account storeForMailboxUid:mailbox];

  library = [(MFLegacyIMAPMailboxTaskManager *)self library];
  uRLString = [v9 URLString];
  [library setSequenceIdentifier:identifierCopy forMessagesWithRemoteIDs:dsCopy inMailbox:uRLString];
}

- (void)fetchNumMessages:(os_log_t)log preservingUID:(void *)a4 options:.cold.1(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1B0389000, log, OS_LOG_TYPE_DEBUG, "%@: Connecting... starting", buf, 0xCu);
}

void __73__MFLegacyIMAPMailboxTaskManager_fetchNumMessages_preservingUID_options___block_invoke_cold_4(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1B0389000, log, OS_LOG_TYPE_DEBUG, "%@: Connecting... completed", buf, 0xCu);
}

void __81__MFLegacyIMAPMailboxTaskManager_fetchDataForMimePart_range_isComplete_consumer___block_invoke_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_fault_impl(&dword_1B0389000, a2, OS_LOG_TYPE_FAULT, "Download fetched 0 bytes for UID %u", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

void __59__MFLegacyIMAPMailboxTaskManager__idleConditionsObservable__block_invoke_2_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "#imap-idle error occurred while observing conditions for IDLE: %{public}@", buf, 0xCu);
}

@end