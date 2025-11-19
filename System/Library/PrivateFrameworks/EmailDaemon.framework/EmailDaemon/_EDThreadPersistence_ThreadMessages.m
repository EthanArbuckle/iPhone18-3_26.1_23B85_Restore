@interface _EDThreadPersistence_ThreadMessages
- (BOOL)addThreadReplacingExisting:(BOOL)a3 journaled:(BOOL)a4;
- (EMThread)thread;
- (_EDThreadPersistence_ThreadMessages)initWithSQLHelper:(id)a3 messagePersistence:(id)a4 threadScopeDatabaseID:(int64_t)a5 threadObjectID:(id)a6 wrappedMessages:(id)a7;
- (id)_displayWrappedMessageWithNewestReadWrappedMessage:(id *)a3;
- (id)_iterateNewestUnreadWrappedMessagesInWrappedMessages:(id)a3 iteratorBlock:(id)a4;
- (id)_newestUnreadWrappedMessagesWithNewestReadWrappedMessage:(id *)a3;
- (id)_threadQuery;
- (id)debugDescription;
- (id)updateThreadTableWithJournaled:(BOOL)a3;
- (void)_collectDebuggingInfo;
@end

@implementation _EDThreadPersistence_ThreadMessages

- (_EDThreadPersistence_ThreadMessages)initWithSQLHelper:(id)a3 messagePersistence:(id)a4 threadScopeDatabaseID:(int64_t)a5 threadObjectID:(id)a6 wrappedMessages:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = _EDThreadPersistence_ThreadMessages;
  v17 = [(_EDThreadPersistence_ThreadMessages *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_sqlHelper, a3);
    objc_storeStrong(&v18->_messagePersistence, a4);
    v18->_threadScopeDatabaseID = a5;
    objc_storeStrong(&v18->_threadObjectID, a6);
    v19 = [v16 copy];
    wrappedMessages = v18->_wrappedMessages;
    v18->_wrappedMessages = v19;
  }

  return v18;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p>", objc_opt_class(), self];
  [v3 addObject:v4];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"thread scope DB ID: %lld", -[_EDThreadPersistence_ThreadMessages threadScopeDatabaseID](self, "threadScopeDatabaseID")];
  [v3 addObject:v5];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [(_EDThreadPersistence_ThreadMessages *)self threadObjectID];
  v8 = [v6 stringWithFormat:@"conversation ID: %lld", objc_msgSend(v7, "conversationID")];
  [v3 addObject:v8];

  v9 = [(_EDThreadPersistence_ThreadMessages *)self wrappedMessages];
  v10 = [v9 ef_map:&__block_literal_global_93];
  v11 = [v10 componentsJoinedByString:{@", "}];

  v12 = MEMORY[0x1E696AEC0];
  v13 = [(_EDThreadPersistence_ThreadMessages *)self wrappedMessages];
  v14 = [v12 stringWithFormat:@"wrapped messages: {%@}(count: %u)", v11, objc_msgSend(v13, "count")];
  [v3 addObject:v14];

  v15 = [v3 componentsJoinedByString:@" "];

  return v15;
}

- (EMThread)thread
{
  thread = self->_thread;
  if (!thread)
  {
    v4 = [(_EDThreadPersistence_ThreadMessages *)self wrappedMessages];
    v5 = [v4 ef_mapSelector:sel_message];

    v6 = [EDInMemoryThread alloc];
    v7 = [(_EDThreadPersistence_ThreadMessages *)self _threadQuery];
    v8 = [(_EDThreadPersistence_ThreadMessages *)self threadObjectID];
    v9 = [v8 threadScope];
    v10 = [(EDInMemoryThread *)v6 initWithMessages:v5 originatingQuery:v7 threadScope:v9];

    v11 = [(EDInMemoryThread *)v10 thread];
    v12 = self->_thread;
    self->_thread = v11;

    thread = self->_thread;
  }

  return thread;
}

