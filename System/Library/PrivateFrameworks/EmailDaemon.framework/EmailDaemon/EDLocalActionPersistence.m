@interface EDLocalActionPersistence
+ (OS_os_log)log;
+ (id)actionFlagsTableSchema;
+ (id)actionLabelsTableSchema;
+ (id)actionMessagesTableSchema;
+ (id)localMessageActionsTableSchema;
+ (id)tablesAndForeignKeysToResolve:(id *)a3 associationsToResolve:(id *)a4;
- (BOOL)_addActionMessageForMessage:(id)a3 destinationMessage:(id)a4 actionID:(int64_t)a5 actionPhase:(int64_t)a6 connection:(id)a7;
- (BOOL)_addActionMessageForSourceRemoteID:(id)a3 actionID:(int64_t)a4 connection:(id)a5;
- (BOOL)_addFlagChange:(id)a3 actionID:(int64_t)a4 connection:(id)a5;
- (BOOL)_setLabelsOnAction:(int64_t)a3 labels:(id)a4 add:(BOOL)a5 connection:(id)a6;
- (BOOL)mailboxURLIsInRemoteAccount:(id)a3;
- (BOOL)moveSupportedFromMailboxURL:(id)a3 toURL:(id)a4;
- (BOOL)persistFlagChangeAction:(id)a3;
- (BOOL)persistFlagChangeUndownloadedAction:(id)a3;
- (BOOL)persistLabelChangeAction:(id)a3;
- (BOOL)persistTransferAction:(id)a3;
- (BOOL)persistTransferUndownloadedAction:(id)a3;
- (BOOL)updateTransferAction:(id)a3 withResults:(id)a4;
- (BOOL)updateTransferUndownloadedMessageAction:(id)a3 withResults:(id)a4;
- (ECLocalMessageActionID)latestActionID;
- (EDLocalActionPersistence)initWithDatabase:(id)a3 gmailLabelPersistence:(id)a4;
- (id)_flagChangeActionForRow:(id)a3 connection:(id)a4;
- (id)_flagChangeAllActionForRow:(id)a3 connection:(id)a4;
- (id)_flagChangeForAction:(int64_t)a3 connection:(id)a4;
- (id)_labelChangeActionForRow:(id)a3 connection:(id)a4;
- (id)_sourceRemoteIDListForCopyItems:(id)a3;
- (id)_transferActionForRow:(id)a3 connection:(id)a4 failedMessages:(id)a5;
- (id)_transferUndownloadedActionForRow:(id)a3 connection:(id)a4;
- (id)_whereClauseToFindCopyItems:(id)a3;
- (id)messageActionsForAccountURL:(id)a3 previousActionID:(int64_t)a4;
- (void)_deleteCopyItems:(id)a3 actionID:(int64_t)a4 connection:(id)a5;
- (void)_findMessagesForAction:(int64_t)a3 remoteIDs:(id)a4 messages:(id)a5 connection:(id)a6;
- (void)_updateCopyItems:(id)a3 toPhase:(int64_t)a4 actionID:(int64_t)a5 connection:(id)a6;
- (void)removeMessageAction:(int64_t)a3;
- (void)removeMessageActions:(id)a3;
- (void)updateFlagChangeAction:(id)a3 withRemainingUIDs:(id)a4;
@end

@implementation EDLocalActionPersistence

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__EDLocalActionPersistence_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_49 != -1)
  {
    dispatch_once(&log_onceToken_49, block);
  }

  v2 = log_log_49;

  return v2;
}

void __31__EDLocalActionPersistence_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_49;
  log_log_49 = v1;
}

+ (id)tablesAndForeignKeysToResolve:(id *)a3 associationsToResolve:(id *)a4
{
  v38[6] = *MEMORY[0x1E69E9840];
  v5 = [a1 localMessageActionsTableSchema];
  v34 = [a1 actionMessagesTableSchema];
  v36 = [a1 actionLabelsTableSchema];
  v33 = [a1 actionFlagsTableSchema];
  v6 = [v34 columnForName:@"action"];
  [v6 setAsForeignKeyForTable:v5 onDelete:2 onUpdate:0];

  v7 = [v36 columnForName:@"action"];
  [v7 setAsForeignKeyForTable:v5 onDelete:2 onUpdate:0];

  v8 = [v33 columnForName:@"action"];
  [v8 setAsForeignKeyForTable:v5 onDelete:2 onUpdate:0];

  v35 = +[EDMessagePersistence messagesTableName];
  v9 = +[EDPersistenceDatabaseSchema mailboxesTableName];
  v10 = [EDPersistenceForeignKeyPlaceholder alloc];
  v29 = [v5 columnForName:@"mailbox"];
  v30 = [EDPersistenceForeignKeyPlaceholder initWithColumn:v10 tableName:"initWithColumn:tableName:onDelete:onUpdate:" onDelete:? onUpdate:?];
  v38[0] = v30;
  v11 = [EDPersistenceForeignKeyPlaceholder alloc];
  v27 = [v5 columnForName:@"source_mailbox"];
  v28 = [EDPersistenceForeignKeyPlaceholder initWithColumn:v11 tableName:"initWithColumn:tableName:onDelete:onUpdate:" onDelete:? onUpdate:?];
  v38[1] = v28;
  v12 = [EDPersistenceForeignKeyPlaceholder alloc];
  v26 = [v5 columnForName:@"destination_mailbox"];
  v13 = [EDPersistenceForeignKeyPlaceholder initWithColumn:v12 tableName:"initWithColumn:tableName:onDelete:onUpdate:" onDelete:? onUpdate:?];
  v38[2] = v13;
  v14 = [EDPersistenceForeignKeyPlaceholder alloc];
  v15 = [v34 columnForName:@"message"];
  v16 = [(EDPersistenceForeignKeyPlaceholder *)v14 initWithColumn:v15 tableName:v35 onDelete:3 onUpdate:0];
  v38[3] = v16;
  v17 = [EDPersistenceForeignKeyPlaceholder alloc];
  v18 = [v34 columnForName:@"destination_message"];
  v19 = [(EDPersistenceForeignKeyPlaceholder *)v17 initWithColumn:v18 tableName:v35 onDelete:2 onUpdate:0];
  v38[4] = v19;
  v20 = [EDPersistenceForeignKeyPlaceholder alloc];
  v21 = [v36 columnForName:@"label"];
  v22 = [(EDPersistenceForeignKeyPlaceholder *)v20 initWithColumn:v21 tableName:v9 onDelete:2 onUpdate:0];
  v38[5] = v22;
  *a3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:6];

  *a4 = MEMORY[0x1E695E0F0];
  v37[0] = v5;
  v37[1] = v34;
  v37[2] = v36;
  v37[3] = v33;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

+ (id)localMessageActionsTableSchema
{
  v15[5] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"mailbox" nullable:1];
  v15[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"source_mailbox" nullable:1];
  v15[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"destination_mailbox" nullable:1];
  v15[2] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"action_type" nullable:1];
  v15[3] = v6;
  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"user_initiated" nullable:1];
  v15[4] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:5];
  v9 = [v2 initWithName:@"local_message_actions" rowIDType:2 columns:v8];

  v10 = *MEMORY[0x1E699B768];
  v14[0] = @"mailbox";
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [v9 addIndexForColumns:v11];

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)actionMessagesTableSchema
{
  v18[5] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"action" nullable:1];
  v18[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"action_phase" nullable:1];
  v18[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"message" nullable:1];
  v18[2] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"remote_id" nullable:1];
  v18[3] = v6;
  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"destination_message" nullable:1];
  v18[4] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:5];
  v9 = [v2 initWithName:@"action_messages" rowIDType:1 columns:v8];

  v17 = @"action";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  [v9 addIndexForColumns:v10];

  v16 = @"message";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  [v9 addIndexForColumns:v11];

  v15 = @"destination_message";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  [v9 addIndexForColumns:v12];

  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)actionLabelsTableSchema
{
  v14[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"action" nullable:1];
  v14[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"do_add" nullable:1];
  v14[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"label" nullable:1];
  v14[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  v7 = [v2 initWithName:@"action_labels" rowIDType:1 columns:v6];

  v13 = @"action";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  [v7 addIndexForColumns:v8];

  v12 = @"label";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  [v7 addIndexForColumns:v9];

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)actionFlagsTableSchema
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"action" nullable:1];
  v12[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"flag_type" nullable:1];
  v12[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"flag_value" nullable:1];
  v12[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
  v7 = [v2 initWithName:@"action_flags" rowIDType:1 columns:v6];

  v11 = @"action";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  [v7 addIndexForColumns:v8];

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

- (EDLocalActionPersistence)initWithDatabase:(id)a3 gmailLabelPersistence:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = EDLocalActionPersistence;
  v9 = [(EDLocalActionPersistence *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_database, a3);
    objc_storeStrong(&v10->_gmailLabelPersistence, a4);
  }

  return v10;
}

- (id)messageActionsForAccountURL:(id)a3 previousActionID:(int64_t)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v24 = objc_opt_new();
  v23 = objc_opt_new();
  v22 = objc_opt_new();
  v6 = [(EDLocalActionPersistence *)self database];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDLocalActionPersistence messageActionsForAccountURL:previousActionID:]"];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __73__EDLocalActionPersistence_messageActionsForAccountURL_previousActionID___block_invoke;
  v28[3] = &unk_1E8252EC8;
  v8 = v25;
  v34 = a4;
  v29 = v8;
  v30 = self;
  v9 = v22;
  v31 = v9;
  v10 = v24;
  v32 = v10;
  v11 = v23;
  v33 = v11;
  [v6 __performReadWithCaller:v7 usingBlock:v28];

  v12 = +[EDLocalActionPersistence log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v10 count];
    v14 = [v9 count];
    v15 = [v11 count];
    *buf = 134218752;
    v36 = a4;
    v37 = 2048;
    v38 = v13;
    v39 = 2048;
    v40 = v14;
    v41 = 2048;
    v42 = v15;
    _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "messageActionsForAccountURL database query for previousActionID: %lld completed: %lu actions found, %lu failed messages, %lu actions to delete", buf, 0x2Au);
  }

  if ([v11 count])
  {
    v16 = [(EDLocalActionPersistence *)self database];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDLocalActionPersistence messageActionsForAccountURL:previousActionID:]"];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __73__EDLocalActionPersistence_messageActionsForAccountURL_previousActionID___block_invoke_73;
    v26[3] = &unk_1E8251CB8;
    v27 = v11;
    [v16 __performWriteWithCaller:v17 usingBlock:v26];
  }

  if ([v9 count])
  {
    [(EDLocalActionPersistence *)self handledFailedCopyForMessages:v9];
  }

  v18 = v33;
  v19 = v10;

  v20 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t __73__EDLocalActionPersistence_messageActionsForAccountURL_previousActionID___block_invoke(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [*(a1 + 32) ef_SQLEscapedString];
  v6 = [v4 initWithFormat:@"SELECT ROWID, action_type, user_initiated, mailbox, source_mailbox, destination_mailbox FROM local_message_actions WHERE ((mailbox IN (SELECT ROWID FROM mailboxes WHERE url GLOB '%@*')) AND (ROWID > ?)) ORDER BY ROWID", v5];

  v7 = [v3 preparedStatementForQueryString:v6];
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 72)];
  v18[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__EDLocalActionPersistence_messageActionsForAccountURL_previousActionID___block_invoke_2;
  v13[3] = &unk_1E8252EA0;
  v13[4] = *(a1 + 40);
  v10 = v3;
  v14 = v10;
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  [v7 executeWithIndexedBindings:v9 usingBlock:v13 error:0];

  v11 = *MEMORY[0x1E69E9840];
  return 1;
}

