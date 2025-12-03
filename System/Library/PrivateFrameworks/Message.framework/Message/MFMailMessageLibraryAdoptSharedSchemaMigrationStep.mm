@interface MFMailMessageLibraryAdoptSharedSchemaMigrationStep
+ (void)cleanUpAfterMigrationWithConnection:(id)connection;
- (BOOL)_cleanupOldSchema;
- (BOOL)_createIndexes;
- (BOOL)_createTemporaryTables;
- (BOOL)_dropTemporaryTables;
- (BOOL)_initializeOldProtectedSchema;
- (BOOL)_migrateData;
- (BOOL)_migrateMessages;
- (BOOL)_migrateNonMessages;
- (BOOL)_migrateSendersAndRecipients;
- (BOOL)_migrateSubjects;
- (BOOL)_migrateSummaries;
- (BOOL)_transformProtectedSchema;
- (BOOL)_transformSchema;
- (BOOL)performMigrationStep;
- (EFSQLSchema)protectedSchema;
- (EFSQLSchema)schema;
- (MFMailMessageLibraryAdoptSharedSchemaMigrationStep)initWithSQLiteConnection:(id)connection protectedDatabaseName:(id)name;
- (id)_accountsTableSchema;
- (id)_addressesTableSchema;
- (id)_conversationIDMessageIDTableSchema;
- (id)_conversationsTableSchema;
- (id)_mailboxesTableSchema;
- (id)_messageDataDeletedTableSchema;
- (id)_messageDataTableSchema;
- (id)_messageReferencesTableSchema;
- (id)_messagesTableSchema;
- (id)_popUIDsTableSchema;
- (id)_propertiesTableSchema;
- (id)_protectedMessageDataTableSchema;
- (id)_recipientsTableSchema;
- (id)_spotlightMessageReindexTableSchema;
- (id)_spotlightTombstonesTableSchema;
- (id)_subjectsTableSchema;
- (id)_summariesTableSchema;
@end

@implementation MFMailMessageLibraryAdoptSharedSchemaMigrationStep

+ (void)cleanUpAfterMigrationWithConnection:(id)connection
{
  connectionCopy = connection;
  if ([connectionCopy databaseIsAttached:@"ssms_mem"])
  {
    [connectionCopy executeStatementString:@"DETACH DATABASE ssms_mem" errorMessage:@"Detaching ssms_mem database"];
  }
}

- (MFMailMessageLibraryAdoptSharedSchemaMigrationStep)initWithSQLiteConnection:(id)connection protectedDatabaseName:(id)name
{
  connectionCopy = connection;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = MFMailMessageLibraryAdoptSharedSchemaMigrationStep;
  v9 = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, connection);
    objc_storeStrong(&v10->_protectedDatabaseName, name);
  }

  return v10;
}

