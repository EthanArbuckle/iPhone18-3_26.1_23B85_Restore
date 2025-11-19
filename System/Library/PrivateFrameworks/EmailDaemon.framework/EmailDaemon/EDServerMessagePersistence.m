@interface EDServerMessagePersistence
+ (OS_os_log)log;
+ (id)serverLabelsTableSchema;
+ (id)serverMessagesTableSchema;
+ (id)tablesAndForeignKeysToResolve:(id *)a3 associationsToResolve:(id *)a4;
- (BOOL)addLabels:(id)a3 removeLabels:(id)a4 toMessagesWithRemoteIDs:(id)a5;
- (BOOL)addServerMessage:(id)a3 invalidMessage:(BOOL *)a4 duplicateRemoteID:(BOOL *)a5;
- (BOOL)applyFlagChange:(id)a3 toMessagesWithRemoteIDs:(id)a4;
- (BOOL)applySortedFlags:(id)a3;
- (BOOL)attachMessage:(int64_t)a3 toServerMessageWithRemoteID:(id)a4;
- (BOOL)deleteAllServerMessagesInMailbox;
- (BOOL)deleteServerMessagesWithRemoteIDs:(id)a3;
- (EDServerMessagePersistence)initWithDatabase:(id)a3 gmailLabelPersistence:(id)a4 mailboxID:(int64_t)a5 useNumericSearch:(BOOL)a6 supportsLabels:(BOOL)a7;
- (id)_remoteIDStringForRemoteIDArray:(id)a3;
- (id)_serverMessageForRow:(id)a3 connection:(id)a4;
- (id)_serverMessagesWithWhereClause:(id)a3 limitClause:(id)a4 returnLastEntries:(BOOL)a5;
- (id)deleteAllClearedUIDMessages;
- (id)downloadStateForUIDs:(id)a3;
- (id)serverMessagesForMessageIDHeaders:(id)a3;
- (id)serverMessagesForRemoteIDs:(id)a3;
- (unint64_t)messageCount;
- (unint64_t)undeletedMessageCount;
- (unint64_t)unreadMessageCount;
- (unsigned)maximumIMAPUID;
- (unsigned)minimumIMAPUID;
- (void)enumerateMessageBatchLimitUIDsWithWindow:(_NSRange)a3 batchSize:(int64_t)a4 newUIDCount:(int64_t)a5 block:(id)a6;
- (void)enumerateUIDsInIndexSet:(id)a3 includingJSON:(id)a4 excludingJSON:(id)a5 withBlock:(id)a6;
- (void)enumerateUIDsInOlderThanDate:(id)a3 limit:(unint64_t)a4 withBlock:(id)a5;
- (void)enumerateUIDsInRanges:(id)a3 withBlock:(id)a4;
- (void)groupInsideWriteTransactionWithDescription:(id)a3 block:(id)a4;
- (void)setDownloadStateForUIDs:(id)a3;
@end

@implementation EDServerMessagePersistence

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__EDServerMessagePersistence_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_97 != -1)
  {
    dispatch_once(&log_onceToken_97, block);
  }

  v2 = log_log_97;

  return v2;
}

void __33__EDServerMessagePersistence_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_97;
  log_log_97 = v1;
}

+ (id)tablesAndForeignKeysToResolve:(id *)a3 associationsToResolve:(id *)a4
{
  v25[3] = *MEMORY[0x1E69E9840];
  v5 = [a1 serverMessagesTableSchema];
  v6 = [a1 serverLabelsTableSchema];
  v7 = [v6 columnForName:@"server_message"];
  [v7 setAsForeignKeyForTable:v5 onDelete:2 onUpdate:0];

  v23 = +[EDMessagePersistence messagesTableName];
  v8 = +[EDPersistenceDatabaseSchema mailboxesTableName];
  v9 = [EDPersistenceForeignKeyPlaceholder alloc];
  v10 = [v5 columnForName:@"message"];
  v11 = [(EDPersistenceForeignKeyPlaceholder *)v9 initWithColumn:v10 tableName:v23 onDelete:3 onUpdate:0];
  v25[0] = v11;
  v12 = [EDPersistenceForeignKeyPlaceholder alloc];
  v13 = [v5 columnForName:@"mailbox"];
  v14 = [(EDPersistenceForeignKeyPlaceholder *)v12 initWithColumn:v13 tableName:v8 onDelete:2 onUpdate:0];
  v25[1] = v14;
  v15 = [EDPersistenceForeignKeyPlaceholder alloc];
  v16 = [v6 columnForName:@"label"];
  v17 = [(EDPersistenceForeignKeyPlaceholder *)v15 initWithColumn:v16 tableName:v8 onDelete:2 onUpdate:0];
  v25[2] = v17;
  *a3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];

  *a4 = MEMORY[0x1E695E0F0];
  v24[0] = v5;
  v24[1] = v6;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)serverMessagesTableSchema
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v22 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"message" nullable:1];
  v25 = v22;
  v26 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"mailbox" nullable:0];
  v21 = v26;
  v27 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"sequence_identifier" nullable:1];
  v20 = v27;
  v19 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"read" nullable:0];
  v28 = v19;
  v18 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"deleted" nullable:0];
  v29 = v18;
  v17 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"replied" nullable:0];
  v30 = v17;
  v16 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"flagged" nullable:0];
  v31 = v16;
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"draft" nullable:0];
  v32 = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"forwarded" nullable:0];
  v33 = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"redirected" nullable:0];
  v34 = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"junk_level_set_by_user" nullable:0];
  v35 = v6;
  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"junk_level" nullable:0];
  v36 = v7;
  v8 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"flag_color" nullable:0];
  v37 = v8;
  v9 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"remote_id" nullable:0];
  v38 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:14];
  v11 = [v2 initWithName:@"server_messages" rowIDType:2 columns:v10];

  v24[0] = @"mailbox";
  v24[1] = @"remote_id";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  [v11 addUniquenessConstraintForColumns:v12 conflictResolution:1];

  v23 = @"message";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  [v11 addIndexForColumns:v13];

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)serverLabelsTableSchema
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"server_message" nullable:1];
  v11[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"label" nullable:1];
  v11[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v10[0] = @"server_message";
  v10[1] = @"label";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v7 = [v2 initWithName:@"server_labels" columns:v5 primaryKeyColumns:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (EDServerMessagePersistence)initWithDatabase:(id)a3 gmailLabelPersistence:(id)a4 mailboxID:(int64_t)a5 useNumericSearch:(BOOL)a6 supportsLabels:(BOOL)a7
{
  v14 = a3;
  v15 = a4;
  if (*MEMORY[0x1E699A728] == a5)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"EDServerMessagePersistence.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"mailboxID != EMDatabaseIDUndefined"}];
  }

  v20.receiver = self;
  v20.super_class = EDServerMessagePersistence;
  v16 = [(EDServerMessagePersistence *)&v20 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_database, a3);
    objc_storeStrong(&v17->_gmailLabelPersistence, a4);
    v17->_mailboxID = a5;
    v17->_useNumericSearch = a6;
    v17->_supportsLabels = a7;
  }

  return v17;
}

- (unint64_t)messageCount
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = [(EDServerMessagePersistence *)self database];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence messageCount]"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__EDServerMessagePersistence_messageCount__block_invoke;
  v7[3] = &unk_1E8250350;
  v7[4] = self;
  v7[5] = &v8;
  [v3 __performReadWithCaller:v4 usingBlock:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __42__EDServerMessagePersistence_messageCount__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT count() FROM server_messages WHERE (mailbox = %lld)", objc_msgSend(*(a1 + 32), "mailboxID")];
  v5 = [v3 preparedStatementForQueryString:v4];
  v9 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__EDServerMessagePersistence_messageCount__block_invoke_2;
  v10[3] = &unk_1E8250418;
  v10[4] = *(a1 + 40);
  v6 = [v5 executeUsingBlock:v10 error:&v9];
  v7 = v9;
  if ((v6 & 1) == 0)
  {
    [v3 handleError:v7 message:@"Executing count query"];
  }

  return 1;
}

