@interface MFMailMessageLibrarySetThreadSendersRecipientsConflictResolutionUpgradeStep
+ (EFSQLTableSchema)threadRecipientsTableSchema;
+ (EFSQLTableSchema)threadSendersTableSchema;
+ (id)_schemaWithThreadsTable:(id)table;
+ (int)runWithConnection:(id)connection;
@end

@implementation MFMailMessageLibrarySetThreadSendersRecipientsConflictResolutionUpgradeStep

+ (EFSQLTableSchema)threadSendersTableSchema
{
  v17[4] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"thread" nullable:0];
  v17[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"address" nullable:0];
  v17[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"date" nullable:0];
  v17[2] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"priority" nullable:0 defaultValue:&unk_1F2775D18];
  v17[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
  v16[0] = @"thread";
  v16[1] = @"address";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v9 = [v2 initWithName:@"thread_senders" columns:v7 primaryKeyColumns:v8 conflictResolution:5];

  v15[0] = @"address";
  v15[1] = @"thread";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  [v9 addIndexForColumns:v10];

  v14[0] = @"thread";
  v14[1] = @"priority";
  v14[2] = @"date";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  [v9 addIndexForColumns:v11];

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (EFSQLTableSchema)threadRecipientsTableSchema
{
  v18[5] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"thread" nullable:0];
  v18[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"address" nullable:0];
  v18[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"type" nullable:0];
  v18[2] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"date" nullable:0];
  v18[3] = v6;
  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"priority" nullable:0 defaultValue:&unk_1F2775D18];
  v18[4] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:5];
  v17[0] = @"thread";
  v17[1] = @"type";
  v17[2] = @"address";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
  v10 = [v2 initWithName:@"thread_recipients" columns:v8 primaryKeyColumns:v9 conflictResolution:5];

  v16[0] = @"address";
  v16[1] = @"thread";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  [v10 addIndexForColumns:v11];

  v15[0] = @"thread";
  v15[1] = @"priority";
  v15[2] = @"date";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
  [v10 addIndexForColumns:v12];

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)_schemaWithThreadsTable:(id)table
{
  v13[2] = *MEMORY[0x1E69E9840];
  tableCopy = table;
  threadSendersTableSchema = [self threadSendersTableSchema];
  threadRecipientsTableSchema = [self threadRecipientsTableSchema];
  __103__MFMailMessageLibrarySetThreadSendersRecipientsConflictResolutionUpgradeStep__schemaWithThreadsTable___block_invoke(threadRecipientsTableSchema, threadSendersTableSchema, @"thread", tableCopy);
  __103__MFMailMessageLibrarySetThreadSendersRecipientsConflictResolutionUpgradeStep__schemaWithThreadsTable___block_invoke(v7, threadRecipientsTableSchema, @"thread", tableCopy);
  v8 = objc_alloc(MEMORY[0x1E699B940]);
  v13[0] = threadSendersTableSchema;
  v13[1] = threadRecipientsTableSchema;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v10 = [v8 initWithTables:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void __103__MFMailMessageLibrarySetThreadSendersRecipientsConflictResolutionUpgradeStep__schemaWithThreadsTable___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v6 = [a2 columnForName:a3];
  [v6 setAsForeignKeyForTable:v7 onDelete:2 onUpdate:0];
}

+ (int)runWithConnection:(id)connection
{
  connectionCopy = connection;
  if (([connectionCopy executeStatementString:@"ALTER TABLE thread_senders RENAME TO thread_senders_old" errorMessage:@"Renaming thread_senders"] & 1) != 0 && objc_msgSend(connectionCopy, "executeStatementString:errorMessage:", @"ALTER TABLE thread_recipients RENAME TO thread_recipients_old", @"Renaming thread_recipients"))
  {
    v5 = objc_alloc(MEMORY[0x1E699B958]);
    v6 = [v5 initWithName:@"threads" rowIDType:2 columns:MEMORY[0x1E695E0F0]];
    v7 = [self _schemaWithThreadsTable:v6];
    v8 = [v7 definitionWithDatabaseName:0];
    if (([connectionCopy executeStatementString:v8 errorMessage:@"Creating new thread_senders and thread_recipients"] & 1) != 0 && objc_msgSend(connectionCopy, "executeStatementString:errorMessage:", @"INSERT INTO thread_senders SELECT * FROM thread_senders_old", @"Repopulating thread_senders") && objc_msgSend(connectionCopy, "executeStatementString:errorMessage:", @"INSERT INTO thread_recipients SELECT * FROM thread_recipients_old", @"Repopulating thread_recipients") && objc_msgSend(connectionCopy, "executeStatementString:errorMessage:", @"DROP TABLE thread_senders_old", @"Dropping old thread_senders"))
    {
      v9 = [connectionCopy executeStatementString:@"DROP TABLE thread_recipients_old" errorMessage:@"Dropping old thread_recipients"] ^ 1;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

@end