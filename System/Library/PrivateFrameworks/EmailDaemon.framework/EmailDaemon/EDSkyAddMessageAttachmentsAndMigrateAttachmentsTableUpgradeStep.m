@interface EDSkyAddMessageAttachmentsAndMigrateAttachmentsTableUpgradeStep
+ (BOOL)createMessageAttachmentsTableWithConnection:(id)a3;
+ (BOOL)createNewAttachmentTableWithConnection:(id)a3;
+ (BOOL)createNewSearchableAttachmentsTable:(id)a3;
+ (BOOL)deleteAttachmentsTableWithConnection:(id)a3;
+ (BOOL)deleteMessageAttachmentsTableWithConnection:(id)a3;
+ (BOOL)insertAttachmentIntoAttachmentTableWithAttachmentMetadata:(id)a3 connection:(id)a4;
+ (BOOL)insertIntoMessageAttachmentTableGlobalMessageID:(id)a3 attachmentMetadata:(id)a4 attachmentID:(int64_t)a5 connection:(id)a6;
+ (OS_os_log)log;
+ (int)runWithConnection:(id)a3 dataProvider:(id)a4;
@end

@implementation EDSkyAddMessageAttachmentsAndMigrateAttachmentsTableUpgradeStep

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__EDSkyAddMessageAttachmentsAndMigrateAttachmentsTableUpgradeStep_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_98 != -1)
  {
    dispatch_once(&log_onceToken_98, block);
  }

  v2 = log_log_98;

  return v2;
}

void __70__EDSkyAddMessageAttachmentsAndMigrateAttachmentsTableUpgradeStep_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_98;
  log_log_98 = v1;
}

+ (int)runWithConnection:(id)a3 dataProvider:(id)a4
{
  v5 = a3;
  [a1 deleteAttachmentsTableWithConnection:v5];
  if ([a1 deleteMessageAttachmentsTableWithConnection:v5] && objc_msgSend(a1, "createMessageAttachmentsTableWithConnection:", v5) && objc_msgSend(a1, "createNewAttachmentTableWithConnection:", v5) && objc_msgSend(v5, "executeStatementString:errorMessage:", @"DROP TABLE searchable_attachments", @"Removing searchable_attachments table"))
  {
    v6 = [a1 createNewSearchableAttachmentsTable:v5];
  }

  else
  {
    v6 = 0;
  }

  [v5 executeStatementString:@"INSERT INTO properties  (key errorMessage:{value) VALUES (NeedToMigrateAttachments, 1)", @"Setting need to upgrade property"}];

  return v6 ^ 1;
}

+ (BOOL)createNewAttachmentTableWithConnection:(id)a3
{
  v24[7] = *MEMORY[0x1E69E9840];
  v21 = a3;
  v3 = objc_alloc(MEMORY[0x1E699B958]);
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"size" nullable:0 defaultValue:&unk_1F45E6AC0];
  v24[0] = v4;
  v5 = [MEMORY[0x1E699B8D0] textColumnWithName:@"hash" collation:1 nullable:1];
  v24[1] = v5;
  v6 = [MEMORY[0x1E699B8D0] textColumnWithName:@"file_name_on_file_system" collation:1 nullable:1];
  v24[2] = v6;
  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"viewed_count" nullable:0 defaultValue:&unk_1F45E6AC0];
  v24[3] = v7;
  v8 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"last_viewed" nullable:0 defaultValue:&unk_1F45E6AC0];
  v24[4] = v8;
  v9 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"viewed_by_tapped_count" nullable:0 defaultValue:&unk_1F45E6AC0];
  v24[5] = v9;
  v10 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"date_last_downloaded" nullable:0 defaultValue:&unk_1F45E6AC0];
  v24[6] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:7];
  v12 = [v3 initWithName:@"attachments" rowIDType:2 columns:v11];

  v23 = @"hash";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  [v12 addUniquenessConstraintForColumns:v13 conflictResolution:1];

  v14 = objc_alloc(MEMORY[0x1E699B940]);
  v22 = v12;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v16 = [v14 initWithTables:v15];

  v17 = [v16 definitionWithDatabaseName:0];
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to create %@", @"attachments"];
  LOBYTE(v5) = [v21 executeStatementString:v17 errorMessage:v18];

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (BOOL)deleteAttachmentsTableWithConnection:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TABLE IF EXISTS %@", @"attachments"];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to delete table %@", @"attachments"];
  v6 = [v3 executeStatementString:v4 errorMessage:v5];

  return v6;
}

+ (BOOL)deleteMessageAttachmentsTableWithConnection:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TABLE IF EXISTS %@", @"message_attachments"];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to delete table %@", @"message_attachments"];
  v6 = [v3 executeStatementString:v4 errorMessage:v5];

  return v6;
}