- (EFSQLSchema)schema
{
  v25[13] = *MEMORY[0x1E69E9840];
  _messagesTableSchema = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self _messagesTableSchema];
  _recipientsTableSchema = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self _recipientsTableSchema];
  _messageReferencesTableSchema = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self _messageReferencesTableSchema];
  _conversationsTableSchema = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self _conversationsTableSchema];
  _conversationIDMessageIDTableSchema = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self _conversationIDMessageIDTableSchema];
  _spotlightMessageReindexTableSchema = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self _spotlightMessageReindexTableSchema];
  v3 = [_recipientsTableSchema columnForName:@"message"];
  [v3 setAsForeignKeyForTable:_messagesTableSchema onDelete:2 onUpdate:0];

  v4 = [_messageReferencesTableSchema columnForName:@"message"];
  [v4 setAsForeignKeyForTable:_messagesTableSchema onDelete:2 onUpdate:0];

  v5 = [_conversationIDMessageIDTableSchema columnForName:@"conversation_id"];
  [v5 setAsForeignKeyForTable:_conversationsTableSchema onDelete:2 onUpdate:2];

  v6 = [_spotlightMessageReindexTableSchema columnForName:@"message_id"];
  [v6 setAsForeignKeyForTable:_messagesTableSchema onDelete:2 onUpdate:0];

  v7 = objc_alloc(MEMORY[0x1E699B940]);
  v25[0] = _messagesTableSchema;
  _mailboxesTableSchema = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self _mailboxesTableSchema];
  v25[1] = _mailboxesTableSchema;
  v25[2] = _recipientsTableSchema;
  v25[3] = _messageReferencesTableSchema;
  v25[4] = _conversationsTableSchema;
  v25[5] = _conversationIDMessageIDTableSchema;
  _propertiesTableSchema = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self _propertiesTableSchema];
  v25[6] = _propertiesTableSchema;
  _messageDataTableSchema = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self _messageDataTableSchema];
  v25[7] = _messageDataTableSchema;
  _messageDataDeletedTableSchema = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self _messageDataDeletedTableSchema];
  v25[8] = _messageDataDeletedTableSchema;
  _popUIDsTableSchema = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self _popUIDsTableSchema];
  v25[9] = _popUIDsTableSchema;
  _accountsTableSchema = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self _accountsTableSchema];
  v25[10] = _accountsTableSchema;
  _spotlightTombstonesTableSchema = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self _spotlightTombstonesTableSchema];
  v25[11] = _spotlightTombstonesTableSchema;
  v25[12] = _spotlightMessageReindexTableSchema;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:13];
  v16 = [v7 initWithTables:v15];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)_messagesTableSchema
{
  v62[30] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v61 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"message_id" nullable:0 defaultValue:&unk_1F27759E8];
  v62[0] = v61;
  v60 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"remote_id" nullable:1];
  v62[1] = v60;
  v59 = [MEMORY[0x1E699B8D0] textColumnWithName:@"document_id" collation:1 nullable:1];
  v62[2] = v59;
  v58 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"sender" nullable:1];
  v62[3] = v58;
  v57 = [MEMORY[0x1E699B8D0] textColumnWithName:@"subject_prefix" collation:1 nullable:1];
  v62[4] = v57;
  v56 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"subject" nullable:0];
  v62[5] = v56;
  v55 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"summary" nullable:1];
  v62[6] = v55;
  v54 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"date_sent" nullable:1];
  v62[7] = v54;
  v53 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"date_received" nullable:1];
  v62[8] = v53;
  v52 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"mailbox" nullable:0];
  v62[9] = v52;
  v51 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"remote_mailbox" nullable:1];
  v62[10] = v51;
  v50 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"flags" nullable:0 defaultValue:&unk_1F27759E8];
  v62[11] = v50;
  v49 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"read" nullable:0 defaultValue:&unk_1F27759E8];
  v62[12] = v49;
  v48 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"flagged" nullable:0 defaultValue:&unk_1F27759E8];
  v62[13] = v48;
  v47 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"deleted" nullable:0 defaultValue:&unk_1F27759E8];
  v62[14] = v47;
  v46 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"size" nullable:0 defaultValue:&unk_1F27759E8];
  v62[15] = v46;
  v45 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"conversation_id" nullable:0 defaultValue:&unk_1F27759E8];
  v62[16] = v45;
  v44 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"date_last_viewed" nullable:1];
  v62[17] = v44;
  v43 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"original_mailbox" nullable:1];
  v62[18] = v43;
  v42 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"visible" nullable:1];
  v62[19] = v42;
  v41 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"sender_vip" nullable:1];
  v62[20] = v41;
  v40 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"encoding" nullable:1];
  v62[21] = v40;
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"content_type" nullable:1];
  v62[22] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"sequence_identifier" nullable:1 defaultValue:&unk_1F27759E8];
  v62[23] = v4;
  v5 = [MEMORY[0x1E699B8D0] textColumnWithName:@"external_id" collation:1 nullable:1];
  v62[24] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"unique_id" nullable:1];
  v62[25] = v6;
  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"content_index_transaction_id" nullable:1];
  v62[26] = v7;
  v8 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"list_id_hash" nullable:1];
  v62[27] = v8;
  v9 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"journaled" nullable:1];
  v62[28] = v9;
  v10 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"flag_color" nullable:1];
  v62[29] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:30];
  v12 = [v2 initWithName:@"messages" rowIDType:2 columns:v11];

  [v12 addIndexForColumns:&unk_1F2774E00];
  [v12 addIndexForColumns:&unk_1F2774E18];
  [v12 addIndexForColumns:&unk_1F2774E30];
  [v12 addIndexForColumns:&unk_1F2774E48];
  [v12 addIndexForColumns:&unk_1F2774E60];
  [v12 addIndexForColumns:&unk_1F2774E78];
  [v12 addIndexForColumns:&unk_1F2774E90];
  [v12 addIndexForColumns:&unk_1F2774EA8];
  [v12 addIndexForColumns:&unk_1F2774EC0];
  [v12 addIndexForColumns:&unk_1F2774ED8];
  [v12 addIndexForColumns:&unk_1F2774EF0];
  [v12 addIndexForColumns:&unk_1F2774F08];
  [v12 addIndexForColumns:&unk_1F2774F20];
  [v12 addIndexForColumns:&unk_1F2774F38];
  [v12 addIndexForColumns:&unk_1F2774F50];
  v13 = __74__MFMailMessageLibraryAdoptSharedSchemaMigrationStep__messagesTableSchema__block_invoke([v12 addIndexForColumns:&unk_1F2774F68], &unk_1F2774F80);
  v14 = [objc_alloc(MEMORY[0x1E699B908]) initWithColumnName:@"date_received" orderDirection:2];
  [v13 addObject:v14];

  v15 = [objc_alloc(MEMORY[0x1E699B908]) initWithColumnName:@"ROWID" orderDirection:2];
  [v13 addObject:v15];

  v16 = objc_alloc(MEMORY[0x1E699B900]);
  name = [v12 name];
  v18 = [v16 initWithTableName:name indexedColumns:v13];
  [v12 addIndex:v18];

  v20 = __74__MFMailMessageLibraryAdoptSharedSchemaMigrationStep__messagesTableSchema__block_invoke(v19, &unk_1F2774F98);

  v21 = [objc_alloc(MEMORY[0x1E699B908]) initWithColumnName:@"date_received" orderDirection:2];
  [v20 addObject:v21];

  v22 = [objc_alloc(MEMORY[0x1E699B908]) initWithColumnName:@"ROWID" orderDirection:2];
  [v20 addObject:v22];

  v23 = objc_alloc(MEMORY[0x1E699B900]);
  name2 = [v12 name];
  v25 = [v23 initWithTableName:name2 indexedColumns:v20];
  [v12 addIndex:v25];

  v27 = __74__MFMailMessageLibraryAdoptSharedSchemaMigrationStep__messagesTableSchema__block_invoke(v26, &unk_1F2774FB0);

  v28 = [objc_alloc(MEMORY[0x1E699B908]) initWithColumnName:@"date_received" orderDirection:2];
  [v27 addObject:v28];

  v29 = [objc_alloc(MEMORY[0x1E699B908]) initWithColumnName:@"ROWID"];
  [v27 addObject:v29];

  v30 = objc_alloc(MEMORY[0x1E699B900]);
  name3 = [v12 name];
  v32 = [v30 initWithTableName:name3 indexedColumns:v27];
  [v12 addIndex:v32];

  v33 = __74__MFMailMessageLibraryAdoptSharedSchemaMigrationStep__messagesTableSchema__block_invoke([v12 addIndexForColumns:&unk_1F2774FC8], &unk_1F2774FE0);

  v34 = [objc_alloc(MEMORY[0x1E699B908]) initWithColumnName:@"date_received" orderDirection:1];
  [v33 addObject:v34];

  v35 = objc_alloc(MEMORY[0x1E699B900]);
  name4 = [v12 name];
  v37 = [v35 initWithTableName:name4 indexedColumns:v33];
  [v12 addIndex:v37];

  [v12 addIndexForColumns:&unk_1F2774FF8];
  v38 = *MEMORY[0x1E69E9840];

  return v12;
}

