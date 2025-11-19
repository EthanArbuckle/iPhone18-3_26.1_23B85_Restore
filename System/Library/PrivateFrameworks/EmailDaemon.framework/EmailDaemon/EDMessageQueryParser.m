@interface EDMessageQueryParser
+ (id)log;
- (EDMessageQueryParser)initWithSchema:(id)a3 protectedSchema:(id)a4 messagePersistence:(id)a5 queryTransformer:(id)a6;
- (id)_sqlQueryToCountResultsForQuery:(id)a3 distinctByGlobalMessageID:(BOOL)a4;
- (id)sqlCountQueryByMailboxForQuery:(id)a3;
- (id)sqlCountQueryForQuery:(id)a3;
- (id)sqlQueryToCountJournaledMessagesForQuery:(id)a3;
- (id)sqlQueryToCountMessagesWithGlobalMessageID:(int64_t)a3 matchingQuery:(id)a4;
- (void)_modifySelectStatement:(id)a3 byAddingAdditionalClause:(id)a4;
@end

@implementation EDMessageQueryParser

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__EDMessageQueryParser_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_66 != -1)
  {
    dispatch_once(&log_onceToken_66, block);
  }

  v2 = log_log_66;

  return v2;
}

void __27__EDMessageQueryParser_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_66;
  log_log_66 = v1;
}

- (EDMessageQueryParser)initWithSchema:(id)a3 protectedSchema:(id)a4 messagePersistence:(id)a5 queryTransformer:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v27.receiver = self;
  v27.super_class = EDMessageQueryParser;
  v14 = [(EDMessageQueryParser *)&v27 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_transformer, a6);
    v16 = [EDMessagePersistence objectPropertyMapperForSchema:v10 protectedSchema:v11];
    sqlPropertyMapper = v15->_sqlPropertyMapper;
    v15->_sqlPropertyMapper = v16;

    v18 = [v12 expressionForFilteringUnavailableMessages];
    additionalSQLClause = v15->_additionalSQLClause;
    v15->_additionalSQLClause = v18;

    v20 = [v12 expressionForFilteringUnavailableMessagesFromCount];
    additionalSQLClauseForCountQuery = v15->_additionalSQLClauseForCountQuery;
    v15->_additionalSQLClauseForCountQuery = v20;

    v22 = [v12 expressionForFilteringUnavailableMessagesFromCountForGlobalMessageQuery];
    additionalSQLClauseForGlobalMessageCountQuery = v15->_additionalSQLClauseForGlobalMessageCountQuery;
    v15->_additionalSQLClauseForGlobalMessageCountQuery = v22;

    v24 = [v12 expressionForFindingOnlyJournaledMessages];
    additionalSQLClauseForJournaledMessages = v15->_additionalSQLClauseForJournaledMessages;
    v15->_additionalSQLClauseForJournaledMessages = v24;
  }

  return v15;
}

- (void)_modifySelectStatement:(id)a3 byAddingAdditionalClause:(id)a4
{
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 where];
  v8 = v7;
  if (v7)
  {
    if (([v7 isEqual:MEMORY[0x1E695E110]] & 1) == 0)
    {
      v9 = MEMORY[0x1E699B898];
      v13[0] = v8;
      v13[1] = v6;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
      v11 = [v9 combined:v10];

      v8 = v11;
    }
  }

  else
  {
    v8 = v6;
  }

  [v5 setWhere:v8];

  v12 = *MEMORY[0x1E69E9840];
}

