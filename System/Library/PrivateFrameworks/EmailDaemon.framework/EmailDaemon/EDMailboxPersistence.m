@interface EDMailboxPersistence
+ (id)log;
- (BOOL)createMailbox:(id)a3 parentMailboxID:(id)a4;
- (BOOL)deleteMailbox:(id)a3;
- (BOOL)mailboxURLIsGmailLabel:(id)a3;
- (BOOL)moveMailbox:(id)a3 newParentMailboxID:(id)a4;
- (BOOL)renameMailbox:(id)a3 newName:(id)a4;
- (EDMailboxPersistence)initWithMailboxProvider:(id)a3 database:(id)a4 hookRegistry:(id)a5;
- (EDMailboxRowID_s)insertDatabaseRowForMailboxURL:(id)a3;
- (EDMailboxRowID_s)mailboxDatabaseIDForMailboxURL:(id)a3;
- (NSIndexSet)frecentMailboxes;
- (NSSet)allMailboxObjectIDs;
- (id)allMailboxes;
- (id)initForTesting:(BOOL)a3;
- (id)legacyMailboxForMailboxURL:(id)a3;
- (id)legacyMailboxForObjectID:(id)a3;
- (id)mailboxDatabaseIDsForMailboxObjectIDs:(id)a3 createIfNecessary:(BOOL)a4;
- (id)mailboxDatabaseIDsForMailboxURLStrings:(id)a3;
- (id)mailboxObjectIDsForMailboxType:(int64_t)a3;
- (id)userCreatedMailboxObjectIDs;
- (int64_t)mailboxTypeForMailboxObjectID:(id)a3;
- (unsigned)uidNextForMailbox:(EDMailboxRowID_s)a3;
- (unsigned)uidValidityForMailbox:(EDMailboxRowID_s)a3;
- (void)_reportPersistenceStatistics:(id)a3;
- (void)_sendCoreAnalyticsForLargestMailbox:(int64_t)a3 messageCountInSecondLargestMailbox:(int64_t)a4;
- (void)_sendCoreAnalyticsForMailboxesPerAccount:(id)a3 accountTypePerAccount:(id)a4;
- (void)_sendCoreAnalyticsForMessagesPerAccount:(id)a3 accountTypePerAccount:(id)a4;
- (void)_sendCoreAnalyticsForMessagesPerInbox:(id)a3 accountTypePerAccount:(id)a4 accountPerInbox:(id)a5;
- (void)_sendEventToCoreAnalytics:(id)a3 withEventDictionary:(id)a4;
- (void)_startReportingPersistenceStatistics;
- (void)_stopReportingPersistenceStatistics;
- (void)addChangeObserver:(id)a3 withIdentifier:(id)a4;
- (void)allMailboxesWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)fetchMailboxListsWithKind:(int64_t)a3;
- (void)mailboxListInvalidated;
- (void)recordFrecencyEventWithMailboxesWithIDs:(id)a3;
- (void)removeChangeObserverWithIdentifier:(id)a3;
- (void)serverCountsForMailboxScope:(id)a3 block:(id)a4;
- (void)test_tearDown;
@end

@implementation EDMailboxPersistence

- (id)allMailboxes
{
  v2 = [(EDMailboxPersistence *)self mailboxProvider];
  v3 = [v2 allMailboxes];

  return v3;
}

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__EDMailboxPersistence_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (EDMailboxPersistence)initWithMailboxProvider:(id)a3 database:(id)a4 hookRegistry:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = EDMailboxPersistence;
  v12 = [(EDMailboxPersistence *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mailboxProvider, a3);
    objc_storeStrong(&v13->_database, a4);
    objc_storeStrong(&v13->_hookRegistry, a5);
    [v9 setDelegate:v13];
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

- (id)initForTesting:(BOOL)a3
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"EDMailboxPersistence.m" lineNumber:60 description:{@"%s can only be called from unit tests", "-[EDMailboxPersistence initForTesting:]"}];
  }

  v7.receiver = self;
  v7.super_class = EDMailboxPersistence;
  return [(EDMailboxPersistence *)&v7 init];
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"EDMailboxPersistence.m" lineNumber:65 description:{@"%s can only be called from unit tests", "-[EDMailboxPersistence test_tearDown]"}];
  }

  v4 = [(EDMailboxPersistence *)self mailboxProvider];
  [v4 test_tearDown];

  [(EDMailboxPersistence *)self _stopReportingPersistenceStatistics];
}

- (void)mailboxListInvalidated
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_changeObserversByIdentifierLock);
  v3 = [(EDMailboxPersistence *)self changeObserversByIdentifier];
  v4 = [v3 allValues];

  os_unfair_lock_unlock(&self->_changeObserversByIdentifierLock);
  v5 = [(EDMailboxPersistence *)self allMailboxes];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v4;
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

        [*(*(&v11 + 1) + 8 * v9++) mailboxListChanged:{v5, v11}];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)allMailboxesWithCompletionHandler:(id)a3
{
  v5 = a3;
  v4 = [(EDMailboxPersistence *)self allMailboxes];
  v5[2](v5, v4);
}

