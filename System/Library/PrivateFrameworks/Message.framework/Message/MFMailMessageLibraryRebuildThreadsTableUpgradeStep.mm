@interface MFMailMessageLibraryRebuildThreadsTableUpgradeStep
+ (id)_threadsTableSchemaWithMessagesTable:(id)table conversationsTable:(id)conversationsTable threadScopesTable:(id)scopesTable;
+ (int)runWithConnection:(id)connection;
@end

@implementation MFMailMessageLibraryRebuildThreadsTableUpgradeStep

+ (id)_threadsTableSchemaWithMessagesTable:(id)table conversationsTable:(id)conversationsTable threadScopesTable:(id)scopesTable
{
  v88 = *MEMORY[0x1E69E9840];
  tableCopy = table;
  conversationsTableCopy = conversationsTable;
  scopesTableCopy = scopesTable;
  v7 = objc_alloc(MEMORY[0x1E699B958]);
  v64 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"scope" nullable:0];
  v50 = v64;
  v65 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"conversation" nullable:0];
  v49 = v65;
  v48 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"newest_read_message" nullable:1];
  v66 = v48;
  v47 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"display_message" nullable:1];
  v67 = v47;
  v46 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"date" nullable:0];
  v68 = v46;
  v45 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"read" nullable:0 defaultValue:&unk_1F2775CE8];
  v69 = v45;
  v44 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"flagged" nullable:0 defaultValue:&unk_1F2775CE8];
  v70 = v44;
  v43 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_red_flag" nullable:0 defaultValue:&unk_1F2775CE8];
  v71 = v43;
  v42 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_orange_flag" nullable:0 defaultValue:&unk_1F2775CE8];
  v72 = v42;
  v41 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_yellow_flag" nullable:0 defaultValue:&unk_1F2775CE8];
  v73 = v41;
  v40 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_green_flag" nullable:0 defaultValue:&unk_1F2775CE8];
  v74 = v40;
  v39 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_blue_flag" nullable:0 defaultValue:&unk_1F2775CE8];
  v75 = v39;
  v38 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_purple_flag" nullable:0 defaultValue:&unk_1F2775CE8];
  v76 = v38;
  v37 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_gray_flag" nullable:0 defaultValue:&unk_1F2775CE8];
  v77 = v37;
  v36 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"draft" nullable:0 defaultValue:&unk_1F2775CE8];
  v78 = v36;
  v35 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"replied" nullable:0 defaultValue:&unk_1F2775CE8];
  v79 = v35;
  v34 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"forwarded" nullable:0 defaultValue:&unk_1F2775CE8];
  v80 = v34;
  v8 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"redirected" nullable:0 defaultValue:&unk_1F2775CE8];
  v81 = v8;
  v9 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"junk_level_set_by_user" nullable:0 defaultValue:&unk_1F2775CE8];
  v82 = v9;
  v10 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"junk_level" nullable:0 defaultValue:&unk_1F2775CE8];
  v83 = v10;
  v11 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_unflagged" nullable:0 defaultValue:&unk_1F2775CE8];
  v84 = v11;
  v12 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_attachments" nullable:0 defaultValue:&unk_1F2775CE8];
  v85 = v12;
  v13 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"count" nullable:0];
  v86 = v13;
  v14 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"journaled" nullable:0 defaultValue:&unk_1F2775CE8];
  v87 = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:24];
  v16 = [v7 initWithName:@"threads" rowIDType:2 columns:v15];

  v63[0] = @"scope";
  v63[1] = @"conversation";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
  [v16 addUniquenessConstraintForColumns:v17 conflictResolution:1];

  v62[0] = @"scope";
  v62[1] = @"date";
  v62[2] = @"conversation";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:3];
  [v16 addIndexForColumns:v18];

  v61[0] = @"journaled";
  v61[1] = @"scope";
  v61[2] = @"date";
  v61[3] = @"conversation";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:4];
  [v16 addIndexForColumns:v19];

  v60 = @"display_message";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
  [v16 addIndexForColumns:v20];

  v59 = @"newest_read_message";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
  [v16 addIndexForColumns:v21];

  v22 = objc_alloc(MEMORY[0x1E699B900]);
  v58[0] = @"journaled";
  v58[1] = @"date";
  v58[2] = @"scope";
  v58[3] = @"conversation";
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:4];
  v24 = [MEMORY[0x1E699B8C8] column:@"journaled"];
  v25 = [v24 equalTo:&unk_1F2775D00];
  v26 = [v22 initWithTableName:@"threads" columnNames:v23 where:v25 unique:0];

  [v16 addIndex:v26];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __128__MFMailMessageLibraryRebuildThreadsTableUpgradeStep__threadsTableSchemaWithMessagesTable_conversationsTable_threadScopesTable___block_invoke;
  aBlock[3] = &unk_1E7AA6658;
  v27 = v16;
  v57 = v27;
  v28 = _Block_copy(aBlock);
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __128__MFMailMessageLibraryRebuildThreadsTableUpgradeStep__threadsTableSchemaWithMessagesTable_conversationsTable_threadScopesTable___block_invoke_2;
  v54[3] = &unk_1E7AA6680;
  v29 = v28;
  v55 = v29;
  v30 = _Block_copy(v54);
  v30[2](v30, @"scope", scopesTableCopy);
  v30[2](v30, @"conversation", conversationsTableCopy);
  (*(v29 + 2))(v29, @"newest_read_message", tableCopy, 3);
  (*(v29 + 2))(v29, @"display_message", tableCopy, 3);
  v31 = v27;

  v32 = *MEMORY[0x1E69E9840];
  return v27;
}

