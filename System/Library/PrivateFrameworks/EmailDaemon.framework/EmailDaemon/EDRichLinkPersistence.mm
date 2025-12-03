@interface EDRichLinkPersistence
+ (id)messagesRichLinksTableSchema;
+ (id)richLinksTableSchema;
+ (id)tablesAndForeignKeysToResolve:(id *)resolve associationsToResolve:(id *)toResolve;
- (EDRichLinkPersistence)initWithDatabase:(id)database;
- (id)_hashForRichLinkData:(id)data;
- (id)datasForPersistentIDs:(id)ds basePath:(id)path;
- (id)richLinkDataForPersistentID:(id)d basePath:(id)path;
- (id)richLinkPersistentIDsForGlobalMessageID:(int64_t)d;
- (id)richLinkURLsForMessageIDs:(id)ds;
- (id)saveRichLinkData:(id)data globalMessageID:(int64_t)d basePath:(id)path;
- (void)cleanUpLegacyRichLinkFilesAtBasePath:(id)path;
@end

@implementation EDRichLinkPersistence

void ___ef_log_EDRichLinkPersistence_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EDRichLinkPersistence");
  v1 = _ef_log_EDRichLinkPersistence_log;
  _ef_log_EDRichLinkPersistence_log = v0;
}

+ (id)tablesAndForeignKeysToResolve:(id *)resolve associationsToResolve:(id *)toResolve
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = [EDRichLinkPersistence richLinksTableSchema:resolve];
  v6 = +[EDRichLinkPersistence messagesRichLinksTableSchema];
  v7 = [v6 columnForName:@"rich_link"];
  [v7 setAsForeignKeyForTable:v5 onDelete:2 onUpdate:0];

  v8 = [EDPersistenceForeignKeyPlaceholder alloc];
  v9 = [v6 columnForName:@"global_message_id"];
  v10 = [(EDPersistenceForeignKeyPlaceholder *)v8 initWithColumn:v9 tableName:@"message_global_data" onDelete:2 onUpdate:0];
  v15[0] = v10;
  *resolve = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

  v14[0] = v5;
  v14[1] = v6;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)richLinksTableSchema
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] textColumnWithName:@"title" collation:1 nullable:1];
  v12[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] textColumnWithName:@"url" collation:1 nullable:0];
  v12[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] textColumnWithName:@"hash" collation:1 nullable:0];
  v12[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
  v7 = [v2 initWithName:@"rich_links" rowIDType:2 columns:v6];

  v11 = @"hash";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  [v7 addUniquenessConstraintForColumns:v8 conflictResolution:1];

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)messagesRichLinksTableSchema
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"global_message_id" nullable:0];
  v11[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"rich_link" nullable:0];
  v11[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v10[0] = @"global_message_id";
  v10[1] = @"rich_link";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v7 = [v2 initWithName:@"message_rich_links" columns:v5 primaryKeyColumns:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (EDRichLinkPersistence)initWithDatabase:(id)database
{
  databaseCopy = database;
  v10.receiver = self;
  v10.super_class = EDRichLinkPersistence;
  v6 = [(EDRichLinkPersistence *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, database);
    mailDataDirectory = [MEMORY[0x1E699AE20] mailDataDirectory];
    [(EDRichLinkPersistence *)v7 cleanUpLegacyRichLinkFilesAtBasePath:mailDataDirectory];
  }

  return v7;
}

- (id)saveRichLinkData:(id)data globalMessageID:(int64_t)d basePath:(id)path
{
  dataCopy = data;
  pathCopy = path;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__37;
  v32 = __Block_byref_object_dispose__37;
  v33 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2050000000;
  v10 = getLPLinkMetadataClass_softClass;
  v38 = getLPLinkMetadataClass_softClass;
  if (!getLPLinkMetadataClass_softClass)
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __getLPLinkMetadataClass_block_invoke;
    v34[3] = &unk_1E8250000;
    v34[4] = &v35;
    __getLPLinkMetadataClass_block_invoke(v34);
    v10 = v36[3];
  }

  v11 = v10;
  _Block_object_dispose(&v35, 8);
  v12 = objc_alloc_init(v10);
  title = [dataCopy title];
  [v12 setTitle:title];

  v14 = [dataCopy url];
  [v12 setOriginalURL:v14];

  dataRepresentation = [v12 dataRepresentation];
  v16 = [(EDRichLinkPersistence *)self _hashForRichLinkData:dataRepresentation];
  database = self->_database;
  v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDRichLinkPersistence saveRichLinkData:globalMessageID:basePath:]"];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __67__EDRichLinkPersistence_saveRichLinkData_globalMessageID_basePath___block_invoke;
  v23[3] = &unk_1E8256738;
  v19 = v16;
  v24 = v19;
  v20 = dataCopy;
  v25 = v20;
  v26 = &v28;
  dCopy = d;
  [(EDPersistenceDatabase *)database __performWriteWithCaller:v18 usingBlock:v23];

  v21 = v29[5];
  _Block_object_dispose(&v28, 8);

  return v21;
}

