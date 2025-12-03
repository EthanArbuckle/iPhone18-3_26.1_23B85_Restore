@interface _EDThreadPersistence_ThreadMessages
- (BOOL)addThreadReplacingExisting:(BOOL)existing journaled:(BOOL)journaled;
- (EMThread)thread;
- (_EDThreadPersistence_ThreadMessages)initWithSQLHelper:(id)helper messagePersistence:(id)persistence threadScopeDatabaseID:(int64_t)d threadObjectID:(id)iD wrappedMessages:(id)messages;
- (id)_displayWrappedMessageWithNewestReadWrappedMessage:(id *)message;
- (id)_iterateNewestUnreadWrappedMessagesInWrappedMessages:(id)messages iteratorBlock:(id)block;
- (id)_newestUnreadWrappedMessagesWithNewestReadWrappedMessage:(id *)message;
- (id)_threadQuery;
- (id)debugDescription;
- (id)updateThreadTableWithJournaled:(BOOL)journaled;
- (void)_collectDebuggingInfo;
@end

@implementation _EDThreadPersistence_ThreadMessages

- (_EDThreadPersistence_ThreadMessages)initWithSQLHelper:(id)helper messagePersistence:(id)persistence threadScopeDatabaseID:(int64_t)d threadObjectID:(id)iD wrappedMessages:(id)messages
{
  helperCopy = helper;
  persistenceCopy = persistence;
  iDCopy = iD;
  messagesCopy = messages;
  v22.receiver = self;
  v22.super_class = _EDThreadPersistence_ThreadMessages;
  v17 = [(_EDThreadPersistence_ThreadMessages *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_sqlHelper, helper);
    objc_storeStrong(&v18->_messagePersistence, persistence);
    v18->_threadScopeDatabaseID = d;
    objc_storeStrong(&v18->_threadObjectID, iD);
    v19 = [messagesCopy copy];
    wrappedMessages = v18->_wrappedMessages;
    v18->_wrappedMessages = v19;
  }

  return v18;
}

- (id)debugDescription
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p>", objc_opt_class(), self];
  [array addObject:v4];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"thread scope DB ID: %lld", -[_EDThreadPersistence_ThreadMessages threadScopeDatabaseID](self, "threadScopeDatabaseID")];
  [array addObject:v5];

  v6 = MEMORY[0x1E696AEC0];
  threadObjectID = [(_EDThreadPersistence_ThreadMessages *)self threadObjectID];
  v8 = [v6 stringWithFormat:@"conversation ID: %lld", objc_msgSend(threadObjectID, "conversationID")];
  [array addObject:v8];

  wrappedMessages = [(_EDThreadPersistence_ThreadMessages *)self wrappedMessages];
  v10 = [wrappedMessages ef_map:&__block_literal_global_93];
  v11 = [v10 componentsJoinedByString:{@", "}];

  v12 = MEMORY[0x1E696AEC0];
  wrappedMessages2 = [(_EDThreadPersistence_ThreadMessages *)self wrappedMessages];
  v14 = [v12 stringWithFormat:@"wrapped messages: {%@}(count: %u)", v11, objc_msgSend(wrappedMessages2, "count")];
  [array addObject:v14];

  v15 = [array componentsJoinedByString:@" "];

  return v15;
}

- (EMThread)thread
{
  thread = self->_thread;
  if (!thread)
  {
    wrappedMessages = [(_EDThreadPersistence_ThreadMessages *)self wrappedMessages];
    v5 = [wrappedMessages ef_mapSelector:sel_message];

    v6 = [EDInMemoryThread alloc];
    _threadQuery = [(_EDThreadPersistence_ThreadMessages *)self _threadQuery];
    threadObjectID = [(_EDThreadPersistence_ThreadMessages *)self threadObjectID];
    threadScope = [threadObjectID threadScope];
    v10 = [(EDInMemoryThread *)v6 initWithMessages:v5 originatingQuery:_threadQuery threadScope:threadScope];

    thread = [(EDInMemoryThread *)v10 thread];
    v12 = self->_thread;
    self->_thread = thread;

    thread = self->_thread;
  }

  return thread;
}