void __42__EDServerMessagePersistence_messageCount__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 objectAtIndexedSubscript:0];
  v7 = [v6 numberValue];
  *(*(*(a1 + 32) + 8) + 24) = [v7 unsignedIntegerValue];

  *a4 = 1;
}

- (unint64_t)unreadMessageCount
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = [(EDServerMessagePersistence *)self database];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence unreadMessageCount]"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__EDServerMessagePersistence_unreadMessageCount__block_invoke;
  v7[3] = &unk_1E8250350;
  v7[4] = self;
  v7[5] = &v8;
  [v3 __performReadWithCaller:v4 usingBlock:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __48__EDServerMessagePersistence_unreadMessageCount__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT count() FROM server_messages WHERE (mailbox = %lld) AND (read = 0)", objc_msgSend(*(a1 + 32), "mailboxID")];
  v5 = [v3 preparedStatementForQueryString:v4];
  v9 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__EDServerMessagePersistence_unreadMessageCount__block_invoke_2;
  v10[3] = &unk_1E8250418;
  v10[4] = *(a1 + 40);
  v6 = [v5 executeUsingBlock:v10 error:&v9];
  v7 = v9;
  if ((v6 & 1) == 0)
  {
    [v3 handleError:v7 message:@"Executing unread count query"];
  }

  return 1;
}

void __48__EDServerMessagePersistence_unreadMessageCount__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 objectAtIndexedSubscript:0];
  v7 = [v6 numberValue];
  *(*(*(a1 + 32) + 8) + 24) = [v7 unsignedIntegerValue];

  *a4 = 1;
}

- (unint64_t)undeletedMessageCount
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = [(EDServerMessagePersistence *)self database];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence undeletedMessageCount]"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__EDServerMessagePersistence_undeletedMessageCount__block_invoke;
  v7[3] = &unk_1E8250350;
  v7[4] = self;
  v7[5] = &v8;
  [v3 __performReadWithCaller:v4 usingBlock:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __51__EDServerMessagePersistence_undeletedMessageCount__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT count() FROM server_messages WHERE (mailbox = %lld) AND (deleted = 0)", objc_msgSend(*(a1 + 32), "mailboxID")];
  v5 = [v3 preparedStatementForQueryString:v4];
  v9 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__EDServerMessagePersistence_undeletedMessageCount__block_invoke_2;
  v10[3] = &unk_1E8250418;
  v10[4] = *(a1 + 40);
  v6 = [v5 executeUsingBlock:v10 error:&v9];
  v7 = v9;
  if ((v6 & 1) == 0)
  {
    [v3 handleError:v7 message:@"Executing unread count query"];
  }

  return 1;
}

void __51__EDServerMessagePersistence_undeletedMessageCount__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 objectAtIndexedSubscript:0];
  v7 = [v6 numberValue];
  *(*(*(a1 + 32) + 8) + 24) = [v7 unsignedIntegerValue];

  *a4 = 1;
}

- (unsigned)maximumIMAPUID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(EDServerMessagePersistence *)self database];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence maximumIMAPUID]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__EDServerMessagePersistence_maximumIMAPUID__block_invoke;
  v6[3] = &unk_1E8250350;
  v6[4] = self;
  v6[5] = &v7;
  [v3 __performReadWithCaller:v4 usingBlock:v6];

  LODWORD(v3) = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t __44__EDServerMessagePersistence_maximumIMAPUID__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT MAX(remote_id) FROM server_messages WHERE (mailbox = %lld)", objc_msgSend(*(a1 + 32), "mailboxID")];
  v5 = [v3 preparedStatementForQueryString:v4];
  v9 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__EDServerMessagePersistence_maximumIMAPUID__block_invoke_2;
  v10[3] = &unk_1E8250418;
  v10[4] = *(a1 + 40);
  v6 = [v5 executeUsingBlock:v10 error:&v9];
  v7 = v9;
  if ((v6 & 1) == 0)
  {
    [v3 handleError:v7 message:@"Executing max uid query"];
  }

  return 1;
}

void __44__EDServerMessagePersistence_maximumIMAPUID__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 objectAtIndexedSubscript:0];
  v7 = [v6 numberValue];
  *(*(*(a1 + 32) + 8) + 24) = [v7 unsignedIntValue];

  *a4 = 1;
}

- (unsigned)minimumIMAPUID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(EDServerMessagePersistence *)self database];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence minimumIMAPUID]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__EDServerMessagePersistence_minimumIMAPUID__block_invoke;
  v6[3] = &unk_1E8250350;
  v6[4] = self;
  v6[5] = &v7;
  [v3 __performReadWithCaller:v4 usingBlock:v6];

  LODWORD(v3) = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t __44__EDServerMessagePersistence_minimumIMAPUID__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT MIN(remote_id) FROM server_messages WHERE (mailbox = %lld)", objc_msgSend(*(a1 + 32), "mailboxID")];
  v5 = [v3 preparedStatementForQueryString:v4];
  v9 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__EDServerMessagePersistence_minimumIMAPUID__block_invoke_2;
  v10[3] = &unk_1E8250418;
  v10[4] = *(a1 + 40);
  v6 = [v5 executeUsingBlock:v10 error:&v9];
  v7 = v9;
  if ((v6 & 1) == 0)
  {
    [v3 handleError:v7 message:@"Executing min uid query"];
  }

  return 1;
}

void __44__EDServerMessagePersistence_minimumIMAPUID__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 objectAtIndexedSubscript:0];
  v7 = [v6 numberValue];
  *(*(*(a1 + 32) + 8) + 24) = [v7 unsignedIntValue];

  *a4 = 1;
}

- (id)serverMessagesForRemoteIDs:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__EDServerMessagePersistence_serverMessagesForRemoteIDs___block_invoke;
  v10[3] = &unk_1E82579B0;
  v10[4] = self;
  v6 = v5;
  v11 = v6;
  [v4 ef_enumerateObjectsInBatchesOfSize:500 block:v10];
  v7 = v11;
  v8 = v6;

  return v6;
}

void __57__EDServerMessagePersistence_serverMessagesForRemoteIDs___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 32) _remoteIDStringForRemoteIDArray:a2];
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"remote_id IN (%@)", v5];
  v4 = [*(a1 + 32) _serverMessagesWithWhereClause:v3 limitClause:&stru_1F45B4608 returnLastEntries:0];
  [*(a1 + 40) addObjectsFromArray:v4];
}

id __80__EDServerMessagePersistence_serverMessagesForIMAPUIDs_limit_returnLastEntries___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  ++*(*(*(a1 + 48) + 8) + 24);
  v5 = [a2 ed_uidQueryExpression];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@" LIMIT %llu", a3];
  v7 = [*(a1 + 32) _serverMessagesWithWhereClause:v5 limitClause:v6 returnLastEntries:*(a1 + 56)];
  [*(a1 + 40) addObjectsFromArray:v7];
  v8 = [MEMORY[0x1E696AD50] indexSet];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [v8 addIndex:{objc_msgSend(*(*(&v15 + 1) + 8 * i), "imapUID")}];
      }

      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)deleteAllClearedUIDMessages
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT message AS message_row_id FROM server_messages WHERE mailbox = %lld AND remote_id < 0", -[EDServerMessagePersistence mailboxID](self, "mailboxID")];
  v6 = [(EDServerMessagePersistence *)self database];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence deleteAllClearedUIDMessages]"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__EDServerMessagePersistence_deleteAllClearedUIDMessages__block_invoke;
  v14[3] = &unk_1E8250328;
  v8 = v5;
  v15 = v8;
  v16 = v3;
  [v6 __performReadWithCaller:v7 usingBlock:v14];

  objc_autoreleasePoolPop(v4);
  v9 = [(EDServerMessagePersistence *)self database];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence deleteAllClearedUIDMessages]"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__EDServerMessagePersistence_deleteAllClearedUIDMessages__block_invoke_169;
  v13[3] = &unk_1E8250328;
  v13[4] = self;
  v13[5] = v3;
  [v9 __performWriteWithCaller:v10 usingBlock:v13];

  v11 = v3;
  return v3;
}