+ (BOOL)createMessageAttachmentsTableWithConnection:(id)a3
{
  v51[5] = *MEMORY[0x1E69E9840];
  v41 = a3;
  v44 = [MEMORY[0x1E699B8D0] textColumnWithName:@"mime_part_number" collation:1 nullable:1];
  v43 = [MEMORY[0x1E699B8D0] textColumnWithName:@"remote_url" collation:1 nullable:1];
  v3 = objc_alloc(MEMORY[0x1E699B958]);
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"global_message_id" nullable:0];
  v51[0] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"attachment" nullable:1];
  v51[1] = v5;
  v6 = [MEMORY[0x1E699B8D0] textColumnWithName:@"name" collation:1 nullable:0];
  v51[2] = v6;
  v51[3] = v44;
  v51[4] = v43;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:5];
  v8 = [v3 initWithName:@"message_attachments" rowIDType:2 columns:v7];

  v50[0] = @"global_message_id";
  v50[1] = @"mime_part_number";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
  [v8 addUniquenessConstraintForColumns:v9 conflictResolution:1];

  v49[0] = @"global_message_id";
  v49[1] = @"remote_url";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  [v8 addUniquenessConstraintForColumns:v10 conflictResolution:1];

  v11 = objc_alloc(MEMORY[0x1E699B898]);
  v12 = [v44 columnExpression];
  v13 = [v12 isNotNull];
  v48[0] = v13;
  v14 = [v43 columnExpression];
  v15 = [v14 isNull];
  v48[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
  v42 = [v11 initWithExpressions:v16];

  v17 = objc_alloc(MEMORY[0x1E699B898]);
  v18 = [v44 columnExpression];
  v19 = [v18 isNull];
  v47[0] = v19;
  v20 = [v43 columnExpression];
  v21 = [v20 isNotNull];
  v47[1] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
  v23 = [v17 initWithExpressions:v22];

  v24 = objc_alloc(MEMORY[0x1E699B928]);
  v46[0] = v42;
  v46[1] = v23;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
  v26 = [v24 initWithExpressions:v25];

  [v8 addCheckConstraintForExpression:v26];
  v27 = objc_alloc(MEMORY[0x1E699B958]);
  v28 = +[EDMessagePersistence messageGlobalDataTableName];
  v29 = [v27 initWithName:v28 rowIDType:2 columns:MEMORY[0x1E695E0F0]];

  v30 = [v8 columnForName:@"global_message_id"];
  [v30 setAsForeignKeyForTable:v29 onDelete:2 onUpdate:0];

  v31 = objc_alloc(MEMORY[0x1E699B958]);
  v32 = [v31 initWithName:@"attachments" rowIDType:2 columns:MEMORY[0x1E695E0F0]];
  v33 = [v8 columnForName:@"attachment"];
  [v33 setAsForeignKeyForTable:v32 onDelete:0 onUpdate:0];

  v34 = objc_alloc(MEMORY[0x1E699B940]);
  v45 = v8;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
  v36 = [v34 initWithTables:v35];

  v37 = [v36 definitionWithDatabaseName:0];
  v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to create %@", @"attachments"];
  LOBYTE(v22) = [v41 executeStatementString:v37 errorMessage:v38];

  v39 = *MEMORY[0x1E69E9840];
  return v22;
}

+ (BOOL)createNewSearchableAttachmentsTable:(id)a3
{
  v24[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E699B958]);
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"attachment" nullable:1];
  v24[0] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"message_id" nullable:1];
  v24[1] = v6;
  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"transaction_id" nullable:0];
  v24[2] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
  v9 = [v4 initWithName:@"searchable_attachments" rowIDType:1 rowIDAlias:@"attachment_id" columns:v8];

  v23 = @"attachment";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  [v9 addIndexForColumns:v10];

  [v9 addIndexForColumns:&unk_1F45E6FE8];
  v11 = objc_alloc(MEMORY[0x1E699B958]);
  v12 = [v11 initWithName:@"message_attachments" rowIDType:2 columns:MEMORY[0x1E695E0F0]];
  v13 = [v9 columnForName:@"attachment"];
  [v13 setAsForeignKeyForTable:v12 onDelete:3 onUpdate:0];

  v14 = objc_alloc(MEMORY[0x1E699B940]);
  v22 = v9;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v16 = [v14 initWithTables:v15];

  v17 = [v16 definitionWithDatabaseName:0];
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to create %@", @"searchable_attachments"];
  v19 = [v3 executeStatementString:v17 errorMessage:v18];

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

+ (BOOL)insertIntoMessageAttachmentTableGlobalMessageID:(id)a3 attachmentMetadata:(id)a4 attachmentID:(int64_t)a5 connection:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:@"message_attachments" conflictResolution:4];
  [v12 setObject:v9 forKeyedSubscript:@"global_message_id"];
  v13 = [v10 name];
  [v12 setObject:v13 forKeyedSubscript:@"name"];

  v14 = [v10 mimePartNumber];
  [v12 setObject:v14 forKeyedSubscript:@"mime_part_number"];

  if (*MEMORY[0x1E699A728] != a5)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithLongLong:a5];
    [v12 setObject:v15 forKeyedSubscript:@"attachment"];
  }

  v16 = [v10 remoteURL];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 absoluteString];
    [v12 setObject:v18 forKeyedSubscript:@"remote_url"];
  }

  v24 = 0;
  v19 = [v11 executeInsertStatement:v12 error:&v24];
  v20 = v24;
  if (v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = 1;
  }

  if ((v21 & 1) == 0)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to insert messageID %@ into message_attachments table", v9];
    [v11 handleError:v20 message:v22];
  }

  return v19;
}

+ (BOOL)insertAttachmentIntoAttachmentTableWithAttachmentMetadata:(id)a3 connection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:@"attachments" conflictResolution:3];
  v8 = [v5 size];
  [v7 setObject:v8 forKeyedSubscript:@"size"];

  v9 = [v5 attachmentHash];
  [v7 setObject:v9 forKeyedSubscript:@"hash"];

  v10 = [v5 nameOnDisk];
  [v7 setObject:v10 forKeyedSubscript:@"file_name_on_file_system"];

  v11 = [v5 downloadDate];
  v12 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x1E695DF00] date];
  }

  [v7 setObject:v12 forKeyedSubscript:@"date_last_downloaded"];
  if (!v11)
  {
  }

  v19 = 0;
  v13 = [v6 executeInsertStatement:v7 error:&v19];
  v14 = v19;
  if ((v13 & 1) == 0)
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = [v5 attachmentHash];
    v17 = [v15 stringWithFormat:@"Unable to insert attachment hash %@ into attachments table", v16];
    [v6 handleError:v14 message:v17];
  }

  return v13;
}

@end