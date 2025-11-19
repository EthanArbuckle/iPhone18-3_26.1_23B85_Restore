@interface _EDThreadPersistence_PersistedThread
- (BOOL)_dropTemporaryView;
- (BOOL)_ensureTempMessagesView;
- (BOOL)addMailboxes;
- (BOOL)addRecipients:(id)a3 ofType:(unint64_t)a4;
- (BOOL)addRecipientsForType:(unint64_t)a3;
- (BOOL)addSenders;
- (BOOL)addSenders:(id)a3;
- (BOOL)recipientDatabaseIDsAndDatesForRecipientType:(unint64_t)a3 recipients:(id *)a4;
- (BOOL)senderDatabaseIDsAndDates:(id *)a3;
- (BOOL)setPriorityForDisplayMessageSender;
- (BOOL)updateDisplayMessageWithUnreadWrappedMessages:(id)a3;
- (BOOL)updateNewestReadMessage:(id)a3;
- (EDMessagePersistence)messagePersistence;
- (EMThread)thread;
- (EMThreadObjectID)threadObjectID;
- (NSArray)wrappedMessages;
- (_EDThreadPersistence_PersistedThread)initWithMessages:(id)a3 threadDatabaseID:(int64_t)a4;
- (id)_mailboxDatabaseIDsForWrappedMessages;
- (id)debugDescription;
- (id)updateNewestReadAndDisplayMessage;
- (int64_t)threadScopeDatabaseID;
- (unint64_t)currentSenderCounts;
- (void)_ensureTempMessagesView;
- (void)addKeyPathsForDisplayMessageChangeToKeyPaths:(id)a3;
@end

@implementation _EDThreadPersistence_PersistedThread

- (_EDThreadPersistence_PersistedThread)initWithMessages:(id)a3 threadDatabaseID:(int64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = _EDThreadPersistence_PersistedThread;
  v8 = [(_EDThreadPersistence_PersistedThread *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_messages, a3);
    v9->_threadDatabaseID = a4;
    v10 = [v7 sqlHelper];
    sqlHelper = v9->_sqlHelper;
    v9->_sqlHelper = v10;
  }

  return v9;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p>", objc_opt_class(), self];
  [v3 addObject:v4];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"thread DB ID: %lld", -[_EDThreadPersistence_PersistedThread threadDatabaseID](self, "threadDatabaseID")];
  [v3 addObject:v5];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [(_EDThreadPersistence_PersistedThread *)self messages];
  v8 = [v6 stringWithFormat:@"thread scope DB ID: %lld", objc_msgSend(v7, "threadScopeDatabaseID")];
  [v3 addObject:v8];

  v9 = MEMORY[0x1E696AEC0];
  v10 = [(_EDThreadPersistence_PersistedThread *)self threadObjectID];
  v11 = [v9 stringWithFormat:@"conversation ID: %lld", objc_msgSend(v10, "conversationID")];
  [v3 addObject:v11];

  v12 = [(_EDThreadPersistence_PersistedThread *)self messages];
  v13 = [v12 wrappedMessages];
  v14 = [v13 ef_map:&__block_literal_global_232];
  v15 = [v14 componentsJoinedByString:{@", "}];

  v16 = MEMORY[0x1E696AEC0];
  v17 = [(_EDThreadPersistence_PersistedThread *)self messages];
  v18 = [v17 wrappedMessages];
  v19 = [v16 stringWithFormat:@"%u wrapped messages: {%@}", objc_msgSend(v18, "count"), v15];
  [v3 addObject:v19];

  v20 = [v3 componentsJoinedByString:@" "];

  return v20;
}

- (EDMessagePersistence)messagePersistence
{
  v2 = [(_EDThreadPersistence_PersistedThread *)self messages];
  v3 = [v2 messagePersistence];

  return v3;
}

- (int64_t)threadScopeDatabaseID
{
  v2 = [(_EDThreadPersistence_PersistedThread *)self messages];
  v3 = [v2 threadScopeDatabaseID];

  return v3;
}

- (EMThreadObjectID)threadObjectID
{
  v2 = [(_EDThreadPersistence_PersistedThread *)self messages];
  v3 = [v2 threadObjectID];

  return v3;
}

