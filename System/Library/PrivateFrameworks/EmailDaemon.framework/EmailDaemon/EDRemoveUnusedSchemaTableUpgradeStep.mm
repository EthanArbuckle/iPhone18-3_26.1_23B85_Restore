@interface EDRemoveUnusedSchemaTableUpgradeStep
+ (OS_os_log)log;
+ (int)_copyMessagesData:(id)data;
+ (int)_createTempMessagesTable:(id)table;
+ (int)_dropTable:(id)table connection:(id)connection;
+ (int)_dropThreadCategoriesIndex:(id)index;
+ (int)_recreateMessagesIndices:(id)indices;
+ (int)_recreateThreadsIndices:(id)indices;
+ (int)_recreateThreadsTable:(id)table;
+ (int)_swapMessagesTables:(id)tables;
+ (int)_truncateTable:(id)table connection:(id)connection;
+ (int)runWithConnection:(id)connection;
@end

@implementation EDRemoveUnusedSchemaTableUpgradeStep

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__EDRemoveUnusedSchemaTableUpgradeStep_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_83 != -1)
  {
    dispatch_once(&log_onceToken_83, block);
  }

  v2 = log_log_83;

  return v2;
}

void __43__EDRemoveUnusedSchemaTableUpgradeStep_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_83;
  log_log_83 = v1;
}

+ (int)_createTempMessagesTable:(id)table
{
  v16[4] = *MEMORY[0x1E69E9840];
  tableCopy = table;
  sqlConnection = [tableCopy sqlConnection];
  v16[0] = 0;
  v5 = [sqlConnection executeStatementString:@"CREATE TABLE IF NOT EXISTS messages_new (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{message_id INTEGER NOT NULL DEFAULT 0, remote_id INTEGER, document_id TEXT COLLATE BINARY, sender INTEGER, subject_prefix TEXT COLLATE BINARY, subject INTEGER NOT NULL, summary INTEGER, date_sent INTEGER, date_received INTEGER, mailbox INTEGER NOT NULL, remote_mailbox INTEGER, flags INTEGER NOT NULL DEFAULT 0, read INTEGER NOT NULL DEFAULT 0, flagged INTEGER NOT NULL DEFAULT 0, deleted INTEGER NOT NULL DEFAULT 0, size INTEGER NOT NULL DEFAULT 0, conversation_id INTEGER NOT NULL DEFAULT 0, date_last_viewed INTEGER, original_mailbox INTEGER, visible INTEGER, sender_vip INTEGER, encoding INTEGER, content_type INTEGER, sequence_identifier INTEGER DEFAULT 0, external_id TEXT COLLATE BINARY, unique_id INTEGER, content_index_transaction_id INTEGER, list_id_hash INTEGER, journaled INTEGER, flag_color INTEGER);", v16}];
  v6 = v16[0];

  if (v5)
  {
    sqlConnection2 = [tableCopy sqlConnection];
    v15 = v6;
    v8 = [sqlConnection2 executeStatementString:@"ALTER TABLE messages RENAME TO messages_old" error:&v15];
    v9 = v15;

    if (v8)
    {
      code = 0;
    }

    else
    {
      v12 = +[EDRemoveUnusedSchemaTableUpgradeStep log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [v9 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        +[EDRemoveUnusedSchemaTableUpgradeStep _createTempMessagesTable:];
      }

      code = [v9 code];
    }

    v6 = v9;
  }

  else
  {
    v11 = +[EDRemoveUnusedSchemaTableUpgradeStep log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [v6 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      +[EDRemoveUnusedSchemaTableUpgradeStep _createTempMessagesTable:];
    }

    code = [v6 code];
  }

  v13 = *MEMORY[0x1E69E9840];
  return code;
}

+ (int)_recreateMessagesIndices:(id)indices
{
  v34 = *MEMORY[0x1E69E9840];
  indicesCopy = indices;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  allKeys = [&unk_1F45E70E0 allKeys];
  obj = allKeys;
  v4 = 0;
  v5 = [allKeys countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v5)
  {
    v6 = *v28;
    do
    {
      v7 = 0;
      v8 = v4;
      do
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * v7);
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP INDEX IF EXISTS %@", v9];;
        sqlConnection = [indicesCopy sqlConnection];
        v26 = v8;
        v12 = [sqlConnection executeStatementString:v10 error:&v26];
        v4 = v26;

        if ((v12 & 1) == 0)
        {
          v13 = +[EDRemoveUnusedSchemaTableUpgradeStep log];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            ef_publicDescription = [v4 ef_publicDescription];
            *buf = 138543618;
            *&buf[4] = v9;
            *&buf[12] = 2114;
            *&buf[14] = ef_publicDescription;
            _os_log_error_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_ERROR, "Failed to drop index: %{public}@ %{public}@", buf, 0x16u);
          }
        }

        ++v7;
        v8 = v4;
      }

      while (v5 != v7);
      allKeys = obj;
      v5 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v5);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v32 = 1;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __65__EDRemoveUnusedSchemaTableUpgradeStep__recreateMessagesIndices___block_invoke;
  v22[3] = &unk_1E8256710;
  v25 = buf;
  v15 = indicesCopy;
  v23 = v15;
  v16 = v4;
  v24 = v16;
  [&unk_1F45E70E0 enumerateKeysAndObjectsUsingBlock:v22];
  if (*(*&buf[8] + 24))
  {
    code = 0;
  }

  else
  {
    code = [v16 code];
  }

  _Block_object_dispose(buf, 8);
  v18 = *MEMORY[0x1E69E9840];
  return code;
}