uint64_t __67__EDRichLinkPersistence_saveRichLinkData_globalMessageID_basePath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 1;
  v4 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:@"rich_links"];
  [v4 setObject:*(a1 + 32) forKeyedSubscript:@"hash"];
  v5 = [*(a1 + 40) title];

  if (v5)
  {
    v6 = [*(a1 + 40) title];
    [v4 setObject:v6 forKeyedSubscript:@"title"];
  }

  v7 = [*(a1 + 40) url];
  v8 = [v7 absoluteString];
  [v4 setObject:v8 forKeyedSubscript:@"url"];

  v30 = 0;
  LODWORD(v8) = [v3 executeInsertStatement:v4 error:&v30];
  v9 = v30;
  v10 = v9;
  *(v32 + 24) = v8;
  if (v8)
  {
    v11 = -[EDPersistedRichLinkID initWithDatabaseID:]([EDPersistedRichLinkID alloc], "initWithDatabaseID:", [v3 lastInsertedDatabaseID]);
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
    goto LABEL_10;
  }

  v14 = [v9 domain];
  if ([v14 isEqualToString:*MEMORY[0x1E699B770]])
  {
    v15 = [v10 code];

    if (v15 == 19)
    {
      v16 = objc_alloc(MEMORY[0x1E699B948]);
      v13 = [v16 initWithResultColumn:*MEMORY[0x1E699B768] table:@"rich_links"];
      v17 = [MEMORY[0x1E699B8C8] column:@"hash"];
      v18 = [v17 equalTo:*(a1 + 32)];
      [v13 setWhere:v18];

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __67__EDRichLinkPersistence_saveRichLinkData_globalMessageID_basePath___block_invoke_2;
      v29[3] = &unk_1E8250468;
      v29[4] = *(a1 + 48);
      v29[5] = &v31;
      [v3 executeSelectStatement:v13 withBlock:v29 error:0];
      goto LABEL_10;
    }
  }

  else
  {
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to insert rich link into rich_links table: %@", v10];
  [v3 handleError:v10 message:v13];
LABEL_10:

  if (*(v32 + 24) == 1)
  {
    v19 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:@"message_rich_links"];
    v20 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 56)];
    [v19 setObject:v20 forKeyedSubscript:@"global_message_id"];

    v21 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "databaseID")}];
    [v19 setObject:v21 forKeyedSubscript:@"rich_link"];

    v28 = v10;
    LOBYTE(v21) = [v3 executeInsertStatement:v19 error:&v28];
    v22 = v28;

    *(v32 + 24) = v21;
    if ((v21 & 1) == 0)
    {
      v23 = [v22 domain];
      if ([v23 isEqualToString:*MEMORY[0x1E699B770]])
      {
        v24 = [v22 code];

        if (v24 == 19)
        {
          *(v32 + 24) = 1;
          goto LABEL_18;
        }
      }

      else
      {
      }

      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to insert rich link with rowID %@ into message_rich_links table", *(*(*(a1 + 48) + 8) + 40)];
      [v3 handleError:v22 message:v26];
    }

LABEL_18:

    v25 = *(v32 + 24);
    goto LABEL_19;
  }

  v25 = 0;
  v22 = v10;
LABEL_19:

  _Block_object_dispose(&v31, 8);
  return v25 & 1;
}

void __67__EDRichLinkPersistence_saveRichLinkData_globalMessageID_basePath___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [EDPersistedRichLinkID alloc];
  v4 = [v8 objectAtIndexedSubscript:0];
  v5 = -[EDPersistedRichLinkID initWithDatabaseID:](v3, "initWithDatabaseID:", [v4 databaseIDValue]);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (id)richLinkDataForPersistentID:(id)d basePath:(id)path
{
  dCopy = d;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__37;
  v18 = __Block_byref_object_dispose__37;
  v19 = 0;
  database = self->_database;
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDRichLinkPersistence richLinkDataForPersistentID:basePath:]"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__EDRichLinkPersistence_richLinkDataForPersistentID_basePath___block_invoke;
  v11[3] = &unk_1E8250350;
  v8 = dCopy;
  v12 = v8;
  v13 = &v14;
  [(EDPersistenceDatabase *)database __performReadWithCaller:v7 usingBlock:v11];

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