- (NSArray)wrappedMessages
{
  v2 = [(_EDThreadPersistence_PersistedThread *)self messages];
  v3 = [v2 wrappedMessages];

  return v3;
}

- (EMThread)thread
{
  v2 = [(_EDThreadPersistence_PersistedThread *)self messages];
  v3 = [v2 thread];

  return v3;
}

- (id)updateNewestReadAndDisplayMessage
{
  v3 = [(_EDThreadPersistence_PersistedThread *)self messages];
  v8 = 0;
  v4 = [v3 _newestUnreadWrappedMessagesWithNewestReadWrappedMessage:&v8];
  v5 = v8;

  v6 = [MEMORY[0x1E695DF70] array];
  [(_EDThreadPersistence_PersistedThread *)self updateNewestReadMessage:v5];
  if ([(_EDThreadPersistence_PersistedThread *)self updateDisplayMessageWithUnreadWrappedMessages:v4])
  {
    [(_EDThreadPersistence_PersistedThread *)self addKeyPathsForDisplayMessageChangeToKeyPaths:v6];
    if ([(_EDThreadPersistence_PersistedThread *)self setPriorityForDisplayMessageSender])
    {
      [v6 ef_addObjectIfAbsent:*MEMORY[0x1E699A990]];
    }
  }

  return v6;
}