void __65__EDRemoveUnusedSchemaTableUpgradeStep__recreateMessagesIndices___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v15[4] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:v8, v7];
  v10 = [*(a1 + 32) sqlConnection];
  v15[0] = 0;
  v11 = [v10 executeStatementString:v9 error:v15];
  v12 = v15[0];
  *(*(*(a1 + 48) + 8) + 24) = v11;

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v13 = +[EDRemoveUnusedSchemaTableUpgradeStep log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 40) ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __65__EDRemoveUnusedSchemaTableUpgradeStep__recreateMessagesIndices___block_invoke_cold_1();
    }

    *a4 = 1;
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (int)_copyMessagesData:(id)data
{
  v13[4] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v4 = [&unk_1F45E6F58 componentsJoinedByString:{@", "}];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INSERT INTO messages_new (%@) SELECT %@ FROM messages_old", v4, v4];
  sqlConnection = [dataCopy sqlConnection];
  v13[0] = 0;
  v7 = [sqlConnection executeStatementString:v5 error:v13];
  v8 = v13[0];

  if (v7)
  {
    code = 0;
  }

  else
  {
    v10 = +[EDRemoveUnusedSchemaTableUpgradeStep log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [v8 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      +[EDRemoveUnusedSchemaTableUpgradeStep _copyMessagesData:];
    }

    code = [v8 code];
  }

  v11 = *MEMORY[0x1E69E9840];
  return code;
}

+ (int)_swapMessagesTables:(id)tables
{
  v12[4] = *MEMORY[0x1E69E9840];
  tablesCopy = tables;
  code = [self _dropTable:@"messages_old" connection:tablesCopy];
  if (!code)
  {
    sqlConnection = [tablesCopy sqlConnection];
    v12[0] = 0;
    v7 = [sqlConnection executeStatementString:@"ALTER TABLE messages_new RENAME TO messages" error:v12];
    v8 = v12[0];

    if (v7)
    {
      code = 0;
    }

    else
    {
      v9 = +[EDRemoveUnusedSchemaTableUpgradeStep log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [v8 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        +[EDRemoveUnusedSchemaTableUpgradeStep _swapMessagesTables:];
      }

      code = [v8 code];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return code;
}

+ (int)_recreateThreadsTable:(id)table
{
  v11[4] = *MEMORY[0x1E69E9840];
  tableCopy = table;
  sqlConnection = [tableCopy sqlConnection];
  v11[0] = 0;
  v5 = [sqlConnection executeStatementString:@"CREATE TABLE IF NOT EXISTS threads (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{scope INTEGER NOT NULL REFERENCES thread_scopes(ROWID) ON DELETE CASCADE, conversation INTEGER NOT NULL REFERENCES conversations(conversation_id) ON DELETE CASCADE, newest_read_message INTEGER REFERENCES messages(ROWID) ON DELETE SET NULL, display_message INTEGER REFERENCES messages(ROWID) ON DELETE SET NULL, date INTEGER NOT NULL, read INTEGER NOT NULL DEFAULT 0, deleted INTEGER NOT NULL DEFAULT 0, flagged INTEGER NOT NULL DEFAULT 0, has_red_flag INTEGER NOT NULL DEFAULT 0, has_orange_flag INTEGER NOT NULL DEFAULT 0, has_yellow_flag INTEGER NOT NULL DEFAULT 0, has_green_flag INTEGER NOT NULL DEFAULT 0, has_blue_flag INTEGER NOT NULL DEFAULT 0, has_purple_flag INTEGER NOT NULL DEFAULT 0, has_gray_flag INTEGER NOT NULL DEFAULT 0, draft INTEGER NOT NULL DEFAULT 0, replied INTEGER NOT NULL DEFAULT 0, forwarded INTEGER NOT NULL DEFAULT 0, redirected INTEGER NOT NULL DEFAULT 0, junk_level_set_by_user INTEGER NOT NULL DEFAULT 0, junk_level INTEGER NOT NULL DEFAULT 0, has_unflagged INTEGER NOT NULL DEFAULT 0, has_attachments INTEGER NOT NULL DEFAULT 0, count INTEGER NOT NULL, journaled INTEGER NOT NULL DEFAULT 0, UNIQUE(scope, conversation) ON CONFLICT ABORT);", v11}];
  v6 = v11[0];

  if (v5)
  {
    code = 0;
  }

  else
  {
    v8 = +[EDRemoveUnusedSchemaTableUpgradeStep log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [v6 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      +[EDRemoveUnusedSchemaTableUpgradeStep _recreateThreadsTable:];
    }

    code = [v6 code];
  }

  v9 = *MEMORY[0x1E69E9840];
  return code;
}

+ (int)_recreateThreadsIndices:(id)indices
{
  v34 = *MEMORY[0x1E69E9840];
  indicesCopy = indices;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  allKeys = [&unk_1F45E7108 allKeys];
  obj = allKeys;
  v4 = 0;
  v5 = [allKeys countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v5)
  {
    v6 = *v28;
    do
    {
      v7 = 0;
      v8 = v4;
      do
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * v7);
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP INDEX IF EXISTS %@", v9];;
        sqlConnection = [indicesCopy sqlConnection];
        v26 = v8;
        v12 = [sqlConnection executeStatementString:v10 error:&v26];
        v4 = v26;

        if ((v12 & 1) == 0)
        {
          v13 = +[EDRemoveUnusedSchemaTableUpgradeStep log];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            ef_publicDescription = [v4 ef_publicDescription];
            *buf = 138543618;
            *&buf[4] = v9;
            *&buf[12] = 2114;
            *&buf[14] = ef_publicDescription;
            _os_log_error_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_ERROR, "Failed to drop index: %{public}@ %{public}@", buf, 0x16u);
          }
        }

        ++v7;
        v8 = v4;
      }

      while (v5 != v7);
      allKeys = obj;
      v5 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v5);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v32 = 1;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __64__EDRemoveUnusedSchemaTableUpgradeStep__recreateThreadsIndices___block_invoke;
  v22[3] = &unk_1E8256710;
  v25 = buf;
  v15 = indicesCopy;
  v23 = v15;
  v16 = v4;
  v24 = v16;
  [&unk_1F45E7108 enumerateKeysAndObjectsUsingBlock:v22];
  if (*(*&buf[8] + 24))
  {
    code = 0;
  }

  else
  {
    code = [v16 code];
  }

  _Block_object_dispose(buf, 8);
  v18 = *MEMORY[0x1E69E9840];
  return code;
}

void __64__EDRemoveUnusedSchemaTableUpgradeStep__recreateThreadsIndices___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v15[4] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:v8, v7];
  v10 = [*(a1 + 32) sqlConnection];
  v15[0] = 0;
  v11 = [v10 executeStatementString:v9 error:v15];
  v12 = v15[0];
  *(*(*(a1 + 48) + 8) + 24) = v11;

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v13 = +[EDRemoveUnusedSchemaTableUpgradeStep log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 40) ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __65__EDRemoveUnusedSchemaTableUpgradeStep__recreateMessagesIndices___block_invoke_cold_1();
    }

    *a4 = 1;
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (int)_dropTable:(id)table connection:(id)connection
{
  v15[4] = *MEMORY[0x1E69E9840];
  tableCopy = table;
  connectionCopy = connection;
  tableCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TABLE IF EXISTS %@", tableCopy];
  sqlConnection = [connectionCopy sqlConnection];
  v15[0] = 0;
  v9 = [sqlConnection executeStatementString:tableCopy error:v15];
  v10 = v15[0];

  if (v9)
  {
    code = 0;
  }

  else
  {
    v12 = +[EDRemoveUnusedSchemaTableUpgradeStep log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [v10 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      +[EDRemoveUnusedSchemaTableUpgradeStep _dropTable:connection:];
    }

    code = [v10 code];
  }

  v13 = *MEMORY[0x1E69E9840];
  return code;
}

+ (int)_truncateTable:(id)table connection:(id)connection
{
  v15[4] = *MEMORY[0x1E69E9840];
  tableCopy = table;
  connectionCopy = connection;
  tableCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM %@", tableCopy];
  sqlConnection = [connectionCopy sqlConnection];
  v15[0] = 0;
  v9 = [sqlConnection executeStatementString:tableCopy error:v15];
  v10 = v15[0];

  if (v9)
  {
    code = 0;
  }

  else
  {
    v12 = +[EDRemoveUnusedSchemaTableUpgradeStep log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [v10 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      +[EDRemoveUnusedSchemaTableUpgradeStep _truncateTable:connection:];
    }

    code = [v10 code];
  }

  v13 = *MEMORY[0x1E69E9840];
  return code;
}

+ (int)_dropThreadCategoriesIndex:(id)index
{
  v11[4] = *MEMORY[0x1E69E9840];
  indexCopy = index;
  sqlConnection = [indexCopy sqlConnection];
  v11[0] = 0;
  v5 = [sqlConnection executeStatementString:@"DROP INDEX IF EXISTS thread_categories_type_active_user_override_thread_index;" error:v11];
  v6 = v11[0];

  if (v5)
  {
    code = 0;
  }

  else
  {
    v8 = +[EDRemoveUnusedSchemaTableUpgradeStep log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [v6 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      +[EDRemoveUnusedSchemaTableUpgradeStep _dropThreadCategoriesIndex:];
    }

    code = [v6 code];
  }

  v9 = *MEMORY[0x1E69E9840];
  return code;
}

+ (int)runWithConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [self _dropTable:@"interaction_log" connection:connectionCopy];
  if (!v5)
  {
    v5 = [self _dropTable:@"thread_categories" connection:connectionCopy];
    if (!v5)
    {
      v5 = [self _dropTable:@"read_later" connection:connectionCopy];
      if (!v5)
      {
        v5 = [self _dropThreadCategoriesIndex:connectionCopy];
        if (!v5)
        {
          v5 = [self _dropTable:@"categorization_sender_rules" connection:connectionCopy];
          if (!v5)
          {
            v5 = [self _dropTable:@"categorization_conversation_rules" connection:connectionCopy];
            if (!v5)
            {
              v5 = [self _dropTable:@"categorization_group_rules" connection:connectionCopy];
              if (!v5)
              {
                v7 = [connectionCopy columnExists:@"category_active_types" inTable:@"messages" type:0];
                if ((((v7 | [connectionCopy columnExists:@"times_viewed" inTable:@"messages" type:0]) & 1) == 0 || (v5 = objc_msgSend(self, "_createTempMessagesTable:", connectionCopy)) == 0 && (v5 = objc_msgSend(self, "_recreateMessagesIndices:", connectionCopy)) == 0 && (v5 = objc_msgSend(self, "_copyMessagesData:", connectionCopy)) == 0 && (v5 = objc_msgSend(self, "_swapMessagesTables:", connectionCopy)) == 0) && (!objc_msgSend(connectionCopy, "columnExists:inTable:type:", @"read_later_date", @"threads", 0) || (v5 = objc_msgSend(self, "_dropTable:connection:", @"threads", connectionCopy)) == 0 && (v5 = objc_msgSend(self, "_truncateTable:connection:", @"thread_senders", connectionCopy)) == 0 && (v5 = objc_msgSend(self, "_truncateTable:connection:", @"thread_mailboxes", connectionCopy)) == 0 && (v5 = objc_msgSend(self, "_truncateTable:connection:", @"thread_scopes", connectionCopy)) == 0 && (v5 = objc_msgSend(self, "_truncateTable:connection:", @"thread_recipients", connectionCopy)) == 0 && (v5 = objc_msgSend(self, "_recreateThreadsTable:", connectionCopy)) == 0 && (v5 = objc_msgSend(self, "_recreateThreadsIndices:", connectionCopy)) == 0))
                {
                  v5 = 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

+ (void)_createTempMessagesTable:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to create new messages table: %{public}@", v5);
}

+ (void)_createTempMessagesTable:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to rename messages_old: %{public}@", v5);
}

void __65__EDRemoveUnusedSchemaTableUpgradeStep__recreateMessagesIndices___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed to create index: %{public}@ %{public}@", v4, v5);
}

+ (void)_copyMessagesData:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to drop copy messages data: %{public}@", v5);
}

+ (void)_swapMessagesTables:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to rename new messages: %{public}@", v5);
}

+ (void)_recreateThreadsTable:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to create new threads table: %{public}@", v5);
}

+ (void)_dropTable:connection:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed to drop table %{public}@: %{public}@", v4, v5);
}

+ (void)_truncateTable:connection:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed to truncate table %{public}@: %{public}@", v4, v5);
}

+ (void)_dropThreadCategoriesIndex:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to drop thread_categories_type_active_user_override_thread_index: %{public}@", v5);
}

@end