- (id)userCreatedMailboxObjectIDs
{
  v2 = [(EDMailboxPersistence *)self allMailboxes];
  v3 = [v2 ef_compactMap:&__block_literal_global_41];

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

- (void)fetchMailboxListsWithKind:(int64_t)a3
{
  v4 = [(EDMailboxPersistence *)self mailboxProvider];
  [v4 fetchMailboxesWithKind:a3];
}

- (id)legacyMailboxForMailboxURL:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E699AD20]) initWithURL:v4];
  v6 = [(EDMailboxPersistence *)self legacyMailboxForObjectID:v5];

  return v6;
}

- (id)legacyMailboxForObjectID:(id)a3
{
  v4 = a3;
  v5 = [(EDMailboxPersistence *)self mailboxProvider];
  v6 = [v5 legacyMailboxForObjectID:v4];

  return v6;
}

- (id)mailboxDatabaseIDsForMailboxObjectIDs:(id)a3 createIfNecessary:(BOOL)a4
{
  v6 = a3;
  [(EDMailboxPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDMailboxPersistence mailboxDatabaseIDsForMailboxObjectIDs:createIfNecessary:]", "EDMailboxPersistence.m", 122, "0");
}

- (id)mailboxDatabaseIDsForMailboxURLStrings:(id)a3
{
  v5 = a3;
  [(EDMailboxPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDMailboxPersistence mailboxDatabaseIDsForMailboxURLStrings:]", "EDMailboxPersistence.m", 126, "0");
}

- (EDMailboxRowID_s)mailboxDatabaseIDForMailboxURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = MEMORY[0x1E695DFD8];
    v7 = [v4 absoluteString];
    v8 = [v6 setWithObject:v7];
    v9 = [(EDMailboxPersistence *)self mailboxDatabaseIDsForMailboxURLStrings:v8];

    v10 = [v4 absoluteString];
    v11 = [v9 objectForKeyedSubscript:v10];

    v12.var0 = [v11 unsignedLongLongValue];
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v12.var0 = 0;
  }

  return v12;
}

- (EDMailboxRowID_s)insertDatabaseRowForMailboxURL:(id)a3
{
  v5 = a3;
  [(EDMailboxPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDMailboxPersistence insertDatabaseRowForMailboxURL:]", "EDMailboxPersistence.m", 143, "0");
}

- (void)serverCountsForMailboxScope:(id)a3 block:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v20 = 0;
  v7 = [a3 allMailboxObjectIDsWithMailboxTypeResolver:self forExclusion:&v20];
  v8 = v7;
  if (v20 == 1)
  {
    v9 = [(EDMailboxPersistence *)self allMailboxObjectIDs];
    v10 = [v9 mutableCopy];

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

        (*(v6 + 2))(v6, *(*(&v16 + 1) + 8 * i), 0, 0, 0);
      }

      v12 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)mailboxURLIsGmailLabel:(id)a3
{
  v5 = a3;
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

  v4 = [(EDMailboxPersistence *)self statisticsReportingScheduler];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AAD0]) initWithIdentifier:@"com.apple.mail.mailboxPersistence.statisticsReportingScheduler"];
    [v4 setQualityOfService:9];
    [v4 setRepeats:1];
    [v4 setInterval:86400.0];
    [v4 setTolerance:3600.0];
    objc_initWeak(buf, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __60__EDMailboxPersistence__startReportingPersistenceStatistics__block_invoke;
    v5[3] = &unk_1E82532E0;
    objc_copyWeak(&v6, buf);
    [v4 scheduleWithBlock:v5];
    [(EDMailboxPersistence *)self setStatisticsReportingScheduler:v4];
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

- (void)_reportPersistenceStatistics:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E699B7B0] currentDevice];
  v6 = [v5 isInternal];

  if (v6)
  {
    v7 = +[EDMailboxPersistence log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v4 debugDescription];
      v17 = 138412290;
      v18 = v8;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_INFO, "Collected mailbox persistence statistics.\n%@", &v17, 0xCu);
    }
  }

  v9 = [v4 mailboxesPerAccount];
  v10 = [v4 accountTypePerAccount];
  [(EDMailboxPersistence *)self _sendCoreAnalyticsForMailboxesPerAccount:v9 accountTypePerAccount:v10];

  v11 = [v4 messagesPerAccount];
  v12 = [v4 accountTypePerAccount];
  [(EDMailboxPersistence *)self _sendCoreAnalyticsForMessagesPerAccount:v11 accountTypePerAccount:v12];

  v13 = [v4 messagesPerInbox];
  v14 = [v4 accountTypePerAccount];
  v15 = [v4 accountPerInbox];
  [(EDMailboxPersistence *)self _sendCoreAnalyticsForMessagesPerInbox:v13 accountTypePerAccount:v14 accountPerInbox:v15];

  -[EDMailboxPersistence _sendCoreAnalyticsForLargestMailbox:messageCountInSecondLargestMailbox:](self, "_sendCoreAnalyticsForLargestMailbox:messageCountInSecondLargestMailbox:", [v4 messagesInLargestMailbox], objc_msgSend(v4, "messagesInSecondLargestMailbox"));
  v16 = *MEMORY[0x1E69E9840];
}