- (BOOL)updateNewestReadMessage:(id)a3
{
  v4 = a3;
  v5 = [(_EDThreadPersistence_PersistedThread *)self _ensureTempMessagesView];
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = [(_EDThreadPersistence_PersistedThread *)self sqlHelper];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64___EDThreadPersistence_PersistedThread_updateNewestReadMessage___block_invoke;
    v11[3] = &unk_1E8250CF8;
    v11[4] = self;
    v12 = v4;
    v8 = [v7 executeUpdateSQL:@"UPDATE OR IGNORE threads SET  newest_read_message = :newest_read_message WHERE   rowid = :thread AND   :date > (SELECT date_received FROM temp_persisted_messages WHERE temp_persisted_messages.ROWID = threads.newest_read_message);" bindings:v11 errorHandler:&__block_literal_global_243];

    v9 = v8 == 2;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)updateDisplayMessageWithUnreadWrappedMessages:(id)a3
{
  v4 = a3;
  if ([(_EDThreadPersistence_PersistedThread *)self _ensureTempMessagesView])
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__48;
    v33 = __Block_byref_object_dispose__48;
    v34 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__48;
    v27 = __Block_byref_object_dispose__48;
    v28 = 0;
    v5 = [(_EDThreadPersistence_PersistedThread *)self sqlHelper];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __86___EDThreadPersistence_PersistedThread_updateDisplayMessageWithUnreadWrappedMessages___block_invoke;
    v22[3] = &unk_1E8250D20;
    v22[4] = self;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __86___EDThreadPersistence_PersistedThread_updateDisplayMessageWithUnreadWrappedMessages___block_invoke_249;
    v21[3] = &unk_1E8250468;
    v21[4] = &v29;
    v21[5] = &v23;
    v6 = [v5 executeSelectSQL:@"SELECT   (SELECT date_received FROM temp_persisted_messages    WHERE temp_persisted_messages.ROWID = threads.newest_read_message) bindings:(SELECT date_received FROM temp_persisted_messages    WHERE temp_persisted_messages.ROWID = threads.display_message) FROM threads WHERE threads.ROWID = :thread;" errorHandler:v22 rowHandler:{&__block_literal_global_248, v21}];

    if ((v6 & 1) == 0)
    {
      v11 = 0;
LABEL_13:
      _Block_object_dispose(&v23, 8);

      _Block_object_dispose(&v29, 8);
      goto LABEL_14;
    }

    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = *MEMORY[0x1E699A728];
    v7 = v20;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __86___EDThreadPersistence_PersistedThread_updateDisplayMessageWithUnreadWrappedMessages___block_invoke_2_250;
    v16[3] = &unk_1E8258BA0;
    v16[4] = &v29;
    v16[5] = &v23;
    v16[6] = &v17;
    [v4 enumerateObjectsWithOptions:2 usingBlock:v16];
    v8 = v18[3];
    if (v8 == v7 || !v8)
    {
      if (![v30[5] ef_isLaterThanDate:v24[5]])
      {
        v11 = 0;
        goto LABEL_12;
      }

      v9 = [(_EDThreadPersistence_PersistedThread *)self sqlHelper];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __86___EDThreadPersistence_PersistedThread_updateDisplayMessageWithUnreadWrappedMessages___block_invoke_261;
      v14[3] = &unk_1E8250D20;
      v14[4] = self;
      v10 = [v9 executeUpdateSQL:@"UPDATE OR IGNORE threads SET   display_message = threads.newest_read_message WHERE threads.ROWID = :thread ;" bindings:v14 errorHandler:&__block_literal_global_264];
    }

    else
    {
      v9 = [(_EDThreadPersistence_PersistedThread *)self sqlHelper];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __86___EDThreadPersistence_PersistedThread_updateDisplayMessageWithUnreadWrappedMessages___block_invoke_3;
      v15[3] = &unk_1E8251888;
      v15[4] = self;
      v15[5] = &v17;
      v10 = [v9 executeUpdateSQL:@"UPDATE OR IGNORE threads SET   display_message = :display_message WHERE ROWID = :thread ;" bindings:v15 errorHandler:&__block_literal_global_256];
    }

    v12 = v10;

    v11 = v12 == 2;
LABEL_12:
    _Block_object_dispose(&v17, 8);
    goto LABEL_13;
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (void)addKeyPathsForDisplayMessageChangeToKeyPaths:(id)a3
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

- (BOOL)addMailboxes
{
  v24 = *MEMORY[0x1E69E9840];
  [(_EDThreadPersistence_PersistedThread *)self _mailboxDatabaseIDsForWrappedMessages];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v3 = v19 = 0u;
  obj = v3;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
  v15 = v4 != 0;
  if (v4)
  {
    v5 = 0;
    v6 = *v19;
    v7 = *MEMORY[0x1E699A728];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [(_EDThreadPersistence_PersistedThread *)self sqlHelper];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __52___EDThreadPersistence_PersistedThread_addMailboxes__block_invoke;
        v17[3] = &unk_1E8250CF8;
        v17[4] = self;
        v17[5] = v9;
        v11 = [v10 executeUpsertSQL:@"INSERT OR IGNORE INTO thread_mailboxes (thread bindings:mailbox) VALUES (:thread errorHandler:{:mailbox);", v17, &__block_literal_global_272}];

        if (v11)
        {
          v12 = v11 == v7;
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          ++v5;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);

    if (v5 < 1)
    {
      v15 = 0;
      goto LABEL_18;
    }

    v3 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(_EDThreadPersistence_PersistedThread *)v22 addMailboxes];
    }
  }

LABEL_18:
  v13 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)_mailboxDatabaseIDsForWrappedMessages
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(_EDThreadPersistence_PersistedThread *)self wrappedMessages];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v16 + 1) + 8 * i) message];
        v9 = [v8 mailboxObjectIDs];
        [v3 addObjectsFromArray:v9];
      }

      v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v10 = [(_EDThreadPersistence_PersistedThread *)self messagePersistence];
  v11 = [v10 mailboxPersistence];
  v12 = [v11 mailboxDatabaseIDsForMailboxObjectIDs:v3 createIfNecessary:0];
  v13 = [v12 allObjects];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)addSenders
{
  v3 = [(_EDThreadPersistence_PersistedThread *)self currentSenderCounts];
  v8 = 0;
  v4 = [(_EDThreadPersistence_PersistedThread *)self senderDatabaseIDsAndDates:&v8];
  v5 = v8;
  v6 = v4 && -[_EDThreadPersistence_PersistedThread addSenders:](self, "addSenders:", v5) && (-[_EDThreadPersistence_PersistedThread setPriorityForDisplayMessageSender](self, "setPriorityForDisplayMessageSender") || v3 != [v5 count]);

  return v6;
}