uint64_t __57__EDServerMessagePersistence_deleteAllClearedUIDMessages__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [a2 preparedStatementForQueryString:*(a1 + 32)];
  v10 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__EDServerMessagePersistence_deleteAllClearedUIDMessages__block_invoke_2;
  v11[3] = &unk_1E8250300;
  v11[4] = *(a1 + 40);
  v4 = [v3 executeUsingBlock:v11 error:&v10];
  v5 = v10;
  if ((v4 & 1) == 0)
  {
    v6 = +[EDServerMessagePersistence log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = [v5 ef_publicDescription];
      __57__EDServerMessagePersistence_deleteAllClearedUIDMessages__block_invoke_cold_1(v7, v12, v6);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

void __57__EDServerMessagePersistence_deleteAllClearedUIDMessages__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectForKeyedSubscript:@"message_row_id"];
  v4 = [v3 int64Value];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:v4];
    [v5 addObject:v6];
  }
}

uint64_t __57__EDServerMessagePersistence_deleteAllClearedUIDMessages__block_invoke_169(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM server_messages WHERE server_messages.mailbox = %lld AND server_messages.remote_id < 0", objc_msgSend(*(a1 + 32), "mailboxID")];
  v5 = [v3 preparedStatementForQueryString:v4];
  v15 = 0;
  v6 = [MEMORY[0x1E695DF20] dictionary];
  v14 = 0;
  v7 = [v5 executeWithNamedBindings:v6 rowsChanged:&v15 error:&v14];
  v8 = v14;

  if ((v7 & 1) == 0)
  {
    v10 = +[EDServerMessagePersistence log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = [v8 ef_publicDescription];
      __57__EDServerMessagePersistence_deleteAllClearedUIDMessages__block_invoke_169_cold_1(v11, buf, v10);
    }

    goto LABEL_7;
  }

  v9 = v15;
  if (v9 != [*(a1 + 40) count])
  {
    v10 = +[EDServerMessagePersistence log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __57__EDServerMessagePersistence_deleteAllClearedUIDMessages__block_invoke_169_cold_2(v15, [*(a1 + 40) count], buf, v10);
    }

LABEL_7:
  }

  v12 = *MEMORY[0x1E69E9840];
  return 1;
}

- (id)serverMessagesForMessageIDHeaders:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v6 = objc_autoreleasePoolPush();
  v7 = [v4 ef_map:&__block_literal_global_87];
  v8 = [v7 componentsJoinedByString:{@", "}];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT server_messages.ROWID, server_messages.message, server_messages.mailbox, server_messages.read, server_messages.deleted, server_messages.replied, server_messages.flagged, server_messages.draft, server_messages.forwarded, server_messages.redirected, server_messages.junk_level_set_by_user, server_messages.junk_level, server_messages.flag_color, server_messages.remote_id, messages.message_id AS message_id_header, messages.ROWID AS message_row_id FROM messages INNER JOIN server_messages ON messages.ROWID = server_messages.message WHERE (server_messages.mailbox = %lld AND messages.message_id IN (%@) AND server_messages.remote_id < 0)", -[EDServerMessagePersistence mailboxID](self, "mailboxID"), v8];

  objc_autoreleasePoolPop(v6);
  v10 = [(EDServerMessagePersistence *)self database];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence serverMessagesForMessageIDHeaders:]"];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__EDServerMessagePersistence_serverMessagesForMessageIDHeaders___block_invoke_2;
  v15[3] = &unk_1E8250440;
  v12 = v9;
  v16 = v12;
  v17 = self;
  v18 = v5;
  [v10 __performReadWithCaller:v11 usingBlock:v15];

  v13 = v5;
  return v5;
}

id __64__EDServerMessagePersistence_serverMessagesForMessageIDHeaders___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_alloc(MEMORY[0x1E699B200]) initWithString:v2];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", objc_msgSend(v3, "int64Value")];

  return v4;
}

uint64_t __64__EDServerMessagePersistence_serverMessagesForMessageIDHeaders___block_invoke_2(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:a1[4]];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__EDServerMessagePersistence_serverMessagesForMessageIDHeaders___block_invoke_3;
  v14[3] = &unk_1E8252FE0;
  v14[4] = a1[5];
  v5 = v3;
  v6 = a1[6];
  v15 = v5;
  v16 = v6;
  v13 = 0;
  v7 = [v4 executeUsingBlock:v14 error:&v13];
  v8 = v13;
  if ((v7 & 1) == 0)
  {
    v9 = +[EDServerMessagePersistence log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = [v8 ef_publicDescription];
      __64__EDServerMessagePersistence_serverMessagesForMessageIDHeaders___block_invoke_2_cold_1(v10, v17, v9);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return 1;
}

void __64__EDServerMessagePersistence_serverMessagesForMessageIDHeaders___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v13 = v3;
  v5 = [*(a1 + 32) _serverMessageForRow:? connection:?];
  v6 = [v13 objectForKeyedSubscript:@"message_id_header"];
  v7 = [v6 int64Value];

  v8 = [v13 objectForKeyedSubscript:@"message_row_id"];
  v9 = [v8 int64Value];

  if (v5 && v7 && v9)
  {
    v10 = [EDExistingMessageWithMessageIDHeader alloc];
    v11 = [objc_alloc(MEMORY[0x1E699B200]) initWithHash:v7];
    v12 = [(EDExistingMessageWithMessageIDHeader *)v10 initWithMessageIDHash:v11 serverMessage:v5 messagePersistentID:v9];

    [*(a1 + 48) addObject:v12];
  }
}

- (id)_serverMessagesWithWhereClause:(id)a3 limitClause:(id)a4 returnLastEntries:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = &stru_1F45B4608;
  if (v5)
  {
    v10 = @" DESC";
  }

  v11 = v10;
  v12 = [MEMORY[0x1E695DF70] array];
  v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT %@ FROM server_messages WHERE (mailbox = %lld) AND (%@) ORDER BY remote_id%@%@", @"ROWID, message, mailbox, read, deleted, replied, flagged, draft, forwarded, redirected, junk_level_set_by_user, junk_level, flag_color, remote_id", -[EDServerMessagePersistence mailboxID](self, "mailboxID"), v8, v11, v9];
  v14 = [(EDServerMessagePersistence *)self database];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence _serverMessagesWithWhereClause:limitClause:returnLastEntries:]"];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __91__EDServerMessagePersistence__serverMessagesWithWhereClause_limitClause_returnLastEntries___block_invoke;
  v20[3] = &unk_1E82512F0;
  v16 = v13;
  v21 = v16;
  v24 = v5;
  v17 = v12;
  v22 = v17;
  v23 = self;
  [v14 __performReadWithCaller:v15 usingBlock:v20];

  v18 = v17;
  return v17;
}

uint64_t __91__EDServerMessagePersistence__serverMessagesWithWhereClause_limitClause_returnLastEntries___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:*(a1 + 32)];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __91__EDServerMessagePersistence__serverMessagesWithWhereClause_limitClause_returnLastEntries___block_invoke_2;
  v9[3] = &unk_1E8257888;
  v13 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  v7 = v3;
  v12 = v7;
  [v4 executeUsingBlock:v9 error:0];

  return 1;
}

