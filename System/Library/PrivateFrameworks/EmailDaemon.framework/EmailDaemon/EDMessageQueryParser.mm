@interface EDMessageQueryParser
+ (id)log;
- (EDMessageQueryParser)initWithSchema:(id)schema protectedSchema:(id)protectedSchema messagePersistence:(id)persistence queryTransformer:(id)transformer;
- (id)_sqlQueryToCountResultsForQuery:(id)query distinctByGlobalMessageID:(BOOL)d;
- (id)sqlCountQueryByMailboxForQuery:(id)query;
- (id)sqlCountQueryForQuery:(id)query;
- (id)sqlQueryToCountJournaledMessagesForQuery:(id)query;
- (id)sqlQueryToCountMessagesWithGlobalMessageID:(int64_t)d matchingQuery:(id)query;
- (void)_modifySelectStatement:(id)statement byAddingAdditionalClause:(id)clause;
@end

@implementation EDMessageQueryParser

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__EDMessageQueryParser_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (EDMessageQueryParser)initWithSchema:(id)schema protectedSchema:(id)protectedSchema messagePersistence:(id)persistence queryTransformer:(id)transformer
{
  schemaCopy = schema;
  protectedSchemaCopy = protectedSchema;
  persistenceCopy = persistence;
  transformerCopy = transformer;
  v27.receiver = self;
  v27.super_class = EDMessageQueryParser;
  v14 = [(EDMessageQueryParser *)&v27 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_transformer, transformer);
    v16 = [EDMessagePersistence objectPropertyMapperForSchema:schemaCopy protectedSchema:protectedSchemaCopy];
    sqlPropertyMapper = v15->_sqlPropertyMapper;
    v15->_sqlPropertyMapper = v16;

    expressionForFilteringUnavailableMessages = [persistenceCopy expressionForFilteringUnavailableMessages];
    additionalSQLClause = v15->_additionalSQLClause;
    v15->_additionalSQLClause = expressionForFilteringUnavailableMessages;

    expressionForFilteringUnavailableMessagesFromCount = [persistenceCopy expressionForFilteringUnavailableMessagesFromCount];
    additionalSQLClauseForCountQuery = v15->_additionalSQLClauseForCountQuery;
    v15->_additionalSQLClauseForCountQuery = expressionForFilteringUnavailableMessagesFromCount;

    expressionForFilteringUnavailableMessagesFromCountForGlobalMessageQuery = [persistenceCopy expressionForFilteringUnavailableMessagesFromCountForGlobalMessageQuery];
    additionalSQLClauseForGlobalMessageCountQuery = v15->_additionalSQLClauseForGlobalMessageCountQuery;
    v15->_additionalSQLClauseForGlobalMessageCountQuery = expressionForFilteringUnavailableMessagesFromCountForGlobalMessageQuery;

    expressionForFindingOnlyJournaledMessages = [persistenceCopy expressionForFindingOnlyJournaledMessages];
    additionalSQLClauseForJournaledMessages = v15->_additionalSQLClauseForJournaledMessages;
    v15->_additionalSQLClauseForJournaledMessages = expressionForFindingOnlyJournaledMessages;
  }

  return v15;
}

- (void)_modifySelectStatement:(id)statement byAddingAdditionalClause:(id)clause
{
  v13[2] = *MEMORY[0x1E69E9840];
  statementCopy = statement;
  clauseCopy = clause;
  where = [statementCopy where];
  v8 = where;
  if (where)
  {
    if (([where isEqual:MEMORY[0x1E695E110]] & 1) == 0)
    {
      v9 = MEMORY[0x1E699B898];
      v13[0] = v8;
      v13[1] = clauseCopy;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
      v11 = [v9 combined:v10];

      v8 = v11;
    }
  }

  else
  {
    v8 = clauseCopy;
  }

  [statementCopy setWhere:v8];

  v12 = *MEMORY[0x1E69E9840];
}