- (id)_threadQuery
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E699ADA0];
  v3 = [(_EDThreadPersistence_ThreadMessages *)self threadObjectID];
  v4 = [v3 threadScope];
  v5 = [v2 predicateForMessagesWithThreadScope:v4];

  v6 = [MEMORY[0x1E699ADA0] sortDescriptorForDateAscending:0];
  v7 = objc_alloc(MEMORY[0x1E699AE28]);
  v8 = objc_opt_class();
  v13[0] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v10 = [v7 initWithTargetClass:v8 predicate:v5 sortDescriptors:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)addThreadReplacingExisting:(BOOL)a3 journaled:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v32 = *MEMORY[0x1E69E9840];
  v7 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v18 = [(_EDThreadPersistence_ThreadMessages *)self threadObjectID];
    v19 = [v18 conversationID];
    v20 = [(_EDThreadPersistence_ThreadMessages *)self wrappedMessages];
    *buf = 134218752;
    v25 = v19;
    v26 = 1024;
    v27 = [v20 count];
    v28 = 1024;
    v29 = v4;
    v30 = 1024;
    v31 = v5;
    _os_log_debug_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEBUG, "Adding thread %lld with %u messages. Journaled: %{BOOL}d, replace: %{BOOL}d", buf, 0x1Eu);
  }

  v8 = @"INSERT OR IGNORE INTO threads( scope,   conversation,   newest_read_message,   newest_message,   display_message,   date,   display_date,   read_later_date,   read,   flagged,   has_red_flag,   has_orange_flag,   has_yellow_flag,   has_green_flag,   has_blue_flag,   has_purple_flag,   has_gray_flag,   draft,   replied,   forwarded,   redirected,   junk_level_set_by_user,   junk_level,   has_unflagged,   has_attachments,   count,   journaled,   is_icloud_cleanup) VALUES( :scope,   :conversation_id,   :newest_read_message,   :newest_message,   :display_message,   :date,   :display_date,   :read_later_date,   :read,   :flagged,   :has_Red_flag,   :has_Orange_flag,   :has_Yellow_flag,   :has_Green_flag,   :has_Blue_flag,   :has_Purple_flag,   :has_Gray_flag,   :draft,   :replied,   :forwarded,   :redirected,   :junk_level_set_by_user,   :junk_level,   :has_unflagged,   :has_attachments,   :count,   :journaled,   :is_icloud_cleanup);";
  if (v5)
  {
    v8 = @"INSERT OR REPLACE INTO threads( scope,   conversation,   newest_read_message,   newest_message,   display_message,   date,   display_date,   read_later_date,   read,   flagged,   has_red_flag,   has_orange_flag,   has_yellow_flag,   has_green_flag,   has_blue_flag,   has_purple_flag,   has_gray_flag,   draft,   replied,   forwarded,   redirected,   junk_level_set_by_user,   junk_level,   has_unflagged,   has_attachments,   count,   journaled,   is_icloud_cleanup) VALUES( :scope,   :conversation_id,   :newest_read_message,   :newest_message,   :display_message,   :date,   :display_date,   :read_later_date,   :read,   :flagged,   :has_Red_flag,   :has_Orange_flag,   :has_Yellow_flag,   :has_Green_flag,   :has_Blue_flag,   :has_Purple_flag,   :has_Gray_flag,   :draft,   :replied,   :forwarded,   :redirected,   :junk_level_set_by_user,   :junk_level,   :has_unflagged,   :has_attachments,   :count,   :journaled,   :is_icloud_cleanup);";
  }

  v9 = v8;
  v10 = [(_EDThreadPersistence_ThreadMessages *)self sqlHelper];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __76___EDThreadPersistence_ThreadMessages_addThreadReplacingExisting_journaled___block_invoke;
  v22[3] = &unk_1E8258A90;
  v22[4] = self;
  v23 = v4;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __76___EDThreadPersistence_ThreadMessages_addThreadReplacingExisting_journaled___block_invoke_2;
  v21[3] = &unk_1E8253788;
  v21[4] = self;
  v11 = [v10 executeUpdateSQL:v9 bindings:v22 errorHandler:v21];

  if (v11 > 1)
  {
    v12 = [_EDThreadPersistence_PersistedThread alloc];
    v13 = [(_EDThreadPersistence_ThreadMessages *)self sqlHelper];
    v14 = [v13 connection];
    v15 = -[_EDThreadPersistence_PersistedThread initWithMessages:threadDatabaseID:](v12, "initWithMessages:threadDatabaseID:", self, [v14 lastInsertedDatabaseID]);

    [(_EDThreadPersistence_PersistedThread *)v15 addMailboxes];
    [(_EDThreadPersistence_PersistedThread *)v15 addSenders];
    [(_EDThreadPersistence_PersistedThread *)v15 addRecipientsForType:1];
    [(_EDThreadPersistence_PersistedThread *)v15 addRecipientsForType:2];
  }

  v16 = *MEMORY[0x1E69E9840];
  return v11 > 1;
}

