@interface EDMailboxPersistence
+ (id)log;
- (BOOL)createMailbox:(id)mailbox parentMailboxID:(id)d;
- (BOOL)deleteMailbox:(id)mailbox;
- (BOOL)mailboxURLIsGmailLabel:(id)label;
- (BOOL)moveMailbox:(id)mailbox newParentMailboxID:(id)d;
- (BOOL)renameMailbox:(id)mailbox newName:(id)name;
- (EDMailboxPersistence)initWithMailboxProvider:(id)provider database:(id)database hookRegistry:(id)registry;
- (EDMailboxRowID_s)insertDatabaseRowForMailboxURL:(id)l;
- (EDMailboxRowID_s)mailboxDatabaseIDForMailboxURL:(id)l;
- (NSIndexSet)frecentMailboxes;
- (NSSet)allMailboxObjectIDs;
- (id)allMailboxes;
- (id)initForTesting:(BOOL)testing;
- (id)legacyMailboxForMailboxURL:(id)l;
- (id)legacyMailboxForObjectID:(id)d;
- (id)mailboxDatabaseIDsForMailboxObjectIDs:(id)ds createIfNecessary:(BOOL)necessary;
- (id)mailboxDatabaseIDsForMailboxURLStrings:(id)strings;
- (id)mailboxObjectIDsForMailboxType:(int64_t)type;
- (id)userCreatedMailboxObjectIDs;
- (int64_t)mailboxTypeForMailboxObjectID:(id)d;
- (unsigned)uidNextForMailbox:(EDMailboxRowID_s)mailbox;
- (unsigned)uidValidityForMailbox:(EDMailboxRowID_s)mailbox;
- (void)_reportPersistenceStatistics:(id)statistics;
- (void)_sendCoreAnalyticsForLargestMailbox:(int64_t)mailbox messageCountInSecondLargestMailbox:(int64_t)largestMailbox;
- (void)_sendCoreAnalyticsForMailboxesPerAccount:(id)account accountTypePerAccount:(id)perAccount;
- (void)_sendCoreAnalyticsForMessagesPerAccount:(id)account accountTypePerAccount:(id)perAccount;
- (void)_sendCoreAnalyticsForMessagesPerInbox:(id)inbox accountTypePerAccount:(id)account accountPerInbox:(id)perInbox;
- (void)_sendEventToCoreAnalytics:(id)analytics withEventDictionary:(id)dictionary;
- (void)_startReportingPersistenceStatistics;
- (void)_stopReportingPersistenceStatistics;
- (void)addChangeObserver:(id)observer withIdentifier:(id)identifier;
- (void)allMailboxesWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)fetchMailboxListsWithKind:(int64_t)kind;
- (void)mailboxListInvalidated;
- (void)recordFrecencyEventWithMailboxesWithIDs:(id)ds;
- (void)removeChangeObserverWithIdentifier:(id)identifier;
- (void)serverCountsForMailboxScope:(id)scope block:(id)block;
- (void)test_tearDown;
@end

@implementation EDMailboxPersistence

- (id)allMailboxes
{
  mailboxProvider = [(EDMailboxPersistence *)self mailboxProvider];
  allMailboxes = [mailboxProvider allMailboxes];

  return allMailboxes;
}

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__EDMailboxPersistence_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_51 != -1)
  {
    dispatch_once(&log_onceToken_51, block);
  }

  v2 = log_log_51;

  return v2;
}

void __27__EDMailboxPersistence_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_51;
  log_log_51 = v1;
}

- (EDMailboxPersistence)initWithMailboxProvider:(id)provider database:(id)database hookRegistry:(id)registry
{
  providerCopy = provider;
  databaseCopy = database;
  registryCopy = registry;
  v17.receiver = self;
  v17.super_class = EDMailboxPersistence;
  v12 = [(EDMailboxPersistence *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mailboxProvider, provider);
    objc_storeStrong(&v13->_database, database);
    objc_storeStrong(&v13->_hookRegistry, registry);
    [providerCopy setDelegate:v13];
    v13->_changeObserversByIdentifierLock._os_unfair_lock_opaque = 0;
    v14 = objc_alloc_init(MEMORY[0x1E699AC70]);
    analyticsCollector = v13->_analyticsCollector;
    v13->_analyticsCollector = v14;
  }

  return v13;
}

