@interface EDConversationPersistence
+ (EFSQLTableSchema)conversationIDMessageIDTableSchema;
+ (EFSQLTableSchema)conversationsTableSchema;
+ (id)log;
+ (id)tablesAndForeignKeysToResolve:(id *)a3 associationsToResolve:(id *)a4;
+ (int64_t)conversationNotificationLevelForConversationFlags:(unint64_t)a3;
+ (unint64_t)conversationFlagsForConversationNotificationLevel:(int64_t)a3;
- (BOOL)hasSubscribedConversations;
- (EDConversationPersistence)initWithDatabase:(id)a3 hookRegistry:(id)a4;
- (EDPersistenceDatabase)database;
- (id)flaggedConversationsChangedBetweenStartAnchor:(int64_t)a3 endAnchor:(int64_t)a4;
- (id)messageIDsForConversationID:(int64_t)a3 limit:(unint64_t)a4;
- (id)syncedConversationIDsBySyncKey;
- (int64_t)conversationIDForMessageIDs:(id)a3;
- (int64_t)createConversationWithFlags:(unint64_t)a3;
- (int64_t)currentSyncAnchorForDailyExport;
- (int64_t)previousSyncAnchorForDailyExport;
- (unint64_t)persistenceConversationFlagsForConversationID:(int64_t)a3;
- (void)_notifyOfFlagChangeForConversationID:(int64_t)a3 oldFlags:(unint64_t)a4 newFlags:(unint64_t)a5 reason:(int64_t)a6 generationWindow:(id)a7;
- (void)_postChangeNotificationForConversationID:(int64_t)a3 flags:(unint64_t)a4 oldFlags:(unint64_t)a5 reason:(int64_t)a6;
- (void)clearConversationFlagsAndSyncKeyForConversationIDs:(id)a3;
- (void)initializeConversationManagerAndPerformInitialSync;
- (void)markConversationWithIDs:(id)a3 mute:(BOOL)a4;
- (void)pruneConversationTables:(double)a3;
- (void)setNewPreviousSyncAnchorForDailyExport:(int64_t)a3;
- (void)setPersistenceConversationFlags:(unint64_t)a3 forConversationIDs:(id)a4 reason:(int64_t)a5;
- (void)setPersistenceConversationFlags:(unint64_t)a3 syncKey:(id)a4 forConversationID:(int64_t)a5 reason:(int64_t)a6;
- (void)updateAssociationTableForMessageID:(id)a3 dateSent:(id)a4 conversationID:(int64_t)a5;
- (void)updateAssociationTableForMessageIDs:(id)a3 conversationID:(int64_t)a4;
- (void)updateAssociationTableForMessagePersistentIDs:(id)a3 conversationID:(int64_t)a4;
- (void)updateConversationNotificationLevel:(int64_t)a3 forConversationIDs:(id)a4;
@end

@implementation EDConversationPersistence

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__EDConversationPersistence_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_30 != -1)
  {
    dispatch_once(&log_onceToken_30, block);
  }

  v2 = log_log_30;

  return v2;
}

void __32__EDConversationPersistence_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_30;
  log_log_30 = v1;
}

+ (id)tablesAndForeignKeysToResolve:(id *)a3 associationsToResolve:(id *)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v7 = [a1 conversationsTableSchema];
  v8 = [a1 conversationIDMessageIDTableSchema];
  v9 = [v8 columnForName:@"conversation_id"];
  [v9 setAsForeignKeyForTable:v7 onDelete:2 onUpdate:2];

  v10 = MEMORY[0x1E695E0F0];
  *a3 = MEMORY[0x1E695E0F0];
  *a4 = v10;
  v14[0] = v7;
  v14[1] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (EFSQLTableSchema)conversationsTableSchema
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"flags" nullable:0 defaultValue:&unk_1F45E6628];
  v9[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] textColumnWithName:@"sync_key" collation:1 nullable:1];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v2 initWithName:@"conversations" rowIDType:2 rowIDAlias:@"conversation_id" columns:v5];

  [v6 addIndexForColumns:&unk_1F45E6E80];
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (EFSQLTableSchema)conversationIDMessageIDTableSchema
{
  v10[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"conversation_id" nullable:0];
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"message_id" nullable:0 defaultValue:{&unk_1F45E6628, v3}];
  v10[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"date_sent" nullable:0 defaultValue:&unk_1F45E6628];
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
  v7 = [v2 initWithName:@"conversation_id_message_id" columns:v6 primaryKeyColumns:&unk_1F45E6E98];

  [v7 addIndexForColumns:&unk_1F45E6EB0];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (int64_t)conversationNotificationLevelForConversationFlags:(unint64_t)a3
{
  if ((a3 & 4) != 0)
  {
    return 1;
  }

  else
  {
    return 2 * (a3 & 1);
  }
}

