@interface EDPersistenceDatabaseSchema
+ (EFSQLSchema)protectedSchema;
+ (EFSQLSchema)schema;
+ (id)_protectedSchemaProviders;
+ (id)_schemaProviders;
+ (id)_schemaWithPopulationBlock:(id)a3;
+ (id)partialMailboxesTableSchema;
+ (id)propertiesTableSchema;
+ (void)_initializeSchemas;
+ (void)registerAdditionalPropertiesForPropertyMapper:(id)a3;
+ (void)test_resetSchema;
@end

@implementation EDPersistenceDatabaseSchema

+ (void)test_resetSchema
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"EDPersistenceDatabaseSchema.m" lineNumber:49 description:{@"%s can only be called from unit tests", "+[EDPersistenceDatabaseSchema test_resetSchema]"}];
  }

  os_unfair_lock_lock(&sSchemaLock);
  v4 = sSchema;
  sSchema = 0;

  v5 = sProtectedSchema;
  sProtectedSchema = 0;

  os_unfair_lock_unlock(&sSchemaLock);
}

+ (EFSQLSchema)schema
{
  os_unfair_lock_lock(&sSchemaLock);
  v3 = sSchema;
  if (!sSchema)
  {
    [a1 _initializeSchemas];
    v3 = sSchema;
  }

  v4 = v3;
  os_unfair_lock_unlock(&sSchemaLock);

  return v4;
}

+ (EFSQLSchema)protectedSchema
{
  os_unfair_lock_lock(&sSchemaLock);
  v3 = sProtectedSchema;
  if (!sProtectedSchema)
  {
    [a1 _initializeSchemas];
    v3 = sProtectedSchema;
  }

  v4 = v3;
  os_unfair_lock_unlock(&sSchemaLock);

  return v4;
}

+ (void)_initializeSchemas
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __49__EDPersistenceDatabaseSchema__initializeSchemas__block_invoke;
  v22[3] = &unk_1E8255D20;
  v24 = a1;
  v4 = v3;
  v23 = v4;
  v5 = [a1 _schemaWithPopulationBlock:v22];
  v6 = sSchema;
  sSchema = v5;

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __49__EDPersistenceDatabaseSchema__initializeSchemas__block_invoke_2;
  v21[3] = &__block_descriptor_40_e43_v24__0__NSMutableArray_8__NSMutableArray_16l;
  v21[4] = a1;
  v7 = [a1 _schemaWithPopulationBlock:v21];
  v8 = sProtectedSchema;
  sProtectedSchema = v7;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v10)
  {
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (([v13 resolveWithSchema:sSchema] & 1) == 0 && (objc_msgSend(v13, "resolveWithSchema:", sProtectedSchema) & 1) == 0)
        {
          v14 = [MEMORY[0x1E696AAA8] currentHandler];
          [v14 handleFailureInMethod:a2 object:a1 file:@"EDPersistenceDatabaseSchema.m" lineNumber:99 description:{@"Unable to resolve association: %@", v13}];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __49__EDPersistenceDatabaseSchema__initializeSchemas__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [*(a1 + 40) _schemaProviders];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v16 = 0;
        v17 = 0;
        v12 = [v11 tablesAndForeignKeysToResolve:&v17 associationsToResolve:&v16];
        v13 = v17;
        v14 = v16;
        [v5 addObjectsFromArray:v12];
        [v6 addObjectsFromArray:v13];
        [*(a1 + 32) addObjectsFromArray:v14];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __49__EDPersistenceDatabaseSchema__initializeSchemas__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [*(a1 + 32) _protectedSchemaProviders];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v15 = 0;
        v12 = [v11 protectedTablesAndForeignKeysToResolve:&v15];
        v13 = v15;
        [v5 addObjectsFromArray:v12];
        [v6 addObjectsFromArray:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (id)_schemaWithPopulationBlock:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4[2](v4, v5);
  v6 = [objc_alloc(MEMORY[0x1E699B940]) initWithTables:v5];
  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8 = +[EDMessagePersistence messagesTableName];
  v9 = [a1 mailboxesTableName];
  v10 = [v7 initWithObjects:{v8, v9, 0}];
  v19 = a1;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v21;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        if (([v15 resolveWithSchema:v6] & 1) == 0 && (objc_msgSend(v15, "resolveToStringForTableNames:", v10) & 1) == 0)
        {
          v16 = [MEMORY[0x1E696AAA8] currentHandler];
          [v16 handleFailureInMethod:a2 object:v19 file:@"EDPersistenceDatabaseSchema.m" lineNumber:113 description:{@"Unable to resolve foreign key constraint: %@", v15}];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)_schemaProviders
{
  v8[14] = *MEMORY[0x1E69E9840];
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v8[3] = objc_opt_class();
  v8[4] = objc_opt_class();
  v8[5] = objc_opt_class();
  v8[6] = objc_opt_class();
  v8[7] = objc_opt_class();
  v8[8] = objc_opt_class();
  v8[9] = objc_opt_class();
  v8[10] = objc_opt_class();
  v8[11] = objc_opt_class();
  v8[12] = objc_opt_class();
  v3 = [a1 additionalSchemaProviders];
  v8[13] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:14];
  v5 = [v4 ef_flatten];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)_protectedSchemaProviders
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (void)registerAdditionalPropertiesForPropertyMapper:(id)a3
{
  v3 = a3;
  [v3 registerColumnName:@"ROWID" table:@"interaction_log" lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_eventID];
  [v3 registerColumnName:@"version" table:@"interaction_log" lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_version];
  [v3 registerColumnName:@"date" table:@"interaction_log" lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_date];
  [v3 registerColumnName:@"account" table:@"interaction_log" lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_accountID];
  [v3 registerColumnName:@"mailbox" table:@"interaction_log" lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_mailboxID];
  [v3 registerColumnName:@"conversation" table:@"interaction_log" lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_conversationID];
  [v3 registerColumnName:@"message_id_hash" table:@"interaction_log" lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_messageIDHash];
  [v3 registerColumnName:@"message" table:@"interaction_log" lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_messagePersistentID];
  [v3 registerColumnName:@"name" table:@"interaction_log" lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_name];
  [v3 registerColumnName:@"data" table:@"interaction_log" lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_data];
}

+ (id)propertiesTableSchema
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E699B958]);
  v4 = [a1 propertiesTableName];
  v5 = [MEMORY[0x1E699B8D0] textColumnWithName:@"key" collation:1 nullable:0];
  v11[0] = v5;
  v6 = [MEMORY[0x1E699B8D0] blobColumnWithName:@"value" nullable:0];
  v11[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v8 = [v3 initWithName:v4 rowIDType:1 columns:v7];

  [v8 addUniquenessConstraintForColumns:&unk_1F45E6F10 conflictResolution:1];
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)partialMailboxesTableSchema
{
  v13[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E699B958]);
  v4 = [a1 mailboxesTableName];
  v5 = [MEMORY[0x1E699B8D0] textColumnWithName:@"url" collation:1 nullable:0];
  v13[0] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"total_count" nullable:0 defaultValue:&unk_1F45E6898];
  v13[1] = v6;
  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"unread_count" nullable:0 defaultValue:&unk_1F45E6898];
  v13[2] = v7;
  v8 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"deleted_count" nullable:0 defaultValue:&unk_1F45E6898];
  v13[3] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];
  v10 = [v3 initWithName:v4 rowIDType:2 columns:v9];

  [v10 addUniquenessConstraintForColumns:&unk_1F45E6F28 conflictResolution:1];
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end