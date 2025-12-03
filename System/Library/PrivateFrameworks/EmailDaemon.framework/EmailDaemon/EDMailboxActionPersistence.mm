@interface EDMailboxActionPersistence
+ (id)tablesAndForeignKeysToResolve:(id *)resolve associationsToResolve:(id *)toResolve;
- (EDMailboxActionPersistence)initWithDatabase:(id)database;
- (id)allMailboxActionForAccountID:(id)d;
- (id)nextMailboxActionForAccountID:(id)d;
- (void)deleteMailboxAction:(int64_t)action;
- (void)deleteMailboxActions:(id)actions;
- (void)saveMailboxActionForAccountID:(id)d action:(id)action;
@end

@implementation EDMailboxActionPersistence

+ (id)tablesAndForeignKeysToResolve:(id *)resolve associationsToResolve:(id *)toResolve
{
  v16[5] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E699B958]);
  v5 = [MEMORY[0x1E699B8D0] textColumnWithName:@"account_identifier" collation:0 nullable:1];
  v16[0] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"action_type" nullable:1];
  v16[1] = v6;
  v7 = [MEMORY[0x1E699B8D0] textColumnWithName:@"mailbox_name" collation:0 nullable:1];
  v16[2] = v7;
  v8 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"mailbox" nullable:1 defaultValue:0];
  v16[3] = v8;
  v9 = [MEMORY[0x1E699B8D0] textColumnWithName:@"new_mailbox_name" collation:0 nullable:1];
  v16[4] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:5];
  v11 = [v4 initWithName:@"mailbox_actions" rowIDType:2 columns:v10];

  v15 = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (EDMailboxActionPersistence)initWithDatabase:(id)database
{
  databaseCopy = database;
  v9.receiver = self;
  v9.super_class = EDMailboxActionPersistence;
  v6 = [(EDMailboxActionPersistence *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, database);
  }

  return v7;
}

- (void)saveMailboxActionForAccountID:(id)d action:(id)action
{
  dCopy = d;
  actionCopy = action;
  database = [(EDMailboxActionPersistence *)self database];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMailboxActionPersistence saveMailboxActionForAccountID:action:]"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__EDMailboxActionPersistence_saveMailboxActionForAccountID_action___block_invoke;
  v12[3] = &unk_1E8250328;
  v10 = dCopy;
  v13 = v10;
  v11 = actionCopy;
  v14 = v11;
  [database __performWriteWithCaller:v9 usingBlock:v12];
}

uint64_t __67__EDMailboxActionPersistence_saveMailboxActionForAccountID_action___block_invoke(uint64_t a1, void *a2)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v15 = [v3 preparedStatementForQueryString:{@"INSERT INTO mailbox_actions (account_identifier, action_type, mailbox, mailbox_name, new_mailbox_name) VALUES (?, ?, ?, ?, ?)"}];
  v4 = *(a1 + 40);
  v17[0] = *(a1 + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "actionType")}];
  v17[1] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 40), "mailboxID")}];
  v17[2] = v6;
  v7 = [*(a1 + 40) mailboxName];
  v17[3] = v7;
  v8 = [*(a1 + 40) renamedMailboxName];
  v9 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v17[4] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:5];
  v16 = 0;
  v11 = [v15 executeWithIndexedBindings:v10 usingBlock:0 error:&v16];
  v12 = v16;

  if (!v8)
  {
  }

  if ((v11 & 1) == 0)
  {
    [v3 handleError:v12 message:@"inserting mailbox action"];
  }

  v13 = *MEMORY[0x1E69E9840];
  return 1;
}

- (id)allMailboxActionForAccountID:(id)d
{
  dCopy = d;
  array = [MEMORY[0x1E695DF70] array];
  database = [(EDMailboxActionPersistence *)self database];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMailboxActionPersistence allMailboxActionForAccountID:]"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__EDMailboxActionPersistence_allMailboxActionForAccountID___block_invoke;
  v13[3] = &unk_1E8250328;
  v8 = dCopy;
  v14 = v8;
  v9 = array;
  v15 = v9;
  [database __performReadWithCaller:v7 usingBlock:v13];

  v10 = v15;
  v11 = v9;

  return v9;
}

uint64_t __59__EDMailboxActionPersistence_allMailboxActionForAccountID___block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [a2 preparedStatementForQueryString:{@"SELECT ROWID, action_type, mailbox, mailbox_name, new_mailbox_name FROM mailbox_actions WHERE (account_identifier = ?) ORDER BY ROWID"}];
  v4 = [MEMORY[0x1E699B8B0] bindingWithString:*(a1 + 32)];
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__EDMailboxActionPersistence_allMailboxActionForAccountID___block_invoke_2;
  v8[3] = &unk_1E8250300;
  v9 = *(a1 + 40);
  [v3 executeWithIndexedBindings:v5 usingBlock:v8 error:0];

  v6 = *MEMORY[0x1E69E9840];
  return 1;
}