id __74__MFMailMessageLibraryAdoptSharedSchemaMigrationStep__messagesTableSchema__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 ef_map:&__block_literal_global_116];
  v3 = [v2 mutableCopy];

  return v3;
}

id __74__MFMailMessageLibraryAdoptSharedSchemaMigrationStep__messagesTableSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_alloc(MEMORY[0x1E699B908]) initWithColumnName:v2];

  return v3;
}

- (id)_mailboxesTableSchema
{
  v19[12] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v18 = [MEMORY[0x1E699B8D0] textColumnWithName:@"url" collation:1 nullable:0];
  v19[0] = v18;
  v17 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"total_count" nullable:0 defaultValue:&unk_1F27759E8];
  v19[1] = v17;
  v16 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"unread_count" nullable:0 defaultValue:&unk_1F27759E8];
  v19[2] = v16;
  v15 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"deleted_count" nullable:0 defaultValue:&unk_1F27759E8];
  v19[3] = v15;
  v3 = [MEMORY[0x1E699B8D0] textColumnWithName:@"sequence_identifier" collation:1 nullable:1];
  v19[4] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"flagged_count" nullable:0 defaultValue:&unk_1F27759E8];
  v19[5] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"attachment_count" nullable:0 defaultValue:&unk_1F27759E8];
  v19[6] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"to_cc_count" nullable:0 defaultValue:&unk_1F27759E8];
  v19[7] = v6;
  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"server_unread_count" nullable:0 defaultValue:&unk_1F27759E8];
  v19[8] = v7;
  v8 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"last_sync_status_count" nullable:0 defaultValue:&unk_1F27759E8];
  v19[9] = v8;
  v9 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"most_recent_status_count" nullable:0 defaultValue:&unk_1F27759E8];
  v19[10] = v9;
  v10 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"reconcile" nullable:0 defaultValue:&unk_1F27759E8];
  v19[11] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:12];
  v12 = [v2 initWithName:@"mailboxes" rowIDType:2 columns:v11];

  [v12 addUniquenessConstraintForColumns:&unk_1F2775010 conflictResolution:1];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_recipientsTableSchema
{
  v11[4] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"message" nullable:0];
  v11[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"address" nullable:0];
  v11[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"type" nullable:1];
  v11[2] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"position" nullable:1];
  v11[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];
  v8 = [v2 initWithName:@"recipients" rowIDType:1 columns:v7];

  [v8 addUniquenessConstraintForColumns:&unk_1F2775028 conflictResolution:1];
  [v8 addIndexForColumns:&unk_1F2775040];
  [v8 addIndexForColumns:&unk_1F2775058];
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_messageReferencesTableSchema
{
  v10[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"message" nullable:0];
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"reference" nullable:0 defaultValue:{&unk_1F27759E8, v3}];
  v10[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"is_originator" nullable:0 defaultValue:&unk_1F27759E8];
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
  v7 = [v2 initWithName:@"message_references" rowIDType:1 columns:v6];

  [v7 addIndexForColumns:&unk_1F2775070];
  [v7 addIndexForColumns:&unk_1F2775088];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_conversationsTableSchema
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"flags" nullable:0 defaultValue:&unk_1F27759E8];
  v9[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] textColumnWithName:@"sync_key" collation:1 nullable:1];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v2 initWithName:@"conversations" rowIDType:2 rowIDAlias:@"conversation_id" columns:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_conversationIDMessageIDTableSchema
{
  v10[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"conversation_id" nullable:0];
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"message_id" nullable:0 defaultValue:{&unk_1F27759E8, v3}];
  v10[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"date_sent" nullable:0 defaultValue:&unk_1F27759E8];
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
  v7 = [v2 initWithName:@"conversation_id_message_id" columns:v6 primaryKeyColumns:&unk_1F27750A0];

  [v7 addIndexForColumns:&unk_1F27750B8];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_propertiesTableSchema
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] textColumnWithName:@"key" collation:1 nullable:0];
  v9[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] blobColumnWithName:@"value" nullable:0];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v2 initWithName:@"properties" rowIDType:1 columns:v5];

  [v6 addUniquenessConstraintForColumns:&unk_1F27750D0 conflictResolution:1];
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_messageDataTableSchema
{
  v12[5] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"message_id" nullable:1];
  v4 = [MEMORY[0x1E699B8D0] textColumnWithName:@"part" collation:1 nullable:{1, v3}];
  v12[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"partial" nullable:1];
  v12[2] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"complete" nullable:1];
  v12[3] = v6;
  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"length" nullable:1];
  v12[4] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:5];
  v9 = [v2 initWithName:@"message_data" rowIDType:2 columns:v8];

  [v9 addUniquenessConstraintForColumns:&unk_1F27750E8 conflictResolution:1];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_messageDataDeletedTableSchema
{
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [v2 initWithName:@"message_data_deleted" rowIDType:1 rowIDAlias:@"message_data_id" columns:MEMORY[0x1E695E0F0]];

  return v3;
}