- (void)_collectDebuggingInfo
{
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6_4(a1);
  OUTLINED_FUNCTION_10_2(&dword_1C61EF000, v2, v3, "messages — count: %d", v4, v5, v6, v7, 0);
  v8 = *MEMORY[0x1E69E9840];
}

- (id)updateThreadTableWithJournaled:(BOOL)a3
{
  v3 = a3;
  v32 = *MEMORY[0x1E69E9840];
  v5 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v21 = [(_EDThreadPersistence_ThreadMessages *)self threadObjectID];
    v22 = [v21 conversationID];
    v23 = [(_EDThreadPersistence_ThreadMessages *)self wrappedMessages];
    *buf = 134218496;
    *&buf[4] = v22;
    *&buf[12] = 1024;
    *&buf[14] = [v23 count];
    *&buf[18] = 1024;
    *&buf[20] = v3;
    _os_log_debug_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEBUG, "Updating thread %lld with %u messages. Journaled: %{BOOL}d", buf, 0x18u);
  }

  v6 = [(_EDThreadPersistence_ThreadMessages *)self thread];
  v7 = [v6 objectID];
  v8 = [v7 conversationID];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v9 = [(_EDThreadPersistence_ThreadMessages *)self sqlHelper];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __70___EDThreadPersistence_ThreadMessages_updateThreadTableWithJournaled___block_invoke;
  v27[3] = &unk_1E8258B00;
  v27[4] = self;
  v27[5] = v8;
  v28 = v3;
  v10 = [v9 executeUpsertSQL:@"INSERT INTO threads( scope bindings:conversation errorHandler:{date, display_date, read_later_date, count, journaled, has_unflagged, has_attachments, read, flagged, draft, replied, forwarded, redirected, junk_level_set_by_user, junk_level, has_red_flag, has_orange_flag, has_yellow_flag, has_green_flag, has_blue_flag, has_purple_flag, has_gray_flag, is_icloud_cleanup) VALUES( :scope, :conversation_id, :date, :display_date, :read_later_date, (SELECT count(DISTINCT ifnull(message_id, ROWID || '-fake-message-id')) FROM temp_thread_scope_message WHERE conversation_id = :conversation_id), :journaled, :has_unflagged, :has_attachments, :read, :flagged, :draft, :replied, :forwarded, :redirected, :junk_level_set_by_user, :junk_level, :has_Red_flag, :has_Orange_flag, :has_Yellow_flag, :has_Green_flag, :has_Blue_flag, :has_Purple_flag, :has_Gray_flag, :is_icloud_cleanup) ON CONFLICT (scope, conversation) DO UPDATE SET   date = max(date, excluded.date), display_date = max(display_date, excluded.display_date), read_later_date = max(read_later_date, excluded.read_later_date), count = excluded.count, journaled = journaled OR excluded.journaled, has_attachments = has_attachments OR excluded.has_attachments, has_attachments = has_attachments OR excluded.has_attachments, read = read AND excluded.read, flagged = flagged OR excluded.flagged, draft = draft OR excluded.draft, replied = replied OR excluded.replied, forwarded = forwarded OR excluded.forwarded, redirected = redirected OR excluded.redirected, junk_level_set_by_user = junk_level_set_by_user OR excluded.junk_level_set_by_user, junk_level = min(junk_level, excluded.junk_level), has_red_flag = has_red_flag OR excluded.has_red_flag, has_orange_flag = has_orange_flag OR excluded.has_orange_flag, has_yellow_flag = has_yellow_flag OR excluded.has_yellow_flag, has_green_flag = has_green_flag OR excluded.has_green_flag, has_blue_flag = has_blue_flag OR excluded.has_blue_flag, has_purple_flag = has_purple_flag OR excluded.has_purple_flag, has_gray_flag = has_gray_flag OR excluded.has_gray_flag, is_icloud_cleanup = is_icloud_cleanup OR excluded.is_icloud_cleanup WHERE count != excluded.count;", v27, &__block_literal_global_164_0}];

  v31 = v10;
  if (*(*&buf[8] + 24))
  {
    goto LABEL_5;
  }

  v11 = [(_EDThreadPersistence_ThreadMessages *)self sqlHelper];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __70___EDThreadPersistence_ThreadMessages_updateThreadTableWithJournaled___block_invoke_168;
  v26[3] = &unk_1E8250D20;
  v26[4] = self;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __70___EDThreadPersistence_ThreadMessages_updateThreadTableWithJournaled___block_invoke_2_169;
  v25[3] = &unk_1E8258B28;
  v25[4] = buf;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __70___EDThreadPersistence_ThreadMessages_updateThreadTableWithJournaled___block_invoke_170;
  v24[3] = &unk_1E8250418;
  v24[4] = buf;
  [v11 executeSelectSQL:@"SELECT ROWID FROM threads WHERE scope = :scope AND conversation = :conversation_id;" bindings:v26 errorHandler:v25 rowHandler:v24];

  if (*(*&buf[8] + 24))
  {
LABEL_5:
    v12 = [_EDThreadPersistence_PersistedThread alloc];
    v13 = [(_EDThreadPersistence_PersistedThread *)v12 initWithMessages:self threadDatabaseID:*(*&buf[8] + 24)];
    v14 = [(_EDThreadPersistence_PersistedThread *)v13 updateNewestReadAndDisplayMessage];
    v15 = *MEMORY[0x1E699A888];
    v29[0] = *MEMORY[0x1E699A880];
    v29[1] = v15;
    v16 = *MEMORY[0x1E699A898];
    v29[2] = *MEMORY[0x1E699A8A0];
    v29[3] = v16;
    v17 = *MEMORY[0x1E699A8E0];
    v29[4] = *MEMORY[0x1E699A8E8];
    v29[5] = v17;
    v29[6] = *MEMORY[0x1E699A878];
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:7];
    [v14 addObjectsFromArray:v18];

    if ([(_EDThreadPersistence_PersistedThread *)v13 addMailboxes])
    {
      [v14 addObject:*MEMORY[0x1E699A930]];
    }

    if ([(_EDThreadPersistence_PersistedThread *)v13 addSenders])
    {
      [v14 addObject:*MEMORY[0x1E699A990]];
    }

    if ([(_EDThreadPersistence_PersistedThread *)v13 addRecipientsForType:1])
    {
      [v14 addObject:*MEMORY[0x1E699A9C0]];
    }

    if ([(_EDThreadPersistence_PersistedThread *)v13 addRecipientsForType:2])
    {
      [v14 addObject:*MEMORY[0x1E699A840]];
    }
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(buf, 8);
  v19 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_newestUnreadWrappedMessagesWithNewestReadWrappedMessage:(id *)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(_EDThreadPersistence_ThreadMessages *)self wrappedMessages];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96___EDThreadPersistence_ThreadMessages__newestUnreadWrappedMessagesWithNewestReadWrappedMessage___block_invoke;
  v12[3] = &unk_1E8258B50;
  v7 = v5;
  v13 = v7;
  v8 = [(_EDThreadPersistence_ThreadMessages *)self _iterateNewestUnreadWrappedMessagesInWrappedMessages:v6 iteratorBlock:v12];

  if (a3)
  {
    v9 = v8;
    *a3 = v8;
  }

  v10 = v7;

  return v7;
}