- (void)dealloc
{
  [(EDMailboxPersistence *)self _stopReportingPersistenceStatistics];
  v3.receiver = self;
  v3.super_class = EDMailboxPersistence;
  [(EDMailboxPersistence *)&v3 dealloc];
}

- (id)initForTesting:(BOOL)testing
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDMailboxPersistence.m" lineNumber:60 description:{@"%s can only be called from unit tests", "-[EDMailboxPersistence initForTesting:]"}];
  }

  v7.receiver = self;
  v7.super_class = EDMailboxPersistence;
  return [(EDMailboxPersistence *)&v7 init];
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDMailboxPersistence.m" lineNumber:65 description:{@"%s can only be called from unit tests", "-[EDMailboxPersistence test_tearDown]"}];
  }

  mailboxProvider = [(EDMailboxPersistence *)self mailboxProvider];
  [mailboxProvider test_tearDown];

  [(EDMailboxPersistence *)self _stopReportingPersistenceStatistics];
}

- (void)mailboxListInvalidated
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_changeObserversByIdentifierLock);
  changeObserversByIdentifier = [(EDMailboxPersistence *)self changeObserversByIdentifier];
  allValues = [changeObserversByIdentifier allValues];

  os_unfair_lock_unlock(&self->_changeObserversByIdentifierLock);
  allMailboxes = [(EDMailboxPersistence *)self allMailboxes];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = allValues;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v9++) mailboxListChanged:{allMailboxes, v11}];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)allMailboxesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  allMailboxes = [(EDMailboxPersistence *)self allMailboxes];
  handlerCopy[2](handlerCopy, allMailboxes);
}

- (id)userCreatedMailboxObjectIDs
{
  allMailboxes = [(EDMailboxPersistence *)self allMailboxes];
  v3 = [allMailboxes ef_compactMap:&__block_literal_global_41];

  return v3;
}

id __51__EDMailboxPersistence_userCreatedMailboxObjectIDs__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type])
  {
    v3 = 0;
  }

  else
  {
    v4 = [v2 objectID];
    v5 = [v4 url];
    v6 = [v5 path];
    v7 = [v6 isEqualToString:@"/Notes"];

    if (v7)
    {
      v3 = 0;
    }

    else
    {
      v3 = [v4 url];

      if (v3)
      {
        v3 = v4;
      }
    }
  }

  return v3;
}

- (void)fetchMailboxListsWithKind:(int64_t)kind
{
  mailboxProvider = [(EDMailboxPersistence *)self mailboxProvider];
  [mailboxProvider fetchMailboxesWithKind:kind];
}

- (id)legacyMailboxForMailboxURL:(id)l
{
  lCopy = l;
  v5 = [objc_alloc(MEMORY[0x1E699AD20]) initWithURL:lCopy];
  v6 = [(EDMailboxPersistence *)self legacyMailboxForObjectID:v5];

  return v6;
}

- (id)legacyMailboxForObjectID:(id)d
{
  dCopy = d;
  mailboxProvider = [(EDMailboxPersistence *)self mailboxProvider];
  v6 = [mailboxProvider legacyMailboxForObjectID:dCopy];

  return v6;
}

- (id)mailboxDatabaseIDsForMailboxObjectIDs:(id)ds createIfNecessary:(BOOL)necessary
{
  dsCopy = ds;
  [(EDMailboxPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDMailboxPersistence mailboxDatabaseIDsForMailboxObjectIDs:createIfNecessary:]", "EDMailboxPersistence.m", 122, "0");
}

- (id)mailboxDatabaseIDsForMailboxURLStrings:(id)strings
{
  stringsCopy = strings;
  [(EDMailboxPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDMailboxPersistence mailboxDatabaseIDsForMailboxURLStrings:]", "EDMailboxPersistence.m", 126, "0");
}

- (EDMailboxRowID_s)mailboxDatabaseIDForMailboxURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = MEMORY[0x1E695DFD8];
    absoluteString = [lCopy absoluteString];
    v8 = [v6 setWithObject:absoluteString];
    v9 = [(EDMailboxPersistence *)self mailboxDatabaseIDsForMailboxURLStrings:v8];

    absoluteString2 = [lCopy absoluteString];
    v11 = [v9 objectForKeyedSubscript:absoluteString2];

    v12.var0 = [v11 unsignedLongLongValue];
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v12.var0 = 0;
  }

  return v12;
}