- (id)_popUIDsTableSchema
{
  v12[5] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"mailbox" nullable:1];
  v4 = [MEMORY[0x1E699B8D0] textColumnWithName:@"uid" collation:1 nullable:{1, v3}];
  v12[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"date_added" nullable:1];
  v12[2] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"flags" nullable:1];
  v12[3] = v6;
  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"del" nullable:1];
  v12[4] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:5];
  v9 = [v2 initWithName:@"pop_uids" rowIDType:1 columns:v8];

  [v9 addUniquenessConstraintForColumns:&unk_1F2775100 conflictResolution:1];
  [v9 addIndexForColumns:&unk_1F2775118];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_accountsTableSchema
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] textColumnWithName:@"text_id" collation:1 nullable:1];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [v2 initWithName:@"accounts" rowIDType:2 columns:v4];

  [v5 addUniquenessConstraintForColumns:&unk_1F2775130 conflictResolution:1];
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_spotlightTombstonesTableSchema
{
  v10[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"type" nullable:1];
  v4 = [MEMORY[0x1E699B8D0] textColumnWithName:@"identifier" collation:1 nullable:{1, v3}];
  v10[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"transaction_id" nullable:1];
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
  v7 = [v2 initWithName:@"spotlight_tombstones" rowIDType:2 columns:v6];

  [v7 addUniquenessConstraintForColumns:&unk_1F2775148 conflictResolution:1];
  [v7 addIndexForColumns:&unk_1F2775160];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_spotlightMessageReindexTableSchema
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"message_id" nullable:1];
  v9[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"type" nullable:1];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v2 initWithName:@"spotlight_message_reindex" rowIDType:1 columns:v5];

  [v6 addUniquenessConstraintForColumns:&unk_1F2775178 conflictResolution:1];
  [v6 addIndexForColumns:&unk_1F2775190];
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (EFSQLSchema)protectedSchema
{
  v12[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E699B940]);
  _addressesTableSchema = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self _addressesTableSchema];
  v12[0] = _addressesTableSchema;
  _subjectsTableSchema = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self _subjectsTableSchema];
  v12[1] = _subjectsTableSchema;
  _summariesTableSchema = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self _summariesTableSchema];
  v12[2] = _summariesTableSchema;
  _protectedMessageDataTableSchema = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self _protectedMessageDataTableSchema];
  v12[3] = _protectedMessageDataTableSchema;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];
  v9 = [v3 initWithTables:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_addressesTableSchema
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] textColumnWithName:@"address" collation:2 nullable:0];
  v9[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] textColumnWithName:@"comment" collation:1 nullable:0];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v2 initWithName:@"addresses" rowIDType:2 columns:v5];

  [v6 addUniquenessConstraintForColumns:&unk_1F27751A8 conflictResolution:1];
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_subjectsTableSchema
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] textColumnWithName:@"subject" collation:3 nullable:0];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [v2 initWithName:@"subjects" rowIDType:2 columns:v4];

  [v5 addUniquenessConstraintForColumns:&unk_1F27751C0 conflictResolution:1];
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_summariesTableSchema
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] textColumnWithName:@"summary" collation:3 nullable:0];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [v2 initWithName:@"summaries" rowIDType:2 columns:v4];

  [v5 addUniquenessConstraintForColumns:&unk_1F27751D8 conflictResolution:1];
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_protectedMessageDataTableSchema
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] textColumnWithName:@"data" collation:1 nullable:1];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [v2 initWithName:@"protected_message_data" rowIDType:1 columns:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)performMigrationStep
{
  connection = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self connection];
  if (([connection protectedDatabaseAttached] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFMailMessageLibraryAdoptSharedSchemaMigrationStep.m" lineNumber:412 description:@"Protected database must be attached"];
  }

  v5 = ![MFDbJournal mergeAllJournalsUsingConnection:connection]&& [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self _initializeOldProtectedSchema]&& [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self _transformSchema]&& [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self _transformProtectedSchema]&& [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self _createTemporaryTables]&& [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self _migrateData]&& [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self _dropTemporaryTables]&& [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self _createIndexes]&& [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self _cleanupOldSchema];

  return v5;
}

- (BOOL)_initializeOldProtectedSchema
{
  connection = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self connection];
  if ([connection executeStatementString:@"CREATE TABLE IF NOT EXISTS protected.messages (message_id INTEGER PRIMARY KEY errorMessage:{sender, subject, _to, cc, bcc)", @"Creating protected messages"}])
  {
    v3 = [connection executeStatementString:@"CREATE TABLE IF NOT EXISTS protected.message_data (message_data_id INTEGER PRIMARY KEY errorMessage:{data)", @"Creating protected message_data"}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_transformSchema
{
  connection = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self connection];
  if ([connection executeStatementString:@"ALTER TABLE main.messages RENAME TO messages_old" errorMessage:@"Moving messages table aside"] && objc_msgSend(connection, "executeStatementString:errorMessage:", @"ALTER TABLE mailboxes RENAME TO mailboxes_old", @"Moving mailboxes table aside") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"ALTER TABLE conversations RENAME TO conversations_old", @"Moving conversations table aside") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"ALTER TABLE conversation_id_message_id RENAME TO conversation_id_message_id_old", @"Moving conversation_id_message_id table aside") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"ALTER TABLE properties RENAME TO properties_old", @"Moving properties table aside") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"ALTER TABLE main.message_data RENAME TO message_data_old", @"Moving message_data table aside") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"ALTER TABLE message_data_deleted RENAME TO message_data_deleted_old", @"Moving message_data_deleted_old table aside") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"ALTER TABLE pop_uids RENAME TO pop_uids_old", @"Moving pop_uids table aside") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"ALTER TABLE accounts RENAME TO accounts_old", @"Moving accounts table aside") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"ALTER TABLE spotlight_tombstones RENAME TO spotlight_tombstones_old", @"Moving spotlight_tombstones table aside") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"ALTER TABLE spotlight_message_reindex RENAME TO spotlight_message_reindex_old", @"Moving spotlight_message_reindex table aside"))
  {
    schema = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self schema];
    v5 = [schema definitionWithDatabaseName:0 includeIndexes:0];
    v6 = [connection executeStatementString:v5 errorMessage:@"Unable to create new tables"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_transformProtectedSchema
{
  connection = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self connection];
  protectedSchema = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self protectedSchema];
  protectedDatabaseName = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self protectedDatabaseName];
  v6 = [protectedSchema definitionWithDatabaseName:protectedDatabaseName];
  v7 = [connection executeStatementString:v6 errorMessage:@"Unable to create new protected tables"];

  return v7;
}