+ (unint64_t)conversationFlagsForConversationNotificationLevel:(int64_t)a3
{
  if (a3 == 1)
  {
    return 4;
  }

  else
  {
    return a3 == 2;
  }
}

- (EDConversationPersistence)initWithDatabase:(id)a3 hookRegistry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = EDConversationPersistence;
  v8 = [(EDConversationPersistence *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_database, v6);
    objc_storeStrong(&v9->_hookRegistry, a4);
    v10 = dispatch_queue_create("com.apple.email.ConversationPersistenceNotification", MEMORY[0x1E69E96A8]);
    notificationQueue = v9->_notificationQueue;
    v9->_notificationQueue = v10;
  }

  return v9;
}

- (void)initializeConversationManagerAndPerformInitialSync
{
  v3 = [[EDUbiquitousConversationManager alloc] initWithDelegate:self];
  conversationManager = self->_conversationManager;
  self->_conversationManager = v3;

  [EDConversationDailyCloudExportActivityManager scheduleWithConversationExportDelegate:self conversationManager:self->_conversationManager];
  [EDConversationPruningActivityManager scheduleWithConversationManager:self->_conversationManager];
  v5 = [(EDConversationPersistence *)self conversationManager];
  [v5 performInitialSync];

  v6 = [(EDConversationPersistence *)self hookRegistry];
  [v6 persistenceDidInitializeConversationSubscriptionProvider];
}

- (id)syncedConversationIDsBySyncKey
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(EDConversationPersistence *)self database];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDConversationPersistence syncedConversationIDsBySyncKey]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__EDConversationPersistence_syncedConversationIDsBySyncKey__block_invoke;
  v8[3] = &unk_1E8251CB8;
  v6 = v3;
  v9 = v6;
  [v4 __performReadWithCaller:v5 usingBlock:v8];

  return v6;
}

uint64_t __59__EDConversationPersistence_syncedConversationIDsBySyncKey__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:{@"SELECT conversation_id, sync_key FROM conversations WHERE sync_key NOT NULL"}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__EDConversationPersistence_syncedConversationIDsBySyncKey__block_invoke_2;
  v8[3] = &unk_1E8250300;
  v9 = *(a1 + 32);
  v7 = 0;
  [v4 executeUsingBlock:v8 error:&v7];
  v5 = v7;
  [v3 handleError:v5 message:@"Selecting synced conversations"];

  return 1;
}

void __59__EDConversationPersistence_syncedConversationIDsBySyncKey__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectForKeyedSubscript:@"conversation_id"];
  v4 = [v3 numberValue];

  v5 = [v7 objectForKeyedSubscript:@"sync_key"];
  v6 = [v5 stringValue];

  if (v4 && v6)
  {
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v6];
  }
}

- (id)messageIDsForConversationID:(int64_t)a3 limit:(unint64_t)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  v16 = __Block_byref_object_dispose__7;
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [(EDConversationPersistence *)self database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDConversationPersistence messageIDsForConversationID:limit:]"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__EDConversationPersistence_messageIDsForConversationID_limit___block_invoke;
  v11[3] = &unk_1E8251CE0;
  v11[5] = a3;
  v11[6] = a4;
  v11[4] = &v12;
  [v7 __performReadWithCaller:v8 usingBlock:v11];

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

uint64_t __63__EDConversationPersistence_messageIDsForConversationID_limit___block_invoke(void *a1, void *a2)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v13[0] = @":conversation_id";
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:a1[5]];
  v13[1] = @":limit";
  v14[0] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[6]];
  v14[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = [v3 preparedStatementForQueryString:@"SELECT message_id FROM conversation_id_message_id WHERE conversation_id = :conversation_id ORDER BY date_sent DESC LIMIT :limit"];
  v11 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__EDConversationPersistence_messageIDsForConversationID_limit___block_invoke_2;
  v12[3] = &unk_1E8250418;
  v12[4] = a1[4];
  [v7 executeWithNamedBindings:v6 usingBlock:v12 error:&v11];
  v8 = v11;
  [v3 handleError:v8 message:@"Selecting message IDs for conversation ID"];

  v9 = *MEMORY[0x1E69E9840];
  return 1;
}

