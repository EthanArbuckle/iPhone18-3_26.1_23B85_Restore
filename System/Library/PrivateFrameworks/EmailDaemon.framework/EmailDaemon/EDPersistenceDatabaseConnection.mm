@interface EDPersistenceDatabaseConnection
+ (OS_os_log)log;
- (BOOL)attachJournalDatabase:(id)database withName:(id)name;
- (BOOL)attachJournalDatabase:(id)database withName:(id)name error:(id *)error;
- (BOOL)attachProtectedDatabaseWithName:(id)name;
- (BOOL)attachProtectedDatabaseWithName:(id)name error:(id *)error;
- (BOOL)attachProtectedDatabaseWithName:(id)name url:(id)url error:(id *)error;
- (BOOL)checkForConnectionErrorWithMessage:(id)message;
- (BOOL)columnExists:(id)exists inTable:(id)table database:(id)database type:(unint64_t *)type;
- (BOOL)databaseIsAttached:(id)attached;
- (BOOL)detachJournalDatabase;
- (BOOL)executeDeleteStatement:(id)statement error:(id *)error;
- (BOOL)executeDeleteStatement:(id)statement rowsChanged:(unint64_t *)changed;
- (BOOL)executeInsertStatement:(id)statement error:(id *)error;
- (BOOL)executeInsertStatement:(id)statement rowsChanged:(unint64_t *)changed;
- (BOOL)executeSelectStatement:(id)statement withBlock:(id)block error:(id *)error;
- (BOOL)executeStatementString:(id)string errorMessage:(id)message;
- (BOOL)executeUpdateStatement:(id)statement error:(id *)error;
- (BOOL)executeUpdateStatement:(id)statement rowsChanged:(unint64_t *)changed;
- (BOOL)executeUpsertStatement:(id)statement error:(id *)error;
- (BOOL)executeUpsertStatement:(id)statement rowsChanged:(unint64_t *)changed;
- (BOOL)isValid;
- (BOOL)journalDatabaseAttached;
- (BOOL)performWithOptions:(unint64_t)options transactionError:(id *)error block:(id)block;
- (BOOL)protectedDatabaseAttached;
- (BOOL)tableExists:(id)exists inDatabase:(id)database;
- (EDPersistenceDatabaseConnection)initWithBasePath:(id)path databaseName:(id)name isWriter:(BOOL)writer delegate:(id)delegate;
- (EDPersistenceDatabaseConnection)initWithSQLDB:(sqlite3 *)b isWriter:(BOOL)writer delegate:(id)delegate;
- (EDPersistenceDatabaseConnectionDelegate)delegate;
- (NSString)description;
- (NSString)fullPath;
- (id)SQLQueryLogger;
- (id)_databasePathForFileName:(void *)name;
- (id)assignIndexedAttachmentItems:(uint64_t)items transaction:;
- (id)assignIndexedRichLinkItems:(uint64_t)items transaction:;
- (id)attachmentDataForItemsRequiringIndexingExcludingIDs:(void *)ds lastProcessedAttachmentID:(uint64_t)d limit:(void *)limit cancelationToken:;
- (id)attachmentDataForMessageWithIdentifier:(void *)identifier;
- (id)databaseIDsForSelectStatement:(id)statement;
- (id)getIndexSnapshot;
- (id)identifiersForAttachmentsWithQuery:(void *)query;
- (id)messageIDTransactionIDDictionaryToVerifyWithCount:(uint64_t)count lastVerifiedMessageID:;
- (id)messagesNeedingReindex;
- (id)messagesWithUnindexedBodiesAfterID:(uint64_t)d limit:;
- (id)preparedStatementForQueryString:(id)string;
- (id)richLinkDataForItemsRequiringIndexingExcludingIdentifiers:(uint64_t)identifiers limit:(void *)limit cancelationToken:;
- (id)selectAttachmentIdentifiersForMessages:(void *)messages;
- (id)selectAttachmentIdentifiersForTransactions:(void *)transactions;
- (id)selectDistinctTransactionIDs;
- (id)selectIdentifiersForDeletedAttachments;
- (id)selectIdentifiersForDeletedMessages;
- (id)selectIdentifiersForTombstonesOfType:(void *)type;
- (id)selectLastProcessedAttachmentID;
- (id)selectMessageIDsFromBacklogWithBatchSize:(void *)size;
- (id)selectMessageIdentifiersForTransactions:(void *)transactions;
- (id)selectTombstoneIdentifiersForTransactions:(void *)transactions;
- (id)selectTransactionAndIndexTypeForMessage:(id)message;
- (int)configureSQLConnection;
- (int64_t)lastInsertedDatabaseID;
- (int64_t)transactionGeneration;
- (sqlite3)sqlDB;
- (uint64_t)_adjustedDatabaseTypeForType:(uint64_t)result;
- (uint64_t)_attachDatabaseWithName:(void *)name url:(uint64_t)url error:;
- (uint64_t)_detachDatabaseWithName:(void *)name;
- (uint64_t)_executePreparedStatement:(void *)statement withBlock:(void *)block description:(id *)description error:;
- (uint64_t)_finishTransactionWithSQLConnection:(int)connection afterSuccess:(void *)success transactionError:;
- (uint64_t)_startTransactionWithSQLConnection:(char)connection options:(uint64_t)options error:;
- (uint64_t)selectIsReindexing;
- (uint64_t)setLastProcessedAttachmentID:(void *)d;
- (unint64_t)countForSelectStatement:(id)statement;
- (void)_fetchTransactionWriteGenerationWithSQLConnection:(void *)connection;
- (void)_storeTransactionWriteGenerationWithSQLConnection:(uint64_t)connection newGeneration:;
- (void)addAllMessagesToRebuildTable;
- (void)addTombstonesForIdentifiers:(uint64_t)identifiers type:;
- (void)assignTombstonesForIdentifiers:(uint64_t)identifiers type:(uint64_t)type transaction:;
- (void)clearLastInsertedDatabaseID;
- (void)clearReferencesToMissingSearchableMessages;
- (void)clearReferencesToSearchableMessages;
- (void)clearTransactionsForTombstonesAfterTransaction:(void *)transaction;
- (void)close;
- (void)dealloc;
- (void)deleteAttachmentItems:(void *)items;
- (void)deleteAttachmentsAfterTransaction:(void *)transaction;
- (void)deleteAttachmentsForMessage:(void *)message;
- (void)deleteAttachmentsInTransactions:(void *)transactions;
- (void)deleteMessagesAfterTransaction:(void *)transaction;
- (void)deleteMessagesInTransactions:(void *)transactions;
- (void)deleteRichLinkItems:(void *)items;
- (void)deleteRichLinksInTransactions:(void *)transactions;
- (void)deleteTombstonesBeforeTransaction:(void *)transaction;
- (void)deleteTombstonesInTransactions:(void *)transactions;
- (void)detachJournalDatabase;
- (void)detachProtectedDatabase;
- (void)emptyAllSearchableIndexTables;
- (void)handleError:(id)error message:(id)message;
- (void)handleSQLResult:(int)result message:(id)message;
- (void)open;
- (void)performBlockAfterTransaction:(id)transaction;
- (void)removeIndexedIdentifiers:(void *)identifiers;
- (void)setJournal:(uint64_t)journal;
@end

@implementation EDPersistenceDatabaseConnection

- (void)detachProtectedDatabase
{
  v10 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = self[2];
  }

  else
  {
    v2 = 0;
  }

  v4 = [(EDPersistenceDatabaseConnection *)self _detachDatabaseWithName:v2];
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v3, 0, 16);
  }

  if (v4)
  {
    v5 = +[EDPersistenceDatabaseConnection log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Detached Protected Index on connection %{public}@", &v8, 0xCu);
    }

    v6 = *MEMORY[0x1E69E9840];
  }

  else
  {
    [self close];
    v7 = *MEMORY[0x1E69E9840];

    [self open];
  }
}

- (BOOL)journalDatabaseAttached
{
  if (self)
  {
    return OUTLINED_FUNCTION_4_1(self->_journalDatabaseName);
  }

  else
  {
    return OUTLINED_FUNCTION_4_1(0);
  }
}

- (void)dealloc
{
  [(EDPersistenceDatabaseConnection *)self close];
  v3.receiver = self;
  v3.super_class = EDPersistenceDatabaseConnection;
  [(EDPersistenceDatabaseConnection *)&v3 dealloc];
}

- (void)close
{
  sqlConnection = [(EDPersistenceDatabaseConnection *)self sqlConnection];
  v7 = 0;
  v4 = [sqlConnection finalizeStatementsWithError:&v7];
  v5 = v7;

  if ((v4 & 1) == 0)
  {
    [(EDPersistenceDatabaseConnection *)self handleError:v5 message:@"Unable to finalize statements"];
  }

  if ([(EDPersistenceDatabaseConnection *)self protectedDatabaseAttached])
  {
    [(EDPersistenceDatabaseConnection *)self detachProtectedDatabase];
  }

  if ([(EDPersistenceDatabaseConnection *)self journalDatabaseAttached])
  {
    [(EDPersistenceDatabaseConnection *)self detachJournalDatabase];
  }

  sqlConnection2 = [(EDPersistenceDatabaseConnection *)self sqlConnection];
  [sqlConnection2 close];
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11.receiver = self;
  v11.super_class = EDPersistenceDatabaseConnection;
  v4 = [(EDPersistenceDatabaseConnection *)&v11 description];
  isWriter = [(EDPersistenceDatabaseConnection *)self isWriter];
  sqlConnection = [(EDPersistenceDatabaseConnection *)self sqlConnection];
  v7 = sqlConnection;
  v8 = @"NO";
  if (isWriter)
  {
    v8 = @"YES";
  }

  v9 = [v3 initWithFormat:@"[%@ isWriter: %@, SQL connection: %@]", v4, v8, sqlConnection];

  return v9;
}

- (sqlite3)sqlDB
{
  sqlConnection = [(EDPersistenceDatabaseConnection *)self sqlConnection];
  sqlDB = [sqlConnection sqlDB];

  if (!sqlDB)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDPersistenceDatabaseConnection.m" lineNumber:295 description:@"We have a database connection without a sql database pointer"];
  }

  return sqlDB;
}

- (int64_t)transactionGeneration
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v4 = [threadDictionary objectForKeyedSubscript:@"_EDPersistenceDatabaseConnectionTransactionGeneration"];
  longLongValue = [v4 longLongValue];

  return longLongValue;
}

- (id)SQLQueryLogger
{
  delegate = [(EDPersistenceDatabaseConnection *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(EDPersistenceDatabaseConnection *)self delegate];
    queryLogger = [delegate2 queryLogger];
  }

  else
  {
    queryLogger = 0;
  }

  return queryLogger;
}

- (BOOL)protectedDatabaseAttached
{
  if (self)
  {
    return OUTLINED_FUNCTION_4_1(self->_protectedDatabaseName);
  }

  else
  {
    return OUTLINED_FUNCTION_4_1(0);
  }
}

- (EDPersistenceDatabaseConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__EDPersistenceDatabaseConnection_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_75 != -1)
  {
    dispatch_once(&log_onceToken_75, block);
  }

  v2 = log_log_75;

  return v2;
}