- (id)_threadQuery
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E699ADA0];
  threadObjectID = [(_EDThreadPersistence_ThreadMessages *)self threadObjectID];
  threadScope = [threadObjectID threadScope];
  v5 = [v2 predicateForMessagesWithThreadScope:threadScope];

  v6 = [MEMORY[0x1E699ADA0] sortDescriptorForDateAscending:0];
  v7 = objc_alloc(MEMORY[0x1E699AE28]);
  v8 = objc_opt_class();
  v13[0] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v10 = [v7 initWithTargetClass:v8 predicate:v5 sortDescriptors:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)addThreadReplacingExisting:(BOOL)existing journaled:(BOOL)journaled
{
  journaledCopy = journaled;
  existingCopy = existing;
  v32 = *MEMORY[0x1E69E9840];
  v7 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    threadObjectID = [(_EDThreadPersistence_ThreadMessages *)self threadObjectID];
    conversationID = [threadObjectID conversationID];
    wrappedMessages = [(_EDThreadPersistence_ThreadMessages *)self wrappedMessages];
    *buf = 134218752;
    v25 = conversationID;
    v26 = 1024;
    v27 = [wrappedMessages count];
    v28 = 1024;
    v29 = journaledCopy;
    v30 = 1024;
    v31 = existingCopy;
    _os_log_debug_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEBUG, "Adding thread %lld with %u messages. Journaled: %{BOOL}d, replace: %{BOOL}d", buf, 0x1Eu);
  }

  v8 = @"INSERT OR IGNORE INTO threads( scope,   conversation,   newest_read_message,   newest_message,   display_message,   date,   display_date,   read_later_date,   read,   flagged,   has_red_flag,   has_orange_flag,   has_yellow_flag,   has_green_flag,   has_blue_flag,   has_purple_flag,   has_gray_flag,   draft,   replied,   forwarded,   redirected,   junk_level_set_by_user,   junk_level,   has_unflagged,   has_attachments,   count,   journaled,   is_icloud_cleanup) VALUES( :scope,   :conversation_id,   :newest_read_message,   :newest_message,   :display_message,   :date,   :display_date,   :read_later_date,   :read,   :flagged,   :has_Red_flag,   :has_Orange_flag,   :has_Yellow_flag,   :has_Green_flag,   :has_Blue_flag,   :has_Purple_flag,   :has_Gray_flag,   :draft,   :replied,   :forwarded,   :redirected,   :junk_level_set_by_user,   :junk_level,   :has_unflagged,   :has_attachments,   :count,   :journaled,   :is_icloud_cleanup);";
  if (existingCopy)
  {
    v8 = @"INSERT OR REPLACE INTO threads( scope,   conversation,   newest_read_message,   newest_message,   display_message,   date,   display_date,   read_later_date,   read,   flagged,   has_red_flag,   has_orange_flag,   has_yellow_flag,   has_green_flag,   has_blue_flag,   has_purple_flag,   has_gray_flag,   draft,   replied,   forwarded,   redirected,   junk_level_set_by_user,   junk_level,   has_unflagged,   has_attachments,   count,   journaled,   is_icloud_cleanup) VALUES( :scope,   :conversation_id,   :newest_read_message,   :newest_message,   :display_message,   :date,   :display_date,   :read_later_date,   :read,   :flagged,   :has_Red_flag,   :has_Orange_flag,   :has_Yellow_flag,   :has_Green_flag,   :has_Blue_flag,   :has_Purple_flag,   :has_Gray_flag,   :draft,   :replied,   :forwarded,   :redirected,   :junk_level_set_by_user,   :junk_level,   :has_unflagged,   :has_attachments,   :count,   :journaled,   :is_icloud_cleanup);";
  }

  v9 = v8;
  sqlHelper = [(_EDThreadPersistence_ThreadMessages *)self sqlHelper];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __76___EDThreadPersistence_ThreadMessages_addThreadReplacingExisting_journaled___block_invoke;
  v22[3] = &unk_1E8258A90;
  v22[4] = self;
  v23 = journaledCopy;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __76___EDThreadPersistence_ThreadMessages_addThreadReplacingExisting_journaled___block_invoke_2;
  v21[3] = &unk_1E8253788;
  v21[4] = self;
  v11 = [sqlHelper executeUpdateSQL:v9 bindings:v22 errorHandler:v21];

  if (v11 > 1)
  {
    v12 = [_EDThreadPersistence_PersistedThread alloc];
    sqlHelper2 = [(_EDThreadPersistence_ThreadMessages *)self sqlHelper];
    connection = [sqlHelper2 connection];
    v15 = -[_EDThreadPersistence_PersistedThread initWithMessages:threadDatabaseID:](v12, "initWithMessages:threadDatabaseID:", self, [connection lastInsertedDatabaseID]);

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
  OUTLINED_FUNCTION_6_4(self);
  OUTLINED_FUNCTION_10_2(&dword_1C61EF000, v2, v3, "messages — count: %d", v4, v5, v6, v7, 0);
  v8 = *MEMORY[0x1E69E9840];
}

