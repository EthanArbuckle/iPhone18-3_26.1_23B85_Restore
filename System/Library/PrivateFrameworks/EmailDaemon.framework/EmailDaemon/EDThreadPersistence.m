@interface EDThreadPersistence
+ (EFSQLTableSchema)threadMailboxesTableSchema;
+ (EFSQLTableSchema)threadRecipientsTableSchema;
+ (EFSQLTableSchema)threadScopesTableSchema;
+ (EFSQLTableSchema)threadSendersTableSchema;
+ (EFSQLTableSchema)threadsTableSchema;
+ (OS_os_log)log;
+ (OS_os_log)signpostLog;
+ (id)tablesAndForeignKeysToResolve:(id *)a3 associationsToResolve:(id *)a4;
- (BOOL)_addThreadScopeToDatabase:(id)a3 needsUpdate:(BOOL)a4 lastViewedDate:(id)a5 updateThreadScopeManager:(BOOL)a6;
- (BOOL)_deleteMailboxesFromWrappedMessages:(id)a3 fromThreadWithDatabaseID:(id)a4 messageThreadExpression:(id)a5;
- (BOOL)_deleteRecipientsOfType:(unint64_t)a3 fromThreadWithDatabaseID:(id)a4 messageThreadExpression:(id)a5;
- (BOOL)_deleteSendersFromThreadWithDatabaseID:(id)a3 messageThreadExpression:(id)a4;
- (BOOL)_enumerateThreadObjectIDsForThreadScope:(id)a3 filterClause:(id)a4 sortKeys:(id)a5 batchBlock:(id)a6;
- (BOOL)_isThreadScopePrecomputed:(id)a3 shouldMigrate:(BOOL *)a4;
- (BOOL)_isThreadScopePrecomputed:(id)a3 wantsPrecomputed:(BOOL)a4 shouldMigrate:(BOOL *)a5;
- (BOOL)_messagesAreJournaledForThreadWithObjectID:(id)a3;
- (BOOL)_recalculateNewestMessageForThreadObjectID:(id)a3 threadScopeDatabaseID:(int64_t)a4;
- (BOOL)_recalculateNewestReadMessageForThreadObjectID:(id)a3 threadScopeDatabaseID:(int64_t)a4;
- (BOOL)_updateNewestReadMessageWithWrappedMessage:(id)a3 threadExpression:(id)a4;
- (BOOL)addThreadsDuringMigration:(id)a3;
- (BOOL)deleteThreadsWithObjectIDs:(id)a3;
- (BOOL)endMigratingThreadScope:(id)a3;
- (BOOL)setPriorityForDisplayMessageSenderForThreadObjectID:(id)a3;
- (BOOL)sortKeysAreSupportedForPrecomputedThreads:(id)a3;
- (BOOL)threadScopeManager:(id)a3 evictThreadScopesWithDatabaseIDs:(id)a4 completionBlock:(id)a5;
- (BOOL)threadScopeManager:(id)a3 isValidMailboxObjectID:(id)a4;
- (BOOL)threadScopeManager:(id)a3 mailboxScopeExists:(id)a4;
- (EDThreadPersistence)initWithMessagePersistence:(id)a3 categoryPersistence:(id)a4 database:(id)a5 hookRegistry:(id)a6 vipManager:(id)a7 blockedSenderManager:(id)a8;
- (id)_addressesFromMessageAddressesStatement:(id)a3;
- (id)_addressesFromSelectStatement:(id)a3 additionalRowHandling:(id)a4;
- (id)_columnForSortKey:(id)a3 ascending:(BOOL *)a4;
- (id)_comparisonExpressionForSortKeys:(id)a3 conversationID:(int64_t)a4 threadExpression:(id)a5 threadScopeDatabaseID:(int64_t)a6 connection:(id)a7;
- (id)_countMessagesForExpression:(id)a3;
- (id)_deleteWrappedMessages:(id)a3 fromThreadWithObjectID:(id)a4 threadScopeDatabaseID:(int64_t)a5 generationWindow:(id)a6;
- (id)_expressionForCategoryType:(unint64_t)a3;
- (id)_expressionForPredicateForPrimaryMessages;
- (id)_expressionForThreadScope:(id)a3;
- (id)_expressionFromSelect:(id)a3 equalTo:(id)a4;
- (id)_filteredPersistedMessagesForPersistedMessages:(id)a3;
- (id)_flagColorsFromRow:(id)a3;
- (id)_int64SetFromSet:(id)a3 byRemovingIndexesFromSet:(id)a4 andLimitingTo:(unint64_t)a5;
- (id)_mailboxDatabaseIDsForWrappedMessages:(id)a3;
- (id)_mailboxScopeForThreadScope:(id)a3 andFilterPredicate:(unint64_t *)a4;
- (id)_mailboxesForThreadDatabaseID:(id)a3;
- (id)_messageActiveFollowUpExpressionForSentMailboxObjectIDs:(id)a3;
- (id)_messageFilterExpressionForFilterPredicate:(id)a3;
- (id)_messageFiredReadLaterExpression:(id)a3;
- (id)_messageIsNotDeletedExpression;
- (id)_messageMailboxesExpressionForAccountObjectIDs:(id)a3;
- (id)_messageMailboxesExpressionForMailboxObjectIDs:(id)a3;
- (id)_messageMailboxesExpressionForMailboxScope:(id)a3;
- (id)_messageMailboxesExpressionForMailboxType:(int64_t)a3;
- (id)_messageThreadExpressionForThreadObjectID:(id)a3;
- (id)_messageThreadExpressionForThreadScope:(id)a3 conversationExpression:(id)a4;
- (id)_messageThreadExpressionForThreadScope:(id)a3 objectIDs:(id)a4;
- (id)_nonJournaledSubjectForThreadWithObjectID:(id)a3 connection:(id)a4;
- (id)_persistedMessagesByPossibleThreadScopeForPersistedMessages:(id)a3;
- (id)_persistedMessagesForMailboxScope:(id)a3 messageExpression:(id)a4;
- (id)_persistenceIsChangingFlags:(id)a3 wrappedMessages:(id)a4 threadObjectID:(id)a5 threadScopeDatabaseID:(int64_t)a6;
- (id)_recalculateDisplayMessageForThreadObjectID:(id)a3 threadScopeDatabaseID:(int64_t)a4;
- (id)_recipientAddressesExpressionForRecipientType:(unint64_t)a3 messages:(id)a4;
- (id)_recipientsOfType:(unint64_t)a3 forThreadDatabaseID:(id)a4;
- (id)_recipientsOfType:(unint64_t)a3 fromMessagesForThreadObjectID:(id)a4;
- (id)_selectFromMessageGlobalDataColumn:(id)a3;
- (id)_senderAddressesExpressionForMessages:(id)a3;
- (id)_sendersForThreadDatabaseID:(id)a3;
- (id)_sendersFromMessagesForThreadObjectID:(id)a3;
- (id)_threadDatabaseIDExpressionForThreadScopeDatabaseID:(int64_t)a3 conversation:(int64_t)a4;
- (id)_threadExpressionForThreadScopeDatabaseID:(int64_t)a3 conversation:(int64_t)a4;
- (id)_threadForWrappedMessages:(id)a3 objectID:(id)a4;
- (id)_threadQueryForThreadScope:(id)a3;
- (id)_updateBasicPropertiesAfterDeleteForThreadObjectID:(id)a3 threadScopeDatabaseID:(int64_t)a4;
- (id)_updateForThreadsWithThreadScopeDatabaseID:(int64_t)a3 conversation:(int64_t)a4;
- (id)_updateThreadForDeleteWithObjectID:(id)a3 threadScopeDatabaseID:(int64_t)a4 generationWindow:(id)a5;
- (id)_upsertForThreadsWithThreadScopeDatabaseID:(int64_t)a3 conversation:(int64_t)a4;
- (id)_wrappedMessageForPersistedMessages:(id)a3 threadScope:(id)a4 messageFilter:(id)a5;
- (id)_wrappedMessagesByThreadScopeForPersistedMessages:(id)a3 messageFilter:(id)a4;
- (id)beginMigratingThreadScope:(id)a3;
- (id)changeForThreadWithObjectID:(id)a3 changedKeyPaths:(id)a4;
- (id)firstObjectIDNotMatchingSortKey:(id)a3 otherSortKeys:(id)a4 inThreadScope:(id)a5;
- (id)newestMessageItemIDForThreadWithObjectID:(id)a3;
- (id)nextExistingThreadObjectIDForThreadObjectID:(id)a3 forSortKeys:(id)a4 journaledThreadsToCheck:(id)a5 excluding:(id)a6;
- (id)oldestThreadObjectIDForMailbox:(id)a3 threadScope:(id)a4;
- (id)resetThreadScopesForAccount:(id)a3;
- (id)sortKeysForSortDescriptors:(id)a3;
- (id)statisticsForThreadScopesWithDatabaseIDs:(id)a3;
- (id)threadForObjectID:(id)a3 originatingQuery:(id)a4 error:(id *)a5;
- (id)threadObjectIDsByNextExistingForThreadObjectIDs:(id)a3 forSortKeys:(id)a4 journaledThreadsToCheck:(id)a5;
- (id)threadScopesByDatabaseID;
- (int64_t)_databaseIDForThreadObjectID:(id)a3;
- (unint64_t)signpostID;
- (void)_addKeyPathsForBasicPropertiesChangeToKeyPaths:(id)a3;
- (void)_addKeyPathsForDisplayMessageChangeToKeyPaths:(id)a3;
- (void)_addOrderByToThreadSelect:(id)a3 forSortKeys:(id)a4;
- (void)_addPersistedMessages:(id)a3 journaled:(BOOL)a4 generationWindow:(id)a5;
- (void)_enumerateThreadScopesUsingBlock:(id)a3;
- (void)_getIndividualMailboxScopes:(id *)a3 unifiedMailboxThreadScopes:(id *)a4 forAccount:(id)a5;
- (void)_iterateWrappedMessagesByConversationForPersistedMessages:(id)a3 block:(id)a4;
- (void)_iterateWrappedMessagesByConversationForPersistedMessages:(id)a3 messageFilter:(id)a4 writeBlock:(id)a5;
- (void)_logFailedVerifyConsistencyForConversationIDs:(id)a3;
- (void)_persistenceDidUpdateMessages:(id)a3 forFilterPredicate:(unint64_t)a4 changedKeyPaths:(id)a5 predicateToIgnore:(id)a6 loggingString:(id)a7 generationWindow:(id)a8 messageTest:(id)a9;
- (void)_persistenceDidUpdateReadLaterForMessages:(id)a3 generationWindow:(id)a4;
- (void)_persistenceIsChangingFlags:(id)a3 messages:(id)a4 generationWindow:(id)a5;
- (void)_persistenceIsDeletingMessages:(id)a3 generationWindow:(id)a4;
- (void)_recomputeThreads;
- (void)_resetThreadScope:(id)a3 withDatabaseID:(id)a4;
- (void)_scheduleRecomputationForThread:(id)a3 reason:(id)a4;
- (void)persistenceDidAddMessages:(id)a3 generationWindow:(id)a4;
- (void)persistenceDidChangeCategorizationForMessages:(id)a3 userInitiated:(BOOL)a4 generationWindow:(id)a5;
- (void)persistenceDidChangeFlags:(id)a3 messages:(id)a4 generationWindow:(id)a5;
- (void)persistenceDidChangeGlobalMessageID:(int64_t)a3 orConversationID:(int64_t)a4 message:(id)a5 generationWindow:(id)a6;
- (void)persistenceDidChangeReadLaterDate:(id)a3 messages:(id)a4 changeIsRemote:(BOOL)a5 generationWindow:(id)a6;
- (void)persistenceDidDeleteAllMessagesInMailboxesWithURLs:(id)a3 generationWindow:(id)a4;
- (void)persistenceDidDeleteMessages:(id)a3 generationWindow:(id)a4;
- (void)persistenceDidUpdateDisplayDateForMessages:(id)a3 changeIsRemote:(BOOL)a4 generation:(int64_t)a5;
- (void)persistenceDidUpdateFollowUpForMessages:(id)a3 generationWindow:(id)a4;
- (void)persistenceDidUpdateProperties:(id)a3 message:(id)a4 generationWindow:(id)a5;
- (void)persistenceIsAddingMailboxWithDatabaseID:(int64_t)a3 objectID:(id)a4 generationWindow:(id)a5;
- (void)persistenceIsChangingConversationID:(int64_t)a3 messages:(id)a4 generationWindow:(id)a5;
- (void)persistenceIsChangingFlags:(id)a3 messages:(id)a4 generationWindow:(id)a5;
- (void)persistenceIsDeletingAllMessagesInMailboxWithURL:(id)a3 generationWindow:(id)a4;
- (void)persistenceIsDeletingMessages:(id)a3 generationWindow:(id)a4;
- (void)persistenceIsInitializingDatabaseWithConnection:(id)a3;
- (void)persistenceIsUpdatingDisplayDateForMessage:(id)a3 fromDate:(id)a4 generation:(int64_t)a5;
- (void)persistenceIsUpdatingIsUrgentForMessage:(id)a3 generationWindow:(id)a4;
- (void)resetThreadScopesForMailboxScope:(id)a3;
- (void)sendEventForCoreAnalytics:(id)a3;
- (void)setNeedsUpdateForThreadScope:(id)a3;
- (void)test_tearDown;
- (void)threadObjectIDsForThreadScope:(id)a3 sortKeys:(id)a4 initialBatchSize:(unint64_t)a5 journaledObjectIDs:(id)a6 batchBlock:(id)a7;
- (void)threadScopeManager:(id)a3 gatherStatisticsForThreadScopesWithDatabaseIDs:(id)a4 block:(id)a5;
- (void)threadScopeManager:(id)a3 populateThreadScopesWithBlock:(id)a4;
- (void)updateIsUrgentForThreadScope:(id)a3;
- (void)updateLastViewedDateForThreadScope:(id)a3;
- (void)verifyConsistencyOfThreadScope:(id)a3;
@end

@implementation EDThreadPersistence

- (id)_expressionForPredicateForPrimaryMessages
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = [(EDThreadPersistence *)self _selectFromMessageGlobalDataColumn:@"model_high_impact"];
  v4 = [(EDThreadPersistence *)self _expressionForCategoryType:0];
  v10[0] = v4;
  v5 = [(EDThreadPersistence *)self _expressionFromSelect:v3 equalTo:&unk_1F45E6C10];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];

  v7 = [MEMORY[0x1E699B928] combined:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__EDThreadPersistence_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_102 != -1)
  {
    dispatch_once(&log_onceToken_102, block);
  }

  v2 = log_log_102;

  return v2;
}

void __26__EDThreadPersistence_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_102;
  log_log_102 = v1;
}

+ (OS_os_log)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__EDThreadPersistence_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (signpostLog_onceToken_12 != -1)
  {
    dispatch_once(&signpostLog_onceToken_12, block);
  }

  v2 = signpostLog_log_12;

  return v2;
}

void __34__EDThreadPersistence_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log_12;
  signpostLog_log_12 = v1;
}

- (unint64_t)signpostID
{
  v3 = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(v3, self);

  return v4;
}

+ (id)tablesAndForeignKeysToResolve:(id *)a3 associationsToResolve:(id *)a4
{
  v39[6] = *MEMORY[0x1E69E9840];
  v32 = [a1 threadScopesTableSchema];
  v5 = [a1 threadsTableSchema];
  v31 = [a1 threadMailboxesTableSchema];
  v30 = [a1 threadSendersTableSchema];
  v29 = [a1 threadRecipientsTableSchema];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__EDThreadPersistence_tablesAndForeignKeysToResolve_associationsToResolve___block_invoke_2;
  aBlock[3] = &unk_1E82501C0;
  v36 = &__block_literal_global_92;
  v6 = _Block_copy(aBlock);
  v6[2](v6, v5, @"scope", v32);
  v6[2](v6, v31, @"thread", v5);
  v6[2](v6, v30, @"thread", v5);
  v6[2](v6, v29, @"thread", v5);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __75__EDThreadPersistence_tablesAndForeignKeysToResolve_associationsToResolve___block_invoke_4;
  v33[3] = &unk_1E82580B0;
  v34 = &__block_literal_global_155_0;
  v7 = _Block_copy(v33);
  v8 = +[EDPersistenceDatabaseSchema mailboxesTableName];
  v28 = v7[2](v7, v32, @"mailbox", v8);

  v9 = +[EDConversationPersistence conversationsTableName];
  v27 = v7[2](v7, v5, @"conversation", v9);

  v10 = +[EDMessagePersistence messagesTableName];
  v26 = __75__EDThreadPersistence_tablesAndForeignKeysToResolve_associationsToResolve___block_invoke_3(v10, v5, @"newest_read_message", v10, 3);

  v11 = +[EDMessagePersistence messagesTableName];
  v12 = __75__EDThreadPersistence_tablesAndForeignKeysToResolve_associationsToResolve___block_invoke_3(v11, v5, @"newest_message", v11, 3);

  v13 = +[EDMessagePersistence messagesTableName];
  v14 = __75__EDThreadPersistence_tablesAndForeignKeysToResolve_associationsToResolve___block_invoke_3(v13, v5, @"display_message", v13, 3);

  v15 = +[EDPersistenceDatabaseSchema mailboxesTableName];
  v16 = v7[2](v7, v31, @"mailbox", v15);

  v17 = +[EDMessagePersistence addressesTableName];
  v18 = __75__EDThreadPersistence_tablesAndForeignKeysToResolve_associationsToResolve___block_invoke_5(v17, v30, @"address", v17);

  v19 = +[EDMessagePersistence addressesTableName];
  v20 = __75__EDThreadPersistence_tablesAndForeignKeysToResolve_associationsToResolve___block_invoke_5(v19, v29, @"address", v19);

  v39[0] = v28;
  v39[1] = v27;
  v39[2] = v26;
  v39[3] = v12;
  v39[4] = v14;
  v39[5] = v16;
  *a3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:6];
  v38[0] = v18;
  v38[1] = v20;
  *a4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  v37[0] = v32;
  v37[1] = v5;
  v37[2] = v31;
  v37[3] = v30;
  v37[4] = v29;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:5];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

void __75__EDThreadPersistence_tablesAndForeignKeysToResolve_associationsToResolve___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = a4;
  v8 = [a2 columnForName:a3];
  [v8 setAsForeignKeyForTable:v9 onDelete:a5 onUpdate:0];
}

EDPersistenceForeignKeyPlaceholder *__75__EDThreadPersistence_tablesAndForeignKeysToResolve_associationsToResolve___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = a4;
  v9 = [a2 columnForName:a3];
  v10 = [[EDPersistenceForeignKeyPlaceholder alloc] initWithColumn:v9 tableName:v8 onDelete:a5 onUpdate:0];

  return v10;
}

id __75__EDThreadPersistence_tablesAndForeignKeysToResolve_associationsToResolve___block_invoke_4(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();

  return v1;
}

EDPersistenceAssociationPlaceholder *__75__EDThreadPersistence_tablesAndForeignKeysToResolve_associationsToResolve___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = [a2 columnForName:a3];
  v8 = [[EDPersistenceAssociationPlaceholder alloc] initWithColumn:v7 tableName:v6];

  return v8;
}

+ (EFSQLTableSchema)threadScopesTableSchema
{
  v85[5] = *MEMORY[0x1E69E9840];
  v71 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"mailbox" nullable:1];
  v68 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"mailbox_type" nullable:1];
  v69 = [MEMORY[0x1E699B8D0] blobColumnWithName:@"filter_predicate" nullable:1];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v85[0] = v71;
  v85[1] = v68;
  v85[2] = v69;
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"needs_update" nullable:0 defaultValue:&unk_1F45E6BF8];
  v85[3] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"last_viewed" nullable:0 defaultValue:&unk_1F45E6BF8];
  v85[4] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:5];
  v6 = [v2 initWithName:@"thread_scopes" rowIDType:2 columns:v5];

  v70 = [v71 columnExpression];
  v67 = [v68 columnExpression];
  v66 = [v69 columnExpression];
  v7 = objc_alloc(MEMORY[0x1E699B898]);
  v8 = [v70 isNotNull];
  v84[0] = v8;
  v9 = [v67 isNull];
  v84[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:2];
  v65 = [v7 initWithExpressions:v10];

  v11 = objc_alloc(MEMORY[0x1E699B898]);
  v12 = [v70 isNull];
  v83[0] = v12;
  v13 = [v67 isNotNull];
  v83[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];
  v64 = [v11 initWithExpressions:v14];

  v15 = objc_alloc(MEMORY[0x1E699B928]);
  v82[0] = v65;
  v82[1] = v64;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:2];
  v63 = [v15 initWithExpressions:v16];

  [v6 addCheckConstraintForExpression:v63];
  v17 = objc_alloc(MEMORY[0x1E699B898]);
  v18 = [v70 isNotNull];
  v81[0] = v18;
  v19 = [v66 isNull];
  v81[1] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:2];
  v21 = [v17 initWithExpressions:v20];

  v22 = objc_alloc(MEMORY[0x1E699B900]);
  v23 = [v6 name];
  v24 = [v71 name];
  v80 = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
  v62 = [v22 initWithTableName:v23 columnNames:v25 where:v21 unique:1];

  [v6 addIndex:v62];
  v26 = objc_alloc(MEMORY[0x1E699B898]);
  v27 = [v70 isNotNull];
  v79[0] = v27;
  v28 = [v66 isNotNull];
  v79[1] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:2];
  v30 = [v26 initWithExpressions:v29];

  v31 = objc_alloc(MEMORY[0x1E699B900]);
  v32 = [v6 name];
  v33 = [v71 name];
  v78[0] = v33;
  v34 = [v69 name];
  v78[1] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:2];
  v36 = [v31 initWithTableName:v32 columnNames:v35 where:v30 unique:1];

  [v6 addIndex:v36];
  v37 = objc_alloc(MEMORY[0x1E699B898]);
  v38 = [v67 isNotNull];
  v77[0] = v38;
  v39 = [v66 isNull];
  v77[1] = v39;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];
  v41 = [v37 initWithExpressions:v40];

  v42 = objc_alloc(MEMORY[0x1E699B900]);
  v43 = [v6 name];
  v44 = [v68 name];
  v76 = v44;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
  v46 = [v42 initWithTableName:v43 columnNames:v45 where:v41 unique:1];

  [v6 addIndex:v46];
  v47 = objc_alloc(MEMORY[0x1E699B898]);
  v48 = [v67 isNotNull];
  v75[0] = v48;
  v49 = [v66 isNotNull];
  v75[1] = v49;
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:2];
  v51 = [v47 initWithExpressions:v50];

  v52 = objc_alloc(MEMORY[0x1E699B900]);
  v53 = [v6 name];
  v54 = [v68 name];
  v74[0] = v54;
  v55 = [v69 name];
  v74[1] = v55;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:2];
  v57 = [v52 initWithTableName:v53 columnNames:v56 where:v51 unique:1];

  [v6 addIndex:v57];
  v73 = @"needs_update";
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
  [v6 addIndexForColumns:v58];

  v72 = @"last_viewed";
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
  [v6 addIndexForColumns:v59];

  v60 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (EFSQLTableSchema)threadsTableSchema
{
  v87 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v48 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"scope" nullable:0];
  v58 = v48;
  v59 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"conversation" nullable:0];
  v47 = v59;
  v60 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"newest_read_message" nullable:1];
  v46 = v60;
  v45 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"newest_message" nullable:1];
  v61 = v45;
  v44 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"display_message" nullable:1];
  v62 = v44;
  v43 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"date" nullable:0];
  v63 = v43;
  v42 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"display_date" nullable:0 defaultValue:&unk_1F45E6BF8];
  v64 = v42;
  v41 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"read_later_date" nullable:1];
  v65 = v41;
  v40 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"read" nullable:0 defaultValue:&unk_1F45E6BF8];
  v66 = v40;
  v39 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"flagged" nullable:0 defaultValue:&unk_1F45E6BF8];
  v67 = v39;
  v38 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_red_flag" nullable:0 defaultValue:&unk_1F45E6BF8];
  v68 = v38;
  v37 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_orange_flag" nullable:0 defaultValue:&unk_1F45E6BF8];
  v69 = v37;
  v36 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_yellow_flag" nullable:0 defaultValue:&unk_1F45E6BF8];
  v70 = v36;
  v35 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_green_flag" nullable:0 defaultValue:&unk_1F45E6BF8];
  v71 = v35;
  v34 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_blue_flag" nullable:0 defaultValue:&unk_1F45E6BF8];
  v72 = v34;
  v33 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_purple_flag" nullable:0 defaultValue:&unk_1F45E6BF8];
  v73 = v33;
  v32 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_gray_flag" nullable:0 defaultValue:&unk_1F45E6BF8];
  v74 = v32;
  v31 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"draft" nullable:0 defaultValue:&unk_1F45E6BF8];
  v75 = v31;
  v30 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"replied" nullable:0 defaultValue:&unk_1F45E6BF8];
  v76 = v30;
  v29 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"forwarded" nullable:0 defaultValue:&unk_1F45E6BF8];
  v77 = v29;
  v28 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"redirected" nullable:0 defaultValue:&unk_1F45E6BF8];
  v78 = v28;
  v27 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"junk_level_set_by_user" nullable:0 defaultValue:&unk_1F45E6BF8];
  v79 = v27;
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"junk_level" nullable:0 defaultValue:&unk_1F45E6BF8];
  v80 = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_unflagged" nullable:0 defaultValue:&unk_1F45E6BF8];
  v81 = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_attachments" nullable:0 defaultValue:&unk_1F45E6BF8];
  v82 = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"count" nullable:0];
  v83 = v6;
  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"journaled" nullable:0 defaultValue:&unk_1F45E6BF8];
  v84 = v7;
  v8 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"is_icloud_cleanup" nullable:0 defaultValue:&unk_1F45E6BF8];
  v85 = v8;
  v9 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"is_urgent" nullable:0 defaultValue:&unk_1F45E6BF8];
  v86 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:29];
  v11 = [v2 initWithName:@"threads" rowIDType:2 columns:v10];

  v57[0] = @"scope";
  v57[1] = @"conversation";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
  [v11 addUniquenessConstraintForColumns:v12 conflictResolution:1];

  v56[0] = @"scope";
  v56[1] = @"date";
  v56[2] = @"conversation";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:3];
  [v11 addIndexForColumns:v13];

  v55[0] = @"scope";
  v55[1] = @"display_date";
  v55[2] = @"conversation";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:3];
  [v11 addIndexForColumns:v14];

  v54[0] = @"scope";
  v54[1] = @"is_urgent";
  v54[2] = @"display_date";
  v54[3] = @"conversation";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:4];
  [v11 addIndexForColumns:v15];

  v53[0] = @"journaled";
  v53[1] = @"scope";
  v53[2] = @"date";
  v53[3] = @"conversation";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:4];
  [v11 addIndexForColumns:v16];

  v52 = @"newest_read_message";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
  [v11 addIndexForColumns:v17];

  v51 = @"newest_message";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
  [v11 addIndexForColumns:v18];

  v50 = @"display_message";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
  [v11 addIndexForColumns:v19];

  v20 = objc_alloc(MEMORY[0x1E699B900]);
  v49[0] = @"journaled";
  v49[1] = @"date";
  v49[2] = @"scope";
  v49[3] = @"conversation";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];
  v22 = [MEMORY[0x1E699B8C8] column:@"journaled"];
  v23 = [v22 equalTo:&unk_1F45E6C10];
  v24 = [v20 initWithTableName:@"threads" columnNames:v21 where:v23 unique:0];

  [v11 addIndex:v24];
  v25 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (EFSQLTableSchema)threadMailboxesTableSchema
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"thread" nullable:0];
  v11[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"mailbox" nullable:0];
  v11[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v10[0] = @"thread";
  v10[1] = @"mailbox";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v7 = [v2 initWithName:@"thread_mailboxes" columns:v5 primaryKeyColumns:v6];

  [v7 addIndexForColumns:&unk_1F45E7048];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (EFSQLTableSchema)threadSendersTableSchema
{
  v17[4] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"thread" nullable:0];
  v17[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"address" nullable:0];
  v17[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"date" nullable:0];
  v17[2] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"priority" nullable:0 defaultValue:&unk_1F45E6BF8];
  v17[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
  v16[0] = @"thread";
  v16[1] = @"address";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v9 = [v2 initWithName:@"thread_senders" columns:v7 primaryKeyColumns:v8 conflictResolution:5];

  v15[0] = @"address";
  v15[1] = @"thread";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  [v9 addIndexForColumns:v10];

  v14[0] = @"thread";
  v14[1] = @"priority";
  v14[2] = @"date";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  [v9 addIndexForColumns:v11];

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (EFSQLTableSchema)threadRecipientsTableSchema
{
  v18[5] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"thread" nullable:0];
  v18[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"address" nullable:0];
  v18[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"type" nullable:0];
  v18[2] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"date" nullable:0];
  v18[3] = v6;
  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"priority" nullable:0 defaultValue:&unk_1F45E6BF8];
  v18[4] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:5];
  v17[0] = @"thread";
  v17[1] = @"type";
  v17[2] = @"address";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
  v10 = [v2 initWithName:@"thread_recipients" columns:v8 primaryKeyColumns:v9 conflictResolution:5];

  v16[0] = @"address";
  v16[1] = @"thread";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  [v10 addIndexForColumns:v11];

  v15[0] = @"thread";
  v15[1] = @"priority";
  v15[2] = @"date";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
  [v10 addIndexForColumns:v12];

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

- (EDThreadPersistence)initWithMessagePersistence:(id)a3 categoryPersistence:(id)a4 database:(id)a5 hookRegistry:(id)a6 vipManager:(id)a7 blockedSenderManager:(id)a8
{
  v41 = a3;
  v40 = a4;
  v39 = a5;
  v15 = a6;
  v38 = a7;
  v16 = a8;
  v45.receiver = self;
  v45.super_class = EDThreadPersistence;
  v17 = [(EDThreadPersistence *)&v45 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_messagePersistence, a3);
    objc_storeStrong(&v18->_database, a5);
    objc_storeStrong(&v18->_hookRegistry, a6);
    objc_storeStrong(&v18->_vipManager, a7);
    objc_storeStrong(&v18->_blockedSenderManager, a8);
    v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    threadObjectIDsToRecompute = v18->_threadObjectIDsToRecompute;
    v18->_threadObjectIDsToRecompute = v19;

    v18->_threadRecomputationLock._os_unfair_lock_opaque = 0;
    v21 = [[EDThreadScopeManager alloc] initWithDataSource:v18, v38, v39, v40, v41];
    threadScopeManager = v18->_threadScopeManager;
    v18->_threadScopeManager = v21;

    v18->_migratingThreadScopesLock._os_unfair_lock_opaque = 0;
    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    migratingThreadScopes = v18->_migratingThreadScopes;
    v18->_migratingThreadScopes = v23;

    v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
    backgroundProcessingAssertionsByMigratingThreadScope = v18->_backgroundProcessingAssertionsByMigratingThreadScope;
    v18->_backgroundProcessingAssertionsByMigratingThreadScope = v25;

    v27 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.EmailDaemon.EDThreadPersistence.consistencyCheckScheduler" qualityOfService:9];
    consistencyCheckScheduler = v18->_consistencyCheckScheduler;
    v18->_consistencyCheckScheduler = v27;

    v29 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.EmailDaemon.EDThreadPersistence.threadRecomputationScheduler" qualityOfService:9];
    threadRecomputationScheduler = v18->_threadRecomputationScheduler;
    v18->_threadRecomputationScheduler = v29;

    objc_initWeak(&location, v18);
    v31 = objc_alloc(MEMORY[0x1E699B7A8]);
    v32 = v18->_threadRecomputationScheduler;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __124__EDThreadPersistence_initWithMessagePersistence_categoryPersistence_database_hookRegistry_vipManager_blockedSenderManager___block_invoke;
    v42[3] = &unk_1E82567B0;
    objc_copyWeak(&v43, &location);
    v33 = [v31 initWithTimeInterval:v32 scheduler:0 startAfter:v42 block:10.0];
    threadRecomputationDebouncer = v18->_threadRecomputationDebouncer;
    v18->_threadRecomputationDebouncer = v33;

    [v15 registerDatabaseChangeHookResponder:v18];
    [v15 registerMailboxChangeHookResponder:v18];
    [v15 registerMessageChangeHookResponder:v18];
    objc_storeStrong(&v18->_categoryPersistence, a4);
    [v15 registerCategoryChangeHookResponder:v18];
    v35 = objc_alloc_init(MEMORY[0x1E699AC70]);
    analyticsCollector = v18->_analyticsCollector;
    v18->_analyticsCollector = v35;

    objc_destroyWeak(&v43);
    objc_destroyWeak(&location);
  }

  return v18;
}

void __124__EDThreadPersistence_initWithMessagePersistence_categoryPersistence_database_hookRegistry_vipManager_blockedSenderManager___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _recomputeThreads];
}

- (void)_enumerateThreadScopesUsingBlock:(id)a3
{
  v5 = a3;
  v6 = [(EDThreadPersistence *)self threadScopeManager];
  v7 = [v6 threadScopesByDatabaseID];

  v8 = [(EDThreadPersistence *)self messagePersistence];
  v9 = [v8 mailboxPersistence];
  v10 = [v9 mailboxProvider];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__EDThreadPersistence__enumerateThreadScopesUsingBlock___block_invoke;
  v13[3] = &unk_1E82580D8;
  v16 = a2;
  v13[4] = self;
  v14 = v10;
  v11 = v5;
  v15 = v11;
  v12 = v10;
  [v7 enumerateKeysAndObjectsUsingBlock:v13];
}

void __56__EDThreadPersistence__enumerateThreadScopesUsingBlock___block_invoke(void *a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = [v5 mailboxScope];
  v7 = v6;
  v8 = [MEMORY[0x1E699AD28] allMailboxesScope];

  if (v6 == v8)
  {
    v9 = [v5 filterPredicate];

    if (!v9)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a1[7] object:a1[4] file:@"EDThreadPersistence.m" lineNumber:401 description:@"Thread scope with all mailboxes mailbox scope must have filter predicate"];
    }

    v10 = MEMORY[0x1E699ADA0];
    v11 = [v5 filterPredicate];
    v12 = [v10 mailboxScopeForPredicate:v11 withMailboxTypeResolver:a1[5]];

    v7 = v12;
  }

  (*(a1[6] + 16))();
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"EDThreadPersistence.m" lineNumber:410 description:{@"%s can only be called from unit tests", "-[EDThreadPersistence test_tearDown]"}];
  }

  v4 = [(EDThreadPersistence *)self consistencyCheckScheduler];
  [v4 performSyncBlock:&__block_literal_global_202];
}

- (BOOL)_isThreadScopePrecomputed:(id)a3 wantsPrecomputed:(BOOL)a4 shouldMigrate:(BOOL *)a5
{
  v6 = a4;
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v15 = 0;
  v9 = [(EDThreadPersistence *)self _isThreadScopePrecomputed:v8 shouldMigrate:&v15];
  if (!v9)
  {
    if (v15)
    {
      os_unfair_lock_lock(&self->_migratingThreadScopesLock);
      if ([(NSMutableArray *)self->_migratingThreadScopes containsObject:v8])
      {
        v10 = +[EDThreadPersistence log];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v17 = v8;
          _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Migration in progress for threadscope: %{public}@", buf, 0xCu);
        }

        v15 = 0;
      }

      else
      {
        v12 = +[EDThreadPersistence log];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v17 = v8;
          _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "Migration requested for threadscope: %{public}@", buf, 0xCu);
        }

        [(NSMutableArray *)self->_migratingThreadScopes addObject:v8];
      }

      os_unfair_lock_unlock(&self->_migratingThreadScopesLock);
    }

    else if (v6)
    {
      v11 = +[EDThreadPersistence log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [EDThreadPersistence _isThreadScopePrecomputed:wantsPrecomputed:shouldMigrate:];
      }
    }
  }

  if (a5)
  {
    *a5 = v15;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)_isThreadScopePrecomputed:(id)a3 shouldMigrate:(BOOL *)a4
{
  v6 = a3;
  if ([MEMORY[0x1E699ACE8] preferenceEnabled:2])
  {
    v7 = 0;
    *a4 = 0;
  }

  else
  {
    v8 = [(EDThreadPersistence *)self messagePersistence];
    v9 = [v8 mailboxPersistence];
    v10 = [v9 mailboxProvider];

    v11 = [(EDThreadPersistence *)self threadScopeManager];
    v7 = [v11 isThreadScopePrecomputed:v6 mailboxProvider:v10 shouldMigrate:a4];
  }

  return v7;
}

- (void)updateLastViewedDateForThreadScope:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF00] date];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v6 = [(EDThreadPersistence *)self database];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence updateLastViewedDateForThreadScope:]"];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __58__EDThreadPersistence_updateLastViewedDateForThreadScope___block_invoke;
  v14 = &unk_1E82530F8;
  v15 = self;
  v8 = v4;
  v16 = v8;
  v9 = v5;
  v17 = v9;
  v18 = &v19;
  [v6 __performWriteWithCaller:v7 usingBlock:&v11];

  if (*(v20 + 24) == 1)
  {
    v10 = [(EDThreadPersistence *)self threadScopeManager:v11];
    [v10 setLastViewedDate:v9 forThreadScope:v8];
  }

  _Block_object_dispose(&v19, 8);
}

uint64_t __58__EDThreadPersistence_updateLastViewedDateForThreadScope___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) threadScopeManager];
  v5 = [v4 databaseIDForThreadScope:*(a1 + 40)];

  v6 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"thread_scopes" conflictResolution:4];
  [v6 setObject:*(a1 + 48) forKeyedSubscript:@"last_viewed"];
  v7 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:v5];
  v9 = [v7 equalTo:v8];
  [v6 setWhereClause:v9];

  *(*(*(a1 + 56) + 8) + 24) = [v3 executeUpdateStatement:v6 error:0];
  v10 = *(*(*(a1 + 56) + 8) + 24);

  return v10;
}

- (void)updateIsUrgentForThreadScope:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl() && (EMIsGreymatterSupported() & 1) != 0)
  {
    v5 = [(EDThreadPersistence *)self threadScopeManager];
    v6 = [v5 databaseIDForThreadScope:v4];

    v7 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Updating isUrgent for precomputed threads", buf, 2u);
    }

    v8 = [(EDThreadPersistence *)self database];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence updateIsUrgentForThreadScope:]"];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52__EDThreadPersistence_updateIsUrgentForThreadScope___block_invoke;
    v11[3] = &unk_1E82502B0;
    v13 = v6;
    v11[4] = self;
    v12 = v4;
    [v8 __performWriteWithCaller:v9 usingBlock:v11];

    v10 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Did update isUrgent for precomputed threads", buf, 2u);
    }
  }
}

uint64_t __52__EDThreadPersistence_updateIsUrgentForThreadScope___block_invoke(uint64_t a1, void *a2)
{
  v45[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"threads"];
  [v4 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"is_urgent"];
  v5 = [MEMORY[0x1E699B8C8] column:@"scope"];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 48)];
  v40 = [v5 equalTo:v6];

  v7 = [MEMORY[0x1E699B8C8] column:@"is_urgent"];
  v8 = [v7 equalTo:MEMORY[0x1E695E118]];

  v9 = objc_alloc(MEMORY[0x1E699B898]);
  v45[0] = v40;
  v45[1] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
  v11 = [v9 initWithExpressions:v10];
  [v4 setWhereClause:v11];

  if ([v3 executeUpdateStatement:v4 error:0])
  {
    v12 = MEMORY[0x1E699B8C8];
    v13 = +[EDMessagePersistence messagesIsUrgentColumnName];
    v14 = [v12 column:v13];
    v39 = [v14 equalTo:MEMORY[0x1E695E118]];

    v38 = [*(a1 + 32) _expressionForThreadScope:*(a1 + 40)];
    v15 = MEMORY[0x1E699B8F8];
    v16 = MEMORY[0x1E699B8C8];
    v17 = +[EDMessagePersistence messagesTableName];
    v18 = [v16 table:v17 column:@"deleted"];
    v19 = [v18 equalTo:&unk_1F45E6BF8];
    v37 = [v15 likely:v19];

    v20 = objc_alloc(MEMORY[0x1E699B948]);
    v21 = +[EDMessagePersistence messagesTableName];
    v22 = [v20 initWithResultColumn:@"conversation_id" table:v21];

    [v22 setDistinct:1];
    v23 = objc_alloc(MEMORY[0x1E699B898]);
    v44[0] = v39;
    v44[1] = v38;
    v44[2] = v37;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:3];
    v25 = [v23 initWithExpressions:v24];
    [v22 setWhere:v25];

    v26 = objc_opt_new();
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __52__EDThreadPersistence_updateIsUrgentForThreadScope___block_invoke_2;
    v41[3] = &unk_1E8250300;
    v27 = v26;
    v42 = v27;
    [v3 executeSelectStatement:v22 withBlock:v41 error:0];
    if ([v27 count])
    {
      v28 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"threads"];
      [v28 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"is_urgent"];
      v29 = [MEMORY[0x1E699B8C8] column:@"conversation"];
      v30 = [v29 in:v27];

      v31 = objc_alloc(MEMORY[0x1E699B898]);
      v43[0] = v40;
      v43[1] = v30;
      v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
      v33 = [v31 initWithExpressions:v32];
      [v28 setWhereClause:v33];

      v34 = [v3 executeUpdateStatement:v28 error:0];
    }

    else
    {
      v34 = 1;
    }
  }

  else
  {
    v34 = 0;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v34;
}

void __52__EDThreadPersistence_updateIsUrgentForThreadScope___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 objectForKeyedSubscript:@"conversation_id"];
  v3 = [v4 numberValue];
  [v2 addObject:v3];
}

- (void)resetThreadScopesForMailboxScope:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v5 = [(EDThreadPersistence *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence resetThreadScopesForMailboxScope:]"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__EDThreadPersistence_resetThreadScopesForMailboxScope___block_invoke;
  v9[3] = &unk_1E8250288;
  v7 = v4;
  v10 = v7;
  v11 = self;
  v12 = &v13;
  [v5 __performWriteWithCaller:v6 usingBlock:v9];

  if (*(v14 + 24) == 1)
  {
    v8 = [(EDThreadPersistence *)self threadScopeManager];
    if (v7)
    {
      [v8 removeThreadScopesForMailboxScope:v7];
    }

    else
    {
      [v8 removeAllThreadScopes];
    }
  }

  _Block_object_dispose(&v13, 8);
}

uint64_t __56__EDThreadPersistence_resetThreadScopesForMailboxScope___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [v4 mailboxTypes];
    if ([v5 count])
    {
      v6 = [MEMORY[0x1E699B8C8] column:@"mailbox_type"];
      v7 = [v6 in:v5];
    }

    else
    {
      v6 = [*(a1 + 32) mailboxObjectIDs];
      v8 = [*(a1 + 40) messagePersistence];
      v9 = [v8 mailboxPersistence];
      v10 = [v9 mailboxDatabaseIDsForMailboxObjectIDs:v6 createIfNecessary:0];

      v11 = [MEMORY[0x1E699B8C8] column:@"mailbox"];
      v7 = [v11 in:v10];
    }
  }

  else
  {
    v7 = 0;
  }

  v12 = [objc_alloc(MEMORY[0x1E699B8E8]) initWithTable:@"thread_scopes" where:v7];
  *(*(*(a1 + 48) + 8) + 24) = [v3 executeDeleteStatement:v12 error:0];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    if (*(a1 + 32))
    {
      v13 = 1;
    }

    else
    {
      v14 = [objc_alloc(MEMORY[0x1E699B8E8]) initWithTable:@"threads"];

      v15 = *(*(a1 + 48) + 8);
      if (*(v15 + 24) == 1)
      {
        v16 = [v3 executeDeleteStatement:v14 error:0];
        v15 = *(*(a1 + 48) + 8);
      }

      else
      {
        v16 = 0;
      }

      *(v15 + 24) = v16;
      v17 = [objc_alloc(MEMORY[0x1E699B8E8]) initWithTable:@"thread_mailboxes"];

      v18 = *(*(a1 + 48) + 8);
      if (*(v18 + 24) == 1)
      {
        v19 = [v3 executeDeleteStatement:v17 error:0];
        v18 = *(*(a1 + 48) + 8);
      }

      else
      {
        v19 = 0;
      }

      *(v18 + 24) = v19;
      v20 = [objc_alloc(MEMORY[0x1E699B8E8]) initWithTable:@"thread_senders"];

      v21 = *(*(a1 + 48) + 8);
      if (*(v21 + 24) == 1)
      {
        v22 = [v3 executeDeleteStatement:v20 error:0];
        v21 = *(*(a1 + 48) + 8);
      }

      else
      {
        v22 = 0;
      }

      *(v21 + 24) = v22;
      v12 = [objc_alloc(MEMORY[0x1E699B8E8]) initWithTable:@"thread_recipients"];

      v23 = *(*(a1 + 48) + 8);
      if (*(v23 + 24) == 1)
      {
        v24 = [v3 executeDeleteStatement:v12 error:0];
        v23 = *(*(a1 + 48) + 8);
      }

      else
      {
        v24 = 0;
      }

      *(v23 + 24) = v24;
      v13 = *(*(*(a1 + 48) + 8) + 24);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

- (id)threadScopesByDatabaseID
{
  v2 = [(EDThreadPersistence *)self threadScopeManager];
  v3 = [v2 threadScopesByDatabaseID];

  return v3;
}

- (void)threadObjectIDsForThreadScope:(id)a3 sortKeys:(id)a4 initialBatchSize:(unint64_t)a5 journaledObjectIDs:(id)a6 batchBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v28[3] = a5;
  v16 = [(EDThreadPersistence *)self database];
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence threadObjectIDsForThreadScope:sortKeys:initialBatchSize:journaledObjectIDs:batchBlock:]"];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __109__EDThreadPersistence_threadObjectIDsForThreadScope_sortKeys_initialBatchSize_journaledObjectIDs_batchBlock___block_invoke;
  v22[3] = &unk_1E8258150;
  v22[4] = self;
  v18 = v12;
  v23 = v18;
  v19 = v13;
  v24 = v19;
  v27 = v28;
  v20 = v15;
  v26 = v20;
  v21 = v14;
  v25 = v21;
  [v16 __performReadWithCaller:v17 usingBlock:v22];

  _Block_object_dispose(v28, 8);
}

uint64_t __109__EDThreadPersistence_threadObjectIDsForThreadScope_sortKeys_initialBatchSize_journaledObjectIDs_batchBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) threadScopeManager];
  v3 = [v2 databaseIDForThreadScope:*(a1 + 40)];

  if (v3 == *MEMORY[0x1E699A728])
  {
    return 1;
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [MEMORY[0x1E699B8C8] column:@"journaled"];
  v7 = [v6 equalTo:&unk_1F45E6BF8];

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __109__EDThreadPersistence_threadObjectIDsForThreadScope_sortKeys_initialBatchSize_journaledObjectIDs_batchBlock___block_invoke_2;
  v25[3] = &unk_1E8258100;
  v11 = v5;
  v26 = v11;
  v21 = *(a1 + 64);
  v12 = v21;
  v27 = v21;
  v13 = [v8 _enumerateThreadObjectIDsForThreadScope:v9 filterClause:v7 sortKeys:v10 batchBlock:v25];
  v24 = 0;
  if ([v11 count])
  {
    v14 = *(*(a1 + 72) + 8);
    (*(*(a1 + 64) + 16))();
  }

  v15 = [MEMORY[0x1E699B8C8] column:{@"journaled", v21}];
  v16 = [v15 equalTo:&unk_1F45E6C10];

  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __109__EDThreadPersistence_threadObjectIDsForThreadScope_sortKeys_initialBatchSize_journaledObjectIDs_batchBlock___block_invoke_3;
  v22[3] = &unk_1E8258128;
  v19 = *(a1 + 48);
  v23 = *(a1 + 56);
  v4 = v13 & [v17 _enumerateThreadObjectIDsForThreadScope:v18 filterClause:v16 sortKeys:v19 batchBlock:v22];

  return v4;
}

void __109__EDThreadPersistence_threadObjectIDsForThreadScope_sortKeys_initialBatchSize_journaledObjectIDs_batchBlock___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  [*(a1 + 32) addObject:?];
  if ([*(a1 + 32) count] >= *(*(*(a1 + 48) + 8) + 24))
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) copy];
    (*(v5 + 16))(v5, v6, *(*(a1 + 48) + 8) + 24, a3);

    [*(a1 + 32) removeAllObjects];
  }
}

- (BOOL)_enumerateThreadObjectIDsForThreadScope:(id)a3 filterClause:(id)a4 sortKeys:(id)a5 batchBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  v14 = [(EDThreadPersistence *)self database];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence _enumerateThreadObjectIDsForThreadScope:filterClause:sortKeys:batchBlock:]"];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __96__EDThreadPersistence__enumerateThreadObjectIDsForThreadScope_filterClause_sortKeys_batchBlock___block_invoke;
  v21[3] = &unk_1E82581A0;
  v21[4] = self;
  v16 = v10;
  v22 = v16;
  v17 = v11;
  v23 = v17;
  v18 = v12;
  v24 = v18;
  v26 = &v27;
  v19 = v13;
  v25 = v19;
  [v14 __performReadWithCaller:v15 usingBlock:v21];

  LOBYTE(v10) = *(v28 + 24);
  _Block_object_dispose(&v27, 8);

  return v10;
}

uint64_t __96__EDThreadPersistence__enumerateThreadObjectIDsForThreadScope_filterClause_sortKeys_batchBlock___block_invoke(uint64_t a1, void *a2)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) threadScopeManager];
  v5 = [v4 databaseIDForThreadScope:*(a1 + 40)];

  if (v5 == *MEMORY[0x1E699A728])
  {
    v6 = 1;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"conversation" table:@"threads"];
    v8 = [MEMORY[0x1E699B8C8] column:@"scope"];
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:v5];
    v10 = [v8 equalTo:v9];

    if (*(a1 + 48))
    {
      v11 = objc_alloc(MEMORY[0x1E699B898]);
      v12 = *(a1 + 48);
      v20[0] = v10;
      v20[1] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
      v14 = [v11 initWithExpressions:v13];
      [v7 setWhere:v14];
    }

    else
    {
      [v7 setWhere:v10];
    }

    [*(a1 + 32) _addOrderByToThreadSelect:v7 forSortKeys:*(a1 + 56)];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __96__EDThreadPersistence__enumerateThreadObjectIDsForThreadScope_filterClause_sortKeys_batchBlock___block_invoke_2;
    v17[3] = &unk_1E8258178;
    v18 = *(a1 + 40);
    v19 = *(a1 + 64);
    *(*(*(a1 + 72) + 8) + 24) = [v3 executeSelectStatement:v7 withBlock:v17 error:0];
    v6 = *(*(*(a1 + 72) + 8) + 24);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v6 & 1;
}

void __96__EDThreadPersistence__enumerateThreadObjectIDsForThreadScope_filterClause_sortKeys_batchBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [a2 objectAtIndexedSubscript:0];
  v3 = [v4 databaseIDValue];

  v5 = [objc_alloc(MEMORY[0x1E699AEF8]) initWithConversationID:v3 threadScope:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

- (id)threadForObjectID:(id)a3 originatingQuery:(id)a4 error:(id *)a5
{
  v58 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__47;
  v52 = __Block_byref_object_dispose__47;
  v53 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__47;
  v46 = __Block_byref_object_dispose__47;
  v47 = 0;
  v10 = [(EDThreadPersistence *)self database];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence threadForObjectID:originatingQuery:error:]"];
  v33 = MEMORY[0x1E69E9820];
  v34 = 3221225472;
  v35 = __64__EDThreadPersistence_threadForObjectID_originatingQuery_error___block_invoke;
  v36 = &unk_1E8258218;
  v37 = self;
  v12 = v8;
  v38 = v12;
  v40 = &v42;
  v13 = v9;
  v39 = v13;
  v41 = &v48;
  [v10 __performReadWithCaller:v11 usingBlock:&v33];

  if (a5)
  {
    v14 = v43;
    if (!v49[5] && !v43[5])
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = MEMORY[0x1E696AEC0];
      v17 = [v12 ef_publicDescription];
      v18 = [v16 stringWithFormat:@"Failed to get thread with objectID: %@", v17, v33, v34, v35, v36, v37, v38];
      v19 = [v15 em_internalErrorWithReason:v18];
      v20 = v43[5];
      v43[5] = v19;

      v14 = v43;
    }

    *a5 = v14[5];
  }

  v21 = v49[5];
  if (v21)
  {
    v22 = [v21 subject];
    v23 = v22 == 0;

    if (v23)
    {
      v24 = +[EDThreadPersistence log];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [v49[5] ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [EDThreadPersistence threadForObjectID:originatingQuery:error:];
      }

      EFSaveTailspin();
    }

    v25 = [v49[5] senderList];
    v26 = [v25 count] == 0;

    if (v26)
    {
      v27 = +[EDThreadPersistence log];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [v49[5] ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [EDThreadPersistence threadForObjectID:originatingQuery:error:];
      }

      EFSaveTailspin();
    }
  }

  else
  {
    v28 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [v43[5] ef_publicDescription];
      *buf = 138543618;
      v55 = v12;
      v56 = 2114;
      v57 = v29;
      _os_log_impl(&dword_1C61EF000, v28, OS_LOG_TYPE_DEFAULT, "Unable to return thread for objectID %{public}@ due to error: %{public}@", buf, 0x16u);
    }
  }

  v30 = v49[5];

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v48, 8);

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

uint64_t __64__EDThreadPersistence_threadForObjectID_originatingQuery_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _databaseIDForThreadObjectID:*(a1 + 40)];
  if (v4 == *MEMORY[0x1E699A728])
  {
    v5 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __64__EDThreadPersistence_threadForObjectID_originatingQuery_error___block_invoke_cold_2((a1 + 40));
    }

    v6 = [MEMORY[0x1E696ABC0] em_itemNotFoundErrorWithItemID:*(a1 + 40)];
LABEL_11:
    v13 = *(*(a1 + 56) + 8);
    v7 = *(v13 + 40);
    *(v13 + 40) = v6;
    v14 = 1;
    goto LABEL_27;
  }

  if (([v3 protectedDatabaseAttached] & 1) == 0)
  {
    v11 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __64__EDThreadPersistence_threadForObjectID_originatingQuery_error___block_invoke_cold_1((a1 + 40));
    }

    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = [v12 initWithDomain:*MEMORY[0x1E699A730] code:1025 userInfo:0];
    goto LABEL_11;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:v4];
  v8 = [*(a1 + 32) _mailboxesForThreadDatabaseID:v7];
  v9 = [*(a1 + 32) _sendersForThreadDatabaseID:v7];
  if ([v9 count])
  {
    v59 = 0;
    v10 = 1;
  }

  else
  {
    v15 = [*(a1 + 32) _sendersFromMessagesForThreadObjectID:*(a1 + 40)];

    v16 = [v15 count];
    v10 = v16 == 0;
    v17 = @"no senders";
    if (!v16)
    {
      v17 = 0;
    }

    v59 = v17;
    v9 = v15;
  }

  v53 = v9;
  v18 = [*(a1 + 32) _recipientsOfType:1 forThreadDatabaseID:v7];
  v19 = [*(a1 + 32) _recipientsOfType:2 forThreadDatabaseID:v7];
  if ([v18 count] || objc_msgSend(v19, "count"))
  {
    v20 = v18;
  }

  else
  {
    v20 = [*(a1 + 32) _recipientsOfType:1 fromMessagesForThreadObjectID:*(a1 + 40)];

    v48 = [*(a1 + 32) _recipientsOfType:2 fromMessagesForThreadObjectID:*(a1 + 40)];

    if ([v20 count] || objc_msgSend(v48, "count"))
    {
      if (v10)
      {
        v59 = @"no recipients";
        v19 = v48;
        goto LABEL_19;
      }

      v59 = [(__CFString *)v59 stringByAppendingString:@" and no recipients"];
    }

    v19 = v48;
  }

  if (v59)
  {
LABEL_19:
    v52 = v19;
    [*(a1 + 32) _scheduleRecomputationForThread:*(a1 + 40) reason:v59];
    goto LABEL_21;
  }

  v52 = v19;
  v59 = 0;
LABEL_21:
  v51 = v20;
  v21 = [*(a1 + 32) vipManager];
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __64__EDThreadPersistence_threadForObjectID_originatingQuery_error___block_invoke_234;
  v74[3] = &unk_1E8257920;
  v50 = v21;
  v75 = v50;
  v22 = [v9 ef_any:v74];
  +[EDMessagePersistence messagesTableName];
  v54 = v49 = v22;
  v23 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"date" table:@"threads"];
  v24 = *MEMORY[0x1E699B768];
  v55 = [v23 leftOuterJoin:@"conversations" sourceColumn:@"conversation" targetColumn:*MEMORY[0x1E699B768]];
  v25 = [v23 leftOuterJoin:v54 sourceColumn:@"display_message" targetColumn:v24];
  v60 = [v25 leftOuterJoin:@"message_global_data" sourceColumn:@"global_message_id" targetColumn:v24];
  v58 = [v25 leftOuterJoin:@"subjects" sourceColumn:@"subject" targetColumn:v24];
  v57 = [v25 leftOuterJoin:@"summaries" sourceColumn:@"summary" targetColumn:v24];
  v56 = [v25 leftOuterJoin:@"brand_indicators" sourceColumn:@"brand_indicator" targetColumn:v24];
  [v25 addResultColumn:@"subject_prefix"];
  [v25 addResultColumn:@"unsubscribe_type"];
  [v58 addResultColumn:@"subject"];
  [v57 addResultColumn:@"summary"];
  [v56 addResultColumn:@"url" alias:@"brand_indicator_location"];
  [v23 addResultColumn:@"display_message"];
  [v23 addResultColumn:@"newest_message"];
  [v25 addResultColumn:@"global_message_id"];
  [v23 addResultColumn:@"date"];
  [v23 addResultColumn:@"display_date"];
  [v23 addResultColumn:@"read_later_date"];
  [v60 addResultColumn:@"follow_up_start_date"];
  [v60 addResultColumn:@"follow_up_end_date"];
  [v60 addResultColumn:@"follow_up_jsonstringformodelevaluationforsuggestions"];
  [v23 addResultColumn:@"read"];
  [v23 addResultColumn:@"flagged"];
  [v23 addResultColumn:@"has_red_flag"];
  [v23 addResultColumn:@"has_orange_flag"];
  [v23 addResultColumn:@"has_yellow_flag"];
  [v23 addResultColumn:@"has_green_flag"];
  [v23 addResultColumn:@"has_blue_flag"];
  [v23 addResultColumn:@"has_purple_flag"];
  [v23 addResultColumn:@"has_gray_flag"];
  [v23 addResultColumn:@"draft"];
  [v23 addResultColumn:@"replied"];
  [v23 addResultColumn:@"forwarded"];
  [v23 addResultColumn:@"redirected"];
  [v23 addResultColumn:@"junk_level_set_by_user"];
  [v23 addResultColumn:@"junk_level"];
  [v23 addResultColumn:@"has_unflagged"];
  [v23 addResultColumn:@"has_attachments"];
  [v55 addResultColumn:@"flags"];
  [v23 addResultColumn:@"count"];
  [v23 addResultColumn:@"journaled"];
  [v23 addResultColumn:@"is_icloud_cleanup"];
  [v23 addResultColumn:@"is_urgent"];
  if (_os_feature_enabled_impl() && EMIsGreymatterSupported())
  {
    v26 = [v23 leftOuterJoin:v54 alias:@"newest_message" sourceColumn:@"newest_message" targetColumn:v24];
    v27 = [v26 leftOuterJoin:@"message_global_data" alias:@"newest_message_global_data" sourceColumn:@"global_message_id" targetColumn:v24];
    [v27 addResultColumn:@"rowid" alias:@"newest_message_global_message_id"];
    v28 = [v27 leftOuterJoin:@"generated_summaries" sourceColumn:@"generated_summary" targetColumn:v24];
    [v28 addResultColumn:@"summary" alias:@"generated_summary"];
    [v27 addResultColumn:@"urgent"];
  }

  if (_os_feature_enabled_impl())
  {
    v29 = +[EDBusinessPersistence businessAddressesTableName];
    v30 = +[EDBusinessPersistence businessAddressesAddressColumnName];
    v31 = [v25 leftOuterJoin:v29 sourceColumn:@"sender" targetColumn:v30];

    [EDCategoryPersistence addCategoryColumnsToMessagesSelectComponent:v25 globalMessagesSelectComponent:v60 businessAddressesSelectComponent:v31];
    v32 = +[EDMessagePersistence messageGlobalDataValidationState];
    [v60 addResultColumn:v32];

    v33 = +[EDBusinessPersistence businessesTableName];
    v34 = [v31 leftOuterJoin:v33 sourceColumn:@"business" targetColumn:v24];

    v35 = +[EDBusinessPersistence businessesBrandIDColumnName];
    [v34 addResultColumn:v35];
  }

  v36 = [MEMORY[0x1E699B8C8] table:@"threads" column:v24];
  v37 = [v36 equalTo:v7];
  [v23 setWhere:v37];

  [v23 setLimit:1];
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __64__EDThreadPersistence_threadForObjectID_originatingQuery_error___block_invoke_2;
  v61[3] = &unk_1E82581F0;
  v38 = *(a1 + 40);
  v40 = *(a1 + 48);
  v39 = *(a1 + 56);
  v62 = v38;
  v71 = v39;
  v41 = v40;
  v72 = *(a1 + 64);
  v42 = *(a1 + 32);
  v63 = v41;
  v64 = v42;
  v65 = v3;
  v43 = v53;
  v66 = v43;
  v44 = v51;
  v67 = v44;
  v45 = v52;
  v68 = v45;
  v73 = v49;
  v46 = v8;
  v69 = v46;
  v70 = @"newest_message_global_message_id";
  v14 = [v65 executeSelectStatement:v23 withBlock:v61 error:0];

LABEL_27:
  return v14;
}

uint64_t __64__EDThreadPersistence_threadForObjectID_originatingQuery_error___block_invoke_234(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 stringValue];
  v4 = [v2 isVIPAddress:v3];

  return v4;
}

void __64__EDThreadPersistence_threadForObjectID_originatingQuery_error___block_invoke_2(uint64_t a1, void *a2)
{
  v47[1] = *MEMORY[0x1E69E9840];
  v30 = a2;
  v3 = objc_alloc(MEMORY[0x1E699B308]);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __64__EDThreadPersistence_threadForObjectID_originatingQuery_error___block_invoke_3;
  v45[3] = &unk_1E8257A00;
  v4 = v30;
  v46 = v4;
  v31 = [v3 initWithBuilder:v45];
  v5 = [v4 objectForKeyedSubscript:@"global_message_id"];
  v6 = [v5 int64Value];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E699AD48]) initWithGlobalMessageID:v6];
    v8 = *(a1 + 40);
    if (!*(a1 + 40))
    {
      v29 = v7;
      v9 = [*(a1 + 32) threadScope];
      v10 = [MEMORY[0x1E699ADA0] predicateForMessagesWithThreadScope:v9];
      v11 = [MEMORY[0x1E699ADA0] sortDescriptorForDateAscending:0];
      v12 = objc_alloc(MEMORY[0x1E699AE28]);
      v13 = objc_opt_class();
      v47[0] = v11;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
      v15 = [v12 initWithTargetClass:v13 predicate:v10 sortDescriptors:v14];

      v8 = v15;
      v7 = v29;
    }

    v16 = objc_alloc(MEMORY[0x1E699AEE8]);
    v17 = *(a1 + 32);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __64__EDThreadPersistence_threadForObjectID_originatingQuery_error___block_invoke_320;
    v32[3] = &unk_1E82581C8;
    v33 = v4;
    v18 = v7;
    v34 = v18;
    v19 = *(a1 + 32);
    v20 = *(a1 + 48);
    v21 = *(a1 + 56);
    v35 = v19;
    v36 = v20;
    v37 = v21;
    v38 = *(a1 + 64);
    v39 = *(a1 + 72);
    v40 = *(a1 + 80);
    v41 = v31;
    v44 = *(a1 + 120);
    v42 = *(a1 + 88);
    v43 = *(a1 + 96);
    v22 = [v16 initWithObjectID:v17 originatingQuery:v8 builder:v32];
    v23 = *(*(a1 + 112) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;
  }

  else
  {
    v25 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      __64__EDThreadPersistence_threadForObjectID_originatingQuery_error___block_invoke_2_cold_1(a1);
    }

    v26 = [MEMORY[0x1E696ABC0] em_itemNotFoundErrorWithItemID:*(a1 + 32)];
    v27 = *(*(a1 + 104) + 8);
    v18 = *(v27 + 40);
    *(v27 + 40) = v26;
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __64__EDThreadPersistence_threadForObjectID_originatingQuery_error___block_invoke_3(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"read"];
  [v13 setRead:{objc_msgSend(v3, "BOOLValue")}];

  v4 = [*(a1 + 32) objectForKeyedSubscript:@"flagged"];
  [v13 setFlagged:{objc_msgSend(v4, "BOOLValue")}];

  v5 = [*(a1 + 32) objectForKeyedSubscript:@"draft"];
  [v13 setDraft:{objc_msgSend(v5, "BOOLValue")}];

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"replied"];
  [v13 setReplied:{objc_msgSend(v6, "BOOLValue")}];

  v7 = [*(a1 + 32) objectForKeyedSubscript:@"forwarded"];
  [v13 setForwarded:{objc_msgSend(v7, "BOOLValue")}];

  v8 = [*(a1 + 32) objectForKeyedSubscript:@"redirected"];
  [v13 setRedirected:{objc_msgSend(v8, "BOOLValue")}];

  v9 = [*(a1 + 32) objectForKeyedSubscript:@"junk_level_set_by_user"];
  [v13 setJunkLevelSetByUser:{objc_msgSend(v9, "BOOLValue")}];

  v10 = [*(a1 + 32) objectForKeyedSubscript:@"junk_level"];
  v11 = [v10 numberValue];
  [v13 setJunkLevel:{objc_msgSend(v11, "unsignedIntegerValue")}];

  v12 = [*(a1 + 32) objectForKeyedSubscript:@"is_icloud_cleanup"];
  [v13 setTouchedByCleanup:{objc_msgSend(v12, "BOOLValue")}];
}

void __64__EDThreadPersistence_threadForObjectID_originatingQuery_error___block_invoke_320(uint64_t a1, void *a2)
{
  v81 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"date"];
  v5 = [v4 dateValue];
  [v3 setDate:v5];

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"display_date"];
  v7 = [v6 dateValue];
  [v3 setDisplayDate:v7];

  v8 = [*(a1 + 32) objectForKeyedSubscript:@"read_later_date"];
  v9 = [v8 dateValue];

  v75 = v9;
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E699AE30]) initWithDate:v9];
    [v3 setReadLater:v10];
  }

  v11 = [*(a1 + 32) objectForKeyedSubscript:@"subject_prefix"];
  v76 = [v11 stringValue];

  v12 = [*(a1 + 32) objectForKeyedSubscript:@"subject"];
  v13 = [v12 stringValue];

  v14 = [*(a1 + 32) objectForKeyedSubscript:@"journaled"];
  v15 = [v14 BOOLValue];

  if (((v13 == 0) & v15) == 1)
  {
    v16 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 40);
      v18 = *(a1 + 48);
      *buf = 138543618;
      v78 = v17;
      v79 = 2114;
      v80 = v18;
      _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "Unable to find subject from display message %{public}@ for journaled thread %{public}@", buf, 0x16u);
    }

    v13 = [*(a1 + 56) _nonJournaledSubjectForThreadWithObjectID:*(a1 + 48) connection:*(a1 + 64)];
  }

  v19 = [objc_alloc(MEMORY[0x1E699B328]) initWithPrefix:v76 subjectWithoutPrefix:v13];
  [v3 setSubject:v19];

  v20 = [*(a1 + 32) objectForKeyedSubscript:@"summary"];
  v21 = [v20 stringValue];
  [v3 setSummary:v21];

  v22 = MEMORY[0x1E695E0F0];
  if (*(a1 + 72))
  {
    v23 = *(a1 + 72);
  }

  else
  {
    v23 = MEMORY[0x1E695E0F0];
  }

  [v3 setSenderList:v23];
  if (*(a1 + 80))
  {
    v24 = *(a1 + 80);
  }

  else
  {
    v24 = v22;
  }

  [v3 setToList:v24];
  if (*(a1 + 88))
  {
    v25 = *(a1 + 88);
  }

  else
  {
    v25 = v22;
  }

  [v3 setCcList:v25];
  [v3 setFlags:*(a1 + 96)];
  v26 = [*(a1 + 32) objectForKeyedSubscript:@"has_unflagged"];
  [v3 setHasUnflagged:{objc_msgSend(v26, "BOOLValue")}];

  v27 = [*(a1 + 56) _flagColorsFromRow:*(a1 + 32)];
  [v3 setFlagColors:v27];

  [v3 setIsVIP:*(a1 + 120)];
  v28 = [*(a1 + 56) blockedSenderManager];
  v29 = [v28 areAnyEmailAddressesBlocked:*(a1 + 72)];

  [v3 setIsBlocked:v29];
  v30 = [*(a1 + 32) objectForKeyedSubscript:@"unsubscribe_type"];
  [v3 setUnsubscribeType:{objc_msgSend(v30, "integerValue")}];

  v31 = [*(a1 + 32) objectForKeyedSubscript:@"has_attachments"];
  [v3 setHasAttachments:{objc_msgSend(v31, "BOOLValue")}];

  v32 = [*(a1 + 32) objectForKeyedSubscript:@"flags"];
  v33 = [v32 numberValue];
  v34 = +[EDConversationPersistence conversationNotificationLevelForConversationFlags:](EDConversationPersistence, "conversationNotificationLevelForConversationFlags:", [v33 unsignedLongLongValue]);

  [v3 setConversationNotificationLevel:v34];
  v35 = [*(a1 + 32) objectForKeyedSubscript:@"count"];
  v36 = [v35 numberValue];
  [v3 setCount:{objc_msgSend(v36, "unsignedIntegerValue")}];

  v37 = [*(a1 + 32) objectForKeyedSubscript:@"is_urgent"];
  [v3 setIsUrgent:{objc_msgSend(v37, "BOOLValue")}];

  [v3 setMailboxes:*(a1 + 104)];
  [v3 setDisplayMessageItemID:*(a1 + 40)];
  v38 = [*(a1 + 56) messagePersistence];
  v39 = [v38 mailboxPersistence];
  [v3 setMailboxTypeResolver:v39];

  v40 = [*(a1 + 32) objectForKeyedSubscript:@"follow_up_start_date"];
  v41 = [v40 dateValue];

  v42 = [*(a1 + 32) objectForKeyedSubscript:@"follow_up_end_date"];
  v43 = [v42 dateValue];

  v44 = [*(a1 + 32) objectForKeyedSubscript:@"follow_up_jsonstringformodelevaluationforsuggestions"];
  v45 = [v44 stringValue];

  if (v41 && v43)
  {
    v46 = [objc_alloc(MEMORY[0x1E699ACA8]) initWithStartDate:v41 endDate:v43 jsonStringForModelEvaluationForSuggestions:v45];
    [v3 setFollowUp:v46];
  }

  v47 = [*(a1 + 32) objectForKeyedSubscript:@"brand_indicator_location"];
  v48 = [v47 stringValue];

  if (v48)
  {
    v49 = [MEMORY[0x1E695DFF8] URLWithString:v48];
    [v3 setBrandIndicatorLocation:v49];
  }

  if (_os_feature_enabled_impl() && EMIsGreymatterSupported())
  {
    v50 = [*(a1 + 32) objectForKeyedSubscript:@"generated_summary"];
    v74 = [v50 dataValue];

    if ([v74 length])
    {
      v51 = [*(a1 + 32) objectForKeyedSubscript:@"urgent"];
      v71 = [v51 BOOLValue];

      v73 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v74 error:0];
      v52 = [v73 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E699A8D0]];
      v72 = [v73 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E699A8C8]];
      if (v52)
      {
        v53 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 112)];
        v54 = [v53 int64Value];

        if (v54)
        {
          v55 = [objc_alloc(MEMORY[0x1E699AD48]) initWithGlobalMessageID:v54];
        }

        else
        {
          v55 = 0;
        }

        v56 = [objc_alloc(MEMORY[0x1E699ACB8]) initWithTopLine:v52 synopsis:v72 urgent:v71 messageItemID:v55];
        [v3 setGeneratedSummary:v56];
      }
    }
  }

  if (_os_feature_enabled_impl())
  {
    v57 = [EDCategoryPersistence categoryForResultRow:*(a1 + 32)];
    [v3 setCategory:v57];

    v58 = *(a1 + 32);
    v59 = +[EDMessagePersistence messageGlobalDataValidationState];
    v60 = [v58 objectForKeyedSubscript:v59];
    v61 = [v60 integerValue];
    if ((v61 & 0xE08) != 0x408)
    {
LABEL_35:
      v62 = 0;
      goto LABEL_40;
    }

    if ((v61 & 0x10) != 0)
    {
      v62 = 0;
      if ((v61 & 0x20) == 0 || (v61 & 0x1C0) == 0xC0 || (v61 & 3) == 1)
      {
LABEL_40:
        [v3 setIsAuthenticated:v62];

        v63 = *(a1 + 32);
        v64 = +[EDMessagePersistence messageGlobalDataValidationState];
        v65 = [v63 objectForKeyedSubscript:v64];
        v66 = [v65 integerValue];
        if ((v66 & 0x10000) == 0)
        {
          v67 = (v66 >> 9) & 7;
          if ((v66 & 8) == 0 || v67 != 2)
          {
            goto LABEL_50;
          }

          if ((v66 & 0x10) != 0)
          {
            if ((v66 & 0x20) == 0 || (v66 & 0x1C0) == 0xC0 || (v66 & 3) == 1)
            {
              goto LABEL_50;
            }
          }

          else if ((v66 & 0x1C2) != 0x82)
          {
LABEL_50:
            v68 = (v67 != 0) & (v66 >> 2);
            goto LABEL_51;
          }
        }

        v68 = 0;
LABEL_51:
        [v3 setAllowAuthenticationWarning:v68];

        v69 = [EDBusinessPersistence brandIDForResultRow:*(a1 + 32)];
        [v3 setBusinessLogoID:v69];

        goto LABEL_52;
      }
    }

    else if ((v61 & 0x1C2) != 0x82)
    {
      goto LABEL_35;
    }

    v62 = 1;
    goto LABEL_40;
  }

LABEL_52:

  v70 = *MEMORY[0x1E69E9840];
}

- (id)firstObjectIDNotMatchingSortKey:(id)a3 otherSortKeys:(id)a4 inThreadScope:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (([v9 isEqualToString:@"UrgentDescending"] & 1) == 0)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"EDThreadPersistence.m" lineNumber:924 description:{@"Invalid parameter not satisfying: %@", @"[sortKey isEqualToString:EDThreadSortKeyIsUrgentDescending]"}];
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v12 = [(EDThreadPersistence *)self database];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence firstObjectIDNotMatchingSortKey:otherSortKeys:inThreadScope:]"];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __83__EDThreadPersistence_firstObjectIDNotMatchingSortKey_otherSortKeys_inThreadScope___block_invoke;
  v20[3] = &unk_1E82530F8;
  v20[4] = self;
  v14 = v11;
  v21 = v14;
  v15 = v10;
  v22 = v15;
  v23 = &v24;
  [v12 __performReadWithCaller:v13 usingBlock:v20];

  if (v25[3])
  {
    v16 = objc_alloc(MEMORY[0x1E699AEF8]);
    v17 = [v16 initWithConversationID:v25[3] threadScope:v14];
  }

  else
  {
    v17 = 0;
  }

  _Block_object_dispose(&v24, 8);

  return v17;
}

uint64_t __83__EDThreadPersistence_firstObjectIDNotMatchingSortKey_otherSortKeys_inThreadScope___block_invoke(uint64_t a1, void *a2)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) threadScopeManager];
  v5 = [v4 databaseIDForThreadScope:*(a1 + 40)];

  v6 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"conversation" table:@"threads"];
  v7 = [MEMORY[0x1E699B8C8] column:@"is_urgent"];
  v8 = [v7 equalTo:&unk_1F45E6BF8];

  v9 = [MEMORY[0x1E699B8C8] column:@"scope"];
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:v5];
  v11 = [v9 equalTo:v10];

  v12 = objc_alloc(MEMORY[0x1E699B898]);
  v19[0] = v11;
  v19[1] = v8;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v14 = [v12 initWithExpressions:v13];
  [v6 setWhere:v14];

  [*(a1 + 32) _addOrderByToThreadSelect:v6 forSortKeys:*(a1 + 48)];
  [v6 setLimit:1];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __83__EDThreadPersistence_firstObjectIDNotMatchingSortKey_otherSortKeys_inThreadScope___block_invoke_2;
  v18[3] = &unk_1E8250418;
  v18[4] = *(a1 + 56);
  v15 = [v3 executeSelectStatement:v6 withBlock:v18 error:0];

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

void __83__EDThreadPersistence_firstObjectIDNotMatchingSortKey_otherSortKeys_inThreadScope___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectAtIndexedSubscript:0];
  *(*(*(a1 + 32) + 8) + 24) = [v3 databaseIDValue];
}

- (id)_nonJournaledSubjectForThreadWithObjectID:(id)a3 connection:(id)a4
{
  v31[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(EDThreadPersistence *)self _messageThreadExpressionForThreadObjectID:v6];
  v9 = [MEMORY[0x1E699B8C8] column:@"journaled"];
  v10 = [v9 equalTo:&unk_1F45E6BF8];

  v11 = objc_alloc(MEMORY[0x1E699B948]);
  v12 = +[EDMessagePersistence messagesTableName];
  v13 = [v11 initWithResultColumn:@"subject" table:v12];

  v14 = objc_alloc(MEMORY[0x1E699B898]);
  v31[0] = v8;
  v31[1] = v10;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v16 = [v14 initWithExpressions:v15];
  [v13 setWhere:v16];

  v17 = +[EDMessagePersistence messagesDateReceivedColumnName];
  [v13 orderByColumn:v17 ascending:0];

  [v13 setLimit:1];
  v18 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"subject" table:@"subjects"];
  v19 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v20 = [v19 in:v13];
  [v18 setWhere:v20];

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__47;
  v29 = __Block_byref_object_dispose__47;
  v30 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __76__EDThreadPersistence__nonJournaledSubjectForThreadWithObjectID_connection___block_invoke;
  v24[3] = &unk_1E8250418;
  v24[4] = &v25;
  [v7 executeSelectStatement:v18 withBlock:v24 error:0];
  v21 = v26[5];
  _Block_object_dispose(&v25, 8);

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

void __76__EDThreadPersistence__nonJournaledSubjectForThreadWithObjectID_connection___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectAtIndexedSubscript:0];
  v4 = [v3 stringValue];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)changeForThreadWithObjectID:(id)a3 changedKeyPaths:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__47;
  v22 = __Block_byref_object_dispose__47;
  v23 = 0;
  v8 = [(EDThreadPersistence *)self database];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence changeForThreadWithObjectID:changedKeyPaths:]"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__EDThreadPersistence_changeForThreadWithObjectID_changedKeyPaths___block_invoke;
  v14[3] = &unk_1E82530F8;
  v14[4] = self;
  v10 = v6;
  v15 = v10;
  v11 = v7;
  v16 = v11;
  v17 = &v18;
  [v8 __performReadWithCaller:v9 usingBlock:v14];

  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

uint64_t __67__EDThreadPersistence_changeForThreadWithObjectID_changedKeyPaths___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _databaseIDForThreadObjectID:*(a1 + 40)];
  if (v4 == *MEMORY[0x1E699A728])
  {
    v5 = 1;
    goto LABEL_73;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:v4];
  v55 = v6;
  if (([*(a1 + 48) containsObject:*MEMORY[0x1E699A918]] & 1) != 0 || objc_msgSend(*(a1 + 48), "containsObject:", *MEMORY[0x1E699A930]))
  {
    v7 = [*(a1 + 32) _mailboxesForThreadDatabaseID:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v3 protectedDatabaseAttached];
  v46 = v7;
  v9 = [*(a1 + 48) containsObject:*MEMORY[0x1E699A990]];
  if ((v8 & v9) == 1)
  {
    v10 = [*(a1 + 32) _sendersForThreadDatabaseID:v6];
    if (![v10 count])
    {
      [*(a1 + 32) _scheduleRecomputationForThread:*(a1 + 40) reason:@"no sender on change"];
    }
  }

  else
  {
    v10 = 0;
  }

  v45 = v10;
  if (v8)
  {
    if ([*(a1 + 48) containsObject:*MEMORY[0x1E699A9C0]])
    {
      v11 = [*(a1 + 32) _recipientsOfType:1 forThreadDatabaseID:v6];
    }

    else
    {
      v11 = 0;
    }

    if ([*(a1 + 48) containsObject:*MEMORY[0x1E699A840]])
    {
      v12 = [*(a1 + 32) _recipientsOfType:2 forThreadDatabaseID:v6];
      goto LABEL_19;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = 0;
LABEL_19:
  v44 = v11;
  v58 = [*(a1 + 48) containsObject:*MEMORY[0x1E699A890]];
  if (v8)
  {
    v8 = [*(a1 + 48) containsObject:*MEMORY[0x1E699A9A0]];
    v57 = [*(a1 + 48) containsObject:*MEMORY[0x1E699A9A8]];
    v13 = v8;
  }

  else
  {
    v13 = 0;
    v57 = 0;
  }

  if ([*(a1 + 48) containsObject:*MEMORY[0x1E699A880]])
  {
    v54 = 1;
  }

  else
  {
    v54 = [*(a1 + 48) containsObject:*MEMORY[0x1E699A888]];
  }

  if ([*(a1 + 48) containsObject:*MEMORY[0x1E699A958]])
  {
    v53 = 1;
  }

  else
  {
    v53 = [*(a1 + 48) containsObject:*MEMORY[0x1E699A960]];
  }

  if ([*(a1 + 48) containsObject:*MEMORY[0x1E699A8B8]] & 1) != 0 || (objc_msgSend(*(a1 + 48), "containsObject:", *MEMORY[0x1E699A8A8]))
  {
    v59 = 1;
  }

  else
  {
    v59 = [*(a1 + 48) containsObject:*MEMORY[0x1E699A8B0]];
  }

  v52 = [*(a1 + 48) containsObject:*MEMORY[0x1E699A8A0]];
  v51 = [*(a1 + 48) containsObject:*MEMORY[0x1E699A8E8]];
  v50 = [*(a1 + 48) containsObject:*MEMORY[0x1E699A898]];
  v49 = [*(a1 + 48) containsObject:*MEMORY[0x1E699A8E0]];
  v48 = [*(a1 + 48) containsObject:*MEMORY[0x1E699A878]];
  v41 = v9;
  v43 = v12;
  v47 = [*(a1 + 48) containsObject:*MEMORY[0x1E699A900]];
  v40 = v8;
  if (_os_feature_enabled_impl())
  {
    if ([*(a1 + 48) containsObject:*MEMORY[0x1E699A830]])
    {
      v14 = 1;
    }

    else
    {
      v14 = [*(a1 + 48) containsObject:*MEMORY[0x1E699A838]];
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = [*(a1 + 48) containsObject:*MEMORY[0x1E699A828]];
  v16 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"date" table:@"threads"];
  v17 = *MEMORY[0x1E699B768];
  v18 = [v16 leftOuterJoin:@"conversations" sourceColumn:@"conversation" targetColumn:*MEMORY[0x1E699B768]];
  v19 = +[EDMessagePersistence messagesTableName];
  v42 = v19;
  if (((v58 | v13 | v57 | v59 | v14 | v15) & 1) == 0)
  {
    v22 = 0;
    v60 = 0;
    v56 = 0;
    goto LABEL_44;
  }

  v20 = [v16 leftOuterJoin:v19 sourceColumn:@"display_message" targetColumn:v17];
  v21 = v20;
  if (((v59 | v14) & 1) == 0)
  {
    v60 = 0;
    if (!v15)
    {
      goto LABEL_40;
    }

LABEL_43:
    [v21 leftOuterJoin:@"brand_indicators" sourceColumn:@"brand_indicator" targetColumn:v17];
    v56 = v22 = v21;
    goto LABEL_44;
  }

  v60 = [v20 leftOuterJoin:@"message_global_data" sourceColumn:@"global_message_id" targetColumn:v17];
  if (v15)
  {
    goto LABEL_43;
  }

LABEL_40:
  v56 = 0;
  v22 = v21;
LABEL_44:
  if (v58)
  {
    [v16 addResultColumn:@"display_message"];
    [v22 addResultColumn:@"global_message_id"];
  }

  if (v13)
  {
    v23 = [v22 leftOuterJoin:@"subjects" sourceColumn:@"subject" targetColumn:v17];
    [v22 addResultColumn:@"subject_prefix"];
    [v23 addResultColumn:@"subject"];
  }

  if (v57)
  {
    v24 = [v22 leftOuterJoin:@"summaries" sourceColumn:@"summary" targetColumn:v17];
    [v24 addResultColumn:@"summary"];
  }

  if (v54)
  {
    [v16 addResultColumn:@"date"];
    [v16 addResultColumn:@"display_date"];
  }

  if (v53)
  {
    [v16 addResultColumn:@"read_later_date"];
  }

  if (v59)
  {
    [v60 addResultColumn:@"follow_up_start_date"];
    [v60 addResultColumn:@"follow_up_end_date"];
    [v60 addResultColumn:@"follow_up_jsonstringformodelevaluationforsuggestions"];
  }

  if (v52)
  {
    [v16 addResultColumn:@"read"];
    [v16 addResultColumn:@"flagged"];
    [v16 addResultColumn:@"draft"];
    [v16 addResultColumn:@"replied"];
    [v16 addResultColumn:@"forwarded"];
    [v16 addResultColumn:@"redirected"];
    [v16 addResultColumn:@"junk_level_set_by_user"];
    [v16 addResultColumn:@"junk_level"];
    [v16 addResultColumn:@"is_icloud_cleanup"];
  }

  if (v51)
  {
    [v16 addResultColumn:@"has_unflagged"];
  }

  if (v50)
  {
    [v16 addResultColumn:@"has_red_flag"];
    [v16 addResultColumn:@"has_orange_flag"];
    [v16 addResultColumn:@"has_yellow_flag"];
    [v16 addResultColumn:@"has_green_flag"];
    [v16 addResultColumn:@"has_blue_flag"];
    [v16 addResultColumn:@"has_purple_flag"];
    [v16 addResultColumn:@"has_gray_flag"];
  }

  if (v49)
  {
    [v16 addResultColumn:@"has_attachments"];
  }

  if (v48)
  {
    [v16 addResultColumn:@"count"];
  }

  if (v47)
  {
    [v16 addResultColumn:@"is_urgent"];
  }

  if (v14)
  {
    v25 = +[EDBusinessPersistence businessAddressesTableName];
    v26 = +[EDBusinessPersistence businessAddressesAddressColumnName];
    v27 = [v22 leftOuterJoin:v25 sourceColumn:@"sender" targetColumn:v26];

    v28 = +[EDBusinessPersistence businessAddressesBusinessColumnName];
    [v27 addResultColumn:v28];

    [EDCategoryPersistence addCategoryColumnsToMessagesSelectComponent:v22 globalMessagesSelectComponent:v60 businessAddressesSelectComponent:v27];
    v29 = +[EDBusinessPersistence businessesTableName];
    v30 = [v27 leftOuterJoin:v29 sourceColumn:@"business" targetColumn:v17];

    v31 = +[EDBusinessPersistence businessesBrandIDColumnName];
    [v30 addResultColumn:v31];
  }

  if (v15)
  {
    [v56 addResultColumn:@"url" alias:@"brand_indicator_location"];
  }

  v32 = [MEMORY[0x1E699B8C8] table:@"threads" column:v17];
  v33 = [v32 equalTo:v55];
  [v16 setWhere:v33];

  [v16 setLimit:1];
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __67__EDThreadPersistence_changeForThreadWithObjectID_changedKeyPaths___block_invoke_2;
  v61[3] = &unk_1E8258240;
  v67 = *(a1 + 56);
  v68 = v41;
  v34 = v45;
  v62 = v34;
  v35 = v44;
  v63 = v35;
  v36 = v43;
  v64 = v36;
  v37 = v46;
  v69 = v58;
  v70 = v40;
  v71 = v57;
  v72 = v54;
  v73 = v53;
  v74 = v59;
  v75 = v52;
  v76 = v51;
  v77 = v50;
  v38 = *(a1 + 32);
  v65 = v37;
  v66 = v38;
  v78 = v49;
  v79 = v48;
  v80 = v47;
  v81 = v14;
  v82 = v15;
  v5 = [v3 executeSelectStatement:v16 withBlock:v61 error:0];

LABEL_73:
  return v5;
}

void __67__EDThreadPersistence_changeForThreadWithObjectID_changedKeyPaths___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E699AD98]);
  v5 = *(*(a1 + 72) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (*(a1 + 80) == 1)
  {
    [*(*(*(a1 + 72) + 8) + 40) setSenderList:*(a1 + 32)];
  }

  [*(*(*(a1 + 72) + 8) + 40) setToList:*(a1 + 40)];
  [*(*(*(a1 + 72) + 8) + 40) setCcList:*(a1 + 48)];
  [*(*(*(a1 + 72) + 8) + 40) setMailboxes:*(a1 + 56)];
  if (*(a1 + 81) == 1)
  {
    v7 = [v3 objectForKeyedSubscript:@"global_message_id"];
    v8 = [v7 int64Value];

    v9 = [objc_alloc(MEMORY[0x1E699AD48]) initWithGlobalMessageID:v8];
    [*(*(*(a1 + 72) + 8) + 40) setDisplayMessageItemID:v9];
  }

  if (*(a1 + 82) == 1)
  {
    v10 = [v3 objectForKeyedSubscript:@"subject_prefix"];
    v11 = [v10 stringValue];

    v12 = [v3 objectForKeyedSubscript:@"subject"];
    v13 = [v12 stringValue];

    v14 = [objc_alloc(MEMORY[0x1E699B328]) initWithPrefix:v11 subjectWithoutPrefix:v13];
    [*(*(*(a1 + 72) + 8) + 40) setSubject:v14];
  }

  if (*(a1 + 83) == 1)
  {
    v15 = [v3 objectForKeyedSubscript:@"summary"];
    v16 = [v15 stringValue];
    v17 = v16;
    if (!v16)
    {
      v17 = [MEMORY[0x1E695DFB0] null];
    }

    [*(*(*(a1 + 72) + 8) + 40) setSummary:v17];
    if (!v16)
    {
    }
  }

  if (*(a1 + 84) == 1)
  {
    v18 = [v3 objectForKeyedSubscript:@"date"];
    v19 = [v18 dateValue];
    [*(*(*(a1 + 72) + 8) + 40) setDate:v19];

    v20 = [v3 objectForKeyedSubscript:@"display_date"];
    v21 = [v20 dateValue];
    [*(*(*(a1 + 72) + 8) + 40) setDisplayDate:v21];
  }

  if (*(a1 + 85) == 1)
  {
    v22 = [v3 objectForKeyedSubscript:@"read_later_date"];
    v23 = [v22 dateValue];

    if (v23)
    {
      v24 = [objc_alloc(MEMORY[0x1E699AE30]) initWithDate:v23];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
    }

    v25 = v24;
    [*(*(*(a1 + 72) + 8) + 40) setReadLater:v24];
  }

  if (*(a1 + 86) == 1)
  {
    v26 = [v3 objectForKeyedSubscript:@"follow_up_start_date"];
    v27 = [v26 dateValue];

    v28 = [v3 objectForKeyedSubscript:@"follow_up_end_date"];
    v29 = [v28 dateValue];

    v30 = [v3 objectForKeyedSubscript:@"follow_up_jsonstringformodelevaluationforsuggestions"];
    v31 = [v30 stringValue];

    if (v27 && v29)
    {
      v32 = [objc_alloc(MEMORY[0x1E699ACA8]) initWithStartDate:v27 endDate:v29 jsonStringForModelEvaluationForSuggestions:v31];
      [*(*(*(a1 + 72) + 8) + 40) setFollowUp:v32];
    }

    else
    {
      v32 = [MEMORY[0x1E695DFB0] null];
      [*(*(*(a1 + 72) + 8) + 40) setFollowUp:v32];
    }
  }

  if (*(a1 + 87) == 1)
  {
    v33 = objc_alloc(MEMORY[0x1E699B308]);
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __67__EDThreadPersistence_changeForThreadWithObjectID_changedKeyPaths___block_invoke_3;
    v54[3] = &unk_1E8257A00;
    v55 = v3;
    v34 = [v33 initWithBuilder:v54];
    [*(*(*(a1 + 72) + 8) + 40) setFlags:v34];
  }

  if (*(a1 + 88) == 1)
  {
    v35 = MEMORY[0x1E696AD98];
    v36 = [v3 objectForKeyedSubscript:@"has_unflagged"];
    v37 = [v36 numberValue];
    v38 = [v35 numberWithBool:{objc_msgSend(v37, "BOOLValue")}];
    [*(*(*(a1 + 72) + 8) + 40) setHasUnflagged:v38];
  }

  if (*(a1 + 89) == 1)
  {
    v39 = [*(a1 + 64) _flagColorsFromRow:v3];
    [*(*(*(a1 + 72) + 8) + 40) setFlagColors:v39];
  }

  if (*(a1 + 90) == 1)
  {
    v40 = MEMORY[0x1E696AD98];
    v41 = [v3 objectForKeyedSubscript:@"has_attachments"];
    v42 = [v41 numberValue];
    v43 = [v40 numberWithBool:{objc_msgSend(v42, "BOOLValue")}];
    [*(*(*(a1 + 72) + 8) + 40) setHasAttachments:v43];
  }

  if (*(a1 + 91) == 1)
  {
    v44 = MEMORY[0x1E696AD98];
    v45 = [v3 objectForKeyedSubscript:@"count"];
    v46 = [v45 numberValue];
    v47 = [v44 numberWithUnsignedInteger:{objc_msgSend(v46, "unsignedIntegerValue")}];
    [*(*(*(a1 + 72) + 8) + 40) setCount:v47];
  }

  if (*(a1 + 92) == 1)
  {
    v48 = [v3 objectForKeyedSubscript:@"is_urgent"];
    v49 = [v48 numberValue];
    [*(*(*(a1 + 72) + 8) + 40) setIsUrgent:v49];
  }

  if (*(a1 + 93) == 1)
  {
    v50 = [EDBusinessPersistence brandIDForResultRow:v3];
    [*(*(*(a1 + 72) + 8) + 40) setBusinessLogoID:v50];
  }

  if (*(a1 + 94) == 1)
  {
    v51 = [v3 objectForKeyedSubscript:@"brand_indicator_location"];
    v52 = [v51 stringValue];

    if (v52)
    {
      [MEMORY[0x1E695DFF8] URLWithString:v52];
    }

    else
    {
      [MEMORY[0x1E695DFB0] null];
    }
    v53 = ;
    [*(*(*(a1 + 72) + 8) + 40) setBrandIndicatorLocation:v53];
  }
}

void __67__EDThreadPersistence_changeForThreadWithObjectID_changedKeyPaths___block_invoke_3(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"read"];
  [v13 setRead:{objc_msgSend(v3, "BOOLValue")}];

  v4 = [*(a1 + 32) objectForKeyedSubscript:@"flagged"];
  [v13 setFlagged:{objc_msgSend(v4, "BOOLValue")}];

  v5 = [*(a1 + 32) objectForKeyedSubscript:@"draft"];
  [v13 setDraft:{objc_msgSend(v5, "BOOLValue")}];

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"replied"];
  [v13 setReplied:{objc_msgSend(v6, "BOOLValue")}];

  v7 = [*(a1 + 32) objectForKeyedSubscript:@"forwarded"];
  [v13 setForwarded:{objc_msgSend(v7, "BOOLValue")}];

  v8 = [*(a1 + 32) objectForKeyedSubscript:@"redirected"];
  [v13 setRedirected:{objc_msgSend(v8, "BOOLValue")}];

  v9 = [*(a1 + 32) objectForKeyedSubscript:@"junk_level_set_by_user"];
  [v13 setJunkLevelSetByUser:{objc_msgSend(v9, "BOOLValue")}];

  v10 = [*(a1 + 32) objectForKeyedSubscript:@"junk_level"];
  v11 = [v10 numberValue];
  [v13 setJunkLevel:{objc_msgSend(v11, "unsignedIntegerValue")}];

  v12 = [*(a1 + 32) objectForKeyedSubscript:@"is_icloud_cleanup"];
  [v13 setTouchedByCleanup:{objc_msgSend(v12, "BOOLValue")}];
}

- (id)newestMessageItemIDForThreadWithObjectID:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__47;
  v17 = __Block_byref_object_dispose__47;
  v18 = 0;
  v5 = [(EDThreadPersistence *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence newestMessageItemIDForThreadWithObjectID:]"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__EDThreadPersistence_newestMessageItemIDForThreadWithObjectID___block_invoke;
  v10[3] = &unk_1E8250288;
  v10[4] = self;
  v7 = v4;
  v11 = v7;
  v12 = &v13;
  [v5 __performReadWithCaller:v6 usingBlock:v10];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __64__EDThreadPersistence_newestMessageItemIDForThreadWithObjectID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _databaseIDForThreadObjectID:*(a1 + 40)];
  if (v4 == *MEMORY[0x1E699A728])
  {
    v5 = 1;
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:v4];
    v7 = [objc_alloc(MEMORY[0x1E699B948]) initWithTable:@"threads"];
    v8 = +[EDMessagePersistence messagesTableName];
    v9 = *MEMORY[0x1E699B768];
    v10 = [v7 leftOuterJoin:v8 sourceColumn:@"newest_message" targetColumn:*MEMORY[0x1E699B768]];

    [v10 addResultColumn:@"global_message_id"];
    v11 = [MEMORY[0x1E699B8C8] table:@"threads" column:v9];
    v12 = [v11 equalTo:v6];
    [v7 setWhere:v12];

    [v7 setLimit:1];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64__EDThreadPersistence_newestMessageItemIDForThreadWithObjectID___block_invoke_2;
    v14[3] = &unk_1E8250418;
    v14[4] = *(a1 + 48);
    v5 = [v3 executeSelectStatement:v7 withBlock:v14 error:0];
  }

  return v5;
}

void __64__EDThreadPersistence_newestMessageItemIDForThreadWithObjectID___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 objectForKeyedSubscript:@"global_message_id"];
  v4 = [v3 int64Value];

  v5 = [objc_alloc(MEMORY[0x1E699AD48]) initWithGlobalMessageID:v4];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)_flagColorsFromRow:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v5 = [v3 objectForKeyedSubscript:@"has_red_flag"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    [v4 addIndex:0];
  }

  v7 = [v3 objectForKeyedSubscript:@"has_orange_flag"];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    [v4 addIndex:1];
  }

  v9 = [v3 objectForKeyedSubscript:@"has_yellow_flag"];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    [v4 addIndex:2];
  }

  v11 = [v3 objectForKeyedSubscript:@"has_green_flag"];
  v12 = [v11 BOOLValue];

  if (v12)
  {
    [v4 addIndex:3];
  }

  v13 = [v3 objectForKeyedSubscript:@"has_blue_flag"];
  v14 = [v13 BOOLValue];

  if (v14)
  {
    [v4 addIndex:4];
  }

  v15 = [v3 objectForKeyedSubscript:@"has_purple_flag"];
  v16 = [v15 BOOLValue];

  if (v16)
  {
    [v4 addIndex:5];
  }

  v17 = [v3 objectForKeyedSubscript:@"has_gray_flag"];
  v18 = [v17 BOOLValue];

  if (v18)
  {
    [v4 addIndex:6];
  }

  if (![v4 count])
  {
    [v4 addIndex:0];
  }

  return v4;
}

- (id)_mailboxesForThreadDatabaseID:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(EDThreadPersistence *)self database];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence _mailboxesForThreadDatabaseID:]"];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __53__EDThreadPersistence__mailboxesForThreadDatabaseID___block_invoke;
  v18[3] = &unk_1E8250328;
  v8 = v4;
  v19 = v8;
  v9 = v5;
  v20 = v9;
  [v6 __performReadWithCaller:v7 usingBlock:v18];

  v10 = [(EDThreadPersistence *)self messagePersistence];
  v11 = [v10 mailboxPersistence];
  v12 = [v11 mailboxProvider];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53__EDThreadPersistence__mailboxesForThreadDatabaseID___block_invoke_3;
  v16[3] = &unk_1E8258268;
  v17 = v12;
  v13 = v12;
  v14 = [v9 ef_compactMap:v16];

  return v14;
}

uint64_t __53__EDThreadPersistence__mailboxesForThreadDatabaseID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[EDPersistenceDatabaseSchema mailboxesTableName];
  v5 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"url" table:v4];
  v6 = [v5 join:@"thread_mailboxes" sourceColumn:*MEMORY[0x1E699B768] targetColumn:@"mailbox"];
  v7 = [MEMORY[0x1E699B8C8] table:@"thread_mailboxes" column:@"thread"];
  v8 = [v7 equalTo:*(a1 + 32)];
  [v5 setWhere:v8];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__EDThreadPersistence__mailboxesForThreadDatabaseID___block_invoke_2;
  v11[3] = &unk_1E8250300;
  v12 = *(a1 + 40);
  v9 = [v3 executeSelectStatement:v5 withBlock:v11 error:0];

  return v9;
}

void __53__EDThreadPersistence__mailboxesForThreadDatabaseID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectAtIndexedSubscript:0];
  v6 = [v3 stringValue];

  v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v6];
  v5 = [objc_alloc(MEMORY[0x1E699AD20]) initWithURL:v4];
  [*(a1 + 32) addObject:v5];
}

id __53__EDThreadPersistence__mailboxesForThreadDatabaseID___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) mailboxForObjectID:a2];

  return v2;
}

- (id)_sendersForThreadDatabaseID:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"address" table:@"addresses"];
  [v5 addResultColumn:@"comment"];
  v6 = [v5 join:@"thread_senders" sourceColumn:*MEMORY[0x1E699B768] targetColumn:@"address"];
  v7 = [MEMORY[0x1E699B8C8] table:@"thread_senders" column:@"thread"];
  v8 = [v7 equalTo:v4];
  [v5 setWhere:v8];

  [v6 orderByColumn:@"priority" ascending:0];
  [v6 orderByColumn:@"date" ascending:0];
  v9 = [(EDThreadPersistence *)self _addressesFromSelectStatement:v5 additionalRowHandling:0];

  return v9;
}

- (id)_sendersFromMessagesForThreadObjectID:(id)a3
{
  v4 = [(EDThreadPersistence *)self _messageThreadExpressionForThreadObjectID:a3];
  v5 = [(EDThreadPersistence *)self _senderAddressesExpressionForMessages:v4];
  v6 = [(EDThreadPersistence *)self _addressesFromMessageAddressesStatement:v5];

  return v6;
}

- (id)_recipientsOfType:(unint64_t)a3 forThreadDatabaseID:(id)a4
{
  v20[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"address" table:@"addresses"];
  [v7 addResultColumn:@"comment"];
  v8 = [v7 join:@"thread_recipients" sourceColumn:*MEMORY[0x1E699B768] targetColumn:@"address"];
  v9 = [MEMORY[0x1E699B8C8] table:@"thread_recipients" column:@"thread"];
  v10 = [v9 equalTo:v6];

  v11 = [MEMORY[0x1E699B8C8] table:@"thread_recipients" column:@"type"];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v13 = [v11 equalTo:v12];

  v14 = objc_alloc(MEMORY[0x1E699B898]);
  v20[0] = v10;
  v20[1] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v16 = [v14 initWithExpressions:v15];
  [v7 setWhere:v16];

  [v8 orderByColumn:@"priority" ascending:0];
  [v8 orderByColumn:@"date" ascending:0];
  v17 = [(EDThreadPersistence *)self _addressesFromSelectStatement:v7 additionalRowHandling:0];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_recipientsOfType:(unint64_t)a3 fromMessagesForThreadObjectID:(id)a4
{
  v6 = [(EDThreadPersistence *)self _messageThreadExpressionForThreadObjectID:a4];
  v7 = [(EDThreadPersistence *)self _recipientAddressesExpressionForRecipientType:a3 messages:v6];
  v8 = [(EDThreadPersistence *)self _addressesFromMessageAddressesStatement:v7];

  return v8;
}

- (id)_addressesFromMessageAddressesStatement:(id)a3
{
  v4 = a3;
  v5 = +[EDMessagePersistence messagesDateReceivedColumnName];
  v6 = +[EDMessagePersistence messagesTableName];
  [v4 orderByColumn:v5 fromTable:v6 ascending:0];

  [v4 setDistinct:1];
  v7 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"address" table:@"addresses"];
  [v7 addResultColumn:@"comment"];
  v8 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v9 = [v8 in:v4];
  [v7 setWhere:v9];

  v10 = [(EDThreadPersistence *)self _addressesFromSelectStatement:v7 additionalRowHandling:0];

  return v10;
}

- (id)_addressesFromSelectStatement:(id)a3 additionalRowHandling:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [(EDThreadPersistence *)self database];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence _addressesFromSelectStatement:additionalRowHandling:]"];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__EDThreadPersistence__addressesFromSelectStatement_additionalRowHandling___block_invoke;
  v17[3] = &unk_1E8257AC8;
  v11 = v6;
  v18 = v11;
  v12 = v8;
  v19 = v12;
  v13 = v7;
  v20 = v13;
  [v9 __performReadWithCaller:v10 usingBlock:v17];

  v14 = v20;
  v15 = v12;

  return v12;
}

uint64_t __75__EDThreadPersistence__addressesFromSelectStatement_additionalRowHandling___block_invoke(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__EDThreadPersistence__addressesFromSelectStatement_additionalRowHandling___block_invoke_2;
  v7[3] = &unk_1E8258178;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v5 = [a2 executeSelectStatement:v4 withBlock:v7 error:0];

  return v5;
}

void __75__EDThreadPersistence__addressesFromSelectStatement_additionalRowHandling___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v17 = a2;
  v7 = [v17 objectForKeyedSubscript:@"address"];
  v8 = [v7 stringValue];

  v9 = [v17 objectForKeyedSubscript:@"comment"];
  v10 = [v9 stringValue];

  v11 = [objc_alloc(MEMORY[0x1E699B248]) initWithString:v8];
  [v11 setDisplayName:v10];
  v12 = [v11 emailAddressValue];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v8;
  }

  v15 = v14;

  [*(a1 + 32) addObject:v15];
  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v17, a3, a4);
  }
}

- (id)nextExistingThreadObjectIDForThreadObjectID:(id)a3 forSortKeys:(id)a4 journaledThreadsToCheck:(id)a5 excluding:(id)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v27 = a5;
  v28 = a6;
  v12 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    *&buf[4] = v10;
    *&buf[12] = 2114;
    *&buf[14] = v11;
    *&buf[22] = 2114;
    v38 = v27;
    LOWORD(v39) = 2114;
    *(&v39 + 2) = v28;
    _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "Looking up thread before thread: %{public}@, sort keys: %{public}@, journaled threads: %{public}@, excluding: %{public}@", buf, 0x2Au);
  }

  v13 = [(EDThreadPersistence *)self threadScopeManager];
  v14 = [v10 threadScope];
  v15 = [v13 databaseIDForThreadScope:v14];

  v16 = -[EDThreadPersistence _threadExpressionForThreadScopeDatabaseID:conversation:](self, "_threadExpressionForThreadScopeDatabaseID:conversation:", v15, [v10 conversationID]);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v38 = __Block_byref_object_copy__47;
  *&v39 = __Block_byref_object_dispose__47;
  *(&v39 + 1) = 0;
  v17 = [(EDThreadPersistence *)self database];
  v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence nextExistingThreadObjectIDForThreadObjectID:forSortKeys:journaledThreadsToCheck:excluding:]"];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __113__EDThreadPersistence_nextExistingThreadObjectIDForThreadObjectID_forSortKeys_journaledThreadsToCheck_excluding___block_invoke;
  v29[3] = &unk_1E8258290;
  v29[4] = self;
  v19 = v11;
  v30 = v19;
  v20 = v10;
  v31 = v20;
  v21 = v16;
  v32 = v21;
  v36 = v15;
  v22 = v28;
  v33 = v22;
  v23 = v27;
  v34 = v23;
  v35 = buf;
  [v17 __performReadWithCaller:v18 usingBlock:v29];

  v24 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

uint64_t __113__EDThreadPersistence_nextExistingThreadObjectIDForThreadObjectID_forSortKeys_journaledThreadsToCheck_excluding___block_invoke(uint64_t a1, void *a2)
{
  v46[4] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"conversation" table:@"threads"];
  v5 = [*(a1 + 32) _comparisonExpressionForSortKeys:*(a1 + 40) conversationID:objc_msgSend(*(a1 + 48) threadExpression:"conversationID") threadScopeDatabaseID:*(a1 + 56) connection:{*(a1 + 88), v3}];
  if (v5)
  {
    v6 = [MEMORY[0x1E699B8C8] column:@"scope"];
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 88)];
    v8 = [v6 equalTo:v7];

    v9 = [MEMORY[0x1E699B8C8] column:@"journaled"];
    v35 = [v9 equalTo:&unk_1F45E6BF8];

    if ([*(a1 + 64) count])
    {
      v10 = [MEMORY[0x1E699B8C8] column:@"conversation"];
      v11 = [*(a1 + 64) ef_compactMap:&__block_literal_global_362];
      v12 = [v10 notIn:v11];

      v46[0] = v8;
      v46[1] = v12;
      v46[2] = v35;
      v46[3] = v5;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:4];
    }

    else
    {
      v45[0] = v8;
      v45[1] = v35;
      v45[2] = v5;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:3];
    }

    v15 = [objc_alloc(MEMORY[0x1E699B898]) initWithExpressions:v13];
    [v4 setWhere:v15];

    [*(a1 + 32) _addOrderByToThreadSelect:v4 forSortKeys:*(a1 + 40)];
    [v4 setLimit:1];
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __113__EDThreadPersistence_nextExistingThreadObjectIDForThreadObjectID_forSortKeys_journaledThreadsToCheck_excluding___block_invoke_2;
    v37[3] = &unk_1E8250418;
    v37[4] = &v38;
    if (![v3 executeSelectStatement:v4 withBlock:v37 error:0])
    {
      v20 = +[EDThreadPersistence log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        __113__EDThreadPersistence_nextExistingThreadObjectIDForThreadObjectID_forSortKeys_journaledThreadsToCheck_excluding___block_invoke_cold_1();
      }

      v14 = 0;
      goto LABEL_24;
    }

    v16 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v39[3];
      *buf = 134217984;
      v44 = v17;
      _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "Found next unjournaled conversation ID: %lld", buf, 0xCu);
    }

    if ([*(a1 + 72) count])
    {
      v18 = [*(a1 + 72) ef_compactMap:&__block_literal_global_365];
      v19 = [MEMORY[0x1E696AD98] numberWithLongLong:v39[3]];
      v20 = [v18 arrayByAddingObject:v19];

      v21 = [MEMORY[0x1E699B8C8] column:@"conversation"];
      v22 = [v21 in:v20];

      v42[0] = v8;
      v42[1] = v22;
      v42[2] = v5;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:3];

      v24 = [objc_alloc(MEMORY[0x1E699B898]) initWithExpressions:v23];
      [v4 setWhere:v24];

      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __113__EDThreadPersistence_nextExistingThreadObjectIDForThreadObjectID_forSortKeys_journaledThreadsToCheck_excluding___block_invoke_2_366;
      v36[3] = &unk_1E8250418;
      v36[4] = &v38;
      if (![v3 executeSelectStatement:v4 withBlock:v36 error:0])
      {
        v32 = +[EDThreadPersistence log];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          __113__EDThreadPersistence_nextExistingThreadObjectIDForThreadObjectID_forSortKeys_journaledThreadsToCheck_excluding___block_invoke_cold_2();
        }

        v14 = 0;
        v13 = v23;
        goto LABEL_24;
      }

      v25 = +[EDThreadPersistence log];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v39[3];
        *buf = 134217984;
        v44 = v26;
        _os_log_impl(&dword_1C61EF000, v25, OS_LOG_TYPE_DEFAULT, "Found next conversation ID, including journaled: %lld", buf, 0xCu);
      }

      v13 = v23;
    }

    if (!v39[3])
    {
      v14 = 1;
      goto LABEL_25;
    }

    v27 = objc_alloc(MEMORY[0x1E699AEF8]);
    v28 = v39[3];
    v20 = [*(a1 + 48) threadScope];
    v29 = [v27 initWithConversationID:v28 threadScope:v20];
    v30 = *(*(a1 + 80) + 8);
    v31 = *(v30 + 40);
    *(v30 + 40) = v29;

    v14 = 1;
LABEL_24:

LABEL_25:
    _Block_object_dispose(&v38, 8);

    goto LABEL_26;
  }

  v8 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __113__EDThreadPersistence_nextExistingThreadObjectIDForThreadObjectID_forSortKeys_journaledThreadsToCheck_excluding___block_invoke_cold_3();
  }

  v14 = 1;
LABEL_26:

  v33 = *MEMORY[0x1E69E9840];
  return v14;
}

id __113__EDThreadPersistence_nextExistingThreadObjectIDForThreadObjectID_forSortKeys_journaledThreadsToCheck_excluding___block_invoke_359(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v2, "conversationID")}];

  return v3;
}

void __113__EDThreadPersistence_nextExistingThreadObjectIDForThreadObjectID_forSortKeys_journaledThreadsToCheck_excluding___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectAtIndexedSubscript:0];
  *(*(*(a1 + 32) + 8) + 24) = [v3 databaseIDValue];
}

id __113__EDThreadPersistence_nextExistingThreadObjectIDForThreadObjectID_forSortKeys_journaledThreadsToCheck_excluding___block_invoke_363(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v2, "conversationID")}];

  return v3;
}

void __113__EDThreadPersistence_nextExistingThreadObjectIDForThreadObjectID_forSortKeys_journaledThreadsToCheck_excluding___block_invoke_2_366(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectAtIndexedSubscript:0];
  *(*(*(a1 + 32) + 8) + 24) = [v3 databaseIDValue];
}

- (id)threadObjectIDsByNextExistingForThreadObjectIDs:(id)a3 forSortKeys:(id)a4 journaledThreadsToCheck:(id)a5
{
  v72 = *MEMORY[0x1E69E9840];
  v46 = a3;
  v48 = a4;
  v49 = a5;
  v7 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    -[EDThreadPersistence threadObjectIDsByNextExistingForThreadObjectIDs:forSortKeys:journaledThreadsToCheck:].cold.1(v46, v71, [v46 count]);
  }

  if ([v46 count])
  {
    v42 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{0, objc_msgSend(v46, "count")}];
    v43 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v44 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = [v46 firstObject];
    v9 = [(EDThreadPersistence *)self nextExistingThreadObjectIDForThreadObjectID:v8 forSortKeys:v48 journaledThreadsToCheck:v49 excluding:v46];

    if (v9)
    {
      [v43 setObject:v9 forKeyedSubscript:&unk_1F45E6BF8];
      v63 = 0;
      v64 = &v63;
      v65 = 0x3032000000;
      v66 = __Block_byref_object_copy__47;
      v67 = __Block_byref_object_dispose__47;
      v10 = objc_alloc(MEMORY[0x1E695DF70]);
      v11 = [v46 firstObject];
      v68 = [v10 initWithObjects:{v11, 0}];

      [v42 removeIndex:0];
      [v44 setObject:v64[5] forKeyedSubscript:v9];
      if ([v46 count] == 1)
      {
        v12 = v44;
      }

      else
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __107__EDThreadPersistence_threadObjectIDsByNextExistingForThreadObjectIDs_forSortKeys_journaledThreadsToCheck___block_invoke;
        aBlock[3] = &unk_1E82582B8;
        v45 = v43;
        v58 = v45;
        v15 = v42;
        v59 = v15;
        v62 = &v63;
        v41 = v44;
        v60 = v41;
        v16 = v46;
        v61 = v16;
        v17 = _Block_copy(aBlock);
        v18 = [v16 lastObject];
        v19 = [(EDThreadPersistence *)self nextExistingThreadObjectIDForThreadObjectID:v18 forSortKeys:v48 journaledThreadsToCheck:v49 excluding:v16];
        v20 = v19;
        if (v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = [MEMORY[0x1E695DFB0] null];
        }

        v22 = v21;

        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v16, "count") - 1}];
        [v45 setObject:v22 forKeyedSubscript:v23];

        if ((v17[2](v17, v22, [v16 count] - 1, 0) & 1) == 0)
        {
          [v15 removeIndex:{objc_msgSend(v16, "count") - 1}];
          v24 = objc_alloc(MEMORY[0x1E695DF70]);
          v25 = [v16 lastObject];
          v26 = [v24 initWithObjects:{v25, 0}];
          v27 = v64[5];
          v64[5] = v26;

          [v41 setObject:v64[5] forKeyedSubscript:v22];
        }

        v52 = 0;
        v53 = &v52;
        v54 = 0x3010000000;
        v55 = "";
        v56 = xmmword_1C6472040;
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __107__EDThreadPersistence_threadObjectIDsByNextExistingForThreadObjectIDs_forSortKeys_journaledThreadsToCheck___block_invoke_2;
        v51[3] = &unk_1E82582E0;
        v51[4] = &v52;
        [v15 enumerateRangesUsingBlock:v51];
        v28 = v53;
        v29 = v53[4];
        if (v29 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v9 = v22;
        }

        else
        {
          do
          {
            v30 = v29 + (v28[5] >> 1);
            v31 = [v16 objectAtIndexedSubscript:v30];
            v32 = [(EDThreadPersistence *)self nextExistingThreadObjectIDForThreadObjectID:v31 forSortKeys:v48 journaledThreadsToCheck:v49 excluding:v16];
            v33 = v32;
            if (v32)
            {
              v34 = v32;
            }

            else
            {
              v34 = [MEMORY[0x1E695DFB0] null];
            }

            v9 = v34;

            v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v30];
            [v45 setObject:v9 forKeyedSubscript:v35];

            if ((v17[2](v17, v9, v30, v53[4] - 1) & 1) == 0 && (v17[2](v17, v9, v30, v53[5] + v53[4]) & 1) == 0)
            {
              [v15 removeIndex:v30];
              v36 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v31, 0}];
              v37 = v64[5];
              v64[5] = v36;

              [v41 setObject:v64[5] forKeyedSubscript:v9];
            }

            *(v53 + 2) = xmmword_1C6472040;
            v50[0] = MEMORY[0x1E69E9820];
            v50[1] = 3221225472;
            v50[2] = __107__EDThreadPersistence_threadObjectIDsByNextExistingForThreadObjectIDs_forSortKeys_journaledThreadsToCheck___block_invoke_3;
            v50[3] = &unk_1E82582E0;
            v50[4] = &v52;
            [v15 enumerateRangesUsingBlock:v50];

            v28 = v53;
            v29 = v53[4];
            v22 = v9;
          }

          while (v29 != 0x7FFFFFFFFFFFFFFFLL);
        }

        v38 = v41;
        _Block_object_dispose(&v52, 8);
      }

      _Block_object_dispose(&v63, 8);

      v14 = v9;
      v13 = v44;
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      v69 = v14;
      v70 = v46;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
    }
  }

  else
  {
    v13 = MEMORY[0x1E695E0F8];
  }

  v39 = *MEMORY[0x1E69E9840];

  return v13;
}

uint64_t __107__EDThreadPersistence_threadObjectIDsByNextExistingForThreadObjectIDs_forSortKeys_journaledThreadsToCheck___block_invoke(uint64_t a1, void *a2, unint64_t a3, unint64_t a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = [v10 isEqual:v7];
  if (v11)
  {
    v12 = a4 - a3;
    if (a4 >= a3)
    {
      [*(a1 + 40) removeIndexesInRange:{a3, a4 - a3}];
      v20 = [*(a1 + 48) objectForKeyedSubscript:v7];
      v21 = *(*(a1 + 64) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;

      v19 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, a4 - a3}];
      v23 = *(*(*(a1 + 64) + 8) + 40);
      v24 = [*(a1 + 56) subarrayWithRange:{a3, v12}];
      [v23 insertObjects:v24 atIndexes:v19];
    }

    else
    {
      v13 = a3 - a4;
      [*(a1 + 40) removeIndexesInRange:{a4 + 1, v13}];
      v14 = [*(a1 + 48) objectForKeyedSubscript:v7];
      v15 = *(*(a1 + 64) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      v17 = *(a1 + 56);
      v18 = *(*(*(a1 + 64) + 8) + 40);
      v19 = [v17 subarrayWithRange:{a4 + 1, v13}];
      [v18 addObjectsFromArray:v19];
    }
  }

  return v11;
}

uint64_t __107__EDThreadPersistence_threadObjectIDsByNextExistingForThreadObjectIDs_forSortKeys_journaledThreadsToCheck___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = *(*(result + 32) + 8);
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *a4 = 1;
  return result;
}

uint64_t __107__EDThreadPersistence_threadObjectIDsByNextExistingForThreadObjectIDs_forSortKeys_journaledThreadsToCheck___block_invoke_3(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = *(*(result + 32) + 8);
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *a4 = 1;
  return result;
}

- (int64_t)_databaseIDForThreadObjectID:(id)a3
{
  v4 = a3;
  v5 = [v4 conversationID];
  v6 = *MEMORY[0x1E699A728];
  if (v5 == *MEMORY[0x1E699A728])
  {
    v7 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [EDThreadPersistence _databaseIDForThreadObjectID:];
    }
  }

  else
  {
    v8 = [(EDThreadPersistence *)self threadScopeManager];
    v9 = [v4 threadScope];
    v10 = [v8 databaseIDForThreadScope:v9];

    if (v10 == v6)
    {
      v11 = +[EDThreadPersistence log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [EDThreadPersistence _databaseIDForThreadObjectID:];
      }

      v5 = v6;
    }

    else
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = v6;
      v12 = [(EDThreadPersistence *)self database];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence _databaseIDForThreadObjectID:]"];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __52__EDThreadPersistence__databaseIDForThreadObjectID___block_invoke;
      v15[3] = &unk_1E8258308;
      v15[6] = v10;
      v15[7] = v5;
      v15[4] = self;
      v15[5] = &v16;
      [v12 __performReadWithCaller:v13 usingBlock:v15];

      v5 = v17[3];
      _Block_object_dispose(&v16, 8);
    }
  }

  return v5;
}

uint64_t __52__EDThreadPersistence__databaseIDForThreadObjectID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _threadDatabaseIDExpressionForThreadScopeDatabaseID:*(a1 + 48) conversation:*(a1 + 56)];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__EDThreadPersistence__databaseIDForThreadObjectID___block_invoke_2;
  v7[3] = &unk_1E8250418;
  v7[4] = *(a1 + 40);
  v5 = [v3 executeSelectStatement:v4 withBlock:v7 error:0];

  return v5;
}

void __52__EDThreadPersistence__databaseIDForThreadObjectID___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v6 = [v7 objectAtIndexedSubscript:0];
  *(*(*(a1 + 32) + 8) + 24) = [v6 databaseIDValue];

  *a4 = 1;
}

- (id)sortKeysForSortDescriptors:(id)a3
{
  v3 = [a3 ef_map:&__block_literal_global_374];

  return v3;
}

__CFString *__50__EDThreadPersistence_sortKeysForSortDescriptors___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 key];
  v4 = [v3 isEqualToString:*MEMORY[0x1E699A880]];

  if (v4)
  {
    v5 = [v2 ascending];
    v6 = @"DateDescending";
    v7 = @"DateAscending";
  }

  else
  {
    v8 = [v2 key];
    v9 = [v8 isEqualToString:*MEMORY[0x1E699A888]];

    if (!v9)
    {
      v10 = @"Invalid";
      goto LABEL_9;
    }

    v5 = [v2 ascending];
    v6 = @"DisplayDateDescending";
    v7 = @"DisplayDateAscending";
  }

  if (v5)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

LABEL_9:

  return v10;
}

- (BOOL)sortKeysAreSupportedForPrecomputedThreads:(id)a3
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
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if (([v7 isEqualToString:{@"DateAscending", v11}] & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"DateDescending") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"DisplayDateAscending") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"DisplayDateDescending") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"UrgentDescending") & 1) == 0)
        {
          v8 = 0;
          goto LABEL_15;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_15:

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)_addOrderByToThreadSelect:(id)a3 forSortKeys:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if ([v10 isEqualToString:{@"DateAscending", v15}])
        {
          v11 = 1;
LABEL_10:
          v12 = @"date";
          goto LABEL_11;
        }

        if ([v10 isEqualToString:@"DateDescending"])
        {
          v11 = 0;
          goto LABEL_10;
        }

        if ([v10 isEqualToString:@"DisplayDateAscending"])
        {
          v11 = 1;
LABEL_18:
          v12 = @"display_date";
          goto LABEL_11;
        }

        if ([v10 isEqualToString:@"DisplayDateDescending"])
        {
          v11 = 0;
          goto LABEL_18;
        }

        if ([v10 isEqualToString:@"UrgentAscending"])
        {
          v11 = 1;
          goto LABEL_23;
        }

        if ([v10 isEqualToString:@"UrgentDescending"])
        {
          v11 = 0;
LABEL_23:
          v12 = @"is_urgent";
LABEL_11:
          [v5 orderByColumn:v12 fromTable:@"threads" ascending:v11];
        }

        ++v9;
      }

      while (v7 != v9);
      v13 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v7 = v13;
    }

    while (v13);
  }

  [v5 orderByColumn:@"conversation" fromTable:@"threads" ascending:1];
  v14 = *MEMORY[0x1E69E9840];
}

- (id)_comparisonExpressionForSortKeys:(id)a3 conversationID:(int64_t)a4 threadExpression:(id)a5 threadScopeDatabaseID:(int64_t)a6 connection:(id)a7
{
  v55 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v38 = a5;
  v39 = a7;
  v37 = v12;
  if (![(EDThreadPersistence *)self sortKeysAreSupportedForPrecomputedThreads:v12])
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"EDThreadPersistence.m" lineNumber:1618 description:{@"Cannot generate expression for unsupported sort keys: %@", v12}];
  }

  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __121__EDThreadPersistence__comparisonExpressionForSortKeys_conversationID_threadExpression_threadScopeDatabaseID_connection___block_invoke;
  v53[3] = &unk_1E8255B10;
  v53[4] = self;
  v36 = [v12 ef_map:v53];
  v13 = [objc_alloc(MEMORY[0x1E699B948]) initWithTable:@"threads"];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v14 = v36;
  v15 = [v14 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v15)
  {
    v16 = *v50;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v50 != v16)
        {
          objc_enumerationMutation(v14);
        }

        [v13 addResultColumn:*(*(&v49 + 1) + 8 * i)];
      }

      v15 = [v14 countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v15);
  }

  [v13 setWhere:v38];
  v18 = objc_opt_new();
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __121__EDThreadPersistence__comparisonExpressionForSortKeys_conversationID_threadExpression_threadScopeDatabaseID_connection___block_invoke_2;
  v46[3] = &unk_1E82511B8;
  v19 = v14;
  v47 = v19;
  v20 = v18;
  v48 = v20;
  [v39 executeSelectStatement:v13 withBlock:v46 error:0];
  v21 = objc_opt_new();
  v22 = objc_opt_new();
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __121__EDThreadPersistence__comparisonExpressionForSortKeys_conversationID_threadExpression_threadScopeDatabaseID_connection___block_invoke_3;
  v40[3] = &unk_1E8258350;
  v40[4] = self;
  v45 = a2;
  v23 = v19;
  v41 = v23;
  v24 = v20;
  v42 = v24;
  v25 = v22;
  v43 = v25;
  v26 = v21;
  v44 = v26;
  [v37 enumerateObjectsUsingBlock:v40];
  v27 = [MEMORY[0x1E699B8C8] table:@"threads" column:@"conversation"];
  v28 = [MEMORY[0x1E696AD98] numberWithLongLong:a4];
  v29 = [v27 greaterThan:v28];

  v30 = [v25 arrayByAddingObject:v29];
  v31 = [objc_alloc(MEMORY[0x1E699B898]) initWithExpressions:v30];
  [v26 addObject:v31];

  v32 = [objc_alloc(MEMORY[0x1E699B928]) initWithExpressions:v26];
  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

id __121__EDThreadPersistence__comparisonExpressionForSortKeys_conversationID_threadExpression_threadScopeDatabaseID_connection___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _columnForSortKey:a2 ascending:0];

  return v2;
}

void __121__EDThreadPersistence__comparisonExpressionForSortKeys_conversationID_threadExpression_threadScopeDatabaseID_connection___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  for (i = 0; i < [*(a1 + 32) count]; ++i)
  {
    v4 = *(a1 + 40);
    v5 = [v7 objectAtIndexedSubscript:i];
    v6 = [v5 objectValue];
    [v4 addObject:v6];
  }
}

void __121__EDThreadPersistence__comparisonExpressionForSortKeys_conversationID_threadExpression_threadScopeDatabaseID_connection___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = 0;
  v5 = [*(a1 + 32) _columnForSortKey:a2 ascending:&v18];
  v6 = v5;
  if (!v5 || [v5 isEqualToString:@"Invalid"])
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"EDThreadPersistence.m" lineNumber:1646 description:@"Invalid sort column"];
  }

  v7 = MEMORY[0x1E699B8C8];
  v8 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  v9 = [v7 table:@"threads" column:v8];

  if (v18)
  {
    v10 = 2;
  }

  else
  {
    v10 = 4;
  }

  v11 = [*(a1 + 48) objectAtIndexedSubscript:a3];
  v12 = [objc_alloc(MEMORY[0x1E699B8A8]) initWithLeft:v9 operator:v10 right:v11];
  if ([*(a1 + 56) count])
  {
    v13 = [*(a1 + 56) arrayByAddingObject:v12];
    v14 = [objc_alloc(MEMORY[0x1E699B898]) initWithExpressions:v13];

    v12 = v14;
  }

  [*(a1 + 64) addObject:v12];
  v15 = *(a1 + 56);
  v16 = [v9 equalTo:v11];
  [v15 addObject:v16];
}

- (id)_columnForSortKey:(id)a3 ascending:(BOOL *)a4
{
  v5 = a3;
  if (![v5 isEqualToString:@"DateAscending"])
  {
    if ([v5 isEqualToString:@"DateDescending"])
    {
      v6 = @"date";
      if (!a4)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if ([v5 isEqualToString:@"DisplayDateAscending"])
      {
        v6 = @"display_date";
        if (!a4)
        {
          goto LABEL_8;
        }

        goto LABEL_3;
      }

      if ([v5 isEqualToString:@"DisplayDateDescending"])
      {
        v6 = @"display_date";
        if (!a4)
        {
          goto LABEL_8;
        }
      }

      else
      {
        if ([v5 isEqualToString:@"UrgentAscending"])
        {
          v6 = @"is_urgent";
          if (!a4)
          {
            goto LABEL_8;
          }

          goto LABEL_3;
        }

        if (![v5 isEqualToString:@"UrgentDescending"])
        {
          v6 = 0;
          goto LABEL_8;
        }

        v6 = @"is_urgent";
        if (!a4)
        {
          goto LABEL_8;
        }
      }
    }

    v7 = 0;
    goto LABEL_7;
  }

  v6 = @"date";
  if (a4)
  {
LABEL_3:
    v7 = 1;
LABEL_7:
    *a4 = v7;
  }

LABEL_8:

  return v6;
}

- (void)_scheduleRecomputationForThread:(id)a3 reason:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Scheduling recomputation for %{public}@: %{public}@", &v12, 0x16u);
  }

  os_unfair_lock_lock(&self->_threadRecomputationLock);
  [(NSMutableSet *)self->_threadObjectIDsToRecompute addObject:v6];
  os_unfair_lock_unlock(&self->_threadRecomputationLock);
  v9 = [(EDThreadPersistence *)self threadRecomputationDebouncer];
  [v9 debounceResult:0];

  v10 = [@"Precomputed thread (recoverable) - " stringByAppendingString:v7];
  EFSaveTailspin();

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_recomputeThreads
{
  v13 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_threadRecomputationLock);
  v3 = [(NSMutableSet *)self->_threadObjectIDsToRecompute copy];
  [(NSMutableSet *)self->_threadObjectIDsToRecompute removeAllObjects];
  os_unfair_lock_unlock(&self->_threadRecomputationLock);
  v4 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v10 = [v3 count];
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Recomputing %lu threads: %{public}@", buf, 0x16u);
  }

  v5 = [v3 allObjects];
  v6 = [v5 ef_groupBy:&__block_literal_global_389_0];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__EDThreadPersistence__recomputeThreads__block_invoke_2;
  v8[3] = &unk_1E82583C0;
  v8[4] = self;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];

  v7 = *MEMORY[0x1E69E9840];
}

id __40__EDThreadPersistence__recomputeThreads__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 threadScope];

  return v2;
}

void __40__EDThreadPersistence__recomputeThreads__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__EDThreadPersistence__recomputeThreads__block_invoke_3;
  v7[3] = &unk_1E82579B0;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  [a3 ef_enumerateObjectsInBatchesOfSize:100 block:v7];
}

void __40__EDThreadPersistence__recomputeThreads__block_invoke_3(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) database];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence _recomputeThreads]_block_invoke_3"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40__EDThreadPersistence__recomputeThreads__block_invoke_4;
  v12[3] = &unk_1E8250440;
  v6 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v6;
  v7 = v3;
  v14 = v7;
  v8 = [v4 __performWriteWithCaller:v5 usingBlock:v12];

  if (v8)
  {
    v9 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v7 count];
      *buf = 134218242;
      v16 = v10;
      v17 = 2114;
      v18 = v7;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "Successfully recomputed %lu threads: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v9 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __40__EDThreadPersistence__recomputeThreads__block_invoke_3_cold_1(v7, buf, [v7 count]);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __40__EDThreadPersistence__recomputeThreads__block_invoke_4(uint64_t a1, void *a2)
{
  if ([a2 protectedDatabaseAttached])
  {
    v3 = [*(a1 + 32) _messageThreadExpressionForThreadScope:*(a1 + 40) objectIDs:*(a1 + 48)];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) mailboxScope];
    v6 = [v4 _persistedMessagesForMailboxScope:v5 messageExpression:v3];

    v7 = 1;
    if ([v6 count])
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v14 = 1;
      v8 = *(a1 + 32);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __40__EDThreadPersistence__recomputeThreads__block_invoke_5;
      v10[3] = &unk_1E8258398;
      v10[4] = &v11;
      [v8 _iterateWrappedMessagesByConversationForPersistedMessages:v6 messageFilter:0 writeBlock:v10];
      v7 = *(v12 + 24);
      _Block_object_dispose(&v11, 8);
    }
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

void __40__EDThreadPersistence__recomputeThreads__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) &= [v3 addThreadReplacingExisting:1 journaled:0];
}

- (id)_persistedMessagesForMailboxScope:(id)a3 messageExpression:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [(EDThreadPersistence *)self database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence _persistedMessagesForMailboxScope:messageExpression:]"];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__EDThreadPersistence__persistedMessagesForMailboxScope_messageExpression___block_invoke;
  v18[3] = &unk_1E8250328;
  v9 = v5;
  v19 = v9;
  v10 = v6;
  v20 = v10;
  [v7 __performReadWithCaller:v8 usingBlock:v18];

  if ([v10 count])
  {
    v11 = [(EDThreadPersistence *)self messagePersistence];
    v17 = 0;
    v12 = [v11 persistedMessagesForDatabaseIDs:v10 requireProtectedData:1 temporarilyUnavailableDatabaseIDs:&v17];
    v13 = v17;

    v14 = [v13 count];
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = v12;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __75__EDThreadPersistence__persistedMessagesForMailboxScope_messageExpression___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E699B948]);
  v5 = +[EDMessagePersistence messagesTableName];
  v6 = [v4 initWithResultColumn:*MEMORY[0x1E699B768] table:v5];

  [v6 setWhere:*(a1 + 32)];
  v7 = +[EDMessagePersistence messagesDateReceivedColumnName];
  [v6 orderByColumn:v7 ascending:0];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__EDThreadPersistence__persistedMessagesForMailboxScope_messageExpression___block_invoke_2;
  v10[3] = &unk_1E8250300;
  v11 = *(a1 + 40);
  v8 = [v3 executeSelectStatement:v6 withBlock:v10 error:0];

  return v8;
}

void __75__EDThreadPersistence__persistedMessagesForMailboxScope_messageExpression___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 objectAtIndexedSubscript:0];
  v3 = [v4 numberValue];
  [v2 addObject:v3];
}

- (void)persistenceIsInitializingDatabaseWithConnection:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF00] date];
  if ([(EDThreadPersistence *)self _addThreadScopeToDatabaseWithMailboxType:&unk_1F45E6C28 filterPredicate:7 needsUpdate:0 lastViewedDate:v5 connection:v4])
  {
    v6 = [MEMORY[0x1E699AD28] mailboxScopeForMailboxTypes:&unk_1F45E7060 forExclusion:0];
    v7 = [objc_alloc(MEMORY[0x1E699AF08]) initWithMailboxScope:v6 filterPredicate:0];
    v8 = [(EDThreadPersistence *)self threadScopeManager];
    [v8 addThreadScope:v7 withDatabaseID:objc_msgSend(v4 needsUpdate:"lastInsertedDatabaseID") lastViewedDate:{0, v5}];
  }

  else
  {
    v6 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [EDThreadPersistence persistenceIsInitializingDatabaseWithConnection:];
    }
  }
}

- (void)setNeedsUpdateForThreadScope:(id)a3
{
  v5 = a3;
  v4 = [(EDThreadPersistence *)self threadScopeManager];
  [v4 setNeedsUpdate:1 forThreadScope:v5];
}

- (id)resetThreadScopesForAccount:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = 0;
  [(EDThreadPersistence *)self _getIndividualMailboxScopes:&v19 unifiedMailboxThreadScopes:&v18 forAccount:a3];
  v4 = v19;
  v5 = v18;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [(EDThreadPersistence *)self resetThreadScopesForMailboxScope:*(*(&v14 + 1) + 8 * i)];
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__EDThreadPersistence_resetThreadScopesForAccount___block_invoke;
  v13[3] = &unk_1E82583E8;
  v13[4] = self;
  [v5 enumerateKeysAndObjectsUsingBlock:v13];
  v10 = [v5 allKeys];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)_getIndividualMailboxScopes:(id *)a3 unifiedMailboxThreadScopes:(id *)a4 forAccount:(id)a5
{
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  *a3 = v10;
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12 = v11;
  *a4 = v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __89__EDThreadPersistence__getIndividualMailboxScopes_unifiedMailboxThreadScopes_forAccount___block_invoke;
  v16[3] = &unk_1E8258410;
  v20 = a2;
  v16[4] = self;
  v17 = v12;
  v13 = v9;
  v18 = v13;
  v14 = v10;
  v19 = v14;
  v15 = v11;
  [(EDThreadPersistence *)self _enumerateThreadScopesUsingBlock:v16];
}

void __89__EDThreadPersistence__getIndividualMailboxScopes_unifiedMailboxThreadScopes_forAccount___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, int a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (v11)
  {
    v12 = [MEMORY[0x1E699AD28] allMailboxesScope];

    if (v12 != v11)
    {
      v13 = [v11 mailboxTypes];
      v14 = [v13 count];

      if (v14)
      {
        v15 = [v11 mailboxObjectIDs];

        if (v15)
        {
          v24 = [MEMORY[0x1E696AAA8] currentHandler];
          [v24 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"EDThreadPersistence.m" lineNumber:1824 description:@"Mailbox scope should not have both types and objects"];

          if (a5)
          {
LABEL_6:
            v16 = [v11 mailboxTypes];
            v17 = [v16 count];

            if (v17 != 2)
            {
              v18 = [MEMORY[0x1E696AAA8] currentHandler];
              [v18 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"EDThreadPersistence.m" lineNumber:1826 description:@"Mailbox scope should have exactly two types"];
LABEL_25:

              goto LABEL_17;
            }

            goto LABEL_17;
          }
        }

        else if (a5)
        {
          goto LABEL_6;
        }

        v25 = [v11 mailboxTypes];
        v26 = [v25 count];

        if (v26 != 1)
        {
          v18 = [MEMORY[0x1E696AAA8] currentHandler];
          [v18 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"EDThreadPersistence.m" lineNumber:1828 description:@"Mailbox scope should have exactly one type"];
          goto LABEL_25;
        }

LABEL_17:
        [*(a1 + 40) setObject:v9 forKeyedSubscript:v10];
        goto LABEL_23;
      }

      v20 = [v11 mailboxTypes];

      if (v20)
      {
        v27 = [MEMORY[0x1E696AAA8] currentHandler];
        [v27 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"EDThreadPersistence.m" lineNumber:1832 description:@"Mailbox scope should not have both types and objects"];

        if (a5)
        {
LABEL_13:
          v21 = [v11 mailboxObjectIDs];
          v22 = [v21 count];

          if (v22 != 2)
          {
            v23 = [MEMORY[0x1E696AAA8] currentHandler];
            [v23 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"EDThreadPersistence.m" lineNumber:1834 description:@"Mailbox scope should have exactly two mailboxes"];
LABEL_27:

            goto LABEL_20;
          }

          goto LABEL_20;
        }
      }

      else if (a5)
      {
        goto LABEL_13;
      }

      v28 = [v11 mailboxObjectIDs];
      v29 = [v28 count];

      if (v29 != 1)
      {
        v23 = [MEMORY[0x1E696AAA8] currentHandler];
        [v23 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"EDThreadPersistence.m" lineNumber:1836 description:@"Mailbox scope should have exactly two mailbox"];
        goto LABEL_27;
      }

LABEL_20:
      v30 = [v11 mailboxObjectIDs];
      v31 = [v30 anyObject];

      v32 = [v31 url];
      if ([*(a1 + 48) containsMailboxWithURL:v32])
      {
        [*(a1 + 56) addObject:v11];
      }

      goto LABEL_23;
    }
  }

  v19 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    __89__EDThreadPersistence__getIndividualMailboxScopes_unifiedMailboxThreadScopes_forAccount___block_invoke_cold_1();
  }

LABEL_23:
}

- (void)persistenceIsAddingMailboxWithDatabaseID:(int64_t)a3 objectID:(id)a4 generationWindow:(id)a5
{
  v7 = a4;
  if (([v7 isEphemeral] & 1) == 0)
  {
    v8 = [(EDThreadPersistence *)self messagePersistence];
    v9 = [v8 mailboxPersistence];
    v10 = [v7 url];
    v11 = [v9 legacyMailboxForMailboxURL:v10];

    if ([v11 type] == 7)
    {
      v12 = [(EDThreadPersistence *)self database];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence persistenceIsAddingMailboxWithDatabaseID:objectID:generationWindow:]"];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __90__EDThreadPersistence_persistenceIsAddingMailboxWithDatabaseID_objectID_generationWindow___block_invoke;
      v14[3] = &unk_1E82502B0;
      v15 = v7;
      v16 = self;
      v17 = a3;
      [v12 __performWriteWithCaller:v13 usingBlock:v14];
    }
  }
}

uint64_t __90__EDThreadPersistence_persistenceIsAddingMailboxWithDatabaseID_objectID_generationWindow___block_invoke(void *a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E699AD28];
  v14[0] = a1[4];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v6 = [v4 mailboxScopeForMailboxObjectIDs:v5 forExclusion:0];

  v7 = [objc_alloc(MEMORY[0x1E699AF08]) initWithMailboxScope:v6 filterPredicate:0];
  v9 = a1[5];
  v8 = a1[6];
  v10 = [MEMORY[0x1E695DF00] date];
  v11 = [v9 _addThreadScopeToDatabase:v7 withMailboxDatabaseID:v8 filterPredicate:7 needsUpdate:0 lastViewedDate:v10 updateThreadScopeManager:1 connection:v3];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)_addPersistedMessages:(id)a3 journaled:(BOOL)a4 generationWindow:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(EDThreadPersistence *)self _filteredPersistedMessagesForPersistedMessages:v8];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__EDThreadPersistence__addPersistedMessages_journaled_generationWindow___block_invoke;
  v12[3] = &unk_1E8258438;
  v12[4] = self;
  v14 = a4;
  v11 = v9;
  v13 = v11;
  [(EDThreadPersistence *)self _iterateWrappedMessagesByConversationForPersistedMessages:v10 messageFilter:0 writeBlock:v12];
}

- (void)persistenceDidAddMessages:(id)a3 generationWindow:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 67109120;
    v12 = [MEMORY[0x1E699B858] bucketMessageCount:{objc_msgSend(v5, "count")}];
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Persistence did add %u messages", &v11, 8u);
  }

  v7 = EFFetchSignpostLog();
  if (os_signpost_enabled(v7))
  {
    v8 = [MEMORY[0x1E699B858] bucketMessageCount:{objc_msgSend(v5, "count")}];
    v11 = 67109120;
    v12 = v8;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ThreadPersistenceDidAddMessages", "count=%u ", &v11, 8u);
  }

  v9 = [(EDThreadPersistence *)self hookRegistry];
  [v9 persistenceDidFinishThreadUpdates];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)persistenceIsChangingFlags:(id)a3 messages:(id)a4 generationWindow:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 deletedChanged])
  {
    if ([v8 deleted])
    {
      v11 = +[EDThreadPersistence log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 134218242;
        v16 = [v9 count];
        v17 = 2114;
        v18 = v8;
        _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "Persistence is setting deleted flag for %lu messages: %{public}@", &v15, 0x16u);
      }

      [(EDThreadPersistence *)self _persistenceIsDeletingMessages:v9 generationWindow:v10];
    }

    else
    {
      v13 = +[EDThreadPersistence log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 134218242;
        v16 = [v9 count];
        v17 = 2114;
        v18 = v8;
        _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Persistence is unsetting deleted flag for %lu messages: %{public}@", &v15, 0x16u);
      }

      [(EDThreadPersistence *)self _addPersistedMessages:v9 journaled:0 generationWindow:v10];
    }
  }

  else
  {
    v12 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134218242;
      v16 = [v9 count];
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "Persistence is changing flags for %lu messages: %{public}@", &v15, 0x16u);
    }

    [(EDThreadPersistence *)self _persistenceIsChangingFlags:v8 messages:v9 generationWindow:v10];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_persistenceIsChangingFlags:(id)a3 messages:(id)a4 generationWindow:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(EDThreadPersistence *)self _filteredPersistedMessagesForPersistedMessages:v9];

  v12 = [(EDThreadPersistence *)self hookRegistry];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77__EDThreadPersistence__persistenceIsChangingFlags_messages_generationWindow___block_invoke;
  v16[3] = &unk_1E8258460;
  v16[4] = self;
  v13 = v8;
  v17 = v13;
  v18 = v12;
  v14 = v10;
  v19 = v14;
  v15 = v12;
  [(EDThreadPersistence *)self _iterateWrappedMessagesByConversationForPersistedMessages:v11 block:v16];
}

void __77__EDThreadPersistence__persistenceIsChangingFlags_messages_generationWindow___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) _persistenceIsChangingFlags:*(a1 + 40) wrappedMessages:v8 threadObjectID:v7 threadScopeDatabaseID:a2];
  if ([v9 count])
  {
    v10 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 40) ef_publicDescription];
      v13 = 138543874;
      v14 = v7;
      v15 = 2114;
      v16 = v9;
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Changing thread (flag change): %{public}@\nkey paths: %{public}@\n updated flags: %{public}@", &v13, 0x20u);
    }

    [*(a1 + 48) persistenceIsChangingThreadWithObjectID:v7 changedKeyPaths:v9 generationWindow:*(a1 + 56)];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)persistenceDidChangeFlags:(id)a3 messages:(id)a4 generationWindow:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 count];
    v11 = [v7 ef_publicDescription];
    v14 = 134218242;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "Persistence did change flags for %lu messages: %{public}@", &v14, 0x16u);
  }

  v12 = [(EDThreadPersistence *)self hookRegistry];
  [v12 persistenceDidFinishThreadUpdates];

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_persistenceIsChangingFlags:(id)a3 wrappedMessages:(id)a4 threadObjectID:(id)a5 threadScopeDatabaseID:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = -[EDThreadPersistence _threadExpressionForThreadScopeDatabaseID:conversation:](self, "_threadExpressionForThreadScopeDatabaseID:conversation:", a6, [v12 conversationID]);
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = [(EDThreadPersistence *)self database];
  v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence _persistenceIsChangingFlags:wrappedMessages:threadObjectID:threadScopeDatabaseID:]"];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __104__EDThreadPersistence__persistenceIsChangingFlags_wrappedMessages_threadObjectID_threadScopeDatabaseID___block_invoke;
  v26[3] = &unk_1E8258488;
  v26[4] = self;
  v15 = v12;
  v27 = v15;
  v16 = v10;
  v28 = v16;
  v23 = v12;
  v17 = v13;
  v29 = v17;
  v18 = v14;
  v30 = v18;
  v19 = v11;
  v31 = v19;
  v32 = a6;
  [v24 __performWriteWithCaller:v25 usingBlock:{v26, v23}];

  v20 = v31;
  v21 = v18;

  return v18;
}

uint64_t __104__EDThreadPersistence__persistenceIsChangingFlags_wrappedMessages_threadObjectID_threadScopeDatabaseID___block_invoke(uint64_t a1, void *a2)
{
  v202[2] = *MEMORY[0x1E69E9840];
  v182 = a2;
  v3 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"threads"];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v184 = [*(a1 + 32) _messageThreadExpressionForThreadObjectID:*(a1 + 40)];
  if ([*(a1 + 48) readChanged])
  {
    v5 = [MEMORY[0x1E699B8C8] column:@"read"];
    if ([*(a1 + 48) read])
    {
      v6 = objc_alloc(MEMORY[0x1E699B948]);
      v7 = +[EDMessagePersistence messagesTableName];
      v8 = [v6 initWithResult:&unk_1F45E6BF8 table:v7];

      v9 = objc_alloc(MEMORY[0x1E699B898]);
      v202[0] = v184;
      v10 = [MEMORY[0x1E699B8C8] column:@"read"];
      v11 = [v10 equalTo:&unk_1F45E6BF8];
      v202[1] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v202 count:2];
      v13 = [v9 initWithExpressions:v12];
      [v8 setWhere:v13];

      [v8 setLimit:1];
      v14 = [MEMORY[0x1E699B8F8] ifNull:v8 second:&unk_1F45E6C10];
      [v3 setObject:v14 forKeyedSubscript:@"read"];

      v15 = [v5 equalTo:&unk_1F45E6BF8];
      [v4 addObject:v15];
    }

    else
    {
      [v3 setObject:&unk_1F45E6BF8 forKeyedSubscript:@"read"];
      v16 = [v5 notEqualTo:&unk_1F45E6BF8];
      [v4 addObject:v16];
    }
  }

  if ([*(a1 + 48) flaggedChanged])
  {
    v17 = [MEMORY[0x1E699B8C8] column:@"flagged"];
    if ([*(a1 + 48) flagged])
    {
      [v3 setObject:&unk_1F45E6C10 forKeyedSubscript:@"flagged"];
      v18 = [v17 equalTo:&unk_1F45E6BF8];
      [v4 addObject:v18];
    }

    else
    {
      v19 = objc_alloc(MEMORY[0x1E699B948]);
      v20 = +[EDMessagePersistence messagesTableName];
      v18 = [v19 initWithResult:&unk_1F45E6C10 table:v20];

      v21 = objc_alloc(MEMORY[0x1E699B898]);
      v201[0] = v184;
      v22 = [MEMORY[0x1E699B8C8] column:@"flagged"];
      v23 = [v22 equalTo:&unk_1F45E6C10];
      v201[1] = v23;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v201 count:2];
      v25 = [v21 initWithExpressions:v24];
      [v18 setWhere:v25];

      [v18 setLimit:1];
      v26 = [MEMORY[0x1E699B8F8] ifNull:v18 second:&unk_1F45E6BF8];
      [v3 setObject:v26 forKeyedSubscript:@"flagged"];

      v27 = [v17 notEqualTo:&unk_1F45E6BF8];
      [v4 addObject:v27];
    }
  }

  v28 = [MEMORY[0x1E699B8C8] column:@"flags"];
  if ([*(a1 + 48) draftChanged])
  {
    v29 = [MEMORY[0x1E699B8C8] column:@"draft"];
    if ([*(a1 + 48) draft])
    {
      [v3 setObject:&unk_1F45E6C10 forKeyedSubscript:@"draft"];
      v30 = [v29 equalTo:&unk_1F45E6BF8];
      [v4 addObject:v30];
    }

    else
    {
      v31 = objc_alloc(MEMORY[0x1E699B948]);
      v32 = +[EDMessagePersistence messagesTableName];
      v30 = [v31 initWithResult:&unk_1F45E6C10 table:v32];

      v33 = objc_alloc(MEMORY[0x1E699B898]);
      v200[0] = v184;
      v34 = [v28 matchesMask:&unk_1F45E6C40];
      v200[1] = v34;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v200 count:2];
      v36 = [v33 initWithExpressions:v35];
      [v30 setWhere:v36];

      [v30 setLimit:1];
      v37 = [MEMORY[0x1E699B8F8] ifNull:v30 second:&unk_1F45E6BF8];
      [v3 setObject:v37 forKeyedSubscript:@"draft"];

      v38 = [v29 notEqualTo:&unk_1F45E6BF8];
      [v4 addObject:v38];
    }
  }

  if ([*(a1 + 48) repliedChanged])
  {
    v39 = [MEMORY[0x1E699B8C8] column:@"replied"];
    if ([*(a1 + 48) replied])
    {
      [v3 setObject:&unk_1F45E6C10 forKeyedSubscript:@"replied"];
      v40 = [v39 equalTo:&unk_1F45E6BF8];
      [v4 addObject:v40];
    }

    else
    {
      v41 = objc_alloc(MEMORY[0x1E699B948]);
      v42 = +[EDMessagePersistence messagesTableName];
      v40 = [v41 initWithResult:&unk_1F45E6C10 table:v42];

      v43 = objc_alloc(MEMORY[0x1E699B898]);
      v199[0] = v184;
      v44 = [v28 matchesMask:&unk_1F45E6C58];
      v199[1] = v44;
      v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v199 count:2];
      v46 = [v43 initWithExpressions:v45];
      [v40 setWhere:v46];

      [v40 setLimit:1];
      v47 = [MEMORY[0x1E699B8F8] ifNull:v40 second:&unk_1F45E6BF8];
      [v3 setObject:v47 forKeyedSubscript:@"replied"];

      v48 = [v39 notEqualTo:&unk_1F45E6BF8];
      [v4 addObject:v48];
    }
  }

  if ([*(a1 + 48) forwardedChanged])
  {
    v49 = [MEMORY[0x1E699B8C8] column:@"forwarded"];
    if ([*(a1 + 48) forwarded])
    {
      [v3 setObject:&unk_1F45E6C10 forKeyedSubscript:@"forwarded"];
      v50 = [v49 equalTo:&unk_1F45E6BF8];
      [v4 addObject:v50];
    }

    else
    {
      v51 = objc_alloc(MEMORY[0x1E699B948]);
      v52 = +[EDMessagePersistence messagesTableName];
      v50 = [v51 initWithResult:&unk_1F45E6C10 table:v52];

      v53 = objc_alloc(MEMORY[0x1E699B898]);
      v198[0] = v184;
      v54 = [v28 matchesMask:&unk_1F45E6C70];
      v198[1] = v54;
      v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v198 count:2];
      v56 = [v53 initWithExpressions:v55];
      [v50 setWhere:v56];

      [v50 setLimit:1];
      v57 = [MEMORY[0x1E699B8F8] ifNull:v50 second:&unk_1F45E6BF8];
      [v3 setObject:v57 forKeyedSubscript:@"forwarded"];

      v58 = [v49 notEqualTo:&unk_1F45E6BF8];
      [v4 addObject:v58];
    }
  }

  if ([*(a1 + 48) redirectedChanged])
  {
    v59 = [MEMORY[0x1E699B8C8] column:@"redirected"];
    if ([*(a1 + 48) redirected])
    {
      [v3 setObject:&unk_1F45E6C10 forKeyedSubscript:@"redirected"];
      v60 = [v59 equalTo:&unk_1F45E6BF8];
      [v4 addObject:v60];
    }

    else
    {
      v61 = objc_alloc(MEMORY[0x1E699B948]);
      v62 = +[EDMessagePersistence messagesTableName];
      v60 = [v61 initWithResult:&unk_1F45E6C10 table:v62];

      v63 = objc_alloc(MEMORY[0x1E699B898]);
      v197[0] = v184;
      v64 = [v28 matchesMask:&unk_1F45E6C88];
      v197[1] = v64;
      v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v197 count:2];
      v66 = [v63 initWithExpressions:v65];
      [v60 setWhere:v66];

      [v60 setLimit:1];
      v67 = [MEMORY[0x1E699B8F8] ifNull:v60 second:&unk_1F45E6BF8];
      [v3 setObject:v67 forKeyedSubscript:@"redirected"];

      v68 = [v59 notEqualTo:&unk_1F45E6BF8];
      [v4 addObject:v68];
    }
  }

  if ([*(a1 + 48) flagColorChanged])
  {
    v69 = [MEMORY[0x1E699B8C8] column:@"has_red_flag"];
    if ([*(a1 + 48) flaggedChanged] && !objc_msgSend(*(a1 + 48), "flagged") || objc_msgSend(*(a1 + 48), "flagColor"))
    {
      v70 = objc_alloc(MEMORY[0x1E699B948]);
      v71 = +[EDMessagePersistence messagesTableName];
      v72 = [v70 initWithResult:&unk_1F45E6C10 table:v71];

      v73 = [MEMORY[0x1E699B8C8] column:@"flag_color"];
      v74 = [v73 equalTo:&unk_1F45E6CA0];

      v75 = objc_alloc(MEMORY[0x1E699B898]);
      v196[0] = v184;
      v196[1] = v74;
      v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:v196 count:2];
      v77 = [v75 initWithExpressions:v76];
      [v72 setWhere:v77];

      [v72 setLimit:1];
      v78 = [MEMORY[0x1E699B8F8] ifNull:v72 second:&unk_1F45E6BF8];
      [v3 setObject:v78 forKeyedSubscript:@"has_red_flag"];

      v79 = [v69 notEqualTo:&unk_1F45E6BF8];
      [v4 addObject:v79];
    }

    else
    {
      [v3 setObject:&unk_1F45E6C10 forKeyedSubscript:@"has_red_flag"];
      v72 = [v69 equalTo:&unk_1F45E6BF8];
      [v4 addObject:v72];
    }

    v80 = [MEMORY[0x1E699B8C8] column:@"has_orange_flag"];
    if ((![*(a1 + 48) flaggedChanged] || objc_msgSend(*(a1 + 48), "flagged")) && objc_msgSend(*(a1 + 48), "flagColor") == 1)
    {
      [v3 setObject:&unk_1F45E6C10 forKeyedSubscript:@"has_orange_flag"];
      v81 = [v80 equalTo:&unk_1F45E6BF8];
      [v4 addObject:v81];
    }

    else
    {
      v82 = objc_alloc(MEMORY[0x1E699B948]);
      v83 = +[EDMessagePersistence messagesTableName];
      v81 = [v82 initWithResult:&unk_1F45E6C10 table:v83];

      v84 = [MEMORY[0x1E699B8C8] column:@"flag_color"];
      v85 = [v84 equalTo:&unk_1F45E6CB8];

      v86 = objc_alloc(MEMORY[0x1E699B898]);
      v195[0] = v184;
      v195[1] = v85;
      v87 = [MEMORY[0x1E695DEC8] arrayWithObjects:v195 count:2];
      v88 = [v86 initWithExpressions:v87];
      [v81 setWhere:v88];

      [v81 setLimit:1];
      v89 = [MEMORY[0x1E699B8F8] ifNull:v81 second:&unk_1F45E6BF8];
      [v3 setObject:v89 forKeyedSubscript:@"has_orange_flag"];

      v90 = [v80 notEqualTo:&unk_1F45E6BF8];
      [v4 addObject:v90];
    }

    v91 = [MEMORY[0x1E699B8C8] column:@"has_yellow_flag"];
    if ((![*(a1 + 48) flaggedChanged] || objc_msgSend(*(a1 + 48), "flagged")) && objc_msgSend(*(a1 + 48), "flagColor") == 2)
    {
      [v3 setObject:&unk_1F45E6C10 forKeyedSubscript:@"has_yellow_flag"];
      v92 = [v91 equalTo:&unk_1F45E6BF8];
      [v4 addObject:v92];
    }

    else
    {
      v93 = objc_alloc(MEMORY[0x1E699B948]);
      v94 = +[EDMessagePersistence messagesTableName];
      v92 = [v93 initWithResult:&unk_1F45E6C10 table:v94];

      v95 = [MEMORY[0x1E699B8C8] column:@"flag_color"];
      v96 = [v95 equalTo:&unk_1F45E6CD0];

      v97 = objc_alloc(MEMORY[0x1E699B898]);
      v194[0] = v184;
      v194[1] = v96;
      v98 = [MEMORY[0x1E695DEC8] arrayWithObjects:v194 count:2];
      v99 = [v97 initWithExpressions:v98];
      [v92 setWhere:v99];

      [v92 setLimit:1];
      v100 = [MEMORY[0x1E699B8F8] ifNull:v92 second:&unk_1F45E6BF8];
      [v3 setObject:v100 forKeyedSubscript:@"has_yellow_flag"];

      v101 = [v91 notEqualTo:&unk_1F45E6BF8];
      [v4 addObject:v101];
    }

    v102 = [MEMORY[0x1E699B8C8] column:@"has_green_flag"];
    if ((![*(a1 + 48) flaggedChanged] || objc_msgSend(*(a1 + 48), "flagged")) && objc_msgSend(*(a1 + 48), "flagColor") == 3)
    {
      [v3 setObject:&unk_1F45E6C10 forKeyedSubscript:@"has_green_flag"];
      v103 = [v102 equalTo:&unk_1F45E6BF8];
      [v4 addObject:v103];
    }

    else
    {
      v104 = objc_alloc(MEMORY[0x1E699B948]);
      v105 = +[EDMessagePersistence messagesTableName];
      v103 = [v104 initWithResult:&unk_1F45E6C10 table:v105];

      v106 = [MEMORY[0x1E699B8C8] column:@"flag_color"];
      v107 = [v106 equalTo:&unk_1F45E6CE8];

      v108 = objc_alloc(MEMORY[0x1E699B898]);
      v193[0] = v184;
      v193[1] = v107;
      v109 = [MEMORY[0x1E695DEC8] arrayWithObjects:v193 count:2];
      v110 = [v108 initWithExpressions:v109];
      [v103 setWhere:v110];

      [v103 setLimit:1];
      v111 = [MEMORY[0x1E699B8F8] ifNull:v103 second:&unk_1F45E6BF8];
      [v3 setObject:v111 forKeyedSubscript:@"has_green_flag"];

      v112 = [v102 notEqualTo:&unk_1F45E6BF8];
      [v4 addObject:v112];
    }

    v113 = [MEMORY[0x1E699B8C8] column:@"has_blue_flag"];
    if ((![*(a1 + 48) flaggedChanged] || objc_msgSend(*(a1 + 48), "flagged")) && objc_msgSend(*(a1 + 48), "flagColor") == 4)
    {
      [v3 setObject:&unk_1F45E6C10 forKeyedSubscript:@"has_blue_flag"];
      v114 = [v113 equalTo:&unk_1F45E6BF8];
      [v4 addObject:v114];
    }

    else
    {
      v115 = objc_alloc(MEMORY[0x1E699B948]);
      v116 = +[EDMessagePersistence messagesTableName];
      v114 = [v115 initWithResult:&unk_1F45E6C10 table:v116];

      v117 = [MEMORY[0x1E699B8C8] column:@"flag_color"];
      v118 = [v117 equalTo:&unk_1F45E6D00];

      v119 = objc_alloc(MEMORY[0x1E699B898]);
      v192[0] = v184;
      v192[1] = v118;
      v120 = [MEMORY[0x1E695DEC8] arrayWithObjects:v192 count:2];
      v121 = [v119 initWithExpressions:v120];
      [v114 setWhere:v121];

      [v114 setLimit:1];
      v122 = [MEMORY[0x1E699B8F8] ifNull:v114 second:&unk_1F45E6BF8];
      [v3 setObject:v122 forKeyedSubscript:@"has_blue_flag"];

      v123 = [v113 notEqualTo:&unk_1F45E6BF8];
      [v4 addObject:v123];
    }

    v124 = [MEMORY[0x1E699B8C8] column:@"has_purple_flag"];
    if ((![*(a1 + 48) flaggedChanged] || objc_msgSend(*(a1 + 48), "flagged")) && objc_msgSend(*(a1 + 48), "flagColor") == 5)
    {
      [v3 setObject:&unk_1F45E6C10 forKeyedSubscript:@"has_purple_flag"];
      v125 = [v124 equalTo:&unk_1F45E6BF8];
      [v4 addObject:v125];
    }

    else
    {
      v126 = objc_alloc(MEMORY[0x1E699B948]);
      v127 = +[EDMessagePersistence messagesTableName];
      v125 = [v126 initWithResult:&unk_1F45E6C10 table:v127];

      v128 = [MEMORY[0x1E699B8C8] column:@"flag_color"];
      v129 = [v128 equalTo:&unk_1F45E6D18];

      v130 = objc_alloc(MEMORY[0x1E699B898]);
      v191[0] = v184;
      v191[1] = v129;
      v131 = [MEMORY[0x1E695DEC8] arrayWithObjects:v191 count:2];
      v132 = [v130 initWithExpressions:v131];
      [v125 setWhere:v132];

      [v125 setLimit:1];
      v133 = [MEMORY[0x1E699B8F8] ifNull:v125 second:&unk_1F45E6BF8];
      [v3 setObject:v133 forKeyedSubscript:@"has_purple_flag"];

      v134 = [v124 notEqualTo:&unk_1F45E6BF8];
      [v4 addObject:v134];
    }

    v135 = [MEMORY[0x1E699B8C8] column:@"has_gray_flag"];
    if ((![*(a1 + 48) flaggedChanged] || objc_msgSend(*(a1 + 48), "flagged")) && objc_msgSend(*(a1 + 48), "flagColor") == 6)
    {
      [v3 setObject:&unk_1F45E6C10 forKeyedSubscript:@"has_gray_flag"];
      v136 = [v135 equalTo:&unk_1F45E6BF8];
      [v4 addObject:v136];
    }

    else
    {
      v137 = objc_alloc(MEMORY[0x1E699B948]);
      v138 = +[EDMessagePersistence messagesTableName];
      v136 = [v137 initWithResult:&unk_1F45E6C10 table:v138];

      v139 = [MEMORY[0x1E699B8C8] column:@"flag_color"];
      v140 = [v139 equalTo:&unk_1F45E6D30];

      v141 = objc_alloc(MEMORY[0x1E699B898]);
      v190[0] = v184;
      v190[1] = v140;
      v142 = [MEMORY[0x1E695DEC8] arrayWithObjects:v190 count:2];
      v143 = [v141 initWithExpressions:v142];
      [v136 setWhere:v143];

      [v136 setLimit:1];
      v144 = [MEMORY[0x1E699B8F8] ifNull:v136 second:&unk_1F45E6BF8];
      [v3 setObject:v144 forKeyedSubscript:@"has_gray_flag"];

      v145 = [v135 notEqualTo:&unk_1F45E6BF8];
      [v4 addObject:v145];
    }
  }

  if ([*(a1 + 48) junkLevelChanged])
  {
    v146 = [MEMORY[0x1E699B8C8] column:@"junk_level"];
    if ([*(a1 + 48) junkLevel] == 1)
    {
      v147 = objc_alloc(MEMORY[0x1E699B948]);
      v148 = +[EDMessagePersistence messagesTableName];
      v149 = [v147 initWithResult:&unk_1F45E6CD0 table:v148];

      v150 = [v28 matchesMask:&unk_1F45E6D48];
      v151 = objc_alloc(MEMORY[0x1E699B898]);
      v189[0] = v184;
      v189[1] = v150;
      v152 = [MEMORY[0x1E695DEC8] arrayWithObjects:v189 count:2];
      v153 = [v151 initWithExpressions:v152];
      [v149 setWhere:v153];

      [v149 setLimit:1];
      v154 = [MEMORY[0x1E699B8F8] ifNull:v149 second:&unk_1F45E6CB8];
      [v3 setObject:v154 forKeyedSubscript:@"junk_level"];

      v155 = [v146 equalTo:&unk_1F45E6CD0];
      [v4 addObject:v155];
    }

    else
    {
      [v3 setObject:&unk_1F45E6CD0 forKeyedSubscript:@"junk_level"];
      v149 = [v146 notEqualTo:&unk_1F45E6CD0];
      [v4 addObject:v149];
    }
  }

  if ([*(a1 + 48) flaggedChanged])
  {
    v156 = [MEMORY[0x1E699B8C8] column:@"has_unflagged"];
    if ([*(a1 + 48) flagged])
    {
      v157 = objc_alloc(MEMORY[0x1E699B948]);
      v158 = +[EDMessagePersistence messagesTableName];
      v159 = [v157 initWithResult:&unk_1F45E6C10 table:v158];

      v160 = [MEMORY[0x1E699B8C8] column:@"flagged"];
      v161 = [v160 equalTo:&unk_1F45E6BF8];

      v162 = objc_alloc(MEMORY[0x1E699B898]);
      v188[0] = v184;
      v188[1] = v161;
      v163 = [MEMORY[0x1E695DEC8] arrayWithObjects:v188 count:2];
      v164 = [v162 initWithExpressions:v163];
      [v159 setWhere:v164];

      [v159 setLimit:1];
      v165 = [MEMORY[0x1E699B8F8] ifNull:v159 second:&unk_1F45E6BF8];
      [v3 setObject:v165 forKeyedSubscript:@"has_unflagged"];

      v166 = [v156 notEqualTo:&unk_1F45E6BF8];
      [v4 addObject:v166];
    }

    else
    {
      [v3 setObject:&unk_1F45E6C10 forKeyedSubscript:@"has_unflagged"];
      v159 = [v156 equalTo:&unk_1F45E6BF8];
      [v4 addObject:v159];
    }
  }

  if ([v4 count])
  {
    v167 = objc_alloc(MEMORY[0x1E699B898]);
    v187[0] = *(a1 + 56);
    v168 = [objc_alloc(MEMORY[0x1E699B928]) initWithExpressions:v4];
    v187[1] = v168;
    v169 = [MEMORY[0x1E695DEC8] arrayWithObjects:v187 count:2];
    v170 = [v167 initWithExpressions:v169];
    [v3 setWhereClause:v170];

    v185 = 0;
    v171 = [v183 executeUpdateStatement:v3 rowsChanged:&v185];
    if (v185)
    {
      v172 = *(a1 + 64);
      v173 = *MEMORY[0x1E699A898];
      v186[0] = *MEMORY[0x1E699A8A0];
      v186[1] = v173;
      v186[2] = *MEMORY[0x1E699A8E8];
      v174 = [MEMORY[0x1E695DEC8] arrayWithObjects:v186 count:3];
      [v172 addObjectsFromArray:v174];
    }
  }

  else
  {
    v171 = 1;
  }

  if ([*(a1 + 48) readChanged])
  {
    v175 = [*(a1 + 48) read];
    v176 = *(a1 + 32);
    if (v175)
    {
      v177 = [*(a1 + 72) firstObject];
      v178 = [v176 _updateNewestReadMessageWithWrappedMessage:v177 threadExpression:*(a1 + 56)];

      if (!v178)
      {
        v179 = 0;
LABEL_88:
        if ([v179 count])
        {
          [*(a1 + 64) ef_addAbsentObjectsFromArrayAccordingToEquals:v179];
        }

        goto LABEL_91;
      }
    }

    else
    {
      [*(a1 + 32) _recalculateNewestReadMessageForThreadObjectID:*(a1 + 40) threadScopeDatabaseID:*(a1 + 80)];
    }

    v179 = [*(a1 + 32) _recalculateDisplayMessageForThreadObjectID:*(a1 + 40) threadScopeDatabaseID:*(a1 + 80)];
    goto LABEL_88;
  }

LABEL_91:

  v180 = *MEMORY[0x1E69E9840];
  return v171;
}

- (void)persistenceIsUpdatingIsUrgentForMessage:(id)a3 generationWindow:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Persistence is updating isUrgent", buf, 2u);
  }

  v9 = [(EDThreadPersistence *)self hookRegistry];
  *buf = 0;
  v19 = buf;
  v20 = 0x2020000000;
  v21 = -86;
  v22[0] = v6;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__EDThreadPersistence_persistenceIsUpdatingIsUrgentForMessage_generationWindow___block_invoke;
  v14[3] = &unk_1E82584B0;
  v14[4] = self;
  v17 = buf;
  v11 = v9;
  v15 = v11;
  v12 = v7;
  v16 = v12;
  [(EDThreadPersistence *)self _iterateWrappedMessagesByConversationForPersistedMessages:v10 block:v14];

  _Block_object_dispose(buf, 8);
  v13 = *MEMORY[0x1E69E9840];
}

void __80__EDThreadPersistence_persistenceIsUpdatingIsUrgentForMessage_generationWindow___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) database];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence persistenceIsUpdatingIsUrgentForMessage:generationWindow:]_block_invoke"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__EDThreadPersistence_persistenceIsUpdatingIsUrgentForMessage_generationWindow___block_invoke_2;
  v10[3] = &unk_1E82549F0;
  v13 = a2;
  v8 = v5;
  v9 = *(a1 + 56);
  v11 = v8;
  v12 = v9;
  [v6 __performWriteWithCaller:v7 usingBlock:v10];

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    [*(a1 + 40) persistenceIsChangingThreadWithObjectID:v8 newIsUrgentValue:1 generationWindow:*(a1 + 48)];
  }
}

uint64_t __80__EDThreadPersistence_persistenceIsUpdatingIsUrgentForMessage_generationWindow___block_invoke_2(uint64_t a1, void *a2)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v18 = a2;
  v3 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"threads"];
  [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"is_urgent"];
  v4 = objc_alloc(MEMORY[0x1E699B898]);
  v17 = [MEMORY[0x1E699B8C8] column:@"is_urgent"];
  v16 = [v17 equalTo:MEMORY[0x1E695E110]];
  v20[0] = v16;
  v5 = [MEMORY[0x1E699B8C8] column:@"scope"];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 48)];
  v7 = [v5 equalTo:v6];
  v20[1] = v7;
  v8 = [MEMORY[0x1E699B8C8] column:@"conversation"];
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "conversationID")}];
  v10 = [v8 equalTo:v9];
  v20[2] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  v12 = [v4 initWithExpressions:v11];
  [v3 setWhereClause:v12];

  v19 = 0;
  v13 = [v18 executeUpdateStatement:v3 rowsChanged:&v19];
  *(*(*(a1 + 40) + 8) + 24) = [v18 rowsChanged] != 0;

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)persistenceIsDeletingMessages:(id)a3 generationWindow:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = [v6 count];
    _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Persistence is deleting %lu messages", &v11, 0xCu);
  }

  v9 = [(EDThreadPersistence *)self _filteredPersistedMessagesForPersistedMessages:v6];

  [(EDThreadPersistence *)self _persistenceIsDeletingMessages:v9 generationWindow:v7];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)_persistenceIsDeletingMessages:(id)a3 generationWindow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EDThreadPersistence *)self hookRegistry];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__EDThreadPersistence__persistenceIsDeletingMessages_generationWindow___block_invoke;
  v11[3] = &unk_1E82584D8;
  v11[4] = self;
  v9 = v7;
  v12 = v9;
  v13 = v8;
  v10 = v8;
  [(EDThreadPersistence *)self _iterateWrappedMessagesByConversationForPersistedMessages:v6 block:v11];
}

void __71__EDThreadPersistence__persistenceIsDeletingMessages_generationWindow___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) _deleteWrappedMessages:v8 fromThreadWithObjectID:v7 threadScopeDatabaseID:a2 generationWindow:*(a1 + 40)];
  if ([v9 count])
  {
    v10 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      v13 = v7;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Changing thread (deleted messages): %{public}@\nkey paths: %{public}@", &v12, 0x16u);
    }

    [*(a1 + 48) persistenceIsChangingThreadWithObjectID:v7 changedKeyPaths:v9 generationWindow:*(a1 + 40)];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)persistenceDidDeleteMessages:(id)a3 generationWindow:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = [v5 count];
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Persistence did delete %lu messages", &v9, 0xCu);
  }

  v7 = [(EDThreadPersistence *)self hookRegistry];
  [v7 persistenceDidFinishThreadUpdates];

  v8 = *MEMORY[0x1E69E9840];
}

- (id)_deleteWrappedMessages:(id)a3 fromThreadWithObjectID:(id)a4 threadScopeDatabaseID:(int64_t)a5 generationWindow:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(EDThreadPersistence *)self _updateThreadForDeleteWithObjectID:v11 threadScopeDatabaseID:a5 generationWindow:a6];
  if (v12)
  {
    v13 = [(EDThreadPersistence *)self _databaseIDForThreadObjectID:v11];
    v14 = v12;
    if (v13 != *MEMORY[0x1E699A728])
    {
      v15 = [MEMORY[0x1E696AD98] numberWithLongLong:v13];
      v16 = [(EDThreadPersistence *)self _messageThreadExpressionForThreadObjectID:v11];
      if ([(EDThreadPersistence *)self _deleteMailboxesFromWrappedMessages:v10 fromThreadWithDatabaseID:v15 messageThreadExpression:v16])
      {
        [v12 addObject:*MEMORY[0x1E699A930]];
      }

      v14 = v12;
    }
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  v17 = v14;

  return v14;
}

- (id)_updateThreadForDeleteWithObjectID:(id)a3 threadScopeDatabaseID:(int64_t)a4 generationWindow:(id)a5
{
  v8 = a3;
  v9 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__47;
  v30 = __Block_byref_object_dispose__47;
  v31 = 0;
  v10 = [v8 conversationID];
  v11 = [(EDThreadPersistence *)self _messageThreadExpressionForThreadObjectID:v8];
  v12 = [(EDThreadPersistence *)self database];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence _updateThreadForDeleteWithObjectID:threadScopeDatabaseID:generationWindow:]"];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __97__EDThreadPersistence__updateThreadForDeleteWithObjectID_threadScopeDatabaseID_generationWindow___block_invoke;
  v19[3] = &unk_1E8258500;
  v19[4] = self;
  v14 = v8;
  v20 = v14;
  v15 = v9;
  v21 = v15;
  v16 = v11;
  v22 = v16;
  v23 = &v26;
  v24 = a4;
  v25 = v10;
  [v12 __performWriteWithCaller:v13 usingBlock:v19];

  v17 = v27[5];
  _Block_object_dispose(&v26, 8);

  return v17;
}

uint64_t __97__EDThreadPersistence__updateThreadForDeleteWithObjectID_threadScopeDatabaseID_generationWindow___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _databaseIDForThreadObjectID:*(a1 + 40)];
  [*(a1 + 48) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  if (v4 == *MEMORY[0x1E699A728])
  {
    v5 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "No thread database ID: %{public}@", &buf, 0xCu);
    }

    v7 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:v4];
    v8 = objc_alloc(MEMORY[0x1E699B948]);
    v9 = +[EDMessagePersistence messagesTableName];
    v10 = [v8 initWithResult:&unk_1F45E6C10 table:v9];

    [v10 setWhere:*(a1 + 56)];
    [v10 setLimit:1];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v26 = 0x2020000000;
    v27 = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __97__EDThreadPersistence__updateThreadForDeleteWithObjectID_threadScopeDatabaseID_generationWindow___block_invoke_457;
    v22[3] = &unk_1E8250418;
    v22[4] = &buf;
    if ([v3 executeSelectStatement:v10 withBlock:v22 error:0])
    {
      v11 = *(a1 + 32);
      if (*(*(&buf + 1) + 24) == 1)
      {
        v12 = [v11 _updateBasicPropertiesAfterDeleteForThreadObjectID:*(a1 + 40) threadScopeDatabaseID:*(a1 + 72)];
        v13 = *(*(a1 + 64) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = v12;

        [*(a1 + 32) _recalculateNewestReadMessageForThreadObjectID:*(a1 + 40) threadScopeDatabaseID:*(a1 + 72)];
        v15 = [*(a1 + 32) _recalculateDisplayMessageForThreadObjectID:*(a1 + 40) threadScopeDatabaseID:*(a1 + 72)];
        if ([v15 count])
        {
          [*(*(*(a1 + 64) + 8) + 40) ef_addAbsentObjectsFromArrayAccordingToEquals:v15];
        }

        if ([*(a1 + 32) _recalculateNewestMessageForThreadObjectID:*(a1 + 40) threadScopeDatabaseID:*(a1 + 72)])
        {
          [*(*(*(a1 + 64) + 8) + 40) addObject:*MEMORY[0x1E699A8C0]];
        }

        if ([*(a1 + 32) _deleteSendersFromThreadWithDatabaseID:v5 messageThreadExpression:*(a1 + 56)])
        {
          [*(*(*(a1 + 64) + 8) + 40) addObject:*MEMORY[0x1E699A990]];
        }

        if ([*(a1 + 32) _deleteRecipientsOfType:1 fromThreadWithDatabaseID:v5 messageThreadExpression:*(a1 + 56)])
        {
          [*(*(*(a1 + 64) + 8) + 40) addObject:*MEMORY[0x1E699A9C0]];
        }

        if ([*(a1 + 32) _deleteRecipientsOfType:2 fromThreadWithDatabaseID:v5 messageThreadExpression:*(a1 + 56)])
        {
          [*(*(*(a1 + 64) + 8) + 40) addObject:*MEMORY[0x1E699A840]];
        }

        v7 = 1;
      }

      else
      {
        v15 = [v11 _threadExpressionForThreadScopeDatabaseID:*(a1 + 72) conversation:*(a1 + 80)];
        v16 = [objc_alloc(MEMORY[0x1E699B8E8]) initWithTable:@"threads" where:v15];
        v7 = [v3 executeDeleteStatement:v16 error:0];
        v17 = +[EDThreadPersistence log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(a1 + 40);
          *v23 = 138543362;
          v24 = v18;
          _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "Deleting thread: %{public}@", v23, 0xCu);
        }

        v19 = [*(a1 + 32) hookRegistry];
        [v19 persistenceIsDeletingThreadWithObjectID:*(a1 + 40) generationWindow:*(a1 + 48)];
      }
    }

    else
    {
      v7 = 0;
    }

    _Block_object_dispose(&buf, 8);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)_updateBasicPropertiesAfterDeleteForThreadObjectID:(id)a3 threadScopeDatabaseID:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 conversationID];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [(EDThreadPersistence *)self database];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence _updateBasicPropertiesAfterDeleteForThreadObjectID:threadScopeDatabaseID:]"];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __96__EDThreadPersistence__updateBasicPropertiesAfterDeleteForThreadObjectID_threadScopeDatabaseID___block_invoke;
  v16[3] = &unk_1E8258550;
  v16[4] = self;
  v11 = v6;
  v17 = v11;
  v19 = a4;
  v20 = v7;
  v12 = v8;
  v18 = v12;
  [v9 __performWriteWithCaller:v10 usingBlock:v16];

  v13 = v18;
  v14 = v12;

  return v12;
}

uint64_t __96__EDThreadPersistence__updateBasicPropertiesAfterDeleteForThreadObjectID_threadScopeDatabaseID___block_invoke(uint64_t a1, void *a2)
{
  v194[2] = *MEMORY[0x1E69E9840];
  v134 = a2;
  v3 = [*(a1 + 32) _messageThreadExpressionForThreadObjectID:*(a1 + 40)];
  v179 = 0;
  v180 = &v179;
  v181 = 0x3032000000;
  v182 = __Block_byref_object_copy__47;
  v183 = __Block_byref_object_dispose__47;
  v184 = 0;
  v173 = 0;
  v174 = &v173;
  v175 = 0x3032000000;
  v176 = __Block_byref_object_copy__47;
  v177 = __Block_byref_object_dispose__47;
  v178 = 0;
  v167 = 0;
  v168 = &v167;
  v169 = 0x3032000000;
  v170 = __Block_byref_object_copy__47;
  v171 = __Block_byref_object_dispose__47;
  v172 = 0;
  v161 = 0;
  v162 = &v161;
  v163 = 0x3032000000;
  v164 = __Block_byref_object_copy__47;
  v165 = __Block_byref_object_dispose__47;
  v166 = 0;
  v155 = 0;
  v156 = &v155;
  v157 = 0x3032000000;
  v158 = __Block_byref_object_copy__47;
  v159 = __Block_byref_object_dispose__47;
  v160 = 0;
  v149 = 0;
  v150 = &v149;
  v151 = 0x3032000000;
  v152 = __Block_byref_object_copy__47;
  v153 = __Block_byref_object_dispose__47;
  v154 = 0;
  v143 = 0;
  v144 = &v143;
  v145 = 0x3032000000;
  v146 = __Block_byref_object_copy__47;
  v147 = __Block_byref_object_dispose__47;
  v148 = 0;
  v137 = 0;
  v138 = &v137;
  v139 = 0x3032000000;
  v140 = __Block_byref_object_copy__47;
  v141 = __Block_byref_object_dispose__47;
  v142 = 0;
  v4 = objc_alloc(MEMORY[0x1E699B948]);
  v5 = +[EDMessagePersistence messagesTableName];
  v133 = [v4 initWithResultColumn:@"flags" table:v5];

  [v133 addResultColumn:@"is_urgent"];
  [v133 setWhere:v3];
  v136[0] = MEMORY[0x1E69E9820];
  v136[1] = 3221225472;
  v136[2] = __96__EDThreadPersistence__updateBasicPropertiesAfterDeleteForThreadObjectID_threadScopeDatabaseID___block_invoke_2;
  v136[3] = &unk_1E8258528;
  v136[4] = &v179;
  v136[5] = &v173;
  v136[6] = &v167;
  v136[7] = &v161;
  v136[8] = &v155;
  v136[9] = &v149;
  v136[10] = &v137;
  v136[11] = &v143;
  if ([v134 executeSelectStatement:v133 withBlock:v136 error:0])
  {
    v6 = [*(a1 + 32) _updateForThreadsWithThreadScopeDatabaseID:*(a1 + 56) conversation:*(a1 + 64)];
    v7 = MEMORY[0x1E699B890];
    v8 = MEMORY[0x1E699B8C8];
    v9 = +[EDMessagePersistence messagesDateReceivedColumnName];
    v10 = [v8 column:v9];
    v131 = [v7 max:v10];

    v11 = objc_alloc(MEMORY[0x1E699B948]);
    v12 = +[EDMessagePersistence messagesTableName];
    v130 = [v11 initWithResult:v131 table:v12];

    [v130 setWhere:v3];
    [v6 setObject:v130 forKeyedSubscript:@"date"];
    v13 = MEMORY[0x1E699B890];
    v14 = MEMORY[0x1E699B8C8];
    v15 = +[EDMessagePersistence messagesDisplayDateColumnName];
    v16 = [v14 column:v15];
    v127 = [v13 max:v16];

    v17 = objc_alloc(MEMORY[0x1E699B948]);
    v18 = +[EDMessagePersistence messagesTableName];
    v128 = [v17 initWithResult:v127 table:v18];

    [v128 setWhere:v3];
    [v6 setObject:v128 forKeyedSubscript:@"display_date"];
    v19 = MEMORY[0x1E699B890];
    v20 = [MEMORY[0x1E699B8C8] table:@"message_global_data" column:@"read_later_date"];
    v129 = [v19 min:v20];

    v132 = [objc_alloc(MEMORY[0x1E699B948]) initWithResult:v129 table:@"message_global_data"];
    v21 = +[EDMessagePersistence messagesTableName];
    v22 = [v132 join:v21 sourceColumn:*MEMORY[0x1E699B768] targetColumn:@"global_message_id"];

    [v132 setWhere:v3];
    [v6 setObject:v132 forKeyedSubscript:@"read_later_date"];
    v23 = objc_alloc(MEMORY[0x1E699B948]);
    v24 = +[EDMessagePersistence messagesTableName];
    v25 = [v23 initWithResult:MEMORY[0x1E695E110] table:v24];

    v26 = objc_alloc(MEMORY[0x1E699B898]);
    v194[0] = v3;
    v27 = [MEMORY[0x1E699B8C8] column:@"read"];
    v28 = [v27 equalTo:&unk_1F45E6BF8];
    v194[1] = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v194 count:2];
    v30 = [v26 initWithExpressions:v29];
    [v25 setWhere:v30];

    [v25 setLimit:1];
    v31 = [MEMORY[0x1E699B8F8] ifNull:v25 second:&unk_1F45E6C10];
    [v6 setObject:v31 forKeyedSubscript:@"read"];

    v32 = objc_alloc(MEMORY[0x1E699B948]);
    v33 = +[EDMessagePersistence messagesTableName];
    v34 = [v32 initWithResult:MEMORY[0x1E695E118] table:v33];

    v35 = objc_alloc(MEMORY[0x1E699B898]);
    v193[0] = v3;
    v36 = [MEMORY[0x1E699B8C8] column:@"flagged"];
    v37 = [v36 equalTo:&unk_1F45E6C10];
    v193[1] = v37;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v193 count:2];
    v39 = [v35 initWithExpressions:v38];
    [v34 setWhere:v39];

    [v34 setLimit:1];
    v40 = [MEMORY[0x1E699B8F8] ifNull:v34 second:&unk_1F45E6BF8];
    [v6 setObject:v40 forKeyedSubscript:@"flagged"];

    v41 = objc_alloc(MEMORY[0x1E699B948]);
    v42 = +[EDMessagePersistence messagesTableName];
    v43 = [v41 initWithResult:MEMORY[0x1E695E118] table:v42];

    v44 = objc_alloc(MEMORY[0x1E699B898]);
    v192[0] = v3;
    v45 = [MEMORY[0x1E699B8C8] column:@"flag_color"];
    v46 = [v45 equalTo:&unk_1F45E6CA0];
    v192[1] = v46;
    v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v192 count:2];
    v48 = [v44 initWithExpressions:v47];
    [v43 setWhere:v48];

    [v43 setLimit:1];
    v49 = [MEMORY[0x1E699B8F8] ifNull:v43 second:&unk_1F45E6BF8];
    [v6 setObject:v49 forKeyedSubscript:@"has_red_flag"];

    v50 = objc_alloc(MEMORY[0x1E699B948]);
    v51 = +[EDMessagePersistence messagesTableName];
    v52 = [v50 initWithResult:MEMORY[0x1E695E118] table:v51];

    v53 = objc_alloc(MEMORY[0x1E699B898]);
    v191[0] = v3;
    v54 = [MEMORY[0x1E699B8C8] column:@"flag_color"];
    v55 = [v54 equalTo:&unk_1F45E6CB8];
    v191[1] = v55;
    v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v191 count:2];
    v57 = [v53 initWithExpressions:v56];
    [v52 setWhere:v57];

    [v52 setLimit:1];
    v58 = [MEMORY[0x1E699B8F8] ifNull:v52 second:&unk_1F45E6BF8];
    [v6 setObject:v58 forKeyedSubscript:@"has_orange_flag"];

    v59 = objc_alloc(MEMORY[0x1E699B948]);
    v60 = +[EDMessagePersistence messagesTableName];
    v61 = [v59 initWithResult:MEMORY[0x1E695E118] table:v60];

    v62 = objc_alloc(MEMORY[0x1E699B898]);
    v190[0] = v3;
    v63 = [MEMORY[0x1E699B8C8] column:@"flag_color"];
    v64 = [v63 equalTo:&unk_1F45E6CD0];
    v190[1] = v64;
    v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v190 count:2];
    v66 = [v62 initWithExpressions:v65];
    [v61 setWhere:v66];

    [v61 setLimit:1];
    v67 = [MEMORY[0x1E699B8F8] ifNull:v61 second:&unk_1F45E6BF8];
    [v6 setObject:v67 forKeyedSubscript:@"has_yellow_flag"];

    v68 = objc_alloc(MEMORY[0x1E699B948]);
    v69 = +[EDMessagePersistence messagesTableName];
    v70 = [v68 initWithResult:MEMORY[0x1E695E118] table:v69];

    v71 = objc_alloc(MEMORY[0x1E699B898]);
    v189[0] = v3;
    v72 = [MEMORY[0x1E699B8C8] column:@"flag_color"];
    v73 = [v72 equalTo:&unk_1F45E6CE8];
    v189[1] = v73;
    v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:v189 count:2];
    v75 = [v71 initWithExpressions:v74];
    [v70 setWhere:v75];

    [v70 setLimit:1];
    v76 = [MEMORY[0x1E699B8F8] ifNull:v70 second:&unk_1F45E6BF8];
    [v6 setObject:v76 forKeyedSubscript:@"has_green_flag"];

    v77 = objc_alloc(MEMORY[0x1E699B948]);
    v78 = +[EDMessagePersistence messagesTableName];
    v79 = [v77 initWithResult:MEMORY[0x1E695E118] table:v78];

    v80 = objc_alloc(MEMORY[0x1E699B898]);
    v188[0] = v3;
    v81 = [MEMORY[0x1E699B8C8] column:@"flag_color"];
    v82 = [v81 equalTo:&unk_1F45E6D00];
    v188[1] = v82;
    v83 = [MEMORY[0x1E695DEC8] arrayWithObjects:v188 count:2];
    v84 = [v80 initWithExpressions:v83];
    [v79 setWhere:v84];

    [v79 setLimit:1];
    v85 = [MEMORY[0x1E699B8F8] ifNull:v79 second:&unk_1F45E6BF8];
    [v6 setObject:v85 forKeyedSubscript:@"has_blue_flag"];

    v86 = objc_alloc(MEMORY[0x1E699B948]);
    v87 = +[EDMessagePersistence messagesTableName];
    v88 = [v86 initWithResult:MEMORY[0x1E695E118] table:v87];

    v89 = objc_alloc(MEMORY[0x1E699B898]);
    v187[0] = v3;
    v90 = [MEMORY[0x1E699B8C8] column:@"flag_color"];
    v91 = [v90 equalTo:&unk_1F45E6D18];
    v187[1] = v91;
    v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:v187 count:2];
    v93 = [v89 initWithExpressions:v92];
    [v88 setWhere:v93];

    [v88 setLimit:1];
    v94 = [MEMORY[0x1E699B8F8] ifNull:v88 second:&unk_1F45E6BF8];
    [v6 setObject:v94 forKeyedSubscript:@"has_purple_flag"];

    v95 = objc_alloc(MEMORY[0x1E699B948]);
    v96 = +[EDMessagePersistence messagesTableName];
    v97 = [v95 initWithResult:MEMORY[0x1E695E118] table:v96];

    v98 = objc_alloc(MEMORY[0x1E699B898]);
    v186[0] = v3;
    v99 = [MEMORY[0x1E699B8C8] column:@"flag_color"];
    v100 = [v99 equalTo:&unk_1F45E6D30];
    v186[1] = v100;
    v101 = [MEMORY[0x1E695DEC8] arrayWithObjects:v186 count:2];
    v102 = [v98 initWithExpressions:v101];
    [v97 setWhere:v102];

    [v97 setLimit:1];
    v103 = [MEMORY[0x1E699B8F8] ifNull:v97 second:&unk_1F45E6BF8];
    [v6 setObject:v103 forKeyedSubscript:@"has_gray_flag"];

    v104 = objc_alloc(MEMORY[0x1E699B948]);
    v105 = +[EDMessagePersistence messagesTableName];
    v106 = [v104 initWithResult:MEMORY[0x1E695E118] table:v105];

    v107 = objc_alloc(MEMORY[0x1E699B898]);
    v185[0] = v3;
    v108 = [MEMORY[0x1E699B8C8] column:@"flagged"];
    v109 = [v108 equalTo:&unk_1F45E6BF8];
    v185[1] = v109;
    v110 = [MEMORY[0x1E695DEC8] arrayWithObjects:v185 count:2];
    v111 = [v107 initWithExpressions:v110];
    [v106 setWhere:v111];

    [v106 setLimit:1];
    v112 = [MEMORY[0x1E699B8F8] ifNull:v106 second:&unk_1F45E6BF8];
    [v6 setObject:v112 forKeyedSubscript:@"has_unflagged"];

    v113 = MEMORY[0x1E695E110];
    if (v180[5])
    {
      v114 = v180[5];
    }

    else
    {
      v114 = MEMORY[0x1E695E110];
    }

    [v6 setObject:v114 forKeyedSubscript:@"draft"];
    if (v174[5])
    {
      v115 = v174[5];
    }

    else
    {
      v115 = v113;
    }

    [v6 setObject:v115 forKeyedSubscript:@"replied"];
    if (v168[5])
    {
      v116 = v168[5];
    }

    else
    {
      v116 = v113;
    }

    [v6 setObject:v116 forKeyedSubscript:@"forwarded"];
    if (v162[5])
    {
      v117 = v162[5];
    }

    else
    {
      v117 = v113;
    }

    [v6 setObject:v117 forKeyedSubscript:@"redirected"];
    if (v156[5])
    {
      v118 = v156[5];
    }

    else
    {
      v118 = v113;
    }

    [v6 setObject:v118 forKeyedSubscript:@"has_attachments"];
    if (v144[5])
    {
      v119 = v144[5];
    }

    else
    {
      v119 = v113;
    }

    [v6 setObject:v119 forKeyedSubscript:@"is_icloud_cleanup"];
    if (v150[5])
    {
      v120 = v150[5];
    }

    else
    {
      v120 = &unk_1F45E6CB8;
    }

    [v6 setObject:v120 forKeyedSubscript:@"junk_level"];
    if (v138[5])
    {
      v121 = v138[5];
    }

    else
    {
      v121 = v113;
    }

    [v6 setObject:v121 forKeyedSubscript:@"is_urgent"];
    v122 = [*(a1 + 32) _messageThreadExpressionForThreadObjectID:*(a1 + 40)];
    v123 = [*(a1 + 32) _countMessagesForExpression:v122];
    [v6 setObject:v123 forKeyedSubscript:@"count"];

    v135 = 0;
    v124 = [v134 executeUpdateStatement:v6 rowsChanged:&v135];
    if (v135)
    {
      [*(a1 + 32) _addKeyPathsForBasicPropertiesChangeToKeyPaths:*(a1 + 48)];
    }
  }

  else
  {
    v124 = 0;
  }

  _Block_object_dispose(&v137, 8);
  _Block_object_dispose(&v143, 8);

  _Block_object_dispose(&v149, 8);
  _Block_object_dispose(&v155, 8);

  _Block_object_dispose(&v161, 8);
  _Block_object_dispose(&v167, 8);

  _Block_object_dispose(&v173, 8);
  _Block_object_dispose(&v179, 8);

  v125 = *MEMORY[0x1E69E9840];
  return v124;
}

void __96__EDThreadPersistence__updateBasicPropertiesAfterDeleteForThreadObjectID_threadScopeDatabaseID___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v27 = a2;
  v6 = [v27 objectAtIndexedSubscript:0];
  v7 = [v6 integerValue];

  v8 = MEMORY[0x1E695E118];
  if ((v7 & 0x40) != 0)
  {
    v21 = *(a1[4] + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = MEMORY[0x1E695E118];

    if ((v7 & 4) == 0)
    {
LABEL_3:
      if ((v7 & 0x100) == 0)
      {
        goto LABEL_4;
      }

LABEL_29:
      v25 = *(a1[6] + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = v8;

      if ((v7 & 0x200) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((v7 & 4) == 0)
  {
    goto LABEL_3;
  }

  v23 = *(a1[5] + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v8;

  if ((v7 & 0x100) != 0)
  {
    goto LABEL_29;
  }

LABEL_4:
  if ((v7 & 0x200) != 0)
  {
LABEL_5:
    v9 = *(a1[7] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

LABEL_6:
  if ((v7 & 0xFC00) != 0 && (v7 & 0xFC00) != 0xFC00)
  {
    v11 = *(a1[8] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v8;
  }

  if (v7 >> 31)
  {
    v13 = *(a1[9] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = &unk_1F45E6CD0;
  }

  v15 = [v27 objectForKeyedSubscript:@"is_urgent"];
  v16 = [v15 BOOLValue];

  if (v16)
  {
    v17 = *(a1[10] + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v8;
  }

  if ((v7 & 0x800000000000) != 0)
  {
    v19 = *(a1[11] + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v8;
  }

  if (*(*(a1[4] + 8) + 40) && *(*(a1[5] + 8) + 40) && *(*(a1[6] + 8) + 40) && *(*(a1[7] + 8) + 40) && *(*(a1[8] + 8) + 40) && *(*(a1[9] + 8) + 40) && *(*(a1[11] + 8) + 40) && *(*(a1[10] + 8) + 40))
  {
    *a4 = 1;
  }
}

- (BOOL)_deleteMailboxesFromWrappedMessages:(id)a3 fromThreadWithDatabaseID:(id)a4 messageThreadExpression:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v11 = [(EDThreadPersistence *)self database];
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence _deleteMailboxesFromWrappedMessages:fromThreadWithDatabaseID:messageThreadExpression:]"];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __108__EDThreadPersistence__deleteMailboxesFromWrappedMessages_fromThreadWithDatabaseID_messageThreadExpression___block_invoke;
  v17[3] = &unk_1E8258578;
  v13 = v10;
  v18 = v13;
  v14 = v9;
  v19 = v14;
  v20 = self;
  v15 = v8;
  v21 = v15;
  v22 = &v23;
  [v11 __performWriteWithCaller:v12 usingBlock:v17];

  LOBYTE(v8) = v24[3] != 0;
  _Block_object_dispose(&v23, 8);

  return v8;
}

uint64_t __108__EDThreadPersistence__deleteMailboxesFromWrappedMessages_fromThreadWithDatabaseID_messageThreadExpression___block_invoke(uint64_t a1, void *a2)
{
  v21[3] = *MEMORY[0x1E69E9840];
  v20 = a2;
  v3 = objc_alloc(MEMORY[0x1E699B948]);
  v4 = +[EDMessagePersistence messagesTableName];
  v5 = [v3 initWithResultColumn:@"mailbox" table:v4];

  [v5 setDistinct:1];
  [v5 setWhere:*(a1 + 32)];
  v6 = objc_alloc(MEMORY[0x1E699B898]);
  v19 = [MEMORY[0x1E699B8C8] column:@"thread"];
  v7 = [v19 equalTo:*(a1 + 40)];
  v21[0] = v7;
  v8 = [MEMORY[0x1E699B8C8] column:@"mailbox"];
  v9 = [*(a1 + 48) _mailboxDatabaseIDsForWrappedMessages:*(a1 + 56)];
  v10 = [v8 in:v9];
  v21[1] = v10;
  v11 = [MEMORY[0x1E699B8C8] column:@"mailbox"];
  v12 = [v11 notIn:v5];
  v21[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
  v14 = [v6 initWithExpressions:v13];

  v15 = [objc_alloc(MEMORY[0x1E699B8E8]) initWithTable:@"thread_mailboxes" where:v14];
  v16 = [v20 executeDeleteStatement:v15 rowsChanged:*(*(a1 + 64) + 8) + 24];

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)_deleteSendersFromThreadWithDatabaseID:(id)a3 messageThreadExpression:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v8 = [(EDThreadPersistence *)self database];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence _deleteSendersFromThreadWithDatabaseID:messageThreadExpression:]"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__EDThreadPersistence__deleteSendersFromThreadWithDatabaseID_messageThreadExpression___block_invoke;
  v13[3] = &unk_1E82530F8;
  v13[4] = self;
  v10 = v7;
  v14 = v10;
  v11 = v6;
  v15 = v11;
  v16 = &v17;
  [v8 __performWriteWithCaller:v9 usingBlock:v13];

  LOBYTE(v6) = v18[3] != 0;
  _Block_object_dispose(&v17, 8);

  return v6;
}

uint64_t __86__EDThreadPersistence__deleteSendersFromThreadWithDatabaseID_messageThreadExpression___block_invoke(uint64_t a1, void *a2)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _senderAddressesExpressionForMessages:*(a1 + 40)];
  v5 = objc_alloc(MEMORY[0x1E699B898]);
  v6 = [MEMORY[0x1E699B8C8] column:@"thread"];
  v7 = [v6 equalTo:*(a1 + 48)];
  v16[0] = v7;
  v8 = [MEMORY[0x1E699B8C8] column:@"address"];
  v9 = [v8 notIn:v4];
  v16[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v11 = [v5 initWithExpressions:v10];

  v12 = [objc_alloc(MEMORY[0x1E699B8E8]) initWithTable:@"thread_senders" where:v11];
  v13 = [v3 executeDeleteStatement:v12 rowsChanged:*(*(a1 + 56) + 8) + 24];

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)_deleteRecipientsOfType:(unint64_t)a3 fromThreadWithDatabaseID:(id)a4 messageThreadExpression:(id)a5
{
  v8 = a4;
  v9 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v10 = [(EDThreadPersistence *)self database];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence _deleteRecipientsOfType:fromThreadWithDatabaseID:messageThreadExpression:]"];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __96__EDThreadPersistence__deleteRecipientsOfType_fromThreadWithDatabaseID_messageThreadExpression___block_invoke;
  v15[3] = &unk_1E82511E0;
  v15[4] = self;
  v19 = a3;
  v12 = v9;
  v16 = v12;
  v13 = v8;
  v17 = v13;
  v18 = &v20;
  [v10 __performWriteWithCaller:v11 usingBlock:v15];

  LOBYTE(v8) = v21[3] != 0;
  _Block_object_dispose(&v20, 8);

  return v8;
}

uint64_t __96__EDThreadPersistence__deleteRecipientsOfType_fromThreadWithDatabaseID_messageThreadExpression___block_invoke(uint64_t a1, void *a2)
{
  v19[3] = *MEMORY[0x1E69E9840];
  v17 = a2;
  v18 = [*(a1 + 32) _recipientAddressesExpressionForRecipientType:*(a1 + 64) messages:*(a1 + 40)];
  v3 = objc_alloc(MEMORY[0x1E699B898]);
  v4 = [MEMORY[0x1E699B8C8] column:@"thread"];
  v5 = [v4 equalTo:*(a1 + 48)];
  v19[0] = v5;
  v6 = [MEMORY[0x1E699B8C8] column:@"type"];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 64)];
  v8 = [v6 equalTo:v7];
  v19[1] = v8;
  v9 = [MEMORY[0x1E699B8C8] column:@"address"];
  v10 = [v9 notIn:v18];
  v19[2] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  v12 = [v3 initWithExpressions:v11];

  v13 = [objc_alloc(MEMORY[0x1E699B8E8]) initWithTable:@"thread_recipients" where:v12];
  v14 = [v17 executeDeleteStatement:v13 rowsChanged:*(*(a1 + 56) + 8) + 24];

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)persistenceIsDeletingAllMessagesInMailboxWithURL:(id)a3 generationWindow:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x1E699B858] ec_redactedStringForMailboxURL:v5];
    *buf = 138543362;
    v19 = v7;
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Persistence is deleting all messages in mailbox %{public}@", buf, 0xCu);
  }

  v8 = [objc_alloc(MEMORY[0x1E699AD20]) initWithURL:v5];
  v9 = [(EDThreadPersistence *)self messagePersistence];
  v10 = [v9 mailboxPersistence];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __89__EDThreadPersistence_persistenceIsDeletingAllMessagesInMailboxWithURL_generationWindow___block_invoke;
  v14[3] = &unk_1E82585A0;
  v11 = v8;
  v15 = v11;
  v16 = v10;
  v17 = self;
  v12 = v10;
  [(EDThreadPersistence *)self _enumerateThreadScopesUsingBlock:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __89__EDThreadPersistence_persistenceIsDeletingAllMessagesInMailboxWithURL_generationWindow___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if ([v8 scopeContainsMailboxObjectID:*(a1 + 32) mailboxTypeResolver:*(a1 + 40)])
  {
    [*(a1 + 48) _resetThreadScope:v7 withDatabaseID:v9];
  }
}

- (void)_resetThreadScope:(id)a3 withDatabaseID:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(EDThreadPersistence *)self database];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence _resetThreadScope:withDatabaseID:]"];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__EDThreadPersistence__resetThreadScope_withDatabaseID___block_invoke;
  v16[3] = &unk_1E8251CB8;
  v10 = v7;
  v17 = v10;
  v11 = [v8 __performWriteWithCaller:v9 usingBlock:v16];

  if (v11)
  {
    v12 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v6;
      _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "Successfully reset thread scope: %{public}@", buf, 0xCu);
    }

    v13 = [(EDThreadPersistence *)self threadScopeManager];
    [v13 removeThreadScope:v6];

    v14 = [(EDThreadPersistence *)self hookRegistry];
    [v14 persistenceDidResetThreadScope:v6];
  }

  else
  {
    v14 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v6;
      _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "Failed to reset thread scope: %{public}@", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __56__EDThreadPersistence__resetThreadScope_withDatabaseID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v5 = [v4 equalTo:*(a1 + 32)];

  v6 = [objc_alloc(MEMORY[0x1E699B8E8]) initWithTable:@"thread_scopes" where:v5];
  v7 = [v3 executeDeleteStatement:v6 error:0];

  return v7;
}

- (void)persistenceDidDeleteAllMessagesInMailboxesWithURLs:(id)a3 generationWindow:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 ef_map:&__block_literal_global_461];
  v7 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Persistence did delete all messages in mailbox %{public}@", &v10, 0xCu);
  }

  v8 = [(EDThreadPersistence *)self hookRegistry];
  [v8 persistenceDidFinishThreadUpdates];

  v9 = *MEMORY[0x1E69E9840];
}

id __91__EDThreadPersistence_persistenceDidDeleteAllMessagesInMailboxesWithURLs_generationWindow___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E699B858] ec_redactedStringForMailboxURL:a2];

  return v2;
}

- (void)persistenceIsChangingConversationID:(int64_t)a3 messages:(id)a4 generationWindow:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v21 = [v8 count];
    v22 = 2048;
    v23 = a3;
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Persistence is changing conversation ID for %lu messages from %lld", buf, 0x16u);
  }

  v11 = [(EDThreadPersistence *)self _filteredPersistedMessagesForPersistedMessages:v8];

  v12 = [(EDThreadPersistence *)self hookRegistry];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__EDThreadPersistence_persistenceIsChangingConversationID_messages_generationWindow___block_invoke;
  v16[3] = &unk_1E82585C8;
  v19 = a3;
  v16[4] = self;
  v13 = v9;
  v17 = v13;
  v18 = v12;
  v14 = v12;
  [(EDThreadPersistence *)self _iterateWrappedMessagesByConversationForPersistedMessages:v11 messageFilter:0 writeBlock:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __85__EDThreadPersistence_persistenceIsChangingConversationID_messages_generationWindow___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E699AEF8]);
  v5 = *(a1 + 56);
  v6 = [v3 threadObjectID];
  v7 = [v6 threadScope];
  v8 = [v4 initWithConversationID:v5 threadScope:v7];

  v9 = *(a1 + 32);
  v10 = [v3 wrappedMessages];
  v11 = [v9 _deleteWrappedMessages:v10 fromThreadWithObjectID:v8 threadScopeDatabaseID:objc_msgSend(v3 generationWindow:{"threadScopeDatabaseID"), *(a1 + 40)}];

  v12 = *(a1 + 32);
  v13 = [v3 wrappedMessages];
  v14 = [v3 threadObjectID];
  v15 = [v12 _threadForWrappedMessages:v13 objectID:v14];

  v16 = *(a1 + 32);
  v17 = [v15 objectID];
  v18 = [v16 _messagesAreJournaledForThreadWithObjectID:v17];

  if ([v3 addThreadReplacingExisting:0 journaled:v18])
  {
    v19 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = &stru_1F45B4608;
      if (v18)
      {
        v20 = @"journaled ";
      }

      v30 = 138412546;
      v31 = v20;
      v32 = 2114;
      v33 = v15;
      _os_log_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_DEFAULT, "Adding %@thread (conversation change): %{public}@", &v30, 0x16u);
    }

    [*(a1 + 48) persistenceIsAddingThread:v15 journaled:v18 generationWindow:*(a1 + 40)];
  }

  else
  {
    v21 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = &stru_1F45B4608;
      if (v18)
      {
        v22 = @"journaled ";
      }

      v30 = 138412546;
      v31 = v22;
      v32 = 2114;
      v33 = v15;
      _os_log_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_DEFAULT, "Updating %@thread (conversation change): %{public}@", &v30, 0x16u);
    }

    v23 = [v3 updateThreadTableWithJournaled:v18];
    v24 = [v11 arrayByAddingObjectsFromArray:v23];

    v11 = v24;
  }

  if ([v11 count])
  {
    v25 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v3 threadObjectID];
      v30 = 138543618;
      v31 = v26;
      v32 = 2114;
      v33 = v11;
      _os_log_impl(&dword_1C61EF000, v25, OS_LOG_TYPE_DEFAULT, "Changing thread (conversation change): %{public}@\nkey paths: %{public}@", &v30, 0x16u);
    }

    v27 = *(a1 + 48);
    v28 = [v3 threadObjectID];
    [v27 persistenceIsChangingThreadWithObjectID:v28 changedKeyPaths:v11 generationWindow:*(a1 + 40)];
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)persistenceDidChangeGlobalMessageID:(int64_t)a3 orConversationID:(int64_t)a4 message:(id)a5 generationWindow:(id)a6
{
  v7 = [EDThreadPersistence log:a3];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Persistence did change global-message-id for message", v9, 2u);
  }

  v8 = [(EDThreadPersistence *)self hookRegistry];
  [v8 persistenceDidFinishThreadUpdates];
}

- (BOOL)_messagesAreJournaledForThreadWithObjectID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(EDThreadPersistence *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence _messagesAreJournaledForThreadWithObjectID:]"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__EDThreadPersistence__messagesAreJournaledForThreadWithObjectID___block_invoke;
  v9[3] = &unk_1E8250288;
  v9[4] = self;
  v7 = v4;
  v10 = v7;
  v11 = &v12;
  [v5 __performReadWithCaller:v6 usingBlock:v9];

  LOBYTE(v4) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return v4;
}

uint64_t __66__EDThreadPersistence__messagesAreJournaledForThreadWithObjectID___block_invoke(uint64_t a1, void *a2)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E699B948]);
  v5 = +[EDMessagePersistence messagesTableName];
  v6 = [v4 initWithResult:&unk_1F45E6C10 table:v5];

  v7 = [*(a1 + 32) _messageThreadExpressionForThreadObjectID:*(a1 + 40)];
  v8 = [MEMORY[0x1E699B8C8] column:@"journaled"];
  v9 = [v8 equalTo:&unk_1F45E6C10];

  v10 = objc_alloc(MEMORY[0x1E699B898]);
  v17[0] = v7;
  v17[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v12 = [v10 initWithExpressions:v11];
  [v6 setWhere:v12];

  [v6 setLimit:1];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66__EDThreadPersistence__messagesAreJournaledForThreadWithObjectID___block_invoke_2;
  v16[3] = &unk_1E8250418;
  v16[4] = *(a1 + 48);
  v13 = [v3 executeSelectStatement:v6 withBlock:v16 error:0];

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)persistenceDidChangeReadLaterDate:(id)a3 messages:(id)a4 changeIsRemote:(BOOL)a5 generationWindow:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = NSStringFromSelector(a2);
    *buf = 138543362;
    v25 = v14;
    _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  [(EDThreadPersistence *)self _persistenceDidUpdateReadLaterForMessages:v11 generationWindow:v12];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __98__EDThreadPersistence_persistenceDidChangeReadLaterDate_messages_changeIsRemote_generationWindow___block_invoke;
  v21[3] = &unk_1E82584D8;
  v21[4] = self;
  v15 = v12;
  v22 = v15;
  v16 = v10;
  v23 = v16;
  [(EDThreadPersistence *)self _iterateWrappedMessagesByConversationForPersistedMessages:v11 block:v21];
  v17 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [MEMORY[0x1E699B858] bucketMessageCount:{objc_msgSend(v11, "count")}];
    *buf = 67109120;
    LODWORD(v25) = v18;
    _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "Persistence did update read later date for %u messages", buf, 8u);
  }

  v19 = [(EDThreadPersistence *)self hookRegistry];
  [v19 persistenceDidFinishThreadUpdates];

  v20 = *MEMORY[0x1E69E9840];
}

void __98__EDThreadPersistence_persistenceDidChangeReadLaterDate_messages_changeIsRemote_generationWindow___block_invoke(id *a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a1[4] _threadExpressionForThreadScopeDatabaseID:a2 conversation:{objc_msgSend(v5, "conversationID")}];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v7 = [a1[4] database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence persistenceDidChangeReadLaterDate:messages:changeIsRemote:generationWindow:]_block_invoke"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __98__EDThreadPersistence_persistenceDidChangeReadLaterDate_messages_changeIsRemote_generationWindow___block_invoke_2;
  v14[3] = &unk_1E82530F8;
  v15 = a1[5];
  v16 = a1[6];
  v9 = v6;
  v17 = v9;
  v18 = &v19;
  [v7 __performWriteWithCaller:v8 usingBlock:v14];

  if (v20[3])
  {
    v10 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = v5;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Changing thread (readLaterDate change): %{public}@", buf, 0xCu);
    }

    v11 = [a1[4] hookRegistry];
    v23 = *MEMORY[0x1E699A958];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    [v11 persistenceIsChangingThreadWithObjectID:v5 changedKeyPaths:v12 generationWindow:a1[5]];
  }

  _Block_object_dispose(&v19, 8);
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __98__EDThreadPersistence_persistenceDidChangeReadLaterDate_messages_changeIsRemote_generationWindow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"threads"];
  [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  v5 = *(a1 + 40);
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  [v4 setObject:v6 forKeyedSubscript:@"read_later_date"];
  if (!v5)
  {
  }

  [v4 setWhereClause:*(a1 + 48)];
  v7 = [v3 executeUpdateStatement:v4 rowsChanged:*(*(a1 + 56) + 8) + 24];

  return v7;
}

- (void)_persistenceDidUpdateReadLaterForMessages:(id)a3 generationWindow:(id)a4
{
  v12[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E699A960];
  v12[0] = *MEMORY[0x1E699A958];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v10 = [MEMORY[0x1E699ADA0] predicateForFiredReadLaterMessages];
  [(EDThreadPersistence *)self _persistenceDidUpdateMessages:v6 forFilterPredicate:2 changedKeyPaths:v9 predicateToIgnore:v10 loggingString:@"read later" generationWindow:v7 messageTest:&__block_literal_global_467];

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __82__EDThreadPersistence__persistenceDidUpdateReadLaterForMessages_generationWindow___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 readLater];
  v3 = [v2 isActive];

  return v3;
}

- (void)persistenceDidUpdateFollowUpForMessages:(id)a3 generationWindow:(id)a4
{
  v12[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E699A8A8];
  v12[0] = *MEMORY[0x1E699A8B8];
  v12[1] = v8;
  v12[2] = *MEMORY[0x1E699A8B0];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
  v10 = [MEMORY[0x1E699ADA0] predicateForMessagesWithActiveFollowUp];
  [(EDThreadPersistence *)self _persistenceDidUpdateMessages:v6 forFilterPredicate:1 changedKeyPaths:v9 predicateToIgnore:v10 loggingString:@"follow up" generationWindow:v7 messageTest:&__block_literal_global_472];

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __80__EDThreadPersistence_persistenceDidUpdateFollowUpForMessages_generationWindow___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 followUp];
  v3 = [v2 isActive];

  return v3;
}

- (void)persistenceIsUpdatingDisplayDateForMessage:(id)a3 fromDate:(id)a4 generation:(int64_t)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    *buf = 138543362;
    v24 = v12;
    _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v13 = [v9 displayDate];
  v22 = v9;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __86__EDThreadPersistence_persistenceIsUpdatingDisplayDateForMessage_fromDate_generation___block_invoke;
  v18[3] = &unk_1E8258640;
  v18[4] = self;
  v15 = v10;
  v19 = v15;
  v16 = v13;
  v20 = v16;
  v21 = a5;
  [(EDThreadPersistence *)self _iterateWrappedMessagesByConversationForPersistedMessages:v14 block:v18];

  v17 = *MEMORY[0x1E69E9840];
}

void __86__EDThreadPersistence_persistenceIsUpdatingDisplayDateForMessage_fromDate_generation___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) _threadExpressionForThreadScopeDatabaseID:a2 conversation:{objc_msgSend(v7, "conversationID")}];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __86__EDThreadPersistence_persistenceIsUpdatingDisplayDateForMessage_fromDate_generation___block_invoke_2;
  v35[3] = &unk_1E82585F0;
  v36 = *(a1 + 40);
  v37 = *(a1 + 48);
  v10 = [v8 ef_all:v35];
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v12 = [*(a1 + 32) database];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence persistenceIsUpdatingDisplayDateForMessage:fromDate:generation:]_block_invoke"];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __86__EDThreadPersistence_persistenceIsUpdatingDisplayDateForMessage_fromDate_generation___block_invoke_3;
  v22[3] = &unk_1E8258618;
  v30 = v10;
  v23 = *(a1 + 48);
  v14 = v9;
  v15 = *(a1 + 32);
  v24 = v14;
  v25 = v15;
  v16 = v7;
  v26 = v16;
  v28 = &v31;
  v17 = v11;
  v27 = v17;
  v29 = a2;
  [v12 __performWriteWithCaller:v13 usingBlock:v22];

  if (v32[3])
  {
    v18 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v39 = v16;
      _os_log_impl(&dword_1C61EF000, v18, OS_LOG_TYPE_DEFAULT, "Changing thread (displayDate change): %{public}@", buf, 0xCu);
    }

    v19 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
    [(EDPersistenceDatabaseGenerationWindow *)v19 insertGeneration:*(a1 + 56)];
    v20 = [*(a1 + 32) hookRegistry];
    [v20 persistenceIsChangingThreadWithObjectID:v16 changedKeyPaths:v17 generationWindow:v19];
  }

  _Block_object_dispose(&v31, 8);
  v21 = *MEMORY[0x1E69E9840];
}

uint64_t __86__EDThreadPersistence_persistenceIsUpdatingDisplayDateForMessage_fromDate_generation___block_invoke_3(uint64_t a1, void *a2)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"threads"];
  v5 = v4;
  if (*(a1 + 88) == 1)
  {
    [v4 setObject:*(a1 + 32) forKeyedSubscript:@"display_date"];
    v6 = [MEMORY[0x1E699B8C8] column:@"display_date"];
    v7 = [v6 lessThan:*(a1 + 32)];

    v8 = objc_alloc(MEMORY[0x1E699B898]);
    v24[0] = *(a1 + 40);
    v24[1] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v10 = [v8 initWithExpressions:v9];
    [v5 setWhereClause:v10];
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x1E699B948]);
    v12 = MEMORY[0x1E699B890];
    v13 = MEMORY[0x1E699B8C8];
    v14 = +[EDMessagePersistence messagesDisplayDateColumnName];
    v15 = [v13 column:v14];
    v16 = [v12 max:v15];
    v17 = +[EDMessagePersistence messagesTableName];
    v18 = [v11 initWithResult:v16 table:v17];

    v19 = [*(a1 + 48) _messageThreadExpressionForThreadObjectID:*(a1 + 56)];
    [v18 setWhere:v19];

    [v5 setObject:v18 forKeyedSubscript:@"display_date"];
    [v5 setWhereClause:*(a1 + 40)];
  }

  v20 = [v3 executeUpdateStatement:v5 rowsChanged:*(*(a1 + 72) + 8) + 24];
  if (v20 && *(*(*(a1 + 72) + 8) + 24))
  {
    [*(a1 + 64) addObject:*MEMORY[0x1E699A888]];
    [*(a1 + 48) _recalculateNewestReadMessageForThreadObjectID:*(a1 + 56) threadScopeDatabaseID:*(a1 + 80)];
    v21 = [*(a1 + 48) _recalculateDisplayMessageForThreadObjectID:*(a1 + 56) threadScopeDatabaseID:*(a1 + 80)];
    if ([v21 count])
    {
      [*(a1 + 64) ef_addAbsentObjectsFromArrayAccordingToEquals:v21];
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)persistenceDidUpdateDisplayDateForMessages:(id)a3 changeIsRemote:(BOOL)a4 generation:(int64_t)a5
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = [MEMORY[0x1E699B858] bucketMessageCount:{objc_msgSend(v6, "count")}];
    _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Persistence did update display date for %u messages", v10, 8u);
  }

  v8 = [(EDThreadPersistence *)self hookRegistry];
  [v8 persistenceDidFinishThreadUpdates];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)persistenceDidUpdateProperties:(id)a3 message:(id)a4 generationWindow:(id)a5
{
  v26[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 flags];
  v12 = [v11 deleted];

  if ((v12 & 1) == 0)
  {
    if ([v8 containsObject:*MEMORY[0x1E699B1C8]])
    {
      if ([v9 numberOfAttachments])
      {
        v26[0] = v9;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
        v18 = MEMORY[0x1E69E9820];
        v19 = 3221225472;
        v20 = __79__EDThreadPersistence_persistenceDidUpdateProperties_message_generationWindow___block_invoke;
        v21 = &unk_1E8258668;
        v22 = self;
        v23 = v10;
        [(EDThreadPersistence *)self _iterateWrappedMessagesByConversationForPersistedMessages:v13 block:&v18];

        v14 = [EDThreadPersistence log:v18];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v25 = v8;
          _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "Persistence did update properties for message: %{public}@", buf, 0xCu);
        }

        v15 = [(EDThreadPersistence *)self hookRegistry];
        [v15 persistenceDidFinishThreadUpdates];
      }
    }

    else if ([v8 containsObject:@"GeneratedSummary"])
    {
      v16 = [(EDThreadPersistence *)self hookRegistry];
      [v16 persistenceDidFinishThreadUpdates];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __79__EDThreadPersistence_persistenceDidUpdateProperties_message_generationWindow___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [*(a1 + 32) _threadExpressionForThreadScopeDatabaseID:a2 conversation:{objc_msgSend(v5, "conversationID")}];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v7 = [*(a1 + 32) database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence persistenceDidUpdateProperties:message:generationWindow:]_block_invoke"];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __79__EDThreadPersistence_persistenceDidUpdateProperties_message_generationWindow___block_invoke_2;
  v17 = &unk_1E8250288;
  v18 = *(a1 + 40);
  v9 = v6;
  v19 = v9;
  v20 = &v21;
  [v7 __performWriteWithCaller:v8 usingBlock:&v14];

  if (v22[3])
  {
    v10 = [EDThreadPersistence log:v14];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v27 = v5;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Changing thread (hasAttachments change): %{public}@", buf, 0xCu);
    }

    v11 = [*(a1 + 32) hookRegistry];
    v25 = *MEMORY[0x1E699A8E0];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    [v11 persistenceIsChangingThreadWithObjectID:v5 changedKeyPaths:v12 generationWindow:*(a1 + 40)];
  }

  _Block_object_dispose(&v21, 8);
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __79__EDThreadPersistence_persistenceDidUpdateProperties_message_generationWindow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"threads"];
  [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  [v4 setObject:&unk_1F45E6C10 forKeyedSubscript:@"has_attachments"];
  [v4 setWhereClause:*(a1 + 40)];
  v5 = [v3 executeUpdateStatement:v4 rowsChanged:*(*(a1 + 48) + 8) + 24];

  return v5;
}

- (void)persistenceDidChangeCategorizationForMessages:(id)a3 userInitiated:(BOOL)a4 generationWindow:(id)a5
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = *MEMORY[0x1E699A848];
  v13[0] = *MEMORY[0x1E699A850];
  v13[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v11 = [MEMORY[0x1E699ADA0] predicateForPrimaryMessages];
  [(EDThreadPersistence *)self _persistenceDidUpdateMessages:v7 forFilterPredicate:4 changedKeyPaths:v10 predicateToIgnore:v11 loggingString:@"categorization" generationWindow:v8 messageTest:&__block_literal_global_479];

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __100__EDThreadPersistence_persistenceDidChangeCategorizationForMessages_userInitiated_generationWindow___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 category];
  v3 = [v2 isPrimary];

  return v3;
}

- (void)_persistenceDidUpdateMessages:(id)a3 forFilterPredicate:(unint64_t)a4 changedKeyPaths:(id)a5 predicateToIgnore:(id)a6 loggingString:(id)a7 generationWindow:(id)a8 messageTest:(id)a9
{
  v66 = *MEMORY[0x1E69E9840];
  v44 = a3;
  v40 = a5;
  v38 = a6;
  v42 = a7;
  v41 = a8;
  v43 = a9;
  v16 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NSStringFromSelector(a2);
    *buf = 138543618;
    v63 = v17;
    v64 = 2114;
    v65 = v42;
    _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ - %{public}@", buf, 0x16u);
  }

  v39 = [(EDThreadPersistence *)self hookRegistry];
  v45 = [v44 ef_partition:v43];
  v18 = [(EDThreadPersistence *)self messagePersistence];
  v19 = [v18 mailboxPersistence];
  v37 = [v19 mailboxProvider];

  v20 = [v45 first];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __149__EDThreadPersistence__persistenceDidUpdateMessages_forFilterPredicate_changedKeyPaths_predicateToIgnore_loggingString_generationWindow_messageTest___block_invoke;
  v55[3] = &unk_1E8258690;
  v55[4] = self;
  v21 = v37;
  v56 = v21;
  v61 = a4;
  v22 = v40;
  v57 = v22;
  v23 = v41;
  v58 = v23;
  v24 = v42;
  v59 = v24;
  v25 = v39;
  v60 = v25;
  [(EDThreadPersistence *)self _iterateWrappedMessagesByConversationForPersistedMessages:v20 messageFilter:0 writeBlock:v55];

  v26 = [v45 second];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __149__EDThreadPersistence__persistenceDidUpdateMessages_forFilterPredicate_changedKeyPaths_predicateToIgnore_loggingString_generationWindow_messageTest___block_invoke_480;
  v53[3] = &unk_1E82586B8;
  v27 = v38;
  v54 = v27;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __149__EDThreadPersistence__persistenceDidUpdateMessages_forFilterPredicate_changedKeyPaths_predicateToIgnore_loggingString_generationWindow_messageTest___block_invoke_2;
  v46[3] = &unk_1E8258690;
  v46[4] = self;
  v28 = v21;
  v47 = v28;
  v52 = a4;
  v29 = v23;
  v48 = v29;
  v30 = v22;
  v49 = v30;
  v31 = v24;
  v50 = v31;
  v32 = v25;
  v51 = v32;
  [(EDThreadPersistence *)self _iterateWrappedMessagesByConversationForPersistedMessages:v26 messageFilter:v53 writeBlock:v46];

  v33 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = [MEMORY[0x1E699B858] bucketMessageCount:{objc_msgSend(v44, "count")}];
    *buf = 138543618;
    v63 = v31;
    v64 = 1024;
    LODWORD(v65) = v34;
    _os_log_impl(&dword_1C61EF000, v33, OS_LOG_TYPE_DEFAULT, "Persistence did update (%{public}@) for %u messages", buf, 0x12u);
  }

  v35 = [(EDThreadPersistence *)self hookRegistry];
  [v35 persistenceDidFinishThreadUpdates];

  v36 = *MEMORY[0x1E69E9840];
}

void __149__EDThreadPersistence__persistenceDidUpdateMessages_forFilterPredicate_changedKeyPaths_predicateToIgnore_loggingString_generationWindow_messageTest___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 thread];
  v5 = [v4 objectID];
  v6 = [v5 threadScope];

  v15 = 0;
  v7 = [*(a1 + 32) threadScopeManager];
  v8 = [v7 precomputedMailboxScopeForThreadScope:v6 mailboxTypeResolver:*(a1 + 40) foundPredicates:&v15];

  if ((*(a1 + 80) & v15) != 0)
  {
    [*(a1 + 32) _writeThreadedMessages:v3 withChangedKeyPaths:*(a1 + 48) journaled:0 generationWindow:*(a1 + 56)];
  }

  else
  {
    v9 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 64);
      v11 = *(a1 + 48);
      *buf = 138543874;
      v17 = v10;
      v18 = 2114;
      v19 = v4;
      v20 = 2114;
      v21 = v11;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "Changing thread (%{public}@): %{public}@\nkey paths: %{public}@", buf, 0x20u);
    }

    v12 = *(a1 + 72);
    v13 = [v3 threadObjectID];
    [v12 persistenceIsChangingThreadWithObjectID:v13 changedKeyPaths:*(a1 + 48) generationWindow:*(a1 + 56)];
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __149__EDThreadPersistence__persistenceDidUpdateMessages_forFilterPredicate_changedKeyPaths_predicateToIgnore_loggingString_generationWindow_messageTest___block_invoke_480(uint64_t a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x1E699ADA0];
  v13[0] = *(a1 + 32);
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v9 = [v7 predicateFromPredicate:v5 ignoringPredicates:v8];

  v10 = [v9 evaluateWithObject:v6];
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void __149__EDThreadPersistence__persistenceDidUpdateMessages_forFilterPredicate_changedKeyPaths_predicateToIgnore_loggingString_generationWindow_messageTest___block_invoke_2(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 thread];
  v5 = [v4 objectID];
  v6 = [v5 threadScope];

  v24 = 0;
  v7 = [*(a1 + 32) threadScopeManager];
  v8 = [v7 precomputedMailboxScopeForThreadScope:v6 mailboxTypeResolver:*(a1 + 40) foundPredicates:&v24];

  if ((*(a1 + 80) & v24) != 0)
  {
    v9 = *(a1 + 32);
    v10 = [v3 wrappedMessages];
    v11 = [v3 threadObjectID];
    v12 = [v9 _deleteWrappedMessages:v10 fromThreadWithObjectID:v11 threadScopeDatabaseID:objc_msgSend(v3 generationWindow:{"threadScopeDatabaseID"), *(a1 + 48)}];

    if ([v12 count])
    {
      v13 = [v12 mutableCopy];
      [v13 ef_addAbsentObjectsFromArrayAccordingToEquals:*(a1 + 56)];
      v14 = +[EDThreadPersistence log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 64);
        v16 = [v3 threadObjectID];
        *buf = 138543874;
        v26 = v15;
        v27 = 2114;
        v28 = v16;
        v29 = 2114;
        v30 = v13;
        _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "Changing thread (%{public}@): %{public}@\nkey paths: %{public}@", buf, 0x20u);
      }

      v17 = *(a1 + 72);
      v18 = [v3 threadObjectID];
      [v17 persistenceIsChangingThreadWithObjectID:v18 changedKeyPaths:v13 generationWindow:*(a1 + 48)];
    }
  }

  else
  {
    v19 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 56);
      v20 = *(a1 + 64);
      *buf = 138543874;
      v26 = v20;
      v27 = 2114;
      v28 = v4;
      v29 = 2114;
      v30 = v21;
      _os_log_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_DEFAULT, "Changing thread (%{public}@): %{public}@\nkey paths: %{public}@", buf, 0x20u);
    }

    v22 = *(a1 + 72);
    v12 = [v3 threadObjectID];
    [v22 persistenceIsChangingThreadWithObjectID:v12 changedKeyPaths:*(a1 + 56) generationWindow:*(a1 + 48)];
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)_filteredPersistedMessagesForPersistedMessages:(id)a3
{
  v3 = [a3 ef_filter:&__block_literal_global_483];

  return v3;
}

uint64_t __70__EDThreadPersistence__filteredPersistedMessagesForPersistedMessages___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 flags];
  if ([v3 deleted])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v2 isServerSearchResult];
  }

  return v4 ^ 1u;
}

- (void)_iterateWrappedMessagesByConversationForPersistedMessages:(id)a3 messageFilter:(id)a4 writeBlock:(id)a5
{
  v24[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateReceived" ascending:0];
  v24[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v13 = [v8 sortedArrayUsingDescriptors:v12];

  v14 = [(EDThreadPersistence *)self database];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence _iterateWrappedMessagesByConversationForPersistedMessages:messageFilter:writeBlock:]"];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __106__EDThreadPersistence__iterateWrappedMessagesByConversationForPersistedMessages_messageFilter_writeBlock___block_invoke;
  v20[3] = &unk_1E8258730;
  v20[4] = self;
  v16 = v13;
  v21 = v16;
  v17 = v9;
  v22 = v17;
  v18 = v10;
  v23 = v18;
  [v14 __performWriteWithCaller:v15 usingBlock:v20];

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t __106__EDThreadPersistence__iterateWrappedMessagesByConversationForPersistedMessages_messageFilter_writeBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[_EDThreadPersistence_StatementCache alloc] initWithConnection:v3];
  v5 = [*(a1 + 32) _wrappedMessagesByThreadScopeForPersistedMessages:*(a1 + 40) messageFilter:*(a1 + 48)];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __106__EDThreadPersistence__iterateWrappedMessagesByConversationForPersistedMessages_messageFilter_writeBlock___block_invoke_2;
  v9[3] = &unk_1E8258708;
  v9[4] = *(a1 + 32);
  v6 = v4;
  v10 = v6;
  v12 = &v13;
  v11 = *(a1 + 56);
  [v5 enumerateKeysAndObjectsUsingBlock:v9];
  v7 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v7;
}

void __106__EDThreadPersistence__iterateWrappedMessagesByConversationForPersistedMessages_messageFilter_writeBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v26 = a3;
  v30 = v5;
  v6 = [*(a1 + 32) threadScopeManager];
  v7 = [v6 databaseIDForThreadScope:v5];

  v27 = [*(a1 + 32) _expressionForThreadScope:v5];
  v8 = [_EDThreadPersistence_ThreadScope alloc];
  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) messagePersistence];
  v28 = [(_EDThreadPersistence_ThreadScope *)v8 initWithCache:v9 messagePersistence:v10 threadScopeDatabaseID:v7 threadScopeExpression:v27];

  v11 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __106__EDThreadPersistence__iterateWrappedMessagesByConversationForPersistedMessages_messageFilter_writeBlock___block_invoke_3;
  v36[3] = &unk_1E82586E0;
  v12 = v11;
  v37 = v12;
  v13 = [v26 ef_groupBy:v36];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v12;
  v14 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v14)
  {
    v15 = *v33;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        v18 = [v13 objectForKeyedSubscript:v17];
        v19 = [objc_alloc(MEMORY[0x1E699AEF8]) initWithConversationID:objc_msgSend(v17 threadScope:{"longLongValue"), v30}];
        v20 = *(*(a1 + 56) + 8);
        if (*(v20 + 24))
        {
          v31 = 0;
          v21 = [(_EDThreadPersistence_ThreadScope *)v28 createMessagesWithThreadObjectID:v19 wrappedMessages:v18 threadMessages:&v31];
          v22 = v31;
          *(*(*(a1 + 56) + 8) + 24) = v21;
          if (v22)
          {
            v23 = v22;
            (*(*(a1 + 48) + 16))();
            goto LABEL_13;
          }
        }

        else
        {
          *(v20 + 24) = 0;
        }

        v24 = +[EDThreadPersistence log];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v39 = v19;
          _os_log_error_impl(&dword_1C61EF000, v24, OS_LOG_TYPE_ERROR, "Failed to create messages for threadObjectID: %{public}@", buf, 0xCu);
        }

        v23 = 0;
LABEL_13:
      }

      v14 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v14);
  }

  v25 = *MEMORY[0x1E69E9840];
}

id __106__EDThreadPersistence__iterateWrappedMessagesByConversationForPersistedMessages_messageFilter_writeBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [a2 message];
  v5 = [v3 numberWithLongLong:{objc_msgSend(v4, "conversationID")}];

  [*(a1 + 32) addObject:v5];

  return v5;
}

- (void)_iterateWrappedMessagesByConversationForPersistedMessages:(id)a3 block:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateReceived" ascending:0];
  v16[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v10 = [v6 sortedArrayUsingDescriptors:v9];

  v11 = [(EDThreadPersistence *)self _wrappedMessagesByThreadScopeForPersistedMessages:v10 messageFilter:0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87__EDThreadPersistence__iterateWrappedMessagesByConversationForPersistedMessages_block___block_invoke;
  v14[3] = &unk_1E8258758;
  v14[4] = self;
  v12 = v7;
  v15 = v12;
  [v11 enumerateKeysAndObjectsUsingBlock:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __87__EDThreadPersistence__iterateWrappedMessagesByConversationForPersistedMessages_block___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v17 = a3;
  v6 = [*(a1 + 32) threadScopeManager];
  [v6 databaseIDForThreadScope:v5];

  v7 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __87__EDThreadPersistence__iterateWrappedMessagesByConversationForPersistedMessages_block___block_invoke_2;
  v23[3] = &unk_1E82586E0;
  v8 = v7;
  v24 = v8;
  v9 = [v17 ef_groupBy:v23];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v10)
  {
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v9 objectForKeyedSubscript:v13];
        v15 = [objc_alloc(MEMORY[0x1E699AEF8]) initWithConversationID:objc_msgSend(v13 threadScope:{"longLongValue"), v5}];
        (*(*(a1 + 40) + 16))();
      }

      v10 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x1E69E9840];
}

id __87__EDThreadPersistence__iterateWrappedMessagesByConversationForPersistedMessages_block___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [a2 message];
  v5 = [v3 numberWithLongLong:{objc_msgSend(v4, "conversationID")}];

  [*(a1 + 32) addObject:v5];

  return v5;
}

- (id)_wrappedMessagesByThreadScopeForPersistedMessages:(id)a3 messageFilter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (!v7)
  {
    v7 = &__block_literal_global_492;
  }

  v9 = [(EDThreadPersistence *)self _persistedMessagesByPossibleThreadScopeForPersistedMessages:v6];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __87__EDThreadPersistence__wrappedMessagesByThreadScopeForPersistedMessages_messageFilter___block_invoke_2;
  v15[3] = &unk_1E82587A0;
  v15[4] = self;
  v10 = v7;
  v17 = v10;
  v11 = v8;
  v16 = v11;
  [v9 enumerateKeysAndObjectsUsingBlock:v15];
  v12 = v16;
  v13 = v11;

  return v11;
}

void __87__EDThreadPersistence__wrappedMessagesByThreadScopeForPersistedMessages_messageFilter___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 48);
  v8 = v5;
  v7 = [*(a1 + 32) _wrappedMessageForPersistedMessages:a3 threadScope:? messageFilter:?];
  if ([v7 count])
  {
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v8];
  }
}

- (id)_persistedMessagesByPossibleThreadScopeForPersistedMessages:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [(EDThreadPersistence *)self messagePersistence];
  v38 = [v5 mailboxPersistence];

  v6 = [(EDThreadPersistence *)self threadScopeManager];
  v30 = [v6 threadScopes];

  v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v29;
  v34 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v34)
  {
    v33 = *v48;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v48 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v47 + 1) + 8 * i);
        v8 = [v7 mailbox];
        if (v8)
        {
          v9 = [v32 objectForKeyedSubscript:v8];
          v35 = v8;
          if (!v9)
          {
            v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v10 = objc_alloc(MEMORY[0x1E699AD20]);
            v11 = [v35 URL];
            v12 = [v10 initWithURL:v11];

            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v13 = v30;
            v14 = [v13 countByEnumeratingWithState:&v43 objects:v52 count:16];
            if (v14)
            {
              v15 = *v44;
              do
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v44 != v15)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v17 = *(*(&v43 + 1) + 8 * j);
                  v18 = [v17 mailboxScope];
                  v19 = [v18 scopeContainsMailboxObjectID:v12 mailboxTypeResolver:v38];

                  if (v19)
                  {
                    [v37 addObject:v17];
                  }
                }

                v14 = [v13 countByEnumeratingWithState:&v43 objects:v52 count:16];
              }

              while (v14);
            }

            [v32 setObject:v37 forKeyedSubscript:v35];
            v9 = v37;
          }

          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v20 = v9;
          v21 = [v20 countByEnumeratingWithState:&v39 objects:v51 count:16];
          if (v21)
          {
            v22 = *v40;
            do
            {
              for (k = 0; k != v21; ++k)
              {
                if (*v40 != v22)
                {
                  objc_enumerationMutation(v20);
                }

                v24 = *(*(&v39 + 1) + 8 * k);
                v25 = [v4 objectForKeyedSubscript:v24];
                v26 = v25;
                if (v25)
                {
                  [v25 addObject:v7];
                }

                else
                {
                  v26 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v7, 0}];
                  [v4 setObject:v26 forKeyedSubscript:v24];
                }
              }

              v21 = [v20 countByEnumeratingWithState:&v39 objects:v51 count:16];
            }

            while (v21);
          }

          v8 = v35;
        }
      }

      v34 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v34);
  }

  v27 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_wrappedMessageForPersistedMessages:(id)a3 threadScope:(id)a4 messageFilter:(id)a5
{
  v53 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v36 = a4;
  v35 = a5;
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v47 objects:v52 count:{16, v8}];
  if (v10)
  {
    v11 = *v48;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v48 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v47 + 1) + 8 * i);
        v14 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v13, "globalMessageID")}];
        v15 = [v9 objectForKeyedSubscript:v14];
        v16 = v15 == 0;

        if (v16)
        {
          v17 = [v13 persistentID];
          [v9 setObject:v17 forKeyedSubscript:v14];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v10);
  }

  v18 = [(EDThreadPersistence *)self messagePersistence];
  v19 = [v36 mailboxScope];
  v37 = [v18 messagesForPersistedMessages:obj mailboxScope:v19];

  v20 = [v36 filterPredicate];
  v34 = v20;
  if (v20)
  {
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __85__EDThreadPersistence__wrappedMessageForPersistedMessages_threadScope_messageFilter___block_invoke;
    v44[3] = &unk_1E82587C8;
    v46 = v35;
    v45 = v20;
    v21 = [v37 ef_filter:v44];

    v37 = v21;
  }

  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = v37;
  v23 = [v38 countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (v23)
  {
    v24 = *v41;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v41 != v24)
        {
          objc_enumerationMutation(v38);
        }

        v26 = *(*(&v40 + 1) + 8 * j);
        v27 = [v26 objectID];
        v28 = [_EDWrappedMessage alloc];
        v29 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v27, "globalMessageID")}];
        v30 = [v9 objectForKeyedSubscript:v29];
        v31 = -[_EDWrappedMessage initWithMessage:databaseID:](v28, "initWithMessage:databaseID:", v26, [v30 longLongValue]);

        [v22 addObject:v31];
      }

      v23 = [v38 countByEnumeratingWithState:&v40 objects:v51 count:16];
    }

    while (v23);
  }

  v32 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)_threadForWrappedMessages:(id)a3 objectID:(id)a4
{
  v6 = a4;
  v7 = [a3 ef_mapSelector:sel_message];
  v8 = [EDInMemoryThread alloc];
  v9 = [v6 threadScope];
  v10 = [(EDThreadPersistence *)self _threadQueryForThreadScope:v9];
  v11 = [v6 threadScope];
  v12 = [(EDInMemoryThread *)v8 initWithMessages:v7 originatingQuery:v10 threadScope:v11];

  v13 = [(EDInMemoryThread *)v12 thread];

  return v13;
}

- (id)_mailboxDatabaseIDsForWrappedMessages:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v18 + 1) + 8 * i) message];
        v11 = [v10 mailboxObjectIDs];
        [v5 addObjectsFromArray:v11];
      }

      v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v12 = [(EDThreadPersistence *)self messagePersistence];
  v13 = [v12 mailboxPersistence];
  v14 = [v13 mailboxDatabaseIDsForMailboxObjectIDs:v5 createIfNecessary:0];
  v15 = [v14 allObjects];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)_addKeyPathsForBasicPropertiesChangeToKeyPaths:(id)a3
{
  v10[8] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E699A888];
  v10[0] = *MEMORY[0x1E699A880];
  v10[1] = v4;
  v5 = *MEMORY[0x1E699A8A0];
  v10[2] = *MEMORY[0x1E699A958];
  v10[3] = v5;
  v6 = *MEMORY[0x1E699A8E8];
  v10[4] = *MEMORY[0x1E699A898];
  v10[5] = v6;
  v7 = *MEMORY[0x1E699A878];
  v10[6] = *MEMORY[0x1E699A8E0];
  v10[7] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:8];
  [v3 addObjectsFromArray:v8];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_addKeyPathsForDisplayMessageChangeToKeyPaths:(id)a3
{
  v7[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E699A9A8];
  v7[0] = *MEMORY[0x1E699A9A0];
  v7[1] = v4;
  v7[2] = *MEMORY[0x1E699A890];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  [v3 ef_addAbsentObjectsFromArrayAccordingToEquals:v5];

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)_updateNewestReadMessageWithWrappedMessage:(id)a3 threadExpression:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 message];
    v9 = [v8 date];

    v10 = [v6 databaseID];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v11 = [(EDThreadPersistence *)self database];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence _updateNewestReadMessageWithWrappedMessage:threadExpression:]"];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __83__EDThreadPersistence__updateNewestReadMessageWithWrappedMessage_threadExpression___block_invoke;
    v16[3] = &unk_1E8256738;
    v20 = v10;
    v13 = v9;
    v17 = v13;
    v18 = v7;
    v19 = &v21;
    [v11 __performWriteWithCaller:v12 usingBlock:v16];

    v14 = v22[3] != 0;
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __83__EDThreadPersistence__updateNewestReadMessageWithWrappedMessage_threadExpression___block_invoke(void *a1, void *a2)
{
  v29[2] = *MEMORY[0x1E69E9840];
  v26 = a2;
  v3 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"threads" conflictResolution:4];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:a1[7]];
  [v3 setObject:v4 forKeyedSubscript:@"newest_read_message"];

  v27 = +[EDMessagePersistence messagesTableName];
  v5 = objc_alloc(MEMORY[0x1E699B948]);
  v6 = +[EDMessagePersistence messagesDateReceivedColumnName];
  v7 = [v5 initWithResultColumn:v6 table:v27];

  v8 = [MEMORY[0x1E699B8C8] table:v27 column:*MEMORY[0x1E699B768]];
  v9 = [MEMORY[0x1E699B8C8] table:@"threads" column:@"newest_read_message"];
  v10 = [v8 equalTo:v9];
  [v7 setWhere:v10];

  v11 = objc_alloc(MEMORY[0x1E699B928]);
  v12 = [MEMORY[0x1E699B8C8] column:@"newest_read_message"];
  v13 = [v12 isNull];
  v29[0] = v13;
  v14 = objc_alloc(MEMORY[0x1E699B8A8]);
  v15 = a1[4];
  v16 = [v7 ef_SQLIsolatedExpression];
  v17 = [v14 initWithLeft:v15 operator:2 right:v16];
  v29[1] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v19 = [v11 initWithExpressions:v18];

  v20 = objc_alloc(MEMORY[0x1E699B898]);
  v28[0] = a1[5];
  v28[1] = v19;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v22 = [v20 initWithExpressions:v21];
  [v3 setWhereClause:v22];

  v23 = [v26 executeUpdateStatement:v3 rowsChanged:*(a1[6] + 8) + 24];
  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (BOOL)_recalculateNewestMessageForThreadObjectID:(id)a3 threadScopeDatabaseID:(int64_t)a4
{
  v6 = a3;
  v7 = +[EDMessagePersistence messagesTableName];
  v8 = [(EDThreadPersistence *)self _messageThreadExpressionForThreadObjectID:v6];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v9 = [(EDThreadPersistence *)self database];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence _recalculateNewestMessageForThreadObjectID:threadScopeDatabaseID:]"];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __88__EDThreadPersistence__recalculateNewestMessageForThreadObjectID_threadScopeDatabaseID___block_invoke;
  v15[3] = &unk_1E82587F0;
  v15[4] = self;
  v20 = a4;
  v11 = v6;
  v16 = v11;
  v12 = v7;
  v17 = v12;
  v13 = v8;
  v18 = v13;
  v19 = &v21;
  [v9 __performWriteWithCaller:v10 usingBlock:v15];

  LOBYTE(v6) = v22[3] != 0;
  _Block_object_dispose(&v21, 8);

  return v6;
}

uint64_t __88__EDThreadPersistence__recalculateNewestMessageForThreadObjectID_threadScopeDatabaseID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _upsertForThreadsWithThreadScopeDatabaseID:*(a1 + 72) conversation:{objc_msgSend(*(a1 + 40), "conversationID")}];
  v5 = objc_alloc(MEMORY[0x1E699B948]);
  v6 = [v5 initWithResultColumn:*MEMORY[0x1E699B768] table:*(a1 + 48)];
  [v6 setWhere:*(a1 + 56)];
  v7 = +[EDMessagePersistence messagesDateReceivedColumnName];
  [v6 orderByColumn:v7 ascending:0];

  [v6 setLimit:1];
  [v4 setObject:v6 forKeyedSubscript:@"newest_message"];
  v8 = [v4 excludedColumnExpressionForColumnName:@"newest_message"];
  v9 = [MEMORY[0x1E699B8C8] column:@"newest_message"];
  v10 = [v9 isNot:v8];
  [v4 setWhereClause:v10];

  v11 = [v3 executeUpsertStatement:v4 rowsChanged:*(*(a1 + 64) + 8) + 24];
  return v11;
}

- (BOOL)_recalculateNewestReadMessageForThreadObjectID:(id)a3 threadScopeDatabaseID:(int64_t)a4
{
  v6 = a3;
  v7 = +[EDMessagePersistence messagesTableName];
  v8 = [(EDThreadPersistence *)self _messageThreadExpressionForThreadObjectID:v6];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v9 = [(EDThreadPersistence *)self database];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence _recalculateNewestReadMessageForThreadObjectID:threadScopeDatabaseID:]"];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __92__EDThreadPersistence__recalculateNewestReadMessageForThreadObjectID_threadScopeDatabaseID___block_invoke;
  v15[3] = &unk_1E82587F0;
  v15[4] = self;
  v20 = a4;
  v11 = v6;
  v16 = v11;
  v12 = v7;
  v17 = v12;
  v13 = v8;
  v18 = v13;
  v19 = &v21;
  [v9 __performWriteWithCaller:v10 usingBlock:v15];

  LOBYTE(v6) = v22[3] != 0;
  _Block_object_dispose(&v21, 8);

  return v6;
}

uint64_t __92__EDThreadPersistence__recalculateNewestReadMessageForThreadObjectID_threadScopeDatabaseID___block_invoke(uint64_t a1, void *a2)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _upsertForThreadsWithThreadScopeDatabaseID:*(a1 + 72) conversation:{objc_msgSend(*(a1 + 40), "conversationID")}];
  v5 = objc_alloc(MEMORY[0x1E699B948]);
  v6 = [v5 initWithResultColumn:*MEMORY[0x1E699B768] table:*(a1 + 48)];
  v7 = [MEMORY[0x1E699B8C8] column:@"read"];
  v8 = [v7 equalTo:&unk_1F45E6C10];

  v9 = objc_alloc(MEMORY[0x1E699B898]);
  v19[0] = *(a1 + 56);
  v19[1] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v11 = [v9 initWithExpressions:v10];
  [v6 setWhere:v11];

  v12 = +[EDMessagePersistence messagesDateReceivedColumnName];
  [v6 orderByColumn:v12 ascending:0];

  [v6 setLimit:1];
  [v4 setObject:v6 forKeyedSubscript:@"newest_read_message"];
  v13 = [v4 excludedColumnExpressionForColumnName:@"newest_read_message"];
  v14 = [MEMORY[0x1E699B8C8] column:@"newest_read_message"];
  v15 = [v14 isNot:v13];
  [v4 setWhereClause:v15];

  v16 = [v3 executeUpsertStatement:v4 rowsChanged:*(*(a1 + 64) + 8) + 24];
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)_recalculateDisplayMessageForThreadObjectID:(id)a3 threadScopeDatabaseID:(int64_t)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[EDMessagePersistence messagesTableName];
  v8 = [v6 conversationID];
  v9 = [(EDThreadPersistence *)self _threadExpressionForThreadScopeDatabaseID:a4 conversation:v8];
  v10 = [(EDThreadPersistence *)self _messageThreadExpressionForThreadObjectID:v6];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v11 = [(EDThreadPersistence *)self database];
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence _recalculateDisplayMessageForThreadObjectID:threadScopeDatabaseID:]"];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __89__EDThreadPersistence__recalculateDisplayMessageForThreadObjectID_threadScopeDatabaseID___block_invoke;
  v20[3] = &unk_1E8258500;
  v20[4] = self;
  v25 = a4;
  v26 = v8;
  v13 = v7;
  v21 = v13;
  v14 = v9;
  v22 = v14;
  v15 = v10;
  v23 = v15;
  v24 = &v27;
  [v11 __performWriteWithCaller:v12 usingBlock:v20];

  if (v28[3])
  {
    v16 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v32 = v8;
      _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "Thread with conversationID %lld display message updated", buf, 0xCu);
    }

    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(EDThreadPersistence *)self _addKeyPathsForDisplayMessageChangeToKeyPaths:v17];
    if ([(EDThreadPersistence *)self setPriorityForDisplayMessageSenderForThreadObjectID:v6])
    {
      [v17 ef_addObjectIfAbsent:*MEMORY[0x1E699A990]];
    }
  }

  else
  {
    v17 = MEMORY[0x1E695E0F0];
  }

  _Block_object_dispose(&v27, 8);
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

uint64_t __89__EDThreadPersistence__recalculateDisplayMessageForThreadObjectID_threadScopeDatabaseID___block_invoke(uint64_t a1, void *a2)
{
  v29[2] = *MEMORY[0x1E69E9840];
  v27 = a2;
  v3 = [*(a1 + 32) _upsertForThreadsWithThreadScopeDatabaseID:*(a1 + 72) conversation:*(a1 + 80)];
  v4 = objc_alloc(MEMORY[0x1E699B948]);
  v5 = +[EDMessagePersistence messagesDateReceivedColumnName];
  v6 = [v4 initWithResultColumn:v5 table:*(a1 + 40)];

  v7 = *MEMORY[0x1E699B768];
  v8 = [v6 join:@"threads" sourceColumn:*MEMORY[0x1E699B768] targetColumn:@"newest_read_message"];
  [v6 setWhere:*(a1 + 48)];
  v28 = [MEMORY[0x1E699B8F8] ifNull:v6 second:&unk_1F45E6BF8];
  v9 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:v7 table:*(a1 + 40)];
  v10 = MEMORY[0x1E699B8C8];
  v11 = *(a1 + 40);
  v12 = +[EDMessagePersistence messagesDateReceivedColumnName];
  v13 = [v10 table:v11 column:v12];
  v14 = [v13 greaterThan:v28];

  v15 = objc_alloc(MEMORY[0x1E699B898]);
  v29[0] = *(a1 + 56);
  v29[1] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v17 = [v15 initWithExpressions:v16];
  [v9 setWhere:v17];

  v18 = +[EDMessagePersistence messagesDateReceivedColumnName];
  [v9 orderByColumn:v18 ascending:1];

  [v9 setLimit:1];
  v19 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"newest_read_message" table:@"threads"];
  [v19 setWhere:*(a1 + 48)];
  v20 = [MEMORY[0x1E699B8F8] ifNull:v9 second:v19];
  [v3 setObject:v20 forKeyedSubscript:@"display_message"];

  v21 = [v3 excludedColumnExpressionForColumnName:@"display_message"];
  v22 = [MEMORY[0x1E699B8C8] column:@"display_message"];
  v23 = [v22 isNot:v21];
  [v3 setWhereClause:v23];

  v24 = [v27 executeUpsertStatement:v3 rowsChanged:*(*(a1 + 64) + 8) + 24];
  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

- (BOOL)setPriorityForDisplayMessageSenderForThreadObjectID:(id)a3
{
  v4 = a3;
  v5 = +[EDMessagePersistence messagesTableName];
  v6 = [(EDThreadPersistence *)self _databaseIDForThreadObjectID:v4];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v7 = [(EDThreadPersistence *)self database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence setPriorityForDisplayMessageSenderForThreadObjectID:]"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__EDThreadPersistence_setPriorityForDisplayMessageSenderForThreadObjectID___block_invoke;
  v11[3] = &unk_1E82549F0;
  v14 = v6;
  v9 = v5;
  v12 = v9;
  v13 = &v15;
  [v7 __performWriteWithCaller:v8 usingBlock:v11];

  LOBYTE(v5) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return v5;
}

uint64_t __75__EDThreadPersistence_setPriorityForDisplayMessageSenderForThreadObjectID___block_invoke(void *a1, void *a2)
{
  v50[2] = *MEMORY[0x1E69E9840];
  v37 = a2;
  v3 = [MEMORY[0x1E699B8C8] column:@"thread"];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:a1[6]];
  v5 = [v3 equalTo:v4];

  v6 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"address" table:@"thread_senders"];
  v7 = [MEMORY[0x1E699B8C8] column:@"priority"];
  v36 = [v7 equalTo:&unk_1F45E6D60];

  v8 = objc_alloc(MEMORY[0x1E699B898]);
  v50[0] = v5;
  v50[1] = v36;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
  v10 = [v8 initWithExpressions:v9];
  [v6 setWhere:v10];

  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v11 = *MEMORY[0x1E699A728];
  v47 = *MEMORY[0x1E699A728];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __75__EDThreadPersistence_setPriorityForDisplayMessageSenderForThreadObjectID___block_invoke_500;
  v43[3] = &unk_1E8250418;
  v43[4] = &v44;
  if ([v37 executeSelectStatement:v6 withBlock:v43 error:0])
  {
    v35 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"display_message" table:@"threads"];
    v12 = *MEMORY[0x1E699B768];
    v13 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
    v14 = [MEMORY[0x1E696AD98] numberWithLongLong:a1[6]];
    v15 = [v13 equalTo:v14];
    [v35 setWhere:v15];

    v16 = objc_alloc(MEMORY[0x1E699B948]);
    v17 = +[EDMessagePersistence messagesSenderColumnName];
    v18 = [v16 initWithResultColumn:v17 table:a1[4]];

    v19 = [MEMORY[0x1E699B8C8] column:v12];
    v20 = [v19 in:v35];
    [v18 setWhere:v20];

    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = v11;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __75__EDThreadPersistence_setPriorityForDisplayMessageSenderForThreadObjectID___block_invoke_2;
    v38[3] = &unk_1E8250418;
    v38[4] = &v39;
    if ([v37 executeSelectStatement:v18 withBlock:v38 error:0])
    {
      v21 = 1;
      if (v45[3] != v40[3])
      {
        *(*(a1[5] + 8) + 24) = 1;
        v22 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"thread_senders"];
        [v22 setObject:&unk_1F45E6D78 forKeyedSubscript:@"priority"];
        v23 = objc_alloc(MEMORY[0x1E699B898]);
        v49[0] = v5;
        v49[1] = v36;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
        v25 = [v23 initWithExpressions:v24];
        [v22 setWhereClause:v25];

        if ([v37 executeUpdateStatement:v22 error:0])
        {
          v26 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"thread_senders"];
          [v26 setObject:&unk_1F45E6D60 forKeyedSubscript:@"priority"];
          v27 = [MEMORY[0x1E699B8C8] column:@"address"];
          v28 = [MEMORY[0x1E696AD98] numberWithLongLong:v40[3]];
          v29 = [v27 equalTo:v28];

          v30 = objc_alloc(MEMORY[0x1E699B898]);
          v48[0] = v5;
          v48[1] = v29;
          v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
          v32 = [v30 initWithExpressions:v31];
          [v26 setWhereClause:v32];

          v21 = [v37 executeUpdateStatement:v26 error:0];
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 0;
    }

    _Block_object_dispose(&v39, 8);
  }

  else
  {
    v21 = 0;
  }

  _Block_object_dispose(&v44, 8);

  v33 = *MEMORY[0x1E69E9840];
  return v21;
}

void __75__EDThreadPersistence_setPriorityForDisplayMessageSenderForThreadObjectID___block_invoke_500(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v6 = [v7 objectAtIndexedSubscript:0];
  *(*(*(a1 + 32) + 8) + 24) = [v6 databaseIDValue];

  *a4 = 1;
}

void __75__EDThreadPersistence_setPriorityForDisplayMessageSenderForThreadObjectID___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v6 = [v7 objectAtIndexedSubscript:0];
  *(*(*(a1 + 32) + 8) + 24) = [v6 databaseIDValue];

  *a4 = 1;
}

- (id)_threadDatabaseIDExpressionForThreadScopeDatabaseID:(int64_t)a3 conversation:(int64_t)a4
{
  v7 = objc_alloc(MEMORY[0x1E699B948]);
  v8 = [v7 initWithResultColumn:*MEMORY[0x1E699B768] table:@"threads"];
  v9 = [(EDThreadPersistence *)self _threadExpressionForThreadScopeDatabaseID:a3 conversation:a4];
  [v8 setWhere:v9];

  [v8 setLimit:1];

  return v8;
}

- (id)_threadExpressionForThreadScopeDatabaseID:(int64_t)a3 conversation:(int64_t)a4
{
  v17[2] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E699B8C8] table:@"threads" column:@"scope"];
  v7 = [MEMORY[0x1E699B8C8] table:@"threads" column:@"conversation"];
  v8 = objc_alloc(MEMORY[0x1E699B898]);
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v10 = [v6 equalTo:v9];
  v17[0] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:a4];
  v12 = [v7 equalTo:v11];
  v17[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v14 = [v8 initWithExpressions:v13];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_upsertForThreadsWithThreadScopeDatabaseID:(int64_t)a3 conversation:(int64_t)a4
{
  v15[2] = *MEMORY[0x1E69E9840];
  v6 = objc_alloc(MEMORY[0x1E699B968]);
  v15[0] = @"scope";
  v15[1] = @"conversation";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v8 = [v6 initWithTable:@"threads" conflictTarget:v7];

  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  [v8 setObject:v9 forKeyedSubscript:@"scope"];

  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:a4];
  [v8 setObject:v10 forKeyedSubscript:@"conversation"];

  v11 = [v8 insertValue];
  [v11 setObject:&unk_1F45E6BF8 forKeyedSubscript:@"date"];

  v12 = [v8 insertValue];
  [v12 setObject:&unk_1F45E6BF8 forKeyedSubscript:@"count"];

  v13 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_updateForThreadsWithThreadScopeDatabaseID:(int64_t)a3 conversation:(int64_t)a4
{
  v18[2] = *MEMORY[0x1E69E9840];
  v6 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"threads"];
  v7 = objc_alloc(MEMORY[0x1E699B898]);
  v8 = [MEMORY[0x1E699B8C8] column:@"scope"];
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v10 = [v8 equalTo:v9];
  v18[0] = v10;
  v11 = [MEMORY[0x1E699B8C8] column:@"conversation"];
  v12 = [MEMORY[0x1E696AD98] numberWithLongLong:a4];
  v13 = [v11 equalTo:v12];
  v18[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v15 = [v7 initWithExpressions:v14];
  [v6 setWhereClause:v15];

  v16 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_countMessagesForExpression:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v5 = [MEMORY[0x1E699B8C8] column:@"message_id"];
  v6 = MEMORY[0x1E699B8F8];
  v7 = [v4 concatenate:@"-fake-message-id"];
  v8 = [v6 ifNull:v5 second:v7];

  v9 = [MEMORY[0x1E699B890] countDistinct:v8];
  v10 = objc_alloc(MEMORY[0x1E699B948]);
  v11 = +[EDMessagePersistence messagesTableName];
  v12 = [v10 initWithResult:v9 table:v11];

  [v12 setWhere:v3];

  return v12;
}

- (id)_messageThreadExpressionForThreadObjectID:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E699B8C8] column:@"conversation_id"];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v4, "conversationID")}];
  v7 = [v5 equalTo:v6];

  v8 = [v4 threadScope];
  v9 = [(EDThreadPersistence *)self _messageThreadExpressionForThreadScope:v8 conversationExpression:v7];

  return v9;
}

- (id)_messageThreadExpressionForThreadScope:(id)a3 objectIDs:(id)a4
{
  v6 = a3;
  v7 = [a4 ef_map:&__block_literal_global_511];
  v8 = [MEMORY[0x1E699B8C8] column:@"conversation_id"];
  v9 = [v8 in:v7];

  v10 = [(EDThreadPersistence *)self _messageThreadExpressionForThreadScope:v6 conversationExpression:v9];

  return v10;
}

id __72__EDThreadPersistence__messageThreadExpressionForThreadScope_objectIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v2, "conversationID")}];

  return v3;
}

- (id)_messageThreadExpressionForThreadScope:(id)a3 conversationExpression:(id)a4
{
  v20[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(EDThreadPersistence *)self _expressionForThreadScope:v6];
  v9 = MEMORY[0x1E699B8F8];
  v10 = MEMORY[0x1E699B8C8];
  v11 = +[EDMessagePersistence messagesTableName];
  v12 = [v10 table:v11 column:@"deleted"];
  v13 = [v12 equalTo:&unk_1F45E6BF8];
  v14 = [v9 likely:v13];

  v15 = objc_alloc(MEMORY[0x1E699B898]);
  v20[0] = v14;
  v20[1] = v7;
  v20[2] = v8;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  v17 = [v15 initWithExpressions:v16];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_expressionForThreadScope:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 filterPredicate];
  v6 = [(EDThreadPersistence *)self _messageFilterExpressionForFilterPredicate:v5];

  if (v6)
  {
    v7 = [v4 mailboxScope];
    v8 = [MEMORY[0x1E699AD28] allMailboxesScope];

    if (v7 == v8)
    {
      v12 = v6;
    }

    else
    {
      v9 = [(EDThreadPersistence *)self _messageMailboxesExpressionForMailboxScope:v7];
      v10 = objc_alloc(MEMORY[0x1E699B898]);
      v16[0] = v9;
      v16[1] = v6;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
      v12 = [v10 initWithExpressions:v11];
    }
  }

  else
  {
    v13 = [v4 mailboxScope];
    v12 = [(EDThreadPersistence *)self _messageMailboxesExpressionForMailboxScope:v13];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_messageMailboxesExpressionForMailboxScope:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E699AD28] allMailboxesScope];

  if (v6 == v5)
  {
    v10 = MEMORY[0x1E695E118];
  }

  else
  {
    v13 = 0;
    v7 = [(EDThreadPersistence *)self messagePersistence];
    v8 = [v7 mailboxPersistence];
    v9 = [v5 allMailboxObjectIDsWithMailboxTypeResolver:v8 forExclusion:&v13];

    if (v13 == 1)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"EDThreadPersistence.m" lineNumber:3224 description:@"Mailbox scope for pre-computed threads should never be for exclusion."];
    }

    v10 = [(EDThreadPersistence *)self _messageMailboxesExpressionForMailboxObjectIDs:v9];
  }

  return v10;
}

- (id)_messageMailboxesExpressionForMailboxType:(int64_t)a3
{
  v5 = [(EDThreadPersistence *)self messagePersistence];
  v6 = [v5 mailboxPersistence];
  v7 = [v6 mailboxObjectIDsForMailboxType:a3];

  v8 = [(EDThreadPersistence *)self _messageMailboxesExpressionForMailboxObjectIDs:v7];

  return v8;
}

- (id)_messageMailboxesExpressionForMailboxObjectIDs:(id)a3
{
  v4 = a3;
  v5 = [(EDThreadPersistence *)self messagePersistence];
  v6 = [v5 mailboxPersistence];
  v7 = [v6 mailboxDatabaseIDsForMailboxObjectIDs:v4 createIfNecessary:0];

  v8 = [MEMORY[0x1E699B8C8] column:@"mailbox"];
  v9 = [v8 in:v7];

  return v9;
}

- (id)_messageMailboxesExpressionForAccountObjectIDs:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [(EDThreadPersistence *)self messagePersistence];
  v7 = [v6 mailboxPersistence];
  v8 = [v7 allMailboxes];

  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [v12 accountIdentifier];
        v14 = [v4 containsObject:v13];

        if (v14)
        {
          v15 = [v12 objectID];
          [v5 addObject:v15];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  v16 = [(EDThreadPersistence *)self messagePersistence];
  v17 = [v16 mailboxPersistence];
  v18 = [v17 mailboxDatabaseIDsForMailboxObjectIDs:v5 createIfNecessary:0];

  v19 = [MEMORY[0x1E699B8C8] column:@"mailbox"];
  v20 = [v19 in:v18];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)_messageActiveFollowUpExpressionForSentMailboxObjectIDs:(id)a3
{
  v30[3] = *MEMORY[0x1E69E9840];
  v28 = a3;
  v4 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"follow_up_start_date" table:@"message_global_data"];
  v5 = *MEMORY[0x1E699B768];
  v6 = [MEMORY[0x1E699B8C8] table:@"message_global_data" column:*MEMORY[0x1E699B768]];
  v7 = MEMORY[0x1E699B8C8];
  v8 = +[EDMessagePersistence messagesTableName];
  v9 = [v7 table:v8 column:@"global_message_id"];
  v10 = [v6 equalTo:v9];
  [v4 setWhere:v10];

  [v4 setLimit:1];
  v11 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"follow_up_end_date" table:@"message_global_data"];
  v12 = [MEMORY[0x1E699B8C8] table:@"message_global_data" column:v5];
  v13 = MEMORY[0x1E699B8C8];
  v14 = +[EDMessagePersistence messagesTableName];
  v15 = [v13 table:v14 column:@"global_message_id"];
  v16 = [v12 equalTo:v15];
  [v11 setWhere:v16];

  [v11 setLimit:1];
  v17 = [MEMORY[0x1E699B8C8] column:@"display_date"];
  v18 = [v17 greaterThan:v4];
  v19 = [v17 lessThan:v11];
  if ([v28 count] && (-[EDThreadPersistence _messageMailboxesExpressionForMailboxObjectIDs:](self, "_messageMailboxesExpressionForMailboxObjectIDs:", v28), v20 = objc_claimAutoreleasedReturnValue(), (v21 = v20) != 0))
  {
    v22 = MEMORY[0x1E699B898];
    v30[0] = v18;
    v30[1] = v19;
    v30[2] = v20;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];
    v24 = [v22 combined:v23];
  }

  else
  {
    v25 = MEMORY[0x1E699B898];
    v29[0] = v18;
    v29[1] = v19;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    v24 = [v25 combined:v21];
  }

  v26 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)_selectFromMessageGlobalDataColumn:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:v3 table:@"message_global_data"];
  v5 = [MEMORY[0x1E699B8C8] table:@"message_global_data" column:*MEMORY[0x1E699B768]];
  v6 = MEMORY[0x1E699B8C8];
  v7 = +[EDMessagePersistence messagesTableName];
  v8 = [v6 table:v7 column:@"global_message_id"];
  v9 = [v5 equalTo:v8];
  [v4 setWhere:v9];

  [v4 setLimit:1];

  return v4;
}

- (id)_messageFiredReadLaterExpression:(id)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EDThreadPersistence *)self _selectFromMessageGlobalDataColumn:@"read_later_date"];
  v6 = [MEMORY[0x1E699B8C8] column:@"display_date"];
  v7 = [v6 greaterThanEqualTo:v5];
  if ([v4 count] && (-[EDThreadPersistence _messageMailboxesExpressionForAccountObjectIDs:](self, "_messageMailboxesExpressionForAccountObjectIDs:", v4), v8 = objc_claimAutoreleasedReturnValue(), (v9 = v8) != 0))
  {
    v10 = MEMORY[0x1E699B898];
    v17[0] = v7;
    v17[1] = v8;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v12 = [v10 combined:v11];
  }

  else
  {
    v13 = MEMORY[0x1E699B898];
    v16 = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    v12 = [v13 combined:v9];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_expressionFromSelect:(id)a3 equalTo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x1E699B8A8]);
  v8 = [v5 ef_SQLIsolatedExpression];
  v9 = [MEMORY[0x1E695DFB0] null];
  v10 = [v6 ef_SQLIsolatedExpression];
  if (v9 == v6)
  {
    v11 = 12;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v7 initWithLeft:v8 operator:v11 right:v10];

  return v12;
}

- (id)_expressionForCategoryType:(unint64_t)a3
{
  v26[3] = *MEMORY[0x1E69E9840];
  v4 = [(EDThreadPersistence *)self _selectFromMessageGlobalDataColumn:@"model_category"];
  v5 = objc_alloc(MEMORY[0x1E699B948]);
  v6 = +[EDBusinessPersistence businessAddressesCategoryColumnName];
  v7 = +[EDBusinessPersistence businessAddressesTableName];
  v8 = [v5 initWithResultColumn:v6 table:v7];

  v9 = MEMORY[0x1E699B8C8];
  v10 = +[EDBusinessPersistence businessAddressesTableName];
  v11 = +[EDBusinessPersistence businessAddressesAddressColumnName];
  v12 = [v9 table:v10 column:v11];
  v13 = MEMORY[0x1E699B8C8];
  v14 = +[EDMessagePersistence messagesTableName];
  v15 = +[EDMessagePersistence messagesSenderColumnName];
  v16 = [v13 table:v14 column:v15];
  v17 = [v12 equalTo:v16];
  [v8 setWhere:v17];

  [v8 setLimit:1];
  v18 = MEMORY[0x1E699B8F8];
  v26[0] = v8;
  v26[1] = v4;
  v26[2] = &unk_1F45E6CA0;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];
  v20 = [v18 coalesce:v19];

  v21 = objc_alloc(MEMORY[0x1E699B8A8]);
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v23 = [v21 initWithLeft:v20 operator:0 right:v22];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)_senderAddressesExpressionForMessages:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E699B948]);
  v5 = +[EDMessagePersistence messagesSenderColumnName];
  v6 = +[EDMessagePersistence messagesTableName];
  v7 = [v4 initWithResultColumn:v5 table:v6];

  [v7 setWhere:v3];

  return v7;
}

- (id)_recipientAddressesExpressionForRecipientType:(unint64_t)a3 messages:(id)a4
{
  v17[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"address" table:@"recipients"];
  v7 = +[EDMessagePersistence messagesTableName];
  v8 = [v6 join:v7 sourceColumn:@"message" targetColumn:*MEMORY[0x1E699B768]];

  v9 = objc_alloc(MEMORY[0x1E699B898]);
  v17[0] = v5;
  v10 = [MEMORY[0x1E699B8C8] table:@"recipients" column:@"type"];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v12 = [v10 equalTo:v11];
  v17[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v14 = [v9 initWithExpressions:v13];
  [v6 setWhere:v14];

  v15 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_messageFilterExpressionForFilterPredicate:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v12 = 0;
    goto LABEL_22;
  }

  v5 = [(EDThreadPersistence *)self messagePersistence];
  v6 = [v5 mailboxPersistence];
  v7 = [v6 mailboxProvider];

  v36 = 0;
  v34 = 0;
  v35 = -500;
  v8 = [MEMORY[0x1E699ADA0] isPredicateForMessagesInMailboxObjectID:v4 mailboxObjectID:&v34];
  v9 = v34;
  v10 = v9;
  if (!v8)
  {
    if ([MEMORY[0x1E699ADA0] isPredicateForMessagesInMailboxWithType:v4 mailboxType:&v35])
    {
      if (v35 != -500)
      {
        v13 = 0;
        v12 = [(EDThreadPersistence *)self _messageMailboxesExpressionForMailboxType:?];
        v14 = 0;
        goto LABEL_21;
      }

      goto LABEL_8;
    }

    v33 = 0;
    v15 = [MEMORY[0x1E699ADA0] isPredicateForMessagesWithActiveFollowUp:v4 mailboxTypeResolver:v7 inSent:&v36 sentMailboxObjectIDs:&v33];
    v16 = v33;
    v13 = v16;
    if (v15)
    {
      if (v36 == 1 && ![v16 count])
      {
        v17 = [v7 mailboxObjectIDsForMailboxType:4];

        v13 = v17;
      }

      v14 = 0;
      v18 = [(EDThreadPersistence *)self _messageActiveFollowUpExpressionForSentMailboxObjectIDs:v13];
      goto LABEL_20;
    }

    v32 = 0;
    v19 = [MEMORY[0x1E699ADA0] isPredicateForMessagesWithFiredReadLaterDate:v4 accountObjectIDs:&v32];
    v14 = v32;
    if (v19)
    {
      v18 = [(EDThreadPersistence *)self _messageFiredReadLaterExpression:v14];
LABEL_20:
      v12 = v18;
      goto LABEL_21;
    }

    v20 = [MEMORY[0x1E699ADA0] predicateForPrimaryMessages];
    v21 = [v4 isEqual:v20];

    if (v21)
    {
      v18 = [(EDThreadPersistence *)self _expressionForPredicateForPrimaryMessages];
      goto LABEL_20;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    v23 = v4;
    v12 = [v23 subpredicates];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __66__EDThreadPersistence__messageFilterExpressionForFilterPredicate___block_invoke;
    v31[3] = &unk_1E8258818;
    v31[4] = self;
    v24 = [v12 ef_compactMap:v31];

    v25 = [v23 compoundPredicateType];
    if (v25)
    {
      if (v25 != 1)
      {
        if (v25 != 2)
        {
          v30 = 1;
LABEL_38:

          if ((v30 & 1) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_9;
        }

        v26 = 0x1E699B928;
        goto LABEL_35;
      }
    }

    else if ([v24 count] >= 2)
    {
      v27 = +[EDThreadPersistence log];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [EDThreadPersistence _messageFilterExpressionForFilterPredicate:];
      }

      v28 = objc_alloc(MEMORY[0x1E699B918]);
      v29 = [v24 firstObject];
      v12 = [v28 initWithExpression:v29];

      goto LABEL_36;
    }

    v26 = 0x1E699B898;
LABEL_35:
    v12 = [*v26 combined:v24];
LABEL_36:
    v30 = 0;
    goto LABEL_38;
  }

  if (!v9)
  {
LABEL_8:
    v13 = 0;
    v14 = 0;
LABEL_9:
    v12 = 0;
    goto LABEL_21;
  }

  v11 = [MEMORY[0x1E695DFD8] setWithObject:v9];
  v12 = [(EDThreadPersistence *)self _messageMailboxesExpressionForMailboxObjectIDs:v11];

  v13 = 0;
  v14 = 0;
LABEL_21:

LABEL_22:

  return v12;
}

id __66__EDThreadPersistence__messageFilterExpressionForFilterPredicate___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _messageFilterExpressionForFilterPredicate:a2];

  return v2;
}

- (id)_messageIsNotDeletedExpression
{
  v2 = MEMORY[0x1E699B8C8];
  v3 = +[EDMessagePersistence messagesTableName];
  v4 = [v2 table:v3 column:@"deleted"];

  v5 = [v4 equalTo:&unk_1F45E6BF8];
  v6 = [MEMORY[0x1E699B8F8] likely:v5];

  return v6;
}

- (id)_threadQueryForThreadScope:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E699ADA0] predicateForMessagesWithThreadScope:a3];
  v4 = [MEMORY[0x1E699ADA0] sortDescriptorForDateAscending:0];
  v5 = objc_alloc(MEMORY[0x1E699AE28]);
  v6 = objc_opt_class();
  v11[0] = v4;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v8 = [v5 initWithTargetClass:v6 predicate:v3 sortDescriptors:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)beginMigratingThreadScope:(id)a3
{
  v35[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EDThreadPersistence *)self database];
  v35[0] = 0;
  v6 = [v5 requestProtectedDatabaseBackgroundProcessingForDuration:v35 error:1200.0];
  v7 = v35[0];

  if (!v6)
  {
    v8 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [v7 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [EDThreadPersistence beginMigratingThreadScope:];
    }
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 1;
  v9 = [(EDThreadPersistence *)self threadScopeManager];
  v10 = [v9 databaseIDForThreadScope:v4];
  v11 = v10 == *MEMORY[0x1E699A728];

  if (v11)
  {
    v12 = [MEMORY[0x1E695DF00] date];
    v13 = [(EDThreadPersistence *)self _addThreadScopeToDatabase:v4 needsUpdate:1 lastViewedDate:v12 updateThreadScopeManager:1];
    *(v32 + 24) = v13;
  }

  else
  {
    v14 = [(EDThreadPersistence *)self threadScopeManager];
    v15 = [v14 databaseIDForThreadScope:v4];

    v12 = [(EDThreadPersistence *)self database];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence beginMigratingThreadScope:]"];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __49__EDThreadPersistence_beginMigratingThreadScope___block_invoke;
    v30[3] = &unk_1E8250150;
    v30[4] = &v31;
    v30[5] = v15;
    [v12 __performWriteWithCaller:v16 usingBlock:v30];
  }

  if (*(v32 + 24) == 1)
  {
    objc_initWeak(&location, self);
    v17 = MEMORY[0x1E699B7F8];
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __49__EDThreadPersistence_beginMigratingThreadScope___block_invoke_2;
    v26 = &unk_1E8250098;
    objc_copyWeak(&v28, &location);
    v18 = v4;
    v27 = v18;
    v19 = [v17 tokenWithCancelationBlock:&v23];
    v20 = v19;
    if (v6)
    {
      [v19 addCancelable:{v6, v23, v24, v25, v26}];
      os_unfair_lock_lock(&self->_migratingThreadScopesLock);
      [(NSMutableDictionary *)self->_backgroundProcessingAssertionsByMigratingThreadScope setObject:v6 forKeyedSubscript:v18];
      os_unfair_lock_unlock(&self->_migratingThreadScopesLock);
    }

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  else
  {
    if (v6)
    {
      [v6 cancel];
    }

    v20 = 0;
  }

  _Block_object_dispose(&v31, 8);

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

uint64_t __49__EDThreadPersistence_beginMigratingThreadScope___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E699B8C8] column:@"scope"];
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 40)];
  v6 = [v4 equalTo:v5];

  v7 = [objc_alloc(MEMORY[0x1E699B8E8]) initWithTable:@"threads" where:v6];
  *(*(*(a1 + 32) + 8) + 24) = [v3 executeDeleteStatement:v7 error:0];
  v8 = *(*(*(a1 + 32) + 8) + 24);

  return v8;
}

void __49__EDThreadPersistence_beginMigratingThreadScope___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "Migration cancelled or reset for threadscope - %{public}@", &v6, 0xCu);
    }

    os_unfair_lock_lock(WeakRetained + 10);
    [*(WeakRetained + 3) removeObject:*(a1 + 32)];
    [*(WeakRetained + 4) removeObjectForKey:*(a1 + 32)];
    os_unfair_lock_unlock(WeakRetained + 10);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)endMigratingThreadScope:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EDThreadPersistence *)self threadScopeManager];
  v6 = [v5 databaseIDForThreadScope:v4];

  if (v6 == *MEMORY[0x1E699A728])
  {
    v7 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [v4 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [EDThreadPersistence endMigratingThreadScope:];
    }

    v8 = 0;
  }

  else
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 1;
    v9 = [(EDThreadPersistence *)self database];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence endMigratingThreadScope:]"];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __47__EDThreadPersistence_endMigratingThreadScope___block_invoke;
    v16[3] = &unk_1E8250150;
    v16[4] = &v19;
    v16[5] = v6;
    [v9 __performWriteWithCaller:v10 usingBlock:v16];

    if (*(v20 + 24) == 1)
    {
      v11 = [(EDThreadPersistence *)self threadScopeManager];
      [v11 setNeedsUpdate:0 forThreadScope:v4];

      v12 = +[EDThreadPersistence log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = v4;
        _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "Migration finished for threadscope - %{public}@", buf, 0xCu);
      }

      os_unfair_lock_lock(&self->_migratingThreadScopesLock);
      [(NSMutableArray *)self->_migratingThreadScopes removeObject:v4];
      v13 = [(NSMutableDictionary *)self->_backgroundProcessingAssertionsByMigratingThreadScope objectForKeyedSubscript:v4];
      [(NSMutableDictionary *)self->_backgroundProcessingAssertionsByMigratingThreadScope removeObjectForKey:v4];
      os_unfair_lock_unlock(&self->_migratingThreadScopesLock);
      [v13 cancel];

      v8 = *(v20 + 24);
    }

    else
    {
      v8 = 0;
    }

    _Block_object_dispose(&v19, 8);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

uint64_t __47__EDThreadPersistence_endMigratingThreadScope___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"thread_scopes"];
  [v4 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"needs_update"];
  v5 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 40)];
  v7 = [v5 equalTo:v6];
  [v4 setWhereClause:v7];

  *(*(*(a1 + 32) + 8) + 24) = [v3 executeUpdateStatement:v4 error:0];
  v8 = *(*(*(a1 + 32) + 8) + 24);

  return v8;
}

- (BOOL)addThreadsDuringMigration:(id)a3
{
  v4 = a3;
  v5 = [v4 allKeys];
  v6 = [v5 firstObject];

  v7 = [v6 objectID];
  v8 = [v7 threadScope];

  v9 = [(EDThreadPersistence *)self threadScopeManager];
  v10 = [v9 databaseIDForThreadScope:v8];

  v11 = [(EDThreadPersistence *)self _expressionForThreadScope:v8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v12 = [(EDThreadPersistence *)self database];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence addThreadsDuringMigration:]"];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__EDThreadPersistence_addThreadsDuringMigration___block_invoke;
  v15[3] = &unk_1E82511E0;
  v15[4] = self;
  v19 = v10;
  v16 = v11;
  v17 = v4;
  v18 = &v20;
  [v12 __performWriteWithCaller:v13 usingBlock:v15];

  LOBYTE(self) = *(v21 + 24);
  _Block_object_dispose(&v20, 8);

  return self;
}

uint64_t __49__EDThreadPersistence_addThreadsDuringMigration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[_EDThreadPersistence_StatementCache alloc] initWithConnection:v3];
  v5 = [_EDThreadPersistence_ThreadScope alloc];
  v6 = [*(a1 + 32) messagePersistence];
  v7 = [(_EDThreadPersistence_ThreadScope *)v5 initWithCache:v4 messagePersistence:v6 threadScopeDatabaseID:*(a1 + 64) threadScopeExpression:*(a1 + 40)];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __49__EDThreadPersistence_addThreadsDuringMigration___block_invoke_2;
  v14[3] = &unk_1E8258868;
  v8 = *(a1 + 32);
  v10 = *(a1 + 48);
  v9 = *(a1 + 56);
  v15 = v7;
  v16 = v9;
  v14[4] = v8;
  v11 = v7;
  [v10 enumerateKeysAndObjectsUsingBlock:v14];
  v12 = *(*(*(a1 + 56) + 8) + 24);

  return v12;
}

void __49__EDThreadPersistence_addThreadsDuringMigration___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __49__EDThreadPersistence_addThreadsDuringMigration___block_invoke_3;
  v16[3] = &unk_1E8258840;
  v16[4] = a1[4];
  v8 = [v6 ef_map:v16];
  v9 = *(a1[6] + 8);
  if (*(v9 + 24) == 1)
  {
    v10 = a1[5];
    v11 = [v5 objectID];
    v15 = 0;
    LOBYTE(v10) = [v10 createMessagesWithThreadObjectID:v11 wrappedMessages:v8 threadMessages:&v15];
    v12 = v15;
    *(*(a1[6] + 8) + 24) = v10;
  }

  else
  {
    v12 = 0;
    *(v9 + 24) = 0;
  }

  v13 = *(a1[6] + 8);
  if (*(v13 + 24) == 1)
  {
    v14 = [v12 addThreadReplacingExisting:1 journaled:0];
    v13 = *(a1[6] + 8);
  }

  else
  {
    v14 = 0;
  }

  *(v13 + 24) = v14;

  objc_autoreleasePoolPop(v7);
}

_EDLazyWrappedMessage *__49__EDThreadPersistence_addThreadsDuringMigration___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [_EDLazyWrappedMessage alloc];
  v5 = [*(a1 + 32) messagePersistence];
  v6 = [(_EDLazyWrappedMessage *)v4 initWithMessage:v3 messagePersistence:v5];

  return v6;
}

- (BOOL)deleteThreadsWithObjectIDs:(id)a3
{
  v4 = a3;
  v5 = [(EDThreadPersistence *)self threadScopeManager];
  v6 = [v4 firstObject];
  v7 = [v6 threadScope];
  v8 = [v5 databaseIDForThreadScope:v7];

  v9 = [v4 ef_map:&__block_literal_global_536];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v10 = [(EDThreadPersistence *)self database];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence deleteThreadsWithObjectIDs:]"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__EDThreadPersistence_deleteThreadsWithObjectIDs___block_invoke_2;
  v14[3] = &unk_1E82549F0;
  v17 = v8;
  v12 = v9;
  v15 = v12;
  v16 = &v18;
  [v10 __performWriteWithCaller:v11 usingBlock:v14];

  LOBYTE(v9) = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  return v9;
}

id __50__EDThreadPersistence_deleteThreadsWithObjectIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v2, "conversationID")}];

  return v3;
}

uint64_t __50__EDThreadPersistence_deleteThreadsWithObjectIDs___block_invoke_2(void *a1, void *a2)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E699B8C8] column:@"scope"];
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:a1[6]];
  v6 = [v4 equalTo:v5];

  v7 = [MEMORY[0x1E699B8C8] column:@"conversation"];
  v8 = [v7 in:a1[4]];

  v9 = objc_alloc(MEMORY[0x1E699B8E8]);
  v10 = objc_alloc(MEMORY[0x1E699B898]);
  v16[0] = v6;
  v16[1] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [v10 initWithExpressions:v11];
  v13 = [v9 initWithTable:@"threads" where:v12];

  *(*(a1[5] + 8) + 24) = [v3 executeDeleteStatement:v13 error:0];
  LOBYTE(a1) = *(*(a1[5] + 8) + 24);

  v14 = *MEMORY[0x1E69E9840];
  return a1 & 1;
}

- (id)oldestThreadObjectIDForMailbox:(id)a3 threadScope:(id)a4
{
  v6 = a3;
  v7 = a4;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__47;
  v35 = __Block_byref_object_dispose__47;
  v36 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__EDThreadPersistence_oldestThreadObjectIDForMailbox_threadScope___block_invoke;
  aBlock[3] = &unk_1E8258890;
  v30 = &v31;
  v8 = v7;
  v29 = v8;
  v9 = _Block_copy(aBlock);
  v10 = [(EDThreadPersistence *)self database];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence oldestThreadObjectIDForMailbox:threadScope:]"];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __66__EDThreadPersistence_oldestThreadObjectIDForMailbox_threadScope___block_invoke_3;
  v23[3] = &unk_1E82588B8;
  v23[4] = self;
  v12 = v6;
  v24 = v12;
  v13 = v8;
  v25 = v13;
  v27 = &v37;
  v14 = v9;
  v26 = v14;
  [v10 __performReadWithCaller:v11 usingBlock:v23];

  if (*(v38 + 24) == 1)
  {
    v15 = [(EDThreadPersistence *)self database];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence oldestThreadObjectIDForMailbox:threadScope:]"];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __66__EDThreadPersistence_oldestThreadObjectIDForMailbox_threadScope___block_invoke_4;
    v19[3] = &unk_1E82588E0;
    v19[4] = self;
    v20 = v12;
    v21 = v13;
    v22 = v14;
    [v15 __performWriteWithCaller:v16 usingBlock:v19];
  }

  v17 = v32[5];

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);

  return v17;
}

uint64_t __66__EDThreadPersistence_oldestThreadObjectIDForMailbox_threadScope___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__EDThreadPersistence_oldestThreadObjectIDForMailbox_threadScope___block_invoke_2;
  v9[3] = &unk_1E8250178;
  v8 = *(a1 + 32);
  v5 = v8;
  v10 = v8;
  v6 = [a2 executeSelectStatement:a3 withBlock:v9 error:0];

  return v6;
}

void __66__EDThreadPersistence_oldestThreadObjectIDForMailbox_threadScope___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 objectAtIndexedSubscript:0];
  v4 = [v3 databaseIDValue];

  v5 = [objc_alloc(MEMORY[0x1E699AEF8]) initWithConversationID:v4 threadScope:*(a1 + 32)];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

uint64_t __66__EDThreadPersistence_oldestThreadObjectIDForMailbox_threadScope___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _statementForOldestThreadInMailbox:*(a1 + 40) threadScope:*(a1 + 48) createMailboxDatabaseIDIfNecessary:0];
  if (v4)
  {
    v5 = (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = *(*(a1 + 64) + 8);
    v5 = 1;
    *(v6 + 24) = 1;
  }

  return v5;
}

uint64_t __66__EDThreadPersistence_oldestThreadObjectIDForMailbox_threadScope___block_invoke_4(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _statementForOldestThreadInMailbox:*(a1 + 40) threadScope:*(a1 + 48) createMailboxDatabaseIDIfNecessary:1];
  if (v4)
  {
    v5 = (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 40) ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __66__EDThreadPersistence_oldestThreadObjectIDForMailbox_threadScope___block_invoke_4_cold_1();
    }

    v5 = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)verifyConsistencyOfThreadScope:(id)a3
{
  v4 = a3;
  v5 = [(EDThreadPersistence *)self consistencyCheckScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__EDThreadPersistence_verifyConsistencyOfThreadScope___block_invoke;
  v7[3] = &unk_1E8250128;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [v5 performBlock:v7];
}

void __54__EDThreadPersistence_verifyConsistencyOfThreadScope___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) threadScopeManager];
  v3 = [v2 databaseIDForThreadScope:*(a1 + 40)];

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  v4 = [*(a1 + 32) database];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence verifyConsistencyOfThreadScope:]_block_invoke"];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __54__EDThreadPersistence_verifyConsistencyOfThreadScope___block_invoke_2;
  v22 = &unk_1E8253058;
  v25 = &v27;
  v26 = v3;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v23 = v6;
  v24 = v7;
  [v4 __performReadWithCaller:v5 usingBlock:&v19];

  if ((v28[3] & 1) == 0)
  {
    v8 = [EDThreadPersistence signpostLog:v19];
    v9 = [*(a1 + 32) signpostID];
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = *(a1 + 40);
      *buf = 138543362;
      v32 = v10;
      _os_signpost_emit_with_name_impl(&dword_1C61EF000, v8, OS_SIGNPOST_EVENT, v9, "THREAD MIGRATION PERSISTENCE", "Thread scope is inconsistent, resetting thread scope:%{public}@", buf, 0xCu);
    }

    [*(a1 + 32) sendEventForCoreAnalytics:@"Inconsistent"];
    v11 = [MEMORY[0x1E699B780] sharedReporter];
    v12 = *(a1 + 32);
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v11 reportIssueType:v14 description:@"Inconsistent thread scope"];

    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    v17 = [MEMORY[0x1E696AD98] numberWithLongLong:v3];
    [v16 _resetThreadScope:v15 withDatabaseID:v17];
  }

  _Block_object_dispose(&v27, 8);
  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __54__EDThreadPersistence_verifyConsistencyOfThreadScope___block_invoke_2(uint64_t a1, void *a2)
{
  v77[2] = *MEMORY[0x1E69E9840];
  v56 = a2;
  v3 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"conversation" table:@"threads"];
  [v3 addResultColumn:@"display_message"];
  [v3 addResultColumn:@"count"];
  v4 = [MEMORY[0x1E699B8C8] column:@"display_message"];
  v54 = [v4 isNull];

  v5 = [MEMORY[0x1E699B8C8] column:@"count"];
  v6 = [v5 equalTo:&unk_1F45E6BF8];

  v7 = MEMORY[0x1E699B928];
  v77[0] = v54;
  v77[1] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];
  v53 = [v7 combined:v8];

  v9 = [MEMORY[0x1E699B8C8] column:@"scope"];
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 56)];
  v55 = [v9 equalTo:v10];

  v11 = MEMORY[0x1E699B898];
  v76[0] = v55;
  v76[1] = v53;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:2];
  v13 = [v11 combined:v12];
  [v3 setWhere:v13];

  [v3 setLimit:1];
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = *MEMORY[0x1E699A728];
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 1;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 1;
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __54__EDThreadPersistence_verifyConsistencyOfThreadScope___block_invoke_3;
  v60[3] = &unk_1E8258908;
  v60[4] = &v69;
  v60[5] = &v65;
  v14 = *(a1 + 48);
  v60[6] = &v61;
  v60[7] = v14;
  [v56 executeSelectStatement:v3 withBlock:v60 error:0];
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v15 = objc_alloc(MEMORY[0x1E699B948]);
    v16 = [MEMORY[0x1E699B890] count:0];
    v17 = [v15 initWithResult:v16 table:@"threads"];

    [v17 setWhere:v55];
    v18 = [v56 countForSelectStatement:v17];
    v19 = objc_alloc(MEMORY[0x1E699B948]);
    v20 = MEMORY[0x1E699B890];
    v21 = [MEMORY[0x1E699B8C8] column:@"conversation_id"];
    v22 = [v20 countDistinct:v21];
    v23 = +[EDMessagePersistence messagesTableName];
    v50 = [v19 initWithResult:v22 table:v23];

    v51 = [*(a1 + 40) _expressionForThreadScope:*(a1 + 32)];
    v24 = [*(a1 + 40) _messageIsNotDeletedExpression];
    v25 = MEMORY[0x1E699B898];
    v75[0] = v51;
    v75[1] = v24;
    v49 = v24;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:2];
    v52 = [v25 combined:v26];

    [v50 setWhere:v52];
    v27 = [v56 countForSelectStatement:v50];
    if (v18 == v27)
    {
      v28 = +[EDThreadPersistence log];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = [*(a1 + 32) ef_publicDescription];
        *buf = 138543362;
        *&buf[4] = v29;
        _os_log_impl(&dword_1C61EF000, v28, OS_LOG_TYPE_INFO, "Thread scope is consistent: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v33 = +[EDThreadPersistence log];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v47 = [*(a1 + 32) ef_publicDescription];
        *buf = 134218498;
        *&buf[4] = v27;
        *&buf[12] = 2048;
        *&buf[14] = v18;
        *&buf[22] = 2114;
        v74 = v47;
        _os_log_error_impl(&dword_1C61EF000, v33, OS_LOG_TYPE_ERROR, "Thread scope is inconsistent - expected %lu threads but %lu threads exist: %{public}@", buf, 0x20u);
      }

      v28 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"conversation" table:@"threads"];
      [v28 setWhere:v55];
      v48 = [v56 databaseIDsForSelectStatement:v28];
      v34 = objc_alloc(MEMORY[0x1E699B948]);
      v35 = +[EDMessagePersistence messagesTableName];
      v36 = [v34 initWithResultColumn:@"conversation_id" table:v35];

      [v36 setWhere:v52];
      v37 = [v56 databaseIDsForSelectStatement:v36];
      v38 = *(a1 + 40);
      if (v18 <= v27)
      {
        v39 = [v38 _int64SetFromSet:v37 byRemovingIndexesFromSet:v48 andLimitingTo:50];
        v40 = +[EDThreadPersistence log];
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          [v39 commaSeparatedString];
          objc_claimAutoreleasedReturnValue();
          __54__EDThreadPersistence_verifyConsistencyOfThreadScope___block_invoke_2_cold_5();
        }
      }

      else
      {
        v39 = [v38 _int64SetFromSet:v48 byRemovingIndexesFromSet:v37 andLimitingTo:50];
        v40 = +[EDThreadPersistence log];
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          [v39 commaSeparatedString];
          objc_claimAutoreleasedReturnValue();
          __54__EDThreadPersistence_verifyConsistencyOfThreadScope___block_invoke_2_cold_6();
        }
      }

      v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v74 = 0;
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __54__EDThreadPersistence_verifyConsistencyOfThreadScope___block_invoke_538;
      v57[3] = &unk_1E8258930;
      v44 = v43;
      v58 = v44;
      v59 = buf;
      [v39 enumerateIndexesUsingBlock:v57];
      [*(a1 + 40) _logFailedVerifyConsistencyForConversationIDs:v44];
      *(*(*(a1 + 48) + 8) + 24) = 0;

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v30 = *(v62 + 24);
    if (v66[3])
    {
      if (v62[3])
      {
        v17 = +[EDThreadPersistence log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v31 = v70[3];
          [*(a1 + 32) ef_publicDescription];
          objc_claimAutoreleasedReturnValue();
          __54__EDThreadPersistence_verifyConsistencyOfThreadScope___block_invoke_2_cold_4();
        }
      }

      else
      {
        v17 = +[EDThreadPersistence log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v41 = v70[3];
          [*(a1 + 32) ef_publicDescription];
          objc_claimAutoreleasedReturnValue();
          __54__EDThreadPersistence_verifyConsistencyOfThreadScope___block_invoke_2_cold_3();
        }
      }
    }

    else if (v62[3])
    {
      v17 = +[EDThreadPersistence log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v32 = v70[3];
        [*(a1 + 32) ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        __54__EDThreadPersistence_verifyConsistencyOfThreadScope___block_invoke_2_cold_2();
      }
    }

    else
    {
      v17 = +[EDThreadPersistence log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v42 = v70[3];
        [*(a1 + 32) ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        __54__EDThreadPersistence_verifyConsistencyOfThreadScope___block_invoke_2_cold_1();
      }
    }
  }

  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(&v69, 8);

  v45 = *MEMORY[0x1E69E9840];
  return 1;
}

void __54__EDThreadPersistence_verifyConsistencyOfThreadScope___block_invoke_3(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 objectForKeyedSubscript:@"conversation"];
  *(*(a1[4] + 8) + 24) = [v6 databaseIDValue];

  v7 = [v11 objectForKeyedSubscript:@"display_message"];
  v8 = [v7 objectValue];

  if (!v8)
  {
    *(*(a1[5] + 8) + 24) = 0;
  }

  v9 = [v11 objectForKeyedSubscript:@"count"];
  v10 = [v9 integerValue];

  if (!v10)
  {
    *(*(a1[6] + 8) + 24) = 0;
  }

  *(*(a1[7] + 8) + 24) = 0;
  *a4 = 1;
}

void __54__EDThreadPersistence_verifyConsistencyOfThreadScope___block_invoke_538(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  [v5 addObject:v6];

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 24);
  *(v7 + 24) = v8 + 1;
  if (v8 >= 9)
  {
    *a3 = 1;
  }
}

- (void)sendEventForCoreAnalytics:(id)a3
{
  v7 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v4 setObject:&unk_1F45E6C10 forKeyedSubscript:v7];
  [v4 setObject:&unk_1F45E6C10 forKeyedSubscript:@"migration"];
  v5 = [objc_alloc(MEMORY[0x1E699AC78]) initWithEventName:@"com.apple.mail.threadmigration" collectionData:v4];
  v6 = [(EDThreadPersistence *)self analyticsCollector];
  [v6 logOneTimeEvent:v5];
}

- (void)_logFailedVerifyConsistencyForConversationIDs:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v5 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [EDThreadPersistence _logFailedVerifyConsistencyForConversationIDs:];
  }

  v6 = [(EDThreadPersistence *)self messagePersistence];
  v22 = [v6 persistedMessageIDsForMessagesForConversationIDs:v21];

  v7 = [(EDThreadPersistence *)self messagePersistence];
  v8 = [v7 persistedMessagesForDatabaseIDs:v22 requireProtectedData:0 temporarilyUnavailableDatabaseIDs:0];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v24 objects:v40 count:16];
  if (v9)
  {
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        v13 = +[EDThreadPersistence log];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = [v12 globalMessageID];
          v15 = [v12 conversationID];
          v16 = [v12 displayDate];
          v17 = [v12 dateReceived];
          v18 = [v12 readLater];
          v19 = [v12 followUp];
          *buf = 134219266;
          v29 = v14;
          v30 = 2048;
          v31 = v15;
          v32 = 2114;
          v33 = v16;
          v34 = 2114;
          v35 = v17;
          v36 = 2114;
          v37 = v18;
          v38 = 2114;
          v39 = v19;
          _os_log_error_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_ERROR, "\tmessage globalMessageID:%lld, conversationID:%lld, displayDate:%{public}@, dateReceived:%{public}@, readLater:%{public}@, followUp:%{public}@", buf, 0x3Eu);
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v24 objects:v40 count:16];
    }

    while (v9);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (id)_int64SetFromSet:(id)a3 byRemovingIndexesFromSet:(id)a4 andLimitingTo:(unint64_t)a5
{
  v7 = a4;
  v8 = [a3 mutableCopy];
  [v8 removeIndexes:v7];
  v9 = [v8 lowestIndexesInRange:*MEMORY[0x1E699B740] maxCount:{*(MEMORY[0x1E699B740] + 8), a5}];

  return v9;
}

- (BOOL)_addThreadScopeToDatabase:(id)a3 needsUpdate:(BOOL)a4 lastViewedDate:(id)a5 updateThreadScopeManager:(BOOL)a6
{
  v11 = a3;
  v12 = a5;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v13 = [(EDThreadPersistence *)self database];
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence _addThreadScopeToDatabase:needsUpdate:lastViewedDate:updateThreadScopeManager:]"];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __101__EDThreadPersistence__addThreadScopeToDatabase_needsUpdate_lastViewedDate_updateThreadScopeManager___block_invoke;
  v18[3] = &unk_1E8258958;
  v18[4] = self;
  v15 = v11;
  v19 = v15;
  v21 = &v25;
  v23 = a4;
  v16 = v12;
  v20 = v16;
  v22 = a2;
  v24 = a6;
  [v13 __performWriteWithCaller:v14 usingBlock:v18];

  LOBYTE(v11) = *(v26 + 24);
  _Block_object_dispose(&v25, 8);

  return v11;
}

uint64_t __101__EDThreadPersistence__addThreadScopeToDatabase_needsUpdate_lastViewedDate_updateThreadScopeManager___block_invoke(uint64_t a1, void *a2)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v20[0] = 0;
  v4 = [*(a1 + 32) _mailboxScopeForThreadScope:*(a1 + 40) andFilterPredicate:v20];
  v5 = [v4 mailboxTypes];
  v6 = [v5 anyObject];

  if (v6)
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _addThreadScopeToDatabaseWithMailboxType:v6 filterPredicate:v20[0] needsUpdate:*(a1 + 72) lastViewedDate:*(a1 + 48) connection:v3];
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v7 = [*(a1 + 32) threadScopeManager];
      [v7 addThreadScope:*(a1 + 40) withDatabaseID:objc_msgSend(v3 needsUpdate:"lastInsertedDatabaseID") lastViewedDate:{*(a1 + 72), *(a1 + 48)}];
    }

    else
    {
      v15 = +[EDThreadPersistence log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [*(a1 + 40) ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        __101__EDThreadPersistence__addThreadScopeToDatabase_needsUpdate_lastViewedDate_updateThreadScopeManager___block_invoke_cold_1();
      }

      v7 = [*(a1 + 32) threadScopeManager];
      [v7 logExistingThreadScopes];
    }
  }

  else
  {
    v7 = [v4 mailboxObjectIDs];
    v8 = [*(a1 + 32) messagePersistence];
    v9 = [v8 mailboxPersistence];
    v10 = [v9 mailboxDatabaseIDsForMailboxObjectIDs:v7 createIfNecessary:1];
    v11 = [v10 anyObject];
    v12 = [v11 longLongValue];

    if (v12 == *MEMORY[0x1E699A728])
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      [v19 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"EDThreadPersistence.m" lineNumber:3741 description:@"No mailbox database ID for migrating thread scope"];
    }

    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _addThreadScopeToDatabase:*(a1 + 40) withMailboxDatabaseID:v12 filterPredicate:v20[0] needsUpdate:*(a1 + 72) lastViewedDate:*(a1 + 48) updateThreadScopeManager:*(a1 + 73) connection:v3];
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      v13 = +[EDThreadPersistence log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [*(a1 + 40) ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        __101__EDThreadPersistence__addThreadScopeToDatabase_needsUpdate_lastViewedDate_updateThreadScopeManager___block_invoke_cold_1();
      }

      v14 = [*(a1 + 32) threadScopeManager];
      [v14 logExistingThreadScopes];
    }
  }

  v16 = *(*(*(a1 + 56) + 8) + 24);
  v17 = *MEMORY[0x1E69E9840];
  return v16 & 1;
}

- (id)_mailboxScopeForThreadScope:(id)a3 andFilterPredicate:(unint64_t *)a4
{
  v6 = a3;
  v7 = [(EDThreadPersistence *)self messagePersistence];
  v8 = [v7 mailboxPersistence];
  v9 = [v8 mailboxProvider];

  v13 = 0;
  v10 = [(EDThreadPersistence *)self threadScopeManager];
  v11 = [v10 precomputedMailboxScopeForThreadScope:v6 mailboxTypeResolver:v9 foundPredicates:&v13];

  if (a4)
  {
    *a4 = v13;
  }

  return v11;
}

- (id)statisticsForThreadScopesWithDatabaseIDs:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [(EDThreadPersistence *)self threadScopeManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__EDThreadPersistence_statisticsForThreadScopesWithDatabaseIDs___block_invoke;
  v9[3] = &unk_1E8258980;
  v7 = v5;
  v10 = v7;
  [(EDThreadPersistence *)self threadScopeManager:v6 gatherStatisticsForThreadScopesWithDatabaseIDs:v4 block:v9];

  return v7;
}

void __64__EDThreadPersistence_statisticsForThreadScopesWithDatabaseIDs___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v12 = a3;
  v7 = MEMORY[0x1E699B848];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v9 = [v7 pairWithFirst:v12 second:v8];
  v10 = *(a1 + 32);
  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  [v10 setObject:v9 forKeyedSubscript:v11];
}

- (BOOL)threadScopeManager:(id)a3 mailboxScopeExists:(id)a4
{
  v5 = a4;
  v6 = [(EDThreadPersistence *)self messagePersistence];
  v7 = [v6 mailboxPersistence];
  v8 = [v5 mailboxObjectIDs];
  v9 = [v7 mailboxDatabaseIDsForMailboxObjectIDs:v8 createIfNecessary:0];
  v10 = [v9 count] != 0;

  return v10;
}

- (BOOL)threadScopeManager:(id)a3 isValidMailboxObjectID:(id)a4
{
  v5 = a4;
  v6 = [(EDThreadPersistence *)self messagePersistence];
  v7 = [v6 mailboxPersistence];
  v8 = [v7 legacyMailboxForObjectID:v5];

  return v8 != 0;
}

- (void)threadScopeManager:(id)a3 populateThreadScopesWithBlock:(id)a4
{
  v6 = a4;
  v7 = [(EDThreadPersistence *)self database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence threadScopeManager:populateThreadScopesWithBlock:]"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__EDThreadPersistence_threadScopeManager_populateThreadScopesWithBlock___block_invoke;
  v10[3] = &unk_1E82589D0;
  v12 = a2;
  v10[4] = self;
  v9 = v6;
  v11 = v9;
  [v7 __performReadWithCaller:v8 usingBlock:v10];
}

uint64_t __72__EDThreadPersistence_threadScopeManager_populateThreadScopesWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E699B948]);
  v5 = *MEMORY[0x1E699B768];
  v6 = [v4 initWithResultColumn:*MEMORY[0x1E699B768] table:@"thread_scopes"];
  v7 = +[EDPersistenceDatabaseSchema mailboxesTableName];
  v8 = [v6 leftOuterJoin:v7 sourceColumn:@"mailbox" targetColumn:v5];

  [v6 addResultColumn:@"needs_update"];
  [v8 addResultColumn:@"url"];
  [v6 addResultColumn:@"mailbox_type"];
  [v6 addResultColumn:@"filter_predicate"];
  [v6 addResultColumn:@"last_viewed"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__EDThreadPersistence_threadScopeManager_populateThreadScopesWithBlock___block_invoke_2;
  v13[3] = &unk_1E82589A8;
  v13[4] = *(a1 + 32);
  v12 = *(a1 + 40);
  v9 = v12;
  v14 = v12;
  v10 = [v3 executeSelectStatement:v6 withBlock:v13 error:0];

  return v10;
}

void __72__EDThreadPersistence_threadScopeManager_populateThreadScopesWithBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E699B768]];
  v27 = [v4 databaseIDValue];

  v5 = [v3 objectForKeyedSubscript:@"url"];
  v6 = [v5 stringValue];

  v7 = [v3 objectForKeyedSubscript:@"mailbox_type"];
  v29 = [v7 numberValue];

  v8 = [v3 objectForKeyedSubscript:@"filter_predicate"];
  v9 = [v8 numberValue];
  v10 = [v9 unsignedIntegerValue];

  v11 = [v3 objectForKeyedSubscript:@"needs_update"];
  v12 = [v11 numberValue];
  [v12 BOOLValue];

  v13 = [v3 objectForKeyedSubscript:@"last_viewed"];
  v28 = [v13 dateValue];

  if ((v6 == 0) != (v29 != 0))
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"EDThreadPersistence.m" lineNumber:3832 description:@"Pre-computed thread scope should have exactly one mailbox or mailbox type"];

    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v20 = MEMORY[0x1E699AD28];
    v30 = v29;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:{1, v27}];
    v18 = [v20 mailboxScopeForMailboxTypes:v14 forExclusion:0];
    goto LABEL_6;
  }

  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v6];
  v15 = [objc_alloc(MEMORY[0x1E699AD20]) initWithURL:v14];
  v16 = MEMORY[0x1E699AD28];
  v31[0] = v15;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  v18 = [v16 mailboxScopeForMailboxObjectIDs:v17 forExclusion:0];

LABEL_6:
  v21 = [*(a1 + 32) threadScopeManager];
  v22 = [*(a1 + 32) messagePersistence];
  v23 = [v22 mailboxPersistence];
  v24 = [v23 mailboxProvider];
  v25 = [v21 threadScopeFromPrecomputedMailboxScope:v18 predicates:v10 mailboxProvider:v24];

  (*(*(a1 + 40) + 16))();
  v26 = *MEMORY[0x1E69E9840];
}

- (void)threadScopeManager:(id)a3 gatherStatisticsForThreadScopesWithDatabaseIDs:(id)a4 block:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(EDThreadPersistence *)self database];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence threadScopeManager:gatherStatisticsForThreadScopesWithDatabaseIDs:block:]"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __95__EDThreadPersistence_threadScopeManager_gatherStatisticsForThreadScopesWithDatabaseIDs_block___block_invoke;
  v13[3] = &unk_1E8257AC8;
  v11 = v7;
  v14 = v11;
  v15 = self;
  v12 = v8;
  v16 = v12;
  [v9 __performReadWithCaller:v10 usingBlock:v13];
}

uint64_t __95__EDThreadPersistence_threadScopeManager_gatherStatisticsForThreadScopesWithDatabaseIDs_block___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __95__EDThreadPersistence_threadScopeManager_gatherStatisticsForThreadScopesWithDatabaseIDs_block___block_invoke_2;
  v9[3] = &unk_1E8258A20;
  v12 = &v13;
  v4 = a1[4];
  v5 = a1[6];
  v9[4] = a1[5];
  v10 = v3;
  v11 = v5;
  v6 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];
  v7 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v7;
}

void __95__EDThreadPersistence_threadScopeManager_gatherStatisticsForThreadScopesWithDatabaseIDs_block___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v26 = [*(a1 + 32) _expressionForThreadScope:v7];
  v9 = [MEMORY[0x1E699B8C8] column:@"last_viewed"];
  v10 = [MEMORY[0x1E699B8C8] column:@"date_received"];
  v11 = [v10 greaterThan:v9];
  v25 = a4;
  v12 = objc_alloc(MEMORY[0x1E699B948]);
  v13 = [MEMORY[0x1E699B890] count:0];
  v14 = +[EDMessagePersistence messagesTableName];
  v15 = [v12 initWithResult:v13 table:v14];

  v16 = objc_alloc(MEMORY[0x1E699B898]);
  v30[0] = v26;
  v30[1] = v11;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v18 = [v16 initWithExpressions:v17];
  [v15 setWhere:v18];

  v19 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"last_viewed" table:@"thread_scopes"];
  [v19 addResult:v15 alias:@"count"];
  v20 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v21 = [v20 equalTo:v8];
  [v19 setWhere:v21];

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __95__EDThreadPersistence_threadScopeManager_gatherStatisticsForThreadScopesWithDatabaseIDs_block___block_invoke_3;
  v27[3] = &unk_1E82589F8;
  v22 = *(a1 + 40);
  v29 = *(a1 + 48);
  v23 = v8;
  v28 = v23;
  *(*(*(a1 + 56) + 8) + 24) = [v22 executeSelectStatement:v19 withBlock:v27 error:0];
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    *v25 = 1;
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __95__EDThreadPersistence_threadScopeManager_gatherStatisticsForThreadScopesWithDatabaseIDs_block___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) longLongValue];
  v5 = [v9 objectForKeyedSubscript:@"last_viewed"];
  v6 = [v5 dateValue];
  v7 = [v9 objectForKeyedSubscript:@"count"];
  v8 = [v7 numberValue];
  (*(v3 + 16))(v3, v4, v6, [v8 unsignedIntegerValue]);
}

- (BOOL)threadScopeManager:(id)a3 evictThreadScopesWithDatabaseIDs:(id)a4 completionBlock:(id)a5
{
  v7 = a4;
  v8 = a5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v9 = [(EDThreadPersistence *)self database];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDThreadPersistence threadScopeManager:evictThreadScopesWithDatabaseIDs:completionBlock:]"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __91__EDThreadPersistence_threadScopeManager_evictThreadScopesWithDatabaseIDs_completionBlock___block_invoke;
  v14[3] = &unk_1E8258A48;
  v11 = v7;
  v15 = v11;
  v17 = &v18;
  v12 = v8;
  v16 = v12;
  [v9 __performWriteWithCaller:v10 usingBlock:v14];

  LOBYTE(v7) = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  return v7;
}

uint64_t __91__EDThreadPersistence_threadScopeManager_evictThreadScopesWithDatabaseIDs_completionBlock___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v5 = [v4 in:a1[4]];

  v6 = [objc_alloc(MEMORY[0x1E699B8E8]) initWithTable:@"thread_scopes" where:v5];
  *(*(a1[6] + 8) + 24) = [v3 executeDeleteStatement:v6 error:0];
  v7 = *(*(a1[6] + 8) + 24);
  (*(a1[5] + 16))();
  v8 = *(*(a1[6] + 8) + 24);

  return v8;
}

id __55___EDThreadPersistence_ThreadMessages_debugDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", objc_msgSend(v2, "databaseID")];

  return v3;
}

void __76___EDThreadPersistence_ThreadMessages_addThreadReplacingExisting_journaled___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) thread];
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "threadScopeDatabaseID")}];
  [v3 setObject:v5 forKeyedSubscript:@":scope"];

  v6 = MEMORY[0x1E696AD98];
  v7 = [v4 objectID];
  v8 = [v6 numberWithLongLong:{objc_msgSend(v7, "conversationID")}];
  [v3 setObject:v8 forKeyedSubscript:@":conversation_id"];

  v9 = *(a1 + 32);
  v75 = 0;
  v10 = [v9 _displayWrappedMessageWithNewestReadWrappedMessage:&v75];
  v11 = v75;
  v12 = v11;
  if (v11)
  {
    [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v11, "databaseID")}];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v13 = ;
  [v3 setObject:v13 forKeyedSubscript:@":newest_read_message"];

  v14 = [*(a1 + 32) wrappedMessages];
  v15 = [v14 firstObject];

  if (v15)
  {
    [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v15, "databaseID")}];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v16 = ;
  [v3 setObject:v16 forKeyedSubscript:@":newest_message"];

  v17 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v10, "databaseID")}];
  [v3 setObject:v17 forKeyedSubscript:@":display_message"];

  v18 = [v4 date];
  [v3 setObject:v18 forKeyedSubscript:@":date"];

  v19 = [v4 displayDate];
  [v3 setObject:v19 forKeyedSubscript:@":display_date"];

  v20 = [v4 readLater];
  v21 = [v20 date];
  v22 = v21;
  if (!v21)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  [v3 setObject:v22 forKeyedSubscript:@":read_later_date"];
  if (!v21)
  {
  }

  v23 = MEMORY[0x1E696AD98];
  v24 = [v4 flags];
  v25 = [v23 numberWithBool:{objc_msgSend(v24, "read")}];
  [v3 setObject:v25 forKeyedSubscript:@":read"];

  v26 = MEMORY[0x1E696AD98];
  v27 = [v4 flags];
  v28 = [v26 numberWithBool:{objc_msgSend(v27, "flagged")}];
  [v3 setObject:v28 forKeyedSubscript:@":flagged"];

  v29 = MEMORY[0x1E696AD98];
  v30 = [v4 flagColors];
  v31 = [v29 numberWithBool:{objc_msgSend(v30, "containsIndex:", 0)}];
  [v3 setObject:v31 forKeyedSubscript:@":has_Red_flag"];

  v32 = MEMORY[0x1E696AD98];
  v33 = [v4 flagColors];
  v34 = [v32 numberWithBool:{objc_msgSend(v33, "containsIndex:", 1)}];
  [v3 setObject:v34 forKeyedSubscript:@":has_Orange_flag"];

  v35 = MEMORY[0x1E696AD98];
  v36 = [v4 flagColors];
  v37 = [v35 numberWithBool:{objc_msgSend(v36, "containsIndex:", 2)}];
  [v3 setObject:v37 forKeyedSubscript:@":has_Yellow_flag"];

  v38 = MEMORY[0x1E696AD98];
  v39 = [v4 flagColors];
  v40 = [v38 numberWithBool:{objc_msgSend(v39, "containsIndex:", 3)}];
  [v3 setObject:v40 forKeyedSubscript:@":has_Green_flag"];

  v41 = MEMORY[0x1E696AD98];
  v42 = [v4 flagColors];
  v43 = [v41 numberWithBool:{objc_msgSend(v42, "containsIndex:", 4)}];
  [v3 setObject:v43 forKeyedSubscript:@":has_Blue_flag"];

  v44 = MEMORY[0x1E696AD98];
  v45 = [v4 flagColors];
  v46 = [v44 numberWithBool:{objc_msgSend(v45, "containsIndex:", 5)}];
  [v3 setObject:v46 forKeyedSubscript:@":has_Purple_flag"];

  v47 = MEMORY[0x1E696AD98];
  v48 = [v4 flagColors];
  v49 = [v47 numberWithBool:{objc_msgSend(v48, "containsIndex:", 6)}];
  [v3 setObject:v49 forKeyedSubscript:@":has_Gray_flag"];

  v50 = MEMORY[0x1E696AD98];
  v51 = [v4 flags];
  v52 = [v50 numberWithBool:{objc_msgSend(v51, "draft")}];
  [v3 setObject:v52 forKeyedSubscript:@":draft"];

  v53 = MEMORY[0x1E696AD98];
  v54 = [v4 flags];
  v55 = [v53 numberWithBool:{objc_msgSend(v54, "replied")}];
  [v3 setObject:v55 forKeyedSubscript:@":replied"];

  v56 = MEMORY[0x1E696AD98];
  v57 = [v4 flags];
  v58 = [v56 numberWithBool:{objc_msgSend(v57, "forwarded")}];
  [v3 setObject:v58 forKeyedSubscript:@":forwarded"];

  v59 = MEMORY[0x1E696AD98];
  v60 = [v4 flags];
  v61 = [v59 numberWithBool:{objc_msgSend(v60, "redirected")}];
  [v3 setObject:v61 forKeyedSubscript:@":redirected"];

  v62 = MEMORY[0x1E696AD98];
  v63 = [v4 flags];
  v64 = [v62 numberWithBool:{objc_msgSend(v63, "junkLevelSetByUser")}];
  [v3 setObject:v64 forKeyedSubscript:@":junk_level_set_by_user"];

  v65 = MEMORY[0x1E696AD98];
  v66 = [v4 flags];
  v67 = [v65 numberWithUnsignedInteger:{objc_msgSend(v66, "junkLevel")}];
  [v3 setObject:v67 forKeyedSubscript:@":junk_level"];

  v68 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "hasUnflagged")}];
  [v3 setObject:v68 forKeyedSubscript:@":has_unflagged"];

  v69 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "hasAttachments")}];
  [v3 setObject:v69 forKeyedSubscript:@":has_attachments"];

  v70 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
  [v3 setObject:v70 forKeyedSubscript:@":count"];

  v71 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  [v3 setObject:v71 forKeyedSubscript:@":journaled"];

  v72 = MEMORY[0x1E696AD98];
  v73 = [v4 flags];
  v74 = [v72 numberWithBool:{objc_msgSend(v73, "touchedByCleanup")}];
  [v3 setObject:v74 forKeyedSubscript:@":is_icloud_cleanup"];
}

void __76___EDThreadPersistence_ThreadMessages_addThreadReplacingExisting_journaled___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [v3 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    __76___EDThreadPersistence_ThreadMessages_addThreadReplacingExisting_journaled___block_invoke_2_cold_1();
  }

  if ([v3 code] == 19)
  {
    [*(a1 + 32) _collectDebuggingInfo];
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:@"SQLITE_CONSTRAINT" reason:0 userInfo:0];
    objc_exception_throw(v6);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __60___EDThreadPersistence_ThreadMessages__collectDebuggingInfo__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __60___EDThreadPersistence_ThreadMessages__collectDebuggingInfo__block_invoke_2_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

void __60___EDThreadPersistence_ThreadMessages__collectDebuggingInfo__block_invoke_136(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [v3 objectForKeyedSubscript:@"ROWID"];
    [objc_claimAutoreleasedReturnValue() stringValue];
    objc_claimAutoreleasedReturnValue();
    __60___EDThreadPersistence_ThreadMessages__collectDebuggingInfo__block_invoke_136_cold_1();
  }

  ++*(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
}

void __60___EDThreadPersistence_ThreadMessages__collectDebuggingInfo__block_invoke_144(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = MEMORY[0x1E696AD98];
  v4 = [*(a1 + 32) objectID];
  v5 = [v3 numberWithLongLong:{objc_msgSend(v4, "conversationID")}];
  [v6 setObject:v5 forKeyedSubscript:@":conversation_id"];
}

void __60___EDThreadPersistence_ThreadMessages__collectDebuggingInfo__block_invoke_2_145(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __60___EDThreadPersistence_ThreadMessages__collectDebuggingInfo__block_invoke_2_145_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

void __60___EDThreadPersistence_ThreadMessages__collectDebuggingInfo__block_invoke_148(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [v3 objectForKeyedSubscript:@"conversation_id"];
    [objc_claimAutoreleasedReturnValue() stringValue];
    objc_claimAutoreleasedReturnValue();
    __60___EDThreadPersistence_ThreadMessages__collectDebuggingInfo__block_invoke_148_cold_1();
  }

  ++*(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
}

void __60___EDThreadPersistence_ThreadMessages__collectDebuggingInfo__block_invoke_155(id *a1, void *a2)
{
  v6 = a2;
  if (a1[4])
  {
    [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(a1[4], "databaseID")}];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v3 = ;
  [v6 setObject:v3 forKeyedSubscript:@":newest_read_message"];

  if (a1[5])
  {
    [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(a1[5], "databaseID")}];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v4 = ;
  [v6 setObject:v4 forKeyedSubscript:@":newest_message"];

  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(a1[6], "databaseID")}];
  [v6 setObject:v5 forKeyedSubscript:@":display_message"];
}

void __60___EDThreadPersistence_ThreadMessages__collectDebuggingInfo__block_invoke_2_156(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __60___EDThreadPersistence_ThreadMessages__collectDebuggingInfo__block_invoke_2_156_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

void __60___EDThreadPersistence_ThreadMessages__collectDebuggingInfo__block_invoke_159(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [v3 objectForKeyedSubscript:@"ROWID"];
    [objc_claimAutoreleasedReturnValue() stringValue];
    objc_claimAutoreleasedReturnValue();
    __60___EDThreadPersistence_ThreadMessages__collectDebuggingInfo__block_invoke_159_cold_1();
  }

  ++*(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
}

void __70___EDThreadPersistence_ThreadMessages_updateThreadTableWithJournaled___block_invoke(uint64_t a1, void *a2)
{
  v68 = a2;
  v3 = [*(a1 + 32) thread];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 40)];
  [v68 setObject:v4 forKeyedSubscript:@":conversation_id"];

  v5 = [*(a1 + 32) thread];
  v6 = [v5 date];
  [v68 setObject:v6 forKeyedSubscript:@":date"];

  v7 = [*(a1 + 32) thread];
  v8 = [v7 displayDate];
  [v68 setObject:v8 forKeyedSubscript:@":display_date"];

  v9 = [v3 readLater];
  v10 = [v9 date];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  [v68 setObject:v11 forKeyedSubscript:@":read_later_date"];
  if (!v10)
  {
  }

  v12 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "threadScopeDatabaseID")}];
  [v68 setObject:v12 forKeyedSubscript:@":scope"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48)];
  [v68 setObject:v13 forKeyedSubscript:@":journaled"];

  v14 = MEMORY[0x1E696AD98];
  v15 = [*(a1 + 32) thread];
  v16 = [v14 numberWithBool:{objc_msgSend(v15, "hasUnflagged")}];
  [v68 setObject:v16 forKeyedSubscript:@":has_unflagged"];

  v17 = MEMORY[0x1E696AD98];
  v18 = [*(a1 + 32) thread];
  v19 = [v17 numberWithBool:{objc_msgSend(v18, "hasAttachments")}];
  [v68 setObject:v19 forKeyedSubscript:@":has_attachments"];

  v20 = MEMORY[0x1E696AD98];
  v21 = [v3 flags];
  v22 = [v20 numberWithBool:{objc_msgSend(v21, "read")}];
  [v68 setObject:v22 forKeyedSubscript:@":read"];

  v23 = MEMORY[0x1E696AD98];
  v24 = [v3 flags];
  v25 = [v23 numberWithBool:{objc_msgSend(v24, "flagged")}];
  [v68 setObject:v25 forKeyedSubscript:@":flagged"];

  v26 = MEMORY[0x1E696AD98];
  v27 = [v3 flags];
  v28 = [v26 numberWithBool:{objc_msgSend(v27, "draft")}];
  [v68 setObject:v28 forKeyedSubscript:@":draft"];

  v29 = MEMORY[0x1E696AD98];
  v30 = [v3 flags];
  v31 = [v29 numberWithBool:{objc_msgSend(v30, "replied")}];
  [v68 setObject:v31 forKeyedSubscript:@":replied"];

  v32 = MEMORY[0x1E696AD98];
  v33 = [v3 flags];
  v34 = [v32 numberWithBool:{objc_msgSend(v33, "forwarded")}];
  [v68 setObject:v34 forKeyedSubscript:@":forwarded"];

  v35 = MEMORY[0x1E696AD98];
  v36 = [v3 flags];
  v37 = [v35 numberWithBool:{objc_msgSend(v36, "redirected")}];
  [v68 setObject:v37 forKeyedSubscript:@":redirected"];

  v38 = MEMORY[0x1E696AD98];
  v39 = [v3 flags];
  v40 = [v38 numberWithBool:{objc_msgSend(v39, "junkLevelSetByUser")}];
  [v68 setObject:v40 forKeyedSubscript:@":junk_level_set_by_user"];

  v41 = MEMORY[0x1E696AD98];
  v42 = [v3 flags];
  v43 = [v41 numberWithUnsignedInteger:{objc_msgSend(v42, "junkLevel")}];
  [v68 setObject:v43 forKeyedSubscript:@":junk_level"];

  v44 = MEMORY[0x1E696AD98];
  v45 = [v3 flags];
  v46 = [v44 numberWithBool:{objc_msgSend(v45, "touchedByCleanup")}];
  [v68 setObject:v46 forKeyedSubscript:@":is_icloud_cleanup"];

  v47 = [v3 flagColors];
  v48 = [v47 containsIndex:0];

  v49 = [MEMORY[0x1E696AD98] numberWithBool:v48];
  [v68 setObject:v49 forKeyedSubscript:@":has_Red_flag"];

  v50 = [v3 flagColors];
  v51 = [v50 containsIndex:1];

  v52 = [MEMORY[0x1E696AD98] numberWithBool:v51];
  [v68 setObject:v52 forKeyedSubscript:@":has_Orange_flag"];

  v53 = [v3 flagColors];
  v54 = [v53 containsIndex:2];

  v55 = [MEMORY[0x1E696AD98] numberWithBool:v54];
  [v68 setObject:v55 forKeyedSubscript:@":has_Yellow_flag"];

  v56 = [v3 flagColors];
  v57 = [v56 containsIndex:3];

  v58 = [MEMORY[0x1E696AD98] numberWithBool:v57];
  [v68 setObject:v58 forKeyedSubscript:@":has_Green_flag"];

  v59 = [v3 flagColors];
  v60 = [v59 containsIndex:4];

  v61 = [MEMORY[0x1E696AD98] numberWithBool:v60];
  [v68 setObject:v61 forKeyedSubscript:@":has_Blue_flag"];

  v62 = [v3 flagColors];
  v63 = [v62 containsIndex:5];

  v64 = [MEMORY[0x1E696AD98] numberWithBool:v63];
  [v68 setObject:v64 forKeyedSubscript:@":has_Purple_flag"];

  v65 = [v3 flagColors];
  v66 = [v65 containsIndex:6];

  v67 = [MEMORY[0x1E696AD98] numberWithBool:v66];
  [v68 setObject:v67 forKeyedSubscript:@":has_Gray_flag"];
}

void __70___EDThreadPersistence_ThreadMessages_updateThreadTableWithJournaled___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [v2 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    __70___EDThreadPersistence_ThreadMessages_updateThreadTableWithJournaled___block_invoke_2_cold_1();
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __70___EDThreadPersistence_ThreadMessages_updateThreadTableWithJournaled___block_invoke_168(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = MEMORY[0x1E696AD98];
  v4 = [*(a1 + 32) thread];
  v5 = [v4 objectID];
  v6 = [v3 numberWithLongLong:{objc_msgSend(v5, "conversationID")}];
  [v8 setObject:v6 forKeyedSubscript:@":conversation_id"];

  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "threadScopeDatabaseID")}];
  [v8 setObject:v7 forKeyedSubscript:@":scope"];
}

void __70___EDThreadPersistence_ThreadMessages_updateThreadTableWithJournaled___block_invoke_2_169(uint64_t a1)
{
  v2 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    __70___EDThreadPersistence_ThreadMessages_updateThreadTableWithJournaled___block_invoke_2_169_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
}

void __70___EDThreadPersistence_ThreadMessages_updateThreadTableWithJournaled___block_invoke_170(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectAtIndexedSubscript:0];
  *(*(*(a1 + 32) + 8) + 24) = [v3 databaseIDValue];
}

id __56___EDThreadPersistence_PersistedThread_debugDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", objc_msgSend(v2, "databaseID")];

  return v3;
}

void __64___EDThreadPersistence_PersistedThread_updateNewestReadMessage___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "threadDatabaseID")}];
  [v7 setObject:v3 forKeyedSubscript:@":thread"];

  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 40), "databaseID")}];
  [v7 setObject:v4 forKeyedSubscript:@":newest_read_message"];

  v5 = [*(a1 + 40) message];
  v6 = [v5 date];
  [v7 setObject:v6 forKeyedSubscript:@":date"];
}

void __64___EDThreadPersistence_PersistedThread_updateNewestReadMessage___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [v2 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    __70___EDThreadPersistence_ThreadMessages_updateThreadTableWithJournaled___block_invoke_2_cold_1();
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __86___EDThreadPersistence_PersistedThread_updateDisplayMessageWithUnreadWrappedMessages___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "threadDatabaseID")}];
  [v4 setObject:v3 forKeyedSubscript:@":thread"];
}

void __86___EDThreadPersistence_PersistedThread_updateDisplayMessageWithUnreadWrappedMessages___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [v2 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    __86___EDThreadPersistence_PersistedThread_updateDisplayMessageWithUnreadWrappedMessages___block_invoke_2_cold_1();
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __86___EDThreadPersistence_PersistedThread_updateDisplayMessageWithUnreadWrappedMessages___block_invoke_249(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 objectAtIndexedSubscript:0];
  v4 = [v3 dateValue];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [v11 objectAtIndexedSubscript:1];
  v8 = [v7 dateValue];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __86___EDThreadPersistence_PersistedThread_updateDisplayMessageWithUnreadWrappedMessages___block_invoke_2_250(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 message];
  v7 = [v6 date];

  if (!*(*(a1[4] + 8) + 40) || ([v7 ef_isLaterThanDate:?]) && ((objc_msgSend(v7, "ef_isEarlierThanDate:", *(*(a1[5] + 8) + 40)) & 1) != 0 || *(*(a1[4] + 8) + 40) && objc_msgSend(*(*(a1[5] + 8) + 40), "isEqualToDate:")))
  {
    *(*(a1[6] + 8) + 24) = [v8 databaseID];
    *a4 = 1;
  }
}

void __86___EDThreadPersistence_PersistedThread_updateDisplayMessageWithUnreadWrappedMessages___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "threadDatabaseID")}];
  [v5 setObject:v3 forKeyedSubscript:@":thread"];

  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:*(*(*(a1 + 40) + 8) + 24)];
  [v5 setObject:v4 forKeyedSubscript:@":display_message"];
}

void __86___EDThreadPersistence_PersistedThread_updateDisplayMessageWithUnreadWrappedMessages___block_invoke_4(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [v2 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    __86___EDThreadPersistence_PersistedThread_updateDisplayMessageWithUnreadWrappedMessages___block_invoke_4_cold_1();
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __86___EDThreadPersistence_PersistedThread_updateDisplayMessageWithUnreadWrappedMessages___block_invoke_261(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "threadDatabaseID")}];
  [v4 setObject:v3 forKeyedSubscript:@":thread"];
}

void __86___EDThreadPersistence_PersistedThread_updateDisplayMessageWithUnreadWrappedMessages___block_invoke_2_262(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [v2 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    __86___EDThreadPersistence_PersistedThread_updateDisplayMessageWithUnreadWrappedMessages___block_invoke_4_cold_1();
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __52___EDThreadPersistence_PersistedThread_addMailboxes__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "threadDatabaseID")}];
  [v4 setObject:v3 forKeyedSubscript:@":thread"];

  [v4 setObject:*(a1 + 40) forKeyedSubscript:@":mailbox"];
}

void __52___EDThreadPersistence_PersistedThread_addMailboxes__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [v2 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    __52___EDThreadPersistence_PersistedThread_addMailboxes__block_invoke_2_cold_1();
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __59___EDThreadPersistence_PersistedThread_currentSenderCounts__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "threadDatabaseID")}];
  [v4 setObject:v3 forKeyedSubscript:@":thread"];
}

void __59___EDThreadPersistence_PersistedThread_currentSenderCounts__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [v2 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    __59___EDThreadPersistence_PersistedThread_currentSenderCounts__block_invoke_2_cold_1();
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __59___EDThreadPersistence_PersistedThread_currentSenderCounts__block_invoke_279(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectAtIndexedSubscript:0];
  *(*(*(a1 + 32) + 8) + 24) = [v3 integerValue];
}

void __66___EDThreadPersistence_PersistedThread_senderDatabaseIDsAndDates___block_invoke_2()
{
  v0 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __66___EDThreadPersistence_PersistedThread_senderDatabaseIDsAndDates___block_invoke_2_cold_1();
  }
}

void __66___EDThreadPersistence_PersistedThread_senderDatabaseIDsAndDates___block_invoke_288(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 objectForKeyedSubscript:@"sender"];
  v4 = [v3 numberValue];

  if (v4)
  {
    v5 = [v8 objectForKeyedSubscript:@"date_received"];
    v6 = [v5 dateValue];

    v7 = [*(a1 + 32) objectForKeyedSubscript:v4];
    if (!v7 || [v6 ef_isLaterThanDate:v7])
    {
      [*(a1 + 32) setObject:v6 forKeyedSubscript:v4];
    }
  }
}

void __51___EDThreadPersistence_PersistedThread_addSenders___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) sqlHelper];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51___EDThreadPersistence_PersistedThread_addSenders___block_invoke_2;
  v14[3] = &unk_1E8258AD8;
  v10 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v11 = v7;
  v15 = v11;
  v12 = v8;
  v16 = v12;
  v13 = [v9 executeUpsertSQL:v10 bindings:v14 errorHandler:&__block_literal_global_302_0];

  if (v13 == *MEMORY[0x1E699A728])
  {
    *a4 = 1;
  }

  else
  {
    ++*(*(*(a1 + 48) + 8) + 24);
  }
}

void __51___EDThreadPersistence_PersistedThread_addSenders___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "threadDatabaseID")}];
  [v4 setObject:v3 forKeyedSubscript:@":thread"];

  [v4 setObject:*(a1 + 40) forKeyedSubscript:@":address"];
  [v4 setObject:*(a1 + 48) forKeyedSubscript:@":date"];
}

void __51___EDThreadPersistence_PersistedThread_addSenders___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [v2 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    __51___EDThreadPersistence_PersistedThread_addSenders___block_invoke_3_cold_1();
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __74___EDThreadPersistence_PersistedThread_setPriorityForDisplayMessageSender__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "threadDatabaseID")}];
  [v4 setObject:v3 forKeyedSubscript:@":thread"];
}

void __74___EDThreadPersistence_PersistedThread_setPriorityForDisplayMessageSender__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [v2 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    __59___EDThreadPersistence_PersistedThread_currentSenderCounts__block_invoke_2_cold_1();
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __74___EDThreadPersistence_PersistedThread_setPriorityForDisplayMessageSender__block_invoke_309(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v6 = [v7 objectAtIndexedSubscript:0];
  *(*(*(a1 + 32) + 8) + 24) = [v6 databaseIDValue];

  *a4 = 1;
}

void __74___EDThreadPersistence_PersistedThread_setPriorityForDisplayMessageSender__block_invoke_2_313(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "threadDatabaseID")}];
  [v4 setObject:v3 forKeyedSubscript:@":thread"];
}

void __74___EDThreadPersistence_PersistedThread_setPriorityForDisplayMessageSender__block_invoke_3(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [v2 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    __74___EDThreadPersistence_PersistedThread_setPriorityForDisplayMessageSender__block_invoke_3_cold_1();
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __74___EDThreadPersistence_PersistedThread_setPriorityForDisplayMessageSender__block_invoke_316(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v6 = [v7 objectAtIndexedSubscript:0];
  *(*(*(a1 + 32) + 8) + 24) = [v6 databaseIDValue];

  *a4 = 1;
}

void __74___EDThreadPersistence_PersistedThread_setPriorityForDisplayMessageSender__block_invoke_2_320(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "threadDatabaseID")}];
  [v4 setObject:v3 forKeyedSubscript:@":thread"];
}

void __74___EDThreadPersistence_PersistedThread_setPriorityForDisplayMessageSender__block_invoke_3_321(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [v2 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    __74___EDThreadPersistence_PersistedThread_setPriorityForDisplayMessageSender__block_invoke_3_321_cold_1();
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __74___EDThreadPersistence_PersistedThread_setPriorityForDisplayMessageSender__block_invoke_327(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "threadDatabaseID")}];
  [v5 setObject:v3 forKeyedSubscript:@":thread"];

  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:*(*(*(a1 + 40) + 8) + 24)];
  [v5 setObject:v4 forKeyedSubscript:@":address"];
}

void __74___EDThreadPersistence_PersistedThread_setPriorityForDisplayMessageSender__block_invoke_2_328(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [v2 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    __74___EDThreadPersistence_PersistedThread_setPriorityForDisplayMessageSender__block_invoke_2_328_cold_1();
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __96___EDThreadPersistence_PersistedThread_recipientDatabaseIDsAndDatesForRecipientType_recipients___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
  [v4 setObject:v3 forKeyedSubscript:@":recipients_type"];
}

void __96___EDThreadPersistence_PersistedThread_recipientDatabaseIDsAndDatesForRecipientType_recipients___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [v2 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    __96___EDThreadPersistence_PersistedThread_recipientDatabaseIDsAndDatesForRecipientType_recipients___block_invoke_2_cold_1();
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __96___EDThreadPersistence_PersistedThread_recipientDatabaseIDsAndDatesForRecipientType_recipients___block_invoke_340(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 objectForKeyedSubscript:@"address"];
  v4 = [v3 numberValue];

  v5 = [v8 objectForKeyedSubscript:@"date_received"];
  v6 = [v5 dateValue];

  v7 = [*(a1 + 32) objectForKeyedSubscript:v4];
  if (!v7 || [v6 ef_isLaterThanDate:v7])
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v4];
  }
}

void __61___EDThreadPersistence_PersistedThread_addRecipients_ofType___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) sqlHelper];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61___EDThreadPersistence_PersistedThread_addRecipients_ofType___block_invoke_2;
  v14[3] = &unk_1E8258C10;
  v14[4] = *(a1 + 32);
  v10 = v7;
  v15 = v10;
  v11 = v8;
  v12 = *(a1 + 48);
  v16 = v11;
  v17 = v12;
  v13 = [v9 executeUpsertSQL:@"INSERT INTO thread_recipients( thread bindings:address errorHandler:{type, date, priority) VALUES( :thread, :address, :type, :date, 0) ON CONFLICT (thread, type, address) DO UPDATE SET   date = max(date, excluded.date) ;", v14, &__block_literal_global_351_0}];

  if (v13 == *MEMORY[0x1E699A728])
  {
    *a4 = 1;
  }

  else
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

void __61___EDThreadPersistence_PersistedThread_addRecipients_ofType___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "threadDatabaseID")}];
  [v5 setObject:v3 forKeyedSubscript:@":thread"];

  [v5 setObject:*(a1 + 40) forKeyedSubscript:@":address"];
  [v5 setObject:*(a1 + 48) forKeyedSubscript:@":date"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
  [v5 setObject:v4 forKeyedSubscript:@":type"];
}

void __61___EDThreadPersistence_PersistedThread_addRecipients_ofType___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [v2 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    __61___EDThreadPersistence_PersistedThread_addRecipients_ofType___block_invoke_3_cold_1();
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __63___EDThreadPersistence_PersistedThread__ensureTempMessagesView__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = MEMORY[0x1E696AD98];
  v4 = [*(a1 + 32) thread];
  v5 = [v3 numberWithLongLong:{objc_msgSend(v4, "conversationID")}];
  [v6 setObject:v5 forKeyedSubscript:@":conversation_id"];
}

void __63___EDThreadPersistence_PersistedThread__ensureTempMessagesView__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [v2 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    __63___EDThreadPersistence_PersistedThread__ensureTempMessagesView__block_invoke_2_cold_1();
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __63___EDThreadPersistence_PersistedThread__ensureTempMessagesView__block_invoke_357(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696AD98];
  v5 = [a2 objectAtIndexedSubscript:0];
  v4 = [v3 numberWithLongLong:{objc_msgSend(v5, "databaseIDValue")}];
  [v2 addObject:v4];
}

- (void)_isThreadScopePrecomputed:wantsPrecomputed:shouldMigrate:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  _os_log_fault_impl(&dword_1C61EF000, v0, OS_LOG_TYPE_FAULT, "Client wants to precompute, but we're unable to do so for threadscope: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)threadForObjectID:originatingQuery:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Thread has no subject: %{public}@", v5);
}

- (void)threadForObjectID:originatingQuery:error:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Thread has no sender: %{public}@", v5);
}

void __64__EDThreadPersistence_threadForObjectID_originatingQuery_error___block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __64__EDThreadPersistence_threadForObjectID_originatingQuery_error___block_invoke_cold_2(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __64__EDThreadPersistence_threadForObjectID_originatingQuery_error___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __113__EDThreadPersistence_nextExistingThreadObjectIDForThreadObjectID_forSortKeys_journaledThreadsToCheck_excluding___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __113__EDThreadPersistence_nextExistingThreadObjectIDForThreadObjectID_forSortKeys_journaledThreadsToCheck_excluding___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __113__EDThreadPersistence_nextExistingThreadObjectIDForThreadObjectID_forSortKeys_journaledThreadsToCheck_excluding___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_databaseIDForThreadObjectID:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_databaseIDForThreadObjectID:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)persistenceIsInitializingDatabaseWithConnection:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __89__EDThreadPersistence__getIndividualMailboxScopes_unifiedMailboxThreadScopes_forAccount___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_writeThreadedMessages:withChangedKeyPaths:journaled:generationWindow:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_messageFilterExpressionForFilterPredicate:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)beginMigratingThreadScope:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Unable to request background processing assertion: %{public}@", v5);
}

- (void)endMigratingThreadScope:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  _os_log_fault_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_FAULT, "Attempting to finish migration for a thread scope which doesn't exist: %{public}@", v4, 0xCu);
}

- (void)addThreadsDuringMigration:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  _os_log_fault_impl(&dword_1C61EF000, v0, OS_LOG_TYPE_FAULT, "Exception adding threads during migration: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __66__EDThreadPersistence_oldestThreadObjectIDForMailbox_threadScope___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Unable to get oldest thread object ID for mailbox: %{public}@", v5);
}

void __54__EDThreadPersistence_verifyConsistencyOfThreadScope___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0(v1, v2, v3, 3.8521e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Thread scope is inconsistent - conversation id %lld is empty and has null display message: %{public}@", v4, v5);
}

void __54__EDThreadPersistence_verifyConsistencyOfThreadScope___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0(v1, v2, v3, 3.8521e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Thread scope is inconsistent - conversation id %lld has null display message: %{public}@", v4, v5);
}

void __54__EDThreadPersistence_verifyConsistencyOfThreadScope___block_invoke_2_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0(v1, v2, v3, 3.8521e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Thread scope is inconsistent - conversation id %lld is empty: %{public}@", v4, v5);
}

void __54__EDThreadPersistence_verifyConsistencyOfThreadScope___block_invoke_2_cold_4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0(v1, v2, v3, 3.8521e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Thread scope is inconsistent - conversation id %lld has unknown consistency issue: %{public}@", v4, v5);
}

void __54__EDThreadPersistence_verifyConsistencyOfThreadScope___block_invoke_2_cold_5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Conversation IDs in messages but not threads: %{public}@", v5);
}

void __54__EDThreadPersistence_verifyConsistencyOfThreadScope___block_invoke_2_cold_6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Conversation IDs in threads but not messages: %{public}@", v5);
}

- (void)_logFailedVerifyConsistencyForConversationIDs:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "%{public}@", v5);
}

void __101__EDThreadPersistence__addThreadScopeToDatabase_needsUpdate_lastViewedDate_updateThreadScopeManager___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to add thread scope %{public}@", v5);
}

void __76___EDThreadPersistence_ThreadMessages_addThreadReplacingExisting_journaled___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_5_1(&dword_1C61EF000, v3, v4, "Failed to add thread: %{public}@", v5);
}

void __60___EDThreadPersistence_ThreadMessages__collectDebuggingInfo__block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_11_0(&dword_1C61EF000, a2, a3, "Failed to query thread_scopes: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __60___EDThreadPersistence_ThreadMessages__collectDebuggingInfo__block_invoke_136_cold_1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_10(v2, v3, 5.7779e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v4, v5, "thread_scopes — ROWID: %@", v6);
}

void __60___EDThreadPersistence_ThreadMessages__collectDebuggingInfo__block_invoke_2_145_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_11_0(&dword_1C61EF000, a2, a3, "Failed to query conversations: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __60___EDThreadPersistence_ThreadMessages__collectDebuggingInfo__block_invoke_148_cold_1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_10(v2, v3, 5.7779e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v4, v5, "conversations — conversation_id: %@", v6);
}

void __60___EDThreadPersistence_ThreadMessages__collectDebuggingInfo__block_invoke_2_156_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_11_0(&dword_1C61EF000, a2, a3, "Failed to query messages: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __60___EDThreadPersistence_ThreadMessages__collectDebuggingInfo__block_invoke_159_cold_1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_10(v2, v3, 5.7779e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v4, v5, "messages — ROWID: %@", v6);
}

void __70___EDThreadPersistence_ThreadMessages_updateThreadTableWithJournaled___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_5_1(&dword_1C61EF000, v3, v4, "Failed to update thread: %{public}@", v5);
}

void __86___EDThreadPersistence_PersistedThread_updateDisplayMessageWithUnreadWrappedMessages___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_5_1(&dword_1C61EF000, v3, v4, "Failed to get date of newest read / current display messages: %{public}@", v5);
}

void __86___EDThreadPersistence_PersistedThread_updateDisplayMessageWithUnreadWrappedMessages___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_5_1(&dword_1C61EF000, v3, v4, "Failed to update thread display message: %{public}@", v5);
}

void __52___EDThreadPersistence_PersistedThread_addMailboxes__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_5_1(&dword_1C61EF000, v3, v4, "Failed to add thread mailbox: %{public}@", v5);
}

void __59___EDThreadPersistence_PersistedThread_currentSenderCounts__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_5_1(&dword_1C61EF000, v3, v4, "Failed to get current display message sender: %{public}@", v5);
}

void __51___EDThreadPersistence_PersistedThread_addSenders___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_5_1(&dword_1C61EF000, v3, v4, "Failed to add sender: %{public}@", v5);
}

void __74___EDThreadPersistence_PersistedThread_setPriorityForDisplayMessageSender__block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_5_1(&dword_1C61EF000, v3, v4, "Failed to get actual display message sender: %{public}@", v5);
}

void __74___EDThreadPersistence_PersistedThread_setPriorityForDisplayMessageSender__block_invoke_3_321_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_5_1(&dword_1C61EF000, v3, v4, "Failed to clear sender priority: %{public}@", v5);
}

void __74___EDThreadPersistence_PersistedThread_setPriorityForDisplayMessageSender__block_invoke_2_328_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_5_1(&dword_1C61EF000, v3, v4, "Failed to set the sender priority: %{public}@", v5);
}

void __96___EDThreadPersistence_PersistedThread_recipientDatabaseIDsAndDatesForRecipientType_recipients___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_5_1(&dword_1C61EF000, v3, v4, "Failed to get message receipients for thread: %{public}@", v5);
}

void __61___EDThreadPersistence_PersistedThread_addRecipients_ofType___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_5_1(&dword_1C61EF000, v3, v4, "Failed to add recipient: %{public}@", v5);
}

void __63___EDThreadPersistence_PersistedThread__ensureTempMessagesView__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_5_1(&dword_1C61EF000, v3, v4, "Failed to get message row IDs for thread: %{public}@", v5);
}

@end