- (void)open
{
  sqlConnection = [(EDPersistenceDatabaseConnection *)self sqlConnection];
  isOpen = [sqlConnection isOpen];

  if (isOpen)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDPersistenceDatabaseConnection.m" lineNumber:300 description:@"EDPersistenceDatabaseConnection open called when already open"];
  }

  sqlConnection2 = [(EDPersistenceDatabaseConnection *)self sqlConnection];
  v5 = [sqlConnection2 url];
  path = [v5 path];
  fileSystemRepresentation = [path fileSystemRepresentation];

  if (([sqlConnection2 openWithError:0] & 1) == 0)
  {
    basePath = [(EDPersistenceDatabaseConnection *)self basePath];

    if (!basePath || ([MEMORY[0x1E696AC08] defaultManager], v9 = objc_claimAutoreleasedReturnValue(), -[EDPersistenceDatabaseConnection basePath](self, "basePath"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v10, 1, 0, 0), v10, v9, (objc_msgSend(sqlConnection2, "openWithError:", 0) & 1) == 0))
    {
      basePath2 = [(EDPersistenceDatabaseConnection *)self basePath];

      if (!basePath2)
      {
        goto LABEL_20;
      }

      if (self && fileSystemRepresentation)
      {
        chmod(fileSystemRepresentation, 0x180u);
      }

      if (![sqlConnection2 openWithError:0])
      {
        goto LABEL_20;
      }
    }
  }

  if ([sqlConnection2 isOpen] && -[EDPersistenceDatabaseConnection configureSQLConnection](self, "configureSQLConnection"))
  {
LABEL_20:
    if ([sqlConnection2 isOpen])
    {
      [sqlConnection2 finalizeStatementsWithError:0];
      [sqlConnection2 close];
    }
  }
}

- (int)configureSQLConnection
{
  sqlConnection = [(EDPersistenceDatabaseConnection *)self sqlConnection];
  isOpen = [sqlConnection isOpen];

  if ((isOpen & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDPersistenceDatabaseConnection.m" lineNumber:360 description:@"configureSQLConnection called on a closed connection"];
  }

  sqlConnection2 = [(EDPersistenceDatabaseConnection *)self sqlConnection];
  sqlDB = [sqlConnection2 sqlDB];

  function = sqlite3_create_function(sqlDB, "and64", 2, 1, 0, and64, 0, 0);
  [(EDPersistenceDatabaseConnection *)self handleSQLResult:function message:@"error creating user function and64"];
  if (!function)
  {
    v9 = sqlite3_exec(sqlDB, "PRAGMA foreign_keys = ON;", 0, 0, 0);
    if (v9)
    {
      function = v9;
      v10 = @"error enabling foreign key support";
LABEL_8:
      [(EDPersistenceDatabaseConnection *)self handleSQLResult:function message:v10];
      return function;
    }

    function = sqlite3_busy_timeout(sqlDB, 0x7FFFFFFF);
    if (function)
    {
      v10 = @"error setting busy timeout";
      goto LABEL_8;
    }
  }

  return function;
}

- (BOOL)isValid
{
  sqlConnection = [(EDPersistenceDatabaseConnection *)self sqlConnection];
  isOpen = [sqlConnection isOpen];

  return isOpen;
}

void __38__EDPersistenceDatabaseConnection_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_75;
  log_log_75 = v1;
}

- (EDPersistenceDatabaseConnection)initWithBasePath:(id)path databaseName:(id)name isWriter:(BOOL)writer delegate:(id)delegate
{
  pathCopy = path;
  nameCopy = name;
  delegateCopy = delegate;
  v23.receiver = self;
  v23.super_class = EDPersistenceDatabaseConnection;
  v14 = [(EDPersistenceDatabaseConnection *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_delegate, delegateCopy);
    objc_storeStrong(&v15->_basePath, path);
    v15->_isWriter = writer;
    v16 = [(EDPersistenceDatabaseConnection *)v15 _databasePathForFileName:nameCopy];
    basePath = [(EDPersistenceDatabaseConnection *)v15 basePath];

    if (basePath)
    {
      v18 = 0;
    }

    else
    {
      v18 = 3;
    }

    v19 = [delegateCopy urlForDatabasePath:v16 type:v18];

    v20 = [objc_alloc(MEMORY[0x1E699B8E0]) initWithURL:v19];
    sqlConnection = v15->_sqlConnection;
    v15->_sqlConnection = v20;
  }

  return v15;
}

- (id)_databasePathForFileName:(void *)name
{
  v3 = a2;
  if (name)
  {
    basePath = [name basePath];
    v5 = basePath;
    if (basePath)
    {
      v6 = [basePath stringByAppendingPathComponent:v3];
    }

    else
    {
      v6 = v3;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (EDPersistenceDatabaseConnection)initWithSQLDB:(sqlite3 *)b isWriter:(BOOL)writer delegate:(id)delegate
{
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = EDPersistenceDatabaseConnection;
  v9 = [(EDPersistenceDatabaseConnection *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v10->_isWriter = writer;
    v11 = [objc_alloc(MEMORY[0x1E699B8E0]) initWithSQLDB:b];
    sqlConnection = v10->_sqlConnection;
    v10->_sqlConnection = v11;
  }

  return v10;
}

- (id)preparedStatementForQueryString:(id)string
{
  stringCopy = string;
  sqlConnection = [(EDPersistenceDatabaseConnection *)self sqlConnection];
  transactionLabel = [(EDPersistenceDatabaseConnection *)self transactionLabel];
  sQLQueryLogger = [(EDPersistenceDatabaseConnection *)self SQLQueryLogger];
  v8 = [sqlConnection preparedStatementForQueryString:stringCopy transactionLabel:transactionLabel queryLogger:sQLQueryLogger];

  if (!v8)
  {
    stringCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Error preparing statement for query %@", stringCopy];
    [(EDPersistenceDatabaseConnection *)self handleSQLResult:sqlite3_errcode([(EDPersistenceDatabaseConnection *)self sqlDB]) message:stringCopy];
  }

  return v8;
}

- (BOOL)executeSelectStatement:(id)statement withBlock:(id)block error:(id *)error
{
  blockCopy = block;
  queryString = [statement queryString];
  v10 = [(EDPersistenceDatabaseConnection *)self preparedStatementForQueryString:queryString];

  LOBYTE(error) = [(EDPersistenceDatabaseConnection *)self _executePreparedStatement:v10 withBlock:blockCopy description:@"SELECT statement" error:error];
  return error;
}

- (uint64_t)_executePreparedStatement:(void *)statement withBlock:(void *)block description:(id *)description error:
{
  v9 = a2;
  statementCopy = statement;
  blockCopy = block;
  if (self)
  {
    v18 = 0;
    if (description)
    {
      descriptionCopy = description;
    }

    else
    {
      descriptionCopy = &v18;
    }

    v13 = [v9 executeUsingBlock:statementCopy error:&v18];
    v14 = v13;
    if (description)
    {
      v15 = 1;
    }

    else
    {
      v15 = v13;
    }

    if ((v15 & 1) == 0)
    {
      blockCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error while executing %@", blockCopy];
      [self handleError:v18 message:blockCopy];
    }

    *descriptionCopy = v18;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)executeInsertStatement:(id)statement error:(id *)error
{
  statementCopy = statement;
  if ([statementCopy isEmpty])
  {
    v7 = 1;
  }

  else
  {
    queryString = [statementCopy queryString];
    v9 = [(EDPersistenceDatabaseConnection *)self preparedStatementForQueryString:queryString];
    v10 = v9;
    if (v9)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __64__EDPersistenceDatabaseConnection_executeInsertStatement_error___block_invoke;
      v13[3] = &unk_1E8255BB8;
      v11 = v9;
      v14 = v11;
      [statementCopy enumerateBindingIndicesAndValuesUsingBlock:v13];
      v7 = [(EDPersistenceDatabaseConnection *)self _executePreparedStatement:v11 withBlock:0 description:@"INSERT statement" error:error];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

void __64__EDPersistenceDatabaseConnection_executeInsertStatement_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 ef_SQLBinding];
  [v5 bindToStatement:*(a1 + 32) usingIndex:a2];
}

- (BOOL)executeInsertStatement:(id)statement rowsChanged:(unint64_t *)changed
{
  statementCopy = statement;
  v7 = [(EDPersistenceDatabaseConnection *)self executeInsertStatement:statementCopy error:0];
  if (changed)
  {
    *changed = sqlite3_changes([(EDPersistenceDatabaseConnection *)self sqlDB]);
  }

  return v7;
}

- (BOOL)executeUpdateStatement:(id)statement error:(id *)error
{
  statementCopy = statement;
  queryString = [statementCopy queryString];
  v8 = [(EDPersistenceDatabaseConnection *)self preparedStatementForQueryString:queryString];
  v9 = v8;
  if (v8)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __64__EDPersistenceDatabaseConnection_executeUpdateStatement_error___block_invoke;
    v13[3] = &unk_1E8255BE0;
    v10 = v8;
    v14 = v10;
    [statementCopy enumerateBindingNamesAndValuesUsingBlock:v13];
    v11 = [(EDPersistenceDatabaseConnection *)self _executePreparedStatement:v10 withBlock:0 description:@"UPDATE statement" error:error];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __64__EDPersistenceDatabaseConnection_executeUpdateStatement_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 ef_SQLBinding];
  [v5 bindToStatement:*(a1 + 32) usingName:v6];
}

- (BOOL)executeUpdateStatement:(id)statement rowsChanged:(unint64_t *)changed
{
  statementCopy = statement;
  v7 = [(EDPersistenceDatabaseConnection *)self executeUpdateStatement:statementCopy error:0];
  if (changed)
  {
    *changed = sqlite3_changes([(EDPersistenceDatabaseConnection *)self sqlDB]);
  }

  return v7;
}

- (BOOL)executeUpsertStatement:(id)statement error:(id *)error
{
  statementCopy = statement;
  if ([statementCopy isEmpty])
  {
    v7 = 1;
  }

  else
  {
    queryString = [statementCopy queryString];
    v9 = [(EDPersistenceDatabaseConnection *)self preparedStatementForQueryString:queryString];
    v10 = v9;
    if (v9)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __64__EDPersistenceDatabaseConnection_executeUpsertStatement_error___block_invoke;
      v13[3] = &unk_1E8255BE0;
      v11 = v9;
      v14 = v11;
      [statementCopy enumerateBindingNamesAndValuesUsingBlock:v13];
      v7 = [(EDPersistenceDatabaseConnection *)self _executePreparedStatement:v11 withBlock:0 description:@"UPSERT statement" error:error];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

void __64__EDPersistenceDatabaseConnection_executeUpsertStatement_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 ef_SQLBinding];
  [v5 bindToStatement:*(a1 + 32) usingName:v6];
}

- (BOOL)executeUpsertStatement:(id)statement rowsChanged:(unint64_t *)changed
{
  statementCopy = statement;
  v7 = [(EDPersistenceDatabaseConnection *)self executeUpsertStatement:statementCopy error:0];
  if (changed)
  {
    *changed = sqlite3_changes([(EDPersistenceDatabaseConnection *)self sqlDB]);
  }

  return v7;
}

- (BOOL)executeDeleteStatement:(id)statement error:(id *)error
{
  statementCopy = statement;
  v7 = statementCopy;
  if (error)
  {
    sqlConnection = [(EDPersistenceDatabaseConnection *)self sqlConnection];
    queryString = [v7 queryString];
    LOBYTE(error) = [sqlConnection executeStatementString:queryString error:error];
  }

  else
  {
    sqlConnection = [statementCopy queryString];
    error = [(EDPersistenceDatabaseConnection *)self executeStatementString:sqlConnection errorMessage:@"Error while executing DELETE statement"];
  }

  return error;
}

- (BOOL)executeDeleteStatement:(id)statement rowsChanged:(unint64_t *)changed
{
  statementCopy = statement;
  v7 = [(EDPersistenceDatabaseConnection *)self executeDeleteStatement:statementCopy error:0];
  if (changed)
  {
    *changed = sqlite3_changes([(EDPersistenceDatabaseConnection *)self sqlDB]);
  }

  return v7;
}

- (BOOL)executeStatementString:(id)string errorMessage:(id)message
{
  stringCopy = string;
  messageCopy = message;
  sqlConnection = [(EDPersistenceDatabaseConnection *)self sqlConnection];
  v12 = 0;
  v9 = [sqlConnection executeStatementString:stringCopy error:&v12];
  v10 = v12;

  if ((v9 & 1) == 0)
  {
    [(EDPersistenceDatabaseConnection *)self handleError:v10 message:messageCopy];
  }

  return v9;
}

- (unint64_t)countForSelectStatement:(id)statement
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__EDPersistenceDatabaseConnection_countForSelectStatement___block_invoke;
  v5[3] = &unk_1E8250418;
  v5[4] = &v6;
  [(EDPersistenceDatabaseConnection *)self executeSelectStatement:statement withBlock:v5 error:0];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __59__EDPersistenceDatabaseConnection_countForSelectStatement___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 objectAtIndexedSubscript:0];
  v4 = [v3 numberValue];
  *(*(*(a1 + 32) + 8) + 24) = [v4 unsignedIntegerValue];
}

- (id)databaseIDsForSelectStatement:(id)statement
{
  statementCopy = statement;
  v5 = objc_alloc_init(MEMORY[0x1E699B810]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__EDPersistenceDatabaseConnection_databaseIDsForSelectStatement___block_invoke;
  v8[3] = &unk_1E8250300;
  v6 = v5;
  v9 = v6;
  [(EDPersistenceDatabaseConnection *)self executeSelectStatement:statementCopy withBlock:v8 error:0];

  return v6;
}

void __65__EDPersistenceDatabaseConnection_databaseIDsForSelectStatement___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 objectAtIndexedSubscript:0];
  v4 = [v3 databaseIDValue];

  [*(a1 + 32) addIndex:v4];
}

- (int64_t)lastInsertedDatabaseID
{
  sqlDB = [(EDPersistenceDatabaseConnection *)self sqlDB];

  return sqlite3_last_insert_rowid(sqlDB);
}

- (void)clearLastInsertedDatabaseID
{
  sqlDB = [(EDPersistenceDatabaseConnection *)self sqlDB];

  sqlite3_set_last_insert_rowid(sqlDB, 0);
}

- (BOOL)performWithOptions:(unint64_t)options transactionError:(id *)error block:(id)block
{
  optionsCopy = options;
  v32 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v10 = objc_autoreleasePoolPush();
  sqlConnection = [(EDPersistenceDatabaseConnection *)self sqlConnection];
  if (optionsCopy)
  {
    v30 = 0;
    v12 = [(EDPersistenceDatabaseConnection *)self _startTransactionWithSQLConnection:sqlConnection options:optionsCopy error:&v30];
    v13 = v30;
    if (v13)
    {
      v14 = v13;
      v15 = +[EDPersistenceDatabaseConnection log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        ef_publicDescription = [v14 ef_publicDescription];
        [(EDPersistenceDatabaseConnection *)self performWithOptions:ef_publicDescription transactionError:buf block:v15];
      }

      if (v12)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"EDPersistenceDatabaseConnection.m" lineNumber:403 description:@"Transaction error set despite not needing/attempting to take a transaction"];
      }

LABEL_20:
      v20 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v12 = 0;
  }

  v18 = blockCopy[2](blockCopy, self);
  if (!v12)
  {
    if (v18)
    {
      v14 = 0;
      v20 = 1;
      goto LABEL_25;
    }

    if (optionsCopy)
    {
      v22 = +[EDPersistenceDatabaseConnection log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [EDPersistenceDatabaseConnection performWithOptions:transactionError:block:];
      }

      currentThread = [MEMORY[0x1E696AF00] currentThread];
      threadDictionary = [currentThread threadDictionary];

      [threadDictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"_EDPersistenceDatabaseConnectionNestedBlockFailed"];
      v14 = 0;
    }

    else
    {
      v21 = +[EDPersistenceDatabaseConnection log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [EDPersistenceDatabaseConnection performWithOptions:transactionError:block:];
      }

      v14 = 0;
    }

    goto LABEL_20;
  }

  if (v18)
  {
    v19 = 1;
  }

  else
  {
    v25 = +[EDPersistenceDatabaseConnection log];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [EDPersistenceDatabaseConnection performWithOptions:transactionError:block:];
    }

    v19 = 0;
  }

  v29 = 0;
  v20 = [(EDPersistenceDatabaseConnection *)self _finishTransactionWithSQLConnection:sqlConnection afterSuccess:v19 transactionError:&v29];
  v14 = v29;