void __73__EDLocalActionPersistence_messageActionsForAccountURL_previousActionID___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 objectForKeyedSubscript:@"action_type"];
  v4 = [v3 integerValue];

  if (v4 > 4)
  {
    if ((v4 - 8) < 3)
    {
      v5 = [*(a1 + 32) _transferUndownloadedActionForRow:v10 connection:*(a1 + 40)];
      goto LABEL_13;
    }

    if ((v4 - 5) >= 2)
    {
      if (v4 != 7)
      {
        goto LABEL_15;
      }

      v5 = [*(a1 + 32) _flagChangeAllActionForRow:v10 connection:*(a1 + 40)];
      goto LABEL_13;
    }

LABEL_8:
    v5 = [*(a1 + 32) _transferActionForRow:v10 connection:*(a1 + 40) failedMessages:*(a1 + 48)];
    goto LABEL_13;
  }

  if ((v4 - 1) < 2)
  {
    goto LABEL_8;
  }

  if (v4 == 3)
  {
    v5 = [*(a1 + 32) _flagChangeActionForRow:v10 connection:*(a1 + 40)];
  }

  else
  {
    if (v4 != 4)
    {
      goto LABEL_15;
    }

    v5 = [*(a1 + 32) _labelChangeActionForRow:v10 connection:*(a1 + 40)];
  }

LABEL_13:
  v6 = v5;
  if (v5)
  {
    [*(a1 + 56) addObject:v5];
    goto LABEL_16;
  }

LABEL_15:
  v7 = *(a1 + 64);
  v8 = [v10 objectForKeyedSubscript:@"ROWID"];
  v9 = [v8 numberValue];
  [v7 addObject:v9];

  v6 = 0;
LABEL_16:
}

uint64_t __73__EDLocalActionPersistence_messageActionsForAccountURL_previousActionID___block_invoke_73(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [*(a1 + 32) componentsJoinedByString:{@", "}];
  v6 = [v4 initWithFormat:@"DELETE FROM local_message_actions WHERE ROWID IN (%@);", v5];

  v7 = [v3 preparedStatementForQueryString:v6];
  v11 = 0;
  v8 = [v7 executeUsingBlock:0 error:&v11];
  v9 = v11;
  if ((v8 & 1) == 0)
  {
    [v3 handleError:v9 message:@"deleting actions"];
  }

  return 1;
}

- (id)_transferActionForRow:(id)a3 connection:(id)a4 failedMessages:(id)a5
{
  v72[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v42 = a4;
  v7 = [v6 objectForKeyedSubscript:@"ROWID"];
  v44 = [v7 databaseIDValue];

  v8 = [v6 objectForKeyedSubscript:@"action_type"];
  v39 = [v8 integerValue];

  v9 = +[EDLocalActionPersistence log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v63 = v44;
    v64 = 2048;
    v65 = v39;
    _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "_transferActionForRow: Processing action %lld type %ld", buf, 0x16u);
  }

  v10 = [v6 objectForKeyedSubscript:@"mailbox"];
  v36 = [v10 databaseIDValue];

  v11 = [v6 objectForKeyedSubscript:@"source_mailbox"];
  v35 = [v11 databaseIDValue];

  v12 = [v6 objectForKeyedSubscript:@"destination_mailbox"];
  v40 = [v12 databaseIDValue];

  v13 = [v6 objectForKeyedSubscript:@"user_initiated"];
  v34 = [v13 BOOLValue];

  v33 = objc_opt_new();
  v32 = objc_opt_new();
  v38 = objc_opt_new();
  v41 = [v42 preparedStatementForQueryString:{@"SELECT action_phase, remote_id, message, destination_message FROM action_messages WHERE action = ?"}];
  v14 = [MEMORY[0x1E696AD98] numberWithLongLong:v44];
  v72[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:1];
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __76__EDLocalActionPersistence__transferActionForRow_connection_failedMessages___block_invoke;
  v57[3] = &unk_1E8252F18;
  v57[4] = self;
  v61 = v40;
  v16 = v33;
  v58 = v16;
  v17 = v32;
  v59 = v17;
  v18 = v38;
  v60 = v18;
  [v41 executeWithIndexedBindings:v15 usingBlock:v57 error:0];

  v19 = [v16 count];
  v20 = [v17 count];
  v21 = [v18 count];
  v22 = +[EDLocalActionPersistence log];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v16 count];
    v24 = [v17 count];
    v25 = [v18 count];
    *buf = 134219008;
    v63 = v44;
    v64 = 2048;
    v65 = v20 + v19 + v21;
    v66 = 2048;
    v67 = v23;
    v68 = 2048;
    v69 = v24;
    v70 = 2048;
    v71 = v25;
    _os_log_impl(&dword_1C61EF000, v22, OS_LOG_TYPE_DEFAULT, "_transferActionForRow: Action %lld has %lu total messages (%lu download, %lu copy, %lu delete)", buf, 0x34u);
  }

  if ([v16 count] || objc_msgSend(v17, "count") || objc_msgSend(v18, "count"))
  {
    v26 = [(EDLocalActionPersistence *)self mailboxURLForDatabaseID:v36];
    v27 = objc_alloc(MEMORY[0x1E699B350]);
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __76__EDLocalActionPersistence__transferActionForRow_connection_failedMessages___block_invoke_90;
    v45[3] = &unk_1E8252F40;
    v51 = v44;
    v28 = v26;
    v56 = v34;
    v46 = v28;
    v47 = self;
    v52 = v35;
    v53 = v40;
    v54 = v39;
    v55 = a2;
    v48 = v16;
    v49 = v17;
    v50 = v18;
    v29 = [v27 initWithBuilder:v45];
  }

  else
  {
    v29 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

void __76__EDLocalActionPersistence__transferActionForRow_connection_failedMessages___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"action_phase"];
  v5 = [v4 integerValue];

  v6 = [v3 objectForKeyedSubscript:@"remote_id"];
  v7 = [v6 stringValue];

  if ([v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v3 objectForKeyedSubscript:@"message"];
  v11 = [v10 numberValue];

  v12 = [v3 objectForKeyedSubscript:@"destination_message"];
  v13 = [v12 databaseIDValue];

  v14 = [*(a1 + 32) messageForDatabaseID:v13];
  v15 = v14;
  if (*(a1 + 64) && !v14)
  {
    v16 = +[EDLocalActionPersistence log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __76__EDLocalActionPersistence__transferActionForRow_connection_failedMessages___block_invoke_cold_1(v13, v16);
    }
  }

  if (v13 || v5 == 4 && v9)
  {
    v17 = objc_alloc(MEMORY[0x1E699B358]);
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __76__EDLocalActionPersistence__transferActionForRow_connection_failedMessages___block_invoke_87;
    v25 = &unk_1E8252EF0;
    v18 = v11;
    v19 = *(a1 + 32);
    v26 = v18;
    v27 = v19;
    v28 = v9;
    v29 = v15;
    v20 = [v17 initWithBuilder:&v22];
    switch(v5)
    {
      case 1:
        v21 = 40;
        goto LABEL_19;
      case 3:
        if (*(a1 + 64))
        {
          v21 = 48;
          goto LABEL_19;
        }

        break;
      case 4:
        v21 = 56;
LABEL_19:
        [*(a1 + v21) addObject:{v20, v22, v23, v24, v25, v26, v27, v28}];
        break;
    }
  }
}

void __76__EDLocalActionPersistence__transferActionForRow_connection_failedMessages___block_invoke_87(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  if (v4)
  {
    v5 = [*(a1 + 40) messageForDatabaseID:{objc_msgSend(v4, "longLongValue")}];
    [v6 setSourceMessage:v5];

    v3 = v6;
  }

  [v3 setSourceRemoteID:*(a1 + 48)];
  [v6 setDestinationMessage:*(a1 + 56)];
}

void __76__EDLocalActionPersistence__transferActionForRow_connection_failedMessages___block_invoke_90(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [objc_alloc(MEMORY[0x1E699B2D0]) initWithDatabaseID:*(a1 + 72)];
  [v8 setPersistentID:v3];

  [v8 setMailboxURL:*(a1 + 32)];
  [v8 setUserInitiated:*(a1 + 112)];
  if (*(a1 + 80))
  {
    v4 = [*(a1 + 40) mailboxURLForDatabaseID:?];
  }

  else
  {
    v4 = 0;
  }

  [v8 setSourceMailboxURL:v4];
  if (*(a1 + 88))
  {
    v5 = [*(a1 + 40) mailboxURLForDatabaseID:?];
  }

  else
  {
    v5 = 0;
  }

  [v8 setDestinationMailboxURL:v5];
  v6 = *(a1 + 96) - 1;
  if (v6 < 6 && ((0x33u >> v6) & 1) != 0)
  {
    [v8 setTransferType:qword_1C6471DB8[v6]];
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 104) object:*(a1 + 40) file:@"EDLocalActionPersistence.m" lineNumber:317 description:@"Creating a transfer action when we don't have a transfer action type"];
  }

  [v8 setItemsToDownload:*(a1 + 48)];
  [v8 setItemsToCopy:*(a1 + 56)];
  [v8 setItemsToDelete:*(a1 + 64)];
}