void __128__MFMailMessageLibraryRebuildThreadsTableUpgradeStep__threadsTableSchemaWithMessagesTable_conversationsTable_threadScopesTable___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = a3;
  v7 = [*(a1 + 32) columnForName:a2];
  [v7 setAsForeignKeyForTable:v8 onDelete:a4 onUpdate:0];
}

+ (int)runWithConnection:(id)connection
{
  connectionCopy = connection;
  if (([connectionCopy executeStatementString:@"DROP TABLE threads" errorMessage:@"Dropping threads"] & 1) != 0 && objc_msgSend(connectionCopy, "executeStatementString:errorMessage:", @"DELETE FROM thread_scopes", @"Clearing thread_scopes") && objc_msgSend(connectionCopy, "executeStatementString:errorMessage:", @"DELETE FROM thread_mailboxes", @"Clearing thread_mailboxes") && objc_msgSend(connectionCopy, "executeStatementString:errorMessage:", @"DELETE FROM thread_senders", @"Clearing thread_senders") && objc_msgSend(connectionCopy, "executeStatementString:errorMessage:", @"DELETE FROM thread_recipients", @"Clearing thread_recipients"))
  {
    v5 = objc_alloc(MEMORY[0x1E699B958]);
    v6 = [v5 initWithName:@"messages" rowIDType:2 columns:MEMORY[0x1E695E0F0]];
    v7 = objc_alloc(MEMORY[0x1E699B958]);
    v8 = [v7 initWithName:@"conversations" rowIDType:2 rowIDAlias:@"conversation_id" columns:MEMORY[0x1E695E0F0]];
    v9 = objc_alloc(MEMORY[0x1E699B958]);
    v10 = [v9 initWithName:@"thread_scopes" rowIDType:2 columns:MEMORY[0x1E695E0F0]];
    v11 = [self _threadsTableSchemaWithMessagesTable:v6 conversationsTable:v8 threadScopesTable:v10];
    v12 = [v11 definitionWithDatabaseName:0];
    v13 = [connectionCopy executeStatementString:v12 errorMessage:@"Creating new threads"] ^ 1;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

@end