LABEL_25:

  objc_autoreleasePoolPop(v10);
  if (error)
  {
    v26 = v14;
    *error = v14;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v20;
}

- (uint64_t)_startTransactionWithSQLConnection:(char)connection options:(uint64_t)options error:
{
  v7 = a2;
  if (self)
  {
    currentThread = [MEMORY[0x1E696AF00] currentThread];
    threadDictionary = [currentThread threadDictionary];

    v10 = [threadDictionary objectForKeyedSubscript:@"_EDPersistenceDatabaseConnectionInTransaction"];
    bOOLValue = [v10 BOOLValue];

    if ((bOOLValue & 1) != 0 || ((connection & 2) != 0 ? (v12 = [self transactionTypeForWriting]) : (v12 = 0), !objc_msgSend(v7, "beginTransaction:error:", v12, options)))
    {
      self = 0;
LABEL_26:

      goto LABEL_27;
    }

    [threadDictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"_EDPersistenceDatabaseConnectionInTransaction"];
    if ((connection & 4) == 0)
    {
      v13 = [(EDPersistenceDatabaseConnection *)self _fetchTransactionWriteGenerationWithSQLConnection:v7];
      v14 = v13;
      if ((connection & 2) != 0)
      {
        v14 = v13 + 1;
        [(EDPersistenceDatabaseConnection *)self _storeTransactionWriteGenerationWithSQLConnection:v7 newGeneration:(v13 + 1)];
        if (EFSQLVerboseDebugLoggingEnabled())
        {
          v15 = +[EDPersistenceDatabaseConnection log];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            [EDPersistenceDatabaseConnection _startTransactionWithSQLConnection:options:error:];
          }

          goto LABEL_24;
        }
      }

      else if (EFSQLVerboseDebugLoggingEnabled())
      {
        v15 = +[EDPersistenceDatabaseConnection log];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [EDPersistenceDatabaseConnection _startTransactionWithSQLConnection:options:error:];
        }

        goto LABEL_24;
      }

LABEL_25:
      v16 = [MEMORY[0x1E696AD98] numberWithLongLong:v14];
      [threadDictionary setObject:v16 forKeyedSubscript:@"_EDPersistenceDatabaseConnectionTransactionGeneration"];

      self = 1;
      goto LABEL_26;
    }

    if ((connection & 2) != 0)
    {
      if (EFSQLVerboseDebugLoggingEnabled())
      {
        v15 = +[EDPersistenceDatabaseConnection log];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [EDPersistenceDatabaseConnection _startTransactionWithSQLConnection:options:error:];
        }

        goto LABEL_20;
      }
    }

    else if (EFSQLVerboseDebugLoggingEnabled())
    {
      v15 = +[EDPersistenceDatabaseConnection log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [EDPersistenceDatabaseConnection _startTransactionWithSQLConnection:options:error:];
      }

LABEL_20:
      v14 = 0;
LABEL_24:

      goto LABEL_25;
    }

    v14 = 0;
    goto LABEL_25;
  }

LABEL_27:

  return self;
}

- (uint64_t)_finishTransactionWithSQLConnection:(int)connection afterSuccess:(void *)success transactionError:
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (!self)
  {
    v16 = 0;
    goto LABEL_25;
  }

  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  if (!connection)
  {
LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  v10 = [threadDictionary objectForKeyedSubscript:@"_EDPersistenceDatabaseConnectionNestedBlockFailed"];
  bOOLValue = [v10 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    if (([self hadIOError] & 1) == 0)
    {
      v25 = 0;
      v15 = &v25;
      v16 = [v7 commitTransactionWithError:&v25];
      v17 = @"commit";
      goto LABEL_15;
    }

    goto LABEL_6;
  }

  v12 = 1;
LABEL_7:
  v13 = +[EDPersistenceDatabaseConnection log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    if (v12)
    {
      v14 = @" (due to nested block failure)";
    }

    else if ([self hadIOError])
    {
      v14 = @"(due to IOError)";
    }

    else
    {
      v14 = &stru_1F45B4608;
    }

    [(EDPersistenceDatabaseConnection *)v14 _finishTransactionWithSQLConnection:v32 afterSuccess:self transactionError:v13];
  }

  v24 = 0;
  v15 = &v24;
  [v7 rollbackTransactionWithError:&v24];
  v16 = 0;
  v17 = @"rollback";
LABEL_15:
  v18 = *v15;
  if (v18)
  {
    v19 = +[EDPersistenceDatabaseConnection log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      ef_publicDescription = [v18 ef_publicDescription];
      *buf = 138543874;
      selfCopy = self;
      v28 = 2114;
      v29 = v17;
      v30 = 2114;
      v31 = ef_publicDescription;
      _os_log_error_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_ERROR, "Transaction on connection %{public}@ %{public}@ failed: %{public}@", buf, 0x20u);
    }

LABEL_21:

    goto LABEL_22;
  }

  if (EFSQLVerboseDebugLoggingEnabled())
  {
    v19 = +[EDPersistenceDatabaseConnection log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [EDPersistenceDatabaseConnection _finishTransactionWithSQLConnection:afterSuccess:transactionError:];
    }

    goto LABEL_21;
  }

LABEL_22:
  if (success)
  {
    v21 = v18;
    *success = v18;
  }

  [threadDictionary setObject:0 forKeyedSubscript:@"_EDPersistenceDatabaseConnectionInTransaction"];
  [threadDictionary setObject:0 forKeyedSubscript:@"_EDPersistenceDatabaseConnectionNestedBlockFailed"];
  [threadDictionary setObject:0 forKeyedSubscript:@"_EDPersistenceDatabaseConnectionTransactionGeneration"];

LABEL_25:
  v22 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)_fetchTransactionWriteGenerationWithSQLConnection:(void *)connection
{
  v3 = a2;
  if (connection)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDPersistenceDatabaseConnection _fetchTransactionWriteGenerationWithSQLConnection:]"];
    sQLQueryLogger = [connection SQLQueryLogger];
    v6 = [v3 preparedStatementForQueryString:@"SELECT value FROM properties WHERE key = :key" transactionLabel:v4 queryLogger:sQLQueryLogger];

    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v7 setObject:@"WriteTransactionGeneration" forKeyedSubscript:@":key"];
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v11 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __85__EDPersistenceDatabaseConnection__fetchTransactionWriteGenerationWithSQLConnection___block_invoke;
      v12[3] = &unk_1E8250418;
      v12[4] = &v13;
      v8 = [v6 executeWithNamedBindings:v7 usingBlock:v12 error:&v11];
      v9 = v11;
      if ((v8 & 1) == 0)
      {
        [connection handleError:v9 message:@"Fetching transaction write generation"];
      }

      connection = v14[3];
      _Block_object_dispose(&v13, 8);
    }

    else
    {
      connection = 0;
    }
  }

  return connection;
}