- (id)_transferUndownloadedActionForRow:(id)a3 connection:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 objectForKeyedSubscript:@"ROWID"];
  v10 = [v9 databaseIDValue];

  v11 = [v7 objectForKeyedSubscript:@"action_type"];
  v28 = [v11 integerValue];

  v12 = [v7 objectForKeyedSubscript:@"mailbox"];
  v13 = [v12 databaseIDValue];

  v14 = [v7 objectForKeyedSubscript:@"source_mailbox"];
  v27 = [v14 databaseIDValue];

  v15 = [v7 objectForKeyedSubscript:@"destination_mailbox"];
  v16 = [v15 databaseIDValue];

  v17 = [v7 objectForKeyedSubscript:@"user_initiated"];
  v18 = [v17 BOOLValue];

  v19 = objc_opt_new();
  [(EDLocalActionPersistence *)self _findMessagesForAction:v10 remoteIDs:v19 messages:0 connection:v8];
  if ([v19 count] == 1)
  {
    v26 = v8;
    v20 = [v19 anyObject];
    v21 = [(EDLocalActionPersistence *)self mailboxURLForDatabaseID:v13];
    if (([v20 isEqualToString:@"1"]& 1) != 0)
    {
      v22 = 0;
    }

    else
    {
      v23 = objc_alloc(MEMORY[0x1E699B370]);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __73__EDLocalActionPersistence__transferUndownloadedActionForRow_connection___block_invoke;
      v29[3] = &unk_1E8252F68;
      v33 = v10;
      v38 = v18;
      v30 = v21;
      v31 = self;
      v34 = v27;
      v35 = v16;
      v36 = v28;
      v37 = a2;
      v32 = v20;
      v22 = [v23 initWithBuilder:v29];

      v8 = v26;
    }
  }

  else
  {
    v20 = +[EDLocalActionPersistence log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      -[EDLocalActionPersistence _transferUndownloadedActionForRow:connection:].cold.1(buf, [v19 count], v20);
    }

    v22 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v22;
}

void __73__EDLocalActionPersistence__transferUndownloadedActionForRow_connection___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [objc_alloc(MEMORY[0x1E699B2D0]) initWithDatabaseID:*(a1 + 56)];
  [v8 setPersistentID:v3];

  [v8 setMailboxURL:*(a1 + 32)];
  [v8 setUserInitiated:*(a1 + 96)];
  v4 = [*(a1 + 40) mailboxURLForDatabaseID:*(a1 + 64)];
  [v8 setSourceMailboxURL:v4];
  v5 = [*(a1 + 40) mailboxURLForDatabaseID:*(a1 + 72)];
  [v8 setDestinationMailboxURL:v5];
  v6 = *(a1 + 80) - 8;
  if (v6 >= 3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 88) object:*(a1 + 40) file:@"EDLocalActionPersistence.m" lineNumber:368 description:@"Creating a transfer action when we don't have a transfer action type"];
  }

  else
  {
    [v8 setTransferType:qword_1C6471DE8[v6]];
  }

  [v8 setOldestPersistedRemoteID:*(a1 + 48)];
}

- (id)_flagChangeActionForRow:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"ROWID"];
  v9 = [v8 databaseIDValue];

  v10 = [v6 objectForKeyedSubscript:@"mailbox"];
  v11 = [v10 databaseIDValue];

  v12 = [v6 objectForKeyedSubscript:@"user_initiated"];
  v13 = [v12 BOOLValue];

  v14 = objc_opt_new();
  v15 = objc_opt_new();
  [(EDLocalActionPersistence *)self _findMessagesForAction:v9 remoteIDs:v14 messages:v15 connection:v7];
  v16 = [(EDLocalActionPersistence *)self _flagChangeForAction:v9 connection:v7];
  if ([v14 count] || objc_msgSend(v15, "count"))
  {
    v17 = [(EDLocalActionPersistence *)self mailboxURLForDatabaseID:v11];
    v18 = objc_alloc(MEMORY[0x1E699B270]);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __63__EDLocalActionPersistence__flagChangeActionForRow_connection___block_invoke;
    v22[3] = &unk_1E8252F90;
    v27 = v9;
    v19 = v17;
    v23 = v19;
    v28 = v13;
    v24 = v14;
    v25 = v15;
    v26 = v16;
    v20 = [v18 initWithBuilder:v22];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

void __63__EDLocalActionPersistence__flagChangeActionForRow_connection___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [objc_alloc(MEMORY[0x1E699B2D0]) initWithDatabaseID:*(a1 + 64)];
  [v4 setPersistentID:v3];

  [v4 setMailboxURL:*(a1 + 32)];
  [v4 setUserInitiated:*(a1 + 72)];
  [v4 setRemoteIDs:*(a1 + 40)];
  [v4 setMessages:*(a1 + 48)];
  [v4 setFlagChange:*(a1 + 56)];
}

- (id)_flagChangeAllActionForRow:(id)a3 connection:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"ROWID"];
  v9 = [v8 databaseIDValue];

  v10 = [v6 objectForKeyedSubscript:@"mailbox"];
  v11 = [v10 databaseIDValue];

  v12 = [v6 objectForKeyedSubscript:@"user_initiated"];
  v13 = [v12 BOOLValue];

  v14 = objc_opt_new();
  v15 = objc_opt_new();
  [(EDLocalActionPersistence *)self _findMessagesForAction:v9 remoteIDs:v14 messages:v15 connection:v7];
  if ([v14 count] == 1)
  {
    v16 = [v14 anyObject];
    v17 = [(EDLocalActionPersistence *)self _flagChangeForAction:v9 connection:v7];
    v18 = [(EDLocalActionPersistence *)self mailboxURLForDatabaseID:v11];
    if (([v16 isEqualToString:@"1"]& 1) != 0)
    {
      v19 = 0;
    }

    else
    {
      v20 = objc_alloc(MEMORY[0x1E699B280]);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __66__EDLocalActionPersistence__flagChangeAllActionForRow_connection___block_invoke;
      v23[3] = &unk_1E8252FB8;
      v27 = v9;
      v24 = v18;
      v28 = v13;
      v25 = v16;
      v26 = v17;
      v19 = [v20 initWithBuilder:v23];
    }
  }

  else
  {
    v16 = +[EDLocalActionPersistence log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      -[EDLocalActionPersistence _flagChangeAllActionForRow:connection:].cold.1(buf, [v14 count], v16);
    }

    v19 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v19;
}

void __66__EDLocalActionPersistence__flagChangeAllActionForRow_connection___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [objc_alloc(MEMORY[0x1E699B2D0]) initWithDatabaseID:*(a1 + 56)];
  [v4 setPersistentID:v3];

  [v4 setMailboxURL:*(a1 + 32)];
  [v4 setUserInitiated:*(a1 + 64)];
  [v4 setOldestPersistedRemoteID:*(a1 + 40)];
  [v4 setFlagChange:*(a1 + 48)];
}

- (id)_labelChangeActionForRow:(id)a3 connection:(id)a4
{
  v44[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v30 = a4;
  v31 = v6;
  v7 = [v6 objectForKeyedSubscript:@"ROWID"];
  v8 = [v7 databaseIDValue];

  v9 = [v6 objectForKeyedSubscript:@"mailbox"];
  v10 = [v9 databaseIDValue];

  v11 = [v6 objectForKeyedSubscript:@"user_initiated"];
  v12 = [v11 BOOLValue];

  v13 = objc_opt_new();
  v29 = objc_opt_new();
  [EDLocalActionPersistence _findMessagesForAction:"_findMessagesForAction:remoteIDs:messages:connection:" remoteIDs:v8 messages:v13 connection:?];
  v14 = objc_opt_new();
  v27 = objc_opt_new();
  v28 = [v30 preparedStatementForQueryString:{@"SELECT label, do_add FROM action_labels WHERE action = ?"}];
  v15 = [(EDLocalActionPersistence *)self gmailLabelPersistence];
  v16 = [MEMORY[0x1E696AD98] numberWithLongLong:{v8, v15, v14}];
  v44[0] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __64__EDLocalActionPersistence__labelChangeActionForRow_connection___block_invoke;
  v40[3] = &unk_1E8252FE0;
  v18 = v15;
  v41 = v18;
  v19 = v14;
  v42 = v19;
  v20 = v27;
  v43 = v20;
  [v28 executeWithIndexedBindings:v17 usingBlock:v40 error:0];

  if (([v13 count] || objc_msgSend(v29, "count")) && (objc_msgSend(v19, "count") || objc_msgSend(v20, "count")))
  {
    v21 = [(EDLocalActionPersistence *)self mailboxURLForDatabaseID:v10];
    v22 = objc_alloc(MEMORY[0x1E699B2C0]);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __64__EDLocalActionPersistence__labelChangeActionForRow_connection___block_invoke_2;
    v32[3] = &unk_1E8253008;
    v38 = v8;
    v23 = v21;
    v33 = v23;
    v39 = v12;
    v34 = v13;
    v35 = v29;
    v36 = v19;
    v37 = v20;
    v24 = [v22 initWithBuilder:v32];
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

void __64__EDLocalActionPersistence__labelChangeActionForRow_connection___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 objectForKeyedSubscript:@"label"];
  v4 = [v3 integerValue];

  v5 = [*(a1 + 32) labelForDatabaseID:v4];
  if (v5)
  {
    v6 = [v10 objectForKeyedSubscript:@"do_add"];
    v7 = [v6 numberValue];
    v8 = [v7 BOOLValue];

    v9 = 48;
    if (v8)
    {
      v9 = 40;
    }

    [*(a1 + v9) addObject:v5];
  }
}

void __64__EDLocalActionPersistence__labelChangeActionForRow_connection___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [objc_alloc(MEMORY[0x1E699B2D0]) initWithDatabaseID:*(a1 + 72)];
  [v4 setPersistentID:v3];

  [v4 setMailboxURL:*(a1 + 32)];
  [v4 setUserInitiated:*(a1 + 80)];
  [v4 setRemoteIDs:*(a1 + 40)];
  [v4 setMessages:*(a1 + 48)];
  [v4 setLabelsToAdd:*(a1 + 56)];
  [v4 setLabelsToRemove:*(a1 + 64)];
}