- (unint64_t)currentSenderCounts
{
  v2 = self;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = [(_EDThreadPersistence_PersistedThread *)self sqlHelper];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59___EDThreadPersistence_PersistedThread_currentSenderCounts__block_invoke;
  v7[3] = &unk_1E8250D20;
  v7[4] = v2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59___EDThreadPersistence_PersistedThread_currentSenderCounts__block_invoke_279;
  v6[3] = &unk_1E8250418;
  v6[4] = &v8;
  LOBYTE(v2) = [v3 executeSelectSQL:@"SELECT count(address) as count FROM thread_senders WHERE thread == :thread;" bindings:v7 errorHandler:&__block_literal_global_278 rowHandler:v6];

  if (v2)
  {
    v4 = v9[3];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v4;
}

- (BOOL)senderDatabaseIDsAndDates:(id *)a3
{
  v5 = [(_EDThreadPersistence_PersistedThread *)self _ensureTempMessagesView];
  v6 = [MEMORY[0x1E695DF90] dictionary];
  if (v5)
  {
    v7 = [(_EDThreadPersistence_PersistedThread *)self sqlHelper];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __66___EDThreadPersistence_PersistedThread_senderDatabaseIDsAndDates___block_invoke_288;
    v13[3] = &unk_1E8250300;
    v8 = v6;
    v14 = v8;
    v9 = [v7 executeSelectSQL:@"SELECT temp_persisted_messages.sender bindings:temp_persisted_messages.date_received FROM temp_persisted_messages;" errorHandler:&__block_literal_global_285 rowHandler:{&__block_literal_global_287, v13}];

    v10 = v9 ^ 1;
    if (!a3)
    {
      v10 = 1;
    }

    if ((v10 & 1) == 0)
    {
      v11 = v8;
      *a3 = v8;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)addSenders:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51___EDThreadPersistence_PersistedThread_addSenders___block_invoke;
  v8[3] = &unk_1E8258BC8;
  v8[4] = self;
  v9 = @"INSERT INTO thread_senders( thread,   address,   date) VALUES( :thread,   :address,   :date) ON CONFLICT (thread, address) DO UPDATE SET   date = max(date, excluded.date) ;";
  v10 = &v11;
  [a3 enumerateKeysAndObjectsUsingBlock:v8];
  v4 = *(v12 + 6);
  if (v4 >= 1)
  {
    v5 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(_EDThreadPersistence_PersistedThread *)v15 addSenders:[(_EDThreadPersistence_PersistedThread *)self threadDatabaseID]];
    }
  }

  _Block_object_dispose(&v11, 8);
  v6 = *MEMORY[0x1E69E9840];
  return v4 > 0;
}

