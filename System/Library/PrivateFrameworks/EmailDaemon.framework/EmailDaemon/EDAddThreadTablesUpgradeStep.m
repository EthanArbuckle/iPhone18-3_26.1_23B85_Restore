@interface EDAddThreadTablesUpgradeStep
+ (EFSQLTableSchema)threadMailboxesTableSchema;
+ (EFSQLTableSchema)threadRecipientsTableSchema;
+ (EFSQLTableSchema)threadScopesTableSchema;
+ (EFSQLTableSchema)threadSendersTableSchema;
+ (EFSQLTableSchema)threadsTableSchema;
+ (id)_schemaWithMessagesTable:(id)a3 mailboxesTable:(id)a4 conversationsTable:(id)a5;
+ (int)runWithConnection:(id)a3;
@end

@implementation EDAddThreadTablesUpgradeStep

+ (id)_schemaWithMessagesTable:(id)a3 mailboxesTable:(id)a4 conversationsTable:(id)a5
{
  v26[5] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v23 = a5;
  v10 = [a1 threadScopesTableSchema];
  v11 = [a1 threadsTableSchema];
  v12 = [a1 threadMailboxesTableSchema];
  v13 = [a1 threadSendersTableSchema];
  v14 = [a1 threadRecipientsTableSchema];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__EDAddThreadTablesUpgradeStep__schemaWithMessagesTable_mailboxesTable_conversationsTable___block_invoke_2;
  aBlock[3] = &unk_1E82501C0;
  v25 = &__block_literal_global_2;
  v15 = _Block_copy(aBlock);
  v15[2](v15, v10, @"mailbox", v9);
  v15[2](v15, v11, @"scope", v10);
  v16 = (v15[2])(v15, v11, @"conversation", v23);
  __91__EDAddThreadTablesUpgradeStep__schemaWithMessagesTable_mailboxesTable_conversationsTable___block_invoke(v16, v11, @"newest_read_message", v8, 3);
  __91__EDAddThreadTablesUpgradeStep__schemaWithMessagesTable_mailboxesTable_conversationsTable___block_invoke(v17, v11, @"display_message", v8, 3);
  v15[2](v15, v12, @"thread", v11);
  v15[2](v15, v12, @"mailbox", v9);
  v15[2](v15, v13, @"thread", v11);
  v15[2](v15, v14, @"thread", v11);
  v18 = objc_alloc(MEMORY[0x1E699B940]);
  v26[0] = v10;
  v26[1] = v11;
  v26[2] = v12;
  v26[3] = v13;
  v26[4] = v14;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:5];
  v20 = [v18 initWithTables:v19];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

void __91__EDAddThreadTablesUpgradeStep__schemaWithMessagesTable_mailboxesTable_conversationsTable___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = a4;
  v8 = [a2 columnForName:a3];
  [v8 setAsForeignKeyForTable:v9 onDelete:a5 onUpdate:0];
}