- (void)_findMessagesForAction:(int64_t)a3 remoteIDs:(id)a4 messages:(id)a5 connection:(id)a6
{
  v21[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = [a6 preparedStatementForQueryString:{@"SELECT remote_id, message FROM action_messages WHERE action = ?"}];
  v13 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v21[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __81__EDLocalActionPersistence__findMessagesForAction_remoteIDs_messages_connection___block_invoke;
  v18[3] = &unk_1E8252FE0;
  v18[4] = self;
  v15 = v11;
  v19 = v15;
  v16 = v10;
  v20 = v16;
  [v12 executeWithIndexedBindings:v14 usingBlock:v18 error:0];

  v17 = *MEMORY[0x1E69E9840];
}

void __81__EDLocalActionPersistence__findMessagesForAction_remoteIDs_messages_connection___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 objectForKeyedSubscript:@"remote_id"];
  v4 = [v3 stringValue];

  v5 = *(a1 + 32);
  v6 = [v10 objectForKeyedSubscript:@"message"];
  v7 = [v5 messageForDatabaseID:{objc_msgSend(v6, "databaseIDValue")}];

  if (v7)
  {
    v8 = 40;
    v9 = v7;
  }

  else
  {
    if (!v4)
    {
      goto LABEL_6;
    }

    v8 = 48;
    v9 = v4;
  }

  [*(a1 + v8) addObject:v9];
LABEL_6:
}

- (id)_flagChangeForAction:(int64_t)a3 connection:(id)a4
{
  v5 = a4;
  v6 = objc_alloc(MEMORY[0x1E699B300]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__EDLocalActionPersistence__flagChangeForAction_connection___block_invoke;
  v10[3] = &unk_1E8253030;
  v7 = v5;
  v11 = v7;
  v12 = a3;
  v8 = [v6 initWithBuilder:v10];

  return v8;
}

void __60__EDLocalActionPersistence__flagChangeForAction_connection___block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) preparedStatementForQueryString:{@"SELECT flag_type, flag_value FROM action_flags WHERE action = ?"}];
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 40)];
  v13[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__EDLocalActionPersistence__flagChangeForAction_connection___block_invoke_2;
  v11[3] = &unk_1E8250300;
  v7 = v3;
  v12 = v7;
  v10 = 0;
  [v4 executeWithIndexedBindings:v6 usingBlock:v11 error:&v10];
  v8 = v10;

  v9 = *MEMORY[0x1E69E9840];
}

void __60__EDLocalActionPersistence__flagChangeForAction_connection___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [v16 objectForKeyedSubscript:@"flag_type"];
  v4 = [v3 numberValue];
  v5 = [v4 unsignedIntegerValue];

  if (v5 > 5)
  {
    if (v5 <= 7)
    {
      v11 = *(a1 + 32);
      v7 = [v16 objectForKeyedSubscript:@"flag_value"];
      [v7 numberValue];
      if (v5 == 6)
        v8 = {;
        [v11 changesForwardedTo:{objc_msgSend(v8, "BOOLValue")}];
      }

      else
        v8 = {;
        [v11 changesRedirectedTo:{objc_msgSend(v8, "BOOLValue")}];
      }
    }

    else
    {
      switch(v5)
      {
        case 8:
          v14 = *(a1 + 32);
          v7 = [v16 objectForKeyedSubscript:@"flag_value"];
          v8 = [v7 numberValue];
          [v14 changesJunkLevelSetByUserTo:{objc_msgSend(v8, "BOOLValue")}];
          break;
        case 9:
          v15 = *(a1 + 32);
          v7 = [v16 objectForKeyedSubscript:@"flag_value"];
          v8 = [v7 numberValue];
          [v15 changesJunkLevelTo:{objc_msgSend(v8, "unsignedIntegerValue")}];
          break;
        case 10:
          v9 = *(a1 + 32);
          v7 = [v16 objectForKeyedSubscript:@"flag_value"];
          v8 = [v7 numberValue];
          [v9 changesFlagColorTo:{objc_msgSend(v8, "unsignedIntegerValue")}];
          break;
        default:
          goto LABEL_23;
      }
    }
  }

  else if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v12 = *(a1 + 32);
      v7 = [v16 objectForKeyedSubscript:@"flag_value"];
      v8 = [v7 numberValue];
      [v12 changesReadTo:{objc_msgSend(v8, "BOOLValue")}];
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_23;
      }

      v10 = *(a1 + 32);
      v7 = [v16 objectForKeyedSubscript:@"flag_value"];
      v8 = [v7 numberValue];
      [v10 changesDeletedTo:{objc_msgSend(v8, "BOOLValue")}];
    }
  }

  else if (v5 == 3)
  {
    v13 = *(a1 + 32);
    v7 = [v16 objectForKeyedSubscript:@"flag_value"];
    v8 = [v7 numberValue];
    [v13 changesRepliedTo:{objc_msgSend(v8, "BOOLValue")}];
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = [v16 objectForKeyedSubscript:@"flag_value"];
    [v7 numberValue];
    if (v5 == 4)
      v8 = {;
      [v6 changesFlaggedTo:{objc_msgSend(v8, "BOOLValue")}];
    }

    else
      v8 = {;
      [v6 changesDraftTo:{objc_msgSend(v8, "BOOLValue")}];
    }
  }

LABEL_23:
}

- (BOOL)persistFlagChangeAction:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 mailboxURL];
  v6 = [(EDLocalActionPersistence *)self mailboxDatabaseIDForURL:v5];

  v7 = +[EDLocalActionPersistence log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v4 messages];
    *buf = 134218240;
    *&buf[4] = [v8 count];
    *&buf[12] = 2050;
    *&buf[14] = v6;
    _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Creating flag change action for %lu messages in mailbox %{public}llu", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v20 = 1;
  v9 = [(EDLocalActionPersistence *)self database];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDLocalActionPersistence persistFlagChangeAction:]"];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__EDLocalActionPersistence_persistFlagChangeAction___block_invoke;
  v15[3] = &unk_1E8253058;
  v17 = buf;
  v18 = v6;
  v15[4] = self;
  v11 = v4;
  v16 = v11;
  [v9 __performWriteWithCaller:v10 usingBlock:v15];

  v12 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);

  v13 = *MEMORY[0x1E69E9840];
  return v12 & 1;
}

uint64_t __52__EDLocalActionPersistence_persistFlagChangeAction___block_invoke(uint64_t a1, void *a2)
{
  v31[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:{@"INSERT INTO local_message_actions (action_type, mailbox) VALUES (?, ?)"}];
  v31[0] = &unk_1F45E66D0;
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 56)];
  v31[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v27 = 0;
  v7 = [v4 executeWithIndexedBindings:v6 usingBlock:0 error:&v27];
  v8 = v27;

  if (v7)
  {
    v9 = [v3 lastInsertedDatabaseID];
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) flagChange];
    [v10 _addFlagChange:v11 actionID:v9 connection:v3];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = [*(a1 + 40) messages];
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v13)
    {
      v14 = *v24;
      do
      {
        v15 = 0;
        do
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v12);
          }

          [*(a1 + 32) _addActionMessageForMessage:*(*(&v23 + 1) + 8 * v15++) destinationMessage:0 actionID:v9 actionPhase:0 connection:v3];
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v13);
    }

    goto LABEL_17;
  }

  v16 = [v8 domain];
  if (![v16 isEqualToString:*MEMORY[0x1E699B770]])
  {

    goto LABEL_16;
  }

  v17 = [v8 code] == 19;

  if (!v17)
  {
LABEL_16:
    [v3 handleError:v8 message:@"Adding flag change action"];
    *(*(*(a1 + 48) + 8) + 24) = 0;
    goto LABEL_17;
  }

  v18 = +[EDLocalActionPersistence log];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 56);
    *buf = 134349056;
    v30 = v19;
    _os_log_impl(&dword_1C61EF000, v18, OS_LOG_TYPE_DEFAULT, "Got foreign key constraint error adding action for mailbox %{public}llu", buf, 0xCu);
  }

LABEL_17:
  v20 = *(*(*(a1 + 48) + 8) + 24);

  v21 = *MEMORY[0x1E69E9840];
  return v20 & 1;
}

- (BOOL)persistFlagChangeUndownloadedAction:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 mailboxURL];
  v6 = [(EDLocalActionPersistence *)self mailboxDatabaseIDForURL:v5];

  v7 = +[EDLocalActionPersistence log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134349056;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Creating flag change all action in mailbox %{public}llu", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v19 = 0x2020000000;
  v20 = 1;
  v8 = [(EDLocalActionPersistence *)self database];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDLocalActionPersistence persistFlagChangeUndownloadedAction:]"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__EDLocalActionPersistence_persistFlagChangeUndownloadedAction___block_invoke;
  v14[3] = &unk_1E8253058;
  p_buf = &buf;
  v17 = v6;
  v14[4] = self;
  v10 = v4;
  v15 = v10;
  [v8 __performWriteWithCaller:v9 usingBlock:v14];

  v11 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);

  v12 = *MEMORY[0x1E69E9840];
  return v11 & 1;
}

uint64_t __64__EDLocalActionPersistence_persistFlagChangeUndownloadedAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:@"local_message_actions" conflictResolution:4];
  [v4 setObject:&unk_1F45E66E8 forKeyedSubscript:@"action_type"];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 56)];
  [v4 setObject:v6 forKeyedSubscript:@"mailbox"];

  v14 = 0;
  *(*(*(a1 + 48) + 8) + 24) = [v3 executeInsertStatement:v4 rowsChanged:&v14];
  v5 = v14;
  LODWORD(v6) = *(*(*(a1 + 48) + 8) + 24);
  if (v6 != 1 || v14 == 0)
  {
    v8 = *MEMORY[0x1E699A728];
    if ((v6 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = [v3 lastInsertedDatabaseID];
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) flagChange];
    *(*(*(a1 + 48) + 8) + 24) = [v9 _addFlagChange:v10 actionID:v8 connection:v3];

    LOBYTE(v6) = *(*(*(a1 + 48) + 8) + 24);
    if ((v6 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:@"action_messages"];
    v11 = [MEMORY[0x1E696AD98] numberWithLongLong:v8];
    [v6 setObject:v11 forKeyedSubscript:@"action"];

    v12 = [*(a1 + 40) oldestPersistedRemoteID];
    [v6 setObject:v12 forKeyedSubscript:@"remote_id"];

    [v6 setObject:&unk_1F45E6700 forKeyedSubscript:@"action_phase"];
    *(*(*(a1 + 48) + 8) + 24) = [v3 executeInsertStatement:v6 error:0];

    LOBYTE(v6) = *(*(*(a1 + 48) + 8) + 24);
  }

LABEL_11:

  return v6 & 1;
}