- (void)_storeTransactionWriteGenerationWithSQLConnection:(uint64_t)connection newGeneration:
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (self)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDPersistenceDatabaseConnection _storeTransactionWriteGenerationWithSQLConnection:newGeneration:]"];
    sQLQueryLogger = [self SQLQueryLogger];
    v8 = [v5 preparedStatementForQueryString:@"INSERT OR REPLACE INTO properties (key transactionLabel:value) VALUES (:key queryLogger:{:value)", v6, sQLQueryLogger}];

    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v9 setObject:@"WriteTransactionGeneration" forKeyedSubscript:@":key"];
      v10 = [MEMORY[0x1E696AD98] numberWithLongLong:connection];
      [v9 setObject:v10 forKeyedSubscript:@":value"];

      v16 = 0;
      v11 = [v8 executeWithNamedBindings:v9 usingBlock:0 error:&v16];
      v12 = v16;
      if ((v11 & 1) == 0)
      {
        v13 = +[EDPersistenceDatabaseConnection log];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          ef_publicDescription = [v12 ef_publicDescription];
          [(EDPersistenceDatabaseConnection *)ef_publicDescription _storeTransactionWriteGenerationWithSQLConnection:buf newGeneration:v13];
        }

        [self handleError:v12 message:@"Storing transaction write generation"];
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __85__EDPersistenceDatabaseConnection__fetchTransactionWriteGenerationWithSQLConnection___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectAtIndexedSubscript:0];
  *(*(*(a1 + 32) + 8) + 24) = [v3 int64Value];
}

- (BOOL)checkForConnectionErrorWithMessage:(id)message
{
  messageCopy = message;
  v5 = sqlite3_errcode([(EDPersistenceDatabaseConnection *)self sqlDB]);
  [(EDPersistenceDatabaseConnection *)self handleSQLResult:v5 message:messageCopy];
  v6 = v5 == 9;
  if (!v5)
  {
    v6 = 1;
  }

  v7 = (v5 - 100) < 2 || v6;

  return v7;
}

- (void)handleError:(id)error message:(id)message
{
  errorCopy = error;
  messageCopy = message;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    v8 = [domain isEqualToString:*MEMORY[0x1E699B770]];

    if (v8)
    {
      -[EDPersistenceDatabaseConnection handleSQLResult:message:](self, "handleSQLResult:message:", [errorCopy code], messageCopy);
    }
  }
}

- (void)handleSQLResult:(int)result message:(id)message
{
  messageCopy = message;
  [(EDPersistenceDatabaseConnection *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDPersistenceDatabaseConnection handleSQLResult:message:]", "EDPersistenceDatabaseConnection.m", 578, "0");
}

- (NSString)fullPath
{
  sqlConnection = [(EDPersistenceDatabaseConnection *)self sqlConnection];
  v3 = [sqlConnection url];
  path = [v3 path];

  return path;
}

- (BOOL)databaseIsAttached:(id)attached
{
  attachedCopy = attached;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v5 = [(EDPersistenceDatabaseConnection *)self preparedStatementForQueryString:@"PRAGMA database_list"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__EDPersistenceDatabaseConnection_databaseIsAttached___block_invoke;
  v12[3] = &unk_1E8255C08;
  v6 = attachedCopy;
  v13 = v6;
  v14 = &v15;
  v11 = 0;
  v7 = [v5 executeUsingBlock:v12 error:&v11];
  v8 = v11;
  if ((v7 & 1) == 0)
  {
    [(EDPersistenceDatabaseConnection *)self handleError:v8 message:@"Getting attached databases"];
  }

  v9 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v9;
}

void __54__EDPersistenceDatabaseConnection_databaseIsAttached___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 objectAtIndexedSubscript:1];
  v7 = [v6 stringValue];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (BOOL)tableExists:(id)exists inDatabase:(id)database
{
  v22[1] = *MEMORY[0x1E69E9840];
  existsCopy = exists;
  databaseCopy = database;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  if (databaseCopy)
  {
    databaseCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT 1 FROM %@.sqlite_master WHERE name = ? AND type = 'table'", databaseCopy];
  }

  else
  {
    databaseCopy = @"SELECT 1 FROM sqlite_master WHERE name = ? AND type = 'table'";
  }

  v9 = [(EDPersistenceDatabaseConnection *)self preparedStatementForQueryString:databaseCopy];
  v22[0] = existsCopy;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v16 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58__EDPersistenceDatabaseConnection_tableExists_inDatabase___block_invoke;
  v17[3] = &unk_1E8250418;
  v17[4] = &v18;
  v11 = [v9 executeWithIndexedBindings:v10 usingBlock:v17 error:&v16];
  v12 = v16;

  if ((v11 & 1) == 0)
  {
    [(EDPersistenceDatabaseConnection *)self handleError:v12 message:@"Checking for existence of table"];
  }

  v13 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  v14 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

uint64_t __58__EDPersistenceDatabaseConnection_tableExists_inDatabase___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a4 = 1;
  return result;
}

- (BOOL)columnExists:(id)exists inTable:(id)table database:(id)database type:(unint64_t *)type
{
  existsCopy = exists;
  tableCopy = table;
  databaseCopy = database;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  if (databaseCopy)
  {
    tableCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"PRAGMA %@.table_info(%@)", databaseCopy, tableCopy];
  }

  else
  {
    tableCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"PRAGMA table_info(%@)", tableCopy];
  }

  v14 = tableCopy;
  v15 = [(EDPersistenceDatabaseConnection *)self preparedStatementForQueryString:tableCopy];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __70__EDPersistenceDatabaseConnection_columnExists_inTable_database_type___block_invoke;
  v22[3] = &unk_1E8255C30;
  v16 = existsCopy;
  v23 = v16;
  v24 = &v30;
  v25 = &v26;
  v21 = 0;
  v17 = [v15 executeUsingBlock:v22 error:&v21];
  v18 = v21;
  if ((v17 & 1) == 0)
  {
    [(EDPersistenceDatabaseConnection *)self handleError:v18 message:@"Fetching column type"];
  }

  if (type)
  {
    *type = v27[3];
  }

  v19 = *(v31 + 24);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  return v19;
}

void __70__EDPersistenceDatabaseConnection_columnExists_inTable_database_type___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 objectAtIndexedSubscript:1];
  v7 = [v6 stringValue];

  if ([v7 isEqualToString:a1[4]])
  {
    *(*(a1[5] + 8) + 24) = 1;
    v8 = MEMORY[0x1E699B8D0];
    v9 = [v11 objectAtIndexedSubscript:2];
    v10 = [v9 stringValue];
    *(*(a1[6] + 8) + 24) = [v8 columnTypeForString:v10];

    *a4 = 1;
  }
}

- (BOOL)attachProtectedDatabaseWithName:(id)name url:(id)url error:(id *)error
{
  nameCopy = name;
  urlCopy = url;
  if (![(EDPersistenceDatabaseConnection *)self protectedDatabaseAttached]&& [(EDPersistenceDatabaseConnection *)self _attachDatabaseWithName:nameCopy url:urlCopy error:error])
  {
    if (self)
    {
      objc_setProperty_nonatomic_copy(self, v10, nameCopy, 16);
    }

    v13 = +[EDPersistenceDatabaseConnection log];
    [EDPersistenceDatabaseConnection attachProtectedDatabaseWithName:v13 url:self error:?];
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (uint64_t)_attachDatabaseWithName:(void *)name url:(uint64_t)url error:
{
  v7 = a2;
  nameCopy = name;
  if (self)
  {
    if (![self sqlDB])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__attachDatabaseWithName_url_error_ object:self file:@"EDPersistenceDatabaseConnection.m" lineNumber:782 description:@"Attaching database when not open"];
    }

    v9 = +[EDPersistenceDatabaseConnection log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [EDPersistenceDatabaseConnection _attachDatabaseWithName:url:error:];
    }

    sqlConnection = [self sqlConnection];
    v11 = MEMORY[0x1E696AEC0];
    absoluteString = [nameCopy absoluteString];
    ef_quotedSQLEscapedString = [absoluteString ef_quotedSQLEscapedString];
    v14 = [v11 stringWithFormat:@"ATTACH DATABASE %@ AS %@", ef_quotedSQLEscapedString, v7];

    v15 = [sqlConnection executeStatementString:v14 error:url];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)attachProtectedDatabaseWithName:(id)name error:(id *)error
{
  nameCopy = name;
  delegate = [(EDPersistenceDatabaseConnection *)self delegate];
  delegate2 = [(EDPersistenceDatabaseConnection *)self delegate];
  protectedDatabasePath = [delegate2 protectedDatabasePath];
  v10 = [delegate urlForDatabasePath:protectedDatabasePath type:{-[EDPersistenceDatabaseConnection _adjustedDatabaseTypeForType:](self, 1)}];

  LOBYTE(delegate) = [(EDPersistenceDatabaseConnection *)self attachProtectedDatabaseWithName:nameCopy url:v10 error:error];
  return delegate;
}

- (BOOL)attachProtectedDatabaseWithName:(id)name
{
  nameCopy = name;
  v9 = 0;
  v5 = [(EDPersistenceDatabaseConnection *)self attachProtectedDatabaseWithName:nameCopy error:&v9];
  v6 = v9;
  if (!v5)
  {
    nameCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"attaching %@", nameCopy];
    [(EDPersistenceDatabaseConnection *)self handleError:v6 message:nameCopy];
  }

  return v5;
}

- (uint64_t)_detachDatabaseWithName:(void *)name
{
  v3 = a2;
  if (name)
  {
    if (![name sqlDB])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__detachDatabaseWithName_ object:name file:@"EDPersistenceDatabaseConnection.m" lineNumber:793 description:@"Detaching database when not open"];
    }

    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DETACH DATABASE %@", v3];
    sqlConnection = [name sqlConnection];
    v11 = 0;
    v6 = [sqlConnection executeStatementString:v4 error:&v11];
    v7 = v11;

    if ((v6 & 1) == 0)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"detaching %@", v3];
      [name handleError:v7 message:v8];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)attachJournalDatabase:(id)database withName:(id)name error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  nameCopy = name;
  if ([(EDPersistenceDatabaseConnection *)self journalDatabaseAttached])
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    delegate = [(EDPersistenceDatabaseConnection *)self delegate];
    path = [databaseCopy path];
    v13 = [delegate urlForDatabasePath:path type:{-[EDPersistenceDatabaseConnection _adjustedDatabaseTypeForType:](self, 2)}];

    v10 = [(EDPersistenceDatabaseConnection *)self _attachDatabaseWithName:nameCopy url:v13 error:error];
    if (v10)
    {
      if (self)
      {
        objc_setProperty_nonatomic_copy(self, v14, nameCopy, 24);
      }

      [(EDPersistenceDatabaseConnection *)self setJournal:databaseCopy];
      [databaseCopy checkOut];
      v17 = +[EDPersistenceDatabaseConnection log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138543362;
        selfCopy = self;
        _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "Attached journal on connection %{public}@", &v18, 0xCu);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)attachJournalDatabase:(id)database withName:(id)name
{
  nameCopy = name;
  v11 = 0;
  v7 = [(EDPersistenceDatabaseConnection *)self attachJournalDatabase:database withName:nameCopy error:&v11];
  v8 = v11;
  if (!v7)
  {
    nameCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"attaching %@", nameCopy];
    [(EDPersistenceDatabaseConnection *)self handleError:v8 message:nameCopy];
  }

  return v7;
}

- (BOOL)detachJournalDatabase
{
  journalDatabaseAttached = [(EDPersistenceDatabaseConnection *)self journalDatabaseAttached];
  if (journalDatabaseAttached)
  {
    [(EDPersistenceDatabaseConnection *)self detachJournalDatabase];
    LOBYTE(journalDatabaseAttached) = v5;
  }

  return journalDatabaseAttached;
}