- (id)updateThreadTableWithJournaled:(BOOL)journaled
{
  journaledCopy = journaled;
  v32 = *MEMORY[0x1E69E9840];
  v5 = +[EDThreadPersistence log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    threadObjectID = [(_EDThreadPersistence_ThreadMessages *)self threadObjectID];
    conversationID = [threadObjectID conversationID];
    wrappedMessages = [(_EDThreadPersistence_ThreadMessages *)self wrappedMessages];
    *buf = 134218496;
    *&buf[4] = conversationID;
    *&buf[12] = 1024;
    *&buf[14] = [wrappedMessages count];
    *&buf[18] = 1024;
    *&buf[20] = journaledCopy;
    _os_log_debug_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEBUG, "Updating thread %lld with %u messages. Journaled: %{BOOL}d", buf, 0x18u);
  }

  thread = [(_EDThreadPersistence_ThreadMessages *)self thread];
  objectID = [thread objectID];
  conversationID2 = [objectID conversationID];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  sqlHelper = [(_EDThreadPersistence_ThreadMessages *)self sqlHelper];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __70___EDThreadPersistence_ThreadMessages_updateThreadTableWithJournaled___block_invoke;
  v27[3] = &unk_1E8258B00;
  v27[4] = self;
  v27[5] = conversationID2;
  v28 = journaledCopy;
  v10 = [sqlHelper executeUpsertSQL:@"INSERT INTO threads( scope bindings:conversation errorHandler:{date, display_date, read_later_date, count, journaled, has_unflagged, has_attachments, read, flagged, draft, replied, forwarded, redirected, junk_level_set_by_user, junk_level, has_red_flag, has_orange_flag, has_yellow_flag, has_green_flag, has_blue_flag, has_purple_flag, has_gray_flag, is_icloud_cleanup) VALUES( :scope, :conversation_id, :date, :display_date, :read_later_date, (SELECT count(DISTINCT ifnull(message_id, ROWID || '-fake-message-id')) FROM temp_thread_scope_message WHERE conversation_id = :conversation_id), :journaled, :has_unflagged, :has_attachments, :read, :flagged, :draft, :replied, :forwarded, :redirected, :junk_level_set_by_user, :junk_level, :has_Red_flag, :has_Orange_flag, :has_Yellow_flag, :has_Green_flag, :has_Blue_flag, :has_Purple_flag, :has_Gray_flag, :is_icloud_cleanup) ON CONFLICT (scope, conversation) DO UPDATE SET   date = max(date, excluded.date), display_date = max(display_date, excluded.display_date), read_later_date = max(read_later_date, excluded.read_later_date), count = excluded.count, journaled = journaled OR excluded.journaled, has_attachments = has_attachments OR excluded.has_attachments, has_attachments = has_attachments OR excluded.has_attachments, read = read AND excluded.read, flagged = flagged OR excluded.flagged, draft = draft OR excluded.draft, replied = replied OR excluded.replied, forwarded = forwarded OR excluded.forwarded, redirected = redirected OR excluded.redirected, junk_level_set_by_user = junk_level_set_by_user OR excluded.junk_level_set_by_user, junk_level = min(junk_level, excluded.junk_level), has_red_flag = has_red_flag OR excluded.has_red_flag, has_orange_flag = has_orange_flag OR excluded.has_orange_flag, has_yellow_flag = has_yellow_flag OR excluded.has_yellow_flag, has_green_flag = has_green_flag OR excluded.has_green_flag, has_blue_flag = has_blue_flag OR excluded.has_blue_flag, has_purple_flag = has_purple_flag OR excluded.has_purple_flag, has_gray_flag = has_gray_flag OR excluded.has_gray_flag, is_icloud_cleanup = is_icloud_cleanup OR excluded.is_icloud_cleanup WHERE count != excluded.count;", v27, &__block_literal_global_164_0}];

  v31 = v10;
  if (*(*&buf[8] + 24))
  {
    goto LABEL_5;
  }

  sqlHelper2 = [(_EDThreadPersistence_ThreadMessages *)self sqlHelper];
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
  [sqlHelper2 executeSelectSQL:@"SELECT ROWID FROM threads WHERE scope = :scope AND conversation = :conversation_id;" bindings:v26 errorHandler:v25 rowHandler:v24];

  if (*(*&buf[8] + 24))
  {
LABEL_5:
    v12 = [_EDThreadPersistence_PersistedThread alloc];
    v13 = [(_EDThreadPersistence_PersistedThread *)v12 initWithMessages:self threadDatabaseID:*(*&buf[8] + 24)];
    updateNewestReadAndDisplayMessage = [(_EDThreadPersistence_PersistedThread *)v13 updateNewestReadAndDisplayMessage];
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
    [updateNewestReadAndDisplayMessage addObjectsFromArray:v18];

    if ([(_EDThreadPersistence_PersistedThread *)v13 addMailboxes])
    {
      [updateNewestReadAndDisplayMessage addObject:*MEMORY[0x1E699A930]];
    }

    if ([(_EDThreadPersistence_PersistedThread *)v13 addSenders])
    {
      [updateNewestReadAndDisplayMessage addObject:*MEMORY[0x1E699A990]];
    }

    if ([(_EDThreadPersistence_PersistedThread *)v13 addRecipientsForType:1])
    {
      [updateNewestReadAndDisplayMessage addObject:*MEMORY[0x1E699A9C0]];
    }

    if ([(_EDThreadPersistence_PersistedThread *)v13 addRecipientsForType:2])
    {
      [updateNewestReadAndDisplayMessage addObject:*MEMORY[0x1E699A840]];
    }
  }

  else
  {
    updateNewestReadAndDisplayMessage = 0;
  }

  _Block_object_dispose(buf, 8);
  v19 = *MEMORY[0x1E69E9840];

  return updateNewestReadAndDisplayMessage;
}