- (BOOL)_addFlagChange:(id)a3 actionID:(int64_t)a4 connection:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v8 preparedStatementForQueryString:{@"INSERT INTO action_flags (action, flag_type, flag_value) VALUES (?, ?, ?)"}];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__16;
  v26 = __Block_byref_object_dispose__16;
  v27 = 0;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __63__EDLocalActionPersistence__addFlagChange_actionID_connection___block_invoke;
  v17 = &unk_1E8253080;
  v19 = &v28;
  v10 = v9;
  v20 = &v22;
  v21 = a4;
  v18 = v10;
  v11 = _Block_copy(&v14);
  v11[2](v11, [v7 readChanged], 1, objc_msgSend(v7, "read"));
  v11[2](v11, [v7 deletedChanged], 2, objc_msgSend(v7, "deleted"));
  v11[2](v11, [v7 repliedChanged], 3, objc_msgSend(v7, "replied"));
  v11[2](v11, [v7 flaggedChanged], 4, objc_msgSend(v7, "flagged"));
  v11[2](v11, [v7 draftChanged], 5, objc_msgSend(v7, "draft"));
  v11[2](v11, [v7 forwardedChanged], 6, objc_msgSend(v7, "forwarded"));
  v11[2](v11, [v7 redirectedChanged], 7, objc_msgSend(v7, "redirected"));
  v11[2](v11, [v7 junkLevelSetByUserChanged], 8, objc_msgSend(v7, "junkLevelSetByUser"));
  v11[2](v11, [v7 junkLevelChanged], 9, objc_msgSend(v7, "junkLevel"));
  v11[2](v11, [v7 flagColorChanged], 10, objc_msgSend(v7, "flagColor"));
  if (v29[3])
  {
    v12 = 1;
  }

  else
  {
    [v8 handleError:v23[5] message:@"Adding flag change records"];
    v12 = *(v29 + 24);
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v12 & 1;
}

void __63__EDLocalActionPersistence__addFlagChange_actionID_connection___block_invoke(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v16[3] = *MEMORY[0x1E69E9840];
  if (*(*(a1[5] + 8) + 24) == 1 && a2 != 0)
  {
    v8 = a1[4];
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:a1[7]];
    v16[0] = v9;
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v16[1] = v10;
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v16[2] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
    v13 = *(a1[6] + 8);
    obj = *(v13 + 40);
    LOBYTE(v8) = [v8 executeWithIndexedBindings:v12 usingBlock:0 error:&obj];
    objc_storeStrong((v13 + 40), obj);
    *(*(a1[5] + 8) + 24) = v8;
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)persistTransferAction:(id)a3
{
  v69 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[EDLocalActionPersistence log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v54 = v4;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Persisting the transferAction: %@", buf, 0xCu);
  }

  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 1;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = *MEMORY[0x1E699A728];
  v6 = [(__CFString *)v4 sourceMailboxURL];
  if (v6)
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = [(__CFString *)v4 sourceMailboxURL];
    v9 = [v7 numberWithLongLong:{-[EDLocalActionPersistence mailboxDatabaseIDForURL:](self, "mailboxDatabaseIDForURL:", v8)}];
  }

  else
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v10 = [(__CFString *)v4 destinationMailboxURL];
  if (v10)
  {
    v11 = MEMORY[0x1E696AD98];
    v12 = [(__CFString *)v4 destinationMailboxURL];
    v37 = [v11 numberWithLongLong:{-[EDLocalActionPersistence mailboxDatabaseIDForURL:](self, "mailboxDatabaseIDForURL:", v12)}];
  }

  else
  {
    v37 = [MEMORY[0x1E695DFB0] null];
  }

  v13 = [(EDLocalActionPersistence *)self database];
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDLocalActionPersistence persistTransferAction:]"];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __50__EDLocalActionPersistence_persistTransferAction___block_invoke;
  v38[3] = &unk_1E82530A8;
  v15 = v4;
  v39 = v15;
  v40 = self;
  v43 = &v49;
  v16 = v9;
  v41 = v16;
  v17 = v37;
  v42 = v17;
  v44 = &v45;
  [v13 __performWriteWithCaller:v14 usingBlock:v38];

  v18 = [(__CFString *)v15 transferType];
  if (v18 >= 4)
  {
    v36 = 0;
  }

  else
  {
    v36 = off_1E8253138[v18];
  }

  v19 = [(__CFString *)v15 itemsToDownload];
  v35 = [v19 count];
  v20 = [(__CFString *)v15 itemsToCopy];
  v34 = [v20 count];
  v21 = [(__CFString *)v15 itemsToDelete];
  v22 = [v21 count];

  v23 = +[EDLocalActionPersistence log];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = v46[3];
    v33 = [(__CFString *)v15 itemsToDownload];
    v25 = [v33 count];
    v26 = [(__CFString *)v15 itemsToCopy];
    v27 = [v26 count];
    v28 = [(__CFString *)v15 itemsToDelete];
    v29 = [v28 count];
    *buf = 138545154;
    v54 = v36;
    v55 = 2048;
    v56 = v24;
    v57 = 2048;
    v58 = v34 + v35 + v22;
    v59 = 2048;
    v60 = v25;
    v61 = 2048;
    v62 = v27;
    v63 = 2048;
    v64 = v29;
    v65 = 2112;
    v66 = v16;
    v67 = 2112;
    v68 = v17;
    _os_log_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_DEFAULT, "Created %{public}@ action %lld for %lu messages (%lu download, %lu copy, %lu delete) in source mailbox %@, destination %@", buf, 0x52u);
  }

  v30 = *(v50 + 24);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);

  v31 = *MEMORY[0x1E69E9840];
  return v30 & 1;
}

uint64_t __50__EDLocalActionPersistence_persistTransferAction___block_invoke(uint64_t a1, void *a2)
{
  v62[5] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v45 = [v3 preparedStatementForQueryString:{@"INSERT INTO local_message_actions (action_type, user_initiated, mailbox, source_mailbox, destination_mailbox) VALUES (?, ?, ?, ?, ?)"}];
  v4 = [*(a1 + 32) transferType];
  if (v4 >= 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1C6471E00[v4];
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) mailboxURL];
  v8 = [v6 mailboxDatabaseIDForURL:v7];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  v62[0] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "userInitiated")}];
  v62[1] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:v8];
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v62[2] = v11;
  v62[3] = v12;
  v62[4] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:5];
  v58 = 0;
  v15 = [v45 executeWithIndexedBindings:v14 usingBlock:0 error:&v58];
  v16 = v58;
  *(*(*(a1 + 64) + 8) + 24) = v15;

  if (*(*(*(a1 + 64) + 8) + 24) != 1)
  {
    goto LABEL_31;
  }

  *(*(*(a1 + 72) + 8) + 24) = [v3 lastInsertedDatabaseID];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v17 = [*(a1 + 32) itemsToDownload];
  v18 = [v17 countByEnumeratingWithState:&v54 objects:v61 count:16];
  if (v18)
  {
    v19 = *v55;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v55 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v54 + 1) + 8 * i);
        v22 = *(a1 + 40);
        v23 = [v21 sourceMessage];
        v24 = [v21 destinationMessage];
        [v22 _addActionMessageForMessage:v23 destinationMessage:v24 actionID:*(*(*(a1 + 72) + 8) + 24) actionPhase:1 connection:v3];
      }

      v18 = [v17 countByEnumeratingWithState:&v54 objects:v61 count:16];
    }

    while (v18);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v25 = [*(a1 + 32) itemsToCopy];
  v26 = [v25 countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (v26)
  {
    v27 = *v51;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v51 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v50 + 1) + 8 * j);
        v30 = *(a1 + 40);
        v31 = [v29 sourceMessage];
        v32 = [v29 destinationMessage];
        [v30 _addActionMessageForMessage:v31 destinationMessage:v32 actionID:*(*(*(a1 + 72) + 8) + 24) actionPhase:3 connection:v3];
      }

      v26 = [v25 countByEnumeratingWithState:&v50 objects:v60 count:16];
    }

    while (v26);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v33 = [*(a1 + 32) itemsToDelete];
  v34 = [v33 countByEnumeratingWithState:&v46 objects:v59 count:16];
  if (v34)
  {
    v35 = *v47;
    do
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v47 != v35)
        {
          objc_enumerationMutation(v33);
        }

        v37 = *(*(&v46 + 1) + 8 * k);
        v38 = [v37 sourceMessage];

        v39 = *(a1 + 40);
        if (v38)
        {
          v40 = [v37 sourceMessage];
          v41 = [v37 destinationMessage];
          [v39 _addActionMessageForMessage:v40 destinationMessage:v41 actionID:*(*(*(a1 + 72) + 8) + 24) actionPhase:4 connection:v3];
        }

        else
        {
          v40 = [v37 sourceRemoteID];
          [v39 _addActionMessageForSourceRemoteID:v40 actionID:*(*(*(a1 + 72) + 8) + 24) connection:v3];
        }
      }

      v34 = [v33 countByEnumeratingWithState:&v46 objects:v59 count:16];
    }

    while (v34);
  }

  if (*(*(*(a1 + 64) + 8) + 24))
  {
    v42 = 1;
  }

  else
  {
LABEL_31:
    [v3 handleError:v16 message:@"Adding copy action"];
    v42 = *(*(*(a1 + 64) + 8) + 24);
  }

  v43 = *MEMORY[0x1E69E9840];
  return v42 & 1;
}