- (BOOL)_createTemporaryTables
{
  connection = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self connection];
  if ([connection executeStatementString:@"ATTACH DATABASE ':memory:' AS ssms_mem" errorMessage:@"Unable to create in-memory database"] && objc_msgSend(connection, "executeStatementString:errorMessage:", @"CREATE TABLE ssms_mem.parsed_subjects(original PRIMARY KEY ON CONFLICT IGNORE, prefix TEXT COLLATE BINARY, unprefixed TEXT COLLATE RTRIM) WITHOUT ROWID", @"Creating ssms_mem.parsed_subjects table") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"CREATE TABLE ssms_mem.summary_id_by_message(message INTEGER PRIMARY KEY, summary_id INTEGER)", @"Creating ssms_mem.summary_id_by_message table"))
  {
    v3 = [connection executeStatementString:@"CREATE TABLE ssms_mem.parsed_addresses(fullAddress TEXT NOT NULL PRIMARY KEY ON CONFLICT IGNORE errorMessage:{address TEXT, comment TEXT) WITHOUT ROWID", @"Creating ssms_mem.parsed_addresses table"}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_dropTemporaryTables
{
  connection = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self connection];
  if ([connection executeStatementString:@"DROP TABLE ssms_mem.parsed_subjects" errorMessage:@"Dropping ssms_mem.subject_prefixes table"] && objc_msgSend(connection, "executeStatementString:errorMessage:", @"DROP TABLE ssms_mem.parsed_addresses", @"Dropping ssms_mem.parsed_addresses table"))
  {
    v3 = [connection executeStatementString:@"DROP TABLE ssms_mem.summary_id_by_message" errorMessage:@"Dropping ssms_mem.summary_id_by_message table"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_migrateData
{
  if (![(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self _migrateNonMessages]|| ![(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self _migrateSubjects]|| ![(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self _migrateSummaries]|| ![(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self _migrateSendersAndRecipients])
  {
    return 0;
  }

  return [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self _migrateMessages];
}

- (BOOL)_migrateNonMessages
{
  connection = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self connection];
  if ([connection executeStatementString:@"INSERT INTO message_references (message errorMessage:{reference, is_originator) SELECT message_id, ifnull(reference, 0), ifnull(is_originator, 0) FROM threads", @"Populating message_references"}] && objc_msgSend(connection, "executeStatementString:errorMessage:", @"INSERT INTO mailboxes (ROWID, url, total_count, unread_count, deleted_count, sequence_identifier, flagged_count, to_cc_count, server_unread_count, last_sync_status_count, most_recent_status_count, reconcile) SELECT ROWID, url, ifnull(total_count, 0), ifnull(unread_count, 0), ifnull(deleted_count, 0), sequence_identifier, ifnull(flagged_count, 0), ifnull(to_cc_count, 0), ifnull(server_unread_count, 0), ifnull(last_sync_status_count, 0), ifnull(most_recent_status_count, 0), ifnull(reconcile, 0) FROM mailboxes_old", @"Populating mailboxes") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"INSERT INTO conversations (conversation_id, flags, sync_key) SELECT conversation_id, (ifnull(flags, 0) & ~0x2) | ((ifnull(flags, 0) & 0x2) << 1), sync_key FROM conversations_old ", @"Populating conversations") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"INSERT INTO conversation_id_message_id (conversation_id, message_id, date_sent) SELECT conversation_id, message_id, ifnull(date_sent, 0) FROM conversation_id_message_id_old", @"Populating conversation_id_message_id") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"INSERT INTO properties (key, value) SELECT key, value FROM properties_old", @"Populating properties") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"INSERT INTO main.message_data (ROWID, message_id, part, partial, complete, length) SELECT ROWID, message_id, part, partial, complete, length FROM message_data_old WHERE part != 'summary' ", @"Populating message_data") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"INSERT INTO message_data_deleted (message_data_id) SELECT message_data_id FROM message_data_deleted_old", @"Populating message_data_deleted") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"INSERT INTO pop_uids (mailbox, uid, date_added, flags, del) SELECT mailbox, uid, date_added, flags, del FROM pop_uids_old", @"Populating pop_uids") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"INSERT INTO accounts (ROWID, text_id) SELECT ROWID, text_id FROM accounts_old", @"Populating accounts") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"INSERT INTO spotlight_tombstones (ROWID, type, identifier, transaction_id) SELECT ROWID, type, identifier, transaction_id FROM spotlight_tombstones_old", @"Populating spotlight_tombstones"))
  {
    v3 = [connection executeStatementString:@"INSERT INTO spotlight_message_reindex (message_id errorMessage:{type) SELECT message_id, type FROM spotlight_message_reindex_old", @"Populating spotlight_message_reindex"}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_migrateSubjects
{
  connection = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self connection];
  v3 = [connection preparedStatementForQueryString:@"SELECT DISTINCT subject FROM protected.messages JOIN main.messages_old ON main.messages_old.ROWID = protected.messages.message_id "];
  compiled = [v3 compiled];
  v5 = [connection preparedStatementForQueryString:{@"INSERT INTO ssms_mem.parsed_subjects (original, prefix, unprefixed) VALUES (?1, ?2, ?3)"}];
  compiled2 = [v5 compiled];
  v7 = [connection preparedStatementForQueryString:{@"INSERT INTO ssms_mem.parsed_subjects (original, prefix, unprefixed) VALUES (?1, NULL, ?1)"}];
  compiled3 = [v7 compiled];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__MFMailMessageLibraryAdoptSharedSchemaMigrationStep__migrateSubjects__block_invoke;
  v15[3] = &unk_1E7AA6418;
  v17 = &v21;
  v18 = compiled;
  v19 = compiled2;
  v20 = compiled3;
  v9 = connection;
  v16 = v9;
  v14 = 0;
  v10 = [v3 executeUsingBlock:v15 error:&v14];
  v11 = v14;
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = 1;
  }

  if ((v12 & 1) == 0)
  {
    [v9 handleError:v11 message:@"Populating ssms_mem.parsed_subjects"];
  }

  if (v10)
  {
    if (*(v22 + 24) == 1)
    {
      LOBYTE(v10) = [v9 executeStatementString:@"INSERT OR IGNORE INTO protected.subjects (subject) SELECT unprefixed FROM ssms_mem.parsed_subjects" errorMessage:@"Populating protected.subjects table"];
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  _Block_object_dispose(&v21, 8);
  return v10;
}

void __70__MFMailMessageLibraryAdoptSharedSchemaMigrationStep__migrateSubjects__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = sqlite3_column_text(*(a1 + 48), 0);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = "";
  }

  v8 = sqlite3_column_bytes(*(a1 + 48), 0);
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v7 length:v8 encoding:4 freeWhenDone:0];
  v10 = [MEMORY[0x1E699B338] prefixLengthForSubject:v9];
  if (v10)
  {
    v11 = [v9 substringToIndex:v10];
    v12 = [v9 substringFromIndex:v10];
    sqlite3_bind_text(*(a1 + 56), 1, v7, v8, 0xFFFFFFFFFFFFFFFFLL);
    sqlite3_bind_text(*(a1 + 56), 2, [v11 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    sqlite3_bind_text(*(a1 + 56), 3, [v12 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    v13 = *(a1 + 56);
    v19 = 0;
    v14 = performInsert(v13, &v19);
    v15 = v19;
    *(*(*(a1 + 40) + 8) + 24) = v14;
  }

  else
  {
    sqlite3_bind_text(*(a1 + 64), 1, v7, v8, 0xFFFFFFFFFFFFFFFFLL);
    v16 = *(a1 + 64);
    v18 = 0;
    v17 = performInsert(v16, &v18);
    v15 = v18;
    *(*(*(a1 + 40) + 8) + 24) = v17;
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
    [*(a1 + 32) handleError:v15 message:@"Inserting into ssms_mem.parsed_subjects"];
  }
}

- (BOOL)_migrateSummaries
{
  connection = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self connection];
  if ([connection executeStatementString:@"CREATE TABLE ssms_mem.temp_summaries(message INTEGER PRIMARY KEY errorMessage:{summary TEXT NOT NULL)", @"Creating ssms_mem.temp_summaries table"}] && objc_msgSend(connection, "executeStatementString:errorMessage:", @"INSERT INTO ssms_mem.temp_summaries (message, summary) SELECT main.message_data_old.message_id, protected.message_data.data FROM main.message_data_old JOIN protected.message_data ON protected.message_data.message_data_id = main.message_data_old.ROWID WHERE main.message_data_old.part = 'summary' AND protected.message_data.data IS NOT NULL ", @"Populating ssms_mem.temp_summaries") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"INSERT OR IGNORE INTO protected.summaries (summary) SELECT summary FROM ssms_mem.temp_summaries ", @"Populating protected.summaries") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"INSERT INTO ssms_mem.summary_id_by_message (message, summary_id) SELECT ssms_mem.temp_summaries.message, protected.summaries.ROWID FROM ssms_mem.temp_summaries JOIN protected.summaries ON protected.summaries.summary = ssms_mem.temp_summaries.summary ", @"Populating ssms_mem.summary_id_by_message"))
  {
    v3 = [connection executeStatementString:@"DROP TABLE ssms_mem.temp_summaries" errorMessage:@"Dropping ssms_mem.temp_summaries table"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_migrateSendersAndRecipients
{
  connection = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self connection];
  sqlDB = [connection sqlDB];
  [connection handleSQLResult:sqlite3_create_function(sqlDB message:{"rawAddress", 1, 1, 0, rawAddress, 0, 0), @"error creating user function rawAddress"}];
  [connection handleSQLResult:sqlite3_create_function(sqlDB message:{"displayName", 1, 1, 0, displayName, 0, 0), @"error creating user function displayName"}];
  v4 = [connection executeStatementString:@"CREATE TABLE ssms_mem.temp_recipients(message INTEGER NOT NULL errorMessage:{fullAddress TEXT NOT NULL, type INTEGER NOT NULL, position INTEGER NOT NULL)", @"Creating ssms_mem.temp_recipients table"}];
  v5 = [connection preparedStatementForQueryString:{@"INSERT INTO ssms_mem.temp_recipients (message, fullAddress, type, position) VALUES (?, ?, ?, ?)"}];
  compiled = [v5 compiled];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__MFMailMessageLibraryAdoptSharedSchemaMigrationStep__migrateSendersAndRecipients__block_invoke;
  aBlock[3] = &unk_1E7AA6468;
  v24 = &v26;
  v25 = compiled;
  v7 = connection;
  v23 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [v7 preparedStatementForQueryString:{@"SELECT protected.messages.message_id, protected.messages._to, protected.messages.cc, protected.messages.bcc FROM protected.messages JOIN main.messages_old ON main.messages_old.ROWID = protected.messages.message_id "}];
  compiled2 = [v9 compiled];
  if (!v4)
  {
    v12 = 0;
LABEL_12:
    v15 = objc_autoreleasePoolPush();
    v14 = 0;
    goto LABEL_13;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __82__MFMailMessageLibraryAdoptSharedSchemaMigrationStep__migrateSendersAndRecipients__block_invoke_3;
  v20[3] = &unk_1E7AA6490;
  v21[1] = compiled2;
  v21[2] = compiled;
  v18 = v21;
  v21[0] = v8;
  v19 = 0;
  v11 = [v9 executeUsingBlock:v20 error:&v19];
  v12 = v19;
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 1;
  }

  if ((v13 & 1) == 0)
  {
    [v7 handleError:v12 message:@"Populating ssms_mem.temp_recipients"];
  }

  if (!v11 || *(v27 + 24) != 1)
  {
    goto LABEL_12;
  }

  v14 = [v7 executeStatementString:@"INSERT INTO ssms_mem.parsed_addresses (fullAddress) SELECT sender FROM protected.messages JOIN main.messages_old ON main.messages_old.ROWID = protected.messages.message_id WHERE sender IS NOT NULL UNION ALL SELECT fullAddress FROM ssms_mem.temp_recipients WHERE fullAddress IS NOT NULL " errorMessage:@"Populating ssms_mem.parsed_addresses"];
  v15 = objc_autoreleasePoolPush();
  if (v14)
  {
    v14 = [v7 executeStatementString:@"UPDATE ssms_mem.parsed_addresses SET address = rawAddress(fullAddress) errorMessage:{comment = displayName(fullAddress)", @"Parsing addresses in ssms_mem.parsed_addresses"}];
  }