void __63__EDConversationPersistence_messageIDsForConversationID_limit___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"message_id"];
  v4 = [v3 numberValue];

  [*(*(*(a1 + 32) + 8) + 40) addObject:v4];
}

- (int64_t)conversationIDForMessageIDs:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = *MEMORY[0x1E699A728];
  v5 = [(EDConversationPersistence *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDConversationPersistence conversationIDForMessageIDs:]"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__EDConversationPersistence_conversationIDForMessageIDs___block_invoke;
  v10[3] = &unk_1E8250350;
  v7 = v4;
  v11 = v7;
  v12 = &v13;
  [v5 __performReadWithCaller:v6 usingBlock:v10];

  v8 = v14[3];
  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __57__EDConversationPersistence_conversationIDForMessageIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E696AEC0];
  v5 = [*(a1 + 32) componentsJoinedByString:{@", "}];
  v6 = [v4 stringWithFormat:@"SELECT DISTINCT(conversation_id) FROM conversation_id_message_id WHERE message_id IN (%@)", v5];

  v7 = [v3 preparedStatementForQueryString:v6];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__EDConversationPersistence_conversationIDForMessageIDs___block_invoke_2;
  v13[3] = &unk_1E8250178;
  v11 = *(a1 + 32);
  v8 = v11;
  v14 = v11;
  v12 = 0;
  [v7 executeUsingBlock:v13 error:&v12];
  v9 = v12;
  [v3 handleError:v9 message:@"Selecting conversation ID for message IDs"];

  return 1;
}

void __57__EDConversationPersistence_conversationIDForMessageIDs___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = v6;
  if (*(*(*(a1 + 40) + 8) + 24) <= *MEMORY[0x1E699A728])
  {
    v9 = [v6 objectForKeyedSubscript:@"conversation_id"];
    *(*(*(a1 + 40) + 8) + 24) = [v9 databaseIDValue];
  }

  else
  {
    v8 = +[EDConversationPersistence log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __57__EDConversationPersistence_conversationIDForMessageIDs___block_invoke_2_cold_1(a1, v8);
    }

    *a4 = 1;
  }
}

- (unint64_t)persistenceConversationFlagsForConversationID:(int64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = [(EDConversationPersistence *)self database];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDConversationPersistence persistenceConversationFlagsForConversationID:]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__EDConversationPersistence_persistenceConversationFlagsForConversationID___block_invoke;
  v8[3] = &unk_1E8250150;
  v8[4] = &v9;
  v8[5] = a3;
  [v4 __performReadWithCaller:v5 usingBlock:v8];

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __75__EDConversationPersistence_persistenceConversationFlagsForConversationID___block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:@"SELECT flags FROM conversations WHERE conversations.conversation_id = :conversation_id"];
  v12 = @":conversation_id";
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 40)];
  v13[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__EDConversationPersistence_persistenceConversationFlagsForConversationID___block_invoke_2;
  v11[3] = &unk_1E8250418;
  v11[4] = *(a1 + 32);
  [v4 executeWithNamedBindings:v6 usingBlock:v11 error:&v10];
  v7 = v10;

  [v3 handleError:v7 message:@"Selecting flags for conversation ID"];
  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

void __75__EDConversationPersistence_persistenceConversationFlagsForConversationID___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 objectForKeyedSubscript:@"flags"];
  v4 = [v3 numberValue];
  *(*(*(a1 + 32) + 8) + 24) = [v4 unsignedIntegerValue];
}

- (int64_t)createConversationWithFlags:(unint64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = [(EDConversationPersistence *)self database];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDConversationPersistence createConversationWithFlags:]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__EDConversationPersistence_createConversationWithFlags___block_invoke;
  v8[3] = &unk_1E8250150;
  v8[4] = &v9;
  v8[5] = a3;
  [v4 __performWriteWithCaller:v5 usingBlock:v8];

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __57__EDConversationPersistence_createConversationWithFlags___block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:@"INSERT INTO conversations (flags) values (:flags)"];
  v12 = @":flags";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 40)];
  v13[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v11 = 0;
  v7 = [v4 executeWithNamedBindings:v6 usingBlock:0 error:&v11];
  v8 = v11;

  if ((v7 & 1) == 0)
  {
    [v3 handleError:v8 message:@"Creating conversation."];
  }

  *(*(*(a1 + 32) + 8) + 24) = [v3 lastInsertedDatabaseID];

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)markConversationWithIDs:(id)a3 mute:(BOOL)a4
{
  if (a4)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  [(EDConversationPersistence *)self setPersistenceConversationFlags:v5 forConversationIDs:a3 reason:4];
}