- (EDMailboxRowID_s)insertDatabaseRowForMailboxURL:(id)l
{
  lCopy = l;
  [(EDMailboxPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDMailboxPersistence insertDatabaseRowForMailboxURL:]", "EDMailboxPersistence.m", 143, "0");
}

- (void)serverCountsForMailboxScope:(id)scope block:(id)block
{
  v22 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v20 = 0;
  v7 = [scope allMailboxObjectIDsWithMailboxTypeResolver:self forExclusion:&v20];
  v8 = v7;
  if (v20 == 1)
  {
    allMailboxObjectIDs = [(EDMailboxPersistence *)self allMailboxObjectIDs];
    v10 = [allMailboxObjectIDs mutableCopy];

    [v10 minusSet:v8];
  }

  else
  {
    v10 = v7;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v12)
  {
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v11);
        }

        (*(blockCopy + 2))(blockCopy, *(*(&v16 + 1) + 8 * i), 0, 0, 0);
      }

      v12 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)mailboxURLIsGmailLabel:(id)label
{
  labelCopy = label;
  [(EDMailboxPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDMailboxPersistence mailboxURLIsGmailLabel:]", "EDMailboxPersistence.m", 171, "0");
}

- (void)_startReportingPersistenceStatistics
{
  v3 = +[EDMailboxPersistence log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_INFO, "Starting to report mailbox persistence statistics.", buf, 2u);
  }

  statisticsReportingScheduler = [(EDMailboxPersistence *)self statisticsReportingScheduler];
  if (!statisticsReportingScheduler)
  {
    statisticsReportingScheduler = [objc_alloc(MEMORY[0x1E696AAD0]) initWithIdentifier:@"com.apple.mail.mailboxPersistence.statisticsReportingScheduler"];
    [statisticsReportingScheduler setQualityOfService:9];
    [statisticsReportingScheduler setRepeats:1];
    [statisticsReportingScheduler setInterval:86400.0];
    [statisticsReportingScheduler setTolerance:3600.0];
    objc_initWeak(buf, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __60__EDMailboxPersistence__startReportingPersistenceStatistics__block_invoke;
    v5[3] = &unk_1E82532E0;
    objc_copyWeak(&v6, buf);
    [statisticsReportingScheduler scheduleWithBlock:v5];
    [(EDMailboxPersistence *)self setStatisticsReportingScheduler:statisticsReportingScheduler];
    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }
}

void __60__EDMailboxPersistence__startReportingPersistenceStatistics__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained statistics];
    [v4 _reportPersistenceStatistics:v5];

    v6[2](v6, 1);
  }
}

- (void)_reportPersistenceStatistics:(id)statistics
{
  v19 = *MEMORY[0x1E69E9840];
  statisticsCopy = statistics;
  currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
  isInternal = [currentDevice isInternal];

  if (isInternal)
  {
    v7 = +[EDMailboxPersistence log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [statisticsCopy debugDescription];
      v17 = 138412290;
      v18 = v8;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_INFO, "Collected mailbox persistence statistics.\n%@", &v17, 0xCu);
    }
  }

  mailboxesPerAccount = [statisticsCopy mailboxesPerAccount];
  accountTypePerAccount = [statisticsCopy accountTypePerAccount];
  [(EDMailboxPersistence *)self _sendCoreAnalyticsForMailboxesPerAccount:mailboxesPerAccount accountTypePerAccount:accountTypePerAccount];

  messagesPerAccount = [statisticsCopy messagesPerAccount];
  accountTypePerAccount2 = [statisticsCopy accountTypePerAccount];
  [(EDMailboxPersistence *)self _sendCoreAnalyticsForMessagesPerAccount:messagesPerAccount accountTypePerAccount:accountTypePerAccount2];

  messagesPerInbox = [statisticsCopy messagesPerInbox];
  accountTypePerAccount3 = [statisticsCopy accountTypePerAccount];
  accountPerInbox = [statisticsCopy accountPerInbox];
  [(EDMailboxPersistence *)self _sendCoreAnalyticsForMessagesPerInbox:messagesPerInbox accountTypePerAccount:accountTypePerAccount3 accountPerInbox:accountPerInbox];

  -[EDMailboxPersistence _sendCoreAnalyticsForLargestMailbox:messageCountInSecondLargestMailbox:](self, "_sendCoreAnalyticsForLargestMailbox:messageCountInSecondLargestMailbox:", [statisticsCopy messagesInLargestMailbox], objc_msgSend(statisticsCopy, "messagesInSecondLargestMailbox"));
  v16 = *MEMORY[0x1E69E9840];
}