- (id)_displayWrappedMessageWithNewestReadWrappedMessage:(id *)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__48;
  v17 = __Block_byref_object_dispose__48;
  v18 = 0;
  v6 = [(_EDThreadPersistence_ThreadMessages *)self wrappedMessages];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90___EDThreadPersistence_ThreadMessages__displayWrappedMessageWithNewestReadWrappedMessage___block_invoke;
  v12[3] = &unk_1E8258B78;
  v12[4] = &v13;
  v7 = [(_EDThreadPersistence_ThreadMessages *)self _iterateNewestUnreadWrappedMessagesInWrappedMessages:v6 iteratorBlock:v12];

  if (v14[5] || (objc_storeStrong(v14 + 5, v7), v14[5]))
  {
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"EDThreadPersistence_ThreadMessages.m" lineNumber:609 description:@"Unable to find display message"];

  if (a3)
  {
LABEL_4:
    v8 = v7;
    *a3 = v7;
  }

LABEL_5:
  v9 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v9;
}

- (id)_iterateNewestUnreadWrappedMessagesInWrappedMessages:(id)a3 iteratorBlock:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 message];
        v13 = [v12 flags];
        v14 = [v13 read];

        if (v14)
        {
          v8 = v11;
          goto LABEL_11;
        }

        v6[2](v6, v11);
      }

      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v15 = *MEMORY[0x1E69E9840];

  return v8;
}

@end