- (void)setPersistenceConversationFlags:(unint64_t)a3 forConversationIDs:(id)a4 reason:(int64_t)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v17 = a4;
  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v17;
  v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 longLongValue];
        v13 = [(EDConversationPersistence *)self conversationManager];
        v14 = [v13 syncKeyForUpdatedConversation:v12 flags:a3];

        if (v14)
        {
          [v19 setObject:v11 forKeyedSubscript:v14];
        }

        if (!a3)
        {

          v14 = 0;
        }

        [(EDConversationPersistence *)self setPersistenceConversationFlags:a3 syncKey:v14 forConversationID:v12 reason:a5];
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v15 = [(EDConversationPersistence *)self conversationManager];
  [v15 setFlags:a3 forConversations:v19];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)setPersistenceConversationFlags:(unint64_t)a3 syncKey:(id)a4 forConversationID:(int64_t)a5 reason:(int64_t)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = a4;
  if (!a5 || *MEMORY[0x1E699A728] == a5)
  {
    v15 = +[EDConversationPersistence log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218754;
      *&buf[4] = a5;
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 2114;
      v24 = v10;
      v25 = 2048;
      v26 = a6;
      _os_log_fault_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_FAULT, "Invalid conversation ID (%lld) when setting conversation flags (%llu) for sync key %{public}@ with reason: %lld", buf, 0x2Au);
    }
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v24 = 0;
    v11 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
    v12 = [(EDConversationPersistence *)self database];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDConversationPersistence setPersistenceConversationFlags:syncKey:forConversationID:reason:]"];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __94__EDConversationPersistence_setPersistenceConversationFlags_syncKey_forConversationID_reason___block_invoke;
    v17[3] = &unk_1E8251D08;
    v14 = v11;
    v18 = v14;
    v20 = buf;
    v21 = a5;
    v22 = a3;
    v19 = v10;
    [v12 __performWriteWithCaller:v13 usingBlock:v17];

    [(EDConversationPersistence *)self _notifyOfFlagChangeForConversationID:a5 oldFlags:*(*&buf[8] + 24) newFlags:a3 reason:a6 generationWindow:v14];
    _Block_object_dispose(buf, 8);
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __94__EDConversationPersistence_setPersistenceConversationFlags_syncKey_forConversationID_reason___block_invoke(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  v4 = [v3 preparedStatementForQueryString:@"SELECT flags FROM conversations WHERE conversation_id = :conversation_id LIMIT 1"];
  v20 = @":conversation_id";
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 56)];
  v21[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v18 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __94__EDConversationPersistence_setPersistenceConversationFlags_syncKey_forConversationID_reason___block_invoke_2;
  v19[3] = &unk_1E8250418;
  v19[4] = *(a1 + 48);
  v7 = [v4 executeWithNamedBindings:v6 usingBlock:v19 error:&v18];
  v8 = v18;

  if (v7)
  {
    v9 = [v3 preparedStatementForQueryString:{@"UPDATE conversations SET flags = :flags, sync_key = :sync_key WHERE conversation_id = :conversation_id"}];
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 64)];
    [v10 setObject:v11 forKeyedSubscript:@":flags"];

    [v10 setObject:*(a1 + 40) forKeyedSubscript:@":sync_key"];
    v12 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 56)];
    [v10 setObject:v12 forKeyedSubscript:@":conversation_id"];

    v17 = v8;
    v13 = [v9 executeWithNamedBindings:v10 usingBlock:0 error:&v17];
    v14 = v17;

    if ((v13 & 1) == 0)
    {
      [v3 handleError:v14 message:@"Setting conversation flags"];
    }

    v8 = v14;
  }

  else
  {
    [v3 handleError:v8 message:@"Finding old conversation flags"];
    v13 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

void __94__EDConversationPersistence_setPersistenceConversationFlags_syncKey_forConversationID_reason___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 objectAtIndexedSubscript:0];
  v4 = [v3 numberValue];
  *(*(*(a1 + 32) + 8) + 24) = [v4 unsignedLongLongValue];
}