- (BOOL)persistTransferUndownloadedAction:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 1;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = *MEMORY[0x1E699A728];
  v5 = [v4 sourceMailboxURL];
  if (v5)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = [v4 sourceMailboxURL];
    v8 = [v6 numberWithLongLong:{-[EDLocalActionPersistence mailboxDatabaseIDForURL:](self, "mailboxDatabaseIDForURL:", v7)}];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 destinationMailboxURL];
  if (v9)
  {
    v10 = MEMORY[0x1E696AD98];
    v11 = [v4 destinationMailboxURL];
    v12 = [v10 numberWithLongLong:{-[EDLocalActionPersistence mailboxDatabaseIDForURL:](self, "mailboxDatabaseIDForURL:", v11)}];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(EDLocalActionPersistence *)self database];
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDLocalActionPersistence persistTransferUndownloadedAction:]"];
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __62__EDLocalActionPersistence_persistTransferUndownloadedAction___block_invoke;
  v29 = &unk_1E82530D0;
  v15 = v4;
  v30 = v15;
  v31 = self;
  v16 = v8;
  v32 = v16;
  v17 = v12;
  v33 = v17;
  v34 = &v40;
  v35 = &v36;
  [v13 __performWriteWithCaller:v14 usingBlock:&v26];

  v18 = [v15 transferType];
  if (v18 >= 4)
  {
    v19 = 0;
  }

  else
  {
    v19 = off_1E8253138[v18];
  }

  v20 = +[EDLocalActionPersistence log];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v37[3];
    v22 = *(v41 + 24);
    *buf = 138544130;
    v45 = v19;
    v46 = 2048;
    v47 = v21;
    v48 = 2112;
    v49 = v17;
    v50 = 1024;
    v51 = v22;
    _os_log_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_DEFAULT, "Created %{public}@ action %lld for undownloaded message in mailbox %@ (success = %d)", buf, 0x26u);
  }

  v23 = *(v41 + 24);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);

  v24 = *MEMORY[0x1E69E9840];
  return v23 & 1;
}

uint64_t __62__EDLocalActionPersistence_persistTransferUndownloadedAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) transferType];
  if (v4 >= 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1C6471E20[v4];
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) mailboxURL];
  v8 = [v6 mailboxDatabaseIDForURL:v7];

  v9 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:@"local_message_actions" conflictResolution:4];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  [v9 setObject:v10 forKeyedSubscript:@"action_type"];

  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:v8];
  [v9 setObject:v11 forKeyedSubscript:@"mailbox"];

  v12 = *(a1 + 48);
  if (v12)
  {
    [v9 setObject:v12 forKeyedSubscript:@"source_mailbox"];
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    [v9 setObject:v13 forKeyedSubscript:@"destination_mailbox"];
  }

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "userInitiated")}];
  [v9 setObject:v14 forKeyedSubscript:@"user_initiated"];

  v20 = 0;
  *(*(*(a1 + 64) + 8) + 24) = [v3 executeInsertStatement:v9 rowsChanged:&v20];
  LODWORD(v14) = *(*(*(a1 + 64) + 8) + 24);
  if (v14 == 1 && v20)
  {
    *(*(*(a1 + 72) + 8) + 24) = [v3 lastInsertedDatabaseID];
    if ([*(a1 + 32) transferType] == 3)
    {
      v15 = 4;
    }

    else
    {
      v15 = 3;
    }

    v14 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:@"action_messages"];
    v16 = [MEMORY[0x1E696AD98] numberWithLongLong:*(*(*(a1 + 72) + 8) + 24)];
    [v14 setObject:v16 forKeyedSubscript:@"action"];

    v17 = [*(a1 + 32) oldestPersistedRemoteID];
    [v14 setObject:v17 forKeyedSubscript:@"remote_id"];

    v18 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
    [v14 setObject:v18 forKeyedSubscript:@"action_phase"];

    *(*(*(a1 + 64) + 8) + 24) = [v3 executeInsertStatement:v14 error:0];
    LOBYTE(v14) = *(*(*(a1 + 64) + 8) + 24);
  }

  return v14 & 1;
}

- (BOOL)persistLabelChangeAction:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 mailboxURL];
  v6 = [(EDLocalActionPersistence *)self mailboxDatabaseIDForURL:v5];

  v7 = +[EDLocalActionPersistence log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v4 messages];
    *buf = 134218240;
    *&buf[4] = [v8 count];
    *&buf[12] = 2050;
    *&buf[14] = v6;
    _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Creating label change action for %lu messages in mailbox %{public}llu", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v21 = 1;
  v9 = [(EDLocalActionPersistence *)self database];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDLocalActionPersistence persistLabelChangeAction:]"];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__EDLocalActionPersistence_persistLabelChangeAction___block_invoke;
  v15[3] = &unk_1E8253058;
  v18 = buf;
  v19 = v6;
  v11 = v4;
  v16 = v11;
  v17 = self;
  [v9 __performWriteWithCaller:v10 usingBlock:v15];

  v12 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);

  v13 = *MEMORY[0x1E69E9840];
  return v12 & 1;
}

uint64_t __53__EDLocalActionPersistence_persistLabelChangeAction___block_invoke(uint64_t a1, void *a2)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:{@"INSERT INTO local_message_actions (action_type, mailbox) VALUES (?, ?)"}];
  v24[0] = &unk_1F45E6718;
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 56)];
  v24[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  *(*(*(a1 + 48) + 8) + 24) = [v4 executeWithIndexedBindings:v6 usingBlock:0 error:0];

  v7 = [v3 lastInsertedDatabaseID];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [*(a1 + 32) messages];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = *v20;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(v8);
      }

      *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) _addActionMessageForMessage:*(*(&v19 + 1) + 8 * v11) destinationMessage:0 actionID:v7 actionPhase:0 connection:v3];
      if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1 && (v12 = *(a1 + 40), [*(a1 + 32) labelsToAdd], v13 = objc_claimAutoreleasedReturnValue(), *(*(*(a1 + 48) + 8) + 24) = objc_msgSend(v12, "_setLabelsOnAction:labels:add:connection:", v7, v13, 1, v3), v13, (*(*(*(a1 + 48) + 8) + 24) & 1) != 0))
  {
    v14 = *(a1 + 40);
    v15 = [*(a1 + 32) labelsToRemove];
    *(*(*(a1 + 48) + 8) + 24) = [v14 _setLabelsOnAction:v7 labels:v15 add:0 connection:v3];

    v16 = *(*(*(a1 + 48) + 8) + 24);
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16 & 1;
}

- (BOOL)_setLabelsOnAction:(int64_t)a3 labels:(id)a4 add:(BOOL)a5 connection:(id)a6
{
  v25 = a5;
  v35 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v27 = a6;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v24 = *v30;
    v9 = 0x1E696A000uLL;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = [v27 preparedStatementForQueryString:{@"INSERT INTO action_labels (action, label, do_add) VALUES (?, ?, ?)"}];
        v13 = [*(v9 + 3480) numberWithLongLong:a3];
        v33[0] = v13;
        v14 = [v11 persistentID];
        v33[1] = v14;
        v15 = v9;
        v16 = [*(v9 + 3480) numberWithBool:v25];
        v33[2] = v16;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
        v28 = 0;
        v18 = [v12 executeWithIndexedBindings:v17 usingBlock:0 error:&v28];
        v19 = v28;

        v9 = v15;
        if ((v18 & 1) == 0)
        {
          [v27 handleError:v19 message:@"Adding flag change messages"];

          v20 = 0;
          goto LABEL_11;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v20 = 1;
LABEL_11:

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (BOOL)_addActionMessageForMessage:(id)a3 destinationMessage:(id)a4 actionID:(int64_t)a5 actionPhase:(int64_t)a6 connection:(id)a7
{
  v45 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v35 = v13;
  v14 = [v12 persistentID];
  v15 = [v14 longLongValue];

  if ((a6 & 0xFFFFFFFFFFFFFFFDLL) != 1 || v15)
  {
    v18 = [v11 persistentID];
    v19 = [v18 longLongValue];

    if (v19)
    {
      [MEMORY[0x1E696AD98] numberWithLongLong:v19];
    }

    else
    {
      [MEMORY[0x1E695DFB0] null];
    }
    v16 = ;
    v20 = [v11 remoteID];
    v21 = v20;
    if (v20)
    {
      v34 = v20;
    }

    else
    {
      v34 = [MEMORY[0x1E695DFB0] null];
    }

    if (v15)
    {
      [MEMORY[0x1E696AD98] numberWithLongLong:v15];
    }

    else
    {
      [MEMORY[0x1E695DFB0] null];
    }
    v22 = ;
    if (a6)
    {
      [MEMORY[0x1E696AD98] numberWithInteger:a6];
    }

    else
    {
      [MEMORY[0x1E695DFB0] null];
    }
    v23 = ;
    v24 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:@"action_messages"];
    v25 = [MEMORY[0x1E696AD98] numberWithLongLong:a5];
    [v24 setObject:v25 forKeyedSubscript:@"action"];

    [v24 setObject:v16 forKeyedSubscript:@"message"];
    [v24 setObject:v34 forKeyedSubscript:@"remote_id"];
    [v24 setObject:v22 forKeyedSubscript:@"destination_message"];
    [v24 setObject:v23 forKeyedSubscript:@"action_phase"];
    v36 = 0;
    v26 = [v13 executeInsertStatement:v24 error:&v36];
    v27 = v36;
    v28 = v27;
    if (v26)
    {
      goto LABEL_19;
    }

    v29 = [v27 domain];
    if ([v29 isEqualToString:*MEMORY[0x1E699B770]])
    {
      v30 = [v28 code] == 19;

      if (v30)
      {
LABEL_19:
        v17 = 1;
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
    }

    [v35 handleError:v28 message:@"Adding flag change messages"];
    v17 = 0;
    goto LABEL_25;
  }

  v16 = +[EDLocalActionPersistence log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v33 = [MEMORY[0x1E696AF00] callStackSymbols];
    *buf = 134218754;
    v38 = a5;
    v39 = 2114;
    v40 = v12;
    v41 = 2114;
    v42 = v11;
    v43 = 2114;
    v44 = v33;
    _os_log_error_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_ERROR, "Adding action message for transfer without destination message ID - action ID: %lld, destination message: %{public}@, source message: %{public}@\n%{public}@", buf, 0x2Au);
  }

  v17 = 1;
LABEL_26:

  v31 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)_addActionMessageForSourceRemoteID:(id)a3 actionID:(int64_t)a4 connection:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = objc_autoreleasePoolPush();
  v10 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:@"action_messages"];
  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:a4];
  [v10 setObject:v11 forKeyedSubscript:@"action"];

  [v10 setObject:v7 forKeyedSubscript:@"remote_id"];
  [v10 setObject:&unk_1F45E6718 forKeyedSubscript:@"action_phase"];
  v15 = 0;
  v12 = [v8 executeInsertStatement:v10 error:&v15];
  v13 = v15;
  if ((v12 & 1) == 0)
  {
    [v8 handleError:v13 message:@"Adding flag change messages"];
  }

  objc_autoreleasePoolPop(v9);
  return v12;
}

