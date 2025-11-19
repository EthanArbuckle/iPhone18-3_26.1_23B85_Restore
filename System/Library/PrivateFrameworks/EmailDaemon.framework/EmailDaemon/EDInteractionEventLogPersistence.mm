@interface EDInteractionEventLogPersistence
+ (OS_os_log)log;
- (EDInteractionEventLogPersistence)initWithDatabase:(id)a3;
- (id)_partialEventForMessage:(id)a3;
- (id)recentRecipients;
- (void)_asyncPersistEvent:(id)a3;
- (void)persistEvent:(id)a3;
- (void)persistEvent:(id)a3 dataFromMessage:(id)a4;
- (void)persistEvent:(id)a3 dataFromMessage:(id)a4 account:(id)a5;
- (void)persistEvent:(id)a3 date:(id)a4 conversationID:(int64_t)a5 data:(id)a6;
- (void)persistEvent:(id)a3 date:(id)a4 message:(id)a5 data:(id)a6;
- (void)persistEvent:(id)a3 date:(id)a4 message:(id)a5 mailbox:(id)a6;
- (void)persistEvent:(id)a3 date:(id)a4 message:(id)a5 mailboxType:(int64_t)a6;
@end

@implementation EDInteractionEventLogPersistence

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__EDInteractionEventLogPersistence_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_46 != -1)
  {
    dispatch_once(&log_onceToken_46, block);
  }

  v2 = log_log_46;

  return v2;
}

void __39__EDInteractionEventLogPersistence_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_46;
  log_log_46 = v1;
}

- (EDInteractionEventLogPersistence)initWithDatabase:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = EDInteractionEventLogPersistence;
  v6 = [(EDInteractionEventLogPersistence *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_BACKGROUND, 0);

    v10 = dispatch_queue_create("com.apple.email.EDDatabaseInteractionEventLog.writeQueue", v9);
    writeQueue = v7->_writeQueue;
    v7->_writeQueue = v10;
  }

  return v7;
}

- (void)persistEvent:(id)a3 date:(id)a4 message:(id)a5 data:(id)a6
{
  v13 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(EDInteractionEventLogPersistence *)self _partialEventForMessage:a5];
  [v12 setName:v13];
  [v12 setDate:v10];
  [v12 setData:v11];
  [(EDInteractionEventLogPersistence *)self _asyncPersistEvent:v12];
}

- (void)persistEvent:(id)a3 date:(id)a4 conversationID:(int64_t)a5 data:(id)a6
{
  v13 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(EDInteractionEventLogPersistence *)self _partialEventForMessage:0];
  [v12 setConversationID:a5];
  [v12 setName:v13];
  [v12 setDate:v10];
  [v12 setData:v11];
  [(EDInteractionEventLogPersistence *)self _asyncPersistEvent:v12];
}

- (void)persistEvent:(id)a3 dataFromMessage:(id)a4
{
  v7 = a3;
  v6 = [(EDInteractionEventLogPersistence *)self _partialEventForMessage:a4];
  [v6 setName:v7];
  [(EDInteractionEventLogPersistence *)self _asyncPersistEvent:v6];
}

- (void)persistEvent:(id)a3 dataFromMessage:(id)a4 account:(id)a5
{
  v11 = a3;
  v8 = a5;
  v9 = [(EDInteractionEventLogPersistence *)self _partialEventForMessage:a4];
  [v9 setName:v11];
  if (v8)
  {
    v10 = [v8 identifier];
    [v9 setAccountID:v10];
  }

  [(EDInteractionEventLogPersistence *)self _asyncPersistEvent:v9];
}

- (void)persistEvent:(id)a3 date:(id)a4 message:(id)a5 mailbox:(id)a6
{
  v20[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(EDInteractionEventLogPersistence *)self _partialEventForMessage:a5];
  [v13 setName:v10];
  [v13 setDate:v11];
  v19 = @"mailbox_id";
  v14 = MEMORY[0x1E696AD98];
  v15 = [v12 persistentID];
  v16 = [v14 numberWithLongLong:{objc_msgSend(v15, "longLongValue")}];
  v20[0] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  [v13 setData:v17];

  [(EDInteractionEventLogPersistence *)self _asyncPersistEvent:v13];
  v18 = *MEMORY[0x1E69E9840];
}