- (void)_sendCoreAnalyticsForMailboxesPerAccount:(id)account accountTypePerAccount:(id)perAccount
{
  v25 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  perAccountCopy = perAccount;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = accountCopy;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v13 = MEMORY[0x1E696AD98];
        v14 = MEMORY[0x1E699B858];
        v15 = [v7 objectForKeyedSubscript:v11];
        v16 = [v13 numberWithInteger:{objc_msgSend(v14, "roundedInteger:", objc_msgSend(v15, "count"))}];
        [v12 setObject:v16 forKeyedSubscript:@"mailboxesPerAccount"];

        v17 = [perAccountCopy objectForKeyedSubscript:v11];
        [v12 setObject:v17 forKeyedSubscript:@"accountType"];

        [(EDMailboxPersistence *)self _sendEventToCoreAnalytics:@"com.apple.mail.MailboxStatistics.mailboxesPerAccount" withEventDictionary:v12];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_sendCoreAnalyticsForLargestMailbox:(int64_t)mailbox messageCountInSecondLargestMailbox:(int64_t)largestMailbox
{
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(MEMORY[0x1E699B858], "roundedInteger:", mailbox)}];
  [v9 setObject:v7 forKeyedSubscript:@"messageCountInLargestMailbox"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(MEMORY[0x1E699B858], "roundedInteger:", largestMailbox)}];
  [v9 setObject:v8 forKeyedSubscript:@"messageCountInSecondLargestMailbox"];

  [(EDMailboxPersistence *)self _sendEventToCoreAnalytics:@"com.apple.mail.MailboxStatistics.messagesCountInLargestMailbox" withEventDictionary:v9];
}

- (void)_sendCoreAnalyticsForMessagesPerInbox:(id)inbox accountTypePerAccount:(id)account accountPerInbox:(id)perInbox
{
  v29 = *MEMORY[0x1E69E9840];
  inboxCopy = inbox;
  accountCopy = account;
  perInboxCopy = perInbox;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = inboxCopy;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = *v25;
    do
    {
      v12 = 0;
      do
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v24 + 1) + 8 * v12);
        v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v15 = MEMORY[0x1E696AD98];
        v16 = MEMORY[0x1E699B858];
        v17 = [v9 objectForKeyedSubscript:v13];
        v18 = [v15 numberWithInteger:{objc_msgSend(v16, "roundedInteger:", objc_msgSend(v17, "integerValue"))}];
        [v14 setObject:v18 forKeyedSubscript:@"messagesPerInbox"];

        v19 = [perInboxCopy objectForKeyedSubscript:v13];
        v20 = [accountCopy objectForKeyedSubscript:v19];
        [v14 setObject:v20 forKeyedSubscript:@"accountType"];

        [(EDMailboxPersistence *)self _sendEventToCoreAnalytics:@"com.apple.mail.MailboxStatistics.messagesPerInbox" withEventDictionary:v14];
        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_sendCoreAnalyticsForMessagesPerAccount:(id)account accountTypePerAccount:(id)perAccount
{
  v25 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  perAccountCopy = perAccount;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = accountCopy;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v13 = MEMORY[0x1E696AD98];
        v14 = MEMORY[0x1E699B858];
        v15 = [v7 objectForKeyedSubscript:v11];
        v16 = [v13 numberWithInteger:{objc_msgSend(v14, "roundedInteger:", objc_msgSend(v15, "integerValue"))}];
        [v12 setObject:v16 forKeyedSubscript:@"messagesPerAccount"];

        v17 = [perAccountCopy objectForKeyedSubscript:v11];
        [v12 setObject:v17 forKeyedSubscript:@"accountType"];

        [(EDMailboxPersistence *)self _sendEventToCoreAnalytics:@"com.apple.mail.MailboxStatistics.messagesPerAccount" withEventDictionary:v12];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_sendEventToCoreAnalytics:(id)analytics withEventDictionary:(id)dictionary
{
  analyticsCopy = analytics;
  dictionaryCopy = dictionary;
  v7 = [objc_alloc(MEMORY[0x1E699AC78]) initWithEventName:analyticsCopy collectionData:dictionaryCopy];
  analyticsCollector = [(EDMailboxPersistence *)self analyticsCollector];
  [analyticsCollector logOneTimeEvent:v7];
}

- (void)_stopReportingPersistenceStatistics
{
  v3 = +[EDMailboxPersistence log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_INFO, "Stopping to report mailbox persistence statistics.", v4, 2u);
  }

  [(NSBackgroundActivityScheduler *)self->_statisticsReportingScheduler invalidate];
}