- (BOOL)updateTransferAction:(id)a3 withResults:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  v8 = +[EDLocalActionPersistence log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 completedItems];
    v10 = [v9 count];
    v11 = [v7 failedItems];
    v12 = [v11 count];
    v13 = [v7 phaseForResults];
    *buf = 138544130;
    v31 = v6;
    v32 = 2048;
    v33 = v10;
    v34 = 2048;
    v35 = v12;
    v36 = 2048;
    v37 = v13;
    _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Persisting results for action %{public}@, completed %lu, failed %lu for phase %lu", buf, 0x2Au);
  }

  v14 = [(EDLocalActionPersistence *)self database];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDLocalActionPersistence updateTransferAction:withResults:]"];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __61__EDLocalActionPersistence_updateTransferAction_withResults___block_invoke;
  v21[3] = &unk_1E82530F8;
  v16 = v6;
  v22 = v16;
  v17 = v7;
  v23 = v17;
  v24 = self;
  v25 = &v26;
  [v14 __performWriteWithCaller:v15 usingBlock:v21];

  v18 = *(v27 + 24);
  _Block_object_dispose(&v26, 8);

  v19 = *MEMORY[0x1E69E9840];
  return v18 & 1;
}

uint64_t __61__EDLocalActionPersistence_updateTransferAction_withResults___block_invoke(uint64_t a1, void *a2)
{
  v81[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) persistentID];
  v5 = [v4 databaseID];

  v6 = [*(a1 + 40) failedItems];
  v7 = [v6 count];

  if (v7)
  {
    v8 = *(a1 + 48);
    v9 = [*(a1 + 40) failedItems];
    [v8 _deleteCopyItems:v9 actionID:v5 connection:v3];

    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) failedItems];
    [v10 updateWithFailedItems:v11 forPhase:{objc_msgSend(*(a1 + 40), "phaseForResults")}];

    v12 = +[EDLocalActionPersistence log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 32) persistentID];
      v14 = [*(a1 + 40) failedItems];
      *buf = 138543618;
      v75 = v13;
      v76 = 2048;
      v77 = [v14 count];
      _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "Action %{public}@ had %lu failed items", buf, 0x16u);
    }
  }

  v15 = [*(a1 + 32) itemsToDownload];
  if ([v15 count])
  {
    goto LABEL_8;
  }

  v16 = [*(a1 + 32) itemsToCopy];
  if ([v16 count])
  {

LABEL_8:
    goto LABEL_9;
  }

  v41 = [*(a1 + 32) itemsToDelete];
  v42 = [v41 count] == 0;

  if (v42)
  {
    [*(a1 + 48) removeMessageAction:v5];
    goto LABEL_29;
  }

LABEL_9:
  v17 = *(a1 + 32);
  v18 = [*(a1 + 40) completedItems];
  [v17 updateWithCompletedItems:v18 forPhase:{objc_msgSend(*(a1 + 40), "phaseForResults")}];

  if ([*(a1 + 40) phaseForResults] != 1)
  {
    if ([*(a1 + 40) phaseForResults] == 3)
    {
      v22 = [*(a1 + 32) sourceMailboxURL];
      if ([*(a1 + 32) transferType] == 1 && (v23 = *(a1 + 48), objc_msgSend(*(a1 + 32), "destinationMailboxURL"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v23, "moveSupportedFromMailboxURL:toURL:", v22, v24), v24, (v25 & 1) == 0))
      {
        v48 = *(a1 + 48);
        v49 = [*(a1 + 40) completedItems];
        [v48 _updateCopyItems:v49 toPhase:4 actionID:v5 connection:v3];

        v50 = [*(a1 + 32) itemsToCopy];
        v51 = [v50 count] == 0;

        if (v51)
        {
          v66 = *(a1 + 48);
          v67 = [*(a1 + 32) sourceMailboxURL];
          v68 = [v66 mailboxURLIsInRemoteAccount:v67];

          if (!v68)
          {
            v71 = +[EDLocalActionPersistence log];
            if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
            {
              v72 = [*(a1 + 32) persistentID];
              *buf = 138543362;
              v75 = v72;
              _os_log_impl(&dword_1C61EF000, v71, OS_LOG_TYPE_DEFAULT, "Finished action %{public}@", buf, 0xCu);
            }

            [*(a1 + 48) removeMessageAction:v5];
            v30 = 0;
            *(*(*(a1 + 56) + 8) + 24) = 0;
            goto LABEL_41;
          }

          v30 = v22;
          v69 = +[EDLocalActionPersistence log];
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            v70 = [*(a1 + 32) persistentID];
            *buf = 138543362;
            v75 = v70;
            _os_log_impl(&dword_1C61EF000, v69, OS_LOG_TYPE_DEFAULT, "Action %{public}@ finished copying items", buf, 0xCu);
          }

          goto LABEL_19;
        }
      }

      else
      {
        v26 = *(a1 + 48);
        v27 = [*(a1 + 40) completedItems];
        [v26 _deleteCopyItems:v27 actionID:v5 connection:v3];

        v28 = [*(a1 + 32) itemsToCopy];
        v29 = [v28 count] == 0;

        if (v29)
        {
          v30 = v22;
          v31 = +[EDLocalActionPersistence log];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = [*(a1 + 32) persistentID];
            *buf = 138543362;
            v75 = v32;
            _os_log_impl(&dword_1C61EF000, v31, OS_LOG_TYPE_DEFAULT, "Finished action %{public}@", buf, 0xCu);
          }

          [*(a1 + 48) removeMessageAction:v5];
          *(*(*(a1 + 56) + 8) + 24) = 0;
LABEL_19:
          v22 = v30;
          goto LABEL_41;
        }
      }

      v30 = 0;
      goto LABEL_41;
    }

    if ([*(a1 + 40) phaseForResults] != 4)
    {
      goto LABEL_49;
    }

    v33 = *(a1 + 48);
    v34 = [*(a1 + 40) completedItems];
    [v33 _deleteCopyItems:v34 actionID:v5 connection:v3];

    v35 = [*(a1 + 32) itemsToDelete];
    LODWORD(v33) = [v35 count] == 0;

    if (!v33)
    {
      goto LABEL_49;
    }

    v36 = +[EDLocalActionPersistence log];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [*(a1 + 32) persistentID];
      *buf = 138543362;
      v75 = v37;
      _os_log_impl(&dword_1C61EF000, v36, OS_LOG_TYPE_DEFAULT, "Finished action %{public}@", buf, 0xCu);
    }

    [*(a1 + 48) removeMessageAction:v5];
LABEL_29:
    *(*(*(a1 + 56) + 8) + 24) = 0;
    goto LABEL_49;
  }

  v19 = [*(a1 + 32) destinationMailboxURL];

  if (v19)
  {
    v20 = *(a1 + 48);
    v21 = [*(a1 + 40) completedItems];
    [v20 _updateCopyItems:v21 toPhase:3 actionID:v5 connection:v3];
  }

  else
  {
    v38 = [*(a1 + 32) transferType];
    v39 = *(a1 + 40);
    v40 = *(a1 + 48);
    if (v38 == 1)
    {
      v21 = [v39 completedItems];
      [v40 _updateCopyItems:v21 toPhase:4 actionID:v5 connection:v3];
    }

    else
    {
      v21 = [v39 completedItems];
      [v40 _deleteCopyItems:v21 actionID:v5 connection:v3];
    }
  }

  v43 = [*(a1 + 32) itemsToDownload];
  v44 = [v43 count] == 0;

  if (!v44)
  {
    goto LABEL_49;
  }

  v30 = [*(a1 + 32) destinationMailboxURL];
  if (!v30 && [*(a1 + 32) transferType] != 1)
  {
    v45 = +[EDLocalActionPersistence log];
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = [*(a1 + 32) persistentID];
      *buf = 138543362;
      v75 = v46;
      _os_log_impl(&dword_1C61EF000, v45, OS_LOG_TYPE_DEFAULT, "Finished action %{public}@", buf, 0xCu);
    }

    [*(a1 + 48) removeMessageAction:v5];
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v22 = +[EDLocalActionPersistence log];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v47 = [*(a1 + 32) persistentID];
    *buf = 138543362;
    v75 = v47;
    _os_log_impl(&dword_1C61EF000, v22, OS_LOG_TYPE_DEFAULT, "Action %{public}@ finished downloading items", buf, 0xCu);
  }

LABEL_41:

  if (v30)
  {
    v52 = [*(a1 + 48) mailboxDatabaseIDForURL:v30];
    v53 = [v3 preparedStatementForQueryString:@"UPDATE local_message_actions SET mailbox = :mailbox WHERE ROWID = :action"];
    v80[0] = @":action";
    v54 = [MEMORY[0x1E696AD98] numberWithLongLong:v5];
    v80[1] = @":mailbox";
    v81[0] = v54;
    v55 = [MEMORY[0x1E696AD98] numberWithLongLong:v52];
    v81[1] = v55;
    v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:2];

    v73 = 0;
    LOBYTE(v55) = [v53 executeWithNamedBindings:v56 usingBlock:0 error:&v73];
    v57 = v73;
    if ((v55 & 1) == 0)
    {
      [v3 handleError:v57 message:@"Updating action phase"];
    }

    v58 = [*(a1 + 32) sourceMailboxURL];
    v59 = [v30 isEqual:v58];
    v60 = @"destination mailbox";
    if (v59)
    {
      v60 = @"source mailbox";
    }

    v61 = v60;

    v62 = +[EDLocalActionPersistence log];
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v63 = [*(a1 + 32) persistentID];
      *buf = 138543874;
      v75 = v63;
      v76 = 2112;
      v77 = v61;
      v78 = 2048;
      v79 = v52;
      _os_log_impl(&dword_1C61EF000, v62, OS_LOG_TYPE_DEFAULT, "Updating action %{public}@ to %@ (%lu)", buf, 0x20u);
    }
  }

LABEL_49:

  v64 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)moveSupportedFromMailboxURL:(id)a3 toURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  [(EDLocalActionPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDLocalActionPersistence moveSupportedFromMailboxURL:toURL:]", "EDLocalActionPersistence.m", 974, "0");
}