void __91__EDServerMessagePersistence__serverMessagesWithWhereClause_limitClause_returnLastEntries___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = v3;
  if (*(a1 + 56) == 1)
  {
    v7 = [v4 _serverMessageForRow:v3 connection:v6];
    [v5 insertObject:v7 atIndex:0];
  }

  else
  {
    v7 = [v4 _serverMessageForRow:v3 connection:v6];
    [v5 addObject:v7];
  }
}

- (id)_serverMessageForRow:(id)a3 connection:(id)a4
{
  v48[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x1E699B308]);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __62__EDServerMessagePersistence__serverMessageForRow_connection___block_invoke;
  v46[3] = &unk_1E8257A00;
  v9 = v6;
  v47 = v9;
  v10 = [v8 initWithBuilder:v46];
  v11 = [v9 objectForKeyedSubscript:@"remote_id"];
  v12 = [v11 objectValue];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v9 objectForKeyedSubscript:@"ROWID"];
    v14 = [v13 databaseIDValue];

    v15 = [v9 objectForKeyedSubscript:@"ROWID"];
    v32 = [v15 stringValue];

    if ([(EDServerMessagePersistence *)self supportsLabels])
    {
      v31 = [v7 preparedStatementForQueryString:@"SELECT label FROM server_labels WHERE server_message = ?"];
      v30 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v29 = [(EDServerMessagePersistence *)self gmailLabelPersistence];
      v16 = [MEMORY[0x1E696AD98] numberWithLongLong:v14];
      v48[0] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __62__EDServerMessagePersistence__serverMessageForRow_connection___block_invoke_2;
      v43[3] = &unk_1E82511B8;
      v18 = v29;
      v44 = v18;
      v19 = v30;
      v45 = v19;
      v42 = 0;
      v20 = [v31 executeWithIndexedBindings:v17 usingBlock:v43 error:&v42];
      v21 = v42;

      if ((v20 & 1) == 0)
      {
        [v7 handleError:v21 message:@"Fetching server labels"];
      }
    }

    else
    {
      v19 = 0;
    }

    v25 = objc_alloc(MEMORY[0x1E699B320]);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __62__EDServerMessagePersistence__serverMessageForRow_connection___block_invoke_211;
    v36[3] = &unk_1E8257A28;
    v24 = v32;
    v37 = v24;
    v38 = v9;
    v39 = v12;
    v40 = v10;
    v41 = v19;
    v26 = v19;
    v23 = [v25 initWithIMAPServerMessageBuilder:v36];
  }

  else
  {
    v22 = objc_alloc(MEMORY[0x1E699B320]);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __62__EDServerMessagePersistence__serverMessageForRow_connection___block_invoke_2_213;
    v33[3] = &unk_1E8257A50;
    v34 = v9;
    v35 = v10;
    v23 = [v22 initWithServerMessageBuilder:v33];

    v24 = v34;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v23;
}

void __62__EDServerMessagePersistence__serverMessageForRow_connection___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"read"];
  [v13 setRead:{objc_msgSend(v3, "BOOLValue")}];

  v4 = [*(a1 + 32) objectForKeyedSubscript:@"deleted"];
  [v13 setDeleted:{objc_msgSend(v4, "BOOLValue")}];

  v5 = [*(a1 + 32) objectForKeyedSubscript:@"replied"];
  [v13 setReplied:{objc_msgSend(v5, "BOOLValue")}];

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"flagged"];
  [v13 setFlagged:{objc_msgSend(v6, "BOOLValue")}];

  v7 = [*(a1 + 32) objectForKeyedSubscript:@"draft"];
  [v13 setDraft:{objc_msgSend(v7, "BOOLValue")}];

  v8 = [*(a1 + 32) objectForKeyedSubscript:@"forwarded"];
  [v13 setForwarded:{objc_msgSend(v8, "BOOLValue")}];

  v9 = [*(a1 + 32) objectForKeyedSubscript:@"redirected"];
  [v13 setRedirected:{objc_msgSend(v9, "BOOLValue")}];

  v10 = [*(a1 + 32) objectForKeyedSubscript:@"junk_level_set_by_user"];
  [v13 setJunkLevelSetByUser:{objc_msgSend(v10, "BOOLValue")}];

  v11 = [*(a1 + 32) objectForKeyedSubscript:@"junk_level"];
  [v13 setJunkLevel:{objc_msgSend(v11, "int64Value")}];

  v12 = [*(a1 + 32) objectForKeyedSubscript:@"flag_color"];
  [v13 setFlagColor:{objc_msgSend(v12, "int64Value")}];
}

void __62__EDServerMessagePersistence__serverMessageForRow_connection___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 databaseIDValue];

  v6 = [*(a1 + 32) labelForDatabaseID:v5];
  if (v6)
  {
    [*(a1 + 40) addObject:v6];
  }

  else
  {
    v7 = [*(a1 + 32) labelURLForDatabaseID:v5];
    v8 = +[EDServerMessagePersistence log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      if (v7)
      {
        v10 = [MEMORY[0x1E699B858] ec_redactedStringForMailboxURL:v7];
      }

      else
      {
        v10 = 0;
      }

      v11 = 134218242;
      v12 = v5;
      v13 = 2112;
      v14 = v10;
      _os_log_fault_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_FAULT, "Unable to find label: %lld, %@", &v11, 0x16u);
      if (v7)
      {
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __62__EDServerMessagePersistence__serverMessageForRow_connection___block_invoke_211(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 setPersistentID:*(a1 + 32)];
  v3 = [*(a1 + 40) objectForKeyedSubscript:@"message"];
  v4 = [v3 stringValue];
  [v5 setMessagePersistentID:v4];

  [v5 setImapUID:{objc_msgSend(*(a1 + 48), "integerValue")}];
  [v5 setServerFlags:*(a1 + 56)];
  if (*(a1 + 64))
  {
    [v5 setLabels:?];
  }
}

void __62__EDServerMessagePersistence__serverMessageForRow_connection___block_invoke_2_213(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"ROWID"];
  v4 = [v3 stringValue];
  [v9 setPersistentID:v4];

  v5 = [*(a1 + 32) objectForKeyedSubscript:@"message"];
  v6 = [v5 stringValue];
  [v9 setMessagePersistentID:v6];

  v7 = [*(a1 + 32) objectForKeyedSubscript:@"remote_id"];
  v8 = [v7 stringValue];
  [v9 setRemoteID:v8];

  [v9 setServerFlags:*(a1 + 40)];
}

- (BOOL)addServerMessage:(id)a3 invalidMessage:(BOOL *)a4 duplicateRemoteID:(BOOL *)a5
{
  v8 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v9 = [(EDServerMessagePersistence *)self database];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence addServerMessage:invalidMessage:duplicateRemoteID:]"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__EDServerMessagePersistence_addServerMessage_invalidMessage_duplicateRemoteID___block_invoke;
  v14[3] = &unk_1E8257A78;
  v11 = v8;
  v15 = v11;
  v16 = self;
  v17 = &v20;
  v18 = a4;
  v19 = a5;
  [v9 __performWriteWithCaller:v10 usingBlock:v14];

  v12 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);

  return v12;
}