- (void)performBlockAfterTransaction:(id)transaction
{
  transactionCopy = transaction;
  delegate = [(EDPersistenceDatabaseConnection *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDPersistenceDatabaseConnection.m" lineNumber:807 description:@"performBlockAfterTransaction not supported (unit test?)."];
  }

  [delegate performBlockAfterTransaction:transactionCopy];
}

- (id)selectLastProcessedAttachmentID
{
  selfCopy = self;
  if (self)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__39;
    v12 = __Block_byref_object_dispose__39;
    v13 = 0;
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT value FROM properties WHERE key = '%@'", @"com.apple.mail.searchableIndex.lastProcessedAttachmentIDKey"];
    v3 = [selfCopy preparedStatementForQueryString:v2];

    v6 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __96__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__selectLastProcessedAttachmentID__block_invoke;
    v7[3] = &unk_1E8250418;
    v7[4] = &v8;
    [v3 executeUsingBlock:v7 error:&v6];
    v4 = v6;
    [selfCopy handleError:v4 message:@"Selecting previous conversation daily export sync anchor"];
    selfCopy = v9[5];

    _Block_object_dispose(&v8, 8);
  }

  return selfCopy;
}

void __96__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__selectLastProcessedAttachmentID__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 objectForKeyedSubscript:@"value"];
  v4 = [v3 databaseIDValue];

  if (v4)
  {
    v5 = [[EDPersistedAttachmentID alloc] initWithDatabaseID:v4];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (uint64_t)setLastProcessedAttachmentID:(void *)d
{
  v3 = a2;
  if (d)
  {
    v4 = [d preparedStatementForQueryString:{@"INSERT OR REPLACE INTO properties (key, value) VALUES (:key, :value)"}];
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v5 setObject:@"com.apple.mail.searchableIndex.lastProcessedAttachmentIDKey" forKeyedSubscript:@":key"];
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v3, "databaseID")}];
    [v5 setObject:v6 forKeyedSubscript:@":value"];

    v10 = 0;
    v7 = [v4 executeWithNamedBindings:v5 usingBlock:0 error:&v10];
    v8 = v10;
    if ((v7 & 1) == 0)
    {
      [d handleError:v8 message:@"Setting latest value for lastProcessAttachmentID"];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)attachmentDataForMessageWithIdentifier:(void *)identifier
{
  v3 = a2;
  v4 = v3;
  if (identifier)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT ma.ROWID, m.ROWID, ma.mime_part_number, ma.name, m.mailbox FROM messages AS m LEFT OUTER JOIN message_attachments AS ma ON (ma.global_message_id = m.global_message_id) LEFT OUTER JOIN searchable_attachments AS s ON (ma.ROWID = s.attachment_id) WHERE m.ROWID = %d AND s.attachment_id IS NULL AND ma.attachment IS NOT NULL", objc_msgSend(v3, "intValue")];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = [identifier preparedStatementForQueryString:v5];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __104__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__attachmentDataForMessageWithIdentifier___block_invoke;
    v15[3] = &unk_1E8250300;
    v8 = v6;
    v16 = v8;
    v14 = 0;
    v9 = [v7 executeUsingBlock:v15 error:&v14];
    v10 = v14;
    if ((v9 & 1) == 0)
    {
      [identifier handleError:v10 message:@"Searching for attachment data for message identifier"];
    }

    v11 = v16;
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __104__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__attachmentDataForMessageWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [EDPersistedAttachmentID alloc];
  v4 = [v16 objectAtIndexedSubscript:0];
  v5 = -[EDPersistedAttachmentID initWithDatabaseID:](v3, "initWithDatabaseID:", [v4 databaseIDValue]);

  v6 = [EDPersistedMessageID alloc];
  v7 = [v16 objectAtIndexedSubscript:1];
  v8 = -[EDPersistedMessageID initWithDatabaseID:](v6, "initWithDatabaseID:", [v7 databaseIDValue]);

  v9 = [v16 objectAtIndexedSubscript:2];
  v10 = [v9 stringValue];

  v11 = [v16 objectAtIndexedSubscript:3];
  v12 = [v11 stringValue];

  v13 = [v16 objectAtIndexedSubscript:4];
  v14 = [v13 databaseIDValue];

  v15 = [[EDSearchableIndexPersistenceAttachmentDatum alloc] initWithAttachmentPersistentID:v5 messagePersistentID:v8 attachmentID:v10 name:v12 mailboxID:v14];
  [*(a1 + 32) addObject:v15];
}

- (id)attachmentDataForItemsRequiringIndexingExcludingIDs:(void *)ds lastProcessedAttachmentID:(uint64_t)d limit:(void *)limit cancelationToken:
{
  v9 = a2;
  dsCopy = ds;
  limitCopy = limit;
  if (self)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT ma.ROWID, m.ROWID, ma.mime_part_number, ma.name, m.mailbox FROM messages AS m LEFT OUTER JOIN message_attachments AS ma ON (ma.global_message_id = m.global_message_id) LEFT OUTER JOIN searchable_attachments AS s ON (ma.ROWID = s.attachment_id) WHERE ma.ROWID > %lld AND s.attachment_id IS NULL AND ma.attachment IS NOT NULL ORDER BY m.ROWID", objc_msgSend(dsCopy, "databaseID")];
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = [self preparedStatementForQueryString:v12];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __166__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__attachmentDataForItemsRequiringIndexingExcludingIDs_lastProcessedAttachmentID_limit_cancelationToken___block_invoke;
    v22[3] = &unk_1E8256FB0;
    v23 = limitCopy;
    v24 = v9;
    v15 = v13;
    v25 = v15;
    dCopy = d;
    v21 = 0;
    v16 = [v14 executeUsingBlock:v22 error:&v21];
    v17 = v21;
    if ((v16 & 1) == 0)
    {
      [self handleError:v17 message:@"Searching for attachments to index"];
    }

    v18 = v25;
    v19 = v15;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void __166__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__attachmentDataForItemsRequiringIndexingExcludingIDs_lastProcessedAttachmentID_limit_cancelationToken___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = a2;
  if ([*(a1 + 32) isCanceled])
  {
    *a4 = 1;
  }

  else
  {
    v6 = [EDPersistedAttachmentID alloc];
    v7 = [v19 objectAtIndexedSubscript:0];
    v8 = -[EDPersistedAttachmentID initWithDatabaseID:](v6, "initWithDatabaseID:", [v7 databaseIDValue]);

    if (([*(a1 + 40) containsObject:v8] & 1) == 0)
    {
      v9 = [EDPersistedMessageID alloc];
      v10 = [v19 objectAtIndexedSubscript:1];
      v11 = -[EDPersistedMessageID initWithDatabaseID:](v9, "initWithDatabaseID:", [v10 databaseIDValue]);

      v12 = [v19 objectAtIndexedSubscript:2];
      v13 = [v12 stringValue];

      v14 = [v19 objectAtIndexedSubscript:3];
      v15 = [v14 stringValue];

      v16 = [v19 objectAtIndexedSubscript:4];
      v17 = [v16 databaseIDValue];

      v18 = [[EDSearchableIndexPersistenceAttachmentDatum alloc] initWithAttachmentPersistentID:v8 messagePersistentID:v11 attachmentID:v13 name:v15 mailboxID:v17];
      [*(a1 + 48) addObject:v18];
      if ([*(a1 + 48) count] >= *(a1 + 56))
      {
        *a4 = 1;
      }
    }
  }
}

- (id)identifiersForAttachmentsWithQuery:(void *)query
{
  v3 = a2;
  if (query)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [query preparedStatementForQueryString:v3];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __100__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__identifiersForAttachmentsWithQuery___block_invoke;
    v13[3] = &unk_1E8250300;
    v6 = v4;
    v14 = v6;
    v12 = 0;
    v7 = [v5 executeUsingBlock:v13 error:&v12];
    v8 = v12;
    if ((v7 & 1) == 0)
    {
      [query handleError:v8 message:@"searching for removed attachment identifiers"];
    }

    v9 = v14;
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __100__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__identifiersForAttachmentsWithQuery___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [EDPersistedAttachmentID alloc];
  v4 = [v7 objectAtIndexedSubscript:0];
  v5 = -[EDPersistedAttachmentID initWithDatabaseID:](v3, "initWithDatabaseID:", [v4 databaseIDValue]);

  v6 = [EDSearchableIndexAttachmentItem identifierForAttachmentPersistentID:v5];
  [*(a1 + 32) addObject:v6];
}

- (id)selectAttachmentIdentifiersForTransactions:(void *)transactions
{
  v3 = a2;
  v4 = v3;
  if (transactions)
  {
    v5 = [v3 componentsJoinedByString:{@", "}];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT attachment_id FROM searchable_attachments WHERE transaction_id in (%@)", v5];
    transactions = [(EDPersistenceDatabaseConnection *)transactions identifiersForAttachmentsWithQuery:v6];
  }

  return transactions;
}

- (id)selectAttachmentIdentifiersForMessages:(void *)messages
{
  v3 = a2;
  v4 = v3;
  if (messages)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [v4 ef_filter:&__block_literal_global_80];

    v7 = [v6 componentsJoinedByString:{@", "}];
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT attachment_id FROM searchable_attachments WHERE message_id IN (%@)", v7];
    v9 = [messages preparedStatementForQueryString:v8];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __104__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__selectAttachmentIdentifiersForMessages___block_invoke_2;
    v17[3] = &unk_1E8250300;
    v10 = v5;
    v18 = v10;
    v16 = 0;
    v11 = [v9 executeUsingBlock:v17 error:&v16];
    v12 = v16;
    if ((v11 & 1) == 0)
    {
      [messages handleError:v12 message:@"searching for child attachment identifiers"];
    }

    v13 = v18;
    v14 = v10;
  }

  else
  {
    v14 = 0;
    v6 = v3;
  }

  return v14;
}

BOOL __104__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__selectAttachmentIdentifiersForMessages___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [EDSearchableIndexAttachmentItem attachmentPersistentIDFromItemIdentifier:a2];
  v3 = v2 == 0;

  return v3;
}

void __104__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__selectAttachmentIdentifiersForMessages___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [EDPersistedAttachmentID alloc];
  v4 = [v7 objectAtIndexedSubscript:0];
  v5 = -[EDPersistedAttachmentID initWithDatabaseID:](v3, "initWithDatabaseID:", [v4 databaseIDValue]);

  v6 = [EDSearchableIndexAttachmentItem identifierForAttachmentPersistentID:v5];
  [*(a1 + 32) addObject:v6];
}

- (id)assignIndexedAttachmentItems:(uint64_t)items transaction:
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  selfCopy = self;
  if (self)
  {
    if ([v5 count])
    {
      if (items)
      {
        v27 = v6;
        v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
        items = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"INSERT OR REPLACE INTO searchable_attachments (attachment_id, attachment, message_id, transaction_id) VALUES (?, ?, ?, %lld)", items];
        v7 = [self preparedStatementForQueryString:items];
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        obj = v6;
        v8 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (!v8)
        {
          goto LABEL_17;
        }

        v33 = *v36;
        v31 = *MEMORY[0x1E699B770];
        while (1)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v36 != v33)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v35 + 1) + 8 * i);
            v11 = MEMORY[0x1E696AD98];
            attachmentID = [v10 attachmentID];
            v13 = [v11 numberWithLongLong:{objc_msgSend(attachmentID, "databaseID")}];

            v14 = MEMORY[0x1E696AD98];
            messageID = [v10 messageID];
            v16 = [v14 numberWithLongLong:{objc_msgSend(messageID, "databaseID")}];

            v39[0] = v13;
            v39[1] = v13;
            v39[2] = v16;
            v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:3];
            v34 = 0;
            v18 = [v7 executeWithIndexedBindings:v17 usingBlock:0 error:&v34];
            v19 = v34;
            v20 = v19;
            if ((v18 & 1) == 0)
            {
              domain = [v19 domain];
              if ([domain isEqualToString:v31])
              {
                v22 = [v20 code] == 19;

                if (v22)
                {
                  attachmentID2 = [v10 attachmentID];
                  v24 = [EDSearchableIndexAttachmentItem identifierForAttachmentPersistentID:attachmentID2];
                  [v29 addObject:v24];

                  goto LABEL_15;
                }
              }

              else
              {
              }

              [selfCopy handleError:v20 message:@"Adding to searchable_attachments"];
            }