- (BOOL)mailboxURLIsInRemoteAccount:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 ef_hasScheme:*MEMORY[0x1E699A698]] & 1) != 0 || (objc_msgSend(v4, "ef_hasScheme:", *MEMORY[0x1E699A690]))
    {
      v5 = 1;
    }

    else
    {
      v5 = [v4 ef_hasScheme:*MEMORY[0x1E699A688]];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateCopyItems:(id)a3 toPhase:(int64_t)a4 actionID:(int64_t)a5 connection:(id)a6
{
  v12 = a6;
  v10 = [(EDLocalActionPersistence *)self _whereClauseToFindCopyItems:a3];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UPDATE action_messages SET action_phase = %ld WHERE action = %llu AND %@", a4, a5, v10];
  [v12 executeStatementString:v11 errorMessage:@"Updating copy item phase"];
}

- (void)_deleteCopyItems:(id)a3 actionID:(int64_t)a4 connection:(id)a5
{
  v10 = a5;
  v8 = [(EDLocalActionPersistence *)self _whereClauseToFindCopyItems:a3];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM action_messages WHERE action = %llu AND %@", a4, v8];
  [v10 executeStatementString:v9 errorMessage:@"Deleting copy items"];
}

- (id)_whereClauseToFindCopyItems:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = v25;
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = *v27;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        v12 = [v11 destinationMessage];

        if (v12)
        {
          v13 = [v11 destinationMessage];
          v14 = [v13 persistentID];
          [v6 addObject:v14];
LABEL_10:

          goto LABEL_11;
        }

        v15 = [v11 sourceRemoteID];

        if (v15)
        {
          v13 = [v11 sourceRemoteID];
          v14 = [v13 ef_quotedSQLEscapedString];
          [v5 addObject:v14];
          goto LABEL_10;
        }

        v13 = [MEMORY[0x1E696AAA8] currentHandler];
        [v13 handleFailureInMethod:a2 object:self file:@"EDLocalActionPersistence.m" lineNumber:1005 description:@"Copy item had neither a source remoteID or a destination message"];
LABEL_11:

        ++v10;
      }

      while (v8 != v10);
      v16 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
      v8 = v16;
    }

    while (v16);
  }

  if ([v5 count] && objc_msgSend(v6, "count"))
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = [v5 componentsJoinedByString:{@", "}];
    v19 = [v6 componentsJoinedByString:{@", "}];
    v20 = objc_msgSend(v17, "stringWithFormat:", @"(remote_id IN (%@) OR destination_message IN (%@)"), v18, v19;
  }

  else
  {
    v21 = [v5 count];
    v22 = MEMORY[0x1E696AEC0];
    if (v21)
    {
      v18 = [v5 componentsJoinedByString:{@", "}];
      [v22 stringWithFormat:@"remote_id IN (%@)", v18];
    }

    else
    {
      v18 = [v6 componentsJoinedByString:{@", "}];
      [v22 stringWithFormat:@"destination_message IN (%@)", v18];
    }
    v20 = ;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)_sourceRemoteIDListForCopyItems:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) sourceRemoteID];
        v10 = [v9 ef_quotedSQLEscapedString];
        [v4 addObject:v10];
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)updateTransferUndownloadedMessageAction:(id)a3 withResults:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 completedItems];
  if ([v7 phaseForResults] != 3 || objc_msgSend(v6, "transferType") != 1)
  {
    goto LABEL_7;
  }

  v9 = [v6 sourceMailboxURL];
  v10 = [v6 destinationMailboxURL];
  if ([(EDLocalActionPersistence *)self moveSupportedFromMailboxURL:v9 toURL:v10])
  {

LABEL_7:
    v17 = [v6 persistentID];
    -[EDLocalActionPersistence removeMessageAction:](self, "removeMessageAction:", [v17 databaseID]);

    v16 = 0;
    goto LABEL_8;
  }

  v11 = [v8 count];

  if (!v11)
  {
    goto LABEL_7;
  }

  [v6 updateWithCompletedCopyItems:v8];
  v12 = [v6 persistentID];
  v13 = [v12 databaseID];

  v14 = [(EDLocalActionPersistence *)self database];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDLocalActionPersistence updateTransferUndownloadedMessageAction:withResults:]"];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __80__EDLocalActionPersistence_updateTransferUndownloadedMessageAction_withResults___block_invoke;
  v19[3] = &unk_1E8251998;
  v20 = v8;
  v21 = self;
  v23 = v13;
  v22 = v6;
  [v14 __performWriteWithCaller:v15 usingBlock:v19];

  v16 = 1;
LABEL_8:

  return v16;
}

uint64_t __80__EDLocalActionPersistence_updateTransferUndownloadedMessageAction_withResults___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(a1 + 40);
        v9 = [*(*(&v20 + 1) + 8 * v7) sourceRemoteID];
        [v8 _addActionMessageForSourceRemoteID:v9 actionID:*(a1 + 56) connection:v3];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  v10 = *(a1 + 40);
  v11 = [*(a1 + 48) sourceMailboxURL];
  v12 = [v10 mailboxDatabaseIDForURL:v11];

  v13 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"local_message_actions"];
  [v13 setObject:&unk_1F45E66D0 forKeyedSubscript:@"action_type"];
  v14 = [MEMORY[0x1E696AD98] numberWithLongLong:v12];
  [v13 setObject:v14 forKeyedSubscript:@"mailbox"];

  v15 = [MEMORY[0x1E699B8C8] column:@"ROWID"];
  v16 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 56)];
  v17 = [v15 equalTo:v16];
  [v13 setWhereClause:v17];

  [v3 executeUpdateStatement:v13 error:0];
  v18 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)updateFlagChangeAction:(id)a3 withRemainingUIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EDLocalActionPersistence *)self database];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDLocalActionPersistence updateFlagChangeAction:withRemainingUIDs:]"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__EDLocalActionPersistence_updateFlagChangeAction_withRemainingUIDs___block_invoke;
  v12[3] = &unk_1E8250328;
  v10 = v6;
  v13 = v10;
  v11 = v7;
  v14 = v11;
  [v8 __performWriteWithCaller:v9 usingBlock:v12];
}

uint64_t __69__EDLocalActionPersistence_updateFlagChangeAction_withRemainingUIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) persistentID];
  v5 = [v4 databaseID];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [*(a1 + 40) ed_uidQueryExpression];
  v8 = [v6 stringWithFormat:@"DELETE FROM action_messages WHERE action = %lld AND NOT (%@)", v5, v7];

  [v3 executeStatementString:v8 errorMessage:@"Deleting flag change messages."];
  return 1;
}

- (void)removeMessageAction:(int64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = +[EDLocalActionPersistence log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = a3;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Action %llu finished", buf, 0xCu);
  }

  v6 = [(EDLocalActionPersistence *)self database];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDLocalActionPersistence removeMessageAction:]"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__EDLocalActionPersistence_removeMessageAction___block_invoke;
  v9[3] = &__block_descriptor_40_e41_B16__0__EDPersistenceDatabaseConnection_8l;
  v9[4] = a3;
  [v6 __performWriteWithCaller:v7 usingBlock:v9];

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __48__EDLocalActionPersistence_removeMessageAction___block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:@"DELETE FROM local_message_actions WHERE ROWID = ?"];
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 32)];
  v12[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v11 = 0;
  v7 = [v4 executeWithIndexedBindings:v6 usingBlock:0 error:&v11];
  v8 = v11;

  if ((v7 & 1) == 0)
  {
    [v3 handleError:v8 message:@"Removing completed action"];
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)removeMessageActions:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    if ([v4 count] == 1)
    {
      v5 = [v4 firstObject];
      -[EDLocalActionPersistence removeMessageAction:](self, "removeMessageAction:", [v5 databaseID]);
    }

    else
    {
      v6 = [v4 ef_map:&__block_literal_global_37];
      v7 = [v6 componentsJoinedByString:{@", "}];

      v8 = +[EDLocalActionPersistence log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v16 = [v4 count];
        v17 = 2114;
        v18 = v7;
        _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "%llu Actions finished %{public}@", buf, 0x16u);
      }

      v9 = [(EDLocalActionPersistence *)self database];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDLocalActionPersistence removeMessageActions:]"];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __49__EDLocalActionPersistence_removeMessageActions___block_invoke_232;
      v13[3] = &unk_1E8251CB8;
      v11 = v7;
      v14 = v11;
      [v9 __performWriteWithCaller:v10 usingBlock:v13];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

id __49__EDLocalActionPersistence_removeMessageActions___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 stringValue];

  return v2;
}

uint64_t __49__EDLocalActionPersistence_removeMessageActions___block_invoke_232(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM local_message_actions WHERE ROWID IN (%@)", *(a1 + 32)];
  v5 = [v3 preparedStatementForQueryString:v4];
  v9 = 0;
  v6 = [v5 executeUsingBlock:0 error:&v9];
  v7 = v9;
  if ((v6 & 1) == 0)
  {
    [v3 handleError:v7 message:@"Removing completed action"];
  }

  return v6;
}

- (ECLocalMessageActionID)latestActionID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__16;
  v11 = __Block_byref_object_dispose__16;
  v12 = 0;
  v2 = [(EDLocalActionPersistence *)self database];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDLocalActionPersistence latestActionID]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__EDLocalActionPersistence_latestActionID__block_invoke;
  v6[3] = &unk_1E8251DA0;
  v6[4] = &v7;
  [v2 __performReadWithCaller:v3 usingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __42__EDLocalActionPersistence_latestActionID__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT MAX(ROWID) as latest FROM local_message_actions"];
  v5 = [v3 preparedStatementForQueryString:v4];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__EDLocalActionPersistence_latestActionID__block_invoke_2;
  v7[3] = &unk_1E8250418;
  v7[4] = *(a1 + 32);
  [v5 executeUsingBlock:v7 error:0];

  return 1;
}

void __42__EDLocalActionPersistence_latestActionID__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_alloc(MEMORY[0x1E699B2D0]);
  v4 = [v8 objectForKeyedSubscript:@"latest"];
  v5 = [v3 initWithDatabaseID:{objc_msgSend(v4, "databaseIDValue")}];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __76__EDLocalActionPersistence__transferActionForRow_connection_failedMessages___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Could not find destination message for database ID %lld", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_transferUndownloadedActionForRow:(os_log_t)log connection:.cold.1(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_fault_impl(&dword_1C61EF000, log, OS_LOG_TYPE_FAULT, "Transfer all action expected to have exactly one remote ID associated with it, but had %lu", buf, 0xCu);
}

- (void)_flagChangeAllActionForRow:(os_log_t)log connection:.cold.1(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_fault_impl(&dword_1C61EF000, log, OS_LOG_TYPE_FAULT, "Flag change all action expected to have exactly one remote ID associated with it, but had %lu", buf, 0xCu);
}

@end