uint64_t __80__EDServerMessagePersistence_addServerMessage_invalidMessage_duplicateRemoteID___block_invoke(uint64_t a1, void *a2)
{
  v57[13] = *MEMORY[0x1E69E9840];
  v52 = a2;
  v54 = [v52 preparedStatementForQueryString:{@"INSERT INTO server_messages (message, mailbox, read, deleted, replied, flagged, draft, forwarded, redirected, junk_level_set_by_user, junk_level, flag_color, remote_id) VALUES (:message, :mailbox, :read, :deleted, :replied, :flagged, :draft, :forwarded, :redirected, :junk_level_set_by_user, :junk_level, :flag_color, :remote_id)"}];
  v3 = [*(a1 + 32) messagePersistentID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v6 = v5;

  v57[0] = v6;
  v56[0] = @":message";
  v56[1] = @":mailbox";
  v41 = v6;
  v49 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 40), "mailboxID")}];
  v57[1] = v49;
  v56[2] = @":remote_id";
  v50 = [*(a1 + 32) remoteIDObject];
  v57[2] = v50;
  v56[3] = @":read";
  v7 = MEMORY[0x1E696AD98];
  v51 = [*(a1 + 32) serverFlags];
  v47 = [v7 numberWithBool:{objc_msgSend(v51, "read")}];
  v57[3] = v47;
  v56[4] = @":deleted";
  v8 = MEMORY[0x1E696AD98];
  v48 = [*(a1 + 32) serverFlags];
  v45 = [v8 numberWithBool:{objc_msgSend(v48, "deleted")}];
  v57[4] = v45;
  v56[5] = @":replied";
  v9 = MEMORY[0x1E696AD98];
  v46 = [*(a1 + 32) serverFlags];
  v43 = [v9 numberWithBool:{objc_msgSend(v46, "replied")}];
  v57[5] = v43;
  v56[6] = @":flagged";
  v10 = MEMORY[0x1E696AD98];
  v44 = [*(a1 + 32) serverFlags];
  v40 = [v10 numberWithBool:{objc_msgSend(v44, "flagged")}];
  v57[6] = v40;
  v56[7] = @":draft";
  v11 = MEMORY[0x1E696AD98];
  v42 = [*(a1 + 32) serverFlags];
  v38 = [v11 numberWithBool:{objc_msgSend(v42, "draft")}];
  v57[7] = v38;
  v56[8] = @":forwarded";
  v12 = MEMORY[0x1E696AD98];
  v39 = [*(a1 + 32) serverFlags];
  v13 = [v12 numberWithBool:{objc_msgSend(v39, "forwarded")}];
  v57[8] = v13;
  v56[9] = @":redirected";
  v14 = MEMORY[0x1E696AD98];
  v15 = [*(a1 + 32) serverFlags];
  v16 = [v14 numberWithBool:{objc_msgSend(v15, "redirected")}];
  v57[9] = v16;
  v56[10] = @":junk_level_set_by_user";
  v17 = MEMORY[0x1E696AD98];
  v18 = [*(a1 + 32) serverFlags];
  v19 = [v17 numberWithBool:{objc_msgSend(v18, "junkLevelSetByUser")}];
  v57[10] = v19;
  v56[11] = @":junk_level";
  v20 = MEMORY[0x1E696AD98];
  v21 = [*(a1 + 32) serverFlags];
  v22 = [v20 numberWithUnsignedInteger:{objc_msgSend(v21, "junkLevel")}];
  v57[11] = v22;
  v56[12] = @":flag_color";
  v23 = MEMORY[0x1E696AD98];
  v24 = [*(a1 + 32) serverFlags];
  v25 = [v23 numberWithUnsignedInteger:{objc_msgSend(v24, "flagColor")}];
  v57[12] = v25;
  v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:13];

  v55 = 0;
  LODWORD(v15) = [v54 executeWithNamedBindings:v53 usingBlock:0 error:&v55];
  v26 = v55;
  v27 = v26;
  if (!v15)
  {
    v30 = [v26 domain];
    if ([v30 isEqualToString:*MEMORY[0x1E699B770]])
    {
      v31 = [v27 code] == 19;

      if (v31)
      {
        v32 = [v27 userInfo];
        v33 = [v32 objectForKeyedSubscript:*MEMORY[0x1E699B778]];
        v34 = [v33 integerValue];

        v35 = *(a1 + 56);
        if (v35 && v34 == 787 || (v35 = *(a1 + 64)) != 0 && v34 == 2067)
        {
          *v35 = 1;
        }

        v29 = 1;
        goto LABEL_20;
      }
    }

    else
    {
    }

    [v52 handleError:v27 message:@"Adding server message"];
    v29 = 0;
LABEL_20:
    *(*(*(a1 + 48) + 8) + 24) = 0;
    goto LABEL_21;
  }

  v28 = [*(a1 + 32) labels];
  if ([*(a1 + 40) supportsLabels] && objc_msgSend(v28, "count"))
  {
    v29 = [*(a1 + 40) _addLabels:v28 removeLabels:0 forUID:objc_msgSend(*(a1 + 32) connection:{"imapUID"), v52}];
  }

  else
  {
    v29 = 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v29;

LABEL_21:
  v36 = *MEMORY[0x1E69E9840];
  return v29;
}

- (BOOL)attachMessage:(int64_t)a3 toServerMessageWithRemoteID:(id)a4
{
  v6 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  if ([(EDServerMessagePersistence *)self useNumericSearch])
  {
    v7 = v6;
  }

  else
  {
    v7 = [v6 ef_quotedSQLEscapedString];
  }

  v8 = v7;
  v9 = [(EDServerMessagePersistence *)self database];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence attachMessage:toServerMessageWithRemoteID:]"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__EDServerMessagePersistence_attachMessage_toServerMessageWithRemoteID___block_invoke;
  v13[3] = &unk_1E8253058;
  v15 = &v17;
  v16 = a3;
  v13[4] = self;
  v11 = v8;
  v14 = v11;
  [v9 __performWriteWithCaller:v10 usingBlock:v13];

  LOBYTE(v8) = *(v18 + 24);
  _Block_object_dispose(&v17, 8);

  return v8;
}

uint64_t __72__EDServerMessagePersistence_attachMessage_toServerMessageWithRemoteID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UPDATE server_messages SET message = %lld WHERE (mailbox = %lld) AND (remote_id = %@)", *(a1 + 56), objc_msgSend(*(a1 + 32), "mailboxID"), *(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = [v3 executeStatementString:v4 errorMessage:@"updating server message"];

  v5 = *(*(*(a1 + 48) + 8) + 24);
  return v5;
}

- (BOOL)deleteServerMessagesWithRemoteIDs:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v5 = [(EDServerMessagePersistence *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence deleteServerMessagesWithRemoteIDs:]"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__EDServerMessagePersistence_deleteServerMessagesWithRemoteIDs___block_invoke;
  v9[3] = &unk_1E8250288;
  v9[4] = self;
  v7 = v4;
  v10 = v7;
  v11 = &v12;
  [v5 __performWriteWithCaller:v6 usingBlock:v9];

  LOBYTE(v4) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return v4;
}

uint64_t __64__EDServerMessagePersistence_deleteServerMessagesWithRemoteIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _remoteIDStringForRemoteIDArray:*(a1 + 40)];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM server_messages WHERE (mailbox = %lld) AND (remote_id in (%@))", objc_msgSend(*(a1 + 32), "mailboxID"), v4];
  *(*(*(a1 + 48) + 8) + 24) = [v3 executeStatementString:v5 errorMessage:@"removing server messages"];

  v6 = *(*(*(a1 + 48) + 8) + 24);
  return v6;
}

- (BOOL)deleteAllServerMessagesInMailbox
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v3 = [(EDServerMessagePersistence *)self database];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence deleteAllServerMessagesInMailbox]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__EDServerMessagePersistence_deleteAllServerMessagesInMailbox__block_invoke;
  v6[3] = &unk_1E8250FD8;
  v6[4] = self;
  v6[5] = &v7;
  [v3 __performWriteWithCaller:v4 usingBlock:v6];

  LOBYTE(v3) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t __62__EDServerMessagePersistence_deleteAllServerMessagesInMailbox__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DELETE FROM server_messages WHERE mailbox = %llu", objc_msgSend(*(a1 + 32), "mailboxID")];
  *(*(*(a1 + 40) + 8) + 24) = [v3 executeStatementString:v4 errorMessage:@"removing all server messages"];

  v5 = *(*(*(a1 + 40) + 8) + 24);
  return v5;
}