- (NSSet)allMailboxObjectIDs
{
  mailboxProvider = [(EDMailboxPersistence *)self mailboxProvider];
  allMailboxObjectIDs = [mailboxProvider allMailboxObjectIDs];

  return allMailboxObjectIDs;
}

- (id)mailboxObjectIDsForMailboxType:(int64_t)type
{
  mailboxProvider = [(EDMailboxPersistence *)self mailboxProvider];
  v5 = [mailboxProvider mailboxObjectIDsForMailboxType:type];

  return v5;
}

- (int64_t)mailboxTypeForMailboxObjectID:(id)d
{
  dCopy = d;
  mailboxProvider = [(EDMailboxPersistence *)self mailboxProvider];
  v6 = [mailboxProvider mailboxTypeForMailboxObjectID:dCopy];

  return v6;
}

- (void)addChangeObserver:(id)observer withIdentifier:(id)identifier
{
  observerCopy = observer;
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_changeObserversByIdentifierLock);
  changeObserversByIdentifier = [(EDMailboxPersistence *)self changeObserversByIdentifier];

  if (!changeObserversByIdentifier)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(EDMailboxPersistence *)self setChangeObserversByIdentifier:dictionary];
  }

  changeObserversByIdentifier2 = [(EDMailboxPersistence *)self changeObserversByIdentifier];
  [changeObserversByIdentifier2 setObject:observerCopy forKeyedSubscript:identifierCopy];

  os_unfair_lock_unlock(&self->_changeObserversByIdentifierLock);
}

- (void)removeChangeObserverWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_changeObserversByIdentifierLock);
  changeObserversByIdentifier = [(EDMailboxPersistence *)self changeObserversByIdentifier];
  [changeObserversByIdentifier removeObjectForKey:identifierCopy];

  os_unfair_lock_unlock(&self->_changeObserversByIdentifierLock);
}

- (BOOL)createMailbox:(id)mailbox parentMailboxID:(id)d
{
  mailboxCopy = mailbox;
  dCopy = d;
  [(EDMailboxPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDMailboxPersistence createMailbox:parentMailboxID:]", "EDMailboxPersistence.m", 304, "0");
}

- (BOOL)deleteMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  [(EDMailboxPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDMailboxPersistence deleteMailbox:]", "EDMailboxPersistence.m", 308, "0");
}

- (BOOL)moveMailbox:(id)mailbox newParentMailboxID:(id)d
{
  mailboxCopy = mailbox;
  dCopy = d;
  [(EDMailboxPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDMailboxPersistence moveMailbox:newParentMailboxID:]", "EDMailboxPersistence.m", 312, "0");
}

- (BOOL)renameMailbox:(id)mailbox newName:(id)name
{
  mailboxCopy = mailbox;
  nameCopy = name;
  [(EDMailboxPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDMailboxPersistence renameMailbox:newName:]", "EDMailboxPersistence.m", 316, "0");
}

- (NSIndexSet)frecentMailboxes
{
  v2 = objc_opt_new();

  return v2;
}

- (void)recordFrecencyEventWithMailboxesWithIDs:(id)ds
{
  dsCopy = ds;
  [(EDMailboxPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDMailboxPersistence recordFrecencyEventWithMailboxesWithIDs:]", "EDMailboxPersistence.m", 324, "0");
}

- (unsigned)uidValidityForMailbox:(EDMailboxRowID_s)mailbox
{
  selfCopy = self;
  LODWORD(mailbox.var0) = sub_1C640E560(mailbox.var0);

  return mailbox.var0;
}

- (unsigned)uidNextForMailbox:(EDMailboxRowID_s)mailbox
{
  selfCopy = self;
  LODWORD(mailbox.var0) = sub_1C640EE68(mailbox.var0);

  return mailbox.var0;
}

@end