- (id)_newestUnreadWrappedMessagesWithNewestReadWrappedMessage:(id *)message
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  wrappedMessages = [(_EDThreadPersistence_ThreadMessages *)self wrappedMessages];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96___EDThreadPersistence_ThreadMessages__newestUnreadWrappedMessagesWithNewestReadWrappedMessage___block_invoke;
  v12[3] = &unk_1E8258B50;
  v7 = v5;
  v13 = v7;
  v8 = [(_EDThreadPersistence_ThreadMessages *)self _iterateNewestUnreadWrappedMessagesInWrappedMessages:wrappedMessages iteratorBlock:v12];

  if (message)
  {
    v9 = v8;
    *message = v8;
  }

  v10 = v7;

  return v7;
}

- (id)_displayWrappedMessageWithNewestReadWrappedMessage:(id *)message
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__48;
  v17 = __Block_byref_object_dispose__48;
  v18 = 0;
  wrappedMessages = [(_EDThreadPersistence_ThreadMessages *)self wrappedMessages];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90___EDThreadPersistence_ThreadMessages__displayWrappedMessageWithNewestReadWrappedMessage___block_invoke;
  v12[3] = &unk_1E8258B78;
  v12[4] = &v13;
  v7 = [(_EDThreadPersistence_ThreadMessages *)self _iterateNewestUnreadWrappedMessagesInWrappedMessages:wrappedMessages iteratorBlock:v12];

  if (v14[5] || (objc_storeStrong(v14 + 5, v7), v14[5]))
  {
    if (!message)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"EDThreadPersistence_ThreadMessages.m" lineNumber:609 description:@"Unable to find display message"];

  if (message)
  {
LABEL_4:
    v8 = v7;
    *message = v7;
  }

LABEL_5:
  v9 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v9;
}

- (id)_iterateNewestUnreadWrappedMessagesInWrappedMessages:(id)messages iteratorBlock:(id)block
{
  v22 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  blockCopy = block;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = messagesCopy;
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
        message = [v11 message];
        flags = [message flags];
        read = [flags read];

        if (read)
        {
          v8 = v11;
          goto LABEL_11;
        }

        blockCopy[2](blockCopy, v11);
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