- (BOOL)applyFlagChange:(id)a3 toMessagesWithRemoteIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 hasChanges])
  {
    v8 = objc_opt_new();
    if ([v6 readChanged])
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"read = %d", objc_msgSend(v6, "read")];
      [v8 addObject:v9];
    }

    if ([v6 deletedChanged])
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"deleted = %d", objc_msgSend(v6, "deleted")];
      [v8 addObject:v10];
    }

    if ([v6 repliedChanged])
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"replied = %d", objc_msgSend(v6, "replied")];
      [v8 addObject:v11];
    }

    if ([v6 flaggedChanged])
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"flagged = %d", objc_msgSend(v6, "flagged")];
      [v8 addObject:v12];
    }

    if ([v6 draftChanged])
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"draft = %d", objc_msgSend(v6, "draft")];
      [v8 addObject:v13];
    }

    if ([v6 forwardedChanged])
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"forwarded = %d", objc_msgSend(v6, "forwarded")];
      [v8 addObject:v14];
    }

    if ([v6 redirectedChanged])
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"redirected = %d", objc_msgSend(v6, "redirected")];
      [v8 addObject:v15];
    }

    if ([v6 junkLevelSetByUserChanged])
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"junk_level_set_by_user = %d", objc_msgSend(v6, "junkLevelSetByUser")];
      [v8 addObject:v16];
    }

    if ([v6 junkLevelChanged])
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"junk_level = %d", objc_msgSend(v6, "junkLevel")];
      [v8 addObject:v17];
    }

    if ([v6 flagColorChanged])
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"flag_color = %d", objc_msgSend(v6, "flagColor")];
      [v8 addObject:v18];
    }

    v19 = [(EDServerMessagePersistence *)self _remoteIDStringForRemoteIDArray:v7];
    v20 = MEMORY[0x1E696AEC0];
    v21 = [v8 componentsJoinedByString:{@", "}];
    v22 = [v20 stringWithFormat:@"UPDATE server_messages SET %@ WHERE (mailbox = %lld) AND (remote_id in (%@))", v21, -[EDServerMessagePersistence mailboxID](self, "mailboxID"), v19];

    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v23 = [(EDServerMessagePersistence *)self database];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence applyFlagChange:toMessagesWithRemoteIDs:]"];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __70__EDServerMessagePersistence_applyFlagChange_toMessagesWithRemoteIDs___block_invoke;
    v28[3] = &unk_1E8250FD8;
    v30 = &v31;
    v25 = v22;
    v29 = v25;
    [v23 __performWriteWithCaller:v24 usingBlock:v28];

    v26 = *(v32 + 24);
    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v26 = 1;
  }

  return v26 & 1;
}

uint64_t __70__EDServerMessagePersistence_applyFlagChange_toMessagesWithRemoteIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [v3 executeStatementString:*(a1 + 32) errorMessage:@"Setting flags"];
  v4 = *(*(*(a1 + 40) + 8) + 24);

  return v4;
}

- (BOOL)applySortedFlags:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v5 = [(EDServerMessagePersistence *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence applySortedFlags:]"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__EDServerMessagePersistence_applySortedFlags___block_invoke;
  v9[3] = &unk_1E8250288;
  v9[4] = self;
  v7 = v4;
  v10 = v7;
  v11 = &v12;
  [v5 __performWriteWithCaller:v6 usingBlock:v9];

  LOBYTE(v4) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return v4;
}

uint64_t __47__EDServerMessagePersistence_applySortedFlags___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__EDServerMessagePersistence_applySortedFlags___block_invoke_2;
  aBlock[3] = &unk_1E8257AA0;
  aBlock[4] = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(a1 + 48) + 8);
        if (*(v9 + 24) == 1)
        {
          v10 = v4[2](v4, *(*(&v14 + 1) + 8 * v8));
          *(*(*(a1 + 48) + 8) + 24) = [v3 executeStatementString:v10 errorMessage:{@"Setting flags", v14}];
        }

        else
        {
          *(v9 + 24) = 0;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v6);
  }

  v11 = *(*(*(a1 + 48) + 8) + 24);
  v12 = *MEMORY[0x1E69E9840];
  return v11 & 1;
}

id __47__EDServerMessagePersistence_applySortedFlags___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AD60] stringWithCapacity:100];
  [v4 appendString:@"UPDATE server_messages SET "];
  v5 = [v3 second];
  if ([v5 read])
  {
    v6 = @"read = 1";
  }

  else
  {
    v6 = @"read = 0";
  }

  [v4 appendString:v6];

  v7 = [v3 second];
  if ([v7 deleted])
  {
    v8 = @", deleted = 1";
  }

  else
  {
    v8 = @", deleted = 0";
  }

  [v4 appendString:v8];

  v9 = [v3 second];
  if ([v9 replied])
  {
    v10 = @", replied = 1";
  }

  else
  {
    v10 = @", replied = 0";
  }

  [v4 appendString:v10];

  v11 = [v3 second];
  if ([v11 flagged])
  {
    v12 = @", flagged = 1";
  }

  else
  {
    v12 = @", flagged = 0";
  }

  [v4 appendString:v12];

  v13 = [v3 second];
  if ([v13 draft])
  {
    v14 = @", draft = 1";
  }

  else
  {
    v14 = @", draft = 0";
  }

  [v4 appendString:v14];

  v15 = [v3 second];
  if ([v15 forwarded])
  {
    v16 = @", forwarded = 1";
  }

  else
  {
    v16 = @", forwarded = 0";
  }

  [v4 appendString:v16];

  v17 = [v3 second];
  if ([v17 redirected])
  {
    v18 = @", redirected = 1";
  }

  else
  {
    v18 = @", redirected = 0";
  }

  [v4 appendString:v18];

  v19 = [v3 second];
  [v4 appendFormat:@", junk_level = %d", objc_msgSend(v19, "junkLevel")];

  v20 = [v3 second];
  [v4 appendFormat:@", flag_color = %d", objc_msgSend(v20, "flagColor")];

  v21 = [*(a1 + 32) mailboxID];
  v22 = [v3 first];
  [v4 appendFormat:@" WHERE (mailbox = %lld) AND (remote_id = %@)", v21, v22];

  return v4;
}

- (void)enumerateUIDsInRanges:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(EDServerMessagePersistence *)self database];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence enumerateUIDsInRanges:withBlock:]"];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__EDServerMessagePersistence_enumerateUIDsInRanges_withBlock___block_invoke;
    v10[3] = &unk_1E8257AC8;
    v11 = v6;
    v12 = self;
    v13 = v7;
    [v8 __performReadWithCaller:v9 usingBlock:v10];
  }
}

uint64_t __62__EDServerMessagePersistence_enumerateUIDsInRanges_withBlock___block_invoke(id *a1, void *a2)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v23 = a2;
  v3 = [MEMORY[0x1E695DF70] array];
  for (i = 0; i < [a1[4] count]; ++i)
  {
    [v3 addObject:@"(? <= remote_id AND remote_id < ?)"];
  }

  v5 = [v3 componentsJoinedByString:@" OR "];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT remote_id FROM server_messages WHERE mailbox = ? AND (%@) ORDER BY remote_id", v5];
  v7 = MEMORY[0x1E695DF70];
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(a1[5], "mailboxID")}];
  v27[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v10 = [v7 arrayWithArray:v9];

  for (j = 0; j < [a1[4] count]; ++j)
  {
    v12 = [a1[4] objectAtIndexedSubscript:j];
    v13 = [v12 rangeValue];
    v15 = v14;

    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13];
    [v10 addObject:v16];

    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13 + v15];
    [v10 addObject:v17];
  }

  v18 = [v23 preparedStatementForQueryString:v6];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __62__EDServerMessagePersistence_enumerateUIDsInRanges_withBlock___block_invoke_2;
  v25[3] = &unk_1E8250500;
  v26 = a1[6];
  v24 = 0;
  v19 = [v18 executeWithIndexedBindings:v10 usingBlock:v25 error:&v24];
  v20 = v24;

  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