- (void)updateAssociationTableForMessagePersistentIDs:(id)a3 conversationID:(int64_t)a4
{
  v6 = a3;
  v7 = [(EDConversationPersistence *)self database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDConversationPersistence updateAssociationTableForMessagePersistentIDs:conversationID:]"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90__EDConversationPersistence_updateAssociationTableForMessagePersistentIDs_conversationID___block_invoke;
  v10[3] = &unk_1E82502B0;
  v9 = v6;
  v11 = v9;
  v12 = self;
  v13 = a4;
  [v7 __performWriteWithCaller:v8 usingBlock:v10];
}

uint64_t __90__EDConversationPersistence_updateAssociationTableForMessagePersistentIDs_conversationID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E696AEC0];
  v5 = [*(a1 + 32) componentsJoinedByString:{@", "}];
  v6 = [v4 stringWithFormat:@"SELECT message_id, date_sent from messages where ROWID IN (%@)", v5];

  v7 = [v3 preparedStatementForQueryString:v6];
  v11 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90__EDConversationPersistence_updateAssociationTableForMessagePersistentIDs_conversationID___block_invoke_2;
  v12[3] = &unk_1E8251D30;
  v8 = *(a1 + 48);
  v12[4] = *(a1 + 40);
  v12[5] = v8;
  [v7 executeUsingBlock:v12 error:&v11];
  v9 = v11;
  [v3 handleError:v9 message:@"Selecting message IDs to update conversation association table."];

  return 1;
}

void __90__EDConversationPersistence_updateAssociationTableForMessagePersistentIDs_conversationID___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 objectForKeyedSubscript:@"message_id"];
  v4 = [v3 objectValue];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v10 objectForKeyedSubscript:@"message_id"];
    v7 = [v6 numberValue];

    v8 = [v10 objectForKeyedSubscript:@"date_sent"];
    v9 = [v8 numberValue];

    if (v7)
    {
      [*(a1 + 32) updateAssociationTableForMessageID:v7 dateSent:v9 conversationID:*(a1 + 40)];
    }
  }
}

- (void)updateAssociationTableForMessageIDs:(id)a3 conversationID:(int64_t)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = a3;
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

        [(EDConversationPersistence *)self updateAssociationTableForMessageID:*(*(&v11 + 1) + 8 * v9++) dateSent:0 conversationID:a4, v11];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)updateAssociationTableForMessageID:(id)a3 dateSent:(id)a4 conversationID:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(EDConversationPersistence *)self database];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDConversationPersistence updateAssociationTableForMessageID:dateSent:conversationID:]"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__EDConversationPersistence_updateAssociationTableForMessageID_dateSent_conversationID___block_invoke;
  v14[3] = &unk_1E82502B0;
  v17 = a5;
  v12 = v8;
  v15 = v12;
  v13 = v9;
  v16 = v13;
  [v10 __performWriteWithCaller:v11 usingBlock:v14];
}

uint64_t __88__EDConversationPersistence_updateAssociationTableForMessageID_dateSent_conversationID___block_invoke(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v4 = MEMORY[0x1E696AEC0];
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:a1[6]];
  v6 = [v4 stringWithFormat:@"SELECT conversation_id FROM conversations where conversation_id = %@", v5];

  v7 = [v3 preparedStatementForQueryString:v6];
  v19 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __88__EDConversationPersistence_updateAssociationTableForMessageID_dateSent_conversationID___block_invoke_2;
  v20[3] = &unk_1E8250418;
  v20[4] = &v21;
  v8 = [v7 executeUsingBlock:v20 error:&v19];
  v9 = v19;
  if ((v8 & 1) == 0)
  {
    [v3 handleError:v9 message:@"Executing querying for conversation id"];
  }

  if (*(v22 + 24) == 1)
  {
    v10 = [v3 preparedStatementForQueryString:{@"INSERT OR REPLACE INTO conversation_id_message_id (conversation_id, message_id, date_sent) VALUES (:conversation_id, :message_id, :date_sent)"}];
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v11 setObject:a1[4] forKeyedSubscript:@":message_id"];
    v12 = [MEMORY[0x1E696AD98] numberWithLongLong:a1[6]];
    [v11 setObject:v12 forKeyedSubscript:@":conversation_id"];

    [v11 setObject:a1[5] forKeyedSubscript:@":date_sent"];
    v18 = v9;
    v13 = [v10 executeWithNamedBindings:v11 usingBlock:0 error:&v18];
    v14 = v18;

    if ((v13 & 1) == 0)
    {
      [v3 handleError:v14 message:@"Setting conversation association table entries"];
    }
  }

  else
  {
    v10 = +[EDConversationPersistence log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AD98] numberWithLongLong:a1[6]];
      __88__EDConversationPersistence_updateAssociationTableForMessageID_dateSent_conversationID___block_invoke_cold_1(v15, buf, v10);
    }

    v13 = 1;
    v14 = v9;
  }

  _Block_object_dispose(&v21, 8);
  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t __88__EDConversationPersistence_updateAssociationTableForMessageID_dateSent_conversationID___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a4 = 1;
  return result;
}