- (BOOL)setPriorityForDisplayMessageSender
{
  if (![(_EDThreadPersistence_PersistedThread *)self _ensureTempMessagesView])
  {
    return 0;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v3 = *MEMORY[0x1E699A728];
  v26 = *MEMORY[0x1E699A728];
  v4 = [(_EDThreadPersistence_PersistedThread *)self sqlHelper];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __74___EDThreadPersistence_PersistedThread_setPriorityForDisplayMessageSender__block_invoke;
  v22[3] = &unk_1E8250D20;
  v22[4] = self;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __74___EDThreadPersistence_PersistedThread_setPriorityForDisplayMessageSender__block_invoke_309;
  v21[3] = &unk_1E8250418;
  v21[4] = &v23;
  v5 = [v4 executeSelectSQL:@"SELECT address FROM thread_senders WHERE thread == :thread AND priority == 1;" bindings:v22 errorHandler:&__block_literal_global_308 rowHandler:v21];

  if (v5)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = v3;
    v6 = [(_EDThreadPersistence_PersistedThread *)self sqlHelper];
    v15[4] = &v17;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __74___EDThreadPersistence_PersistedThread_setPriorityForDisplayMessageSender__block_invoke_2_313;
    v16[3] = &unk_1E8250D20;
    v16[4] = self;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __74___EDThreadPersistence_PersistedThread_setPriorityForDisplayMessageSender__block_invoke_316;
    v15[3] = &unk_1E8250418;
    v7 = [v6 executeSelectSQL:@"SELECT sender FROM temp_persisted_messages WHERE ROWID IN (SELECT display_message FROM threads WHERE ROWID == :thread);" bindings:v16 errorHandler:&__block_literal_global_315 rowHandler:v15];

    if ((v7 & 1) != 0 && v24[3] != v18[3])
    {
      v9 = [(_EDThreadPersistence_PersistedThread *)self sqlHelper];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __74___EDThreadPersistence_PersistedThread_setPriorityForDisplayMessageSender__block_invoke_2_320;
      v14[3] = &unk_1E8250D20;
      v14[4] = self;
      v10 = [v9 executeUpdateSQL:@"UPDATE thread_senders SET priority = 0 WHERE thread == :thread AND priority == 1;" bindings:v14 errorHandler:&__block_literal_global_323];

      if (v10)
      {
        v11 = [(_EDThreadPersistence_PersistedThread *)self sqlHelper];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __74___EDThreadPersistence_PersistedThread_setPriorityForDisplayMessageSender__block_invoke_327;
        v13[3] = &unk_1E8251888;
        v13[4] = self;
        v13[5] = &v17;
        [v11 executeUpdateSQL:@"UPDATE thread_senders SET priority = 1 WHERE thread == :thread AND address == :address;" bindings:v13 errorHandler:&__block_literal_global_330];
      }

      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v23, 8);
  return v8;
}

- (BOOL)addRecipientsForType:(unint64_t)a3
{
  v9 = 0;
  v5 = [(_EDThreadPersistence_PersistedThread *)self recipientDatabaseIDsAndDatesForRecipientType:a3 recipients:&v9];
  v6 = v9;
  v7 = v5 && [(_EDThreadPersistence_PersistedThread *)self addRecipients:v6 ofType:a3];

  return v7;
}

- (BOOL)recipientDatabaseIDsAndDatesForRecipientType:(unint64_t)a3 recipients:(id *)a4
{
  v7 = [(_EDThreadPersistence_PersistedThread *)self _ensureTempMessagesView];
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v7)
  {
    v9 = [(_EDThreadPersistence_PersistedThread *)self sqlHelper];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __96___EDThreadPersistence_PersistedThread_recipientDatabaseIDsAndDatesForRecipientType_recipients___block_invoke;
    v17[3] = &__block_descriptor_40_e29_v16__0__NSMutableDictionary_8l;
    v17[4] = a3;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __96___EDThreadPersistence_PersistedThread_recipientDatabaseIDsAndDatesForRecipientType_recipients___block_invoke_340;
    v15[3] = &unk_1E8250300;
    v10 = v8;
    v16 = v10;
    v11 = [v9 executeSelectSQL:@"SELECT recipients.address bindings:temp_persisted_messages.date_received FROM recipients JOIN temp_persisted_messages ON recipients.message = temp_persisted_messages.ROWID WHERE recipients.type = :recipients_type;" errorHandler:v17 rowHandler:{&__block_literal_global_339, v15}];

    v12 = v11 ^ 1;
    if (!a4)
    {
      v12 = 1;
    }

    if ((v12 & 1) == 0)
    {
      v13 = v10;
      *a4 = v10;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)addRecipients:(id)a3 ofType:(unint64_t)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 count])
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61___EDThreadPersistence_PersistedThread_addRecipients_ofType___block_invoke;
    v14[3] = &unk_1E8258C38;
    v14[5] = &v15;
    v14[6] = a4;
    v14[4] = self;
    [v6 enumerateKeysAndObjectsUsingBlock:v14];
    v7 = *(v16 + 6);
    v8 = v7 > 0;
    if (v7 >= 1)
    {
      v9 = +[EDThreadPersistence log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(v16 + 6);
        v13 = [(_EDThreadPersistence_PersistedThread *)self threadDatabaseID];
        *buf = 67109632;
        v20 = v12;
        v21 = 1024;
        v22 = a4;
        v23 = 2048;
        v24 = v13;
        _os_log_debug_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEBUG, "Added/updated %u type %u recipient(s) for thread DB ID %lld.", buf, 0x18u);
      }
    }

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)_ensureTempMessagesView
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = 1;
  if (!self->_didCreateTempMessagesView)
  {
    self->_didCreateTempMessagesView = 1;
    v4 = objc_autoreleasePoolPush();
    if (![(_EDThreadPersistence_PersistedThread *)self _dropTemporaryView])
    {
      v2 = 0;
LABEL_24:
      objc_autoreleasePoolPop(v4);
      goto LABEL_25;
    }

    v5 = [MEMORY[0x1E695DF70] array];
    v6 = [(_EDThreadPersistence_PersistedThread *)self sqlHelper];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __63___EDThreadPersistence_PersistedThread__ensureTempMessagesView__block_invoke;
    v26[3] = &unk_1E8250D20;
    v26[4] = self;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __63___EDThreadPersistence_PersistedThread__ensureTempMessagesView__block_invoke_357;
    v24[3] = &unk_1E8250300;
    v7 = v5;
    v25 = v7;
    v8 = [v6 executeSelectSQL:@"SELECT ROWID FROM temp_thread_scope_message WHERE (conversation_id = :conversation_id)" bindings:v26 errorHandler:&__block_literal_global_356 rowHandler:v24];

    if ([v7 count])
    {
      v9 = [v7 componentsJoinedByString:{@", "}];
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE TEMP VIEW temp_persisted_messages AS SELECT * FROM messages WHERE ROWID IN (%@)", v9];;
      if (v8 && (-[_EDThreadPersistence_PersistedThread sqlHelper](self, "sqlHelper"), v11 = objc_claimAutoreleasedReturnValue(), [v11 connection], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "executeStatementString:errorMessage:", v10, @"CREATE TEMP VIEW"), v12, v11, (v13 & 1) != 0))
      {
        v2 = 1;
      }

      else
      {
        v14 = +[EDThreadPersistence log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          [_EDThreadPersistence_PersistedThread _ensureTempMessagesView];
        }

        v2 = 0;
      }

      v15 = +[EDThreadPersistence log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v22 = [v7 count];
        v23 = [(_EDThreadPersistence_PersistedThread *)self threadDatabaseID];
        *buf = 67109634;
        v28 = v22;
        v29 = 2114;
        v30 = v9;
        v31 = 2048;
        v32 = v23;
        _os_log_debug_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEBUG, "Found %u rows {%{public}@} for thread DB ID %lld.", buf, 0x1Cu);
      }
    }

    else
    {
      v16 = +[EDThreadPersistence log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [(_EDThreadPersistence_PersistedThread *)buf _ensureTempMessagesView];
      }

      if (v8)
      {
        v17 = [(_EDThreadPersistence_PersistedThread *)self sqlHelper];
        v18 = [v17 connection];
        v19 = [v18 executeStatementString:@"CREATE TEMP VIEW temp_persisted_messages AS SELECT * FROM messages LIMIT 0;" errorMessage:@"CREATE TEMP VIEW"];

        if (v19)
        {
          v2 = 1;
LABEL_23:

          goto LABEL_24;
        }
      }

      v9 = +[EDThreadPersistence log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [_EDThreadPersistence_PersistedThread _ensureTempMessagesView];
      }

      v2 = 0;
    }

    goto LABEL_23;
  }

LABEL_25:
  v20 = *MEMORY[0x1E69E9840];
  return v2;
}

- (BOOL)_dropTemporaryView
{
  v2 = [(_EDThreadPersistence_PersistedThread *)self sqlHelper];
  v3 = [v2 connection];
  v4 = [v3 executeStatementString:@"DROP VIEW IF EXISTS temp_persisted_messages;" errorMessage:@"DROP TEMP VIEW"];

  if ((v4 & 1) == 0)
  {
    v5 = +[EDThreadPersistence log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [_EDThreadPersistence_PersistedThread _dropTemporaryView];
    }
  }

  return v4;
}

- (void)_ensureTempMessagesView
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  OUTLINED_FUNCTION_5_1(&dword_1C61EF000, a2, a3, "Found no rows for thread DB ID %lld.", a1);
}

@end