- (void)persistEvent:(id)a3 date:(id)a4 message:(id)a5 mailboxType:(int64_t)a6
{
  v17[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = [(EDInteractionEventLogPersistence *)self _partialEventForMessage:a5];
  [v12 setName:v10];
  [v12 setDate:v11];
  v16 = @"mailbox_type";
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:a6];
  v17[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  [v12 setData:v14];

  [(EDInteractionEventLogPersistence *)self _asyncPersistEvent:v12];
  v15 = *MEMORY[0x1E69E9840];
}

- (id)_partialEventForMessage:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(EDInteractionEvent);
  [(EDInteractionEvent *)v4 setVersion:15];
  v5 = [v3 account];
  v6 = [v5 identifier];
  [(EDInteractionEvent *)v4 setAccountID:v6];

  v7 = [v3 mailbox];
  v8 = [v7 persistentID];
  -[EDInteractionEvent setMailboxID:](v4, "setMailboxID:", [v8 longLongValue]);

  -[EDInteractionEvent setConversationID:](v4, "setConversationID:", [v3 conversationID]);
  v9 = [v3 messageIDHeaderHash];
  -[EDInteractionEvent setMessageIDHash:](v4, "setMessageIDHash:", [v9 int64Value]);

  v10 = [v3 persistentID];
  -[EDInteractionEvent setMessagePersistentID:](v4, "setMessagePersistentID:", [v10 longLongValue]);

  return v4;
}

- (void)_asyncPersistEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 date];

  if (!v5)
  {
    v6 = [MEMORY[0x1E695DF00] date];
    [v4 setDate:v6];
  }

  v7 = [(EDInteractionEventLogPersistence *)self writeQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__EDInteractionEventLogPersistence__asyncPersistEvent___block_invoke;
  v9[3] = &unk_1E8250128;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(v7, v9);
}

- (void)persistEvent:(id)a3
{
  v4 = a3;
  if (persistEvent__onceToken != -1)
  {
    [EDInteractionEventLogPersistence persistEvent:];
  }

  v5 = [(EDInteractionEventLogPersistence *)self database];
  v6 = [v5 propertyMapper];
  WeakRetained = objc_loadWeakRetained(&persistEvent__propertyMapper);

  if (v6 != WeakRetained)
  {
    [persistEvent__nameCache removeAllObjects];
    v8 = [(EDInteractionEventLogPersistence *)self database];
    v9 = [v8 propertyMapper];
    objc_storeWeak(&persistEvent__propertyMapper, v9);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__EDInteractionEventLogPersistence_persistEvent___block_invoke_2;
  aBlock[3] = &unk_1E8252D50;
  aBlock[4] = self;
  v10 = _Block_copy(aBlock);
  v11 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:@"interaction_log"];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "version")}];
  v13 = v10[2](v10, sel_version);
  [v11 setObject:v12 forKeyedSubscript:v13];

  v14 = [v4 date];
  v15 = v10[2](v10, sel_date);
  [v11 setObject:v14 forKeyedSubscript:v15];

  v16 = [v4 name];
  v17 = v10[2](v10, sel_name);
  [v11 setObject:v16 forKeyedSubscript:v17];

  v18 = [v4 accountID];
  v19 = v18;
  if (!v18)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v10[2](v10, sel_accountID);
  [v11 setObject:v19 forKeyedSubscript:v20];

  if (!v18)
  {
  }

  if ([v4 mailboxID])
  {
    [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v4, "mailboxID")}];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v21 = ;
  v22 = v10[2](v10, sel_mailboxID);
  [v11 setObject:v21 forKeyedSubscript:v22];

  if ([v4 conversationID])
  {
    [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v4, "conversationID")}];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v23 = ;
  v24 = v10[2](v10, sel_conversationID);
  [v11 setObject:v23 forKeyedSubscript:v24];

  if ([v4 messageIDHash])
  {
    [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v4, "messageIDHash")}];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v25 = ;
  v26 = v10[2](v10, sel_messageIDHash);
  [v11 setObject:v25 forKeyedSubscript:v26];

  if ([v4 messagePersistentID])
  {
    [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v4, "messagePersistentID")}];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v27 = ;
  v28 = v10[2](v10, sel_messagePersistentID);
  [v11 setObject:v27 forKeyedSubscript:v28];

  v29 = [v4 data];
  v30 = [v29 count];

  if (v30)
  {
    v31 = MEMORY[0x1E696ACB0];
    v32 = [v4 data];
    v33 = [v31 dataWithJSONObject:v32 options:0 error:0];

    v34 = v10[2](v10, sel_data);
    [v11 setObject:v33 forKeyedSubscript:v34];
  }

  v35 = [(EDInteractionEventLogPersistence *)self database];
  v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDInteractionEventLogPersistence persistEvent:]"];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __49__EDInteractionEventLogPersistence_persistEvent___block_invoke_4;
  v38[3] = &unk_1E8251CB8;
  v37 = v11;
  v39 = v37;
  [v35 __performWriteWithCaller:v36 usingBlock:v38];
}

