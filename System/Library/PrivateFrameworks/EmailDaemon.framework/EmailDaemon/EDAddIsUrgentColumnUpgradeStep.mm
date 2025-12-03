@interface EDAddIsUrgentColumnUpgradeStep
+ (BOOL)runWithConnection:(id)connection error:(id *)error;
+ (id)log;
@end

@implementation EDAddIsUrgentColumnUpgradeStep

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__EDAddIsUrgentColumnUpgradeStep_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_6 != -1)
  {
    dispatch_once(&log_onceToken_6, block);
  }

  v2 = log_log_6;

  return v2;
}

void __37__EDAddIsUrgentColumnUpgradeStep_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_6;
  log_log_6 = v1;
}

+ (BOOL)runWithConnection:(id)connection error:(id *)error
{
  v29[3] = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v6 = sqlite3_exec([connectionCopy sqlDB], "ALTER TABLE messages ADD COLUMN is_urgent INTEGER NOT NULL DEFAULT 0;CREATE INDEX IF NOT EXISTS messages_mailbox_is_urgent_display_date_index ON messages(mailbox, is_urgent, display_date);CREATE INDEX IF NOT EXISTS messages_mailbox_deleted_is_urgent_display_date_index ON messages(mailbox, deleted, is_urgent, display_date) WHERE journaled = 0;ALTER TABLE threads ADD COLUMN is_urgent INTEGER NOT NULL DEFAULT 0;CREATE INDEX IF NOT EXISTS threads_scope_is_urgent_display_date_conversation_index ON threads(scope, is_urgent, display_date, conversation);", 0, 0, 0);
  if (v6)
  {
    *error = [MEMORY[0x1E696ABC0] ef_SQLiteErrorWithCode:v6];
    v7 = +[EDAddIsUrgentColumnUpgradeStep log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [EDAddIsUrgentColumnUpgradeStep runWithConnection:v7 error:?];
    }

    v8 = 0;
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x1E699B948]);
    v7 = [v9 initWithResultColumn:*MEMORY[0x1E699B768] table:@"message_global_data"];
    v10 = [MEMORY[0x1E699B8C8] column:@"urgent"];
    v11 = [v10 equalTo:MEMORY[0x1E695E118]];
    [v7 setWhere:v11];

    v12 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"messages"];
    [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"is_urgent"];
    v13 = [MEMORY[0x1E699B8C8] column:@"global_message_id"];
    v14 = [v13 in:v7];

    v15 = [MEMORY[0x1E699B8C8] column:@"read"];
    v16 = [v15 equalTo:&unk_1F45E6550];

    v17 = [MEMORY[0x1E695DF00] ef_dateHoursAgo:{objc_msgSend(MEMORY[0x1E699ACB8], "consideredUrgentHourLimit")}];
    v18 = [MEMORY[0x1E699B8C8] column:@"date_received"];
    v19 = [v18 greaterThan:v17];

    v20 = objc_alloc(MEMORY[0x1E699B898]);
    v29[0] = v14;
    v29[1] = v16;
    v29[2] = v19;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];
    v22 = [v20 initWithExpressions:v21];
    [v12 setWhereClause:v22];

    queryString = [v12 queryString];
    v24 = +[EDAddIsUrgentColumnUpgradeStep log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138412290;
      v28 = queryString;
      _os_log_impl(&dword_1C61EF000, v24, OS_LOG_TYPE_DEFAULT, "Query = %@", &v27, 0xCu);
    }

    v8 = [connectionCopy executeUpdateStatement:v12 error:error];
  }

  v25 = *MEMORY[0x1E69E9840];
  return v8;
}

@end