- (void)updateConversationNotificationLevel:(int64_t)a3 forConversationIDs:(id)a4
{
  v6 = a4;
  [(EDConversationPersistence *)self setPersistenceConversationFlags:[EDConversationPersistence conversationFlagsForConversationNotificationLevel:?], v6, 4];
}

- (void)pruneConversationTables:(double)a3
{
  v4 = [(EDConversationPersistence *)self database];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDConversationPersistence pruneConversationTables:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__EDConversationPersistence_pruneConversationTables___block_invoke;
  v6[3] = &__block_descriptor_40_e41_B16__0__EDPersistenceDatabaseConnection_8l;
  *&v6[4] = a3;
  [v4 __performWriteWithCaller:v5 usingBlock:v6];
}

uint64_t __53__EDConversationPersistence_pruneConversationTables___block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:@"DELETE FROM conversations WHERE conversation_id NOT IN (SELECT DISTINCT conversation_id from messages) AND (sync_key IS NULL AND conversation_id NOT IN (SELECT DISTINCT(conversation_id) FROM conversation_id_message_id WHERE date_sent > :older_than))"];;
  v12 = @":older_than";
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 32)];
  v13[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v11 = 0;
  v7 = [v4 executeWithNamedBindings:v6 usingBlock:0 error:&v11];
  v8 = v11;

  if ((v7 & 1) == 0)
  {
    [v3 handleError:v8 message:@"Pruning conversations table"];
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)clearConversationFlagsAndSyncKeyForConversationIDs:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = objc_alloc_init(EDPersistenceDatabaseGenerationWindow);
  v5 = [(EDConversationPersistence *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDConversationPersistence clearConversationFlagsAndSyncKeyForConversationIDs:]"];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __80__EDConversationPersistence_clearConversationFlagsAndSyncKeyForConversationIDs___block_invoke;
  v24[3] = &unk_1E8250328;
  v7 = v4;
  v25 = v7;
  v8 = v19;
  v26 = v8;
  [v5 __performWriteWithCaller:v6 usingBlock:v24];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v10)
  {
    v11 = *v21;
    v12 = *MEMORY[0x1E699A728];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v20 + 1) + 8 * i) longLongValue];
        v15 = v14;
        if (v14)
        {
          v16 = v14 == v12;
        }

        else
        {
          v16 = 1;
        }

        if (v16)
        {
          v17 = +[EDConversationPersistence log];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            *buf = 134217984;
            v28 = v15;
            _os_log_fault_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_FAULT, "Invalid conversation ID (%lld) when clearing conversation flags", buf, 0xCu);
          }
        }

        else
        {
          [(EDConversationPersistence *)self _notifyOfFlagChangeForConversationID:v14 oldFlags:0 newFlags:0 reason:0 generationWindow:v8];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v20 objects:v29 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __80__EDConversationPersistence_clearConversationFlagsAndSyncKeyForConversationIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E696AEC0];
  v5 = [*(a1 + 32) componentsJoinedByString:{@", "}];
  v6 = [v4 stringWithFormat:@"UPDATE conversation SET flags = :flags, sync_key = NULL WHERE conversation_id IN (%@)", v5];
  v7 = [v3 preparedStatementForQueryString:v6];

  [*(a1 + 40) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  v11 = 0;
  v8 = [v7 executeWithNamedBindings:&unk_1F45E7090 usingBlock:0 error:&v11];
  v9 = v11;
  if ((v8 & 1) == 0)
  {
    [v3 handleError:v9 message:@"Pruning conversations table"];
  }

  return v8;
}