void __62__EDServerMessagePersistence_enumerateUIDsInRanges_withBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 objectAtIndexedSubscript:0];
  v4 = [v3 int64Value];

  if (v4 <= 0xFFFFFFFFLL)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)enumerateUIDsInIndexSet:(id)a3 includingJSON:(id)a4 excludingJSON:(id)a5 withBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(EDServerMessagePersistence *)self database];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence enumerateUIDsInIndexSet:includingJSON:excludingJSON:withBlock:]"];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __92__EDServerMessagePersistence_enumerateUIDsInIndexSet_includingJSON_excludingJSON_withBlock___block_invoke;
  v20[3] = &unk_1E8257AF0;
  v16 = v10;
  v21 = v16;
  v22 = self;
  v17 = v11;
  v23 = v17;
  v18 = v12;
  v24 = v18;
  v19 = v13;
  v25 = v19;
  [v14 __performReadWithCaller:v15 usingBlock:v20];
}

uint64_t __92__EDServerMessagePersistence_enumerateUIDsInIndexSet_includingJSON_excludingJSON_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) ed_uidQueryExpression];
  v5 = MEMORY[0x1E695DF90];
  v23 = @":mailbox";
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 40), "mailboxID")}];
  v24[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v8 = [v5 dictionaryWithDictionary:v7];

  v9 = *(a1 + 48);
  if (v9)
  {
    [v8 setObject:v9 forKeyedSubscript:@":include"];
    v10 = @"remote_id IN (SELECT value FROM json_each(:include))";
  }

  else
  {
    v10 = @"0";
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    [v8 setObject:v11 forKeyedSubscript:@":exclude"];
    v12 = @"(SELECT value FROM json_each(:exclude))";
  }

  else
  {
    v12 = @"()";
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT remote_id FROM server_messages WHERE mailbox = :mailbox AND ((%@) OR (%@)) AND (NOT remote_id IN %@) ORDER BY remote_id", v4, v10, v12];
  v14 = +[EDServerMessagePersistence log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __92__EDServerMessagePersistence_enumerateUIDsInIndexSet_includingJSON_excludingJSON_withBlock___block_invoke_cold_1(v13, v8, v14);
  }

  v15 = [v3 preparedStatementForQueryString:v13];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __92__EDServerMessagePersistence_enumerateUIDsInIndexSet_includingJSON_excludingJSON_withBlock___block_invoke_405;
  v21[3] = &unk_1E8250500;
  v22 = *(a1 + 64);
  v20 = 0;
  v16 = [v15 executeWithNamedBindings:v8 usingBlock:v21 error:&v20];
  v17 = v20;

  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

void __92__EDServerMessagePersistence_enumerateUIDsInIndexSet_includingJSON_excludingJSON_withBlock___block_invoke_405(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 objectAtIndexedSubscript:0];
  v4 = [v3 int64Value];

  if (v4 <= 0xFFFFFFFFLL)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)enumerateUIDsInOlderThanDate:(id)a3 limit:(unint64_t)a4 withBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(EDServerMessagePersistence *)self database];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence enumerateUIDsInOlderThanDate:limit:withBlock:]"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__EDServerMessagePersistence_enumerateUIDsInOlderThanDate_limit_withBlock___block_invoke;
  v14[3] = &unk_1E8257B18;
  v14[4] = self;
  v12 = v8;
  v15 = v12;
  v17 = a4;
  v13 = v9;
  v16 = v13;
  [v10 __performReadWithCaller:v11 usingBlock:v14];
}

uint64_t __75__EDServerMessagePersistence_enumerateUIDsInOlderThanDate_limit_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = [a2 preparedStatementForQueryString:@"SELECT server_messages.remote_id FROM messages INNER JOIN server_messages ON messages.ROWID = server_messages.message WHERE (server_messages.mailbox = :mailbox AND messages.date_sent < :date AND 0 < server_messages.remote_id AND (messages.flags & :is_search_mask) == 0) ORDER BY messages.date_sent ASC LIMIT :limit"];
  v17[0] = @":mailbox";
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "mailboxID")}];
  v18[0] = v4;
  v17[1] = @":date";
  v5 = MEMORY[0x1E696AD98];
  [*(a1 + 40) timeIntervalSince1970];
  v7 = [v5 numberWithLongLong:llround(v6)];
  v18[1] = v7;
  v17[2] = @":limit";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
  v17[3] = @":is_search_mask";
  v18[2] = v8;
  v18[3] = &unk_1F45E6AA8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__EDServerMessagePersistence_enumerateUIDsInOlderThanDate_limit_withBlock___block_invoke_419;
  v15[3] = &unk_1E8250500;
  v16 = *(a1 + 48);
  v14 = 0;
  v10 = [v3 executeWithNamedBindings:v9 usingBlock:v15 error:&v14];
  v11 = v14;

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

void __75__EDServerMessagePersistence_enumerateUIDsInOlderThanDate_limit_withBlock___block_invoke_419(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 objectAtIndexedSubscript:0];
  v4 = [v3 int64Value];

  if ((v4 - 1) <= 0xFFFFFFFD)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)downloadStateForUIDs:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v6 = [(EDServerMessagePersistence *)self database];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence downloadStateForUIDs:]"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__EDServerMessagePersistence_downloadStateForUIDs___block_invoke;
  v13[3] = &unk_1E8250440;
  v8 = v4;
  v14 = v8;
  v15 = self;
  v9 = v5;
  v16 = v9;
  [v6 __performReadWithCaller:v7 usingBlock:v13];

  v10 = v16;
  v11 = v9;

  return v9;
}

uint64_t __51__EDServerMessagePersistence_downloadStateForUIDs___block_invoke(id *a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1[4] ed_uidQueryExpressionWithTableName:@"server_messages"];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT message_global_data.download_state, server_messages.remote_id FROM message_global_data JOIN messages ON message_global_data.rowid == messages.global_message_id JOIN server_messages ON messages.rowid == server_messages.message WHERE server_messages.mailbox == :mailbox AND %@", v4];
  v6 = [v3 preparedStatementForQueryString:v5];
  v16 = @":mailbox";
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(a1[5], "mailboxID")}];
  v17[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__EDServerMessagePersistence_downloadStateForUIDs___block_invoke_2;
  v14[3] = &unk_1E8250300;
  v15 = a1[6];
  v13 = 0;
  v9 = [v6 executeWithNamedBindings:v8 usingBlock:v14 error:&v13];
  v10 = v13;

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

void __51__EDServerMessagePersistence_downloadStateForUIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 objectAtIndexedSubscript:0];
  v4 = [v3 numberValue];

  v5 = [v9 objectAtIndexedSubscript:1];
  v6 = [v5 int64Value];

  if ((v6 - 1) <= 0xFFFFFFFD)
  {
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    [v7 setObject:v4 forKeyedSubscript:v8];
  }
}

- (void)setDownloadStateForUIDs:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v5 = [(EDServerMessagePersistence *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence setDownloadStateForUIDs:]"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__EDServerMessagePersistence_setDownloadStateForUIDs___block_invoke;
  v11[3] = &unk_1E8250288;
  v7 = v4;
  v12 = v7;
  v13 = self;
  v14 = &v15;
  [v5 __performWriteWithCaller:v6 usingBlock:v11];

  v8 = +[EDServerMessagePersistence log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v16[3];
    *buf = 134218240;
    v20 = self;
    v21 = 1024;
    v22 = v9;
    _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "%p: Updated download_state for %u rows.", buf, 0x12u);
  }

  _Block_object_dispose(&v15, 8);
  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __54__EDServerMessagePersistence_setDownloadStateForUIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__EDServerMessagePersistence_setDownloadStateForUIDs___block_invoke_2;
  v7[3] = &unk_1E8257B40;
  v8 = v3;
  v9 = *(a1 + 40);
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  return 1;
}