- (id)_sqlQueryToCountResultsForQuery:(id)a3 distinctByGlobalMessageID:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(EDMessageQueryParser *)self transformer];
  v8 = [v6 predicate];
  v9 = [v7 transformPredicate:v8];

  v10 = MEMORY[0x1E699B8C8];
  v11 = +[EDMessagePersistence messagesTableName];
  v12 = +[EDMessagePersistence globalMessageIDColumnName];
  v13 = [v10 table:v11 column:v12];

  v14 = MEMORY[0x1E699B938];
  v15 = [(EDMessageQueryParser *)self sqlPropertyMapper];
  if (v4)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  v17 = [v14 countStatementForPredicate:v9 propertyMapper:v15 distinctBy:v16];

  if (([v6 queryOptions] & 0x100) != 0)
  {
    [(EDMessageQueryParser *)self additionalSQLClauseForJournaledMessages];
  }

  else
  {
    [(EDMessageQueryParser *)self additionalSQLClauseForCountQuery];
  }
  v18 = ;
  [(EDMessageQueryParser *)self _modifySelectStatement:v17 byAddingAdditionalClause:v18];

  return v17;
}

- (id)sqlQueryToCountJournaledMessagesForQuery:(id)a3
{
  v3 = [(EDMessageQueryParser *)self _sqlQueryToCountResultsForQuery:a3 distinctByGlobalMessageID:0];

  return v3;
}

- (id)sqlCountQueryForQuery:(id)a3
{
  v3 = [(EDMessageQueryParser *)self _sqlQueryToCountResultsForQuery:a3 distinctByGlobalMessageID:1];

  return v3;
}

- (id)sqlQueryToCountMessagesWithGlobalMessageID:(int64_t)a3 matchingQuery:(id)a4
{
  v28[3] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(EDMessageQueryParser *)self transformer];
  v8 = [v6 predicate];
  v9 = [v7 transformPredicate:v8];

  v10 = MEMORY[0x1E699B938];
  v11 = [(EDMessageQueryParser *)self sqlPropertyMapper];
  v12 = [v10 countStatementForPredicate:v9 propertyMapper:v11 distinctBy:0];

  v13 = [v12 where];
  v14 = MEMORY[0x1E699B8C8];
  v15 = +[EDMessagePersistence messagesTableName];
  v16 = +[EDMessagePersistence globalMessageIDColumnName];
  v17 = [v14 table:v15 column:v16];
  v18 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v19 = [v17 equalTo:v18];

  if (v13)
  {
    if ([v13 isEqual:MEMORY[0x1E695E110]])
    {
      goto LABEL_6;
    }

    v20 = MEMORY[0x1E699B898];
    v28[0] = v19;
    v28[1] = v13;
    v21 = [(EDMessageQueryParser *)self additionalSQLClauseForGlobalMessageCountQuery];
    v28[2] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
    v23 = [v20 combined:v22];

    v13 = v23;
  }

  else
  {
    v24 = MEMORY[0x1E699B898];
    v21 = [(EDMessageQueryParser *)self additionalSQLClauseForGlobalMessageCountQuery];
    v27[1] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v13 = [v24 combined:v22];
  }

LABEL_6:
  [v12 setWhere:v13];

  v25 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)sqlCountQueryByMailboxForQuery:(id)a3
{
  v4 = a3;
  v5 = [(EDMessageQueryParser *)self transformer];
  v6 = [v4 predicate];
  v7 = [v5 transformPredicate:v6];

  v8 = MEMORY[0x1E699B8C8];
  v9 = +[EDMessagePersistence messagesTableName];
  v10 = +[EDMessagePersistence globalMessageIDColumnName];
  v11 = [v8 table:v9 column:v10];

  v12 = MEMORY[0x1E699B938];
  v13 = [(EDMessageQueryParser *)self sqlPropertyMapper];
  v14 = [v12 countStatementForPredicate:v7 propertyMapper:v13 distinctBy:v11 groupBy:@"url" groupByTable:@"mailboxes"];

  if (([v4 queryOptions] & 0x100) != 0)
  {
    [(EDMessageQueryParser *)self additionalSQLClauseForJournaledMessages];
  }

  else
  {
    [(EDMessageQueryParser *)self additionalSQLClauseForCountQuery];
  }
  v15 = ;
  [(EDMessageQueryParser *)self _modifySelectStatement:v14 byAddingAdditionalClause:v15];

  return v14;
}

@end