LABEL_15:
            [v7 clearBindingsWithError:0];
            [v7 resetWithError:0];
          }

          v8 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
          if (!v8)
          {
LABEL_17:

            v6 = v27;
            goto LABEL_20;
          }
        }
      }

      [(EDPersistenceDatabaseConnection *)self deleteAttachmentItems:v6];
    }

    v29 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v29 = 0;
  }

LABEL_20:

  v25 = *MEMORY[0x1E69E9840];

  return v29;
}

- (void)deleteAttachmentItems:(void *)items
{
  v3 = a2;
  if (items)
  {
    v8 = v3;
    v4 = [v3 ef_map:&__block_literal_global_167];
    v5 = [MEMORY[0x1E699B8C8] column:@"attachment"];
    v6 = [v5 in:v4];

    v7 = [objc_alloc(MEMORY[0x1E699B8E8]) initWithTable:@"searchable_attachments" where:v6];
    [items executeDeleteStatement:v7 error:0];

    v3 = v8;
  }
}

id __87__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__deleteAttachmentItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 attachmentID];
  v4 = [v2 numberWithLongLong:{objc_msgSend(v3, "databaseID")}];

  return v4;
}

- (void)deleteAttachmentsAfterTransaction:(void *)transaction
{
  if (transaction)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DELETE FROM searchable_attachments WHERE transaction_id > %llu", a2];
    v4 = [transaction preparedStatementForQueryString:v3];
    v7 = 0;
    v5 = [v4 executeUsingBlock:0 error:&v7];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      [transaction handleError:v6 message:@"Invalidating searchable_attachments"];
    }
  }
}

- (void)deleteAttachmentsInTransactions:(void *)transactions
{
  v3 = a2;
  v4 = v3;
  if (transactions)
  {
    v5 = [v3 componentsJoinedByString:{@", "}];
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DELETE FROM searchable_attachments WHERE transaction_id IN (%@)", v5];
    v7 = [transactions preparedStatementForQueryString:v6];
    v10 = 0;
    v8 = [v7 executeUsingBlock:0 error:&v10];
    v9 = v10;
    if ((v8 & 1) == 0)
    {
      [transactions handleError:v9 message:@"Failed to delete messages for items in searchable_attachments"];
    }
  }
}

- (void)deleteAttachmentsForMessage:(void *)message
{
  v3 = a2;
  if (message)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DELETE FROM searchable_attachments WHERE message_id = %@", v3];
    v5 = [message preparedStatementForQueryString:v4];
    v8 = 0;
    v6 = [v5 executeUsingBlock:0 error:&v8];
    v7 = v8;
    if ((v6 & 1) == 0)
    {
      [message handleError:v7 message:@"Removing message identifier from searchable_attachments"];
    }
  }
}

- (id)selectTransactionAndIndexTypeForMessage:(id)message
{
  v3 = a2;
  if (message)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT transaction_id, reindex_type FROM searchable_messages WHERE message_id = %@", v3];
    v5 = [message preparedStatementForQueryString:v4];
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__39;
    v15 = __Block_byref_object_dispose__39;
    v16 = 0;
    v9 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __105__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__selectTransactionAndIndexTypeForMessage___block_invoke;
    v10[3] = &unk_1E8250418;
    v10[4] = &v11;
    v6 = [v5 executeUsingBlock:v10 error:&v9];
    v7 = v9;
    if ((v6 & 1) == 0)
    {
      [message handleError:v7 message:@"Searching for reindex type"];
    }

    message = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  return message;
}

void __105__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__selectTransactionAndIndexTypeForMessage___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = objc_alloc(MEMORY[0x1E699B848]);
  v4 = [v11 objectAtIndexedSubscript:0];
  v5 = [v4 numberValue];
  v6 = [v11 objectAtIndexedSubscript:1];
  v7 = [v6 numberValue];
  v8 = [v3 initWithFirst:v5 second:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (id)getIndexSnapshot
{
  selfCopy = self;
  if (self)
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT message_id, message_body_indexed FROM searchable_messages WHERE transaction_id > %lld", 0];
    v3 = [selfCopy preparedStatementForQueryString:v2];
    v4 = objc_opt_new();
    v5 = objc_opt_new();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __81__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__getIndexSnapshot__block_invoke;
    v12[3] = &unk_1E82511B8;
    v6 = v4;
    v13 = v6;
    v7 = v5;
    v14 = v7;
    v11 = 0;
    v8 = [v3 executeUsingBlock:v12 error:&v11];
    v9 = v11;
    if ((v8 & 1) == 0)
    {
      [selfCopy handleError:v9 message:@"Error looking up index state for message"];
    }

    selfCopy = [MEMORY[0x1E699B848] pairWithFirst:v6 second:v7];
  }

  return selfCopy;
}

void __81__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__getIndexSnapshot__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectAtIndexedSubscript:0];
  v4 = [v3 numberValue];
  v5 = [v4 unsignedIntegerValue];

  v6 = [v7 objectAtIndexedSubscript:1];
  LODWORD(v4) = [v6 BOOLValue];

  [*(a1 + 32) addIndex:v5];
  if (v4)
  {
    [*(a1 + 40) addIndex:v5];
  }
}

- (id)messagesNeedingReindex
{
  selfCopy = self;
  if (self)
  {
    v2 = objc_opt_new();
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT message_id FROM searchable_rebuild"];
    v4 = [selfCopy preparedStatementForQueryString:v3];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __87__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__messagesNeedingReindex__block_invoke;
    v10[3] = &unk_1E8250300;
    v5 = v2;
    v11 = v5;
    v9 = 0;
    v6 = [v4 executeUsingBlock:v10 error:&v9];
    v7 = v9;
    if ((v6 & 1) == 0)
    {
      [selfCopy handleError:v7 message:@"Could not select message_id from searchable_rebuild table"];
    }

    selfCopy = [v5 copy];
  }

  return selfCopy;
}

void __87__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__messagesNeedingReindex__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectAtIndexedSubscript:0];
  [v2 addIndex:{objc_msgSend(v3, "integerValue")}];
}

- (id)messagesWithUnindexedBodiesAfterID:(uint64_t)d limit:
{
  selfCopy = self;
  v20[3] = *MEMORY[0x1E69E9840];
  if (self)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = [selfCopy preparedStatementForQueryString:@"   SELECT message_id     FROM searchable_messages    WHERE transaction_id > :transaction      AND message_id > :after_id      AND NOT message_body_indexed ORDER BY message_id ASC    LIMIT :limit"];
    v20[0] = &unk_1F45E69A0;
    v19[0] = @":transaction";
    v19[1] = @":after_id";
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
    v20[1] = v8;
    v19[2] = @":limit";
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:d];
    v20[2] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __106__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__messagesWithUnindexedBodiesAfterID_limit___block_invoke;
    v17[3] = &unk_1E8250300;
    v11 = array;
    v18 = v11;
    v16 = 0;
    v12 = [v7 executeWithNamedBindings:v10 usingBlock:v17 error:&v16];
    v13 = v16;
    if ((v12 & 1) == 0)
    {
      [selfCopy handleError:v13 message:@"Could not load unindexed bodies from searchable_messages table"];
    }

    selfCopy = [v11 copy];
  }

  v14 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

void __106__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__messagesWithUnindexedBodiesAfterID_limit___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 objectAtIndexedSubscript:0];
  v3 = [v4 numberValue];
  [v2 addObject:v3];
}

- (id)selectMessageIdentifiersForTransactions:(void *)transactions
{
  v3 = a2;
  if (transactions)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [v3 componentsJoinedByString:{@", "}];
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT rowid FROM searchable_messages WHERE transaction_id IN (%@)", v5];
    v7 = [transactions preparedStatementForQueryString:v6];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __105__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__selectMessageIdentifiersForTransactions___block_invoke;
    v15[3] = &unk_1E8250300;
    v8 = v4;
    v16 = v8;
    v14 = 0;
    v9 = [v7 executeUsingBlock:v15 error:&v14];
    v10 = v14;
    if ((v9 & 1) == 0)
    {
      [transactions handleError:v10 message:@"Failed to get messages for transaction ids in searchable_messages"];
    }

    v11 = v16;
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __105__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__selectMessageIdentifiersForTransactions___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 objectAtIndexedSubscript:0];
  v3 = [v4 stringValue];
  [v2 addObject:v3];
}

- (void)deleteMessagesAfterTransaction:(void *)transaction
{
  if (transaction)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DELETE FROM searchable_messages WHERE transaction_id > %llu", a2];
    v4 = [transaction preparedStatementForQueryString:v3];
    v7 = 0;
    v5 = [v4 executeUsingBlock:0 error:&v7];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      [transaction handleError:v6 message:@"Invalidating searchable_messages"];
    }
  }
}

- (void)deleteMessagesInTransactions:(void *)transactions
{
  v3 = a2;
  v4 = v3;
  if (transactions)
  {
    v5 = [v3 componentsJoinedByString:{@", "}];
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DELETE FROM searchable_messages WHERE transaction_id IN (%@)", v5];
    v7 = [transactions preparedStatementForQueryString:v6];
    v10 = 0;
    v8 = [v7 executeUsingBlock:0 error:&v10];
    v9 = v10;
    if ((v8 & 1) == 0)
    {
      [transactions handleError:v9 message:@"Failed to delete messages for items in searchable_messages"];
    }
  }
}

- (id)selectIdentifiersForDeletedMessages
{
  if (self)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = [self preparedStatementForQueryString:@"SELECT message_id FROM searchable_messages WHERE message is NULL"];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __100__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__selectIdentifiersForDeletedMessages__block_invoke;
    v11[3] = &unk_1E8250300;
    v4 = v2;
    v12 = v4;
    v10 = 0;
    v5 = [v3 executeUsingBlock:v11 error:&v10];
    v6 = v10;
    if ((v5 & 1) == 0)
    {
      [self handleError:v6 message:@"searching for removed identifiers"];
    }

    v7 = v12;
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __100__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__selectIdentifiersForDeletedMessages__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectAtIndexedSubscript:0];
  v4 = [v3 stringValue];

  [*(a1 + 32) addObject:v4];
}

- (id)selectMessageIDsFromBacklogWithBatchSize:(void *)size
{
  if (size)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT message_id FROM searchable_rebuild LIMIT %ld", a2];
    v6 = [size preparedStatementForQueryString:v5];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __106__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__selectMessageIDsFromBacklogWithBatchSize___block_invoke;
    v14[3] = &unk_1E8250300;
    v7 = v4;
    v15 = v7;
    v13 = 0;
    v8 = [v6 executeUsingBlock:v14 error:&v13];
    v9 = v13;
    if ((v8 & 1) == 0)
    {
      [size handleError:v9 message:@"Could not select message_id from searchable_rebuild table"];
    }

    v10 = v15;
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __106__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__selectMessageIDsFromBacklogWithBatchSize___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 objectAtIndexedSubscript:0];
  v3 = [v4 numberValue];
  [v2 addObject:v3];
}