- (void)_notifyOfFlagChangeForConversationID:(int64_t)a3 oldFlags:(unint64_t)a4 newFlags:(unint64_t)a5 reason:(int64_t)a6 generationWindow:(id)a7
{
  v14 = a7;
  v12 = [EDConversationPersistence conversationNotificationLevelForConversationFlags:a5];
  v13 = [(EDConversationPersistence *)self hookRegistry];
  [v13 persistenceDidChangeConversationNotificationLevel:v12 conversationID:a3 generationWindow:v14];

  [(EDConversationPersistence *)self _postChangeNotificationForConversationID:a3 flags:a5 oldFlags:a4 reason:a6];
}

- (void)_postChangeNotificationForConversationID:(int64_t)a3 flags:(unint64_t)a4 oldFlags:(unint64_t)a5 reason:(int64_t)a6
{
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__EDConversationPersistence__postChangeNotificationForConversationID_flags_oldFlags_reason___block_invoke;
  block[3] = &unk_1E8251D78;
  block[4] = self;
  block[5] = a4;
  block[6] = a3;
  block[7] = a5;
  block[8] = a6;
  dispatch_async(notificationQueue, block);
}

void __92__EDConversationPersistence__postChangeNotificationForConversationID_flags_oldFlags_reason___block_invoke(void *a1)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v17[0] = @"MessageConversationIsVIP";
  v2 = a1 + 5;
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a1[5] & 1];
  v17[1] = @"MessageConversationIsMuted";
  v18[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:(*v2 >> 2) & 1];
  v18[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = EDConversationFlagsChanged;
  v8 = a1[4];
  v15[0] = @"EDConversationFlagsChangedConversationIDKey";
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:a1[6]];
  v16[0] = v9;
  v16[1] = v5;
  v15[1] = @"EDConversationFlagsChangesKey";
  v15[2] = @"EDConversationFlagsKey";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a1[5]];
  v16[2] = v10;
  v15[3] = @"EDConversationFlagsOldFlags";
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a1[7]];
  v16[3] = v11;
  v15[4] = @"EDConversationFlagsReason";
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:a1[8]];
  v16[4] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:5];
  [v6 postNotificationName:v7 object:v8 userInfo:v13];

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasSubscribedConversations
{
  v2 = [(EDConversationPersistence *)self conversationManager];
  v3 = [v2 hasSubscribedConversations];

  return v3;
}

- (int64_t)previousSyncAnchorForDailyExport
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = *MEMORY[0x1E699A728];
  v2 = [(EDConversationPersistence *)self database];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDConversationPersistence previousSyncAnchorForDailyExport]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__EDConversationPersistence_previousSyncAnchorForDailyExport__block_invoke;
  v6[3] = &unk_1E8251DA0;
  v6[4] = &v7;
  [v2 __performReadWithCaller:v3 usingBlock:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __61__EDConversationPersistence_previousSyncAnchorForDailyExport__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT value FROM properties WHERE key = '%@'", @"SyncAnchorForLastDailyConversationExport"];
  v5 = [v3 preparedStatementForQueryString:v4];

  v8 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__EDConversationPersistence_previousSyncAnchorForDailyExport__block_invoke_2;
  v9[3] = &unk_1E8250418;
  v9[4] = *(a1 + 32);
  [v5 executeUsingBlock:v9 error:&v8];
  v6 = v8;
  [v3 handleError:v6 message:@"Selecting previous conversation daily export sync anchor"];

  return 1;
}

void __61__EDConversationPersistence_previousSyncAnchorForDailyExport__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectForKeyedSubscript:@"value"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 databaseIDValue];
}

- (int64_t)currentSyncAnchorForDailyExport
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = *MEMORY[0x1E699A728];
  v2 = [(EDConversationPersistence *)self database];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDConversationPersistence currentSyncAnchorForDailyExport]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__EDConversationPersistence_currentSyncAnchorForDailyExport__block_invoke;
  v6[3] = &unk_1E8251DA0;
  v6[4] = &v7;
  [v2 __performReadWithCaller:v3 usingBlock:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __60__EDConversationPersistence_currentSyncAnchorForDailyExport__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:@"SELECT max(ROWID) as syncAnchor from messages"];
  v7 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__EDConversationPersistence_currentSyncAnchorForDailyExport__block_invoke_2;
  v8[3] = &unk_1E8250418;
  v8[4] = *(a1 + 32);
  [v4 executeUsingBlock:v8 error:&v7];
  v5 = v7;
  [v3 handleError:v5 message:@"Selecting current conversation sync anchor for daily export"];

  return 1;
}