- (id)_sqlQueryToCountResultsForQuery:(id)query distinctByGlobalMessageID:(BOOL)d
{
  dCopy = d;
  queryCopy = query;
  transformer = [(EDMessageQueryParser *)self transformer];
  predicate = [queryCopy predicate];
  v9 = [transformer transformPredicate:predicate];

  v10 = MEMORY[0x1E699B8C8];
  v11 = +[EDMessagePersistence messagesTableName];
  v12 = +[EDMessagePersistence globalMessageIDColumnName];
  v13 = [v10 table:v11 column:v12];

  v14 = MEMORY[0x1E699B938];
  sqlPropertyMapper = [(EDMessageQueryParser *)self sqlPropertyMapper];
  if (dCopy)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  v17 = [v14 countStatementForPredicate:v9 propertyMapper:sqlPropertyMapper distinctBy:v16];

  if (([queryCopy queryOptions] & 0x100) != 0)
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

- (id)sqlQueryToCountJournaledMessagesForQuery:(id)query
{
  v3 = [(EDMessageQueryParser *)self _sqlQueryToCountResultsForQuery:query distinctByGlobalMessageID:0];

  return v3;
}

- (id)sqlCountQueryForQuery:(id)query
{
  v3 = [(EDMessageQueryParser *)self _sqlQueryToCountResultsForQuery:query distinctByGlobalMessageID:1];

  return v3;
}

- (id)sqlQueryToCountMessagesWithGlobalMessageID:(int64_t)d matchingQuery:(id)query
{
  v28[3] = *MEMORY[0x1E69E9840];
  queryCopy = query;
  transformer = [(EDMessageQueryParser *)self transformer];
  predicate = [queryCopy predicate];
  v9 = [transformer transformPredicate:predicate];

  v10 = MEMORY[0x1E699B938];
  sqlPropertyMapper = [(EDMessageQueryParser *)self sqlPropertyMapper];
  v12 = [v10 countStatementForPredicate:v9 propertyMapper:sqlPropertyMapper distinctBy:0];

  where = [v12 where];
  v14 = MEMORY[0x1E699B8C8];
  v15 = +[EDMessagePersistence messagesTableName];
  v16 = +[EDMessagePersistence globalMessageIDColumnName];
  v17 = [v14 table:v15 column:v16];
  v18 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
  v19 = [v17 equalTo:v18];

  if (where)
  {
    if ([where isEqual:MEMORY[0x1E695E110]])
    {
      goto LABEL_6;
    }

    v20 = MEMORY[0x1E699B898];
    v28[0] = v19;
    v28[1] = where;
    additionalSQLClauseForGlobalMessageCountQuery = [(EDMessageQueryParser *)self additionalSQLClauseForGlobalMessageCountQuery];
    v28[2] = additionalSQLClauseForGlobalMessageCountQuery;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
    v23 = [v20 combined:v22];

    where = v23;
  }

  else
  {
    v24 = MEMORY[0x1E699B898];
    additionalSQLClauseForGlobalMessageCountQuery = [(EDMessageQueryParser *)self additionalSQLClauseForGlobalMessageCountQuery];
    v27[1] = additionalSQLClauseForGlobalMessageCountQuery;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    where = [v24 combined:v22];
  }

LABEL_6:
  [v12 setWhere:where];

  v25 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)sqlCountQueryByMailboxForQuery:(id)query
{
  queryCopy = query;
  transformer = [(EDMessageQueryParser *)self transformer];
  predicate = [queryCopy predicate];
  v7 = [transformer transformPredicate:predicate];

  v8 = MEMORY[0x1E699B8C8];
  v9 = +[EDMessagePersistence messagesTableName];
  v10 = +[EDMessagePersistence globalMessageIDColumnName];
  v11 = [v8 table:v9 column:v10];

  v12 = MEMORY[0x1E699B938];
  sqlPropertyMapper = [(EDMessageQueryParser *)self sqlPropertyMapper];
  v14 = [v12 countStatementForPredicate:v7 propertyMapper:sqlPropertyMapper distinctBy:v11 groupBy:@"url" groupByTable:@"mailboxes"];

  if (([queryCopy queryOptions] & 0x100) != 0)
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