void __59__EDMailboxActionPersistence_allMailboxActionForAccountID___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = a2;
  v14 = [EDMailboxAction alloc];
  v16 = [v17 objectForKeyedSubscript:@"ROWID"];
  v2 = [v16 int64Value];
  v15 = [v17 objectForKeyedSubscript:@"action_type"];
  v3 = [v15 numberValue];
  v4 = [v3 longLongValue];
  v5 = [v17 objectForKeyedSubscript:@"mailbox"];
  v6 = [v5 numberValue];
  v7 = [v6 longLongValue];
  v8 = [v17 objectForKeyedSubscript:@"mailbox_name"];
  v9 = [v8 stringValue];
  v10 = [v17 objectForKeyedSubscript:@"new_mailbox_name"];
  v11 = [v10 stringValue];
  v12 = [(EDMailboxAction *)v14 initWithID:v2 actionType:v4 mailboxID:v7 mailboxName:v9 renamedMailboxName:v11];

  [*(a1 + 32) addObject:v12];
}

- (id)nextMailboxActionForAccountID:(id)d
{
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__18;
  v17 = __Block_byref_object_dispose__18;
  v18 = 0;
  database = [(EDMailboxActionPersistence *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMailboxActionPersistence nextMailboxActionForAccountID:]"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__EDMailboxActionPersistence_nextMailboxActionForAccountID___block_invoke;
  v10[3] = &unk_1E8250350;
  v7 = dCopy;
  v11 = v7;
  v12 = &v13;
  [database __performReadWithCaller:v6 usingBlock:v10];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __60__EDMailboxActionPersistence_nextMailboxActionForAccountID___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [a2 preparedStatementForQueryString:{@"SELECT ROWID, action_type, mailbox, mailbox_name, new_mailbox_name FROM mailbox_actions WHERE (account_identifier = ?) ORDER BY ROWID LIMIT 1"}];
  v4 = [MEMORY[0x1E699B8B0] bindingWithString:*(a1 + 32)];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__EDMailboxActionPersistence_nextMailboxActionForAccountID___block_invoke_2;
  v8[3] = &unk_1E8250418;
  v8[4] = *(a1 + 40);
  [v3 executeWithIndexedBindings:v5 usingBlock:v8 error:0];

  v6 = *MEMORY[0x1E69E9840];
  return 1;
}

void __60__EDMailboxActionPersistence_nextMailboxActionForAccountID___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = a2;
  v2 = [EDMailboxAction alloc];
  v18 = [v19 objectForKeyedSubscript:@"ROWID"];
  v3 = [v18 int64Value];
  v17 = [v19 objectForKeyedSubscript:@"action_type"];
  v16 = [v17 numberValue];
  v4 = [v16 longLongValue];
  v5 = [v19 objectForKeyedSubscript:@"mailbox"];
  v6 = [v5 numberValue];
  v7 = [v6 longLongValue];
  v8 = [v19 objectForKeyedSubscript:@"mailbox_name"];
  v9 = [v8 stringValue];
  v10 = [v19 objectForKeyedSubscript:@"new_mailbox_name"];
  v11 = [v10 stringValue];
  v12 = [(EDMailboxAction *)v2 initWithID:v3 actionType:v4 mailboxID:v7 mailboxName:v9 renamedMailboxName:v11];
  v13 = *(*(a1 + 32) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

- (void)deleteMailboxAction:(int64_t)action
{
  database = [(EDMailboxActionPersistence *)self database];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMailboxActionPersistence deleteMailboxAction:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__EDMailboxActionPersistence_deleteMailboxAction___block_invoke;
  v6[3] = &__block_descriptor_40_e41_B16__0__EDPersistenceDatabaseConnection_8l;
  v6[4] = action;
  [database __performWriteWithCaller:v5 usingBlock:v6];
}

uint64_t __50__EDMailboxActionPersistence_deleteMailboxAction___block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [a2 preparedStatementForQueryString:@"DELETE FROM mailbox_actions WHERE ROWID = ?"];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 32)];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v3 executeWithIndexedBindings:v5 usingBlock:0 error:0];

  v6 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)deleteMailboxActions:(id)actions
{
  actionsCopy = actions;
  database = [(EDMailboxActionPersistence *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDMailboxActionPersistence deleteMailboxActions:]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__EDMailboxActionPersistence_deleteMailboxActions___block_invoke;
  v8[3] = &unk_1E8251CB8;
  v7 = actionsCopy;
  v9 = v7;
  [database __performWriteWithCaller:v6 usingBlock:v8];
}

uint64_t __51__EDMailboxActionPersistence_deleteMailboxActions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) ef_map:&__block_literal_global_40];
  v5 = [v4 componentsJoinedByString:{@", "}];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM mailbox_actions WHERE ROWID IN (%@)", v5];
  v7 = [v3 preparedStatementForQueryString:v6];
  [v7 executeWithIndexedBindings:MEMORY[0x1E695E0F0] usingBlock:0 error:0];

  return 1;
}

id __51__EDMailboxActionPersistence_deleteMailboxActions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", objc_msgSend(v2, "longLongValue")];

  return v3;
}

@end