LABEL_13:
  objc_autoreleasePoolPop(v15);
  if (v14 && [v7 executeStatementString:@"INSERT OR IGNORE INTO protected.addresses (address errorMessage:{comment) SELECT address, comment FROM ssms_mem.parsed_addresses", @"Populating protected.addresses"}] && objc_msgSend(v7, "executeStatementString:errorMessage:", @"INSERT INTO main.recipients (message, address, type, position) SELECT ssms_mem.temp_recipients.message, protected.addresses.ROWID, ssms_mem.temp_recipients.type, ssms_mem.temp_recipients.position FROM ssms_mem.temp_recipients JOIN ssms_mem.parsed_addresses ON ssms_mem.parsed_addresses.fullAddress = ssms_mem.temp_recipients.fullAddress JOIN protected.addresses ON protected.addresses.address = ssms_mem.parsed_addresses.address AND protected.addresses.comment = ssms_mem.parsed_addresses.comment ", @"Populating main.recipients"))
  {
    v16 = [v7 executeStatementString:@"DROP TABLE ssms_mem.temp_recipients" errorMessage:@"Dropping ssms_mem.temp_recipients table"];
  }

  else
  {
    v16 = 0;
  }

  [v7 handleSQLResult:sqlite3_create_function(sqlDB message:{"rawAddress", 1, 1, 0, 0, 0, 0), @"error deleting user function rawAddress"}];
  [v7 handleSQLResult:sqlite3_create_function(sqlDB message:{"displayName", 1, 1, 0, 0, 0, 0), @"error deleting user function displayName"}];
  if (v4)
  {
  }

  _Block_object_dispose(&v26, 8);
  return v16;
}