void __60__EDConversationPersistence_currentSyncAnchorForDailyExport__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectForKeyedSubscript:@"syncAnchor"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 databaseIDValue];
}

- (void)setNewPreviousSyncAnchorForDailyExport:(int64_t)a3
{
  v4 = [(EDConversationPersistence *)self database];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDConversationPersistence setNewPreviousSyncAnchorForDailyExport:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__EDConversationPersistence_setNewPreviousSyncAnchorForDailyExport___block_invoke;
  v6[3] = &__block_descriptor_40_e41_B16__0__EDPersistenceDatabaseConnection_8l;
  v6[4] = a3;
  [v4 __performWriteWithCaller:v5 usingBlock:v6];
}

uint64_t __68__EDConversationPersistence_setNewPreviousSyncAnchorForDailyExport___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:{@"INSERT OR REPLACE INTO properties (key, value) VALUES (:key, :value)"}];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v5 setObject:@"SyncAnchorForLastDailyConversationExport" forKeyedSubscript:@":key"];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 32)];
  [v5 setObject:v6 forKeyedSubscript:@":value"];

  v10 = 0;
  v7 = [v4 executeWithNamedBindings:v5 usingBlock:0 error:&v10];
  v8 = v10;
  if ((v7 & 1) == 0)
  {
    [v3 handleError:v8 message:@"Updating previous conversation sync anchor for daily export"];
  }

  return v7;
}

- (id)flaggedConversationsChangedBetweenStartAnchor:(int64_t)a3 endAnchor:(int64_t)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  v16 = __Block_byref_object_dispose__7;
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [(EDConversationPersistence *)self database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDConversationPersistence flaggedConversationsChangedBetweenStartAnchor:endAnchor:]"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__EDConversationPersistence_flaggedConversationsChangedBetweenStartAnchor_endAnchor___block_invoke;
  v11[3] = &unk_1E8251CE0;
  v11[5] = a3;
  v11[6] = a4;
  v11[4] = &v12;
  [v7 __performReadWithCaller:v8 usingBlock:v11];

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

uint64_t __85__EDConversationPersistence_flaggedConversationsChangedBetweenStartAnchor_endAnchor___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:@"SELECT DISTINCT conversations.conversation_id AS conversation_id FROM conversations LEFT JOIN messages on messages.conversation_id = conversations.conversation_id WHERE messages.ROWID > :start AND messages.ROWID < :end AND conversations.flags != 0"];;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:a1[5]];
  [v5 setObject:v6 forKeyedSubscript:@":start"];

  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:a1[6]];
  [v5 setObject:v7 forKeyedSubscript:@":end"];

  v10 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__EDConversationPersistence_flaggedConversationsChangedBetweenStartAnchor_endAnchor___block_invoke_2;
  v11[3] = &unk_1E8250418;
  v11[4] = a1[4];
  [v4 executeWithNamedBindings:v5 usingBlock:v11 error:&v10];
  v8 = v10;
  [v3 handleError:v8 message:@"Selecting current conversation sync anchor for daily export"];

  return 1;
}

void __85__EDConversationPersistence_flaggedConversationsChangedBetweenStartAnchor_endAnchor___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = MEMORY[0x1E696AD98];
  v5 = [a2 objectForKeyedSubscript:@"conversation_id"];
  v4 = [v3 numberWithLongLong:{objc_msgSend(v5, "databaseIDValue")}];
  [v2 addObject:v4];
}

- (EDPersistenceDatabase)database
{
  WeakRetained = objc_loadWeakRetained(&self->_database);

  return WeakRetained;
}

void __57__EDConversationPersistence_conversationIDForMessageIDs___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Multiple conversations found for message_ids %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __88__EDConversationPersistence_updateAssociationTableForMessageID_dateSent_conversationID___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Attempting to update association table for conversation that does not exist %@", buf, 0xCu);
}

@end