- (uint64_t)selectIsReindexing
{
  selfCopy = self;
  if (self)
  {
    v2 = objc_alloc(MEMORY[0x1E699B948]);
    v3 = [v2 initWithResultColumn:*MEMORY[0x1E699B768] table:@"searchable_rebuild"];
    [v3 setLimit:1];
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v6 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __83__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__selectIsReindexing__block_invoke;
    v7[3] = &unk_1E8250418;
    v7[4] = &v8;
    [selfCopy executeSelectStatement:v3 withBlock:v7 error:&v6];
    v4 = v6;
    if (v4)
    {
      [selfCopy handleError:v4 message:@"Failed to query searchable_rebuild table to establish if it still has data"];
    }

    LOBYTE(selfCopy) = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  return selfCopy & 1;
}

- (id)selectIdentifiersForTombstonesOfType:(void *)type
{
  if (type)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT identifier FROM searchable_message_tombstones WHERE transaction_id IS NULL AND type = %lld", a2];
    v6 = [type preparedStatementForQueryString:v5];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __102__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__selectIdentifiersForTombstonesOfType___block_invoke;
    v14[3] = &unk_1E8250300;
    v7 = v4;
    v15 = v7;
    v13 = 0;
    v8 = [v6 executeUsingBlock:v14 error:&v13];
    v9 = v13;
    if ((v8 & 1) == 0)
    {
      [type handleError:v9 message:@"searching for tombstone identifiers"];
    }

    v10 = v15;
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __102__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__selectIdentifiersForTombstonesOfType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectAtIndexedSubscript:0];
  v4 = [v3 stringValue];

  [*(a1 + 32) addObject:v4];
}

- (id)selectTombstoneIdentifiersForTransactions:(void *)transactions
{
  v3 = a2;
  if (transactions)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [v3 componentsJoinedByString:{@", "}];
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT rowid FROM searchable_message_tombstones WHERE transaction_id IN (%@)", v5];
    v7 = [transactions preparedStatementForQueryString:v6];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __107__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__selectTombstoneIdentifiersForTransactions___block_invoke;
    v15[3] = &unk_1E8250300;
    v8 = v4;
    v16 = v8;
    v14 = 0;
    v9 = [v7 executeUsingBlock:v15 error:&v14];
    v10 = v14;
    if ((v9 & 1) == 0)
    {
      [transactions handleError:v10 message:@"Failed to get messages for transaction ids in searchable_message_tombstones"];
    }

    v11 = v16;
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __107__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__selectTombstoneIdentifiersForTransactions___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 objectAtIndexedSubscript:0];
  v3 = [v4 stringValue];
  [v2 addObject:v3];
}

- (void)addTombstonesForIdentifiers:(uint64_t)identifiers type:
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (self && [v5 count])
  {
    identifiers = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"INSERT OR REPLACE INTO searchable_message_tombstones (type, identifier) VALUES (%lld, ?)", identifiers];
    v7 = [self preparedStatementForQueryString:identifiers];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v9)
    {
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v22 = *(*(&v18 + 1) + 8 * i);
          v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
          v17 = 0;
          v13 = [v7 executeWithIndexedBindings:v12 usingBlock:0 error:&v17];
          v14 = v17;

          if ((v13 & 1) == 0)
          {
            [self handleError:v14 message:@"Adding to searchable_message_tombstones index"];
          }

          [v7 clearBindingsWithError:0];
          [v7 resetWithError:0];
        }

        v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v9);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)assignTombstonesForIdentifiers:(uint64_t)identifiers type:(uint64_t)type transaction:
{
  v7 = a2;
  v8 = v7;
  if (self && [v7 count])
  {
    v9 = [v8 ef_mapSelector:sel_ef_quotedSQLEscapedString];
    v10 = [v9 componentsJoinedByString:{@", "}];
    if (type < 0)
    {
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DELETE FROM searchable_message_tombstones WHERE type = %lld AND identifier IN (%@)", identifiers, v10];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UPDATE searchable_message_tombstones SET transaction_id = %lld WHERE type = %lld AND identifier IN (%@)", type, identifiers, v10];
    }

    v12 = v11;
    v13 = [self preparedStatementForQueryString:v11];
    v16 = 0;
    v14 = [v13 executeUsingBlock:0 error:&v16];
    v15 = v16;
    if ((v14 & 1) == 0)
    {
      [self handleError:v15 message:@"Updating or deleting searchable_message_tombstones"];
    }
  }
}

- (void)clearTransactionsForTombstonesAfterTransaction:(void *)transaction
{
  if (transaction)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UPDATE searchable_message_tombstones SET transaction_id = NULL WHERE transaction_id > %lld", a2];
    v4 = [transaction preparedStatementForQueryString:v3];
    v7 = 0;
    v5 = [v4 executeUsingBlock:0 error:&v7];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      [transaction handleError:v6 message:@"Invalidating searchable_message_tombstones"];
    }
  }
}

- (void)deleteTombstonesBeforeTransaction:(void *)transaction
{
  if (transaction)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DELETE FROM searchable_message_tombstones WHERE transaction_id < %lld", a2];
    v4 = [transaction preparedStatementForQueryString:v3];
    v7 = 0;
    v5 = [v4 executeUsingBlock:0 error:&v7];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      [transaction handleError:v6 message:@"Purging searchable_message_tombstones"];
    }
  }
}

- (void)deleteTombstonesInTransactions:(void *)transactions
{
  v3 = a2;
  v4 = v3;
  if (transactions)
  {
    v5 = [v3 componentsJoinedByString:{@", "}];
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DELETE FROM searchable_message_tombstones WHERE transaction_id IN (%@)", v5];
    v7 = [transactions preparedStatementForQueryString:v6];
    v10 = 0;
    v8 = [v7 executeUsingBlock:0 error:&v10];
    v9 = v10;
    if ((v8 & 1) == 0)
    {
      [transactions handleError:v9 message:@"Failed to delete messages for items in searchable_message_tombstones"];
    }
  }
}

- (id)selectDistinctTransactionIDs
{
  selfCopy = self;
  if (self)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v3 = [selfCopy preparedStatementForQueryString:@"SELECT DISTINCT transaction_id FROM searchable_messages"];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __93__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__selectDistinctTransactionIDs__block_invoke;
    v9[3] = &unk_1E8250300;
    v4 = v2;
    v10 = v4;
    v8 = 0;
    v5 = [v3 executeUsingBlock:v9 error:&v8];
    v6 = v8;
    if ((v5 & 1) == 0)
    {
      [selfCopy handleError:v6 message:@"Searching for distinct transaction identifiers"];
    }

    selfCopy = [v4 copy];
  }

  return selfCopy;
}

void __93__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__selectDistinctTransactionIDs__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectAtIndexedSubscript:0];
  v4 = [v3 numberValue];

  if (v4 && [v4 longLongValue] >= 1)
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (id)richLinkDataForItemsRequiringIndexingExcludingIdentifiers:(uint64_t)identifiers limit:(void *)limit cancelationToken:
{
  v7 = a2;
  limitCopy = limit;
  if (self)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT m.ROWID, mr.rich_link, m.mailbox, r.title, r.url FROM message_rich_links AS mr LEFT OUTER JOIN messages AS m ON (m.global_message_id = mr.global_message_id) LEFT OUTER JOIN rich_links AS r ON (r.ROWID = mr.rich_link) LEFT OUTER JOIN searchable_rich_links AS s ON (m.ROWID = s.message_id) WHERE s.rich_link_id IS NULL ORDER BY m.ROWID"];
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = [self preparedStatementForQueryString:v9];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __146__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__richLinkDataForItemsRequiringIndexingExcludingIdentifiers_limit_cancelationToken___block_invoke;
    v19[3] = &unk_1E8256FB0;
    v20 = v7;
    v12 = v10;
    v21 = v12;
    identifiersCopy = identifiers;
    v22 = limitCopy;
    v18 = 0;
    v13 = [v11 executeUsingBlock:v19 error:&v18];
    v14 = v18;
    if ((v13 & 1) == 0)
    {
      [self handleError:v14 message:@"Searching for rich links requiring indexing"];
    }

    v15 = v22;
    v16 = v12;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __146__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__richLinkDataForItemsRequiringIndexingExcludingIdentifiers_limit_cancelationToken___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v22 = a2;
  v6 = [EDPersistedMessageID alloc];
  v7 = [v22 objectAtIndexedSubscript:0];
  v8 = -[EDPersistedMessageID initWithDatabaseID:](v6, "initWithDatabaseID:", [v7 databaseIDValue]);

  v9 = [EDPersistedRichLinkID alloc];
  v10 = [v22 objectAtIndexedSubscript:1];
  v11 = -[EDPersistedRichLinkID initWithDatabaseID:](v9, "initWithDatabaseID:", [v10 databaseIDValue]);

  v12 = [*(a1 + 32) objectForKeyedSubscript:v8];
  if (!v12 || ([*(a1 + 32) objectForKeyedSubscript:v8], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "containsObject:", v11), v13, v12, (v14 & 1) == 0))
  {
    v15 = [v22 objectAtIndexedSubscript:2];
    v16 = [v15 databaseIDValue];

    v17 = [v22 objectAtIndexedSubscript:3];
    v18 = [v17 stringValue];

    v19 = [v22 objectAtIndexedSubscript:4];
    v20 = [v19 stringValue];

    v21 = [[EDSearchableIndexPersistenceRichLinkDatum alloc] initWithMessageID:v8 richLinkID:v11 mailboxID:v16 title:v18 url:v20];
    [*(a1 + 40) addObject:v21];
    if ([*(a1 + 40) count] >= *(a1 + 56) || objc_msgSend(*(a1 + 48), "isCanceled"))
    {
      *a4 = 1;
    }
  }
}

- (id)assignIndexedRichLinkItems:(uint64_t)items transaction:
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  selfCopy = self;
  v28 = v5;
  if (self)
  {
    if ([v5 count])
    {
      if (items)
      {
        v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
        items = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"INSERT OR REPLACE INTO searchable_rich_links (rich_link, message_id, transaction_id) VALUES (?, ?, %lld)", items];
        v6 = [self preparedStatementForQueryString:?];
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        obj = v28;
        v7 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (!v7)
        {
          goto LABEL_17;
        }

        v33 = *v36;
        v31 = *MEMORY[0x1E699B770];
        while (1)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v36 != v33)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v35 + 1) + 8 * i);
            v10 = MEMORY[0x1E696AD98];
            richLinkID = [v9 richLinkID];
            v12 = [v10 numberWithLongLong:{objc_msgSend(richLinkID, "databaseID")}];

            v13 = MEMORY[0x1E696AD98];
            messageID = [v9 messageID];
            v15 = [v13 numberWithLongLong:{objc_msgSend(messageID, "databaseID")}];

            v39[0] = v12;
            v39[1] = v15;
            v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
            v34 = 0;
            v17 = [v6 executeWithIndexedBindings:v16 usingBlock:0 error:&v34];
            v18 = v34;
            v19 = v18;
            if ((v17 & 1) == 0)
            {
              domain = [v18 domain];
              if ([domain isEqualToString:v31])
              {
                v21 = [v19 code] == 19;

                if (v21)
                {
                  messageID2 = [v9 messageID];
                  richLinkID2 = [v9 richLinkID];
                  v24 = [EDSearchableIndexRichLinkItem identifierForMessageID:messageID2 richLinkID:richLinkID2];
                  [v29 addObject:v24];

                  goto LABEL_15;
                }
              }

              else
              {
              }

              [selfCopy handleError:v19 message:@"Adding to searchable_rich_links"];
            }