- (void)_sendCoreAnalyticsForMailboxesPerAccount:(id)a3 accountTypePerAccount:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v19 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v6;
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

        v17 = [v19 objectForKeyedSubscript:v11];
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

- (void)_sendCoreAnalyticsForLargestMailbox:(int64_t)a3 messageCountInSecondLargestMailbox:(int64_t)a4
{
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(MEMORY[0x1E699B858], "roundedInteger:", a3)}];
  [v9 setObject:v7 forKeyedSubscript:@"messageCountInLargestMailbox"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(MEMORY[0x1E699B858], "roundedInteger:", a4)}];
  [v9 setObject:v8 forKeyedSubscript:@"messageCountInSecondLargestMailbox"];

  [(EDMailboxPersistence *)self _sendEventToCoreAnalytics:@"com.apple.mail.MailboxStatistics.messagesCountInLargestMailbox" withEventDictionary:v9];
}

- (void)_sendCoreAnalyticsForMessagesPerInbox:(id)a3 accountTypePerAccount:(id)a4 accountPerInbox:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v22 = a4;
  v23 = a5;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v8;
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

        v19 = [v23 objectForKeyedSubscript:v13];
        v20 = [v22 objectForKeyedSubscript:v19];
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

- (void)_sendCoreAnalyticsForMessagesPerAccount:(id)a3 accountTypePerAccount:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v19 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v6;
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

        v17 = [v19 objectForKeyedSubscript:v11];
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

- (void)_sendEventToCoreAnalytics:(id)a3 withEventDictionary:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E699AC78]) initWithEventName:v9 collectionData:v6];
  v8 = [(EDMailboxPersistence *)self analyticsCollector];
  [v8 logOneTimeEvent:v7];
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
  v2 = [(EDMailboxPersistence *)self mailboxProvider];
  v3 = [v2 allMailboxObjectIDs];

  return v3;
}

- (id)mailboxObjectIDsForMailboxType:(int64_t)a3
{
  v4 = [(EDMailboxPersistence *)self mailboxProvider];
  v5 = [v4 mailboxObjectIDsForMailboxType:a3];

  return v5;
}

- (int64_t)mailboxTypeForMailboxObjectID:(id)a3
{
  v4 = a3;
  v5 = [(EDMailboxPersistence *)self mailboxProvider];
  v6 = [v5 mailboxTypeForMailboxObjectID:v4];

  return v6;
}

- (void)addChangeObserver:(id)a3 withIdentifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_changeObserversByIdentifierLock);
  v7 = [(EDMailboxPersistence *)self changeObserversByIdentifier];

  if (!v7)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    [(EDMailboxPersistence *)self setChangeObserversByIdentifier:v8];
  }

  v9 = [(EDMailboxPersistence *)self changeObserversByIdentifier];
  [v9 setObject:v10 forKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->_changeObserversByIdentifierLock);
}

- (void)removeChangeObserverWithIdentifier:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_changeObserversByIdentifierLock);
  v4 = [(EDMailboxPersistence *)self changeObserversByIdentifier];
  [v4 removeObjectForKey:v5];

  os_unfair_lock_unlock(&self->_changeObserversByIdentifierLock);
}

- (BOOL)createMailbox:(id)a3 parentMailboxID:(id)a4
{
  v7 = a3;
  v8 = a4;
  [(EDMailboxPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDMailboxPersistence createMailbox:parentMailboxID:]", "EDMailboxPersistence.m", 304, "0");
}

- (BOOL)deleteMailbox:(id)a3
{
  v5 = a3;
  [(EDMailboxPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDMailboxPersistence deleteMailbox:]", "EDMailboxPersistence.m", 308, "0");
}

- (BOOL)moveMailbox:(id)a3 newParentMailboxID:(id)a4
{
  v7 = a3;
  v8 = a4;
  [(EDMailboxPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDMailboxPersistence moveMailbox:newParentMailboxID:]", "EDMailboxPersistence.m", 312, "0");
}

- (BOOL)renameMailbox:(id)a3 newName:(id)a4
{
  v7 = a3;
  v8 = a4;
  [(EDMailboxPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDMailboxPersistence renameMailbox:newName:]", "EDMailboxPersistence.m", 316, "0");
}

- (NSIndexSet)frecentMailboxes
{
  v2 = objc_opt_new();

  return v2;
}

- (void)recordFrecencyEventWithMailboxesWithIDs:(id)a3
{
  v5 = a3;
  [(EDMailboxPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDMailboxPersistence recordFrecencyEventWithMailboxesWithIDs:]", "EDMailboxPersistence.m", 324, "0");
}

- (unsigned)uidValidityForMailbox:(EDMailboxRowID_s)a3
{
  v4 = self;
  LODWORD(a3.var0) = sub_1C640E560(a3.var0);

  return a3.var0;
}

- (unsigned)uidNextForMailbox:(EDMailboxRowID_s)a3
{
  v4 = self;
  LODWORD(a3.var0) = sub_1C640EE68(a3.var0);

  return a3.var0;
}

@end