void __49__EDInteractionEventLogPersistence_persistEvent___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E699B7E0]);
  v1 = persistEvent__nameCache;
  persistEvent__nameCache = v0;
}

id __49__EDInteractionEventLogPersistence_persistEvent___block_invoke_2(uint64_t a1, SEL aSelector)
{
  v4 = persistEvent__nameCache;
  v5 = NSStringFromSelector(aSelector);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__EDInteractionEventLogPersistence_persistEvent___block_invoke_3;
  v8[3] = &unk_1E8252D28;
  v8[4] = *(a1 + 32);
  v8[5] = aSelector;
  v6 = [v4 objectForKey:v5 generator:v8];

  return v6;
}

id __49__EDInteractionEventLogPersistence_persistEvent___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  v3 = [v2 propertyMapper];
  v4 = [v3 columnNameForClass:objc_opt_class() property:*(a1 + 40)];

  return v4;
}

- (id)recentRecipients
{
  v46 = *MEMORY[0x1E69E9840];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__15;
  v43 = __Block_byref_object_dispose__15;
  v44 = 0;
  v2 = [(EDInteractionEventLogPersistence *)self database];
  v3 = [v2 schema];
  v29 = [v3 tableForName:@"recipients"];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v4 = [v29 columns];
  v5 = [v4 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (!v5)
  {

    v6 = 0;
    v30 = 0;
    goto LABEL_17;
  }

  v30 = 0;
  v6 = 0;
  v7 = *v36;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v36 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v35 + 1) + 8 * i);
      v10 = [v9 name];
      v11 = [v10 hasPrefix:@"address"];

      if (v11)
      {
        v12 = [v9 name];
        v13 = v6;
        v6 = v12;
      }

      else
      {
        v14 = [v9 name];
        v15 = [v14 hasPrefix:@"message"];

        if (!v15)
        {
          continue;
        }

        v16 = [v9 name];
        v13 = v30;
        v30 = v16;
      }
    }

    v5 = [v4 countByEnumeratingWithState:&v35 objects:v45 count:16];
  }

  while (v5);

  if (!v30 || !v6)
  {
LABEL_17:
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"EDInteractionEventLogPersistence.m" lineNumber:182 description:@"Could not find message and address columns in schema"];
  }

  v18 = [(EDInteractionEventLogPersistence *)self database];
  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDInteractionEventLogPersistence recentRecipients]"];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __52__EDInteractionEventLogPersistence_recentRecipients__block_invoke;
  v31[3] = &unk_1E8250288;
  v20 = v30;
  v32 = v20;
  v21 = v6;
  v33 = v21;
  v34 = &v39;
  [v18 __performReadWithCaller:v19 usingBlock:v31];

  v22 = v40[5];
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = [MEMORY[0x1E695DFD8] set];
  }

  v24 = v23;

  _Block_object_dispose(&v39, 8);
  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

uint64_t __52__EDInteractionEventLogPersistence_recentRecipients__block_invoke(void *a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"select distinct AD.address from interaction_log LOG join mailboxes MB on MB.rowid = LOG.mailbox join messages MSG on MSG.message_id = LOG.message_id_hash join recipients RE on RE.%@ = MSG.rowID join addresses AD on AD.rowid = RE.%@ where MB.url like '%%/Sent%%' and LOG.name = 'message_fetched' and MSG.date_received >= ?", a1[4], a1[5]];
  v5 = [v3 preparedStatementForQueryString:v4];
  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-1209600.0];
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v18[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52__EDInteractionEventLogPersistence_recentRecipients__block_invoke_2;
  v16[3] = &unk_1E8250300;
  v9 = v7;
  v17 = v9;
  v10 = [v5 executeWithIndexedBindings:v8 usingBlock:v16 error:0];

  if ([v9 count])
  {
    v11 = [v9 copy];
    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

void __52__EDInteractionEventLogPersistence_recentRecipients__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectAtIndexedSubscript:0];
  v4 = [v3 stringValue];
  v5 = [v4 emailAddressValue];

  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }
}

@end