+ (EFSQLTableSchema)threadScopesTableSchema
{
  v85[5] = *MEMORY[0x1E69E9840];
  v71 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"mailbox" nullable:1];
  v68 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"mailbox_type" nullable:1];
  v69 = [MEMORY[0x1E699B8D0] blobColumnWithName:@"filter_predicate" nullable:1];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v85[0] = v71;
  v85[1] = v68;
  v85[2] = v69;
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"needs_update" nullable:0 defaultValue:&unk_1F45E6598];
  v85[3] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"last_viewed" nullable:0 defaultValue:&unk_1F45E6598];
  v85[4] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:5];
  v6 = [v2 initWithName:@"thread_scopes" rowIDType:2 columns:v5];

  v70 = [v71 columnExpression];
  v67 = [v68 columnExpression];
  v66 = [v69 columnExpression];
  v7 = objc_alloc(MEMORY[0x1E699B898]);
  v8 = [v70 isNotNull];
  v84[0] = v8;
  v9 = [v67 isNull];
  v84[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:2];
  v65 = [v7 initWithExpressions:v10];

  v11 = objc_alloc(MEMORY[0x1E699B898]);
  v12 = [v70 isNull];
  v83[0] = v12;
  v13 = [v67 isNotNull];
  v83[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];
  v64 = [v11 initWithExpressions:v14];

  v15 = objc_alloc(MEMORY[0x1E699B928]);
  v82[0] = v65;
  v82[1] = v64;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:2];
  v63 = [v15 initWithExpressions:v16];

  [v6 addCheckConstraintForExpression:v63];
  v17 = objc_alloc(MEMORY[0x1E699B898]);
  v18 = [v70 isNotNull];
  v81[0] = v18;
  v19 = [v66 isNull];
  v81[1] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:2];
  v21 = [v17 initWithExpressions:v20];

  v22 = objc_alloc(MEMORY[0x1E699B900]);
  v23 = [v6 name];
  v24 = [v71 name];
  v80 = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
  v62 = [v22 initWithTableName:v23 columnNames:v25 where:v21 unique:1];

  [v6 addIndex:v62];
  v26 = objc_alloc(MEMORY[0x1E699B898]);
  v27 = [v70 isNotNull];
  v79[0] = v27;
  v28 = [v66 isNotNull];
  v79[1] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:2];
  v30 = [v26 initWithExpressions:v29];

  v31 = objc_alloc(MEMORY[0x1E699B900]);
  v32 = [v6 name];
  v33 = [v71 name];
  v78[0] = v33;
  v34 = [v69 name];
  v78[1] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:2];
  v36 = [v31 initWithTableName:v32 columnNames:v35 where:v30 unique:1];

  [v6 addIndex:v36];
  v37 = objc_alloc(MEMORY[0x1E699B898]);
  v38 = [v67 isNotNull];
  v77[0] = v38;
  v39 = [v66 isNull];
  v77[1] = v39;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];
  v41 = [v37 initWithExpressions:v40];

  v42 = objc_alloc(MEMORY[0x1E699B900]);
  v43 = [v6 name];
  v44 = [v68 name];
  v76 = v44;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
  v46 = [v42 initWithTableName:v43 columnNames:v45 where:v41 unique:1];

  [v6 addIndex:v46];
  v47 = objc_alloc(MEMORY[0x1E699B898]);
  v48 = [v67 isNotNull];
  v75[0] = v48;
  v49 = [v66 isNotNull];
  v75[1] = v49;
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:2];
  v51 = [v47 initWithExpressions:v50];

  v52 = objc_alloc(MEMORY[0x1E699B900]);
  v53 = [v6 name];
  v54 = [v68 name];
  v74[0] = v54;
  v55 = [v69 name];
  v74[1] = v55;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:2];
  v57 = [v52 initWithTableName:v53 columnNames:v56 where:v51 unique:1];

  [v6 addIndex:v57];
  v73 = @"needs_update";
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
  [v6 addIndexForColumns:v58];

  v72 = @"last_viewed";
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
  [v6 addIndexForColumns:v59];

  v60 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (EFSQLTableSchema)threadsTableSchema
{
  v34[23] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v31 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"scope" nullable:0];
  v34[0] = v31;
  v30 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"conversation" nullable:0];
  v34[1] = v30;
  v29 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"newest_read_message" nullable:1];
  v34[2] = v29;
  v28 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"display_message" nullable:1];
  v34[3] = v28;
  v27 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"date" nullable:0];
  v34[4] = v27;
  v26 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"read" nullable:0 defaultValue:&unk_1F45E6598];
  v34[5] = v26;
  v25 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"flagged" nullable:0 defaultValue:&unk_1F45E6598];
  v34[6] = v25;
  v24 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_red_flag" nullable:0 defaultValue:&unk_1F45E6598];
  v34[7] = v24;
  v23 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_orange_flag" nullable:0 defaultValue:&unk_1F45E6598];
  v34[8] = v23;
  v22 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_yellow_flag" nullable:0 defaultValue:&unk_1F45E6598];
  v34[9] = v22;
  v21 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_green_flag" nullable:0 defaultValue:&unk_1F45E6598];
  v34[10] = v21;
  v20 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_blue_flag" nullable:0 defaultValue:&unk_1F45E6598];
  v34[11] = v20;
  v19 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_purple_flag" nullable:0 defaultValue:&unk_1F45E6598];
  v34[12] = v19;
  v18 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_gray_flag" nullable:0 defaultValue:&unk_1F45E6598];
  v34[13] = v18;
  v17 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"draft" nullable:0 defaultValue:&unk_1F45E6598];
  v34[14] = v17;
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"replied" nullable:0 defaultValue:&unk_1F45E6598];
  v34[15] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"forwarded" nullable:0 defaultValue:&unk_1F45E6598];
  v34[16] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"redirected" nullable:0 defaultValue:&unk_1F45E6598];
  v34[17] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"junk_level_set_by_user" nullable:0 defaultValue:&unk_1F45E6598];
  v34[18] = v6;
  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"junk_level" nullable:0 defaultValue:&unk_1F45E6598];
  v34[19] = v7;
  v8 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_unflagged" nullable:0 defaultValue:&unk_1F45E6598];
  v34[20] = v8;
  v9 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_attachments" nullable:0 defaultValue:&unk_1F45E6598];
  v34[21] = v9;
  v10 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"count" nullable:0];
  v34[22] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:23];
  v12 = [v2 initWithName:@"threads" rowIDType:2 columns:v11];

  v33[0] = @"scope";
  v33[1] = @"conversation";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  [v12 addUniquenessConstraintForColumns:v13 conflictResolution:1];

  v32[0] = @"scope";
  v32[1] = @"date";
  v32[2] = @"conversation";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
  [v12 addIndexForColumns:v14];

  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (EFSQLTableSchema)threadMailboxesTableSchema
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"thread" nullable:0];
  v11[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"mailbox" nullable:0];
  v11[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v10[0] = @"thread";
  v10[1] = @"mailbox";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v7 = [v2 initWithName:@"thread_mailboxes" columns:v5 primaryKeyColumns:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

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
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"priority" nullable:0 defaultValue:&unk_1F45E6598];
  v17[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
  v16[0] = @"thread";
  v16[1] = @"address";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v9 = [v2 initWithName:@"thread_senders" columns:v7 primaryKeyColumns:v8];

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
  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"priority" nullable:0 defaultValue:&unk_1F45E6598];
  v18[4] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:5];
  v17[0] = @"thread";
  v17[1] = @"type";
  v17[2] = @"address";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
  v10 = [v2 initWithName:@"thread_recipients" columns:v8 primaryKeyColumns:v9];

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

+ (int)runWithConnection:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E699B958]);
  v6 = [v5 initWithName:@"messages" rowIDType:2 columns:MEMORY[0x1E695E0F0]];
  v7 = objc_alloc(MEMORY[0x1E699B958]);
  v8 = [v7 initWithName:@"mailboxes" rowIDType:2 columns:MEMORY[0x1E695E0F0]];
  v9 = objc_alloc(MEMORY[0x1E699B958]);
  v10 = [v9 initWithName:@"conversations" rowIDType:2 rowIDAlias:@"conversation_id" columns:MEMORY[0x1E695E0F0]];
  v11 = [a1 _schemaWithMessagesTable:v6 mailboxesTable:v8 conversationsTable:v10];
  v12 = [v11 definitionWithDatabaseName:0];
  v13 = sqlite3_exec([v4 sqlDB], objc_msgSend(v12, "UTF8String"), 0, 0, 0);

  return v13;
}

@end