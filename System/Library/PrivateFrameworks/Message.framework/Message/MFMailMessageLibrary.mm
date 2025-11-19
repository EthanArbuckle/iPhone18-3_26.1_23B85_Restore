@interface MFMailMessageLibrary
+ (BOOL)canUsePersistence;
+ (MFMailMessageLibrary)defaultInstance;
+ (OS_os_log)conversationCalculationLog;
+ (OS_os_log)log;
+ (OS_os_log)signpostLog;
+ (id)propertyMapper;
+ (void)_renameLibraryAtPath:(id)a3;
+ (void)removeLibraryOnNextLaunch;
+ (void)test_setDefaultInstance:(id)a3;
- (BOOL)_addAddressesFromRecipientsForMessages:(id)a3 toSet:(id)a4 connection:(id)a5;
- (BOOL)_addRecipients:(id)a3 toMessageWithDatabaseID:(int64_t)a4 cache:(id)a5 connection:(id)a6;
- (BOOL)_canSelectMessagesWithOptions:(unsigned int)a3 connection:(id)a4;
- (BOOL)_deleteMessages:(id)a3 andCleanUpAddresses:(id)a4 subjects:(id)a5 summaries:(id)a6 brandIndicators:(id)a7 connection:(id)a8;
- (BOOL)_deleteMessages:(id)a3 connection:(id)a4;
- (BOOL)_deleteRows:(id)a3 fromTable:(id)a4 connection:(id)a5;
- (BOOL)_fileType:(int64_t)a3 orHigherExistsAtDirectory:(id)a4;
- (BOOL)_insertThreadReferences:(id)a3 toMessageWithLibraryID:(int64_t)a4 usingDatabaseConnection:(id)a5;
- (BOOL)_isSubjectIDUsedByOtherMessages:(int64_t)a3 besidesMessageWithDatabaseID:(int64_t)a4 connection:(id)a5;
- (BOOL)_setMessageData:(id)a3 libraryID:(int64_t)a4 part:(id)a5 partial:(BOOL)a6 complete:(BOOL)a7 connection:(id)a8;
- (BOOL)_setSummary:(id)a3 forMessageWithRowID:(int64_t)a4 connection:(id)a5;
- (BOOL)_shouldLogDatabaseStats;
- (BOOL)_shouldPerformDataDetectionForMessage:(id)a3;
- (BOOL)_shouldStoreRemoteContentForMessage:(id)a3;
- (BOOL)_storeRemoteContentLinksCachedOnMessage:(id)a3 linksToVerify:(id *)a4;
- (BOOL)_updateSubjectForMessageWithLibraryID:(int64_t)a3 to:(id)a4 connection:(id)a5;
- (BOOL)_updateSubjectWithRowID:(int64_t)a3 to:(id)a4 connection:(id)a5 outSubjectAlreadyExists:(BOOL *)a6;
- (BOOL)_writeEmlxData:(id)a3 toFile:(id)a4 protectionClass:(int64_t)a5 purgeable:(BOOL)a6;
- (BOOL)_writeEmlxFileOfType:(int64_t)a3 forAccount:(id)a4 toDirectory:(id)a5 withData:(id)a6 protectionClass:(int64_t)a7;
- (BOOL)areMessageContentsLocallyAvailable:(id)a3 fullContentsAvailble:(BOOL *)a4;
- (BOOL)cleanupProtectedTables;
- (BOOL)hasCompleteDataForMimePart:(id)a3;
- (BOOL)isProtectedDataAvailable:(id)a3;
- (BOOL)messageDataExistsInDatabaseForMessageLibraryID:(int64_t)a3 part:(id)a4 length:(unint64_t *)a5;
- (BOOL)migrate;
- (BOOL)renameMailboxes:(id)a3 to:(id)a4;
- (EDPersistenceHookRegistry)hookRegistry;
- (EDSearchableIndex)searchableIndex;
- (EDWebContentParser)remoteContentParser;
- (EFObservable)unreconciledMessageCountObservable;
- (MFMailMessageLibrary)initWithPath:(id)a3;
- (MFMailMessageLibrary)initWithPath:(id)a3 inMemoryIdentifier:(id)a4 userAgent:(id)a5;
- (MFMailboxFrecencyController)mailboxFrecencyController;
- (MFMessageChangeManager_iOS)messageChangeManager;
- (id)UIDsToDeleteInMailbox:(id)a3;
- (id)_addThreadingInfoWithContext:(id)a3 usingDatabaseConnection:(id)a4;
- (id)_copyReferenceHashesWithoutMessagesForMessageWithConversation:(id)a3;
- (id)_equalToMailboxIDsFromCriterion:(id)a3;
- (id)_existingValuesForColumn:(id)a3 table:(id)a4 fromValues:(id)a5 connection:(id)a6;
- (id)_firstDateForQuery:(id)a3 inMailbox:(id)a4;
- (id)_getReferencesForHashesWithOwners:(id)a3;
- (id)_getStringFromPlainTextData:(id)a3 mimePart:(id)a4;
- (id)_keyForOptions:(unsigned int)a3 protectedDataAvailable:(BOOL)a4 mailboxAvailable:(BOOL)a5 mailboxCached:(BOOL)a6;
- (id)_libraryMessageWithLibraryID:(int64_t)a3 wasCached:(BOOL *)a4;
- (id)_mailboxesClauseForAccounts:(id)a3;
- (id)_messageForRow:(id)a3 options:(unsigned int)a4 timestamp:(unint64_t)a5 connection:(id)a6 isProtectedDataAvailable:(BOOL)a7 recipientsCache:(id)a8;
- (id)_nonLocalAccountsClause;
- (id)_queryForMailboxesIDsFromMailboxes:(id)a3;
- (id)_recipientsForMessageWithDatabaseID:(int64_t)a3 connection:(id)a4 recipientsCache:(id)a5;
- (id)_recipientsForMessagesWithDatabaseIDs:(id)a3 includeTo:(BOOL)a4 includeCC:(BOOL)a5 includeBCC:(BOOL)a6;
- (id)_remoteIDsStringForRemoteIDs:(id)a3 inMailbox:(id)a4;
- (id)_selectClauseForOptions:(unsigned int)a3 protectedDataAvailable:(BOOL)a4;
- (id)_sqlSortByStringFromOptions:(unsigned int)a3;
- (id)_stringsForIndexSet:(id)a3;
- (id)accountForMessage:(id)a3;
- (id)activeMailboxesClause;
- (id)addMessages:(id)a3 withMailbox:(id)a4 newMessagesByOldMessage:(id)a5 remoteIDs:(id)a6 setFlags:(unint64_t)a7 addPOPUIDs:(BOOL)a8 dataSectionsByMessage:(id)a9 generationWindow:(id)a10;
- (id)allUIDsInMailbox:(id)a3;
- (id)bodyDataAtPath:(id)a3 headerData:(id *)a4;
- (id)bodyDataForMessage:(id)a3 andHeaderDataIfReadilyAvailable:(id *)a4;
- (id)bodyDataForMessage:(id)a3 andHeaderDataIfReadilyAvailable:(id *)a4 isComplete:(BOOL *)a5;
- (id)bodyDataForMessage:(id)a3 andHeaderDataIfReadilyAvailable:(id *)a4 isComplete:(BOOL *)a5 isPartial:(BOOL *)a6;
- (id)conversationIDsOfMessagesInSameThreadAsMessageWithLibraryID:(int64_t)a3 messageIDHash:(int64_t)a4;
- (id)copyMessagesWithRemoteIDs:(id)a3 options:(unsigned int)a4 inRemoteMailbox:(id)a5;
- (id)dataConsumerForMessage:(id)a3 part:(id)a4;
- (id)dataDirectoryURLForMessage:(id)a3;
- (id)dataFileURLForMessage:(id)a3 type:(int64_t)a4;
- (id)dataForMimePart:(id)a3 isComplete:(BOOL *)a4;
- (id)dataPathForMessage:(id)a3;
- (id)dataPathForMessage:(id)a3 part:(id)a4;
- (id)dataPathForMessage:(id)a3 type:(int64_t)a4;
- (id)dataProvider;
- (id)dateOfOldestNonIndexedNonSearchResultMessageInMailbox:(id)a3;
- (id)dateOfOldestNonSearchResultMessageInMailbox:(id)a3;
- (id)downloadedMessageDataForMessage:(id)a3;
- (id)duplicateMessages:(id)a3 newRemoteIDs:(id)a4 forMailbox:(id)a5 setFlags:(unint64_t)a6 createNewCacheFiles:(BOOL)a7;
- (id)enabledAccountMailboxesExpression;
- (id)existingMIMEPartsForMessage:(id)a3;
- (id)fileAttributesForMessage:(id)a3;
- (id)filterContiguousMessages:(id)a3 forCriterion:(id)a4 options:(unsigned int)a5;
- (id)flagsForRemoteIDs:(id)a3 inRemoteMailbox:(id)a4;
- (id)fullBodyDataForMessage:(id)a3 andHeaderDataIfReadilyAvailable:(id *)a4;
- (id)groupedMessagesCountForCriterion:(id)a3 groupBy:(unint64_t)a4;
- (id)headerDataAtPath:(id)a3;
- (id)headerDataForMessage:(id)a3;
- (id)hiddenPOPUIDsInMailbox:(id)a3;
- (id)indexableMessagesWhere:(id)a3 sortedBy:(id)a4 limit:(int64_t)a5 options:(unsigned int)a6;
- (id)loadData:(id)a3 forMessage:(id)a4 usingBlock:(id)a5;
- (id)loadMeetingDataForMessage:(id)a3;
- (id)loadMeetingExternalIDForMessage:(id)a3;
- (id)loadMeetingMetadataForMessage:(id)a3;
- (id)mailboxURLForMessage:(id)a3;
- (id)mailboxURLsForIDs:(id)a3;
- (id)mailboxUidForMessage:(id)a3;
- (id)messageBasePathForAccount:(id)a3;
- (id)messageWithLibraryID:(int64_t)a3 options:(unsigned int)a4 inMailbox:(id)a5 temporarilyUnavailable:(BOOL *)a6;
- (id)messageWithMessageID:(id)a3 options:(unsigned int)a4 inMailbox:(id)a5;
- (id)messageWithRemoteID:(id)a3 inRemoteMailbox:(id)a4;
- (id)messagesForMailbox:(id)a3 limit:(unint64_t)a4;
- (id)messagesWithMessageIDHeader:(id)a3;
- (id)messagesWithSummariesForMailbox:(id)a3 range:(_NSRange)a4;
- (id)newestUIDsForMailbox:(id)a3 limit:(int64_t)a4;
- (id)newestUIDsMissingBodyDataForMailbox:(id)a3 excluding:(id)a4 inLatest:(int64_t)a5 limit:(int64_t)a6 maximumMessagesToScan:(int64_t)a7;
- (id)newestUIDsMissingPartsForMailbox:(id)a3 excluding:(id)a4 inLatest:(int64_t)a5 limit:(int64_t)a6 maximumMessagesToScan:(int64_t)a7;
- (id)orderedBatchOfMessagesEndingAtRowId:(int64_t)a3 limit:(unsigned int)a4 success:(BOOL *)a5;
- (id)rangesOfIndexedUIDsInRange:(_NSRange)a3 requiresBody:(BOOL)a4 forMailbox:(id)a5 limit:(int64_t)a6;
- (id)referencesFromHeaders:(id)a3;
- (id)remoteStoreForMessage:(id)a3;
- (id)searchResultsWithRemoteIDs:(id)a3 requiresBody:(BOOL)a4 inRemoteMailbox:(id)a5;
- (id)senderForMessageWithLibraryID:(int64_t)a3 error:(id *)a4;
- (id)sequenceIdentifierForMailbox:(id)a3;
- (id)sequenceIdentifierForMessagesWithRemoteIDs:(id)a3 inMailbox:(id)a4;
- (id)serverSearchResultMessagesForMailbox:(id)a3;
- (id)setFlagsFromDictionary:(id)a3 forMessages:(id)a4;
- (id)storedIntegerPropertyWithName:(id)a3;
- (id)stringFromAllMailboxUnreadCount;
- (id)updateFlagsForMessages:(id)a3 changes:(id)a4 transformer:(id)a5;
- (id)urlForMailboxID:(int64_t)a3;
- (int)_integerForQuery:(id)a3 withTextArgument:(id)a4;
- (int64_t)_conversationIdForMessageIds:(id)a3;
- (int64_t)_findOrCreateDatabaseIDForAddress:(id)a3 cache:(id)a4 connection:(id)a5;
- (int64_t)_findOrCreateDatabaseIDForGlobalData:(int64_t)a3 cache:(id)a4 connection:(id)a5;
- (int64_t)_findOrCreateDatabaseIDForValue:(id)a3 inTable:(id)a4 column:(id)a5 cache:(id)a6 connection:(id)a7 created:(BOOL *)a8;
- (int64_t)_int64ForQuery:(id)a3 connection:(id)a4 textArgument:(id)a5;
- (int64_t)_maxRowIDInSet:(id)a3;
- (int64_t)_subjectIDForMessageWithLibraryID:(int64_t)a3 connection:(id)a4;
- (int64_t)addReferenceForContext:(id)a3 usingDatabaseConnection:(id)a4 generationWindow:(id)a5 mergeHandler:(id)a6;
- (int64_t)deleteAttachmentsForMessage:(id)a3 inMailboxFileURL:(id)a4;
- (int64_t)loadMoreMessagesForThreadContainingMessage:(id)a3 hasNoMoreMessages:(BOOL *)a4;
- (int64_t)mailboxIDForURLString:(id)a3;
- (int64_t)mailboxIDForURLString:(id)a3 createIfNecessary:(BOOL)a4;
- (unint64_t)_parserRemoteContentOptionsForMessage:(id)a3 shouldStoreRemoteContent:(BOOL)a4;
- (unint64_t)countMessagesMatchingCriterion:(id)a3;
- (unint64_t)flagsForConversationId:(int64_t)a3;
- (unint64_t)signpostID;
- (unint64_t)unreconciledMessageCount;
- (unsigned)allNonDeleteCountForMailbox:(id)a3 includeServerSearchResults:(BOOL)a4 includeThreadSearchResults:(BOOL)a5;
- (unsigned)attachmentCountForMailboxes:(id)a3;
- (unsigned)nonDeletedCountForMailbox:(id)a3 includeServerSearchResults:(BOOL)a4 includeThreadSearchResults:(BOOL)a5;
- (unsigned)totalCountForMailbox:(id)a3;
- (void)_addMessageToThreadAtUnlock:(int64_t)a3;
- (void)_cancelPendingJournalReconciliation;
- (void)_captureAnalyticsForMailDatabase:(int64_t)a3 schema:(id)a4;
- (void)_didAddUnreconciledMessages:(unint64_t)a3;
- (void)_enumerateMessageRemoteIDAndGlobalForMailbox:(id)a3 excluding:(id)a4 inLatest:(int64_t)a5 dateReceivedMax:(int64_t)a6 limit:(unint64_t)a7 kind:(unint64_t)a8 block:(id)a9;
- (void)_enumerateMessageRemoteIDAndGlobalUsingBatchesForMailbox:(id)a3 excluding:(id)a4 inLatest:(int64_t)a5 kind:(unint64_t)a6 block:(id)a7;
- (void)_findHTMLPartsFromHeaderData:(id)a3 bodyData:(id)a4 forMessage:(id)a5 linksToVerify:(id)a6 parsingOptions:(unint64_t)a7;
- (void)_iterateMessagesWithResultHandler:(id)a3 options:(unsigned int)a4 monitor:(id)a5 sqlQueryGenerator:(id)a6;
- (void)_iterateStatement:(id)a3 connection:(id)a4 withProgressMonitor:(id)a5 andRowHandler:(void *)a6 context:(id *)a7;
- (void)_logStatistics;
- (void)_notifyDidCompact:(BOOL)a3 messages:(id)a4 mailboxes:(id)a5;
- (void)_processRemoteContentFromData:(id)a3 forMimePart:(id)a4 linksToVerify:(id)a5 forMessage:(id)a6 parsingOptions:(unint64_t)a7;
- (void)_removeDataFilesForGlobalID:(int64_t)a3;
- (void)_removeEmlxFilesOfTypeLessThanType:(int64_t)a3 inDirectory:(id)a4;
- (void)_removeGlobalDataForMessagesIfNecessary:(id)a3 connection:(id)a4;
- (void)_removeSearchableItemsWithLibraryIDs:(id)a3;
- (void)_scheduleIncrementalVacuum;
- (void)_scheduleJournalReconciliation;
- (void)_schedulePeriodicStatisticsLogging;
- (void)_sendMessagesForStatement:(id)a3 connection:(id)a4 to:(id)a5 options:(unsigned int)a6 timestamp:(unint64_t)a7;
- (void)_setProtectedDataAvailabilityState:(unint64_t)a3;
- (void)_storeLinksToVerifyIfExistent:(void *)a1;
- (void)_updateUnreconciledMessageCount;
- (void)_waitForActiveAccountsRebuild;
- (void)addPostMigrationStep:(Class)a3;
- (void)attachmentMigrationFinished;
- (void)bodyMigrationFinished;
- (void)clearServerSearchFlagsForMessagesWithLibraryIDs:(id)a3;
- (void)closeDatabaseConnections;
- (void)compactMailbox:(id)a3;
- (void)compactMessages:(id)a3 permanently:(BOOL)a4 notifyPersistence:(BOOL)a5;
- (void)contentProtectionStateChanged:(int64_t)a3 previousState:(int64_t)a4;
- (void)dealloc;
- (void)deleteAccount:(id)a3;
- (void)deleteMailboxes:(id)a3 account:(id)a4;
- (void)deletePOPUID:(id)a3 inMailbox:(id)a4;
- (void)detectDataFromPlainTextMessage:(id)a3 forMessage:(id)a4 mimePart:(id)a5;
- (void)didFinishPersistenceDidAddMessages:(id)a3;
- (void)fileURLForAttachmentPersistentID:(id)a3 messageID:(id)a4 result:(id)a5;
- (void)handleFailedMigration;
- (void)increaseProtectionOnFileForMessage:(id)a3;
- (void)invalidateAndWait;
- (void)iterateStatement:(sqlite3_stmt *)a3 connection:(id)a4 withProgressMonitor:(id)a5 andRowHandler:(void *)a6 context:(void *)a7;
- (void)journalReconciliationFailed;
- (void)journalWasReconciled;
- (void)notifyNewData:(id)a3 availableForMessage:(id)a4;
- (void)performIncrementalVacuumForSchema:(id)a3;
- (void)persistenceDidAddMessages:(id)a3 generationWindow:(id)a4;
- (void)persistenceIsAddingMessages:(id)a3 journaled:(BOOL)a4 generationWindow:(id)a5;
- (void)postFlagsChangedForMessages:(id)a3 flags:(id)a4 oldFlagsByMessage:(id)a5;
- (void)postOldFlags:(unint64_t)a3 newFlags:(unint64_t)a4 forMessage:(id)a5;
- (void)prepareToRebuildActiveAccountsClausesAndExpressions;
- (void)processRemoteContentFromData:(id)a3 forMessage:(id)a4 mimePart:(id)a5;
- (void)processRemoteContentFromFullData:(id)a3 forMessage:(id)a4;
- (void)processRemoteContentFromHeaderData:(id)a3 bodyData:(id)a4 forMessage:(id)a5;
- (void)rebuildActiveAccountMailboxesExpression:(id)a3;
- (void)rebuildActiveAccountsClausesAndExpressionsWithAccounts:(id)a3;
- (void)rebuildActiveMailboxesClauseWithActiveAccounts:(id)a3 inactiveAccounts:(id)a4;
- (void)reindexAllSearchableItemsWithAcknowledgementHandler:(id)a3;
- (void)reindexSearchableItemsWithIdentifiers:(id)a3 acknowledgementHandler:(id)a4;
- (void)reloadMailboxCacheIfNecessaryWithConnection:(id)a3;
- (void)reloadMailboxCacheWithConnection:(id)a3;
- (void)removeAllMessagesFromMailbox:(id)a3 removeMailbox:(BOOL)a4 andNotify:(BOOL)a5;
- (void)removeMessagesFromCacheWithLibraryIDs:(id)a3;
- (void)removeSearchableItemsForAccount:(id)a3 databaseID:(int64_t)a4;
- (void)removeSearchableItemsForMailbox:(id)a3;
- (void)removeSearchableItemsForMessages:(id)a3;
- (void)removeURLFromMailboxCache:(id)a3;
- (void)renameOrRemoveDatabaseIfNeeded;
- (void)scheduleRecurringActivity;
- (void)sendMessagesMatchingCriterion:(id)a3 to:(id)a4 options:(unsigned int)a5 baseTable:(unsigned int)a6 range:(_NSRange)a7 success:(BOOL *)a8;
- (void)setFlags:(unint64_t)a3 forConversationId:(int64_t)a4;
- (void)setFlags:(unint64_t)a3 forMessage:(id)a4;
- (void)setLastSyncAndMostRecentStatusCount:(int64_t)a3 forMailbox:(id)a4;
- (void)setMessage:(id)a3 isPartial:(BOOL)a4;
- (void)setMostRecentStatusCount:(unint64_t)a3 forMailbox:(id)a4;
- (void)setNumberOfAttachments:(unsigned int)a3 isSigned:(BOOL)a4 isEncrypted:(BOOL)a5 forMessage:(id)a6;
- (void)setSequenceIdentifier:(id)a3 forMailbox:(id)a4;
- (void)setSequenceIdentifier:(id)a3 forMessageWithLibraryID:(int64_t)a4;
- (void)setSequenceIdentifier:(id)a3 forMessagesWithRemoteIDs:(id)a4 inMailbox:(id)a5;
- (void)setServerUnreadOnlyOnServerCount:(unint64_t)a3 forMailbox:(id)a4;
- (void)setStoredIntegerPropertyWithName:(id)a3 value:(id)a4;
- (void)setSummary:(id)a3 forMessage:(id)a4;
- (void)start;
- (void)test_tearDown;
- (void)updateAdditionalThreadingInfoForSentMessageWithHeaders:(id)a3 externalConversationID:(int64_t)a4;
- (void)updateFlagsForMessagesInPlace:(id)a3 success:(BOOL *)a4;
- (void)updateThreadingInfoForMessage:(id)a3 fromHeaders:(id)a4;
- (void)updateUnprefixedSubjectTo:(id)a3 forMessage:(id)a4;
- (void)willStartPersistenceDidAddMessages:(id)a3;
@end

@implementation MFMailMessageLibrary

+ (BOOL)canUsePersistence
{
  if (EFIsRunningUnitTests())
  {
    return 1;
  }

  v2 = MFUserAgent();
  v3 = v2;
  if (v2)
  {
    if ([v2 isMobileMail])
    {
      v4 = [v3 isMaild];
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (MFMailMessageLibrary)defaultInstance
{
  os_unfair_lock_lock(&sSharedInstanceLock);
  if (!sSharedInstance_0 && [a1 canUsePersistence])
  {
    v3 = [MFMailMessageLibrary alloc];
    v4 = [a1 defaultPath];
    v5 = [(MFMailMessageLibrary *)v3 initWithPath:v4];
    v6 = sSharedInstance_0;
    sSharedInstance_0 = v5;
  }

  v7 = sSharedInstance_0;
  os_unfair_lock_unlock(&sSharedInstanceLock);

  return v7;
}

- (id)activeMailboxesClause
{
  [(MFMailMessageLibrary *)self _waitForActiveAccountsRebuild];
  [(MFMailMessageLibrary *)self mf_lock];
  v3 = self->_activeMailboxesClause;
  [(MFMailMessageLibrary *)self mf_unlock];

  return v3;
}

- (void)_waitForActiveAccountsRebuild
{
  activeAccountsCondition = self->_activeAccountsCondition;
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:2.0];
  LODWORD(activeAccountsCondition) = [(NSConditionLock *)activeAccountsCondition lockWhenCondition:0 beforeDate:v4];

  if (activeAccountsCondition)
  {
    v5 = self->_activeAccountsCondition;

    [(NSConditionLock *)v5 unlock];
  }
}

- (id)enabledAccountMailboxesExpression
{
  [(MFMailMessageLibrary *)self _waitForActiveAccountsRebuild];
  [(MFMailMessageLibrary *)self mf_lock];
  v3 = self->_enabledAccountMailboxesExpression;
  [(MFMailMessageLibrary *)self mf_unlock];

  return v3;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__MFMailMessageLibrary_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_7 != -1)
  {
    dispatch_once(&log_onceToken_7, block);
  }

  v2 = log_log_7;

  return v2;
}

void __27__MFMailMessageLibrary_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_7;
  log_log_7 = v1;
}

+ (OS_os_log)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__MFMailMessageLibrary_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (signpostLog_onceToken != -1)
  {
    dispatch_once(&signpostLog_onceToken, block);
  }

  v2 = signpostLog_log;

  return v2;
}

void __35__MFMailMessageLibrary_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log;
  signpostLog_log = v1;
}

- (unint64_t)signpostID
{
  v3 = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(v3, self);

  return v4;
}

+ (OS_os_log)conversationCalculationLog
{
  if (conversationCalculationLog_onceToken != -1)
  {
    +[MFMailMessageLibrary conversationCalculationLog];
  }

  v3 = conversationCalculationLog_log;

  return v3;
}

void __50__MFMailMessageLibrary_conversationCalculationLog__block_invoke()
{
  v0 = os_log_create([*MEMORY[0x1E69B17F0] UTF8String], "ConversationCalculation");
  v1 = conversationCalculationLog_log;
  conversationCalculationLog_log = v0;
}

- (MFMailMessageLibrary)initWithPath:(id)a3 inMemoryIdentifier:(id)a4 userAgent:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MFIsMobileMail() ^ 1;
  if (v11)
  {
    LOBYTE(v12) = 1;
  }

  if ((v12 & 1) == 0)
  {
    v76 = [MEMORY[0x1E696AAA8] currentHandler];
    [v76 handleFailureInMethod:a2 object:self file:@"MailMessageLibrary.m" lineNumber:387 description:{@"Invalid parameter not satisfying: %@", @"userAgent"}];
  }

  v82.receiver = self;
  v82.super_class = MFMailMessageLibrary;
  v13 = [(MFMailMessageLibrary *)&v82 init];
  if (v13)
  {
    v14 = [v9 copy];
    v15 = *(v13 + 1);
    *(v13 + 1) = v14;

    [v13 renameOrRemoveDatabaseIfNeeded];
    v16 = [[MFWeakObjectCache alloc] initWithBlock:&__block_literal_global_131_0];
    v17 = *(v13 + 3);
    *(v13 + 3) = v16;

    v18 = [MFPersistence_iOS alloc];
    v19 = [objc_opt_class() propertyMapper];
    v20 = [(MFPersistence_iOS *)v18 initWithPath:v9 inMemoryIdentifier:v10 library:v13 propertyMapper:v19];

    v21 = [(EDPersistence *)v20 hookRegistry];
    [v21 registerMessageChangeHookResponder:v13];

    v22 = [(EDPersistence *)v20 hookRegistry];
    [v22 registerProtectedDataReconciliationHookResponder:v13];

    objc_storeStrong(v13 + 31, v20);
    v23 = [(MFPersistence_iOS *)v20 database];
    v24 = *(v13 + 32);
    *(v13 + 32) = v23;

    v25 = dispatch_queue_create("com.apple.message.library", 0);
    v26 = *(v13 + 6);
    *(v13 + 6) = v25;

    v27 = dispatch_queue_create("com.apple.message.library.indexing", 0);
    v28 = *(v13 + 40);
    *(v13 + 40) = v27;

    v29 = dispatch_queue_create("com.apple.message.library.stats", 0);
    v30 = *(v13 + 7);
    *(v13 + 7) = v29;

    v31 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v32 = dispatch_queue_attr_make_with_qos_class(v31, QOS_CLASS_UTILITY, 0);
    v33 = dispatch_queue_create("com.apple.message.library.keybag", v32);
    v34 = *(v13 + 13);
    *(v13 + 13) = v33;

    v35 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v36 = dispatch_queue_attr_make_with_qos_class(v35, QOS_CLASS_UTILITY, 0);
    v37 = dispatch_queue_create("com.apple.message.library.conversationcalculation", v36);
    v38 = *(v13 + 14);
    *(v13 + 14) = v37;

    v39 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v40 = dispatch_queue_attr_make_with_qos_class(v39, QOS_CLASS_UTILITY, -10);
    v41 = dispatch_queue_create("com.apple.message.library.fs-compression", v40);
    v42 = *(v13 + 16);
    *(v13 + 16) = v41;

    *(v13 + 240) = [v11 isAllowedToAccessProtectedData];
    v43 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
    v44 = *(v13 + 8);
    *(v13 + 8) = v43;

    *(v13 + 26) = 0;
    v45 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v46 = *(v13 + 28);
    *(v13 + 28) = v45;

    v47 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v48 = *(v13 + 29);
    *(v13 + 29) = v47;

    v49 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.message.library.fileRemovalAfterCompaction" qualityOfService:9];
    v50 = *(v13 + 35);
    *(v13 + 35) = v49;

    v51 = objc_opt_new();
    v52 = *(v13 + 36);
    *(v13 + 36) = v51;

    *(v13 + 54) = 0;
    v53 = [MEMORY[0x1E699B830] observableObserver];
    v54 = *(v13 + 22);
    *(v13 + 22) = v53;

    atomic_store(0xFFFFFFFF, v13 + 46);
    v55 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9];
    v56 = *MEMORY[0x1E695DAF8];
    EFVerifyFileProtectionType();
    v77 = a2;
    v57 = [v55 URLByAppendingPathComponent:@"Envelope Index"];
    v58 = *MEMORY[0x1E695DAE8];
    EFVerifyFileProtectionType();
    *(v13 + 40) = 0;
    v59 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v60 = *(v13 + 21);
    *(v13 + 21) = v59;

    v61 = objc_alloc_init(MEMORY[0x1E699AC70]);
    v62 = *(v13 + 24);
    *(v13 + 24) = v61;

    if ([v13 allowedToAccessProtectedData])
    {
      v63 = [v55 URLByAppendingPathComponent:@"Protected Index"];
      v64 = _os_feature_enabled_impl();
      v65 = *MEMORY[0x1E695DAD8];
      if (!v64)
      {
        v66 = *MEMORY[0x1E695DAD8];
      }

      EFVerifyFileProtectionType();
      v67 = *(v13 + 13);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __66__MFMailMessageLibrary_initWithPath_inMemoryIdentifier_userAgent___block_invoke_2;
      block[3] = &unk_1E7AA25C0;
      v81 = v13;
      dispatch_sync(v67, block);
    }

    else
    {
      *(v13 + 12) = 2;
      v63 = EDLibraryLog();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B0389000, v63, OS_LOG_TYPE_INFO, "access to protected data is not allowed", &buf, 2u);
      }
    }

    objc_initWeak(&buf, v13);
    v68 = *(v13 + 7);
    objc_copyWeak(&v78, &buf);
    v69 = EFLogRegisterStateCaptureBlock();
    v70 = *(v13 + 38);
    *(v13 + 38) = v69;

    v71 = NSClassFromString(&cfstr_Mfmailmessagel_65.isa);
    if (!v71)
    {
      v75 = [MEMORY[0x1E696AAA8] currentHandler];
      [v75 handleFailureInMethod:v77 object:v13 file:@"MailMessageLibrary.m" lineNumber:475 description:@"Class not found."];
    }

    v72 = [[v71 alloc] initWithMailMessageLibrary:v13];
    v73 = *(v13 + 41);
    *(v13 + 41) = v72;

    objc_destroyWeak(&v78);
    objc_destroyWeak(&buf);
  }

  return v13;
}

id __66__MFMailMessageLibrary_initWithPath_inMemoryIdentifier_userAgent___block_invoke(uint64_t a1, void *a2)
{
  v2 = +[MFLibraryMessage messageWithLibraryID:](MFLibraryMessage, "messageWithLibraryID:", [a2 longLongValue]);

  return v2;
}

uint64_t __66__MFMailMessageLibrary_initWithPath_inMemoryIdentifier_userAgent___block_invoke_2(uint64_t a1)
{
  v2 = _os_feature_enabled_impl();
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 _setProtectedDataAvailabilityState:1];
  }

  else
  {
    v5 = v3[13];
    EFRegisterContentProtectionObserver();
    v6 = EDLibraryLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_INFO, "access to protected data is allowed", v9, 2u);
    }

    v7 = *(a1 + 32);
    if (EFProtectedDataAvailable())
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    return [v7 _setProtectedDataAvailabilityState:v8];
  }
}

id __66__MFMailMessageLibrary_initWithPath_inMemoryIdentifier_userAgent___block_invoke_155(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained persistence];
    v4 = [v3 persistenceStatistics];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  return v4;
}

- (MFMailMessageLibrary)initWithPath:(id)a3
{
  v4 = a3;
  v5 = MFUserAgent();
  v6 = [(MFMailMessageLibrary *)self initWithPath:v4 inMemoryIdentifier:0 userAgent:v5];

  return v6;
}

- (void)dealloc
{
  if ([(MFMailMessageLibrary *)self allowedToAccessProtectedData]&& (_os_feature_enabled_impl() & 1) == 0)
  {
    EFUnregisterContentProtectionObserver();
  }

  [(MFMailMessageLibrary *)self _cancelPendingJournalReconciliation];
  xpc_activity_unregister("com.apple.message.statisticsLogging");
  [(MFMailMessageLibrary *)self closeDatabaseConnections];
  v3 = [(MFMailMessageLibrary *)self stateCaptureCancelable];
  [v3 cancel];

  EFAtomicSetOnceObjectRelease();
  v4.receiver = self;
  v4.super_class = MFMailMessageLibrary;
  [(MFMailMessageLibrary *)&v4 dealloc];
}

+ (id)propertyMapper
{
  v67[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E699B930]) initWithAllowedProtocolPrefixes:&unk_1F2774C98];
  v3 = [MEMORY[0x1E699B5C0] messagesTableName];
  [v2 registerColumnName:@"ROWID" table:v3 lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_libraryID];

  v4 = [MEMORY[0x1E699B5C0] messagesTableName];
  [v2 registerColumnName:@"remote_id" table:v4 lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_remoteID];

  v5 = [MEMORY[0x1E699B5C0] messagesTableName];
  v66 = @"MFPropertyMapperLookupKeyCriterionType";
  v67[0] = &unk_1F2775850;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:&v66 count:1];
  [v2 registerColumnName:@"date_received" table:v5 lookupKeys:v6 forClass:objc_opt_class() property:sel_dateReceived];

  v7 = [MEMORY[0x1E699B5C0] messagesTableName];
  v64 = @"MFPropertyMapperLookupKeyCriterionType";
  v65 = &unk_1F2775868;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  [v2 registerColumnName:@"date_sent" table:v7 lookupKeys:v8 forClass:objc_opt_class() property:sel_dateSent];

  v9 = [MEMORY[0x1E699B5C0] messagesTableName];
  v62 = @"MFPropertyMapperLookupKeyCriterionType";
  v63 = &unk_1F2775880;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
  [v2 registerColumnName:@"display_date" table:v9 lookupKeys:v10 forClass:objc_opt_class() property:sel_displayDate];

  v11 = [MEMORY[0x1E699B5C0] messagesTableName];
  [v2 registerColumnName:@"flags" table:v11 lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_messageFlags];

  v12 = [MEMORY[0x1E699B5C0] messagesTableName];
  [v2 registerColumnName:@"size" table:v12 lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_messageSize];

  v13 = [MEMORY[0x1E699B5C0] messagesTableName];
  [v2 registerColumnName:@"subject_prefix" table:v13 lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_prefix];

  [v2 registerColumnName:@"subject" table:@"subjects" lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_subjectWithoutPrefix];
  v60 = @"MFColumnAlias";
  v61 = @"sender_comment";
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
  [v2 registerColumnName:@"comment" table:@"sender" lookupKeys:v14 forClass:objc_opt_class() property:sel_displayName];

  v58 = @"MFColumnAlias";
  v59 = @"sender_address";
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
  [v2 registerColumnName:@"address" table:@"sender" lookupKeys:v15 forClass:objc_opt_class() property:sel_address];

  [v2 registerColumnName:@"summary" table:@"summaries" lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_summary];
  v16 = [MEMORY[0x1E699B5C0] messagesTableName];
  [v2 registerColumnName:@"mailbox" table:v16 lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_mailboxID];

  v17 = [MEMORY[0x1E699B5C0] messagesTableName];
  [v2 registerColumnName:@"original_mailbox" table:v17 lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_originalMailboxID];

  v18 = [MEMORY[0x1E699B5C0] messagesTableName];
  [v2 registerColumnName:@"content_type" table:v18 lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_contentType];

  v19 = [MEMORY[0x1E699B5C0] messagesTableName];
  [v2 registerColumnName:@"conversation_id" table:v19 lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_conversationID];

  v20 = [MEMORY[0x1E699B5C0] messagesTableName];
  [v2 registerColumnName:@"encoding" table:v20 lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_preferredEncoding];

  v21 = [MEMORY[0x1E699B5C0] messagesTableName];
  [v2 registerColumnName:@"external_id" table:v21 lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_externalID];

  v22 = [MEMORY[0x1E699B5C0] messagesTableName];
  [v2 registerColumnName:@"global_message_id" table:v22 lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_globalMessageID];

  v23 = [MEMORY[0x1E699B5C0] messagesTableName];
  [v2 registerColumnName:@"message_id" table:v23 lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_messageIDHash];

  v24 = [MEMORY[0x1E699B5C0] messagesTableName];
  [v2 registerColumnName:@"unique_id" table:v24 lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_uniqueRemoteId];

  v56 = @"MFColumnAlias";
  v57 = @"conversation_flags";
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
  [v2 registerColumnName:@"flags" table:@"conversations" lookupKeys:v25 forClass:objc_opt_class() property:sel_conversationFlags];

  v26 = [MEMORY[0x1E699B5C0] messagesTableName];
  [v2 registerColumnName:@"list_id_hash" table:v26 lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_listIDHash];

  v27 = [MEMORY[0x1E699B5C0] messagesTableName];
  [v2 registerColumnName:@"document_id" table:v27 lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_documentID];

  v28 = [MEMORY[0x1E699B5C0] messageGlobalDataTableName];
  v54[0] = @"MFColumnAlias";
  v54[1] = @"MFPropertyMapperLookupKeyCriterionType";
  v55[0] = @"read_later_date";
  v55[1] = &unk_1F2775898;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];
  [v2 registerColumnName:@"read_later_date" table:v28 lookupKeys:v29 forClass:objc_opt_class() property:sel_date];

  v30 = [MEMORY[0x1E699B5C0] messageGlobalDataTableName];
  v52[0] = @"MFColumnAlias";
  v52[1] = @"MFPropertyMapperLookupKeyCriterionType";
  v53[0] = @"send_later_date";
  v53[1] = &unk_1F27758B0;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:2];
  [v2 registerColumnName:@"send_later_date" table:v30 lookupKeys:v31 forClass:objc_opt_class() property:sel_sendLaterDate];

  v32 = [MEMORY[0x1E699B5C0] messagesTableName];
  v50 = @"MFPropertyMapperLookupKeyCriterionType";
  v51 = &unk_1F27758C8;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
  [v2 registerColumnName:@"unsubscribe_type" table:v32 lookupKeys:v33 forClass:objc_opt_class() property:sel_unsubscribeType];

  v34 = [MEMORY[0x1E699B5C0] messageGlobalDataTableName];
  v48[0] = @"MFColumnAlias";
  v48[1] = @"MFPropertyMapperLookupKeyCriterionType";
  v49[0] = @"follow_up_start_date";
  v49[1] = &unk_1F27758E0;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];
  [v2 registerColumnName:@"follow_up_start_date" table:v34 lookupKeys:v35 forClass:objc_opt_class() property:sel_startDate];

  v36 = [MEMORY[0x1E699B5C0] messageGlobalDataTableName];
  v46[0] = @"MFColumnAlias";
  v46[1] = @"MFPropertyMapperLookupKeyCriterionType";
  v47[0] = @"follow_up_end_date";
  v47[1] = &unk_1F27758F8;
  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:2];
  [v2 registerColumnName:@"follow_up_end_date" table:v36 lookupKeys:v37 forClass:objc_opt_class() property:sel_endDate];

  v44[0] = @"MFColumnAlias";
  v44[1] = @"MFDefaultValue";
  v45[0] = @"sender_bucket";
  v45[1] = &unk_1F2775910;
  v44[2] = @"MFPropertyMapperLookupKeyCriterionType";
  v45[2] = &unk_1F2775928;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:3];
  [v2 registerColumnName:@"bucket" table:@"senders" lookupKeys:v38 forClass:objc_opt_class() property:sel_senderBucket];

  v42 = @"MFColumnAlias";
  v43 = @"brand_indicator_location";
  v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  [v2 registerColumnName:@"url" table:@"brand_indicators" lookupKeys:v39 forClass:objc_opt_class() property:sel_brandIndicatorLocation];

  v40 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (void)test_setDefaultInstance:(id)a3
{
  v8 = a3;
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"MailMessageLibrary.m" lineNumber:697 description:{@"%s can only be called from unit tests", "+[MFMailMessageLibrary test_setDefaultInstance:]"}];
  }

  os_unfair_lock_lock(&sSharedInstanceLock);
  objc_storeStrong(&sSharedInstance_0, a3);
  v6 = +[MFLibraryStore sharedInstanceIfExists];
  [v6 setLibrary:sSharedInstance_0];

  os_unfair_lock_unlock(&sSharedInstanceLock);
}

- (void)invalidateAndWait
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    EFUnregisterContentProtectionObserver();
  }

  v3 = [(MFMailMessageLibrary *)self hookRegistry];
  [v3 persistenceDidInvalidate];

  v4 = [(MFMailMessageLibrary *)self hookRegistry];
  [v4 unregisterAllHookResponders];

  v5 = [(MFMailMessageLibrary *)self fileRemovalAfterCompactionScheduler];
  [v5 performSyncBlock:&__block_literal_global_370];
}

- (void)start
{
  v3 = [(MFMailMessageLibrary *)self database];
  [v3 reconcileJournalWithCompletionBlock:0];

  v4 = [(MFMailMessageLibrary *)self searchableIndex];
  [v4 applicationWillResume];

  v5 = [(MFMailMessageLibrary *)self storedIntegerPropertyWithName:@"NeedToMigrateFiles"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [[MFMessageBodyMigrator alloc] initWithLibrary:self];
    [(MFMailMessageLibrary *)self setBodyMigrator:v7];

    v8 = [(MFMailMessageLibrary *)self bodyMigrator];
    [v8 startMigratingBodies];
  }

  else
  {
    v9 = [(MFMailMessageLibrary *)self storedIntegerPropertyWithName:@"NeedToMigrateAttachments"];
    v10 = [v9 BOOLValue];

    if (!v10)
    {
      goto LABEL_6;
    }

    v11 = [[MFMessageAttachmentMigrator alloc] initWithLibrary:self];
    [(MFMailMessageLibrary *)self setAttachmentMigrator:v11];

    v8 = [(MFMailMessageLibrary *)self attachmentMigrator];
    [v8 startMigratingAttachments];
  }

LABEL_6:
  v12 = [(MFMailMessageLibrary *)self storedIntegerPropertyWithName:@"UseLegacyMessageIDHashFormat"];
  v13 = [v12 BOOLValue];

  if (v13)
  {
    v14 = EDLibraryLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_DEFAULT, "Using legacy message-id hash format", buf, 2u);
    }

    v15 = [MEMORY[0x1E695E000] em_userDefaults];
    [v15 setBool:1 forKey:*MEMORY[0x1E699ABD8]];
  }

  else
  {
    v15 = [MEMORY[0x1E695E000] em_userDefaults];
    [v15 removeObjectForKey:*MEMORY[0x1E699ABD8]];
  }

  MFSetUseLegacyMessageIDHashFormat();
  AnalyticsSendEventLazy();
}

id __29__MFMailMessageLibrary_start__block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"useLegacyFormat";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)test_tearDown
{
  v19 = *MEMORY[0x1E69E9840];
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"MailMessageLibrary.m" lineNumber:748 description:{@"%s can only be called from unit tests", "-[MFMailMessageLibrary test_tearDown]"}];
  }

  v4 = [(MFMailMessageLibrary *)self indexingQueue];
  dispatch_sync(v4, &__block_literal_global_383);

  v5 = [(MFMailMessageLibrary *)self remoteContentParser];
  [v5 test_tearDown];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = +[MailAccount mailAccounts];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v14 + 1) + 8 * v9++) test_tearDown];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [MailAccount setMailAccounts:MEMORY[0x1E695E0F0]];
  +[MailAccount test_tearDown];
  +[MFInvocationQueue flushAllInvocationQueues];
  v10 = [(MFMailMessageLibrary *)self mailboxFrecencyController];
  [v10 test_tearDown];

  v11 = [(MFMailMessageLibrary *)self persistence];
  [v11 test_tearDown];

  [(MFMailMessageLibrary *)self invalidateAndWait];
  [(MFMailMessageLibrary *)self closeDatabaseConnections];
  [MFMailMessageLibrary test_setDefaultInstance:0];
  MFSetUserAgent(0);
  v12 = *MEMORY[0x1E69E9840];
}

- (id)messageBasePathForAccount:(id)a3
{
  v4 = a3;
  v5 = [v4 personaIdentifier];

  if (v5)
  {
    v6 = [v4 path];
  }

  else
  {
    v6 = self->_path;
  }

  v7 = v6;

  return v7;
}

- (void)bodyMigrationFinished
{
  [(MFMailMessageLibrary *)self setStoredIntegerPropertyWithName:@"NeedToMigrateFiles" value:MEMORY[0x1E695E110]];
  [(MFMailMessageLibrary *)self setBodyMigrator:0];
  v3 = [[MFMessageAttachmentMigrator alloc] initWithLibrary:self];
  [(MFMailMessageLibrary *)self setAttachmentMigrator:?];

  v4 = [(MFMailMessageLibrary *)self attachmentMigrator];
  [v4 startMigratingAttachments];
}

- (void)attachmentMigrationFinished
{
  [(MFMailMessageLibrary *)self setStoredIntegerPropertyWithName:@"NeedToMigrateAttachments" value:MEMORY[0x1E695E110]];

  [(MFMailMessageLibrary *)self setAttachmentMigrator:0];
}

- (EDSearchableIndex)searchableIndex
{
  v2 = [(MFMailMessageLibrary *)self persistence];
  v3 = [v2 searchableIndexManager];
  v4 = [v3 index];

  return v4;
}

- (MFMessageChangeManager_iOS)messageChangeManager
{
  v2 = [(MFMailMessageLibrary *)self persistence];
  v3 = [v2 messageChangeManager];

  return v3;
}

- (void)_didAddUnreconciledMessages:(unint64_t)a3
{
  v3 = atomic_load(&self->_unreconciledMessageChangeCount);
  v4 = v3;
  do
  {
    atomic_compare_exchange_strong(&self->_unreconciledMessageChangeCount, &v4, v3 + a3);
    if (v3 + a3 < 0x3E8)
    {
      v5 = 1;
    }

    else
    {
      v5 = 3;
    }

    if (v4 != v3)
    {
      v5 = 0;
    }

    v3 = v4;
  }

  while (!v5);
  if (v5 == 3)
  {
    [(MFMailMessageLibrary *)self _updateUnreconciledMessageCount];
  }
}

- (EFObservable)unreconciledMessageCountObservable
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(MFMailMessageLibrary *)self unreconciledMessageCount];
  v4 = [(EFObserver *)self->_unreconciledMessageCountObservable distinctUntilChanged];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v3];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7 = [v4 startWith:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (unint64_t)unreconciledMessageCount
{
  p_unreconciledMessageCount = &self->_unreconciledMessageCount;
  result = atomic_load(&self->_unreconciledMessageCount);
  if (result == -1)
  {
    LODWORD(result) = [MFLibraryMessageReconciler numberOfUnreconciledMessagesWithLibrary:self];
    atomic_store(result, p_unreconciledMessageCount);
    return result;
  }

  return result;
}

- (void)_updateUnreconciledMessageCount
{
  atomic_store([MFLibraryMessageReconciler numberOfUnreconciledMessagesWithLibrary:self], &self->_unreconciledMessageCount);
  atomic_store(0, &self->_unreconciledMessageChangeCount);
  unreconciledMessageCountObservable = self->_unreconciledMessageCountObservable;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  [(EFObserver *)unreconciledMessageCountObservable observerDidReceiveResult:?];
}

- (void)setFlags:(unint64_t)a3 forMessage:(id)a4
{
  v6 = a4;
  v7 = [v6 messageFlags];
  if (v7 != a3)
  {
    [v6 setMessageFlagsWithoutCommitting:a3];
  }

  v8 = [(MFMailMessageLibrary *)self database];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary setFlags:forMessage:]"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__MFMailMessageLibrary_setFlags_forMessage___block_invoke;
  v11[3] = &unk_1E7AA3500;
  v11[4] = self;
  v10 = v6;
  v12 = v10;
  v13 = a3;
  [v8 __performWriteWithCaller:v9 usingBlock:v11];

  [(MFMailMessageLibrary *)self postOldFlags:v7 newFlags:a3 forMessage:v10];
}

- (void)postOldFlags:(unint64_t)a3 newFlags:(unint64_t)a4 forMessage:(id)a5
{
  v35[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (a3 == a4)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF20]);
    if (!v9)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = v10;
    if ((a3 & 1) != (a4 & 1))
    {
      if (a4)
      {
        v12 = MEMORY[0x1E695E118];
      }

      else
      {
        v12 = MEMORY[0x1E695E110];
      }

      [v10 setObject:v12 forKey:@"MessageIsRead"];
    }

    v13 = a4 ^ a3;
    if ((a4 ^ a3) < 2)
    {
      goto LABEL_77;
    }

    if (((a3 >> 1) & 1) != ((a4 >> 1) & 1))
    {
      if ((a4 & 2) != 0)
      {
        v14 = MEMORY[0x1E695E118];
      }

      else
      {
        v14 = MEMORY[0x1E695E110];
      }

      [v11 setObject:v14 forKey:@"MessageIsDeleted"];
    }

    if (v13 < 4)
    {
      goto LABEL_77;
    }

    if (((a3 >> 2) & 1) != ((a4 >> 2) & 1))
    {
      if ((a4 & 4) != 0)
      {
        v15 = MEMORY[0x1E695E118];
      }

      else
      {
        v15 = MEMORY[0x1E695E110];
      }

      [v11 setObject:v15 forKey:@"MessageWasRepliedTo"];
    }

    if (v13 < 8)
    {
      goto LABEL_77;
    }

    if (((a3 >> 3) & 1) != ((a4 >> 3) & 1))
    {
      if ((a4 & 8) != 0)
      {
        v16 = MEMORY[0x1E695E118];
      }

      else
      {
        v16 = MEMORY[0x1E695E110];
      }

      [v11 setObject:v16 forKey:@"MessageIsEncrypted"];
    }

    if (v13 < 0x10)
    {
      goto LABEL_77;
    }

    if (((a3 >> 23) & 1) != ((a4 >> 23) & 1))
    {
      if ((a4 & 0x800000) != 0)
      {
        v17 = MEMORY[0x1E695E118];
      }

      else
      {
        v17 = MEMORY[0x1E695E110];
      }

      [v11 setObject:v17 forKey:@"MessageIsSigned"];
    }

    if ((v13 & 0xFFFFFFFFFF7FFFF0) == 0)
    {
      goto LABEL_77;
    }

    if (((a3 >> 24) & 1) != ((a4 >> 24) & 1))
    {
      if ((a4 & 0x1000000) != 0)
      {
        v18 = MEMORY[0x1E695E118];
      }

      else
      {
        v18 = MEMORY[0x1E695E110];
      }

      [v11 setObject:v18 forKey:@"MessageSenderIsVIP"];
    }

    if ((v13 & 0xFFFFFFFFFE7FFFF0) == 0)
    {
      goto LABEL_77;
    }

    if (((a3 >> 8) & 1) != ((a4 >> 8) & 1))
    {
      if ((a4 & 0x100) != 0)
      {
        v19 = MEMORY[0x1E695E118];
      }

      else
      {
        v19 = MEMORY[0x1E695E110];
      }

      [v11 setObject:v19 forKey:@"MessageWasForwarded"];
    }

    if ((v13 & 0xFFFFFFFFFE7FFEF0) == 0)
    {
      goto LABEL_77;
    }

    if (((a3 >> 9) & 1) != ((a4 >> 9) & 1))
    {
      if ((a4 & 0x200) != 0)
      {
        v20 = MEMORY[0x1E695E118];
      }

      else
      {
        v20 = MEMORY[0x1E695E110];
      }

      [v11 setObject:v20 forKey:@"MessageWasRedirected"];
    }

    if ((v13 & 0xFFFFFFFFFE7FFCF0) == 0)
    {
      goto LABEL_77;
    }

    if (((a3 >> 4) & 1) != ((a4 >> 4) & 1))
    {
      if ((a4 & 0x10) != 0)
      {
        v21 = MEMORY[0x1E695E118];
      }

      else
      {
        v21 = MEMORY[0x1E695E110];
      }

      [v11 setObject:v21 forKey:@"MessageIsFlagged"];
    }

    if ((v13 & 0xFFFFFFFFFE7FFCE0) == 0)
    {
      goto LABEL_77;
    }

    if (((a3 >> 30) & 1) != ((a4 >> 30) & 1))
    {
      if ((a4 & 0x40000000) != 0)
      {
        v22 = MEMORY[0x1E695E118];
      }

      else
      {
        v22 = MEMORY[0x1E695E110];
      }

      [v11 setObject:v22 forKey:@"MessageHighlightTextInTOC"];
    }

    if ((v13 & 0xFFFFFFFFBE7FFCE0) == 0)
    {
      goto LABEL_77;
    }

    if (((a3 >> 47) & 1) != ((a4 >> 47) & 1))
    {
      if ((a4 & 0x800000000000) != 0)
      {
        v23 = MEMORY[0x1E695E118];
      }

      else
      {
        v23 = MEMORY[0x1E695E110];
      }

      [v11 setObject:v23 forKey:@"MFMessageIsTouchedByCleanup"];
    }

    if ((v13 & 0xFFFF7FFFBE7FFCE0) == 0)
    {
      goto LABEL_77;
    }

    if ((WORD1(a3) & 7) != (WORD1(a4) & 7))
    {
      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
      [v11 setObject:v24 forKey:@"MessagePriorityLevel"];
    }

    v25 = a4 & 0xFFFF7FFFBE78FCE0;
    if ((a3 & 0xFFFF7FFFBE78FCE0) == v25)
    {
      goto LABEL_77;
    }

    v26 = MFMessageFlagsFontSizeDelta(a3 & 0xFFFF7FFFBE78FCE0);
    v27 = MFMessageFlagsFontSizeDelta(v25);
    if (v26 != v27)
    {
      v28 = [MEMORY[0x1E696AD98] numberWithInt:v27];
      [v11 setObject:v28 forKey:@"MessageFontSizeDelta"];
    }

    if ((v13 & 0xFFFF7FFFA278FCE0) != 0)
    {
      v9 = 0;
    }

    else
    {
LABEL_77:
      v9 = v11;
    }

    if (!v9)
    {
      goto LABEL_80;
    }
  }

  if ([v9 count])
  {
LABEL_80:
    v35[0] = v8;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{a3, v8}];
    v34 = v30;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    [(MFMailMessageLibrary *)self postFlagsChangedForMessages:v29 flags:v9 oldFlagsByMessage:v31];
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)postFlagsChangedForMessages:(id)a3 flags:(id)a4 oldFlagsByMessage:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  if ([v12 count])
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v10 setObject:v12 forKey:@"messages"];
    if (v9)
    {
      [v10 setObject:v9 forKey:@"oldFlagsByMessage"];
    }

    if (v8)
    {
      [v10 setObject:v8 forKey:@"flags"];
    }

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 postNotificationName:@"MailMessageStoreMessageFlagsChanged" object:self userInfo:v10];
  }
}

- (void)updateFlagsForMessagesInPlace:(id)a3 success:(BOOL *)a4
{
  v6 = a3;
  v7 = [v6 keyEnumerator];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v8 = [(MFMailMessageLibrary *)self database];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary updateFlagsForMessagesInPlace:success:]"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__MFMailMessageLibrary_updateFlagsForMessagesInPlace_success___block_invoke;
  v12[3] = &unk_1E7AA3528;
  v10 = v7;
  v13 = v10;
  v11 = v6;
  v14 = v11;
  v15 = &v16;
  [v8 __performWriteWithCaller:v9 usingBlock:v12];

  if (a4)
  {
    *a4 = *(v17 + 6) == 101;
  }

  _Block_object_dispose(&v16, 8);
}

uint64_t __62__MFMailMessageLibrary_updateFlagsForMessagesInPlace_success___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  for (i = 0; ; i = v5)
  {
    v5 = [*(a1 + 32) nextObject];

    if (!v5)
    {
      break;
    }

    v6 = [*(a1 + 40) objectForKey:v5];
    v7 = [v6 unsignedLongLongValue];

    v8 = [v3 preparedStatementForQueryString:@"UPDATE messages SET flags = (flags|:flags) WHERE rowid = :rowid"];
    v9 = [v8 compiled];
    v10 = v9;
    if (v9)
    {
      v11 = sqlite3_bind_parameter_index(v9, ":flags");
      sqlite3_bind_int64(v10, v11, v7);
      v12 = sqlite3_bind_parameter_index(v10, ":rowid");
      sqlite3_bind_int64(v10, v12, [v5 libraryID]);
      *(*(*(a1 + 48) + 8) + 24) = sqlite3_step(v10);
      sqlite3_reset(v10);
      [v3 handleSQLResult:*(*(*(a1 + 48) + 8) + 24) message:@"setting flags"];
      if (*(*(*(a1 + 48) + 8) + 24) != 101)
      {

        break;
      }
    }
  }

  return 1;
}

- (id)updateFlagsForMessages:(id)a3 changes:(id)a4 transformer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12 = [MEMORY[0x1E695DF70] array];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v29 = 0;
  v13 = [(MFMailMessageLibrary *)self database];
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary updateFlagsForMessages:changes:transformer:]"];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __67__MFMailMessageLibrary_updateFlagsForMessages_changes_transformer___block_invoke;
  v21[3] = &unk_1E7AA3550;
  v15 = v8;
  v22 = v15;
  v27 = v28;
  v16 = v10;
  v26 = v16;
  v17 = v12;
  v23 = v17;
  v18 = v11;
  v24 = v18;
  v25 = self;
  [v13 __performWriteWithCaller:v14 usingBlock:v21];

  [(MFMailMessageLibrary *)self postFlagsChangedForMessages:v17 flags:v9 oldFlagsByMessage:v18];
  v19 = v17;

  _Block_object_dispose(v28, 8);

  return v19;
}

uint64_t __67__MFMailMessageLibrary_updateFlagsForMessages_changes_transformer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:@"SELECT flags FROM messages WHERE ROWID = ?"];;
  v5 = [v4 compiled];
  if (v5)
  {
    v6 = [*(a1 + 32) count];
    if (v6)
    {
      v7 = 0;
      do
      {
        if (*(*(*(a1 + 72) + 8) + 24))
        {
          break;
        }

        v8 = [*(a1 + 32) objectAtIndex:v7];
        [v8 mf_lock];
        v9 = [v8 messageFlags];
        sqlite3_bind_int64(v5, 1, [v8 libraryID]);
        v10 = v9;
        if (sqlite3_step(v5) == 100)
        {
          v11 = sqlite3_column_int64(v5, 0);
          v10 = v9;
          if (v11 != v9)
          {
            v12 = MFLogGeneral();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              __67__MFMailMessageLibrary_updateFlagsForMessages_changes_transformer___block_invoke_cold_1(&v19, v20);
            }

            v10 = v11;
          }
        }

        sqlite3_reset(v5);
        v14 = *(a1 + 64);
        v15 = v10;
        if (v14)
        {
          v15 = (*(v14 + 16))(v14, v10);
          v16 = *(a1 + 64);
          if (v16)
          {
            v13 = (*(v16 + 16))(v16, v9);
            if (v13 != v9)
            {
              [v8 setMessageFlagsWithoutCommitting:v13];
            }
          }
        }

        [v8 mf_unlock];
        if (v15 != v10)
        {
          [*(a1 + 40) addObject:v8];
          v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v10];
          [*(a1 + 48) setObject:v17 forKeyedSubscript:v8];

          *(*(*(a1 + 72) + 8) + 24) = setFlagsForMessage(v3, v8, v15);
        }

        ++v7;
      }

      while (v6 != v7);
    }
  }

  return 1;
}

- (id)setFlagsFromDictionary:(id)a3 forMessages:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"MessageIsDeleted"];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    [(MFMailMessageLibrary *)self removeSearchableItemsForMessages:v7];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__MFMailMessageLibrary_setFlagsFromDictionary_forMessages___block_invoke;
  v13[3] = &unk_1E7AA3578;
  v10 = v6;
  v14 = v10;
  v11 = [(MFMailMessageLibrary *)self updateFlagsForMessages:v7 changes:v10 transformer:v13];

  return v11;
}

- (void)setNumberOfAttachments:(unsigned int)a3 isSigned:(BOOL)a4 isEncrypted:(BOOL)a5 forMessage:(id)a6
{
  v31[1] = *MEMORY[0x1E69E9840];
  v10 = a6;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v11 = objc_alloc_init(MEMORY[0x1E699B608]);
  v12 = [(MFMailMessageLibrary *)self database];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary setNumberOfAttachments:isSigned:isEncrypted:forMessage:]"];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __79__MFMailMessageLibrary_setNumberOfAttachments_isSigned_isEncrypted_forMessage___block_invoke;
  v19[3] = &unk_1E7AA35C8;
  v14 = v11;
  v20 = v14;
  v21 = self;
  v15 = v10;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v22 = v15;
  v23 = &v27;
  [v12 __performWriteWithCaller:v13 usingBlock:v19];

  if (*(v28 + 24) == 1 && [v15 conformsToProtocol:&unk_1F27860E8])
  {
    v16 = [(MFMailMessageLibrary *)self hookRegistry];
    v31[0] = *MEMORY[0x1E699B1C8];
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
    [v16 persistenceDidUpdateProperties:v17 message:v15 generationWindow:v14];
  }

  _Block_object_dispose(&v27, 8);
  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __79__MFMailMessageLibrary_setNumberOfAttachments_isSigned_isEncrypted_forMessage___block_invoke(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  v4 = *(a1 + 40);
  v15[0] = *(a1 + 48);
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v13 = @"MessageNumberOfAttachmentsChanged";
  v14 = MEMORY[0x1E695E118];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__MFMailMessageLibrary_setNumberOfAttachments_isSigned_isEncrypted_forMessage___block_invoke_2;
  v10[3] = &unk_1E7AA35A0;
  v11 = *(a1 + 64);
  v12 = *(a1 + 68);
  v10[4] = *(a1 + 56);
  v7 = [v4 updateFlagsForMessages:v5 changes:v6 transformer:v10];

  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

unint64_t __79__MFMailMessageLibrary_setNumberOfAttachments_isSigned_isEncrypted_forMessage___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = _MFFlagsBySettingNumberOfAttachments(a2, *(a1 + 40), *(a1 + 44), *(a1 + 45));
  if (result != a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

- (void)setMessage:(id)a3 isPartial:(BOOL)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v12[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__MFMailMessageLibrary_setMessage_isPartial___block_invoke;
  v10[3] = &__block_descriptor_33_e8_Q16__0Q8l;
  v11 = a4;
  v8 = [(MFMailMessageLibrary *)self updateFlagsForMessages:v7 changes:0 transformer:v10];

  v9 = *MEMORY[0x1E69E9840];
}

unint64_t __45__MFMailMessageLibrary_setMessage_isPartial___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = 0x400000000;
  if (!*(a1 + 32))
  {
    v2 = 0;
  }

  return v2 | a2 & 0xFFFFFFFBFFFFFFFFLL;
}

- (BOOL)_fileType:(int64_t)a3 orHigherExistsAtDirectory:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = 0;
  if (!a3)
  {
    goto LABEL_8;
  }

  if (a3 != 1)
  {
    if (a3 != 2)
    {
      goto LABEL_11;
    }

    v8 = [v5 stringByAppendingPathComponent:@"headers.emlx"];
    if ([v6 fileExistsAtPath:v8])
    {
      goto LABEL_9;
    }

    v7 = v8;
  }

  v8 = [v5 stringByAppendingPathComponent:@"partial.emlx"];

  if (([v6 fileExistsAtPath:v8] & 1) == 0)
  {
    v7 = v8;
LABEL_8:
    v8 = [v5 stringByAppendingPathComponent:@"full.emlx"];

    if ([v6 fileExistsAtPath:v8])
    {
      goto LABEL_9;
    }

    v7 = v8;
LABEL_11:
    v9 = 0;
    v8 = v7;
    goto LABEL_12;
  }

LABEL_9:
  v9 = 1;
LABEL_12:

  return v9;
}

- (void)_removeEmlxFilesOfTypeLessThanType:(int64_t)a3 inDirectory:(id)a4
{
  v7 = a4;
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  if (a3 == 1)
  {
    v6 = [v7 stringByAppendingPathComponent:@"headers.emlx"];
    [v5 removeItemAtPath:v6 error:0];
  }
}

- (BOOL)_writeEmlxFileOfType:(int64_t)a3 forAccount:(id)a4 toDirectory:(id)a5 withData:(id)a6 protectionClass:(int64_t)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if ([(MFMailMessageLibrary *)self _fileType:a3 orHigherExistsAtDirectory:v13])
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    v16 = @"full.emlx";
    if (a3 == 1)
    {
      v16 = @"partial.emlx";
    }

    if (a3 == 2)
    {
      v17 = @"headers.emlx";
    }

    else
    {
      v17 = v16;
    }

    v18 = [v13 stringByAppendingPathComponent:v17];
    v15 = -[MFMailMessageLibrary _writeEmlxFile:withData:protectionClass:purgeable:](self, "_writeEmlxFile:withData:protectionClass:purgeable:", v18, v14, a7, [v12 supportsPurge]);
    if (v15)
    {
      [(MFMailMessageLibrary *)self _removeEmlxFilesOfTypeLessThanType:a3 inDirectory:v13];
    }
  }

  return v15;
}

- (BOOL)_writeEmlxData:(id)a3 toFile:(id)a4 protectionClass:(int64_t)a5 purgeable:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v51 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [MEMORY[0x1E696AC08] defaultManager];
  v12 = [v11 temporaryDirectory];
  v13 = [v12 URLByAppendingPathComponent:@"emlx.XXXXXXXXXXXXXXXX" isDirectory:0];

  memset(__b, 170, 0x401uLL);
  [v13 fileSystemRepresentation];
  if (__strlcpy_chk() > 0x400)
  {
    goto LABEL_22;
  }

  v14 = mkstemp_dprotected_np(__b, v7, 0);
  v15 = __error();
  if ((v14 & 0x80000000) != 0)
  {
    v41 = *v15;
    v42 = EDLibraryLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [MFMailMessageLibrary _writeEmlxData:toFile:protectionClass:purgeable:];
    }

    goto LABEL_21;
  }

  v16 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:__b isDirectory:0 relativeToURL:0];
  if (!v16)
  {
    close(v14);
    v42 = EDLibraryLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [MFMailMessageLibrary _writeEmlxData:toFile:protectionClass:purgeable:];
    }

LABEL_21:

LABEL_22:
    v16 = 0;
LABEL_23:
    v40 = 0;
    goto LABEL_24;
  }

  v13 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v14 closeOnDealloc:0];
  v49 = 0;
  v17 = [v13 writeData:v9 error:&v49];
  v18 = v49;
  v19 = v18;
  if ((v17 & 1) == 0)
  {
    v45 = EDLibraryLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      [MFMailMessageLibrary _writeEmlxData:toFile:protectionClass:purgeable:];
    }

    close(v14);
    goto LABEL_23;
  }

  if (v6 && EFMarkFileAsPurgeableFD())
  {
    v20 = *__error();
    v21 = EDLibraryLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [v16 path];
      objc_claimAutoreleasedReturnValue();
      [MFMailMessageLibrary _writeEmlxData:toFile:protectionClass:purgeable:];
    }
  }

  close(v14);
  v22 = v16;
  v23 = [v16 fileSystemRepresentation];
  v24 = v10;
  v25 = [v10 fileSystemRepresentation];
  rename(v23, v25, v26);
  if (!v27)
  {
    goto LABEL_29;
  }

  if (*__error() == 2)
  {
    v28 = [v10 URLByDeletingLastPathComponent];
    v29 = [MEMORY[0x1E696AC08] defaultManager];
    [v29 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:0];

    v30 = v16;
    v31 = [v16 fileSystemRepresentation];
    v32 = v10;
    v33 = [v10 fileSystemRepresentation];
    rename(v31, v33, v34);
    LODWORD(v31) = v35;

    if (!v31)
    {
LABEL_29:
      v40 = 1;
      goto LABEL_25;
    }
  }

  v36 = *__error();
  v37 = EDLibraryLog();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    [MFMailMessageLibrary _writeEmlxData:v36 toFile:v37 protectionClass:? purgeable:?];
  }

  v38 = [MEMORY[0x1E696AC08] defaultManager];
  v48 = 0;
  v39 = [v38 moveItemAtURL:v16 toURL:v10 error:&v48];
  v13 = v48;

  if ((v39 & 1) == 0)
  {
    v46 = EDLibraryLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = [v10 path];
      [MFMailMessageLibrary _writeEmlxData:v47 toFile:v13 protectionClass:__b purgeable:?];
    }

    goto LABEL_23;
  }

  v40 = 1;
LABEL_24:

LABEL_25:
  v43 = *MEMORY[0x1E69E9840];
  return v40;
}

- (id)referencesFromHeaders:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E699B810] indexSet];
  v5 = [v3 references];
  if ([v5 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = MFStringHashForMessageIDHeader();
          if (v11)
          {
            [v4 addIndex:{v11, v16}];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }
  }

  v12 = [v3 firstHeaderForKey:{*MEMORY[0x1E699B108], v16}];
  if (v12)
  {
    v13 = MFStringHashForMessageIDHeader();
    if (v13)
    {
      [v4 addIndex:v13];
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_addThreadingInfoWithContext:(id)a3 usingDatabaseConnection:(id)a4
{
  v53[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v38 = a4;
  v6 = [v5 mailboxID];
  v7 = [v5 subject];
  v37 = [v7 subjectWithoutPrefix];

  v36 = [v5 messageIDsBySubject];
  v8 = [v5 libraryID];
  v32 = [MEMORY[0x1E699B810] indexSet];
  v34 = [v38 preparedStatementForQueryString:{@"SELECT messages.ROWID, messages.message_id, messages.conversation_id, messages.subject_prefix, subjects.subject, addresses.comment, addresses.address, messages.date_sent FROM messages JOIN subjects ON messages.subject = subjects.ROWID JOIN addresses ON messages.sender = addresses.ROWID WHERE subjects.subject = ? AND messages.mailbox = ?"}];
  v39 = objc_alloc_init(MEMORY[0x1E699B810]);
  v53[0] = v37;
  v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:v6];
  v30 = v8;
  v53[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __77__MFMailMessageLibrary__addThreadingInfoWithContext_usingDatabaseConnection___block_invoke;
  v43[3] = &unk_1E7AA3610;
  v11 = v28;
  v44 = v11;
  v42 = 0;
  LOBYTE(v7) = [v34 executeWithIndexedBindings:v10 usingBlock:v43 error:&v42];
  v31 = v42;

  if ((v7 & 1) == 0)
  {
    [v38 handleError:v31 message:@"querying subject references for threads"];
  }

  v12 = [v11 allKeys];
  v13 = [(MFMailMessageLibrary *)self _recipientsForMessagesWithDatabaseIDs:v12 includeTo:1 includeCC:1 includeBCC:1];

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __77__MFMailMessageLibrary__addThreadingInfoWithContext_usingDatabaseConnection___block_invoke_2;
  v40[3] = &unk_1E7AA3638;
  v29 = v13;
  v41 = v29;
  [v11 enumerateKeysAndObjectsUsingBlock:v40];
  v33 = objc_alloc_init(MFThreadFuzzyMatcher);
  v14 = [v11 allValues];
  v15 = [(MFThreadFuzzyMatcher *)v33 matchMessageReferenceContext:v5 withCandidateMessageReferenceContexts:v14];

  if (v15)
  {
    v16 = +[MFMailMessageLibrary conversationCalculationLog];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v5 messageIDHash];
      v18 = [v15 messageIDHash];
      v19 = [v15 conversationIDHash];
      v20 = [v15 subject];
      v21 = [v20 ef_publicDescription];
      *buf = 134218754;
      v46 = v17;
      v47 = 2048;
      v48 = v18;
      v49 = 2048;
      v50 = v19;
      v51 = 2114;
      v52 = v21;
      _os_log_impl(&dword_1B0389000, v16, OS_LOG_TYPE_DEFAULT, "Threading %lld: found conversation from fuzzy matching: messageID: %lld, conversationID: %lld, subject: %{public}@", buf, 0x2Au);
    }

    [v39 addIndex:{objc_msgSend(v15, "messageIDHash")}];
    [v32 addIndex:{objc_msgSend(v15, "conversationIDHash")}];
  }

  v22 = +[MFMailMessageLibrary conversationCalculationLog];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v5 messageIDHash];
    v24 = [v36 objectForKeyedSubscript:v37];
    *buf = 134218242;
    v46 = v23;
    v47 = 2114;
    v48 = v24;
    _os_log_impl(&dword_1B0389000, v22, OS_LOG_TYPE_DEFAULT, "Threading %lld: adding in previously tracked messages IDs with the same subject: %{public}@", buf, 0x16u);
  }

  v25 = [v36 objectForKeyedSubscript:v37];
  [v39 addIndexes:v25];

  [(MFMailMessageLibrary *)self _insertThreadReferences:v39 toMessageWithLibraryID:v30 usingDatabaseConnection:v38];
  v26 = *MEMORY[0x1E69E9840];

  return v32;
}

void __77__MFMailMessageLibrary__addThreadingInfoWithContext_usingDatabaseConnection___block_invoke(uint64_t a1, void *a2)
{
  v26 = a2;
  v3 = [v26 objectAtIndexedSubscript:0];
  v25 = [v3 numberValue];

  v4 = [v26 objectAtIndexedSubscript:1];
  v5 = [v4 int64Value];

  v6 = [v26 objectAtIndexedSubscript:2];
  v7 = [v6 int64Value];

  v8 = [v26 objectAtIndexedSubscript:3];
  v9 = [v8 stringValue];

  v10 = [v26 objectAtIndexedSubscript:4];
  v11 = [v10 stringValue];

  v12 = [v26 objectAtIndexedSubscript:5];
  v13 = [v12 stringValue];

  v14 = [v26 objectAtIndexedSubscript:6];
  v15 = [v14 stringValue];

  v16 = [v26 objectAtIndexedSubscript:7];
  v17 = [v16 numberValue];
  v18 = [v17 intValue];

  if (v5 && v7 && v11)
  {
    v19 = objc_alloc_init(MFMessageReferenceContext);
    [(MFMessageReferenceContext *)v19 setMessageIDHash:v5];
    [(MFMessageReferenceContext *)v19 setConversationIDHash:v7];
    v20 = [objc_alloc(MEMORY[0x1E699B328]) initWithPrefix:v9 subjectWithoutPrefix:v11];
    [(MFMessageReferenceContext *)v19 setSubject:v20];
    v21 = MEMORY[0x1E699B248];
    v22 = [v15 emailAddressValue];
    v23 = [v21 componentsWithEmailAddress:v22];

    [v23 setDisplayName:v13];
    v24 = [v23 stringValue];
    [(MFMessageReferenceContext *)v19 setSender:v24];

    [(MFMessageReferenceContext *)v19 setDateSentInterval:v18];
    [*(a1 + 32) setObject:v19 forKeyedSubscript:v25];
  }
}

void __77__MFMailMessageLibrary__addThreadingInfoWithContext_usingDatabaseConnection___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v6 = [v5 toRecipientStrings];
  v7 = MFDatabaseEncodedStringForAddressList(v6);
  [v12 setTo:v7];

  v8 = [v5 ccRecipientStrings];
  v9 = MFDatabaseEncodedStringForAddressList(v8);
  [v12 setCc:v9];

  v10 = [v5 bccRecipientStrings];
  v11 = MFDatabaseEncodedStringForAddressList(v10);
  [v12 setBcc:v11];
}

- (BOOL)_insertThreadReferences:(id)a3 toMessageWithLibraryID:(int64_t)a4 usingDatabaseConnection:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  if ([v7 count])
  {
    v9 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:@"message_references"];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __95__MFMailMessageLibrary__insertThreadReferences_toMessageWithLibraryID_usingDatabaseConnection___block_invoke;
    v17[3] = &unk_1E7AA3660;
    v10 = v9;
    v18 = v10;
    v19 = a4;
    [v7 enumerateIndexesUsingBlock:v17];
    v16 = 0;
    v11 = [v8 executeInsertStatement:v10 error:&v16];
    v12 = v16;
    if (v11)
    {
      v13 = +[MFMailMessageLibrary conversationCalculationLog];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v21 = a4;
        v22 = 2114;
        v23 = v7;
        _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_DEFAULT, "Threading: inserted message references for message with databaseID %lld: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      [v8 handleError:v12 message:@"inserting message_references"];
    }
  }

  else
  {
    v11 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

void __95__MFMailMessageLibrary__insertThreadReferences_toMessageWithLibraryID_usingDatabaseConnection___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 32) addValue];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 40)];
  [v6 setObject:v4 forKeyedSubscript:@"message"];

  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  [v6 setObject:v5 forKeyedSubscript:@"reference"];

  [v6 setObject:&unk_1F2775940 forKeyedSubscript:@"is_originator"];
}

- (int64_t)addReferenceForContext:(id)a3 usingDatabaseConnection:(id)a4 generationWindow:(id)a5 mergeHandler:(id)a6
{
  v140 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v118 = a4;
  v103 = a5;
  v112 = a6;
  v109 = v10;
  v106 = [v10 message];
  v107 = [v10 libraryID];
  v108 = [v10 messageIDHash];
  v110 = [v10 references];
  v104 = [v10 messageIDsBySubject];
  v11 = [v10 conversationFlagsRef];
  v12 = [(MFMailMessageLibrary *)self isProtectedDataAvailable:v118];
  Current = CFAbsoluteTimeGetCurrent();
  v14 = +[MFMailMessageLibrary conversationCalculationLog];
  v113 = v11;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v10 messageIDHash];
    v16 = [v10 mailboxID];
    v17 = [v10 subject];
    v18 = [v17 ef_publicDescription];
    *buf = 134219010;
    v131 = v15;
    v132 = 2048;
    v133 = v107;
    v134 = 2048;
    v135 = v16;
    v136 = 2114;
    v137 = v18;
    v138 = 2114;
    v139 = v110;
    _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_DEFAULT, "Threading %lld: resolving for message (database ID: %lld), mailbox: %lld, subject: %{public}@, explicitReferences: %{public}@", buf, 0x34u);
  }

  [(MFMailMessageLibrary *)self _insertThreadReferences:v110 toMessageWithLibraryID:v107 usingDatabaseConnection:v118];
  v19 = [v109 subject];
  v20 = [v19 prefixLength];

  v21 = [v109 subject];
  v105 = [v21 subjectWithoutPrefix];

  v115 = objc_alloc_init(MEMORY[0x1E699B810]);
  if (![v110 count] && v20)
  {
    if (v12)
    {
      v22 = [(MFMailMessageLibrary *)self _addThreadingInfoWithContext:v109 usingDatabaseConnection:v118];
      [v115 addIndexes:v22];
    }

    else
    {
      [(MFMailMessageLibrary *)self _addMessageToThreadAtUnlock:v107];
    }
  }

  if (v108 && [v105 length])
  {
    v23 = [v104 objectForKeyedSubscript:v105];
    v24 = v23 == 0;

    if (v24)
    {
      v25 = [MEMORY[0x1E699B810] indexSet];
      [v104 setObject:v25 forKeyedSubscript:v105];
    }

    v26 = [v104 objectForKeyedSubscript:v105];
    [v26 addIndex:v108];
  }

  v27 = [(MFMailMessageLibrary *)self conversationIDsOfMessagesInSameThreadAsMessageWithLibraryID:v107 messageIDHash:v108];
  [v115 addIndexes:v27];

  v28 = [v106 externalConversationID];
  v29 = MFStringHashForMessageID();

  if (v29)
  {
    v30 = +[MFMailMessageLibrary conversationCalculationLog];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v131 = v108;
      v132 = 2048;
      v133 = v29;
      _os_log_impl(&dword_1B0389000, v30, OS_LOG_TYPE_DEFAULT, "Threading %lld: adding external conversation ID to explicit references: %lld", buf, 0x16u);
    }

    [v110 addIndex:v29];
  }

  if (![v115 count])
  {
    if ([v110 count])
    {
      v37 = [(MFMailMessageLibrary *)self _conversationIdForMessageIds:v110];
      if (v37)
      {
        v38 = +[MFMailMessageLibrary conversationCalculationLog];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v131 = v108;
          v132 = 2048;
          v133 = v37;
          _os_log_impl(&dword_1B0389000, v38, OS_LOG_TYPE_DEFAULT, "Threading %lld: found conversation ID from explicit references: %lld", buf, 0x16u);
        }

        [v115 addIndex:v37];
      }
    }
  }

  v114 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v31 = [v106 conversationID];
  [v115 removeIndex:v31];
  v32 = [v115 count];
  if (v31)
  {
    if (!v32)
    {
      v43 = +[MFMailMessageLibrary conversationCalculationLog];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v131 = v108;
        v132 = 2048;
        v133 = v31;
        _os_log_impl(&dword_1B0389000, v43, OS_LOG_TYPE_DEFAULT, "Threading %lld: Using current conversation %lld", buf, 0x16u);
      }

      goto LABEL_44;
    }

    v29 = [v115 firstIndex];
    [v115 addIndex:v31];
    v33 = +[MFMailMessageLibrary conversationCalculationLog];
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_40;
    }

    *buf = 134218496;
    v131 = v108;
    v132 = 2048;
    v133 = v31;
    v134 = 2048;
    v135 = v29;
    v34 = "Threading %lld: Merging current conversation %lld with another conversation %lld";
    v35 = v33;
    v36 = 32;
    goto LABEL_39;
  }

  if (v29 && !v32)
  {
    v39 = +[MFMailMessageLibrary conversationCalculationLog];
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
LABEL_32:

      goto LABEL_41;
    }

    *buf = 134218240;
    v131 = v108;
    v132 = 2048;
    v133 = v29;
    v40 = "Threading %lld: Using external conversation ID %lld";
    v41 = v39;
    v42 = 22;
LABEL_31:
    _os_log_impl(&dword_1B0389000, v41, OS_LOG_TYPE_DEFAULT, v40, buf, v42);
    goto LABEL_32;
  }

  if (v32)
  {
    v29 = [v115 firstIndex];
    v33 = +[MFMailMessageLibrary conversationCalculationLog];
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_40;
    }

    *buf = 134218240;
    v131 = v108;
    v132 = 2048;
    v133 = v29;
    v34 = "Threading %lld: Merging with existing conversation %lld";
    goto LABEL_38;
  }

  if (v108)
  {
    v39 = +[MFMailMessageLibrary conversationCalculationLog];
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v108;
      goto LABEL_32;
    }

    *buf = 134217984;
    v29 = v108;
    v131 = v108;
    v40 = "Threading %lld: Setting conversation ID to message ID";
    v41 = v39;
    v42 = 12;
    goto LABEL_31;
  }

  v29 = MFUniqueMessageIDHash();
  v33 = +[MFMailMessageLibrary conversationCalculationLog];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v131 = 0;
    v132 = 2048;
    v133 = v29;
    v34 = "Threading %lld: Using newly created conversation ID %lld";
LABEL_38:
    v35 = v33;
    v36 = 22;
LABEL_39:
    _os_log_impl(&dword_1B0389000, v35, OS_LOG_TYPE_DEFAULT, v34, buf, v36);
  }

LABEL_40:

  if (!v29)
  {
    v31 = 0;
LABEL_62:
    v65 = 0;
    v49 = v113;
    goto LABEL_64;
  }

LABEL_41:
  if (v29 == v31)
  {
    goto LABEL_47;
  }

  if ([v106 isLibraryMessage])
  {
    v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v106, 0}];
    v44 = [(MFMailMessageLibrary *)self hookRegistry];
    [v44 persistenceWillChangeConversationID:v31 messages:v43];

    v45 = [MEMORY[0x1E696AD98] numberWithLongLong:v31];
    [v114 setObject:v43 forKeyedSubscript:v45];

    v31 = v29;
LABEL_44:

    goto LABEL_47;
  }

  v31 = v29;
LABEL_47:
  v46 = [v118 preparedStatementForQueryString:{@"UPDATE messages SET conversation_id = ?, content_index_transaction_id = NULL WHERE rowid = ?"}];
  v47 = v46;
  v48 = [v46 compiled];

  v49 = v113;
  if (v48)
  {
    sqlite3_bind_int64(v48, 1, v31);
    sqlite3_bind_int64(v48, 2, v107);
    v50 = sqlite3_step(v48);
    sqlite3_reset(v48);
    [v118 checkForConnectionErrorWithMessage:@"inserting conversation id into message row"];
    if (v50 != 101)
    {
      goto LABEL_63;
    }
  }

  v51 = [v118 preparedStatementForQueryString:@"INSERT OR IGNORE INTO conversations (conversation_id) VALUES (?)"];
  v52 = v51;
  v53 = [v51 compiled];

  v49 = v113;
  if (v53)
  {
    sqlite3_bind_int64(v53, 1, v31);
    v54 = sqlite3_step(v53);
    sqlite3_reset(v53);
    [v118 checkForConnectionErrorWithMessage:@"inserting row into conversations table"];
    if (v54 != 101)
    {
      goto LABEL_63;
    }
  }

  v55 = [v118 preparedStatementForQueryString:{@"INSERT OR IGNORE INTO conversation_id_message_id (conversation_id, message_id) SELECT ?, reference FROM message_references WHERE message = ?"}];
  v56 = v55;
  v57 = [v55 compiled];

  if (v57)
  {
    sqlite3_bind_int64(v57, 1, v31);
    v49 = v113;
    sqlite3_bind_int64(v57, 2, v107);
    v58 = sqlite3_step(v57);
    sqlite3_reset(v57);
    [v118 checkForConnectionErrorWithMessage:@"inserting row into conversation_id_message_id table (1)"];
  }

  else
  {
    v58 = 101;
    v49 = v113;
  }

  if (!v108 || v58 != 101)
  {
LABEL_58:
    if (v58 == 101)
    {
      goto LABEL_59;
    }

LABEL_63:
    v65 = 1;
    goto LABEL_64;
  }

  [v106 dateSentAsTimeIntervalSince1970];
  v60 = v59;
  v61 = [v118 preparedStatementForQueryString:{@"INSERT OR REPLACE INTO conversation_id_message_id (conversation_id, message_id, date_sent) VALUES (?, ?, ?)"}];
  v62 = v61;
  v63 = [v61 compiled];

  v49 = v113;
  if (v63)
  {
    sqlite3_bind_int64(v63, 1, v31);
    sqlite3_bind_int64(v63, 2, v108);
    sqlite3_bind_int64(v63, 3, v60);
    v58 = sqlite3_step(v63);
    sqlite3_reset(v63);
    [v118 checkForConnectionErrorWithMessage:@"inserting row into conversation_id_message_id table (2)"];
    goto LABEL_58;
  }

LABEL_59:
  v64 = +[MFMailMessageLibrary conversationCalculationLog];
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v131 = v108;
    v132 = 2048;
    v133 = v31;
    _os_log_impl(&dword_1B0389000, v64, OS_LOG_TYPE_DEFAULT, "Threading %lld: Resolved message's conversation ID to %lld", buf, 0x16u);
  }

  if (v112)
  {
    goto LABEL_62;
  }

  [v106 setConversationID:v31];
  v49 = v113;
  v65 = 0;
LABEL_64:
  v111 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v65)
  {
    v66 = 0;
    v67 = 1;
  }

  else
  {
    [v115 removeIndex:v31];
    v66 = [(MFMailMessageLibrary *)self flagsForConversationId:v31];
    v68 = [v115 firstIndex];
    if (v68 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v67 = 0;
    }

    else
    {
      do
      {
        v117 = [MFMessageCriterion criterionForNotDeletedConversationID:v68];
        v69 = [(MFMailMessageLibrary *)self messagesMatchingCriterion:v117 options:6297663];
        v70 = [(MFMailMessageLibrary *)self hookRegistry];
        v116 = v66;
        [v70 persistenceWillChangeConversationID:v68 messages:v69];

        v71 = [MEMORY[0x1E696AD98] numberWithLongLong:v68];
        v72 = [v114 objectForKeyedSubscript:v71];

        if (v72)
        {
          [v72 addObjectsFromArray:v69];
        }

        else
        {
          v73 = [v69 mutableCopy];
          v74 = [MEMORY[0x1E696AD98] numberWithLongLong:v68];
          [v114 setObject:v73 forKeyedSubscript:v74];
        }

        v75 = [(MFMailMessageLibrary *)self flagsForConversationId:v68];
        v76 = [v118 preparedStatementForQueryString:{@"UPDATE messages SET conversation_id = ?, content_index_transaction_id = NULL WHERE conversation_id = ?"}];
        v77 = v76;
        v78 = [v76 compiled];

        if (v78)
        {
          sqlite3_bind_int64(v78, 1, v31);
          sqlite3_bind_int64(v78, 2, v68);
          v79 = sqlite3_step(v78);
          sqlite3_reset(v78);
          [v118 checkForConnectionErrorWithMessage:@"udpating other conversations to point to this one"];
          if (v79 != 101)
          {
            goto LABEL_85;
          }
        }

        v80 = [v118 preparedStatementForQueryString:@"UPDATE OR IGNORE conversation_id_message_id SET conversation_id = ? WHERE conversation_id = ?"];
        v81 = v80;
        v82 = [v80 compiled];

        if (!v82)
        {
          goto LABEL_75;
        }

        sqlite3_bind_int64(v82, 1, v31);
        sqlite3_bind_int64(v82, 2, v68);
        v83 = sqlite3_step(v82);
        sqlite3_reset(v82);
        [v118 checkForConnectionErrorWithMessage:@"udpating other conversations to point to this one"];
        if (v83 != 101)
        {
LABEL_85:
          v67 = 1;
        }

        else
        {
LABEL_75:
          v84 = [MEMORY[0x1E696AD98] numberWithLongLong:v68];
          [v111 addObject:v84];

          if (v112)
          {
            v112[2](v112, v68, v31);
          }

          v85 = self;
          v127 = 0u;
          v128 = 0u;
          v125 = 0u;
          v126 = 0u;
          v86 = v69;
          v87 = [v86 countByEnumeratingWithState:&v125 objects:v129 count:16];
          if (v87)
          {
            v88 = *v126;
            do
            {
              for (i = 0; i != v87; ++i)
              {
                if (*v126 != v88)
                {
                  objc_enumerationMutation(v86);
                }

                [*(*(&v125 + 1) + 8 * i) setConversationID:v31];
              }

              v87 = [v86 countByEnumeratingWithState:&v125 objects:v129 count:16];
            }

            while (v87);
          }

          self = v85;
          v67 = 0;
        }

        v68 = [v115 indexGreaterThanIndex:v68];

        v66 = v75 | v116;
        if (v68 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v90 = 1;
        }

        else
        {
          v90 = v67;
        }

        v49 = v113;
      }

      while ((v90 & 1) == 0);
    }

    if (v66 && (v67 & 1) == 0)
    {
      [(MFMailMessageLibrary *)self setFlags:v66 forConversationId:v31];
    }

    if (v49)
    {
      *v49 = v66;
    }
  }

  if (CFAbsoluteTimeGetCurrent() - Current > 0.05)
  {
    v91 = MFLogGeneral();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
    {
      [MFMailMessageLibrary addReferenceForContext:usingDatabaseConnection:generationWindow:mergeHandler:];
    }
  }

  v120[0] = MEMORY[0x1E69E9820];
  v120[1] = 3221225472;
  v120[2] = __101__MFMailMessageLibrary_addReferenceForContext_usingDatabaseConnection_generationWindow_mergeHandler___block_invoke;
  v120[3] = &unk_1E7AA3688;
  v92 = v106;
  v124 = v66;
  v121 = v92;
  v122 = self;
  v93 = v103;
  v123 = v93;
  [v114 enumerateKeysAndObjectsUsingBlock:v120];
  if ([v111 count])
  {
    v94 = [MEMORY[0x1E699B8C8] column:@"conversation_id"];
    v95 = [v94 in:v111];

    v96 = [objc_alloc(MEMORY[0x1E699B8E8]) initWithTable:@"conversations" where:v95];
    v119 = 0;
    v97 = [v118 executeDeleteStatement:v96 error:&v119];
    v98 = v119;
    if (v97)
    {
      v99 = +[MFMailMessageLibrary conversationCalculationLog];
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v131 = v108;
        v132 = 2114;
        v133 = v111;
        _os_log_impl(&dword_1B0389000, v99, OS_LOG_TYPE_DEFAULT, "Threading %lld: deleting merged conversations from table: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      [v118 handleError:v98 message:@"deleting row from conversations table"];
    }

    v67 = v97 ^ 1;
  }

  if (v67)
  {
    v100 = 0;
  }

  else
  {
    v100 = v31;
  }

  v101 = *MEMORY[0x1E69E9840];
  return v100;
}

void __101__MFMailMessageLibrary_addReferenceForContext_usingDatabaseConnection_generationWindow_mergeHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  [*(a1 + 32) setConversationFlags:*(a1 + 56)];
  v6 = [*(a1 + 40) hookRegistry];
  [v6 persistenceIsChangingConversationID:objc_msgSend(v7 messages:"longLongValue") generationWindow:{v5, *(a1 + 48)}];
}

- (MFMailboxFrecencyController)mailboxFrecencyController
{
  v2 = EFAtomicSetOnceObjectLoad();

  return v2;
}

MFMailboxFrecencyController *__49__MFMailMessageLibrary_mailboxFrecencyController__block_invoke(uint64_t a1)
{
  v2 = [MFMailboxFrecencyController alloc];
  v3 = [*(a1 + 32) database];
  v4 = [(MFMailboxFrecencyController *)v2 initWithDatabase:v3];

  return v4;
}

- (EDPersistenceHookRegistry)hookRegistry
{
  v2 = [(MFMailMessageLibrary *)self persistence];
  v3 = [v2 hookRegistry];

  return v3;
}

- (id)duplicateMessages:(id)a3 newRemoteIDs:(id)a4 forMailbox:(id)a5 setFlags:(unint64_t)a6 createNewCacheFiles:(BOOL)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [MEMORY[0x1E695DF90] dictionary];
  v15 = [(MFMailMessageLibrary *)self addMessages:v11 withMailbox:v13 newMessagesByOldMessage:v14 remoteIDs:v12 setFlags:a6 addPOPUIDs:0 dataSectionsByMessage:0 generationWindow:0];

  return v14;
}

- (id)addMessages:(id)a3 withMailbox:(id)a4 newMessagesByOldMessage:(id)a5 remoteIDs:(id)a6 setFlags:(unint64_t)a7 addPOPUIDs:(BOOL)a8 dataSectionsByMessage:(id)a9 generationWindow:(id)a10
{
  v38 = a3;
  v14 = a4;
  v37 = a5;
  v36 = a6;
  v35 = a9;
  v34 = a10;
  v40 = +[MFActivityMonitor currentMonitor];
  v15 = v14;
  if (v14)
  {
    v71 = 0;
    v72 = &v71;
    v73 = 0x2020000000;
    v74 = 0;
    v16 = [MEMORY[0x1E695DF70] array];
    v39 = v16;
    v33 = [v14 account];
    v27 = [v33 supportsRemoteAppend];
    v32 = [(MFMailMessageLibrary *)self messageBasePathForAccount:v33];
    v26 = [v33 supportsPurge];
    v70[0] = 0;
    v70[1] = v70;
    v70[2] = 0x2020000000;
    v70[3] = 0;
    v68[0] = 0;
    v68[1] = v68;
    v68[2] = 0x2020000000;
    v69 = 0;
    v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v64 = 0;
    v65 = &v64;
    v66 = 0x2020000000;
    v67 = 0;
    for (i = [v38 count]; v65[3] < i; v16 = v39)
    {
      if (v72[3] & 1) != 0 || ([v40 shouldCancel])
      {
        break;
      }

      v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v19 = [(MFMailMessageLibrary *)self database];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary addMessages:withMailbox:newMessagesByOldMessage:remoteIDs:setFlags:addPOPUIDs:dataSectionsByMessage:generationWindow:]"];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __141__MFMailMessageLibrary_addMessages_withMailbox_newMessagesByOldMessage_remoteIDs_setFlags_addPOPUIDs_dataSectionsByMessage_generationWindow___block_invoke;
      v41[3] = &unk_1E7AA3750;
      v41[4] = self;
      v42 = v34;
      v55 = &v64;
      v59 = i;
      v56 = &v71;
      v21 = v40;
      v43 = v21;
      v44 = v38;
      v22 = v15;
      v45 = v15;
      v46 = v31;
      v61 = v27;
      v47 = v36;
      v57 = v70;
      v62 = a8;
      v60 = a7;
      v58 = v68;
      v48 = v30;
      v23 = v18;
      v49 = v23;
      v24 = v39;
      v50 = v24;
      v51 = v32;
      v63 = v26;
      v52 = v35;
      v53 = v33;
      v54 = v37;
      [v19 __performWriteWithCaller:v20 usingBlock:v41];

      if ((v72[3] & 1) == 0)
      {
        [v24 addObjectsFromArray:v23];
      }

      if (v65[3] < i && (v72[3] & 1) == 0 && ([v21 shouldCancel] & 1) == 0)
      {
        usleep(0x1388u);
      }

      v15 = v22;
    }

    _Block_object_dispose(&v64, 8);

    _Block_object_dispose(v68, 8);
    _Block_object_dispose(v70, 8);

    _Block_object_dispose(&v71, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t __141__MFMailMessageLibrary_addMessages_withMailbox_newMessagesByOldMessage_remoteIDs_setFlags_addPOPUIDs_dataSectionsByMessage_generationWindow___block_invoke(uint64_t a1, void *a2)
{
  v485 = *MEMORY[0x1E69E9840];
  v353 = a2;
  v288 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v313 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v312 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v324 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v305 = [*(a1 + 32) isProtectedDataAvailable:v353];
  [*(a1 + 40) insertGeneration:{objc_msgSend(v353, "transactionGeneration")}];
  v2 = mach_absolute_time();
  v3 = *(*(*(a1 + 144) + 8) + 24);
  v311 = *MEMORY[0x1E699B3A0] + v3;
  if (v3 < *(a1 + 176) && v3 < *MEMORY[0x1E699B3A0] + v3)
  {
    v267 = v2;
    v326 = 0;
    v268 = *MEMORY[0x1E699B0D0];
    v269 = *MEMORY[0x1E699B178];
    v350 = *MEMORY[0x1E699A728];
    v6 = @"1";
    if (v305)
    {
      v6 = @"0";
    }

    v283 = v6;
    v282 = *MEMORY[0x1E699B110];
    v281 = *MEMORY[0x1E699B1C0];
    v306 = *MEMORY[0x1E699A760];
    v307 = *MEMORY[0x1E699B0E8];
    v266 = *MEMORY[0x1E699A698];
    while (1)
    {
      if (*(*(*(a1 + 152) + 8) + 24) & 1) != 0 || ([*(a1 + 48) shouldCancel])
      {
        goto LABEL_7;
      }

      context = objc_autoreleasePoolPush();
      v354 = [*(a1 + 56) objectAtIndexedSubscript:*(*(*(a1 + 144) + 8) + 24)];
      v7 = unlockedMailboxUidForMessage(*(a1 + 32), v354);
      v340 = v7;
      if (!v7)
      {
        v8 = EDLibraryLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __141__MFMailMessageLibrary_addMessages_withMailbox_newMessagesByOldMessage_remoteIDs_setFlags_addPOPUIDs_dataSectionsByMessage_generationWindow___block_invoke_cold_1(&v444, v445);
        }

        v7 = 0;
      }

      v9 = [v7 account];
      v10 = [v9 supportsRemoteAppend];

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ([v354 conformsToProtocol:&unk_1F2795A78])
      {
        v345 = v354;
      }

      else
      {
        v345 = 0;
      }

      v443 = 0;
      if (isKindOfClass)
      {
        v331 = 0;
        if (v305)
        {
          v11 = 0;
          v308 = 0;
          log = 0;
          goto LABEL_29;
        }

        v12 = 1;
      }

      else
      {
        v331 = [v354 messageDataHolderIsComplete:&v443 downloadIfNecessary:0];
        v12 = v305 ^ 1;
      }

      v308 = v12;
      log = [v354 headersIfAvailable];
      if (!log)
      {
        v23 = *(a1 + 32);
        os_unfair_lock_lock(v23 + 54);
        v24 = [*(*(a1 + 32) + 288) objectForKeyedSubscript:v354];
        os_unfair_lock_unlock(v23 + 54);
        if (!v24 || ([v24 headersIfAvailable], log = objc_claimAutoreleasedReturnValue(), v24, !log))
        {
          log = EDLibraryLog();
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            v25 = [v354 ef_publicDescription];
            v26 = [v354 messageStore];
            v27 = [v354 messageStore];
            *buf = 138543874;
            *&buf[4] = v25;
            *&buf[12] = 2112;
            *&buf[14] = v26;
            *&buf[22] = 2048;
            *&buf[24] = v27;
            _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "Not copying message (couldn't get headers from source message) %{public}@ with store %@ (%p)", buf, 0x20u);
          }

          goto LABEL_241;
        }
      }

      v11 = 1;
LABEL_29:
      v437 = 0;
      v438 = &v437;
      v439 = 0x3032000000;
      v440 = __Block_byref_object_copy__6;
      v441 = __Block_byref_object_dispose__6;
      v442 = 0;
      v431 = 0;
      v432 = &v431;
      v433 = 0x3032000000;
      v434 = __Block_byref_object_copy__6;
      v435 = __Block_byref_object_dispose__6;
      v436 = 0;
      v347 = [*(a1 + 64) URLString];
      v425 = 0;
      v426 = &v425;
      v427 = 0x3032000000;
      v428 = __Block_byref_object_copy__6;
      v429 = __Block_byref_object_dispose__6;
      v430 = 0;
      v419 = 0;
      v420 = &v419;
      v421 = 0x3032000000;
      v422 = __Block_byref_object_copy__6;
      v423 = __Block_byref_object_dispose__6;
      v424 = 0;
      v413 = 0;
      v414 = &v413;
      v415 = 0x3032000000;
      v416 = __Block_byref_object_copy__6;
      v417 = __Block_byref_object_dispose__6;
      v418 = 0;
      v407 = 0;
      v408 = &v407;
      v409 = 0x3032000000;
      v410 = __Block_byref_object_copy__6;
      v411 = __Block_byref_object_dispose__6;
      v412 = 0;
      v401 = 0;
      v402 = &v401;
      v403 = 0x3032000000;
      v404 = __Block_byref_object_copy__6;
      v405 = __Block_byref_object_dispose__6;
      v406 = 0;
      v397 = 0;
      v398 = &v397;
      v399 = 0x2020000000;
      v400 = 0;
      v393 = 0;
      v394 = &v393;
      v395 = 0x2020000000;
      v396 = 0;
      v389 = 0;
      v390 = &v389;
      v391 = 0x2020000000;
      v392 = 0;
      v385 = 0;
      v386 = &v385;
      v387 = 0x2020000000;
      v388 = 0;
      v379 = 0;
      v380 = &v379;
      v381 = 0x3032000000;
      v382 = __Block_byref_object_copy__6;
      v383 = __Block_byref_object_dispose__6;
      v384 = 0;
      v373 = 0;
      v374 = &v373;
      v375 = 0x3032000000;
      v376 = __Block_byref_object_copy__6;
      v377 = __Block_byref_object_dispose__6;
      v378 = 0;
      if (v11)
      {
        goto LABEL_35;
      }

      if (!v326)
      {
        v326 = [v353 preparedStatementForQueryString:{@"SELECT addresses.comment AS sender_comment, addresses.address AS sender_address, subjects.subject, messages.remote_mailbox, messages.original_mailbox, content_type, messages.message_id, messages.external_id, messages.unique_id, messages.list_id_hash, messages.document_id, messages.unsubscribe_type FROM messages LEFT OUTER JOIN addresses ON messages.sender = addresses.ROWID LEFT OUTER JOIN subjects ON messages.subject = subjects.ROWID WHERE messages.ROWID = ?"}];
      }

      v13 = [v354 libraryID];
      v14 = [MEMORY[0x1E696AD98] numberWithLongLong:v13];
      v480 = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v480 count:1];
      v372[0] = MEMORY[0x1E69E9820];
      v372[1] = 3221225472;
      v372[2] = __141__MFMailMessageLibrary_addMessages_withMailbox_newMessagesByOldMessage_remoteIDs_setFlags_addPOPUIDs_dataSectionsByMessage_generationWindow___block_invoke_728;
      v372[3] = &unk_1E7AA36D8;
      v372[4] = &v419;
      v372[5] = &v425;
      v372[6] = &v437;
      v372[7] = &v431;
      v372[8] = &v385;
      v372[9] = &v379;
      v372[10] = &v397;
      v372[11] = &v407;
      v372[12] = &v389;
      v372[13] = &v393;
      v372[14] = &v401;
      v372[15] = &v373;
      v371 = 0;
      v16 = [v326 executeWithIndexedBindings:v15 usingBlock:v372 error:&v371];
      v17 = v371;

      if ((v16 & 1) == 0)
      {
        [v353 handleError:v17 message:@"Fetching fields for message"];
      }

      v18 = [*(a1 + 32) _recipientsForMessageWithDatabaseID:v13 connection:v353 recipientsCache:0];
      v19 = v414[5];
      v414[5] = v18;

      if (!v398[3])
      {
LABEL_35:
        v398[3] = MFMessageIDHashFromHeaders();
      }

      if (isKindOfClass)
      {
        v20 = [_MFAddableMessage alloc];
        v21 = [(_MFAddableMessage *)v20 initWithLibraryMessage:v354 messageIDHash:v398[3] mailboxURL:v347];
        v22 = [*(a1 + 32) hookRegistry];
        [v22 persistenceWillAddMessage:v21 fromExistingMessage:1];
      }

      else
      {
        if ([v354 messageIDHash])
        {
          v21 = [*(a1 + 32) hookRegistry];
          [(_MFAddableMessage *)v21 persistenceWillAddMessage:v354 fromExistingMessage:0];
          goto LABEL_46;
        }

        v28 = [_MFAddableMessage alloc];
        v21 = [(_MFAddableMessage *)v28 initWithLibraryMessage:v354 messageIDHash:v398[3] mailboxURL:0];
        v22 = [*(a1 + 32) hookRegistry];
        [v22 persistenceWillAddMessage:v21 fromExistingMessage:0];
      }

LABEL_46:
      if (!v426[5])
      {
        v29 = [v354 subjectIfAvailable];
        v30 = [v29 subjectString];
        v31 = v30;
        if (!v30)
        {
          v271 = [log firstHeaderForKey:v269];
          v270 = [v271 ef_UTF8ConvertibleString];
          v31 = v270;
        }

        objc_storeStrong(v426 + 5, v31);
        if (!v30)
        {
        }
      }

      v32 = 0x1E696A000;
      v344 = [v354 messageIDHeader];
      if (!v420[5])
      {
        v33 = [log copyAddressListForSender];
        v34 = [_MFEmailAddress alloc];
        v35 = [v33 firstObject];
        v36 = [(_MFEmailAddress *)v34 initWithAddress:v35];
        v37 = v420[5];
        v420[5] = v36;

        v32 = 0x1E696A000;
      }

      if (!v414[5])
      {
        v38 = objc_alloc_init(_MFRecipientCollection);
        v39 = v414[5];
        v414[5] = v38;

        v40 = [log copyAddressListForTo];
        v370[0] = MEMORY[0x1E69E9820];
        v370[1] = 3221225472;
        v370[2] = __141__MFMailMessageLibrary_addMessages_withMailbox_newMessagesByOldMessage_remoteIDs_setFlags_addPOPUIDs_dataSectionsByMessage_generationWindow___block_invoke_2;
        v370[3] = &unk_1E7AA3700;
        v370[4] = &v413;
        [v40 enumerateObjectsUsingBlock:v370];

        v41 = [log copyAddressListForCc];
        v369[0] = MEMORY[0x1E69E9820];
        v369[1] = 3221225472;
        v369[2] = __141__MFMailMessageLibrary_addMessages_withMailbox_newMessagesByOldMessage_remoteIDs_setFlags_addPOPUIDs_dataSectionsByMessage_generationWindow___block_invoke_3;
        v369[3] = &unk_1E7AA3700;
        v369[4] = &v413;
        [v41 enumerateObjectsUsingBlock:v369];

        v42 = [log copyAddressListForBcc];
        v368[0] = MEMORY[0x1E69E9820];
        v368[1] = 3221225472;
        v368[2] = __141__MFMailMessageLibrary_addMessages_withMailbox_newMessagesByOldMessage_remoteIDs_setFlags_addPOPUIDs_dataSectionsByMessage_generationWindow___block_invoke_4;
        v368[3] = &unk_1E7AA3700;
        v368[4] = &v413;
        [v42 enumerateObjectsUsingBlock:v368];

        v32 = 0x1E696A000;
      }

      if (!v380[5] && !v386[3])
      {
        v43 = [log copyFirstStringValueForKey:v268];
        if (v43)
        {
          v44 = (v380 + 5);
          obj = v380[5];
          [(MFMimePart *)MFMailMimePart parseContentTypeHeader:v43 type:&obj subtype:0];
          objc_storeStrong(v44, obj);
        }

        v45 = v380[5];
        if (v45)
        {
          v46 = v45;
          if ([v46 isEqualToString:@"text"])
          {
            v47 = 1;
          }

          else if ([v46 isEqualToString:@"audio"])
          {
            v47 = 2;
          }

          else if ([v46 isEqualToString:@"video"])
          {
            v47 = 3;
          }

          else if ([v46 isEqualToString:@"application"])
          {
            v47 = 4;
          }

          else if ([v46 isEqualToString:@"message"])
          {
            v47 = 5;
          }

          else if ([v46 isEqualToString:@"multipart"])
          {
            v47 = 6;
          }

          else
          {
            v47 = 7;
          }

          v386[3] = v47;
        }

        v32 = 0x1E696A000;
      }

      v48 = v347;
      if (v347 || ([v340 URLString], (v48 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v348 = v48;
        RowidForMailbox = createRowidForMailbox(*(a1 + 32), v353, v48, *(a1 + 72), *(a1 + 40));
        if (RowidForMailbox != v350)
        {
          goto LABEL_84;
        }
      }

      else
      {
        v348 = 0;
      }

      *(*(*(a1 + 152) + 8) + 24) = 1;
      v49 = EDLibraryLog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v105 = [v354 ef_publicDescription];
        v106 = [v340 ef_publicDescription];
        *buf = 138543874;
        *&buf[4] = v105;
        *&buf[12] = 2112;
        *&buf[14] = v348;
        *&buf[22] = 2114;
        *&buf[24] = v106;
        _os_log_error_impl(&dword_1B0389000, v49, OS_LOG_TYPE_ERROR, "failed to find mailbox row for message %{public}@: mailboxURL = %@ for %{public}@", buf, 0x20u);
      }

      RowidForMailbox = v350;
      v32 = 0x1E696A000;
LABEL_84:
      if (!v438[5])
      {
        v50 = [v354 remoteMailboxURL];
        if (v50)
        {
          v51 = [MEMORY[0x1E696AD98] numberWithLongLong:{createRowidForMailbox(*(a1 + 32), v353, v50, *(a1 + 72), *(a1 + 40))}];
          v52 = v438[5];
          v438[5] = v51;
        }

        v32 = 0x1E696A000uLL;
      }

      if (*(a1 + 192) == 1)
      {
        v53 = [*(v32 + 3480) numberWithLongLong:RowidForMailbox];
        v54 = v438[5];
        v438[5] = v53;
      }

      v55 = *(a1 + 80);
      if (v55)
      {
        [v55 objectAtIndexedSubscript:*(*(*(a1 + 144) + 8) + 24)];
      }

      else
      {
        [v354 remoteID];
      }
      v351 = ;

      v56 = [MEMORY[0x1E695DFB0] null];
      v57 = v351 == v56;

      if (v57)
      {

        v351 = 0;
      }

      if (v10 && (*(a1 + 192) & 1) == 0)
      {

        v58 = v438[5];
        v438[5] = 0;

        v351 = 0;
      }

      if (!v432[5])
      {
        v59 = [v354 originalMailboxURL];
        if (v59)
        {
          v60 = [MEMORY[0x1E696AD98] numberWithLongLong:{createRowidForMailbox(*(a1 + 32), v353, v59, *(a1 + 72), *(a1 + 40))}];
          v61 = v432[5];
          v432[5] = v60;
        }
      }

      [v354 dateReceivedAsTimeIntervalSince1970];
      v63 = v62;
      [v354 dateSentAsTimeIntervalSince1970];
      v65 = v64;
      v322 = [v354 messageSize];
      if (!v408[5])
      {
        v66 = [MEMORY[0x1E696AEC0] ef_UUID];
        v67 = v408[5];
        v408[5] = v66;
      }

      if (!v390[3] && ((isKindOfClass & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0))
      {
        v68 = [v354 uniqueRemoteId];
        v390[3] = v68;
      }

      if (!v394[3])
      {
        v69 = [log firstHeaderForKey:v282];
        v394[3] = MFStringHashForMessageIDHeader();
      }

      if (!v402[5])
      {
        v70 = [log firstHeaderForKey:v281];
        v71 = v402[5];
        v402[5] = v70;
      }

      v72 = [v354 messageFlags];
      v73 = [*(a1 + 64) mailboxType];
      v74 = 0xFFFFFFFAFFFFFFFFLL;
      if (v73 == 3)
      {
        v74 = 0xFFFFFFFAFFFFFFFDLL;
      }

      v75 = *(a1 + 184) | v74 & v72;
      if (v75)
      {
        v76 = "1";
      }

      else
      {
        v76 = "0";
      }

      if ((v75 & 0x10) != 0)
      {
        v77 = "1";
      }

      else
      {
        v77 = "0";
      }

      v319 = v77;
      if ((v75 & 0x10) != 0)
      {
        [MEMORY[0x1E696AD98] numberWithUnsignedInteger:(v75 >> 41) & 7];
      }

      else
      {
        [MEMORY[0x1E695DFB0] null];
      }
      v332 = ;
      if ((v75 & 0x1000000) != 0)
      {
        v78 = "1";
      }

      else
      {
        v78 = "0";
      }

      v316 = v78;
      if ((v75 & 2) != 0)
      {
        v79 = "1";
      }

      else
      {
        v79 = "0";
      }

      v323 = v75;
      if ((v75 & 0x82) != 0)
      {
        v80 = "0";
      }

      else
      {
        v80 = "1";
      }

      v327 = [*(a1 + 32) referencesFromHeaders:log];
      v81 = v351;
      v82 = [v351 UTF8String];
      v303 = v82;
      if (v82)
      {
        v304 = strlen(v82);
      }

      else
      {
        v304 = 0;
      }

      v83 = MEMORY[0x1E699B340];
      v84 = [log firstHeaderForKey:v307];
      v339 = [v83 tagValueListFromString:v84 error:0];

      v336 = [v339 objectForKeyedSubscript:v306];
      if (v336)
      {
        v85 = [v420[5] displayName];
        v86 = v336;
        v87 = v85;
        v88 = [objc_alloc(MEMORY[0x1E699B248]) initWithString:v86];
        [v88 setDisplayName:v87];
        v89 = [v88 emailAddressValue];
        v90 = v89;
        if (v89)
        {
          v330 = v89;
        }

        else
        {
          v91 = [v88 stringValue];
          v92 = v91;
          if (v91)
          {
            v93 = v91;
          }

          else
          {
            v93 = v86;
          }

          v330 = v93;
        }
      }

      else
      {
        v330 = 0;
      }

      v325 = v350;
      v343 = [*(a1 + 32) _findOrCreateDatabaseIDForAddress:v420[5] cache:v324 connection:v353];
      if (v343 != v350)
      {
        v325 = v350;
        if (_os_feature_enabled_impl())
        {
          v94 = [*(a1 + 32) persistence];
          v95 = [v94 businessPersistence];

          if (v330)
          {
            v96 = EDLibraryLog();
            if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
            {
              v97 = v330;
              v98 = [v97 emailAddressValue];
              v99 = v98;
              if (v98)
              {
                v100 = [v98 ef_publicDescription];
                v101 = v100;
              }

              else
              {
                v107 = MEMORY[0x1E699B858];
                v100 = [v97 stringValue];
                v101 = [v107 fullyOrPartiallyRedactedStringForString:v100];
              }

              v108 = v101;
              *buf = 138543362;
              *&buf[4] = v108;
              _os_log_impl(&dword_1B0389000, v96, OS_LOG_TYPE_DEFAULT, "HideMyEmail sender address detected. Using original sender address for grouping: %{public}@", buf, 0xCu);
            }

            v104 = v330;
            v103 = v343;
          }

          else
          {
            v102 = [v420[5] fullAddress];
            v103 = v343;
            v104 = v102;
          }

          buf[0] = 0;
          v325 = [v95 findOrCreateBusinessIDForAddress:v104 addressID:v103 connection:v353 businessMetadataNeedsRefreshing:buf];
          if (buf[0] == 1)
          {
            v109 = [MEMORY[0x1E696AD98] numberWithLongLong:v343];
            v478 = v109;
            v479 = v104;
            v110 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v479 forKeys:&v478 count:1];
            [v95 fetchBusinessMetadataForAddresses:v110 completionHandler:0];
          }
        }
      }

      v111 = objc_alloc(MEMORY[0x1E699B328]);
      v328 = [v111 initWithString:v426[5]];
      v337 = [v328 prefix];
      v338 = [v328 subjectWithoutPrefix];
      if (isKindOfClass)
      {
        v342 = [v354 globalMessageID];
        v341 = 0;
        v310 = [v354 authenticationState];
      }

      else
      {
        v342 = [*(a1 + 32) _findOrCreateDatabaseIDForGlobalData:v398[3] cache:v288 connection:v353];
        v112 = [v345 categorizationResult];

        if (v112)
        {
          v113 = [*(a1 + 32) persistence];
          v114 = [v113 categoryPersistence];
          v115 = [v114 currentCategorizationVersion];

          v116 = [*(a1 + 32) persistence];
          v117 = [v116 categoryPersistence];
          v118 = [v345 categorizationResult];
          [v117 persistCategorizationResult:v118 forGlobalID:v342 categorizationVersion:v115 connection:v353];

          v119 = [v345 categorizationResult];
          v341 = [v119 category];
        }

        else
        {
          v341 = 0;
        }

        v120 = [*(a1 + 32) persistence];
        v121 = [v120 messagePersistence];
        [v121 persistMessageIDHeader:v344 forGlobalMessageID:v342];

        v310 = [v345 authenticationState];
        v122 = [*(a1 + 32) persistence];
        v123 = [v122 messagePersistence];
        [v123 persistMessageAuthenticationState:objc_msgSend(v345 forMessageWithGlobalMessageID:{"authenticationState"), v342}];
      }

      v333 = [*(a1 + 32) _findOrCreateDatabaseIDForSubject:v338 cache:v313 connection:v353];
      v124 = [v354 summary];
      v349 = [v124 ef_UTF8ConvertibleString];

      v125 = [*(a1 + 32) _findOrCreateDatabaseIDForSummary:v349 cache:v312 connection:v353];
      v126 = [v420[5] address];
      if (v126)
      {
        v127 = v343 == v350;
      }

      else
      {
        v127 = 0;
      }

      v128 = 1;
      if (!v127 && v333 != v350)
      {
        if (v349)
        {
          v129 = v125 == v350;
        }

        else
        {
          v129 = 0;
        }

        v128 = v129;
      }

      *(*(*(a1 + 152) + 8) + 24) = v128;

      v130 = v343;
      if (!v374[5] && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v131 = [v354 authenticationState];
        if ((v131 & 4) != 0)
        {
          if ((v131 & 8) != 0)
          {
            v132 = 2;
          }

          else
          {
            v132 = 1;
          }

          v133 = [MEMORY[0x1E699ACF0] validatedUnsubscribeTypeForHeader:log dkimVerified:v132];
          v134 = v374[5];
          v374[5] = v133;

          v130 = v343;
        }
      }

      if (*(*(*(a1 + 152) + 8) + 24))
      {
LABEL_237:
        v365 = 0xAAAAAAAAAAAAAAAALL;
        goto LABEL_238;
      }

      v314 = [v353 preparedStatementForQueryString:{@"INSERT INTO messages (remote_id, sender, subject_prefix, global_message_id, subject, summary, date_sent, date_received, display_date, mailbox, remote_mailbox, original_mailbox, flags, read, flagged, flag_color, deleted, sender_vip, visible, size, encoding, content_type, message_id, sequence_identifier, external_id, unique_id, list_id_hash, journaled, document_id, unsubscribe_type) values (:remote_id, :sender, :subject_prefix, :global_message_id, :subject, :summary, :date_sent, :date_received, :display_date, :mailbox, :remote_mailbox, :original_mailbox, :flags, :read, :flagged, :flag_color, :deleted, :sender_vip, :visible, :size, :encoding, :content_type, :message_id, :sequence_identifier, :external_id, :unique_id, :list_id_hash, :journaled, :document_id, :unsubscribe_type)"}];
      if (v386[3] != 7)
      {
        v136 = [MEMORY[0x1E696AD98] numberWithInteger:?];
        goto LABEL_186;
      }

      v135 = v380[5];
      if (v135)
      {
        v136 = v135;
LABEL_186:
        v137 = v136;
        goto LABEL_187;
      }

      v137 = 0;
LABEL_187:
      v449[0] = @":remote_id";
      v138 = v351;
      v315 = v137;
      if (!v351)
      {
        v279 = [MEMORY[0x1E695DFB0] null];
        v138 = v279;
      }

      v450[0] = v138;
      v449[1] = @":sender";
      if (v130 == v350)
      {
        v139 = [MEMORY[0x1E695DFB0] null];
        v285 = v139;
      }

      else
      {
        v139 = [MEMORY[0x1E696AD98] numberWithLongLong:v130];
        v284 = v139;
      }

      v450[1] = v139;
      v449[2] = @":subject_prefix";
      v140 = v337;
      if (!v337)
      {
        v280 = [MEMORY[0x1E695DFB0] null];
        v140 = v280;
      }

      v450[2] = v140;
      v449[3] = @":global_message_id";
      v451 = [MEMORY[0x1E696AD98] numberWithLongLong:v342];
      v449[4] = @":subject";
      v298 = v451;
      v297 = [MEMORY[0x1E696AD98] numberWithLongLong:v333];
      v452 = v297;
      v449[5] = @":summary";
      if (v125 == v350)
      {
        v141 = [MEMORY[0x1E695DFB0] null];
        v287 = v141;
      }

      else
      {
        v141 = [MEMORY[0x1E696AD98] numberWithLongLong:v125];
        v286 = v141;
      }

      v453 = v141;
      v449[6] = @":date_sent";
      v309 = v125;
      v454 = [MEMORY[0x1E696AD98] numberWithDouble:v65];
      v449[7] = @":date_received";
      v292 = v454;
      v291 = [MEMORY[0x1E696AD98] numberWithDouble:v63];
      v455 = v291;
      v449[8] = @":display_date";
      v290 = [MEMORY[0x1E696AD98] numberWithDouble:v63];
      v456 = v290;
      v449[9] = @":mailbox";
      v289 = [MEMORY[0x1E696AD98] numberWithLongLong:RowidForMailbox];
      v457 = v289;
      v449[10] = @":remote_mailbox";
      v142 = v438[5];
      v299 = v142;
      if (!v142)
      {
        v278 = [MEMORY[0x1E695DFB0] null];
        v142 = v278;
      }

      v458 = v142;
      v449[11] = @":original_mailbox";
      v143 = v432[5];
      v144 = v143;
      if (!v143)
      {
        v277 = [MEMORY[0x1E695DFB0] null];
        v144 = v277;
      }

      v459 = v144;
      v449[12] = @":flags";
      v301 = v143;
      v296 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v323];
      v460 = v296;
      v449[13] = @":read";
      v295 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v76];
      v461 = v295;
      v449[14] = @":flagged";
      v294 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v319];
      v462 = v294;
      v463 = v332;
      v449[15] = @":flag_color";
      v449[16] = @":deleted";
      v293 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v79];
      v464 = v293;
      v449[17] = @":sender_vip";
      v145 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v316];
      v465 = v145;
      v449[18] = @":visible";
      v146 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v80];
      v466 = v146;
      v449[19] = @":size";
      v147 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v322];
      v467 = v147;
      v449[20] = @":encoding";
      v148 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v354, "preferredEncoding")}];
      v468 = v148;
      v449[21] = @":content_type";
      v149 = v137;
      if (!v137)
      {
        v276 = [MEMORY[0x1E695DFB0] null];
        v149 = v276;
      }

      v469 = v149;
      v449[22] = @":message_id";
      v150 = [MEMORY[0x1E696AD98] numberWithLongLong:v398[3]];
      v470 = v150;
      v449[23] = @":sequence_identifier";
      v151 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v354, "modSequenceNumber")}];
      v471 = v151;
      v449[24] = @":external_id";
      v472 = v408[5];
      v449[25] = @":unique_id";
      v152 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v390[3]];
      v473 = v152;
      v449[26] = @":list_id_hash";
      v153 = [MEMORY[0x1E696AD98] numberWithLongLong:v394[3]];
      v474 = v153;
      v475 = v283;
      v449[27] = @":journaled";
      v449[28] = @":document_id";
      v154 = v402[5];
      v155 = v154;
      if (!v154)
      {
        v275 = [MEMORY[0x1E695DFB0] null];
        v155 = v275;
      }

      v476 = v155;
      v449[29] = @":unsubscribe_type";
      v156 = v374[5];
      v157 = v156;
      if (!v156)
      {
        v274 = [MEMORY[0x1E695DFB0] null];
        v157 = v274;
      }

      v477 = v157;
      v320 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v450 forKeys:v449 count:30];
      if (!v156)
      {
      }

      if (!v154)
      {
      }

      if (!v315)
      {
      }

      if (!v301)
      {
      }

      if (!v299)
      {
      }

      v158 = v287;
      if (v309 != v350)
      {
        v158 = v286;
      }

      if (!v337)
      {
      }

      v159 = v285;
      if (v343 != v350)
      {
        v159 = v284;
      }

      if (!v351)
      {
      }

      v366 = 0;
      v160 = [v314 executeWithNamedBindings:v320 usingBlock:0 error:&v366];
      v161 = v366;
      if (v160)
      {
        *(*(*(a1 + 160) + 8) + 24) = [v353 lastInsertedDatabaseID];
      }

      else
      {
        [v353 handleError:v161 message:@"Inserting message"];
        *(*(*(a1 + 152) + 8) + 24) = 1;
      }

      v162 = EDLibraryLog();
      if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
      {
        v163 = *(*(*(a1 + 160) + 8) + 24);
        v164 = v398[3];
        v317 = [v328 ef_publicDescription];
        v300 = [v420[5] address];
        v302 = [v300 emailAddressValue];
        v165 = [v354 dateReceived];
        v166 = [MEMORY[0x1E699B7B0] currentDevice];
        v167 = [v166 isInternal];
        if (v167)
        {
          v168 = [MEMORY[0x1E699B858] ec_partiallyRedactedStringForSubjectOrSummary:v349];
          v272 = v168;
        }

        else
        {
          v168 = [MEMORY[0x1E699B858] fullyRedactedStringForString:v349];
          v273 = v168;
        }

        v169 = v374[5];
        v170 = EMShortStringForCategory();
        *buf = 134221314;
        *&buf[4] = v163;
        *&buf[12] = 2048;
        *&buf[14] = v164;
        *&buf[22] = 2048;
        *&buf[24] = v342;
        *&buf[32] = 2114;
        *&buf[34] = v351;
        *&buf[42] = 2114;
        *&buf[44] = v317;
        *&buf[52] = 2048;
        *&buf[54] = v333;
        *&buf[62] = 2114;
        *&buf[64] = v302;
        *&buf[72] = 2048;
        *&buf[74] = v343;
        *&buf[82] = 2114;
        *&buf[84] = v165;
        *&buf[92] = 2114;
        *&buf[94] = v168;
        *&buf[102] = 2048;
        *&buf[104] = v309;
        *&buf[112] = 2114;
        *&buf[114] = v169;
        *&buf[122] = 2114;
        *&buf[124] = v170;
        *&buf[132] = 2048;
        *&buf[134] = v310;
        _os_log_impl(&dword_1B0389000, v162, OS_LOG_TYPE_DEFAULT, "Adding message with databaseID: %lld, message_id: %lld, globalMessageID: %lld, remote_id: %{public}@, subject: %{public}@ (subjectID = %lld), sender: %{public}@ (%lld), date: %{public}@, summary: %{public}@ (%lld), unsubscribeType: %{public}@, category: %{public}@, authenticationState: %llX", buf, 0x8Eu);

        v171 = v273;
        if (v167)
        {
          v171 = v272;
        }
      }

      if (*(*(*(a1 + 152) + 8) + 24))
      {
        goto LABEL_237;
      }

      *(*(*(a1 + 152) + 8) + 24) = [*(a1 + 32) _addRecipients:v414[5] toMessageWithDatabaseID:*(*(*(a1 + 160) + 8) + 24) cache:v324 connection:v353] ^ 1;
      if (*(*(*(a1 + 152) + 8) + 24))
      {
        goto LABEL_237;
      }

      if (*(a1 + 193) == 1 && v432[5])
      {
        v174 = [v353 preparedStatementForQueryString:{@"INSERT OR REPLACE INTO pop_uids (mailbox, uid, date_added) VALUES (?, ?, ?)"}];;
        v175 = v174;
        v176 = [v174 compiled];

        if (v176)
        {
          sqlite3_bind_int64(v176, 1, [v432[5] longLongValue]);
          sqlite3_bind_text(v176, 2, v303, v304, 0);
          v177 = [MEMORY[0x1E695DF00] date];
          [v177 timeIntervalSinceReferenceDate];
          sqlite3_bind_int(v176, 3, v178);

          *(*(*(a1 + 168) + 8) + 24) = sqlite3_step(v176);
          sqlite3_reset(v176);
          [v353 checkForConnectionErrorWithMessage:@"inserting POP UID"];
        }

        *(*(*(a1 + 152) + 8) + 24) = *(*(*(a1 + 168) + 8) + 24) != 101;
        v179 = *(*(*(a1 + 152) + 8) + 24);
        v334 = *(*(*(a1 + 160) + 8) + 24);
        v365 = 0xAAAAAAAAAAAAAAAALL;
        if (v179)
        {
          goto LABEL_238;
        }
      }

      else
      {
        v334 = *(*(*(a1 + 160) + 8) + 24);
        v365 = 0xAAAAAAAAAAAAAAAALL;
      }

      v180 = objc_alloc_init(MFMessageReferenceContext);
      [(MFMessageReferenceContext *)v180 setMessage:v354];
      [(MFMessageReferenceContext *)v180 setLibraryID:v334];
      [(MFMessageReferenceContext *)v180 setMessageIDHash:v398[3]];
      v181 = [MEMORY[0x1E699B328] subjectWithString:v426[5]];
      [(MFMessageReferenceContext *)v180 setSubject:v181];

      [(MFMessageReferenceContext *)v180 setReferences:v327];
      [(MFMessageReferenceContext *)v180 setMessageIDsBySubject:*(a1 + 88)];
      [(MFMessageReferenceContext *)v180 setMailboxID:RowidForMailbox];
      [(MFMessageReferenceContext *)v180 setConversationFlagsRef:&v365];
      [(MFMessageReferenceContext *)v180 setDateSentInterval:v65];
      v182 = [v420[5] fullAddress];
      [(MFMessageReferenceContext *)v180 setSender:v182];

      v183 = [v414[5] toRecipientStrings];
      v184 = MFDatabaseEncodedStringForAddressList(v183);
      [(MFMessageReferenceContext *)v180 setTo:v184];

      v185 = [v414[5] ccRecipientStrings];
      v186 = MFDatabaseEncodedStringForAddressList(v185);
      [(MFMessageReferenceContext *)v180 setCc:v186];

      v187 = [v414[5] bccRecipientStrings];
      v188 = MFDatabaseEncodedStringForAddressList(v187);
      [(MFMessageReferenceContext *)v180 setBcc:v188];

      v189 = *(a1 + 32);
      v190 = *(a1 + 40);
      v362[0] = MEMORY[0x1E69E9820];
      v362[1] = 3221225472;
      v362[2] = __141__MFMailMessageLibrary_addMessages_withMailbox_newMessagesByOldMessage_remoteIDs_setFlags_addPOPUIDs_dataSectionsByMessage_generationWindow___block_invoke_857;
      v362[3] = &unk_1E7AA3728;
      v363 = *(a1 + 96);
      v364 = *(a1 + 104);
      v318 = [v189 addReferenceForContext:v180 usingDatabaseConnection:v353 generationWindow:v190 mergeHandler:v362];
      if (!v318)
      {
        v191 = +[MFMailMessageLibrary conversationCalculationLog];
        if (os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          *&buf[4] = v334;
          _os_log_error_impl(&dword_1B0389000, v191, OS_LOG_TYPE_ERROR, "[addMessages] setting conversation id for message with library id %lld failed", buf, 0xCu);
        }

        *(*(*(a1 + 152) + 8) + 24) = 1;
      }

      if ((*(*(*(a1 + 152) + 8) + 24) & 1) == 0)
      {
        v192 = [MEMORY[0x1E699B5B0] messageDataDirectoryURLForGlobalMessageID:v342 basePath:*(a1 + 112) purgeable:*(a1 + 194)];
        v321 = [v192 path];

        v360 = 0u;
        v361 = 0u;
        v358 = 0u;
        v359 = 0u;
        v193 = [*(a1 + 120) objectForKeyedSubscript:v354];
        v194 = v193;
        v195 = [v193 countByEnumeratingWithState:&v358 objects:v448 count:16];
        if (v195)
        {
          v196 = *v359;
          while (2)
          {
            for (i = 0; i != v195; ++i)
            {
              if (*v359 != v196)
              {
                objc_enumerationMutation(v194);
              }

              v198 = *(*(&v358 + 1) + 8 * i);
              v199 = [v198 partName];
              v200 = [v198 dataHolder];
              v201 = *(a1 + 32);
              v202 = [v198 isPartial];
              v203 = [v198 isComplete];
              v204 = [v354 account];
              v205 = _writeDataHolderForMessageAndPart(v201, v353, v334, v342, v321, v199, v200, v202, v203 ^ 1u, v204);

              if ((v205 & 1) == 0)
              {
                *(*(*(a1 + 152) + 8) + 24) = 1;

                v193 = v194;
                goto LABEL_272;
              }

              if (!v349)
              {
                if ([v200 length] && objc_msgSend(v199, "isEqualToString:", @"summary"))
                {
                  v206 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v207 = [v200 data];
                  v349 = [v206 initWithData:v207 encoding:4];
                }

                else
                {
                  v349 = 0;
                }
              }
            }

            v193 = v194;
            v195 = [v194 countByEnumeratingWithState:&v358 objects:v448 count:16];
            if (v195)
            {
              continue;
            }

            break;
          }
        }

LABEL_272:

        if ([v331 length])
        {
          v208 = [*(a1 + 64) alwaysWriteFullMessageFile];
          v209 = *(a1 + 32);
          if (v208)
          {
            v210 = [v354 account];
            v211 = [v209 _writeEmlxFileOfType:0 forAccount:v210 toDirectory:v321 withData:v331 protectionClass:_protectionClassForMailbox(*(a1 + 64))];
          }

          else
          {
            v232 = v443;
            v210 = [v354 account];
            v211 = _writeDataHolderForMessageAndPart(v209, v353, v334, v342, v321, 0, v331, 0, v232 ^ 1u, v210);
          }

          if ((v211 & 1) == 0)
          {
            goto LABEL_290;
          }
        }

        else if (log)
        {
          v212 = [*(a1 + 128) URL];
          v213 = [v212 scheme];
          v214 = [v213 isEqual:v266];

          if (v214)
          {
            if (([*(a1 + 32) _fileType:2 orHigherExistsAtDirectory:v321] & 1) == 0)
            {
              v215 = [v321 stringByAppendingPathComponent:@"headers.emlx"];
              v216 = [log data];
              v217 = [v216 mutableCopy];

              v218 = [log data];
              v219 = [v218 length];

              if (v219 && v322)
              {
                v220 = [log data];
                v221 = [v220 mf_locationsOfUnixNewlinesNeedingConversion];
                v222 = [v221 count];

                v223 = v322 - (v222 + v219);
                if (v322 < v222 + v219)
                {
                  v223 = 0;
                }

                v224 = [MEMORY[0x1E696AEC0] stringWithFormat:@"X-Apple-Content-Length: %lu\n\n", v223];
                v225 = [v224 dataUsingEncoding:1];

                if ([v217 length] >= 2)
                {
                  v226 = [MEMORY[0x1E695DEF0] dataWithBytes:"\n\n" length:2];
                  v227 = [v217 ef_hasSuffix:v226];

                  if (v227)
                  {
                    [v217 setLength:{objc_msgSend(v217, "length") - 1}];
                  }
                }

                [v217 appendData:v225];
              }

              v228 = *(a1 + 32);
              v229 = [MEMORY[0x1E695DFF8] fileURLWithPath:v215 isDirectory:0];
              v230 = _protectionClassForMailbox(*(a1 + 64));
              v231 = [v354 account];
              LOBYTE(v228) = [v228 _writeEmlxData:v217 toFile:v229 protectionClass:v230 purgeable:{objc_msgSend(v231, "supportsPurge")}];

              if ((v228 & 1) == 0)
              {
LABEL_290:
                *(*(*(a1 + 152) + 8) + 24) = 1;
              }
            }
          }
        }

        if ((*(*(*(a1 + 152) + 8) + 24) & 1) == 0)
        {
          v172 = [*(a1 + 32) _libraryMessageWithLibraryID:v334 wasCached:0];
          [v172 setGenerationNumber:v267];
          v233 = [v420[5] fullAddress];
          v234 = v233;
          if (v233)
          {
            v447 = v233;
            [MEMORY[0x1E695DEC8] arrayWithObjects:&v447 count:1];
          }

          else
          {
            [v354 sendersIfCached];
          }
          v235 = ;

          v236 = [v414[5] toRecipientStrings];
          v237 = v236;
          if (v236)
          {
            v238 = v236;
          }

          else
          {
            v238 = [v354 toIfCached];
          }

          v239 = [v414[5] ccRecipientStrings];
          v240 = v239;
          if (v239)
          {
            v241 = v239;
          }

          else
          {
            v241 = [v354 ccIfCached];
          }

          v242 = [v414[5] bccRecipientStrings];
          v243 = v242;
          if (v242)
          {
            v244 = v242;
          }

          else
          {
            v244 = [v354 bccIfCached];
          }

          v245 = v426[5];
          [v354 dateReceivedAsTimeIntervalSince1970];
          v247 = v246;
          [v354 dateSentAsTimeIntervalSince1970];
          [v172 setSubject:v245 to:v238 cc:v241 bcc:v244 sender:v235 dateReceived:v349 dateSent:v247 summary:v248];
          [v172 setConversationID:v318];
          [v172 setMessageIDHash:v398[3]];
          [v172 setGlobalMessageID:v342];
          -[NSObject setMessageSize:](v172, "setMessageSize:", [v354 messageSize]);
          [v172 setFlags:v323];
          [v172 setMailboxID:RowidForMailbox];
          -[NSObject setOriginalMailboxID:](v172, "setOriginalMailboxID:", [v432[5] longLongValue]);
          v249 = [v354 dateReceived];
          [v172 setDisplayDate:v249];

          if (isKindOfClass)
          {
            v250 = [v354 readLater];
            [v172 setReadLater:v250];

            v251 = [v354 followUp];
            [v172 setFollowUp:v251];

            v252 = [v354 sendLaterDate];
            [v172 setSendLaterDate:v252];
          }

          if (v351)
          {
            [v172 setRemoteID:v351];
          }

          if (v380[5])
          {
            v253 = v380[5];
          }

          else
          {
            v253 = &stru_1F273A5E0;
          }

          [v172 setContentType:v253];
          [v172 setExternalID:v408[5]];
          [v172 setUniqueRemoteId:v390[3]];
          [v172 setConversationFlags:v365];
          v254 = objc_alloc(MEMORY[0x1E699B200]);
          v255 = [v254 initWithHash:v394[3]];
          [v172 setListIDHash:v255];

          v256 = [v354 references];
          [v172 setReferences:v256];

          [v172 setIsJournaled:v308];
          [v172 setMessageIDHeader:v344];
          if ([v354 conformsToProtocol:&unk_1F2795A78])
          {
            v257 = [*(a1 + 32) persistence];
            v258 = [v257 businessPersistence];
            v259 = [v354 categorizationResult];
            v260 = [v258 updatedCategoryForAddressID:v343 fromCategorizationResult:v259];
            [v172 setCategory:v260];

            goto LABEL_315;
          }

          if ([v354 conformsToProtocol:&unk_1F27860E8])
          {
            v257 = [v354 category];
            [v172 setCategory:v257];
LABEL_315:
          }

          [v172 setAuthenticationState:v310];
          [v172 setBusinessID:v325];
          if (!v325)
          {
            v261 = +[MFMailMessageLibrary log];
            if (os_log_type_enabled(v261, OS_LOG_TYPE_ERROR))
            {
              __141__MFMailMessageLibrary_addMessages_withMailbox_newMessagesByOldMessage_remoteIDs_setFlags_addPOPUIDs_dataSectionsByMessage_generationWindow___block_invoke_cold_2(&v356, v357);
            }

            memset(buf, 170, sizeof(buf));
            *&buf[32] = 0;
            *v482 = 0xE00000001;
            v483 = 1;
            v484 = getpid();
            v446 = 648;
            if (!sysctl(v482, 4u, buf, &v446, 0, 0) && (*&buf[32] & 0x800) != 0)
            {
              __debugbreak();
            }
          }

          [*(a1 + 96) addObject:v172];
          v262 = *(a1 + 136);
          if (v262)
          {
            [v262 setObject:v172 forKeyedSubscript:v354];
          }

          goto LABEL_240;
        }
      }

LABEL_238:
      v172 = EDLibraryLog();
      if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
      {
        [v354 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        __141__MFMailMessageLibrary_addMessages_withMailbox_newMessagesByOldMessage_remoteIDs_setFlags_addPOPUIDs_dataSectionsByMessage_generationWindow___block_invoke_cold_3();
      }

LABEL_240:

      _Block_object_dispose(&v373, 8);
      _Block_object_dispose(&v379, 8);

      _Block_object_dispose(&v385, 8);
      _Block_object_dispose(&v389, 8);
      _Block_object_dispose(&v393, 8);
      _Block_object_dispose(&v397, 8);
      _Block_object_dispose(&v401, 8);

      _Block_object_dispose(&v407, 8);
      _Block_object_dispose(&v413, 8);

      _Block_object_dispose(&v419, 8);
      _Block_object_dispose(&v425, 8);

      _Block_object_dispose(&v431, 8);
      _Block_object_dispose(&v437, 8);

LABEL_241:
      objc_autoreleasePoolPop(context);
      v173 = ++*(*(*(a1 + 144) + 8) + 24);
      if (v173 >= *(a1 + 176) || v173 >= v311)
      {
        goto LABEL_7;
      }
    }
  }

  v326 = 0;
LABEL_7:
  if (*(*(*(a1 + 152) + 8) + 24) == 1)
  {
    v5 = EDLibraryLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __141__MFMailMessageLibrary_addMessages_withMailbox_newMessagesByOldMessage_remoteIDs_setFlags_addPOPUIDs_dataSectionsByMessage_generationWindow___block_invoke_cold_4();
    }

    goto LABEL_327;
  }

  if ([*(a1 + 96) count])
  {
    v5 = [*(a1 + 32) hookRegistry];
    [v5 persistenceIsAddingMessages:*(a1 + 96) journaled:v305 ^ 1u generationWindow:*(a1 + 40)];
LABEL_327:
  }

  v263 = *(*(*(a1 + 152) + 8) + 24);

  v264 = *MEMORY[0x1E69E9840];
  return (v263 ^ 1) & 1;
}

void __141__MFMailMessageLibrary_addMessages_withMailbox_newMessagesByOldMessage_remoteIDs_setFlags_addPOPUIDs_dataSectionsByMessage_generationWindow___block_invoke_728(void *a1, void *a2)
{
  v42 = a2;
  v3 = [v42 objectForKeyedSubscript:@"sender_address"];
  v4 = [v3 stringValue];

  v5 = [v42 objectForKeyedSubscript:@"sender_comment"];
  v6 = [v5 stringValue];

  v7 = [[_MFEmailAddress alloc] initWithAddress:v4 displayName:v6];
  v8 = *(a1[4] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [v42 objectForKeyedSubscript:@"subject"];
  v11 = [v10 stringValue];
  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [v42 objectForKeyedSubscript:@"remote_mailbox"];
  v15 = [v14 numberValue];
  v16 = *(a1[6] + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v18 = [v42 objectForKeyedSubscript:@"original_mailbox"];
  v19 = [v18 numberValue];
  v20 = *(a1[7] + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  v22 = [v42 objectForKeyedSubscript:@"content_type"];
  v23 = [v22 objectValue];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(a1[8] + 8) + 24) = [v23 intValue];
  }

  else
  {
    objc_storeStrong((*(a1[9] + 8) + 40), v23);
  }

  v24 = [v42 objectForKeyedSubscript:@"message_id"];
  v25 = [v24 numberValue];
  *(*(a1[10] + 8) + 24) = [v25 longLongValue];

  v26 = [v42 objectForKeyedSubscript:@"external_id"];
  v27 = [v26 stringValue];
  v28 = *(a1[11] + 8);
  v29 = *(v28 + 40);
  *(v28 + 40) = v27;

  v30 = [v42 objectForKeyedSubscript:@"unique_id"];
  v31 = [v30 numberValue];
  *(*(a1[12] + 8) + 24) = [v31 longLongValue];

  v32 = [v42 objectForKeyedSubscript:@"list_id_hash"];
  v33 = [v32 numberValue];
  *(*(a1[13] + 8) + 24) = [v33 longLongValue];

  v34 = [v42 objectForKeyedSubscript:@"document_id"];
  v35 = [v34 stringValue];
  v36 = *(a1[14] + 8);
  v37 = *(v36 + 40);
  *(v36 + 40) = v35;

  v38 = [v42 objectForKeyedSubscript:@"unsubscribe_type"];
  v39 = [v38 numberValue];
  v40 = *(a1[15] + 8);
  v41 = *(v40 + 40);
  *(v40 + 40) = v39;
}

void __141__MFMailMessageLibrary_addMessages_withMailbox_newMessagesByOldMessage_remoteIDs_setFlags_addPOPUIDs_dataSectionsByMessage_generationWindow___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [[_MFEmailAddress alloc] initWithAddress:v5];
  [v3 addToRecipient:v4];
}

void __141__MFMailMessageLibrary_addMessages_withMailbox_newMessagesByOldMessage_remoteIDs_setFlags_addPOPUIDs_dataSectionsByMessage_generationWindow___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [[_MFEmailAddress alloc] initWithAddress:v5];
  [v3 addCCRecipient:v4];
}

void __141__MFMailMessageLibrary_addMessages_withMailbox_newMessagesByOldMessage_remoteIDs_setFlags_addPOPUIDs_dataSectionsByMessage_generationWindow___block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [[_MFEmailAddress alloc] initWithAddress:v5];
  [v3 addBCCRecipient:v4];
}

void __141__MFMailMessageLibrary_addMessages_withMailbox_newMessagesByOldMessage_remoteIDs_setFlags_addPOPUIDs_dataSectionsByMessage_generationWindow___block_invoke_857(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        if ([v10 conversationID] == a2)
        {
          [v10 setConversationID:a3];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = *(a1 + 40);
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = *v18;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v17 + 1) + 8 * j);
        if ([v15 conversationID] == a2)
        {
          [v15 setConversationID:a3];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)willStartPersistenceDidAddMessages:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_addedMessagesMapLock);
  [(NSMutableDictionary *)self->_currentAddedMessagesMap addEntriesFromDictionary:v4];

  os_unfair_lock_unlock(&self->_addedMessagesMapLock);
}

- (void)didFinishPersistenceDidAddMessages:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_addedMessagesMapLock);
  currentAddedMessagesMap = self->_currentAddedMessagesMap;
  v5 = [v6 allKeys];
  [(NSMutableDictionary *)currentAddedMessagesMap removeObjectsForKeys:v5];

  os_unfair_lock_unlock(&self->_addedMessagesMapLock);
}

- (void)persistenceIsAddingMessages:(id)a3 journaled:(BOOL)a4 generationWindow:(id)a5
{
  v5 = a4;
  v7 = a3;
  if ([v7 count] && v5)
  {
    -[MFMailMessageLibrary _didAddUnreconciledMessages:](self, "_didAddUnreconciledMessages:", [v7 count]);
  }
}

- (void)persistenceDidAddMessages:(id)a3 generationWindow:(id)a4
{
  v5 = a3;
  if ([v5 count])
  {
    v6 = [v5 ef_groupBy:&__block_literal_global_868];
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67__MFMailMessageLibrary_persistenceDidAddMessages_generationWindow___block_invoke_2;
    v9[3] = &unk_1E7AA3798;
    v10 = v7;
    v11 = self;
    v8 = v7;
    [v6 enumerateKeysAndObjectsUsingBlock:v9];
  }
}

id __67__MFMailMessageLibrary_persistenceDidAddMessages_generationWindow___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mailbox];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v5 = v4;

  return v5;
}

void __67__MFMailMessageLibrary_persistenceDidAddMessages_generationWindow___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v12[0] = v6;
  v11[0] = @"messages";
  v11[1] = @"mailboxes";
  v10 = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  v12[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  [*(a1 + 32) postNotificationName:@"MailMessageStoreMessagesAdded" object:*(a1 + 40) userInfo:v8];
  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)_addRecipients:(id)a3 toMessageWithDatabaseID:(int64_t)a4 cache:(id)a5 connection:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __80__MFMailMessageLibrary__addRecipients_toMessageWithDatabaseID_cache_connection___block_invoke;
  v25 = &unk_1E7AA37E8;
  v26 = self;
  v13 = v11;
  v27 = v13;
  v14 = v12;
  v28 = v14;
  v29 = a4;
  v15 = _Block_copy(&v22);
  v16 = [v10 toRecipients];
  LOBYTE(v12) = v15[2](v15, v16, 1);

  if (v12 & 1) != 0 && ([v10 ccRecipients], v17 = objc_claimAutoreleasedReturnValue(), v18 = v15[2](v15, v17, 2), v17, (v18))
  {
    v19 = [v10 bccRecipients];
    v20 = v15[2](v15, v19, 3);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

uint64_t __80__MFMailMessageLibrary__addRecipients_toMessageWithDatabaseID_cache_connection___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = 1;
  if ([v5 count])
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 1;
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x2020000000;
    v37 = 1;
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__6;
    v34 = __Block_byref_object_dispose__6;
    v35 = [MEMORY[0x1E696AD60] stringWithString:{@"INSERT INTO recipients (message, address, type, position) VALUES (?, ?, ?, ?)"}];
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__6;
    v28 = __Block_byref_object_dispose__6;
    v29 = objc_opt_new();
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __80__MFMailMessageLibrary__addRecipients_toMessageWithDatabaseID_cache_connection___block_invoke_2;
    v15[3] = &unk_1E7AA37C0;
    v7 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v16 = v7;
    v17 = *(a1 + 48);
    v18 = &v38;
    v19 = v36;
    v20 = &v30;
    v8 = *(a1 + 56);
    v21 = &v24;
    v22 = v8;
    v23 = a3;
    [v5 enumerateObjectsUsingBlock:v15];
    if (*(v39 + 24) == 1)
    {
      v9 = [*(a1 + 48) preparedStatementForQueryString:v31[5]];
      v10 = v25[5];
      v14 = 0;
      v11 = [v9 executeWithIndexedBindings:v10 usingBlock:0 error:&v14];
      v12 = v14;
      *(v39 + 24) = v11;
      if ((v11 & 1) == 0)
      {
        [*(a1 + 48) handleError:v12 message:@"Inserting addresses"];
      }
    }

    else
    {
      v9 = EDLibraryLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __80__MFMailMessageLibrary__addRecipients_toMessageWithDatabaseID_cache_connection___block_invoke_cold_1();
      }
    }

    v6 = *(v39 + 24);
    _Block_object_dispose(&v24, 8);

    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(v36, 8);
    _Block_object_dispose(&v38, 8);
  }

  return v6 & 1;
}

void __80__MFMailMessageLibrary__addRecipients_toMessageWithDatabaseID_cache_connection___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [*(a1 + 32) _findOrCreateDatabaseIDForAddress:v7 cache:*(a1 + 40) connection:*(a1 + 48)];
  if (v8 == *MEMORY[0x1E699A728])
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  else
  {
    v9 = *(*(a1 + 64) + 8);
    if (*(v9 + 24) == 1)
    {
      *(v9 + 24) = 0;
    }

    else
    {
      [*(*(*(a1 + 72) + 8) + 40) appendString:{@", (?, ?, ?, ?)"}];
    }

    v10 = *(*(*(a1 + 80) + 8) + 40);
    v11 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 88)];
    v17[0] = v11;
    v12 = [MEMORY[0x1E696AD98] numberWithLongLong:v8];
    v17[1] = v12;
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 96)];
    v17[2] = v13;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v17[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
    [v10 addObjectsFromArray:v15];
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (int64_t)_findOrCreateDatabaseIDForAddress:(id)a3 cache:(id)a4 connection:(id)a5
{
  v39[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    v10 = [v7 address];

    if (v10)
    {
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v11 = *MEMORY[0x1E699A728];
      v38 = *MEMORY[0x1E699A728];
      v12 = [v7 fullAddress];
      v13 = [v8 objectForKeyedSubscript:v12];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 longLongValue];
        v36[3] = v15;
LABEL_19:

        _Block_object_dispose(&v35, 8);
        goto LABEL_20;
      }

      v16 = [v9 preparedStatementForQueryString:@"SELECT ROWID FROM addresses WHERE address = ? AND comment = ?"];
      v17 = [v7 address];
      v39[0] = v17;
      v18 = [v7 displayName];
      v19 = v18;
      v20 = &stru_1F273A5E0;
      if (v18)
      {
        v20 = v18;
      }

      v39[1] = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];

      v33 = 0;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __75__MFMailMessageLibrary__findOrCreateDatabaseIDForAddress_cache_connection___block_invoke;
      v34[3] = &unk_1E7AA3810;
      v34[4] = &v35;
      v22 = [v16 executeWithIndexedBindings:v21 usingBlock:v34 error:&v33];
      v23 = v33;
      if (v22)
      {
        v24 = v36[3];
        if (v24 != v11)
        {
          goto LABEL_16;
        }
      }

      else
      {
        [v9 handleError:v23 message:@"Looking up address ROWID"];
        v36[3] = v11;
      }

      v31 = v16;
      v25 = [v9 preparedStatementForQueryString:{@"INSERT INTO addresses (address, comment) VALUES (?, ?)"}];

      v32 = 0;
      v26 = [v25 executeWithIndexedBindings:v21 usingBlock:0 error:&v32];
      v23 = v32;
      if (v26)
      {
        v27 = [v9 lastInsertedDatabaseID];
        v36[3] = v27;
      }

      else
      {
        [v9 handleError:v23 message:@"Inserting address"];
      }

      v16 = v31;
      v24 = v36[3];
LABEL_16:
      if (v24 != v11)
      {
        v28 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
        [v8 setObject:v28 forKeyedSubscript:v12];
      }

      v15 = v36[3];
      goto LABEL_19;
    }
  }

  v15 = *MEMORY[0x1E699A728];
LABEL_20:

  v29 = *MEMORY[0x1E69E9840];
  return v15;
}

void __75__MFMailMessageLibrary__findOrCreateDatabaseIDForAddress_cache_connection___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 objectAtIndexedSubscript:0];
  v7 = [v6 numberValue];
  *(*(*(a1 + 32) + 8) + 24) = [v7 longLongValue];

  *a4 = 1;
}

- (int64_t)_findOrCreateDatabaseIDForGlobalData:(int64_t)a3 cache:(id)a4 connection:(id)a5
{
  v8 = a4;
  v9 = a5;
  v15 = 0;
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v11 = [v10 stringValue];
  v12 = [MEMORY[0x1E699B5C0] messageGlobalDataTableName];
  v13 = [(MFMailMessageLibrary *)self _findOrCreateDatabaseIDForValue:v11 inTable:v12 column:@"message_id" cache:v8 connection:v9 created:&v15];

  if (v15 == 1)
  {
    [(MFMailMessageLibrary *)self _removeDataFilesForGlobalID:v13];
  }

  return v13;
}

- (int64_t)_findOrCreateDatabaseIDForValue:(id)a3 inTable:(id)a4 column:(id)a5 cache:(id)a6 connection:(id)a7 created:(BOOL *)a8
{
  v54 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (v13)
  {
    v18 = [v16 objectForKeyedSubscript:v13];
    if (v18)
    {
      v19 = EDLibraryLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *v52 = 134218498;
        *&v52[4] = [v18 longLongValue];
        *&v52[12] = 2114;
        *&v52[14] = v14;
        *&v52[22] = 2114;
        v53 = v15;
        _os_log_debug_impl(&dword_1B0389000, v19, OS_LOG_TYPE_DEBUG, "Found database ID %lld in cache for table: %{public}@, column: %{public}@", v52, 0x20u);
      }

      v20 = [v18 longLongValue];
    }

    else
    {
      *v52 = 0;
      *&v52[8] = v52;
      *&v52[16] = 0x2020000000;
      v40 = *MEMORY[0x1E699A728];
      v53 = *MEMORY[0x1E699A728];
      v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT ROWID FROM %@ WHERE %@ = ?", v14, v15];
      v39 = [v17 preparedStatementForQueryString:?];
      v51 = v13;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
      v42 = 0;
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __96__MFMailMessageLibrary__findOrCreateDatabaseIDForValue_inTable_column_cache_connection_created___block_invoke;
      v43[3] = &unk_1E7AA3810;
      v43[4] = v52;
      v22 = [v39 executeWithIndexedBindings:v21 usingBlock:v43 error:&v42];
      v23 = v42;

      if ((v22 & 1) == 0)
      {
        v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Looking up %@ ROWID", v15];
        [v17 handleError:v23 message:v24];
        *(*&v52[8] + 24) = v40;
      }

      if (*(*&v52[8] + 24) == v40)
      {
        log = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"INSERT INTO %@ (%@) VALUES (?)", v14, v15];
        v35 = [v17 preparedStatementForQueryString:?];
        v50 = v13;
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
        v41 = v23;
        v38 = [v35 executeWithIndexedBindings:v25 usingBlock:0 error:&v41];
        v26 = v41;

        if (v38)
        {
          v27 = [v17 lastInsertedDatabaseID];
          *(*&v52[8] + 24) = v27;
        }

        else
        {
          v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Inserting %@", v15];
          [v17 handleError:v26 message:v28];
          *(*&v52[8] + 24) = v40;
        }

        v29 = EDLibraryLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = *(*&v52[8] + 24);
          *buf = 134218498;
          v45 = v30;
          v46 = 2114;
          v47 = v14;
          v48 = 2114;
          v49 = v15;
          _os_log_impl(&dword_1B0389000, v29, OS_LOG_TYPE_DEFAULT, "Inserted new database ID %lld in database for table: %{public}@, column: %{public}@", buf, 0x20u);
        }
      }

      else
      {
        log = EDLibraryLog();
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
        {
          v34 = *(*&v52[8] + 24);
          *buf = 134218498;
          v45 = v34;
          v46 = 2114;
          v47 = v14;
          v48 = 2114;
          v49 = v15;
          _os_log_debug_impl(&dword_1B0389000, log, OS_LOG_TYPE_DEBUG, "Found database ID %lld in database for table: %{public}@, column: %{public}@", buf, 0x20u);
        }

        LOBYTE(v38) = 0;
        v26 = v23;
      }

      if (*(*&v52[8] + 24) != v40)
      {
        v31 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
        [v16 setObject:v31 forKeyedSubscript:v13];
      }

      if (a8)
      {
        *a8 = v38;
      }

      v20 = *(*&v52[8] + 24);

      _Block_object_dispose(v52, 8);
    }
  }

  else
  {
    v20 = *MEMORY[0x1E699A728];
  }

  v32 = *MEMORY[0x1E69E9840];
  return v20;
}

void __96__MFMailMessageLibrary__findOrCreateDatabaseIDForValue_inTable_column_cache_connection_created___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 objectAtIndexedSubscript:0];
  v7 = [v6 numberValue];
  *(*(*(a1 + 32) + 8) + 24) = [v7 longLongValue];

  *a4 = 1;
}

- (void)_removeDataFilesForGlobalID:(int64_t)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E699B5B0] messageDataDirectoryURLForGlobalMessageID:a3 basePath:self->_path purgeable:1];
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  [v6 removeItemAtURL:v5 error:0];

  v7 = [MEMORY[0x1E699B5B0] messageDataDirectoryURLForGlobalMessageID:a3 basePath:self->_path purgeable:0];

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  [v8 removeItemAtURL:v7 error:0];

  +[MailAccount mailAccounts];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v9 = v20 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 personaIdentifier];

        if (v14)
        {
          v15 = [(MFMailMessageLibrary *)self messageBasePathForAccount:v13];
          v16 = [MEMORY[0x1E699B5B0] messageDataDirectoryURLForGlobalMessageID:a3 basePath:v15 purgeable:{objc_msgSend(v13, "supportsPurge")}];

          v17 = [MEMORY[0x1E696AC08] defaultManager];
          [v17 removeItemAtURL:v16 error:0];

          v7 = v16;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)updateAdditionalThreadingInfoForSentMessageWithHeaders:(id)a3 externalConversationID:(int64_t)a4
{
  v6 = a3;
  v7 = [(MFMailMessageLibrary *)self database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary updateAdditionalThreadingInfoForSentMessageWithHeaders:externalConversationID:]"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __102__MFMailMessageLibrary_updateAdditionalThreadingInfoForSentMessageWithHeaders_externalConversationID___block_invoke;
  v10[3] = &unk_1E7AA3838;
  v9 = v6;
  v11 = v9;
  v12 = a4;
  [v7 __performWriteWithCaller:v8 usingBlock:v10];
}

uint64_t __102__MFMailMessageLibrary_updateAdditionalThreadingInfoForSentMessageWithHeaders_externalConversationID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = MFMessageIDHashFromHeaders();
  v6 = [v3 preparedStatementForQueryString:{@"INSERT OR IGNORE INTO conversation_id_message_id (conversation_id, message_id) VALUES (?, ?)"}];
  v7 = [v6 compiled];

  if (v7)
  {
    sqlite3_bind_int64(v7, 1, v5);
    sqlite3_bind_int64(v7, 2, *(a1 + 40));
    sqlite3_step(v7);
    sqlite3_reset(v7);
    [v3 checkForConnectionErrorWithMessage:@"inserting row into conversation_id_message_id table (3)"];
  }

  return 1;
}

- (void)updateThreadingInfoForMessage:(id)a3 fromHeaders:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v18 = [(MFMailMessageLibrary *)self referencesFromHeaders:v8];
    v17 = objc_alloc_init(MEMORY[0x1E699B608]);
    v9 = [v7 conversationID];
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = *MEMORY[0x1E699A728];
    v10 = v30;
    v11 = [(MFMailMessageLibrary *)self database];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary updateThreadingInfoForMessage:fromHeaders:]"];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __66__MFMailMessageLibrary_updateThreadingInfoForMessage_fromHeaders___block_invoke;
    v19[3] = &unk_1E7AA3888;
    v20 = v8;
    v13 = v17;
    v21 = v13;
    v14 = v7;
    v22 = v14;
    v23 = self;
    v25 = &v27;
    v26 = a2;
    v15 = v18;
    v24 = v15;
    [v11 __performWriteWithCaller:v12 usingBlock:v19];

    if (v28[3] != v10 || v9 != [v14 conversationID])
    {
      v16 = [(MFMailMessageLibrary *)self hookRegistry];
      [v16 persistenceDidChangeGlobalMessageID:v28[3] orConversationID:v9 message:v14 generationWindow:v13];
    }

    _Block_object_dispose(&v27, 8);
  }
}

uint64_t __66__MFMailMessageLibrary_updateThreadingInfoForMessage_fromHeaders___block_invoke(uint64_t a1, void *a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = MFMessageIDHashFromHeaders();
  [*(a1 + 40) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"messages"];
    v7 = [objc_alloc(MEMORY[0x1E699B8C8]) initWithName:@"ROWID"];
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 48), "libraryID")}];
    v9 = [v7 equalTo:v8];
    [v6 setWhereClause:v9];

    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:v5];
    [v6 setObject:v10 forKeyedSubscript:@"message_id"];

    [v3 executeUpdateStatement:v6 error:0];
    v11 = objc_alloc(MEMORY[0x1E699B960]);
    v12 = [MEMORY[0x1E699B5C0] messageGlobalDataTableName];
    v13 = [v11 initWithTable:v12];

    v14 = [objc_alloc(MEMORY[0x1E699B8C8]) initWithName:@"ROWID"];
    v15 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 48), "globalMessageID")}];
    v16 = [v14 equalTo:v15];
    [v13 setWhereClause:v16];

    v17 = [MEMORY[0x1E696AD98] numberWithLongLong:v5];
    [v13 setObject:v17 forKeyedSubscript:@"message_id"];

    v63 = 0;
    LOBYTE(v17) = [v3 executeUpdateStatement:v13 error:&v63];
    v18 = v63;
    v19 = v18;
    if ((v17 & 1) == 0)
    {
      v20 = [v18 domain];
      if ([v20 isEqualToString:*MEMORY[0x1E699B770]])
      {
        v21 = [v19 code] == 19;

        if (v21)
        {
          v22 = [v19 userInfo];
          v23 = [v22 objectForKeyedSubscript:*MEMORY[0x1E699B778]];
          v24 = [v23 integerValue];

          if (v24 == 2067)
          {
            v66 = 0;
            v67 = &v66;
            v68 = 0x2020000000;
            v69 = 0;
            v56 = [v3 preparedStatementForQueryString:@"SELECT ROWID FROM message_global_data WHERE message_id = ?"];
            v25 = [MEMORY[0x1E696AD98] numberWithLongLong:v5];
            v65 = v25;
            v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
            v62[0] = MEMORY[0x1E69E9820];
            v62[1] = 3221225472;
            v62[2] = __66__MFMailMessageLibrary_updateThreadingInfoForMessage_fromHeaders___block_invoke_2;
            v62[3] = &unk_1E7AA3810;
            v62[4] = &v66;
            [v56 executeWithIndexedBindings:v26 usingBlock:v62 error:0];

            if (!v67[3])
            {
              v54 = [MEMORY[0x1E696AAA8] currentHandler];
              [v54 handleFailureInMethod:*(a1 + 80) object:*(a1 + 56) file:@"MailMessageLibrary.m" lineNumber:2757 description:{@"Got a confict trying to set global message ID %llu, but couldn't find conflicting row", v5}];
            }

            *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 48) globalMessageID];
            [*(a1 + 48) setGlobalMessageID:v67[3]];
            v27 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"messages"];

            v28 = [objc_alloc(MEMORY[0x1E699B8C8]) initWithName:@"ROWID"];
            v29 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 48), "libraryID")}];
            v30 = [v28 equalTo:v29];
            [v27 setWhereClause:v30];

            v31 = [MEMORY[0x1E696AD98] numberWithLongLong:v67[3]];
            [v27 setObject:v31 forKeyedSubscript:@"global_message_id"];

            [v3 executeUpdateStatement:v27 error:0];
            v32 = objc_alloc(MEMORY[0x1E699B8E8]);
            v55 = [MEMORY[0x1E699B5C0] messageGlobalDataTableName];
            v33 = [objc_alloc(MEMORY[0x1E699B8C8]) initWithName:@"ROWID"];
            v34 = [MEMORY[0x1E696AD98] numberWithLongLong:*(*(*(a1 + 72) + 8) + 24)];
            v35 = [v33 equalTo:v34];
            v36 = [v32 initWithTable:v55 where:v35];

            [v3 executeDeleteStatement:v36 error:0];
            _Block_object_dispose(&v66, 8);
            v13 = v27;
          }
        }
      }

      else
      {
      }
    }

    [*(a1 + 48) setMessageIDHash:v5];
  }

  else
  {
    v37 = [v3 preparedStatementForQueryString:@"SELECT message_id FROM messages WHERE rowid = ?"];
    v38 = [v37 compiled];

    if (v38)
    {
      sqlite3_bind_int64(v38, 1, [*(a1 + 48) libraryID]);
      if (sqlite3_step(v38) == 100)
      {
        v5 = sqlite3_column_int64(v38, 0);
      }

      else
      {
        v5 = 0;
      }

      sqlite3_reset(v38);
      [v3 checkForConnectionErrorWithMessage:@"pulling out the faked message-id"];
    }

    else
    {
      v5 = 0;
    }
  }

  v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v61 = 0;
  v40 = objc_alloc_init(MFMessageReferenceContext);
  [(MFMessageReferenceContext *)v40 setMessage:*(a1 + 48)];
  -[MFMessageReferenceContext setLibraryID:](v40, "setLibraryID:", [*(a1 + 48) libraryID]);
  [(MFMessageReferenceContext *)v40 setMessageIDHash:v5];
  v41 = [*(a1 + 48) subject];
  [(MFMessageReferenceContext *)v40 setSubject:v41];

  [(MFMessageReferenceContext *)v40 setReferences:*(a1 + 64)];
  [(MFMessageReferenceContext *)v40 setMessageIDsBySubject:v39];
  -[MFMessageReferenceContext setMailboxID:](v40, "setMailboxID:", [*(a1 + 48) mailboxID]);
  [(MFMessageReferenceContext *)v40 setConversationFlagsRef:&v61];
  v42 = [*(a1 + 48) senders];
  [(MFMessageReferenceContext *)v40 setSenderList:v42];

  v43 = [*(a1 + 48) to];
  [(MFMessageReferenceContext *)v40 setToList:v43];

  v44 = [*(a1 + 48) cc];
  [(MFMessageReferenceContext *)v40 setCcList:v44];

  v45 = [*(a1 + 48) bcc];
  [(MFMessageReferenceContext *)v40 setBccList:v45];

  [*(a1 + 48) dateSentAsTimeIntervalSince1970];
  [(MFMessageReferenceContext *)v40 setDateSentInterval:?];
  v46 = *(a1 + 40);
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __66__MFMailMessageLibrary_updateThreadingInfoForMessage_fromHeaders___block_invoke_3;
  v57[3] = &unk_1E7AA3860;
  v47 = *(a1 + 56);
  v58 = *(a1 + 48);
  v59 = v5;
  v60 = v61;
  v48 = [v47 addReferenceForContext:v40 usingDatabaseConnection:v3 generationWindow:v46 mergeHandler:v57];
  if ([*(a1 + 48) conversationID] != v48)
  {
    v49 = +[MFMailMessageLibrary conversationCalculationLog];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      __66__MFMailMessageLibrary_updateThreadingInfoForMessage_fromHeaders___block_invoke_cold_1(&v66, [*(a1 + 48) conversationID]);
    }

    v50 = [MEMORY[0x1E696AAA8] currentHandler];
    [v50 handleFailureInMethod:*(a1 + 80) object:*(a1 + 56) file:@"MailMessageLibrary.m" lineNumber:2815 description:@"The message didn't get updated"];
  }

  if (!v48)
  {
    v51 = +[MFMailMessageLibrary conversationCalculationLog];
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      __66__MFMailMessageLibrary_updateThreadingInfoForMessage_fromHeaders___block_invoke_cold_2(v64, [*(a1 + 48) libraryID]);
    }
  }

  v52 = *MEMORY[0x1E69E9840];
  return 1;
}

void __66__MFMailMessageLibrary_updateThreadingInfoForMessage_fromHeaders___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectAtIndexedSubscript:0];
  *(*(*(a1 + 32) + 8) + 24) = [v3 databaseIDValue];
}

uint64_t __66__MFMailMessageLibrary_updateThreadingInfoForMessage_fromHeaders___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) conversationID];
  if (result == a2)
  {
    v7 = +[MFMailMessageLibrary conversationCalculationLog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v10 = 134218496;
      v11 = v8;
      v12 = 2048;
      v13 = a2;
      v14 = 2048;
      v15 = a3;
      _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "Threading %lld: updating message's conversationID from %lld to %lld", &v10, 0x20u);
    }

    [*(a1 + 32) setConversationID:a3];
    result = [*(a1 + 32) setConversationFlags:*(a1 + 48)];
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_selectClauseForOptions:(unsigned int)a3 protectedDataAvailable:(BOOL)a4
{
  if ((a3 & 0x4000) != 0)
  {
    return @"SELECT messages.conversation_id ";
  }

  if ((a3 & 0x2000) != 0)
  {
    return @"SELECT COUNT(DISTINCT(messages.message_id)) ";
  }

  if ((a3 & 0x10000) != 0)
  {
    return &stru_1F273A5E0;
  }

  [(MFMailMessageLibrary *)self _selectExpressionForMessageWithAvailableTables:tablesForOptionsAndCriterion(a3, 0, a4) | 0x20];
  return objc_claimAutoreleasedReturnValue();
}

- (void)_iterateStatement:(id)a3 connection:(id)a4 withProgressMonitor:(id)a5 andRowHandler:(void *)a6 context:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [v12 sqlDB];
  v36 = v14;
  v15 = v13;
  v37 = v15;
  sqlite3_progress_handler(v14, 200, progressHandler, &v36);
  v16 = +[MFActivityMonitor currentMonitor];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __95__MFMailMessageLibrary__iterateStatement_connection_withProgressMonitor_andRowHandler_context___block_invoke;
  v24[3] = &unk_1E7AA38B0;
  v18 = v16;
  v25 = v18;
  v19 = v15;
  v26 = v19;
  v29 = &v32;
  v30 = a6;
  v31 = a7;
  v20 = v12;
  v27 = v20;
  v21 = v17;
  v28 = v21;
  v23 = 0;
  LOBYTE(v13) = [v11 executeUsingBlock:v24 error:&v23];
  v22 = v23;
  sqlite3_progress_handler(v14, 0, 0, 0);
  if ((v13 & 1) == 0 && (v33[3] & 1) == 0)
  {
    [v20 handleError:v22 message:@"loading messages"];
  }

  _Block_object_dispose(&v32, 8);
}

void __95__MFMailMessageLibrary__iterateStatement_connection_withProgressMonitor_andRowHandler_context___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (([*(a1 + 32) shouldCancel] & 1) != 0 || objc_msgSend(*(a1 + 40), "shouldCancel"))
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    *a4 = 1;
  }

  else
  {
    v6 = (*(a1 + 72))(v7, *(a1 + 80), *(a1 + 48), *(a1 + 56));
    *a4 = v6 ^ 1;
    *(*(*(a1 + 64) + 8) + 24) = v6 ^ 1;
  }
}

- (void)iterateStatement:(sqlite3_stmt *)a3 connection:(id)a4 withProgressMonitor:(id)a5 andRowHandler:(void *)a6 context:(void *)a7
{
  v11 = a4;
  v12 = a5;
  v13 = [v11 sqlDB];
  v18 = v13;
  v14 = v12;
  v19 = v14;
  sqlite3_progress_handler(v13, 200, progressHandler, &v18);
  v15 = +[MFActivityMonitor currentMonitor];
  do
  {
    if (sqlite3_step(a3) != 100)
    {
      break;
    }

    v16 = objc_autoreleasePoolPush();
    v17 = [v15 shouldCancel];
    if ((v17 & 1) == 0)
    {
      (a6)(a3, a7);
    }

    objc_autoreleasePoolPop(v16);
  }

  while (!v17);
  sqlite3_progress_handler(v13, 0, 0, 0);
  sqlite3_reset(a3);
  if (([v14 shouldCancel] & 1) == 0)
  {
    [v11 checkForConnectionErrorWithMessage:@"loading messages"];
  }
}

- (void)_sendMessagesForStatement:(id)a3 connection:(id)a4 to:(id)a5 options:(unsigned int)a6 timestamp:(unint64_t)a7
{
  v45 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [v13 sqlDB];
  Current = CFAbsoluteTimeGetCurrent();
  v36 = a7;
  v32 = self;
  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = v14;
  v34 = v17;
  v35 = 0x3F000000000003E8;
  v37 = Current;
  v38 = 0;
  v39 = a6;
  v40 = v15;
  v41 = [(MFMailMessageLibrary *)v32 isProtectedDataAvailable:v13];
  v42 = 0;

  v18 = objc_autoreleasePoolPush();
  [(MFMailMessageLibrary *)v32 _iterateStatement:v12 connection:v13 withProgressMonitor:v17 andRowHandler:handleMessageRow context:&v32];
  if ([v33 count])
  {
    v19 = v33;
    v20 = MFLogGeneral();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
    if (v38)
    {
      v22 = 0;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      v23 = MFLogGeneral();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = CFAbsoluteTimeGetCurrent();
        v25 = v37;
        v26 = [v33 count];
        *buf = 134218240;
        *v44 = v24 - v25;
        *&v44[8] = 2048;
        *&v44[10] = v26;
        _os_log_impl(&dword_1B0389000, v23, OS_LOG_TYPE_INFO, "#SQLite #Performance %.3f seconds to load first batch of %lu messages", buf, 0x16u);
      }
    }

    [v17 newMessagesAvailable:v19];
    v27 = [v19 count];
    v38 += v27;
  }

  objc_autoreleasePoolPop(v18);
  v28 = MFLogGeneral();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = v38;
    v30 = CFAbsoluteTimeGetCurrent();
    *buf = 67109376;
    *v44 = v29;
    *&v44[4] = 2048;
    *&v44[6] = v30 - Current;
    _os_log_impl(&dword_1B0389000, v28, OS_LOG_TYPE_INFO, "#SQLite #Performance loaded %d messages in %.3f seconds", buf, 0x12u);
  }

  __destructor_8_s0_s8_s16_s72(&v32);
  v31 = *MEMORY[0x1E69E9840];
}

- (id)messagesForMailbox:(id)a3 limit:(unint64_t)a4
{
  v4 = [(MFMailMessageLibrary *)self _messagesForMailbox:a3 olderThanNumberOfDays:0 limit:a4];

  return v4;
}

- (id)rangesOfIndexedUIDsInRange:(_NSRange)a3 requiresBody:(BOOL)a4 forMailbox:(id)a5 limit:(int64_t)a6
{
  v7 = a4;
  length = a3.length;
  location = a3.location;
  v11 = a5;
  v12 = &stru_1F273A5E0;
  v13 = @" OR NOT searchable_messages.message_body_indexed";
  if (v7)
  {
    v12 = @"LEFT OUTER JOIN searchable_messages ON messages.searchable_message = searchable_messages.ROWID";
  }

  else
  {
    v13 = &stru_1F273A5E0;
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@" WITH index_status AS(  SELECT server_messages.remote_id, (NOT(      messages.searchable_message IS NULL%@    )) as done_indexing   FROM messages        INNER JOIN server_messages ON messages.ROWID = server_messages.message        %@   WHERE messages.mailbox == :mailbox     AND server_messages.remote_id >= :min_uid     AND server_messages.remote_id <= :max_uid), marked AS(  SELECT *, (done_indexing AND           (done_indexing != LAG(done_indexing) OVER (ORDER BY remote_id DESC) OR            LAG(done_indexing) OVER (ORDER BY remote_id DESC) IS NULL)) as is_start, (done_indexing AND           (done_indexing != LEAD(done_indexing) OVER (ORDER BY remote_id DESC) OR            LEAD(done_indexing) OVER (ORDER BY remote_id DESC) IS NULL)) as is_end   FROM index_status), ranges AS(  SELECT *, SUM(is_start) OVER (ORDER BY remote_id DESC) as group_id   FROM marked) SELECT MIN(remote_id), MAX(remote_id), count(), done_indexing   FROM ranges   GROUP BY group_id   ORDER BY MIN(remote_id) DESC   LIMIT :limit", v13, v12];;
  v15 = [(MFMailMessageLibrary *)self mailboxIDForURLString:v11];
  if (v15 == *MEMORY[0x1E699A728])
  {
    v16 = 0;
  }

  else
  {
    v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:a6];
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v18 = [(MFMailMessageLibrary *)self database];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary rangesOfIndexedUIDsInRange:requiresBody:forMailbox:limit:]"];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __81__MFMailMessageLibrary_rangesOfIndexedUIDsInRange_requiresBody_forMailbox_limit___block_invoke;
    v22[3] = &unk_1E7AA38D8;
    v22[4] = v14;
    v25 = v15;
    v26 = a6;
    v27 = location;
    v28 = length;
    v20 = v17;
    v23 = v20;
    v24 = &v29;
    [v18 __performReadWithCaller:v19 usingBlock:v22];

    v16 = [[MFMailMessageLibraryIndexedUIDRangesAndMessageCount alloc] initWithRanges:v20 messageCount:v30[3]];
    _Block_object_dispose(&v29, 8);
  }

  return v16;
}

uint64_t __81__MFMailMessageLibrary_rangesOfIndexedUIDsInRange_requiresBody_forMailbox_limit___block_invoke(uint64_t a1, void *a2)
{
  v29[4] = *MEMORY[0x1E69E9840];
  v17 = a2;
  v20 = [v17 preparedStatementForQueryString:*(a1 + 32)];
  v18 = [v17 preparedStatementForQueryString:@"SELECT COUNT(*)  FROM server_messages WHERE server_messages.mailbox == :mailbox   AND remote_id IS NOT NULL   AND remote_id >= :min_uid   AND remote_id <= :max_uid"];;
  v28[0] = @":mailbox";
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 56)];
  v29[0] = v3;
  v28[1] = @":limit";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 64)];
  v29[1] = v4;
  v28[2] = @":min_uid";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 72)];
  v29[2] = v5;
  v28[3] = @":max_uid";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 80) + *(a1 + 72)];
  v29[3] = v6;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:4];

  v26[0] = @":mailbox";
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 56)];
  v27[0] = v7;
  v26[1] = @":min_uid";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 72)];
  v27[1] = v8;
  v26[2] = @":max_uid";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 80) + *(a1 + 72)];
  v27[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __81__MFMailMessageLibrary_rangesOfIndexedUIDsInRange_requiresBody_forMailbox_limit___block_invoke_2;
  v24[3] = &unk_1E7AA3610;
  v25 = *(a1 + 40);
  v23 = 0;
  LODWORD(v8) = [v20 executeWithNamedBindings:v19 usingBlock:v24 error:&v23];
  v11 = v23;
  v12 = v11;
  if (v8)
  {
    v21 = v11;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __81__MFMailMessageLibrary_rangesOfIndexedUIDsInRange_requiresBody_forMailbox_limit___block_invoke_3;
    v22[3] = &unk_1E7AA3810;
    v22[4] = *(a1 + 48);
    v13 = [v18 executeWithNamedBindings:v10 usingBlock:v22 error:&v21];
    v14 = v21;

    v12 = v14;
  }

  else
  {
    v13 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

void __81__MFMailMessageLibrary_rangesOfIndexedUIDsInRange_requiresBody_forMailbox_limit___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 int64Value];

  v6 = [v3 objectAtIndexedSubscript:1];
  v7 = [v6 int64Value];

  v8 = [v3 objectAtIndexedSubscript:2];
  v9 = [v8 int64Value];

  v10 = [v3 objectAtIndexedSubscript:3];
  v11 = [v10 BOOLValue];

  v12 = 0xFFFFFFFFLL;
  if (v5 >= 0xFFFFFFFFLL)
  {
    v13 = 0xFFFFFFFFLL;
  }

  else
  {
    v13 = v5;
  }

  v14 = v13 & ~(v13 >> 63);
  if (v7 >= 0xFFFFFFFFLL)
  {
    v15 = 0xFFFFFFFFLL;
  }

  else
  {
    v15 = v7;
  }

  v16 = v15 & ~(v15 >> 63);
  v17 = *(a1 + 32);
  if (v9 < 0xFFFFFFFFLL)
  {
    v12 = v9;
  }

  v19[0] = v14;
  v19[1] = v16;
  v19[2] = v12 & ~(v12 >> 63);
  v20 = v11;
  v21 = -21846;
  v22 = -86;
  v18 = [MEMORY[0x1E696B098] valueWithBytes:v19 objCType:"{?=IIIB}"];
  [v17 addObject:v18];
}

void __81__MFMailMessageLibrary_rangesOfIndexedUIDsInRange_requiresBody_forMailbox_limit___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectAtIndexedSubscript:0];
  *(*(*(a1 + 32) + 8) + 24) = [v3 int64Value];
}

- (id)newestUIDsForMailbox:(id)a3 limit:(int64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [MEMORY[0x1E696AC90] indexSet];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__MFMailMessageLibrary_newestUIDsForMailbox_limit___block_invoke;
  v10[3] = &unk_1E7AA3900;
  v10[4] = v7;
  [(MFMailMessageLibrary *)self _enumerateMessageRemoteIDAndGlobalForMailbox:v6 excluding:v8 inLatest:a4 block:v10];

  return v7;
}

uint64_t __51__MFMailMessageLibrary_newestUIDsForMailbox_limit___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2[2];
  v6[0] = a2[1];
  v6[1] = *a2;
  v6[2] = v2;
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696B098] valueWithBytes:v6 objCType:"{?=qIIq}"];
  [v3 addObject:v4];

  return 1;
}

- (id)newestUIDsMissingBodyDataForMailbox:(id)a3 excluding:(id)a4 inLatest:(int64_t)a5 limit:(int64_t)a6 maximumMessagesToScan:(int64_t)a7
{
  v12 = a3;
  v23 = a4;
  v25 = [MEMORY[0x1E695DF70] array];
  v13 = [MEMORY[0x1E696AD50] indexSet];
  v24 = [MEMORY[0x1E696AD50] indexSet];
  v14 = [MailAccount accountWithURLString:v12];
  v22 = [(MFMailMessageLibrary *)self messageBasePathForAccount:v14];
  v15 = [v14 supportsPurge];
  v16 = [MEMORY[0x1E699B5B0] rootMessageDataDirectoryForBasePath:v22 purgeable:v15];
  v17 = [v16 URLByResolvingSymlinksInPath];

  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v34[3] = a7;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __107__MFMailMessageLibrary_newestUIDsMissingBodyDataForMailbox_excluding_inLatest_limit_maximumMessagesToScan___block_invoke;
  v26[3] = &unk_1E7AA3928;
  v18 = v17;
  v27 = v18;
  v28 = v13;
  v29 = v24;
  v30 = v25;
  v31 = &v35;
  v32 = v34;
  v33 = a6;
  [(MFMailMessageLibrary *)self _enumerateMessageRemoteIDAndGlobalUsingBatchesForMailbox:v12 excluding:v23 inLatest:a5 kind:1 block:v26];
  v19 = [MFMessagesMissingBodyData alloc];
  v20 = [(MFMessagesMissingBodyData *)v19 initWithMessagesMissingBodyData:v25 messagesNotMissingBodyData:v13 fragmentedMessages:v24 messagesScannedInFilesystemCount:v36[3]];

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(&v35, 8);

  return v20;
}

BOOL __107__MFMailMessageLibrary_newestUIDsMissingBodyDataForMailbox_excluding_inLatest_limit_maximumMessagesToScan___block_invoke(uint64_t a1, unsigned int *a2)
{
  v4 = [MEMORY[0x1E699B5B0] messageDataDirectoryURLForGlobalMessageID:*(a2 + 1) rootMessageDataDirectory:*(a1 + 32)];
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"full.emlx" isDirectory:0 relativeToURL:v4];
  v6 = access([v5 fileSystemRepresentation], 0);

  if (v6)
  {
    v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"partial.emlx" isDirectory:0 relativeToURL:v4];
    v8 = access([v7 fileSystemRepresentation], 0);

    if (v8)
    {
      v9 = *(a2 + 2);
      v14[0] = *(a2 + 1);
      v14[1] = *a2;
      v14[2] = v9;
      v10 = *(a1 + 56);
      v11 = [MEMORY[0x1E696B098] valueWithBytes:v14 objCType:"{?=qIIq}"];
      [v10 addObject:v11];
    }

    else
    {
      [*(a1 + 48) addIndex:*a2];
    }
  }

  else
  {
    [*(a1 + 40) addIndex:*a2];
  }

  ++*(*(*(a1 + 64) + 8) + 24);
  v12 = --*(*(*(a1 + 72) + 8) + 24) >= 1 && [*(a1 + 56) count] < *(a1 + 80);

  return v12;
}

- (id)newestUIDsMissingPartsForMailbox:(id)a3 excluding:(id)a4 inLatest:(int64_t)a5 limit:(int64_t)a6 maximumMessagesToScan:(int64_t)a7
{
  v12 = a3;
  v23 = a4;
  v24 = v12;
  v25 = [MEMORY[0x1E695DF70] array];
  v13 = [MEMORY[0x1E696AD50] indexSet];
  v14 = [MailAccount accountWithURLString:v12];
  v22 = [(MFMailMessageLibrary *)self messageBasePathForAccount:v14];
  v15 = [v14 supportsPurge];
  v16 = [MEMORY[0x1E699B5B0] rootMessageDataDirectoryForBasePath:v22 purgeable:v15];
  v17 = [v16 URLByResolvingSymlinksInPath];

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v33[3] = a7;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __104__MFMailMessageLibrary_newestUIDsMissingPartsForMailbox_excluding_inLatest_limit_maximumMessagesToScan___block_invoke;
  v26[3] = &unk_1E7AA3978;
  v18 = v17;
  v27 = v18;
  v28 = v13;
  v29 = v25;
  v30 = &v34;
  v31 = v33;
  v32 = a6;
  [(MFMailMessageLibrary *)self _enumerateMessageRemoteIDAndGlobalUsingBatchesForMailbox:v24 excluding:v23 inLatest:a5 kind:2 block:v26];
  v19 = [MFMessagesMissingParts alloc];
  v20 = [(MFMessagesMissingParts *)&v19->super.isa initWithFragmentedMessages:v25 nonFragmentedMessages:v13 messagesScannedInFilesystemCount:v35[3]];

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(&v34, 8);

  return v20;
}

BOOL __104__MFMailMessageLibrary_newestUIDsMissingPartsForMailbox_excluding_inLatest_limit_maximumMessagesToScan___block_invoke(uint64_t a1, unsigned int *a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v30 = [MEMORY[0x1E699B5B0] messageDataDirectoryURLForGlobalMessageID:*(a2 + 1) rootMessageDataDirectory:*(a1 + 32)];
  v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"full.emlx" isDirectory:0 relativeToURL:v30];
  v3 = access([v2 fileSystemRepresentation], 0);

  if (v3)
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__6;
    v47 = __Block_byref_object_dispose__6;
    v48 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__6;
    v41 = __Block_byref_object_dispose__6;
    v42 = 0;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v32 = __104__MFMailMessageLibrary_newestUIDsMissingPartsForMailbox_excluding_inLatest_limit_maximumMessagesToScan___block_invoke_2;
    v33 = &unk_1E7AA3950;
    v35 = &v37;
    v34 = v30;
    v36 = &v43;
    v4 = v34;
    v5 = v31;
    v6 = v4;
    v7 = open([v4 fileSystemRepresentation], 0, 0);
    if ((v7 & 0x80000000) == 0)
    {
      while (1)
      {
        v49[0] = 0x8000000100000005;
        v49[1] = 0;
        v49[2] = 0;
        *&v8 = 0xAAAAAAAAAAAAAAAALL;
        *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v64 = v8;
        v65 = v8;
        v62 = v8;
        v63 = v8;
        v60 = v8;
        v61 = v8;
        v58 = v8;
        v59 = v8;
        v56 = v8;
        v57 = v8;
        v54 = v8;
        v55 = v8;
        v52 = v8;
        v53 = v8;
        v50 = v8;
        v51 = v8;
        v9 = getattrlistbulk(v7, v49, &v50, 0x100uLL, 0);
        v10 = v9;
        if (v9 == -1)
        {
          break;
        }

        if (!v9)
        {
          goto LABEL_18;
        }

        if (v9 >= 1)
        {
          v11 = &v50;
          do
          {
            v12 = *v11;
            if (*(v11 + 4))
            {
              v13 = *(v11 + 7);
              if (v13 >= 2)
              {
                v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v11 + *(v11 + 6) + 24 length:v13 - 1 encoding:4];
                if (v14)
                {
                  v32(v5, v14);
                }
              }
            }

            v11 = (v11 + v12);
            --v10;
          }

          while (v10);
        }
      }

      v16 = *__error();
      v17 = EDLibraryLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __104__MFMailMessageLibrary_newestUIDsMissingPartsForMailbox_excluding_inLatest_limit_maximumMessagesToScan___block_invoke_cold_1();
      }

LABEL_18:
      close(v7);
    }

    if (v38[5])
    {
      v18 = *a2;
      v20 = *(a2 + 1);
      v19 = *(a2 + 2);
      v21 = [MFFragmentedMessage alloc];
      v22 = v38[5];
      v23 = v44[5];
      *&v50 = v20;
      *(&v50 + 1) = v18;
      *&v51 = v19;
      v24 = [(MFFragmentedMessage *)v21 initWithUIDAndSize:v22 mainFile:v23 existingParts:?];
      if (v24)
      {
        [*(a1 + 48) addObject:v24];
      }
    }

    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&v43, 8);

    v15 = a1;
  }

  else
  {
    v15 = a1;
    [*(a1 + 40) addIndex:*a2];
  }

  ++*(*(*(v15 + 56) + 8) + 24);
  v25 = --*(*(*(v15 + 64) + 8) + 24) >= 1 && [*(v15 + 48) count] < *(v15 + 72);

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

void __104__MFMailMessageLibrary_newestUIDsMissingPartsForMailbox_excluding_inLatest_limit_maximumMessagesToScan___block_invoke_2(void *a1, void *a2)
{
  v10 = a2;
  if ([v10 isEqualToString:@"partial.emlx"])
  {
    v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10 isDirectory:0 relativeToURL:a1[4]];
    v4 = *(a1[5] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  else
  {
    v5 = mimePartFromFilename(v10);
    if (v5)
    {
      v6 = *(*(a1[6] + 8) + 40);
      if (v6)
      {
        [v6 addObject:v5];
      }

      else
      {
        v7 = [MEMORY[0x1E695DF70] arrayWithObject:v5];
        v8 = *(a1[6] + 8);
        v9 = *(v8 + 40);
        *(v8 + 40) = v7;
      }
    }
  }
}

- (void)_enumerateMessageRemoteIDAndGlobalUsingBatchesForMailbox:(id)a3 excluding:(id)a4 inLatest:(int64_t)a5 kind:(unint64_t)a6 block:(id)a7
{
  v51 = *MEMORY[0x1E69E9840];
  v41 = a3;
  v42 = a4;
  v10 = a7;
  v37 = [MEMORY[0x1E695DF00] date];
  if (a5 > 1023)
  {
    v36 = [MEMORY[0x1E695DF88] dataWithLength:24576];
    v44 = [v36 mutableBytes];
    v38 = a5;
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 0;
    v43 = [MEMORY[0x1E696AD50] indexSet];
    v11 = 0;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v13 = objc_autoreleasePoolPush();
      v47[3] = 0;
      v14 = [v42 mutableCopy];
      [v14 addIndexes:v43];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __111__MFMailMessageLibrary__enumerateMessageRemoteIDAndGlobalUsingBatchesForMailbox_excluding_inLatest_kind_block___block_invoke;
      v45[3] = &unk_1E7AA39A0;
      v45[4] = &v46;
      v45[5] = v44;
      [(MFMailMessageLibrary *)self _enumerateMessageRemoteIDAndGlobalForMailbox:v41 excluding:v14 inLatest:v38 dateReceivedMax:v12 limit:1024 kind:a6 block:v45];
      if (v47[3])
      {
        v15 = 0;
        v16 = v44;
        while (1)
        {
          v17 = v47;
          v18 = v47[3];
          if (v15 >= v18)
          {
            break;
          }

          v19 = objc_autoreleasePoolPush();
          v20 = v10[2];
          v21 = *v16;
          *&buf[16] = *(v16 + 16);
          *buf = v21;
          v22 = v20(v10, buf);
          objc_autoreleasePoolPop(v19);
          ++v15;
          v16 += 24;
          ++v11;
          if ((v22 & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        v24 = *(v44 - 8 + 24 * v18);
        if (v24 != v12)
        {
          [v43 removeAllIndexes];
          v17 = v47;
          v18 = v47[3];
        }

        if (v18)
        {
          v25 = 0;
          v26 = (v44 + 16);
          v27 = (v44 + 16);
          do
          {
            v28 = *v27;
            v27 += 3;
            if (v28 == v24)
            {
              [v43 addIndex:*(v26 - 4)];
              v17 = v47;
            }

            ++v25;
            v26 = v27;
          }

          while (v25 < v17[3]);
        }

        v23 = 1;
        v12 = v24;
      }

      else
      {
LABEL_8:
        v23 = 0;
      }

      objc_autoreleasePoolPop(v13);
    }

    while ((v23 & 1) != 0);
    v29 = [MEMORY[0x1E695DF00] date];
    [v29 timeIntervalSinceDate:v37];
    v31 = v30;

    if (v31 > 20.0)
    {
      v32 = EDLibraryLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [MFMailMessageLibrary _enumerateMessageRemoteIDAndGlobalUsingBatchesForMailbox:excluding:inLatest:kind:block:];
      }

      goto LABEL_27;
    }

    if (v31 <= 2.0)
    {
      v32 = EDLibraryLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        *&buf[4] = v31;
        *&buf[12] = 2048;
        *&buf[14] = v11;
        v33 = v32;
        v34 = OS_LOG_TYPE_INFO;
        goto LABEL_26;
      }
    }

    else
    {
      v32 = EDLibraryLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v31;
        *&buf[12] = 2048;
        *&buf[14] = v11;
        v33 = v32;
        v34 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
        _os_log_impl(&dword_1B0389000, v33, v34, "_enumerateMessageRemoteIDAndGlobalUsingBatchesForMailbox took %.3g s (%zi iterations)", buf, 0x16u);
      }
    }

LABEL_27:

    _Block_object_dispose(&v46, 8);
    goto LABEL_28;
  }

  [(MFMailMessageLibrary *)self _enumerateMessageRemoteIDAndGlobalForMailbox:v41 excluding:v42 inLatest:a5 dateReceivedMax:0x7FFFFFFFFFFFFFFFLL limit:-1 kind:a6 block:v10];
LABEL_28:

  v35 = *MEMORY[0x1E69E9840];
}

BOOL __111__MFMailMessageLibrary__enumerateMessageRemoteIDAndGlobalUsingBatchesForMailbox_excluding_inLatest_kind_block___block_invoke(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 40) + 24 * *(*(*(a1 + 32) + 8) + 24);
  v3 = *a2;
  *(v2 + 16) = *(a2 + 2);
  *v2 = v3;
  return ++*(*(*(a1 + 32) + 8) + 24) < 0x400uLL;
}

- (void)_enumerateMessageRemoteIDAndGlobalForMailbox:(id)a3 excluding:(id)a4 inLatest:(int64_t)a5 dateReceivedMax:(int64_t)a6 limit:(unint64_t)a7 kind:(unint64_t)a8 block:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a9;
  v18 = [(MFMailMessageLibrary *)self mailboxIDForURLString:v15];
  if (v18 != *MEMORY[0x1E699A728])
  {
    v19 = [(MFMailMessageLibrary *)self database];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary _enumerateMessageRemoteIDAndGlobalForMailbox:excluding:inLatest:dateReceivedMax:limit:kind:block:]"];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __121__MFMailMessageLibrary__enumerateMessageRemoteIDAndGlobalForMailbox_excluding_inLatest_dateReceivedMax_limit_kind_block___block_invoke;
    v21[3] = &unk_1E7AA3A40;
    v22 = v16;
    v24 = a6;
    v25 = a8;
    v26 = a5;
    v27 = v18;
    v28 = a7;
    v23 = v17;
    [v19 __performReadWithCaller:v20 usingBlock:v21];
  }
}

uint64_t __121__MFMailMessageLibrary__enumerateMessageRemoteIDAndGlobalForMailbox_excluding_inLatest_dateReceivedMax_limit_kind_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexSet:*(a1 + 32)];
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = *(a1 + 32);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __121__MFMailMessageLibrary__enumerateMessageRemoteIDAndGlobalForMailbox_excluding_inLatest_dateReceivedMax_limit_kind_block___block_invoke_2;
  v29[3] = &unk_1E7AA39C8;
  v8 = v5;
  v30 = v8;
  v9 = v6;
  v31 = v9;
  [v7 enumerateRangesUsingBlock:v29];
  v10 = [@"0" mutableCopy];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __121__MFMailMessageLibrary__enumerateMessageRemoteIDAndGlobalForMailbox_excluding_inLatest_dateReceivedMax_limit_kind_block___block_invoke_3;
  v27[3] = &unk_1E7AA39F0;
  v11 = v10;
  v28 = v11;
  [v8 enumerateIndexesUsingBlock:v27];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"server_messages.remote_id NOT IN (%@)", v11];
  [v9 addObject:v12];

  if (*(a1 + 48) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@" messages.date_received <= %llu", *(a1 + 48)];
    [v9 addObject:v13];
  }

  [v9 addObject:@"messages.deleted = '0'"];
  v14 = *(a1 + 56);
  if (v14 == 2)
  {
    [v9 addObject:@"(  messages.searchable_message IS NULL OR   messages.global_message_id IN   (SELECT global_message_id    FROM message_attachments LEFT OUTER    JOIN searchable_attachments       ON(message_attachments.rowid = searchable_attachments.attachment_id)    WHERE searchable_attachments.attachment_id IS NULL           AND message_attachments.attachment IS NOT NULL  ))"];
  }

  else if (v14 == 1)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(messages.searchable_message IS NULL OR   searchable_messages.message_body_indexed = 0 OR   searchable_messages.transaction_id = %ld)", 0];
    [v9 addObject:v15];
  }

  v16 = [v9 componentsJoinedByString:@" AND "];
  if (*(a1 + 64) == 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT messages.global_message_id, server_messages.remote_id, messages.size, messages.date_received FROM messages INNER JOIN server_messages ON messages.ROWID = server_messages.message LEFT OUTER JOIN searchable_messages ON messages.searchable_message = searchable_messages.ROWID WHERE messages.mailbox == %llu AND %@ ORDER BY messages.date_received DESC", *(a1 + 72), v16];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT messages.global_message_id, server_messages.remote_id, messages.size, messages.date_received FROM messages INNER JOIN server_messages ON messages.ROWID = server_messages.message LEFT OUTER JOIN searchable_messages ON messages.searchable_message = searchable_messages.ROWID WHERE messages.rowid IN (SELECT rowid FROM messages WHERE mailbox == %llu ORDER BY date_received DESC LIMIT %llu) AND %@ ORDER BY messages.date_received DESC", *(a1 + 72), *(a1 + 64), v16];
  }
  v17 = ;
  v18 = v17;
  if (*(a1 + 80) != -1)
  {
    v19 = [v17 stringByAppendingFormat:@" LIMIT %llu", *(a1 + 80)];

    v18 = v19;
  }

  v20 = [v3 preparedStatementForQueryString:v18];

  objc_autoreleasePoolPop(v4);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __121__MFMailMessageLibrary__enumerateMessageRemoteIDAndGlobalForMailbox_excluding_inLatest_dateReceivedMax_limit_kind_block___block_invoke_4;
  v25[3] = &unk_1E7AA3A18;
  v26 = *(a1 + 40);
  v24 = 0;
  [v20 executeUsingBlock:v25 error:&v24];
  v21 = v24;
  if (v21)
  {
    v22 = EDLibraryLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __121__MFMailMessageLibrary__enumerateMessageRemoteIDAndGlobalForMailbox_excluding_inLatest_dateReceivedMax_limit_kind_block___block_invoke_cold_1();
    }
  }

  return 1;
}

void __121__MFMailMessageLibrary__enumerateMessageRemoteIDAndGlobalForMailbox_excluding_inLatest_dateReceivedMax_limit_kind_block___block_invoke_2(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 3)
  {
    [*(a1 + 32) removeIndexesInRange:{a2, a3}];
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(server_messages.remote_id < %llu OR %llu <= server_messages.remote_id)", a2, a2 + a3];
    [v6 addObject:?];
  }
}

void __121__MFMailMessageLibrary__enumerateMessageRemoteIDAndGlobalForMailbox_excluding_inLatest_dateReceivedMax_limit_kind_block___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectAtIndexedSubscript:0];
  v8 = [v7 int64Value];

  v9 = [v6 objectAtIndexedSubscript:1];
  v10 = [v9 int64Value];

  v11 = [v6 objectAtIndexedSubscript:2];
  v12 = [v11 int64Value];

  v13 = [v6 objectAtIndexedSubscript:3];
  v14 = [v13 int64Value];

  if ((v10 - 1) <= 0xFFFFFFFE)
  {
    v15 = 0xFFFFFFFFLL;
    if (v12 < 0xFFFFFFFFLL)
    {
      v15 = v12;
    }

    v16 = *(*(a1 + 32) + 16);
    v17 = v10;
    v18 = v15 & ~(v15 >> 63);
    v19 = v8;
    v20 = v14;
    if ((v16() & 1) == 0)
    {
      *a4 = 1;
    }
  }
}

- (id)serverSearchResultMessagesForMailbox:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MFMessageCriterion criterionForMailboxURL:v4];
  v6 = [[MFMessageCriterion alloc] initWithType:27 qualifier:3 expression:@"MessageIsServerSearchResult"];
  v13[0] = v5;
  v13[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v8 = [MFMessageCriterion andCompoundCriterionWithCriteria:v7];

  v9 = objc_alloc_init(_MFMessageCollector);
  [(MFMailMessageLibrary *)self sendMessagesMatchingCriterion:v8 to:v9 options:0 baseTable:16];
  v10 = [(_MFMessageCollector *)v9 messages];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_firstDateForQuery:(id)a3 inMailbox:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v8 = [(MFMailMessageLibrary *)self database];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary _firstDateForQuery:inMailbox:]"];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53__MFMailMessageLibrary__firstDateForQuery_inMailbox___block_invoke;
  v16[3] = &unk_1E7AA3A68;
  v10 = v6;
  v17 = v10;
  v19 = &v20;
  v11 = v7;
  v18 = v11;
  [v8 __performReadWithCaller:v9 usingBlock:v16];

  v12 = *(v21 + 6);
  if (v12 == -1)
  {
    v14 = [MEMORY[0x1E695DF00] distantFuture];
  }

  else
  {
    if (!v12)
    {
      v13 = 0;
      goto LABEL_7;
    }

    v14 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v12];
  }

  v13 = v14;
LABEL_7:

  _Block_object_dispose(&v20, 8);

  return v13;
}

uint64_t __53__MFMailMessageLibrary__firstDateForQuery_inMailbox___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:*(a1 + 32)];
  v5 = [v4 compiled];

  if (v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = -1;
    sqlite3_bind_text(v5, 1, [*(a1 + 40) UTF8String], -1, 0);
    if (sqlite3_step(v5) == 100)
    {
      *(*(*(a1 + 48) + 8) + 24) = sqlite3_column_int(v5, 0);
    }

    sqlite3_reset(v5);
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error performing query: %@", *(a1 + 32)];
  [v3 checkForConnectionErrorWithMessage:v6];

  return 1;
}

- (id)dateOfOldestNonSearchResultMessageInMailbox:(id)a3
{
  v3 = [(MFMailMessageLibrary *)self _firstDateForQuery:@"SELECT date_received FROM messages WHERE mailbox = (SELECT ROWID FROM mailboxes WHERE url = ?) AND flags & 128 = 0 ORDER BY date_received ASC LIMIT 1" inMailbox:a3];;

  return v3;
}

- (id)dateOfOldestNonIndexedNonSearchResultMessageInMailbox:(id)a3
{
  v3 = [(MFMailMessageLibrary *)self _firstDateForQuery:@"SELECT date_received FROM messages JOIN searchable_messages ON messages.ROWID = searchable_messages.message_id WHERE mailbox = (SELECT ROWID FROM mailboxes WHERE url = ?) AND flags & 128 = 0 AND searchable_messages.transaction_id != 0 ORDER BY date_received ASC LIMIT 1" inMailbox:a3];

  return v3;
}

- (unint64_t)countMessagesMatchingCriterion:(id)a3
{
  v3 = [(MFMailMessageLibrary *)self groupedMessagesCountForCriterion:a3 groupBy:0];
  if ([v3 count] == 1)
  {
    v4 = [v3 objectForKeyedSubscript:&stru_1F273A5E0];
    v5 = [v4 unsignedIntegerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)groupedMessagesCountForCriterion:(id)a3 groupBy:(unint64_t)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__6;
  v21 = __Block_byref_object_dispose__6;
  v22 = 0;
  v7 = [(MFMailMessageLibrary *)self database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary groupedMessagesCountForCriterion:groupBy:]"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__MFMailMessageLibrary_groupedMessagesCountForCriterion_groupBy___block_invoke;
  v12[3] = &unk_1E7AA3AB8;
  v9 = v6;
  v13 = v9;
  v14 = self;
  v15 = &v17;
  v16 = a4;
  [v7 __performReadWithCaller:v8 usingBlock:v12];

  v10 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v10;
}

uint64_t __65__MFMailMessageLibrary_groupedMessagesCountForCriterion_groupBy___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = addOptionsForCriterion(0x10000u, *(a1 + 32));
  v5 = *(a1 + 56);
  v6 = @"SELECT mailboxes.url, COUNT(DISTINCT(messages.message_id)) %@ GROUP BY 1;";
  if (v5 == 1)
  {
    v7 = 16;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (v5)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"SELECT COUNT() %@;";
  }

  if (v5)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = [*(a1 + 40) queryForCriterion:*(a1 + 32) connection:v3 options:v4 baseTable:v9 isSubquery:1];
  if (v10)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:v8, v10];
    v12 = [v3 preparedStatementForQueryString:v11];
    [v12 setAllowedExecutionTime:0.05];
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v25 = 0;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __65__MFMailMessageLibrary_groupedMessagesCountForCriterion_groupBy___block_invoke_2;
    v26[3] = &unk_1E7AA3A90;
    v16 = *(a1 + 56);
    v26[4] = *(a1 + 48);
    v26[5] = v16;
    [v12 executeUsingBlock:v26 error:&v25];
    v17 = v25;
    if (v17)
    {
      v18 = EDLibraryLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __121__MFMailMessageLibrary__enumerateMessageRemoteIDAndGlobalForMailbox_excluding_inLatest_dateReceivedMax_limit_kind_block___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v19 = [*(a1 + 40) isProtectedDataAvailable:v3];
    v11 = EDLibraryLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v22 = [*(a1 + 32) criterionType];
      v23 = [v3 sqlDB];
      v24 = @"not attached";
      *buf = 134218498;
      v28 = v22;
      if (v19)
      {
        v24 = @"attached";
      }

      v29 = 2048;
      v30 = v23;
      v31 = 2112;
      v32 = v24;
      _os_log_error_impl(&dword_1B0389000, v11, OS_LOG_TYPE_ERROR, "criterion %ld couldn't be turned into a query, <db:%p, protected %@>", buf, 0x20u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return 1;
}

void __65__MFMailMessageLibrary_groupedMessagesCountForCriterion_groupBy___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (*(a1 + 40))
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 stringValue];

    v6 = [v8 objectAtIndexedSubscript:1];
    v7 = [v6 numberValue];
    [*(*(*(a1 + 32) + 8) + 40) setObject:v7 forKeyedSubscript:v5];
  }

  else
  {
    v5 = [v3 objectAtIndexedSubscript:0];
    v6 = [v5 numberValue];
    [*(*(*(a1 + 32) + 8) + 40) setObject:v6 forKeyedSubscript:&stru_1F273A5E0];
  }
}

- (id)messagesWithSummariesForMailbox:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = objc_alloc_init(_MFMessageCollector);
  v9 = [(MFMailMessageLibrary *)self database];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary messagesWithSummariesForMailbox:range:]"];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__MFMailMessageLibrary_messagesWithSummariesForMailbox_range___block_invoke;
  v15[3] = &unk_1E7AA3AE0;
  v11 = v7;
  v19 = location;
  v20 = length;
  v16 = v11;
  v17 = self;
  v12 = v8;
  v18 = v12;
  [v9 __performWriteWithCaller:v10 usingBlock:v15];

  v13 = [(_MFMessageCollector *)v12 messages];

  return v13;
}

uint64_t __62__MFMailMessageLibrary_messagesWithSummariesForMailbox_range___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = mach_absolute_time();
  v5 = [v3 preparedStatementForQueryString:{@"INSERT INTO temp_selected_messages SELECT rowid FROM messages WHERE mailbox = ifnull((SELECT rowid FROM mailboxes WHERE url = :url), -1) AND deleted = '0' ORDER BY date_received DESC, ROWID DESC LIMIT :limit OFFSET :offset"}];;
  v6 = [v5 compiled];

  LODWORD(v5) = sqlite3_bind_parameter_index(v6, ":url");
  sqlite3_bind_text(v6, v5, [*(a1 + 32) UTF8String], -1, 0);
  v7 = sqlite3_bind_parameter_index(v6, ":limit");
  sqlite3_bind_int(v6, v7, *(a1 + 64));
  v8 = sqlite3_bind_parameter_index(v6, ":offset");
  sqlite3_bind_int(v6, v8, *(a1 + 56));
  LODWORD(v5) = sqlite3_step(v6);
  sqlite3_reset(v6);
  if (v5 == 101)
  {
    v9 = [v3 preparedStatementForQueryString:{@"SELECT messages.ROWID, remote_id, date_received, date_sent, display_date, flags, size, messages.subject_prefix, subjects.subject, sender.comment AS sender_comment, sender.address AS sender_address, mailbox, original_mailbox, content_type, summaries.summary, encoding FROM temp_selected_messages AS selection LEFT OUTER JOIN messages ON selection.message_id = messages.rowid LEFT OUTER JOIN addresses AS sender ON messages.sender = sender.ROWID LEFT OUTER JOIN subjects ON messages.subject = subjects.ROWID LEFT OUTER JOIN summaries ON messages.summary = summaries.ROWID"}];;
    [*(a1 + 40) _sendMessagesForStatement:v9 connection:v3 to:*(a1 + 48) options:6297663 timestamp:v4];
  }

  v10 = [v3 preparedStatementForQueryString:@"DELETE FROM temp_selected_messages"];;
  v11 = [v10 compiled];

  sqlite3_step(v11);
  sqlite3_reset(v11);
  v12 = [v3 checkForConnectionErrorWithMessage:@"messagesWithSummariesForMailbox"];

  return v12;
}

- (id)orderedBatchOfMessagesEndingAtRowId:(int64_t)a3 limit:(unsigned int)a4 success:(BOOL *)a5
{
  v9 = objc_alloc_init(_MFMessageCollector);
  v10 = [(MFMailMessageLibrary *)self database];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary orderedBatchOfMessagesEndingAtRowId:limit:success:]"];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__MFMailMessageLibrary_orderedBatchOfMessagesEndingAtRowId_limit_success___block_invoke;
  v15[3] = &unk_1E7AA3B08;
  v19 = a4;
  v17 = a3;
  v15[4] = self;
  v12 = v9;
  v16 = v12;
  v18 = a5;
  [v10 __performWriteWithCaller:v11 usingBlock:v15];

  v13 = [(_MFMessageCollector *)v12 messages];

  return v13;
}

uint64_t __74__MFMailMessageLibrary_orderedBatchOfMessagesEndingAtRowId_limit_success___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = mach_absolute_time();
  v5 = [v3 preparedStatementForQueryString:@"INSERT INTO temp_selected_messages SELECT rowid FROM messages WHERE rowid >= 0 AND rowid <= :maxRowId ORDER BY rowid DESC LIMIT :limit"];;
  v6 = [v5 compiled];

  v7 = sqlite3_bind_parameter_index(v6, ":maxRowId");
  sqlite3_bind_int64(v6, v7, *(a1 + 48));
  v8 = sqlite3_bind_parameter_index(v6, ":limit");
  sqlite3_bind_int(v6, v8, *(a1 + 64));
  LODWORD(v5) = sqlite3_step(v6);
  sqlite3_reset(v6);
  if (v5 == 101)
  {
    v9 = [*(a1 + 32) _selectExpressionForMessageWithAvailableTables:544];
    v10 = [v9 stringByAppendingString:@" FROM temp_selected_messages AS selection LEFT OUTER JOIN messages ON selection.message_id = messages.rowid LEFT OUTER JOIN addresses AS sender ON messages.sender = sender.ROWID LEFT OUTER JOIN subjects ON messages.subject = subjects.ROWID"];;
    v11 = [v3 preparedStatementForQueryString:v10];
    [*(a1 + 32) _sendMessagesForStatement:v11 connection:v3 to:*(a1 + 40) options:6297663 timestamp:v4];
  }

  if (*(a1 + 56))
  {
    **(a1 + 56) = sqlite3_errcode([v3 sqlDB]) == 0;
  }

  v12 = [v3 preparedStatementForQueryString:@"DELETE FROM temp_selected_messages"];;
  v13 = [v12 compiled];

  sqlite3_step(v13);
  sqlite3_reset(v13);
  v14 = [v3 checkForConnectionErrorWithMessage:@"orderedBatchOfMessagesEndingAtRowId"];

  return v14;
}

- (int64_t)_int64ForQuery:(id)a3 connection:(id)a4 textArgument:(id)a5
{
  v23[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v10 = [v8 preparedStatementForQueryString:v7];
  if (v9)
  {
    v23[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  }

  else
  {
    v11 = 0;
  }

  v17 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __63__MFMailMessageLibraryuint64_tForQuery_connection_textArgument___block_invoke;
  v18[3] = &unk_1E7AA3810;
  v18[4] = &v19;
  [v10 executeWithIndexedBindings:v11 usingBlock:v18 error:&v17];
  v12 = v17;
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error performing query: %@: %@", v7, v12];
  [v8 checkForConnectionErrorWithMessage:v13];

  v14 = v20[3];
  _Block_object_dispose(&v19, 8);

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (int)_integerForQuery:(id)a3 withTextArgument:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v8 = [(MFMailMessageLibrary *)self database];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary _integerForQuery:withTextArgument:]"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__MFMailMessageLibrary__integerForQuery_withTextArgument___block_invoke;
  v13[3] = &unk_1E7AA3B30;
  v16 = &v17;
  v13[4] = self;
  v10 = v6;
  v14 = v10;
  v11 = v7;
  v15 = v11;
  [v8 __performReadWithCaller:v9 usingBlock:v13];

  LODWORD(v6) = *(v18 + 6);
  _Block_object_dispose(&v17, 8);

  return v6;
}

uint64_t __58__MFMailMessageLibrary__integerForQuery_withTextArgument___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _int64ForQuery:*(a1 + 40) connection:v3 textArgument:*(a1 + 48)];

  return 1;
}

- (id)_queryForMailboxesIDsFromMailboxes:(id)a3
{
  v3 = [a3 ef_compactMap:&__block_literal_global_1067];
  v4 = [v3 allObjects];
  v5 = [v4 componentsJoinedByString:@" OR "];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT ROWID FROM mailboxes WHERE %@", v5];

  return v6;
}

id __59__MFMailMessageLibrary__queryForMailboxesIDsFromMailboxes___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sqlite3_mprintf("url = %Q", [v2 UTF8String]);
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
  sqlite3_free(v3);

  return v4;
}

- (unsigned)attachmentCountForMailboxes:(id)a3
{
  v4 = [(MFMailMessageLibrary *)self _queryForMailboxesIDsFromMailboxes:a3];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT COUNT(DISTINCT(message_id)) FROM messages WHERE (((flags&(63<<10))>>10) BETWEEN 1 AND 62) AND mailbox IN (%@)", v4];

  LODWORD(v4) = [(MFMailMessageLibrary *)self _integerForQuery:v5 withTextArgument:0];
  return v4;
}

- (unsigned)allNonDeleteCountForMailbox:(id)a3 includeServerSearchResults:(BOOL)a4 includeThreadSearchResults:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if (!v6 || v5)
  {
    v9 = 128;
    if (v6 || !v5)
    {
      v9 = 0;
    }

    v10 = 1048704;
    if (v5)
    {
      v10 = 0;
    }

    if (!v6 && !v5)
    {
      v9 = v10;
    }
  }

  else
  {
    v9 = 0x100000;
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT count(messages.rowid) FROM messages JOIN mailboxes ON messages.mailbox = mailboxes.rowid WHERE url = ? AND (flags & %llu = 0) AND deleted = '0'", v9];
  v12 = [(MFMailMessageLibrary *)self _integerForQuery:v11 withTextArgument:v8];

  return v12;
}

- (unsigned)nonDeletedCountForMailbox:(id)a3 includeServerSearchResults:(BOOL)a4 includeThreadSearchResults:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v23[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [MFMessageCriterion messageIsDeletedCriterion:0];
  v23[0] = v9;
  v10 = [MFMessageCriterion criterionForMailboxURL:v8];
  v23[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v12 = [MFMessageCriterion andCompoundCriterionWithCriteria:v11];
  v13 = [(MFMailMessageLibrary *)self countMessagesMatchingCriterion:v12];

  v14 = !v6;
  if (!v6 || !v5)
  {
    if ((v14 | v5) == 1)
    {
      v15 = (v14 & v5) == 0;
      v16 = 128;
      if (v15)
      {
        v16 = 0;
      }

      v17 = 1048704;
      if (v5)
      {
        v17 = 0;
      }

      if (!v6 && !v5)
      {
        v16 = v17;
      }
    }

    else
    {
      v16 = 0x100000;
    }

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT COUNT(messages.rowid) FROM messages JOIN mailboxes ON messages.mailbox = mailboxes.rowid WHERE url = ? AND flags & %llu AND deleted = '0'", v16];
    v19 = [(MFMailMessageLibrary *)self _integerForQuery:v18 withTextArgument:v8];
    if (v13 <= v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = v19;
    }

    LODWORD(v13) = v13 - v20;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v13;
}

- (unsigned)totalCountForMailbox:(id)a3
{
  v4 = [MFMessageCriterion criterionForMailboxURL:a3];
  LODWORD(self) = [(MFMailMessageLibrary *)self countMessagesMatchingCriterion:v4];

  return self;
}

- (void)setServerUnreadOnlyOnServerCount:(unint64_t)a3 forMailbox:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E699B608]);
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v8 = [(MFMailMessageLibrary *)self database];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary setServerUnreadOnlyOnServerCount:forMailbox:]"];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __68__MFMailMessageLibrary_setServerUnreadOnlyOnServerCount_forMailbox___block_invoke;
  v19 = &unk_1E7AA3AB8;
  v10 = v7;
  v20 = v10;
  v23 = a3;
  v11 = v6;
  v21 = v11;
  v22 = &v24;
  [v8 __performWriteWithCaller:v9 usingBlock:&v16];

  if (*(v25 + 24) == 1)
  {
    v12 = objc_alloc(MEMORY[0x1E695DFF8]);
    v13 = [v12 initWithString:{v11, v16, v17, v18, v19, v20}];
    v14 = [objc_alloc(MEMORY[0x1E699AD20]) initWithURL:v13];
    v15 = [(MFMailMessageLibrary *)self hookRegistry];
    [v15 persistenceDidUpdateServerCount:a3 forMailboxWithObjectID:v14 generationWindow:v10];
  }

  _Block_object_dispose(&v24, 8);
}

uint64_t __68__MFMailMessageLibrary_setServerUnreadOnlyOnServerCount_forMailbox___block_invoke(uint64_t a1, void *a2)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  v4 = [v3 preparedStatementForQueryString:@"UPDATE mailboxes SET server_unread_count = :count WHERE url = :url AND server_unread_count IS NOT :count"];
  v21[0] = @":count";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
  v21[1] = @":url";
  v22[0] = v5;
  v22[1] = *(a1 + 40);
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];

  v15 = 0;
  v16 = 0;
  v7 = [v4 executeWithNamedBindings:v6 rowsChanged:&v16 error:&v15];
  v8 = v15;
  if (v16)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v9;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v10 = EDLibraryLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 56);
      v12 = *(a1 + 40);
      *buf = 134218242;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_DEFAULT, "Did update unread-only-on-server count to %llu for mailbox %@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)setLastSyncAndMostRecentStatusCount:(int64_t)a3 forMailbox:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E699B608]);
  v8 = [(MFMailMessageLibrary *)self database];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary setLastSyncAndMostRecentStatusCount:forMailbox:]"];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __71__MFMailMessageLibrary_setLastSyncAndMostRecentStatusCount_forMailbox___block_invoke;
  v19 = &unk_1E7AA3B58;
  v10 = v7;
  v20 = v10;
  v21 = self;
  v11 = v6;
  v22 = v11;
  v23 = a3;
  [v8 __performWriteWithCaller:v9 usingBlock:&v16];

  v12 = objc_alloc(MEMORY[0x1E695DFF8]);
  v13 = [v12 initWithString:{v11, v16, v17, v18, v19}];
  v14 = [objc_alloc(MEMORY[0x1E699AD20]) initWithURL:v13];
  v15 = [(MFMailMessageLibrary *)self hookRegistry];
  [v15 persistenceDidUpdateLastSyncAndMostRecentStatusCount:a3 forMailboxWithObjectID:v14 generationWindow:v10];
}

uint64_t __71__MFMailMessageLibrary_setLastSyncAndMostRecentStatusCount_forMailbox___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  RowidForMailbox = createRowidForMailbox(*(a1 + 40), v3, *(a1 + 48), 0, *(a1 + 32));
  v5 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"mailboxes"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 56)];
  [v5 setObject:v6 forKeyedSubscript:@"last_sync_status_count"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 56)];
  [v5 setObject:v7 forKeyedSubscript:@"most_recent_status_count"];

  v8 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:RowidForMailbox];
  v10 = [v8 equalTo:v9];
  [v5 setWhereClause:v10];

  v11 = [v3 executeUpdateStatement:v5 error:0];
  return v11;
}

- (void)increaseProtectionOnFileForMessage:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (_os_feature_enabled_impl())
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MailMessageLibrary.m" lineNumber:4158 description:@"No content protection increase expected when all data is class C."];
  }

  v6 = [(MFMailMessageLibrary *)self dataPathForMessage:v5 type:0];
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v13 = 0;
  v8 = [v7 mf_protectFileAtPath:v6 withClass:2 error:&v13];
  v9 = v13;

  if ((v8 & 1) == 0)
  {
    v10 = MFLogGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = v6;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_DEFAULT, "#Warning Error setting the protection class on %@: %@", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setMostRecentStatusCount:(unint64_t)a3 forMailbox:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E699B608]);
  v8 = [(MFMailMessageLibrary *)self database];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary setMostRecentStatusCount:forMailbox:]"];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __60__MFMailMessageLibrary_setMostRecentStatusCount_forMailbox___block_invoke;
  v19 = &unk_1E7AA3B58;
  v10 = v7;
  v20 = v10;
  v21 = self;
  v11 = v6;
  v22 = v11;
  v23 = a3;
  [v8 __performWriteWithCaller:v9 usingBlock:&v16];

  v12 = objc_alloc(MEMORY[0x1E695DFF8]);
  v13 = [v12 initWithString:{v11, v16, v17, v18, v19}];
  v14 = [objc_alloc(MEMORY[0x1E699AD20]) initWithURL:v13];
  v15 = [(MFMailMessageLibrary *)self hookRegistry];
  [v15 persistenceDidUpdateMostRecentStatusCount:a3 forMailboxWithObjectID:v14 generationWindow:v10];
}

BOOL __60__MFMailMessageLibrary_setMostRecentStatusCount_forMailbox___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  RowidForMailbox = createRowidForMailbox(*(a1 + 40), v3, *(a1 + 48), 0, *(a1 + 32));
  v5 = [v3 preparedStatementForQueryString:@"UPDATE mailboxes SET most_recent_status_count = ? WHERE rowid = ?"];
  v6 = [v5 compiled];

  if (v6)
  {
    sqlite3_bind_int(v6, 1, *(a1 + 56));
    sqlite3_bind_int64(v6, 2, RowidForMailbox);
    v7 = sqlite3_step(v6);
    sqlite3_reset(v6);
    [v3 checkForConnectionErrorWithMessage:@"setting unseen count"];
    v8 = v7 == 101;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)messageWithRemoteID:(id)a3 inRemoteMailbox:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__6;
  v22 = __Block_byref_object_dispose__6;
  v23 = 0;
  v8 = [(MFMailMessageLibrary *)self database];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary messageWithRemoteID:inRemoteMailbox:]"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__MFMailMessageLibrary_messageWithRemoteID_inRemoteMailbox___block_invoke;
  v14[3] = &unk_1E7AA3BA8;
  v14[4] = self;
  v10 = v7;
  v15 = v10;
  v11 = v6;
  v16 = v11;
  v17 = &v18;
  [v8 __performReadWithCaller:v9 usingBlock:v14];

  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

uint64_t __60__MFMailMessageLibrary_messageWithRemoteID_inRemoteMailbox___block_invoke(uint64_t a1, void *a2)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) isProtectedDataAvailable:v3];
  if (!sSharedInstance_block_invoke_sql)
  {
    v5 = [*(a1 + 32) _selectClauseForOptions:0 protectedDataAvailable:v4];
    _MFLockGlobalLock();
    if (!sSharedInstance_block_invoke_sql)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ FROM messages WHERE remote_mailbox = (SELECT ROWID FROM mailboxes WHERE url = ?) AND messages.remote_id = ? LIMIT 1", v5];
      v7 = sSharedInstance_block_invoke_sql;
      sSharedInstance_block_invoke_sql = v6;
    }

    _MFUnlockGlobalLock();
  }

  v8 = [v3 preparedStatementForQueryString:?];
  v9 = __60__MFMailMessageLibrary_messageWithRemoteID_inRemoteMailbox___block_invoke_2(v8, *(a1 + 40));
  v23[0] = v9;
  v10 = __60__MFMailMessageLibrary_messageWithRemoteID_inRemoteMailbox___block_invoke_2(v9, *(a1 + 48));
  v23[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __60__MFMailMessageLibrary_messageWithRemoteID_inRemoteMailbox___block_invoke_3;
  v19[3] = &unk_1E7AA3B80;
  v12 = *(a1 + 32);
  v21 = *(a1 + 56);
  v19[4] = v12;
  v13 = v3;
  v20 = v13;
  v22 = v4;
  v18 = 0;
  v14 = [v8 executeWithIndexedBindings:v11 usingBlock:v19 error:&v18];
  v15 = v18;

  if ((v14 & 1) == 0)
  {
    [v13 handleError:v15 message:@"finding message for UID"];
  }

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

id __60__MFMailMessageLibrary_messageWithRemoteID_inRemoteMailbox___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v5 = v4;

  return v5;
}

void __60__MFMailMessageLibrary_messageWithRemoteID_inRemoteMailbox___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) _messageForRow:v6 options:0 timestamp:mach_absolute_time() connection:*(a1 + 40) isProtectedDataAvailable:*(a1 + 56) recipientsCache:0];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)searchResultsWithRemoteIDs:(id)a3 requiresBody:(BOOL)a4 inRemoteMailbox:(id)a5
{
  v8 = a3;
  v9 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__6;
  v26 = __Block_byref_object_dispose__6;
  v27 = MEMORY[0x1E695E0F0];
  v10 = [(MFMailMessageLibrary *)self database];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary searchResultsWithRemoteIDs:requiresBody:inRemoteMailbox:]"];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __80__MFMailMessageLibrary_searchResultsWithRemoteIDs_requiresBody_inRemoteMailbox___block_invoke;
  v16[3] = &unk_1E7AA3BD0;
  v16[4] = self;
  v20 = 6293567;
  v12 = v8;
  v17 = v12;
  v13 = v9;
  v21 = a4;
  v18 = v13;
  v19 = &v22;
  [v10 __performReadWithCaller:v11 usingBlock:v16];

  v14 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v14;
}

uint64_t __80__MFMailMessageLibrary_searchResultsWithRemoteIDs_requiresBody_inRemoteMailbox___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _canSelectMessagesWithOptions:*(a1 + 64) connection:v3])
  {
    v4 = [*(a1 + 32) isProtectedDataAvailable:v3];
    v5 = v4;
    v6 = [*(a1 + 32) _selectClauseForOptions:*(a1 + 64) protectedDataAvailable:v4];
    v7 = tablesForOptionsAndCriterion(*(a1 + 64), 0, v5);
    v8 = joinsForTables(v7);
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) allObjects];
    v11 = [v9 _remoteIDsStringForRemoteIDs:v10 inMailbox:*(a1 + 48)];

    if (*(a1 + 68))
    {
      v12 = @" OR NOT searchable_messages.message_body_indexed";
    }

    else
    {
      v12 = &stru_1F273A5E0;
    }

    if (*(a1 + 68))
    {
      v13 = @"LEFT OUTER JOIN searchable_messages ON messages.searchable_message = searchable_messages.ROWID";
    }

    else
    {
      v13 = &stru_1F273A5E0;
    }

    v14 = objc_alloc(MEMORY[0x1E696AEC0]);
    v15 = [*(a1 + 48) ef_quotedSQLEscapedString];
    v16 = [v14 initWithFormat:@"%@ FROM messages %@ %s WHERE remote_mailbox = (SELECT ROWID FROM mailboxes WHERE url = %@) AND messages.remote_id IN (%@) AND (messages.searchable_message IS NULL %@)", v6, v13, v8, v15, v11, v12];

    free(v8);
    v17 = objc_alloc_init(_MFMessageCollector);
    v18 = [v3 preparedStatementForQueryString:v16];
    [*(a1 + 32) _sendMessagesForStatement:v18 connection:v3 to:v17 options:*(a1 + 64) timestamp:mach_absolute_time()];
    v19 = [(_MFMessageCollector *)v17 copyMessages];
    v20 = *(*(a1 + 56) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }

  return 1;
}

- (id)copyMessagesWithRemoteIDs:(id)a3 options:(unsigned int)a4 inRemoteMailbox:(id)a5
{
  v8 = a3;
  v9 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__6;
  v25 = __Block_byref_object_dispose__6;
  v26 = 0;
  v10 = [(MFMailMessageLibrary *)self database];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary copyMessagesWithRemoteIDs:options:inRemoteMailbox:]"];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__MFMailMessageLibrary_copyMessagesWithRemoteIDs_options_inRemoteMailbox___block_invoke;
  v16[3] = &unk_1E7AA3BF8;
  v16[4] = self;
  v20 = a4;
  v12 = v8;
  v17 = v12;
  v13 = v9;
  v18 = v13;
  v19 = &v21;
  [v10 __performReadWithCaller:v11 usingBlock:v16];

  v14 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v14;
}

uint64_t __74__MFMailMessageLibrary_copyMessagesWithRemoteIDs_options_inRemoteMailbox___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _canSelectMessagesWithOptions:*(a1 + 64) connection:v3])
  {
    v4 = [*(a1 + 32) isProtectedDataAvailable:v3];
    v5 = v4;
    v6 = [*(a1 + 32) _selectClauseForOptions:*(a1 + 64) protectedDataAvailable:v4];
    v7 = tablesForOptionsAndCriterion(*(a1 + 64), 0, v5);
    v8 = joinsForTables(v7);
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) allObjects];
    v11 = [v9 _remoteIDsStringForRemoteIDs:v10 inMailbox:*(a1 + 48)];

    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    v13 = [*(a1 + 48) ef_quotedSQLEscapedString];
    v14 = [v12 initWithFormat:@"%@ FROM messages %s WHERE remote_mailbox = (SELECT ROWID FROM mailboxes WHERE url = %@) AND messages.remote_id IN (%@)", v6, v8, v13, v11];

    free(v8);
    v15 = objc_alloc_init(_MFMessageCollector);
    v16 = [v3 preparedStatementForQueryString:v14];
    [*(a1 + 32) _sendMessagesForStatement:v16 connection:v3 to:v15 options:*(a1 + 64) timestamp:mach_absolute_time()];
    v17 = [(_MFMessageCollector *)v15 copyMessages];
    v18 = *(*(a1 + 56) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;
  }

  return 1;
}

- (id)flagsForRemoteIDs:(id)a3 inRemoteMailbox:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v9 = [(MFMailMessageLibrary *)self database];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary flagsForRemoteIDs:inRemoteMailbox:]"];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58__MFMailMessageLibrary_flagsForRemoteIDs_inRemoteMailbox___block_invoke;
  v17[3] = &unk_1E7AA3C20;
  v17[4] = self;
  v11 = v6;
  v18 = v11;
  v12 = v7;
  v19 = v12;
  v13 = v8;
  v20 = v13;
  [v9 __performReadWithCaller:v10 usingBlock:v17];

  v14 = v20;
  v15 = v13;

  return v13;
}

uint64_t __58__MFMailMessageLibrary_flagsForRemoteIDs_inRemoteMailbox___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _remoteIDsStringForRemoteIDs:*(a1 + 40) inMailbox:*(a1 + 48)];
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = [*(a1 + 48) ef_quotedSQLEscapedString];
  v7 = [v5 initWithFormat:@"SELECT remote_id, flags FROM messages WHERE remote_mailbox = (SELECT ROWID FROM mailboxes WHERE url = %@) AND messages.remote_id IN (%@)", v6, v4];

  v8 = [v3 preparedStatementForQueryString:v7];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__MFMailMessageLibrary_flagsForRemoteIDs_inRemoteMailbox___block_invoke_2;
  v12[3] = &unk_1E7AA3610;
  v13 = *(a1 + 56);
  v11 = 0;
  [v8 executeUsingBlock:v12 error:&v11];
  v9 = v11;
  [v3 handleError:v9 message:@"Getting flags for remote IDs"];

  return 1;
}

void __58__MFMailMessageLibrary_flagsForRemoteIDs_inRemoteMailbox___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 objectForKeyedSubscript:@"remote_id"];
  v4 = [v3 stringValue];

  v5 = [v9 objectForKeyedSubscript:@"flags"];
  v6 = [v5 numberValue];
  v7 = [v6 longLongValue];

  v8 = MFFlagsObjectForFlags(v7);
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v4];
}

- (id)_remoteIDsStringForRemoteIDs:(id)a3 inMailbox:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];
  v8 = [v7 scheme];
  v9 = [v8 isEqualToString:*MEMORY[0x1E699A698]];

  if (v9)
  {
    v10 = [v5 componentsJoinedByString:{@", "}];
  }

  else
  {
    v11 = [v5 count];
    if (v11)
    {
      if (v11 == 1)
      {
        v12 = [v5 firstObject];
        v10 = [v12 ef_quotedSQLEscapedString];
      }

      else
      {
        v10 = [MEMORY[0x1E696AD60] string];
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v13 = v5;
        v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v14)
        {
          v15 = *v22;
          v16 = 1;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v22 != v15)
              {
                objc_enumerationMutation(v13);
              }

              [*(*(&v21 + 1) + 8 * i) ef_quotedSQLEscapedString];
              if (v16)
                v18 = {;
                [(__CFString *)v10 appendString:v18];
              }

              else
                v18 = {;
                [(__CFString *)v10 appendFormat:@", %@", v18];
              }

              v16 = 0;
            }

            v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
            v16 = 0;
          }

          while (v14);
        }
      }
    }

    else
    {
      v10 = &stru_1F273A5E0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)sequenceIdentifierForMailbox:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__6;
  v17 = __Block_byref_object_dispose__6;
  v18 = 0;
  if (v4)
  {
    v5 = [(MFMailMessageLibrary *)self database];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary sequenceIdentifierForMailbox:]"];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__MFMailMessageLibrary_sequenceIdentifierForMailbox___block_invoke;
    v10[3] = &unk_1E7AA3C48;
    v11 = v4;
    v12 = &v13;
    [v5 __performReadWithCaller:v6 usingBlock:v10];

    v7 = v14[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __53__MFMailMessageLibrary_sequenceIdentifierForMailbox___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:@"SELECT sequence_identifier FROM mailboxes WHERE url = ?"];
  v5 = [v4 compiled];

  if (v5)
  {
    sqlite3_bind_text(v5, 1, [*(a1 + 32) UTF8String], -1, 0);
    if (sqlite3_step(v5) == 100)
    {
      v6 = sqlite3_column_text(v5, 0);
      if (v6)
      {
        v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v6];
        v8 = *(*(a1 + 40) + 8);
        v9 = *(v8 + 40);
        *(v8 + 40) = v7;
      }
    }

    sqlite3_reset(v5);
    [v3 checkForConnectionErrorWithMessage:@"loading mailbox sequence identifier"];
  }

  return 1;
}

- (void)setSequenceIdentifier:(id)a3 forMailbox:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E699B608]);
    v9 = [(MFMailMessageLibrary *)self database];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary setSequenceIdentifier:forMailbox:]"];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__MFMailMessageLibrary_setSequenceIdentifier_forMailbox___block_invoke;
    v12[3] = &unk_1E7AA3C20;
    v11 = v8;
    v13 = v11;
    v14 = self;
    v15 = v7;
    v16 = v6;
    [v9 __performWriteWithCaller:v10 usingBlock:v12];
  }
}

uint64_t __57__MFMailMessageLibrary_setSequenceIdentifier_forMailbox___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  RowidForMailbox = createRowidForMailbox(*(a1 + 40), v3, *(a1 + 48), 0, *(a1 + 32));
  if (RowidForMailbox == *MEMORY[0x1E699A728])
  {
    v5 = EDLibraryLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __57__MFMailMessageLibrary_setSequenceIdentifier_forMailbox___block_invoke_cold_1((a1 + 48));
    }
  }

  else
  {
    v6 = [v3 preparedStatementForQueryString:@"UPDATE mailboxes SET sequence_identifier = ? WHERE ROWID = ?"];
    v7 = [v6 compiled];

    if (v7)
    {
      v8 = *(a1 + 56);
      if (v8)
      {
        sqlite3_bind_text(v7, 1, [v8 UTF8String], -1, 0);
      }

      else
      {
        sqlite3_bind_null(v7, 1);
      }

      sqlite3_bind_int64(v7, 2, RowidForMailbox);
      sqlite3_step(v7);
      sqlite3_reset(v7);
    }
  }

  v9 = [v3 checkForConnectionErrorWithMessage:@"setting mailbox sequence identifier"];

  return v9;
}

- (id)sequenceIdentifierForMessagesWithRemoteIDs:(id)a3 inMailbox:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__6;
  v20 = __Block_byref_object_dispose__6;
  v21 = 0;
  if (v7 && [v6 count])
  {
    v8 = [(MFMailMessageLibrary *)self database];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary sequenceIdentifierForMessagesWithRemoteIDs:inMailbox:]"];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __77__MFMailMessageLibrary_sequenceIdentifierForMessagesWithRemoteIDs_inMailbox___block_invoke;
    v12[3] = &unk_1E7AA3528;
    v13 = v6;
    v14 = v7;
    v15 = &v16;
    [v8 __performReadWithCaller:v9 usingBlock:v12];
  }

  v10 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v10;
}

uint64_t __77__MFMailMessageLibrary_sequenceIdentifierForMessagesWithRemoteIDs_inMailbox___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_msgSend(@"SELECT MIN(messages.sequence_identifier) FROM messages JOIN mailboxes ON messages.mailbox = mailboxes.rowid WHERE url = ? AND remote_id IN (?"), "mutableCopy";
  v5 = [*(a1 + 32) count];
  if (v5 >= 2)
  {
    v6 = v5 - 1;
    do
    {
      [v4 appendString:{@", ?"}];
      --v6;
    }

    while (v6);
  }

  [v4 appendString:@""]);
  v7 = [v3 preparedStatementForQueryString:v4];
  v8 = [v7 compiled];

  if (v8)
  {
    sqlite3_bind_text(v8, 1, [*(a1 + 40) UTF8String], -1, 0);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = *(a1 + 32);
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
      v12 = 2;
      do
      {
        v13 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v9);
          }

          sqlite3_bind_int(v8, v12++, [*(*(&v19 + 1) + 8 * v13++) unsignedIntValue]);
        }

        while (v10 != v13);
        v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    if (sqlite3_step(v8) == 100)
    {
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%llu", sqlite3_column_int64(v8, 0)];
      v15 = *(*(a1 + 48) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }

    sqlite3_reset(v8);
    [v3 checkForConnectionErrorWithMessage:@"loading per-message minimum sequence identifier"];
  }

  v17 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)setSequenceIdentifier:(id)a3 forMessageWithLibraryID:(int64_t)a4
{
  v6 = a3;
  if ([v6 length])
  {
    v7 = [(MFMailMessageLibrary *)self database];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary setSequenceIdentifier:forMessageWithLibraryID:]"];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__MFMailMessageLibrary_setSequenceIdentifier_forMessageWithLibraryID___block_invoke;
    v9[3] = &unk_1E7AA3838;
    v10 = v6;
    v11 = a4;
    [v7 __performWriteWithCaller:v8 usingBlock:v9];
  }
}

uint64_t __70__MFMailMessageLibrary_setSequenceIdentifier_forMessageWithLibraryID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:@"UPDATE messages SET sequence_identifier = ? WHERE ROWID = ?"];
  v5 = [v4 compiled];

  if (v5)
  {
    sqlite3_bind_text(v5, 1, [*(a1 + 32) UTF8String], -1, 0);
    sqlite3_bind_int64(v5, 2, *(a1 + 40));
    sqlite3_step(v5);
    sqlite3_reset(v5);
  }

  v6 = [v3 checkForConnectionErrorWithMessage:@"setting per-message sequence identifier"];

  return v6;
}

- (void)setSequenceIdentifier:(id)a3 forMessagesWithRemoteIDs:(id)a4 inMailbox:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 length] && objc_msgSend(v9, "count"))
  {
    v11 = [(MFMailMessageLibrary *)self database];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary setSequenceIdentifier:forMessagesWithRemoteIDs:inMailbox:]"];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __81__MFMailMessageLibrary_setSequenceIdentifier_forMessagesWithRemoteIDs_inMailbox___block_invoke;
    v13[3] = &unk_1E7AA3C70;
    v14 = v9;
    v15 = v8;
    v16 = v10;
    [v11 __performWriteWithCaller:v12 usingBlock:v13];
  }
}

uint64_t __81__MFMailMessageLibrary_setSequenceIdentifier_forMessagesWithRemoteIDs_inMailbox___block_invoke(id *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_msgSend(@"UPDATE messages SET sequence_identifier = ? WHERE MAILBOX = (SELECT ROWID FROM mailboxes WHERE url = ?) AND remote_id IN(?"), "mutableCopy";
  v5 = [a1[4] count];
  if (v5 >= 2)
  {
    v6 = v5 - 1;
    do
    {
      [v4 appendString:{@", ?"}];
      --v6;
    }

    while (v6);
  }

  [v4 appendString:@""]);
  v7 = [v3 preparedStatementForQueryString:v4];
  v8 = [v7 compiled];

  if (v8)
  {
    sqlite3_bind_text(v8, 1, [a1[5] UTF8String], -1, 0);
    sqlite3_bind_text(v8, 2, [a1[6] UTF8String], -1, 0);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = a1[4];
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = *v18;
      v12 = 3;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v9);
          }

          sqlite3_bind_int(v8, v12++, [*(*(&v17 + 1) + 8 * v13++) unsignedIntValue]);
        }

        while (v10 != v13);
        v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    sqlite3_step(v8);
    sqlite3_reset(v8);
  }

  v14 = [v3 checkForConnectionErrorWithMessage:{@"setting en masse per-message sequence identifier", v17}];

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)messageWithMessageID:(id)a3 options:(unsigned int)a4 inMailbox:(id)a5
{
  v7 = a3;
  v8 = a5;
  v11 = -1;
  if (!v7 || (sscanf([v7 UTF8String], "%d", &v11), v11 < 0))
  {
    v9 = 0;
  }

  else
  {
    v9 = [MFMailMessageLibrary messageWithLibraryID:"messageWithLibraryID:options:inMailbox:" options:? inMailbox:?];
  }

  return v9;
}

- (id)messagesWithMessageIDHeader:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[MFMessageCriterion alloc] initWithType:1 qualifier:3 expression:v4];
  [(MFMessageCriterion *)v5 setCriterionIdentifier:*MEMORY[0x1E699B130]];
  [(MFMailMessageLibrary *)self messagesMatchingCriterion:v5 options:0];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v6 = v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        v11 = [v10 mailbox];
        v12 = [v11 store];
        [v10 setMessageStore:v12];
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_keyForOptions:(unsigned int)a3 protectedDataAvailable:(BOOL)a4 mailboxAvailable:(BOOL)a5 mailboxCached:(BOOL)a6
{
  v6 = a3 | 0x20000;
  if (!a4)
  {
    v6 = a3;
  }

  if (a5)
  {
    v6 |= 0x40000u;
  }

  if (a6)
  {
    v7 = v6 | 0x20000000;
  }

  else
  {
    v7 = v6;
  }

  return [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
}

- (id)messageWithLibraryID:(int64_t)a3 options:(unsigned int)a4 inMailbox:(id)a5 temporarilyUnavailable:(BOOL *)a6
{
  v11 = a5;
  if ((a4 & 0xFC8F6040) != 0)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"MailMessageLibrary.m" lineNumber:4530 description:@"Unsupported option for fetching message"];
  }

  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__6;
  v44 = __Block_byref_object_dispose__6;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__6;
  v34 = __Block_byref_object_dispose__6;
  v35 = 0;
  v12 = [(MFMailMessageLibrary *)self database];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary messageWithLibraryID:options:inMailbox:temporarilyUnavailable:]"];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __86__MFMailMessageLibrary_messageWithLibraryID_options_inMailbox_temporarilyUnavailable___block_invoke;
  v21 = &unk_1E7AA3CC0;
  v29 = a4;
  v22 = self;
  v24 = &v46;
  v28 = a3;
  v25 = &v40;
  v14 = v11;
  v23 = v14;
  v26 = &v36;
  v27 = &v30;
  [v12 __performReadWithCaller:v13 usingBlock:&v18];

  if (*(v37 + 24) == 1 && v41[5])
  {
    os_unfair_lock_lock(&self->_mailboxLock);
    [(NSCache *)self->_mailboxURLsToMailboxIDs setObject:v41[5] forKey:v14, v18, v19, v20, v21, v22];
    os_unfair_lock_unlock(&self->_mailboxLock);
  }

  if (a6)
  {
    *a6 = *(v47 + 24);
  }

  v15 = v31[5];

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v46, 8);

  return v15;
}

uint64_t __86__MFMailMessageLibrary_messageWithLibraryID_options_inMailbox_temporarilyUnavailable___block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) _canSelectMessagesWithOptions:*(a1 + 88) connection:v3])
  {
    v4 = [*(a1 + 32) isProtectedDataAvailable:v3];
    v5 = *(a1 + 32);
    os_unfair_lock_lock(v5 + 53);
    v6 = [*(*(a1 + 32) + 224) objectForKey:*(a1 + 40)];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = [*(a1 + 32) _keyForOptions:*(a1 + 88) protectedDataAvailable:v4 mailboxAvailable:*(a1 + 40) != 0 mailboxCached:*(*(*(a1 + 56) + 8) + 40) != 0];
    v10 = [*(*(a1 + 32) + 232) objectForKey:v9];
    if (!v10)
    {
      v11 = [*(a1 + 32) _selectClauseForOptions:*(a1 + 88) protectedDataAvailable:v4];
      v12 = tablesForOptionsAndCriterion(*(a1 + 88), 0, v4);
      v13 = joinsForTables(v12);
      v14 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (*(*(*(a1 + 64) + 8) + 24))
      {
        v15 = @", messages.mailbox ";
      }

      else
      {
        v15 = &stru_1F273A5E0;
      }

      v16 = [v14 initWithFormat:@"%@FROM messages%s", v15, v13];
      free(v13);
      if (*(a1 + 40))
      {
        if (*(*(*(a1 + 56) + 8) + 40))
        {
          v17 = objc_alloc(MEMORY[0x1E696AEC0]);
          v18 = @" AND mailbox = ?";
        }

        else
        {
          v17 = objc_alloc(MEMORY[0x1E696AEC0]);
          v18 = @" AND mailbox IN (SELECT ROWID FROM mailboxes WHERE url = ?)";
        }

        v23 = [v17 initWithFormat:@"%@ %@ WHERE messages.ROWID = ?%@ LIMIT 1", v11, v16, v18];
      }

      else
      {
        v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ %@ WHERE messages.ROWID = ? LIMIT 1", v11, v16];
      }

      v10 = v23;
      [*(*(a1 + 32) + 232) setObject:v23 forKey:v9];
    }

    os_unfair_lock_unlock(v5 + 53);
    v24 = *(a1 + 40);
    if (v24)
    {
      LOBYTE(v24) = *(*(*(a1 + 56) + 8) + 40) == 0;
    }

    *(*(*(a1 + 64) + 8) + 24) = v24;
    if (*(a1 + 40))
    {
      v25 = *(a1 + 80);
      if (*(*(*(a1 + 56) + 8) + 40))
      {
        v26 = [MEMORY[0x1E696AD98] numberWithLongLong:v25];
        v27 = *(*(*(a1 + 56) + 8) + 40);
        v46[0] = v26;
        v46[1] = v27;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
      }

      else
      {
        v26 = [MEMORY[0x1E696AD98] numberWithLongLong:v25];
        v29 = *(a1 + 40);
        v45[0] = v26;
        v45[1] = v29;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
      }
    }

    else
    {
      v26 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 80)];
      v44 = v26;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
    }

    v30 = v28;

    v31 = [v3 preparedStatementForQueryString:v10];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __86__MFMailMessageLibrary_messageWithLibraryID_options_inMailbox_temporarilyUnavailable___block_invoke_1209;
    v38[3] = &unk_1E7AA3C98;
    v32 = *(a1 + 32);
    v40 = *(a1 + 72);
    v38[4] = v32;
    v42 = *(a1 + 88);
    v33 = v3;
    v39 = v33;
    v43 = v4;
    v41 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
    v37 = 0;
    v22 = [v31 executeWithIndexedBindings:v30 usingBlock:v38 error:&v37];
    v34 = v37;
    if ((v22 & 1) == 0)
    {
      [v33 handleError:v34 message:@"Fetching message for library ID"];
    }
  }

  else
  {
    v19 = EDLibraryLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = *(a1 + 80);
      *buf = 134217984;
      v48 = v20;
      _os_log_impl(&dword_1B0389000, v19, OS_LOG_TYPE_INFO, "couldn't load message with libraryID %lld because protected data is unavailable", buf, 0xCu);
    }

    v21 = *(*(a1 + 48) + 8);
    v22 = 1;
    *(v21 + 24) = 1;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v22;
}

void __86__MFMailMessageLibrary_messageWithLibraryID_options_inMailbox_temporarilyUnavailable___block_invoke_1209(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(a1 + 32) _messageForRow:v10 options:*(a1 + 72) timestamp:mach_absolute_time() connection:*(a1 + 40) isProtectedDataAvailable:*(a1 + 76) recipientsCache:0];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v6 = [v10 objectForKeyedSubscript:@"mailbox"];
    v7 = [v6 numberValue];
    v8 = *(*(a1 + 64) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

- (id)conversationIDsOfMessagesInSameThreadAsMessageWithLibraryID:(int64_t)a3 messageIDHash:(int64_t)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E699B810] indexSet];
  v8 = [(MFMailMessageLibrary *)self database];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary conversationIDsOfMessagesInSameThreadAsMessageWithLibraryID:messageIDHash:]"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __98__MFMailMessageLibrary_conversationIDsOfMessagesInSameThreadAsMessageWithLibraryID_messageIDHash___block_invoke;
  v14[3] = &unk_1E7AA3CE8;
  v16 = a3;
  v10 = v7;
  v15 = v10;
  v17 = a4;
  [v8 __performReadWithCaller:v9 usingBlock:v14];

  v11 = +[MFMailMessageLibrary conversationCalculationLog];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v19 = a4;
    v20 = 2114;
    v21 = v10;
    _os_log_impl(&dword_1B0389000, v11, OS_LOG_TYPE_DEFAULT, "Threading %lld: conversation IDs of messages in the same thread: %{public}@", buf, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

uint64_t __98__MFMailMessageLibrary_conversationIDsOfMessagesInSameThreadAsMessageWithLibraryID_messageIDHash___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:@"SELECT conversation_id FROM messages WHERE rowid IN (SELECT message FROM message_references WHERE reference IN (SELECT reference FROM message_references WHERE message = ?))"];;
  v5 = [v4 compiled];

  if (v5)
  {
    sqlite3_bind_int64(v5, 1, *(a1 + 40));
    while (sqlite3_step(v5) == 100)
    {
      v6 = sqlite3_column_int64(v5, 0);
      if (v6)
      {
        [*(a1 + 32) addIndex:v6];
      }
    }

    sqlite3_reset(v5);
    [v3 checkForConnectionErrorWithMessage:@"Ref Ref Error! Ref!"];
  }

  v7 = [v3 preparedStatementForQueryString:@"SELECT conversation_id FROM messages WHERE message_id IN (SELECT reference FROM message_references WHERE message = ?)"];;
  v8 = [v7 compiled];

  if (v8)
  {
    sqlite3_bind_int64(v8, 1, *(a1 + 40));
    while (sqlite3_step(v8) == 100)
    {
      v9 = sqlite3_column_int64(v8, 0);
      if (v9)
      {
        [*(a1 + 32) addIndex:v9];
      }
    }

    sqlite3_reset(v8);
    [v3 checkForConnectionErrorWithMessage:@"Ref Error!"];
  }

  v10 = [v3 preparedStatementForQueryString:{@"SELECT messages.conversation_id FROM message_references, messages WHERE reference IN (SELECT message_id FROM messages WHERE rowid = ?) AND messages.rowid = message_references.message"}];;
  v11 = [v10 compiled];

  if (v11)
  {
    sqlite3_bind_int64(v11, 1, *(a1 + 40));
    while (sqlite3_step(v11) == 100)
    {
      v12 = sqlite3_column_int64(v11, 0);
      if (v12)
      {
        [*(a1 + 32) addIndex:v12];
      }
    }

    sqlite3_reset(v11);
    [v3 checkForConnectionErrorWithMessage:@"Deref error!"];
  }

  if (*(a1 + 48))
  {
    v13 = [v3 preparedStatementForQueryString:@"SELECT conversation_id FROM messages WHERE message_id = ? AND rowid != ?"];;
    v14 = [v13 compiled];

    if (v14)
    {
      sqlite3_bind_int64(v14, 1, *(a1 + 48));
      sqlite3_bind_int64(v14, 2, *(a1 + 40));
      while (sqlite3_step(v14) == 100)
      {
        v15 = sqlite3_column_int64(v14, 0);
        if (v15)
        {
          [*(a1 + 32) addIndex:v15];
        }
      }

      sqlite3_reset(v14);
      [v3 checkForConnectionErrorWithMessage:@"Message error!"];
    }
  }

  return 1;
}

- (id)_copyReferenceHashesWithoutMessagesForMessageWithConversation:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [(MFMailMessageLibrary *)self database];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary _copyReferenceHashesWithoutMessagesForMessageWithConversation:]"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__MFMailMessageLibrary__copyReferenceHashesWithoutMessagesForMessageWithConversation___block_invoke;
  v13[3] = &unk_1E7AA3D10;
  v8 = v4;
  v14 = v8;
  v9 = v5;
  v15 = v9;
  [v6 __performReadWithCaller:v7 usingBlock:v13];

  v10 = v15;
  v11 = v9;

  return v11;
}

uint64_t __86__MFMailMessageLibrary__copyReferenceHashesWithoutMessagesForMessageWithConversation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:{@"SELECT message_references.message, reference FROM message_references LEFT OUTER JOIN messages ON reference = messages.message_id WHERE message_references.message IN (SELECT rowid FROM messages WHERE conversation_id in (SELECT conversation_id FROM messages WHERE rowid = ?)) AND messages.rowid IS NULL"}];
  v5 = [v4 compiled];

  if (v5)
  {
    sqlite3_bind_int64(v5, 1, [*(a1 + 32) libraryID]);
    while (sqlite3_step(v5) == 100)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_column_int64(v5, 0)}];
      v7 = sqlite3_column_int64(v5, 1);
      if (v7)
      {
        v8 = [*(a1 + 40) objectForKeyedSubscript:v6];
        if (!v8)
        {
          v8 = objc_alloc_init(MEMORY[0x1E699B810]);
          [*(a1 + 40) setObject:? forKeyedSubscript:?];
        }

        [v8 addIndex:v7];
      }
    }

    sqlite3_reset(v5);
    [v3 checkForConnectionErrorWithMessage:@"Getting references that do not exist in the DB in this conversation."];
  }

  return 1;
}

- (id)_getReferencesForHashesWithOwners:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__MFMailMessageLibrary__getReferencesForHashesWithOwners___block_invoke;
  v10[3] = &unk_1E7AA3D38;
  v10[4] = self;
  v6 = v5;
  v11 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v10];
  v7 = v11;
  v8 = v6;

  return v6;
}

void __58__MFMailMessageLibrary__getReferencesForHashesWithOwners___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v17 = [*(a1 + 32) messageWithLibraryID:objc_msgSend(a2 options:"longLongValue") inMailbox:{6297663, 0}];
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v7 = [v17 headers];
  v16 = [v7 references];
  [v6 addObjectsFromArray:v16];
  v8 = [v7 firstHeaderForKey:*MEMORY[0x1E699B108]];
  if ([v8 length])
  {
    [v6 addObject:v8];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        v14 = MFStringHashForMessageIDHeader();
        if (v14 && [v5 containsIndex:v14])
        {
          [*(a1 + 40) addObject:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (int64_t)loadMoreMessagesForThreadContainingMessage:(id)a3 hasNoMoreMessages:(BOOL *)a4
{
  v6 = a3;
  v7 = [(MFMailMessageLibrary *)self remoteStoreForMessage:v6];
  if ([v7 canFetchMessageIDs])
  {
    v8 = -1;
    v9 = 6;
    while (1)
    {
      if (!--v9)
      {
        v12 = v8;
        goto LABEL_19;
      }

      v10 = [(MFMailMessageLibrary *)self _copyReferenceHashesWithoutMessagesForMessageWithConversation:v6];
      v11 = [v10 count];
      v12 = v8;
      if (v11)
      {
        v13 = [(MFMailMessageLibrary *)self _getReferencesForHashesWithOwners:v10];
        v14 = [v7 fetchMessagesWithMessageIDs:v13 andSetFlags:0x100000];
        if (v14 <= 0)
        {
          v12 = v8;
        }

        else
        {
          v12 = v14 + (v8 & ~(v8 >> 63));
        }
      }

      if (v8 == v12 && a4)
      {
        break;
      }

      if (v11)
      {
        if (v12 <= 49)
        {
          v15 = v8 == v12;
          v8 = v12;
          if (!v15)
          {
            continue;
          }
        }
      }

      goto LABEL_19;
    }

    *a4 = 1;
  }

  else
  {
    v12 = -1;
  }

LABEL_19:

  return v12;
}

- (void)reloadMailboxCacheIfNecessaryWithConnection:(id)a3
{
  v4 = a3;
  if (!self->_mailboxURLToIDCache)
  {
    [(MFMailMessageLibrary *)self reloadMailboxCacheWithConnection:v4];
  }
}

- (void)reloadMailboxCacheWithConnection:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  pazResult = 0xAAAAAAAAAAAAAAAALL;
  table = sqlite3_get_table([v4 sqlDB], "SELECT ROWID, url FROM mailboxes", &pazResult, &v13 + 1, &v13, 0);
  [v4 checkForConnectionErrorWithMessage:@"selecting mailbox URLs"];
  if (!table)
  {
    for (i = HIDWORD(v13); HIDWORD(v13); --HIDWORD(v13))
    {
      v9 = &pazResult[2 * i];
      v10 = atoll(*v9);
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9[1]];
      v12 = [MEMORY[0x1E696AD98] numberWithLongLong:v10];
      [v5 setObject:v11 forKeyedSubscript:v12];
      [v6 setObject:v12 forKeyedSubscript:v11];

      i = HIDWORD(v13) - 1;
    }

    _MFLockGlobalLock();
    objc_storeStrong(&self->_mailboxIDToURLCache, v5);
    objc_storeStrong(&self->_mailboxURLToIDCache, v6);
    _MFUnlockGlobalLock();
  }

  sqlite3_free_table(pazResult);
}

- (void)removeURLFromMailboxCache:(id)a3
{
  v4 = a3;
  if (self->_mailboxIDToURLCache)
  {
    _MFLockGlobalLock();
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__6;
    v17 = __Block_byref_object_dispose__6;
    v18 = 0;
    mailboxIDToURLCache = self->_mailboxIDToURLCache;
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __50__MFMailMessageLibrary_removeURLFromMailboxCache___block_invoke;
    v10 = &unk_1E7AA3D60;
    v6 = v4;
    v11 = v6;
    v12 = &v13;
    [(NSMutableDictionary *)mailboxIDToURLCache enumerateKeysAndObjectsUsingBlock:&v7];
    if (v14[5])
    {
      [(NSMutableDictionary *)self->_mailboxIDToURLCache setObject:0 forKeyedSubscript:v7, v8, v9, v10];
    }

    [(NSMutableDictionary *)self->_mailboxURLToIDCache setObject:0 forKeyedSubscript:v6, v7, v8, v9, v10];
    _MFUnlockGlobalLock();

    _Block_object_dispose(&v13, 8);
  }
}

void __50__MFMailMessageLibrary_removeURLFromMailboxCache___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([*(a1 + 32) isEqualToString:a3])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)urlForMailboxID:(int64_t)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__6;
  v20 = __Block_byref_object_dispose__6;
  v21 = 0;
  if (*MEMORY[0x1E699A728] == a3)
  {
    goto LABEL_2;
  }

  if (!self->_mailboxIDToURLCache)
  {
    goto LABEL_13;
  }

  _MFLockGlobalLock();
  mailboxIDToURLCache = self->_mailboxIDToURLCache;
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v9 = [(NSMutableDictionary *)mailboxIDToURLCache objectForKeyedSubscript:v8];
  v10 = v17[5];
  v17[5] = v9;

  _MFUnlockGlobalLock();
  v5 = v17[5];
  if (!v5)
  {
LABEL_13:
    v11 = [(MFMailMessageLibrary *)self database];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary urlForMailboxID:]"];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __40__MFMailMessageLibrary_urlForMailboxID___block_invoke;
    v15[3] = &unk_1E7AA3D88;
    v15[5] = &v16;
    v15[6] = a3;
    v15[4] = self;
    [v11 __performReadWithCaller:v12 usingBlock:v15];

    v5 = v17[5];
    if (!v5)
    {
LABEL_2:
      v4 = EDLibraryLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [MFMailMessageLibrary urlForMailboxID:];
      }

      v5 = v17[5];
    }
  }

  v13 = v5;
  _Block_object_dispose(&v16, 8);

  return v13;
}

uint64_t __40__MFMailMessageLibrary_urlForMailboxID___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:@"SELECT url FROM mailboxes WHERE ROWID = ?"];;
  v5 = [v4 compiled];

  if (v5)
  {
    sqlite3_bind_int64(v5, 1, a1[6]);
    if (sqlite3_step(v5) == 100)
    {
      v6 = sqlite3_column_text(v5, 0);
      if (v6)
      {
        v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v6];
        v8 = *(a1[5] + 8);
        v9 = *(v8 + 40);
        *(v8 + 40) = v7;

        if (*(*(a1[5] + 8) + 40))
        {
          v10 = [MEMORY[0x1E696AD98] numberWithLongLong:a1[6]];
          _MFLockGlobalLock();
          [*(a1[4] + 32) setObject:*(*(a1[5] + 8) + 40) forKeyedSubscript:v10];
          [*(a1[4] + 40) setObject:v10 forKeyedSubscript:*(*(a1[5] + 8) + 40)];
          _MFUnlockGlobalLock();
        }
      }
    }

    sqlite3_reset(v5);
  }

  return 1;
}

- (id)mailboxURLsForIDs:(id)a3
{
  v64 = *MEMORY[0x1E69E9840];
  v43 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = self;
  v45 = v43;
  v46 = v4;
  v6 = [MEMORY[0x1E695DF90] dictionary];
  if ([v45 count])
  {
    if (v5->_mailboxIDToURLCache)
    {
      _MFLockGlobalLock();
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v7 = v45;
      v8 = [v7 countByEnumeratingWithState:&v55 objects:v61 count:16];
      if (v8)
      {
        v9 = *v56;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v56 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v55 + 1) + 8 * i);
            v12 = [(NSMutableDictionary *)v5->_mailboxIDToURLCache objectForKeyedSubscript:v11];
            if (v12)
            {
              v13 = [MEMORY[0x1E695DFF8] URLWithString:v12];
              [v6 setObject:v13 forKeyedSubscript:v11];
            }

            else
            {
              [v46 addObject:v11];
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v55 objects:v61 count:16];
        }

        while (v8);
      }

      _MFUnlockGlobalLock();
    }

    else
    {
      [v46 addObjectsFromArray:v45];
    }
  }

  if ([v46 count])
  {
    v14 = v5;
    v44 = v46;
    v15 = [v44 ef_map:&__block_literal_global_2679];
    v16 = MEMORY[0x1E696AEC0];
    v17 = [v15 componentsJoinedByString:{@", "}];
    v18 = [v16 stringWithFormat:@"SELECT ROWID, url FROM mailboxes WHERE ROWID IN (%@)", v17];;

    v19 = [MEMORY[0x1E695DF90] dictionary];
    v20 = [v14 database];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"readMailboxURLStringsFromDatabase"];
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __readMailboxURLStringsFromDatabase_block_invoke_2;
    v61[3] = &unk_1E7AA3D10;
    v22 = v18;
    v62 = v22;
    v23 = v19;
    v63 = v23;
    [v20 __performReadWithCaller:v21 usingBlock:v61];

    v24 = v63;
    v25 = v23;

    if ([v25 count])
    {
      if (v14[4])
      {
        _MFLockGlobalLock();
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v26 = v25;
        v27 = [v26 countByEnumeratingWithState:&v51 objects:v60 count:16];
        if (v27)
        {
          v28 = *v52;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v52 != v28)
              {
                objc_enumerationMutation(v26);
              }

              v30 = *(*(&v51 + 1) + 8 * j);
              v31 = [v26 objectForKeyedSubscript:v30];
              [v14[4] setObject:v31 forKeyedSubscript:v30];
              [v14[5] setObject:v30 forKeyedSubscript:v31];
            }

            v27 = [v26 countByEnumeratingWithState:&v51 objects:v60 count:16];
          }

          while (v27);
        }

        _MFUnlockGlobalLock();
      }

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v32 = v25;
      v33 = [v32 countByEnumeratingWithState:&v47 objects:v59 count:16];
      if (v33)
      {
        v34 = *v48;
        do
        {
          for (k = 0; k != v33; ++k)
          {
            if (*v48 != v34)
            {
              objc_enumerationMutation(v32);
            }

            v36 = *(*(&v47 + 1) + 8 * k);
            v37 = MEMORY[0x1E695DFF8];
            v38 = [v32 objectForKeyedSubscript:v36];
            v39 = [v37 URLWithString:v38];
            [v6 setObject:v39 forKeyedSubscript:v36];
          }

          v33 = [v32 countByEnumeratingWithState:&v47 objects:v59 count:16];
        }

        while (v33);
      }
    }
  }

  else
  {
    v40 = [v6 count];
    if (v40 != [v45 count])
    {
      __assert_rtn("[MFMailMessageLibrary mailboxURLsForIDs:]", "MailMessageLibrary.m", 4942, "urlsByID.count == mailboxIDs.count");
    }
  }

  v41 = *MEMORY[0x1E69E9840];

  return v6;
}

- (int64_t)mailboxIDForURLString:(id)a3 createIfNecessary:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = [(MFMailMessageLibrary *)self mailboxIDForURLString:v6];
  v7 = v20[3];
  if (v7 == *MEMORY[0x1E699A728] && v4)
  {
    v9 = objc_alloc_init(MEMORY[0x1E699B608]);
    v10 = [(MFMailMessageLibrary *)self database];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary mailboxIDForURLString:createIfNecessary:]"];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64__MFMailMessageLibrary_mailboxIDForURLString_createIfNecessary___block_invoke;
    v14[3] = &unk_1E7AA3DB0;
    v12 = v9;
    v18 = &v19;
    v15 = v12;
    v16 = self;
    v17 = v6;
    [v10 __performWriteWithCaller:v11 usingBlock:v14];

    v7 = v20[3];
  }

  _Block_object_dispose(&v19, 8);

  return v7;
}

uint64_t __64__MFMailMessageLibrary_mailboxIDForURLString_createIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  *(*(*(a1 + 56) + 8) + 24) = createRowidForMailbox(*(a1 + 40), v3, *(a1 + 48), 0, *(a1 + 32));

  return 1;
}

- (int64_t)mailboxIDForURLString:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v5 = *MEMORY[0x1E699A728];
  v19 = *MEMORY[0x1E699A728];
  if ([v4 length])
  {
    if (self->_mailboxURLToIDCache)
    {
      _MFLockGlobalLock();
      v6 = [(NSMutableDictionary *)self->_mailboxURLToIDCache objectForKeyedSubscript:v4];
      _MFUnlockGlobalLock();
      if (v6)
      {
        v7 = [v6 longLongValue];
        v17[3] = v7;
      }
    }

    if (v17[3] == v5)
    {
      v8 = [(MFMailMessageLibrary *)self database];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary mailboxIDForURLString:]"];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __46__MFMailMessageLibrary_mailboxIDForURLString___block_invoke;
      v12[3] = &unk_1E7AA3A68;
      v14 = self;
      v15 = &v16;
      v13 = v4;
      [v8 __performReadWithCaller:v9 usingBlock:v12];
    }
  }

  v10 = v17[3];
  _Block_object_dispose(&v16, 8);

  return v10;
}

uint64_t __46__MFMailMessageLibrary_mailboxIDForURLString___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:@"SELECT rowid FROM mailboxes WHERE url = ?"];;
  v5 = [v4 compiled];

  if (v5)
  {
    sqlite3_bind_text(v5, 1, [*(a1 + 32) UTF8String], -1, 0);
    if (sqlite3_step(v5) == 100)
    {
      *(*(*(a1 + 48) + 8) + 24) = sqlite3_column_int64(v5, 0);
      if (*(*(a1 + 40) + 40))
      {
        v6 = [MEMORY[0x1E696AD98] numberWithLongLong:*(*(*(a1 + 48) + 8) + 24)];
        _MFLockGlobalLock();
        [*(*(a1 + 40) + 32) setObject:*(a1 + 32) forKeyedSubscript:v6];
        [*(*(a1 + 40) + 40) setObject:v6 forKeyedSubscript:*(a1 + 32)];
        _MFUnlockGlobalLock();
      }
    }

    sqlite3_reset(v5);
  }

  return 1;
}

- (id)mailboxURLForMessage:(id)a3
{
  v9[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 mailboxID] == -1)
  {
    v5 = EDLibraryLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      -[MFMailMessageLibrary mailboxURLForMessage:].cold.1(v9, [v4 libraryID]);
    }
  }

  v6 = -[MFMailMessageLibrary urlForMailboxID:](self, "urlForMailboxID:", [v4 mailboxID]);

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)mailboxUidForMessage:(id)a3
{
  v3 = [(MFMailMessageLibrary *)self mailboxURLForMessage:a3];
  v4 = [MailAccount mailboxUidFromActiveAccountsForURL:v3];

  return v4;
}

- (id)remoteStoreForMessage:(id)a3
{
  v3 = [(MFMailMessageLibrary *)self mailboxUidForMessage:a3];
  v4 = [v3 account];
  v5 = [v4 storeForMailboxUid:v3];

  return v5;
}

- (id)accountForMessage:(id)a3
{
  v4 = a3;
  v5 = -[MFMailMessageLibrary urlForMailboxID:](self, "urlForMailboxID:", [v4 mailboxID]);
  v6 = [MailAccount accountWithURLString:v5];

  return v6;
}

- (BOOL)_canSelectMessagesWithOptions:(unsigned int)a3 connection:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(MFMailMessageLibrary *)self persistence];
  v8 = [v7 messagePersistence];

  if (v8)
  {
    v9 = (v4 & 0x8000) == 0 || [(MFMailMessageLibrary *)self isProtectedDataAvailable:v6];
  }

  else
  {
    v10 = EDLibraryLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MFMailMessageLibrary _canSelectMessagesWithOptions:connection:];
    }

    v9 = 0;
  }

  return v9;
}

- (void)clearServerSearchFlagsForMessagesWithLibraryIDs:(id)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(MFMailMessageLibrary *)self database];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary clearServerSearchFlagsForMessagesWithLibraryIDs:]"];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __72__MFMailMessageLibrary_clearServerSearchFlagsForMessagesWithLibraryIDs___block_invoke;
  v16 = &unk_1E7AA3C70;
  v8 = v4;
  v17 = v8;
  v9 = v5;
  v18 = v9;
  v19 = self;
  [v6 __performReadWithCaller:v7 usingBlock:&v13];

  if ([v9 count])
  {
    v20[0] = @"MessageIsServerSearchResult";
    v20[1] = @"MessageIsThreadSearchResult";
    v21[0] = @"NO";
    v21[1] = @"NO";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v11 = [(MFMailMessageLibrary *)self setFlagsFromDictionary:v10 forMessages:v9];
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __72__MFMailMessageLibrary_clearServerSearchFlagsForMessagesWithLibraryIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) componentsJoinedByString:{@", "}];
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT ROWID FROM messages WHERE (ROWID IN (%@)) AND (flags & %llu != 0)", v4, 1048704];
  v6 = [v3 preparedStatementForQueryString:v5];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__MFMailMessageLibrary_clearServerSearchFlagsForMessagesWithLibraryIDs___block_invoke_2;
  v10[3] = &unk_1E7AA3DD8;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11 = v7;
  v12 = v8;
  [v6 executeUsingBlock:v10 error:0];

  return 1;
}

void __72__MFMailMessageLibrary_clearServerSearchFlagsForMessagesWithLibraryIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [a2 objectAtIndexedSubscript:0];
  v4 = [v3 messageWithLibraryID:objc_msgSend(v5 options:"databaseIDValue") inMailbox:{0, 0}];
  [v2 addObject:v4];
}

- (void)scheduleRecurringActivity
{
  [(MFMailMessageLibrary *)self _schedulePeriodicStatisticsLogging];

  [(MFMailMessageLibrary *)self _scheduleIncrementalVacuum];
}

- (void)addPostMigrationStep:(Class)a3
{
  v4 = [(MFMailMessageLibrary *)self database];
  [v4 addPostMigrationStep:a3];
}

- (unint64_t)flagsForConversationId:(int64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = [(MFMailMessageLibrary *)self database];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary flagsForConversationId:]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__MFMailMessageLibrary_flagsForConversationId___block_invoke;
  v8[3] = &unk_1E7AA3E00;
  v8[4] = &v9;
  v8[5] = a3;
  [v4 __performReadWithCaller:v5 usingBlock:v8];

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __47__MFMailMessageLibrary_flagsForConversationId___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:@"SELECT flags FROM conversations WHERE conversation_id = ?"];
  v5 = [v4 compiled];

  if (v5)
  {
    sqlite3_bind_int64(v5, 1, *(a1 + 40));
    if (sqlite3_step(v5) == 100)
    {
      *(*(*(a1 + 32) + 8) + 24) = sqlite3_column_int64(v5, 0);
    }

    sqlite3_reset(v5);
    [v3 checkForConnectionErrorWithMessage:@"fetching conversation flags"];
  }

  return 1;
}

- (void)setFlags:(unint64_t)a3 forConversationId:(int64_t)a4
{
  v6 = [(MFMailMessageLibrary *)self database];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary setFlags:forConversationId:]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__MFMailMessageLibrary_setFlags_forConversationId___block_invoke;
  v8[3] = &__block_descriptor_48_e41_B16__0__EDPersistenceDatabaseConnection_8l;
  v8[4] = a3;
  v8[5] = a4;
  [v6 __performWriteWithCaller:v7 usingBlock:v8];
}

uint64_t __51__MFMailMessageLibrary_setFlags_forConversationId___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:@"UPDATE conversations SET flags = ? WHERE conversation_id = ?"];
  v5 = [v4 compiled];

  if (v5)
  {
    sqlite3_bind_int64(v5, 1, *(a1 + 32));
    sqlite3_bind_int64(v5, 2, *(a1 + 40));
    sqlite3_step(v5);
    sqlite3_reset(v5);
  }

  v6 = [v3 checkForConnectionErrorWithMessage:@"setting conversation flags"];

  return v6;
}

- (int64_t)_conversationIdForMessageIds:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v5 = &stru_1F273A5E0;
  v6 = [v4 firstIndex];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = &stru_1F273A5E0; ; i = v13)
    {
      v5 = [(__CFString *)i stringByAppendingFormat:@"%lld", v6];

      v6 = [v4 indexGreaterThanIndex:v6];
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v13 = [(__CFString *)v5 stringByAppendingString:@", "];
    }
  }

  v7 = [(MFMailMessageLibrary *)self database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary _conversationIdForMessageIds:]"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__MFMailMessageLibrary__conversationIdForMessageIds___block_invoke;
  v14[3] = &unk_1E7AA3C48;
  v9 = v5;
  v15 = v9;
  v16 = &v17;
  [v7 __performReadWithCaller:v8 usingBlock:v14];

  v10 = v18[3];
  _Block_object_dispose(&v17, 8);

  return v10;
}

uint64_t __53__MFMailMessageLibrary__conversationIdForMessageIds___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT DISTINCT(conversation_id) FROM conversation_id_message_id WHERE message_id IN (%@)", *(a1 + 32)];
  v5 = [v3 preparedStatementForQueryString:v4];
  v6 = [v5 compiled];

  if (v6)
  {
    if (sqlite3_step(v6) == 100)
    {
      *(*(*(a1 + 40) + 8) + 24) = sqlite3_column_int64(v6, 0);
    }

    sqlite3_reset(v6);
    [v3 checkForConnectionErrorWithMessage:@"finding conversation id"];
  }

  return 1;
}

- (id)storedIntegerPropertyWithName:(id)a3
{
  v4 = a3;
  v5 = [(MFMailMessageLibrary *)self _integerForQuery:@"SELECT value FROM properties WHERE key = ?" withTextArgument:v4];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];

  return v6;
}

- (void)setStoredIntegerPropertyWithName:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MFMailMessageLibrary *)self database];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary setStoredIntegerPropertyWithName:value:]"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__MFMailMessageLibrary_setStoredIntegerPropertyWithName_value___block_invoke;
  v12[3] = &unk_1E7AA3D10;
  v10 = v7;
  v13 = v10;
  v11 = v6;
  v14 = v11;
  [v8 __performWriteWithCaller:v9 usingBlock:v12];
}

uint64_t __63__MFMailMessageLibrary_setStoredIntegerPropertyWithName_value___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = [v3 preparedStatementForQueryString:{@"INSERT OR REPLACE INTO properties (key, value) VALUES (?, ?)"}];
    v6 = [v5 compiled];

    sqlite3_bind_text(v6, 1, [*(a1 + 40) UTF8String], -1, 0);
    sqlite3_bind_int(v6, 2, [*(a1 + 32) unsignedIntValue]);
  }

  else
  {
    v7 = [v3 preparedStatementForQueryString:@"DELETE FROM properties WHERE key = ?"];
    v6 = [v7 compiled];

    sqlite3_bind_text(v6, 1, [*(a1 + 40) UTF8String], -1, 0);
  }

  sqlite3_step(v6);
  sqlite3_reset(v6);
  v8 = @"updating";
  if (!*(a1 + 32))
  {
    v8 = @"deleting";
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ property %@", v8, *(a1 + 40)];
  v10 = [v4 checkForConnectionErrorWithMessage:v9];

  return v10;
}

- (void)_notifyDidCompact:(BOOL)a3 messages:(id)a4 mailboxes:(id)a5
{
  v6 = a3;
  v13 = a4;
  v8 = a5;
  v9 = &MailMessageStoreMessagesCompacted;
  if (!v6)
  {
    v9 = MailMessageStoreMessagesWillBeCompacted;
  }

  v10 = *v9;
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v13)
  {
    [v11 setObject:v13 forKeyedSubscript:@"messages"];
  }

  if (v8)
  {
    [v11 setObject:v8 forKeyedSubscript:@"mailboxes"];
  }

  v12 = [MEMORY[0x1E696AD88] defaultCenter];
  [v12 postNotificationName:v10 object:self userInfo:v11];
}

- (void)compactMessages:(id)a3 permanently:(BOOL)a4 notifyPersistence:(BOOL)a5
{
  v5 = a5;
  v64 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v7 = +[MFActivityMonitor currentMonitor];
  [v7 addReason:@"MonitoredActivityReasonCompacting"];

  Current = CFAbsoluteTimeGetCurrent();
  v29 = objc_alloc_init(MEMORY[0x1E699B608]);
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v9 = v26;
  v10 = [v9 countByEnumeratingWithState:&v55 objects:v63 count:16];
  v25 = v5;
  v11 = 0;
  if (v10)
  {
    v12 = *v56;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v56 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v55 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        v16 = [(MFMailMessageLibrary *)self mailboxUidForMessage:v14];
        if (v16)
        {
          if (!v11)
          {
            v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
          }

          [v11 ef_addObjectIfAbsent:v16];
        }

        objc_autoreleasePoolPop(v15);
      }

      v10 = [v9 countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v10);
  }

  [(MFMailMessageLibrary *)self _notifyDidCompact:0 messages:v9 mailboxes:v11];
  [(MFMailMessageLibrary *)self removeSearchableItemsForMessages:v9];
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = [v9 count];
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v46[3] = 0xAAAAAAAAAAAAAAAALL;
  v30 = objc_alloc_init(MEMORY[0x1E699B810]);
  v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 1;
  while (v52[3] < v48[3])
  {
    v17 = [(MFMailMessageLibrary *)self database];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary compactMessages:permanently:notifyPersistence:]"];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __70__MFMailMessageLibrary_compactMessages_permanently_notifyPersistence___block_invoke;
    v31[3] = &unk_1E7AA3E48;
    v41 = a4;
    v32 = v29;
    v37 = v46;
    v38 = &v42;
    v39 = &v51;
    v40 = &v47;
    v33 = v9;
    v19 = v28;
    v34 = v19;
    v35 = v30;
    v36 = self;
    [v17 __performWriteWithCaller:v18 usingBlock:v31];

    [v19 removeAllObjects];
    if ((v43[3] & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if (v25)
  {
    v20 = [(MFMailMessageLibrary *)self hookRegistry];
    [v20 persistenceDidDeleteMessages:v9 generationWindow:v29];
  }

  [(MFMailMessageLibrary *)self _removeSearchableItemsWithLibraryIDs:v30];
  [(MFMailMessageLibrary *)self cleanupProtectedTables];
  [(MFMailMessageLibrary *)self _notifyDidCompact:1 messages:v9 mailboxes:v11];
LABEL_19:
  v21 = EDLibraryLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v48[3];
    v23 = CFAbsoluteTimeGetCurrent();
    *buf = 134218240;
    v60 = v22;
    v61 = 2048;
    v62 = v23 - Current;
    _os_log_impl(&dword_1B0389000, v21, OS_LOG_TYPE_DEFAULT, "Compacted %lu messages (%f seconds)", buf, 0x16u);
  }

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(v46, 8);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);

  v24 = *MEMORY[0x1E69E9840];
}

uint64_t __70__MFMailMessageLibrary_compactMessages_permanently_notifyPersistence___block_invoke(uint64_t a1, void *a2)
{
  v40[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v31 = v3;
  if (*(a1 + 104))
  {
    v32 = 0;
  }

  else
  {
    v32 = [v3 preparedStatementForQueryString:@"UPDATE pop_uids SET flags = ? WHERE mailbox = ? AND uid = ?"];
  }

  [*(a1 + 32) insertGeneration:{objc_msgSend(v4, "transactionGeneration")}];
  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  *(*(*(a1 + 72) + 8) + 24) = 1;
  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    v5 = 0;
    v6 = 0;
    v33 = *MEMORY[0x1E699B3A0];
    while (*(*(*(a1 + 88) + 8) + 24) < *(*(*(a1 + 96) + 8) + 24))
    {
      v7 = [*(a1 + 40) objectAtIndex:?];
      [v34 addObject:v7];
      v8 = [v7 libraryID];
      v9 = *(a1 + 48);
      v10 = [MEMORY[0x1E696AD98] numberWithLongLong:v8];
      v11 = [v10 stringValue];
      [v9 addObject:v11];

      [*(a1 + 56) addIndex:v8];
      if (!v6)
      {
        v12 = [v7 account];
        v13 = [v12 personaIdentifier];
        v14 = v13 == 0;

        if (v14)
        {
          v6 = 0;
        }

        else
        {
          v15 = [v7 account];
          v6 = [v15 personaIdentifier];
        }
      }

      if (*(a1 + 104))
      {
        v16 = v5;
      }

      else
      {
        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v7, "messageFlags")}];
        v40[0] = v17;
        v18 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v7, "originalMailboxID")}];
        v40[1] = v18;
        v19 = [v7 remoteID];
        v40[2] = v19;
        v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:3];
        v35 = v5;
        v21 = [v32 executeWithIndexedBindings:v20 usingBlock:0 error:&v35];
        v16 = v35;

        *(*(*(a1 + 80) + 8) + 24) = v21;
        if ((*(*(*(a1 + 80) + 8) + 24) & 1) == 0)
        {
          [v31 handleError:v16 message:@"Clearing flags in pop_uids"];
        }
      }

      v22 = *(*(*(a1 + 72) + 8) + 24) < v33;

      if (v22)
      {
        ++*(*(*(a1 + 88) + 8) + 24);
        ++*(*(*(a1 + 72) + 8) + 24);
        v5 = v16;
        if (*(*(*(a1 + 80) + 8) + 24))
        {
          continue;
        }
      }

      goto LABEL_20;
    }

    v16 = v5;
  }

  else
  {
    v6 = 0;
    v16 = 0;
  }

LABEL_20:
  v23 = [*(a1 + 64) hookRegistry];
  [v23 persistenceWillDeleteMessages:v34];

  *(*(*(a1 + 80) + 8) + 24) = [*(a1 + 64) _deleteMessages:v34 connection:v31];
  v24 = +[MFMailMessageLibrary log];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v34 count];
    v26 = *(*(*(a1 + 80) + 8) + 24);
    *buf = 134218240;
    v37 = v25;
    v38 = 1024;
    v39 = v26;
    _os_log_impl(&dword_1B0389000, v24, OS_LOG_TYPE_DEFAULT, "Deleting %lu messages succeeded: %{BOOL}d", buf, 0x12u);
  }

  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    v27 = [*(a1 + 64) hookRegistry];
    [v27 persistenceIsDeletingMessages:v34 generationWindow:*(a1 + 32)];

    v28 = *(*(*(a1 + 80) + 8) + 24);
  }

  else
  {
    v28 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v28 & 1;
}

- (BOOL)_deleteMessages:(id)a3 connection:(id)a4
{
  v7 = a3;
  v30 = v7;
  v31 = a4;
  v8 = [v7 count];
  if (v8 > *MEMORY[0x1E699B3A0])
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"MailMessageLibrary.m" lineNumber:5292 description:{@"Invalid parameter not satisfying: %@", @"messages.count <= EDMessageBatchSize"}];
  }

  v29 = [v7 ef_map:&__block_literal_global_1315];
  v9 = [v29 componentsJoinedByString:{@", "}];
  v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v26 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v25 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v28 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT sender, subject, summary, brand_indicator FROM messages WHERE ROWID IN (%@)", v9];
  v11 = self;
  v12 = [v31 preparedStatementForQueryString:v10];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __51__MFMailMessageLibrary__deleteMessages_connection___block_invoke_2;
  v33[3] = &unk_1E7AA3E90;
  v13 = v27;
  v34 = v13;
  v14 = v26;
  v35 = v14;
  v15 = v25;
  v36 = v15;
  v16 = v28;
  v37 = v16;
  v32 = 0;
  v17 = [v12 executeUsingBlock:v33 error:&v32];
  v18 = v32;
  if ((v17 & 1) == 0)
  {
    v21 = v31;
    [v31 handleError:v18 message:@"Fetching messages to delete"];
LABEL_8:
    v22 = 0;
    goto LABEL_9;
  }

  v19 = v11;
  v20 = v11;
  v21 = v31;
  if (![(MFMailMessageLibrary *)v20 _addAddressesFromRecipientsForMessages:v9 toSet:v13 connection:v31]|| ![(MFMailMessageLibrary *)v19 _deleteMessages:v9 andCleanUpAddresses:v13 subjects:v14 summaries:v15 brandIndicators:v16 connection:v31])
  {
    goto LABEL_8;
  }

  [(MFMailMessageLibrary *)v19 _removeGlobalDataForMessagesIfNecessary:v30 connection:v31];
  v22 = 1;
LABEL_9:

  return v22;
}

id __51__MFMailMessageLibrary__deleteMessages_connection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v2, "libraryID")}];
  v4 = [v3 stringValue];

  return v4;
}

void __51__MFMailMessageLibrary__deleteMessages_connection___block_invoke_2(id *a1, void *a2)
{
  v11 = a2;
  v3 = [v11 objectAtIndexedSubscript:0];
  v4 = [v3 stringValue];

  if (v4)
  {
    [a1[4] addObject:v4];
  }

  v5 = [v11 objectAtIndexedSubscript:1];
  v6 = [v5 stringValue];

  if (v6)
  {
    [a1[5] addObject:v6];
  }

  v7 = [v11 objectAtIndexedSubscript:2];
  v8 = [v7 stringValue];

  if (v8)
  {
    [a1[6] addObject:v8];
  }

  v9 = [v11 objectAtIndexedSubscript:3];
  v10 = [v9 stringValue];

  if (v10)
  {
    [a1[7] addObject:v10];
  }
}

- (BOOL)_addAddressesFromRecipientsForMessages:(id)a3 toSet:(id)a4 connection:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 count])
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT DISTINCT address FROM recipients WHERE message IN (%@)", v7];
    v11 = [v9 preparedStatementForQueryString:v10];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __80__MFMailMessageLibrary__addAddressesFromRecipientsForMessages_toSet_connection___block_invoke;
    v16[3] = &unk_1E7AA3610;
    v17 = v8;
    v15 = 0;
    v12 = [v11 executeUsingBlock:v16 error:&v15];
    v13 = v15;
    if ((v12 & 1) == 0)
    {
      [v9 handleError:v13 message:@"Fetching recipient addresses for messages"];
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

void __80__MFMailMessageLibrary__addAddressesFromRecipientsForMessages_toSet_connection___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 objectAtIndexedSubscript:0];
  v3 = [v4 stringValue];
  [v2 addObject:v3];
}

- (BOOL)_deleteMessages:(id)a3 andCleanUpAddresses:(id)a4 subjects:(id)a5 summaries:(id)a6 brandIndicators:(id)a7 connection:(id)a8
{
  v39 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v36 = a6;
  v17 = a7;
  v18 = a8;
  v34 = v14;
  v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DELETE FROM messages WHERE ROWID IN (%@)", v14];
  if ([v18 executeStatementString:? errorMessage:?])
  {
    v32 = [(MFMailMessageLibrary *)self _existingValuesForColumn:@"sender" table:@"messages" fromValues:v15 connection:v18];
    [v15 minusSet:?];
    v33 = [(MFMailMessageLibrary *)self _existingValuesForColumn:@"address" table:@"recipients" fromValues:v15 connection:v18];
    [v15 minusSet:?];
    v31 = [(MFMailMessageLibrary *)self _deleteRows:v15 fromTable:@"addresses" connection:v18];
    v19 = [(MFMailMessageLibrary *)self persistence];
    v20 = [v19 businessPersistence];
    [v20 addressIDsWereDeleted:v15 connection:v18];

    v21 = [(MFMailMessageLibrary *)self _existingValuesForColumn:@"subject" table:@"messages" fromValues:v16 connection:v18];
    [v16 minusSet:v21];
    v22 = MFLogGeneral();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v38 = v16;
      _os_log_impl(&dword_1B0389000, v22, OS_LOG_TYPE_DEFAULT, "Deleting subjectID set: %{public}@", buf, 0xCu);
    }

    v23 = [(MFMailMessageLibrary *)self _deleteRows:v16 fromTable:@"subjects" connection:v18];
    v24 = [(MFMailMessageLibrary *)self _existingValuesForColumn:@"summary" table:@"messages" fromValues:v36 connection:v18];
    [v36 minusSet:v24];
    v25 = [(MFMailMessageLibrary *)self _deleteRows:v36 fromTable:@"summaries" connection:v18];
    v26 = [(MFMailMessageLibrary *)self _existingValuesForColumn:@"brand_indicator" table:@"messages" fromValues:v17 connection:v18];
    [v17 minusSet:v26];
    v27 = [(MFMailMessageLibrary *)self _deleteRows:v17 fromTable:@"brand_indicators" connection:v18];

    v28 = v27 && v25 && v23 && v31;
  }

  else
  {
    v28 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

- (void)_removeGlobalDataForMessagesIfNecessary:(id)a3 connection:(id)a4
{
  v67 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v40 = a4;
  v41 = [MEMORY[0x1E699B860] transactionWithDescription:{@"Transaction for removing files after compaction", v5}];
  v6 = objc_opt_new();
  v44 = objc_opt_new();
  v45 = objc_opt_new();
  v7 = objc_opt_new();
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
  if (v8)
  {
    v9 = *v63;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v63 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v62 + 1) + 8 * i);
        v12 = [v11 account];
        v13 = [v11 globalMessageID];
        v14 = [MEMORY[0x1E696AD98] numberWithLongLong:v13];
        [v6 addObject:v14];

        v15 = [v12 personaIdentifier];

        if (v15)
        {
          v16 = [v7 objectForKeyedSubscript:v12];
          if (!v16)
          {
            v16 = objc_opt_new();
            [v7 setObject:v16 forKeyedSubscript:v12];
          }

          v17 = [MEMORY[0x1E696AD98] numberWithLongLong:v13];
          [v16 addObject:v17];
        }

        else if ([v12 supportsPurge])
        {
          v16 = [MEMORY[0x1E696AD98] numberWithLongLong:v13];
          [v44 addObject:v16];
        }

        else
        {
          v16 = [MEMORY[0x1E696AD98] numberWithLongLong:v13];
          [v45 addObject:v16];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
    }

    while (v8);
  }

  v18 = objc_opt_new();
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __75__MFMailMessageLibrary__removeGlobalDataForMessagesIfNecessary_connection___block_invoke;
  v55[3] = &unk_1E7AA3F08;
  v19 = v40;
  v56 = v19;
  v57 = self;
  v20 = v7;
  v58 = v20;
  v21 = v44;
  v59 = v21;
  v22 = v45;
  v60 = v22;
  v23 = v18;
  v61 = v23;
  [v6 enumerateObjectsUsingBlock:v55];
  v39 = v20;
  if ([v23 count])
  {
    v38 = objc_opt_new();
    v42 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"generated_summary" table:@"message_global_data"];
    v24 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
    v25 = [v23 allObjects];
    v26 = [v24 in:v25];
    [v42 setWhere:v26];

    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __75__MFMailMessageLibrary__removeGlobalDataForMessagesIfNecessary_connection___block_invoke_5;
    v53[3] = &unk_1E7AA3610;
    v27 = v38;
    v54 = v27;
    [v19 executeSelectStatement:v42 withBlock:v53 error:0];
    v28 = [MEMORY[0x1E699B5C0] generatedSummariesTableName];
    [(MFMailMessageLibrary *)self _deleteRows:v27 fromTable:v28 connection:v19];

    v29 = [MEMORY[0x1E699B5C0] messageGlobalDataTableName];
    [(MFMailMessageLibrary *)self _deleteRows:v23 fromTable:v29 connection:v19];
  }

  v30 = self->_path;
  fileRemovalAfterCompactionScheduler = self->_fileRemovalAfterCompactionScheduler;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __75__MFMailMessageLibrary__removeGlobalDataForMessagesIfNecessary_connection___block_invoke_6;
  v47[3] = &unk_1E7AA3FA0;
  v32 = v21;
  v48 = v32;
  v49 = v30;
  v33 = v22;
  v50 = v33;
  v34 = v39;
  v51 = v34;
  v35 = v41;
  v52 = v35;
  v36 = v30;
  [(EFScheduler *)fileRemovalAfterCompactionScheduler performBlock:v47];

  v37 = *MEMORY[0x1E69E9840];
}

void __75__MFMailMessageLibrary__removeGlobalDataForMessagesIfNecessary_connection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"mailbox" table:@"messages"];
  v5 = [MEMORY[0x1E699B8C8] column:@"global_message_id"];
  v6 = [v5 equalTo:v3];
  [v4 setWhere:v6];

  v7 = objc_opt_new();
  v8 = *(a1 + 32);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __75__MFMailMessageLibrary__removeGlobalDataForMessagesIfNecessary_connection___block_invoke_2;
  v20[3] = &unk_1E7AA3610;
  v9 = v7;
  v21 = v9;
  [v8 executeSelectStatement:v4 withBlock:v20 error:0];
  if ([v9 count])
  {
    v10 = objc_opt_new();
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __75__MFMailMessageLibrary__removeGlobalDataForMessagesIfNecessary_connection___block_invoke_3;
    v18[3] = &unk_1E7AA3EB8;
    v18[4] = *(a1 + 40);
    v11 = v10;
    v19 = v11;
    [v9 enumerateObjectsUsingBlock:v18];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __75__MFMailMessageLibrary__removeGlobalDataForMessagesIfNecessary_connection___block_invoke_4;
    v13[3] = &unk_1E7AA3EE0;
    v14 = *(a1 + 48);
    v15 = v3;
    v16 = *(a1 + 56);
    v17 = *(a1 + 64);
    [v11 enumerateObjectsUsingBlock:v13];
  }

  else
  {
    v12 = *(a1 + 72);
    v11 = [v3 stringValue];
    [v12 addObject:v11];
  }
}

void __75__MFMailMessageLibrary__removeGlobalDataForMessagesIfNecessary_connection___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 objectAtIndexedSubscript:0];
  v3 = [v4 numberValue];
  [v2 addObject:v3];
}

void __75__MFMailMessageLibrary__removeGlobalDataForMessagesIfNecessary_connection___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) urlForMailboxID:{objc_msgSend(v6, "longLongValue")}];
  v4 = [MailAccount mailboxUidFromActiveAccountsForURL:v3];
  v5 = [v4 account];
  if (v5)
  {
    [*(a1 + 40) addObject:v5];
  }
}

void __75__MFMailMessageLibrary__removeGlobalDataForMessagesIfNecessary_connection___block_invoke_4(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 personaIdentifier];

  if (v3)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:v7];
    [v4 removeObject:*(a1 + 40)];
  }

  else
  {
    v5 = [v7 supportsPurge];
    v6 = 56;
    if (v5)
    {
      v6 = 48;
    }

    [*(a1 + v6) removeObject:*(a1 + 40)];
  }
}

void __75__MFMailMessageLibrary__removeGlobalDataForMessagesIfNecessary_connection___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 objectAtIndexedSubscript:0];
  v4 = [v3 stringValue];

  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }
}

void __75__MFMailMessageLibrary__removeGlobalDataForMessagesIfNecessary_connection___block_invoke_6(uint64_t a1)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__MFMailMessageLibrary__removeGlobalDataForMessagesIfNecessary_connection___block_invoke_7;
  v9[3] = &unk_1E7AA3F30;
  v2 = *(a1 + 32);
  v10 = *(a1 + 40);
  [v2 enumerateObjectsUsingBlock:v9];
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __75__MFMailMessageLibrary__removeGlobalDataForMessagesIfNecessary_connection___block_invoke_8;
  v7 = &unk_1E7AA3F30;
  v3 = *(a1 + 48);
  v8 = *(a1 + 40);
  [v3 enumerateObjectsUsingBlock:&v4];
  [*(a1 + 56) enumerateKeysAndObjectsUsingBlock:{&__block_literal_global_1351, v4, v5, v6, v7}];
  [*(a1 + 64) invalidate];
}

void __75__MFMailMessageLibrary__removeGlobalDataForMessagesIfNecessary_connection___block_invoke_7(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [MEMORY[0x1E699B5B0] messageDataDirectoryURLForGlobalMessageID:objc_msgSend(v5 basePath:"longLongValue") purgeable:{*(a1 + 32), 1}];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  [v4 removeItemAtURL:v3 error:0];
}

void __75__MFMailMessageLibrary__removeGlobalDataForMessagesIfNecessary_connection___block_invoke_8(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [MEMORY[0x1E699B5B0] messageDataDirectoryURLForGlobalMessageID:objc_msgSend(v5 basePath:"longLongValue") purgeable:{*(a1 + 32), 0}];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  [v4 removeItemAtURL:v3 error:0];
}

void __75__MFMailMessageLibrary__removeGlobalDataForMessagesIfNecessary_connection___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 supportsPurge];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__MFMailMessageLibrary__removeGlobalDataForMessagesIfNecessary_connection___block_invoke_10;
  v8[3] = &unk_1E7AA3F78;
  v7 = v4;
  v9 = v7;
  v10 = v6;
  [v5 enumerateObjectsUsingBlock:v8];
}

void __75__MFMailMessageLibrary__removeGlobalDataForMessagesIfNecessary_connection___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E699B5B0];
  v9 = v3;
  v5 = [v3 longLongValue];
  v6 = [*(a1 + 32) path];
  v7 = [v4 messageDataDirectoryURLForGlobalMessageID:v5 basePath:v6 purgeable:*(a1 + 40)];

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  [v8 removeItemAtURL:v7 error:0];
}

- (id)_existingValuesForColumn:(id)a3 table:(id)a4 fromValues:(id)a5 connection:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [MEMORY[0x1E695DFA8] set];
  if ([v11 count])
  {
    v14 = objc_alloc(MEMORY[0x1E696AEC0]);
    v15 = [v11 allObjects];
    v16 = [v15 componentsJoinedByString:{@", "}];
    v17 = [v14 initWithFormat:@"SELECT DISTINCT %@ FROM %@ WHERE %@ IN (%@)", v9, v10, v9, v16];

    v18 = [v12 preparedStatementForQueryString:v17];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __77__MFMailMessageLibrary__existingValuesForColumn_table_fromValues_connection___block_invoke;
    v26[3] = &unk_1E7AA3610;
    v19 = v13;
    v27 = v19;
    v25 = 0;
    v20 = [v18 executeUsingBlock:v26 error:&v25];
    v21 = v25;
    if ((v20 & 1) == 0)
    {
      [v12 handleError:v21 message:@"Fetching value"];
    }

    v22 = v27;
    v23 = v19;
  }

  return v13;
}

void __77__MFMailMessageLibrary__existingValuesForColumn_table_fromValues_connection___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 objectAtIndexedSubscript:0];
  v3 = [v4 stringValue];
  [v2 addObject:v3];
}

- (int64_t)_maxRowIDInSet:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    v6 = 0x8000000000000000;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) longLongValue];
        if (v8 > v6)
        {
          v6 = v8;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0x8000000000000000;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)_deleteRows:(id)a3 fromTable:(id)a4 connection:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = [v8 allObjects];
    v13 = [v12 componentsJoinedByString:{@", "}];
    v14 = [v11 initWithFormat:@"DELETE FROM %@ WHERE ROWID IN (%@)", v9, v13];

    [v10 executeStatementString:v14 errorMessage:@"Deleting rows"];
    v15 = [(MFMailMessageLibrary *)self _maxRowIDInSet:v8];
    v16 = MFLogGeneral();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v21 = v9;
      v22 = 2048;
      v23 = v15;
      _os_log_impl(&dword_1B0389000, v16, OS_LOG_TYPE_INFO, "Update largest_deleted_rowid for %{public}@ to %lld", buf, 0x16u);
    }

    v17 = [MEMORY[0x1E699B6E8] updateLargestDeletedRowID:v15 forTableName:v9 withConnection:v10];
  }

  else
  {
    v17 = 1;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)compactMailbox:(id)a3
{
  v26[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[MFActivityMonitor currentMonitor];
  [v5 addReason:@"MonitoredActivityReasonCompacting"];

  v6 = [MFMessageCriterion messageIsDeletedCriterion:1];
  v7 = [MFMessageCriterion criterionForMailboxURL:v4];
  v26[0] = v7;
  v26[1] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v9 = [MFMessageCriterion andCompoundCriterionWithCriteria:v8];

  v10 = [(MFMailMessageLibrary *)self messagesMatchingCriterion:v9 options:0];
  v11 = [MailAccount mailboxUidFromActiveAccountsForURL:v4];
  v12 = v11;
  if (v11)
  {
    v25 = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  }

  else
  {
    v13 = 0;
  }

  if ([v10 count])
  {
    [(MFMailMessageLibrary *)self _notifyDidCompact:0 messages:v10 mailboxes:v13];
    [(MFMailMessageLibrary *)self removeSearchableItemsForMessages:v10];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v14 = objc_opt_new();
    v15 = *MEMORY[0x1E699B3A0];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __39__MFMailMessageLibrary_compactMailbox___block_invoke;
    v18[3] = &unk_1E7AA3FF0;
    v18[4] = self;
    v20 = &v21;
    v16 = v14;
    v19 = v16;
    [v10 ef_enumerateObjectsInBatchesOfSize:v15 block:v18];
    if (*(v22 + 24) == 1)
    {
      [(MFMailMessageLibrary *)self cleanupProtectedTables];
      [(MFMailMessageLibrary *)self _notifyDidCompact:1 messages:v16 mailboxes:v13];
    }

    _Block_object_dispose(&v21, 8);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __39__MFMailMessageLibrary_compactMailbox___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) database];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary compactMailbox:]_block_invoke"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__MFMailMessageLibrary_compactMailbox___block_invoke_2;
  v10[3] = &unk_1E7AA3FC8;
  v8 = *(a1 + 32);
  v12 = *(a1 + 48);
  v10[4] = v8;
  v9 = v5;
  v11 = v9;
  [v6 __performWriteWithCaller:v7 usingBlock:v10];

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(a1 + 40) addObjectsFromArray:v9];
  }

  else
  {
    *a3 = 1;
  }
}

uint64_t __39__MFMailMessageLibrary_compactMailbox___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _deleteMessages:*(a1 + 40) connection:v3];
  v4 = *(*(*(a1 + 48) + 8) + 24);

  return v4;
}

- (BOOL)renameMailboxes:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E699B608]);
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v9 = [v6 count];
  if (v9 == [v7 count])
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = [(MFMailMessageLibrary *)self database];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary renameMailboxes:to:]"];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __43__MFMailMessageLibrary_renameMailboxes_to___block_invoke;
    v21 = &unk_1E7AA4018;
    v13 = v8;
    v22 = v13;
    v23 = v6;
    v27 = &v28;
    v24 = v7;
    v25 = self;
    v14 = v10;
    v26 = v14;
    [v11 __performWriteWithCaller:v12 usingBlock:&v18];

    if ([v14 count])
    {
      v15 = [(MFMailMessageLibrary *)self hookRegistry];
      [v15 persistenceDidDeleteAllMessagesInMailboxesWithURLs:v14 generationWindow:v13];
    }

    v16 = *(v29 + 6) == 0;
  }

  else
  {
    v16 = 0;
    *(v29 + 6) = 1;
  }

  _Block_object_dispose(&v28, 8);

  return v16;
}

BOOL __43__MFMailMessageLibrary_renameMailboxes_to___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  v4 = [v3 sqlDB];
  v5 = [*(a1 + 40) count];
  if (v5)
  {
    v6 = v5 - 1;
    do
    {
      if (*(*(*(a1 + 72) + 8) + 24))
      {
        break;
      }

      v7 = [*(a1 + 40) objectAtIndex:v6];
      v8 = [*(a1 + 48) objectAtIndex:v6];
      *(*(*(a1 + 72) + 8) + 24) = sqlite3_exec_printf(v4, "UPDATE mailboxes SET url = '%q' WHERE url = '%q';", 0, 0, 0, [v8 UTF8String], objc_msgSend(v7, "UTF8String"));
      if (*(*(*(a1 + 72) + 8) + 24) == 19)
      {
        *(*(*(a1 + 72) + 8) + 24) = sqlite3_exec_printf(v4, "DELETE FROM mailboxes WHERE url = '%q'", 0, 0, 0, [v8 UTF8String]);
        [v3 checkForConnectionErrorWithMessage:@"deleting mailbox URL"];
        if (!*(*(*(a1 + 72) + 8) + 24))
        {
          v9 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v8];
          v10 = [*(a1 + 56) hookRegistry];
          [v10 persistenceIsDeletingAllMessagesInMailboxWithURL:v9 generationWindow:*(a1 + 32)];

          [*(a1 + 64) addObject:v9];
          *(*(*(a1 + 72) + 8) + 24) = sqlite3_exec_printf(v4, "UPDATE mailboxes SET url = '%q' WHERE url = '%q';", 0, 0, 0, [v8 UTF8String], objc_msgSend(v7, "UTF8String"));
          [v3 checkForConnectionErrorWithMessage:@"renaming mailbox"];
        }
      }

      else
      {
        [v3 checkForConnectionErrorWithMessage:@"renaming mailbox"];
      }

      --v6;
    }

    while (v6 != -1);
  }

  [*(a1 + 56) reloadMailboxCacheWithConnection:v3];
  v11 = *(*(*(a1 + 72) + 8) + 24) == 0;

  return v11;
}

- (void)deleteMailboxes:(id)a3 account:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [(MFMailMessageLibrary *)self removeAllMessagesFromMailbox:*(*(&v10 + 1) + 8 * v8++) removeMailbox:1 andNotify:0, v10];
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeAllMessagesFromMailbox:(id)a3 removeMailbox:(BOOL)a4 andNotify:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v45[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = +[MFActivityMonitor currentMonitor];
  [v9 addReason:@"MonitoredActivityReasonCompacting"];

  v10 = [MFMessageCriterion criterionForMailboxURL:v8];
  v11 = [(MFMailMessageLibrary *)self messagesMatchingCriterion:v10 options:0];
  v28 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v8];
  v12 = [MailAccount mailboxUidFromActiveAccountsForURL:v8];
  if (v12)
  {
    [(MFMailMessageLibrary *)self removeSearchableItemsForMailbox:v12];
  }

  if ([v11 count])
  {
    if (v12)
    {
      v45[0] = v12;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
      if (v5)
      {
        [(MFMailMessageLibrary *)self _notifyDidCompact:0 messages:v11 mailboxes:?];
      }
    }

    else
    {
      v27 = 0;
    }

    v25 = [(MFMailMessageLibrary *)self hookRegistry];
    v26 = objc_alloc_init(MEMORY[0x1E699B810]);
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v24 = v10;
    v13 = [v11 count];
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x2020000000;
    v39[3] = 0;
    v14 = objc_alloc_init(MEMORY[0x1E699B608]);
    v15 = *MEMORY[0x1E699B3A0];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __77__MFMailMessageLibrary_removeAllMessagesFromMailbox_removeMailbox_andNotify___block_invoke;
    v32[3] = &unk_1E7AA4068;
    v32[4] = self;
    v16 = v14;
    v33 = v16;
    v36 = &v40;
    v37 = v39;
    v38 = v13;
    v17 = v25;
    v34 = v17;
    v18 = v28;
    v35 = v18;
    [v11 ef_enumerateObjectsInBatchesOfSize:v15 block:v32];
    v19 = *(v41 + 24);
    v10 = v24;
    if (v19 == 1)
    {
      v44 = v18;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
      [v17 persistenceDidDeleteAllMessagesInMailboxesWithURLs:v20 generationWindow:v16];

      [(MFMailMessageLibrary *)self _removeSearchableItemsWithLibraryIDs:v26];
      [(MFMailMessageLibrary *)self cleanupProtectedTables];
      LOBYTE(v19) = *(v41 + 24);
    }

    if (v12 && (v19 & 1) != 0 && v5)
    {
      [(MFMailMessageLibrary *)self _notifyDidCompact:1 messages:v11 mailboxes:v27];
    }

    _Block_object_dispose(v39, 8);
    _Block_object_dispose(&v40, 8);
  }

  if (v6)
  {
    v21 = [(MFMailMessageLibrary *)self database];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary removeAllMessagesFromMailbox:removeMailbox:andNotify:]"];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __77__MFMailMessageLibrary_removeAllMessagesFromMailbox_removeMailbox_andNotify___block_invoke_3;
    v29[3] = &unk_1E7AA3D10;
    v30 = v8;
    v31 = self;
    [v21 __performWriteWithCaller:v22 usingBlock:v29];
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __77__MFMailMessageLibrary_removeAllMessagesFromMailbox_removeMailbox_andNotify___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) database];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary removeAllMessagesFromMailbox:removeMailbox:andNotify:]_block_invoke"];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __77__MFMailMessageLibrary_removeAllMessagesFromMailbox_removeMailbox_andNotify___block_invoke_2;
  v18[3] = &unk_1E7AA4040;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v19 = v8;
  v20 = v9;
  v16 = *(a1 + 64);
  v10 = v5;
  v11 = *(a1 + 80);
  v21 = v10;
  v24 = v11;
  *&v12 = v16;
  *(&v12 + 1) = *(a1 + 72);
  v17 = v12;
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  *&v15 = v13;
  *(&v15 + 1) = v14;
  v23 = v17;
  v22 = v15;
  [v6 __performWriteWithCaller:v7 usingBlock:v18];

  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }
}

uint64_t __77__MFMailMessageLibrary_removeAllMessagesFromMailbox_removeMailbox_andNotify___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 40) _deleteMessages:*(a1 + 48) connection:v3];
  *(*(*(a1 + 80) + 8) + 24) += [*(a1 + 48) count];
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    if (*(*(*(a1 + 80) + 8) + 24) == *(a1 + 88))
    {
      [*(a1 + 56) persistenceIsDeletingAllMessagesInMailboxWithURL:*(a1 + 64) generationWindow:*(a1 + 32)];
      v4 = *(*(*(a1 + 72) + 8) + 24);
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t __77__MFMailMessageLibrary_removeAllMessagesFromMailbox_removeMailbox_andNotify___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  sqlite3_exec_printf([v3 sqlDB], "DELETE FROM mailboxes WHERE url = '%q'", 0, 0, 0, objc_msgSend(*(a1 + 32), "UTF8String"));
  [*(a1 + 40) removeURLFromMailboxCache:*(a1 + 32)];
  v4 = [v3 checkForConnectionErrorWithMessage:@"deleting mailbox"];

  return v4;
}

- (id)dataPathForMessage:(id)a3 type:(int64_t)a4
{
  v4 = [(MFMailMessageLibrary *)self dataFileURLForMessage:a3 type:a4];
  v5 = [v4 path];

  return v5;
}

- (id)dataFileURLForMessage:(id)a3 type:(int64_t)a4
{
  v6 = @"full.emlx";
  if (a4 == 1)
  {
    v6 = @"partial.emlx";
  }

  if (a4 == 2)
  {
    v6 = @"headers.emlx";
  }

  v7 = v6;
  v8 = [(MFMailMessageLibrary *)self dataDirectoryURLForMessage:a3];
  v9 = [v8 URLByAppendingPathComponent:v7 isDirectory:0];

  return v9;
}

- (id)dataDirectoryURLForMessage:(id)a3
{
  v4 = a3;
  v5 = [(MFMailMessageLibrary *)self bodyMigrator];
  [v5 migrateBodyForMessageIfNecessary:v4];

  v6 = [v4 globalMessageID];
  v7 = [v4 account];
  v8 = [(MFMailMessageLibrary *)self messageBasePathForAccount:v7];
  v9 = [MEMORY[0x1E699B5B0] messageDataDirectoryURLForGlobalMessageID:v6 basePath:v8 purgeable:{objc_msgSend(v7, "supportsPurge")}];

  return v9;
}

- (id)dataPathForMessage:(id)a3
{
  v3 = [(MFMailMessageLibrary *)self dataPathForMessage:a3 type:0];

  return v3;
}

- (id)dataPathForMessage:(id)a3 part:(id)a4
{
  v4 = _dataPathForMessageAndPart(self, a3, a4);

  return v4;
}

- (int64_t)deleteAttachmentsForMessage:(id)a3 inMailboxFileURL:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18 = +[MFAttachmentManager defaultManager];
  [v18 attachmentsForMessage:v4 withSchemes:0];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  obj = v21 = 0u;
  v5 = 0;
  v6 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v6)
  {
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [v4 storageLocationForAttachment:*(*(&v20 + 1) + 8 * v8)];
        v10 = [MEMORY[0x1E696AC08] defaultManager];
        v11 = [v10 attributesOfItemAtPath:v9 error:0];

        if (v11)
        {
          v12 = [v11 fileSize];
          v13 = [MEMORY[0x1E696AC08] defaultManager];
          [v13 removeItemAtPath:v9 error:0];

          v5 += v12;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v6);
  }

  v14 = EDLibraryLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v4 ef_publicDescription];
    *buf = 134218242;
    v25 = v5;
    v26 = 2114;
    v27 = v15;
    _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_DEFAULT, "Deleted %lld bytes of attachments for message %{public}@", buf, 0x16u);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)fileAttributesForMessage:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [(MFMailMessageLibrary *)self dataPathForMessage:v4 type:0];
  v7 = [v5 attributesOfItemAtPath:v6 error:0];
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = [(MFMailMessageLibrary *)self dataPathForMessage:v4 type:1];

    v7 = [v5 attributesOfItemAtPath:v8 error:0];
  }

  v9 = v7;

  return v9;
}

- (void)fileURLForAttachmentPersistentID:(id)a3 messageID:(id)a4 result:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = -[MFMailMessageLibrary messageWithLibraryID:options:inMailbox:](self, "messageWithLibraryID:options:inMailbox:", [v9 intValue], 0, 0);
  v12 = MEMORY[0x1E695DFF8];
  v13 = [v11 account];
  v14 = [(MFMailMessageLibrary *)self messageBasePathForAccount:v13];
  v15 = [v12 fileURLWithPath:v14 isDirectory:1];

  v16 = +[MFAttachmentManager defaultManager];
  v17 = [v16 persistenceManager];
  v18 = [v17 attachmentURLForMessageAttachmentID:v8 basePath:v15];

  if (!v18 || !v11)
  {
LABEL_8:
    (*(v10 + 2))(v10, 0, 0);
    goto LABEL_9;
  }

  v19 = [MEMORY[0x1E696AC08] defaultManager];
  v20 = [v18 path];
  v21 = [v19 isReadableFileAtPath:v20];

  if (!v21)
  {
    v22 = EDLibraryLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = v18;
      _os_log_impl(&dword_1B0389000, v22, OS_LOG_TYPE_DEFAULT, "Unable to read attachment at URL %@", &v24, 0xCu);
    }

    goto LABEL_8;
  }

  (*(v10 + 2))(v10, v18, v11);
LABEL_9:

  v23 = *MEMORY[0x1E69E9840];
}

- (id)dataConsumerForMessage:(id)a3 part:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[_MFDataCollector alloc] initWithLibrary:self message:v6 part:v7 partial:0 incomplete:0 relaxDataProtection:0 data:0];

  return v8;
}

- (id)existingMIMEPartsForMessage:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v20 = [(MFMailMessageLibrary *)self dataDirectoryURLForMessage:a3];
  v3 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v4 = *MEMORY[0x1E695DC30];
  v27[0] = *MEMORY[0x1E695DC30];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v6 = [v3 contentsOfDirectoryAtURL:v20 includingPropertiesForKeys:v5 options:4 error:0];

  if (v6)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v21 = 0;
          v13 = [v12 getResourceValue:&v21 forKey:v4 error:{0, v20}];
          v14 = v21;
          v15 = v14;
          if (v14)
          {
            v16 = v13;
          }

          else
          {
            v16 = 0;
          }

          if (v16)
          {
            v17 = mimePartFromFilename(v14);
            if (v17)
            {
              [v7 addObject:v17];
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v18 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)downloadedMessageDataForMessage:(id)a3
{
  v4 = a3;
  v5 = [(MFMailMessageLibrary *)self dataFileURLForMessage:v4 type:0];
  v6 = [v5 checkResourceIsReachableAndReturnError:0];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E699B630]);
    v8 = [v7 initWithHeadersOnlyData:0 partialMessageData:0 hasFullMessageData:1 hasPartialMessageData:0 mimeParts:MEMORY[0x1E695E0F0]];
    goto LABEL_9;
  }

  v9 = [(MFMailMessageLibrary *)self existingMIMEPartsForMessage:v4];
  v10 = [(MFMailMessageLibrary *)self dataFileURLForMessage:v4 type:1];
  v11 = mappedDispatchDataFromFileURL(v10);
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E699B630]) initWithHeadersOnlyData:0 partialMessageData:v11 hasFullMessageData:0 hasPartialMessageData:1 mimeParts:v9];
  }

  else
  {
    if (![v10 checkResourceIsReachableAndReturnError:0])
    {
      v14 = [(MFMailMessageLibrary *)self dataFileURLForMessage:v4 type:2];
      v15 = mappedDispatchDataFromFileURL(v14);

      if (v15)
      {
        v16 = [objc_alloc(MEMORY[0x1E699B630]) initWithHeadersOnlyData:v15 partialMessageData:0 hasFullMessageData:0 hasPartialMessageData:0 mimeParts:v9];
      }

      else
      {
        v16 = [objc_alloc(MEMORY[0x1E699B630]) initWithHeadersOnlyData:0 partialMessageData:0 hasFullMessageData:0 hasPartialMessageData:0 mimeParts:v9];
      }

      v8 = v16;

      goto LABEL_8;
    }

    v12 = [objc_alloc(MEMORY[0x1E699B630]) initWithHeadersOnlyData:0 partialMessageData:0 hasFullMessageData:0 hasPartialMessageData:1 mimeParts:v9];
  }

  v8 = v12;
LABEL_8:

LABEL_9:

  return v8;
}

- (BOOL)_setMessageData:(id)a3 libraryID:(int64_t)a4 part:(id)a5 partial:(BOOL)a6 complete:(BOOL)a7 connection:(id)a8
{
  v9 = a7;
  v10 = a6;
  v15 = a3;
  v16 = a5;
  v17 = a8;
  if ([v16 isEqualToString:@"summary"])
  {
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"MailMessageLibrary.m" lineNumber:5934 description:@"Attempting to store summary in protected message data table"];
  }

  v18 = [v17 preparedStatementForQueryString:@"SELECT rowid FROM message_data WHERE message_id = ? AND part = ?"];
  v19 = [v18 compiled];

  sqlite3_bind_int64(v19, 1, a4);
  sqlite3_bind_text(v19, 2, [v16 UTF8String], -1, 0);
  if (sqlite3_step(v19) == 100)
  {
    v20 = sqlite3_column_int64(v19, 0);
  }

  else
  {
    v20 = 0;
  }

  sqlite3_reset(v19);
  v21 = [v17 checkForConnectionErrorWithMessage:@"searching for existing message_data entry"] ^ 1;
  if (v21)
  {
    goto LABEL_33;
  }

  if (v20)
  {
    v22 = @"UPDATE message_data SET message_id = :message_id, part = :part, partial = :partial, complete = :complete, length = :length WHERE rowid = :rowid";
  }

  else
  {
    v22 = @"INSERT INTO message_data (message_id, part, partial, complete, length) VALUES (:message_id, :part, :partial, :complete, :length)";
  }

  v23 = [v17 preparedStatementForQueryString:v22];
  v24 = [v23 compiled];

  if (v24)
  {
    v25 = sqlite3_bind_parameter_index(v24, ":message_id");
    sqlite3_bind_int64(v24, v25, a4);
    v26 = [v16 UTF8String];
    v27 = sqlite3_bind_parameter_index(v24, ":part");
    if (v26)
    {
      sqlite3_bind_text(v24, v27, v26, -1, 0);
    }

    else
    {
      sqlite3_bind_null(v24, v27);
    }

    v28 = sqlite3_bind_parameter_index(v24, ":partial");
    if (v10)
    {
      sqlite3_bind_int(v24, v28, 1);
    }

    else
    {
      sqlite3_bind_null(v24, v28);
    }

    v29 = sqlite3_bind_parameter_index(v24, ":complete");
    if (v9)
    {
      sqlite3_bind_int(v24, v29, 1);
    }

    else
    {
      sqlite3_bind_null(v24, v29);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = sqlite3_bind_parameter_index(v24, ":length");
      sqlite3_bind_int(v24, v30, [v15 length]);
    }

    else
    {
      v31 = sqlite3_bind_parameter_index(v24, ":length");
      sqlite3_bind_null(v24, v31);
    }

    if (v20)
    {
      v32 = sqlite3_bind_parameter_index(v24, ":rowid");
      sqlite3_bind_int64(v24, v32, v20);
    }

    v33 = sqlite3_step(v24);
    if (v33 == 101)
    {
      insert_rowid = v20;
    }

    else
    {
      insert_rowid = 0xAAAAAAAAAAAAAAAALL;
    }

    v35 = (v33 != 101) | v21;
    if (!v20 && v33 == 101)
    {
      insert_rowid = sqlite3_last_insert_rowid([v17 sqlDB]);
      v35 = 0;
    }

    sqlite3_reset(v24);
    [v17 checkForConnectionErrorWithMessage:@"inserting message data (unprotected)"];
    if (v35)
    {
      goto LABEL_33;
    }

    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38 = [v15 ef_hexString];
        v39 = sqlite3_mprintf("INSERT OR REPLACE INTO protected_message_data (ROWID, data) VALUES (%lld, X'%s');", insert_rowid, [v38 cStringUsingEncoding:1]);

        if (!v39)
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_44:
        v36 = 1;
        goto LABEL_34;
      }

      v40 = sqlite3_mprintf("INSERT OR REPLACE INTO protected_message_data (ROWID, data) VALUES (%lld, %Q);", insert_rowid, [v15 UTF8String]);
    }

    else
    {
      v40 = sqlite3_mprintf("INSERT OR REPLACE INTO protected_message_data (ROWID, data) VALUES (%lld, NULL);", insert_rowid);
    }

    v39 = v40;
    if (v40)
    {
LABEL_43:
      v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v39];
      [v17 executeStatementString:v41 errorMessage:@"Inserting into protected_message_data"];

      sqlite3_free(v39);
      goto LABEL_44;
    }

    goto LABEL_44;
  }

  [v17 checkForConnectionErrorWithMessage:@"preparing insert statement"];
LABEL_33:
  v36 = 0;
LABEL_34:

  return v36;
}

- (void)setSummary:(id)a3 forMessage:(id)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 mailbox];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E699B608]);
    v10 = [(MFMailMessageLibrary *)self database];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary setSummary:forMessage:]"];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __46__MFMailMessageLibrary_setSummary_forMessage___block_invoke;
    v21[3] = &unk_1E7AA3C70;
    v21[4] = self;
    v22 = v6;
    v12 = v7;
    v23 = v12;
    [v10 __performWriteWithCaller:v11 usingBlock:v21];

    v13 = MFLogGeneral();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v12 libraryID];
      *buf = 134217984;
      v25 = v14;
      _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_DEFAULT, "Summary updated for %lld", buf, 0xCu);
    }

    v15 = [(MFMailMessageLibrary *)self hookRegistry];
    v26[0] = *MEMORY[0x1E699B1D8];
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    [v15 persistenceDidUpdateProperties:v16 message:v12 generationWindow:v9];
  }

  else
  {
    v18 = EDLibraryLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [v7 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [v7 messageStore];
      objc_claimAutoreleasedReturnValue();
      [MFMailMessageLibrary setSummary:forMessage:];
    }

    v19 = [MEMORY[0x1E699B7B0] currentDevice];
    if ([v19 isInternal])
    {
    }

    else
    {
      v20 = EFIsSeedBuild();

      if ((v20 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v9 = EDLibraryLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [v7 messageStore];
      objc_claimAutoreleasedReturnValue();
      [MFMailMessageLibrary setSummary:forMessage:];
    }
  }

LABEL_6:
  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __46__MFMailMessageLibrary_setSummary_forMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _setSummary:*(a1 + 40) forMessageWithRowID:objc_msgSend(*(a1 + 48) connection:{"libraryID"), v3}];

  return v4;
}

- (BOOL)_setSummary:(id)a3 forMessageWithRowID:(int64_t)a4 connection:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [objc_alloc(MEMORY[0x1E699B948]) initWithResult:&unk_1F2775958 table:@"messages"];
  v11 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v12 = [MEMORY[0x1E696AD98] numberWithLongLong:a4];
  v13 = [v11 equalTo:v12];
  [v10 setWhere:v13];

  [v10 setLimit:1];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v30 = 0;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __67__MFMailMessageLibrary__setSummary_forMessageWithRowID_connection___block_invoke;
  v31[3] = &unk_1E7AA3810;
  v31[4] = &v32;
  LOBYTE(v12) = [v9 executeSelectStatement:v10 withBlock:v31 error:&v30];
  v14 = v30;
  if (v12)
  {
    if (v33[3])
    {
      v15 = EDLibraryLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [MEMORY[0x1E699B7B0] currentDevice];
        if ([v16 isInternal])
        {
          [MEMORY[0x1E699B858] ec_partiallyRedactedStringForSubjectOrSummary:v8];
        }

        else
        {
          [MEMORY[0x1E699B858] fullyRedactedStringForString:v8];
        }
        v20 = ;
        *buf = 134218242;
        v38 = a4;
        v39 = 2112;
        v40 = v20;
        _os_log_impl(&dword_1B0389000, v15, OS_LOG_TYPE_DEFAULT, "Updating summary for message with row ID: %lld; summary: %@", buf, 0x16u);
      }

      v28 = [v8 ef_UTF8ConvertibleString];

      v21 = [(MFMailMessageLibrary *)self _findOrCreateDatabaseIDForSummary:v28 cache:0 connection:v9];
      v18 = [v9 preparedStatementForQueryString:@"UPDATE messages SET summary = ? WHERE ROWID = ?"];

      if (v21 == *MEMORY[0x1E699A728])
      {
        [MEMORY[0x1E695DFB0] null];
      }

      else
      {
        [MEMORY[0x1E696AD98] numberWithLongLong:v21];
      }
      v22 = ;
      v36[0] = v22;
      v23 = [MEMORY[0x1E696AD98] numberWithLongLong:a4];
      v36[1] = v23;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
      v29 = 0;
      v17 = [v18 executeWithIndexedBindings:v24 usingBlock:0 error:&v29];
      v14 = v29;

      if ((v17 & 1) == 0)
      {
        [v9 handleError:v14 message:@"Setting summary"];
      }

      v8 = v28;
    }

    else
    {
      v18 = EDLibraryLog();
      v17 = 1;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [MEMORY[0x1E699B7B0] currentDevice];
        if ([v19 isInternal])
        {
          [MEMORY[0x1E699B858] ec_partiallyRedactedStringForSubjectOrSummary:v8];
        }

        else
        {
          [MEMORY[0x1E699B858] fullyRedactedStringForString:v8];
        }
        v25 = ;
        *buf = 134218242;
        v38 = a4;
        v39 = 2112;
        v40 = v25;
        _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_INFO, "Skipping summary update for non-existent message with row ID: %lld; summary: %@", buf, 0x16u);

        v17 = 1;
      }
    }
  }

  else
  {
    [v9 handleError:v14 message:@"Checking for message existence when setting summary"];
    v17 = 0;
  }

  _Block_object_dispose(&v32, 8);

  v26 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)loadData:(id)a3 forMessage:(id)a4 usingBlock:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v9 isEqualToString:@"summary"])
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"MailMessageLibrary.m" lineNumber:6068 description:@"Attempting to load summary from protected message data table"];
  }

  v12 = EDLibraryLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_INFO, "Fetching partName: %@ for message: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v28 = __Block_byref_object_copy__6;
  v29 = __Block_byref_object_dispose__6;
  v30 = 0;
  v13 = [(MFMailMessageLibrary *)self database];
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary loadData:forMessage:usingBlock:]"];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __55__MFMailMessageLibrary_loadData_forMessage_usingBlock___block_invoke;
  v22[3] = &unk_1E7AA40B8;
  v22[4] = self;
  v15 = v10;
  v23 = v15;
  v16 = v9;
  v24 = v16;
  v26 = buf;
  v17 = v11;
  v25 = v17;
  [v13 __performReadWithCaller:v14 usingBlock:v22];

  v18 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

uint64_t __55__MFMailMessageLibrary_loadData_forMessage_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) isProtectedDataAvailable:v3])
  {
    v4 = [v3 preparedStatementForQueryString:@"SELECT data FROM protected_message_data WHERE ROWID = (SELECT ROWID FROM message_data WHERE message_id = ? AND part = ?)"];
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 40), "libraryID")}];
    v22[0] = v5;
    v6 = *(a1 + 48);
    v7 = v6;
    if (!v6)
    {
      v7 = [MEMORY[0x1E695DFB0] null];
    }

    v22[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __55__MFMailMessageLibrary_loadData_forMessage_usingBlock___block_invoke_2;
    v18[3] = &unk_1E7AA4090;
    v16 = *(a1 + 56);
    v9 = v16;
    v21 = v16;
    v19 = *(a1 + 48);
    v10 = v4;
    v20 = v10;
    v17 = 0;
    v11 = [v10 executeWithIndexedBindings:v8 usingBlock:v18 error:&v17];
    v12 = v6 == 0;
    v13 = v17;

    if (v12)
    {
    }

    if ((v11 & 1) == 0)
    {
      [v3 handleError:v13 message:@"Fetching message data"];
    }
  }

  else
  {
    v10 = EDLibraryLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __55__MFMailMessageLibrary_loadData_forMessage_usingBlock___block_invoke_cold_1(a1);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return 1;
}

void __55__MFMailMessageLibrary_loadData_forMessage_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 dataValue];

  v6 = (*(*(a1 + 48) + 16))();
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = EDLibraryLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) originalString];
    v13 = 138412802;
    v14 = v10;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v11;
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)loadMeetingDataForMessage:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__MFMailMessageLibrary_loadMeetingDataForMessage___block_invoke;
  v8[3] = &unk_1E7AA40E0;
  v9 = v4;
  v5 = v4;
  v6 = [(MFMailMessageLibrary *)self loadData:@"meeting data" forMessage:v5 usingBlock:v8];

  return v6;
}

id __50__MFMailMessageLibrary_loadMeetingDataForMessage___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = EDLibraryLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_INFO, "Loaded Meeting data %@ for message : %@", &v8, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)loadMeetingExternalIDForMessage:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__MFMailMessageLibrary_loadMeetingExternalIDForMessage___block_invoke;
  v8[3] = &unk_1E7AA40E0;
  v9 = v4;
  v5 = v4;
  v6 = [(MFMailMessageLibrary *)self loadData:@"meeting" forMessage:v5 usingBlock:v8];

  return v6;
}

id __56__MFMailMessageLibrary_loadMeetingExternalIDForMessage___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:4];
  v5 = EDLibraryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_INFO, "Loaded Exchange Calendar externalID: %@ for message: %@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)loadMeetingMetadataForMessage:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__MFMailMessageLibrary_loadMeetingMetadataForMessage___block_invoke;
  v8[3] = &unk_1E7AA40E0;
  v9 = v4;
  v5 = v4;
  v6 = [(MFMailMessageLibrary *)self loadData:@"meeting metadata" forMessage:v5 usingBlock:v8];

  return v6;
}

id __54__MFMailMessageLibrary_loadMeetingMetadataForMessage___block_invoke(uint64_t a1, void *a2)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = MEMORY[0x1E696ACD0];
    v5 = MEMORY[0x1E695DFD8];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
    v7 = [v5 setWithArray:v6];
    v8 = [v4 unarchivedObjectOfClasses:v7 fromData:v3 error:0];

    v9 = EDLibraryLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v13 = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_1B0389000, v9, OS_LOG_TYPE_INFO, "Loaded Exchange Calendar meeting data %@ for message : %@", &v13, 0x16u);
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)bodyDataAtPath:(id)a3 headerData:(id *)a4
{
  v15[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![v5 length])
  {
    v9 = 0;
    goto LABEL_15;
  }

  v15[0] = 0;
  v6 = [objc_alloc(MEMORY[0x1E69AD6B0]) initWithContentsOfFile:v5 options:3 error:v15];
  v7 = v15[0];
  v8 = v7;
  if (!v6)
  {
    v10 = [v7 domain];
    if ([v10 isEqual:*MEMORY[0x1E696A250]])
    {
      v11 = [v8 code] == 260;

      if (v11)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v12 = EDLibraryLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [MEMORY[0x1E699B858] fullyOrPartiallyRedactedStringForString:v5];
      objc_claimAutoreleasedReturnValue();
      [v8 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [MFMailMessageLibrary bodyDataAtPath:headerData:];
    }

    goto LABEL_13;
  }

  if (![v6 length])
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  v9 = _bodyDataFromData(v6, a4);
LABEL_14:

LABEL_15:
  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)updateUnprefixedSubjectTo:(id)a3 forMessage:(id)a4
{
  v27[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"MailMessageLibrary.m" lineNumber:6164 description:@"Updating the subject but FF is not enabled"];
  }

  v9 = objc_alloc_init(MEMORY[0x1E699B608]);
  v10 = [(MFMailMessageLibrary *)self database];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary updateUnprefixedSubjectTo:forMessage:]"];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __61__MFMailMessageLibrary_updateUnprefixedSubjectTo_forMessage___block_invoke;
  v22 = &unk_1E7AA3C20;
  v12 = v9;
  v23 = v12;
  v13 = v8;
  v24 = v13;
  v25 = self;
  v14 = v7;
  v26 = v14;
  [v10 __performWriteWithCaller:v11 usingBlock:&v19];

  v15 = [(MFMailMessageLibrary *)self hookRegistry:v19];
  v27[0] = *MEMORY[0x1E699B1D0];
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  [v15 persistenceDidUpdateProperties:v16 message:v13 generationWindow:v12];

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __61__MFMailMessageLibrary_updateUnprefixedSubjectTo_forMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  v4 = [*(a1 + 40) libraryID];
  v5 = [*(a1 + 48) _subjectIDForMessageWithLibraryID:v4 connection:v3];
  if (!v5 || ([*(a1 + 48) _isSubjectIDUsedByOtherMessages:v5 besidesMessageWithDatabaseID:v4 connection:v3] & 1) != 0 || (v8 = 0, v6 = objc_msgSend(*(a1 + 48), "_updateSubjectWithRowID:to:connection:outSubjectAlreadyExists:", v5, *(a1 + 56), v3, &v8), (v6 & 1) == 0) && (v8 & 1) != 0)
  {
    v6 = [*(a1 + 48) _updateSubjectForMessageWithLibraryID:v4 to:*(a1 + 56) connection:v3];
  }

  return v6;
}

- (int64_t)_subjectIDForMessageWithLibraryID:(int64_t)a3 connection:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = *MEMORY[0x1E699A728];
  v6 = [v5 preparedStatementForQueryString:{@"SELECT messages.subject, subjects.subject FROM messages LEFT OUTER JOIN subjects ON messages.subject = subjects.ROWID WHERE messages.ROWID = ?"}];
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v20[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v14 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__MFMailMessageLibrary__subjectIDForMessageWithLibraryID_connection___block_invoke;
  v15[3] = &unk_1E7AA3810;
  v15[4] = &v16;
  v9 = [v6 executeWithIndexedBindings:v8 usingBlock:v15 error:&v14];
  v10 = v14;

  if ((v9 & 1) == 0)
  {
    [v5 handleError:v10 message:@"finding subject for message"];
  }

  v11 = v17[3];

  _Block_object_dispose(&v16, 8);
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void __69__MFMailMessageLibrary__subjectIDForMessageWithLibraryID_connection___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v6 = [v7 objectAtIndexedSubscript:0];
  *(*(*(a1 + 32) + 8) + 24) = [v6 databaseIDValue];

  *a4 = 1;
}

- (BOOL)_isSubjectIDUsedByOtherMessages:(int64_t)a3 besidesMessageWithDatabaseID:(int64_t)a4 connection:(id)a5
{
  v23[2] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v8 = [v7 preparedStatementForQueryString:@"SELECT ROWID FROM messages WHERE messages.subject = ? AND ROWID != ? LIMIT 1"];
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v23[0] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:a4];
  v23[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v17 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __96__MFMailMessageLibrary__isSubjectIDUsedByOtherMessages_besidesMessageWithDatabaseID_connection___block_invoke;
  v18[3] = &unk_1E7AA3810;
  v18[4] = &v19;
  v12 = [v8 executeWithIndexedBindings:v11 usingBlock:v18 error:&v17];
  v13 = v17;

  if ((v12 & 1) == 0)
  {
    [v7 handleError:v13 message:@"finding message using same subject"];
  }

  v14 = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  v15 = *MEMORY[0x1E69E9840];
  return v14 & 1;
}

uint64_t __96__MFMailMessageLibrary__isSubjectIDUsedByOtherMessages_besidesMessageWithDatabaseID_connection___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a4 = 1;
  return result;
}

- (BOOL)_updateSubjectWithRowID:(int64_t)a3 to:(id)a4 connection:(id)a5 outSubjectAlreadyExists:(BOOL *)a6
{
  v9 = a4;
  v10 = a5;
  v11 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"subjects"];
  [v11 setObject:v9 forKeyedSubscript:@"subject"];
  v12 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v13 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v14 = [v12 equalTo:v13];
  [v11 setWhereClause:v14];

  v21 = 0;
  v15 = [v10 executeUpdateStatement:v11 error:&v21];
  v16 = v21;
  v17 = v16;
  if (v15)
  {
    v18 = 0;
  }

  else
  {
    v19 = [v16 domain];
    if ([v19 isEqualToString:*MEMORY[0x1E699B770]])
    {
      v18 = [v17 code] == 19;
    }

    else
    {
      v18 = 0;
    }

    [v10 handleError:v17 message:@"Updating subject"];
  }

  if (a6)
  {
    *a6 = v18;
  }

  return v15;
}

- (BOOL)_updateSubjectForMessageWithLibraryID:(int64_t)a3 to:(id)a4 connection:(id)a5
{
  v8 = a5;
  v9 = [(MFMailMessageLibrary *)self _findOrCreateDatabaseIDForSubject:a4 cache:0 connection:v8];
  if (v9 == *MEMORY[0x1E699A728])
  {
    v10 = 0;
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"messages"];
    v12 = [MEMORY[0x1E696AD98] numberWithLongLong:v9];
    [v11 setObject:v12 forKeyedSubscript:@"subject"];

    v13 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
    v14 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
    v15 = [v13 equalTo:v14];
    [v11 setWhereClause:v15];

    v18 = 0;
    v10 = [v8 executeUpdateStatement:v11 error:&v18];
    v16 = v18;
    if ((v10 & 1) == 0)
    {
      [v8 handleError:v16 message:@"Setting subject ID"];
    }
  }

  return v10;
}

- (id)headerDataAtPath:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69AD6B0]) initWithContentsOfFile:v3 options:3 error:0];
  }

  else
  {
    v4 = 0;
  }

  if ([v4 length] && (v6 = objc_msgSend(v4, "mf_rangeOfRFC822HeaderData"), v6 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v7 = [v4 mf_subdataWithRange:{v6, v5}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)bodyDataForMessage:(id)a3 andHeaderDataIfReadilyAvailable:(id *)a4
{
  v4 = [(MFMailMessageLibrary *)self bodyDataForMessage:a3 andHeaderDataIfReadilyAvailable:a4 isComplete:0];

  return v4;
}

- (id)bodyDataForMessage:(id)a3 andHeaderDataIfReadilyAvailable:(id *)a4 isComplete:(BOOL *)a5
{
  v5 = [(MFMailMessageLibrary *)self bodyDataForMessage:a3 andHeaderDataIfReadilyAvailable:a4 isComplete:a5 isPartial:0];

  return v5;
}

- (id)bodyDataForMessage:(id)a3 andHeaderDataIfReadilyAvailable:(id *)a4 isComplete:(BOOL *)a5 isPartial:(BOOL *)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = [(MFMailMessageLibrary *)self dataPathForMessage:v10 type:0];
  if (v11)
  {
    v12 = [(MFMailMessageLibrary *)self bodyDataAtPath:v11 headerData:a4];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
      v15 = v11;
LABEL_4:
      if (a5)
      {
        *a5 = 1;
      }

      if (a6)
      {
        *a6 = v13 == 0;
      }

      if (a4)
      {
        v16 = MFPersistenceLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v14 length];
          v18 = [*a4 length];
          v19 = [v14 length];
          v20 = [*a4 length];
          v21 = [v10 ef_publicDescription];
          v28 = 134218754;
          v29 = v18 + v17;
          v30 = 2048;
          v31 = v19;
          v32 = 2048;
          v33 = v20;
          v34 = 2114;
          v35 = v21;
          _os_log_impl(&dword_1B0389000, v16, OS_LOG_TYPE_DEFAULT, "Read data from file of length %lu (body = %lu, header = %lu) for message %{public}@", &v28, 0x2Au);
        }
      }

      else
      {
        v16 = MFPersistenceLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [v14 length];
          v25 = [v10 ef_publicDescription];
          v28 = 134218242;
          v29 = v24;
          v30 = 2114;
          v31 = v25;
          _os_log_impl(&dword_1B0389000, v16, OS_LOG_TYPE_DEFAULT, "Read body data from file of length %lu for message %{public}@", &v28, 0x16u);
        }
      }

      goto LABEL_23;
    }

    v15 = [(MFMailMessageLibrary *)self dataPathForMessage:v10 type:1];

    if (v15)
    {
      v14 = [(MFMailMessageLibrary *)self bodyDataAtPath:v15 headerData:a4];
      if (v14)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v22 = _dataForMessageAndPart(self, v10, 0, 1, a5);
  v23 = v22;
  if (v22)
  {
    v14 = _bodyDataFromData(v22, a4);

    if (a6)
    {
      *a6 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_23:

  v26 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)headerDataForMessage:(id)a3
{
  v4 = a3;
  v5 = _dataForMessageAndPart(self, v4, 0, 1, 0);
  v6 = v5;
  if (!v5 || (v13 = 0, v7 = _bodyDataFromData(v5, &v13), (v8 = v13) == 0))
  {
    v9 = [(MFMailMessageLibrary *)self dataPathForMessage:v4 type:0];
    if (!v9 || ([(MFMailMessageLibrary *)self headerDataAtPath:v9], v8 = objc_claimAutoreleasedReturnValue(), v9, !v8))
    {
      v10 = [(MFMailMessageLibrary *)self dataPathForMessage:v4 type:1];
      if (!v10 || ([(MFMailMessageLibrary *)self headerDataAtPath:v10], v8 = objc_claimAutoreleasedReturnValue(), v10, !v8))
      {
        v11 = [(MFMailMessageLibrary *)self dataPathForMessage:v4 type:2];
        if (v11)
        {
          v8 = [(MFMailMessageLibrary *)self headerDataAtPath:v11];
        }

        else
        {
          v8 = 0;
        }
      }
    }
  }

  return v8;
}

- (id)fullBodyDataForMessage:(id)a3 andHeaderDataIfReadilyAvailable:(id *)a4
{
  v6 = a3;
  v7 = _dataForMessageAndPart(self, v6, 0, 0, 0);
  v8 = v7;
  if (!v7 || (_bodyDataFromData(v7, a4), v9 = objc_claimAutoreleasedReturnValue(), v8, (v10 = v9) == 0))
  {
    v11 = [(MFMailMessageLibrary *)self dataPathForMessage:v6];
    if (v11)
    {
      v10 = [(MFMailMessageLibrary *)self bodyDataAtPath:v11 headerData:a4];
    }

    else
    {
      v10 = 0;
    }
  }

  v12 = +[MFActivityMonitor currentMonitor];
  [v12 recordTransportType:1];

  return v10;
}

- (id)dataForMimePart:(id)a3 isComplete:(BOOL *)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 mimeBody];
  v8 = [v7 message];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v6 partNumber];
    v10 = _dataForMessageAndPart(self, v8, v9, 1, a4);

    if (!v10)
    {
      v11 = [v6 partNumber];
      v12 = _dataPathForMessageAndPart(self, v8, v11);

      if (v12)
      {
        v20 = 0;
        v10 = [MEMORY[0x1E69AD6B0] dataWithContentsOfFile:v12 options:3 error:&v20];
        v13 = v20;
        if (v10)
        {
          if (a4)
          {
            *a4 = 1;
          }

          v14 = MFLogGeneral();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = [v10 length];
            v16 = [v8 ef_publicDescription];
            v17 = [v6 partNumber];
            *buf = 134218498;
            v22 = v15;
            v23 = 2114;
            v24 = v16;
            v25 = 2114;
            v26 = v17;
            _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_INFO, "#CacheLoads data from file of length %lu for message %{public}@ part %{public}@", buf, 0x20u);
          }
        }

        else
        {
          v14 = MFLogGeneral();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            [v13 ef_publicDescription];
            objc_claimAutoreleasedReturnValue();
            [MFMailMessageLibrary dataForMimePart:isComplete:];
          }
        }
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)hasCompleteDataForMimePart:(id)a3
{
  v4 = a3;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v5 = [v4 mimeBody];
  v6 = [v5 message];

  v7 = [(MFMailMessageLibrary *)self database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary hasCompleteDataForMimePart:]"];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __51__MFMailMessageLibrary_hasCompleteDataForMimePart___block_invoke;
  v20 = &unk_1E7AA4108;
  v9 = v6;
  v21 = v9;
  v10 = v4;
  v22 = v10;
  v23 = &v25;
  v24 = &v29;
  [v7 __performReadWithCaller:v8 usingBlock:&v17];

  if ((v26[3] & 1) == 0)
  {
    v11 = [v10 partNumber];
    v12 = _dataPathForMessageAndPart(self, v9, v11);

    if (v12)
    {
      v13 = [MEMORY[0x1E696AC08] defaultManager];
      v14 = [v13 fileExistsAtPath:v12];
      *(v30 + 24) = v14;
    }
  }

  v15 = *(v30 + 24);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  return v15;
}

uint64_t __51__MFMailMessageLibrary_hasCompleteDataForMimePart___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:@"SELECT complete FROM message_data WHERE message_id = ? and part = ?"];
  v5 = [v4 compiled];

  if (v5)
  {
    sqlite3_bind_int64(v5, 1, [*(a1 + 32) libraryID]);
    v6 = [*(a1 + 40) partNumber];
    sqlite3_bind_text(v5, 2, [v6 UTF8String], -1, 0);

    if (sqlite3_step(v5) == 100)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      *(*(*(a1 + 56) + 8) + 24) = sqlite3_column_int(v5, 0) != 0;
    }

    sqlite3_reset(v5);
  }

  return 1;
}

- (BOOL)areMessageContentsLocallyAvailable:(id)a3 fullContentsAvailble:(BOOL *)a4
{
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [(MFMailMessageLibrary *)self dataPathForMessage:v6];
  v9 = [v7 fileExistsAtPath:v8];

  if (v9)
  {
    v10 = v27;
    *(v27 + 24) = 1;
    if (a4)
    {
      *a4 = 1;
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696AC08] defaultManager];
    v12 = [(MFMailMessageLibrary *)self dataPathForMessage:v6 type:1];
    v13 = [v11 fileExistsAtPath:v12];

    if (v13)
    {
      v10 = v27;
      *(v27 + 24) = 1;
      if (a4)
      {
        *a4 = 0;
      }
    }

    else
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      v14 = [(MFMailMessageLibrary *)self database];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary areMessageContentsLocallyAvailable:fullContentsAvailble:]"];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __80__MFMailMessageLibrary_areMessageContentsLocallyAvailable_fullContentsAvailble___block_invoke;
      v18[3] = &unk_1E7AA4158;
      v19 = v6;
      v20 = &v26;
      v21 = &v22;
      [v14 __performReadWithCaller:v15 usingBlock:v18];

      if (a4)
      {
        *a4 = *(v23 + 24);
      }

      _Block_object_dispose(&v22, 8);
      v10 = v27;
    }
  }

  v16 = *(v10 + 24);
  _Block_object_dispose(&v26, 8);

  return v16;
}

uint64_t __80__MFMailMessageLibrary_areMessageContentsLocallyAvailable_fullContentsAvailble___block_invoke(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:{@"SELECT length, complete, partial FROM message_data WHERE message_id = ? AND part IS NULL"}];
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "libraryID")}];
  v14[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v11 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__MFMailMessageLibrary_areMessageContentsLocallyAvailable_fullContentsAvailble___block_invoke_2;
  v12[3] = &unk_1E7AA4130;
  v13 = *(a1 + 40);
  v7 = [v4 executeWithIndexedBindings:v6 usingBlock:v12 error:&v11];
  v8 = v11;

  if ((v7 & 1) == 0)
  {
    [v3 handleError:v8 message:@"checking message_data"];
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

void __80__MFMailMessageLibrary_areMessageContentsLocallyAvailable_fullContentsAvailble___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v6 = [v12 objectForKeyedSubscript:@"length"];
  v7 = [v6 numberValue];
  *(*(*(a1 + 32) + 8) + 24) = [v7 integerValue] > 0;

  v8 = [v12 objectForKeyedSubscript:@"complete"];
  v9 = [v8 numberValue];
  if ([v9 BOOLValue])
  {
    v10 = [v12 objectForKeyedSubscript:@"partial"];
    v11 = [v10 numberValue];
    *(*(*(a1 + 40) + 8) + 24) = [v11 BOOLValue] ^ 1;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  *a4 = 1;
}

- (id)_equalToMailboxIDsFromCriterion:(id)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__MFMailMessageLibrary__equalToMailboxIDsFromCriterion___block_invoke;
  v7[3] = &unk_1E7AA4180;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = &v12;
  v3 = [a3 criterionByApplyingTransform:v7];
  if (*(v9 + 24) == 1)
  {
    v4 = v13[5];
    v13[5] = 0;
  }

  v5 = v13[5];
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);

  return v5;
}

id __56__MFMailMessageLibrary__equalToMailboxIDsFromCriterion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && [v3 criterionType] == 23)
  {
    if ([v4 qualifier] == 3)
    {
      v5 = [v4 expression];
      v6 = [*(a1 + 32) mailboxIDForURLString:v5];
      if (v6 != *MEMORY[0x1E699A728])
      {
        v7 = *(*(*(a1 + 48) + 8) + 40);
        if (!v7)
        {
          v8 = objc_alloc_init(MEMORY[0x1E699B810]);
          v9 = *(*(a1 + 48) + 8);
          v10 = *(v9 + 40);
          *(v9 + 40) = v8;

          v7 = *(*(*(a1 + 48) + 8) + 40);
        }

        [v7 addIndex:v6];
      }
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return v4;
}

- (id)_sqlSortByStringFromOptions:(unsigned int)a3
{
  v3 = @"read_later_date";
  v4 = @"send_later_date";
  if ((a3 & 0x2000000) == 0)
  {
    v4 = @"date_received";
  }

  if ((a3 & 0x1000000) == 0)
  {
    v3 = v4;
  }

  if ((a3 & 0x100) != 0)
  {
    return @"display_date";
  }

  else
  {
    return v3;
  }
}

- (void)sendMessagesMatchingCriterion:(id)a3 to:(id)a4 options:(unsigned int)a5 baseTable:(unsigned int)a6 range:(_NSRange)a7 success:(BOOL *)a8
{
  length = a7.length;
  location = a7.location;
  v14 = a3;
  v15 = a4;
  v16 = [(MFMailMessageLibrary *)self database];
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary sendMessagesMatchingCriterion:to:options:baseTable:range:success:]"];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __89__MFMailMessageLibrary_sendMessagesMatchingCriterion_to_options_baseTable_range_success___block_invoke;
  v20[3] = &unk_1E7AA41A8;
  v20[4] = self;
  v26 = a5;
  v18 = v14;
  v27 = a6;
  v21 = v18;
  v23 = location;
  v24 = length;
  v19 = v15;
  v22 = v19;
  v25 = a8;
  [v16 __performReadWithCaller:v17 usingBlock:v20];
}

uint64_t __89__MFMailMessageLibrary_sendMessagesMatchingCriterion_to_options_baseTable_range_success___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _canSelectMessagesWithOptions:*(a1 + 80) connection:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [*(a1 + 32) queryForCriterion:*(a1 + 40) connection:v3 options:*(a1 + 80) baseTable:*(a1 + 84) isSubquery:0 range:{*(a1 + 56), *(a1 + 64)}];
    v7 = [v3 preparedStatementForQueryString:v6];
    [*(a1 + 32) _sendMessagesForStatement:v7 connection:v3 to:*(a1 + 48) options:*(a1 + 80) timestamp:mach_absolute_time()];
  }

  v8 = *(a1 + 72);
  if (v8)
  {
    *v8 = v5;
  }

  return 1;
}

- (void)_iterateMessagesWithResultHandler:(id)a3 options:(unsigned int)a4 monitor:(id)a5 sqlQueryGenerator:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = [(MFMailMessageLibrary *)self database];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary _iterateMessagesWithResultHandler:options:monitor:sqlQueryGenerator:]"];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __92__MFMailMessageLibrary__iterateMessagesWithResultHandler_options_monitor_sqlQueryGenerator___block_invoke;
  v19[3] = &unk_1E7AA41D0;
  v16 = v13;
  v22 = v16;
  v19[4] = self;
  v24 = a4;
  v17 = v11;
  v20 = v17;
  v18 = v12;
  v21 = v18;
  v23 = a2;
  [v14 __performReadWithCaller:v15 usingBlock:v19];
}

uint64_t __92__MFMailMessageLibrary__iterateMessagesWithResultHandler_options_monitor_sqlQueryGenerator___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = (*(*(a1 + 56) + 16))();
  if ([v4 length])
  {
    v5 = [v3 preparedStatementForQueryString:v4];
    v18 = 0;
    v10 = 0;
    v11 = 0;
    v9 = 0;
    v13 = mach_absolute_time();
    v9 = *(a1 + 32);
    v10 = 0;
    v11 = 0;
    v12 = 0x3F000000000003E8;
    LODWORD(v15) = 0;
    Current = CFAbsoluteTimeGetCurrent();
    HIDWORD(v15) = *(a1 + 72);
    v16 = [v3 sqlDB];
    objc_storeStrong(&v18, *(a1 + 40));
    v17 = [*(a1 + 32) isProtectedDataAvailable:v3];
    v6 = *(a1 + 40);
    v19 = objc_opt_respondsToSelector() & 1;
    [*(a1 + 32) _iterateStatement:v5 connection:v3 withProgressMonitor:*(a1 + 48) andRowHandler:handleIterativeSearchRow context:&v9];
    __destructor_8_s0_s8_s16_s72(&v9);
  }

  else
  {
    [*(a1 + 32) isProtectedDataAvailable:v3];
    v5 = EDLibraryLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(*(a1 + 64));
      objc_claimAutoreleasedReturnValue();
      NSStringFromBOOL();
      objc_claimAutoreleasedReturnValue();
      __92__MFMailMessageLibrary__iterateMessagesWithResultHandler_options_monitor_sqlQueryGenerator___block_invoke_cold_1();
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return 1;
}

id __95__MFMailMessageLibrary_iterateMessagesMatchingCriterion_withResultHandler_options_withMonitor___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) queryForCriterion:*(a1 + 40) connection:a2 options:*(a1 + 48)];

  return v2;
}

- (id)filterContiguousMessages:(id)a3 forCriterion:(id)a4 options:(unsigned int)a5
{
  v7 = a3;
  v8 = a4;
  if ([v7 count])
  {
    v9 = [v7 firstObject];
    v10 = [v9 libraryID];

    v11 = [v7 lastObject];
    v12 = [v11 libraryID];

    v13 = objc_alloc_init(MFMessageCriterion);
    [(MFMessageCriterion *)v13 setCriterionType:25];
    [(MFMessageCriterion *)v13 setAllCriteriaMustBeSatisfied:1];
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v8, 0}];
    v15 = [MFMessageCriterion alloc];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", v10 - 1];
    v17 = [(MFMessageCriterion *)v15 initWithType:24 qualifier:6 expression:v16];

    [v14 addObject:v17];
    v18 = [MFMessageCriterion alloc];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", v12 + 1];
    v20 = [(MFMessageCriterion *)v18 initWithType:24 qualifier:5 expression:v19];

    [v14 addObject:v20];
    [(MFMessageCriterion *)v13 setCriteria:v14];
    v21 = [(MFMailMessageLibrary *)self messagesMatchingCriterion:v13 options:a5];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)deleteAccount:(id)a3
{
  v4 = a3;
  [(MFMailMessageLibrary *)self invalidateAccount:v4];
  v5 = [(MFMailMessageLibrary *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary deleteAccount:]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__MFMailMessageLibrary_deleteAccount___block_invoke;
  v8[3] = &unk_1E7AA3D10;
  v9 = @"DELETE FROM accounts WHERE text_id = ?";
  v7 = v4;
  v10 = v7;
  [v5 __performWriteWithCaller:v6 usingBlock:v8];
}

uint64_t __38__MFMailMessageLibrary_deleteAccount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:*(a1 + 32)];
  v5 = [v4 compiled];

  if (v5)
  {
    v6 = [*(a1 + 40) uniqueID];
    v7 = [v6 UTF8String];

    v8 = strlen(v7);
    sqlite3_bind_text(v5, 1, v7, v8, 0);
    sqlite3_step(v5);
    sqlite3_reset(v5);
  }

  v9 = [v3 checkForConnectionErrorWithMessage:@"deleting an account entry"];

  return v9;
}

- (id)_mailboxesClauseForAccounts:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v3 arrayByApplyingSelector:sel_URLString];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v5 = v18 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = [objc_alloc(MEMORY[0x1E699B8C8]) initWithName:@"url"];
          v11 = [v10 beginsWith:v9 caseSensitive:1];

          [v4 addObject:v11];
        }

        v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    v12 = [objc_alloc(MEMORY[0x1E699B928]) initWithExpressions:v4];
    v13 = [v12 ef_SQLExpression];

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@" AND +messages.mailbox IN (SELECT ROWID FROM mailboxes WHERE %@) ", v13];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)prepareToRebuildActiveAccountsClausesAndExpressions
{
  [(NSConditionLock *)self->_activeAccountsCondition lock];
  activeAccountsCondition = self->_activeAccountsCondition;

  [(NSConditionLock *)activeAccountsCondition unlockWithCondition:1];
}

- (void)rebuildActiveAccountsClausesAndExpressionsWithAccounts:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 isActive])
        {
          v12 = v5;
        }

        else
        {
          v12 = v6;
        }

        [v12 addObject:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(MFMailMessageLibrary *)self rebuildActiveAccountMailboxesExpression:v5];
  [(MFMailMessageLibrary *)self rebuildActiveMailboxesClauseWithActiveAccounts:v5 inactiveAccounts:v6];
  [(NSConditionLock *)self->_activeAccountsCondition lock];
  [(NSConditionLock *)self->_activeAccountsCondition unlockWithCondition:0];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)rebuildActiveAccountMailboxesExpression:(id)a3
{
  v11 = a3;
  if ([v11 count])
  {
    v4 = [v11 ef_compactMap:&__block_literal_global_1519];
    v5 = objc_alloc(MEMORY[0x1E699B948]);
    v6 = [v5 initWithResultColumn:*MEMORY[0x1E699B768] table:@"mailboxes"];
    v7 = [objc_alloc(MEMORY[0x1E699B928]) initWithExpressions:v4];
    [v6 setWhere:v7];

    v8 = [objc_alloc(MEMORY[0x1E699B8C8]) initWithName:@"mailbox"];
    v9 = [v8 disqualified];
    v10 = [v9 in:v6];
  }

  else
  {
    v10 = 0;
  }

  [(MFMailMessageLibrary *)self mf_lock];
  if (v10 != self->_enabledAccountMailboxesExpression)
  {
    objc_storeStrong(&self->_enabledAccountMailboxesExpression, v10);
  }

  [(MFMailMessageLibrary *)self mf_unlock];
}

id __64__MFMailMessageLibrary_rebuildActiveAccountMailboxesExpression___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 URLString];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E699B8C8]) initWithName:@"url"];
    v4 = [v3 beginsWith:v2 caseSensitive:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)rebuildActiveMailboxesClauseWithActiveAccounts:(id)a3 inactiveAccounts:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[LocalAccount localAccount];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __88__MFMailMessageLibrary_rebuildActiveMailboxesClauseWithActiveAccounts_inactiveAccounts___block_invoke;
  v20[3] = &unk_1E7AA30E0;
  v9 = v8;
  v21 = v9;
  v10 = [v6 ef_filter:v20];
  v11 = [(MFMailMessageLibrary *)self _mailboxesClauseForAccounts:v6];
  v12 = [(MFMailMessageLibrary *)self _mailboxesClauseForAccounts:v10];
  [(MFMailMessageLibrary *)self mf_lock];
  v13 = [v7 count] != 0;
  activeMailboxesClause = self->_activeMailboxesClause;
  if (activeMailboxesClause != v11 || ([(NSString *)activeMailboxesClause isEqual:v11]& 1) == 0)
  {
    objc_storeStrong(&self->_activeMailboxesClause, v11);
    v13 = 1;
  }

  if (self->_nonLocalAccountClause != v12)
  {
    objc_storeStrong(&self->_nonLocalAccountClause, v12);
  }

  [(MFMailMessageLibrary *)self mf_unlock];
  if (v13)
  {
    v15 = [(MFMailMessageLibrary *)self searchableIndex];
    [v15 suspend];

    v16 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__MFMailMessageLibrary_rebuildActiveMailboxesClauseWithActiveAccounts_inactiveAccounts___block_invoke_2;
    block[3] = &unk_1E7AA26E0;
    v18 = v7;
    v19 = self;
    dispatch_async(v16, block);
  }
}

void __88__MFMailMessageLibrary_rebuildActiveMailboxesClauseWithActiveAccounts_inactiveAccounts___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) removeSearchableItemsForAccount:{*(*(&v9 + 1) + 8 * v5++), v9}];
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  v6 = [*(a1 + 40) searchableIndex];
  [v6 resume];

  v7 = [*(a1 + 40) searchableIndex];
  [v7 refresh];

  v8 = *MEMORY[0x1E69E9840];
}

- (id)_nonLocalAccountsClause
{
  [(MFMailMessageLibrary *)self _waitForActiveAccountsRebuild];
  [(MFMailMessageLibrary *)self mf_lock];
  v3 = self->_nonLocalAccountClause;
  [(MFMailMessageLibrary *)self mf_unlock];

  return v3;
}

- (void)deletePOPUID:(id)a3 inMailbox:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MFMailMessageLibrary *)self database];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary deletePOPUID:inMailbox:]"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__MFMailMessageLibrary_deletePOPUID_inMailbox___block_invoke;
  v12[3] = &unk_1E7AA3D10;
  v10 = v7;
  v13 = v10;
  v11 = v6;
  v14 = v11;
  [v8 __performWriteWithCaller:v9 usingBlock:v12];
}

uint64_t __47__MFMailMessageLibrary_deletePOPUID_inMailbox___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:@"UPDATE pop_uids SET del = 1 WHERE mailbox = (SELECT ROWID FROM mailboxes WHERE url = ?) AND uid = ?"];;
  v5 = [v4 compiled];

  if (v5)
  {
    sqlite3_bind_text(v5, 1, [*(a1 + 32) UTF8String], -1, 0);
    sqlite3_bind_text(v5, 2, [*(a1 + 40) UTF8String], -1, 0);
    sqlite3_step(v5);
  }

  v6 = [v3 checkForConnectionErrorWithMessage:@"setting pop_uid.del = 1"];

  return v6;
}

- (id)UIDsToDeleteInMailbox:(id)a3
{
  v3 = POPUIDsForQuery(self, @"SELECT uid FROM pop_uids WHERE mailbox = (SELECT ROWID FROM mailboxes WHERE url = ?) AND del NOT NULL", a3);;

  return v3;
}

- (id)allUIDsInMailbox:(id)a3
{
  v3 = POPUIDsForQuery(self, @"SELECT uid FROM pop_uids WHERE mailbox = (SELECT ROWID FROM mailboxes WHERE url = ?)", a3);;

  return v3;
}

- (id)hiddenPOPUIDsInMailbox:(id)a3
{
  v3 = POPUIDsForQuery(self, @"SELECT uid FROM pop_uids AS uid LEFT OUTER JOIN messages AS message ON uid.mailbox = message.remote_mailbox AND uid.uid = message.remote_id WHERE uid.mailbox = (SELECT ROWID FROM mailboxes WHERE url = ?) AND message.rowid IS NULL OR (message.flags & 2) > 0", a3);;

  return v3;
}

- (void)_setProtectedDataAvailabilityState:(unint64_t)a3
{
  protectedDataAvailability = self->_protectedDataAvailability;
  if (protectedDataAvailability != a3)
  {
    v6 = self->_protectedDataAvailability;
    atomic_compare_exchange_strong_explicit(&self->_protectedDataAvailability, &v6, a3, memory_order_relaxed, memory_order_relaxed);
    if (v6 == protectedDataAvailability)
    {
      if (a3 == 2)
      {
        v7 = [(MFMailMessageLibrary *)self searchableIndex];
        [v7 setPersistenceAvailable:0];
        v9 = @"MailMessageLibraryWillBecomeUnavailable";
      }

      else
      {
        if (a3 == 1)
        {
          v9 = @"MailMessageLibraryDidBecomeAvailable";
LABEL_10:
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __59__MFMailMessageLibrary__setProtectedDataAvailabilityState___block_invoke;
          block[3] = &unk_1E7AA4240;
          v12 = self;
          v13 = a3;
          v11 = v9;
          dispatch_async(MEMORY[0x1E69E96A0], block);

          return;
        }

        if (a3)
        {
          return;
        }

        v7 = [(MFMailMessageLibrary *)self persistence];
        v8 = [v7 searchableIndexManager];
        [v8 enableIndexingAndBeginScheduling:1];

        v9 = @"MailMessageLibraryDidFinishReconciliation";
      }

      goto LABEL_10;
    }
  }
}

void __59__MFMailMessageLibrary__setProtectedDataAvailabilityState___block_invoke(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = EDLibraryLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_1B0389000, v2, OS_LOG_TYPE_INFO, "Posting %@", buf, 0xCu);
  }

  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{a1[6], @"MailMessageLibraryProtectedDataAvailibilityKey"}];
  v9 = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:a1[4] object:a1[5] userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)cleanupProtectedTables
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v3 = [(MFMailMessageLibrary *)self database];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary cleanupProtectedTables]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__MFMailMessageLibrary_cleanupProtectedTables__block_invoke;
  v6[3] = &unk_1E7AA3C48;
  v6[4] = self;
  v6[5] = &v7;
  [v3 __performWriteWithCaller:v4 usingBlock:v6];

  LOBYTE(v3) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t __46__MFMailMessageLibrary_cleanupProtectedTables__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) isProtectedDataAvailable:v3])
  {
    Current = CFAbsoluteTimeGetCurrent();
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __46__MFMailMessageLibrary_cleanupProtectedTables__block_invoke_2;
    v13[3] = &unk_1E7AA4268;
    v5 = v3;
    v6 = *(a1 + 40);
    v14 = v5;
    v15 = v6;
    [&unk_1F2774CB0 enumerateObjectsUsingBlock:v13];
    v7 = EDLibraryLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = CFAbsoluteTimeGetCurrent();
      *buf = 134217984;
      v17 = v8 - Current;
      _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "cleanupProtectedTables took %.4f seconds", buf, 0xCu);
    }

    v9 = v14;
  }

  else
  {
    v9 = EDLibraryLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v9, OS_LOG_TYPE_DEFAULT, "skipping cleaning up protected tables because protected data is not available", buf, 2u);
    }
  }

  v10 = *(*(*(a1 + 40) + 8) + 24);
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

void __46__MFMailMessageLibrary_cleanupProtectedTables__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [*(a1 + 32) preparedStatementForQueryString:?];
  v7 = [v6 compiled];

  *(*(*(a1 + 40) + 8) + 24) = sqlite3_step(v7) == 101;
  sqlite3_reset(v7);
  [*(a1 + 32) checkForConnectionErrorWithMessage:@"cleaning up protected tables"];
  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

- (BOOL)_shouldLogDatabaseStats
{
  v2 = [MEMORY[0x1E695E000] em_userDefaults];
  v3 = [v2 BOOLForKey:@"LogDatabaseStats"];

  return v3;
}

- (void)_logStatistics
{
  statsQueue = self->_statsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__MFMailMessageLibrary__logStatistics__block_invoke;
  block[3] = &unk_1E7AA25C0;
  block[4] = self;
  dispatch_async(statsQueue, block);
}

void __38__MFMailMessageLibrary__logStatistics__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) persistence];
  v2 = [v1 messagePersistence];
  v3 = [v2 collectStatistics];

  if ([v3 protectedDataAvailable])
  {
    v4 = EDLibraryLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      [v3 duration];
      v11 = 134219776;
      v12 = v5;
      v13 = 2048;
      v14 = [v3 messagesMarkedAsJournaled];
      v15 = 2048;
      v16 = [v3 messages];
      v17 = 2048;
      v18 = [v3 messageData];
      v19 = 2048;
      v20 = [v3 protectedMessageData];
      v21 = 2048;
      v22 = [v3 messagesDeleted];
      v23 = 2048;
      v24 = [v3 messageDataDeleted];
      v25 = 2048;
      v26 = [v3 mailboxesNeedingReconcilication];
      v6 = "STATS %.2fs j:%lu m:%lu md:%lu pmd:%lu mdel:%lu mddel:%lu mbox:%lu";
      v7 = v4;
      v8 = 82;
LABEL_6:
      _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, v6, &v11, v8);
    }
  }

  else
  {
    v4 = EDLibraryLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      [v3 duration];
      v11 = 134219520;
      v12 = v9;
      v13 = 2048;
      v14 = [v3 messagesMarkedAsJournaled];
      v15 = 2048;
      v16 = [v3 messages];
      v17 = 2048;
      v18 = [v3 messageData];
      v19 = 2048;
      v20 = [v3 messagesDeleted];
      v21 = 2048;
      v22 = [v3 messageDataDeleted];
      v23 = 2048;
      v24 = [v3 mailboxesNeedingReconcilication];
      v6 = "STATS %.2fs j:%lu m:%lu pm:* md:%lu pmd:* mdel:%lu mddel:%lu mbox:%lu";
      v7 = v4;
      v8 = 72;
      goto LABEL_6;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_schedulePeriodicStatisticsLogging
{
  if ([(MFMailMessageLibrary *)self _shouldLogDatabaseStats])
  {
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __58__MFMailMessageLibrary__schedulePeriodicStatisticsLogging__block_invoke_2;
    v4[3] = &unk_1E7AA42B0;
    objc_copyWeak(&v5, &location);
    v3 = _Block_copy(v4);
    ef_xpc_activity_register();

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __58__MFMailMessageLibrary__schedulePeriodicStatisticsLogging__block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  xpc_dictionary_set_int64(xdict, *MEMORY[0x1E69E9CB0], *MEMORY[0x1E69E9CE8]);
  xpc_dictionary_set_string(xdict, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D78]);
}

void __58__MFMailMessageLibrary__schedulePeriodicStatisticsLogging__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _logStatistics];
}

- (BOOL)isProtectedDataAvailable:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MailMessageLibrary.m" lineNumber:7135 description:@"Wrong kind of database connection"];
  }

  v6 = [v5 protectedDatabaseAttached];

  return v6;
}

- (void)contentProtectionStateChanged:(int64_t)a3 previousState:(int64_t)a4
{
  dispatch_assert_queue_V2(self->_keyBagQueue);
  if (a3 == 2)
  {
    v7 = EDLibraryLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_INFO, "Key bag locked", buf, 2u);
    }

    [(MFMailMessageLibrary *)self _setProtectedDataAvailabilityState:2];
    [(MFMailMessageLibrary *)self _cancelPendingJournalReconciliation];
  }

  else if (!a3 && a4 != 3)
  {
    v8 = EDLibraryLog();
    v9 = 1;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_INFO, "Key bag unlocked", v11, 2u);
    }

    [(MFMailMessageLibrary *)self _setProtectedDataAvailabilityState:1];
    atomic_compare_exchange_strong(&self->_suspendedUnderLock, &v9, 0);
    if (v9 == 1)
    {
      v10 = [(MFMailMessageLibrary *)self database];
      [v10 reconcileJournalWithCompletionBlock:0];
    }

    else
    {
      [(MFMailMessageLibrary *)self _scheduleJournalReconciliation];
    }
  }
}

- (void)_scheduleJournalReconciliation
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = EDLibraryLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v9 = @"com.apple.message.journal-reconciliation";
    _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_INFO, "register %@ activity", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__MFMailMessageLibrary__scheduleJournalReconciliation__block_invoke_2;
  aBlock[3] = &unk_1E7AA42B0;
  objc_copyWeak(&v7, buf);
  v4 = _Block_copy(aBlock);
  [@"com.apple.message.journal-reconciliation" UTF8String];
  ef_xpc_activity_register();

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
  v5 = *MEMORY[0x1E69E9840];
}

void __54__MFMailMessageLibrary__scheduleJournalReconciliation__block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  xpc_dictionary_set_string(xdict, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D78]);
  v2 = *MEMORY[0x1E69E9CD0];
  xpc_dictionary_set_int64(xdict, *MEMORY[0x1E69E9C68], *MEMORY[0x1E69E9CD0]);
  xpc_dictionary_set_int64(xdict, *MEMORY[0x1E69E9C98], 2 * v2);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x1E69E9C40], 1);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x1E69E9D98], 1);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x1E69E9DB8], 0);
}

void __54__MFMailMessageLibrary__scheduleJournalReconciliation__block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (xpc_activity_set_state(v3, 4))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained database];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __54__MFMailMessageLibrary__scheduleJournalReconciliation__block_invoke_3;
    v7[3] = &unk_1E7AA25C0;
    v8 = v3;
    [v5 reconcileJournalWithCompletionBlock:v7];
  }

  else
  {
    WeakRetained = EDLibraryLog();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = @"com.apple.message.journal-reconciliation";
      _os_log_impl(&dword_1B0389000, WeakRetained, OS_LOG_TYPE_DEFAULT, "#Warning Unable to transition %@ activity to state 'continue'", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __54__MFMailMessageLibrary__scheduleJournalReconciliation__block_invoke_3(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (!xpc_activity_set_state(*(a1 + 32), 5))
  {
    v1 = EDLibraryLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 138412290;
      v4 = @"com.apple.message.journal-reconciliation";
      _os_log_impl(&dword_1B0389000, v1, OS_LOG_TYPE_DEFAULT, "#Warning Unable to transition %@ activity to state 'done'", &v3, 0xCu);
    }
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)_cancelPendingJournalReconciliation
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = EDLibraryLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = @"com.apple.message.journal-reconciliation";
    _os_log_impl(&dword_1B0389000, v2, OS_LOG_TYPE_INFO, "cancelling %@ activity", &v4, 0xCu);
  }

  xpc_activity_unregister([@"com.apple.message.journal-reconciliation" UTF8String]);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)journalWasReconciled
{
  keyBagQueue = self->_keyBagQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MFMailMessageLibrary_journalWasReconciled__block_invoke;
  block[3] = &unk_1E7AA25C0;
  block[4] = self;
  dispatch_async(keyBagQueue, block);
}

void __44__MFMailMessageLibrary_journalWasReconciled__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setProtectedDataAvailabilityState:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MFMailMessageLibrary_journalWasReconciled__block_invoke_2;
  block[3] = &unk_1E7AA25C0;
  block[4] = v2;
  dispatch_async(v3, block);
}

void __44__MFMailMessageLibrary_journalWasReconciled__block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 120) count])
  {
    v2 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(*(*(a1 + 32) + 120), "count")}];
    Current = CFAbsoluteTimeGetCurrent();
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = *(*(a1 + 32) + 120);
    v5 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v5)
    {
      v7 = *v25;
      *&v6 = 134217984;
      v23 = v6;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * v8);
        if ((EFProtectedDataAvailable() & 1) == 0 && (_os_feature_enabled_impl() & 1) == 0)
        {
          break;
        }

        v10 = [*(a1 + 32) messageWithLibraryID:objc_msgSend(v9 options:"intValue" inMailbox:{v23, v24), 0, 0}];
        v11 = v10;
        if (v10)
        {
          v12 = [v10 headersIfAvailable];
          if (v12)
          {
            v13 = +[MFMailMessageLibrary conversationCalculationLog];
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = [v11 messageIDHash];
              *buf = v23;
              v29 = v14;
              _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_DEFAULT, "Threading %lld: resolving threads after journal reconciliation", buf, 0xCu);
            }

            [*(a1 + 32) updateThreadingInfoForMessage:v11 fromHeaders:v12];
          }
        }

        [v2 addObject:v9];

        if (v5 == ++v8)
        {
          v5 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v15 = EDLibraryLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v2 count];
      v17 = CFAbsoluteTimeGetCurrent();
      *buf = 134218240;
      v29 = v16;
      v30 = 2048;
      v31 = v17 - Current;
      _os_log_impl(&dword_1B0389000, v15, OS_LOG_TYPE_INFO, "Updated conversation hashes on %lu messages (%.4f seconds)", buf, 0x16u);
    }

    v18 = [*(*(a1 + 32) + 120) count];
    v19 = [v2 count];
    v20 = *(a1 + 32);
    v21 = *(v20 + 120);
    if (v18 == v19)
    {
      *(v20 + 120) = 0;
    }

    else
    {
      [v21 minusSet:v2];
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_addMessageToThreadAtUnlock:(int64_t)a3
{
  conversationCalculationQueue = self->_conversationCalculationQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__MFMailMessageLibrary__addMessageToThreadAtUnlock___block_invoke;
  v4[3] = &unk_1E7AA33B0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(conversationCalculationQueue, v4);
}

void __52__MFMailMessageLibrary__addMessageToThreadAtUnlock___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 120))
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v3 = *(a1 + 32);
    v4 = *(v3 + 120);
    *(v3 + 120) = v2;
  }

  v5 = +[MFMailMessageLibrary conversationCalculationLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v10 = 134217984;
    v11 = v6;
    _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "Threading: deferring thread resolution until unlock for message database ID %lld", &v10, 0xCu);
  }

  v7 = *(*(a1 + 32) + 120);
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 40)];
  [v7 addObject:v8];

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)migrate
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(MFMailMessageLibrary *)self database];
  v5 = [v4 openConnectionIsWriter:0];

  if (v5)
  {
    [v5 close];
  }

  objc_autoreleasePoolPop(v3);
  return v5 != 0;
}

- (void)_captureAnalyticsForMailDatabase:(int64_t)a3 schema:(id)a4
{
  v21 = a4;
  if (a3 >= 1)
  {
    v6 = objc_alloc(MEMORY[0x1E695DF90]);
    v7 = [MEMORY[0x1E695E000] em_userDefaults];
    v8 = [v7 objectForKey:@"EMUserDefaultMailDatabaseSize"];
    v9 = [v6 initWithDictionary:v8];

    if (![v9 count] || (objc_msgSend(v9, "objectForKey:", v21), v10 = objc_claimAutoreleasedReturnValue(), v10, !v10) || (objc_msgSend(v9, "objectForKey:", v21), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "ef_isMoreThanTimeIntervalAgo:", 2592000.0), v11, v12))
    {
      v13 = [MEMORY[0x1E695DF00] now];
      [v9 setObject:v13 forKeyedSubscript:v21];

      v14 = [MEMORY[0x1E695E000] em_userDefaults];
      v15 = [v9 copy];
      [v14 setValue:v15 forKey:@"EMUserDefaultMailDatabaseSize"];

      v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
      if ([v21 isEqualToString:@"main"])
      {
        v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(MEMORY[0x1E699B858], "roundedInteger:", a3)}];
        [v16 setObject:v17 forKeyedSubscript:@"MailDbEnvelopeSize"];
      }

      else
      {
        v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(MEMORY[0x1E699B858], "roundedInteger:", a3)}];
        [v16 setObject:v17 forKeyedSubscript:@"MailDbFileSize"];
      }

      [v16 setObject:&unk_1F2775958 forKeyedSubscript:@"DataCollection"];
      v18 = objc_alloc(MEMORY[0x1E699AC78]);
      v19 = [v16 copy];
      v20 = [v18 initWithEventName:@"com.apple.mobilemail.database" collectionData:v19];

      [(EMCoreAnalyticsCollector *)self->_analyticsCollector logOneTimeEvent:v20];
    }
  }
}

- (void)performIncrementalVacuumForSchema:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(MFMailMessageLibrary *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary performIncrementalVacuumForSchema:]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__MFMailMessageLibrary_performIncrementalVacuumForSchema___block_invoke;
  v8[3] = &unk_1E7AA3528;
  v7 = v4;
  v9 = v7;
  v10 = self;
  v11 = &v12;
  [v5 __performWriteWithCaller:v6 usingBlock:v8];

  [(MFMailMessageLibrary *)self _captureAnalyticsForMailDatabase:v13[3] schema:v7];
  _Block_object_dispose(&v12, 8);
}

uint64_t __58__MFMailMessageLibrary_performIncrementalVacuumForSchema___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = EDLibraryLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v24 = v5;
    _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_INFO, "Starting incremental vacuum for %@ database", buf, 0xCu);
  }

  if ([*(a1 + 32) isEqualToString:@"protected"] && (objc_msgSend(*(a1 + 40), "isProtectedDataAvailable:", v3) & 1) == 0)
  {
    v9 = EDLibraryLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v10 = "Skipping incremental vacuum because protected tables are not available";
      v14 = v9;
      v15 = 2;
      goto LABEL_14;
    }
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRAGMA %@.freelist_count", *(a1 + 32)];;
    *&v8 = COERCE_DOUBLE([v6 _int64ForQuery:v7 connection:v3 textArgument:0]);

    if (v8 > 255)
    {
      v11 = *(a1 + 40);
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRAGMA %@.page_count", *(a1 + 32)];;
      v13 = [v11 _int64ForQuery:v12 connection:v3 textArgument:0];

      *(*(*(a1 + 48) + 8) + 24) = v13;
      if ((v13 - v8) / v13 <= 0.85)
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRAGMA %@.incremental_vacuum(%lld)", *(a1 + 32), v8 - 256];;
        v16 = [v3 sqlDB];
        v17 = v9;
        if (sqlite3_exec(v16, [v9 UTF8String], 0, 0, 0))
        {
          v18 = EDLibraryLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = sqlite3_errmsg([v3 sqlDB]);
            __58__MFMailMessageLibrary_performIncrementalVacuumForSchema___block_invoke_cold_1(v19, buf);
          }
        }

        else
        {
          v18 = EDLibraryLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v20 = *(a1 + 32);
            *buf = 138412290;
            v24 = v20;
            _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_INFO, "Successfully performed incremental vacuum on %@ database", buf, 0xCu);
          }
        }
      }

      else
      {
        v9 = EDLibraryLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v24 = (v13 - v8) / v13;
          v10 = "Skipping incremental vacuum because load factor (%.2f) is above threshold (0.85)";
          goto LABEL_11;
        }
      }
    }

    else
    {
      v9 = EDLibraryLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v24 = *&v8;
        v10 = "Skipping incremental vacuum because free count (%lld) is below limit (256)";
LABEL_11:
        v14 = v9;
        v15 = 12;
LABEL_14:
        _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_INFO, v10, buf, v15);
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)_scheduleIncrementalVacuum
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__MFMailMessageLibrary__scheduleIncrementalVacuum__block_invoke_2;
  v3[3] = &unk_1E7AA42B0;
  objc_copyWeak(&v4, &location);
  v2 = _Block_copy(v3);
  ef_xpc_activity_register();

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __50__MFMailMessageLibrary__scheduleIncrementalVacuum__block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  xpc_dictionary_set_int64(xdict, *MEMORY[0x1E69E9CB0], *MEMORY[0x1E69E9CB8]);
  xpc_dictionary_set_string(xdict, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D70]);
}

void __50__MFMailMessageLibrary__scheduleIncrementalVacuum__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performIncrementalVacuumForSchema:@"main"];
  [WeakRetained performIncrementalVacuumForSchema:@"protected"];
}

- (void)closeDatabaseConnections
{
  v2 = [(MFMailMessageLibrary *)self database];
  [v2 closeAllConnections];
}

- (void)journalReconciliationFailed
{
  +[MFMailMessageLibrary removeLibraryOnNextLaunch];
  v3 = MFUserAgent();
  v4 = [v3 isMobileMail];

  if (v4)
  {
    [(MFMailMessageLibrary *)self closeDatabaseConnections];
    v5 = MFLogGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [MFMailMessageLibrary journalReconciliationFailed];
    }

    qword_1EB6E7CF0 = "journal reconciliation failed";
    __assert_rtn("[MFMailMessageLibrary journalReconciliationFailed]", "MailMessageLibrary.m", 7351, "0 && journal reconciliation failed");
  }
}

- (void)handleFailedMigration
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)renameOrRemoveDatabaseIfNeeded
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(NSString *)self->_path stringByAppendingPathComponent:@".reset-database"];
  if ([v3 fileExistsAtPath:v4])
  {
    v5 = MFLogGeneral();
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v17 = __54__MFMailMessageLibrary_renameOrRemoveDatabaseIfNeeded__block_invoke;
    v18 = &unk_1E7AA42D8;
    v19 = self;
    v20 = v3;
    v21 = v4;
    v6 = v5;
    v7 = v16;
    v8 = mach_absolute_time();
    v17(v7);
    v9 = mach_absolute_time();
    if (EFGetElapsedTimeSinceAbsoluteTime_onceToken != -1)
    {
      [MFMailMessageLibrary renameOrRemoveDatabaseIfNeeded];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = @"#Performance Moving database files";
      v24 = 2048;
      v25 = ((v9 - v8) * EFGetElapsedTimeSinceAbsoluteTime_sTimebaseInfo / *algn_1EB702374) / 1000000000.0;
      _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_DEFAULT, "%@ : took %fs", buf, 0x16u);
    }
  }

  v10 = [MEMORY[0x1E699B978] globalAsyncSchedulerWithQualityOfService:17];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__MFMailMessageLibrary_renameOrRemoveDatabaseIfNeeded__block_invoke_2;
  v13[3] = &unk_1E7AA26E0;
  v11 = v3;
  v14 = v11;
  v15 = self;
  [v10 performBlock:v13];

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __54__MFMailMessageLibrary_renameOrRemoveDatabaseIfNeeded__block_invoke(void *a1)
{
  v2 = a1[4];
  [objc_opt_class() _renameLibraryAtPath:*(a1[4] + 8)];
  v3 = a1[5];
  v4 = a1[6];

  return [v3 removeItemAtPath:v4 error:0];
}

void __54__MFMailMessageLibrary_renameOrRemoveDatabaseIfNeeded__block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) contentsOfDirectoryAtPath:*(*(a1 + 40) + 8) error:0];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  obj = v23 = 0u;
  v1 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v1)
  {
    v3 = *v23;
    *&v2 = 138412546;
    v14 = v2;
    do
    {
      v4 = 0;
      do
      {
        if (*v23 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v22 + 1) + 8 * v4);
        if ([v5 hasPrefix:{@"SavedFolders", v14}])
        {
          v6 = MFLogGeneral();
          v7 = [@"#Performance Removing " stringByAppendingString:v5];
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v18 = __54__MFMailMessageLibrary_renameOrRemoveDatabaseIfNeeded__block_invoke_3;
          v19 = &unk_1E7AA26E0;
          v20 = *(a1 + 40);
          v21 = v5;
          v8 = v6;
          v9 = v7;
          v10 = v17;
          v11 = mach_absolute_time();
          v18(v10);
          v12 = mach_absolute_time();
          if (EFGetElapsedTimeSinceAbsoluteTime_onceToken != -1)
          {
            [MFMailMessageLibrary renameOrRemoveDatabaseIfNeeded];
          }

          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v14;
            v28 = v9;
            v29 = 2048;
            v30 = ((v12 - v11) * EFGetElapsedTimeSinceAbsoluteTime_sTimebaseInfo / *algn_1EB702374) / 1000000000.0;
            _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_DEFAULT, "%@ : took %fs", buf, 0x16u);
          }
        }

        ++v4;
      }

      while (v1 != v4);
      v1 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v1);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __54__MFMailMessageLibrary_renameOrRemoveDatabaseIfNeeded__block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) stringByAppendingPathComponent:*(a1 + 40)];
  v1 = MFRemoveItemAtPath();
}

+ (void)removeLibraryOnNextLaunch
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = EDLibraryLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_1B0389000, v2, OS_LOG_TYPE_DEFAULT, "Mail db will be reset on next launch", &v9, 2u);
  }

  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = MFMailDirectory();
  v5 = [v4 stringByAppendingPathComponent:@".reset-database"];
  v6 = [v3 createFileAtPath:v5 contents:0 attributes:0];

  if ((v6 & 1) == 0)
  {
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = @".reset-database";
      _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "Could not create %@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)_renameLibraryAtPath:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v27 = [MEMORY[0x1E696AC08] defaultManager];
  v22 = [v26 stringByAppendingPathComponent:@"Envelope Index"];
  v23 = [v26 stringByAppendingPathComponent:@"Protected Index"];
  v21 = [v27 contentsOfDirectoryAtPath:v26 error:0];
  v20 = [@"SavedFolders" mf_uniqueFilenameWithRespectToFilenames:?];
  v24 = [v26 stringByAppendingPathComponent:?];
  [v27 mf_makeCompletePath:v24 mode:448];
  _MFMoveDatabase(v22, v24);
  _MFMoveDatabase(v23, v24);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v21;
  v3 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v3)
  {
    v4 = *v30;
    v25 = *MEMORY[0x1E696A3D8];
    v5 = *MEMORY[0x1E696A3E0];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v30 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        if (([v7 hasPrefix:@"SavedFolders"] & 1) == 0)
        {
          v8 = [v26 stringByAppendingPathComponent:v7];
          v9 = [v26 stringByAppendingPathComponent:v7];
          v10 = [v27 attributesOfItemAtPath:v9 error:0];

          v11 = [v10 objectForKey:v25];
          v12 = [v11 isEqualToString:v5];

          if (v12)
          {
            v13 = v8;
            v14 = [v8 fileSystemRepresentation];
            v15 = [v24 stringByAppendingPathComponent:v7];
            v16 = v15;
            v17 = [v15 fileSystemRepresentation];
            rename(v14, v17, v18);
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v3);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)_stringsForIndexSet:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__MFMailMessageLibrary__stringsForIndexSet___block_invoke;
  v7[3] = &unk_1E7AA4300;
  v5 = v4;
  v8 = v5;
  [v3 enumerateIndexesUsingBlock:v7];

  return v5;
}

void __44__MFMailMessageLibrary__stringsForIndexSet___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = EFStringWithInt64();
  [v1 addObject:?];
}

- (id)indexableMessagesWhere:(id)a3 sortedBy:(id)a4 limit:(int64_t)a5 options:(unsigned int)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(MFMailMessageLibrary *)self _nonLocalAccountsClause];
  if (v12)
  {
    *buf = 0;
    v26 = buf;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__6;
    v29 = __Block_byref_object_dispose__6;
    v30 = MEMORY[0x1E695E0F0];
    v13 = [(MFMailMessageLibrary *)self database];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary indexableMessagesWhere:sortedBy:limit:options:]"];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __70__MFMailMessageLibrary_indexableMessagesWhere_sortedBy_limit_options___block_invoke;
    v18[3] = &unk_1E7AA4328;
    v24 = a6;
    v18[4] = self;
    v23 = a5;
    v19 = v10;
    v20 = v11;
    v21 = v12;
    v22 = buf;
    [v13 __performReadWithCaller:v14 usingBlock:v18];

    v15 = *(v26 + 5);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v16 = MFLogGeneral();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v16, OS_LOG_TYPE_DEFAULT, "#Warning SearchableIndex: Skipping message search request until we have determined our active non-local accounts", buf, 2u);
    }

    v15 = MEMORY[0x1E695E0F0];
  }

  return v15;
}

uint64_t __70__MFMailMessageLibrary_indexableMessagesWhere_sortedBy_limit_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _canSelectMessagesWithOptions:*(a1 + 80) connection:v3])
  {
    v4 = [*(a1 + 32) isProtectedDataAvailable:v3];
    v5 = [*(a1 + 32) _selectClauseForOptions:*(a1 + 80) protectedDataAvailable:v4];
    v6 = tablesForOptionsAndCriterion(*(a1 + 80), 0, v4);
    v7 = joinsForTables(v6);
    if (*(a1 + 72))
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" LIMIT %ld", *(a1 + 72)];
    }

    else
    {
      v8 = &stru_1F273A5E0;
    }

    v9 = *(a1 + 48);
    if (*(a1 + 40))
    {
      if (v9)
      {
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ FROM messages %s WHERE %@ %@ ORDER BY %@%@", v5, v7, *(a1 + 40), *(a1 + 56), *(a1 + 48), v8];
      }

      else
      {
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ FROM messages %s WHERE %@ %@%@", v5, v7, *(a1 + 40), *(a1 + 56), v8];
      }
    }

    else if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ FROM messages %s ORDER BY %@%@", v5, v7, *(a1 + 48), v8];
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ FROM messages %s %@", v5, v7, v8];
    }

    v11 = v10;
    free(v7);
    v12 = [v3 preparedStatementForQueryString:v11];
    if (v12)
    {
      v13 = objc_alloc_init(_MFMessageCollector);
      [*(a1 + 32) _sendMessagesForStatement:v12 connection:v3 to:v13 options:*(a1 + 80) timestamp:mach_absolute_time()];
      v14 = [(_MFMessageCollector *)v13 copyMessages];
      v15 = *(*(a1 + 64) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }

    else
    {
      v17 = MFLogGeneral();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __70__MFMailMessageLibrary_indexableMessagesWhere_sortedBy_limit_options___block_invoke_cold_1();
      }
    }
  }

  return 1;
}

- (void)removeSearchableItemsForMailbox:(id)a3
{
  v5 = a3;
  v4 = [v5 account];
  -[MFMailMessageLibrary removeSearchableItemsForAccount:databaseID:](self, "removeSearchableItemsForAccount:databaseID:", v4, [v5 databaseID]);
}

- (void)removeSearchableItemsForMessages:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E699B810] indexSet];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__MFMailMessageLibrary_removeSearchableItemsForMessages___block_invoke;
  v7[3] = &unk_1E7AA4350;
  v6 = v5;
  v8 = v6;
  [v4 enumerateObjectsUsingBlock:v7];
  [(MFMailMessageLibrary *)self _removeSearchableItemsWithLibraryIDs:v6];
}

void __57__MFMailMessageLibrary_removeSearchableItemsForMessages___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) addIndex:{objc_msgSend(v3, "libraryID")}];
}

- (void)removeSearchableItemsForAccount:(id)a3 databaseID:(int64_t)a4
{
  v12 = a3;
  if (v12)
  {
    v6 = MFUserAgent();
    v7 = [v6 isMobileMail];

    if (v7)
    {
      if (*MEMORY[0x1E699A728] == a4)
      {
        v8 = [v12 uniqueID];
      }

      else
      {
        v9 = MEMORY[0x1E696AEC0];
        v10 = [v12 uniqueID];
        v8 = [v9 stringWithFormat:@"%@.%lld", v10, a4];
      }

      v11 = [(MFMailMessageLibrary *)self searchableIndex];
      [v11 removeItemsForDomainIdentifier:v8];
    }
  }
}

- (void)_removeSearchableItemsWithLibraryIDs:(id)a3
{
  v8 = a3;
  if ([v8 count])
  {
    v4 = MFUserAgent();
    v5 = [v4 isMobileMail];

    if (v5)
    {
      v6 = [(MFMailMessageLibrary *)self _stringsForIndexSet:v8];
      v7 = [(MFMailMessageLibrary *)self searchableIndex];
      [v7 removeItemsWithIdentifiers:v6];
    }
  }
}

- (void)reindexSearchableItemsWithIdentifiers:(id)a3 acknowledgementHandler:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(MFMailMessageLibrary *)self searchableIndex];
  [v7 reindexSearchableItemsWithIdentifiers:v8 acknowledgementHandler:v6];
}

- (void)reindexAllSearchableItemsWithAcknowledgementHandler:(id)a3
{
  v5 = a3;
  v4 = [(MFMailMessageLibrary *)self searchableIndex];
  [v4 reindexAllSearchableItemsWithAcknowledgementHandler:v5];
}

- (void)removeMessagesFromCacheWithLibraryIDs:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [(MFWeakObjectCache *)self->_libraryMessageCache removeObjectForKey:*(*(&v9 + 1) + 8 * v7++), v9];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)_libraryMessageWithLibraryID:(int64_t)a3 wasCached:(BOOL *)a4
{
  libraryMessageCache = self->_libraryMessageCache;
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v7 = [(MFWeakObjectCache *)libraryMessageCache objectForKey:v6 wasCached:a4];

  return v7;
}

- (id)_messageForRow:(id)a3 options:(unsigned int)a4 timestamp:(unint64_t)a5 connection:(id)a6 isProtectedDataAvailable:(BOOL)a7 recipientsCache:(id)a8
{
  v147 = a7;
  v169 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v140 = a6;
  v136 = a8;
  v11 = [v10 objectForKeyedSubscript:@"ROWID"];
  v154 = [v11 databaseIDValue];

  v12 = [v10 objectForKeyedSubscript:@"remote_id"];
  v129 = [v12 stringValue];

  v13 = [v10 objectForKeyedSubscript:@"date_received"];
  v14 = [v13 numberValue];
  v123 = [v14 longLongValue];

  v15 = [v10 objectForKeyedSubscript:@"date_sent"];
  v16 = [v15 numberValue];
  v122 = [v16 longLongValue];

  v17 = [v10 objectForKeyedSubscript:@"display_date"];
  v153 = [v17 dateValue];

  v18 = [v10 objectForKeyedSubscript:@"flags"];
  v19 = [v18 numberValue];
  v120 = [v19 longLongValue];

  v20 = [v10 objectForKeyedSubscript:@"size"];
  v21 = [v20 numberValue];
  v119 = [v21 unsignedIntegerValue];

  v22 = [v10 objectForKeyedSubscript:@"mailbox"];
  v23 = [v22 numberValue];

  v128 = v23;
  if (v23)
  {
    if ([v23 longLongValue] != -1)
    {
      goto LABEL_8;
    }

    v24 = EDLibraryLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [MFMailMessageLibrary _messageForRow:options:timestamp:connection:isProtectedDataAvailable:recipientsCache:];
    }
  }

  else
  {
    v24 = EDLibraryLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [MFMailMessageLibrary _messageForRow:options:timestamp:connection:isProtectedDataAvailable:recipientsCache:];
    }
  }

LABEL_8:
  v25 = [v10 objectForKeyedSubscript:@"original_mailbox"];
  v26 = [v25 numberValue];
  v118 = [v26 longLongValue];

  v27 = [v10 objectForKeyedSubscript:@"content_type"];
  v145 = [v27 objectValue];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = [v145 intValue] - 1;
    if (v28 <= 5)
    {
      v127 = off_1E7AA4518[v28];
      goto LABEL_14;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v127 = v145;
      goto LABEL_14;
    }
  }

  v127 = 0;
LABEL_14:
  if ([v10 columnExistsWithName:@"conversation_id"])
  {
    v29 = [v10 objectForKeyedSubscript:@"conversation_id"];
    v125 = [v29 int64Value];

    if (v125)
    {
      goto LABEL_21;
    }

    v30 = EDLibraryLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [MFMailMessageLibrary _messageForRow:options:timestamp:connection:isProtectedDataAvailable:recipientsCache:];
    }
  }

  else
  {
    v30 = EDLibraryLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v154;
      _os_log_impl(&dword_1B0389000, v30, OS_LOG_TYPE_DEFAULT, "ConversationID not loaded for message (LibraryID = %lld)?", buf, 0xCu);
    }
  }

  v125 = 0;
LABEL_21:
  if ([v10 columnExistsWithName:@"encoding"])
  {
    v31 = [v10 objectForKeyedSubscript:@"encoding"];
    v138 = [v31 numberValue];
  }

  else
  {
    v138 = 0;
  }

  if (![v10 columnExistsWithName:@"external_id"])
  {
LABEL_32:
    v146 = 0;
    goto LABEL_33;
  }

  v32 = [v10 objectForKeyedSubscript:@"external_id"];
  v146 = [v32 stringValue];

  if ([v146 length])
  {
    v33 = v146;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33;

  if (!v34)
  {
    v35 = EDLibraryLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [MFMailMessageLibrary _messageForRow:options:timestamp:connection:isProtectedDataAvailable:recipientsCache:];
    }

    goto LABEL_32;
  }

LABEL_33:
  if ([v10 columnExistsWithName:@"message_id"])
  {
    v36 = [v10 objectForKeyedSubscript:@"message_id"];
    v37 = [v36 numberValue];
    v117 = [v37 longLongValue];
  }

  else
  {
    v117 = 0;
  }

  if ([v10 columnExistsWithName:@"global_message_id"])
  {
    v38 = [v10 objectForKeyedSubscript:@"global_message_id"];
    v39 = [v38 numberValue];
    v141 = [v39 longLongValue];
  }

  else
  {
    v141 = 0;
  }

  if ([v10 columnExistsWithName:@"unique_id"])
  {
    v40 = [v10 objectForKeyedSubscript:@"unique_id"];
    v41 = [v40 numberValue];
    v116 = [v41 longLongValue];
  }

  else
  {
    v116 = 0;
  }

  if ([v10 columnExistsWithName:@"conversation_flags"])
  {
    v42 = [v10 objectForKeyedSubscript:@"conversation_flags"];
    v152 = [v42 numberValue];
  }

  else
  {
    v152 = 0;
  }

  if ([v10 columnExistsWithName:@"list_id_hash"])
  {
    v43 = [v10 objectForKeyedSubscript:@"list_id_hash"];
    v44 = [v43 int64Value];

    v151 = [objc_alloc(MEMORY[0x1E699B200]) initWithHash:v44];
  }

  else
  {
    v151 = 0;
  }

  if ([v10 columnExistsWithName:@"document_id"])
  {
    v45 = [v10 objectForKeyedSubscript:@"document_id"];
    v46 = [v45 stringValue];

    if ([v46 length])
    {
      v150 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v46];
    }

    else
    {
      v150 = 0;
    }
  }

  else
  {
    v150 = 0;
  }

  if ([v10 columnExistsWithName:@"read_later_date"])
  {
    v47 = [v10 objectForKeyedSubscript:@"read_later_date"];
    v149 = [v47 dateValue];
  }

  else
  {
    v149 = 0;
  }

  if ([v10 columnExistsWithName:@"follow_up_start_date"])
  {
    v48 = [v10 objectForKeyedSubscript:@"follow_up_start_date"];
    v157 = [v48 dateValue];
  }

  else
  {
    v157 = 0;
  }

  if ([v10 columnExistsWithName:@"follow_up_end_date"])
  {
    v49 = [v10 objectForKeyedSubscript:@"follow_up_end_date"];
    v159 = [v49 dateValue];
  }

  else
  {
    v159 = 0;
  }

  if ([v10 columnExistsWithName:@"follow_up_jsonstringformodelevaluationforsuggestions"])
  {
    v50 = [v10 objectForKeyedSubscript:@"follow_up_jsonstringformodelevaluationforsuggestions"];
    v135 = [v50 stringValue];
  }

  else
  {
    v135 = 0;
  }

  if ([v10 columnExistsWithName:@"send_later_date"])
  {
    v51 = [v10 objectForKeyedSubscript:@"send_later_date"];
    v148 = [v51 dateValue];
  }

  else
  {
    v148 = 0;
  }

  v139 = [MEMORY[0x1E699B520] categoryForResultRow:v10];
  v52 = [MEMORY[0x1E699B510] businessAddressesBusinessColumnName];
  v53 = [v10 columnExistsWithName:v52];

  if (v53)
  {
    v54 = [MEMORY[0x1E699B510] businessAddressesBusinessColumnName];
    v55 = [v10 objectForKeyedSubscript:v54];
    v126 = [v55 databaseIDValue];

    if (!v126)
    {
      v56 = +[MFMailMessageLibrary log];
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        [MFMailMessageLibrary _messageForRow:options:timestamp:connection:isProtectedDataAvailable:recipientsCache:];
      }

      memset(buf, 170, 0x288uLL);
      *&buf[32] = 0;
      *v163 = 0xE00000001;
      *&v163[8] = 1;
      *v164 = getpid();
      v161 = 648;
      v126 = 0;
      if (!sysctl(v163, 4u, buf, &v161, 0, 0) && (*&buf[32] & 0x800) != 0)
      {
        __debugbreak();
        JUMPOUT(0x1B05A1D0CLL);
      }
    }
  }

  else
  {
    v126 = *MEMORY[0x1E699A728];
  }

  v134 = [MEMORY[0x1E699B510] brandIDForResultRow:v10];
  if ([v10 columnExistsWithName:@"subject"])
  {
    v57 = [v10 objectForKeyedSubscript:@"subject"];
    v143 = [v57 stringValue];

    if ((a4 & 1) == 0)
    {
      v58 = 0;
      goto LABEL_97;
    }

    if (v143)
    {
      v59 = v143;
    }

    else
    {
      v59 = &stru_1F273A5E0;
    }

    if (v143 || !v147)
    {
      goto LABEL_93;
    }
  }

  else
  {
    if ((a4 & 1) == 0)
    {
      v58 = 0;
      v143 = 0;
      goto LABEL_97;
    }

    if (!v147)
    {
      goto LABEL_92;
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  *&buf[24] = -1;
  v60 = [v140 preparedStatementForQueryString:@"SELECT subject FROM messages WHERE ROWID = ?"];
  v61 = [MEMORY[0x1E696AD98] numberWithLongLong:v154];
  v167 = v61;
  v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v167 count:1];
  v160[0] = MEMORY[0x1E69E9820];
  v160[1] = 3221225472;
  v160[2] = __109__MFMailMessageLibrary__messageForRow_options_timestamp_connection_isProtectedDataAvailable_recipientsCache___block_invoke;
  v160[3] = &unk_1E7AA3810;
  v160[4] = buf;
  [v60 executeWithIndexedBindings:v62 usingBlock:v160 error:0];

  v63 = EDLibraryLog();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
  {
    v114 = *(*&buf[8] + 24);
    *v163 = 134218496;
    *&v163[4] = v154;
    *v164 = 2048;
    *&v164[2] = v141;
    v165 = 2048;
    v166 = v114;
    _os_log_error_impl(&dword_1B0389000, v63, OS_LOG_TYPE_ERROR, "Message has no subject.  LibraryID = %lld, globalID = %lld, subjectID = %lld", v163, 0x20u);
  }

  _Block_object_dispose(buf, 8);
LABEL_92:
  v59 = &stru_1F273A5E0;
LABEL_93:
  v64 = [v10 objectForKeyedSubscript:@"subject_prefix"];
  v65 = [v64 stringValue];

  if ([v65 length])
  {
    v143 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v65, v59];
  }

  else
  {
    v143 = v59;
  }

  v58 = 1;
LABEL_97:
  if ([v10 columnExistsWithName:@"sender_comment"])
  {
    v66 = [v10 objectForKeyedSubscript:@"sender_comment"];
    v144 = [v66 stringValue];
  }

  else
  {
    v144 = 0;
  }

  if ([v10 columnExistsWithName:@"sender_address"])
  {
    v67 = [v10 objectForKeyedSubscript:@"sender_address"];
    v156 = [v67 stringValue];
  }

  else
  {
    v156 = 0;
  }

  if ([v10 columnExistsWithName:@"journaled"])
  {
    v68 = [v10 objectForKeyedSubscript:@"journaled"];
    v121 = [v68 BOOLValue];
  }

  else
  {
    v121 = 0;
  }

  v69 = MEMORY[0x1E699B248];
  v70 = [v156 emailAddressValue];
  v142 = [v69 componentsWithEmailAddress:v70];

  [v142 setDisplayName:v144];
  v71 = [v142 stringValue];
  v72 = v71;
  v73 = v156;
  if (v71)
  {
    v73 = v71;
  }

  v155 = v73;

  if ((a4 & 2) != 0)
  {
    if (!v156 && v147)
    {
      v74 = EDLibraryLog();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        [MFMailMessageLibrary _messageForRow:options:timestamp:connection:isProtectedDataAvailable:recipientsCache:];
      }
    }

    v58 |= 4u;
  }

  else if (![v155 length])
  {

    v155 = 0;
  }

  v75 = 0;
  if ((a4 & 4) != 0 && v147)
  {
    v76 = [(MFMailMessageLibrary *)self _recipientsForMessageWithDatabaseID:v154 connection:v140 recipientsCache:v136];
    v75 = [v76 toRecipientStrings];
    v77 = [v76 ccRecipientStrings];
    v133 = [v76 bccRecipientStrings];
    v130 = v77;

    v58 |= 2u;
  }

  else
  {
    v130 = 0;
    v133 = 0;
  }

  if ([v10 columnExistsWithName:@"summary"])
  {
    v78 = [v10 objectForKeyedSubscript:@"summary"];
    v132 = [v78 stringValue];

    v58 |= a4 & 8;
  }

  else
  {
    v132 = 0;
  }

  if (_os_feature_enabled_impl() && EMIsGreymatterSupported() && [v10 columnExistsWithName:@"generated_summary"])
  {
    v79 = [v10 objectForKeyedSubscript:@"generated_summary"];
    v80 = [v79 dataValue];

    v81 = [objc_alloc(MEMORY[0x1E699AD48]) initWithGlobalMessageID:v141];
    if ([v80 length])
    {
      v82 = [v10 objectForKeyedSubscript:@"urgent"];
      v83 = [v82 BOOLValue];

      v84 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v80 error:0];
      v85 = [v84 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E699A8D0]];
      v86 = [v84 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E699A8C8]];
      v131 = [objc_alloc(MEMORY[0x1E699ACB8]) initWithTopLine:v85 synopsis:v86 urgent:v83 messageItemID:v81];
    }

    else
    {
      v113 = [v10 objectForKeyedSubscript:@"urgent"];
      v84 = [v113 numberValue];

      if (v84)
      {
        v131 = [objc_alloc(MEMORY[0x1E699ACB8]) initWithTopLine:0 synopsis:0 urgent:objc_msgSend(v84 messageItemID:{"BOOLValue"), v81}];
      }

      else
      {
        v131 = 0;
      }
    }
  }

  else
  {
    v131 = 0;
  }

  if ([v10 columnExistsWithName:@"is_urgent"])
  {
    v87 = [v10 objectForKeyedSubscript:@"is_urgent"];
    v88 = [v87 BOOLValue];
  }

  else
  {
    v88 = 0;
  }

  if ([v10 columnExistsWithName:@"unsubscribe_type"])
  {
    v89 = [v10 objectForKeyedSubscript:@"unsubscribe_type"];
    v90 = [v89 numberValue];
  }

  else
  {
    v90 = 0;
  }

  if ([v10 columnExistsWithName:@"sender_bucket"])
  {
    v91 = [v10 objectForKeyedSubscript:@"sender_bucket"];
    v92 = [v91 numberValue];
    v93 = [v92 integerValue];
  }

  else
  {
    v93 = 0;
  }

  if ([v10 columnExistsWithName:@"brand_indicator_location"])
  {
    v94 = [v10 objectForKeyedSubscript:@"brand_indicator_location"];
    v95 = [v94 stringValue];

    if (v95)
    {
      v96 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v95];
    }

    else
    {
      v96 = 0;
    }
  }

  else
  {
    v96 = 0;
  }

  if ([v10 columnExistsWithName:@"message_id_header"])
  {
    v97 = [v10 objectForKeyedSubscript:@"message_id_header"];
    v98 = [v97 stringValue];
  }

  else
  {
    v98 = 0;
  }

  buf[0] = 0;
  v99 = [(MFMailMessageLibrary *)self _libraryMessageWithLibraryID:v154 wasCached:buf];
  [v99 setGenerationNumber:a5];
  if (v147)
  {
    if (v155)
    {
      v162 = v155;
      v100 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v162 count:1];
    }

    else
    {
      v100 = 0;
    }

    LODWORD(v115) = v58;
    [v99 setSubject:v143 to:v75 cc:v130 bcc:v133 sender:v100 dateReceived:v132 dateSent:v123 summary:v122 withOptions:v115];
    if (v155)
    {
    }

    if ((a4 & 0x200000) != 0)
    {
      [v99 setSenderBucket:v93];
    }

    [v99 setGeneratedSummary:v131];
  }

  else
  {
    [v99 setDateReceivedAsTimeIntervalSince1970:v123];
    [v99 setDateSentAsTimeIntervalSince1970:v122];
  }

  [v99 setIsUrgent:v88];
  if (v153)
  {
    v101 = [v153 ec_integerDate];
    [v99 setDisplayDate:v101];
  }

  if (v151)
  {
    [v99 setListIDHash:v151];
  }

  if (v150)
  {
    [v99 setDocumentID:v150];
  }

  if (v141)
  {
    [v99 setGlobalMessageID:v141];
  }

  if (v152)
  {
    [v99 setConversationFlags:{objc_msgSend(v152, "longLongValue")}];
  }

  if (v90)
  {
    [v99 setUnsubscribeType:{objc_msgSend(v90, "longLongValue")}];
  }

  if (v149)
  {
    v102 = [objc_alloc(MEMORY[0x1E699AE30]) initWithDate:v149];
    [v99 setReadLater:v102];
  }

  if (v148)
  {
    [v99 setSendLaterDate:v148];
  }

  [v99 setBrandIndicatorLocation:v96 andData:0];
  if (v98)
  {
    [v99 setMessageIDHeader:v98];
  }

  [v99 setIsJournaled:v121];
  if (v157 && v159)
  {
    v103 = [objc_alloc(MEMORY[0x1E699ACA8]) initWithStartDate:v157 endDate:v159 jsonStringForModelEvaluationForSuggestions:v135];
    [v99 setFollowUp:v103];
  }

  if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl() && EMIsGreymatterSupported())
  {
    [v99 setCategory:v139];
  }

  if (_os_feature_enabled_impl())
  {
    [v99 setBusinessID:v126];
    v104 = [MEMORY[0x1E699B5C0] messageGlobalDataValidationState];
    v105 = [v10 columnExistsWithName:v104];

    if (v105)
    {
      v106 = [MEMORY[0x1E699B5C0] messageGlobalDataValidationState];
      v107 = [v10 objectForKeyedSubscript:v106];
      v108 = [v107 numberValue];
      [v99 setAuthenticationState:{objc_msgSend(v108, "integerValue")}];
    }

    [v99 setBusinessLogoID:v134];
  }

  [v99 mf_lock];
  if ([v99 mailboxID] == -1)
  {
    [v99 setContentType:v127];
    [v99 setRemoteID:v129 flags:v120 size:v119 mailboxID:objc_msgSend(v128 originalMailboxID:{"longLongValue"), v118}];
    if (v146)
    {
      [v99 setExternalID:v146];
    }

    if (v138)
    {
      [v99 setPreferredEncoding:{objc_msgSend(v138, "unsignedIntValue")}];
    }

    [v99 setUniqueRemoteId:v116];
    [v99 setConversationID:v125];
    [v99 setMessageIDHash:v117];
  }

  [v99 mf_unlock];
  if ([v99 mailboxID] == -1)
  {
    v109 = EDLibraryLog();
    if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
    {
      [MFMailMessageLibrary _messageForRow:buf options:? timestamp:? connection:? isProtectedDataAvailable:? recipientsCache:?];
    }
  }

  v110 = v99;

  v111 = *MEMORY[0x1E69E9840];

  return v110;
}

void __109__MFMailMessageLibrary__messageForRow_options_timestamp_connection_isProtectedDataAvailable_recipientsCache___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectForKeyedSubscript:@"subject"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 databaseIDValue];
}

- (id)_recipientsForMessageWithDatabaseID:(int64_t)a3 connection:(id)a4 recipientsCache:(id)a5
{
  v25[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = objc_alloc_init(_MFRecipientCollection);
  v10 = [v7 preparedStatementForQueryString:{@"SELECT addresses.ROWID, addresses.address, addresses.comment, recipients.type FROM recipients JOIN addresses ON recipients.address = addresses.ROWID WHERE recipients.message = ? ORDER BY recipients.position"}];
  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v25[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __87__MFMailMessageLibrary__recipientsForMessageWithDatabaseID_connection_recipientsCache___block_invoke;
  v22[3] = &unk_1E7AA3DD8;
  v13 = v8;
  v23 = v13;
  v14 = v9;
  v24 = v14;
  v21 = 0;
  v15 = [v10 executeWithIndexedBindings:v12 usingBlock:v22 error:&v21];
  v16 = v21;

  if ((v15 & 1) == 0)
  {
    [v7 handleError:v16 message:@"Fetching recipients"];
  }

  v17 = v24;
  v18 = v14;

  v19 = *MEMORY[0x1E69E9840];
  return v14;
}

void __87__MFMailMessageLibrary__recipientsForMessageWithDatabaseID_connection_recipientsCache___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [v16 objectForKeyedSubscript:@"ROWID"];
  v4 = [v3 int64Value];

  v5 = [v16 objectForKeyedSubscript:@"type"];
  v6 = [v5 integerValue];

  v7 = *(a1 + 32);
  if (!v7 || ([MEMORY[0x1E696AD98] numberWithLongLong:v4], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "objectForKeyedSubscript:", v8), v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    v10 = [v16 objectForKeyedSubscript:@"address"];
    v11 = [v10 stringValue];

    v12 = [v16 objectForKeyedSubscript:@"comment"];
    v13 = [v12 stringValue];

    v9 = [[_MFEmailAddress alloc] initWithAddress:v11 displayName:v13];
    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithLongLong:v4];
      [v14 setObject:v9 forKeyedSubscript:v15];
    }
  }

  switch(v6)
  {
    case 3:
      [*(a1 + 40) addBCCRecipient:v9];
      break;
    case 2:
      [*(a1 + 40) addCCRecipient:v9];
      break;
    case 1:
      [*(a1 + 40) addToRecipient:v9];
      break;
  }
}

- (id)senderForMessageWithLibraryID:(int64_t)a3 error:(id *)a4
{
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__6;
  v43 = __Block_byref_object_dispose__6;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__6;
  v37 = __Block_byref_object_dispose__6;
  v38 = 0;
  v32 = 0;
  v7 = [MEMORY[0x1E699B5C0] selectAddressesStatementWithResultColumns:&v32];
  v8 = v32;
  v9 = [MEMORY[0x1E699B5C0] messagesTableName];
  v10 = *MEMORY[0x1E699B768];
  v11 = [v7 join:v9 sourceColumn:*MEMORY[0x1E699B768] targetColumn:@"sender"];

  v12 = MEMORY[0x1E699B8C8];
  v13 = [MEMORY[0x1E699B5C0] messagesTableName];
  v14 = [v12 table:v13 column:v10];

  v15 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v16 = [v14 equalTo:v15];
  [v7 setWhere:v16];

  v17 = [(MFMailMessageLibrary *)self database];
  v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary senderForMessageWithLibraryID:error:]"];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __60__MFMailMessageLibrary_senderForMessageWithLibraryID_error___block_invoke;
  v27[3] = &unk_1E7AA4108;
  v19 = v7;
  v28 = v19;
  v20 = v8;
  v29 = v20;
  v30 = &v39;
  v31 = &v33;
  v21 = [v17 __performReadWithCaller:v18 usingBlock:v27];

  if (a4)
  {
    v22 = v34;
    if ((v21 & 1) == 0 && !v34[5])
    {
      v23 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E699B770] code:1 userInfo:0];
      v24 = v34[5];
      v34[5] = v23;

      v22 = v34;
    }

    *a4 = v22[5];
  }

  v25 = v40[5];

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  return v25;
}

uint64_t __60__MFMailMessageLibrary_senderForMessageWithLibraryID_error___block_invoke(uint64_t a1, void *a2)
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__MFMailMessageLibrary_senderForMessageWithLibraryID_error___block_invoke_2;
  v12[3] = &unk_1E7AA4378;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v13 = v5;
  v14 = v6;
  v8 = *(v7 + 8);
  obj = *(v8 + 40);
  v9 = [a2 executeSelectStatement:v4 withBlock:v12 error:&obj];
  objc_storeStrong((v8 + 40), obj);

  return v9;
}

void __60__MFMailMessageLibrary_senderForMessageWithLibraryID_error___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [*(a1 + 32) first];
  v4 = [v13 objectForKeyedSubscript:v3];
  v5 = [v4 stringValue];

  v6 = [*(a1 + 32) second];
  v7 = [v13 objectForKeyedSubscript:v6];
  v8 = [v7 stringValue];

  v9 = [objc_alloc(MEMORY[0x1E699B248]) initWithString:v8];
  [v9 setDisplayName:v5];
  v10 = [v9 emailAddressValue];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v12);
}

- (id)_recipientsForMessagesWithDatabaseIDs:(id)a3 includeTo:(BOOL)a4 includeCC:(BOOL)a5 includeBCC:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v11 = a3;
  if (!v7 && !v6 && !v8)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"MailMessageLibrary.m" lineNumber:7990 description:@"Must include at least one recipient type"];
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v8)
  {
    v13 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%lu", 1];
    [v12 addObject:v13];
  }

  if (v7)
  {
    v14 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%lu", 2];
    [v12 addObject:v14];
  }

  if (v6)
  {
    v15 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%lu", 3];
    [v12 addObject:v15];
  }

  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  v17 = [v11 valueForKey:@"stringValue"];
  v18 = [v17 componentsJoinedByString:{@", "}];
  v19 = [v12 componentsJoinedByString:{@", "}];
  v20 = [v16 initWithFormat:@"SELECT addresses.address, addresses.comment, recipients.type, recipients.message FROM recipients JOIN addresses ON recipients.address = addresses.ROWID WHERE recipients.message IN (%@) AND type IN (%@) ORDER BY recipients.position", v18, v19];

  v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v22 = [(MFMailMessageLibrary *)self database];
  v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary _recipientsForMessagesWithDatabaseIDs:includeTo:includeCC:includeBCC:]"];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __93__MFMailMessageLibrary__recipientsForMessagesWithDatabaseIDs_includeTo_includeCC_includeBCC___block_invoke;
  v29[3] = &unk_1E7AA3B58;
  v24 = v20;
  v30 = v24;
  v25 = v21;
  v32 = self;
  v33 = a2;
  v31 = v25;
  [v22 __performReadWithCaller:v23 usingBlock:v29];

  v26 = v25;
  return v25;
}

uint64_t __93__MFMailMessageLibrary__recipientsForMessagesWithDatabaseIDs_includeTo_includeCC_includeBCC___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:*(a1 + 32)];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __93__MFMailMessageLibrary__recipientsForMessagesWithDatabaseIDs_includeTo_includeCC_includeBCC___block_invoke_2;
  v9[3] = &unk_1E7AA43A0;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v8 = 0;
  v5 = [v4 executeUsingBlock:v9 error:&v8];
  v6 = v8;
  if ((v5 & 1) == 0)
  {
    [v3 handleError:v6 message:@"Fetching recipients"];
  }

  return v5;
}

void __93__MFMailMessageLibrary__recipientsForMessagesWithDatabaseIDs_includeTo_includeCC_includeBCC___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 objectForKeyedSubscript:@"address"];
  v4 = [v3 stringValue];

  v5 = [v13 objectForKeyedSubscript:@"comment"];
  v6 = [v5 stringValue];

  v7 = [v13 objectForKeyedSubscript:@"type"];
  v8 = [v7 integerValue];

  v9 = [v13 objectForKeyedSubscript:@"message"];
  v10 = [v9 numberValue];

  v11 = [*(a1 + 32) objectForKeyedSubscript:v10];
  if (!v11)
  {
    v11 = objc_alloc_init(_MFRecipientCollection);
    [*(a1 + 32) setObject:? forKeyedSubscript:?];
  }

  switch(v8)
  {
    case 3:
      [(_MFRecipientCollection *)v11 addBCCRecipientWithAddress:v4 displayName:v6];
      break;
    case 2:
      [(_MFRecipientCollection *)v11 addCCRecipientWithAddress:v4 displayName:v6];
      break;
    case 1:
      [(_MFRecipientCollection *)v11 addToRecipientWithAddress:v4 displayName:v6];
      break;
    default:
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"MailMessageLibrary.m" lineNumber:8040 description:@"Unknown recipient type"];

      break;
  }
}

- (id)stringFromAllMailboxUnreadCount
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [(MFMailMessageLibrary *)self database];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary stringFromAllMailboxUnreadCount]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__MFMailMessageLibrary_stringFromAllMailboxUnreadCount__block_invoke;
  v8[3] = &unk_1E7AA43C8;
  v6 = v3;
  v9 = v6;
  [v4 __performReadWithCaller:v5 usingBlock:v8];

  return v6;
}

uint64_t __55__MFMailMessageLibrary_stringFromAllMailboxUnreadCount__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:@"SELECT * FROM mailboxes"];;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__MFMailMessageLibrary_stringFromAllMailboxUnreadCount__block_invoke_2;
  v9[3] = &unk_1E7AA3610;
  v10 = *(a1 + 32);
  v8 = 0;
  v5 = [v4 executeUsingBlock:v9 error:&v8];
  v6 = v8;
  if ((v5 & 1) == 0)
  {
    [v3 handleError:v6 message:@"Selecting mailboxes"];
  }

  return v5;
}

void __55__MFMailMessageLibrary_stringFromAllMailboxUnreadCount__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v28 = v3;
  v5 = [v3 objectForKeyedSubscript:@"url"];
  v6 = [v5 stringValue];
  [v4 appendFormat:@"url: %@\n", v6];

  v7 = *(a1 + 32);
  v8 = [v28 objectForKeyedSubscript:@"total_count"];
  v9 = [v8 stringValue];
  [v7 appendFormat:@"  total Count: %@\n", v9];

  v10 = *(a1 + 32);
  v11 = [v28 objectForKeyedSubscript:@"unread_count"];
  v12 = [v11 stringValue];
  [v10 appendFormat:@"  unread Count: %@\n", v12];

  v13 = *(a1 + 32);
  v14 = [v28 objectForKeyedSubscript:@"deleted_count"];
  v15 = [v14 stringValue];
  [v13 appendFormat:@"  deleted Count: %@\n", v15];

  v16 = *(a1 + 32);
  v17 = [v28 objectForKeyedSubscript:@"flagged_count"];
  v18 = [v17 stringValue];
  [v16 appendFormat:@"  flagged Count: %@\n", v18];

  v19 = *(a1 + 32);
  v20 = [v28 objectForKeyedSubscript:@"server_unread_count"];
  v21 = [v20 stringValue];
  [v19 appendFormat:@"  server Unread Count: %@\n", v21];

  v22 = *(a1 + 32);
  v23 = [v28 objectForKeyedSubscript:@"last_sync_status_count"];
  v24 = [v23 stringValue];
  [v22 appendFormat:@"  last Sync Status Count: %@\n", v24];

  v25 = *(a1 + 32);
  v26 = [v28 objectForKeyedSubscript:@"most_recent_status_count"];
  v27 = [v26 stringValue];
  [v25 appendFormat:@"  most Recent Status Count: %@\n", v27];
}

- (BOOL)messageDataExistsInDatabaseForMessageLibraryID:(int64_t)a3 part:(id)a4 length:(unint64_t *)a5
{
  v8 = a4;
  v9 = @"SELECT length FROM message_data WHERE message_id = ? AND part = ?";
  if (!v8)
  {
    v9 = @"SELECT length FROM message_data WHERE message_id = ? AND part IS NULL";
  }

  v10 = v9;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0x7FFFFFFFFFFFFFFFLL;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v11 = [(MFMailMessageLibrary *)self database];
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailMessageLibrary messageDataExistsInDatabaseForMessageLibraryID:part:length:]"];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __83__MFMailMessageLibrary_messageDataExistsInDatabaseForMessageLibraryID_part_length___block_invoke;
  v17[3] = &unk_1E7AA43F0;
  v13 = v10;
  v18 = v13;
  v22 = a3;
  v14 = v8;
  v19 = v14;
  v20 = &v27;
  v21 = &v23;
  [v11 __performReadWithCaller:v12 usingBlock:v17];

  if (a5)
  {
    *a5 = v28[3];
  }

  v15 = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  return v15;
}

uint64_t __83__MFMailMessageLibrary_messageDataExistsInDatabaseForMessageLibraryID_part_length___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:*(a1 + 32)];
  v5 = [v4 compiled];
  sqlite3_bind_int64(v5, 1, *(a1 + 64));
  v6 = *(a1 + 40);
  if (v6)
  {
    sqlite3_bind_text(v5, 2, [v6 UTF8String], -1, 0);
  }

  v10 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__MFMailMessageLibrary_messageDataExistsInDatabaseForMessageLibraryID_part_length___block_invoke_2;
  v11[3] = &unk_1E7AA4130;
  v12 = *(a1 + 48);
  v7 = [v4 executeUsingBlock:v11 error:&v10];
  v8 = v10;
  if ((v7 & 1) == 0)
  {
    [v3 handleError:v8 message:@"Fetching message data"];
  }

  return v7;
}

void __83__MFMailMessageLibrary_messageDataExistsInDatabaseForMessageLibraryID_part_length___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v6 = [v7 objectForKeyedSubscript:@"length"];
  *(*(*(a1 + 32) + 8) + 24) = [v6 integerValue];

  *(*(*(a1 + 40) + 8) + 24) = 1;
  *a4 = 1;
}

- (EDWebContentParser)remoteContentParser
{
  os_unfair_lock_lock(&self->_remoteContentParserLock);
  remoteContentParser = self->_remoteContentParser;
  if (!remoteContentParser)
  {
    v4 = objc_alloc_init(MEMORY[0x1E699B7F8]);
    v5 = _os_feature_enabled_impl();
    v6 = objc_alloc(MEMORY[0x1E699B708]);
    if (v5)
    {
      v7 = 7;
    }

    else
    {
      v7 = 5;
    }

    v8 = [v6 initWithOptions:v7 cancelationToken:v4];
    v9 = self->_remoteContentParser;
    self->_remoteContentParser = v8;

    remoteContentParser = self->_remoteContentParser;
  }

  v10 = remoteContentParser;
  os_unfair_lock_unlock(&self->_remoteContentParserLock);

  return v10;
}

- (BOOL)_shouldStoreRemoteContentForMessage:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695E000] em_userDefaults];
  v6 = [v5 integerForKey:*MEMORY[0x1E699AB98]];

  if ((v6 & 1) == 0)
  {
    v7 = EDLibraryLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = v4;
      v8 = "Skipping remote content parsing (not yet enabled by user): %{public}@";
      v9 = v7;
      v10 = 12;
LABEL_10:
      _os_log_impl(&dword_1B0389000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if ((v6 & 8) != 0)
  {
    v7 = EDLibraryLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v25 = v6;
      v26 = 2114;
      v27 = v4;
      v8 = "Skipping remote content parsing (%lx): %{public}@";
      v9 = v7;
      v10 = 22;
      goto LABEL_10;
    }

LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  v11 = [(MFMailMessageLibrary *)self persistence];
  v12 = [v11 remoteContentManager];
  v23 = 0;
  v13 = [v12 shouldAddRemoteContentLinksForMessage:v4 logMessage:&v23];
  v7 = v23;

  if ((v13 & 1) == 0)
  {
    v17 = EDLibraryLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v25 = v7;
      v26 = 2114;
      v27 = v4;
      v18 = "Skipping remote content parsing (%{public}@): %{public}@";
      v19 = v17;
      v20 = 22;
LABEL_15:
      _os_log_impl(&dword_1B0389000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
    }

LABEL_16:

    goto LABEL_17;
  }

  v14 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v15 = [v14 isMailPrivacyProtectionAllowed];

  if ((v15 & 1) == 0)
  {
    v17 = EDLibraryLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = v4;
      v18 = "Skipping remote content parsing (prohibited by MDM): %{public}@";
      v19 = v17;
      v20 = 12;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v16 = 1;
LABEL_18:

  v21 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)_storeRemoteContentLinksCachedOnMessage:(id)a3 linksToVerify:(id *)a4
{
  v6 = a3;
  v7 = [v6 remoteContentLinks];
  if (v7)
  {
    v8 = [(MFMailMessageLibrary *)self persistence];
    v9 = [v8 remoteContentManager];

    v10 = +[MFPowerController sharedInstance];
    if ([v10 isPluggedIn])
    {
      v11 = [v9 shouldVerifyRemoteLinks];

      if (v11)
      {
        v12 = v7;
        v13 = 0;
        v14 = v7;
LABEL_8:
        *a4 = v14;

        goto LABEL_9;
      }
    }

    else
    {
    }

    [v9 addRemoteContentLinks:v7];
    v14 = 0;
    v13 = 1;
    goto LABEL_8;
  }

  v13 = 0;
  *a4 = 0;
LABEL_9:

  return v13;
}

- (void)processRemoteContentFromFullData:(id)a3 forMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(MFMailMessageLibrary *)self _shouldStoreRemoteContentForMessage:v7])
  {
    v19 = 0;
    v8 = [(MFMailMessageLibrary *)self _storeRemoteContentLinksCachedOnMessage:v7 linksToVerify:&v19];
    v9 = [(MFMailMessageLibrary *)self _parserRemoteContentOptionsForMessage:v7 shouldStoreRemoteContent:!v8, v19];
  }

  else
  {
    v9 = [(MFMailMessageLibrary *)self _parserRemoteContentOptionsForMessage:v7 shouldStoreRemoteContent:0, 0];
  }

  v10 = v9;
  v11 = [v6 length];
  v12 = [v6 mf_rangeOfRFC822HeaderData];
  v14 = v13;
  if (v13 == v11)
  {
    if (v10)
    {
      [(MFMailMessageLibrary *)self _storeLinksToVerifyIfExistent:v18];
    }

    v15 = 0;
    v16 = 0;
  }

  else
  {
    v17 = v12;
    v16 = [v6 mf_subdataWithRange:{v12, v13}];
    v15 = [v6 mf_subdataWithRange:{v17 + v14, v11 - (v17 + v14)}];
    [(MFMailMessageLibrary *)self _findHTMLPartsFromHeaderData:v16 bodyData:v15 forMessage:v7 linksToVerify:v18 parsingOptions:v10];
  }
}

- (void)_storeLinksToVerifyIfExistent:(void *)a1
{
  v3 = a2;
  if (a1 && v3)
  {
    v6 = v3;
    v4 = [a1 persistence];
    v5 = [v4 remoteContentManager];
    [v5 addRemoteContentLinks:v6];

    v3 = v6;
  }
}

- (void)processRemoteContentFromHeaderData:(id)a3 bodyData:(id)a4 forMessage:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(MFMailMessageLibrary *)self _shouldStoreRemoteContentForMessage:v10])
  {
    v14 = 0;
    v11 = [(MFMailMessageLibrary *)self _storeRemoteContentLinksCachedOnMessage:v10 linksToVerify:&v14];
    v12 = v14;
    v13 = !v11;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  [(MFMailMessageLibrary *)self _findHTMLPartsFromHeaderData:v8 bodyData:v9 forMessage:v10 linksToVerify:v12 parsingOptions:[(MFMailMessageLibrary *)self _parserRemoteContentOptionsForMessage:v10 shouldStoreRemoteContent:v13]];
}

- (void)_findHTMLPartsFromHeaderData:(id)a3 bodyData:(id)a4 forMessage:(id)a5 linksToVerify:(id)a6 parsingOptions:(unint64_t)a7
{
  v50 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v41 = a4;
  v40 = a5;
  v13 = a6;
  v39 = v12;
  if (![v12 length] || !objc_msgSend(v41, "length"))
  {
    v19 = EDLibraryLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v49 = v40;
      _os_log_impl(&dword_1B0389000, v19, OS_LOG_TYPE_DEFAULT, "Skipping remote content parsing and data detection (no header or body data): %{public}@", buf, 0xCu);
    }

    [(MFMailMessageLibrary *)self _storeLinksToVerifyIfExistent:v13];
    goto LABEL_22;
  }

  v34 = v13;
  v14 = [MEMORY[0x1E696AF00] currentThread];
  v15 = [v14 threadDictionary];

  v16 = *MEMORY[0x1E69AD650];
  v35 = v15;
  v36 = [v15 objectForKeyedSubscript:*MEMORY[0x1E69AD650]];
  [v15 setObject:MEMORY[0x1E695E110] forKeyedSubscript:v16];
  v37 = objc_alloc_init(MEMORY[0x1E69AD710]);
  v38 = objc_alloc_init(MEMORY[0x1E69AD720]);
  v33 = v16;
  [v37 setMessage:v40];
  [v37 setTopLevelPart:v38];
  [v38 setMimeBody:v37];
  [v38 parseMimeBodyFromHeaderData:v39 bodyData:v41 isPartial:0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __102__MFMailMessageLibrary__findHTMLPartsFromHeaderData_bodyData_forMessage_linksToVerify_parsingOptions___block_invoke;
  aBlock[3] = &unk_1E7AA4418;
  v31 = v41;
  v32 = self;
  v43 = v31;
  v44 = self;
  v45 = v13;
  v30 = v40;
  v46 = v30;
  v47 = a7;
  v17 = _Block_copy(aBlock);
  v18 = [v37 textHtmlPart];
  if (v18)
  {
    if ((v17[2](v17, v18) & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = [v37 topLevelPart];
  v22 = 0;
  v18 = 0;
  do
  {
    if (![v21 isHTML])
    {
      goto LABEL_18;
    }

    v23 = [v21 type];
    if ([v23 isEqualToString:@"multipart"])
    {
      v24 = [v21 subtype];
      v25 = [v24 isEqualToString:@"alternative"];

      if ((v25 & 1) == 0)
      {
        v26 = [v21 subparts];
        [v20 addObjectsFromArray:v26];

        v22 = 1;
        goto LABEL_18;
      }
    }

    else
    {
    }

    v27 = [v21 textHtmlPart];

    if (v27)
    {
      v22 |= v17[2](v17, v27);
      v18 = v27;
    }

    else
    {
      v18 = 0;
    }

LABEL_18:
    v28 = [v20 lastObject];

    [v20 removeLastObject];
    v21 = v28;
  }

  while (v28);

  if ((v22 & 1) == 0)
  {
LABEL_20:
    [(MFMailMessageLibrary *)v32 detectDataFromPlainTextMessage:v31 forMessage:v30 mimePart:v38];
  }

LABEL_21:
  [v35 setObject:v36 forKeyedSubscript:v33];

  v13 = v34;
LABEL_22:

  v29 = *MEMORY[0x1E69E9840];
}

uint64_t __102__MFMailMessageLibrary__findHTMLPartsFromHeaderData_bodyData_forMessage_linksToVerify_parsingOptions___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 range];
  v6 = v5;
  v7 = [*(a1 + 32) mf_containsRange:{v4, v5}];
  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [v3 range];
    v11 = [v8 subdataWithRange:{v9, v10}];
    [*(a1 + 40) _processRemoteContentFromData:v11 forMimePart:v3 linksToVerify:*(a1 + 48) forMessage:*(a1 + 56) parsingOptions:*(a1 + 64)];
  }

  else
  {
    v12 = MFLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = [*(a1 + 32) length];
      v16 = 134218496;
      v17 = v4;
      v18 = 2048;
      v19 = v4 + v6;
      v20 = 2048;
      v21 = v15;
      _os_log_error_impl(&dword_1B0389000, v12, OS_LOG_TYPE_ERROR, "HTML part %lu..<%lu is out of bounds of body data 0..<%lu", &v16, 0x20u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)processRemoteContentFromData:(id)a3 forMessage:(id)a4 mimePart:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(MFMailMessageLibrary *)self _shouldStoreRemoteContentForMessage:v9])
  {
    v14 = 0;
    v11 = [(MFMailMessageLibrary *)self _storeRemoteContentLinksCachedOnMessage:v9 linksToVerify:&v14];
    v12 = v14;
    v13 = !v11;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  [(MFMailMessageLibrary *)self _processRemoteContentFromData:v8 forMimePart:v10 linksToVerify:v12 forMessage:v9 parsingOptions:[(MFMailMessageLibrary *)self _parserRemoteContentOptionsForMessage:v9 shouldStoreRemoteContent:v13]];
}

- (void)_processRemoteContentFromData:(id)a3 forMimePart:(id)a4 linksToVerify:(id)a5 forMessage:(id)a6 parsingOptions:(unint64_t)a7
{
  v36 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if ([v13 isHTML])
  {
    v16 = [v13 mimeBody];
    v17 = [v16 hasEncryptedDescendantPart];

    if (v17)
    {
      v18 = EDLibraryLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v35 = v15;
        _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_DEFAULT, "Skipping remote content parsing (non-top-level encrypted part): %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v18 = [v13 decodedDataForData:v12];
      v20 = [MEMORY[0x1E69AD718] preferredMimeCharset];
      v26 = [v20 charsetName];

      v27 = [(MFMailMessageLibrary *)self remoteContentParser];
      v21 = [v15 persistentID];
      v22 = [v15 subject];
      v23 = [v22 subjectString];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __106__MFMailMessageLibrary__processRemoteContentFromData_forMimePart_linksToVerify_forMessage_parsingOptions___block_invoke;
      v28[3] = &unk_1E7AA4468;
      v29 = v14;
      v30 = self;
      v24 = v26;
      v31 = v24;
      v33 = a7;
      v32 = v15;
      [v27 parseHTMLData:v18 characterEncodingName:v24 withOptions:a7 forMessage:v21 withSubject:v23 completionHandler:v28];
    }
  }

  else
  {
    v19 = EDLibraryLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v35 = v15;
      _os_log_impl(&dword_1B0389000, v19, OS_LOG_TYPE_DEFAULT, "Skipping remote content parsing (non-HTML part): %{public}@", buf, 0xCu);
    }

    [(MFMailMessageLibrary *)self _storeLinksToVerifyIfExistent:v14];
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __106__MFMailMessageLibrary__processRemoteContentFromData_forMimePart_linksToVerify_forMessage_parsingOptions___block_invoke(uint64_t a1, void *a2)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v5 = [v4 persistence];
    v6 = [v5 remoteContentManager];
    v7 = *(a1 + 32);
    v8 = [v3 remoteContentLinks];
    [v6 addRemoteContentLinks:v7 andVerifyWithParsedLinks:v8 defaultCharsetName:*(a1 + 48)];
  }

  else
  {
    v5 = [v4 persistence];
    v6 = [v5 remoteContentManager];
    v8 = [v3 remoteContentLinks];
    [v6 addRemoteContentLinks:v8 requiredParsing:1];
  }

  v9 = *(a1 + 64);
  if ((v9 & 2) != 0)
  {
    v10 = [*(a1 + 40) persistence];
    v11 = [v10 dataDetectionPersistence];
    v12 = [v3 dataDetectionResults];
    [v11 addDataDetectionResults:v12 globalMessageID:{objc_msgSend(*(a1 + 56), "globalMessageID")}];

    v9 = *(a1 + 64);
  }

  if ((v9 & 4) != 0)
  {
    v13 = [*(a1 + 56) mailbox];
    v14 = [v13 isOutgoingMailboxUid];

    if ((v14 & 1) == 0)
    {
      v15 = MEMORY[0x1E695DFF8];
      v16 = *(a1 + 40);
      v17 = [*(a1 + 56) account];
      v18 = [v16 messageBasePathForAccount:v17];
      v19 = [v15 fileURLWithPath:v18 isDirectory:1];

      v20 = [v3 richLinkResults];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __106__MFMailMessageLibrary__processRemoteContentFromData_forMimePart_linksToVerify_forMessage_parsingOptions___block_invoke_2;
      v35[3] = &unk_1E7AA4440;
      v35[4] = *(a1 + 40);
      v36 = *(a1 + 56);
      v21 = v19;
      v37 = v21;
      [v20 enumerateObjectsUsingBlock:v35];
    }
  }

  if ((*(a1 + 64) & 8) != 0)
  {
    v22 = [v3 oneTimeCode];
    v23 = v22 == 0;

    if (!v23)
    {
      v24 = [*(a1 + 40) hookRegistry];
      v25 = [v3 oneTimeCode];
      v26 = [*(a1 + 56) displayDate];
      v27 = [*(a1 + 56) globalMessageID];
      v28 = [*(a1 + 56) subject];
      v29 = [v28 subjectString];
      v30 = [*(a1 + 56) senders];
      [v24 didReceiveOneTimeCode:v25 timestamp:v26 messageID:v27 subject:v29 senders:v30];

      v31 = objc_alloc(MEMORY[0x1E699AC78]);
      v38 = @"oneTimeCodeEvent";
      v39[0] = @"detected";
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
      v33 = [v31 initWithEventName:@"com.apple.mail.oneTimeCodes" collectionData:v32];

      [*(*(a1 + 40) + 192) logOneTimeEvent:v33];
    }
  }

  v34 = *MEMORY[0x1E69E9840];
}

void __106__MFMailMessageLibrary__processRemoteContentFromData_forMimePart_linksToVerify_forMessage_parsingOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) persistence];
  v4 = [v3 richLinkPersistence];
  v5 = [v4 saveRichLinkData:v7 globalMessageID:objc_msgSend(*(a1 + 40) basePath:{"globalMessageID"), *(a1 + 48)}];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:*MEMORY[0x1E699B3E0] object:*(a1 + 40)];
}

- (unint64_t)_parserRemoteContentOptionsForMessage:(id)a3 shouldStoreRemoteContent:(BOOL)a4
{
  v4 = a4;
  v15[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(MFMailMessageLibrary *)self _shouldPerformDataDetectionForMessage:v6];
  v8 = 4;
  if (v4)
  {
    v8 = 5;
  }

  if (v7)
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v6 dateReceived];
  v11 = [v10 ef_isMoreThanTimeIntervalAgo:180.0];

  if (v11)
  {
    v12 = EDLibraryLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      -[MFMailMessageLibrary _parserRemoteContentOptionsForMessage:shouldStoreRemoteContent:].cold.1(v15, [v6 globalMessageID]);
    }
  }

  else
  {
    v9 |= 8uLL;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)dataProvider
{
  attachmentDataProvider = self->_attachmentDataProvider;
  if (!attachmentDataProvider)
  {
    v4 = [[MFAttachmentLibraryDataProvider alloc] initWithLibrary:self];
    v5 = self->_attachmentDataProvider;
    self->_attachmentDataProvider = v4;

    attachmentDataProvider = self->_attachmentDataProvider;
  }

  return attachmentDataProvider;
}

- (BOOL)_shouldPerformDataDetectionForMessage:(id)a3
{
  v4 = a3;
  v5 = @"feature not enabled";
  if (_os_feature_enabled_impl())
  {
    v6 = [(MFMailMessageLibrary *)self persistence];
    v7 = [v6 remoteContentManager];
    v10 = @"feature not enabled";
    v8 = [v7 shouldAddRemoteContentLinksForMessage:v4 logMessage:&v10];
    v5 = v10;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)detectDataFromPlainTextMessage:(id)a3 forMessage:(id)a4 mimePart:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 headersIfAvailable];
  if ([v11 hasHeaderForKey:*MEMORY[0x1E699B110]])
  {
    v12 = EDLibraryLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      -[MFMailMessageLibrary detectDataFromPlainTextMessage:forMessage:mimePart:].cold.2(buf, [v9 globalMessageID]);
    }
  }

  else
  {
    v13 = [v9 dateReceived];
    v14 = [v13 ef_isMoreThanTimeIntervalAgo:180.0];

    if (v14)
    {
      v12 = EDLibraryLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        -[MFMailMessageLibrary _parserRemoteContentOptionsForMessage:shouldStoreRemoteContent:].cold.1(buf, [v9 globalMessageID]);
      }
    }

    else
    {
      v15 = [v9 globalMessageID];
      v16 = [v10 decodedDataForData:v8];
      v12 = [(MFMailMessageLibrary *)self _getStringFromPlainTextData:v16 mimePart:v10];

      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", v15];
      v17 = EDLibraryLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v22;
        _os_log_impl(&dword_1B0389000, v17, OS_LOG_TYPE_DEFAULT, "Downloading plain text message %@, will perform one time code check", buf, 0xCu);
      }

      v18 = [(MFMailMessageLibrary *)self remoteContentParser];
      v19 = [v9 subject];
      v20 = [v19 subjectString];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __75__MFMailMessageLibrary_detectDataFromPlainTextMessage_forMessage_mimePart___block_invoke;
      v23[3] = &unk_1E7AA4490;
      v23[4] = self;
      v24 = v9;
      v25 = v15;
      [v18 parseHTMLString:v12 withOptions:8 forMessage:v22 withSubject:v20 completionHandler:v23];
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __75__MFMailMessageLibrary_detectDataFromPlainTextMessage_forMessage_mimePart___block_invoke(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 oneTimeCode];

  if (v4)
  {
    v5 = [*(a1 + 32) hookRegistry];
    v6 = [v3 oneTimeCode];
    v7 = [*(a1 + 40) displayDate];
    v8 = *(a1 + 48);
    v9 = [*(a1 + 40) subject];
    v10 = [v9 subjectString];
    v11 = [*(a1 + 40) senders];
    [v5 didReceiveOneTimeCode:v6 timestamp:v7 messageID:v8 subject:v10 senders:v11];

    v12 = objc_alloc(MEMORY[0x1E699AC78]);
    v16 = @"oneTimeCodeEvent";
    v17[0] = @"detected";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v14 = [v12 initWithEventName:@"com.apple.mail.oneTimeCodes" collectionData:v13];

    [*(*(a1 + 32) + 192) logOneTimeEvent:v14];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)_getStringFromPlainTextData:(id)a3 mimePart:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v6 textEncoding];
  v7 = MFCreateStringWithData();

  return v7;
}

- (void)notifyNewData:(id)a3 availableForMessage:(id)a4
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](self);
  v6 = sub_1B0E42F38();
  v7 = v5;
  sub_1B08A6BE0(v6, v5, a4);
  sub_1B0391D50(v6, v7);
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a4);
}

- (void)_writeEmlxData:toFile:protectionClass:purgeable:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_writeEmlxData:toFile:protectionClass:purgeable:.cold.2()
{
  OUTLINED_FUNCTION_14();
  v1 = v0;
  *v2 = 138412546;
  *(v2 + 4) = v0;
  *(v2 + 12) = 1024;
  *(v2 + 14) = v3;
  _os_log_error_impl(&dword_1B0389000, v5, OS_LOG_TYPE_ERROR, "Failed to mark file '%@' as purgeable: %{errno}d", v4, 0x12u);
}

- (void)_writeEmlxData:(int)a1 toFile:(NSObject *)a2 protectionClass:purgeable:.cold.3(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_debug_impl(&dword_1B0389000, a2, OS_LOG_TYPE_DEBUG, "rename(2) failed (%{errno}d). Using NSFileManager fallback.", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_writeEmlxData:(uint64_t)a3 toFile:protectionClass:purgeable:.cold.4(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11(a1, a2, a3, 5.8382e-34);
  OUTLINED_FUNCTION_4_0(&dword_1B0389000, "Failed to move temporary file into place '%{public}@': %@", v4, v5);
}

- (void)_writeEmlxData:toFile:protectionClass:purgeable:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_writeEmlxData:toFile:protectionClass:purgeable:.cold.6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)addReferenceForContext:usingDatabaseConnection:generationWindow:mergeHandler:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_13(&dword_1B0389000, v0, v1, "adding message references took %.2f (messageID: %lld)", v3);
  v2 = *MEMORY[0x1E69E9840];
}

void __141__MFMailMessageLibrary_addMessages_withMailbox_newMessagesByOldMessage_remoteIDs_setFlags_addPOPUIDs_dataSectionsByMessage_generationWindow___block_invoke_cold_1(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_9(a1, a2);
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void __141__MFMailMessageLibrary_addMessages_withMailbox_newMessagesByOldMessage_remoteIDs_setFlags_addPOPUIDs_dataSectionsByMessage_generationWindow___block_invoke_cold_2(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_9(a1, a2);
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void __141__MFMailMessageLibrary_addMessages_withMailbox_newMessagesByOldMessage_remoteIDs_setFlags_addPOPUIDs_dataSectionsByMessage_generationWindow___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_14();
  v1 = v0;
  *v2 = 138543362;
  *v3 = v0;
  _os_log_error_impl(&dword_1B0389000, v5, OS_LOG_TYPE_ERROR, "error importing message %{public}@, aborting", v4, 0xCu);
}

void __141__MFMailMessageLibrary_addMessages_withMailbox_newMessagesByOldMessage_remoteIDs_setFlags_addPOPUIDs_dataSectionsByMessage_generationWindow___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __80__MFMailMessageLibrary__addRecipients_toMessageWithDatabaseID_cache_connection___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __66__MFMailMessageLibrary_updateThreadingInfoForMessage_fromHeaders___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_7(a1, a2, 3.8521e-34);
  *(v2 + 12) = 2048;
  *(v2 + 14) = v3;
  OUTLINED_FUNCTION_4_0(&dword_1B0389000, "The message didn't get updated: message.conversationID: %lld, resolved conversationID: %lld", v4, v5);
}

void __66__MFMailMessageLibrary_updateThreadingInfoForMessage_fromHeaders___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7(a1, a2, 3.852e-34);
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __104__MFMailMessageLibrary_newestUIDsMissingPartsForMailbox_excluding_inLatest_limit_maximumMessagesToScan___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_enumerateMessageRemoteIDAndGlobalUsingBatchesForMailbox:excluding:inLatest:kind:block:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __121__MFMailMessageLibrary__enumerateMessageRemoteIDAndGlobalForMailbox_excluding_inLatest_dateReceivedMax_limit_kind_block___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __57__MFMailMessageLibrary_setSequenceIdentifier_forMailbox___block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)urlForMailboxID:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)mailboxURLForMessage:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7(a1, a2, 3.852e-34);
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_canSelectMessagesWithOptions:connection:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setSummary:forMessage:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v2 = v1;
  OUTLINED_FUNCTION_11(v1, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_4_0(&dword_1B0389000, "Could not get mailbox for message %{public}@ (store: %@)", v5, v6);
}

- (void)setSummary:forMessage:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  *v1 = 134218240;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2048;
  *(v1 + 14) = v3;
  _os_log_fault_impl(&dword_1B0389000, v5, OS_LOG_TYPE_FAULT, "Could not get mailbox for message %p (store: %p)", v4, 0x16u);
}

void __55__MFMailMessageLibrary_loadData_forMessage_usingBlock___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 48);
  v8 = *(a1 + 40);
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)bodyDataAtPath:headerData:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v2 = v1;
  OUTLINED_FUNCTION_1_1(v1, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_4_0(&dword_1B0389000, "Reading message from %{public}@ encountered error %{public}@", v5, v6);
}

- (void)dataForMimePart:isComplete:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13(&dword_1B0389000, v6, v4, "#CacheLoads data from file at path %@ had error: %{public}@", v5);
}

void __92__MFMailMessageLibrary__iterateMessagesWithResultHandler_options_monitor_sqlQueryGenerator___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  v2 = v1;
  OUTLINED_FUNCTION_1_1(v1, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_4_0(&dword_1B0389000, "%{public}@: Unable to form sql query, protected data available: %{public}@", v5, v6);
}

void __58__MFMailMessageLibrary_performIncrementalVacuumForSchema___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  *a2 = 136315138;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __70__MFMailMessageLibrary_indexableMessagesWhere_sortedBy_limit_options___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_messageForRow:options:timestamp:connection:isProtectedDataAvailable:recipientsCache:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_messageForRow:options:timestamp:connection:isProtectedDataAvailable:recipientsCache:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_messageForRow:options:timestamp:connection:isProtectedDataAvailable:recipientsCache:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_messageForRow:options:timestamp:connection:isProtectedDataAvailable:recipientsCache:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_messageForRow:options:timestamp:connection:isProtectedDataAvailable:recipientsCache:.cold.5()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_messageForRow:options:timestamp:connection:isProtectedDataAvailable:recipientsCache:.cold.6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_messageForRow:(_BYTE *)a1 options:timestamp:connection:isProtectedDataAvailable:recipientsCache:.cold.7(_BYTE *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *a1;
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

@end