LABEL_15:
            [v6 clearBindingsWithError:0];
            [v6 resetWithError:0];
          }

          v7 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
          if (!v7)
          {
LABEL_17:

            goto LABEL_20;
          }
        }
      }

      [(EDPersistenceDatabaseConnection *)self deleteRichLinkItems:v28];
    }

    v29 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v29 = 0;
  }

LABEL_20:

  v25 = *MEMORY[0x1E69E9840];

  return v29;
}

- (void)deleteRichLinkItems:(void *)items
{
  v28 = *MEMORY[0x1E69E9840];
  v18 = a2;
  if (items)
  {
    v3 = [items preparedStatementForQueryString:@"DELETE FROM searchable_rich_links WHERE rich_link = ? AND message_id = ?"];
    itemsCopy = items;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v18;
    v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v4)
    {
      v5 = *v23;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v23 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v22 + 1) + 8 * i);
          v8 = MEMORY[0x1E696AD98];
          richLinkID = [v7 richLinkID];
          v10 = [v8 numberWithLongLong:{objc_msgSend(richLinkID, "databaseID")}];

          v11 = MEMORY[0x1E696AD98];
          messageID = [v7 messageID];
          v13 = [v11 numberWithLongLong:{objc_msgSend(messageID, "databaseID")}];

          v26[0] = v10;
          v26[1] = v13;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
          v21 = 0;
          v15 = [v3 executeWithIndexedBindings:v14 usingBlock:0 error:&v21];
          v16 = v21;
          if ((v15 & 1) == 0)
          {
            [itemsCopy handleError:v16 message:@"Failed to delete items in searchable_rich_links"];
          }

          [v3 clearBindingsWithError:0];
          [v3 resetWithError:0];
        }

        v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v4);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)deleteRichLinksInTransactions:(void *)transactions
{
  v3 = a2;
  v4 = v3;
  if (transactions)
  {
    v5 = [v3 componentsJoinedByString:{@", "}];
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DELETE FROM searchable_rich_links WHERE transaction_id IN (%@)", v5];
    v7 = [transactions preparedStatementForQueryString:v6];
    v10 = 0;
    v8 = [v7 executeUsingBlock:0 error:&v10];
    v9 = v10;
    if ((v8 & 1) == 0)
    {
      [transactions handleError:v9 message:@"Failed to delete items in searchable_rich_links"];
    }
  }
}

- (void)addAllMessagesToRebuildTable
{
  if (self)
  {
    v2 = [self preparedStatementForQueryString:@"INSERT OR IGNORE INTO searchable_rebuild (message_id) SELECT ROWID FROM messages ORDER BY date_received DESC"];
    v5 = 0;
    v3 = [v2 executeUsingBlock:0 error:&v5];
    v4 = v5;
    if ((v3 & 1) == 0)
    {
      [self handleError:v4 message:@"could not populate searchable_rebuild table"];
    }
  }
}

- (void)clearReferencesToMissingSearchableMessages
{
  selfCopy = self;
  if (self)
  {
    v2 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"messages"];
    null = [MEMORY[0x1E695DFB0] null];
    [v2 setObject:null forKeyedSubscript:@"searchable_message"];

    v4 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"message_id" table:@"searchable_messages"];
    v5 = [objc_alloc(MEMORY[0x1E699B8C8]) initWithName:@"searchable_message"];
    v6 = [v5 notIn:v4];
    [v2 setWhereClause:v6];

    v8 = 0;
    [selfCopy executeUpdateStatement:v2 rowsChanged:&v8];
    selfCopy = v8;
  }

  return selfCopy;
}

- (void)clearReferencesToSearchableMessages
{
  if (self)
  {
    v2 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"messages"];
    null = [MEMORY[0x1E695DFB0] null];
    [v2 setObject:null forKeyedSubscript:@"searchable_message"];

    queryString = [v2 queryString];
    v5 = [self preparedStatementForQueryString:queryString];

    v8 = 0;
    v6 = [v5 executeUsingBlock:0 error:&v8];
    v7 = v8;
    if ((v6 & 1) == 0)
    {
      [self handleError:v7 message:@"Clearing searchable_message column"];
    }
  }
}

- (void)emptyAllSearchableIndexTables
{
  v19[6] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v19[0] = @"searchable_messages";
    v19[1] = @"searchable_message_tombstones";
    v19[2] = @"searchable_attachments";
    v19[3] = @"searchable_rich_links";
    v19[4] = @"searchable_data_detection_results";
    v19[5] = @"searchable_rebuild";
    [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:6];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    obj = v15 = 0u;
    v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v2)
    {
      v3 = *v15;
      do
      {
        v4 = 0;
        do
        {
          if (*v15 != v3)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v14 + 1) + 8 * v4);
          v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DELETE FROM %@", v5];
          v7 = [self preparedStatementForQueryString:v6];
          v13 = 0;
          v8 = [v7 executeUsingBlock:0 error:&v13];
          v9 = v13;
          if ((v8 & 1) == 0)
          {
            v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Purging %@", v5];
            [self handleError:v9 message:v10];
          }

          ++v4;
        }

        while (v2 != v4);
        v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v2);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeIndexedIdentifiers:(void *)identifiers
{
  v32 = *MEMORY[0x1E69E9840];
  v24 = a2;
  if (identifiers)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v5 = v24;
    v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v6)
    {
      v7 = *v28;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v28 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v27 + 1) + 8 * i);
          v10 = [EDSearchableIndexAttachmentItem attachmentPersistentIDFromItemIdentifier:v9];
          v11 = v10;
          if (v10)
          {
            stringValue = [v10 stringValue];
            [v4 addObject:stringValue];
          }

          else
          {
            [v3 addObject:v9];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v6);
    }

    if ([v3 count])
    {
      v13 = [v3 componentsJoinedByString:{@", "}];
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DELETE FROM searchable_messages WHERE message_id IN (%@)", v13];
      v15 = [identifiers preparedStatementForQueryString:v14];
      v26 = 0;
      v16 = [v15 executeUsingBlock:0 error:&v26];
      v17 = v26;
      if ((v16 & 1) == 0)
      {
        [identifiers handleError:v17 message:@"Removing items from searchable_messages"];
      }
    }

    if ([v4 count])
    {
      v18 = [v4 componentsJoinedByString:{@", "}];
      v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DELETE FROM searchable_attachments WHERE attachment_id IN (%@)", v18];
      v20 = [identifiers preparedStatementForQueryString:v19];
      v25 = 0;
      v21 = [v20 executeUsingBlock:0 error:&v25];
      v22 = v25;
      if ((v21 & 1) == 0)
      {
        [identifiers handleError:v22 message:@"Removing items from searchable_attachments"];
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)messageIDTransactionIDDictionaryToVerifyWithCount:(uint64_t)count lastVerifiedMessageID:
{
  if (self)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT message_id, transaction_id FROM searchable_messages WHERE reindex_type = 0 AND message IS NOT NULL AND message_id > %lu LIMIT %lu", count, a2];
    v8 = [self preparedStatementForQueryString:v7];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __137__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__messageIDTransactionIDDictionaryToVerifyWithCount_lastVerifiedMessageID___block_invoke;
    v16[3] = &unk_1E8250300;
    v9 = v6;
    v17 = v9;
    v15 = 0;
    v10 = [v8 executeUsingBlock:v16 error:&v15];
    v11 = v15;
    if ((v10 & 1) == 0)
    {
      [self handleError:v11 message:@"Searching for random sample of messages to verify for spotlight integrity"];
    }

    v12 = v17;
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __137__EDPersistenceDatabaseConnection_EDSearchableIndexPersistence__messageIDTransactionIDDictionaryToVerifyWithCount_lastVerifiedMessageID___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectAtIndexedSubscript:0];
  v4 = [v3 stringValue];

  v5 = [v7 objectAtIndexedSubscript:1];
  v6 = [v5 numberValue];

  [*(a1 + 32) setObject:v6 forKeyedSubscript:v4];
}

- (uint64_t)_adjustedDatabaseTypeForType:(uint64_t)result
{
  if (result)
  {
    basePath = [result basePath];

    if (basePath)
    {
      return a2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

- (void)setJournal:(uint64_t)journal
{
  if (journal)
  {
    objc_storeStrong((journal + 32), a2);
  }
}

- (void)performWithOptions:(uint8_t *)buf transactionError:(os_log_t)log block:.cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Failed to begin transaction on connection %{public}@: %{public}@", buf, 0x16u);
}

- (void)performWithOptions:transactionError:block:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(&dword_1C61EF000, v0, v1, "Nested database block failed on connection %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)performWithOptions:transactionError:block:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(&dword_1C61EF000, v0, v1, "Non-transactional database block failed on connection %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)performWithOptions:transactionError:block:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(&dword_1C61EF000, v0, v1, "Outer database block failed on connection %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_startTransactionWithSQLConnection:options:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(&dword_1C61EF000, v0, OS_LOG_TYPE_DEBUG, "Write Transaction (generation: ignored) on connection %{public}@ started successfully", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_startTransactionWithSQLConnection:options:error:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(&dword_1C61EF000, v0, OS_LOG_TYPE_DEBUG, "Read Transaction (generation: ignored) on connection %{public}@ started successfully", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_startTransactionWithSQLConnection:options:error:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_0(&dword_1C61EF000, v0, v1, "Write Transaction (generation: %lld) on connection %{public}@ started successfully");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_startTransactionWithSQLConnection:options:error:.cold.4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_0(&dword_1C61EF000, v0, v1, "Read Transaction (generation: %lld) on connection %{public}@ started successfully");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_finishTransactionWithSQLConnection:(uint64_t)a3 afterSuccess:(os_log_t)log transactionError:.cold.1(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a3;
  *(buf + 6) = 2114;
  *(buf + 14) = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Rolling back transaction on connection %{public}@ %{public}@", buf, 0x16u);
}

- (void)_finishTransactionWithSQLConnection:afterSuccess:transactionError:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_0(&dword_1C61EF000, v0, v1, "Transaction on connection %{public}@ %{public}@ succeeded");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_storeTransactionWriteGenerationWithSQLConnection:(os_log_t)log newGeneration:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Unable to increment transaction generation: %{public}@", buf, 0xCu);
}

- (void)attachProtectedDatabaseWithName:(NSObject *)a1 url:(uint64_t)a2 error:.cold.1(NSObject *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = a2;
    _os_log_impl(&dword_1C61EF000, a1, OS_LOG_TYPE_DEFAULT, "Attached Protected Index on connection %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_attachDatabaseWithName:url:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_0(&dword_1C61EF000, v0, v1, "Attaching database '%{public}@' at URL %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)detachJournalDatabase
{
  v11 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v4 = *(self + 24);
  }

  else
  {
    v4 = 0;
  }

  if ([(EDPersistenceDatabaseConnection *)self _detachDatabaseWithName:v4])
  {
    if (self)
    {
      [*(self + 32) checkIn];
      [(EDPersistenceDatabaseConnection *)self setJournal:?];
      objc_setProperty_nonatomic_copy(self, v7, 0, 24);
    }

    else
    {
      [0 checkIn];
      [(EDPersistenceDatabaseConnection *)0 setJournal:?];
    }

    v8 = +[EDPersistenceDatabaseConnection log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Detached journal on connection %{public}@", &v9, 0xCu);
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  v6 = *MEMORY[0x1E69E9840];
}

- (id)selectIdentifiersForDeletedAttachments
{
  if (self)
  {
    self = [(EDPersistenceDatabaseConnection *)self identifiersForAttachmentsWithQuery:?];
    v1 = vars8;
  }

  return self;
}

@end