uint64_t __62__EDRichLinkPersistence_richLinkDataForPersistentID_basePath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E699B948]);
  v5 = [MEMORY[0x1E699B8C8] allColumns];
  v6 = [v4 initWithResult:v5 table:@"rich_links"];

  v7 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "databaseID")}];
  v9 = [v7 equalTo:v8];
  [v6 setWhere:v9];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__EDRichLinkPersistence_richLinkDataForPersistentID_basePath___block_invoke_2;
  v13[3] = &unk_1E8250178;
  v12 = *(a1 + 32);
  v10 = v12;
  v14 = v12;
  [v3 executeSelectStatement:v6 withBlock:v13 error:0];

  return 1;
}

void __62__EDRichLinkPersistence_richLinkDataForPersistentID_basePath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E695DFF8];
  v15 = v3;
  v5 = [v3 objectForKeyedSubscript:@"url"];
  v6 = [v5 stringValue];
  v7 = [v4 URLWithString:v6];

  v8 = [EDRichLinkData alloc];
  v9 = *(a1 + 32);
  v10 = [v15 objectForKeyedSubscript:@"title"];
  v11 = [v10 stringValue];
  v12 = [(EDRichLinkData *)v8 initWithPersistentID:v9 title:v11 url:v7];
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

- (id)datasForPersistentIDs:(id)ds basePath:(id)path
{
  dsCopy = ds;
  pathCopy = path;
  v8 = objc_opt_new();
  database = self->_database;
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDRichLinkPersistence datasForPersistentIDs:basePath:]"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__EDRichLinkPersistence_datasForPersistentIDs_basePath___block_invoke;
  v14[3] = &unk_1E8250440;
  v11 = dsCopy;
  v15 = v11;
  selfCopy = self;
  v12 = pathCopy;
  v17 = v12;
  [(EDPersistenceDatabase *)database __performReadWithCaller:v10 usingBlock:v14];

  return v8;
}

uint64_t __56__EDRichLinkPersistence_datasForPersistentIDs_basePath___block_invoke(void *a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__EDRichLinkPersistence_datasForPersistentIDs_basePath___block_invoke_2;
  v5[3] = &unk_1E8256760;
  v1 = a1[4];
  v2 = a1[6];
  v5[4] = a1[5];
  v6 = v2;
  v3 = [v1 ef_compactMap:v5];

  return 1;
}

id __56__EDRichLinkPersistence_datasForPersistentIDs_basePath___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) richLinkDataForPersistentID:a2 basePath:*(a1 + 40)];

  return v2;
}

- (id)richLinkPersistentIDsForGlobalMessageID:(int64_t)d
{
  v5 = objc_opt_new();
  database = self->_database;
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDRichLinkPersistence richLinkPersistentIDsForGlobalMessageID:]"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__EDRichLinkPersistence_richLinkPersistentIDsForGlobalMessageID___block_invoke;
  v10[3] = &unk_1E82503F0;
  dCopy = d;
  v8 = v5;
  v11 = v8;
  [(EDPersistenceDatabase *)database __performReadWithCaller:v7 usingBlock:v10];

  return v8;
}

uint64_t __65__EDRichLinkPersistence_richLinkPersistentIDsForGlobalMessageID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"rich_link" table:@"message_rich_links"];
  v5 = [MEMORY[0x1E699B8C8] column:@"global_message_id"];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 40)];
  v7 = [v5 equalTo:v6];
  [v4 setWhere:v7];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__EDRichLinkPersistence_richLinkPersistentIDsForGlobalMessageID___block_invoke_2;
  v9[3] = &unk_1E8250300;
  v10 = *(a1 + 32);
  [v3 executeSelectStatement:v4 withBlock:v9 error:0];

  return 1;
}

void __65__EDRichLinkPersistence_richLinkPersistentIDsForGlobalMessageID___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 32);
  v4 = [EDPersistedRichLinkID alloc];
  v5 = [v7 objectForKeyedSubscript:@"rich_link"];
  v6 = -[EDPersistedRichLinkID initWithDatabaseID:](v4, "initWithDatabaseID:", [v5 databaseIDValue]);
  [v3 addObject:v6];
}