void __54__EDServerMessagePersistence_setDownloadStateForUIDs___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 ed_uidQueryExpressionWithTableName:@"server_messages"];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UPDATE message_global_data SET download_state = :new_state WHERE rowid in (SELECT messages.global_message_id FROM server_messages JOIN messages ON messages.rowid == server_messages.message WHERE server_messages.mailbox == :mailbox AND %@)", v6];
  v8 = [*(a1 + 32) preparedStatementForQueryString:v7];
  v16[1] = @":mailbox";
  v17[0] = v5;
  v15 = 0;
  v16[0] = @":new_state";
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 40), "mailboxID")}];
  v17[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v14 = 0;
  v11 = [v8 executeWithNamedBindings:v10 rowsChanged:&v15 error:&v14];
  v12 = v14;

  if (v11)
  {
    *(*(*(a1 + 48) + 8) + 24) += v15;
  }

  else
  {
    [*(a1 + 32) handleError:v12 message:@"Updating download state."];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)enumerateMessageBatchLimitUIDsWithWindow:(_NSRange)a3 batchSize:(int64_t)a4 newUIDCount:(int64_t)a5 block:(id)a6
{
  length = a3.length;
  location = a3.location;
  v11 = a6;
  if (a4 >= 1)
  {
    v12 = [(EDServerMessagePersistence *)self database];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence enumerateMessageBatchLimitUIDsWithWindow:batchSize:newUIDCount:block:]"];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __99__EDServerMessagePersistence_enumerateMessageBatchLimitUIDsWithWindow_batchSize_newUIDCount_block___block_invoke;
    v14[3] = &unk_1E8257B68;
    v14[4] = self;
    v16 = a4;
    v17 = location;
    v18 = length;
    v19 = a5;
    v15 = v11;
    [v12 __performReadWithCaller:v13 usingBlock:v14];
  }
}

uint64_t __99__EDServerMessagePersistence_enumerateMessageBatchLimitUIDsWithWindow_batchSize_newUIDCount_block___block_invoke(uint64_t a1, void *a2)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v18[0] = @":mailbox";
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "mailboxID")}];
  v19[0] = v4;
  v18[1] = @":batch_size";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  v19[1] = v5;
  v18[2] = @":lower";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
  v19[2] = v6;
  v18[3] = @":upper";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56) + *(a1 + 64) - 1];
  v19[3] = v7;
  v18[4] = @":new_uid_count";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 72)];
  v19[4] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:5];

  v10 = [v3 preparedStatementForQueryString:{@"WITH cte AS NOT materialized   (SELECT remote_id   FROM server_messages   WHERE mailbox = :mailbox    AND remote_id IS NOT NULL    AND remote_id >= :lower    AND remote_id <= :upper  ORDER BY remote_id DESC) SELECT remote_id, rn FROM   (SELECT *, row_number() OVER () AS rn FROM cte) WHERE rn == 1   OR (rn + :new_uid_count) % :batch_size == 1   OR rn == (SELECT count(*) FROM cte) "}];;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __99__EDServerMessagePersistence_enumerateMessageBatchLimitUIDsWithWindow_batchSize_newUIDCount_block___block_invoke_2;
  v16[3] = &unk_1E8250500;
  v17 = *(a1 + 40);
  v15 = 0;
  v11 = [v10 executeWithNamedBindings:v9 usingBlock:v16 error:&v15];
  v12 = v15;

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

void __99__EDServerMessagePersistence_enumerateMessageBatchLimitUIDsWithWindow_batchSize_newUIDCount_block___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 objectAtIndexedSubscript:0];
  v4 = [v3 int64Value];

  v5 = [v6 objectAtIndexedSubscript:1];
  [v5 int64Value];

  if (v4 <= 0xFFFFFFFFLL)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)groupInsideWriteTransactionWithDescription:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EDServerMessagePersistence *)self database];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__EDServerMessagePersistence_groupInsideWriteTransactionWithDescription_block___block_invoke;
  v10[3] = &unk_1E8250F38;
  v9 = v7;
  v11 = v9;
  [v8 __performWriteWithCaller:v6 usingBlock:v10];
}

- (BOOL)addLabels:(id)a3 removeLabels:(id)a4 toMessagesWithRemoteIDs:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v11 = [(EDServerMessagePersistence *)self database];
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence addLabels:removeLabels:toMessagesWithRemoteIDs:]"];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __77__EDServerMessagePersistence_addLabels_removeLabels_toMessagesWithRemoteIDs___block_invoke;
  v17[3] = &unk_1E8257B90;
  v13 = v10;
  v22 = &v23;
  v18 = v13;
  v19 = self;
  v14 = v8;
  v20 = v14;
  v15 = v9;
  v21 = v15;
  [v11 __performWriteWithCaller:v12 usingBlock:v17];

  LOBYTE(v8) = *(v24 + 24);
  _Block_object_dispose(&v23, 8);

  return v8;
}

uint64_t __77__EDServerMessagePersistence_addLabels_removeLabels_toMessagesWithRemoteIDs___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(v4);
      }

      *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 40) _addLabels:*(a1 + 48) removeLabels:*(a1 + 56) forUID:objc_msgSend(*(*(&v11 + 1) + 8 * v7) connection:{"integerValue", v11), v3}];
      if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v8 = *(*(*(a1 + 64) + 8) + 24);
  v9 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

void __72__EDServerMessagePersistence__addLabels_removeLabels_forUID_connection___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectAtIndexedSubscript:0];
  v4 = [v3 numberValue];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)_remoteIDStringForRemoteIDArray:(id)a3
{
  v4 = a3;
  if ([(EDServerMessagePersistence *)self useNumericSearch])
  {
    [v4 ef_filter:&__block_literal_global_468_0];
  }

  else
  {
    [v4 valueForKey:@"ef_quotedSQLEscapedString"];
  }
  v5 = ;
  v6 = [v5 componentsJoinedByString:{@", "}];

  return v6;
}

- (void)serverMessagesForIMAPUIDs:(uint64_t)a3 limit:(os_log_t)log returnLastEntries:.cold.1(uint8_t *buf, uint64_t a2, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Returned more results (%lu) than requested (%lu)", buf, 0x16u);
}

void __57__EDServerMessagePersistence_deleteAllClearedUIDMessages__block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_5_1(&dword_1C61EF000, a2, a3, "Unable to read server messages with 'cleared' UIDs: %{public}@", a2);
}

void __57__EDServerMessagePersistence_deleteAllClearedUIDMessages__block_invoke_169_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_5_1(&dword_1C61EF000, a2, a3, "Unable to delete server messages with 'cleared' UIDs: %{public}@", a2);
}

void __57__EDServerMessagePersistence_deleteAllClearedUIDMessages__block_invoke_169_cold_2(int a1, int a2, uint8_t *buf, os_log_t log)
{
  *buf = 67109376;
  *(buf + 1) = a1;
  *(buf + 4) = 1024;
  *(buf + 10) = a2;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Number of deleted rows (%u) does not match server messages previously found (%u).", buf, 0xEu);
}

void __64__EDServerMessagePersistence_serverMessagesForMessageIDHeaders___block_invoke_2_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_5_1(&dword_1C61EF000, a2, a3, "Unable to look up existing messages based on message-id header: %{public}@", a2);
}

void __92__EDServerMessagePersistence_enumerateUIDsInIndexSet_includingJSON_excludingJSON_withBlock___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_debug_impl(&dword_1C61EF000, log, OS_LOG_TYPE_DEBUG, "enumerateUIDs query '%{public}@', bindings: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end