BOOL __82__MFMailMessageLibraryAdoptSharedSchemaMigrationStep__migrateSendersAndRecipients__block_invoke(uint64_t a1, sqlite3_int64 a2, uint64_t a3, unint64_t a4)
{
  sqlite3_bind_int64(*(a1 + 48), 3, a2);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v20 = __82__MFMailMessageLibraryAdoptSharedSchemaMigrationStep__migrateSendersAndRecipients__block_invoke_2;
  v21 = &unk_1E7AA6440;
  v23 = *(a1 + 48);
  v18 = *(a1 + 32);
  v7 = v18;
  v22 = v18;
  v8 = v19;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  do
  {
    v12 = &v11[v10];
    if (&v11[v10] >= a4)
    {
      break;
    }

    v10 = v12 ? v12 + 3 : 0;
    v13 = memmem((a3 + v10), a4 - v10, "\r\r\n", 3uLL);
    v14 = &v13[-a3];
    if (!v13)
    {
      v14 = a4;
    }

    v11 = &v14[-v10];
    v15 = objc_autoreleasePoolPush();
    v16 = v20(v8, v9, (a3 + v10), v11);
    objc_autoreleasePoolPop(v15);
    v9 = (v9 + 1);
  }

  while ((v16 & 1) != 0);

  return v12 >= a4;
}

uint64_t __82__MFMailMessageLibraryAdoptSharedSchemaMigrationStep__migrateSendersAndRecipients__block_invoke_2(uint64_t a1, int a2, const char *a3, int a4)
{
  sqlite3_bind_text(*(a1 + 48), 2, a3, a4, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_int64(*(a1 + 48), 4, a2);
  v6 = *(a1 + 48);
  v11 = 0;
  v7 = performInsert(v6, &v11);
  v8 = v11;
  *(*(*(a1 + 40) + 8) + 24) = v7;
  v9 = *(*(*(a1 + 40) + 8) + 24);
  if ((v9 & 1) == 0)
  {
    [*(a1 + 32) handleError:v8 message:@"Inserting recipient into ssms_mem.temp_recipients"];
  }

  return v9;
}

uint64_t __82__MFMailMessageLibraryAdoptSharedSchemaMigrationStep__migrateSendersAndRecipients__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = sqlite3_column_int64(*(a1 + 40), 0);
  v7 = 1;
  sqlite3_bind_int64(*(a1 + 48), 1, v6);
  v8 = *(a1 + 32);
  v9 = sqlite3_column_text(*(a1 + 40), 1);
  v10 = sqlite3_column_bytes(*(a1 + 40), 1);
  result = (*(v8 + 16))(v8, 1, v9, v10);
  if (result)
  {
    v12 = *(a1 + 32);
    v13 = sqlite3_column_text(*(a1 + 40), 2);
    v14 = sqlite3_column_bytes(*(a1 + 40), 2);
    result = (*(v12 + 16))(v12, 2, v13, v14);
    if (result)
    {
      v15 = *(a1 + 32);
      v16 = sqlite3_column_text(*(a1 + 40), 3);
      v17 = sqlite3_column_bytes(*(a1 + 40), 3);
      result = (*(v15 + 16))(v15, 3, v16, v17);
      v7 = result ^ 1;
    }

    else
    {
      v7 = 1;
    }
  }

  *a4 = v7;
  return result;
}