- (id)_hashForRichLinkData:(id)data
{
  dataCopy = data;
  v4 = [MEMORY[0x1E695DF88] dataWithLength:32];
  CC_SHA256([dataCopy bytes], objc_msgSend(dataCopy, "length"), objc_msgSend(v4, "mutableBytes"));
  ef_hexString = [v4 ef_hexString];

  return ef_hexString;
}

- (id)richLinkURLsForMessageIDs:(id)ds
{
  dsCopy = ds;
  v5 = objc_opt_new();
  database = [(EDRichLinkPersistence *)self database];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDRichLinkPersistence richLinkURLsForMessageIDs:]"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__EDRichLinkPersistence_richLinkURLsForMessageIDs___block_invoke;
  v13[3] = &unk_1E8250328;
  v8 = dsCopy;
  v14 = v8;
  v9 = v5;
  v15 = v9;
  [database __performReadWithCaller:v7 usingBlock:v13];

  v10 = v15;
  v11 = v9;

  return v9;
}

uint64_t __51__EDRichLinkPersistence_richLinkURLsForMessageIDs___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E699B948]);
  v5 = [MEMORY[0x1E699B8C8] allColumns];
  v6 = [v4 initWithResult:v5 table:@"message_rich_links"];

  v7 = [v6 leftOuterJoin:@"rich_links" sourceColumn:@"rich_link" targetColumn:*MEMORY[0x1E699B768]];
  v8 = [MEMORY[0x1E699B8C8] column:@"global_message_id"];
  v9 = (a1 + 32);
  v10 = [v8 in:*(a1 + 32)];
  [v6 setWhere:v10];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __51__EDRichLinkPersistence_richLinkURLsForMessageIDs___block_invoke_2;
  v18[3] = &unk_1E8250300;
  v19 = *(a1 + 40);
  v17 = 0;
  [v3 executeSelectStatement:v6 withBlock:v18 error:&v17];
  v11 = v17;
  v12 = _ef_log_EDRichLinkPersistence();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __51__EDRichLinkPersistence_richLinkURLsForMessageIDs___block_invoke_cold_1(v9, v13);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *v9;
    *buf = 138543362;
    v21 = v14;
    _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Found rich link metadata for messages %{public}@", buf, 0xCu);
  }

  v15 = *MEMORY[0x1E69E9840];
  return 1;
}

void __51__EDRichLinkPersistence_richLinkURLsForMessageIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E695DFF8];
  v6 = [a2 objectForKeyedSubscript:@"url"];
  v4 = [v6 stringValue];
  v5 = [v3 URLWithString:v4];
  [v2 addObject:v5];
}

- (void)cleanUpLegacyRichLinkFilesAtBasePath:(id)path
{
  v21 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v4 = pathCopy;
  if (pathCopy)
  {
    v5 = [pathCopy URLByAppendingPathComponent:@"RichLinkData" isDirectory:1];
    v18 = 0;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v5 path];
    v8 = [defaultManager fileExistsAtPath:path isDirectory:&v18];

    if (v8)
    {
      if (v18)
      {
        defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
        v17 = 0;
        v10 = [defaultManager2 removeItemAtURL:v5 error:&v17];
        v11 = v17;

        v12 = _ef_log_EDRichLinkPersistence();
        v13 = v12;
        if (v10)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v20 = v5;
            _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Successfully removed legacy RichLinkData directory at %@", buf, 0xCu);
          }
        }

        else
        {
          v14 = v12;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            ef_publicDescription = [v11 ef_publicDescription];
            [(EDRichLinkPersistence *)v5 cleanUpLegacyRichLinkFilesAtBasePath:ef_publicDescription, buf, v14];
          }
        }
      }

      else
      {
        v11 = _ef_log_EDRichLinkPersistence();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [(EDRichLinkPersistence *)v5 cleanUpLegacyRichLinkFilesAtBasePath:v11];
        }
      }
    }

    else
    {
      v11 = _ef_log_EDRichLinkPersistence();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v20 = v5;
        _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_INFO, "RichLinkData directory does not exist at %@, no cleanup needed.", buf, 0xCu);
      }
    }
  }

  else
  {
    v5 = _ef_log_EDRichLinkPersistence();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [EDRichLinkPersistence cleanUpLegacyRichLinkFilesAtBasePath:v5];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __51__EDRichLinkPersistence_richLinkURLsForMessageIDs___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch rich link metadata for messages %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)cleanUpLegacyRichLinkFilesAtBasePath:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Expected directory at %@ but found a file.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)cleanUpLegacyRichLinkFilesAtBasePath:(uint8_t *)buf .cold.2(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Failed to remove legacy RichLinkData directory at %@: %{public}@", buf, 0x16u);
}

@end