- (BOOL)_migrateMessages
{
  v20[31] = *MEMORY[0x1E69E9840];
  connection = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self connection];
  v3 = [connection executeStatementString:@"DELETE FROM protected.messages WHERE ROWID IN (SELECT message_id FROM messages_deleted)" errorMessage:@"Deleting rows from protected.messages"];
  v19[0] = @"ROWID";
  v19[1] = @"message_id";
  v20[0] = @"messages_old.ROWID";
  v20[1] = @"ifnull(messages_old.message_id, 0)";
  v19[2] = @"remote_id";
  v19[3] = @"document_id";
  if ([connection columnExists:@"document_id" inTable:@"messages_old" type:0])
  {
    v4 = @"document_id";
  }

  else
  {
    v4 = @"null";
  }

  v20[2] = @"remote_id";
  v20[3] = v4;
  v19[4] = @"sender";
  v19[5] = @"subject_prefix";
  v20[4] = @"protected.addresses.ROWID";
  v20[5] = @"ssms_mem.parsed_subjects.prefix";
  v19[6] = @"subject";
  v19[7] = @"summary";
  v20[6] = @"protected.subjects.ROWID";
  v20[7] = @"ssms_mem.summary_id_by_message.summary_id";
  v19[8] = @"date_sent";
  v19[9] = @"date_received";
  v20[8] = @"date_sent";
  v20[9] = @"date_received";
  v19[10] = @"mailbox";
  v19[11] = @"remote_mailbox";
  v20[10] = @"mailbox";
  v20[11] = @"remote_mailbox";
  v19[12] = @"flags";
  v19[13] = @"read";
  v20[12] = @"ifnull(flags, 0)";
  v20[13] = @"ifnull(read, 0)";
  v19[14] = @"flagged";
  v19[15] = @"deleted";
  v20[14] = @"ifnull(flagged, 0)";
  v20[15] = @"ifnull(deleted, 0)";
  v19[16] = @"size";
  v19[17] = @"conversation_id";
  v20[16] = @"ifnull(size, 0)";
  v20[17] = @"ifnull(conversation_id, 0)";
  v19[18] = @"date_last_viewed";
  v19[19] = @"original_mailbox";
  v20[18] = @"null";
  v20[19] = @"original_mailbox";
  v19[20] = @"visible";
  v19[21] = @"sender_vip";
  v20[20] = @"visible";
  v20[21] = @"sender_vip";
  v19[22] = @"encoding";
  v19[23] = @"content_type";
  v20[22] = @"encoding";
  v20[23] = @"content_type";
  v19[24] = @"sequence_identifier";
  v19[25] = @"external_id";
  v20[24] = @"0";
  v20[25] = @"external_id";
  v19[26] = @"unique_id";
  v19[27] = @"content_index_transaction_id";
  v20[26] = @"unique_id";
  v20[27] = @"content_index_transaction_id";
  v19[28] = @"list_id_hash";
  v19[29] = @"journaled";
  v20[28] = @"list_id_hash";
  v20[29] = @"journaled";
  v19[30] = @"flag_color";
  v20[30] = @"CASE WHEN messages_old.flags & 16 THEN ((messages_old.flags & (7 << 41)) >> 41) ELSE NULL END";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:31];
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __70__MFMailMessageLibraryAdoptSharedSchemaMigrationStep__migrateMessages__block_invoke;
  v16[3] = &unk_1E7AA2848;
  v8 = v6;
  v17 = v8;
  v9 = v7;
  v18 = v9;
  [v5 enumerateKeysAndObjectsUsingBlock:v16];
  v10 = MEMORY[0x1E696AEC0];
  v11 = [v8 componentsJoinedByString:{@", "}];
  v12 = [v9 componentsJoinedByString:{@", "}];
  v13 = [v10 stringWithFormat:@"INSERT INTO main.messages (%@) SELECT %@ FROM messages_old JOIN protected.messages ON messages_old.ROWID = protected.messages.message_id JOIN ssms_mem.parsed_subjects ON ssms_mem.parsed_subjects.original = ifnull(protected.messages.subject, '') JOIN protected.subjects ON protected.subjects.subject = ssms_mem.parsed_subjects.unprefixed LEFT OUTER JOIN ssms_mem.parsed_addresses ON ssms_mem.parsed_addresses.fullAddress = protected.messages.sender LEFT OUTER JOIN protected.addresses ON protected.addresses.address = ssms_mem.parsed_addresses.address AND protected.addresses.comment = ssms_mem.parsed_addresses.comment LEFT OUTER JOIN ssms_mem.summary_id_by_message ON ssms_mem.summary_id_by_message.message = messages_old.ROWID ", v11, v12];

  if (v3)
  {
    LOBYTE(v3) = [connection executeStatementString:v13 errorMessage:@"Populating messages"];
  }

  v14 = *MEMORY[0x1E69E9840];
  return v3;
}

void __70__MFMailMessageLibraryAdoptSharedSchemaMigrationStep__migrateMessages__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  [*(a1 + 32) addObject:v6];
  [*(a1 + 40) addObject:v5];
}

- (BOOL)_createIndexes
{
  connection = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self connection];
  schema = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self schema];
  v5 = [schema indexDefinitionsWithDatabaseName:0];
  v6 = [connection executeStatementString:v5 errorMessage:@"Unable to create new indexes"];

  return v6;
}

- (BOOL)_cleanupOldSchema
{
  connection = [(MFMailMessageLibraryAdoptSharedSchemaMigrationStep *)self connection];
  if ([connection executeStatementString:@"DROP TABLE IF EXISTS messages_old" errorMessage:@"Dropping old messages table"] && objc_msgSend(connection, "executeStatementString:errorMessage:", @"DROP TABLE IF EXISTS mailboxes_old", @"Dropping old mailboxes table") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"DROP TABLE IF EXISTS threads", @"Dropping threads table") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"DROP TABLE IF EXISTS conversations_old", @"Dropping old conversations table") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"DROP TABLE IF EXISTS conversation_id_message_id_old", @"Dropping old conversation_id_message_id table") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"DROP TABLE IF EXISTS properties_old", @"Dropping old properties table") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"DROP TABLE IF EXISTS message_data_old", @"Dropping old message_data table") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"DROP TABLE IF EXISTS message_data_deleted_old", @"Dropping old message_data_deleted table") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"DROP TABLE IF EXISTS pop_uids_old", @"Dropping old pop_uids table") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"DROP TABLE IF EXISTS accounts_old", @"Dropping old accounts table") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"DROP TABLE IF EXISTS spotlight_tombstones_old", @"Dropping spotlight_tombstones table") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"DROP TABLE IF EXISTS spotlight_message_reindex_old", @"Dropping spotlight_message_reindex table") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"DROP TABLE IF EXISTS messages_deleted", @"Dropping messages_deleted table") && objc_msgSend(connection, "executeStatementString:errorMessage:", @"DROP TABLE IF EXISTS protected.messages", @"Dropping protected.messages"))
  {
    v3 = [connection executeStatementString:@"DROP TABLE IF EXISTS protected.message_data" errorMessage:@"Dropping protected.message_data"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end